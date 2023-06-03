<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\DiagramController;
use App\Http\Controllers\Api\HewanController;
use App\Http\Controllers\Api\ProdukController;
use App\Http\Controllers\Api\PeternakanController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->group(function () {
    Route::post('/logout', [AuthController::class, 'logout']);
    });

Route::post('/register',[AuthController::class, 'register']);
Route::post('/login',[AuthController::class, 'login']);

// data semua peternakan dan provinsi nya
Route::get('pet_pro',[PeternakanController::class, 'pet_pro']);

// data semua peternakan dalam sebuah daerah berdasarkan nama
Route::get('pet_in_pro/{nama_pro}',[PeternakanController::class, 'pet_in_pro']);

// Detail Hewan & Produk dari suatu peternakan
Route::get('detailsHewanProduk/{id}',[PeternakanController::class, 'detailsHewanProduk']);


//Untuk keperluan Diagram
//data jumlah dan data seluruh hewan di tiap provinsi
Route::get('all_hewan_in_pro/{provinsi}',[DiagramController::class, 'all_hewan_in_pro']);
//data menghitung jumlah hewan di tiap provinsi
Route::get('hit_hewan_in_pro/{provinsi}',[DiagramController::class, 'hit_hewan_in_pro']);
//data menghitung jumlah peternakan di tiap provinsi
Route::get('hit_pet_in_pro/{provinsi}',[DiagramController::class, 'hit_pet_in_pro']);
//jumlah seluruh peternakan tiap provinsi
Route::get('pet_each_pro',[DiagramController::class, 'pet_each_pro']);
//data jumlah dan data seluruh produk di tiap provinsi
Route::get('pro_in_prov/{provinsi}',[DiagramController::class, 'pro_in_prov']);
//jumlah seluruh produk tiap provinsi
Route::get('pro_each_prov',[DiagramController::class, 'pro_each_prov']);



Route::group(['middleware' => ['auth:sanctum']], function () {

//data provinsi
Route::get('/provinsi',[PeternakanController::class, 'provinsi']);

//data provinsi
Route::get('/Namapeternakan',[PeternakanController::class, 'Namapeternakan']);

// API untuk tabel tbl_peternakan
Route::get('peternakan',[PeternakanController::class, 'index']);
Route::post('peternakan',[PeternakanController::class, 'store']);
Route::get('peternakan/{id_peternakan}',[PeternakanController::class, 'show']);
Route::get('peternakan/{id_peternakan}/edit',[PeternakanController::class, 'edit']);
Route::put('peternakan/{id_peternakan}/edit',[PeternakanController::class, 'update']);
Route::delete('peternakan/{id_peternakan}/delete',[PeternakanController::class, 'destroy']);

// API untuk tabel tbl_hewan
Route::get('hewan',[HewanController::class, 'index']);
Route::post('hewan',[HewanController::class, 'store']);
Route::get('hewan/{id_hewan}',[HewanController::class, 'show']);
Route::get('hewan/{id_hewan}/edit',[HewanController::class, 'edit']);
Route::put('hewan/{id_hewan}/edit',[HewanController::class, 'update']);
Route::delete('hewan/{id_hewan}/delete',[HewanController::class, 'destroy']);

// API untuk tabel tbl_produk
Route::get('produk',[ProdukController::class, 'index']);
Route::post('produk',[ProdukController::class, 'store']);
Route::get('produk/{id_produk}',[ProdukController::class, 'show']);
Route::get('produk/{id_produk}/edit',[ProdukController::class, 'edit']);
Route::put('produk/{id_produk}/edit',[ProdukController::class, 'update']);
Route::delete('produk/{id_produk}/delete',[ProdukController::class, 'destroy']);

// ===================================================================================//
// tbl_hewan dan tbl_peternakan

// data semua hewan dan asal peternakannya
Route::get('hewan&pet',[PeternakanController::class, 'gab1']);
// data semua hewan dan asal peternakannya sesuai id_hewan
Route::get('hewan&pet/{id_hewan}',[PeternakanController::class, 'gab1_id_hewan']);
// data semua peternakan sesuai id beserta semua hewan yang dia miliki
Route::get('pet/{id_pet}',[PeternakanController::class, 'gab1_id_pet']);

// ===================================================================================//
// data semua hewan dan asal peternakannya
Route::get('produk&pet',[PeternakanController::class, 'gabProduk']);

// data semua peternakan dalam sebuah daerah
Route::get('pet_pro/{id_pro}',[PeternakanController::class, 'pet_pro2']);

// logout
Route::post('/logout',[AuthController::class, 'logout']);

});