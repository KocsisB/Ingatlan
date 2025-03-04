-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Már 04. 10:57
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
  `szobakSzama` int(11) NOT NULL,
  `telekMerete` int(11) DEFAULT NULL,
  `epitesVege` year(4) DEFAULT NULL,
  `allapot` varchar(50) DEFAULT NULL,
  `kepUrl` varchar(255) DEFAULT NULL,
  `tipus` varchar(50) DEFAULT NULL,
  `varos` varchar(100) DEFAULT NULL,
  `megye` varchar(100) DEFAULT NULL,
  `ar` bigint(20) NOT NULL,
  `regiAr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `akcios_hazak`
--

INSERT INTO `akcios_hazak` (`id`, `cim`, `alapterulet`, `szobakSzama`, `telekMerete`, `epitesVege`, `allapot`, `kepUrl`, `tipus`, `varos`, `megye`, `ar`, `regiAr`) VALUES
(1, 'Hóvirág utca 12.', 120, 3, 500, 2010, 'Jó állapotú', 'https://example.com/1.jpg', 'Családi ház', 'Budapest', 'Budapest', 85000000, 0),
(2, 'Rózsa domb 4.', 85, 2, 300, 2015, 'Kiváló állapotú', 'https://example.com/2.jpg', 'Ikerház', 'Győr', 'Győr-Moson-Sopron', 55000000, 0),
(3, 'Tópart utca 3.', 200, 5, 1200, 2005, 'Jó állapotú', 'https://example.com/3.jpg', 'Családi ház', 'Balatonfüred', 'Veszprém', 125000000, 0),
(4, 'Napfény utca 1.', 60, 1, 150, 2019, 'Új építésű', 'https://example.com/4.jpg', 'Társasház', 'Pécs', 'Baranya', 42000000, 0),
(5, 'Csillag utca 8.', 95, 3, 450, 2012, 'Közepes állapotú', 'https://example.com/5.jpg', 'Családi ház', 'Debrecen', 'Hajdú-Bihar', 67000000, 0),
(6, 'Patak utca 7.', 110, 4, 700, 2018, 'Kiváló állapotú', 'https://example.com/6.jpg', 'Ikerház', 'Szeged', 'Csongrád-Csanád', 78000000, 0),
(7, 'Erdei utca 9.', 140, 5, 1000, 2000, 'Jó állapotú', 'https://example.com/7.jpg', 'Családi ház', 'Miskolc', 'Borsod-Abaúj-Zemplén', 89000000, 0),
(8, 'Kastély tér 2.', 80, 2, 600, 1995, 'Felújítandó', 'https://example.com/8.jpg', 'Házikó', 'Keszthely', 'Zala', 32000000, 0),
(9, 'Vár utca 14.', 150, 4, 850, 2008, 'Jó állapotú', 'https://example.com/9.jpg', 'Családi ház', 'Esztergom', 'Komárom-Esztergom', 97000000, 0),
(10, 'Fő tér 5.', 70, 2, 400, 2021, 'Új építésű', 'https://example.com/10.jpg', 'Társasház', 'Kecskemét', 'Bács-Kiskun', 62000000, 0),
(11, 'Nyár utca 11.', 120, 3, 700, 2004, 'Közepes állapotú', 'https://example.com/11.jpg', 'Családi ház', 'Székesfehérvár', 'Fejér', 71000000, 0),
(12, 'Levendula utca 16.', 90, 3, 550, 2013, 'Kiváló állapotú', 'https://example.com/12.jpg', 'Ikerház', 'Zalaegerszeg', 'Zala', 66000000, 0),
(13, 'Hegyalja út 22.', 200, 6, 1500, 1999, 'Jó állapotú', 'https://example.com/13.jpg', 'Családi ház', 'Eger', 'Heves', 138000000, 0),
(14, 'Tavasz utca 9.', 75, 2, 300, 2018, 'Új építésű', 'https://example.com/14.jpg', 'Házikó', 'Veszprém', 'Veszprém', 48000000, 0),
(15, 'Hold utca 1.', 130, 4, 800, 2006, 'Jó állapotú', 'https://example.com/15.jpg', 'Családi ház', 'Szombathely', 'Vas', 85000000, 0),
(16, 'Párizsi utca 17.', 50, 1, 200, 2022, 'Új építésű', 'https://example.com/16.jpg', 'Társasház', 'Tatabánya', 'Komárom-Esztergom', 37000000, 0),
(17, 'Jókai utca 6.', 115, 4, 600, 2011, 'Jó állapotú', 'https://example.com/17.jpg', 'Családi ház', 'Hódmezővásárhely', 'Csongrád-Csanád', 75000000, 0),
(18, 'Rákóczi utca 3.', 145, 5, 1200, 2003, 'Közepes állapotú', 'https://example.com/18.jpg', 'Házikó', 'Sopron', 'Győr-Moson-Sopron', 112000000, 0),
(19, 'Új élet utca 19.', 160, 6, 1800, 1998, 'Felújítandó', 'https://example.com/19.jpg', 'Családi ház', 'Nyíregyháza', 'Szabolcs-Szatmár-Bereg', 54000000, 0),
(20, 'Petőfi tér 8.', 95, 3, 400, 2017, 'Kiváló állapotú', 'https://example.com/20.jpg', 'Ikerház', 'Szolnok', 'Jász-Nagykun-Szolnok', 82000000, 0),
(21, 'Fenyves utca 10.', 185, 5, 1300, 2012, 'Jó állapotú', 'https://example.com/21.jpg', 'Családi ház', 'Békéscsaba', 'Békés', 99000000, 0),
(22, 'Gyöngyvirág utca 18.', 120, 3, 600, 2007, 'Közepes állapotú', 'https://example.com/22.jpg', 'Házikó', 'Nagykanizsa', 'Zala', 71000000, 0),
(23, 'Pusztaszeri út 33.', 65, 2, 200, 2020, 'Új építésű', 'https://example.com/23.jpg', 'Társasház', 'Gödöllő', 'Pest', 51000000, 0),
(24, 'Móra tér 14.', 140, 4, 750, 2009, 'Jó állapotú', 'https://example.com/24.jpg', 'Családi ház', 'Szentendre', 'Pest', 86000000, 0),
(25, 'Cserkész utca 7.', 110, 3, 550, 2016, 'Kiváló állapotú', 'https://example.com/25.jpg', 'Ikerház', 'Paks', 'Tolna', 79000000, 0),
(26, 'Zrínyi utca 2.', 155, 5, 1300, 2005, 'Jó állapotú', 'https://example.com/26.jpg', 'Családi ház', 'Várpalota', 'Fejér', 102000000, 0),
(27, 'Tó utca 1.', 135, 4, 900, 2010, 'Kiváló állapotú', 'https://example.com/27.jpg', 'Házikó', 'Balatonalmádi', 'Veszprém', 92000000, 0),
(28, 'Duna utca 5.', 90, 2, 450, 2019, 'Új építésű', 'https://example.com/28.jpg', 'Társasház', 'Cegléd', 'Pest', 67000000, 0),
(29, 'Szent Mihály tér 12.', 200, 6, 1500, 2000, 'Felújítandó', 'https://example.com/29.jpg', 'Családi ház', 'Vác', 'Pest', 74000000, 0),
(30, 'Boróka utca 8.', 125, 3, 600, 2011, 'Jó állapotú', 'https://example.com/30.jpg', 'Családi ház', 'Ózd', 'Borsod-Abaúj-Zemplén', 78000000, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `berelhetohazak`
--

CREATE TABLE `berelhetohazak` (
  `id` int(11) NOT NULL,
  `cim` varchar(255) NOT NULL,
  `alapterulet` decimal(10,2) NOT NULL,
  `szobakSzama` int(11) NOT NULL,
  `telekMerete` decimal(10,2) DEFAULT NULL,
  `epitesVege` int(4) DEFAULT NULL,
  `allapot` varchar(255) DEFAULT NULL,
  `kepUrl` varchar(255) DEFAULT NULL,
  `varos` varchar(50) NOT NULL,
  `megye` varchar(100) NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `berelhetohazak`
--

INSERT INTO `berelhetohazak` (`id`, `cim`, `alapterulet`, `szobakSzama`, `telekMerete`, `epitesVege`, `allapot`, `kepUrl`, `varos`, `megye`, `ar`) VALUES
(1, 'Kossuth utca 12, Budapest', '100.50', 3, '250.00', 1995, 'Új', 'https://example.com/images/haz1.jpg', 'Budapest', 'Pest', 120000),
(2, 'Petőfi utca 45, Debrecen', '80.00', 2, '150.00', 2000, 'Jó', 'https://example.com/images/haz2.jpg', 'Debrecen', 'Hajdú-Bihar', 80000),
(3, 'Széchenyi tér 5, Pécs', '120.00', 4, '300.00', 1985, 'Felújított', 'https://example.com/images/haz3.jpg', 'Pécs', 'Baranya', 150000),
(4, 'Rákóczi utca 20, Szeged', '90.00', 3, '200.00', 2010, 'Új', 'https://example.com/images/haz4.jpg', 'Szeged', 'Csongrád', 95000),
(5, 'Fő utca 10, Miskolc', '70.00', 2, '120.00', 2015, 'Kiváló', 'https://example.com/images/haz5.jpg', 'Miskolc', 'Borsod-Abaúj-Zemplén', 75000),
(6, 'Szent István körút 8, Budapest', '150.00', 5, '400.00', 2005, 'Jó', 'https://example.com/images/haz6.jpg', 'Budapest', 'Pest', 200000),
(7, 'Váci utca 33, Budapest', '100.00', 3, '220.00', 2012, 'Kiváló', 'https://example.com/images/haz7.jpg', 'Budapest', 'Pest', 95000),
(8, 'Füzes utca 50, Győr', '85.00', 3, '180.00', 1998, 'Felújított', 'https://example.com/images/haz8.jpg', 'Győr', 'Győr-Moson-Sopron', 110000),
(9, 'Kertész utca 15, Nyíregyháza', '95.00', 3, '200.00', 2000, 'Új', 'https://example.com/images/haz9.jpg', 'Nyíregyháza', 'Szabolcs-Szatmár-Bereg', 85000),
(10, 'Dózsa György út 18, Pécs', '60.00', 2, '130.00', 1990, 'Jó', 'https://example.com/images/haz10.jpg', 'Pécs', 'Baranya', 80000),
(11, 'Kálvária utca 25, Szombathely', '110.00', 4, '280.00', 1995, 'Felújított', 'https://example.com/images/haz11.jpg', 'Szombathely', 'Vas', 135000),
(12, 'Hunyadi utca 7, Sopron', '75.00', 2, '150.00', 2010, 'Új', 'https://example.com/images/haz12.jpg', 'Sopron', 'Győr-Moson-Sopron', 55000),
(13, 'Rákóczi utca 12, Székesfehérvár', '95.00', 3, '230.00', 2002, 'Jó', 'https://example.com/images/haz13.jpg', 'Székesfehérvár', 'Fejér', 100000),
(14, 'Kossuth Lajos utca 10, Kecskemét', '85.00', 3, '180.00', 2008, 'Új', 'https://example.com/images/haz14.jpg', 'Kecskemét', 'Bács-Kiskun', 120000),
(15, 'Bajcsy-Zsilinszky utca 12, Veszprém', '95.00', 3, '220.00', 1995, 'Felújított', 'https://example.com/images/haz15.jpg', 'Veszprém', 'Veszprém', 90000),
(16, 'Rózsa utca 9, Pécs', '80.00', 2, '160.00', 1990, 'Jó', 'https://example.com/images/haz16.jpg', 'Pécs', 'Baranya', 85000),
(17, 'Táncsics utca 31, Szeged', '120.00', 4, '300.00', 2000, 'Felújított', 'https://example.com/images/haz17.jpg', 'Szeged', 'Csongrád', 110000),
(18, 'Bécsi utca 10, Budapest', '140.00', 5, '350.00', 2008, 'Új', 'https://example.com/images/haz18.jpg', 'Budapest', 'Pest', 140000),
(19, 'József Attila utca 8, Zalaegerszeg', '90.00', 2, '180.00', 1995, 'Jó', 'https://example.com/images/haz19.jpg', 'Zalaegerszeg', 'Zala', 95000),
(20, 'Árpád utca 14, Miskolc', '70.00', 2, '120.00', 2005, 'Jó', 'https://example.com/images/haz20.jpg', 'Miskolc', 'Borsod-Abaúj-Zemplén', 70000);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `elado_hazak`
--

CREATE TABLE `elado_hazak` (
  `id` int(11) NOT NULL,
  `cim` varchar(255) NOT NULL,
  `alapterulet` decimal(10,2) NOT NULL,
  `szobakSzama` int(11) NOT NULL,
  `telekMerete` decimal(10,2) DEFAULT NULL,
  `epitesVege` int(4) DEFAULT NULL,
  `allapot` varchar(255) DEFAULT NULL,
  `kepUrl` varchar(255) DEFAULT NULL,
  `varos` varchar(50) NOT NULL,
  `megye` varchar(100) NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `elado_hazak`
--

INSERT INTO `elado_hazak` (`id`, `cim`, `alapterulet`, `szobakSzama`, `telekMerete`, `epitesVege`, `allapot`, `kepUrl`, `varos`, `megye`, `ar`) VALUES
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
  `jelszo` varchar(255) NOT NULL
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
-- Tábla szerkezet ehhez a táblához `hazak`
--

CREATE TABLE `hazak` (
  `id` int(11) NOT NULL,
  `cim` varchar(255) DEFAULT NULL,
  `szobak_szama` int(11) DEFAULT NULL,
  `berleti_dij` decimal(10,2) DEFAULT NULL,
  `tulajdonos_neve` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `hazak`
--

INSERT INTO `hazak` (`id`, `cim`, `szobak_szama`, `berleti_dij`, `tulajdonos_neve`) VALUES
(1, 'Kossuth utca 12, Budapest', 3, '120000.00', 'Kovács János'),
(2, 'Petőfi utca 45, Debrecen', 2, '80000.00', 'Nagy Mária'),
(3, 'Széchenyi tér 5, Pécs', 4, '150000.00', 'Tóth Béla'),
(4, 'Rákóczi utca 20, Szeged', 1, '60000.00', 'Varga Zoltán'),
(5, 'Fő utca 10, Miskolc', 2, '75000.00', 'Horváth Katalin'),
(6, 'Szent István körút 8, Budapest', 5, '200000.00', 'Kiss László'),
(7, 'Váci utca 33, Budapest', 2, '95000.00', 'Farkas Gábor'),
(8, 'Füzes utca 50, Győr', 3, '110000.00', 'Szabó Péter'),
(9, 'Kertész utca 15, Nyíregyháza', 3, '85000.00', 'Lakatos András'),
(10, 'Dózsa György út 18, Pécs', 2, '80000.00', 'Tóth Júlia'),
(11, 'Kálvária utca 25, Szombathely', 4, '135000.00', 'Molnár Tamás'),
(12, 'Hunyadi utca 7, Sopron', 1, '55000.00', 'Varga Eszter'),
(13, 'Rákóczi utca 12, Székesfehérvár', 3, '100000.00', 'Németh Miklós'),
(14, 'Kossuth Lajos utca 10, Kecskemét', 4, '120000.00', 'Papp Zoltán'),
(15, 'Bajcsy-Zsilinszky utca 12, Veszprém', 3, '90000.00', 'Kovács Béla'),
(16, 'Rózsa utca 9, Pécs', 2, '85000.00', 'Benedek Erika'),
(17, 'Táncsics utca 31, Szeged', 3, '110000.00', 'Szabó László'),
(18, 'Bécsi utca 10, Budapest', 4, '140000.00', 'Farkas Péter'),
(19, 'József Attila utca 8, Zalaegerszeg', 3, '95000.00', 'Szekeres Gabriella'),
(20, 'Árpád utca 14, Miskolc', 2, '70000.00', 'László Tibor'),
(21, 'Kisfaludy utca 22, Szombathely', 3, '105000.00', 'Rózsa László'),
(22, 'Római part 7, Budapest', 5, '250000.00', 'Tóth Gábor'),
(23, 'Kassai utca 18, Nyíregyháza', 3, '95000.00', 'Németh Zsófia'),
(24, 'Petőfi utca 31, Eger', 2, '80000.00', 'Varga József'),
(25, 'Kereszt utca 12, Miskolc', 4, '125000.00', 'Takács Tamás'),
(26, 'Jókai utca 21, Debrecen', 2, '85000.00', 'Horváth István'),
(27, 'Szentendrei utca 10, Budapest', 3, '100000.00', 'Gál Miklós'),
(28, 'Erzsébet utca 5, Székesfehérvár', 2, '90000.00', 'Lukács Andrea'),
(29, 'Kálvin tér 8, Pécs', 3, '110000.00', 'Tóth Márton'),
(30, 'Kossuth utca 30, Sopron', 4, '130000.00', 'Gábor Zoltán'),
(31, 'Hősök tere 6, Szolnok', 2, '75000.00', 'Kovács Erika'),
(32, 'Bánki Donát utca 14, Eger', 3, '100000.00', 'Bíró Péter'),
(33, 'Táncsics Mihály utca 5, Veszprém', 4, '140000.00', 'Benedek Zoltán'),
(34, 'Füzes utca 8, Debrecen', 2, '70000.00', 'Horváth Zoltán'),
(35, 'Kossuth utca 28, Pécs', 3, '95000.00', 'Péter Márk');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ingatlanok`
--

