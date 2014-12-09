-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2014 at 05:10 PM
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

CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `title`) VALUES
(1, 'Reviews'),
(2, 'Holidays'),
(3, 'Bedrooms'),
(4, 'Bathrooms'),
(5, 'random');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `user_id` smallint(6) NOT NULL,
  `post_id` smallint(6) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `body`, `date`, `user_id`, `post_id`, `status`) VALUES
(1, 'About this item\r\nHoliday Time Christmas decorations are great to add to your home. Give your home warmth and sparkle this season.\r\n\r\nHoliday Time Silver LED Snowflake Tree Topper:\r\n10" snowflake LED tree topper\r\nBlue/white LED lights\r\nUL listed adapted\r\nFor indoor use only\r\nColor: silver', '2014-12-03 10:33:48', 3, 1, 1),
(2, '"Frosty the snowman, was a jolly happy soul. ",\r\n      "Dashing through the snow on a one horse open sleigh. ",\r\n      "Snowing and blowing up bushels of fum, now the jingle hop has begun. ",\r\n      "Oh the weather outside is frightful. ",\r\n      "It''s beginning to look a lot like Christmas. ",\r\n      "Then, I saw Mommy tickle Santa Claus, underneath his beard so snowy white. " , \r\n      "Through the years we all will be together. " , \r\n      "You will get a sentimental feeling, when you hear voices singing. " ', '2014-12-03 10:33:48', 2, 1, 1),
(3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2014-12-08 09:16:37', 3, 2, 1),
(4, 'ss ss', '2014-12-08 10:49:16', 2, 2, 1),
(5, 'sss', '2014-12-08 10:49:21', 2, 2, 1),
(6, 'WOAAAAAAA', '2014-12-08 10:49:28', 2, 2, 1),
(7, 'testing out a comment submission', '2014-12-08 10:49:39', 2, 1, 1),
(8, 'ss', '2014-12-08 10:53:14', 2, 1, 1),
(9, 'd', '2014-12-08 10:59:58', 2, 2, 1),
(10, 'd', '2014-12-08 11:01:21', 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `link_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `url` text NOT NULL,
  `description` varchar(256) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`link_id`, `title`, `url`, `description`, `date`) VALUES
(1, 'Xmas Decor 2014', 'http://www.walmart.com/cp/christmas-decor/633379', 'Xmas decor at walmart', '2014-12-03 10:38:13'),
(2, 'Decorating the bathroom', 'http://www.target.com/c/bath-home/-/N-5xtvc', 'target bathroom decor', '2014-12-03 10:38:13'),
(3, 'Google!', 'google.com', 'It knows everything!', '2014-12-08 08:25:50'),
(4, 'CodePen', 'codepen.io', 'Awesome code demos', '2014-12-08 08:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` smallint(6) NOT NULL,
  `body` text NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `title`, `date`, `user_id`, `body`, `is_published`, `allow_comments`) VALUES
(1, 'Cat Ipsum', '2014-12-03 10:40:56', 2, 'Peer out window, chatter at birds, lure them to mouth flop over, yet hunt anything that moves meowing non stop for food and scamper missing until dinner time purr for no reason. Meowing non stop for food swat at dog, and all of a sudden cat goes crazy, so have secret plans\r\n\r\n\r\n nap all day, so jump off balcony, onto stranger''s head. Intently sniff hand cat snacks, or intrigued by the shower. Under the bed. Why must they do that hunt by meowing loudly at 5am next to human slave food dispenser so find something else more interesting, and chase imaginary bugs, yet chase imaginary bugs. Sweet beast all of a sudden cat goes crazy. All of a sudden cat goes crazy sleep nap. Why must they do that flop over, so chew iPad power cord, or have secret plans yet stand in front of the computer screen. Loves cheeseburgers. Missing until dinner time why must they do that who''s the baby. Peer out window, chatter at birds, lure them to mouth poop on grasses yet under the bed under the bed. Rub face on everything stretch, for leave hair everywhere, or attack feet eat grass, throw it back up. \r\n\r\nMark territory inspect anything brought into the house intently stare at the same spot, so hate dog. Sit in box chase laser curl into a furry donut, leave fur on owners clothes so intrigued by the shower use lap as chair play riveting piece on synthesizer keyboard. Swat at dog behind the couch, and hunt by meowing loudly at 5am next to human slave food dispenser, so behind the couch shake treat bag favor packaging over toy. Leave fur on owners clothes run in circles. Peer out window, chatter at birds, lure them to mouth behind the couch, nap all day sleep in the bathroom sink, for love to play with owner''s hair tie sleep nap see owner, run in terror. Under the bed sleep nap behind the couch. Lick arm hair. Present belly, scratch hand when stroked sleep nap and nap all day, or intently sniff hand, for hunt by meowing loudly at 5am next to human slave food dispenser for kick up litter chew iPad power cord. Meowing non stop for food throwup on your pillow, or stare at the wall, play with food and get confused by dust, chase mice. Cat snacks hopped up on catnip, and sleep in the bathroom sink. I like big cats and i can not lie play time, for stretch, yet if it fits, i sits see owner, run in terror but hack up furballs. Meow all night having their mate disturbing sleeping humans intently sniff hand, so vommit food and eat it again. Climb leg chase ball of string always hungry. Shake treat bag swat at dog eat grass, throw it back up stretch see owner, run in terror hack up furballs climb leg. Peer out window, chatter at birds, lure them to mouth missing until dinner time, for sleep nap yet kick up litter but sleep nap. Behind the couch jump off balcony, onto stranger''s head meowing non stop for food. See owner, run in terror sun bathe. \r\n\r\n\r\nSleep nap loves cheeseburgers and shake treat bag hunt anything that moves. Jump off balcony, onto stranger''s head destroy couch, or roll on the floor purring your whiskers off so all of a sudden cat goes crazy, and stick butt in face, for chase ball of string. Loves cheeseburgers spot something, big eyes, big eyes, crouch, shake butt, prepare to pounce so claw drapes, and curl into a furry donut curl into a furry donut so chase imaginary bugs, for leave fur on owners clothes. Present belly, scratch hand when stroked hide at bottom of staircase to trip human spread kitty litter all over house or all of a sudden cat goes crazy, so leave hair everywhere sleep in the bathroom sink, for play riveting piece on synthesizer keyboard. Curl into a furry donut loves cheeseburgers present belly, scratch hand when stroked chase ball of string. Hopped up on catnip play time. Sleep in the bathroom sink roll on the floor purring your whiskers off roll on the floor purring your whiskers off. Chase ball of string chase ball of string cat snacks. Hack up furballs love to play with owner''s hair tie so always hungry. Sun bathe i like big cats and i can not lie roll on the floor purring your whiskers off. Leave hair everywhere meow all night having their mate disturbing sleeping humans. Sun bathe. Under the bed loves cheeseburgers eat grass, throw it back up scamper, chase ball of string present belly, scratch hand when stroked. Always hungry need to chase tail, or flop over, but sweet beast attack feet, for chew on cable. Roll on the floor purring your whiskers off run in circles, so spot something, big eyes, big eyes, crouch, shake butt, prepare to pounce find something else more interesting. Scamper intrigued by the shower, but hide at bottom of staircase to trip human, vommit food and eat it again, but eat grass, throw it back up shove bum in owner''s face like camera lens. Present belly, scratch hand when stroked play riveting piece on synthesizer keyboard or love to play with owner''s hair tie love to play with owner''s hair tie or present belly, scratch hand when stroked peer out window, chatter at birds, lure them to mouth. Throwup on your pillow flop over meow all night having their mate disturbing sleeping humans purr while eating. Stare at ceiling. Intrigued by the shower climb leg kick up litter jump off balcony, onto stranger''s head and shake treat bag always hungry. Sleep in the bathroom sink destroy couch rub face on everything, and purr for no reason poop on grasses. Intently sniff hand. Roll on the floor purring your whiskers off. Spread kitty litter all over house under the bed favor packaging over toy or use lap as chair, or chase dog then run away nap all day. \r\n', 1, 1),
(2, 'TV Ipsum', '2014-12-03 10:40:56', 3, 'Maybe you and me were never meant to be. But baby think of me once in awhile. I''m at WKRP in Cincinnati. Till the one day when the lady met this fellow and they knew it was much more than a hunch. On the most sensational inspirational celebrational Muppetational. This is what we call the Muppet Show. The Brady Bunch the Brady Bunch that''s the way we all became the Brady Bunch. ', 1, 1),
(3, 'Beer Ipsum', '2014-12-04 09:52:02', 2, 'bock cask conditioning, krausen cold filter, all-malt, cold filter, " noble hops," wort. hydrometer cask conditioning malt, dextrin malt extract becher bunghole saccharification, " dextrin alpha acid, rims, draft (draught?" original gravity bock, brew kettle aroma hops brewhouse, beer cask. dry stout fermentation barrel biere de garde mash tun. terminal gravity conditioning priming.\r\n\r\nconditioning tank enzymes bottom fermenting yeast bitter, dry stout, " bottom fermenting yeast." barleywine mash infusion double bock/dopplebock wort chiller mead. black malt barleywine lager carbonation degrees plato. rims, " gravity final gravity," keg.\r\n\r\nbittering hops mead bunghole bacterial?" gravity black malt bacterial gravity attenuation! bock amber terminal gravity crystal malt acid rest-- reinheitsgebot. bitter, " crystal malt bottle conditioning cask seidel," dextrin priming hand pump black malt. enzymes lauter microbrewery brewhouse racking.\r\n\r\nfinishing hops dextrin aau crystal malt black malt, " wort chiller scotch ale brewhouse," pitch. trappist hop back wheat beer glass aerobic bottom fermenting yeast. enzymes additive, real ale bung imperial abbey finishing hops. filter attenuation, noble hops, wit! kolsch cold filter lauter wort chiller, wort. bittering hops lagering cask conditioned ale; hand pump.', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `post_cats`
--

CREATE TABLE IF NOT EXISTS `post_cats` (
  `post_cat_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `post_id` smallint(6) NOT NULL,
  `category_id` smallint(6) NOT NULL,
  PRIMARY KEY (`post_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `post_cats`
--

INSERT INTO `post_cats` (`post_cat_id`, `post_id`, `category_id`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

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
