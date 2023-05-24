import React from 'react'
import { useState, useEffect } from 'react';

export default function Detail({match}) {
    console.log(match.params.pid);

    const [detailHewan, setDetailHewan] = useState([]);
    const [detailProduk, setDetailProduk] = useState([]);
    const [mounted, setMounted] = useState(false);
    const [isLoading, setIsLoading] = useState(true);
    const [namaUser, setNamaUser] = useState();

    console.log(match.params.pid);

    const identity = match.params.pid;

    const getData = async ({ match }) => {
        const token = localStorage.getItem('token');
        console.log(token);
        const tokenType = localStorage.getItem('token_type');
        const response = await fetch('http://localhost:8000/api/detailsHewanProduk/' + match.params.pid,
        {
          method: 'GET',
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer ' + token
          }
        })
        // .then(data => data.json())
        const data = await response.json()
        setDetailHewan(data.peternakan);
        setDetailProduk(data.produk);
        console.log(data.peternakan, data.produk);
    }

    useEffect(() => {
        if (match) {
            getData({ match });
            // getSaranContent();
        }
    }, [match]);


    return (
        <div>
            <h2>Hewan</h2>
            <h2>Hewan</h2>
            <h2>Hewan</h2>
            <h2>Hewan</h2>
                {detailHewan.map(detail => (
                    <div>
                    <h2>Peternakan : {detail.nama_peternakan}</h2>
                    <div class="flex flex-col bg-gray-200 rounded-lg p-4 m-2">
                        
                        <div class="flex flex-col items-start mt-4">
                            <a href="#" class="block max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700">
                                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">{detail.nama_hewan}</h5>
                                <p class="font-normal text-gray-700 dark:text-gray-400">Jenis Hewan : {detail.jenis_hewan}</p>
                                <p class="font-normal text-gray-700 dark:text-gray-400">Harga   : {detail.harga_hewan}</p>
                                <p class="font-normal text-gray-700 dark:text-gray-400">Berat : {detail.berat_hewan}kg</p>
                            </a>
                        </div>
                    </div>
                    </div>
                ))}

            <h2>Produk</h2>
                {detailProduk.map(detail => (
                    <div class="flex flex-col bg-gray-200 rounded-lg p-4 m-2">
                        <div class="flex flex-col items-start mt-4">
                            <a href="#" class="block max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700">
                                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">{detail.nama_produk}</h5>
                                <p class="font-normal text-gray-700 dark:text-gray-400">Jenis Produk : {detail.jenis_produk}</p>
                                <p class="font-normal text-gray-700 dark:text-gray-400">Berat   : {detail.berat_produk}</p>
                                <p class="font-normal text-gray-700 dark:text-gray-400">Harga : {detail.harga_produk}kg</p>
                            </a>
                        </div>
                    </div>
                ))}
        </div>
    )
}
