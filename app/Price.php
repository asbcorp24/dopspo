<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Price extends Model
{
    protected $table = 'price';
    use SoftDeletes;
    protected $dates = ['deleted_at'];

}
