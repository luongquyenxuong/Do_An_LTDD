<?php

namespace App\Models;
// use App\Models\HoaDon;
// use App\Models\SanPham;
// use App\Models\DiaChi;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ChiTietHoaDon extends Model
{
    use HasFactory;
    use SoftDeletes;


    protected $guarded=[];
    public function hoaDon()
    {
        return $this->belongsTo(HoaDon::class,'IDHoaDon');
    }
    public function sanPham()
    {
        return $this->belongsTo(SanPham::class,'IDSanPham');
    }
    public function diaChi()
    {
        return $this->belongsTo(DiaChi::class,'IDDiaChi');
    }

}
