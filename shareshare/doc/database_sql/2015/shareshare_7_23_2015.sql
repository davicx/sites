-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2015 at 12:35 AM
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
  `title` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `comment_from` int(11) NOT NULL,
  `comment_to` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `server_name` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `file_location` varchar(255) NOT NULL,
  `file_root` varchar(255) NOT NULL,
  `folder_path` text NOT NULL,
  `status` int(11) NOT NULL,
  `file_size` int(11) NOT NULL,
  `file_uploaded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_last_modified` timestamp NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `file_name`, `user_name`, `server_name`, `image_name`, `post_id`, `file_location`, `file_root`, `folder_path`, `status`, `file_size`, `file_uploaded`, `file_last_modified`) VALUES
(79, 'Hydrangeas.jpg', 'VasquezdVasquezd1437428723', '1437428747Hydrangeas.jpg', '', 115, '', '', '', 1, 0, '2015-07-20 21:45:47', '0000-00-00 00:00:00'),
(80, 'Hydrangeas.jpg', 'VasquezdVasquezd1437428723', '1437429021Hydrangeas.jpg', '', 115, '', '', '', 1, 0, '2015-07-20 21:50:21', '0000-00-00 00:00:00'),
(81, 'Tulips.jpg', 'VasquezdVasquezd1437429021', '1437429038Tulips.jpg', '', 116, '', '', '', 1, 0, '2015-07-20 21:50:38', '0000-00-00 00:00:00'),
(82, 'Koala.jpg', 'VasquezdVasquezd1437429038', '1437429085Koala.jpg', '', 117, '', '', '', 1, 0, '2015-07-20 21:51:25', '0000-00-00 00:00:00'),
(83, 'Jellyfish.jpg', 'VasquezdVasquezd1437429902', '1437429924Jellyfish.jpg', '', 118, '', '', '', 1, 0, '2015-07-20 22:05:24', '0000-00-00 00:00:00'),
(84, 'Penguins.jpg', 'VasquezdVasquezd1437429924', '1437429935Penguins.jpg', '', 119, '', '', '', 1, 0, '2015-07-20 22:05:35', '0000-00-00 00:00:00'),
(85, 'Tulips - Copy.jpg', 'VasquezdVasquezd1437429936', '1437429940Tulips_-_Copy.jpg', '', 120, '', '', '', 1, 0, '2015-07-20 22:05:40', '0000-00-00 00:00:00'),
(86, 'Jellyfish.jpg', 'VasquezdVasquezd1437429940', '1437429944Jellyfish.jpg', '', 121, '', '', '', 1, 0, '2015-07-20 22:05:44', '0000-00-00 00:00:00'),
(87, 'Desert.jpg', 'VasquezdVasquezd1437516560', '1437517363Desert.jpg', '', 129, '', '', '', 1, 0, '2015-07-21 22:22:43', '0000-00-00 00:00:00'),
(88, 'Jellyfish.jpg', 'VasquezdVasquezd1437517364', '1437517397Jellyfish.jpg', '', 130, '', '', '', 1, 0, '2015-07-21 22:23:17', '0000-00-00 00:00:00'),
(89, '04.jpg', 'VasquezdVasquezd1437535583', '143753560504_1.jpg', '', 145, '', '', '', 1, 0, '2015-07-22 03:26:45', '0000-00-00 00:00:00'),
(90, '09.jpg', 'VasquezdVasquezd1437595497', '143759589309_1.jpg', '', 146, '', '', '', 1, 0, '2015-07-22 20:11:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `files_new`
--

CREATE TABLE IF NOT EXISTS `files_new` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `square_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `is_folder` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_name_server` varchar(255) NOT NULL,
  `file_image` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `file_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_last_modified` timestamp NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `files_new`
--

INSERT INTO `files_new` (`file_id`, `square_id`, `parent`, `is_folder`, `file_name`, `file_name_server`, `file_image`, `user_id`, `user_name`, `file_created`, `file_last_modified`) VALUES
(1, 1, 1, 1, 'First Folder ', 'first_folder', 'folder.png', 1, 'vasquezd', '2015-05-22 03:30:40', '2015-05-22 03:30:40');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friends_id`, `user_name`, `user_id`, `friend_user_name`, `friend_id`, `created`) VALUES
(1, 'vasquezd', 1, 'vasquezm', 2, '2015-05-04 09:47:04'),
(2, 'vasquezm', 2, 'vasquezd', 1, '2015-05-04 09:47:04'),
(3, 'vasquezd', 1, 'vasquezb', 3, '2015-05-04 09:47:23'),
(4, 'vasquezb', 3, 'vasquezd', 1, '2015-05-04 09:47:23');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`link_id`, `folder_name`, `parent`, `is_folder`, `link_url`, `link_title`, `user_name`, `link_image`, `link_favicon`, `link_type`, `caption`, `tag_id`, `likes`, `unique_id`, `created`, `updated`) VALUES
(1, 'UViC- Oceanography', 1, 1, '', '', 'vasquezd', 'folder.png', '', '', '', 0, 0, '5566922844c9c', '2015-05-28 03:57:28', '0000-00-00 00:00:00'),
(2, '', 1, 0, 'http://www.colingoldblatt.net/researchgroup', 'Research Group - Colin Goldblatt', 'vasquezd', 'colingoldblatt.png', 'colingoldblatt.png', '', '', 0, 0, '', '2015-05-28 03:57:28', '0000-00-00 00:00:00'),
(3, '', 1, 0, 'http://baumlab.weebly.com/team.html', 'Team - The Baum Lab @ UVic', 'vasquezd', 'weebly.png', 'weebly.png', '', '', 0, 0, '', '2015-05-28 03:57:29', '0000-00-00 00:00:00'),
(4, 'OSU- Oceangraphy FW', 1, 1, '', '', 'vasquezd', 'folder.png', '', '', '', 0, 0, '5566922927064', '2015-05-28 03:57:29', '0000-00-00 00:00:00'),
(5, '', 4, 0, 'http://mmi.oregonstate.edu/people', 'People | Oregon State University Marine Mammal Institute', 'vasquezd', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', '2015-05-28 03:57:29', '0000-00-00 00:00:00'),
(6, 'May', 1, 1, '', '', 'vasquezd', 'folder.png', '', '', '', 0, 0, '5566922966436', '2015-05-28 03:57:29', '0000-00-00 00:00:00'),
(7, '', 6, 0, 'http://housing.uvic.ca/ads/index.php?a=5&b=185', 'Student Listings', 'vasquezd', 'uvic.png', 'uvic.png', '', '', 0, 0, '', '2015-05-28 03:57:30', '0000-00-00 00:00:00'),
(8, '', 6, 0, 'https://github.com/explore', 'Explore Â· GitHub', 'vasquezd', 'github.png', 'github.png', '', '', 0, 0, '', '2015-05-28 03:57:31', '0000-00-00 00:00:00'),
(9, '', 6, 0, 'https://anil3a.wordpress.com/2011/08/26/resetting-adobe-cs5-suite-trial-period-by-yourself/', 'Resetting Adobe CS5 suite trial period by yourself | anil3a', 'vasquezd', 'wordpress.png', 'wordpress.png', '', '', 0, 0, '', '2015-05-28 03:57:32', '0000-00-00 00:00:00'),
(10, '', 6, 0, 'http://famguardian.org/subjects/Politics/Articles/Liberals.htm', '60 Hard Truths About &quot;Liberals&quot;', 'vasquezd', 'famguardian.png', 'famguardian.png', '', '', 0, 0, '', '2015-05-28 03:57:32', '0000-00-00 00:00:00'),
(11, '', 6, 0, 'http://www.theatlantic.com/business/archive/2014/06/a-dangerous-question-does-internet-advertising-work-at-all/372704/', 'A Dangerous Question: Does Internet Advertising Work at All? - The Atlantic', 'vasquezd', 'theatlantic.png', 'theatlantic.png', '', '', 0, 0, '', '2015-05-28 03:57:33', '0000-00-00 00:00:00'),
(12, '', 6, 0, 'http://www.age-of-the-sage.org/psychology/social/social_identity_theory.html', 'Social Identity Theory - Tajfel and Turner 1979', 'vasquezd', 'age-of-the-sage.png', 'age-of-the-sage.png', '', '', 0, 0, '', '2015-05-28 03:57:34', '0000-00-00 00:00:00'),
(13, '', 6, 0, 'http://jqueryui.com/themeroller/', 'ThemeRoller | jQuery UI', 'vasquezd', 'jqueryui.png', 'jqueryui.png', '', '', 0, 0, '', '2015-05-28 03:57:34', '0000-00-00 00:00:00'),
(14, 'OSU', 1, 1, '', '', 'vasquezd', 'folder.png', '', '', '', 0, 0, '5566922ec88a2', '2015-05-28 03:57:34', '0000-00-00 00:00:00'),
(15, 'Business', 1, 1, '', '', 'vasquezd', 'folder.png', '', '', '', 0, 0, '5566922ed386f', '2015-05-28 03:57:34', '0000-00-00 00:00:00'),
(16, 'Current', 1, 1, '', '', 'vasquezd', 'folder.png', '', '', '', 0, 0, '5566922edada2', '2015-05-28 03:57:34', '0000-00-00 00:00:00'),
(17, '', 16, 0, 'https://www.yahoo.com/politics/clinton-foundation-admits-mistakes-in-tax-forms-117429841506.html', 'Clinton Foundation admits mistakes in tax forms', 'vasquezd', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', '2015-05-28 03:57:35', '0000-00-00 00:00:00'),
(18, '', 16, 0, 'http://fusedmachines.com/', 'Fused Machines', 'vasquezd', 'fusedmachines.png', 'fusedmachines.png', '', '', 0, 0, '', '2015-05-28 03:57:35', '0000-00-00 00:00:00'),
(19, '', 16, 0, 'https://webmail.oregonstate.edu/index.php?url=https%3A%2F%2Fwebmail.oregonstate.edu%2F', 'Mail :: Welcome to Webmail', 'vasquezd', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', '2015-05-28 03:57:36', '0000-00-00 00:00:00'),
(20, '', 16, 0, 'http://www.theignorantfishermen.com/2009/06/few-quotes-from-george-washington.html', 'The Ignorant Fishermen Blog: Christian Quotes from President George Washington', 'vasquezd', 'theignorantfishermen.png', 'theignorantfishermen.png', '', '', 0, 0, '', '2015-05-28 03:57:36', '0000-00-00 00:00:00'),
(21, '', 16, 0, 'http://www.codemiles.com/finished-projects/java-chess-t618.html', 'Java Chess Projects Codes', 'vasquezd', 'codemiles.png', 'codemiles.png', '', '', 0, 0, '', '2015-05-28 03:57:38', '0000-00-00 00:00:00'),
(22, '', 16, 0, 'https://www.facebook.com/DAMchicMagazine/timeline', 'title not found', 'vasquezd', 'facebook.png', 'facebook.png', '', '', 0, 0, '', '2015-05-28 03:57:39', '0000-00-00 00:00:00'),
(23, '', 16, 0, 'http://ceoas.oregonstate.edu/profile/fisk/', 'Directory of People | College of Earth, Ocean, and Atmospheric Sciences | Oregon State University', 'vasquezd', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', '2015-05-28 03:57:39', '0000-00-00 00:00:00'),
(24, '', 16, 0, 'http://oregonstate.edu/ua/ncs/archives/2006/mar/study-martian-meteorite-reveals-markings-similar-bacteria-etched-rocks-earth', 'title not found', 'vasquezd', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', '2015-05-28 03:57:39', '0000-00-00 00:00:00'),
(25, 'Biology', 1, 1, '', '', 'vasquezd', 'folder.png', '', '', '', 0, 0, '556692335b081', '2015-05-28 03:57:39', '0000-00-00 00:00:00'),
(26, '', 25, 0, 'https://developer.mozilla.org/en-US/Add-ons/SDK', 'Add-on SDK - Mozilla | MDN', 'vasquezd', 'mozilla.png', 'mozilla.png', '', '', 0, 0, '', '2015-05-28 03:57:39', '0000-00-00 00:00:00'),
(27, '', 25, 0, 'http://spph.ubc.ca/programs-and-students/graduate-degree-programs/phd/program-details/', 'Program Details | School of Population and Public Health (SPPH)', 'vasquezd', 'spph.png', 'spph.png', '', '', 0, 0, '', '2015-05-28 03:57:40', '0000-00-00 00:00:00'),
(28, '', 25, 0, 'http://blakemasters.com/peter-thiels-cs183-startup', 'Notes Essaysâ€”Peter Thiel&#8217;s CS183: Startupâ€”Stanford, Spring 2012', 'vasquezd', 'blakemasters.png', 'blakemasters.png', '', '', 0, 0, '', '2015-05-28 03:57:41', '0000-00-00 00:00:00'),
(29, '', 25, 0, 'http://ceoas.oregonstate.edu/mrm/industry/', 'Marine Industry | Marine Resource Management | College of Earth, Ocean, and Atmospheric Sciences | Oregon State University', 'vasquezd', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', '2015-05-28 03:57:41', '0000-00-00 00:00:00'),
(30, '', 0, 0, 'https://webmail.oregonstate.edu/index.php?url=https%3A%2F%2Fwebmail.oregonstate.edu%2F', 'Mail :: Welcome to Webmail', 'vasquezd', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', '2015-05-28 04:02:29', '0000-00-00 00:00:00'),
(31, '', 0, 0, 'https://webmail.oregonstate.edu/index.php?url=https%3A%2F%2Fwebmail.oregonstate.edu%2F', 'Mail :: Welcome to Webmail', 'vasquezd', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', '2015-05-28 04:02:29', '0000-00-00 00:00:00'),
(32, '', 0, 0, 'https://webmail.oregonstate.edu/index.php?url=https%3A%2F%2Fwebmail.oregonstate.edu%2F', 'Mail :: Welcome to Webmail', 'vasquezd', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', '2015-05-28 04:02:29', '0000-00-00 00:00:00'),
(33, '', 0, 0, 'https://webmail.oregonstate.edu/index.php?url=https%3A%2F%2Fwebmail.oregonstate.edu%2F', 'Mail :: Welcome to Webmail', 'vasquezd', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', '2015-05-28 04:02:29', '0000-00-00 00:00:00'),
(34, '', 0, 0, 'https://webmail.oregonstate.edu/index.php?url=https%3A%2F%2Fwebmail.oregonstate.edu%2F', 'Mail :: Welcome to Webmail', 'vasquezd', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', '2015-05-28 04:02:29', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `link_url` varchar(255) NOT NULL,
  `contains_file` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=147 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_from`, `post_to`, `post_type`, `post_caption`, `post_url`, `video_code`, `image_url`, `article_title`, `article_text`, `link_url`, `contains_file`, `unique_id`, `updated`, `created`) VALUES
