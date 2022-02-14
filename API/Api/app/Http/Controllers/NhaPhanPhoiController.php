<?php
namespace App\Http\Controllers;
use App\Models\NhaPhanPhoi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Redirect;
class NhaPhanPhoiController extends Controller{
    public function index()
    {
       $lstNhaPhanPhoi=NhaPhanPhoi::all();
       return view('nhaphanphoi.index',['lstNhaPhanPhoi'=>$lstNhaPhanPhoi]);
    }
}