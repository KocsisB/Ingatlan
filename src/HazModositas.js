import React from 'react';
import axios from 'axios';
import { data, useNavigate, useParams } from 'react-router-dom';
import './Hazmodositas.css';

export default function Hazmodositas() {
  const navigate = useNavigate();
  const { id } = useParams();

  const handleSubmit = async (event) => {
    event.preventDefault();

    const updatedData = {
      id: Number(id),
      cim: event.target.cim.value,
      varos: event.target.varos.value,
      allapot: event.target.allapot.value,
      telekMerete: Number(event.target.telekMerete.value),
      epitesVege: Number(event.target.epitesVege.value),
      ar: Number(event.target.ar.value),
      alapterulet: Number(event.target.alapterulet.value),
      szobakSzama: Number(event.target.szobakSzama.value),
      kepUrl: event.target.kepUrl.value,
    };

    try {
      await axios.put(`https://localhost:7166/api/Ingatlanok/${id}`, updatedData, {
        headers: { 'Content-Type': 'application/json' },
      });
      alert('Sikeres módosítás!');
      navigate('/eladohazak');
    } catch (error) {
      console.error('Hiba történt a PUT kérés során:', error);
      alert('Sikertelen módosítás!');
    }
  };

  return (
    <div className="container-hirdetes">
      <h1 className="form-title">Ház módosítása</h1>
      <form onSubmit={handleSubmit} className="form-container">
        <div className="form-group">
          <label htmlFor="nev" className="form-label">Cím</label>
          <input
            type="text"
            className="formControl"
            id="nev"
            defaultValue={data?.cim}
            required
          />
        </div>
        <div className="form-group">
          <label htmlFor="varos" className="form-label">Város</label>
          <input
            type="text"
            className="formControl"
            id="varos"
            defaultValue={data?.varos}
            required
          />
        </div>
        <div className="form-group">
          <label htmlFor="allapot" className="form-label">Állapot</label>
          <input
            type="text"
            className="formControl"
            id="allapot"
            defaultValue={data?.allapot}
            required
          />
        </div>
        <div className="form-group">
          <label htmlFor="telekMerete" className="form-label">Telek Mérete</label>
          <input
            type="number"
            className="formControl"
            id="telekMerete"
            defaultValue={data?.telekMerete}
            required
          />
        </div>
        <div className="form-group">
          <label htmlFor="epitesVege" className="form-label">Építés vége</label>
          <input
            type="number"
            className="formControl"
            id="epitesVege"
            defaultValue={data?.epitesVege}
            required
          />
        </div>
        <div className="form-group">
          <label htmlFor="ar" className="form-label">Ár</label>
          <input
            type="number"
            className="formControl"
            id="ar"
            defaultValue={data?.ar}
            required
          />
        </div>
        <div className="form-group">
          <label htmlFor="alapterulet" className="form-label">Alapterület</label>
          <input
            type="number"
            className="formControl"
            id="alapterulet"
            defaultValue={data?.alapterulet}
            required
          />
        </div>
        <div className="form-group">
          <label htmlFor="szobakSzama" className="form-label">Szobák száma</label>
          <input
            type="number"
            className="formControl"
            id="szobakSzama"
            defaultValue={data?.szobakSzama}
            required
          />
        </div>
        <div className="form-group">
          <label htmlFor="kepUrl" className="form-label">Kép URL</label>
          <input
            type="text"
            className="formControl"
            id="kepUrl"
            defaultValue={data?.kepUrl}
            required
          />
        </div>
        <button type="submit" className="submit-button">Ház frissítése</button>
      </form>
    </div>
  );
}
