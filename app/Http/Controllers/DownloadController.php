<?php

namespace App\Http\Controllers;

use Common\Core\BaseController;
use ZipArchive;
use App\Models\Track;
use Illuminate\Http\Request;
use App\Services\Tracks\LogTrackDownload;

class DownloadController extends BaseController
{
    protected $logTrackDownload;

    public function __construct(LogTrackDownload $logTrackDownload)
    {
        $this->logTrackDownload = $logTrackDownload;
    }

    public function __invoke(Request $request, $id, $type = null)
    {
        $track = Track::findOrFail($id);
        $fileTypes = [
            'mp3' => $track->mp3_file,
            'wav' => $track->wav_file,
            'pdf' => $track->pdf_file,
            'zip' => $track->zip_file,
        ];
    
        $permissions = $request->user()->permissions->pluck('name');
        $allowedFiles = collect($fileTypes)->filter(function ($filePath, $type) use ($permissions) {
            return $permissions->contains("files.download.{$type}");
        });
    
        if ($allowedFiles->isEmpty()) {
            return response()->json(['error' => 'You do not have permission to download any files'], 403);
        }
    
        // Log the download before sending the response
        $this->logTrackDownload->execute($track, $request->get('queueId'));
    
        if ($type && array_key_exists($type, $fileTypes)) {
            if (isset($allowedFiles[$type])) {
                $filePath = $allowedFiles[$type];
                $fileName = "{$track->name}.{$type}";
                return response()->download($filePath, $fileName);
            } else {
                return response()->json(['error' => 'You do not have permission to download this file type'], 403);
            }
        }
    
        // Handle "Download All" case
        $zipPath = storage_path("app/{$track->name}.zip");
        $zip = new ZipArchive;
        if ($zip->open($zipPath, ZipArchive::CREATE | ZipArchive::OVERWRITE) === true) {
            foreach ($allowedFiles as $type => $filePath) {
                if ($filePath) {
                    $zip->addFile($filePath, "{$track->name}.{$type}");
                }
            }
            $zip->close();
        }
    
        return response()->download($zipPath)->deleteFileAfterSend(true);
    }
}
