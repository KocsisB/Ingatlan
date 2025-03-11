import React, { useState, useEffect } from 'react';
import './Navbar.css';
import { NavLink } from 'react-router-dom';
import dlblogo from './dlblogo.svg.png';

export default function Navbar() {
  const [dropdownOpen, setDropdownOpen] = useState(false);
  const [user, setUser] = useState(null);  // Felhasználói adatok állapota

  useEffect(() => {
    const handleClickOutside = (event) => {
      if (!event.target.closest('.user-menu')) {
        setDropdownOpen(false);
      }
    };
    document.addEventListener('click', handleClickOutside);
    return () => {
      document.removeEventListener('click', handleClickOutside);
    };
  }, []);

  useEffect(() => {
    // API hívás a felhasználói adatok lekéréséhez
    const fetchUserData = async () => {
      try {
        const response = await fetch('https://a192.168.10.113:5081/auth'); // Cseréld le az URL-t a valós API végpontra
        if (response.ok) {
          const userData = await response.json();
          setUser(userData);
        } else {
          console.error('Error fetching user data:', response.statusText);
        }
      } catch (error) {
        console.error('Error fetching user data:', error);
      }
    };
    fetchUserData();
  }, []);

  const handleDropdownClick = (e) => {
    e.stopPropagation();
    setDropdownOpen(!dropdownOpen);
  };

  const handleLogout = async () => {
    try {
      const response = await fetch('https://api.example.com/logout', { method: 'POST' }); // Cseréld le az URL-t a valós API végpontra
      if (response.ok) {
        setUser(null); // Felhasználói adatok törlése a state-ből
        setDropdownOpen(false); // Dropdown bezárása
      } else {
        console.error('Error logging out:', response.statusText);
      }
    } catch (error) {
      console.error('Error logging out:', error);
    }
  };

  return (
    <div>
      <nav className="navbar navbar-expand-lg bg-dark border-bottom border-body" data-bs-theme="dark">
        <div className="container-fluid">
          <NavLink className="navbar-brand" to="/">
            <img className="logo" src={dlblogo} alt="logo" />
          </NavLink>
          <button
            className="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span className="navbar-toggler-icon"></span>
          </button>
          <div className="collapse navbar-collapse" id="navbarSupportedContent">
            <ul className="navbar-nav me-auto mb-2 mb-lg-0">
              <li><NavLink className={({ isActive }) => isActive ? "nav-link active" : "nav-link"} to="/">Főoldal</NavLink></li>
              <li><NavLink className={({ isActive }) => isActive ? "nav-link active" : "nav-link"} to="/eladohazak">Eladó házak</NavLink></li>
              <li><NavLink className={({ isActive }) => isActive ? "nav-link active" : "nav-link"} to="/berelhetohazak">Bérelhető házak</NavLink></li>
            </ul>
            <div className="d-flex align-items-center ms-auto">
              <form className="d-flex me-3" role="search">
                <input className="form-control search-input me-2" type="search" placeholder="Keresés" aria-label="Keresés" />
                <button className="btn btn-outline-success" type="submit">Keresés</button>
              </form>
              <div className="user-menu ms-3 position-relative">
                <div className="user-icon" onClick={handleDropdownClick}>
                  {user ? (
                    <img src={user.profilePicture} alt="Profile" className="profile-picture" />
                  ) : (
                    <i className="fa-solid fa-circle-user fa-lg text-white"></i>
                  )}
                </div>
                {dropdownOpen && (
                  <div className="dropdown-menu show position-absolute end-0 mt-2 p-2 bg-dark border border-secondary">
                    {user ? (
                      <>
                        <NavLink className="dropdown-item text-white" to="/profile">Profilom</NavLink>
                        <button className="dropdown-item text-white" onClick={handleLogout}>Kijelentkezés</button>
                      </>
                    ) : (
                      <>
                        <NavLink className="dropdown-item text-white" to="/bejelentkezes">Bejelentkezés / Regisztráció</NavLink>
                      </>
                    )}
                    <NavLink className="dropdown-item text-white" to="/ugynokok">Ügynökök</NavLink>
                    <NavLink className="dropdown-item text-white" to="/hirdetes">Hírdetés feladása</NavLink>
                    <NavLink className="dropdown-item text-white" to="/akcioshazak">Akciós házak</NavLink>
                  </div>
                )}
              </div>
            </div>
          </div>
        </div>
      </nav>
    </div>
  );
}