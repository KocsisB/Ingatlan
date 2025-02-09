import React, { useState } from 'react';
import './Hirdetes.css';
import axios from 'axios';

export default function Hirdetes() {
  const [houseTitle, setHouseTitle] = useState('');
  const [houseDescription, setHouseDescription] = useState('');
  const [houseImages, setHouseImages] = useState([]);
  const [address, setAddress] = useState('');
  const [area, setArea] = useState('');
  const [rooms, setRooms] = useState('');
  const [landSize, setLandSize] = useState('');
  const [constructionYear, setConstructionYear] = useState('');
  const [condition, setCondition] = useState('');
  const [type, setType] = useState('');
  const [city, setCity] = useState('');
  const [county, setCounty] = useState('');
  const [price, setPrice] = useState('');

  const handleTitleChange = (e) => setHouseTitle(e.target.value);
  const handleDescriptionChange = (e) => setHouseDescription(e.target.value);
  const handleImagesChange = (e) => setHouseImages(e.target.files);
  const handleAddressChange = (e) => setAddress(e.target.value);
  const handleAreaChange = (e) => setArea(e.target.value);
  const handleRoomsChange = (e) => setRooms(e.target.value);
  const handleLandSizeChange = (e) => setLandSize(e.target.value);
  const handleConstructionYearChange = (e) => setConstructionYear(e.target.value);
  const handleConditionChange = (e) => setCondition(e.target.value);
  const handleTypeChange = (e) => setType(e.target.value);
  const handleCityChange = (e) => setCity(e.target.value);
  const handleCountyChange = (e) => setCounty(e.target.value);
  const handlePriceChange = (e) => setPrice(e.target.value);

  const handleSubmit = async (e) => {
    e.preventDefault();

    // Form Data for image upload and other form data
    const formData = new FormData();
    formData.append('title', houseTitle);
    formData.append('description', houseDescription);
    formData.append('address', address);
    formData.append('area', area);
    formData.append('rooms', rooms);
    formData.append('landSize', landSize);
    formData.append('constructionYear', constructionYear);
    formData.append('condition', condition);
    formData.append('type', type);
    formData.append('city', city);
    formData.append('county', county);
    formData.append('price', price);
    
    // Append images
    for (let i = 0; i < houseImages.length; i++) {
      formData.append('images', houseImages[i]);
    }

    try {
      // POST request to the API endpoint
      const response = await axios.post('https://localhost:7166/api/Ingatlanok', formData, {
        headers: {
          'Content-Type': 'multipart/form-data', // To handle file uploads
        },
      });

      if (response.status === 200) {
        alert('A ház sikeresen hozzáadva!');
        // Clear form after successful submission
        setHouseTitle('');
        setHouseDescription('');
        setHouseImages([]);
        setAddress('');
        setArea('');
        setRooms('');
        setLandSize('');
        setConstructionYear('');
        setCondition('');
        setType('');
        setCity('');
        setCounty('');
        setPrice('');
      }
    } catch (error) {
      console.error('Hiba történt a ház hozzáadása közben:', error);
      alert('Hiba történt! Próbáld meg újra.');
    }
  };
 
  return (
    <div className="container-hirdetes">
      <h2 className="form-title">Eladó Ház Hozzáadása</h2>
      <form id="house-form" onSubmit={handleSubmit} className='form-container'>
        <div className="form-group">
          <label htmlFor="house-title" className="form-label">Ház címe</label>
          <input
            type="text"
            className="form-control"
            id="house-title"
            value={houseTitle}
            onChange={handleTitleChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="address" className="form-label">Cím</label>
          <input
            type="text"
            className="form-control"
            id="address"
            value={address}
            onChange={handleAddressChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="house-description" className="form-label">Leírás</label>
          <textarea
            className="form-control"
            id="house-description"
            rows="3"
            value={houseDescription}
            onChange={handleDescriptionChange}
            required
          ></textarea>
        </div>

        <div className="form-group">
          <label htmlFor="area" className="form-label">Alapterület (m²)</label>
          <input
            type="number"
            className="form-control"
            id="area"
            value={area}
            onChange={handleAreaChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="rooms" className="form-label">Szobák száma</label>
          <input
            type="number"
            className="form-control"
            id="rooms"
            value={rooms}
            onChange={handleRoomsChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="landSize" className="form-label">Telek mérete (m²)</label>
          <input
            type="number"
            className="form-control"
            id="landSize"
            value={landSize}
            onChange={handleLandSizeChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="constructionYear" className="form-label">Építés éve</label>
          <input
            type="number"
            className="form-control"
            id="constructionYear"
            value={constructionYear}
            onChange={handleConstructionYearChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="condition" className="form-label">Állapot</label>
          <input
            type="text"
            className="form-control"
            id="condition"
            value={condition}
            onChange={handleConditionChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="type" className="form-label">Típus</label>
          <input
            type="text"
            className="form-control"
            id="type"
            value={type}
            onChange={handleTypeChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="city" className="form-label">Város</label>
          <input
            type="text"
            className="form-control"
            id="city"
            value={city}
            onChange={handleCityChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="county" className="form-label">Megye</label>
          <input
            type="text"
            className="form-control"
            id="county"
            value={county}
            onChange={handleCountyChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="price" className="form-label">Ár</label>
          <input
            type="number"
            className="form-control"
            id="price"
            value={price}
            onChange={handlePriceChange}
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="house-images" className="form-label">Képek</label>
          <input
            type="file"
            className="form-control"
            id="house-images"
            accept="image/*"
            multiple
            onChange={handleImagesChange}
          />
        </div>

        <button type="submit" className="submit-button">Ház hozzáadása</button>
      </form>
    </div>
  );
}