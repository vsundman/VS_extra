-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2014 at 07:55 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `valerie_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `title`) VALUES
(1, 'Reviews'),
(2, 'Holidays'),
(3, 'Bedrooms'),
(4, 'Bathrooms');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `user_id` smallint(6) NOT NULL,
  `post_id` smallint(6) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `body`, `date`, `user_id`, `post_id`, `status`) VALUES
(1, 'About this item\r\nHoliday Time Christmas decorations are great to add to your home. Give your home warmth and sparkle this season.\r\n\r\nHoliday Time Silver LED Snowflake Tree Topper:\r\n10" snowflake LED tree topper\r\nBlue/white LED lights\r\nUL listed adapted\r\nFor indoor use only\r\nColor: silver', '2014-12-03 10:33:48', 1, 1, 1),
(2, '"Frosty the snowman, was a jolly happy soul. ",\r\n      "Dashing through the snow on a one horse open sleigh. ",\r\n      "Snowing and blowing up bushels of fum, now the jingle hop has begun. ",\r\n      "Oh the weather outside is frightful. ",\r\n      "It''s beginning to look a lot like Christmas. ",\r\n      "Then, I saw Mommy tickle Santa Claus, underneath his beard so snowy white. " , \r\n      "Through the years we all will be together. " , \r\n      "You will get a sentimental feeling, when you hear voices singing. " ', '2014-12-03 10:33:48', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `link_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `url` text NOT NULL,
  `description` varchar(256) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`link_id`, `title`, `url`, `description`, `date`) VALUES
(1, 'Xmas Decor 2014', 'http://www.walmart.com/cp/christmas-decor/633379', 'Xmas decor at walmart', '2014-12-03 10:38:13'),
(2, 'Decorating the bathroom', 'http://www.target.com/c/bath-home/-/N-5xtvc', 'target bathroom decor', '2014-12-03 10:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` smallint(6) NOT NULL,
  `body` text NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `title`, `date`, `user_id`, `body`, `is_published`, `allow_comments`) VALUES
(1, 'Post 1 title', '2014-12-03 10:40:56', 1, 'In a freak mishap Ranger 3 and its pilot Captain William Buck Rogers are blown out of their trajectory into an orbit which freezes his life support systems and returns Buck Rogers to Earth five-hundred years later. Its mission - to explore strange new worlds to seek out new life and new civilizations to boldly go where no man has gone before. I have always wanted to have a neighbor just like you. I''ve always wanted to live in a neighborhood with you. Sunny Days sweepin'' the clouds away. On my way to where the air is sweet. Can you tell me how to get how to get to Sesame Street. black gold As long as we live its you and me baby. There ain''t nothin'' wrong with that. It''s a beautiful day in this neighborhood a beautiful day for a neighbor. Would you be mine? Could you be mine? Its a neighborly day in this beautywood a neighborly day for a beauty. Would you be mine? Could you be mine. Why do we always come here? I guess well never know. Its like a kind of torture to have to watch the show.\r\n\r\nMaybe you and me were never meant to be. But baby think of me once in awhile. I''m at WKRP in Cincinnati. Till the one day when the lady met this fellow and they knew it was much more than a hunch. On the most sensational inspirational celebrational Muppetational… This is what we call the Muppet Show. The Brady Bunch the Brady Bunch that''s the way we all became the Brady Bunch. Makin'' your way in the world today takes everything you''ve got. Takin'' a break from all your worries sure would help a lot.', 1, 1),
(2, 'Post 2 Title', '2014-12-03 10:40:56', 2, 'Maybe you and me were never meant to be. But baby think of me once in awhile. I''m at WKRP in Cincinnati. Till the one day when the lady met this fellow and they knew it was much more than a hunch. On the most sensational inspirational celebrational Muppetational… This is what we call the Muppet Show. The Brady Bunch the Brady Bunch that''s the way we all became the Brady Bunch. ', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_cats`
--

DROP TABLE IF EXISTS `post_cats`;
CREATE TABLE IF NOT EXISTS `post_cats` (
  `post_cat_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `post_id` smallint(6) NOT NULL,
  `category_id` smallint(6) NOT NULL,
  PRIMARY KEY (`post_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `post_cats`
--

INSERT INTO `post_cats` (`post_cat_id`, `post_id`, `category_id`) VALUES
(1, 1, 2),
(2, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `bio` text NOT NULL,
  `email` varchar(254) NOT NULL,
  `userpic` text NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `nickname`, `bio`, `email`, `userpic`, `is_admin`, `date_joined`) VALUES
(2, 'valerie', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'val', 'Type a bio here...', 'valeriec@san.rr.com', '', 1, '2014-12-03 09:55:47'),
(3, 'example_user', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'example', 'this is the example guy''s bio', 'example@exampleemail.com', '', 0, '2014-12-03 09:56:35');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
