import React, { useState, useEffect } from 'react';

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

export default HewansPage;
