-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2016 at 01:27 AM
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
  `divvy_text` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `divvy_tag` varchar(255) NOT NULL,
  `divvy_tag_type` varchar(255) NOT NULL,
  `divvy_piece_unique_key` varchar(255) NOT NULL,
  `divvy_status` int(11) NOT NULL,
  PRIMARY KEY (`divvy_piece_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `divvy_pieces`
--

INSERT INTO `divvy_pieces` (`divvy_piece_id`, `divvy_id`, `divvy_position`, `is_divvy_tag`, `divvy_text`, `divvy_tag`, `divvy_tag_type`, `divvy_piece_unique_key`, `divvy_status`) VALUES
(1, 1, 1, 0, 'Divvy Piece 1', '', '', '6a6e26dfceccbd16c476fac8b5975684', 1),
(2, 1, 2, 0, ' Divvy Piece 2 and', '', '', '51be92c1666b60f308f9e88e1cafacf1', 1),
(3, 1, 6, 0, ' Divvy Piece 3', '', '', '51be92c1666b60f308f9e88e1cafacf1', 0),
(4, 2, 1, 0, ' Divvy Piece 4', '', '', '51be92c1666b60f308f9e88e1cafacf1', 1),
(5, 2, 8, 0, ' Divvy Piece 5', '', '', '51be92c1666b60f308f9e88e1cafacf1', 1),
(6, 3, 13, 0, ' Divvy Piece 6', '', '', '51be92c1666b60f308f9e88e1cafacf1', 1),
(7, 3, 14, 0, ' Divvy Piece 7', '', '', '51be92c1666b60f308f9e88e1cafacf1', 1),
(8, 3, 15, 1, '@people', '1', 'people', '51be92c1666b60f308f9e88e1cafacf1', 1),
(9, 3, 16, 0, ' Divvy Piece 8', '', '', '51be92c1666b60f308f9e88e1cafacf1', 1),
(33, 3, 1, 0, ' Divvy Piece 3 ', '', '', 'cbc766c03c35982989a5a622b4022d92', 0),
(34, 3, 2, 0, ' Divvy Hello toÂ ', '', '', '60181c8ce39c1748acbc983a54b5af79', 1),
(35, 3, 4, 0, ' Piece 3  ', '', '', 'f527e7bc906bca965485fb1263e2c13f', 1),
(36, 3, 3, 1, '@arrent ', '@arrent ', 'people', '690c8bd9afd53bb771c67f99ea1aed13', 0),
(37, 1, 7, 0, ' Divvy Piece 3 and this isÂ ', '', '', 'cf5f41b32bf44c78ba0a92ff102aa35f', 0),
(38, 1, 12, 0, ' ', '', '', 'a1f03fe4110ab98c28753d75572ceca7', 1),
(39, 1, 11, 1, '@david ', '@david ', 'people', '4b9869af43517b4fddcf863a77797268', 1),
(40, 1, 8, 0, ' Divvy ', '', '', '5c6ba9f9b5b6efbf328733b52bdd18ed', 1),
(41, 1, 10, 0, 'Piece 3 and this isÂ  ', '', '', 'a0c0cd867c802eee1ac1687148d5e6d4', 1),
(42, 1, 9, 1, '@david ', '@david ', 'people', 'f9acdbd6b6602cbc9bf59c314e3ef66e', 1);

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
  `divvy_caption` text CHARACTER SET utf8 NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `divvy_post`
--

INSERT INTO `divvy_post` (`divvy_id`, `parent`, `list_id`, `divvy_position`, `divvy_from`, `divvy_to`, `divvy_caption`, `divvy_deadline`, `divvy_progress`, `divvy_priority`, `image_url`, `file_name`, `unique_id`, `divvy_status`, `updated`, `created`) VALUES
(1, 0, 155, 1, 'vasquezd', 'vasquezd', ' Divvy Piece 1 Divvy Piece 2 and Divvy @david Piece 3 and this isÂ  @david ', '0000-00-00 00:00:00', 0, 0, '', '', 'bb23c2c27c69d06a94820809c1b3c785', 1, '2016-09-15 00:24:32', '2016-07-14 05:49:39'),
(2, 0, 155, 175, 'vasquezd', 'vasquezd', ' Divvy Piece 4 Divvy @david', '0000-00-00 00:00:00', 0, 0, '', '', '54479f550436e84084f03bb5611ab6b6', 0, '2016-08-26 23:14:41', '2016-07-14 05:49:39'),
(3, 0, 155, 208, 'vasquezd', 'vasquezd', ' Divvy Hello toÂ  Piece 3 Divvy Piece 6 Divvy Piece 7 @people Divvy Piece 8', '0000-00-00 00:00:00', 0, 0, '', '', 'e06d4355caefcd26ed6aa9a0ced4ce00', 1, '2016-09-13 21:13:54', '2016-08-20 03:55:32');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=645 ;

--
-- Dumping data for table `divvy_users`
--

INSERT INTO `divvy_users` (`divvy_users_id`, `divvy_id`, `list_id`, `divvy_from`, `divvy_to`, `divvy_to_user_status`, `active`, `status_seen`, `updated`, `created`) VALUES
(641, 1, 155, 'vasquezd', 'vasquezd', 0, 0, 0, '2016-09-13 21:13:40', '2016-08-26 23:15:25'),
(642, 3, 155, 'vasquezd', 'people', 0, 1, 0, '2016-08-26 23:15:25', '2016-08-26 23:15:25'),
(643, 3, 155, 'vasquezd', 'arrent', 0, 0, 0, '2016-09-13 21:13:54', '2016-09-09 21:35:18'),
(644, 1, 155, 'vasquezd', 'david', 0, 1, 0, '2016-09-13 21:13:40', '2016-09-13 21:13:40');

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
  `file_caption` text NOT NULL,
  `file_status` int(11) NOT NULL,
  `file_seen` int(11) NOT NULL,
  `recycle_status` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `file_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_last_modified` timestamp NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=764 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `group_id`, `post_id`, `parent`, `is_folder`, `folder_name`, `file_name`, `file_type`, `file_name_server`, `file_path_server`, `file_image`, `file_path`, `user_id`, `user_name`, `file_caption`, `file_status`, `file_seen`, `recycle_status`, `unique_id`, `file_created`, `file_last_modified`) VALUES
(590, 0, 0, 0, 1, 'Music', 'folder.png', '', 'folder.png', 'folder.png', 'folder.png', '---------0-', 1, 'vasquezd', '', 1, 0, 0, '1472169277126', '2016-08-25 23:54:37', '0000-00-00 00:00:00'),
(591, 0, 0, 0, 0, 'file', 'Koala.jpg', 'jpg', '1472169299Koala.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', 'icons/unknown.png', '---------0-', 1, 'vasquezd', '', 0, 0, 1, '', '2016-08-25 23:54:59', '2016-08-26 20:44:09'),
(592, 0, 0, 0, 0, 'file', 'Hydrangeas.jpg', 'jpg', '1472171405Hydrangeas.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1472171405Hydrangeas.jpg', '---------0-', 1, 'vasquezd', '', 0, 0, 1, '', '2016-08-26 00:30:05', '2016-08-26 20:44:07'),
(593, 0, 0, 0, 0, 'file', 'Desert.jpg', 'jpg', '1472171439Desert.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '14771439Desert.jpg', '---------0-', 1, 'vasquezd', '', 0, 0, 1, '', '2016-08-26 00:30:39', '2016-08-26 20:44:05'),
(594, 0, 0, 0, 0, 'file', 'Penguins.jpg', 'jpg', '1472244255Penguins.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1472244255Penguins.jpg', '---------0-', 1, 'vasquezd', '', 1, 0, 0, '', '2016-08-26 20:44:15', '2016-08-26 20:44:15'),
(595, 0, 0, 0, 0, 'file', 'Koala.jpg', 'jpg', '1472244310Koala.jpg', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', '1472244310Koala.jpg', '---------0-', 1, 'vasquezd', '', 1, 0, 0, '', '2016-08-26 20:45:10', '2016-08-26 20:45:10'),
(596, 0, 0, 0, 0, 'file', 'Seapony - No one will.mp3', 'mp3', '14722443186)_Seapony_-_No_one_will.mp3', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', 'icons/music.png', '---------0-', 1, 'vasquezd', '', 1, 0, 0, '', '2016-08-26 20:45:18', '2016-08-26 20:45:18'),
(597, 114, 0, 0, 0, 'file', '6) Seapony - No one will.mp3', 'mp3', '14722466876)_Seapony_-_No_one_will.mp3', 'C:/wamp/www/sites/user_uploads/user_file_uploads/', 'icons/music.png', '---------0-', 1, 'vasquezd', '', 1, 0, 0, '', '2016-08-26 21:24:47', '2016-08-26 21:24:47'),
(598, 114, 0, 0, 1, 'My Music', 'folder.png', '', 'folder.png', 'folder.png', 'folder.png', '---------0-', 1, 'vasquezd', '', 1, 0, 0, '1472247107605', '2016-08-26 21:31:47', '0000-00-00 00:00:00'),
(599, 0, 207, 0, 0, '', 'Koala.jpg', '', '1472506567Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472506533', '', 1, 0, 0, '', '2016-08-29 21:36:07', '0000-00-00 00:00:00'),
(600, 0, 207, 0, 0, '', 'Koala.jpg', '', '1472507015Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472506533', '', 1, 0, 0, '', '2016-08-29 21:43:35', '0000-00-00 00:00:00'),
(601, 0, 207, 0, 0, '', 'Koala.jpg', '', '1472507076Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472506533', '', 1, 0, 0, '', '2016-08-29 21:44:36', '0000-00-00 00:00:00'),
(602, 0, 207, 0, 0, '', 'Koala.jpg', '', '1472507095Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472506533', '', 1, 0, 0, '', '2016-08-29 21:44:55', '0000-00-00 00:00:00'),
(603, 0, 207, 0, 0, '', 'Koala.jpg', '', '1472507162Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472506533', '', 1, 0, 0, '', '2016-08-29 21:46:02', '0000-00-00 00:00:00'),
(604, 0, 207, 0, 0, '', 'Koala.jpg', '', '1472507328Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472506533', '', 1, 0, 0, '', '2016-08-29 21:48:48', '0000-00-00 00:00:00'),
(605, 0, 207, 0, 0, '', 'Koala.jpg', '', '1472507361Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472506533', '', 1, 0, 0, '', '2016-08-29 21:49:21', '0000-00-00 00:00:00'),
(606, 0, 207, 0, 0, '', 'Koala.jpg', '', '1472507426Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472506533', '', 1, 0, 0, '', '2016-08-29 21:50:26', '0000-00-00 00:00:00'),
(607, 0, 207, 0, 0, '', 'Koala.jpg', '', '1472507481Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472506533', '', 1, 0, 0, '', '2016-08-29 21:51:21', '0000-00-00 00:00:00'),
(608, 0, 207, 0, 0, '', 'Koala.jpg', '', '1472507787Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472506533', '', 1, 0, 0, '', '2016-08-29 21:56:27', '0000-00-00 00:00:00'),
(609, 0, 208, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507787', '', 1, 0, 0, '', '2016-08-29 21:56:31', '0000-00-00 00:00:00'),
(610, 0, 208, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507787', '', 1, 0, 0, '', '2016-08-29 21:57:57', '0000-00-00 00:00:00'),
(611, 0, 208, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507787', '', 1, 0, 0, '', '2016-08-29 21:59:29', '0000-00-00 00:00:00'),
(612, 0, 208, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507787', '', 1, 0, 0, '', '2016-08-29 21:59:54', '0000-00-00 00:00:00'),
(613, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:00:00', '0000-00-00 00:00:00'),
(614, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:01:11', '0000-00-00 00:00:00'),
(615, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:03:47', '0000-00-00 00:00:00'),
(616, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:05:01', '0000-00-00 00:00:00'),
(617, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:05:33', '0000-00-00 00:00:00'),
(618, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:06:38', '0000-00-00 00:00:00'),
(619, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:07:26', '0000-00-00 00:00:00'),
(620, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:08:19', '0000-00-00 00:00:00'),
(621, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:08:51', '0000-00-00 00:00:00'),
(622, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:09:26', '0000-00-00 00:00:00'),
(623, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:10:01', '0000-00-00 00:00:00'),
(624, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:10:45', '0000-00-00 00:00:00'),
(625, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:10:58', '0000-00-00 00:00:00'),
(626, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:11:27', '0000-00-00 00:00:00'),
(627, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:31:37', '0000-00-00 00:00:00'),
(628, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:31:57', '0000-00-00 00:00:00'),
(629, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:39:12', '0000-00-00 00:00:00'),
(630, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:39:25', '0000-00-00 00:00:00'),
(631, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:39:42', '0000-00-00 00:00:00'),
(632, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:42:14', '0000-00-00 00:00:00'),
(633, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:46:40', '0000-00-00 00:00:00'),
(634, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:50:05', '0000-00-00 00:00:00'),
(635, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:52:41', '0000-00-00 00:00:00'),
(636, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:54:58', '0000-00-00 00:00:00'),
(637, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:56:17', '0000-00-00 00:00:00'),
(638, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:57:51', '0000-00-00 00:00:00'),
(639, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:58:45', '0000-00-00 00:00:00'),
(640, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:59:02', '0000-00-00 00:00:00'),
(641, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 22:59:56', '0000-00-00 00:00:00'),
(642, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 23:00:55', '0000-00-00 00:00:00'),
(643, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 23:11:14', '0000-00-00 00:00:00'),
(644, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 23:11:42', '0000-00-00 00:00:00'),
(645, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 23:13:26', '0000-00-00 00:00:00'),
(646, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 23:13:53', '0000-00-00 00:00:00'),
(647, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 23:14:27', '0000-00-00 00:00:00'),
(648, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 23:18:40', '0000-00-00 00:00:00'),
(649, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 23:18:58', '0000-00-00 00:00:00'),
(650, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 23:21:41', '0000-00-00 00:00:00'),
(651, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 23:21:52', '0000-00-00 00:00:00'),
(652, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 23:23:04', '0000-00-00 00:00:00'),
(653, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 23:26:44', '0000-00-00 00:00:00'),
(654, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 23:26:54', '0000-00-00 00:00:00'),
(655, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 23:29:43', '0000-00-00 00:00:00'),
(656, 0, 209, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472507994', '', 1, 0, 0, '', '2016-08-29 23:30:26', '0000-00-00 00:00:00'),
(657, 0, 216, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472515301', '', 1, 0, 0, '', '2016-08-30 00:03:50', '0000-00-00 00:00:00'),
(658, 0, 216, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472515301', '', 1, 0, 0, '', '2016-08-30 00:06:59', '0000-00-00 00:00:00'),
(659, 0, 217, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472515619', '', 1, 0, 0, '', '2016-08-30 00:07:03', '0000-00-00 00:00:00'),
(660, 0, 218, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472515623', '', 1, 0, 0, '', '2016-08-30 00:07:24', '0000-00-00 00:00:00'),
(661, 0, 218, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1472515623', '', 1, 0, 0, '', '2016-08-30 00:07:27', '0000-00-00 00:00:00'),
(662, 0, 219, 0, 0, '', 'Desert.jpg', '', '1472515683Desert.jpg', '', '', '', 0, 'vasquezdvasquezd1472515669', '', 1, 0, 0, '', '2016-08-30 00:08:03', '0000-00-00 00:00:00'),
(663, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472515698Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:08:18', '0000-00-00 00:00:00'),
(664, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472515975Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:12:55', '0000-00-00 00:00:00'),
(665, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516030Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:13:50', '0000-00-00 00:00:00'),
(666, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516041Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:14:01', '0000-00-00 00:00:00'),
(667, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516049Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:14:09', '0000-00-00 00:00:00'),
(668, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516072Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:14:32', '0000-00-00 00:00:00'),
(669, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516081Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:14:41', '0000-00-00 00:00:00'),
(670, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516265Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:17:45', '0000-00-00 00:00:00'),
(671, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516272Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:17:52', '0000-00-00 00:00:00'),
(672, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516367Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:19:27', '0000-00-00 00:00:00'),
(673, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516385Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:19:45', '0000-00-00 00:00:00'),
(674, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516426Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:20:26', '0000-00-00 00:00:00'),
(675, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516478Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:21:18', '0000-00-00 00:00:00'),
(676, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516506Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:21:46', '0000-00-00 00:00:00'),
(677, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516555Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:22:35', '0000-00-00 00:00:00'),
(678, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516583Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:23:03', '0000-00-00 00:00:00'),
(679, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516718Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:25:18', '0000-00-00 00:00:00'),
(680, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516732Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:25:32', '0000-00-00 00:00:00'),
(681, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516755Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:25:55', '0000-00-00 00:00:00'),
(682, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516826Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:27:06', '0000-00-00 00:00:00'),
(683, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516842Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:27:22', '0000-00-00 00:00:00'),
(684, 0, 220, 0, 0, '', 'Jellyfish.jpg', '', '1472516857Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1472515683', '', 1, 0, 0, '', '2016-08-30 00:27:37', '0000-00-00 00:00:00'),
(685, 0, 223, 0, 0, '', 'Koala.jpg', '', '1472586658Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472586640', '', 1, 0, 0, '', '2016-08-30 19:50:58', '0000-00-00 00:00:00'),
(686, 0, 223, 0, 0, '', 'Koala.jpg', '', '1472586665Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472586640', '', 1, 0, 0, '', '2016-08-30 19:51:05', '0000-00-00 00:00:00'),
(687, 0, 223, 0, 0, '', 'Koala.jpg', '', '1472587039Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472586640', '', 1, 0, 0, '', '2016-08-30 19:57:19', '0000-00-00 00:00:00'),
(688, 0, 223, 0, 0, '', 'Koala.jpg', '', '1472587102Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472586640', '', 1, 0, 0, '', '2016-08-30 19:58:22', '0000-00-00 00:00:00'),
(689, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472856617Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 22:50:17', '0000-00-00 00:00:00'),
(690, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472857240Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:00:40', '0000-00-00 00:00:00'),
(691, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472857275Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:01:15', '0000-00-00 00:00:00'),
(692, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472857311Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:01:51', '0000-00-00 00:00:00'),
(693, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472857332Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:02:12', '0000-00-00 00:00:00'),
(694, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472857391Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:03:11', '0000-00-00 00:00:00'),
(695, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472857450Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:04:10', '0000-00-00 00:00:00'),
(696, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472857467Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:04:27', '0000-00-00 00:00:00'),
(697, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472857550Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:05:50', '0000-00-00 00:00:00'),
(698, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472857692Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:08:12', '0000-00-00 00:00:00'),
(699, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472858125Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:15:25', '0000-00-00 00:00:00'),
(700, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472858141Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:15:41', '0000-00-00 00:00:00'),
(701, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472858163Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:16:03', '0000-00-00 00:00:00'),
(702, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472858260Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:17:40', '0000-00-00 00:00:00'),
(703, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472858274Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:17:54', '0000-00-00 00:00:00'),
(704, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472858287Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:18:07', '0000-00-00 00:00:00'),
(705, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472858329Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:18:49', '0000-00-00 00:00:00'),
(706, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472858341Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:19:01', '0000-00-00 00:00:00'),
(707, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472858427Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:20:27', '0000-00-00 00:00:00'),
(708, 0, 224, 0, 0, '', 'Koala.jpg', '', '1472858745Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472856600', '', 1, 0, 0, '', '2016-09-02 23:25:45', '0000-00-00 00:00:00'),
(709, 0, 225, 0, 0, '', 'Koala.jpg', '', '1472860342Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472860315', '', 1, 0, 0, '', '2016-09-02 23:52:22', '0000-00-00 00:00:00'),
(710, 0, 225, 0, 0, '', 'Koala.jpg', '', '1472860353Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472860315', '', 1, 0, 0, '', '2016-09-02 23:52:33', '0000-00-00 00:00:00'),
(711, 0, 246, 0, 0, '', 'Koala.jpg', '', '1472948033Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472947976', '', 1, 0, 0, '', '2016-09-04 00:13:53', '0000-00-00 00:00:00'),
(712, 0, 246, 0, 0, '', 'Koala.jpg', '', '1472948074Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1472947976', '', 1, 0, 0, '', '2016-09-04 00:14:34', '0000-00-00 00:00:00'),
(713, 0, 248, 0, 0, '', 'Koala.jpg', '', '1473026740Koala.jpg', '', '', '', 0, 'kristenkristen1473026695', '', 1, 0, 0, '', '2016-09-04 22:05:40', '0000-00-00 00:00:00'),
(714, 0, 0, 0, 0, '', '7', '', '1473371717Lighthouse.jpg', '', '', '', 0, '', '', 0, 0, 0, '', '2016-09-08 21:55:17', '0000-00-00 00:00:00'),
(715, 0, 264, 0, 0, '', 'Desert.jpg', '', '1474583486Desert.jpg', '', '', '', 0, 'vasquezdvasquezd1474583482', '', 1, 0, 0, '', '2016-09-22 22:31:26', '0000-00-00 00:00:00'),
(716, 0, 264, 0, 0, '', 'Desert.jpg', '', '1474583530Desert.jpg', '', '', '', 0, 'vasquezdvasquezd1474583482', '', 1, 0, 0, '', '2016-09-22 22:32:10', '0000-00-00 00:00:00'),
(717, 0, 265, 0, 0, '', 'Tulips.jpg', '', '1474583538Tulips.jpg', '', '', '', 0, 'vasquezdvasquezd1474583530', '', 1, 0, 0, '', '2016-09-22 22:32:18', '0000-00-00 00:00:00'),
(718, 0, 266, 0, 0, '', 'Penguins.jpg', '', '1474583560Penguins.jpg', '', '', '', 0, 'vasquezdvasquezd1474583538', '', 1, 0, 0, '', '2016-09-22 22:32:40', '0000-00-00 00:00:00'),
(719, 0, 267, 0, 0, '', 'Chrysanthemum.jpg', '', '1474583570Chrysanthemum.jpg', '', '', '', 0, 'vasquezdvasquezd1474583560', '', 1, 0, 0, '', '2016-09-22 22:32:50', '0000-00-00 00:00:00'),
(720, 0, 267, 0, 0, '', 'Chrysanthemum.jpg', '', '1474583620Chrysanthemum.jpg', '', '', '', 0, 'vasquezdvasquezd1474583560', '', 1, 0, 0, '', '2016-09-22 22:33:40', '0000-00-00 00:00:00'),
(721, 0, 267, 0, 0, '', 'Chrysanthemum.jpg', '', '1474585436Chrysanthemum.jpg', '', '', '', 0, 'vasquezdvasquezd1474583560', '', 1, 0, 0, '', '2016-09-22 23:03:56', '0000-00-00 00:00:00'),
(722, 0, 268, 0, 0, '', 'Koala.jpg', '', '1474585731Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1474585719', '', 1, 0, 0, '', '2016-09-22 23:08:51', '0000-00-00 00:00:00'),
(723, 0, 269, 0, 0, '', 'Jellyfish.jpg', '', '1474585750Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1474585739', '', 1, 0, 0, '', '2016-09-22 23:09:10', '0000-00-00 00:00:00'),
(724, 0, 270, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1474585757', '', 1, 0, 0, '', '2016-09-22 23:09:19', '0000-00-00 00:00:00'),
(725, 0, 271, 0, 0, '', '', '', 'No file selected.', '', '', '', 0, 'vasquezdvasquezd1474585759', '', 1, 0, 0, '', '2016-09-22 23:09:58', '0000-00-00 00:00:00'),
(726, 0, 272, 0, 0, '', 'Koala.jpg', '', '1474585820Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1474585798', '', 1, 0, 0, '', '2016-09-22 23:10:20', '0000-00-00 00:00:00'),
(727, 0, 273, 0, 0, '', 'Desert.jpg', '', '1474585882Desert.jpg', '', '', '', 0, 'vasquezdvasquezd1474585820', '', 1, 0, 0, '', '2016-09-22 23:11:22', '0000-00-00 00:00:00'),
(728, 0, 273, 0, 0, '', 'Desert.jpg', '', '1474586566Desert.jpg', '', '', '', 0, 'vasquezdvasquezd1474585820', '', 1, 0, 0, '', '2016-09-22 23:22:46', '0000-00-00 00:00:00'),
(729, 0, 273, 0, 0, '', 'Desert.jpg', '', '1474586586Desert.jpg', '', '', '', 0, 'vasquezdvasquezd1474585820', '', 1, 0, 0, '', '2016-09-22 23:23:06', '0000-00-00 00:00:00'),
(730, 0, 273, 0, 0, '', 'Desert.jpg', '', '1474586609Desert.jpg', '', '', '', 0, 'vasquezdvasquezd1474585820', '', 1, 0, 0, '', '2016-09-22 23:23:29', '0000-00-00 00:00:00'),
(731, 0, 273, 0, 0, '', 'Desert.jpg', '', '1474586631Desert.jpg', '', '', '', 0, 'vasquezdvasquezd1474585820', '', 1, 0, 0, '', '2016-09-22 23:23:51', '0000-00-00 00:00:00'),
(732, 0, 273, 0, 0, '', 'Desert.jpg', '', '1474586638Desert.jpg', '', '', '', 0, 'vasquezdvasquezd1474585820', '', 1, 0, 0, '', '2016-09-22 23:23:58', '0000-00-00 00:00:00'),
(733, 0, 273, 0, 0, '', 'Desert.jpg', '', '1474586645Desert.jpg', '', '', '', 0, 'vasquezdvasquezd1474585820', '', 1, 0, 0, '', '2016-09-22 23:24:05', '0000-00-00 00:00:00'),
(734, 0, 273, 0, 0, '', 'Desert.jpg', '', '1474586658Desert.jpg', '', '', '', 0, 'vasquezdvasquezd1474585820', '', 1, 0, 0, '', '2016-09-22 23:24:18', '0000-00-00 00:00:00'),
(735, 0, 273, 0, 0, '', 'Desert.jpg', '', '1474586732Desert.jpg', '', '', '', 0, 'vasquezdvasquezd1474585820', '', 1, 0, 0, '', '2016-09-22 23:25:32', '0000-00-00 00:00:00'),
(736, 0, 273, 0, 0, '', 'Desert.jpg', '', '1474586735Desert.jpg', '', '', '', 0, 'vasquezdvasquezd1474585820', '', 1, 0, 0, '', '2016-09-22 23:25:35', '0000-00-00 00:00:00'),
(737, 0, 274, 0, 0, '', 'Jellyfish.jpg', '', '1474586741Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1474586735', '', 1, 0, 0, '', '2016-09-22 23:25:41', '0000-00-00 00:00:00'),
(738, 0, 274, 0, 0, '', 'Jellyfish.jpg', '', '1474586805Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1474586735', '', 1, 0, 0, '', '2016-09-22 23:26:45', '0000-00-00 00:00:00'),
(739, 0, 274, 0, 0, '', 'Jellyfish.jpg', '', '1474587083Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1474586735', '', 1, 0, 0, '', '2016-09-22 23:31:23', '0000-00-00 00:00:00'),
(740, 0, 274, 0, 0, '', 'Jellyfish.jpg', '', '1474587096Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1474586735', '', 1, 0, 0, '', '2016-09-22 23:31:36', '0000-00-00 00:00:00'),
(741, 0, 274, 0, 0, '', 'Jellyfish.jpg', '', '1474587124Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1474586735', '', 1, 0, 0, '', '2016-09-22 23:32:04', '0000-00-00 00:00:00'),
(742, 0, 274, 0, 0, '', 'Jellyfish.jpg', '', '1474587194Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1474586735', '', 1, 0, 0, '', '2016-09-22 23:33:14', '0000-00-00 00:00:00'),
(743, 0, 292, 0, 0, '', 'Koala.jpg', '', '1474665406Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1474665197', '', 1, 0, 0, '', '2016-09-23 21:16:46', '0000-00-00 00:00:00'),
(744, 0, 293, 0, 0, '', 'Desert.jpg', '', '1474665416Desert.jpg', '', '', '', 0, 'vasquezdvasquezd1474665195', '', 1, 0, 0, '', '2016-09-23 21:16:56', '0000-00-00 00:00:00'),
(745, 0, 294, 0, 0, '', 'Koala.jpg', '', '1474665774Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1474665723', '', 1, 0, 0, '', '2016-09-23 21:22:54', '0000-00-00 00:00:00'),
(746, 0, 295, 0, 0, '', 'Jellyfish.jpg', '', '1474665819Jellyfish.jpg', '', '', '', 0, 'vasquezdvasquezd1474665774', '', 1, 0, 0, '', '2016-09-23 21:23:39', '0000-00-00 00:00:00'),
(747, 0, 296, 0, 0, '', 'Hydrangeas.jpg', '', '1474666041Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1474666018', '', 1, 0, 0, '', '2016-09-23 21:27:21', '0000-00-00 00:00:00'),
(748, 0, 297, 0, 0, '', 'Koala.jpg', '', '1474666079Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1474666065', '', 1, 0, 0, '', '2016-09-23 21:27:59', '0000-00-00 00:00:00'),
(749, 0, 298, 0, 0, '', 'Desert.jpg', '', '1474666102Desert.jpg', '', '', '', 0, 'vasquezdvasquezd1474666079', '', 1, 0, 0, '', '2016-09-23 21:28:22', '0000-00-00 00:00:00'),
(750, 0, 299, 0, 0, '', 'Hydrangeas.jpg', '', '1474666121Hydrangeas.jpg', '', '', '', 0, 'vasquezd1061474666116', '', 1, 0, 0, '', '2016-09-23 21:28:41', '0000-00-00 00:00:00'),
(751, 0, 299, 0, 0, '', 'Hydrangeas.jpg', '', '1474666634Hydrangeas.jpg', '', '', '', 0, 'vasquezd1061474666116', '', 1, 0, 0, '', '2016-09-23 21:37:14', '0000-00-00 00:00:00'),
(752, 0, 300, 0, 0, '', 'Jellyfish.jpg', '', '1474666639Jellyfish.jpg', '', '', '', 0, 'vasquezd1061474666634', '', 1, 0, 0, '', '2016-09-23 21:37:19', '0000-00-00 00:00:00'),
(753, 0, 300, 0, 0, '', 'Jellyfish.jpg', '', '1474667342Jellyfish.jpg', '', '', '', 0, 'vasquezd1061474666634', '', 1, 0, 0, '', '2016-09-23 21:49:02', '0000-00-00 00:00:00'),
(754, 0, 301, 0, 0, '', 'Jellyfish.jpg', '', '1474667347Jellyfish.jpg', '', '', '', 0, 'vasquezd1061474667342', '', 1, 0, 0, '', '2016-09-23 21:49:07', '0000-00-00 00:00:00'),
(755, 0, 301, 0, 0, '', 'Jellyfish.jpg', '', '1474667392Jellyfish.jpg', '', '', '', 0, 'vasquezd1061474667342', '', 1, 0, 0, '', '2016-09-23 21:49:52', '0000-00-00 00:00:00'),
(756, 0, 296, 0, 0, '', 'Hydrangeas.jpg', '', '1474667603Hydrangeas.jpg', '', '', '', 0, 'vasquezdvasquezd1474666018', '', 1, 0, 0, '', '2016-09-23 21:53:23', '0000-00-00 00:00:00'),
(757, 0, 303, 0, 0, '', 'Koala.jpg', '', '1474667609Koala.jpg', '', '', '', 0, 'vasquezdvasquezd1474667603', '', 1, 0, 0, '', '2016-09-23 21:53:29', '0000-00-00 00:00:00'),
(758, 0, 304, 0, 0, '', 'Tulips.jpg', '', '1474667617Tulips.jpg', '', '', '', 0, 'vasquezdvasquezd1474665819', '', 1, 0, 0, '', '2016-09-23 21:53:37', '0000-00-00 00:00:00'),
(759, 0, 305, 0, 0, '', 'Penguins.jpg', '', '1474667668Penguins.jpg', '', '', '', 0, 'vasquezdvasquezd1474667617', '', 1, 0, 0, '', '2016-09-23 21:54:28', '0000-00-00 00:00:00'),
(760, 0, 301, 0, 0, '', 'Jellyfish.jpg', '', '1474667712Jellyfish.jpg', '', '', '', 0, 'vasquezd1061474667342', '', 1, 0, 0, '', '2016-09-23 21:55:12', '0000-00-00 00:00:00'),
(761, 0, 307, 0, 0, '', 'Tulips.jpg', '', '1474667721Tulips.jpg', '', '', '', 0, 'vasquezd1061474667712', '', 1, 0, 0, '', '2016-09-23 21:55:21', '0000-00-00 00:00:00'),
(762, 0, 326, 0, 0, '', 'Lighthouse.jpg', '', '1474670933Lighthouse.jpg', '', '', '', 0, 'matt1061474670927', '', 1, 0, 0, '', '2016-09-23 22:48:53', '0000-00-00 00:00:00'),
(763, 0, 327, 0, 0, '', 'Tulips.jpg', '', '1474670937Tulips.jpg', '', '', '', 0, 'matt1061474670933', '', 1, 0, 0, '', '2016-09-23 22:48:57', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=195 ;

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
(191, 'vasquezd', 1, 'brian', 3, 'vasquezdbrian', '2016-07-30 23:33:42'),
(192, 'Sarah', 7, 'vasquezd', 1, 'Sarahvasquezd', '2016-08-27 22:07:57'),
(193, 'Sarah', 7, 'vasquezd', 1, 'Sarahvasquezd', '2016-08-27 22:07:57'),
(194, 'vasquezd', 1, 'Sarah', 7, 'vasquezdSarah', '2016-08-27 22:07:57');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=282 ;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`link_id`, `group_id`, `folder_name`, `parent`, `is_folder`, `link_url`, `link_title`, `user_name`, `link_from`, `link_image`, `link_favicon`, `link_type`, `caption`, `tag_id`, `likes`, `unique_id`, `link_status`, `recycle_status`, `square_id`, `created`, `updated`) VALUES
(281, 0, 'Wall Posts', 0, 0, 'https://www.amazon.com/Lord-Brocktree-Redwall-Brian-Jacques/dp/0441008720/ref=sr_1_14?ie=UTF8&qid=1474667792&sr=8-14&keywords=redwall', 'Amazon.com: Lord Brocktree: A Novel of Redwall (9780441008728): Brian Jacques: Books', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-09-23 22:18:41', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=235 ;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`list_primary_id`, `list_id`, `user_name`, `user_id`, `user_privilege`, `created_by`, `shared_with`, `list_type`, `list_name`, `group_id`, `unique_key`, `active_status`, `recycle_status`, `updated`, `created`) VALUES
(214, 214, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'wishlist', 'This Is A New List', 0, '2d9b662c34b55109d5d608257f459a37', 0, 0, '2016-08-20 23:56:53', '2016-08-07 22:01:20'),
(215, 215, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'wishlist', 'Also this is too', 0, 'ff61e712a26fa4ab833ff1e0fa732217', 0, 0, '2016-08-13 21:24:00', '2016-08-07 22:01:27'),
(216, 216, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'wishlist', 'list 216', 0, 'cafb639dc700dd6c9147d74e827e13d8', 0, 0, '2016-08-11 22:48:57', '2016-08-07 22:03:09'),
(217, 217, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'wishlist', 'Guitar Equipment', 0, 'd8e08c21d0ec2af2b2ca207859125d58', 1, 0, '2016-08-13 22:58:04', '2016-08-12 20:29:09'),
(218, 218, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'wishlist', 'Birthday Ideas', 0, '8d52aaf10949071c36fa73091e4da234', 1, 0, '2016-08-13 22:54:34', '2016-08-13 21:24:13'),
(219, 219, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'wishlist', 'Legos I Like', 0, 'd4f8ef1b18a2e2331f12d5a86a094cbd', 1, 0, '2016-08-22 21:07:25', '2016-08-22 21:07:25'),
(220, 219, 'kristen', 4, 'view', 'vasquezd', 'kristen', 'wishlist', 'Legos I Like', 0, '', 0, 0, '2016-09-02 22:23:29', '0000-00-00 00:00:00'),
(221, 219, 'Sarah', 7, 'view', 'vasquezd', 'Sarah', 'wishlist', 'Legos I Like', 0, '', 0, 0, '2016-09-02 22:28:08', '0000-00-00 00:00:00'),
(222, 217, 'matt', 2, 'view', 'vasquezd', 'matt', 'wishlist', 'Guitar Equipment', 0, '', 0, 0, '2016-09-02 22:46:36', '0000-00-00 00:00:00'),
(223, 223, 'matt', 2, 'own', 'matt', 'matt', 'wishlist', 'Matt''s List', 0, '9cf666d2024113b1f4606cf7aa5c2d57', 1, 0, '2016-09-02 23:44:44', '2016-09-02 23:44:44'),
(225, 225, 'kristen', 4, 'own', 'kristen', 'kristen', 'wishlist', 'kristen list', 0, 'eafe71e75c1555bffdddb5e01107337f', 1, 0, '2016-09-04 00:20:04', '2016-09-04 00:20:04'),
(226, 225, 'vasquezd', 1, 'view', 'kristen', 'vasquezd', 'wishlist', 'kristen list', 0, '', 1, 0, '2016-09-04 00:25:05', '0000-00-00 00:00:00'),
(227, 227, 'matt', 2, 'own', 'matt', 'matt', 'wishlist', 'Video games', 0, 'e1894df4c8df3dcd5a499d9d2db91766', 1, 0, '2016-09-06 00:23:19', '2016-09-06 00:23:19'),
(228, 227, 'vasquezd', 1, 'view', 'matt', 'vasquezd', 'wishlist', 'Video games', 0, '', 1, 0, '2016-09-06 00:33:54', '0000-00-00 00:00:00'),
(229, 218, 'matt', 2, 'view', 'vasquezd', 'matt', 'wishlist', 'Birthday Ideas', 0, '', 0, 0, '2016-09-08 22:46:28', '0000-00-00 00:00:00'),
(230, 230, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'wishlist', 'delete', 0, '7ce027d9bdf6a0658685dccdae0470d1', 0, 0, '2016-09-09 22:16:45', '2016-09-09 22:16:40'),
(231, 219, 'testing4', 64, 'view', 'vasquezd', 'testing4', 'wishlist', 'Legos I Like', 0, '', 1, 0, '2016-09-20 20:42:54', '0000-00-00 00:00:00'),
(232, 219, 'testing7', 65, 'view', 'vasquezd', 'testing7', 'wishlist', 'Legos I Like', 0, '', 1, 0, '2016-09-20 20:54:48', '0000-00-00 00:00:00'),
(233, 219, 'testing2', 71, 'view', 'vasquezd', 'testing2', 'shareshare', 'Legos I Like', 0, '', 1, 0, '2016-09-20 21:46:20', '0000-00-00 00:00:00'),
(234, 234, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'wishlist', 'Christmas Ideas', 0, '3c6b5c695875a47ce60a2866fabb7131', 1, 0, '2016-09-23 21:58:09', '2016-09-23 21:58:09');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=188 ;

--
-- Dumping data for table `list_users`
--

INSERT INTO `list_users` (`primary_id`, `list_id`, `user_name`, `user_privilege`, `active_member`, `created`, `updated`) VALUES
(185, 219, 'testing2', 'view', 1, '2016-09-20 21:46:20', '0000-00-00 00:00:00'),
(186, 219, 'LIST', 'LIST', 0, '2016-09-20 21:46:20', '0000-00-00 00:00:00'),
(187, 234, 'vasquezd', 'own', 1, '2016-09-23 21:58:09', '0000-00-00 00:00:00');

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
  `notification_message` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `sub_category` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `from_logged_in_user` int(11) NOT NULL,
  `status_unseen` int(11) NOT NULL,
  `clicked` int(11) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=279 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `pending_email`
--

INSERT INTO `pending_email` (`primary_id`, `codehash`, `request_from`, `request_to`, `email`, `square_id`, `group_id`, `list_id`, `status`) VALUES
(1, 'c1d020611bdceaea8f4c59b5ee1c6b2d61adf6c6', 'vasquezd', '<a href=?hash=c1d020611bdceaea8f4c59b5ee1c6b2d61adf6c6&useremail=vasquezd@onid.orst.edu&friendname=vasquezd&listid=218">Join Shareshare</a></p>', 'vasquezd@onid.orst.edu', 0, 0, 218, 0),
(2, '753865c9ae823f414e3935d83b4fab4c6989fdb1', 'vasquezd', '<a href=http://localhost/sites/shareshare/site_files/register_email.php?hash=753865c9ae823f414e3935d83b4fab4c6989fdb1&useremail=vasquezd@onid.orst.edu&friendname=vasquezd&squareid=106">Join Shareshare</a></p>', 'vasquezd@onid.orst.edu', 0, 106, 0, 0),
(3, 'de92fc4a68925e4a099768b918b51298cc2766a4', 'vasquezd', '<a href=http://localhost/sites/shareshare/site_files/register_email.php?hash=de92fc4a68925e4a099768b918b51298cc2766a4&useremail=vasquezd@onid.orst.edu&friendname=vasquezd&squareid=106">Join Shareshare</a></p>', 'vasquezd@onid.orst.edu', 0, 106, 0, 0),
(4, '3032f4853e4775312f30293bc3965faaa9bb6875', 'vasquezd', '<a href=http://localhost/sites/shareshare/site_files/register_email.php?hash=3032f4853e4775312f30293bc3965faaa9bb6875&useremail=vasquezd@onid.orst.edu&friendname=vasquezd&squareid=106">Join Shareshare</a></p>', 'vasquezd@onid.orst.edu', 0, 106, 0, 0),
(5, 'efc813fc10afbabb65a71b217fbc02a6addf474c', 'vasquezd', '<a href=http://localhost/sites/shareshare/site_files/register_email.php?hash=efc813fc10afbabb65a71b217fbc02a6addf474c&useremail=vasquezd@onid.orst.edu&friendname=vasquezd&squareid=106">Join Shareshare</a></p>', 'vasquezd@onid.orst.edu', 0, 106, 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=328 ;

--
-- Dumping data for table `pending_requests`
--

INSERT INTO `pending_requests` (`primary_id`, `request_type`, `request_type_name`, `sent_by`, `sent_to`, `request_key`, `sent_to_email`, `square_id`, `group_id`, `list_id`, `status`, `updated`, `created`) VALUES
(307, 'friend', '', 'vasquezd', 'matt', 'vasquezdmatt', '', 0, 0, 0, 0, '2016-07-25 23:38:08', '0000-00-00 00:00:00'),
(308, 'friend', '', 'matt', 'vasquezd', 'mattvasquezd', '', 0, 0, 0, 0, '2016-07-25 23:39:52', '0000-00-00 00:00:00'),
(309, 'friend', '', 'kristen', 'vasquezd', 'kristenvasquezd', '', 0, 0, 0, 0, '2016-07-26 20:55:52', '0000-00-00 00:00:00'),
(310, 'friend', '', 'kristen', 'Sarah', 'kristenSarah', '', 0, 0, 0, 1, '2016-07-26 20:55:55', '0000-00-00 00:00:00'),
(311, 'friend', '', 'kristen', 'brian', 'kristenbrian', '', 0, 0, 0, 0, '2016-07-26 20:56:01', '0000-00-00 00:00:00'),
(312, 'friend', '', 'kristen', 'Becca', 'kristenBecca', '', 0, 0, 0, 0, '2016-07-26 20:56:04', '0000-00-00 00:00:00'),
(313, 'friend', '', 'vasquezd', 'brian', 'vasquezdbrian', '', 0, 0, 0, 0, '2016-07-30 23:32:59', '0000-00-00 00:00:00'),
(314, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 202, 1, '2016-08-06 23:28:33', '0000-00-00 00:00:00'),
(315, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 204, 1, '2016-08-06 23:29:38', '0000-00-00 00:00:00'),
(316, 'friend', '', 'vasquezd', 'Sarah', 'vasquezdSarah', '', 0, 0, 0, 0, '2016-08-27 22:07:01', '0000-00-00 00:00:00'),
(317, 'friend', 'Wants to be Friends', 'kristen', 'matt', 'kristenmatt', '', 0, 0, 0, 1, '2016-08-27 22:40:28', '0000-00-00 00:00:00'),
(318, 'new_list', 'Wants to add you to a list', 'vasquezd', 'kristen', '', '', 0, 0, 219, 1, '2016-09-02 22:23:29', '0000-00-00 00:00:00'),
(319, 'new_list', 'Wants to add you to a list', 'vasquezd', 'Sarah', '', '', 0, 0, 219, 1, '2016-09-02 22:28:08', '0000-00-00 00:00:00'),
(320, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 217, 1, '2016-09-02 22:46:36', '0000-00-00 00:00:00'),
(321, 'new_list', 'Wants to add you to a list', 'matt', 'vasquezd', '', '', 0, 0, 223, 0, '2016-09-02 23:44:50', '0000-00-00 00:00:00'),
(322, 'new_list', 'Wants to add you to a list', 'kristen', 'vasquezd', '', '', 0, 0, 225, 0, '2016-09-04 00:20:11', '0000-00-00 00:00:00'),
(323, 'friend', 'Wants to be Friends', 'vasquezd', 'Becca', 'vasquezdBecca', '', 0, 0, 0, 1, '2016-09-04 21:46:09', '0000-00-00 00:00:00'),
(324, 'new_list', 'Wants to add you to a list', 'matt', 'vasquezd', '', '', 0, 0, 227, 0, '2016-09-06 00:23:26', '0000-00-00 00:00:00'),
(325, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 218, 1, '2016-09-08 22:46:28', '0000-00-00 00:00:00'),
(326, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 0, 1, '2016-09-09 21:09:59', '0000-00-00 00:00:00'),
(327, 'new_list', 'Wants to add you to a list', 'vasquezd', 'testing4', '', '', 0, 0, 219, 0, '2016-09-20 20:41:43', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=328 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_master_type`, `category`, `parent`, `list_id`, `post_from`, `post_to`, `post_type`, `post_caption`, `post_url`, `video_code`, `image_url`, `file_url`, `file_name`, `article_title`, `article_text`, `contains_file`, `unique_id`, `post_status`, `purchased`, `purchased_by`, `comment_seen`, `updated`, `created`) VALUES
(325, 'shareshare', '', 0, 0, 'vasquezd', '106', 'discussion', 'hello there', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-09-23 22:45:46', '2016-09-23 22:45:46'),
(326, 'shareshare', 'null', 0, 0, 'matt', '106', 'photo', '', '', '', '1474670933Lighthouse.jpg', '', '', '', '', 0, 'matt1061474670927', 1, 0, '', '0000-00-00 00:00:00', '2016-09-23 22:48:53', '2016-09-23 22:48:53'),
(327, 'shareshare', 'null', 0, 0, 'matt', '106', 'photo', '', '', '', '1474670937Tulips.jpg', '', '', '', '', 0, 'matt1061474670933', 1, 0, '', '0000-00-00 00:00:00', '2016-09-23 22:48:57', '2016-09-23 22:48:57');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=200 ;

--
-- Dumping data for table `user_analytics`
--

INSERT INTO `user_analytics` (`analytics_id`, `page_url`, `group_id`, `last_visit`, `total_visits`, `user_name`, `user_id`) VALUES
(186, 'group_discussion.php', 106, '2016-09-23 22:45:47', 372, 'vasquezd', 0),
(187, 'group_wall.php', 106, '2016-09-23 22:49:13', 390, 'vasquezd', 0),
(188, 'group_wall.php', 106, '2016-09-23 22:48:57', 59, 'matt', 0),
(189, 'group_discussion.php', 106, '2016-06-28 21:24:23', 9, 'matt', 0),
(190, 'group_files.php', 106, '2016-06-27 23:06:18', 1, 'matt', 0),
(191, 'group_links.php', 106, '2016-06-28 21:25:36', 30, 'matt', 0),
(192, 'group_links.php', 106, '2016-07-03 23:00:37', 5, 'vasquezd', 0),
(193, 'group_files.php', 106, '2016-09-23 22:45:50', 28, 'vasquezd', 0),
(194, 'group_wall.php', 114, '2016-09-23 22:18:08', 37, 'vasquezd', 0),
(195, 'group_wall.php', 115, '2016-06-30 22:33:12', 11, 'vasquezd', 0),
(196, 'group_discussion.php', 115, '2016-06-30 22:33:11', 0, 'vasquezd', 0),
(197, 'group_discussion.php', 114, '2016-07-09 21:51:13', 1, 'vasquezd', 0),
(198, 'group_discussion.php', 0, '2016-07-08 22:49:18', 0, 'vasquezd', 0),
(199, 'group_files.php', 114, '2016-08-26 23:12:02', 10, 'vasquezd', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `salt`, `password`, `last_login`, `last_logout`, `login_total`, `test`) VALUES
(1, 'vasquezd', 1408593605, 'f62c9d59b1b2cbe2b6462784e1d6a550f1afbe85', '2016-09-23 22:49:04', '2016-09-23 22:48:29', 259, 'vasquezb'),
(2, 'matt', 1448946249, 'de85ef10d2853b10978ac6c8e0c37c354d3b6969', '2016-09-23 22:48:40', '2016-09-23 22:49:01', 34, 'vasquezb'),
(3, 'brian', 1448946380, 'ace622215c315ce82bfd153b63c7faeb218a17da', '2016-08-27 22:34:27', '2016-08-27 22:40:17', 6, 'vasquezb'),
(4, 'Kristen', 1448946380, 'e3ae7af8145e258b854728fc9cebe6c8891ee2a5', '2016-09-04 22:04:40', '2016-09-04 22:05:52', 7, 'vasquezb'),
(5, 'Aimee', 1448946380, '33f916c66f61bbf37a12105c8bb3e0fc8ea75fd6', '2015-12-14 05:02:39', '2015-12-01 05:28:26', 0, ''),
(6, 'Becca', 1448946503, 'ba342a034cc175fb24a1c3d59d190da0c31f0106', '2016-09-04 21:46:21', '2016-09-04 21:46:51', 6, ''),
(7, 'Sarah', 1448946503, '378d32da508020f682a238053fec6f307e0aa30a', '2016-08-27 22:07:51', '2016-08-27 22:08:01', 1, ''),
(8, 'chris', 1448946380, '80c96f63d24bc38382aca981ed2e262c22582605', '2015-12-19 04:01:14', '2015-12-16 22:18:50', 0, ''),
(9, 'pop', 1448946503, '851b0d429828f520537e2323a1c5f1cde21eee5d', '2015-12-01 05:31:10', '2015-12-01 05:31:10', 0, ''),
(39, 'vasquezk', 1466107880, '6d7cb2a50e2fbaaa22735cc31d0a0df53e9afb30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(40, 'koala', 1469487504, 'b374bd02cd57b12ee7dd84194745aeeec8a12cb3', '2016-07-25 23:09:28', '2016-07-25 23:09:33', 2, ''),
(60, 'david', 1474402462, '9c41e856498d3af80b81cc7189811dc392c74fe5', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(71, 'testing2', 1474407980, 'eb0c2315da38845b4ad4da41c8e3142c90efe101', '2016-09-20 21:46:28', '2016-09-20 23:07:23', 1, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_profile_id`, `user_id`, `user_name`, `email`, `image_name`, `first_name`, `last_name`, `root_folder`, `biography`, `university`, `updated`, `created`) VALUES
(46, 1, 'vasquezd', 'Vasquezd@onid.orst.edu', '14712214651467493208david__1_1.jpg', 'David', 'Vasquez', 'Vasquezd', 'Well I like to do stuff ', 'Oregon State ', '2016-04-03 21:33:50', '2014-08-21 18:00:05'),
(47, 2, 'matt', 'vasquezm@shareshare.com', 'matt.jpg', 'Matt', 'Vasquez', '', 'This is matts page!', '', '2015-12-01 04:55:10', '0000-00-00 00:00:00'),
(48, 3, 'brian', 'vasquezb@shareshare.com', 'brian.jpg', 'Brian', 'Vasquez', '', 'this is brian''s page! ', '', '2016-04-09 21:02:59', '0000-00-00 00:00:00'),
(49, 4, 'Kristen', 'vasquezj@shareshare.com', 'david.jpg', 'Kristen', 'Vasquez', '', 'this is my page!', '', '2015-12-03 03:25:43', '0000-00-00 00:00:00'),
(50, 5, 'Aimee', 'Aimeeaileen@mac.com', '1449476920image.jpeg', 'Aimee', 'Vasquez', 'Vasquez', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-07 08:28:40', '0000-00-00 00:00:00'),
(51, 6, 'Becca', 'Vasquezd@onid.orst.edu', 'Becca.jpg', 'Becca', 'Vasquez', 'vasquezma', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2016-04-09 21:03:19', '0000-00-00 00:00:00'),
(52, 7, 'Sarah', 'Vasquezd@onid.orst.edu', 'david.jpg', 'Sarah', 'Vasquez', 'Vasquezbb', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-01 04:57:23', '0000-00-00 00:00:00'),
(53, 8, 'chris', 'californiachristophe@gmail.com', '1450307134Screen.jpg', 'Chris', 'Vasquez', 'Vasquezdk', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-16 23:05:34', '0000-00-00 00:00:00'),
(54, 9, 'pop', 'Vasquezd@onid.orst.edu', 'david.jpg', 'Pop', 'Vasquez', 'vasquezbas', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-01 04:57:59', '0000-00-00 00:00:00'),
(55, 39, 'vasquezk', 'kristen@onid.orst.edu', 'david.jpg', 'kristen', 'vasquez', 'vasquezk', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-06-16 20:11:20'),
(56, 40, 'koala', 'koala@koala.com', 'david.jpg', 'koala', 'bear', 'koala', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-07-25 22:58:24'),
(72, 60, 'david', 'testing1@htoamil.com', 'david.jpg', 'testing1', 'testing1', 'david', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-09-20 20:14:22'),
(83, 71, 'testing2', 'vasquezd@onid.orst.edu', 'david.jpg', 'testing2', 'testing2', 'testing2', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-09-20 21:46:20');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `user_size`
--

INSERT INTO `user_size` (`primary_key`, `user_name`, `user_id`, `gender`, `birthday`, `street_address_line_one`, `street_address_line_two`, `address_city`, `address_state`, `address_zip_code`, `address_country`, `user_shirt`, `user_sweater`, `user_coat`, `user_jeans`, `user_pants`, `user_dress_size`, `user_shoes`, `user_info`) VALUES
(1, 'vasquezd', 1, 'Male', 'December 3', '155 NW Kings Blvd', 'Apartment 647', 'Corvallis', 'Oregon', '97330', 'USA', 'Medium', 'Medium', 'medium or large', '34 x 30 or 33 x 30', 'same as jeans', '', '12', ''),
(2, 'vasquezb', 3, '', 'May 28', '', '', '', '', '', '', 'large', 'large', 'medium or large', '34 x 30 or 33 x 30', '', '', '12', ''),
(3, 'chris', 8, '', 'March', '', '', '', '', '', '', 'XL', 'XL', '', '38 by 34', '', '', '11', ''),
(4, 'pop', 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'Sarah', 7, '', '', 'sarah', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'Becca', 6, '', '', 'becca', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'Aimee', 5, '', '11/22/83', '', '', '', '', '', '', 'Girl large or extra large/ guy small', 'Girl large/ guy small or medium ', '', '', '', '', '', ''),
(8, 'Kristen', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'Brian', 3, '', '', 'brian', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 'matt', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, 'david', 60, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, 'testing2', 71, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
