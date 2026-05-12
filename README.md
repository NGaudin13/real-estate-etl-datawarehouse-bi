# Cas Immo — Architecture décisionnelle

Projet réalisé dans le cadre du module Outils et Plateformes.

Objectif :
concevoir une chaîne décisionnelle complète pour une agence immobilière à partir d’une base Oracle opérationnelle.

Architecture utilisée :

Oracle → Apache Hop (ETL) → MySQL (entrepôt décisionnel) → Power BI

---

## Organisation du projet

### dataModel
Contient :
- le modèle décisionnel en étoile,
- les dumps SQL de structure et données,
- les dimensions et tables de faits utilisées dans l’entrepôt.

### ETL

Contient :
- les workflows Apache Hop,
- les pipelines de transformation,
- les configurations ETL,
- les métadonnées du projet.

Pour exécuter les pipelines, il faut installer Apache Hop et disposer de deux connexions :
- une connexion Oracle vers la base source de l’IUT ;
- une connexion MySQL locale vers l’entrepôt `entrepotagenceimmo`.

Avant l’exécution, il faut importer dans MySQL le dump de structure de l’entrepôt afin de créer les tables nécessaires.  
La base MySQL attendue se nomme :

`entrepotagenceimmo`

Les variables de connexion sont définies dans la configuration du projet Apache Hop.  
Elles permettent d’adapter facilement les accès à l’environnement local sans modifier les pipelines.

Principales variables utilisées :
- `DB_HOST`, `DB_PORT`, `DB_NAME`, `DB_USER`, `DB_PASS` pour MySQL ;
- `ORA_HOST`, `ORA_PORT`, `ORA_DB`, `ORA_USER`, `ORA_PASS`, `ORA_SERVICE` pour Oracle.

Le fichier `project-config.json` définit l’organisation interne du projet Apache Hop, notamment :
- le dossier des métadonnées ;
- le dossier des datasets ;
- l’utilisation du dossier projet comme base d’exécution.

En résumé, pour relancer l’ETL :
1. installer Apache Hop ;
2. créer/importer la base MySQL `entrepotagenceimmo` avec le dump de structure ;
3. vérifier les variables de connexion Oracle et MySQL ;
4. ouvrir le projet Apache Hop ;
5. exécuter le workflow principal.

### power_bi
Contient :
- les tableaux de bord,
- les visualisations analytiques,
- les indicateurs métier demandés dans le sujet.

### presentation
Contient :
- le support PowerPoint de soutenance,
- les visuels utilisés pour la présentation du projet.

### rapport_analyse
Contient :
- le rapport de synthèse stratégique,
- la documentation de l’architecture décisionnelle,
- l’explication des choix techniques et ETL.

### ressources_projet
Contient :
- documents de travail,
- schémas,
- notes,
- ressources diverses utilisées pendant le projet.

---

## Outils utilisés

- Oracle Database
- MySQL / XAMPP
- Apache Hop
- Power BI
- DB Diagram

---

## Architecture générale

Le projet repose sur une architecture décisionnelle simple :

1. Extraction des données depuis Oracle
2. Transformation et enrichissement via Apache Hop
3. Chargement dans un entrepôt MySQL en modèle en étoile
4. Restitution analytique dans Power BI

---

## Répartition du travail

- Nicolas Gaudin :
  architecture décisionnelle, modèle de données, ETL Apache Hop, workflow d’alimentation, documentation technique

- Rolland Maurin :
  tableaux de bord Power BI, restitution analytique et visualisation des indicateurs