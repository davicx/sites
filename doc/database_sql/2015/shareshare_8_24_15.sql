-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2015 at 06:45 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `comment`, `comment_from`, `comment_to`, `likes`, `updated`, `created`) VALUES
(2, 145, 'Ok this is so cool! ', 'vasquezb', '0', 0, '2015-08-12 22:21:28', '0000-00-00 00:00:00'),
(3, 145, 'This is such a cool picture! ', 'vasquezm', '0', 0, '2015-08-12 22:52:35', '0000-00-00 00:00:00'),
(4, 145, 'I like this photo a lot! ', 'vasquezd', '', 0, '2015-08-12 22:28:53', '0000-00-00 00:00:00'),
(5, 154, 'I really like this video! ', 'vasquezb', '', 0, '2015-08-15 21:48:48', '0000-00-00 00:00:00'),
(7, 120, 'Oh cool! ', 'vasquezm', '', 0, '2015-08-15 21:48:51', '0000-00-00 00:00:00'),
(8, 119, 'This is really good! ', 'vasquezd', '', 0, '2015-08-15 21:48:15', '0000-00-00 00:00:00'),
(42, 154, 'me too!', 'vasquezd', '', 0, '2015-08-15 22:22:48', '0000-00-00 00:00:00'),
(43, 154, 'one', 'vasquezd', '', 0, '2015-08-15 22:23:28', '0000-00-00 00:00:00'),
(44, 154, 'three', 'vasquezd', '', 0, '2015-08-15 22:25:15', '0000-00-00 00:00:00'),
(45, 154, 'four', 'vasquezd', '', 0, '2015-08-15 22:25:18', '0000-00-00 00:00:00'),
(46, 154, 'what caused that? ', 'vasquezd', '', 0, '2015-08-15 22:25:27', '0000-00-00 00:00:00'),
(47, 154, 'hiya!', 'vasquezd', '', 0, '2015-08-15 22:25:34', '0000-00-00 00:00:00'),
(48, 152, 'comment! ', 'vasquezd', '', 0, '2015-08-15 22:25:46', '0000-00-00 00:00:00'),
(49, 149, 'Hi, what do you think of this?! ', 'vasquezd', '', 0, '2015-08-15 22:27:23', '0000-00-00 00:00:00');

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
  `file_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_last_modified` timestamp NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `square_id`, `parent`, `is_folder`, `folder_name`, `file_name`, `file_type`, `file_name_server`, `file_path_server`, `file_image`, `file_path`, `user_id`, `user_name`, `file_status`, `recycle_status`, `file_created`, `file_last_modified`) VALUES
