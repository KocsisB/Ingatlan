import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { useParams } from 'react-router-dom';
import './ProfilModositas.css';

export default function ProfilModositas() {
  const { id } = useParams();
  const [userProfile, setUserProfile] = useState({
    name: '',
    email: '',
    password: ''
  });
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchUserData = async () => {
      try {
        const response = await axios.get(`${process.env.REACT_APP_API_URL}/auth/${id}`);
        setUserProfile(response.data);
      } catch (error) {
        setError('Hiba történt az adatok lekérése során: ' + error.message);
        console.error('Error fetching user data:', error);
      }
    };

    fetchUserData();
  }, [id]);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setUserProfile((prevProfile) => ({
      ...prevProfile,
      [name]: value
    }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.put(`${process.env.REACT_APP_API_URL}/auth/${id}`, userProfile);
      console.log(response.data);
      alert('Profile updated successfully!');
    } catch (error) {
      console.error('Error updating profile:', error);
      alert('Failed to update profile.');
    }
  };

  if (error) {
    return <div className="profilmodositas-container"><p>{error}</p></div>;
  }

  return (
    <div className="profilmodositas-container">
      <h1 className="profilmodositas-title">Profil Módosítása</h1>
      <form onSubmit={handleSubmit} className="profilmodositas-form">
        <div className="profilmodositas-form-group">
          <label htmlFor="name" className="profilmodositas-label">Név:</label>
          <input
            type="text"
            id="name"
            name="name"
            value={userProfile.name}
            onChange={handleChange}
            className="profilmodositas-input"
            required
          />
        </div>
        <div className="profilmodositas-form-group">
          <label htmlFor="email" className="profilmodositas-label">Email:</label>
          <input
            type="email"
            id="email"
            name="email"
            value={userProfile.email}
            onChange={handleChange}
            className="profilmodositas-input"
            required
          />
        </div>
        <div className="profilmodositas-form-group">
          <label htmlFor="password" className="profilmodositas-label">Jelszó:</label>
          <input
            type="password"
            id="password"
            name="password"
            value={userProfile.password}
            onChange={handleChange}
            className="profilmodositas-input"
            required
          />
        </div>
        <button type="submit" className="profilmodositas-button">Módosítás</button>
      </form>
    </div>
  );
}