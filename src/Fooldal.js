import React, { useState } from 'react';
import './Fooldal.css';
import dlbLogo from "./img/dlblogo.jpg";

export default function Fooldal() {

  const [isModalOpen, setIsModalOpen] = useState(false);
  const [modalContent, setModalContent] = useState("");

  // Modál megnyitása megfelelő tartalommal
  const openModal = (content) => {
    setModalContent(content);
    setIsModalOpen(true);
  };

  // Modál bezárása
  const closeModal = () => {
    setIsModalOpen(false);
    setModalContent("");
  };
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

      <div className="fooldal-container">
      {/* Ingatlanhitel és támogatások kártyák */}
      <div className="real-estate-loans-container">
        <div className="real-estate-loan-card">
          <h5 className="card-title">Ingatlanhitel kalkulátor</h5>
          <p className="card-text-m">Segítünk megtalálni a legjobb ingatlanhiteleket! Használja kalkulátorunkat a legjobb ajánlatokhoz.</p>
          <button className="btn-primary" onClick={() => openModal("Az ingatlanhitel kalkulátor segít kiszámolni a várható törlesztőrészleteket és a hitelfelvétel költségeit.")}>
            Kalkulálj most!
          </button>
        </div>
        
        <div className="real-estate-loan-card">
          <h5 className="card-title">Állami támogatások és kedvezmények</h5>
          <p className="card-text-m">Információk az elérhető állami támogatásokról és kedvezményekről.</p>
          <button className="btn-primary" onClick={() => openModal("Tudja meg, milyen állami támogatásokat vehet igénybe ingatlanvásárláskor, például CSOK, Babaváró hitel.")}>
            Tudj meg többet
          </button>
        </div>

        <div className="real-estate-loan-card">
          <h5 className="card-title">Előzetes hitelbírálat</h5>
          <p className="card-text-m">Kérjen előzetes hitelbírálatot, hogy tisztában legyen a lehetőségeivel.</p>
          <button className="btn-primary" onClick={() => openModal("Az előzetes hitelbírálat segítségével még a vásárlás előtt kiderítheti, hogy mekkora hitelösszegre jogosult.")}>
            Kérjen hitelbírálatot
          </button>
        </div>

        <div className="real-estate-loan-card">
          <h5 className="card-title">Ingatlanvásárlási tanácsadás</h5>
          <p className="card-text-m">Szakértőink segítenek eligazodni az ingatlanpiacon.</p>
          <button className="btn-primary" onClick={() => openModal("Szakértőink segítenek Önnek az ingatlanvásárlás minden lépésében, beleértve a jogi és pénzügyi kérdéseket is.")}>
            Kérjen tanácsot
          </button>
        </div>

        <div className="real-estate-loan-card">
          <h5 className="card-title">Kedvezményes hitelajánlatok</h5>
          <p className="card-text-m">Fedezze fel a legjobb hitelajánlatokat.</p>
          <button className="btn-primary" onClick={() => openModal("Összegyűjtöttük a legjobb banki ajánlatokat, hogy Ön a lehető legkedvezőbb hitelkonstrukciót választhassa.")}>
            Nézze meg az ajánlatokat
          </button>
        </div>

        <div className="real-estate-loan-card">
          <h5 className="card-title">Ingatlanpiaci trendek</h5>
          <p className="card-text-m">Tájékozódjon a legfrissebb ingatlanpiaci trendekről.</p>
          <button className="btn-primary" onClick={() => openModal("Az aktuális ingatlanpiaci trendek segítenek meghozni a legjobb döntést vásárlás vagy befektetés előtt.")}>
            Olvasson tovább
          </button>
        </div>

        <div className="real-estate-loan-card">
          <h5 className="card-title">Lakásbiztosítás</h5>
          <p className="card-text-m">Ne feledkezzen meg lakása biztosításáról.</p>
          <button className="btn-primary" onClick={() => openModal("A lakásbiztosítás megvédi Önt és otthonát váratlan események, például természeti katasztrófák vagy betörések ellen.")}>
            Böngésszen biztosítási ajánlatok között
          </button>
        </div>
      </div>

      {/* Modális ablak */}
      {isModalOpen && (
        <div className="modal-overlay">
          <div className="modal-content">
            <button className="modal-close" onClick={closeModal}>✖</button>
            <p>{modalContent}</p>
          </div>
        </div>
      )}
    </div>
    </div>)};
