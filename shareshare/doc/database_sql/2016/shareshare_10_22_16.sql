-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2016 at 01:30 AM
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
  `group_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `divvy_position` int(11) NOT NULL,
  `divvy_from` varchar(255) NOT NULL,
  `divvy_to` varchar(255) NOT NULL,
  `divvy_headline` varchar(255) NOT NULL,
  `divvy_caption` text CHARACTER SET utf8 NOT NULL,
  `divvy_deadline` timestamp NOT NULL,
  `divvy_progress` int(11) NOT NULL,
  `divvy_priority` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `divvy_status` int(11) NOT NULL,
  `divvy_completed` timestamp NOT NULL,
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`divvy_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `divvy_post`
--

INSERT INTO `divvy_post` (`divvy_id`, `group_id`, `project_id`, `list_id`, `divvy_position`, `divvy_from`, `divvy_to`, `divvy_headline`, `divvy_caption`, `divvy_deadline`, `divvy_progress`, `divvy_priority`, `image_url`, `file_name`, `unique_id`, `divvy_status`, `divvy_completed`, `updated`, `created`) VALUES
(1, 124, 0, 155, 1, 'vasquezd', 'vasqueza', ' We should do stuff ', ' Divvy Piece 1 Divvy Piece 2 and Divvy this is the body', '2015-11-04 20:00:00', 0, 0, '', '', 'bb23c2c27c69d06a94820809c1b3c785', 0, '2016-10-24 00:36:59', '2016-10-25 23:16:54', '2016-07-14 05:49:39'),
(2, 124, 0, 155, 175, 'vasquezd', 'vasqueza', 'Date and Time 2', ' Divvy Piece 4 Divvy Piece 5', '2015-11-05 20:00:00', 0, 0, '', '', '54479f550436e84084f03bb5611ab6b6', 0, '2016-10-24 00:36:15', '2016-10-25 23:16:58', '2016-07-14 05:49:39'),
(3, 125, 0, 155, 208, 'vasquezd', 'vasquezd', 'Date and Time 3', 'Description\nFairies are generally described as human in appearance and having \nmagical powers. Diminutive fairies of one kind or another have been \nrecorded for centuries, but occur alongside the human-sized beings; \nthese have been depicted as ranging in size from very tiny up to the \nsize of a human child.[6] Even with these small fairies, however, their small size may be magically assumed rather than constant.[7] Some fairies though normally quite small were able to dilate their figures to imitate humans.[8] On Orkney they were described as short in stature, dressed in dark grey, and sometimes seen in armour.[9]\nWings, while common in Victorian and later artwork of fairies, are \nvery rare in the folklore; even very small fairies flew with magic, \nsometimes flying on ragwort stems or the backs of birds.[10] Nowadays, fairies are often depicted with ordinary insect wings or butterfly\n wings. In some folklore, fairies have green eyes. Some depictions of \nfairies either have them wearing some sort of footwear and other \ndepictions of fairies are always barefoot.\nOrigin\nThe early modern fairies do not have any single origin, representing a conflation of disparate elements of folk belief, influenced by literature and speculation. Their origins are less clear in the folklore, being variously dead, or some form of demon, or a species completely independent of humans or angels.[11] The folkloristic or mythological elements combine Celtic, Germanic and Greco-Roman\n elements. Folklorists have suggested that their actual origin lies in \nreligious beliefs that lost currency with the advent of Christianity.[12] These explanations are not necessarily incompatible, and they may be traceable to multiple sources. and this is new', '2016-11-24 20:00:00', 0, 0, '', '', 'e06d4355caefcd26ed6aa9a0ced4ce00', 0, '2016-10-24 00:36:18', '2016-10-25 22:34:43', '2016-08-20 03:55:32'),
(10, 124, 14, 14, 0, 'vasquezd', 'vasquezda', 'Â  hi ', '&nbsp', '0000-00-00 00:00:00', 0, 0, '', '', 'f702dbbcb6d06a78670b7d1e4c2d1b29', 0, '0000-00-00 00:00:00', '2016-10-25 23:17:01', '2016-10-25 22:56:17'),
(11, 124, 14, 14, 0, 'vasquezd', 'vasquezda', '&nbsp', '&nbsp', '0000-00-00 00:00:00', 0, 0, '', '', '7702324c9280dae8619895930030ac79', 0, '0000-00-00 00:00:00', '2016-10-25 23:17:09', '2016-10-25 23:01:32'),
(12, 125, 0, 0, 0, 'vasquezd', 'vasquezda', '&nbsp', '&nbsp', '0000-00-00 00:00:00', 0, 0, '', '', 'b235dd71f42502eb5e3334587ae1670d', 0, '0000-00-00 00:00:00', '2016-10-25 23:17:11', '2016-10-25 23:01:55'),
(13, 124, 14, 14, 0, 'vasquezd', 'vasquezd', 'Â  group 124 p 14 and L 14 ', '&nbsp', '0000-00-00 00:00:00', 0, 0, '', '', 'b07469238989226cdbacb70dc93afa0b', 0, '0000-00-00 00:00:00', '2016-10-25 23:14:00', '2016-10-25 23:13:46');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=693 ;

