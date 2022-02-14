<?php
namespace App\Http\Controllers;
use App\Models\BinhLuan;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Redirect;
class BinhLuanController extends Controller{
    public function index()
    {
       $lstBinhLuan=BinhLuan::all();
       return view('binhluan.index',['lstBinhLuan'=>$lstBinhLuan]);
    }
}