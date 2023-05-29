<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Peternakan extends Model
{
    use HasFactory;

    protected $table = 'tbl_peternakan';

    protected $fillable = [
        'id_provinsi',
        'alamat_peternakan',
        'nama_peternakan',
        'no_telp'
    ];
}
