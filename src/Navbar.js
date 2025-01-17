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
                  <NavLink className="nav-link" to="/fiok">Bejelentkezés/Regisztráció</NavLink>
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </nav>
</div>
)};