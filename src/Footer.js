import React from 'react';
import styles from './Footer.module.css';

export default function Footer() {
  return (
    <footer className={styles.footer}>
      <div className={styles.container}>
        <p className={styles.text}>&copy; {new Date().getFullYear()} MyApp. All rights reserved.</p>
        <div className={styles.links}>
          <div className={styles.column}>
            <h4>Magánszemélyeknek</h4>
            <a href="/hirdetes" className={styles.link}>Hirdetés feladása</a>
          </div>
          <div className={styles.column}>
            <h4>Hitel kalkulátor</h4>
            <a href="https://bankmonitor.hu/lakashitel-kalkulator/" className={styles.link}>Lakáshitel-kalkulátor</a>
          </div>
          <div className={styles.column}>
            <h4>Kapcsolat</h4>
            <p>+36 20 765 432</p>
            <p>csomad@kkszki.hu</p>
            <p>klimal@kkszki.hu</p>
            <p>kocsisb@kkszki.hu</p>
            <p>munkanapokon 10:00-17:00-ig</p>
          </div>
        </div>
      </div>
    </footer>
  );
}