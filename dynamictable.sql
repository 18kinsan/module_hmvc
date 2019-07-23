-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2019 at 12:23 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

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

CREATE TABLE `asdfgh` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `datatypes`
--

CREATE TABLE `datatypes` (
  `id` int(11) NOT NULL,
  `datatype_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `iklo` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ooo`
--

CREATE TABLE `ooo` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(10) UNSIGNED NOT NULL,
  `asal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qwerrrr`
--

CREATE TABLE `qwerrrr` (
  `id` int(10) UNSIGNED NOT NULL,
  `nyoo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qwertyu`
--

CREATE TABLE `qwertyu` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `columnname` varchar(255) NOT NULL,
  `displayname` varchar(255) NOT NULL,
  `length` int(11) NOT NULL,
  `datatype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(18, 10, 'asal', 'Asal', 255, 'string');

-- --------------------------------------------------------

--
-- Table structure for table `tablelists`
--

CREATE TABLE `tablelists` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(10, 'Orang');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(10) UNSIGNED NOT NULL,
  `hahaha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testing2`
--

CREATE TABLE `testing2` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testing3`
--

CREATE TABLE `testing3` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asdfgh`
--
ALTER TABLE `asdfgh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datatypes`
--
ALTER TABLE `datatypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iklo`
--
ALTER TABLE `iklo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ooo`
--
ALTER TABLE `ooo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qwerrrr`
--
ALTER TABLE `qwerrrr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qwertyu`
--
ALTER TABLE `qwertyu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_id` (`table_id`);

--
-- Indexes for table `tablelists`
--
ALTER TABLE `tablelists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testing2`
--
ALTER TABLE `testing2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testing3`
--
ALTER TABLE `testing3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asdfgh`
--
ALTER TABLE `asdfgh`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datatypes`
--
ALTER TABLE `datatypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `iklo`
--
ALTER TABLE `iklo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ooo`
--
ALTER TABLE `ooo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qwerrrr`
--
ALTER TABLE `qwerrrr`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qwertyu`
--
ALTER TABLE `qwertyu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tablelists`
--
ALTER TABLE `tablelists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testing2`
--
ALTER TABLE `testing2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testing3`
--
ALTER TABLE `testing3`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
