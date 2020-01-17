-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 24, 2017 at 11:15 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dps_world`
--
CREATE DATABASE `dps_world` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dps_world`;

-- --------------------------------------------------------

--
-- Table structure for table `achivement`
--

CREATE TABLE IF NOT EXISTS `achivement` (
  `achivement_id` int(11) NOT NULL AUTO_INCREMENT,
  `achivement_content` text,
  `select_achivement_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`achivement_id`),
  KEY `achivement_ibfk_1` (`select_achivement_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `achivement`
--

INSERT INTO `achivement` (`achivement_id`, `achivement_content`, `select_achivement_id`) VALUES
(2, 'ghn', 9);

-- --------------------------------------------------------

--
-- Table structure for table `achivement_category`
--

CREATE TABLE IF NOT EXISTS `achivement_category` (
  `achivement_cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `achivement_title` text,
  PRIMARY KEY (`achivement_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `achivement_category`
--

INSERT INTO `achivement_category` (`achivement_cat_id`, `achivement_title`) VALUES
(7, 'Academic'),
(8, 'Sports'),
(9, 'Music & Dance'),
(10, 'Art & Craft');

-- --------------------------------------------------------

--
-- Table structure for table `active_account`
--

CREATE TABLE IF NOT EXISTS `active_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` text,
  `user_email` text,
  `active_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admission_form`
--

CREATE TABLE IF NOT EXISTS `admission_form` (
  `admission_frm_id` int(11) NOT NULL AUTO_INCREMENT,
  `admission_frm_title` text,
  `admission_frm_ext` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`admission_frm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admission_form`
--

INSERT INTO `admission_form` (`admission_frm_id`, `admission_frm_title`, `admission_frm_ext`) VALUES
(2, 'dsfbxcbxdbvbvcn', 'jpg');

-- --------------------------------------------------------

--
-- Table structure for table `committee_members`
--

CREATE TABLE IF NOT EXISTS `committee_members` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_name` text NOT NULL,
  `member_position` text NOT NULL,
  `member_contact` text NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `committee_members`
--

INSERT INTO `committee_members` (`member_id`, `member_name`, `member_position`, `member_contact`) VALUES
(2, 'prateek chandrakar 2', 'Computer Teacher 5', '09879989898 u');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `download_title` text,
  `download_ext` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`download_id`, `download_title`, `download_ext`) VALUES
(1, 'testing document', 'jpg'),
(2, 'new document', 'jpg');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` text,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_title`) VALUES
(4, 'Teachers Day Celebration'),
(5, 'Annual Day Celebration'),
(7, '15th aug Celebration'),
(11, 'Dance Compition in DPS World Compition in DPS World');

-- --------------------------------------------------------

--
-- Table structure for table `event_image`
--

CREATE TABLE IF NOT EXISTS `event_image` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `img_ext` varchar(5) DEFAULT NULL,
  `select_event_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`img_id`),
  KEY `event_image_ibfk_1` (`select_event_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `event_image`
--

INSERT INTO `event_image` (`img_id`, `img_ext`, `select_event_id`) VALUES
(3, 'jpg', 4),
(4, 'jpg', 4),
(5, 'jpg', 4),
(6, 'jpg', 4),
(7, 'jpg', 4),
(8, 'jpg', 5),
(9, 'jpg', 5),
(10, 'jpg', 5),
(11, 'jpg', 5),
(12, 'jpg', 5),
(13, 'jpg', 5),
(14, 'jpg', 7),
(15, 'jpg', 7),
(16, 'jpg', 7),
(17, 'jpg', 7),
(18, 'jpg', 11),
(19, 'jpg', 11),
(20, 'jpg', 11),
(21, 'jpg', 11),
(22, 'jpg', 11),
(23, 'jpg', 11);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_album`
--

CREATE TABLE IF NOT EXISTS `gallery_album` (
  `gal_album_id` int(11) NOT NULL AUTO_INCREMENT,
  `gal_album_name` text,
  PRIMARY KEY (`gal_album_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `gallery_album`
--

INSERT INTO `gallery_album` (`gal_album_id`, `gal_album_name`) VALUES
(3, 'testinmgb file'),
(5, 'Frasher Party'),
(8, 'testinmgb file nnnn');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_image`
--

CREATE TABLE IF NOT EXISTS `gallery_image` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `img_ext` varchar(5) DEFAULT NULL,
  `select_album` int(11) DEFAULT NULL,
  PRIMARY KEY (`img_id`),
  KEY `gallery_image_ibfk_1` (`select_album`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `gallery_image`
--

INSERT INTO `gallery_image` (`img_id`, `img_ext`, `select_album`) VALUES
(2, 'jpg', 3),
(3, 'jpg', 3),
(4, 'png', 8),
(5, 'jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `news_and_updates`
--

CREATE TABLE IF NOT EXISTS `news_and_updates` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` text,
  `news_date` date DEFAULT NULL,
  `news_Descp` text,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `news_and_updates`
--

INSERT INTO `news_and_updates` (`news_id`, `news_title`, `news_date`, `news_Descp`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim...', '2016-08-01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim...Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim...Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim...Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim...'),
(2, 'Annual day celebrations at Delhi Public School', '2016-08-11', 'Annual day celebrations at Delhi Public School Annual day celebrations at Delhi Public School Annual day celebrations at Delhi Public School Annual day celebrations at Delhi Public School'),
(3, 'Lorem ipsum dolor sit amet, ', '2016-08-18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim...Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim...Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim...'),
(4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim...', '2016-08-11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim...Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim...Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim...Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim...Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim...Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim...Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim...'),
(5, 'Lorem ipsum', '2016-08-13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim...Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim...');

-- --------------------------------------------------------

--
-- Table structure for table `prospectus`
--

CREATE TABLE IF NOT EXISTS `prospectus` (
  `prospectus_id` int(11) NOT NULL AUTO_INCREMENT,
  `prospectus_title` text,
  `prospectus_ext` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`prospectus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `prospectus`
--

INSERT INTO `prospectus` (`prospectus_id`, `prospectus_title`, `prospectus_ext`) VALUES
(1, 'testing One', 'jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_ext` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ext`) VALUES
(2, 'jpg');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_name` text,
  `staff_desc` text,
  `staff_img_ext` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `staff_desc`, `staff_img_ext`) VALUES
(8, 'prateek chandrakar', 'nsdjgvnjn', 'png');

-- --------------------------------------------------------

--
-- Table structure for table `tc_issued`
--

CREATE TABLE IF NOT EXISTS `tc_issued` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_name` text NOT NULL,
  `father_name` text NOT NULL,
  `mother_name` text NOT NULL,
  `d_o_b` text NOT NULL,
  `admission_no` text NOT NULL,
  `class_lft` text NOT NULL,
  `tc_no` text NOT NULL,
  `tc_date` text NOT NULL,
  `remark` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tc_issued`
--

INSERT INTO `tc_issued` (`id`, `stud_name`, `father_name`, `mother_name`, `d_o_b`, `admission_no`, `class_lft`, `tc_no`, `tc_date`, `remark`) VALUES
(2, 'u', 'u', 'u', 'u', 'u', 'u', 'u', 'u', 'uhppjnj');

-- --------------------------------------------------------

--
-- Table structure for table `user_infromation`
--

CREATE TABLE IF NOT EXISTS `user_infromation` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` text,
  `user_pass` text,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_infromation`
--

INSERT INTO `user_infromation` (`user_id`, `user_name`, `user_pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `video_title` text,
  `video_url` text,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`video_id`, `video_title`, `video_url`) VALUES
(4, 'Delhi Public School', '<iframe width="560" height="315" src="https://www.youtube.com/embed/cYYJ7IlModw" frameborder="0" allowfullscreen></iframe>'),
(5, 'Delhi Public School : A Short Film', '<iframe width="560" height="315" src="https://www.youtube.com/embed/ikXAGPh6qNA" frameborder="0" allowfullscreen></iframe>'),
(6, 'Teachers Day Celebration 2015', '<iframe width="560" height="315" src="https://www.youtube.com/embed/Us9thcswdNk" frameborder="0" allowfullscreen></iframe>'),
(7, 'DPS ANNUAL DAY CELEBRATION', '<iframe width="560" height="315" src="https://www.youtube.com/embed/EToe_ZTnNEs" frameborder="0" allowfullscreen></iframe>'),
(8, 'Annual day celebrations at Delhi Public School ', '<iframe width="420" height="315" src="https://www.youtube.com/embed/WWF4L9RjbAs" frameborder="0" allowfullscreen></iframe>');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `achivement`
--
ALTER TABLE `achivement`
  ADD CONSTRAINT `achivement_ibfk_1` FOREIGN KEY (`select_achivement_id`) REFERENCES `achivement_category` (`achivement_cat_id`) ON DELETE CASCADE;

--
-- Constraints for table `event_image`
--
ALTER TABLE `event_image`
  ADD CONSTRAINT `event_image_ibfk_1` FOREIGN KEY (`select_event_id`) REFERENCES `event` (`event_id`) ON DELETE CASCADE;

--
-- Constraints for table `gallery_image`
--
ALTER TABLE `gallery_image`
  ADD CONSTRAINT `gallery_image_ibfk_1` FOREIGN KEY (`select_album`) REFERENCES `gallery_album` (`gal_album_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