--
-- Dumping data for table `divvy_users`
--

INSERT INTO `divvy_users` (`divvy_users_id`, `divvy_id`, `list_id`, `divvy_from`, `divvy_to`, `divvy_to_user_status`, `active`, `status_seen`, `updated`, `created`) VALUES
(679, 63, 155, 'vasquezd', 'vasquezd', 1, 1, 1, '0000-00-00 00:00:00', '2016-10-22 23:26:15'),
(680, 1, 155, 'vasquezd', 'david', 0, 1, 0, '2016-10-24 00:29:32', '2016-10-24 00:29:32'),
(681, 2, 155, 'vasquezd', 'vasquezd', 0, 1, 0, '2016-10-24 00:29:55', '2016-10-24 00:29:55'),
(682, 3, 155, 'vasquezd', 'people', 0, 1, 0, '2016-10-24 00:36:18', '2016-10-24 00:36:18'),
(683, 4, 155, 'vasquezd', 'vasquezd', 1, 1, 0, '0000-00-00 00:00:00', '2016-10-24 00:37:28'),
(684, 5, 155, 'vasquezd', 'vasquezd', 1, 1, 0, '0000-00-00 00:00:00', '2016-10-24 00:41:28'),
(685, 6, 155, 'vasquezd', 'vasquezd', 1, 1, 0, '0000-00-00 00:00:00', '2016-10-24 00:42:44'),
(686, 7, 155, 'vasquezd', 'vasquezd', 1, 1, 0, '0000-00-00 00:00:00', '2016-10-24 00:42:47'),
(687, 8, 155, 'vasquezd', 'vasquezd', 1, 1, 0, '0000-00-00 00:00:00', '2016-10-24 00:44:29'),
(688, 9, 155, 'vasquezd', 'vasquezd', 1, 1, 0, '0000-00-00 00:00:00', '2016-10-24 22:39:24'),
(689, 10, 14, 'vasquezd', 'vasquezd', 1, 1, 0, '0000-00-00 00:00:00', '2016-10-25 22:56:17'),
(690, 11, 14, 'vasquezd', 'vasquezd', 1, 1, 0, '0000-00-00 00:00:00', '2016-10-25 23:01:32'),
(691, 12, 0, 'vasquezd', 'vasquezd', 1, 1, 0, '0000-00-00 00:00:00', '2016-10-25 23:01:55'),
(692, 13, 14, 'vasquezd', 'vasquezd', 1, 1, 0, '0000-00-00 00:00:00', '2016-10-25 23:13:46');

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
  `friend_key` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`friends_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=201 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friends_id`, `user_name`, `user_id`, `friend_user_name`, `friend_id`, `friend_key`, `created`) VALUES
