-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 13 juin 2022 à 13:55
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `guestbook`
--

CREATE TABLE `guestbook` (
  `post_id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `guestbook`
--

INSERT INTO `guestbook` (`post_id`, `email`, `name`, `comment`, `datetime`) VALUES
(1, 'auuu@gmail', 'uriel', 'un commentaire', '2022-06-13 12:19:41'),
(1, 'funege66@gmail.com', 'Lolah', 'What is this ??? This is soooooo plain \r\n', '2022-06-13 08:37:53'),
(1, 'lkkjhjkj@jnbkkjh', 'lola', 'un second commentaire', '2022-06-13 12:20:01'),
(1, 'sami@gmail.fr', 'anani', 'superrrrrr', '2022-06-13 10:43:09'),
(1, 'sudagzd@gmail.com', 'YAPI', 'Peux mieux faire faut bosser frère ?', '2022-06-13 11:10:32');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `guestbook`
--
ALTER TABLE `guestbook`
  ADD PRIMARY KEY (`post_id`,`email`),
  ADD KEY `datetime` (`datetime`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
