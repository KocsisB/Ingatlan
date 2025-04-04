import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import './Hirdetes.css';
import axios from 'axios';
import { ClipLoader } from 'react-spinners';

export default function Hirdetes() {
  const [hirdetes, setHirdetes] = useState({
    cim: '',
    kep: null,
    alapterulet: null,
    szobakSzama: null,
    telekMerete: null,
    epitesVege: null,
    allapot: '',
    tipus: '',
    varos: '',
    megye: '',
    ar: null,
    berelheto: false,
    eladhato: false,
    userId: ''
  });

  const navigate = useNavigate();
  const userData = JSON.parse(localStorage.getItem("user"));

  if (!userData) {
    setTimeout(() => {
      navigate("/bejelentkezes")
    }, 3000);

    return <div className='hirdetesfeladas'>
      <p>Jelentkezzen be a funkció használathához.<br></br>
        Az oldal hamarosan átirányítja a bejelentkezési oldalra</p>
      <ClipLoader color='red' />

    </div>;
  }

  const handleInputChange = (e) => {
    const { name, value, files, type } = e.target;
    setHirdetes((prev) => ({
      ...prev,
      [name]: type === "file" ? files[0] : value
    }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();


    const formData = {
      cim: hirdetes.cim,
      alapterulet: Number(hirdetes.alapterulet),
      szobakSzama: Number(hirdetes.szobakSzama),
      telekMerete: Number(hirdetes.telekMerete),
      epitesVege: Number(hirdetes.epitesVege),
      allapot: hirdetes.allapot,
      tipus: hirdetes.tipus,
      varos: hirdetes.varos,
      megye: hirdetes.megye,
      ar: Number(hirdetes.ar),
      berelheto: Boolean(hirdetes.berelheto),
      eladható: Boolean(hirdetes.eladhato),
      kep: hirdetes.kep,
      userId: userData.id
    };
    
    console.log(formData);
    try {
      const response = await axios.post(`${process.env.REACT_APP_API_URL}/ingatlan`, formData, {
        headers: {
          "Content-Type": "multipart/form-data"
        }
      })
      
      if (response.statusText) {
        alert("A ház sikeresen hozzáadva!");


        setHirdetes({
          cim: '',
          kep: null,
          alapterulet: null,
          szobakSzama: null,
          telekMerete: null,
          epitesVege: null,
          allapot: '',
          tipus: '',
          varos: '',
          megye: '',
          ar: null,
          berelheto: false,
          eladhato: false,
          userId: ''
        });
      } else {
        throw new Error("Hiba történt a kérés során: ", response.error);
      }
    } catch (error) {
      console.error("Hiba történt a kérés során: ", error);
      alert("Hiba történt! Próbáld meg újra.");
    }
  };

  return (
    <div className="container-hirdetes">
      <h2 className="form-title">Eladó Ház Hozzáadása</h2>
      <form id="house-form" onSubmit={handleSubmit} className="form-container">
        <div className="form-group">
          <label htmlFor="haz-cim" className="form-label">
            Ház címe
          </label>
          <input
            type="text"
            name="cim"
            className="formControl"
            id="haz-cim"
            value={hirdetes.cim}
            onChange={handleInputChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="alapterulet" className="form-label">
            Alapterület (m²)
          </label>
          <input
            type="number"
            className="formControl"
            id="alapterulet"
            name="alapterulet"
            value={hirdetes.alapterulet}
            onChange={handleInputChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="szobak-szama" className="form-label">
            Szobák száma
          </label>
          <input
            type="number"
            className="formControl"
            id="szobak-szama"
            name="szobakSzama"
            value={hirdetes.szobakSzama}
            onChange={handleInputChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="telek-meret" className="form-label">
            Telek mérete (m²)
          </label>
          <input
            type="number"
            className="formControl"
            id="telek-meret"
            name="telekMerete"
            value={hirdetes.telekMerete}
            onChange={handleInputChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="epites-eve" className="form-label">
            Építés éve
          </label>
          <input
            type="number"
            className="formControl"
            id="epites-eve"
            name="epitesVege"
            value={hirdetes.epitesVege}
            onChange={handleInputChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="allapot" className="form-label">
            Állapot
          </label>
          <input
            type="text"
            className="formControl"
            id="allapot"
            name="allapot"
            value={hirdetes.allapot}
            onChange={handleInputChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="tipus" className="form-label">
            Típus
          </label>
          <input
            type="text"
            className="formControl"
            id="tipus"
            name="tipus"
            value={hirdetes.tipus}
            onChange={handleInputChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="varos" className="form-label">
            Város
          </label>
          <input
            type="text"
            className="formControl"
            id="varos"
            name="varos"
            value={hirdetes.varos}
            onChange={handleInputChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="megye" className="form-label">
            Megye
          </label>
          <input
            type="text"
            className="formControl"
            id="megye"
            name="megye"
            value={hirdetes.megye}
            onChange={handleInputChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="ar" className="form-label">
            Ár
          </label>
          <input
            type="number"
            className="formControl"
            id="ar"
            name="ar"
            value={hirdetes.ar}
            onChange={handleInputChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="haz-kepek" className="form-label">
            Képek
          </label>
          <input
            type="file"
            className="formControl"
            id="haz-kepek"
            name="kep"
            onChange={handleInputChange}
            required
          />
          <div className='checkboxes'>
            <label htmlFor="berelheto" className="form-label">
              Bérelhető:
            </label>
            <input
              type="checkbox"
              className="formControl"
              id="berelheto"
              name="berelheto"
              value={hirdetes.berelheto}
              onChange={handleInputChange}
              />
            <label htmlFor="eladhato" className="form-label">
              Eladható:
            </label>
            <input
              type="checkbox"
              className="formControl"
              id="eladhato"
              name="eladhato"
              value={hirdetes.eladhato}
              onChange={handleInputChange}
              
            />
          </div>
        </div>
        <br />
        <button type="submit" className="submit-button" value="save">
          Ház hozzáadása
        </button>
      </form>
    </div>
  );
}