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

// ----------Create Hewan--------------
async function CreateHewan(hewan) {
  const token = localStorage.getItem('token');
  console.log(hewan);
  return fetch('http://127.0.0.1:8000/api/hewan', {
    method: 'POST',
    dataType: "json",
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ' + token
    },
    body: JSON.stringify(hewan)
  })
  .then(data => data.json())
}

// ----------Create Produk--------------
async function CreateProduk(produk) {
  const token = localStorage.getItem('token');
  console.log(produk);
  return fetch('http://127.0.0.1:8000/api/produk', {
    method: 'POST',
    dataType: "json",
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ' + token
    },
    body: JSON.stringify(produk)
  })
  .then(data => data.json())
}

function Profile() {
  const [mounted, setMounted] = useState(false);
  const [namaUser, setNamaUser] = useState();
  const [provinsi, setProvinsi] = useState();
  const [peternakans, setPeternakans] = useState();
  const [peternakan, setPeternakan] = useState({alamat_peternakan:'', nama_peternakan:'', no_telp:''});
  const [hewan, setHewan] = useState({nama_hewan:'', jenis_hewan:'', berat_hewan:'', harga_hewan:'', id_peternakan:''});
  const [produk, setProduk] = useState({nama_produk:'', jenis_produk:'', berat_produk:'', harga_produk:'', id_peternakan:''});

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
    // console.log(data.provinsi);
  }
  console.log(hewan);

  const getPeternakan = async ()=> {
    const token = localStorage.getItem('token');
    console.log(token);
    const response = await fetch('http://localhost:8000/api/Namapeternakan/', {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ' + token
      }
    })
    const data = await response.json()
    setPeternakans(data.peternakan);
    // console.log(data.provinsi);
  }

  // fungsi untuk menampilkan data provinsi dan peternakan
  useEffect(() => {
    if (!mounted) {
        setMounted(true);
    }
    else {  
        getProvinsi();
        getPeternakan();
        setNamaUser(localStorage.getItem('name'));
    }
}, [mounted]);

// ----------handleSubmit Peternakan--------------
const handleSubmit = async e => {
  e.preventDefault();
  const response = await CreatePeternakan(peternakan);
  console.log(response.message);
  if (response.status == 200) {
      swal("Success", response.message, "success", {
        buttons: true,
        timer: 2000,
      })
    .then((value) => {
      window.location.href = "/profile";
    });
  } else {
    swal("Failed", response.message, "error");
    }
    }

// ----------handleSubmit Hewan--------------
    const handleSubmit2 = async e => {
      e.preventDefault();
      const response = await CreateHewan(hewan);
      console.log(response.message);
      if (response.status == 200) {
          swal("Success", response.message, "success", {
            buttons: true,
            timer: 2000,
          })
        .then((value) => {
          window.location.href = "/profile";
        });
      } else {
        swal("Failed", response.message, "error");
        }
        }

