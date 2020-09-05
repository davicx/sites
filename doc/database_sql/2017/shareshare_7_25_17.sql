-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2017 at 02:34 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

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
(97, 0, 0, 0, 0, 'this is a new comment yaya!', 'vasquezd', '177', 0, 0, 0, '', '', 0, '2017-04-06 23:54:14', '2017-04-06 23:54:14'),
(98, 0, 0, 0, 0, 'check out the new files I put for our game', 'vasquezd', '177', 0, 0, 0, '', '', 0, '2017-04-06 23:54:27', '2017-04-06 23:54:27');

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
  `group_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_image` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_name_server` varchar(255) NOT NULL,
  `file_path_server` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `master_site`, `group_id`, `post_id`, `parent`, `file_name`, `file_image`, `file_type`, `file_name_server`, `file_path_server`, `file_path`, `is_folder`, `folder_name`, `user_name`, `user_id`, `file_caption`, `file_seen`, `file_status`, `recycle_status`, `unique_id`, `file_created`, `file_last_modified`) VALUES
(31, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-07-19 00:07:08', '0000-00-00 00:00:00'),
(32, 'template', 294, 0, 0, 'Jellyfish.jpg', '1500423000Jellyfish.jpg', 'jpg', '1500423000Jellyfish.jpg', '', '---------0-', 0, '0', 'vasquezd', 1, '', 0, 1, 0, '', '2017-07-19 00:10:00', '2017-07-19 00:10:00'),
(33, 'template', 294, 0, 0, 'Chrysanthemum.jpg', '1500423162Chrysanthemum.jpg', 'jpg', '1500423162Chrysanthemum.jpg', '', '---------0-', 0, '0', 'vasquezd', 1, '', 0, 1, 0, '', '2017-07-19 00:12:42', '2017-07-19 00:12:42'),
(34, 'template', 294, 0, 0, 'Koala.jpg', '1500423170Koala.jpg', 'jpg', '1500423170Koala.jpg', '', '---------0-', 0, '0', 'vasquezd', 1, '', 0, 1, 0, '', '2017-07-19 00:12:50', '2017-07-19 00:12:50'),
(35, 'template', 294, 0, 0, 'trip.xlsx', 'excel.png', 'xlsx', '1500423188trip.xlsx', '', '---------0-', 0, '0', 'vasquezd', 1, '', 0, 0, 1, '', '2017-07-19 00:13:08', '2017-07-19 00:25:37'),
(36, 'template', 294, 0, 0, 'Chrysanthemum.jpg', '1500503317Chrysanthemum.jpg', 'jpg', '1500503317Chrysanthemum.jpg', '', '---------0-', 0, '0', 'vasquezd', 1, '', 0, 1, 0, '', '2017-07-19 22:28:37', '2017-07-19 22:28:37'),
(37, '', 294, 0, 0, 'music', 'folder.png', '', 'folder.png', 'music', '---------0-', 1, 'music', 'vasquezd', 1, '', 0, 1, 0, '1500503325374', '2017-07-19 22:28:45', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=308 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friends_id`, `user_name`, `user_id`, `friend_user_name`, `friend_id`, `request_pending`, `friend_key`, `created`) VALUES
(274, 'vasquezd', 1, 'Becca', 6, 0, 'vasquezdBecca', '2017-07-24 23:25:40'),
(275, 'Becca', 6, 'vasquezd', 1, 0, 'Beccavasquezd', '2017-07-24 23:25:40'),
(276, 'vasquezd', 1, 'matt', 2, 0, 'vasquezdmatt', '2017-07-22 22:06:01'),
(277, 'matt', 2, 'vasquezd', 1, 0, 'mattvasquezd', '2017-07-22 22:06:01'),
(280, 'vasquezd', 1, 'Aimee', 5, 1, 'vasquezdAimee', '2017-07-22 21:54:36'),
(281, 'Aimee', 5, 'vasquezd', 1, 1, 'Aimeevasquezd', '2017-07-22 21:54:36'),
(282, 'vasquezd', 1, 'Sarah', 7, 0, 'vasquezdSarah', '2017-07-24 23:26:02'),
(283, 'Sarah', 7, 'vasquezd', 1, 0, 'Sarahvasquezd', '2017-07-24 23:26:02'),
(284, 'vasquezd', 1, 'chris', 8, 1, 'vasquezdchris', '2017-07-22 21:55:24'),
(285, 'chris', 8, 'vasquezd', 1, 1, 'chrisvasquezd', '2017-07-22 21:55:24'),
(286, 'vasquezd', 1, 'pop', 9, 1, 'vasquezdpop', '2017-07-22 21:55:25'),
(287, 'pop', 9, 'vasquezd', 1, 1, 'popvasquezd', '2017-07-22 21:55:25'),
(290, 'matt', 2, 'Kristen', 4, 0, 'mattKristen', '2017-07-24 23:26:37'),
(291, 'Kristen', 4, 'matt', 2, 0, 'Kristenmatt', '2017-07-24 23:26:37'),
(292, 'matt', 2, 'brian', 3, 1, 'mattbrian', '2017-07-22 22:07:42'),
(293, 'brian', 3, 'matt', 2, 1, 'brianmatt', '2017-07-22 22:07:42'),
(294, 'matt', 2, 'Aimee', 5, 1, 'mattAimee', '2017-07-22 22:07:50'),
(295, 'Aimee', 5, 'matt', 2, 1, 'Aimeematt', '2017-07-22 22:07:50'),
(296, 'matt', 2, 'Becca', 6, 0, 'mattBecca', '2017-07-24 23:25:42'),
(297, 'Becca', 6, 'matt', 2, 0, 'Beccamatt', '2017-07-24 23:25:42'),
(298, 'matt', 2, 'Sarah', 7, 0, 'mattSarah', '2017-07-24 23:26:04'),
(299, 'Sarah', 7, 'matt', 2, 0, 'Sarahmatt', '2017-07-24 23:26:04'),
(302, 'matt', 2, 'pop', 9, 1, 'mattpop', '2017-07-22 22:07:54'),
(303, 'pop', 9, 'matt', 2, 1, 'popmatt', '2017-07-22 22:07:54'),
(304, 'vasquezd', 1, 'brian', 3, 1, 'vasquezdbrian', '2017-07-24 23:25:07'),
(305, 'brian', 3, 'vasquezd', 1, 1, 'brianvasquezd', '2017-07-24 23:25:07'),
(306, 'vasquezd', 1, 'Kristen', 4, 0, 'vasquezdKristen', '2017-07-24 23:30:11'),
(307, 'Kristen', 4, 'vasquezd', 1, 0, 'Kristenvasquezd', '2017-07-24 23:30:11');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=300 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_type`, `group_parent`, `created_by`, `group_name`, `group_image`, `group_key`, `group_private`, `group_deleted`, `updated`, `created`) VALUES
(294, 'group', 0, 'matt', 'Group One', '', '0.20505700 149955285259615c54321013.25408804', 0, 0, '0000-00-00 00:00:00', '2017-07-08 22:27:32'),
(295, 'group', 0, 'matt', 'Group Two', '', '0.40905700 149955285959615c5b63de13.68049276', 0, 0, '0000-00-00 00:00:00', '2017-07-08 22:27:39'),
(296, 'group', 0, 'vasquezd', 'Super Group', '', '0.88101100 1499554753596163c1d71731.11951651', 0, 0, '0000-00-00 00:00:00', '2017-07-08 22:59:13'),
(297, 'group', 0, 'vasquezd', 'Book Idea', '', '0.24593800 1500415477596e85f53c0b21.39974209', 0, 0, '0000-00-00 00:00:00', '2017-07-18 22:04:37'),
(298, 'group', 0, 'vasquezd', 'new', '', '0.65176400 1500930934597663769f1f44.45771925', 0, 0, '0000-00-00 00:00:00', '2017-07-24 21:15:34'),
(299, 'group', 0, 'vasquezd', 'hi', '', '0.18201600 1501112819597929f32c7006.84033052', 0, 0, '0000-00-00 00:00:00', '2017-07-26 23:46:59');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

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
(43, 228, 'vasquezd', 1, '2017-05-29 22:30:20', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=765 ;

--
-- Dumping data for table `group_users`
--

INSERT INTO `group_users` (`primary_id`, `group_id`, `user_name`, `active_member`, `group_last_visit`, `is_default_group`, `created`) VALUES
(741, 294, 'vasquezd', 1, '0000-00-00 00:00:00', 0, '2017-07-08 22:27:32'),
(742, 294, 'matt', 1, '0000-00-00 00:00:00', 0, '2017-07-08 22:27:32'),
(743, 295, 'vasquezd', 1, '0000-00-00 00:00:00', 0, '2017-07-08 22:27:39'),
(744, 295, 'matt', 1, '0000-00-00 00:00:00', 0, '2017-07-08 22:27:39'),
(745, 296, 'matt', 1, '0000-00-00 00:00:00', 0, '2017-07-08 22:59:13'),
(746, 296, 'becca', 1, '0000-00-00 00:00:00', 0, '2017-07-08 22:59:13'),
(747, 296, 'vasquezk', 1, '0000-00-00 00:00:00', 0, '2017-07-08 22:59:13'),
(748, 296, 'vasquezd', 1, '0000-00-00 00:00:00', 0, '2017-07-08 22:59:13'),
(749, 297, 'vasquezd', 1, '0000-00-00 00:00:00', 0, '2017-07-13 21:32:18'),
(750, 297, 'matt', 1, '0000-00-00 00:00:00', 0, '2017-07-13 21:32:18'),
(751, 297, 'vasquezd', 1, '0000-00-00 00:00:00', 0, '2017-07-18 22:04:37'),
(752, 298, 'matt', 0, '0000-00-00 00:00:00', 0, '2017-07-24 21:15:34'),
(753, 298, 'vasquezd', 1, '0000-00-00 00:00:00', 0, '2017-07-24 21:15:34'),
(754, 294, 'Becca', 0, '0000-00-00 00:00:00', 0, '2017-07-24 23:36:33'),
(755, 294, 'Sarah', 0, '0000-00-00 00:00:00', 0, '2017-07-24 23:36:34'),
(756, 294, 'Kristen', 0, '0000-00-00 00:00:00', 0, '2017-07-24 23:36:34'),
(757, 294, 'Becca', 0, '0000-00-00 00:00:00', 0, '2017-07-24 23:36:35'),
(758, 294, 'Sarah', 0, '0000-00-00 00:00:00', 0, '2017-07-24 23:36:35'),
(759, 294, 'Kristen', 0, '0000-00-00 00:00:00', 0, '2017-07-24 23:36:35'),
(760, 299, 'Becca', 0, '0000-00-00 00:00:00', 0, '2017-07-26 23:46:59'),
(761, 299, 'matt', 0, '0000-00-00 00:00:00', 0, '2017-07-26 23:46:59'),
(762, 299, 'Sarah', 0, '0000-00-00 00:00:00', 0, '2017-07-26 23:46:59'),
(763, 299, 'Kristen', 0, '0000-00-00 00:00:00', 0, '2017-07-26 23:46:59'),
(764, 299, 'vasquezd', 1, '0000-00-00 00:00:00', 0, '2017-07-26 23:46:59');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=436 ;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`list_primary_id`, `list_id`, `user_name`, `user_id`, `user_privilege`, `created_by`, `shared_with`, `list_type`, `list_name`, `group_id`, `unique_key`, `is_default`, `active_status`, `public_status`, `recycle_status`, `updated`, `created`) VALUES
(382, 382, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'wishlist', 'Christmas!', 0, '13ed52a08485b0845cddf0fdbd6fb3f4', 0, 1, 1, 0, '2016-11-10 22:29:44', '2016-10-30 23:31:12'),
(383, 381, 'aimee', 5, 'view', 'vasquezd', 'aimee', 'wishlist', 'My First List', 0, '', 0, 1, 0, 0, '2016-11-03 20:54:30', '0000-00-00 00:00:00'),
(391, 381, 'chris', 8, 'view', 'vasquezd', 'chris', 'wishlist', 'My First List', 0, '', 0, 1, 0, 0, '2016-11-05 23:41:17', '0000-00-00 00:00:00'),
(431, 431, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'normal', 'davey', 0, '657e008d7c2929d669981bf3b7400135', 0, 1, 0, 0, '2017-07-21 23:56:19', '2017-07-21 23:56:19'),
(432, 432, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'normal', 'david', 0, '090c6539313b13c14bf62d952214d285', 0, 1, 0, 0, '2017-07-22 00:01:33', '2017-07-22 00:01:33'),
(433, 433, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'normal', 'users', 0, 'db6530c329959f4e0f536f873a048145', 0, 1, 0, 0, '2017-07-22 00:02:21', '2017-07-22 00:02:21'),
(434, 434, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'normal', 'Books I Like', 294, '2932ed4768f3c6ca6a0939275609f4f9', 0, 1, 0, 0, '2017-07-22 00:13:29', '2017-07-22 00:13:29'),
(435, 435, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'normal', 'Games I want', 294, '4fe95587e5251b47a375fedccdbb018c', 0, 1, 0, 0, '2017-07-22 00:26:26', '2017-07-22 00:26:26');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=114 ;

--
-- Dumping data for table `list_users`
--

INSERT INTO `list_users` (`primary_id`, `list_id`, `user_name`, `user_privilege`, `active_member`, `created`, `updated`) VALUES
(112, 434, 'vasquezd', 'own', 1, '2017-07-22 00:13:29', '0000-00-00 00:00:00'),
(113, 435, 'vasquezd', 'own', 1, '2017-07-22 00:26:26', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=449 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `master_site`, `status_unseen`, `notification_from`, `notification_to`, `notification_type`, `notification_message`, `notification_time`, `full_link`, `link_url`, `group_id`, `list_id`, `from_logged_in_user`, `notification_count`, `notification_deleted`, `clicked`) VALUES
(397, 'template', 0, 'vasquezd', 'matt', 'file_upload', 'shared a file with the group', '2017-07-16 00:05:41', '#', '#', 294, 0, 0, 2, 0, 0),
(398, 'template', 0, 'matt', 'vasquezd', 'file_upload', 'shared a file with the group', '2017-07-16 00:06:23', '#', '#', 295, 0, 0, 1, 0, 0),
(399, 'template', 1, 'matt', 'becca', 'file_upload', 'shared a file with the group', '2017-07-16 00:06:01', '#', '#', 296, 0, 0, 2, 0, 0),
(400, 'template', 1, 'matt', 'vasquezk', 'file_upload', 'shared a file with the group', '2017-07-16 00:06:01', '#', '#', 296, 0, 0, 2, 0, 0),
(401, 'template', 0, 'matt', 'vasquezd', 'file_upload', 'shared a file with the group', '2017-07-16 00:06:38', '#', '#', 296, 0, 0, 2, 0, 0),
(402, 'template', 0, 'vasquezd', 'matt', 'file_upload', 'shared a file with the group', '2017-07-19 23:17:58', '#', '#', 294, 0, 0, 7, 0, 0),
(403, 'template', 1, 'vasquezd', 'Kristen', 'friend_request', 'requested to be friends', '2017-07-22 21:33:13', '#', '#', 0, 0, 0, 0, 0, 0),
(404, 'template', 1, 'vasquezd', 'Becca', 'friend_request', 'requested to be friends', '2017-07-22 21:40:11', '#', '#', 0, 0, 0, 0, 0, 0),
(405, 'template', 0, 'vasquezd', 'matt', 'friend_request', 'requested to be friends', '2017-07-22 23:42:13', '#', '#', 0, 0, 0, 0, 0, 0),
(406, 'template', 1, 'vasquezd', 'brian', 'friend_request', 'requested to be friends', '2017-07-22 21:51:23', '#', '#', 0, 0, 0, 0, 0, 0),
(407, 'template', 1, 'vasquezd', 'Kristen', 'friend_request', 'requested to be friends', '2017-07-22 21:54:29', '#', '#', 0, 0, 0, 0, 0, 0),
(408, 'template', 1, 'vasquezd', 'Kristen', 'friend_request', 'requested to be friends', '2017-07-22 21:54:33', '#', '#', 0, 0, 0, 0, 0, 0),
(409, 'template', 1, 'vasquezd', 'Aimee', 'friend_request', 'requested to be friends', '2017-07-22 21:54:36', '#', '#', 0, 0, 0, 0, 0, 0),
(410, 'template', 1, 'vasquezd', 'Kristen', 'friend_request', 'requested to be friends', '2017-07-22 21:54:40', '#', '#', 0, 0, 0, 0, 0, 0),
(411, 'template', 1, 'vasquezd', 'Sarah', 'friend_request', 'requested to be friends', '2017-07-22 21:54:45', '#', '#', 0, 0, 0, 0, 0, 0),
(412, 'template', 1, 'vasquezd', 'chris', 'friend_request', 'requested to be friends', '2017-07-22 21:55:24', '#', '#', 0, 0, 0, 0, 0, 0),
(413, 'template', 1, 'vasquezd', 'pop', 'friend_request', 'requested to be friends', '2017-07-22 21:55:25', '#', '#', 0, 0, 0, 0, 0, 0),
(414, 'template', 1, 'vasquezd', 'vasquezk', 'friend_request', 'requested to be friends', '2017-07-22 21:55:26', '#', '#', 0, 0, 0, 0, 0, 0),
(415, 'template', 1, 'vasquezd', 'Kristen', 'friend_request', 'requested to be friends', '2017-07-22 21:56:18', '#', '#', 0, 0, 0, 0, 0, 0),
(416, 'template', 1, 'matt', 'vasquezd', 'friend_request_accepted', 'accepted your Friend Request', '2017-07-22 22:06:01', '#', '#', 0, 0, 0, 0, 0, 0),
(417, 'template', 1, 'matt', 'Kristen', 'friend_request', 'requested to be friends', '2017-07-22 22:07:38', '#', '#', 0, 0, 0, 0, 0, 0),
(418, 'template', 1, 'matt', 'brian', 'friend_request', 'requested to be friends', '2017-07-22 22:07:42', '#', '#', 0, 0, 0, 0, 0, 0),
(419, 'template', 1, 'matt', 'Aimee', 'friend_request', 'requested to be friends', '2017-07-22 22:07:50', '#', '#', 0, 0, 0, 0, 0, 0),
(420, 'template', 1, 'matt', 'Becca', 'friend_request', 'requested to be friends', '2017-07-22 22:07:51', '#', '#', 0, 0, 0, 0, 0, 0),
(421, 'template', 1, 'matt', 'Sarah', 'friend_request', 'requested to be friends', '2017-07-22 22:07:53', '#', '#', 0, 0, 0, 0, 0, 0),
(422, 'template', 1, 'matt', 'chris', 'friend_request', 'requested to be friends', '2017-07-22 22:07:53', '#', '#', 0, 0, 0, 0, 0, 0),
(423, 'template', 1, 'matt', 'pop', 'friend_request', 'requested to be friends', '2017-07-22 22:07:54', '#', '#', 0, 0, 0, 0, 0, 0),
(424, 'template', 1, 'vasquezd', 'matt', 'new_post_photo', 'shared a photo', '2017-07-23 21:28:29', 'groups_posts.php?group_id=Mjk0', 'groups_posts.php?group_id=Mjk0', 294, 0, 0, 1, 0, 0),
(425, 'template', 1, 'vasquezd', 'matt', 'group_invite', 'invited you to join a group', '2017-07-24 21:15:34', '0', '#', 298, 0, 0, 0, 0, 0),
(426, 'template', 1, 'vasquezd', 'brian', 'friend_request', 'requested to be friends', '2017-07-24 23:25:07', '#', '#', 0, 0, 0, 0, 0, 0),
(427, 'template', 1, 'vasquezd', 'Kristen', 'friend_request', 'requested to be friends', '2017-07-24 23:25:08', '#', '#', 0, 0, 0, 0, 0, 0),
(428, 'template', 1, 'becca', 'vasquezd', 'friend_request_accepted', 'accepted your Friend Request', '2017-07-24 23:25:40', '#', '#', 0, 0, 0, 0, 0, 0),
(429, 'template', 1, 'becca', 'matt', 'friend_request_accepted', 'accepted your Friend Request', '2017-07-24 23:25:42', '#', '#', 0, 0, 0, 0, 0, 0),
(430, 'template', 1, 'sarah', 'vasquezd', 'friend_request_accepted', 'accepted your Friend Request', '2017-07-24 23:26:02', '#', '#', 0, 0, 0, 0, 0, 0),
(431, 'template', 1, 'sarah', 'matt', 'friend_request_accepted', 'accepted your Friend Request', '2017-07-24 23:26:04', '#', '#', 0, 0, 0, 0, 0, 0),
(432, 'template', 1, 'vasquezd', 'Kristen', 'friend_request', 'requested to be friends', '2017-07-24 23:26:23', '#', '#', 0, 0, 0, 0, 0, 0),
(433, 'template', 1, 'kristen', 'vasquezd', 'friend_request_accepted', 'accepted your Friend Request', '2017-07-24 23:26:35', '#', '#', 0, 0, 0, 0, 0, 0),
(434, 'template', 1, 'kristen', 'matt', 'friend_request_accepted', 'accepted your Friend Request', '2017-07-24 23:26:37', '#', '#', 0, 0, 0, 0, 0, 0),
(435, 'template', 1, 'vasquezd', 'Kristen', 'friend_request', 'requested to be friends', '2017-07-24 23:26:54', '#', '#', 0, 0, 0, 0, 0, 0),
(436, 'template', 1, 'vasquezd', 'Kristen', 'friend_request', 'requested to be friends', '2017-07-24 23:28:43', '#', '#', 0, 0, 0, 0, 0, 0),
(437, 'template', 1, 'vasquezd', 'Kristen', 'friend_request', 'requested to be friends', '2017-07-24 23:28:53', '#', '#', 0, 0, 0, 0, 0, 0),
(438, 'template', 1, 'vasquezd', 'Kristen', 'friend_request', 'requested to be friends', '2017-07-24 23:29:02', '#', '#', 0, 0, 0, 0, 0, 0),
(439, 'template', 1, 'vasquezd', 'Kristen', 'friend_request', 'requested to be friends', '2017-07-24 23:30:01', '#', '#', 0, 0, 0, 0, 0, 0),
(440, 'template', 1, 'kristen', 'vasquezd', 'friend_request_accepted', 'accepted your Friend Request', '2017-07-24 23:30:11', '#', '#', 0, 0, 0, 0, 0, 0),
(441, 'template', 1, 'vasquezd', 'Array', 'group_invite', 'invited you to join a group', '2017-07-24 23:36:34', '#', '#', 294, 0, 0, 1, 0, 0),
(442, 'template', 1, 'vasquezd', 'Array', 'group_invite', 'invited you to join a group', '2017-07-24 23:36:35', '#', '#', 294, 0, 0, 1, 0, 0),
(443, 'template', 1, 'vasquezd', 'Becca', 'group_invite', 'invited you to join a group', '2017-07-26 23:46:59', '0', '#', 299, 0, 0, 0, 0, 0),
(444, 'template', 1, 'vasquezd', 'matt', 'group_invite', 'invited you to join a group', '2017-07-26 23:46:59', '0', '#', 299, 0, 0, 0, 0, 0),
(445, 'template', 1, 'vasquezd', 'Sarah', 'group_invite', 'invited you to join a group', '2017-07-26 23:46:59', '0', '#', 299, 0, 0, 0, 0, 0),
(446, 'template', 1, 'vasquezd', 'Kristen', 'group_invite', 'invited you to join a group', '2017-07-26 23:46:59', '0', '#', 299, 0, 0, 0, 0, 0),
(447, 'template', 1, 'vasquezd', 'matt', 'group_discussion', 'added to a group discussion ', '2017-07-27 00:26:59', 'groups_discussion.php?group_id=Mjk1', 'groups_discussion.php?group_id=Mjk1', 295, 0, 0, 5, 0, 0),
(448, 'template', 1, 'vasquezd', 'matt', 'group_discussion', 'added to a group discussion ', '2017-07-27 22:47:06', 'groups_discussion.php?group_id=Mjk0', 'groups_discussion.php?group_id=Mjk0', 294, 0, 0, 1, 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=678 ;

--
-- Dumping data for table `pending_requests`
--

INSERT INTO `pending_requests` (`primary_id`, `master_site`, `request_type`, `request_type_text`, `request_is_pending`, `sent_by`, `sent_to`, `request_key`, `sent_to_email`, `friend_id`, `group_id`, `list_id`, `updated`, `created`) VALUES
(643, 'template', 'new_group', 'New Group Invite', 0, 'matt', 'vasquezd', '', '', 0, 294, 0, '2017-07-08 22:27:32', '2017-07-08 22:27:32'),
(644, 'template', 'new_group', 'New Group Invite', 0, 'matt', 'vasquezd', '', '', 0, 295, 0, '2017-07-08 22:27:39', '2017-07-08 22:27:39'),
(645, 'template', 'new_group', 'New Group Invite', 0, 'vasquezd', 'matt', '', '', 0, 296, 0, '2017-07-08 22:59:13', '2017-07-08 22:59:13'),
(646, 'template', 'new_group', 'New Group Invite', 0, 'vasquezd', 'becca', '', '', 0, 296, 0, '2017-07-08 22:59:13', '2017-07-08 22:59:13'),
(647, 'template', 'new_group', 'New Group Invite', 0, 'vasquezd', 'vasquezk', '', '', 0, 296, 0, '2017-07-08 22:59:13', '2017-07-08 22:59:13'),
(648, 'template', 'new_group', 'New Group Invite', 0, 'matt', 'vasquezd', '', '', 0, 297, 0, '2017-07-13 21:32:18', '2017-07-13 21:32:18'),
(650, '', 'friend', 'Wants to be Friends', 0, 'vasquezd', 'Becca', 'vasquezdBecca', '', 0, 0, 0, '2017-07-22 21:40:11', '0000-00-00 00:00:00'),
(651, '', 'friend', 'Wants to be Friends', 0, 'vasquezd', 'matt', 'vasquezdmatt', '', 0, 0, 0, '2017-07-22 21:40:18', '0000-00-00 00:00:00'),
(653, '', 'friend', 'Wants to be Friends', 1, 'vasquezd', 'Aimee', 'vasquezdAimee', '', 0, 0, 0, '2017-07-22 21:54:36', '0000-00-00 00:00:00'),
(654, '', 'friend', 'Wants to be Friends', 0, 'vasquezd', 'Sarah', 'vasquezdSarah', '', 0, 0, 0, '2017-07-22 21:54:45', '0000-00-00 00:00:00'),
(655, '', 'friend', 'Wants to be Friends', 1, 'vasquezd', 'chris', 'vasquezdchris', '', 0, 0, 0, '2017-07-22 21:55:24', '0000-00-00 00:00:00'),
(656, '', 'friend', 'Wants to be Friends', 1, 'vasquezd', 'pop', 'vasquezdpop', '', 0, 0, 0, '2017-07-22 21:55:25', '0000-00-00 00:00:00'),
(657, '', 'friend', 'Wants to be Friends', 1, 'vasquezd', 'vasquezk', 'vasquezdvasquezk', '', 0, 0, 0, '2017-07-22 21:55:26', '0000-00-00 00:00:00'),
(658, '', 'friend', 'Wants to be Friends', 0, 'matt', 'Kristen', 'mattKristen', '', 0, 0, 0, '2017-07-22 22:07:38', '0000-00-00 00:00:00'),
(659, '', 'friend', 'Wants to be Friends', 1, 'matt', 'brian', 'mattbrian', '', 0, 0, 0, '2017-07-22 22:07:42', '0000-00-00 00:00:00'),
(660, '', 'friend', 'Wants to be Friends', 1, 'matt', 'Aimee', 'mattAimee', '', 0, 0, 0, '2017-07-22 22:07:50', '0000-00-00 00:00:00'),
(661, '', 'friend', 'Wants to be Friends', 0, 'matt', 'Becca', 'mattBecca', '', 0, 0, 0, '2017-07-22 22:07:51', '0000-00-00 00:00:00'),
(662, '', 'friend', 'Wants to be Friends', 0, 'matt', 'Sarah', 'mattSarah', '', 0, 0, 0, '2017-07-22 22:07:53', '0000-00-00 00:00:00'),
(664, '', 'friend', 'Wants to be Friends', 1, 'matt', 'pop', 'mattpop', '', 0, 0, 0, '2017-07-22 22:07:54', '0000-00-00 00:00:00'),
(665, 'template', 'new_group', 'New Group Invite', 1, 'vasquezd', 'matt', '', '', 0, 298, 0, '2017-07-24 21:15:34', '2017-07-24 21:15:34'),
(666, '', 'friend', 'Wants to be Friends', 1, 'vasquezd', 'brian', 'vasquezdbrian', '', 0, 0, 0, '2017-07-24 23:25:07', '0000-00-00 00:00:00'),
(667, '', 'friend', 'Wants to be Friends', 0, 'vasquezd', 'Kristen', 'vasquezdKristen', '', 0, 0, 0, '2017-07-24 23:30:01', '0000-00-00 00:00:00'),
(668, '', 'group_invite', 'Invited you to a Group', 1, 'vasquezd', 'Becca', '', '', 0, 294, 0, '2017-07-24 23:36:34', '2017-07-24 23:36:34'),
(669, '', 'group_invite', 'Invited you to a Group', 1, 'vasquezd', 'Sarah', '', '', 0, 294, 0, '2017-07-24 23:36:34', '2017-07-24 23:36:34'),
(670, '', 'group_invite', 'Invited you to a Group', 1, 'vasquezd', 'Kristen', '', '', 0, 294, 0, '2017-07-24 23:36:34', '2017-07-24 23:36:34'),
(671, '', 'group_invite', 'Invited you to a Group', 1, 'vasquezd', 'Becca', '', '', 0, 294, 0, '2017-07-24 23:36:35', '2017-07-24 23:36:35'),
(672, '', 'group_invite', 'Invited you to a Group', 1, 'vasquezd', 'Sarah', '', '', 0, 294, 0, '2017-07-24 23:36:35', '2017-07-24 23:36:35'),
(673, '', 'group_invite', 'Invited you to a Group', 1, 'vasquezd', 'Kristen', '', '', 0, 294, 0, '2017-07-24 23:36:35', '2017-07-24 23:36:35'),
(674, 'template', 'new_group', 'New Group Invite', 1, 'vasquezd', 'Becca', '', '', 0, 299, 0, '2017-07-26 23:46:59', '2017-07-26 23:46:59'),
(675, 'template', 'new_group', 'New Group Invite', 1, 'vasquezd', 'matt', '', '', 0, 299, 0, '2017-07-26 23:46:59', '2017-07-26 23:46:59'),
(676, 'template', 'new_group', 'New Group Invite', 1, 'vasquezd', 'Sarah', '', '', 0, 299, 0, '2017-07-26 23:46:59', '2017-07-26 23:46:59'),
(677, 'template', 'new_group', 'New Group Invite', 1, 'vasquezd', 'Kristen', '', '', 0, 299, 0, '2017-07-26 23:46:59', '2017-07-26 23:46:59');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=275 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `master_site`, `post_type`, `post_status`, `parent`, `group_id`, `list_id`, `post_from`, `post_to`, `post_caption`, `post_url`, `video_code`, `image_url`, `file_url`, `file_name`, `file_name_server`, `article_title`, `article_text`, `contains_file`, `unique_id`, `purchased`, `purchased_by`, `password_email`, `password_notes`, `comment_seen`, `updated`, `created`) VALUES
(261, 'template', 'photo', 1, 0, 0, 0, 'matt', '294', 'click', '', '', '1499990994Koala.jpg', '1499990994Koala.jpg', 'Koala.jpg', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-07-14 00:09:54'),
(262, 'template', 'discussion', 1, 0, 294, 0, 'vasquezd', '294', 'hi', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-07-15 00:03:43', '2017-07-15 00:03:43'),
(263, 'template', 'discussion', 1, 0, 294, 0, 'vasquezd', '294', 'file', '', '', '1500077031Chrysanthemum.jpg', '1500077031Chrysanthemum.jpg', 'Chrysanthemum.jpg', '1500077031Chrysanthemum.jpg', '', '', 1, '', 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-07-15 00:03:51'),
(264, 'template', 'photo', 1, 0, 0, 0, 'vasquezd', '294', '', '', '', '1500077052Jellyfish.jpg', '1500077052Jellyfish.jpg', 'Jellyfish.jpg', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-07-15 00:04:12'),
(265, 'template', 'article', 1, 0, 0, 0, 'vasquezd', '294', '', 'https://uk.news.yahoo.com/ceo-tech-giant-vmware-gave-083000289.html', '', '1500077064Jellyfish.jpg', '1500077064Jellyfish.jpg', '1500077064Jellyfish.jpg', '', 'The CEO of tech giant VMware gave us his best advice for becoming a CEO', 'Pat Gelsinger, CEO of Silicon Valley tech giant VMware, has a remarkable career history.  &quot;Our family raised dairy cows, pigs, soybeans, and sorghum,&quot; Gelsinger told Forbes.  GelsingerÂ was given some career advice byÂ EMC cofounder Jack Egan, who told him toÂ &quot;dress like a CEO&quot; and', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-07-15 00:04:24'),
(266, 'template', 'file', 1, 0, 294, 0, 'vasquezd', '294', '', '', '', '../user_file_uploads/1500077074Penguins.jpg', '1500077074Penguins.jpg', 'Penguins.jpg', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-07-15 00:04:34'),
(267, 'template', 'photo', 1, 0, 0, 0, 'vasquezd', '294', 'photo', '', '', '1500845309Chrysanthemum.jpg', '1500845309Chrysanthemum.jpg', 'Chrysanthemum.jpg', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-07-23 21:28:29'),
(268, 'template', 'discussion', 1, 0, 295, 0, 'vasquezd', '295', 'this is new ', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-07-27 00:26:43', '2017-07-27 00:26:43'),
(269, 'template', 'discussion', 1, 268, 295, 0, 'vasquezd', '295', 'hi there', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-07-27 00:26:50', '2017-07-27 00:26:50'),
(270, 'template', 'discussion', 1, 268, 295, 0, 'vasquezd', '295', 'hi there', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-07-27 00:26:52', '2017-07-27 00:26:52'),
(271, 'template', 'discussion', 1, 268, 295, 0, 'vasquezd', '295', 'hi there', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-07-27 00:26:56', '2017-07-27 00:26:56'),
(272, 'template', 'discussion', 1, 268, 295, 0, 'vasquezd', '295', 'hi there', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-07-27 00:26:59', '2017-07-27 00:26:59'),
(273, 'template', 'discussion', 1, 0, 294, 0, 'vasquezd', '294', 'this is new ', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2017-07-27 22:47:06', '2017-07-27 22:47:06'),
(274, 'template', 'discussion', 1, 0, 294, 0, 'vasquezd', '294', 'hi check this out', '', '', '1501195763Desert.jpg', '1501195763Desert.jpg', 'Desert.jpg', '1501195763Desert.jpg', '', '', 1, '', 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-07-27 22:49:23');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=120 ;

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
(119, 178, 1, 'vasquezd', '2016-07-08 22:08:15');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=286 ;

--
-- Dumping data for table `user_analytics`
--

INSERT INTO `user_analytics` (`analytics_id`, `user_name`, `page_url`, `last_visit`, `total_visits`, `group_id`, `icon_id`, `last_click`, `total_clicks`, `user_id`) VALUES
(238, 'matt', 'groups.php', '2017-07-23 20:32:44', 199, 0, '', '2017-07-23 20:32:44', 0, 0),
(239, 'matt', 'group_discussion.php', '2017-07-07 20:38:41', 13, 242, '', '2017-07-07 20:38:41', 0, 0),
(240, 'vasquezd', '', '2017-07-27 22:37:10', 0, 0, 'js-notification-header-seen', '2017-07-27 22:37:10', 361, 0),
(241, 'matt', '', '2017-07-22 23:41:20', 0, 0, 'js-activity-group-icon', '2017-07-22 23:41:20', 33, 0),
(242, 'matt', 'group_discussion.php', '2017-07-07 00:15:33', 2, 243, '', '2017-07-07 00:15:33', 0, 0),
(243, 'vasquezd', '', '2017-07-23 22:36:53', 0, 0, 'js-activity-group-icon', '2017-07-23 22:36:53', 37, 0),
(244, 'vasquezd', 'groups.php', '2017-07-27 22:28:18', 667, 0, '', '2017-07-27 22:28:18', 0, 0),
(245, 'vasquezd', 'group_discussion.php', '2017-07-07 00:21:23', 0, 243, '', '2017-07-07 00:21:23', 0, 0),
(246, 'vasquezd', 'group_posts.php', '2017-07-07 23:51:47', 116, 242, '', '2017-07-07 23:51:47', 0, 0),
(247, 'matt', 'group_posts.php', '2017-07-07 23:51:43', 80, 242, '', '2017-07-07 23:51:43', 0, 0),
(248, 'matt', 'group_posts.php', '2017-07-07 20:31:59', 7, 244, '', '2017-07-07 20:31:59', 0, 0),
(249, 'matt', 'group_posts.php', '2017-07-07 20:38:39', 1, 243, '', '2017-07-07 20:38:39', 0, 0),
(250, 'matt', '', '2017-07-23 00:01:20', 0, 0, 'js-notification-header-seen', '2017-07-23 00:01:20', 115, 0),
(251, 'matt', 'group_discussion.php', '2017-07-12 21:14:48', 40, 295, '', '2017-07-12 21:14:48', 0, 0),
(252, 'becca', '', '2017-07-24 23:25:45', 0, 0, 'js-notification-header-seen', '2017-07-24 23:25:45', 7, 0),
(253, 'matt', 'group_discussion.php', '2017-07-11 21:56:32', 52, 296, '', '2017-07-11 21:56:32', 0, 0),
(254, 'vasquezd', 'group_discussion.php', '2017-07-11 21:56:51', 24, 296, '', '2017-07-11 21:56:51', 0, 0),
(255, 'matt', 'group_discussion.php', '2017-07-12 21:14:51', 85, 294, '', '2017-07-12 21:14:51', 0, 0),
(256, 'vasquezd', 'group_discussion.php', '2017-07-27 23:04:31', 136, 294, '', '2017-07-27 23:04:31', 0, 0),
(257, 'vasquezk', '', '2017-07-09 20:44:32', 0, 0, 'js-notification-header-seen', '2017-07-09 20:44:32', 2, 0),
(258, 'vasquezk', '', '2017-07-09 20:44:33', 0, 0, 'js-activity-group-icon', '2017-07-09 20:44:33', 1, 0),
(259, 'vasquezk', 'groups.php', '2017-07-09 20:44:33', 0, 0, '', '2017-07-09 20:44:33', 0, 0),
(260, 'vasquezk', 'group_discussion.php', '2017-07-09 21:00:19', 5, 296, '', '2017-07-09 21:00:19', 0, 0),
(261, 'vasquezd', 'group_discussion.php', '2017-07-27 00:27:07', 21, 295, '', '2017-07-27 00:27:07', 0, 0),
(262, 'matt', 'group_posts.php', '2017-07-22 23:41:22', 29, 294, '', '2017-07-22 23:41:22', 0, 0),
(263, 'vasquezd', 'group_posts.php', '2017-07-27 22:36:38', 60, 294, '', '2017-07-27 22:36:38', 0, 0),
(264, 'matt', 'group_posts.php', '2017-07-13 21:32:42', 5, 297, '', '2017-07-13 21:32:42', 0, 0),
(265, 'matt', 'group_posts.php', '2017-07-13 23:29:50', 3, 295, '', '2017-07-13 23:29:50', 0, 0),
(266, 'vasquezd', 'group_posts.php', '2017-07-13 23:29:47', 7, 296, '', '2017-07-13 23:29:47', 0, 0),
(267, 'vasquezd', 'group_posts.php', '2017-07-13 23:30:42', 3, 297, '', '2017-07-13 23:30:42', 0, 0),
(268, 'vasquezd', 'group_posts.php', '2017-07-27 00:27:37', 8, 295, '', '2017-07-27 00:27:37', 0, 0),
(269, 'vasquezd', 'group_files.php', '2017-07-27 22:36:44', 291, 294, '', '2017-07-27 22:36:44', 0, 0),
(270, 'vasquezd', 'group_files.php', '2017-07-15 00:17:19', 6, 0, '', '2017-07-15 00:17:19', 0, 0),
(271, 'matt', 'group_files.php', '2017-07-19 23:17:58', 3, 294, '', '2017-07-19 23:17:58', 0, 0),
(272, 'matt', 'group_files.php', '2017-07-16 00:05:52', 2, 295, '', '2017-07-16 00:05:52', 0, 0),
(273, 'matt', 'group_files.php', '2017-07-16 00:06:02', 2, 296, '', '2017-07-16 00:06:02', 0, 0),
(274, 'vasquezd', 'group_files.php', '2017-07-27 00:27:22', 1, 295, '', '2017-07-27 00:27:22', 0, 0),
(275, 'vasquezd', 'group_files.php', '2017-07-16 00:06:38', 0, 296, '', '2017-07-16 00:06:38', 0, 0),
(276, 'vasquezd', 'group_files.php', '2017-07-18 22:04:42', 0, 297, '', '2017-07-18 22:04:42', 0, 0),
(277, 'vasquezd', 'group_lists.php', '2017-07-27 22:36:47', 100, 294, '', '2017-07-27 22:36:47', 0, 0),
(278, 'vasquezd', 'group_lists.php', '2017-07-22 00:25:03', 0, 296, '', '2017-07-22 00:25:03', 0, 0),
(279, 'vasquezd', 'group_lists.php', '2017-07-23 21:28:45', 7, 0, '', '2017-07-23 21:28:45', 0, 0),
(280, 'matt', 'group_lists.php', '2017-07-23 00:01:23', 29, 294, '', '2017-07-23 00:01:23', 0, 0),
(281, 'becca', 'groups.php', '2017-07-24 23:25:44', 1, 0, '', '2017-07-24 23:25:44', 0, 0),
(282, 'sarah', 'groups.php', '2017-07-24 23:25:58', 0, 0, '', '2017-07-24 23:25:58', 0, 0),
(283, 'sarah', '', '2017-07-24 23:26:04', 0, 0, 'js-notification-header-seen', '2017-07-24 23:26:04', 4, 0),
(284, 'kristen', 'groups.php', '2017-07-24 23:30:13', 6, 0, '', '2017-07-24 23:30:13', 0, 0),
(285, 'kristen', '', '2017-07-24 23:30:11', 0, 0, 'js-notification-header-seen', '2017-07-24 23:30:11', 13, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `user_email`, `salt`, `password`, `last_login`, `last_logout`, `login_total`, `account_deleted`, `password_reset_key`, `password_reset_sent`, `password_reset_used`, `password_reset_status`) VALUES
(1, 'vasquezd', 'vasquezd@onid.orst.edu', 1494015793, 'c3be883dd5822f892141e642962084d6be47c2bf', '2017-07-27 20:07:12', '2017-07-22 21:58:24', 694, 0, 'A2XMVdcf3SNCMpkIJQqxbnSOfPcGIHul', '2017-05-05 20:28:32', 0, '1'),
(2, 'matt', '', 1448946249, 'de85ef10d2853b10978ac6c8e0c37c354d3b6969', '2017-07-23 20:32:44', '2017-07-07 00:15:39', 77, 0, '', '0000-00-00 00:00:00', 0, ''),
(3, 'brian', '', 1448946380, 'ace622215c315ce82bfd153b63c7faeb218a17da', '2017-05-19 00:05:25', '2017-05-19 00:06:50', 10, 0, '', '0000-00-00 00:00:00', 0, ''),
(4, 'Kristen', '', 1448946380, 'e3ae7af8145e258b854728fc9cebe6c8891ee2a5', '2017-07-24 23:28:25', '2017-07-24 23:28:23', 9, 0, '', '0000-00-00 00:00:00', 0, ''),
(5, 'Aimee', '', 1448946380, '33f916c66f61bbf37a12105c8bb3e0fc8ea75fd6', '2016-11-05 21:10:34', '2016-11-05 21:11:01', 15, 0, '', '0000-00-00 00:00:00', 0, ''),
(6, 'Becca', '', 1448946503, 'ba342a034cc175fb24a1c3d59d190da0c31f0106', '2017-07-24 23:25:32', '2017-07-24 23:25:53', 19, 0, '', '0000-00-00 00:00:00', 0, ''),
(7, 'Sarah', '', 1448946503, '378d32da508020f682a238053fec6f307e0aa30a', '2017-07-24 23:25:58', '2017-07-24 23:26:11', 2, 0, '', '0000-00-00 00:00:00', 0, ''),
(8, 'chris', '', 1448946380, '80c96f63d24bc38382aca981ed2e262c22582605', '2016-10-01 20:31:31', '2016-10-01 20:31:45', 1, 0, '', '0000-00-00 00:00:00', 0, ''),
(9, 'pop', '', 1448946503, '851b0d429828f520537e2323a1c5f1cde21eee5d', '2015-12-01 05:31:10', '2015-12-01 05:31:10', 0, 0, '', '0000-00-00 00:00:00', 0, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_profile_id`, `user_id`, `user_name`, `email`, `image_name`, `first_name`, `last_name`, `root_folder`, `biography`, `university`, `updated`, `created`) VALUES
(46, 1, 'vasquezd', 'Vasquezd@onid.orst.edu', '12.jpg', 'David', 'Vasquez', 'Vasquezd', '', 'Oregon State ', '2016-04-03 21:33:50', '2014-08-21 18:00:05'),
(47, 2, 'matt', 'vasquezm@shareshare.com', 'matt.jpg', 'Matt', 'Vasquez', '', 'This is matts page!', '', '2015-12-01 04:55:10', '0000-00-00 00:00:00'),
(48, 3, 'brian', 'vasquezb@shareshare.com', '13.jpg', 'Brian', 'Vasquez', '', 'this is brian''s page! ', '', '2016-04-09 21:02:59', '0000-00-00 00:00:00'),
(49, 4, 'Kristen', 'vasquezj@shareshare.com', 'david.jpg', 'Kristen', 'Vasquez', '', 'this is my page!', '', '2015-12-03 03:25:43', '0000-00-00 00:00:00'),
(50, 5, 'Aimee', 'Aimeeaileen@mac.com', '11.jpg', 'Aimee', 'Vasquez', 'Vasquez', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-07 08:28:40', '0000-00-00 00:00:00'),
(51, 6, 'Becca', '', 'Becca.jpg', 'Becca', 'Vasquez', 'vasquezma', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2016-04-09 21:03:19', '0000-00-00 00:00:00'),
(52, 7, 'Sarah', '', '11.jpg', 'Sarah', 'Vasquez', 'Vasquezbb', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-01 04:57:23', '0000-00-00 00:00:00'),
(53, 8, 'chris', 'californiachristophe@gmail.com', '1450307134Screen.jpg', 'Chris', 'Vasquez', 'Vasquezdk', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-16 23:05:34', '0000-00-00 00:00:00'),
(54, 9, 'pop', '', '12.jpg', 'Pop', 'Vasquez', 'vasquezbas', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-01 04:57:59', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

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
(10, 'matt', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
