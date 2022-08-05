-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 05, 2022 at 12:44 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `castings_type`
--

CREATE TABLE `castings_type` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `castings_type`
--

INSERT INTO `castings_type` (`id`, `name`) VALUES
(1, 'acteur'),
(2, 'réalisateur');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'comédie'),
(2, 'fantastique'),
(3, 'horreur'),
(4, 'scifi');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `runtime` int(5) NOT NULL,
  `description` text NOT NULL,
  `ratings` int(11) NOT NULL,
  `genres` varchar(100) NOT NULL,
  `release_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `image_url`, `runtime`, `description`, `ratings`, `genres`, `release_date`) VALUES
(1, 'BRAIN DEAD', '/image/jealousy.jpg', 7200, 'Coccinelle est un assassin malchanceux et particulièrement déterminé à accomplir sa nouvelle mission paisiblement après que trop d\'entre elles aient déraillé. Mais le destin en a décidé autrement et l\'embarque dans le train le plus rapide au monde aux côtés d\'adversaires redoutables qui ont tous un point commun, mais dont les intérêts divergent radicalement... Il doit alors tenter par tous les moyens de descendre du train.', 4, '', '2022-08-02'),
(2, 'LES MINIONS 2 : IL ÉTAIT UNE FOIS GRU', 'images/tropmininion.jpg', 7500, 'Alors que les années 70 battent leur plein, Gru qui grandit en banlieue au milieu des jeans à pattes d’éléphants et des chevelures en fleur, met sur pied un plan machiavélique à souhait pour réussir à intégrer un groupe célèbre de super méchants, connu sous le nom de Vicious 6, dont il est le plus grand fan. Il est secondé dans sa tâche par les Minions, ses petits compagnons aussi turbulents que fidèles. Avec l’aide de Kevin, Stuart, Bob et Otto – un nouveau Minion arborant un magnifique appareil dentaire et un besoin désespéré de plaire - ils vont déployer ensemble des trésors d’ingéniosité afin de construire leur premier repaire, expérimenter leurs premières armes, et lancer leur première mission.\r\nLorsque les Vicious 6 limogent leur chef, le légendaire \" Wild Knuckles \", Gru passe l’audition pour intégrer l’équipe. Le moins qu’on puisse dire c’est que l’entrevue tourne mal, et soudain court quand Gru leur démontre sa supériorité et se retrouve soudain leur ennemi juré. Contraint de s’enfuir, il n’aura d’autre choix que de se tourner vers \" Wild Knuckles \" lui-même, afin de trouver une solution, rencontre qui lui permettra de découvrir que même les super méchants ont parfois besoin d’amis.', 5, '', '2022-07-04'),
(5, 'VESPER CHRONICLES', '', 7200, 'Dans le futur, les écosystèmes se sont effondrés. Parmi les survivants, quelques privilégiés se sont retranchés dans des citadelles coupées du monde, tandis que les autres tentent de subsister dans une nature devenue hostile à l’homme. Vivant dans les bois avec son père, la jeune Vesper rêve de s’offrir un autre avenir, grâce à ses talents de bio-hackeuse, hautement précieux dans ce monde où plus rien ne pousse. Le jour où un vaisseau en provenance des citadelles s’écrase avec à son bord une mystérieuse passagère, elle se dit que le destin frappe enfin à sa porte…', 3, '', '2022-05-04'),
(6, 'ONE PIECE FILM - RED', '', 7500, 'i rèd menm a gadé.\r\nLuffy et son équipage s’apprêtent à assister à un festival de musique attendu avec impatience. La chanteuse la plus populaire du monde, Uta, va monter sur scène pour la première fois. Celle qui n’est autre que la fille du légendaire pirate Shanks Le Roux va révéler la puissance exceptionnelle de sa voix qui pourrait bien changer le monde…', 3, '', '2022-09-15'),
(7, 'NOPE', '', 7800, 'Les habitants d’une vallée perdue du fin fond de la Californie sont témoins d’une découverte terrifiante à caractère surnaturel.', 3, '', '2022-10-14'),
(8, 'DODO', '', 7505, 'Alle dodo\r\nDans leur luxueuse villa aux environs d’Athènes, Mariella et Pavlos, un couple au bord de la ruine, s’apprêtent à célébrer le mariage de leur fille Sofia avec un riche héritier. C’est alors qu’un dodo, oiseau disparu il y a 300 ans, fait son apparition, entraînant tous les protagonistes dans une ronde folle. La situation sera bientôt hors de contrôle...\r\nSÉANCES', 5, '', '2022-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `movies_castings`
--

CREATE TABLE `movies_castings` (
  `movies_id` int(11) NOT NULL,
  `castings_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies_castings`
--

INSERT INTO `movies_castings` (`movies_id`, `castings_id`) VALUES
(1, 4),
(1, 1),
(7, 6),
(7, 12);

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

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `users_id` int(11) NOT NULL,
  `movies_id` int(11) NOT NULL,
  `rate` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`users_id`, `movies_id`, `rate`) VALUES
(1, 1, 45),
(2, 1, 78);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `sex` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `sex`) VALUES
(1, 'Jerome', 'Jeampi', 0),
(2, 'Gary', 'Cooper', 0);

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
-- Indexes for table `castings_type`
--
ALTER TABLE `castings_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies_castings`
--
ALTER TABLE `movies_castings`
  ADD KEY `movies_id` (`movies_id`),
  ADD KEY `castings_id` (`castings_id`);

--
-- Indexes for table `movies_genres`
--
ALTER TABLE `movies_genres`
  ADD KEY `movies_id` (`movies_id`),
  ADD KEY `genres_id` (`genres_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD KEY `users_id` (`users_id`),
  ADD KEY `movies_id` (`movies_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `castings`
--
ALTER TABLE `castings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `castings_type`
--
ALTER TABLE `castings_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `castings`
--
ALTER TABLE `castings`
  ADD CONSTRAINT `castings_ibfk_1` FOREIGN KEY (`type`) REFERENCES `castings_type` (`id`);

--
-- Constraints for table `movies_castings`
--
ALTER TABLE `movies_castings`
  ADD CONSTRAINT `movies_castings_ibfk_1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `movies_castings_ibfk_2` FOREIGN KEY (`castings_id`) REFERENCES `castings` (`id`);

--
-- Constraints for table `movies_genres`
--
ALTER TABLE `movies_genres`
  ADD CONSTRAINT `movies_genres_ibfk_1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `movies_genres_ibfk_2` FOREIGN KEY (`genres_id`) REFERENCES `genre` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
