-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2015 at 06:37 AM
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
  `comment` text NOT NULL,
  `comment_from` varchar(255) NOT NULL,
  `comment_to` varchar(255) NOT NULL,
  `likes` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `comment`, `comment_from`, `comment_to`, `likes`, `updated`, `created`) VALUES
(2, 145, 'Ok this is so cool! ', 'vasquezb', '0', 0, '2015-08-12 22:21:28', '0000-00-00 00:00:00'),
(3, 145, 'This is such a cool picture! ', 'vasquezm', '0', 0, '2015-08-12 22:52:35', '0000-00-00 00:00:00'),
(4, 145, 'I like this photo a lot! ', 'vasquezd', '', 0, '2015-08-12 22:28:53', '0000-00-00 00:00:00'),
(5, 154, 'I really like this video! ', 'vasquezb', '', 0, '2015-08-15 21:48:48', '0000-00-00 00:00:00'),
(7, 120, 'Oh cool! ', 'vasquezm', '', 0, '2015-08-15 21:48:51', '0000-00-00 00:00:00'),
(8, 119, 'This is really good! ', 'vasquezd', '', 0, '2015-08-15 21:48:15', '0000-00-00 00:00:00'),
(42, 154, 'me too!', 'vasquezd', '', 0, '2015-08-15 22:22:48', '0000-00-00 00:00:00'),
(43, 154, 'one', 'vasquezd', '', 0, '2015-08-15 22:23:28', '0000-00-00 00:00:00'),
(44, 154, 'three', 'vasquezd', '', 0, '2015-08-15 22:25:15', '0000-00-00 00:00:00'),
(45, 154, 'four', 'vasquezd', '', 0, '2015-08-15 22:25:18', '0000-00-00 00:00:00'),
(46, 154, 'what caused that? ', 'vasquezd', '', 0, '2015-08-15 22:25:27', '0000-00-00 00:00:00'),
(47, 154, 'hiya!', 'vasquezd', '', 0, '2015-08-15 22:25:34', '0000-00-00 00:00:00'),
(48, 152, 'comment! ', 'vasquezd', '', 0, '2015-08-15 22:25:46', '0000-00-00 00:00:00'),
(49, 187, 'Hi, what do you think of this?! ', 'vasquezd', '', 0, '2015-09-03 21:29:02', '0000-00-00 00:00:00'),
(50, 187, 'Perty rad dude\n', 'vasquezd', '', 0, '2015-09-03 21:30:27', '0000-00-00 00:00:00'),
(51, 196, 'well ok man', 'vasquezd', '', 0, '2015-09-06 20:52:43', '0000-00-00 00:00:00'),
(52, 199, 'Roads go ever ever on,\r\nOver rock and under tree,\r\nBy caves where never sun has shone,\r\nBy streams that never find the sea;\r\nOver snow by winter sown,\r\nAnd through the merry flowers of June,\r\nOver grass and over stone,\r\nAnd under mountains in the moon.', 'vasquezd', '', 0, '2015-09-06 20:52:43', '0000-00-00 00:00:00'),
(53, 196, 'Moonlight drowns out all but the brightest stars', 'vasquezd', '', 0, '2015-09-06 20:52:43', '0000-00-00 00:00:00'),
(54, 196, 'Home is behind, the world ahead, and there are many paths to tread through shadows to the edge of night, until the stars are all alight', 'vasquezd', '', 0, '2015-09-06 20:52:43', '0000-00-00 00:00:00'),
(55, 159, 'First comment!\n', 'vasquezd', '', 0, '2015-10-13 02:30:51', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `square_id` int(11) NOT NULL,
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
  `recycle_status` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `file_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_last_modified` timestamp NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=189 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `square_id`, `post_id`, `parent`, `is_folder`, `folder_name`, `file_name`, `file_type`, `file_name_server`, `file_path_server`, `file_image`, `file_path`, `user_id`, `user_name`, `file_status`, `recycle_status`, `unique_id`, `file_created`, `file_last_modified`) VALUES
