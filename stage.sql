-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 03 fév. 2023 à 23:34
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `stage`
--

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nomComplet` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`username`, `password`, `nomComplet`, `email`) VALUES
('ADMIN', 'admin', '', ''),
('abdel', '1234', 'abdellah adansar', 'abdellah@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

CREATE TABLE `offre` (
  `nomEnt` varchar(50) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `codePostal` int(5) NOT NULL,
  `maitreStg` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`nomEnt`, `ville`, `codePostal`, `maitreStg`, `mail`, `telephone`, `id`) VALUES
('OGEST', 'PALAISEAU', 91120, 'M.GOULLEY Aurelien', 'aurelien.goulley@ogest.fr', '0986228653', 1),
('TAXI HAND GO', 'LE HAVRE', 76600, 'M.LECERF Sébastien', 'seb.lecref@gmail.com', '0637197700', 2),
('CITY CAFE 76', 'LE HAVRE', 76600, 'M.DOUANGVINCHITH Bru', 'citycafe135@gmail.com', '0988366269', 3),
('CNAM', 'Evreux', 27001, 'Mme.GAUFFRAIU Lauren', 'laurence.gauffraiu@assurance-maladie.fr', '0661818053', 4),
('ACANTHIQUE Sarl ', 'ST BRIEUC ', 22000, 'Mme Anne-Marie DAVID', 'p.janowsky@acanthique.com', '0296772803', 6);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `offre`
--
ALTER TABLE `offre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `offre`
--
ALTER TABLE `offre`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
