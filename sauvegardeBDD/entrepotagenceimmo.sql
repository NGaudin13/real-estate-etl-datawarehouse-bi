CREATE TABLE `D_DATE` (
  `sk_date` bigint PRIMARY KEY AUTO_INCREMENT,
  `date_jour` date UNIQUE NOT NULL,
  `jour` tinyint NOT NULL,
  `mois` tinyint NOT NULL,
  `nom_mois` varchar(20),
  `trimestre` tinyint,
  `annee` smallint NOT NULL,
  `semaine_annee` tinyint,
  `jour_semaine` tinyint,
  `is_weekend` boolean
);

CREATE TABLE `D_AGENT` (
  `sk_agent` bigint PRIMARY KEY AUTO_INCREMENT,
  `id_agent_src` bigint UNIQUE NOT NULL,
  `nom` varchar(80) NOT NULL,
  `prenom` varchar(80) NOT NULL
);

CREATE TABLE `D_LOCALISATION` (
  `sk_localisation` bigint PRIMARY KEY AUTO_INCREMENT,
  `id_ville_src` bigint,
  `ville_nom` varchar(80),
  `id_dpt_src` bigint,
  `dpt_nom` varchar(80),
  `region_nom` varchar(80)
);

CREATE TABLE `D_CLIENT` (
  `sk_client` bigint PRIMARY KEY AUTO_INCREMENT,
  `id_client_src` bigint UNIQUE NOT NULL,
  `nom` varchar(120) NOT NULL,
  `prenom` varchar(120) NOT NULL,
  `date_naissance` date,
  `age` smallint,
  `tranche_age` varchar(20),
  `civilite_id_src` bigint,
  `civilite_nom` varchar(80),
  `sexe` varchar(10),
  `sk_localisation` bigint
);

CREATE TABLE `D_BIEN` (
  `sk_bien` bigint PRIMARY KEY AUTO_INCREMENT,
  `id_bien_src` bigint UNIQUE NOT NULL,
  `adresse` varchar(150),
  `code_postal` char(5),
  `nb_piece` int,
  `surface_m2` decimal(10,2),
  `prix_affiche` decimal(12,2),
  `etat_id_src` bigint,
  `etat_nom` varchar(80),
  `type_id_src` bigint,
  `type_nom` varchar(100),
  `sk_localisation` bigint NOT NULL,
  `lot_parent_sk_bien` bigint,
  `est_a_renover` boolean,
  `est_garage` boolean
);

CREATE TABLE `F_ACHAT` (
  `id_f_achat` bigint PRIMARY KEY AUTO_INCREMENT,
  `sk_date_achat` bigint NOT NULL,
  `sk_date_visite` bigint,
  `sk_client` bigint NOT NULL,
  `sk_agent` bigint NOT NULL,
  `sk_bien` bigint NOT NULL,
  `sk_localisation` bigint NOT NULL,
  `prix_achat` decimal(12,2),
  `prix_affiche_snapshot` decimal(12,2),
  `ecart_prix` decimal(12,2),
  `delai_visite_achat_jours` int
);

CREATE TABLE `F_LOCATION` (
  `id_f_location` bigint PRIMARY KEY AUTO_INCREMENT,
  `sk_date_location` bigint NOT NULL,
  `sk_date_visite` bigint,
  `sk_client` bigint NOT NULL,
  `sk_agent` bigint NOT NULL,
  `sk_bien` bigint NOT NULL,
  `sk_localisation` bigint NOT NULL,
  `prix_location` decimal(12,2),
  `delai_visite_location_jours` int
);

CREATE INDEX `D_DATE_index_0` ON `D_DATE` (`annee`, `mois`);

CREATE INDEX `D_LOCALISATION_index_1` ON `D_LOCALISATION` (`dpt_nom`);

CREATE INDEX `D_LOCALISATION_index_2` ON `D_LOCALISATION` (`region_nom`);

CREATE INDEX `D_CLIENT_index_3` ON `D_CLIENT` (`tranche_age`);

CREATE INDEX `D_CLIENT_index_4` ON `D_CLIENT` (`sexe`);

CREATE INDEX `F_ACHAT_index_5` ON `F_ACHAT` (`sk_date_achat`);

CREATE INDEX `F_ACHAT_index_6` ON `F_ACHAT` (`sk_agent`);

CREATE INDEX `F_ACHAT_index_7` ON `F_ACHAT` (`sk_localisation`);

CREATE INDEX `F_LOCATION_index_8` ON `F_LOCATION` (`sk_date_location`);

CREATE INDEX `F_LOCATION_index_9` ON `F_LOCATION` (`sk_agent`);

CREATE INDEX `F_LOCATION_index_10` ON `F_LOCATION` (`sk_localisation`);

ALTER TABLE `D_CLIENT` ADD FOREIGN KEY (`sk_localisation`) REFERENCES `D_LOCALISATION` (`sk_localisation`);

ALTER TABLE `D_BIEN` ADD FOREIGN KEY (`sk_localisation`) REFERENCES `D_LOCALISATION` (`sk_localisation`);

ALTER TABLE `D_BIEN` ADD FOREIGN KEY (`lot_parent_sk_bien`) REFERENCES `D_BIEN` (`sk_bien`);

ALTER TABLE `F_ACHAT` ADD FOREIGN KEY (`sk_date_achat`) REFERENCES `D_DATE` (`sk_date`);

ALTER TABLE `F_ACHAT` ADD FOREIGN KEY (`sk_date_visite`) REFERENCES `D_DATE` (`sk_date`);

ALTER TABLE `F_ACHAT` ADD FOREIGN KEY (`sk_client`) REFERENCES `D_CLIENT` (`sk_client`);

ALTER TABLE `F_ACHAT` ADD FOREIGN KEY (`sk_agent`) REFERENCES `D_AGENT` (`sk_agent`);

ALTER TABLE `F_ACHAT` ADD FOREIGN KEY (`sk_bien`) REFERENCES `D_BIEN` (`sk_bien`);

ALTER TABLE `F_ACHAT` ADD FOREIGN KEY (`sk_localisation`) REFERENCES `D_LOCALISATION` (`sk_localisation`);

ALTER TABLE `F_LOCATION` ADD FOREIGN KEY (`sk_date_location`) REFERENCES `D_DATE` (`sk_date`);

ALTER TABLE `F_LOCATION` ADD FOREIGN KEY (`sk_date_visite`) REFERENCES `D_DATE` (`sk_date`);

ALTER TABLE `F_LOCATION` ADD FOREIGN KEY (`sk_client`) REFERENCES `D_CLIENT` (`sk_client`);

ALTER TABLE `F_LOCATION` ADD FOREIGN KEY (`sk_agent`) REFERENCES `D_AGENT` (`sk_agent`);

ALTER TABLE `F_LOCATION` ADD FOREIGN KEY (`sk_bien`) REFERENCES `D_BIEN` (`sk_bien`);

ALTER TABLE `F_LOCATION` ADD FOREIGN KEY (`sk_localisation`) REFERENCES `D_LOCALISATION` (`sk_localisation`);
