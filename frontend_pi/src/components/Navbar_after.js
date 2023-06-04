import React, {useState} from 'react'
// import pet from '../img/pet.png'
import farmbarn from '../img/farmbarn.png'

function Navbar2() {

    const handleLogout = () => {
        localStorage.removeItem("token");
        localStorage.removeItem("user");
        window.location.href = "/";
    };

  return (

<nav class="bg-white dark:bg-gray-900 fixed w-full z-20 top-0 left-0 border-b border-gray-200 dark:border-gray-600 sticky top-0 z-50">

<div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
  <a href="/" class="flex items-center">
      <img src={farmbarn} class="h-9 mr-3" alt="Pet Logo" />
      <span class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white">PeternaKu</span>
  </a>
  <button data-collapse-toggle="navbar-default" type="button" class="inline-flex items-center p-2 ml-3 text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="navbar-default" aria-expanded="false">
    <span class="sr-only">Open main menu</span>
    <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"></path></svg>
  </button>
  <div class="hidden w-full md:block md:w-auto" id="navbar-default">
    <ul class="font-medium flex flex-col p-4 md:p-0 mt-4 border border-gray-100 rounded-lg bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
      <li>
        <a href="/" class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 md:dark:hover:text-blue-500 dark:text-white dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700" aria-current="page">Home</a>
      </li>
       <li>
        <a href="/peternakan" class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Peternakan</a>
      </li> 
      <li>
        <a href="/hewan" class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Hewan</a>
      </li> 
      <li>
        <a href="/produk" class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Produk</a>
      </li> 
      <li>
        <a href="/" onClick={handleLogout} class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Logout</a>
      </li>
     </ul>
   </div>
             
</div>
</nav>




    // <div class="fixed top-0 left-0 w-full z-50 bg-white border-b backdrop-blur-lg bg-opacity-80">
    //     <div class="mx-auto max-w-7xl px-6 sm:px-6 lg:px-8 ">
    //         <div class="relative flex h-16 justify-between">
    //             <div class="flex flex-1 items-stretch justify-start">
    //                 <a class="flex flex-shrink-0 items-center" href="/">
    //                     <img class="block h-12 w-auto" src="" />
    //                     <p class="text-orange-500 hover:text-emerald-400 text-lg font-medium">PeternaKu</p>
    //                 </a>
    //             </div>
    //             <div class="flex-shrink-0 flex px-2 py-3 items-center space-x-8">
    //                 <a class="text-gray-700 hover:text-indigo-700 text-sm font-medium" href="/search">Search</a>
    //                 <a class="text-gray-700 hover:text-indigo-700 text-sm font-medium" href="/provinsi">Provinsi</a>
    //                 <a class="text-gray-700 hover:text-indigo-700 text-sm font-medium" href="/peternakan">Peternakan</a>
    //                 <a class="text-gray-700 hover:text-indigo-700 text-sm font-medium" href="/hewan">Hewan</a>
    //                 <a class="text-gray-800 bg-indigo-100 hover:bg-indigo-200 inline-flex items-center justify-center px-3 py-2 border border-transparent text-sm font-medium rounded-md shadow-sm "
    //                     onClick={handleLogout}>Logout
    //                 </a>
    //             </div>
    //         </div>
    //     </div>
    // </div>

  )
}

export default Navbar2
