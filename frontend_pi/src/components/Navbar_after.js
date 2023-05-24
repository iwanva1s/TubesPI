import React, {useState} from 'react'

function Navbar2() {

    const [openLinks, setOpenLinks] = useState(false);

    const toggleNavbr = () => {
        setOpenLinks(!openLinks);
    };

    const handleLogout = () => {
        localStorage.removeItem("token");
        localStorage.removeItem("user");
        window.location.href = "/";
    };

  return (
    <div class="fixed top-0 left-0 w-full z-50 bg-white border-b backdrop-blur-lg bg-opacity-80">
        <div class="mx-auto max-w-7xl px-6 sm:px-6 lg:px-8 ">
            <div class="relative flex h-16 justify-between">
                <div class="flex flex-1 items-stretch justify-start">
                    <a class="flex flex-shrink-0 items-center" href="/">
                        <img class="block h-12 w-auto" src="" />
                        <p class="text-orange-500 hover:text-emerald-400 text-lg font-medium">PeternaKu</p>
                    </a>
                </div>
                <div class="flex-shrink-0 flex px-2 py-3 items-center space-x-8">
                    <a class="text-gray-700 hover:text-indigo-700 text-sm font-medium" href="/search">Search</a>
                    <a class="text-gray-700 hover:text-indigo-700 text-sm font-medium" href="/provinsi">Provinsi</a>
                    <a class="text-gray-700 hover:text-indigo-700 text-sm font-medium" href="/peternakan">Peternakan</a>
                    <a class="text-gray-700 hover:text-indigo-700 text-sm font-medium" href="/hewan">Hewan</a>
                    <a class="text-gray-800 bg-indigo-100 hover:bg-indigo-200 inline-flex items-center justify-center px-3 py-2 border border-transparent text-sm font-medium rounded-md shadow-sm "
                        onClick={handleLogout}>Logout
                    </a>
                </div>
            </div>
        </div>
    </div>

//     <header class="lg:px-16 px-4 bg-white flex flex-wrap items-center py-4 shadow-md">
//     <div class="flex-1 flex justify-between items-center">
//         <a href="#" class="text-xl">LivestockApp</a>
//     </div>

//     <label for="menu-toggle" class="pointer-cursor md:hidden block">
//       <svg class="fill-current text-gray-900"
//         xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20">
//         <title>menu</title>
//         <path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z"></path>
//       </svg>
//     </label>
//     <input class="hidden" type="checkbox" id="menu-toggle" />

//     <div class="hidden md:flex md:items-center md:w-auto w-full" id="menu">
//         <nav>
//             <ul class="md:flex items-center justify-between text-base text-gray-700 pt-4 md:pt-0">
//             <li><a class="md:p-4 py-3 px-0 block" href="/">Home</a></li>
//                 <li><a class="md:p-4 py-3 px-0 block" href="/search">Search</a></li>
//                 <li><a class="md:p-4 py-3 px-0 block md:mb-0 mb-2" onClick={handleLogout} >Logout</a></li>
//             </ul>
//         </nav>
//     </div>
// </header>
  )
}

export default Navbar2
