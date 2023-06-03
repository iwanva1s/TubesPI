<?php

namespace App\Http\Controllers\Api;

use App\Models\Produk;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class ProdukController extends Controller
{
    public function index(){

        $produk = Produk::all();

        if($produk->count() > 0){
            
            return response()->json([
                'status' => 200,
                'produk' => $produk
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
            'nama_produk' => 'required|string|max:200',
            'jenis_produk' => 'required|string|max:200',
            'berat_produk' => 'required|int',
            'harga_produk' => 'required|int',
            'id_peternakan' => 'required|int'
        ]);

        if($validator->fails()){
            
            return response() -> json([
                'status' => 422,
                'error' => $validator->messages()
            ],422);
            
        }else{
            
            $produk = Produk::create([
                'nama_produk' => $request->nama_produk,
                'jenis_produk' => $request->jenis_produk,
                'berat_produk' => $request->berat_produk,
                'harga_produk' => $request->harga_produk,
                'id_peternakan' => $request->id_peternakan
            ]);

            if($produk){

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
        
        $produk = Produk::find($id);
        if($produk){
            
            return response()->json([
                'status' => 200,
                'message' => $produk
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

        $produk = Produk::find($id);
        if($produk){
            
            return response()->json([
                'status' => 200,
                'message' => $produk
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
            'nama_produk' => 'required|string|max:200',
            'jenis_produk' => 'required|string|max:200',
            'berat_produk' => 'required|int',
            'harga_produk' => 'required|int',
            'id_peternakan' => 'required|int'
        ]);

        if($validator->fails()){
            
            return response() -> json([
                'status' => 422,
                'error' => $validator->messages()
            ],422);

        }else{

            $produk = Produk::find($id);

            if($produk){

                $produk->update([
                    'nama_hewan' => $request->nama_produk,
                    'jenis_hewan' => $request->jenis_produk,
                    'berat_hewan' => $request->berat_produk,
                    'harga_hewan' => $request->harga_produk,
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
        $produk = Produk::find($id);
        if($produk)
        {
            $produk->delete();
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
