import React from 'react'

export default function Peternakan({peternakan}){
  return(
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

    </div>
  );
}