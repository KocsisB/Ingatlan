import React, { useState } from "react";
import "./Eladohaz.css";

const PropertySearch = () => {
  const [location, setLocation] = useState("");
  const [price, setPrice] = useState("");
  const [rooms, setRooms] = useState("");

  const handleSearch = (e) => {
    e.preventDefault();
    console.log("Keresés indítása:", { location, price, rooms });
    alert(`Keresés: Hely: ${location}, Ár: ${price}, Szobák: ${rooms}`);
  };

  return (
    <div className="property-search-container">
      <h2 className="search-title">Találja meg álmai otthonát!</h2>
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
    </div>
  );
};

export default PropertySearch;
