-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 09 juin 2023 à 04:37
-- Version du serveur : 10.4.19-MariaDB
-- Version de PHP : 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `codreal`
--

-- --------------------------------------------------------

--
-- Structure de la table `chats`
--

CREATE TABLE `chats` (
  `chat_id` int(11) NOT NULL,
  `first_user_name` varchar(255) DEFAULT NULL,
  `second_user_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `chats`
--

INSERT INTO `chats` (`chat_id`, `first_user_name`, `second_user_name`) VALUES
(25, 'mouhamed', 'mounir'),
(29, 'mourad', 'mounir'),
(30, 'mourad', 'mouhamed'),
(31, 'mourad', 'mmmmmm'),
(32, 'mounir', 'mmmmmm'),
(52, 'nouranJ', 'mmmmmm'),
(53, 'mounir', 'nouranJ'),
(102, 'Mehdi1234', 'mmmmmm'),
(103, 'Mehdi1234', 'mounir'),
(104, 'Mehdi1234', 'mouhamed');

-- --------------------------------------------------------

--
-- Structure de la table `chats_seq`
--

CREATE TABLE `chats_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `chats_seq`
--

INSERT INTO `chats_seq` (`next_val`) VALUES
(201);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `replymessage` varchar(255) DEFAULT NULL,
  `sender_email` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `chat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `replymessage`, `sender_email`, `time`, `chat_id`) VALUES
(166, 'ahla si mounir', 'Mehdi1234', '2023-06-09 03:27:23', 103),
(167, 'ahla mahdi', 'mounir', '2023-06-09 03:27:36', 103),
(168, 'ena nheb ala l offre mte3ek ', 'Mehdi1234', '2023-06-09 03:27:50', 103);

-- --------------------------------------------------------

--
-- Structure de la table `message_seq`
--

CREATE TABLE `message_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `message_seq`
--

INSERT INTO `message_seq` (`next_val`) VALUES
(251);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_name`) VALUES
('Mehdi1234'),
('mmmmmm'),
('mouhamed'),
('mounir'),
('mourad'),
('nouranJ');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`chat_id`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK42x69hym7joy0ffxtkuq82wnc` (`chat_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_name`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK42x69hym7joy0ffxtkuq82wnc` FOREIGN KEY (`chat_id`) REFERENCES `chats` (`chat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
