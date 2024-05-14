-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 14, 2024 at 09:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Repeaters`
--

-- --------------------------------------------------------

--
-- Table structure for table `repeaters_info`
--

CREATE TABLE `repeaters_info` (
  `CALLSIGN` varchar(10) DEFAULT NULL,
  `QTH1` varchar(10) DEFAULT NULL,
  `QTH2` varchar(30) DEFAULT NULL,
  `RX` int(12) DEFAULT NULL,
  `TX` int(12) DEFAULT NULL,
  `OFFSET` int(12) DEFAULT NULL,
  `TONE` int(5) DEFAULT NULL,
  `MODE` varchar(10) DEFAULT NULL,
  `TYPE` varchar(10) DEFAULT NULL,
  `ALT` int(10) DEFAULT NULL,
  `COM` varchar(60) DEFAULT NULL,
  `ECHO` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `repeaters_info`
--

INSERT INTO `repeaters_info` (`CALLSIGN`, `QTH1`, `QTH2`, `RX`, `TX`, `OFFSET`, `TONE`, `MODE`, `TYPE`, `ALT`, `COM`, `ECHO`) VALUES
('LZ0KAU', 'KN12', 'SOFIA', 445, 440, 5, 76, 'DUPLEX', 'Analog 70', 800, 'THIS IS A TEST REPEATER', 1),
('LZ0KAU', 'KN12', 'SOFIA', 445, 440, 5, 76, 'DUPLEX', 'Analog 70', 800, 'THIS IS A TEST REPEATER', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
