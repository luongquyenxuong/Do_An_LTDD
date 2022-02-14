<?php
namespace App\Http\Controllers\API;

use App\Models\DiaChi;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


class APIDiaChiController extends Controller{
    public function layDiaChi(){
        $dsDiaChi=DiaChi::all();
        return response()->json($dsDiaChi,200);
    }
    public function layChiTietDiaChi($id)
    {
        $DiaChi=DiaChi::find($id);
        return response()->json($DiaChi,200);
    }
}
