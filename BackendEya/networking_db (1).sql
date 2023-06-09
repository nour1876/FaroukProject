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
-- Base de données : `networking_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidate_background`
--

CREATE TABLE `candidate_background` (
  `background_id` bigint(20) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `diploma` varchar(255) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  `user_candidate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `candidate_event`
--

CREATE TABLE `candidate_event` (
  `offer_id` bigint(20) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `localisation` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `type_event` varchar(255) DEFAULT NULL,
  `recruter_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `candidate_event`
--

INSERT INTO `candidate_event` (`offer_id`, `company_name`, `description`, `localisation`, `photo`, `publish_date`, `status`, `titre`, `type_event`, `recruter_id`) VALUES
(10, NULL, 'hhh', NULL, NULL, '2023-05-25 15:49:03', 'PENDING', 'jaaw', 'Team Building', 3),
(12, NULL, 'bbb', NULL, NULL, '2023-06-01 00:58:54', 'PENDING', 'nour', 'Team Building', 3);

-- --------------------------------------------------------

--
-- Structure de la table `candidate_experience`
--

CREATE TABLE `candidate_experience` (
  `experience_id` bigint(20) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `final_date` datetime DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `user_candidate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `candidate_language`
--

CREATE TABLE `candidate_language` (
  `language_id` bigint(20) NOT NULL,
  `language_name` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `user_candidate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `candidate_offer`
--

CREATE TABLE `candidate_offer` (
  `offer_id` bigint(20) NOT NULL,
  `categorie` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `localisation` varchar(255) DEFAULT NULL,
  `nature_de_travail` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `salaire` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `recruter_id` bigint(20) DEFAULT NULL,
  `recruter_entity` tinyblob DEFAULT NULL,
  `recruterid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `candidate_offer`
--

INSERT INTO `candidate_offer` (`offer_id`, `categorie`, `description`, `localisation`, `nature_de_travail`, `profile`, `publish_date`, `salaire`, `status`, `titre`, `recruter_id`, `recruter_entity`, `recruterid`) VALUES
(39, 'Développement', 'medic', 'EL KEF', 'Emploi', NULL, '2023-06-02 22:02:34', '22', 'REJECTED', 'zoloft', 6, NULL, NULL),
(40, 'Bricolage', 'c est du brico', 'TUNIS', 'Emploi', NULL, '2023-06-09 00:50:49', '50', 'CONFIRMED', 'bricolage', 5, NULL, NULL),
(42, 'Bricolage', 'une grande table ', 'BEJA', 'Service', NULL, '2023-06-09 01:47:26', '30', 'CONFIRMED', 'table', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `candidate_offer_registration`
--

CREATE TABLE `candidate_offer_registration` (
  `registration_id` bigint(20) NOT NULL,
  `cover_letter` varchar(255) DEFAULT NULL,
  `cv` varchar(255) DEFAULT NULL,
  `is_accessible_test` bit(1) NOT NULL,
  `is_eliminated` bit(1) NOT NULL,
  `portfolio_link` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `candidate_id` bigint(20) DEFAULT NULL,
  `offer_id` bigint(20) DEFAULT NULL,
  `test_registration_id` bigint(20) DEFAULT NULL,
  `candidate_entity` tinyblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `candidate_offer_registration`
--

INSERT INTO `candidate_offer_registration` (`registration_id`, `cover_letter`, `cv`, `is_accessible_test`, `is_eliminated`, `portfolio_link`, `status`, `candidate_id`, `offer_id`, `test_registration_id`, `candidate_entity`) VALUES
(43, 'undefined', 'undefined', b'0', b'0', 'http//:jjj', 'Accepté(e)', 2, 40, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `candidate_point`
--

CREATE TABLE `candidate_point` (
  `point_id` bigint(20) NOT NULL,
  `xp` int(11) DEFAULT NULL,
  `candidate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `candidate_point`
--

INSERT INTO `candidate_point` (`point_id`, `xp`, `candidate_id`) VALUES
(1, 35, 2),
(2, 25, 4),
(3, 10, 8);

-- --------------------------------------------------------

--
-- Structure de la table `candidate_project`
--

CREATE TABLE `candidate_project` (
  `project_id` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_candidate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `candidate_project`
--

INSERT INTO `candidate_project` (`project_id`, `content`, `image`, `title`, `user_candidate_id`) VALUES
(13, 'jjj', 'undefined', 'hello', 2),
(14, 'bbb', 'https://previews.123rf.com/images/domenicogelermo/domenicogelermo1303/domenicogelermo130300217/18629024-bricoleur-avec-les-outils-compl%C3%A8te-portrait-sur-fond-blanc.jpg', 'nour', 2),
(15, 'bbb', 'https://previews.123rf.com/images/domenicogelermo/domenicogelermo1303/domenicogelermo130300217/18629024-bricoleur-avec-les-outils-compl%C3%A8te-portrait-sur-fond-blanc.jpg', 'nour', 2),
(16, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 'undefined', 'nnn', 2),
(17, 'hellooooo', 'undefined', 'hello farouk', 2),
(18, 'hellooooo', 'undefined', 'hello farouk', 2);

-- --------------------------------------------------------

--
-- Structure de la table `candidate_skill`
--

CREATE TABLE `candidate_skill` (
  `skill_id` bigint(20) NOT NULL,
  `programming` varchar(255) DEFAULT NULL,
  `skill` varchar(255) DEFAULT NULL,
  `user_candidate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `candidate_test_offer_registration`
--

CREATE TABLE `candidate_test_offer_registration` (
  `test_id` bigint(20) NOT NULL,
  `is_done` bit(1) DEFAULT NULL,
  `path_test_candidate` varchar(255) DEFAULT NULL,
  `path_test_recruiter` varchar(255) DEFAULT NULL,
  `test_name` varchar(255) DEFAULT NULL,
  `recruter_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `candidate_training`
--

CREATE TABLE `candidate_training` (
  `training_id` bigint(20) NOT NULL,
  `center` varchar(255) DEFAULT NULL,
  `diploma` varchar(255) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `user_candidate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `chat_message`
--

CREATE TABLE `chat_message` (
  `id` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `recipient` varchar(255) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `email`, `message`, `name`, `subject`) VALUES
(1, 'mounir@gmail.com', 'hhh', 'mounir@gmail.com', 'hello'),
(2, 'mounir@gmail.com', 'hhh', 'mounir@gmail.com', 'hello'),
(3, 'nourbalti225@gmail.com', 'bonjour', 'nour', 'test'),
(4, 'nourbalti225@gmail.com', 'hello everyone', 'nour', 'testing'),
(5, 'marwa@gmail.com', 'hello', 'marwa', 'concours');

-- --------------------------------------------------------

--
-- Structure de la table `history`
--

CREATE TABLE `history` (
  `id` bigint(20) NOT NULL,
  `level_name` varchar(255) DEFAULT NULL,
  `rec` bigint(20) DEFAULT NULL,
  `sore` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `theme_name` varchar(255) DEFAULT NULL,
  `total` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `history`
--

INSERT INTO `history` (`id`, `level_name`, `rec`, `sore`, `status`, `theme_name`, `total`, `username`) VALUES
(1, 'good', 3, 80, 'Refusé(e)', 'theme', 0, 'inetum@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `level`
--

CREATE TABLE `level` (
  `id` bigint(20) NOT NULL,
  `difficulty` varchar(255) DEFAULT NULL,
  `theme_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` bigint(20) NOT NULL,
  `correct` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `response1` varchar(255) DEFAULT NULL,
  `response2` varchar(255) DEFAULT NULL,
  `response3` varchar(255) DEFAULT NULL,
  `level_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `test_question`
--

CREATE TABLE `test_question` (
  `test_id` bigint(20) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `test_registration_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `test_question`
--

INSERT INTO `test_question` (`test_id`, `answer`, `option1`, `option2`, `option3`, `option4`, `question`, `test_registration_id`) VALUES
(1, NULL, NULL, 'nth', 'No', 'yes', 'hello?', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

CREATE TABLE `theme` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `password`, `username`) VALUES
(1, 'nawara', 'nour123');

-- --------------------------------------------------------

--
-- Structure de la table `user_admin`
--

CREATE TABLE `user_admin` (
  `info` varchar(255) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `admin_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user_candidate`
--

CREATE TABLE `user_candidate` (
  `about_me` varchar(255) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `gouvernorat` varchar(255) DEFAULT NULL,
  `is_invited` bit(1) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `statut` varchar(255) DEFAULT NULL,
  `candidate_id` bigint(20) NOT NULL,
  `invited_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_candidate`
--

INSERT INTO `user_candidate` (`about_me`, `adress`, `city`, `details`, `gouvernorat`, `is_invited`, `phone_number`, `profession`, `statut`, `candidate_id`, `invited_by_id`) VALUES
('info', 'la marsa', 'sidi daoud', 'informatique de gestion nnnn', NULL, b'0', 93693824, 'hhh', 'CANDIDAT', 2, NULL),
('info', 'la marsa', 'ARIANA', 'nnnn', 'ARIANA', b'0', 93693824, 'ingénieur', 'CANDIDAT', 4, NULL),
(NULL, 'la marsa', 'EL KEF', NULL, NULL, b'0', 93693824, NULL, 'CANDIDAT', 8, NULL),
(NULL, 'la marsa', 'TUNIS', NULL, NULL, b'0', 93693824, NULL, 'FREELANCER', 19, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_club`
--

CREATE TABLE `user_club` (
  `clib_activity` varchar(255) DEFAULT NULL,
  `club_name` varchar(255) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  `club_representative_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user_owner`
--

CREATE TABLE `user_owner` (
  `city` varchar(255) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `space_name` varchar(255) DEFAULT NULL,
  `space_type` varchar(255) DEFAULT NULL,
  `owner_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user_recruiter`
--

CREATE TABLE `user_recruiter` (
  `activity_domain` varchar(255) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_size` int(11) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `foundation_date` varchar(255) DEFAULT NULL,
  `gouvernorat` varchar(255) DEFAULT NULL,
  `head_office` varchar(255) DEFAULT NULL,
  `is_sponsor` bit(1) DEFAULT NULL,
  `section_description` varchar(255) DEFAULT NULL,
  `section_title` varchar(255) DEFAULT NULL,
  `services` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `recruter_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_recruiter`
--

INSERT INTO `user_recruiter` (`activity_domain`, `adress`, `bio`, `city`, `company_name`, `company_size`, `details`, `foundation_date`, `gouvernorat`, `head_office`, `is_sponsor`, `section_description`, `section_title`, `services`, `website`, `recruter_id`) VALUES
('Informatique, Telecom, Multimedia', 'inetum@gmail.com', 'hhh', 'TUNIS', 'Inetum', 120, NULL, 'kkkk', NULL, NULL, b'0', NULL, NULL, NULL, NULL, 3),
('Biologie, pharmacie', 'tech el ghazela ariana', NULL, 'TUNIS', 'Medecin Mounir B', 5, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, 5),
('Biologie, pharmacie', 'tech el Ghazela', NULL, 'TUNIS', 'Pharmacie beauté', 30, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, 6),
('Langues, Traduction, Lettres', 'la marsa', NULL, 'BEJA', 'pharmacie', 20, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, 7);

-- --------------------------------------------------------

--
-- Structure de la table `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_role`
--

INSERT INTO `user_role` (`id`, `name`) VALUES
(1, 'ROLE_CANDIDATE'),
(2, 'ROLE_ADMIN'),
(3, 'ROLE_RECRUTER');

-- --------------------------------------------------------

--
-- Structure de la table `user_user`
--

CREATE TABLE `user_user` (
  `user_id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `confirmed_password` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_user`
--

INSERT INTO `user_user` (`user_id`, `code`, `confirmed_password`, `cover`, `email`, `first_name`, `last_name`, `logo`, `password`, `username`, `role_id`) VALUES
(2, '4c7456', '$2a$10$K4..e3lu0ng7gg0JtzrdaOl/0qW./swDIHnkbOwglgGtEXr7Nsv5G', 'https://img-3.journaldesfemmes.fr/bPZpx6no0ZhNBQeZ4AbdWvszfAM=/1500x/smart/d5461b76412045d0a5c41d2391cfd376/ccmcms-jdf/11742259.jpg', 'MehdiMeryeh@gmail.com', 'Mehdi', 'Meryeh', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGa2H2Ab1t8EfuiH32n1KbqaWlNCtXko-sMDZOAq3Z&s', '$2a$10$L77HGDnMjawheEjj9Qc0pudQMpns13KCTvVacav2x26G4bvOwv7xy', 'Mehdi1234', 1),
(3, NULL, '$2a$10$ql5dmHwvzoBYZGeYTP1oR.cMENy.YPVLrb8CQR8H8vaszPYMi2Q8y', NULL, 'pharmacie@gmail.com', 'Pharmacie', 'Hello', 'http://localhost:8080/upload/d6cd1e8336384d5faa24a2e6711738a5.png', '$2a$10$uKFj7kh.55Y/muLMneuhS.QK4ejnXTINf5gc8TRBnvlKF8fFe8QhC', 'pharmacie Hello', 3),
(4, '4b8b9a', '$2a$10$OKNGjEA7qUSC9QWhdk87k.Na0udvUn5pPu83mLWP55X7Oqey9iGY2', NULL, 'nawara@gmail.com', 'balti', 'nour', 'undefined', '$2a$10$eY7XgrilfOL8crOup/SqO.O..vjYihDiz/elZu8p/IkutrxaBpR5m', 'nawara', 1),
(5, NULL, '$2a$10$W/KAaTEPY4oV/dSK6vg9TuaIWXWd1EOaQi/a6qb8m84eQfNo7vJsO', 'https://photos.tf1info.fr/images/1280/720/istock-outils-de-bricolage-d7385f-0@1x.jpeg', 'mounir@gmail.com', 'Mounir', 'B', 'https://previews.123rf.com/images/domenicogelermo/domenicogelermo1303/domenicogelermo130300217/18629024-bricoleur-avec-les-outils-compl%C3%A8te-portrait-sur-fond-blanc.jpg', '$2a$10$IhgxR2PZyjSSIck757/12OLBUvodXj0jASWt6u/un1BHe603sznlW', 'mounir', 3),
(6, NULL, '$2a$10$lIgY6P7071yCuEjlbicWpuaohoBoG/iphyHqPm2VBoetckToBu18G', NULL, 'beauté@gmail.com', NULL, NULL, 'undefined', '$2a$10$H4QDZimfut8msORfZ7wqm.LuYb9wI2dgoPmbhYVzprfRJR8G/nDze', 'docteur mehdi', 3),
(7, NULL, '$2a$10$WcWKYGQYdSd.utW3pw4Q3ecUH.uFyuA7FyG4aburX3OoqvHKis4te', NULL, 'pharma@gmail.com', NULL, NULL, 'undefined', '$2a$10$GXRpO7yF5ttDQ8RGaoLoZeE3QkiL9zRo4TmR2VThnrhA23l0gtYPa', 'nour', 3),
(8, NULL, '$2a$10$./gzkGZr4uKqDbcWm.ROZuahRoW.K49rjNA5BfpN36EwtmVnZgy4W', NULL, 'nour@gmail.com', NULL, NULL, 'undefined', '$2a$10$uZKCAbSQWVaPor1aReH5FehBZm3yjK.nzgfQYIW8F4qsPHF.rKEjK', 'nour1245', 1),
(19, NULL, '$2a$10$/TbWjZBeGQatnMfLX.DiUevxdUKb/pk7QdRQkDcibTiXtOFOD8pBi', NULL, 'nouranJ@gmail.com', NULL, NULL, 'undefined', '$2a$10$GpcIcGmZzQFJz6ffkL8/WObHzhNmkq9tzEe4CCUxkDLy3L9vxoMba', 'nouranJ', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `candidate_background`
--
ALTER TABLE `candidate_background`
  ADD PRIMARY KEY (`background_id`),
  ADD KEY `FKs070djqfi5kp8gyc8ndplf7ym` (`user_candidate_id`);

--
-- Index pour la table `candidate_event`
--
ALTER TABLE `candidate_event`
  ADD PRIMARY KEY (`offer_id`),
  ADD KEY `FKj012wfx2ijlyp7nhtt9i4shlk` (`recruter_id`);

--
-- Index pour la table `candidate_experience`
--
ALTER TABLE `candidate_experience`
  ADD PRIMARY KEY (`experience_id`),
  ADD KEY `FK21yctd0221qx6bu1w8qar776w` (`user_candidate_id`);

--
-- Index pour la table `candidate_language`
--
ALTER TABLE `candidate_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `FKfabgkhsywebugj6xbedq8f6p9` (`user_candidate_id`);

--
-- Index pour la table `candidate_offer`
--
ALTER TABLE `candidate_offer`
  ADD PRIMARY KEY (`offer_id`),
  ADD KEY `FKsfm2c7350hn2phbbcmrkwowci` (`recruter_id`);

--
-- Index pour la table `candidate_offer_registration`
--
ALTER TABLE `candidate_offer_registration`
  ADD PRIMARY KEY (`registration_id`),
  ADD KEY `FKmp0aewjmifming4gs3no01b1l` (`candidate_id`),
  ADD KEY `FK2mob5wmqysx6yeva8x8weo9fb` (`offer_id`),
  ADD KEY `FKlev2xbg8i516c1lygw44fc8h3` (`test_registration_id`);

--
-- Index pour la table `candidate_point`
--
ALTER TABLE `candidate_point`
  ADD PRIMARY KEY (`point_id`),
  ADD UNIQUE KEY `UK_o4mx9owchyhtdaej5ssikc1f0` (`candidate_id`);

--
-- Index pour la table `candidate_project`
--
ALTER TABLE `candidate_project`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `FKk75gwkusxj4fubpwnvdvn4ygy` (`user_candidate_id`);

--
-- Index pour la table `candidate_skill`
--
ALTER TABLE `candidate_skill`
  ADD PRIMARY KEY (`skill_id`),
  ADD KEY `FKs7ss5w26meqnhov5n8xgmug32` (`user_candidate_id`);

--
-- Index pour la table `candidate_test_offer_registration`
--
ALTER TABLE `candidate_test_offer_registration`
  ADD PRIMARY KEY (`test_id`),
  ADD KEY `FKuehk4xsyxl33dsapi5jn9eet` (`recruter_id`);

--
-- Index pour la table `candidate_training`
--
ALTER TABLE `candidate_training`
  ADD PRIMARY KEY (`training_id`),
  ADD KEY `FK22l26grcsailmn74fta4t5eak` (`user_candidate_id`);

--
-- Index pour la table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9pkxem1pdwgksu4jfdqy8onyw` (`theme_id`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnsi1tkkbj9l1yw7vdts852vgf` (`level_id`);

--
-- Index pour la table `test_question`
--
ALTER TABLE `test_question`
  ADD PRIMARY KEY (`test_id`),
  ADD KEY `FKc59ofmdimp5fddel09txr9p7` (`test_registration_id`);

--
-- Index pour la table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_admin`
--
ALTER TABLE `user_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Index pour la table `user_candidate`
--
ALTER TABLE `user_candidate`
  ADD PRIMARY KEY (`candidate_id`),
  ADD KEY `FK57bxkq6r2brex0hnk7ptl385e` (`invited_by_id`);

--
-- Index pour la table `user_club`
--
ALTER TABLE `user_club`
  ADD PRIMARY KEY (`club_representative_id`);

--
-- Index pour la table `user_owner`
--
ALTER TABLE `user_owner`
  ADD PRIMARY KEY (`owner_id`);

--
-- Index pour la table `user_recruiter`
--
ALTER TABLE `user_recruiter`
  ADD PRIMARY KEY (`recruter_id`);

--
-- Index pour la table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_user`
--
ALTER TABLE `user_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UKfavk6o9pb8doixlxasybnv2r3` (`username`),
  ADD UNIQUE KEY `UKhofykoxdia79y5vglswxdtytv` (`email`),
  ADD KEY `FKs2ae1qxn3v8kb5bvj2qoktl4h` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `candidate_background`
--
ALTER TABLE `candidate_background`
  MODIFY `background_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `candidate_event`
--
ALTER TABLE `candidate_event`
  MODIFY `offer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `candidate_experience`
--
ALTER TABLE `candidate_experience`
  MODIFY `experience_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `candidate_language`
--
ALTER TABLE `candidate_language`
  MODIFY `language_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `candidate_offer`
--
ALTER TABLE `candidate_offer`
  MODIFY `offer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `candidate_offer_registration`
--
ALTER TABLE `candidate_offer_registration`
  MODIFY `registration_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `candidate_point`
--
ALTER TABLE `candidate_point`
  MODIFY `point_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `candidate_project`
--
ALTER TABLE `candidate_project`
  MODIFY `project_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `candidate_skill`
--
ALTER TABLE `candidate_skill`
  MODIFY `skill_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `candidate_test_offer_registration`
--
ALTER TABLE `candidate_test_offer_registration`
  MODIFY `test_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `candidate_training`
--
ALTER TABLE `candidate_training`
  MODIFY `training_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `history`
--
ALTER TABLE `history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `level`
--
ALTER TABLE `level`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `test_question`
--
ALTER TABLE `test_question`
  MODIFY `test_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `theme`
--
ALTER TABLE `theme`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user_user`
--
ALTER TABLE `user_user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `candidate_background`
--
ALTER TABLE `candidate_background`
  ADD CONSTRAINT `FKs070djqfi5kp8gyc8ndplf7ym` FOREIGN KEY (`user_candidate_id`) REFERENCES `user_candidate` (`candidate_id`);

--
-- Contraintes pour la table `candidate_event`
--
ALTER TABLE `candidate_event`
  ADD CONSTRAINT `FKj012wfx2ijlyp7nhtt9i4shlk` FOREIGN KEY (`recruter_id`) REFERENCES `user_recruiter` (`recruter_id`);

--
-- Contraintes pour la table `candidate_experience`
--
ALTER TABLE `candidate_experience`
  ADD CONSTRAINT `FK21yctd0221qx6bu1w8qar776w` FOREIGN KEY (`user_candidate_id`) REFERENCES `user_candidate` (`candidate_id`);

--
-- Contraintes pour la table `candidate_language`
--
ALTER TABLE `candidate_language`
  ADD CONSTRAINT `FKfabgkhsywebugj6xbedq8f6p9` FOREIGN KEY (`user_candidate_id`) REFERENCES `user_candidate` (`candidate_id`);

--
-- Contraintes pour la table `candidate_offer`
--
ALTER TABLE `candidate_offer`
  ADD CONSTRAINT `FKsfm2c7350hn2phbbcmrkwowci` FOREIGN KEY (`recruter_id`) REFERENCES `user_recruiter` (`recruter_id`);

--
-- Contraintes pour la table `candidate_offer_registration`
--
ALTER TABLE `candidate_offer_registration`
  ADD CONSTRAINT `FK2mob5wmqysx6yeva8x8weo9fb` FOREIGN KEY (`offer_id`) REFERENCES `candidate_offer` (`offer_id`),
  ADD CONSTRAINT `FKlev2xbg8i516c1lygw44fc8h3` FOREIGN KEY (`test_registration_id`) REFERENCES `candidate_test_offer_registration` (`test_id`),
  ADD CONSTRAINT `FKmp0aewjmifming4gs3no01b1l` FOREIGN KEY (`candidate_id`) REFERENCES `user_candidate` (`candidate_id`);

--
-- Contraintes pour la table `candidate_point`
--
ALTER TABLE `candidate_point`
  ADD CONSTRAINT `FKpojpt4o8hi6m01l1sltsq90fs` FOREIGN KEY (`candidate_id`) REFERENCES `user_candidate` (`candidate_id`);

--
-- Contraintes pour la table `candidate_project`
--
ALTER TABLE `candidate_project`
  ADD CONSTRAINT `FKk75gwkusxj4fubpwnvdvn4ygy` FOREIGN KEY (`user_candidate_id`) REFERENCES `user_candidate` (`candidate_id`);

--
-- Contraintes pour la table `candidate_skill`
--
ALTER TABLE `candidate_skill`
  ADD CONSTRAINT `FKs7ss5w26meqnhov5n8xgmug32` FOREIGN KEY (`user_candidate_id`) REFERENCES `user_candidate` (`candidate_id`);

--
-- Contraintes pour la table `candidate_test_offer_registration`
--
ALTER TABLE `candidate_test_offer_registration`
  ADD CONSTRAINT `FKuehk4xsyxl33dsapi5jn9eet` FOREIGN KEY (`recruter_id`) REFERENCES `user_recruiter` (`recruter_id`);

--
-- Contraintes pour la table `candidate_training`
--
ALTER TABLE `candidate_training`
  ADD CONSTRAINT `FK22l26grcsailmn74fta4t5eak` FOREIGN KEY (`user_candidate_id`) REFERENCES `user_candidate` (`candidate_id`);

--
-- Contraintes pour la table `level`
--
ALTER TABLE `level`
  ADD CONSTRAINT `FK9pkxem1pdwgksu4jfdqy8onyw` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id`);

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `FKnsi1tkkbj9l1yw7vdts852vgf` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`);

--
-- Contraintes pour la table `test_question`
--
ALTER TABLE `test_question`
  ADD CONSTRAINT `FKc59ofmdimp5fddel09txr9p7` FOREIGN KEY (`test_registration_id`) REFERENCES `candidate_test_offer_registration` (`test_id`);

--
-- Contraintes pour la table `user_admin`
--
ALTER TABLE `user_admin`
  ADD CONSTRAINT `FK98kpqe607q07qkmbvslgyf5m2` FOREIGN KEY (`admin_id`) REFERENCES `user_user` (`user_id`);

--
-- Contraintes pour la table `user_candidate`
--
ALTER TABLE `user_candidate`
  ADD CONSTRAINT `FK57bxkq6r2brex0hnk7ptl385e` FOREIGN KEY (`invited_by_id`) REFERENCES `user_candidate` (`candidate_id`),
  ADD CONSTRAINT `FKa0d4sporlo4c4wjwfd2jqw11k` FOREIGN KEY (`candidate_id`) REFERENCES `user_user` (`user_id`);

--
-- Contraintes pour la table `user_club`
--
ALTER TABLE `user_club`
  ADD CONSTRAINT `FKjb643qpvsm6bqrjhtnxj9jgie` FOREIGN KEY (`club_representative_id`) REFERENCES `user_user` (`user_id`);

--
-- Contraintes pour la table `user_owner`
--
ALTER TABLE `user_owner`
  ADD CONSTRAINT `FKjpad8ggrakqc2hofgcunt6tme` FOREIGN KEY (`owner_id`) REFERENCES `user_user` (`user_id`);

--
-- Contraintes pour la table `user_recruiter`
--
ALTER TABLE `user_recruiter`
  ADD CONSTRAINT `FK8ebw5174oy6g6d7vkveu40tga` FOREIGN KEY (`recruter_id`) REFERENCES `user_user` (`user_id`);

--
-- Contraintes pour la table `user_user`
--
ALTER TABLE `user_user`
  ADD CONSTRAINT `FKs2ae1qxn3v8kb5bvj2qoktl4h` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
