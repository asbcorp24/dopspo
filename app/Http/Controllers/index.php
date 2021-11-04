<?php

namespace App\Http\Controllers;

use App\Price;
use App\Student;
use App\Tekst;
use App\Uppanel;
use App\Uslug;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

function gen_password($length = 6)
{
    $chars = '1234567890';
    $size = strlen($chars) - 1;
    $password = '';
    while($length--) {
        $password .= $chars[random_int(0, $size)];
    }
    return $password;
}
class index extends Controller
{
    public function login(){
        return view('login');

    }
    public function addst(Request $req){

        $rules = ['captcha' => 'required|captcha'];
        $validator = validator()->make(request()->all(), $rules);
        if ($validator->fails()) { return [404,0];}



      $std=Student::select('id','fam','name','phone')->where('phone',$req->phone)->get();
      if (count($std)>0){
          return [1,$std];

      }

    $std=new Student();
    $std->fam=$req->fname;
    $std->name=$req->lname;
    $std->phone=$req->phone;
    $std->mail=$req->email;
    $std->nmo_login=$req->nmolog;
    $std->nmo_passw=$req->nmopass;
    $std->data_r=$req->d_r;
    $std->passw=gen_password(10);
    $std->save();
    $usl=new Uslug();
    $usl->id_uslug=$req->idz;
    $usl->id_student=$std->id;
        $usl->save();
        return [0,$std];
    }
  public function show(){

   $price=Price::where('act',1)->get();
   $tekst=Tekst::where('act',1)->get();
   $uppanel=Uppanel::where('act',1)->get();

      $contents = view('index',compact('price','tekst','uppanel'));
      return response($contents)->header('Access-Control-Allow-Origin','*');
     // return view('index',compact('price','tekst','uppanel'));;
  }
public function chusl(Request $req){
        $id=$req->id;
        $name=$req->name;
        $val=$req->val;
        $usl=Uslug::find($id);
        if($name=='opl')$usl->opl=$val;
    if($name=='dat_zav')$usl->dat_zav=$val;
    $usl->save();
    return $usl;
}
public function loginpod(Request $req){
    $pass=$req->pcd;
    $st=Student::where('passw',$pass)->get()->first();
    if($st==null) return back();
    Session::put('uid',$st->id);
   return redirect('lcab');
}
    public function lcab(Request $req){
        $usl=Uslug::where('id_student',Session::get(''));
        
    }

}
