-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 22 fév. 2023 à 13:43
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`username`, `password`, `nomComplet`, `email`) VALUES
('ADMIN', 'admin', '', ''),
('abdel', '1234', 'abdellah adansar', 'abdellah@gmail.com'),
('victor', '5678', 'victor robillard', 'victor.robillard0123@yahoo.fr');

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

CREATE TABLE `offre` (
  `nomEnt` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `codePostal` int(5) NOT NULL,
  `maitreStg` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `id` int(3) NOT NULL,
  `annee` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`nomEnt`, `ville`, `codePostal`, `maitreStg`, `mail`, `telephone`, `id`, `annee`) VALUES
('EXXON MOBIL CHEMICAL', 'NOTRE-DAME DE GRAVENCHON', 76330, 'Thierry GRAMMOSEMIS', 'thierry.grammosemi@exxonmobil.com', '02 32 75 26 55', 1, 2010),
('AIRCELLE', 'GONFREVILLE L\'ORCHER', 76700, 'Stéphane ROMAIN', 'stephane.romain@aircelle,com', '02 35 55 48 35', 2, 2010),
('C. O. D. A. H.', 'LE HAVRE', 76600, 'Françoise FAUQUE', 'francoise.fauque@agglo-havraise.fr', '02 35 22 24 28', 3, 2010),
('VILLESIME', 'LE HAVRE', 76600, 'Olivier NOLBERT', 'o.nolbert@villesime.fr', '02 35 41 37 74', 4, 2010),
('A. F. P. I.', 'LE HAVRE', 76600, 'Pierre-Emmanuel LECONTE', 'peleconte@afpi-lehavre.com', '02 35 54 69 50', 5, 2010),
('CEGELEC', 'SANDOUVILLE', 76430, 'Jean-Louis BILLARD', 'jean-louis.billard@cegelec.com', '02 32 79 28 00', 6, 2010),
('NORMALAB France', 'LINTOT', 76210, 'Michaël MAURAY', 'michael.mauray@normalab.com', '02 35 38 10 23', 7, 2010),
('Centre Hospitalier de Lillebonne', 'LILLEBONNE', 76170, 'David LEGARDINIER', 'david.legardinier@ch-lillebonne.fr', '02 35 39 35 64', 8, 2010),
('GOODRICH Actation Systems', 'SAINT MARCEL', 27950, 'F. NOGIER', 'nicolas.lefloch@goodrich.com', '02 32 64 70 00', 9, 2010),
('Ecole de l\'Assomption', 'LE HAVRE', 76600, 'Anne-Sophie QUEVAL', 'Non communiqué', '02 35 43 60 68', 10, 2010),
('C. F. A. Agricole et Agroalimentaire', 'YVETOT Cedex', 76195, 'Gilles CARPENTIER', 'gilles.carpentier@educagri.fr', '02 35 95 51 10', 11, 2010),
('Centre Hospitalier de Lillebonne', 'LILLEBONNE', 76170, 'David LEGARDINIER', 'david.legardinier@ch-lillebonne.fr', '02 35 39 35 64', 12, 2010),
('Mairie de Caen', 'CAEN Cedex 9', 14027, 'William BUSNEL', 'Non communiqué', 'Non communiqué', 13, 2010),
('ILOWEB', 'LE HAVRE', 76600, 'Nicolas GUILLON', 'mathias.bourdieu@ILOWEB.com', '09 52 96 89 68', 14, 2010),
('Mairie de Harfleur', 'HARFLEUR', 76700, 'Thomas FERAUD', 'theraud@ftel.fr', '06 78 64 70 61', 15, 2011),
('RENESAS DESIGN FRANCE', 'CESSON SEVIGNE', 35510, 'Monsieur PROFICHET', 'guillaume.profichet@energy-consult.fr', '06 26 57 30 54', 16, 2011),
('CRIHAN', 'ST ETIENNE DU ROUVRAY', 76800, 'Sedami ANANI', 'sedami_anani@yahoo.fr', '06 29 83 25 61', 17, 2011),
('CODAH', 'LE HAVRE', 76600, 'Gilles CHOQUET', 'gchoquet@colibri-ie.com', '02 32 38 20 99', 18, 2011),
('ENOVEA', 'ROUEN', 76000, 'Le Maire d\'Harfleur', 'informatique@harfleur.fr', '02 35 13 30 18', 19, 2011),
('Groupe Hospitalier du Havre', 'LE HAVRE', 76600, 'Sedami ANANI', 'sedami_anani@yahoo.fr', '06 43 76 71 52', 20, 2011),
('ENERGY CONSULT', 'EVREUX', 27000, 'Jacques DIESNIS', 'virginie.rondel@ncitl.com', '06 40 51 88 51', 21, 2011),
('FRIL', 'LE HAVRE', 76620, 'Sedami ANANI', 'sedami_anani@yahoo.fr', '06 40 90 31 43', 22, 2011),
('FRIL', 'LE HAVRE', 76620, 'Jean-Marie ROLLAND', 'françois.gallienne@renesasmobile.com', '06 74 44 91 95', 23, 2011),
('N C I', 'CAEN', 14000, 'Alassane KONATE', 'compta-dinrecords@gmail.com', '06 29 75 86 52', 24, 2011),
('FRIL', 'LE HAVRE', 76620, 'Aliocha IORDANOFF', 'aliocha@semaweb.fr', '06 86 24 76 86', 25, 2011),
('DIN RECORDS', 'LE HAVRE', 76620, 'Le Président de l\'Université', 'benabdelhafid@univ-lehavre.fr', '06 29 63 74 41', 26, 2011),
('CEMUR / Université du Havre', 'LE HAVRE', 76600, '06 10 55 04 42', 'multimedia@arcade-gravenchon.com', 'Non communiqué', 27, 2011),
('FTEL Informatique', 'ROUEN', 76000, 'Philippe JANOWSKY', 'p.janowsky@acanthique.com', '02 96 25 01 57', 28, 2011),
('COLIBRI Import-Export', 'ST JACQUES SUR DARNETAL', 76160, 'Hervé PRINGENT', 'alain.bidaud@crihan.fr', '06 89 98 23 00', 29, 2011),
('SEMAWEB', 'AVIGNON', 84000, 'Edouard PHILIPPE', 'sayasith.vouthipanya@agglo-havraise.fr', 'Non communiqué', 30, 2011),
('A.R.C.A.D.E.', 'NOTRE-DAME DE GRAVENCHON', 76330, 'Delphine DARBEL', 'delphine.darbel@enovea.net', '06 13 14 26 45', 31, 2011),
('ACANTHIQUE Sarl', 'ST BRIEUC', 22000, 'David PEREIRA', 'etf.david@orange.fr', '06 03 40 54 26', 32, 2011),
('PEREIRA David', 'LUCY', 76270, 'Philippe PARIS', 'sec.dir.dsi@ch-havre.fr', '06 34 66 54 26', 33, 2011),
('ORAS', 'VILLEURBANNE', 69100, 'Tristan NDJOCK', 'contact@oras-conseil.com', '06 62 27 14 22', 34, 2012),
('TOTAL Raffinage Marketing', 'HARFLEUR', 76700, 'Philippe ST MARTIN', 'philippe.saint-martin@total.com', '02 32 79 69 80', 35, 2012),
('JEULIN SAS', 'EVREUX', 27000, 'Bertrand LE FETZ', 'blefetz@jeulin.fr', '02 32 29 41 78', 36, 2012),
('D D S Logistics', 'LE HAVRE', 76600, 'Armando DO AMARAL', 'a-amaral@ddslogistics.com', '02 35 24 62 22', 37, 2012),
('SOGET', 'LE HAVRE', 76600, 'Raynald MESSIE', 'raynald.messie@soget.fr', '02 35 19 25 54', 38, 2012),
('NEXT Musique', 'EPRETOT', 76430, 'Dominique HARDY', 'hardy.dominique@wanadoo.fr', '06 03 48 76 78', 39, 2012),
('NORFIT', 'LE HAVRE ', 76600, 'Christophe MAMES', 'christophe.mames@eti.fr', '02 35 25 66 30', 40, 2012),
('APL FRANCE', 'LE HAVRE CEDEX', 76087, 'Philippe JOMAIN', 'philippe.jomain@apl.com', '02 32 74 89 65', 41, 2012),
('Groupe Hospitalier du Havre', 'LE HAVRE CEDEX', 76083, 'Grégoire LEBREUILLY', 'sec.dir.dsi@ch-havre.fr', '02 32 73 36 11', 42, 2012),
('DRESSER RAND', 'LE HAVRE CEDEX', 76080, 'Olivier BRAU', 'obrau@dresser-rand.com', '02 35 25 54 93', 43, 2012),
('MKT Lines', 'RENNES', 35000, 'Nicolas LE GALL', 'nicolas.legall@mktlines.com', '08 00 08 00 80', 44, 2012),
('E O S', 'LA FRENAYE', 76170, 'Julien MICHAUX', 'julien.michaux@mysav.eu', '02 78 08 50 27', 45, 2012),
('CCI du Havre', 'Non communiqué', 0, 'Non communiqué', 'Non communiqué', 'Non communiqué', 46, 2012),
('CHALLENGE INTERNATIONAL', 'MONTIVILLIERS', 76290, 'Frédéric DEVISME', 'frederic.devisme@challenge-int.fr', '02 32 79 63 28', 47, 2012),
('DATA Concept', 'LE HAVRE', 76600, 'Gérard MENORET', 'gerard.menoret@winspot.com', '06 74 58 24 30', 48, 2012),
('CCI du Havre', 'Non communiqué', 0, 'Non communiqué', 'Non communiqué', 'Non communiqué', 49, 2012),
('ECOGENCIA', 'LE HAVRE', 76600, 'Anthony ROMANO', 'anthony.romano@ecogencia.fr', '06 68 69 34 44', 50, 2012),
('ELITSYS International', 'PLAISIR', 78370, 'Kantsey SIEGFRIED', 'contact.elitsys@free.fr', '01 30 81 63 49', 51, 2012),
('Groupe Hospitalier du Havre', 'LE HAVRE CEDEX', 76083, 'Philippe LEFEBVRE', 'sec.dir.dsi@ch-havre.fr', '02 32 73 36 11', 52, 2013),
('MEDIAS PLUS S.A.S', 'BARENTIN', 76360, 'Celine Delarue', 'Non communiqué', '02 32 94 49 66', 53, 2013),
('DIGITAL AIRWAYS', 'ARGENTAN', 61200, 'Nicolas SILBERZAHN', 'nicolas.silberzahn@digitalairways.com', '02 33 35 11 11', 54, 2013),
('CETE APAVE Nord-Ouest', 'MONT ST AIGNAN', 76130, 'Fabrice GAVOIS', 'fabrice.gavois@apave.com', '02 35 52 60 57', 55, 2013),
('MICRO ROUEN', 'ROUEN', 76100, 'Alexandre ANTONETTI', 'a.antonetti@microrouen.com', '02 32 81 36 89', 56, 2013),
('Web Transports Services', 'LE HAVRE', 76620, 'Sébastien MONTON', 'sebastien.wcs@gmail.com', '02 35 46 42 48', 57, 2013),
('P D C A ', 'MONTIVILLIERS', 76290, 'Olivier JUSTIN', 'o.justin@pdca.fr', '02 35 24 51 04', 58, 2013),
('SQLi', 'LE GRAND-QUEVILLY', 76120, 'Nicolas GOMMENGINGER', 'ngommenginger@sqli.com', '02 32 66 30 00', 59, 2013),
('Cabinet DELORME Informatique', 'AUBE', 61270, 'Jean-Claude DELORME', 'delorme.informatique@wanadoo.fr', '02 33 84 80 13', 60, 2013),
('DATA CONCEPT', 'MARSEILLE', 13002, 'Antoine ALLAIS', 'antoine@winspot.com', '02 35 53 94 60', 61, 2013),
('IDESS', 'NOTRE-DAME DE GRAVENCHON', 76330, 'Thomas HEROULT', 'thomas@idess.fr', '02 32 84 60 55', 62, 2013),
('Chronicly', 'ROUEN', 76600, 'Romano Sophie', 'sophie.romano@chronicly.com', '06 21 09 80 29', 63, 2013),
('SELARL SMITA', 'LE HAVRE', 76600, 'Gilles VANDER PUTTEN', 'vdp.secrétariat@orange.fr', '09 71 51 99 15', 64, 2014),
('L\'ESSENTIEL', 'LE HAVRE', 76600, 'Sadia LOUNIS', 'sadialounis@hotmail.fr', '06 62 98 67 77', 65, 2014),
('DALKIA FRANCE', 'ROUEN CEDEX', 76172, 'Gregory GUILLOTIN', 'gguillotin@dalkia.com', '06 19 95 44 02', 66, 2014),
('E. D. F.', 'CANY-BARVILLE', 76450, 'Damien FRAS', 'damien.fras@edf.fr', '02 35 57 67 73', 67, 2014),
('EXXON MOBIL', 'NOTRE-DAME DE GRAVENCHON', 76330, 'Alain LEBLOND', 'alain.leblond@exxonmobil.com', '02 32 75 25 16', 68, 2014),
('H2 Concept', 'PARIS', 76013, 'Guillaume HERON', 'gheron@h2-concept.com', '01 70 23 31 20', 69, 2014),
('S C R D', 'LE HAVRE', 76600, 'François RAOUL-DUVAL', 'frd@scrd.fr', '02 35 19 66 20', 70, 2014),
('UNIONCOOP', 'LE HAVRE', 76600, 'Kristina ZELEMINA', 'contact@unioncoop.fr', '02 35 46 58 98', 71, 2014),
('METACOMPUTER ENGINEERING', 'TETOUAN', 0, 'Abdelybrafout ESSONNOUN', 'ess.abdou@gmail.com', '02 32 74 46 76', 72, 2014),
('Musées Histoiriques', 'LE HAVRE CEDEX', 76054, 'Elisabeth LEPRETRE', 'elisabeth.lepretre@lehavre.fr', '02 35 42 27 90', 73, 2014),
('Mairie du Havre', 'LE HAVRE CEDEX', 76054, 'David WITCZAK', 'david.witczak@lehavre.fr', '02 35 19 81 22', 74, 2014),
('Mairie de Fécamp', 'FECAMP', 76400, 'Samuel MAYEU', 'samuel.mayeu@ville-fecamp.fr', '02 35 10 60 74', 75, 2014),
('DATA CONCEPT', 'MARSEILLE', 13002, 'Fabien BLOSSEVILLE', 'fabien@winspot.com', '02 35 53 94 60', 76, 2014),
('CLOP AND CO', 'CAEN', 14000, 'Maxime MARIE', 'mmarie@clopinette.fr', '06 32 24 77 74', 77, 2014),
('CYSIS', 'CASABLANCA', 0, 'Abdeljalil HASSINI', 'hasjalilg@gmail.com', '06 75 24 26 31', 78, 2014),
('Société Centrale des Boissons Gazeuses', 'CASABLANCA', 0, 'Abdessamad Dassami', 'adassami@nabc.ma', 'Non communiqué', 79, 2014),
('SELARL SMITA', 'LE HAVRE', 76600, 'Gilles VANDER PUTTEN', 'vdp.secretariat@orange.fr', '09 71 51 99 15', 80, 2014),
('G C I I', 'ST VALERY EN CAUX', 76460, 'Olivier DEMAINE', 'o.demaine@gcii.fr', '06 08 00 51 36', 81, 2014),
('Ministère des Finances', 'RABAT', 10090, 'Mohammad MOUTAOUAKIL', 'm.moutaouakil@domaines.gov.ma', '05 37 27 73 36', 82, 2014),
('Musées Historiques', 'LE HAVRE CEDEX', 76054, 'Elisabeth LEPRETRE', 'elisabeth.lepretre@lehavre.fr', '02 35 42 27 90', 83, 2014),
('DRHPV', 'MEKNES', 0, 'Elhoussine NAYARI', 'niyari.hossayn@gmail.com', '05 35 52 11 83', 84, 2014),
('LITIS', 'Non communiqué', 0, 'Non communiqué', 'Non communiqué', 'Non communiqué', 85, 2015),
('Data Concept', 'Non communiqué', 0, 'Antoine ALLAIS', 'Non communiqué', 'Non communiqué', 86, 2015),
('HUMAN TO COMPUTER', 'ROUEN', 76000, 'Yohann BONAMY', 'yohann@humantocomputer.com', '02 33 14 01 01', 87, 2015),
('N I J I', 'ISSY-LES-MOULINEAUX', 92130, 'Pascal DIHN', 'pascal.dinh@niji.fr', '06 63 48 70 28', 88, 2015),
('A T M P 76', 'ROUEN CEDEX 1', 76022, 'Richard DEVAL', 'richard.deval@atmp76.asso.fr', '02 76 51 25 82', 89, 2015),
('CEREMA', 'LE GRAND QUEVILLY', 76121, 'Matthieu ROGALLE', 'matthieu.rogalle@cerema.fr', '02 35 68 88 51', 90, 2015),
('LA BOISERIE', 'ST LEONARD', 76400, 'Jean-François AUVRAY', 'contact@edm-fecamp.fr', '06 17 35 50 85', 91, 2015),
('Ecole Nationale Supérieure Maritime', 'SAINTE-ADRESSE', 76310, 'Muriel MIRONNEAU', 'muriel.mironneau@supmaritime.fr', '06 09 85 49 14', 92, 2015),
('Ecole Nationale Supérieure Maritime', 'SAINTE-ADRESSE', 76310, 'Muriel MIRONNEAU', 'muriel.mironneau@supmaritime.fr', '06 09 85 49 14', 93, 2015),
('ITEKUBE', 'CAEN', 14000, 'Emmanuel GIDON', 'emmanuel@itekube.com', '07 81 11 74 96', 94, 2015),
('AUXITEC Technologies', 'LE HAVRE', 76600, 'Marie FOUTEL', 'marie.foutel@auxitec.fr', '02 35 53 72 72', 95, 2015),
('ACK SOFT', 'ANGERVILLE L\'ORCHER', 76280, 'Aurélien DEHAIS', 'aurelien@acksoft.fr', '02 35 19 20 92', 96, 2015),
('S P B', 'LE HAVRE', 76600, 'Agnès YVON', 'ayvon@spb.eu', '02 32 74 55 07', 97, 2015),
('SELARL SMITA', 'LE HAVRE', 76600, 'Gilles VAN DER PUTEN', 'vdp.secretariat@orange.fr', '09 71 51 99 15', 98, 2015),
('SNECMA Groupe Safran', 'VERNON CEDEX', 27208, 'Louis MATRINGE', 'louis.matringe@snecma.fr', '02 32 21 76 23', 99, 2015),
('LITIS', 'ROUEN', 76800, 'Non communiqué', 'Non communiqué', '02 32 95 50 11', 100, 2015),
('CIRUUS', 'LE PETIT QUEVILLY', 76140, 'Sébastien GEST', 'contact@ciruus.fr', '06 65 16 85 79', 101, 2015),
('C T P O', 'OCTEVILLE-SUR-MER', 76930, 'Philippe DE GROOTE', 'philippe.de-groote@transdev.fr', '06 21 85 07 79', 102, 2015),
('CO-ASSIST', 'IVRY-SUR-SEINE', 94200, 'Jean GUERIN', 'jean.guerin@co', '06 99 00 70 27', 103, 2016),
('DEMATIS', 'PARIS', 75002, 'Luwig SCHUBERT', 'ludwig.schubert@dematis.com', '01 72 36 55 48', 104, 2016),
('H S A Incendie', 'EPINAY-SUR-SEINE', 93800, 'Slimane AOUDIA', 'hsaincendie@gmail.com', '06 95 91 72 27', 105, 2016),
('VERT - TIGES', 'FECAMP', 76400, 'Julien SUTTER', 'julien@vert-tiges.com', '02 35 27 41 82', 106, 2016),
('IVT SECURITY', 'YAINVILLE', 76480, 'Nanndo FERREIRA', 'n.ferreira@groupeivtsecurity.com', '02 35 37 51 70', 107, 2016),
('JEULIN', 'EVREUX', 27019, 'Antoine LEPILLER', 'alepiller@jeulin.fr', '02 32 29 41 13', 108, 2016),
('GROUPE TRACE', 'ST ROMAIN DE COLBOSC', 76430, 'Thomas COLIGNON', 'tcolignon@trace-software.com', '02 32 73 54 60', 109, 2016),
('CNAMTS', 'EVREUX', 27000, 'Cédric PULRULCZYK', 'cedric.pulrulczyk@cnamts.fr', 'Non communiqué', 110, 2016),
('R B & Associés', 'LE HAVRE', 76600, 'Loïc BEAUCHAMP', 'rb@tralyx.com', '02 35 21 48 85', 111, 2016),
('SELARL SMITA', 'LE HAVRE', 76600, 'Gilles VAN DER PUTTEN', 'vdp.secretariat@orange.fr', '09 71 51 99 15', 112, 2016),
('GREEN SYSTEMES', 'ST ROMAIN DE COLBOSC', 76430, 'Benjamin COLBOC', 'bcolboc@greensystemes.com', '02 32 73 54 68', 113, 2016),
('DATA CONCEPT', 'LE HAVRE', 76600, 'Antoine ALLAIS', 'antoine@winspot.com', '02 35 53 94 60', 114, 2016),
('Ministère de la Défense - DGA/DT/MIP', 'PARIS', 75509, 'Pierre Schanne', 'pierre.schane@intradef.gouv.fr', '09 88 67 71 11', 115, 2016),
('E D F - C N P E Paluel', 'CANY - BARVILLE', 76450, 'Jean-Philippe PASTUREL', 'jean-philippe.pasturel@edf.fr', '02 35 57 60 36', 116, 2016),
('WEB ET SOLUTIONS', 'ST ETIENNE DU ROUVRAY', 76800, 'Dominic THOMAS', 'dominic@webetsolutions.com', '02 35 78 11 90', 117, 2016),
('ACK SOFT', 'ANGERVILLE L\'ORCHER', 76280, 'Aurélien DEHAIS', 'aurelien@acksoft.fr', '02 35 19 20 92', 118, 2016),
('Mairie d\'Harfleur', 'HARFLEUR', 76700, 'CHAMBRELAN', 'informatique@harfleur.fr', '02 35 13 30 18', 119, 2016),
('Mairie de Gonfreville l\'Orcher', 'GONFREVILLE L\'ORCHER', 76700, 'Didier PASCOTTINI', 'didier.pascottini@gonfreville-l-orcher.fr', '02 35 13 17 18', 120, 2016),
('C. R. A. M.', 'LE HAVRE CEDEX', 76087, 'Paul-Benjamin TOUZET', 'pbtouzet@cram.fr', '02 35 24 25 26', 121, 2016),
('SELARL SMITA', 'LE HAVRE', 76600, 'Gilles VAN DER PUTTEN', 'vdp.secretariat@orange.fr', '09 71 51 99 15', 122, 2017),
('APITIC', 'LANNION', 22300, 'Fabien BELLANGER', 'fabien.bellanger@apitic.com', '02 96 48 80 88', 123, 2017),
('ACXF Industrie', 'FECAMP', 76400, 'Jacques HEBERT', 'j.hebert@acxf.fr', '06 07 58 91 74', 124, 2017),
('C. T. P. O. - LIA', 'OCTEVILLE SUR MER', 76930, 'Philippe DE GROOTE', 'philippe.de-groote@transdev.com', '06 21 85 07 79', 125, 2017),
('PUMPUP', 'PARIS', 75020, 'Josselin LEBORGNE', '.fr', '01 83 62 93 29', 126, 2017),
('Institut Français de Chine', 'LIANGMAQIO', 0, 'Aurélien LESLUYE', 'aurelien.lesluye@institutfrancais-chine.com', '+86 (10) 85 31 22 61', 127, 2017),
('CEGELEC Haute-Normandie', 'OUDALLE', 76430, 'Florent GILBERT', 'florent.gilbert@actemium.com', '06 10 50 74 52', 128, 2017),
('SCHNEIDER ELECTRIC INDUSTRIES', 'EVREUX', 27016, 'Sandrine ZAPATA', 'sandrime.zapata@schneider-electric.com', '01 41 39 32 28', 129, 2017),
('Communauté d\'Agglomération', 'ST DIE DES VOSGES', 88100, 'Eric TISSERAND', 'eric.tisserand@ca-stedie.fr', '03 29 50 73 10', 130, 2017),
('DATA CONCEPT', 'LE HAVRE', 76600, 'Fabien BLOSSEVILLE', 'fabien@winspot.com', '02 35 53 94 60', 131, 2017),
('DATA CONCEPT', 'LE HAVRE', 76600, 'Antoine ALLAIS', 'antoine@winspot.com', '02 35 53 94 60', 132, 2017),
('ACKSOFT ', 'ANGERVILLE L\'ORCHER', 76280, 'Frédéric BASILLE', 'f.basille@acksoft.fr', '02 35 19 20 92', 133, 2017),
('E-COMOUEST', 'VANNES', 56000, 'Patrice LE GALEZE', 'compta@comouest.com', '02 97 62 08 77', 134, 2017),
('CEREMA - Direction Territoriale Normandie Centre', 'LE GRAND QUEVILLY', 76121, 'Olivier SAILLARD', 'olivier.saillard@cerema.fr', '02 35 68 81 56', 135, 2017),
('TOURISMA TRAVEL', 'LES MUREAUX', 78130, 'Sofiane ZIDOUR', 'sofiane.zidour@yahoo.fr', '06 52 21 84 46', 136, 2017),
('PRESTASHOP', 'PARIS', 75009, 'Alexis VALLEE', 'alexis.vallee@prestashop.com', '08 91 78 06 65', 137, 2018),
('COPLOC', 'OUJDA', 0, 'Mohamed EL BOUCHIKHI', 'mohamedelbouchikhi@gmail.com', 'Non communiqué', 138, 2018),
('DIGITAL ART SYSTEM', 'MONTPELLIER', 34090, 'Frédéric REVELLAT', 'frederic@nicolaudie.com', '04 67 66 10 41', 139, 2018),
('SELARL SMITA', 'LE HAVRE', 76600, 'Gilles VAN DER PUTTEN', 'vdp.secretariat@orange.fr', '09 71 51 99 15', 140, 2018),
('1FOTEAM', 'LE HAVRE', 76600, 'Cedric DUEZ', 'cedric@1foteam.com', '02 35 53 34 13', 141, 2018),
('LIZIWEB', 'LE HAVRE', 76600, 'Mathieu COTTARD', 'mathieu.cottard@liziweb.com', '06 21 23 71 00', 142, 2018),
('Garage LESIEUR', 'LISIEUX', 14100, 'Xavier CARVILLE', 'compta@garage.lesieur.fr', '02 31 31 28 76', 143, 2018),
('EDIT.COM', 'LE HAVRE', 76620, 'Baptiste LUCAS', 'baptiste.lucas@editcom.fr', '02 35 26 02 10', 144, 2018),
('RENAULT RETAIL GROUP', 'LE HAVRE', 76600, 'Aurélien HAZARD', 'aurelien.hazard@renauilt.com', '02 32 10 40 11', 145, 2018),
('LASSARAT', 'LE HAVRE CEDEX', 76063, 'Jean-Michel MECHIN', 'jeanmichel.mechin@lassarat.com', '02 35 24 75 30', 146, 2018),
('ACK SOFT', 'ANGERVILLE L\'ORCHER', 76280, 'Frédéric BASILLE', 'frederic.basille@acksoft.fr', '02 35 19 20 92', 147, 2018),
('LITIS', 'LE HAVRE', 76600, 'Claude DUVALLET', 'claude.duvallet@univ-lehavre.fr', '02 32 74 43 53', 148, 2018),
('RENAULT Sandouville', 'LE HAVRE', 76051, 'Sylvain SAVALLE', 'sylvain.savalle@renault.com', '01 76 82 11 33', 149, 2018),
('S. Q. L. I.', 'LE GRAND QUEVILLY', 76120, 'Loïc DECLOMESNIL', 'ldeclomesnil@sqli.com', '02 31 66 30 00', 150, 2018),
('E-LEARNING', 'LE HAVRE', 76600, 'Eric LEROY', 'contact@leroyeric.fr', '06 17 86 90 25', 151, 2018),
('PRODEO', 'CAEN', 14000, 'Christophe OLIVIER', 'christophe.olivier@prod-eo.com', '06 50 23 22 84', 152, 2018),
('Association MIX\'CITES SOLIDARITE', 'LE HAVRE', 76620, 'Anissa ETTIH', 'anissazac@gmail.com', '06 27 67 15 86', 153, 2018),
('SIMON IMM', 'LA TREMBLADE', 17390, 'Eric MASSE', 'contact@simon-immo.fr', '05 17 25 17 98', 154, 2019),
('BEAR STUDIO', 'LE PETIT QUEVILLY', 76140, 'Nicolas TORION', 'claire@bearstudio;fr', '07 60 39 16 76', 155, 2019),
('DIDACTIC', 'ETAINHUS', 76430, 'Sébastien CARDINAUX', 'sebastien.cardinaux@didactic.fr', '02 76 89 50 05', 156, 2019),
('DESIGN \'PARTNER', 'VIRE CEDEX', 14501, 'Quentin PISMONT', 'quentin@designpartner.fr', '02 31 66 30 00', 157, 2019),
('WEB TRANS SERVICES', 'TOURS', 37000, 'Emilie MOREAU', 'contact@fairwayconseil.fr', '02 47 60 65 60', 158, 2019),
('EASY HIGHT T', 'CAEN', 14000, 'Vincent RAOULT', 'admin@eht-info.fr', 'Non communiqué', 159, 2019),
('CAP S. A. A. A.', 'PARIS', 75015, 'Karim MIMOUNI', 'president@capsaaa.net', '01 40 43 14 90', 160, 2019),
('Association MIX\'CITES SOLIDARITE', 'LE HAVRE', 76620, 'Anissa ETTIH', 'anissazac@gmail.com', '06 27 67 15 86', 161, 2019),
('F & D COO2BOOST', 'LE HAVRE', 76600, 'Laurent DOUIS', 'laurent.ouis@coo2boost.com', '06 37 10 42 78', 162, 2019),
('Stud & Globe', 'BARCELONE', 8024, 'Cécile MOREL', 'cecile@studantglobe.com', 'Non communiqué', 163, 2019),
('SGA MOBILITY', 'ROUEN', 76000, 'Wulfran LEURET', 'wulfran.leuret@sga-automation.com', '02 32 10 38 53', 164, 2019),
('LES ENCHANTEURS DIGITAL', 'LILLE', 59000, 'Yann ANDRE', 'ya@lesenchanteurs.fr', '03 28 04 02 30', 165, 2019),
('ATOS', 'NANJING', 0, 'Xiaodan XU', 'xiaodan.xu@atos.net', 'Non communiqué', 166, 2019),
('F & D', 'LE HAVRE', 76600, 'DOUIS Laurent', 'laurent.douis@coo2boost.com', '06 37 10 42 78', 167, 2020),
('ALTALYS PROPRETE NORMANDIE', 'IFS', 14123, 'GIN Antoine', 'altalys.compta@outlook.fr', '06 50 00 54 56', 168, 2020),
('GATS', 'GONFREVILLE-L\'ORCHER', 76700, 'ROBARDET Gregory', 'grobardet@gatstech.fr', '06 12 79 71 36', 169, 2020),
('DRSM DE NORMANDIE', 'ROUEN', 76108, 'LETOUT Naima', 'naima.letout@assurance-maladie.fr', '02 35 63 79 46', 170, 2020),
('LIGUE MAHORAISE DE FOOTBALL', 'MAMOUDZOU', 97600, 'MATROUKOU Chafika', 'cmatroukou@mayotte.fff.fr', '06 39 07 01 00', 171, 2020),
('ZE PROJET', 'KOUNGOU', 97600, 'ABOUBACAR BEN ALI Samine', 'samine@zeweb.yt', '06 39 06 16 43', 172, 2020),
('UNIVERSITE LE HAVRE NORMANDIE', 'LE HAVRE', 76063, 'GUINAND Frederic', 'frederic.guinand@univ-lehavre.fr', '09 64 29 16 31 ', 173, 2020),
('LA ROUE LIBRE', 'LE HAVRE', 76600, 'FIQUET Noah', 'rouelibre.lehavre@gmail.com', '09 84 11 52 95', 174, 2020),
('F & D', 'LE HAVRE', 76600, 'DOUIS Laurent', 'laurent.douis@coo2boost.com', '06 37 10 42 78', 175, 2020),
('CORDON ELECTRONICS', 'TADEN', 22107, 'TASSIN Florian', 'maelle.morlier@cordongroup.com', '02 96 85 67 42', 176, 2020),
('DERME AND CO', 'SAINT LAURENT QUEBEC', 0, 'MIHOUBI Chafik', 'chafik@derme.ca', '5143338282', 177, 2020),
('BIM AND CO', 'SAINT-ROMAIN-DE-COLBOSC', 76430, 'LEPILLER Antoine', 'alepiller@bimandco.com', '007 69 91 62 10', 178, 2020),
('MAIRIE DE MOYAUX', 'MOYAUX', 14590, 'TATUAM Edmond', 'epn@moyaux.fr', '02 31 63 61 01', 179, 2020),
('MICROPROSS', 'VILLENEUVE-D\'ASCQ', 59650, 'JATLAOUI Sabri', 'sabri.jatlaoui@ni.com', '06 98 13 51 30', 180, 2020),
('AXEDIA', 'BERNAY', 27300, 'AUBERT LEROY Lise', 'ldepalma@axedia.eu', '06 62 13 61 16', 181, 2020),
('MIRE SAS', 'NANTERRE', 92000, 'GACHON Stephane', 'stephane.gachon@mire-sas', '01 41 91 50 64', 182, 2020),
('OMBRA COFFEE ROASTERS', 'LE HAVRE', 76600, 'SEGHERS Thibault', 'info@ombracoffee.com', '06 68 79 48 10', 183, 2021),
('SAS PRODEO', 'BRETTEVILLE-SUR-ODON', 14760, 'OLIVIER Christophe', 'christophe.olivier@prod-eo.com', '02 31 47 36 40', 184, 2021),
('CONSEIL GENERAL DE LA MANCHE', 'SAINT-LO', 50000, 'WEIL Gaelle', 'gaelle.weil@manche.fr', '02 14 29 02 39', 185, 2021),
('EOS - MYSAV', 'LA FRENAYE', 76170, 'MARIN Sébastien', 'direction@mysav.fr', '02 32 79 27 92', 186, 2021),
('TRAITEUR DE PARIS', 'EPREVILLE', 76400, 'DAGUENET Benoit', 'bdaguenet@traiteurdeparis.com', '06 28 35 32 00', 187, 2021),
('STS', 'LE HAVRE', 76620, 'MARILLIER Arnaud', 'arnaud.marillier@stservice.fr', '06 12 62 63 50', 188, 2021),
('WEB ET SOLUTIONS', 'SAINT-ETIENNE-DU-ROUVRAY', 76800, 'BOURBIGOU Sylvain', 's.bourbigou@webetsolutions.com', '02 35 78 11 90', 189, 2021),
('IDEA INFORMATIQUE', 'EVREUX', 27000, 'GIGUEL Stéphane', 's.giguel@idea-informatique.fr', '02 32 62 80 30', 190, 2021),
('CRIANN', 'SAINT-ETIENNE-DU-ROUVRAY', 76800, 'BIDAUD Alain', 'alain.bidaud@criann.fr', '02 32 91 42 91', 191, 2021),
('OPTIMISC', 'SAINT-ANTOINE-LA-FORET', 76170, 'HUBERT Christophe', 'christophe.hubert@optimisc.com', '06 62 57 45 20', 192, 2021),
('ENSM', 'LE HAVRE', 76600, 'MIRONNEAU Muriel', 'muriel.mironneau@supmaritime.fr', '06 09 85 49 14', 193, 2021),
('ATTINEOS', 'ROUEN', 76000, 'GARNIER Romain', 'r.garnier@attineos.com', '07 83 69 99 85', 194, 2021),
('NAVAL GROUP', 'OLLIOULES', 83190, 'ANDRE Cecile', 'cecile.andre@naval-group.com', '04 94 11 60 26', 195, 2021),
('A2CE', 'SAINT-VICTOR', 3410, 'BRIAULT Emmanuel', 'e.briault@a2ce.fr', '04 70 06 05 58', 196, 2021),
('NIJI', 'RENNES', 35000, 'AUDEON Alexandre', 'alexandre.audeon@niji.fr', '02 99 32 02 84', 197, 2021),
('SELARL SMITA', 'LE HAVRE', 76600, 'VAN DER PUTTEN Gilles', 'vdp.secretariat@orange.fr', '02 32 73 67 73', 198, 2021),
('AE2 AGENCE', 'NANTES', 44300, 'LE GALLIARD Valentin', 'VALENTIN@AE2AGENCE.COM', '09 50 04 23 00', 199, 2021),
('COO2BOOST', 'LE HAVRE', 76600, 'DOUIS Laurent', 'info@coo2boost.com', '06 37 10 42 78', 200, 2021),
('ISABELLE FRIPERIE', 'VERNON', 27200, 'ESPERET Isabelle', 'esperet.isabelle@gmail.com', '06 78 19 78 93', 201, 2022),
('DATA CONCEPT', 'LE HAVRE', 76600, 'ROUXEL Serge', 'serge.rouxel@winspot.com', '06 30 10 18 49', 202, 2022),
('SASP', 'SAINT-ROMAIN-DE-COLBOSC', 76430, 'PICHARD Romain', 'romain.pichard@sasp.fr', '02 35 42 02 88', 203, 2022),
('ORANGE BERCENAY', 'BERCENAY-EN-OTHE', 10190, 'ANDRE Christophe', 'christophe1.andre@orange.com', '06 83 23 64 78', 204, 2022),
('LOGEO SEINE ESTUAIRE', 'LE HAVRE', 76600, 'LO BASSO Ronny', 'ronny.lobasso@logeo.fr', '02 77 79 11 76', 205, 2022),
('DROPWEN', 'CAEN', 14000, 'CATTELAIN Laurent', 'laurent@agence-88.fr', '06 52 47 51 15', 206, 2022),
('AGENCE OPTEAM', 'LE HAVRE', 76600, 'LEFEVRE Maxence', 'luc@opteam.net', '02 35 21 64 44', 207, 2022),
('TOTAL ENERGIES ONE TECH', 'HARFLEUR', 76700, 'GUEDES Sophie', 'sophie.guedes@totalenergies.com', '02 35 55 13 01', 208, 2022),
('KANTSEROVA NELYA', 'CHERBOURG-EN-COTENTIN', 50130, 'KANTSEROVA Nelya', 'nellka05@yahoo.fr', '06 45 34 82 73', 209, 2022),
('DOCAPOSTE APPLICAM', 'METZ', 57072, 'ANGEVELLE Paul', 'paul.angevelle@docaposte.fr', '03 87 75 82 00', 210, 2022),
('METAVERSE', 'MAARIF - CASABLANCA', 0, 'ABDEDDAIM Omar', 'omar.abdeddaim@cloudlink.us', '07 01 28 92 77', 211, 2022),
('LIZIWEB', 'LE HAVRE', 76600, 'COTTARD Mathieu', 'mathieu.cottard@liziweb.com', '06 21 23 71 00', 212, 2022),
('TAXI HAND GO', 'LE HAVRE', 76600, 'LECERF Sebastien', 'seb.lecerf@gmail.com', '06 37 19 77 00', 213, 2022),
('SAS F&D', 'LE HAVRE', 76600, 'DOUIS Laurent', 'laurent.douis@coo2boost.com', '06 37 10 42 78', 214, 2022),
('IES', 'PORT-JEROME-SUR-SEINE', 76330, 'DELAMARE Laurent', 'laurent.delamare@i-e-s.fr', '06 30 80 49 64', 215, 2022);

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
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
