-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 24, 2017 at 11:13 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `notes`
--
CREATE DATABASE `notes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `notes`;

-- --------------------------------------------------------

--
-- Table structure for table `down`
--

CREATE TABLE IF NOT EXISTS `down` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(10000) NOT NULL,
  `filetype` text NOT NULL,
  `filesize` int(11) NOT NULL,
  `filedata` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `down`
--

INSERT INTO `down` (`id`, `file`, `filetype`, `filesize`, `filedata`) VALUES
(38, 'chemistry.pdf', 'application/pdf', 193, ''),
(39, '', '', 0, ''),
(40, 'exam.pptx', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 196, ''),
(41, 'Doc1.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 9, ''),
(42, 'dbms-II lab manual.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 4, ''),
(43, 'exam.pptx', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 196, ''),
(44, 'exam.pptx', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 196, ''),
(45, 'exam.pptx', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 196, ''),
(46, '', '', 0, ''),
(47, 'chemistry.pdf', '', 0, ''),
(48, 'chemistry.pdf', '', 0, ''),
(49, 'chemistry.pdf', 'application/pdf', 0, ''),
(50, 'chemistry.pdf', 'application/pdf', 1930, ''),
(51, 'maths 2.pdf', 'application/pdf', 243, ''),
(52, 'maths 2.pdf', 'application/pdf', 243, ''),
(53, 'chemistry.pdf', 'application/pdf', 193, ''),
(54, 'engineering drowning.pdf', 'application/pdf', 489, ''),
(55, 'engineering drowning.pdf', 'application/pdf', 489, ''),
(56, 'engineering drowning.pdf', 'application/pdf', 489, ''),
(57, 'beem.pdf', 'application/pdf', 581, ''),
(58, 'chemistry.pdf', 'application/pdf', 193, ''),
(59, '', 'application/pdf', 581, ''),
(60, 'beem.pdf', 'application/pdf', 581, ''),
(61, 'beem.pdf', 'application/pdf', 581, '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `contact` decimal(10,0) NOT NULL,
  `address` varchar(50) NOT NULL,
  `feedback` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `contact`, `address`, `feedback`) VALUES
(11, 'Gitika', '9878909665', 'Rajfamily', 'In a project field i want db connect codes.\r\nSo please upload db connection codes.');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `contact` decimal(10,0) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `file` text NOT NULL,
  `type` varchar(6) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pass_2` (`pass`),
  UNIQUE KEY `email` (`email`),
  KEY `pass` (`pass`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `contact`, `email`, `pass`, `file`, `type`) VALUES
(7, '', '0', 'admin@g.c', 'admin', '', 'admin'),
(21, 'lal', '9878987898', 'l@b.c', 'ap8080', '', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `paper`
--

CREATE TABLE IF NOT EXISTS `paper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` date NOT NULL,
  `sem` varchar(6) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `filetype` varchar(100) NOT NULL,
  `filesize` int(100) NOT NULL,
  `filedata` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `paper`
--

INSERT INTO `paper` (`id`, `year`, `sem`, `subject`, `filename`, `filetype`, `filesize`, `filedata`) VALUES
(49, '2017-05-24', '6th', 'DWPD', 'DWpd notes 1.pdf', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` date NOT NULL,
  `project` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `filetype` varchar(200) NOT NULL,
  `filesize` int(20) NOT NULL,
  `filedata` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `year`, `project`, `filename`, `filetype`, `filesize`, `filedata`) VALUES
(12, '2017-05-24', 'PPT ', 'NotesHub.pptx', '', 0, ''),
(13, '2017-05-24', 'Project for study material', 'study material.zip', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `qpapers`
--

CREATE TABLE IF NOT EXISTS `qpapers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` text NOT NULL,
  `sem` int(11) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `filetype` varchar(200) NOT NULL,
  `filesize` int(11) NOT NULL,
  `filedata` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `qpapers`
--

INSERT INTO `qpapers` (`id`, `year`, `sem`, `sub`, `filename`, `filetype`, `filesize`, `filedata`) VALUES
(12, '2013 DEC-JAN', 1, 'CS-1', 'communication 1.pdf', '', 0, ''),
(13, '2013 MAY-JUN', 1, 'MATHS-1', 'maths1.pdf', '', 0, ''),
(14, '2013', 2, 'BEEM', 'beem.pdf', '', 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
