<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    public function listproduk($id){
        $lstproduk = DB::table('product')->where('brand_id', '=', $id)->get();
        $brand = DB::table('brand')->where('id', '=', $id)->first();
        
        return view("produk", ['lstproduk'=>$lstproduk,'brand'=>$brand]);
    }
    
}