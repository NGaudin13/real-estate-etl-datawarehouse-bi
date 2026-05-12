-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 12 mai 2026 à 12:28
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
  `est_a_renover` tinyint(1) NOT NULL DEFAULT 0,
  `est_garage` tinyint(1) NOT NULL DEFAULT 0,
  `id_lot_src` bigint(20) DEFAULT NULL,
  `lot_avec_garage` tinyint(1) NOT NULL DEFAULT 0
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
  `prix_achat_m2` decimal(12,2) DEFAULT NULL,
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
  MODIFY `sk_date` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `d_localisation`
--
ALTER TABLE `d_localisation`
  MODIFY `sk_localisation` bigint(20) NOT NULL AUTO_INCREMENT;

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
