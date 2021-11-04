<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Tipdocaccr extends Model
{
    protected $table = 'tipdocaccr';
    use SoftDeletes;
    protected $dates = ['deleted_at'];
}
