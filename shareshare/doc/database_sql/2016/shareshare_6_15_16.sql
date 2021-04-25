-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2016 at 02:19 AM
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
  `hashtag_created_by` varchar(255) NOT NULL,
  `status_seen` int(11) NOT NULL,
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`divvy_hashtag_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=259 ;

--
-- Dumping data for table `divvy_hashtag`
--

INSERT INTO `divvy_hashtag` (`divvy_hashtag_id`, `divvy_id`, `list_id`, `hashtag`, `hashtag_created_by`, `status_seen`, `updated`, `created`) VALUES
(253, 156, 155, 'dowork', 'vasquezd', 0, '0000-00-00 00:00:00', '2016-06-16 23:10:26'),
(254, 247, 155, 'met', 'vasquezd', 0, '2016-06-17 00:05:25', '2016-06-16 23:10:33'),
(255, 248, 155, 'tarrenmade', 'tarren', 0, '2016-06-16 23:50:22', '2016-06-16 23:11:57'),
(257, 247, 155, 'tarrenmade', 'tarren', 0, '2016-06-17 00:02:27', '2016-06-17 00:02:12'),
(258, 249, 155, 'dowork', 'vasquezd', 0, '0000-00-00 00:00:00', '2016-06-17 00:02:40');

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
  `image_url` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `divvy_status` int(11) NOT NULL,
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`divvy_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=251 ;

--
-- Dumping data for table `divvy_post`
--

