import { useState, useEffect} from "react";
import { useHistory } from 'react-router-dom';
import axios from "axios";

export default function Search() {

    const [peternakan, setPeternakan] = useState([]);
    const [mounted, setMounted] = useState(false);
    const [isLoading, setIsLoading] = useState(true);
    const [namaUser, setNamaUser] = useState();
    const [search, setSearch] =  useState('');

    const getData = async search => {
        const token = localStorage.getItem('token');
        console.log(token);
        const tokenType = localStorage.getItem('token_type');
        const response = await fetch('http://localhost:8000/api/pet_in_pro/' + search, {
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
        console.log(data.peternakan);
      }

    useEffect(() => {
        if (!mounted) {
            setMounted(true);
        }
        else {
            // getData();
            setNamaUser(localStorage.getItem('name'));
        }
    }, [mounted]);

    const submitHandler = e => {
        e.preventDefault();
        getData(search);
    }

    // fungsi untuk mengarahkan ke laman detail
    const history = useHistory();
    const handleRedirect = (id_peternakan) => {
        history.push('/detail/' + id_peternakan);
    }

    // console.log(peternakan);

  return (
    <section>
     
    {/* <form onSubmit={submitHandler}>
    <input type="text" name="search" onChange={e => setSearch(e.target.value)} value={search}/>
    <button >
    Search
        
    </button>

    </form> */}


    <label class="mx-auto mt-40 relative bg-white min-w-sm max-w-2xl flex flex-col md:flex-row items-center justify-top border py-2 px-2 rounded-2xl gap-2 shadow-2xl focus-within:border-gray-300"
            for="search-bar">
    <input 
        id="search-bar" 
        type="text" 
        name="search" 
        onChange={e => setSearch(e.target.value)} value={search}
        placeholder="your keyword here"
        class="px-6 py-2 w-full rounded-md flex-1 outline-none bg-white"
    />

    <button onClick={submitHandler}
        class="w-full md:w-auto px-6 py-3 bg-black border-black text-white fill-white active:scale-95 duration-100 border will-change-transform overflow-hidden relative rounded-xl transition-all disabled:opacity-70">
        
        <div class="relative">

            {/* <!-- Loading animation change opacity to display --> */}
            <div
                class="flex items-center justify-center h-3 w-3 absolute inset-1/2 -translate-x-1/2 -translate-y-1/2 transition-all">
                <svg class="opacity-0 animate-spin w-full h-full" xmlns="http://www.w3.org/2000/svg" fill="none"
                    viewBox="0 0 24 24">
                    <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor"
                        stroke-width="4"></circle>
                    <path class="opacity-75" fill="currentColor"
                        d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z">
                    </path>
                </svg>
            </div>

            <div class="flex items-center transition-all opacity-1 valid:"><span
                    class="text-sm font-semibold whitespace-nowrap truncate mx-auto">
                    Search
                </span>
            </div>

        </div>
        
    </button>
</label> 

{peternakan.map(tbl_peternakan => (
                    <div class="flex flex-col bg-gray-200 rounded-lg p-4 m-2">
                        <div class="flex flex-col items-start mt-4">
                            <a onClick={() => handleRedirect(tbl_peternakan.id_peternakan)} class="block max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700">
                                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Peternakan {tbl_peternakan.nama_peternakan}</h5>
                                <p class="font-normal text-gray-700 dark:text-gray-400">Provinsi : {tbl_peternakan.nama_provinsi}</p>
                                <p class="font-normal text-gray-700 dark:text-gray-400">Alamat   : {tbl_peternakan.alamat_peternakan}</p>
                                <p class="font-normal text-gray-700 dark:text-gray-400">No. Telp : {tbl_peternakan.no_telp}</p>
                            </a>
                        </div>
                    </div>
                ))}
    </section>
  )
}
