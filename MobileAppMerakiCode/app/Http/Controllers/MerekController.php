<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MerekController extends Controller
{

    public function listmerek(){
        $listmerek = DB::table('brand')->orderBy('DisplayOrder')->get();
        $latestphotos = DB::table('gallery')->orderBy('created_at', 'desc')->get();

        return view("merek", ['brand'=>$listmerek, 'tumbnailphotos' =>$latestphotos]);
    }
}

