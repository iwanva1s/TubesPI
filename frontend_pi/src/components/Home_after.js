import { useState, useEffect} from "react";
import { useHistory } from 'react-router-dom';

function Search() {

    const [peternakan, setPeternakan] = useState([]);
    const [mounted, setMounted] = useState(false);
    const [namaUser, setNamaUser] = useState();
    const [search, setSearch] =  useState('');

    const getData = async search => {
        // const token = localStorage.getItem('token');
        // console.log(token);
        // const tokenType = localStorage.getItem('token_type');
        const response = await fetch('http://localhost:8000/api/pet_in_pro/' + search, {
          method: 'GET',
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            // 'Authorization': 'Bearer ' + token
          }
        })
        // .then(data => data.json())
        const data = await response.json()
        setPeternakan(data.peternakan);
        // console.log(data.peternakan);
      }

      const getAllData = async ()=> {
        // const token = localStorage.getItem('token');
        // console.log(token);
        // const tokenType = localStorage.getItem('token_type');
        const response = await fetch('http://localhost:8000/api/pet_pro/', {
          method: 'GET',
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            // 'Authorization': 'Bearer ' + token
          }
        })
        // .then(data => data.json())
        const data = await response.json()
        setPeternakan(data.peternakan);
        // console.log(data.peternakan);
      }
      console.log(peternakan);

    useEffect(() => {
        if (!mounted) {
            setMounted(true);
        }
        else {
            getAllData();
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



  return (
<>
<section class="bg-center bg-no-repeat bg-[url('https://image.winudf.com/v2/image1/Y29tLmFwcDNkd2FsbHBhcGVyaGQuY293d2FsbHBhcGVyX3NjcmVlbl8wXzE1NjcwMjQ4MTBfMDUy/screen-0.jpg?h=710&fakeurl=1&type=.jpg')] bg-cover bg-gray-400 bg-blend-multiply">
    <div class="px-4 mx-auto max-w-screen-xl text-center py-24 lg:py-56">
    <h1 class="mb-4 text-4xl font-extrabold tracking-tight leading-none text-white md:text-5xl lg:text-6xl">Find the farm you want to search with us</h1>
    <p class="mb-8 text-lg font-normal text-gray-300 lg:text-xl sm:px-16 lg:px-48">Here at PeternaKu we focus on finding livestock and products from livestock in Indonesia to encourage economic growth.</p>
         <div class="flex flex-col space-y-4 sm:flex-row sm:justify-center sm:space-y-0 sm:space-x-4">
        </div> 
    </div>
</section>
{/* <div class="pt-10">

</div> */}

<div className="container max-w-screen-lg mx-auto pt-10">
      <form class="flex items-center">   
    <label for="simple-search" class="sr-only">Search</label>
    <div class="relative w-full">
        <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
            <svg aria-hidden="true" class="w-5 h-5 text-gray-500 dark:text-gray-400" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z" clip-rule="evenodd"></path></svg>
        </div>
        <input type="text" name="search" id="simple-search" onChange={e => setSearch(e.target.value)} value={search} class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-10 p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Search" required/>
    </div>
    <button onClick={submitHandler} type="submit" class="p-2.5 ml-2 text-sm font-medium text-white bg-blue-700 rounded-lg border border-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
        <span class="sr-only">Search</span>
    </button>
</form>
</div>

<div className="container max-w-screen-lg mx-auto pt-10">
<div class="flex flex-col gap-4 lg:p-4 p-2  rounde-lg m-2">
    {/* <div class="lg:text-2xl md:text-xl text-lg lg:p-3 p-1 font-black text-gray-700">Daftar</div> */}
    {peternakan.map(tbl_peternakan => (
            <div onClick={() => handleRedirect(tbl_peternakan.id_peternakan)} class="flex items-center justify-between w-full p-2 lg:rounded-full md:rounded-full hover:bg-gray-100 cursor-pointer border-2 rounded-lg">

                <div class="lg:flex md:flex items-center">
                <div class="h-12 w-12 mb-2 lg:mb-0 border md:mb-0 rounded-full mr-3"></div>

                <div class="flex flex-col "  >

                    <div class="text-sm text-left leading-3 text-gray-700 font-bold w-full">Peternakan {tbl_peternakan.nama_peternakan}</div>

                    <div class="text-xs text-left text-gray-600 w-full">Provinsi : {tbl_peternakan.nama_provinsi}</div>
                    <div class="text-xs text-left text-gray-600 w-full">Alamat   : {tbl_peternakan.alamat_peternakan}</div>
                    <div class="text-xs text-left text-gray-600 w-full">No. Telp : {tbl_peternakan.no_telp}</div>
                
                </div>

                </div>

                <svg class="h-6 w-6 mr-1 invisible md:visible lg:visible xl:visible" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
                <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd" />
                </svg>
                
            </div>
     ))}
        </div>
        </div>  

</>

  )
}

export default Search
