-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2016 at 02:14 AM
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
  `comment_level` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_from` varchar(255) NOT NULL,
  `comment_to` varchar(255) NOT NULL,
  `likes` int(11) NOT NULL,
  `comment_status` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `comment_parent`, `comment_level`, `comment`, `comment_from`, `comment_to`, `likes`, `comment_status`, `updated`, `created`) VALUES
(1, 49, 0, 0, 'hello, there! ', 'vasquezd', '', 0, 1, '2016-05-18 22:27:14', '2016-05-08 23:23:05'),
(2, 49, 1, 1, 'how are you', 'matt', '', 0, 1, '2016-05-18 22:30:49', '2016-05-08 23:23:13'),
(3, 49, 2, 2, 'hi there', 'vasquezd', '', 0, 1, '2016-05-18 22:30:57', '2016-05-09 20:35:50'),
(4, 62, 2, 2, 'Ya that is a good point', 'matt', '', 0, 1, '2016-05-21 23:44:44', '2016-05-17 21:38:36'),
(12, 50, 0, 0, 'hello there', 'vasquezd', '', 0, 1, '2016-05-18 22:16:23', '2016-05-18 21:56:24'),
(13, 53, 0, 0, 'hello!', 'vasquezd', '', 0, 0, '2016-05-27 22:03:51', '2016-05-18 21:56:52'),
(14, 62, 0, 0, 'Ya I agree with that a lot\n', 'vasquezd', '', 0, 1, '2016-05-21 23:44:39', '2016-05-19 20:20:31'),
(15, 53, 0, 0, 'this is nw ', 'vasquezd', '', 0, 0, '2016-05-27 22:03:48', '2016-05-24 22:25:02'),
(16, 49, 0, 0, 'hey hows it going!', 'vasquezd', '', 0, 1, '2016-05-27 00:05:01', '2016-05-27 00:05:01'),
(17, 53, 0, 0, 'today', 'vasquezd', '', 0, 1, '2016-05-27 20:12:10', '2016-05-27 20:12:10'),
(18, 53, 0, 0, 'new today', 'vasquezd', '', 0, 0, '2016-05-27 22:03:45', '2016-05-27 20:18:14'),
(19, 53, 0, 0, 'hi', 'vasquezd', '', 0, 0, '2016-05-27 22:03:42', '2016-05-27 20:18:34'),
(20, 53, 0, 0, 'hello there', 'vasquezd', '', 0, 1, '2016-05-27 20:18:58', '2016-05-27 20:18:58'),
(21, 53, 0, 0, 'hi', 'vasquezd', '', 0, 0, '2016-05-27 22:03:39', '2016-05-27 20:20:14'),
(22, 53, 0, 0, 'hello thiis is the change', 'vasquezd', '', 0, 1, '2016-05-27 22:03:32', '2016-05-27 20:20:32'),
(23, 53, 0, 0, 'hi', 'vasquezd', '', 0, 0, '2016-05-27 22:03:19', '2016-05-27 20:20:37'),
(24, 74, 0, 0, 'this is cool!', 'matt', '', 0, 1, '2016-06-02 20:34:24', '2016-05-30 21:16:47'),
(25, 74, 0, 0, 'hi', 'vasquezd', '', 0, 1, '2016-05-30 21:52:42', '2016-05-30 21:52:42'),
(26, 73, 0, 0, 'I like this song!', 'vasquezd', '', 0, 1, '2016-06-02 20:41:28', '2016-06-02 20:41:28'),
(27, 74, 0, 0, 'hi there!', 'vasquezd', '', 0, 1, '2016-06-02 21:07:53', '2016-06-02 21:07:53'),
(28, 103, 0, 0, 'no ther is a reply!', 'vasquezd', '', 0, 1, '2016-06-10 21:45:18', '2016-06-10 21:45:18'),
(29, 64, 0, 0, 'this is a new one!~ today', 'vasquezd', '', 0, 1, '2016-06-10 21:58:57', '2016-06-10 21:58:57'),
(30, 103, 0, 0, 'hello', 'vasquezd', '', 0, 1, '2016-06-10 22:20:12', '2016-06-10 22:20:12'),
(31, 105, 0, 0, 'almost saturday!', 'vasquezd', '', 0, 1, '2016-06-10 22:22:59', '2016-06-10 22:22:59'),
(32, 105, 0, 0, 'yoyoyo', 'vasquezd', '', 0, 1, '2016-06-10 22:23:30', '2016-06-10 22:23:30'),
(33, 105, 0, 0, 'frida', 'vasquezd', '', 0, 1, '2016-06-10 22:24:11', '2016-06-10 22:24:11'),
(34, 105, 0, 0, 'hi', 'vasquezd', '', 0, 1, '2016-06-10 22:25:26', '2016-06-10 22:25:26'),
(35, 105, 0, 0, 'Ya I like this idea!', 'vasquezd', '', 0, 1, '2016-06-10 22:26:44', '2016-06-10 22:26:44'),
(36, 105, 0, 0, 'me too!', 'vasquezd', '', 0, 1, '2016-06-10 22:27:10', '2016-06-10 22:27:10'),
(37, 105, 0, 0, 'hi', 'vasquezd', '', 0, 1, '2016-06-10 22:28:22', '2016-06-10 22:28:22');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

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
(17, 26, 1, 'vasquezd', '2016-06-02 20:48:21');

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
-- Table structure for table `divvy_hashtag`
--

CREATE TABLE IF NOT EXISTS `divvy_hashtag` (
  `divvy_hashtag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `divvy_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `hashtag` varchar(255) NOT NULL,
  `hashtag_from` varchar(255) NOT NULL,
  `hashtag_to` varchar(255) NOT NULL,
  `hashtag_created_by` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `status_seen` int(11) NOT NULL,
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`divvy_hashtag_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=386 ;

--
-- Dumping data for table `divvy_hashtag`
--

INSERT INTO `divvy_hashtag` (`divvy_hashtag_id`, `divvy_id`, `list_id`, `hashtag`, `hashtag_from`, `hashtag_to`, `hashtag_created_by`, `active`, `status_seen`, `updated`, `created`) VALUES
(381, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 1, 0, '0000-00-00 00:00:00', '2016-06-23 22:14:55'),
(382, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 1, 0, '0000-00-00 00:00:00', '2016-06-23 22:14:55'),
(383, 282, 155, 'gotothis', 'matt', 'matt', 'matt', 1, 0, '0000-00-00 00:00:00', '2016-06-23 22:19:49'),
(384, 281, 155, 'tag', 'matt', 'matt', 'matt', 1, 0, '0000-00-00 00:00:00', '2016-06-23 22:20:53'),
(385, 281, 155, 'tag', 'Vasquezd', 'Vasquezd', 'Vasquezd', 1, 0, '0000-00-00 00:00:00', '2016-06-24 20:03:10');

-- --------------------------------------------------------

--
-- Table structure for table `divvy_post`
--

