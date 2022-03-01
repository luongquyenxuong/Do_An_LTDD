<?php

namespace App\Http\Controllers\API;

use App\Models\User;
use App\Models\DiaChi;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


class APIUserController extends Controller
{

    public function layChiTiet($id)
    {
        $User = User::find($id);
        return response()->json($User, 200);
    }

    public function layDanhSach()
    {
        $dsUser = User::all();
        return response()->json($dsUser, 200);
    }
    public function apiLogin(Request $request)
    {
        $user = User::where('password', $request['password'])->where(function ($query) use ($request) {
            $query->orwhere('email', $request['email'])->orwhere('SDT', $request['SDT']);
        })->first();
        if ($user) {
            return response()->json($user, 200);
        } else {
            return response()->json($user, 405);
        }
    }

    public function register(Request $request)
    {
        $validated = $request->validate([
            'fullname' => ['required', 'max:255'],
            'tkemail' => ['required', 'email'],
            'matkhau' => ['required'],
            'sdt' => ['required'],

        ]);
        // if ($request->hasFile('image')) {
        //     $account->avatar = $request->file('image')->store('images/avatar/' . $account->id, 'public');
        // }
        $user = User::create([
            'HoTen' => $request['fullname'],
            'email' => $request['tkemail'],
            'password' => $request['matkhau'],
            'SDT' => $request['sdt'],
            'GioiTinh' => (int)$request['sex'],

        ]);
        $user->save();
        if ($user) {
            return response()->json($user, 200);
        } else {
            return response()->json($user, 400);
        }
    }
    public function edituser(Request $request)
    {
        // dd($request->all());
        $validated = $request->validate([
            'fullname' => ['required', 'max:255'],
            'email' => ['required', 'email'],
            'password' => ['required'],
            'phone' => ['required'],

        ]);
        // if ($request->hasFile('image')) {
        //     $account->avatar = $request->file('image')->store('images/avatar/' . $account->id, 'public');
        // }
        $user = User::where('id', $request['id'])->first();
        $user->fill([
            'email' => $request['email'],
            'password' => $request['password'],
            'HoTen' => $request['fullname'],
            'SDT' => $request['phone'],
            'GioiTinh' => (int)$request['sex']
        ]);
        $user->save();
        $data = $user;
        if (!empty($data)) {
            return response()->json($data, 200);
        } else {
            return response()->json($data, 400);
        }
    }
    public function editpassword(Request $request)
    {

        // dd($request->all());
        // $validated = $request->validate([
        //     'fullname' => ['required', 'max:255'],
        //     'email' => ['required', 'email'],
        //     'password' => ['required'],
        //     'phone' => ['required' ],

        // ]);
        // if ($request->hasFile('image')) {
        //     $account->avatar = $request->file('image')->store('images/avatar/' . $account->id, 'public');
        // }

        $user = User::where('id', $request['id'])->first();
        $user->fill([
            'password' => $request['password'],
        ]);
        $user->save();
        $data = $user;
        if (!empty($data)) {
            return response()->json($data, 200);
        } else {
            return response()->json($data, 400);
        }
    }
}
