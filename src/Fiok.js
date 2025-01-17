import React from 'react'
import isLogin, { useState } from 'react';
import styles from './SignUp.module.css';
import './SignUp.module.css';

    export default function Fiok() {
        const [isLogin, setIsLogin] = useState(false);
      
        const toggleForm = () => {
          setIsLogin(!isLogin);
        };
      
        return (
          <div className={styles.container}>
            <h2>{isLogin ? 'Bejelentkezés' : 'Regisztráció'}</h2>
      
            <form id={isLogin ? 'login' : 'regForm'}>
              {!isLogin && (
                <div className={styles.formGroup}>
                  <label htmlFor="name">Név</label>
                  <input type="text" id="name" name="name" required />
                </div>
              )}
              <div className={styles.formGroup}>
                <label htmlFor="email">{isLogin ? 'E-mail cím' : 'E-mail cím'}</label>
                <input type="email" id={isLogin ? 'loginEmail' : 'email'} name={isLogin ? 'loginEmail' : 'email'} required />
              </div>
              <div className={styles.formGroup}>
                <label htmlFor="password">Jelszó</label>
                <input type="password" id={isLogin ? 'loginPassword' : 'password'} name={isLogin ? 'loginPassword' : 'password'} required />
              </div>
              <button type="submit" className={styles.toggleBtn}>{isLogin ? 'Bejelentkezés' : 'Regisztráció'}</button>
            </form>
      
            <div>
              <button onClick={toggleForm} className={styles.toggleBtn}>
                {isLogin ? 'Még nincs fiókod? Regisztrálj!' : 'Már van fiókod? Jelentkezz be!'}
              </button>
            </div>
          </div>
        );
      }

