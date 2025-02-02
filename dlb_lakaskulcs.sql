-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Feb 02. 19:56
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `akcios_hazak`
--

INSERT INTO `akcios_hazak` (`id`, `cim`, `alapterulet`, `szobak_szama`, `telek_merete`, `epites_vege`, `allapot`, `kep_url`, `tipus`, `varos`, `megye`, `ar`) VALUES
(1, 'Hóvirág utca 12.', 120, 3, 500, '2010', 'Jó állapotú', 'https://example.com/1.jpg', 'Családi ház', 'Budapest', 'Budapest', 85000000),
(2, 'Rózsa domb 4.', 85, 2, 300, '2015', 'Kiváló állapotú', 'https://example.com/2.jpg', 'Ikerház', 'Győr', 'Győr-Moson-Sopron', 55000000),
(3, 'Tópart utca 3.', 200, 5, 1200, '2005', 'Jó állapotú', 'https://example.com/3.jpg', 'Családi ház', 'Balatonfüred', 'Veszprém', 125000000),
(4, 'Napfény utca 1.', 60, 1, 150, '2019', 'Új építésű', 'https://example.com/4.jpg', 'Társasház', 'Pécs', 'Baranya', 42000000),
(5, 'Csillag utca 8.', 95, 3, 450, '2012', 'Közepes állapotú', 'https://example.com/5.jpg', 'Családi ház', 'Debrecen', 'Hajdú-Bihar', 67000000),
(6, 'Patak utca 7.', 110, 4, 700, '2018', 'Kiváló állapotú', 'https://example.com/6.jpg', 'Ikerház', 'Szeged', 'Csongrád-Csanád', 78000000),
(7, 'Erdei utca 9.', 140, 5, 1000, '2000', 'Jó állapotú', 'https://example.com/7.jpg', 'Családi ház', 'Miskolc', 'Borsod-Abaúj-Zemplén', 89000000),
(8, 'Kastély tér 2.', 80, 2, 600, '1995', 'Felújítandó', 'https://example.com/8.jpg', 'Házikó', 'Keszthely', 'Zala', 32000000),
(9, 'Vár utca 14.', 150, 4, 850, '2008', 'Jó állapotú', 'https://example.com/9.jpg', 'Családi ház', 'Esztergom', 'Komárom-Esztergom', 97000000),
(10, 'Fő tér 5.', 70, 2, 400, '2021', 'Új építésű', 'https://example.com/10.jpg', 'Társasház', 'Kecskemét', 'Bács-Kiskun', 62000000),
(11, 'Nyár utca 11.', 120, 3, 700, '2004', 'Közepes állapotú', 'https://example.com/11.jpg', 'Családi ház', 'Székesfehérvár', 'Fejér', 71000000),
(12, 'Levendula utca 16.', 90, 3, 550, '2013', 'Kiváló állapotú', 'https://example.com/12.jpg', 'Ikerház', 'Zalaegerszeg', 'Zala', 66000000),
(13, 'Hegyalja út 22.', 200, 6, 1500, '1999', 'Jó állapotú', 'https://example.com/13.jpg', 'Családi ház', 'Eger', 'Heves', 138000000),
(14, 'Tavasz utca 9.', 75, 2, 300, '2018', 'Új építésű', 'https://example.com/14.jpg', 'Házikó', 'Veszprém', 'Veszprém', 48000000),
(15, 'Hold utca 1.', 130, 4, 800, '2006', 'Jó állapotú', 'https://example.com/15.jpg', 'Családi ház', 'Szombathely', 'Vas', 85000000),
(16, 'Párizsi utca 17.', 50, 1, 200, '2022', 'Új építésű', 'https://example.com/16.jpg', 'Társasház', 'Tatabánya', 'Komárom-Esztergom', 37000000),
(17, 'Jókai utca 6.', 115, 4, 600, '2011', 'Jó állapotú', 'https://example.com/17.jpg', 'Családi ház', 'Hódmezővásárhely', 'Csongrád-Csanád', 75000000),
(18, 'Rákóczi utca 3.', 145, 5, 1200, '2003', 'Közepes állapotú', 'https://example.com/18.jpg', 'Házikó', 'Sopron', 'Győr-Moson-Sopron', 112000000),
(19, 'Új élet utca 19.', 160, 6, 1800, '1998', 'Felújítandó', 'https://example.com/19.jpg', 'Családi ház', 'Nyíregyháza', 'Szabolcs-Szatmár-Bereg', 54000000),
(20, 'Petőfi tér 8.', 95, 3, 400, '2017', 'Kiváló állapotú', 'https://example.com/20.jpg', 'Ikerház', 'Szolnok', 'Jász-Nagykun-Szolnok', 82000000),
(21, 'Fenyves utca 10.', 185, 5, 1300, '2012', 'Jó állapotú', 'https://example.com/21.jpg', 'Családi ház', 'Békéscsaba', 'Békés', 99000000),
(22, 'Gyöngyvirág utca 18.', 120, 3, 600, '2007', 'Közepes állapotú', 'https://example.com/22.jpg', 'Házikó', 'Nagykanizsa', 'Zala', 71000000),
(23, 'Pusztaszeri út 33.', 65, 2, 200, '2020', 'Új építésű', 'https://example.com/23.jpg', 'Társasház', 'Gödöllő', 'Pest', 51000000),
(24, 'Móra tér 14.', 140, 4, 750, '2009', 'Jó állapotú', 'https://example.com/24.jpg', 'Családi ház', 'Szentendre', 'Pest', 86000000),
(25, 'Cserkész utca 7.', 110, 3, 550, '2016', 'Kiváló állapotú', 'https://example.com/25.jpg', 'Ikerház', 'Paks', 'Tolna', 79000000),
(26, 'Zrínyi utca 2.', 155, 5, 1300, '2005', 'Jó állapotú', 'https://example.com/26.jpg', 'Családi ház', 'Várpalota', 'Fejér', 102000000),
(27, 'Tó utca 1.', 135, 4, 900, '2010', 'Kiváló állapotú', 'https://example.com/27.jpg', 'Házikó', 'Balatonalmádi', 'Veszprém', 92000000),
(28, 'Duna utca 5.', 90, 2, 450, '2019', 'Új építésű', 'https://example.com/28.jpg', 'Társasház', 'Cegléd', 'Pest', 67000000),
(29, 'Szent Mihály tér 12.', 200, 6, 1500, '2000', 'Felújítandó', 'https://example.com/29.jpg', 'Családi ház', 'Vác', 'Pest', 74000000),
(30, 'Boróka utca 8.', 125, 3, 600, '2011', 'Jó állapotú', 'https://example.com/30.jpg', 'Családi ház', 'Ózd', 'Borsod-Abaúj-Zemplén', 78000000);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalo_bejelentkezes`
--

CREATE TABLE `felhasznalo_bejelentkezes` (
  `BejelentkezoSzolgaltato` varchar(255) NOT NULL,
  `SzolgaltatoKulcs` varchar(255) NOT NULL,
  `SzolgaltatoMegjelenitettNev` longtext DEFAULT NULL,
  `FelhasznaloId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `ar` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `ingatlanok`
