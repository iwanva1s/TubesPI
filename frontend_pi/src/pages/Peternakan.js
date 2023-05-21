import { useState, useEffect} from "react";
import axios from "axios";


function Peternakan() {

    const [peternakans, setPeternakan] = useState([]);
    const [mounted, setMounted] = useState(false);
    const [isLoading, setIsLoading] = useState(true);
    const [namaUser, setNamaUser] = useState();

    const getData = async () => {
        const token = localStorage.getItem('token');
        const tokenType = localStorage.getItem('token_type');
        try {
          const response = await fetch('http://localhost:8000/api/peternakan', {
            method: 'GET',
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': 'Bearer ' + token
            }
          });
      
          if (!response.ok) {
            throw new Error('Failed to fetch data');
          }
      
          const data = await response.json();
          if (data && data.data && data.data.peternakan) {
            console.log(data.data.peternakan);
            setPeternakan(data.data.peternakan);
            setTimeout(() => {
              setIsLoading(false);
            }, 1000);
          } else {
            throw new Error('Invalid response data');
          }
        } catch (error) {
          console.log(error);
          // Handle error, display error message, etc.
        }
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


    return (
        <div class="flex justify-center w-auto min-h-fit p-10">
            <div class="grid xl:grid-cols-3 md:grid-cols-2 grid-cols-1 gap-2 max-w-6xl">
                {peternakans.map(tbl_peternakan => (
                    <div class="flex flex-col bg-gray-200 rounded-lg p-4 m-2">
                        <div class="flex flex-col items-start mt-4">
                            <a href="#" class="block max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700">
                                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Peternakan</h5>
                                <p class="font-normal text-gray-700 dark:text-gray-400">Alamat Peternakan: {tbl_peternakan.alamat_peternakan}</p>
                                <p class="font-normal text-gray-700 dark:text-gray-400">Nama Peternakan: {tbl_peternakan.nama_peternakan}</p>
                                <p class="font-normal text-gray-700 dark:text-gray-400">No. Telp : {tbl_peternakan.no_telp}</p>
                            </a>
                        </div>
                    </div>
                ))}
            </div>
        </div>
    );
 
}
export default Peternakan;
