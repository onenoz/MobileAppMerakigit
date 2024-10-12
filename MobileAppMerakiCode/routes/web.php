<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\GalleryController;
use App\Http\Controllers\MerekController;
use App\Http\Controllers\BeritaController;
use App\Http\Controllers\KontakController;
use Illuminate\Support\Facades\Route;

Route::get('/', [HomeController::class, 'index']);

Route::get('/perusahaan', [GalleryController::class, 'tumbnailgalery']);

Route::get('/merek', [MerekController::class, 'listmerek']);

// // Rute untuk halaman produk berdasarkan brand_id
// Route::get('/produk/{brand_id}', [HomeController::class, 'showProdukByBrand'])->name('showProdukByBrand');

Route::get('/produk/{id}', [ProductController::class, 'listproduk']);

Route::get('/berita', [BeritaController::class, 'news']);

Route::get('/detailberita/{id}', [BeritaController::class, 'listnews']);

Route::get('/kontak', [KontakController::class, 'tumbnailgalery',]);

Route::get('/galeri', [GalleryController::class, 'listgaleri']);