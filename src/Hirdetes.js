import React, { useState } from 'react';
import './Hirdetes.css';

export default function Hirdetes() {
  const [hazCim, setHazCim] = useState('');
  const [hazLeiras, setHazLeiras] = useState('');
  const [kepUrl, setKepUrl] = useState('');
  const [alapterulet, setAlapterulet] = useState('');
  const [szobakSzama, setSzobakSzama] = useState('');
  const [telekMerete, settelekMerete] = useState('');
  const [epitesVege, setEpitesVege] = useState('');
  const [allapot, setAllapot] = useState('');
  const [tipus, setTipus] = useState('');
  const [varos, setVaros] = useState('');
  const [megye, setMegye] = useState('');
  const [ar, setAr] = useState('');

  const handleCimChange = (e) => setHazCim(e.target.value);
  const handleLeirasChange = (e) => setHazLeiras(e.target.value);
  const handleKepekChange = (e) => setKepUrl(e.target.value);
  const handleAlapteruletChange = (e) => setAlapterulet(e.target.value);
  const handleSzobakSzamaChange = (e) => setSzobakSzama(e.target.value);
  const handletelekMereteChange = (e) => settelekMerete(e.target.value);
  const handleEpitesVegeChange = (e) => setEpitesVege(e.target.value);
  const handleAllapotChange = (e) => setAllapot(e.target.value);
  const handleTipusChange = (e) => setTipus(e.target.value);
  const handleVarosChange = (e) => setVaros(e.target.value);
  const handleMegyeChange = (e) => setMegye(e.target.value);
  const handleArChange = (e) => setAr(e.target.value);

  const handleSubmit = async (e) => {
    e.preventDefault();

    const formData = {
      cim: hazCim,
      alapterulet: Number(alapterulet),
      szobakSzama: Number(szobakSzama),
      telekMerete: Number(telekMerete),
      epitesVege: Number(epitesVege),
      allapot: allapot,
      tipus: tipus,
      varos: varos,
      megye: megye,
      ar: Number(ar),
      kepUrl: kepUrl
    }
   

    try {
      console.log(formData);
      const response = await fetch('http://192.168.182.11:5149/api/Ingatlanok', {
        method: 'POST',
        body: JSON.stringify(formData),
        headers: {
          "Content-Type" : "application/json"
        }
      });

      if (response.ok) {
        alert('A ház sikeresen hozzáadva!');
        // Clear form after successful submission
        setHazCim('');
        setHazLeiras('');
        setKepUrl('');
        setAlapterulet('');
        setSzobakSzama('');
        settelekMerete('');
        setEpitesVege('');
        setAllapot('');
        setTipus('');
        setVaros('');
        setMegye('');
        setAr('');
      } else {
        console.error('Hiba történt a kérés során:', response.status);
        alert('Hiba történt! Próbáld meg újra.');
      }
    } catch (error) {
      console.error('Hiba történt a kérés során:', error);
      alert('Hiba történt! Próbáld meg újra.');
    }
  };

  return (
    <div className="container-hirdetes">
      <h2 className="form-title">Eladó Ház Hozzáadása</h2>
      <form id="house-form" onSubmit={handleSubmit} className="form-container">
        <div className="form-group">
          <label htmlFor="haz-cim" className="form-label">Ház címe</label>
          <input
            type="text"
            className="form-control"
            id="haz-cim"
            value={hazCim}
            onChange={handleCimChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="haz-leiras" className="form-label">Leírás</label>
          <textarea
            className="form-control"
            id="haz-leiras"
            rows="3"
            value={hazLeiras}
            onChange={handleLeirasChange}
            required
          ></textarea>
        </div>

        <div className="form-group">
          <label htmlFor="alapterulet" className="form-label">Alapterület (m²)</label>
          <input
            type="number"
            className="form-control"
            id="alapterulet"
            value={alapterulet}
            onChange={handleAlapteruletChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="szobak-szama" className="form-label">Szobák száma</label>
          <input
            type="number"
            className="form-control"
            id="szobak-szama"
            value={szobakSzama}
            onChange={handleSzobakSzamaChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="telek-meret" className="form-label">Telek mérete (m²)</label>
          <input
            type="number"
            className="form-control"
            id="telek-meret"
            value={telekMerete}
            onChange={handletelekMereteChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="epites-eve" className="form-label">Építés éve</label>
          <input
            type="number"
            className="form-control"
            id="epites-eve"
            value={epitesVege}
            onChange={handleEpitesVegeChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="allapot" className="form-label">Állapot</label>
          <input
            type="text"
            className="form-control"
            id="allapot"
            value={allapot}
            onChange={handleAllapotChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="tipus" className="form-label">Típus</label>
          <input
            type="text"
            className="form-control"
            id="tipus"
            value={tipus}
            onChange={handleTipusChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="varos" className="form-label">Város</label>
          <input
            type="text"
            className="form-control"
            id="varos"
            value={varos}
            onChange={handleVarosChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="megye" className="form-label">Megye</label>
          <input
            type="text"
            className="form-control"
            id="megye"
            value={megye}
            onChange={handleMegyeChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="ar" className="form-label">Ár</label>
          <input
            type="number"
            className="form-control"
            id="ar"
            value={ar}
            onChange={handleArChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="haz-kepek" className="form-label">Képek</label>
          <input
            type="string"
            className="form-control"
            id="haz-kepek"
            value={kepUrl}
            onChange={handleKepekChange}
            required
          />
        </div>

        <button type="submit" className="submit-button" value="save">Ház hozzáadása</button>
      </form>
    </div>
  );
}
