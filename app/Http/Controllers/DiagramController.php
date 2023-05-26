<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Hewan;
use App\Models\Peternakan;
use App\Models\Provinsi;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class DiagramController extends Controller
{

    public function all_hewan_in_pro($provinsi)
    {
    // jumlah seluruh hewan pada suatu provinsi
    $hewan = Hewan::join('tbl_peternakan', 'tbl_hewan.id_peternakan', '=', 'tbl_peternakan.id')
                    ->join('tbl_provinsi', 'tbl_peternakan.id_provinsi', '=', 'tbl_provinsi.id')
                    ->select('tbl_hewan.*', 'tbl_peternakan.nama_peternakan', 'tbl_provinsi.nama_provinsi')
                    ->where('tbl_provinsi.nama_provinsi','LIKE','%'.$provinsi.'%')
                    ->get();

    $count = $hewan->count();

    // Mengirimkan data ke view
    return response()->json([
        'status' => 200,
        'jumlah' => $count,
        'peternakan' => $hewan
    ],200 );
    }
    
    public function hit_hewan_in_pro($provinsi)
    {
//    jumlah setiap hewan yang ada pada sebuah provinsi
    $hit_sapi = Hewan::join('tbl_peternakan', 'tbl_hewan.id_peternakan', '=', 'tbl_peternakan.id')
                    ->join('tbl_provinsi', 'tbl_peternakan.id_provinsi', '=', 'tbl_provinsi.id')
                    ->select('tbl_hewan.jenis_hewan',  'tbl_provinsi.nama_provinsi')
                    ->where('tbl_hewan.jenis_hewan','LIKE','%'.'sapi'.'%')
                    ->where('tbl_provinsi.nama_provinsi','LIKE','%'.$provinsi.'%')
                    ->get();
        
   
    $hit_ayam = Hewan::join('tbl_peternakan', 'tbl_hewan.id_peternakan', '=', 'tbl_peternakan.id')
                    ->join('tbl_provinsi', 'tbl_peternakan.id_provinsi', '=', 'tbl_provinsi.id')
                    ->select('tbl_hewan.jenis_hewan',  'tbl_provinsi.nama_provinsi')
                    ->where('tbl_hewan.jenis_hewan','LIKE','%'.'ayam'.'%')
                    ->where('tbl_provinsi.nama_provinsi','LIKE','%'.$provinsi.'%')
                    ->get();
   
    $hit_ikan = Hewan::join('tbl_peternakan', 'tbl_hewan.id_peternakan', '=', 'tbl_peternakan.id')
                    ->join('tbl_provinsi', 'tbl_peternakan.id_provinsi', '=', 'tbl_provinsi.id')
                    ->select('tbl_hewan.jenis_hewan',  'tbl_provinsi.nama_provinsi')
                    ->where('tbl_hewan.jenis_hewan','LIKE','%'.'ikan'.'%')
                    ->where('tbl_provinsi.nama_provinsi','LIKE','%'.$provinsi.'%')
                    ->get();
   
    $hit_kambing = Hewan::join('tbl_peternakan', 'tbl_hewan.id_peternakan', '=', 'tbl_peternakan.id')
                    ->join('tbl_provinsi', 'tbl_peternakan.id_provinsi', '=', 'tbl_provinsi.id')
                    ->select('tbl_hewan.jenis_hewan',  'tbl_provinsi.nama_provinsi')
                    ->where('tbl_hewan.jenis_hewan','LIKE','%'.'kambing'.'%')
                    ->where('tbl_provinsi.nama_provinsi','LIKE','%'.$provinsi.'%')
                    ->get();

    $sapi = $hit_sapi->count();
    $ayam = $hit_ayam->count();
    $ikan = $hit_ikan->count();
    $kambing = $hit_kambing->count();

    // Mengirimkan data ke view
    return response()->json([
        'status' => 200,
        'sapi' => $sapi,
        'ayam' => $ayam,
        'ikan' => $ikan,
        'kambing' => $kambing,
    ],200 );

}
}