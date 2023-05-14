<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controller\FrontendController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// Rute grup untuk rute ReactJS
Route::group(['prefix' => 'frontend'], function () {
    // Rute untuk halaman utama ReactJS
    Route::get('/', 'FrontendController@index');

    // Rute untuk halaman lainnya di ReactJS
    Route::get('/peternakans', 'FrontendController@index');
    Route::get('/hewans', 'FrontendController@index');
    Route::get('/produks', 'FrontendController@index');
    Route::get('/provinsis', 'FrontendController@index');
});