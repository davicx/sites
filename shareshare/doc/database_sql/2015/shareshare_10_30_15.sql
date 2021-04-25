-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2015 at 03:26 AM
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
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_from` varchar(255) NOT NULL,
  `notification_to` varchar(255) NOT NULL,
  `notification_time` timestamp NOT NULL,
  `notification_header` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `sub_category` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `from_logged_in_user` int(11) NOT NULL,
  `status_unseen` int(11) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `notification_from`, `notification_to`, `notification_time`, `notification_header`, `category`, `sub_category`, `link_url`, `group_id`, `post_id`, `from_logged_in_user`, `status_unseen`) VALUES
(1, 'vasquezm', 'vasquezb', '2015-10-22 02:33:08', 'groups', 'group_link', 'group', '', 15, 0, 0, 1),
(2, 'vasquezm', 'vasquezd', '2015-10-22 02:34:01', 'posts', 'post_comment', 'post', '', 0, 150, 0, 1),
(3, 'vasquezb', 'vasquezd', '2015-10-22 02:34:48', 'groups', 'group_wall_comment', 'group wall', '', 1, 1, 0, 1),
(4, 'vasquezd', 'vasquezm', '2015-10-27 04:02:38', 'posts', 'post_new_video', 'video', '', 1, 1, 0, 1),
(8, 'vasquezm', 'vasquezb', '2015-10-29 03:05:10', 'posts', 'post_new_photo', 'photo', '', 0, 0, 0, 1),
(9, 'vasquezd', 'vasquezb', '2015-10-30 01:53:44', 'posts', 'post_new', 'wall', '', 0, 0, 0, 1),
(10, 'vasquezd', 'vasquezd', '2015-10-30 01:56:09', 'posts', 'post_new_photo', 'wall', '', 0, 0, 1, 1),
(14, 'vasquezd', 'vasquezb', '2015-10-30 02:24:04', 'posts', 'post_new_photo', 'wall', '', 0, 0, 0, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
