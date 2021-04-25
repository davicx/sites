-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2016 at 10:48 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=599 ;

--
-- Dumping data for table `divvy_hashtag`
--

INSERT INTO `divvy_hashtag` (`divvy_hashtag_id`, `divvy_id`, `list_id`, `hashtag`, `hashtag_from`, `hashtag_to`, `hashtag_created_by`, `active`, `status_seen`, `updated`, `created`) VALUES
(381, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 21:41:18', '2016-06-23 22:14:55'),
(382, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 21:41:18', '2016-06-23 22:14:55'),
(383, 282, 155, 'gotothis', 'matt', 'matt', 'matt', 0, 0, '2016-07-01 21:41:18', '2016-06-23 22:19:49'),
(384, 281, 155, 'tag', 'matt', 'matt', 'matt', 0, 0, '2016-07-06 22:51:45', '2016-06-23 22:20:53'),
(385, 281, 155, 'tag', 'Vasquezd', 'Vasquezd', 'Vasquezd', 0, 0, '2016-07-06 22:51:45', '2016-06-24 20:03:10'),
(386, 282, 155, 'gotothisÂ ', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:42:26', '2016-07-01 21:41:18'),
(387, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 21:41:47', '2016-07-01 21:41:47'),
(388, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 21:41:47', '2016-07-01 21:41:47'),
(389, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 21:43:30', '2016-07-01 21:43:30'),
(390, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 21:43:30', '2016-07-01 21:43:30'),
(391, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 21:43:41', '2016-07-01 21:43:41'),
(392, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 21:43:41', '2016-07-01 21:43:41'),
(393, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 21:51:53', '2016-07-01 21:51:53'),
(394, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 21:51:53', '2016-07-01 21:51:53'),
(395, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 21:52:19', '2016-07-01 21:52:19'),
(396, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 21:52:19', '2016-07-01 21:52:19'),
(397, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 21:52:44', '2016-07-01 21:52:44'),
(398, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 21:52:44', '2016-07-01 21:52:44'),
(399, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 21:53:03', '2016-07-01 21:53:03'),
(400, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 21:53:03', '2016-07-01 21:53:03'),
(401, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 21:54:52', '2016-07-01 21:54:52'),
(402, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 21:54:52', '2016-07-01 21:54:52'),
(403, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 21:55:55', '2016-07-01 21:55:55'),
(404, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 21:55:55', '2016-07-01 21:55:55'),
(405, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 21:56:14', '2016-07-01 21:56:14'),
(406, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 21:56:14', '2016-07-01 21:56:14'),
(407, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 21:58:22', '2016-07-01 21:58:22'),
(408, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 21:58:22', '2016-07-01 21:58:22'),
(409, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 21:58:44', '2016-07-01 21:58:44'),
(410, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 21:58:44', '2016-07-01 21:58:44'),
(411, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 21:59:35', '2016-07-01 21:59:35'),
(412, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 21:59:35', '2016-07-01 21:59:35'),
(413, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:00:19', '2016-07-01 22:00:19'),
(414, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:00:19', '2016-07-01 22:00:19'),
(415, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:02:14', '2016-07-01 22:02:14'),
(416, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:02:14', '2016-07-01 22:02:14'),
(417, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:03:06', '2016-07-01 22:03:06'),
(418, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:03:06', '2016-07-01 22:03:06'),
(419, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:06:51', '2016-07-01 22:06:51'),
(420, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:06:51', '2016-07-01 22:06:51'),
(421, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:07:37', '2016-07-01 22:07:37'),
(422, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:07:37', '2016-07-01 22:07:37'),
(423, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:08:04', '2016-07-01 22:08:04'),
(424, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:08:04', '2016-07-01 22:08:04'),
(425, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:08:17', '2016-07-01 22:08:17'),
(426, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:08:17', '2016-07-01 22:08:17'),
(427, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:08:24', '2016-07-01 22:08:24'),
(428, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:08:24', '2016-07-01 22:08:24'),
(429, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:09:27', '2016-07-01 22:09:27'),
(430, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:09:27', '2016-07-01 22:09:27'),
(431, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:18:04', '2016-07-01 22:18:04'),
(432, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:18:04', '2016-07-01 22:18:04'),
(433, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:18:24', '2016-07-01 22:18:24'),
(434, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:18:24', '2016-07-01 22:18:24'),
(435, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:18:40', '2016-07-01 22:18:40'),
(436, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:18:40', '2016-07-01 22:18:40'),
(437, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:20:23', '2016-07-01 22:20:23'),
(438, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:20:23', '2016-07-01 22:20:23'),
(439, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:21:07', '2016-07-01 22:21:07'),
(440, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:21:07', '2016-07-01 22:21:07'),
(441, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:21:34', '2016-07-01 22:21:34'),
(442, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:21:34', '2016-07-01 22:21:34'),
(443, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:23:06', '2016-07-01 22:23:06'),
(444, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:23:06', '2016-07-01 22:23:06'),
(445, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:23:17', '2016-07-01 22:23:17'),
(446, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:23:17', '2016-07-01 22:23:17'),
(447, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:24:38', '2016-07-01 22:24:38'),
(448, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:24:38', '2016-07-01 22:24:38'),
(449, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:25:08', '2016-07-01 22:25:08'),
(450, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:25:08', '2016-07-01 22:25:08'),
(451, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:25:15', '2016-07-01 22:25:15'),
(452, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:25:15', '2016-07-01 22:25:15'),
(453, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:29:21', '2016-07-01 22:29:21'),
(454, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:29:21', '2016-07-01 22:29:21'),
(455, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:29:38', '2016-07-01 22:29:38'),
(456, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:29:38', '2016-07-01 22:29:38'),
(457, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:29:50', '2016-07-01 22:29:50'),
(458, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:29:50', '2016-07-01 22:29:50'),
(459, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:30:50', '2016-07-01 22:30:50'),
(460, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:30:50', '2016-07-01 22:30:50'),
(461, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:31:09', '2016-07-01 22:31:09'),
(462, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:31:09', '2016-07-01 22:31:09'),
(463, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:34:44', '2016-07-01 22:34:44'),
(464, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:34:44', '2016-07-01 22:34:44'),
(465, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:35:16', '2016-07-01 22:35:16'),
(466, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:35:16', '2016-07-01 22:35:16'),
(467, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:35:54', '2016-07-01 22:35:54'),
(468, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:35:54', '2016-07-01 22:35:54'),
(469, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:36:05', '2016-07-01 22:36:05'),
(470, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:36:05', '2016-07-01 22:36:05'),
(471, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:36:32', '2016-07-01 22:36:32'),
(472, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:36:32', '2016-07-01 22:36:32'),
(473, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:37:09', '2016-07-01 22:37:09'),
(474, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:37:09', '2016-07-01 22:37:09'),
(475, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:38:03', '2016-07-01 22:38:03'),
(476, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:38:03', '2016-07-01 22:38:03'),
(477, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:38:10', '2016-07-01 22:38:10'),
(478, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:38:10', '2016-07-01 22:38:10'),
(479, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:40:20', '2016-07-01 22:40:20'),
(480, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:40:20', '2016-07-01 22:40:20'),
(481, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:40:48', '2016-07-01 22:40:48'),
(482, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:40:48', '2016-07-01 22:40:48'),
(483, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:41:13', '2016-07-01 22:41:13'),
(484, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:41:13', '2016-07-01 22:41:13'),
(485, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:41:20', '2016-07-01 22:41:20'),
(486, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:41:20', '2016-07-01 22:41:20'),
(487, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:42:17', '2016-07-01 22:42:17'),
(488, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:42:17', '2016-07-01 22:42:17'),
(489, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:42:39', '2016-07-01 22:42:39'),
(490, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:42:39', '2016-07-01 22:42:39'),
(491, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:43:05', '2016-07-01 22:43:05'),
(492, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:43:05', '2016-07-01 22:43:05'),
(493, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:43:26', '2016-07-01 22:43:26'),
(494, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:43:26', '2016-07-01 22:43:26'),
(495, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:43:42', '2016-07-01 22:43:42'),
(496, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:43:42', '2016-07-01 22:43:42'),
(497, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:44:43', '2016-07-01 22:44:43'),
(498, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:44:43', '2016-07-01 22:44:43'),
(499, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:45:00', '2016-07-01 22:45:00'),
(500, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:45:00', '2016-07-01 22:45:00'),
(501, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:47:59', '2016-07-01 22:47:59'),
(502, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:47:59', '2016-07-01 22:47:59'),
(503, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:48:25', '2016-07-01 22:48:25'),
(504, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:48:25', '2016-07-01 22:48:25'),
(505, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:49:22', '2016-07-01 22:49:22'),
(506, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:49:22', '2016-07-01 22:49:22'),
(507, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:50:19', '2016-07-01 22:50:19'),
(508, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:50:19', '2016-07-01 22:50:19'),
(509, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:50:30', '2016-07-01 22:50:30'),
(510, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:50:30', '2016-07-01 22:50:30'),
(511, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:50:46', '2016-07-01 22:50:46'),
(512, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:50:46', '2016-07-01 22:50:46'),
(513, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:51:01', '2016-07-01 22:51:01'),
(514, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:51:01', '2016-07-01 22:51:01'),
(515, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:51:52', '2016-07-01 22:51:52'),
(516, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:51:52', '2016-07-01 22:51:52'),
(517, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:52:45', '2016-07-01 22:52:45'),
(518, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:52:45', '2016-07-01 22:52:45'),
(519, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:53:35', '2016-07-01 22:53:35'),
(520, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:53:35', '2016-07-01 22:53:35'),
(521, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:54:27', '2016-07-01 22:54:27'),
(522, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:54:27', '2016-07-01 22:54:27'),
(523, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:55:01', '2016-07-01 22:55:01'),
(524, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:55:01', '2016-07-01 22:55:01'),
(525, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:55:56', '2016-07-01 22:55:56'),
(526, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:55:56', '2016-07-01 22:55:56'),
(527, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:56:08', '2016-07-01 22:56:07'),
(528, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:56:08', '2016-07-01 22:56:08'),
(529, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:56:44', '2016-07-01 22:56:44'),
(530, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:56:44', '2016-07-01 22:56:44'),
(531, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:57:07', '2016-07-01 22:57:07'),
(532, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:57:07', '2016-07-01 22:57:07'),
(533, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:58:25', '2016-07-01 22:58:25'),
(534, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:58:25', '2016-07-01 22:58:25'),
(535, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 22:58:48', '2016-07-01 22:58:48'),
(536, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 22:58:48', '2016-07-01 22:58:48'),
(537, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:00:32', '2016-07-01 23:00:32'),
(538, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:00:32', '2016-07-01 23:00:32'),
(539, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:00:52', '2016-07-01 23:00:52'),
(540, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:00:52', '2016-07-01 23:00:52'),
(541, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:02:09', '2016-07-01 23:02:09'),
(542, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:02:09', '2016-07-01 23:02:09'),
(543, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:04:55', '2016-07-01 23:04:55'),
(544, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:04:55', '2016-07-01 23:04:55'),
(545, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:05:24', '2016-07-01 23:05:24'),
(546, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:05:24', '2016-07-01 23:05:24'),
(547, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:05:49', '2016-07-01 23:05:49'),
(548, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:05:49', '2016-07-01 23:05:49'),
(549, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:06:07', '2016-07-01 23:06:07'),
(550, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:06:07', '2016-07-01 23:06:07'),
(551, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:06:26', '2016-07-01 23:06:26'),
(552, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:06:26', '2016-07-01 23:06:26'),
(553, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:08:01', '2016-07-01 23:08:01'),
(554, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:08:01', '2016-07-01 23:08:01'),
(555, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:08:16', '2016-07-01 23:08:16'),
(556, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:08:16', '2016-07-01 23:08:16'),
(557, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:08:47', '2016-07-01 23:08:47'),
(558, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:08:47', '2016-07-01 23:08:47'),
(559, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:09:02', '2016-07-01 23:09:02'),
(560, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:09:02', '2016-07-01 23:09:02'),
(561, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:09:37', '2016-07-01 23:09:37'),
(562, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:09:37', '2016-07-01 23:09:37'),
(563, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:11:46', '2016-07-01 23:11:46'),
(564, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:11:46', '2016-07-01 23:11:46'),
(565, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:12:09', '2016-07-01 23:12:09'),
(566, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:12:09', '2016-07-01 23:12:09'),
(567, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:13:04', '2016-07-01 23:13:04'),
(568, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:13:04', '2016-07-01 23:13:04'),
(569, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:13:39', '2016-07-01 23:13:39'),
(570, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:13:39', '2016-07-01 23:13:39'),
(571, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:13:57', '2016-07-01 23:13:57'),
(572, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:13:57', '2016-07-01 23:13:57'),
(573, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:14:05', '2016-07-01 23:14:05'),
(574, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:14:05', '2016-07-01 23:14:05'),
(575, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:14:19', '2016-07-01 23:14:19'),
(576, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:14:19', '2016-07-01 23:14:19'),
(577, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:14:31', '2016-07-01 23:14:31'),
(578, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:14:31', '2016-07-01 23:14:31'),
(579, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:14:41', '2016-07-01 23:14:41'),
(580, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:14:41', '2016-07-01 23:14:41'),
(581, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:26:40', '2016-07-01 23:26:40'),
(582, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:26:40', '2016-07-01 23:26:40'),
(583, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:26:59', '2016-07-01 23:26:59'),
(584, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:26:59', '2016-07-01 23:26:59'),
(585, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:37:29', '2016-07-01 23:37:29'),
(586, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:37:29', '2016-07-01 23:37:29'),
(587, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-01 23:39:20', '2016-07-01 23:39:20'),
(588, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-01 23:39:20', '2016-07-01 23:39:20'),
(589, 282, 155, 'gotothis', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-06 22:22:24', '2016-07-01 23:42:26'),
(590, 282, 155, 'gotothis', 'vasquezd', 'me', 'vasquezd', 0, 0, '2016-07-06 22:22:24', '2016-07-01 23:42:26'),
(591, 281, 155, 'ta', 'vasquezd', 'vasquezd', 'vasquezd', 0, 0, '2016-07-06 22:51:45', '2016-07-06 21:25:22'),
(592, 281, 155, 'tag', 'vasquezd', '', 'vasquezd', 0, 0, '2016-07-06 22:51:45', '2016-07-06 21:25:22'),
(593, 281, 155, 'ta', 'vasquezd', '', 'vasquezd', 0, 0, '2016-07-06 22:51:45', '2016-07-06 21:25:22'),
(594, 281, 155, 'tag', 'vasquezd', 'there', 'vasquezd', 0, 0, '2016-07-06 22:51:45', '2016-07-06 22:51:26'),
(595, 281, 155, 'ta', 'vasquezd', 'there', 'vasquezd', 0, 0, '2016-07-06 22:51:45', '2016-07-06 22:51:26'),
(596, 280, 155, 'post', 'vasquezd', 'vasquezd', 'vasquezd', 1, 0, '0000-00-00 00:00:00', '2016-07-07 20:38:48'),
(597, 280, 155, 'post', 'vasquezd', 'tarren', 'vasquezd', 1, 0, '0000-00-00 00:00:00', '2016-07-07 20:38:48'),
(598, 280, 155, 'post', 'vasquezd', 'david', 'vasquezd', 1, 0, '0000-00-00 00:00:00', '2016-07-07 20:38:48');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=309 ;

--
-- Dumping data for table `divvy_post`
--

INSERT INTO `divvy_post` (`divvy_id`, `parent`, `list_id`, `divvy_position`, `divvy_from`, `divvy_to`, `divvy_caption`, `divvy_deadline`, `divvy_progress`, `divvy_priority`, `image_url`, `file_name`, `unique_id`, `divvy_status`, `updated`, `created`) VALUES
(280, 0, 155, 2, 'vasquezd', 'vasquezd', 'hi          @vasquezd this is all new @tarren and also at @david also this is a new #post', '2016-07-08 19:00:00', 0, 4, '', '', '', 1, '2016-07-07 20:38:48', '2016-06-23 22:02:57'),
(281, 0, 155, 17, 'vasquezd', 'vasquezd', 'hi this is newand also a @tag here', '2016-07-13 19:00:00', 0, 1, '', '', 'e1b92aa8ed1e1be8206ca8e54bc903b4', 1, '2016-07-13 22:50:15', '2016-06-23 22:03:05'),
(282, 0, 155, 0, 'vasquezd', 'vasquezd', '07/03/2016', '2013-09-06 19:00:00', 0, 0, '', '', '6828ed3aed7291bf7fe6ecb048d89d6d', 0, '2016-07-06 22:51:05', '2016-06-23 22:07:20'),
(283, 0, 155, 23, 'vasquezd', 'vasquezd', 'this is to no one      @vasquezÂ  ', '0000-00-00 00:00:00', 0, 0, '', '', 'a763a83e194954d6c431bd1f200e81fc', 0, '2016-07-13 22:49:45', '2016-06-23 22:13:35'),
(284, 0, 155, 28, 'matt', 'matt', '@vasquezd do this stuff and @matt', '0000-00-00 00:00:00', 0, 0, '', '', '0e1bf8ecfb6cb0499ae3377652484d0b', 1, '2016-07-13 22:49:45', '2016-06-23 22:19:55'),
(285, 0, 155, 29, 'matt', 'matt', 'this is to me', '0000-00-00 00:00:00', 0, 0, '', '', '06e533bcab19fa578297a36295bca866', 1, '2016-07-13 22:49:45', '2016-06-23 22:20:02'),
(286, 0, 155, 26, 'matt', 'matt', 'this is to @vasquezd and @matt which is me', '0000-00-00 00:00:00', 0, 0, '', '', '1594e042bacac78feb7ddcbdf3a80f35', 1, '2016-07-13 22:49:45', '2016-06-23 22:20:36'),
(287, 0, 155, 27, 'matt', 'matt', 'this is to no one', '0000-00-00 00:00:00', 0, 0, '', '', 'da92cbe814b57346b65bdb1e7d64eba7', 1, '2016-07-13 22:49:45', '2016-06-23 22:20:43'),
(288, 0, 155, 25, 'matt', 'matt', 'now we go', '0000-00-00 00:00:00', 0, 0, '', '', '3773f943ea753137da9b5146cf08a8c3', 1, '2016-07-13 22:49:45', '2016-06-23 22:21:01'),
(289, 0, 155, 24, 'matt', 'matt', 'hloo', '0000-00-00 00:00:00', 0, 0, '', '', '052b1863e46f8412db6ef307fb255668', 1, '2016-07-13 22:49:45', '2016-06-23 22:21:06'),
(290, 0, 155, 19, 'vasquezd', 'vasquezd', '', '0000-00-00 00:00:00', 0, 0, '', '', '92712f4999188d7be74b8576fb351cf1', 0, '2016-07-13 22:49:45', '2016-07-02 00:03:57'),
(291, 0, 155, 22, 'vasquezd', 'vasquezd', '', '0000-00-00 00:00:00', 0, 0, '', '', 'a20f499a7d1db73589e4bf0b2ca09eb5', 0, '2016-07-13 22:49:45', '2016-07-02 00:03:58'),
(292, 0, 155, 21, 'vasquezd', 'vasquezd', '', '0000-00-00 00:00:00', 0, 0, '', '', '1c71140654364624d73b8785d6cd6b55', 0, '2016-07-13 22:49:45', '2016-07-02 00:04:01'),
(293, 0, 155, 20, 'vasquezd', 'vasquezd', '', '0000-00-00 00:00:00', 0, 0, '', '', '97de33f11b55f0edef2fda93d36cd68d', 0, '2016-07-13 22:49:45', '2016-07-02 00:04:02'),
(294, 0, 155, 18, 'vasquezd', 'vasquezd', 'h ', '0000-00-00 00:00:00', 0, 0, '', '', '62f764a9235962355908345df9121cac', 0, '2016-07-13 22:49:45', '2016-07-02 00:04:02'),
(295, 0, 155, 16, 'vasquezd', 'vasquezd', '', '0000-00-00 00:00:00', 0, 0, '', '', '1dd0e7fd1ffc48a0f196d2ba2d4dfa94', 0, '2016-07-13 22:49:54', '2016-07-07 20:38:49'),
(296, 0, 155, 3, 'vasquezd', 'vasquezd', '', '0000-00-00 00:00:00', 0, 0, '', '', '9ec521019f2597b1dfa51d0b62fe35b3', 0, '2016-07-13 22:49:58', '2016-07-13 22:49:00'),
(297, 0, 155, 10, 'vasquezd', 'vasquezd', '', '0000-00-00 00:00:00', 0, 0, '', '', '1482e5c6f2987be732902369366a0c7e', 0, '2016-07-13 22:49:57', '2016-07-13 22:49:01'),
(298, 0, 155, 15, 'vasquezd', 'vasquezd', '', '0000-00-00 00:00:00', 0, 0, '', '', '405673850b5ed825d4ef0f1707108666', 0, '2016-07-13 22:49:53', '2016-07-13 22:49:02'),
(299, 0, 155, 14, 'vasquezd', 'vasquezd', '', '0000-00-00 00:00:00', 0, 0, '', '', '0650fbc27dba275f9fc73255be60b13a', 0, '2016-07-13 22:49:54', '2016-07-13 22:49:03'),
(300, 0, 155, 13, 'vasquezd', 'vasquezd', '', '0000-00-00 00:00:00', 0, 0, '', '', '77ba38f67ba56a864658a324ec562e94', 0, '2016-07-13 22:49:55', '2016-07-13 22:49:03'),
(301, 0, 155, 12, 'vasquezd', 'vasquezd', '', '0000-00-00 00:00:00', 0, 0, '', '', 'b36e756ab3069295b8a128cd465723ba', 0, '2016-07-13 22:49:56', '2016-07-13 22:49:10'),
(302, 0, 155, 11, 'vasquezd', 'vasquezd', 'and this also is a new', '0000-00-00 00:00:00', 0, 0, '', '', 'ff0cc4acc813a595658ae0a2bb627fa7', 1, '2016-07-13 22:49:48', '2016-07-13 22:49:11'),
(303, 0, 155, 4, 'vasquezd', 'vasquezd', 'This is a new tag', '0000-00-00 00:00:00', 0, 0, '', '', 'bce45ec856f144bcdcccbfb48a4bd3a3', 1, '2016-07-13 22:49:44', '2016-07-13 22:49:11'),
(304, 0, 155, 6, 'vasquezd', 'vasquezd', '', '0000-00-00 00:00:00', 0, 0, '', '', '481280de4fd9b6ea9e59678dc5b48c43', 0, '2016-07-13 22:50:06', '2016-07-13 22:49:38'),
(305, 0, 155, 7, 'vasquezd', 'vasquezd', '', '0000-00-00 00:00:00', 0, 0, '', '', 'bb23c2c27c69d06a94820809c1b3c785', 0, '2016-07-13 22:50:05', '2016-07-13 22:49:39'),
(306, 0, 155, 8, 'vasquezd', 'vasquezd', '', '0000-00-00 00:00:00', 0, 0, '', '', '54479f550436e84084f03bb5611ab6b6', 0, '2016-07-13 22:50:04', '2016-07-13 22:49:39'),
(307, 0, 155, 9, 'vasquezd', 'vasquezd', '', '0000-00-00 00:00:00', 0, 0, '', '', '76ec8818b49f973720a817061d6ddbab', 0, '2016-07-13 22:50:04', '2016-07-13 22:49:39'),
(308, 0, 155, 5, 'vasquezd', 'vasquezd', '', '0000-00-00 00:00:00', 0, 0, '', '', '699b22e0a08249d92c8cb58d0ee5a799', 0, '2016-07-13 22:50:08', '2016-07-13 22:49:45');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=341 ;

--
-- Dumping data for table `divvy_users`
--

INSERT INTO `divvy_users` (`divvy_users_id`, `divvy_id`, `list_id`, `divvy_from`, `divvy_to`, `divvy_to_user_status`, `active`, `status_seen`, `updated`, `created`) VALUES
(288, 280, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-06-23 22:04:55', '2016-06-23 22:04:55'),
(289, 281, 155, 'vasquezd', 'v', 0, 0, 0, '2016-06-23 22:13:42', '2016-06-23 22:13:33'),
(290, 282, 155, 'vasquezd', 'me', 0, 0, 0, '2016-07-06 22:22:24', '2016-06-23 22:13:33'),
(291, 283, 155, 'vasquezd', 'v', 0, 0, 0, '2016-06-23 22:13:42', '2016-06-23 22:13:42'),
(292, 281, 155, 'vasquezd', 'v', 0, 0, 0, '2016-06-23 22:13:54', '2016-06-23 22:13:42'),
(293, 281, 155, 'vasquezd', 'vasquezd', 0, 0, 0, '2016-06-23 22:19:49', '2016-06-23 22:14:38'),
(294, 283, 155, 'vasquezd', 'vasquezd', 0, 0, 0, '2016-06-23 22:19:49', '2016-06-23 22:14:38'),
(295, 281, 155, 'matt', 'matt', 0, 0, 0, '2016-06-24 20:03:10', '2016-06-23 22:19:49'),
(296, 283, 155, 'matt', 'matt', 0, 0, 0, '2016-06-23 22:20:34', '2016-06-23 22:19:49'),
(297, 283, 155, 'matt', 'vasquezd', 0, 0, 0, '2016-07-01 23:52:36', '2016-06-23 22:20:34'),
(298, 284, 155, 'matt', 'vasquezd', 0, 1, 0, '2016-06-23 22:21:55', '2016-06-23 22:21:55'),
(299, 284, 155, 'matt', 'matt', 0, 1, 0, '2016-06-23 22:21:55', '2016-06-23 22:21:55'),
(300, 285, 155, 'matt', 'matt', 0, 1, 0, '2016-06-23 22:21:55', '2016-06-23 22:21:55'),
(301, 286, 155, 'matt', 'vasquezd', 0, 1, 0, '2016-06-23 22:21:55', '2016-06-23 22:21:55'),
(302, 286, 155, 'matt', 'matt', 0, 1, 0, '2016-06-23 22:21:55', '2016-06-23 22:21:55'),
(303, 287, 155, 'matt', 'matt', 0, 1, 0, '2016-06-23 22:21:55', '2016-06-23 22:21:55'),
(304, 288, 155, 'matt', 'matt', 0, 1, 0, '2016-06-23 22:21:55', '2016-06-23 22:21:55'),
(305, 289, 155, 'matt', 'matt', 0, 1, 0, '2016-06-23 22:21:55', '2016-06-23 22:21:55'),
(306, 281, 155, 'Vasquezd', 'Vasquezd', 0, 0, 0, '2016-06-27 20:53:38', '2016-06-24 20:03:10'),
(307, 281, 155, 'vasquezd', 'vasquezd', 0, 0, 0, '2016-06-27 20:53:38', '2016-06-27 20:53:38'),
(308, 281, 155, 'vasquezd', 'vasquezd', 0, 0, 0, '2016-07-06 21:25:22', '2016-06-27 20:57:14'),
(309, 283, 155, 'vasquezd', 'vasqu', 0, 0, 0, '2016-07-02 00:03:41', '2016-07-01 23:52:36'),
(310, 283, 155, 'vasquezd', 'vasquez', 0, 1, 0, '2016-07-02 00:03:41', '2016-07-02 00:03:41'),
(311, 290, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-02 00:04:18', '2016-07-02 00:04:18'),
(312, 291, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-02 00:04:18', '2016-07-02 00:04:18'),
(313, 292, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-02 00:04:18', '2016-07-02 00:04:18'),
(314, 293, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-02 00:04:18', '2016-07-02 00:04:18'),
(315, 294, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-02 00:04:18', '2016-07-02 00:04:18'),
(316, 280, 155, 'vasquezd', '', 0, 0, 0, '2016-07-06 23:46:52', '2016-07-06 21:25:22'),
(317, 281, 155, 'vasquezd', '', 0, 0, 0, '2016-07-06 22:51:26', '2016-07-06 21:25:22'),
(318, 282, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-06 22:22:24', '2016-07-06 22:22:24'),
(319, 281, 155, 'vasquezd', 'there', 0, 0, 0, '2016-07-06 22:51:45', '2016-07-06 22:51:26'),
(320, 281, 155, 'vasquezd', 'vasquezd', 0, 0, 0, '2016-07-13 22:50:17', '2016-07-06 22:51:45'),
(321, 280, 155, 'vasquezd', 'Â ', 0, 0, 0, '2016-07-06 23:54:35', '2016-07-06 23:46:52'),
(322, 280, 155, 'vasquezd', 'Â Â ', 0, 0, 0, '2016-07-07 20:38:00', '2016-07-06 23:54:35'),
(323, 280, 155, 'vasquezd', 'Â Â Â ', 0, 0, 0, '2016-07-07 20:38:52', '2016-07-07 20:38:00'),
(324, 280, 155, 'vasquezd', 'tarren', 0, 1, 0, '2016-07-07 20:38:52', '2016-07-07 20:38:52'),
(325, 280, 155, 'vasquezd', 'david', 0, 1, 0, '2016-07-07 20:38:52', '2016-07-07 20:38:52'),
(326, 295, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-07 20:38:52', '2016-07-07 20:38:52'),
(327, 296, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-13 22:49:36', '2016-07-13 22:49:36'),
(328, 297, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-13 22:49:36', '2016-07-13 22:49:36'),
(329, 298, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-13 22:49:36', '2016-07-13 22:49:36'),
(330, 299, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-13 22:49:36', '2016-07-13 22:49:36'),
(331, 300, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-13 22:49:36', '2016-07-13 22:49:36'),
(332, 301, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-13 22:49:36', '2016-07-13 22:49:36'),
(333, 302, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-13 22:49:36', '2016-07-13 22:49:36'),
(334, 303, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-13 22:49:36', '2016-07-13 22:49:36'),
(335, 304, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-13 22:50:01', '2016-07-13 22:50:01'),
(336, 305, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-13 22:50:01', '2016-07-13 22:50:01'),
(337, 306, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-13 22:50:01', '2016-07-13 22:50:01'),
(338, 307, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-13 22:50:01', '2016-07-13 22:50:01'),
(339, 308, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-07-13 22:50:01', '2016-07-13 22:50:01'),
(340, 281, 155, 'vasquezd', 'tag', 0, 1, 0, '2016-07-13 22:50:17', '2016-07-13 22:50:17');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=559 ;

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
(558, 0, 0, 0, 1, 'Music', 'folder.png', '', 'folder.png', 'folder.png', 'folder.png', '---------0-', 1, 'vasquezd', 1, 0, 0, '1468354042267', '2016-07-12 20:07:22', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=152 ;

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
(151, 'vasquezd', 1, 'newtest', 40, 0, '2016-06-18 23:31:54');

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
(242, 106, 'Kristen', 0, '2016-04-30 21:20:58', '0000-00-00 00:00:00'),
(243, 106, 'matt', 1, '2016-06-03 22:35:30', '0000-00-00 00:00:00'),
(245, 107, 'brian', 1, '2016-06-03 23:21:27', '0000-00-00 00:00:00'),
(250, 109, 'brian', 0, '2016-06-14 23:37:55', '0000-00-00 00:00:00'),
(252, 109, 'Kristen', 0, '2016-06-14 23:37:55', '0000-00-00 00:00:00'),
(254, 110, 'brian', 0, '2016-06-19 21:20:58', '0000-00-00 00:00:00'),
(256, 110, 'Kristen', 0, '2016-06-19 21:20:58', '0000-00-00 00:00:00'),
(258, 111, 'brian', 0, '2016-06-19 22:18:52', '0000-00-00 00:00:00'),
(260, 111, 'Kristen', 0, '2016-06-19 22:18:52', '0000-00-00 00:00:00'),
(262, 112, 'brian', 0, '2016-06-19 22:26:48', '0000-00-00 00:00:00'),
(263, 112, 'newtest', 0, '2016-06-19 23:16:06', '0000-00-00 00:00:00'),
(264, 112, 'Kristen', 0, '2016-06-19 23:20:26', '0000-00-00 00:00:00'),
(266, 113, 'brian', 0, '2016-06-19 23:20:37', '0000-00-00 00:00:00'),
(268, 113, 'Kristen', 0, '2016-06-19 23:21:57', '0000-00-00 00:00:00'),
(269, 113, 'newtest', 0, '2016-06-19 23:22:33', '0000-00-00 00:00:00'),
(270, 107, 'Kristen', 1, '2016-06-19 23:23:02', '0000-00-00 00:00:00'),
(271, 107, 'newtest', 1, '2016-06-19 23:23:09', '0000-00-00 00:00:00'),
(272, 114, 'vasquezd', 1, '2016-06-19 23:23:20', '0000-00-00 00:00:00'),
(273, 114, 'brian', 0, '2016-06-19 23:23:20', '0000-00-00 00:00:00'),
(274, 115, 'vasquezd', 1, '2016-06-19 23:26:40', '0000-00-00 00:00:00'),
(275, 115, 'brian', 0, '2016-06-19 23:26:40', '0000-00-00 00:00:00'),
(276, 115, 'Kristen', 0, '2016-06-19 23:26:40', '0000-00-00 00:00:00'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=257 ;

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
(256, 0, '', 0, 0, 'https://www.yahoo.com/', 'yahoo', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '', 1, 0, 0, '2016-07-11 23:18:21', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=169 ;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`list_primary_id`, `list_id`, `user_name`, `user_id`, `user_privilege`, `created_by`, `shared_with`, `list_type`, `list_name`, `group_id`, `unique_key`, `active_status`, `recycle_status`, `updated`, `created`) VALUES
(151, 151, 'vasquezd', 1, 'own', 'matt', 'vasquezd', 'wishlist', 'wishlist', 0, '2fd9bfca4bd360bd1b6037b30a664a0d', 1, 0, '2016-05-02 23:46:33', '2016-05-02 23:40:19'),
(152, 151, 'brian', 3, 'view', 'vasquezd', 'brian', 'wishlist', 'wishlist', 0, '', 0, 0, '2016-05-02 23:41:18', '0000-00-00 00:00:00'),
(153, 151, 'matt', 2, 'view', 'vasquezd', 'matt', 'wishlist', 'wishlist', 0, '', 1, 0, '2016-07-12 21:17:29', '0000-00-00 00:00:00'),
(154, 154, 'vasquezd', 1, 'own', 'vasquezd', '', 'lists', 'list', 0, '95842852b93f439678a71f874e8df8f8', 1, 0, '2016-05-05 20:34:28', '2016-05-05 20:34:28'),
(155, 155, 'vasquezd', 1, 'own', 'vasquezd', '', 'divvy', '#Zombie Movie Three', 0, '95842852b93f439678a71f874e8df8f8', 1, 0, '2016-05-20 22:29:36', '2016-05-05 20:34:28'),
(156, 156, 'vasquezd', 1, 'own', 'vasquezd', '', 'divvy', '#Design updates to Divvy', 0, '95842852b93f439678a71f874e8df8f8', 1, 0, '2016-05-20 22:48:40', '2016-05-05 20:34:28'),
(157, 157, 'vasquezd', 1, 'own', 'vasquezd', '', 'divvy', '#Office Space', 0, '95842852b93f439678a71f874e8df8f8', 1, 0, '2016-05-20 22:48:43', '2016-05-05 20:34:28'),
(158, 158, 'vasquezd', 1, 'own', 'vasquezd', '', 'wishlist', 'Guitar Wishlist', 0, 'f876967c22e1555ea9b906cc1b981c62', 1, 0, '2016-06-29 20:22:36', '2016-06-29 20:22:36'),
(159, 159, 'vasquezd', 1, 'own', 'vasquezd', '', 'wishlist', 'guitar', 0, '8f9efb5cd4c2453322a85a00ab604934', 1, 0, '2016-07-09 22:38:56', '2016-07-09 22:38:56'),
(160, 154, 'brian', 3, 'view', 'vasquezd', 'brian', 'lists', 'list', 0, '', 0, 0, '2016-07-12 21:04:02', '0000-00-00 00:00:00'),
(161, 154, 'matt', 2, 'view', 'vasquezd', 'matt', 'lists', 'list', 0, '', 1, 0, '2016-07-12 21:17:39', '0000-00-00 00:00:00'),
(162, 162, 'vasquezd', 1, 'own', 'vasquezd', '', 'lists', 'Guitar Gear ', 0, '7a8bcee2ce053e2ec87dac6caa6762be', 1, 0, '2016-07-12 21:04:39', '2016-07-12 21:04:39'),
(163, 162, 'matt', 2, 'view', 'vasquezd', 'matt', 'lists', 'Guitar Gear ', 0, '', 1, 0, '2016-07-12 21:17:40', '0000-00-00 00:00:00'),
(164, 162, 'Kristen', 4, 'view', 'vasquezd', 'Kristen', 'lists', 'Guitar Gear ', 0, '', 0, 0, '2016-07-12 21:04:45', '0000-00-00 00:00:00'),
(165, 165, 'matt', 2, 'own', 'matt', '', 'lists', 'newy', 0, '81d63721ce447c559a885767ad31b215', 1, 0, '2016-07-12 21:39:01', '2016-07-12 21:39:01'),
(166, 165, 'Kristen', 4, 'own', 'matt', 'Kristen', 'lists', 'newy', 0, '', 0, 0, '2016-07-12 21:39:10', '0000-00-00 00:00:00'),
(167, 165, 'vasquezd', 1, 'own', 'matt', 'vasquezd', 'lists', 'newy', 0, '', 0, 0, '2016-07-12 21:39:10', '0000-00-00 00:00:00'),
(168, 162, 'brian', 3, 'own', 'vasquezd', 'brian', 'lists', 'Guitar Gear ', 0, '', 0, 0, '2016-07-13 21:56:46', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=95 ;

--
-- Dumping data for table `list_users`
--

INSERT INTO `list_users` (`primary_id`, `list_id`, `user_name`, `user_privilege`, `active_member`, `created`, `updated`) VALUES
(80, 151, 'vasquezd', 'own', 1, '2016-05-02 23:40:19', '0000-00-00 00:00:00'),
(81, 151, 'brian', 'view', 0, '2016-05-02 23:41:18', '0000-00-00 00:00:00'),
(82, 151, 'matt', 'view', 1, '2016-05-02 23:41:33', '0000-00-00 00:00:00'),
(83, 154, 'vasquezd', 'own', 1, '2016-05-05 20:34:28', '0000-00-00 00:00:00'),
(84, 158, 'vasquezd', 'own', 1, '2016-06-29 20:22:36', '0000-00-00 00:00:00'),
(85, 159, 'vasquezd', 'own', 1, '2016-07-09 22:38:56', '0000-00-00 00:00:00'),
(88, 162, 'vasquezd', 'own', 1, '2016-07-12 21:04:39', '0000-00-00 00:00:00'),
(89, 162, 'matt', 'view', 1, '2016-07-12 21:04:45', '0000-00-00 00:00:00'),
(90, 162, 'Kristen', 'view', 0, '2016-07-12 21:04:45', '0000-00-00 00:00:00'),
(91, 165, 'matt', 'own', 1, '2016-07-12 21:39:01', '0000-00-00 00:00:00'),
(92, 165, 'Kristen', 'own', 0, '2016-07-12 21:39:09', '0000-00-00 00:00:00'),
(93, 165, 'vasquezd', 'own', 0, '2016-07-12 21:39:09', '0000-00-00 00:00:00'),
(94, 162, 'brian', 'own', 0, '2016-07-13 21:56:46', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

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
(50, 'vasquezd', 'newtest', '2016-07-13 21:56:46', 'list', 'existing_list', 'new_list', 'list', '#', 0, 0, 0, 1, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=249 ;

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
(155, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 95, 95, 0, 0, '2016-04-30 21:17:44', '0000-00-00 00:00:00'),
(156, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 95, 95, 0, 1, '2016-04-30 21:17:44', '0000-00-00 00:00:00'),
(157, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 96, 96, 0, 1, '2016-04-30 21:17:52', '0000-00-00 00:00:00'),
(158, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 96, 96, 0, 0, '2016-04-30 21:17:52', '0000-00-00 00:00:00'),
(159, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 96, 96, 0, 1, '2016-04-30 21:17:52', '0000-00-00 00:00:00'),
(160, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 97, 97, 0, 1, '2016-04-30 21:17:55', '0000-00-00 00:00:00'),
(161, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 97, 97, 0, 0, '2016-04-30 21:17:55', '0000-00-00 00:00:00'),
(162, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 97, 97, 0, 1, '2016-04-30 21:17:55', '0000-00-00 00:00:00'),
(163, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 98, 98, 0, 1, '2016-04-30 21:17:57', '0000-00-00 00:00:00'),
(164, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 98, 98, 0, 0, '2016-04-30 21:17:57', '0000-00-00 00:00:00'),
(165, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 98, 98, 0, 1, '2016-04-30 21:17:57', '0000-00-00 00:00:00'),
(166, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 99, 99, 0, 1, '2016-04-30 21:17:59', '0000-00-00 00:00:00'),
(167, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 99, 99, 0, 0, '2016-04-30 21:17:59', '0000-00-00 00:00:00'),
(168, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 99, 99, 0, 1, '2016-04-30 21:17:59', '0000-00-00 00:00:00'),
(169, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 100, 100, 0, 1, '2016-04-30 21:18:46', '0000-00-00 00:00:00'),
(170, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 100, 100, 0, 0, '2016-04-30 21:18:46', '0000-00-00 00:00:00'),
(171, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 100, 100, 0, 1, '2016-04-30 21:18:46', '0000-00-00 00:00:00'),
(172, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 101, 101, 0, 1, '2016-04-30 21:18:55', '0000-00-00 00:00:00'),
(173, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 101, 101, 0, 0, '2016-04-30 21:18:55', '0000-00-00 00:00:00'),
(174, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 101, 101, 0, 1, '2016-04-30 21:18:55', '0000-00-00 00:00:00'),
(175, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 102, 102, 0, 1, '2016-04-30 21:19:10', '0000-00-00 00:00:00'),
(176, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 102, 102, 0, 0, '2016-04-30 21:19:10', '0000-00-00 00:00:00'),
(177, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 102, 102, 0, 1, '2016-04-30 21:19:10', '0000-00-00 00:00:00'),
(178, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 103, 103, 0, 1, '2016-04-30 21:19:11', '0000-00-00 00:00:00'),
(179, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 103, 103, 0, 0, '2016-04-30 21:19:11', '0000-00-00 00:00:00'),
(180, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 103, 103, 0, 1, '2016-04-30 21:19:11', '0000-00-00 00:00:00'),
(181, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 104, 104, 0, 1, '2016-04-30 21:19:18', '0000-00-00 00:00:00'),
(182, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 105, 105, 0, 1, '2016-04-30 21:20:27', '0000-00-00 00:00:00'),
(183, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 105, 105, 0, 1, '2016-04-30 21:20:27', '0000-00-00 00:00:00'),
(184, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 106, 106, 0, 1, '2016-04-30 21:20:58', '0000-00-00 00:00:00'),
(185, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 106, 106, 0, 1, '2016-04-30 21:20:58', '0000-00-00 00:00:00'),
(186, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 122, 1, '2016-05-02 22:27:15', '0000-00-00 00:00:00'),
(187, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 122, 0, '2016-05-02 22:27:24', '0000-00-00 00:00:00'),
(188, 'new_list', 'Wants to add you to a list', 'vasquezd', 'Kristen', '', '', 0, 0, 122, 1, '2016-05-02 22:27:24', '0000-00-00 00:00:00'),
(189, 'new_list', 'Wants to add you to a list', 'vasquezd', 'Kristen', '', '', 0, 0, 126, 1, '2016-05-02 22:29:09', '0000-00-00 00:00:00'),
(190, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 126, 1, '2016-05-02 22:38:34', '0000-00-00 00:00:00'),
(191, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 131, 1, '2016-05-02 22:57:43', '0000-00-00 00:00:00'),
(192, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 131, 0, '2016-05-02 22:58:13', '0000-00-00 00:00:00'),
(193, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 131, 1, '2016-05-02 22:59:27', '0000-00-00 00:00:00'),
(194, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 132, 1, '2016-05-02 22:59:52', '0000-00-00 00:00:00'),
(195, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 132, 0, '2016-05-02 23:04:07', '0000-00-00 00:00:00'),
(196, 'new_list', 'Wants to add you to a list', 'vasquezd', 'Kristen', '', '', 0, 0, 132, 1, '2016-05-02 23:05:24', '0000-00-00 00:00:00'),
(197, 'new_list', 'Wants to add you to a list', 'vasquezd', 'Kristen', '', '', 0, 0, 132, 1, '2016-05-02 23:08:14', '0000-00-00 00:00:00'),
(198, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 136, 1, '2016-05-02 23:12:27', '0000-00-00 00:00:00'),
(199, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 136, 0, '2016-05-02 23:12:27', '0000-00-00 00:00:00'),
(200, 'new_list', 'Wants to add you to a list', 'vasquezd', 'Kristen', '', '', 0, 0, 136, 1, '2016-05-02 23:17:32', '0000-00-00 00:00:00'),
(201, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 140, 1, '2016-05-02 23:19:19', '0000-00-00 00:00:00'),
(202, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 140, 0, '2016-05-02 23:20:42', '0000-00-00 00:00:00'),
(203, 'new_list', 'Wants to add you to a list', 'vasquezd', 'Kristen', '', '', 0, 0, 140, 1, '2016-05-02 23:20:42', '0000-00-00 00:00:00'),
(204, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 144, 1, '2016-05-02 23:24:49', '0000-00-00 00:00:00'),
(205, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 144, 0, '2016-05-02 23:24:49', '0000-00-00 00:00:00'),
(206, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 147, 1, '2016-05-02 23:25:14', '0000-00-00 00:00:00'),
(207, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 0, 1, '2016-05-02 23:39:33', '0000-00-00 00:00:00'),
(208, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 0, 0, '2016-05-02 23:39:33', '0000-00-00 00:00:00'),
(209, 'new_list', 'Wants to add you to a list', 'vasquezd', 'Kristen', '', '', 0, 0, 0, 1, '2016-05-02 23:39:33', '0000-00-00 00:00:00'),
(210, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 151, 1, '2016-05-02 23:41:18', '0000-00-00 00:00:00'),
(211, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 151, 0, '2016-05-02 23:41:33', '0000-00-00 00:00:00'),
(212, 'new_square', 'Wants to add you to a square', 'vasquezd', 'matt', '', '', 0, 106, 0, 0, '2016-06-03 22:35:30', '0000-00-00 00:00:00'),
(213, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 107, 107, 0, 1, '2016-06-03 23:21:27', '0000-00-00 00:00:00'),
(214, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 107, 107, 0, 0, '2016-06-03 23:21:27', '0000-00-00 00:00:00'),
(215, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 108, 108, 0, 0, '2016-06-03 23:21:52', '0000-00-00 00:00:00'),
(216, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 109, 109, 0, 1, '2016-06-14 23:37:55', '0000-00-00 00:00:00'),
(217, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 109, 109, 0, 0, '2016-06-14 23:37:55', '0000-00-00 00:00:00'),
(218, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 109, 109, 0, 1, '2016-06-14 23:37:55', '0000-00-00 00:00:00'),
(219, 'friend', '', 'newtest', 'vasquezd', 'newtestvasquezd', '', 0, 0, 0, 0, '2016-06-18 23:31:24', '0000-00-00 00:00:00'),
(220, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 110, 110, 0, 1, '2016-06-19 21:20:58', '0000-00-00 00:00:00'),
(221, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 110, 110, 0, 0, '2016-06-19 21:20:58', '0000-00-00 00:00:00'),
(222, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 110, 110, 0, 1, '2016-06-19 21:20:58', '0000-00-00 00:00:00'),
(223, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 111, 111, 0, 1, '2016-06-19 22:18:52', '0000-00-00 00:00:00'),
(224, 'new_square', 'Wants to start a new square', 'vasquezd', 'matt', '', '', 111, 111, 0, 0, '2016-06-19 22:18:52', '0000-00-00 00:00:00'),
(225, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 111, 111, 0, 1, '2016-06-19 22:18:52', '0000-00-00 00:00:00'),
(226, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 112, 112, 0, 1, '2016-06-19 22:26:48', '0000-00-00 00:00:00'),
(227, 'new_square', 'Wants to add you to a square', 'vasquezd', 'newtest', '', '', 0, 112, 0, 1, '2016-06-19 23:16:06', '0000-00-00 00:00:00'),
(228, 'new_square', 'Wants to add you to a square', 'vasquezd', 'Kristen', '', '', 0, 112, 0, 1, '2016-06-19 23:20:26', '0000-00-00 00:00:00'),
(229, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 113, 113, 0, 1, '2016-06-19 23:20:37', '0000-00-00 00:00:00'),
(230, 'new_square', 'Wants to add you to a square', 'vasquezd', 'matt', '', '', 0, 113, 0, 0, '2016-06-19 23:21:10', '0000-00-00 00:00:00'),
(231, 'new_square', 'Wants to add you to a square', 'vasquezd', 'Kristen', '', '', 0, 113, 0, 1, '2016-06-19 23:21:57', '0000-00-00 00:00:00'),
(232, 'new_square', 'Wants to add you to a square', 'vasquezd', 'newtest', '', '', 0, 113, 0, 1, '2016-06-19 23:22:33', '0000-00-00 00:00:00'),
(233, 'new_square', 'Wants to add you to a square', 'vasquezd', 'Kristen', '', '', 0, 107, 0, 1, '2016-06-19 23:23:02', '0000-00-00 00:00:00'),
(234, 'new_square', 'Wants to add you to a square', 'vasquezd', 'newtest', '', '', 0, 107, 0, 1, '2016-06-19 23:23:09', '0000-00-00 00:00:00'),
(235, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 114, 114, 0, 1, '2016-06-19 23:23:20', '0000-00-00 00:00:00'),
(236, 'new_square', 'Wants to start a new square', 'vasquezd', 'brian', '', '', 115, 115, 0, 1, '2016-06-19 23:26:40', '0000-00-00 00:00:00'),
(237, 'new_square', 'Wants to start a new square', 'vasquezd', 'Kristen', '', '', 115, 115, 0, 1, '2016-06-19 23:26:40', '0000-00-00 00:00:00'),
(238, 'new_square', 'Wants to add you to a square', 'Vasquezd', 'matt', '', '', 0, 114, 0, 0, '2016-06-24 22:12:59', '0000-00-00 00:00:00'),
(239, 'new_square', 'Wants to add you to a square', 'Vasquezd', 'newtest', '', '', 0, 114, 0, 1, '2016-06-24 22:12:59', '0000-00-00 00:00:00'),
(240, 'new_square', 'Wants to add you to a square', 'vasquezd', 'newtest', '', '', 0, 106, 0, 1, '2016-07-10 21:25:39', '0000-00-00 00:00:00'),
(241, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 154, 1, '2016-07-12 21:04:02', '0000-00-00 00:00:00'),
(242, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 154, 0, '2016-07-12 21:04:02', '0000-00-00 00:00:00'),
(243, 'new_list', 'Wants to add you to a list', 'vasquezd', 'matt', '', '', 0, 0, 162, 0, '2016-07-12 21:04:45', '0000-00-00 00:00:00'),
(244, 'new_list', 'Wants to add you to a list', 'vasquezd', 'Kristen', '', '', 0, 0, 162, 1, '2016-07-12 21:04:45', '0000-00-00 00:00:00'),
(245, 'new_list', 'Wants to add you to a list', 'matt', 'Kristen', '', '', 0, 0, 165, 1, '2016-07-12 21:39:10', '0000-00-00 00:00:00'),
(246, 'new_list', 'Wants to add you to a list', 'matt', 'vasquezd', '', '', 0, 0, 165, 1, '2016-07-12 21:39:10', '0000-00-00 00:00:00'),
(247, 'new_list', 'Wants to add you to a list', 'vasquezd', 'brian', '', '', 0, 0, 162, 1, '2016-07-13 21:56:46', '0000-00-00 00:00:00'),
(248, 'new_list', 'Wants to add you to a list', 'vasquezd', 'newtest', '', '', 0, 0, 162, 1, '2016-07-13 21:56:46', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=192 ;

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
(174, 'wishlist', '', 0, 0, 'vasquezd', 'vasquezd', 'article', '', 'https://www.amazon.com/Harry-Potter-Sorcerers-Stone-Rowling/dp/059035342X/ref=sr_1_1?s=books&ie=UTF8&qid=1467502734&sr=1-1&keywords=harry+potter', '', '577850a1748bf076781706.jpg', '', '', 'Harry Potter and the Sorcerers Stone: J.K. Rowling, Mary GrandP', 'Harry Potter and the Sorcerer&#39;s Stone [J.K. Rowling, Mary GrandPrÃ©] on Amazon.com. *FREE* shipping on qualifying offers. Harry Potter has no idea how famous he is. That&#39;s because he&#39;s being raised by his miserable aunt and uncle who are terrified Harry will learn that he&#39;s really a wizard', 0, '', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-07-03 08:39:29'),
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
(187, 'wishlist', '', 0, 158, 'vasquezd', 'vasquezd', 'article', '', 'http://www.guitarcenter.com/Live-Wire/1-4-Angle-1-4-Angle-3-Patch-Cable-3-Pack.gc', '', '5781707e793cc475271211.jpg', '', '', 'Live Wire 1/4&quot; Angle-1/4&quot; Angle 3&quot; Patch Cable (3-Pack) | Guitar Center', 'Shop for the Live Wire 1/4&quot; Angle-1/4&quot; Angle 3&quot; Patch Cable (3-Pack) and receive free shipping on your order and the guaranteed lowest price.', 0, '', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-07-10 06:45:39'),
(188, 'wishlist', '', 0, 158, 'vasquezd', 'vasquezd', 'article', '', 'http://www.guitarcenter.com/Live-Wire/Advantage-Series-1-4-Angled-Straight-Instrument-Cable.gc', '', '578170cdeb803583860005.jpg', '', '', 'Live Wire Advantage Series 1/4&quot; Angled - Straight Instrument Cable | Guitar Center', 'Shop for the Live Wire Advantage Series 1/4&quot; Angled - Straight Instrument Cable and receive free shipping on your order and the guaranteed lowest price.', 0, '', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-07-10 06:47:05'),
(189, 'shareshare', 'null', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1468111604background_7.jpg', '', '', '', '', 0, 'vasquezdvasquezd1468111599', 1, 0, '', '0000-00-00 00:00:00', '2016-07-10 00:46:44', '2016-07-10 00:46:44'),
(190, 'shareshare', 'null', 0, 0, 'vasquezd', '106', 'photo', '', '', '', '1468189186background_6.jpg', '', '', '', '', 0, 'vasquezd1061468186935', 1, 0, '', '0000-00-00 00:00:00', '2016-07-10 22:19:46', '2016-07-10 21:42:21'),
(191, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=k7Ycqsnkkaw', 'k7Ycqsnkkaw', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-07-11 00:48:10', '2016-07-11 00:48:10');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=174 ;

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
(173, 175, 1, 'vasquezd', 0, '', '2016-07-03 22:33:43');

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
(187, 'group_wall.php', 106, '2016-07-11 22:28:06', 304, 'vasquezd', 0),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `salt`, `password`, `last_login`, `last_logout`, `login_total`, `test`) VALUES
(1, 'vasquezd', 1408593605, 'f62c9d59b1b2cbe2b6462784e1d6a550f1afbe85', '2016-07-14 20:36:17', '2016-07-12 21:16:52', 144, 'vasquezb'),
(2, 'matt', 1448946249, 'de85ef10d2853b10978ac6c8e0c37c354d3b6969', '2016-07-12 21:17:08', '2016-06-28 21:25:41', 21, 'vasquezb'),
(3, 'brian', 1448946380, 'ace622215c315ce82bfd153b63c7faeb218a17da', '2016-07-03 23:13:30', '2016-07-03 23:14:18', 2, 'vasquezb'),
(4, 'Kristen', 1448946380, 'e3ae7af8145e258b854728fc9cebe6c8891ee2a5', '2016-04-28 22:32:26', '2016-04-28 22:32:26', 1, 'vasquezb'),
(5, 'Aimee', 1448946380, '33f916c66f61bbf37a12105c8bb3e0fc8ea75fd6', '2015-12-14 05:02:39', '2015-12-01 05:28:26', 0, ''),
(6, 'Becca', 1448946503, 'ba342a034cc175fb24a1c3d59d190da0c31f0106', '2015-12-17 20:35:22', '2015-12-10 08:18:33', 0, ''),
(7, 'Sarah', 1448946503, '378d32da508020f682a238053fec6f307e0aa30a', '2015-12-09 01:42:10', '2015-12-09 01:40:36', 0, ''),
(8, 'chris', 1448946380, '80c96f63d24bc38382aca981ed2e262c22582605', '2015-12-19 04:01:14', '2015-12-16 22:18:50', 0, ''),
(9, 'pop', 1448946503, '851b0d429828f520537e2323a1c5f1cde21eee5d', '2015-12-01 05:31:10', '2015-12-01 05:31:10', 0, ''),
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
(46, 1, 'vasquezd', 'Vasquezd@onid.orst.edu', '1467493647matt_1.jpg', 'David', 'Vasquez', 'Vasquezd', '', 'Oregon State ', '2016-04-03 21:33:50', '2014-08-21 18:00:05'),
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
