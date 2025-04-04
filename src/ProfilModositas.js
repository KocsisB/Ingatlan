import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { useNavigate, useParams } from 'react-router-dom';
import './ProfilModositas.css';

export default function ProfilModositas() {
  const { id } = useParams();
  const [userProfile, setUserProfile] = useState({
    fullname: '',
    userName: '',
    email: '',
    birthDate: '',
    phoneNumber: '',
    kepUrl: ''
  });
  const navigate = useNavigate();
  const [error, setError] = useState(null);

  useEffect(() => {
   

    fetchUserData();
  }, [id]);

 const fetchUserData = async () => {
      try {
        const response = await axios.get(`${process.env.REACT_APP_API_URL}/auth/${id}`);
        setUserProfile({
          fullname: response.data.result.fullname,
          userName: response.data.result.userName,
          email: response.data.result.email,
          birthDate: response.data.result.birthDate.split("T")[0],
          phoneNumber: response.data.result.phoneNumber
        });
        console.log(response.data.result);
        localStorage.setItem('user', JSON.stringify(response.data.result));
        
      } catch (error) {
        setError('Hiba történt az adatok lekérése során: ' + error.message);
        console.error('Error fetching user data:', error);
      }
    };

  const handleChange = (e) => {
    const { name, value } = e.target;
    setUserProfile((prevProfile) => ({
      ...prevProfile,
      [name]:  value
    }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.put(`${process.env.REACT_APP_API_URL}/auth/${id}`, userProfile);
      console.log(response);
      alert('Profile updated successfully!');
      fetchUserData()
      navigate('/profilom')
      window.location.reload()
      

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
          <label htmlFor="fullname" className="profilmodositas-label">Teljes Név:</label>
          <input
            type="text"
            id="fullname"
            name="fullname"
            value={userProfile.fullname}
            onChange={handleChange}
            className="profilmodositas-input"
            required
          />
        </div>
        <div className="profilmodositas-form-group">
          <label htmlFor="userName" className="profilmodositas-label">Felhasználónév:</label>
          <input
            type="text"
            id="userName"
            name="userName"
            value={userProfile.userName}
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
          <label htmlFor="birthDate" className="profilmodositas-label">Születési Dátum:</label>
          <input
            type="date"
            id="birthDate"
            name="birthDate"
            value={userProfile.birthDate}
            onChange={handleChange}
            className="profilmodositas-input"
            required
          />
        </div>
        <div className="profilmodositas-form-group">
          <label htmlFor="phoneNumber" className="profilmodositas-label">Telefonszám:</label>
          <input
            type="tel"
            id="phoneNumber"
            name="phoneNumber"
            value={userProfile.phoneNumber}
            onChange={handleChange}
            className="profilmodositas-input"
            required
          />
        </div>
       
        <button type="submit" className="profilmodositas-button">Módosítás</button>
      </form>
      {error && <div className="error-message">{error}</div>}
    </div>
  );
}