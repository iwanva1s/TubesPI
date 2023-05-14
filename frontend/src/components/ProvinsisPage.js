import React, { useState, useEffect } from 'react';

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

export default ProvinsisPage;
