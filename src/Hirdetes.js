import React from 'react';
import { useState } from 'react';
import './App.css';

export default function Hirdetes() {
  const [houseTitle, setHouseTitle] = useState('');
  const [houseDescription, setHouseDescription] = useState('');
  const [houseImages, setHouseImages] = useState([]);

  const handleTitleChange = (e) => setHouseTitle(e.target.value);
  const handleDescriptionChange = (e) => setHouseDescription(e.target.value);
  const handleImagesChange = (e) => setHouseImages(e.target.files);

  const handleSubmit = (e) => {
    e.preventDefault();
    // Itt lehetne valamilyen API hívást kezdeményezni a ház hozzáadásához.
    console.log('Ház címe:', houseTitle);
    console.log('Leírás:', houseDescription);
    console.log('Képek:', houseImages);
  };

  return (
    <div className="container" style={{
      backgroundColor: '#ffffff',
      border: '3px solid #288930',
      borderRadius: '15px',
      padding: '30px',
      boxShadow: '0px 4px 8px rgba(0, 0, 0, 0.1)',
      maxWidth: '600px',
      margin: '20px auto'
    }}>
      <h2 style={{ textAlign: 'center', color: '#00000', marginBottom: '20px' }}>Eladó Ház Hozzáadása</h2>
      <form id="house-form" onSubmit={handleSubmit}>
        <div className="mb-3">
          <label htmlFor="house-title" className="form-label" style={{ fontWeight: 'bold', color: '#00000' }}>
            Ház címe
          </label>
          <input
            type="text"
            className="form-control"
            id="house-title"
            value={houseTitle}
            onChange={handleTitleChange}
            required
          />
        </div>
        <div className="mb-3">
          <label htmlFor="house-description" className="form-label" style={{ fontWeight: 'bold', color: '#00000' }}>
            Leírás
          </label>
          <textarea
            className="form-control"
            id="house-description"
            rows="3"
            value={houseDescription}
            onChange={handleDescriptionChange}
            required
          ></textarea>
        </div>
        <div className="mb-3">
          <label htmlFor="house-images" className="form-label" style={{ fontWeight: 'bold', color: '#00000' }}>
            Képek
          </label>
          <input
            type="file"
            className="form-control"
            id="house-images"
            accept="image/*"
            multiple
            onChange={handleImagesChange}
          />
        </div>
        <button type="submit" style={{
          backgroundColor: '#288930',
          color: '#ffffff',
          border: 'none',
          padding: '10px 20px',
          fontSize: '16px',
          fontWeight: 'bold',
          borderRadius: '5px',
          cursor: 'pointer',
          display: 'block',
          margin: '0 auto'
        }}>
          Ház hozzáadása
        </button>
      </form>
    </div>
  );
}
