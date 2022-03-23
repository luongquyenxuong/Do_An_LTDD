<?php
namespace App\Http\Controllers;
use App\Models\HoaDon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Redirect;
class HoaDonController extends Controller{
    public function index(Request $request)
    {
        $search = $request->input('search') ?? "";
        if (!empty($search))
            $lstHoaDon = HoaDon::where('IDKhachHang', 'LIKE', "%$search%")->orWhere('id', 'LIKE', "%$search%")->paginate();
        else
            $lstHoaDon = HoaDon::paginate(5);
        $lstHoaDon->appends($request->all());

        return view('hoadon.index', ['lstHoaDon' => $lstHoaDon]);
    //    $lstHoaDon=HoaDon::all();
    //    return view('hoadon.index',['lstHoaDon'=>$lstHoaDon]);
    }
    public function confirming(Request $request)
    {
        $search = $request->input('search') ?? "";
        if (!empty($search))
            $lstHoaDon = HoaDon::where('TrangThai', 0)->where('IDKhachHang', 'LIKE', "%$search%")->orWhere('id', 'LIKE', "%$search%")->paginate();
        else
            $lstHoaDon = HoaDon::where('TrangThai', 0)->paginate(5);
        $lstHoaDon->appends($request->all());

        return view('hoadon.confirming', ['lstHoaDon' => $lstHoaDon]);
    }
    public function confirm( $id)
    {

        $hd = HoaDon::where('id',$id)->first();
        $hd->fill([
            'TrangThai' => 1
        ]);
        $hd->save();
        return Redirect::route('hoadon.confirming')->with('update', 'ok');
    }

    public function delivering(Request $request)
    {
        $search = $request->input('search') ?? "";
        if (!empty($search))
            $lstHoaDon = HoaDon::where('TrangThai', 1)->where('IDKhachHang', 'LIKE', "%$search%")->orWhere('id', 'LIKE', "%$search%")->paginate();
        else
            $lstHoaDon = HoaDon::where('TrangThai', 1)->paginate(5);
        $lstHoaDon->appends($request->all());

        return view('hoadon.delivering', ['lstHoaDon' => $lstHoaDon]);
    }

    public function accomplished(Request $request)
    {
        $search = $request->input('search') ?? "";
        if (!empty($search))
            $lstHoaDon = HoaDon::where('TrangThai', 2)->where('IDKhachHang', 'LIKE', "%$search%")->orWhere('id', 'LIKE', "%$search%")->paginate();
        else
            $lstHoaDon = HoaDon::where('TrangThai', 2)->paginate(5);
        $lstHoaDon->appends($request->all());

        return view('hoadon.accomplished', ['lstHoaDon' => $lstHoaDon]);
    }
    public function cancel(Request $request)
    {
        $search = $request->input('search') ?? "";
        if (!empty($search))
            $lstHoaDon = HoaDon::where('TrangThai', 3)->where('IDKhachHang', 'LIKE', "%$search%")->orWhere('id', 'LIKE', "%$search%")->paginate();
        else
            $lstHoaDon = HoaDon::where('TrangThai', 3)->paginate(5);
        $lstHoaDon->appends($request->all());

        return view('hoadon.cancelled', ['lstHoaDon' => $lstHoaDon]);
    }
    public function finished($id)
    {
       // dd($id);
        $hd = HoaDon::where('id', $id)->first();
        $hd->fill([
            'TrangThai' => 2
        ]);
        $hd->save();
        return Redirect::route('hoadon.delivering')->with('update', 'ok');
    }

    public function show(HoaDon $hoadon)
    {
        return view('hoadon.show', ['hoadon' => $hoadon]);
    }
    // public function show(HoaDon $hoadon)
    // {
    //     return view('hoadon.show', ['hoadon' => $hoadon]);
    // }
    // public function show(HoaDon $hoadon)
    // {
    //     return view('hoadon.show', ['hoadon' => $hoadon]);
    // }
}
