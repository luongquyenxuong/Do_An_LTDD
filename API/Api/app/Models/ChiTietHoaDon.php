<?php

namespace App\Models;
use App\Models\HoaDon;
use App\Models\SanPham;
use App\Models\DiaChi;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ChiTietHoaDon extends Model
{
    use HasFactory;
    use SoftDeletes;
   

    protected $guarded=[];
    // public function hoaDon()
    // {
    //     return $this->belongsTo(HoaDon::class);
    // }
    // public function sanPham()
    // {
    //     return $this->belongsTo(SanPham::class);
    // }
    // public function diaChi()
    // {
    //     return $this->belongsTo(DiaChi::class);
    // }
   
} 