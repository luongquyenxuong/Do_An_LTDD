<?php
namespace App\Http\Controllers;

use App\Models\DiaChi;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Redirect;
class DiaChiController extends Controller{
    public function index()
    {
       $lstDiaChi=DiaChi::all();
       return view('diachi.index',['lstDiaChi'=>$lstDiaChi]);
    }
}