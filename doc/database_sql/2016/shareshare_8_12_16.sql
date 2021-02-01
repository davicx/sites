-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2016 at 02:38 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

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
(37, 105, 0, 0, 'hi', 'vasquezd', '', 0, 1, '2016-06-10 22:28:22', '2016-06-10 22:28:22'),
(38, 157, 0, 0, 'Yea I like it ', 'vasquezd', '', 0, 1, '2016-07-03 22:33:54', '2016-07-03 22:33:54'),
(39, 178, 0, 0, 'Ya I agree! now there is one comment', 'vasquezd', '', 0, 1, '2016-07-08 21:53:43', '2016-07-03 22:59:27'),
(40, 183, 0, 0, 'this disappears', 'vasquezd', '', 0, 0, '2016-07-03 23:23:50', '2016-07-03 23:22:21'),
(41, 183, 0, 0, 'ok', 'vasquezd', '', 0, 0, '2016-07-03 23:23:46', '2016-07-03 23:22:29'),
(42, 183, 0, 0, 'this is a comment ', 'vasquezd', '', 0, 1, '2016-07-03 23:32:16', '2016-07-03 23:32:16'),
(43, 178, 0, 0, 'this is a new reply!', 'vasquezd', '', 0, 0, '2016-07-08 21:53:30', '2016-07-08 20:46:56'),
(44, 177, 0, 0, 'hi first reply', 'vasquezd', '', 0, 1, '2016-07-08 20:47:12', '2016-07-08 20:47:12'),
(45, 177, 0, 0, 'hi, second reply ', 'vasquezd', '', 0, 1, '2016-07-08 20:47:21', '2016-07-08 20:47:21'),
(46, 186, 0, 0, 'this is a reply ', 'vasquezd', '', 0, 1, '2016-07-08 22:37:27', '2016-07-08 22:37:27'),
(47, 186, 0, 0, 'this too ', 'vasquezd', '', 0, 1, '2016-07-08 22:37:32', '2016-07-08 22:37:32'),
(48, 186, 0, 0, 'this three ', 'vasquezd', '', 0, 1, '2016-07-08 22:37:38', '2016-07-08 22:37:38');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `divvy_pieces`
--

