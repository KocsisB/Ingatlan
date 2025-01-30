import React from 'react';
import './Fooldal.css';
import dlbLogo from "./img/dlblogo.jpg";

export default function Fooldal() {
  return (
    <div className="fooldal-container">
      <div className="card-container">
        <div className="card-body">
          <h5 className="card-title">Miért éri meg nálunk hírdetni?</h5>
          <p className="card-text">
            Hirdessenek nálunk, ha lakást szeretnének eladni, mert oldalunkon célzott közönség található, akik aktívan érdeklődnek ingatlanpiaci ajánlatok iránt.
            Kiemelt hirdetési lehetőségeink segítenek, hogy gyorsan és könnyen megtalálja az álmai otthonát.
          </p>
        </div>
      </div>
      <div className="card-container">
        <div className="card-body">
          <h5 className="card-title">Rólunk</h5>
          <p className="card-text">
            Oldalunk modern, innovatív megoldásokat kínál mindazok számára, akik ingatlant keresnek vagy kínálnak.
          </p>
        </div>
      </div>
      <div className="card-container">
        <div className="card-body">
          <h5 className="card-title">Kapcsolat</h5>
          <p className="card-text">
            Lépjen kapcsolatba velünk a kérdéseivel, javaslataival, vagy ha bármiben segíthetünk az ingatlanja eladásában!
          </p>
        </div>
      </div>
      <div className="real-estate-ad">
      <div className="real-estate-header">
        <div className="real-estate-icon-wrapper">
          <div className="real-estate-icon">
          <img src={dlbLogo} alt="DLB logo" />
          </div>
          <div className="real-estate-badge">+</div>
        </div>
        <h2 className="text-xl font-bold">Add fel ingatlanhirdetésed<br/> magánszemélyként ingyenesen!</h2>
      </div>
      <ul className="real-estate-list">
        <li>✅ Ingyenes hirdetésfeladás</li>
        <li>✅ Havi több mint 1 millió ingatlankereső</li>
        <li>✅ Egyszerű és gyors hirdetésfeladás</li>
        <li>✅ Akár 20 fénykép feltöltése</li>
      </ul>
      <p className="real-estate-footer">
        <span className="font-bold">Ingatlanközvetítőként hirdetnél?</span> Valódi partnerkapcsolattal és korrekt árazással várunk.
        <a href="#"> Regisztrálj ide kattintva!</a>
      </p>
    </div>
    </div>
  );
}