import React, { useEffect, useState } from "react";
import "./Eladohaz.css";

const PropertySearch = () => {
  const [location, setLocation] = useState("");
  const [price, setPrice] = useState("");
  const [rooms, setRooms] = useState("");
  const [condition, setCondition] = useState("");
  const [minSize, setMinSize] = useState("");

  const [properties, setProperties] = useState([]);
  const [filteredProperties, setFilteredProperties] = useState([]);
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
        setFilteredProperties(data);
      } catch (error) {
        setError('Hálózati vagy fetch hiba: ' + error.message);
      }
    };
    

    fetchProperties();
  }, []);

  const handleSearch = (e) => {
    e.preventDefault();
    
    const filtered = properties.filter((property) => {
      return (
        (!location || property.varos.toLowerCase().includes(location.toLowerCase())) &&
        (!price || property.ar <= parseInt(price)) &&
        (!rooms || property.szobak_szama >= parseInt(rooms)) &&
        (!condition || property.allapot.toLowerCase().includes(condition.toLowerCase())) &&
        (!minSize || property.alapterulet >= parseInt(minSize))
      );
    });
    

    setFilteredProperties(filtered);
  };
  

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
          <label htmlFor="price">Max Ár (Ft)</label>
          <input
            type="number"
            id="price"
            placeholder="Max ár"
            value={price}
            onChange={(e) => setPrice(e.target.value)}
          />
        </div>
        <div className="form-group">
          <label htmlFor="rooms">Min. szobaszám</label>
          <input
            type="number"
            id="rooms"
            placeholder="Min. szobák száma"
            value={rooms}
            onChange={(e) => setRooms(e.target.value)}
          />
        </div>
        <div className="form-group">
          <label htmlFor="condition">Állapot</label>
          <input
            type="text"
            id="condition"
            placeholder="Pl.: felújított, új építésű"
            value={condition}
            onChange={(e) => setCondition(e.target.value)}
          />
        </div>
        <div className="form-group">
          <label htmlFor="minSize">Min. alapterület (m²)</label>
          <input
            type="number"
            id="minSize"
            placeholder="m²-ben"
            value={minSize}
            onChange={(e) => setMinSize(e.target.value)}
          />
        </div>

        <button type="submit" className="search-button">Keresés</button>
      </form>

      <div className="container">
        {filteredProperties.length > 0 ? (
          filteredProperties.map((property) => (
            <div className="card" key={property.id}>
              <img src={property.kepUrl} alt="Ingatlan" className="card-image" />
              <div className="card-content">
                <h2 className="card-title">{property.cim}</h2>
                <p className="card-description">Város: {property.varos}</p>
                <p className="card-description">Állapot: {property.allapot}</p>
                <p className="card-description">Telek mérete: {property.telekMerete}</p>
                <p className="card-description">Építés vége: {property.epitesVege}</p>
                <p className="card-description">Ár: {property.ar.toLocaleString()} Ft</p>
                <div className="card-footer">
                  <span>Alapterület: {property.alapterulet} m²</span>
                  <span>Szobák: {property.szobakSzama}</span>
                </div>
                <button className="card-button">Több</button>
              </div>
            </div>
          ))
        ) : (
          <p className="no-results">Nincs találat a megadott keresési feltételekre.</p>
        )}
      </div>
    </div>
  );
};

export default PropertySearch;