(8, 27, 199, 2, 0, '', '1439088995Solwayfirthspaceman.jpg', 'jpg', '14402813421439088995Solwayfirthspaceman_1.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//14402813421439088995Solwayfirthspaceman_1.jpg', '14402813421439088995Solwayfirthspaceman_1.jpg', '0-1-3', 1, 'vasquezd', 1, 0, '', '2015-08-22 22:09:02', '0000-00-00 00:00:00'),
(9, 27, 199, 14, 0, '', '03.jpg', 'jpg', '144028135003.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//144028135003.jpg', '144028135003.jpg', '0-1-3', 1, 'vasquezd', 1, 0, '', '2015-08-22 22:09:10', '0000-00-00 00:00:00'),
(10, 27, 199, 11, 0, '', 'Jellyfish.jpg', 'jpg', '1440281359Jellyfish.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440281359Jellyfish.jpg', '1440281359Jellyfish.jpg', '0-1-3', 1, 'vasquezd', 1, 0, '', '2015-08-22 22:09:19', '0000-00-00 00:00:00'),
(11, 17, 0, 0, 1, 'David''s Videos ', 'folder.png', 'jpg', 'folder.png', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440281367Lighthouse.jpg', '1440281367Lighthouse.jpg', '0-1-3', 1, 'vasquezd', 1, 1, '', '2015-08-22 22:09:27', '2015-08-25 21:33:49'),
(13, 17, 0, 0, 1, 'David Stuff', 'folder.png', 'jpg', 'folder.png', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440281367Lighthouse.jpg', 'video.jpg', '0-1-3', 1, 'vasquezd', 1, 1, '', '2015-08-22 22:09:27', '2015-08-25 21:33:44'),
(14, 17, 0, 13, 1, 'Music Videos ', 'folder.png', 'jpg', 'folder.png', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440281367Lighthouse.jpg', 'music_videos.jpg', '0-1-3', 1, 'vasquezd', 1, 0, '', '2015-08-22 22:09:27', '2015-08-24 03:38:18'),
(20, 17, 0, 11, 0, '', 'david.jpg', '.jpg', 'test', 'test', 'test', '0-1-3', 1, 'vasquezd', 0, 1, '', '2015-08-24 04:15:54', '2015-08-26 20:58:34'),
(21, 17, 0, 0, 0, '', 'sharing me', 'PNG', '1440389804sharesquare.PNG', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440389804sharesquare.PNG', '1440389804sharesquare.PNG', '0-1-3', 1, 'vasquezd', 1, 1, '', '2015-08-24 04:16:44', '2015-08-25 21:27:53'),
(29, 27, 199, 13, 0, '', 'parent.jpg', 'jpg', '1440457762parent_1.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440457762parent_1.jpg', '1440457762parent_1.jpg', '0-', 1, 'vasquezd', 1, 0, '', '2015-08-24 23:09:22', '0000-00-00 00:00:00'),
(30, 17, 0, 20, 0, '', '144039061911.jpg', 'jpg', '1440457898144039061911_1.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440457898144039061911_1.jpg', '1440457898144039061911_1.jpg', '0-', 1, 'vasquezd', 1, 0, '', '2015-08-24 23:11:38', '0000-00-00 00:00:00'),
(31, 17, 0, 13, 0, '', 'Solway Firth Spaceman_1.jpg', 'jpg', '144045790314402813421439088995Solwayfirthspaceman_1_1.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//144045790314402813421439088995Solwayfirthspaceman_1_1.jpg', '144045790314402813421439088995Solwayfirthspaceman_1_1.jpg', '0-', 1, 'vasquezd', 1, 0, '', '2015-08-24 23:11:43', '0000-00-00 00:00:00'),
(32, 17, 0, 11, 0, '', 'trees .jpg', 'jpg', '1440457918144028135003_1.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440457918144028135003_1.jpg', '1440457918144028135003_1.jpg', '0-', 1, 'vasquezd', 1, 0, '', '2015-08-24 23:11:58', '0000-00-00 00:00:00'),
(33, 17, 0, 0, 0, 'Night Mountains ', 'Mountains at Night 2.jpg', 'jpg', '1440458040144038988701_1.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440458040144038988701_1.jpg', '1440458040144038988701_1.jpg', '0-', 1, 'vasquezd', 0, 1, '', '2015-08-24 23:14:00', '2015-09-06 23:36:35'),
(34, 17, 0, 0, 0, '', 'Jelly Fish.jpg', 'jpg', '1440474531Jellyfish.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1440474531Jellyfish.jpg', '1440474531Jellyfish.jpg', '0-', 1, 'vasquezd', 1, 0, '', '2015-08-25 03:48:51', '2015-08-25 21:23:52'),
(35, 17, 0, 0, 0, '', 'Sunlit mountains.jpg', 'jpg', '14405622141439695452background_9.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//14405622141439695452background_9.jpg', '14405622141439695452background_9.jpg', '0-', 1, 'vasquezd', 0, 1, '', '2015-08-26 04:10:14', '2015-09-06 23:36:31'),
(123, 17, 0, 0, 1, 'Photos to Share', 'folder.png', '', 'folder.png', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads/folder.png', 'folder.png', '---------0-', 1, 'vasquezd', 1, 0, '1440630609530', '2015-08-26 23:10:09', '0000-00-00 00:00:00'),
(139, 27, 27, 0, 0, '', 'background_4.jpg', 'jpg', '1441581445background_4.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1441581445background_4.jpg', '1441581445background_4.jpg', '0', 1, 'vasquezd', 1, 0, '', '2015-09-06 23:17:25', '0000-00-00 00:00:00'),
(140, 27, 27, 0, 0, '', 'background_4.jpg', 'jpg', '1441581458background_4.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1441581458background_4.jpg', '1441581458background_4.jpg', '0', 1, 'vasquezd', 1, 0, '', '2015-09-06 23:17:38', '0000-00-00 00:00:00'),
(141, 27, 27, 0, 0, '', 'background_4.jpg', 'jpg', '1441581461background_4.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1441581461background_4.jpg', '1441581461background_4.jpg', '0', 1, 'vasquezd', 0, 1, '', '2015-09-06 23:17:41', '2015-09-06 23:28:17'),
(161, 27, 0, 199, 0, '', 'koala flight VI.jpg', 'jpg', '1441599982koala_flight_VI.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1441599982koala_flight_VI.jpg', '1441599982koala_flight_VI.jpg', '0-', 1, 'vasquezd', 1, 0, '', '2015-09-07 04:26:22', '0000-00-00 00:00:00'),
(162, 27, 198, 0, 0, '', 'koala flight.jpg', 'jpg', '1441600083koala_flight.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1441600083koala_flight.jpg', '1441600083koala_flight.jpg', '0-', 1, 'vasquezd', 0, 1, '', '2015-09-07 04:28:03', '2015-09-07 04:46:14'),
(163, 27, 196, 0, 0, '', 'Penguins.jpg', 'jpg', '1441600394Penguins.jpg', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1441600394Penguins.jpg', '1441600394Penguins.jpg', '0-', 1, 'vasquezd', 0, 1, '', '2015-09-07 04:33:14', '2015-09-07 04:50:32'),
(164, 27, 198, 0, 0, '', 'Resume- David Vasquez.docx', 'docx', '1441600460Resume-_David_Vasquez.docx', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1441600460Resume-_David_Vasquez.docx', 'word.png', '0-', 1, 'vasquezd', 1, 0, '', '2015-09-07 04:34:20', '0000-00-00 00:00:00'),
(165, 27, 196, 0, 0, '', 'Cover Letter- Vasquez.doc', 'doc', '1441600469Cover_Letter-_Vasquez.doc', 'C:/wamp/www/shareshare/site_files/user_files/user_uploads//1441600469Cover_Letter-_Vasquez.doc', 'word.png', '0-', 1, 'vasquezd', 1, 0, '', '2015-09-07 04:34:29', '0000-00-00 00:00:00'),
(166, 0, 202, 0, 0, '', 'background_26.jpg', '', '1444703698background_26.jpg', '', '', '', 0, 'vasquezdvasquezd1444703487', 1, 0, '', '2015-10-13 02:34:58', '0000-00-00 00:00:00'),
(167, 0, 203, 0, 0, '', 'background_png.png', '', '1444703967background_png.png', '', '', '', 0, 'vasquezdvasquezd1444703957', 1, 0, '', '2015-10-13 02:39:27', '0000-00-00 00:00:00'),
(168, 0, 203, 0, 0, '', 'background_png.png', '', '1444704179background_png.png', '', '', '', 0, 'vasquezdvasquezd1444703957', 1, 0, '', '2015-10-13 02:42:59', '0000-00-00 00:00:00'),
(169, 0, 203, 0, 0, '', 'background_png.png', '', '1444704330background_png.png', '', '', '', 0, 'vasquezdvasquezd1444703957', 1, 0, '', '2015-10-13 02:45:30', '0000-00-00 00:00:00'),
(170, 0, 204, 0, 0, '', 'anime.png', '', '1444704533anime.png', '', '', '', 0, 'vasquezdvasquezd1444704522', 1, 0, '', '2015-10-13 02:48:53', '0000-00-00 00:00:00'),
(171, 0, 204, 0, 0, '', 'anime.png', '', '1444704613anime.png', '', '', '', 0, 'vasquezdvasquezd1444704522', 1, 0, '', '2015-10-13 02:50:13', '0000-00-00 00:00:00'),
(172, 0, 204, 0, 0, '', 'anime.png', '', '1444704705anime.png', '', '', '', 0, 'vasquezdvasquezd1444704522', 1, 0, '', '2015-10-13 02:51:45', '0000-00-00 00:00:00'),
(173, 0, 204, 0, 0, '', 'anime.png', '', '1444704801anime.png', '', '', '', 0, 'vasquezdvasquezd1444704522', 1, 0, '', '2015-10-13 02:53:21', '0000-00-00 00:00:00'),
(174, 0, 204, 0, 0, '', 'anime.png', '', '1444704907anime.png', '', '', '', 0, 'vasquezdvasquezd1444704522', 1, 0, '', '2015-10-13 02:55:07', '0000-00-00 00:00:00'),
(175, 0, 204, 0, 0, '', 'anime.png', '', '1444704925anime.png', '', '', '', 0, 'vasquezdvasquezd1444704522', 1, 0, '', '2015-10-13 02:55:25', '0000-00-00 00:00:00'),
(176, 0, 204, 0, 0, '', 'anime.png', '', '1444704975anime.png', '', '', '', 0, 'vasquezdvasquezd1444704522', 1, 0, '', '2015-10-13 02:56:15', '0000-00-00 00:00:00'),
(177, 0, 204, 0, 0, '', 'anime.png', '', '1444705066anime.png', '', '', '', 0, 'vasquezdvasquezd1444704522', 1, 0, '', '2015-10-13 02:57:46', '0000-00-00 00:00:00'),
(178, 0, 204, 0, 0, '', 'anime.png', '', '1444706677anime.png', '', '', '', 0, 'vasquezdvasquezd1444704522', 1, 0, '', '2015-10-13 03:24:37', '0000-00-00 00:00:00'),
(179, 0, 205, 0, 0, '', 'background_26.jpg', '', '1444706699background_26.jpg', '', '', '', 0, 'vasquezdvasquezd1444706677', 1, 0, '', '2015-10-13 03:24:59', '0000-00-00 00:00:00'),
(180, 0, 205, 0, 0, '', 'background_26.jpg', '', '1444707336background_26.jpg', '', '', '', 0, 'vasquezdvasquezd1444706677', 1, 0, '', '2015-10-13 03:35:36', '0000-00-00 00:00:00'),
(181, 0, 205, 0, 0, '', 'background_26.jpg', '', '1444707354background_26.jpg', '', '', '', 0, 'vasquezdvasquezd1444706677', 1, 0, '', '2015-10-13 03:35:54', '0000-00-00 00:00:00'),
(182, 0, 205, 0, 0, '', 'background_26.jpg', '', '1444707369background_26.jpg', '', '', '', 0, 'vasquezdvasquezd1444706677', 1, 0, '', '2015-10-13 03:36:09', '0000-00-00 00:00:00'),
(183, 0, 205, 0, 0, '', 'background_26.jpg', '', '1444707382background_26.jpg', '', '', '', 0, 'vasquezdvasquezd1444706677', 1, 0, '', '2015-10-13 03:36:22', '0000-00-00 00:00:00'),
(184, 0, 205, 0, 0, '', 'background_26.jpg', '', '1444707394background_26.jpg', '', '', '', 0, 'vasquezdvasquezd1444706677', 1, 0, '', '2015-10-13 03:36:34', '0000-00-00 00:00:00'),
(185, 0, 205, 0, 0, '', 'background_26.jpg', '', '1444707408background_26.jpg', '', '', '', 0, 'vasquezdvasquezd1444706677', 1, 0, '', '2015-10-13 03:36:48', '0000-00-00 00:00:00'),
(186, 0, 205, 0, 0, '', 'background_26.jpg', '', '1444707416background_26.jpg', '', '', '', 0, 'vasquezdvasquezd1444706677', 1, 0, '', '2015-10-13 03:36:56', '0000-00-00 00:00:00'),
(187, 0, 205, 0, 0, '', 'background_26.jpg', '', '1444707434background_26.jpg', '', '', '', 0, 'vasquezdvasquezd1444706677', 1, 0, '', '2015-10-13 03:37:14', '0000-00-00 00:00:00'),
(188, 0, 205, 0, 0, '', 'background_26.jpg', '', '1444707444background_26.jpg', '', '', '', 0, 'vasquezdvasquezd1444706677', 1, 0, '', '2015-10-13 03:37:24', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE IF NOT EXISTS `folders` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `square_id` int(11) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`file_id`, `square_id`, `user_id`, `user_name`, `folder_name_long`, `folder_name_system`, `image_name`, `folder_root`, `folder_path`, `folder_created`, `folder_last_modified`, `folder_location`, `folder_name`) VALUES
(1, 0, 0, 'shareshare', '', '', '', '', '', '2015-07-30 03:44:13', '0000-00-00 00:00:00', '', 'shareshare'),
(2, 0, 0, 'jamesman', '', '', '', '', '', '2015-07-30 04:56:36', '0000-00-00 00:00:00', '', 'jamesman'),
(3, 0, 0, 'shareshare4', '', '', '', '', '', '2015-07-30 22:46:57', '0000-00-00 00:00:00', '', 'shareshare4'),
(4, 0, 0, 'bandybaggins', '', '', '', '', '', '2015-09-01 04:01:51', '0000-00-00 00:00:00', '', 'bandybaggins'),
(5, 0, 0, 'bandybaggins2', '', '', '', '', '', '2015-09-01 04:07:41', '0000-00-00 00:00:00', '', 'bandybaggins2'),
(6, 0, 0, 'bandybaggins2', '', '', '', '', '', '2015-09-01 04:08:18', '0000-00-00 00:00:00', '', 'bandybaggins2'),
(7, 0, 0, 'bandybaggins3', '', '', '', '', '', '2015-09-01 04:08:37', '0000-00-00 00:00:00', '', 'bandybaggins3'),
(8, 0, 0, 'bandybaggins4', '', '', '', '', '', '2015-09-01 04:10:10', '0000-00-00 00:00:00', '', 'bandybaggins4'),
(9, 0, 0, 'bandybaggins5', '', '', '', '', '', '2015-09-01 04:11:20', '0000-00-00 00:00:00', '', 'bandybaggins5');

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
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`friends_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friends_id`, `user_name`, `user_id`, `friend_user_name`, `friend_id`, `created`) VALUES
(1, 'vasquezd', 1, 'vasquezm', 2, '2015-05-04 23:47:04'),
(2, 'vasquezm', 2, 'vasquezd', 1, '2015-05-04 23:47:04'),
(3, 'vasquezd', 1, 'vasquezb', 3, '2015-05-04 23:47:23'),
(4, 'vasquezb', 3, 'vasquezd', 1, '2015-05-04 23:47:23'),
(7, 'vasquezm', 2, 'vasquezk', 4, '2015-05-04 23:47:23'),
(8, 'vasquezk', 4, 'vasquezm', 2, '2015-05-04 23:47:23'),
(9, 'vasquezm', 2, 'vasquezb', 3, '2015-05-04 23:47:23'),
(10, 'vasquezb', 3, 'vasquezm', 2, '2015-05-04 23:47:23'),
(11, 'vasquezd', 1, 'vasquezj', 4, '2015-05-04 23:47:23'),
(12, 'vasquezj', 4, 'vasquezd', 1, '2015-05-04 23:47:23');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`link_id`, `folder_name`, `parent`, `is_folder`, `link_url`, `link_title`, `user_name`, `link_from`, `link_image`, `link_favicon`, `link_type`, `caption`, `tag_id`, `likes`, `unique_id`, `link_status`, `recycle_status`, `square_id`, `created`, `updated`) VALUES
(1, 'UViC- Oceanography', 0, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '5566922844c9c', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(2, '', 14, 0, 'http://www.colingoldblatt.net/researchgroup', 'Research Group - Colin Goldblatt', 'vasquezd', '', 'colingoldblatt.png', 'colingoldblatt.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(3, '', 14, 0, 'http://baumlab.weebly.com/team.html', 'Team - The Baum Lab @ UVic', 'vasquezd', '', 'weebly.png', 'weebly.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(4, 'UVIC- Oceanography III', 0, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '5566922927064', 0, 1, 0, '2015-09-03 03:51:47', '2015-09-03 03:51:47'),
(5, '', 14, 0, 'http://mmi.oregonstate.edu/people', 'People | Oregon State University Marine Mammal Institute', 'vasquezd', '', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(6, 'May', 1, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '5566922966436', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(7, '', 4, 0, 'http://housing.uvic.ca/ads/index.php?a=5&b=185', 'Student Listings', 'vasquezd', '', 'uvic.png', 'uvic.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(8, '', 65, 0, 'https://github.com/explore', 'Explore Â· GitHub', 'vasquezd', '', 'github.png', 'github.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 04:39:48', '0000-00-00 00:00:00'),
(9, '', 65, 0, 'https://anil3a.wordpress.com/2011/08/26/resetting-adobe-cs5-suite-trial-period-by-yourself/', 'Adobe', 'vasquezd', '', 'wordpress.png', 'wordpress.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 04:40:37', '0000-00-00 00:00:00'),
(10, '', 11, 0, 'http://famguardian.org/subjects/Politics/Articles/Liberals.htm', '60 Hard Truths About &quot;Liberals&quot;', 'vasquezd', '', 'famguardian.png', 'famguardian.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(11, '', 13, 0, 'http://www.theatlantic.com/business/archive/2014/06/a-dangerous-question-does-internet-advertising-work-at-all/372704/', 'A Dangerous Question: Does Internet Advertising Work at All? - The Atlantic', 'vasquezd', '', 'theatlantic.png', 'theatlantic.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(14, 'Shared With Me', 0, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '5566922ec88a2', 1, 0, 0, '2015-09-03 03:51:30', '2015-09-03 03:49:48'),
(18, '', 6, 0, 'http://fusedmachines.com/', 'Fused Machines', 'vasquezd', '', 'fusedmachines.png', 'fusedmachines.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(20, '', 6, 0, 'http://www.theignorantfishermen.com/2009/06/few-quotes-from-george-washington.html', 'The Ignorant Fishermen Blog: Christian Quotes from President George Washington', 'vasquezd', '', 'theignorantfishermen.png', 'theignorantfishermen.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(21, '', 13, 0, 'http://www.codemiles.com/finished-projects/java-chess-t618.html', 'Java Chess Projects Codes', 'vasquezd', '', 'codemiles.png', 'codemiles.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(23, '', 16, 0, 'http://ceoas.oregonstate.edu/profile/fisk/', 'Directory of People | College of Earth, Ocean, and Atmospheric Sciences | Oregon State University', 'vasquezd', '', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(24, '', 1, 0, 'http://oregonstate.edu/ua/ncs/archives/2006/mar/study-martian-meteorite-reveals-markings-similar-bacteria-etched-rocks-earth', 'title not found', 'vasquezd', '', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(25, 'Biology', 1, 1, '', '', 'vasquezd', '', 'folder.png', '', '', '', 0, 0, '556692335b081', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(26, '', 14, 0, 'https://developer.mozilla.org/en-US/Add-ons/SDK', 'Mozilla ', 'vasquezd', '', 'mozilla.png', 'mozilla.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(27, '', 25, 0, 'http://spph.ubc.ca/programs-and-students/graduate-degree-programs/phd/program-details/', 'Program Details | School of Population and Public Health (SPPH)', 'vasquezd', '', 'spph.png', 'spph.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(28, '', 25, 0, 'http://blakemasters.com/peter-thiels-cs183-startup', 'Notes Essaysâ€”Peter Thiel&#8217;s CS183: Startupâ€”Stanford, Spring 2012', 'vasquezd', '', 'blakemasters.png', 'blakemasters.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(29, '', 25, 0, 'http://ceoas.oregonstate.edu/mrm/industry/', 'Marine Industry | Marine Resource Management | College of Earth, Ocean, and Atmospheric Sciences | Oregon State University', 'vasquezd', '', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(54, 'Wall Posts', 1, 0, 'https://www.yahoo.com/', 'Yahoo', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(55, 'Wall Posts', 0, 0, 'http://digg.com/', 'Digg - What the Internet is talking about right now', 'vasquezd', 'vasquezd', 'digg.png', 'digg.png', 'shared', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(56, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=aeJf-18lF84', 'Pinback - Loro - YouTube', 'vasquezd', 'vasquezb', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 1, 0, 0, '2015-09-03 03:51:30', '2015-09-02 23:04:27'),
(57, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=aeJf-18lF84', 'Pinback - Loro ', 'vasquezd', 'vasquezb', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(58, 'Wall Posts', 0, 0, 'https://www.tumblr.com/dashboard', 'Log in | Tumblr', 'vasquezd', 'vasquezd', 'tumblr.png', 'tumblr.png', 'shared', '', 0, 0, '', 1, 0, 0, '2015-09-02 23:00:37', '0000-00-00 00:00:00'),
(59, '', 0, 0, 'https://www.youtube.com/watch?v=0P-CtmHRiNc', 'Pinback - True North ', 'vasquezd', '', 'youtube.png', 'youtube.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 03:51:30', '2015-09-03 03:01:02'),
(60, '', 0, 0, 'http://stackoverflow.com/questions/18490026/refresh-reload-the-content-in-div-using-jquery-ajax', 'javascript - Refresh/reload the content in Div using jquery/ajax - Stack Overflow', 'vasquezd', '', 'stackoverflow.png', 'stackoverflow.png', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 03:51:30', '2015-09-02 23:04:34'),
(61, 'Hello ', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 04:28:35', '0000-00-00 00:00:00'),
(62, 'Newest ', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 04:28:59', '0000-00-00 00:00:00'),
(63, 'new!', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 04:35:19', '0000-00-00 00:00:00'),
(64, 'david', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 04:39:20', '0000-00-00 00:00:00'),
(65, 'Newest ', 0, 1, '', '', 'vasquezd', '', '', '', '', '', 0, 0, '', 1, 0, 0, '2015-09-03 04:39:43', '0000-00-00 00:00:00'),
(66, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Flight Facilities - Clair De Lune feat. Christine Hoberg - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 03:35:30', '0000-00-00 00:00:00'),
(67, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Flight Facilities - Clair De Lune feat. Christine Hoberg - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 03:35:31', '0000-00-00 00:00:00'),
(68, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Flight Facilities - Clair De Lune feat. Christine Hoberg - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 03:36:06', '0000-00-00 00:00:00'),
(69, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Flight Facilities - Clair De Lune feat. Christine Hoberg - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 03:36:45', '0000-00-00 00:00:00'),
(70, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Flight Facilities - Clair De Lune feat. Christine Hoberg - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 03:37:12', '0000-00-00 00:00:00'),
(71, 'Wall Posts', 0, 0, 'https://www.yahoo.com/', 'Yahoo', 'vasquezd', 'vasquezd', 'yahoo.png', 'yahoo.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 03:49:29', '0000-00-00 00:00:00'),
(72, 'Wall Posts', 0, 0, 'http://purecss.io/', 'Pure', 'vasquezd', 'vasquezd', 'purecss.png', 'purecss.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 03:52:41', '0000-00-00 00:00:00'),
(73, 'Wall Posts', 0, 0, 'http://purecss.io/', 'Pure', 'vasquezd', 'vasquezd', 'purecss.png', 'purecss.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 04:00:48', '0000-00-00 00:00:00'),
(74, 'Wall Posts', 0, 0, 'http://purecss.io/', 'Pure', 'vasquezd', 'vasquezd', 'purecss.png', 'purecss.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 04:00:55', '0000-00-00 00:00:00'),
(75, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Flight Facilities - Clair De Lune feat. Christine Hoberg - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 04:02:08', '0000-00-00 00:00:00'),
(76, 'Wall Posts', 0, 0, 'http://purecss.io/', 'Pure', 'vasquezd', 'vasquezd', 'purecss.png', 'purecss.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 04:11:59', '0000-00-00 00:00:00'),
(77, 'Wall Posts', 0, 0, 'https://www.facebook.com/?_rdr=p', 'title not found', 'vasquezd', 'vasquezd', 'facebook.png', 'facebook.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 04:12:33', '0000-00-00 00:00:00'),
(78, 'Wall Posts', 0, 0, 'http://oregonstate.edu/', 'Oregon State University', 'vasquezd', 'vasquezd', 'oregonstate.png', 'oregonstate.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 04:13:38', '0000-00-00 00:00:00'),
(79, 'Wall Posts', 0, 0, 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Flight Facilities - Clair De Lune feat. Christine Hoberg - YouTube', 'vasquezd', 'vasquezd', 'youtube.png', 'youtube.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-13 04:28:21', '0000-00-00 00:00:00'),
(80, 'Wall Posts', 0, 0, 'https://www.google.com/?gws_rd=ssl', 'Google', 'vasquezd', 'vasquezd', 'google.png', 'google.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-15 03:06:08', '0000-00-00 00:00:00'),
(81, 'Wall Posts', 0, 0, 'https://www.facebook.com/?_rdr=p', 'title not found', 'vasquezd', 'vasquezd', 'facebook.png', 'facebook.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-15 03:21:30', '0000-00-00 00:00:00'),
(82, 'Wall Posts', 0, 0, 'https://www.facebook.com/groups/287454203999/', 'title not found', 'vasquezd', 'vasquezd', 'facebook.png', 'facebook.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-15 03:24:15', '0000-00-00 00:00:00'),
(83, 'wall_posts', 0, 0, 'http://www.wsj.com/articles/philippine-gold-treasures-of-forgotten-kingdoms-review-1444856780?ru=yahoo?mod=yahoo_itp', 'title not found', 'vasquezd', 'vasquezd', 'wsj.png', 'wsj.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-15 03:36:42', '0000-00-00 00:00:00'),
(84, 'Wall Posts', 0, 0, 'http://pastebin.com/raw.php?i=NcL5BLwg', 'title not found', 'vasquezd', 'vasquezd', 'pastebin.png', 'pastebin.png', 'shared', '', 0, 0, '', 0, 0, 0, '2015-10-15 04:03:42', '0000-00-00 00:00:00'),
(85, '', 0, 0, 'http://pastebin.com/raw.php?i=NcL5BLwg', 'Pastebin Mime Types', 'vasquezd', '', 'pastebin.png', 'pastebin.png', '', '', 0, 0, '', 1, 0, 0, '2015-10-15 04:34:13', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `message_comments`
--

CREATE TABLE IF NOT EXISTS `message_comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_from` varchar(255) NOT NULL,
  `comment_to` varchar(255) NOT NULL,
  `likes` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `message_posts`
--

CREATE TABLE IF NOT EXISTS `message_posts` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `square_id` int(11) NOT NULL,
  `post_from` varchar(255) NOT NULL,
  `post_to` varchar(2083) NOT NULL,
  `post_type` varchar(255) NOT NULL,
  `post_caption` text NOT NULL,
  `post_url` varchar(255) NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_text` text NOT NULL,
  `contains_file` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `post_status` int(11) NOT NULL,
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=200 ;

--
-- Dumping data for table `message_posts`
--

INSERT INTO `message_posts` (`post_id`, `square_id`, `post_from`, `post_to`, `post_type`, `post_caption`, `post_url`, `video_code`, `image_url`, `article_title`, `article_text`, `contains_file`, `unique_id`, `post_status`, `updated`, `created`) VALUES
(196, 27, 'vasquezd', 'vasquezd', 'text', 'david My broad interest in oceanography, biology and the artic is a fascination to gain a better understanding of our world. I am interested in the biogeochemical cycles in the ocean and the mechanisms that can be used to understand them. ', '', '', '', '', '', 0, '', 1, '2015-09-06 04:42:38', '2015-09-06 04:16:37'),
(198, 27, 'vasquezm', 'vasquezd', 'text', 'david My broad interest in oceanography, biology and the artic is a fascination to gain a better understanding of our world. I am interested in the biogeochemical cycles in the ocean and the mechanisms that can be used to understand them. ', '', '', '', '', '', 0, '', 1, '2015-09-06 21:20:06', '2015-09-06 04:16:37'),
(199, 27, 'vasquezd', 'vasquezd', 'text', 'We should do cool stuuff!', '', '', '', '', '', 0, '', 1, '2015-09-06 21:37:43', '2015-09-06 21:37:43');

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
  `status` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL,
  PRIMARY KEY (`primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `pending_requests`
--

INSERT INTO `pending_requests` (`primary_id`, `request_type`, `request_type_name`, `sent_by`, `sent_to`, `request_key`, `sent_to_email`, `square_id`, `status`, `updated`, `created`) VALUES
(6, 'friend', '', 'vasquezb', 'vasquezd', 'vasquezdvasquezb', '', 0, 1, '2015-07-28 23:15:34', '0000-00-00 00:00:00'),
(14, 'new_square', 'Wants to add you to a square', 'vasquezd', 'vasquezj', '', '', 28, 0, '2015-08-28 22:41:18', '0000-00-00 00:00:00'),
(15, 'new_square', 'Wants to add you to a square', 'vasquezd', 'vasquezj', '', '', 27, 1, '2015-08-29 20:59:57', '0000-00-00 00:00:00'),
(16, 'new_square', 'Wants to add you to a square', 'vasquezd', 'vasquezb', '', '', 28, 1, '2015-08-29 23:18:30', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=236 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_from`, `post_to`, `post_type`, `post_caption`, `post_url`, `video_code`, `image_url`, `file_url`, `file_name`, `article_title`, `article_text`, `contains_file`, `unique_id`, `post_status`, `updated`, `created`) VALUES
(119, 'Vasquezd', 'Vasquezd', 'video', '', 'https://www.youtube.com/embed/qDRF5iUSXn0', 'qDRF5iUSXn0', '', '', '', '', '', 0, 'VasquezdVasquezd1437429924', 0, '2015-10-13 02:34:14', '2015-07-21 07:05:35'),
(144, 'Vasquezd', 'Vasquezd', 'video', 'I love this song! ', 'https://www.youtube.com/watch?v=DD8zGTpyM9w', 'DD8zGTpyM9w', '', '', '', '', '', 0, '', 1, '2015-08-14 19:46:25', '2015-07-22 07:53:19'),
(149, 'vasquezb', 'vasquezd', 'video', 'Helios!', 'https://www.youtube.com/watch?v=WTbVGPSBO6Y', 'WTbVGPSBO6Y', '', '', '', '', '', 0, '', 1, '2015-08-14 21:54:15', '2015-08-03 06:43:23'),
(150, 'vasquezd', 'vasquezd', 'video', '', 'https://www.youtube.com/watch?v=4EyZJXGVRO0', '4EyZJXGVRO0', '', '', '', '', '', 0, '', 1, '2015-08-13 04:40:15', '2015-08-03 07:00:26'),
(151, 'vasquezd', 'vasquezm', 'video', 'What do you think of this song? ', 'https://www.youtube.com/watch?v=WTbVGPSBO6Y', 'WTbVGPSBO6Y', '', '', '', '', '', 0, '', 1, '2015-08-11 20:44:43', '2015-08-03 11:38:18'),
(152, 'vasquezd', 'vasquezd', 'video', 'New Hammock Song', 'https://www.youtube.com/watch?v=jBrWe6Foq1A', 'jBrWe6Foq1A', '', '', '', '', '', 0, '', 0, '2015-10-13 02:34:06', '2015-08-03 11:46:37'),
(153, 'vasquezd', 'vasquezb', 'video', 'Hi Brian! What do you think of this video? I really love hammock!', 'https://www.youtube.com/watch?v=iBmDZgdJaxE', 'iBmDZgdJaxE', '', '', '', '', '', 0, '', 1, '2015-08-11 20:44:48', '2015-08-03 11:50:14'),
(154, 'vasquezb', 'vasquezd', 'video', 'So Good!', 'https://www.youtube.com/watch?v=MhGH9aoLz3M', 'MhGH9aoLz3M', '', '', '', '', '', 0, '', 0, '2015-10-13 02:34:04', '2015-08-03 11:51:46'),
(155, 'vasquezd', 'vasquezb', 'video', 'This is such a good song!!', 'https://www.youtube.com/watch?v=KjIWriDTptY', 'KjIWriDTptY', '', '', '', '', '', 0, '', 1, '2015-08-11 20:44:52', '2015-08-03 12:19:45'),
(156, 'vasquezd', 'vasquezb', 'video', 'What do you think of this? ', 'https://www.youtube.com/watch?v=ldXdymGCShg', 'ldXdymGCShg', '', '', '', '', '', 0, '', 1, '2015-08-16 03:27:49', '2015-08-16 11:59:28'),
(158, 'vasquezd', 'vasquezm', 'video', 'This is so good!', 'https://www.youtube.com/watch?v=vQymMt4jN6k', 'vQymMt4jN6k', '', '', '', '', '', 0, '', 1, '2015-08-16 03:18:04', '2015-08-16 12:13:41'),
(159, 'vasquezd', 'vasquezd', 'video', 'new~!', 'https://www.youtube.com/watch?v=vQymMt4jN6k', 'vQymMt4jN6k', '', '', '', '', '', 0, '', 0, '2015-10-13 02:33:59', '2015-08-16 12:14:01'),
(160, 'vasquezd', 'vasquezb', 'video', 'check this out', 'https://www.youtube.com/watch?v=ldXdymGCShg', 'ldXdymGCShg', '', '', '', '', '', 0, '', 1, '2015-08-16 03:19:56', '2015-08-16 12:19:56'),
(176, 'vasquezd', 'vasquezb', 'video', 'I really like this song! What do you think of it? ', 'https://www.youtube.com/watch?v=aeJf-18lF84', 'aeJf-18lF84', '', '', '', '', '', 0, '', 0, '2015-08-21 05:13:13', '2015-08-21 14:12:53'),
(177, 'vasquezd', 'vasquezb', 'video', 'I really like this song! What do you think of it? ', 'https://www.youtube.com/watch?v=aeJf-18lF84', 'aeJf-18lF84', '', '', '', '', '', 0, '', 1, '2015-08-21 05:12:55', '2015-08-21 14:12:55'),
(204, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1444706677anime.png', '', '', '', '', 0, 'vasquezdvasquezd1444704522', 0, '2015-10-13 03:24:37', '2015-10-13 11:48:53'),
(205, 'vasquezd', 'vasquezd', 'photo', 'I like this!', '', '', '1444707444background_26.jpg', '', '', '', '', 0, 'vasquezdvasquezd1444706677', 1, '2015-10-13 03:37:24', '2015-10-13 12:24:58'),
(206, 'vasquezd', 'vasquezd', 'video', 'This song is so good!', 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Jcu1AHaTchM', '', '', '', '', '', 0, '', 0, '2015-10-13 03:35:45', '2015-10-13 12:35:18'),
(207, 'vasquezd', 'vasquezd', 'video', 'This song is so good!', 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Jcu1AHaTchM', '', '', '', '', '', 0, '', 0, '2015-10-13 03:36:28', '2015-10-13 12:35:28'),
(208, 'vasquezd', 'vasquezd', 'video', 'same', 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Jcu1AHaTchM', '', '', '', '', '', 0, '', 0, '2015-10-13 03:36:19', '2015-10-13 12:36:05'),
(209, 'vasquezd', 'vasquezd', 'video', 'I like this!', 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Jcu1AHaTchM', '', '', '', '', '', 0, '', 0, '2015-10-13 03:39:54', '2015-10-13 12:36:45'),
(210, 'vasquezd', 'vasquezd', 'video', 'and this ', 'https://www.youtube.com/watch?v=Jcu1AHaTchM', 'Jcu1AHaTchM', '', '', '', '', '', 0, '', 0, '2015-10-13 04:00:04', '2015-10-13 12:37:11'),
(230, 'vasquezd', 'vasquezd', 'article', '', 'http://www.wsj.com/articles/philippine-gold-treasures-of-forgotten-kingdoms-review-1444856780?ru=yahoo?mod=yahoo_itp', '', '561f1f408721b758615178.jpg', '', '', 'title not found', 'Hazy history does little to detract from the beauty of this glittering trove.', 0, '', 0, '2015-10-15 03:42:28', '2015-10-15 12:36:42'),
(231, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1444881319Koala.jpg', 'Koala.jpg', '', '', 1, '', 1, '0000-00-00 00:00:00', '2015-10-15 03:55:19'),
(232, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1444881351Ga_Work-_Article_1.docx', 'Ga Work- Article 1.docx', '', '', 1, '', 1, '0000-00-00 00:00:00', '2015-10-15 03:55:51'),
(233, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1444881585Ga_Work-_Article_1.docx', 'Ga Work- Article 1.docx', '', '', 1, '', 1, '0000-00-00 00:00:00', '2015-10-15 03:59:45'),
(234, 'vasquezd', 'vasquezd', 'file', '', '', '', '', '1444881681ec1002_ch1-4.pdf', 'ec1002_ch1-4.pdf', '', '', 1, '', 1, '0000-00-00 00:00:00', '2015-10-15 04:01:21'),
(235, 'vasquezd', 'vasquezd', 'link', '', 'http://pastebin.com/raw.php?i=NcL5BLwg', '', 'pastebin.png', '', '', 'title not found', '', 0, '', 1, '2015-10-15 04:03:42', '2015-10-15 04:03:42');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`post_like_id`, `post_id`, `liked_by`, `liked_by_name`, `time_stamp`) VALUES
(2, 1, 2, 'bilbo', '2015-04-17 03:01:04'),
(3, 175, 2, 'vasquezb', '2015-08-17 03:24:47'),
(4, 175, 2, 'vasquezm', '2015-08-17 03:23:13'),
(5, 174, 1, 'vasquezd', '2015-08-17 04:43:53'),
(6, 171, 1, 'vasquezd', '2015-08-17 04:44:20'),
(7, 169, 1, 'vasquezd', '2015-08-17 04:44:36'),
(9, 167, 1, 'vasquezd', '2015-08-17 04:46:08'),
(17, 164, 1, 'vasquezd', '2015-08-21 05:12:18'),
(18, 163, 1, 'vasquezd', '2015-08-21 05:12:20'),
(19, 162, 1, 'vasquezd', '2015-08-21 05:12:22'),
(20, 177, 1, 'vasquezd', '2015-08-21 05:13:18'),
(23, 175, 1, 'vasquezd', '2015-08-24 04:36:00'),
(24, 158, 1, 'vasquezd', '2015-08-28 23:16:16'),
(25, 151, 1, 'vasquezd', '2015-08-28 23:16:21'),
(26, 191, 1, 'vasquezd', '2015-09-03 21:15:28'),
(27, 191, 1, 'vasquezd', '2015-09-03 21:15:29'),
(28, 159, 1, 'vasquezd', '2015-10-13 02:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `squares`
--

CREATE TABLE IF NOT EXISTS `squares` (
  `square_id` int(11) NOT NULL AUTO_INCREMENT,
  `square_key` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `square_name` varchar(255) NOT NULL,
  `square_image` varchar(255) NOT NULL,
  `square_users` int(11) NOT NULL,
  `square_folders` int(11) NOT NULL,
  `square_messages` int(11) NOT NULL,
  `updated` timestamp NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`square_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `squares`
--

INSERT INTO `squares` (`square_id`, `square_key`, `created_by`, `square_name`, `square_image`, `square_users`, `square_folders`, `square_messages`, `updated`, `created`) VALUES
(17, '0.33365200 1409889736540935c8517548.01852381', 'vasquezd', 'Name ', 'david.jpg', 1, 1, 1, '0000-00-00 00:00:00', '2014-09-05 04:02:16'),
(27, '0.70995100 144002010755d4f68bad53f3.61894836', 'vasquezd', 'Name Me!', '', 27, 27, 27, '0000-00-00 00:00:00', '2015-08-19 21:35:07'),
(28, '0.07075100 144002087755d4f98d1145f2.33237132', 'vasquezd', 'David and Matt and Brians Square', '', 28, 28, 28, '0000-00-00 00:00:00', '2015-08-19 21:47:57'),
(29, '0.52557900 144070637355df6f4582c1c7.09405737', 'vasquezd', 'Name Me! =)', '', 29, 29, 29, '0000-00-00 00:00:00', '2015-08-27 20:12:53');

-- --------------------------------------------------------

--
-- Table structure for table `square_users`
--

CREATE TABLE IF NOT EXISTS `square_users` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT,
  `square_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL,
  PRIMARY KEY (`primary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `square_users`
--

INSERT INTO `square_users` (`primary_id`, `square_id`, `user_name`, `status`, `created`, `updated`) VALUES
(2, 17, 'vasquezb', 1, '2014-09-05 04:02:16', '2014-09-07 03:14:14'),
(24, 27, 'vasquezd', 1, '2015-08-19 21:35:07', '0000-00-00 00:00:00'),
(25, 27, 'vasquezm', 0, '2015-08-19 21:35:07', '0000-00-00 00:00:00'),
(26, 27, 'vasquezb', 0, '2015-08-19 21:35:07', '0000-00-00 00:00:00'),
(27, 28, 'vasquezd', 1, '2015-08-19 21:47:57', '0000-00-00 00:00:00'),
(28, 28, 'vasquezm', 1, '2015-08-19 21:47:57', '0000-00-00 00:00:00'),
(29, 29, 'vasquezd', 1, '2015-08-27 20:12:53', '0000-00-00 00:00:00'),
(32, 28, 'vasquezj', 1, '2015-08-28 22:41:18', '0000-00-00 00:00:00'),
(33, 27, 'vasquezj', 0, '2015-08-29 20:59:57', '0000-00-00 00:00:00'),
(34, 29, 'vasquezb', 0, '2015-08-27 20:12:54', '2015-08-29 21:12:48'),
(40, 28, 'vasquezb', 0, '2015-08-29 23:18:30', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE IF NOT EXISTS `user_login` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(15) NOT NULL,
  `salt` int(11) NOT NULL,
  `password` varchar(40) NOT NULL,
  UNIQUE KEY `user_id_2` (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_name_2` (`user_name`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `salt`, `password`) VALUES
(1, 'vasquezd', 1408593605, 'f62c9d59b1b2cbe2b6462784e1d6a550f1afbe85'),
(2, 'vasquezm', 1408593661, '01383c5e20acbf7898d0b8962d68e022691ce30c'),
(3, 'vasquezb', 1408593651, 'c2975efb9c72c5d1a5c45593b2dbac99ed71c608'),
(4, 'vasquezj', 1408593688, 'b5d03b353dc2dcce9ae1f190a311f1885328da61');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_profile_id`, `user_id`, `user_name`, `email`, `image_name`, `first_name`, `last_name`, `root_folder`, `biography`, `university`, `updated`, `created`) VALUES
(46, 1, 'vasquezd', 'Vasquezd@onid.orst.edu', 'david.jpg', 'David', 'Vasquez', 'Vasquezd', 'Hi, Sometime in the early first century B.C., a ship went down in the Mediterranean Sea, just off a Greek island named Antikythera. The wreck itself wasnt unusual. The island was surrounded by jagged rocks, which likely caused many a boat to disappear back then. But there was something different about this one. The boat contained as  trove of statues, jewelry, and most notably what some scholars believe to be the earliest computer known to man.', 'Oregon State ', '2015-08-03 02:39:59', '2014-08-21 11:00:05'),
(47, 2, 'vasquezm', 'vasquezm@shareshare.com', 'matt.jpg', 'Matt', 'Robert', '', 'This is matts page!', '', '2015-05-04 09:37:27', '0000-00-00 00:00:00'),
(48, 3, 'vasquezb', 'vasquezb@shareshare.com', 'brian.jpg', 'Brian', 'Vasquez', '', 'this is brian''s page! ', '', '2015-05-04 10:51:45', '0000-00-00 00:00:00'),
(49, 4, 'vasquezj', 'vasquezj@shareshare.com', '10.jpg', 'Elsie', 'Smith', '', 'this is my page!', '', '2015-08-28 03:48:25', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
