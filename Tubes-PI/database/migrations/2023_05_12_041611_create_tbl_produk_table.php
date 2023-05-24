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
        Schema::create('tbl_produk', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nama_produk',200);
            $table->string('jenis_produk',200);
            $table->integer('berat_produk');
            $table->float('harga_produk',9,2);
            $table->unsignedInteger('id_peternakan');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tbl_produk');
    }
};
