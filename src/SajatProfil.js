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
          const response = await axios.get(`${process.env.REACT_APP_API_URL}/auth`);
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
      // Optionally, redirect to a different page after account deletion
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
          <li className="activity-item">Profil módosítása: <button className="update-button" onClick={handleProfileUpdate}>Profil módosítása</button> </li> 
        </ul>
      </div>
      <button className="delete-button" onClick={handleAccountDelete}>Fiók törlése</button>
    </div>
  );
}