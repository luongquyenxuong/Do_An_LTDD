<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateForeignKeys extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('san_phams', function (Blueprint $table) {
            $table->foreign('IDLoaiSp')->references('id')->on('loai_san_phams');
            $table->foreign('IDNhaPhanPhoi')->references('id')->on('nha_phan_phois');
        });
        // Schema::table('users', function (Blueprint $table) {
        //     $table->foreign('IDDiaChi')->references('id')->on('dia_chis');
        // });
        Schema::table('binh_luans', function (Blueprint $table) {
            $table->foreign('IDKhachHang')->references('id')->on('users');
            $table->foreign('IDSanPham')->references('id')->on('san_phams');
        });
        Schema::table('dia_chis', function (Blueprint $table) {
            $table->foreign('IDKhachHang')->references('id')->on('users');
        });
        Schema::table('hoa_dons', function (Blueprint $table) {
            $table->foreign('IDKhachHang')->references('id')->on('users');
        });
        Schema::table('chi_tiet_hoa_dons', function (Blueprint $table) {
            $table->foreign('IDHoaDon')->references('id')->on('hoa_dons');
            $table->foreign('IDSanPham')->references('id')->on('san_phams');
            $table->foreign('IDDiaChi')->references('id')->on('dia_chis');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('foreign_keys');
    }
}
