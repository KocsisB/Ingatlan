import React, { useState } from 'react';
import styles from './Login.module.css';
import './Login.module.css';



const Login = () => {
  const [isActive, setIsActive] = useState(false);

  const handleRegisterClick = () => {
    
    
setIsActive(true); 
  };

  const handleLoginClick = () => {
    setIsActive(false); 
  };

return(
<div className={`${styles.container} ${isActive ? styles.active : ''}`} id="container">
      {/* Regisztrációs form */}
      <div className={`${styles['form-container']} ${styles['sign-up']}`}>
        <form>
          <h1>Fiók létrehozása</h1>
          <div className={styles['social-icons']}>
            <a href="#" className={styles.icon}>
              <i className="fa-brands fa-google-plus-g" />
            </a>
            <a href="#" className={styles.icon}>
              <i className="fa-brands fa-facebook-f" />
            </a>
            <a href="#" className={styles.icon}>
              <i className="fa-brands fa-github" />
            </a>
            <a href="#" className={styles.icon}>
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

      {/* Bejelentkezési form */}
      <div className={`${styles['form-container']} ${styles['sign-in']}`}>
        <form>
          <h1>Bejelentkezés</h1>
          <div className={styles['social-icons']}>
            <a href="#" className={styles.icon}>
              <i className="fa-brands fa-google-plus-g" />
            </a>
            <a href="#" className={styles.icon}>
              <i className="fa-brands fa-facebook-f" />
            </a>
            <a href="#" className={styles.icon}>
              <i className="fa-brands fa-github" />
            </a>
            <a href="#" className={styles.icon}>
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

      {/* Toggle container a formok közötti váltáshoz */}
      <div className={styles['toggle-container']}>
        <div className={styles.toggle}>
          <div className={`${styles['toggle-panel']} ${styles['toggle-left']}`}>
            <h1>Üdvözöljük!</h1>
            <p>Regisztráljon az összes oldalfunkció használatához.</p>
            <button onClick={handleLoginClick} className={styles.hidden} id="login">
              Bejelentkezés
            </button>
          </div>
          <div className={`${styles['toggle-panel']} ${styles['toggle-right']}`}>
            <h1>Üdvözöljük!</h1>
            <p>Regisztráljon az összes oldalfunkció használatához.</p>
            <button onClick={handleRegisterClick} className={styles.hidden} id="register">
              Regisztrálok
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Login;