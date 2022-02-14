<?php
namespace App\Http\Controllers;
use App\Models\HoaDon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Redirect;
class HoaDonController extends Controller{
    public function index()
    {
       $lstHoaDon=HoaDon::all();
       return view('hoadon.index',['lstHoaDon'=>$lstHoaDon]);
    }
}