import { useState, useEffect} from "react";
import axios from "axios";

export default function Provinsi() {

    const [peternakan, setPeternakan] = useState([]);
    const [mounted, setMounted] = useState(false);
    const [isLoading, setIsLoading] = useState(true);
    const [namaUser, setNamaUser] = useState();
    // const [search, setSearch] =  useState('');

    const getData = async () => {
        const token = localStorage.getItem('token');
        console.log(token);
        const tokenType = localStorage.getItem('token_type');
        const response = await fetch('http://localhost:8000/api/pet_in_pro/', {
          method: 'GET',
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer ' + token
          }
        })
        // .then(data => data.json())
        const data = await response.json()
        setPeternakan(data.peternakan);
      }

    useEffect(() => {
        if (!mounted) {
            setMounted(true);
        }
        else {
            getData();
            setNamaUser(localStorage.getItem('name'));
        }
    }, [mounted]);

    // const submitHandler = e => {
    //     e.preventDefault();
    //     getData(search);
    // }

     console.log(peternakan);


    return (
        <div class="flex justify-center w-auto min-h-fit p-10">
            {/* <div class="grid xl:grid-cols-3 md:grid-cols-2 grid-cols-1 gap-2 max-w-6xl">
            {peternakan.map(tbl_peternakan => (
                    <div class="flex flex-col bg-gray-200 rounded-lg p-4 m-2">
                        <div class="flex flex-col items-start mt-4">
                            <a href="#" class="block max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700">
                                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Peternakan {tbl_peternakan.nama_peternakan}</h5>
                                <p class="font-normal text-gray-700 dark:text-gray-400">Provinsi : {tbl_peternakan.nama_provinsi}</p>
                                <p class="font-normal text-gray-700 dark:text-gray-400">Alamat   : {tbl_peternakan.alamat_peternakan}</p>
                                <p class="font-normal text-gray-700 dark:text-gray-400">No. Telp : {tbl_peternakan.no_telp}</p>
                            </a>
                        </div>
                    </div>
                ))}
            </div> */}
        </div>
    );
 
}
