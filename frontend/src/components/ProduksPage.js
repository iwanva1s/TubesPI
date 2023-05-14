import React, { useState, useEffect } from 'react';

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

export default ProduksPage;
