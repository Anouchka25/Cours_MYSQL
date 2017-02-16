-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 16 Février 2017 à 11:30
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bdformulaire`
--

-- --------------------------------------------------------

--
-- Structure de la table `newtable`
--

CREATE TABLE IF NOT EXISTS `newtable` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `newtable`
--

INSERT INTO `newtable` (`id`, `nom`, `prenom`, `ville`, `age`) VALUES
(1, 'dupont', 'loic', 'Evreux', 12),
(2, 'minkoue', 'anouchka', 'Yvetot', 16),
(3, 'Leclerc', 'Luc', 'Rouen', 19),
(4, 'Durand', 'Martin', 'Paris', 25),
(5, 'Beranger', 'Thierry', 'Evreux', 14),
(6, 'Diane', 'mireille', 'Roanne', 18);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
