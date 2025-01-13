import React from 'react'
import isLogin, { useState } from 'react';
import Fooldal from './Fooldal';
import Navbar from './Navbar';



    export default function Fiok() {
        const [isLogin, setIsLogin] = useState(false);
      
        const toggleForm = () => {
          setIsLogin(!isLogin);
        };
      
        return (
          <div className="container">
            <h2>{isLogin ? 'Bejelentkezés' : 'Regisztráció'}</h2>
      
            <form id={isLogin ? 'login' : 'regForm'}>
              {!isLogin && (
                <div className="form-group">
                  <label htmlFor="name">Név</label>
                  <input type="text" id="name" name="name" required />
                </div>
              )}
              <div className="form-group">
                <label htmlFor="email">{isLogin ? 'E-mail cím' : 'E-mail cím'}</label>
                <input type="email" id={isLogin ? 'loginEmail' : 'email'} name={isLogin ? 'loginEmail' : 'email'} required />
              </div>
              <div className="form-group">
                <label htmlFor="password">Jelszó</label>
                <input type="password" id={isLogin ? 'loginPassword' : 'password'} name={isLogin ? 'loginPassword' : 'password'} required />
              </div>
              <button type="submit">{isLogin ? 'Bejelentkezés' : 'Regisztráció'}</button>
            </form>
      
            <div className="toggle-btn">
              <button onClick={toggleForm}>
                {isLogin ? 'Már nincs fiókod? Regisztrálj!' : 'Már van fiókod? Jelentkezz be!'}
              </button>
            </div>
          </div>
        );
        <Navbar/>
      }