CREATE TABLE `ingatlanok` (
  `id` int(11) NOT NULL,
  `cim` varchar(255) NOT NULL,
  `alapterulet` decimal(10,2) NOT NULL,
  `szobakSzama` int(11) NOT NULL,
  `telekMerete` decimal(10,2) DEFAULT NULL,
  `epitesVege` int(11) DEFAULT NULL,
  `allapot` varchar(255) DEFAULT NULL,
  `kepUrl` varchar(255) DEFAULT NULL,
  `tipus` varchar(255) DEFAULT NULL,
  `varos` varchar(20) NOT NULL,
  `megye` varchar(100) NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `ingatlanok`
--

INSERT INTO `ingatlanok` (`id`, `cim`, `alapterulet`, `szobakSzama`, `telekMerete`, `epitesVege`, `allapot`, `kepUrl`, `tipus`, `varos`, `megye`, `ar`) VALUES
(64, 'Kossuth Lajos utca 12.', '100.00', 3, '800.00', 2001, 'Felújított', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBlWNDdtvsLlWrN2rowfyRH_sIIqvOnSn4Hw&s', 'Családi ház', 'Budapest', 'Pest', 55000000),
(65, 'Petőfi Sándor utca 5.', '75.00', 2, '500.00', 2010, 'Új építésű', 'https://hazgyarto.hu/images/marti_kissebb.jpg', 'Társasházi lakás', 'Debrecen', 'Hajdú-Bihar', 32000000),
(66, 'Arany János utca 8.', '120.00', 4, '1000.00', 1995, 'Közepes állapotú', 'https://zsuzsanna.ingatlan.hu/images/gallery/szekszard-tolnai-lajos-utcai-csaladi-haz-elado.jpg', 'Családi ház', 'Győr', 'Győr-Moson-Sopron', 45000000),
(67, 'Hunyadi tér 3.', '60.00', 1, NULL, 2020, 'Új építésű', 'https://th.bing.com/th/id/OIP.MwLeKboj7vyGjRSrbITt8wHaE8?w=269&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Panel lakás', 'Miskolc', 'Borsod-Abaúj-Zemplén', 27000000),
(68, 'Bartók Béla út 18.', '90.00', 3, '700.00', 1980, 'Felújításra szorul', 'https://th.bing.com/th/id/OIP.I1e6UEvM2VJzsTzXkEqCnAHaFn?w=237&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Pécs', 'Baranya', 37000000),
(69, 'Ady Endre út 9.', '110.00', 4, '950.00', 2005, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.2wZp9me8QBLXO9jYDfsvnQHaEK?w=309&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Szeged', 'Csongrád-Csanád', 50000000),
(70, 'Rákóczi Ferenc utca 11.', '80.00', 3, '600.00', 2015, 'Új építésű', 'https://th.bing.com/th/id/OIP.L9MPCX3rKQL6igMVmN0SbQHaEK?w=315&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Eger', 'Heves', 42000000),
(71, 'Széchenyi tér 1.', '95.00', 3, NULL, 1990, 'Közepes állapotú', 'https://th.bing.com/th/id/OIP.91onJM7lKHJQHddwHQ0RVgHaEo?w=253&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Társasházi lakás', 'Székesfehérvár', 'Fejér', 36000000),
(72, 'Deák Ferenc tér 7.', '150.00', 5, '1200.00', 1985, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.zMY-YO094RsWvYnleOveFQHaE8?w=235&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Sopron', 'Győr-Moson-Sopron', 60000000),
(73, 'Dózsa György út 15.', '70.00', 2, NULL, 2021, 'Új építésű', 'https://th.bing.com/th/id/OIP.1m8iTohGcHBr__R_2sMABgHaFj?w=250&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Panel lakás', 'Nyíregyháza', 'Szabolcs-Szatmár-Bereg', 30000000),
(74, 'Táncsics Mihály utca 4.', '140.00', 4, '1100.00', 1998, 'Felújított', 'https://th.bing.com/th/id/OIP.tjrfGZGkHmyfR90yWj0aegHaEK?w=321&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Kecskemét', 'Bács-Kiskun', 48000000),
(75, 'Árpád út 21.', '85.00', 3, '550.00', 2003, 'Jó állapotú', 'https://th.bing.com/th?id=OIF.%2bSww7zohBSnJ0N5Cdbi6pA&w=247&h=186&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Zalaegerszeg', 'Zala', 41000000),
(76, 'Ferenc körút 6.', '55.00', 2, NULL, 2018, 'Új építésű', 'https://th.bing.com/th/id/OIP.OJ_uIWtrrXkNEOxlv4TbNQHaEN?w=294&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Társasházi lakás', 'Szekszárd', 'Tolna', 25000000),
(77, 'Kálvin tér 14.', '135.00', 5, '1300.00', 1992, 'Közepes állapotú', 'https://th.bing.com/th/id/OIP.aLctuN_9P6GzChTdaJFuawHaEJ?w=297&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Szolnok', 'Jász-Nagykun-Szolnok', 52000000),
(78, 'Vörösmarty utca 16.', '100.00', 3, '900.00', 1989, 'Felújításra szorul', 'https://th.bing.com/th/id/OIP.DvWy5Ll7sGF7H4SQlU-MQwHaHa?w=182&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Tatabánya', 'Komárom-Esztergom', 39000000),
(79, 'Béke út 19.', '60.00', 2, NULL, 2022, 'Új építésű', 'https://th.bing.com/th/id/OIP.s0m3pHV-SsE97ZKUw8T7-wHaFR?w=265&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Panel lakás', 'Szombathely', 'Vas', 28000000),
(80, 'Radnóti Miklós utca 2.', '115.00', 4, '1000.00', 2000, 'Felújított', 'https://th.bing.com/th/id/OIP.YLGvAym0ApwiokiLYyCD1gHaE5?w=283&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Esztergom', 'Komárom-Esztergom', 49000000),
(81, 'Kazinczy utca 10.', '80.00', 3, '650.00', 2008, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.NHqLoEdgzyHsBNQImSGqXAHaE4?w=285&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Veszprém', 'Veszprém', 43000000),
(82, 'Váci Mihály utca 25.', '90.00', 3, NULL, 1995, 'Közepes állapotú', 'https://th.bing.com/th?id=OIF.CncnD%2bQhDM6QaZDhbDivOg&w=249&h=186&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Társasházi lakás', 'Kapuvár', 'Győr-Moson-Sopron', 36000000),
(83, 'Kossuth Lajos utca 3.', '110.00', 4, '950.00', 2008, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.qS2s6vf5P6CZMiALhpsmHgHaEK?w=317&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Debrecen', 'Hajdú-Bihar', 47000000),
(84, 'Széchenyi utca 22.', '130.00', 5, '1200.00', 2002, 'Felújított', 'https://th.bing.com/th/id/OIP.sLZcQRfKpDFBG6WzoTzYxAHaEK?w=337&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Pécs', 'Baranya', 54000000),
(85, 'Petőfi utca 11.', '95.00', 3, '700.00', 2011, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.y-XkJOkOek_29z5_rWlQeAHaEK?w=293&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Székesfehérvár', 'Fejér', 46000000),
(86, 'Hunyadi utca 7.', '125.00', 4, '800.00', 2000, 'Közepes állapotú', 'https://th.bing.com/th/id/OIP.cZ9yDrgI9klyy0tOxjiwuwHaEK?w=273&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Miskolc', 'Borsod-Abaúj-Zemplén', 51000000),
(87, 'József Attila utca 9.', '90.00', 3, '600.00', 2015, 'Új építésű', 'https://th.bing.com/th/id/OIP.QePHVhsTAFLtxfnyV1xoJwHaEK?w=314&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Nyíregyháza', 'Szabolcs-Szatmár-Bereg', 39000000),
(88, 'Kossuth utca 4.', '150.00', 5, '1300.00', 2005, 'Felújított', 'https://th.bing.com/th/id/OIP.gX9g79ZXtjjTZbMQde4EbwHaEK?w=295&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Szeged', 'Csongrád-Csanád', 62000000),
(89, 'Szabadság utca 21.', '110.00', 4, '900.00', 2010, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.R7oPkjJjmrckzJ2pXzWoygHaE8?w=231&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Eger', 'Heves', 50000000),
(90, 'Rákóczi utca 8.', '95.00', 3, '750.00', 2017, 'Új építésű', 'https://th.bing.com/th/id/OIP.XZ7ihwAAW7QeZZ8D3gtq4gHaEK?w=249&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Veszprém', 'Veszprém', 46000000),
(91, 'Béke utca 3.', '80.00', 2, '500.00', 2020, 'Új építésű', 'https://th.bing.com/th/id/OIP.x2NcYs5pNr76F_iN5NxSkwHaEK?w=247&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Panel lakás', 'Szombathely', 'Vas', 29000000),
(92, 'Hősök tere 5.', '120.00', 4, '1000.00', 2003, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.UEx5xLMsRbzm32eg2yFYXgHaEK?w=245&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Tatabánya', 'Komárom-Esztergom', 55000000),
(93, 'Szent István utca 10.', '70.00', 2, '400.00', 2018, 'Új építésű', 'https://th.bing.com/th/id/OIP.3wn_kO4gNoF72oRfKqndkQHaEK?w=251&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Panel lakás', 'Szekszárd', 'Tolna', 27000000),
(94, 'Pesti utca 9.', '140.00', 5, '1200.00', 2010, 'Felújított', 'https://th.bing.com/th/id/OIP.lZkM_pNr9q0M0BduMLzxwAHaEK?w=315&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Kecskemét', 'Bács-Kiskun', 60000000),
(95, 'Vörösmarty utca 8.', '100.00', 3, '900.00', 2001, 'Közepes állapotú', 'https://th.bing.com/th/id/OIP.tYOcmUg8xUrx_F9Uk7_56wHaEo?w=276&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Veszprém', 'Veszprém', 45000000),
(96, 'Kálvin tér 6.', '95.00', 3, '800.00', 2016, 'Új építésű', 'https://th.bing.com/th/id/OIP.oYoicj70vcbWxz7fBslfkwHaEK?w=276&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Szolnok', 'Jász-Nagykun-Szolnok', 47000000),
(97, 'Fő utca 4.', '110.00', 4, '1000.00', 2014, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.BA-3rm24CVVRS-x7AznTcQHaEK?w=302&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Sopron', 'Győr-Moson-Sopron', 52000000),
(98, 'Arany János utca 12.', '120.00', 4, '1050.00', 2007, 'Felújított', 'https://th.bing.com/th/id/OIP.LfD-dNHD0FE8m73XwODwUwHaEK?w=276&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Pécs', 'Baranya', 55000000),
(99, 'Petőfi Sándor utca 3.', '85.00', 3, '650.00', 2012, 'Közepes állapotú', 'https://th.bing.com/th/id/OIP.ogV9LF1bd4g61L4UbWxfHQHaEK?w=292&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Székesfehérvár', 'Fejér', 42000000),
(100, 'Táncsics Mihály utca 9.', '105.00', 4, '950.00', 2009, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.5pT64jVYgq9cIR8r9MdmfgHaEK?w=292&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Miskolc', 'Borsod-Abaúj-Zemplén', 53000000),
(101, 'Váci Mihály utca 14.', '110.00', 4, '950.00', 2019, 'Új építésű', 'https://th.bing.com/th/id/OIP.yFi02Mz3hvPpSYATnB9jjgHaEK?w=295&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Debrecen', 'Hajdú-Bihar', 58000000),
(102, 'Rákóczi utca 3.', '100.00', 4, '800.00', 2013, 'Felújított', 'https://th.bing.com/th/id/OIP.rIRPrbJXl1VfP-lzkMuZwwHaEK?w=276&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Eger', 'Heves', 51000000),
(103, 'Kossuth Lajos utca 7.', '130.00', 5, '1200.00', 2006, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.xxYo7JQMm1MhXkdVzzm2XgHaEK?w=306&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Szeged', 'Csongrád-Csanád', 59000000),
(104, 'Vörösmarty utca 5.', '95.00', 3, '700.00', 2012, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.CVxXYaD1zW1-Bb6B_EdVHAHaEo?w=258&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Veszprém', 'Veszprém', 44000000),
(105, 'Arany János utca 20.', '115.00', 4, '900.00', 2004, 'Felújított', 'https://th.bing.com/th/id/OIP.c6yDGEJlX8a1mD_i9_vPggHaEK?w=312&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Tatabánya', 'Komárom-Esztergom', 51000000);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jogihatters`
--

CREATE TABLE `jogihatters` (
  `id` int(11) NOT NULL,
  `ingatlanId` int(11) DEFAULT NULL,
  `dokumentumTipus` varchar(255) NOT NULL,
  `dokumentumDatum` date DEFAULT NULL,
  `dokumentumUrl` varchar(255) DEFAULT NULL
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
  `ingatlanId` int(11) DEFAULT NULL,
  `nev` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefon` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `tulajdonosok`
--

INSERT INTO `tulajdonosok` (`id`, `ingatlanId`, `nev`, `email`, `telefon`) VALUES
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
-- A tábla indexei `berelhetohazak`
--
ALTER TABLE `berelhetohazak`
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
-- A tábla indexei `hazak`
--
ALTER TABLE `hazak`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `ingatlan_id` (`ingatlanId`);

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
  ADD KEY `ingatlan_id` (`ingatlanId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `berelhetohazak`
--
ALTER TABLE `berelhetohazak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `hazak`
--
ALTER TABLE `hazak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT a táblához `ingatlanok`
--
ALTER TABLE `ingatlanok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

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
  ADD CONSTRAINT `jogihatters_ibfk_1` FOREIGN KEY (`ingatlanId`) REFERENCES `ingatlanok` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
