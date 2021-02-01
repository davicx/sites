-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2016 at 10:58 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shareshare`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_from` varchar(255) NOT NULL,
  `comment_to` varchar(255) NOT NULL,
  `likes` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `comment`, `comment_from`, `comment_to`, `likes`, `updated`, `created`) VALUES
(2, 150, 'Ok this is so cool! ', 'vasquezb', '0', 0, '2015-10-21 02:54:32', '0000-00-00 00:00:00'),
(54, 196, 'Home is behind, the world ahead, and there are many paths to tread through shadows to the edge of night, until the stars are all alight', 'vasquezd', '', 0, '2015-09-06 20:52:43', '0000-00-00 00:00:00'),
(56, 150, 'Check this out\n!', 'vasquezd', '', 0, '2015-10-20 03:13:35', '0000-00-00 00:00:00'),
(57, 150, 'Ya I think so too!!\n', 'vasquezd', '', 0, '2015-10-21 02:55:32', '0000-00-00 00:00:00'),
(63, 150, 'This comment has not been seen!\n', 'vasquezm', '', 0, '2015-10-23 03:23:29', '0000-00-00 00:00:00'),
(64, 149, 'and this one too!\n', 'vasquezm', '', 0, '2015-10-23 03:23:51', '0000-00-00 00:00:00'),
(65, 144, 'So cool!\n', 'vasquezm', '', 0, '2015-10-23 03:24:03', '0000-00-00 00:00:00'),
(66, 158, 'new comment! \n', 'vasquezd', '', 0, '2015-10-24 20:30:49', '0000-00-00 00:00:00'),
(67, 150, 'NEW!\n', 'vasquezm', '', 0, '2015-10-24 20:33:04', '0000-00-00 00:00:00'),
(68, 158, 'NEW 2\n', 'vasquezd', '', 0, '2015-10-24 20:56:44', '0000-00-00 00:00:00'),
(69, 150, 'Made today a new comment!\n', 'vasquezm', '', 0, '2015-10-27 02:44:23', '0000-00-00 00:00:00'),
(70, 248, 'I really like this picture! \n', 'vasquezb', '', 0, '2015-11-02 02:20:43', '0000-00-00 00:00:00'),
(71, 254, 'I found this new band and really like them!\n', 'vasquezd', '', 0, '2015-11-02 02:43:12', '0000-00-00 00:00:00'),
(72, 267, 'Hi David this is from david will it work! \n', 'vasquezb', '', 0, '2015-11-02 03:35:56', '0000-00-00 00:00:00'),
(73, 267, 'Ya it is cool!\n', 'vasquezd', '', 0, '2015-11-02 03:39:21', '0000-00-00 00:00:00'),
(74, 158, 'Hi! This is a new comment made in November\n', 'vasquezd', '', 0, '2015-11-09 02:18:20', '0000-00-00 00:00:00'),
(75, 158, 'Hi! This is a new comment made in November\n\n', 'vasquezd', '', 0, '2015-11-09 02:18:23', '0000-00-00 00:00:00'),
(76, 290, 'wow soo coolio!\n', 'vasquezd', '', 0, '2015-11-09 03:33:49', '0000-00-00 00:00:00'),
(77, 304, 'Oh I really like that! \n', 'vasquezm', '', 0, '2015-11-12 02:28:31', '0000-00-00 00:00:00'),
(78, 380, 'hie new comment\n', 'vasquezd', '', 0, '2016-02-11 04:39:30', '2016-02-11 04:39:30'),
(79, 380, 'Hello this is my new comment! ', 'Vasquezd', '', 0, '2016-02-13 22:05:53', '2016-02-13 22:05:53'),
(80, 380, 'Hello this is my new comment! ', 'Vasquezd', '', 0, '2016-02-13 22:06:01', '2016-02-13 22:06:01'),
(81, 380, 'hi', 'Vasquezd', '', 0, '2016-02-13 23:13:51', '2016-02-13 23:13:51'),
(82, 380, 'hi', 'Vasquezd', '', 0, '2016-02-13 23:13:54', '2016-02-13 23:13:54'),
(83, 380, 'hi', 'Vasquezd', '', 0, '2016-02-13 23:13:55', '2016-02-13 23:13:55'),
(84, 380, 'hi', 'Vasquezd', '', 0, '2016-02-13 23:13:58', '2016-02-13 23:13:58'),
(85, 380, 'hi', 'Vasquezd', '', 0, '2016-02-13 23:13:59', '2016-02-13 23:13:59'),
(86, 380, 'hello david', 'Vasquezd', '', 0, '2016-02-13 23:15:06', '2016-02-13 23:15:06'),
(87, 380, 'hi', 'Vasquezd', '', 0, '2016-02-13 23:15:39', '2016-02-13 23:15:39'),
(88, 379, 'hi', 'Vasquezd', '', 0, '2016-02-13 23:17:14', '2016-02-13 23:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `comment_likes`
--

CREATE TABLE IF NOT EXISTS `comment_likes` (
  `comment_like_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `liked_by` int(11) NOT NULL,
  `liked_by_name` varchar(255) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_like_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `square_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `is_folder` int(11) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_name_server` varchar(255) NOT NULL,
  `file_path_server` varchar(255) NOT NULL,
  `file_image` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `file_status` int(11) NOT NULL,
  `file_seen` int(11) NOT NULL,
  `recycle_status` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `file_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_last_modified` timestamp NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=133 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `square_id`, `post_id`, `parent`, `is_folder`, `folder_name`, `file_name`, `file_type`, `file_name_server`, `file_path_server`, `file_image`, `file_path`, `user_id`, `user_name`, `file_status`, `file_seen`, `recycle_status`, `unique_id`, `file_created`, `file_last_modified`) VALUES
(38, 0, 0, 0, 1, 'davey', 'folder.png', '', 'folder.png', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads/folder.png', 'folder.png', '---------32-', 1, 'vasquezd', 1, 0, 0, '1447302058720', '2015-11-12 04:20:58', '0000-00-00 00:00:00'),
(39, 0, 0, 38, 1, 'davey to', 'folder.png', '', 'folder.png', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads/folder.png', 'folder.png', '--------32-38-', 1, 'vasquezd', 1, 0, 0, '1447302068576', '2015-11-12 04:21:08', '0000-00-00 00:00:00'),
(41, 0, 0, 0, 1, 'new davey', 'folder.png', '', 'folder.png', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads/folder.png', 'folder.png', '---------0-', 1, 'vasquezd', 1, 0, 0, '1447302188182', '2015-11-12 04:23:08', '0000-00-00 00:00:00'),
(93, 0, 338, 0, 0, '', 'Koala.jpg', '', '1450133029Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1450133023', 1, 0, 0, '', '2015-12-14 22:43:49', '0000-00-00 00:00:00'),
(94, 0, 338, 0, 0, '', 'Koala.jpg', '', '1450133041Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1450133023', 1, 0, 0, '', '2015-12-14 22:44:01', '0000-00-00 00:00:00'),
(95, 0, 339, 0, 0, '', 'Penguins.jpg', '', '1450133050Penguins.jpg', '', '', '', 0, 'vasquezdvasquezd1450133041', 1, 0, 0, '', '2015-12-14 22:44:10', '0000-00-00 00:00:00'),
(96, 0, 339, 0, 0, '', 'Penguins.jpg', '', '1450133138Penguins.jpg', '', '', '', 0, 'vasquezdvasquezd1450133041', 1, 0, 0, '', '2015-12-14 22:45:38', '0000-00-00 00:00:00'),
(97, 0, 340, 0, 0, '', 'Hydrangeas.jpg', '', '1450133146Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1450133138', 1, 0, 0, '', '2015-12-14 22:45:46', '0000-00-00 00:00:00'),
(98, 0, 340, 0, 0, '', 'Hydrangeas.jpg', '', '1450133185Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1450133138', 1, 0, 0, '', '2015-12-14 22:46:25', '0000-00-00 00:00:00'),
(99, 0, 340, 0, 0, '', 'Hydrangeas.jpg', '', '1450133200Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1450133138', 1, 0, 0, '', '2015-12-14 22:46:40', '0000-00-00 00:00:00'),
(100, 0, 340, 0, 0, '', 'Hydrangeas.jpg', '', '1450133265Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1450133138', 1, 0, 0, '', '2015-12-14 22:47:45', '0000-00-00 00:00:00'),
(101, 0, 340, 0, 0, '', 'Hydrangeas.jpg', '', '1450133323Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1450133138', 1, 0, 0, '', '2015-12-14 22:48:43', '0000-00-00 00:00:00'),
(102, 0, 340, 0, 0, '', 'Hydrangeas.jpg', '', '1450133412Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1450133138', 1, 0, 0, '', '2015-12-14 22:50:12', '0000-00-00 00:00:00'),
(103, 0, 341, 0, 0, '', 'Penguins.jpg', '', '1450133493Penguins.jpg', '', '', '', 0, 'vasquezdvasquezd1450133477', 1, 0, 0, '', '2015-12-14 22:51:33', '0000-00-00 00:00:00'),
(104, 0, 341, 0, 0, '', 'Penguins.jpg', '', '1450133664Penguins.jpg', '', '', '', 0, 'vasquezdvasquezd1450133477', 1, 0, 0, '', '2015-12-14 22:54:24', '0000-00-00 00:00:00'),
(105, 0, 342, 0, 0, '', 'Koala.jpg', '', '1450133682Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1450133665', 1, 0, 0, '', '2015-12-14 22:54:42', '0000-00-00 00:00:00'),
(106, 0, 342, 0, 0, '', 'Koala.jpg', '', '1450133883Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1450133665', 1, 0, 0, '', '2015-12-14 22:58:03', '0000-00-00 00:00:00'),
(107, 0, 344, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1450134051', 1, 0, 0, '', '2015-12-14 23:01:14', '0000-00-00 00:00:00'),
(108, 0, 344, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1450134051', 1, 0, 0, '', '2015-12-14 23:04:28', '0000-00-00 00:00:00'),
(109, 0, 344, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1450134051', 1, 0, 0, '', '2015-12-14 23:04:52', '0000-00-00 00:00:00'),
(110, 0, 344, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1450134051', 1, 0, 0, '', '2015-12-14 23:05:04', '0000-00-00 00:00:00'),
(111, 0, 344, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1450134051', 1, 0, 0, '', '2015-12-14 23:06:36', '0000-00-00 00:00:00'),
(112, 0, 344, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1450134051', 1, 0, 0, '', '2015-12-14 23:06:48', '0000-00-00 00:00:00'),
(113, 0, 349, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1450135366', 1, 0, 0, '', '2015-12-14 23:22:51', '0000-00-00 00:00:00'),
(114, 0, 350, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1450135491', 1, 0, 0, '', '2015-12-14 23:24:57', '0000-00-00 00:00:00'),
(115, 0, 350, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1450135491', 1, 0, 0, '', '2015-12-14 23:26:12', '0000-00-00 00:00:00'),
(116, 0, 353, 0, 0, '', 'Koala.jpg', '', '1450150963Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1450150917', 1, 0, 0, '', '2015-12-15 03:42:43', '0000-00-00 00:00:00'),
(117, 0, 355, 0, 0, '', 'galadriel.jpg', '', '1451857854galadriel.jpg', '', '', '', 0, 'vasquezdvasquezm1451857609', 1, 0, 0, '', '2016-01-03 21:50:54', '0000-00-00 00:00:00'),
(118, 0, 359, 0, 0, '', '10.jpg', '', '145186303710.jpg', '', '', '', 0, 'vasquezdvasquezd1451863028', 1, 0, 0, '', '2016-01-03 23:17:17', '0000-00-00 00:00:00'),
(119, 0, 359, 0, 0, '', '10.jpg', '', '145186325510.jpg', '', '', '', 0, 'vasquezdvasquezd1451863028', 1, 0, 0, '', '2016-01-03 23:20:55', '0000-00-00 00:00:00'),
(120, 0, 360, 0, 0, '', '1450242443david_1.jpg', '', '14518632651450242443david_1.jpg', '', '', '', 0, 'vasquezdvasquezd1451863255', 1, 0, 0, '', '2016-01-03 23:21:05', '0000-00-00 00:00:00'),
(121, 0, 360, 0, 0, '', '1450242443david_1.jpg', '', '14518634321450242443david_1.jpg', '', '', '', 0, 'vasquezdvasquezd1451863255', 1, 0, 0, '', '2016-01-03 23:23:52', '0000-00-00 00:00:00'),
(122, 0, 360, 0, 0, '', '1450242443david_1.jpg', '', '14518635941450242443david_1.jpg', '', '', '', 0, 'vasquezdvasquezd1451863255', 1, 0, 0, '', '2016-01-03 23:26:34', '0000-00-00 00:00:00'),
(123, 0, 381, 0, 0, '', '10.jpg', '', '145549052110.jpg', '', '', '', 0, 'vasquezdvasquezd1455490494', 1, 0, 0, '', '2016-02-14 22:55:21', '0000-00-00 00:00:00'),
(124, 0, 381, 0, 0, '', '10.jpg', '', '145549083910.jpg', '', '', '', 0, 'vasquezdvasquezd1455490494', 1, 0, 0, '', '2016-02-14 23:00:39', '0000-00-00 00:00:00'),
(125, 0, 381, 0, 0, '', '10.jpg', '', '145549088710.jpg', '', '', '', 0, 'vasquezdvasquezd1455490494', 1, 0, 0, '', '2016-02-14 23:01:27', '0000-00-00 00:00:00'),
(126, 0, 381, 0, 0, '', '10.jpg', '', '145549153910.jpg', '', '', '', 0, 'vasquezdvasquezd1455490494', 1, 0, 0, '', '2016-02-14 23:12:19', '0000-00-00 00:00:00'),
(127, 0, 381, 0, 0, '', '10.jpg', '', '145549166410.jpg', '', '', '', 0, 'vasquezdvasquezd1455490494', 1, 0, 0, '', '2016-02-14 23:14:24', '0000-00-00 00:00:00'),
(128, 0, 381, 0, 0, '', '10.jpg', '', '145549173510.jpg', '', '', '', 0, 'vasquezdvasquezd1455490494', 1, 0, 0, '', '2016-02-14 23:15:35', '0000-00-00 00:00:00'),
(129, 0, 381, 0, 0, '', '10.jpg', '', '145549178210.jpg', '', '', '', 0, 'vasquezdvasquezd1455490494', 1, 0, 0, '', '2016-02-14 23:16:22', '0000-00-00 00:00:00'),
(130, 48, 0, 0, 1, 'David', 'folder.png', '', 'folder.png', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads/folder.png', 'folder.png', '---------0-', 1, 'vasquezd', 1, 0, 0, '1456456445041', '2016-02-26 03:14:06', '0000-00-00 00:00:00'),
(131, 0, 0, 0, 0, 'file_', 'article.PNG', 'PNG', '1456457395article.PNG', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads/', '1456457395article.PNG', '---------0-', 0, 'vasquezd', 1, 0, 0, '', '2016-02-26 03:29:56', '2016-02-26 03:29:56'),
(132, 0, 0, 0, 0, 'file_', 'video.PNG', 'PNG', '1456457397video.PNG', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads/', '1456457397video.PNG', '---------0-', 0, 'vasquezd', 1, 0, 0, '', '2016-02-26 03:29:58', '2016-02-26 03:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE IF NOT EXISTS `folders` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `square_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `folder_name_long` varchar(255) NOT NULL,
  `folder_name_system` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `folder_root` varchar(255) NOT NULL,
  `folder_path` text NOT NULL,
  `folder_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `folder_last_modified` timestamp NOT NULL,
  `folder_location` varchar(255) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`file_id`, `square_id`, `user_id`, `user_name`, `folder_name_long`, `folder_name_system`, `image_name`, `folder_root`, `folder_path`, `folder_created`, `folder_last_modified`, `folder_location`, `folder_name`) VALUES
(46, 0, 0, 'shared4', '', '', '', '', '', '2016-01-29 04:40:19', '0000-00-00 00:00:00', '', 'shared4'),
(47, 0, 0, 'shared5', '', '', '', '', '', '2016-01-29 04:45:46', '0000-00-00 00:00:00', '', 'shared5'),
(48, 0, 0, 'shared6', '', '', '', '', '', '2016-01-29 04:46:43', '0000-00-00 00:00:00', '', 'shared6'),
(49, 0, 0, 'shared8', '', '', '', '', '', '2016-01-29 04:50:23', '0000-00-00 00:00:00', '', 'shared8'),
(50, 0, 0, 'shared', '', '', '', '', '', '2016-01-29 04:55:02', '0000-00-00 00:00:00', '', 'shared'),
(51, 0, 0, 'shared3', '', '', '', '', '', '2016-01-29 04:56:20', '0000-00-00 00:00:00', '', 'shared3'),
(52, 0, 0, 'shared4', '', '', '', '', '', '2016-01-29 04:57:13', '0000-00-00 00:00:00', '', 'shared4'),
(53, 0, 0, 'shared5', '', '', '', '', '', '2016-01-29 04:57:48', '0000-00-00 00:00:00', '', 'shared5'),
(54, 0, 0, 'shared7', '', '', '', '', '', '2016-01-29 05:01:07', '0000-00-00 00:00:00', '', 'shared7'),
(55, 0, 0, 'shared5ss', '', '', '', '', '', '2016-01-29 05:02:48', '0000-00-00 00:00:00', '', 'shared5ss'),
(56, 0, 0, 'shared', '', '', '', '', '', '2016-01-29 05:11:38', '0000-00-00 00:00:00', '', 'shared'),
(57, 0, 0, 'shared2', '', '', '', '', '', '2016-01-29 05:13:50', '0000-00-00 00:00:00', '', 'shared2'),
(58, 0, 0, 'vasquezd', '', '', '', '', '', '2016-01-29 22:50:44', '0000-00-00 00:00:00', '', 'vasquezd'),
(59, 0, 0, 'vasquezd', '', '', '', '', '', '2016-01-29 22:51:50', '0000-00-00 00:00:00', '', 'vasquezd'),
(60, 0, 0, 'vasquezd2', '', '', '', '', '', '2016-01-29 22:55:22', '0000-00-00 00:00:00', '', 'vasquezd2'),
(61, 0, 0, 'vasquezd5', '', '', '', '', '', '2016-01-29 22:56:43', '0000-00-00 00:00:00', '', 'vasquezd5'),
(62, 0, 0, 'mrtester', '', '', '', '', '', '2016-01-29 23:14:29', '0000-00-00 00:00:00', '', 'mrtester'),
(63, 0, 0, 'mrtestertoyou', '', '', '', '', '', '2016-01-29 23:15:19', '0000-00-00 00:00:00', '', 'mrtestertoyou'),
(64, 0, 0, 'test1', '', '', '', '', '', '2016-01-29 23:19:44', '0000-00-00 00:00:00', '', 'test1'),
(65, 0, 0, 'root', '', '', '', '', '', '2016-01-29 23:29:09', '0000-00-00 00:00:00', '', 'root'),
(66, 0, 0, 'root', '', '', '', '', '', '2016-01-29 23:32:43', '0000-00-00 00:00:00', '', 'root'),
(67, 0, 0, 'test1', '', '', '', '', '', '2016-01-29 23:34:20', '0000-00-00 00:00:00', '', 'test1'),
(68, 0, 0, 'testtwo', '', '', '', '', '', '2016-01-29 23:36:37', '0000-00-00 00:00:00', '', 'testtwo'),
(69, 0, 0, 'testthree', '', '', '', '', '', '2016-01-29 23:38:05', '0000-00-00 00:00:00', '', 'testthree'),
(70, 0, 0, 'vasqueznew', '', '', '', '', '', '2016-01-30 22:32:35', '0000-00-00 00:00:00', '', 'vasqueznew'),
(71, 0, 0, 'testone', '', '', '', '', '', '2016-01-30 22:40:44', '0000-00-00 00:00:00', '', 'testone');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `friends_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_user_name` varchar(255) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `friend_key` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`friends_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friends_id`, `user_name`, `user_id`, `friend_user_name`, `friend_id`, `friend_key`, `created`) VALUES
(7, 'vasquezm', 2, 'vasquezk', 4, 0, '2015-05-04 23:47:23'),
(8, 'vasquezk', 4, 'vasquezm', 2, 0, '2015-05-04 23:47:23'),
(9, 'vasquezm', 2, 'vasquezb', 3, 0, '2015-05-04 23:47:23'),
(10, 'vasquezb', 3, 'vasquezm', 2, 0, '2015-05-04 23:47:23'),
(15, 'vasquezd', 1, 'vasquezb', 3, 0, '2015-10-23 03:22:40'),
(16, 'vasquezb', 3, 'vasquezd', 1, 0, '2015-10-23 03:22:40'),
(19, 'vasquezd', 1, 'vasquezm', 2, 0, '2015-11-10 03:47:18'),
(20, 'vasquezm', 2, 'vasquezd', 1, 0, '2015-11-10 03:47:18'),
(23, 'baggins2', 37, 'vasquezd', 1, 0, '2015-12-18 22:52:22'),
(24, 'vasquezd', 1, 'baggins2', 37, 0, '2015-12-18 22:52:22'),
(25, 'frodobaggins', 38, 'vasquezd', 1, 0, '2015-12-18 23:09:33'),
(26, 'vasquezd', 1, 'frodobaggins', 38, 0, '2015-12-18 23:09:34'),
(43, 'testone', 70, 'vasquezd', 1, 701, '2016-01-30 22:40:44'),
(44, 'vasquezd', 1, 'testone', 70, 170, '2016-01-30 22:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `folder_name` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL,
  `is_folder` int(11) NOT NULL,
  `link_url` varchar(2083) NOT NULL,
  `link_title` text NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `link_from` varchar(255) NOT NULL,
  `link_image` varchar(255) NOT NULL,
  `link_favicon` varchar(255) NOT NULL,
  `link_type` varchar(255) NOT NULL,
  `caption` text NOT NULL,
  `tag_id` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `link_status` int(11) NOT NULL,
  `recycle_status` int(11) NOT NULL,
  `square_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=171 ;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`link_id`, `folder_name`, `parent`, `is_folder`, `link_url`, `link_title`, `user_name`, `link_from`, `link_image`, `link_favicon`, `link_type`, `caption`, `tag_id`, `likes`, `unique_id`, `link_status`, `recycle_status`, `square_id`, `created`, `updated`) VALUES
(1, 'UViC- Oceanography', 0, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '5566922844c9c', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(2, '', 14, 0, 'http://www.colingoldblatt.net/researchgroup', 'Research Group - Colin Goldblatt', 'vasquezd', '', 'colingoldblatt.png', 'colingoldblatt.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(3, '', 14, 0, 'http://baumlab.weebly.com/team.html', 'Team - The Baum Lab @ UVic', 'vasquezd', '', 'weebly.png', 'weebly.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(4, 'UVIC- Oceanography III', 0, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '5566922927064', 0, 1, 0, '2015-09-03 03:51:47', '2015-09-03 03:51:47'),
(5, '', 14, 0, 'http://mmi.oregonstate.edu/people', 'People | Oregon State University Marine Mammal Institute', 'vasquezd', '', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(6, 'May', 1, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '5566922966436', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(7, '', 4, 0, 'http://housing.uvic.ca/ads/index.php?a=5&b=185', 'Student Listings', 'vasquezd', '', 'uvic.png', 'uvic.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(8, '', 65, 0, 'https://github.com/explore', 'Explore Â· GitHub', 'vasquezd', '', 'github.png', 'github.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 04:39:48', '0000-00-00 00:00:00'),
(9, '', 65, 0, 'https://anil3a.wordpress.com/2011/08/26/resetting-adobe-cs5-suite-trial-period-by-yourself/', 'Adobe', 'vasquezd', '', 'wordpress.png', 'wordpress.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 04:40:37', '0000-00-00 00:00:00'),
(10, '', 11, 0, 'http://famguardian.org/subjects/Politics/Articles/Liberals.htm', '60 Hard Truths About &quot;Liberals&quot;', 'vasquezd', '', 'famguardian.png', 'famguardian.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(11, '', 13, 0, 'http://www.theatlantic.com/business/archive/2014/06/a-dangerous-question-does-internet-advertising-work-at-all/372704/', 'A Dangerous Question: Does Internet Advertising Work at All? - The Atlantic', 'vasquezd', '', 'theatlantic.png', 'theatlantic.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(14, 'Shared With Me', 0, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '5566922ec88a2', 1, 0, 0, '2015-09-03 03:51:30', '2015-09-03 03:49:48'),
(18, '', 6, 0, 'http://fusedmachines.com/', 'Fused Machines', 'vasquezd', '', 'fusedmachines.png', 'fusedmachines.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(20, '', 6, 0, 'http://www.theignorantfishermen.com/2009/06/few-quotes-from-george-washington.html', 'The Ignorant Fishermen Blog: Christian Quotes from President George Washington', 'vasquezd', '', 'theignorantfishermen.png', 'theignorantfishermen.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(21, '', 13, 0, 'http://www.codemiles.com/finished-projects/java-chess-t618.html', 'Java Chess Projects Codes', 'vasquezd', '', 'codemiles.png', 'codemiles.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(23, '', 16, 0, 'http://ceoas.oregonstate.edu/profile/fisk/', 'Directory of People | College of Earth, Ocean, and Atmospheric Sciences | Oregon State University', 'vasquezd', '', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(24, '', 1, 0, 'http://oregonstate.edu/ua/ncs/archives/2006/mar/study-martian-meteorite-reveals-markings-similar-bacteria-etched-rocks-earth', 'title not found', 'vasquezd', '', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(25, 'Biology', 1, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '556692335b081', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(26, '', 14, 0, 'https://developer.mozilla.org/en-US/Add-ons/SDK', 'Mozilla ', 'vasquezd', '', 'mozilla.png', 'mozilla.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(27, '', 25, 0, 'http://spph.ubc.ca/programs-and-students/graduate-degree-programs/phd/program-details/', 'Program Details | School of Population and Public Health (SPPH)', 'vasquezd', '', 'spph.png', 'spph.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(28, '', 25, 0, 'http://blakemasters.com/peter-thiels-cs183-startup', 'Notes Essaysâ€”Peter Thiel&#8217;s CS183: Startupâ€”Stanford, Spring 2012', 'vasquezd', '', 'blakemasters.png', 'blakemasters.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(29, '', 25, 0, 'http://ceoas.oregonstate.edu/mrm/industry/', 'Marine Industry | Marine Resource Management | College of Earth, Ocean, and Atmospheric Sciences | Oregon State University', 'vasquezd', '', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(54, 'Wall Posts', 1, 0, 'https://www.yahoo.com/', 'Yahoo', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(55, 'Wall Posts', 61, 0, 'http://digg.com/', 'Digg - What the Internet is talking about right now', 'vasquezd', 'vasquezd', 'digg.png', 'digg.png', 'shared', '', 0, 0, '', 1, 0, 0, '2016-01-03 22:46:56', '0000-00-00 00:00:00'),
(56, 'Wall Posts', 63, 0, 'https://www.youtube.com/watch?v=aeJf-18lF84', 'Pinback - Loro', 'vasquezd', 'vasquezb', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 1, 0, 0, '2015-11-24 04:46:56', '2015-09-02 23:04:27'),
(57, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=aeJf-18lF84', 'Pinback - Loro ', 'vasquezd', 'vasquezb', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 1, 0, '2015-11-24 04:36:41', '2015-11-24 04:36:41'),
(58, 'Wall Posts', 0, 0, 'https://www.tumblr.com/dashboard', 'Log in | Tumblr', 'vasquezd', 'vasquezd', 'tumblr.png', 'tumblr.png', 'shared', '', 0, 0, '', 0, 1, 0, '2015-11-23 04:49:31', '2015-11-23 04:49:31'),
(59, '', 0, 0, 'https://www.youtube.com/watch?v=0P-CtmHRiNc', 'Pinback - True North ', 'vasquezd', '', 'youtube.png', 'youtube.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 03:51:30', '2015-09-03 03:01:02'),
(60, '', 0, 0, 'http://stackoverflow.com/questions/18490026/refresh-reload-the-content-in-div-using-jquery-ajax', 'javascript - Refresh/reload the content in Div using jquery/ajax - Stack Overflow', 'vasquezd', '', 'stackoverflow.png', 'stackoverflow.png', '', '', 0, 0, '', 0, 1, 0, '2015-11-23 04:46:59', '2015-11-23 04:46:59'),
(61, 'Hello ', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 04:28:35', '0000-00-00 00:00:00'),
(62, 'Newest ', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 04:28:59', '0000-00-00 00:00:00'),
(63, 'new!', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 04:35:19', '0000-00-00 00:00:00'),
(64, 'david', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 04:39:20', '0000-00-00 00:00:00'),
(65, 'Newest ', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 04:39:43', '0000-00-00 00:00:00'),
(66, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Flight Facilities - Clair De Lune feat. Christine Hoberg - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 03:35:30', '0000-00-00 00:00:00'),
(67, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Flight Facilities - Clair De Lune feat. Christine Hoberg - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 03:35:31', '0000-00-00 00:00:00'),
(68, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Flight Facilities - Clair De Lune feat. Christine Hoberg - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 03:36:06', '0000-00-00 00:00:00'),
(69, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Flight Facilities - Clair De Lune feat. Christine Hoberg - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 03:36:45', '0000-00-00 00:00:00'),
(70, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Flight Facilities - Clair De Lune feat. Christine Hoberg - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 03:37:12', '0000-00-00 00:00:00'),
(71, 'Wall Posts', 0, 0, 'https://www.yahoo.com/', 'Yahoo', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 03:49:29', '0000-00-00 00:00:00'),
(72, 'Wall Posts', 0, 0, 'http://purecss.io/', 'Pure', 'vasquezd', 'vasquezd', 'purecss.png', 'purecss.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 03:52:41', '0000-00-00 00:00:00'),
(73, 'Wall Posts', 0, 0, 'http://purecss.io/', 'Pure', 'vasquezd', 'vasquezd', 'purecss.png', 'purecss.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 04:00:48', '0000-00-00 00:00:00'),
(74, 'Wall Posts', 0, 0, 'http://purecss.io/', 'Pure', 'vasquezd', 'vasquezd', 'purecss.png', 'purecss.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 04:00:55', '0000-00-00 00:00:00'),
(75, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Flight Facilities - Clair De Lune feat. Christine Hoberg - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 04:02:08', '0000-00-00 00:00:00'),
(76, 'Wall Posts', 0, 0, 'http://purecss.io/', 'Pure', 'vasquezd', 'vasquezd', 'purecss.png', 'purecss.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 04:11:59', '0000-00-00 00:00:00'),
(77, 'Wall Posts', 0, 0, 'https://www.facebook.com/?_rdr=p', 'title not found', 'vasquezd', 'vasquezd', 'facebook.png', 'facebook.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 04:12:33', '0000-00-00 00:00:00'),
(78, 'Wall Posts', 0, 0, 'http://oregonstate.edu/', 'Oregon State University', 'vasquezd', 'vasquezd', 'oregonstate.png', 'oregonstate.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 04:13:38', '0000-00-00 00:00:00'),
(79, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Flight Facilities - Clair De Lune feat. Christine Hoberg - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 04:28:21', '0000-00-00 00:00:00'),
(80, 'Wall Posts', 0, 0, 'https://www.google.com/?gws_rd=ssl', 'Google', 'vasquezd', 'vasquezd', 'google.png', 'google.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-15 03:06:08', '0000-00-00 00:00:00'),
(81, 'Wall Posts', 0, 0, 'https://www.facebook.com/?_rdr=p', 'title not found', 'vasquezd', 'vasquezd', 'facebook.png', 'facebook.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-15 03:21:30', '0000-00-00 00:00:00'),
(82, 'Wall Posts', 0, 0, 'https://www.facebook.com/groups/287454203999/', 'title not found', 'vasquezd', 'vasquezd', 'facebook.png', 'facebook.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-15 03:24:15', '0000-00-00 00:00:00'),
(83, 'wall_posts', 0, 0, 'http://www.wsj.com/articles/philippine-gold-treasures-of-forgotten-kingdoms-review-1444856780?ru=yahoo?mod=yahoo_itp', 'title not found', 'vasquezd', 'vasquezd', 'wsj.png', 'wsj.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-15 03:36:42', '0000-00-00 00:00:00'),
(84, 'Wall Posts', 0, 0, 'http://pastebin.com/raw.php?i=NcL5BLwg', 'title not found', 'vasquezd', 'vasquezd', 'pastebin.png', 'pastebin.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-15 04:03:42', '0000-00-00 00:00:00'),
(85, '', 0, 0, 'http://pastebin.com/raw.php?i=NcL5BLwg', 'Pastebin Mime Types', 'vasquezd', '', 'pastebin.png', 'pastebin.png', '', '', 0, 0, '', 0, 1, 0, '2015-11-23 04:49:29', '2015-11-23 04:49:29'),
(86, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=6b7AM2D0lyM', 'Seapony - Where We Go [OFFICIAL VIDEO] - YouTube', 'vasquezd', 'vasquezb', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-02 02:40:37', '0000-00-00 00:00:00'),
(87, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=6b7AM2D0lyM', 'Seapony - Where We Go [OFFICIAL VIDEO] - YouTube', 'vasquezd', 'vasquezb', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-02 02:42:58', '0000-00-00 00:00:00'),
(88, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=6b7AM2D0lyM', 'Seapony - Where We Go [OFFICIAL VIDEO] - YouTube', 'vasquezb', 'vasquezd', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-02 02:45:36', '0000-00-00 00:00:00'),
(89, 'wall_posts', 0, 0, 'http://news.discovery.com/history/mysterious-sky-city-photographed-over-china-151022.htm', 'Mysterious &#039;Sky City&#039; Photographed Over China : Discovery News', 'vasquezb', 'vasquezd', 'discovery.png', 'discovery.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-02 03:01:05', '0000-00-00 00:00:00'),
(90, 'Wall Posts', 0, 0, 'http://news.discovery.com/history/mysterious-sky-city-photographed-over-china-151022.htm', 'Mysterious &#039;Sky City&#039; Photographed Over China : Discovery News', 'vasquezd', 'vasquezb', 'discovery.png', 'discovery.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-02 03:03:00', '0000-00-00 00:00:00'),
(91, 'Wall Posts', 0, 0, 'http://news.discovery.com/history/mysterious-sky-city-photographed-over-china-151022.htm', 'Mysterious &#039;Sky City&#039; Photographed Over China : Discovery News', 'vasquezd', 'vasquezb', 'discovery.png', 'discovery.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-02 03:04:59', '0000-00-00 00:00:00'),
(92, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=6b7AM2D0lyM', 'Seapony - Where We Go [OFFICIAL VIDEO] - YouTube', 'vasquezb', 'vasquezb', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-02 03:18:15', '0000-00-00 00:00:00'),
(93, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=6b7AM2D0lyM', 'Seapony - Where We Go [OFFICIAL VIDEO] - YouTube', 'vasquezb', 'vasquezd', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-02 03:18:48', '0000-00-00 00:00:00'),
(94, 'Wall Posts', 0, 0, 'https://www.yahoo.com/', 'Yahoo', 'vasquezb', '27', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-02 04:19:14', '0000-00-00 00:00:00'),
(95, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=6b7AM2D0lyM', 'Seapony - Where We Go [OFFICIAL VIDEO] - YouTube', 'vasquezd', '27', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-02 04:26:16', '0000-00-00 00:00:00'),
(96, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=6b7AM2D0lyM', 'Seapony - Where We Go [OFFICIAL VIDEO] - YouTube', 'vasquezd', '27', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-02 04:26:31', '0000-00-00 00:00:00'),
(97, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=6b7AM2D0lyM', 'Seapony - Where We Go [OFFICIAL VIDEO] - YouTube', 'vasquezd', '27', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-02 04:27:16', '0000-00-00 00:00:00'),
(98, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=6b7AM2D0lyM', 'Seapony - Where We Go [OFFICIAL VIDEO] - YouTube', 'vasquezd', '31', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-02 04:28:42', '0000-00-00 00:00:00'),
(99, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=36aeT8lVQGM', 'Common Children - How Many Times [early hammock?] - YouTube', 'vasquezb', '27', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-09 04:35:23', '0000-00-00 00:00:00'),
(100, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=De54PLA472o', 'Emancipator - 09 With Rainy Eyes - YouTube', 'vasquezd', 'vasquezb', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-09 04:39:36', '0000-00-00 00:00:00'),
(101, '', 0, 0, 'https://www.yahoo.com/', 'Yahoo', 'vasquezd', '', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', 0, 1, 48, '2015-11-24 04:07:15', '2015-11-24 04:07:15'),
(102, '', 0, 0, 'link', 'none.jpg', 'vasquezd', '', 'none.jpg', 'none.jpg', '', '', 0, 0, '', 0, 1, 0, '2015-11-23 04:46:46', '2015-11-23 04:46:46'),
(103, '', 0, 0, 'www.yahoo.com', 'none.jpg', 'vasquezd', '', '.png', '.png', '', '', 0, 0, '', 0, 1, 0, '2015-11-23 04:49:26', '2015-11-23 04:49:26'),
(104, '', 0, 0, 'https://www.yahoo.com/', 'Yahoo Sports', 'vasquezd', '', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', 0, 1, 0, '2015-11-25 04:20:07', '2015-11-25 04:20:07'),
(105, '', 63, 0, 'https://www.yahoo.com/', 'Yahoo News', 'vasquezd', '', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', 1, 0, 0, '2015-11-24 04:46:52', '0000-00-00 00:00:00'),
(106, '', 0, 0, 'https://www.yahoo.com/', 'Yahoo', 'vasquezd', '', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', 0, 1, 0, '2015-11-25 04:20:09', '2015-11-25 04:20:09'),
(107, '', 0, 0, 'http://www.breitbart.com/big-government/2015/10/13/top-physicist-freeman-dyson-obama-picked-wrong-side-climate-change/?utm_source=facebook&utm_medium=social', 'Top Physicist Freeman Dyson: Obama Has Picked The &#039;Wrong Side&#039; On Climate Change', 'vasquezd', '', 'breitbart.png', 'breitbart.png', '', '', 0, 0, '', 0, 1, 0, '2015-11-24 04:36:50', '2015-11-24 04:36:50'),
(108, '', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 0, 1, 0, '2015-11-24 04:46:44', '2015-11-24 04:46:44'),
(109, 'hiya', 65, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2015-11-24 05:00:19', '0000-00-00 00:00:00'),
(110, '', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 0, 1, 0, '2015-11-25 03:54:01', '2015-11-25 03:54:01'),
(111, 'folder new', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2015-11-25 03:54:09', '0000-00-00 00:00:00'),
(112, '', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 0, 1, 0, '2015-11-25 03:54:38', '2015-11-25 03:54:38'),
(113, 'nedw', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 0, 1, 0, '2015-11-25 03:57:12', '2015-11-25 03:57:12'),
(114, 'ok fine', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2015-11-25 03:59:38', '0000-00-00 00:00:00'),
(115, '', 0, 0, 'https://www.yahoo.com/', 'Yahoo', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', 0, 1, 0, '2015-11-25 04:20:11', '2015-11-25 04:20:11'),
(116, 'www.yahoo.com', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 0, 1, 0, '2015-11-25 04:20:24', '2015-11-25 04:20:24'),
(117, 'www.yahoo.com', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 0, 1, 0, '2015-11-25 04:20:26', '2015-11-25 04:20:26'),
(118, '', 0, 0, 'https://www.facebook.com/groups/404349606255577/1083406958349835/?notif_t=group_activity', 'title not found', 'vasquezd', '', 'facebook.png', 'facebook.png', '', '', 0, 0, '', 0, 1, 0, '2015-11-25 04:22:12', '2015-11-25 04:22:12'),
(119, '', 0, 0, 'https://www.facebook.com/groups/404349606255577/1083406958349835/?notif_t=group_activity', 'title not found', 'vasquezd', '', 'facebook.png', 'facebook.png', '', '', 0, 0, '', 0, 1, 0, '2015-11-25 04:22:13', '2015-11-25 04:22:13'),
(120, '', 0, 0, 'https://www.facebook.com/groups/404349606255577/1083406958349835/?notif_t=group_activity', 'title not found', 'vasquezd', '', 'facebook.png', 'facebook.png', '', '', 0, 0, '', 0, 1, 0, '2015-11-25 04:22:15', '2015-11-25 04:22:15'),
(121, '', 0, 0, 'https://www.facebook.com/groups/404349606255577/1083406958349835/?notif_t=group_activity', 'title not found', 'vasquezd', '', 'facebook.png', 'facebook.png', '', '', 0, 0, '', 0, 1, 0, '2015-11-25 04:22:17', '2015-11-25 04:22:17'),
(122, '', 0, 0, 'https://www.facebook.com/groups/404349606255577/1083406958349835/?notif_t=group_activity', 'title not found', 'vasquezd', '', 'facebook.png', 'facebook.png', '', '', 0, 0, '', 0, 1, 0, '2015-11-25 04:22:19', '2015-11-25 04:22:19'),
(123, '', 0, 0, 'https://www.facebook.com/groups/404349606255577/1083406958349835/?notif_t=group_activity', 'title not found', 'vasquezd', 'vasquezd', 'facebook.png', 'facebook.png', '', '', 0, 0, '', 0, 1, 0, '2015-11-25 04:22:20', '2015-11-25 04:22:20'),
(124, '', 0, 0, 'https://www.facebook.com/groups/404349606255577/1083406958349835/?notif_t=group_activity', 'title not found', 'vasquezd', 'vasquezd', 'facebook.png', 'facebook.png', '', '', 0, 0, '', 0, 1, 0, '2015-11-27 04:54:41', '2015-11-27 04:54:41'),
(125, '', 0, 0, 'www.orst.edu', 'none.jpg', 'vasquezd', 'vasquezd', '.png', '.png', '', '', 0, 0, '', 0, 1, 0, '2015-11-25 04:31:19', '2015-11-25 04:31:19'),
(126, '', 0, 0, 'http://oregonstate.edu/', 'Oregon State University', 'vasquezd', 'vasquezd', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', 1, 0, 0, '2015-11-25 04:31:05', '0000-00-00 00:00:00'),
(127, '', 0, 0, 'www.yahoo.com', 'none.jpg', 'vasquezd', 'vasquezd', '.png', '.png', '', '', 0, 0, '', 0, 1, 0, '2015-11-25 04:31:21', '2015-11-25 04:31:21'),
(128, '', 14, 0, 'https://www.yahoo.com/', 'Yahoo', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', 1, 0, 0, '2015-11-26 04:43:48', '0000-00-00 00:00:00'),
(129, 'wall_posts', 0, 0, 'http://www.amazon.com/Tournament-Gorlan-Rangers-Apprentice-Early/dp/0399163611/ref=sr_1_1?ie=UTF8&qid=1447793245&sr=8-1&keywords=flanagan', 'The Tournament at Gorlan (Ranger&#39;s Apprentice: The Early Years): John A. Flanagan: 9780399163616: Amazon.com: Books', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-26 02:17:36', '0000-00-00 00:00:00'),
(130, 'wall_posts', 0, 0, 'http://finance.yahoo.com/news/most-5-major-shopping-holidays-142800766.html', 'How to make the most out of the 5 major shopping holidays - Yahoo Finance', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-26 04:18:26', '0000-00-00 00:00:00'),
(131, 'wall_posts', 0, 0, 'http://www.amazon.com/gp/product/0142406635/ref=s9_simh_gw_p14_d0_i3?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-1&pf_rd_r=13KJC391ECN2VMMF4BE0&pf_rd_t=36701&pf_rd_p=2079475242&pf_rd_i=desktop', 'The Ruins of Gorlan (The Ranger&#39;s Apprentice, Book 1): John A. Flanagan: 9780142406632: Amazon.com: Books', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-26 04:22:11', '0000-00-00 00:00:00'),
(132, 'hyia', 14, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2015-11-26 04:43:59', '0000-00-00 00:00:00'),
(133, 'wall_posts', 0, 0, 'http://www.amazon.com/gp/product/148143229X/ref=s9_simh_gw_p14_d8_i1?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-4&pf_rd_r=1NXGG46XJAGZB23RARBK&pf_rd_t=36701&pf_rd_p=2090149782&pf_rd_i=desktop', 'Neverseen (Keeper of the Lost Cities): Shannon Messenger: 9781481432290: Amazon.com: Books', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-27 02:11:10', '0000-00-00 00:00:00'),
(134, 'wall_posts', 0, 0, 'http://www.amazon.com/gp/product/148143229X/ref=s9_simh_gw_p14_d8_i1?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-4&pf_rd_r=1NXGG46XJAGZB23RARBK&pf_rd_t=36701&pf_rd_p=2090149782&pf_rd_i=desktop', 'Neverseen (Keeper of the Lost Cities): Shannon Messenger: 9781481432290: Amazon.com: Books', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-27 02:17:49', '0000-00-00 00:00:00'),
(135, 'wall_posts', 0, 0, 'http://www.amazon.com/gp/product/148143229X/ref=s9_simh_gw_p14_d8_i1?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-4&pf_rd_r=1NXGG46XJAGZB23RARBK&pf_rd_t=36701&pf_rd_p=2090149782&pf_rd_i=desktop', 'Neverseen (Keeper of the Lost Cities): Shannon Messenger: 9781481432290: Amazon.com: Books', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-27 02:19:45', '0000-00-00 00:00:00'),
(136, '', 0, 0, 'http://stackoverflow.com/questions/1964839/how-can-i-create-a-please-wait-loading-animation-using-jquery', 'How can I create a &quot;Please Wait, Loading...&quot; animation using jQuery? - Stack Overflow', 'vasquezd', 'vasquezd', 'stackoverflow.png', 'stackoverflow.png', '', '', 0, 0, '', 0, 1, 0, '2016-01-03 23:07:22', '2016-01-03 23:07:22'),
(137, 'wall_posts', 0, 0, 'http://www.guitarcenter.com/Boss/DD-20-Giga-Delay.gc', 'Boss DD-20 Giga Delay | Guitar Center', 'vasquezd', 'vasquezd', 'guitarcenter.png', 'guitarcenter.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-29 03:39:00', '0000-00-00 00:00:00'),
(138, 'wall_posts', 0, 0, 'http://www.guitarcenter.com/Gibson/2015-Les-Paul-Studio-SR.gc', 'Gibson 2015 Les Paul Studio SR | Guitar Center', 'vasquezd', 'vasquezb', 'guitarcenter.png', 'guitarcenter.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-29 03:57:54', '0000-00-00 00:00:00'),
(139, 'wall_posts', 0, 0, 'http://www.guitarcenter.com/Gibson/2015-Les-Paul-Studio-SR.gc', 'Gibson 2015 Les Paul Studio SR | Guitar Center', 'vasquezb', 'vasquezd', 'guitarcenter.png', 'guitarcenter.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-29 04:07:25', '0000-00-00 00:00:00'),
(140, 'wall_posts', 0, 0, 'http://www.guitarcenter.com/Gibson/2016-Les-Paul-Studio-T-J26282.gc?pfm=sp', 'Gibson 2016 Les Paul Studio T | Guitar Center', 'vasquezb', 'vasquezb', 'guitarcenter.png', 'guitarcenter.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-29 04:10:24', '0000-00-00 00:00:00'),
(141, 'wall_posts', 0, 0, 'http://www.target.com/p/lindt-lindor-truffles-milk-chocolate-truffles-6-oz/-/A-12943029#prodSlot=medium_1_2&term=lindt', 'Lindt Lindor Truffles Milk Chocolate Truffles 6 oz : Target', 'vasquezd', 'vasquezd', 'target.png', 'target.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-12-02 05:37:56', '0000-00-00 00:00:00'),
(142, 'wall_posts', 0, 0, 'http://www.amazon.com/Sony-50CRM80RS-CD-R-Audio-Spindle/dp/B0002ZDIKW/ref=sr_1_2?ie=UTF8&qid=1450133859&sr=8-2&keywords=sony+cd+r', 'Amazon.com: Sony 50CRM80RS CD-R Audio 50 pk Spindle: Electronics', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-12-14 22:58:01', '0000-00-00 00:00:00'),
(143, 'wall_posts', 0, 0, 'http://www.amazon.com/gp/product/B00KWFCSB2/ref=s9_simh_gw_p63_d12_i1?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-3&pf_rd_r=1GHK7JH72HCJS1FDA7B7&pf_rd_t=36701&pf_rd_p=2084660942&pf_rd_i=desktop', 'Amazon.com: Super Mario Maker - Nintendo Wii U: Video Games', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-12-15 03:41:54', '0000-00-00 00:00:00'),
(144, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=lO5UURtxKUU', 'Andain - Promises (Official Music Video) - YouTube', 'vasquezd', 'vasquezm', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-03 21:53:55', '0000-00-00 00:00:00'),
(145, 'wall_posts', 0, 0, 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'vasquezd', 'vasquezd', 'npr.png', 'npr.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-20 05:32:42', '0000-00-00 00:00:00'),
(146, 'wall_posts', 0, 0, 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'vasquezd', 'vasquezd', 'npr.png', 'npr.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-20 05:32:51', '0000-00-00 00:00:00'),
(147, 'wall_posts', 0, 0, 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'vasquezd', 'vasquezd', 'npr.png', 'npr.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-20 05:32:59', '0000-00-00 00:00:00'),
(148, 'wall_posts', 0, 0, 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'vasquezd', 'vasquezd', 'npr.png', 'npr.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-20 05:33:09', '0000-00-00 00:00:00'),
(149, 'wall_posts', 0, 0, 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'vasquezd', 'vasquezd', 'npr.png', 'npr.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-20 05:33:22', '0000-00-00 00:00:00'),
(150, 'wall_posts', 0, 0, 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'vasquezd', 'vasquezd', 'npr.png', 'npr.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-20 05:33:57', '0000-00-00 00:00:00'),
(151, 'wall_posts', 0, 0, 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'vasquezd', 'vasquezd', 'npr.png', 'npr.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-20 05:35:11', '0000-00-00 00:00:00'),
(152, 'wall_posts', 0, 0, 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'vasquezd', 'vasquezd', 'npr.png', 'npr.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-20 05:35:29', '0000-00-00 00:00:00'),
(153, 'wall_posts', 0, 0, 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'vasquezd', 'vasquezd', 'npr.png', 'npr.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-20 05:35:29', '0000-00-00 00:00:00'),
(154, 'wall_posts', 0, 0, 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'vasquezd', 'vasquezd', 'npr.png', 'npr.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-20 05:35:30', '0000-00-00 00:00:00'),
(155, 'wall_posts', 0, 0, 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'vasquezd', 'vasquezd', 'npr.png', 'npr.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-20 05:35:30', '0000-00-00 00:00:00'),
(156, 'wall_posts', 0, 0, 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'vasquezd', 'vasquezd', 'npr.png', 'npr.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-20 05:37:46', '0000-00-00 00:00:00'),
(157, 'wall_posts', 0, 0, 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'vasquezd', 'vasquezd', 'npr.png', 'npr.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-20 05:37:51', '0000-00-00 00:00:00'),
(158, 'wall_posts', 0, 0, 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'vasquezd', 'vasquezd', 'npr.png', 'npr.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-20 05:39:02', '0000-00-00 00:00:00'),
(159, 'wall_posts', 0, 0, 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'vasquezd', 'vasquezd', 'npr.png', 'npr.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-20 05:47:59', '0000-00-00 00:00:00'),
(160, 'wall_posts', 0, 0, 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'vasquezd', 'vasquezd', 'npr.png', 'npr.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-20 05:48:00', '0000-00-00 00:00:00'),
(161, 'wall_posts', 0, 0, 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'vasquezd', 'vasquezd', 'npr.png', 'npr.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-20 05:48:50', '0000-00-00 00:00:00'),
(162, 'wall_posts', 0, 0, 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'vasquezd', 'vasquezd', 'npr.png', 'npr.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-01-20 05:51:54', '0000-00-00 00:00:00'),
(163, 'wall_posts', 0, 0, 'http://www.cbssports.com/nfl/eye-on-football/25477185/broncos-players-call-out-selfish-cam-newton-he-plays-for-himself', 'Broncos players call out selfish Cam Newton: He plays for himself - CBSSports.com ', 'Vasquezd', 'Vasquezd', 'cbssports.png', 'cbssports.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-02-09 04:33:00', '0000-00-00 00:00:00'),
(164, 'wall_posts', 0, 0, 'http://www.cbssports.com/nfl/eye-on-football/25477185/broncos-players-call-out-selfish-cam-newton-he-plays-for-himself', 'Broncos players call out selfish Cam Newton: He plays for himself - CBSSports.com ', 'Vasquezd', 'Vasquezd', 'cbssports.png', 'cbssports.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-02-09 04:33:11', '0000-00-00 00:00:00'),
(165, 'wall_posts', 0, 0, 'http://www.cbssports.com/nfl/eye-on-football/25477185/broncos-players-call-out-selfish-cam-newton-he-plays-for-himself', 'Broncos players call out selfish Cam Newton: He plays for himself - CBSSports.com ', 'Vasquezd', 'Vasquezd', 'cbssports.png', 'cbssports.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-02-09 04:33:13', '0000-00-00 00:00:00'),
(166, 'wall_posts', 0, 0, 'https://www.yahoo.com/tech/russia-wants-target-near-earth-012123558.html', 'Russia aims to point its ICBMs at the asteroid Apophis in 2036', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-02-14 23:25:59', '0000-00-00 00:00:00'),
(167, 'wall_posts', 0, 0, 'https://www.yahoo.com/tech/russia-wants-target-near-earth-012123558.html', 'Russia aims to point its ICBMs at the asteroid Apophis in 2036', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-02-14 23:27:16', '0000-00-00 00:00:00'),
(168, 'wall_posts', 0, 0, 'https://www.yahoo.com/tech/russia-wants-target-near-earth-012123558.html', 'Russia aims to point its ICBMs at the asteroid Apophis in 2036', 'Vasquezd', 'Vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-02-14 23:29:28', '0000-00-00 00:00:00'),
(169, 'wall_posts', 0, 0, 'https://www.yahoo.com/tech/russia-wants-target-near-earth-012123558.html', 'Russia aims to point its ICBMs at the asteroid Apophis in 2036', 'Vasquezd', 'Vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-02-14 23:29:33', '0000-00-00 00:00:00'),
(170, 'Wall Posts', 0, 0, 'http://tass.ru/en/science/855968', 'TASS: Science &amp; Space - Russia&#039;s improved ballistic missiles to be tested as asteroid killers', 'Vasquezd', 'Vasquezd', 'tass.png', 'tass.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-02-14 23:51:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lists`
--

CREATE TABLE IF NOT EXISTS `lists` (
  `list_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_to` varchar(2083) NOT NULL,
  `list_from` varchar(255) NOT NULL,
  `list_type` varchar(255) NOT NULL,
  `list_title` varchar(255) NOT NULL,
  `list_caption` text NOT NULL,
  `list_url` varchar(255) NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `file_url` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_text` text NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `list_status` int(11) NOT NULL,
  `contains_icon` int(11) NOT NULL,
  `comment_seen` timestamp NOT NULL,
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=290 ;

--
-- Dumping data for table `lists`
--

INSERT INTO `lists` (`list_id`, `list_to`, `list_from`, `list_type`, `list_title`, `list_caption`, `list_url`, `video_code`, `image_url`, `file_url`, `file_name`, `article_title`, `article_text`, `unique_id`, `list_status`, `contains_icon`, `comment_seen`, `updated`, `created`) VALUES
(280, 'vasquezd', 'vasquezd', 'file', 'Miyazaki Photo', 'Not all those who wander are lost! yaya', '', '', 'background_26.jpg', '', '', '', '', '', 1, 1, '2015-11-02 20:41:12', '2016-01-05 04:59:34', '2015-11-02 20:41:12'),
(281, 'vasquezd', 'vasquezd', 'file', 'Miyazaki Photo', '             \nAll we have to decide is what to do with the time', '', '', 'background_33.jpg', '', '', '', '', '', 1, 1, '2015-11-03 04:14:03', '2015-11-05 05:17:58', '2015-11-02 20:41:12'),
(282, 'vasquezd', 'vasquezd', 'list', '', '  If more of us valued food and cheer and song above hoarded gold, it would be a merrier world!!', '', '', '', '', '', '', '', '', 1, 0, '0000-00-00 00:00:00', '2015-11-05 05:18:05', '2015-11-04 03:11:39'),
(283, 'vasquezd', 'vasquezd', 'list', '', 'It''s the job that''s never started as takes longest to finish.', '', '', '', '', '', '', '', '', 1, 0, '0000-00-00 00:00:00', '2015-11-04 04:18:19', '2015-11-04 03:11:58'),
(284, 'vasquezd', 'vasquezd', 'list', '', 'Courage is found in unlikely places.', '', '', '', '', '', '', '', '', 1, 0, '0000-00-00 00:00:00', '2015-11-04 04:18:29', '2015-11-04 03:13:01'),
(285, 'vasquezd', 'vasquezd', 'note', '', ' Ok well this is pretty cool all right and stuff!', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', '2015-11-05 04:04:12', '2015-11-04 05:01:39'),
(286, 'vasquezd', 'vasquezd', 'file', 'Miyazaki Photo', 'Zimbabwe School Aliens', 'http://altereddimensions.net/2013/zimbabwe-school-mass-ufo-sighting-children-saucer-shaped-ufo-alien-sighting', '', 'background_26.jpg', '', '', '', '', '', 1, 1, '2015-12-15 03:34:17', '2015-11-06 02:27:57', '2015-11-02 20:41:12'),
(287, 'vasquezd', 'vasquezd', 'file', 'Miyazaki Photo', 'Project Blue Book ', 'https://en.wikipedia.org/wiki/Project_Blue_Book', '', 'background_26.jpg', '', '', '', '', '', 1, 1, '2015-12-15 03:34:52', '2015-11-06 02:27:57', '2015-11-02 20:41:12'),
(288, 'vasquezd', 'vasquezd', 'file', 'Miyazaki Photo', 'How to start a startup', 'http://startupclass.samaltman.com/', '', 'background_26.jpg', '', '', '', '', '', 1, 1, '2015-12-17 23:31:27', '2015-11-06 02:27:57', '2015-11-02 20:41:12'),
(289, 'vasquezd', 'vasquezd', 'note', '', ' ', '', '', '', '', '', '', '', '', 1, 0, '0000-00-00 00:00:00', '2016-01-08 04:44:57', '2016-01-08 04:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `master_list`
--

CREATE TABLE IF NOT EXISTS `master_list` (
  `list_primary_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_type` varchar(255) NOT NULL,
  `list_name` varchar(255) NOT NULL,
  `list_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recycle_status` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`list_primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

-- --------------------------------------------------------

--
-- Table structure for table `message_comments`
--

CREATE TABLE IF NOT EXISTS `message_comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_from` varchar(255) NOT NULL,
  `comment_to` varchar(255) NOT NULL,
  `likes` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `message_posts`
--

CREATE TABLE IF NOT EXISTS `message_posts` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `square_id` int(11) NOT NULL,
  `post_from` varchar(255) NOT NULL,
  `post_to` varchar(2083) NOT NULL,
  `post_type` varchar(255) NOT NULL,
  `post_caption` text NOT NULL,
  `post_url` varchar(255) NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_text` text NOT NULL,
  `contains_file` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `post_status` int(11) NOT NULL,
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=200 ;

--
-- Dumping data for table `message_posts`
--

INSERT INTO `message_posts` (`post_id`, `square_id`, `post_from`, `post_to`, `post_type`, `post_caption`, `post_url`, `video_code`, `image_url`, `article_title`, `article_text`, `contains_file`, `unique_id`, `post_status`, `updated`, `created`) VALUES
(196, 27, 'vasquezd', 'vasquezd', 'text', 'david My broad interest in oceanography, biology and the artic is a fascination to gain a better understanding of our world. I am interested in the biogeochemical cycles in the ocean and the mechanisms that can be used to understand them. ', '', '', '', '', '', 0, '', 1, '2015-09-06 04:42:38', '2015-09-06 04:16:37'),
(198, 27, 'vasquezm', 'vasquezd', 'text', 'david My broad interest in oceanography, biology and the artic is a fascination to gain a better understanding of our world. I am interested in the biogeochemical cycles in the ocean and the mechanisms that can be used to understand them. ', '', '', '', '', '', 0, '', 1, '2015-09-06 21:20:06', '2015-09-06 04:16:37'),
(199, 27, 'vasquezd', 'vasquezd', 'text', 'We should do cool stuuff!', '', '', '', '', '', 0, '', 1, '2015-09-06 21:37:43', '2015-09-06 21:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_from` varchar(255) NOT NULL,
  `notification_to` varchar(255) NOT NULL,
  `notification_time` timestamp NOT NULL,
  `type` varchar(255) NOT NULL,
  `notification_header` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `sub_category` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `from_logged_in_user` int(11) NOT NULL,
  `status_unseen` int(11) NOT NULL,
  `clicked` int(11) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=280 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `notification_from`, `notification_to`, `notification_time`, `type`, `notification_header`, `category`, `sub_category`, `link_url`, `group_id`, `post_id`, `from_logged_in_user`, `status_unseen`, `clicked`) VALUES
(154, 'vasquezd', 'vasquezj', '2015-11-10 04:21:03', 'group', 'new_group', 'new_group', 'group', '#', 0, 0, 0, 1, 0),
(155, 'vasquezd', 'vasquezb', '2015-11-10 04:21:04', 'group', 'new_group', 'new_group', 'group', '#', 0, 0, 0, 1, 0),
(156, 'vasquezd', 'vasquezm', '2015-11-10 04:21:04', 'group', 'new_group', 'new_group', 'group', '#', 0, 0, 0, 1, 0),
(157, 'vasquezb', 'vasquezm', '2015-11-12 02:24:12', 'group', 'new_group', 'new_group', 'group', '#', 0, 0, 0, 1, 0),
(158, 'vasquezb', 'vasquezd', '2015-11-12 02:24:12', 'group', 'new_group', 'new_group', 'group', '#', 0, 0, 0, 0, 0),
(159, 'vasquezb', 'vasquezm', '2015-11-12 02:24:43', 'group', 'new_group', 'new_group', 'group', '#', 0, 0, 0, 1, 0),
(160, 'vasquezb', 'vasquezd', '2015-11-12 02:24:47', 'group', 'existing_group', 'new_group', 'group', '#', 0, 0, 0, 0, 0),
(161, 'vasquezm', 'vasquezd', '2015-11-12 02:27:47', 'group', 'posts', 'group_wall_post', 'group', 'http://localhost/shareshare/site_files/individual_group.php?varname=NDg==', 48, 0, 0, 0, 0),
(162, 'vasquezm', 'vasquezj', '2015-11-12 02:27:48', 'group', 'posts', 'group_wall_post', 'group', 'http://localhost/shareshare/site_files/individual_group.php?varname=NDg==', 48, 0, 0, 1, 0),
(163, 'vasquezm', 'vasquezb', '2015-11-12 02:27:48', 'group', 'posts', 'group_wall_post', 'group', 'http://localhost/shareshare/site_files/individual_group.php?varname=NDg==', 48, 0, 0, 1, 0),
(164, 'vasquezm', 'vasquezm', '2015-11-12 02:27:48', 'group', 'posts', 'group_wall_post', 'group', 'http://localhost/shareshare/site_files/individual_group.php?varname=NDg==', 48, 0, 1, 0, 0),
(165, 'vasquezm', 'vasquezd', '2015-11-12 02:28:31', 'group', 'posts', 'group_wall_comment', 'group', 'http://localhost/shareshare/site_files/individual_group.php?varname=NDg==', 48, 304, 0, 0, 0),
(166, 'vasquezm', 'vasquezj', '2015-11-12 02:28:31', 'group', 'posts', 'group_wall_comment', 'group', 'http://localhost/shareshare/site_files/individual_group.php?varname=NDg==', 48, 304, 0, 1, 0),
(167, 'vasquezm', 'vasquezb', '2015-11-12 02:28:31', 'group', 'posts', 'group_wall_comment', 'group', 'http://localhost/shareshare/site_files/individual_group.php?varname=NDg==', 48, 304, 0, 1, 0),
(168, 'vasquezm', 'vasquezm', '2015-11-12 02:28:32', 'group', 'posts', 'group_wall_comment', 'group', 'http://localhost/shareshare/site_files/individual_group.php?varname=NDg==', 48, 304, 1, 0, 0),
(169, 'vasquezd', 'vasquezj', '2015-11-12 02:54:50', 'group', 'new_group', 'new_group', 'group', '#', 0, 0, 0, 1, 0),
(170, 'vasquezd', 'vasquezb', '2015-11-12 02:54:50', 'group', 'new_group', 'new_group', 'group', '#', 0, 0, 0, 1, 0),
(171, 'vasquezd', 'vasquezm', '2015-11-12 02:54:50', 'group', 'new_group', 'new_group', 'group', '#', 0, 0, 0, 1, 0),
(172, 'vasquezm', 'vasquezb', '2015-11-12 03:36:07', 'group', 'posts', 'group_wall_post', 'group', 'http://localhost/shareshare/site_files/individual_group.php?varname=NDk==', 49, 0, 0, 1, 0),
(173, 'vasquezm', 'vasquezm', '2015-11-12 03:36:07', 'group', 'posts', 'group_wall_post', 'group', 'http://localhost/shareshare/site_files/individual_group.php?varname=NDk==', 49, 0, 1, 0, 0),
(174, 'vasquezm', 'vasquezd', '2015-11-12 03:36:07', 'group', 'posts', 'group_wall_post', 'group', 'http://localhost/shareshare/site_files/individual_group.php?varname=NDk==', 49, 0, 0, 0, 0),
(175, 'vasquezj', 'vasquezd', '2015-11-12 03:39:43', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 0, 0),
(176, 'vasquezj', 'vasquezm', '2015-11-12 03:39:45', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(177, 'vasquezj', 'vasquezb', '2015-11-12 03:39:45', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(178, 'vasquezb', 'vasquezm', '2015-11-12 03:51:28', 'group', 'new_group', 'new_group', 'group', '#', 0, 0, 0, 1, 0),
(179, 'vasquezb', 'vasquezd', '2015-11-12 03:51:28', 'group', 'new_group', 'new_group', 'group', '#', 0, 0, 0, 0, 0),
(180, 'vasquezd', 'vasquezd', '2015-11-26 02:17:36', 'wall', 'posts', 'post_new_article', 'wall', '#', 0, 0, 1, 0, 0),
(181, 'vasquezd', 'vasquezd', '2015-11-26 04:18:26', 'wall', 'posts', 'post_new_article', 'wall', '#', 0, 0, 1, 0, 0),
(182, 'vasquezd', 'vasquezd', '2015-11-26 04:22:12', 'wall', 'posts', 'post_new_article', 'wall', '#', 0, 0, 1, 0, 0),
(183, 'vasquezd', 'vasquezd', '2015-11-27 02:11:11', 'wall', 'posts', 'post_new_article', 'wall', '#', 0, 0, 1, 0, 0),
(184, 'vasquezd', 'vasquezd', '2015-11-27 02:17:49', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 0, 0),
(185, 'vasquezd', 'vasquezd', '2015-11-27 02:19:45', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 0, 0),
(186, 'vasquezd', 'vasquezd', '2015-11-29 03:39:00', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 0, 0),
(187, 'vasquezd', 'vasquezb', '2015-11-29 03:57:54', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 0, 1, 0),
(188, 'vasquezb', 'vasquezd', '2015-11-29 04:07:25', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 0, 0, 0),
(189, 'vasquezb', 'vasquezb', '2015-11-29 04:10:24', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(190, 'vasquezd', 'vasquezd', '2015-12-02 05:37:56', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 0, 0),
(191, 'vasquezd', 'vasquezd', '2015-12-09 04:35:29', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(192, 'vasquezd', 'vasquezd', '2015-12-14 21:42:51', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(193, 'vasquezd', 'vasquezd', '2015-12-14 21:51:19', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(194, 'vasquezd', 'vasquezd', '2015-12-14 21:59:17', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(195, 'vasquezd', 'vasquezd', '2015-12-14 22:01:40', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(196, 'vasquezd', 'vasquezd', '2015-12-14 22:03:35', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(197, 'vasquezd', 'vasquezd', '2015-12-14 22:04:03', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(198, 'vasquezd', 'vasquezd', '2015-12-14 22:06:50', 'wall', 'posts', 'post_new_item', 'wall', '#', 0, 0, 1, 1, 0),
(199, 'vasquezd', 'vasquezd', '2015-12-14 22:08:29', 'wall', 'posts', 'post_new_item', 'wall', '#', 0, 0, 1, 1, 0),
(200, 'vasquezd', 'vasquezd', '2015-12-14 22:12:02', 'wall', 'posts', 'post_new_item', 'wall', '#', 0, 0, 1, 1, 0),
(201, 'vasquezd', 'vasquezd', '2015-12-14 22:26:13', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(202, 'vasquezd', 'vasquezd', '2015-12-14 22:28:12', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(203, 'vasquezd', 'vasquezd', '2015-12-14 22:28:40', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(204, 'vasquezd', 'vasquezd', '2015-12-14 22:29:11', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(205, 'vasquezd', 'vasquezd', '2015-12-14 22:29:37', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(206, 'vasquezd', 'vasquezd', '2015-12-14 22:29:50', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(207, 'vasquezd', 'vasquezd', '2015-12-14 22:30:46', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(208, 'vasquezd', 'vasquezd', '2015-12-14 22:33:28', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(209, 'vasquezd', 'vasquezd', '2015-12-14 22:34:45', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(210, 'vasquezd', 'vasquezd', '2015-12-14 22:36:41', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(211, 'vasquezd', 'vasquezd', '2015-12-14 22:37:06', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(212, 'vasquezd', 'vasquezd', '2015-12-14 22:43:48', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(213, 'vasquezd', 'vasquezd', '2015-12-14 22:44:10', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(214, 'vasquezd', 'vasquezd', '2015-12-14 22:45:46', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(215, 'vasquezd', 'vasquezd', '2015-12-14 22:51:33', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(216, 'vasquezd', 'vasquezd', '2015-12-14 22:54:42', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(217, 'vasquezd', 'vasquezd', '2015-12-14 22:58:01', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(218, 'vasquezd', 'vasquezd', '2015-12-14 23:01:14', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(219, 'vasquezd', 'vasquezd', '2015-12-14 23:05:01', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 1, 0),
(220, 'vasquezd', 'vasquezd', '2015-12-14 23:06:46', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 1, 0),
(221, 'vasquezd', 'vasquezd', '2015-12-14 23:09:33', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 1, 0),
(222, 'vasquezd', 'vasquezd', '2015-12-14 23:20:17', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 1, 0),
(223, 'vasquezd', 'vasquezd', '2015-12-14 23:22:51', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(224, 'vasquezd', 'vasquezd', '2015-12-14 23:24:56', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(225, 'vasquezd', 'vasquezd', '2015-12-14 23:27:41', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 1, 0),
(226, 'vasquezd', 'vasquezd', '2015-12-15 03:41:54', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(227, 'vasquezd', 'vasquezd', '2015-12-15 03:42:42', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(228, 'vasquezd', 'vasquezd', '2015-12-15 03:43:28', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 1, 0),
(229, 'vasquezd', 'baggins2', '2015-12-18 22:51:59', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(230, 'vasquezd', 'frodobaggins', '2015-12-18 23:05:15', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(231, 'vasquezd', 'vasquezm', '2016-01-03 21:46:58', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 0, 1, 0),
(232, 'vasquezd', 'vasquezm', '2016-01-03 21:53:55', 'wall', 'posts', 'post_new_video', 'wall', '#', 0, 0, 0, 1, 0),
(233, 'vasquezd', 'vasquezd', '2016-01-03 22:09:12', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 1, 0),
(234, 'vasquezd', 'vasquezd', '2016-01-03 22:09:22', 'wall', 'posts', 'post_new_file', 'wall', '#', 0, 0, 1, 1, 0),
(235, 'vasquezd', 'vasquezd', '2016-01-03 23:17:17', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(236, 'vasquezd', 'vasquezd', '2016-01-03 23:21:05', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(237, 'vasquezd', 'vasquezj', '2016-01-06 04:35:44', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(238, 'vasquezd', 'vasquezd', '2016-01-06 04:35:45', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(239, 'vasquezd', 'vasquezd', '2016-01-08 04:44:58', 'wall', 'lists', 'new_list', 'list_page', '#', 0, 0, 1, 1, 0),
(240, 'vasquezd', 'vasquezd', '2016-01-20 05:32:42', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(241, 'vasquezd', 'vasquezd', '2016-01-20 05:32:51', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(242, 'vasquezd', 'vasquezd', '2016-01-20 05:32:59', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(243, 'vasquezd', 'vasquezd', '2016-01-20 05:33:09', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(244, 'vasquezd', 'vasquezd', '2016-01-20 05:33:22', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(245, 'vasquezd', 'vasquezd', '2016-01-20 05:33:57', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(246, 'vasquezd', 'vasquezd', '2016-01-20 05:35:11', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(247, 'vasquezd', 'vasquezd', '2016-01-20 05:35:29', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(248, 'vasquezd', 'vasquezd', '2016-01-20 05:35:29', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(249, 'vasquezd', 'vasquezd', '2016-01-20 05:35:30', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(250, 'vasquezd', 'vasquezd', '2016-01-20 05:35:30', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(251, 'vasquezd', 'vasquezd', '2016-01-20 05:37:46', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(252, 'vasquezd', 'vasquezd', '2016-01-20 05:37:51', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(253, 'vasquezd', 'vasquezd', '2016-01-20 05:39:02', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(254, 'vasquezd', 'vasquezd', '2016-01-20 05:48:00', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(255, 'vasquezd', 'vasquezd', '2016-01-20 05:48:01', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(256, 'vasquezd', 'vasquezd', '2016-01-20 05:48:50', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(257, 'vasquezd', 'vasquezd', '2016-01-20 05:51:54', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(258, 'Vasquezd', 'Vasquezd', '2016-02-09 04:33:00', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(259, 'Vasquezd', 'Vasquezd', '2016-02-09 04:33:12', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(260, 'Vasquezd', 'Vasquezd', '2016-02-09 04:33:14', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(261, 'vasquezd', 'Vasquezd', '2016-02-11 04:39:31', 'wall', 'posts', 'post_comment', 'post', '#', 0, 380, 0, 1, 0),
(262, 'Vasquezd', 'Vasquezd', '2016-02-13 22:05:55', 'wall', 'posts', 'post_comment', 'post', '#', 0, 380, 1, 1, 0),
(263, 'Vasquezd', 'Vasquezd', '2016-02-13 22:06:02', 'wall', 'posts', 'post_comment', 'post', '#', 0, 380, 1, 1, 0),
(264, 'Vasquezd', 'Vasquezd', '2016-02-13 23:13:51', 'wall', 'posts', 'post_comment', 'post', '#', 0, 380, 1, 1, 0),
(265, 'Vasquezd', 'Vasquezd', '2016-02-13 23:13:54', 'wall', 'posts', 'post_comment', 'post', '#', 0, 380, 1, 1, 0),
(266, 'Vasquezd', 'Vasquezd', '2016-02-13 23:13:55', 'wall', 'posts', 'post_comment', 'post', '#', 0, 380, 1, 1, 0),
(267, 'Vasquezd', 'Vasquezd', '2016-02-13 23:13:58', 'wall', 'posts', 'post_comment', 'post', '#', 0, 380, 1, 1, 0),
(268, 'Vasquezd', 'Vasquezd', '2016-02-13 23:13:59', 'wall', 'posts', 'post_comment', 'post', '#', 0, 380, 1, 1, 0),
(269, 'Vasquezd', 'Vasquezd', '2016-02-13 23:15:06', 'wall', 'posts', 'post_comment', 'post', '#', 0, 380, 1, 1, 0),
(270, 'Vasquezd', 'Vasquezd', '2016-02-13 23:15:40', 'wall', 'posts', 'post_comment', 'post', '#', 0, 380, 1, 1, 0),
(271, 'Vasquezd', 'Vasquezd', '2016-02-13 23:17:15', 'wall', 'posts', 'post_comment', 'post', '#', 0, 379, 1, 1, 0),
(272, 'vasquezd', 'vasquezd', '2016-02-14 22:55:21', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(273, 'vasquezd', 'vasquezd', '2016-02-14 23:26:00', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(274, 'vasquezd', 'vasquezd', '2016-02-14 23:27:17', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(275, 'Vasquezd', 'Vasquezd', '2016-02-14 23:29:29', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(276, 'Vasquezd', 'Vasquezd', '2016-02-14 23:29:33', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(277, 'Vasquezd', 'Vasquezd', '2016-02-14 23:51:15', 'wall', 'posts', 'post_new_link', 'wall', '#', 0, 0, 1, 1, 0),
(278, 'Vasquezd', 'Vasquezd', '2016-02-15 00:00:22', 'wall', 'posts', 'post_new_file', 'wall', '#', 0, 0, 1, 1, 0),
(279, 'Vasquezd', 'Vasquezd', '2016-02-15 00:02:50', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pending_email`
--

CREATE TABLE IF NOT EXISTS `pending_email` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT,
  `codehash` varchar(255) NOT NULL,
  `request_from` varchar(255) NOT NULL,
  `request_to` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `square_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`primary_id`),
  UNIQUE KEY `codehash` (`codehash`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `pending_email`
--

INSERT INTO `pending_email` (`primary_id`, `codehash`, `request_from`, `request_to`, `email`, `square_id`, `status`) VALUES
(34, '1ca443433f47e182e305cbbd1ea7ed7735d68b83', 'vasquezd', '<p><a href="http://people.oregonstate.edu/~vasquezd/site_files/register_email.php?hash=1ca443433f47e182e305cbbd1ea7ed7735d68b83&useremail=vasquezd@onid.orst.edu&friendname=vasquezd">Join Sharespace</a></p>', 'vasquezd@onid.orst.edu', 0, 1),
(35, 'dbb3630af75091b146d93964591fc602d7f68901', 'vasquezd', '<p><a href="http://people.oregonstate.edu/~vasquezd/site_files/register_email.php?hash=dbb3630af75091b146d93964591fc602d7f68901&useremail=vasquezd@onid.orst.edu&friendname=vasquezd">Join Sharespace</a></p>', 'vasquezd@onid.orst.edu', 0, 1),
(36, 'e4d82b1dd2f09290f56e80b1383eae486eaf0dac', 'vasquezd', '<p><a href="http://people.oregonstate.edu/~vasquezd/site_files/register_email.php?hash=e4d82b1dd2f09290f56e80b1383eae486eaf0dac&useremail=vasquezd@onid.orst.edu&friendname=vasquezd">Join Sharespace</a></p>', 'vasquezd@onid.orst.edu', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pending_requests`
--

CREATE TABLE IF NOT EXISTS `pending_requests` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_type` varchar(255) NOT NULL,
  `request_type_name` varchar(255) NOT NULL,
  `sent_by` varchar(255) NOT NULL,
  `sent_to` varchar(255) NOT NULL,
  `request_key` varchar(255) NOT NULL,
  `sent_to_email` varchar(255) NOT NULL,
  `square_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL,
  PRIMARY KEY (`primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

--
-- Dumping data for table `pending_requests`
--

INSERT INTO `pending_requests` (`primary_id`, `request_type`, `request_type_name`, `sent_by`, `sent_to`, `request_key`, `sent_to_email`, `square_id`, `status`, `updated`, `created`) VALUES
(61, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezj', '', '', 48, 1, '2015-11-10 04:21:03', '0000-00-00 00:00:00'),
(62, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezb', '', '', 48, 0, '2015-11-10 04:21:03', '0000-00-00 00:00:00'),
(63, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezm', '', '', 48, 1, '2015-11-10 04:21:03', '0000-00-00 00:00:00'),
(64, 'new_square', 'Wants to start a new square', 'vasquezb', 'vasquezm', '', '', 49, 1, '2015-11-12 02:24:12', '0000-00-00 00:00:00'),
(65, 'new_square', 'Wants to start a new square', 'vasquezb', 'vasquezd', '', '', 49, 0, '2015-11-12 02:24:12', '0000-00-00 00:00:00'),
(66, 'new_square', 'Wants to start a new square', 'vasquezb', 'vasquezm', '', '', 50, 1, '2015-11-12 02:24:43', '0000-00-00 00:00:00'),
(67, 'new_square', 'Wants to add you to a square', 'vasquezb', 'vasquezd', '', '', 50, 0, '2015-11-12 02:24:47', '0000-00-00 00:00:00'),
(68, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezj', '', '', 51, 1, '2015-11-12 02:54:50', '0000-00-00 00:00:00'),
(69, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezb', '', '', 51, 0, '2015-11-12 02:54:50', '0000-00-00 00:00:00'),
(70, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezm', '', '', 51, 1, '2015-11-12 02:54:50', '0000-00-00 00:00:00'),
(71, 'friend', '', 'vasquezj', 'vasquezd', 'vasquezjvasquezd', '', 0, 0, '2015-11-12 03:39:43', '0000-00-00 00:00:00'),
(72, 'friend', '', 'vasquezj', 'vasquezm', 'vasquezjvasquezm', '', 0, 1, '2015-11-12 03:39:44', '0000-00-00 00:00:00'),
(73, 'friend', '', 'vasquezj', 'vasquezb', 'vasquezjvasquezb', '', 0, 0, '2015-11-12 03:39:45', '0000-00-00 00:00:00'),
(74, 'new_square', 'Wants to start a new square', 'vasquezb', 'vasquezm', '', '', 52, 1, '2015-11-12 03:51:28', '0000-00-00 00:00:00'),
(75, 'new_square', 'Wants to start a new square', 'vasquezb', 'vasquezd', '', '', 52, 0, '2015-11-12 03:51:28', '0000-00-00 00:00:00'),
(76, 'friend', '', 'vasquezd', 'baggins2', 'vasquezdbaggins2', '', 0, 0, '2015-12-18 22:51:59', '0000-00-00 00:00:00'),
(77, 'friend', '', 'vasquezd', 'frodobaggins', 'vasquezdfrodobaggins', '', 0, 0, '2015-12-18 23:05:15', '0000-00-00 00:00:00'),
(78, 'friend', '', 'vasquezd', 'vasquezj', 'vasquezdvasquezj', '', 0, 1, '2016-01-06 04:35:44', '0000-00-00 00:00:00'),
(79, 'friend', '', 'vasquezd', 'vasquezd', 'vasquezdvasquezd', '', 0, 1, '2016-01-06 04:35:45', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_from` varchar(255) NOT NULL,
  `post_to` varchar(2083) NOT NULL,
  `post_type` varchar(255) NOT NULL,
  `post_caption` text NOT NULL,
  `post_url` varchar(255) NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `file_url` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_text` text NOT NULL,
  `contains_file` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `post_status` int(11) NOT NULL,
  `comment_seen` timestamp NOT NULL,
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=389 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_from`, `post_to`, `post_type`, `post_caption`, `post_url`, `video_code`, `image_url`, `file_url`, `file_name`, `article_title`, `article_text`, `contains_file`, `unique_id`, `post_status`, `comment_seen`, `updated`, `created`) VALUES
(119, 'Vasquezd', 'Vasquezd', 'video', '', 'https://www.youtube.com/embed/qDRF5iUSXn0', 'qDRF5iUSXn0', '', '', '', '', '', 0, 'VasquezdVasquezd1437429924', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-07-21 07:05:35'),
(144, 'Vasquezd', 'Vasquezd', 'video', 'I love this song! ', 'https://www.youtube.com/watch?v=DD8zGTpyM9w', 'DD8zGTpyM9w', '', '', '', '', '', 0, '', 0, '2015-10-23 03:28:45', '2015-11-26 04:07:14', '2015-07-22 07:53:19'),
(149, 'vasquezb', 'vasquezd', 'video', 'Helios!', 'https://www.youtube.com/watch?v=WTbVGPSBO6Y', 'WTbVGPSBO6Y', '', '', '', '', '', 0, '', 1, '2016-02-11 04:39:52', '2016-02-11 04:39:52', '2015-08-03 06:43:23'),
(150, 'vasquezd', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=4EyZJXGVRO0', '4EyZJXGVRO0', '', '', '', '', '', 0, '', 0, '2015-11-02 02:01:54', '2015-11-25 02:50:57', '2015-08-03 07:00:26'),
(151, 'vasquezd', 'vasquezm', 'video', 'What do you think of this song? ', 'https://www.youtube.com/watch?v=WTbVGPSBO6Y', 'WTbVGPSBO6Y', '', '', '', '', '', 0, '', 1, '2015-10-23 03:27:45', '2015-10-23 03:27:45', '2015-08-03 11:38:18'),
(152, 'vasquezd', 'vasquezd', 'video', 'New Hammock Song', 'https://www.youtube.com/watch?v=jBrWe6Foq1A', 'jBrWe6Foq1A', '', '', '', '', '', 0, '', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-08-03 11:46:37'),
(153, 'vasquezd', 'vasquezb', 'video', 'Hi Brian! What do you think of this video? I really love hammock!', 'https://www.youtube.com/watch?v=iBmDZgdJaxE', 'iBmDZgdJaxE', '', '', '', '', '', 0, '', 1, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-08-03 11:50:14'),
(154, 'vasquezb', 'vasquezd', 'video', 'So Good!', 'https://www.youtube.com/watch?v=MhGH9aoLz3M', 'MhGH9aoLz3M', '', '', '', '', '', 0, '', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-08-03 11:51:46'),
(155, 'vasquezd', 'vasquezb', 'video', 'This is such a good song!!', 'https://www.youtube.com/watch?v=KjIWriDTptY', 'KjIWriDTptY', '', '', '', '', '', 0, '', 1, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-08-03 12:19:45'),
(156, 'vasquezd', 'vasquezb', 'video', 'What do you think of this? ', 'https://www.youtube.com/watch?v=ldXdymGCShg', 'ldXdymGCShg', '', '', '', '', '', 0, '', 0, '2015-10-21 02:46:38', '2015-11-09 04:39:57', '2015-08-16 11:59:28'),
(158, 'vasquezd', 'vasquezm', 'video', 'This is so good!', 'https://www.youtube.com/watch?v=vQymMt4jN6k', 'vQymMt4jN6k', '', '', '', '', '', 0, '', 1, '2015-11-09 02:19:04', '2015-11-09 02:19:04', '2015-08-16 12:13:41'),
(159, 'vasquezd', 'vasquezd', 'video', 'new~!', 'https://www.youtube.com/watch?v=vQymMt4jN6k', 'vQymMt4jN6k', '', '', '', '', '', 0, '', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-08-16 12:14:01'),
(160, 'vasquezd', 'vasquezb', 'video', 'check this out', 'https://www.youtube.com/watch?v=ldXdymGCShg', 'ldXdymGCShg', '', '', '', '', '', 0, '', 1, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-08-16 12:19:56'),
(176, 'vasquezd', 'vasquezb', 'video', 'I really like this song! What do you think of it? ', 'https://www.youtube.com/watch?v=aeJf-18lF84', 'aeJf-18lF84', '', '', '', '', '', 0, '', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-08-21 14:12:53'),
(177, 'vasquezd', 'vasquezb', 'video', 'I really like this song! What do you think of it? ', 'https://www.youtube.com/watch?v=aeJf-18lF84', 'aeJf-18lF84', '', '', '', '', '', 0, '', 1, '2015-10-22 03:09:34', '2015-10-22 03:09:34', '2015-08-21 14:12:55'),
(204, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1444706677anime.png', '', '', '', '', 0, 'vasquezdvasquezd1444704522', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-10-13 11:48:53'),
(205, 'vasquezd', 'vasquezd', 'photo', 'I like this!', '', '', '1444707444background_26.jpg', '', '', '', '', 0, 'vasquezdvasquezd1444706677', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-10-13 12:24:58'),
(206, 'vasquezd', 'vasquezd', 'video', 'This song is so good!', 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Jcu1AHaTchM', '', '', '', '', '', 0, '', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-10-13 12:35:18'),
(207, 'vasquezd', 'vasquezd', 'video', 'This song is so good!', 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Jcu1AHaTchM', '', '', '', '', '', 0, '', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-10-13 12:35:28'),
(208, 'vasquezd', 'vasquezd', 'video', 'same', 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Jcu1AHaTchM', '', '', '', '', '', 0, '', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-10-13 12:36:05'),
(209, 'vasquezd', 'vasquezd', 'video', 'I like this!', 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Jcu1AHaTchM', '', '', '', '', '', 0, '', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-10-13 12:36:45'),
(210, 'vasquezd', 'vasquezd', 'video', 'and this ', 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Jcu1AHaTchM', '', '', '', '', '', 0, '', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-10-13 12:37:11'),
(230, 'vasquezd', 'vasquezd', 'article', '', 'http://www.wsj.com/articles/philippine-gold-treasures-of-forgotten-kingdoms-review-1444856780?ru=yahoo?mod=yahoo_itp', '', '561f1f408721b758615178.jpg', '', '', 'title not found', 'Hazy history does little to detract from the beauty of this glittering trove.', 0, '', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-10-15 12:36:42'),
(231, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1444881319Koala.jpg', 'Koala.jpg', '', '', 1, '', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-10-15 03:55:19'),
(232, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1444881351Ga_Work-_Article_1.docx', 'Ga Work- Article 1.docx', '', '', 1, '', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-10-15 03:55:51'),
(233, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1444881585Ga_Work-_Article_1.docx', 'Ga Work- Article 1.docx', '', '', 1, '', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-10-15 03:59:45'),
(234, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1444881681ec1002_ch1-4.pdf', 'ec1002_ch1-4.pdf', '', '', 1, '', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-10-15 04:01:21'),
(235, 'vasquezd', 'vasquezd', 'link', '', 'http://pastebin.com/raw.php?i=NcL5BLwg', '', 'pastebin.png', '', '', 'title not found', '', 0, '', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-10-15 04:03:42'),
(236, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1444964798Jellyfish.jpg', '', '', '', '', 0, 'vasquezdvasquezd1444962620', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-10-16 11:54:20'),
(237, 'vasquezd', 'vasquezd', 'file', 'new file!', '', '', '', '1445220555Stories.rtf', 'Stories.rtf', '', '', 1, '', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-10-19 02:09:15'),
(238, 'vasquezd', '27', 'photo', '', '', '', '1445308226Desert.jpg', '', '', '', '', 0, 'vasquezd271445308212', 0, '2015-10-21 02:46:38', '2015-11-09 02:42:36', '2015-10-20 11:30:26'),
(239, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1446086429Tulips.jpg', '', '', '', '', 0, 'vasquezdvasquezd1446086381', 0, '0000-00-00 00:00:00', '2015-10-29 03:11:45', '2015-10-29 10:40:29'),
(240, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1446087891Jellyfish.jpg', '', '', '', '', 0, 'vasquezdvasquezd1446086429', 0, '0000-00-00 00:00:00', '2015-10-30 02:20:14', '2015-10-29 10:57:00'),
(241, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1446092136Jellyfish.jpg', '', '', '', '', 0, 'vasquezdvasquezd1446087891', 0, '0000-00-00 00:00:00', '2015-10-29 04:15:36', '2015-10-29 11:05:10'),
(242, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1446170159Jellyfish.jpg', '', '', '', '', 0, 'vasquezdvasquezd1446169608', 0, '0000-00-00 00:00:00', '2015-10-30 02:20:10', '2015-10-30 09:53:44'),
(243, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1446171399Desert.jpg', '', '', '', '', 0, 'vasquezdvasquezd1446170159', 0, '0000-00-00 00:00:00', '2015-10-30 02:20:07', '2015-10-30 09:56:08'),
(244, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1446171618Penguins.jpg', '', '', '', '', 0, 'vasquezdvasquezd1446171400', 0, '0000-00-00 00:00:00', '2015-10-30 02:20:18', '2015-10-30 10:19:06'),
(245, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1446171624Koala.jpg', '', '', '', '', 0, 'vasquezdvasquezd1446171618', 0, '0000-00-00 00:00:00', '2015-10-30 02:23:55', '2015-10-30 10:20:24'),
(246, 'vasquezb', 'vasquezd', 'photo', '', '', '', '1446171650Jellyfish.jpg', '', '', '', '', 0, 'vasquezbvasquezd1446171637', 0, '0000-00-00 00:00:00', '2015-10-30 02:23:41', '2015-10-30 10:20:50'),
(247, 'vasquezb', 'vasquezd', 'photo', '', '', '', '1446171851Jellyfish.jpg', '', '', '', '', 0, 'vasquezbvasquezd1446171815', 0, '2015-11-02 02:02:00', '2015-11-02 02:02:10', '2015-10-30 10:24:04'),
(248, 'vasquezb', 'vasquezd', 'photo', '', '', '', '1446429767Jellyfish.jpg', '', '', '', '', 0, 'vasquezbvasquezd1446429752', 0, '2015-11-02 02:21:06', '2015-11-02 03:03:47', '2015-11-02 11:02:46'),
(249, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1446430017Hydrangeas.jpg', '', '', '', '', 0, 'vasquezdvasquezd1446429779', 0, '0000-00-00 00:00:00', '2015-11-02 02:06:58', '2015-11-02 11:03:15'),
(250, 'vasquezd', 'vasquezb', 'photo', '', '', '', '1446430528Penguins.jpg', '', '', '', '', 0, 'vasquezdvasquezb1446430177', 0, '0000-00-00 00:00:00', '2015-11-02 02:38:52', '2015-11-02 11:09:48'),
(251, 'vasquezd', 'vasquezm', 'photo', '', '', '', '1446430811Koala.jpg', '', '', '', '', 0, 'vasquezdvasquezm1446430803', 0, '0000-00-00 00:00:00', '2015-11-03 02:05:29', '2015-11-02 11:20:10'),
(252, 'vasquezb', 'vasquezd', 'photo', '', '', '', '1446430881Lighthouse.jpg', '', '', '', '', 0, 'vasquezbvasquezd1446430876', 0, '0000-00-00 00:00:00', '2015-11-02 03:03:50', '2015-11-02 11:21:20'),
(253, 'vasquezd', 'vasquezb', 'video', '', 'https://www.youtube.com/watch?v=6b7AM2D0lyM', '6b7AM2D0lyM', '', '', '', '', '', 0, '', 0, '0000-00-00 00:00:00', '2015-11-02 02:42:27', '2015-11-02 11:40:35'),
(254, 'vasquezd', 'vasquezb', 'video', '', 'https://www.youtube.com/watch?v=6b7AM2D0lyM', '6b7AM2D0lyM', '', '', '', '', '', 0, '', 0, '0000-00-00 00:00:00', '2015-11-09 04:39:45', '2015-11-02 11:42:57'),
(255, 'vasquezb', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=6b7AM2D0lyM', '6b7AM2D0lyM', '', '', '', '', '', 0, '', 0, '0000-00-00 00:00:00', '2015-11-02 03:06:18', '2015-11-02 11:45:36'),
(256, 'vasquezb', 'vasquezd', 'article', '', 'http://news.discovery.com/history/mysterious-sky-city-photographed-over-china-151022.htm', '', '5636d1dcd439d671938289.jpg', '', '', 'Mysterious Sky City Photographed Over China ', 'A photo circulating on social media appears to show a flying city among clouds in China. Is it real, a mirage, or fake? ', 0, '', 0, '0000-00-00 00:00:00', '2015-11-02 03:06:15', '2015-11-02 12:01:04'),
(257, 'vasquezd', 'vasquezb', 'link', '', 'http://news.discovery.com/history/mysterious-sky-city-photographed-over-china-151022.htm', '', 'discovery.png', '', '', 'Mysterious &#039;Sky City&#039; Photographed Over China : Discovery News', '', 0, '', 1, '0000-00-00 00:00:00', '2015-11-02 03:03:00', '2015-11-02 03:03:00'),
(258, 'vasquezd', 'vasquezb', 'link', '', 'http://news.discovery.com/history/mysterious-sky-city-photographed-over-china-151022.htm', '', 'discovery.png', '', '', 'Mysterious &#039;Sky City&#039; Photographed Over China : Discovery News', '', 0, '', 0, '0000-00-00 00:00:00', '2015-11-26 04:31:49', '2015-11-02 03:04:59'),
(259, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1446433794Chrysanthemum.jpg', 'Chrysanthemum.jpg', '', '', 1, '', 0, '0000-00-00 00:00:00', '2015-11-02 03:15:12', '2015-11-02 03:09:54'),
(260, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1446434119Chrysanthemum.jpg', 'Chrysanthemum.jpg', '', '', 1, '', 0, '0000-00-00 00:00:00', '2015-11-02 03:16:02', '2015-11-02 03:15:19'),
(261, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1446434150Chrysanthemum.jpg', 'Chrysanthemum.jpg', '', '', 1, '', 0, '0000-00-00 00:00:00', '2015-11-02 03:16:05', '2015-11-02 03:15:50'),
(262, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1446434156Chrysanthemum.jpg', 'Chrysanthemum.jpg', '', '', 1, '', 0, '0000-00-00 00:00:00', '2015-11-02 03:16:08', '2015-11-02 03:15:56'),
(263, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1446434172Chrysanthemum.jpg', 'Chrysanthemum.jpg', '', '', 1, '', 0, '0000-00-00 00:00:00', '2015-11-02 03:16:17', '2015-11-02 03:16:12'),
(264, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1446434223Chrysanthemum.jpg', 'Chrysanthemum.jpg', '', '', 1, '', 0, '0000-00-00 00:00:00', '2015-11-02 03:17:07', '2015-11-02 03:17:03'),
(265, 'vasquezm', 'vasquezd', 'photo', '', '', '', '1446434276Jellyfish.jpg', '', '', '', '', 0, 'vasquezmvasquezd1446434270', 0, '0000-00-00 00:00:00', '2015-11-02 03:35:34', '2015-11-02 12:17:56'),
(266, 'vasquezb', 'vasquezb', 'video', '', 'https://www.youtube.com/watch?v=6b7AM2D0lyM', '6b7AM2D0lyM', '', '', '', '', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-02 12:18:14'),
(267, 'vasquezb', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=6b7AM2D0lyM', '6b7AM2D0lyM', '', '', '', '', '', 0, '', 1, '2016-02-11 04:40:48', '2016-02-11 04:40:48', '2015-11-02 12:18:47'),
(268, 'vasquezb', '27', 'photo', '', '', '', '1446437922Jellyfish.jpg', '', '', '', '', 0, 'vasquezb271446437915', 0, '0000-00-00 00:00:00', '2015-11-09 02:42:39', '2015-11-02 13:18:42'),
(269, 'vasquezb', '27', 'link', '', 'https://www.yahoo.com/', '', 'yahoo.png', '', '', 'Yahoo', '', 0, '', 0, '0000-00-00 00:00:00', '2015-11-09 02:42:33', '2015-11-02 04:19:14'),
(270, 'vasquezd', '27', 'video', '', 'https://www.youtube.com/watch?v=6b7AM2D0lyM', '6b7AM2D0lyM', '', '', '', '', '', 0, '', 0, '0000-00-00 00:00:00', '2015-11-09 02:42:27', '2015-11-02 13:26:16'),
(271, 'vasquezd', '27', 'video', '', 'https://www.youtube.com/watch?v=6b7AM2D0lyM', '6b7AM2D0lyM', '', '', '', '', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-02 13:26:30'),
(272, 'vasquezd', '27', 'link', '', 'https://www.youtube.com/watch?v=6b7AM2D0lyM', '', 'youtube.png', '', '', 'Seapony - Where We Go [OFFICIAL VIDEO] - YouTube', '', 0, '', 1, '0000-00-00 00:00:00', '2015-11-02 04:27:16', '2015-11-02 04:27:16'),
(273, 'vasquezd', '31', 'video', '', 'https://www.youtube.com/watch?v=6b7AM2D0lyM', '6b7AM2D0lyM', '', '', '', '', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-02 13:28:41'),
(274, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1446438989Lighthouse.jpg', '', '', '', '', 0, 'vasquezdvasquezd1446438981', 0, '0000-00-00 00:00:00', '2015-11-03 01:59:30', '2015-11-02 13:36:29'),
(275, 'vasquezd', '28', 'photo', '', '', '', '1446439003Chrysanthemum.jpg', '', '', '', '', 0, 'vasquezd281446438994', 1, '0000-00-00 00:00:00', '2015-11-02 04:36:43', '2015-11-02 13:36:43'),
(276, 'vasquezd', '27', 'photo', '', '', '', '1446439175Jellyfish.jpg', '', '', '', '', 0, 'vasquezd271446439170', 0, '0000-00-00 00:00:00', '2015-11-09 02:42:20', '2015-11-02 13:39:35'),
(277, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1446439197Lighthouse.jpg', '', '', '', '', 0, 'vasquezdvasquezd1446439190', 0, '0000-00-00 00:00:00', '2015-11-03 01:59:27', '2015-11-02 13:39:57'),
(278, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1446439458Jellyfish.jpg', '', '', '', '', 0, 'vasquezdvasquezd1446439451', 0, '0000-00-00 00:00:00', '2015-11-03 01:59:25', '2015-11-02 13:44:18'),
(279, 'vasquezd', '27', 'photo', '', '', '', '1446439467Tulips.jpg', '', '', '', '', 0, 'vasquezd271446439462', 0, '0000-00-00 00:00:00', '2015-11-09 02:42:23', '2015-11-02 13:44:27'),
(280, 'vasquezm', 'vasquezd', 'photo', '', '', '', '1446516408Jellyfish.jpg', '', '', '', '', 0, 'vasquezmvasquezd1446516334', 0, '0000-00-00 00:00:00', '2015-11-05 03:41:25', '2015-11-03 11:06:41'),
(281, 'vasquezd', '27', 'photo', '', '', '', '1447036808Chrysanthemum.jpg', '', '', '', '', 0, 'vasquezd271447036584', 1, '0000-00-00 00:00:00', '2015-11-09 02:40:08', '2015-11-09 11:36:35'),
(282, 'vasquezd', '27', 'photo', '', '', '', '1447036822Koala.jpg', '', '', '', '', 0, 'vasquezd271447036808', 0, '0000-00-00 00:00:00', '2015-11-09 02:42:00', '2015-11-09 11:40:22'),
(283, 'vasquezm', 'vasquezd', 'photo', '', '', '', '1447037406Jellyfish.jpg', '', '', '', '', 0, 'vasquezmvasquezd1447037395', 0, '0000-00-00 00:00:00', '2015-11-09 04:40:14', '2015-11-09 11:50:01'),
(284, 'vasquezd', '27', 'photo', '', '', '', '1447038519Hydrangeas.jpg', '', '', '', '', 0, 'vasquezd271447038239', 1, '0000-00-00 00:00:00', '2015-11-09 03:08:39', '2015-11-09 12:04:13'),
(285, 'vasquezd', '27', 'photo', '', '', '', '1447038529Koala.jpg', '', '', '', '', 0, 'vasquezd271447038523', 1, '0000-00-00 00:00:00', '2015-11-09 03:08:49', '2015-11-09 12:08:49'),
(286, 'vasquezb', 'vasquezd', 'photo', '', '', '', '1447038707Hydrangeas.jpg', '', '', '', '', 0, 'vasquezbvasquezd1447038693', 0, '0000-00-00 00:00:00', '2015-11-09 04:40:18', '2015-11-09 12:11:39'),
(287, 'vasquezb', 'vasquezm', 'photo', '', '', '', '1447038721Jellyfish.jpg', '', '', '', '', 0, 'vasquezbvasquezm1447038711', 1, '0000-00-00 00:00:00', '2015-11-09 03:12:01', '2015-11-09 12:11:58'),
(288, 'vasquezb', 'vasquezd', 'photo', '', '', '', '1447038752Jellyfish.jpg', '', '', '', '', 0, 'vasquezbvasquezd1447038747', 0, '0000-00-00 00:00:00', '2015-11-09 04:40:10', '2015-11-09 12:12:32'),
(289, 'vasquezd', '27', 'photo', '', '', '', '1447038895Tulips.jpg', '', '', '', '', 0, 'vasquezd271447038856', 1, '0000-00-00 00:00:00', '2015-11-09 03:14:55', '2015-11-09 12:14:55'),
(290, 'vasquezd', '27', 'photo', '', '', '', '1447039868Jellyfish.jpg', '', '', '', '', 0, 'vasquezd271447039845', 1, '0000-00-00 00:00:00', '2015-11-09 03:31:08', '2015-11-09 12:30:55'),
(291, 'vasquezb', '29', 'photo', '', '', '', '1447040533Hydrangeas.jpg', '', '', '', '', 0, 'vasquezb291447040527', 1, '0000-00-00 00:00:00', '2015-11-09 03:42:13', '2015-11-09 12:42:12'),
(292, 'vasquezb', '27', 'photo', '', '', '', '1447040572Lighthouse.jpg', '', '', '', '', 0, 'vasquezb271447040565', 1, '0000-00-00 00:00:00', '2015-11-09 03:42:52', '2015-11-09 12:42:52'),
(293, 'vasquezb', '27', 'photo', '', '', '', '1447041264Koala.jpg', '', '', '', '', 0, 'vasquezb271447041258', 1, '0000-00-00 00:00:00', '2015-11-09 03:54:24', '2015-11-09 12:54:24'),
(294, 'vasquezb', 'vasquezd', 'photo', '', '', '', '1447041275Lighthouse.jpg', '', '', '', '', 0, 'vasquezbvasquezd1447041268', 0, '0000-00-00 00:00:00', '2015-11-09 04:40:28', '2015-11-09 12:54:33'),
(295, 'vasquezb', 'vasquezd', 'photo', '', '', '', '1447041291Chrysanthemum.jpg', '', '', '', '', 0, 'vasquezbvasquezd1447041275', 0, '0000-00-00 00:00:00', '2015-11-09 04:40:06', '2015-11-09 12:54:43'),
(296, 'vasquezb', 'vasquezd', 'photo', '', '', '', '1447041348Lighthouse.jpg', '', '', '', '', 0, 'vasquezbvasquezd1447041338', 0, '0000-00-00 00:00:00', '2015-11-09 04:40:23', '2015-11-09 12:55:48'),
(297, 'vasquezm', '31', 'photo', '', '', '', '1447043564Lighthouse.jpg', '', '', '', '', 0, 'vasquezm311447043557', 1, '0000-00-00 00:00:00', '2015-11-09 04:32:44', '2015-11-09 13:32:43'),
(298, 'vasquezm', '28', 'photo', '', '', '', '1447043578Koala.jpg', '', '', '', '', 0, 'vasquezm281447043572', 1, '0000-00-00 00:00:00', '2015-11-09 04:32:58', '2015-11-09 13:32:57'),
(299, 'vasquezb', '27', 'photo', '', '', '', '1447043659Jellyfish.jpg', '', '', '', '', 0, 'vasquezb271447043653', 1, '0000-00-00 00:00:00', '2015-11-09 04:34:19', '2015-11-09 13:34:19'),
(300, 'vasquezb', '27', 'video', '', 'https://www.youtube.com/watch?v=36aeT8lVQGM', '36aeT8lVQGM', '', '', '', '', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-09 13:35:19'),
(301, 'vasquezd', 'vasquezb', 'video', 'Hi, what do you think of this band? I like them!', 'https://www.youtube.com/watch?v=De54PLA472o', 'De54PLA472o', '', '', '', '', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-09 13:39:35'),
(302, 'vasquezb', '27', 'photo', '', '', '', '1447121272Tulips.jpg', '', '', '', '', 0, 'vasquezb271447121259', 1, '0000-00-00 00:00:00', '2015-11-10 02:07:52', '2015-11-10 11:07:51'),
(303, 'vasquezm', '28', 'photo', '', '', '', '1447121320Hydrangeas.jpg', '', '', '', '', 0, 'vasquezm281447121314', 1, '0000-00-00 00:00:00', '2015-11-10 02:08:40', '2015-11-10 11:08:40'),
(304, 'vasquezm', 'vasquezd', 'item', '', 'http://www.target.com/p/case-logic-intrata-case-11-anthracite-int-111/-/A-21479222#prodSlot=medium_1_17&term=laptop+case', '', 'bag.jpg', '', '', 'Case Logic Intrata Case 11" - Anthracite', 'Features: Full Zip Enclosure, Exterior Pocket, Adjustable Shoulder Strap', 0, 'vasquezm481447295255', 0, '0000-00-00 00:00:00', '2015-11-27 02:38:28', '2015-11-12 11:27:47'),
(305, 'vasquezd', 'vasquezd', 'item', '', 'http://www.target.com/p/m-m-s-peanut-butter-chocolate-10-2-oz/-/A-13055526', '', 'mandm.jpg', '', '', 'M&M''s peanut butter chocolate 10.2 oz', '', 0, 'vasquezm491447299359', 1, '0000-00-00 00:00:00', '2015-11-27 03:44:52', '2015-11-12 12:36:07'),
(306, 'vasquezd', 'vasquezd', 'item', '', 'http://www.amazon.com/Tournament-Gorlan-Rangers-Apprentice-Early/dp/0399163611/ref=sr_1_1?ie=UTF8&qid=1447793245&sr=8-1&keywords=flanagan', '', 'flanagan.jpg', '', '', 'The Tournament at Gorlan (Ranger''s Apprentice: The Early Years)', 'The Tournament at Gorlan (Ranger''s Apprentice: The Early Years) [John A. Flanagan] on Amazon.com. *FREE* shipping on qualifying offers. <b>From John Flanagan, author of the worldwide bestselling Ranger''s Apprentice</b>â€”t<b>he first in a new prequel series featuringÂ one of our favorite Rangers', 0, '', 1, '0000-00-00 00:00:00', '2015-11-27 03:44:50', '2015-11-26 11:17:32'),
(307, 'vasquezd', 'vasquezd', 'article', '', 'http://finance.yahoo.com/news/most-5-major-shopping-holidays-142800766.html', '', '5656880d93d39522918978.jpg', '', '', 'How to make the most out of the 5 major shopping holidays - Yahoo Finance', 'From Yahoo Finance: Have you started your holiday shopping yet? According to a survey conducted by Offers.com, 19 percent of online shoppers will be starting their shopping on Thanksgiving and continuing through Cyber Monday, a trend that is up 45 percent year over year. This year is the first where we''ve seen several retailers announcing they will not be open on Thanksgiving or Black Friday.', 0, '', 0, '0000-00-00 00:00:00', '2015-12-03 03:44:05', '2015-11-26 13:18:23'),
(308, 'vasquezd', 'vasquezd', 'item', '', 'http://www.amazon.com/gp/product/0142406635/ref=s9_simh_gw_p14_d0_i3?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-1&pf_rd_r=13KJC391ECN2VMMF4BE0&pf_rd_t=36701&pf_rd_p=2079475242&pf_rd_i=desktop', '', '565688e2d4617946264250.jpg', '', '', 'The Ruins of Gorlan (The Ranger'';s Apprentice, Book 1): John A. Flanagan', 'The Ruins of Gorlan (The Ranger''s Apprentice, Book 1) [John A. Flanagan] on Amazon.com. *FREE* shipping on qualifying offers. <b>The international bestselling series with over 5 million copies sold in the U.S. alone</i>!</b> They have always scared him in the pastâ€”the Rangers', 0, '', 0, '0000-00-00 00:00:00', '2015-11-27 03:46:05', '2015-11-26 13:22:09'),
(309, 'vasquezd', 'vasquezd', 'item', 'Hi, I really like this book and wouldn''t mind getting it ', 'http://www.amazon.com/gp/product/148143229X/ref=s9_simh_gw_p14_d8_i1?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-4&pf_rd_r=1NXGG46XJAGZB23RARBK&pf_rd_t=36701&pf_rd_p=2090149782&pf_rd_i=desktop', '', '5657bb37d02f0416944788.jpg', '', '', 'Neverseen (Keeper of the Lost Cities)- Shannon Messenger', 'Neverseen (Keeper of the Lost Cities) Sophie battles the rebels and recovers dark memories from her past in this jaw-dropping fourth book in the bestselling Keeper of the Lost Cities series. Sophie Foster is on the run but at least she''s not alone. Her closest friends from the Lost Cities have gone with her to join the Black Swan. They still have doubts about the shadowy organization', 0, '', 1, '0000-00-00 00:00:00', '2015-11-27 03:44:42', '2015-11-27 11:11:06'),
(310, 'vasquezd', 'vasquezd', 'article', '', 'http://www.amazon.com/gp/product/148143229X/ref=s9_simh_gw_p14_d8_i1?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-4&pf_rd_r=1NXGG46XJAGZB23RARBK&pf_rd_t=36701&pf_rd_p=2090149782&pf_rd_i=desktop', '', '5657bd4589238206186408.jpg', '', '', 'Neverseen (Keeper of the Lost Cities): Shannon Messenger: 9781481432290: Amazon.com: Books', 'Neverseen (Keeper of the Lost Cities) [Shannon Messenger] on Amazon.com. *FREE* shipping on qualifying offers. Sophie battles the rebelsâ€”and recovers dark memories from her pastâ€”in this jaw-dropping fourth book in the bestselling Keeper of the Lost Cities series.<BR><BR>Sophie Foster is on the runâ€”but at least she''s not alone.<BR> <BR>Her closest friends from the Lost Cities have gone with her to join the Black Swan. They still have doubts about the shadowy organization', 0, '', 0, '0000-00-00 00:00:00', '2015-12-03 03:44:02', '2015-11-27 11:17:47'),
(311, 'vasquezd', 'vasquezd', 'item', '', 'http://www.amazon.com/gp/product/148143229X/ref=s9_simh_gw_p14_d8_i1?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-4&pf_rd_r=1NXGG46XJAGZB23RARBK&pf_rd_t=36701&pf_rd_p=2090149782&pf_rd_i=desktop', '', '5657bd4589238206186408.jpg', '', '', 'Neverseen (Keeper of the Lost Cities): Shannon Messenger', 'Neverseen (Keeper of the Lost Cities) [Shannon Messenger] on Amazon.com. *FREE* shipping on qualifying offers. Sophie battles the rebelsâ€”and recovers dark memories from her pastâ€”in this jaw-dropping fourth book in the bestselling Keeper of the Lost Cities series.<BR><BR>Sophie Foster is on the runâ€”but at least she''s not alone.<BR> <BR>Her closest friends from the Lost Cities have gone with her to join the Black Swan. They still have doubts about the shadowy organization', 0, '', 0, '0000-00-00 00:00:00', '2015-11-27 03:45:59', '2015-11-27 11:19:44'),
(312, 'vasquezd', 'vasquezd', 'item', '', 'http://www.guitarcenter.com/Boss/DD-20-Giga-Delay.gc', '', '565a7349f0622419139506.jpg', '', '', 'Boss DD-20 Giga Delay | Guitar Center', 'Shop for the Boss DD-20 Giga Delay and receive free shipping on your order and the guaranteed lowest price.', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-29 12:38:59'),
(313, 'vasquezd', 'vasquezb', 'item', '', 'http://www.guitarcenter.com/Gibson/2015-Les-Paul-Studio-SR.gc', '', '565a77a556e16372552568.jpg', '', '', 'Gibson 2015 Les Paul Studio SR | Guitar Center', 'Shop for the Gibson 2015 Les Paul Studio SR and receive free shipping on your order and the guaranteed lowest price.', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-29 12:57:52'),
(314, 'vasquezb', 'vasquezd', 'item', 'I really like this guitar! ', 'http://www.guitarcenter.com/Gibson/2015-Les-Paul-Studio-SR.gc', '', '565a79f7482ee478692875.jpg', '', '', 'Gibson 2015 Les Paul Studio SR | Guitar Center', 'Shop for the Gibson 2015 Les Paul Studio SR and receive free shipping on your order and the guaranteed lowest price.', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-29 13:07:24'),
(315, 'vasquezb', 'vasquezb', 'item', '', 'http://www.guitarcenter.com/Gibson/2016-Les-Paul-Studio-T-J26282.gc?pfm=sp', '', '565a7a5ccc1de615305647.jpg', '', '', 'Gibson 2016 Les Paul Studio T | Guitar Center', 'Shop for the Gibson 2016 Les Paul Studio T and receive free shipping on your order and the guaranteed lowest price.', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-29 13:10:20'),
(316, 'vasquezd', 'vasquezd', 'item', 'I love these and can never have too many =)', 'http://www.target.com/p/lindt-lindor-truffles-milk-chocolate-truffles-6-oz/-/A-12943029#prodSlot=medium_1_2&term=lindt', '', '565e83a711719331919881.jpg', '', '', 'Lindt Lindor Truffles Milk Chocolate Truffles 6 oz : Target', 'Find product information, ratings and reviews for a Lindt Lindor Truffles Milk Chocolate Truffles 6 oz.', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-02 14:37:55'),
(341, 'vasquezd', 'vasquezd', 'item', '', 'www.yahoo.com', '', '1450133664Penguins.jpg', '', '', '', '', 0, 'vasquezdvasquezd1450133477', 0, '0000-00-00 00:00:00', '2015-12-15 03:42:53', '2015-12-15 07:51:33'),
(342, 'vasquezd', 'vasquezd', 'item', '', 'www.koala.com', '', '1450133883Koala.jpg', '', '', 'this is a koala', '', 0, 'vasquezdvasquezd1450133665', 0, '0000-00-00 00:00:00', '2015-12-15 03:42:50', '2015-12-15 07:54:42'),
(343, 'vasquezd', 'vasquezd', 'item', '', 'http://www.amazon.com/Sony-50CRM80RS-CD-R-Audio-Spindle/dp/B0002ZDIKW/ref=sr_1_2?ie=UTF8&qid=1450133859&sr=8-2&keywords=sony+cd+r', '', '566f49727ae6d534261373.jpg', '', '', 'Amazon.com: Sony 50CRM80RS CD-R Audio 50 pk Spindle: Electronics', 'Amazon.com: Sony 50CRM80RS CD-R Audio 50 pk Spindle: Electronics', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-15 07:57:59'),
(345, 'vasquezd', 'vasquezd', 'text', 'hiyA', '', '', '', '', '', '', '', 0, '', 0, '0000-00-00 00:00:00', '2015-12-16 04:31:42', '2015-12-14 23:05:01'),
(346, 'vasquezd', 'vasquezd', 'text', 'YOA', '', '', '', '', '', '', '', 0, '', 0, '0000-00-00 00:00:00', '2015-12-16 04:31:38', '2015-12-14 23:06:46'),
(347, 'vasquezd', 'vasquezd', 'item', 'item me! ', '', '', '', '', '', '', '', 0, '', 0, '0000-00-00 00:00:00', '2015-12-14 23:25:09', '2015-12-14 23:09:33'),
(348, 'vasquezd', 'vasquezd', 'item', 'hello mate!', '', '', '', '', '', '', 'worms', 0, '', 0, '0000-00-00 00:00:00', '2015-12-14 23:25:06', '2015-12-14 23:20:17'),
(349, 'vasquezd', 'vasquezd', 'item', '', '', '', 'No file selected.', '', '', 'geege', '', 0, 'vasquezdvasquezd1450135366', 0, '0000-00-00 00:00:00', '2015-12-14 23:25:04', '2015-12-15 08:22:51'),
(350, 'vasquezd', 'vasquezd', 'item', '', '', '', 'No file selected.', '', '', '', '', 0, 'vasquezdvasquezd1450135491', 0, '0000-00-00 00:00:00', '2015-12-14 23:25:01', '2015-12-15 08:24:56'),
(351, 'vasquezd', 'vasquezd', 'item', 'd', 'c', '', '', '', '', 'a', 'b', 0, '', 0, '0000-00-00 00:00:00', '2015-12-15 03:36:30', '2015-12-14 23:27:41'),
(352, 'vasquezd', 'vasquezd', 'item', 'I wanna get a Wii U', 'http://www.amazon.com/gp/product/B00KWFCSB2/ref=s9_simh_gw_p63_d12_i1?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-3&pf_rd_r=1GHK7JH72HCJS1FDA7B7&pf_rd_t=36701&pf_rd_p=2084660942&pf_rd_i=desktop', '', '566f8bfa7783f564643924.jpg', '', '', 'Amazon.com: Super Mario Maker - Nintendo Wii U: Video Games', 'Amazon.com: Super Mario Maker - Nintendo Wii U: Video Games', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-15 12:41:52'),
(353, 'vasquezd', 'vasquezd', 'item', '', 'I would love a koala', '', '1450150963Koala.jpg', '', '', 'I would love a koala', '', 0, 'vasquezdvasquezd1450150917', 0, '0000-00-00 00:00:00', '2015-12-15 03:42:57', '2015-12-15 12:42:41'),
(354, 'vasquezd', 'vasquezd', 'item', 'I love this ', '', '', '', '', '', 'Journal', 'Any type of journal', 0, '', 0, '0000-00-00 00:00:00', '2015-12-15 03:44:26', '2015-12-15 03:43:27'),
(355, 'vasquezd', 'vasquezm', 'photo', '', '', '', '1451857854galadriel.jpg', '', '', '', '', 0, 'vasquezdvasquezm1451857609', 1, '0000-00-00 00:00:00', '2016-01-03 21:50:54', '2016-01-04 06:46:58'),
(356, 'vasquezd', 'vasquezm', 'video', '', 'https://www.youtube.com/watch?v=lO5UURtxKUU', 'lO5UURtxKUU', '', '', '', '', '', 0, '', 1, '0000-00-00 00:00:00', '2016-01-03 21:53:50', '2016-01-03 21:53:50'),
(357, 'vasquezd', 'vasquezd', 'text', 'yo!', '', '', '', '', '', '', '', 0, '', 0, '0000-00-00 00:00:00', '2016-01-20 05:48:32', '2016-01-03 22:09:12'),
(358, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1451858962david_old.jpg', 'david_old.jpg', '', '', 1, '', 0, '0000-00-00 00:00:00', '2016-01-20 05:48:27', '2016-01-03 22:09:22'),
(359, 'vasquezd', 'vasquezd', 'photo', '', '', '', '145186325510.jpg', '', '', '', '', 0, 'vasquezdvasquezd1451863028', 0, '0000-00-00 00:00:00', '2016-01-05 04:15:30', '2016-01-04 08:17:17'),
(360, 'vasquezd', 'vasquezd', 'photo', '', '', '', '14518635941450242443david_1.jpg', '', '', '', '', 0, 'vasquezdvasquezd1451863255', 0, '0000-00-00 00:00:00', '2016-01-05 04:15:26', '2016-01-04 08:21:05'),
(378, 'vasquezd', 'vasquezd', 'article', '', 'http://www.npr.org/sections/krulwich/2012/02/24/147367644/six-legged-giant-finds-secret-hideaway-hides-for-80-years', '', '569f2076d0aa5620260358.jpg', '', '', 'Six-Legged Giant Finds Secret Hideaway, Hides For 80 Years : Krulwich Wonders... : NPR', 'The insect is so large â€” as big as a human hand â€” it''s been dubbed a &quot;tree lobster.&quot; Presumed extinct, some enterprising entomologists found them on a barren hunk of rock in the middle of the ocean.', 0, '', 0, '0000-00-00 00:00:00', '2016-01-22 04:55:16', '2016-01-20 14:51:53'),
(385, 'Vasquezd', 'Vasquezd', 'article', '', 'https://www.yahoo.com/tech/russia-wants-target-near-earth-012123558.html', '', '56c10dc32d1f0301487628.jpg', '', '', 'Russia aims to point its ICBMs at the asteroid Apophis in 2036', 'Russian scientists are planning to tweak their ICBMs (intercontinental ballistic missiles) to target near-earth objects (NEOs), according to a report by news agency TASS. The news came from Sabit Saitgarayev, the leading researcher at the Makeyev Rocket Design Bureau. The projectiles couldÂ be aimed at', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-02-15 08:29:31'),
(386, 'Vasquezd', 'Vasquezd', 'link', '', 'http://tass.ru/en/science/855968', '', 'tass.png', '', '', 'TASS: Science &amp; Space - Russia&#039;s improved ballistic missiles to be tested as asteroid killers', '', 0, '', 1, '0000-00-00 00:00:00', '2016-02-14 23:51:14', '2016-02-14 23:51:14'),
(387, 'Vasquezd', 'Vasquezd', 'file', '', '', '', '', '145549442212.jpg', '12.jpg', '', '', 1, '', 1, '0000-00-00 00:00:00', '2016-02-15 00:00:22', '2016-02-15 00:00:22'),
(388, 'Vasquezd', 'Vasquezd', 'text', 'hiya!', '', '', '', '', '', '', '', 0, '', 1, '0000-00-00 00:00:00', '2016-02-15 00:02:50', '2016-02-15 00:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE IF NOT EXISTS `post_likes` (
  `post_like_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `liked_by` int(11) NOT NULL,
  `liked_by_name` varchar(255) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_like_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`post_like_id`, `post_id`, `liked_by`, `liked_by_name`, `time_stamp`) VALUES
(2, 1, 2, 'bilbo', '2015-04-17 03:01:04'),
(3, 175, 2, 'vasquezb', '2015-08-17 03:24:47'),
(4, 175, 2, 'vasquezm', '2015-08-17 03:23:13'),
(5, 174, 1, 'vasquezd', '2015-08-17 04:43:53'),
(6, 171, 1, 'vasquezd', '2015-08-17 04:44:20'),
(7, 169, 1, 'vasquezd', '2015-08-17 04:44:36'),
(9, 167, 1, 'vasquezd', '2015-08-17 04:46:08'),
(17, 164, 1, 'vasquezd', '2015-08-21 05:12:18'),
(18, 163, 1, 'vasquezd', '2015-08-21 05:12:20'),
(19, 162, 1, 'vasquezd', '2015-08-21 05:12:22'),
(20, 177, 1, 'vasquezd', '2015-08-21 05:13:18'),
(23, 175, 1, 'vasquezd', '2015-08-24 04:36:00'),
(24, 158, 1, 'vasquezd', '2015-08-28 23:16:16'),
(25, 151, 1, 'vasquezd', '2015-08-28 23:16:21'),
(26, 191, 1, 'vasquezd', '2015-09-03 21:15:28'),
(27, 191, 1, 'vasquezd', '2015-09-03 21:15:29'),
(28, 159, 1, 'vasquezd', '2015-10-13 02:30:43'),
(31, 381, 1, 'vasquezd', '2016-02-11 04:00:40'),
(32, 379, 1, 'vasquezd', '2016-02-11 04:00:54'),
(33, 267, 1, 'vasquezd', '2016-02-11 04:40:50'),
(34, 380, 1, 'Vasquezd', '2016-02-13 22:34:08'),
(35, 380, 1, 'Vasquezd', '2016-02-13 22:34:13');

-- --------------------------------------------------------

--
-- Table structure for table `squares`
--

CREATE TABLE IF NOT EXISTS `squares` (
  `square_id` int(11) NOT NULL AUTO_INCREMENT,
  `square_key` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `square_name` varchar(255) NOT NULL,
  `square_image` varchar(255) NOT NULL,
  `square_users` int(11) NOT NULL,
  `square_folders` int(11) NOT NULL,
  `square_messages` int(11) NOT NULL,
  `updated` timestamp NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`square_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `squares`
--

INSERT INTO `squares` (`square_id`, `square_key`, `created_by`, `square_name`, `square_image`, `square_users`, `square_folders`, `square_messages`, `updated`, `created`) VALUES
(48, '0.49892100 1447129263564170af79ce90.87354237', 'vasquezd', '', '', 48, 48, 48, '0000-00-00 00:00:00', '2015-11-10 04:21:03'),
(49, '0.84793600 14472950515643f84bcf0400.54264010', 'vasquezb', '', '', 49, 49, 49, '0000-00-00 00:00:00', '2015-11-12 02:24:11'),
(50, '0.38424200 14472950835643f86b5dcf22.06241185', 'vasquezb', '', '', 50, 50, 50, '0000-00-00 00:00:00', '2015-11-12 02:24:43'),
(51, '0.20210700 14472968905643ff7a3157b2.63908973', 'vasquezd', '', '', 51, 51, 51, '0000-00-00 00:00:00', '2015-11-12 02:54:50'),
(52, '0.15750800 144730028856440cc0267444.85631917', 'vasquezb', '', '', 52, 52, 52, '0000-00-00 00:00:00', '2015-11-12 03:51:28');

-- --------------------------------------------------------

--
-- Table structure for table `square_users`
--

CREATE TABLE IF NOT EXISTS `square_users` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT,
  `square_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL,
  PRIMARY KEY (`primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=114 ;

--
-- Dumping data for table `square_users`
--

INSERT INTO `square_users` (`primary_id`, `square_id`, `user_name`, `status`, `created`, `updated`) VALUES
(97, 48, 'vasquezd', 1, '2015-11-10 04:21:03', '0000-00-00 00:00:00'),
(98, 48, 'vasquezj', 0, '2015-11-10 04:21:03', '0000-00-00 00:00:00'),
(99, 48, 'vasquezb', 0, '2015-11-10 04:21:03', '0000-00-00 00:00:00'),
(100, 48, 'vasquezm', 0, '2015-11-10 04:21:03', '0000-00-00 00:00:00'),
(101, 49, 'vasquezb', 1, '2015-11-12 02:24:12', '0000-00-00 00:00:00'),
(102, 49, 'vasquezm', 1, '2015-11-12 02:24:12', '0000-00-00 00:00:00'),
(103, 49, 'vasquezd', 1, '2015-11-12 02:24:12', '0000-00-00 00:00:00'),
(104, 50, 'vasquezb', 1, '2015-11-12 02:24:43', '0000-00-00 00:00:00'),
(105, 50, 'vasquezm', 1, '2015-11-12 02:24:43', '0000-00-00 00:00:00'),
(106, 50, 'vasquezd', 1, '2015-11-12 02:24:47', '0000-00-00 00:00:00'),
(107, 51, 'vasquezd', 1, '2015-11-12 02:54:50', '0000-00-00 00:00:00'),
(108, 51, 'vasquezj', 0, '2015-11-12 02:54:50', '0000-00-00 00:00:00'),
(109, 51, 'vasquezb', 0, '2015-11-12 02:54:50', '0000-00-00 00:00:00'),
(110, 51, 'vasquezm', 0, '2015-11-12 02:54:50', '0000-00-00 00:00:00'),
(111, 52, 'vasquezb', 1, '2015-11-12 03:51:28', '0000-00-00 00:00:00'),
(112, 52, 'vasquezm', 1, '2015-11-12 03:51:28', '0000-00-00 00:00:00'),
(113, 52, 'vasquezd', 1, '2015-11-12 03:51:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE IF NOT EXISTS `user_login` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(15) NOT NULL,
  `salt` int(11) NOT NULL,
  `password` varchar(40) NOT NULL,
  `last_login` timestamp NOT NULL,
  `last_logout` timestamp NOT NULL,
  `login_total` int(11) NOT NULL,
  `test` varchar(255) NOT NULL,
  UNIQUE KEY `user_id_2` (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_name_2` (`user_name`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `salt`, `password`, `last_login`, `last_logout`, `login_total`, `test`) VALUES
(1, 'vasquezd', 1408593605, 'f62c9d59b1b2cbe2b6462784e1d6a550f1afbe85', '2016-02-27 20:35:46', '2016-02-16 04:37:08', 25, 'vasquezb'),
(2, 'vasquezm', 1408593661, '01383c5e20acbf7898d0b8962d68e022691ce30c', '2015-11-12 03:35:55', '2015-11-12 03:36:09', 0, 'vasquezb'),
(3, 'vasquezb', 1408593651, 'c2975efb9c72c5d1a5c45593b2dbac99ed71c608', '2016-01-30 22:42:58', '2015-11-29 04:10:43', 0, 'vasquezb'),
(4, 'vasquezj', 1408593688, 'b5d03b353dc2dcce9ae1f190a311f1885328da61', '2015-11-12 03:39:29', '2015-11-12 03:39:52', 0, 'vasquezb'),
(68, 'testthree', 1454110685, 'a427445176a59a1754c1d08d491c6c78fedb7999', '2016-01-29 23:38:30', '0000-00-00 00:00:00', 0, ''),
(69, 'vasqueznew', 1454193155, '8633b3066abd991180c84f70b84c7397a7f01701', '2016-01-30 22:32:50', '2016-01-30 22:41:24', 0, ''),
(70, 'testone', 1454193644, '0b1a8635c3097aeca858b042b755f11b0e776c4a', '2016-01-30 22:42:28', '2016-01-30 22:42:38', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
  `user_profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `root_folder` varchar(255) NOT NULL,
  `biography` text NOT NULL,
  `university` varchar(50) NOT NULL,
  `updated` timestamp NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_profile_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=114 ;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_profile_id`, `user_id`, `user_name`, `email`, `image_name`, `first_name`, `last_name`, `root_folder`, `biography`, `university`, `updated`, `created`) VALUES
(46, 1, 'vasquezd', 'Vasquezd@onid.orst.edu', '145453904711_1.jpg', 'David', 'Vasquez', 'Vasquezd', '', 'Oregon State ', '2015-08-03 02:39:59', '2014-08-21 11:00:05'),
(47, 2, 'vasquezm', 'vasquezm@shareshare.com', 'matt.jpg', 'Matt', 'Robert', '', 'This is matts page!', '', '2015-05-04 09:37:27', '0000-00-00 00:00:00'),
(48, 3, 'vasquezb', 'vasquezb@shareshare.com', 'brian.jpg', 'Brian', 'Vasquez', '', 'this is brian''s page! ', '', '2015-05-04 10:51:45', '0000-00-00 00:00:00'),
(49, 4, 'vasquezj', 'vasquezj@shareshare.com', 'x10.jpg', 'Elsie', 'Smith', '', 'this is my page!', '', '2015-08-28 03:48:25', '0000-00-00 00:00:00'),
(111, 68, 'testthree', 'Vasquez@onid.orst.edu', 'david.jpg', 'sadf', 'awef', 'testthree', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-01-29 23:38:05'),
(112, 69, 'vasqueznew', 'vasquezd@onid.orst.edu', 'david.jpg', 'david', 'new', 'vasqueznew', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-01-30 22:32:35'),
(113, 70, 'testone', 'vasquezd@onid.orst.edu', 'david.jpg', 'ne', 'newe', 'testone', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-01-30 22:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_size`
--

CREATE TABLE IF NOT EXISTS `user_size` (
  `primary_key` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_shirt` varchar(255) NOT NULL,
  `user_sweater` varchar(255) NOT NULL,
  `user_coat` varchar(255) NOT NULL,
  `user_jeans` varchar(255) NOT NULL,
  `user_pants` varchar(255) NOT NULL,
  `user_dress_size` varchar(255) NOT NULL,
  `user_shoes` varchar(255) NOT NULL,
  PRIMARY KEY (`primary_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `user_size`
--

INSERT INTO `user_size` (`primary_key`, `user_name`, `birthday`, `user_id`, `user_shirt`, `user_sweater`, `user_coat`, `user_jeans`, `user_pants`, `user_dress_size`, `user_shoes`) VALUES
(1, 'vasquezd', 'December 3', 1, 'Medium', 'Medium', 'medium or large', '34 x 30 or 33 x 30', '', '', '12'),
(2, 'vasquezb', 'May 28', 3, 'large', 'large', 'medium or large', '34 x 30 or 33 x 30', '', '', '12'),
(3, 'frodobaggins', 'December 3', 38, '', '', '', '', '', '', ''),
(29, 'testthree', '', 68, '', '', '', '', '', '', ''),
(30, 'vasqueznew', '', 69, '', '', '', '', '', '', ''),
(31, 'testone', '', 70, '', '', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
