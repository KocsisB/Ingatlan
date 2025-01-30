import React from 'react';
import Munkatarsaink from './Munkatarsaink';
import './Munkatarsak.css';

const Munkatarsak = () => {
  const munkatarsak = [
    {
      name: "Csoma Dávid Tibor",
      position: "Marketing Menedzser",
      description: "Dávid több mint 5 éve dolgozik a marketing területén, és szenvedélyesen hisz a kreatív megoldásokban.",
      email: "david.csoma@email.com",
      phone: "+36 30 123 4567",
      linkedin: "https://linkedin.com/in/davidcsoma",
      hobbies: "Fotózás, utazás, olvasás",
      image: "https://via.placeholder.com/150"
    },
    {
      name: "Klima László",
      position: "Fejlesztő",
      description: "László szenvedélyes programozó, aki a legújabb technológiák iránt érdeklődik.",
      email: "laszlo.klima@email.com",
      phone: "+36 30 765 4321",
      linkedin: "https://linkedin.com/in/laszloklima",
      hobbies: "Játékfejlesztés, zene, sport",
      image: "https://via.placeholder.com/150"
    },
    {
      name: "Kocsis Botond",
      position: "HR Menedzser",
      description: "Botond a csapatépítés és a munkavállalói elégedettség szakértője.",
      email: "botond.kocsis@email.com",
      phone: "+36 30 987 6543",
      linkedin: "https://linkedin.com/in/botondkocsis",
      hobbies: "Olvasás, utazás, főzés",
      image: "https://via.placeholder.com/150"
    }
  ];

  console.log(munkatarsak);

  return (
    <div className="employee-cards-container">
      {munkatarsak.map((munkatars, index) => (
        <Munkatarsaink
          key={index} 
          name={munkatars.name} 
          position={munkatars.position} 
          description={munkatars.description} 
          email={munkatars.email} 
          phone={munkatars.phone} 
          linkedin={munkatars.linkedin} 
          hobbies={munkatars.hobbies} 
          image={munkatars.image} 
        />
      ))}
    </div>
  );
};

export default Munkatarsak;