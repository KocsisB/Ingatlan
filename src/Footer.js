import React from 'react';
import styles from './Footer.module.css';

export default function Footer() {
  return (
    <footer className={styles.footer}>
      <div className={styles.container}>
        <p className={styles.text}>&copy; {new Date().getFullYear()} MyApp. All rights reserved.</p>
        <div className={styles.links}>

        <p className={styles.elerhetosegek}>
            Elérhetősségeink: <br></br>
            csomad@kkszki.hu <br></br>
            klimal@kkszki.hu <br></br>
            kocsib@kkszki.hu <br></br>

            Mobil:<br></br>
             06207243567
            </p>

            
            

          <a href="#privacy" className={styles.link}>Privacy Policy</a>
          <a href="#terms" className={styles.link}>Terms of Service</a>
          <a href="#contact" className={styles.link}>Contact Us</a>
          
          
        </div>
      </div>
    </footer>
  );
}