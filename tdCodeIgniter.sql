-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 27 août 2020 à 12:39
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tdCodeIgniter`
--

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
  `id` int(11) NOT NULL,
  `matricule` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cni` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sexe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datenaiss` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tel` int(11) NOT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `raison_sociale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salaire` int(11) DEFAULT NULL,
  `nom_employeur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adr_employeur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `Client`
--

INSERT INTO `Client` (`id`, `matricule`, `cni`, `nom`, `prenom`, `sexe`, `datenaiss`, `tel`, `adresse`, `email`, `raison_sociale`, `salaire`, `nom_employeur`, `adr_employeur`) VALUES
(12, 'RAAH4GDW', '2484949834733', 'Diagne', 'Tina', 'feminin', '2006-08-26', 781234567, 'Saint Louis', 'mghjghjgjg@gmail.com', NULL, NULL, NULL, NULL),
(13, 'A889EJHA', '1668809078587', 'Faye', 'Gor', 'masculin', '2020-08-04', 702457895, 'Mbao', 'gogo@gmail.com', NULL, NULL, NULL, NULL),
(14, 'JGRW7CPC', '2668809078587', 'Ka', 'Seynabou', 'masculin', '2020-07-30', 761234567, 'Diourbel', 'dfyyguygy@gmail.com', NULL, NULL, NULL, NULL),
(15, 'KT3UJAJD', '2668809078587', 'Ka', 'Seynabou', 'masculin', '2020-07-30', 761234567, 'Diourbel', 'dfyyguygy@gmail.com', NULL, NULL, NULL, NULL),
(16, 'AGHPCTJJ', '2668809078587', 'Ka', 'Seynabou', 'feminin', '2020-07-30', 761234567, 'Diourbel', 'dfyyguygy@gmail.com', 'Lo et frere', 568878, 'Mamadou Lo', 'Guediawaye'),
(17, 'RV2C6RNK', '2668809078587', 'Ka', 'Seynabou', 'feminin', '2020-07-30', 761234567, 'Diourbel', 'dfyyguygy@gmail.com', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Compte`
--

CREATE TABLE `Compte` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `entreprise_id` int(11) DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `rib` int(11) NOT NULL,
  `solde` int(11) DEFAULT NULL,
  `dateOuve` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fraisOuv` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remuneration` int(11) DEFAULT NULL,
  `date_debut` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_fin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agios` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typeCompte_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `Compte`
--

INSERT INTO `Compte` (`id`, `client_id`, `entreprise_id`, `numero`, `rib`, `solde`, `dateOuve`, `fraisOuv`, `remuneration`, `date_debut`, `date_fin`, `agios`, `typeCompte_id`) VALUES
(1, NULL, NULL, 90174966, 90174966, 5000, '2020-08-26', '25000', 10000, NULL, NULL, NULL, 1),
(2, NULL, NULL, 20460714, 20460714, 5000, '2020-08-26', '25000', 10000, NULL, NULL, NULL, 1),
(3, NULL, NULL, 19769698, 478916907, 5000, '2020-08-26', '25000', 10000, NULL, NULL, NULL, 1),
(4, NULL, NULL, 86329880, 396177119, 5000, '2020-08-26', '25000', 10000, NULL, NULL, NULL, 1),
(5, NULL, NULL, 20712214, 983667768, 5000, '2020-08-26', NULL, NULL, NULL, NULL, '10000', 2),
(6, NULL, NULL, 96448977, 877070337, 5000, '2020-08-26', '25000', 10000, '2020-08-26', '2021-08-26', NULL, 3),
(7, NULL, NULL, 98284137, 9244282, 5000, '2020-08-26', '25000', 10000, NULL, NULL, NULL, 1),
(8, NULL, NULL, 89431904, 184316911, 5000, '2020-08-26', '25000', 10000, '2020-08-26', '2020-09-03', NULL, 3);

-- --------------------------------------------------------

--
-- Structure de la table `Entreprise`
--

CREATE TABLE `Entreprise` (
  `id` int(11) NOT NULL,
  `nom_entreprise` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tel_entreprise` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_entreprise` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `budget_entreprise` int(11) NOT NULL,
  `adr_entreprise` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `Entreprise`
--

INSERT INTO `Entreprise` (`id`, `nom_entreprise`, `tel_entreprise`, `email_entreprise`, `budget_entreprise`, `adr_entreprise`, `login`, `password`) VALUES
(5, 'Auchan', '781226738', 'auchan@gmail.com', 576786686, 'Liberte 6', NULL, NULL),
(6, 'NMA', '776565565', 'nma@gmail.com', 65576587, 'Thiaroye', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `typeCompte`
--

CREATE TABLE `typeCompte` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `typeCompte`
--

INSERT INTO `typeCompte` (`id`, `libelle`) VALUES
(1, 'Simple et Xeewel'),
(2, 'Courant'),
(3, 'Bloque');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Compte`
--
ALTER TABLE `Compte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C85A575619EB6921` (`client_id`),
  ADD KEY `IDX_C85A5756A4AEAFEA` (`entreprise_id`),
  ADD KEY `IDX_C85A5756930B861F` (`typeCompte_id`);

--
-- Index pour la table `Entreprise`
--
ALTER TABLE `Entreprise`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `typeCompte`
--
ALTER TABLE `typeCompte`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Client`
--
ALTER TABLE `Client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `Compte`
--
ALTER TABLE `Compte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `Entreprise`
--
ALTER TABLE `Entreprise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `typeCompte`
--
ALTER TABLE `typeCompte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Compte`
--
ALTER TABLE `Compte`
  ADD CONSTRAINT `FK_C85A575619EB6921` FOREIGN KEY (`client_id`) REFERENCES `Client` (`id`),
  ADD CONSTRAINT `FK_C85A5756930B861F` FOREIGN KEY (`typeCompte_id`) REFERENCES `typeCompte` (`id`),
  ADD CONSTRAINT `FK_C85A5756A4AEAFEA` FOREIGN KEY (`entreprise_id`) REFERENCES `Entreprise` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
