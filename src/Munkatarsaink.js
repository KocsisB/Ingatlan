import React from 'react';
import './Munkatarsak.css';


const Munkatarsaink = ({ name, position, description, email, phone, linkedin, hobbies, image }) => {
  return (
    <div className="employee-card">
      <div className="employee-image">
        <img src={image} alt={name} />
      </div>
      <div className="employee-info">
        <h2>{name}</h2>
        <h3>{position}</h3>
        <p>{description}</p>
        <div className="employee-contacts">
          <p><strong>E-mail :</strong> {email}</p>
          <p><strong>Telefonszám:</strong> {phone}</p>
          <p><strong>LinkedIn:</strong> <a href={linkedin} target="_blank" rel="noopener noreferrer">{linkedin}</a></p>
          <p><strong>Hobbi:</strong> {hobbies}</p>
        </div>
      </div>
    </div>
  );
};


export default Munkatarsaink;