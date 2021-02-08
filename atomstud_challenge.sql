-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2021 at 11:28 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `challenge`
--

-- --------------------------------------------------------

--
-- Table structure for table `TODO`
--

CREATE TABLE `TODO` (
  `id` int(100) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `edit` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `TODO`
--

INSERT INTO `TODO` (`id`, `name`, `title`, `description`, `completed`, `date`, `edit`) VALUES
(1, 'Sergio Panduro', 'Test 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been \r\n', 0, '05/02/2021', ''),
(2, 'Sergio Panduro', 'Test 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been \r\n', 0, '05/02/2021', ''),
(3, 'Sergio Panduro', 'Test 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been \r\n', 1, '05/02/2021', ''),


--
-- Indexes for dumped tables
--

--
-- Indexes for table `TODO`
--
ALTER TABLE `TODO`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `TODO`
--
ALTER TABLE `TODO`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
