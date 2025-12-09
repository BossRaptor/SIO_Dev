-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 09 déc. 2025 à 14:22
-- Version du serveur : 8.0.44
-- Version de PHP : 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cinema_bdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `IDENT_ACTEUR` int NOT NULL,
  `NOM` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `PRENOM` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `DATE_NAISSANCE` date DEFAULT NULL,
  `NB_FILM` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`IDENT_ACTEUR`, `NOM`, `PRENOM`, `DATE_NAISSANCE`, `NB_FILM`) VALUES
(1, 'DURIS', 'Romain', '1974-05-28', 60),
(2, 'EXARCHOPOULOS', 'ADELE', '1993-11-22', 23),
(3, 'BORHINGER', 'RICHARD', '1942-01-16', 132),
(4, 'GALABRU', 'MICHEL', '1922-10-27', 277),
(5, 'PARILLAUD', 'ANNE', '1960-05-06', 35),
(6, 'FORD', 'HARRISON', '1942-07-13', 64),
(7, 'FISHER', 'CARRIE', '1956-10-21', 74),
(8, 'SALDANA', 'ZOE', '1978-06-19', 31),
(9, 'WEAVER', 'SIGOURNEY', '1949-10-08', 66),
(10, 'RENO', 'JEAN', '1948-07-30', 75);

-- --------------------------------------------------------

--
-- Structure de la table `casting`
--

CREATE TABLE `casting` (
  `IDENT_FILM` int NOT NULL,
  `IDENT_ACTEUR` int NOT NULL,
  `ROLE` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NB_JOUR_TOURNAGE` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `casting`
--

INSERT INTO `casting` (`IDENT_FILM`, `IDENT_ACTEUR`, `ROLE`, `NB_JOUR_TOURNAGE`) VALUES
(1, 1, 'Fred', 100),
(1, 3, 'Le commissaire', 100),
(2, 5, 'NIKITA', 68),
(2, 10, 'VICTOR LE NETTOYEUR', 15),
(3, 6, 'HAN SOLO', 201),
(3, 7, 'PRINCESSE LEIA', 203),
(4, 8, 'NEYTIRI', 50),
(4, 9, 'Dr. Grace Augustine', 46);

-- --------------------------------------------------------

--
-- Structure de la table `classifier`
--

CREATE TABLE `classifier` (
  `IDENT_FILM` int NOT NULL,
  `IDENT_GENRE` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `classifier`
--

INSERT INTO `classifier` (`IDENT_FILM`, `IDENT_GENRE`) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 4),
(4, 4),
(3, 5),
(4, 5),
(5, 6);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `IDENT_FILM` int NOT NULL,
  `TITRE` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `DATE_SORTIE` date DEFAULT NULL,
  `DUREE` int DEFAULT NULL,
  `DISTRIBUTEUR` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IDENT_PAYS` int DEFAULT NULL,
  `IDENT_REALISATEUR` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`IDENT_FILM`, `TITRE`, `DATE_SORTIE`, `DUREE`, `DISTRIBUTEUR`, `IDENT_PAYS`, `IDENT_REALISATEUR`) VALUES
(1, 'SUBWAY', '1985-04-10', 104, 'GAUMONT', 1, 1),
(2, 'NIKITA', '1990-02-21', 118, 'GAUMONT', 1, 1),
(3, 'STAR WARS 6 LE RETOUR DU JEDI', '1983-10-19', 133, '20th Century Fox', 2, 2),
(4, 'AVATAR', '2009-12-16', 162, '20th Century Fox', 2, 3),
(5, 'Bienvenue chez les Chtis', '2008-02-27', 100, 'Gaumont', 1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `IDENT_GENRE` int NOT NULL,
  `LIBELLE` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`IDENT_GENRE`, `LIBELLE`) VALUES
(1, 'POLICIER'),
(2, 'DRAME'),
(3, 'ROMANTIQUE'),
(4, 'ACTION'),
(5, 'SF'),
(6, 'COMEDIE');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `IDENT_PAYS` int NOT NULL,
  `LIBELLE` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`IDENT_PAYS`, `LIBELLE`) VALUES
(1, 'FRANCE'),
(2, 'ETATS-UNIS');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `IDENT_REALISATEUR` int NOT NULL,
  `NOM` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `PRENOM` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `DATE_NAISSANCE` date DEFAULT NULL,
  `NB_FILM_ECRIT` int DEFAULT NULL,
  `NB_FILM_PRODUIT` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`IDENT_REALISATEUR`, `NOM`, `PRENOM`, `DATE_NAISSANCE`, `NB_FILM_ECRIT`, `NB_FILM_PRODUIT`) VALUES
(1, 'BESSON', 'LUC', '1959-03-18', 40, 99),
(2, 'LUCAS', 'GEORGES', '1944-05-14', 79, 64),
(3, 'CAMERON', 'JAMES', '1954-08-16', 22, 23),
(4, 'BOON', 'Dany', '1966-06-26', 10, 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`IDENT_ACTEUR`);

--
-- Index pour la table `casting`
--
ALTER TABLE `casting`
  ADD PRIMARY KEY (`IDENT_FILM`,`IDENT_ACTEUR`),
  ADD KEY `IDENT_ACTEUR` (`IDENT_ACTEUR`);

--
-- Index pour la table `classifier`
--
ALTER TABLE `classifier`
  ADD PRIMARY KEY (`IDENT_FILM`,`IDENT_GENRE`),
  ADD KEY `IDENT_GENRE` (`IDENT_GENRE`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`IDENT_FILM`),
  ADD KEY `IDENT_PAYS` (`IDENT_PAYS`),
  ADD KEY `IDENT_REALISATEUR` (`IDENT_REALISATEUR`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`IDENT_GENRE`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`IDENT_PAYS`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`IDENT_REALISATEUR`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `IDENT_ACTEUR` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `IDENT_FILM` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `IDENT_GENRE` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `IDENT_PAYS` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `IDENT_REALISATEUR` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `casting`
--
ALTER TABLE `casting`
  ADD CONSTRAINT `casting_ibfk_1` FOREIGN KEY (`IDENT_FILM`) REFERENCES `film` (`IDENT_FILM`),
  ADD CONSTRAINT `casting_ibfk_2` FOREIGN KEY (`IDENT_ACTEUR`) REFERENCES `acteur` (`IDENT_ACTEUR`);

--
-- Contraintes pour la table `classifier`
--
ALTER TABLE `classifier`
  ADD CONSTRAINT `classifier_ibfk_1` FOREIGN KEY (`IDENT_FILM`) REFERENCES `film` (`IDENT_FILM`),
  ADD CONSTRAINT `classifier_ibfk_2` FOREIGN KEY (`IDENT_GENRE`) REFERENCES `genre` (`IDENT_GENRE`);

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`IDENT_PAYS`) REFERENCES `pays` (`IDENT_PAYS`),
  ADD CONSTRAINT `film_ibfk_2` FOREIGN KEY (`IDENT_REALISATEUR`) REFERENCES `realisateur` (`IDENT_REALISATEUR`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