INSERT INTO `divvy_post` (`divvy_id`, `parent`, `list_id`, `divvy_position`, `divvy_from`, `divvy_to`, `divvy_caption`, `image_url`, `file_name`, `unique_id`, `divvy_status`, `updated`, `created`) VALUES
(156, 1, 155, 66, 'vasquezd', 'vasquezd', 'item1 #dowork son @matt and @tarren and @vasquezd', '', '', '', 1, '2016-06-17 00:00:40', '2016-06-13 20:41:27'),
(247, 0, 155, 67, 'vasquezd', 'vasquezd', 'item 2  #met  @vasquezd and  @tarren #tarrenmade', '', '', 'd7841712b863ed1892467e7585ab1d77', 1, '2016-06-17 00:02:12', '2016-06-13 23:36:41'),
(248, 0, 155, 69, 'vasquezd', 'vasquezd', 'item3 #tarrenmade @vasquezd and @tarren', '', '', '24ed14845b0d1542eee81c7a65a12516', 1, '2016-06-17 00:01:02', '2016-06-13 23:36:42'),
(249, 0, 155, 70, 'vasquezd', 'vasquezd', 'item 4 #dowork', '', '', 'eebc9c0faf72546a264d49dcc5969221', 1, '2016-06-17 00:02:40', '2016-06-13 23:36:50'),
(250, 0, 155, 68, 'vasquezd', 'vasquezd', '', '', '', 'f908f649ead50cd77a35da31584c58ef', 0, '2016-06-16 23:10:02', '2016-06-16 23:01:54');

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
  `status_seen` int(11) NOT NULL,
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`divvy_users_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=261 ;

--
-- Dumping data for table `divvy_users`
--

INSERT INTO `divvy_users` (`divvy_users_id`, `divvy_id`, `list_id`, `divvy_from`, `divvy_to`, `status_seen`, `updated`, `created`) VALUES
(252, 248, 155, 'vasquezd', 'brian', 0, '2016-06-16 23:03:45', '2016-06-16 23:03:45'),
(253, 156, 155, 'vasquezd', 'matt', 0, '2016-06-16 23:33:40', '2016-06-16 23:32:27'),
(254, 156, 155, 'vasquezd', 'matt', 0, '2016-06-16 23:32:33', '2016-06-16 23:32:33'),
(255, 156, 155, 'vasquezd', 'tarren', 0, '2016-06-16 23:32:33', '2016-06-16 23:32:33'),
(256, 156, 155, 'vasquezd', 'vasquezd', 0, '2016-06-16 23:33:09', '2016-06-16 23:32:33'),
(257, 247, 155, 'vasquezd', 'vasquezd', 0, '2016-06-16 23:33:07', '2016-06-16 23:32:35'),
(258, 247, 155, 'vasquezd', 'tarren', 0, '2016-06-16 23:32:38', '2016-06-16 23:32:38'),
(259, 248, 155, 'vasquezd', 'vasquezd', 0, '2016-06-16 23:33:05', '2016-06-16 23:32:41'),
(260, 248, 155, 'vasquezd', 'tarren', 0, '2016-06-16 23:32:43', '2016-06-16 23:32:43');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=459 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `group_id`, `post_id`, `parent`, `is_folder`, `folder_name`, `file_name`, `file_type`, `file_name_server`, `file_path_server`, `file_image`, `file_path`, `user_id`, `user_name`, `file_status`, `file_seen`, `recycle_status`, `unique_id`, `file_created`, `file_last_modified`) VALUES
(378, 0, 0, 0, 0, 'file', 'Hydrangeas.jpg', 'jpg', '1465084859Hydrangeas.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1465084859Hydrangeas.jpg', '---------0-', 1, 'vasquezd', 0, 0, 0, '', '2016-06-05 00:00:59', '2016-06-05 00:00:59'),
(379, 106, 0, 0, 0, 'file', 'Desert.jpg', 'jpg', '1465084914Desert.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1465084914Desert.jpg', '---------0-', 1, 'vasquezd', 0, 0, 2147483647, '', '2016-06-05 00:01:54', '0000-00-00 00:00:00'),
(380, 0, 0, 0, 0, 'file', 'Jellyfish.jpg', 'jpg', '1465084919Jellyfish.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1465084919Jellyfish.jpg', '---------0-', 1, 'vasquezd', 0, 0, 2147483647, '', '2016-06-05 00:01:59', '0000-00-00 00:00:00'),
(381, 106, 0, 0, 0, 'file', 'Jellyfish.jpg', 'jpg', '1465084943Jellyfish.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1465084943Jellyfish.jpg', '---------0-', 1, 'vasquezd', 1, 0, 0, '', '2016-06-05 00:02:23', '2016-06-05 00:02:23'),
(382, 106, 0, 0, 0, 'file', 'Hydrangeas.jpg', 'jpg', '1465085063Hydrangeas.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1465085063Hydrangeas.jpg', '---------0-', 1, 'vasquezd', 1, 0, 0, '', '2016-06-05 00:04:23', '2016-06-05 00:04:23'),
(383, 0, 0, 386, 0, 'file', 'Tulips.jpg', 'jpg', '1465085105Tulips.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1465085105Tulips.jpg', '---------0-', 1, 'vasquezd', 1, 0, 0, '', '2016-06-05 00:05:05', '2016-06-05 00:05:05'),
(384, 0, 0, 0, 1, 'Davids Music', 'folder.png', '', 'folder.png', 'folder.png', 'folder.png', '---------0-', 1, 'vasquezd', 1, 0, 0, '1465085129535', '2016-06-05 00:05:29', '0000-00-00 00:00:00'),
(385, 106, 0, 0, 1, 'Group Folder', 'folder.png', '', 'folder.png', 'folder.png', 'folder.png', '---------0-', 1, 'vasquezd', 1, 0, 0, '1465085304825', '2016-06-05 00:08:24', '0000-00-00 00:00:00'),
(386, 0, 0, 0, 1, 'test', 'folder.png', '', 'folder.png', 'folder.png', 'folder.png', '---------0-', 1, 'vasquezd', 1, 0, 0, '1465246820015', '2016-06-06 21:00:20', '0000-00-00 00:00:00'),
(387, 0, 0, 384, 0, 'file', 'Chrysanthemum.jpg', 'jpg', '1465247120Chrysanthemum.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1465247120Chrysanthemum.jpg', '---------0-', 1, 'vasquezd', 1, 0, 0, '', '2016-06-06 21:05:20', '2016-06-06 21:05:20'),
(388, 0, 79, 0, 0, '', 'Desert.jpg', '', '1465249481Desert.jpg', '', '', '', 0, 'vasquezdvasquezd1465249469', 1, 0, 0, '', '2016-06-06 21:44:42', '0000-00-00 00:00:00'),
(389, 0, 80, 0, 0, '', 'Jellyfish.jpg', '', '1465249527Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1465249521', 1, 0, 0, '', '2016-06-06 21:45:27', '0000-00-00 00:00:00'),
(390, 0, 80, 0, 0, '', 'Jellyfish.jpg', '', '1465249555Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1465249521', 1, 0, 0, '', '2016-06-06 21:45:55', '0000-00-00 00:00:00'),
(391, 0, 80, 0, 0, '', 'Jellyfish.jpg', '', '1465249581Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1465249521', 1, 0, 0, '', '2016-06-06 21:46:21', '0000-00-00 00:00:00'),
(392, 0, 80, 0, 0, '', 'Jellyfish.jpg', '', '1465249639Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1465249521', 1, 0, 0, '', '2016-06-06 21:47:19', '0000-00-00 00:00:00'),
(393, 0, 81, 0, 0, '', 'Hydrangeas.jpg', '', '1465249643Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465249639', 1, 0, 0, '', '2016-06-06 21:47:23', '0000-00-00 00:00:00'),
(394, 0, 81, 0, 0, '', 'Hydrangeas.jpg', '', '1465249699Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465249639', 1, 0, 0, '', '2016-06-06 21:48:19', '0000-00-00 00:00:00'),
(395, 0, 81, 0, 0, '', 'Hydrangeas.jpg', '', '1465249762Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465249639', 1, 0, 0, '', '2016-06-06 21:49:22', '0000-00-00 00:00:00'),
(396, 0, 81, 0, 0, '', 'Hydrangeas.jpg', '', '1465249774Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465249639', 1, 0, 0, '', '2016-06-06 21:49:34', '0000-00-00 00:00:00'),
(397, 0, 81, 0, 0, '', 'Hydrangeas.jpg', '', '1465249811Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465249639', 1, 0, 0, '', '2016-06-06 21:50:11', '0000-00-00 00:00:00'),
(398, 0, 81, 0, 0, '', 'Hydrangeas.jpg', '', '1465249831Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465249639', 1, 0, 0, '', '2016-06-06 21:50:31', '0000-00-00 00:00:00'),
(399, 0, 81, 0, 0, '', 'Hydrangeas.jpg', '', '1465249843Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465249639', 1, 0, 0, '', '2016-06-06 21:50:43', '0000-00-00 00:00:00'),
(400, 0, 81, 0, 0, '', 'Hydrangeas.jpg', '', '1465249867Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465249639', 1, 0, 0, '', '2016-06-06 21:51:07', '0000-00-00 00:00:00'),
(401, 0, 81, 0, 0, '', 'Hydrangeas.jpg', '', '1465249903Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465249639', 1, 0, 0, '', '2016-06-06 21:51:43', '0000-00-00 00:00:00'),
(402, 0, 81, 0, 0, '', 'Hydrangeas.jpg', '', '1465250030Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465249639', 1, 0, 0, '', '2016-06-06 21:53:50', '0000-00-00 00:00:00'),
(403, 0, 81, 0, 0, '', 'Hydrangeas.jpg', '', '1465250118Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465249639', 1, 0, 0, '', '2016-06-06 21:55:18', '0000-00-00 00:00:00'),
(404, 0, 81, 0, 0, '', 'Hydrangeas.jpg', '', '1465250122Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465249639', 1, 0, 0, '', '2016-06-06 21:55:22', '0000-00-00 00:00:00'),
(405, 0, 81, 0, 0, '', 'Hydrangeas.jpg', '', '1465250124Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465249639', 1, 0, 0, '', '2016-06-06 21:55:24', '0000-00-00 00:00:00'),
(406, 0, 81, 0, 0, '', 'Hydrangeas.jpg', '', '1465250129Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465249639', 1, 0, 0, '', '2016-06-06 21:55:29', '0000-00-00 00:00:00'),
(407, 0, 82, 0, 0, '', 'Hydrangeas.jpg', '', '1465250835Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465250818', 1, 0, 0, '', '2016-06-06 22:07:15', '0000-00-00 00:00:00'),
(408, 0, 82, 0, 0, '', 'Hydrangeas.jpg', '', '1465250958Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465250818', 1, 0, 0, '', '2016-06-06 22:09:18', '0000-00-00 00:00:00'),
(409, 0, 83, 0, 0, '', 'Koala.jpg', '', '1465250963Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1465250958', 1, 0, 0, '', '2016-06-06 22:09:23', '0000-00-00 00:00:00'),
(410, 0, 83, 0, 0, '', 'Koala.jpg', '', '1465251052Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1465250958', 1, 0, 0, '', '2016-06-06 22:10:52', '0000-00-00 00:00:00'),
(411, 0, 84, 0, 0, '', 'Penguins.jpg', '', '1465251057Penguins.jpg', '', '', '', 0, 'vasquezdvasquezd1465251052', 1, 0, 0, '', '2016-06-06 22:10:57', '0000-00-00 00:00:00'),
(412, 0, 84, 0, 0, '', 'Penguins.jpg', '', '1465251116Penguins.jpg', '', '', '', 0, 'vasquezdvasquezd1465251052', 1, 0, 0, '', '2016-06-06 22:11:56', '0000-00-00 00:00:00'),
(413, 0, 84, 0, 0, '', 'Penguins.jpg', '', '1465251164Penguins.jpg', '', '', '', 0, 'vasquezdvasquezd1465251052', 1, 0, 0, '', '2016-06-06 22:12:44', '0000-00-00 00:00:00'),
(414, 0, 84, 0, 0, '', 'Penguins.jpg', '', '1465251507Penguins.jpg', '', '', '', 0, 'vasquezdvasquezd1465251052', 1, 0, 0, '', '2016-06-06 22:18:27', '0000-00-00 00:00:00'),
(415, 0, 87, 0, 0, '', 'Hydrangeas.jpg', '', '1465252475Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465252472', 1, 0, 0, '', '2016-06-06 22:34:35', '0000-00-00 00:00:00'),
(416, 0, 87, 0, 0, '', 'Hydrangeas.jpg', '', '1465252506Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465252472', 1, 0, 0, '', '2016-06-06 22:35:06', '0000-00-00 00:00:00'),
(417, 0, 88, 0, 0, '', 'Hydrangeas.jpg', '', '1465252510Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1465252506', 1, 0, 0, '', '2016-06-06 22:35:10', '0000-00-00 00:00:00'),
(418, 0, 89, 0, 0, '', 'Penguins.jpg', '', '1465252515Penguins.jpg', '', '', '', 0, 'vasquezdvasquezd1465252510', 1, 0, 0, '', '2016-06-06 22:35:15', '0000-00-00 00:00:00'),
(419, 0, 90, 0, 0, '', 'Koala.jpg', '', '1465252561Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1465252515', 1, 0, 0, '', '2016-06-06 22:36:01', '0000-00-00 00:00:00'),
(420, 0, 90, 0, 0, '', 'Koala.jpg', '', '1465252684Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1465252515', 1, 0, 0, '', '2016-06-06 22:38:04', '0000-00-00 00:00:00'),
(421, 0, 90, 0, 0, '', 'Koala.jpg', '', '1465252695Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1465252515', 1, 0, 0, '', '2016-06-06 22:38:15', '0000-00-00 00:00:00'),
(422, 0, 90, 0, 0, '', 'Koala.jpg', '', '1465252715Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1465252515', 1, 0, 0, '', '2016-06-06 22:38:36', '0000-00-00 00:00:00'),
(423, 0, 90, 0, 0, '', 'Koala.jpg', '', '1465252737Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1465252515', 1, 0, 0, '', '2016-06-06 22:38:57', '0000-00-00 00:00:00'),
(424, 0, 91, 0, 0, '', 'Koala.jpg', '', '1465252742Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1465252737', 1, 0, 0, '', '2016-06-06 22:39:02', '0000-00-00 00:00:00'),
(425, 0, 91, 0, 0, '', 'Koala.jpg', '', '1465252789Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1465252737', 1, 0, 0, '', '2016-06-06 22:39:49', '0000-00-00 00:00:00'),
(426, 0, 92, 0, 0, '', 'Penguins.jpg', '', '1465252793Penguins.jpg', '', '', '', 0, 'vasquezdvasquezd1465252789', 1, 0, 0, '', '2016-06-06 22:39:53', '0000-00-00 00:00:00'),
(427, 0, 92, 0, 0, '', 'Penguins.jpg', '', '1465252910Penguins.jpg', '', '', '', 0, 'vasquezdvasquezd1465252789', 1, 0, 0, '', '2016-06-06 22:41:50', '0000-00-00 00:00:00'),
(428, 0, 92, 0, 0, '', 'Penguins.jpg', '', '1465252932Penguins.jpg', '', '', '', 0, 'vasquezdvasquezd1465252789', 1, 0, 0, '', '2016-06-06 22:42:12', '0000-00-00 00:00:00'),
(429, 0, 92, 0, 0, '', 'Penguins.jpg', '', '1465253026Penguins.jpg', '', '', '', 0, 'vasquezdvasquezd1465252789', 1, 0, 0, '', '2016-06-06 22:43:46', '0000-00-00 00:00:00'),
(430, 0, 93, 0, 0, '', 'Desert.jpg', '', '1465253034Desert.jpg', '', '', '', 0, 'vasquezdvasquezd1465253026', 1, 0, 0, '', '2016-06-06 22:43:54', '0000-00-00 00:00:00'),
(431, 0, 94, 0, 0, '', 'Tulips.jpg', '', '1465253040Tulips.jpg', '', '', '', 0, 'vasquezdvasquezd1465253034', 1, 0, 0, '', '2016-06-06 22:44:00', '0000-00-00 00:00:00'),
(432, 0, 94, 0, 0, '', 'Tulips.jpg', '', '1465253090Tulips.jpg', '', '', '', 0, 'vasquezdvasquezd1465253034', 1, 0, 0, '', '2016-06-06 22:44:50', '0000-00-00 00:00:00'),
(433, 0, 95, 0, 0, '', 'Jellyfish.jpg', '', '1465253152Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1465253148', 1, 0, 0, '', '2016-06-06 22:45:52', '0000-00-00 00:00:00'),
(434, 0, 95, 0, 0, '', 'Jellyfish.jpg', '', '1465253386Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1465253148', 1, 0, 0, '', '2016-06-06 22:49:46', '0000-00-00 00:00:00'),
(435, 0, 96, 0, 0, '', 'Koala.jpg', '', '1465253395Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1465253386', 1, 0, 0, '', '2016-06-06 22:49:55', '0000-00-00 00:00:00'),
(436, 0, 97, 0, 0, '', 'Koala.jpg', '', '1465253922Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1465253913', 1, 0, 0, '', '2016-06-06 22:58:42', '0000-00-00 00:00:00'),
(437, 0, 98, 0, 0, '', '7b6487d69a713767508017745194950e.jpg', '', '14652539987b6487d69a713767508017745194950e.jpg', '', '', '', 0, 'vasquezdvasquezd1465253984', 1, 0, 0, '', '2016-06-06 22:59:58', '0000-00-00 00:00:00'),
(438, 0, 98, 0, 0, '', '7b6487d69a713767508017745194950e.jpg', '', '14652540017b6487d69a713767508017745194950e.jpg', '', '', '', 0, 'vasquezdvasquezd1465253984', 1, 0, 0, '', '2016-06-06 23:00:01', '0000-00-00 00:00:00'),
(439, 0, 98, 0, 0, '', '7b6487d69a713767508017745194950e.jpg', '', '14652541657b6487d69a713767508017745194950e.jpg', '', '', '', 0, 'vasquezdvasquezd1465253984', 1, 0, 0, '', '2016-06-06 23:02:45', '0000-00-00 00:00:00'),
(440, 0, 98, 0, 0, '', '7b6487d69a713767508017745194950e.jpg', '', '14652544457b6487d69a713767508017745194950e.jpg', '', '', '', 0, 'vasquezdvasquezd1465253984', 1, 0, 0, '', '2016-06-06 23:07:25', '0000-00-00 00:00:00'),
(441, 0, 108, 0, 0, '', 'laputa_by_megatruh-d9ify7k.jpg', '', '1465687931laputa_by_megatruh-d9ify7k.jpg', '', '', '', 0, 'vasquezdvasquezd1465687924', 1, 0, 0, '', '2016-06-11 23:32:12', '0000-00-00 00:00:00'),
(442, 0, 109, 0, 0, '', 'john_and_maus_by_megatruh-d8yakpq.jpg', '', '1465689064john_and_maus_by_megatruh-d8yakpq.jpg', '', '', '', 0, 'vasquezdvasquezd1465689059', 1, 0, 0, '', '2016-06-11 23:51:04', '0000-00-00 00:00:00'),
(443, 0, 109, 0, 0, '', 'john_and_maus_by_megatruh-d8yakpq.jpg', '', '1465689083john_and_maus_by_megatruh-d8yakpq.jpg', '', '', '', 0, 'vasquezdvasquezd1465689059', 1, 0, 0, '', '2016-06-11 23:51:23', '0000-00-00 00:00:00'),
(444, 0, 109, 0, 0, '', 'john_and_maus_by_megatruh-d8yakpq.jpg', '', '1465689106john_and_maus_by_megatruh-d8yakpq.jpg', '', '', '', 0, 'vasquezdvasquezd1465689059', 1, 0, 0, '', '2016-06-11 23:51:46', '0000-00-00 00:00:00'),
(445, 0, 110, 0, 0, '', 'laputa_by_megatruh-d9ify7k.jpg', '', '1465689462laputa_by_megatruh-d9ify7k.jpg', '', '', '', 0, 'vasquezdmatt1465689458', 1, 0, 0, '', '2016-06-11 23:57:42', '0000-00-00 00:00:00'),
(446, 0, 114, 0, 0, '', 'background_png_1.png', '', '1466025828background_png_1.png', '', '', '', 0, 'mattvasquezd1466025781', 1, 0, 0, '', '2016-06-15 21:23:48', '0000-00-00 00:00:00'),
(447, 0, 115, 0, 0, '', 'background_20.jpg', '', '1466027377background_20.jpg', '', '', '', 0, 'vasquezdvasquezd1466027369', 1, 0, 0, '', '2016-06-15 21:49:37', '0000-00-00 00:00:00'),
(448, 0, 115, 0, 0, '', 'background_20.jpg', '', '1466027461background_20.jpg', '', '', '', 0, 'vasquezdvasquezd1466027369', 1, 0, 0, '', '2016-06-15 21:51:01', '0000-00-00 00:00:00'),
(449, 0, 115, 0, 0, '', 'background_20.jpg', '', '1466027910background_20.jpg', '', '', '', 0, 'vasquezdvasquezd1466027369', 1, 0, 0, '', '2016-06-15 21:58:30', '0000-00-00 00:00:00'),
(450, 0, 116, 0, 0, '', 'background_70.jpg', '', '1466027937background_70.jpg', '', '', '', 0, 'vasquezdvasquezd1466027910', 1, 0, 0, '', '2016-06-15 21:58:57', '0000-00-00 00:00:00'),
(451, 0, 116, 0, 0, '', 'background_70.jpg', '', '1466028033background_70.jpg', '', '', '', 0, 'vasquezdvasquezd1466027910', 1, 0, 0, '', '2016-06-15 22:00:33', '0000-00-00 00:00:00'),
(452, 0, 116, 0, 0, '', 'background_70.jpg', '', '1466028105background_70.jpg', '', '', '', 0, 'vasquezdvasquezd1466027910', 1, 0, 0, '', '2016-06-15 22:01:45', '0000-00-00 00:00:00'),
(453, 0, 116, 0, 0, '', 'background_70.jpg', '', '1466028112background_70.jpg', '', '', '', 0, 'vasquezdvasquezd1466027910', 1, 0, 0, '', '2016-06-15 22:01:52', '0000-00-00 00:00:00'),
(454, 0, 116, 0, 0, '', 'background_70.jpg', '', '1466028194background_70.jpg', '', '', '', 0, 'vasquezdvasquezd1466027910', 1, 0, 0, '', '2016-06-15 22:03:14', '0000-00-00 00:00:00'),
(455, 0, 117, 0, 0, '', 'background_37.jpg', '', '1466028205background_37.jpg', '', '', '', 0, 'vasquezdvasquezd1466028194', 1, 0, 0, '', '2016-06-15 22:03:25', '0000-00-00 00:00:00'),
(456, 0, 117, 0, 0, '', 'background_37.jpg', '', '1466028242background_37.jpg', '', '', '', 0, 'vasquezdvasquezd1466028194', 1, 0, 0, '', '2016-06-15 22:04:02', '0000-00-00 00:00:00'),
(457, 0, 117, 0, 0, '', 'background_37.jpg', '', '1466028354background_37.jpg', '', '', '', 0, 'vasquezdvasquezd1466028194', 1, 0, 0, '', '2016-06-15 22:05:54', '0000-00-00 00:00:00'),
(458, 0, 117, 0, 0, '', 'background_37.jpg', '', '1466028372background_37.jpg', '', '', '', 0, 'vasquezdvasquezd1466028194', 1, 0, 0, '', '2016-06-15 22:06:12', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`file_id`, `square_id`, `group_id`, `user_id`, `user_name`, `folder_name_long`, `folder_name_system`, `image_name`, `folder_root`, `folder_path`, `folder_created`, `folder_last_modified`, `folder_location`, `folder_name`) VALUES
(1, 0, 0, 0, 'vasquezk', '', '', '', '', '', '2016-06-16 20:11:20', '0000-00-00 00:00:00', '', 'vasquezk');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=151 ;

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
(150, 'matt', 2, 'vasquezd', 1, 0, '2016-05-02 21:04:40');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=110 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_key`, `created_by`, `group_type`, `group_name`, `group_image`, `group_users`, `group_folders`, `group_messages`, `updated`, `created`) VALUES
(106, '0.16277800 1462051258572521ba27bda8.41905585', 'vasquezd', '', 'Our Music Group, David Matt Brian and Also anyone else who wants in', '', 106, 106, 106, '0000-00-00 00:00:00', '2016-04-30 21:20:58'),
(107, '0.61827700 1464996087575210f796f251.00746867', 'vasquezd', '', 'newy', '', 107, 107, 107, '0000-00-00 00:00:00', '2016-06-03 23:21:27'),
(108, '0.46597800 14649961125752111071c3a3.21693093', 'vasquezd', '', 'vasquezd''s Group', '', 108, 108, 108, '0000-00-00 00:00:00', '2016-06-03 23:21:52'),
(109, '0.03707100 146594747557609553090cf3.21608341', 'vasquezd', '', 'vasquezd''s Group', '', 109, 109, 109, '0000-00-00 00:00:00', '2016-06-14 23:37:55');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=253 ;

