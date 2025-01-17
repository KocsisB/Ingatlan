import React from 'react'
import houseTitle, { useState } from 'react';
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
          <div className="container">
            <h2>Eladó Ház Hozzáadása</h2>
            <form id="house-form" onSubmit={handleSubmit}>
              <div className="mb-3">
                <label htmlFor="house-title" className="form-label" style={{ fontWeight: 'bold', color: '#9bd162' }}>
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
                <label htmlFor="house-description" className="form-label" style={{ fontWeight: 'bold', color: '#9bd162' }}>
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
                <label htmlFor="house-images" className="form-label" style={{ fontWeight: 'bold', color: '#9bd162' }}>
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
              <button type="submit" className="toggleBtn">
                Ház hozzáadása
              </button>
            </form>
          </div>
        );
      }
