<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class SanPham extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('san_phams', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('IDLoaiSp');
            $table->unsignedBigInteger('IDNhaPhanPhoi');
            $table->string('TenSp');
            $table->integer('Gia');
            $table->string('HinhAnh');
            $table->string('KichThuoc');
            $table->string('MauSac');
            $table->text('MoTa');
            $table->text('ThongTin');
            $table->integer('TonKho');
            $table->integer('TrangThai');
            $table->timestamps();
            $table->softDeletes();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sanpham');
    }
}
