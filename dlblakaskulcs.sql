-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Már 13. 08:20
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
  `Cim` longtext NOT NULL,
  `Alapterulet` int(11) NOT NULL,
  `SzobakSzama` int(11) NOT NULL,
  `TelekMerete` int(11) DEFAULT NULL,
  `EpitesVege` int(11) DEFAULT NULL,
  `Allapot` longtext DEFAULT NULL,
  `KepUrl` longtext DEFAULT NULL,
  `Tipus` longtext DEFAULT NULL,
  `Varos` longtext DEFAULT NULL,
  `Megye` longtext DEFAULT NULL,
  `Ar` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `akcioshazaks`
--

INSERT INTO `akcioshazaks` (`Id`, `Cim`, `Alapterulet`, `SzobakSzama`, `TelekMerete`, `EpitesVege`, `Allapot`, `KepUrl`, `Tipus`, `Varos`, `Megye`, `Ar`) VALUES
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
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `Fullname`, `BirthDate`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('61b58764-0fb4-4f30-8fe0-3f612a2b6c91', NULL, '2005-12-18 00:00:00.000000', 'BtndKllr', 'BTNDKLLR', 'kocsisb@kkszki.hu', 'KOCSISB@KKSZKI.HU', 0, 'AQAAAAIAAYagAAAAENw9GKVamVwAMF4zHCb8yai5RXkZ81PxFDZqXR06B+C5I1fgCZpWKrC/lZ6I6C4BMw==', 'JJVJ4ZP7HEAZBI6UFSKRUU2OVS775S4R', '56c95dba-b42b-4b08-a8a6-471fbfcf2f0e', '06706227218', 0, 0, NULL, 1, 0),
('e26d27f9-cf3c-42d0-b704-3684133db730', NULL, '2025-03-04 13:00:35.961000', 'zoli01', 'ZOLI01', 'zoli01@kkszki.hu', 'ZOLI01@KKSZKI.HU', 0, 'AQAAAAIAAYagAAAAEJC37UprtBUmZuaG7UQ9lEuVd0J7Y0GAcSODznjSJrLtYtqTqS1GE/DPKnqeHUZf+A==', 'PITNJX2OKPZMKL66XXG355EB5IDXKSV2', '5499c646-1e88-4b26-bce1-8de8d5c030c2', '357012345678', 0, 0, NULL, 1, 0);

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
(5, 'Tó u.1', '43.00', 2, '500.00', 2026, 'Újszerű', 'string', 'Bérház', 'Msikolc', 'BAZ', 20000000, 1, 0, 'e26d27f9-cf3c-42d0-b704-3684133db730'),
(6, 'string', '20.00', 20, '30.00', 50, 'string', 'string', 'string', 'string', 'string', 34, 1, 1, 'e26d27f9-cf3c-42d0-b704-3684133db730');

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
  ADD PRIMARY KEY (`Id`);

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
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- A tábla indexei `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- A tábla indexei `ingatlanoks`
--
ALTER TABLE `ingatlanoks`
  ADD PRIMARY KEY (`Id`);

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Megkötések a kiírt táblákhoz
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
