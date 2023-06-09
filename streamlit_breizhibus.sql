-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : ven. 09 juin 2023 à 10:06
-- Version du serveur : 8.0.33
-- Version de PHP : 8.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `streamlit_breizhibus`
--

-- --------------------------------------------------------

--
-- Structure de la table `arrets`
--

CREATE TABLE `arrets` (
  `id` int NOT NULL,
  `libelle` varchar(20) NOT NULL,
  `adresse` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `arrets`
--

INSERT INTO `arrets` (`id`, `libelle`, `adresse`) VALUES
(1, 'Guénolé', '6 rue de Saint Guénolé'),
(2, 'Korrigan', '1 impasse du Korrigan'),
(3, 'Morgana', '2 plage de Morgana'),
(4, 'L\'Ankou', '3 place du Cimetière'),
(5, 'Ys', '4 rue de l\'île d\'Ys'),
(6, 'Viviane', '5 avenue du Lac');

-- --------------------------------------------------------

--
-- Structure de la table `bus`
--

CREATE TABLE `bus` (
  `id` int NOT NULL,
  `numero` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `immatriculation` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ligne` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `bus`
--

INSERT INTO `bus` (`id`, `numero`, `immatriculation`, `ligne`) VALUES
(1, 'BB001', 'AB-123-CD', 1),
(2, 'BB002', 'EF-456-GH', 2),
(3, 'BB003', 'IJ-789-KL', 3),
(4, 'BB004', 'MN-012-OP', 4),
(5, 'BB005', 'QR-345-ST', 1),
(6, 'BB006', 'UV-678-WX', 2),
(7, 'BB007', 'YZ-901-AB', 3),
(8, 'BB008', 'CD-234-EF', 4);

-- --------------------------------------------------------

--
-- Structure de la table `frequentation`
--

CREATE TABLE `frequentation` (
  `id` int NOT NULL,
  `jour` date NOT NULL,
  `nombre_passagers` int NOT NULL,
  `horaire` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `frequentation`
--

INSERT INTO `frequentation` (`id`, `jour`, `nombre_passagers`, `horaire`) VALUES
(1, '2023-06-01', 15, 1),
(2, '2023-06-01', 20, 2),
(3, '2023-06-01', 15, 3),
(4, '2023-06-01', 10, 4),
(5, '2023-06-01', 15, 5),
(6, '2023-06-02', 17, 1),
(7, '2023-06-02', 25, 2),
(8, '2023-06-02', 17, 3),
(9, '2023-06-02', 12, 4),
(10, '2023-06-02', 17, 5),
(11, '2023-06-03', 18, 1),
(12, '2023-06-03', 30, 2),
(13, '2023-06-03', 18, 3),
(14, '2023-06-03', 15, 4),
(15, '2023-06-03', 18, 5),
(16, '2023-06-01', 13, 6),
(17, '2023-06-01', 22, 7),
(18, '2023-06-01', 13, 8),
(19, '2023-06-01', 9, 9),
(20, '2023-06-01', 13, 10),
(21, '2023-06-02', 15, 6),
(22, '2023-06-02', 28, 7),
(23, '2023-06-02', 15, 8),
(24, '2023-06-02', 11, 9),
(25, '2023-06-02', 15, 10),
(26, '2023-06-03', 16, 6),
(27, '2023-06-03', 33, 7),
(28, '2023-06-03', 16, 8),
(29, '2023-06-03', 14, 9),
(30, '2023-06-03', 16, 10),
(31, '2023-06-01', 14, 11),
(32, '2023-06-01', 23, 12),
(33, '2023-06-01', 14, 13),
(34, '2023-06-01', 10, 14),
(35, '2023-06-01', 14, 15),
(36, '2023-06-02', 16, 11),
(37, '2023-06-02', 30, 12),
(38, '2023-06-02', 16, 13),
(39, '2023-06-02', 12, 14),
(40, '2023-06-02', 16, 15),
(41, '2023-06-03', 17, 11),
(42, '2023-06-03', 35, 12),
(43, '2023-06-03', 17, 13),
(44, '2023-06-03', 16, 14),
(45, '2023-06-03', 17, 15),
(46, '2023-06-01', 14, 16),
(47, '2023-06-01', 24, 17),
(48, '2023-06-01', 14, 18),
(49, '2023-06-01', 11, 19),
(50, '2023-06-01', 14, 20),
(51, '2023-06-02', 16, 16),
(52, '2023-06-02', 31, 17),
(53, '2023-06-02', 16, 18),
(54, '2023-06-02', 13, 19),
(55, '2023-06-02', 16, 20),
(56, '2023-06-03', 18, 16),
(57, '2023-06-03', 36, 17),
(58, '2023-06-03', 18, 18),
(59, '2023-06-03', 17, 19),
(60, '2023-06-03', 18, 20);

-- --------------------------------------------------------

--
-- Structure de la table `horaires`
--

CREATE TABLE `horaires` (
  `id` int NOT NULL,
  `heure` varchar(15) NOT NULL,
  `ligne` int NOT NULL,
  `arret` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `horaires`
--

INSERT INTO `horaires` (`id`, `heure`, `ligne`, `arret`) VALUES
(1, '06:00:00', 1, 1),
(2, '09:00:00', 1, 2),
(3, '12:00:00', 1, 3),
(4, '15:00:00', 1, 4),
(5, '18:00:00', 1, 5),
(6, '07:00:00', 2, 1),
(7, '10:00:00', 2, 2),
(8, '13:00:00', 2, 3),
(9, '16:00:00', 2, 4),
(10, '19:00:00', 2, 5),
(11, '08:00:00', 3, 1),
(12, '11:00:00', 3, 2),
(13, '14:00:00', 3, 3),
(14, '17:00:00', 3, 4),
(15, '20:00:00', 3, 5),
(16, '06:30:00', 4, 1),
(17, '09:30:00', 4, 2),
(18, '12:30:00', 4, 3),
(19, '15:30:00', 4, 4),
(20, '18:30:00', 4, 5);

-- --------------------------------------------------------

--
-- Structure de la table `lignes`
--

CREATE TABLE `lignes` (
  `id` int NOT NULL,
  `nom` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `lignes`
--

INSERT INTO `lignes` (`id`, `nom`) VALUES
(1, 'Rouge'),
(2, 'Vert'),
(3, 'Bleu'),
(4, 'Noir');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `arrets`
--
ALTER TABLE `arrets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ligne` (`ligne`);

--
-- Index pour la table `frequentation`
--
ALTER TABLE `frequentation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `horaire` (`horaire`);

--
-- Index pour la table `horaires`
--
ALTER TABLE `horaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `arret` (`arret`),
  ADD KEY `ligne` (`ligne`);

--
-- Index pour la table `lignes`
--
ALTER TABLE `lignes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `arrets`
--
ALTER TABLE `arrets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `frequentation`
--
ALTER TABLE `frequentation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `horaires`
--
ALTER TABLE `horaires`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `lignes`
--
ALTER TABLE `lignes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `bus_ibfk_1` FOREIGN KEY (`ligne`) REFERENCES `lignes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `frequentation`
--
ALTER TABLE `frequentation`
  ADD CONSTRAINT `frequentation_ibfk_1` FOREIGN KEY (`horaire`) REFERENCES `horaires` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `horaires`
--
ALTER TABLE `horaires`
  ADD CONSTRAINT `horaires_ibfk_1` FOREIGN KEY (`arret`) REFERENCES `arrets` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `horaires_ibfk_2` FOREIGN KEY (`ligne`) REFERENCES `lignes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
