-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2017 at 10:31 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `master_site`, `group_id`, `post_id`, `parent`, `file_name`, `file_image`, `file_type`, `file_name_server`, `file_path_server`, `file_path`, `is_folder`, `folder_name`, `user_name`, `user_id`, `file_caption`, `file_seen`, `file_status`, `recycle_status`, `unique_id`, `file_created`, `file_last_modified`) VALUES
(1, '', 0, 0, 0, 'Hydrangeas.jpg', '', '', '1491253573Hydrangeas.jpg', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-04-03 21:06:13', '0000-00-00 00:00:00'),
(2, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:01:49', '0000-00-00 00:00:00'),
(3, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:02:40', '0000-00-00 00:00:00'),
(4, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:04:12', '0000-00-00 00:00:00'),
(5, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:04:30', '0000-00-00 00:00:00'),
(6, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:07:04', '0000-00-00 00:00:00'),
(7, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:07:10', '0000-00-00 00:00:00'),
(8, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:09:41', '0000-00-00 00:00:00'),
(9, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:11:01', '0000-00-00 00:00:00'),
(10, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:11:07', '0000-00-00 00:00:00'),
(11, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:11:13', '0000-00-00 00:00:00'),
(12, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:46:20', '0000-00-00 00:00:00'),
(13, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:46:51', '0000-00-00 00:00:00'),
(14, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:47:15', '0000-00-00 00:00:00'),
(15, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:47:23', '0000-00-00 00:00:00'),
(16, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:48:39', '0000-00-00 00:00:00'),
(17, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:49:38', '0000-00-00 00:00:00'),
(18, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:52:33', '0000-00-00 00:00:00'),
(19, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:52:39', '0000-00-00 00:00:00'),
(20, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:55:02', '0000-00-00 00:00:00'),
(21, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:55:26', '0000-00-00 00:00:00'),
(22, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:58:42', '0000-00-00 00:00:00'),
(23, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:59:30', '0000-00-00 00:00:00'),
(24, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-12 23:59:42', '0000-00-00 00:00:00'),
(25, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-13 00:00:01', '0000-00-00 00:00:00'),
(26, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-13 00:00:26', '0000-00-00 00:00:00'),
(27, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-13 00:01:43', '0000-00-00 00:00:00'),
(28, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-13 00:04:49', '0000-00-00 00:00:00'),
(29, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-13 00:05:00', '0000-00-00 00:00:00'),
(30, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-13 00:06:56', '0000-00-00 00:00:00'),
(31, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-13 00:09:07', '0000-00-00 00:00:00'),
(32, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-13 00:09:48', '0000-00-00 00:00:00'),
(33, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-13 00:15:08', '0000-00-00 00:00:00'),
(34, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-13 00:17:26', '0000-00-00 00:00:00'),
(35, '', 0, 0, 0, 'other', '', '', 'other', '', '', 0, '', '', 0, '', 0, 0, 0, '', '2017-05-13 00:18:43', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=272 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friends_id`, `user_name`, `user_id`, `friend_user_name`, `friend_id`, `request_pending`, `friend_key`, `created`) VALUES
(256, 'matt', 2, 'vasquezd', 1, 0, 'mattvasquezd', '2017-05-02 23:25:16'),
(257, 'vasquezd', 1, 'matt', 2, 0, 'vasquezdmatt', '2017-05-02 23:25:16'),
(258, 'becca', 6, 'vasquezd', 1, 0, 'beccavasquezd', '2017-05-02 23:25:14'),
(259, 'vasquezd', 1, 'becca', 6, 0, 'vasquezdbecca', '2017-05-02 23:25:14'),
(262, 'vasquezk', 39, 'vasquezd', 1, 0, 'vasquezkvasquezd', '2017-05-17 21:35:06'),
(263, 'vasquezd', 1, 'vasquezk', 39, 0, 'vasquezdvasquezk', '2017-05-17 21:35:06'),
(268, 'brian', 3, 'Becca', 6, 0, 'brianBecca', '2017-05-19 00:04:46'),
(269, 'Becca', 6, 'brian', 3, 0, 'Beccabrian', '2017-05-19 00:04:46'),
(270, 'brian', 3, 'vasquezd', 1, 1, 'brianvasquezd', '2017-05-19 00:06:47'),
(271, 'vasquezd', 1, 'brian', 3, 1, 'vasquezdbrian', '2017-05-19 00:06:47');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=231 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_type`, `group_parent`, `created_by`, `group_name`, `group_image`, `group_key`, `group_private`, `group_deleted`, `updated`, `created`) VALUES
(220, 'group', 0, 'vasquezd', 'vasquezd david group', '', '0.08680800 1495145256591e1b28153186.36651464', 0, 0, '0000-00-00 00:00:00', '2017-05-18 22:07:36'),
(221, 'group', 0, 'vasquezd', 'My New Group', '', '0.05469400 149574364159273c990d5a68.93999922', 0, 0, '0000-00-00 00:00:00', '2017-05-25 20:20:41'),
(222, 'group', 0, 'matt', 'Matts Group', '', '0.50911700 149574367159273cb77c4bd1.32441705', 0, 0, '0000-00-00 00:00:00', '2017-05-25 20:21:11'),
(225, 'board', 0, 'vasquezd', 'my new board', '', '0.18669100 14958420105928bcda2d9430.46804946', 0, 1, '0000-00-00 00:00:00', '2017-05-26 23:40:10'),
(226, 'board', 0, 'vasquezd', 'Board 2', '', '0.34210600 14958420945928bd2e5385a9.88531341', 1, 0, '0000-00-00 00:00:00', '2017-05-26 23:41:34'),
(227, 'board', 0, 'matt', 'my board', '', '0.12242400 14958421325928bd541de389.93583852', 0, 1, '0000-00-00 00:00:00', '2017-05-26 23:42:12'),
(228, 'board', 0, 'matt', 'my music stuff MATT', '', '0.44969900 14958421515928bd676dca38.30945120', 0, 0, '0000-00-00 00:00:00', '2017-05-26 23:42:31'),
(229, 'board', 0, 'vasquezd', 'my new board', '', '0.51994600 1496013065592b59097ef0a5.88649534', 0, 1, '0000-00-00 00:00:00', '2017-05-28 23:11:05'),
(230, 'group', 0, 'vasquezd', 'notice!', '', '0.68831500 1496183816592df408a80bb8.21638180', 0, 0, '0000-00-00 00:00:00', '2017-05-30 22:36:56');

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
  `last_visit_posts` timestamp NOT NULL,
  `last_visit_discussion` timestamp NOT NULL,
  `last_visit_files` timestamp NOT NULL,
  `is_default_group` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=616 ;

--
-- Dumping data for table `group_users`
--

INSERT INTO `group_users` (`primary_id`, `group_id`, `user_name`, `active_member`, `group_last_visit`, `last_visit_posts`, `last_visit_discussion`, `last_visit_files`, `is_default_group`, `created`) VALUES
(594, 218, 'vasquezd', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-18 22:06:16'),
(595, 219, 'matt', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-18 22:06:17'),
(596, 219, 'becca', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-18 22:06:17'),
(597, 219, 'vasquezk', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-18 22:06:17'),
(598, 219, 'vasquezd', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-18 22:06:17'),
(599, 220, 'matt', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-18 22:07:36'),
(600, 220, 'becca', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-18 22:07:36'),
(601, 220, 'vasquezk', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-18 22:07:36'),
(602, 220, 'vasquezd', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-18 22:07:36'),
(603, 221, 'matt', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-25 20:20:41'),
(604, 221, 'vasquezd', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-25 20:20:41'),
(605, 222, 'vasquezd', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-25 20:21:11'),
(606, 222, 'matt', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-25 20:21:11'),
(607, 225, 'vasquezd', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-26 23:40:10'),
(608, 226, 'vasquezd', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-26 23:41:34'),
(609, 227, 'matt', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-26 23:42:12'),
(610, 228, 'matt', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-26 23:42:31'),
(611, 229, 'vasquezd', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-28 23:11:05'),
(612, 230, 'matt', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-30 22:36:56'),
(613, 230, 'becca', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-30 22:36:56'),
(614, 230, 'vasquezk', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-30 22:36:56'),
(615, 230, 'vasquezd', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-05-30 22:36:56');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=431 ;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`list_primary_id`, `list_id`, `user_name`, `user_id`, `user_privilege`, `created_by`, `shared_with`, `list_type`, `list_name`, `group_id`, `unique_key`, `is_default`, `active_status`, `public_status`, `recycle_status`, `updated`, `created`) VALUES
(381, 381, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'wishlist', 'My First List', 0, '2c51504605fa8cb0eff5215b29f64d4d', 1, 1, 0, 0, '2016-10-30 22:56:48', '2016-10-30 22:56:48'),
(382, 382, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'wishlist', 'Christmas!', 0, '13ed52a08485b0845cddf0fdbd6fb3f4', 0, 1, 1, 0, '2016-11-10 22:29:44', '2016-10-30 23:31:12'),
(383, 381, 'aimee', 5, 'view', 'vasquezd', 'aimee', 'wishlist', 'My First List', 0, '', 0, 1, 0, 0, '2016-11-03 20:54:30', '0000-00-00 00:00:00'),
(384, 384, 'aimee', 5, 'own', 'aimee', 'aimee', 'wishlist', 'dav', 0, 'c307ced03e5a9de9abcdee695ec5ef8c', 0, 1, 0, 0, '2016-11-03 20:56:08', '2016-11-03 20:56:08'),
(385, 381, 'brian', 3, 'view', 'vasquezd', 'brian', 'wishlist', 'My First List', 0, '', 0, 1, 0, 0, '2016-11-03 21:07:11', '0000-00-00 00:00:00'),
(386, 386, 'aimee', 5, 'own', 'aimee', 'aimee', 'wishlist', 'My First List', 0, 'cbdf6a52d8122af11302e481434c2b62', 1, 1, 0, 0, '2016-11-05 21:10:42', '2016-11-05 21:10:42'),
(387, 387, 'aimee', 5, 'own', 'aimee', 'aimee', 'wishlist', 'shared w david', 0, '4cce763635a4b25a1b492ce222bcf345', 0, 1, 0, 0, '2016-11-05 21:10:50', '2016-11-05 21:10:50'),
(388, 387, 'vasquezd', 1, 'view', 'aimee', 'vasquezd', 'wishlist', 'shared w david', 0, '', 0, 1, 0, 0, '2016-11-05 21:10:56', '0000-00-00 00:00:00'),
(389, 381, 'kristen', 4, 'view', 'vasquezd', 'kristen', 'wishlist', 'My First List', 0, '', 0, 1, 0, 0, '2016-11-05 23:41:17', '0000-00-00 00:00:00'),
(390, 381, 'Sarah', 7, 'view', 'vasquezd', 'Sarah', 'wishlist', 'My First List', 0, '', 0, 1, 0, 0, '2016-11-05 23:41:17', '0000-00-00 00:00:00'),
(391, 381, 'chris', 8, 'view', 'vasquezd', 'chris', 'wishlist', 'My First List', 0, '', 0, 1, 0, 0, '2016-11-05 23:41:17', '0000-00-00 00:00:00'),
(392, 382, 'kristen', 4, 'view', 'vasquezd', 'kristen', 'wishlist', 'Christmas!', 0, '', 0, 1, 0, 0, '2016-11-05 23:42:49', '0000-00-00 00:00:00'),
(393, 382, 'brian', 3, 'view', 'vasquezd', 'brian', 'wishlist', 'Christmas!', 0, '', 0, 1, 0, 0, '2016-11-05 23:42:49', '0000-00-00 00:00:00'),
(394, 382, 'Sarah', 7, 'view', 'vasquezd', 'Sarah', 'wishlist', 'Christmas!', 0, '', 0, 1, 0, 0, '2016-11-05 23:42:49', '0000-00-00 00:00:00'),
(395, 382, 'chris', 8, 'view', 'vasquezd', 'chris', 'wishlist', 'Christmas!', 0, '', 0, 1, 0, 0, '2016-11-05 23:42:49', '0000-00-00 00:00:00'),
(396, 382, 'aimee', 5, 'view', 'vasquezd', 'aimee', 'wishlist', 'Christmas!', 0, '', 0, 1, 0, 0, '2016-11-05 23:42:49', '0000-00-00 00:00:00'),
(397, 397, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'wishlist', 'test', 0, 'b2f9521dd015ac2520030dedcbae10fd', 0, 1, 0, 0, '2016-11-06 23:34:39', '2016-11-06 23:34:39'),
(398, 398, 'brian', 3, 'own', 'brian', 'brian', 'wishlist', 'My First List', 0, '34020e0a44d3ad1e15686be912e8fd12', 1, 1, 0, 0, '2016-11-21 23:36:20', '2016-11-21 23:36:20'),
(399, 399, 'vasquezd3', 61, 'own', 'vasquezd3', 'vasquezd3', 'wishlist', 'Your First List ', 0, '6a232172c2b336b18ac851467e2dedc3', 1, 1, 1, 0, '2016-11-22 00:39:29', '2016-11-21 23:59:19'),
(400, 400, 'newusertest', 40, 'own', 'newusertest', 'newusertest', 'first_list', 'Your First List ', 0, '5c7682426da8c7cfd1c2ee298af98a8a', 1, 1, 0, 0, '2017-01-05 22:03:22', '2017-01-05 22:03:22'),
(401, 401, 'tester', 47, 'own', 'tester', 'tester', 'first_list', 'Your First List ', 0, '8f3b373f7e2f7585cce78824bdf5fb37', 1, 1, 0, 0, '2017-01-05 23:51:52', '2017-01-05 23:51:52'),
(402, 402, 'newgroupuser', 48, 'own', 'newgroupuser', 'newgroupuser', 'first_list', 'Your First List ', 0, '6a2b0b1a5f896ea702a0266d5331b6bf', 1, 1, 0, 0, '2017-01-05 23:57:22', '2017-01-05 23:57:22'),
(403, 403, 'vavaaf', 50, 'own', 'vavaaf', 'vavaaf', 'first_list', 'Your First List ', 0, 'ae217ac915719e81d582444e555b6fcd', 1, 1, 0, 0, '2017-01-06 00:01:16', '2017-01-06 00:01:16'),
(404, 404, 'vasquezda', 51, 'own', 'vasquezda', 'vasquezda', 'first_list', 'Your First List ', 0, '6c82dc49bc8cd3fa0f57b5062d5b5b8a', 1, 1, 0, 0, '2017-01-06 00:02:04', '2017-01-06 00:02:04'),
(405, 405, 'aefeawf', 52, 'own', 'aefeawf', 'aefeawf', 'first_list', 'Your First List ', 0, 'aca53ad8d43da1c4e42ac1d6fcf1a643', 1, 1, 0, 0, '2017-01-06 00:10:23', '2017-01-06 00:10:23'),
(406, 381, 'newlistusertest', 54, 'view', 'vasquezd', 'newlistusertest', 'wishlist', 'My First List', 0, '', 0, 1, 0, 0, '2017-01-06 00:23:54', '0000-00-00 00:00:00'),
(407, 407, 'newemail', 40, 'own', 'newemail', 'newemail', 'first_list', 'Your First List ', 0, 'e3e31c9accffc982837f6c98d9e1d43a', 1, 1, 0, 0, '2017-01-06 23:16:09', '2017-01-06 23:16:09'),
(408, 408, 'davdef', 41, 'own', 'davdef', 'davdef', 'first_list', 'Your First List ', 0, 'a00f5f67d14c5612cd4fa592033712c1', 1, 1, 0, 0, '2017-01-07 22:53:10', '2017-01-07 22:53:10'),
(409, 409, 'newuser', 42, 'own', 'newuser', 'newuser', 'first_list', 'Your First List ', 0, 'bab5099320e93e0fc36ee935abc12089', 1, 1, 0, 0, '2017-04-13 23:43:17', '2017-04-13 23:43:17'),
(410, 410, 'newemailnone', 43, 'own', 'newemailnone', 'newemailnone', 'first_list', 'Your First List ', 0, 'eef97f23081a17f070cf5e8e3e892971', 1, 1, 0, 0, '2017-04-14 00:13:13', '2017-04-14 00:13:13'),
(411, 411, 'vasque', 44, 'own', 'vasque', 'vasque', 'first_list', 'Your First List ', 0, '298d759077caae4131be1b3b9183e2ab', 1, 1, 0, 0, '2017-04-14 00:14:18', '2017-04-14 00:14:18'),
(412, 412, 'vawefawe', 45, 'own', 'vawefawe', 'vawefawe', 'first_list', 'Your First List ', 0, '0d6573248aecdf8e93e066c1e7446471', 1, 1, 0, 0, '2017-04-14 00:14:55', '2017-04-14 00:14:55'),
(413, 413, 'davewav', 46, 'own', 'davewav', 'davewav', 'first_list', 'Your First List ', 0, '2195313d3263bd6665bae0f88a9bb600', 1, 1, 0, 0, '2017-04-14 00:16:01', '2017-04-14 00:16:01'),
(414, 414, 'testeaw', 47, 'own', 'testeaw', 'testeaw', 'first_list', 'Your First List ', 0, '0751e65546efecdb3c8a67f9f4482651', 1, 1, 0, 0, '2017-04-14 00:18:56', '2017-04-14 00:18:56'),
(415, 415, 'sssawfawf', 48, 'own', 'sssawfawf', 'sssawfawf', 'first_list', 'Your First List ', 0, '3768e0dfd244cc920381686fd64e1dca', 1, 1, 0, 0, '2017-04-14 00:20:24', '2017-04-14 00:20:24'),
(416, 416, 'awpoehfawf', 49, 'own', 'awpoehfawf', 'awpoehfawf', 'first_list', 'Your First List ', 0, 'a30cf1956f8738436441d3b7d813e40a', 1, 1, 0, 0, '2017-04-14 00:20:45', '2017-04-14 00:20:45'),
(417, 417, 'noemail', 50, 'own', 'noemail', 'noemail', 'first_list', 'Your First List ', 0, 'd124d158428fc498e4a486150cae0321', 1, 1, 0, 0, '2017-04-14 00:36:38', '2017-04-14 00:36:38'),
(418, 418, 'daveve', 51, 'own', 'daveve', 'daveve', 'first_list', 'Your First List ', 0, 'eba976ad841c93334752aaa98f365755', 1, 1, 0, 0, '2017-04-14 00:37:32', '2017-04-14 00:37:32'),
(419, 419, 'vasquezd2', 52, 'own', 'vasquezd2', 'vasquezd2', 'first_list', 'Your First List ', 0, 'a877676b8905fa19cfc65bdea5a5f732', 1, 1, 0, 0, '2017-04-14 00:38:46', '2017-04-14 00:38:46'),
(420, 420, 'vasquez', 53, 'own', 'vasquez', 'vasquez', 'first_list', 'Your First List ', 0, '633e5ac84fecea6b6f58884f0464ac99', 1, 1, 0, 0, '2017-04-15 22:03:31', '2017-04-15 22:03:31'),
(421, 421, 'ddddd', 54, 'own', 'ddddd', 'ddddd', 'first_list', 'Your First List ', 0, '7f6a997bc753dd18701857c5068ea75b', 1, 1, 0, 0, '2017-04-15 22:17:28', '2017-04-15 22:17:28'),
(422, 422, 'gygygygy', 55, 'own', 'gygygygy', 'gygygygy', 'first_list', 'Your First List ', 0, 'eef2e2ab62016de732a347d0cde9e72b', 1, 1, 0, 0, '2017-04-15 22:50:18', '2017-04-15 22:50:18'),
(423, 423, 'passwrd', 56, 'own', 'passwrd', 'passwrd', 'first_list', 'Your First List ', 0, 'a8fb89689ea748c922414ea7856dd42e', 1, 1, 0, 0, '2017-04-15 22:56:15', '2017-04-15 22:56:15'),
(424, 424, 'vasquezdu', 57, 'own', 'vasquezdu', 'vasquezdu', 'first_list', 'Your First List ', 0, '1610bbc9004ff03ec2205593cc566d57', 1, 1, 0, 0, '2017-04-15 22:59:18', '2017-04-15 22:59:18'),
(425, 425, 'wefewf', 58, 'own', 'wefewf', 'wefewf', 'first_list', 'Your First List ', 0, '57bb3942383d43c2ac96ad6bf9c956a9', 1, 1, 0, 0, '2017-04-16 23:30:30', '2017-04-16 23:30:30'),
(426, 426, 'tester', 40, 'own', 'tester', 'tester', 'first_list', 'Your First List ', 0, '06956d00f00f8296516167c914943666', 1, 1, 0, 0, '2017-05-21 22:48:54', '2017-05-21 22:48:54'),
(427, 427, 'vwefawev', 41, 'own', 'vwefawev', 'vwefawev', 'first_list', 'Your First List ', 0, '1476a374cb0515232e2d3b822b884811', 1, 1, 0, 0, '2017-05-21 22:50:15', '2017-05-21 22:50:15'),
(428, 428, 'asvawefa', 42, 'own', 'asvawefa', 'asvawefa', 'first_list', 'Your First List ', 0, '2bf7f6bfe64301df924a71bd9bc73856', 1, 1, 0, 0, '2017-05-21 22:54:22', '2017-05-21 22:54:22'),
(429, 429, 'awefweaf', 43, 'own', 'awefweaf', 'awefweaf', 'first_list', 'Your First List ', 0, 'c6d3a7a37156c1476c1008e65b71d4c1', 1, 1, 0, 0, '2017-05-21 22:54:45', '2017-05-21 22:54:45'),
(430, 430, 'awefawef', 44, 'own', 'awefawef', 'awefawef', 'first_list', 'Your First List ', 0, '4fa47d2e63169f7682955076c1d29273', 1, 1, 0, 0, '2017-05-21 22:55:13', '2017-05-21 22:55:13');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `list_users`
--

INSERT INTO `list_users` (`primary_id`, `list_id`, `user_name`, `user_privilege`, `active_member`, `created`, `updated`) VALUES
(57, 381, 'vasquezd', 'own', 1, '2016-10-30 22:56:48', '0000-00-00 00:00:00'),
(58, 382, 'vasquezd', 'own', 1, '2016-10-30 23:31:12', '0000-00-00 00:00:00'),
(61, 381, 'aimee', 'view', 1, '2016-11-03 20:54:30', '0000-00-00 00:00:00'),
(62, 384, 'aimee', 'own', 1, '2016-11-03 20:56:08', '0000-00-00 00:00:00'),
(63, 381, 'brian', 'view', 1, '2016-11-03 21:07:11', '0000-00-00 00:00:00'),
(64, 386, 'aimee', 'own', 1, '2016-11-05 21:10:42', '0000-00-00 00:00:00'),
(65, 387, 'aimee', 'own', 1, '2016-11-05 21:10:50', '0000-00-00 00:00:00'),
(66, 387, 'vasquezd', 'view', 1, '2016-11-05 21:10:56', '0000-00-00 00:00:00'),
(67, 381, 'kristen', 'view', 1, '2016-11-05 23:41:17', '0000-00-00 00:00:00'),
(68, 381, 'Sarah', 'view', 1, '2016-11-05 23:41:17', '0000-00-00 00:00:00'),
(69, 381, 'chris', 'view', 1, '2016-11-05 23:41:17', '0000-00-00 00:00:00'),
(70, 382, 'kristen', 'view', 1, '2016-11-05 23:42:49', '0000-00-00 00:00:00'),
(71, 382, 'brian', 'view', 1, '2016-11-05 23:42:49', '0000-00-00 00:00:00'),
(72, 382, 'Sarah', 'view', 1, '2016-11-05 23:42:49', '0000-00-00 00:00:00'),
(73, 382, 'chris', 'view', 1, '2016-11-05 23:42:49', '0000-00-00 00:00:00'),
(74, 382, 'aimee', 'view', 1, '2016-11-05 23:42:49', '0000-00-00 00:00:00'),
(75, 397, 'vasquezd', 'own', 1, '2016-11-06 23:34:39', '0000-00-00 00:00:00'),
(76, 398, 'brian', 'own', 1, '2016-11-21 23:36:20', '0000-00-00 00:00:00'),
(77, 399, 'vasquezd3', 'own', 1, '2016-11-21 23:59:19', '0000-00-00 00:00:00'),
(78, 400, 'newusertest', 'own', 1, '2017-01-05 22:03:22', '0000-00-00 00:00:00'),
(79, 401, 'tester', 'own', 1, '2017-01-05 23:51:52', '0000-00-00 00:00:00'),
(80, 402, 'newgroupuser', 'own', 1, '2017-01-05 23:57:22', '0000-00-00 00:00:00'),
(81, 403, 'vavaaf', 'own', 1, '2017-01-06 00:01:16', '0000-00-00 00:00:00'),
(82, 404, 'vasquezda', 'own', 1, '2017-01-06 00:02:04', '0000-00-00 00:00:00'),
(83, 405, 'aefeawf', 'own', 1, '2017-01-06 00:10:23', '0000-00-00 00:00:00'),
(84, 381, 'newlistusertest', 'view', 1, '2017-01-06 00:23:54', '0000-00-00 00:00:00'),
(85, 407, 'newemail', 'own', 1, '2017-01-06 23:16:09', '0000-00-00 00:00:00'),
(86, 408, 'davdef', 'own', 1, '2017-01-07 22:53:10', '0000-00-00 00:00:00'),
(87, 409, 'newuser', 'own', 1, '2017-04-13 23:43:17', '0000-00-00 00:00:00'),
(88, 410, 'newemailnone', 'own', 1, '2017-04-14 00:13:13', '0000-00-00 00:00:00'),
(89, 411, 'vasque', 'own', 1, '2017-04-14 00:14:18', '0000-00-00 00:00:00'),
(90, 412, 'vawefawe', 'own', 1, '2017-04-14 00:14:55', '0000-00-00 00:00:00'),
(91, 413, 'davewav', 'own', 1, '2017-04-14 00:16:01', '0000-00-00 00:00:00'),
(92, 414, 'testeaw', 'own', 1, '2017-04-14 00:18:56', '0000-00-00 00:00:00'),
(93, 415, 'sssawfawf', 'own', 1, '2017-04-14 00:20:24', '0000-00-00 00:00:00'),
(94, 416, 'awpoehfawf', 'own', 1, '2017-04-14 00:20:45', '0000-00-00 00:00:00'),
(95, 417, 'noemail', 'own', 1, '2017-04-14 00:36:38', '0000-00-00 00:00:00'),
(96, 418, 'daveve', 'own', 1, '2017-04-14 00:37:32', '0000-00-00 00:00:00'),
(97, 419, 'vasquezd2', 'own', 1, '2017-04-14 00:38:46', '0000-00-00 00:00:00'),
(98, 420, 'vasquez', 'own', 1, '2017-04-15 22:03:31', '0000-00-00 00:00:00'),
(99, 421, 'ddddd', 'own', 1, '2017-04-15 22:17:28', '0000-00-00 00:00:00'),
(100, 422, 'gygygygy', 'own', 1, '2017-04-15 22:50:18', '0000-00-00 00:00:00'),
(101, 423, 'passwrd', 'own', 1, '2017-04-15 22:56:15', '0000-00-00 00:00:00'),
(102, 424, 'vasquezdu', 'own', 1, '2017-04-15 22:59:18', '0000-00-00 00:00:00'),
(103, 425, 'wefewf', 'own', 1, '2017-04-16 23:30:30', '0000-00-00 00:00:00'),
(104, 426, 'tester', 'own', 1, '2017-05-21 22:48:54', '0000-00-00 00:00:00'),
(105, 427, 'vwefawev', 'own', 1, '2017-05-21 22:50:15', '0000-00-00 00:00:00'),
(106, 428, 'asvawefa', 'own', 1, '2017-05-21 22:54:22', '0000-00-00 00:00:00'),
(107, 429, 'awefweaf', 'own', 1, '2017-05-21 22:54:45', '0000-00-00 00:00:00'),
(108, 430, 'awefawef', 'own', 1, '2017-05-21 22:55:13', '0000-00-00 00:00:00');

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
  `notification_time` timestamp NOT NULL,
  `full_link` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `from_logged_in_user` int(11) NOT NULL,
  `notification_deleted` int(11) NOT NULL,
  `clicked` int(11) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=581 ;

--
-- Dumping data for table `pending_requests`
--

INSERT INTO `pending_requests` (`primary_id`, `master_site`, `request_type`, `request_type_text`, `request_is_pending`, `sent_by`, `sent_to`, `request_key`, `sent_to_email`, `friend_id`, `group_id`, `list_id`, `updated`, `created`) VALUES
(572, 'template', 'new_group', 'New Group Invite', 0, 'vasquezd', 'matt', '', '', 0, 220, 0, '2017-05-18 22:07:36', '2017-05-18 22:07:36'),
(573, 'template', 'new_group', 'New Group Invite', 1, 'vasquezd', 'becca', '', '', 0, 220, 0, '2017-05-18 22:07:36', '2017-05-18 22:07:36'),
(574, 'template', 'new_group', 'New Group Invite', 1, 'vasquezd', 'vasquezk', '', '', 0, 220, 0, '2017-05-18 22:07:36', '2017-05-18 22:07:36'),
(575, '', 'friend', 'Wants to be Friends', 1, 'brian', 'vasquezd', 'brianvasquezd', '', 0, 0, 0, '2017-05-19 00:06:47', '0000-00-00 00:00:00'),
(576, 'template', 'new_group', 'New Group Invite', 1, 'vasquezd', 'matt', '', '', 0, 221, 0, '2017-05-25 20:20:41', '2017-05-25 20:20:41'),
(577, 'template', 'new_group', 'New Group Invite', 0, 'matt', 'vasquezd', '', '', 0, 222, 0, '2017-05-25 20:21:11', '2017-05-25 20:21:11'),
(578, 'template', 'new_group', 'New Group Invite', 1, 'vasquezd', 'matt', '', '', 0, 230, 0, '2017-05-30 22:36:56', '2017-05-30 22:36:56'),
(579, 'template', 'new_group', 'New Group Invite', 1, 'vasquezd', 'becca', '', '', 0, 230, 0, '2017-05-30 22:36:56', '2017-05-30 22:36:56'),
(580, 'template', 'new_group', 'New Group Invite', 1, 'vasquezd', 'vasquezk', '', '', 0, 230, 0, '2017-05-30 22:36:56', '2017-05-30 22:36:56');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=108 ;

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
  `page_url` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `last_visit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_visits` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`analytics_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=224 ;

--
-- Dumping data for table `user_analytics`
--

INSERT INTO `user_analytics` (`analytics_id`, `page_url`, `group_id`, `last_visit`, `total_visits`, `user_name`, `user_id`) VALUES
(216, 'groups.php', 0, '2017-06-02 22:30:04', 48, 'vasquezd', 0),
(217, 'group_posts.php', 220, '2017-05-18 22:25:35', 1, 'vasquezd', 0),
(218, 'group_files.php', 220, '2017-05-19 23:54:10', 3, 'vasquezd', 0),
(219, 'groups.php', 0, '2017-05-25 20:21:11', 6, 'matt', 0),
(220, 'group_discussion.php', 220, '2017-05-18 22:55:14', 8, 'matt', 0),
(221, 'group_discussion.php', 220, '2017-05-18 22:54:59', 7, 'vasquezd', 0),
(222, 'group_discussion.php', 0, '2017-05-25 20:20:58', 0, 'matt', 0),
(223, 'group_discussion.php', 0, '2017-06-04 21:14:33', 2, 'vasquezd', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `user_email`, `salt`, `password`, `last_login`, `last_logout`, `login_total`, `account_deleted`, `password_reset_key`, `password_reset_sent`, `password_reset_used`, `password_reset_status`) VALUES
(1, 'vasquezd', 'vasquezd@onid.orst.edu', 1494015793, 'c3be883dd5822f892141e642962084d6be47c2bf', '2017-06-05 20:05:08', '2017-05-28 23:19:01', 618, 0, 'A2XMVdcf3SNCMpkIJQqxbnSOfPcGIHul', '2017-05-05 20:28:32', 0, '1'),
(2, 'matt', '', 1448946249, 'de85ef10d2853b10978ac6c8e0c37c354d3b6969', '2017-05-28 23:19:04', '2017-05-28 23:19:21', 45, 0, '', '0000-00-00 00:00:00', 0, ''),
(3, 'brian', '', 1448946380, 'ace622215c315ce82bfd153b63c7faeb218a17da', '2017-05-19 00:05:25', '2017-05-19 00:06:50', 10, 0, '', '0000-00-00 00:00:00', 0, ''),
(4, 'Kristen', '', 1448946380, 'e3ae7af8145e258b854728fc9cebe6c8891ee2a5', '2016-09-04 22:04:40', '2016-09-04 22:05:52', 7, 0, '', '0000-00-00 00:00:00', 0, ''),
(5, 'Aimee', '', 1448946380, '33f916c66f61bbf37a12105c8bb3e0fc8ea75fd6', '2016-11-05 21:10:34', '2016-11-05 21:11:01', 15, 0, '', '0000-00-00 00:00:00', 0, ''),
(6, 'Becca', '', 1448946503, 'ba342a034cc175fb24a1c3d59d190da0c31f0106', '2017-05-09 22:18:54', '2017-05-09 22:22:18', 16, 0, '', '0000-00-00 00:00:00', 0, ''),
(7, 'Sarah', '', 1448946503, '378d32da508020f682a238053fec6f307e0aa30a', '2016-08-27 22:07:51', '2016-08-27 22:08:01', 1, 0, '', '0000-00-00 00:00:00', 0, ''),
(8, 'chris', '', 1448946380, '80c96f63d24bc38382aca981ed2e262c22582605', '2016-10-01 20:31:31', '2016-10-01 20:31:45', 1, 0, '', '0000-00-00 00:00:00', 0, ''),
(9, 'pop', '', 1448946503, '851b0d429828f520537e2323a1c5f1cde21eee5d', '2015-12-01 05:31:10', '2015-12-01 05:31:10', 0, 0, '', '0000-00-00 00:00:00', 0, ''),
(39, 'vasquezk', '', 1466107880, '6d7cb2a50e2fbaaa22735cc31d0a0df53e9afb30', '2017-05-09 22:17:02', '2017-05-09 22:18:00', 1, 0, '', '0000-00-00 00:00:00', 0, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

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
(54, 9, 'pop', '', '12.jpg', 'Pop', 'Vasquez', 'vasquezbas', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-01 04:57:59', '0000-00-00 00:00:00'),
(55, 39, 'vasquezk', 'kristen@onid.orst.edu', 'david.jpg', 'kristen', 'vasquez', 'vasquezk', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-06-16 20:11:20');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

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
(24, 'vasquez', 53, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
