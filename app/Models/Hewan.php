<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hewan extends Model
{
    use HasFactory;

    protected $table = 'tbl_hewan';

    protected $fillable = [
        'nama_hewan',
        'jenis_hewan',
        'berat_hewan',
        'harga_hewan',
        'id_peternakan'
    ];
}
