<?php

namespace App\Http\Controllers\API;

use App\Models\Hewan;
use App\Models\Peternakan;
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
            'provinsi_peternakan' => 'required|string|max:200',
            'kab_kota_peternakan' => 'required|string|max:200',
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
                'provinsi_peternakan' => $request->provinsi_peternakan,
                'kab_kota_peternakan' => $request->kab_kota_peternakan,
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
            'provinsi_peternakan' => 'required|string|max:200',
            'kab_kota_peternakan' => 'required|string|max:200',
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
                    'provinsi_peternakan' => $request->provinsi_peternakan,
                    'kab_kota_peternakan' => $request->kab_kota_peternakan,
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
                ->select('tbl_hewan.id', 'tbl_hewan.nama_hewan', 'tbl_hewan.jenis_hewan', 'tbl_peternakan.nama_peternakan')
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
                ->select('tbl_hewan.id', 'tbl_hewan.nama_hewan', 'tbl_hewan.jenis_hewan', 'tbl_peternakan.nama_peternakan')
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
                        'tbl_peternakan.kab_kota_peternakan',
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
}
