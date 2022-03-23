<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\SanPham;
use App\Models\HoaDon;
use App\Models\DiaChi;
use App\Models\LoaiSanPham;
use App\Models\NhaPhanPhoi;
use Illuminate\Http\Request;
class HomeController extends Controller
{
    public function index()
    {
        $acc = User::all()->count();
        $prd = SanPham::all()->count();
        $invoice = HoaDon::all()->count();
        $address = DiaChi::all()->count();
        $category = LoaiSanPham::all()->count();
        $brand = NhaPhanPhoi::all()->count();
        return view('index', ['account' => $acc, 'product' => $prd,'address'=>$address,'invoice'=>$invoice,'category'=>$category,'brand'=>$brand]);
    }
}
