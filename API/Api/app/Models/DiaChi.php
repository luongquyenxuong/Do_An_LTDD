<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class DiaChi extends Model
{
    use HasFactory;
   // use SoftDeletes;
   

    protected $guarded=[];
    public function user()
    {
        return $this->belongsTo(User::class,'IDKhachHang');
    }
} 