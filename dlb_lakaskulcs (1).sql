-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Jan 13. 14:43
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `dlb_lakaskulcs`
--
CREATE DATABASE IF NOT EXISTS `dlb_lakaskulcs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dlb_lakaskulcs`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ingatlanok`
--

CREATE TABLE `ingatlanok` (
  `id` int(11) NOT NULL,
  `cim` varchar(255) NOT NULL,
  `alapterulet` decimal(10,2) NOT NULL,
  `szobak_szama` int(11) NOT NULL,
  `telek_merete` decimal(10,2) DEFAULT NULL,
  `epites_vege` int(11) DEFAULT NULL,
  `allapot` varchar(255) DEFAULT NULL,
  `kep_url` varchar(255) DEFAULT NULL,
  `tipus` varchar(255) DEFAULT NULL,
  `varos` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `ingatlanok`
--

INSERT INTO `ingatlanok` (`id`, `cim`, `alapterulet`, `szobak_szama`, `telek_merete`, `epites_vege`, `allapot`, `kep_url`, `tipus`, `varos`) VALUES
(1, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Budapest'),
(2, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Debrecen'),
(3, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Szeged'),
(4, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Pécs'),
(5, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Miskolc'),
(6, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Győr'),
(7, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Nyíregyháza'),
(8, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Kecskemét'),
(9, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Székesfehérvár'),
(10, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Szombathely'),
(11, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Veszprém'),
(12, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Eger'),
(13, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Tatabánya'),
(14, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Kaposvár'),
(15, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Zalaegerszeg'),
(16, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Békéscsaba'),
(17, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Sopron'),
(18, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Ajka'),
(19, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Nagykanizsa'),
(20, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Dunaújváros');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jogihatters`
--

CREATE TABLE `jogihatters` (
  `id` int(11) NOT NULL,
  `ingatlan_id` int(11) DEFAULT NULL,
  `dokumentum_tipus` varchar(255) NOT NULL,
  `dokumentum_datum` date DEFAULT NULL,
  `dokumentum_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `telepulesek`
--

CREATE TABLE `telepulesek` (
  `id` int(255) NOT NULL,
  `varosok` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `telepulesek`
--

INSERT INTO `telepulesek` (`id`, `varosok`) VALUES
(1, 'Budapest'),
(2, 'Debrecen'),
(3, 'Szeged'),
(4, 'Pécs'),
(5, 'Miskolc'),
(6, 'Győr'),
(7, 'Nyíregyháza'),
(8, 'Kecskemét'),
(9, 'Székesfehérvár'),
(10, 'Szombathely'),
(11, 'Veszprém'),
(12, 'Eger'),
(13, 'Tatabánya'),
(14, 'Kaposvár'),
(15, 'Zalaegerszeg'),
(16, 'Békéscsaba'),
(17, 'Sopron'),
(18, 'Ajka'),
(19, 'Nagykanizsa'),
(20, 'Dunaújváros');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tulajdonosok`
--

CREATE TABLE `tulajdonosok` (
  `id` int(11) NOT NULL,
  `ingatlan_id` int(11) DEFAULT NULL,
  `nev` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefon` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `tulajdonosok`
--

INSERT INTO `tulajdonosok` (`id`, `ingatlan_id`, `nev`, `email`, `telefon`) VALUES
(1, 1, 'Kovács János', 'janos.kovacs@example.com', '+36301234567'),
(2, 2, 'Nagy Erzsébet', 'erzsebet.nagy@example.com', '+36309876543'),
(3, 3, 'Tóth Ágnes', 'agnes.toth@example.com', '+36301456789'),
(4, 4, 'Szabó Péter', 'peter.szabo@example.com', '+36307654321'),
(5, 5, 'Mészáros Tamás', 'tamas.meszaros@example.com', '+36309871122'),
(6, 6, 'Horváth László', 'laszlo.horvath@example.com', '+36305551234'),
(7, 7, 'Kiss Gábor', 'gabor.kiss@example.com', '+36309871123'),
(8, 8, 'Lakatos Marianna', 'marianna.lakatos@example.com', '+36301234568'),
(9, 9, 'Varga Zoltán', 'zoltan.varga@example.com', '+36307778899'),
(10, 10, 'Farkas Dóra', 'dora.farkas@example.com', '+36307654322'),
(11, 11, 'Pintér István', 'istvan.pinter@example.com', '+36305553456'),
(12, 12, 'Juhász Mária', 'maria.juhasz@example.com', '+36305552233'),
(13, 13, 'Bíró Attila', 'attila.biro@example.com', '+36301112233'),
(14, 14, 'Molnár Anna', 'anna.molnar@example.com', '+36304567890'),
(15, 15, 'Szőke Béla', 'bela.szoke@example.com', '+36301235567'),
(16, 16, 'Kovács Gabriella', 'gabriella.kovacs@example.com', '+36302223344'),
(17, 17, 'Németh Imre', 'imre.nemeth@example.com', '+36304567891'),
(18, 18, 'Kovács László', 'laszlo.kovacs@example.com', '+36307778888'),
(19, 19, 'Kiss Mária', 'maria.kiss@example.com', '+36301236666'),
(20, 20, 'Gulyás Zsolt', 'zsolt.gulyas@example.com', '+36309998877');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ingatlanok`
--
ALTER TABLE `ingatlanok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `jogihatters`
--
ALTER TABLE `jogihatters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingatlan_id` (`ingatlan_id`);

--
-- A tábla indexei `telepulesek`
--
ALTER TABLE `telepulesek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tulajdonosok`
--
ALTER TABLE `tulajdonosok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingatlan_id` (`ingatlan_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `ingatlanok`
--
ALTER TABLE `ingatlanok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT a táblához `jogihatters`
--
ALTER TABLE `jogihatters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `tulajdonosok`
--
ALTER TABLE `tulajdonosok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `jogihatters`
--
ALTER TABLE `jogihatters`
  ADD CONSTRAINT `jogihatters_ibfk_1` FOREIGN KEY (`ingatlan_id`) REFERENCES `ingatlanok` (`id`);

--
-- Megkötések a táblához `tulajdonosok`
--
ALTER TABLE `tulajdonosok`
  ADD CONSTRAINT `tulajdonosok_ibfk_1` FOREIGN KEY (`ingatlan_id`) REFERENCES `ingatlanok` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
