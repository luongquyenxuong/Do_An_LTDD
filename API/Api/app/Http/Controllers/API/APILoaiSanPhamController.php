<?php
namespace App\Http\Controllers\API;

use App\Models\LoaiSanPham;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


class APILoaiSanPhamController extends Controller{
    public function layDanhSachLoai(){
        $dsLoai=LoaiSanPham::all();
        return response()->json($dsLoai,200);
    }
}
