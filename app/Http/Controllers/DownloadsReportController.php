<?php

namespace App\Http\Controllers;

use App\Services\BuildDownloadsReport;
use Common\Core\BaseController;

class DownloadsReportController extends BaseController
{
    public function __construct()
    {
        // will authorize based on specified model in "BuildInsightsReport"
        $this->middleware('auth');
    }

    public function __invoke()
    {
        $report = app(BuildDownloadsReport::class)->execute(request()->all());

        return $this->success(['report' => $report]);
    }
}
