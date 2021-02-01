-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2017 at 12:06 AM
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
(46, 186, 0, 0, 'This hobbit was a very well-to-do hobbit, and his name was Baggins. \n								The Bagginses had lived in the neighbourhood of The Hill for time out of mind, \n								and people considered them very respectable, not only because most of them were rich, \n								but also because they never had any adventures or did anything unexpected: \n								you could tell what a Baggins would say on any question without the bother of asking him. \n								This is a story of how a Baggins had an adventure, found himself doing and saying things \n								altogether unexpected. He may have lost the neighbours'' respect, but he gained-well, \n								you will see whether he gained anything in the end. ', 'vasquezd', 'vasquezd', 0, 1, '2017-02-17 00:17:56', '2016-07-08 22:37:27'),
(47, 186, 0, 0, 'This was bad grammar of course, but that is how beavers talk when they are excited; I mean, in Narnia--in our world they usually don''t talk at all. ', 'vasquezd', 'vasquezd', 0, 1, '2017-02-17 00:18:00', '2016-07-08 22:37:32'),
(48, 186, 0, 0, 'It is as hard to explain how this sunlit land was different from the old Narnia as it would be to tell you how the fruits of that country taste. Perhaps you will get some idea of it if you think like this. You may have been in a room in which there was a window that looked out on a lovely bay of the sea or a green valley that wound away among mountains. And in the wall of that room opposite to the window there may have been a looking-glass. And as you turned away from the window you suddenly caught sight of that sea or that valley, all over again, in the looking glass. And the sea in the mirror, or the valley in the mirror, were in one sense just the same as the real ones: yet at the same time they were somehow different - deeper, more wonderful, more like places in a story: in a story you have never heard but very much want to know. The difference between the old Narnia and the new Narnia was like that. The new one was a deeper country: every rock and flower and blade of grass looked as if it meant more.” ', 'vasquezd', 'vasquezd', 0, 1, '2017-02-17 00:18:02', '2016-07-08 22:37:38');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=137 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=221 ;

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
(201, 'vasquezd', 1, 'aimee', 5, 'vasquezdaimee', '2016-10-29 21:58:36'),
(202, 'aimee', 5, 'vasquezd', 1, 'aimeevasquezd', '2016-10-29 21:58:36'),
(203, 'newgroup', 41, 'vasquezd', 1, '411', '2017-01-05 23:42:56'),
(204, 'vasquezd', 1, 'newgroup', 41, '141', '2017-01-05 23:42:56'),
(205, 'newgroupuser', 42, 'vasquezd', 1, '421', '2017-01-05 23:43:04'),
(206, 'vasquezd', 1, 'newgroupuser', 42, '142', '2017-01-05 23:43:04'),
(207, 'newgroupuser', 43, 'vasquezd', 1, '431', '2017-01-05 23:47:59'),
(208, 'vasquezd', 1, 'newgroupuser', 43, '143', '2017-01-05 23:47:59'),
(209, 'newgroupuser2', 44, 'vasquezd', 1, '441', '2017-01-05 23:48:26'),
(210, 'vasquezd', 1, 'newgroupuser2', 44, '144', '2017-01-05 23:48:26'),
(211, 'newgroupuser3', 45, 'vasquezd', 1, '451', '2017-01-05 23:48:42'),
(212, 'vasquezd', 1, 'newgroupuser3', 45, '145', '2017-01-05 23:48:42'),
(213, 'newgroupuser4', 46, 'vasquezd', 1, '461', '2017-01-05 23:51:28'),
(214, 'vasquezd', 1, 'newgroupuser4', 46, '146', '2017-01-05 23:51:28'),
(215, 'newgroupuser2', 49, 'vasquezd', 1, '491', '2017-01-05 23:59:01'),
(216, 'vasquezd', 1, 'newgroupuser2', 49, '149', '2017-01-05 23:59:01'),
(217, 'newlistuser3', 53, 'vasquezd', 1, '531', '2017-01-06 00:19:33'),
(218, 'vasquezd', 1, 'newlistuser3', 53, '153', '2017-01-06 00:19:33'),
(219, 'newlistusertest', 54, 'vasquezd', 1, '541', '2017-01-06 00:23:54'),
(220, 'vasquezd', 1, 'newlistusertest', 54, '154', '2017-01-06 00:23:54');

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
  `group_users` int(11) NOT NULL,
  `group_folders` int(11) NOT NULL,
  `group_messages` int(11) NOT NULL,
  `group_key` varchar(255) NOT NULL,
  `updated` timestamp NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=184 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_type`, `group_parent`, `created_by`, `group_name`, `group_image`, `group_users`, `group_folders`, `group_messages`, `group_key`, `updated`, `created`) VALUES
(174, '', 0, 'vasquezd', 'My other Group', '', 174, 174, 174, '0.26788000 1483656489586ecd29416689.04739344', '0000-00-00 00:00:00', '2017-01-05 22:48:09'),
(175, '', 0, 'vasquezd', 'Oh my other group', '', 175, 175, 175, '0.03837300 1484264175587812ef095e54.50091353', '0000-00-00 00:00:00', '2017-01-12 23:36:15'),
(177, 'new_group', 0, 'vasquezd', 'vasquezd''s Group', '', 177, 177, 177, '0.32759100 14850457025883ffc64ffa78.05012953', '0000-00-00 00:00:00', '2017-01-22 00:41:42'),
(183, 'new_wall', 0, 'vasquezd', 'vasquezd''s Group', '', 183, 183, 183, '0.39337300 1485650413588d39ed6009d6.29204162', '0000-00-00 00:00:00', '2017-01-29 00:40:13');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `group_users`
--

CREATE TABLE IF NOT EXISTS `group_users` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `active_member` int(11) NOT NULL,
  `is_default_group` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL,
  PRIMARY KEY (`primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=452 ;

