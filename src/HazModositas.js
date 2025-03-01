import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { useNavigate, useParams } from 'react-router-dom';
import './Hazmodositas.css';

export default function Hazmodositas() {
  const [property, setProperty] = useState({
    cim: '',
    varos: '',
    allapot: '',
    telekMerete: '',
    epitesVege: '',
    ar: '',
    alapterulet: '',
    szobakSzama: '',
    kepUrl: ''
  });
  const navigate = useNavigate();
  const { id } = useParams();

  useEffect(() => {
    // Fetch property data when component mounts
    const fetchProperty = async () => {
      try {
        const response = await axios.get(`http://192.168.10.113:5149/api/Ingatlanok/${id}`);
        setProperty(response.data);
      } catch (error) {
        console.error("Error fetching property data:", error);
      }
    };

    fetchProperty();
  }, [id]);

  const handleUpdate = async () => {
    try {
      const updatedProperty = {
        ...property,
      };

      const response = await axios.put(`http://192.168.10.113:5149/api/Ingatlanok/${id}`, updatedProperty);
      console.log(response);
      alert("Sikeres frissítés!");
      navigate('/eladohazak');
    } catch (error) {
      console.error("Error updating property:", error);
      alert("Sikertelen frissítés!");
    }
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    handleUpdate();
  };

  const handleChange = (e) => {
    const { id, value } = e.target;
    setProperty((prevProperty) => ({
      ...prevProperty,
      [id]: value,
    }));
  };

  return (
    <div className="container-hirdetes">
      <h1 className="form-title">Ház módosítása</h1>
      <form onSubmit={handleSubmit} className="form-container">
        <div className="form-group">
          <label htmlFor="cim" className="form-label">Cím</label>
          <input
            type="text"
            className="formControl"
            id="cim"
            value={property.cim}
            onChange={handleChange}
            required
          />
        </div>
        <div className="form-group">
          <label htmlFor="varos" className="form-label">Város</label>
          <input
            type="text"
            className="formControl"
            id="varos"
            value={property.varos}
            onChange={handleChange}
            required
          />
        </div>
        <div className="form-group">
          <label htmlFor="allapot" className="form-label">Állapot</label>
          <input
            type="text"
            className="formControl"
            id="allapot"
            value={property.allapot}
            onChange={handleChange}
            required
          />
        </div>
        <div className="form-group">
          <label htmlFor="telekMerete" className="form-label">Telek Mérete</label>
          <input
            type="number"
            className="formControl"
            id="telekMerete"
            value={property.telekMerete}
            onChange={handleChange}
            required
          />
        </div>
        <div className="form-group">
          <label htmlFor="epitesVege" className="form-label">Építés vége</label>
          <input
            type="number"
            className="formControl"
            id="epitesVege"
            value={property.epitesVege}
            onChange={handleChange}
            required
          />
        </div>
        <div className="form-group">
          <label htmlFor="ar" className="form-label">Ár</label>
          <input
            type="number"
            className="formControl"
            id="ar"
            value={property.ar}
            onChange={handleChange}
            required
          />
        </div>
        <div className="form-group">
          <label htmlFor="alapterulet" className="form-label">Alapterület</label>
          <input
            type="number"
            className="formControl"
            id="alapterulet"
            value={property.alapterulet}
            onChange={handleChange}
            required
          />
        </div>
        <div className="form-group">
          <label htmlFor="szobakSzama" className="form-label">Szobák száma</label>
          <input
            type="number"
            className="formControl"
            id="szobakSzama"
            value={property.szobakSzama}
            onChange={handleChange}
            required
          />
        </div>
        <div className="form-group">
          <label htmlFor="kepUrl" className="form-label">Kép URL</label>
          <input
            type="text"
            className="formControl"
            id="kepUrl"
            value={property.kepUrl}
            onChange={handleChange}
            required
          />
        </div>
        <button type="submit" className="submit-button">Ház frissítése</button>
      </form>
    </div>
  );
}