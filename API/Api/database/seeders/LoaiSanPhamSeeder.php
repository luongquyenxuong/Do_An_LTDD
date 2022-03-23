<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\DB;

use Illuminate\Database\Seeder;

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
            ['TenLoaiSP'=>'Áo thun',
            'HinhAnh'=>'logo_ao.png',
            'TrangThai'=>1,],
            [
                'TenLoaiSP'=>'Áo khoác',
                'HinhAnh'=>'logo_ao_khoac.png',
                'Trang
                Thai'=>1,
            ],
            [
                'TenLoaiSP'=>'Quần',
                'HinhAnh'=>'logo_quan.png',
                'TrangThai'=>1,
            ],
            [
                'TenLoaiSP'=>'Giày',
                'HinhAnh'=>'logo_giay.png',
                'TrangThai'=>1,
            ],
            [
                'TenLoaiSP'=>'Dép',
                'HinhAnh'=>'logo_dep.png',
                'TrangThai'=>1,
            ],
            [
                'TenLoaiSP'=>'Phụ kiện',
                'HinhAnh'=>'logo_phu_kien.png',
                'TrangThai'=>1,
            ]
        ],
    );
    }
}
