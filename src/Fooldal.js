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

    const news = [
      {
        title: "🏡 Ingatlanárak 10%-os emelkedése 2024-ben",
        description: "A lakáspiac tovább erősödik, különösen a nagyvárosokban.",
        date: "2024-02-05",
        url: "https://bankmonitor.hu/mediatar/cikk/rekordev-az-ingatlan-es-hitelpiacon-2024-kiemelkedo-eredmenyei/"
      },
      {
        title: "🆕 Új állami támogatás lakásvásárlóknak",
        description: "Kedvezményes hitelek és támogatások bővülnek fiatalok számára.",
        date: "2024-02-01",
        url: "https://www.penzcentrum.hu/otthon/20241230/elertek-a-lelektani-hatart-az-alberletarak-ennel-tovabb-2025-ben-sem-tudnak-emelkedni-1161279"
      },
      {
        title: "📉 Albérletárak csökkenése várható",
        description: "A kereslet visszaesése miatt az árak is lefelé mozdulhatnak.",
        date: "2024-01-20",
        url: "https://bankmonitor.hu/otthonteremtesi-es-otthonfelujitasi-tamogatasok/"
      }
    ];
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
            <a href="/regisztracio"> Regisztrálj ide kattintva!</a>
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
            <div className="modal-content-fooldal">
              <button className="modal-close-fooldal" onClick={closeModal}>✖</button>
              <p>{modalContent}</p>
            </div>
          </div>
        )}
      </div>

      <div className="market-news-container">
        <h2 className="market-news-title">📰 Ingatlanpiaci hírek</h2>
        <div className="news-grid">
          {news.map((article, index) => (
            <div key={index} className="news-card">
              <h3 className="news-title">{article.title}</h3>
              <p className="news-description">{article.description}</p>
              <small className="news-date">{new Date(article.date).toLocaleDateString()}</small>
              {article.url && (
                <a
                  href={article.url}
                  className="news-link"
                >
                  🔗 Tovább olvasom →
                </a>
              )}
            </div>
          ))}
        </div>
      </div>

      <div className="flex flex-col md:flex-row gap-6 p-6 bg-gray-100 text-gray-800">
      <Section
        title="INGATLANOK.HU"
        text="Eladó, kiadó ingatlan az ország egyik vezető ingatlankereső oldalán. Folyamatosan bővülő, könnyen kereshető adatbázisunkban minden ingatlantípus megtalálható, a kínálat az egész országot lefedi. Mindegy, hogy eladni szeretne, vagy álmai otthonát keresi, mi mindkettőben segíteni tudunk. Járjon utána!"
      />
      <Section
        title="HASZNOS FUNKCIÓK"
        text="A kereséseket elmentheti, így később már csak az időközben felkerülő új ingatlanokat kell átnéznie, erről e-mail értesítőt is kérhet. Mentse el a kiszemelt ingatlan adatlapját és ossza meg ismerőseivel egy kattintással a Facebookon. Regisztráljon és megkönnyítjük Önnek a keresést, eladást."
      />
      <Section
        title="INGATLAN ADATBÁZIS"
        text="Oldalunkon jelenleg több tízezer lakás, ház, garázs, üres telek, iroda, panzió, üzlet, üdülő, vendéglátóegység és ipari ingatlan hirdetése között válogathat. Az Ön még nincs köztük? Ne szalassza el a vevőket, válassza az Ingatlanok.hu-t, adja fel ingatlan hirdetését most!"
      />
    </div>
      
      </div>)};
      const Section = ({ title, text }) => {
        return (
          <div className="bg-white p-6 shadow-md rounded-xl text-center flex-1">
            <h2 className="text-xl font-bold mb-4">{title}</h2>
            <p className="text-gray-600">{text}</p>
          </div>
        );
      };
      
