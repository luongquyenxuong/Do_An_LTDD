<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SanPhamController;
use App\Http\Controllers\LoaiSanPhamController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('san-pham',[SanPhamController::class,'layDanhSach']);
Route::get('sp-loai/{id}',[SanPhamController::class,'layDanhSachLoaiSP']);
Route::get('loai',[LoaiSanPhamController::class,'layDanhSachLoai']);
Route::get('san-pham/{ID}',[SanPhamController::class,'layChiTiet']);
