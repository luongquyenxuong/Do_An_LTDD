<?php

namespace App\Http\Controllers\API;

use Illuminate\Support\Facades\DB;
use App\Models\ChiTietHoaDon;
use App\Models\HoaDon;
use App\Models\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


class APIChiTietHoaDonController extends Controller
{
    public function insertCTHoaDon(Request $request)
    {
        $cthd = ChiTietHoaDon::create([
            'IDHoaDon' => (int)$request['idhoadon'],
            'IDSanPham' => (int)$request['idsanpham'],
            'IDDiaChi' => (int)$request['iddiachi'],
            'SoLuong' => (int)$request['soluong'],
            'Gia' => (int)$request['gia'],
            'ThanhTien' => (int)$request['thanhtien'],
        ]);
        $cthd->save();
        if ($cthd) {
            return response()->json($cthd, 200);
        } else {
            return response()->json($cthd, 400);
        }
    }
    public function layCTHD($request)
    {
        //dd($request['idLoai']);
        $cthd = ChiTietHoaDon::where('IDHoaDon', $request)->get();
        //dd($dsSanPhamLoai);
        if ($cthd) {
            return response()->json($cthd, 200);
        } else {
            return response()->json($cthd, 204);
        }
    }
    // public function cthd(Request $request){
    //     $trangThai=$request['trangThai'];
    //     if($trangThai==4){
    //         $hd = HoaDon::
    //         join('users', 'users.id', '=', 'hoa_dons.IDKhachHang')
    //         ->join('dia_chis', 'dia_chis.id', '=', 'users.id')
    //          ->where('hoa_dons.IDKhachHang',$request['idkhachhang'])
    //          ->with('chitiethoadon')
    //          ->with('chitiethoadon.SanPham')
    //         ->get();
    //         return response()->json($hd,200);
    //     }
    //     if($trangThai==1||$trangThai==3||$trangThai==2||$trangThai==0){
    //         $hd = HoaDon::
    //         join('users', 'users.id', '=', 'hoa_dons.IDKhachHang')
    //         ->join('dia_chis', 'dia_chis.id', '=', 'users.id')
    //          ->where('hoa_dons.IDKhachHang',$request['idkhachhang'])
    //          ->where('hoa_dons.TrangThai',$request['trangThai'])
    //          ->with('chitiethoadon')
    //          ->with('chitiethoadon.SanPham')
    //         ->get();
    //         return response()->json($hd,200);
    //     }
    //     return response()->json('Success=false',404);
    //    // dd($request);

    //         //dd($hd);
    // }
    public function cthd1(Request $request)
    {
        // $trangThai=$request['trangThai'];

        $hd = ChiTietHoaDon::join('hoa_dons', 'hoa_dons.id', '=', 'chi_tiet_hoa_dons.IDHoaDon')
            ->join('dia_chis', 'dia_chis.id', '=', 'chi_tiet_hoa_dons.IDDiaChi')
            ->join('san_phams', 'san_phams.id', '=', 'chi_tiet_hoa_dons.IDSanPham')
            ->where('chi_tiet_hoa_dons.IDHoaDon', $request['idhoadon'])
            //->where('hoa_dons.IDKhachHang',$request['idkhachhang'])
            ->get();
        return response()->json($hd, 200);
    }
    public function cthdfirst(Request $request)
    {
        $hd = ChiTietHoaDon::join('hoa_dons', 'hoa_dons.id', '=', 'chi_tiet_hoa_dons.IDHoaDon')
            ->join('dia_chis', 'dia_chis.id', '=', 'chi_tiet_hoa_dons.IDDiaChi')
            ->join('san_phams', 'san_phams.id', '=', 'chi_tiet_hoa_dons.IDSanPham')
            ->where('chi_tiet_hoa_dons.IDHoaDon', $request['idhoadon'])
            //->where('hoa_dons.IDKhachHang',$request['idkhachhang'])
            //->where('hoa_dons.TrangThai',$request['trangThai'])
            ->first();
        return response()->json($hd, 200);
    }
}
