<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class KontakController extends Controller
{

    public function tumbnailgalery(){
        $latestphotos = DB::table('gallery')->orderBy('created_at', 'desc')->get();

        return view("kontak", ['tumbnailphotos' =>$latestphotos]);
    }
}

