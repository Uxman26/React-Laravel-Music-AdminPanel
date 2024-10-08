<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class TrackDownload extends Model
{
    use HasFactory;

    const UPDATED_AT = null;
    protected $guarded = ['id'];
    protected $casts = ['user_id' => 'integer', 'track_id' => 'integer'];

    public function track(): BelongsTo {
        return $this->belongsTo(Track::class);
    }
}
