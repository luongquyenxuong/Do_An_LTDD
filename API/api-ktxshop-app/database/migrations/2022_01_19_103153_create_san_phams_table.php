<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSanPhamsTable extends Migration
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
            $table->string('TenSp');
            $table->unsignedBigInteger('IDLoaiSp');
            $table->unsignedBigInteger('IDNhaPhanPhoi');
            $table->integer('Gia');
            $table->string('HinhAnh');
            $table->string('KichThuoc');
            $table->string('MauSac');
            $table->text('Mota');
            $table->text('ThongTin');
            $table->integer('TonKho');
            $table->integer('TrangThai');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('san_phams');
    }
}
