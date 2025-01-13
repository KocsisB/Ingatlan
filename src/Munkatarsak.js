import React from 'react'
import Kollegak from './Kollegak';
import Fooldal from './Fooldal';
import Navbar from './Navbar';

export default function Munkatarsak() {
    const munkatarsok = [
      {
        nev: 'Csoma Dávid Tibor',
        szerep: 'Ingatlanügynök',
        kepSrc: 'https://via.placeholder.com/300',
      },
      {
        nev: 'Klima László',
        szerep: 'Ingatlanügynök',
        kepSrc: 'https://via.placeholder.com/300',
      },
      {
        nev: 'Kocsis Botond',
        szerep: 'Ingatlanügynök',
        kepSrc: 'https://via.placeholder.com/300',
      },
    ];
  
    return (
      <div className="container my-5">
        <div className="row justify-content-center">
          {munkatarsok.map((munkatars, index) => (
            <Kollegak
              key={index}
              nev={munkatars.nev}
              szerep={munkatars.szerep}
              kepSrc={munkatars.kepSrc}
            />
          ))}
        </div>
      </div>
    );
    <Navbar/>
  }
