<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class NhaPhanPhoiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('nha_phan_phois')->insert(
        [
            [
                'TenNhaPhanPhoi'=>'LQX',
                'Email'=>'LQX@gmail.com',
                'SDT'=>'123456789',
                'TrangThai'=>1,
            ],
            [
                'TenNhaPhanPhoi'=>'VHT',
                'Email'=>'VHT@gmail.com',
                'SDT'=>'123456789',
                'TrangThai'=>1,
            ],
            [
                'TenNhaPhanPhoi'=>'TTK',
                'Email'=>'TTK@gmail.com',
                'SDT'=>'123456789',
                'TrangThai'=>1,
            ],
        ],
       
      
    );
    }
}
