<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Common\Billing\Models\Product;

class Subscription extends Model
{
    use HasFactory;

    protected $with = ['plan'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function plan()
    {
        return $this->hasOne(Product::class, 'id', 'product_id');
    }
}
