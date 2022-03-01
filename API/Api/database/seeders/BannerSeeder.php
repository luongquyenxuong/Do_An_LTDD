<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;


class BannerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('banners')->insert([
            ['Anh'=>'banner3.png'],
            ['Anh'=>'banner2.png'],
            ['Anh'=>'banner4.png'],
            ['Anh'=>'banner1.png'],
            ['Anh'=>'banner.png']
        ]);
    }
}
