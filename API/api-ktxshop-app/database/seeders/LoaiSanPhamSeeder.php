<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
//use App\Models\LoaiSanPham;
use Illuminate\Support\Facades\DB;

class LoaiSanPhamSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        DB::table('loai_san_phams')->insert([
            'TenLoaiSP'=>'Áo thun',
            'HinhAnh'=>'logo_ao.png',
            'TrangThai'=>'1',
        ]);
        DB::table('loai_san_phams')->insert([
            'TenLoaiSP'=>'Áo khoác',
            'HinhAnh'=>'logo_ao_khoac.png',
            'TrangThai'=>'1',
        ]);
        DB::table('loai_san_phams')->insert([
            'TenLoaiSP'=>'Quần',
            'HinhAnh'=>'logo_quan.png',
            'TrangThai'=>'1',
        ]);
        DB::table('loai_san_phams')->insert([
            'TenLoaiSP'=>'Giày',
            'HinhAnh'=>'logo_giay.png',
            'TrangThai'=>'1',
        ]);
        DB::table('loai_san_phams')->insert([
            'TenLoaiSP'=>'Dép',
            'HinhAnh'=>'logo_dep.png',
            'TrangThai'=>'1',
        ]);
        DB::table('loai_san_phams')->insert([
            'TenLoaiSP'=>'Phụ kiện',
            'HinhAnh'=>'logo_phu_kien.png',
            'TrangThai'=>'1',
        ]);
      

    }
}
