import React, { useState, useEffect } from 'react';
import './Fooldal.css';

export default function Fooldal() {
  // Állapot változók
  const [provinces, setProvinces] = useState([]);
  const [cities, setCities] = useState([]);
  const [selectedProvince, setSelectedProvince] = useState('');
  const [selectedCity, setSelectedCity] = useState('');

  // API hívás a megyék lekérdezéséhez
  useEffect(() => {
    const fetchProvinces = async () => {
      try {
        const response = await fetch('http://localhost:511'); // A megyék lekérdezése
        const data = await response.json();
        setProvinces(data);
      } catch (error) {
        console.error('Hiba a megyék lekérdezésekor:', error);
      }
    };

    fetchProvinces();
  }, []); // Csak egyszer, amikor a komponens betöltődik

  // API hívás a városok lekérdezéséhez, amikor megváltozik a választott megye
  useEffect(() => {
    if (selectedProvince) {
      const fetchCities = async () => {
        try {
          const response = await fetch(`http://localhost:511=${selectedProvince}`); // Választott megye alapján lekérdezzük a városokat
          const data = await response.json();
          setCities(data);
        } catch (error) {
          console.error('Hiba a városok lekérdezésekor:', error);
        }
      };

      fetchCities();
    } else {
      setCities([]); // Ha nincs kiválasztott megye, ürítsük ki a városok listáját
    }
  }, [selectedProvince]);

  // Kezelők a választott megye és város állapot frissítéséhez
  const handleProvinceChange = (event) => {
    setSelectedProvince(event.target.value);
    setSelectedCity(''); // A város választást töröljük, ha megye változik
  };

  const handleCityChange = (event) => {
    setSelectedCity(event.target.value);
  };

  return (
    <div className="fooldal-container">
      <div className="filter-container">
        <h5>Szűrés:</h5>
        <div className="select-container">
          <label>Válassza ki a megyét:</label>
          <select value={selectedProvince} onChange={handleProvinceChange}>
            <option value="">-- válasszon megyét --</option>
            {provinces.map((province) => (
              <option key={province.id} value={province.id}>
                {province.name}
              </option>
            ))}
          </select>
        </div>

        {selectedProvince && (
          <div className="select-container">
            <label>Válassza ki a várost:</label>
            <select value={selectedCity} onChange={handleCityChange}>
              <option value="">-- válasszon várost --</option>
              {cities.map((city) => (
                <option key={city.id} value={city.id}>
                  {city.name}
                </option>
              ))}
            </select>
          </div>
        )}
      </div>

      {/* Főoldal tartalom */}
      <div className="card-container">
        <div className="card-body">
          <h5 className="card-title">Miért éri meg nálunk hírdetni?</h5>
          <p className="card-text">
            Hirdessenek nálunk, ha lakást szeretnének eladni, mert oldalunkon célzott közönség található, akik aktívan érdeklődnek ingatlanpiaci ajánlatok iránt. Kiemelt hirdetési lehetőségeink segítenek, hogy gyorsan és könnyen megtalálja az álom otthonát.
          </p>
        </div>
      </div>
    </div>
  );
}
