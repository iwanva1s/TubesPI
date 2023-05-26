<?php

namespace App\Http\Controllers\API;

use App\Models\Hewan;
use App\Models\Peternakan;
use App\Models\Provinsi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class PeternakanController extends Controller
{
    public function index(){

        $peternakan = Peternakan::all();

        if($peternakan->count() > 0){
            
            return response()->json([
                'status' => 200,
                'peternakan' => $peternakan
            ],200 );
            
        }else{

            return response()->json([
                'status' => 404,
                'message' => 'Data Tidak Ditemukan'
            ], 404);

        }

    }

    public function store(Request $request)
    {

        $validator = Validator::make($request->all(),[
            'id_provinsi' => 'required|integer|max:38',
            'alamat_peternakan' => 'required|string|max:200',
            'nama_peternakan' => 'required|string|max:200',
            'no_telp' => 'required|max:200'
        ]);

        if($validator->fails()){
            
            return response() -> json([
                'status' => 422,
                'error' => $validator->messages()
            ],422);

        }else{

            $peternakan = Peternakan::create([
                'id_provinsi' => $request->id_provinsi,
                'alamat_peternakan' => $request->alamat_peternakan,
                'nama_peternakan' => $request->nama_peternakan,
                'no_telp' => $request->no_telp
            ]);

            if($peternakan){

                return response()->json([
                    'status' => 200,
                    'message' => "Data Berhasil Dibuat"
                ],200);
            }else{
                return response()->json([
                    'status' => 500,
                    'message' => "Ada Yang Salah"
                ],500);
            }
            
        }
        
    }
    
    public function show($id)
    {
        
        $peternakan = Peternakan::find($id);
        if($peternakan){
            
            return response()->json([
                'status' => 200,
                'message' => $peternakan
            ],200);
            
        }else{
            
            return response()->json([
                'status' => 404,
                'message' => "Ada Yang Salah"
            ],404);

        }

    }

    public function edit($id)
    {

        $peternakan = Peternakan::find($id);
        if($peternakan){
            
            return response()->json([
                'status' => 200,
                'message' => $peternakan
            ],200);
            
        }else{
            
            return response()->json([
                'status' => 404,
                'message' => "Ada Yang Salah"
            ],404);

        }

    }

    public function update(Request $request, int $id)
    {
        $validator = Validator::make($request->all(),[
            'id_provinsi' => 'required|integer|max:200',
            'alamat_peternakan' => 'required|string|max:200',
            'nama_peternakan' => 'required|string|max:200',
            'no_telp' => 'required|max:200'
        ]);

        if($validator->fails()){
            
            return response() -> json([
                'status' => 422,
                'error' => $validator->messages()
            ],422);

        }else{

            $peternakan = Peternakan::find($id);

            if($peternakan){

                $peternakan->update([
                    'id_provinsi' => $request->id_provinsi,
                    'alamat_peternakan' => $request->alamat_peternakan,
                    'nama_peternakan' => $request->nama_peternakan,
                    'no_telp' => $request->no_telp
                ]);

                return response()->json([
                    'status' => 200,
                    'message' => "Data Berhasil Diupdate"
                ],200);
            }else{
                return response()->json([
                    'status' => 404,
                    'message' => "Data Tidak Ditemukan"
                ],404);
            }
            
        }
    }
    
    public function destroy($id)
    {
        $peternakan = Peternakan::find($id);
        if($peternakan)
        {
            $peternakan->delete();
            return response()->json([
                'status' => 200,
                'message' => "Data Berhasil Dihapus"
            ],200);
        }else{
            return response()->json([
                'status' => 404,
                'message' => "Data Tidak Ditemukan"
            ],404);
        }

    }

    public function gab1()
{
    // Mengambil data dari tabel hewan dan peternakan, dan menggabungkannya menggunakan join
    $data = DB::table('tbl_hewan')
                ->join('tbl_peternakan', 'tbl_hewan.id_peternakan', '=', 'tbl_peternakan.id')
                ->select('tbl_hewan.id',
                        'tbl_hewan.nama_hewan',
                        'tbl_hewan.jenis_hewan',
                        'tbl_hewan.harga_hewan',
                        'tbl_hewan.berat_hewan',
                        'tbl_peternakan.nama_peternakan')
                ->get();

    // Mengirimkan data ke view
    return response()->json([
        'status' => 200,
        'peternakan' => $data
    ],200 );
}

    public function gab1_id_hewan($id)
    {
    // Mengambil data dari tabel hewan dan peternakan, dan menggabungkannya menggunakan join
    $data = DB::table('tbl_hewan')
                ->join('tbl_peternakan', 'tbl_hewan.id_peternakan', '=', 'tbl_peternakan.id')
                ->select('tbl_hewan.id',
                        'tbl_hewan.nama_hewan',
                        'tbl_hewan.jenis_hewan', 
                        'tbl_hewan.harga_hewan',
                        'tbl_hewan.berat_hewan',
                        'tbl_peternakan.nama_peternakan')
                ->where('tbl_hewan.id','=',$id)
                ->get();

    // Mengirimkan data ke view
    return response()->json([
        'status' => 200,
        'peternakan' => $data
    ],200 );
    }
    
    public function gab1_id_pet($id)
    {
    // Mengambil data dari tabel hewan dan peternakan, dan menggabungkannya menggunakan join
    $data = DB::table('tbl_peternakan')
                ->join('tbl_hewan', 'tbl_hewan.id_peternakan', '=', 'tbl_peternakan.id')
                ->select('tbl_peternakan.id',
                        'tbl_peternakan.nama_peternakan',
                        'tbl_peternakan.alamat_peternakan',
                        'tbl_peternakan.no_telp',
                        'tbl_hewan.id',
                        'tbl_hewan.nama_hewan'
                        )
                ->where('tbl_peternakan.id','=',$id)
                ->get();

    // Mengirimkan data ke view
    return response()->json([
        'status' => 200,
        'peternakan' => $data
    ],200 );
    }


    public function pet_pro()
{
    // Mengambil data dari tabel hewan dan peternakan, dan menggabungkannya menggunakan join
    $data = DB::table('tbl_peternakan')
                ->join('tbl_provinsi', 'tbl_provinsi.id', '=', 'tbl_peternakan.id_provinsi')
                ->select('tbl_peternakan.id',
                        'tbl_peternakan.nama_peternakan',
                        'tbl_peternakan.alamat_peternakan',
                        'tbl_peternakan.no_telp',
                        'tbl_provinsi.id',
                        'tbl_provinsi.nama_provinsi'
                )
                ->get();

    // Mengirimkan data ke view
    return response()->json([
        'status' => 200,
        'peternakan' => $data
    ],200 );
}

    public function pet_pro2($id)
    {
    // Mengambil data dari tabel hewan dan peternakan, dan menggabungkannya menggunakan join
    $data = DB::table('tbl_peternakan')
                ->join('tbl_provinsi', 'tbl_provinsi.id', '=', 'tbl_peternakan.id_provinsi')
                ->select('tbl_peternakan.id',
                        'tbl_peternakan.nama_peternakan',
                        'tbl_peternakan.alamat_peternakan',
                        'tbl_peternakan.no_telp',
                        'tbl_provinsi.id',
                        'tbl_provinsi.nama_provinsi'
                        )
                ->where('tbl_peternakan.id','=',$id)
                ->get();

    // Mengirimkan data ke view
    return response()->json([
        'status' => 200,
        'peternakan' => $data
    ],200 );
    }
    
    public function pet_in_pro($nama_pro)
    {
    // Mengambil data dari tabel hewan dan peternakan, dan menggabungkannya menggunakan join
    $data = DB::table('tbl_peternakan')
                ->join('tbl_provinsi', 'tbl_provinsi.id', '=', 'tbl_peternakan.id_provinsi')
                ->select('tbl_peternakan.id',
                        'tbl_peternakan.nama_peternakan',
                        'tbl_peternakan.alamat_peternakan',
                        'tbl_peternakan.no_telp',
                        'tbl_provinsi.id',
                        'tbl_provinsi.nama_provinsi'
                        )
                ->where('tbl_provinsi.nama_provinsi','LIKE','%'.$nama_pro.'%')
                ->get();

    // Mengirimkan data ke view
    return response()->json([
        'status' => 200,
        'peternakan' => $data
    ],200 );
    }
    
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