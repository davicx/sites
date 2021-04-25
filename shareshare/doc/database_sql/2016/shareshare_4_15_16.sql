-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2016 at 11:47 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=154 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `square_id`, `post_id`, `parent`, `is_folder`, `folder_name`, `file_name`, `file_type`, `file_name_server`, `file_path_server`, `file_image`, `file_path`, `user_id`, `user_name`, `file_status`, `file_seen`, `recycle_status`, `unique_id`, `file_created`, `file_last_modified`) VALUES
(134, 0, 0, 0, 1, 'david', 'folder.png', '', 'folder.png', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads/folder.png', 'folder.png', '---------0-', 1, 'vasquezd', 1, 0, 0, '1459539813042', '2016-04-01 19:43:33', '0000-00-00 00:00:00'),
(135, 0, 0, 0, 0, 'file_', 'Koala.jpg', 'jpg', '1459540124Koala.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1459540124Koala.jpg', '---------0-', 0, 'vasquezd', 1, 0, 0, '', '2016-04-01 19:48:44', '2016-04-01 19:48:44'),
(136, 0, 0, 0, 0, 'file_', 'Jellyfish.jpg', 'jpg', '1459540410Jellyfish.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1459540410Jellyfish.jpg', '---------0-', 0, 'vasquezd', 1, 0, 0, '', '2016-04-01 19:53:30', '2016-04-01 19:53:30'),
(137, 0, 0, 0, 0, 'file_', 'Career Services.docx', 'docx', '1459540442Career_Services.docx', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', 'word.png', '---------0-', 0, 'vasquezd', 1, 0, 0, '', '2016-04-01 19:54:02', '2016-04-01 19:54:02'),
(138, 0, 0, 0, 0, 'file_', 'Cover Letter- Vasquez.doc', 'doc', '1459540519Cover_Letter-_Vasquez.doc', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', 'word.png', '---------0-', 0, 'vasquezd', 1, 0, 0, '', '2016-04-01 19:55:19', '2016-04-01 19:55:19'),
(139, 0, 0, 0, 0, 'file_', 'Tulips.jpg', 'jpg', '1459542429Tulips.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1459542429Tulips.jpg', '---------0-', 0, 'vasquezd', 1, 0, 0, '', '2016-04-01 20:27:09', '2016-04-01 20:27:09'),
(140, 0, 393, 0, 0, '', 'Koala.jpg', '', '1459634120Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1459634116', 1, 0, 0, '', '2016-04-02 21:55:20', '0000-00-00 00:00:00'),
(141, 0, 395, 0, 0, '', 'Lighthouse.jpg', '', '1459811356Lighthouse.jpg', '', '', '', 0, 'vasquezdvasquezd1459811351', 1, 0, 0, '', '2016-04-04 23:09:16', '0000-00-00 00:00:00'),
(142, 0, 395, 0, 0, '', 'Lighthouse.jpg', '', '1459811359Lighthouse.jpg', '', '', '', 0, 'vasquezdvasquezd1459811351', 1, 0, 0, '', '2016-04-04 23:09:19', '0000-00-00 00:00:00'),
(143, 0, 395, 0, 0, '', 'Lighthouse.jpg', '', '1459811368Lighthouse.jpg', '', '', '', 0, 'vasquezdvasquezd1459811351', 1, 0, 0, '', '2016-04-04 23:09:28', '0000-00-00 00:00:00'),
(144, 0, 395, 0, 0, '', 'Lighthouse.jpg', '', '1459811395Lighthouse.jpg', '', '', '', 0, 'vasquezdvasquezd1459811351', 1, 0, 0, '', '2016-04-04 23:09:55', '0000-00-00 00:00:00'),
(145, 0, 395, 0, 0, '', 'Lighthouse.jpg', '', '1459811466Lighthouse.jpg', '', '', '', 0, 'vasquezdvasquezd1459811351', 1, 0, 0, '', '2016-04-04 23:11:06', '0000-00-00 00:00:00'),
(146, 0, 395, 0, 0, '', 'Lighthouse.jpg', '', '1459811474Lighthouse.jpg', '', '', '', 0, 'vasquezdvasquezd1459811351', 1, 0, 0, '', '2016-04-04 23:11:14', '0000-00-00 00:00:00'),
(147, 0, 396, 0, 0, '', 'Chrysanthemum.jpg', '', '1459894729Chrysanthemum.jpg', '', '', '', 0, 'vasquezdvasquezd1459894718', 1, 0, 0, '', '2016-04-05 22:18:49', '0000-00-00 00:00:00'),
(148, 0, 396, 0, 0, '', 'Chrysanthemum.jpg', '', '1459894732Chrysanthemum.jpg', '', '', '', 0, 'vasquezdvasquezd1459894718', 1, 0, 0, '', '2016-04-05 22:18:52', '0000-00-00 00:00:00'),
(149, 0, 397, 0, 0, '', 'Lighthouse.jpg', '', '1459895538Lighthouse.jpg', '', '', '', 0, 'vasquezdvasquezd1459895531', 1, 0, 0, '', '2016-04-05 22:32:18', '0000-00-00 00:00:00'),
(150, 0, 402, 0, 0, '', 'Koala.jpg', '', '1459896029Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1459896022', 1, 0, 0, '', '2016-04-05 22:40:29', '0000-00-00 00:00:00'),
(151, 0, 402, 0, 0, '', 'Koala.jpg', '', '1459896036Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1459896022', 1, 0, 0, '', '2016-04-05 22:40:36', '0000-00-00 00:00:00'),
(152, 0, 1, 0, 0, '', 'Lighthouse.jpg', '', '1460147128Lighthouse.jpg', '', '', '', 0, 'vasquezdvasquezd1460147115', 1, 0, 0, '', '2016-04-08 20:25:28', '0000-00-00 00:00:00'),
(153, 0, 2, 0, 0, '', 'Desert.jpg', '', '1460329234Desert.jpg', '', '', '', 0, 'vasquezdvasquezd1460329230', 1, 0, 0, '', '2016-04-10 23:00:34', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

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
(71, 0, 0, 'testone', '', '', '', '', '', '2016-01-30 22:40:44', '0000-00-00 00:00:00', '', 'testone'),
(72, 0, 0, 'hellothere2', '', '', '', '', '', '2016-04-10 23:22:48', '0000-00-00 00:00:00', '', 'hellothere2'),
(73, 0, 0, 'hellothere4', '', '', '', '', '', '2016-04-10 23:25:43', '0000-00-00 00:00:00', '', 'hellothere4'),
(74, 0, 0, 'hellohello', '', '', '', '', '', '2016-04-10 23:31:33', '0000-00-00 00:00:00', '', 'hellohello'),
(75, 0, 0, 'hellothere', '', '', '', '', '', '2016-04-11 21:51:37', '0000-00-00 00:00:00', '', 'hellothere');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

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
(44, 'vasquezd', 1, 'testone', 70, 170, '2016-01-30 22:40:44'),
(45, 'vasquezd', 1, 'vasquezj', 4, 0, '2015-10-23 03:22:40'),
(46, 'vasquezj', 4, 'vasquezd', 1, 0, '2015-10-23 03:22:40'),
(47, 'hellothere2', 71, 'vasquezd', 1, 711, '2016-04-10 23:22:48'),
(48, 'vasquezd', 1, 'hellothere2', 71, 171, '2016-04-10 23:22:48'),
(49, 'hellothere4', 72, 'vasquezd', 1, 721, '2016-04-10 23:25:43'),
(50, 'vasquezd', 1, 'hellothere4', 72, 172, '2016-04-10 23:25:43'),
(51, 'hellohello', 73, 'vasquezd', 1, 731, '2016-04-10 23:31:33'),
(52, 'vasquezd', 1, 'hellohello', 73, 173, '2016-04-10 23:31:33'),
(53, 'hellothere', 74, 'vasquezd', 1, 741, '2016-04-11 21:51:37'),
(54, 'vasquezd', 1, 'hellothere', 74, 174, '2016-04-11 21:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_key` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `group_type` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `group_image` varchar(255) NOT NULL,
  `group_users` int(11) NOT NULL,
  `group_folders` int(11) NOT NULL,
  `group_messages` int(11) NOT NULL,
  `updated` timestamp NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=94 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_key`, `created_by`, `group_type`, `group_name`, `group_image`, `group_users`, `group_folders`, `group_messages`, `updated`, `created`) VALUES
(88, '0.04133800 1460411299570c1ba30a17a9.02805450', 'vasquezd', '', 'yoyoyoyoyo', '', 88, 88, 88, '0000-00-00 00:00:00', '2016-04-11 21:48:19'),
(89, '0.59089100 1460411355570c1bdb9042b1.01049561', 'vasquezd', '', 'yoyo', '', 0, 0, 0, '0000-00-00 00:00:00', '2016-04-11 21:49:15'),
(90, '0.10915100 1460412925570c21fd1aa5f5.20836181', 'vasquezd', '', 'David 500', '', 90, 90, 90, '0000-00-00 00:00:00', '2016-04-11 22:15:25'),
(91, '0.75688400 1460417505570c33e1b8c940.14877903', 'vasquezd', '', 'David Vasquez', '', 0, 0, 0, '0000-00-00 00:00:00', '2016-04-11 23:31:45'),
(92, '0.44728400 1460417523570c33f36d3349.03441575', 'vasquezd', '', 'vasquezd''s Group', '', 92, 92, 92, '0000-00-00 00:00:00', '2016-04-11 23:32:03'),
(93, '0.26898100 1460583376570ebbd041ab50.23862057', 'vasquezd', '', 'vasquezd''s Group', '', 93, 93, 93, '0000-00-00 00:00:00', '2016-04-13 21:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `group_users`
--

CREATE TABLE IF NOT EXISTS `group_users` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `active_member` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL,
  PRIMARY KEY (`primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=197 ;

--
-- Dumping data for table `group_users`
--

INSERT INTO `group_users` (`primary_id`, `group_id`, `user_name`, `active_member`, `created`, `updated`) VALUES
(168, 88, 'vasquezd', 1, '2016-04-11 21:48:19', '0000-00-00 00:00:00'),
(169, 88, 'vasquezb', 0, '2016-04-11 21:48:19', '0000-00-00 00:00:00'),
(170, 88, 'vasquezm', 1, '2016-04-11 21:48:19', '0000-00-00 00:00:00'),
(172, 89, 'hellothere', 1, '2016-04-11 21:51:37', '0000-00-00 00:00:00'),
(173, 88, 'baggins2', 0, '2016-04-11 21:53:08', '0000-00-00 00:00:00'),
(174, 88, 'frodobaggins', 0, '2016-04-11 21:53:08', '0000-00-00 00:00:00'),
(175, 88, 'testone', 0, '2016-04-11 21:53:08', '0000-00-00 00:00:00'),
(176, 88, 'vasquezj', 0, '2016-04-11 21:53:08', '0000-00-00 00:00:00'),
(177, 90, 'vasquezd', 1, '2016-04-11 22:15:25', '0000-00-00 00:00:00'),
(178, 90, 'vasquezb', 0, '2016-04-11 22:15:25', '0000-00-00 00:00:00'),
(179, 90, 'vasquezm', 0, '2016-04-11 22:15:25', '0000-00-00 00:00:00'),
(180, 91, 'vasquezd', 1, '2016-04-11 23:31:45', '0000-00-00 00:00:00'),
(181, 92, 'vasquezd', 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(182, 92, 'vasquezb', 0, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(183, 92, 'vasquezm', 0, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(184, 92, 'baggins2', 0, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(185, 92, 'frodobaggins', 0, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(186, 92, 'testone', 0, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(187, 92, 'vasquezj', 0, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(188, 92, 'hellothere2', 0, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(189, 92, 'hellothere4', 0, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(190, 92, 'hellohello', 0, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(191, 92, 'hellothere', 0, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(192, 88, 'james', 0, '2016-04-11 21:53:08', '2016-04-12 23:23:01'),
(193, 88, 'vasquezr', 0, '2016-04-11 21:53:08', '2016-04-12 23:23:08'),
(194, 93, 'vasquezd', 1, '2016-04-13 21:36:16', '0000-00-00 00:00:00'),
(195, 93, 'vasquezb', 0, '2016-04-13 21:36:16', '0000-00-00 00:00:00'),
(196, 93, 'vasquezm', 0, '2016-04-13 21:36:16', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=177 ;

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
(170, 'Wall Posts', 0, 0, 'http://tass.ru/en/science/855968', 'TASS: Science &amp; Space - Russia&#039;s improved ballistic missiles to be tested as asteroid killers', 'Vasquezd', 'Vasquezd', 'tass.png', 'tass.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-02-14 23:51:15', '0000-00-00 00:00:00'),
(171, 'wall_posts', 0, 0, 'http://www.amazon.com/gp/product/B00T6UD7BY/ref=s9_nwrsa_gw_g318_i4_r?ie=UTF8&fpl=fresh&pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-1&pf_rd_r=12SWQNT27RDXZ3F39YP7&pf_rd_t=36701&pf_rd_p=2437869842&pf_rd_i=desktop', 'Amazon.com: The Hunger Games: Mockingjay Part 1: Jennifer Lawrence, Josh Hutcherson, Liam Hemsworth, Woody Harrelson: Amazon   Digital Services LLC', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-03-27 23:07:42', '0000-00-00 00:00:00'),
(172, 'wall_posts', 0, 0, 'http://www.amazon.com/gp/product/B00T6UD7BY/ref=s9_nwrsa_gw_g318_i4_r?ie=UTF8&fpl=fresh&pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-1&pf_rd_r=12SWQNT27RDXZ3F39YP7&pf_rd_t=36701&pf_rd_p=2437869842&pf_rd_i=desktop', 'Amazon.com: The Hunger Games: Mockingjay Part 1: Jennifer Lawrence, Josh Hutcherson, Liam Hemsworth, Woody Harrelson: Amazon   Digital Services LLC', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-03-27 23:07:53', '0000-00-00 00:00:00'),
(173, 'wall_posts', 0, 0, 'http://www.amazon.com/gp/product/B00T6UD7BY/ref=s9_nwrsa_gw_g318_i4_r?ie=UTF8&fpl=fresh&pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-1&pf_rd_r=12SWQNT27RDXZ3F39YP7&pf_rd_t=36701&pf_rd_p=2437869842&pf_rd_i=desktop', 'Amazon.com: The Hunger Games: Mockingjay Part 1: Jennifer Lawrence, Josh Hutcherson, Liam Hemsworth, Woody Harrelson: Amazon   Digital Services LLC', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-03-27 23:07:56', '0000-00-00 00:00:00'),
(174, 'wall_posts', 0, 0, 'http://www.amazon.com/gp/product/B00L83TQR6/ref=pd_cbs__4', 'Amazon.com: Transformers: Age of Extinction: Mark Wahlberg, Stanley Tucci, John Goodman, Kelsey Grammer: Amazon   Digital Services LLC', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-03-27 23:08:40', '0000-00-00 00:00:00'),
(175, 'wall_posts', 0, 0, 'http://www.amazon.com/Mossflower-Redwall-Book-Brian-Jacques/dp/0142302384/ref=sr_1_1?ie=UTF8&qid=1459895923&sr=8-1&keywords=mossflower', 'Amazon.com: Mossflower (Redwall, Book 2) (9780142302385): Brian Jacques, Gary Chalk: Books', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-04-05 22:39:11', '0000-00-00 00:00:00'),
(176, 'wall_posts', 0, 0, 'http://www.amazon.com/Mossflower-Redwall-Book-Brian-Jacques/dp/0142302384/ref=sr_1_1?ie=UTF8&qid=1459895923&sr=8-1&keywords=mossflower', 'Amazon.com: Mossflower (Redwall, Book 2) (9780142302385): Brian Jacques, Gary Chalk: Books', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-04-05 22:40:22', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lists`
--

CREATE TABLE IF NOT EXISTS `lists` (
  `primary_list_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `list_parent` int(11) NOT NULL,
  `list_to` varchar(2083) NOT NULL,
  `list_from` varchar(255) NOT NULL,
  `list_sub_type` varchar(255) NOT NULL,
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
  PRIMARY KEY (`primary_list_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=346 ;

--
-- Dumping data for table `lists`
--

INSERT INTO `lists` (`primary_list_id`, `list_id`, `list_parent`, `list_to`, `list_from`, `list_sub_type`, `list_title`, `list_caption`, `list_url`, `video_code`, `image_url`, `file_url`, `file_name`, `article_title`, `article_text`, `unique_id`, `list_status`, `contains_icon`, `comment_seen`, `updated`, `created`) VALUES
(280, 0, 0, 'vasquezd', 'vasquezd', 'file', 'Miyazaki Photo', 'change', '', '', 'background_26.jpg', '', '', '', '', '', 1, 1, '2015-11-02 20:41:12', '2016-03-27 22:49:18', '2015-11-02 20:41:12'),
(281, 2, 0, 'vasquezd', 'vasquezd', 'file', 'Miyazaki Photo', 'david', '', '', 'background_33.jpg', '', '', '', '', '', 1, 1, '2015-11-03 04:14:03', '2016-03-27 22:45:12', '2015-11-02 20:41:12'),
(338, 0, 0, 'vasquezd', 'vasquezd', 'file', '', ' ', '', '', '1459636377Koala.jpg', '1459636377Koala.jpg', 'Koala.jpg', '', '', '', 1, 0, '0000-00-00 00:00:00', '2016-04-02 22:32:57', '2016-04-02 22:32:57'),
(339, 0, 0, 'vasquezd', 'vasquezd', 'note', '', ' hola! ', '', '', '', '', '', '', '', '', 1, 0, '0000-00-00 00:00:00', '2016-04-02 22:39:42', '2016-04-02 22:39:42'),
(340, 0, 102, 'vasquezd', 'vasquezd', 'file', '', 'so much to do!! ', '', '', '1459637173Desert.jpg', '1459637173Desert.jpg', 'Desert.jpg', '', '', '', 1, 0, '0000-00-00 00:00:00', '2016-04-02 23:36:24', '2016-04-02 22:46:13'),
(341, 0, 0, 'vasquezd', 'vasquezd', 'file', '', 'yoyo', '', '', 'unknown.png', '1459637240test.docx', 'test.docx', '', '', '', 1, 0, '0000-00-00 00:00:00', '2016-04-04 23:15:36', '2016-04-02 22:47:20'),
(342, 0, 2, 'vasquezd', 'vasquezd', 'note', '', 'new', '', '', '', '', '', '', '', '', 1, 0, '0000-00-00 00:00:00', '2016-04-02 23:25:40', '2016-04-02 23:25:40'),
(343, 0, 2, 'vasquezd', 'vasquezd', 'file', '', ' ', '', '', '1459807345Koala.jpg', '1459807345Koala.jpg', 'Koala.jpg', '', '', '', 1, 0, '0000-00-00 00:00:00', '2016-04-04 22:02:47', '2016-04-04 22:02:25'),
(344, 0, 0, 'vasquezd', 'vasquezd', 'file', '', ' ', '', '', '1459807351Chrysanthemum.jpg', '1459807351Chrysanthemum.jpg', 'Chrysanthemum.jpg', '', '', '', 1, 0, '0000-00-00 00:00:00', '2016-04-04 22:02:31', '2016-04-04 22:02:31'),
(345, 0, 0, 'vasquezd', 'vasquezd', 'note', '', ' hi', '', '', '', '', '', '', '', '', 1, 0, '0000-00-00 00:00:00', '2016-04-08 20:15:17', '2016-04-08 20:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `master_list`
--

CREATE TABLE IF NOT EXISTS `master_list` (
  `list_primary_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_type` varchar(255) NOT NULL,
  `list_name` varchar(255) NOT NULL,
  `list_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `unique_key` varchar(255) NOT NULL,
  `recycle_status` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`list_primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `master_list`
--

INSERT INTO `master_list` (`list_primary_id`, `list_type`, `list_name`, `list_id`, `group_id`, `user_name`, `user_id`, `unique_key`, `recycle_status`, `updated`, `created`) VALUES
(89, 'lists', 'Shared with Chris ', 1, 0, 'vasquezd', 1, '', 0, '2016-03-27 22:01:06', '0000-00-00 00:00:00'),
(90, 'lists', 'School Links', 2, 0, 'vasquezd', 1, '', 0, '2016-03-27 22:08:10', '0000-00-00 00:00:00'),
(91, 'wishlist', 'School Links', 3, 0, 'vasquezd', 1, '', 0, '2016-03-27 22:01:06', '0000-00-00 00:00:00'),
(92, 'wishlist', 'Birthday', 4, 0, 'vasquezd', 1, '', 0, '2016-03-27 22:01:06', '0000-00-00 00:00:00'),
(102, 'lists', 'saw', 102, 0, 'vasquezd', 1, 'deb87169c107acb0c88f43622bf4b1f5', 0, '2016-03-27 23:52:10', '2016-03-27 23:52:10'),
(103, 'lists', 'doby', 103, 0, 'vasquezd', 1, '5cf975e9ccf033f5208d499b44ca2d89', 0, '2016-03-30 22:33:58', '2016-03-30 22:33:58'),
(104, 'lists', 'doby', 104, 0, 'vasquezd', 1, '843368d6c5201bb6ca2edda2d0dc7bc2', 0, '2016-03-30 22:34:00', '2016-03-30 22:34:00'),
(105, 'lists', 'davey', 105, 0, 'vasquezd', 1, '5ff3a57249f088d2bf7de9c0543df5fd', 0, '2016-03-30 22:35:07', '2016-03-30 22:35:07'),
(106, 'lists', 'hola', 106, 0, 'vasquezd', 1, '46f07b5e7c4edc203009c6bfef00c9f5', 0, '2016-04-05 22:09:56', '2016-04-05 22:09:56'),
(107, 'lists', 'new', 107, 0, 'vasquezd', 1, '1781f6f140b2e1bc1c51cdb8671c6b04', 0, '2016-04-05 22:16:43', '2016-04-05 22:16:43'),
(108, 'wishlist', 'Davey New!', 108, 20, 'vasquezd', 1, '6cba961ad352bf834b1744796c9b6626', 0, '2016-04-13 21:44:51', '2016-04-05 22:18:35');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=419 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `notification_from`, `notification_to`, `notification_time`, `type`, `notification_header`, `category`, `sub_category`, `link_url`, `group_id`, `post_id`, `from_logged_in_user`, `status_unseen`, `clicked`) VALUES
(398, 'vasquezd', 'vasquezb', '2016-04-11 21:48:19', 'group', 'new_group', 'new_group', 'group', '#', 88, 0, 0, 1, 0),
(399, 'vasquezd', 'vasquezm', '2016-04-11 21:48:19', 'group', 'new_group', 'new_group', 'group', '#', 88, 0, 0, 1, 0),
(400, 'vasquezd', 'hellothere', '2016-04-11 21:51:37', 'group', 'existing_group', 'new_group', 'group', '#', 0, 0, 0, 1, 0),
(401, 'vasquezd', 'baggins2', '2016-04-11 21:53:08', 'group', 'existing_group', 'new_group', 'group', '#', 0, 0, 0, 1, 0),
(402, 'vasquezd', 'frodobaggins', '2016-04-11 21:53:08', 'group', 'existing_group', 'new_group', 'group', '#', 0, 0, 0, 1, 0),
(403, 'vasquezd', 'testone', '2016-04-11 21:53:08', 'group', 'existing_group', 'new_group', 'group', '#', 0, 0, 0, 1, 0),
(404, 'vasquezd', 'vasquezj', '2016-04-11 21:53:08', 'group', 'existing_group', 'new_group', 'group', '#', 0, 0, 0, 1, 0),
(405, 'vasquezd', 'vasquezb', '2016-04-11 22:15:25', 'group', 'new_group', 'new_group', 'group', '#', 90, 0, 0, 1, 0),
(406, 'vasquezd', 'vasquezm', '2016-04-11 22:15:25', 'group', 'new_group', 'new_group', 'group', '#', 90, 0, 0, 1, 0),
(407, 'vasquezd', 'vasquezb', '2016-04-11 23:32:03', 'group', 'new_group', 'new_group', 'group', '#', 92, 0, 0, 1, 0),
(408, 'vasquezd', 'vasquezm', '2016-04-11 23:32:03', 'group', 'new_group', 'new_group', 'group', '#', 92, 0, 0, 1, 0),
(409, 'vasquezd', 'baggins2', '2016-04-11 23:32:03', 'group', 'new_group', 'new_group', 'group', '#', 92, 0, 0, 1, 0),
(410, 'vasquezd', 'frodobaggins', '2016-04-11 23:32:03', 'group', 'new_group', 'new_group', 'group', '#', 92, 0, 0, 1, 0),
(411, 'vasquezd', 'testone', '2016-04-11 23:32:03', 'group', 'new_group', 'new_group', 'group', '#', 92, 0, 0, 1, 0),
(412, 'vasquezd', 'vasquezj', '2016-04-11 23:32:03', 'group', 'new_group', 'new_group', 'group', '#', 92, 0, 0, 1, 0),
(413, 'vasquezd', 'hellothere2', '2016-04-11 23:32:03', 'group', 'new_group', 'new_group', 'group', '#', 92, 0, 0, 1, 0),
(414, 'vasquezd', 'hellothere4', '2016-04-11 23:32:03', 'group', 'new_group', 'new_group', 'group', '#', 92, 0, 0, 1, 0),
(415, 'vasquezd', 'hellohello', '2016-04-11 23:32:03', 'group', 'new_group', 'new_group', 'group', '#', 92, 0, 0, 1, 0),
(416, 'vasquezd', 'hellothere', '2016-04-11 23:32:03', 'group', 'new_group', 'new_group', 'group', '#', 92, 0, 0, 1, 0),
(417, 'vasquezd', 'vasquezb', '2016-04-13 21:36:16', 'group', 'new_group', 'new_group', 'group', '#', 93, 0, 0, 1, 0),
(418, 'vasquezd', 'vasquezm', '2016-04-13 21:36:16', 'group', 'new_group', 'new_group', 'group', '#', 93, 0, 0, 1, 0);

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
  `group_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`primary_id`),
  UNIQUE KEY `codehash` (`codehash`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `pending_email`
--

INSERT INTO `pending_email` (`primary_id`, `codehash`, `request_from`, `request_to`, `email`, `square_id`, `group_id`, `status`) VALUES
(54, '30954cae4df3239f02920c64fdffb0c886b54dd4', 'vasquezd', '<a href=http://localhost/sites/shareshare/site_files/register_email.php?hash=30954cae4df3239f02920c64fdffb0c886b54dd4&useremail=vasquezd@onid.orst.edu&friendname=vasquezd&squareid=89">Join Shareshare</a></p>', 'vasquezd@onid.orst.edu', 0, 89, 0),
(55, '58452c0251f8105a4f42225de384a8a9cf7d3407', 'vasquezd', '<a href=http://localhost/sites/shareshare/site_files/register_email.php?hash=58452c0251f8105a4f42225de384a8a9cf7d3407&useremail=vasquezd@onid.orst.edu&friendname=vasquezd&squareid=88">Join Shareshare</a></p>', 'vasquezd@onid.orst.edu', 0, 88, 0),
(56, 'a16bebd4d17aca8e40f41ca1df58095901e940f7', 'vasquezd', '<a href=http://localhost/sites/shareshare/site_files/register_email.php?hash=a16bebd4d17aca8e40f41ca1df58095901e940f7&useremail=&friendname=vasquezd&squareid=91">Join Shareshare</a></p>', '', 0, 91, 0);

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
  `group_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL,
  PRIMARY KEY (`primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=135 ;

--
-- Dumping data for table `pending_requests`
--

INSERT INTO `pending_requests` (`primary_id`, `request_type`, `request_type_name`, `sent_by`, `sent_to`, `request_key`, `sent_to_email`, `square_id`, `group_id`, `status`, `updated`, `created`) VALUES
(114, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezb', '', '', 88, 88, 1, '2016-04-11 21:48:19', '0000-00-00 00:00:00'),
(115, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezm', '', '', 88, 88, 0, '2016-04-11 21:48:19', '0000-00-00 00:00:00'),
(116, 'new_square', 'Wants to add you to a square', 'vasquezd', 'hellothere', '', '', 0, 89, 0, '2016-04-11 21:51:37', '0000-00-00 00:00:00'),
(117, 'new_square', 'Wants to add you to a square', 'vasquezd', 'baggins2', '', '', 0, 88, 1, '2016-04-11 21:53:08', '0000-00-00 00:00:00'),
(118, 'new_square', 'Wants to add you to a square', 'vasquezd', 'frodobaggins', '', '', 0, 88, 1, '2016-04-11 21:53:08', '0000-00-00 00:00:00'),
(119, 'new_square', 'Wants to add you to a square', 'vasquezd', 'testone', '', '', 0, 88, 1, '2016-04-11 21:53:08', '0000-00-00 00:00:00'),
(120, 'new_square', 'Wants to add you to a square', 'vasquezd', 'vasquezj', '', '', 0, 88, 1, '2016-04-11 21:53:08', '0000-00-00 00:00:00'),
(121, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezb', '', '', 90, 90, 1, '2016-04-11 22:15:25', '0000-00-00 00:00:00'),
(122, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezm', '', '', 90, 90, 1, '2016-04-11 22:15:25', '0000-00-00 00:00:00'),
(123, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezb', '', '', 92, 92, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(124, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezm', '', '', 92, 92, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(125, 'new_square', 'Wants to start a new square', 'vasquezd', 'baggins2', '', '', 92, 92, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(126, 'new_square', 'Wants to start a new square', 'vasquezd', 'frodobaggins', '', '', 92, 92, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(127, 'new_square', 'Wants to start a new square', 'vasquezd', 'testone', '', '', 92, 92, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(128, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezj', '', '', 92, 92, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(129, 'new_square', 'Wants to start a new square', 'vasquezd', 'hellothere2', '', '', 92, 92, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(130, 'new_square', 'Wants to start a new square', 'vasquezd', 'hellothere4', '', '', 92, 92, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(131, 'new_square', 'Wants to start a new square', 'vasquezd', 'hellohello', '', '', 92, 92, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(132, 'new_square', 'Wants to start a new square', 'vasquezd', 'hellothere', '', '', 92, 92, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(133, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezb', '', '', 93, 93, 1, '2016-04-13 21:36:16', '0000-00-00 00:00:00'),
(134, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezm', '', '', 93, 93, 1, '2016-04-13 21:36:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `parent`, `list_id`, `post_from`, `post_to`, `post_type`, `post_caption`, `post_url`, `video_code`, `image_url`, `file_url`, `file_name`, `article_title`, `article_text`, `contains_file`, `unique_id`, `post_status`, `comment_seen`, `updated`, `created`) VALUES
(1, 0, 0, 'vasquezd', 'vasquezd', 'item', '', '', '', '1460147128Lighthouse.jpg', '', '', '', '', 0, 'vasquezdvasquezd1460147115', 1, '0000-00-00 00:00:00', '2016-04-08 20:25:28', '2016-04-09 05:25:28'),
(2, 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1460329234Desert.jpg', '', '', '', '', 0, 'vasquezdvasquezd1460329230', 1, '0000-00-00 00:00:00', '2016-04-10 23:00:34', '2016-04-11 08:00:34');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `salt`, `password`, `last_login`, `last_logout`, `login_total`, `test`) VALUES
(1, 'vasquezd', 1408593605, 'f62c9d59b1b2cbe2b6462784e1d6a550f1afbe85', '2016-04-13 20:29:46', '2016-04-11 21:53:23', 46, 'vasquezb'),
(2, 'vasquezm', 1408593661, '01383c5e20acbf7898d0b8962d68e022691ce30c', '2016-04-11 21:53:59', '2016-04-11 21:54:45', 2, 'vasquezb'),
(3, 'vasquezb', 1408593651, 'c2975efb9c72c5d1a5c45593b2dbac99ed71c608', '2016-01-30 22:42:58', '2015-11-29 04:10:43', 0, 'vasquezb'),
(4, 'vasquezj', 1408593688, 'b5d03b353dc2dcce9ae1f190a311f1885328da61', '2015-11-12 03:39:29', '2015-11-12 03:39:52', 0, 'vasquezb'),
(68, 'testthree', 1454110685, 'a427445176a59a1754c1d08d491c6c78fedb7999', '2016-01-29 23:38:30', '0000-00-00 00:00:00', 0, ''),
(69, 'vasqueznew', 1454193155, '8633b3066abd991180c84f70b84c7397a7f01701', '2016-01-30 22:32:50', '2016-01-30 22:41:24', 0, ''),
(70, 'testone', 1454193644, '0b1a8635c3097aeca858b042b755f11b0e776c4a', '2016-01-30 22:42:28', '2016-01-30 22:42:38', 0, ''),
(74, 'hellothere', 1460411497, 'd65e3d328cf13c0779ce310e1c41aa58ba758c9f', '2016-04-11 21:51:44', '2016-04-11 21:52:12', 1, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=119 ;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_profile_id`, `user_id`, `user_name`, `email`, `image_name`, `first_name`, `last_name`, `root_folder`, `biography`, `university`, `updated`, `created`) VALUES
(46, 1, 'vasquezd', 'Vasquezd@onid.orst.edu', '', 'David', 'Vasquez', 'Vasquezd', '', 'Oregon State ', '2015-08-03 02:39:59', '2014-08-21 11:00:05'),
(47, 2, 'vasquezm', 'vasquezm@shareshare.com', 'matt.jpg', 'Matt', 'Robert', '', 'This is matts page!', '', '2015-05-04 09:37:27', '0000-00-00 00:00:00'),
(48, 3, 'vasquezb', 'vasquezb@shareshare.com', 'brian.jpg', 'Brian', 'Vasquez', '', 'this is brian''s page! ', '', '2015-05-04 10:51:45', '0000-00-00 00:00:00'),
(49, 4, 'vasquezj', 'vasquezj@shareshare.com', 'x10.jpg', 'Elsie', 'Smith', '', 'this is my page!', '', '2015-08-28 03:48:25', '0000-00-00 00:00:00'),
(111, 68, 'testthree', 'Vasquez@onid.orst.edu', 'david.jpg', 'sadf', 'awef', 'testthree', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-01-29 23:38:05'),
(112, 69, 'vasqueznew', 'vasquezd@onid.orst.edu', 'david.jpg', 'david', 'new', 'vasqueznew', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-01-30 22:32:35'),
(113, 70, 'testone', 'vasquezd@onid.orst.edu', 'david.jpg', 'new', 'newe', 'testone', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-01-30 22:40:44'),
(117, 74, 'hellothere', 'vasquezd@onid.orst.edu', 'david.jpg', 'hello', 'there', 'hellothere', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-04-11 21:51:37'),
(118, 74, 'vasquezr', 'vasquezd@onid.orst.edu', 'david.jpg', 'v', 'r', 'hellothere', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2016-04-12 23:27:47', '2016-04-11 21:51:37');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `user_size`
--

INSERT INTO `user_size` (`primary_key`, `user_name`, `birthday`, `user_id`, `user_shirt`, `user_sweater`, `user_coat`, `user_jeans`, `user_pants`, `user_dress_size`, `user_shoes`) VALUES
(1, 'vasquezd', 'December 3', 1, 'Medium', 'Medium', 'medium or large', '34 x 30 or 33 x 30', '', '', '12'),
(2, 'vasquezb', 'May 28', 3, 'large', 'large', 'medium or large', '34 x 30 or 33 x 30', '', '', '12'),
(3, 'frodobaggins', 'December 3', 38, '', '', '', '', '', '', ''),
(29, 'testthree', '', 68, '', '', '', '', '', '', ''),
(30, 'vasqueznew', '', 69, '', '', '', '', '', '', ''),
(31, 'testone', '', 70, '', '', '', '', '', '', ''),
(35, 'hellothere', '', 74, '', '', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
