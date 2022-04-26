-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2016 at 12:58 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yunga`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_event`
--

CREATE TABLE IF NOT EXISTS `add_event` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `event` text NOT NULL,
  `location` varchar(100) NOT NULL,
  `category` varchar(30) NOT NULL,
  `region` varchar(50) NOT NULL,
  `date_create` varchar(20) NOT NULL,
  `time_create` varchar(20) NOT NULL,
  `event_date` varchar(20) NOT NULL,
  `event_start` varchar(20) NOT NULL,
  `event_end` varchar(20) NOT NULL,
  `contact_name` varchar(40) NOT NULL,
  `contact_email` varchar(40) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `logo` varchar(30) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `add_event`
--

INSERT INTO `add_event` (`id`, `user_id`, `title`, `event`, `location`, `category`, `region`, `date_create`, `time_create`, `event_date`, `event_start`, `event_end`, `contact_name`, `contact_email`, `contact_phone`, `logo`, `active`) VALUES
(1, 0, 'Ebonies Bonaza', 'All comedy and drama', '', 'Music/Entertainment', '', '', '', '07/08/2016', '04:15', '14:25', 'Katende', 'ebonies@yahoo.com', '070374478494', '8994-img-20140705-wa0002.jpg', 1),
(2, 0, 'Cyber Laucnh', 'Official company Launch', '', 'Software/ICT', '', '24/11/2015', '12:46:ss', '10/05/2017', '04:15', '14:25', 'Katende', 'ebonies@yahoo.com', '070374478494', '83767-img-20141104-wa0004.jpg', 0),
(3, 0, 'Cyber Laucnh', 'Official company Launch', '', 'Software/ICT', '', '24/11/2015', '12:46:55', '10/05/2017', '04:15', '14:25', 'Katende', 'ebonies@yahoo.com', '070374478494', '79229-img-20141104-wa0004.jpg', 0),
(4, 1, 'KCCA Festival', 'Kampalanins mujje tukeykole', '', 'Software/ICT', '', '24/11/2015', '12:54:51', '01-01-2015', '00:00', '00:00', 'Jennifer Musisi', 'kcca@co.ug', '070374478494', '39663-', 0),
(7, 1, 'Catering Carnival', 'Come learn all about cookinf', '', 'Foods/Drinks/Restaurants', '', '1448312400', '14:48:52', '1451336400', '11:15', '23:55', 'Kigongo & Sons', 'kigongo@yahoo.com', '0414 234511', '14030-img-20140702-wa0001.jpg', 0),
(8, 1, 'Shots Event', 'Come and enjoy free spirit shots', '', 'Music/Entertainment', '', '1448398800', '16:32:28', '1452632400', '14:15', '08:15', 'Kigozi Paul', 'kigozi@yahoo.com', '0775797947', '18015-img-20150219-wa0004.jpg', 1),
(9, 1, 'Auction', 'Come enjoy the latest goods at a low price', 'Salaama Road, opposite ETM Church', 'Textile/Clothing', '', '1448398800', '20:41:35', '1451595600', '15:00', '13:00', 'Katende', 'djmulinde@yhaoo.com', '0703744784', '35318-img-20140929-wa0002.jpg', 1),
(10, 1, 'Kareoke Night', 'Kareoke night at Mixer PUB		  ', 'Mixer Pub Kamwokya', 'Music/Entertainment', '', '1449187200', '14:22:43', '1459900800', '07:00', '08:00', 'Jeff Kiwa', 'kiwa@gmail.com', '0778999666', '9090-2216859-tea-and-bread-wit', 0),
(11, 1, 'Kareoke Night', 'Kareoke night at Mixer PUB		  ', 'Mixer Pub Kamwokya', 'Music/Entertainment', '', '1449187200', '14:23:35', '1459900800', '07:00', '08:00', 'Jeff Kiwa', 'kiwa@gmail.com', '0778999666', '19922-2216859-tea-and-bread-wi', 0),
(12, 1, '222', '222		  ', '333', '', '', '1449187200', '15:6:31', '1451606400', '00:00', '00:00', 'dd', 'dhdh', 'dhd', '72845-', 0),
(13, 1, 'fs', 'ddd		  ', 'ggf', '', '', '1449187200', '15:9:36', '1451606400', '00:00', '00:00', 'dfdg', 'fghf', 'svd', '59485-', 0),
(14, 1, 'krkkkrk', 'rkrkrk		  ', 'fkfkfk', 'Beauty/Saloon/Bridal Services', '', '1449187200', '15:28:30', '1451606400', '00:00', '00:00', 'kffkfkfk', 'fkfkfk', 'fkfkf', '11230-10409719_913096392058603', 0),
(15, 1, 'Cyber Dynamics Drink Up', 'Drink for all Cyber Dynamics company members', 'The Fringe Bar & Lounge', '2', '', '1451174400', '12:22:47', '1451606400', '11:40', ':', 'Sempa', 'sempa@cyberdynamics.co.ug', '0774232323', '25281-', 0),
(16, 1, 'Yuunga Launch', 'Yuunga official launch. To be attended by the Yuunga board and all Cyber Dynamics Company share holders', 'Silk Lounge', '2', '', '1451174400', '12:31:13', '1451520000', '11:25', ':', 'Derrick Mulinde', 'dmulinde@gmail.com', '0774232323', '51799-', 0),
(17, 1, 'Cyber Event', 'hhheeee', 'weeehhh', 'art', 'Entebbe', '1451174400', '12:36:45', '01-02-2016', '02:10', '03:20', 'hhddd', 'hhrrr', 'hhhhfff', 'beer_1388850739.png', 0),
(18, 1, 'Cyber Dynamics Drink Up', 'Cyber Dynamics Drink Up Party\nCarry a female friend', 'Kasablanca, Katwe', 'business', 'Kampala', '1451174400', '13:53:41', '1451520000', '10:00', '23:00', 'Kyuka Isaac', 'zerga.kyuk@gmail.com', '0774232323', 'beer_1056387197.png', 0),
(19, 1, 'hh', 'hh', 'hh', 'music', 'Entebbe', '1451174400', '14:17:39', '1520208000', '01:00', '05:00', 'hh', 'hh', 'hh', '_83329923_javigarcia_627016084', 0),
(20, 1, 'f', 'ff', 'ff', 'business', 'Entebbe', '1451174400', '15:18:19', '1451520000', '00:10', '05:00', 'ee', 'ee', 'ee', '_83329923_javigarcia_115690943', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE IF NOT EXISTS `ads` (
  `AdId` int(11) NOT NULL AUTO_INCREMENT,
  `AdURL` varchar(45) DEFAULT NULL,
  `AdName` varchar(45) DEFAULT NULL,
  `AdCoName` varchar(45) DEFAULT NULL,
  `AdPic` varchar(45) DEFAULT NULL,
  `AdPanelId` varchar(45) DEFAULT NULL COMMENT 'the panel on which the Ad is to display',
  `Ad_UserId` int(11) DEFAULT NULL COMMENT 'System User that added the Ad',
  `Ads_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`AdId`),
  KEY `SystemUserId` (`Ad_UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `businesslocation`
--

CREATE TABLE IF NOT EXISTS `businesslocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` text,
  `lat` float(10,6) DEFAULT NULL,
  `lng` float(10,6) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `businessId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `businesslocation`
--

INSERT INTO `businesslocation` (`id`, `name`, `address`, `lat`, `lng`, `category`, `businessId`) VALUES
(1, 'Pan Africa Market', '1521 1st Ave, Seattle, WA', 47.608940, -122.340141, 'restaurant', 1),
(2, 'Buddha Thai & Bar', '2222 2nd Ave, Seattle, WA', 47.613590, -122.344391, 'bar', 4),
(3, 'The Melting Pot', '14 Mercer St, Seattle, WA', 47.624561, -122.356445, 'restaurant', 5),
(4, 'Ipanema Grill', '1225 1st Ave, Seattle, WA', 47.606365, -122.337654, 'restaurant', 7),
(7, 'Mama''s Mexican Kitchen', '2234 2nd Ave, Seattle, WA', 47.613976, -122.345467, 'bar', 12),
(8, 'Wingdome', '1416 E Olive Way, Seattle, WA', 47.617214, -122.326584, 'bar', 13),
(10, 'Best Bar Ever', '123 Main St', -37.123451, 122.123451, 'restaurant', NULL),
(11, 'Best Bar Ever', '123 Main St', -37.123451, 122.123451, 'bar', NULL),
(12, 'Cyber Dynamics', 'Muswangali', 0.238383, 32.585850, 'IT company', NULL),
(14, 'Cyber', 'Muswangali, Salaama Rd', 0.281497, 32.577602, 'IT', NULL),
(15, 'Makindye II Parish Restuarant', 'Muswangali, Salaama Rd', 0.281314, 32.577461, 'restaurant', NULL),
(16, 'Ewa Doctor', 'Muswangali, Salaama Rd', 0.281212, 32.577839, 'bar', NULL),
(17, 'Winners School', 'Kibuye, Salaama Rd', 0.282071, 32.576874, 'school', NULL),
(18, 'ETM Church', 'Salaama Rd', 0.281282, 32.577080, 'church', NULL),
(19, 'Kalina Super Market', 'Salaama Rd', 0.281915, 32.577267, 'shop', NULL),
(20, 'Jah Alive Studio', 'Salaama Rd', 0.282929, 32.577629, 'studio', NULL),
(21, 'Sempa Shoes ', 'Sunset Arcade 2nd Floor Room 10', 0.314365, 32.577374, 'shop', NULL),
(22, 'Sowed & Sons', 'JINJA Road', 0.322121, 32.600899, '', NULL),
(23, 'Sowed & Family', 'Kira Road', 0.336626, 32.590942, '', NULL),
(24, 'Sowed & Family', 'Kira Road', 0.336626, 32.590942, '', NULL),
(25, 'dhdh', 'dhdhd', 0.339029, 32.594032, '', NULL),
(26, 'test', 'test', 0.338171, 32.593689, '', NULL),
(27, 'Sowed PAlace', 'Nakasero', 0.318087, 32.588882, 'statehouse', NULL),
(28, 'Sowed PAlace', 'Nakasero', 0.318087, 32.588882, 'statehouse', NULL),
(29, 'Sowed PAlace', 'Nakasero', 0.318087, 32.588882, 'statehouse', NULL),
(30, 'xx', 'xx', 0.347955, 32.608624, 'xx', NULL),
(31, 'ii', 'ii', 0.339373, 32.591801, 'ii', NULL),
(32, 'cv', 'cv', 0.341947, 32.595577, '', NULL),
(33, 'me', 'mem', 0.342806, 32.595921, '', NULL),
(34, 'ga', 'sg', 0.342119, 32.595406, '', NULL),
(35, 'gt', 'hr', 0.327185, 32.612057, '', NULL),
(36, 'Fas', 'Nakawa', 0.335081, 32.620983, 'hot', NULL),
(37, 'HTN', 'Lugogo', 0.337999, 32.598667, 'carshop', NULL),
(38, 'sec', 'school', 0.349672, 32.614288, 'school', NULL),
(39, 'Kayizzi SS', 'Muyenga', 0.348814, 32.604504, 'school', NULL),
(40, 'dhdhd', 'dhdh', 0.327528, 32.575836, 'dhdhd', NULL),
(41, 'hs', 'dh', 0.337656, 32.598667, 'dh', NULL),
(42, 'ghhhh', 'hfhffhfh', 0.342977, 32.604332, 'fhfhfhh', NULL),
(43, 'dhdhdh', 'dhdhsh', 0.353277, 32.599697, 'dshsh', NULL),
(44, 'nbc', 'nbc', 0.336111, 32.593346, 'the', NULL),
(45, 'fhfh', 'fgdg', 0.339029, 32.596779, 'dhhh', NULL),
(46, 'tyyy', 'yyyy', 0.338514, 32.597466, 'yyy', NULL),
(47, 'Cyber', 'Munyonyo', 0.336626, 32.609997, 'IT', NULL),
(48, 'v', 'b', 0.339201, 32.597466, 'b', NULL),
(49, 'gg', 'hh', 0.335768, 32.598324, 'hh', NULL),
(50, 'cx', 'xx', 0.328215, 32.589569, 'we', NULL),
(51, 're', 'dd', 0.344007, 32.600040, 'dd', NULL),
(52, 'here', 'here', 0.334909, 32.599697, 'hhh', NULL),
(53, 'g', 'g', 0.341604, 32.605877, 'g', NULL),
(54, 'gg', 'gg', 0.343836, 32.608967, 'fff', NULL),
(55, 'hh', 'h', 0.338343, 32.599525, 'h', NULL),
(56, 'm', 'm', 0.331648, 32.603130, 'm', NULL),
(57, 'yt', 'ty', 0.333879, 32.593346, 'yr', NULL),
(58, 'g', 'gqg', 0.332163, 32.595921, 'g', NULL),
(59, 'vc', 'v', 0.355852, 32.611198, 'c', NULL),
(60, 'j', 'j', 0.364950, 32.605019, 'j', NULL),
(61, 'g', 'g', 0.338514, 32.604160, 'g', NULL),
(62, 'tryry', 'rry', 0.334223, 32.597980, 'wuwu', NULL),
(63, 'm', 'm', 0.351045, 32.615490, 'm', NULL),
(64, 'b', 'b', 0.345724, 32.605877, 'b', NULL),
(65, 'gh', 'gh', 0.332335, 32.590942, 'gh', NULL),
(66, 'd', 'd', 0.344179, 32.604332, 'd', NULL),
(67, 'jh', 'jh', 0.322207, 32.581673, 'jh', NULL),
(68, 'dg', 'dg', 0.333879, 32.593861, 'gg', NULL),
(69, 'io', 'io', 0.343321, 32.602959, 'io', NULL),
(70, 'Derrick Apartments', 'Nakasero', 0.320662, 32.580383, 'accomodation', NULL),
(71, 'Test Business', 'Test Location', 0.334909, 32.570797, 'Courier', NULL),
(72, 'ETM Church', 'Kampala (U), Makindye Salaama Rd', 0.361688, 32.581673, 'Envagelical/Pentecostal', NULL),
(73, 'Cyber Dynamics', 'Sentema Road', 0.331082, 32.535690, 'ICT/Software/Computing', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Police Force/UPDF'),
(2, 'Beauty/Saloon/Bridal Services'),
(3, 'Textile/Clothing'),
(4, 'Music/Entertainment'),
(5, 'ICT/Software/Technicians'),
(6, 'Foods/Drinks/Restaurants');

-- --------------------------------------------------------

--
-- Table structure for table `circle`
--

CREATE TABLE IF NOT EXISTS `circle` (
  `relId` int(11) NOT NULL AUTO_INCREMENT,
  `Product` varchar(50) NOT NULL,
  `relType` int(1) NOT NULL,
  `price` varchar(50) NOT NULL,
  `bussID` int(11) NOT NULL,
  `usrId` int(11) NOT NULL,
  PRIMARY KEY (`relId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `circle`
--

INSERT INTO `circle` (`relId`, `Product`, `relType`, `price`, `bussID`, `usrId`) VALUES
(1, 'Milk', 0, '', 12, 0),
(2, 'Milk', 1, '', 13, 0),
(3, 'Eggs', 1, '', 4, 0),
(4, 'Eggs', 0, '', 7, 0),
(5, 'Software', 0, '200,000 UGX - 800,000 UGX', 12, 0),
(6, 'Honey', 0, '', 0, 0),
(12, 'Plain T-Shirts', 1, '', 52, 1),
(14, 'Pineapples', 0, '', 36, 1),
(15, 'Branded T-Shirts', 0, '11,000 UGX - 25,000 UGX', 54, 1),
(16, 'Software', 1, '1,500,000 UGX - 10,000,000 UGX', 52, 1),
(17, 'Software', 0, '300,000 UGX - 1,500,000 UGX', 15, 1),
(18, 'Rolex', 0, '500UGX', 1, 1),
(20, 'Cheese', 0, '3400 UGX - 5000 UGX', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_reg`
--

CREATE TABLE IF NOT EXISTS `customer_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salutation` varchar(50) DEFAULT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `phone_no` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `customer_reg`
--

INSERT INTO `customer_reg` (`id`, `salutation`, `first_name`, `last_name`, `gender`, `phone_no`) VALUES
(5, 'salutation', '', '', 'gender', ''),
(6, 'salutation', '', '', 'gender', ''),
(7, 'salutation', '', '', 'gender', ''),
(8, 'salutation', '', '', 'gender', ''),
(9, 'salutation', '', '', 'gender', ''),
(10, 'Mr', 'Sowed', 'Mirembe', 'Female', '1234'),
(11, 'Mr', 'Sowed', 'Mirembe', 'Female', '1234'),
(12, 'Mr', 'Sowed', 'Mirembe', 'Female', '1234'),
(13, 'Mr', 'Sowed', 'Mirembe', 'Female', '1234'),
(14, 'Mr', 'Sowed', 'Mirembe', 'Female', '1234'),
(15, 'Mr', 'Sowed', 'Mirembe', 'Female', '1234'),
(16, 'Mr', 'Sowed', 'Mirembe', 'Female', '1234'),
(17, 'Mr', 'Sowed', 'Mirembe', 'Female', '1234'),
(18, 'Mr', 'Sowed', 'Mirembe', 'Female', '1234'),
(19, 'Mr', 'Sowed', 'Mirembe', 'Female', '1234'),
(20, 'Mr', 'Sowed', 'Mirembe', 'Female', '1234'),
(21, 'Mr', 'Sowed', 'Mirembe', 'Female', '1234'),
(22, 'salutation', '', '', 'gender', ''),
(23, 'salutation', '', '', 'gender', ''),
(24, 'salutation', '', '', 'gender', ''),
(25, 'Mrs', 'Jean', 'Nalu', 'Male', '0787623601'),
(26, 'salutation', '', '', 'gender', ''),
(27, 'salutation', '', '', 'gender', ''),
(28, 'salutation', '', '', 'gender', ''),
(29, 'Ms', 'Deks', 'Batwala', 'Female', '1234'),
(30, 'Ms', 'Deks', 'Batwala', 'Female', '1234'),
(31, 'Mr', 'Der Ick', 'Mirembe', 'Male', '0787623601'),
(32, 'salutation', '', '', 'gender', ''),
(33, 'salutation', '', '', 'gender', ''),
(34, 'salutation', '', '', 'gender', ''),
(35, 'salutation', '', '', 'gender', ''),
(36, 'salutation', '', '', 'gender', ''),
(37, 'salutation', '', '', 'gender', ''),
(38, 'salutation', '', '', 'gender', ''),
(39, 'salutation', '', '', 'gender', ''),
(40, 'salutation', '', '', 'gender', ''),
(41, 'salutation', '', '', 'gender', ''),
(42, 'salutation', '', '', 'gender', ''),
(43, 'salutation', '', '', 'gender', ''),
(44, 'Mr', '', '', 'gender', ''),
(45, 'Mr', 'Derrick', 'Josh', 'Male', 'ff'),
(46, 'Mrs', 'Derrick', 'Mirembe', 'Female', '0787623601'),
(47, 'Mr', 'Jonah', 'Kayizzi', 'Male', '0787623601'),
(48, 'Mr', 'Derrick', 'Mulinde', 'Female', '1234'),
(49, 'Mr', 'Derrick', 'Kintu', 'Male', '0787623601'),
(50, 'Mr', 'Derrick', 'Mulinde', 'Male', '0787623601'),
(51, 'Ms', 'Derrick', 'Mulinde', 'Male', '0787623601');

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE IF NOT EXISTS `featured` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  `bussID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `featured`
--

INSERT INTO `featured` (`id`, `category`, `bussID`) VALUES
(1, 'Accomodation', 1),
(2, 'Business', 21),
(3, 'Education', 2),
(4, 'Food&Drinks', 5),
(5, 'Education', 8),
(6, 'Entertainment', 10),
(7, 'Health', 16),
(8, 'Shopping', 18),
(9, 'Sports&Outdoor', 52),
(10, 'Tour&Travel', 47),
(11, 'Vehicle', 54),
(12, 'Worship', 17),
(13, 'Event', 17),
(14, 'Event', 18),
(15, 'Event', 16),
(16, 'Event', 15),
(17, 'Event', 14);

-- --------------------------------------------------------

--
-- Table structure for table `gigs`
--

CREATE TABLE IF NOT EXISTS `gigs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gig` varchar(200) DEFAULT NULL,
  `category` varchar(40) DEFAULT NULL,
  `sub_category` varchar(40) NOT NULL,
  `price` varchar(40) NOT NULL,
  `duration` varchar(40) NOT NULL,
  `tel_no` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `whatsapp` varchar(40) DEFAULT NULL,
  `skype` varchar(30) NOT NULL,
  `location` text,
  `region` varchar(50) NOT NULL,
  `detail` longtext,
  `logo` varchar(100) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `dateAdded` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `gigs`
--

INSERT INTO `gigs` (`id`, `gig`, `category`, `sub_category`, `price`, `duration`, `tel_no`, `email`, `website`, `whatsapp`, `skype`, `location`, `region`, `detail`, `logo`, `rating`, `user_id`, `active`, `dateAdded`) VALUES
(1, 'I can help you manage you facebook pages', '2', 'Social Media Pages', 'For 30,000 UGX', 'For a Week', '0795334455', 'jonahkayizzi@yahoo.com', '', '0759223526', 'jonah.kayizzi', 'Salaama, Munyonyo', 'Kampala', 'I will even submit weekly reports', 'default_558939806.gif', 0, 22, 0, '2016-01-21 12:48:09'),
(2, 'I  can do good base voice overs for you', '10', 'Greetings Cards', 'For 30,000 UGX', 'For a Week', '0795334455', 'jonahkayizzi@yahoo.com', '', '0759223526', 'jonah.kayizzi', 'Salaama, Munyonyo', '', 'I have done songs with alot of popular artists', 'yuunga is online_1065208713.jpg', 0, 22, 0, '2016-01-22 08:35:53'),
(10, 'I can write for you love songs', '5', 'Singers & Song Writers', 'For 200,000 per 5 songs', 'Within 5 days', '0795334455', 'jonahkayizzi@yahoo.com', '', '0759223526', 'jonah.kayizzi', 'Munyonyo', 'Entebbe', 'I have written some songs for Aga Naga & Aziz Azion', '12144765_1496946423937845_7757727018286905135_n_286935917.jpg', 0, 22, 0, '2016-01-25 10:08:44'),
(11, 'I design wonderful animations for you', '1', 'Cartoons', 'For 30,000 UGX', 'With in 2 days', '0786100977', 'jonahkayizzi@yahoo.com', '', '0759223526', 'jonah.kayizzi', 'Kasangati', 'Mbale', '3 D Models', 'data model_1326024339.png', 0, 22, 0, '2016-02-05 08:45:53');

-- --------------------------------------------------------

--
-- Table structure for table `gig_users`
--

CREATE TABLE IF NOT EXISTS `gig_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sal` varchar(5) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `salt` varchar(128) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `gig_users`
--

INSERT INTO `gig_users` (`id`, `sal`, `fname`, `lname`, `phone_no`, `gender`, `username`, `email`, `password`, `salt`, `hash`, `active`) VALUES
(1, 'Mr', 'Alexia', 'Nalubowa', '0787623601', 'Female', 'Alexia', 'owa@yahoo.com', 'c7142006dca00f11c02d05aad5674331d24fdc4a655a20eb80939744aa6050b58bcb01d19732d12cf18a3e2bc8e7eee99fcd21f5a31413245018a91e5c309320', '836333e666869738a88cec48b66d8e7d5ad26013b1adbc06c38fcca405ac7b450b2bd44848a9807cb7e3fe5935f655cc4c086d6df5c09a1ccd47dc2c11335328', 'd86ea612dec96096c5e0fcc8dd42ab6d', 1),
(2, 'Mr', 'Henry', 'Kisekka', '', 'Male', 'Henry', 'kisekka@gmail.com', 'f94cbc24f89fad36d3de6883e4e39e73247f297b01278bd35413b16cf8ba5bcd0967bd5068e906a6825bd5fe057be3d6274518d105714bd5ae5afbff9c4cf215', '00322943a4d0c3400658b53e07e5bac38b336df9122497b934be3fb01a1d6692431ac5d81cd567e3cbf64ac30cd6d6abadb9c70cde404a3d52b031296af02360', 'f5f8590cd58a54e94377e6ae2eded4d9', 1),
(3, 'Mr', 'John', 'Ssempa', '0787623601', 'Male', 'manager', 'jonahkayizzi@cyberdynamics.co.ug', 'c1c2538ba1c7ece3a900b94b73dbca9abcd1786d14489a8e45f408b5ecb6a40386c58da91cce8dc7ecb9f360e10df4df0fd6fc5e4e7230959bb4523d7a923529', '5604ee27c51956c940bebfb6fdcc101c4f60b146d896b6b71e5f40881977da07738d955f447e4fdc6cbd08306286bae0a836cd22ebafff8b77b8fe10c97320c0', '7f5d04d189dfb634e6a85bb9d9adf21e', 1),
(4, 'Mr', 'Derrick', 'Mulinde', '0787623601', 'Male', 'muilnde', 'djmulinde@gmail.com', 'e6f5b29cdc44bb1ff7b93c0ced691d9795d4fb7e896f86709d60ce6d2b5c379f1ce03f02825fd19b67116c53a1ea6c88561ef8b3302e4a3c9038456b1a9389eb', '11aeb8af591dc9f96cbd7e50a871c26d2943bd91c0e203e678ccad8ceae714fda5fb0933c76097cf7f61a433373a9bb50879bbdcee199840ed9104e09be40cb0', 'f7664060cc52bc6f3d620bcedc94a4b6', 1),
(5, 'Mr', 'Derrick', 'Mulinde', '0787623601', 'Male', 'derrick', 'derrick@yahoo.com', 'e6e58f2238ba850b9bebb4104db46984bd69c8a60d7fffa4d47f7fe9b20ce3a6287a2f95f20573ffe5a0a4b7890a541ad61758a9a391cbb1d4e33b5064464a4a', '527c0f2473dcd8bc614a6064813a92827a6a16048bd406276b516f0bc373bead044eb420d6f8f92eab7b74d530522ee6a89e981932f1e3f496cf1ad47e2e97b8', 'ede7e2b6d13a41ddf9f4bdef84fdc737', 0),
(6, 'Mr', 'Alex', 'Ssebugwawo', '0787623601', 'Male', 'Ssebugwawo', 'alex@yahoo.com', '5c8d25eb3a648125fc2f89d093b760ee37dc1702fe9133a2f34187516aeebe6fd87c8c50dd7f23c0a3d698c7824a738e1d9c0e43b3725c1b065f49ae48767b0e', '87b77c49c5a0dfa30bd253dfaf94bee9c3bae38cd0bee77b3e55cb3c5978bfa0626cea92154804e64d2a1838607251663692f83a857a6f2bd5c4126d96f3857c', 'fe131d7f5a6b38b23cc967316c13dae2', 0),
(7, 'Mr', 'Derrick', 'Mulinde', '0787623601', 'Male', 'mulinde', 'mulinde@gamil.com', '3fb5eb8bbe8bf181bbb2104d65c5ae4ab421bb0abbe71e2ceb64c27f880c09823f6ddfec33ebfc21f2a4e330540b1ccd262ebb10ef0daf6837f91dac94e4ae7f', '391298fa19de1e2faeae7e350b4f215dbf142af3b23e0626966d048a58da28664ba7210486195901ddc325e33041f1750f3e5e0eaca74cd01ab930cbbe76ff45', 'f2fc990265c712c49d51a18a32b39f0c', 0),
(8, 'Mr', 'Chris', 'Rock', '0787623601', 'Female', 'chris', 'chris@gmail.com', '18b4e757644e5a8d908a3b2a861339e98eb16a94b4d1e70d7409a13920184ab8bec346a7c243b495141b864532f6e66df394f34c250101f798c968eb7deae26f', 'e1bc5fd228df05254924d1cdb014b702ba1231cc537461cddd5453f1154db34f3c3beaf78cbdf65f8032e1e7c5ddaff5aa52c23429b90ea282cf575615e18331', '1cc3633c579a90cfdd895e64021e2163', 0),
(9, 'Mr', 'Derrick', 'Mulinde', '0787623601', 'Male', 'admin', 'admin@gmail.com', '31f45a2c05a6b836c64c61db4ebc14e3c57b3aff5be59af5f11d58f21aa7a6a51b7b669069cda1c54c914621b763290ca7c15bafea914d667d3e93d9bfb37299', '7a8c5e4430132c7cd2a46f253efd078528bbcd98cedf5f498d47c85adac4a5574642b4251c442ed107d283657a8c4ddbdd8f3e1610f5f27e44a78aeb7118b38f', 'b55ec28c52d5f6205684a473a2193564', 0),
(10, 'Mr', 'Allan', 'Kayanja', '0787623601', 'Male', 'allan', 'allan@gmail.com', '54e40a572d2da538e1abecbfd93523f14c74082eaa31605102b4e65777f5d502f0ca29ab7857c9230e18bf85d49a1c650229100ab422236f9598cddbafaa3058', '5c53f56e9a2cd605f08c13748569385397df183a512ce22d70cad84ba9ffe3ce22da7356c0aff3071386a7d107d9d3238c23a56b70b8199647d94d1c19bf43a3', '07c5807d0d927dcd0980f86024e5208b', 0),
(11, 'Mr', 'Kevin', 'Hart', '0787623601', 'Male', 'kevinhart', 'kevin@yahoo.com', 'e5f171f736427d767aa947d77d60b9ccaa2db28bc38f8fdae314cb56cf5d480a49bb4c980df5a0b918ae0b9b16f25a4921704fcd63409540d93598ef4e133829', '0324d07431b901d08611fb0f651595d181e995a27eec7d31e3b0dff97ec3b97128ba5ae704bc50a2e8e0f897858b3ea47682ece4c1fdac17cad38c67528645ea', 'b7bb35b9c6ca2aee2df08cf09d7016c2', 0),
(12, 'Mr', 'Kyuka', 'Isaac', '0787623601', 'Female', 'kyuka', 'kyuka@gmail.com', '63da27a4049acd01b6f6040837f4bd5b69b94d2cbd0ddbd981009c29b4d75559b7f1a5b551040fc1815b18464aa9bdd0aa9b639bca1db2a462095c4fe51e8df3', 'bd3d133ce128ab6f172d4be7c2bb8406652a9b203f960bc22c4f60a0631c64a82579cd7042be3968e6976572a77d4aae10722fc33dab65ec81a8632b16236dd2', '64223ccf70bbb65a3a4aceac37e21016', 0),
(13, 'Mrs', 'jdjdDJ', 'DDDJ', '8588', 'Female', 'JJFJF', 'FHF@JFJF.COM', 'a2a847de0b8fe26b40fdda014ba66b622c8e9e2593c1cb45ea672753c373d796728194578faa3847150cdcebf073ff48987d3bb5d20e45683e7ab2b7b39f6098', 'c5d77f36a7de203d8bbfcfa000c5aef530e114fe46a0c09cb28b428f99638629c8937d0387d086f730d52dda1996f18b1ae3cc859adc0a7e7475ce8fe9e7e878', '30ef30b64204a3088a26bc2e6ecf7602', 0),
(14, 'Ms', 'Sowed', 'Castelli', '0787623601', 'Female', 'castelli', 'castell@yahoo.com', '8a090ae3f774e80e968f9f1653feaf849d4dddd59161194d320975746a4769fbd4afb5fb764ab6d83507c23ed9a434f8ff50342bdd746b14064485b901a8efb0', '56ee3e29c8e3fac1f92fe53c11e5c757c5f6accea31c9cc6123fb2dbef4405ebef3dc2f862b6987957ebefdc4e2f56b0be2223287250d0ed08dadaad10c41d46', 'c16a5320fa475530d9583c34fd356ef5', 0),
(15, 'Mr', 'rryyr', 'ryryr', '4834', 'Male', 'djddj', 'hffh@fhff.com', '12c4dbcb13f759dfa9290c1135ae86c63829cdb2cd3d999c23c11fdeb43c8bd38078b7926d741795799491876b0ccce5b48d1a0cab01eea2e5dbdbc6bc32d2e8', '64238572f738f954bd1322bea5ff788541110d25018d1eab30c860ff601466e7c15641d5ef70c8d602844b536a284941079356064542f46fc92e5df395d116de', '3988c7f88ebcb58c6ce932b957b6f332', 1),
(16, 'Mr', 'djdjd', 'djdj', '344', 'Male', 'djdjdj', 'hrhr@fjf.com', 'e74ad1ba05150eb3f69a4f28a14dd4c6bf9081007771b05b9b88b632d742c93f65037f986fba7412ab2dfe0c9625fd7fe5902240d8d9debae52eaf10df792b9e', '223c7fb94e5d49964aa340559dcb4a6fa18bb20367a116fa209bf8ce9543beb41b756e713a6f8a2fe5bb826912d60a433bd24d99ec7260b3f0553d2a0af1f3f6', '3cef96dcc9b8035d23f69e30bb19218a', 0),
(17, 'Mr', 'dhdhd', 'fhdh', 'dhdhd', 'Male', 'dd', 'dhdhd@fjf.com', '0f5b0e68f3e15cc252a894a065c78b240c5557f9bf0666c1a6bf46d48748a6e544939c61d28c990be1d7d0c40c0f6b094c99a5198ad31b0674b92925a831ae3f', '258401b5aa583f17eb783e770b49cfdbeea6553b6b4eaadf5f4ef1c5c12da6d8fa0e361b87fc9bdad0898150994ed407b298225b55bba734564655719db4ea0c', '9766527f2b5d3e95d4a733fcfb77bd7e', 0),
(18, 'Mr', 'ffhhfh', 'hhfhf', '123', 'Male', 'fjfj', 'fhf@fhf.com', 'bac40aa4ca4da5331bdbef2dafef0134f359251dbd5afde2bd2b1f6b43a2c0b9190be3aa65cb3513b4221b57ff2512498a9e44a0f275a05738ee789bba01a159', 'da06c688d1b131e4b93afaa506eb41271a290338d5e63def30e53598ace52e6061045ecda2ea531a4ae12e9e3d3ab1df3b01d8a723b8ce9e2ad5c692873a2641', '3b5dca501ee1e6d8cd7b905f4e1bf723', 1),
(19, 'Mr', 'qqq', 'qq', '112', 'Male', 'eheh', 'eh@fg.com', 'df8df358ebfbc8561108b1fb8c6dc3f73ae7d27ba4688c3b247ae9977c118054657aa781ebf75c5063985605e0ae488904b8a735dcb81d7182ceb26e43954a29', 'e08ada620982a561f0c7afe14ea0eb80b842e77905695a8ffe5e8b54839e89ea53b5c18a1e230af3be669bb28845ea95522a65f838366cb501683511c587d557', '288cc0ff022877bd3df94bc9360b9c5d', 0),
(20, 'Mrs', 'Tihh', 'rrir', '49559`', 'Male', 'fhfh', 'hghghg@fjff.com', '7a0d099cedf601179e37eed5225ece65814d0e56772af788205e64151680cad93a649acacb9f889f3072ed00b8a671792083f70f8c9faa1f47f9b8283cc0854c', '0c8a5b3234b89e081ee2d8ad75e95e166731fc313b975719bf6ff04279da5b710d27d4883bbae272f79f2cb931060a517421c9a1b923f12e8e74e0673c968359', '46ba9f2a6976570b0353203ec4474217', 1),
(21, 'Mr', 'Derrick', 'Gug', '0779454647', 'Male', 'Jonah', 'dfdfd@gh.com', '284f98d44556651724268f94fa6f139d366402dc325bfbcfc2a3ca21817e59a9e500d607af4fb402455284092a8db68c3ee972575ac22b8235615f07ddb571a3', 'c4e79a3941dc846f57552affc1d8f887e4d96b496672a5cfe7c6611ffe1f5536a41ad84726df7eb36d2cf32cd9a97debb998151c885a24dc59d6db65c4cb72d7', 'dc912a253d1e9ba40e2c597ed2376640', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `user_id` int(11) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`user_id`, `time`) VALUES
(5, '1446385351'),
(9, '1446417132'),
(1, '1449052718'),
(1, '1449053397'),
(1, '1451210344'),
(1, '1453361089');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sal` varchar(5) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `userType` varchar(20) NOT NULL,
  `salt` varchar(128) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `sal`, `fname`, `lname`, `phone_no`, `gender`, `username`, `email`, `password`, `userType`, `salt`, `hash`, `active`) VALUES
(1, 'Mr', 'Alexia', 'Nalubowa', '0787623601', 'Female', 'Alexia', 'owa@yahoo.com', 'c7142006dca00f11c02d05aad5674331d24fdc4a655a20eb80939744aa6050b58bcb01d19732d12cf18a3e2bc8e7eee99fcd21f5a31413245018a91e5c309320', 'BUSINESS', '836333e666869738a88cec48b66d8e7d5ad26013b1adbc06c38fcca405ac7b450b2bd44848a9807cb7e3fe5935f655cc4c086d6df5c09a1ccd47dc2c11335328', 'd86ea612dec96096c5e0fcc8dd42ab6d', 1),
(2, 'Mr', 'Henry', 'Kisekka', '', 'Male', 'Henry', 'kisekka@gmail.com', 'f94cbc24f89fad36d3de6883e4e39e73247f297b01278bd35413b16cf8ba5bcd0967bd5068e906a6825bd5fe057be3d6274518d105714bd5ae5afbff9c4cf215', 'BUSINESS', '00322943a4d0c3400658b53e07e5bac38b336df9122497b934be3fb01a1d6692431ac5d81cd567e3cbf64ac30cd6d6abadb9c70cde404a3d52b031296af02360', 'f5f8590cd58a54e94377e6ae2eded4d9', 1),
(3, 'Mr', 'John', 'Ssempa', '0787623601', 'Male', 'manager', 'jonahkayizzi@cyberdynamics.co.ug', 'c1c2538ba1c7ece3a900b94b73dbca9abcd1786d14489a8e45f408b5ecb6a40386c58da91cce8dc7ecb9f360e10df4df0fd6fc5e4e7230959bb4523d7a923529', 'BUSINESS', '5604ee27c51956c940bebfb6fdcc101c4f60b146d896b6b71e5f40881977da07738d955f447e4fdc6cbd08306286bae0a836cd22ebafff8b77b8fe10c97320c0', '7f5d04d189dfb634e6a85bb9d9adf21e', 1),
(4, 'Mr', 'Derrick', 'Mulinde', '0787623601', 'Male', 'muilnde', 'djmulinde@gmail.com', 'e6f5b29cdc44bb1ff7b93c0ced691d9795d4fb7e896f86709d60ce6d2b5c379f1ce03f02825fd19b67116c53a1ea6c88561ef8b3302e4a3c9038456b1a9389eb', 'BUSINESS', '11aeb8af591dc9f96cbd7e50a871c26d2943bd91c0e203e678ccad8ceae714fda5fb0933c76097cf7f61a433373a9bb50879bbdcee199840ed9104e09be40cb0', 'f7664060cc52bc6f3d620bcedc94a4b6', 1),
(5, 'Mr', 'Derrick', 'Mulinde', '0787623601', 'Male', 'derrick', 'derrick@yahoo.com', 'e6e58f2238ba850b9bebb4104db46984bd69c8a60d7fffa4d47f7fe9b20ce3a6287a2f95f20573ffe5a0a4b7890a541ad61758a9a391cbb1d4e33b5064464a4a', 'BUSINESS', '527c0f2473dcd8bc614a6064813a92827a6a16048bd406276b516f0bc373bead044eb420d6f8f92eab7b74d530522ee6a89e981932f1e3f496cf1ad47e2e97b8', 'ede7e2b6d13a41ddf9f4bdef84fdc737', 0),
(6, 'Mr', 'Alex', 'Ssebugwawo', '0787623601', 'Male', 'Ssebugwawo', 'alex@yahoo.com', '5c8d25eb3a648125fc2f89d093b760ee37dc1702fe9133a2f34187516aeebe6fd87c8c50dd7f23c0a3d698c7824a738e1d9c0e43b3725c1b065f49ae48767b0e', 'BUSINESS', '87b77c49c5a0dfa30bd253dfaf94bee9c3bae38cd0bee77b3e55cb3c5978bfa0626cea92154804e64d2a1838607251663692f83a857a6f2bd5c4126d96f3857c', 'fe131d7f5a6b38b23cc967316c13dae2', 0),
(7, 'Mr', 'Derrick', 'Mulinde', '0787623601', 'Male', 'mulinde', 'mulinde@gamil.com', '3fb5eb8bbe8bf181bbb2104d65c5ae4ab421bb0abbe71e2ceb64c27f880c09823f6ddfec33ebfc21f2a4e330540b1ccd262ebb10ef0daf6837f91dac94e4ae7f', 'BUSINESS', '391298fa19de1e2faeae7e350b4f215dbf142af3b23e0626966d048a58da28664ba7210486195901ddc325e33041f1750f3e5e0eaca74cd01ab930cbbe76ff45', 'f2fc990265c712c49d51a18a32b39f0c', 0),
(8, 'Mr', 'Chris', 'Rock', '0787623601', 'Female', 'chris', 'chris@gmail.com', '18b4e757644e5a8d908a3b2a861339e98eb16a94b4d1e70d7409a13920184ab8bec346a7c243b495141b864532f6e66df394f34c250101f798c968eb7deae26f', 'BUSINESS', 'e1bc5fd228df05254924d1cdb014b702ba1231cc537461cddd5453f1154db34f3c3beaf78cbdf65f8032e1e7c5ddaff5aa52c23429b90ea282cf575615e18331', '1cc3633c579a90cfdd895e64021e2163', 0),
(9, 'Mr', 'Derrick', 'Mulinde', '0787623601', 'Male', 'admin', 'admin@gmail.com', '31f45a2c05a6b836c64c61db4ebc14e3c57b3aff5be59af5f11d58f21aa7a6a51b7b669069cda1c54c914621b763290ca7c15bafea914d667d3e93d9bfb37299', 'BUSINESS', '7a8c5e4430132c7cd2a46f253efd078528bbcd98cedf5f498d47c85adac4a5574642b4251c442ed107d283657a8c4ddbdd8f3e1610f5f27e44a78aeb7118b38f', 'b55ec28c52d5f6205684a473a2193564', 0),
(10, 'Mr', 'Allan', 'Kayanja', '0787623601', 'Male', 'allan', 'allan@gmail.com', '54e40a572d2da538e1abecbfd93523f14c74082eaa31605102b4e65777f5d502f0ca29ab7857c9230e18bf85d49a1c650229100ab422236f9598cddbafaa3058', 'BUSINESS', '5c53f56e9a2cd605f08c13748569385397df183a512ce22d70cad84ba9ffe3ce22da7356c0aff3071386a7d107d9d3238c23a56b70b8199647d94d1c19bf43a3', '07c5807d0d927dcd0980f86024e5208b', 0),
(11, 'Mr', 'Kevin', 'Hart', '0787623601', 'Male', 'kevinhart', 'kevin@yahoo.com', 'e5f171f736427d767aa947d77d60b9ccaa2db28bc38f8fdae314cb56cf5d480a49bb4c980df5a0b918ae0b9b16f25a4921704fcd63409540d93598ef4e133829', 'BUSINESS', '0324d07431b901d08611fb0f651595d181e995a27eec7d31e3b0dff97ec3b97128ba5ae704bc50a2e8e0f897858b3ea47682ece4c1fdac17cad38c67528645ea', 'b7bb35b9c6ca2aee2df08cf09d7016c2', 0),
(12, 'Mr', 'Kyuka', 'Isaac', '0787623601', 'Female', 'kyuka', 'kyuka@gmail.com', '63da27a4049acd01b6f6040837f4bd5b69b94d2cbd0ddbd981009c29b4d75559b7f1a5b551040fc1815b18464aa9bdd0aa9b639bca1db2a462095c4fe51e8df3', '', 'bd3d133ce128ab6f172d4be7c2bb8406652a9b203f960bc22c4f60a0631c64a82579cd7042be3968e6976572a77d4aae10722fc33dab65ec81a8632b16236dd2', '64223ccf70bbb65a3a4aceac37e21016', 0),
(13, 'Mrs', 'jdjdDJ', 'DDDJ', '8588', 'Female', 'JJFJF', 'FHF@JFJF.COM', 'a2a847de0b8fe26b40fdda014ba66b622c8e9e2593c1cb45ea672753c373d796728194578faa3847150cdcebf073ff48987d3bb5d20e45683e7ab2b7b39f6098', 'BUSINESS', 'c5d77f36a7de203d8bbfcfa000c5aef530e114fe46a0c09cb28b428f99638629c8937d0387d086f730d52dda1996f18b1ae3cc859adc0a7e7475ce8fe9e7e878', '30ef30b64204a3088a26bc2e6ecf7602', 0),
(14, 'Ms', 'Sowed', 'Castelli', '0787623601', 'Female', 'castelli', 'castell@yahoo.com', '8a090ae3f774e80e968f9f1653feaf849d4dddd59161194d320975746a4769fbd4afb5fb764ab6d83507c23ed9a434f8ff50342bdd746b14064485b901a8efb0', 'BUSINESS', '56ee3e29c8e3fac1f92fe53c11e5c757c5f6accea31c9cc6123fb2dbef4405ebef3dc2f862b6987957ebefdc4e2f56b0be2223287250d0ed08dadaad10c41d46', 'c16a5320fa475530d9583c34fd356ef5', 0),
(15, 'Mr', 'rryyr', 'ryryr', '4834', 'Male', 'djddj', 'hffh@fhff.com', '12c4dbcb13f759dfa9290c1135ae86c63829cdb2cd3d999c23c11fdeb43c8bd38078b7926d741795799491876b0ccce5b48d1a0cab01eea2e5dbdbc6bc32d2e8', 'BUSINESS', '64238572f738f954bd1322bea5ff788541110d25018d1eab30c860ff601466e7c15641d5ef70c8d602844b536a284941079356064542f46fc92e5df395d116de', '3988c7f88ebcb58c6ce932b957b6f332', 1),
(16, 'Mr', 'djdjd', 'djdj', '344', 'Male', 'djdjdj', 'hrhr@fjf.com', 'e74ad1ba05150eb3f69a4f28a14dd4c6bf9081007771b05b9b88b632d742c93f65037f986fba7412ab2dfe0c9625fd7fe5902240d8d9debae52eaf10df792b9e', 'BUSINESS', '223c7fb94e5d49964aa340559dcb4a6fa18bb20367a116fa209bf8ce9543beb41b756e713a6f8a2fe5bb826912d60a433bd24d99ec7260b3f0553d2a0af1f3f6', '3cef96dcc9b8035d23f69e30bb19218a', 0),
(17, 'Mr', 'dhdhd', 'fhdh', 'dhdhd', 'Male', 'dd', 'dhdhd@fjf.com', '0f5b0e68f3e15cc252a894a065c78b240c5557f9bf0666c1a6bf46d48748a6e544939c61d28c990be1d7d0c40c0f6b094c99a5198ad31b0674b92925a831ae3f', 'BUSINESS', '258401b5aa583f17eb783e770b49cfdbeea6553b6b4eaadf5f4ef1c5c12da6d8fa0e361b87fc9bdad0898150994ed407b298225b55bba734564655719db4ea0c', '9766527f2b5d3e95d4a733fcfb77bd7e', 0),
(18, 'Mr', 'ffhhfh', 'hhfhf', '123', 'Male', 'fjfj', 'fhf@fhf.com', 'bac40aa4ca4da5331bdbef2dafef0134f359251dbd5afde2bd2b1f6b43a2c0b9190be3aa65cb3513b4221b57ff2512498a9e44a0f275a05738ee789bba01a159', 'BUSINESS', 'da06c688d1b131e4b93afaa506eb41271a290338d5e63def30e53598ace52e6061045ecda2ea531a4ae12e9e3d3ab1df3b01d8a723b8ce9e2ad5c692873a2641', '3b5dca501ee1e6d8cd7b905f4e1bf723', 1),
(19, 'Mr', 'qqq', 'qq', '', 'Male', 'eheh', 'eh@fg.com', 'df8df358ebfbc8561108b1fb8c6dc3f73ae7d27ba4688c3b247ae9977c118054657aa781ebf75c5063985605e0ae488904b8a735dcb81d7182ceb26e43954a29', '', 'e08ada620982a561f0c7afe14ea0eb80b842e77905695a8ffe5e8b54839e89ea53b5c18a1e230af3be669bb28845ea95522a65f838366cb501683511c587d557', '288cc0ff022877bd3df94bc9360b9c5d', 0),
(20, 'Mrs', 'Tihh', 'rrir', '49559`', 'Male', 'fhfh', 'hghghg@fjff.com', '7a0d099cedf601179e37eed5225ece65814d0e56772af788205e64151680cad93a649acacb9f889f3072ed00b8a671792083f70f8c9faa1f47f9b8283cc0854c', '', '0c8a5b3234b89e081ee2d8ad75e95e166731fc313b975719bf6ff04279da5b710d27d4883bbae272f79f2cb931060a517421c9a1b923f12e8e74e0673c968359', '46ba9f2a6976570b0353203ec4474217', 1),
(21, 'Mr', 'Derrick', 'Gug', '0779454647', 'Male', 'Jonah', 'dfdfd@gh.com', '284f98d44556651724268f94fa6f139d366402dc325bfbcfc2a3ca21817e59a9e500d607af4fb402455284092a8db68c3ee972575ac22b8235615f07ddb571a3', '', 'c4e79a3941dc846f57552affc1d8f887e4d96b496672a5cfe7c6611ffe1f5536a41ad84726df7eb36d2cf32cd9a97debb998151c885a24dc59d6db65c4cb72d7', 'dc912a253d1e9ba40e2c597ed2376640', 0),
(22, 'Mr', 'ffdgdfd', 'vcvcvc', '0779454647', 'Male', 'ccsds', 'jonahkayizzi@yahoo.com', 'a090cf834ca2b0c6ad5f8e24b7c9e803321217225fb34ff941956f1bebedbdec30f66d535970228a94427d5fa251aeb3d8eaad200f04ef32f6a2693360dbd627', 'GIG', 'abdf76680d815947ddbd645c2182fefd16639d6fe5441fe77813b01e489441966b2e265f091c1e52d3d02eca5eeb27ea39b94149f90e91b2ddd48300c9a66d6d', 'c06d06da9666a219db15cf575aff2824', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product`) VALUES
('Milk'),
('Coffee'),
('Cakes'),
('Eggs'),
('Sugar'),
('Paper'),
('Salt'),
('Flour'),
('Meat'),
('Sugar'),
('Butter'),
('Honey'),
('Fish'),
('Pineapples'),
('Maize'),
('Cassava'),
('Furniture'),
('Water'),
('Oil'),
('Barley'),
('Cotton'),
('T-Shirts'),
('Shirts'),
('Dresses'),
('Shoes'),
('Camera'),
('Phones'),
('Laptops'),
('Computers'),
('Radios'),
('Electricity'),
('Pens'),
('Calendars'),
('Uniforms'),
('Embroidery'),
('Vehicles'),
('Tyres'),
('Fridges'),
('Cookers'),
('Software'),
('Branded T-Shirts'),
(''),
('Plain T-Shirts'),
('Rolex'),
('Cheese');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bussID` int(11) NOT NULL,
  `rating` int(1) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rating_gig`
--

CREATE TABLE IF NOT EXISTS `rating_gig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gigID` int(11) NOT NULL,
  `rating` int(1) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `review_gig`
--

CREATE TABLE IF NOT EXISTS `review_gig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gigID` int(11) NOT NULL,
  `review` int(1) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `email` text NOT NULL,
  `hash` varchar(32) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `hash`, `active`) VALUES
(1, 'derrick', 'be53d253d6bc3258a8160556dda3e9b2', 'djmulinde@gmail.com', '8efb100a295c0c690931222ff4467bb8', 0),
(2, 'derrick', '17e23e50bedc63b4095e3d8204ce063b', 'djmulinde@gmail.com', '19f3cd308f1455b3fa09a282e0d496f4', 0),
(3, '', 'c922de9e01cba8a4684f6c3471130e4c', '', 'ca9c267dad0305d1a6308d2a0cf1c39c', 0),
(4, '', 'ead81fe8cfe9fda9e4c2093e17e4d024', '', '170c944978496731ba71f34c25826a34', 0),
(5, '', '018dd1e07a2de4a08e6612341bf2323e', '', 'a9a1d5317a33ae8cef33961c34144f84', 0),
(6, '', 'd2cdf047a6674cef251d56544a3cf029', '', '26657d5ff9020d2abefe558796b99584', 0),
(7, '', '53e19f3dbb211f20b20b45668303c1b6', '', '66808e327dc79d135ba18e051673d906', 0),
(8, 'derrick', 'b28d8e3ccb1ff9d46fa2d9e70222c9e7', 'djmulinde@gmail.com', '76dc611d6ebaafc66cc0879c71b5db5c', 0),
(9, 'derrick', 'd7657583058394c828ee150fada65345', 'djmulinde@gmail.com', 'a4a042cf4fd6bfb47701cbc8a1653ada', 0),
(10, 'derrick', '0e7c7d6c41c76b9ee6445ae01cc0181d', 'djmulinde@gmail.com', 'e6b4b2a746ed40e1af829d1fa82daa10', 0),
(11, 'Hotels/Lodges', '7535bbb91c8fde347ad861f293126633', 'djmulinde@gmail.com', 'f4b9ec30ad9f68f89b29639786cb62ef', 0),
(12, 'Hotels/Lodges', '29530de21430b7540ec3f65135f7323c', 'djmulinde@gmail.com', 'da8ce53cf0240070ce6c69c48cd588ee', 0),
(13, 'Hotels/Lodges', '5c80985bd40b8ce792f8c786bb23fe54', 'djmulinde@gmail.com', 'c22abfa379f38b5b0411bc11fa9bf92f', 0),
(14, 'David', '90599c8fdd2f6e7a03ad173e2f535751', 'djmulinde@gmail.com', 'ccb1d45fb76f7c5a0bf619f979c6cf36', 0),
(15, 'jonah', '944bdd9636749a0801c39b6e449dbedc', 'jonah@yahoo.com', 'dc82d632c9fcecb0778afbc7924494a6', 0),
(16, 'jonah', '280cf18baf4311c92aa5a042336587d3', 'jonah@yahoo.com', 'ed3d2c21991e3bef5e069713af9fa6ca', 0),
(17, 'allan', '7a6a74cbe87bc60030a4bd041dd47b78', 'jonah@yahoo.com', '7f6ffaa6bb0b408017b62254211691b5', 0),
(18, 'allan', 'a4fa7175d4757e45eac71a8487751f63', 'jonah@yahoo.com', 'b4288d9c0ec0a1841b3b3728321e7088', 0),
(19, 'allan', '6fe131632103526e3a6e8114c78eb1e1', 'jonah@yahoo.com', '61b4a64be663682e8cb037d9719ad8cd', 0),
(20, 'allan', '5c151c2a9b76f9ef26d7e0f0d00c9a89', 'jonah@yahoo.com', '25ddc0f8c9d3e22e03d3076f98d83cb2', 0),
(21, 'allan', '52947e0ade57a09e4a1386d08f17b656', 'jonah@yahoo.com', 'b5b41fac0361d157d9673ecb926af5ae', 0),
(22, 'allan', '84899ae725ba49884f4c85c086f1b340', 'jonah@yahoo.com', '320722549d1751cf3f247855f937b982', 0),
(23, 'allan', '5d4ae76f053f8f2516ad12961ef7fe97', 'jonah@yahoo.com', '8b5040a8a5baf3e0e67386c2e3a9b903', 0),
(24, 'derrick', '6a450490f238b4ddff085d66a916a206', 'djmulinde@gmail.com', '1aa48fc4880bb0c9b8a3bf979d3b917e', 0),
(25, 'derrick', '398475c83b47075e8897a083e97eb9f0', 'djmulinde@gmail.com', 'c0c7c76d30bd3dcaefc96f40275bdc0a', 0),
(26, 'Allan', 'fc2c7c47b918d0c2d792a719dfb602ef', 'allan@yahoo.com', '00ec53c4682d36f5c4359f4ae7bd7ba1', 0),
(27, 'david', '2f4fe03d77724a7217006e5d16728874', 'david@gmail.com', '55743cc0393b1cb4b8b37d09ae48d097', 0),
(28, 'alex', 'ea81a3d20bf98ef2c9bef9dc24ec777a', 'alex@yahoo.com', '1534b76d325a8f591b52d302e7181331', 0),
(29, '', 'da6cb383f8f9e58f2c8af88a8c0eb65e', '', 'd7a728a67d909e714c0774e22cb806f2', 0),
(30, 'alex', 'd8e1344e27a5b08cdfd5d027d9b8d6de', 'alex@gmail.com', 'cfee398643cbc3dc5eefc89334cacdc1', 0),
(31, 'cranes', 'b4d168b48157c623fbd095b4a565b5bb', 'cranes@gmail.com', '0d7de1aca9299fe63f3e0041f02638a3', 1),
(32, 'Insp', 'cc3d69ed781b16bce06687822ae56e6d', 'djmulinde@gmail.com', '0f840be9b8db4d3fbd5ba2ce59211f55', 1),
(33, 'kasibante', '9d752cb08ef466fc480fba981cfa44a1', 'kasibante@mum', '47d1e990583c9c67424d369f3414728e', 0),
(34, 'kasibante', '3b9d6e5e779c8f46c5765c194a04b59a', 'kasibante@mum', 'd554f7bb7be44a7267068a7df88ddd20', 0),
(35, 'kasibante', '475fbefa9ebfba9233364533aafd02a3', 'kasibante@mum', '5dd9db5e033da9c6fb5ba83c7a7ebea9', 1),
(36, 'kasibante', '2387337ba1e0b0249ba90f55b2ba2521', 'kasibante@mum', '9f61408e3afb633e50cdf1b20de6f466', 0),
(37, 'kasibante', '895daa408f494ad58006c47a30f51c1f', 'kasibante@mum', 'ca9c267dad0305d1a6308d2a0cf1c39c', 0),
(38, 'david', '540393ae7f8b7a7fd6cdf47250b05679', 'david@gmail.com', 'f340f1b1f65b6df5b5e3f94d95b11daf', 1),
(39, 'david', '586f9b4035e5997f77635b13cc04984c', 'david@gmail.com', 'c2aee86157b4a40b78132f1e71a9e6f1', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
