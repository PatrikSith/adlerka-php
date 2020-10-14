-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 14, 2020 at 08:32 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sith`
--

-- --------------------------------------------------------

--
-- Table structure for table `c_trieda`
--

DROP TABLE IF EXISTS `c_trieda`;
CREATE TABLE IF NOT EXISTS `c_trieda` (
  `idc_trieda` int(11) NOT NULL AUTO_INCREMENT,
  `nazov_ctrieda` varchar(50) COLLATE utf8_slovak_ci NOT NULL,
  `skupina` int(1) NOT NULL,
  PRIMARY KEY (`idc_trieda`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Dumping data for table `c_trieda`
--

INSERT INTO `c_trieda` (`idc_trieda`, `nazov_ctrieda`, `skupina`) VALUES
(1, '1B', 1),
(2, '2B', 1),
(3, '3B', 1),
(4, '4B', 1);

-- --------------------------------------------------------

--
-- Table structure for table `preklad`
--

DROP TABLE IF EXISTS `preklad`;
CREATE TABLE IF NOT EXISTS `preklad` (
  `idpreklad` int(9) NOT NULL AUTO_INCREMENT,
  `jazyk` varchar(2) COLLATE utf8_slovak_ci NOT NULL,
  `retazec` varchar(100) COLLATE utf8_slovak_ci NOT NULL,
  `preklad` text COLLATE utf8_slovak_ci NOT NULL,
  PRIMARY KEY (`idpreklad`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Dumping data for table `preklad`
--

INSERT INTO `preklad` (`idpreklad`, `jazyk`, `retazec`, `preklad`) VALUES
(1, 'sk', 'pfg', 'programovacie a interaktívne prostredia'),
(2, 'en', 'pfg', 'interactive programming environment');

-- --------------------------------------------------------

--
-- Table structure for table `rozvrh`
--

DROP TABLE IF EXISTS `rozvrh`;
CREATE TABLE IF NOT EXISTS `rozvrh` (
  `idrozvrh` int(9) NOT NULL AUTO_INCREMENT,
  `den` int(3) NOT NULL,
  `hodina` int(3) NOT NULL,
  `predmet` varchar(20) COLLATE utf8_slovak_ci NOT NULL,
  `trieda` varchar(3) COLLATE utf8_slovak_ci NOT NULL,
  PRIMARY KEY (`idrozvrh`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Dumping data for table `rozvrh`
--

INSERT INTO `rozvrh` (`idrozvrh`, `den`, `hodina`, `predmet`, `trieda`) VALUES
(1, 2, 0, 'PFG', '3B'),
(2, 2, 1, 'PFG', '3B'),
(3, 0, 0, 'PGC', '3B'),
(4, 0, 1, 'PGC', '3B'),
(5, 0, 2, 'AJ', '3B'),
(6, 0, 3, 'ZEQ', '3B'),
(7, 0, 4, 'PRO', '3B'),
(8, 0, 5, 'PRO', '3B'),
(9, 0, 6, 'SIE', '3B'),
(10, 0, 7, 'SIE', '3B'),
(11, 1, 1, 'TSV', '3B'),
(12, 1, 5, 'TSV', '2A');

-- --------------------------------------------------------

--
-- Table structure for table `uzivatelia`
--

DROP TABLE IF EXISTS `uzivatelia`;
CREATE TABLE IF NOT EXISTS `uzivatelia` (
  `iduzivatelia` int(9) NOT NULL AUTO_INCREMENT,
  `meno` varchar(50) COLLATE utf8_slovak_ci NOT NULL,
  `prezvisko` varchar(100) CHARACTER SET utf16 COLLATE utf16_slovak_ci NOT NULL,
  `datum_narodenia` date NOT NULL,
  `id_c_trieda` int(3) NOT NULL DEFAULT '0',
  `logname` varchar(150) COLLATE utf8_slovak_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_slovak_ci NOT NULL,
  PRIMARY KEY (`iduzivatelia`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci COMMENT='tabulka pouzivatelov 14.10.2020';

--
-- Dumping data for table `uzivatelia`
--

INSERT INTO `uzivatelia` (`iduzivatelia`, `meno`, `prezvisko`, `datum_narodenia`, `id_c_trieda`, `logname`, `password`) VALUES
(1, 'Patrik', 'Sith', '2020-09-04', 0, 'patrik.sith', '809ab99289d7a0818a7e291802f4d92e4f7f28ad'),
(2, 'Jozko', 'Mrkva', '2010-06-05', 0, 'jozko.mrkva', 'ec11517587d6ed81047e524ce383c5a6d3c2d6f9'),
(3, 'Fero', 'Ceruzka', '2020-05-08', 0, 'fero', '780c7888cbcbc01b3a3c0f3d3b507da1888ba2b5'),
(4, 'Miso', 'Fixka', '2020-06-11', 0, 'miso', '7c4a8d09ca3762af61e59520943dc26494f8941b');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
