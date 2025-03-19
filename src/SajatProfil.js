import React, { useEffect, useState } from 'react';
import axios from 'axios';
import './SajatProfil.css';

export default function SajatProfil() {
  const [userData, setUserData] = useState(null);
  const [error, setError] = useState(null);

  useEffect(() => {
    const savedUser = JSON.parse(localStorage.getItem('user'));
    console.log(savedUser);
    if (savedUser) {
      setUserData(savedUser); // Felhasználói adatok betöltése a localStorage-ból
    } else {
      // Ha nincs mentett felhasználó a localStorage-ban, akkor lekérjük az adatokat az API-ból
      const fetchUserData = async () => {
        try {
          const response = await axios.get(`${process.env.REACT_APP_API_URL}/auth/me/61b58764-0fb4-4f30-8fe0-3f612a2b6c91`);
          setUserData(response.data);
          localStorage.setItem('user', JSON.stringify(response.data)); // Felhasználói adatok mentése a localStorage-ba
        } catch (error) {
          setError('Hiba történt az adatok lekérése során: ' + error.message);
          console.error('Error fetching user data:', error);
        }
      };

      fetchUserData();
    }
  }, []);

  const handleProfilePictureChange = () => {
    // Implement the logic to change the profile picture
    alert('Profilkép módosítása funkció hamarosan elérhető lesz.');
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
            <img src="https://via.placeholder.com/150" alt="Profilkép" className="profile-image"/>
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
          <li className="activity-item">Profil módosítása: N/A</li>
          <li className="activity-item">Utolsó aktivitás: N/A</li>
        </ul>
      </div>
    </div>
  );
}