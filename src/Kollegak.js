import React from 'react';
import Munkatarsaink from './Munkatarsaink';
import './Munkatarsak.css';

const Munkatarsak = () => {
  const munkatarsak = [
  ];
  console.log("Munkatársak tömb:", munkatarsak); // Nézd meg, hogy tényleg van-e adat

  return (
    <div className="employee-cards-container">
      {munkatarsak.map((munkatars, index) => (
        <Munkatarsaink key={index} {...munkatars} />
      ))}
    </div>
  );
};

export default Munkatarsak;
