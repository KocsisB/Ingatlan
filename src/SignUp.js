import React from 'react'
import isLoginForm, { useState } from 'react'; 
import './Signup.css';
import Fooldal from './Fooldal';
import Navbar from './Navbar';

 export default function SignUp() {
    
    const [isLoginForm, setIsLoginForm] = useState(false);
  
    
    const toggleForm = () => {
      setIsLoginForm(!isLoginForm);
    };
  
    return (
      <div className="container">
        <h2>{isLoginForm ? 'Bejelentkezés' : 'Regisztráció'}</h2>
  
        {/* Ha a bejelentkezési formot kell mutatni */}
        {!isLoginForm ? (
          <form id="regForm">
            <div className="form-group">
              <label htmlFor="name">Név</label>
              <input type="text" id="name" name="name" required />
            </div>
            <div className="form-group">
              <label htmlFor="email">E-mail cím</label>
              <input type="email" id="email" name="email" required />
            </div>
            <div className="form-group">
              <label htmlFor="password">Jelszó</label>
              <input type="password" id="password" name="password" required />
            </div>
            <button type="submit">Regisztráció</button>
          </form>
        ) : (
          <form id="login">
            <div className="form-group">
              <label htmlFor="loginEmail">E-mail cím</label>
              <input type="email" id="loginEmail" name="loginEmail" required />
            </div>
            <div className="form-group">
              <label htmlFor="loginPassword">Jelszó</label>
              <input type="password" id="loginPassword" name="loginPassword" required />
            </div>
            <button type="submit">Bejelentkezés</button>
          </form>
        )}
  
        <div className="toggle-btn">
          {/* A gomb a formok közötti váltást kezdeményezi */}
          <button id="toggleBtn" onClick={toggleForm}>
            {isLoginForm ? 'Már van fiókod? Jelentkezz be!' : 'Már van fiókod? Jelentkezz ki!'}
          </button>
        </div>
      </div>
    );
    <Navbar/>
  }
