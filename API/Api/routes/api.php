<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\APISanPhamController;
use App\Http\Controllers\API\APILoaiSanPhamController;
use App\Http\Controllers\API\APIDiaChiController;
use App\Http\Controllers\API\APIUserController;

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
Route::get('san-pham',[APISanPhamController::class,'layDanhSach']);
Route::get('user',[APIUserController::class,'layDanhSach']);
Route::get('user/{ID}',[APIUserController::class,'layChiTiet']);
Route::get('dia-chi',[APIDiaChiController::class,'layDiaChi']);
Route::get('loai',[APILoaiSanPhamController::class,'layDanhSachLoai']);
Route::get('san-pham/{ID}',[APISanPhamController::class,'layChiTiet']);
Route::get('sp-loai/{id}',[APISanPhamController::class,'layDanhSachLoaiSP']);
Route::get('dia-chi/{ID}',[APIDiaChiController::class,'layChiTietDiaChi']);

Route::post('login',[APIUserController::class,'apiLogin']);