// ----------handleSubmit Produk--------------
const handleSubmit3 = async e => {
  e.preventDefault();
  const response = await CreateProduk(produk);
  console.log(response.message);
  if (response.status == 200) {
      swal("Success", response.message, "success", {
        buttons: true,
        timer: 2000,
      })
    .then((value) => {
      window.location.href = "/profile";
    });
  } else {
    swal("Failed", response.message, "error");
    }
    }

  return (
  <div>
    <div className="min-h-screen p-6 bg-gray-100 flex items-center justify-center">
      <div className="container max-w-screen-lg mx-auto">
        <div>
          <h2 className="font-semibold text-xl text-gray-600">Welcome</h2>
          <p className="text-gray-500 mb-6">Form Register Farm!</p>
          <div className="bg-white rounded shadow-lg p-4 px-4 md:p-8 mb-6">
          <form class="space-y-6" action="" method="POST" onSubmit={handleSubmit}>
            <div className="grid gap-4 gap-y-2 text-sm grid-cols-1 lg:grid-cols-3">
              <div className="text-gray-600">
                <p className="font-medium text-lg">Province</p>
                <p>Please select your province.</p>
              </div>
              <div className="lg:col-span-2">
                <div className="grid gap-4 gap-y-2 text-sm grid-cols-1 md:grid-cols-5">
                  <div className="md:col-span-5">    
                    <label htmlFor="id_provinsi" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Province</label>
                    <select id="id_provinsi" onChange={e => setPeternakan({...peternakan, id_provinsi : e.target.value})} className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                      <option selected>Choose a province</option>
                      {provinsi!= undefined && provinsi.map(provinsi => (
                      <option value = {provinsi.id_provinsi}>{provinsi.nama_provinsi}</option>
                      ))}
                    </select>
                  </div>
                </div>
              </div>
              <div className="text-gray-600">
                <p className="font-medium text-lg">Farm Details</p>
                <p>Please fill out all the fields.</p>
              </div>
              <div className="lg:col-span-2">
                <div className="grid gap-4 gap-y-2 text-sm grid-cols-1 md:grid-cols-5">
                  <div className="md:col-span-5">
                    <label htmlFor="alamat_peternakan">Farm address</label>
                    <input type="text" name="alamat_peternakan" id="alamat_peternakan" onChange={e => setPeternakan({...peternakan, alamat_peternakan : e.target.value})} className="h-10 border mt-1 rounded px-4 w-full bg-gray-50"  placeholder="Enter your farm address.." />
                  </div>
                  <div className="md:col-span-5">
                    <label htmlFor="nama_peternakan">The farm name</label>
                    <input type="text" name="nama_peternakan" id="nama_peternakan" onChange={e => setPeternakan({...peternakan, nama_peternakan : e.target.value})} className="h-10 border mt-1 rounded px-4 w-full bg-gray-50"  placeholder="Enter your farm name.." />
                  </div>
                  <div className="md:col-span-5">
                    <label htmlFor="no_telp">Phone number</label>
                    <input type="text" name="no_telp" id="no_telp" onChange={e => setPeternakan({...peternakan, no_telp : e.target.value})} className="h-10 border mt-1 rounded px-4 w-full bg-gray-50"  placeholder="Enter your phone number.." />
                  </div>
                  <div className="md:col-span-5 text-right">
                    <div className="inline-flex items-end">
                      <button className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Submit</button>
                    </div>
                  </div> 
                </div>
              </div>
            </div>
            </form>
          </div>

          <div className="bg-white rounded shadow-lg p-4 px-4 md:p-8 mb-6">
          <form class="space-y-6" action="" method="POST" onSubmit={handleSubmit2}>
          <div className="grid gap-4 gap-y-2 text-sm grid-cols-1 lg:grid-cols-3">
              <div className="text-gray-600">
                <p className="font-medium text-lg">Farm</p>
                <p>Please select your farm.</p>
              </div>
              <div className="lg:col-span-2">
                <div className="grid gap-4 gap-y-2 text-sm grid-cols-1 md:grid-cols-5">
                  <div className="md:col-span-5">    
                    <label htmlFor="id_peternakan" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Farm</label>
                    <select id="id_peternakan" onChange={e => setHewan({...hewan, id_peternakan : e.target.value})} className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                      <option selected>Choose a farm</option>
                      {peternakans!= undefined && peternakans.map(peternakan => (
                      <option value = {peternakan.id_peternakan}>{peternakan.nama_peternakan}</option>
                      ))}
                    </select>
                  </div>
                </div>
              </div>
              </div>
            <div className="grid gap-4 gap-y-2 text-sm grid-cols-1 lg:grid-cols-3">
              <div className="text-gray-600">
                <p className="font-medium text-lg">Livestock Details</p>
                <p>Please fill out all the fields.</p>
              </div>
              <div className="lg:col-span-2">
                <div className="grid gap-4 gap-y-2 text-sm grid-cols-1 md:grid-cols-5">
                  <div className="md:col-span-5">
                    <label htmlFor="nama_hewan">Animal names</label>
                    <input type="text" name="nama_hewan" id="nama_hewan" onChange={e => setHewan({...hewan, nama_hewan : e.target.value})} className="h-10 border mt-1 rounded px-4 w-full bg-gray-50"  placeholder="Enter your animal names.." />
                  </div>
                  <div className="md:col-span-5">
                    <label htmlFor="jenis_hewan">Animal types</label>
                    <input type="text" name="jenis_hewan" id="jenis_hewan" onChange={e => setHewan({...hewan, jenis_hewan : e.target.value})}  className="h-10 border mt-1 rounded px-4 w-full bg-gray-50"  placeholder="Enter your animal types.." />
                  </div>
                  <div className="md:col-span-5">
                    <label htmlFor="berat_hewan">Animal weight</label>
                    <input type="text" name="berat_hewan" id="berat_hewan" onChange={e => setHewan({...hewan, berat_hewan : e.target.value})} className="h-10 border mt-1 rounded px-4 w-full bg-gray-50"  placeholder="Enter your animal weight" />
                  </div>
                  <div className="md:col-span-5">
                    <label htmlFor="harga_hewan">Animal prices</label>
                    <input type="text" name="harga_hewan" id="harga_hewan" onChange={e => setHewan({...hewan, harga_hewan : e.target.value})} className="h-10 border mt-1 rounded px-4 w-full bg-gray-50"  placeholder="Enter your animal prices" />
                  </div>
                  <div className="md:col-span-5 text-right">
                    <div className="inline-flex items-end">
                      <button className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Submit</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
           </form>
          </div>

          <div className="bg-white rounded shadow-lg p-4 px-4 md:p-8 mb-6">
          <form class="space-y-6" action="" method="POST" onSubmit={handleSubmit3}>
          <div className="grid gap-4 gap-y-2 text-sm grid-cols-1 lg:grid-cols-3">
              <div className="text-gray-600">
                <p className="font-medium text-lg">Farm</p>
                <p>Please select your farm.</p>
              </div>
              <div className="lg:col-span-2">
                <div className="grid gap-4 gap-y-2 text-sm grid-cols-1 md:grid-cols-5">
                  <div className="md:col-span-5">    
                    <label htmlFor="id_peternakan" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Farm</label>
                    <select id="id_peternakan" onChange={e => setHewan({...hewan, id_peternakan : e.target.value})} className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                      <option selected>Choose a farm</option>
                      {peternakans!= undefined && peternakans.map(peternakan => (
                      <option value = {peternakan.id_peternakan}>{peternakan.nama_peternakan}</option>
                      ))}
                    </select>
                  </div>
                </div>
              </div>
              </div>
            <div className="grid gap-4 gap-y-2 text-sm grid-cols-1 lg:grid-cols-3">
              <div className="text-gray-600">
                <p className="font-medium text-lg">Product Details</p>
                <p>Please fill out all the fields.</p>
              </div>
              <div className="lg:col-span-2">
                <div className="grid gap-4 gap-y-2 text-sm grid-cols-1 md:grid-cols-5">
                  <div className="md:col-span-5">
                    <label htmlFor="nama_produk">Product names</label>
                    <input type="text" name="nama_produk" id="nama_produk" onChange={e => setProduk({...produk, nama_produk : e.target.value})} className="h-10 border mt-1 rounded px-4 w-full bg-gray-50"  placeholder="Enter your product namess.." />
                  </div>
                  <div className="md:col-span-5">
                    <label htmlFor="jenis_produk">Product types</label>
                    <input type="text" name="jenis_produk" id="jenis_produk" onChange={e => setProduk({...produk, nama_produk : e.target.value})} className="h-10 border mt-1 rounded px-4 w-full bg-gray-50"  placeholder="Enter your product types.." />
                  </div>
                  <div className="md:col-span-5">
                    <label htmlFor="berat_produk">Product weight</label>
                    <input type="text" name="berat_produk" id="berat_produk" onChange={e => setProduk({...produk, nama_produk : e.target.value})} className="h-10 border mt-1 rounded px-4 w-full bg-gray-50"  placeholder="Enter your product weight" />
                  </div>
                  <div className="md:col-span-5">
                    <label htmlFor="harga_produk">Product prices</label>
                    <input type="text" name="harga_produk" id="harga_produk" onChange={e => setProduk({...produk, harga_produk : e.target.value})} className="h-10 border mt-1 rounded px-4 w-full bg-gray-50"  placeholder="Enter your product prices" />
                  </div>
                  <div className="md:col-span-5 text-right">
                    <div className="inline-flex items-end">
                      <button className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Submit</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            </form>
          </div>

        </div>
      </div>
    </div>
  </div>
  
  )
}

export default Profile
