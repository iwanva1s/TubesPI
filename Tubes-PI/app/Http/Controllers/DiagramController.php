<?php

namespace App\Http\Controllers;

use App\Models\Hewan;
use App\Models\Produk;
use App\Models\Provinsi;
use App\Models\Peternakan;
use Illuminate\Http\Request;
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
        'data' => $hewan
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

    public function hit_pet_in_pro($provinsi)
    {
//    jumlah peternakan yang ada yang ada pada sebuah provinsi
    $hit_peternakan = Peternakan::join('tbl_provinsi', 'tbl_provinsi.id', '=', 'tbl_peternakan.id_provinsi')
                    ->where('tbl_provinsi.nama_provinsi','LIKE','%'.$provinsi.'%')
                    ->get();
        
    $peternakan = $hit_peternakan->count();

    // Mengirimkan data ke view
    return response()->json([
        'status' => 200,
        'jumlah' => $peternakan,
    ],200 );
    
   } 
    
   public function pet_each_pro()
    {
//    jumlah peternakan yang ada yang ada pada masing provinsi
    
    for ($i=1; $i < 39; $i++) 
    { 
        $j = $i -1;

        $hit_peternakan = Peternakan::join('tbl_provinsi', 'tbl_provinsi.id', '=', 'tbl_peternakan.id_provinsi')
                        ->select('tbl_provinsi.id','tbl_provinsi.nama_provinsi','tbl_peternakan.id')
                        ->where('tbl_provinsi.id','=',$i)
                        ->get();                  
        $prov = $hit_peternakan ->count();                


        $nama_provinsi = Provinsi::select('nama_provinsi')
                        ->where('id','=',$i)
                        ->get();  
        $data[$j]= array($nama_provinsi,$prov) ;

    }


    // // Mengirimkan data ke view
    return response()->json([
        'status' => 200,
        'data'=> $data
    ],200 );

   }
   
   public function pro_in_prov($provinsi)
    {
//    jumlah produk yang berasal pada masing provinsi
    
    $produk = Produk::join('tbl_peternakan', 'tbl_produk.id_peternakan', '=', 'tbl_peternakan.id')
                    ->join('tbl_provinsi', 'tbl_peternakan.id_provinsi', '=', 'tbl_provinsi.id')
                    ->select('tbl_produk.nama_produk', 'tbl_peternakan.nama_peternakan', 'tbl_provinsi.nama_provinsi')
                    ->where('tbl_provinsi.nama_provinsi','LIKE','%'.$provinsi.'%')
                    ->get();

    $count = $produk->count();

    // // Mengirimkan data ke view
    return response()->json([
        'status' => 200,
        'jumlah' => $count,
        'data' => $produk
    ],200 );

   }


   public function pro_each_prov()
   {
//    jumlah peternakan yang ada yang ada pada masing provinsi
   
   for ($i=1; $i < 39; $i++) 
   { 
       $j = $i -1;

       $hit_produk = Produk::join('tbl_peternakan', 'tbl_produk.id_peternakan', '=', 'tbl_peternakan.id')
                    ->join('tbl_provinsi', 'tbl_peternakan.id_provinsi', '=', 'tbl_provinsi.id')
                    ->select('tbl_produk.id', 'tbl_peternakan.nama_peternakan', 'tbl_provinsi.id')
                    ->where('tbl_provinsi.id','=',$i)
                    ->get();                 
       $pro = $hit_produk ->count();                


       $nama_provinsi = Provinsi::select('nama_provinsi')
                       ->where('id','=',$i)
                       ->get();  
       $data[$j]= array($nama_provinsi,$pro) ;

   }


   // // Mengirimkan data ke view
   return response()->json([
       'status' => 200,
       'data'=> $data
   ],200 );

  }




















}