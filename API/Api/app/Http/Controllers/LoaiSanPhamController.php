<?php
namespace App\Http\Controllers;
use App\Models\LoaiSanPham;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Redirect;
class LoaiSanPhamController extends Controller{
    public function index()
    {
       $lstLoaiSanPham=LoaiSanPham::all();
    //    foreach($lstLoaiSanPham as $lsp){
    //     $this->fixImage($lsp);
    // }
       return view('loaisanpham.index',['lstLoaiSanPham'=>$lstLoaiSanPham]);
    }
    protected function fixImage(LoaiSanPham $loaiSanPham)
    {
        if(Storage::disk('public')->exists($loaiSanPham->HinhAnh)){
            $loaiSanPham->HinhAnh=Storage::url($loaiSanPham->HinhAnh);

        }else{
            $loaiSanPham->HinhAnh='storage/img/icon/no-image.png';
        }
    } 
}