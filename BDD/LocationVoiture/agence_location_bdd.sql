-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 14 nov. 2025 à 13:16
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
-- Base de données : `agence_location_bdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_categorie` int NOT NULL,
  `nom_categorie` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_categorie`, `nom_categorie`, `description`) VALUES
(1, 'Citadine', 'Parfaites pour la conduite en ville. Elles sont tres faciles a garer, consomment peu de carburant et sont ideales pour un couple ou une personne seule sur de courtes distances.'),
(2, 'Compactes', 'Le meilleur equilibre entre confort, taille et prix. Elles offrent suffisamment d\'espace pour 4-5 personnes et quelques bagages, tout en restant maniables et relativement economiques pour la route.'),
(3, 'SUV', 'Apprécies pour leur position de conduite haute, leur espace interieur genereux et leur grand coffre. Ils sont ideaux pour les familles ou pour ceux qui recherchent plus de confort et de securité.'),
(4, 'Routieres', 'Elles privilegient le confort, l\'insonorisation et la puissance moteur. Ce sont les vehicules parfaits pour les voyages d\'affaires ou les longues vacances sur autoroute.'),
(5, 'Utilitaires', 'Leur taille varie enormement, de la petite fourgonnette (3m²) au grand fourgon (20m²) pour un demenagement. Ils sont loués pour des besoins pratiques et non pour le transport de passagers (sauf 2-3 places a l\'avant).');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id_client` int NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `telephone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `adresse` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id_client`, `nom`, `prenom`, `telephone`, `email`, `adresse`) VALUES
(1, 'Noemie', 'Poupon', '07651793526', 'nonop@example.com', '12 rue des Roses, Paris'),
(2, 'Martin', 'Luc', '0754698523', 'martuc@example.com', '45 avenue de Lyon, Lyon'),
(3, 'Bernard', 'Dibigou', '06568942', 'gigachad@example.com', '78 rue Nationale, Lille'),
(4, 'Karamba', 'Mbappe', '0765489562', 'supermbappe@example.com', '10 chemin Vert, Marseille');

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

CREATE TABLE `employes` (
  `id_employe` int NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `poste` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `salaire` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `employes`
--

INSERT INTO `employes` (`id_employe`, `nom`, `prenom`, `poste`, `salaire`) VALUES
(1, 'Lucas', 'Mathieu', 'Agent de reservation', 1850),
(2, 'Mathis', 'Nebati', 'Preparateur de vehicules', 2100),
(3, 'Evan', 'Achlako', 'Responsable d\'agence', 2600),
(4, 'Raphael ', 'Lhomme', 'Agent de comptoir', 1800);

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE `locations` (
  `id_location` int NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `montant_total` float NOT NULL,
  `id_client` int NOT NULL,
  `id_voiture` int NOT NULL,
  `id_employe` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `locations`
--

INSERT INTO `locations` (`id_location`, `date_debut`, `date_fin`, `montant_total`, `id_client`, `id_voiture`, `id_employe`) VALUES
(1, '2025-01-08', '2025-01-10', 69.99, 4, 1, 2),
(2, '2025-02-11', '2025-02-20', 119.99, 3, 2, 4),
(3, '2025-03-02', '2025-03-06', 99.99, 2, 2, 3),
(4, '2025-03-17', '2025-03-20', 49.99, 1, 4, 2);

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE `voitures` (
  `id_voiture` int NOT NULL,
  `immatriculation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `marque` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `modele` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `annee` int NOT NULL,
  `prix_jour` float NOT NULL,
  `id_categorie` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `voitures`
--

INSERT INTO `voitures` (`id_voiture`, `immatriculation`, `marque`, `modele`, `annee`, `prix_jour`, `id_categorie`) VALUES
(1, 'DB-458-VM', 'Peugeot', '307', 2006, 39.99, 1),
(2, 'GT-249-EEE', 'Renault', 'Senic', 2015, 59.99, 3),
(3, 'JM-756-GHT', 'Audi', 'TT', 2022, 89.99, 4),
(4, 'SU-453-PER', 'Renault', '5', 2025, 79.99, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id_employe`);

--
-- Index pour la table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id_location`),
  ADD KEY `FOREIGN` (`id_employe`,`id_client`,`id_voiture`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_voiture` (`id_voiture`);

--
-- Index pour la table `voitures`
--
ALTER TABLE `voitures`
  ADD PRIMARY KEY (`id_voiture`),
  ADD KEY `FOREIGN` (`id_categorie`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`),
  ADD CONSTRAINT `locations_ibfk_2` FOREIGN KEY (`id_voiture`) REFERENCES `voitures` (`id_voiture`),
  ADD CONSTRAINT `locations_ibfk_3` FOREIGN KEY (`id_employe`) REFERENCES `employes` (`id_employe`);

--
-- Contraintes pour la table `voitures`
--
ALTER TABLE `voitures`
  ADD CONSTRAINT `voitures_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id_categorie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
