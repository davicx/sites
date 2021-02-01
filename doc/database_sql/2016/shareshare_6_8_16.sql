-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2016 at 11:42 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=103 ;

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
(49, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'discussion', 'This is the caption of this post and it works pretty well really well actually really well actually!!! This is the caption of this post and it works pretty well really well actually really well actually!!!This is the caption of this post and it works pretty well really well actually really well actually!!! This is the caption of this post and it works pretty well really well actually really well actually!!! This is the caption of this post and it works pretty well really well actually really well actually!!! This is the caption of this post and it works pretty well really well actually really well actually!!! This is the caption of this post and it works pretty well really well actually really well actually!!! This is the caption of this post and it works pretty well really well actually really well actually!!! This is the caption of this post and it works pretty well really well actually really well actually!!! This is the caption of this post and it works pretty well really well actually really well actually!!!', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-05-27 20:29:18', '2016-05-23 16:54:16'),
(53, 'shareshare', '', 0, 0, 'matt', 'vasquezd', 'discussion', 'Also, there seems to be no mention of how the government is going to prevent invasive species from exploiting the government''s effort: for example, melaleuca trees were introduced to Florida to dry the Everglades for development, and the plan resulted in millions of invasive melaleuca trees covering much of the Everglades, which then took millions of dollars to fix. ', '', '', '', '', '', '', '', 0, '', 1, 0, '', '0000-00-00 00:00:00', '2016-05-23 22:27:38', '2016-05-17 18:00:16'),
(55, 'divvy', '', 0, 157, 'vasquezd', 'vasquezd', 'divvy', '@tarren and I said, I don''t care if they lay me off either, because I told, I told Bill that if they move my desk one more time,then, then I''m, I''m quitting, I''m going to quit. And, and I told Don too, because they''ve moved my desk four times already this year, and I used to be over by the window, and I could see the squirrels, and they were merry, but then, they switched from the Swingline \nto the Boston stapler, but I kept my Swingline stapler because it didn''t bind up as much, and I kept the staples for the Swingline stapler and it''s not okay because if they take my stapler then I''ll set the building on fire...  ', '', '', '', '', '', '', '', 0, '', 1, 0, '', '2016-05-20 22:47:41', '2016-06-01 21:27:15', '2016-05-17 21:00:16'),
(56, 'divvy', '', 0, 157, 'vasquezd', 'vasquezd', 'divvy', '@tarren No one in this country can ever pronounce my name right. It''s not that hard: Na-ghee-na-na-jar. Nagheenanajar. .', '', '', '', '', '', '', '', 0, '', 1, 0, '', '2016-05-20 22:47:56', '2016-06-01 21:27:01', '2016-05-17 21:00:16'),
(57, 'divvy', '', 0, 157, 'vasquezd', 'vasquezd', 'divvy', ' Bob Porter: Looks like you''ve been missing a lot of work lately. Peter Gibbons: I wouldn''t say I''ve been *missing* it, Bob. <span class = "divvy-hashtag-style"> #Office Space</span>', '', '', '', '', '', '', '', 0, '', 1, 0, '', '2016-05-20 22:48:10', '2016-05-20 23:13:06', '2016-05-17 21:00:16'),
(58, 'divvy', '', 0, 155, 'vasquezd', 'vasquezd', 'divvy', '@david There is now a "divvy" tab which is where the bullet points are stored in the order that the user created them for the project #Design updates to Divvy and it is due &friday', '', '', '', '', '', '', '', 0, '', 1, 0, '', '2016-05-20 22:49:14', '2016-06-01 23:09:03', '2016-05-17 21:00:16'),
(59, 'divvy', '', 0, 156, 'vasquezd', 'vasquezd', 'divvy', '@david Colors have been added to #Design updates to Divvy the different types of tags to help distinguish them from regular text.', '', '', '', '', '', '', '', 0, '', 1, 0, '', '2016-05-20 22:49:30', '2016-06-01 22:13:45', '2016-05-17 21:00:16'),
(60, 'divvy', '', 0, 156, 'vasquezd', 'vasquezd', 'divvy', '@david  I also changed "#project" to "#hashtag" so people will feel free to use hashtags for more than just project names..', '', '', '', '', '', '', '', 0, '', 1, 0, '', '2016-05-20 22:49:45', '2016-06-01 22:13:54', '2016-05-17 21:00:16'),
(61, 'divvy', '', 0, 156, 'vasquezd', 'vasquezd', 'divvy', 'Aesthetic changes too.', '', '', '', '', '', '', '', 0, '', 1, 0, '', '2016-05-20 22:49:57', '2016-05-20 22:48:55', '2016-05-17 21:00:16'),
(62, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1463875481haven.jpg', '', '', '', '', 0, 'vasquezdvasquezd1463866156', 0, 0, '', '0000-00-00 00:00:00', '2016-05-29 22:37:34', '2016-05-22 06:29:59'),
(63, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'discussion', 'this is a new post lead', '', '', '', '', '', '', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-05-24 23:18:29', '2016-05-24 20:07:03'),
(64, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'discussion', 'this is new', '', '', '', '', '', '', '', 0, '', 0, 0, '', '0000-00-00 00:00:00', '2016-05-27 00:04:46', '2016-05-27 00:02:36'),
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
(102, 'shareshare', '', 0, 0, 'vasquezd', 'vasquezd', 'photo', '', '', '', '1465249639Jellyfish.jpg', '', '', '', '', 0, 'vasquezdvasquezd1465249521', 1, 0, '', '2016-06-09 20:55:43', '2016-06-06 21:47:19', '2016-06-07 06:45:27');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
