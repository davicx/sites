-- phpMyAdmin SQL Dump
-- version 2.11.9.4
-- http://www.phpmyadmin.net
--
-- Host: oniddb
-- Generation Time: May 25, 2019 at 03:36 PM
-- Server version: 5.5.62
-- PHP Version: 5.2.6-1+lenny16

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `vasquezd-db`
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
(46, 186, 0, 0, 0, 'This hobbit was a very well-to-do hobbit, and his name was Baggins. \n								The Bagginses had lived in the neighbourhood of The Hill for time out of mind, \n								and people considered them very respectable, not only because most of them were rich, \n								but also because they never had any adventures or did anything unexpected: \n								you could tell what a Baggins would say on any question without the bother of asking him. \n								This is a story of how a Baggins had an adventure, found himself doing and saying things \n								altogether unexpected. He may have lost the neighbours'' respect, but he gained-well, \n								you will see whether he gained anything in the end. ', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 17:21:16', '2017-03-30 15:37:27'),
(47, 186, 0, 0, 0, 'This was bad grammar of course, but that is how beavers talk when they are excited; I mean, in Narnia--in our world they usually don''t talk at all. ', 'sarah', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 16:56:42', '2016-07-08 15:37:32'),
(48, 186, 0, 0, 0, 'It is as hard to explain how this sunlit land was different from the old Narnia as it would be to tell you how the fruits of that country taste. Perhaps you will get some idea of it if you think like this. You may have been in a room in which there was a window that looked out on a lovely bay of the sea or a green valley that wound away among mountains. ', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 17:21:19', '2016-07-08 15:37:38'),
(69, 0, 0, 0, 0, 'lifehouse', 'vasquezd', '175', 0, 1, 0, 'Lighthouse.jpg', '1491255927Lighthouse.jpg', 0, '2017-04-03 14:45:27', '2017-04-03 14:45:27'),
(71, 0, 0, 0, 0, 'file', 'vasquezd', 'vasquezd', 0, 1, 0, 'Hydrangeas.jpg', '1491265119Hydrangeas.jpg', 0, '2017-04-03 17:18:39', '2017-04-03 17:18:39'),
(72, 0, 46, 1, 0, 'this is the new child comment', 'vasquezd', 'vasquezd', 0, 1, 0, 'Tulips.jpg', '1491265606Tulips.jpg', 0, '2017-04-05 17:21:21', '2017-04-03 17:26:46'),
(73, 0, 0, 0, 0, 'this is new', 'matt', 'vasquezd', 0, 0, 0, '', '', 1, '2017-04-05 17:21:45', '2017-04-04 17:12:08'),
(74, 0, 0, 0, 0, 'hi', 'kristen', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 16:56:07', '2017-04-05 16:13:53'),
(75, 0, 74, 1, 1, 'helo child', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 17:21:24', '2017-04-05 16:17:17'),
(76, 0, 75, 1, 1, 'helo child', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 16:18:19', '2017-04-05 16:17:50'),
(77, 0, 74, 1, 1, 'helo child', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 16:20:12', '2017-04-05 16:20:12'),
(78, 0, 74, 1, 1, 'hello new child ', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 17:13:31', '2017-04-05 16:20:52'),
(79, 0, 71, 1, 1, 'helo child', 'matt', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 16:54:48', '2017-04-05 16:25:25'),
(80, 0, 71, 1, 1, 'helo child', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 17:21:25', '2017-04-05 16:25:31'),
(81, 0, 48, 1, 1, 'helo child', 'brian', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 17:21:26', '2017-04-05 16:47:52'),
(82, 0, 48, 1, 1, 'helo child', 'sarah', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 17:21:27', '2017-04-05 16:48:06'),
(83, 0, 48, 1, 1, 'helo child', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 16:48:10', '2017-04-05 16:48:10'),
(84, 0, 48, 1, 1, 'helo child', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 17:21:29', '2017-04-05 16:48:16'),
(85, 0, 48, 1, 1, 'helo child', 'sarah', 'vasquezd', 0, 0, 0, '', '', 1, '2017-04-05 17:22:23', '2017-04-05 16:49:29'),
(86, 0, 48, 1, 1, 'why', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 17:21:31', '2017-04-05 16:49:35'),
(87, 0, 48, 1, 1, 'thats better ', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 16:49:42', '2017-04-05 16:49:42'),
(88, 0, 48, 1, 1, 'thats better why', 'sarah', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 17:21:32', '2017-04-05 16:50:21'),
(89, 0, 48, 1, 1, 'clear out', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 17:21:34', '2017-04-05 16:50:34'),
(90, 0, 48, 1, 1, 'right now', 'sarah', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 17:21:35', '2017-04-05 16:50:54'),
(91, 0, 47, 1, 1, 'hard to see down here', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-05 16:51:11', '2017-04-05 16:51:11'),
(92, 0, 71, 1, 1, 'right?1', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 1, '2017-04-05 17:21:49', '2017-04-05 16:51:20'),
(93, 0, 0, 0, 0, 'still work?', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 0, '2017-04-06 15:46:24', '2017-04-06 15:46:24'),
(94, 0, 93, 1, 1, 'ok', 'vasquezd', 'vasquezd', 0, 0, 0, '', '', 1, '2017-04-06 16:16:52', '2017-04-06 16:14:48'),
(95, 0, 0, 0, 0, 'this is a new comment', 'vasquezd', '175', 0, 0, 0, '', '', 0, '2017-04-06 16:46:54', '2017-04-06 16:46:54'),
(96, 0, 95, 1, 1, 'oh t otall i agree', 'vasquezd', '175', 0, 0, 0, '', '', 0, '2017-04-06 16:47:26', '2017-04-06 16:47:26'),
(97, 438, 0, 0, 0, 'this is a new comment yaya!', 'vasquezd', '438', 0, 0, 0, '', '', 0, '2017-08-22 16:56:32', '2017-04-06 16:54:14'),
(98, 0, 0, 0, 0, 'check out the new files I put for our game', 'vasquezd', '177', 0, 0, 0, '', '', 0, '2017-04-06 16:54:27', '2017-04-06 16:54:27'),
(99, 0, 0, 0, 0, 'hello what a great video', 'vasquezd', '321', 0, 0, 0, '', '', 0, '2017-08-22 17:25:14', '2017-08-22 17:25:14'),
(100, 438, 0, 0, 0, 'hello what a great video!!!!', 'vasquezd', '321', 0, 0, 0, '', '', 0, '2017-08-23 17:17:03', '2017-08-22 17:26:33'),
(101, 438, 0, 0, 0, 'This is new', 'vasquezd', '321', 0, 0, 0, '', '', 1, '2017-08-23 17:15:03', '2017-08-23 16:19:29'),
(102, 438, 0, 0, 0, 'Does this work?', 'vasquezd', '321', 0, 0, 0, '', '', 0, '2017-08-31 14:09:21', '2017-08-31 14:09:21'),
(103, 18, 0, 0, 0, 'this is cool!', 'vasquezd', '321', 0, 0, 0, '', '', 0, '2017-10-01 16:07:17', '2017-10-01 16:07:17'),
(104, 18, 0, 0, 0, 'ya!', 'vasquezd', '321', 0, 0, 0, '', '', 0, '2017-10-01 16:07:41', '2017-10-01 16:07:41');

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
(2, 15, 2, 'matt', '2016-05-26 16:01:32'),
(4, 3, 1, 'vasquezd', '2016-05-26 16:58:44'),
(5, 13, 1, 'vasquezd', '2016-05-26 17:00:45'),
(6, 2, 1, 'vasquezd', '2016-05-26 17:00:47'),
(8, 15, 1, 'vasquezd', '2016-05-27 13:11:59'),
(9, 23, 1, 'vasquezd', '2016-05-27 13:21:04'),
(10, 22, 1, 'vasquezd', '2016-05-27 13:21:05'),
(11, 19, 1, 'vasquezd', '2016-05-27 13:21:07'),
(12, 20, 1, 'vasquezd', '2016-05-27 15:03:54'),
(14, 24, 1, 'vasquezd', '2016-05-30 17:02:53'),
(15, 25, 1, 'Vasquezd', '2016-05-31 15:29:27'),
(16, 25, 1, 'vasquezd', '2016-06-02 13:29:54'),
(17, 26, 1, 'vasquezd', '2016-06-02 13:48:21'),
(18, 40, 1, 'vasquezd', '2016-07-03 16:22:47'),
(19, 41, 1, 'vasquezd', '2016-07-03 16:22:47'),
(20, 42, 1, 'vasquezd', '2016-07-03 16:33:20'),
(21, 39, 1, 'vasquezd', '2016-07-08 15:02:26'),
(22, 45, 1, 'vasquezd', '2016-07-08 15:02:29');

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

--
-- Dumping data for table `comment_votes`
--


-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_owner` varchar(255) NOT NULL,
  `event_parent` int(11) NOT NULL,
  `event_category` varchar(255) NOT NULL,
  `event_type` varchar(255) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_description` text NOT NULL,
  `event_location` varchar(255) NOT NULL,
  `event_image` varchar(255) NOT NULL,
  `event_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `event_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_owner`, `event_parent`, `event_category`, `event_type`, `event_name`, `event_description`, `event_location`, `event_image`, `event_time`, `event_created`) VALUES
(1, 'osu_football', 0, 'sports', 'football', 'OSU vs Utah', 'Football Game coming up!', 'Reser Stadium', 'football.jpg', '2019-05-18 18:00:00', '2018-03-29 15:45:46'),
(2, 'osu_admissions', 0, 'graduation', 'graduation', 'OSU Graduation', 'Graduation for 2019!', 'Reser Stadium', 'graduation.jpg', '2019-06-15 14:00:00', '2019-05-15 15:43:54'),
(3, 'osu_mens_soccer', 0, 'sports', 'Mens Soccer Game', 'OSU Mens Soccer vs USC', 'Soccer game, yay!', 'Corvallis', 'soccer.jpg', '2019-05-31 17:00:00', '2019-05-15 16:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `master_site` varchar(255) NOT NULL,
  `parent_folder` int(11) NOT NULL,
  `current_folder` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_image` varchar(255) NOT NULL,
  `file_extension` varchar(255) NOT NULL,
  `file_name_server` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_caption` text NOT NULL,
  `file_seen` int(11) NOT NULL,
  `file_status` int(11) NOT NULL,
  `recycle_status` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `file_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=126 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `master_site`, `parent_folder`, `current_folder`, `group_id`, `post_id`, `file_name`, `file_image`, `file_extension`, `file_name_server`, `user_name`, `user_id`, `file_caption`, `file_seen`, `file_status`, `recycle_status`, `unique_id`, `file_created`, `file_last_modified`) VALUES
(105, 'shareshare', 0, 0, 321, 0, 'background_2', 'background_2.png', 'png', 'background_2.png', 'vasquezd', 1, '', 0, 1, 0, '1507326748472', '2017-10-06 21:52:28', '2017-10-06 21:52:28'),
(107, 'shareshare', 0, 0, 321, 0, 'background_1', 'background_1.jpg', 'jpg', 'background_1.jpg', 'matt', 2, '', 0, 1, 0, '', '2017-12-06 00:17:13', '2017-12-06 00:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE IF NOT EXISTS `folders` (
  `folder_id` int(11) NOT NULL AUTO_INCREMENT,
  `master_site` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `parent_folder` int(11) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `folder_image` varchar(255) NOT NULL,
  `folder_seen` int(11) NOT NULL,
  `folder_status` int(11) NOT NULL,
  `recycle_status` int(11) NOT NULL,
  `folder_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `folder_last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`folder_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=119 ;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`folder_id`, `master_site`, `group_id`, `parent_folder`, `folder_name`, `user_name`, `user_id`, `folder_image`, `folder_seen`, `folder_status`, `recycle_status`, `folder_created`, `folder_last_modified`) VALUES
(108, '', 321, 0, 'Music', 'vasquezd', 1, 'folder.png', 0, 1, 0, '2019-05-10 16:28:57', '2019-05-10 16:28:57'),
(109, '', 321, 0, 'Movies', 'vasquezd', 1, 'folder.png', 0, 1, 0, '2019-05-10 16:29:49', '2019-05-10 16:29:49'),
(110, '', 321, 108, 'Anberlin', 'vasquezd', 1, 'folder.png', 0, 1, 0, '2019-05-10 16:30:45', '2019-05-10 16:30:45'),
(111, '', 321, 110, 'Cities', 'vasquezd', 1, 'folder.png', 0, 1, 0, '2019-05-10 16:30:52', '2019-05-10 16:30:52'),
(112, '', 321, 108, 'Hammock', 'vasquezd', 1, 'folder.png', 0, 1, 0, '2019-05-10 16:56:17', '2019-05-10 16:56:17'),
(113, '', 321, 112, 'Departure Songs', 'vasquezd', 1, 'folder.png', 0, 1, 0, '2019-05-10 16:56:44', '2019-05-10 16:56:44'),
(114, '', 321, 112, 'Kenotic', 'vasquezd', 1, 'folder.png', 0, 1, 0, '2019-05-10 16:56:59', '2019-05-10 16:56:59'),
(115, '', 321, 109, 'Lost', 'vasquezd', 1, 'folder.png', 0, 1, 0, '2019-05-10 16:57:09', '2019-05-10 16:57:09'),
(116, '', 321, 0, 'Games', 'vasquezd', 1, 'folder.png', 0, 1, 0, '2019-05-15 16:43:04', '2019-05-24 15:28:47'),
(117, '', 321, 0, 'Me', 'vasquezd', 1, 'folder.png', 0, 0, 1, '2019-05-22 15:35:22', '2019-05-22 15:35:40'),
(118, '', 321, 0, 'Hi', 'vasquezd', 1, 'folder.png', 0, 0, 1, '2019-05-22 15:36:07', '2019-05-22 15:36:10');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=354 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friends_id`, `user_name`, `user_id`, `friend_user_name`, `friend_id`, `request_pending`, `friend_key`, `created`) VALUES
(342, 'vasquezd', 1, 'matt', 2, 0, 'vasquezdmatt', '2019-02-19 16:10:41'),
(343, 'matt', 2, 'vasquezd', 1, 0, 'mattvasquezd', '2019-02-19 16:10:41'),
(344, 'vasquezd', 1, 'brian', 3, 1, 'vasquezdbrian', '2019-02-19 14:06:22'),
(345, 'brian', 3, 'vasquezd', 1, 1, 'brianvasquezd', '2019-02-19 14:06:22'),
(346, 'vasquezd', 1, 'Kristen', 4, 0, 'vasquezdKristen', '2019-02-19 16:11:30'),
(347, 'Kristen', 4, 'vasquezd', 1, 0, 'Kristenvasquezd', '2019-02-19 16:11:30'),
(348, 'vasquezd', 1, 'Aimee', 5, 1, 'vasquezdAimee', '2019-02-19 14:06:25'),
(349, 'Aimee', 5, 'vasquezd', 1, 1, 'Aimeevasquezd', '2019-02-19 14:06:25'),
(350, 'vasquezd', 1, 'Becca', 6, 0, 'vasquezdBecca', '2019-02-19 16:11:05'),
(351, 'Becca', 6, 'vasquezd', 1, 0, 'Beccavasquezd', '2019-02-19 16:11:05'),
(352, 'vasquezd', 1, 'Sarah', 7, 0, 'vasquezdSarah', '2019-04-06 16:13:29'),
(353, 'Sarah', 7, 'vasquezd', 1, 0, 'Sarahvasquezd', '2019-04-06 16:13:29');

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
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=339 ;

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
(328, 'board', 0, 'matt', 'matts 2', '', '0.90016100 15113957065a16117adbc419.78132765', 0, 0, '0000-00-00 00:00:00', '2017-11-23 00:08:26'),
(329, 'board', 0, 'vasquezd', 'hello daisy', '', '0.08879100 15171799295a6e541915ad72.18247645', 0, 0, '0000-00-00 00:00:00', '2018-01-28 22:52:09'),
(333, 'new_group', 0, 'vasquezd', 'Hiya matt!', '', '0.84140000 15519957965c819394cd6ec8.73287946', 0, 0, '0000-00-00 00:00:00', '2019-03-07 13:56:36'),
(334, 'new_group', 0, 'vasquezd', 'Hiya matt!', '', '0.25621300 15519957975c8193953e8fd0.48363337', 0, 0, '0000-00-00 00:00:00', '2019-03-07 13:56:37'),
(335, 'new_group', 0, 'vasquezd', 'hiya matt how many is this', '', '0.47530700 15519958565c8193d0740d97.45639134', 0, 0, '0000-00-00 00:00:00', '2019-03-07 13:57:36'),
(336, 'new_group', 0, 'vasquezd', 'Our Video Game!', '', '0.96977800 15520893395c8300fbecc4d5.54245951', 0, 0, '0000-00-00 00:00:00', '2019-03-08 15:55:39'),
(337, 'new_group', 0, 'vasquezd', 'Music II', '', '0.46559800 15545897405ca9282c71ada6.17444914', 0, 0, '0000-00-00 00:00:00', '2019-04-06 15:29:00'),
(338, 'new_group', 0, 'sarah', 'pending', '', '0.92573100 15569247635cccc95be204d4.41262371', 0, 0, '0000-00-00 00:00:00', '2019-05-03 16:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `groups_events`
--

CREATE TABLE IF NOT EXISTS `groups_events` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `group_type` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `group_image` varchar(255) NOT NULL,
  `group_deleted` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=342 ;

--
-- Dumping data for table `groups_events`
--

INSERT INTO `groups_events` (`group_id`, `group_name`, `group_type`, `created_by`, `group_image`, `group_deleted`, `updated`, `created`) VALUES
(339, 'osu_football', 'sports', 'vasquezd', 'football.jpg', 0, '0000-00-00 00:00:00', '2019-05-15 16:18:34'),
(340, 'osu_admissions', 'campus', 'vasquezd', 'admissions.jpg', 0, '0000-00-00 00:00:00', '2019-05-15 16:18:34'),
(341, 'osu_mens_soccer', 'sports', 'vasquezd', 'soccer.jpg', 0, '0000-00-00 00:00:00', '2019-05-15 16:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `group_followers`
--

CREATE TABLE IF NOT EXISTS `group_followers` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `active_member` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `group_followers`
--

INSERT INTO `group_followers` (`primary_id`, `group_name`, `group_id`, `user_name`, `active_member`, `created`, `updated`) VALUES
(1, 'osu_admissions', 340, 'vasquezd', 1, '2019-05-15 16:19:58', '2019-05-15 00:00:00'),
(2, 'osu_football', 339, 'vasquezd', 1, '2019-05-15 16:19:58', '2019-05-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `group_users`
--

CREATE TABLE IF NOT EXISTS `group_users` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `active_member` int(11) NOT NULL,
  `group_last_visit` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_default_group` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=864 ;

--
-- Dumping data for table `group_users`
--

INSERT INTO `group_users` (`primary_id`, `group_id`, `user_name`, `active_member`, `group_last_visit`, `is_default_group`, `created`) VALUES
(822, 321, 'vasquezd', 1, '2019-05-24 14:24:03', 0, '2017-08-20 20:59:59'),
(823, 322, 'matt', 0, '0000-00-00 00:00:00', 0, '2017-10-08 21:57:57'),
(824, 322, 'Sarah', 0, '0000-00-00 00:00:00', 0, '2017-10-08 21:57:57'),
(826, 323, 'davey', 1, '0000-00-00 00:00:00', 0, '2017-10-30 22:00:09'),
(833, 330, 'vasquezd', 1, '0000-00-00 00:00:00', 0, '2018-02-01 16:19:29'),
(834, 331, 'vasquezd', 1, '0000-00-00 00:00:00', 0, '2018-02-22 15:27:25'),
(835, 332, 'vasquezd', 1, '0000-00-00 00:00:00', 0, '2018-02-22 15:27:38'),
(836, 322, 'Kristen', 1, '0000-00-00 00:00:00', 0, '2019-03-04 14:11:04'),
(837, 322, 'Becca', 1, '0000-00-00 00:00:00', 0, '2019-03-04 14:23:10'),
(839, 333, 'Kristen', 1, '2019-05-03 16:44:07', 0, '2019-03-07 13:56:36'),
(840, 333, 'Becca', 1, '0000-00-00 00:00:00', 0, '2019-03-07 13:56:36'),
(843, 334, 'Kristen', 1, '0000-00-00 00:00:00', 0, '2019-03-07 13:56:37'),
(844, 334, 'Becca', 1, '0000-00-00 00:00:00', 0, '2019-03-07 13:56:37'),
(847, 335, 'Kristen', 1, '0000-00-00 00:00:00', 0, '2019-03-07 13:57:36'),
(848, 335, 'Becca', 1, '0000-00-00 00:00:00', 0, '2019-03-07 13:57:36'),
(850, 336, 'matt', 1, '2019-05-16 15:07:35', 0, '2019-03-08 15:55:39'),
(851, 336, 'Kristen', 1, '0000-00-00 00:00:00', 0, '2019-03-08 15:55:39'),
(852, 336, 'Becca', 1, '0000-00-00 00:00:00', 0, '2019-03-08 15:55:40'),
(854, 337, 'matt', 1, '2019-05-07 16:37:52', 0, '2019-04-06 15:29:00'),
(855, 337, 'Kristen', 1, '0000-00-00 00:00:00', 0, '2019-04-06 15:29:00'),
(856, 337, 'Becca', 1, '0000-00-00 00:00:00', 0, '2019-04-06 15:29:00'),
(857, 337, 'vasquezd', 1, '2019-05-08 15:03:18', 0, '2019-04-06 15:29:00'),
(858, 338, 'vasquezd', 0, '0000-00-00 00:00:00', 0, '2019-05-03 16:06:03'),
(859, 338, 'sarah', 1, '0000-00-00 00:00:00', 0, '2019-05-03 16:06:03'),
(860, 321, 'matt', 1, '2019-05-07 16:38:07', 0, '2019-05-03 16:26:35'),
(861, 321, 'Kristen', 0, '0000-00-00 00:00:00', 0, '2019-05-06 15:29:23'),
(862, 321, 'Becca', 0, '0000-00-00 00:00:00', 0, '2019-05-06 15:29:23'),
(863, 321, 'Sarah', 0, '0000-00-00 00:00:00', 0, '2019-05-06 15:29:23');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `links`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `list`
--


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
  `updated` timestamp NULL DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`primary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `list_users`
--


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
  `notification_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `full_link` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `from_logged_in_user` int(11) NOT NULL,
  `notification_count` int(11) NOT NULL,
  `notification_deleted` int(11) NOT NULL,
  `clicked` int(11) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1021 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `master_site`, `status_unseen`, `notification_from`, `notification_to`, `notification_type`, `notification_message`, `notification_time`, `full_link`, `link_url`, `group_id`, `list_id`, `from_logged_in_user`, `notification_count`, `notification_deleted`, `clicked`) VALUES
(967, 'shareshare', 1, 'vasquezd', 'matt', 'new_post_photo', 'shared a photo', '2019-02-10 23:32:07', 'posts.php?group_id=MzIx', 'posts.php?group_id=MzIx', 321, 0, 0, 1, 0, 0),
(968, 'shareshare', 1, 'vasquezd', 'Kristen', 'new_post_photo', 'shared a photo', '2019-02-10 23:32:07', 'posts.php?group_id=MzIx', 'posts.php?group_id=MzIx', 321, 0, 0, 1, 0, 0),
(969, 'shareshare', 1, 'vasquezd', 'matt', 'new_post_text', 'made a comment ', '2019-02-10 23:32:33', 'posts.php?group_id=MzIx', 'posts.php?group_id=MzIx', 321, 0, 0, 1, 0, 0),
(970, 'shareshare', 1, 'vasquezd', 'Kristen', 'new_post_text', 'made a comment ', '2019-02-10 23:32:33', 'posts.php?group_id=MzIx', 'posts.php?group_id=MzIx', 321, 0, 0, 1, 0, 0),
(971, 'shareshare', 1, 'vasquezd', 'matt', 'new_post_photo', 'shared a photo', '2019-02-10 23:32:36', 'posts.php?group_id=MzIx', 'posts.php?group_id=MzIx', 321, 0, 0, 1, 0, 0),
(972, 'shareshare', 1, 'vasquezd', 'Kristen', 'new_post_photo', 'shared a photo', '2019-02-10 23:32:36', 'posts.php?group_id=MzIx', 'posts.php?group_id=MzIx', 321, 0, 0, 1, 0, 0),
(973, 'shareshare', 1, 'vasquezd', 'matt', 'new_post_video', 'shared a video', '2019-02-10 23:33:03', 'posts.php?group_id=MzIx', 'posts.php?group_id=MzIx', 321, 0, 0, 1, 0, 0),
(974, 'shareshare', 1, 'vasquezd', 'Kristen', 'new_post_video', 'shared a video', '2019-02-10 23:33:03', 'posts.php?group_id=MzIx', 'posts.php?group_id=MzIx', 321, 0, 0, 1, 0, 0),
(975, 'shareshare', 1, 'vasquezd', 'matt', 'new_post_video', 'shared a video', '2019-02-15 15:04:32', 'posts.php?group_id=MzIx', 'posts.php?group_id=MzIx', 321, 0, 0, 1, 0, 0),
(976, 'shareshare', 1, 'vasquezd', 'Kristen', 'new_post_video', 'shared a video', '2019-02-15 15:04:32', 'posts.php?group_id=MzIx', 'posts.php?group_id=MzIx', 321, 0, 0, 1, 0, 0),
(977, 'shareshare', 1, 'vasquezd', 'matt', 'new_post_text', 'made a comment ', '2019-02-15 15:05:56', 'posts.php?group_id=MzIx', 'posts.php?group_id=MzIx', 321, 0, 0, 1, 0, 0),
(978, 'shareshare', 1, 'vasquezd', 'Kristen', 'new_post_text', 'made a comment ', '2019-02-15 15:05:56', 'posts.php?group_id=MzIx', 'posts.php?group_id=MzIx', 321, 0, 0, 1, 0, 0),
(979, 'shareshare', 1, 'vasquezd', 'matt', 'friend_request', 'requested to be friends', '2019-02-19 14:06:21', '#', '#', 0, 0, 0, 0, 0, 0),
(980, 'shareshare', 1, 'vasquezd', 'brian', 'friend_request', 'requested to be friends', '2019-02-19 14:06:22', '#', '#', 0, 0, 0, 0, 0, 0),
(981, 'shareshare', 1, 'vasquezd', 'Kristen', 'friend_request', 'requested to be friends', '2019-02-19 14:06:23', '#', '#', 0, 0, 0, 0, 0, 0),
(982, 'shareshare', 1, 'vasquezd', 'Aimee', 'friend_request', 'requested to be friends', '2019-02-19 14:06:25', '#', '#', 0, 0, 0, 0, 0, 0),
(983, 'shareshare', 1, 'vasquezd', 'Becca', 'friend_request', 'requested to be friends', '2019-02-19 14:06:31', '#', '#', 0, 0, 0, 0, 0, 0),
(984, 'shareshare', 1, 'vasquezd', 'Sarah', 'friend_request', 'requested to be friends', '2019-02-19 14:06:31', '#', '#', 0, 0, 0, 0, 0, 0),
(988, 'shareshare', 1, 'vasquezd', 'Kristen', 'group_invite', 'invited you to join a group', '2019-03-04 14:11:04', '#', '#', 322, 0, 0, 1, 0, 0),
(989, 'shareshare', 1, 'vasquezd', 'Becca', 'group_invite', 'invited you to join a group', '2019-03-04 14:23:10', '#', '#', 322, 0, 0, 1, 0, 0),
(990, 'shareshare', 1, 'vasquezd', 'matt', 'group_invite', 'invited you to a group', '2019-03-07 13:56:36', '0', 'üÓ¶ps.php?group_id=MA==', 333, 0, 0, 0, 0, 0),
(991, 'shareshare', 1, 'vasquezd', 'Kristen', 'group_invite', 'invited you to a group', '2019-03-07 13:56:36', '0', 'üÓ¶ps.php?group_id=MA==', 333, 0, 0, 0, 0, 0),
(992, 'shareshare', 1, 'vasquezd', 'Becca', 'group_invite', 'invited you to a group', '2019-03-07 13:56:36', '0', 'üÓ¶ps.php?group_id=MA==', 333, 0, 0, 0, 0, 0),
(993, 'shareshare', 1, 'vasquezd', 'matt', 'group_invite', 'invited you to a group', '2019-03-07 13:56:37', '0', 'D8ß¶ps.php?group_id=MA==', 334, 0, 0, 0, 0, 0),
(994, 'shareshare', 1, 'vasquezd', 'Kristen', 'group_invite', 'invited you to a group', '2019-03-07 13:56:37', '0', 'D8ß¶ps.php?group_id=MA==', 334, 0, 0, 0, 0, 0),
(995, 'shareshare', 1, 'vasquezd', 'Becca', 'group_invite', 'invited you to a group', '2019-03-07 13:56:37', '0', 'D8ß¶ps.php?group_id=MA==', 334, 0, 0, 0, 0, 0),
(997, 'shareshare', 1, 'vasquezd', 'Kristen', 'group_invite', 'invited you to a group', '2019-03-07 13:57:36', '0', ',—Û¶ps.php?group_id=MA==', 335, 0, 0, 0, 0, 0),
(998, 'shareshare', 1, 'vasquezd', 'Becca', 'group_invite', 'invited you to a group', '2019-03-07 13:57:36', '0', ',—Û¶ps.php?group_id=MA==', 335, 0, 0, 0, 0, 0),
(1000, 'shareshare', 1, 'vasquezd', 'Kristen', 'group_invite', 'invited you to a group', '2019-03-08 15:55:40', '0', '@?Û¶ps.php?group_id=MA==', 336, 0, 0, 0, 0, 0),
(1001, 'shareshare', 1, 'vasquezd', 'Becca', 'group_invite', 'invited you to a group', '2019-03-08 15:55:40', '0', '@?Û¶ps.php?group_id=MA==', 336, 0, 0, 0, 0, 0),
(1004, 'shareshare', 1, 'vasquezd', 'Kristen', 'group_discussion', 'added to a group discussion ', '2019-03-25 13:15:35', 'groups_discussion.php?group_id=MzIx', 'groups_discussion.php?group_id=MzIx', 321, 0, 0, 12, 0, 0),
(1005, 'shareshare', 1, 'matt', 'Kristen', 'group_discussion', 'added to a group discussion ', '2019-04-06 15:46:01', 'groups_discussion.php?group_id=MzIx', 'groups_discussion.php?group_id=MzIx', 321, 0, 0, 9, 0, 0),
(1009, 'shareshare', 1, 'vasquezd', 'Kristen', 'group_invite', 'invited you to a group', '2019-04-06 15:29:00', '0', 'DûÒ¶ps.php?group_id=MA==', 337, 0, 0, 0, 0, 0),
(1010, 'shareshare', 1, 'vasquezd', 'Becca', 'group_invite', 'invited you to a group', '2019-04-06 15:29:00', '0', 'DûÒ¶ps.php?group_id=MA==', 337, 0, 0, 0, 0, 0),
(1012, 'shareshare', 1, 'sarah', 'vasquezd', 'group_invite', 'invited you to a group', '2019-05-03 16:06:03', '0', 'xÉÑ¶ps.php?group_id=MA==', 338, 0, 0, 0, 0, 0),
(1014, 'shareshare', 1, 'vasquezd', 'Kristen', 'group_invite', 'invited you to join a group', '2019-05-06 15:29:23', '#', '#', 321, 0, 0, 1, 0, 0),
(1015, 'shareshare', 1, 'vasquezd', 'Becca', 'group_invite', 'invited you to join a group', '2019-05-06 15:29:23', '#', '#', 321, 0, 0, 1, 0, 0),
(1016, 'shareshare', 1, 'vasquezd', 'Sarah', 'group_invite', 'invited you to join a group', '2019-05-06 15:29:23', '#', '#', 321, 0, 0, 1, 0, 0),
(1019, 'shareshare', 1, 'vasquezd', 'matt', 'new_post_text', 'made a comment ', '2019-05-22 16:45:58', 'posts.php?group_id=MzIx', 'posts.php?group_id=MzIx', 321, 0, 0, 1, 0, 0),
(1020, 'shareshare', 1, 'vasquezd', 'matt', 'new_post_video', 'shared a video', '2019-05-22 16:46:03', 'posts.php?group_id=MzIx', 'posts.php?group_id=MzIx', 321, 0, 0, 1, 0, 0);

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

--
-- Dumping data for table `pending_email`
--


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
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=761 ;

--
-- Dumping data for table `pending_requests`
--

INSERT INTO `pending_requests` (`primary_id`, `master_site`, `request_type`, `request_type_text`, `request_is_pending`, `sent_by`, `sent_to`, `request_key`, `sent_to_email`, `friend_id`, `group_id`, `list_id`, `updated`, `created`) VALUES
(733, '', 'friend', 'Wants to be Friends', 0, 'vasquezd', 'matt', 'vasquezdmatt', '', 0, 0, 0, '2019-02-19 14:06:21', '0000-00-00 00:00:00'),
(734, '', 'friend', 'Wants to be Friends', 1, 'vasquezd', 'brian', 'vasquezdbrian', '', 0, 0, 0, '2019-02-19 14:06:22', '0000-00-00 00:00:00'),
(735, '', 'friend', 'Wants to be Friends', 0, 'vasquezd', 'Kristen', 'vasquezdKristen', '', 0, 0, 0, '2019-02-19 14:06:23', '0000-00-00 00:00:00'),
(736, '', 'friend', 'Wants to be Friends', 1, 'vasquezd', 'Aimee', 'vasquezdAimee', '', 0, 0, 0, '2019-02-19 14:06:25', '0000-00-00 00:00:00'),
(737, '', 'friend', 'Wants to be Friends', 0, 'vasquezd', 'Becca', 'vasquezdBecca', '', 0, 0, 0, '2019-02-19 14:06:31', '0000-00-00 00:00:00'),
(738, '', 'friend', 'Wants to be Friends', 0, 'vasquezd', 'Sarah', 'vasquezdSarah', '', 0, 0, 0, '2019-02-19 14:06:31', '0000-00-00 00:00:00'),
(739, '', 'group_invite', 'Invited you to a Group', 0, 'vasquezd', 'Kristen', '', '', 0, 322, 0, '2019-03-04 14:11:04', '2019-03-04 14:11:04'),
(740, '', 'group_invite', 'Invited you to a Group', 0, 'vasquezd', 'Becca', '', '', 0, 322, 0, '2019-03-04 14:23:10', '2019-03-04 14:23:10'),
(741, 'shareshare', 'new_group', 'New Group Invite', 0, 'vasquezd', 'matt', '', '', 0, 333, 0, '2019-03-07 13:56:36', '2019-03-07 13:56:36'),
(742, 'shareshare', 'new_group', 'New Group Invite', 0, 'vasquezd', 'Kristen', '', '', 0, 333, 0, '2019-03-07 13:56:36', '2019-03-07 13:56:36'),
(743, 'shareshare', 'new_group', 'New Group Invite', 0, 'vasquezd', 'Becca', '', '', 0, 333, 0, '2019-03-07 13:56:36', '2019-03-07 13:56:36'),
(744, 'shareshare', 'new_group', 'New Group Invite', 0, 'vasquezd', 'matt', '', '', 0, 334, 0, '2019-03-07 13:56:37', '2019-03-07 13:56:37'),
(745, 'shareshare', 'new_group', 'New Group Invite', 0, 'vasquezd', 'Kristen', '', '', 0, 334, 0, '2019-03-07 13:56:37', '2019-03-07 13:56:37'),
(746, 'shareshare', 'new_group', 'New Group Invite', 0, 'vasquezd', 'Becca', '', '', 0, 334, 0, '2019-03-07 13:56:37', '2019-03-07 13:56:37'),
(747, 'shareshare', 'new_group', 'New Group Invite', 0, 'vasquezd', 'matt', '', '', 0, 335, 0, '2019-03-07 13:57:36', '2019-03-07 13:57:36'),
(748, 'shareshare', 'new_group', 'New Group Invite', 0, 'vasquezd', 'Kristen', '', '', 0, 335, 0, '2019-03-07 13:57:36', '2019-03-07 13:57:36'),
(749, 'shareshare', 'new_group', 'New Group Invite', 0, 'vasquezd', 'Becca', '', '', 0, 335, 0, '2019-03-07 13:57:36', '2019-03-07 13:57:36'),
(750, 'shareshare', 'new_group', 'New Group Invite', 0, 'vasquezd', 'matt', '', '', 0, 336, 0, '2019-03-08 15:55:40', '2019-03-08 15:55:40'),
(751, 'shareshare', 'new_group', 'New Group Invite', 0, 'vasquezd', 'Kristen', '', '', 0, 336, 0, '2019-03-08 15:55:40', '2019-03-08 15:55:40'),
(752, 'shareshare', 'new_group', 'New Group Invite', 0, 'vasquezd', 'Becca', '', '', 0, 336, 0, '2019-03-08 15:55:40', '2019-03-08 15:55:40'),
(753, 'shareshare', 'new_group', 'New Group Invite', 0, 'vasquezd', 'matt', '', '', 0, 337, 0, '2019-04-06 15:29:00', '2019-04-06 15:29:00'),
(754, 'shareshare', 'new_group', 'New Group Invite', 0, 'vasquezd', 'Kristen', '', '', 0, 337, 0, '2019-04-06 15:29:00', '2019-04-06 15:29:00'),
(755, 'shareshare', 'new_group', 'New Group Invite', 0, 'vasquezd', 'Becca', '', '', 0, 337, 0, '2019-04-06 15:29:00', '2019-04-06 15:29:00'),
(756, 'shareshare', 'new_group', 'New Group Invite', 1, 'sarah', 'vasquezd', '', '', 0, 338, 0, '2019-05-03 16:06:03', '2019-05-03 16:06:03'),
(757, '', 'group_invite', 'Invited you to a Group', 0, 'vasquezd', 'matt', '', '', 0, 321, 0, '2019-05-03 16:26:35', '2019-05-03 16:26:35'),
(758, '', 'group_invite', 'Invited you to a Group', 1, 'vasquezd', 'Kristen', '', '', 0, 321, 0, '2019-05-06 15:29:23', '2019-05-06 15:29:23'),
(759, '', 'group_invite', 'Invited you to a Group', 1, 'vasquezd', 'Becca', '', '', 0, 321, 0, '2019-05-06 15:29:23', '2019-05-06 15:29:23'),
(760, '', 'group_invite', 'Invited you to a Group', 1, 'vasquezd', 'Sarah', '', '', 0, 321, 0, '2019-05-06 15:29:23', '2019-05-06 15:29:23');

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
  `comment_seen` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `master_site`, `post_type`, `post_status`, `parent`, `group_id`, `list_id`, `post_from`, `post_to`, `post_caption`, `post_url`, `post_url_caption`, `video_code`, `image_url`, `file_url`, `file_name`, `file_name_server`, `article_title`, `article_text`, `contains_file`, `unique_id`, `purchased`, `purchased_by`, `password_email`, `password_notes`, `comment_seen`, `updated`, `created`) VALUES
(97, 'shareshare', 'discussion', 1, 0, 321, 0, 'Vasquezd', '321', 'hi david', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2019-05-08 14:46:32', '0000-00-00 00:00:00'),
(98, 'shareshare', 'discussion', 1, 0, 321, 0, 'Vasquezd', '321', 'comment 2\n', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2019-05-08 14:46:59', '0000-00-00 00:00:00'),
(99, 'shareshare', 'discussion', 1, 0, 321, 0, 'Vasquezd', '321', 'comment 3', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2019-05-08 14:47:04', '0000-00-00 00:00:00'),
(100, 'shareshare', 'discussion', 1, 0, 321, 0, 'Vasquezd', '321', 'comment 4!', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2019-05-08 15:00:23', '2019-05-08 15:00:23'),
(101, 'shareshare', 'discussion', 1, 0, 321, 0, 'Vasquezd', '321', 'comment 5!', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2019-05-08 15:03:31', '2019-05-08 15:03:31'),
(102, 'shareshare', 'text', 1, 0, 321, 0, 'vasquezd', '321', 'hi', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2019-05-22 16:45:58', '0000-00-00 00:00:00'),
(103, 'shareshare', 'video', 1, 0, 321, 0, 'vasquezd', '321', '', 'https://www.youtube.com/watch?v=dh7WPfmlzBA', '', 'dh7WPfmlzBA', '', '', '', '', '', '', 0, '', 0, '', '', '', '0000-00-00 00:00:00', '2019-05-22 16:46:03', '2019-05-22 16:46:03');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `posts_fights`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `post_bias`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `post_likes`
--


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
  `post_deadline` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_progress` int(11) NOT NULL,
  `post_priority` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `post_tags`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `post_votes`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_analytics`
--

CREATE TABLE IF NOT EXISTS `user_analytics` (
  `analytics_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `last_visit` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total_visits` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `icon_id` varchar(255) NOT NULL,
  `last_click` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_clicks` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`analytics_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=355 ;

--
-- Dumping data for table `user_analytics`
--

INSERT INTO `user_analytics` (`analytics_id`, `user_name`, `page_url`, `last_visit`, `total_visits`, `group_id`, `icon_id`, `last_click`, `total_clicks`, `user_id`) VALUES
(351, 'vasquezd', 'groups.php', '2018-02-01 16:19:18', 17, 0, '', '2018-04-02 16:23:16', 0, 0),
(352, 'vasquezd', '', '0000-00-00 00:00:00', 0, 0, 'js-activity-group-icon', '2018-02-22 15:34:05', 4, 0),
(353, 'vasquezd', '', '0000-00-00 00:00:00', 0, 0, 'js-notification-header-seen', '2018-02-22 15:34:04', 4, 0),
(354, 'Vasquezd', 'group_posts.php', '2018-03-27 14:20:28', 11, 330, '', '2018-03-27 14:24:41', 0, 0);

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
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_logout` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_total` int(11) NOT NULL,
  `account_deleted` int(11) NOT NULL,
  `password_reset_key` varchar(255) NOT NULL,
  `password_reset_sent` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
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
(1, 'vasquezd', 'vasquezd@onid.orst.edu', 1494015793, 'c3be883dd5822f892141e642962084d6be47c2bf', '2019-05-24 14:22:12', '2017-12-01 23:46:09', 889, 0, 'A2XMVdcf3SNCMpkIJQqxbnSOfPcGIHul', '2017-05-05 20:28:32', 0, '1'),
(2, 'matt', '', 1448946249, 'de85ef10d2853b10978ac6c8e0c37c354d3b6969', '2019-05-24 14:58:47', '2017-11-08 23:53:13', 113, 0, '', '0000-00-00 00:00:00', 0, ''),
(3, 'brian', '', 1448946380, 'ace622215c315ce82bfd153b63c7faeb218a17da', '2017-05-19 00:05:25', '2017-05-19 00:06:50', 10, 0, '', '0000-00-00 00:00:00', 0, ''),
(4, 'Kristen', '', 1448946380, 'e3ae7af8145e258b854728fc9cebe6c8891ee2a5', '2019-05-03 16:43:26', '2017-11-08 23:54:16', 12, 0, '', '0000-00-00 00:00:00', 0, ''),
(5, 'Aimee', '', 1448946380, '33f916c66f61bbf37a12105c8bb3e0fc8ea75fd6', '2017-10-19 21:38:11', '2016-11-05 21:11:01', 16, 0, '', '0000-00-00 00:00:00', 0, ''),
(6, 'Becca', '', 1448946503, 'ba342a034cc175fb24a1c3d59d190da0c31f0106', '2019-05-03 16:44:18', '2017-11-08 23:53:45', 26, 0, '', '0000-00-00 00:00:00', 0, ''),
(7, 'Sarah', '', 1448946503, '378d32da508020f682a238053fec6f307e0aa30a', '2019-05-03 15:29:15', '2017-07-24 23:26:11', 5, 0, '', '0000-00-00 00:00:00', 0, ''),
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
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_profile_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_profile_id`, `user_id`, `user_name`, `email`, `image_name`, `first_name`, `last_name`, `root_folder`, `biography`, `university`, `post_view`, `updated`, `created`) VALUES
(46, 1, 'vasquezd', 'Vasquezd@onid.orst.edu', '150715371311_1.jpg', 'David', 'Vasquez', 'Vasquezd', 'My Biography', 'Oregon State ', 'large', '2016-04-03 21:33:50', '2014-08-21 18:00:05'),
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
