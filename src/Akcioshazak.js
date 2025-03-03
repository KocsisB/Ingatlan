import React, { useEffect, useState } from 'react'
import axios from "axios";
import "./Akcioshazak.css";
import { useNavigate } from "react-router-dom";



    const Akcioshazak = () => {
        const [location, setLocation] = useState("");
        const [price, setPrice] = useState("");
        const [rooms, setRooms] = useState("");
        const [condition, setCondition] = useState("");
        const [minSize, setMinSize] = useState("");
        
        const [properties, setProperties] = useState([]);
        const [filteredProperties, setFilteredProperties] = useState([]);
        const [owners, setOwners] = useState([]);
        const [selectedProperty, setSelectedProperty] = useState(null);
        const [error, setError] = useState(false);
        const [ownerError, setOwnerError] = useState(false);
        const [modalClosing, setModalClosing] = useState(false);
      
        useEffect(() => {
          const fetchProperties = async () => {
            setError(false);
      
            try {
              const response = await fetch("http://192.168.10.113:5149/api/Akciók");
      
              if (!response.ok) {
                setError("Hiba az adatok lekérésekor");
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
            setOwnerError(false);
      
            try {
              const response = await fetch("http://192.168.10.113:5149/api/Tulajdonos");
      
              if (!response.ok) {
                setOwnerError("Hiba az adatok lekérésekor");
                return;
              }
      
              const data = await response.json();
              setOwners(data);
            } catch (error) {
              setOwnerError("Hálózati vagy fetch hiba a tulajdonosok lekérésekor: " + error.message);
            }
          };
      
          fetchProperties();
          fetchOwners();
        }, [location, price, rooms, condition, minSize]);
      
        const handleSearch = (e) => {
          e.preventDefault();
          const filtered = properties.filter((property) => {
            return (
              (!location || property.varos.toLowerCase().includes(location.toLowerCase())) &&
              (!price || property.ar <= Math.max(0, parseInt(price))) &&
              (!rooms || property.szobakSzama >= Math.max(0, parseInt(rooms))) &&
              (!condition || property.allapot.toLowerCase().includes(condition.toLowerCase())) &&
              (!minSize || property.alapterulet >= Math.max(0, parseInt(minSize)))
            );
          });
      
          setFilteredProperties(filtered);
        };
      
        const openModal = (property) => {
          const randomOwner = owners.length > 0 ? owners[Math.floor(Math.random() * owners.length)] : null;
          console.log("Selected Property:", property); // Ellenőrizd, hogy a property értéke megfelelő-e
          console.log("Random Owner:", randomOwner); // Ellenőrizd, hogy a tulajdonos értéke megfelelő-e
          setSelectedProperty({ ...property, owner: randomOwner });
        };
      
        const closeModal = () => {
          const modalOverlay = document.querySelector(".modal-show");
          const modalContent = document.querySelector(".modal-content");
      
          modalOverlay.classList.add("closing");
          modalContent.classList.add("closing");
          setModalClosing(true);
      
          setTimeout(() => {
            setModalClosing(false);
            setSelectedProperty(null);
            modalOverlay.classList.remove("closing");
            modalContent.classList.remove("closing");
          }, 300);
        };
      
        const closeModalOnOverlay = (e) => {
          if (e.target.classList.contains("modal-show")) {
            closeModal();
          }
        };
      
        useEffect(() => {
          if (selectedProperty) {
            setModalClosing(false);
          }
        }, [selectedProperty]);
      
        const handleDelete = (id) => {
          if (window.confirm("Biztosan törölni szeretné ezt az ingatlant?")) {
            axios
              .delete(`http://192.168.10.113:5149/api/Akciók?id=${id}`)
              .then((res) => {
                console.log(res);
                alert("Sikeres törlés!");
                // A törlés után frissítjük az ingatlanok listáját
                setFilteredProperties((prev) => prev.filter((property) => property.id !== id));
                setProperties((prev) => prev.filter((property) => property.id !== id));
              })
              .catch((error) => {
                console.error(error);
                alert("Sikertelen törlés!");
              });
          }
        };
      
        const navigate = useNavigate();
      
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
                  min={0}
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
                  min={0}
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
                  min={0}
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
              { error ? (<p className="no-results-sell">{error}</p>
              ) : (
              filteredProperties.length > 0 ? (
                filteredProperties.map((property) => (
                  <div className="card" key={property.id}>
                    <img
                      src={property.kepUrl}
                      alt="Ingatlan"
                      className="card-image"
                    />
                    <div className="card-content">
                      <h2 className="card-title">{property.cim}</h2>
                      <p className="card-description">Város: {property.varos}</p>
                      <p className="card-description">Állapot: {property.allapot}</p>
                      <p className="card-description">
                        Telek mérete: {property.telekMerete}
                      </p>
                      <p className="card-description">
                        Építés vége: {property.epitesVege}
                      </p>
                      <p className="card-description-ar">
                        Régi Ár: {property.regiAr.toLocaleString()} Ft
                      </p>
                      <p className="card-description">
                       Új Ár: {property.ar.toLocaleString()} Ft
                      </p>
                      <div className="card-footer">
                        <span>Alapterület: {property.alapterulet} m²</span>
                        <span>Szobák: {property.szobakSzama}</span>
                      </div>
                      <button
                        className="card-button"
                        onClick={() => openModal(property)}
                      >
                        Több
                      </button>
      
                      <button
                        className="card-button"
                        onClick={() => handleDelete(property.id)}
                      >
                        Törlés
                      </button>
      
                      <button 
                        className="card-button"
                        onClick={() => navigate(`/hazmodositas/${property.id}`)}
                      >
                        Ház módosítása
                      </button>
                    </div>
                  </div>
                ))
              ) : (
                <p className="no-results-sell">
                  Nincs találat a megadott keresési feltételekre.
                </p>
              ))}
            </div>
      
            {/* Modal */}
            {selectedProperty && (
              <div className={`modal-show ${modalClosing ? "closing" : ""}`} onClick={closeModalOnOverlay}>
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
                    <p>{ownerError}</p>
                  )}
                </div>
              </div>
            )}
            
          </div>
        );
      };
      
export default Akcioshazak;
