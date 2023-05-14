import { useState, useEffect} from "react";
import axios from "axios";
import Peternakan from "./components/Peternakan"
import Navbar from "./components/Navbar"
import "./assets/css/style.css";

function App() {
  const [peternakans, setPeternakans] = useState(null);

  useEffect(function() {
    axios.get("http://localhost:8000/api/peternakan")
    .then(function(response){
      const peternakans = response.data.peternakan;
      setPeternakans(peternakans);
    });
  }, []);

  return (
    <div className="App p-3">
      <Navbar/>
      <div className="container-fluid card-container d-flex justify-content-center align-items-center gap-4 flex-wrap">
        {
          peternakans && peternakans.map(peternakan =>  <Peternakan peternakan={peternakan}/> )
        }
      </div>
    </div>
  );
 
}

export default App;
