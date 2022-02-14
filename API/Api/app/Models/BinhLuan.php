<?php

namespace App\Models;
use App\Models\KhachHang;
use App\Models\SanPham;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BinhLuan extends Model
{
    use HasFactory;
    use SoftDeletes;
   

    protected $guarded=[];
    // public function khachHang()
    // {
    //     return $this->belongsTo(KhachHang::class);
    // }
    // public function sanPham()
    // {
    //     return $this->belongsTo(SanPham::class);
    // }
} 