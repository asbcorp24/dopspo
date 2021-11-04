<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Log;


class Studfile extends Model
{
    protected $table = 'studfile';
    public static function boot()
    {
        parent::boot();
        self::creating(function ($model) {
       Log::debug($model->path);

        });
        self::updating(function ($model) {




        });
self::updated(function ($model) {

    Log::channel('single')->debug($model->path);

});

    }
}
