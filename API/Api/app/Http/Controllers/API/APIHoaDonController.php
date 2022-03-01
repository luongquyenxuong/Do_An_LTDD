<?php
namespace App\Http\Controllers\API;

use App\Models\HoaDon;
use App\Models\ChiTietHoaDon;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


class APIHoaDonController extends Controller{
    public function insertHoaDon(Request $request)
    {
       // dd($request->all());
        $validated = $request->validate([
            'idkhachhang' => ['numeric'],
            'thanhtien' => ['numeric'],
            'trangthai' => ['numeric'],
        ]);

        $hd=HoaDon::create([
            'IDKhachHang'=>$request['idkhachhang'],
            'ThanhTien'=>$request['thanhtien'],
            'TrangThai'=>$request['trangthai'],
        ]);
     // dd($hd);

        foreach($request["data"] as $item  ){
            $thanhtien=$item['soluong']*$item['gia'];
            ChiTietHoaDon::create([
                'IDHoaDon'=>$hd->id,
                'IDSanPham'=>$item['idsanpham'],
                'IDDiaChi'=>$item['iddiachi'],
                'SoLuong'=>$item['soluong'],
                'Gia'=>$item['gia'],
                'ThanhTien'=>$thanhtien,
            ]);

        }
        return response()->json(["Sucssess" => True], 200);
      //  $hd->save();
        // if($hd)
        // {
        //  return response()->json($hd, 200);
        // }
        // else
        // {
        //  return response()->json($hd, 400);
        // }
     }
     public function updateTrangThai(Request $request)
     {

         $hd=HoaDon::where('id',$request['id'])->first();
         //dd($hd);
         $hd->fill([
            //'IDKhachHang' => $request['idkhachhang'],
            'TrangThai' => (int)$request['trangthai'],

         ]);
         $hd->save();
         $data=$hd;
         if(!empty($data))
         {
          return response()->json($data, 200);
         }
         else
         {
          return response()->json($data, 204);
         }
     }
     public function layDanhSachHD(){
        $dsHoaDon=HoaDon::all();
        return
        response()->json($dsHoaDon,200);
    }
    public function layDanhSachHoaDonKH($idkhachhang,$trangthai){
        //dd($request['idLoai']);
        if($trangthai==4)
        {
            $dsHDKH=HoaDon::where('IDKhachHang',$idkhachhang)->orderBy('id','desc')->get();
            return response()->json($dsHDKH,200);
        }
        if($trangthai==1||$trangthai==3||$trangthai==2||$trangthai==0){
            $dsHDKH=HoaDon::where('IDKhachHang',$idkhachhang)->where('TrangThai',$trangthai)->orderBy('id','desc')->get();
            return response()->json($dsHDKH,200);
        }
        return response()->json('Success=false',404);
        //dd($dsSanPhamLoai);
        // if($dsHDKH){
        //     return response()->json($dsHDKH,200);
        // }
        // else {
        //     return response()->json($dsHDKH,204);
        // }
    }
    public function layDanhSachHoaDonKHTheoTrangThai($request){
        //dd($request['idLoai']);
        $dsHDKH=HoaDon::where('IDKhachHang',$request)->orderBy('id','desc')->get();
        //dd($dsSanPhamLoai);
        if($dsHDKH){
            return response()->json($dsHDKH,200);
        }
        else {
            return response()->json($dsHDKH,204);
        }
    }
    // public function cthdfirst(Request $request){
    //     $trangThai=$request['trangThai'];
    //     if($trangThai==4){
    //         $hd = HoaDon::
    //         join('chi_tiet_hoa_dons', 'chi_tiet_hoa_dons.IDHoaDon', '=', 'hoa_dons.id')
    //         //->join('dia_chis', 'dia_chis.id', '=', 'chi_tiet_hoa_dons.IDDiaChi')
    //         //->join('san_phams', 'san_phams.id', '=', 'chi_tiet_hoa_dons.IDSanPham')
    //        // ->where('chi_tiet_hoa_dons.IDHoaDon',$request['idhoadon'])
    //         ->where('hoa_dons.IDKhachHang',$request['idkhachhang'])
    //         ->get();
    //         return response()->json($hd,200);
    //      }
    //      if($trangThai==1||$trangThai==3||$trangThai==2||$trangThai==0){
    //         $hd = HoaDon::
    //         join('chi_tiet_hoa_dons', 'chi_tiet_hoa_dons.IDHoaDon', '=', 'hoa_dons.id')
    //         //->join('dia_chis', 'dia_chis.id', '=', 'chi_tiet_hoa_dons.IDDiaChi')
    //         //->join('san_phams', 'san_phams.id', '=', 'chi_tiet_hoa_dons.IDSanPham')
    //         //->where('chi_tiet_hoa_dons.IDHoaDon',$request['idhoadon'])
    //         ->where('hoa_dons.IDKhachHang',$request['idkhachhang'])
    //         ->where('hoa_dons.TrangThai',$request['trangThai'])
    //         ->get();
    //         return response()->json($hd,200);
    //      }

    // }
}
