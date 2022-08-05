-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 05, 2022 at 12:47 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_database_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies_genres`
--

CREATE TABLE `movies_genres` (
  `movies_id` int(11) NOT NULL,
  `genres_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies_genres`
--

INSERT INTO `movies_genres` (`movies_id`, `genres_id`) VALUES
(1, 3),
(1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies_genres`
--
ALTER TABLE `movies_genres`
  ADD KEY `movies_id` (`movies_id`),
  ADD KEY `genres_id` (`genres_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movies_genres`
--
ALTER TABLE `movies_genres`
  ADD CONSTRAINT `movies_genres_ibfk_1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `movies_genres_ibfk_2` FOREIGN KEY (`genres_id`) REFERENCES `genre` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
