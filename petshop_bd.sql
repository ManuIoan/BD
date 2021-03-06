-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2022 at 04:50 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `angajati`
--

CREATE TABLE `angajati` (
  `id_ang` int(11) NOT NULL,
  `nume` char(50) DEFAULT NULL,
  `vechime` varchar(50) DEFAULT NULL,
  `experienta` text DEFAULT NULL,
  `salariu` int(11) DEFAULT NULL,
  `varsta` int(11) DEFAULT NULL,
  `studii` varchar(20) DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL,
  `id_dep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `angajati`
--

INSERT INTO `angajati` (`id_ang`, `nume`, `vechime`, `experienta`, `salariu`, `varsta`, `studii`, `rol`, `id_dep`) VALUES
(35, 'Manu Andreea', '6luni', '3ani in vanzari', 3000, 27, 'VANZARI', 'sef casierie', 1),
(36, 'Pascu Elena', '2luni', '1an in comercializarea produselor farmaceutice', 2200, 21, 'fara studii', 'casier', 1),
(37, 'Ion Ionut', '1an si 2luni', 'fara experienta anterioara', 2400, 32, 'INFORMATICA', 'casier', 1),
(38, 'Mihaela Matei', '1luna', 'fara experienta anterioara', 1700, 27, 'VANZARI', 'casier', 1),
(39, 'Vladimirescu Vladimir', '2ani', 'pescar profesionist', 3000, 35, 'PISCICULTURA', 'sef departament acvaristic', 2),
(40, 'Cantemir Andrei', '6luni', '1an in comercializarea produselor de patiserie', 2500, 23, 'PEDAGOGIE', 'logistica acvaristica', 2),
(41, 'Marian Vladimir', '1an si 3luni', 'liber profesionist', 1800, 20, 'MARKETING', 'ajutor clienti', 2),
(42, 'Marin Andreea', '5ani', 'manager la firma CostCo', 3300, 38, 'FILM SI REGIE', 'sef departament pasari', 3),
(43, 'Gheorghe Valentin', '6luni', 'lucrator in constructii timp de 3ani', 2500, 29, 'PEDAGOGIE', 'logistica pasari', 3),
(44, 'Marian Mariano', '1luna', 'fara experienta', 1400, 18, 'CNILC', 'ajutor clienti', 3),
(45, 'Tudor Alexandru', '1an', 'managament la Mec Bank', 2900, 24, 'MANAGEMANT', 'sef departament animale terestre', 4),
(46, 'Condrea Marcela', '2ani', 'lucrator in domeniul arheologiei', 2100, 24, 'ISTORIE', 'logistica animale terestre', 4),
(47, 'Dumitru Bogdan', '7luni', 'lucrator comercial la Landkauff', 1600, 21, 'INFORMATICA', 'ajutor clienti', 4),
(48, 'Branzea Madalina', '1ani', 'marketing online', 2700, 26, 'MANAGEMANT', 'sef departament marketing', 5),
(49, 'Vadim Simion', '1an si 7luni', 'marketing online', 1700, 26, 'MARKETING', 'administrator retele de socializare', 5),
(50, 'Miorica Pavel', '5ani', 'proprietar firma constructii', 4200, 39, 'LOGISTICA', 'sef departament logistica', 6),
(51, 'Necula Filip', '2luni', 'angajat logistica ZONAMA ', 1800, 22, 'PEDAGOGIE', 'ajutor departament logistica', 6);

-- --------------------------------------------------------

--
-- Table structure for table `animale`
--

CREATE TABLE `animale` (
  `id_animal` int(11) NOT NULL,
  `nume` varchar(50) NOT NULL,
  `tip_animal` char(50) DEFAULT NULL,
  `descr_animal` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animale`
--

INSERT INTO `animale` (`id_animal`, `nume`, `tip_animal`, `descr_animal`) VALUES
(13, 'Munchkin', 'animal terestru-pisica', 'Munchkin este o ras?? care a creat mari controverse atunci c??nd a ap??rut. Sunt, de fapt, o muta??ie, care a fost v??zut?? prima dat?? ??n America anilor 1980, iar numele i-a fost dat dup?? ni??te personaje din filmul Vr??jitorul din Oz. Prima apari??ie a lor a fost consemnat?? la ??nceputul anilor 1930 ??n Anglia, apoi a fost v??zut?? ??i ??n Rusia, 20 de ani mai t??rziu. Sunt animale cu picioarele extrem de scurte, au o talie medie ??i p??rul lung. Au ochii ??n forma migdalei, ??n orice culoare, la fel ??i blana lor, exist?? ??n toate paletele de culori. Blana este deas?? ??i m??t??soas??, cu o coad?? mare ??i stufoas??. P??rul poate fi lung sau mediu, ??n func??ie de animal.'),
(14, 'Savannah', 'animal terestru-pisica', 'Savannah este deosebit de ??nalt?? ??i sub??ire, are picioarele lungi. Masculii nu se deosebesc greu de femele, deoarece ei sunt chiar mai mari. Pentru c?? au gene hibride, aceste pisici pot avea pui diferi??i, cu dimensiuni distincte. De cele mai multe ori, animalele din aceast?? ras?? sunt p??tate, ??ns?? muta??iile pot ajunge ??i aici, a??a c?? pute??i avea ??n fa??a ochilor o pisic?? Savannah alb imaculat, albastr?? sau chiar alte culori derivate. Au urechi sub??iri ??i ??nalte, cu o margine de culoare ??nchis??, iar asta creeaz?? efectul ochilor dubli. Poate avea ochii c??prui, verzi sau aurii.'),
(15, 'Boston Terrier', 'animal terestru-caine', 'Avem ??n fa???? un c??ine de o talie mic?? ce are botul scurt, p??trat, cu urechi mici ??i ascu??ite. Este un animal robust, musculos ??i foarte puternic. Are ochii distan??a??i, rotunzi, cu o blan?? ??n diverse culori, de la tigrat, alb, la negru cu pete ??i alte combina??ii. Un c??ine din rasa Boston terrier va m??sura ??ntre 38 ??i 43 cm, iar greutatea maxim?? este de 11,5 kilograme. Mare aten??ie, nu va trebui s?? dep????easc?? niciodat?? acest gramaj, dac?? o va face va tr??da probleme de s??n??tate.'),
(16, 'German Spitz', 'animal terestru-caine', 'Spitzul Mittel este un c??ine mic, compact, cu blana lung??, cu un cap tipic pentru un spitz ??i o coad?? arcuit?? pe spate. Poate fi v??zut ??n toate culorile ??i variantele (pentru detalii consult?? standardul rasei). Sexul c??inilor ar trebui s?? fie evident ??? masculii av??nd un aspect masculin, iar femelele unul feminin. Spitzul Mittel adult are o ??n??l??ime de 30 ??? 38 de centimetri ??i c??nt??re??te 7 ??? 11 kilograme.'),
(17, 'Australian Terrier', 'animal terestru-caine', 'C??inii Terrier Australian difer?? de al??i terrieri prin faptul c?? au un g??t ??i un spate lung comparativ cu ??n??l??imea lor. Blana este aspr?? ??i dreapt?? ??n partea de sus ??i mai moale dedesubt, ??i poate fi ro??cat?? sau poate avea diverse nuan??e de albastru cu cafeniu. Un Aussie are o ??n??l??ime de aproximativ 25,5 cm la greab??n la v??rst?? adult?? ???? c??nt??re??te aproximativ 6,5kg.'),
(18, 'Hamster', 'animal terestru-rozatoare', 'Hamsterul este un animal de companie ideal pentru ??ntreaga familie. Nu are nevoie de mult spa??iu ??i este este simplu de ??ntre??inut. Hamsterii sunt activi noaptea, iar ziua dorm.'),
(19, 'Veverita', 'animal terestru-rozatoare', ' Veverita masoara intre 19 si 24 de centimentri, iar coada intre 15 si 20. Veveritele sunt specii antice, si din fericire, nu sunt pe cale de disparitie ca alte animalute de genu.'),
(20, 'Pesti betta', 'peste', 'Pestii betta sunt cei mai populari pesti din magazinele de animale, recunoscuti pentru agilitatea, interactivitatea si costurile mici de intretinere. Ei pot fi \'animale\' de companie pe o durata foarte lunga de timp.'),
(21, 'Molly', 'peste', 'Aceasta specie este recunoscuta in general sub numele de molly si a fost descoperita de catre Valenciennes in Cuvier si Valenciennes in anul 1846.Molly face parte din ordinal Cyprinodontiformes, subordinul Cyprinodontoidei, familia Poeciliidae, subfamilia Poeciliinae, genul Poecilia si in final specia Poecilia sphenops, fiind intalnita pe cursurile de apa ale raurilor de pe coastele Mexicului pana in Columbia, avand o rata de viata de 3-4 ani.'),
(22, 'Perus', 'pasari', 'Peru??ul se g??se??te prin p??r??ile uscate ale Australiei ??i a supravie??uit timp de cinci milioane de ani ??n condi??iile dure ale acelui continent.[3] Peru??ul este o pas??re mic??, cu o greutate medie de 50 grame, lungimea nedep????ind 20 cm. Culoarea originar?? a peru??ului este verde, iar ??n urma domesticirii s-au ob??inut cele mai variate culori. Peru??ul are cioc puternic ??i picioarele scurte, fiecare cu patru degete care se termin?? cu gheare scurte. Cercet??ri recente au dovedit c?? peru??ul are sim??ul ritmului.'),
(23, 'Papagalul cenusiu', 'pasari', 'Papagalul cenusiu (Aratinga weddellii) face parte din familia Psittacidae, genul Aratinga. Este un papagal de culoare verde ccu capul de culoare cenusie intalnit in padurile din bazinul Amazonian din America de Sud.'),
(24, 'Iguana verde', 'animale terestre-reptile', 'Specie nativ?? ??n America Central?? ??i America de Sud, pe numeroase insule din Caraibe ??i de pe coasta estic?? a Pacificului. Prefer?? zonele cu arbori, dar se adapteaz?? ??i la spa??ii mai deschise, c??t timp se afl?? ??n apropierea apei.');

-- --------------------------------------------------------

--
-- Table structure for table `departamente`
--

CREATE TABLE `departamente` (
  `id_dep` int(11) NOT NULL,
  `nume_dep` char(20) DEFAULT NULL,
  `nr_ang` int(11) DEFAULT NULL,
  `telefon` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departamente`
--

INSERT INTO `departamente` (`id_dep`, `nume_dep`, `nr_ang`, `telefon`) VALUES
(1, 'casierie', 4, '0442679'),
(2, 'acvaristica', 3, '0432679'),
(3, 'pasari', 3, '0412679'),
(4, 'animale terestre', 3, '0442679'),
(5, 'marketing', 2, '0402129'),
(6, 'logistica', 2, '0492679');

-- --------------------------------------------------------

--
-- Table structure for table `folosesc`
--

CREATE TABLE `folosesc` (
  `id_animal` int(11) NOT NULL,
  `cod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `folosesc`
--

INSERT INTO `folosesc` (`id_animal`, `cod`) VALUES
(13, 21),
(13, 24),
(13, 25),
(14, 21),
(14, 24),
(15, 22),
(15, 23),
(16, 20),
(16, 22),
(17, 22),
(17, 23),
(18, 26),
(18, 27),
(20, 1),
(20, 2),
(20, 4),
(20, 5),
(20, 7),
(21, 4),
(21, 5),
(21, 6),
(22, 10),
(22, 11),
(22, 13),
(22, 16),
(22, 17),
(23, 12),
(23, 14),
(23, 16);

-- --------------------------------------------------------

--
-- Table structure for table `furnizate_de`
--

CREATE TABLE `furnizate_de` (
  `id_f` int(11) NOT NULL,
  `cod` int(11) NOT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `nr_de_prod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `furnizate_de`
--

INSERT INTO `furnizate_de` (`id_f`, `cod`, `data`, `nr_de_prod`) VALUES
(1, 5, '2022-02-10 13:14:22', 30),
(1, 6, '2022-02-10 13:14:22', 20),
(1, 9, '2022-02-10 13:14:22', 20),
(1, 16, '2022-02-10 13:14:22', 15),
(1, 19, '2022-02-10 13:14:22', 10),
(1, 23, '2022-02-10 13:14:22', 5),
(1, 26, '2022-02-10 13:14:22', 6),
(2, 1, '2022-02-10 13:14:22', 20),
(2, 3, '2022-02-10 13:14:22', 5),
(2, 13, '2022-02-10 13:14:22', 15),
(2, 15, '2022-02-10 13:14:22', 20),
(2, 22, '2022-02-10 13:14:22', 30),
(2, 27, '2022-02-10 13:14:22', 30),
(3, 4, '2022-02-10 13:14:22', 50),
(3, 8, '2022-02-10 13:14:22', 27),
(3, 20, '2022-02-10 13:14:22', 5),
(4, 13, '2022-02-10 13:14:22', 15),
(4, 21, '2022-02-10 13:14:22', 10),
(4, 24, '2022-02-10 13:14:22', 10),
(4, 28, '2022-02-10 13:14:22', 20),
(4, 29, '2022-02-10 13:14:22', 5),
(5, 4, '2022-02-10 13:14:22', 50),
(5, 7, '2022-02-10 13:14:22', 70),
(5, 10, '2022-02-10 13:14:22', 20),
(5, 12, '2022-02-10 13:14:22', 30),
(5, 18, '2022-02-10 13:14:22', 5),
(5, 25, '2022-02-10 13:14:22', 40),
(6, 2, '2022-02-10 13:14:22', 5),
(6, 5, '2022-02-10 13:14:22', 20),
(6, 11, '2022-02-10 13:14:22', 11),
(6, 14, '2022-02-10 13:14:22', 30),
(6, 17, '2022-02-10 13:14:22', 30),
(6, 23, '2022-02-10 13:14:22', 5),
(6, 27, '2022-02-10 13:14:22', 30);

-- --------------------------------------------------------

--
-- Table structure for table `furnizori`
--

CREATE TABLE `furnizori` (
  `id_f` int(11) NOT NULL,
  `nume` char(50) DEFAULT NULL,
  `adresa` text DEFAULT NULL,
  `telefon` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `furnizori`
--

INSERT INTO `furnizori` (`id_f`, `nume`, `adresa`, `telefon`) VALUES
(1, 'Adri Company', 'Strada Muresului nr 43 Techirghiol', '0425529'),
(2, 'Marcelo Company', 'Strada Malu Rosu nr 430 Ploiesti', '0421129'),
(3, 'FarmCool Company', 'Strada Canatacuzino nr 2 Timisoara', '0444429'),
(4, 'Andel Company', 'Strada Porumbescu Ciprian nr 120 Campina', '0415523'),
(5, 'Cocept Company', 'Strada Socului nr 29 Sinaia', '0409909'),
(6, 'Termosa Company', 'Strada Dambu nr 11', '0491099');

-- --------------------------------------------------------

--
-- Table structure for table `manageri`
--

CREATE TABLE `manageri` (
  `id_man` int(11) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `nume` varchar(50) DEFAULT NULL,
  `id_dep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manageri`
--

INSERT INTO `manageri` (`id_man`, `bonus`, `nume`, `id_dep`) VALUES
(1, 500, 'Manu Andreea', 1),
(2, 700, 'Vladimirescu Vladimir', 2),
(3, 700, 'Marin Andreea', 3),
(4, 700, 'Tudor Alexandru', 4),
(5, 300, 'Branzea Madalina', 5),
(6, 1000, 'Miorica Pavel', 6);

-- --------------------------------------------------------

--
-- Table structure for table `produse`
--

CREATE TABLE `produse` (
  `cod` int(11) NOT NULL,
  `nume` varchar(50) NOT NULL,
  `marca` char(20) DEFAULT NULL,
  `descriere` text DEFAULT NULL,
  `pret` int(11) DEFAULT NULL,
  `nr_de_prod` int(11) DEFAULT NULL,
  `id_dep` int(11) NOT NULL,
  `indicatii` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produse`
--

INSERT INTO `produse` (`cod`, `nume`, `marca`, `descriere`, `pret`, `nr_de_prod`, `id_dep`, `indicatii`) VALUES
(1, 'Aquael Acvariu ', 'Leddy 60 Day&Night', 'Un acvariu cu un design modern ce se potrive??te oric??rui ambient, fie acasa, fie la serviciu', 500, 20, 2, 'fara indicatii'),
(2, 'Acvariu Led Lido 120 Maro ', 'Juwel', 'Acvariul LIDO este un acvariu elegant, cu design discret, se potriveste perfect in orice loc din casa, datorita cubismului sau.', 1000, 5, 2, 'fara indicatii'),
(3, 'Acvariu Leddy 60 Plus', 'Aquael', 'Un acvariu cu un design modern ce se potrive??te oric??rui ambient, fie acasa, fie la serviciu', 1000, 5, 2, 'fara indicatii'),
(4, 'Decor Acvariu Radacina', 'Resun', 'Figurine pentru decorarea acvariilor de apa dulce sau marina.', 20, 100, 2, 'fara indicatii'),
(5, 'Planta Plastic Sea Grass Red', 'Resun', 'Plante din material plastic ce reproduc frumuse??ea plantelor naturale. Cu ajutorul acestora ve??i crea un decor fascinant care va capta privirile.', 10, 50, 2, 'fara indicatii'),
(6, 'Hrana peste', 'Norwin Discus', 'Hran?? complet?? super premium sub form?? de granule ??mbog????it?? cu Flatumin ??i Astaxantin??.', 30, 100, 2, 'deal?? pentru discus. Flatuminul, la o concentra??ie de 5mg/kg, cre??te cu pan?? la 25% nivelul de asimilare a nutrien??ilor, ceea ce duce la cre??terea imunit????ii ??i implicit, la sc??derea mortalit????ii.'),
(7, 'Hrana Betta', 'Tetra Betta', 'Hran?? de ??nalt?? calitate special creat?? pentru pe??tii Betta Splendens ??i al??i pe??ti Labirint.', 20, 70, 2, 'Con??ine intensificatori naturali de culoare, cu proteine din creve??i ??i krill ce promoveaz?? cre??terea ??i accentueaz?? pozi??ia impun??toare a ??not??toarelor.'),
(8, 'Mancare peste', 'Tetra Phyll', 'Hran?? sub form?? de fulgi pentru to??i pe??tii ornamentali ierbivori, ideal?? pentru pe??tii vivipari.', 50, 27, 2, 'Con??ine vitamina C-cre??te rezisten??a la boli ??i previne caren??ele de nutri??ie, cu nutrien??i ??i vitamine vitale ce promoveaz?? vitalitatea, cre??terea ??i robuste??ea pe??tilor.'),
(9, 'Substrat acavariu', 'Aquabasis Plus', 'Amestec de pamant de cultura gata preparat pentru amenajarea unui nou acvariu.', 50, 20, 2, 'Toate aceste substante nutritive se pot gasi sub forma de depozit, fiind foarte disponibile absorbtiei.'),
(10, 'Colivie 55', 'Colv', 'Colivie profesional?? pentru prezentarea p??s??rilor mici', 50, 10, 3, 'fara indicatii'),
(11, 'Colivie York', 'Mork', 'Colivie profesional?? pentru transportul sau prezentarea p??s??rilor mici exotice ??? recomandat?? de cresc??tori.', 200, 7, 3, 'Material plastic metal, non-toxic pentru p??s??ri.'),
(12, 'Colivie Nr.101', 'Mork', 'Colivie pentru p??s??ri exotice.', 60, 23, 3, 'Material plastic metal, non-toxic pentru p??s??ri.'),
(13, 'Cuib Exotice Plastic', 'Mara', 'Cuib din plastic pentru p??s??ri.', 20, 20, 3, 'Asigur?? protec??ia ??i confortul p??s??rilor adulte ??i a puilor.'),
(14, 'Baton Canari Cu Ardei Rosu', 'Belcuore', 'Batoane s??n??toase ??i distractive pentru canari, cu ardei rosu, morcovi ??i semin??e de cea mai bun?? calitate.', 7, 28, 3, 'Aceste batoane sunt prev??zute cu o agatatoare din plastic, put??nd fi fixate cu u??urin???? ??n cu??c??.'),
(15, 'MENIU EXOTICE', 'VITAKRAFT', 'Hrana premium pentru pasari exotice cu semin e selec ionate special adaptate ( cinteze zebra, amandine gould, zebre australiene, etc.), ??mbogatita cu calciu, vitamine si minerale.', 20, 13, 3, 'fara indicatii'),
(16, 'Vitamine Perusi', 'Belcuore', 'Amestec de seminte acoperite cu un concentrat de vitamine si minerale. ', 20, 12, 3, ' Sunt recomandate pentru cresterea imunitatii perusilor.'),
(17, 'Jucarie Leagan', 'Ferplast', 'uc??rie pentru peru??i, papagali mici-mari.', 30, 24, 3, 'fara indicatii'),
(18, 'Jucarie Leagan Lemn', 'Ferplast', 'Juc??rie pentru papagali mici.', 20, 5, 3, 'fara indicatii'),
(19, 'Cusca Transport', 'Ferplast', 'Include perni???? ??i ad??p??toare.', 215, 6, 4, 'fara indicatii'),
(20, 'Cotet Lemn', 'Domus', 'Alegerea ideala pentru gradina ta! Baita este un cotet din lemn ce dispune de un acoperis special tratat pentru o rezistenta de lunga durata.', 330, 4, 4, 'fara indicatii'),
(21, 'Jucarie Soricel', 'Pet Expert', 'Jucaria ideala pentru pisica ta.', 30, 5, 4, 'fara indicatii'),
(22, 'Conserva Pui/Morcov', 'Pedigree', 'Hrana umeda completa pentru cain contin carne proaspata, astfel ii asigurati o nutritie de calitate printr-o hrana cu miros si gust excelent.', 22, 26, 4, 'Contine vitamina E si minerale pentru a sprijini sistemul imunitar.'),
(23, 'Mancare uscat catel', 'Royal Canin', 'Hran?? complet?? special adaptat?? nevoilor nutri??ionale ale c????eilor de talie medie ??i mare ', 90, 10, 4, 'Re??eta acestui produs ofer?? un aport nutri??ional perfect echilibrat.'),
(24, 'Ham Jogging', 'Fermplast', 'Set ham si lesa pentru pisici sau alte animale mici (iepuri, dihori).', 70, 7, 4, 'Este prevazut cu un sistem de inchidere foarte practic.'),
(25, 'Conserva Pasare/Ficat', 'Cat Concept', 'Este o hrana umeda delicioasa pentru pisici fara adaos de conservanti, coloranti sau organisme modificate genetic.', 17, 30, 4, 'Aceasta contine bucatele delicioase de carne din pasare si ficat in sos.'),
(26, 'Cusca Hamster', 'Ferplast', 'Locuin??a ideal?? pentru roz??toarele pline de via????.', 290, 2, 4, 'Ventila??ia intern?? este oferit?? de grilajul metalic existent at??t ??n partea superioar?? c??t ??n p??r??ile laterale'),
(27, 'Baton Hamsteri Cu Roscova', 'Belcuore', 'Batoane s??n??toase ??i distractive pentru hamsteri ??i roz??toare mici, cu ro??cov?? ??i semin??e de cea mai bun?? calitate.', 7, 50, 4, 'Aceste batoane pentru ron????it sunt prev??zute cu un c??rlig, put??nd fi fixate cu u??urin???? ??n cu??c??.'),
(28, 'Adapatoare Drinki', 'Ferplast', 'Ad??p??tor pentru roz??toare.', 27, 15, 4, 'Prev??zut cu suport din metal care permite montarea ad??p??torului pe gratiile cu??tii .'),
(29, 'Terariu Sticla', 'Exo', 'Terariile din sticla Exo Terra sunt mediul ideal pentru reptile si amfibieni.', 940, 5, 4, 'Usile se pot deschide si separat. Partea de sus a terariului permite ventilarea si penetrarea razelor UVB si infrarosii.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `angajati`
--
ALTER TABLE `angajati`
  ADD PRIMARY KEY (`id_ang`),
  ADD KEY `id_dep` (`id_dep`);

--
-- Indexes for table `animale`
--
ALTER TABLE `animale`
  ADD PRIMARY KEY (`id_animal`);

--
-- Indexes for table `departamente`
--
ALTER TABLE `departamente`
  ADD PRIMARY KEY (`id_dep`);

--
-- Indexes for table `folosesc`
--
ALTER TABLE `folosesc`
  ADD PRIMARY KEY (`id_animal`,`cod`),
  ADD KEY `cod` (`cod`);

--
-- Indexes for table `furnizate_de`
--
ALTER TABLE `furnizate_de`
  ADD PRIMARY KEY (`id_f`,`cod`),
  ADD KEY `cod` (`cod`);

--
-- Indexes for table `furnizori`
--
ALTER TABLE `furnizori`
  ADD PRIMARY KEY (`id_f`);

--
-- Indexes for table `manageri`
--
ALTER TABLE `manageri`
  ADD PRIMARY KEY (`id_man`),
  ADD KEY `id_dep` (`id_dep`);

--
-- Indexes for table `produse`
--
ALTER TABLE `produse`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `id_dep` (`id_dep`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `angajati`
--
ALTER TABLE `angajati`
  MODIFY `id_ang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `animale`
--
ALTER TABLE `animale`
  MODIFY `id_animal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `departamente`
--
ALTER TABLE `departamente`
  MODIFY `id_dep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `furnizori`
--
ALTER TABLE `furnizori`
  MODIFY `id_f` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `manageri`
--
ALTER TABLE `manageri`
  MODIFY `id_man` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produse`
--
ALTER TABLE `produse`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `angajati`
--
ALTER TABLE `angajati`
  ADD CONSTRAINT `angajati_ibfk_1` FOREIGN KEY (`id_dep`) REFERENCES `departamente` (`id_dep`);

--
-- Constraints for table `folosesc`
--
ALTER TABLE `folosesc`
  ADD CONSTRAINT `folosesc_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animale` (`id_animal`),
  ADD CONSTRAINT `folosesc_ibfk_2` FOREIGN KEY (`cod`) REFERENCES `produse` (`cod`);

--
-- Constraints for table `furnizate_de`
--
ALTER TABLE `furnizate_de`
  ADD CONSTRAINT `furnizate_de_ibfk_1` FOREIGN KEY (`id_f`) REFERENCES `furnizori` (`id_f`),
  ADD CONSTRAINT `furnizate_de_ibfk_2` FOREIGN KEY (`cod`) REFERENCES `produse` (`cod`);

--
-- Constraints for table `manageri`
--
ALTER TABLE `manageri`
  ADD CONSTRAINT `manageri_ibfk_1` FOREIGN KEY (`id_dep`) REFERENCES `departamente` (`id_dep`) ON DELETE CASCADE;

--
-- Constraints for table `produse`
--
ALTER TABLE `produse`
  ADD CONSTRAINT `produse_ibfk_1` FOREIGN KEY (`id_dep`) REFERENCES `departamente` (`id_dep`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
