<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\SanPham;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $acc = User::all()->count();
        $prd = SanPham::all()->count();
        return view('index', ['account' => $acc, 'product' => $prd]);
    }
}