CREATE TABLE IF NOT EXISTS `divvy_post` (
  `divvy_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `divvy_position` int(11) NOT NULL,
  `divvy_from` varchar(255) NOT NULL,
  `divvy_to` varchar(2083) NOT NULL,
  `divvy_caption` text NOT NULL,
  `divvy_deadline` timestamp NOT NULL,
  `divvy_progress` int(11) NOT NULL,
  `divvy_priority` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `divvy_status` int(11) NOT NULL,
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`divvy_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=290 ;

--
-- Dumping data for table `divvy_post`
--

INSERT INTO `divvy_post` (`divvy_id`, `parent`, `list_id`, `divvy_position`, `divvy_from`, `divvy_to`, `divvy_caption`, `divvy_deadline`, `divvy_progress`, `divvy_priority`, `image_url`, `file_name`, `unique_id`, `divvy_status`, `updated`, `created`) VALUES
(280, 0, 155, 2, 'vasquezd', 'vasquezd', 'hi @vasquezd', '2016-06-23 22:02:57', 0, 0, '', '', '', 1, '2016-06-23 22:07:20', '2016-06-23 22:02:57'),
(281, 0, 155, 3, 'vasquezd', 'vasquezd', 'this is newhello there#tag #tag', '0000-00-00 00:00:00', 0, 0, '', '', 'e1b92aa8ed1e1be8206ca8e54bc903b4', 1, '2016-06-23 22:20:51', '2016-06-23 22:03:05'),
(282, 0, 155, 0, 'vasquezd', 'vasquezd', 'hello david  @me #gotothis', '0000-00-00 00:00:00', 0, 0, '', '', '6828ed3aed7291bf7fe6ecb048d89d6d', 1, '2016-06-23 22:14:55', '2016-06-23 22:07:20'),
(283, 0, 155, 4, 'vasquezd', 'vasquezd', 'this is to no one @vasquezd', '0000-00-00 00:00:00', 0, 0, '', '', 'a763a83e194954d6c431bd1f200e81fc', 1, '2016-06-23 22:20:32', '2016-06-23 22:13:35'),
(284, 0, 155, 9, 'matt', 'matt', '@vasquezd do this stuff and @matt', '0000-00-00 00:00:00', 0, 0, '', '', '0e1bf8ecfb6cb0499ae3377652484d0b', 1, '2016-06-23 22:21:06', '2016-06-23 22:19:55'),
(285, 0, 155, 10, 'matt', 'matt', 'this is to me', '0000-00-00 00:00:00', 0, 0, '', '', '06e533bcab19fa578297a36295bca866', 1, '2016-06-23 22:21:06', '2016-06-23 22:20:02'),
(286, 0, 155, 7, 'matt', 'matt', 'this is to @vasquezd and @matt which is me', '0000-00-00 00:00:00', 0, 0, '', '', '1594e042bacac78feb7ddcbdf3a80f35', 1, '2016-06-23 22:21:06', '2016-06-23 22:20:36'),
(287, 0, 155, 8, 'matt', 'matt', 'this is to no one', '0000-00-00 00:00:00', 0, 0, '', '', 'da92cbe814b57346b65bdb1e7d64eba7', 1, '2016-06-23 22:21:06', '2016-06-23 22:20:43'),
(288, 0, 155, 6, 'matt', 'matt', 'now we go', '0000-00-00 00:00:00', 0, 0, '', '', '3773f943ea753137da9b5146cf08a8c3', 1, '2016-06-23 22:21:59', '2016-06-23 22:21:01'),
(289, 0, 155, 5, 'matt', 'matt', 'hloo', '0000-00-00 00:00:00', 0, 0, '', '', '052b1863e46f8412db6ef307fb255668', 1, '2016-06-23 22:21:07', '2016-06-23 22:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `divvy_users`
--

CREATE TABLE IF NOT EXISTS `divvy_users` (
  `divvy_users_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `divvy_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `divvy_from` varchar(255) NOT NULL,
  `divvy_to` varchar(2083) NOT NULL,
  `divvy_to_user_status` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `status_seen` int(11) NOT NULL,
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`divvy_users_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=307 ;

--
-- Dumping data for table `divvy_users`
--

INSERT INTO `divvy_users` (`divvy_users_id`, `divvy_id`, `list_id`, `divvy_from`, `divvy_to`, `divvy_to_user_status`, `active`, `status_seen`, `updated`, `created`) VALUES
(288, 280, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-06-23 22:04:55', '2016-06-23 22:04:55'),
(289, 281, 155, 'vasquezd', 'v', 0, 0, 0, '2016-06-23 22:13:42', '2016-06-23 22:13:33'),
(290, 282, 155, 'vasquezd', 'me', 0, 1, 0, '2016-06-23 22:13:33', '2016-06-23 22:13:33'),
(291, 283, 155, 'vasquezd', 'v', 0, 0, 0, '2016-06-23 22:13:42', '2016-06-23 22:13:42'),
(292, 281, 155, 'vasquezd', 'v', 0, 0, 0, '2016-06-23 22:13:54', '2016-06-23 22:13:42'),
(293, 281, 155, 'vasquezd', 'vasquezd', 0, 0, 0, '2016-06-23 22:19:49', '2016-06-23 22:14:38'),
(294, 283, 155, 'vasquezd', 'vasquezd', 0, 0, 0, '2016-06-23 22:19:49', '2016-06-23 22:14:38'),
(295, 281, 155, 'matt', 'matt', 0, 0, 0, '2016-06-24 20:03:10', '2016-06-23 22:19:49'),
(296, 283, 155, 'matt', 'matt', 0, 0, 0, '2016-06-23 22:20:34', '2016-06-23 22:19:49'),
(297, 283, 155, 'matt', 'vasquezd', 0, 1, 0, '2016-06-23 22:20:34', '2016-06-23 22:20:34'),
(298, 284, 155, 'matt', 'vasquezd', 0, 1, 0, '2016-06-23 22:21:55', '2016-06-23 22:21:55'),
(299, 284, 155, 'matt', 'matt', 0, 1, 0, '2016-06-23 22:21:55', '2016-06-23 22:21:55'),
(300, 285, 155, 'matt', 'matt', 0, 1, 0, '2016-06-23 22:21:55', '2016-06-23 22:21:55'),
(301, 286, 155, 'matt', 'vasquezd', 0, 1, 0, '2016-06-23 22:21:55', '2016-06-23 22:21:55'),
(302, 286, 155, 'matt', 'matt', 0, 1, 0, '2016-06-23 22:21:55', '2016-06-23 22:21:55'),
(303, 287, 155, 'matt', 'matt', 0, 1, 0, '2016-06-23 22:21:55', '2016-06-23 22:21:55'),
(304, 288, 155, 'matt', 'matt', 0, 1, 0, '2016-06-23 22:21:55', '2016-06-23 22:21:55'),
(305, 289, 155, 'matt', 'matt', 0, 1, 0, '2016-06-23 22:21:55', '2016-06-23 22:21:55'),
(306, 281, 155, 'Vasquezd', 'Vasquezd', 0, 1, 0, '2016-06-24 20:03:10', '2016-06-24 20:03:10');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=464 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `group_id`, `post_id`, `parent`, `is_folder`, `folder_name`, `file_name`, `file_type`, `file_name_server`, `file_path_server`, `file_image`, `file_path`, `user_id`, `user_name`, `file_status`, `file_seen`, `recycle_status`, `unique_id`, `file_created`, `file_last_modified`) VALUES
(459, 0, 0, 0, 1, 'Folder ', 'folder.png', '', 'folder.png', 'folder.png', 'folder.png', '---------0-', 1, 'vasquezd', 1, 0, 0, '1466381789810', '2016-06-20 00:16:29', '0000-00-00 00:00:00'),
(460, 0, 0, 0, 0, 'file', 'Chrysanthemum.jpg', 'jpg', '1466381913Chrysanthemum.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1466381913Chrysanthemum.jpg', '---------0-', 1, 'vasquezd', 1, 0, 0, '', '2016-06-20 00:18:33', '2016-06-20 00:18:33'),
(461, 106, 0, 0, 1, 'folder', 'folder.png', '', 'folder.png', 'folder.png', 'folder.png', '---------0-', 1, 'vasquezd', 1, 0, 0, '1466382689341', '2016-06-20 00:31:29', '0000-00-00 00:00:00'),
(462, 114, 0, 0, 0, 'file', 'Koala.jpg', 'jpg', '1466382712Koala.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1466382712Koala.jpg', '---------0-', 1, 'vasquezd', 1, 0, 0, '', '2016-06-20 00:31:52', '2016-06-20 00:31:52'),
(463, 0, 127, 0, 0, '', 'Koala.jpg', '', '1466382868Koala.jpg', '', '', '', 0, 'vasquezd1061466382852', 1, 0, 0, '', '2016-06-20 00:34:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE IF NOT EXISTS `folders` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `square_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`file_id`, `square_id`, `group_id`, `user_id`, `user_name`, `folder_name_long`, `folder_name_system`, `image_name`, `folder_root`, `folder_path`, `folder_created`, `folder_last_modified`, `folder_location`, `folder_name`) VALUES
(1, 0, 0, 0, 'vasquezk', '', '', '', '', '', '2016-06-16 20:11:20', '0000-00-00 00:00:00', '', 'vasquezk'),
(2, 0, 0, 0, 'newtest', '', '', '', '', '', '2016-06-18 23:27:36', '0000-00-00 00:00:00', '', 'newtest');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=153 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friends_id`, `user_name`, `user_id`, `friend_user_name`, `friend_id`, `friend_key`, `created`) VALUES
(143, 'vasquezd ', 1, 'brian', 3, 0, '2016-04-28 22:49:13'),
(144, 'vasquezd', 1, 'matt', 2, 0, '2016-04-28 22:49:31'),
(145, 'Kristen', 4, 'matt', 2, 0, '2016-04-28 22:32:22'),
(146, 'Kristen', 4, 'vasquezd', 1, 0, '2016-04-28 23:04:09'),
(147, 'matt', 2, 'Kristen', 4, 0, '2016-04-28 22:32:22'),
(148, 'vasquezd', 1, 'Kristen', 4, 0, '2016-04-28 23:04:30'),
(149, 'brian', 3, 'vasquezd', 1, 0, '2016-04-28 22:49:13'),
(150, 'matt', 2, 'vasquezd', 1, 0, '2016-05-02 21:04:40'),
(151, 'vasquezd', 1, 'newtest', 40, 0, '2016-06-18 23:31:54'),
(152, 'newtest', 40, 'vasquezd', 1, 0, '2016-06-18 23:31:54');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=116 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_key`, `created_by`, `group_type`, `group_name`, `group_image`, `group_users`, `group_folders`, `group_messages`, `updated`, `created`) VALUES
(106, '0.16277800 1462051258572521ba27bda8.41905585', 'vasquezd', '', 'Our Main Music Group, David Matt Brian and Also anyone else who wants in!', '', 106, 106, 106, '0000-00-00 00:00:00', '2016-04-30 21:20:58'),
(107, '0.61827700 1464996087575210f796f251.00746867', 'vasquezd', '', 'New group', '', 107, 107, 107, '0000-00-00 00:00:00', '2016-06-03 23:21:27'),
(108, '0.46597800 14649961125752111071c3a3.21693093', 'vasquezd', '', 'vasquezd''s Group', '', 108, 108, 108, '0000-00-00 00:00:00', '2016-06-03 23:21:52'),
(109, '0.03707100 146594747557609553090cf3.21608341', 'vasquezd', '', 'vasquezd''s Group', '', 109, 109, 109, '0000-00-00 00:00:00', '2016-06-14 23:37:55'),
(110, '0.21196400 146637125857670cba33bfc8.82372360', 'vasquezd', '', 'vasquezd''s Group', '', 110, 110, 110, '0000-00-00 00:00:00', '2016-06-19 21:20:58'),
(111, '0.71294000 146637473257671a4cae0ec0.88681603', 'vasquezd', '', 'vasquezd''s Group', '', 111, 111, 111, '0000-00-00 00:00:00', '2016-06-19 22:18:52'),
(112, '0.46651000 146637520857671c2871e4e5.03459316', 'vasquezd', '', 'vasquezd''s Group', '', 112, 112, 112, '0000-00-00 00:00:00', '2016-06-19 22:26:48'),
(113, '0.87744200 1466378437576728c5d63827.78791728', 'vasquezd', '', 'vasquezd''s Group', '', 113, 113, 113, '0000-00-00 00:00:00', '2016-06-19 23:20:37'),
(114, '0.74872800 146637860057672968b6cb83.99111302', 'vasquezd', '', 'vasquezd''s Group', '', 114, 114, 114, '0000-00-00 00:00:00', '2016-06-19 23:23:20'),
(115, '0.78372900 146637880057672a30bf5712.16404222', 'vasquezd', '', 'vasquezd''s Group', '', 115, 115, 115, '0000-00-00 00:00:00', '2016-06-19 23:26:40');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=279 ;

--
-- Dumping data for table `group_users`
--

INSERT INTO `group_users` (`primary_id`, `group_id`, `user_name`, `active_member`, `created`, `updated`) VALUES
(240, 106, 'vasquezd', 1, '2016-04-30 21:20:58', '0000-00-00 00:00:00'),
(241, 106, 'brian', 1, '2016-04-30 21:20:58', '0000-00-00 00:00:00'),
(242, 106, 'Kristen', 0, '2016-04-30 21:20:58', '0000-00-00 00:00:00'),
(243, 106, 'matt', 0, '2016-06-03 22:35:30', '0000-00-00 00:00:00'),
(244, 107, 'vasquezd', 1, '2016-06-03 23:21:27', '0000-00-00 00:00:00'),
(245, 107, 'brian', 1, '2016-06-03 23:21:27', '0000-00-00 00:00:00'),
(246, 107, 'matt', 1, '2016-06-03 23:21:27', '0000-00-00 00:00:00'),
(248, 108, 'matt', 1, '2016-06-03 23:21:52', '0000-00-00 00:00:00'),
(250, 109, 'brian', 0, '2016-06-14 23:37:55', '0000-00-00 00:00:00'),
(251, 109, 'matt', 0, '2016-06-14 23:37:55', '0000-00-00 00:00:00'),
(252, 109, 'Kristen', 0, '2016-06-14 23:37:55', '0000-00-00 00:00:00'),
(254, 110, 'brian', 0, '2016-06-19 21:20:58', '0000-00-00 00:00:00'),
(255, 110, 'matt', 0, '2016-06-19 21:20:58', '0000-00-00 00:00:00'),
(256, 110, 'Kristen', 0, '2016-06-19 21:20:58', '0000-00-00 00:00:00'),
(258, 111, 'brian', 0, '2016-06-19 22:18:52', '0000-00-00 00:00:00'),
(259, 111, 'matt', 0, '2016-06-19 22:18:52', '0000-00-00 00:00:00'),
(260, 111, 'Kristen', 0, '2016-06-19 22:18:52', '0000-00-00 00:00:00'),
(262, 112, 'brian', 0, '2016-06-19 22:26:48', '0000-00-00 00:00:00'),
(263, 112, 'newtest', 0, '2016-06-19 23:16:06', '0000-00-00 00:00:00'),
(264, 112, 'Kristen', 0, '2016-06-19 23:20:26', '0000-00-00 00:00:00'),
(266, 113, 'brian', 0, '2016-06-19 23:20:37', '0000-00-00 00:00:00'),
(267, 113, 'matt', 0, '2016-06-19 23:21:10', '0000-00-00 00:00:00'),
(268, 113, 'Kristen', 0, '2016-06-19 23:21:57', '0000-00-00 00:00:00'),
(269, 113, 'newtest', 0, '2016-06-19 23:22:33', '0000-00-00 00:00:00'),
(270, 107, 'Kristen', 1, '2016-06-19 23:23:02', '0000-00-00 00:00:00'),
(271, 107, 'newtest', 1, '2016-06-19 23:23:09', '0000-00-00 00:00:00'),
(272, 114, 'vasquezd', 1, '2016-06-19 23:23:20', '0000-00-00 00:00:00'),
(273, 114, 'brian', 0, '2016-06-19 23:23:20', '0000-00-00 00:00:00'),
(274, 115, 'vasquezd', 1, '2016-06-19 23:26:40', '0000-00-00 00:00:00'),
(275, 115, 'brian', 0, '2016-06-19 23:26:40', '0000-00-00 00:00:00'),
(276, 115, 'Kristen', 0, '2016-06-19 23:26:40', '0000-00-00 00:00:00'),
(277, 114, 'matt', 0, '2016-06-24 22:12:59', '0000-00-00 00:00:00'),
(278, 114, 'newtest', 0, '2016-06-24 22:12:59', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=229 ;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`link_id`, `group_id`, `folder_name`, `parent`, `is_folder`, `link_url`, `link_title`, `user_name`, `link_from`, `link_image`, `link_favicon`, `link_type`, `caption`, `tag_id`, `likes`, `unique_id`, `link_status`, `recycle_status`, `square_id`, `created`, `updated`) VALUES
(203, 0, 'hi', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2016-06-04 22:32:14', '0000-00-00 00:00:00'),
(204, 0, 'Music', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2016-06-04 22:32:31', '0000-00-00 00:00:00'),
(205, 0, 'hi', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 0, 1, 0, '2016-06-11 23:55:35', '2016-06-11 23:55:35'),
(206, 106, 'hi', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 0, 1, 0, '2016-06-11 23:55:32', '2016-06-11 23:55:32'),
(207, 106, 'new', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 0, 1, 0, '2016-06-11 23:55:30', '2016-06-11 23:55:30'),
(208, 106, 'http://getuikit.com/', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 0, 1, 0, '2016-06-11 23:55:37', '2016-06-11 23:55:37'),
(209, 106, '', 0, 0, 'http://getuikit.com/', 'UIkit', 'vasquezd', 'vasquezd', 'getuikit.png', 'getuikit.png', '', '', 0, 0, '', 0, 1, 0, '2016-06-11 23:55:26', '2016-06-11 23:55:26'),
(210, 106, '', 205, 0, 'https://www.yahoo.com/', 'Yahoo', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', 1, 0, 0, '2016-06-06 21:12:16', '0000-00-00 00:00:00'),
(211, 106, '', 0, 0, 'https://www.yahoo.com/', 'Yahoo Two', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', 0, 1, 0, '2016-06-11 23:55:21', '2016-06-11 23:55:21'),
(212, 106, '', 204, 0, 'https://www.youtube.com/watch?v=8OtMq2s0TyM', 'Will Ferrell, Exotic Animal Expert - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', '', '', 0, 0, '', 1, 0, 0, '2016-06-11 23:55:41', '0000-00-00 00:00:00'),
(213, 107, 'new', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 0, 1, 0, '2016-06-11 23:55:39', '2016-06-11 23:55:39'),
(214, 107, '', 206, 0, 'https://www.yahoo.com/', 'Yahoo', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', 1, 0, 0, '2016-06-06 21:12:12', '0000-00-00 00:00:00'),
(215, 0, '', 204, 0, 'https://www.youtube.com/watch?v=h2XLLXwkLAc', 'Helios - Every Passing Hour - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', '', '', 0, 0, '', 1, 0, 0, '2016-06-12 00:03:23', '0000-00-00 00:00:00'),
(216, 0, '', 0, 0, 'http://megatruh.deviantart.com/art/chimerical-554269169', 'none.jpg', 'vasquezd', 'vasquezd', 'deviantart.png', 'deviantart.png', '', '', 0, 0, '', 0, 1, 0, '2016-06-11 23:55:24', '2016-06-11 23:55:24'),
(217, 0, '', 203, 0, 'https://www.youtube.com/watch?v=-ES7-GATxDA', 'Koda - Angel - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', '', '', 0, 0, '', 1, 0, 0, '2016-06-12 00:07:37', '0000-00-00 00:00:00'),
(218, 0, '', 204, 0, 'https://www.youtube.com/watch?v=Rr5cJOjoJW8', 'EMBRZ - Lights (feat. PennyBirdRabbit) - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', '', '', 0, 0, '', 1, 0, 0, '2016-06-12 00:07:34', '0000-00-00 00:00:00'),
(219, 0, '', 204, 0, 'https://www.youtube.com/watch?v=_GdOhROdh9c', 'Lambert - Stay In The Dark - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', '', '', 0, 0, '', 1, 0, 0, '2016-06-12 00:07:43', '0000-00-00 00:00:00'),
(220, 0, '', 204, 0, 'https://www.youtube.com/watch?v=MisLXxaagnM', 'Izzard &amp; Blankts - Threads - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', '', '', 0, 0, '', 1, 0, 0, '2016-06-12 00:07:58', '0000-00-00 00:00:00'),
(221, 0, '', 203, 0, 'http://www.youtube-mp3.org/', 'YouTube to mp3 Converter', 'vasquezd', 'vasquezd', 'youtube-mp3.png', 'youtube-mp3.png', '', '', 0, 0, '', 1, 0, 0, '2016-06-12 00:10:06', '0000-00-00 00:00:00'),
(222, 0, '', 203, 0, 'http://www.youtube-mp3.org/', 'YouTube to mp3 Converter', 'vasquezd', 'vasquezd', 'youtube-mp3.png', 'youtube-mp3.png', '', '', 0, 0, '', 1, 0, 0, '2016-06-12 00:12:28', '0000-00-00 00:00:00'),
(223, 0, 'wall_posts', 0, 0, 'https://www.yahoo.com/news/game-thrones-theory-correctly-addresses-202225548.html', 'This â€œGame of Thronesâ€ theory correctly addresses the weird plot hole about Aryaâ€™s storyline', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-06-15 22:14:01', '0000-00-00 00:00:00'),
(224, 106, '', 226, 0, 'https://www.yahoo.com/', 'Yahoo', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', 1, 0, 0, '2016-06-20 00:02:23', '0000-00-00 00:00:00'),
(225, 106, '', 0, 0, 'https://www.yahoo.com/', 'Yahoo', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', 1, 0, 0, '2016-06-20 00:02:08', '0000-00-00 00:00:00'),
(226, 106, 'yahoo', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2016-06-20 00:02:18', '0000-00-00 00:00:00'),
(227, 107, 'new folder level one ', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2016-06-20 00:06:21', '0000-00-00 00:00:00'),
(228, 114, 'My folders ', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2016-06-20 00:32:02', '0000-00-00 00:00:00');

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
  `active_status` int(11) NOT NULL,
  `recycle_status` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`list_primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=158 ;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`list_primary_id`, `list_id`, `user_name`, `user_id`, `user_privilege`, `created_by`, `shared_with`, `list_type`, `list_name`, `group_id`, `unique_key`, `active_status`, `recycle_status`, `updated`, `created`) VALUES
(151, 151, 'vasquezd', 1, 'own', 'matt', 'vasquezd', 'wishlist', 'wishlist', 0, '2fd9bfca4bd360bd1b6037b30a664a0d', 1, 0, '2016-05-02 23:46:33', '2016-05-02 23:40:19'),
(152, 151, 'brian', 3, 'view', 'vasquezd', 'brian', 'wishlist', 'wishlist', 0, '', 0, 0, '2016-05-02 23:41:18', '0000-00-00 00:00:00'),
(153, 151, 'matt', 2, 'view', 'vasquezd', 'matt', 'wishlist', 'wishlist', 0, '', 0, 0, '2016-05-02 23:41:33', '0000-00-00 00:00:00'),
(154, 154, 'vasquezd', 1, 'own', 'vasquezd', '', 'lists', 'list', 0, '95842852b93f439678a71f874e8df8f8', 1, 0, '2016-05-05 20:34:28', '2016-05-05 20:34:28'),
(155, 155, 'vasquezd', 1, 'own', 'vasquezd', '', 'divvy', '#Zombie Movie Three', 0, '95842852b93f439678a71f874e8df8f8', 1, 0, '2016-05-20 22:29:36', '2016-05-05 20:34:28'),
(156, 156, 'vasquezd', 1, 'own', 'vasquezd', '', 'divvy', '#Design updates to Divvy', 0, '95842852b93f439678a71f874e8df8f8', 1, 0, '2016-05-20 22:48:40', '2016-05-05 20:34:28'),
(157, 157, 'vasquezd', 1, 'own', 'vasquezd', '', 'divvy', '#Office Space', 0, '95842852b93f439678a71f874e8df8f8', 1, 0, '2016-05-20 22:48:43', '2016-05-05 20:34:28');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `list_users`
--

INSERT INTO `list_users` (`primary_id`, `list_id`, `user_name`, `user_privilege`, `active_member`, `created`, `updated`) VALUES
(80, 151, 'vasquezd', 'own', 1, '2016-05-02 23:40:19', '0000-00-00 00:00:00'),
(81, 151, 'brian', 'view', 0, '2016-05-02 23:41:18', '0000-00-00 00:00:00'),
(82, 151, 'matt', 'view', 0, '2016-05-02 23:41:33', '0000-00-00 00:00:00'),
(83, 154, 'vasquezd', 'own', 1, '2016-05-05 20:34:28', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=704 ;

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
  `request_type` varchar(255) NOT NULL,
  `request_type_name` varchar(255) NOT NULL,
  `sent_by` varchar(255) NOT NULL,
  `sent_to` varchar(255) NOT NULL,
  `request_key` varchar(255) NOT NULL,
  `sent_to_email` varchar(255) NOT NULL,
  `square_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL,
  PRIMARY KEY (`primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=240 ;

--
-- Dumping data for table `pending_requests`
--

INSERT INTO `pending_requests` (`primary_id`, `request_type`, `request_type_name`, `sent_by`, `sent_to`, `request_key`, `sent_to_email`, `square_id`, `group_id`, `list_id`, `status`, `updated`, `created`) VALUES
(114, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezb', '', '', 88, 88, 0, 1, '2016-04-11 21:48:19', '0000-00-00 00:00:00'),
(115, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezm', '', '', 88, 88, 0, 0, '2016-04-11 21:48:19', '0000-00-00 00:00:00'),
(116, 'new_square', 'Wants to add you to a square', 'vasquezd', 'hellothere', '', '', 0, 89, 0, 0, '2016-04-11 21:51:37', '0000-00-00 00:00:00'),
(117, 'new_square', 'Wants to add you to a square', 'vasquezd', 'baggins2', '', '', 0, 88, 0, 1, '2016-04-11 21:53:08', '0000-00-00 00:00:00'),
(118, 'new_square', 'Wants to add you to a square', 'vasquezd', 'frodobaggins', '', '', 0, 88, 0, 1, '2016-04-11 21:53:08', '0000-00-00 00:00:00'),
(119, 'new_square', 'Wants to add you to a square', 'vasquezd', 'testone', '', '', 0, 88, 0, 1, '2016-04-11 21:53:08', '0000-00-00 00:00:00'),
(120, 'new_square', 'Wants to add you to a square', 'vasquezd', 'vasquezj', '', '', 0, 88, 0, 1, '2016-04-11 21:53:08', '0000-00-00 00:00:00'),
(121, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezb', '', '', 90, 90, 0, 1, '2016-04-11 22:15:25', '0000-00-00 00:00:00'),
(122, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezm', '', '', 90, 90, 0, 1, '2016-04-11 22:15:25', '0000-00-00 00:00:00'),
(123, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezb', '', '', 92, 92, 0, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(124, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezm', '', '', 92, 92, 0, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(125, 'new_square', 'Wants to start a new square', 'vasquezd', 'baggins2', '', '', 92, 92, 0, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(126, 'new_square', 'Wants to start a new square', 'vasquezd', 'frodobaggins', '', '', 92, 92, 0, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(127, 'new_square', 'Wants to start a new square', 'vasquezd', 'testone', '', '', 92, 92, 0, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(128, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezj', '', '', 92, 92, 0, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(129, 'new_square', 'Wants to start a new square', 'vasquezd', 'hellothere2', '', '', 92, 92, 0, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(130, 'new_square', 'Wants to start a new square', 'vasquezd', 'hellothere4', '', '', 92, 92, 0, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(131, 'new_square', 'Wants to start a new square', 'vasquezd', 'hellohello', '', '', 92, 92, 0, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(132, 'new_square', 'Wants to start a new square', 'vasquezd', 'hellothere', '', '', 92, 92, 0, 1, '2016-04-11 23:32:03', '0000-00-00 00:00:00'),
(133, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezb', '', '', 93, 93, 0, 1, '2016-04-13 21:36:16', '0000-00-00 00:00:00'),
(134, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezm', '', '', 93, 93, 0, 1, '2016-04-13 21:36:16', '0000-00-00 00:00:00'),
(135, 'new_square', 'Wants to start a new square', 'vasquezd', 'vasquezb', '', '', 94, 94, 0, 1, '2016-04-21 20:55:47', '0000-00-00 00:00:00'),
(136, 'new_list', 'Wants to add you to a list', 'vasquezd', 'vasquezb', '', '', 0, 0, 103, 1, '2016-04-22 23:31:38', '0000-00-00 00:00:00'),
(137, 'new_list', 'Wants to add you to a list', 'vasquezd', 'vasquezm', '', '', 0, 0, 103, 1, '2016-04-22 23:31:38', '0000-00-00 00:00:00'),
(138, 'new_list', 'Wants to add you to a list', 'vasquezd', 'baggins2', '', '', 0, 0, 103, 1, '2016-04-22 23:31:38', '0000-00-00 00:00:00'),
(139, 'new_list', 'Wants to add you to a list', 'vasquezd', 'frodobaggins', '', '', 0, 0, 103, 1, '2016-04-22 23:31:38', '0000-00-00 00:00:00'),
(140, 'new_list', 'Wants to add you to a list', 'vasquezd', 'testone', '', '', 0, 0, 103, 1, '2016-04-22 23:31:38', '0000-00-00 00:00:00'),
(141, 'new_list', 'Wants to add you to a list', 'vasquezd', 'vasquezb', '', '', 0, 0, 102, 1, '2016-04-22 23:36:00', '0000-00-00 00:00:00'),
(142, 'new_list', 'Wants to add you to a list', 'vasquezd', 'vasquezm', '', '', 0, 0, 102, 1, '2016-04-22 23:36:00', '0000-00-00 00:00:00'),
(143, 'new_list', 'Wants to add you to a list', 'vasquezd', 'baggins2', '', '', 0, 0, 102, 1, '2016-04-22 23:36:00', '0000-00-00 00:00:00'),
(144, 'new_list', 'Wants to add you to a list', 'vasquezd', 'frodobaggins', '', '', 0, 0, 102, 1, '2016-04-22 23:36:00', '0000-00-00 00:00:00'),
(145, 'new_list', 'Wants to add you to a list', 'vasquezd', 'testone', '', '', 0, 0, 102, 1, '2016-04-22 23:36:00', '0000-00-00 00:00:00'),
(146, 'new_list', 'Wants to add you to a list', 'vasquezd', 'vasquezj', '', '', 0, 0, 102, 1, '2016-04-22 23:36:00', '0000-00-00 00:00:00'),
(147, 'new_list', 'Wants to add you to a list', 'vasquezm', 'vasquezd', '', '', 0, 0, 102, 0, '2016-04-22 23:36:00', '0000-00-00 00:00:00'),
(148, 'new_list', 'Wants to add you to a list', 'vasquezm', 'vasquezd', '', '', 0, 0, 1, 0, '2016-04-22 23:51:16', '0000-00-00 00:00:00'),
(149, 'new_list', 'Wants to add you to a list', 'vasquezm', 'vasquezk', '', '', 0, 0, 116, 1, '2016-04-22 23:52:41', '0000-00-00 00:00:00'),
(150, 'new_list', 'Wants to add you to a list', 'vasquezm', 'vasquezd', '', '', 0, 0, 116, 0, '2016-04-22 23:52:41', '0000-00-00 00:00:00'),
(151, 'new_list', 'Wants to add you to a list', 'vasquezm', 'vasquezd', '', '', 0, 0, 117, 0, '2016-04-22 23:53:57', '0000-00-00 00:00:00'),
(152, 'new_list', 'Wants to add you to a list', 'vasquezm', 'vasquezk', '', '', 0, 0, 118, 1, '2016-04-22 23:54:03', '0000-00-00 00:00:00'),
(153, 'new_list', 'Wants to add you to a list', 'vasquezm', 'vasquezd', '', '', 0, 0, 118, 0, '2016-04-22 23:54:03', '0000-00-00 00:00:00'),
(154, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 95, 95, 0, 1, '2016-04-30 21:17:44', '0000-00-00 00:00:00'),
(155, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 95, 95, 0, 1, '2016-04-30 21:17:44', '0000-00-00 00:00:00'),
(156, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 95, 95, 0, 1, '2016-04-30 21:17:44', '0000-00-00 00:00:00'),
(157, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 96, 96, 0, 1, '2016-04-30 21:17:52', '0000-00-00 00:00:00'),
(158, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 96, 96, 0, 1, '2016-04-30 21:17:52', '0000-00-00 00:00:00'),
(159, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 96, 96, 0, 1, '2016-04-30 21:17:52', '0000-00-00 00:00:00'),
(160, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 97, 97, 0, 1, '2016-04-30 21:17:55', '0000-00-00 00:00:00'),
(161, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 97, 97, 0, 1, '2016-04-30 21:17:55', '0000-00-00 00:00:00'),
(162, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 97, 97, 0, 1, '2016-04-30 21:17:55', '0000-00-00 00:00:00'),
(163, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 98, 98, 0, 1, '2016-04-30 21:17:57', '0000-00-00 00:00:00'),
(164, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 98, 98, 0, 1, '2016-04-30 21:17:57', '0000-00-00 00:00:00'),
(165, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 98, 98, 0, 1, '2016-04-30 21:17:57', '0000-00-00 00:00:00'),
(166, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 99, 99, 0, 1, '2016-04-30 21:17:59', '0000-00-00 00:00:00'),
(167, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 99, 99, 0, 1, '2016-04-30 21:17:59', '0000-00-00 00:00:00'),
(168, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 99, 99, 0, 1, '2016-04-30 21:17:59', '0000-00-00 00:00:00'),
(169, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 100, 100, 0, 1, '2016-04-30 21:18:46', '0000-00-00 00:00:00'),
(170, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 100, 100, 0, 1, '2016-04-30 21:18:46', '0000-00-00 00:00:00'),
(171, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 100, 100, 0, 1, '2016-04-30 21:18:46', '0000-00-00 00:00:00'),
(172, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 101, 101, 0, 1, '2016-04-30 21:18:55', '0000-00-00 00:00:00'),
(173, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 101, 101, 0, 1, '2016-04-30 21:18:55', '0000-00-00 00:00:00'),
(174, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 101, 101, 0, 1, '2016-04-30 21:18:55', '0000-00-00 00:00:00'),
(175, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 102, 102, 0, 1, '2016-04-30 21:19:10', '0000-00-00 00:00:00'),
(176, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 102, 102, 0, 1, '2016-04-30 21:19:10', '0000-00-00 00:00:00'),
(177, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 102, 102, 0, 1, '2016-04-30 21:19:10', '0000-00-00 00:00:00'),
(178, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 103, 103, 0, 1, '2016-04-30 21:19:11', '0000-00-00 00:00:00'),
(179, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 103, 103, 0, 1, '2016-04-30 21:19:11', '0000-00-00 00:00:00'),
(180, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 103, 103, 0, 1, '2016-04-30 21:19:11', '0000-00-00 00:00:00'),
(181, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 104, 104, 0, 1, '2016-04-30 21:19:18', '0000-00-00 00:00:00'),
(182, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 105, 105, 0, 1, '2016-04-30 21:20:27', '0000-00-00 00:00:00'),
(183, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 105, 105, 0, 1, '2016-04-30 21:20:27', '0000-00-00 00:00:00'),
(184, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 106, 106, 0, 1, '2016-04-30 21:20:58', '0000-00-00 00:00:00'),
(185, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 106, 106, 0, 1, '2016-04-30 21:20:58', '0000-00-00 00:00:00'),
(186, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 122, 1, '2016-05-02 22:27:15', '0000-00-00 00:00:00'),
(187, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 122, 1, '2016-05-02 22:27:24', '0000-00-00 00:00:00'),
(188, 'new_list', 'Wants to add you to a list', 'vasquezd', 'Kristen', '', '', 0, 0, 122, 1, '2016-05-02 22:27:24', '0000-00-00 00:00:00'),
(189, 'new_list', 'Wants to add you to a list', 'vasquezd', 'Kristen', '', '', 0, 0, 126, 1, '2016-05-02 22:29:09', '0000-00-00 00:00:00'),
(190, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 126, 1, '2016-05-02 22:38:34', '0000-00-00 00:00:00'),
(191, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 131, 1, '2016-05-02 22:57:43', '0000-00-00 00:00:00'),
(192, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 131, 1, '2016-05-02 22:58:13', '0000-00-00 00:00:00'),
(193, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 131, 1, '2016-05-02 22:59:27', '0000-00-00 00:00:00'),
(194, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 132, 1, '2016-05-02 22:59:52', '0000-00-00 00:00:00'),
(195, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 132, 1, '2016-05-02 23:04:07', '0000-00-00 00:00:00'),
(196, 'new_list', 'Wants to add you to a list', 'vasquezd', 'Kristen', '', '', 0, 0, 132, 1, '2016-05-02 23:05:24', '0000-00-00 00:00:00'),
(197, 'new_list', 'Wants to add you to a list', 'vasquezd', 'Kristen', '', '', 0, 0, 132, 1, '2016-05-02 23:08:14', '0000-00-00 00:00:00'),
(198, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 136, 1, '2016-05-02 23:12:27', '0000-00-00 00:00:00'),
(199, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 136, 1, '2016-05-02 23:12:27', '0000-00-00 00:00:00'),
(200, 'new_list', 'Wants to add you to a list', 'vasquezd', 'Kristen', '', '', 0, 0, 136, 1, '2016-05-02 23:17:32', '0000-00-00 00:00:00'),
(201, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 140, 1, '2016-05-02 23:19:19', '0000-00-00 00:00:00'),
(202, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 140, 1, '2016-05-02 23:20:42', '0000-00-00 00:00:00'),
(203, 'new_list', 'Wants to add you to a list', 'vasquezd', 'Kristen', '', '', 0, 0, 140, 1, '2016-05-02 23:20:42', '0000-00-00 00:00:00'),
(204, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 144, 1, '2016-05-02 23:24:49', '0000-00-00 00:00:00'),
(205, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 144, 1, '2016-05-02 23:24:49', '0000-00-00 00:00:00'),
(206, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 147, 1, '2016-05-02 23:25:14', '0000-00-00 00:00:00'),
(207, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 0, 1, '2016-05-02 23:39:33', '0000-00-00 00:00:00'),
(208, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 0, 1, '2016-05-02 23:39:33', '0000-00-00 00:00:00'),
(209, 'new_list', 'Wants to add you to a list', 'vasquezd', 'Kristen', '', '', 0, 0, 0, 1, '2016-05-02 23:39:33', '0000-00-00 00:00:00'),
(210, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 151, 1, '2016-05-02 23:41:18', '0000-00-00 00:00:00'),
(211, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 151, 1, '2016-05-02 23:41:33', '0000-00-00 00:00:00'),
(212, 'new_square', 'Wants to add you to a square', 'vasquezd', 'matt', '', '', 0, 106, 0, 1, '2016-06-03 22:35:30', '0000-00-00 00:00:00'),
(213, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 107, 107, 0, 1, '2016-06-03 23:21:27', '0000-00-00 00:00:00'),
(214, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 107, 107, 0, 1, '2016-06-03 23:21:27', '0000-00-00 00:00:00'),
(215, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 108, 108, 0, 1, '2016-06-03 23:21:52', '0000-00-00 00:00:00'),
(216, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 109, 109, 0, 1, '2016-06-14 23:37:55', '0000-00-00 00:00:00'),
(217, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 109, 109, 0, 1, '2016-06-14 23:37:55', '0000-00-00 00:00:00'),
(218, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 109, 109, 0, 1, '2016-06-14 23:37:55', '0000-00-00 00:00:00'),
(219, 'friend', '', 'newtest', 'vasquezd', 'newtestvasquezd', '', 0, 0, 0, 0, '2016-06-18 23:31:24', '0000-00-00 00:00:00'),
(220, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 110, 110, 0, 1, '2016-06-19 21:20:58', '0000-00-00 00:00:00'),
(221, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 110, 110, 0, 1, '2016-06-19 21:20:58', '0000-00-00 00:00:00'),
(222, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 110, 110, 0, 1, '2016-06-19 21:20:58', '0000-00-00 00:00:00'),
(223, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 111, 111, 0, 1, '2016-06-19 22:18:52', '0000-00-00 00:00:00'),
(224, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 111, 111, 0, 1, '2016-06-19 22:18:52', '0000-00-00 00:00:00'),
(225, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 111, 111, 0, 1, '2016-06-19 22:18:52', '0000-00-00 00:00:00'),
(226, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 112, 112, 0, 1, '2016-06-19 22:26:48', '0000-00-00 00:00:00'),
(227, 'new_square', 'Wants to add you to a square', 'vasquezd', 'newtest', '', '', 0, 112, 0, 1, '2016-06-19 23:16:06', '0000-00-00 00:00:00'),
(228, 'new_square', 'Wants to add you to a square', 'vasquezd', 'Kristen', '', '', 0, 112, 0, 1, '2016-06-19 23:20:26', '0000-00-00 00:00:00'),
(229, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 113, 113, 0, 1, '2016-06-19 23:20:37', '0000-00-00 00:00:00'),
(230, 'new_square', 'Wants to add you to a square', 'vasquezd', 'matt', '', '', 0, 113, 0, 1, '2016-06-19 23:21:10', '0000-00-00 00:00:00'),
(231, 'new_square', 'Wants to add you to a square', 'vasquezd', 'Kristen', '', '', 0, 113, 0, 1, '2016-06-19 23:21:57', '0000-00-00 00:00:00'),
(232, 'new_square', 'Wants to add you to a square', 'vasquezd', 'newtest', '', '', 0, 113, 0, 1, '2016-06-19 23:22:33', '0000-00-00 00:00:00'),
(233, 'new_square', 'Wants to add you to a square', 'vasquezd', 'Kristen', '', '', 0, 107, 0, 1, '2016-06-19 23:23:02', '0000-00-00 00:00:00'),
(234, 'new_square', 'Wants to add you to a square', 'vasquezd', 'newtest', '', '', 0, 107, 0, 1, '2016-06-19 23:23:09', '0000-00-00 00:00:00'),
(235, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 114, 114, 0, 1, '2016-06-19 23:23:20', '0000-00-00 00:00:00'),
(236, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 115, 115, 0, 1, '2016-06-19 23:26:40', '0000-00-00 00:00:00'),
(237, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 115, 115, 0, 1, '2016-06-19 23:26:40', '0000-00-00 00:00:00'),
(238, 'new_square', 'Wants to add you to a square', 'Vasquezd', 'matt', '', '', 0, 114, 0, 1, '2016-06-24 22:12:59', '0000-00-00 00:00:00'),
(239, 'new_square', 'Wants to add you to a square', 'Vasquezd', 'newtest', '', '', 0, 114, 0, 1, '2016-06-24 22:12:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_master_type` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
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
  `purchased` int(11) NOT NULL,
  `purchased_by` varchar(255) NOT NULL,
  `comment_seen` timestamp NOT NULL,
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=128 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_master_type`, `category`, `parent`, `list_id`, `post_from`, `post_to`, `post_type`, `post_caption`, `post_url`, `video_code`, `image_url`, `file_url`, `file_name`, `article_title`, `article_text`, `contains_file`, `unique_id`, `post_status`, `purchased`, `purchased_by`, `comment_seen`, `updated`, `created`) VALUES
(33, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'photo', 'This is the caption of this post and it works', '', '', '1462221503Koala.jpg', '', '', '', '', 0, 'vasquezdvasquezd1462221493', 0, 0, '', '0000-00-00 00:00:00', '2016-05-29 22:37:38', '2016-05-03 05:38:22'),
(40, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'video', 'This post is from david', 'https://www.youtube.com/watch?v=PtnZhHw0zfo', 'PtnZhHw0zfo', '', '', '', '', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-05-21 21:22:39', '2016-05-13 22:59:45'),
(43, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'photo', 'hi', '', '', '', '', '', '', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-05-21 21:22:36', '2016-05-16 22:57:57'),
(44, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'text', 'new comment', '', '', '', '', '', '', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-05-21 21:13:45', '2016-05-16 23:01:32'),
(46, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'text', 'comment 2', '', '', '', '', '', '', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-05-21 21:13:42', '2016-05-17 20:44:19'),
(47, 'wishlist', '', 0, 0, 'vasquezd', 'vasquezd', 'item', 'comment 3', 'link', '', '', '', '', 'title', 'description', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-05-17 20:45:43', '2016-05-17 20:45:43'),
(49, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'This is the caption of this post and it works pretty well really well actually really well actually!!! This is the caption of this post and it works pretty well really well actually really well actually!!!This is the caption of this post and it works pretty well really well actually really well actually!!! This is the caption of this post and it works pretty well really well actually really well actually!!! This is the caption of this post and it works pretty well really well actually really well actually!!! This is the caption of this post and it works pretty well really well actually really well actually!!! This is the caption of this post and it works pretty well really well actually really well actually!!! This is the caption of this post and it works pretty well really well actually really well actually!!! This is the caption of this post and it works pretty well really well actually really well actually!!! This is the caption of this post and it works pretty well really well actually really well actually!!!', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-10 20:55:05', '2016-05-23 16:54:16'),
(53, 'shareshare', '', 0, 0, 'matt', '106', 'discussion', 'Also, there seems to be no mention of how the government is going to prevent invasive species from exploiting the government''s effort: for example, melaleuca trees were introduced to Florida to dry the Everglades for development, and the plan resulted in millions of invasive melaleuca trees covering much of the Everglades, which then took millions of dollars to fix. ', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-10 20:55:15', '2016-05-17 18:00:16'),
(55, 'divvy', '', 0, 157, 'vasquezd', 'vasquezd', 'divvy', '@tarren and I said, I don''t care if they lay me off either, because I told, I told Bill that if they move my desk one more time,then, then I''m, I''m quitting, I''m going to quit. And, and I told Don too, because they''ve moved my desk four times already this year, and I used to be over by the window, and I could see the squirrels, and they were merry, but then, they switched from the Swingline \nto the Boston stapler, but I kept my Swingline stapler because it didn''t bind up as much, and I kept the staples for the Swingline stapler and it''s not okay because if they take my stapler then I''ll set the building on fire...  ', '', '', '', '', '', '', '', 0, '', 1, 0, '', '2016-05-20 22:47:41', '2016-06-01 21:27:15', '2016-05-17 21:00:16'),
(56, 'divvy', '', 0, 157, 'vasquezd', 'vasquezd', 'divvy', '@tarren No one in this country can ever pronounce my name right. It''s not that hard: Na-ghee-na-na-jar. Nagheenanajar. .', '', '', '', '', '', '', '', 0, '', 1, 0, '', '2016-05-20 22:47:56', '2016-06-01 21:27:01', '2016-05-17 21:00:16'),
(57, 'divvy', '', 0, 157, 'vasquezd', 'vasquezd', 'divvy', ' Bob Porter: Looks like you''ve been missing a lot of work lately. Peter Gibbons: I wouldn''t say I''ve been *missing* it, Bob. <span class = "divvy-hashtag-style"> #Office Space</span>', '', '', '', '', '', '', '', 0, '', 1, 0, '', '2016-05-20 22:48:10', '2016-05-20 23:13:06', '2016-05-17 21:00:16'),
(58, 'divvy', '', 0, 155, 'vasquezd', 'vasquezd', 'divvy', '@david There is now a "divvy" tab which is where the bullet points are stored in the order that the user created them for the project #Design updates to Divvy and it is due &friday', '', '', '', '', '', '', '', 0, '', 1, 0, '', '2016-05-20 22:49:14', '2016-06-01 23:09:03', '2016-05-17 21:00:16'),
(59, 'divvy', '', 0, 156, 'vasquezd', 'vasquezd', 'divvy', '@david Colors have been added to #Design updates to Divvy the different types of tags to help distinguish them from regular text.', '', '', '', '', '', '', '', 0, '', 1, 0, '', '2016-05-20 22:49:30', '2016-06-01 22:13:45', '2016-05-17 21:00:16'),
(60, 'divvy', '', 0, 156, 'vasquezd', 'vasquezd', 'divvy', '@david  I also changed "#project" to "#hashtag" so people will feel free to use hashtags for more than just project names..', '', '', '', '', '', '', '', 0, '', 1, 0, '', '2016-05-20 22:49:45', '2016-06-01 22:13:54', '2016-05-17 21:00:16'),
(61, 'divvy', '', 0, 156, 'vasquezd', 'vasquezd', 'divvy', 'Aesthetic changes too.', '', '', '', '', '', '', '', 0, '', 1, 0, '', '2016-05-20 22:49:57', '2016-05-20 22:48:55', '2016-05-17 21:00:16'),
(62, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1463875481haven.jpg', '', '', '', '', 0, 'vasquezdvasquezd1463866156', 0, 0, '', '0000-00-00 00:00:00', '2016-05-29 22:37:34', '2016-05-22 06:29:59'),
(63, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'this is a new post lead', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-10 21:15:53', '2016-05-24 20:07:03'),
(64, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'this is new', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-10 21:15:56', '2016-05-27 00:02:36'),
(65, 'celeb', 'Music', 0, 0, 'vasquezd', 'vasquezd', 'celeb', 'This is the caption of this post and it works', '', '', 'article_5.jpg', '', '', 'Gavin Rossdale', 'Gavin McGregor Rossdale (born 30 October 1965) \r\n								is an English musician and actor, known as the lead singer and rhythm guitarist of the rock band Bush. ', 0, 'vasquezdvasquezd1462221493', 1, 0, '', '2016-05-29 00:07:56', '2016-05-29 00:07:56', '2016-05-03 05:38:22'),
(66, 'celeb', 'Entertainment', 0, 0, 'vasquezd', 'vasquezd', 'celeb', 'This is the caption of this post and it works', '', '', 'article_2.jpg', '', '', 'Scarlett Johansson', 'A lonely, aging movie star named Bob Harris (Bill Murray) and a conflicted newlywed, Charlotte (Scarlett Johansson), meet in Tokyo. Bob is there to film a Japanese whiskey commercial', 0, 'vasquezdvasquezd1462221493', 1, 0, '', '2016-05-29 00:10:13', '2016-05-29 00:07:56', '2016-05-03 05:38:22'),
(67, 'celeb', 'Politics', 0, 0, 'vasquezd', 'vasquezd', 'celeb', 'This is the caption of this post and it works', '', '', 'article_4.jpg', '', '', 'Winston Churchill', 'Crop circle appeared in 2001 in the remote area of Milk Hill in Wiltshire, England. The elaborate design is composed of 409 circles that form a pattern called a double, or six-sided, triskelion, which is a motif consisting of three interlocking spirals.', 0, 'vasquezdvasquezd1462221493', 1, 0, '', '2016-05-29 00:11:04', '2016-05-29 00:07:56', '2016-05-03 05:38:22'),
(68, 'news', 'Travel', 0, 0, 'vasquezd', 'vasquezd', 'Travel', 'This is the caption of this post and it works', '', '', 'article_1.jpg', '', '', 'Scientists Discover an Alien Civilization Beneath Machu Pichu', 'Machu Picchu is an Incan citadel set high in the Andes Mountains in Peru, above the Urubamba River valley. Built in the 15th century and later abandoned, it’s renowned for its sophisticated dry-stone walls that fuse huge blocks without the use of mortar', 0, 'vasquezdvasquezd1462221493', 1, 0, '', '2016-05-29 20:28:53', '2016-05-29 00:07:56', '2016-05-03 05:38:22'),
(69, 'news', 'Entertainment', 0, 0, 'vasquezd', 'vasquezd', 'Travel', 'This is the caption of this post and it works', '', '', 'article_2.jpg', '', '', 'Lost in Translation', 'A lonely, aging movie star named Bob Harris (Bill Murray) and a conflicted newlywed, Charlotte (Scarlett Johansson), meet in Tokyo. Bob is there to film a  Japanese whiskey commercial', 0, 'vasquezdvasquezd1462221493', 1, 0, '', '2016-05-29 20:30:28', '2016-05-29 00:07:56', '2016-05-03 05:38:22'),
(70, 'news', 'Science', 0, 0, 'vasquezd', 'vasquezd', 'Travel', 'This is the caption of this post and it works', '', '', 'article_3.jpg', '', '', 'Crop Circles in the North of England ', 'Crop circle appeared in 2001 in the remote area of Milk Hill in Wiltshire, \r\nEngland. The elaborate design is composed of 409 circles that form a pattern called a double, or six-sided, triskelion, which is a motif consisting of three interlocking spirals. ', 0, 'vasquezdvasquezd1462221493', 1, 0, '', '2016-05-29 20:31:20', '2016-05-29 00:07:56', '2016-05-03 05:38:22'),
(71, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1464561449Hydrangeas.jpg', '', '', '', '', 0, 'vasquezdvasquezd1464561357', 1, 0, '', '0000-00-00 00:00:00', '2016-05-29 22:37:29', '2016-05-30 07:37:29'),
(72, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1464561903test.png', '', '', '', '', 0, 'vasquezdvasquezd1464561449', 0, 0, '', '0000-00-00 00:00:00', '2016-05-29 22:45:03', '2016-05-30 07:42:21'),
(73, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'video', 'Hi here are some pictures of flowers', 'https://www.youtube.com/watch?v=YRLw55eGMn8', 'YRLw55eGMn8', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-05-29 22:59:14', '2016-05-29 22:45:19'),
(74, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'article', '', 'http://www.grindtv.com/travel/no-reservation-needed-at-these-california-campsites/', '', '574b76f2701d9779015935.jpg', '', '', 'No reservation needed at these CA campsites', 'No reservation is required at these four California campsites, making for the perfect unplanned getaway.', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-05-29 23:11:33', '2016-05-30 08:10:52'),
(75, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'article', '', 'http://www.grindtv.com/travel/no-reservation-needed-at-these-california-campsites/#TQFS1Q1u1fp5b0zr.97', '', '574b77def1ff9536797300.jpg', '', '', 'No reservation needed at these CA campsites | GrindTV.com', 'No reservation is required at these four California campsites, making for the perfect unplanned getaway.', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-05-29 23:14:47', '2016-05-30 08:14:43'),
(76, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'link', 'this is a cool site!', 'https://www.youtube.com/', '', 'youtube.png', '', '', 'YouTube', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-05-30 20:45:29', '2016-05-29 23:26:08'),
(77, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'text', 'this is just a comment with text ', '', '', '', '', '', '', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-05-30 20:46:12', '2016-05-29 23:32:23'),
(78, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'file', '', '', '', 'file_icon.png', '1464565510FF.txt', 'FF.txt', '', '', 1, '', 0, 0, '', '0000-00-00 00:00:00', '2016-05-30 20:45:23', '2016-05-29 23:45:10'),
(79, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1465249481Desert.jpg', '', '', '', '', 0, 'vasquezdvasquezd1465249469', 1, 0, '', '0000-00-00 00:00:00', '2016-06-06 21:44:42', '2016-06-07 06:44:41'),
(80, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1465249639Jellyfish.jpg', '', '', '', '', 0, 'vasquezdvasquezd1465249521', 1, 0, '', '0000-00-00 00:00:00', '2016-06-06 21:47:19', '2016-06-07 06:45:27'),
(81, 'news', '', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1465250129Hydrangeas.jpg', '', '', '', '', 0, 'vasquezdvasquezd1465249639', 1, 0, '', '0000-00-00 00:00:00', '2016-06-06 21:55:29', '2016-06-07 06:47:23'),
(95, 'news', 'music', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1465253386Jellyfish.jpg', '', '', '', '', 0, 'vasquezdvasquezd1465253148', 1, 0, '', '0000-00-00 00:00:00', '2016-06-06 22:49:46', '2016-06-07 07:45:52'),
(96, 'news', 'music', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1465253395Koala.jpg', '', '', 'na', 'bopo', 0, 'vasquezdvasquezd1465253386', 1, 0, '', '0000-00-00 00:00:00', '2016-06-06 22:49:55', '2016-06-07 07:49:55'),
(97, 'celeb', 'music', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1465253922Koala.jpg', '', '', '', '', 0, 'vasquezdvasquezd1465253913', 1, 0, '', '0000-00-00 00:00:00', '2016-06-06 22:58:42', '2016-06-07 07:58:42'),
(98, 'celeb', 'music', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '14652544457b6487d69a713767508017745194950e.jpg', '', '', 'Sherri Dupree', 'Singer of Eisley', 0, 'vasquezdvasquezd1465253984', 1, 0, '', '0000-00-00 00:00:00', '2016-06-06 23:07:25', '2016-06-07 07:59:58'),
(99, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'photo', 'hi', '', '', '', '', '', '', '', 0, '', 0, 0, '', '2016-06-09 20:53:49', '2016-05-21 21:22:36', '2016-05-16 22:57:57'),
(101, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1465249639Jellyfish.jpg', '', '', '', '', 0, 'vasquezdvasquezd1465249521', 1, 0, '', '2016-06-09 20:55:27', '2016-06-06 21:47:19', '2016-06-07 06:45:27'),
(102, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1465249639Jellyfish.jpg', '', '', '', '', 0, 'vasquezdvasquezd1465249521', 1, 0, '', '2016-06-09 20:55:43', '2016-06-06 21:47:19', '2016-06-07 06:45:27'),
(103, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'this is new', '', '', '', '', '', '', '', 0, '', 1, 0, '', '2016-06-10 21:15:26', '2016-06-10 21:15:58', '2016-05-27 00:02:36'),
(104, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'discussion', 'new hi ', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-10 22:08:33', '2016-06-10 22:08:33'),
(105, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'Friday', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-10 22:22:49', '2016-06-10 22:22:49'),
(106, 'shareshare', '', 0, 0, 'vasquezd', '107', 'discussion', 'We should work on our game! ', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-10 22:32:14', '2016-06-10 22:32:14'),
(107, 'shareshare', '', 0, 0, 'vasquezd', '107', 'discussion', 'I agree! ', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-10 22:32:23', '2016-06-10 22:32:23'),
(108, 'shareshare', 'null', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1465687931laputa_by_megatruh-d9ify7k.jpg', '', '', '', '', 0, 'vasquezdvasquezd1465687924', 1, 0, '', '0000-00-00 00:00:00', '2016-06-11 23:32:12', '2016-06-12 08:32:09'),
(109, 'shareshare', 'null', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1465689106john_and_maus_by_megatruh-d8yakpq.jpg', '', '', '', '', 0, 'vasquezdvasquezd1465689059', 1, 0, '', '0000-00-00 00:00:00', '2016-06-11 23:51:46', '2016-06-12 08:51:04'),
(110, 'shareshare', 'null', 0, 0, 'vasquezd', 'matt', 'photo', '', '', '', '1465689462laputa_by_megatruh-d9ify7k.jpg', '', '', '', '', 0, 'vasquezdmatt1465689458', 1, 0, '', '0000-00-00 00:00:00', '2016-06-11 23:57:42', '2016-06-12 08:57:42'),
(111, 'shareshare', '', 0, 0, 'vasquezd', 'matt', 'video', '', 'https://www.youtube.com/watch?v=Rr5cJOjoJW8', 'Rr5cJOjoJW8', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-12 00:00:11', '2016-06-12 00:00:11'),
(112, 'shareshare', '', 0, 0, 'vasquezd', 'matt', 'video', '', 'https://www.youtube.com/watch?v=7jE-HPjwgX8', '7jE-HPjwgX8', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-12 00:18:10', '2016-06-12 00:18:10'),
(113, 'shareshare', '', 0, 0, 'vasquezd', '107', 'discussion', 'hello!', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-14 21:57:11', '2016-06-14 21:57:11'),
(114, 'shareshare', 'null', 0, 0, 'matt', 'vasquezd', 'photo', '', '', '', '1466025828background_png_1.png', '', '', '', '', 0, 'mattvasquezd1466025781', 1, 0, '', '0000-00-00 00:00:00', '2016-06-15 21:23:48', '2016-06-16 06:23:48'),
(115, 'shareshare', 'null', 0, 0, 'vasquezd', 'vasquezd', 'photo', 'this is the photo', '', '', '1466027910background_20.jpg', '', '', '', '', 0, 'vasquezdvasquezd1466027369', 1, 0, '', '0000-00-00 00:00:00', '2016-06-15 21:58:30', '2016-06-16 06:49:37'),
(116, 'shareshare', 'null', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1466028194background_70.jpg', '', '', '', '', 0, 'vasquezdvasquezd1466027910', 1, 0, '', '0000-00-00 00:00:00', '2016-06-15 22:03:14', '2016-06-16 06:58:57'),
(117, 'shareshare', 'null', 0, 0, 'vasquezd', 'vasquezd', 'photo', 'this is interesting', '', '', '1466028372background_37.jpg', '', '', '', '', 0, 'vasquezdvasquezd1466028194', 0, 0, '', '0000-00-00 00:00:00', '2016-06-15 22:06:12', '2016-06-16 07:03:25'),
(118, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'video', 'this is a good song!', 'https://www.youtube.com/watch?v=h2XLLXwkLAc', 'h2XLLXwkLAc', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-15 22:06:32', '2016-06-15 22:06:32'),
(119, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'article', 'check this out!', 'https://www.yahoo.com/news/game-thrones-theory-correctly-addresses-202225548.html', '', '5761d323a9c5e404506634.jpg', '', '', 'This â€œGame of Thronesâ€ theory correctly addresses the weird plot hole about Aryaâ€™s storyline', 'As weâ€™ve previously discussed, Aryaâ€™s long-teased showdown with Waif during â€œNo Oneâ€Â was kinda a huge letdown. Yes, yes, it was a fineâ€¦', 0, '', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-06-16 07:13:59'),
(120, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'text', 'Come over and check this out!', '', '', '', '', '', '', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-06-18 21:08:46', '2016-06-15 22:15:48'),
(123, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1466029432background_20.jpg', 'background_20.jpg', '', '', 1, '', 0, 0, '', '0000-00-00 00:00:00', '2016-06-18 21:08:48', '2016-06-15 22:23:52'),
(124, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1466029667background_76.jpg', 'background_76.jpg', '', '', 1, '', 0, 0, '', '0000-00-00 00:00:00', '2016-06-18 21:08:53', '2016-06-15 22:27:47'),
(125, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'file', 'background 20', '', '', '', '1466029757background_20.jpg', 'background_20.jpg', '', '', 1, '', 0, 0, '', '0000-00-00 00:00:00', '2016-06-18 21:08:56', '2016-06-15 22:29:17'),
(126, 'shareshare', '', 0, 0, 'vasquezd', '114', 'discussion', 'this is a new group!', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-20 00:31:43', '2016-06-20 00:31:43'),
(127, 'shareshare', 'null', 0, 0, 'vasquezd', '106', 'photo', '', '', '', '1466382868Koala.jpg', '', '', '', '', 0, 'vasquezd1061466382852', 1, 0, '', '0000-00-00 00:00:00', '2016-06-20 00:34:28', '2016-06-20 09:34:28');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=164 ;

--
-- Dumping data for table `post_bias`
--

INSERT INTO `post_bias` (`post_bias_id`, `post_id`, `right_vote`, `right_vote_user`, `left_vote`, `left_vote_user`, `created`) VALUES
(153, 70, 0, '', 1, 'vasquezd', '2016-05-29 22:29:43'),
(157, 69, 0, '', 1, 'vasquezd', '2016-05-29 22:33:03'),
(159, 81, 1, 'vasquezd', 0, '', '2016-06-06 21:55:26'),
(161, 98, 0, '', 1, 'vasquezd', '2016-06-17 20:58:59'),
(162, 97, 1, 'vasquezd', 0, '', '2016-06-17 20:59:01'),
(163, 65, 0, '', 1, 'vasquezd', '2016-06-17 20:59:03');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`post_like_id`, `post_id`, `liked_by`, `liked_by_name`, `time_stamp`) VALUES
(53, 39, 1, 'vasquezd', '2016-05-25 00:17:31'),
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
(96, 105, 1, 'vasquezd', '2016-06-18 21:00:03');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=164 ;

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
(163, 97, 1, 'vasquezd', 0, '', '2016-06-09 19:44:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_analytics`
--

CREATE TABLE IF NOT EXISTS `user_analytics` (
  `analytics_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_url` varchar(255) NOT NULL,
  `last_visit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_visits` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`analytics_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=165 ;

--
-- Dumping data for table `user_analytics`
--

INSERT INTO `user_analytics` (`analytics_id`, `page_url`, `last_visit`, `total_visits`, `user_name`, `user_id`) VALUES
(164, 'group_discussion.php', '2016-06-25 00:14:04', 3, 'Vasquezd', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `salt`, `password`, `last_login`, `last_logout`, `login_total`, `test`) VALUES
(1, 'vasquezd', 1408593605, 'f62c9d59b1b2cbe2b6462784e1d6a550f1afbe85', '2016-06-24 20:03:09', '2016-06-23 22:19:31', 97, 'vasquezb'),
(2, 'matt', 1448946249, 'de85ef10d2853b10978ac6c8e0c37c354d3b6969', '2016-06-23 22:19:36', '2016-06-23 22:22:28', 11, 'vasquezb'),
(3, 'brian', 1448946380, 'ace622215c315ce82bfd153b63c7faeb218a17da', '2015-12-03 03:28:11', '2015-12-03 03:28:11', 0, 'vasquezb'),
(4, 'Kristen', 1448946380, 'e3ae7af8145e258b854728fc9cebe6c8891ee2a5', '2016-04-28 22:32:26', '2016-04-28 22:32:26', 1, 'vasquezb'),
(5, 'Aimee', 1448946380, '33f916c66f61bbf37a12105c8bb3e0fc8ea75fd6', '2015-12-14 05:02:39', '2015-12-01 05:28:26', 0, ''),
(6, 'Becca', 1448946503, 'ba342a034cc175fb24a1c3d59d190da0c31f0106', '2015-12-17 20:35:22', '2015-12-10 08:18:33', 0, ''),
(7, 'Sarah', 1448946503, '378d32da508020f682a238053fec6f307e0aa30a', '2015-12-09 01:42:10', '2015-12-09 01:40:36', 0, ''),
(8, 'chris', 1448946380, '80c96f63d24bc38382aca981ed2e262c22582605', '2015-12-19 04:01:14', '2015-12-16 22:18:50', 0, ''),
(9, 'pop', 1448946503, '851b0d429828f520537e2323a1c5f1cde21eee5d', '2015-12-01 05:31:10', '2015-12-01 05:31:10', 0, ''),
(38, 'registertest', 1461714733, 'ccf01e96eda36bdbcff1db5230ba3135bab7b7a6', '2016-04-27 00:00:18', '2016-04-27 00:00:18', 1, ''),
(39, 'vasquezk', 1466107880, '6d7cb2a50e2fbaaa22735cc31d0a0df53e9afb30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(40, 'newtest', 1466292456, 'd01fa2032013072f83abb1d4c0f6f7dba8c7634c', '2016-06-18 23:27:45', '2016-06-18 23:31:34', 1, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_profile_id`, `user_id`, `user_name`, `email`, `image_name`, `first_name`, `last_name`, `root_folder`, `biography`, `university`, `updated`, `created`) VALUES
(46, 1, 'vasquezd', 'Vasquezd@onid.orst.edu', 'david.jpg', 'David', 'Vasquez', 'Vasquezd', '', 'Oregon State ', '2016-04-03 21:33:50', '2014-08-21 18:00:05'),
(47, 2, 'matt', 'vasquezm@shareshare.com', 'matt.jpg', 'Matt', 'Vasquez', '', 'This is matts page!', '', '2015-12-01 04:55:10', '0000-00-00 00:00:00'),
(48, 3, 'brian', 'vasquezb@shareshare.com', 'brian.jpg', 'Brian', 'Vasquez', '', 'this is brian''s page! ', '', '2016-04-09 21:02:59', '0000-00-00 00:00:00'),
(49, 4, 'Kristen', 'vasquezj@shareshare.com', 'david.jpg', 'Kristen', 'Vasquez', '', 'this is my page!', '', '2015-12-03 03:25:43', '0000-00-00 00:00:00'),
(50, 5, 'Aimee', 'Aimeeaileen@mac.com', '1449476920image.jpeg', 'Aimee', 'Vasquez', 'Vasquez', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-07 08:28:40', '0000-00-00 00:00:00'),
(51, 6, 'Becca', 'Vasquezd@onid.orst.edu', 'Becca.jpg', 'Becca', 'Vasquez', 'vasquezma', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2016-04-09 21:03:19', '0000-00-00 00:00:00'),
(52, 7, 'Sarah', 'Vasquezd@onid.orst.edu', 'david.jpg', 'Sarah', 'Vasquez', 'Vasquezbb', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-01 04:57:23', '0000-00-00 00:00:00'),
(53, 8, 'chris', 'californiachristophe@gmail.com', '1450307134Screen.jpg', 'Chris', 'Vasquez', 'Vasquezdk', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-16 23:05:34', '0000-00-00 00:00:00'),
(54, 9, 'pop', 'Vasquezd@onid.orst.edu', 'david.jpg', 'Pop', 'Vasquez', 'vasquezbas', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-01 04:57:59', '0000-00-00 00:00:00'),
(55, 39, 'vasquezk', 'kristen@onid.orst.edu', 'david.jpg', 'kristen', 'vasquez', 'vasquezk', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-06-16 20:11:20'),
(56, 40, 'newtest', 'Vasquezd@onid.orst.edu', 'david.jpg', 'new', 'test', 'newtest', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-06-18 23:27:36');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `user_size`
--

INSERT INTO `user_size` (`primary_key`, `user_name`, `birthday`, `user_id`, `user_shirt`, `user_sweater`, `user_coat`, `user_jeans`, `user_pants`, `user_dress_size`, `user_shoes`) VALUES
(1, 'vasquezd', 'December 3', 1, 'Medium', 'Medium', 'medium or large', '34 x 30 or 33 x 30', '', '', '12'),
(2, 'vasquezb', 'May 28', 3, 'large', 'large', 'medium or large', '34 x 30 or 33 x 30', '', '', '12'),
(3, 'chris', 'March', 8, 'XL', 'XL', '', '38 by 34', '', '', '11'),
(4, 'pop', '', 9, '', '', '', '', '', '', ''),
(5, 'Sarah', '', 7, '', '', '', '', '', '', ''),
(6, 'Becca', '', 6, '', '', '', '', '', '', ''),
(7, 'Aimee', '11/22/83', 5, 'Girl large or extra large/ guy small', 'Girl large/ guy small or medium ', '', '', '', '', ''),
(8, 'Kristen', '', 4, '', '', '', '', '', '', ''),
(9, 'Brian', '', 3, '', '', '', '', '', '', ''),
(10, 'matt', '', 2, '', '', '', '', '', '', ''),
(11, 'vasquezk', '', 39, '', '', '', '', '', '', ''),
(12, 'newtest', '', 40, '', '', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
