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
      text: 'Horizontal Bar Chart',
    },
  },
};

export default function Home() {
  const [search, setSearch] =  useState('');
  const [diagram, setDiagram] = useState({
    labels:['Sapi','Ayam', 'Ikan', 'Kambing'],
    datasets: [
      {
        label: 'Dataset 1',
        data:[],
        borderColor: 'rgb(255, 99, 132)',
        backgroundColor: 'rgba(25, 90, 13, 0.5)',
      },
      {
        label: 'Dataset 2',
        data:[],
        borderColor: 'rgb(53, 162, 235)',
        backgroundColor: 'rgba(53, 162, 235, 0.5)',
      },
      {
        label: 'Dataset 3',
        data:[],
        borderColor: 'rgb(123, 36, 106)',
        backgroundColor: 'rgba(13, 96, 116, 0.5)',
      },
      {
        label: 'Dataset 4',
        data:[],
        borderColor: 'rgb(155, 95, 125)',
        backgroundColor: 'rgba(155, 95, 125, 0.5)',
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
         for (const val of response) {
             dataSet1.push(val.sapi);
             dataSet2.push(val.ayam);
             dataSet3.push(val.ikan);
             dataSet4.push(val.kambing);
             // labelSet.push(val.name)
         }
         setDiagram({
             labels:['Sapi','Ayam', 'Ikan', 'Kambing'],
             datasets: [
               {
                 label: 'Sapi',
                 data:dataSet1,
                 borderColor: 'rgb(255, 99, 132)',
                 backgroundColor: 'rgba(99, 132, 0.5)',
               },
               {
                 label: 'Ayam',
                 data:dataSet2,
                 borderColor: 'rgb(53, 162, 235)',
                 backgroundColor: 'rgba(53, 235, 0.5)',
               },
               {
                label: 'Ikan',
                data:dataSet3,
                borderColor: 'rgb(123, 36, 106)',
                backgroundColor: 'rgba(36, 106, 0.5)',
              },
              {
                label: 'Kambing',
                data:dataSet4,
                borderColor: 'rgb(155, 95, 125)',
                backgroundColor: 'rgba(155, 125, 0.5)',
              },
             ],
           })
         console.log("arrData", dataSet1, dataSet2, dataSet3, dataSet4)
      }).catch(e => {
             console.log("error", e)
         })
     }
     


useEffect(() => {
  fetchData();
}, []);

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

<section class="m-4 md:m-8 dark:bg-gray-800 dark:text-gray-100">
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

<div class="grid grid-cols-1 md:grid-cols-3">
  <div class="p-8">
    <div
      class="bg-indigo-100 rounded-full w-16 h-16 flex justify-center items-center text-indigo-500 shadow-2xl"
    >
      <img src={iconpet} class="h-9 mr-0" alt="Icon Pet"/>
    </div>
    <h2 class="uppercase mt-6 text-indigo-500 font-medium mb-3">
      Farm
    </h2>
    <p class="font-light text-sm text-gray-500 mb-3">
    Displays the name and location of the farm you want to search by province.
    </p>
  </div>

  <div class="p-8">
    <div
      class="bg-green-100 rounded-full w-16 h-16 flex justify-center items-center text-green-500 shadow-2xl"
    >
      <img src={iconpet2} class="h-9 mr-0" alt="Icon Pet"/>
    </div>
    <h2 class="uppercase mt-6 text-green-500 font-medium mb-3">
      Livestock
    </h2>
    <p class="font-light text-sm text-gray-500 mb-3">
    Displays livestock equipped with weights and prices from each selected farm.
    </p>
  </div>
  <div class="p-8">
    <div
      class="bg-red-100 rounded-full w-16 h-16 flex justify-center items-center text-red-500 shadow-2xl"
    >
      <img src={iconpet3} class="h-9 mr-0" alt="Icon Pet"/>
    </div>
    <h2 class="uppercase mt-6 text-red-500 font-medium mb-3">
      Product
    </h2>
    <p class="font-light text-sm text-gray-500 mb-3">
    Displays the types of products available along with weights and prices.
    </p>
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
  {/* <Bar
        data={data}
        height={400}
        options={options}

      /> */}
      <form class="flex items-center flex-col space-y-2 sm:justify-center sm:flex-row sm:space-y-0 sm:space-x-2 ">
    <label for="simple-search" class="sr-only">Search</label>
    <div class="relative w-100">
        <div class="absolute inset-y-0 left-0 flex items-center pl-2 pointer-events-none">
            <svg aria-hidden="true" class="w-4 h-4 text-gray-500 dark:text-gray-400" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z" clip-rule="evenodd"></path></svg>
        </div>
        <input type="text" name="search" id="simple-search" onChange={e => setSearch(e.target.value)} value={search} class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-8 p-1.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Search by province" required/>
    </div>
    <button onClick={submitHandler} type="submit" class="p-1.5 ml-1 text-sm font-medium text-white bg-blue-700 rounded-lg border border-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
        <span class="sr-only">Search</span>
    </button>
</form>
{
                console.log("data", diagram)
            }
            <Bar data={diagram} options={options}/>
</section>

</>
  )
}