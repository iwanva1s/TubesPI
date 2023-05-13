<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Produk extends Model
{
    use HasFactory;

    protected $table = 'tbl_produk';

    protected $fillable = [
        'nama_produk',
        'jenis_produk',
        'berat_produk',
        'harga_produk',
        'id_peternakan'
    ];
}
