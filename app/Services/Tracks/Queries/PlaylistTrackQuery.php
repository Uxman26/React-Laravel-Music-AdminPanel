<?php

namespace App\Services\Tracks\Queries;

use Illuminate\Database\Eloquent\Builder;

class PlaylistTrackQuery extends BaseTrackQuery
{
    const ORDER_COL = 'position';
    const ORDER_DIR = 'asc';

    public function get(int $playlistId, $params = []): Builder
    {
        return $this->baseQuery()
            ->join('playlist_track', 'tracks.id', '=', 'playlist_track.track_id')
            ->join('playlists', 'playlists.id', '=', 'playlist_track.playlist_id')
            ->where('playlists.id', '=', $playlistId)
            ->select('tracks.*', 'playlist_track.position as position');
    }
}