--
-- Dumping data for table `group_users`
--

INSERT INTO `group_users` (`primary_id`, `group_id`, `user_name`, `active_member`, `created`, `updated`) VALUES
(240, 106, 'vasquezd', 1, '2016-04-30 21:20:58', '0000-00-00 00:00:00'),
(241, 106, 'brian', 1, '2016-04-30 21:20:58', '0000-00-00 00:00:00'),
(242, 106, 'Kristen', 0, '2016-04-30 21:20:58', '0000-00-00 00:00:00'),
(243, 106, 'matt', 0, '2016-06-03 22:35:30', '0000-00-00 00:00:00'),
(244, 107, 'vasquezd', 1, '2016-06-03 23:21:27', '0000-00-00 00:00:00'),
(245, 107, 'brian', 0, '2016-06-03 23:21:27', '0000-00-00 00:00:00'),
(246, 107, 'matt', 0, '2016-06-03 23:21:27', '0000-00-00 00:00:00'),
(248, 108, 'matt', 1, '2016-06-03 23:21:52', '0000-00-00 00:00:00'),
(249, 109, 'vasquezd', 1, '2016-06-14 23:37:55', '0000-00-00 00:00:00'),
(250, 109, 'brian', 0, '2016-06-14 23:37:55', '0000-00-00 00:00:00'),
(251, 109, 'matt', 0, '2016-06-14 23:37:55', '0000-00-00 00:00:00'),
(252, 109, 'Kristen', 0, '2016-06-14 23:37:55', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=224 ;

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
(223, 0, 'wall_posts', 0, 0, 'https://www.yahoo.com/news/game-thrones-theory-correctly-addresses-202225548.html', 'This â€œGame of Thronesâ€ theory correctly addresses the weird plot hole about Aryaâ€™s storyline', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-06-15 22:14:01', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=683 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `notification_from`, `notification_to`, `notification_time`, `type`, `notification_header`, `category`, `sub_category`, `link_url`, `group_id`, `post_id`, `from_logged_in_user`, `status_unseen`, `clicked`) VALUES
(546, 'vasquezd', 'vasquezd', '2016-05-08 23:23:05', 'wall', 'posts', 'post_comment', 'post', '#', 0, 38, 1, 0, 0),
(547, 'vasquezd', 'vasquezd', '2016-05-08 23:23:13', 'wall', 'posts', 'post_comment', 'post', '#', 0, 38, 1, 0, 0),
(548, 'vasquezd', 'vasquezd', '2016-05-09 20:35:50', 'wall', 'posts', 'post_comment', 'post', '#', 0, 38, 1, 0, 0),
(549, 'vasquezd', 'vasquezd', '2016-05-13 22:59:45', 'wall', 'posts', 'post_new_video', 'wall', '#', 0, 0, 1, 0, 0),
(550, 'vasquezd', 'vasquezd', '2016-05-14 22:39:59', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(551, 'vasquezd', 'vasquezd', '2016-05-15 20:48:59', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 0, 0),
(552, 'vasquezd', 'vasquezd', '2016-05-15 20:49:27', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(553, 'vasquezd', 'vasquezd', '2016-05-15 20:49:39', 'wall', 'posts', 'post_new_file', 'wall', '#', 0, 0, 1, 0, 0),
(554, 'vasquezd', 'vasquezd', '2016-05-15 20:52:24', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 0, 0),
(555, 'vasquezd', 'vasquezd', '2016-05-16 22:45:48', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(556, 'vasquezd', 'vasquezd', '2016-05-16 22:45:48', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(557, 'vasquezd', 'vasquezd', '2016-05-16 22:49:26', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(558, 'vasquezd', 'vasquezd', '2016-05-16 22:49:26', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(559, 'vasquezd', 'vasquezd', '2016-05-16 22:51:13', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(560, 'vasquezd', 'vasquezd', '2016-05-16 22:51:13', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(561, 'vasquezd', 'vasquezd', '2016-05-16 22:54:09', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(562, 'vasquezd', 'vasquezd', '2016-05-16 22:57:57', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(563, 'vasquezd', 'vasquezd', '2016-05-16 23:01:32', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(564, 'vasquezd', 'vasquezd', '2016-05-17 20:41:18', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(565, 'vasquezd', 'vasquezd', '2016-05-17 20:42:10', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(566, 'vasquezd', 'vasquezd', '2016-05-17 20:42:19', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(567, 'vasquezd', 'vasquezd', '2016-05-17 20:42:52', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(568, 'vasquezd', 'vasquezd', '2016-05-17 20:43:24', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(569, 'vasquezd', 'vasquezd', '2016-05-17 20:44:06', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(570, 'vasquezd', 'vasquezd', '2016-05-17 20:44:19', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(571, 'vasquezd', 'vasquezd', '2016-05-17 20:45:43', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(572, 'vasquezd', 'vasquezd', '2016-05-17 20:54:07', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(573, 'vasquezd', 'vasquezd', '2016-05-17 20:54:16', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(574, 'vasquezd', 'vasquezd', '2016-05-17 20:54:20', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(575, 'vasquezd', 'vasquezd', '2016-05-17 20:59:50', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(576, 'vasquezd', 'vasquezd', '2016-05-17 20:59:56', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(577, 'vasquezd', 'vasquezd', '2016-05-17 21:00:16', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(578, 'vasquezd', 'vasquezd', '2016-05-17 21:00:22', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(579, 'vasquezd', 'vasquezd', '2016-05-17 21:00:25', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(580, 'vasquezd', 'vasquezd', '2016-05-17 21:00:32', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(581, 'vasquezd', 'vasquezd', '2016-05-17 21:02:01', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(582, 'vasquezd', 'vasquezd', '2016-05-17 21:38:36', 'wall', 'posts', 'post_comment', 'post', '#', 0, 53, 1, 0, 0),
(583, 'vasquezd', 'vasquezd', '2016-05-17 21:49:51', 'wall', 'posts', 'post_comment', 'post', '#', 0, 53, 1, 0, 0),
(584, 'vasquezd', 'vasquezd', '2016-05-17 21:52:15', 'wall', 'posts', 'post_comment', 'post', '#', 0, 50, 1, 0, 0),
(585, 'vasquezd', 'vasquezd', '2016-05-18 21:00:19', 'wall', 'posts', 'post_comment', 'post', '#', 0, 50, 1, 0, 0),
(586, 'vasquezd', 'vasquezd', '2016-05-18 21:00:29', 'wall', 'posts', 'post_comment', 'post', '#', 0, 49, 1, 0, 0),
(587, 'vasquezd', 'vasquezd', '2016-05-18 21:26:44', 'wall', 'posts', 'post_comment', 'post', '#', 0, 53, 1, 0, 0),
(588, 'vasquezd', 'vasquezd', '2016-05-18 21:31:16', 'wall', 'posts', 'post_comment', 'post', '#', 0, 49, 1, 0, 0),
(589, 'vasquezd', 'vasquezd', '2016-05-18 21:31:22', 'wall', 'posts', 'post_comment', 'post', '#', 0, 49, 1, 0, 0),
(590, 'vasquezd', 'vasquezd', '2016-05-18 21:56:24', 'wall', 'posts', 'post_comment', 'post', '#', 0, 50, 1, 0, 0),
(591, 'vasquezd', 'vasquezd', '2016-05-18 21:56:52', 'wall', 'posts', 'post_comment', 'post', '#', 0, 53, 1, 0, 0),
(592, 'vasquezd', 'vasquezd', '2016-05-19 20:20:31', 'wall', 'posts', 'post_comment', 'post', '#', 0, 53, 1, 0, 0),
(593, 'vasquezd', 'vasquezd', '2016-05-21 21:29:59', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(594, 'vasquezd', 'vasquezd', '2016-05-21 23:31:48', 'wall', 'posts', 'post_comment', 'post', '#', 0, 34, 1, 0, 0),
(595, 'vasquezd', 'vasquezd', '2016-05-21 23:31:55', 'wall', 'posts', 'post_comment', 'post', '#', 0, 34, 1, 0, 0),
(596, 'vasquezd', 'vasquezd', '2016-05-24 21:07:04', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(597, 'vasquezd', 'vasquezd', '2016-05-24 22:25:02', 'wall', 'posts', 'post_comment', 'post', '#', 0, 53, 1, 0, 0),
(598, 'vasquezd', 'vasquezd', '2016-05-27 00:02:36', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(599, 'vasquezd', 'vasquezd', '2016-05-27 00:05:01', 'wall', 'posts', 'post_comment', 'post', '#', 0, 49, 1, 0, 0),
(600, 'vasquezd', 'vasquezd', '2016-05-27 20:12:10', 'wall', 'posts', 'post_comment', 'post', '#', 0, 53, 1, 0, 0),
(601, 'vasquezd', 'vasquezd', '2016-05-27 20:18:14', 'wall', 'posts', 'post_comment', 'post', '#', 0, 53, 1, 0, 0),
(602, 'vasquezd', 'vasquezd', '2016-05-27 20:18:34', 'wall', 'posts', 'post_comment', 'post', '#', 0, 53, 1, 0, 0),
(603, 'vasquezd', 'vasquezd', '2016-05-27 20:18:58', 'wall', 'posts', 'post_comment', 'post', '#', 0, 53, 1, 0, 0),
(604, 'vasquezd', 'vasquezd', '2016-05-27 20:20:14', 'wall', 'posts', 'post_comment', 'post', '#', 0, 53, 1, 0, 0),
(605, 'vasquezd', 'vasquezd', '2016-05-27 20:20:32', 'wall', 'posts', 'post_comment', 'post', '#', 0, 53, 1, 0, 0),
(606, 'vasquezd', 'vasquezd', '2016-05-27 20:20:37', 'wall', 'posts', 'post_comment', 'post', '#', 0, 53, 1, 0, 0),
(607, 'vasquezd', 'vasquezd', '2016-05-29 22:37:29', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(608, 'vasquezd', 'vasquezd', '2016-05-29 22:42:22', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(609, 'vasquezd', 'vasquezd', '2016-05-29 22:45:19', 'wall', 'posts', 'post_new_video', 'wall', '#', 0, 0, 1, 0, 0),
(610, 'vasquezd', 'vasquezd', '2016-05-29 23:10:53', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 0, 0),
(611, 'vasquezd', 'vasquezd', '2016-05-29 23:14:43', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 0, 0),
(612, 'vasquezd', 'vasquezd', '2016-05-29 23:26:08', 'wall', 'posts', 'post_new_link', 'wall', '#', 0, 0, 1, 0, 0),
(613, 'vasquezd', 'vasquezd', '2016-05-29 23:32:23', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(614, 'vasquezd', 'vasquezd', '2016-05-29 23:45:10', 'wall', 'posts', 'post_new_file', 'wall', '#', 0, 0, 1, 0, 0),
(615, 'vasquezd', 'vasquezd', '2016-05-30 21:05:04', 'wall', 'posts', 'post_comment', 'post', '#', 0, 74, 1, 0, 0),
(616, 'vasquezd', 'vasquezd', '2016-05-30 21:05:12', 'wall', 'posts', 'post_comment', 'post', '#', 0, 74, 1, 0, 0),
(617, 'vasquezd', 'vasquezd', '2016-05-30 21:16:47', 'wall', 'posts', 'post_comment', 'post', '#', 0, 74, 1, 0, 0),
(618, 'vasquezd', 'vasquezd', '2016-05-30 21:52:42', 'wall', 'posts', 'post_comment', 'post', '#', 0, 74, 1, 0, 0),
(619, 'vasquezd', 'vasquezd', '2016-06-02 20:41:28', 'wall', 'posts', 'post_comment', 'post', '#', 0, 73, 1, 0, 0),
(620, 'vasquezd', 'vasquezd', '2016-06-02 21:07:53', 'wall', 'posts', 'post_comment', 'post', '#', 0, 74, 1, 0, 0),
(621, 'vasquezd', 'matt', '2016-06-03 22:35:30', 'group', 'existing_group', 'new_group', 'group', '#', 0, 0, 0, 1, 0),
(622, 'vasquezd', 'brian', '2016-06-03 23:21:27', 'group', 'new_group', 'new_group', 'group', '#', 107, 0, 0, 1, 0),
(623, 'vasquezd', 'matt', '2016-06-03 23:21:27', 'group', 'new_group', 'new_group', 'group', '#', 107, 0, 0, 1, 0),
(624, 'vasquezd', 'matt', '2016-06-03 23:21:52', 'group', 'new_group', 'new_group', 'group', '#', 108, 0, 0, 1, 0),
(625, 'vasquezd', 'vasquezd', '2016-06-06 21:44:41', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(626, 'vasquezd', 'vasquezd', '2016-06-06 21:45:27', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(627, 'vasquezd', 'vasquezd', '2016-06-06 21:47:23', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(628, 'vasquezd', 'vasquezd', '2016-06-06 22:07:15', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(629, 'vasquezd', 'vasquezd', '2016-06-06 22:09:23', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(630, 'vasquezd', 'vasquezd', '2016-06-06 22:10:57', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(631, 'vasquezd', 'vasquezd', '2016-06-06 22:18:49', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(632, 'vasquezd', 'vasquezd', '2016-06-06 22:20:03', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(633, 'vasquezd', 'vasquezd', '2016-06-06 22:20:41', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(634, 'vasquezd', 'vasquezd', '2016-06-06 22:21:19', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(635, 'vasquezd', 'vasquezd', '2016-06-06 22:22:39', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(636, 'vasquezd', 'vasquezd', '2016-06-06 22:23:29', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(637, 'vasquezd', 'vasquezd', '2016-06-06 22:23:40', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(638, 'vasquezd', 'vasquezd', '2016-06-06 22:24:16', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(639, 'vasquezd', 'vasquezd', '2016-06-06 22:24:45', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(640, 'vasquezd', 'vasquezd', '2016-06-06 22:25:42', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(641, 'vasquezd', 'vasquezd', '2016-06-06 22:26:26', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(642, 'vasquezd', 'vasquezd', '2016-06-06 22:26:34', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(643, 'vasquezd', 'vasquezd', '2016-06-06 22:27:06', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(644, 'vasquezd', 'vasquezd', '2016-06-06 22:27:20', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(645, 'vasquezd', 'vasquezd', '2016-06-06 22:28:05', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(646, 'vasquezd', 'vasquezd', '2016-06-06 22:28:30', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(647, 'vasquezd', 'vasquezd', '2016-06-06 22:32:14', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(648, 'vasquezd', 'vasquezd', '2016-06-06 22:34:35', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(649, 'vasquezd', 'vasquezd', '2016-06-06 22:35:10', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(650, 'vasquezd', 'vasquezd', '2016-06-06 22:35:15', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(651, 'vasquezd', 'vasquezd', '2016-06-06 22:36:01', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(652, 'vasquezd', 'vasquezd', '2016-06-06 22:39:01', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(653, 'vasquezd', 'vasquezd', '2016-06-06 22:39:53', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(654, 'vasquezd', 'vasquezd', '2016-06-06 22:43:53', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(655, 'vasquezd', 'vasquezd', '2016-06-06 22:44:00', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(656, 'vasquezd', 'vasquezd', '2016-06-06 22:45:52', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(657, 'vasquezd', 'vasquezd', '2016-06-06 22:49:55', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(658, 'vasquezd', 'vasquezd', '2016-06-06 22:58:42', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(659, 'vasquezd', 'vasquezd', '2016-06-06 22:59:58', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(660, 'vasquezd', 'vasquezd', '2016-06-10 22:08:33', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 0, 0),
(661, 'vasquezd', 'vasquezd', '2016-06-11 23:32:09', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(662, 'vasquezd', 'vasquezd', '2016-06-11 23:51:04', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 0, 0),
(663, 'vasquezd', 'matt', '2016-06-11 23:57:42', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 0, 1, 0),
(664, 'vasquezd', 'matt', '2016-06-12 00:00:11', 'wall', 'posts', 'post_new_video', 'wall', '#', 0, 0, 0, 1, 0),
(665, 'vasquezd', 'matt', '2016-06-12 00:18:10', 'wall', 'posts', 'post_new_video', 'wall', '#', 0, 0, 0, 1, 0),
(666, 'vasquezd', 'brian', '2016-06-14 23:37:55', 'group', 'new_group', 'new_group', 'group', '#', 109, 0, 0, 1, 0),
(667, 'vasquezd', 'matt', '2016-06-14 23:37:55', 'group', 'new_group', 'new_group', 'group', '#', 109, 0, 0, 1, 0),
(668, 'vasquezd', 'Kristen', '2016-06-14 23:37:55', 'group', 'new_group', 'new_group', 'group', '#', 109, 0, 0, 1, 0),
(669, 'matt', 'vasquezd', '2016-06-15 21:23:48', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 0, 0, 0),
(670, 'vasquezd', 'vasquezd', '2016-06-15 21:44:39', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(671, 'vasquezd', 'vasquezd', '2016-06-15 21:44:55', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(672, 'vasquezd', 'vasquezd', '2016-06-15 21:49:37', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(673, 'vasquezd', 'vasquezd', '2016-06-15 21:58:57', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(674, 'vasquezd', 'vasquezd', '2016-06-15 22:03:25', 'wall', 'posts', 'post_new_photo', 'wall', '#', 0, 0, 1, 1, 0),
(675, 'vasquezd', 'vasquezd', '2016-06-15 22:06:32', 'wall', 'posts', 'post_new_video', 'wall', '#', 0, 0, 1, 1, 0),
(676, 'vasquezd', 'vasquezd', '2016-06-15 22:14:01', 'wall', 'item', 'post_new_item', 'item', '#', 0, 0, 1, 1, 0),
(677, 'vasquezd', 'vasquezd', '2016-06-15 22:15:48', 'wall', 'posts', 'post_new_text', 'wall', '#', 0, 0, 1, 1, 0),
(678, '', '', '2016-06-15 22:17:21', 'wall', 'posts', 'post_new_file', 'wall', '#', 0, 0, 1, 1, 0),
(679, '', '', '2016-06-15 22:17:59', 'wall', 'posts', 'post_new_file', 'wall', '#', 0, 0, 1, 1, 0),
(680, 'vasquezd', 'vasquezd', '2016-06-15 22:23:52', 'wall', 'posts', 'post_new_file', 'wall', '#', 0, 0, 1, 1, 0),
(681, 'vasquezd', 'vasquezd', '2016-06-15 22:27:47', 'wall', 'posts', 'post_new_file', 'wall', '#', 0, 0, 1, 1, 0),
(682, 'vasquezd', 'vasquezd', '2016-06-15 22:29:17', 'wall', 'posts', 'post_new_file', 'wall', '#', 0, 0, 1, 1, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=219 ;

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
(218, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 109, 109, 0, 1, '2016-06-14 23:37:55', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=126 ;

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
(120, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'text', 'Come over and check this out!', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-15 22:15:48', '2016-06-15 22:15:48'),
(121, 'shareshare', '', 0, 0, '', '', 'file', '', '', '', '', '1466029041background_20.jpg', 'background_20.jpg', '', '', 1, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-15 22:17:21', '2016-06-15 22:17:21'),
(122, 'shareshare', '', 0, 0, '', '', 'file', '', '', '', '', '1466029079background_82.jpg', 'background_82.jpg', '', '', 1, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-15 22:17:59', '2016-06-15 22:17:59'),
(123, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1466029432background_20.jpg', 'background_20.jpg', '', '', 1, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-15 22:23:52', '2016-06-15 22:23:52'),
(124, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1466029667background_76.jpg', 'background_76.jpg', '', '', 1, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-15 22:27:47', '2016-06-15 22:27:47'),
(125, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'file', 'background 20', '', '', '', '1466029757background_20.jpg', 'background_20.jpg', '', '', 1, '', 1, 0, '', '0000-00-00 00:00:00', '2016-06-15 22:29:17', '2016-06-15 22:29:17');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=160 ;

--
-- Dumping data for table `post_bias`
--

INSERT INTO `post_bias` (`post_bias_id`, `post_id`, `right_vote`, `right_vote_user`, `left_vote`, `left_vote_user`, `created`) VALUES
(153, 70, 0, '', 1, 'vasquezd', '2016-05-29 22:29:43'),
(157, 69, 0, '', 1, 'vasquezd', '2016-05-29 22:33:03'),
(159, 81, 1, 'vasquezd', 0, '', '2016-06-06 21:55:26');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=96 ;

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
(95, 71, 1, 'vasquezd', '2016-06-15 21:35:45');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `salt`, `password`, `last_login`, `last_logout`, `login_total`, `test`) VALUES
(1, 'vasquezd', 1408593605, 'f62c9d59b1b2cbe2b6462784e1d6a550f1afbe85', '2016-06-17 00:07:08', '2016-06-16 20:10:52', 84, 'vasquezb'),
(2, 'matt', 1448946249, 'de85ef10d2853b10978ac6c8e0c37c354d3b6969', '2016-06-15 21:17:33', '2016-06-15 21:23:52', 10, 'vasquezb'),
(3, 'brian', 1448946380, 'ace622215c315ce82bfd153b63c7faeb218a17da', '2015-12-03 03:28:11', '2015-12-03 03:28:11', 0, 'vasquezb'),
(4, 'Kristen', 1448946380, 'e3ae7af8145e258b854728fc9cebe6c8891ee2a5', '2016-04-28 22:32:26', '2016-04-28 22:32:26', 1, 'vasquezb'),
(5, 'Aimee', 1448946380, '33f916c66f61bbf37a12105c8bb3e0fc8ea75fd6', '2015-12-14 05:02:39', '2015-12-01 05:28:26', 0, ''),
(6, 'Becca', 1448946503, 'ba342a034cc175fb24a1c3d59d190da0c31f0106', '2015-12-17 20:35:22', '2015-12-10 08:18:33', 0, ''),
(7, 'Sarah', 1448946503, '378d32da508020f682a238053fec6f307e0aa30a', '2015-12-09 01:42:10', '2015-12-09 01:40:36', 0, ''),
(8, 'chris', 1448946380, '80c96f63d24bc38382aca981ed2e262c22582605', '2015-12-19 04:01:14', '2015-12-16 22:18:50', 0, ''),
(9, 'pop', 1448946503, '851b0d429828f520537e2323a1c5f1cde21eee5d', '2015-12-01 05:31:10', '2015-12-01 05:31:10', 0, ''),
(38, 'registertest', 1461714733, 'ccf01e96eda36bdbcff1db5230ba3135bab7b7a6', '2016-04-27 00:00:18', '2016-04-27 00:00:18', 1, ''),
(39, 'vasquezk', 1466107880, '6d7cb2a50e2fbaaa22735cc31d0a0df53e9afb30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '');

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
(46, 1, 'vasquezd', 'Vasquezd@onid.orst.edu', 'david.jpg', 'David', 'Vasquez', 'Vasquezd', '', 'Oregon State ', '2016-04-03 21:33:50', '2014-08-21 18:00:05'),
(47, 2, 'matt', 'vasquezm@shareshare.com', 'matt.jpg', 'Matt', 'Vasquez', '', 'This is matts page!', '', '2015-12-01 04:55:10', '0000-00-00 00:00:00'),
(48, 3, 'brian', 'vasquezb@shareshare.com', 'brian.jpg', 'Brian', 'Vasquez', '', 'this is brian''s page! ', '', '2016-04-09 21:02:59', '0000-00-00 00:00:00'),
(49, 4, 'Kristen', 'vasquezj@shareshare.com', 'david.jpg', 'Kristen', 'Vasquez', '', 'this is my page!', '', '2015-12-03 03:25:43', '0000-00-00 00:00:00'),
(50, 5, 'Aimee', 'Aimeeaileen@mac.com', '1449476920image.jpeg', 'Aimee', 'Vasquez', 'Vasquez', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-07 08:28:40', '0000-00-00 00:00:00'),
(51, 6, 'Becca', 'Vasquezd@onid.orst.edu', 'Becca.jpg', 'Becca', 'Vasquez', 'vasquezma', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2016-04-09 21:03:19', '0000-00-00 00:00:00'),
(52, 7, 'Sarah', 'Vasquezd@onid.orst.edu', 'david.jpg', 'Sarah', 'Vasquez', 'Vasquezbb', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-01 04:57:23', '0000-00-00 00:00:00'),
(53, 8, 'chris', 'californiachristophe@gmail.com', '1450307134Screen.jpg', 'Chris', 'Vasquez', 'Vasquezdk', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-16 23:05:34', '0000-00-00 00:00:00'),
(54, 9, 'pop', 'Vasquezd@onid.orst.edu', 'david.jpg', 'Pop', 'Vasquez', 'vasquezbas', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-01 04:57:59', '0000-00-00 00:00:00'),
(55, 39, 'vasquezk', 'kristen@onid.orst.edu', 'david.jpg', 'kristen', 'vasquez', 'vasquezk', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-06-16 20:11:20');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

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
(11, 'vasquezk', '', 39, '', '', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
