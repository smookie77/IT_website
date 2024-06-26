-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Време на генериране: 19 май 2024 в 16:26
-- Версия на сървъра: 10.4.32-MariaDB
-- Версия на PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `Repeaters`
--

-- --------------------------------------------------------

--
-- Структура на таблица `repeaters_info`
--

CREATE TABLE `repeaters_info` (
  `CALLSIGN` varchar(10) DEFAULT NULL,
  `QTH1` varchar(10) DEFAULT NULL,
  `QTH2` varchar(30) DEFAULT NULL,
  `QTH3` varchar(20) NOT NULL,
  `RX` float DEFAULT NULL,
  `TX` float DEFAULT NULL,
  `OFFSET` float DEFAULT NULL,
  `TONE` float DEFAULT NULL,
  `MODE` varchar(10) DEFAULT NULL,
  `TYPE` varchar(10) DEFAULT NULL,
  `ALT` int(10) DEFAULT NULL,
  `COM` varchar(60) DEFAULT NULL,
  `ECHO` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `repeaters_info`
--

INSERT INTO `repeaters_info` (`CALLSIGN`, `QTH1`, `QTH2`, `QTH3`, `RX`, `TX`, `OFFSET`, `TONE`, `MODE`, `TYPE`, `ALT`, `COM`, `ECHO`) VALUES
('LZ0MSS', 'KN12PU', 'SOFIA', 'BALSHA', 438.85, 431.25, 7.6, 85.4, 'DUPLEX', 'ANALOG', 674, 'RU708', 0),
('LZ0IOS', 'KN12RT', 'SOFIA', 'SELO RUSIA', 439.075, 431.975, 7.6, 85.4, 'DUPLEX', 'ANALOG', 680, 'RU766', 0),
('LZ0MAI', 'KN12PQ', 'SOFIA', 'PIROGOV', 439.575, 431.975, 7.6, 79.7, 'DUPLEX', 'ANALOG', 568, 'RU766', 0),
('LZ0WAG', 'KN12PQ', 'SOFIA', 'PIROGOV', 145.35, 144.75, 0.6, 0, 'DUPLEX', 'ANALOG', 568, 'R14, RV28', 291915),
('LZ0TRI', 'KN12QQ', 'SOFIA', 'REDUTA', 145.675, 145.075, 0.6, 0, 'DUPLEX', 'ANALOG', 582, 'R3, RV54', 0),
('LZ0FSB', 'KN12OP', 'SOFIA', 'BOIANA', 439.15, 431.55, 7.6, 85.4, 'DUPLEX', 'ANALOG', 680, 'RU732', 0),
('LZ0VTR', 'KN12PP', 'SOFIA', 'BOIANA', 438.625, 431.025, 7.6, 0, 'DUPLEX', 'FUSION DMR', 752, '0', 0),
('LZ0CBK', 'KN12OP', 'SOFIA', 'HOTEL KOPITOTO', 438.6, 431, 7.6, 0, 'DUPLEX', 'ANALOG', 1303, 'RU688', 0),
('LZ0ATV', 'KN12OP', 'SOFIA', 'HOTEL KOPITOTO', 439.425, 431.825, 7.6, 0, 'DUPLEX', 'DSTAR', 1326, 'RU754', 0),
('LZ0YDR', 'KN12OP', 'SOFIA', 'KOPITOTO', 439.25, 431.65, 7.6, 0, 'DUPLEX', 'FUSION', 1327, '0', 0),
('LZ0DMR', 'KN12OP', 'SOFIA', 'KOPITOTO', 439.2, 431.5, 7.6, 0, 'DUPLEX', 'DMR', 1327, '0', 0),
('LZ0DAB', 'KN12OP', 'SOFIA', 'KOPITOTO', 438.55, 430.95, 7.6, 0, 'DUPLEX', 'DSTAR', 1327, '0', 5888),
('LZ0DAA', 'KN12OP', 'SOFIA', 'KOPITOTO', 438.525, 430.925, 7.6, 0, 'DUPLEX', 'DSTAR', 1327, '0', 0),
('LZ0DSP', 'KN12OP', 'SOFIA', 'VITOSHA', 439.45, 431.85, 7.6, 0, 'DUPLEX', 'FUSION', 1461, 'RU756', 0),
('LZ0VHF', 'KN12OP', 'SOFIA', 'VITOSHA', 145.6, 125, 0.6, 0, 'DUPLEX', 'ANALOG', 1461, 'R0, RV48', 0),
('LZ0UHF', 'KN12OP', 'SOFIA', 'VITOSHA', 439.4, 431.8, 7.6, 79.7, 'DUPLEX', 'ANALOG', 1461, 'RU752', 439400);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
