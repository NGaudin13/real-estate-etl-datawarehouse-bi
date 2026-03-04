-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 01 fév. 2026 à 19:07
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `entrepotagenceimmo`
--

-- --------------------------------------------------------

--
-- Structure de la table `d_agent`
--

CREATE TABLE `d_agent` (
  `sk_agent` bigint(20) NOT NULL,
  `id_agent_src` bigint(20) NOT NULL,
  `nom` varchar(80) NOT NULL,
  `prenom` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `d_bien`
--

CREATE TABLE `d_bien` (
  `sk_bien` bigint(20) NOT NULL,
  `id_bien_src` bigint(20) NOT NULL,
  `adresse` varchar(150) DEFAULT NULL,
  `code_postal` char(5) DEFAULT NULL,
  `nb_piece` int(11) DEFAULT NULL,
  `surface_m2` decimal(10,2) DEFAULT NULL,
  `prix_affiche` decimal(12,2) DEFAULT NULL,
  `etat_id_src` bigint(20) DEFAULT NULL,
  `etat_nom` varchar(80) DEFAULT NULL,
  `type_id_src` bigint(20) DEFAULT NULL,
  `type_nom` varchar(100) DEFAULT NULL,
  `sk_localisation` bigint(20) NOT NULL,
  `lot_parent_sk_bien` bigint(20) DEFAULT NULL,
  `est_a_renover` tinyint(1) DEFAULT NULL,
  `est_garage` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `d_client`
--

CREATE TABLE `d_client` (
  `sk_client` bigint(20) NOT NULL,
  `id_client_src` bigint(20) NOT NULL,
  `nom` varchar(120) NOT NULL,
  `prenom` varchar(120) NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `age` smallint(6) DEFAULT NULL,
  `tranche_age` varchar(20) DEFAULT NULL,
  `civilite_id_src` bigint(20) DEFAULT NULL,
  `civilite_nom` varchar(80) DEFAULT NULL,
  `sexe` varchar(10) DEFAULT NULL,
  `sk_localisation` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `d_date`
--

CREATE TABLE `d_date` (
  `sk_date` bigint(20) NOT NULL,
  `date_jour` date NOT NULL,
  `jour` tinyint(4) NOT NULL,
  `mois` tinyint(4) NOT NULL,
  `trimestre` tinyint(4) DEFAULT NULL,
  `annee` smallint(6) NOT NULL,
  `semaine_annee` tinyint(4) DEFAULT NULL,
  `jour_semaine` tinyint(4) DEFAULT NULL,
  `is_weekend` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `d_date`
--

INSERT INTO `d_date` (`sk_date`, `date_jour`, `jour`, `mois`, `trimestre`, `annee`, `semaine_annee`, `jour_semaine`, `is_weekend`) VALUES
(1, '2019-07-29', 29, 7, 3, 2019, 31, 2, 0),
(2, '2017-07-15', 15, 7, 3, 2017, 28, 7, 1),
(3, '2021-06-13', 13, 6, 2, 2021, 23, 1, 1),
(4, '2019-12-16', 16, 12, 4, 2019, 51, 2, 0),
(5, '2018-08-31', 31, 8, 3, 2018, 35, 6, 0),
(6, '2020-06-16', 16, 6, 2, 2020, 25, 3, 0),
(7, '2018-09-21', 21, 9, 3, 2018, 38, 6, 0),
(8, '2021-02-12', 12, 2, 1, 2021, 6, 6, 0),
(9, '2019-09-07', 7, 9, 3, 2019, 36, 7, 1),
(10, '2018-02-27', 27, 2, 1, 2018, 9, 3, 0),
(11, '2021-04-28', 28, 4, 2, 2021, 17, 4, 0),
(12, '2020-05-02', 2, 5, 2, 2020, 18, 7, 1),
(13, '2019-12-04', 4, 12, 4, 2019, 49, 4, 0),
(14, '2020-09-13', 13, 9, 3, 2020, 37, 1, 1),
(15, '2018-07-12', 12, 7, 3, 2018, 28, 5, 0),
(16, '2017-01-01', 1, 1, 1, 2016, 52, 1, 1),
(17, '2019-07-12', 12, 7, 3, 2019, 28, 6, 0),
(18, '2020-01-15', 15, 1, 1, 2020, 3, 4, 0),
(19, '2021-02-14', 14, 2, 1, 2021, 6, 1, 1),
(20, '2021-01-07', 7, 1, 1, 2021, 1, 5, 0),
(21, '2019-01-15', 15, 1, 1, 2019, 3, 3, 0),
(22, '2021-02-21', 21, 2, 1, 2021, 7, 1, 1),
(23, '2019-03-13', 13, 3, 1, 2019, 11, 4, 0),
(24, '2020-02-21', 21, 2, 1, 2020, 8, 6, 0),
(25, '2021-01-26', 26, 1, 1, 2021, 4, 3, 0),
(26, '2020-08-16', 16, 8, 3, 2020, 33, 1, 1),
(27, '2019-09-11', 11, 9, 3, 2019, 37, 4, 0),
(28, '2021-05-13', 13, 5, 2, 2021, 19, 5, 0),
(29, '2020-07-08', 8, 7, 3, 2020, 28, 4, 0),
(30, '2019-11-09', 9, 11, 4, 2019, 45, 7, 1),
(31, '2020-12-13', 13, 12, 4, 2020, 50, 1, 1),
(32, '2021-09-03', 3, 9, 3, 2021, 35, 6, 0),
(33, '2020-01-07', 7, 1, 1, 2020, 2, 3, 0),
(34, '2019-01-11', 11, 1, 1, 2019, 2, 6, 0),
(35, '2021-05-12', 12, 5, 2, 2021, 19, 4, 0),
(36, '2020-03-03', 3, 3, 1, 2020, 10, 3, 0),
(37, '2020-03-12', 12, 3, 1, 2020, 11, 5, 0),
(38, '2020-12-14', 14, 12, 4, 2020, 51, 2, 0),
(39, '2020-02-14', 14, 2, 1, 2020, 7, 6, 0),
(40, '2021-01-21', 21, 1, 1, 2021, 3, 5, 0),
(41, '2020-06-22', 22, 6, 2, 2020, 26, 2, 0),
(42, '2021-05-25', 25, 5, 2, 2021, 21, 3, 0),
(43, '2018-09-01', 1, 9, 3, 2018, 35, 7, 1),
(44, '2017-06-04', 4, 6, 2, 2017, 22, 1, 1),
(45, '2021-04-22', 22, 4, 2, 2021, 16, 5, 0),
(46, '2021-02-11', 11, 2, 1, 2021, 6, 5, 0),
(47, '2018-09-14', 14, 9, 3, 2018, 37, 6, 0),
(48, '2017-01-05', 5, 1, 1, 2017, 1, 5, 0),
(49, '2019-03-07', 7, 3, 1, 2019, 10, 5, 0),
(50, '2018-01-04', 4, 1, 1, 2018, 1, 5, 0),
(51, '2018-02-18', 18, 2, 1, 2018, 7, 1, 1),
(52, '2021-01-03', 3, 1, 1, 2020, 53, 1, 1),
(53, '2020-03-08', 8, 3, 1, 2020, 10, 1, 1),
(54, '2020-03-01', 1, 3, 1, 2020, 9, 1, 1),
(55, '2018-09-07', 7, 9, 3, 2018, 36, 6, 0),
(56, '2021-01-01', 1, 1, 1, 2020, 53, 6, 0),
(57, '2020-02-13', 13, 2, 1, 2020, 7, 5, 0),
(58, '2019-10-12', 12, 10, 4, 2019, 41, 7, 1),
(59, '2020-01-11', 11, 1, 1, 2020, 2, 7, 1),
(60, '2020-02-26', 26, 2, 1, 2020, 9, 4, 0),
(61, '2021-05-18', 18, 5, 2, 2021, 20, 3, 0),
(62, '2021-04-18', 18, 4, 2, 2021, 15, 1, 1),
(63, '2021-04-02', 2, 4, 2, 2021, 13, 6, 0),
(64, '2021-07-17', 17, 7, 3, 2021, 28, 7, 1),
(65, '2020-05-03', 3, 5, 2, 2020, 18, 1, 1),
(66, '2021-04-11', 11, 4, 2, 2021, 14, 1, 1),
(67, '2018-03-14', 14, 3, 1, 2018, 11, 4, 0),
(68, '2020-11-13', 13, 11, 4, 2020, 46, 6, 0),
(69, '2020-03-11', 11, 3, 1, 2020, 11, 4, 0),
(70, '2018-04-17', 17, 4, 2, 2018, 16, 3, 0),
(71, '2019-11-01', 1, 11, 4, 2019, 44, 6, 0),
(72, '2020-11-26', 26, 11, 4, 2020, 48, 5, 0),
(73, '2018-03-13', 13, 3, 1, 2018, 11, 3, 0),
(74, '2019-09-29', 29, 9, 3, 2019, 39, 1, 1),
(75, '2020-09-21', 21, 9, 3, 2020, 39, 2, 0),
(76, '2020-12-22', 22, 12, 4, 2020, 52, 3, 0),
(77, '2020-02-20', 20, 2, 1, 2020, 8, 5, 0),
(78, '2018-09-13', 13, 9, 3, 2018, 37, 5, 0),
(79, '2019-02-11', 11, 2, 1, 2019, 7, 2, 0),
(80, '2018-09-24', 24, 9, 3, 2018, 39, 2, 0),
(81, '2019-03-04', 4, 3, 1, 2019, 10, 2, 0),
(82, '2019-07-01', 1, 7, 3, 2019, 27, 2, 0),
(83, '2019-09-16', 16, 9, 3, 2019, 38, 2, 0),
(84, '2019-11-05', 5, 11, 4, 2019, 45, 3, 0),
(85, '2018-09-02', 2, 9, 3, 2018, 35, 1, 1),
(86, '2020-01-03', 3, 1, 1, 2020, 1, 6, 0),
(87, '2018-07-30', 30, 7, 3, 2018, 31, 2, 0),
(88, '2017-09-01', 1, 9, 3, 2017, 35, 6, 0);

-- --------------------------------------------------------

--
-- Structure de la table `d_localisation`
--

CREATE TABLE `d_localisation` (
  `sk_localisation` bigint(20) NOT NULL,
  `id_ville_src` bigint(20) DEFAULT NULL,
  `ville_nom` varchar(80) DEFAULT NULL,
  `id_dpt_src` bigint(20) DEFAULT NULL,
  `dpt_nom` varchar(80) DEFAULT NULL,
  `region_nom` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `d_localisation`
--

INSERT INTO `d_localisation` (`sk_localisation`, `id_ville_src`, `ville_nom`, `id_dpt_src`, `dpt_nom`, `region_nom`) VALUES
(1, 23, 'OYONNAX', 1, 'AIN', 'AUVERGNE RHONE ALPES'),
(2, 18, 'ROMAN SUR ISERE', 26, 'DROME', 'AUVERGNE RHONE ALPES'),
(3, 12, 'VILLEFRANCHE-SUR-SAONE', 69, 'RHONE', 'AUVERGNE RHONE ALPES'),
(4, 16, 'MEYZIEU', 69, 'RHONE', 'AUVERGNE RHONE ALPES'),
(5, 19, 'L\'ARBRESLE', 69, 'RHONE', 'AUVERGNE RHONE ALPES'),
(6, 22, 'GAP', 5, 'HAUTES ALPES', 'PROVENCE ALPES COTE D AZUR'),
(7, 5, 'VALENCE', 26, 'DROME', 'AUVERGNE RHONE ALPES'),
(8, 8, 'SAINT-ETIENNE', 42, 'LOIRE', 'AUVERGNE RHONE ALPES'),
(9, 10, 'ROANNE', 42, 'LOIRE', 'AUVERGNE RHONE ALPES'),
(10, 20, 'TARARE', 69, 'RHONE', 'AUVERGNE RHONE ALPES'),
(11, 21, 'AIX LES BAINS', 73, 'SAVOIE', 'AUVERGNE RHONE ALPES'),
(12, 13, 'BOURG-EN-BRESSE', 1, 'AIN', 'AUVERGNE RHONE ALPES'),
(13, 15, 'CALUIRE ET CUIRE', 69, 'RHONE', 'AUVERGNE RHONE ALPES'),
(14, 1, 'PARIS', 75, 'ILE DE FRANCE', 'ILE DE FRANCE'),
(15, 9, 'VIENNE', 38, 'ISERE', 'AUVERGNE RHONE ALPES'),
(16, 2, 'LYON', 69, 'RHONE', 'AUVERGNE RHONE ALPES'),
(17, 11, 'VILLEURBANNE', 69, 'RHONE', 'AUVERGNE RHONE ALPES'),
(18, 14, 'OULLINS', 69, 'RHONE', 'AUVERGNE RHONE ALPES'),
(19, 3, 'MARSEILLE', 13, 'BOUCHES DU RHONE', 'PROVENCE ALPES COTE D AZUR'),
(20, 17, 'VOIRON', 38, 'ISERE', 'AUVERGNE RHONE ALPES'),
(21, 6, 'CHAMBERY', 73, 'SAVOIE', 'AUVERGNE RHONE ALPES'),
(22, 4, 'GRENOBLE', 38, 'ISERE', 'AUVERGNE RHONE ALPES'),
(23, 7, 'ANNECY', 74, 'HAUTE-SAVOIE', 'AUVERGNE RHONE ALPES');

-- --------------------------------------------------------

--
-- Structure de la table `f_achat`
--

CREATE TABLE `f_achat` (
  `id_f_achat` bigint(20) NOT NULL,
  `sk_date_achat` bigint(20) NOT NULL,
  `sk_date_visite` bigint(20) DEFAULT NULL,
  `sk_client` bigint(20) NOT NULL,
  `sk_agent` bigint(20) NOT NULL,
  `sk_bien` bigint(20) NOT NULL,
  `sk_localisation` bigint(20) NOT NULL,
  `prix_achat` decimal(12,2) DEFAULT NULL,
  `prix_affiche_snapshot` decimal(12,2) DEFAULT NULL,
  `ecart_prix` decimal(12,2) DEFAULT NULL,
  `delai_visite_achat_jours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `f_location`
--

CREATE TABLE `f_location` (
  `id_f_location` bigint(20) NOT NULL,
  `sk_date_location` bigint(20) NOT NULL,
  `sk_date_visite` bigint(20) DEFAULT NULL,
  `sk_client` bigint(20) NOT NULL,
  `sk_agent` bigint(20) NOT NULL,
  `sk_bien` bigint(20) NOT NULL,
  `sk_localisation` bigint(20) NOT NULL,
  `prix_location` decimal(12,2) DEFAULT NULL,
  `delai_visite_location_jours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `map_dpt_region`
--

CREATE TABLE `map_dpt_region` (
  `id_dpt_src` bigint(20) NOT NULL,
  `region_nom` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `map_dpt_region`
--

INSERT INTO `map_dpt_region` (`id_dpt_src`, `region_nom`) VALUES
(1, 'AUVERGNE RHONE ALPES'),
(2, 'HAUTS DE FRANCE'),
(3, 'AUVERGNE RHONE ALPES'),
(4, 'PROVENCE ALPES COTE D AZUR'),
(5, 'PROVENCE ALPES COTE D AZUR'),
(6, 'PROVENCE ALPES COTE D AZUR'),
(7, 'AUVERGNE RHONE ALPES'),
(8, 'GRAND EST'),
(9, 'OCCITANIE'),
(10, 'GRAND EST'),
(11, 'OCCITANIE'),
(12, 'OCCITANIE'),
(13, 'PROVENCE ALPES COTE D AZUR'),
(14, 'NORMANDIE'),
(15, 'AUVERGNE RHONE ALPES'),
(16, 'NOUVELLE AQUITAINE'),
(17, 'NOUVELLE AQUITAINE'),
(18, 'CENTRE VAL DE LOIRE'),
(19, 'NOUVELLE AQUITAINE'),
(20, 'CORSE'),
(21, 'BOURGOGNE FRANCHE COMTE'),
(22, 'BRETAGNE'),
(23, 'NOUVELLE AQUITAINE'),
(24, 'NOUVELLE AQUITAINE'),
(25, 'BOURGOGNE FRANCHE COMTE'),
(26, 'AUVERGNE RHONE ALPES'),
(27, 'NORMANDIE'),
(28, 'CENTRE VAL DE LOIRE'),
(29, 'BRETAGNE'),
(30, 'OCCITANIE'),
(31, 'OCCITANIE'),
(32, 'OCCITANIE'),
(33, 'NOUVELLE AQUITAINE'),
(34, 'OCCITANIE'),
(35, 'BRETAGNE'),
(36, 'CENTRE VAL DE LOIRE'),
(37, 'CENTRE VAL DE LOIRE'),
(38, 'AUVERGNE RHONE ALPES'),
(39, 'BOURGOGNE FRANCHE COMTE'),
(40, 'NOUVELLE AQUITAINE'),
(41, 'CENTRE VAL DE LOIRE'),
(42, 'AUVERGNE RHONE ALPES'),
(43, 'AUVERGNE RHONE ALPES'),
(44, 'PAYS DE LA LOIRE'),
(45, 'CENTRE VAL DE LOIRE'),
(46, 'OCCITANIE'),
(47, 'NOUVELLE AQUITAINE'),
(48, 'OCCITANIE'),
(49, 'PAYS DE LA LOIRE'),
(50, 'NORMANDIE'),
(51, 'GRAND EST'),
(52, 'GRAND EST'),
(53, 'PAYS DE LA LOIRE'),
(54, 'GRAND EST'),
(55, 'GRAND EST'),
(56, 'BRETAGNE'),
(57, 'GRAND EST'),
(58, 'BOURGOGNE FRANCHE COMTE'),
(59, 'HAUTS DE FRANCE'),
(60, 'HAUTS DE FRANCE'),
(61, 'NORMANDIE'),
(62, 'HAUTS DE FRANCE'),
(63, 'AUVERGNE RHONE ALPES'),
(64, 'NOUVELLE AQUITAINE'),
(65, 'OCCITANIE'),
(66, 'OCCITANIE'),
(67, 'GRAND EST'),
(68, 'GRAND EST'),
(69, 'AUVERGNE RHONE ALPES'),
(70, 'BOURGOGNE FRANCHE COMTE'),
(71, 'BOURGOGNE FRANCHE COMTE'),
(72, 'PAYS DE LA LOIRE'),
(73, 'AUVERGNE RHONE ALPES'),
(74, 'AUVERGNE RHONE ALPES'),
(75, 'ILE DE FRANCE'),
(76, 'NORMANDIE'),
(77, 'ILE DE FRANCE'),
(78, 'ILE DE FRANCE'),
(79, 'NOUVELLE AQUITAINE'),
(80, 'HAUTS DE FRANCE'),
(81, 'OCCITANIE'),
(82, 'OCCITANIE'),
(83, 'PROVENCE ALPES COTE D AZUR'),
(84, 'PROVENCE ALPES COTE D AZUR'),
(85, 'PAYS DE LA LOIRE'),
(86, 'NOUVELLE AQUITAINE'),
(87, 'NOUVELLE AQUITAINE'),
(88, 'GRAND EST'),
(89, 'BOURGOGNE FRANCHE COMTE'),
(90, 'BOURGOGNE FRANCHE COMTE'),
(91, 'ILE DE FRANCE'),
(92, 'ILE DE FRANCE'),
(93, 'ILE DE FRANCE'),
(94, 'ILE DE FRANCE'),
(95, 'ILE DE FRANCE'),
(971, 'GUADELOUPE'),
(972, 'MARTINIQUE'),
(973, 'GUYANE'),
(974, 'LA REUNION'),
(976, 'MAYOTTE');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `d_agent`
--
ALTER TABLE `d_agent`
  ADD PRIMARY KEY (`sk_agent`),
  ADD UNIQUE KEY `id_agent_src` (`id_agent_src`);

--
-- Index pour la table `d_bien`
--
ALTER TABLE `d_bien`
  ADD PRIMARY KEY (`sk_bien`),
  ADD UNIQUE KEY `id_bien_src` (`id_bien_src`),
  ADD KEY `sk_localisation` (`sk_localisation`),
  ADD KEY `lot_parent_sk_bien` (`lot_parent_sk_bien`);

--
-- Index pour la table `d_client`
--
ALTER TABLE `d_client`
  ADD PRIMARY KEY (`sk_client`),
  ADD UNIQUE KEY `id_client_src` (`id_client_src`),
  ADD KEY `D_CLIENT_index_3` (`tranche_age`),
  ADD KEY `D_CLIENT_index_4` (`sexe`),
  ADD KEY `sk_localisation` (`sk_localisation`);

--
-- Index pour la table `d_date`
--
ALTER TABLE `d_date`
  ADD PRIMARY KEY (`sk_date`),
  ADD UNIQUE KEY `date_jour` (`date_jour`),
  ADD KEY `D_DATE_index_0` (`annee`,`mois`);

--
-- Index pour la table `d_localisation`
--
ALTER TABLE `d_localisation`
  ADD PRIMARY KEY (`sk_localisation`),
  ADD KEY `D_LOCALISATION_index_1` (`dpt_nom`),
  ADD KEY `D_LOCALISATION_index_2` (`region_nom`);

--
-- Index pour la table `f_achat`
--
ALTER TABLE `f_achat`
  ADD PRIMARY KEY (`id_f_achat`),
  ADD KEY `F_ACHAT_index_5` (`sk_date_achat`),
  ADD KEY `F_ACHAT_index_6` (`sk_agent`),
  ADD KEY `F_ACHAT_index_7` (`sk_localisation`),
  ADD KEY `sk_date_visite` (`sk_date_visite`),
  ADD KEY `sk_client` (`sk_client`),
  ADD KEY `sk_bien` (`sk_bien`);

--
-- Index pour la table `f_location`
--
ALTER TABLE `f_location`
  ADD PRIMARY KEY (`id_f_location`),
  ADD KEY `F_LOCATION_index_8` (`sk_date_location`),
  ADD KEY `F_LOCATION_index_9` (`sk_agent`),
  ADD KEY `F_LOCATION_index_10` (`sk_localisation`),
  ADD KEY `sk_date_visite` (`sk_date_visite`),
  ADD KEY `sk_client` (`sk_client`),
  ADD KEY `sk_bien` (`sk_bien`);

--
-- Index pour la table `map_dpt_region`
--
ALTER TABLE `map_dpt_region`
  ADD PRIMARY KEY (`id_dpt_src`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `d_agent`
--
ALTER TABLE `d_agent`
  MODIFY `sk_agent` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `d_bien`
--
ALTER TABLE `d_bien`
  MODIFY `sk_bien` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `d_client`
--
ALTER TABLE `d_client`
  MODIFY `sk_client` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `d_date`
--
ALTER TABLE `d_date`
  MODIFY `sk_date` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT pour la table `d_localisation`
--
ALTER TABLE `d_localisation`
  MODIFY `sk_localisation` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `f_achat`
--
ALTER TABLE `f_achat`
  MODIFY `id_f_achat` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `f_location`
--
ALTER TABLE `f_location`
  MODIFY `id_f_location` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `d_bien`
--
ALTER TABLE `d_bien`
  ADD CONSTRAINT `d_bien_ibfk_1` FOREIGN KEY (`sk_localisation`) REFERENCES `d_localisation` (`sk_localisation`),
  ADD CONSTRAINT `d_bien_ibfk_2` FOREIGN KEY (`lot_parent_sk_bien`) REFERENCES `d_bien` (`sk_bien`);

--
-- Contraintes pour la table `d_client`
--
ALTER TABLE `d_client`
  ADD CONSTRAINT `d_client_ibfk_1` FOREIGN KEY (`sk_localisation`) REFERENCES `d_localisation` (`sk_localisation`);

--
-- Contraintes pour la table `f_achat`
--
ALTER TABLE `f_achat`
  ADD CONSTRAINT `f_achat_ibfk_1` FOREIGN KEY (`sk_date_achat`) REFERENCES `d_date` (`sk_date`),
  ADD CONSTRAINT `f_achat_ibfk_2` FOREIGN KEY (`sk_date_visite`) REFERENCES `d_date` (`sk_date`),
  ADD CONSTRAINT `f_achat_ibfk_3` FOREIGN KEY (`sk_client`) REFERENCES `d_client` (`sk_client`),
  ADD CONSTRAINT `f_achat_ibfk_4` FOREIGN KEY (`sk_agent`) REFERENCES `d_agent` (`sk_agent`),
  ADD CONSTRAINT `f_achat_ibfk_5` FOREIGN KEY (`sk_bien`) REFERENCES `d_bien` (`sk_bien`),
  ADD CONSTRAINT `f_achat_ibfk_6` FOREIGN KEY (`sk_localisation`) REFERENCES `d_localisation` (`sk_localisation`);

--
-- Contraintes pour la table `f_location`
--
ALTER TABLE `f_location`
  ADD CONSTRAINT `f_location_ibfk_1` FOREIGN KEY (`sk_date_location`) REFERENCES `d_date` (`sk_date`),
  ADD CONSTRAINT `f_location_ibfk_2` FOREIGN KEY (`sk_date_visite`) REFERENCES `d_date` (`sk_date`),
  ADD CONSTRAINT `f_location_ibfk_3` FOREIGN KEY (`sk_client`) REFERENCES `d_client` (`sk_client`),
  ADD CONSTRAINT `f_location_ibfk_4` FOREIGN KEY (`sk_agent`) REFERENCES `d_agent` (`sk_agent`),
  ADD CONSTRAINT `f_location_ibfk_5` FOREIGN KEY (`sk_bien`) REFERENCES `d_bien` (`sk_bien`),
  ADD CONSTRAINT `f_location_ibfk_6` FOREIGN KEY (`sk_localisation`) REFERENCES `d_localisation` (`sk_localisation`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
