import React, { useState } from "react";
import "./Hirdetes.css";

export default function Hirdetes() {
  const [hirdetes, setHirdetes] = useState({
    cim: '',
    kepUrl: '',
    alapterulet: '',
    szobakSzama: '',
    telekMerete: '',
    epitesVege: '',
    allapot: '',
    tipus: '',
    varos: '',
    megye: '',
    ar: ''
  });

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setHirdetes((prev) => ({
      ...prev,
      [name]: value
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
      kepUrl: hirdetes.kepUrl
    };

    try {
      console.log(formData);
      const response = await fetch("http://10.169.85.161:5081/ingatlan", {
        method: "POST",
        body: JSON.stringify(formData),
        headers: {
          "Content-Type": "application/json",
        },
      });

      if (response.ok) {
        alert("A ház sikeresen hozzáadva!");
        setHirdetes({
          cim: '',
          kepUrl: '',
          alapterulet: '',
          szobakSzama: '',
          telekMerete: '',
          epitesVege: '',
          allapot: '',
          tipus: '',
          varos: '',
          megye: '',
          ar: ''
        });
      } else {
        throw new Error("Hiba történt a kérés során: ", response.status);
      }
    } catch (error) {
      console.error("Hiba történt a kérés során: ", error);
      alert("Hiba történt! Próbáld meg újra.");
    }
  };

  return (
    <div className="container-hirdetes">
      <h2 className="form-title">Hírdetés feladása</h2>
      <form id="house-form" onSubmit={handleSubmit} className="form-container">
        <div className="form-group">
          <label htmlFor="haz-cim" className="form-label">
            Utca, Házszám
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
            Ház alapterülete (m²)
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
            Vármegye
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
            type="text"
            className="formControl"
            id="haz-kepek"
            name="kepUrl"
            value={hirdetes.kepUrl}
            onChange={handleInputChange}
            required
          />
        </div>

        <button type="submit" className="submit-button" value="save">
          Hírdetés hozzáadása
        </button>
      </form>
    </div>
  );
}
