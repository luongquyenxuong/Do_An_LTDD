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
Route::get('san-pham/{ID}',[APISanPhamController::class,'layChiTiet']);
Route::get('san-pham/noi-bat/{NoiBat}',[APISanPhamController::class,'layDanhSachNoiBat']);
Route::get('sp-loai/{id}',[APISanPhamController::class,'layDanhSachLoaiSP']);
Route::get('user',[APIUserController::class,'layDanhSach']);
Route::get('user/{ID}',[APIUserController::class,'layChiTiet']);
Route::get('loai',[APILoaiSanPhamController::class,'layDanhSachLoai']);
Route::post('dangky',[APIUserController::class,'register']);
Route::get('banner',[APISanPhamController::class,'layBanner']);
Route::post('login',[APIUserController::class,'apiLogin']);
Route::post('update', [APIUserController::class, 'edituser']);
Route::post('updatepassword', [APIUserController::class, 'editpassword']);



