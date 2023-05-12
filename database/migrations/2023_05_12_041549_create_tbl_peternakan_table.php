<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('tbl_peternakan', function (Blueprint $table) {
            $table->increments('id');
            $table->string('provinsi_peternakan',200);
            $table->string('kab_kota_peternakan',200);
            $table->string('alamat_peternakan',200);
            $table->string('nama_peternakan',200);
            $table->string('no_telp',200);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tbl_peternakan');
    }
};
