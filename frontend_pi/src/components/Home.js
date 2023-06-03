import React, { useState, useEffect} from "react";
import {
  Chart as ChartJS,
  CategoryScale,
  LinearScale,
  BarElement,
  Title,
  Tooltip,
  Legend,
} from 'chart.js';
import { Bar } from 'react-chartjs-2';
import iconpet from '../img/iconpet.png';
import iconpet2 from '../img/iconpet2.png';
import iconpet3 from '../img/iconpet3.png';
import iconpet4 from '../img/iconpet4.png';

ChartJS.register(
  CategoryScale,
  LinearScale,
  BarElement,
  Title,
  Tooltip,
  Legend
);

const options = {
  indexAxis: 'x',
  elements: {
    bar: {
      borderWidth: 2,
    },
  },
  responsive: true,
  plugins: {
    legend: {
      position: 'right',
    },
    title: {
      display: true,
      text: 'Jumlah Hewan',
    },
  },
};

export default function Home() {
  const [search, setSearch] =  useState('');
  const [diagram, setDiagram] = useState({
    labels:['jumlah hewan per provinsi'],
    datasets: [
      {
        label: 'Sapi',
        data:[],
        borderColor: 'rgb(250,128,114)',
        backgroundColor: 'rgba(250,128,114,1.000)',
      },
      {
        label: 'Ayam',
        data:[],
        borderColor: 'rgb(255,99,71)',
        backgroundColor: 'rgba(255,99,71,1.000)',
      },
      {
        label: 'Ikan',
        data:[],
        borderColor: 'rgb(205,92,92)',
        backgroundColor: 'rgba(205,92,92,1.000)',
      },
      {
        label: 'Kambing',
        data:[],
        borderColor: 'rgb(220,20,60)',
        backgroundColor: 'rgba(220,20,60,1.000)',
      },
    ],
  });

    const fetchData= async search => {
        const url = 'http://localhost:8000/api/hit_hewan_in_pro/' + search
        const labelSet = []
        const dataSet1 = [];
        const dataSet2 = [];
        const dataSet3 = [];
        const dataSet4 = [];
      await fetch(url).then((data)=> {
          console.log("Api data", data)
          const response = data.json();
          return response
      }).then((response) => {
          console.log("response", response)
          dataSet1.push(response.sapi);
          dataSet2.push(response.ayam);
          dataSet3.push(response.ikan);
          dataSet4.push(response.kambing);

         setDiagram({
             labels:['jumlah hewan'],
             datasets: [
               {
                 label: 'Sapi',
                 data:dataSet1,
                 borderColor: 'rgb(250,128,114)',
                 backgroundColor: 'rgba(250,128,114,1.000)',
               },
               {
                 label: 'Ayam',
                 data:dataSet2,
                 borderColor: 'rgb(255,99,71)',
                 backgroundColor: 'rgba(255,99,71,1.000)',
               },
               {
                label: 'Ikan',
                data:dataSet3,
                borderColor: 'rgb(205,92,92)',
                backgroundColor: 'rgba(205,92,92,1.000)',
              },
              {
                label: 'Kambing',
                data:dataSet4,
                borderColor: 'rgb(220,20,60)',
                backgroundColor: 'rgba(220,20,60,1.000)',
              },
             ],
           })
         console.log("arrData", dataSet1, dataSet2, dataSet3, dataSet4)
      }).catch(e => {
             console.log("error", e)
         })
     }

const submitHandler = e => {
  e.preventDefault();
  fetchData(search);
};

  return (
<>
 <section class="bg-center bg-no-repeat bg-[url('https://image.winudf.com/v2/image1/Y29tLmFwcDNkd2FsbHBhcGVyaGQuY293d2FsbHBhcGVyX3NjcmVlbl8wXzE1NjcwMjQ4MTBfMDUy/screen-0.jpg?h=710&fakeurl=1&type=.jpg')] bg-cover bg-gray-400 bg-blend-multiply">
    <div class="px-4 mx-auto max-w-screen-xl text-center py-24 lg:py-56">
        <h1 class="mb-4 text-4xl font-extrabold tracking-tight leading-none text-white md:text-5xl lg:text-6xl">Find the farm you want to search with us</h1>
        <p class="mb-8 text-lg font-normal text-gray-300 lg:text-xl sm:px-16 lg:px-48">Here at PeternaKu we focus on finding livestock and products from livestock in Indonesia to encourage economic growth.</p>
        <div class="flex flex-col space-y-4 sm:flex-row sm:justify-center sm:space-y-0 sm:space-x-4">
          <a href="/search" class="inline-flex justify-center items-center py-3 px-5 text-base font-medium text-center text-white rounded-lg backdrop-blur-sm bg-white/30 hover:bg-indigo-500 font-semibold hover:text-white py-2 px-4 hover:border-transparent rounded">
              Search
              <svg aria-hidden="true" class="ml-2 -mr-1 w-4 h-4" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
          </a> 
        </div>
    </div>
</section>  


<section class="m-4 md:m-8 dark:bg-gray-800 dark:text-gray-100 ">
  <div class="p-8">
      <div class="flex felx-col items-center justify-center">
        <span
          class="rounded-full bg-indigo-500 px-2 py-1 text-white uppercase text-sm"
        >
          Feature
        </span>
      </div>
      <h1 class="text-4xl font-medium text-gray-700 text-center mt-6">
        What do we provide?
      </h1>
      <p class="text-center mt-6 text-lg font-light text-gray-500">
      The search engine that we provide displays some information on a farm.
      </p>
  </div>

  <div class="flex items-center justify-center">
    <div class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4">
          {/* 1 card */}
          <div class="relative bg-white py-6 px-6 rounded-3xl w-64 my-4 shadow-xl">
            <div class=" text-white flex items-center absolute rounded-full py-4 px-4 shadow-xl bg-pink-300 left-4 -top-6">
                {/* img */}
                <img src={iconpet} class="h-9 mr-0" alt="Icon Pet"/>
            </div>
              <div class="mt-12">
                  <p class="text-xl font-semibold my-2">Farm</p>
                  <div class="flex space-x-2 text-gray-400 text-sm">
                      <p>Displays the name and location of the farm you want to search by province.</p> 
                  </div>
              </div>
          </div>
        

          {/* 2 card */}
          <div class="relative bg-white py-6 px-6 rounded-3xl w-64 my-4 shadow-xl">
            <div class=" text-white flex items-center absolute rounded-full py-4 px-4 shadow-xl bg-green-300 left-4 -top-6">
                {/* img */}
                <img src={iconpet2} class="h-9 mr-0" alt="Icon Pet"/>
            </div>
              <div class="mt-12">
                  <p class="text-xl font-semibold my-2">Livestock</p>
                  <div class="flex space-x-2 text-gray-400 text-sm">
                      <p>Displays livestock equipped with weights and prices from each selected farm.</p> 
                  </div>
              </div>
          </div>

          {/* 3 card */}
          <div class="relative bg-white py-6 px-6 rounded-3xl w-64 my-4 shadow-xl">
            <div class=" text-white flex items-center absolute rounded-full py-4 px-4 shadow-xl bg-blue-300 left-4 -top-6">
                {/* img */}
                <img src={iconpet3} class="h-9 mr-0" alt="Icon Pet"/>
            </div>
            <div class="mt-12">
                <p class="text-xl font-semibold my-2">Products</p>
                <div class="flex space-x-2 text-gray-400 text-sm">
                    <p>Displays the types of products available along with weights and prices.</p> 
                </div>
            </div>
          </div>

          {/* 4 card */}
          <div class="relative bg-white py-6 px-6 rounded-3xl w-64 my-4 shadow-xl">
            <div class=" text-white flex items-center absolute rounded-full py-4 px-4 shadow-xl bg-purple-300 left-4 -top-6">
                {/* img */}
                <img src={iconpet4} class="h-9 mr-0" alt="Icon Pet"/>
            </div>
            <div class="mt-12">
                <p class="text-xl font-semibold my-2">Diagrams</p>
                <div class="flex space-x-2 text-gray-400 text-sm">
                    <p>Showed a diagram of the number of animals per province.</p> 
                </div>
            </div>
          </div>
      </div>
  </div>
</section>


<section class="m-4 md:m-8 dark:bg-gray-800 dark:text-gray-100">
  <div class="p-8">
    <div class="flex felx-col items-center justify-center">
      <span
        class="rounded-full bg-indigo-500 px-2 py-1 text-white uppercase text-sm"
      >
        Diagrams
      </span>
    </div>
  </div>
      
  <div className="container max-w-screen-lg mx-auto">
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

      <div class="pt-5">
        <div class="bg-white  rounded-lg shadow relative m-0">
          <div class="flex items-start justify-between p-5 border-b rounded-t">

          <Bar
          data={diagram}
          options={{
          responsive: true, // Mengaktifkan responsivitas chart
          scales: {
            x: {
                barThickness: 'flex', // Mengatur lebar batang bar menjadi fleksibel
                },
              },
            }}
          />
          </div>
        </div>
      </div>
    </div>
</section>

</>
  )
}