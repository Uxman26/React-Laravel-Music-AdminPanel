<?php

namespace App\Http\Controllers\UserProfile;

use App\Models\User;
use Common\Core\BaseController;

class UserUploadedTracksController extends BaseController
{
    public function index(User $user)
    {
        $this->authorize('show', $user);

        $pagination = $user->uploadedTracks()
            ->with('genres', 'artists', 'tags')
            ->withCount('plays')
            ->withCount('downloads')
            ->paginate(request('perPage') ?? 20);

        return $this->success(['pagination' => $pagination]);
    }
}
