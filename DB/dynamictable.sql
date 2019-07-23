-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 23, 2019 at 03:02 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dynamictable`
--

-- --------------------------------------------------------

--
-- Table structure for table `asdfgh`
--

DROP TABLE IF EXISTS `asdfgh`;
CREATE TABLE IF NOT EXISTS `asdfgh` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `datatypes`
--

DROP TABLE IF EXISTS `datatypes`;
CREATE TABLE IF NOT EXISTS `datatypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datatype_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datatypes`
--

INSERT INTO `datatypes` (`id`, `datatype_name`) VALUES
(1, 'Integer'),
(2, 'String');

-- --------------------------------------------------------

--
-- Table structure for table `iklo`
--

DROP TABLE IF EXISTS `iklo`;
CREATE TABLE IF NOT EXISTS `iklo` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ooo`
--

DROP TABLE IF EXISTS `ooo`;
CREATE TABLE IF NOT EXISTS `ooo` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

DROP TABLE IF EXISTS `orang`;
CREATE TABLE IF NOT EXISTS `orang` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(10) UNSIGNED NOT NULL,
  `asal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qwerrrr`
--

DROP TABLE IF EXISTS `qwerrrr`;
CREATE TABLE IF NOT EXISTS `qwerrrr` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nyoo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qwertyu`
--

DROP TABLE IF EXISTS `qwertyu`;
CREATE TABLE IF NOT EXISTS `qwertyu` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
CREATE TABLE IF NOT EXISTS `record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` int(11) NOT NULL,
  `columnname` varchar(255) NOT NULL,
  `displayname` varchar(255) NOT NULL,
  `length` int(11) NOT NULL,
  `datatype` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `table_id` (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`id`, `table_id`, `columnname`, `displayname`, `length`, `datatype`) VALUES
(1, 1, 'id', 'ID', 11, 'integer'),
(2, 1, 'hahaha', 'Hahaha', 255, 'string'),
(3, 2, 'id', 'ID', 11, 'integer'),
(4, 2, 'nyoo', 'Nyoo', 255, 'string'),
(5, 3, 'id', 'ID', 11, 'integer'),
(6, 3, 'nama', 'Nama', 255, 'string'),
(7, 4, 'id', 'ID', 11, 'integer'),
(8, 4, 'nama', 'Nama', 255, 'string'),
(9, 5, 'id', 'ID', 11, 'integer'),
(10, 5, 'nama', 'Nama', 255, 'string'),
(11, 6, 'id', 'ID', 11, 'integer'),
(12, 7, 'id', 'ID', 11, 'integer'),
(13, 8, 'id', 'ID', 11, 'integer'),
(14, 9, 'id', 'ID', 11, 'integer'),
(15, 10, 'id', 'ID', 11, 'integer'),
(16, 10, 'nama', 'Nama', 255, 'string'),
(17, 10, 'umur', 'Umur', 11, 'integer'),
(18, 10, 'asal', 'Asal', 255, 'string'),
(19, 11, 'id', 'ID', 11, 'integer'),
(20, 11, 'email', 'Email', 15, 'string'),
(21, 11, 'password', 'Password', 15, 'string'),
(22, 12, 'id', 'ID', 11, 'integer'),
(23, 12, 'user', 'User', 50, 'string'),
(24, 12, 'password', 'Password', 50, 'string'),
(25, 13, 'id', 'ID', 11, 'integer'),
(26, 13, 'email', 'Email', 50, 'string'),
(27, 13, 'password', 'Password', 50, 'string'),
(28, 14, 'id', 'ID', 11, 'integer'),
(29, 14, 'nama', 'Nama', 50, 'string'),
(30, 15, 'id', 'ID', 11, 'integer'),
(31, 15, 'nama', 'Nama', 50, 'string');

-- --------------------------------------------------------

--
-- Table structure for table `tablelists`
--

DROP TABLE IF EXISTS `tablelists`;
CREATE TABLE IF NOT EXISTS `tablelists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tablelists`
--

INSERT INTO `tablelists` (`id`, `table_name`) VALUES
(1, 'Test'),
(2, 'Qwerrrr'),
(3, 'Test'),
(4, 'Testing2'),
(5, 'Testing3'),
(6, 'qwertyu'),
(7, 'asdfgh'),
(8, 'iklo'),
(9, 'ooo'),
(10, 'Orang'),
(11, 'auth'),
(12, 'Authen'),
(13, 'users'),
(14, 'module'),
(15, 'module');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hahaha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testing2`
--

DROP TABLE IF EXISTS `testing2`;
CREATE TABLE IF NOT EXISTS `testing2` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testing3`
--

DROP TABLE IF EXISTS `testing3`;
CREATE TABLE IF NOT EXISTS `testing3` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(2, 'admin@indoit.com', '$2y$10$rTDbHIXZQaJRaQk6pPCvZOJHL4p/MNRO6HvYsjBcOrUDr9zUhvHQS');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
