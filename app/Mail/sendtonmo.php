<?php

namespace App\Mail;

use App\Studfile;
use App\Student;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Storage;
use TCG\Voyager\Facades\Voyager;
use Imagick;
function getNumPagesInPDF($file)
{
    //http://www.hotscripts.com/forums/php/23533-how-now-get-number-pages-one-document-pdf.html

    if (!$fp = @fopen($file,"r"))return null;
    $max=0;
    while(!feof($fp)) {
        $line = fgets($fp,255);
        if (preg_match('/\/Count [0-9]+/', $line, $matches)){
            preg_match('/[0-9]+/',$matches[0], $matches2);
            if ($max<$matches2[0]) $max=$matches2[0];
        }
    }
    fclose($fp);
    if($max==0){
        $im = new imagick($file);
        $max=$im->getNumberImages();
    }


    return (int)$max;

}
class sendtonmo extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    protected $order;
    protected $subj;
    public function __construct( $order,$subj)
    {
        $this->order = $order;
        $this->subj = $subj;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $stud=Student::find($this->order);
$email= $this->from($stud->mail)
    ->view( 'emails.nnmo')->subject($this->subj);
$file=Studfile::where('student',$this->order)->get();

        foreach ($file as $im) {
            foreach (json_decode($im->path) as $pim) {
                $sz=getNumPagesInPDF(Storage::disk(config('voyager.storage.disk'))->url($pim->download_link));
            $email->attach(Storage::disk(config('voyager.storage.disk'))->url($pim->download_link),[
                'as' =>$stud->fam.'_'.$stud->name.'_'.$stud->otch.'_'.$im->tdoc->name.$sz."стр.pdf"]);}
        }

        return $email;
    }

}
