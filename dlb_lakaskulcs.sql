-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Jan 24. 11:21
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
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jelszo` varchar(255) NOT NULL,
  `reg_datum` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalo_bejelentkezes`
--

CREATE TABLE `felhasznalo_bejelentkezes` (
  `BejelentkezoSzolgaltato` varchar(255) NOT NULL,
  `SzolgaltatoKulcs` varchar(255) NOT NULL,
  `SzolgaltatoMegjelenitettNev` longtext DEFAULT NULL,
  `FelhasznaloId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `varos` varchar(20) NOT NULL,
  `megye` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `ingatlanok`
--

INSERT INTO `ingatlanok` (`id`, `cim`, `alapterulet`, `szobak_szama`, `telek_merete`, `epites_vege`, `allapot`, `kep_url`, `tipus`, `varos`, `megye`) VALUES
(1, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Budapest', ''),
(2, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Debrecen', ''),
(3, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Szeged', ''),
(4, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Pécs', ''),
(5, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Miskolc', ''),
(6, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Győr', ''),
(7, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Nyíregyháza', ''),
(8, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Kecskemét', ''),
(9, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Székesfehérvár', ''),
(10, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Szombathely', ''),
(11, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Veszprém', ''),
(12, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Eger', ''),
(13, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Tatabánya', ''),
(14, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Kaposvár', ''),
(15, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Zalaegerszeg', ''),
(16, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Békéscsaba', ''),
(17, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Sopron', ''),
(18, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Ajka', ''),
(19, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Nagykanizsa', ''),
(20, '', '0.00', 0, NULL, NULL, NULL, NULL, NULL, 'Dunaújváros', ''),
(21, 'Budapest, Kossuth Lajos utca 12.', '85.50', 3, '200.00', 1995, 'Felújított', 'https://example.com/kep1.jpg', 'Ház', 'Budapest', ''),
(22, 'Debrecen, Piac utca 5.', '65.00', 2, '150.00', 1980, 'Használt', 'https://example.com/kep2.jpg', 'Lakás', 'Debrecen', ''),
(23, 'Szeged, Kálvária tér 10.', '120.00', 4, '350.00', 2010, 'Új', 'https://example.com/kep3.jpg', 'Ház', 'Szeged', ''),
(24, 'Pécs, Rákóczi utca 22.', '75.00', 3, '180.00', 2005, 'Felújított', 'https://example.com/kep4.jpg', 'Lakás', 'Pécs', ''),
(25, 'Miskolc, Hunyadi utca 1.', '95.00', 3, '250.00', 2000, 'Használt', 'https://example.com/kep5.jpg', 'Ház', 'Miskolc', ''),
(26, 'Győr, Alkotmány utca 8.', '70.00', 2, '140.00', 1990, 'Felújított', 'https://example.com/kep6.jpg', 'Lakás', 'Győr', ''),
(27, 'Veszprém, Kossuth Lajos utca 25.', '100.00', 4, '300.00', 2008, 'Új', 'https://example.com/kep7.jpg', 'Ház', 'Veszprém', ''),
(28, 'Kecskemét, Széchenyi utca 14.', '80.00', 3, '220.00', 2000, 'Használt', 'https://example.com/kep8.jpg', 'Ház', 'Kecskemét', ''),
(29, 'Nyíregyháza, Búza utca 19.', '55.00', 2, '120.00', 1985, 'Felújított', 'https://example.com/kep9.jpg', 'Lakás', 'Nyíregyháza', ''),
(30, 'Szolnok, Tisza utca 7.', '95.00', 3, '250.00', 2003, 'Használt', 'https://example.com/kep10.jpg', 'Ház', 'Szolnok', ''),
(31, 'Székesfehérvár, Károlyi Mihály utca 18.', '110.00', 4, '270.00', 2005, 'Új', 'https://example.com/kep11.jpg', 'Ház', 'Székesfehérvár', ''),
(32, 'Eger, Szépasszonyvölgy 3.', '130.00', 5, '500.00', 2015, 'Új', 'https://example.com/kep12.jpg', 'Ház', 'Eger', ''),
(33, 'Sopron, Várkerület 12.', '90.00', 3, '220.00', 1999, 'Felújított', 'https://example.com/kep13.jpg', 'Lakás', 'Sopron', ''),
(34, 'Zalaegerszeg, Szegfű utca 4.', '60.00', 2, '100.00', 1980, 'Használt', 'https://example.com/kep14.jpg', 'Lakás', 'Zalaegerszeg', ''),
(35, 'Pécs, Petőfi utca 3.', '75.00', 3, '180.00', 2002, 'Felújított', 'https://example.com/kep15.jpg', 'Lakás', 'Pécs', ''),
(36, 'Tatabánya, Kossuth Lajos utca 33.', '85.00', 3, '200.00', 1995, 'Használt', 'https://example.com/kep16.jpg', 'Ház', 'Tatabánya', ''),
(37, 'Kaposvár, Ady Endre utca 50.', '120.00', 4, '320.00', 2010, 'Új', 'https://example.com/kep17.jpg', 'Ház', 'Kaposvár', ''),
(38, 'Cegléd, Kossuth Lajos utca 5.', '65.00', 2, '150.00', 1998, 'Felújított', 'https://example.com/kep18.jpg', 'Lakás', 'Cegléd', ''),
(39, 'Szombathely, Rákóczi Ferenc utca 10.', '100.00', 4, '240.00', 2006, 'Használt', 'https://example.com/kep19.jpg', 'Ház', 'Szombathely', ''),
(40, 'Jászberény, Petőfi utca 22.', '80.00', 3, '190.00', 2001, 'Felújított', 'https://example.com/kep20.jpg', 'Lakás', 'Jászberény', ''),
(41, 'Békéscsaba, Andrássy út 8.', '70.00', 2, '150.00', 1990, 'Használt', 'https://example.com/kep21.jpg', 'Ház', 'Békéscsaba', ''),
(42, 'Miskolc, Diósgyőri vár utca 3.', '95.00', 3, '220.00', 2007, 'Felújított', 'https://example.com/kep22.jpg', 'Lakás', 'Miskolc', ''),
(43, 'Csobád, Dózsa György utca 3.', '105.00', 4, '280.00', 2005, 'Használt', 'https://example.com/kep24.jpg', 'Ház', 'Csobád', '');

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
  `varosok` varchar(255) DEFAULT NULL,
  `megye` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `telepulesek`
--

INSERT INTO `telepulesek` (`id`, `varosok`, `megye`) VALUES
(1, 'Budapest', ''),
(2, 'Debrecen', ''),
(3, 'Szeged', ''),
(4, 'Pécs', ''),
(5, 'Miskolc', ''),
(6, 'Győr', ''),
(7, 'Nyíregyháza', ''),
(8, 'Kecskemét', ''),
(9, 'Székesfehérvár', ''),
(10, 'Szombathely', ''),
(11, 'Veszprém', ''),
(12, 'Eger', ''),
(13, 'Tatabánya', ''),
(14, 'Kaposvár', ''),
(15, 'Zalaegerszeg', ''),
(16, 'Békéscsaba', ''),
(17, 'Sopron', ''),
(18, 'Ajka', ''),
(19, 'Nagykanizsa', ''),
(20, 'Dunaújváros', '');

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
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

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
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `ingatlanok`
--
ALTER TABLE `ingatlanok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
