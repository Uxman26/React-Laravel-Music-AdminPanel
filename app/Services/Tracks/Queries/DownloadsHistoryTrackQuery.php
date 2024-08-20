<?php

namespace App\Services\Tracks\Queries;

use Illuminate\Database\Eloquent\Builder;

class DownloadsHistoryTrackQuery extends BaseTrackQuery
{
    const ORDER_COL = 'track_downloads.created_at';

    public function get(int $userId): Builder
    {
        return $this->baseQuery()
            // select latest row from track_downloads using windowing function
            ->join(
                'track_downloads',
                'tracks.id',
                '=',
                'track_downloads.track_id',
            )
            ->groupBy('tracks.id')
            ->where('track_downloads.user_id', $userId)
            ->select('tracks.*', 'track_downloads.created_at as added_at');
    }
}
