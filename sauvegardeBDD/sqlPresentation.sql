-- 1. Création de la base de données décisionnelle
CREATE DATABASE entrepotagenceimmo;
USE entrepotagenceimmo;

-- 2. Création des tables de dimensions : exemple client
CREATE TABLE d_client (...);

-- 3. Création des tables de faits : achat et location
CREATE TABLE f_achat (...);
CREATE TABLE f_location (...);

-- 4. Définition des clés primaires techniques
ALTER TABLE d_client ADD PRIMARY KEY (sk_client);
ALTER TABLE f_achat ADD PRIMARY KEY (id_f_achat);
ALTER TABLE f_location ADD PRIMARY KEY (id_f_location);

-- 5. Activation des auto-incréments
ALTER TABLE d_client MODIFY sk_client BIGINT AUTO_INCREMENT;
ALTER TABLE f_achat MODIFY id_f_achat BIGINT AUTO_INCREMENT;
ALTER TABLE f_location MODIFY id_f_location BIGINT AUTO_INCREMENT;

-- 6. Stockage des identifiants source (traçabilité des données)
-- ajout des colonnes provenant du système source Oracle
ALTER TABLE d_client ADD id_client_src BIGINT;
ALTER TABLE f_achat ADD id_achat_src BIGINT;
ALTER TABLE f_location ADD id_location_src BIGINT;

-- 7. Définition des liens entre la dimension et les faits
ALTER TABLE f_achat
ADD FOREIGN KEY (sk_client) REFERENCES d_client(sk_client);

ALTER TABLE f_location2
ADD FOREIGN KEY (sk_client) REFERENCES d_client(sk_client);


