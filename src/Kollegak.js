import React from 'react';
import './App.css';

export default function Kollegak({ nev, szerep, kepSrc }) {
    return (

            <div className="col-md-4">
            <div className="card myCard mb-3">
                <div id="carousel-0" className="carousel slide" data-bs-ride="carousel">
                    <div className="carousel-inner">
                        
                                    <div className="carousel-item active">
                                        <img src={kepSrc} className="d-block w-100" alt={`Kép ${nev}`}/>
                                    </div>
                                
                    </div>
                    
                </div>
                <div className="card-body">
                    <h4>{nev}</h4>
                    <p>{szerep}</p>
                    <button className="btn btn-danger delete-btn" data-index="0">Törlés</button>
                </div>
            </div>
          </div>
    );
  }
