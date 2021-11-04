<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Uslug extends Model
{
    protected $table = 'uslug';
    public function user()
    {
        return $this->belongsTo('App\User','id_student');
    }
    public function usluga()
    {
        return $this->belongsTo('App\Price','id_uslug');
    }
}
