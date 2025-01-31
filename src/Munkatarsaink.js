import React from "react";
import Lacika from "./img/Lacika.jpg";
import David from "./img/David.jpg";
import Botond from "./img/Botond.jpg";

const agents = [
  {
    name: "Csoma Dávid Tibor",
    title: "Senior Ingatlanügynök",
    email: "csomad@kkszki.hu",
    phone: "+36 30 123 4567",
    location: "Budapest, Magyarország",
    agency: "Dream Home Realty",
    experience: "10 év tapasztalat",
    image: David
  },
  {
    name: "Klima László",
    title: "Lakás Szakértő",
    email: "klimal@kkszki.hu",
    phone: "+36 70 765 4321",
    location: "Debrecen, Magyarország",
    agency: "Elite Homes",
    experience: "10 év tapasztalat",
    image: Lacika
  },
  {
    name: "Kocsis Botond",
    title: "Befektetési Tanácsadó",
    email: "kocsisb@kkszki.hu",
    phone: "+36 20 987 6543",
    location: "Szeged, Magyarország",
    agency: "Prime Invest",
    experience: "10 év tapasztalat",
    image: Botond
  }
];

export default function Munkatarsaink() {
  return (
    <div className="agent-cards-container">
      {agents.map((agent, index) => (
        <div key={index} className="agent-card">
          <img src={agent.image} alt={agent.name} className="agent-image" />
          <h3 className="agent-name">{agent.name}</h3>
          <p className="agent-title">{agent.title}</p>
          <p className="agent-experience">{agent.experience}</p>
          <p className="agent-agency"><strong>{agent.agency}</strong></p>
          <p className="agent-location">{agent.location}</p>
          <div className="agent-contact">
            <a href={`mailto:${agent.email}`} className="agent-email">{agent.email}</a>
            <a href={`tel:${agent.phone}`} className="agent-phone">{agent.phone}</a>
          </div>
        </div>
      ))}
    </div>
  );
}
