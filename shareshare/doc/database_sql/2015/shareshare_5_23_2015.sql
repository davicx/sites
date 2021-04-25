-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2015 at 01:37 AM
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
  `title` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `comment_from` int(11) NOT NULL,
  `comment_to` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `square_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `server_name` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `file_location` varchar(255) NOT NULL,
  `file_root` varchar(255) NOT NULL,
  `folder_path` text NOT NULL,
  `status` int(11) NOT NULL,
  `file_size` int(11) NOT NULL,
  `file_uploaded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_last_modified` timestamp NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `files_new`
--

CREATE TABLE IF NOT EXISTS `files_new` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `square_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `is_folder` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_name_server` varchar(255) NOT NULL,
  `file_image` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `file_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_last_modified` timestamp NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `files_new`
--

INSERT INTO `files_new` (`file_id`, `square_id`, `parent`, `is_folder`, `file_name`, `file_name_server`, `file_image`, `user_id`, `user_name`, `file_created`, `file_last_modified`) VALUES
(1, 1, 1, 1, 'First Folder ', 'first_folder', 'folder.png', 1, 'vasquezd', '2015-05-22 03:30:40', '2015-05-22 03:30:40');

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
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`friends_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friends_id`, `user_name`, `user_id`, `friend_user_name`, `friend_id`, `created`) VALUES
(1, 'vasquezd', 1, 'vasquezm', 2, '2015-05-04 09:47:04'),
(2, 'vasquezm', 2, 'vasquezd', 1, '2015-05-04 09:47:04'),
(3, 'vasquezd', 1, 'vasquezb', 3, '2015-05-04 09:47:23'),
(4, 'vasquezb', 3, 'vasquezd', 1, '2015-05-04 09:47:23');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(2083) NOT NULL,
  `link_title` text NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `link_image` varchar(255) NOT NULL,
  `link_favicon` varchar(255) NOT NULL,
  `link_type` varchar(255) NOT NULL,
  `caption` text NOT NULL,
  `tag_id` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`link_id`, `link_url`, `link_title`, `user_name`, `link_image`, `link_favicon`, `link_type`, `caption`, `tag_id`, `likes`, `created`, `updated`) VALUES
(11, 'https://github.com/explore', 'Explore Â· GitHub', 'vasquezd', 'github.png', 'github.png', '', '', 0, 0, '2015-04-29 04:13:50', '0000-00-00 00:00:00'),
(13, 'http://stackoverflow.com/questions/724391/saving-image-from-php-url', 'Saving image from PHP URL - Stack Overflow', 'vasquezd', 'stackoverflow.png', 'stackoverflow.png', '', '', 0, 0, '2015-04-29 04:20:05', '0000-00-00 00:00:00'),
(14, 'https://webmail.oregonstate.edu/favicon.ico', 'title not found', 'vasquezd', 'oregonstate.png', 'oregonstate.png', '', '', 0, 0, '2015-04-29 04:20:55', '0000-00-00 00:00:00'),
(15, 'https://www.yahoo.com/', 'Array', 'vasquezd', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '2015-04-30 03:07:49', '0000-00-00 00:00:00'),
(16, 'https://www.yahoo.com/', 'Yahoo', 'vasquezd', 'yahoo.png', 'yahoo.png', '', '', 0, 0, '2015-04-30 03:08:24', '0000-00-00 00:00:00'),
(17, 'http://stackoverflow.com/questions/138313/how-to-extract-img-src-title-and-alt-from-html-using-php', 'How to extract img src, title and alt from html using php? - Stack Overflow', 'vasquezd', 'stackoverflow.png', 'stackoverflow.png', '', '', 0, 0, '2015-04-30 04:04:50', '0000-00-00 00:00:00'),
(18, 'http://stackoverflow.com/questions/138313/how-to-extract-img-src-title-and-alt-from-html-using-php', 'How to extract img src, title and alt from html using php? - Stack Overflow', 'vasquezd', 'stackoverflow.png', 'stackoverflow.png', '', '', 0, 0, '2015-04-30 04:05:10', '0000-00-00 00:00:00'),
(19, 'http://www.geekality.net/2011/05/12/php-how-to-get-all-images-from-an-html-page/', 'PHP: How to get all images from an HTML page | Geekality', 'vasquezd', 'geekality.png', 'geekality.png', '', '', 0, 0, '2015-04-30 04:11:42', '0000-00-00 00:00:00'),
(20, 'http://www.geekality.net/2011/05/12/php-how-to-get-all-images-from-an-html-page/', 'PHP: How to get all images from an HTML page | Geekality', 'vasquezd', 'geekality.png', 'geekality.png', '', '', 0, 0, '2015-04-30 04:11:46', '0000-00-00 00:00:00'),
(21, 'http://www.geekality.net/2011/05/12/php-how-to-get-all-images-from-an-html-page/', 'PHP: How to get all images from an HTML page | Geekality', 'vasquezd', 'geekality.png', 'geekality.png', '', '', 0, 0, '2015-04-30 04:11:54', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_from` varchar(255) NOT NULL,
  `post_to` varchar(2083) NOT NULL,
  `post_category` varchar(255) NOT NULL,
  `post_caption` text NOT NULL,
  `post_url` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_text` text NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `like_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_from`, `post_to`, `post_category`, `post_caption`, `post_url`, `image_url`, `article_title`, `article_text`, `link_url`, `like_id`, `comment_id`, `updated`, `created`) VALUES
(1, 'vasquezd', 'vasquezm', 'video', 'Dude! You should check out this sweet band and tell me what you think! ', 'https://www.youtube.com/embed/qDRF5iUSXn0', '', '', '', 'https://www.youtube.com/watch?v=qDRF5iUSXn0', 1, 1, '2015-04-16 03:41:43', '0000-00-00 00:00:00'),
(2, 'vasquezd', 'vasquezm', 'video', 'I love Hammock', 'https://www.youtube.com/embed/c-ayuRE5xd8', '', '', '', 'https://www.youtube.com/embed/c-ayuRE5xd8', 1, 1, '2015-05-05 04:10:11', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`post_like_id`, `post_id`, `liked_by`, `liked_by_name`, `time_stamp`) VALUES
(1, 1, 1, 'vasquezd', '2015-04-17 03:00:31'),
(2, 1, 2, 'bilbo', '2015-04-17 03:01:04'),
(3, 2, 2, 'vasquezd', '2015-04-17 03:01:04'),
(4, 1, 2, 'vasquezm', '2015-04-17 03:01:04');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `salt`, `password`) VALUES
(1, 'vasquezd', 1408593605, 'f62c9d59b1b2cbe2b6462784e1d6a550f1afbe85'),
(2, 'vasquezm', 1408593661, '01383c5e20acbf7898d0b8962d68e022691ce30c'),
(3, 'vasquezb', 1408593651, 'c2975efb9c72c5d1a5c45593b2dbac99ed71c608');

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
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_profile_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_profile_id`, `user_id`, `user_name`, `email`, `image_name`, `first_name`, `last_name`, `root_folder`, `biography`, `university`, `updated`, `created`) VALUES
(46, 1, 'vasquezd', 'Vasquezd@onid.orst.edu', '14276656286_1.jpg', 'David', 'Vasquez', 'Vasquezd', 'Hi, Sometime in the early first century B.C., a ship went down in the Mediterranean Sea, just off a Greek island named Antikythera. The wreck itself wasnt unusual. The island was surrounded by jagged rocks, which likely caused many a boat to disappear back then. But there was something different about this one. The boat contained as  trove of statues, jewelry, and most notably what some scholars believe to be the earliest computer known to man.', 'Oregon State ', '2015-04-15 03:34:46', '2014-08-21 11:00:05'),
(47, 2, 'vasquezm', 'vasquezm@shareshare.com', 'matt.jpg', 'Matt', 'Vasquez', '', 'This is matts page!', '', '2015-05-04 09:37:27', '0000-00-00 00:00:00'),
(48, 3, 'vasquezb', 'vasquezb@shareshare.com', 'brian.jpg', 'Brian', 'Vasquez', '', 'this is brian''s page! ', '', '2015-05-04 10:51:45', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
