import React, { useEffect, useState } from "react";
import axios from "axios";
import { data } from "react-router-dom";
import "./Eladohaz.css";

const PropertySearch = () => {
  const [location, setLocation] = useState("");
  const [price, setPrice] = useState("");
  const [rooms, setRooms] = useState("");
  const [condition, setCondition] = useState("");
  const [minSize, setMinSize] = useState("");

  const [properties, setProperties] = useState([]);
  const [filteredProperties, setFilteredProperties] = useState([]);
  const [owners, setOwners] = useState([]);
  const [selectedProperty, setSelectedProperty] = useState(null);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchProperties = async () => {
      try {
        const response = await fetch("http://192.168.182.11:5149/api/Ingatlanok");
        
        if (!response.ok) {
          setError(`API hiba: ${response.status}`);
          return;
        }
        
        const data = await response.json();
        console.log("Properties fetched");
        setProperties(data);
        setFilteredProperties(data);
      } catch (error) {
        setError("Hálózati vagy fetch hiba: " + error.message);
      }
    };

    const fetchOwners = async () => {
      try {
        const response = await fetch("http://192.168.182.11:5149/api/Tulajdonos");
        if (!response.ok) {
          setError(`Tulajdonos API hiba: ${response.status}`);
          return;
        }
        const data = await response.json();
        setOwners(data);
      } catch (error) {
        setError("Hálózati vagy fetch hiba a tulajdonosok lekérésekor: " + error.message);
      }
    };

    fetchProperties();
    fetchOwners();
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

  const openModal = (property) => {
    const randomOwner = owners[Math.floor(Math.random() * owners.length)];
    console.log("Selected Property:", property); // Ellenőrizd, hogy a property értéke megfelelő-e
    console.log("Random Owner:", randomOwner); // Ellenőrizd, hogy a tulajdonos értéke megfelelő-e
    setSelectedProperty({ ...property, owner: randomOwner });
  };

  const closeModal = () => {
    setSelectedProperty(null);
  };

  const handleDelete = (id) => {
    if (window.confirm("Biztosan törölni szeretnéd ezt az ingatlant?")) {
      axios
        .delete(`http://192.168.182.11:5149/api/Ingatlanok/?id=${id}`)
        .then((res) => {
          console.log(res);
          alert("Sikeres törlés!");
          // A törlés után frissítjük az ingatlanok listáját
          const filtered = filteredProperties.filter((property) => property.id !== id);
          setFilteredProperties(filtered);
          setProperties(filtered);  // Ha az alap listát is szeretnéd frissíteni
        })
        .catch((error) => {
          console.error(error);
          alert("Sikertelen törlés!");
        });
    }
  };

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

        <button type="submit" className="search-button">
          Keresés
        </button>
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
                <button className="card-button" onClick={() => openModal(property)}>
                  Több
                </button>

                <button className="card-button" onClick={() => handleDelete(property.id)}>
                  Törlés
                </button>
              </div>
            </div>
          ))
        ) : (
          <p className="no-results-sell">Nincs találat a megadott keresési feltételekre.</p>
        )}
      </div>

      {/* Modal */}
      {selectedProperty && (
        <div className="modal-show">
          <div className="modal-content">
            <span className="close" onClick={closeModal}>
              &times;
            </span>
            <h2>{selectedProperty.cim}</h2>
            <p>Város: {selectedProperty.varos}</p>
            <p>Állapot: {selectedProperty.allapot}</p>
            <p>Ár: {selectedProperty.ar.toLocaleString()} Ft</p>
            <p>Alapterület: {selectedProperty.alapterulet} m²</p>
            <p>Szobák: {selectedProperty.szobakSzama}</p>
            <h3>Tulajdonos</h3>
            {selectedProperty.owner ? (
              <>
                <p>Neve: {selectedProperty.owner.nev}</p>
                <p>Email: {selectedProperty.owner.email}</p>
                <p>Telefonszám: {selectedProperty.owner.telefon}</p>
              </>
            ) : (
              <p>Nincs elérhető tulajdonos adat.</p>
            )}
          </div>
        </div>
      )}
    </div>
  );
};

export default PropertySearch;
