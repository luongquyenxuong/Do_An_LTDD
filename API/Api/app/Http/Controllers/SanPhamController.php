<?php
namespace App\Http\Controllers;
use App\Models\SanPham;
use App\Models\LoaiSanPham;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Redirect;

class SanPhamController extends Controller{
    public function index()
    {
       $lstSanPham=SanPham::all();
    //    foreach($lstSanPham as $sp){
    //        $this->fixImage($sp);
    //    }
       return view('sanpham.index',['lstSanPham'=>$lstSanPham]);
    }
    protected function fixImage(SanPham $sanPham)
    {
        if(Storage::disk('public')->exists($sanPham->HinhAnh)){
            $sanPham->HinhAnh=Storage::url($sanPham->HinhAnh);

        }else{
            $sanPham->HinhAnh='storage/img/icon/no-image.png';
        }
    } 
    // public function show(SanPham $sanPham){
    //     $this->fixImage($sanPham);
    //     return view('sanpham.show',['sanPham'=>$sanPham]);
    // }
    public function create(){
        $lstLoai=LoaiSanPham::all();
        return view ('sanpham.create',['lstLoai'=>$lstLoai]);
    }
    public function edit(SanPham $sanPham){
        $this->fixImage($sanPham);
        $lstLoai=LoaiSanPham::all();
        return view ('sanpham.edit',['sanPham'=>$sanPham,'lstLoai'=>$lstLoai]);
    }
    public function update(Request $request,SanPham $sanPham)
    {
        if($request->hasFile('HinhAnh')){
            $sanPham->HinhAnh=$request->file('hinh')->store('images/sp/'.$sanPham->id,'public');
        }
        $sanPham->fill([
            'TenSp'=>$request->input('tensp'),
            'IDLoaiSp'=>$request->input('loaisp'),
            'IDNhaPhanPhoi'=>$request->input('nhaphanphoi'),
            'Gia'=>$request->input('gia'),
            'KichThuoc'=>$request->input('kichthuoc'),
            'MauSac'=>$request->input('mausac'),
            'MoTa'=>$request->input('mota'),
            'ThongTin'=>$request->input('thongtin'),
            'TonKho'=>$request->input('tonkho')
        ]);
        $sanPham->save();
        return Redirect::route('sanPham.show',['sanpham'=>$sanPham]);
    }
    // public function destroy(SanPham $sanPham)
    // {
    //     $sanPham->delete();
    //     return Redirect::route('sanpham.index');

    // }
}

