<?php

namespace App\Http\Controllers\API;

use Illuminate\Support\Facades\DB;
use App\Models\DiaChi;

use App\Http\Controllers\Controller;
use Faker\Provider\ar_EG\Address;
use Illuminate\Http\Request;


class APIDiaChiController extends Controller
{
    public function layDiaChi()
    {
        $dsDiaChi = DiaChi::all();
        return response()->json($dsDiaChi, 200);
    }
    public function layChiTietDiaChi($id)
    {
        $DiaChi = DiaChi::find($id);
        return response()->json($DiaChi, 200);
    }
    public function laydsDiaChiKH($request)
    {

        $dsDiaChiKH = DiaChi::where('IDKhachHang', $request)->get();
        return response()->json($dsDiaChiKH, 200);
    }
    public function layDiaChiKH($id, $idKH)
    {
        $diaChiKH = DiaChi::where('IDKhachHang', $idKH)->where('id', $id)->first();
        return response()->json($diaChiKH, 200);
    }
    public function layDiaChiDauKH($request)
    {
        $dsDiaChiKH = DiaChi::where('IDKhachHang', $request)->first();
        return response()->json($dsDiaChiKH, 200);
    }
    public function insertDiaChi(Request $request)
    {
        $dc = DiaChi::create([
            'IDKhachHang' => $request['idkhachhang'],
            'Ten' => $request['ten'],
            'SDT' => $request['sdt'],
            'DiaChi' => $request['diachi'],


        ]);
        $dc->save();
        if ($dc) {
            return response()->json($dc, 200);
        } else {
            return response()->json($dc, 400);
        }
    }
    public function updateDiaChi(Request $request)
    {

        $dc = DiaChi::where('id', $request['id'])->first();
        $dc->fill([
            'IDKhachHang' => $request['idkhachhang'],
            'Ten' => $request['ten'],
            'SDT' => $request['sdt'],
            'DiaChi' => $request['diachi'],

        ]);
        $dc->save();
        $data = $dc;
        if (!empty($data)) {
            return response()->json($data, 200);
        } else {
            return response()->json($data, 400);
        }
    }
  
}
