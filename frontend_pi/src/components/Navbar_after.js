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
    <header class="lg:px-16 px-4 bg-white flex flex-wrap items-center py-4 shadow-md">
    <div class="flex-1 flex justify-between items-center">
        <a href="#" class="text-xl">LivestockApp</a>
    </div>

    <label for="menu-toggle" class="pointer-cursor md:hidden block">
      <svg class="fill-current text-gray-900"
        xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20">
        <title>menu</title>
        <path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z"></path>
      </svg>
    </label>
    <input class="hidden" type="checkbox" id="menu-toggle" />

    <div class="hidden md:flex md:items-center md:w-auto w-full" id="menu">
        <nav>
            <ul class="md:flex items-center justify-between text-base text-gray-700 pt-4 md:pt-0">
            <li><a class="md:p-4 py-3 px-0 block" href="/">Home</a></li>
                <li><a class="md:p-4 py-3 px-0 block" href="/search">Search</a></li>
                <li><a class="md:p-4 py-3 px-0 block md:mb-0 mb-2" onClick={handleLogout} >Logout</a></li>
            </ul>
        </nav>
    </div>
</header>
  )
}

export default Navbar2
