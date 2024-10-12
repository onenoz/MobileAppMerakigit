<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BeritaController extends Controller
{

    public function news(){
        $listberita = DB::table('news')->orderBy('date','desc')->get();
        $latestphotos = DB::table('gallery')->orderBy('created_at', 'desc')->get();

        return view("berita", ['news'=>$listberita, 'tumbnailphotos' =>$latestphotos]);
    }

    public function listnews($id){
        $lstberita = DB::table('news')->where('id', '=', $id)->get();
        $latestphotos = DB::table('gallery')->orderBy('created_at', 'desc')->get();
        
        return view("DetailBerita", ['lstberita'=>$lstberita,'tumbnailphotos'=>$latestphotos]);
    }
}

