import React, { useState, useEffect } from 'react';
import { BrowserRouter as Router, Switch, Route, Link } from 'react-router-dom';

function LandingPage() {
  return (
    <div>
      <h1>Selamat Datang di Peternakan Search Engine</h1>
      <p>Silakan pilih halaman yang ingin Anda lihat:</p>
      <ul>
        <li>
          <Link to="/peternakans">Halaman Peternakan</Link>
        </li>
        <li>
          <Link to="/hewans">Halaman Hewan</Link>
        </li>
        <li>
          <Link to="/produks">Halaman Produk</Link>
        </li>
        <li>
          <Link to="/provinsis">Halaman Provinsi</Link>
        </li>
      </ul>
    </div>
  );
}


function PeternakansPage() {
    const [peternakans, setPeternakans] = useState([]);

    useEffect(() => {
      fetchPeternakans();
    }, []);
  
    const fetchPeternakans = async () => {
      try {
        const response = await fetch('http://localhost:8000/peternakan');
        const data = await response.json();
        setPeternakans(data);
      } catch (error) {
        console.log(error);
      }
    };
  
    return (
      <div>
        <h2>Halaman Peternakan</h2>
        <table>
          <thead>
            <tr>
              <th>Provinsi Peternakan</th>
              <th>Alamat Peternakan</th>
              <th>Nama Peternakan</th>
              <th>No. Telepon</th>
            </tr>
          </thead>
          <tbody>
            {peternakans.map((peternakan) => (
              <tr key={peternakan.id}>
                <td>{peternakan.id_provinsi}</td>
                <td>{peternakan.alamat_peternakan}</td>
                <td>{peternakan.nama_peternakan}</td>
                <td>{peternakan.no_telp}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    );
  }
  

function HewansPage() {
    const [hewans, setHewans] = useState([]);

    useEffect(() => {
      fetchHewans();
    }, []);
  
    const fetchHewans = async () => {
      try {
        const response = await fetch('API_ENDPOINT/hewans');
        const data = await response.json();
        setHewans(data);
      } catch (error) {
        console.log(error);
      }
    };
  
    return (
      <div>
        <h2>Halaman Hewan</h2>
        <table>
          <thead>
            <tr>
              <th>Nama Hewan</th>
              <th>Jenis</th>
              <th>Usia</th>
            </tr>
          </thead>
          <tbody>
            {hewans.map((hewan) => (
              <tr key={hewan.id}>
                <td>{hewan.name}</td>
                <td>{hewan.type}</td>
                <td>{hewan.age}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    );
  }
function ProduksPage() {
    const [produks, setProduks] = useState([]);

    useEffect(() => {
      fetchProduks();
    }, []);
  
    const fetchProduks = async () => {
      try {
        const response = await fetch('API_ENDPOINT/produks');
        const data = await response.json();
        setProduks(data);
      } catch (error) {
        console.log(error);
      }
    };
  
    return (
      <div>
        <h2>Halaman Produk</h2>
        <table>
          <thead>
            <tr>
              <th>Nama Produk</th>
              <th>Harga</th>
              <th>Kategori</th>
            </tr>
          </thead>
          <tbody>
            {produks.map((produk) => (
              <tr key={produk.id}>
                <td>{produk.name}</td>
                <td>{produk.price}</td>
                <td>{produk.category}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    );
  }
  
function ProvinsisPage() {
    const [provinsis, setProvinsis] = useState([]);

    useEffect(() => {
      fetchProvinsis();
    }, []);
  
    const fetchProvinsis = async () => {
      try {
        const response = await fetch('API_ENDPOINT/provinsis');
        const data = await response.json();
        setProvinsis(data);
      } catch (error) {
        console.log(error);
      }
    };
  
    return (
      <div>
        <h2>Halaman Provinsi</h2>
        <table>
          <thead>
            <tr>
              <th>Nama Provinsi</th>
              <th>Populasi</th>
              <th>Ibukota</th>
            </tr>
          </thead>
          <tbody>
            {provinsis.map((provinsi) => (
              <tr key={provinsi.id}>
                <td>{provinsi.name}</td>
                <td>{provinsi.population}</td>
                <td>{provinsi.capital}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    );
  }
  
function App() {
  return (
    <Router>
      <div>
        <nav>
          <ul>
            <li>
              <Link to="/">Beranda</Link>
            </li>
          </ul>
        </nav>

        <Switch>
          <Route path="/peternakans">
            <PeternakansPage />
          </Route>
          <Route path="/hewans">
            <HewansPage />
          </Route>
          <Route path="/produks">
            <ProduksPage />
          </Route>
          <Route path="/provinsis">
            <ProvinsisPage />
          </Route>
          <Route path="/">
            <LandingPage />
          </Route>
        </Switch>
      </div>
    </Router>
  );
}

export default App;
