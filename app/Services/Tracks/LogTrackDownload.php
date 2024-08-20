<?php

namespace App\Services\Tracks;

use App\Models\Album;
use App\Models\Artist;
use App\Models\Playlist;
use App\Models\Track;
use App\Models\TrackDownload;
use Auth;
use Carbon\Carbon;
use Jenssegers\Agent\Agent;

class LogTrackDownload
{
    public function execute(Track $track, ?string $queueId): ?TrackDownload
    {
        // only log play every minute for same track and user
        $existing = $track
            ->downloads()
            ->whereBetween('created_at', [
                Carbon::now()->subMinute(),
                Carbon::now(),
            ])
            ->where('user_id', Auth::id())
            ->first();
        if (!$existing) {
            return $this->log($track, $queueId);
        }
        return null;
    }

    private function log(Track $track, ?string $queueId): TrackDownload
    {
        $agent = app(Agent::class);
        $attributes = [
            'location' => $this->getLocation(),
            'platform' => strtolower($agent->platform()),
            'device' => $this->getDevice(),
            'browser' => strtolower($agent->browser()),
            'user_id' => Auth::id(),
        ];

        $trackPlay = $track->downloads()->create($attributes);

        Track::where('id', $track->id)->increment('downloads');
        if ($track->album_id) {
            Album::where('id', $track->album_id)->increment('downloads');
        }
        $artistIds = $track->artists->pluck('id');
        if ($artistIds->isNotEmpty()) {
            Artist::whereIn('id', $artistIds)->increment('downloads');
        }

        [$modelType, $modelId] = array_pad(explode('.', $queueId), 2, null);
        if ($modelType === Playlist::MODEL_TYPE) {
            Playlist::where('id', $modelId)->increment('downloads');
        }

        return $trackPlay;
    }

    private function getDevice(): string
    {
        $agent = app(Agent::class);
        if ($agent->isMobile()) {
            return 'mobile';
        } elseif ($agent->isTablet()) {
            return 'tablet';
        } else {
            return 'desktop';
        }
    }

    private function getLocation(): string
    {
        return strtolower(geoip(getIp())['iso_code']);
    }
}
