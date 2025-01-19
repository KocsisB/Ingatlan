import React, { useState } from 'react';
import './Login.css';

const App = () => {
  const [isActive, setIsActive] = useState(false);

  const handleRegisterClick = () => {
    setIsActive(true); 
  };

  const handleLoginClick = () => {
    setIsActive(false); 
  };

  return (
    <div className={`container ${isActive ? 'active' : ''}`} id="container">
      <div className="form-container sign-up">
        <form>
          <h1>Fiók létrehozása</h1>
          <div className="social-icons">
            <a href="#" className="icon">
              <i className="fa-brands fa-google-plus-g" />
            </a>
            <a href="#" className="icon">
              <i className="fa-brands fa-facebook-f" />
            </a>
            <a href="#" className="icon">
              <i className="fa-brands fa-github" />
            </a>
            <a href="#" className="icon">
              <i className="fa-brands fa-linkedin-in" />
            </a>
          </div>
          <span>vagy regisztrálj az email címeddel</span>
          <input type="text" placeholder="Név" />
          <input type="email" placeholder="Email" />
          <input type="password" placeholder="Jelszó" />
          <button>Regisztrálok</button>
        </form>
      </div>
      <div className="form-container sign-in">
        <form>
          <h1>Bejelentkezés</h1>
          <div className="social-icons">
            <a href="#" className="icon">
              <i className="fa-brands fa-google-plus-g" />
            </a>
            <a href="#" className="icon">
              <i className="fa-brands fa-facebook-f" />
            </a>
            <a href="#" className="icon">
              <i className="fa-brands fa-github" />
            </a>
            <a href="#" className="icon">
              <i className="fa-brands fa-linkedin-in" />
            </a>
          </div>
          <span>vagy használd az email-ed, és jelszavadat</span>
          <input type="email" placeholder="Email" />
          <input type="password" placeholder="Jelszó" />
          <a href="#">Elfelejtetted a jelszavadat?</a>
          <button>Bejelentkezés</button>
        </form>
      </div>
      <div className="toggle-container">
        <div className="toggle">
          <div className="toggle-panel toggle-left">
            <h1>Üdvözöljük!</h1>
            <p>Regisztráljon az összes oldalfunkció használatához.</p>
            <button onClick={handleLoginClick} className="hidden" id="login">
              Bejelentkezés
            </button>
          </div>
          <div className="toggle-panel toggle-right">
            <h1>Üdvözöljük!</h1>
            <p>Regisztráljon az összes oldalfunkció használatához.</p>
            <button onClick={handleRegisterClick} className="hidden" id="register">
              Regisztráok
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default App;