CREATE TABLE IF NOT EXISTS `divvy_pieces` (
  `divvy_piece_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `divvy_id` int(11) NOT NULL,
  `divvy_position` int(11) NOT NULL,
  `is_divvy_tag` int(11) NOT NULL,
  `divvy_text` text NOT NULL,
  `divvy_tag` varchar(255) NOT NULL,
  `divvy_tag_type` varchar(255) NOT NULL,
  `divvy_piece_unique_key` varchar(255) NOT NULL,
  `divvy_status` int(11) NOT NULL,
  PRIMARY KEY (`divvy_piece_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `divvy_pieces`
--

INSERT INTO `divvy_pieces` (`divvy_piece_id`, `divvy_id`, `divvy_position`, `is_divvy_tag`, `divvy_text`, `divvy_tag`, `divvy_tag_type`, `divvy_piece_unique_key`, `divvy_status`) VALUES
(1, 305, 0, 0, 'This is plain text ', '0', '', '', 0),
(2, 305, 1, 0, 'Hello this is text that is longer', '0', '', '', 0),
(4, 306, 2, 0, 'Hello this is text position', '0', '', '', 1),
(5, 306, 0, 0, 'This is plain text  ', '0', '', '', 1),
(6, 306, 1, 1, '@david', '@david', 'people', '', 1),
(7, 305, 14, 0, 'Hello this is text', '0', '', '', 1),
(49, 305, 2, 0, 'Hello this ', '', '', '', 0),
(50, 305, 13, 0, 'is text', '', '', '', 1),
(51, 305, 12, 1, '@david', '@david ', 'people', '', 1),
(52, 305, 9, 0, 'Hello ', '', '', 'c560b8fac44c673ed084f628e327d70f', 1),
(53, 305, 11, 0, 'this  ', '', '', '09cb2588fbec46c829cdeca9b3eef092', 1),
(54, 305, 10, 1, '@david', '@david ', 'people', '', 1),
(55, 307, 1, 0, 'Hello this is text that is longer', '0', '', '', 1),
(56, 305, 1, 0, ' This is plain can you do this ', '', '', '4f848354721ee289d3579b46c15ece3f', 0),
(57, 305, 6, 0, 'text  ', '', '', '88df10ef2a13b302c890eeb1777c9be3', 1),
(58, 305, 5, 1, '@tarren ', '@tarren ', 'people', 'cb65883924938f4472b9e8371c63a6fa', 1),
(59, 305, 2, 0, '  This is plain canÂ ', '', '', '289eb7cd068d8285e82107d4c520ad56', 1),
(60, 305, 4, 0, ' you do this  ', '', '', '4e718d8fdeada835e39d4099f8a37424', 1),
(61, 305, 3, 1, '@david ', '@david ', 'people', '822530ea98699da5fb288867288c23cf', 1);

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
  `divvy_to` varchar(255) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=308 ;

--
-- Dumping data for table `divvy_post`
--

INSERT INTO `divvy_post` (`divvy_id`, `parent`, `list_id`, `divvy_position`, `divvy_from`, `divvy_to`, `divvy_caption`, `divvy_deadline`, `divvy_progress`, `divvy_priority`, `image_url`, `file_name`, `unique_id`, `divvy_status`, `updated`, `created`) VALUES
(305, 0, 155, 127, 'vasquezd', 'vasquezd', ' This is plain canÂ  @david you do this @tarren text Hello @david this @david is text Hello this is text', '0000-00-00 00:00:00', 0, 0, '', '', 'bb23c2c27c69d06a94820809c1b3c785', 1, '2016-08-11 22:27:00', '2016-07-13 22:49:39'),
(306, 0, 155, 18, 'vasquezd', 'vasquezd', ' This is plain text @david Hello this is text position', '0000-00-00 00:00:00', 0, 0, '', '', '54479f550436e84084f03bb5611ab6b6', 1, '2016-08-11 20:26:46', '2016-07-13 22:49:39'),
(307, 0, 155, 19, 'vasquezd', 'vasquezd', ' Hello this is text that is longer', '2016-08-11 20:26:22', 0, 0, '', '', '54479f550436e84084f03bb5611ab6b6', 1, '2016-08-11 22:10:37', '2016-07-13 22:49:39');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=388 ;

--
-- Dumping data for table `divvy_users`
--

INSERT INTO `divvy_users` (`divvy_users_id`, `divvy_id`, `list_id`, `divvy_from`, `divvy_to`, `divvy_to_user_status`, `active`, `status_seen`, `updated`, `created`) VALUES
(379, 305, 155, 'vasquezd', 'vasquezd', 0, 0, 0, '2016-08-11 20:26:46', '2016-08-10 22:14:16'),
(380, 306, 155, 'vasquezd', 'david', 0, 0, 0, '2016-08-10 22:17:07', '2016-08-10 22:14:16'),
(381, 306, 155, 'vasquezd', 'vasquezd', 0, 0, 0, '2016-08-11 20:26:46', '2016-08-10 22:14:16'),
(382, 306, 155, 'vasquezd', 'tarren', 0, 0, 0, '2016-08-10 22:17:08', '2016-08-10 22:14:57'),
(383, 306, 155, 'vasquezd', 'matt', 0, 0, 0, '2016-08-10 22:17:08', '2016-08-10 22:14:57'),
(384, 305, 155, 'vasquezd', 'david', 0, 1, 0, '2016-08-11 20:26:46', '2016-08-11 20:26:46'),
(385, 306, 155, 'vasquezd', 'david', 0, 1, 0, '2016-08-11 20:26:46', '2016-08-11 20:26:46'),
(386, 307, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-08-11 20:26:46', '2016-08-11 20:26:46'),
(387, 305, 155, 'vasquezd', 'tarren', 0, 1, 0, '2016-08-11 21:29:58', '2016-08-11 21:29:58');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=573 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `group_id`, `post_id`, `parent`, `is_folder`, `folder_name`, `file_name`, `file_type`, `file_name_server`, `file_path_server`, `file_image`, `file_path`, `user_id`, `user_name`, `file_status`, `file_seen`, `recycle_status`, `unique_id`, `file_created`, `file_last_modified`) VALUES
(459, 0, 0, 0, 1, 'Folder ', 'folder.png', '', 'folder.png', 'folder.png', 'folder.png', '---------0-', 1, 'vasquezd', 1, 0, 0, '1466381789810', '2016-06-20 00:16:29', '0000-00-00 00:00:00'),
(460, 0, 0, 0, 0, 'file', 'Chrysanthemum.jpg', 'jpg', '1466381913Chrysanthemum.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1466381913Chrysanthemum.jpg', '---------0-', 1, 'vasquezd', 1, 0, 0, '', '2016-06-20 00:18:33', '2016-06-20 00:18:33'),
(461, 106, 0, 0, 1, 'folder', 'folder.png', '', 'folder.png', 'folder.png', 'folder.png', '---------0-', 1, 'vasquezd', 1, 0, 0, '1466382689341', '2016-06-20 00:31:29', '0000-00-00 00:00:00'),
(462, 114, 0, 0, 0, 'file', 'Koala.jpg', 'jpg', '1466382712Koala.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1466382712Koala.jpg', '---------0-', 1, 'vasquezd', 1, 0, 0, '', '2016-06-20 00:31:52', '2016-06-20 00:31:52'),
(463, 0, 127, 0, 0, '', 'Koala.jpg', '', '1466382868Koala.jpg', '', '', '', 0, 'vasquezd1061466382852', 1, 0, 0, '', '2016-06-20 00:34:28', '0000-00-00 00:00:00'),
(464, 106, 0, 0, 0, 'file', 'Koala.jpg', 'jpg', '1467060542Koala.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1467060542Koala.jpg', '---------0-', 1, 'vasquezd', 1, 0, 0, '', '2016-06-27 20:49:02', '2016-06-27 20:49:02'),
(465, 0, 128, 0, 0, '', 'Desert.jpg', '', '1467065227Desert.jpg', '', '', '', 0, 'matt1061467065218', 1, 0, 0, '', '2016-06-27 22:07:07', '0000-00-00 00:00:00'),
(466, 0, 133, 0, 0, '', 'Koala.jpg', '', '1467066082Koala.jpg', '', '', '', 0, 'matt1061467066077', 1, 0, 0, '', '2016-06-27 22:21:22', '0000-00-00 00:00:00'),
(467, 0, 135, 0, 0, '', 'background_20.jpg', '', '1467066212background_20.jpg', '', '', '', 0, 'matt1061467066192', 1, 0, 0, '', '2016-06-27 22:23:32', '0000-00-00 00:00:00'),
(468, 0, 148, 0, 0, '', 'background_5.jpg', '', '1467067147background_5.jpg', '', '', '', 0, 'vasquezd1061467067143', 1, 0, 0, '', '2016-06-27 22:39:07', '0000-00-00 00:00:00'),
(469, 0, 149, 0, 0, '', 'background_6.jpg', '', '1467067229background_6.jpg', '', '', '', 0, 'matt1061467067224', 1, 0, 0, '', '2016-06-27 22:40:29', '0000-00-00 00:00:00'),
(470, 106, 0, 0, 0, 'file', 'Desert.jpg', 'jpg', '1467068741Desert.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1467068741Desert.jpg', '---------0-', 1, 'vasquezd', 1, 0, 0, '', '2016-06-27 23:05:41', '2016-06-27 23:05:41'),
(471, 106, 0, 0, 0, 'file', 'Koala.jpg', 'jpg', '1467068743Koala.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1467068743Koala.jpg', '---------0-', 1, 'vasquezd', 1, 0, 0, '', '2016-06-27 23:05:43', '2016-06-27 23:05:43'),
(472, 0, 151, 0, 0, '', 'background_28.jpg', '', '1467149047background_28.jpg', '', '', '', 0, 'matt1061467149037', 1, 0, 0, '', '2016-06-28 21:24:07', '0000-00-00 00:00:00'),
(473, 0, 156, 0, 0, '', 'Desert.jpg', '', '1467325982Desert.jpg', '', '', '', 0, 'vasquezd1151467325968', 1, 0, 0, '', '2016-06-30 22:33:02', '0000-00-00 00:00:00'),
(474, 0, 156, 0, 0, '', 'Desert.jpg', '', '1467325988Desert.jpg', '', '', '', 0, 'vasquezd1151467325968', 1, 0, 0, '', '2016-06-30 22:33:08', '0000-00-00 00:00:00'),
(475, 0, 157, 0, 0, '', 'luna.jpg', '', '1467495589luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467495583', 1, 0, 0, '', '2016-07-02 21:39:49', '0000-00-00 00:00:00'),
(476, 0, 157, 0, 0, '', 'luna.jpg', '', '1467500703luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467495583', 1, 0, 0, '', '2016-07-02 23:05:03', '0000-00-00 00:00:00'),
(477, 0, 157, 0, 0, '', 'luna.jpg', '', '1467500843luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467495583', 1, 0, 0, '', '2016-07-02 23:07:23', '0000-00-00 00:00:00'),
(478, 0, 157, 0, 0, '', 'luna.jpg', '', '1467500964luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467495583', 1, 0, 0, '', '2016-07-02 23:09:24', '0000-00-00 00:00:00'),
(479, 0, 157, 0, 0, '', 'luna.jpg', '', '1467501380luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467495583', 1, 0, 0, '', '2016-07-02 23:16:20', '0000-00-00 00:00:00'),
(480, 0, 158, 0, 0, '', 'luna.jpg', '', '1467501386luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:16:26', '0000-00-00 00:00:00'),
(481, 0, 158, 0, 0, '', 'luna.jpg', '', '1467501423luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:17:03', '0000-00-00 00:00:00'),
(482, 0, 158, 0, 0, '', 'luna.jpg', '', '1467501443luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:17:23', '0000-00-00 00:00:00'),
(483, 0, 158, 0, 0, '', 'luna.jpg', '', '1467501480luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:18:00', '0000-00-00 00:00:00'),
(484, 0, 158, 0, 0, '', 'luna.jpg', '', '1467501495luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:18:15', '0000-00-00 00:00:00'),
(485, 0, 158, 0, 0, '', 'luna.jpg', '', '1467501500luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:18:20', '0000-00-00 00:00:00'),
(486, 0, 158, 0, 0, '', 'luna.jpg', '', '1467501509luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:18:29', '0000-00-00 00:00:00'),
(487, 0, 158, 0, 0, '', 'luna.jpg', '', '1467501607luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:20:07', '0000-00-00 00:00:00'),
(488, 0, 158, 0, 0, '', 'luna.jpg', '', '1467501629luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:20:29', '0000-00-00 00:00:00'),
(489, 0, 158, 0, 0, '', 'luna.jpg', '', '1467501762luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:22:42', '0000-00-00 00:00:00'),
(490, 0, 158, 0, 0, '', 'luna.jpg', '', '1467501773luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:22:53', '0000-00-00 00:00:00'),
(491, 0, 158, 0, 0, '', 'luna.jpg', '', '1467501782luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:23:02', '0000-00-00 00:00:00'),
(492, 0, 158, 0, 0, '', 'luna.jpg', '', '1467501881luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:24:41', '0000-00-00 00:00:00'),
(493, 0, 158, 0, 0, '', 'luna.jpg', '', '1467501922luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:25:22', '0000-00-00 00:00:00'),
(494, 0, 158, 0, 0, '', 'luna.jpg', '', '1467501934luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:25:34', '0000-00-00 00:00:00'),
(495, 0, 158, 0, 0, '', 'luna.jpg', '', '1467502050luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:27:30', '0000-00-00 00:00:00'),
(496, 0, 158, 0, 0, '', 'luna.jpg', '', '1467502074luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:27:54', '0000-00-00 00:00:00'),
(497, 0, 158, 0, 0, '', 'luna.jpg', '', '1467502090luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:28:10', '0000-00-00 00:00:00'),
(498, 0, 158, 0, 0, '', 'luna.jpg', '', '1467502101luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:28:21', '0000-00-00 00:00:00'),
(499, 0, 158, 0, 0, '', 'luna.jpg', '', '1467502147luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:29:07', '0000-00-00 00:00:00'),
(500, 0, 158, 0, 0, '', 'luna.jpg', '', '1467502164luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:29:24', '0000-00-00 00:00:00'),
(501, 0, 158, 0, 0, '', 'luna.jpg', '', '1467502199luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:29:59', '0000-00-00 00:00:00'),
(502, 0, 158, 0, 0, '', 'luna.jpg', '', '1467502207luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:30:07', '0000-00-00 00:00:00'),
(503, 0, 158, 0, 0, '', 'luna.jpg', '', '1467502215luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:30:15', '0000-00-00 00:00:00'),
(504, 0, 158, 0, 0, '', 'luna.jpg', '', '1467502319luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:31:59', '0000-00-00 00:00:00'),
(505, 0, 158, 0, 0, '', 'luna.jpg', '', '1467502333luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:32:13', '0000-00-00 00:00:00'),
(506, 0, 158, 0, 0, '', 'luna.jpg', '', '1467502384luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:33:04', '0000-00-00 00:00:00'),
(507, 0, 158, 0, 0, '', 'luna.jpg', '', '1467502393luna.jpg', '', '', '', 0, 'vasquezdvasquezd1467501380', 1, 0, 0, '', '2016-07-02 23:33:13', '0000-00-00 00:00:00'),
(508, 0, 179, 0, 0, '', 'Koala.jpg', '', '1467586829Koala.jpg', '', '', '', 0, 'vasquezd1061467586820', 1, 0, 0, '', '2016-07-03 23:00:29', '0000-00-00 00:00:00'),
(509, 0, 180, 0, 0, '', 'background_20.jpg', '', '1467586862background_20.jpg', '', '', '', 0, 'vasquezdbrian1467586845', 1, 0, 0, '', '2016-07-03 23:01:02', '0000-00-00 00:00:00'),
(510, 0, 180, 0, 0, '', 'background_20.jpg', '', '1467586868background_20.jpg', '', '', '', 0, 'vasquezdbrian1467586845', 1, 0, 0, '', '2016-07-03 23:01:08', '0000-00-00 00:00:00'),
(511, 0, 183, 0, 0, '', 'background_22.jpg', '', '1467587623background_22.jpg', '', '', '', 0, 'brianvasquezd1467587616', 1, 0, 0, '', '2016-07-03 23:13:43', '0000-00-00 00:00:00'),
(512, 0, 184, 0, 0, '', 'background_22.jpg', '', '1467588031background_22.jpg', '', '', '', 0, 'vasquezdvasquezd1467588014', 1, 0, 0, '', '2016-07-03 23:20:31', '0000-00-00 00:00:00'),
(513, 0, 184, 0, 0, '', 'background_22.jpg', '', '1467588038background_22.jpg', '', '', '', 0, 'vasquezdvasquezd1467588014', 1, 0, 0, '', '2016-07-03 23:20:38', '0000-00-00 00:00:00'),
(514, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588047background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:20:47', '0000-00-00 00:00:00'),
(515, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588057background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:20:57', '0000-00-00 00:00:00'),
(516, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588066background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:21:06', '0000-00-00 00:00:00'),
(517, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588122background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:22:02', '0000-00-00 00:00:00'),
(518, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588132background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:22:12', '0000-00-00 00:00:00'),
(519, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588143background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:22:23', '0000-00-00 00:00:00'),
(520, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588150background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:22:30', '0000-00-00 00:00:00'),
(521, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588192background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:23:12', '0000-00-00 00:00:00'),
(522, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588218background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:23:38', '0000-00-00 00:00:00'),
(523, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588233background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:23:53', '0000-00-00 00:00:00'),
(524, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588243background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:24:03', '0000-00-00 00:00:00'),
(525, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588290background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:24:50', '0000-00-00 00:00:00'),
(526, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588305background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:25:05', '0000-00-00 00:00:00'),
(527, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588316background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:25:16', '0000-00-00 00:00:00'),
(528, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588385background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:26:25', '0000-00-00 00:00:00'),
(529, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588450background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:27:30', '0000-00-00 00:00:00'),
(530, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588456background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:27:36', '0000-00-00 00:00:00'),
(531, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588465background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:27:45', '0000-00-00 00:00:00'),
(532, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588497background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:28:17', '0000-00-00 00:00:00'),
(533, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588504background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:28:24', '0000-00-00 00:00:00'),
(534, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588557background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:29:17', '0000-00-00 00:00:00'),
(535, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588565background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:29:25', '0000-00-00 00:00:00'),
(536, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588603background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:30:03', '0000-00-00 00:00:00'),
(537, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588628background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:30:28', '0000-00-00 00:00:00'),
(538, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588674background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:31:14', '0000-00-00 00:00:00'),
(539, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588703background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:31:43', '0000-00-00 00:00:00'),
(540, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588713background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:31:53', '0000-00-00 00:00:00'),
(541, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588729background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:32:09', '0000-00-00 00:00:00'),
(542, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588737background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:32:17', '0000-00-00 00:00:00'),
(543, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588774background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:32:54', '0000-00-00 00:00:00'),
(544, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588823background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:33:43', '0000-00-00 00:00:00'),
(545, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588843background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:34:03', '0000-00-00 00:00:00'),
(546, 0, 185, 0, 0, '', 'background_5.jpg', '', '1467588859background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, 0, '', '2016-07-03 23:34:19', '0000-00-00 00:00:00'),
(547, 0, 0, 0, 0, 'file', 'noun_19368.png', 'png', '1468101241noun_19368.png', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1468101241noun_19368.png', '---------0-', 1, 'vasquezd', 1, 0, 0, '', '2016-07-09 21:54:01', '2016-07-09 21:54:01'),
(548, 0, 189, 0, 0, '', 'background_7.jpg', '', '1468111604background_7.jpg', '', '', '', 0, 'vasquezdvasquezd1468111599', 1, 0, 0, '', '2016-07-10 00:46:44', '0000-00-00 00:00:00'),
(549, 0, 190, 0, 0, '', 'background_6.jpg', '', '1468186941background_6.jpg', '', '', '', 0, 'vasquezd1061468186935', 1, 0, 0, '', '2016-07-10 21:42:21', '0000-00-00 00:00:00'),
(550, 0, 190, 0, 0, '', 'background_6.jpg', '', '1468189054background_6.jpg', '', '', '', 0, 'vasquezd1061468186935', 1, 0, 0, '', '2016-07-10 22:17:34', '0000-00-00 00:00:00'),
(551, 0, 190, 0, 0, '', 'background_6.jpg', '', '1468189063background_6.jpg', '', '', '', 0, 'vasquezd1061468186935', 1, 0, 0, '', '2016-07-10 22:17:43', '0000-00-00 00:00:00'),
(552, 0, 190, 0, 0, '', 'background_6.jpg', '', '1468189087background_6.jpg', '', '', '', 0, 'vasquezd1061468186935', 1, 0, 0, '', '2016-07-10 22:18:07', '0000-00-00 00:00:00'),
(553, 0, 190, 0, 0, '', 'background_6.jpg', '', '1468189110background_6.jpg', '', '', '', 0, 'vasquezd1061468186935', 1, 0, 0, '', '2016-07-10 22:18:30', '0000-00-00 00:00:00'),
(554, 0, 190, 0, 0, '', 'background_6.jpg', '', '1468189141background_6.jpg', '', '', '', 0, 'vasquezd1061468186935', 1, 0, 0, '', '2016-07-10 22:19:01', '0000-00-00 00:00:00'),
(555, 0, 190, 0, 0, '', 'background_6.jpg', '', '1468189160background_6.jpg', '', '', '', 0, 'vasquezd1061468186935', 1, 0, 0, '', '2016-07-10 22:19:20', '0000-00-00 00:00:00'),
(556, 0, 190, 0, 0, '', 'background_6.jpg', '', '1468189186background_6.jpg', '', '', '', 0, 'vasquezd1061468186935', 1, 0, 0, '', '2016-07-10 22:19:46', '0000-00-00 00:00:00'),
(557, 106, 0, 0, 1, 'new', 'folder.png', '', 'folder.png', 'folder.png', 'folder.png', '---------0-', 1, 'vasquezd', 1, 0, 0, '1468276092249', '2016-07-11 22:28:12', '0000-00-00 00:00:00'),
(558, 0, 0, 0, 1, 'Music', 'folder.png', '', 'folder.png', 'folder.png', 'folder.png', '---------0-', 1, 'vasquezd', 1, 0, 0, '1468354042267', '2016-07-12 20:07:22', '0000-00-00 00:00:00'),
(559, 0, 198, 0, 0, '', 'background_6.jpg', '', '1469144583background_6.jpg', '', '', '', 0, 'vasquezdvasquezd1469144577', 1, 0, 0, '', '2016-07-21 23:43:03', '0000-00-00 00:00:00'),
(560, 0, 199, 0, 0, '', 'background_26.jpg', '', '1469144589background_26.jpg', '', '', '', 0, 'vasquezdvasquezd1469144583', 1, 0, 0, '', '2016-07-21 23:43:09', '0000-00-00 00:00:00'),
(561, 0, 200, 0, 0, '', 'background_75.jpg', '', '1469227451background_75.jpg', '', '', '', 0, 'brianbrian1469227427', 1, 0, 0, '', '2016-07-22 22:44:11', '0000-00-00 00:00:00'),
(562, 0, 200, 0, 0, '', 'background_75.jpg', '', '1469227457background_75.jpg', '', '', '', 0, 'brianbrian1469227427', 1, 0, 0, '', '2016-07-22 22:44:17', '0000-00-00 00:00:00'),
(563, 0, 0, 0, 0, 'file', 'Desert.jpg', 'jpg', '1469918550Desert.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1469918550Desert.jpg', '---------0-', 1, 'vasquezd', 1, 0, 0, '', '2016-07-30 22:42:30', '2016-07-30 22:42:30'),
(564, 0, 0, 0, 1, 'new', 'folder.png', '', 'folder.png', 'folder.png', 'folder.png', '---------0-', 1, 'vasquezd', 1, 0, 0, '1469918591714', '2016-07-30 22:43:11', '0000-00-00 00:00:00'),
(565, 0, 0, 0, 1, 'also ', 'folder.png', '', 'folder.png', 'folder.png', 'folder.png', '---------0-', 1, 'vasquezd', 1, 0, 0, '1469918607385', '2016-07-30 22:43:27', '0000-00-00 00:00:00'),
(566, 0, 204, 0, 0, '', 'background_5.jpg', '', '1470004128background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1470004116', 1, 0, 0, '', '2016-07-31 22:28:48', '0000-00-00 00:00:00'),
(567, 0, 204, 0, 0, '', 'background_5.jpg', '', '1470004131background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1470004116', 1, 0, 0, '', '2016-07-31 22:28:51', '0000-00-00 00:00:00'),
(568, 0, 204, 0, 0, '', 'background_5.jpg', '', '1470004134background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1470004116', 1, 0, 0, '', '2016-07-31 22:28:54', '0000-00-00 00:00:00'),
(569, 0, 204, 0, 0, '', 'background_5.jpg', '', '1470004136background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1470004116', 1, 0, 0, '', '2016-07-31 22:28:56', '0000-00-00 00:00:00'),
(570, 0, 204, 0, 0, '', 'background_5.jpg', '', '1470004140background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1470004116', 1, 0, 0, '', '2016-07-31 22:29:00', '0000-00-00 00:00:00'),
(571, 0, 204, 0, 0, '', 'background_5.jpg', '', '1470004145background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1470004116', 1, 0, 0, '', '2016-07-31 22:29:05', '0000-00-00 00:00:00'),
(572, 0, 204, 0, 0, '', 'background_5.jpg', '', '1470004151background_5.jpg', '', '', '', 0, 'vasquezdvasquezd1470004116', 1, 0, 0, '', '2016-07-31 22:29:11', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`file_id`, `square_id`, `group_id`, `user_id`, `user_name`, `folder_name_long`, `folder_name_system`, `image_name`, `folder_root`, `folder_path`, `folder_created`, `folder_last_modified`, `folder_location`, `folder_name`) VALUES
(1, 0, 0, 0, 'vasquezk', '', '', '', '', '', '2016-06-16 20:11:20', '0000-00-00 00:00:00', '', 'vasquezk'),
(2, 0, 0, 0, 'newtest', '', '', '', '', '', '2016-06-18 23:27:36', '0000-00-00 00:00:00', '', 'newtest'),
(3, 0, 0, 0, 'koala', '', '', '', '', '', '2016-07-25 22:58:24', '0000-00-00 00:00:00', '', 'koala');

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
  `friend_key` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`friends_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=192 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friends_id`, `user_name`, `user_id`, `friend_user_name`, `friend_id`, `friend_key`, `created`) VALUES
(184, 'vasquezd', 1, 'matt', 2, 'vasquezdmatt', '2016-07-25 23:40:07'),
(185, 'matt', 2, 'vasquezd', 1, 'mattvasquezd', '2016-07-25 23:40:07'),
(186, 'Becca', 6, 'kristen', 4, 'Beccakristen', '2016-07-26 20:56:21'),
(187, 'kristen', 4, 'Becca', 6, 'kristenBecca', '2016-07-26 20:56:21'),
(188, 'vasquezd', 1, 'kristen', 4, 'vasquezdkristen', '2016-07-26 20:56:33'),
(189, 'kristen', 4, 'vasquezd', 1, 'kristenvasquezd', '2016-07-26 20:56:33'),
(190, 'brian', 3, 'vasquezd', 1, 'brianvasquezd', '2016-07-30 23:33:42'),
(191, 'vasquezd', 1, 'brian', 3, 'vasquezdbrian', '2016-07-30 23:33:42');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=280 ;

--
-- Dumping data for table `group_users`
--

INSERT INTO `group_users` (`primary_id`, `group_id`, `user_name`, `active_member`, `created`, `updated`) VALUES
(240, 106, 'vasquezd', 1, '2016-04-30 21:20:58', '0000-00-00 00:00:00'),
(241, 106, 'brian', 1, '2016-04-30 21:20:58', '0000-00-00 00:00:00'),
(242, 106, 'Kristen', 1, '2016-04-30 21:20:58', '0000-00-00 00:00:00'),
(243, 106, 'matt', 1, '2016-06-03 22:35:30', '0000-00-00 00:00:00'),
(245, 107, 'brian', 1, '2016-06-03 23:21:27', '0000-00-00 00:00:00'),
(250, 109, 'brian', 0, '2016-06-14 23:37:55', '0000-00-00 00:00:00'),
(252, 109, 'Kristen', 1, '2016-06-14 23:37:55', '0000-00-00 00:00:00'),
(254, 110, 'brian', 0, '2016-06-19 21:20:58', '0000-00-00 00:00:00'),
(256, 110, 'Kristen', 1, '2016-06-19 21:20:58', '0000-00-00 00:00:00'),
(258, 111, 'brian', 0, '2016-06-19 22:18:52', '0000-00-00 00:00:00'),
(260, 111, 'Kristen', 1, '2016-06-19 22:18:52', '0000-00-00 00:00:00'),
(262, 112, 'brian', 0, '2016-06-19 22:26:48', '0000-00-00 00:00:00'),
(263, 112, 'newtest', 0, '2016-06-19 23:16:06', '0000-00-00 00:00:00'),
(264, 112, 'Kristen', 1, '2016-06-19 23:20:26', '0000-00-00 00:00:00'),
(266, 113, 'brian', 0, '2016-06-19 23:20:37', '0000-00-00 00:00:00'),
(268, 113, 'Kristen', 1, '2016-06-19 23:21:57', '0000-00-00 00:00:00'),
(269, 113, 'newtest', 0, '2016-06-19 23:22:33', '0000-00-00 00:00:00'),
(270, 107, 'Kristen', 1, '2016-06-19 23:23:02', '0000-00-00 00:00:00'),
(271, 107, 'newtest', 1, '2016-06-19 23:23:09', '0000-00-00 00:00:00'),
(272, 114, 'vasquezd', 1, '2016-06-19 23:23:20', '0000-00-00 00:00:00'),
(273, 114, 'brian', 0, '2016-06-19 23:23:20', '0000-00-00 00:00:00'),
(274, 115, 'vasquezd', 1, '2016-06-19 23:26:40', '0000-00-00 00:00:00'),
(275, 115, 'brian', 0, '2016-06-19 23:26:40', '0000-00-00 00:00:00'),
(276, 115, 'Kristen', 1, '2016-06-19 23:26:40', '0000-00-00 00:00:00'),
(278, 114, 'newtest', 0, '2016-06-24 22:12:59', '0000-00-00 00:00:00'),
(279, 106, 'newtest', 0, '2016-07-10 21:25:38', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=260 ;

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
(221, 0, '', 203, 0, 'http://www.youtube-mp3.org/', 'YouTube to mp3 Converter', 'vasquezd', 'vasquezd', 'youtube-mp3.png', 'youtube-mp3.png', '', '', 0, 0, '', 0, 1, 0, '2016-07-11 23:17:59', '2016-07-11 23:17:59'),
(222, 0, '', 203, 0, 'http://www.youtube-mp3.org/', 'YouTube to mp3 Converter', 'vasquezd', 'vasquezd', 'youtube-mp3.png', 'youtube-mp3.png', '', '', 0, 0, '', 0, 1, 0, '2016-07-11 23:18:01', '2016-07-11 23:18:01'),
(223, 0, 'wall_posts', 0, 0, 'https://www.yahoo.com/news/game-thrones-theory-correctly-addresses-202225548.html', 'This â€œGame of Thronesâ€ theory correctly addresses the weird plot hole about Aryaâ€™s storyline', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-06-15 22:14:01', '0000-00-00 00:00:00'),
(224, 106, '', 226, 0, 'https://www.yahoo.com/', 'Yahoo', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', 1, 0, 0, '2016-06-20 00:02:23', '0000-00-00 00:00:00'),
(225, 106, '', 204, 0, 'https://www.yahoo.com/', 'Yahoo', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', 1, 0, 0, '2016-07-11 22:28:51', '0000-00-00 00:00:00'),
(226, 106, 'yahoo', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2016-06-20 00:02:18', '0000-00-00 00:00:00'),
(227, 107, 'new folder level one ', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2016-06-20 00:06:21', '0000-00-00 00:00:00'),
(228, 114, 'My folders ', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2016-06-20 00:32:02', '0000-00-00 00:00:00'),
(229, 106, '', 0, 0, 'http://localhost/sites/divvy/site_files/index.php', 'ShareShare', 'matt', 'matt', 'none.jpg', 'none.jpg', '', '', 0, 0, '', 1, 0, 0, '2016-06-27 22:42:32', '0000-00-00 00:00:00'),
(230, 106, '', 0, 0, 'http://localhost/sites/divvy/site_files/index.php', 'ShareShare', 'matt', 'matt', 'none.jpg', 'none.jpg', '', '', 0, 0, '', 0, 1, 0, '2016-06-28 00:03:31', '2016-06-28 00:03:31'),
(231, 106, '', 0, 0, 'http://localhost/sites/divvy/site_files/index.php', 'ShareShare', 'matt', 'matt', 'none.jpg', 'none.jpg', '', '', 0, 0, '', 0, 1, 0, '2016-06-28 00:03:41', '2016-06-28 00:03:41'),
(232, 106, '', 0, 0, 'http://localhost/sites/divvy/site_files/index.php', 'ShareShare', 'matt', 'matt', 'none.jpg', 'none.jpg', '', '', 0, 0, '', 0, 1, 0, '2016-06-28 00:03:40', '2016-06-28 00:03:40'),
(233, 106, '', 0, 0, 'http://localhost/sites/divvy/site_files/index.php', 'ShareShare', 'matt', 'matt', 'none.jpg', 'none.jpg', '', '', 0, 0, '', 0, 1, 0, '2016-06-28 00:03:33', '2016-06-28 00:03:33'),
(234, 106, '', 0, 0, 'http://localhost/sites/divvy/site_files/index.php', 'ShareShare', 'matt', 'matt', 'none.jpg', 'none.jpg', '', '', 0, 0, '', 0, 1, 0, '2016-06-28 00:03:38', '2016-06-28 00:03:38'),
(235, 106, '', 0, 0, 'http://localhost/sites/divvy/site_files/index.php', 'ShareShare', 'matt', 'matt', 'none.jpg', 'none.jpg', '', '', 0, 0, '', 0, 1, 0, '2016-06-28 00:03:46', '2016-06-28 00:03:46'),
(236, 106, '', 0, 0, 'https://www.yahoo.com/', 'title not found', 'matt', 'matt', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', 1, 0, 0, '2016-06-28 00:03:52', '0000-00-00 00:00:00'),
(237, 106, '', 0, 0, 'www.shareshare.co', 'none.jpg', 'matt', 'matt', 'none.jpg', 'none.jpg', '', '', 0, 0, '', 0, 1, 0, '2016-06-28 00:07:04', '2016-06-28 00:07:04'),
(238, 106, '', 0, 0, 'https://www.yahoo.com/', 'title not found', 'matt', 'matt', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', 1, 0, 0, '2016-06-28 00:05:37', '0000-00-00 00:00:00'),
(239, 106, 'davids links', 0, 1, '', '', 'matt', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2016-06-28 00:05:44', '0000-00-00 00:00:00'),
(240, 106, '', 0, 0, 'www.facebook.com', 'none.jpg', 'matt', 'matt', '.png', '.png', '', '', 0, 0, '', 0, 1, 0, '2016-06-28 00:07:06', '2016-06-28 00:07:06'),
(241, 106, '', 0, 0, 'www.yahoo.com', 'none.jpg', 'matt', 'matt', '.png', '.png', '', '', 0, 0, '', 0, 1, 0, '2016-06-28 00:07:07', '2016-06-28 00:07:07'),
(242, 106, '', 0, 0, 'https://www.yahoo.com/news/istanbul-airport-suicide-bombers-000000377.html', 'Live: Suicide bombings rock Istanbul airport', 'matt', 'matt', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', 0, 1, 0, '2016-06-28 21:25:16', '2016-06-28 21:25:16'),
(243, 106, '', 0, 0, 'https://www.youtube.com/watch?v=-ES7-GATxDA', 'Koda - Angel - YouTube', 'matt', 'matt', 'youtube.png', 'youtube.png', '', '', 0, 0, '', 1, 0, 0, '2016-06-28 21:25:36', '0000-00-00 00:00:00'),
(244, 0, 'wall_posts', 0, 0, 'http://mesaboogie.com/amplifiers/electric/mark-series/mark-five-25/index.html', 'Mark Five 25 | MESA/BoogieÂ®', 'vasquezd', 'vasquezd', 'mesaboogie.png', 'mesaboogie.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-06-29 20:34:37', '0000-00-00 00:00:00'),
(245, 0, 'wall_posts', 0, 0, 'http://www.guitarcenter.com/Boss/DD-7-Digital-Delay-Guitar-Effects-Pedal.gc', 'Boss DD-7 Digital Delay Guitar Effects Pedal | Guitar Center', 'vasquezd', 'vasquezd', 'guitarcenter.png', 'guitarcenter.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-06-29 20:35:55', '0000-00-00 00:00:00'),
(246, 0, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=ZGlhIIuifSw', 'Alina Baraz &amp; Galimatias - Unfold - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-07-02 23:29:20', '0000-00-00 00:00:00'),
(247, 0, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=ZGlhIIuifSw', 'Alina Baraz &amp; Galimatias - Unfold - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-07-02 23:30:11', '0000-00-00 00:00:00'),
(248, 0, 'wall_posts', 0, 0, 'https://www.yahoo.com/style/now-house-belong-ilvermorny-jk-183824800.html', 'You can now find out what house you belong to in Ilvermorny, JK Rowlingâ€™s American wizard school', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-07-02 23:32:12', '0000-00-00 00:00:00'),
(249, 0, 'wall_posts', 0, 0, 'https://www.amazon.com/Harry-Potter-Sorcerers-Stone-Rowling/dp/059035342X/ref=sr_1_1?s=books&ie=UTF8&qid=1467502734&sr=1-1&keywords=harry+potter', 'Harry Potter and the Sorcerer&#39;s Stone: J.K. Rowling, Mary GrandPrÃ©: 0038332166576: Amazon.com: Books', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-07-02 23:39:31', '0000-00-00 00:00:00'),
(250, 0, 'wall_posts', 0, 0, 'https://www.amazon.com/Harry-Potter-Goblet-Fire-Rowling/dp/0439139600/ref=pd_sim_14_3?ie=UTF8&dpID=51OORp1XD1L&dpSrc=sims&preST=_AC_UL160_SR135%2C160_&psc=1&refRID=GQEF2CPHJE3M6RWB24ND', 'Harry Potter And The Goblet Of Fire: J.K. Rowling, Mary GrandPrÃ©: 8580001044828: Amazon.com: Books', 'matt', 'matt', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-07-02 23:40:36', '0000-00-00 00:00:00'),
(251, 0, 'Wall Posts', 0, 0, 'https://www.yahoo.com/', 'title not found', 'brian', 'brian', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-07-03 23:08:43', '0000-00-00 00:00:00'),
(252, 0, 'Wall Posts', 0, 0, 'https://www.yahoo.com/', 'title not found', 'brian', 'brian', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-07-03 23:09:13', '0000-00-00 00:00:00'),
(253, 0, 'Wall Posts', 0, 0, 'https://www.yahoo.com/', 'title not found', 'brian', 'brian', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-07-03 23:13:15', '0000-00-00 00:00:00'),
(254, 0, 'wall_posts', 0, 0, 'http://www.guitarcenter.com/Live-Wire/1-4-Angle-1-4-Angle-3-Patch-Cable-3-Pack.gc', 'Live Wire 1/4&quot; Angle-1/4&quot; Angle 3&quot; Patch Cable (3-Pack) | Guitar Center', 'vasquezd', 'vasquezd', 'guitarcenter.png', 'guitarcenter.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-07-09 21:45:41', '0000-00-00 00:00:00'),
(255, 0, 'wall_posts', 0, 0, 'http://www.guitarcenter.com/Live-Wire/Advantage-Series-1-4-Angled-Straight-Instrument-Cable.gc', 'Live Wire Advantage Series 1/4&quot; Angled - Straight Instrument Cable | Guitar Center', 'vasquezd', 'vasquezd', 'guitarcenter.png', 'guitarcenter.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-07-09 21:47:10', '0000-00-00 00:00:00'),
(256, 0, '', 0, 0, 'https://www.yahoo.com/', 'yahoo', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', 1, 0, 0, '2016-07-11 23:18:21', '0000-00-00 00:00:00'),
(257, 0, 'wall_posts', 0, 0, 'https://www.amazon.com/dp/B00I2TV3NO/ref=atv_hm_hom_1_c_s9tmrec_4_2?_encoding=UTF8&pf_rd_i=home&pf_rd_m=ATVPDKIKX0DER&pf_rd_p=2462757682&pf_rd_r=65PED00MYSVFP697B59J&pf_rd_s=center-11&pf_rd_t=12401', 'Amazon.com: The Hunger Games: Catching Fire: Jennifer Lawrence, Josh Hutcherson, Liam Hemsworth, Woody Harrelson: Amazon   Digital Services LLC', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-07-21 23:27:08', '0000-00-00 00:00:00'),
(258, 0, 'wall_posts', 0, 0, 'https://www.amazon.com/dp/B00YBX8QEO/ref=atv_hm_hom_1_c_s9ptoaec_2_2?_encoding=UTF8&pf_rd_i=home&pf_rd_m=ATVPDKIKX0DER&pf_rd_p=2559917282&pf_rd_r=JEGMAZFPE6D78324B8M3&pf_rd_s=center-6&pf_rd_t=12401', 'Amazon.com: Mr. Robot, Season 1: Ben Rappaport, Carly Chaikin, Martin Wallstrom, Portia Doubleday, Rami Malek, Christian Slater, Michel Gill, Sam Esmail: Amazon   Digital Services LLC', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-07-21 23:33:31', '0000-00-00 00:00:00'),
(259, 0, 'wall_posts', 0, 0, 'https://www.amazon.com/Redwall-Book-1-Brian-Jacques/dp/0142302376/ref=sr_1_1?ie=UTF8&qid=1469144062&sr=8-1&keywords=brian+jacques', 'Amazon.com: Redwall (Redwall, Book 1) (9780142302378): Brian Jacques, Gary Chalk: Books', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-07-21 23:34:52', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=219 ;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`list_primary_id`, `list_id`, `user_name`, `user_id`, `user_privilege`, `created_by`, `shared_with`, `list_type`, `list_name`, `group_id`, `unique_key`, `active_status`, `recycle_status`, `updated`, `created`) VALUES
(214, 214, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'wishlist', 'This Is A New List', 0, '2d9b662c34b55109d5d608257f459a37', 1, 0, '2016-08-13 22:59:25', '2016-08-07 22:01:20'),
(215, 215, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'wishlist', 'Also this is too', 0, 'ff61e712a26fa4ab833ff1e0fa732217', 0, 0, '2016-08-13 21:24:00', '2016-08-07 22:01:27'),
(216, 216, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'wishlist', 'list 216', 0, 'cafb639dc700dd6c9147d74e827e13d8', 0, 0, '2016-08-11 22:48:57', '2016-08-07 22:03:09'),
(217, 217, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'wishlist', 'Guitar Equipment', 0, 'd8e08c21d0ec2af2b2ca207859125d58', 1, 0, '2016-08-13 22:58:04', '2016-08-12 20:29:09'),
(218, 218, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'wishlist', 'Birthday Ideas', 0, '8d52aaf10949071c36fa73091e4da234', 1, 0, '2016-08-13 22:54:34', '2016-08-13 21:24:13');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=160 ;

--
-- Dumping data for table `list_users`
--

INSERT INTO `list_users` (`primary_id`, `list_id`, `user_name`, `user_privilege`, `active_member`, `created`, `updated`) VALUES
(155, 214, 'vasquezd', 'own', 1, '2016-08-07 22:01:20', '0000-00-00 00:00:00'),
(156, 215, 'vasquezd', 'own', 1, '2016-08-07 22:01:27', '0000-00-00 00:00:00'),
(157, 216, 'vasquezd', 'own', 1, '2016-08-07 22:03:09', '0000-00-00 00:00:00'),
(158, 217, 'vasquezd', 'own', 1, '2016-08-12 20:29:09', '0000-00-00 00:00:00'),
(159, 218, 'vasquezd', 'own', 1, '2016-08-13 21:24:13', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=136 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `notification_from`, `notification_to`, `notification_time`, `type`, `notification_header`, `category`, `sub_category`, `link_url`, `group_id`, `post_id`, `from_logged_in_user`, `status_unseen`, `clicked`) VALUES
(1, 'vasquezd', 'vasquezd', '2016-06-29 20:34:37', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 0, 0),
(2, 'vasquezd', 'vasquezd', '2016-06-29 20:35:55', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 0, 0),
(3, 'vasquezd', 'vasquezd', '2016-07-02 21:39:49', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(4, 'vasquezd', 'vasquezd', '2016-07-02 23:16:26', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(5, 'vasquezd', 'vasquezd', '2016-07-02 23:16:42', 'wall', 'posts', 'post_new_video', 'wall', '#', 0, 0, 1, 0, 0),
(6, 'vasquezd', 'vasquezd', '2016-07-02 23:16:49', 'wall', 'posts', 'post_new_video', 'wall', '#', 0, 0, 1, 0, 0),
(7, 'vasquezd', 'vasquezd', '2016-07-02 23:17:19', 'wall', 'posts', 'post_new_video', 'wall', '#', 0, 0, 1, 0, 0),
(8, 'vasquezd', 'vasquezd', '2016-07-02 23:18:19', 'wall', 'posts', 'post_new_video', 'wall', '#', 0, 0, 1, 0, 0),
(9, 'vasquezd', 'vasquezd', '2016-07-02 23:18:33', 'wall', 'posts', 'post_new_video', 'wall', '#', 0, 0, 1, 0, 0),
(10, 'vasquezd', 'vasquezd', '2016-07-02 23:22:47', 'wall', 'posts', 'post_new_video', 'wall', '#', 0, 0, 1, 0, 0),
(11, 'vasquezd', 'vasquezd', '2016-07-02 23:24:40', 'wall', 'posts', 'post_new_video', 'wall', '#', 0, 0, 1, 0, 0),
(12, 'vasquezd', 'vasquezd', '2016-07-02 23:25:30', 'wall', 'posts', 'post_new_video', 'wall', '#', 0, 0, 1, 0, 0),
(13, 'vasquezd', 'vasquezd', '2016-07-02 23:27:41', 'wall', 'posts', 'post_new_video', 'wall', '#', 0, 0, 1, 0, 0),
(14, 'vasquezd', 'vasquezd', '2016-07-02 23:28:17', 'wall', 'posts', 'post_new_video', 'wall', '#', 0, 0, 1, 0, 0),
(15, 'vasquezd', 'vasquezd', '2016-07-02 23:29:20', 'wall', 'posts', 'post_new_link', 'wall', '#', 0, 0, 1, 0, 0),
(16, 'vasquezd', 'vasquezd', '2016-07-02 23:30:11', 'wall', 'posts', 'post_new_link', 'wall', '#', 0, 0, 1, 0, 0),
(17, 'vasquezd', 'vasquezd', '2016-07-02 23:32:12', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 0, 0),
(18, 'vasquezd', 'vasquezd', '2016-07-02 23:33:10', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(19, 'vasquezd', 'vasquezd', '2016-07-02 23:33:18', 'wall', 'posts', 'post_new_file', 'wall', '#', 0, 0, 1, 0, 0),
(20, 'vasquezd', 'vasquezd', '2016-07-02 23:38:03', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(21, 'vasquezd', 'vasquezd', '2016-07-02 23:38:15', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(22, 'vasquezd', 'vasquezd', '2016-07-02 23:39:31', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 0, 0),
(23, 'matt', 'matt', '2016-07-02 23:40:36', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(24, 'vasquezd', 'vasquezd', '2016-07-03 22:33:54', 'wall', 'posts', 'post_comment', 'post', '#', 0, 157, 1, 0, 0),
(25, 'vasquezd', 'brian', '2016-07-03 23:01:02', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 0, 1, 0),
(26, 'brian', 'brian', '2016-07-03 23:08:43', 'wall', 'posts', 'post_new_link', 'wall', '#', 0, 0, 1, 1, 0),
(27, 'brian', 'brian', '2016-07-03 23:09:13', 'wall', 'posts', 'post_new_link', 'wall', '#', 0, 0, 1, 1, 0),
(28, 'brian', 'brian', '2016-07-03 23:11:42', 'wall', 'posts', 'post_new_link', 'wall', '#', 0, 0, 1, 1, 0),
(29, 'brian', 'brian', '2016-07-03 23:11:44', 'wall', 'posts', 'post_new_link', 'wall', '#', 0, 0, 1, 1, 0),
(30, 'brian', 'brian', '2016-07-03 23:12:31', 'wall', 'posts', 'post_new_link', 'wall', '#', 0, 0, 1, 1, 0),
(31, 'brian', 'brian', '2016-07-03 23:13:15', 'wall', 'posts', 'post_new_link', 'wall', '#', 0, 0, 1, 1, 0),
(32, 'brian', 'vasquezd', '2016-07-03 23:13:43', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 0, 0, 0),
(33, 'vasquezd', 'vasquezd', '2016-07-03 23:20:31', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(34, 'vasquezd', 'vasquezd', '2016-07-03 23:20:47', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(35, 'vasquezd', 'vasquezd', '2016-07-03 23:22:21', 'wall', 'posts', 'post_comment', 'post', '#', 0, 183, 1, 0, 0),
(36, 'vasquezd', 'vasquezd', '2016-07-03 23:22:29', 'wall', 'posts', 'post_comment', 'post', '#', 0, 183, 1, 0, 0),
(37, 'vasquezd', 'vasquezd', '2016-07-03 23:32:16', 'wall', 'posts', 'post_comment', 'post', '#', 0, 183, 1, 0, 0),
(38, 'vasquezd', 'vasquezd', '2016-07-09 21:45:41', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(39, 'vasquezd', 'vasquezd', '2016-07-09 21:47:10', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(40, 'vasquezd', 'vasquezd', '2016-07-10 00:46:44', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(41, 'vasquezd', 'newtest', '2016-07-10 21:25:39', 'group', 'existing_group', 'new_group', 'group', '#', 0, 0, 0, 1, 0),
(42, 'vasquezd', 'vasquezd', '2016-07-11 00:48:10', 'wall', 'posts', 'post_new_video', 'wall', '#', 0, 0, 1, 1, 0),
(43, 'vasquezd', 'brian', '2016-07-12 21:04:02', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(44, 'vasquezd', 'matt', '2016-07-12 21:04:02', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(45, 'vasquezd', 'matt', '2016-07-12 21:04:45', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(46, 'vasquezd', 'Kristen', '2016-07-12 21:04:45', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(47, 'matt', 'Kristen', '2016-07-12 21:39:10', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(48, 'matt', 'vasquezd', '2016-07-12 21:39:10', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(49, 'vasquezd', 'brian', '2016-07-13 21:56:46', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(50, 'vasquezd', 'newtest', '2016-07-13 21:56:46', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(51, 'vasquezd', 'matt', '2016-07-15 20:35:07', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(52, 'vasquezd', 'brian', '2016-07-15 20:35:11', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(53, 'vasquezd', 'Kristen', '2016-07-15 20:35:11', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(54, 'vasquezd', 'brian', '2016-07-15 20:43:38', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(55, 'vasquezd', 'matt', '2016-07-15 20:43:38', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(56, 'vasquezd', 'Kristen', '2016-07-15 20:43:40', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(57, 'vasquezd', 'brian', '2016-07-15 20:47:04', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(58, 'vasquezd', 'matt', '2016-07-15 20:47:04', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(59, 'vasquezd', 'brian', '2016-07-15 20:48:14', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(60, 'vasquezd', 'matt', '2016-07-15 20:48:14', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(61, 'vasquezd', 'brian', '2016-07-15 20:49:30', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(62, 'vasquezd', 'matt', '2016-07-15 20:49:30', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(63, 'vasquezd', 'Kristen', '2016-07-15 21:26:53', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(64, 'vasquezd', 'Kristen', '2016-07-15 21:27:41', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(65, 'vasquezd', 'Kristen', '2016-07-15 21:27:45', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(66, 'vasquezd', 'Kristen', '2016-07-15 21:29:41', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(67, 'vasquezd', 'brian', '2016-07-15 21:29:51', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(68, 'vasquezd', 'matt', '2016-07-15 21:29:51', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(69, 'vasquezd', 'Kristen', '2016-07-15 21:29:59', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(70, 'vasquezd', 'Kristen', '2016-07-15 21:30:03', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(71, 'vasquezd', 'brian', '2016-07-15 21:30:10', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(72, 'vasquezd', 'matt', '2016-07-15 21:30:10', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(73, 'vasquezd', 'Kristen', '2016-07-15 21:30:10', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(74, 'vasquezd', 'brian', '2016-07-15 21:30:13', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(75, 'vasquezd', 'matt', '2016-07-15 21:30:13', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(76, 'vasquezd', 'Kristen', '2016-07-15 21:30:13', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(77, 'vasquezd', 'matt', '2016-07-15 21:30:46', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(78, 'vasquezd', 'Kristen', '2016-07-15 21:31:27', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(79, 'vasquezd', 'matt', '2016-07-15 21:37:18', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(80, 'vasquezd', 'brian', '2016-07-15 21:37:26', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(81, 'vasquezd', 'matt', '2016-07-15 21:37:50', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(82, 'vasquezd', 'matt', '2016-07-15 21:38:08', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(83, 'vasquezd', 'Kristen', '2016-07-15 21:38:08', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(84, 'vasquezd', 'brian', '2016-07-20 22:13:25', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(85, 'vasquezd', 'matt', '2016-07-20 22:13:25', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(86, 'vasquezd', 'brian', '2016-07-21 23:24:44', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(87, 'vasquezd', 'matt', '2016-07-21 23:24:44', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(88, 'vasquezd', 'Kristen', '2016-07-21 23:24:44', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(89, 'vasquezd', 'brian', '2016-07-21 23:25:57', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(90, 'vasquezd', 'vasquezd', '2016-07-21 23:26:17', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(91, 'vasquezd', 'vasquezd', '2016-07-21 23:27:08', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(92, 'vasquezd', 'vasquezd', '2016-07-21 23:27:14', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(93, 'vasquezd', 'vasquezd', '2016-07-21 23:28:22', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(94, 'vasquezd', 'vasquezd', '2016-07-21 23:32:12', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(95, 'vasquezd', 'vasquezd', '2016-07-21 23:33:31', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(96, 'vasquezd', 'vasquezd', '2016-07-21 23:34:52', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(97, 'vasquezd', 'vasquezd', '2016-07-21 23:35:58', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(98, 'vasquezd', 'vasquezd', '2016-07-21 23:37:52', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(99, 'vasquezd', 'vasquezd', '2016-07-21 23:38:57', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(100, 'vasquezd', 'vasquezd', '2016-07-21 23:40:06', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(101, 'vasquezd', 'vasquezd', '2016-07-21 23:43:03', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(102, 'vasquezd', 'vasquezd', '2016-07-21 23:43:09', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(103, 'vasquezd', 'matt', '2016-07-22 20:59:53', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(104, 'brian', 'brian', '2016-07-22 22:44:11', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(105, 'brian', 'vasquezd', '2016-07-22 22:44:15', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(106, 'vasquezd', 'Becca', '2016-07-25 22:52:26', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(107, 'vasquezd', 'Sarah', '2016-07-25 22:52:27', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(108, 'becca', 'matt', '2016-07-25 22:54:01', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(109, 'becca', 'Kristen', '2016-07-25 22:54:03', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(110, 'becca', 'Aimee', '2016-07-25 22:54:03', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(111, 'becca', 'Sarah', '2016-07-25 22:54:05', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(112, 'becca', 'pop', '2016-07-25 22:54:06', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(113, 'becca', 'vasquezk', '2016-07-25 22:54:07', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(114, 'koala', 'Kristen', '2016-07-25 22:58:45', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(115, 'vasquezd', 'koala', '2016-07-25 23:08:49', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(116, 'vasquezd', 'matt', '2016-07-25 23:18:43', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(117, 'matt', 'vasquezd', '2016-07-25 23:20:30', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(118, 'matt', 'vasquezd', '2016-07-25 23:27:20', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(119, 'matt', 'vasquezd', '2016-07-25 23:30:59', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(120, 'matt', 'vasquezd', '2016-07-25 23:32:47', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(121, 'vasquezd', 'matt', '2016-07-25 23:34:40', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(122, 'matt', 'vasquezd', '2016-07-25 23:36:50', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(123, 'vasquezd', 'matt', '2016-07-25 23:38:08', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(124, 'matt', 'vasquezd', '2016-07-25 23:39:52', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(125, 'kristen', 'vasquezd', '2016-07-26 20:55:52', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(126, 'kristen', 'Sarah', '2016-07-26 20:55:55', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(127, 'kristen', 'brian', '2016-07-26 20:56:01', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(128, 'kristen', 'Becca', '2016-07-26 20:56:04', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(129, 'vasquezd', 'vasquezd', '2016-07-30 21:54:09', 'wall', 'posts', 'post_new_text', 'wall', '#', 1, 0, 1, 1, 0),
(130, 'vasquezd', 'vasquezd', '2016-07-30 21:54:24', 'wall', 'posts', 'post_new_text', 'wall', '#', 1, 0, 1, 1, 0),
(131, 'vasquezd', 'vasquezd', '2016-07-30 22:01:42', 'wall', 'posts', 'post_new_text', 'wall', '#', 1, 0, 1, 1, 0),
(132, 'vasquezd', 'brian', '2016-07-30 23:32:59', 'friend', 'new_friend', 'new_friend', 'friends', '#', 0, 0, 0, 1, 0),
(133, 'vasquezd', 'vasquezd', '2016-07-31 22:28:47', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(134, 'vasquezd', 'matt', '2016-08-06 23:28:33', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0),
(135, 'vasquezd', 'matt', '2016-08-06 23:29:38', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=316 ;

--
-- Dumping data for table `pending_requests`
--

INSERT INTO `pending_requests` (`primary_id`, `request_type`, `request_type_name`, `sent_by`, `sent_to`, `request_key`, `sent_to_email`, `square_id`, `group_id`, `list_id`, `status`, `updated`, `created`) VALUES
(307, 'friend', '', 'vasquezd', 'matt', 'vasquezdmatt', '', 0, 0, 0, 0, '2016-07-25 23:38:08', '0000-00-00 00:00:00'),
(308, 'friend', '', 'matt', 'vasquezd', 'mattvasquezd', '', 0, 0, 0, 0, '2016-07-25 23:39:52', '0000-00-00 00:00:00'),
(309, 'friend', '', 'kristen', 'vasquezd', 'kristenvasquezd', '', 0, 0, 0, 0, '2016-07-26 20:55:52', '0000-00-00 00:00:00'),
(310, 'friend', '', 'kristen', 'Sarah', 'kristenSarah', '', 0, 0, 0, 1, '2016-07-26 20:55:55', '0000-00-00 00:00:00'),
(311, 'friend', '', 'kristen', 'brian', 'kristenbrian', '', 0, 0, 0, 1, '2016-07-26 20:56:01', '0000-00-00 00:00:00'),
(312, 'friend', '', 'kristen', 'Becca', 'kristenBecca', '', 0, 0, 0, 0, '2016-07-26 20:56:04', '0000-00-00 00:00:00'),
(313, 'friend', '', 'vasquezd', 'brian', 'vasquezdbrian', '', 0, 0, 0, 0, '2016-07-30 23:32:59', '0000-00-00 00:00:00'),
(314, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 202, 1, '2016-08-06 23:28:33', '0000-00-00 00:00:00'),
(315, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 204, 1, '2016-08-06 23:29:38', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=205 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_master_type`, `category`, `parent`, `list_id`, `post_from`, `post_to`, `post_type`, `post_caption`, `post_url`, `video_code`, `image_url`, `file_url`, `file_name`, `article_title`, `article_text`, `contains_file`, `unique_id`, `post_status`, `purchased`, `purchased_by`, `comment_seen`, `updated`, `created`) VALUES
(134, 'shareshare', '', 0, 0, 'matt', '106', 'video', '', 'https://www.youtube.com/watch?v=MisLXxaagnM', 'MisLXxaagnM', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-27 22:21:43', '2016-06-27 22:21:43'),
(135, 'shareshare', 'null', 0, 0, 'matt', '106', 'photo', '', '', '', '1467066212background_20.jpg', '', '', '', '', 0, 'matt1061467066192', 1, 0, '', '0000-00-00 00:00:00', '2016-06-27 22:23:32', '2016-06-27 22:23:32'),
(136, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'Four days will quickly steep themselves in night;\nFour nights will quickly dream away the time;\nAnd then the moon, like to a silver bow\nNew-bent in heaven, shall behold the night\nOf our solemnities.', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-07-07 21:55:37', '2016-06-27 22:30:34'),
(137, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'this is also new', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-27 22:32:15', '2016-06-27 22:32:15'),
(138, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'and this too ', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-27 22:32:19', '2016-06-27 22:32:19'),
(139, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'and this ', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-27 22:32:22', '2016-06-27 22:32:22'),
(140, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'why didn''t that work ', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-27 22:32:29', '2016-06-27 22:32:29'),
(141, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'and t his ', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-27 22:32:33', '2016-06-27 22:32:33'),
(142, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'hello ', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-27 22:32:44', '2016-06-27 22:32:44'),
(143, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'nwe', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-27 22:36:39', '2016-06-27 22:36:39'),
(144, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'no!', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-27 22:36:44', '2016-06-27 22:36:44'),
(145, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'hi ', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-27 22:37:21', '2016-06-27 22:37:21'),
(146, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'hi', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-27 22:37:37', '2016-06-27 22:37:37'),
(147, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'Four days will quickly steep themselves in night;\nFour nights will quickly dream away the time;\nAnd then the moon, like to a silver bow\nNew-bent in heaven, shall behold the night\nOf our solemnities.', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-07-07 21:56:00', '2016-06-27 22:37:41'),
(148, 'shareshare', 'null', 0, 0, 'vasquezd', '106', 'photo', '', '', '', '1467067147background_5.jpg', '', '', '', '', 0, 'vasquezd1061467067143', 1, 0, '', '0000-00-00 00:00:00', '2016-06-27 22:39:07', '2016-06-27 22:39:07'),
(149, 'shareshare', 'null', 0, 0, 'matt', '106', 'photo', '', '', '', '1467067229background_6.jpg', '', '', '', '', 0, 'matt1061467067224', 1, 0, '', '0000-00-00 00:00:00', '2016-06-27 22:40:29', '2016-06-27 22:40:29'),
(150, 'shareshare', '', 0, 0, 'matt', '106', 'video', '', 'https://www.youtube.com/watch?v=MisLXxaagnM', 'MisLXxaagnM', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-27 22:40:46', '2016-06-27 22:40:46'),
(151, 'shareshare', 'null', 0, 0, 'matt', '106', 'photo', '', '', '', '1467149047background_28.jpg', '', '', '', '', 0, 'matt1061467149037', 1, 0, '', '0000-00-00 00:00:00', '2016-06-28 21:24:07', '2016-06-28 21:24:07'),
(152, 'shareshare', '', 0, 0, 'matt', '106', 'discussion', 'check this out!! ', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-28 21:24:15', '2016-06-28 21:24:15'),
(153, 'shareshare', '', 0, 0, 'matt', '106', 'discussion', 'I think its really cool', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-28 21:24:23', '2016-06-28 21:24:23'),
(154, 'wishlist', '', 0, 158, 'vasquezd', 'vasquezd', 'article', '', 'http://mesaboogie.com/amplifiers/electric/mark-series/mark-five-25/index.html', '', 'no_image.jpg', '', '', 'Mark Five 25 | MESA/BoogieÂ®', 'The 16.5 lb compact MARK FIVE: 25 combines the power of our most famous Mark Series Amps in an unbelievably small yet powerful package.', 0, '', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-06-30 05:34:34'),
(155, 'wishlist', '', 0, 158, 'vasquezd', 'vasquezd', 'article', '', 'http://www.guitarcenter.com/Boss/DD-7-Digital-Delay-Guitar-Effects-Pedal.gc', '', '5774312617bcb381185499.jpg', '', '', 'Boss DD-7 Digital Delay Guitar Effects Pedal | Guitar Center', 'Shop for the Boss DD-7 Digital Delay Guitar Effects Pedal and receive free shipping on your order and the guaranteed lowest price.', 0, '', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-06-30 05:35:52'),
(156, 'shareshare', 'null', 0, 0, 'vasquezd', '115', 'photo', '', '', '', '1467325988Desert.jpg', '', '', '', '', 0, 'vasquezd1151467325968', 1, 0, '', '0000-00-00 00:00:00', '2016-06-30 22:33:08', '2016-06-30 22:33:02'),
(157, 'shareshare', 'null', 0, 0, 'vasquezd', 'vasquezd', 'photo', 'this is really cool!', '', '', '1467501380luna.jpg', '', '', '', '', 0, 'vasquezdvasquezd1467495583', 1, 0, '', '0000-00-00 00:00:00', '2016-07-03 00:29:28', '2016-07-02 21:39:49'),
(158, 'shareshare', 'null', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1467502393luna.jpg', '', '', '', '', 0, 'vasquezdvasquezd1467501380', 0, 0, '', '0000-00-00 00:00:00', '2016-07-02 23:33:13', '2016-07-02 23:16:26'),
(159, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'video', 'I like this ', 'https://www.youtube.com/watch?v=fA8paY4oKoI', 'fA8paY4oKoI', '', '', '', '', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-07-02 23:17:15', '2016-07-02 23:16:42'),
(160, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'video', 'I like this ', 'https://www.youtube.com/watch?v=fA8paY4oKoI', 'fA8paY4oKoI', '', '', '', '', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-07-02 23:17:11', '2016-07-02 23:16:49'),
(161, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=fA8paY4oKoI', 'fA8paY4oKoI', '', '', '', '', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-07-02 23:20:32', '2016-07-02 23:17:19'),
(162, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=fA8paY4oKoI', 'fA8paY4oKoI', '', '', '', '', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-07-02 23:18:25', '2016-07-02 23:18:19'),
(163, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=fA8paY4oKoI', 'fA8paY4oKoI', '', '', '', '', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-07-02 23:20:11', '2016-07-02 23:18:33'),
(164, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=fA8paY4oKoI', 'fA8paY4oKoI', '', '', '', '', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-07-02 23:22:59', '2016-07-02 23:22:47'),
(165, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=ZGlhIIuifSw', 'ZGlhIIuifSw', '', '', '', '', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-07-02 23:27:52', '2016-07-02 23:24:40'),
(166, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=ZGlhIIuifSw', 'ZGlhIIuifSw', '', '', '', '', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-07-02 23:27:47', '2016-07-02 23:25:30'),
(167, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=ZGlhIIuifSw', 'ZGlhIIuifSw', '', '', '', '', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-07-02 23:28:13', '2016-07-02 23:27:41'),
(168, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=ZGlhIIuifSw', 'ZGlhIIuifSw', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-07-02 23:28:17', '2016-07-02 23:28:17'),
(169, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'link', '', 'https://www.youtube.com/watch?v=ZGlhIIuifSw', '', 'youtube.png', '', '', 'Alina Baraz &amp; Galimatias - Unfold - YouTube', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-07-02 23:30:21', '2016-07-02 23:29:20'),
(170, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'link', '', 'https://www.youtube.com/watch?v=ZGlhIIuifSw', '', 'youtube.png', '', '', 'Alina Baraz &amp; Galimatias - Unfold - YouTube', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-07-02 23:30:19', '2016-07-02 23:30:11'),
(171, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'article', '', 'https://www.yahoo.com/style/now-house-belong-ilvermorny-jk-183824800.html', '', '57784ef636382816401425.jpg', '', '', 'You can now find out what house you belong to in Ilvermorny, JK Rowlingâ€™s American wizard school', 'Ever sinceÂ we found out about Ilvermorny, the great North American equivalent to Hogwarts in J.K. Rowlingâ€™sÂ Wizarding World, we havenâ€™t been able toâ€¦', 0, '', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-07-03 08:32:09'),
(172, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'text', 'this is cool!', '', '', '', '', '', '', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-07-02 23:33:32', '2016-07-02 23:33:10'),
(173, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1467502398luna.jpg', 'luna.jpg', '', '', 1, '', 0, 0, '', '0000-00-00 00:00:00', '2016-07-02 23:33:28', '2016-07-02 23:33:18'),
(174, 'wishlist', '', 0, 0, 'vasquezd', 'vasquezd', 'article', '', 'https://www.amazon.com/Harry-Potter-Sorcerers-Stone-Rowling/dp/059035342X/ref=sr_1_1?s=books&ie=UTF8&qid=1467502734&sr=1-1&keywords=harry+potter', '', '577850a1748bf076781706.jpg', '', '', 'Harry Potter and the Sorcerers Stone: J.K. Rowling, Mary GrandP', 'Harry Potter and the Sorcerer&#39;s Stone [J.K. Rowling, Mary GrandPrÃ©] on Amazon.com. *FREE* shipping on qualifying offers. Harry Potter has no idea how famous he is. That&#39;s because he&#39;s being raised by his miserable aunt and uncle who are terrified Harry will learn that he&#39;s really a wizard', 0, '', 1, 1, 'vasquezd', '0000-00-00 00:00:00', '2016-07-15 23:02:03', '2016-07-03 08:39:29'),
(175, 'wishlist', '', 0, 0, 'matt', 'matt', 'article', '', 'https://www.amazon.com/Harry-Potter-Goblet-Fire-Rowling/dp/0439139600/ref=pd_sim_14_3?ie=UTF8&dpID=51OORp1XD1L&dpSrc=sims&preST=_AC_UL160_SR135%2C160_&psc=1&refRID=GQEF2CPHJE3M6RWB24ND', '', '577850edbd4cf631150457.jpg', '', '', 'Harry Potter And The Goblet Of Fire: J.K. Rowling, Mary GrandPrÃ©: 8580001044828: Amazon.com: Books', 'Buy Harry Potter And The Goblet Of Fire on Amazon.com âœ“ Free delivery on eligible orders', 0, '', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-07-03 08:40:34'),
(176, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'hi', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-07-03 22:52:34', '2016-07-03 22:52:34'),
(177, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'hello ', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-07-03 22:52:41', '2016-07-03 22:52:41'),
(178, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'Go, Philostrate,\nStir up the Athenian youth to merriments;\nAwake the pert and nimble spirit of mirth;\nTurn melancholy forth to funerals;\nThe pale companion is not for our pomp.', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-07-07 22:01:21', '2016-07-03 22:59:11'),
(179, 'shareshare', 'null', 0, 0, 'vasquezd', '106', 'photo', '', '', '', '1467586829Koala.jpg', '', '', '', '', 0, 'vasquezd1061467586820', 1, 0, '', '0000-00-00 00:00:00', '2016-07-03 23:00:29', '2016-07-03 23:00:29'),
(180, 'shareshare', 'null', 0, 0, 'vasquezd', 'brian', 'photo', '', '', '', '1467586868background_20.jpg', '', '', '', '', 0, 'vasquezdbrian1467586845', 1, 0, '', '0000-00-00 00:00:00', '2016-07-03 23:01:08', '2016-07-03 23:01:02'),
(181, 'shareshare', '', 0, 0, 'brian', 'brian', 'link', 'hiya ', 'https://www.yahoo.com/', '', 'yahoo.png', '', '', 'title not found', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-07-03 23:13:23', '2016-07-03 23:09:13'),
(182, 'shareshare', '', 0, 0, 'brian', 'brian', 'link', 'yahoo oh ya', 'https://www.yahoo.com/', '', 'yahoo.png', '', '', 'title not found', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-07-03 23:13:19', '2016-07-03 23:13:15'),
(183, 'shareshare', 'null', 0, 0, 'brian', 'vasquezd', 'photo', '', '', '', '1467587623background_22.jpg', '', '', '', '', 0, 'brianvasquezd1467587616', 1, 0, '', '0000-00-00 00:00:00', '2016-07-03 23:13:43', '2016-07-03 23:13:43'),
(184, 'shareshare', 'null', 0, 0, 'vasquezd', 'vasquezd', 'photo', 'this has a caption', '', '', '1467588038background_22.jpg', '', '', '', '', 0, 'vasquezdvasquezd1467588014', 1, 0, '', '0000-00-00 00:00:00', '2016-07-03 23:20:38', '2016-07-03 23:20:31'),
(185, 'shareshare', 'null', 0, 0, 'vasquezd', 'vasquezd', 'photo', 'this has a caption', '', '', '1467588859background_5.jpg', '', '', '', '', 0, 'vasquezdvasquezd1467588038', 1, 0, '', '0000-00-00 00:00:00', '2016-07-03 23:34:19', '2016-07-03 23:20:47'),
(186, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'this is new', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-07-08 22:22:26', '2016-07-08 22:22:26'),
(187, 'wishlist', '', 0, 151, 'vasquezd', 'vasquezd', 'article', '', 'http://www.guitarcenter.com/Live-Wire/1-4-Angle-1-4-Angle-3-Patch-Cable-3-Pack.gc', '', '5781707e793cc475271211.jpg', '', '', 'Live Wire 1/4&quot; Angle-1/4&quot; Angle 3&quot; Patch Cable (3-Pack) | Guitar Center', 'Shop for the Live Wire 1/4&quot; Angle-1/4&quot; Angle 3&quot; Patch Cable (3-Pack) and receive free shipping on your order and the guaranteed lowest price.', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-07-15 21:10:19', '2016-07-10 06:45:39'),
(188, 'wishlist', '', 0, 151, 'vasquezd', 'vasquezd', 'article', '', 'http://www.guitarcenter.com/Live-Wire/Advantage-Series-1-4-Angled-Straight-Instrument-Cable.gc', '', '578170cdeb803583860005.jpg', '', '', 'Live Wire Advantage Series 1/4&quot; Angled - Straight Instrument Cable | Guitar Center', 'Shop for the Live Wire Advantage Series 1/4&quot; Angled - Straight Instrument Cable and receive free shipping on your order and the guaranteed lowest price.', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-07-15 21:10:16', '2016-07-10 06:47:05'),
(189, 'shareshare', 'null', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1468111604background_7.jpg', '', '', '', '', 0, 'vasquezdvasquezd1468111599', 1, 0, '', '0000-00-00 00:00:00', '2016-07-10 00:46:44', '2016-07-10 00:46:44'),
(190, 'shareshare', 'null', 0, 0, 'vasquezd', '106', 'photo', '', '', '', '1468189186background_6.jpg', '', '', '', '', 0, 'vasquezd1061468186935', 1, 0, '', '0000-00-00 00:00:00', '2016-07-10 22:19:46', '2016-07-10 21:42:21'),
(191, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=k7Ycqsnkkaw', 'k7Ycqsnkkaw', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-07-11 00:48:10', '2016-07-11 00:48:10'),
(196, 'wishlist', 'null', 0, 193, 'vasquezd', 'vasquezd', 'item', '', '', '', '1468189186background_6.jpg', '', '', '', '', 0, 'vasquezdvasquezd1469144332', 1, 0, '', '0000-00-00 00:00:00', '2016-07-21 23:40:56', '2016-07-21 23:38:57'),
(197, 'shareshare', 'null', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1468189186background_6.jpg', '', '', '', '', 0, 'vasquezdvasquezd1469144391', 1, 0, '', '0000-00-00 00:00:00', '2016-07-21 23:40:39', '2016-07-21 23:40:06'),
(198, 'wishlist', 'null', 0, 193, 'vasquezd', 'vasquezd', 'item', '', '', '', '1469144583background_6.jpg', '', '', '', '', 0, 'vasquezdvasquezd1469144577', 1, 0, '', '0000-00-00 00:00:00', '2016-07-21 23:43:03', '2016-07-21 23:43:03'),
(199, 'wishlist', 'null', 0, 193, 'vasquezd', 'vasquezd', 'item', '', '', '', '1469144589background_26.jpg', '', '', '', '', 0, 'vasquezdvasquezd1469144583', 1, 0, '', '0000-00-00 00:00:00', '2016-07-21 23:43:09', '2016-07-21 23:43:09'),
(200, 'wishlist', 'null', 0, 199, 'brian', 'brian', 'item', 'This is shared with david who can view', '', '', '1469227457background_75.jpg', '', '', '', '', 0, 'brianbrian1469227427', 1, 1, 'vasquezd', '0000-00-00 00:00:00', '2016-07-22 23:06:43', '2016-07-22 22:44:11'),
(201, 'story', '', 1, 1, 'vasquezd', 'vasquezd', 'na', 'hi', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-07-30 21:54:09', '2016-07-30 21:54:09'),
(202, 'story', '', 1, 1, 'vasquezd', 'vasquezd', 'na', 'hi', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-07-30 21:54:24', '2016-07-30 21:54:24'),
(203, 'story', '', 1, 1, 'vasquezd', 'vasquezd', 'na', 'new on top', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-07-30 22:01:42', '2016-07-30 22:01:42'),
(204, 'celeb', 'music', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1470004151background_5.jpg', '', '', '', '', 0, 'vasquezdvasquezd1470004116', 1, 0, '', '0000-00-00 00:00:00', '2016-07-31 22:29:11', '2016-08-01 07:28:47');

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
  `fight_date_year` int(11) NOT NULL,
  `fight_date_month` int(11) NOT NULL,
  `fight_date_day` int(11) NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `video_embed_code` varchar(255) NOT NULL,
  `fight_image` varchar(255) NOT NULL,
  PRIMARY KEY (`fight_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=218 ;

--
-- Dumping data for table `posts_fights`
--

INSERT INTO `posts_fights` (`fight_id`, `fight_primary_fighter`, `fight_primary_fighter_id`, `fight_primary_fighter_name`, `fight_primary_wins`, `fight_primary_losses`, `fight_primary_draws`, `fight_info`, `fight_number`, `fight_opponent`, `fight_opponent_wins`, `fight_opponent_losses`, `fight_opponent_draws`, `fight_outcome`, `fight_outcome_type`, `fight_final_round`, `fight_date_year`, `fight_date_month`, `fight_date_day`, `video_code`, `video_url`, `video_embed_code`, `fight_image`) VALUES
(201, 'foreman', 2, 'George Foreman ', 0, 0, 0, '', 1, 'Don Waldheim', 5, 4, 2, 'win', 'TKO', 3, 1969, 6, 23, '7R3tKaZ_HBk', 'https://www.youtube.com/watch?v=7R3tKaZ_HBk', '<iframe width="420" height="315" src="https://www.youtube.com/embed/7R3tKaZ_HBk" frameborder="0" allowfullscreen></iframe>', ''),
(202, 'foreman', 2, 'George Foreman ', 2, 0, 0, '', 1, 'Fred Askew', 2, 6, 1, 'win', 'KO', 1, 1969, 7, 1, '', '', '', ''),
(204, 'foreman', 2, 'George Foreman ', 27, 0, 0, '', 28, 'Gregorio Peralta', 82, 6, 8, 'win', 'decision', 10, 1970, 5, 10, 'UwZaZ1sSBSM', 'https://www.youtube.com/watch?v=UwZaZ1sSBSM', '<iframe width="420" height="315" src="https://www.youtube.com/embed/UwZaZ1sSBSM" frameborder="0" allowfullscreen></iframe>', ''),
(205, 'foreman', 2, 'George Foreman ', 23, 0, 0, '', 24, 'Boone Kirkman', 22, 1, 0, 'win', 'TKO', 2, 1970, 11, 18, 'zk3Y-JlMa0c', 'https://www.youtube.com/watch?v=zk3Y-JlMa0c', '<iframe width="420" height="315" src="https://www.youtube.com/embed/zk3Y-JlMa0c" frameborder="0" allowfullscreen></iframe>', ''),
(213, 'tyson', 1, 'Mike Tyson', 0, 0, 0, '', 1, 'Hector Mercedes', 0, 3, 0, 'win', 'TKO', 1, 1985, 0, 6, 'UaxA6IVh9dE', 'https://www.youtube.com/watch?v=UaxA6IVh9dE', '<iframe width="420" height="315" src="https://www.youtube.com/embed/UaxA6IVh9dE" frameborder="0" allowfullscreen></iframe>', 'tyson_mercedes.jpg'),
(216, 'tyson', 1, 'Mike Tyson', 1, 0, 0, '', 2, 'Trent Singleton', 1, 3, 0, 'win', 'TKO', 1, 1985, 4, 10, '7GnZyqapq24', 'https://www.youtube.com/watch?v=7GnZyqapq24', '<iframe width="560" height="315" src="https://www.youtube.com/embed/7GnZyqapq24" frameborder="0" allowfullscreen></iframe>', 'Tyson_singleton.jpg'),
(217, 'tyson', 1, 'Mike Tyson', 2, 0, 0, '3', 3, 'Don Halpin', 10, 18, 0, 'win', 'KO', 4, 1985, 5, 23, 'eZhOy4wPXyw', 'https://www.youtube.com/watch?v=eZhOy4wPXyw', '<iframe width="560" height="315" src="https://www.youtube.com/embed/eZhOy4wPXyw" frameborder="0" allowfullscreen></iframe>', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=166 ;

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
(165, 204, 0, '', 1, 'vasquezd', '2016-07-31 22:28:53');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=176 ;

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
(175, 204, 0, '', 1, 'vasquezd', '2016-07-31 22:29:10');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=199 ;

--
-- Dumping data for table `user_analytics`
--

INSERT INTO `user_analytics` (`analytics_id`, `page_url`, `group_id`, `last_visit`, `total_visits`, `user_name`, `user_id`) VALUES
(186, 'group_discussion.php', 106, '2016-07-10 20:41:19', 370, 'vasquezd', 0),
(187, 'group_wall.php', 106, '2016-07-30 23:06:26', 306, 'vasquezd', 0),
(188, 'group_wall.php', 106, '2016-06-28 21:24:08', 51, 'matt', 0),
(189, 'group_discussion.php', 106, '2016-06-28 21:24:23', 9, 'matt', 0),
(190, 'group_files.php', 106, '2016-06-27 23:06:18', 1, 'matt', 0),
(191, 'group_links.php', 106, '2016-06-28 21:25:36', 30, 'matt', 0),
(192, 'group_links.php', 106, '2016-07-03 23:00:37', 5, 'vasquezd', 0),
(193, 'group_files.php', 106, '2016-07-11 22:28:12', 10, 'vasquezd', 0),
(194, 'group_wall.php', 114, '2016-07-10 00:50:48', 27, 'vasquezd', 0),
(195, 'group_wall.php', 115, '2016-06-30 22:33:12', 11, 'vasquezd', 0),
(196, 'group_discussion.php', 115, '2016-06-30 22:33:11', 0, 'vasquezd', 0),
(197, 'group_discussion.php', 114, '2016-07-09 21:51:13', 1, 'vasquezd', 0),
(198, 'group_discussion.php', 0, '2016-07-08 22:49:18', 0, 'vasquezd', 0);

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
(1, 'vasquezd', 1408593605, 'f62c9d59b1b2cbe2b6462784e1d6a550f1afbe85', '2016-08-14 22:01:14', '2016-07-30 23:33:20', 197, 'vasquezb'),
(2, 'matt', 1448946249, 'de85ef10d2853b10978ac6c8e0c37c354d3b6969', '2016-07-25 23:39:02', '2016-07-25 23:39:59', 28, 'vasquezb'),
(3, 'brian', 1448946380, 'ace622215c315ce82bfd153b63c7faeb218a17da', '2016-07-30 23:33:24', '2016-07-22 22:44:31', 5, 'vasquezb'),
(4, 'Kristen', 1448946380, 'e3ae7af8145e258b854728fc9cebe6c8891ee2a5', '2016-07-26 20:55:44', '2016-07-26 20:56:10', 4, 'vasquezb'),
(5, 'Aimee', 1448946380, '33f916c66f61bbf37a12105c8bb3e0fc8ea75fd6', '2015-12-14 05:02:39', '2015-12-01 05:28:26', 0, ''),
(6, 'Becca', 1448946503, 'ba342a034cc175fb24a1c3d59d190da0c31f0106', '2016-07-26 20:56:18', '2016-07-26 20:56:24', 3, ''),
(7, 'Sarah', 1448946503, '378d32da508020f682a238053fec6f307e0aa30a', '2015-12-09 01:42:10', '2015-12-09 01:40:36', 0, ''),
(8, 'chris', 1448946380, '80c96f63d24bc38382aca981ed2e262c22582605', '2015-12-19 04:01:14', '2015-12-16 22:18:50', 0, ''),
(9, 'pop', 1448946503, '851b0d429828f520537e2323a1c5f1cde21eee5d', '2015-12-01 05:31:10', '2015-12-01 05:31:10', 0, ''),
(39, 'vasquezk', 1466107880, '6d7cb2a50e2fbaaa22735cc31d0a0df53e9afb30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(40, 'koala', 1469487504, 'b374bd02cd57b12ee7dd84194745aeeec8a12cb3', '2016-07-25 23:09:28', '2016-07-25 23:09:33', 2, '');

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
(46, 1, 'vasquezd', 'Vasquezd@onid.orst.edu', '14712214651467493208david__1_1.jpg', 'David', 'Vasquez', 'Vasquezd', '', 'Oregon State ', '2016-04-03 21:33:50', '2014-08-21 18:00:05'),
(47, 2, 'matt', 'vasquezm@shareshare.com', 'matt.jpg', 'Matt', 'Vasquez', '', 'This is matts page!', '', '2015-12-01 04:55:10', '0000-00-00 00:00:00'),
(48, 3, 'brian', 'vasquezb@shareshare.com', 'brian.jpg', 'Brian', 'Vasquez', '', 'this is brian''s page! ', '', '2016-04-09 21:02:59', '0000-00-00 00:00:00'),
(49, 4, 'Kristen', 'vasquezj@shareshare.com', 'david.jpg', 'Kristen', 'Vasquez', '', 'this is my page!', '', '2015-12-03 03:25:43', '0000-00-00 00:00:00'),
(50, 5, 'Aimee', 'Aimeeaileen@mac.com', '1449476920image.jpeg', 'Aimee', 'Vasquez', 'Vasquez', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-07 08:28:40', '0000-00-00 00:00:00'),
(51, 6, 'Becca', 'Vasquezd@onid.orst.edu', 'Becca.jpg', 'Becca', 'Vasquez', 'vasquezma', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2016-04-09 21:03:19', '0000-00-00 00:00:00'),
(52, 7, 'Sarah', 'Vasquezd@onid.orst.edu', 'david.jpg', 'Sarah', 'Vasquez', 'Vasquezbb', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-01 04:57:23', '0000-00-00 00:00:00'),
(53, 8, 'chris', 'californiachristophe@gmail.com', '1450307134Screen.jpg', 'Chris', 'Vasquez', 'Vasquezdk', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-16 23:05:34', '0000-00-00 00:00:00'),
(54, 9, 'pop', 'Vasquezd@onid.orst.edu', 'david.jpg', 'Pop', 'Vasquez', 'vasquezbas', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-01 04:57:59', '0000-00-00 00:00:00'),
(55, 39, 'vasquezk', 'kristen@onid.orst.edu', 'david.jpg', 'kristen', 'vasquez', 'vasquezk', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-06-16 20:11:20'),
(56, 40, 'koala', 'koala@koala.com', 'david.jpg', 'koala', 'bear', 'koala', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-07-25 22:58:24');

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
(1, 'vasquezd', 1, 'Male', 'December 3', '155 NW Kings Blvd', 'Apartment 647', 'Corvallis', '97330', '97330', '', 'Medium', 'Medium', 'medium or large', '34 x 30 or 33 x 30', '', '', '12', ''),
(2, 'vasquezb', 3, '', 'May 28', '', '', '', '', '', '', 'large', 'large', 'medium or large', '34 x 30 or 33 x 30', '', '', '12', ''),
(3, 'chris', 8, '', 'March', '', '', '', '', '', '', 'XL', 'XL', '', '38 by 34', '', '', '11', ''),
(4, 'pop', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'Sarah', 7, '', '', 'sarah', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'Becca', 6, '', '', 'becca', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'Aimee', 5, '', '11/22/83', '', '', '', '', '', '', 'Girl large or extra large/ guy small', 'Girl large/ guy small or medium ', '', '', '', '', '', ''),
(8, 'Kristen', 4, '', '', 'kristen', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'Brian', 3, '', '', 'brian', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 'matt', 2, '', '', 'matt', '', '', '', '', '', '', '', '', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
