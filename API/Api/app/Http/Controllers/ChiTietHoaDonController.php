<?php
namespace App\Http\Controllers;

use App\Models\ChiTietHoaDon;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Redirect;
class ChiTietHoaDonController extends Controller{
    public function index()
    {
       $lstChiTietHoaDon=ChiTietHoaDon::all();
       return view('chitiethoadon.index',['lstChiTietHoaDon'=>$lstChiTietHoaDon]);
    }
}