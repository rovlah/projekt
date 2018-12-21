-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2018 at 11:08 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exercise_generator`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id_korisnika` int(11) NOT NULL,
  `ime_korisnika` varchar(40) NOT NULL,
  `prezime_korisnika` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `korisnicko_ime` varchar(50) NOT NULL,
  `lozinka` longtext NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id_korisnika`, `ime_korisnika`, `prezime_korisnika`, `email`, `korisnicko_ime`, `lozinka`, `role`) VALUES
(1, 'Pero', 'Anić', 'peroanic@email.com', 'peroanic', 'peroanic', 100),
(2, 'Maja', 'Majić', 'maja@maja.com', 'maja', '$2y$10$MaVy.iQ.liumK1ahxLFGbOVplY5H6.oP6PfVTQMqWn65I8HM3ePcS', 0),
(3, 'Miro', 'Mirić', 'mmiric@email.com', 'mmiric', '$2y$10$OsQF1u4aDWVqh8Cx.kNC4uAXwyLdn0IrMI01Ug6szWq4rFHzP8WRu', 0),
(4, 'Ana', 'Anić', 'aanic@email.com', 'aanic', '$2y$10$/I6mHyw8YtEoyttnBlgN4ueQbgJKpszMK2aOnkmd8rqE2.nwXobgC', 0),
(5, 'Ivan', 'Iviž', 'i@email.com', 'iiviz', '$2y$10$ttvCsXWJbraIEE89AJzJIeImwnRU4ZxZVND6HzrrK6Ux3VrfZxLIq', 0),
(7, 'Violeta', 'j', 'j@j.com', 'j', '$2y$10$S5pA9sTJWcAFMjUbkFXyMOgbPgRKc92A/mQkRkXWB1O6ZC8xeyYja', 0),
(8, 'Barbara', 'Sokić', 'bsokic@mail.mail', 'bsokic', '$2y$10$.MfX8IqOUDMraT31Tx6Jn.SF7mQn7uKb92JPCnk1znH40gNkjVLkG', 0),
(9, 'Lara', 'Savić', 'lsavic@lsavic.com', 'lsavic', '$2y$10$zGu4RZE88a3n1/JEk54nCe3E7CcZ5scuNquHTvQ8F51bJ9QNb53ZW', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vjezba`
--

CREATE TABLE `vjezba` (
  `id_vjezbe` int(11) NOT NULL,
  `id_korisnika` int(11) NOT NULL,
  `naziv_vjezbe` varchar(200) NOT NULL,
  `broj_serija` int(11) DEFAULT NULL,
  `broj_ponavljanja` int(11) DEFAULT NULL,
  `trajanje` varchar(50) DEFAULT NULL,
  `video_link` text,
  `opis` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vjezba`
--

INSERT INTO `vjezba` (`id_vjezbe`, `id_korisnika`, `naziv_vjezbe`, `broj_serija`, `broj_ponavljanja`, `trajanje`, `video_link`, `opis`) VALUES
(1, 2, 'Trčanje', NULL, NULL, '10 min', NULL, 'Trčanje 10 min'),
(2, 2, 'Trbušnjaci', 3, 15, NULL, NULL, '3 serija, 15 ponavljanja'),
(3, 3, 'Trčanje', 1, 1, '', '', 'dfdf'),
(5, 9, 'Orbitrek', 0, 0, '10 min', 'youtube.com', 'Minimalno 10 min orbitreka.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id_korisnika`),
  ADD UNIQUE KEY `korisnicko_ime` (`korisnicko_ime`);

--
-- Indexes for table `vjezba`
--
ALTER TABLE `vjezba`
  ADD PRIMARY KEY (`id_vjezbe`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id_korisnika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `vjezba`
--
ALTER TABLE `vjezba`
  MODIFY `id_vjezbe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
