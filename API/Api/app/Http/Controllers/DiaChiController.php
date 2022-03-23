<?php
namespace App\Http\Controllers;

use App\Models\DiaChi;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Redirect;
class DiaChiController extends Controller{
    public function index(Request $request)
    {
        $search = $request->input('search') ?? "";
        if (!empty($search))
            $lstDiaChi = DiaChi::where('Ten', 'LIKE', "%$search%")->orWhere('id', 'LIKE', "%$search%")->orWhere('DiaChi', 'LIKE', "%$search%")->paginate();
        else
            $lstDiaChi = DiaChi::paginate(5);
        $lstDiaChi->appends($request->all());

        return view('diachi.index', ['lstDiaChi' => $lstDiaChi]);
    }
}
