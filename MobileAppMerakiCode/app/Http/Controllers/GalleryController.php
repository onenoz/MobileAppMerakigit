<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class GalleryController extends Controller
{
    public function listgaleri(){
        $lstgaleri = DB::table('gallery')->get();
        
        return view("galeri", ['lstgaleri'=>$lstgaleri]);
    }

    public function tumbnailgalery(){
        $latestphotos = DB::table('gallery')->orderBy('created_at', 'desc')->get();

        return view("perusahaan", ['tumbnailphotos' =>$latestphotos]);
    }
    
}