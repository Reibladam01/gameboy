-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Feb 24. 11:18
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
-- Adatbázis: `gameboy`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `games`
--

CREATE TABLE `games` (
  `g_ID` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `pic` varchar(60) NOT NULL,
  `type_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `games`
--

INSERT INTO `games` (`g_ID`, `name`, `pic`, `type_ID`) VALUES
(13, 'Raid over Moscow', '/pic/rom.jpg', 1),
(14, 'GhostBusters', '/pic/gb.jpg', 2),
(15, 'wizzard of wor', '/pic/wof.jpg', 1),
(16, 'Soccer', '/pic/soc.jpg', 3),
(17, 'pacman', '/pic/pm.jpg', 1),
(18, 'California Games', '/pic/cg.jpg', 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `type`
--

CREATE TABLE `type` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `type`
--

INSERT INTO `type` (`t_id`, `t_name`) VALUES
(1, 'arcade'),
(2, 'action'),
(3, 'sport');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`g_ID`),
  ADD KEY `type_ID` (`type_ID`);

--
-- A tábla indexei `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`t_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `games`
--
ALTER TABLE `games`
  MODIFY `g_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT a táblához `type`
--
ALTER TABLE `type`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`type_ID`) REFERENCES `type` (`t_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
