-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 02 fév. 2026 à 04:47
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
  `id_lot_src` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `d_bien`
--

INSERT INTO `d_bien` (`sk_bien`, `id_bien_src`, `adresse`, `code_postal`, `nb_piece`, `surface_m2`, `prix_affiche`, `etat_id_src`, `etat_nom`, `type_id_src`, `type_nom`, `sk_localisation`, `lot_parent_sk_bien`, `est_a_renover`, `est_garage`, `id_lot_src`) VALUES
(1, 1, '24 avenue de la Gare', '75003', 3, 62.00, 250000.00, 4, 'A RENOVER', 1, 'APPARTEMENT', 14, NULL, 1, 0, NULL),
(2, 2, '27 place du march�', '42000', 1, 25.00, 180000.00, 3, 'RECENT', 1, 'APPARTEMENT', 8, NULL, 0, 0, NULL),
(3, 3, '25 rue des Plantes', '26000', 2, 50.00, 200000.00, 1, 'NEUF', 1, 'APPARTEMENT', 7, NULL, 0, 0, NULL),
(4, 4, '8 boulevard des Mimosas', '13007', 3, 64.00, 265000.00, 2, 'ANCIEN', 1, 'APPARTEMENT', 19, NULL, 0, 0, NULL),
(5, 5, '7 bouverad Carnot', '69002', 4, 74.00, 350000.00, 2, 'ANCIEN', 1, 'APPARTEMENT', 16, NULL, 0, 0, NULL),
(6, 6, '18 rue de la Mediterranee', '13004', 2, 55.00, 280000.00, 4, 'A RENOVER', 1, 'APPARTEMENT', 19, NULL, 1, 0, NULL),
(7, 7, '72 rue de Rivoli', '75006', 1, 20.00, 190000.00, 2, 'ANCIEN', 1, 'APPARTEMENT', 14, NULL, 0, 0, NULL),
(8, 8, '38 rue Saint Claude', '69100', 2, 47.00, 210000.00, 4, 'A RENOVER', 1, 'APPARTEMENT', 17, NULL, 1, 0, NULL),
(9, 9, '46 quai d\'Orsay', '75007', 4, 85.00, 550000.00, 2, 'ANCIEN', 1, 'APPARTEMENT', 14, NULL, 0, 0, NULL),
(10, 10, '60 rue de la Paix', '75002', 3, 78.00, 820000.00, 2, 'ANCIEN', 1, 'APPARTEMENT', 14, NULL, 0, 0, NULL),
(11, 11, '7 cours de la Liberte', '69003', 2, 60.00, 275000.00, 2, 'ANCIEN', 1, 'APPARTEMENT', 16, NULL, 0, 0, NULL),
(12, 12, '46 quai d\'Orsay', '75007', 1, 20.00, 80000.00, 2, 'ANCIEN', 3, 'GARAGE', 14, NULL, 0, 1, 9),
(13, 13, '24 avenue de la Gare', '75003', 1, 15.00, 43000.00, 2, 'ANCIEN', 5, 'CAVE', 14, NULL, 0, 0, 5),
(14, 14, '8 boulevard des Mimosas', '13007', 1, 10.00, 50000.00, 2, 'ANCIEN', 3, 'GARAGE', 19, NULL, 0, 1, 4),
(15, 15, '60 rue de la Paix', '75002', 1, 14.00, 92000.00, 2, 'ANCIEN', 3, 'GARAGE', 14, NULL, 0, 1, 10),
(16, 16, '57 allee des Alpes', '73100', 2, 35.00, 200000.00, 4, 'A RENOVER', 1, 'APPARTEMENT', 11, NULL, 1, 0, NULL),
(17, 17, '75 avenue du parc', '69600', 3, 65.00, 420000.00, 1, 'NEUF', 2, 'MAISON', 18, NULL, 0, 0, NULL),
(18, 18, '17 place de la mairie', '69300', 5, 101.00, 510000.00, 3, 'RECENT', 2, 'MAISON', 13, NULL, 0, 0, NULL),
(19, 19, '18 place de l\'�glise', '38200', 3, 98.00, 450000.00, 1, 'NEUF', 2, 'MAISON', 15, NULL, 0, 0, NULL),
(20, 20, '12 avenue de l\'europe', '74000', 2, 46.00, 890.00, 4, 'A RENOVER', 1, 'APPARTEMENT', 23, NULL, 1, 0, NULL),
(21, 21, '34 rue des anciens combattants', '69100', 3, 55.00, 1100.00, 3, 'RECENT', 1, 'APPARTEMENT', 17, NULL, 0, 0, NULL),
(22, 22, '17 place victor hugo', '69100', 1, 37.00, 680.00, 4, 'A RENOVER', 1, 'APPARTEMENT', 17, NULL, 1, 0, NULL),
(23, 23, '45 avenue Foch', '69006', 4, 78.00, 1630.00, 2, 'ANCIEN', 1, 'APPARTEMENT', 16, NULL, 0, 0, NULL),
(24, 24, '3 rue du lac', '74000', 3, 70.00, 1200.00, 3, 'RECENT', 1, 'APPARTEMENT', 23, NULL, 0, 0, NULL),
(25, 25, '17 boulevard des montagnes', '73100', 2, 51.00, 950.00, 4, 'A RENOVER', 1, 'APPARTEMENT', 11, NULL, 1, 0, NULL),
(26, 26, '7 rue neuve', '69001', 2, 41.00, 780.00, 2, 'ANCIEN', 1, 'APPARTEMENT', 16, NULL, 0, 0, NULL),
(27, 27, '13 place des sapins', '73000', 2, 55.00, 750.00, 1, 'NEUF', 1, 'APPARTEMENT', 21, NULL, 0, 0, NULL),
(28, 28, '35 rue de la rivi�re', '38500', 1, 23.00, 530.00, 3, 'RECENT', 2, 'MAISON', 20, NULL, 0, 0, NULL),
(29, 29, '28 rue de la joie', '13003', 1, 25.00, 510.00, 4, 'A RENOVER', 1, 'APPARTEMENT', 19, NULL, 1, 0, NULL),
(30, 30, '8 grande rue', '01000', 2, 57.00, 620.00, 1, 'NEUF', 2, 'MAISON', 12, NULL, 0, 0, NULL),
(31, 31, '69 avenue de saxe', '69006', 3, 62.00, 1210.00, 2, 'ANCIEN', 1, 'APPARTEMENT', 16, NULL, 0, 0, NULL),
(32, 32, '39 route des cretes', '38100', 2, 53.00, 900.00, 3, 'RECENT', 2, 'MAISON', 22, NULL, 0, 0, NULL),
(33, 33, '4 chemin des dames', '26000', 3, 61.00, 880.00, 3, 'RECENT', 1, 'APPARTEMENT', 7, NULL, 0, 0, NULL),
(34, 34, '3 allee de la paix', '38100', 2, 32.00, 750.00, 2, 'ANCIEN', 2, 'MAISON', 22, NULL, 0, 0, NULL),
(35, 35, '48 rue de la mairie', '26100', 2, 56.00, 710.00, 1, 'NEUF', 1, 'APPARTEMENT', 2, NULL, 0, 0, NULL),
(36, 36, '27 boulevard de la croix rousse', '69004', 3, 80.00, 1200.00, 2, 'ANCIEN', 1, 'APPARTEMENT', 16, NULL, 0, 0, NULL),
(37, 37, '21 rue des platanes', '69210', 1, 27.00, 600.00, 1, 'NEUF', 2, 'MAISON', 5, NULL, 0, 0, NULL),
(38, 38, '87 avenue de la libert�', '69170', 2, 64.00, 920.00, 3, 'RECENT', 2, 'MAISON', 10, NULL, 0, 0, NULL),
(39, 39, '25 rue du bruissin', '42300', 2, 54.00, 870.00, 1, 'NEUF', 1, 'APPARTEMENT', 9, NULL, 0, 0, NULL),
(40, 40, '12 rue des �glantiers', '69330', 2, 58.00, 790.00, 1, 'NEUF', 1, 'APPARTEMENT', 4, NULL, 0, 0, NULL),
(41, 41, '4 rue des Acacias', '69400', 3, 100.00, 500000.00, 3, 'RECENT', 2, 'MAISON', 3, NULL, 0, 0, NULL),
(42, 42, '26 rue des Sapins', '01100', 2, 55.00, 310000.00, 2, 'ANCIEN', 2, 'MAISON', 1, NULL, 0, 0, NULL),
(43, 43, '7 bouverad Carnot', '69002', 2, 60.00, 290000.00, 1, 'NEUF', 1, 'APPARTEMENT', 16, NULL, 0, 0, NULL),
(44, 44, '17 rue Paul Cezanne', '05000', 1, 28.00, 150000.00, 4, 'A RENOVER', 1, 'APPARTEMENT', 6, NULL, 1, 0, NULL),
(45, 45, '12 allee Victor Hugo', '74000', 2, 49.00, 199000.00, 1, 'NEUF', 1, 'APPARTEMENT', 23, NULL, 0, 0, NULL);

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

