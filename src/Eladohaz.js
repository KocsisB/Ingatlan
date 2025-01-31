import React, { useEffect, useState } from "react";
import "./Eladohaz.css";

const PropertySearch = () => {
  const [location, setLocation] = useState("");
  const [price, setPrice] = useState("");
  const [rooms, setRooms] = useState("");

  const handleSearch = (e) => {
    e.preventDefault();
    console.log("Keresés indítása:", { location, price, rooms });
    alert(`Keresés: Hely: ${location}, Ár: ${price} Ft, Szobák: ${rooms}`);
  };

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
    <div className="property-search-container">
      <form className="search-form" onSubmit={handleSearch}>
        <div className="form-group">
          <label htmlFor="location">Helyszín</label>
          <input
            type="text"
            id="location"
            placeholder="Város vagy környék"
            value={location}
            onChange={(e) => setLocation(e.target.value)}
          />
        </div>
        <div className="form-group">
          <label htmlFor="price">Ár (Ft-ban)</label>
          <input
            type="number"
            id="price"
            placeholder="Max ár"
            value={price}
            onChange={(e) => setPrice(e.target.value)}
          />
        </div>
        <div className="form-group">
          <label htmlFor="rooms">Szobák száma</label>
          <input
            type="number"
            id="rooms"
            placeholder="Min. szobaszám"
            value={rooms}
            onChange={(e) => setRooms(e.target.value)}
          />
        </div>
        <button type="submit" className="search-button">Keresés indítása</button>
      </form>

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
    </div>
  );
};

export default PropertySearch;
