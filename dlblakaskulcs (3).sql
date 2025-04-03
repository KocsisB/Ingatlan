-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Ápr 03. 11:35
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
-- Adatbázis: `dlblakaskulcs`
--
CREATE DATABASE IF NOT EXISTS `dlblakaskulcs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dlblakaskulcs`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `akcioshazaks`
--

CREATE TABLE `akcioshazaks` (
  `Id` int(11) NOT NULL,
  `AkciosAr` bigint(20) NOT NULL,
  `IngatlanId` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `akcioshazaks`
--

INSERT INTO `akcioshazaks` (`Id`, `AkciosAr`, `IngatlanId`) VALUES
(1, 85000000, 64),
(2, 55000000, 65),
(3, 125000000, 66),
(4, 42000000, 67),
(5, 67000000, 68),
(6, 78000000, 69),
(7, 89000000, 70),
(8, 32000000, 71),
(9, 97000000, 72),
(10, 62000000, 73),
(11, 71000000, 74),
(12, 66000000, 75),
(13, 138000000, 76),
(14, 48000000, 77),
(15, 85000000, 78),
(16, 37000000, 79),
(17, 75000000, 80),
(18, 112000000, 81),
(19, 54000000, 82),
(20, 82000000, 83),
(21, 99000000, 84),
(22, 71000000, 85),
(23, 51000000, 86),
(24, 86000000, 87),
(25, 79000000, 88),
(26, 102000000, 89),
(27, 92000000, 90),
(28, 67000000, 91),
(29, 74000000, 92),
(30, 78000000, 93);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(255) NOT NULL,
  `ProviderKey` varchar(255) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(255) NOT NULL,
  `Fullname` longtext DEFAULT NULL,
  `BirthDate` datetime(6) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `kepUrl` longtext NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `Fullname`, `BirthDate`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `kepUrl`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('119f36ab-9a3e-427d-b504-b0b75a4edcbb', 'string', '2025-03-20 08:05:19.255000', 'string', 'STRING', 'string@asd.hu', 'STRING@ASD.HU', 0, 'AQAAAAIAAYagAAAAEKn4xkf38+klXRwQ1H+41MX43TGowJuvUZ+g9g7unG4kclIIj5x3PnLsuokkYG/rZQ==', 'YCNGBOVNZU4LKZV6TMOEMOU2GLIRT6BF', '9029fcfb-9dbc-4a44-83c4-2c5531a37770', 'string', 0, '', 0, NULL, 1, 0),
('61b58764-0fb4-4f30-8fe0-3f612a2b6c91', NULL, '2005-12-18 00:00:00.000000', 'BtndKllr', 'BTNDKLLR', 'kocsisb@kkszki.hu', 'KOCSISB@KKSZKI.HU', 0, 'AQAAAAIAAYagAAAAENw9GKVamVwAMF4zHCb8yai5RXkZ81PxFDZqXR06B+C5I1fgCZpWKrC/lZ6I6C4BMw==', 'JJVJ4ZP7HEAZBI6UFSKRUU2OVS775S4R', '56c95dba-b42b-4b08-a8a6-471fbfcf2f0e', '06706227218', 0, '', 0, NULL, 1, 0),
('82d594f2-30a4-4b60-a899-cf97f618f4ef', 'Klima László', '2025-04-03 00:00:00.000000', 'klacikaa', 'KLACIKAA', 'klimal@kkszki.hu', 'KLIMAL@KKSZKI.HU', 0, 'AQAAAAIAAYagAAAAEN+SrvWapmmzFUmBk1OzfYaUC6r/VYt17CUqy/U6OAnQI33nOhVht5TPlBsxStF5nw==', 'WSRB7PIPVC66Q5WQRLDSUY6WB7QBH6CT', 'd2347304-72b8-4b7f-9b37-9f19b3017b1b', '829829821', 0, '/ProfileImages/raynavallandingham.jpg', 0, NULL, 1, 0),
('97e59cdd-a536-4d85-90a9-a8cb220a19d0', 'laci', '2025-03-13 00:00:00.000000', 'klacika', 'KLACIKA', 'klimal@kkszki.hu', 'KLIMAL@KKSZKI.HU', 0, 'AQAAAAIAAYagAAAAEGkD+kb3t2nvrZl4Mwsag2Z92JIoaPvtYoIz3sv6OT5YMdnZ7xgShimTDvnstpkbBg==', 'ND6SH53JYCTP65HRHR6OAKMZ2JNKFF45', 'a6fcceef-df04-4c83-9245-8ade61d0a91d', '1010101001', 0, '', 0, NULL, 1, 0),
('f64543e3-80a4-4819-8f99-e8e8958c2b26', 'Tulajdonos', '2025-03-13 00:00:00.000000', 'Tulajdonos', 'TULAJDONOS', 'dlblakaskulcs@gmail.com', 'DLBLAKASKULCS@GMAIL.COM', 0, 'AQAAAAIAAYagAAAAEF/DDvB19oBd8N+fifuLuhEUT6YFsCFIUg2eVtSGPEC0Q3/Z7F6YSqsQNtpPmZVLYQ==', 'ZQPTV67KO7SZQQWSIKVHXYP3O5ACFLO7', 'f3091678-2a80-409d-b08f-b71e3221e070', '01303103030', 0, '', 0, NULL, 1, 0),
('f6d89bac-5f19-4045-9502-0bfec1702ec9', 'Admin', '2025-04-03 00:00:00.000000', 'Admin', 'ADMIN', 'Admin@admin.hu', 'ADMIN@ADMIN.HU', 0, 'AQAAAAIAAYagAAAAEFf8S5VstcE6AE5YwER7o+NlIDNdytSn2D4p4uSaYxLObqgASiNMMcD8UPqheZeddg==', 'E2YEVRZPCIYUIAEWP2Y2AVJIYIX5TWTN', '2f5a24cd-8cdc-4913-90f0-5b3e0dd81af7', '232323232', 0, '/ProfileImages/osz.jpg', 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ingatlanoks`
--

CREATE TABLE `ingatlanoks` (
  `Id` int(11) NOT NULL,
  `Cim` longtext NOT NULL,
  `Alapterulet` decimal(18,2) NOT NULL,
  `SzobakSzama` int(11) NOT NULL,
  `TelekMerete` decimal(18,2) DEFAULT NULL,
  `EpitesVege` int(11) DEFAULT NULL,
  `Allapot` longtext DEFAULT NULL,
  `KepUrl` longtext DEFAULT NULL,
  `Tipus` longtext DEFAULT NULL,
  `Varos` longtext NOT NULL,
  `Megye` longtext NOT NULL,
  `Ar` int(11) NOT NULL,
  `Berelheto` tinyint(1) NOT NULL,
  `Eladható` tinyint(1) NOT NULL,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `ingatlanoks`
--

INSERT INTO `ingatlanoks` (`Id`, `Cim`, `Alapterulet`, `SzobakSzama`, `TelekMerete`, `EpitesVege`, `Allapot`, `KepUrl`, `Tipus`, `Varos`, `Megye`, `Ar`, `Berelheto`, `Eladható`, `UserId`) VALUES
(64, 'Kossuth Lajos utca 12.', '100.00', 3, '800.00', 2001, 'Felújított', '/images/timthumb.png', 'Családi ház', 'Budapest', 'Pest', 55000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(65, 'Petőfi Sándor utca 5.', '75.00', 2, '500.00', 2010, 'Új építésű', '/images/33009604_217207246_l.jpg', 'Társasházi lakás', 'Debrecen', 'Hajdú-Bihar', 32000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(66, 'Arany János utca 8.', '120.00', 4, '1000.00', 1995, 'Közepes állapotú', '/images/34122792_235776005_l.jpg', 'Családi ház', 'Győr', 'Győr-Moson-Sopron', 45000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(67, 'Hunyadi tér 3.', '60.00', 1, '5656556.00', 2020, 'Új építésű', '/images/_nagykep_72ingatlan_337kep.jpg', 'Panel lakás', 'Miskolc', 'Borsod-Abaúj-Zemplén', 27000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(68, 'Bartók Béla út 18.', '90.00', 3, '700.00', 1980, 'Felújításra szorul', '/images/a6981c37e5e6d098fda4517c2653eb.jpg', 'Családi ház', 'Pécs', 'Baranya', 37000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(69, 'Ady Endre út 9.', '110.00', 4, '950.00', 2005, 'Jó állapotú', '/images/122354397_l_0.jpg', 'Családi ház', 'Szeged', 'Csongrád-Csanád', 50000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(70, 'Rákóczi Ferenc utca 11.', '80.00', 3, '600.00', 2015, 'Új építésű', '/images/timthumb.png', 'Ikerház', 'Eger', 'Heves', 42000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(71, 'Széchenyi tér 1.', '95.00', 3, '4000.00', 1990, 'Közepes állapotú', '/images/Elado_haz__Szekesfehervar_982212587151384.jpg', 'Társasházi lakás', 'Székesfehérvár', 'Fejér', 36000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(72, 'Deák Ferenc tér 7.', '150.00', 5, '1200.00', 1985, 'Jó állapotú', '/images/34448140_234374981_l.jpg', 'Családi ház', 'Sopron', 'Győr-Moson-Sopron', 60000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(73, 'Dózsa György út 15.', '70.00', 2, '2000.00', 2021, 'Új építésű', '/images/34448140_234374981_l.jpg', 'Panel lakás', 'Nyíregyháza', 'Szabolcs-Szatmár-Bereg', 30000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(74, 'Táncsics Mihály utca 4.', '140.00', 4, '1100.00', 1998, 'Felújított', '/images/thumb_1720601636_image00017.jpg', 'Családi ház', 'Kecskemét', 'Bács-Kiskun', 48000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(75, 'Árpád út 21.', '85.00', 3, '550.00', 2003, 'Jó állapotú', '/images/thumb_1729596571_image00002.jpg', 'Ikerház', 'Zalaegerszeg', 'Zala', 41000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(76, 'Ferenc körút 6.', '55.00', 2, '2000.00', 2018, 'Új építésű', '/images/34469868_234626283_4075_l.jpg', 'Társasházi lakás', 'Szekszárd', 'Tolna', 25000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(77, 'Kálvin tér 14.', '135.00', 5, '1300.00', 1992, 'Közepes állapotú', '/images/g1b11u1u1Ix1M.1_11.jpg', 'Családi ház', 'Szolnok', 'Jász-Nagykun-Szolnok', 52000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(78, 'Vörösmarty utca 16.', '100.00', 3, '900.00', 1989, 'Felújításra szorul', '/images/ujepitesu-lakasok-1024x726.jpg', 'Családi ház', 'Tatabánya', 'Komárom-Esztergom', 39000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(79, 'Béke út 19.', '60.00', 2, '2000.00', 2022, 'Új építésű', '/images/thumb_1729596571_image00002.jpg', 'Panel lakás', 'Szombathely', 'Vas', 28000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(80, 'Radnóti Miklós utca 2.', '115.00', 4, '1000.00', 2000, 'Felújított', '/images/1-luxus-ingatlanok.jpg', 'Családi ház', 'Esztergom', 'Komárom-Esztergom', 49000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(81, 'Kazinczy utca 10.', '80.00', 3, '650.00', 2008, 'Jó állapotú', '/images/thumb_1720601636_image00017.jpg', 'Ikerház', 'Veszprém', 'Veszprém', 43000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(82, 'Váci Mihály utca 25.', '90.00', 3, '1500.00', 1995, 'Közepes állapotú', '/images/34383282_234412161_l.jpg', 'Társasházi lakás', 'Kapuvár', 'Győr-Moson-Sopron', 36000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(83, 'Kossuth Lajos utca 3.', '110.00', 4, '950.00', 2008, 'Jó állapotú', '/images/unnamed.jpg', 'Családi ház', 'Debrecen', 'Hajdú-Bihar', 47000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(84, 'Széchenyi utca 22.', '130.00', 5, '1200.00', 2002, 'Felújított', '/images/123035739_l_0.jpg', 'Családi ház', 'Pécs', 'Baranya', 54000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(85, 'Petőfi utca 11.', '95.00', 3, '700.00', 2011, 'Jó állapotú', '/images/g1b11u1u1Ix1M.1_11.jpg', 'Ikerház', 'Székesfehérvár', 'Fejér', 46000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(86, 'Hunyadi utca 7.', '125.00', 4, '800.00', 2000, 'Közepes állapotú', '/images/_nagykep_72ingatlan_337kep.jpg', 'Családi ház', 'Miskolc', 'Borsod-Abaúj-Zemplén', 51000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(87, 'József Attila utca 9.', '90.00', 3, '600.00', 2015, 'Új építésű', '/images/041537878364c5778cd147d2c8afd0b0_65349af03a_1920-original.jpg', 'Ikerház', 'Nyíregyháza', 'Szabolcs-Szatmár-Bereg', 39000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(88, 'Kossuth utca 4.', '150.00', 5, '1300.00', 2005, 'Felújított', '/images/892238_158cd119e75e3e2d1f26d4dccf69f836.jpg', 'Családi ház', 'Szeged', 'Csongrád-Csanád', 62000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(89, 'Szabadság utca 21.', '110.00', 4, '900.00', 2010, 'Jó állapotú', '/images/a6981c37e5e6d098fda4517c2653eb.jpg', 'Családi ház', 'Eger', 'Heves', 50000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(90, 'Rákóczi utca 8.', '95.00', 3, '750.00', 2017, 'Új építésű', '/images/b34f2d63aa457df96048104f1a1e11.jpg', 'Ikerház', 'Veszprém', 'Veszprém', 46000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(91, 'Béke utca 3.', '80.00', 2, '500.00', 2020, 'Új építésű', '/images/34469868_234626283_4075_l.jpg', 'Panel lakás', 'Szombathely', 'Vas', 29000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(92, 'Hősök tere 5.', '120.00', 4, '1000.00', 2003, 'Jó állapotú', '/images/123035739_l_0.jpg', 'Családi ház', 'Tatabánya', 'Komárom-Esztergom', 55000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(93, 'Szent István utca 10.', '70.00', 2, '400.00', 2018, 'Új építésű', '/images/34383282_234412161_l.jpg', 'Panel lakás', 'Szekszárd', 'Tolna', 27000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(94, 'Pesti utca 9.', '140.00', 5, '1200.00', 2010, 'Felújított', '/images/041537878364c5778cd147d2c8afd0b0_65349af03a_1920-original.jpg', 'Családi ház', 'Kecskemét', 'Bács-Kiskun', 60000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(95, 'Vörösmarty utca 8.', '100.00', 3, '900.00', 2001, 'Közepes állapotú', '/images/_nagykep_72ingatlan_337kep.jpg', 'Családi ház', 'Veszprém', 'Veszprém', 45000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(96, 'Kálvin tér 6.', '95.00', 3, '800.00', 2016, 'Új építésű', '/images/1-luxus-ingatlanok.jpg', 'Ikerház', 'Szolnok', 'Jász-Nagykun-Szolnok', 47000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(97, 'Fő utca 4.', '110.00', 4, '1000.00', 2014, 'Jó állapotú', '/images/thumb_1727347491_kamera-6.jpg', 'Családi ház', 'Sopron', 'Győr-Moson-Sopron', 52000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(98, 'Arany János utca 12.', '120.00', 4, '1050.00', 2007, 'Felújított', '/images/ujepitesu-lakasok-1024x726.jpg', 'Családi ház', 'Pécs', 'Baranya', 55000000, 0, 0, '97e59cdd-a536-4d85-90a9-a8cb220a19d0'),
(99, 'Petőfi Sándor utca 3.', '85.00', 3, '650.00', 2012, 'Közepes állapotú', '/images/thumb_1726323900_image-krk-immo_15.jpg', 'Ikerház', 'Székesfehérvár', 'Fejér', 42000000, 0, 0, '97e59cdd-a536-4d85-90a9-a8cb220a19d0'),
(100, 'Táncsics Mihály utca 9.', '105.00', 4, '950.00', 2009, 'Jó állapotú', '/images/34122792_235776005_l.jpg', 'Családi ház', 'Miskolc', 'Borsod-Abaúj-Zemplén', 53000000, 0, 0, '97e59cdd-a536-4d85-90a9-a8cb220a19d0'),
(101, 'Váci Mihály utca 14.', '110.00', 4, '950.00', 2019, 'Új építésű', '/images/g1b11u1u1Ix1M.1_11.jpg', 'Családi ház', 'Debrecen', 'Hajdú-Bihar', 58000000, 0, 0, '97e59cdd-a536-4d85-90a9-a8cb220a19d0'),
(102, 'Rákóczi utca 3.', '100.00', 4, '800.00', 2013, 'Felújított', '/images/123035739_l_0.jpg', 'Családi ház', 'Eger', 'Heves', 51000000, 0, 0, '97e59cdd-a536-4d85-90a9-a8cb220a19d0'),
(103, 'Kossuth Lajos utca 7.', '130.00', 5, '1200.00', 2006, 'Jó állapotú', '/images/luxus-573052.jpg', 'Családi ház', 'Szeged', 'Csongrád-Csanád', 59000000, 0, 0, '97e59cdd-a536-4d85-90a9-a8cb220a19d0'),
(104, 'Vörösmarty utca 5.', '95.00', 3, '700.00', 2012, 'Jó állapotú', '/images/1-luxus-ingatlanok.jpg', 'Ikerház', 'Veszprém', 'Veszprém', 44000000, 0, 0, '97e59cdd-a536-4d85-90a9-a8cb220a19d0'),
(105, 'Arany János utca 20.', '115.00', 4, '900.00', 2004, 'Felújított', '/images/34383282_234412161_l.jpg', 'Családi ház', 'Tatabánya', 'Komárom-Esztergom', 51000000, 0, 0, '97e59cdd-a536-4d85-90a9-a8cb220a19d0'),
(107, 'Petőfi út 100', '600.00', 3, '2500.00', 2022, 'jó', '/images/b34f2d63aa457df96048104f1a1e11.jpg', 'kicsi', 'Csobád', 'bazd', 45000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(108, 'Gagarin út 5.', '500.00', 4, '1500.00', 2015, 'Újépítésű', '/images/122354397_l_0.jpg', 'gfds', 'Encs', 'fd', 300000000, 1, 0, 'f64543e3-80a4-4819-8f99-e8e8958c2b26'),
(109, 'Huba utca 3.', '400.00', 5, '2000.00', 2010, 'Felújított', '/images/unnamed.jpg', 'gh', 'Miskolc', 'gh', 20000000, 0, 0, 'f64543e3-80a4-4819-8f99-e8e8958c2b26');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20250304125915_CreateDb', '8.0.11');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `akcioshazaks`
--
ALTER TABLE `akcioshazaks`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id` (`Id`),
  ADD KEY `IngatlanId` (`IngatlanId`);

--
-- A tábla indexei `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- A tábla indexei `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- A tábla indexei `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- A tábla indexei `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- A tábla indexei `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- A tábla indexei `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`),
  ADD KEY `Id` (`Id`);

--
-- A tábla indexei `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- A tábla indexei `ingatlanoks`
--
ALTER TABLE `ingatlanoks`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `Id` (`Id`);

--
-- A tábla indexei `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `akcioshazaks`
--
ALTER TABLE `akcioshazaks`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT a táblához `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `ingatlanoks`
--
ALTER TABLE `ingatlanoks`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `akcioshazaks`
--
ALTER TABLE `akcioshazaks`
  ADD CONSTRAINT `akcioshazaks_ibfk_1` FOREIGN KEY (`IngatlanId`) REFERENCES `ingatlanoks` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `ingatlanoks`
--
ALTER TABLE `ingatlanoks`
  ADD CONSTRAINT `ingatlanoks_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