--
-- Déchargement des données de la table `d_client`
--

INSERT INTO `d_client` (`sk_client`, `id_client_src`, `nom`, `prenom`, `date_naissance`, `age`, `tranche_age`, `civilite_id_src`, `civilite_nom`, `sexe`, `sk_localisation`) VALUES
(1, 1, 'PTICOU', 'Justin', '1980-06-15', 46, '30-50', 1, 'Monsieur', 'Masculin', 3),
(2, 2, 'GOUDY', 'Debby', '1975-04-03', 51, 'Plus de 50', 2, 'Madame', 'Feminin', 14),
(3, 3, 'ZESPOIR', 'Aude', '1986-12-31', 39, '30-50', 2, 'Madame', 'Feminin', 8),
(4, 4, 'VIGOTTE', 'Sarah', '1990-09-07', 36, '30-50', 2, 'Madame', 'Feminin', 23),
(5, 5, 'VERSAIRE', 'Annie', '1992-01-06', 34, '30-50', 2, 'Madame', 'Feminin', 16),
(6, 6, 'UZLECOU', 'Jacques', '1978-03-15', 48, '30-50', 1, 'Monsieur', 'Masculin', 17),
(7, 7, 'UTION', 'Paul', '1960-12-13', 66, 'Plus de 50', 1, 'Monsieur', 'Masculin', 22),
(8, 8, 'TRAIBIEN', 'Samira', '1982-08-09', 44, '30-50', 2, 'Madame', 'Feminin', 18),
(9, 9, 'TOURNELLE', 'Marie', '1953-04-12', 73, 'Plus de 50', 2, 'Madame', 'Feminin', 7),
(10, 10, 'TOUNET', 'Patrice', '1979-11-17', 47, '30-50', 1, 'Monsieur', 'Masculin', 16),
(11, 11, 'TOUILLE', 'Sacha', '1999-09-19', 27, 'Moins de 30', 2, 'Madame', 'Feminin', 15),
(12, 12, 'TIM', 'Vincent', '1953-03-05', 73, 'Plus de 50', 1, 'Monsieur', 'Masculin', 9),
(13, 13, 'TISSIPE', 'Jean', '1990-06-10', 36, '30-50', 1, 'Monsieur', 'Masculin', 16),
(14, 16, 'MENVUSSA', 'Gérard', '1970-12-14', 56, 'Plus de 50', 1, 'Monsieur', 'Masculin', 21),
(15, 17, 'TERANNÉ', 'Medhi', '1986-04-18', 40, '30-50', 1, 'Monsieur', 'Masculin', 2),
(16, 18, 'TERIEURE', 'Alain', '1973-03-12', 53, 'Plus de 50', 1, 'Monsieur', 'Masculin', 10),
(17, 19, 'TERIEURE', 'Alex', '1959-10-19', 67, 'Plus de 50', 1, 'Monsieur', 'Masculin', 5),
(18, 20, 'SUCRE', 'Justin', '1953-08-14', 73, 'Plus de 50', 1, 'Monsieur', 'Masculin', 17),
(19, 21, 'STRUEUX', 'Simon', '1948-01-16', 78, 'Plus de 50', 1, 'Monsieur', 'Masculin', 12),
(20, 22, 'STIKE', 'Sophie', '1976-12-15', 50, '30-50', 2, 'Madame', 'Feminin', 13),
(21, 23, 'STERE', 'Mona', '1995-11-16', 31, '30-50', 2, 'Madame', 'Feminin', 4),
(22, 24, 'SOURCE', 'Aude', '1971-12-17', 55, 'Plus de 50', 2, 'Madame', 'Feminin', 20),
(23, 25, 'SION', 'Rémi', '1989-11-11', 37, '30-50', 1, 'Monsieur', 'Masculin', 16),
(24, 26, 'SFER', 'Emmy', '1980-10-08', 46, '30-50', 2, 'Madame', 'Feminin', 22),
(25, 27, 'REMOR', 'Yves', '1985-12-04', 41, '30-50', 1, 'Monsieur', 'Masculin', 8),
(26, 28, 'ATE', 'Tom', '1992-10-28', 34, '30-50', 1, 'Monsieur', 'Masculin', 7),
(27, 29, 'PIED', 'Véra', '1992-12-21', 34, '30-50', 2, 'Madame', 'Feminin', 22),
(28, 30, 'PAN', 'Amédée', '1993-11-25', 33, '30-50', 1, 'Monsieur', 'Masculin', 9),
(29, 31, 'PABIEN', 'Yvon', '1989-12-18', 37, '30-50', 1, 'Monsieur', 'Masculin', 3),
(30, 32, 'NAS', 'Lana', '1981-09-05', 45, '30-50', 2, 'Madame', 'Feminin', 12),
(31, 33, 'MICOTON', 'Mylène', '1974-12-20', 52, 'Plus de 50', 2, 'Madame', 'Feminin', 18),
(32, 34, 'LOGI', 'Anna', '1966-05-26', 60, 'Plus de 50', 2, 'Madame', 'Feminin', 10),
(33, 35, 'HON', 'Cécile', '1965-08-07', 61, 'Plus de 50', 2, 'Madame', 'Feminin', 11),
(34, 36, 'FAIRANT', 'Teddy', '1998-12-16', 28, 'Moins de 30', 1, 'Monsieur', 'Masculin', 6),
(35, 37, 'EZY', 'Pauline', '1990-03-14', 36, '30-50', 2, 'Madame', 'Feminin', 1),
(36, 38, 'ETIC', 'Pat', '1988-02-02', 38, '30-50', 1, 'Monsieur', 'Masculin', 8),
(37, 39, 'DIOTE', 'Kelly', '1983-02-11', 43, '30-50', 2, 'Madame', 'Feminin', 23),
(38, 40, 'DECAFE', 'Mathias', '1944-08-15', 82, 'Plus de 50', 1, 'Monsieur', 'Masculin', 16),
(39, 41, 'AIMOI', 'Elise', '1976-02-13', 50, '30-50', 2, 'Madame', 'Feminin', 21),
(40, 42, 'AGERE', 'Tex', '1978-09-19', 48, '30-50', 1, 'Monsieur', 'Masculin', 9),
(41, 43, 'AJUMIDE', 'Karl', '1982-01-09', 44, '30-50', 1, 'Monsieur', 'Masculin', 17),
(42, 44, 'AIRE', 'Axel', '1991-05-30', 35, '30-50', 1, 'Monsieur', 'Masculin', 12),
(43, 45, 'AINERVE', 'Hakim', '1993-07-22', 33, '30-50', 1, 'Monsieur', 'Masculin', 18),
(44, 46, 'AMANT', 'Phil', '1988-03-17', 38, '30-50', 1, 'Monsieur', 'Masculin', 13),
(45, 47, 'ARNE', 'Luc', '1991-04-03', 35, '30-50', 1, 'Monsieur', 'Masculin', 20),
(46, 48, 'AUBOR', 'Juste', '1990-07-07', 36, '30-50', 1, 'Monsieur', 'Masculin', 2),
(47, 49, 'ATEUR', 'Nordine', '1991-04-03', 35, '30-50', 1, 'Monsieur', 'Masculin', 5),
(48, 50, 'BOUT', 'Carrie', '1983-10-06', 43, '30-50', 2, 'Madame', 'Feminin', 10),
(49, 51, 'ALFABET', 'Anne', '1988-03-17', 38, '30-50', 2, 'Madame', 'Feminin', 4),
(50, 14, 'TILLE', 'Paco', '1949-02-07', 77, 'Plus de 50', 1, 'Monsieur', 'Masculin', 19),
(51, 15, 'TEURDETEX', 'Eddy', '1974-10-01', 52, 'Plus de 50', 1, 'Monsieur', 'Masculin', 19);

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
  MODIFY `sk_bien` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `d_client`
--
ALTER TABLE `d_client`
  MODIFY `sk_client` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

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