--

INSERT INTO `ingatlanok` (`id`, `cim`, `alapterulet`, `szobakSzama`, `telekMerete`, `epitesVege`, `allapot`, `kepUrl`, `tipus`, `varos`, `megye`, `ar`) VALUES
(64, 'Kossuth Lajos utca 12.', 100.00, 3, 800.00, 2001, 'Felújított', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBlWNDdtvsLlWrN2rowfyRH_sIIqvOnSn4Hw&s', 'Családi ház', 'Budapest', 'Pest', 55000000),
(65, 'Petőfi Sándor utca 5.', 75.00, 2, 500.00, 2010, 'Új építésű', 'https://hazgyarto.hu/images/marti_kissebb.jpg', 'Társasházi lakás', 'Debrecen', 'Hajdú-Bihar', 32000000),
(66, 'Arany János utca 8.', 120.00, 4, 1000.00, 1995, 'Közepes állapotú', 'https://zsuzsanna.ingatlan.hu/images/gallery/szekszard-tolnai-lajos-utcai-csaladi-haz-elado.jpg', 'Családi ház', 'Győr', 'Győr-Moson-Sopron', 45000000),
(67, 'Hunyadi tér 3.', 60.00, 1, NULL, 2020, 'Új építésű', 'https://th.bing.com/th/id/OIP.MwLeKboj7vyGjRSrbITt8wHaE8?w=269&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Panel lakás', 'Miskolc', 'Borsod-Abaúj-Zemplén', 27000000),
(68, 'Bartók Béla út 18.', 90.00, 3, 700.00, 1980, 'Felújításra szorul', 'https://th.bing.com/th/id/OIP.I1e6UEvM2VJzsTzXkEqCnAHaFn?w=237&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Pécs', 'Baranya', 37000000),
(69, 'Ady Endre út 9.', 110.00, 4, 950.00, 2005, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.2wZp9me8QBLXO9jYDfsvnQHaEK?w=309&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Szeged', 'Csongrád-Csanád', 50000000),
(70, 'Rákóczi Ferenc utca 11.', 80.00, 3, 600.00, 2015, 'Új építésű', 'https://th.bing.com/th/id/OIP.L9MPCX3rKQL6igMVmN0SbQHaEK?w=315&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Eger', 'Heves', 42000000),
(71, 'Széchenyi tér 1.', 95.00, 3, NULL, 1990, 'Közepes állapotú', 'https://th.bing.com/th/id/OIP.91onJM7lKHJQHddwHQ0RVgHaEo?w=253&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Társasházi lakás', 'Székesfehérvár', 'Fejér', 36000000),
(72, 'Deák Ferenc tér 7.', 150.00, 5, 1200.00, 1985, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.zMY-YO094RsWvYnleOveFQHaE8?w=235&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Sopron', 'Győr-Moson-Sopron', 60000000),
(73, 'Dózsa György út 15.', 70.00, 2, NULL, 2021, 'Új építésű', 'https://th.bing.com/th/id/OIP.1m8iTohGcHBr__R_2sMABgHaFj?w=250&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Panel lakás', 'Nyíregyháza', 'Szabolcs-Szatmár-Bereg', 30000000),
(74, 'Táncsics Mihály utca 4.', 140.00, 4, 1100.00, 1998, 'Felújított', 'https://th.bing.com/th/id/OIP.tjrfGZGkHmyfR90yWj0aegHaEK?w=321&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Kecskemét', 'Bács-Kiskun', 48000000),
(75, 'Árpád út 21.', 85.00, 3, 550.00, 2003, 'Jó állapotú', 'https://th.bing.com/th?id=OIF.%2bSww7zohBSnJ0N5Cdbi6pA&w=247&h=186&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Zalaegerszeg', 'Zala', 41000000),
(76, 'Ferenc körút 6.', 55.00, 2, NULL, 2018, 'Új építésű', 'https://th.bing.com/th/id/OIP.OJ_uIWtrrXkNEOxlv4TbNQHaEN?w=294&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Társasházi lakás', 'Szekszárd', 'Tolna', 25000000),
(77, 'Kálvin tér 14.', 135.00, 5, 1300.00, 1992, 'Közepes állapotú', 'https://th.bing.com/th/id/OIP.aLctuN_9P6GzChTdaJFuawHaEJ?w=297&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Szolnok', 'Jász-Nagykun-Szolnok', 52000000),
(78, 'Vörösmarty utca 16.', 100.00, 3, 900.00, 1989, 'Felújításra szorul', 'https://th.bing.com/th/id/OIP.DvWy5Ll7sGF7H4SQlU-MQwHaHa?w=182&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Tatabánya', 'Komárom-Esztergom', 39000000),
(79, 'Béke út 19.', 60.00, 2, NULL, 2022, 'Új építésű', 'https://th.bing.com/th/id/OIP.s0m3pHV-SsE97ZKUw8T7-wHaFR?w=265&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Panel lakás', 'Szombathely', 'Vas', 28000000),
(80, 'Radnóti Miklós utca 2.', 115.00, 4, 1000.00, 2000, 'Felújított', 'https://th.bing.com/th/id/OIP.YLGvAym0ApwiokiLYyCD1gHaE5?w=283&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Esztergom', 'Komárom-Esztergom', 49000000),
(81, 'Kazinczy utca 10.', 80.00, 3, 650.00, 2008, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.NHqLoEdgzyHsBNQImSGqXAHaE4?w=285&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Veszprém', 'Veszprém', 43000000),
(82, 'Váci Mihály utca 25.', 90.00, 3, NULL, 1995, 'Közepes állapotú', 'https://th.bing.com/th?id=OIF.CncnD%2bQhDM6QaZDhbDivOg&w=249&h=186&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Társasházi lakás', 'Kapuvár', 'Győr-Moson-Sopron', 36000000),
(83, 'Családi ház eladó', 120.00, 4, 500.00, 2005, 'Jó', 'https://th.bing.com/th/id/OIP.MwLeKboj7vyGjRSrbITt8wHaE8?w=269&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Szekszárd', 'Tolna', 45000000),
(84, '3 szobás ház eladó', 140.00, 4, 600.00, 2012, 'Kiváló', 'https://hazgyarto.hu/images/marti_kissebb.jpg', 'Ház', 'Pécs', 'Baranya', 35000000),
(85, 'Új építésű családi ház eladó', 250.00, 5, 700.00, 2020, 'Új', 'https://th.bing.com/th/id/OIP.2wZp9me8QBLXO9jYDfsvnQHaEK?w=309&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Budapest', 'Budapest', 70000000),
(86, 'Kertes ház eladó', 200.00, 5, 1000.00, 2010, 'Jó', 'https://th.bing.com/th/id/OIP.L9MPCX3rKQL6igMVmN0SbQHaEK?w=315&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Székesfehérvár', 'Fejér', 46000000),
(87, 'Családi ház eladó', 180.00, 4, 750.00, 2005, 'Kiváló', 'https://th.bing.com/th/id/OIP.91onJM7lKHJQHddwHQ0RVgHaEo?w=253&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Veszprém', 'Veszprém', 50000000),
(88, 'Csendes utcában eladó ház', 300.00, 6, 1200.00, 2018, 'Új', 'https://th.bing.com/th/id/OIP.1m8iTohGcHBr__R_2sMABgHaFj?w=250&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Gödöllő', 'Pest', 80000000),
(89, 'Nagy telek házzal eladó', 220.00, 5, 1500.00, 2015, 'Jó', 'https://th.bing.com/th/id/OIP.tjrfGZGkHmyfR90yWj0aegHaEK?w=321&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Debrecen', 'Hajdú-Bihar', 60000000),
(90, 'Felújítandó családi ház', 180.00, 4, 800.00, 1998, 'Felújítandó', 'https://th.bing.com/th/id/OIP.MwLeKboj7vyGjRSrbITt8wHaE8?w=269&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Miskolc', 'Borsod-Abaúj-Zemplén', 28000000),
(91, 'Új ház eladó', 150.00, 4, 900.00, 2020, 'Új', 'https://th.bing.com/th/id/OIP.OJ_uIWtrrXkNEOxlv4TbNQHaEN?w=294&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Szeged', 'Csongrád-Csanád', 60000000),
(92, 'Eladó ház, zöldövezetben', 160.00, 5, 1100.00, 2007, 'Jó', 'https://th.bing.com/th/id/OIP.aLctuN_9P6GzChTdaJFuawHaEJ?w=297&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Zalaegerszeg', 'Zala', 43000000),
(93, 'Szép családi ház eladó', 200.00, 6, 1400.00, 2013, 'Jó', 'https://th.bing.com/th/id/OIP.DvWy5Ll7sGF7H4SQlU-MQwHaHa?w=182&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Kaposvár', 'Somogy', 65000000),
(94, 'Kertes ház eladó', 180.00, 5, 1200.00, 2015, 'Jó', 'https://th.bing.com/th/id/OIP.s0m3pHV-SsE97ZKUw8T7-wHaFR?w=265&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Kecskemét', 'Bács-Kiskun', 50000000),
(95, 'Kertes családi ház', 220.00, 6, 1500.00, 2017, 'Új', 'https://th.bing.com/th/id/OIP.YLGvAym0ApwiokiLYyCD1gHaE5?w=283&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Veszprém', 'Veszprém', 58000000),
(96, 'Klasszikus családi ház eladó', 140.00, 4, 800.00, 2006, 'Jó', 'https://th.bing.com/th/id/OIP.NHqLoEdgzyHsBNQImSGqXAHaE4?w=285&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Salgótarján', 'Nógrád', 37000000),
(97, 'Modern családi ház', 180.00, 5, 1500.00, 2008, 'Jó', 'https://th.bing.com/th/id/OIP.s0m3pHV-SsE97ZKUw8T7-wHaFR?w=265&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Szombathely', 'Vas', 52000000),
(98, 'Ház eladó nyugodt környezetben', 150.00, 4, 600.00, 2015, 'Jó', 'https://th.bing.com/th/id/OIP.MwLeKboj7vyGjRSrbITt8wHaE8?w=269&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Eger', 'Heves', 48000000),
(99, 'Családi ház eladó', 160.00, 5, 1200.00, 2000, 'Jó', 'https://hazgyarto.hu/images/marti_kissebb.jpg', 'Ház', 'Szolnok', 'Jász-Nagykun-Szolnok', 50000000),
(100, 'Családi ház eladó', 130.00, 4, 700.00, 2010, 'Kiváló', 'https://th.bing.com/th/id/OIP.s0m3pHV-SsE97ZKUw8T7-wHaFR?w=265&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Nyíregyháza', 'Szabolcs-Szatmár-Bereg', 47000000),
(101, 'Eladó családi ház', 190.00, 5, 900.00, 2012, 'Jó', 'https://th.bing.com/th/id/OIP.MwLeKboj7vyGjRSrbITt8wHaE8?w=269&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Tatabánya', 'Komárom-Esztergom', 53000000),
(102, 'Kertes családi ház', 210.00, 6, 1300.00, 2004, 'Kiváló', 'https://th.bing.com/th/id/OIP.L9MPCX3rKQL6igMVmN0SbQHaEK?w=315&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Békéscsaba', 'Békés', 46000000),
(103, 'Eladó családi ház', 130.00, 4, 700.00, 2010, 'Jó', 'https://th.bing.com/th/id/OIP.L9MPCX3rKQL6igMVmN0SbQHaEK?w=315&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Szekszárd', 'Tolna', 45000000),
(104, 'Modern családi ház eladó', 160.00, 5, 900.00, 2015, 'Jó', 'https://th.bing.com/th/id/OIP.aLctuN_9P6GzChTdaJFuawHaEJ?w=297&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Pécs', 'Baranya', 52000000),
(105, 'Luxus családi ház eladó', 350.00, 6, 2000.00, 2022, 'Új', 'https://th.bing.com/th/id/OIP.OJ_uIWtrrXkNEOxlv4TbNQHaEN?w=294&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Budapest', 'Budapest', 120000000),
(106, 'Kertes ház', 180.00, 4, 900.00, 2018, 'Jó', 'https://th.bing.com/th/id/OIP.DvWy5Ll7sGF7H4SQlU-MQwHaHa?w=182&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Székesfehérvár', 'Fejér', 45000000),
(107, 'Új családi ház eladó', 230.00, 5, 1000.00, 2021, 'Új', 'https://th.bing.com/th/id/OIP.91onJM7lKHJQHddwHQ0RVgHaEo?w=253&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Szentendre', 'Pest', 75000000),
(108, 'Kertes ház eladó', 160.00, 4, 800.00, 2017, 'Jó', 'https://th.bing.com/th/id/OIP.MwLeKboj7vyGjRSrbITt8wHaE8?w=269&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Debrecen', 'Hajdú-Bihar', 55000000),
(109, 'Családi ház eladó', 150.00, 4, 700.00, 2005, 'Jó', 'https://th.bing.com/th/id/OIP.91onJM7lKHJQHddwHQ0RVgHaEo?w=253&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Miskolc', 'Borsod-Abaúj-Zemplén', 48000000),
(110, 'Eladó családi ház', 220.00, 5, 1200.00, 2012, 'Kiváló', 'https://th.bing.com/th/id/OIP.s0m3pHV-SsE97ZKUw8T7-wHaFR?w=265&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Békéscsaba', 'Békés', 49000000),
(111, 'Új családi ház', 180.00, 4, 800.00, 2020, 'Új', 'https://th.bing.com/th/id/OIP.L9MPCX3rKQL6igMVmN0SbQHaEK?w=315&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Nyíregyháza', 'Szabolcs-Szatmár-Bereg', 65000000),
(112, 'Nagy családi ház', 200.00, 6, 1000.00, 2010, 'Jó', 'https://th.bing.com/th/id/OIP.L9MPCX3rKQL6igMVmN0SbQHaEK?w=315&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Tatabánya', 'Komárom-Esztergom', 55000000),
(113, 'Családi ház eladó', 170.00, 5, 900.00, 2018, 'Kiváló', 'https://th.bing.com/th/id/OIP.L9MPCX3rKQL6igMVmN0SbQHaEK?w=315&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Veszprém', 'Veszprém', 60000000),
(114, 'Kertesház eladó', 180.00, 5, 1100.00, 2010, 'Kiváló', 'https://th.bing.com/th/id/OIP.L9MPCX3rKQL6igMVmN0SbQHaEK?w=315&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Székesfehérvár', 'Fejér', 49000000),
(115, 'Eladó családi ház', 200.00, 5, 1000.00, 2006, 'Kiváló', 'https://th.bing.com/th/id/OIP.DvWy5Ll7sGF7H4SQlU-MQwHaHa?w=182&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Miskolc', 'Borsod-Abaúj-Zemplén', 53000000),
(116, 'Eladó ház, nagy telekkel', 220.00, 6, 1300.00, 2008, 'Jó', 'https://th.bing.com/th/id/OIP.NHqLoEdgzyHsBNQImSGqXAHaE4?w=285&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Pécs', 'Baranya', 51000000),
(117, 'Két generációs családi ház', 280.00, 7, 1500.00, 2016, 'Jó', 'https://th.bing.com/th/id/OIP.91onJM7lKHJQHddwHQ0RVgHaEo?w=253&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Budapest', 'Budapest', 95000000),
(118, 'Eladó ház', 200.00, 5, 1200.00, 2005, 'Jó', 'https://th.bing.com/th/id/OIP.MwLeKboj7vyGjRSrbITt8wHaE8?w=269&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Kecskemét', 'Bács-Kiskun', 52000000),
(119, 'Kényelmes családi ház', 210.00, 6, 1300.00, 2009, 'Jó', 'https://th.bing.com/th/id/OIP.aLctuN_9P6GzChTdaJFuawHaEJ?w=297&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Vác', 'Pest', 60000000),
(120, 'Új építésű ház', 170.00, 5, 900.00, 2019, 'Új', 'https://th.bing.com/th/id/OIP.L9MPCX3rKQL6igMVmN0SbQHaEK?w=315&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Szolnok', 'Jász-Nagykun-Szolnok', 53000000),
(121, 'Családi ház', 190.00, 5, 1100.00, 2014, 'Jó', 'https://th.bing.com/th/id/OIP.OJ_uIWtrrXkNEOxlv4TbNQHaEN?w=294&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Kaposvár', 'Somogy', 56000000),
(122, 'Eladó ház', 210.00, 5, 1200.00, 2010, 'Kiváló', 'https://th.bing.com/th/id/OIP.2wZp9me8QBLXO9jYDfsvnQHaEK?w=309&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ház', 'Zalaegerszeg', 'Zala', 48000000);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `telepulesek`
--

CREATE TABLE `telepulesek` (
  `id` int(255) NOT NULL,
  `varosok` varchar(255) DEFAULT NULL,
  `megye` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(20, 20, 'Gulyás Zsolt', 'zsolt.gulyas@example.com', '+36309998877'),
(97, NULL, 'Kovács Péter', 'peter.kovacs@email.com', '+36 30 123 4567'),
(98, NULL, 'Nagy Eszter', 'eszter.nagy@email.com', '+36 30 234 5678'),
(99, NULL, 'Szabó András', 'andras.szabo@email.com', '+36 30 345 6789'),
(100, NULL, 'Tóth Zsuzsanna', 'zsuzsanna.toth@email.com', '+36 30 456 7890'),
(101, NULL, 'Horváth László', 'laszlo.horvath@email.com', '+36 30 567 8901'),
(102, NULL, 'Bíró Anna', 'anna.biro@email.com', '+36 30 678 9012'),
(103, NULL, 'Kiss Gábor', 'gabor.kiss@email.com', '+36 30 789 0123'),
(104, NULL, 'Papp Márton', 'marton.papp@email.com', '+36 30 890 1234'),
(105, NULL, 'Németh Júlia', 'julia.nemeth@email.com', '+36 30 901 2345'),
(106, NULL, 'Varga Dávid', 'david.varga@email.com', '+36 30 012 3456'),
(107, NULL, 'Farkas Emese', 'emese.farkas@email.com', '+36 30 123 4567'),
(108, NULL, 'Szalai Tamás', 'tamas.szalai@email.com', '+36 30 234 5678'),
(109, NULL, 'Molnár Krisztina', 'krisztina.molnar@email.com', '+36 30 345 6789'),
(110, NULL, 'Takács József', 'jozsef.takacs@email.com', '+36 30 456 7890'),
(111, NULL, 'Rózsa Ivett', 'ivett.rozsa@email.com', '+36 30 567 8901'),
(112, NULL, 'Mészáros Zoltán', 'zoltan.meszaros@email.com', '+36 30 678 9012'),
(113, NULL, 'Kovács Beáta', 'beata.kovacs@email.com', '+36 30 789 0123'),
(114, NULL, 'Szilágyi Ferenc', 'ferenc.szilagyi@email.com', '+36 30 890 1234'),
(115, NULL, 'Bognár Viktória', 'viktoria.bognar@email.com', '+36 30 901 2345'),
(116, NULL, 'Tóth Tamás', 'tamas.toth@email.com', '+36 30 012 3456'),
(117, NULL, 'Kis Ádám', 'adam.kis@email.com', '+36 30 123 4567'),
(118, NULL, 'Pál Eszter', 'eszter.pal@email.com', '+36 30 234 5678'),
(119, NULL, 'Varga Katalin', 'katalin.varga@email.com', '+36 30 345 6789'),
(120, NULL, 'Kovács Dóra', 'dora.kovacs@email.com', '+36 30 456 7890'),
(121, NULL, 'Juhász Gábor', 'gabor.juhasz@email.com', '+36 30 567 8901'),
(122, NULL, 'Németh Balázs', 'balazs.nemeth@email.com', '+36 30 678 9012'),
(123, NULL, 'Kiss Barbara', 'barbara.kiss@email.com', '+36 30 789 0123'),
(124, NULL, 'Móricz Zita', 'zita.moricz@email.com', '+36 30 890 1234'),
(125, NULL, 'Tóth Zoltán', 'zoltan.toth@email.com', '+36 30 901 2345'),
(126, NULL, 'Bodnár Júlia', 'julia.bodnar@email.com', '+36 30 012 3456'),
(127, NULL, 'Farkas Gábor', 'gabor.farkas@email.com', '+36 30 123 4567'),
(128, NULL, 'Kovács Róbert', 'robert.kovacs@email.com', '+36 30 234 5678'),
(129, NULL, 'Nagy Zsuzsanna', 'zsuzsanna.nagy@email.com', '+36 30 345 6789'),
(130, NULL, 'Bíró Zoltán', 'zoltan.biro@email.com', '+36 30 456 7890'),
(131, NULL, 'Szilágyi Gábor', 'gabor.szilagyi@email.com', '+36 30 567 8901'),
(132, NULL, 'Papp Gabriella', 'gabriella.papp@email.com', '+36 30 678 9012'),
(133, NULL, 'Molnár Péter', 'peter.molnar@email.com', '+36 30 789 0123'),
(134, NULL, 'Takács Anna', 'anna.takacs@email.com', '+36 30 890 1234');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `akcios_hazak`
--
ALTER TABLE `akcios_hazak`
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
-- A tábla indexei `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `akcios_hazak`
--
ALTER TABLE `akcios_hazak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `ingatlanok`
--
ALTER TABLE `ingatlanok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT a táblához `jogihatters`
--
ALTER TABLE `jogihatters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `tulajdonosok`
--
ALTER TABLE `tulajdonosok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

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
