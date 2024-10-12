<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function index(){
        $merek = DB::table('brand')->orderBy('DisplayOrder')->get();

        $news = DB::table('news')->orderBy('date','desc')->get();

        $latestphotos = DB::table('gallery')->orderBy('created_at', 'desc')->get();

        return view("beranda", ['brand'=>$merek,'news'=>$news,'tumbnailphotos' =>$latestphotos]);
    }

    public function tumbnailgalery(){
        $latestphotos = DB::table('gallery')->orderBy('created_at', 'desc')->get();

        return view("perusahaan", ['tumbnailphotos' =>$latestphotos]);
    }
}

