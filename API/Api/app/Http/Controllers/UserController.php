<?php
namespace App\Http\Controllers;
use App\Models\User;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Redirect;
class UserController extends Controller{
    public function index()
    {
       $lstUser=User::all();
       return view('user.index',['lstUser'=>$lstUser]);
    }
}