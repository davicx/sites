-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2018 at 02:11 AM
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
  `comment_parent` int(11) NOT NULL,
  `comment_is_child` int(11) NOT NULL,
  `comment_level` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_from` varchar(255) NOT NULL,
  `comment_to` varchar(255) NOT NULL,
  `likes` int(11) NOT NULL,
  `has_file` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_name_server` varchar(255) NOT NULL,
  `comment_deleted` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `comment_parent`, `comment_is_child`, `comment_level`, `comment`, `comment_from`, `comment_to`, `likes`, `has_file`, `file_id`, `file_name`, `file_name_server`, `comment_deleted`, `updated`, `created`) VALUES
(46, 186, 0, 0, 0, 'This hobbit was a very well-to-do hobbit, and his name was Baggins. \n								The Bagginses had lived in the neighbourhood of The Hill for time out of mind, \n								and people considered them very respectable, not only because most of them were rich, \n								but also because they never had any adventures or did anything unexpected: \n								you could tell what a Baggins would say on any question without the bother of asking him. \n								This is a story of how a Baggins had an adventure, found himself doing and saying things \n								altogether unexpected. He may have lost the neighbours'' respect, but he gained-well, \n								you will see whether he gained anything in the end. ', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-06 00:21:16', '2017-03-30 22:37:27'),
(47, 186, 0, 0, 0, 'This was bad grammar of course, but that is how beavers talk when they are excited; I mean, in Narnia--in our world they usually don''t talk at all. ', 'sarah', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 23:56:42', '2016-07-08 22:37:32'),
(48, 186, 0, 0, 0, 'It is as hard to explain how this sunlit land was different from the old Narnia as it would be to tell you how the fruits of that country taste. Perhaps you will get some idea of it if you think like this. You may have been in a room in which there was a window that looked out on a lovely bay of the sea or a green valley that wound away among mountains. ', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-06 00:21:19', '2016-07-08 22:37:38'),
(69, 0, 0, 0, 0, 'lifehouse', 'vasquezd', '175', 0, 1, 0, 'Lighthouse.jpg', '1491255927Lighthouse.jpg', 0, '2017-04-03 21:45:27', '2017-04-03 21:45:27'),
(71, 0, 0, 0, 0, 'file', 'vasquezd', 'vasquezd', 0, 1, 0, 'Hydrangeas.jpg', '1491265119Hydrangeas.jpg', 0, '2017-04-04 00:18:39', '2017-04-04 00:18:39'),
(72, 0, 46, 1, 0, 'this is the new child comment', 'vasquezd', 'vasquezd', 0, 1, 0, 'Tulips.jpg', '1491265606Tulips.jpg', 0, '2017-04-06 00:21:21', '2017-04-04 00:26:46'),
(73, 0, 0, 0, 0, 'this is new', 'matt', 'vasquezd', 0, 0, 0, '', '', 1, '2017-04-06 00:21:45', '2017-04-05 00:12:08'),
(74, 0, 0, 0, 0, 'hi', 'kristen', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 23:56:07', '2017-04-05 23:13:53'),
(75, 0, 74, 1, 1, 'helo child', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-06 00:21:24', '2017-04-05 23:17:17'),
(76, 0, 75, 1, 1, 'helo child', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 23:18:19', '2017-04-05 23:17:50'),
(77, 0, 74, 1, 1, 'helo child', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 23:20:12', '2017-04-05 23:20:12'),
(78, 0, 74, 1, 1, 'hello new child ', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-06 00:13:31', '2017-04-05 23:20:52'),
(79, 0, 71, 1, 1, 'helo child', 'matt', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 23:54:48', '2017-04-05 23:25:25'),
(80, 0, 71, 1, 1, 'helo child', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-06 00:21:25', '2017-04-05 23:25:31'),
(81, 0, 48, 1, 1, 'helo child', 'brian', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-06 00:21:26', '2017-04-05 23:47:52'),
(82, 0, 48, 1, 1, 'helo child', 'sarah', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-06 00:21:27', '2017-04-05 23:48:06'),
(83, 0, 48, 1, 1, 'helo child', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 23:48:10', '2017-04-05 23:48:10'),
(84, 0, 48, 1, 1, 'helo child', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-06 00:21:29', '2017-04-05 23:48:16'),
(85, 0, 48, 1, 1, 'helo child', 'sarah', 'vasquezd', 0, 0, 0, '', '', 1, '2017-04-06 00:22:23', '2017-04-05 23:49:29'),
(86, 0, 48, 1, 1, 'why', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-06 00:21:31', '2017-04-05 23:49:35'),
(87, 0, 48, 1, 1, 'thats better ', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 23:49:42', '2017-04-05 23:49:42'),
(88, 0, 48, 1, 1, 'thats better why', 'sarah', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-06 00:21:32', '2017-04-05 23:50:21'),
(89, 0, 48, 1, 1, 'clear out', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-06 00:21:34', '2017-04-05 23:50:34'),
(90, 0, 48, 1, 1, 'right now', 'sarah', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-06 00:21:35', '2017-04-05 23:50:54'),
(91, 0, 47, 1, 1, 'hard to see down here', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 23:51:11', '2017-04-05 23:51:11'),
(92, 0, 71, 1, 1, 'right?1', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 1, '2017-04-06 00:21:49', '2017-04-05 23:51:20'),
(93, 0, 0, 0, 0, 'still work?', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-06 22:46:24', '2017-04-06 22:46:24'),
(94, 0, 93, 1, 1, 'ok', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 1, '2017-04-06 23:16:52', '2017-04-06 23:14:48'),
(95, 0, 0, 0, 0, 'this is a new comment', 'vasquezd', '175', 0, 0, 0, '', '', 0, '2017-04-06 23:46:54', '2017-04-06 23:46:54'),
(96, 0, 95, 1, 1, 'oh t otall i agree', 'vasquezd', '175', 0, 0, 0, '', '', 0, '2017-04-06 23:47:26', '2017-04-06 23:47:26'),
(97, 438, 0, 0, 0, 'this is a new comment yaya!', 'vasquezd', '438', 0, 0, 0, '', '', 0, '2017-08-22 23:56:32', '2017-04-06 23:54:14'),
(98, 0, 0, 0, 0, 'check out the new files I put for our game', 'vasquezd', '177', 0, 0, 0, '', '', 0, '2017-04-06 23:54:27', '2017-04-06 23:54:27'),
(99, 0, 0, 0, 0, 'hello what a great video', 'vasquezd', '321', 0, 0, 0, '', '', 0, '2017-08-23 00:25:14', '2017-08-23 00:25:14'),
(100, 438, 0, 0, 0, 'hello what a great video!!!!', 'vasquezd', '321', 0, 0, 0, '', '', 0, '2017-08-24 00:17:03', '2017-08-23 00:26:33'),
(101, 438, 0, 0, 0, 'This is new', 'vasquezd', '321', 0, 0, 0, '', '', 1, '2017-08-24 00:15:03', '2017-08-23 23:19:29'),
(102, 438, 0, 0, 0, 'Does this work?', 'vasquezd', '321', 0, 0, 0, '', '', 0, '2017-08-31 21:09:21', '2017-08-31 21:09:21'),
(103, 18, 0, 0, 0, 'this is cool!', 'vasquezd', '321', 0, 0, 0, '', '', 0, '2017-10-01 23:07:17', '2017-10-01 23:07:17'),
(104, 18, 0, 0, 0, 'ya!', 'vasquezd', '321', 0, 0, 0, '', '', 0, '2017-10-01 23:07:41', '2017-10-01 23:07:41');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `comment_likes`
--

INSERT INTO `comment_likes` (`comment_like_id`, `comment_id`, `liked_by`, `liked_by_name`, `updated`) VALUES
(2, 15, 2, 'matt', '2016-05-26 23:01:32'),
(4, 3, 1, 'vasquezd', '2016-05-26 23:58:44'),
(5, 13, 1, 'vasquezd', '2016-05-27 00:00:45'),
(6, 2, 1, 'vasquezd', '2016-05-27 00:00:47'),
(8, 15, 1, 'vasquezd', '2016-05-27 20:11:59'),
(9, 23, 1, 'vasquezd', '2016-05-27 20:21:04'),
(10, 22, 1, 'vasquezd', '2016-05-27 20:21:05'),
(11, 19, 1, 'vasquezd', '2016-05-27 20:21:07'),
(12, 20, 1, 'vasquezd', '2016-05-27 22:03:54'),
(14, 24, 1, 'vasquezd', '2016-05-31 00:02:53'),
(15, 25, 1, 'Vasquezd', '2016-05-31 22:29:27'),
(16, 25, 1, 'vasquezd', '2016-06-02 20:29:54'),
(17, 26, 1, 'vasquezd', '2016-06-02 20:48:21'),
(18, 40, 1, 'vasquezd', '2016-07-03 23:22:47'),
(19, 41, 1, 'vasquezd', '2016-07-03 23:22:47'),
(20, 42, 1, 'vasquezd', '2016-07-03 23:33:20'),
(21, 39, 1, 'vasquezd', '2016-07-08 22:02:26'),
(22, 45, 1, 'vasquezd', '2016-07-08 22:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `comment_votes`
--

CREATE TABLE IF NOT EXISTS `comment_votes` (
  `comment_vote_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `up_vote` int(11) NOT NULL,
  `up_vote_user` varchar(255) NOT NULL,
  `down_vote` int(11) NOT NULL,
  `down_vote_user` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_vote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_parent` int(11) NOT NULL,
  `event_category` varchar(255) NOT NULL,
  `event_description` text NOT NULL,
  `event_location` varchar(255) NOT NULL,
  `event_image` varchar(255) NOT NULL,
  `event_time` timestamp NOT NULL,
  `event_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `master_site` varchar(255) NOT NULL,
  `parent_folder` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_image` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_name_server` varchar(255) NOT NULL,
  `is_folder` int(11) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_caption` text NOT NULL,
  `file_seen` int(11) NOT NULL,
  `file_status` int(11) NOT NULL,
  `recycle_status` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `file_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_last_modified` timestamp NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=176 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `master_site`, `parent_folder`, `group_id`, `post_id`, `file_name`, `file_image`, `file_type`, `file_name_server`, `is_folder`, `folder_name`, `user_name`, `user_id`, `file_caption`, `file_seen`, `file_status`, `recycle_status`, `unique_id`, `file_created`, `file_last_modified`) VALUES
(163, '', 0, 321, 0, 'Music', 'folder.png', 'folder', 'folder.png', 1, 'Music', 'vasquezd', 1, '', 0, 1, 0, '', '2018-07-26 22:53:07', '2018-07-26 22:53:07'),
(164, '', 163, 321, 0, 'Anberlin', 'folder.png', 'folder', 'folder.png', 1, 'Anberlin', 'vasquezd', 1, '', 0, 1, 0, '', '2018-07-26 23:00:46', '2018-07-26 23:00:46'),
(165, '', 163, 321, 0, 'Pearl Jam', 'folder.png', 'folder', 'folder.png', 1, 'Pearl Jam', 'vasquezd', 1, '', 0, 1, 0, '', '2018-07-26 23:09:20', '2018-07-26 23:09:20'),
(166, '', 0, 321, 0, 'Movies', 'folder.png', 'folder', 'folder.png', 1, 'Movies', 'vasquezd', 1, '', 0, 1, 0, '', '2018-07-26 23:09:35', '2018-07-26 23:09:35'),
(167, '', 166, 321, 0, 'Hammock Vids', 'folder.png', 'folder', 'folder.png', 1, 'Hammock Vids', 'vasquezd', 1, '', 0, 1, 0, '', '2018-07-26 23:09:51', '2018-07-26 23:09:51'),
(168, '', 164, 321, 0, 'New Cities', 'folder.png', 'folder', 'folder.png', 1, 'New Cities', 'vasquezd', 1, '', 0, 1, 0, '', '2018-07-26 23:22:02', '2018-07-26 23:22:02'),
(169, '', 0, 321, 0, 'Games', 'folder.png', 'folder', 'folder.png', 1, 'Games', 'vasquezd', 1, '', 0, 1, 0, '', '2018-08-01 20:37:46', '2018-08-01 20:37:46'),
(170, 'vasquezd', 0, 321, 0, 'Tulips.jpg', '1533155982Tulips.jpg', 'jpg', '1533155982Tulips.jpg', 0, '', 'vasquezd', 1, 'caption', 0, 0, 1, 'unique', '2018-08-01 20:39:42', '2018-08-07 00:14:57'),
(171, 'vasquezd', 0, 321, 0, 'Tulips.jpg', '1533156169Tulips.jpg', 'jpg', '1533156169Tulips.jpg', 0, '', 'vasquezd', 1, 'caption', 0, 0, 1, 'unique', '2018-08-01 20:42:49', '2018-08-07 00:15:00'),
(172, 'vasquezd', 0, 321, 0, 'flower', '1533162189Tulips.jpg', 'jpg', '1533162189Tulips.jpg', 0, '', 'vasquezd', 1, 'caption', 0, 1, 0, 'unique', '2018-08-01 22:23:09', '2018-08-09 23:45:03'),
(173, 'vasquezd', 0, 321, 0, 'Chrysanthemum.jpg', '1533599853Chrysanthemum.jpg', 'jpg', '1533599853Chrysanthemum.jpg', 0, '', 'vasquezd', 1, 'caption', 0, 0, 1, 'unique', '2018-08-06 23:57:33', '2018-08-07 00:08:51'),
(174, '', 0, 321, 0, 'TEmp', 'folder.png', 'folder', 'folder.png', 1, 'TEmp', 'vasquezd', 1, '', 0, 0, 1, '', '2018-08-06 23:57:45', '2018-08-07 00:13:46'),
(175, '', 0, 321, 0, 'new', 'folder.png', 'folder', 'folder.png', 1, 'new', 'vasquezd', 1, '', 0, 0, 1, '', '2018-08-07 23:39:35', '2018-08-07 23:39:39');

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
  `request_pending` int(11) NOT NULL,
  `friend_key` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`friends_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=348 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friends_id`, `user_name`, `user_id`, `friend_user_name`, `friend_id`, `request_pending`, `friend_key`, `created`) VALUES
(340, 'matt', 2, 'vasquezd', 1, 0, 'mattvasquezd', '2017-12-18 23:01:49'),
(341, 'vasquezd', 1, 'matt', 2, 0, 'vasquezdmatt', '2017-12-18 23:01:49'),
(342, 'vasquezd', 1, 'brian', 3, 0, 'vasquezdbrian', '2018-06-20 06:55:04'),
(343, 'brian', 3, 'vasquezd', 1, 0, 'brianvasquezd', '2018-06-20 06:55:08'),
(344, 'vasquezd', 1, 'Kristen', 4, 0, 'vasquezdKristen', '2018-06-20 06:55:12'),
(345, 'Kristen', 4, 'vasquezd', 1, 0, 'Kristenvasquezd', '2018-06-20 06:55:15'),
(346, 'vasquezd', 1, 'Aimee', 5, 1, 'vasquezdAimee', '2018-06-26 04:44:22'),
(347, 'Aimee', 5, 'vasquezd', 1, 1, 'Aimeevasquezd', '2018-06-26 04:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_type` varchar(255) NOT NULL,
  `group_parent` int(1) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `group_image` varchar(255) NOT NULL,
  `group_key` varchar(255) NOT NULL,
  `group_private` int(11) NOT NULL,
  `group_deleted` int(11) NOT NULL,
  `updated` timestamp NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=329 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_type`, `group_parent`, `created_by`, `group_name`, `group_image`, `group_key`, `group_private`, `group_deleted`, `updated`, `created`) VALUES
(321, 'board', 0, 'vasquezd', 'Music', '', '0.81889900 15032627995999f84fc7ed34.81132043', 0, 0, '0000-00-00 00:00:00', '2017-08-20 20:59:59'),
(322, 'board', 0, 'vasquezd', 'vasquezd''s Group', '', '0.76402400 150749987759da9f65beec83.65825149', 0, 0, '0000-00-00 00:00:00', '2017-10-08 21:57:57'),
(323, 'board', 0, 'davey', 'davey', '', '0.19673900 150940080959f7a0e9300831.59804593', 0, 0, '0000-00-00 00:00:00', '2017-10-30 22:00:09'),
(324, 'board', 0, 'vasquezd', 'hiya', '', '0.90128700 15100985725a02468cdc0a77.70920641', 0, 0, '0000-00-00 00:00:00', '2017-11-07 23:49:32'),
(325, 'board', 0, 'matt', 'maty', '', '0.49423700 15101823775a038de978a9d2.31801940', 0, 0, '0000-00-00 00:00:00', '2017-11-08 23:06:17'),
(326, 'board', 0, 'matt', 'maty 2', '', '0.34692200 15101823845a038df054b2a4.90488242', 0, 0, '0000-00-00 00:00:00', '2017-11-08 23:06:24'),
(327, 'board', 0, 'matt', 'matts 1', '', '0.76764800 15113957015a161175bba887.13701998', 0, 0, '0000-00-00 00:00:00', '2017-11-23 00:08:21'),
(328, 'board', 0, 'matt', 'matts 2', '', '0.90016100 15113957065a16117adbc419.78132765', 0, 0, '0000-00-00 00:00:00', '2017-11-23 00:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `group_followers`
--

CREATE TABLE IF NOT EXISTS `group_followers` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `active_member` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL,
  PRIMARY KEY (`primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `group_followers`
--

INSERT INTO `group_followers` (`primary_id`, `group_id`, `user_name`, `active_member`, `created`, `updated`) VALUES
(30, 220, 'brian', 1, '2017-05-17 20:37:42', '0000-00-00 00:00:00'),
(31, 220, 'matt', 1, '2017-05-17 20:37:42', '2017-05-17 20:38:22'),
(32, 221, 'brian', 1, '2017-05-17 20:37:42', '2017-05-17 20:38:27'),
(33, 200, 'test', 1, '2017-05-17 20:37:42', '2017-05-17 20:38:31'),
(34, 221, 'vasquezk', 1, '2017-05-17 20:41:12', '0000-00-00 00:00:00'),
(35, 222, 'vasquezk', 1, '2017-05-17 21:21:17', '0000-00-00 00:00:00'),
(40, 222, 'vasquezd', 1, '2017-05-26 20:51:42', '0000-00-00 00:00:00'),
(42, 227, 'vasquezd', 0, '2017-05-26 23:43:19', '0000-00-00 00:00:00'),
(43, 228, 'vasquezd', 1, '2017-05-29 22:30:20', '0000-00-00 00:00:00'),
(44, 323, 'vasquezd', 1, '2017-11-08 23:47:09', '0000-00-00 00:00:00'),
(46, 321, 'matt', 1, '2017-11-08 23:52:43', '0000-00-00 00:00:00'),
(47, 322, 'matt', 1, '2017-11-08 23:52:43', '0000-00-00 00:00:00'),
(48, 323, 'matt', 1, '2017-11-08 23:52:44', '0000-00-00 00:00:00'),
(49, 324, 'matt', 1, '2017-11-08 23:52:45', '0000-00-00 00:00:00'),
(50, 321, 'becca', 1, '2017-11-08 23:53:25', '0000-00-00 00:00:00'),
(51, 322, 'becca', 1, '2017-11-08 23:53:26', '0000-00-00 00:00:00'),
(52, 323, 'becca', 1, '2017-11-08 23:53:26', '0000-00-00 00:00:00'),
(53, 326, 'becca', 1, '2017-11-08 23:53:27', '0000-00-00 00:00:00'),
(54, 325, 'becca', 1, '2017-11-08 23:53:28', '0000-00-00 00:00:00'),
(55, 324, 'becca', 1, '2017-11-08 23:53:29', '0000-00-00 00:00:00'),
(56, 321, 'kristen', 1, '2017-11-08 23:53:59', '0000-00-00 00:00:00'),
(57, 322, 'kristen', 1, '2017-11-08 23:54:00', '0000-00-00 00:00:00'),
(58, 323, 'kristen', 1, '2017-11-08 23:54:00', '0000-00-00 00:00:00'),
(59, 326, 'kristen', 1, '2017-11-08 23:54:01', '0000-00-00 00:00:00'),
(60, 325, 'kristen', 1, '2017-11-08 23:54:03', '0000-00-00 00:00:00'),
(61, 324, 'kristen', 1, '2017-11-08 23:54:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `group_users`
--

CREATE TABLE IF NOT EXISTS `group_users` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `active_member` int(11) NOT NULL,
  `group_last_visit` timestamp NOT NULL,
  `is_default_group` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=832 ;

--
-- Dumping data for table `group_users`
--

INSERT INTO `group_users` (`primary_id`, `group_id`, `user_name`, `active_member`, `group_last_visit`, `is_default_group`, `created`) VALUES
(818, 321, 'matt', 1, '0000-00-00 00:00:00', 0, '2017-08-20 20:59:59'),
(819, 321, 'Sarah', 0, '0000-00-00 00:00:00', 0, '2017-08-20 20:59:59'),
(820, 321, 'Kristen', 0, '0000-00-00 00:00:00', 0, '2017-08-20 20:59:59'),
(821, 321, 'becca', 0, '0000-00-00 00:00:00', 0, '2017-08-20 20:59:59'),
(822, 321, 'vasquezd', 1, '0000-00-00 00:00:00', 0, '2017-08-20 20:59:59'),
(823, 322, 'matt', 0, '0000-00-00 00:00:00', 0, '2017-10-08 21:57:57'),
(824, 322, 'Sarah', 0, '0000-00-00 00:00:00', 0, '2017-10-08 21:57:57'),
(825, 322, 'vasquezd', 1, '0000-00-00 00:00:00', 0, '2017-10-08 21:57:57'),
(826, 323, 'davey', 1, '0000-00-00 00:00:00', 0, '2017-10-30 22:00:09'),
(827, 324, 'vasquezd', 1, '0000-00-00 00:00:00', 0, '2017-11-07 23:49:33'),
(828, 325, 'matt', 1, '0000-00-00 00:00:00', 0, '2017-11-08 23:06:17'),
(829, 326, 'matt', 1, '0000-00-00 00:00:00', 0, '2017-11-08 23:06:24'),
(830, 327, 'matt', 1, '0000-00-00 00:00:00', 0, '2017-11-23 00:08:21'),
(831, 328, 'matt', 1, '0000-00-00 00:00:00', 0, '2017-11-23 00:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=299 ;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`link_id`, `group_id`, `folder_name`, `parent`, `is_folder`, `link_url`, `link_title`, `user_name`, `link_from`, `link_image`, `link_favicon`, `link_type`, `caption`, `tag_id`, `likes`, `unique_id`, `link_status`, `recycle_status`, `square_id`, `created`, `updated`) VALUES
(281, 0, 'Wall Posts', 0, 0, 'https://www.amazon.com/Lord-Brocktree-Redwall-Brian-Jacques/dp/0441008720/ref=sr_1_14?ie=UTF8&qid=1474667792&sr=8-14&keywords=redwall', 'Amazon.com: Lord Brocktree: A Novel of Redwall (9780441008728): Brian Jacques: Books', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-09-23 22:18:41', '0000-00-00 00:00:00'),
(282, 0, 'wall_posts', 0, 0, 'https://www.amazon.com/Redwall-Book-1-Brian-Jacques/dp/0142302376/ref=sr_1_1?ie=UTF8&qid=1474931957&sr=8-1&keywords=redwall', 'Amazon.com: Redwall (Redwall, Book 1) (9780142302378): Brian Jacques, Gary Chalk: Books', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-09-26 23:19:45', '0000-00-00 00:00:00'),
(283, 0, 'wall_posts', 0, 0, 'https://www.amazon.com/Redwall-Book-1-Brian-Jacques/dp/0142302376/ref=sr_1_1?ie=UTF8&qid=1474931957&sr=8-1&keywords=redwall', 'Amazon.com: Redwall (Redwall, Book 1) (9780142302378): Brian Jacques, Gary Chalk: Books', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-09-26 23:19:47', '0000-00-00 00:00:00'),
(284, 0, 'wall_posts', 0, 0, 'http://finance.yahoo.com/news/7-fascinating-archaeological-discoveries-made-193900504.html', 'Archaeology has had an amazing month: Here are 7 of the most exciting discoveries', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-09-28 20:24:19', '0000-00-00 00:00:00'),
(285, 0, 'wall_posts', 0, 0, 'http://finance.yahoo.com/news/7-fascinating-archaeological-discoveries-made-193900504.html', 'Archaeology has had an amazing month: Here are 7 of the most exciting discoveries', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-09-28 20:28:52', '0000-00-00 00:00:00'),
(286, 0, 'wall_posts', 0, 0, 'https://www.yahoo.com/news/latest-archaeology-discovery-may-prove-145523827.html', 'Latest Archaeology Discovery May Prove Biblical References', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-09-28 20:32:30', '0000-00-00 00:00:00'),
(287, 0, 'wall_posts', 0, 0, 'https://www.yahoo.com/news/latest-archaeology-discovery-may-prove-145523827.html', 'Latest Archaeology Discovery May Prove Biblical References', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-09-28 20:39:28', '0000-00-00 00:00:00'),
(288, 0, 'wall_posts', 0, 0, 'https://www.yahoo.com/news/latest-archaeology-discovery-may-prove-145523827.html', 'Latest Archaeology Discovery May Prove Biblical References', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-09-28 20:43:29', '0000-00-00 00:00:00'),
(289, 0, 'Wall Posts', 0, 0, 'https://www.amazon.com/Rakkety-Tam-Redwall-Brian-Jacques-ebook/dp/B0009HARRU/ref=sr_1_6?ie=UTF8&qid=1475099931&sr=8-6&keywords=brian+jaque', 'Rakkety Tam (Redwall (Philomel/Cloth)): Brian Jacques, David Elliot: Amazon.com: Books', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-09-28 23:12:33', '0000-00-00 00:00:00'),
(290, 0, 'Wall Posts', 0, 0, 'https://www.amazon.com/Rakkety-Tam-Redwall-Brian-Jacques-ebook/dp/B0009HARRU/ref=sr_1_6?ie=UTF8&qid=1475099931&sr=8-6&keywords=brian+jaque', 'Rakkety Tam (Redwall (Philomel/Cloth)): Brian Jacques, David Elliot: Amazon.com: Books', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-09-28 23:14:26', '0000-00-00 00:00:00'),
(291, 0, '', 1, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '5848896834c9a', 0, 0, 0, '2016-12-07 22:12:56', '0000-00-00 00:00:00'),
(292, 0, '', 1, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '584889d3b82b3', 0, 0, 0, '2016-12-07 22:14:43', '0000-00-00 00:00:00'),
(293, 0, '', 1, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '584889d4233e8', 0, 0, 0, '2016-12-07 22:14:44', '0000-00-00 00:00:00'),
(294, 0, '', 1, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '584889eb443a0', 0, 0, 0, '2016-12-07 22:15:07', '0000-00-00 00:00:00'),
(295, 0, '', 1, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '584889ebab0f6', 0, 0, 0, '2016-12-07 22:15:07', '0000-00-00 00:00:00'),
(296, 0, '', 1, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '584889ebe4309', 0, 0, 0, '2016-12-07 22:15:07', '0000-00-00 00:00:00'),
(297, 0, '', 1, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '589b7dce66ad2', 0, 0, 0, '2017-02-08 20:21:34', '0000-00-00 00:00:00'),
(298, 0, '', 1, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '589b7e0916c6a', 0, 0, 0, '2017-02-08 20:22:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE IF NOT EXISTS `list` (
  `list_primary_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `list_image` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_privilege` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `shared_with` varchar(255) NOT NULL,
  `list_type` varchar(255) NOT NULL,
  `list_name` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `unique_key` varchar(255) NOT NULL,
  `is_default` int(11) NOT NULL,
  `active_status` int(11) NOT NULL,
  `public_status` int(11) NOT NULL,
  `recycle_status` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`list_primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=454 ;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`list_primary_id`, `list_id`, `list_image`, `user_name`, `user_id`, `user_privilege`, `created_by`, `shared_with`, `list_type`, `list_name`, `group_id`, `unique_key`, `is_default`, `active_status`, `public_status`, `recycle_status`, `updated`, `created`) VALUES
(440, 440, '', 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'normal', 'Davey 2', 296, '8335a895ff345912373cf95ceca354fb', 0, 1, 0, 0, '2017-08-12 23:59:09', '2017-08-11 00:01:17'),
(441, 441, '', 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'normal', 'Guitar Equipment I Want!!', 296, 'cc965fa0009a7eaaa669de074b09b400', 0, 0, 0, 0, '2017-08-13 21:05:32', '2017-08-11 23:34:42'),
(442, 442, '', 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'normal', 'Games we should get!', 296, '2377623ad4aeb10d974e5681ffd32ad4', 0, 1, 0, 0, '2017-08-11 23:34:59', '2017-08-11 23:34:59'),
(443, 443, '', 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'normal', 'delete', 296, '980a515d20af579c359fb66e468e9bd0', 0, 0, 0, 0, '2017-08-12 00:30:21', '2017-08-12 00:27:32'),
(444, 444, '', 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'normal', 'Guitar Equipment I want', 296, 'a8bb947808f2ca3cf9ba7b6e23769ed4', 0, 1, 0, 0, '2017-08-13 21:06:24', '2017-08-13 21:06:24'),
(445, 445, '', 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'normal', 'temp', 296, 'a351fa5475746e2d889e59609721b38b', 0, 0, 0, 0, '2017-08-13 21:06:38', '2017-08-13 21:06:31'),
(446, 446, '', 'matt', 2, 'own', 'matt', 'matt', 'normal', 'hi', 296, '1d1a69cf29865dc2bdaa194d4c5bb0bb', 0, 1, 0, 0, '2017-08-13 22:25:56', '2017-08-13 22:25:56'),
(447, 447, '', 'becca', 6, 'own', 'becca', 'becca', 'normal', 'hiya', 296, '7bbe1a8576f4b4f9b46a80262f3e30d0', 0, 1, 0, 0, '2017-08-16 23:34:20', '2017-08-16 23:34:20'),
(448, 448, '', 'becca', 6, 'own', 'becca', 'becca', 'normal', 'music gear', 302, 'cb2c99ef41bbf0d888d5b5dc5c3de3b5', 0, 1, 0, 0, '2017-08-17 22:05:01', '2017-08-17 22:05:01'),
(449, 449, '', 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'normal', 'davey', 313, '02801f9d01980d251f39a23e2a53c14e', 0, 1, 0, 0, '2017-08-19 23:27:20', '2017-08-19 23:27:20'),
(450, 450, '', 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'normal', 'Music Gear 2', 321, '9000e5405a4c2c3e881189d4f4fe0fe3', 0, 1, 0, 0, '2017-09-25 23:17:38', '2017-09-01 21:11:12'),
(451, 451, '', 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'normal', 'Games To Get ', 321, '0072523ae6190e7a4d4e77b4939bd87f', 0, 1, 0, 0, '2017-09-25 23:08:26', '2017-09-11 22:28:13'),
(452, 452, '', 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'normal', 'All The Things Left To Do 2', 321, '50d8556e50bfa5791107393e3b9e4827', 0, 0, 0, 0, '2017-10-09 23:03:49', '2017-09-21 23:34:01'),
(453, 453, '', 'davey', 10, 'own', 'davey', 'davey', 'first_list', 'Your First List ', 0, '514d50364ab306de61dbb5849e159fc3', 1, 1, 0, 0, '2017-10-30 21:43:36', '2017-10-30 21:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `list_users`
--

CREATE TABLE IF NOT EXISTS `list_users` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_privilege` varchar(255) NOT NULL,
  `active_member` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL,
  PRIMARY KEY (`primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=132 ;

--
-- Dumping data for table `list_users`
--

INSERT INTO `list_users` (`primary_id`, `list_id`, `user_name`, `user_privilege`, `active_member`, `created`, `updated`) VALUES
(118, 440, 'vasquezd', 'own', 1, '2017-08-11 00:01:17', '0000-00-00 00:00:00'),
(119, 441, 'vasquezd', 'own', 1, '2017-08-11 23:34:42', '0000-00-00 00:00:00'),
(120, 442, 'vasquezd', 'own', 1, '2017-08-11 23:34:59', '0000-00-00 00:00:00'),
(121, 443, 'vasquezd', 'own', 1, '2017-08-12 00:27:32', '0000-00-00 00:00:00'),
(122, 444, 'vasquezd', 'own', 1, '2017-08-13 21:06:24', '0000-00-00 00:00:00'),
(123, 445, 'vasquezd', 'own', 1, '2017-08-13 21:06:31', '0000-00-00 00:00:00'),
(124, 446, 'matt', 'own', 1, '2017-08-13 22:25:56', '0000-00-00 00:00:00'),
(125, 447, 'becca', 'own', 1, '2017-08-16 23:34:20', '0000-00-00 00:00:00'),
(126, 448, 'becca', 'own', 1, '2017-08-17 22:05:01', '0000-00-00 00:00:00'),
(127, 449, 'vasquezd', 'own', 1, '2017-08-19 23:27:20', '0000-00-00 00:00:00'),
(128, 450, 'vasquezd', 'own', 1, '2017-09-01 21:11:12', '0000-00-00 00:00:00'),
(129, 451, 'vasquezd', 'own', 1, '2017-09-11 22:28:13', '0000-00-00 00:00:00'),
(130, 452, 'vasquezd', 'own', 1, '2017-09-21 23:34:01', '0000-00-00 00:00:00'),
(131, 453, 'davey', 'own', 1, '2017-10-30 21:43:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `master_site` varchar(255) NOT NULL,
  `status_unseen` int(11) NOT NULL,
  `notification_from` varchar(255) NOT NULL,
  `notification_to` varchar(255) NOT NULL,
  `notification_type` varchar(255) NOT NULL,
  `notification_message` varchar(255) NOT NULL,
  `notification_time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `full_link` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `from_logged_in_user` int(11) NOT NULL,
  `notification_count` int(11) NOT NULL,
  `notification_deleted` int(11) NOT NULL,
  `clicked` int(11) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `master_site`, `status_unseen`, `notification_from`, `notification_to`, `notification_type`, `notification_message`, `notification_time`, `full_link`, `link_url`, `group_id`, `list_id`, `from_logged_in_user`, `notification_count`, `notification_deleted`, `clicked`) VALUES
(1, 'shareshare', 1, 'vasquezd', 'Aimee', 'friend_request', 'requested to be friends', '2018-06-26 04:44:22', '#', '#', 0, 0, 0, 0, 0, 0),
(2, 'shareshare', 1, 'vasquezd', 'chris', 'friend_request', 'requested to be friends', '2018-06-26 04:44:24', '#', '#', 0, 0, 0, 0, 0, 0),
(3, 'shareshare', 1, 'vasquezd', 'chris', 'friend_request', 'requested to be friends', '2018-06-26 04:44:26', '#', '#', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pending_email`
--

CREATE TABLE IF NOT EXISTS `pending_email` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT,
  `codehash` varchar(255) NOT NULL,
  `request_from` varchar(255) NOT NULL,
  `request_to` varchar(255) NOT NULL,
  `request_to_existing_user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `square_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
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
  `master_site` varchar(255) NOT NULL,
  `request_type` varchar(255) NOT NULL,
  `request_type_text` varchar(255) NOT NULL,
  `request_is_pending` int(11) NOT NULL,
  `sent_by` varchar(255) NOT NULL,
  `sent_to` varchar(255) NOT NULL,
  `request_key` varchar(255) NOT NULL,
  `sent_to_email` varchar(255) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL,
  PRIMARY KEY (`primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pending_requests`
--

INSERT INTO `pending_requests` (`primary_id`, `master_site`, `request_type`, `request_type_text`, `request_is_pending`, `sent_by`, `sent_to`, `request_key`, `sent_to_email`, `friend_id`, `group_id`, `list_id`, `updated`, `created`) VALUES
(1, '', 'friend', 'Wants to be Friends', 1, 'vasquezd', 'Aimee', 'vasquezdAimee', '', 0, 0, 0, '2018-06-26 04:44:22', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `master_site` varchar(255) NOT NULL,
  `post_type` varchar(255) NOT NULL,
  `post_status` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `post_from` varchar(255) NOT NULL,
  `post_to` varchar(2083) NOT NULL,
  `post_caption` text NOT NULL,
  `post_url` varchar(255) NOT NULL,
  `post_url_caption` varchar(255) NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `file_url` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_name_server` varchar(255) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_text` text NOT NULL,
  `contains_file` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `purchased` int(11) NOT NULL,
  `purchased_by` varchar(255) NOT NULL,
  `password_email` varchar(255) NOT NULL,
  `password_notes` text NOT NULL,
  `comment_seen` timestamp NOT NULL,
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `master_site`, `post_type`, `post_status`, `parent`, `group_id`, `list_id`, `post_from`, `post_to`, `post_caption`, `post_url`, `post_url_caption`, `video_code`, `image_url`, `file_url`, `file_name`, `file_name_server`, `article_title`, `article_text`, `contains_file`, `unique_id`, `purchased`, `purchased_by`, `password_email`, `password_notes`, `comment_seen`, `updated`, `created`) VALUES
(41, 'shareshare', 'photo', 1, 0, 321, 0, 'vasquezd', '321', 'Post 1', '', '', '', '15112217001510793749background_2_1.png', '15112217001510793749background_2_1.png', '1510793749background_2.png', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-12-15 22:26:46', '2017-12-11 23:48:20'),
(42, 'shareshare', 'photo', 1, 0, 321, 0, 'vasquezd', '321', 'David''s Post 2', '', '', '', '1511221718background_1_1.jpg', '1511221718background_1_1.jpg', 'background_1.jpg', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-12-15 23:24:38', '2017-11-08 23:48:38'),
(43, 'shareshare', 'video', 1, 0, 321, 0, 'vasquezd', '321', 'David''s Post 3', 'https://www.youtube.com/watch?v=RjXItK5shW8', '', 'RjXItK5shW8', '', '', '', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-12-15 23:24:41', '2017-11-20 23:49:48'),
(44, 'shareshare', 'photo', 1, 0, 321, 0, 'vasquezd', '321', 'David''s Post 4', '', '', '', '1511221801background_2_1.jpg', '1511221801background_2_1.jpg', 'background_2.jpg', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-12-15 23:24:44', '2017-11-20 23:50:01'),
(45, 'shareshare', 'photo', 1, 0, 321, 0, 'vasquezd', '321', 'Hello Post 5', '', '', '', '1511221820background_3_1.jpg', '1511221820background_3_1.jpg', 'background_3.jpg', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-12-16 01:20:36', '2017-10-04 22:50:20'),
(46, 'shareshare', 'photo', 1, 0, 321, 0, 'vasquezd', '321', 'Post 6', '', '', '', '1511221829background_4_1.png', '1511221829background_4_1.png', 'background_4.png', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-12-15 22:28:02', '2017-11-20 23:50:29'),
(47, 'shareshare', 'photo', 0, 0, 324, 0, 'vasquezd', '321', 'Post 7', '', '', '', 'background_5.jpg exceeds maximum size: 10,240.0kB', 'background_5.jpg exceeds maximum size: 10,240.0kB', 'background_5.jpg', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-12-15 22:28:08', '2017-11-07 23:50:38'),
(48, 'shareshare', 'photo', 0, 0, 328, 0, 'vasquezd', '321', 'Post 8', '', '', '', 'background_5.jpg exceeds maximum size: 10,240.0kB', 'background_5.jpg exceeds maximum size: 10,240.0kB', 'background_5.jpg', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-12-15 22:28:12', '2017-10-19 22:50:48'),
(49, 'shareshare', 'photo', 0, 0, 321, 0, 'vasquezd', '321', 'Vasquez Post 9', '', '', '', 'background_5.jpg exceeds maximum size: 10,240.0kB', 'background_5.jpg exceeds maximum size: 10,240.0kB', 'background_5.jpg', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-12-16 01:20:44', '2017-11-20 23:51:06'),
(50, 'shareshare', 'photo', 1, 0, 324, 0, 'vasquezd', '321', 'Post 10', '', '', '', '1511221887background_2_1.jpg', '1511221887background_2_1.jpg', 'background_2.jpg', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-12-15 22:28:19', '2017-11-20 23:51:27'),
(51, 'shareshare', 'photo', 1, 0, 321, 0, 'vasquezd', '321', 'Post 11', '', '', '', '1511221899background_1_1.jpg', '1511221899background_1_1.jpg', 'background_1.jpg', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-12-15 22:28:23', '2017-11-20 23:51:39'),
(52, 'shareshare', 'photo', 1, 0, 328, 0, 'vasquezd', '321', 'Post 12', '', '', '', '15112219101510793749background_2_1.png', '15112219101510793749background_2_1.png', '1510793749background_2.png', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-12-15 22:28:26', '2017-12-05 23:51:50'),
(53, 'shareshare', 'photo', 1, 0, 327, 0, 'matt', '327', 'Time Post 13', '', '', '', '1511395899background_1_1.jpg', '1511395899background_1_1.jpg', 'background_1.jpg', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-12-16 01:20:49', '2017-11-23 00:11:39'),
(54, 'shareshare', 'photo', 1, 0, 327, 0, 'matt', '327', 'Post 14', '', '', '', '1511395919shareshare_background.jpg', '1511395919shareshare_background.jpg', 'shareshare_background.jpg', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-12-15 22:28:36', '2017-11-23 00:11:59'),
(55, 'shareshare', 'photo', 1, 0, 328, 0, 'matt', '328', 'Post 15', '', '', '', '1511395938background_2.png', '1511395938background_2.png', 'background_2.png', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-12-15 22:28:39', '2017-11-23 00:12:18'),
(56, 'shareshare', 'discussion', 1, 0, 328, 0, 'vasquezd', '321', 'Post 16', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-12-15 22:28:44', '2017-12-05 22:28:13'),
(57, 'shareshare', 'discussion', 1, 0, 321, 0, 'vasquezd', '321', 'Post 17', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-12-15 22:28:49', '2017-12-05 22:28:20');

-- --------------------------------------------------------

--
-- Table structure for table `posts_fights`
--

CREATE TABLE IF NOT EXISTS `posts_fights` (
  `fight_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fight_primary_fighter` varchar(255) NOT NULL,
  `fight_primary_fighter_id` int(11) NOT NULL,
  `fight_primary_fighter_name` varchar(255) NOT NULL,
  `fight_primary_wins` int(11) NOT NULL,
  `fight_primary_losses` int(11) NOT NULL,
  `fight_primary_draws` int(11) NOT NULL,
  `fight_info` text NOT NULL,
  `fight_number` int(11) NOT NULL,
  `fight_opponent` varchar(255) NOT NULL,
  `fight_opponent_wins` int(11) NOT NULL,
  `fight_opponent_losses` int(11) NOT NULL,
  `fight_opponent_draws` int(11) NOT NULL,
  `fight_outcome` varchar(255) NOT NULL,
  `fight_outcome_type` varchar(255) NOT NULL,
  `fight_final_round` int(11) NOT NULL,
  `fight_date` text NOT NULL,
  `fight_date_year` int(11) NOT NULL,
  `fight_date_month` int(11) NOT NULL,
  `fight_date_day` int(11) NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `video_embed_code` varchar(255) NOT NULL,
  `fight_image` varchar(255) NOT NULL,
  PRIMARY KEY (`fight_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=230 ;

--
-- Dumping data for table `posts_fights`
--

INSERT INTO `posts_fights` (`fight_id`, `fight_primary_fighter`, `fight_primary_fighter_id`, `fight_primary_fighter_name`, `fight_primary_wins`, `fight_primary_losses`, `fight_primary_draws`, `fight_info`, `fight_number`, `fight_opponent`, `fight_opponent_wins`, `fight_opponent_losses`, `fight_opponent_draws`, `fight_outcome`, `fight_outcome_type`, `fight_final_round`, `fight_date`, `fight_date_year`, `fight_date_month`, `fight_date_day`, `video_code`, `video_url`, `video_embed_code`, `fight_image`) VALUES
(201, 'foreman', 2, 'George Foreman ', 0, 0, 0, '', 1, 'Don Waldheim', 5, 4, 2, 'win', 'TKO', 3, '', 1969, 6, 23, '7R3tKaZ_HBk', 'https://www.youtube.com/watch?v=7R3tKaZ_HBk', '<iframe width="420" height="315" src="https://www.youtube.com/embed/7R3tKaZ_HBk" frameborder="0" allowfullscreen></iframe>', ''),
(202, 'foreman', 2, 'George Foreman ', 2, 0, 0, '', 1, 'Fred Askew', 2, 6, 1, 'win', 'KO', 1, '', 1969, 7, 1, '', '', '', ''),
(204, 'foreman', 2, 'George Foreman ', 27, 0, 0, '', 28, 'Gregorio Peralta', 82, 6, 8, 'win', 'decision', 10, '', 1970, 5, 10, 'UwZaZ1sSBSM', 'https://www.youtube.com/watch?v=UwZaZ1sSBSM', '<iframe width="420" height="315" src="https://www.youtube.com/embed/UwZaZ1sSBSM" frameborder="0" allowfullscreen></iframe>', ''),
(205, 'foreman', 2, 'George Foreman ', 23, 0, 0, '', 24, 'Boone Kirkman', 22, 1, 0, 'win', 'TKO', 2, '', 1970, 11, 18, 'zk3Y-JlMa0c', 'https://www.youtube.com/watch?v=zk3Y-JlMa0c', '<iframe width="420" height="315" src="https://www.youtube.com/embed/zk3Y-JlMa0c" frameborder="0" allowfullscreen></iframe>', ''),
(213, 'tyson', 1, 'Mike Tyson', 0, 0, 0, '', 1, 'Hector Mercedes', 0, 3, 0, 'win', 'TKO', 1, '', 1985, 1, 6, 'UaxA6IVh9dE', 'https://www.youtube.com/watch?v=UaxA6IVh9dE', '<iframe width="420" height="315" src="https://www.youtube.com/embed/UaxA6IVh9dE" frameborder="0" allowfullscreen></iframe>', 'tyson_mercedes.jpg'),
(216, 'tyson', 1, 'Mike Tyson', 1, 0, 0, '', 2, 'Trent Singleton', 1, 3, 0, 'win', 'TKO', 1, '', 1985, 4, 10, '7GnZyqapq24', 'https://www.youtube.com/watch?v=7GnZyqapq24', '<iframe width="560" height="315" src="https://www.youtube.com/embed/7GnZyqapq24" frameborder="0" allowfullscreen></iframe>', 'Tyson_singleton.jpg'),
(217, 'tyson', 1, 'Mike Tyson', 2, 0, 0, '3', 3, 'Don Halpin', 10, 18, 0, 'win', 'KO', 4, '', 1985, 5, 23, 'eZhOy4wPXyw', 'https://www.youtube.com/watch?v=eZhOy4wPXyw', '<iframe width="560" height="315" src="https://www.youtube.com/embed/eZhOy4wPXyw" frameborder="0" allowfullscreen></iframe>', ''),
(218, 'tyson', 1, 'Mike Tyson', 3, 0, 0, '', 4, 'Ricardo Spain', 1, 0, 0, 'W', 'KO', 0, '', 1985, 6, 20, 'quDj-f5bPQ4', 'https://www.youtube.com/watch?v=quDj-f5bPQ4', '<iframe width="560" height="315" src="https://www.youtube.com/embed/quDj-f5bPQ4" frameborder="0" allowfullscreen></iframe>', ''),
(220, 'tyson', 1, 'Mike Tyson', 4, 0, 0, '', 5, 'John Alderson', 3, 0, 0, 'W', 'KO', 0, '7/11/1985', 0, 0, 0, 'XdcEI-YqBBE', 'https://www.youtube.com/watch?v=XdcEI-YqBBE', '<iframe width="560" height="315" src="https://www.youtube.com/embed/XdcEI-YqBBE" frameborder="0" allowfullscreen></iframe>', ''),
(221, 'tyson', 1, 'Mike Tyson', 5, 0, 0, '', 6, 'Larry Sims', 3, 16, 3, 'W', 'NC', 0, '7/19/1985', 0, 0, 0, '', '', '', ''),
(222, 'tyson', 1, 'Mike Tyson', 6, 0, 0, '', 7, 'Lorenzo Canady', 3, 0, 0, 'W', 'TKO', 0, '8/15/1985', 0, 0, 0, 'igjvZuw2WpM', 'https://www.youtube.com/watch?v=igjvZuw2WpM', '<iframe width="560" height="315" src="https://www.youtube.com/embed/igjvZuw2WpM" frameborder="0" allowfullscreen></iframe>', ''),
(223, 'tyson', 1, 'Mike Tyson', 7, 0, 0, '', 8, 'Michael Johnson', 11, 5, 0, 'W', 'TKO', 0, '9/5/1985', 0, 0, 0, 'Xweop8t1bZs', 'https://www.youtube.com/watch?v=Xweop8t1bZs', '<iframe width="560" height="315" src="https://www.youtube.com/embed/Xweop8t1bZs" frameborder="0" allowfullscreen></iframe>', ''),
(224, 'tyson', 1, 'Mike Tyson', 8, 0, 0, '', 9, 'Donnie Long', 15, 3, 0, 'W', 'TKO', 0, '10/9/1985', 0, 0, 0, 'NRgiJxOcTq8', 'https://www.youtube.com/watch?v=NRgiJxOcTq8', '<iframe width="560" height="315" src="https://www.youtube.com/embed/NRgiJxOcTq8" frameborder="0" allowfullscreen></iframe>', ''),
(225, 'tyson', 1, 'Mike Tyson', 9, 0, 0, '', 10, 'Robert Colay', 7, 7, 1, 'W', 'KO', 0, '10/25/1985', 0, 0, 0, 'fyVNCMcnb2c', 'https://www.youtube.com/watch?v=fyVNCMcnb2c', '<iframe width="560" height="315" src="https://www.youtube.com/embed/fyVNCMcnb2c" frameborder="0" allowfullscreen></iframe>', ''),
(227, 'tyson', 1, 'Mike Tyson', 10, 0, 0, '', 11, 'Sterling Benjamin', 5, 6, 1, 'W', 'DQ', 0, '11/1/1985', 0, 0, 0, 'u7cW3H11Wk', 'https://www.youtube.com/watch?v=_u7cW3H11Wk', '<iframe width="560" height="315" src="https://www.youtube.com/embed/_u7cW3H11Wk" frameborder="0" allowfullscreen></iframe>', ''),
(228, 'tyson', 1, 'Mike Tyson', 10, 0, 0, '', 11, 'Sterling Benjamin', 5, 6, 1, 'W', 'DQ', 0, '11/1/1985', 0, 0, 0, 'u7cW3H11Wk', 'https://www.youtube.com/watch?v=_u7cW3H11Wk', '<iframe width="560" height="315" src="https://www.youtube.com/embed/_u7cW3H11Wk" frameborder="0" allowfullscreen></iframe>', ''),
(229, 'tyson', 1, 'Mike Tyson', 10, 0, 0, '', 11, 'Sterling Benjamin', 5, 6, 1, 'W', 'DQ', 0, '11/1/1985', 0, 0, 0, 'u7cW3H11Wk', 'https://www.youtube.com/watch?v=_u7cW3H11Wk', '<iframe width="560" height="315" src="https://www.youtube.com/embed/_u7cW3H11Wk" frameborder="0" allowfullscreen></iframe>', '');

-- --------------------------------------------------------

--
-- Table structure for table `post_bias`
--

CREATE TABLE IF NOT EXISTS `post_bias` (
  `post_bias_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `right_vote` int(11) NOT NULL,
  `right_vote_user` varchar(255) NOT NULL,
  `left_vote` int(11) NOT NULL,
  `left_vote_user` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_bias_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=168 ;

--
-- Dumping data for table `post_bias`
--

INSERT INTO `post_bias` (`post_bias_id`, `post_id`, `right_vote`, `right_vote_user`, `left_vote`, `left_vote_user`, `created`) VALUES
(153, 70, 0, '', 1, 'vasquezd', '2016-05-29 22:29:43'),
(157, 69, 0, '', 1, 'vasquezd', '2016-05-29 22:33:03'),
(159, 81, 1, 'vasquezd', 0, '', '2016-06-06 21:55:26'),
(161, 98, 0, '', 1, 'vasquezd', '2016-06-17 20:58:59'),
(162, 97, 1, 'vasquezd', 0, '', '2016-06-17 20:59:01'),
(163, 65, 0, '', 1, 'vasquezd', '2016-06-17 20:59:03'),
(164, 204, 0, '', 1, 'vasquezd', '2016-07-31 22:28:50'),
(165, 204, 0, '', 1, 'vasquezd', '2016-07-31 22:28:53'),
(166, 204, 0, '', 1, 'vasquezd', '2016-09-09 21:35:29'),
(167, 204, 1, 'vasquezd', 0, '', '2016-09-09 21:35:32');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=128 ;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`post_like_id`, `post_id`, `liked_by`, `liked_by_name`, `time_stamp`) VALUES
(63, 35, 1, 'vasquezd', '2016-05-10 21:28:14'),
(68, 34, 1, 'vasquezd', '2016-05-21 23:39:21'),
(69, 33, 1, 'vasquezd', '2016-05-22 00:07:56'),
(74, 53, 1, 'matt', '2016-05-25 23:16:05'),
(87, 49, 1, 'vasquezd', '2016-05-25 23:37:17'),
(88, 64, 1, 'vasquezd', '2016-05-27 00:02:40'),
(89, 53, 1, 'vasquezd', '2016-05-30 21:18:35'),
(90, 73, 1, 'vasquezd', '2016-06-05 00:10:48'),
(94, 109, 1, 'vasquezd', '2016-06-15 21:34:30'),
(95, 71, 1, 'vasquezd', '2016-06-15 21:35:45'),
(96, 105, 1, 'vasquezd', '2016-06-18 21:00:03'),
(105, 171, 1, 'vasquezd', '2016-07-03 21:36:25'),
(108, 168, 1, 'vasquezd', '2016-07-03 22:13:30'),
(109, 157, 1, 'vasquezd', '2016-07-03 22:33:48'),
(110, 144, 1, 'vasquezd', '2016-07-03 22:54:40'),
(112, 180, 1, 'vasquezd', '2016-07-03 23:01:05'),
(114, 183, 1, 'vasquezd', '2016-07-03 23:22:46'),
(115, 177, 1, 'vasquezd', '2016-07-08 00:07:42'),
(118, 39, 1, 'vasquezd', '2016-07-08 22:01:00'),
(119, 178, 1, 'vasquezd', '2016-07-08 22:08:15'),
(121, 438, 2, 'matt', '2017-08-22 23:43:41'),
(123, 438, 1, 'vasquezd', '2017-08-31 22:25:41'),
(124, 446, 1, 'vasquezd', '2017-09-13 22:03:22'),
(126, 17, 1, 'vasquezd', '2017-10-08 22:34:31'),
(127, 20, 1, 'vasquezd', '2017-10-10 22:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE IF NOT EXISTS `post_tags` (
  `post_tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `tag_from` varchar(255) NOT NULL,
  `tag_from_id` int(11) NOT NULL,
  `post_hashtag` varchar(255) NOT NULL,
  `post_deadline` timestamp NOT NULL,
  `post_progress` int(11) NOT NULL,
  `post_priority` int(11) NOT NULL,
  `updated` timestamp NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `post_votes`
--

CREATE TABLE IF NOT EXISTS `post_votes` (
  `post_vote_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `up_vote` int(11) NOT NULL,
  `up_vote_user` varchar(255) NOT NULL,
  `down_vote` int(11) NOT NULL,
  `down_vote_user` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_vote_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=177 ;

--
-- Dumping data for table `post_votes`
--

INSERT INTO `post_votes` (`post_vote_id`, `post_id`, `up_vote`, `up_vote_user`, `down_vote`, `down_vote_user`, `created`) VALUES
(70, 53, 1, 'matt', 0, '', '2016-05-25 00:17:59'),
(71, 37, 0, '', 1, 'matt', '2016-05-10 21:17:25'),
(72, 49, 1, 'matt', 0, '', '2016-05-25 00:18:40'),
(73, 34, 1, 'matt', 0, '', '2016-05-10 21:17:28'),
(74, 35, 1, 'matt', 0, '', '2016-05-10 21:17:30'),
(75, 33, 1, 'matt', 0, '', '2016-05-10 21:17:33'),
(76, 37, 0, '', 1, 'vasquezd', '2016-05-10 21:18:11'),
(82, 49, 1, 'vasquez', 0, '', '2016-05-26 00:10:16'),
(87, 35, 1, 'vasquezd', 0, '', '2016-05-10 21:26:56'),
(88, 33, 1, 'vasquezd', 0, '', '2016-05-12 23:50:23'),
(96, 49, 1, 'brian', 0, '', '2016-05-26 21:04:50'),
(129, 53, 1, 'vasquezd', 0, '', '2016-05-26 22:07:55'),
(134, 49, 1, 'vasquezd', 0, '', '2016-05-29 20:51:02'),
(136, 62, 1, 'vasquezd', 0, '', '2016-05-29 20:51:15'),
(151, 70, 1, 'vasquezd', 0, '', '2016-05-29 22:31:26'),
(153, 69, 0, '', 1, 'vasquezd', '2016-06-06 20:56:53'),
(155, 68, 1, 'vasquezd', 0, '', '2016-06-06 21:33:57'),
(158, 81, 0, '', 1, 'vasquezd', '2016-06-06 21:55:34'),
(160, 66, 1, 'vasquezd', 0, '', '2016-06-06 23:29:27'),
(161, 67, 1, 'vasquezd', 0, '', '2016-06-06 23:29:33'),
(162, 98, 0, '', 1, 'vasquezd', '2016-06-09 19:44:42'),
(163, 97, 1, 'vasquezd', 0, '', '2016-06-09 19:44:43'),
(167, 174, 0, '', 1, 'vasquezd', '2016-07-03 22:08:37'),
(173, 175, 1, 'vasquezd', 0, '', '2016-07-03 22:33:43'),
(176, 204, 1, 'vasquezd', 0, '', '2016-09-09 21:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_analytics`
--

CREATE TABLE IF NOT EXISTS `user_analytics` (
  `analytics_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `last_visit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_visits` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `icon_id` varchar(255) NOT NULL,
  `last_click` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_clicks` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`analytics_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=350 ;

--
-- Dumping data for table `user_analytics`
--

INSERT INTO `user_analytics` (`analytics_id`, `user_name`, `page_url`, `last_visit`, `total_visits`, `group_id`, `icon_id`, `last_click`, `total_clicks`, `user_id`) VALUES
(238, 'matt', 'groups.php', '2017-12-18 21:52:04', 303, 0, '', '2017-12-18 21:52:04', 0, 0),
(239, 'matt', 'group_discussion.php', '2017-07-07 20:38:41', 13, 242, '', '2017-07-07 20:38:41', 0, 0),
(240, 'vasquezd', '', '2017-12-18 23:01:49', 0, 0, 'js-notification-header-seen', '2017-12-18 23:01:49', 916, 0),
(241, 'matt', '', '2017-08-02 23:51:22', 0, 0, 'js-activity-group-icon', '2017-08-02 23:51:22', 53, 0),
(242, 'matt', 'group_discussion.php', '2017-07-07 00:15:33', 2, 243, '', '2017-07-07 00:15:33', 0, 0),
(243, 'vasquezd', '', '2018-06-14 06:46:00', 0, 0, 'js-activity-group-icon', '2018-06-14 06:46:00', 87, 0),
(244, 'vasquezd', 'groups.php', '2018-06-14 04:30:36', 1368, 0, '', '2018-06-14 04:30:36', 0, 0),
(245, 'vasquezd', 'group_discussion.php', '2017-07-07 00:21:23', 0, 243, '', '2017-07-07 00:21:23', 0, 0),
(246, 'vasquezd', 'group_posts.php', '2017-07-07 23:51:47', 116, 242, '', '2017-07-07 23:51:47', 0, 0),
(247, 'matt', 'group_posts.php', '2017-07-07 23:51:43', 80, 242, '', '2017-07-07 23:51:43', 0, 0),
(248, 'matt', 'group_posts.php', '2017-07-07 20:31:59', 7, 244, '', '2017-07-07 20:31:59', 0, 0),
(249, 'matt', 'group_posts.php', '2017-07-07 20:38:39', 1, 243, '', '2017-07-07 20:38:39', 0, 0),
(250, 'matt', '', '2017-12-18 23:00:36', 0, 0, 'js-notification-header-seen', '2017-12-18 23:00:36', 208, 0),
(251, 'matt', 'group_discussion.php', '2017-08-02 23:51:19', 41, 295, '', '2017-08-02 23:51:19', 0, 0),
(252, 'becca', '', '2017-08-17 22:28:33', 0, 0, 'js-notification-header-seen', '2017-08-17 22:28:33', 36, 0),
(253, 'matt', 'group_discussion.php', '2017-08-13 22:25:47', 75, 296, '', '2017-08-13 22:25:47', 0, 0),
(254, 'vasquezd', 'group_discussion.php', '2017-08-16 23:26:15', 48, 296, '', '2017-08-16 23:26:15', 0, 0),
(255, 'matt', 'group_discussion.php', '2017-08-02 23:52:33', 92, 294, '', '2017-08-02 23:52:33', 0, 0),
(256, 'vasquezd', 'group_discussion.php', '2017-08-07 00:32:03', 511, 294, '', '2017-08-07 00:32:03', 0, 0),
(257, 'vasquezk', '', '2017-07-09 20:44:32', 0, 0, 'js-notification-header-seen', '2017-07-09 20:44:32', 2, 0),
(258, 'vasquezk', '', '2017-07-09 20:44:33', 0, 0, 'js-activity-group-icon', '2017-07-09 20:44:33', 1, 0),
(259, 'vasquezk', 'groups.php', '2017-07-09 20:44:33', 0, 0, '', '2017-07-09 20:44:33', 0, 0),
(260, 'vasquezk', 'group_discussion.php', '2017-07-09 21:00:19', 5, 296, '', '2017-07-09 21:00:19', 0, 0),
(261, 'vasquezd', 'group_discussion.php', '2017-08-16 23:24:35', 28, 295, '', '2017-08-16 23:24:35', 0, 0),
(262, 'matt', 'group_posts.php', '2017-08-08 22:39:13', 89, 294, '', '2017-08-08 22:39:13', 0, 0),
(263, 'vasquezd', 'group_posts.php', '2017-08-17 21:00:19', 402, 294, '', '2017-08-17 21:00:19', 0, 0),
(264, 'matt', 'group_posts.php', '2017-08-13 22:26:13', 23, 297, '', '2017-08-13 22:26:13', 0, 0),
(265, 'matt', 'group_posts.php', '2017-08-07 00:20:45', 57, 295, '', '2017-08-07 00:20:45', 0, 0),
(266, 'vasquezd', 'group_posts.php', '2017-08-16 23:26:20', 258, 296, '', '2017-08-16 23:26:20', 0, 0),
(267, 'vasquezd', 'group_posts.php', '2017-08-17 20:47:52', 46, 297, '', '2017-08-17 20:47:52', 0, 0),
(268, 'vasquezd', 'group_posts.php', '2017-08-16 23:24:41', 45, 295, '', '2017-08-16 23:24:41', 0, 0),
(269, 'vasquezd', 'group_files.php', '2017-08-07 22:59:58', 308, 294, '', '2017-08-07 22:59:58', 0, 0),
(270, 'vasquezd', 'group_files.php', '2017-07-15 00:17:19', 6, 0, '', '2017-07-15 00:17:19', 0, 0),
(271, 'matt', 'group_files.php', '2017-07-19 23:17:58', 3, 294, '', '2017-07-19 23:17:58', 0, 0),
(272, 'matt', 'group_files.php', '2017-07-16 00:05:52', 2, 295, '', '2017-07-16 00:05:52', 0, 0),
(273, 'matt', 'group_files.php', '2017-08-13 22:25:48', 16, 296, '', '2017-08-13 22:25:48', 0, 0),
(274, 'vasquezd', 'group_files.php', '2017-08-06 23:10:14', 3, 295, '', '2017-08-06 23:10:14', 0, 0),
(275, 'vasquezd', 'group_files.php', '2017-08-15 00:20:06', 59, 296, '', '2017-08-15 00:20:06', 0, 0),
(276, 'vasquezd', 'group_files.php', '2017-07-18 22:04:42', 0, 297, '', '2017-07-18 22:04:42', 0, 0),
(277, 'vasquezd', 'group_lists.php', '2017-08-12 21:48:13', 384, 294, '', '2017-08-12 21:48:13', 0, 0),
(278, 'vasquezd', 'group_lists.php', '2017-08-14 23:35:00', 581, 296, '', '2017-08-14 23:35:00', 0, 0),
(279, 'vasquezd', 'group_lists.php', '2017-07-23 21:28:45', 7, 0, '', '2017-07-23 21:28:45', 0, 0),
(280, 'matt', 'group_lists.php', '2017-07-23 00:01:23', 29, 294, '', '2017-07-23 00:01:23', 0, 0),
(281, 'becca', 'groups.php', '2017-11-08 23:53:40', 37, 0, '', '2017-11-08 23:53:40', 0, 0),
(282, 'sarah', 'groups.php', '2017-07-24 23:25:58', 0, 0, '', '2017-07-24 23:25:58', 0, 0),
(283, 'sarah', '', '2017-07-24 23:26:04', 0, 0, 'js-notification-header-seen', '2017-07-24 23:26:04', 4, 0),
(284, 'kristen', 'groups.php', '2017-11-08 23:54:11', 9, 0, '', '2017-11-08 23:54:11', 0, 0),
(285, 'kristen', '', '2017-07-24 23:30:11', 0, 0, 'js-notification-header-seen', '2017-07-24 23:30:11', 13, 0),
(286, 'matt', 'group_discussion.php', '2017-08-02 23:41:01', 16, 299, '', '2017-08-02 23:41:01', 0, 0),
(287, 'matt', 'group_posts.php', '2017-08-16 00:04:14', 141, 296, '', '2017-08-16 00:04:14', 0, 0),
(288, 'matt', 'group_posts.php', '2017-08-02 23:40:00', 13, 299, '', '2017-08-02 23:40:00', 0, 0),
(289, 'matt', 'group_files.php', '2017-08-02 23:20:59', 0, 299, '', '2017-08-02 23:20:59', 0, 0),
(290, 'matt', 'group_lists.php', '2017-08-02 23:40:05', 1, 299, '', '2017-08-02 23:40:05', 0, 0),
(291, 'vasquezd', 'group_lists.php', '2017-08-07 00:21:37', 9, 295, '', '2017-08-07 00:21:37', 0, 0),
(292, 'vasquezd', 'group_discussion.php', '2017-08-06 23:05:31', 105, 299, '', '2017-08-06 23:05:31', 0, 0),
(293, 'vasquezd', 'group_posts.php', '2017-08-06 23:05:33', 2, 299, '', '2017-08-06 23:05:33', 0, 0),
(294, 'vasquezd', 'group_files.php', '2017-08-06 23:05:34', 0, 299, '', '2017-08-06 23:05:34', 0, 0),
(295, 'vasquezd', 'group_lists.php', '2017-08-06 23:05:41', 0, 299, '', '2017-08-06 23:05:41', 0, 0),
(296, 'matt', 'group_lists.php', '2017-08-07 00:21:28', 2, 295, '', '2017-08-07 00:21:28', 0, 0),
(297, 'matt', 'group_lists.php', '2017-08-13 22:26:04', 37, 296, '', '2017-08-13 22:26:04', 0, 0),
(298, 'matt', 'group_files.php', '2017-08-13 22:26:14', 0, 297, '', '2017-08-13 22:26:14', 0, 0),
(299, 'matt', 'group_discussion.php', '2017-08-13 22:26:18', 1, 297, '', '2017-08-13 22:26:18', 0, 0),
(300, 'becca', 'group_posts.php', '2017-08-16 23:34:05', 3, 296, '', '2017-08-16 23:34:05', 0, 0),
(301, 'becca', 'group_files.php', '2017-08-16 23:34:14', 1, 296, '', '2017-08-16 23:34:14', 0, 0),
(302, 'becca', 'group_lists.php', '2017-08-16 23:38:09', 7, 296, '', '2017-08-16 23:38:09', 0, 0),
(303, 'vasquezd', 'group_discussion.php', '2017-08-17 20:47:55', 1, 297, '', '2017-08-17 20:47:55', 0, 0),
(304, 'becca', '', '2017-08-17 20:55:00', 0, 0, 'js-activity-group-icon', '2017-08-17 20:55:00', 1, 0),
(305, 'becca', 'group_posts.php', '2017-08-17 21:00:02', 7, 301, '', '2017-08-17 21:00:02', 0, 0),
(306, 'becca', 'group_discussion.php', '2017-08-17 20:59:03', 5, 301, '', '2017-08-17 20:59:03', 0, 0),
(307, 'becca', 'group_files.php', '2017-08-17 20:56:28', 1, 301, '', '2017-08-17 20:56:28', 0, 0),
(308, 'vasquezd', 'group_posts.php', '2017-08-17 22:05:12', 16, 302, '', '2017-08-17 22:05:12', 0, 0),
(309, 'becca', 'group_posts.php', '2017-08-17 22:05:38', 19, 302, '', '2017-08-17 22:05:38', 0, 0),
(310, 'becca', 'group_discussion.php', '2017-08-17 21:24:03', 12, 302, '', '2017-08-17 21:24:03', 0, 0),
(311, 'vasquezd', 'group_discussion.php', '2017-08-17 21:23:15', 4, 302, '', '2017-08-17 21:23:15', 0, 0),
(312, 'becca', 'group_files.php', '2017-08-17 21:52:57', 7, 302, '', '2017-08-17 21:52:57', 0, 0),
(313, 'vasquezd', 'group_files.php', '2017-08-17 21:52:17', 2, 302, '', '2017-08-17 21:52:17', 0, 0),
(314, 'becca', 'group_lists.php', '2017-08-17 22:05:01', 1, 302, '', '2017-08-17 22:05:01', 0, 0),
(315, 'vasquezd', 'group_lists.php', '2017-08-17 22:05:30', 5, 302, '', '2017-08-17 22:05:30', 0, 0),
(316, 'vasquezd', 'group_posts.php', '2017-08-19 23:08:24', 54, 313, '', '2017-08-19 23:08:24', 0, 0),
(317, 'vasquezd', 'group_posts.php', '2017-08-18 21:43:20', 2, 317, '', '2017-08-18 21:43:20', 0, 0),
(318, 'vasquezd', 'group_posts.php', '2017-08-18 23:24:52', 140, 320, '', '2017-08-18 23:24:52', 0, 0),
(319, 'vasquezd', 'group_discussion.php', '2017-08-19 23:27:04', 3, 313, '', '2017-08-19 23:27:04', 0, 0),
(320, 'vasquezd', 'group_files.php', '2017-08-19 23:27:12', 3, 313, '', '2017-08-19 23:27:12', 0, 0),
(321, 'vasquezd', 'group_lists.php', '2017-08-19 23:27:31', 15, 313, '', '2017-08-19 23:27:31', 0, 0),
(322, 'vasquezd', 'group_posts.php', '2017-12-18 22:21:07', 1729, 321, '', '2017-12-18 22:21:07', 0, 0),
(323, 'matt', 'group_posts.php', '2017-12-06 00:16:51', 31, 321, '', '2017-12-06 00:16:51', 0, 0),
(324, 'vasquezd', 'group_discussion.php', '2017-12-06 00:17:17', 79, 321, '', '2017-12-06 00:17:17', 0, 0),
(325, 'vasquezd', 'group_files.php', '2017-12-06 00:09:19', 344, 321, '', '2017-12-06 00:09:19', 0, 0),
(326, 'vasquezd', 'group_lists.php', '2017-12-06 00:09:16', 1168, 321, '', '2017-12-06 00:09:16', 0, 0),
(327, 'vasquezd', 'user.php', '2017-09-10 22:46:42', 13, 0, '', '2017-09-10 22:46:42', 0, 0),
(328, 'vasquezd', 'group_posts.php', '2017-10-08 23:02:07', 2, 322, '', '2017-10-08 23:02:07', 0, 0),
(329, 'vasquezd', 'group_discussion.php', '2017-10-08 23:02:17', 0, 322, '', '2017-10-08 23:02:17', 0, 0),
(330, 'vasquezd', 'group_files.php', '2017-10-08 23:02:25', 0, 322, '', '2017-10-08 23:02:25', 0, 0),
(331, 'vasquezd', 'group_lists.php', '2017-10-08 23:05:52', 1, 322, '', '2017-10-08 23:05:52', 0, 0),
(332, 'matt', 'group_discussion.php', '2017-10-11 22:48:17', 2, 321, '', '2017-10-11 22:48:17', 0, 0),
(333, 'matt', 'group_files.php', '2017-12-06 00:27:51', 6, 321, '', '2017-12-06 00:27:51', 0, 0),
(334, 'matt', 'group_lists.php', '2017-12-06 00:17:02', 7, 321, '', '2017-12-06 00:17:02', 0, 0),
(335, 'aimee', 'groups.php', '2017-10-19 21:38:16', 1, 0, '', '2017-10-19 21:38:16', 0, 0),
(336, 'aimee', '', '2017-10-19 21:38:16', 0, 0, 'js-activity-group-icon', '2017-10-19 21:38:16', 1, 0),
(337, 'davey', 'groups.php', '2017-10-30 22:24:46', 37, 0, '', '2017-10-30 22:24:46', 0, 0),
(338, 'vasquezd', 'kite.php', '2017-12-15 00:09:53', 218, 0, '', '2017-12-15 00:09:53', 0, 0),
(339, 'matt', 'kite.php', '2017-11-23 00:12:05', 11, 0, '', '2017-11-23 00:12:05', 0, 0),
(340, 'becca', 'kite.php', '2017-11-08 23:53:31', 1, 0, '', '2017-11-08 23:53:31', 0, 0),
(341, 'kristen', 'kite.php', '2017-11-08 23:53:57', 0, 0, '', '2017-11-08 23:53:57', 0, 0),
(342, 'vasquezd', 'kite.php', '2017-12-12 01:10:32', 598, 321, '', '2017-12-12 01:10:32', 0, 0),
(343, 'matt', 'kite.php', '2017-11-23 00:12:05', 10, 327, '', '2017-11-23 00:12:05', 0, 0),
(344, 'matt', 'kite.php', '2017-11-23 00:12:18', 3, 328, '', '2017-11-23 00:12:18', 0, 0),
(345, 'vasquezd', 'kite.php', '2017-12-08 23:58:09', 2, 325, '', '2017-12-08 23:58:09', 0, 0),
(346, 'vasquezd', 'kite_discover.php', '2017-12-14 22:33:18', 11, 0, '', '2017-12-14 22:33:18', 0, 0),
(347, 'vasquezd', 'kite_individual_board.php', '2017-12-14 00:43:57', 11, 322, '', '2017-12-14 00:43:57', 0, 0),
(348, 'vasquezd', 'kite_individual_post.php', '2017-12-14 00:44:00', 0, 328, '', '2017-12-14 00:44:00', 0, 0),
(349, 'vasquezd', 'kite_individual_board.php', '2017-12-14 22:33:24', 2, 321, '', '2017-12-14 22:33:24', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE IF NOT EXISTS `user_login` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(15) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `salt` int(11) NOT NULL,
  `password` varchar(40) NOT NULL,
  `last_login` timestamp NOT NULL,
  `last_logout` timestamp NOT NULL,
  `login_total` int(11) NOT NULL,
  `account_deleted` int(11) NOT NULL,
  `password_reset_key` varchar(255) NOT NULL,
  `password_reset_sent` timestamp NOT NULL,
  `password_reset_used` int(11) NOT NULL,
  `password_reset_status` varchar(255) NOT NULL,
  UNIQUE KEY `user_id_2` (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_name_2` (`user_name`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `user_email`, `salt`, `password`, `last_login`, `last_logout`, `login_total`, `account_deleted`, `password_reset_key`, `password_reset_sent`, `password_reset_used`, `password_reset_status`) VALUES
(1, 'vasquezd', 'vasquezd@onid.orst.edu', 1494015793, 'c3be883dd5822f892141e642962084d6be47c2bf', '2018-08-15 00:11:27', '2017-12-01 23:46:09', 863, 0, 'A2XMVdcf3SNCMpkIJQqxbnSOfPcGIHul', '2017-05-05 20:28:32', 0, '1'),
(2, 'matt', '', 1448946249, 'de85ef10d2853b10978ac6c8e0c37c354d3b6969', '2017-12-18 21:52:04', '2017-11-08 23:53:13', 101, 0, '', '0000-00-00 00:00:00', 0, ''),
(3, 'brian', '', 1448946380, 'ace622215c315ce82bfd153b63c7faeb218a17da', '2017-05-19 00:05:25', '2017-05-19 00:06:50', 10, 0, '', '0000-00-00 00:00:00', 0, ''),
(4, 'Kristen', '', 1448946380, 'e3ae7af8145e258b854728fc9cebe6c8891ee2a5', '2017-11-08 23:53:50', '2017-11-08 23:54:16', 10, 0, '', '0000-00-00 00:00:00', 0, ''),
(5, 'Aimee', '', 1448946380, '33f916c66f61bbf37a12105c8bb3e0fc8ea75fd6', '2017-10-19 21:38:11', '2016-11-05 21:11:01', 16, 0, '', '0000-00-00 00:00:00', 0, ''),
(6, 'Becca', '', 1448946503, 'ba342a034cc175fb24a1c3d59d190da0c31f0106', '2017-11-08 23:53:18', '2017-11-08 23:53:45', 22, 0, '', '0000-00-00 00:00:00', 0, ''),
(7, 'Sarah', '', 1448946503, '378d32da508020f682a238053fec6f307e0aa30a', '2017-07-24 23:25:58', '2017-07-24 23:26:11', 2, 0, '', '0000-00-00 00:00:00', 0, ''),
(8, 'chris', '', 1448946380, '80c96f63d24bc38382aca981ed2e262c22582605', '2016-10-01 20:31:31', '2016-10-01 20:31:45', 1, 0, '', '0000-00-00 00:00:00', 0, ''),
(9, 'pop', '', 1448946503, '851b0d429828f520537e2323a1c5f1cde21eee5d', '2015-12-01 05:31:10', '2015-12-01 05:31:10', 0, 0, '', '0000-00-00 00:00:00', 0, ''),
(10, 'davey', 'david@gmail.com', 1509399816, '04e2fb7d672370d9f7b1929917debb010fa504b9', '2017-10-30 21:43:42', '0000-00-00 00:00:00', 1, 0, '', '0000-00-00 00:00:00', 0, '');

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
  `post_view` varchar(255) NOT NULL,
  `updated` timestamp NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_profile_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_profile_id`, `user_id`, `user_name`, `email`, `image_name`, `first_name`, `last_name`, `root_folder`, `biography`, `university`, `post_view`, `updated`, `created`) VALUES
(46, 1, 'vasquezd', 'Vasquezd@onid.orst.edu', '1529993180Tulips.jpg', 'David', 'Vasquez', 'Vasquezd', 'My Biography', 'Oregon State ', 'large', '2016-04-03 21:33:50', '2014-08-21 18:00:05'),
(47, 2, 'matt', 'vasquezm@shareshare.com', 'matt.jpg', 'Matt', 'Vasquez', '', 'This is matts page!', '', '', '2015-12-01 04:55:10', '0000-00-00 00:00:00'),
(48, 3, 'brian', 'vasquezb@shareshare.com', '13.jpg', 'Brian', 'Vasquez', '', 'this is brian''s page! ', '', '', '2016-04-09 21:02:59', '0000-00-00 00:00:00'),
(49, 4, 'Kristen', 'vasquezj@shareshare.com', 'david.jpg', 'Kristen', 'Vasquez', '', 'this is my page!', '', '', '2015-12-03 03:25:43', '0000-00-00 00:00:00'),
(50, 5, 'Aimee', 'Aimeeaileen@mac.com', '11.jpg', 'Aimee', 'Vasquez', 'Vasquez', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '', '2015-12-07 08:28:40', '0000-00-00 00:00:00'),
(51, 6, 'Becca', '', 'Becca.jpg', 'Becca', 'Vasquez', 'vasquezma', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '', '2016-04-09 21:03:19', '0000-00-00 00:00:00'),
(52, 7, 'Sarah', '', '11.jpg', 'Sarah', 'Vasquez', 'Vasquezbb', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '', '2015-12-01 04:57:23', '0000-00-00 00:00:00'),
(53, 8, 'chris', 'californiachristophe@gmail.com', '1450307134Screen.jpg', 'Chris', 'Vasquez', 'Vasquezdk', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '', '2015-12-16 23:05:34', '0000-00-00 00:00:00'),
(54, 9, 'pop', '', '12.jpg', 'Pop', 'Vasquez', 'vasquezbas', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '', '2015-12-01 04:57:59', '0000-00-00 00:00:00'),
(55, 10, 'davey', 'david@gmail.com', 'david.jpg', 'david', 'vasquez', 'davey', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '', '0000-00-00 00:00:00', '2017-10-30 21:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_size`
--

CREATE TABLE IF NOT EXISTS `user_size` (
  `primary_key` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `street_address_line_one` varchar(255) NOT NULL,
  `street_address_line_two` varchar(255) NOT NULL,
  `address_city` varchar(255) NOT NULL,
  `address_state` varchar(255) NOT NULL,
  `address_zip_code` varchar(255) NOT NULL,
  `address_country` varchar(255) NOT NULL,
  `user_shirt` varchar(255) NOT NULL,
  `user_sweater` varchar(255) NOT NULL,
  `user_coat` varchar(255) NOT NULL,
  `user_jeans` varchar(255) NOT NULL,
  `user_pants` varchar(255) NOT NULL,
  `user_dress_size` varchar(255) NOT NULL,
  `user_shoes` varchar(255) NOT NULL,
  `user_info` text NOT NULL,
  PRIMARY KEY (`primary_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `user_size`
--

INSERT INTO `user_size` (`primary_key`, `user_name`, `user_id`, `gender`, `birthday`, `street_address_line_one`, `street_address_line_two`, `address_city`, `address_state`, `address_zip_code`, `address_country`, `user_shirt`, `user_sweater`, `user_coat`, `user_jeans`, `user_pants`, `user_dress_size`, `user_shoes`, `user_info`) VALUES
(1, 'vasquezd', 1, 'Male', 'December 3', '155 NW Kings', '', 'Corvallis', 'Oregon', '', '', 'medium', 'medium', 'medium', '34 x 30', '', '', '12', ''),
(2, 'vasquezb', 3, '', 'May 28', '', '', '', '', '', '', 'large', 'large', 'medium or large', '34 x 30 or 33 x 30', '', '', '12', ''),
(3, 'chris', 8, '', 'March', '', '', '', '', '', '', 'XL', 'XL', '', '38 by 34', '', '', '11', ''),
(4, 'pop', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'Sarah', 7, '', '', 'sarah', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'Becca', 6, '', '', 'becca', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'Aimee', 5, '', '11/22/83', '', '', '', '', '', '', 'Girl large or extra large/ guy small', 'Girl large/ guy small or medium ', '', '', '', '', '', ''),
(8, 'Kristen', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'Brian', 3, '', '', 'brian', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 'matt', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 'davey', 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
