<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SanPhamController;
use App\Http\Controllers\NhaPhanPhoiController;
use App\Http\Controllers\HoaDonController;
use App\Http\Controllers\DiaChiController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CategoryController;
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

    Route::get('sanpham/deleted', [SanPhamController::class, 'deleted'])->name('sanpham.deleted');
    Route::get('sanpham/restore/{id}', [SanPhamController::class, 'restore'])->name('sanpham.restore');
    Route::resource('sanpham', SanPhamController::class);

    Route::get('loaisanpham/deleted', [CategoryController::class, 'deleted'])->name('loaisanpham.deleted');
    Route::get('loaisanpham/restore/{id}', [CategoryController::class, 'restore'])->name('loaisanpham.restore');
    Route::resource('loaisanpham', CategoryController::class);

    Route::get('nhaphanphoi/deleted', [NhaPhanPhoiController::class, 'deleted'])->name('nhaphanphoi.deleted');
    Route::get('nhaphanphoi/restore/{id}', [NhaPhanPhoiController::class, 'restore'])->name('nhaphanphoi.restore');
    Route::resource('nhaphanphoi', NhaPhanPhoiController::class);

    Route::get('user/deleted', [UserController::class, 'deleted'])->name('user.deleted');
    Route::get('user/restore/{id}', [UserController::class, 'restore'])->name('user.restore');
    Route::resource('user', UserController::class);

    Route::get('hoadon/cancel', [HoaDonController::class, 'cancel'])->name('hoadon.cancel');
    Route::get('hoadon/finished/{id}', [HoaDonController::class, 'finished'])->name('hoadon.finished');
    Route::get('hoadon/accomplished', [HoaDonController::class, 'accomplished'])->name('hoadon.accomplished');
    Route::get('hoadon/delivering', [HoaDonController::class, 'delivering'])->name('hoadon.delivering');
    Route::get('hoadon/confirm/{id}', [HoaDonController::class, 'confirm'])->name('hoadon.confirm');
    Route::get('hoadon/confirming', [HoaDonController::class, 'confirming'])->name('hoadon.confirming');
    Route::resource('hoadon', HoaDonController::class);

    Route::resource('diachi', DiaChiController::class);


});
Route::get('login', [LoginController::class, 'showForm'])->name('login');
Route::post('login', [LoginController::class, 'authenticate'])->name('login');
Route::get('logout', [LoginController::class, 'logout'])->name('logout');
