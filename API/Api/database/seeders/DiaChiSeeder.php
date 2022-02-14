<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;
use Carbon\Carbon;

class DiaChiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('dia_chis')->insert([
            [
                'IDKhachHang'=>1,
                'Ten'=>'Lương Quyền Xương ',
                'SDT'=>'123456789',
                'DiaChi'=>'114/16 đường số 8,Quận Bình Tân',
            ],
            [
                'IDKhachHang'=>1,
                'Ten'=>'Nguyễn Văn B',
                'SDT'=>'123456789',
                'DiaChi'=>'114/16 đường số 8,Quận Bình Tân',
            ],
            [
                'IDKhachHang'=>2,
                'Ten'=>'Võ Hoàng Trình ',
                'SDT'=>'123456789',
                'DiaChi'=>'114/16 đường số 8,Quận Bình Tân',
            ],
            [
                'IDKhachHang'=>2,
                'Ten'=>'Trần Văn A',
                'SDT'=>'123456789',
                'DiaChi'=>'114/16 đường số 8,Quận Bình Tân',
            ],
            [
                'IDKhachHang'=>3,
                'Ten'=>'Trần Tuấn Kiệt ',
                'SDT'=>'123456789',
                'DiaChi'=>'114/16 đường số 8,Quận Bình Tân',
            ],
            [
                'IDKhachHang'=>3,
                'Ten'=>'Lê Văn A',
                'SDT'=>'123456789',
                'DiaChi'=>'114/16 đường số 8,Quận Bình Tân',
            ]
        ]);
    }
}