(118, 'Vasquezd', 'Vasquezd', 'photo', '', '', '', '07.jpg', '', '', '', 0, 'VasquezdVasquezd1437429902', '2015-07-20 22:08:48', '2015-07-21 07:05:24'),
(119, 'Vasquezd', 'Vasquezd', 'video', '', 'https://www.youtube.com/embed/qDRF5iUSXn0', 'qDRF5iUSXn0', '', '', '', '', 0, 'VasquezdVasquezd1437429924', '2015-07-22 04:03:12', '2015-07-21 07:05:35'),
(120, 'Vasquezd', 'Vasquezd', 'article', '', 'http://news.yahoo.com/huge-ancient-civilization-collapse-explained-123449804.html', '', '', 'Huge Ancient Civilization''s Collapse Explained ', 'The mysterious fall of the largest of the world''s earliest urban civilizations nearly 4,000 years ago in what is now India, Pakistan, Nepal and Bangladesh now appears to have a key culprit — ancient climate change, researchers say.', '', 0, 'VasquezdVasquezd1437429936', '2015-07-22 04:06:09', '2015-07-21 07:05:40'),
(144, 'Vasquezd', 'Vasquezd', 'video', 'I love this song! ', 'https://www.youtube.com/watch?v=DD8zGTpyM9w', 'DD8zGTpyM9w', '', '', '', '', 0, '', '2015-07-22 03:26:00', '2015-07-22 07:53:19'),
(145, 'Vasquezd', 'Vasquezd', 'photo', 'This is so cool!', '', '', '10.jpg', '', '', '', 0, 'VasquezdVasquezd1437535583', '2015-07-22 04:01:29', '2015-07-22 12:26:45'),
(146, 'Vasquezd', 'Vasquezd', 'photo', '', '', '', '143759589309_1.jpg', '', '', '', 0, 'VasquezdVasquezd1437595497', '2015-07-22 20:11:33', '2015-07-23 05:11:33');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`post_like_id`, `post_id`, `liked_by`, `liked_by_name`, `time_stamp`) VALUES
(1, 1, 1, 'vasquezd', '2015-04-17 03:00:31'),
(2, 1, 2, 'bilbo', '2015-04-17 03:01:04'),
(3, 2, 2, 'vasquezd', '2015-04-17 03:01:04'),
(4, 1, 2, 'vasquezm', '2015-04-17 03:01:04');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `salt`, `password`) VALUES
(1, 'vasquezd', 1408593605, 'f62c9d59b1b2cbe2b6462784e1d6a550f1afbe85'),
(2, 'vasquezm', 1408593661, '01383c5e20acbf7898d0b8962d68e022691ce30c'),
(3, 'vasquezb', 1408593651, 'c2975efb9c72c5d1a5c45593b2dbac99ed71c608');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_profile_id`, `user_id`, `user_name`, `email`, `image_name`, `first_name`, `last_name`, `root_folder`, `biography`, `university`, `updated`, `created`) VALUES
(46, 1, 'vasquezd', 'Vasquezd@onid.orst.edu', '14276656286_1.jpg', 'David', 'Vasquez', 'Vasquezd', 'Hi, Sometime in the early first century B.C., a ship went down in the Mediterranean Sea, just off a Greek island named Antikythera. The wreck itself wasnt unusual. The island was surrounded by jagged rocks, which likely caused many a boat to disappear back then. But there was something different about this one. The boat contained as  trove of statues, jewelry, and most notably what some scholars believe to be the earliest computer known to man.', 'Oregon State ', '2015-04-15 03:34:46', '2014-08-21 11:00:05'),
(47, 2, 'vasquezm', 'vasquezm@shareshare.com', 'matt.jpg', 'Matt', 'Vasquez', '', 'This is matts page!', '', '2015-05-04 09:37:27', '0000-00-00 00:00:00'),
(48, 3, 'vasquezb', 'vasquezb@shareshare.com', 'brian.jpg', 'Brian', 'Vasquez', '', 'this is brian''s page! ', '', '2015-05-04 10:51:45', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
