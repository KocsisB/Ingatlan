-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Már 20. 09:12
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(255) NOT NULL,
  `ProviderKey` varchar(255) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `Fullname`, `BirthDate`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `kepUrl`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('119f36ab-9a3e-427d-b504-b0b75a4edcbb', 'string', '2025-03-20 08:05:19.255000', 'string', 'STRING', 'string@asd.hu', 'STRING@ASD.HU', 0, 'AQAAAAIAAYagAAAAEKn4xkf38+klXRwQ1H+41MX43TGowJuvUZ+g9g7unG4kclIIj5x3PnLsuokkYG/rZQ==', 'YCNGBOVNZU4LKZV6TMOEMOU2GLIRT6BF', '9029fcfb-9dbc-4a44-83c4-2c5531a37770', 'string', 0, '', 0, NULL, 1, 0),
('61b58764-0fb4-4f30-8fe0-3f612a2b6c91', NULL, '2005-12-18 00:00:00.000000', 'BtndKllr', 'BTNDKLLR', 'kocsisb@kkszki.hu', 'KOCSISB@KKSZKI.HU', 0, 'AQAAAAIAAYagAAAAENw9GKVamVwAMF4zHCb8yai5RXkZ81PxFDZqXR06B+C5I1fgCZpWKrC/lZ6I6C4BMw==', 'JJVJ4ZP7HEAZBI6UFSKRUU2OVS775S4R', '56c95dba-b42b-4b08-a8a6-471fbfcf2f0e', '06706227218', 0, '', 0, NULL, 1, 0),
('97e59cdd-a536-4d85-90a9-a8cb220a19d0', 'laci', '2025-03-13 00:00:00.000000', 'klacika', 'KLACIKA', 'klimal@kkszki.hu', 'KLIMAL@KKSZKI.HU', 0, 'AQAAAAIAAYagAAAAEGkD+kb3t2nvrZl4Mwsag2Z92JIoaPvtYoIz3sv6OT5YMdnZ7xgShimTDvnstpkbBg==', 'ND6SH53JYCTP65HRHR6OAKMZ2JNKFF45', 'a6fcceef-df04-4c83-9245-8ade61d0a91d', '1010101001', 0, '', 0, NULL, 1, 0),
('f64543e3-80a4-4819-8f99-e8e8958c2b26', 'Tulajdonos', '2025-03-13 00:00:00.000000', 'Tulajdonos', 'TULAJDONOS', 'dlblakaskulcs@gmail.com', 'DLBLAKASKULCS@GMAIL.COM', 0, 'AQAAAAIAAYagAAAAEF/DDvB19oBd8N+fifuLuhEUT6YFsCFIUg2eVtSGPEC0Q3/Z7F6YSqsQNtpPmZVLYQ==', 'ZQPTV67KO7SZQQWSIKVHXYP3O5ACFLO7', 'f3091678-2a80-409d-b08f-b71e3221e070', '01303103030', 0, '', 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `ingatlanoks`
--

INSERT INTO `ingatlanoks` (`Id`, `Cim`, `Alapterulet`, `SzobakSzama`, `TelekMerete`, `EpitesVege`, `Allapot`, `KepUrl`, `Tipus`, `Varos`, `Megye`, `Ar`, `Berelheto`, `Eladható`, `UserId`) VALUES
(64, 'Kossuth Lajos utca 12.', 100.00, 3, 800.00, 2001, 'Felújított', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBlWNDdtvsLlWrN2rowfyRH_sIIqvOnSn4Hw&s', 'Családi ház', 'Budapest', 'Pest', 55000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(65, 'Petőfi Sándor utca 5.', 75.00, 2, 500.00, 2010, 'Új építésű', 'https://hazgyarto.hu/images/marti_kissebb.jpg', 'Társasházi lakás', 'Debrecen', 'Hajdú-Bihar', 32000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(66, 'Arany János utca 8.', 120.00, 4, 1000.00, 1995, 'Közepes állapotú', 'https://zsuzsanna.ingatlan.hu/images/gallery/szekszard-tolnai-lajos-utcai-csaladi-haz-elado.jpg', 'Családi ház', 'Győr', 'Győr-Moson-Sopron', 45000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(67, 'Hunyadi tér 3.', 60.00, 1, NULL, 2020, 'Új építésű', 'https://th.bing.com/th/id/OIP.MwLeKboj7vyGjRSrbITt8wHaE8?w=269&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Panel lakás', 'Miskolc', 'Borsod-Abaúj-Zemplén', 27000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(68, 'Bartók Béla út 18.', 90.00, 3, 700.00, 1980, 'Felújításra szorul', 'https://th.bing.com/th/id/OIP.I1e6UEvM2VJzsTzXkEqCnAHaFn?w=237&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Pécs', 'Baranya', 37000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(69, 'Ady Endre út 9.', 110.00, 4, 950.00, 2005, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.2wZp9me8QBLXO9jYDfsvnQHaEK?w=309&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Szeged', 'Csongrád-Csanád', 50000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(70, 'Rákóczi Ferenc utca 11.', 80.00, 3, 600.00, 2015, 'Új építésű', 'https://th.bing.com/th/id/OIP.L9MPCX3rKQL6igMVmN0SbQHaEK?w=315&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Eger', 'Heves', 42000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(71, 'Széchenyi tér 1.', 95.00, 3, NULL, 1990, 'Közepes állapotú', 'https://th.bing.com/th/id/OIP.91onJM7lKHJQHddwHQ0RVgHaEo?w=253&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Társasházi lakás', 'Székesfehérvár', 'Fejér', 36000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(72, 'Deák Ferenc tér 7.', 150.00, 5, 1200.00, 1985, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.zMY-YO094RsWvYnleOveFQHaE8?w=235&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Sopron', 'Győr-Moson-Sopron', 60000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(73, 'Dózsa György út 15.', 70.00, 2, NULL, 2021, 'Új építésű', 'https://th.bing.com/th/id/OIP.1m8iTohGcHBr__R_2sMABgHaFj?w=250&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Panel lakás', 'Nyíregyháza', 'Szabolcs-Szatmár-Bereg', 30000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(74, 'Táncsics Mihály utca 4.', 140.00, 4, 1100.00, 1998, 'Felújított', 'https://th.bing.com/th/id/OIP.tjrfGZGkHmyfR90yWj0aegHaEK?w=321&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Kecskemét', 'Bács-Kiskun', 48000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(75, 'Árpád út 21.', 85.00, 3, 550.00, 2003, 'Jó állapotú', 'https://th.bing.com/th?id=OIF.%2bSww7zohBSnJ0N5Cdbi6pA&w=247&h=186&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Zalaegerszeg', 'Zala', 41000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(76, 'Ferenc körút 6.', 55.00, 2, NULL, 2018, 'Új építésű', 'https://th.bing.com/th/id/OIP.OJ_uIWtrrXkNEOxlv4TbNQHaEN?w=294&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Társasházi lakás', 'Szekszárd', 'Tolna', 25000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(77, 'Kálvin tér 14.', 135.00, 5, 1300.00, 1992, 'Közepes állapotú', 'https://th.bing.com/th/id/OIP.aLctuN_9P6GzChTdaJFuawHaEJ?w=297&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Szolnok', 'Jász-Nagykun-Szolnok', 52000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(78, 'Vörösmarty utca 16.', 100.00, 3, 900.00, 1989, 'Felújításra szorul', 'https://th.bing.com/th/id/OIP.DvWy5Ll7sGF7H4SQlU-MQwHaHa?w=182&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Tatabánya', 'Komárom-Esztergom', 39000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(79, 'Béke út 19.', 60.00, 2, NULL, 2022, 'Új építésű', 'https://th.bing.com/th/id/OIP.s0m3pHV-SsE97ZKUw8T7-wHaFR?w=265&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Panel lakás', 'Szombathely', 'Vas', 28000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(80, 'Radnóti Miklós utca 2.', 115.00, 4, 1000.00, 2000, 'Felújított', 'https://th.bing.com/th/id/OIP.YLGvAym0ApwiokiLYyCD1gHaE5?w=283&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Esztergom', 'Komárom-Esztergom', 49000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(81, 'Kazinczy utca 10.', 80.00, 3, 650.00, 2008, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.NHqLoEdgzyHsBNQImSGqXAHaE4?w=285&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Veszprém', 'Veszprém', 43000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(82, 'Váci Mihály utca 25.', 90.00, 3, NULL, 1995, 'Közepes állapotú', 'https://th.bing.com/th?id=OIF.CncnD%2bQhDM6QaZDhbDivOg&w=249&h=186&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Társasházi lakás', 'Kapuvár', 'Győr-Moson-Sopron', 36000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(83, 'Kossuth Lajos utca 3.', 110.00, 4, 950.00, 2008, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.qS2s6vf5P6CZMiALhpsmHgHaEK?w=317&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Debrecen', 'Hajdú-Bihar', 47000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(84, 'Széchenyi utca 22.', 130.00, 5, 1200.00, 2002, 'Felújított', 'https://th.bing.com/th/id/OIP.sLZcQRfKpDFBG6WzoTzYxAHaEK?w=337&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Pécs', 'Baranya', 54000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(85, 'Petőfi utca 11.', 95.00, 3, 700.00, 2011, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.y-XkJOkOek_29z5_rWlQeAHaEK?w=293&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Székesfehérvár', 'Fejér', 46000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(86, 'Hunyadi utca 7.', 125.00, 4, 800.00, 2000, 'Közepes állapotú', 'https://th.bing.com/th/id/OIP.cZ9yDrgI9klyy0tOxjiwuwHaEK?w=273&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Miskolc', 'Borsod-Abaúj-Zemplén', 51000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(87, 'József Attila utca 9.', 90.00, 3, 600.00, 2015, 'Új építésű', 'https://th.bing.com/th/id/OIP.QePHVhsTAFLtxfnyV1xoJwHaEK?w=314&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Nyíregyháza', 'Szabolcs-Szatmár-Bereg', 39000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(88, 'Kossuth utca 4.', 150.00, 5, 1300.00, 2005, 'Felújított', 'https://th.bing.com/th/id/OIP.gX9g79ZXtjjTZbMQde4EbwHaEK?w=295&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Szeged', 'Csongrád-Csanád', 62000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(89, 'Szabadság utca 21.', 110.00, 4, 900.00, 2010, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.R7oPkjJjmrckzJ2pXzWoygHaE8?w=231&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Eger', 'Heves', 50000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(90, 'Rákóczi utca 8.', 95.00, 3, 750.00, 2017, 'Új építésű', 'https://th.bing.com/th/id/OIP.XZ7ihwAAW7QeZZ8D3gtq4gHaEK?w=249&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Veszprém', 'Veszprém', 46000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(91, 'Béke utca 3.', 80.00, 2, 500.00, 2020, 'Új építésű', 'https://th.bing.com/th/id/OIP.x2NcYs5pNr76F_iN5NxSkwHaEK?w=247&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Panel lakás', 'Szombathely', 'Vas', 29000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(92, 'Hősök tere 5.', 120.00, 4, 1000.00, 2003, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.UEx5xLMsRbzm32eg2yFYXgHaEK?w=245&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Tatabánya', 'Komárom-Esztergom', 55000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(93, 'Szent István utca 10.', 70.00, 2, 400.00, 2018, 'Új építésű', 'https://th.bing.com/th/id/OIP.3wn_kO4gNoF72oRfKqndkQHaEK?w=251&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Panel lakás', 'Szekszárd', 'Tolna', 27000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(94, 'Pesti utca 9.', 140.00, 5, 1200.00, 2010, 'Felújított', 'https://th.bing.com/th/id/OIP.lZkM_pNr9q0M0BduMLzxwAHaEK?w=315&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Kecskemét', 'Bács-Kiskun', 60000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(95, 'Vörösmarty utca 8.', 100.00, 3, 900.00, 2001, 'Közepes állapotú', 'https://th.bing.com/th/id/OIP.tYOcmUg8xUrx_F9Uk7_56wHaEo?w=276&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Veszprém', 'Veszprém', 45000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(96, 'Kálvin tér 6.', 95.00, 3, 800.00, 2016, 'Új építésű', 'https://th.bing.com/th/id/OIP.oYoicj70vcbWxz7fBslfkwHaEK?w=276&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Szolnok', 'Jász-Nagykun-Szolnok', 47000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(97, 'Fő utca 4.', 110.00, 4, 1000.00, 2014, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.BA-3rm24CVVRS-x7AznTcQHaEK?w=302&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Sopron', 'Győr-Moson-Sopron', 52000000, 0, 0, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(98, 'Arany János utca 12.', 120.00, 4, 1050.00, 2007, 'Felújított', 'https://th.bing.com/th/id/OIP.LfD-dNHD0FE8m73XwODwUwHaEK?w=276&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Pécs', 'Baranya', 55000000, 0, 0, '97e59cdd-a536-4d85-90a9-a8cb220a19d0'),
(99, 'Petőfi Sándor utca 3.', 85.00, 3, 650.00, 2012, 'Közepes állapotú', 'https://th.bing.com/th/id/OIP.ogV9LF1bd4g61L4UbWxfHQHaEK?w=292&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Székesfehérvár', 'Fejér', 42000000, 0, 0, '97e59cdd-a536-4d85-90a9-a8cb220a19d0'),
(100, 'Táncsics Mihály utca 9.', 105.00, 4, 950.00, 2009, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.5pT64jVYgq9cIR8r9MdmfgHaEK?w=292&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Miskolc', 'Borsod-Abaúj-Zemplén', 53000000, 0, 0, '97e59cdd-a536-4d85-90a9-a8cb220a19d0'),
(101, 'Váci Mihály utca 14.', 110.00, 4, 950.00, 2019, 'Új építésű', 'https://th.bing.com/th/id/OIP.yFi02Mz3hvPpSYATnB9jjgHaEK?w=295&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Debrecen', 'Hajdú-Bihar', 58000000, 0, 0, '97e59cdd-a536-4d85-90a9-a8cb220a19d0'),
(102, 'Rákóczi utca 3.', 100.00, 4, 800.00, 2013, 'Felújított', 'https://th.bing.com/th/id/OIP.rIRPrbJXl1VfP-lzkMuZwwHaEK?w=276&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Eger', 'Heves', 51000000, 0, 0, '97e59cdd-a536-4d85-90a9-a8cb220a19d0'),
(103, 'Kossuth Lajos utca 7.', 130.00, 5, 1200.00, 2006, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.xxYo7JQMm1MhXkdVzzm2XgHaEK?w=306&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Szeged', 'Csongrád-Csanád', 59000000, 0, 0, '97e59cdd-a536-4d85-90a9-a8cb220a19d0'),
(104, 'Vörösmarty utca 5.', 95.00, 3, 700.00, 2012, 'Jó állapotú', 'https://th.bing.com/th/id/OIP.CVxXYaD1zW1-Bb6B_EdVHAHaEo?w=258&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Ikerház', 'Veszprém', 'Veszprém', 44000000, 0, 0, '97e59cdd-a536-4d85-90a9-a8cb220a19d0'),
(105, 'Arany János utca 20.', 115.00, 4, 900.00, 2004, 'Felújított', 'https://th.bing.com/th/id/OIP.c6yDGEJlX8a1mD_i9_vPggHaEK?w=312&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Családi ház', 'Tatabánya', 'Komárom-Esztergom', 51000000, 0, 0, '97e59cdd-a536-4d85-90a9-a8cb220a19d0'),
(107, 'asd', 123.00, 12, 12311.00, 2022, 'jó', '/images/audi.jpg', 'kicsi', 'barcika', 'bazd', 2, 0, 1, '61b58764-0fb4-4f30-8fe0-3f612a2b6c91'),
(108, 'gfds', 2.00, 2, 2.00, 2, 'hgfd', '/images/kep.png', 'gfds', 'fds', 'fd', 2, 1, 0, 'f64543e3-80a4-4819-8f99-e8e8958c2b26'),
(109, 'sdfg', 2.00, 2, 2.00, 2, 'ghjk', '/images/kep.png', 'gh', 'gh', 'gh', 2, 0, 1, 'f64543e3-80a4-4819-8f99-e8e8958c2b26');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
