-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2017 at 08:02 PM
-- Server version: 5.5.53-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `teamqueso`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_links`
--

CREATE TABLE IF NOT EXISTS `tbl_links` (
  `tlinks_id` int(11) NOT NULL AUTO_INCREMENT,
  `tusers_id_fk` int(11) NOT NULL,
  `url` varchar(150) NOT NULL,
  `comment` varchar(350) NOT NULL,
  PRIMARY KEY (`tlinks_id`),
  KEY `tusers_id_fk` (`tusers_id_fk`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `tbl_links`
--

INSERT INTO `tbl_links` (`tlinks_id`, `tusers_id_fk`, `url`, `comment`) VALUES
(1, 1, 'http://www.google.com', 'CST 205'),
(2, 1, 'http://www.facebook.com', 'CST 205'),
(3, 2, 'http://www.twitter.com', 'CST 205'),
(4, 2, 'http://www.csumb.edu', 'CST 205'),
(5, 3, 'http://www.github.com', 'CST 205'),
(6, 3, 'http://www.youtube.com', 'CST 338'),
(7, 4, 'http://www.baidu.com', 'CST 338'),
(8, 4, 'http://www.yahoo.com', 'CST 338'),
(9, 5, 'http://www.amazon.com', 'CST 338'),
(10, 5, 'http://www.wikipedia.com', 'cst205 thing'),
(11, 1, 'http://www.live.com', 'cst205 thing'),
(12, 2, 'http://www.bing.com', 'cst205 thing'),
(13, 3, 'http://www.reddit.com', 'cst205 thing'),
(14, 4, 'http://www.netflix.com', 'cst205 thing'),
(15, 5, 'http://www.tumblr.com', 'cst205 thing'),
(16, 5, 'boogle.com', 'CST 286'),
(17, 5, 'boogle.com', 'CST 286'),
(18, 5, 'boogle.com', 'CST 286'),
(19, 5, 'boogle.com', 'CST 286'),
(20, 5, 'boogle.com', 'CST 231'),
(21, 5, 'boogle.com', 'CST 231'),
(22, 5, 'boogle.com', 'CST 231'),
(23, 5, 'boogle.com', 'CST 495'),
(24, 5, 'boogle.com', 'CST 495'),
(25, 5, 'boogle.com', 'CST 495'),
(26, 3, 'google.com', 'CST 495'),
(27, 3, 'www.testing.com', 'test'),
(28, 3, 'chrome://extensions/', 'test'),
(29, 4, 'chrome://extensions/', 'test'),
(30, 3, 'mom.com', 'test'),
(31, 1, 'http://stackoverflow.com/questions/40955019/advance-table-search-in-rails', 'helped me with python'),
(32, 3, 'https://www.linkedin.com/', 'found work'),
(33, 3, 'https://git-scm.com/docs/gittutorial', 'Git commands');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tags`
--

CREATE TABLE IF NOT EXISTS `tbl_tags` (
  `ttags_id` int(11) NOT NULL AUTO_INCREMENT,
  `tlinks_id_fk` int(11) NOT NULL,
  `tag` varchar(30) NOT NULL,
  PRIMARY KEY (`ttags_id`),
  KEY `tlinks_id_fk` (`tlinks_id_fk`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `tbl_tags`
--

INSERT INTO `tbl_tags` (`ttags_id`, `tlinks_id_fk`, `tag`) VALUES
(1, 1, 'search'),
(2, 1, 'engine'),
(3, 2, 'social'),
(4, 2, 'network'),
(5, 2, 'face'),
(6, 3, 'tweets'),
(7, 3, 'bird'),
(8, 3, 'blue'),
(9, 3, 'hashtag'),
(10, 4, 'cst205'),
(11, 4, 'cst206'),
(12, 4, 'cst207'),
(13, 4, 'cst208'),
(14, 4, 'cst209'),
(15, 5, 'codes'),
(16, 5, 'version'),
(17, 5, 'octopus'),
(18, 6, 'videos'),
(19, 6, 'live'),
(20, 6, 'steam'),
(21, 7, 'social'),
(22, 8, 'mail'),
(23, 9, 'shopping'),
(24, 9, 'cart'),
(25, 9, 'saving'),
(26, 10, 'search'),
(27, 10, 'learning'),
(28, 10, 'cst308'),
(29, 11, 'mail'),
(30, 12, 'search'),
(31, 13, 'social'),
(32, 14, 'movies'),
(33, 15, 'posts'),
(34, 23, 'cst290'),
(35, 24, 'cst290'),
(36, 25, 'cst300'),
(37, 26, 'testing'),
(40, 27, 'boom'),
(45, 28, 'testing'),
(46, 29, 'lauraJessie'),
(47, 30, 'testing'),
(48, 31, 'cst205'),
(49, 32, 'cst438'),
(50, 33, 'cst205');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `tusers_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`tusers_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`tusers_id`, `username`, `password`) VALUES
(1, 'jarbas', 'pass'),
(2, 'jessie', 'pass'),
(3, 'acemullet', 'pass'),
(4, 'laura', 'pass'),
(5, 'andre', 'pass');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_links`
--
ALTER TABLE `tbl_links`
  ADD CONSTRAINT `tbl_links_ibfk_1` FOREIGN KEY (`tusers_id_fk`) REFERENCES `tbl_users` (`tusers_id`);

--
-- Constraints for table `tbl_tags`
--
ALTER TABLE `tbl_tags`
  ADD CONSTRAINT `tbl_tags_ibfk_1` FOREIGN KEY (`tlinks_id_fk`) REFERENCES `tbl_links` (`tlinks_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
