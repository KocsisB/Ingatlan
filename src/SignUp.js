import React from 'react'
import isLoginForm, { useState } from 'react'; 
import styles from './SignUp.module.css';
import './SignUp.module.css';

 export default function SignUp() {
    
    const [isLoginForm, setIsLoginForm] = useState(false);
  
    
    const toggleForm = () => {
      setIsLoginForm(!isLoginForm);
    };
  
    return (
      <div className={styles.container}>
        <h2>{isLoginForm ? 'Bejelentkezés' : 'Regisztráció'}</h2>
  
        {/* Ha a bejelentkezési formot kell mutatni */}
        {!isLoginForm ? (
          <form id="regForm">
            <div className={styles.formGroup}>
              <label htmlFor="name">Név</label>
              <input type="text" id="name" name="name" required />
            </div>
            <div className={styles.formGroup}>
              <label htmlFor="email">E-mail cím</label>
              <input type="email" id="email" name="email" required />
            </div>
            <div className={styles.formGroup}>
              <label htmlFor="password">Jelszó</label>
              <input type="password" id="password" name="password" required />
            </div>
            <a href='bejelentkezes'>Bejelentkezek</a>
            <button type="submit" className={styles.toggleBtn}>Regisztráció</button>
          </form>
        ) : (
          <form id="login">  
            <div className={styles.formGroup}>
              <label htmlFor="loginEmail">E-mail cím</label>
              <input type="email" id="loginEmail" name="loginEmail" required />
            </div>
            <div className="form-group">
              <label htmlFor="loginPassword">Jelszó</label>
              <input type="password" id="loginPassword" name="loginPassword" required />
            </div>
          </form>
        )}
  
        <div className={styles.toggleBtn}>
          {/* A gomb a formok közötti váltást kezdeményezi */}
          <button id="toggleBtn" onClick={toggleForm} className={styles.toggleBtn}>
            {isLoginForm ? 'Már van fiókod? Jelentkezz be!' : 'Már van fiókod? Jelentkezz ki!'}
          </button>
        </div>
      </div>
    );
  }
