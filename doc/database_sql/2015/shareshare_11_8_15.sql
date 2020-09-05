-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2015 at 05:30 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=77 ;

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
(76, 290, 'wow soo coolio!\n', 'vasquezd', '', 0, '2015-11-09 03:33:49', '0000-00-00 00:00:00');

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
  `recycle_status` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `file_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_last_modified` timestamp NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `square_id`, `post_id`, `parent`, `is_folder`, `folder_name`, `file_name`, `file_type`, `file_name_server`, `file_path_server`, `file_image`, `file_path`, `user_id`, `user_name`, `file_status`, `recycle_status`, `unique_id`, `file_created`, `file_last_modified`) VALUES
(1, 0, 281, 0, 0, '', 'Chrysanthemum.jpg', '', '1447036595Chrysanthemum.jpg', '', '', '', 0, 'vasquezd271447036584', 1, 0, '', '2015-11-09 02:36:35', '0000-00-00 00:00:00'),
(2, 0, 281, 0, 0, '', 'Chrysanthemum.jpg', '', '1447036683Chrysanthemum.jpg', '', '', '', 0, 'vasquezd271447036584', 1, 0, '', '2015-11-09 02:38:03', '0000-00-00 00:00:00'),
(3, 0, 281, 0, 0, '', 'Chrysanthemum.jpg', '', '1447036808Chrysanthemum.jpg', '', '', '', 0, 'vasquezd271447036584', 1, 0, '', '2015-11-09 02:40:08', '0000-00-00 00:00:00'),
(4, 0, 282, 0, 0, '', 'Koala.jpg', '', '1447036822Koala.jpg', '', '', '', 0, 'vasquezd271447036808', 1, 0, '', '2015-11-09 02:40:22', '0000-00-00 00:00:00'),
(5, 0, 283, 0, 0, '', 'Jellyfish.jpg', '', '1447037401Jellyfish.jpg', '', '', '', 0, 'vasquezmvasquezd1447037395', 1, 0, '', '2015-11-09 02:50:01', '0000-00-00 00:00:00'),
(6, 0, 283, 0, 0, '', 'Jellyfish.jpg', '', '1447037406Jellyfish.jpg', '', '', '', 0, 'vasquezmvasquezd1447037395', 1, 0, '', '2015-11-09 02:50:06', '0000-00-00 00:00:00'),
(7, 0, 284, 0, 0, '', 'Hydrangeas.jpg', '', '1447038253Hydrangeas.jpg', '', '', '', 0, 'vasquezd271447038239', 1, 0, '', '2015-11-09 03:04:13', '0000-00-00 00:00:00'),
(8, 0, 284, 0, 0, '', 'Hydrangeas.jpg', '', '1447038519Hydrangeas.jpg', '', '', '', 0, 'vasquezd271447038239', 1, 0, '', '2015-11-09 03:08:39', '0000-00-00 00:00:00'),
(9, 0, 285, 0, 0, '', 'Koala.jpg', '', '1447038529Koala.jpg', '', '', '', 0, 'vasquezd271447038523', 1, 0, '', '2015-11-09 03:08:49', '0000-00-00 00:00:00'),
(10, 0, 286, 0, 0, '', 'Hydrangeas.jpg', '', '1447038702Hydrangeas.jpg', '', '', '', 0, 'vasquezbvasquezd1447038693', 1, 0, '', '2015-11-09 03:11:42', '0000-00-00 00:00:00'),
(11, 0, 286, 0, 0, '', 'Hydrangeas.jpg', '', '1447038707Hydrangeas.jpg', '', '', '', 0, 'vasquezbvasquezd1447038693', 1, 0, '', '2015-11-09 03:11:47', '0000-00-00 00:00:00'),
(12, 0, 287, 0, 0, '', 'Jellyfish.jpg', '', '1447038721Jellyfish.jpg', '', '', '', 0, 'vasquezbvasquezm1447038711', 1, 0, '', '2015-11-09 03:12:01', '0000-00-00 00:00:00'),
(13, 0, 288, 0, 0, '', 'Jellyfish.jpg', '', '1447038752Jellyfish.jpg', '', '', '', 0, 'vasquezbvasquezd1447038747', 1, 0, '', '2015-11-09 03:12:32', '0000-00-00 00:00:00'),
(14, 0, 289, 0, 0, '', 'Tulips.jpg', '', '1447038895Tulips.jpg', '', '', '', 0, 'vasquezd271447038856', 1, 0, '', '2015-11-09 03:14:55', '0000-00-00 00:00:00'),
(15, 0, 290, 0, 0, '', 'Jellyfish.jpg', '', '1447039855Jellyfish.jpg', '', '', '', 0, 'vasquezd271447039845', 1, 0, '', '2015-11-09 03:30:55', '0000-00-00 00:00:00'),
(16, 0, 290, 0, 0, '', 'Jellyfish.jpg', '', '1447039868Jellyfish.jpg', '', '', '', 0, 'vasquezd271447039845', 1, 0, '', '2015-11-09 03:31:08', '0000-00-00 00:00:00'),
(17, 0, 291, 0, 0, '', 'Hydrangeas.jpg', '', '1447040533Hydrangeas.jpg', '', '', '', 0, 'vasquezb291447040527', 1, 0, '', '2015-11-09 03:42:13', '0000-00-00 00:00:00'),
(18, 0, 292, 0, 0, '', 'Lighthouse.jpg', '', '1447040572Lighthouse.jpg', '', '', '', 0, 'vasquezb271447040565', 1, 0, '', '2015-11-09 03:42:52', '0000-00-00 00:00:00'),
(19, 0, 293, 0, 0, '', 'Koala.jpg', '', '1447041264Koala.jpg', '', '', '', 0, 'vasquezb271447041258', 1, 0, '', '2015-11-09 03:54:24', '0000-00-00 00:00:00'),
(20, 0, 294, 0, 0, '', 'Lighthouse.jpg', '', '1447041275Lighthouse.jpg', '', '', '', 0, 'vasquezbvasquezd1447041268', 1, 0, '', '2015-11-09 03:54:35', '0000-00-00 00:00:00'),
(21, 0, 295, 0, 0, '', 'Chrysanthemum.jpg', '', '1447041285Chrysanthemum.jpg', '', '', '', 0, 'vasquezbvasquezd1447041275', 1, 0, '', '2015-11-09 03:54:45', '0000-00-00 00:00:00'),
(22, 0, 295, 0, 0, '', 'Chrysanthemum.jpg', '', '1447041291Chrysanthemum.jpg', '', '', '', 0, 'vasquezbvasquezd1447041275', 1, 0, '', '2015-11-09 03:54:51', '0000-00-00 00:00:00'),
(23, 0, 296, 0, 0, '', 'Lighthouse.jpg', '', '1447041348Lighthouse.jpg', '', '', '', 0, 'vasquezbvasquezd1447041338', 1, 0, '', '2015-11-09 03:55:48', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`file_id`, `square_id`, `user_id`, `user_name`, `folder_name_long`, `folder_name_system`, `image_name`, `folder_root`, `folder_path`, `folder_created`, `folder_last_modified`, `folder_location`, `folder_name`) VALUES
(1, 0, 0, 'shareshare', '', '', '', '', '', '2015-07-30 03:44:13', '0000-00-00 00:00:00', '', 'shareshare'),
(2, 0, 0, 'jamesman', '', '', '', '', '', '2015-07-30 04:56:36', '0000-00-00 00:00:00', '', 'jamesman'),
(3, 0, 0, 'shareshare4', '', '', '', '', '', '2015-07-30 22:46:57', '0000-00-00 00:00:00', '', 'shareshare4'),
(4, 0, 0, 'bandybaggins', '', '', '', '', '', '2015-09-01 04:01:51', '0000-00-00 00:00:00', '', 'bandybaggins'),
(5, 0, 0, 'bandybaggins2', '', '', '', '', '', '2015-09-01 04:07:41', '0000-00-00 00:00:00', '', 'bandybaggins2'),
(6, 0, 0, 'bandybaggins2', '', '', '', '', '', '2015-09-01 04:08:18', '0000-00-00 00:00:00', '', 'bandybaggins2'),
(7, 0, 0, 'bandybaggins3', '', '', '', '', '', '2015-09-01 04:08:37', '0000-00-00 00:00:00', '', 'bandybaggins3'),
(8, 0, 0, 'bandybaggins4', '', '', '', '', '', '2015-09-01 04:10:10', '0000-00-00 00:00:00', '', 'bandybaggins4'),
(9, 0, 0, 'bandybaggins5', '', '', '', '', '', '2015-09-01 04:11:20', '0000-00-00 00:00:00', '', 'bandybaggins5');

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
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`friends_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friends_id`, `user_name`, `user_id`, `friend_user_name`, `friend_id`, `created`) VALUES
(7, 'vasquezm', 2, 'vasquezk', 4, '2015-05-04 23:47:23'),
(8, 'vasquezk', 4, 'vasquezm', 2, '2015-05-04 23:47:23'),
(9, 'vasquezm', 2, 'vasquezb', 3, '2015-05-04 23:47:23'),
(10, 'vasquezb', 3, 'vasquezm', 2, '2015-05-04 23:47:23'),
(11, 'vasquezd', 1, 'vasquezj', 4, '2015-05-04 23:47:23'),
(12, 'vasquezj', 4, 'vasquezd', 1, '2015-05-04 23:47:23'),
(13, 'vasquezm', 2, 'vasquezd', 1, '2015-10-16 04:20:36'),
(14, 'vasquezd', 1, 'vasquezm', 2, '2015-10-16 04:20:37'),
(15, 'vasquezd', 1, 'vasquezb', 3, '2015-10-23 03:22:40'),
(16, 'vasquezb', 3, 'vasquezd', 1, '2015-10-23 03:22:40');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

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
(55, 'Wall Posts', 0, 0, 'http://digg.com/', 'Digg - What the Internet is talking about right now', 'vasquezd', 'vasquezd', 'digg.png', 'digg.png', 'shared', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(56, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=aeJf-18lF84', 'Pinback - Loro - YouTube', 'vasquezd', 'vasquezb', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 1, 0, 0, '2015-09-03 03:51:30', '2015-09-02 23:04:27'),
(57, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=aeJf-18lF84', 'Pinback - Loro ', 'vasquezd', 'vasquezb', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(58, 'Wall Posts', 0, 0, 'https://www.tumblr.com/dashboard', 'Log in | Tumblr', 'vasquezd', 'vasquezd', 'tumblr.png', 'tumblr.png', 'shared', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(59, '', 0, 0, 'https://www.youtube.com/watch?v=0P-CtmHRiNc', 'Pinback - True North ', 'vasquezd', '', 'youtube.png', 'youtube.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 03:51:30', '2015-09-03 03:01:02'),
(60, '', 0, 0, 'http://stackoverflow.com/questions/18490026/refresh-reload-the-content-in-div-using-jquery-ajax', 'javascript - Refresh/reload the content in Div using jquery/ajax - Stack Overflow', 'vasquezd', '', 'stackoverflow.png', 'stackoverflow.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 03:51:30', '2015-09-02 23:04:34'),
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
(85, '', 0, 0, 'http://pastebin.com/raw.php?i=NcL5BLwg', 'Pastebin Mime Types', 'vasquezd', '', 'pastebin.png', 'pastebin.png', '', '', 0, 0, '', 1, 0, 0, '2015-10-15 04:34:13', '0000-00-00 00:00:00'),
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
(98, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=6b7AM2D0lyM', 'Seapony - Where We Go [OFFICIAL VIDEO] - YouTube', 'vasquezd', '31', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-02 04:28:42', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=286 ;

--
-- Dumping data for table `lists`
--

INSERT INTO `lists` (`list_id`, `list_to`, `list_from`, `list_type`, `list_title`, `list_caption`, `list_url`, `video_code`, `image_url`, `file_url`, `file_name`, `article_title`, `article_text`, `unique_id`, `list_status`, `contains_icon`, `comment_seen`, `updated`, `created`) VALUES
(280, 'vasquezd', 'vasquezd', 'file', 'Miyazaki Photo', 'Not all those who wander are lost!   ', '', '', 'background_26.jpg', '', '', '', '', '', 1, 1, '2015-11-02 20:41:12', '2015-11-06 02:27:57', '2015-11-02 20:41:12'),
(281, 'vasquezd', 'vasquezd', 'file', 'Miyazaki Photo', '             \nAll we have to decide is what to do with the time', '', '', 'background_33.jpg', '', '', '', '', '', 1, 1, '2015-11-03 04:14:03', '2015-11-05 05:17:58', '2015-11-02 20:41:12'),
(282, 'vasquezd', 'vasquezd', 'list', '', '  If more of us valued food and cheer and song above hoarded gold, it would be a merrier world!!', '', '', '', '', '', '', '', '', 1, 0, '0000-00-00 00:00:00', '2015-11-05 05:18:05', '2015-11-04 03:11:39'),
(283, 'vasquezd', 'vasquezd', 'list', '', 'It''s the job that''s never started as takes longest to finish.', '', '', '', '', '', '', '', '', 1, 0, '0000-00-00 00:00:00', '2015-11-04 04:18:19', '2015-11-04 03:11:58'),
(284, 'vasquezd', 'vasquezd', 'list', '', 'Courage is found in unlikely places.', '', '', '', '', '', '', '', '', 1, 0, '0000-00-00 00:00:00', '2015-11-04 04:18:29', '2015-11-04 03:13:01'),
(285, 'vasquezd', 'vasquezd', 'note', '', ' Ok well this is pretty cool all right and stuff!', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', '2015-11-05 04:04:12', '2015-11-04 05:01:39');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `notification_from`, `notification_to`, `notification_time`, `type`, `notification_header`, `category`, `sub_category`, `link_url`, `group_id`, `post_id`, `from_logged_in_user`, `status_unseen`, `clicked`) VALUES
(92, 'vasquezb', 'vasquezd', '2015-11-09 03:54:24', 'group', 'posts', 'group_wall_post', 'group', 'http://localhost/shareshare/site_files/individual_group.php?varname=Mjc==', 27, 0, 0, 1, 0),
(93, 'vasquezb', 'vasquezm', '2015-11-09 03:54:24', 'group', 'posts', 'group_wall_post', 'group', 'http://localhost/shareshare/site_files/individual_group.php?varname=Mjc==', 27, 0, 0, 1, 0),
(94, 'vasquezb', 'vasquezb', '2015-11-09 03:54:24', 'group', 'posts', 'group_wall_post', 'group', 'http://localhost/shareshare/site_files/individual_group.php?varname=Mjc==', 27, 0, 1, 1, 0),
(95, 'vasquezb', 'vasquezj', '2015-11-09 03:54:24', 'group', 'posts', 'group_wall_post', 'group', 'http://localhost/shareshare/site_files/individual_group.php?varname=Mjc==', 27, 0, 0, 1, 0),
(96, 'vasquezb', 'vasquezd', '2015-11-09 03:55:48', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 0, 1, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `pending_requests`
--

INSERT INTO `pending_requests` (`primary_id`, `request_type`, `request_type_name`, `sent_by`, `sent_to`, `request_key`, `sent_to_email`, `square_id`, `status`, `updated`, `created`) VALUES
(6, 'friend', '', 'vasquezb', 'vasquezd', 'vasquezdvasquezb', '', 0, 0, '2015-07-28 23:15:34', '0000-00-00 00:00:00'),
(14, 'new_square', 'Wants to add you to a square', 'vasquezd', 'vasquezj', '', '', 28, 0, '2015-08-28 22:41:18', '0000-00-00 00:00:00'),
(15, 'new_square', 'Wants to add you to a square', 'vasquezd', 'vasquezj', '', '', 27, 1, '2015-08-29 20:59:57', '0000-00-00 00:00:00'),
(16, 'new_square', 'Wants to add you to a square', 'vasquezd', 'vasquezb', '', '', 28, 1, '2015-08-29 23:18:30', '0000-00-00 00:00:00'),
(17, 'friend', '', 'vasquezd', 'vasquezm', 'vasquezdvasquezm', '', 0, 0, '2015-10-16 04:17:07', '0000-00-00 00:00:00'),
(18, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezb', '', '', 30, 1, '2015-10-19 02:17:19', '0000-00-00 00:00:00'),
(19, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezj', '', '', 30, 1, '2015-10-19 02:17:19', '0000-00-00 00:00:00'),
(20, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezm', '', '', 30, 1, '2015-10-19 02:17:19', '0000-00-00 00:00:00'),
(21, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezj', '', '', 31, 1, '2015-11-02 04:07:50', '0000-00-00 00:00:00'),
(22, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezm', '', '', 31, 1, '2015-11-02 04:07:51', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=297 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_from`, `post_to`, `post_type`, `post_caption`, `post_url`, `video_code`, `image_url`, `file_url`, `file_name`, `article_title`, `article_text`, `contains_file`, `unique_id`, `post_status`, `comment_seen`, `updated`, `created`) VALUES
(119, 'Vasquezd', 'Vasquezd', 'video', '', 'https://www.youtube.com/embed/qDRF5iUSXn0', 'qDRF5iUSXn0', '', '', '', '', '', 0, 'VasquezdVasquezd1437429924', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-07-21 07:05:35'),
(144, 'Vasquezd', 'Vasquezd', 'video', 'I love this song! ', 'https://www.youtube.com/watch?v=DD8zGTpyM9w', 'DD8zGTpyM9w', '', '', '', '', '', 0, '', 1, '2015-10-23 03:28:45', '2015-10-23 03:28:45', '2015-07-22 07:53:19'),
(149, 'vasquezb', 'vasquezd', 'video', 'Helios!', 'https://www.youtube.com/watch?v=WTbVGPSBO6Y', 'WTbVGPSBO6Y', '', '', '', '', '', 0, '', 1, '2015-11-02 02:02:03', '2015-11-02 02:02:03', '2015-08-03 06:43:23'),
(150, 'vasquezd', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=4EyZJXGVRO0', '4EyZJXGVRO0', '', '', '', '', '', 0, '', 1, '2015-11-02 02:01:54', '2015-11-02 02:01:54', '2015-08-03 07:00:26'),
(151, 'vasquezd', 'vasquezm', 'video', 'What do you think of this song? ', 'https://www.youtube.com/watch?v=WTbVGPSBO6Y', 'WTbVGPSBO6Y', '', '', '', '', '', 0, '', 1, '2015-10-23 03:27:45', '2015-10-23 03:27:45', '2015-08-03 11:38:18'),
(152, 'vasquezd', 'vasquezd', 'video', 'New Hammock Song', 'https://www.youtube.com/watch?v=jBrWe6Foq1A', 'jBrWe6Foq1A', '', '', '', '', '', 0, '', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-08-03 11:46:37'),
(153, 'vasquezd', 'vasquezb', 'video', 'Hi Brian! What do you think of this video? I really love hammock!', 'https://www.youtube.com/watch?v=iBmDZgdJaxE', 'iBmDZgdJaxE', '', '', '', '', '', 0, '', 1, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-08-03 11:50:14'),
(154, 'vasquezb', 'vasquezd', 'video', 'So Good!', 'https://www.youtube.com/watch?v=MhGH9aoLz3M', 'MhGH9aoLz3M', '', '', '', '', '', 0, '', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-08-03 11:51:46'),
(155, 'vasquezd', 'vasquezb', 'video', 'This is such a good song!!', 'https://www.youtube.com/watch?v=KjIWriDTptY', 'KjIWriDTptY', '', '', '', '', '', 0, '', 1, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-08-03 12:19:45'),
(156, 'vasquezd', 'vasquezb', 'video', 'What do you think of this? ', 'https://www.youtube.com/watch?v=ldXdymGCShg', 'ldXdymGCShg', '', '', '', '', '', 0, '', 1, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-08-16 11:59:28'),
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
(254, 'vasquezd', 'vasquezb', 'video', '', 'https://www.youtube.com/watch?v=6b7AM2D0lyM', '6b7AM2D0lyM', '', '', '', '', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-02 11:42:57'),
(255, 'vasquezb', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=6b7AM2D0lyM', '6b7AM2D0lyM', '', '', '', '', '', 0, '', 0, '0000-00-00 00:00:00', '2015-11-02 03:06:18', '2015-11-02 11:45:36'),
(256, 'vasquezb', 'vasquezd', 'article', '', 'http://news.discovery.com/history/mysterious-sky-city-photographed-over-china-151022.htm', '', '5636d1dcd439d671938289.jpg', '', '', 'Mysterious Sky City Photographed Over China ', 'A photo circulating on social media appears to show a flying city among clouds in China. Is it real, a mirage, or fake? ', 0, '', 0, '0000-00-00 00:00:00', '2015-11-02 03:06:15', '2015-11-02 12:01:04'),
(257, 'vasquezd', 'vasquezb', 'link', '', 'http://news.discovery.com/history/mysterious-sky-city-photographed-over-china-151022.htm', '', 'discovery.png', '', '', 'Mysterious &#039;Sky City&#039; Photographed Over China : Discovery News', '', 0, '', 1, '0000-00-00 00:00:00', '2015-11-02 03:03:00', '2015-11-02 03:03:00'),
(258, 'vasquezd', 'vasquezb', 'link', '', 'http://news.discovery.com/history/mysterious-sky-city-photographed-over-china-151022.htm', '', 'discovery.png', '', '', 'Mysterious &#039;Sky City&#039; Photographed Over China : Discovery News', '', 0, '', 1, '0000-00-00 00:00:00', '2015-11-02 03:04:59', '2015-11-02 03:04:59'),
(259, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1446433794Chrysanthemum.jpg', 'Chrysanthemum.jpg', '', '', 1, '', 0, '0000-00-00 00:00:00', '2015-11-02 03:15:12', '2015-11-02 03:09:54'),
(260, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1446434119Chrysanthemum.jpg', 'Chrysanthemum.jpg', '', '', 1, '', 0, '0000-00-00 00:00:00', '2015-11-02 03:16:02', '2015-11-02 03:15:19'),
(261, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1446434150Chrysanthemum.jpg', 'Chrysanthemum.jpg', '', '', 1, '', 0, '0000-00-00 00:00:00', '2015-11-02 03:16:05', '2015-11-02 03:15:50'),
(262, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1446434156Chrysanthemum.jpg', 'Chrysanthemum.jpg', '', '', 1, '', 0, '0000-00-00 00:00:00', '2015-11-02 03:16:08', '2015-11-02 03:15:56'),
(263, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1446434172Chrysanthemum.jpg', 'Chrysanthemum.jpg', '', '', 1, '', 0, '0000-00-00 00:00:00', '2015-11-02 03:16:17', '2015-11-02 03:16:12'),
(264, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1446434223Chrysanthemum.jpg', 'Chrysanthemum.jpg', '', '', 1, '', 0, '0000-00-00 00:00:00', '2015-11-02 03:17:07', '2015-11-02 03:17:03'),
(265, 'vasquezm', 'vasquezd', 'photo', '', '', '', '1446434276Jellyfish.jpg', '', '', '', '', 0, 'vasquezmvasquezd1446434270', 0, '0000-00-00 00:00:00', '2015-11-02 03:35:34', '2015-11-02 12:17:56'),
(266, 'vasquezb', 'vasquezb', 'video', '', 'https://www.youtube.com/watch?v=6b7AM2D0lyM', '6b7AM2D0lyM', '', '', '', '', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-02 12:18:14'),
(267, 'vasquezb', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=6b7AM2D0lyM', '6b7AM2D0lyM', '', '', '', '', '', 0, '', 1, '2015-11-03 02:05:08', '2015-11-03 02:05:08', '2015-11-02 12:18:47'),
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
(283, 'vasquezm', 'vasquezd', 'photo', '', '', '', '1447037406Jellyfish.jpg', '', '', '', '', 0, 'vasquezmvasquezd1447037395', 1, '0000-00-00 00:00:00', '2015-11-09 02:50:06', '2015-11-09 11:50:01'),
(284, 'vasquezd', '27', 'photo', '', '', '', '1447038519Hydrangeas.jpg', '', '', '', '', 0, 'vasquezd271447038239', 1, '0000-00-00 00:00:00', '2015-11-09 03:08:39', '2015-11-09 12:04:13'),
(285, 'vasquezd', '27', 'photo', '', '', '', '1447038529Koala.jpg', '', '', '', '', 0, 'vasquezd271447038523', 1, '0000-00-00 00:00:00', '2015-11-09 03:08:49', '2015-11-09 12:08:49'),
(286, 'vasquezb', 'vasquezd', 'photo', '', '', '', '1447038707Hydrangeas.jpg', '', '', '', '', 0, 'vasquezbvasquezd1447038693', 1, '0000-00-00 00:00:00', '2015-11-09 03:11:47', '2015-11-09 12:11:39'),
(287, 'vasquezb', 'vasquezm', 'photo', '', '', '', '1447038721Jellyfish.jpg', '', '', '', '', 0, 'vasquezbvasquezm1447038711', 1, '0000-00-00 00:00:00', '2015-11-09 03:12:01', '2015-11-09 12:11:58'),
(288, 'vasquezb', 'vasquezd', 'photo', '', '', '', '1447038752Jellyfish.jpg', '', '', '', '', 0, 'vasquezbvasquezd1447038747', 1, '0000-00-00 00:00:00', '2015-11-09 03:12:32', '2015-11-09 12:12:32'),
(289, 'vasquezd', '27', 'photo', '', '', '', '1447038895Tulips.jpg', '', '', '', '', 0, 'vasquezd271447038856', 1, '0000-00-00 00:00:00', '2015-11-09 03:14:55', '2015-11-09 12:14:55'),
(290, 'vasquezd', '27', 'photo', '', '', '', '1447039868Jellyfish.jpg', '', '', '', '', 0, 'vasquezd271447039845', 1, '0000-00-00 00:00:00', '2015-11-09 03:31:08', '2015-11-09 12:30:55'),
(291, 'vasquezb', '29', 'photo', '', '', '', '1447040533Hydrangeas.jpg', '', '', '', '', 0, 'vasquezb291447040527', 1, '0000-00-00 00:00:00', '2015-11-09 03:42:13', '2015-11-09 12:42:12'),
(292, 'vasquezb', '27', 'photo', '', '', '', '1447040572Lighthouse.jpg', '', '', '', '', 0, 'vasquezb271447040565', 1, '0000-00-00 00:00:00', '2015-11-09 03:42:52', '2015-11-09 12:42:52'),
(293, 'vasquezb', '27', 'photo', '', '', '', '1447041264Koala.jpg', '', '', '', '', 0, 'vasquezb271447041258', 1, '0000-00-00 00:00:00', '2015-11-09 03:54:24', '2015-11-09 12:54:24'),
(294, 'vasquezb', 'vasquezd', 'photo', '', '', '', '1447041275Lighthouse.jpg', '', '', '', '', 0, 'vasquezbvasquezd1447041268', 1, '0000-00-00 00:00:00', '2015-11-09 03:54:35', '2015-11-09 12:54:33'),
(295, 'vasquezb', 'vasquezd', 'photo', '', '', '', '1447041291Chrysanthemum.jpg', '', '', '', '', 0, 'vasquezbvasquezd1447041275', 1, '0000-00-00 00:00:00', '2015-11-09 03:54:51', '2015-11-09 12:54:43'),
(296, 'vasquezb', 'vasquezd', 'photo', '', '', '', '1447041348Lighthouse.jpg', '', '', '', '', 0, 'vasquezbvasquezd1447041338', 1, '0000-00-00 00:00:00', '2015-11-09 03:55:48', '2015-11-09 12:55:48');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

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
(28, 159, 1, 'vasquezd', '2015-10-13 02:30:43');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `squares`
--

INSERT INTO `squares` (`square_id`, `square_key`, `created_by`, `square_name`, `square_image`, `square_users`, `square_folders`, `square_messages`, `updated`, `created`) VALUES
(17, '0.33365200 1409889736540935c8517548.01852381', 'vasquezd', 'Name ', 'david.jpg', 1, 1, 1, '0000-00-00 00:00:00', '2014-09-05 04:02:16'),
(27, '0.70995100 144002010755d4f68bad53f3.61894836', 'vasquezd', 'David and Matts Group', '', 27, 27, 27, '0000-00-00 00:00:00', '2015-08-19 21:35:07'),
(28, '0.07075100 144002087755d4f98d1145f2.33237132', 'vasquezd', 'David and Matt and Brians Square', '', 28, 28, 28, '0000-00-00 00:00:00', '2015-08-19 21:47:57'),
(29, '0.52557900 144070637355df6f4582c1c7.09405737', 'vasquezd', 'Name Me! =)', '', 29, 29, 29, '0000-00-00 00:00:00', '2015-08-27 20:12:53'),
(30, '0.74735000 1445221038562452aeb67569.30988535', 'vasquezd', '', '', 30, 30, 30, '0000-00-00 00:00:00', '2015-10-19 02:17:18'),
(31, '0.67457700 14464372675636e193a4b111.86538112', 'vasquezd', '', '', 31, 31, 31, '0000-00-00 00:00:00', '2015-11-02 04:07:47');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `square_users`
--

INSERT INTO `square_users` (`primary_id`, `square_id`, `user_name`, `status`, `created`, `updated`) VALUES
(2, 17, 'vasquezb', 1, '2014-09-05 04:02:16', '2014-09-07 03:14:14'),
(24, 27, 'vasquezd', 1, '2015-08-19 21:35:07', '0000-00-00 00:00:00'),
(25, 27, 'vasquezm', 0, '2015-08-19 21:35:07', '0000-00-00 00:00:00'),
(26, 27, 'vasquezb', 0, '2015-08-19 21:35:07', '0000-00-00 00:00:00'),
(27, 28, 'vasquezd', 1, '2015-08-19 21:47:57', '0000-00-00 00:00:00'),
(28, 28, 'vasquezm', 1, '2015-08-19 21:47:57', '0000-00-00 00:00:00'),
(32, 28, 'vasquezj', 1, '2015-08-28 22:41:18', '0000-00-00 00:00:00'),
(33, 27, 'vasquezj', 0, '2015-08-29 20:59:57', '0000-00-00 00:00:00'),
(34, 29, 'vasquezb', 0, '2015-08-27 20:12:54', '2015-08-29 21:12:48'),
(40, 28, 'vasquezb', 0, '2015-08-29 23:18:30', '0000-00-00 00:00:00'),
(43, 30, 'vasquezj', 0, '2015-10-19 02:17:18', '0000-00-00 00:00:00'),
(44, 30, 'vasquezm', 0, '2015-10-19 02:17:19', '0000-00-00 00:00:00'),
(45, 31, 'vasquezd', 1, '2015-11-02 04:07:50', '0000-00-00 00:00:00'),
(46, 31, 'vasquezj', 0, '2015-11-02 04:07:50', '0000-00-00 00:00:00'),
(47, 31, 'vasquezm', 0, '2015-11-02 04:07:50', '0000-00-00 00:00:00');

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
  `test` varchar(255) NOT NULL,
  UNIQUE KEY `user_id_2` (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_name_2` (`user_name`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `salt`, `password`, `last_login`, `last_logout`, `test`) VALUES
(1, 'vasquezd', 1408593605, 'f62c9d59b1b2cbe2b6462784e1d6a550f1afbe85', '2015-11-09 03:55:54', '2015-11-09 03:54:09', 'vasquezb'),
(2, 'vasquezm', 1408593661, '01383c5e20acbf7898d0b8962d68e022691ce30c', '2015-11-09 02:49:49', '2015-11-09 02:50:09', 'vasquezb'),
(3, 'vasquezb', 1408593651, 'c2975efb9c72c5d1a5c45593b2dbac99ed71c608', '2015-11-09 03:55:33', '2015-11-09 03:55:51', 'vasquezb'),
(4, 'vasquezj', 1408593688, 'b5d03b353dc2dcce9ae1f190a311f1885328da61', '0000-00-00 00:00:00', '2015-10-20 03:51:02', 'vasquezb');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_profile_id`, `user_id`, `user_name`, `email`, `image_name`, `first_name`, `last_name`, `root_folder`, `biography`, `university`, `updated`, `created`) VALUES
(46, 1, 'vasquezd', 'Vasquezd@onid.orst.edu', 'david.jpg', 'David', 'Vasquez', 'Vasquezd', 'Hi, Sometime in the early first century B.C., a ship went down in the Mediterranean Sea, just off a Greek island named Antikythera. The wreck itself wasnt unusual. The island was surrounded by jagged rocks, which likely caused many a boat to disappear back then. But there was something different about this one. The boat contained as  trove of statues, jewelry, and most notably what some scholars believe to be the earliest computer known to man.', 'Oregon State ', '2015-08-03 02:39:59', '2014-08-21 11:00:05'),
(47, 2, 'vasquezm', 'vasquezm@shareshare.com', 'matt.jpg', 'Matt', 'Robert', '', 'This is matts page!', '', '2015-05-04 09:37:27', '0000-00-00 00:00:00'),
(48, 3, 'vasquezb', 'vasquezb@shareshare.com', 'brian.jpg', 'Brian', 'Vasquez', '', 'this is brian''s page! ', '', '2015-05-04 10:51:45', '0000-00-00 00:00:00'),
(49, 4, 'vasquezj', 'vasquezj@shareshare.com', '10.jpg', 'Elsie', 'Smith', '', 'this is my page!', '', '2015-08-28 03:48:25', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
