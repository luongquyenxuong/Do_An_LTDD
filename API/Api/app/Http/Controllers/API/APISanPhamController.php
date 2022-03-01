<?php
namespace App\Http\Controllers\API;

use App\Models\SanPham;
use App\Models\LoaiSanPham;
use App\Models\Banner;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


class APISanPhamController extends Controller{
    public function layDanhSach(){
        $dsSanPham=SanPham::all();
        return response()->json($dsSanPham,200);
    }
    public function layBanner(){
        $dsBanner=Banner::all();
        return response()->json($dsBanner,200);
    }
    public function layDanhSachNoiBat($request)
    {
          //dd($request['idLoai']);
          $dsSanPhamNoiBat=SanPham::where('NoiBat',$request)->get();
          //dd($dsSanPhamLoai);
          if($dsSanPhamNoiBat){
            return response()->json($dsSanPhamNoiBat,200);
          }else
          {
            return response()->json($dsSanPhamNoiBat,204);
          }

    }
    public function layChiTiet($id)
    {
        $SanPham=SanPham::find($id);
        return response()->json($SanPham,200);
    }
    public function layDanhSachLoaiSP( $request){
        //dd($request['idLoai']);
        $dsSanPhamLoai=SanPham::where('IDLoaiSp',$request)->get();
        //dd($dsSanPhamLoai);
        return response()->json($dsSanPhamLoai,200);
    }
}
