<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Tekst extends Model
{
    protected $table = 'tekst';
    use SoftDeletes;
    protected $dates = ['deleted_at'];
}
