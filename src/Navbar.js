import React from 'react'
import './App.css'

export default function Navbar() {
  return (
    <div>
      <nav className="bg-dark border-bottom border-body" data-bs-theme="dark">
        <nav className="navbar navbar-expand-lg bg-body-tertiary">
          <div className="container-fluid">
            <a className="nav-item active" href="./index.html">
              <img className="logo" src="./logo.jpg" alt="logo" />
            </a>
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
                  <Link to="/">Főoldal</Link>
                </li>
                <li>
                  <Link to="/hirdetes">Hirdetés feladása</Link>
                </li>
                <li>
                  <Link to="/kollegak">Munkatársaink</Link>
                </li>
                <li>
                  <Link to="/fiok">Bejelentkezés/Regisztráció</Link>
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </nav>
</div>
)};