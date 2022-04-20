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
(13, 'Munchkin', 'animal terestru-pisica', 'Munchkin este o rasă care a creat mari controverse atunci când a apărut. Sunt, de fapt, o mutaţie, care a fost văzută prima dată în America anilor 1980, iar numele i-a fost dat după nişte personaje din filmul Vrăjitorul din Oz. Prima apariţie a lor a fost consemnată la începutul anilor 1930 în Anglia, apoi a fost văzută şi în Rusia, 20 de ani mai târziu. Sunt animale cu picioarele extrem de scurte, au o talie medie şi părul lung. Au ochii în forma migdalei, în orice culoare, la fel şi blana lor, există în toate paletele de culori. Blana este deasă şi mătăsoasă, cu o coadă mare şi stufoasă. Părul poate fi lung sau mediu, în funcţie de animal.'),
(14, 'Savannah', 'animal terestru-pisica', 'Savannah este deosebit de înaltă şi subţire, are picioarele lungi. Masculii nu se deosebesc greu de femele, deoarece ei sunt chiar mai mari. Pentru că au gene hibride, aceste pisici pot avea pui diferiţi, cu dimensiuni distincte. De cele mai multe ori, animalele din această rasă sunt pătate, însă mutaţiile pot ajunge şi aici, aşa că puteţi avea în faţa ochilor o pisică Savannah alb imaculat, albastră sau chiar alte culori derivate. Au urechi subţiri şi înalte, cu o margine de culoare închisă, iar asta creează efectul ochilor dubli. Poate avea ochii căprui, verzi sau aurii.'),
(15, 'Boston Terrier', 'animal terestru-caine', 'Avem în faţă un câine de o talie mică ce are botul scurt, pătrat, cu urechi mici şi ascuţite. Este un animal robust, musculos şi foarte puternic. Are ochii distanţaţi, rotunzi, cu o blană în diverse culori, de la tigrat, alb, la negru cu pete şi alte combinaţii. Un câine din rasa Boston terrier va măsura între 38 şi 43 cm, iar greutatea maximă este de 11,5 kilograme. Mare atenţie, nu va trebui să depăşească niciodată acest gramaj, dacă o va face va trăda probleme de sănătate.'),
(16, 'German Spitz', 'animal terestru-caine', 'Spitzul Mittel este un câine mic, compact, cu blana lungă, cu un cap tipic pentru un spitz și o coadă arcuită pe spate. Poate fi văzut în toate culorile și variantele (pentru detalii consultă standardul rasei). Sexul câinilor ar trebui să fie evident – masculii având un aspect masculin, iar femelele unul feminin. Spitzul Mittel adult are o înălțime de 30 – 38 de centimetri și cântărește 7 – 11 kilograme.'),
(17, 'Australian Terrier', 'animal terestru-caine', 'Câinii Terrier Australian diferă de alți terrieri prin faptul că au un gât și un spate lung comparativ cu înălțimea lor. Blana este aspră și dreaptă în partea de sus și mai moale dedesubt, și poate fi roșcată sau poate avea diverse nuanțe de albastru cu cafeniu. Un Aussie are o înălțime de aproximativ 25,5 cm la greabăn la vârstă adultă șî cântărește aproximativ 6,5kg.'),
(18, 'Hamster', 'animal terestru-rozatoare', 'Hamsterul este un animal de companie ideal pentru întreaga familie. Nu are nevoie de mult spaţiu şi este este simplu de întreţinut. Hamsterii sunt activi noaptea, iar ziua dorm.'),
(19, 'Veverita', 'animal terestru-rozatoare', ' Veverita masoara intre 19 si 24 de centimentri, iar coada intre 15 si 20. Veveritele sunt specii antice, si din fericire, nu sunt pe cale de disparitie ca alte animalute de genu.'),
(20, 'Pesti betta', 'peste', 'Pestii betta sunt cei mai populari pesti din magazinele de animale, recunoscuti pentru agilitatea, interactivitatea si costurile mici de intretinere. Ei pot fi \'animale\' de companie pe o durata foarte lunga de timp.'),
(21, 'Molly', 'peste', 'Aceasta specie este recunoscuta in general sub numele de molly si a fost descoperita de catre Valenciennes in Cuvier si Valenciennes in anul 1846.Molly face parte din ordinal Cyprinodontiformes, subordinul Cyprinodontoidei, familia Poeciliidae, subfamilia Poeciliinae, genul Poecilia si in final specia Poecilia sphenops, fiind intalnita pe cursurile de apa ale raurilor de pe coastele Mexicului pana in Columbia, avand o rata de viata de 3-4 ani.'),
(22, 'Perus', 'pasari', 'Perușul se găsește prin părțile uscate ale Australiei și a supraviețuit timp de cinci milioane de ani în condițiile dure ale acelui continent.[3] Perușul este o pasăre mică, cu o greutate medie de 50 grame, lungimea nedepășind 20 cm. Culoarea originară a perușului este verde, iar în urma domesticirii s-au obținut cele mai variate culori. Perușul are cioc puternic și picioarele scurte, fiecare cu patru degete care se termină cu gheare scurte. Cercetări recente au dovedit că perușul are simțul ritmului.'),
(23, 'Papagalul cenusiu', 'pasari', 'Papagalul cenusiu (Aratinga weddellii) face parte din familia Psittacidae, genul Aratinga. Este un papagal de culoare verde ccu capul de culoare cenusie intalnit in padurile din bazinul Amazonian din America de Sud.'),
(24, 'Iguana verde', 'animale terestre-reptile', 'Specie nativă în America Centrală şi America de Sud, pe numeroase insule din Caraibe şi de pe coasta estică a Pacificului. Preferă zonele cu arbori, dar se adaptează şi la spaţii mai deschise, cât timp se află în apropierea apei.');

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
(1, 'Aquael Acvariu ', 'Leddy 60 Day&Night', 'Un acvariu cu un design modern ce se potrivește oricărui ambient, fie acasa, fie la serviciu', 500, 20, 2, 'fara indicatii'),
(2, 'Acvariu Led Lido 120 Maro ', 'Juwel', 'Acvariul LIDO este un acvariu elegant, cu design discret, se potriveste perfect in orice loc din casa, datorita cubismului sau.', 1000, 5, 2, 'fara indicatii'),
(3, 'Acvariu Leddy 60 Plus', 'Aquael', 'Un acvariu cu un design modern ce se potrivește oricărui ambient, fie acasa, fie la serviciu', 1000, 5, 2, 'fara indicatii'),
(4, 'Decor Acvariu Radacina', 'Resun', 'Figurine pentru decorarea acvariilor de apa dulce sau marina.', 20, 100, 2, 'fara indicatii'),
(5, 'Planta Plastic Sea Grass Red', 'Resun', 'Plante din material plastic ce reproduc frumuseţea plantelor naturale. Cu ajutorul acestora veţi crea un decor fascinant care va capta privirile.', 10, 50, 2, 'fara indicatii'),
(6, 'Hrana peste', 'Norwin Discus', 'Hrană completă super premium sub formă de granule îmbogăţită cu Flatumin şi Astaxantină.', 30, 100, 2, 'deală pentru discus. Flatuminul, la o concentraţie de 5mg/kg, creşte cu pană la 25% nivelul de asimilare a nutrienţilor, ceea ce duce la creşterea imunităţii şi implicit, la scăderea mortalităţii.'),
(7, 'Hrana Betta', 'Tetra Betta', 'Hrană de înaltă calitate special creată pentru peştii Betta Splendens şi alţi peşti Labirint.', 20, 70, 2, 'Conţine intensificatori naturali de culoare, cu proteine din creveţi şi krill ce promovează creşterea şi accentuează poziţia impunătoare a înotătoarelor.'),
(8, 'Mancare peste', 'Tetra Phyll', 'Hrană sub formă de fulgi pentru toţi peştii ornamentali ierbivori, ideală pentru peştii vivipari.', 50, 27, 2, 'Conţine vitamina C-creşte rezistenţa la boli şi previne carenţele de nutriţie, cu nutrienţi şi vitamine vitale ce promovează vitalitatea, creşterea şi robusteţea peştilor.'),
(9, 'Substrat acavariu', 'Aquabasis Plus', 'Amestec de pamant de cultura gata preparat pentru amenajarea unui nou acvariu.', 50, 20, 2, 'Toate aceste substante nutritive se pot gasi sub forma de depozit, fiind foarte disponibile absorbtiei.'),
(10, 'Colivie 55', 'Colv', 'Colivie profesională pentru prezentarea păsărilor mici', 50, 10, 3, 'fara indicatii'),
(11, 'Colivie York', 'Mork', 'Colivie profesională pentru transportul sau prezentarea păsărilor mici exotice – recomandată de crescători.', 200, 7, 3, 'Material plastic metal, non-toxic pentru păsări.'),
(12, 'Colivie Nr.101', 'Mork', 'Colivie pentru păsări exotice.', 60, 23, 3, 'Material plastic metal, non-toxic pentru păsări.'),
(13, 'Cuib Exotice Plastic', 'Mara', 'Cuib din plastic pentru păsări.', 20, 20, 3, 'Asigură protecţia şi confortul păsărilor adulte şi a puilor.'),
(14, 'Baton Canari Cu Ardei Rosu', 'Belcuore', 'Batoane sănătoase și distractive pentru canari, cu ardei rosu, morcovi și semințe de cea mai bună calitate.', 7, 28, 3, 'Aceste batoane sunt prevăzute cu o agatatoare din plastic, putând fi fixate cu ușurință în cușcă.'),
(15, 'MENIU EXOTICE', 'VITAKRAFT', 'Hrana premium pentru pasari exotice cu semin e selec ionate special adaptate ( cinteze zebra, amandine gould, zebre australiene, etc.), îmbogatita cu calciu, vitamine si minerale.', 20, 13, 3, 'fara indicatii'),
(16, 'Vitamine Perusi', 'Belcuore', 'Amestec de seminte acoperite cu un concentrat de vitamine si minerale. ', 20, 12, 3, ' Sunt recomandate pentru cresterea imunitatii perusilor.'),
(17, 'Jucarie Leagan', 'Ferplast', 'ucărie pentru peruşi, papagali mici-mari.', 30, 24, 3, 'fara indicatii'),
(18, 'Jucarie Leagan Lemn', 'Ferplast', 'Jucărie pentru papagali mici.', 20, 5, 3, 'fara indicatii'),
(19, 'Cusca Transport', 'Ferplast', 'Include perniţă şi adăpătoare.', 215, 6, 4, 'fara indicatii'),
(20, 'Cotet Lemn', 'Domus', 'Alegerea ideala pentru gradina ta! Baita este un cotet din lemn ce dispune de un acoperis special tratat pentru o rezistenta de lunga durata.', 330, 4, 4, 'fara indicatii'),
(21, 'Jucarie Soricel', 'Pet Expert', 'Jucaria ideala pentru pisica ta.', 30, 5, 4, 'fara indicatii'),
(22, 'Conserva Pui/Morcov', 'Pedigree', 'Hrana umeda completa pentru cain contin carne proaspata, astfel ii asigurati o nutritie de calitate printr-o hrana cu miros si gust excelent.', 22, 26, 4, 'Contine vitamina E si minerale pentru a sprijini sistemul imunitar.'),
(23, 'Mancare uscat catel', 'Royal Canin', 'Hrană completă special adaptată nevoilor nutriționale ale cățeilor de talie medie și mare ', 90, 10, 4, 'Rețeta acestui produs oferă un aport nutrițional perfect echilibrat.'),
(24, 'Ham Jogging', 'Fermplast', 'Set ham si lesa pentru pisici sau alte animale mici (iepuri, dihori).', 70, 7, 4, 'Este prevazut cu un sistem de inchidere foarte practic.'),
(25, 'Conserva Pasare/Ficat', 'Cat Concept', 'Este o hrana umeda delicioasa pentru pisici fara adaos de conservanti, coloranti sau organisme modificate genetic.', 17, 30, 4, 'Aceasta contine bucatele delicioase de carne din pasare si ficat in sos.'),
(26, 'Cusca Hamster', 'Ferplast', 'Locuința ideală pentru rozătoarele pline de viață.', 290, 2, 4, 'Ventilația internă este oferită de grilajul metalic existent atât în partea superioară cât în părțile laterale'),
(27, 'Baton Hamsteri Cu Roscova', 'Belcuore', 'Batoane sănătoase și distractive pentru hamsteri și rozătoare mici, cu roșcovă și semințe de cea mai bună calitate.', 7, 50, 4, 'Aceste batoane pentru ronțăit sunt prevăzute cu un cârlig, putând fi fixate cu ușurință în cușcă.'),
(28, 'Adapatoare Drinki', 'Ferplast', 'Adăpător pentru rozătoare.', 27, 15, 4, 'Prevăzut cu suport din metal care permite montarea adăpătorului pe gratiile cuştii .'),
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
