-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2018 at 11:37 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(4, 'Ana', 'Anić', 'aanic@email.com', 'aanic', '$2y$10$/I6mHyw8YtEoyttnBlgN4ueQbgJKpszMK2aOnkmd8rqE2.nwXobgC', 100),
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
(1, 4, 'Iskorak', 3, 20, '', 'https://www.youtube.com/watch?v=FOgPhnW3TUA', 'U uspravnom stavu udah te uz izdah iskoračite jednom nogom naprijed. Spuštajte se dolje toliko da koljenom stražnje noge gotovo dotaknemo tlo. Leđa su cijelo vrijeme ravna.'),
(7, 4, 'Mrtvo dizanje (deadlift)', 3, 10, '', 'https://www.youtube.com/watch?v=g19O1SU-1kc', 'Ispravite noge i ispružite tijelo da bi podigli uteg sa poda do gornjeg dijela natkoljenica. Ostanite uspravno nekoliko trenutaka sa utegom preko gornjeg dijela natkoljenica i ispruženim rukama. Polako vratite uteg istim putem u suprotnom smjeru.'),
(9, 4, ' Čučanj', 3, 15, NULL, 'https://www.youtube.com/watch?v=t-XW-qY_RHk', 'Ispravljenih leđa i dignute brade savijajte koljena i lagano spuštajte kukove sve dok vam natkoljenice ne budu paralelne s podom. Kada dođete u donji položaj, potisnite šipku iz peta. Udahnite dok se spuštate, izdahnite dok se dižete.'),
(10, 4, 'Iskorak koso unatrag', 3, 20, NULL, 'https://www.youtube.com/watch?v=PpMVAcVc-WA', 'Iz početne pozicije radimo iskorak unatrag i koso, tako da nam se noge skroz prekriže. Spuštamo se u koljenima tako da nam koljeno stražnje noge dođe tik do poda. Leđa su cijelo vrijeme uspravna. Napredniji vježbači mogu ovu vježbu raditi s utezima, dok se za početnike preporuča izvođenje bez dodatnih težina.'),
(11, 4, 'Jednonožni bugarski čučanj', 3, 12, '', 'https://www.youtube.com/watch?v=u1Fr7Le8ZU0', 'Spustite se u čučanj toliko da stražnjom nogom dođete tik do podloge. Početnici mogu raditi vježbu bez dodatnih opterećenja, dok se naprednijim vježbačima preporuča izvođenje ove vježbe s utezima ili bučicama.');

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
  MODIFY `id_vjezbe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
