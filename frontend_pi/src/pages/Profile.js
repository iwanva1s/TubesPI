import React, { useState, useEffect} from "react";
import swal from 'sweetalert';

function Profile() {
  const [mounted, setMounted] = useState(false);
  const [namaUser, setNamaUser] = useState();

  // fungsi untuk mengambil data user
  useEffect(() => {
    if (!mounted) {
        setMounted(true);
    }
    else {
        // getData();
        setNamaUser(localStorage.getItem('name'));
    }
}, [mounted]);

  return (
    <>
    
{/* component  */}
<div class="min-h-screen p-6 bg-gray-100 flex items-center justify-center">
  <div class="container max-w-screen-lg mx-auto">
    <div>
      <h2 class="font-semibold text-xl text-gray-600">Welcome {namaUser}</h2>
      <p class="text-gray-500 mb-6">Register your farm now!</p>


      <div class="bg-white rounded shadow-lg p-4 px-4 md:p-8 mb-6">
        <div class="grid gap-4 gap-y-2 text-sm grid-cols-1 lg:grid-cols-3">

        <div class="text-gray-600">
            <p class="font-medium text-lg">Province</p>
            <p>Please select your province.</p>
          </div>

          <div class="lg:col-span-2">
            <div class="grid gap-4 gap-y-2 text-sm grid-cols-1 md:grid-cols-5">
              <div class="md:col-span-5">    
              <label for="countries_disabled" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Province</label>
              <select disabled id="id_peternakan" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                <option selected>Choose a province</option>
                <option value="US">United States</option>
                <option value="CA">Canada</option>
                <option value="FR">France</option>
                <option value="DE">Germany</option>
              </select>
              </div>
            </div>
          </div>

          <div class="text-gray-600">
            <p class="font-medium text-lg">Farm Details</p>
            <p>Please fill out all the fields.</p>
          </div>

          <div class="lg:col-span-2">
            <div class="grid gap-4 gap-y-2 text-sm grid-cols-1 md:grid-cols-5">
              <div class="md:col-span-5">
                <label for="alamat_peternakan">Farm address</label>
                <input type="text" name="alamat_peternakan" id="alamat_peternakan" class="h-10 border mt-1 rounded px-4 w-full bg-gray-50" value="" placeholder="Enter your farm address.." />
              </div>

              <div class="md:col-span-5">
                <label for="nama_peternakan">The farm name</label>
                <input type="text" name="nama_peternakan" id="nama_peternakan" class="h-10 border mt-1 rounded px-4 w-full bg-gray-50" value="" placeholder="Enter your farm name.." />
              </div>

              <div class="md:col-span-5">
                <label for="no_telp">Phone number</label>
                <input type="text" name="no_telp" id="no_telp" class="h-10 border mt-1 rounded px-4 w-full bg-gray-50" value="" placeholder="Enter your phone number.." />
              </div>
              <div class="md:col-span-5 text-right">
                <div class="inline-flex items-end">
                  <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Submit</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="bg-white rounded shadow-lg p-4 px-4 md:p-8 mb-6">
        <div class="grid gap-4 gap-y-2 text-sm grid-cols-1 lg:grid-cols-3">
          <div class="text-gray-600">
            <p class="font-medium text-lg">Live account Details</p>
            <p>Please fill out all the fields.</p>
          </div>

          <div class="lg:col-span-2">
            <div class="grid gap-4 gap-y-2 text-sm grid-cols-1 md:grid-cols-5">
              <div class="md:col-span-5">
                <label for="nama_hewan">Animal names</label>
                <input type="text" name="nama_hewan" id="nama_hewan" class="h-10 border mt-1 rounded px-4 w-full bg-gray-50" value="" placeholder="Enter your animal names.."  />
              </div>

              <div class="md:col-span-5">
                <label for="jenis_hewan">Animal types</label>
                <input type="text" name="jenis_hewan" id="jenis_hewan" class="h-10 border mt-1 rounded px-4 w-full bg-gray-50" value="" placeholder="Enter your animal types.." />
              </div>

              <div class="md:col-span-5">
                <label for="berat_hewan">Animal weight</label>
                <input type="text" name="berat_hewan" id="berat_hewan" class="h-10 border mt-1 rounded px-4 w-full bg-gray-50" value="" placeholder="Enter your animal weight" />
              </div>

              <div class="md:col-span-5">
                <label for="harga_hewan">Animal prices</label>
                <input type="text" name="harga_hewan" id="harga_hewan" class="h-10 border mt-1 rounded px-4 w-full bg-gray-50" value="" placeholder="Enter your animal prices" />
              </div>

             
              <div class="md:col-span-5 text-right">
                <div class="inline-flex items-end">
                  <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Submit</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

    <div class="bg-white rounded shadow-lg p-4 px-4 md:p-8 mb-6">
        <div class="grid gap-4 gap-y-2 text-sm grid-cols-1 lg:grid-cols-3">
          <div class="text-gray-600">
            <p class="font-medium text-lg">Product account Details</p>
            <p>Please fill out all the fields.</p>
          </div>

          <div class="lg:col-span-2">
            <div class="grid gap-4 gap-y-2 text-sm grid-cols-1 md:grid-cols-5">
              <div class="md:col-span-5">
                <label for="nama_produk">Product names</label>
                <input type="text" name="nama_produk" id="nama_produk" class="h-10 border mt-1 rounded px-4 w-full bg-gray-50" value="" placeholder="Enter your product namess.." />
              </div>

              <div class="md:col-span-5">
                <label for="jenis_produk">Product types</label>
                <input type="text" name="jenis_produk" id="jenis_produk" class="h-10 border mt-1 rounded px-4 w-full bg-gray-50" value="" placeholder="Enter your product types.." />
              </div>

              <div class="md:col-span-5">
                <label for="berat_produk">Product weight</label>
                <input type="text" name="berat_produk" id="berat_produk" class="h-10 border mt-1 rounded px-4 w-full bg-gray-50" value="" placeholder="Enter your product weight" />
              </div>

              <div class="md:col-span-5">
                <label for="harga_produk">Product prices</label>
                <input type="text" name="harga_produk" id="harga_produk" class="h-10 border mt-1 rounded px-4 w-full bg-gray-50" value="" placeholder="Enter your product prices" />
              </div>

             
              <div class="md:col-span-5 text-right">
                <div class="inline-flex items-end">
                  <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Submit</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>

    <a href="https://www.buymeacoffee.com/dgauderman" target="_blank" class="md:absolute bottom-0 right-0 p-4 float-right">
      <img src="https://www.buymeacoffee.com/assets/img/guidelines/logo-mark-3.svg" alt="Buy Me A Coffee" class="transition-all rounded-full w-14 -rotate-45 hover:shadow-sm shadow-lg ring hover:ring-4 ring-white"/>
    </a>
  </div>
</div>
    </>
  )
}

export default Profile
