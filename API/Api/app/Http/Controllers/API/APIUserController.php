<?php
namespace App\Http\Controllers\API;

use App\Models\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


class APIUserController extends Controller{
   
    public function layChiTiet($id)
    {
        $DiaChi=User::find($id);
        return response()->json($DiaChi,200);
    }
    public function layDanhSach(){
        $dsSanPham=User::all();
        return response()->json($dsSanPham,200);
    }
    public function apiLogin(Request $request)
    {
        $account = User::where('email', $request->input('email'))->where('password', $request->input('password'))->first();
        // return response($account, 200);

        if($account) {
            return response()->json($account,200);
        } else{
            return response()->json($account,400);
        }
    }
}
