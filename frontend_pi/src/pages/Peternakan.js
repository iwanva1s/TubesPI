import { data } from "autoprefixer";
import React, { useState, useEffect} from "react";
import swal from 'sweetalert';

// ----------Create Peternakan--------------
async function CreatePeternakan(peternakan) {
  const token = localStorage.getItem('token');
  console.log(peternakan);
  return fetch('http://127.0.0.1:8000/api/peternakan', {
    method: 'POST',
    dataType: "json",
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ' + token
    },
    body: JSON.stringify(peternakan)
  })
  .then(data => data.json())
}


function Peternakan() {
  const [mounted, setMounted] = useState(false);
  const [namaUser, setNamaUser] = useState();
  const [provinsi, setProvinsi] = useState();
  const [peternakan, setPeternakan] = useState([]);
  const [formPeternakan, setFormPeternakan] = useState({id_provinsi:"", alamat_peternakan:'', nama_peternakan:'', no_telp:''});
  const [search, setSearch] = useState('');
  const [hasil, setHasil] = useState([]);
  // const [formData, setFormData] = useState({id_provinsi: '',nama_peternakan: '',alamat_peternakan: '', no_telp: ''});
  // const [selectedPeternakanId, setSelectedPeternakanId] = useState(null);

  const getAllData = async ()=> {
    const token = localStorage.getItem('token');
    console.log(token);
    // const tokenType = localStorage.getItem('token_type');
    const response = await fetch('http://localhost:8000/api/pet_pro/', {
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
    setHasil(data.peternakan);
    // console.log(data.peternakan);
  }
  // console.log(peternakan);

  const getProvinsi = async ()=> {
    const token = localStorage.getItem('token');
    console.log(token);
    const response = await fetch('http://localhost:8000/api/provinsi/', {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ' + token
      }
    })
    const data = await response.json()
    setProvinsi(data.provinsi);
  }
  // console.log(produk);

  // fungsi untuk menampilkan data provinsi dan peternakan
  useEffect(() => {
    if (!mounted) {
        setMounted(true);
    }
    else {  
        getProvinsi();
        getAllData();
        setNamaUser(localStorage.getItem('name'));
    }
}, [mounted]);

// ----------handleSubmit Peternakan--------------
//proses setelah submit dilakukan
const handleSubmit = async e => {
  e.preventDefault();
  const response = await CreatePeternakan(formPeternakan);
  console.log(response);
  if (response.status == 200) {
      swal("Success", response.message, "success", {
        buttons: true,
        timer: 2000,
      })
    .then((value) => {
      window.location.href = "/peternakan";
    });
  } else {
    swal("Failed", response.message, "error");
    }
}

    //fungsi utuk search
    function handleCari(e) {
      e.preventDefault(); //untuk mencegah terjadinya refresh halaman
      const hasilCari = peternakan.filter((tbl_peternakan)=>tbl_peternakan.nama_peternakan.toLowerCase().includes(search.toLowerCase()))
      setHasil(hasilCari);
    }

  // console.log(peternakan);
  const [isModalOpen, setModalOpen] = useState(false);

  const openModal = () => {
    setModalOpen(true);
  };

  const closeModal = () => {
    setModalOpen(false);
  };
console.log(formPeternakan);
  return (
  <div>
    
  {/* <!-- Start block --> */}
        <section class="bg-gray-50 dark:bg-gray-900 p-3 sm:p-5 antialiased">
            <div class="mx-auto max-w-screen-2xl px-4 lg:px-12">
                <div class="bg-white dark:bg-gray-800 relative shadow-md sm:rounded-lg overflow-hidden">
                    <div class="flex flex-col md:flex-row items-stretch md:items-center md:space-x-3 space-y-3 md:space-y-0 justify-between mx-4 py-4 border-t dark:border-gray-700">
                        <div class="w-full md:w-1/2">
                        <form class="flex items-center">   
                            <label for="simple-search" class="sr-only">Search</label>
                            <div class="relative w-full">
                                <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                                    <svg aria-hidden="true" class="w-5 h-5 text-gray-500 dark:text-gray-400" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z" clip-rule="evenodd"></path></svg>
                                </div>
                                <input onChange={(e) => setSearch(e.target.value)} value={search} type="text" id="simple-search" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-10 p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Search" required/>
                            </div>
                            <button onClick={handleCari} type="submit" class="p-2.5 ml-2 text-sm font-medium text-white bg-blue-700 rounded-lg border border-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
                                <span class="sr-only">Search</span>
                            </button>
                        </form>
                        </div>
                        <div class="w-full md:w-auto flex flex-col md:flex-row space-y-2 md:space-y-0 items-stretch md:items-center justify-end md:space-x-3 flex-shrink-0">
                        <button id="defaultModalButton" onClick={openModal} className="block text-white bg-primary-700 hover:bg-primary-800 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800" type="button">
                            Add Farm
                          </button>
                            </div>
                          </div>
                  
                    <div class="overflow-x-auto">
                        <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                            <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                                <tr>
                                    <th scope="col" class="p-4">Province</th>
                                    <th scope="col" class="p-4">Name</th>
                                    <th scope="col" class="p-4">Address</th>
                                    <th scope="col" class="p-4">Phone Number</th>
                                    {/* <th scope="col" class="p-4">Action</th> */}
                                </tr>
                            </thead>
 
                            {hasil.length > 0 && hasil.map(tbl_peternakan => (
                            <tbody>
                                <tr class="border-b dark:border-gray-600 hover:bg-gray-100 dark:hover:bg-gray-700">
                                
                                  <td class="px-4 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                    <span class="flex text-black items-center mr-3">{tbl_peternakan.nama_provinsi}</span>
                                </td>
                                  
                                    <td class="px-4 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                        <span class="flex text-black items-center mr-3">{tbl_peternakan.nama_peternakan}</span>
                                    </td>

                                    <td class="px-4 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                        <div class="flex text-black items-center mr-3">
                                            {tbl_peternakan.alamat_peternakan}
                                        </div>
                                    </td>

                                    <td class="px-4 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                        <div class="flex text-black items-center mr-3">
                                            {tbl_peternakan.no_telp}
                                        </div>
                                    </td>
    
                                    {/* <td class="px-4 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                        <div class="flex items-center space-x-4">
                          
                                            <button type="button" id="defaultModalButton" onClick={() => handleEdit(peternakan.id_peternakan)} data-drawer-target="drawer-update-peternakan" data-drawer-show="drawer-update-peternakan" aria-controls="drawer-update-peternakan" class="py-2 px-3 flex items-center text-sm font-medium text-center text-white bg-primary-700 rounded-lg hover:bg-primary-800 focus:ring-4 focus:outline-none focus:ring-primary-300 dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800">
                                                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-2 -ml-0.5" viewbox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                                    <path d="M17.414 2.586a2 2 0 00-2.828 0L7 10.172V13h2.828l7.586-7.586a2 2 0 000-2.828z" />
                                                    <path fill-rule="evenodd" d="M2 6a2 2 0 012-2h4a1 1 0 010 2H4v10h10v-4a1 1 0 112 0v4a2 2 0 01-2 2H4a2 2 0 01-2-2V6z" clip-rule="evenodd" />
                                                </svg>
                                                Edit
                                            </button>
                                            
                                          
                          
                                            <button type="button" data-modal-target="delete-modal" data-modal-toggle="delete-modal" class="flex items-center text-red-700 hover:text-white border border-red-700 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm px-3 py-2 text-center dark:border-red-500 dark:text-red-500 dark:hover:text-white dark:hover:bg-red-600 dark:focus:ring-red-900">
                                                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-2 -ml-0.5" viewbox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                                    <path fill-rule="evenodd" d="M9 2a1 1 0 00-.894.553L7.382 4H4a1 1 0 000 2v10a2 2 0 002 2h8a2 2 0 002-2V6a1 1 0 100-2h-3.382l-.724-1.447A1 1 0 0011 2H9zM7 8a1 1 0 012 0v6a1 1 0 11-2 0V8zm5-1a1 1 0 00-1 1v6a1 1 0 102 0V8a1 1 0 00-1-1z" clip-rule="evenodd" />
                                                </svg>
                                                Delete
                                            </button>
                                        </div>
                                    </td> */}
                                </tr>
                            </tbody>
                               ))} 
                        </table>
                    </div>
                    </div>
                </div>           
        </section>
        
        {/*  End block  */}
      
      {/* Add Farm Modal*/}
      {isModalOpen && (
        <div id="defaultModal" className="fixed inset-0 z-50 flex items-center justify-center overflow-y-auto overflow-x-hidden" aria-hidden="true">
          <div className="relative p-4 w-full max-w-2xl">
            {/* Modal content */}
            <div className="relative p-4 bg-white rounded-lg shadow dark:bg-gray-800 sm:p-5">
              {/* Modal header */}
              <div className="flex justify-between items-center pb-4 mb-4 rounded-t border-b sm:mb-5 dark:border-gray-600">
                <h3 className="text-lg font-semibold text-gray-900 dark:text-white">
                  Add Farm
                </h3>
                <button type="button" onClick={closeModal} className="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-600 dark:hover:text-white">
                  <svg aria-hidden="true" className="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                    <path fillRule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clipRule="evenodd"></path>
                  </svg>
                  <span className="sr-only">Close modal</span>
                </button>
              </div>
              {/* Modal body */}
              <form action="#" method="POST" onSubmit={handleSubmit}>
                <div>
                    <label htmlFor="id_provinsi" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Province</label>
                    <select id="id_provinsi" onChange={e => setFormPeternakan({...formPeternakan, id_provinsi : e.target.value})} className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                      <option selected>Choose a province</option>
                      {provinsi!= undefined && provinsi.map(provinsi => (
                      <option value = {provinsi.id_provinsi}>{provinsi.nama_provinsi}</option>
                      ))}
                    </select>
                    <div>
                  <label htmlFor="alamat_peternakan">Farm name</label>
                    <input type="text" name="nama_peternakan" id="nama_peternakan" onChange={e => setFormPeternakan({...formPeternakan, nama_peternakan : e.target.value})} className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" placeholder="Type farm name" required/>
                  </div>
                  <div>
                  <div>
                  <label htmlFor="alamat_peternakan">Farm address</label>
                    <input type="text" name="alamat_peternakan" id="alamat_peternakan" onChange={e => setFormPeternakan({...formPeternakan, alamat_peternakan : e.target.value})} className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" placeholder="Type farm address" required/>
                  </div>
                
                  <label htmlFor="no_telp">Phone Number</label>
                    <input type="text" name="no_telp" id="no_telp" onChange={e => setFormPeternakan({...formPeternakan, no_telp : e.target.value})} className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" placeholder="Type phone number" required/>
                  </div>
                </div>
                <div className="pt-3 text-right">
                <button type="submit" className="text-white inline-flex items-center bg-primary-700 hover:bg-primary-800 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800">
                  <svg className="mr-1 -ml-1 w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                    <path fillRule="evenodd" d="M10 5a1 1 0 011 1v3h3a1 1 0 110 2h-3v3a1 1 0 11-2 0v-3H6a1 1 0 110-2h3V6a1 1 0 011-1z"clipRule="evenodd"></path>
                  </svg>
                  Add new farm
                </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      )}
         
      {/* Edit Farm Modal*/}
     

  </div> 
  )
}

export default Peternakan
