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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