(8, 17, 2, 0, '', '1439088995Solwayfirthspaceman.jpg', 'jpg', '14402813421439088995Solwayfirthspaceman_1.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//14402813421439088995Solwayfirthspaceman_1.jpg', '14402813421439088995Solwayfirthspaceman_1.jpg', '0-1-3', 1, 'vasquezd', 1, 0, '2015-08-22 22:09:02', '0000-00-00 00:00:00'),
(9, 17, 14, 0, '', '03.jpg', 'jpg', '144028135003.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//144028135003.jpg', '144028135003.jpg', '0-1-3', 1, 'vasquezd', 1, 0, '2015-08-22 22:09:10', '0000-00-00 00:00:00'),
(10, 17, 11, 0, '', 'Jellyfish.jpg', 'jpg', '1440281359Jellyfish.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440281359Jellyfish.jpg', '1440281359Jellyfish.jpg', '0-1-3', 1, 'vasquezd', 1, 0, '2015-08-22 22:09:19', '0000-00-00 00:00:00'),
(11, 17, 0, 1, 'David''s Videos ', 'folder.png', 'jpg', 'folder.png', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440281367Lighthouse.jpg', '1440281367Lighthouse.jpg', '0-1-3', 1, 'vasquezd', 1, 1, '2015-08-22 22:09:27', '2015-08-25 21:33:49'),
(13, 17, 0, 1, 'David', 'folder.png', 'jpg', 'folder.png', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440281367Lighthouse.jpg', 'video.jpg', '0-1-3', 1, 'vasquezd', 1, 1, '2015-08-22 22:09:27', '2015-08-25 21:33:44'),
(14, 17, 13, 1, 'Music Videos ', 'folder.png', 'jpg', 'folder.png', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440281367Lighthouse.jpg', 'music_videos.jpg', '0-1-3', 1, 'vasquezd', 1, 0, '2015-08-22 22:09:27', '2015-08-24 03:38:18'),
(20, 17, 11, 0, '', 'david.jpg', '.jpg', 'test', 'test', 'test', '0-1-3', 1, 'vasquezd', 1, 0, '2015-08-24 04:15:54', '0000-00-00 00:00:00'),
(21, 17, 0, 0, '', 'sharing me', 'PNG', '1440389804sharesquare.PNG', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440389804sharesquare.PNG', '1440389804sharesquare.PNG', '0-1-3', 1, 'vasquezd', 1, 1, '2015-08-24 04:16:44', '2015-08-25 21:27:53'),
(29, 17, 13, 0, '', 'parent.jpg', 'jpg', '1440457762parent_1.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440457762parent_1.jpg', '1440457762parent_1.jpg', '0-', 1, 'vasquezd', 1, 0, '2015-08-24 23:09:22', '0000-00-00 00:00:00'),
(30, 17, 20, 0, '', '144039061911.jpg', 'jpg', '1440457898144039061911_1.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440457898144039061911_1.jpg', '1440457898144039061911_1.jpg', '0-', 1, 'vasquezd', 1, 0, '2015-08-24 23:11:38', '0000-00-00 00:00:00'),
(31, 17, 13, 0, '', 'Solway Firth Spaceman_1.jpg', 'jpg', '144045790314402813421439088995Solwayfirthspaceman_1_1.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//144045790314402813421439088995Solwayfirthspaceman_1_1.jpg', '144045790314402813421439088995Solwayfirthspaceman_1_1.jpg', '0-', 1, 'vasquezd', 1, 0, '2015-08-24 23:11:43', '0000-00-00 00:00:00'),
(32, 17, 11, 0, '', '144028135003.jpg', 'jpg', '1440457918144028135003_1.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440457918144028135003_1.jpg', '1440457918144028135003_1.jpg', '0-', 1, 'vasquezd', 1, 0, '2015-08-24 23:11:58', '0000-00-00 00:00:00'),
(33, 17, 0, 0, 'Night Mountains ', 'Mountains at Night.jpg', 'jpg', '1440458040144038988701_1.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440458040144038988701_1.jpg', '1440458040144038988701_1.jpg', '0-', 1, 'vasquezd', 1, 1, '2015-08-24 23:14:00', '2015-08-25 21:28:14'),
(34, 17, 0, 0, '', 'Jelly Fish.jpg', 'jpg', '1440474531Jellyfish.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440474531Jellyfish.jpg', '1440474531Jellyfish.jpg', '0-', 1, 'vasquezd', 1, 0, '2015-08-25 03:48:51', '2015-08-25 21:23:52'),
(35, 17, 0, 0, '', 'Sunlit mountains.jpg', 'jpg', '14405622141439695452background_9.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//14405622141439695452background_9.jpg', '14405622141439695452background_9.jpg', '0-', 1, 'vasquezd', 1, 0, '2015-08-26 04:10:14', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`file_id`, `square_id`, `user_id`, `user_name`, `folder_name_long`, `folder_name_system`, `image_name`, `folder_root`, `folder_path`, `folder_created`, `folder_last_modified`, `folder_location`, `folder_name`) VALUES
(1, 0, 0, 'shareshare', '', '', '', '', '', '2015-07-30 03:44:13', '0000-00-00 00:00:00', '', 'shareshare'),
(2, 0, 0, 'jamesman', '', '', '', '', '', '2015-07-30 04:56:36', '0000-00-00 00:00:00', '', 'jamesman'),
(3, 0, 0, 'shareshare4', '', '', '', '', '', '2015-07-30 22:46:57', '0000-00-00 00:00:00', '', 'shareshare4');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friends_id`, `user_name`, `user_id`, `friend_user_name`, `friend_id`, `created`) VALUES
(1, 'vasquezd', 1, 'vasquezm', 2, '2015-05-04 23:47:04'),
(2, 'vasquezm', 2, 'vasquezd', 1, '2015-05-04 23:47:04'),
(3, 'vasquezd', 1, 'vasquezb', 3, '2015-05-04 23:47:23'),
(4, 'vasquezb', 3, 'vasquezd', 1, '2015-05-04 23:47:23'),
(7, 'vasquezm', 2, 'vasquezk', 4, '2015-05-04 23:47:23'),
(8, 'vasquezk', 4, 'vasquezm', 2, '2015-05-04 23:47:23'),
(9, 'vasquezm', 2, 'vasquezb', 3, '2015-05-04 23:47:23'),
(10, 'vasquezb', 3, 'vasquezm', 2, '2015-05-04 23:47:23');

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
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`link_id`, `folder_name`, `parent`, `is_folder`, `link_url`, `link_title`, `user_name`, `link_from`, `link_image`, `link_favicon`, `link_type`, `caption`, `tag_id`, `likes`, `unique_id`, `created`, `updated`) VALUES
(1, 'UViC- Oceanography', 0, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '5566922844c9c', '2015-08-17 21:56:18', '0000-00-00 00:00:00'),
(2, '', 14, 0, 'http://www.colingoldblatt.net/researchgroup', 'Research Group - Colin Goldblatt', 'vasquezd', '', 'colingoldblatt.png', 'colingoldblatt.png', '', '', 0, 0, '', '2015-08-24 04:35:49', '0000-00-00 00:00:00'),
(3, '', 14, 0, 'http://baumlab.weebly.com/team.html', 'Team - The Baum Lab @ UVic', 'vasquezd', '', 'weebly.png', 'weebly.png', '', '', 0, 0, '', '2015-08-18 03:28:37', '0000-00-00 00:00:00'),
(4, 'OSU- Oceangraphy FW', 0, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '5566922927064', '2015-08-17 21:56:28', '0000-00-00 00:00:00'),
(5, '', 14, 0, 'http://mmi.oregonstate.edu/people', 'People | Oregon State University Marine Mammal Institute', 'vasquezd', '', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', '2015-08-18 20:48:04', '0000-00-00 00:00:00'),
(6, 'May', 1, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '5566922966436', '2015-05-28 03:57:29', '0000-00-00 00:00:00'),
(7, '', 4, 0, 'http://housing.uvic.ca/ads/index.php?a=5&b=185', 'Student Listings', 'vasquezd', '', 'uvic.png', 'uvic.png', '', '', 0, 0, '', '2015-08-18 03:26:16', '0000-00-00 00:00:00'),
(8, '', 0, 0, 'https://github.com/explore', 'Explore Â· GitHub', 'vasquezd', '', 'github.png', 'github.png', '', '', 0, 0, '', '2015-08-18 03:28:17', '0000-00-00 00:00:00'),
(9, '', 0, 0, 'https://anil3a.wordpress.com/2011/08/26/resetting-adobe-cs5-suite-trial-period-by-yourself/', 'Adobe', 'vasquezd', '', 'wordpress.png', 'wordpress.png', '', '', 0, 0, '', '2015-08-18 03:28:14', '0000-00-00 00:00:00'),
(10, '', 11, 0, 'http://famguardian.org/subjects/Politics/Articles/Liberals.htm', '60 Hard Truths About &quot;Liberals&quot;', 'vasquezd', '', 'famguardian.png', 'famguardian.png', '', '', 0, 0, '', '2015-08-24 22:42:39', '0000-00-00 00:00:00'),
(11, '', 13, 0, 'http://www.theatlantic.com/business/archive/2014/06/a-dangerous-question-does-internet-advertising-work-at-all/372704/', 'A Dangerous Question: Does Internet Advertising Work at All? - The Atlantic', 'vasquezd', '', 'theatlantic.png', 'theatlantic.png', '', '', 0, 0, '', '2015-08-24 22:41:33', '0000-00-00 00:00:00'),
(14, 'Shared With Me', 0, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '5566922ec88a2', '2015-08-18 03:29:05', '0000-00-00 00:00:00'),
(18, '', 6, 0, 'http://fusedmachines.com/', 'Fused Machines', 'vasquezd', '', 'fusedmachines.png', 'fusedmachines.png', '', '', 0, 0, '', '2015-08-21 22:53:51', '0000-00-00 00:00:00'),
(20, '', 6, 0, 'http://www.theignorantfishermen.com/2009/06/few-quotes-from-george-washington.html', 'The Ignorant Fishermen Blog: Christian Quotes from President George Washington', 'vasquezd', '', 'theignorantfishermen.png', 'theignorantfishermen.png', '', '', 0, 0, '', '2015-08-17 22:37:46', '0000-00-00 00:00:00'),
(21, '', 13, 0, 'http://www.codemiles.com/finished-projects/java-chess-t618.html', 'Java Chess Projects Codes', 'vasquezd', '', 'codemiles.png', 'codemiles.png', '', '', 0, 0, '', '2015-08-24 22:42:37', '0000-00-00 00:00:00'),
(23, '', 16, 0, 'http://ceoas.oregonstate.edu/profile/fisk/', 'Directory of People | College of Earth, Ocean, and Atmospheric Sciences | Oregon State University', 'vasquezd', '', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', '2015-05-28 03:57:39', '0000-00-00 00:00:00'),
(24, '', 1, 0, 'http://oregonstate.edu/ua/ncs/archives/2006/mar/study-martian-meteorite-reveals-markings-similar-bacteria-etched-rocks-earth', 'title not found', 'vasquezd', '', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', '2015-08-17 22:22:26', '0000-00-00 00:00:00'),
(25, 'Biology', 1, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '556692335b081', '2015-05-28 03:57:39', '0000-00-00 00:00:00'),
(26, '', 14, 0, 'https://developer.mozilla.org/en-US/Add-ons/SDK', 'Mozilla ', 'vasquezd', '', 'mozilla.png', 'mozilla.png', '', '', 0, 0, '', '2015-08-18 03:30:19', '0000-00-00 00:00:00'),
(27, '', 25, 0, 'http://spph.ubc.ca/programs-and-students/graduate-degree-programs/phd/program-details/', 'Program Details | School of Population and Public Health (SPPH)', 'vasquezd', '', 'spph.png', 'spph.png', '', '', 0, 0, '', '2015-05-28 03:57:40', '0000-00-00 00:00:00'),
(28, '', 25, 0, 'http://blakemasters.com/peter-thiels-cs183-startup', 'Notes Essaysâ€”Peter Thiel&#8217;s CS183: Startupâ€”Stanford, Spring 2012', 'vasquezd', '', 'blakemasters.png', 'blakemasters.png', '', '', 0, 0, '', '2015-05-28 03:57:41', '0000-00-00 00:00:00'),
(29, '', 25, 0, 'http://ceoas.oregonstate.edu/mrm/industry/', 'Marine Industry | Marine Resource Management | College of Earth, Ocean, and Atmospheric Sciences | Oregon State University', 'vasquezd', '', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', '2015-05-28 03:57:41', '0000-00-00 00:00:00'),
(54, 'Wall Posts', 1, 0, 'https://www.yahoo.com/', 'Yahoo', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', '2015-08-18 03:21:46', '0000-00-00 00:00:00'),
(55, 'Wall Posts', 0, 0, 'http://digg.com/', 'Digg - What the Internet is talking about right now', 'vasquezd', 'vasquezd', 'digg.png', 'digg.png', 'shared', '', 0, 0, '', '2015-08-16 22:17:09', '0000-00-00 00:00:00'),
(56, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=aeJf-18lF84', 'Pinback - Loro - YouTube', 'vasquezd', 'vasquezb', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', '2015-08-21 05:12:56', '0000-00-00 00:00:00'),
(57, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=aeJf-18lF84', 'Pinback - Loro - YouTube', 'vasquezd', 'vasquezb', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', '2015-08-21 05:12:56', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `pending_requests`
--

INSERT INTO `pending_requests` (`primary_id`, `request_type`, `request_type_name`, `sent_by`, `sent_to`, `request_key`, `sent_to_email`, `square_id`, `status`, `updated`, `created`) VALUES
(6, 'friend', '', 'vasquezb', 'vasquezd', 'vasquezdvasquezb', '', 0, 1, '2015-07-28 23:15:34', '0000-00-00 00:00:00'),
(7, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezm', '', '', 26, 1, '2015-08-19 21:29:45', '0000-00-00 00:00:00'),
(9, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezm', '', '', 27, 1, '2015-08-19 21:35:07', '0000-00-00 00:00:00'),
(10, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezb', '', '', 27, 1, '2015-08-19 21:35:07', '0000-00-00 00:00:00'),
(11, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezm', '', '', 28, 1, '2015-08-19 21:47:57', '0000-00-00 00:00:00');

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
  `article_title` varchar(255) NOT NULL,
  `article_text` text NOT NULL,
  `contains_file` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `post_status` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=178 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_from`, `post_to`, `post_type`, `post_caption`, `post_url`, `video_code`, `image_url`, `article_title`, `article_text`, `contains_file`, `unique_id`, `post_status`, `updated`, `created`) VALUES
(118, 'Vasquezd', 'Vasquezd', 'photo', 'I really like this image!', '', '', '07.jpg', '', '', 0, 'VasquezdVasquezd1437429902', 1, '2015-08-13 04:48:38', '2015-07-21 07:05:24'),
(119, 'Vasquezd', 'Vasquezd', 'video', '', 'https://www.youtube.com/embed/qDRF5iUSXn0', 'qDRF5iUSXn0', '', '', '', 0, 'VasquezdVasquezd1437429924', 1, '2015-08-14 19:46:25', '2015-07-21 07:05:35'),
(120, 'Vasquezd', 'Vasquezd', 'article', 'This is really weird! I want to visit here someday soon =)', 'http://news.yahoo.com/huge-ancient-civilization-collapse-explained-123449804.html', '', '11.jpg', 'Huge Ancient Civilization''s Collapse Explained ', 'The mysterious fall of the largest of the world''s earliest urban civilizations nearly 4,000 years ago in what is now India, Pakistan, Nepal and Bangladesh now appears to have a key culprit — ancient climate change, researchers say.', 0, 'VasquezdVasquezd1437429936', 1, '2015-08-14 19:46:25', '2015-07-21 07:05:40'),
(144, 'Vasquezd', 'Vasquezd', 'video', 'I love this song! ', 'https://www.youtube.com/watch?v=DD8zGTpyM9w', 'DD8zGTpyM9w', '', '', '', 0, '', 1, '2015-08-14 19:46:25', '2015-07-22 07:53:19'),
(145, 'Vasquezd', 'Vasquezd', 'photo', 'This is so cool!', '', '', '10.jpg', '', '', 0, 'VasquezdVasquezd1437535583', 1, '2015-08-14 19:46:25', '2015-07-22 12:26:45'),
(149, 'vasquezb', 'vasquezd', 'video', 'Helios!', 'https://www.youtube.com/watch?v=WTbVGPSBO6Y', 'WTbVGPSBO6Y', '', '', '', 0, '', 1, '2015-08-14 21:54:15', '2015-08-03 06:43:23'),
(150, 'vasquezd', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=4EyZJXGVRO0', '4EyZJXGVRO0', '', '', '', 0, '', 1, '2015-08-13 04:40:15', '2015-08-03 07:00:26'),
(151, 'vasquezd', 'vasquezm', 'video', 'What do you think of this song? ', 'https://www.youtube.com/watch?v=WTbVGPSBO6Y', 'WTbVGPSBO6Y', '', '', '', 0, '', 1, '2015-08-11 20:44:43', '2015-08-03 11:38:18'),
(152, 'vasquezd', 'vasquezd', 'video', 'New Hammock Song', 'https://www.youtube.com/watch?v=jBrWe6Foq1A', 'jBrWe6Foq1A', '', '', '', 0, '', 1, '2015-08-13 04:51:24', '2015-08-03 11:46:37'),
(153, 'vasquezd', 'vasquezb', 'video', 'Hi Brian! What do you think of this video? I really love hammock!', 'https://www.youtube.com/watch?v=iBmDZgdJaxE', 'iBmDZgdJaxE', '', '', '', 0, '', 1, '2015-08-11 20:44:48', '2015-08-03 11:50:14'),
(154, 'vasquezb', 'vasquezd', 'video', 'So Good!', 'https://www.youtube.com/watch?v=MhGH9aoLz3M', 'MhGH9aoLz3M', '', '', '', 0, '', 1, '2015-08-14 19:46:25', '2015-08-03 11:51:46'),
(155, 'vasquezd', 'vasquezb', 'video', 'This is such a good song!!', 'https://www.youtube.com/watch?v=KjIWriDTptY', 'KjIWriDTptY', '', '', '', 0, '', 1, '2015-08-11 20:44:52', '2015-08-03 12:19:45'),
(156, 'vasquezd', 'vasquezb', 'video', 'What do you think of this? ', 'https://www.youtube.com/watch?v=ldXdymGCShg', 'ldXdymGCShg', '', '', '', 0, '', 1, '2015-08-16 03:27:49', '2015-08-16 11:59:28'),
(158, 'vasquezd', 'vasquezm', 'video', 'This is so good!', 'https://www.youtube.com/watch?v=vQymMt4jN6k', 'vQymMt4jN6k', '', '', '', 0, '', 1, '2015-08-16 03:18:04', '2015-08-16 12:13:41'),
(159, 'vasquezd', 'vasquezd', 'video', 'new~!', 'https://www.youtube.com/watch?v=vQymMt4jN6k', 'vQymMt4jN6k', '', '', '', 0, '', 1, '2015-08-16 03:18:01', '2015-08-16 12:14:01'),
(160, 'vasquezd', 'vasquezb', 'video', 'check this out', 'https://www.youtube.com/watch?v=ldXdymGCShg', 'ldXdymGCShg', '', '', '', 0, '', 1, '2015-08-16 03:19:56', '2015-08-16 12:19:56'),
(161, 'vasquezd', 'vasquezb', 'video', 'i like this!', 'https://www.youtube.com/watch?v=36aeT8lVQGM', '36aeT8lVQGM', '', '', '', 0, '', 1, '2015-08-16 03:21:53', '2015-08-16 12:21:53'),
(162, 'vasquezd', 'vasquezb', 'photo', '', '', '', '1439695452background_9.jpg', '', '', 0, 'vasquezdvasquezb1439695414', 1, '2015-08-16 03:27:53', '2015-08-16 12:24:12'),
(163, 'vasquezd', 'vasquezb', 'photo', '', '', '', '1439695499background_6.jpg', '', '', 0, 'vasquezdvasquezb1439695488', 1, '2015-08-16 03:27:55', '2015-08-16 12:24:59'),
(164, 'vasquezd', 'vasquezb', 'photo', '', '', '', '1439695687background_4.jpg', '', '', 0, 'vasquezdvasquezb1439695677', 1, '2015-08-16 03:28:07', '2015-08-16 12:28:07'),
(165, 'vasquezd', 'vasquezd', 'photo', '', '', '', '14396976782778347000_e12d80bb3f_o.jpg', '', '', 0, 'vasquezdvasquezd1439697667', 1, '2015-08-16 04:01:18', '2015-08-16 13:01:18'),
(166, 'vasquezd', 'vasquezd', 'photo', '', '', '', '14396977674970373037_20cc596323_b.jpg', '', '', 0, 'vasquezdvasquezd1439697684', 1, '2015-08-16 04:02:47', '2015-08-16 13:01:33'),
(167, 'vasquezd', 'vasquezd', 'photo', '', '', '', '14396977785139864368_c2b4a67c0f_b.jpg', '', '', 0, 'vasquezdvasquezd1439697769', 1, '2015-08-16 04:02:58', '2015-08-16 13:02:57'),
(168, 'vasquezd', 'vasquezd', 'photo', '', '', '', '14396977905266211866_a2bb1f0659_o.jpg', '', '', 0, 'vasquezdvasquezd1439697779', 1, '2015-08-16 04:03:10', '2015-08-16 13:03:09'),
(169, 'vasquezd', 'vasquezd', 'photo', '', '', '', '14396978165139864368_c2b4a67c0f_b.jpg', '', '', 0, 'vasquezdvasquezd1439697805', 1, '2015-08-16 04:03:36', '2015-08-16 13:03:36'),
(170, 'vasquezd', 'vasquezd', 'photo', '', '', '', '', '', '', 0, 'vasquezdvasquezd1439697816', 1, '2015-08-16 04:03:44', '2015-08-16 13:03:44'),
(171, 'vasquezd', 'vasquezd', 'photo', '', '', '', '14396978405266211866_a2bb1f0659_o.jpg', '', '', 0, 'vasquezdvasquezd1439697831', 1, '2015-08-16 04:04:00', '2015-08-16 13:04:00'),
(172, '<br />\n<font size=''1''><table class=''xdebug-error xe-notice'' dir=''ltr'' border=''1'' cellspacing=''0'' cellpadding=''1''>\n<tr><th align=''left'' bgcolor=''#f57900'' colspan=', 'vasquezd', 'photo', '', '', '', '', '', '', 0, '<br />\n<font size=''1''><table class=''xdebug-error xe-notice'' dir=''ltr'' border=''1'' cellspacing=''0'' cellpadding=''1''>\n<tr><th align=''left'' bgcolor=''#f57900'' colspan=', 0, '2015-08-16 04:06:51', '2015-08-16 13:06:51'),
(173, 'vasquezd', 'vasquezd', 'photo', '', '', '', '14396982312778347000_e12d80bb3f_o.jpg', '', '', 0, 'vasquezdvasquezd1439698069', 0, '2015-08-16 04:10:31', '2015-08-16 13:08:00'),
(174, 'vasquezd', 'vasquezd', 'photo', '', '', '', '14396982424970373037_20cc596323_b.jpg', '', '', 0, 'vasquezdvasquezd1439698231', 1, '2015-08-16 04:10:42', '2015-08-16 13:10:42'),
(175, 'vasquezd', 'vasquezd', 'photo', '', '', '', '14396982665139864368_c2b4a67c0f_b.jpg', '', '', 0, 'vasquezdvasquezd1439698242', 1, '2015-08-16 04:11:06', '2015-08-16 13:11:06'),
(176, 'vasquezd', 'vasquezb', 'video', 'I really like this song! What do you think of it? ', 'https://www.youtube.com/watch?v=aeJf-18lF84', 'aeJf-18lF84', '', '', '', 0, '', 0, '2015-08-21 05:13:13', '2015-08-21 14:12:53'),
(177, 'vasquezd', 'vasquezb', 'video', 'I really like this song! What do you think of it? ', 'https://www.youtube.com/watch?v=aeJf-18lF84', 'aeJf-18lF84', '', '', '', 0, '', 1, '2015-08-21 05:12:55', '2015-08-21 14:12:55');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

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
(23, 175, 1, 'vasquezd', '2015-08-24 04:36:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `squares`
--

INSERT INTO `squares` (`square_id`, `square_key`, `created_by`, `square_name`, `square_image`, `square_users`, `square_folders`, `square_messages`, `updated`, `created`) VALUES
(17, '0.33365200 1409889736540935c8517548.01852381', 'vasquezd', 'First Square ', '', 1, 1, 1, '0000-00-00 00:00:00', '2014-09-05 04:02:16'),
(27, '0.70995100 144002010755d4f68bad53f3.61894836', 'vasquezd', '', '', 27, 27, 27, '0000-00-00 00:00:00', '2015-08-19 21:35:07'),
(28, '0.07075100 144002087755d4f98d1145f2.33237132', 'vasquezd', '', '', 28, 28, 28, '0000-00-00 00:00:00', '2015-08-19 21:47:57');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `square_users`
--

INSERT INTO `square_users` (`primary_id`, `square_id`, `user_name`, `status`, `created`, `updated`) VALUES
(1, 17, 'vasquezd', 1, '2014-09-05 04:02:16', '2014-09-07 02:57:27'),
(2, 17, 'vasquezb', 1, '2014-09-05 04:02:16', '2014-09-07 03:14:14'),
(24, 27, 'vasquezd', 1, '2015-08-19 21:35:07', '0000-00-00 00:00:00'),
(25, 27, 'vasquezm', 0, '2015-08-19 21:35:07', '0000-00-00 00:00:00'),
(26, 27, 'vasquezb', 0, '2015-08-19 21:35:07', '0000-00-00 00:00:00'),
(27, 28, 'vasquezd', 1, '2015-08-19 21:47:57', '0000-00-00 00:00:00'),
(28, 28, 'vasquezm', 1, '2015-08-19 21:47:57', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE IF NOT EXISTS `user_login` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(15) NOT NULL,
  `salt` int(11) NOT NULL,
  `password` varchar(40) NOT NULL,
  UNIQUE KEY `user_id_2` (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_name_2` (`user_name`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `salt`, `password`) VALUES
(1, 'vasquezd', 1408593605, 'f62c9d59b1b2cbe2b6462784e1d6a550f1afbe85'),
(2, 'vasquezm', 1408593661, '01383c5e20acbf7898d0b8962d68e022691ce30c'),
(3, 'vasquezb', 1408593651, 'c2975efb9c72c5d1a5c45593b2dbac99ed71c608'),
(4, 'vasquezk', 1408593688, 'b5d03b353dc2dcce9ae1f190a311f1885328da61');

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
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_profile_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_profile_id`, `user_id`, `user_name`, `email`, `image_name`, `first_name`, `last_name`, `root_folder`, `biography`, `university`, `updated`, `created`) VALUES
(46, 1, 'vasquezd', 'Vasquezd@onid.orst.edu', 'david.jpg', 'David', 'Vasquez', 'Vasquezd', 'Hi, Sometime in the early first century B.C., a ship went down in the Mediterranean Sea, just off a Greek island named Antikythera. The wreck itself wasnt unusual. The island was surrounded by jagged rocks, which likely caused many a boat to disappear back then. But there was something different about this one. The boat contained as  trove of statues, jewelry, and most notably what some scholars believe to be the earliest computer known to man.', 'Oregon State ', '2015-08-03 02:39:59', '2014-08-21 11:00:05'),
(47, 2, 'vasquezm', 'vasquezm@shareshare.com', 'matt.jpg', 'Matt', 'Vasquez', '', 'This is matts page!', '', '2015-05-04 09:37:27', '0000-00-00 00:00:00'),
(48, 3, 'vasquezb', 'vasquezb@shareshare.com', 'brian.jpg', 'Brian', 'Vasquez', '', 'this is brian''s page! ', '', '2015-05-04 10:51:45', '0000-00-00 00:00:00'),
(49, 5, 'vasquezj', 'vasquezj@shareshare.com', '10.jpg', 'Elsie', 'Smith', '', 'this is my page!', '', '2015-07-23 20:43:42', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
