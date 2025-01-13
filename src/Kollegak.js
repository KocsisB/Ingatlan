import React from 'react'
import Fooldal from './Fooldal';
import Navbar from './Navbar';


export default function Kollegak({ nev, szerep, kepSrc }) {
    return (
      <div className="col-md-4">
        <div className="card">
          <img src={kepSrc} className="card-img-top" alt={`Kép ${nev}`} />
          <div className="card-body">
            <h5 className="card-title">{nev}</h5>
            <p className="card-text">{szerep}</p>
          </div>
        </div>
      </div>
    );
    <Navbar/>
  }
