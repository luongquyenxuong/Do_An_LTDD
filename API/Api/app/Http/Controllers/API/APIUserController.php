<?php
namespace App\Http\Controllers\API;

use App\Models\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


class APIUserController extends Controller{
   
    public function layChiTiet($id)
    {
        $DiaChi=User::find($id);
        return response()->json($DiaChi,200);
    }
    public function layDanhSach(){
        $dsSanPham=User::all();
        return response()->json($dsSanPham,200);
    }
}
