import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';
import './SajatProfil.css';

export default function SajatProfil() {
  const [userData, setUserData] = useState(null);
  const [imageFile, setImageFile] = useState(null);
  const [error, setError] = useState(null);
  const navigate = useNavigate();
  const savedUser = JSON.parse(localStorage.getItem('user'));

  useEffect(() => {
   
    if (savedUser) {
      setUserData(savedUser); // Felhasználói adatok betöltése a localStorage-ból
    } else {
          setError('Hiba történt az adatok lekérése során:');
          console.error('Error fetching user data:');
      }

  }, []);

  const handleProfilePictureChange = async () => {
    if (!imageFile) {
      setError('Kérjük, válasszon egy képet.');
      return;
    }

    const formData = new FormData();
    formData.append("Kep", imageFile);

    try {
      const response = await axios.put(`${process.env.REACT_APP_API_URL}/auth/UploadPFP/${userData.id}`, formData, {
        headers: {
          "Content-Type": "multipart/form-data"
        }
      });
      setUserData({ ...userData, kepUrl: response.data.kepUrl });
      localStorage.setItem('user', JSON.stringify({ ...userData, kepUrl: response.data.kepUrl }));
      alert('Profilkép sikeresen frissítve.');
    } catch (error) {
      setError('Hiba történt a profilkép megváltoztatása során: ' + error.message);
      console.error('Error changing profile picture:', error);
    }
  };

  const handleProfileUpdate = async () => {
    try {
      const response = await axios.put(`${process.env.REACT_APP_API_URL}/auth/`, userData);
      setUserData(response.data);
      localStorage.setItem('user', JSON.stringify(response.data)); // Felhasználói adatok mentése a localStorage-ba
      alert('Profil sikeresen frissítve.');
    } catch (error) {
      setError('Hiba történt a profil frissítése során: ' + error.message);
      console.error('Error updating user profile:', error);
    }
  };

  const handleAccountDelete = async () => {
    try {
      await axios.delete(`${process.env.REACT_APP_API_URL}/auth/${userData.id}`);
      localStorage.removeItem('user'); // Felhasználói adatok törlése a localStorage-ból
      alert('Fiók sikeresen törölve.');
      window.location.href = '/login'; // Redirect to login page or any other page
    } catch (error) {
      setError('Hiba történt a fiók törlése során: ' + error.message);
      console.error('Error deleting user account:', error);
    }
  };

  if (error) {
    return <div className="profile-container"><p>{error}</p></div>;
  }

  return (
    <div className="profile-container">
      {userData ? (
        <div className="profile-content">
          <div className="profile-card">
            <h2 className="profile-title">Felhasználói Profil</h2>
            <p><strong>Teljes Név:</strong> {userData.fullname || 'N/A'}</p>
            <p><strong>Születési dátum:</strong> {new Date(userData.birthDate).toLocaleDateString()}</p>
            <p><strong>Felhasználónév:</strong> {userData.userName}</p>
            <p><strong>Normál Felhasználónév:</strong> {userData.normalizedUserName}</p>
            <p><strong>Email:</strong> {userData.email}</p>
            <p><strong>Normál Email:</strong> {userData.normalizedEmail}</p>
            <p><strong>Email Megerősítve:</strong> {userData.emailConfirmed ? 'Igen' : 'Nem'}</p>
            <p><strong>Telefonszám:</strong> {userData.phoneNumber}</p>
          </div>
          <div className="profile-image-section">
            <img src={process.env.REACT_APP_API_URL + userData.kepUrl} alt="Profilkép" className="profile-image"/>
            <input type="file" onChange={(e) => setImageFile(e.target.files[0])} />
            <button className="profile-button" onClick={handleProfilePictureChange}>Profilkép módosítása</button>
          </div>
        </div>
      ) : (
        <p>Betöltés...</p>
      )}
      <div className="activity-section">
        <h2 className="activity-title">Aktivitás</h2>
        <ul className="activity-list">
          <li className="activity-item">Bejelentkezés: {new Date().toLocaleString()}</li>
          <li className="activity-item">Profil módosítása: <button onClick={() => navigate(`/profilmodositas/${userData.id}`)} className="update-button">Profil módosítása</button> </li> 
        </ul>
      </div>
      <button className="delete-button" onClick={handleAccountDelete}>Fiók törlése</button>
    </div>
  );
}