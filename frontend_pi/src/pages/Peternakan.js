import { useState, useEffect} from "react";
import axios from "axios";
import Peternakan from "./components/Peternakan";


function Datapeternakan() {
//   const [peternakans, setPeternakans] = useState(null);
//   useEffect(function() {
//     axios.get("http://localhost:8000/api/peternakan")
//     .then(function(response){
//       const peternakans = response.data.peternakan;
//       setPeternakans(peternakans);
//     });
//   }, []);

  const baseUrl = 'http://localhost:8000';


// Passing configuration object to axios
const fetchDatapeternakan = async () => {
  const configurationObject = {
    method: 'get',
    url: `${baseUrl}/api/peternakan`,
  };
  const response = await axios(configurationObject);
  console.log(response.data.peternakan);
};

// Invoking get method to perform a GET request
const fetchDatapeternakan = async () => {
  const url = `${baseUrl}/api/peternakan`;
  const response = await axios.get(url);
  console.log(response.data.peternakan);
};

  return (
      <div className="container-fluid card-container d-flex justify-content-center align-items-center gap-4 flex-wrap">
        {
          peternakans && peternakans.map(peternakan =>      
          <div className="card col-3 shadow p-3">
          <div>
            <strong>Alamat : </strong>{peternakan.alamat_peternakan}
          </div>
          <div>
            <strong>Nama Peternakan : </strong>{peternakan.nama_peternakan}
          </div>
          <div>
            <strong>No. Telpon : </strong>{peternakan.no_telp}
          </div>
        </div>)
        }
      </div>
  );
 
}
export default Datapeternakan;
