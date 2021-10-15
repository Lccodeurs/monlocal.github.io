-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 15 juin 2021 à 23:23
-- Version du serveur :  10.1.33-MariaDB
-- Version de PHP :  7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `meloger`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'maxim', 'maxim@gmail.com', 'maxim');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`) VALUES
(1, 'APPARTEMENT'),
(2, 'MAISON'),
(3, 'CHAMBRE'),
(4, 'BOUTIQUE'),
(5, 'MAGAZIN'),
(6, 'STUDIO');

-- --------------------------------------------------------

--
-- Structure de la table `local`
--

CREATE TABLE `local` (
  `id` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `superficie` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `id_localisation` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `local`
--

INSERT INTO `local` (`id`, `prix`, `superficie`, `description`, `id_localisation`, `id_categorie`, `image1`, `image2`, `image3`) VALUES
(2, 100, 100, '1chbr(s)2cuisn(s)1dch(s)1sln(s)', 13, 1, 'icc.jpeg', 'bg-masthead.jpg', 'profile-img.jpg'),
(3, 12000, 120, '2chbr(s)4cuisn(s)2dch(s)5sln(s)', 13, 1, 'IMG_0069.jpeg', 'Screenshot_20210615-134013_Lite.jpg', 'Screenshot_20210614-191322_Lite.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `localisation`
--

CREATE TABLE `localisation` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `id_ville` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `localisation`
--

INSERT INTO `localisation` (`id`, `nom`, `id_ville`) VALUES
(1, 'BONAMOUSSADI', 1),
(2, 'YASSA', 1),
(3, 'TRADEX', 1),
(4, 'BONANDJO', 1),
(5, 'BONAPRISO', 1),
(6, 'DEIDO', 1),
(7, 'DAKAR', 1),
(8, 'NDOGPASSI', 1),
(9, 'KOTTO', 1),
(10, 'LOGBESSOU', 1),
(11, 'LOGPOM', 1),
(12, 'MAKEPE', 1),
(13, 'AKWA', 1),
(14, 'PK14', 1),
(15, 'ELFE', 1),
(16, 'TEXACO', 1),
(17, 'NDOKOTTI', 1),
(18, 'NDOGBONG', 1),
(19, 'PALMIER', 1),
(20, 'MBEDI', 1),
(21, 'BEPANDA', 1),
(22, 'NEW-BELL', 1),
(23, 'BRAZZAVILLE', 1),
(24, 'BILONGUE', 1),
(25, 'BONABERIE', 1);

-- --------------------------------------------------------

--
-- Structure de la table `mail`
--

CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `numero` int(11) NOT NULL,
  `localisation` varchar(255) NOT NULL,
  `dat` varchar(255) NOT NULL,
  `id_local` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mail`
--

INSERT INTO `mail` (`id`, `email`, `message`, `numero`, `localisation`, `dat`, `id_local`) VALUES
(4, 'bore1l@gmail.com', 'premier message', 656455723, 'akwa', '15-06-21 10:01:55', 0),
(5, 'borel@gmail.com', 'deuximeme message', 656914176, 'deido', '15-06-21 10:02:16', 0),
(6, 'alex@gmail.com', 'troisieme message', 677778660, 'kotto', '15-06-21 10:02:40', 0),
(7, 'paul@gmail.com', 'quatrieme message', 677778660, 'ndogpassi', '15-06-21 10:02:57', 0),
(8, 'traci@gmail.com', 'sixieme message', 677778660, 'ndogpassi', '15-06-21 10:03:16', 0),
(9, 'nouveau@gmail.com', 'suis pour un article', 679801644, 'kribi', '15-06-21 10:04:07', 2),
(11, 'stevekamdom77@gmail.com', 'Je suis tjr steve', 690, 'Tradex', '15-06-21 11:07:32', 2);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'bassil', 'bassil@gmail.com', 'bassil'),
(2, 'alex', 'alex@gmail.com', 'alex');

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id`, `nom`) VALUES
(1, 'DOUALA'),
(2, 'YAOUNDE'),
(3, 'BUEA'),
(4, 'LIMBE'),
(5, 'KRIBI'),
(6, 'NGAOUNDERE'),
(7, 'GAROUA'),
(8, 'EBOLOWA'),
(9, 'BERTOUA'),
(10, 'NSAMELIMA');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_localisation` (`id_localisation`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- Index pour la table `localisation`
--
ALTER TABLE `localisation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ville` (`id_ville`);

--
-- Index pour la table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_local` (`id_local`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `local`
--
ALTER TABLE `local`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `localisation`
--
ALTER TABLE `localisation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `local`
--
ALTER TABLE `local`
  ADD CONSTRAINT `local_ibfk_1` FOREIGN KEY (`id_localisation`) REFERENCES `localisation` (`id`),
  ADD CONSTRAINT `local_ibfk_2` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id`);

--
-- Contraintes pour la table `localisation`
--
ALTER TABLE `localisation`
  ADD CONSTRAINT `localisation_ibfk_1` FOREIGN KEY (`id_ville`) REFERENCES `ville` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
