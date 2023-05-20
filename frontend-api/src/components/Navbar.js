import React from 'react'

function Navbar() {
  return (
    <div class="fixed top-0 left-0 w-full z-50 bg-slate-300 border-b backdrop-blur-lg bg-opacity-80">
    <div class="mx-auto max-w-7xl px-6 sm:px-6 lg:px-8 ">
        <div class="relative flex h-16 justify-between">
            <div class="flex flex-1 items-stretch justify-start">
                <a class="flex flex-shrink-0 items-center" href="/">
                    <img class="block h-12 w-auto" src="https://www.svgrepo.com/show/501888/donut.svg" />
                </a>
            </div>
            <div class="flex-shrink-0 flex px-2 py-3 items-center space-x-8">
                <a class="text-gray-700 hover:text-indigo-700 text-sm font-medium" href="/">Logout</a>
            </div>
        </div>
    </div>
</div>
  )
}

export default Navbar
