<?php

namespace App\Models;
use App\Models\LoaiSanPham;
use App\Models\NhaPhanPhoi;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SanPham extends Model
{
    use HasFactory;
    use SoftDeletes;
    //protected $table='san_phams';

    protected $guarded=[];

    public function loaiSanPham()
    {
        return $this->belongsTo(LoaiSanPham::class,'IDLoaiSp');
    }
    public function nhaPhanPhoi()
    {
        return $this->belongsTo(NhaPhanPhoi::class,'IDNhaPhanPhoi');
    }
} 