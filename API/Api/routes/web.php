<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SanPhamController;
use App\Http\Controllers\NhaPhanPhoiController;
use App\Http\Controllers\LoaiSanPhamController;
use App\Http\Controllers\HoaDonController;
use App\Http\Controllers\DiaChiController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\BinhLuanController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\HomeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::middleware(['auth'])->group(function () {
     Route::get('/', [HomeController::class, 'index']);
    Route::resource('sanpham',SanPhamController::class);
    Route::resource('sanpham.create',SanPhamController::class);
    Route::resource('nhaphanphoi',NhaPhanPhoiController::class);
    Route::resource('user', UserController::class);
    Route::resource('loaisanpham',LoaiSanPhamController::class);
    Route::resource('hoadon',HoaDonController::class);
    Route::resource('diachi',DiaChiController::class);
    Route::resource('binhluan',BinhLuanController::class);
});
Route::get('login', [LoginController::class, 'showForm'])->name('login');
Route::post('login', [LoginController::class, 'authenticate'])->name('login');
Route::get('logout', [LoginController::class, 'logout'])->name('logout');