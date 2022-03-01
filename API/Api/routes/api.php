<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\APISanPhamController;
use App\Http\Controllers\API\APILoaiSanPhamController;
use App\Http\Controllers\API\APIDiaChiController;
use App\Http\Controllers\API\APIUserController;
use App\Http\Controllers\API\APIHoaDonController;
use App\Http\Controllers\API\APIChiTietHoaDonController;

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

Route::get('san-pham', [APISanPhamController::class, 'layDanhSach']);
Route::get('san-pham/{ID}', [APISanPhamController::class, 'layChiTiet']);
Route::get('san-pham/noi-bat/{NoiBat}', [APISanPhamController::class, 'layDanhSachNoiBat']);
Route::get('sp-loai/{id}', [APISanPhamController::class, 'layDanhSachLoaiSP']);
Route::get('user', [APIUserController::class, 'layDanhSach']);
Route::get('user/{ID}', [APIUserController::class, 'layChiTiet']);
Route::get('dia-chi', [APIDiaChiController::class, 'layDiaChi']);
Route::get('dia-chi/{ID}', [APIDiaChiController::class, 'layChiTietDiaChi']);
Route::post('insertDiaChi', [APIDiaChiController::class, 'insertDiaChi']);
Route::post('updateDiaChi', [APIDiaChiController::class, 'updateDiaChi']);
Route::get('loai', [APILoaiSanPhamController::class, 'layDanhSachLoai']);
Route::get('dia-chi/khach-hang/id/{id}/idKhachHang/{idKH}', [APIDiaChiController::class, 'layDiaChiKH']);
Route::get('dia-chi/ds-khach-hang/{id}', [APIDiaChiController::class, 'laydsDiaChiKH']);
Route::get('dia-chi-dau/khach-hang/{id}', [APIDiaChiController::class, 'layDiaChiDauKH']);
Route::get('deleteDC/{id}', [APIDiaChiController::class, 'delete']);
Route::post('dangky', [APIUserController::class, 'register']);
Route::post('update', [APIUserController::class, 'edituser']);
Route::post('updatepassword', [APIUserController::class, 'editpassword']);
Route::get('banner', [APISanPhamController::class, 'layBanner']);
Route::post('login', [APIUserController::class, 'apiLogin']);
Route::post('themhd', [APIHoaDonController::class, 'insertHoaDon']);
Route::get('hoa-don', [APIHoaDonController::class, 'layDanhSachHD']);
Route::get('hoa-don/KH/{idkh}/{trangthai}', [APIHoaDonController::class, 'layDanhSachHoaDonKH']);
Route::post('themcthd', [APIChiTietHoaDonController::class, 'insertCTHoaDon']);
Route::get('cthd/hd/{id}', [APIChiTietHoaDonController::class, 'layCTHD']);
Route::get('cthdfirst', [APIChiTietHoaDonController::class, 'cthdfirst']);
Route::get('cthd1', [APIChiTietHoaDonController::class, 'cthd1']);
Route::post('updateTrangThai', [APIHoaDonController::class, 'updateTrangThai']);

