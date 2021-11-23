<?php

namespace App\Http\Controllers;

use App\Mail\sendtonmo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class api extends Controller
{
    public function index(Request $req){
       $md=$req->md;
        if ($md==1){
            $mail=mb_convert_encoding($req->mail, 'UTF-8', 'UTF-8');
            $subj=mb_convert_encoding($req->subj, 'UTF-8', 'UTF-8');
           $id=$req->id;
            Mail::to($mail)->send(new sendtonmo($id,$subj));

        }
    }
}
