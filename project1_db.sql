-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2017 at 12:29 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `firstname`, `lastname`, `email`, `password`, `timestamp`) VALUES
(1, 'John', 'Doe', 'john32@ymail.com', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-14 13:26:25'),
(4, 'Addison', 'Hashim', 'tempus.mauris@atpede.edu', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:42:33'),
(5, 'Denise', 'Blaze', 'quam@sitamet.com', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:42:33'),
(6, 'Idona', 'Elton', 'Quisque.imperdiet.erat@euismodetcommodo.org', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:42:33'),
(7, 'Elvis', 'Nasim', 'enim.commodo.hendrerit@SednequeSed.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:42:33'),
(9, 'Patrick', 'Belle', 'semper@ullamcorper.co.uk', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:42:33'),
(10, 'Alfonso', 'Cole', 'ipsum@magna.net', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:42:33'),
(11, 'Clinton', 'Zenaida', 'malesuada@purusac.net', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:42:33'),
(13, 'Medge', 'Helen', 'amet@aliquam.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:42:33'),
(18, 'Warren', 'Timon', 'consectetuer@posuere.edu', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(22, 'Cora', 'Julian', 'non.massa@idmagnaet.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(24, 'Lana', 'Joan', 'odio.auctor@Integertinciduntaliquam.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(25, 'Macy', 'Timon', 'nibh.sit.amet@vel.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(26, 'Aspen', 'Kyla', 'facilisis@estvitae.org', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(27, 'Fletcher', 'Callum', 'Ut.tincidunt.orci@nequeInornare.edu', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(28, 'Astra', 'Casey', 'iaculis@ipsumPhasellus.co.uk', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(29, 'Hunter', 'Darius', 'aliquam.eu@montesnasceturridiculus.net', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(30, 'Rama', 'Carter', 'egestas@nequetellus.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(31, 'Joshua', 'Delilah', 'Mauris.eu.turpis@ornareplaceratorci.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(32, 'Michelle', 'Celeste', 'Nam.nulla.magna@Fuscediamnunc.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(33, 'Sheila', 'Alexander', 'per@orciluctus.edu', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(34, 'Zahir', 'Melissa', 'ut@Nuncsedorci.net', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(35, 'Chantale', 'Zahir', 'purus.Nullam@luctus.com', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(36, 'Mara', 'Merritt', 'sit.amet@Nullam.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(37, 'Tiger', 'Avye', 'ac.arcu@malesuadaaugue.net', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(38, 'Scarlett', 'Yoko', 'nibh.Donec@imperdiet.org', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(39, 'Simon', 'Kaitlin', 'Curae@enim.co.uk', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(40, 'Adrian', 'Lamar', 'inceptos@arcu.com', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(41, 'Shelby', 'Melvin', 'tellus.Suspendisse@CrasinterdumNunc.co.uk', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(42, 'Josiah', 'Shoshana', 'enim.nec@leo.edu', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(43, 'Neville', 'Fay', 'vitae.odio.sagittis@nibhdolor.org', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(44, 'Martena', 'Miranda', 'eu.elit.Nulla@CrasinterdumNunc.net', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(45, 'Kiona', 'Hayes', 'interdum.ligula.eu@estac.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(46, 'Beau', 'Fuller', 'non.magna.Nam@Nunclaoreet.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(47, 'Imogene', 'Merrill', 'lorem@commodoauctor.org', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(48, 'Ferdinand', 'Dacey', 'viverra.Maecenas@magnaCrasconvallis.net', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(49, 'Phillip', 'Deirdre', 'pede@Suspendisse.org', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(50, 'Sophia', 'Donna', 'nibh@pretium.edu', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(51, 'Kevin', 'Burton', 'scelerisque.scelerisque@adipiscing.edu', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(52, 'Zenia', 'Alexander', 'erat.eget@luctus.co.uk', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(53, 'Arsenio', 'Eric', 'amet.faucibus.ut@magnamalesuada.com', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:39'),
(54, 'Kelly', 'Zeph', 'a.enim@atarcuVestibulum.com', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(55, 'Inga', 'Ronan', 'cubilia.Curae.Phasellus@etarcu.com', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(56, 'Quintessa', 'Patricia', 'Class.aptent.taciti@turpis.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(57, 'Phyllis', 'Arden', 'ut@nonarcu.net', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(58, 'Sarah', 'Karina', 'eget@CurabiturdictumPhasellus.org', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(59, 'Dustin', 'Linda', 'amet.nulla@acmattisvelit.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(60, 'Channing', 'Justine', 'velit@penatibuset.org', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(61, 'Edan', 'Richard', 'ipsum.non.arcu@Nullamvelit.com', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(62, 'Yen', 'Colt', 'ac@Cum.edu', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(63, 'Gray', 'Lacota', 'Cum.sociis@vulputateullamcorper.edu', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(64, 'Knox', 'Emery', 'natoque.penatibus.et@litora.co.uk', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(65, 'Thane', 'Alice', 'ac@tacitisociosqu.com', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(66, 'Herrod', 'Deborah', 'Donec.nibh@consectetueradipiscingelit.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(67, 'Naomi', 'Maia', 'nunc.In.at@elitAliquam.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(68, 'Quamar', 'Hayden', 'et.pede.Nunc@est.org', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(69, 'Phelan', 'Kylee', 'amet@arcuVivamussit.edu', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(70, 'Renee', 'Quentin', 'felis.ullamcorper@cursuset.org', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(71, 'Wendy', 'Jane', 'ullamcorper.Duis.at@atliberoMorbi.co.uk', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(72, 'Odessa', 'Dorothy', 'luctus.ipsum.leo@nequeSedeget.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(73, 'Xander', 'Raymond', 'gravida.Praesent@suscipit.com', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(74, 'Zia', 'Ivana', 'Donec.tempus.lorem@molestieSed.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(75, 'Cyrus', 'Bo', 'sagittis.semper.Nam@tincidunt.net', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(76, 'Madeline', 'Naomi', 'arcu.Vestibulum.ante@utaliquam.com', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(77, 'Tucker', 'Jeanette', 'Phasellus.vitae@Quisquetinciduntpede.co.uk', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(78, 'Sage', 'Shea', 'Nulla.dignissim.Maecenas@sollicitudinamalesuada.com', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(79, 'Gabriel', 'Urielle', 'et@tortor.co.uk', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(80, 'Orlando', 'Sheila', 'Phasellus.dolor.elit@egetlaoreet.net', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(81, 'Dylan', 'Tashya', 'imperdiet.nec.leo@in.co.uk', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(82, 'Basil', 'Emmanuel', 'hendrerit.Donec@iaculislacuspede.com', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(83, 'Grace', 'Ashton', 'primis@dolorvitae.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(84, 'Elmo', 'Blake', 'lorem.eu@fringillaestMauris.edu', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(85, 'William', 'Knox', 'laoreet.ipsum.Curabitur@ametornarelectus.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(86, 'Grady', 'Lucy', 'non.quam@Fuscedolor.edu', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(87, 'Giselle', 'Aurora', 'Cum.sociis@seddui.co.uk', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(88, 'Indigo', 'Vivian', 'nisi.magna@ametfaucibusut.net', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(89, 'Carla', 'Clark', 'hendrerit.consectetuer@PhasellusornareFusce.edu', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(90, 'Orlando', 'Lila', 'fringilla@indolor.org', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(91, 'Yen', 'Bo', 'vehicula.et.rutrum@Proinvel.com', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(92, 'Brandon', 'Aristotle', 'a.auctor@risusodio.co.uk', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(93, 'Dante', 'Gavin', 'consectetuer.cursus.et@Morbiaccumsan.edu', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(94, 'Scarlett', 'Nora', 'sagittis@Sedneque.com', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(95, 'Boris', 'Ila', 'ipsum@mauris.co.uk', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(96, 'Tucker', 'Raja', 'est.vitae.sodales@egestasblanditNam.org', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(97, 'John', 'Devin', 'lorem@adipiscingelitEtiam.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(98, 'Karen', 'Len', 'velit@porttitortellusnon.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(99, 'Mona', 'Lee', 'Cum.sociis.natoque@euodioPhasellus.net', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(100, 'Nolan', 'Giacomo', 'libero.Morbi@a.edu', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(101, 'Matthew', 'Lael', 'mollis.lectus.pede@dictumsapienAenean.co.uk', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(102, 'Channing', 'Yardley', 'erat.nonummy.ultricies@imperdiet.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(103, 'Tobias', 'Daquan', 'ornare.tortor@sedhendrerita.com', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(104, 'Troy', 'Athena', 'lectus.pede@diamSed.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(105, 'Hannah', 'Miriam', 'magna.Phasellus@duiCum.net', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(106, 'Brennan', 'Iona', 'convallis@et.edu', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(107, 'Emerson', 'Travis', 'dictum.placerat.augue@vitae.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(108, 'Ava', 'Haviva', 'mauris@metusIn.edu', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(109, 'Nadine', 'Jarrod', 'tempor.lorem.eget@ataugue.edu', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(110, 'Kenneth', 'Emma', 'neque.sed.dictum@eros.com', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(111, 'Macy', 'Eve', 'in@ornareegestasligula.org', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(112, 'Amal', 'Courtney', 'pede.Cum@nequevenenatislacus.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(113, 'Benjamin', 'Asher', 'placerat@elitAliquam.ca', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 09:43:40'),
(114, 'Sun', 'Seol', 'sunseol@korea.com', '696d29e0940a4957748fe3fc9efd22a3', '2017-08-15 10:24:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
