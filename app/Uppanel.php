<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Uppanel extends Model
{
    protected $table = 'uppanel';
    use SoftDeletes;
    protected $dates = ['deleted_at'];
}
