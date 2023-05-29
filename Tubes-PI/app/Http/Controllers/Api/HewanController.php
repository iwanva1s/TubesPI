<?php

namespace App\Http\Controllers\Api;

use App\Models\Hewan;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class HewanController extends Controller
{
    public function index(){

        $hewan = Hewan::all();

        if($hewan->count() > 0){
            
            return response()->json([
                'status' => 200,
                'hewan' => $hewan
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
            'nama_hewan' => 'required|string|max:200',
            'jenis_hewan' => 'required|string|max:200',
            'berat_hewan' => 'required|int',
            'harga_hewan' => 'required|int',
            'id_peternakan' => 'required|int'
        ]);

        if($validator->fails()){
            
            return response() -> json([
                'status' => 422,
                'error' => $validator->messages()
            ],422);

        }else{
            
            $hewan = Hewan::create([
                'nama_hewan' => $request->nama_hewan,
                'jenis_hewan' => $request->jenis_hewan,
                'berat_hewan' => $request->berat_hewan,
                'harga_hewan' => $request->harga_hewan,
                'id_peternakan' => $request->id_peternakan
            ]);

            if($hewan){

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
        
        $hewan = Hewan::find($id);
        if($hewan){
            
            return response()->json([
                'status' => 200,
                'message' => $hewan
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

        $hewan = Hewan::find($id);
        if($hewan){
            
            return response()->json([
                'status' => 200,
                'message' => $hewan
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
            'nama_hewan' => 'required|string|max:200',
            'jenis_hewan' => 'required|string|max:200',
            'berat_hewan' => 'required|int',
            'harga_hewan' => 'required|int',
            'id_peternakan' => 'required|int'
        ]);

        if($validator->fails()){
            
            return response() -> json([
                'status' => 422,
                'error' => $validator->messages()
            ],422);

        }else{

            $hewan = Hewan::find($id);

            if($hewan){

                $hewan->update([
                    'nama_hewan' => $request->nama_hewan,
                    'jenis_hewan' => $request->jenis_hewan,
                    'berat_hewan' => $request->berat_hewan,
                    'harga_hewan' => $request->harga_hewan,
                    'id_peternakan' => $request->id_peternakan
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
        $hewan = Hewan::find($id);
        if($hewan)
        {
            $hewan->delete();
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

    

}
