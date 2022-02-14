<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class NhaPhanPhoi extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nha_phan_phois', function (Blueprint $table) {
            $table->id();
            $table->string('TenNhaPhanPhoi');
            $table->string('Email');
            $table->string('SDT');
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
        Schema::dropIfExists('nha_phan_phois');
    }
}
