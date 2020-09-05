-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2015 at 05:03 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

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
(77, 304, 'Oh I really like that! \n', 'vasquezm', '', 0, '2015-11-12 02:28:31', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `square_id`, `post_id`, `parent`, `is_folder`, `folder_name`, `file_name`, `file_type`, `file_name_server`, `file_path_server`, `file_image`, `file_path`, `user_id`, `user_name`, `file_status`, `file_seen`, `recycle_status`, `unique_id`, `file_created`, `file_last_modified`) VALUES
(38, 0, 0, 0, 1, 'davey', 'folder.png', '', 'folder.png', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads/folder.png', 'folder.png', '---------32-', 1, 'vasquezd', 1, 0, 0, '1447302058720', '2015-11-12 04:20:58', '0000-00-00 00:00:00'),
(39, 0, 0, 38, 1, 'davey to', 'folder.png', '', 'folder.png', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads/folder.png', 'folder.png', '--------32-38-', 1, 'vasquezd', 1, 0, 0, '1447302068576', '2015-11-12 04:21:08', '0000-00-00 00:00:00'),
(41, 0, 0, 0, 1, 'new davey', 'folder.png', '', 'folder.png', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads/folder.png', 'folder.png', '---------0-', 1, 'vasquezd', 1, 0, 0, '1447302188182', '2015-11-12 04:23:08', '0000-00-00 00:00:00'),
(42, 48, 0, 0, 0, '', 'Chrysanthemum.jpg', 'jpg', '1448078971Chrysanthemum.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1448078971Chrysanthemum.jpg', '1448078971Chrysanthemum.jpg', '0-', 1, 'vasquezd', 1, 0, 0, '', '2015-11-21 04:09:31', '0000-00-00 00:00:00'),
(43, 49, 0, 0, 0, '', 'Penguins.jpg', 'jpg', '1448079000Penguins.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1448079000Penguins.jpg', '1448079000Penguins.jpg', '0-', 1, 'vasquezd', 1, 0, 0, '', '2015-11-21 04:10:00', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friends_id`, `user_name`, `user_id`, `friend_user_name`, `friend_id`, `created`) VALUES
(7, 'vasquezm', 2, 'vasquezk', 4, '2015-05-04 23:47:23'),
(8, 'vasquezk', 4, 'vasquezm', 2, '2015-05-04 23:47:23'),
(9, 'vasquezm', 2, 'vasquezb', 3, '2015-05-04 23:47:23'),
(10, 'vasquezb', 3, 'vasquezm', 2, '2015-05-04 23:47:23'),
(15, 'vasquezd', 1, 'vasquezb', 3, '2015-10-23 03:22:40'),
(16, 'vasquezb', 3, 'vasquezd', 1, '2015-10-23 03:22:40'),
(19, 'vasquezd', 1, 'vasquezm', 2, '2015-11-10 03:47:18'),
(20, 'vasquezm', 2, 'vasquezd', 1, '2015-11-10 03:47:18'),
(21, 'vasquezd', 1, 'vasquezj', 4, '2015-11-12 03:44:34'),
(22, 'vasquezj', 4, 'vasquezd', 1, '2015-11-12 03:44:34');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=141 ;

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
(136, '', 0, 0, 'http://stackoverflow.com/questions/1964839/how-can-i-create-a-please-wait-loading-animation-using-jquery', 'How can I create a &quot;Please Wait, Loading...&quot; animation using jQuery? - Stack Overflow', 'vasquezd', 'vasquezd', 'stackoverflow.png', 'stackoverflow.png', '', '', 0, 0, '', 1, 0, 0, '2015-11-27 04:54:32', '0000-00-00 00:00:00'),
(137, 'wall_posts', 0, 0, 'http://www.guitarcenter.com/Boss/DD-20-Giga-Delay.gc', 'Boss DD-20 Giga Delay | Guitar Center', 'vasquezd', 'vasquezd', 'guitarcenter.png', 'guitarcenter.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-29 03:39:00', '0000-00-00 00:00:00'),
(138, 'wall_posts', 0, 0, 'http://www.guitarcenter.com/Gibson/2015-Les-Paul-Studio-SR.gc', 'Gibson 2015 Les Paul Studio SR | Guitar Center', 'vasquezd', 'vasquezb', 'guitarcenter.png', 'guitarcenter.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-29 03:57:54', '0000-00-00 00:00:00'),
(139, 'wall_posts', 0, 0, 'http://www.guitarcenter.com/Gibson/2015-Les-Paul-Studio-SR.gc', 'Gibson 2015 Les Paul Studio SR | Guitar Center', 'vasquezb', 'vasquezd', 'guitarcenter.png', 'guitarcenter.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-29 04:07:25', '0000-00-00 00:00:00'),
(140, 'wall_posts', 0, 0, 'http://www.guitarcenter.com/Gibson/2016-Les-Paul-Studio-T-J26282.gc?pfm=sp', 'Gibson 2016 Les Paul Studio T | Guitar Center', 'vasquezb', 'vasquezb', 'guitarcenter.png', 'guitarcenter.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-11-29 04:10:24', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=190 ;

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
(180, 'vasquezd', 'vasquezd', '2015-11-26 02:17:36', 'wall', 'posts', 'post_new_article', 'wall', '#', 0, 0, 1, 1, 0),
(181, 'vasquezd', 'vasquezd', '2015-11-26 04:18:26', 'wall', 'posts', 'post_new_article', 'wall', '#', 0, 0, 1, 1, 0),
(182, 'vasquezd', 'vasquezd', '2015-11-26 04:22:12', 'wall', 'posts', 'post_new_article', 'wall', '#', 0, 0, 1, 1, 0),
(183, 'vasquezd', 'vasquezd', '2015-11-27 02:11:11', 'wall', 'posts', 'post_new_article', 'wall', '#', 0, 0, 1, 1, 0),
(184, 'vasquezd', 'vasquezd', '2015-11-27 02:17:49', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(185, 'vasquezd', 'vasquezd', '2015-11-27 02:19:45', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(186, 'vasquezd', 'vasquezd', '2015-11-29 03:39:00', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(187, 'vasquezd', 'vasquezb', '2015-11-29 03:57:54', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 0, 1, 0),
(188, 'vasquezb', 'vasquezd', '2015-11-29 04:07:25', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 0, 1, 0),
(189, 'vasquezb', 'vasquezb', '2015-11-29 04:10:24', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

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
(75, 'new_square', 'Wants to start a new square', 'vasquezb', 'vasquezd', '', '', 52, 0, '2015-11-12 03:51:28', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=316 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_from`, `post_to`, `post_type`, `post_caption`, `post_url`, `video_code`, `image_url`, `file_url`, `file_name`, `article_title`, `article_text`, `contains_file`, `unique_id`, `post_status`, `comment_seen`, `updated`, `created`) VALUES
(119, 'Vasquezd', 'Vasquezd', 'video', '', 'https://www.youtube.com/embed/qDRF5iUSXn0', 'qDRF5iUSXn0', '', '', '', '', '', 0, 'VasquezdVasquezd1437429924', 0, '2015-10-21 02:46:38', '2015-10-21 02:46:38', '2015-07-21 07:05:35'),
(144, 'Vasquezd', 'Vasquezd', 'video', 'I love this song! ', 'https://www.youtube.com/watch?v=DD8zGTpyM9w', 'DD8zGTpyM9w', '', '', '', '', '', 0, '', 0, '2015-10-23 03:28:45', '2015-11-26 04:07:14', '2015-07-22 07:53:19'),
(149, 'vasquezb', 'vasquezd', 'video', 'Helios!', 'https://www.youtube.com/watch?v=WTbVGPSBO6Y', 'WTbVGPSBO6Y', '', '', '', '', '', 0, '', 1, '2015-11-02 02:02:03', '2015-11-02 02:02:03', '2015-08-03 06:43:23'),
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
(267, 'vasquezb', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=6b7AM2D0lyM', '6b7AM2D0lyM', '', '', '', '', '', 0, '', 1, '2015-11-12 02:25:53', '2015-11-12 02:25:53', '2015-11-02 12:18:47'),
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
(307, 'vasquezd', 'vasquezd', 'article', '', 'http://finance.yahoo.com/news/most-5-major-shopping-holidays-142800766.html', '', '5656880d93d39522918978.jpg', '', '', 'How to make the most out of the 5 major shopping holidays - Yahoo Finance', 'From Yahoo Finance: Have you started your holiday shopping yet? According to a survey conducted by Offers.com, 19 percent of online shoppers will be starting their shopping on Thanksgiving and continuing through Cyber Monday, a trend that is up 45 percent year over year. This year is the first where we''ve seen several retailers announcing they will not be open on Thanksgiving or Black Friday.', 0, '', 1, '0000-00-00 00:00:00', '2015-11-27 03:44:47', '2015-11-26 13:18:23'),
(308, 'vasquezd', 'vasquezd', 'item', '', 'http://www.amazon.com/gp/product/0142406635/ref=s9_simh_gw_p14_d0_i3?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-1&pf_rd_r=13KJC391ECN2VMMF4BE0&pf_rd_t=36701&pf_rd_p=2079475242&pf_rd_i=desktop', '', '565688e2d4617946264250.jpg', '', '', 'The Ruins of Gorlan (The Ranger'';s Apprentice, Book 1): John A. Flanagan', 'The Ruins of Gorlan (The Ranger''s Apprentice, Book 1) [John A. Flanagan] on Amazon.com. *FREE* shipping on qualifying offers. <b>The international bestselling series with over 5 million copies sold in the U.S. alone</i>!</b> They have always scared him in the pastâ€”the Rangers', 0, '', 0, '0000-00-00 00:00:00', '2015-11-27 03:46:05', '2015-11-26 13:22:09'),
(309, 'vasquezd', 'vasquezd', 'item', 'Hi, I really like this book and wouldn''t mind getting it ', 'http://www.amazon.com/gp/product/148143229X/ref=s9_simh_gw_p14_d8_i1?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-4&pf_rd_r=1NXGG46XJAGZB23RARBK&pf_rd_t=36701&pf_rd_p=2090149782&pf_rd_i=desktop', '', '5657bb37d02f0416944788.jpg', '', '', 'Neverseen (Keeper of the Lost Cities)- Shannon Messenger', 'Neverseen (Keeper of the Lost Cities) Sophie battles the rebels and recovers dark memories from her past in this jaw-dropping fourth book in the bestselling Keeper of the Lost Cities series. Sophie Foster is on the run but at least she''s not alone. Her closest friends from the Lost Cities have gone with her to join the Black Swan. They still have doubts about the shadowy organization', 0, '', 1, '0000-00-00 00:00:00', '2015-11-27 03:44:42', '2015-11-27 11:11:06'),
(310, 'vasquezd', 'vasquezd', 'article', '', 'http://www.amazon.com/gp/product/148143229X/ref=s9_simh_gw_p14_d8_i1?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-4&pf_rd_r=1NXGG46XJAGZB23RARBK&pf_rd_t=36701&pf_rd_p=2090149782&pf_rd_i=desktop', '', '5657bd4589238206186408.jpg', '', '', 'Neverseen (Keeper of the Lost Cities): Shannon Messenger: 9781481432290: Amazon.com: Books', 'Neverseen (Keeper of the Lost Cities) [Shannon Messenger] on Amazon.com. *FREE* shipping on qualifying offers. Sophie battles the rebelsâ€”and recovers dark memories from her pastâ€”in this jaw-dropping fourth book in the bestselling Keeper of the Lost Cities series.<BR><BR>Sophie Foster is on the runâ€”but at least she''s not alone.<BR> <BR>Her closest friends from the Lost Cities have gone with her to join the Black Swan. They still have doubts about the shadowy organization', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-27 11:17:47'),
(311, 'vasquezd', 'vasquezd', 'item', '', 'http://www.amazon.com/gp/product/148143229X/ref=s9_simh_gw_p14_d8_i1?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=desktop-4&pf_rd_r=1NXGG46XJAGZB23RARBK&pf_rd_t=36701&pf_rd_p=2090149782&pf_rd_i=desktop', '', '5657bd4589238206186408.jpg', '', '', 'Neverseen (Keeper of the Lost Cities): Shannon Messenger', 'Neverseen (Keeper of the Lost Cities) [Shannon Messenger] on Amazon.com. *FREE* shipping on qualifying offers. Sophie battles the rebelsâ€”and recovers dark memories from her pastâ€”in this jaw-dropping fourth book in the bestselling Keeper of the Lost Cities series.<BR><BR>Sophie Foster is on the runâ€”but at least she''s not alone.<BR> <BR>Her closest friends from the Lost Cities have gone with her to join the Black Swan. They still have doubts about the shadowy organization', 0, '', 0, '0000-00-00 00:00:00', '2015-11-27 03:45:59', '2015-11-27 11:19:44'),
(312, 'vasquezd', 'vasquezd', 'item', '', 'http://www.guitarcenter.com/Boss/DD-20-Giga-Delay.gc', '', '565a7349f0622419139506.jpg', '', '', 'Boss DD-20 Giga Delay | Guitar Center', 'Shop for the Boss DD-20 Giga Delay and receive free shipping on your order and the guaranteed lowest price.', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-29 12:38:59'),
(313, 'vasquezd', 'vasquezb', 'item', '', 'http://www.guitarcenter.com/Gibson/2015-Les-Paul-Studio-SR.gc', '', '565a77a556e16372552568.jpg', '', '', 'Gibson 2015 Les Paul Studio SR | Guitar Center', 'Shop for the Gibson 2015 Les Paul Studio SR and receive free shipping on your order and the guaranteed lowest price.', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-29 12:57:52'),
(314, 'vasquezb', 'vasquezd', 'item', 'I really like this guitar! ', 'http://www.guitarcenter.com/Gibson/2015-Les-Paul-Studio-SR.gc', '', '565a79f7482ee478692875.jpg', '', '', 'Gibson 2015 Les Paul Studio SR | Guitar Center', 'Shop for the Gibson 2015 Les Paul Studio SR and receive free shipping on your order and the guaranteed lowest price.', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-29 13:07:24'),
(315, 'vasquezb', 'vasquezb', 'item', '', 'http://www.guitarcenter.com/Gibson/2016-Les-Paul-Studio-T-J26282.gc?pfm=sp', '', '565a7a5ccc1de615305647.jpg', '', '', 'Gibson 2016 Les Paul Studio T | Guitar Center', 'Shop for the Gibson 2016 Les Paul Studio T and receive free shipping on your order and the guaranteed lowest price.', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-11-29 13:10:20');

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
(1, 'vasquezd', 1408593605, 'f62c9d59b1b2cbe2b6462784e1d6a550f1afbe85', '2015-12-01 03:48:10', '2015-11-30 04:06:02', 'vasquezb'),
(2, 'vasquezm', 1408593661, '01383c5e20acbf7898d0b8962d68e022691ce30c', '2015-11-12 03:35:55', '2015-11-12 03:36:09', 'vasquezb'),
(3, 'vasquezb', 1408593651, 'c2975efb9c72c5d1a5c45593b2dbac99ed71c608', '2015-11-29 04:06:34', '2015-11-29 04:10:43', 'vasquezb'),
(4, 'vasquezj', 1408593688, 'b5d03b353dc2dcce9ae1f190a311f1885328da61', '2015-11-12 03:39:29', '2015-11-12 03:39:52', 'vasquezb');

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
(46, 1, 'vasquezd', 'Vasquezd@onid.orst.edu', 'david.jpg', 'David C', 'Vasquez', 'Vasquezd', '', 'Oregon State ', '2015-08-03 02:39:59', '2014-08-21 11:00:05'),
(47, 2, 'vasquezm', 'vasquezm@shareshare.com', 'matt.jpg', 'Matt', 'Robert', '', 'This is matts page!', '', '2015-05-04 09:37:27', '0000-00-00 00:00:00'),
(48, 3, 'vasquezb', 'vasquezb@shareshare.com', 'brian.jpg', 'Brian', 'Vasquez', '', 'this is brian''s page! ', '', '2015-05-04 10:51:45', '0000-00-00 00:00:00'),
(49, 4, 'vasquezj', 'vasquezj@shareshare.com', '10.jpg', 'Elsie', 'Smith', '', 'this is my page!', '', '2015-08-28 03:48:25', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_size`
--

INSERT INTO `user_size` (`primary_key`, `user_name`, `birthday`, `user_id`, `user_shirt`, `user_sweater`, `user_coat`, `user_jeans`, `user_pants`, `user_dress_size`, `user_shoes`) VALUES
(1, 'vasquezd', 'December 3', 1, 'Medium', 'Medium', 'medium or large', '34 x 30 or 33 x 30', '', '', '12'),
(2, 'vasquezb', 'May 28', 3, 'large', 'large', 'medium or large', '34 x 30 or 33 x 30', '', '', '12');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
