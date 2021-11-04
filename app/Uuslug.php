<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Uuslug extends Model
{
    protected $table = 'uuslug';
    public function user()
    {
        return $this->belongsTo('App\User','userid');
    }
    public function usluga()
    {
        return $this->belongsTo('App\Uslug','uslugaid');
    }

}
