import React from 'react'
import { useState, useEffect } from 'react';

export default function Detail({match}) {
    console.log(match.params.pid);

    const [detailHewan, setDetailHewan] = useState([]);
    const [detailProduk, setDetailProduk] = useState([]);

    console.log(match.params.pid);

    const identity = match.params.pid;

    const getData = async ({ match }) => {
        const response = await fetch('http://localhost:8000/api/detailsHewanProduk/' + match.params.pid,
        {
          method: 'GET',
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }
        })
        const data = await response.json()
        setDetailHewan(data.peternakan);
        setDetailProduk(data.produk);
        console.log(data.peternakan, data.produk);
    }

    useEffect(() => {
        if (match) {
            getData({ match });
        }
    }, [match]);


    return (
        <>
    <div class="flex justify-evenly pt-10">
    {detailHewan.map(detail => (
    <div class="bg-pink-700 w-80 shadow overflow-hidden sm:rounded-lg ">

        <div class="px-4 py-5 sm:px-6">
            <h3 class="text-lg leading-6 font-medium text-gray-100">
             {detail.nama_peternakan}
            </h3>
            <p class="mt-1 w- text-sm text-gray-50">
                Details and informations livestock.
            </p>
        </div>
    
        <div class="border-t border-gray-200">
            <dl>
                <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <dt class="text-sm font-medium text-gray-500">
                        Hewan
                    </dt>
                    <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                        {detail.nama_hewan}
                    </dd>
                </div>
                <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <dt class="text-sm font-medium text-gray-500">
                        Jenis 
                    </dt>
                    <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                    {detail.jenis_hewan}
                    </dd>
                </div>
                <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <dt class="text-sm font-medium text-gray-500">
                        Bobot
                    </dt>
                    <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                    {detail.berat_hewan} kg
                    </dd>
                </div>
                <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <dt class="text-sm font-medium text-gray-500">
                        Harga
                    </dt>
                    <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                    Rp {detail.harga_hewan}
                    </dd>
                </div>
                {/* <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <dt class="text-sm font-medium text-gray-500">
                        About
                    </dt>
                    <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                        To get social media testimonials like these, keep your customers engaged with your social media accounts by posting regularly yourself
                    </dd>
                </div> */}
            </dl>
        </div>
    </div>
    ))}
    </div>

    {/* Detail Produk */}
    <div class="flex justify-evenly pt-10">
    {detailProduk.map(detail => (
    <div class="bg-lime-700 w-80 shadow overflow-hidden sm:rounded-lg ">

        <div class="px-4 py-5 sm:px-6">
            <h3 class="text-lg leading-6 font-medium text-gray-100">
             {detail.nama_peternakan}
            </h3>
            <p class="mt-1 text-sm text-gray-50">
                Details and informations product.
            </p>
        </div>
    
        <div class="border-t border-gray-200">
            <dl>
                <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <dt class="text-sm font-medium text-gray-500">
                        Produk
                    </dt>
                    <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                        {detail.nama_produk}
                    </dd>
                </div>
                <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <dt class="text-sm font-medium text-gray-500">
                        Jenis 
                    </dt>
                    <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                    {detail.jenis_produk}
                    </dd>
                </div>
                <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <dt class="text-sm font-medium text-gray-500">
                        Bobot
                    </dt>
                    <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                    {detail.berat_produk} kg
                    </dd>
                </div>
                <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <dt class="text-sm font-medium text-gray-500">
                        Harga
                    </dt>
                    <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                    Rp {detail.harga_produk}
                    </dd>
                </div>
            </dl>
        </div>
    </div>
    ))}

</div>
</> 
    )
}
