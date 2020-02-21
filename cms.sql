-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 29, 2020 at 03:28 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(3) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(16, 'Bootstrap 4'),
(11, 'Javascript 4'),
(20, 'Javascript 5'),
(15, 'Java'),
(18, 'Angular'),
(19, 'React'),
(21, ' angualr 9'),
(22, 'example');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(3) NOT NULL AUTO_INCREMENT,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(5, 16, 'Lorem Ipsum Programming', 'Jack', '2019-12-03', 'cms_img_placeholder.jpg.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sed augue a neque laoreet aliquet quis ac enim. Etiam pharetra nisl non lorem viverra condimentum. Praesent iaculis ornare pulvinar. Quisque pulvinar pretium eros vel aliquam. Donec lacinia euismod leo, sit amet tincidunt leo consequat vitae. In condimentum magna nec ornare tincidunt. Sed lobortis dictum lacus, et tristique nulla tempor vehicula. Sed ac auctor lectus.\r\n\r\nMaecenas in lorem sollicitudin, lobortis tortor et, sodales velit. Phasellus iaculis erat ac tincidunt venenatis. In posuere quam eu accumsan semper. Nullam varius egestas ex. Pellentesque ornare faucibus lectus, eu placerat dui dapibus vitae. Quisque dapibus sollicitudin ex. Vivamus et urna velit.\r\n\r\nEtiam gravida lacus odio, porttitor faucibus dui tempus id. Aenean vestibulum at mauris eget elementum. Vivamus accumsan, tortor id efficitur pulvinar, metus nisl tempor erat, eget facilisis elit ex at sapien. Nullam ac dolor imperdiet, sollicitudin lorem non, mollis libero. Duis in sollicitudin leo, vitae varius massa. Aliquam suscipit vehicula blandit. Pellentesque volutpat risus in luctus malesuada. Donec ut vestibulum ligula.\r\n\r\nIn ut fermentum nulla, eget laoreet enim. Integer viverra in est eget auctor. Nunc consequat lorem in purus finibus molestie. Cras ligula libero, vehicula vitae condimentum vitae, hendrerit ac odio. Cras aliquam, tortor quis interdum mollis, quam sapien fermentum sapien, sit amet congue quam lacus elementum tellus. Nulla dapibus cursus euismod. Proin diam arcu, faucibus sed aliquam et, lobortis eleifend ex. Nam gravida odio sollicitudin, molestie tortor vel, semper sem. Aenean fermentum ultrices est, vel efficitur eros tempus scelerisque. Integer feugiat enim gravida orci interdum, ut auctor felis porta.\r\n\r\nMorbi sem est, eleifend vehicula elementum non, commodo vel tellus. Aliquam venenatis felis pretium semper elementum. Quisque lacinia sodales convallis. Sed vel augue mollis, efficitur nunc vitae, interdum eros. Nunc aliquam dolor iaculis vulputate bibendum. Donec mattis ut tortor a dignissim. Nunc in sem vel orci ultrices aliquam. Nunc vestibulum commodo tempor. Vivamus at mauris id felis hendrerit laoreet. Vestibulum luctus vulputate dignissim. Vivamus nulla enim, ultricies id ultrices id, molestie vitae turpis. Nullam ac ornare lorem.', 'angular, react, web dev, dev, web, html5, lorem, ipsum', 4, 'published'),
(2, 19, 'Reacter', 'Arlond', '2019-12-03', 'pexels-photo-531880.jpeg', '                    more Lorem Ipsum \r\n          \r\n          \r\n          \r\n         ', 'js, es5, es6, TS, javascript', 0, 'draft'),
(3, 16, 'Reacter', 'Xhevded', '2019-12-03', 'water-1330252__340.webp', '               this is an awesome tutorial  \r\n          \r\n          \r\n         ', 'angular, react, web dev, dev, web, html5', 4, 'true'),
(6, 16, 'Admin a server', 'Mr Admin', '2019-12-03', 'lambo_1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sed augue a neque laoreet aliquet quis ac enim. Etiam pharetra nisl non lorem viverra condimentum. Praesent iaculis ornare pulvinar. Quisque pulvinar pretium eros vel aliquam. Donec lacinia euismod leo, sit amet tincidunt leo consequat vitae. In condimentum magna nec ornare tincidunt. Sed lobortis dictum lacus, et tristique nulla tempor vehicula. Sed ac auctor lectus.\r\n\r\nMaecenas in lorem sollicitudin, lobortis tortor et, sodales velit. Phasellus iaculis erat ac tincidunt venenatis. In posuere quam eu accumsan semper. Nullam varius egestas ex. Pellentesque ornare faucibus lectus, eu placerat dui dapibus vitae. Quisque dapibus sollicitudin ex. Vivamus et urna velit.', 'admin, lambo', 4, 'Draft');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
