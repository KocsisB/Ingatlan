import React from 'react'
import './App.css'
import { NavLink } from 'react-router-dom'
import dlblogo from './dlblogo.svg.jpg'

export default function Navbar() {
  return (
    <div>
      <nav className="bg-dark border-bottom border-body" data-bs-theme="dark">
        <nav className="navbar navbar-expand-lg bg-body-tertiary">
          <div className="container-fluid">
            <NavLink className="nav-item active" to="/">
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
                <li>
                  <NavLink className="nav-link" to="/">Főoldal</NavLink>
                </li>
                <li>
                  <NavLink className="nav-link" to="/hirdetes">Hirdetés feladása</NavLink>
                </li>
                <li>
                  <NavLink className="nav-link" to="/munkatarsak">Munkatársaink</NavLink>
                </li>
                <li>
                  <NavLink className="nav-link" to="/regisztracio">Bejelentkezés/regisztráció</NavLink>
                </li>
                <li>
                  <NavLink className="nav-link" to="/eladohazak">Eladó házak</NavLink>
                </li>
                <li>
                  <NavLink className="nav-link" to="/berelhetohazak">Bérelhető házak</NavLink>
                </li>
              </ul>
            <div className="d-flex align-items-center ms-auto">
                <form className="d-flex me-3" role="search">
                  <input
                    className="form-control me-2"
                    type="search"
                    placeholder="Keresés"
                    aria-label="Keresés"
                  />
                  <button className="btn btn-outline-success" type="submit">
                    Keresés
                  </button>
                </form>
                <div className="user-icon ms-3">
                  <i className="fa-solid fa-circle-user fa-lg text-white"></i>
                </div>
              </div>
            </div>
          </div>
        </nav>
      </nav>
    </div>
  );
}