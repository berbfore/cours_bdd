-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 05, 2022 at 12:45 PM
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
-- Table structure for table `castings`
--

CREATE TABLE `castings` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `sex` tinyint(4) NOT NULL,
  `about` text NOT NULL,
  `birthdate` date NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `castings`
--

INSERT INTO `castings` (`id`, `firstname`, `lastname`, `sex`, `about`, `birthdate`, `type`) VALUES
(1, 'Raoul', 'Peck', 0, 'Fiche descriptive de Raoul Peck', '2000-08-02', 1),
(2, 'James', 'Cameron', 0, 'Fiche descriptive de James Cameron.', '1985-08-02', 2),
(3, 'Megan', 'Good', 1, 'Fiche descriptive de Megan Good.', '2019-06-11', 1),
(4, 'Demi', 'Moore', 1, 'Fiche descriptive de Demi Moore.', '2022-03-08', 1),
(5, 'Regina', 'King', 1, 'Fiche descriptive de Regina King', '1978-08-02', 1),
(6, 'Gabrielle', 'Union', 1, 'Fiche descriptive de Gabrielle Union.', '1999-07-02', 1),
(7, 'Louis Jr', 'Gossett', 0, 'Fiche descriptive de Louis Gossett Jr.', '1936-08-02', 1),
(8, 'Jacob', 'Ming-Trent', 0, 'Fiche descriptive de Jacob Ming-Trent.', '1986-09-02', 1),
(9, 'Robinne', 'Lee', 1, 'Fiche descriptive de Robinne Lee.', '1974-08-02', 1),
(10, 'Duane', 'Martin', 0, 'Fiche descriptive de Duane Martin.', '1986-02-02', 1),
(11, 'Debra', 'Byrd', 1, 'Fiche descriptive de Debra Byrd.', '1968-06-02', 1),
(12, 'Dwayne', 'Johnson', 0, 'Fiche descriptive de Dwayne Johnson', '1972-09-02', 1),
(13, 'Rayan', 'Gosling', 0, 'Fiche descriptive de Rayan Gosling', '1980-08-02', 1),
(14, 'Rayan', 'Reynolds', 0, 'Fiche descriptive de Rayan Reynolds', '1976-10-02', 1),
(15, 'Morena', 'Baccarin', 1, 'Fiche descriptive de Morena Baccarin', '1979-06-02', 1),
(16, 'Leslie', 'Uggams', 1, 'Fiche descriptive de Leslie Uggams.', '1943-08-02', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `castings`
--
ALTER TABLE `castings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `castings`
--
ALTER TABLE `castings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `castings`
--
ALTER TABLE `castings`
  ADD CONSTRAINT `castings_ibfk_1` FOREIGN KEY (`type`) REFERENCES `castings_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
