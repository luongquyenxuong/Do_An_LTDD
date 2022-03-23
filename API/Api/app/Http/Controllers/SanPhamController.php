<?php

namespace App\Http\Controllers;

use App\Models\SanPham;
use App\Models\NhaPhanPhoi;
use App\Models\LoaiSanPham;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Redirect;


class SanPhamController extends Controller
{
    public function index(Request $request)
    {

        $search = $request->input('search') ?? "";
        if (!empty($search))
            $lstSanPham = SanPham::where('TenSp', 'LIKE', "%$search%")->orWhere('id', 'LIKE', "%$search%")->paginate();
        else
            $lstSanPham = SanPham::paginate(5);
        $lstSanPham->appends($request->all());
        foreach ($lstSanPham as $sp) {
            $this->fixImage($sp);
        }
        return view('sanpham.index', ['lstSanPham' => $lstSanPham]);
    }
    protected function fixImage(SanPham $sanPham)
    {
        if (Storage::disk('public')->exists($sanPham->HinhAnh)) {
            $sanPham->HinhAnh = Storage::url($sanPham->HinhAnh);
        } else {
            $sanPham->HinhAnh = 'storage/img/icon/no-image.png';
        }
    }
    public function show(SanPham $sanpham)
    {

        $this->fixImage($sanpham);
        return view('sanpham.show', ['sanpham' => $sanpham]);
    }
    public function create()
    {
        $lstLoai = LoaiSanPham::all();
        $lstNPP = NhaPhanPhoi::all();
        return view('sanpham.create', ['lstLoai' => $lstLoai, 'lstNPP' => $lstNPP]);
    }
    public function edit(SanPham $sanpham)
    {
        $this->fixImage($sanpham);
        $lstLoai = LoaiSanPham::all();
        $lstNPP = NhaPhanPhoi::all();
        return view('sanpham.edit', ['sanpham' => $sanpham, 'lstLoai' => $lstLoai, 'lstNPP' => $lstNPP]);
    }
    public function update(Request $request, SanPham $sanpham)
    {
        if ($request->hasFile('hinhanh')) {
            $sanpham->HinhAnh = $request->file('hinhanh')->store('img/product/' . $sanpham->id, 'public');
        }
        $sanpham->fill([
            'TenSp' => $request->input('tensp'),
            'IDLoaiSp' => $request->input('loaisp'),
            'IDNhaPhanPhoi' => $request->input('nhaphanphoi'),
            'Gia' => $request->input('gia'),
            'KichThuoc' => $request->input('kichthuoc'),
            'MauSac' => $request->input('mausac'),
            'MoTa' => $request->input('mota'),
            'ThongTin' => $request->input('thongtin'),
            'TonKho' => $request->input('tonkho')
        ]);
        $sanpham->save();
        return Redirect::route('sanpham.index', ['sanpham' => $sanpham]);
    }
    public function destroy(SanPham $sanpham)
    {
        $sanpham->delete();
        return Redirect::route('sanpham.index');
    }
    public function store(Request $request)
    {

        $prd = new SanPham();
        $prd->fill([
            'IDLoaiSp' => $request->input('loaisp'),
            'IDNhaPhanPhoi' => $request->input('nhaphanphoi'),
            'TenSp' => $request->input('TenSp'),
            'Gia' => $request->input('gia'),
            'HinhAnh' => '',
            'KichThuoc' => $request->input('kichthuoc'),
            'NoiBat' => (int)$request->input('noibat'),
            'MauSac' => $request->input('mausac'),
            'MoTa' => $request->input('mota'),
            'ThongTin' => $request->input('thongtin'),
            'TonKho' => $request->input('soluong'),
            'TrangThai' => 1,

        ]);
        $prd->save();
        if ($request->hasFile('hinhanh')) {
            $prd->HinhAnh = $request->file('hinhanh')->store('img/product/' .  $prd->id, 'public');
        }
        $prd->save();
        return Redirect::route('sanpham.index', ['sanpham' => $prd])->with('add', 'Thêm thành công');
    }
    public function deleted()
    {
        $lstSp = SanPham::onlyTrashed()->paginate(3);
        foreach ($lstSp as $sp) {
            $this->fixImage($sp);
        }
        return view('sanpham.delete', ['lstSanPham' => $lstSp]);
    }
    public function restore($id)
    {
        $sanpham = SanPham::withTrashed()->where('id', $id)->first();
        $sanpham->restore();
        return Redirect::route('sanpham.deleted')->with('restored', 'ok');
    }
}
