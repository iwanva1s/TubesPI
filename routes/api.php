<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\PeternakanController;
Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);
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

// API untuk tabel tbl_peternakan
Route::get('peternakan',[PeternakanController::class, 'index']);
Route::post('peternakan',[PeternakanController::class, 'store']);
Route::get('peternakan/{id_peternakan}',[PeternakanController::class, 'show']);
Route::get('peternakan/{id_peternakan}/edit',[PeternakanController::class, 'edit']);
Route::put('peternakan/{id_peternakan}/edit',[PeternakanController::class, 'update']);
Route::delete('peternakan/{id_peternakan}/delete',[PeternakanController::class, 'destroy']);