(186, 'Becca', 6, 'kristen', 4, 'Beccakristen', '2016-07-26 20:56:21'),
(187, 'kristen', 4, 'Becca', 6, 'kristenBecca', '2016-07-26 20:56:21'),
(188, 'vasquezd', 1, 'kristen', 4, 'vasquezdkristen', '2016-07-26 20:56:33'),
(189, 'kristen', 4, 'vasquezd', 1, 'kristenvasquezd', '2016-07-26 20:56:33'),
(190, 'brian', 3, 'vasquezd', 1, 'brianvasquezd', '2016-07-30 23:33:42'),
(191, 'vasquezd', 1, 'brian', 3, 'vasquezdbrian', '2016-07-30 23:33:42'),
(192, 'Sarah', 7, 'vasquezd', 1, 'Sarahvasquezd', '2016-08-27 22:07:57'),
(193, 'Sarah', 7, 'vasquezd', 1, 'Sarahvasquezd', '2016-08-27 22:07:57'),
(194, 'vasquezd', 1, 'Sarah', 7, 'vasquezdSarah', '2016-08-27 22:07:57'),
(195, 'chris', 8, 'vasquezd', 1, 'chrisvasquezd', '2016-10-01 20:31:35'),
(196, 'vasquezd', 1, 'chris', 8, 'vasquezdchris', '2016-10-01 20:31:35'),
(197, 'Aimee', 5, 'vasquezd', 1, 'Aimeevasquezd', '2016-10-01 20:59:49'),
(198, 'vasquezd', 1, 'Aimee', 5, 'vasquezdAimee', '2016-10-01 20:59:49'),
(199, 'emailtest', 78, 'vasquezd', 1, '781', '2016-10-25 20:07:41'),
(200, 'vasquezd', 1, 'emailtest', 78, '178', '2016-10-25 20:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_parent` int(1) NOT NULL,
  `group_level` int(1) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=126 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_parent`, `group_level`, `group_key`, `created_by`, `group_type`, `group_name`, `group_image`, `group_users`, `group_folders`, `group_messages`, `updated`, `created`) VALUES
(124, 0, 1, '0.80921700 1477432988580fd69cc59011.18768382', 'vasquezd', '', 'School', '', 124, 124, 124, '0000-00-00 00:00:00', '2016-10-25 22:03:08'),
(125, 0, 1, '0.86821700 1477433000580fd6a8d3f798.85777312', 'vasquezd', '', 'Home', '', 125, 125, 125, '0000-00-00 00:00:00', '2016-10-25 22:03:20');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=310 ;

--
-- Dumping data for table `group_users`
--

INSERT INTO `group_users` (`primary_id`, `group_id`, `user_name`, `active_member`, `created`, `updated`) VALUES
(307, 124, 'vasquezd', 0, '2016-10-25 22:03:08', '0000-00-00 00:00:00'),
(309, 125, 'vasquezd', 0, '2016-10-25 22:03:20', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=291 ;

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
(290, 0, 'Wall Posts', 0, 0, 'https://www.amazon.com/Rakkety-Tam-Redwall-Brian-Jacques-ebook/dp/B0009HARRU/ref=sr_1_6?ie=UTF8&qid=1475099931&sr=8-6&keywords=brian+jaque', 'Rakkety Tam (Redwall (Philomel/Cloth)): Brian Jacques, David Elliot: Amazon.com: Books', 'vasquezd', 'vasquezd', 'amazon.png', 'amazon.png', 'shared', '', 0, 0, '', 0, 0, 0, '2016-09-28 23:14:26', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=252 ;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`list_primary_id`, `list_id`, `user_name`, `user_id`, `user_privilege`, `created_by`, `shared_with`, `list_type`, `list_name`, `group_id`, `unique_key`, `active_status`, `recycle_status`, `updated`, `created`) VALUES
(250, 250, 'vasquezd', 1, 'own', 'vasquezd', 'vasquezd', 'wishlist', 'David', 0, 'ac2ad687982696e0355788939ec4fef2', 1, 0, '2016-10-25 19:50:06', '2016-10-25 19:50:06'),
(251, 250, 'emailtest', 78, 'view', 'vasquezd', 'emailtest', 'wishlist', 'David', 0, '', 1, 0, '2016-10-25 20:07:41', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `list_users`
--

INSERT INTO `list_users` (`primary_id`, `list_id`, `user_name`, `user_privilege`, `active_member`, `created`, `updated`) VALUES
(10, 250, 'vasquezd', 'own', 1, '2016-10-25 19:50:06', '0000-00-00 00:00:00'),
(11, 250, 'emailtest', 'view', 1, '2016-10-25 20:07:41', '0000-00-00 00:00:00'),
(12, 250, 'DAVID TEST', 'DAVID TEST', 0, '2016-10-25 20:07:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `master_site` varchar(255) NOT NULL,
  `notification_from` varchar(255) NOT NULL,
  `notification_to` varchar(255) NOT NULL,
  `notification_time` timestamp NOT NULL,
  `notification_message` varchar(255) NOT NULL,
  `notification_type` varchar(255) NOT NULL,
  `full_link` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `from_logged_in_user` int(11) NOT NULL,
  `status_unseen` int(11) NOT NULL,
  `clicked` int(11) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=809 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `pending_email`
--

INSERT INTO `pending_email` (`primary_id`, `codehash`, `request_from`, `request_to`, `email`, `square_id`, `group_id`, `list_id`, `status`) VALUES
(8, '368939e644acfc989b7138d61d9f0209e665187d', 'vasquezd', '<a href=http://mywishlists.co/wishlist/site_files/register_email.php?hash=368939e644acfc989b7138d61d9f0209e665187d&useremail=vasquezd@onid.orst.edu&friendname=vasquezd&listid=250">Join WishList</a>', 'vasquezd@onid.orst.edu', 0, 0, 250, 0),
(9, '294abf1aa559988a080f2cc5cf0c230f5186fe2c', 'vasquezd', '<a href=http://mywishlists.co/wishlist/site_files/register_email.php?hash=294abf1aa559988a080f2cc5cf0c230f5186fe2c&useremail=vasquezd@onid.orst.edu&friendname=vasquezd&listid=250">Join WishList</a>', 'vasquezd@onid.orst.edu', 0, 0, 250, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=355 ;

--
-- Dumping data for table `pending_requests`
--

INSERT INTO `pending_requests` (`primary_id`, `request_type`, `request_type_name`, `sent_by`, `sent_to`, `request_key`, `sent_to_email`, `square_id`, `group_id`, `list_id`, `status`, `updated`, `created`) VALUES
(353, 'new_square', 'Wants to start a new group', 'emailtest', 'vasquezd', '', '', 124, 124, 0, 1, '2016-10-25 22:03:08', '0000-00-00 00:00:00'),
(354, 'new_square', 'Wants to start a new group', 'emailtest', 'vasquezd', '', '', 125, 125, 0, 1, '2016-10-25 22:03:20', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=581 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_master_type`, `category`, `parent`, `list_id`, `post_from`, `post_to`, `post_type`, `post_caption`, `post_url`, `video_code`, `image_url`, `file_url`, `file_name`, `article_title`, `article_text`, `contains_file`, `unique_id`, `post_status`, `purchased`, `purchased_by`, `comment_seen`, `updated`, `created`) VALUES
(551, 'shareshare', '', 0, 0, 'vasquezd', '114', 'link', 'link', 'https://www.youtube.com/watch?v=hFj5c5MozC0', '', 'youtube.png', '', '', 'Hammock - Tape Recorder - YouTube', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-09-29 21:56:34', '2016-09-29 21:56:34'),
(552, 'shareshare', 'photo', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1475186980Jellyfish.jpg', '1475186980Jellyfish.jpg', 'Jellyfish.jpg', '', '', 0, 'vasquezdvasquezd1475186975', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-09-29 22:09:40'),
(553, 'shareshare', 'photo', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1475186982Jellyfish.jpg', '1475186982Jellyfish.jpg', 'Jellyfish.jpg', '', '', 0, 'vasquezdvasquezd1475186975', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-09-29 22:09:42'),
(554, 'shareshare', 'photo', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1475186992Jellyfish.jpg', '1475186992Jellyfish.jpg', 'Jellyfish.jpg', '', '', 0, 'vasquezdvasquezd1475186975', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-09-29 22:09:52'),
(555, 'shareshare', 'photo', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1475186996Koala.jpg', '1475186996Koala.jpg', 'Koala.jpg', '', '', 0, 'vasquezdvasquezd1475186992', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-09-29 22:09:56'),
(556, 'shareshare', 'photo', 0, 0, 'vasquezd', '106', 'photo', '', '', '', '1475187013Lighthouse.jpg', '1475187013Lighthouse.jpg', 'Lighthouse.jpg', '', '', 0, 'vasquezd1061475187010', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-09-29 22:10:13'),
(557, 'shareshare', '', 0, 0, 'vasquezd', '106', 'file', '0', '', '', '', '1475187083Koala.jpg', 'Koala.jpg', '', '', 1, '', 1, 0, '', '0000-00-00 00:00:00', '2016-09-29 22:11:23', '2016-09-29 22:11:23'),
(558, 'shareshare', 'photo', 0, 0, 'vasquezd', 'matt', 'photo', '', '', '', '1475189112Hydrangeas.jpg', '1475189112Hydrangeas.jpg', 'Hydrangeas.jpg', '', '', 0, 'vasquezdmatt1475189108', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-09-29 22:45:12'),
(559, 'shareshare', 'photo', 0, 0, 'vasquezd', 'matt', 'photo', '', '', '', '1475189227Jellyfish.jpg', '1475189227Jellyfish.jpg', 'Jellyfish.jpg', '', '', 0, 'vasquezdmatt1475189220', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-09-29 22:47:07'),
(560, 'wishlist', 'photo', 0, 0, 'vasquezd', 'matt', 'item', '', '', '', '1475189387Desert.jpg', '1475189387Desert.jpg', 'Desert.jpg', '', '', 0, 'vasquezdmatt1475189378', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-09-29 22:49:47'),
(561, 'wishlist', 'photo', 0, 0, 'vasquezd', 'matt', 'item', '', '', '', '1475189409Koala.jpg', '1475189409Koala.jpg', 'Koala.jpg', '', '', 0, 'vasquezdmatt1475189397', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-09-29 22:50:09'),
(562, 'wishlist', 'photo', 0, 0, 'vasquezd', 'vasquezd', 'item', '', '', '', '1475189428Penguins.jpg', '1475189428Penguins.jpg', 'Penguins.jpg', '', '', 0, 'vasquezdvasquezd1475189420', 0, 0, '', '0000-00-00 00:00:00', '2016-10-18 21:37:25', '2016-09-29 22:50:28'),
(563, 'wishlist', 'photo', 0, 0, 'vasquezd', 'Kristen', 'item', '', '', '', '1475189440Lighthouse.jpg', '1475189440Lighthouse.jpg', 'Lighthouse.jpg', '', '', 0, 'vasquezdKristen1475189433', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-09-29 22:50:40'),
(564, 'wishlist', 'photo', 0, 217, 'vasquezd', 'matt', 'item', '', '', '', '1475190398Jellyfish.jpg', '1475190398Jellyfish.jpg', 'Jellyfish.jpg', '', '', 0, 'vasquezdmatt1475190391', 0, 0, '', '0000-00-00 00:00:00', '2016-10-23 22:46:17', '2016-09-29 23:06:38'),
(565, 'shareshare', 'photo', 0, 0, 'vasquezd', 'Kristen', 'photo', '', '', '', '1475190945Jellyfish.jpg', '1475190945Jellyfish.jpg', 'Jellyfish.jpg', '', '', 0, 'vasquezdKristen1475190939', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-09-29 23:15:45'),
(566, 'shareshare', '', 0, 0, 'vasquezd', 'brian', 'file', '0', '', '', '', '1475190962Koala.jpg', 'Koala.jpg', '', '', 1, '', 1, 0, '', '0000-00-00 00:00:00', '2016-09-29 23:16:02', '2016-09-29 23:16:02'),
(567, 'shareshare', '', 0, 0, 'vasquezd', 'brian', 'file', '0', '', '', '', '1475191015Jellyfish.jpg', 'Jellyfish.jpg', '', '', 1, '', 1, 0, '', '0000-00-00 00:00:00', '2016-09-29 23:16:55', '2016-09-29 23:16:55'),
(568, 'shareshare', 'photo', 0, 0, 'aimee', 'vasquezd', 'photo', '', '', '', '147535570514712214651467493208david__1_1.jpg', '147535570514712214651467493208david__1_1.jpg', '14712214651467493208david__1_1.jpg', '', '', 0, 'aimeevasquezd1475355691', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-01 21:01:45'),
(569, 'shareshare', 'photo', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '14753625391475276996david__1.jpg', '14753625391475276996david__1.jpg', '1475276996david__1.jpg', '', '', 0, 'vasquezdvasquezd1475362481', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-01 22:55:39'),
(570, 'shareshare', 'photo', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1475362544default.jpg', '1475362544default.jpg', 'default.jpg', '', '', 0, 'vasquezdvasquezd1475362539', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-01 22:55:44'),
(571, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=TmmxPwrmcWU', 'TmmxPwrmcWU', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-10-01 23:10:17', '2016-10-01 23:10:17'),
(572, 'wishlist', 'photo', 0, 0, 'vasquezd', 'vasquezd', 'item', 'Buy me kola!', '', '', '1476660523Koala.jpg', '1476660523Koala.jpg', 'Koala.jpg', '', '', 0, 'vasquezdvasquezd1476660477', 0, 0, '', '0000-00-00 00:00:00', '2016-10-18 21:37:22', '2016-10-16 23:28:43'),
(573, 'wishlist', '', 0, 245, 'aimee', 'aimee', 'article', '', 'https://www.amazon.com/gp/product/0142426180/ref=pd_sim_14_4?ie=UTF8&pd_rd_i=0142426180&pd_rd_r=6ZXHTSKECZAZ2E4ZFX9T&pd_rd_w=IVrb2&pd_rd_wg=2Sz1k&psc=1&refRID=6ZXHTSKECZAZ2E4ZFX9T', '', '580416146c3ea303265874.jpg', '', '', 'Amazon.com: The Rogue Crew: A Tale of Redwall (9780142426180): Brian Jacques: Books', 'Buy The Rogue Crew: A Tale of Redwall on Amazon.com âœ“ FREE SHIPPING on qualified orders', 0, '', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-17 09:06:51'),
(574, 'wishlist', 'photo', 0, 245, 'aimee', 'aimee', 'item', '', '', '', '1476663065Hydrangeas.jpg', '1476663065Hydrangeas.jpg', 'Hydrangeas.jpg', '', '', 0, 'aimeeaimee1476663059', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-17 00:11:05'),
(575, 'wishlist', 'photo', 0, 0, 'vasquezd', 'vasquezd', 'item', 'please buy me', '', '', '1476826660Koala.jpg', '1476826660Koala.jpg', 'Koala.jpg', '', '', 0, 'vasquezdvasquezd1476826414', 0, 0, '', '0000-00-00 00:00:00', '2016-10-23 22:55:46', '2016-10-18 21:37:40'),
(576, 'wishlist', 'photo', 0, 246, 'vasquezd', 'vasquezd', 'item', 'jelly!', '', '', '1477262225Jellyfish.jpg', '1477262225Jellyfish.jpg', 'Jellyfish.jpg', '', '', 0, 'vasquezdvasquezd1477262214', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-23 22:37:05'),
(577, 'wishlist', 'photo', 0, 217, 'vasquezd', 'vasquezd', 'item', '', '', '', '1477262322Hydrangeas.jpg', '1477262322Hydrangeas.jpg', 'Hydrangeas.jpg', '', '', 0, 'vasquezdvasquezd1477262315', 0, 0, '', '0000-00-00 00:00:00', '2016-10-23 22:46:20', '2016-10-23 22:38:42'),
(578, 'wishlist', 'photo', 0, 217, 'vasquezd', 'vasquezd', 'item', 'hy', '', '', '1477262332Tulips.jpg', '1477262332Tulips.jpg', 'Tulips.jpg', '', '', 0, 'vasquezdvasquezd1477262322', 0, 0, '', '0000-00-00 00:00:00', '2016-10-23 22:46:22', '2016-10-23 22:38:52'),
(579, 'wishlist', 'photo', 0, 0, 'vasquezd', 'vasquezd', 'item', '', '', '', '1477354739Hydrangeas.jpg', '1477354739Hydrangeas.jpg', 'Hydrangeas.jpg', '', '', 0, 'vasquezdvasquezd1477354646', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-25 00:18:59'),
(580, 'wishlist', 'photo', 0, 250, 'vasquezd', 'vasquezd', 'item', 'Buy me', '', '', '1477425028Koala.jpg', '1477425028Koala.jpg', 'Koala.jpg', '', '', 0, 'vasquezdvasquezd1477425009', 1, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-25 19:50:28');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=207 ;

--
-- Dumping data for table `user_analytics`
--

INSERT INTO `user_analytics` (`analytics_id`, `page_url`, `group_id`, `last_visit`, `total_visits`, `user_name`, `user_id`) VALUES
(186, 'group_discussion.php', 106, '2016-09-23 22:45:47', 372, 'vasquezd', 0),
(187, 'group_wall.php', 106, '2016-09-29 22:11:26', 478, 'vasquezd', 0),
(188, 'group_wall.php', 106, '2016-09-23 22:48:57', 59, 'matt', 0),
(189, 'group_discussion.php', 106, '2016-06-28 21:24:23', 9, 'matt', 0),
(190, 'group_files.php', 106, '2016-06-27 23:06:18', 1, 'matt', 0),
(191, 'group_links.php', 106, '2016-06-28 21:25:36', 30, 'matt', 0),
(192, 'group_links.php', 106, '2016-07-03 23:00:37', 5, 'vasquezd', 0),
(193, 'group_files.php', 106, '2016-09-23 22:45:50', 28, 'vasquezd', 0),
(194, 'group_wall.php', 114, '2016-10-01 22:15:12', 61, 'vasquezd', 0),
(195, 'group_wall.php', 115, '2016-10-01 23:30:28', 84, 'vasquezd', 0),
(196, 'group_discussion.php', 115, '2016-06-30 22:33:11', 0, 'vasquezd', 0),
(197, 'group_discussion.php', 114, '2016-07-09 21:51:13', 1, 'vasquezd', 0),
(198, 'group_discussion.php', 0, '2016-07-08 22:49:18', 0, 'vasquezd', 0),
(199, 'group_files.php', 114, '2016-08-26 23:12:02', 10, 'vasquezd', 0),
(200, 'group_wall.php', 0, '2016-10-24 22:54:23', 21, 'vasquezd', 0),
(201, 'group_wall.php', 117, '2016-10-01 23:31:43', 5, 'vasquezd', 0),
(202, 'group_wall.php', 118, '2016-10-01 23:32:00', 3, 'vasquezd', 0),
(203, 'group_wall.php', 119, '2016-10-01 23:32:24', 1, 'vasquezd', 0),
(204, 'group_wall.php', 120, '2016-10-01 23:33:09', 5, 'vasquezd', 0),
(205, 'group_wall.php', 121, '2016-10-01 23:33:18', 1, 'vasquezd', 0),
(206, 'group_wall.php', 122, '2016-10-24 22:36:24', 1, 'vasquezd', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `salt`, `password`, `last_login`, `last_logout`, `login_total`, `test`) VALUES
(1, 'vasquezd', 1408593605, 'f62c9d59b1b2cbe2b6462784e1d6a550f1afbe85', '2016-10-25 22:04:08', '2016-10-25 20:06:10', 315, 'vasquezb'),
(2, 'matt', 1448946249, 'de85ef10d2853b10978ac6c8e0c37c354d3b6969', '2016-09-28 23:33:27', '2016-09-28 23:33:37', 35, 'vasquezb'),
(3, 'brian', 1448946380, 'ace622215c315ce82bfd153b63c7faeb218a17da', '2016-10-16 21:59:52', '2016-08-27 22:40:17', 6, 'vasquezb'),
(4, 'Kristen', 1448946380, 'e3ae7af8145e258b854728fc9cebe6c8891ee2a5', '2016-09-04 22:04:40', '2016-09-04 22:05:52', 7, 'vasquezb'),
(5, 'Aimee', 1448946380, '33f916c66f61bbf37a12105c8bb3e0fc8ea75fd6', '2016-10-17 00:10:47', '2016-10-17 00:11:18', 5, ''),
(6, 'Becca', 1448946503, 'ba342a034cc175fb24a1c3d59d190da0c31f0106', '2016-09-26 21:55:51', '2016-09-26 22:08:49', 14, ''),
(7, 'Sarah', 1448946503, '378d32da508020f682a238053fec6f307e0aa30a', '2016-08-27 22:07:51', '2016-08-27 22:08:01', 1, ''),
(8, 'chris', 1448946380, '80c96f63d24bc38382aca981ed2e262c22582605', '2016-10-01 20:31:31', '2016-10-01 20:31:45', 1, ''),
(9, 'pop', 1448946503, '851b0d429828f520537e2323a1c5f1cde21eee5d', '2015-12-01 05:31:10', '2015-12-01 05:31:10', 0, ''),
(39, 'vasquezk', 1466107880, '6d7cb2a50e2fbaaa22735cc31d0a0df53e9afb30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(40, 'koala', 1469487504, 'b374bd02cd57b12ee7dd84194745aeeec8a12cb3', '2016-07-25 23:09:28', '2016-07-25 23:09:33', 2, ''),
(60, 'david', 1474402462, '9c41e856498d3af80b81cc7189811dc392c74fe5', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(78, 'emailtest', 1477426061, 'efd93a404ee836b80f5fdb0f7e0a5889af3e5901', '2016-10-25 20:08:02', '2016-10-25 22:04:04', 1, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_profile_id`, `user_id`, `user_name`, `email`, `image_name`, `first_name`, `last_name`, `root_folder`, `biography`, `university`, `updated`, `created`) VALUES
(46, 1, 'vasquezd', 'Vasquezd@onid.orst.edu', '1475276996david__1.jpg', 'David', 'Vasquez', 'Vasquezd', 'I was ', 'Oregon State ', '2016-04-03 21:33:50', '2014-08-21 18:00:05'),
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
(90, 78, 'emailtest', 'vasquezd@onid.orst.edu', 'david.jpg', 'david', 'vasquez', 'emailtest', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-10-25 20:07:41');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

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
(26, 'david', 60, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, 'emailtest', 78, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
