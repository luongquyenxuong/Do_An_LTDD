<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;
use Carbon\Carbon;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            ['email'=>'lqx@gmail.com','password'=>'123456','HoTen'=>'Lương Quyền Xương','GioiTinh'=>1, 'NgaySinh'=>Carbon::create('2001', '04', '13'),'SDT'=>'123456789','Avatar'=>'face8.jpg','Admin'=>1],
            ['email'=>'vht@gmail.com','password'=>'123456','HoTen'=>'Võ Hoàng Trình','GioiTinh'=>1, 'NgaySinh'=>Carbon::create('2000', '1', '1'),'SDT'=>'123456789','Avatar'=>'face3.jpg','Admin'=>2],
            ['email'=>'ttk@gmail.com','password'=>'123456','HoTen'=>'Trần Tuấn Kiệt','GioiTinh'=>1, 'NgaySinh'=>Carbon::create('2001', '1', '1'),'SDT'=>'123456789','Avatar'=>'face4.jpg','Admin'=>1],
        ]);
    }
}
