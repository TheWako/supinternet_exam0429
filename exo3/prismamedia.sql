-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 29 Avril 2016 à 13:29
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `prismamedia`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonne`
--

CREATE TABLE IF NOT EXISTS `abonne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `dateNaissance` date NOT NULL,
  `sexe` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `abonne`
--

INSERT INTO `abonne` (`id`, `prenom`, `dateNaissance`, `sexe`) VALUES
(3, 'Alice', '1981-08-27', 'f'),
(4, 'Bob', '1979-01-19', 'h'),
(5, 'Claire', '1971-03-20', 'h'),
(6, 'Eve', '1959-12-11', 'f'),
(7, 'Felix', '1999-07-16', 'h'),
(8, 'Geraldine', '2000-07-09', 'f');

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

CREATE TABLE IF NOT EXISTS `abonnement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `magazineId` int(11) NOT NULL,
  `abonneId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `abonnement`
--

INSERT INTO `abonnement` (`id`, `magazineId`, `abonneId`) VALUES
(1, 1, 3),
(2, 1, 5),
(3, 1, 7),
(4, 1, 8),
(5, 2, 3),
(6, 2, 4),
(7, 2, 5),
(8, 3, 5),
(9, 3, 6),
(10, 4, 8),
(11, 4, 9),
(12, 5, 5),
(13, 5, 8);

-- --------------------------------------------------------

--
-- Structure de la table `magazine`
--

CREATE TABLE IF NOT EXISTS `magazine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `genre` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `anneeCreation` year(4) NOT NULL,
  `publication` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `magazine`
--

INSERT INTO `magazine` (`id`, `nom`, `genre`, `anneeCreation`, `publication`) VALUES
(1, 'Tele Loisir', 'Television', 1986, 'hebdomadaire'),
(2, 'Geo', 'Decouverte', 1979, 'mensuel'),
(3, 'Ca m''interesse', 'Decouverte', 1981, 'mensuel'),
(4, 'Neon', 'Actualite', 2012, 'bimestriel'),
(5, 'Gala', 'Actualite', 1993, 'hebdomadaire');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
