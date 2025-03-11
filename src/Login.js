import React, { useState } from 'react';
import styles from './Login.module.css';
import './Login.module.css';
import { useNavigate } from 'react-router-dom';



const Login = () => {
  const [isActive, setIsActive] = useState(false);
  const [errorMessage, setErrorMessage] = useState("");
  const [username, setUsername] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [showPassword, setShowPassword] = useState(false);

  const navigate = useNavigate()

  const togglePasswordVisibility = () => {
    setShowPassword(!showPassword)
  }

  const handleRegisterClick = () => {
    setIsActive(true);
  }

  const handleSubmit = async (e) => {
    e.preventDefault();
    
    if (password !== confirmPassword) {
      setErrorMessage("Jelszavak nem egyeznek meg")
      return
    }

    const newUser = {
      userName: username,
      email: email,
      password: password
    }

    try {
      const response = await fetch(`http://10.169.84.177:5081/auth/Register`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json"
        },
        body: JSON.stringify(newUser)
      })

      if (!response.ok) {
        throw new Error("Registration failed")
      }

      navigate("/")
    } catch (error) {
      setErrorMessage("Hiba történt a regisztráció során")
    }

     
  };

  const handleLoginClick = () => {
    setIsActive(false); 
  };

return(
<div className={`${styles.container} ${isActive ? styles.active : ''}`} id="container">
      {/* Regisztrációs form */}
      <div className={`${styles['form-container']} ${styles['sign-up']}`}>
        <form onSubmit={handleSubmit}>
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
          <input
            type="text"
            placeholder="Név"
            value={username} 
            onChange={(e) => setUsername(e.target.value)} 
            required 
          />
          <input
            type="email"
            placeholder="Email"
            value={email} 
            onChange={(e) => setEmail(e.target.value)} 
            required 
          />
          
          <div className={styles.psw}>
              <div>
                <input
                  type={showPassword ? "text" : "password"} 
                  placeholder="Jelszó"
                  value={password} 
                  onChange={(e) => setPassword(e.target.value)} 
                  required 
                />
              </div>
              <div> 
                <button type="button" className="toggle-password" onClick={togglePasswordVisibility}>
                  !
                </button>
              </div>
          </div>
          

          <input
            type={showPassword ? "text" : "password"} 
            placeholder="Jelszó újra"
            value={confirmPassword} 
            onChange={(e) => setConfirmPassword(e.target.value)} 
            required 
          />
          <button type='submit'>Regisztrálok</button>
        </form>
        {errorMessage && <div className="error-message">{errorMessage}</div>}
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
          <button type="submit" className={styles.toggleBtn}>Bejelentkezés</button>
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