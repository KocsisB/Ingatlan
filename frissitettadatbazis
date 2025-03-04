-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Feb 04. 10:41
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
-- Tábla szerkezet ehhez a táblához `akcios_hazak`
--

CREATE TABLE `akcios_hazak` (
  `id` int(11) NOT NULL,
  `cim` varchar(255) NOT NULL,
  `alapterulet` int(11) NOT NULL,
  `szobak_szama` int(11) NOT NULL,
  `telek_merete` int(11) DEFAULT NULL,
  `epites_vege` year(4) DEFAULT NULL,
  `allapot` varchar(50) DEFAULT NULL,
  `kep_url` varchar(255) DEFAULT NULL,
  `tipus` varchar(50) DEFAULT NULL,
  `varos` varchar(100) DEFAULT NULL,
  `megye` varchar(100) DEFAULT NULL,
  `ar` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `akcios_hazak`
--

INSERT INTO `akcios_hazak` (`id`, `cim`, `alapterulet`, `szobak_szama`, `telek_merete`, `epites_vege`, `allapot`, `kep_url`, `tipus`, `varos`, `megye`, `ar`) VALUES
(1, 'Hóvirág utca 12.', 120, 3, 500, 2010, 'Jó állapotú', 'https://example.com/1.jpg', 'Családi ház', 'Budapest', 'Budapest', 85000000),
(2, 'Rózsa domb 4.', 85, 2, 300, 2015, 'Kiváló állapotú', 'https://example.com/2.jpg', 'Ikerház', 'Győr', 'Győr-Moson-Sopron', 55000000),
(3, 'Tópart utca 3.', 200, 5, 1200, 2005, 'Jó állapotú', 'https://example.com/3.jpg', 'Családi ház', 'Balatonfüred', 'Veszprém', 125000000),
(4, 'Napfény utca 1.', 60, 1, 150, 2019, 'Új építésű', 'https://example.com/4.jpg', 'Társasház', 'Pécs', 'Baranya', 42000000),
(5, 'Csillag utca 8.', 95, 3, 450, 2012, 'Közepes állapotú', 'https://example.com/5.jpg', 'Családi ház', 'Debrecen', 'Hajdú-Bihar', 67000000),
(6, 'Patak utca 7.', 110, 4, 700, 2018, 'Kiváló állapotú', 'https://example.com/6.jpg', 'Ikerház', 'Szeged', 'Csongrád-Csanád', 78000000),
(7, 'Erdei utca 9.', 140, 5, 1000, 2000, 'Jó állapotú', 'https://example.com/7.jpg', 'Családi ház', 'Miskolc', 'Borsod-Abaúj-Zemplén', 89000000),
(8, 'Kastély tér 2.', 80, 2, 600, 1995, 'Felújítandó', 'https://example.com/8.jpg', 'Házikó', 'Keszthely', 'Zala', 32000000),
(9, 'Vár utca 14.', 150, 4, 850, 2008, 'Jó állapotú', 'https://example.com/9.jpg', 'Családi ház', 'Esztergom', 'Komárom-Esztergom', 97000000),
(10, 'Fő tér 5.', 70, 2, 400, 2021, 'Új építésű', 'https://example.com/10.jpg', 'Társasház', 'Kecskemét', 'Bács-Kiskun', 62000000),
(11, 'Nyár utca 11.', 120, 3, 700, 2004, 'Közepes állapotú', 'https://example.com/11.jpg', 'Családi ház', 'Székesfehérvár', 'Fejér', 71000000),
(12, 'Levendula utca 16.', 90, 3, 550, 2013, 'Kiváló állapotú', 'https://example.com/12.jpg', 'Ikerház', 'Zalaegerszeg', 'Zala', 66000000),
(13, 'Hegyalja út 22.', 200, 6, 1500, 1999, 'Jó állapotú', 'https://example.com/13.jpg', 'Családi ház', 'Eger', 'Heves', 138000000),
(14, 'Tavasz utca 9.', 75, 2, 300, 2018, 'Új építésű', 'https://example.com/14.jpg', 'Házikó', 'Veszprém', 'Veszprém', 48000000),
(15, 'Hold utca 1.', 130, 4, 800, 2006, 'Jó állapotú', 'https://example.com/15.jpg', 'Családi ház', 'Szombathely', 'Vas', 85000000),
(16, 'Párizsi utca 17.', 50, 1, 200, 2022, 'Új építésű', 'https://example.com/16.jpg', 'Társasház', 'Tatabánya', 'Komárom-Esztergom', 37000000),
(17, 'Jókai utca 6.', 115, 4, 600, 2011, 'Jó állapotú', 'https://example.com/17.jpg', 'Családi ház', 'Hódmezővásárhely', 'Csongrád-Csanád', 75000000),
(18, 'Rákóczi utca 3.', 145, 5, 1200, 2003, 'Közepes állapotú', 'https://example.com/18.jpg', 'Házikó', 'Sopron', 'Győr-Moson-Sopron', 112000000),
(19, 'Új élet utca 19.', 160, 6, 1800, 1998, 'Felújítandó', 'https://example.com/19.jpg', 'Családi ház', 'Nyíregyháza', 'Szabolcs-Szatmár-Bereg', 54000000),
(20, 'Petőfi tér 8.', 95, 3, 400, 2017, 'Kiváló állapotú', 'https://example.com/20.jpg', 'Ikerház', 'Szolnok', 'Jász-Nagykun-Szolnok', 82000000),
(21, 'Fenyves utca 10.', 185, 5, 1300, 2012, 'Jó állapotú', 'https://example.com/21.jpg', 'Családi ház', 'Békéscsaba', 'Békés', 99000000),
(22, 'Gyöngyvirág utca 18.', 120, 3, 600, 2007, 'Közepes állapotú', 'https://example.com/22.jpg', 'Házikó', 'Nagykanizsa', 'Zala', 71000000),
(23, 'Pusztaszeri út 33.', 65, 2, 200, 2020, 'Új építésű', 'https://example.com/23.jpg', 'Társasház', 'Gödöllő', 'Pest', 51000000),
(24, 'Móra tér 14.', 140, 4, 750, 2009, 'Jó állapotú', 'https://example.com/24.jpg', 'Családi ház', 'Szentendre', 'Pest', 86000000),
(25, 'Cserkész utca 7.', 110, 3, 550, 2016, 'Kiváló állapotú', 'https://example.com/25.jpg', 'Ikerház', 'Paks', 'Tolna', 79000000),
(26, 'Zrínyi utca 2.', 155, 5, 1300, 2005, 'Jó állapotú', 'https://example.com/26.jpg', 'Családi ház', 'Várpalota', 'Fejér', 102000000),
(27, 'Tó utca 1.', 135, 4, 900, 2010, 'Kiváló állapotú', 'https://example.com/27.jpg', 'Házikó', 'Balatonalmádi', 'Veszprém', 92000000),
(28, 'Duna utca 5.', 90, 2, 450, 2019, 'Új építésű', 'https://example.com/28.jpg', 'Társasház', 'Cegléd', 'Pest', 67000000),
(29, 'Szent Mihály tér 12.', 200, 6, 1500, 2000, 'Felújítandó', 'https://example.com/29.jpg', 'Családi ház', 'Vác', 'Pest', 74000000),
(30, 'Boróka utca 8.', 125, 3, 600, 2011, 'Jó állapotú', 'https://example.com/30.jpg', 'Családi ház', 'Ózd', 'Borsod-Abaúj-Zemplén', 78000000);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `elado_hazak`
--

CREATE TABLE `elado_hazak` (
  `id` int(11) NOT NULL,
  `cim` varchar(255) NOT NULL,
  `alapterulet` decimal(10,2) NOT NULL,
  `szobak_szama` int(11) NOT NULL,
  `telek_merete` decimal(10,2) DEFAULT NULL,
  `epites_vege` int(4) DEFAULT NULL,
  `allapot` varchar(255) DEFAULT NULL,
  `kep_url` varchar(255) DEFAULT NULL,
  `varos` varchar(50) NOT NULL,
  `megye` varchar(100) NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `elado_hazak`
--

INSERT INTO `elado_hazak` (`id`, `cim`, `alapterulet`, `szobak_szama`, `telek_merete`, `epites_vege`, `allapot`, `kep_url`, `varos`, `megye`, `ar`) VALUES
(1, 'Budapest, II. kerület, Szilágyi Erzsébet fasor', '150.00', 5, '400.00', 2015, 'Új', 'https://example.com/house1.jpg', 'Budapest', 'Pest', 75000000),
(2, 'Debrecen, Kossuth utca', '95.00', 4, '300.00', 2005, 'Közepes', 'https://example.com/house2.jpg', 'Debrecen', 'Hajdú-Bihar', 53000000),
(3, 'Szeged, Tisza utca', '120.00', 5, '350.00', 2000, 'Felújított', 'https://example.com/house3.jpg', 'Szeged', 'Csongrád', 65000000),
(4, 'Pécs, Kertváros', '85.00', 3, '250.00', 2010, 'Új', 'https://example.com/house4.jpg', 'Pécs', 'Baranya', 46000000),
(5, 'Nyíregyháza, Hunyadi utca', '110.00', 4, '300.00', 2008, 'Jó', 'https://example.com/house5.jpg', 'Nyíregyháza', 'Szabolcs-Szatmár-Bereg', 48000000),
(6, 'Veszprém, Kossuth utca', '100.00', 4, '200.00', 2015, 'Új', 'https://example.com/house6.jpg', 'Veszprém', 'Veszprém', 53000000),
(7, 'Miskolc, Tiszai lakótelep', '130.00', 5, '350.00', 2001, 'Felújított', 'https://example.com/house7.jpg', 'Miskolc', 'Borsod-Abaúj-Zemplén', 59000000),
(8, 'Zalaegerszeg, Gábor Áron utca', '95.00', 4, '250.00', 2000, 'Közepes', 'https://example.com/house8.jpg', 'Zalaegerszeg', 'Zala', 45000000),
(9, 'Szolnok, Tószegi utca', '110.00', 4, '300.00', 2006, 'Új', 'https://example.com/house9.jpg', 'Szolnok', 'Jász-Nagykun-Szolnok', 52000000),
(10, 'Kecskemét, Katona József utca', '95.00', 3, '220.00', 2009, 'Jó', 'https://example.com/house10.jpg', 'Kecskemét', 'Bács-Kiskun', 49000000),
(11, 'Budapest, IV. kerület', '120.00', 4, '350.00', 2010, 'Új', 'https://example.com/house11.jpg', 'Budapest', 'Pest', 78000000),
(12, 'Debrecen, Lajos utca', '130.00', 5, '400.00', 2013, 'Jó', 'https://example.com/house12.jpg', 'Debrecen', 'Hajdú-Bihar', 67000000),
(13, 'Szeged, Kiskörút', '85.00', 3, '250.00', 2005, 'Felújított', 'https://example.com/house13.jpg', 'Szeged', 'Csongrád', 51000000),
(14, 'Pécs, Búza tér', '100.00', 4, '200.00', 2015, 'Új', 'https://example.com/house14.jpg', 'Pécs', 'Baranya', 55000000),
(15, 'Nyíregyháza, Szatmári utca', '90.00', 3, '280.00', 2003, 'Jó', 'https://example.com/house15.jpg', 'Nyíregyháza', 'Szabolcs-Szatmár-Bereg', 46000000);

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
-- A tábla indexei `akcios_hazak`
--
ALTER TABLE `akcios_hazak`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `elado_hazak`
--
ALTER TABLE `elado_hazak`
  ADD PRIMARY KEY (`id`);

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
