import React from 'react';
import './Fooldal.css';

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
    </div>
  );
}
