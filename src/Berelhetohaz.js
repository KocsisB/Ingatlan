import React, { useEffect, useState } from 'react';
import './Berelhetohaz.css';

const PropertyCard = () => {
  const [properties, setProperties] = useState([]);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchProperties = async () => {
      try {
        const response = await fetch('https://localhost:7166/api/Ingatlanok');
        if (!response.ok) {
          setError(`API hiba: ${response.status}`);
          return;
        }

        const data = await response.json();
        setProperties(data);
      } catch (error) {
        setError('Hálózati vagy fetch hiba: ' + error.message);
      }
    };

    fetchProperties();
  }, []);

  if (error) {
    return <div className="error">Hiba történt: {error}</div>;
  }

  return (
    <div className="container">
      {properties.map((property) => (
        <div className="card" key={property.id}>
          <img src={property.kep_url} alt="Ingatlan" className="card-image" />
          <div className="card-content">
            <h2 className="card-title">{property.cim}</h2>
            <p className="card-description">Város: {property.varos}</p>
            <p className="card-description">{property.allapot}</p>
            <p className="card-description">Ár: {property.ar} Ft</p>
            <div className="card-footer">
              <span>Alapterület: {property.alapterulet} m²</span>
              <span>Szobák: {property.szobak_szama}</span>
            </div>
            <button className="card-button">Ház bérlése</button>
          </div>
        </div>
      ))}
    </div>
  );
};

export default PropertyCard;