--
-- Dumping data for table `group_users`
--

INSERT INTO `group_users` (`primary_id`, `group_id`, `user_name`, `active_member`, `is_default_group`, `created`, `updated`) VALUES
(426, 174, 'kristen', 1, 0, '2017-01-05 22:48:09', '0000-00-00 00:00:00'),
(427, 174, 'vasquezd', 1, 0, '2017-01-05 22:48:09', '0000-00-00 00:00:00'),
(428, 174, 'Sarah', 0, 0, '2017-01-05 22:48:16', '0000-00-00 00:00:00'),
(429, 174, 'newgroupuser2', 0, 0, '2017-01-05 23:59:01', '0000-00-00 00:00:00'),
(430, 175, 'kristen', 1, 0, '2017-01-12 23:36:15', '0000-00-00 00:00:00'),
(431, 175, 'brian', 0, 0, '2017-01-12 23:36:15', '0000-00-00 00:00:00'),
(432, 175, 'Sarah', 0, 0, '2017-01-12 23:36:15', '0000-00-00 00:00:00'),
(433, 175, 'chris', 0, 0, '2017-01-12 23:36:15', '0000-00-00 00:00:00'),
(434, 175, 'aimee', 0, 0, '2017-01-12 23:36:15', '0000-00-00 00:00:00'),
(435, 175, 'vasquezd', 1, 0, '2017-01-12 23:36:15', '0000-00-00 00:00:00'),
(438, 175, 'vasquezd', 1, 0, '2017-01-12 23:36:15', '2017-01-12 23:58:37'),
(443, 177, 'kristen', 0, 0, '2017-01-22 00:41:42', '0000-00-00 00:00:00'),
(444, 177, 'sarah', 0, 0, '2017-01-22 00:41:42', '0000-00-00 00:00:00'),
(445, 177, 'vasquezd', 1, 0, '2017-01-22 00:41:42', '0000-00-00 00:00:00'),
(451, 183, 'vasquezd', 1, 1, '2017-01-29 00:40:13', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=409 ;

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
(408, 408, 'davdef', 41, 'own', 'davdef', 'davdef', 'first_list', 'Your First List ', 0, 'a00f5f67d14c5612cd4fa592033712c1', 1, 1, 0, 0, '2017-01-07 22:53:10', '2017-01-07 22:53:10');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=87 ;

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
(86, 408, 'davdef', 'own', 1, '2017-01-07 22:53:10', '0000-00-00 00:00:00');

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
  `project_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `from_logged_in_user` int(11) NOT NULL,
  `status_unseen` int(11) NOT NULL,
  `clicked` int(11) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `master_site`, `notification_from`, `notification_to`, `notification_time`, `notification_message`, `notification_type`, `full_link`, `link_url`, `group_id`, `project_id`, `list_id`, `from_logged_in_user`, `status_unseen`, `clicked`) VALUES
(63, 'wishlist', 'vasquezd', 'kristen', '2017-01-22 00:41:42', 'requested to be friends', '', '#', '#', 0, 0, 0, 0, 1, 0),
(64, 'wishlist', 'vasquezd', 'sarah', '2017-01-22 00:41:42', 'requested to be friends', '', '#', '#', 0, 0, 0, 0, 1, 0),
(65, 'wishlist', 'vasquezd', 'vasquezd', '2017-01-22 00:41:42', 'requested to be friends', '', '#', '#', 0, 0, 0, 1, 1, 0),
(66, 'wishlist', 'vasquezd', 'vasquezd', '2017-01-23 21:50:39', 'invited you to a group', '', '#', '#', 0, 0, 0, 1, 1, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=484 ;

--
-- Dumping data for table `pending_requests`
--

INSERT INTO `pending_requests` (`primary_id`, `request_type`, `request_type_name`, `sent_by`, `sent_to`, `request_key`, `sent_to_email`, `square_id`, `group_id`, `list_id`, `status`, `updated`, `created`) VALUES
(473, 'new_group', 'Wants to start a new group', 'vasquezd', 'kristen', '', '', 177, 177, 0, 1, '2017-01-22 00:41:42', '0000-00-00 00:00:00'),
(474, 'new_group', 'Wants to start a new group', 'vasquezd', 'sarah', '', '', 177, 177, 0, 1, '2017-01-22 00:41:42', '0000-00-00 00:00:00'),
(475, 'new_group', 'Wants to start a new group', 'vasquezd', 'vasquezd', '', '', 177, 177, 0, 1, '2017-01-22 00:41:42', '0000-00-00 00:00:00'),
(476, 'board', 'Wants to start a new group', 'vasquezd', 'vasquezd', '', '', 178, 178, 0, 1, '2017-01-23 21:48:42', '0000-00-00 00:00:00'),
(477, 'board', 'Wants to start a new group', 'vasquezd', 'vasquezd', '', '', 179, 179, 0, 1, '2017-01-23 21:50:39', '0000-00-00 00:00:00'),
(478, 'new_wall', 'Wants to start a new group', 'vasquezd', 'vasquezd', '', '', 178, 178, 0, 1, '2017-01-28 00:08:54', '0000-00-00 00:00:00'),
(479, 'new_wall', 'Wants to start a new group', 'vasquezd', 'vasquezd', '', '', 179, 179, 0, 1, '2017-01-28 00:09:07', '0000-00-00 00:00:00'),
(480, 'new_wall', 'Wants to start a new group', 'vasquezd', 'vasquezd', '', '', 180, 180, 0, 1, '2017-01-28 00:20:47', '0000-00-00 00:00:00'),
(481, 'new_wall', 'Wants to start a new group', 'vasquezd', 'vasquezd', '', '', 181, 181, 0, 1, '2017-01-28 00:26:23', '0000-00-00 00:00:00'),
(482, 'new_wall', 'Wants to start a new group', 'vasquezd', 'vasquezd', '', '', 182, 182, 0, 1, '2017-01-28 00:27:57', '0000-00-00 00:00:00'),
(483, 'new_wall', 'Wants to start a new group', 'vasquezd', 'vasquezd', '', '', 183, 183, 0, 1, '2017-01-29 00:40:13', '0000-00-00 00:00:00');

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
  `password_email` varchar(255) NOT NULL,
  `password_notes` text NOT NULL,
  `comment_seen` timestamp NOT NULL,
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=607 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_master_type`, `category`, `parent`, `list_id`, `post_from`, `post_to`, `post_type`, `post_caption`, `post_url`, `video_code`, `image_url`, `file_url`, `file_name`, `article_title`, `article_text`, `contains_file`, `unique_id`, `post_status`, `purchased`, `purchased_by`, `password_email`, `password_notes`, `comment_seen`, `updated`, `created`) VALUES
(551, 'shareshare', '', 0, 0, 'vasquezd', '114', 'link', 'link', 'https://www.youtube.com/watch?v=hFj5c5MozC0', '', 'youtube.png', '', '', 'Hammock - Tape Recorder - YouTube', '', 0, '', 1, 0, '', '', '', '0000-00-00 00:00:00', '2017-02-18 00:57:24', '2014-04-01 23:56:34'),
(552, 'shareshare', 'photo', 0, 0, 'vasquezd', 'vasquezd', 'comment', 'This hobbit was a very well-to-do hobbit, and his name was Baggins. \n								The Bagginses had lived in the neighbourhood of The Hill for time out of mind, \n								and people considered them very respectable, not only because most of them were rich, \n								but also because they never had any adventures or did anything unexpected: \n								you could tell what a Baggins would say on any question without the bother of asking him. \n								This is a story of how a Baggins had an adventure, found himself doing and saying things \n								altogether unexpected. He may have lost the neighbours'' respect, but he gained-well, \n								you will see whether he gained anything in the end. ', '', '', '1475186980Jellyfish.jpg', '1475186980Jellyfish.jpg', 'Jellyfish.jpg', '', '', 0, 'vasquezdvasquezd1475186975', 1, 0, '', '', '', '0000-00-00 00:00:00', '2017-02-18 00:54:09', '2013-01-18 00:28:40'),
(554, 'shareshare', 'photo', 0, 0, 'vasquezd', 'vasquezd', 'comment', 'It is as hard to explain how this sunlit land was different from the old Narnia as it would be to tell you how the fruits of that country taste. ', '', '', '1475186992Jellyfish.jpg', '1475186992Jellyfish.jpg', 'Jellyfish.jpg', '', '', 0, 'vasquezdvasquezd1475186975', 1, 0, '', '', '', '0000-00-00 00:00:00', '2017-02-17 00:52:40', '2017-01-04 23:09:52'),
(555, 'shareshare', 'photo', 0, 0, 'vasquezd', 'vasquezd', 'comment', 'just now', '', '', '1475186996Koala.jpg', '1475186996Koala.jpg', 'Koala.jpg', '', '', 0, 'vasquezdvasquezd1475186992', 1, 0, '', '', '', '0000-00-00 00:00:00', '2017-02-18 01:03:10', '2017-02-18 00:05:56'),
(556, 'shareshare', 'photo', 0, 0, 'vasquezd', '106', 'photo', '', '', '', '1475187013Lighthouse.jpg', '1475187013Lighthouse.jpg', 'Lighthouse.jpg', '', '', 0, 'vasquezd1061475187010', 1, 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-09-29 22:10:13'),
(557, 'shareshare', '', 0, 0, 'vasquezd', '106', 'file', '0', '', '', '', '1475187083Koala.jpg', 'Koala.jpg', '', '', 1, '', 1, 0, '', '', '', '0000-00-00 00:00:00', '2016-09-29 22:11:23', '2016-09-29 22:11:23'),
(558, 'shareshare', 'photo', 0, 0, 'vasquezd', 'matt', 'photo', '', '', '', '1475189112Hydrangeas.jpg', '1475189112Hydrangeas.jpg', 'Hydrangeas.jpg', '', '', 0, 'vasquezdmatt1475189108', 1, 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-09-29 22:45:12'),
(559, 'shareshare', 'photo', 0, 0, 'vasquezd', 'matt', 'photo', '', '', '', '1475189227Jellyfish.jpg', '1475189227Jellyfish.jpg', 'Jellyfish.jpg', '', '', 0, 'vasquezdmatt1475189220', 1, 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-09-29 22:47:07'),
(565, 'shareshare', 'photo', 0, 0, 'vasquezd', 'Kristen', 'photo', '', '', '', '1475190945Jellyfish.jpg', '1475190945Jellyfish.jpg', 'Jellyfish.jpg', '', '', 0, 'vasquezdKristen1475190939', 1, 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-09-29 23:15:45'),
(566, 'shareshare', '', 0, 0, 'vasquezd', 'brian', 'file', '0', '', '', '', '1475190962Koala.jpg', 'Koala.jpg', '', '', 1, '', 1, 0, '', '', '', '0000-00-00 00:00:00', '2016-09-29 23:16:02', '2016-09-29 23:16:02'),
(567, 'shareshare', '', 0, 0, 'vasquezd', 'brian', 'file', '0', '', '', '', '1475191015Jellyfish.jpg', 'Jellyfish.jpg', '', '', 1, '', 1, 0, '', '', '', '0000-00-00 00:00:00', '2016-09-29 23:16:55', '2016-09-29 23:16:55'),
(568, 'shareshare', 'photo', 0, 0, 'aimee', 'vasquezd', 'photo', '', '', '', '147535570514712214651467493208david__1_1.jpg', '147535570514712214651467493208david__1_1.jpg', '14712214651467493208david__1_1.jpg', '', '', 0, 'aimeevasquezd1475355691', 1, 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-01 21:01:45'),
(569, 'shareshare', 'photo', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '14753625391475276996david__1.jpg', '14753625391475276996david__1.jpg', '1475276996david__1.jpg', '', '', 0, 'vasquezdvasquezd1475362481', 1, 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-01 22:55:39'),
(570, 'shareshare', 'photo', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1475362544default.jpg', '1475362544default.jpg', 'default.jpg', '', '', 0, 'vasquezdvasquezd1475362539', 1, 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-01 22:55:44'),
(571, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=TmmxPwrmcWU', 'TmmxPwrmcWU', '', '', '', '', '', 0, '', 1, 0, '', '', '', '0000-00-00 00:00:00', '2016-10-01 23:10:17', '2016-10-01 23:10:17'),
(582, 'wishlist', 'photo', 0, 382, 'aimee', 'aimee', 'item', 'I like this a lot!', '#', '', '1477870486background_30.jpg', '1477870486background_30.jpg', 'background_30.jpg', 'Item Title', 'Hammock - Tape Recorder - YouTube', 0, 'vasquezdvasquezd1477870438', 1, 1, 'vasquezd', '', '', '0000-00-00 00:00:00', '2016-10-31 22:08:06', '2016-10-30 23:34:46'),
(583, 'wishlist', 'photo', 0, 382, 'vasquezd', 'vasquezd', 'item', 'I like this a lot!', '#', '', '1477870486background_30.jpg', '1477870486background_30.jpg', 'background_30.jpg', 'Item Title', 'Hammock - Tape Recorder - YouTube', 0, 'vasquezdvasquezd1477870438', 1, 0, '', '', '', '2016-10-30 23:41:33', '2016-10-31 21:35:05', '2016-10-30 23:34:46'),
(584, 'wishlist', 'photo', 0, 382, 'vasquezd', 'vasquezd', 'item', 'I like this a lot!', '#', '', '1477870486background_30.jpg', '1477870486background_30.jpg', 'background_30.jpg', 'Item Title', 'Hammock - Tape Recorder - YouTube', 0, 'vasquezdvasquezd1477870438', 1, 0, '', '', '', '2016-10-31 21:45:09', '2016-10-31 21:35:02', '2016-10-30 23:34:46'),
(585, 'wishlist', 'photo', 0, 0, 'vasquezd', 'vasquezd', 'item', 'IMAGE buy me koala ', '', '', '1478212849Koala.jpg', '1478212849Koala.jpg', 'Koala.jpg', '', '', 0, 'vasquezdvasquezd1478212819', 1, 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-11-03 22:40:49'),
(599, 'password', '', 0, 0, 'vasquezd', 'vasquezd', 'password', 'mypassword', 'Site Link: ', '', '', '', '', 'Site Name: ', 'Site Login User Name: ', 0, '', 0, 0, '', 'DlQ+6uAzqy6t7Z2J6VUxGX6VG3BUGddOaOAnA8rkqi6iTjSzEIz+exbiIWECCFWXs/Ak6vUj8R0kduxOjt8S3umBYRBt7eNMzfMQ+DxhqT5OxOniE9qwRmUDIjKpTQ6T', '3DayH+J2fPtZOwPVvSS4fN/gKc9rdhtl9zw+t5ZT3hwlnXE6sxzRjUZwGxX6iS70ItQzy4+qGu3VoZ3OU0cSrQ==', '0000-00-00 00:00:00', '2016-11-10 23:48:33', '2016-11-10 23:18:02'),
(600, 'password', '', 0, 0, 'vasquezd', 'vasquezd', 'password', 'qBltDXfxtkfkbcKuJ+XAqA+UOTSaI/3Qo71IjdVhbcx+4749QGrGOt0Hv/GhEgg69QCkKET6vtW9z0lSrt4hLA==', 'Site Link: ', '', '', '', '', 'o7jESXwf9D4L9xU60Z/Gupm0D8XNm2EnF/ujXANG4sR0qTv3cmZEXZn63Ck8DuiXKKQSZLubPGfXKlXvokhEtw==', 'obCR72Al9L4UiW61wLV1EI4Nm2Xrxcq+DEfdurRhTy4q7rbaI6CN1Z+7IcB1tBp2ddhSr3qZfQ2gs5Fc42QBIFl2vOi11n28YrbIilxgail2B6S7GiT6MEzxEYYk8eWn', 0, '', 1, 0, '', 'DlQ+6uAzqy6t7Z2J6VUxGX6VG3BUGddOaOAnA8rkqi6iTjSzEIz+exbiIWECCFWXs/Ak6vUj8R0kduxOjt8S3umBYRBt7eNMzfMQ+DxhqT5OxOniE9qwRmUDIjKpTQ6T', '4SmgaIuqqYGRvqsMA1sTTgEA2kwTBUq13k1oE5eicCPqDnWFdAUd8VgQVXevQ0h2YvTlq1x7WxZM3wd0NSSeXg==', '0000-00-00 00:00:00', '2016-11-10 23:27:40', '2016-11-10 23:27:40'),
(601, 'password', '', 0, 0, 'vasquezd', 'vasquezd', 'password', 'Password: ', 'Site Link: ', '', '', '', '', 'Site Name: ', 'Site Login User Name: ', 0, '', 0, 0, '', 'Email Address for Site ', 'Notes:', '0000-00-00 00:00:00', '2016-11-10 23:48:35', '2016-11-10 23:37:05'),
(602, 'password', '', 0, 0, 'vasquezd', 'vasquezd', 'password', 'test', 'test', '', '', '', '', 'google', 'test', 0, '', 0, 0, '', 'test', 'notes', '0000-00-00 00:00:00', '2016-11-10 23:48:31', '2016-11-10 23:48:21'),
(603, 'password', '', 0, 0, 'vasquezd', 'vasquezd', 'password', 'e', 'b', '', '', '', '', 'a', 'c', 0, '', 0, 0, '', 'd', 'f', '0000-00-00 00:00:00', '2016-11-11 00:09:03', '2016-11-10 23:49:06'),
(604, 'password', '', 0, 0, 'vasquezd', 'vasquezd', 'password', '0R9N2jOAs4LPxX18B93BmZvmJMYQ64a9i8gAmYF+lDQP9AnLDJwCeM4QUt/S1mgQ0faw7JQ9T2Exmdob6muZXw==', 'Link', '', '', '', '', '2EGb6jK6hO1p4UcAwASn5NnsHIUjO3ENskvaAfOrd9d6Vz96fWVCIB393tvPuOOA/SWH0mfDYxs++rZu0UGijA==', 'LiJOk9TDrYuDuIJZuRaITdkoo7vDJlZ2MqpE8Ql623Dm8lg96iRgbBfiu6MF/EwNk3IEqm0q1IcG1SSjlziD9w==', 0, '', 1, 0, '', 'lG8jUkEJD3UyQPUR5NL+0sN6E3/d2QiwVln8JKAFjHyx7TPNu/XzqNHS/5/E8+9mjhrYEvQdhJG6w5GnXuOG1g==', '3DayH+J2fPtZOwPVvSS4fN/gKc9rdhtl9zw+t5ZT3hwlnXE6sxzRjUZwGxX6iS70ItQzy4+qGu3VoZ3OU0cSrQ==', '0000-00-00 00:00:00', '2016-11-11 01:09:02', '2016-11-11 00:09:24'),
(605, 'password', '', 0, 0, 'vasquezd', 'vasquezd', 'password', 'qWTeM+6ppnCws+fEWkohzuttuB60NsLg8WN2VKTBhdPyWGwnSuEBH8DGxEjTlCregWLVqxgvJBaFMUdraTsIrw==', 'a', '', '', '', '', 'qWTeM+6ppnCws+fEWkohzuttuB60NsLg8WN2VKTBhdPyWGwnSuEBH8DGxEjTlCregWLVqxgvJBaFMUdraTsIrw==', 'qWTeM+6ppnCws+fEWkohzuttuB60NsLg8WN2VKTBhdPyWGwnSuEBH8DGxEjTlCregWLVqxgvJBaFMUdraTsIrw==', 0, '', 1, 0, '', 'qWTeM+6ppnCws+fEWkohzuttuB60NsLg8WN2VKTBhdPyWGwnSuEBH8DGxEjTlCregWLVqxgvJBaFMUdraTsIrw==', 'qWTeM+6ppnCws+fEWkohzuttuB60NsLg8WN2VKTBhdPyWGwnSuEBH8DGxEjTlCregWLVqxgvJBaFMUdraTsIrw==', '0000-00-00 00:00:00', '2016-11-11 00:15:55', '2016-11-11 00:15:55'),
(606, 'wishlist', 'photo', 0, 381, 'vasquezd', 'vasquezd', 'item', 'cz', '', '', '1480379442Koala.jpg', '1480379442Koala.jpg', 'Koala.jpg', '', '', 0, 'vasquezdvasquezd1480379428', 1, 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-11-29 00:30:42');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=216 ;

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
(206, 'group_wall.php', 122, '2016-10-24 22:36:24', 1, 'vasquezd', 0),
(207, 'group_wall.php', 126, '2016-10-26 20:25:22', 1, 'vasquezd', 0),
(208, 'group_wall.php', 163, '2016-12-15 23:33:12', 11, 'vasquezd', 0),
(209, 'group_discussion.php', 163, '2016-12-15 23:33:00', 0, 'vasquezd', 0),
(210, 'group_files.php', 163, '2016-12-15 23:33:07', 0, 'vasquezd', 0),
(211, 'group_wall.php', 169, '2017-01-05 22:42:40', 1, 'vasquezd', 0),
(212, 'group_wall.php', 164, '2017-01-05 22:48:03', 9, 'vasquezd', 0),
(213, 'group_wall.php', 174, '2017-02-04 00:08:32', 21, 'vasquezd', 0),
(214, 'group_files.php', 174, '2017-02-04 00:08:31', 3, 'vasquezd', 0),
(215, 'group_wall.php', 175, '2017-02-08 20:54:17', 1, 'vasquezd', 0);

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
  `password_reset_status` varchar(255) NOT NULL,
  UNIQUE KEY `user_id_2` (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_name_2` (`user_name`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `user_email`, `salt`, `password`, `last_login`, `last_logout`, `login_total`, `account_deleted`, `password_reset_key`, `password_reset_sent`, `password_reset_status`) VALUES
(1, 'vasquezd', 'vasquezd@onid.orst.edu', 1483838439, '935572da22957bf47095eb8b57a87cbf8cf52a97', '2017-03-09 22:26:40', '2017-02-13 21:08:48', 479, 0, 'YtkCSMpnwwQQEzJARxMQT9WY4TWqePAC', '2017-01-10 23:47:12', '0'),
(2, 'matt', '', 1448946249, 'de85ef10d2853b10978ac6c8e0c37c354d3b6969', '2016-09-28 23:33:27', '2016-09-28 23:33:37', 35, 0, '', '0000-00-00 00:00:00', ''),
(3, 'brian', '', 1448946380, 'ace622215c315ce82bfd153b63c7faeb218a17da', '2016-11-21 23:34:58', '2016-11-21 23:36:24', 8, 0, '', '0000-00-00 00:00:00', ''),
(4, 'Kristen', '', 1448946380, 'e3ae7af8145e258b854728fc9cebe6c8891ee2a5', '2016-09-04 22:04:40', '2016-09-04 22:05:52', 7, 0, '', '0000-00-00 00:00:00', ''),
(5, 'Aimee', '', 1448946380, '33f916c66f61bbf37a12105c8bb3e0fc8ea75fd6', '2016-11-05 21:10:34', '2016-11-05 21:11:01', 15, 0, '', '0000-00-00 00:00:00', ''),
(6, 'Becca', '', 1448946503, 'ba342a034cc175fb24a1c3d59d190da0c31f0106', '2016-09-26 21:55:51', '2016-09-26 22:08:49', 14, 0, '', '0000-00-00 00:00:00', ''),
(7, 'Sarah', '', 1448946503, '378d32da508020f682a238053fec6f307e0aa30a', '2016-08-27 22:07:51', '2016-08-27 22:08:01', 1, 0, '', '0000-00-00 00:00:00', ''),
(8, 'chris', '', 1448946380, '80c96f63d24bc38382aca981ed2e262c22582605', '2016-10-01 20:31:31', '2016-10-01 20:31:45', 1, 0, '', '0000-00-00 00:00:00', ''),
(9, 'pop', '', 1448946503, '851b0d429828f520537e2323a1c5f1cde21eee5d', '2015-12-01 05:31:10', '2015-12-01 05:31:10', 0, 0, '', '0000-00-00 00:00:00', ''),
(39, 'vasquezk', '', 1466107880, '6d7cb2a50e2fbaaa22735cc31d0a0df53e9afb30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', '0000-00-00 00:00:00', ''),
(40, 'newemail', '', 1483744569, '263ba39e9a38e17be6bd19e9498181250e7080b0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', '0000-00-00 00:00:00', ''),
(41, 'davdef', '', 1483829590, '738dd1659523e970e46b4709bfe484fcf6d9329b', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', '0000-00-00 00:00:00', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_profile_id`, `user_id`, `user_name`, `email`, `image_name`, `first_name`, `last_name`, `root_folder`, `biography`, `university`, `updated`, `created`) VALUES
(46, 1, 'vasquezd', 'Vasquezd@onid.orst.edu', '1475276996david__1.jpg', 'David', 'Vasquez', 'Vasquezd', '', 'Oregon State ', '2016-04-03 21:33:50', '2014-08-21 18:00:05'),
(47, 2, 'matt', 'vasquezm@shareshare.com', 'matt.jpg', 'Matt', 'Vasquez', '', 'This is matts page!', '', '2015-12-01 04:55:10', '0000-00-00 00:00:00'),
(48, 3, 'brian', 'vasquezb@shareshare.com', 'brian.jpg', 'Brian', 'Vasquez', '', 'this is brian''s page! ', '', '2016-04-09 21:02:59', '0000-00-00 00:00:00'),
(49, 4, 'Kristen', 'vasquezj@shareshare.com', 'david.jpg', 'Kristen', 'Vasquez', '', 'this is my page!', '', '2015-12-03 03:25:43', '0000-00-00 00:00:00'),
(50, 5, 'Aimee', 'Aimeeaileen@mac.com', '1449476920image.jpeg', 'Aimee', 'Vasquez', 'Vasquez', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-07 08:28:40', '0000-00-00 00:00:00'),
(51, 6, 'Becca', '', 'Becca.jpg', 'Becca', 'Vasquez', 'vasquezma', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2016-04-09 21:03:19', '0000-00-00 00:00:00'),
(52, 7, 'Sarah', '', 'david.jpg', 'Sarah', 'Vasquez', 'Vasquezbb', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-01 04:57:23', '0000-00-00 00:00:00'),
(53, 8, 'chris', 'californiachristophe@gmail.com', '1450307134Screen.jpg', 'Chris', 'Vasquez', 'Vasquezdk', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-16 23:05:34', '0000-00-00 00:00:00'),
(54, 9, 'pop', '', 'david.jpg', 'Pop', 'Vasquez', 'vasquezbas', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n	Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n	them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n	making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '2015-12-01 04:57:59', '0000-00-00 00:00:00'),
(55, 39, 'vasquezk', 'kristen@onid.orst.edu', 'david.jpg', 'kristen', 'vasquez', 'vasquezk', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2016-06-16 20:11:20'),
(56, 40, 'newemail', 'vasquezd@onid.orst.edu', 'david.jpg', 'david', 'va', 'newemail', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2017-01-06 23:16:09'),
(57, 41, 'davdef', 'vasquezd@onid.orst.edu', 'david.jpg', 'aef', 'afe ', 'davdef', 'They are (or were) a little people, about half our height, and smaller than the bearded dwarves. \r\n		Hobbits have no beards. There is little or no magic about them except the ordinary everyday sort which helps \r\n		them to disappear quietly and quickly when large stupid folk like you and me come blundering along, \r\n		making a noise like elephants which they can hear a mile off <- Not your bio change it here', '', '0000-00-00 00:00:00', '2017-01-07 22:53:10');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

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
(11, 'newemail', 40, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 'davdef', 41, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
