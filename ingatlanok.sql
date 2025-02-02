-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Feb 02. 16:41
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
(82, 'Váci Mihály utca 25.', 90.00, 3, NULL, 1995, 'Közepes állapotú', 'https://th.bing.com/th?id=OIF.CncnD%2bQhDM6QaZDhbDivOg&w=249&h=186&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Társasházi lakás', 'Kapuvár', 'Győr-Moson-Sopron', 36000000);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ingatlanok`
--
ALTER TABLE `ingatlanok`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `ingatlanok`
--
ALTER TABLE `ingatlanok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
