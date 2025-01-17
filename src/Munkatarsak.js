import React from 'react'
import Kollegak from './Kollegak';
import './App.css';

export default function Munkatarsak() {
    const munkatarsak = [
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
      <div className="container">
        <div className="row justify-content-center">
          {munkatarsak.map((munkatars, index) => (
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
  }

  