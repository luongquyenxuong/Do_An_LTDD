<?php

namespace App\Http\Controllers;

use App\Models\LoaiSanPham;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Redirect;

class CategoryController extends Controller
{
    public function index(Request $request)
    {
        $search = $request->input('search') ?? "";
        if (!empty($search))
            $lstLoaiSanPham = LoaiSanPham::where('TenLoaiSP', 'LIKE', "%$search%")->orWhere('id', 'LIKE', "%$search%")->paginate();
        else
            $lstLoaiSanPham = LoaiSanPham::paginate(5);
        $lstLoaiSanPham->appends($request->all());
        foreach ($lstLoaiSanPham as $sp) {
            $this->fixImage($sp);
        }
      //  dd($lstLoaiSanPham);
        return view('loaisanpham.index', ['lstLoaiSanPham' => $lstLoaiSanPham]);
    }
    protected function fixImage(LoaiSanPham $loaiSanPham)
    {
        if (Storage::disk('public')->exists($loaiSanPham->HinhAnh)) {
            $loaiSanPham->HinhAnh = Storage::url($loaiSanPham->HinhAnh);
        } else {
            $loaiSanPham->HinhAnh = 'storage/img/icon/no-image.png';
        }
    }
    public function show(int $loai)

    {
        //  $this->fixImage($loai);
       // dd($loai);
          $l = LoaiSanPham::where('id', $loai)->first();
        return view('loaisanpham.show', ['loaisp' => $l]);
    }
    public function edit(int $loai)
    {

       //dd($loai);
         $l = LoaiSanPham::where('id', $loai)->first();
        return view('loaisanpham.edit')->with("loaisp",$l);
    }
    public function update(Request $request,LoaiSanPham $loaisanpham)
    {
        if($request->hasFile('hinhanh')){
            $loaisanpham->HinhAnh=$request->file('hinhanh')->store('img/product/'.$loaisanpham->id,'public');
        }
        $loaisanpham->fill([
            'TenLoaiSP'=>$request->input('tenloaisp'),
            'TrangThai'=>1
        ]);
        $loaisanpham->save();
        return Redirect::route('loaisanpham.index',['loaisanpham'=>$loaisanpham]);
    }
    public function create()
    {
        $lstLoai = LoaiSanPham::all();

        return view('loaisanpham.create', ['lstLoai' => $lstLoai]);
    }
    public function destroy(int $loai)
    {
        $l = LoaiSanPham::where('id', $loai)->first();
        $l->delete();
        return Redirect::route('loaisanpham.index');
    }
    public function store(Request $request)
    {

        $loai = new LoaiSanPham();
        if ($request->hasFile('hinhanh')) {
            $loai->HinhAnh = $request->file('hinhanh')->store('img/product/' .  $loai->id, 'public');
        }
        $loai->fill([
            'TenLoaiSP'=>$request->input('tenloaisp'),
            'TrangThai'=>1
        ]);
        $loai->save();

        $loai->save();
        return Redirect::route('loaisanpham.index', ['loaisp' => $loai])->with('add', 'Thêm thành công');
    }
    public function deleted()
    {
        $lstLoai = LoaiSanPham::onlyTrashed()->paginate(3);
        foreach ($lstLoai as $loai) {
            $this->fixImage($loai);
        }
        return view('loaisanpham.delete', ['lstLoai' => $lstLoai]);
    }
    public function restore($id)
    {
        $sanpham = LoaiSanPham::withTrashed()->where('id', $id)->first();
        $sanpham->restore();
        return Redirect::route('loaisanpham.deleted')->with('restored', 'ok');
    }
}
