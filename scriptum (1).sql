-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2022 at 10:00 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scriptum`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_pages`
--

CREATE TABLE `active_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `active_pages`
--

INSERT INTO `active_pages` (`id`, `name`, `enabled`) VALUES
(1, 'blog', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `iban` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `bic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `confirm_links`
--

CREATE TABLE `confirm_links` (
  `id` int(11) NOT NULL,
  `link` char(32) NOT NULL,
  `for_order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `confirm_links`
--

INSERT INTO `confirm_links` (`id`, `link`, `for_order`) VALUES
(1, '5ea8adf12d909622cec2e6c4058f9333', 1234),
(2, 'f6dee27b8adc5d7be408cde941987f1a', 1235);

-- --------------------------------------------------------

--
-- Table structure for table `cookie_law`
--

CREATE TABLE `cookie_law` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `theme` varchar(20) NOT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cookie_law`
--

INSERT INTO `cookie_law` (`id`, `link`, `theme`, `visibility`) VALUES
(1, '', 'light-top', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cookie_law_translations`
--

CREATE TABLE `cookie_law_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `learn_more` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cookie_law_translations`
--

INSERT INTO `cookie_law_translations` (`id`, `message`, `button_text`, `learn_more`, `abbr`, `for_id`) VALUES
(1, '', '', '', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `discount_codes`
--

CREATE TABLE `discount_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) NOT NULL,
  `code` varchar(10) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `valid_from_date` int(10) UNSIGNED NOT NULL,
  `valid_to_date` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1-enabled, 0-disabled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity` varchar(255) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `activity`, `username`, `time`) VALUES
(1, 'Go to Pages manage', 'admin', 1648985989),
(2, 'Page status Changed', 'admin', 1648985991),
(3, 'Page status Changed', 'admin', 1648986006),
(4, 'Page status Changed', 'admin', 1648986007),
(5, 'Page status Changed', 'admin', 1648986007),
(6, 'Page status Changed', 'admin', 1648986007),
(7, 'Page status Changed', 'admin', 1648986007),
(8, 'Page status Changed', 'admin', 1648986009),
(9, 'Go to orders page', 'admin', 1648986096),
(10, 'Change status of Order Id 1 to status 1', 'admin', 1648986113),
(11, 'Go to orders page', 'admin', 1648986161),
(12, 'Go to Styling page', 'admin', 1648986174),
(13, 'Change site styling', 'admin', 1648986253),
(14, 'Go to Styling page', 'admin', 1648986253),
(15, 'Go to Settings Page', 'admin', 1648986275),
(16, 'Virtual products visibility changed', 'admin', 1648986283),
(17, 'Go to Settings Page', 'admin', 1648986283),
(18, 'Go to home page', 'admin', 1648986332),
(19, 'Go to History', 'admin', 1648986341),
(20, 'Go to home page', 'admin', 1648986346),
(21, 'Go to Templates Page', 'admin', 1648986552),
(22, 'Go to home page', 'admin', 1648986762),
(23, 'Go to home page', 'admin', 1648986765),
(24, 'Go to Titles / Descriptions page', 'admin', 1648986851),
(25, 'Go to Templates Page', 'admin', 1648986858),
(26, 'Go to Templates Page', 'admin', 1648986871),
(27, 'Go to Settings Page', 'admin', 1648986872),
(28, 'In Slider products visibility changed', 'admin', 1648986885),
(29, 'Go to Settings Page', 'admin', 1648986885),
(30, 'In Slider products visibility changed', 'admin', 1648986918),
(31, 'Go to Settings Page', 'admin', 1648986918),
(32, 'Cookie law information changed', 'admin', 1648986933),
(33, 'Go to Settings Page', 'admin', 1648986933),
(34, 'Go to Settings Page', 'admin', 1648986938),
(35, 'Go to Settings Page', 'admin', 1648986945),
(36, 'Go to Subscribed Emails', 'admin', 1648986948),
(37, 'Go to Subscribed Emails', 'admin', 1648986957),
(38, 'Go to Subscribed Emails', 'admin', 1648986968),
(39, 'Go to orders page', 'admin', 1648986975),
(40, 'Change status of Order Id 2 to status 1', 'admin', 1648986978),
(41, 'Go to orders page', 'admin', 1648986992),
(42, 'Go to brands page', 'admin', 1648987005),
(43, 'Go to brands page', 'admin', 1648987015),
(44, 'Go to brands page', 'admin', 1648987024),
(45, 'Go to brands page', 'admin', 1648987055),
(46, 'Go to products', 'admin', 1648987060),
(47, 'Go to publish product', 'admin', 1648987061),
(48, 'Go to shop categories', 'admin', 1648987061),
(49, 'Go to orders page', 'admin', 1648987062),
(50, 'Go to Subscribed Emails', 'admin', 1648987063),
(51, 'Go to publish product', 'admin', 1648987064),
(52, 'Go to products', 'admin', 1648987066),
(53, 'Go to home page', 'admin', 1648987077),
(54, 'Go to products', 'admin', 1648987107),
(55, 'Go to shop categories', 'admin', 1648987111),
(56, 'Go to orders page', 'admin', 1648987117),
(57, 'Go to brands page', 'admin', 1648987405),
(58, 'Go to publish product', 'admin', 1648987407),
(59, 'Go to home page', 'admin', 1648987409),
(60, 'Go to products', 'admin', 1648987425),
(61, 'Go to publish product', 'admin', 1648987432),
(62, 'Go to shop categories', 'admin', 1648987466),
(63, 'Go to shop categories', 'admin', 1648987501),
(64, 'Go to publish product', 'admin', 1648987530),
(65, 'Success published product', 'admin', 1648987543),
(66, 'Go to products', 'admin', 1648987543),
(67, 'Cant login with - User: adin and Pass: adin', NULL, 1649080477),
(68, 'User admin logged in', NULL, 1649080482),
(69, 'Go to home page', 'admin', 1649080482),
(70, 'Go to orders page', 'admin', 1649080489),
(71, 'Go to Settings Page', 'admin', 1649080492),
(72, 'Go to orders page', 'admin', 1649080495),
(73, 'Go to orders page', 'admin', 1649080531),
(74, 'Go to orders page', 'admin', 1649080534),
(75, 'Go to orders page', 'admin', 1649080557),
(76, 'Go to home page', 'admin', 1649080562),
(77, 'Go to History', 'admin', 1649080565),
(78, 'User admin logged in', NULL, 1649080571),
(79, 'Go to home page', 'admin', 1649080571),
(80, 'Go to home page', 'admin', 1649080617),
(81, 'Go to home page', 'admin', 1649080618),
(82, 'Go to home page', 'admin', 1649080619),
(83, 'Go to home page', 'admin', 1649080619),
(84, 'Go to home page', 'admin', 1649080619),
(85, 'Go to home page', 'admin', 1649080620),
(86, 'User admin logged in', NULL, 1649080634),
(87, 'Go to home page', 'admin', 1649080634),
(88, 'Go to home page', 'admin', 1649080676),
(89, 'Go to home page', 'admin', 1649080678),
(90, 'Go to home page', 'admin', 1649080679),
(91, 'Go to brands page', 'admin', 1649080683),
(92, 'Go to products', 'admin', 1649080684),
(93, 'Go to publish product', 'admin', 1649080684),
(94, 'Go to Settings Page', 'admin', 1649080689),
(95, 'Go to publish product', 'admin', 1649080690),
(96, 'Go to Templates Page', 'admin', 1649080697),
(97, 'Go to Styling page', 'admin', 1649080713),
(98, 'Go to Admin Users', 'admin', 1649080738),
(99, 'Go to Pages manage', 'admin', 1649080746),
(100, 'Go to Titles / Descriptions page', 'admin', 1649080749),
(101, 'Go to Styling page', 'admin', 1649080751),
(102, 'Change site styling', 'admin', 1649080761),
(103, 'Go to Styling page', 'admin', 1649080761),
(104, 'Go to Styling page', 'admin', 1649080772),
(105, 'Go to Styling page', 'admin', 1649080773),
(106, 'Go to languages', 'admin', 1649080774),
(107, 'Go to brands page', 'admin', 1649080775),
(108, 'Go to Pages manage', 'admin', 1649080776),
(109, 'Go to Templates Page', 'admin', 1649080777),
(110, 'Go to Pages manage', 'admin', 1649080777),
(111, 'Go to Titles / Descriptions page', 'admin', 1649080778),
(112, 'Go to Styling page', 'admin', 1649080779),
(113, 'Go to publish product', 'admin', 1649080779),
(114, 'Go to languages', 'admin', 1649080780),
(115, 'Go to Styling page', 'admin', 1649080781),
(116, 'Go to History', 'admin', 1649080782),
(117, 'Go to Admin Users', 'admin', 1649080782),
(118, 'Go to Titles / Descriptions page', 'admin', 1649080785),
(119, 'User admin logged in', NULL, 1652010210),
(120, 'Go to home page', 'admin', 1652010210),
(121, 'Go to History', 'admin', 1652010212),
(122, 'Go to History', 'admin', 1652010667),
(123, 'Go to History', 'admin', 1652010774),
(124, 'Go to products', 'admin', 1652010790),
(125, 'Go to brands page', 'admin', 1652010792),
(126, 'Go to shop categories', 'admin', 1652010793),
(127, 'Go to shop categories', 'admin', 1652010879),
(128, 'Go to brands page', 'admin', 1652010881),
(129, 'Go to products', 'admin', 1652010882),
(130, 'Go to products', 'admin', 1652010896),
(131, 'Go to publish product', 'admin', 1652010898),
(132, 'Go to products', 'admin', 1652010899),
(133, 'Go to brands page', 'admin', 1652010899),
(134, 'Go to brands page', 'admin', 1652010903),
(135, 'Go to brands page', 'admin', 1652010906),
(136, 'Go to shop categories', 'admin', 1652010907),
(137, 'Go to shop categories', 'admin', 1652010908),
(138, 'Go to orders page', 'admin', 1652010909),
(139, 'Go to History', 'admin', 1652010928),
(140, 'Go to History', 'admin', 1652011101),
(141, 'Go to History', 'admin', 1652011126),
(142, 'Go to History', 'admin', 1652011134),
(143, 'Go to History', 'admin', 1652011139),
(144, 'Go to History', 'admin', 1652011231),
(145, 'Go to History', 'admin', 1652011232),
(146, 'Go to History', 'admin', 1652011232),
(147, 'Go to History', 'admin', 1652016594),
(148, 'Go to History', 'admin', 1652016622),
(149, 'Go to products', 'admin', 1652016656),
(150, 'Go to shop categories', 'admin', 1652016660),
(151, 'Go to brands page', 'admin', 1652016662),
(152, 'Go to orders page', 'admin', 1652016689),
(153, 'Go to shop categories', 'admin', 1652016690),
(154, 'Go to orders page', 'admin', 1652016692),
(155, 'Go to brands page', 'admin', 1652016692),
(156, 'Go to History', 'admin', 1652016937),
(157, 'Go to products', 'admin', 1652016940),
(158, 'Go to orders page', 'admin', 1652016941),
(159, 'Change status of Order Id 1 to status 1', 'admin', 1652016954),
(160, 'Change status of Order Id 1 to status 0', 'admin', 1652016954),
(161, 'Go to home page', 'admin', 1652016978),
(162, 'User admin logged in', NULL, 1652017136),
(163, 'Go to home page', 'admin', 1652017136),
(164, 'Go to shop categories', 'admin', 1652017138),
(165, 'Go to shop categories', 'admin', 1652017156),
(166, 'Go to shop categories', 'admin', 1652017365),
(167, 'Go to brands page', 'admin', 1652017366),
(168, 'Go to brands page', 'admin', 1652017378),
(169, 'Go to brands page', 'admin', 1652017395),
(170, 'Go to brands page', 'admin', 1652017407),
(171, 'Go to brands page', 'admin', 1652017414),
(172, 'Go to brands page', 'admin', 1652017422),
(173, 'Go to publish product', 'admin', 1652017623);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `currencyKey` varchar(5) NOT NULL,
  `flag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `abbr`, `name`, `currency`, `currencyKey`, `flag`) VALUES
(2, 'en', 'english', 'Php ', 'PHP', 'en.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'point to public_users ID',
  `products` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `clean_referrer` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_status` varchar(10) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'viewed status is change when change processed status',
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_code` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `products`, `date`, `referrer`, `clean_referrer`, `payment_type`, `paypal_status`, `processed`, `viewed`, `confirmed`, `discount_code`) VALUES
(1, 1234, 1, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"1\";s:6:\"folder\";s:10:\"1648985182\";s:5:\"image\";s:17:\"9781408855652.jpg\";s:4:\"time\";s:10:\"1648985267\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"1\";s:8:\"quantity\";s:2:\"20\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"1\";s:3:\"url\";s:51:\"Harry_Potter_and_the_Philosophers_Stone_Paperback_1\";s:16:\"virtual_products\";N;s:8:\"brand_id\";s:1:\"1\";s:8:\"position\";s:1:\"1\";s:5:\"price\";s:3:\"250\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1648986089, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 1, 0, ''),
(2, 1235, 1, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";s:11:\"Xtian Daron\";s:9:\"vendor_id\";s:1:\"1\";s:2:\"id\";s:1:\"3\";s:6:\"folder\";s:10:\"1648985818\";s:5:\"image\";s:17:\"9781529410150.jpg\";s:4:\"time\";s:10:\"1648985886\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"4\";s:8:\"quantity\";s:2:\"50\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:46:\"A_History_of_the_Universe_in_Stars_Paperback_3\";s:16:\"virtual_products\";N;s:8:\"brand_id\";s:1:\"1\";s:8:\"position\";s:1:\"0\";s:5:\"price\";s:4:\"2000\";}s:16:\"product_quantity\";s:1:\"4\";}}', 1648986375, 'Direct', 'Direct', 'cashOnDelivery', NULL, 1, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_clients`
--

CREATE TABLE `orders_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(500) NOT NULL,
  `post_code` varchar(500) NOT NULL,
  `notes` text NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_clients`
--

INSERT INTO `orders_clients` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `post_code`, `notes`, `for_id`) VALUES
(1, 'a10fd853522cb0e20f63552a88136aa2f614347b05d66c5077d91d5bc4ae9464691e926214e595a8e8dd8f71177823305eb1b3c4e1318faf8119da4e2795b257RQmThFjJpLOXUUVTAh2UtL3rN88jOo/L62UXVK6bKnU=', '4a0160524d157fdab9d9841317a93795bd77381eaac55f3311f017865251a4965ef72c8f4dc226fc3fdf4f0538fee6ae93f0d325ee2f55ae456fc6ee01763a52//VMV01NbOvsJtQJv0JnmW7RW9qdB8znsa08Hde9bsw=', '781f8cab8eace14c5c6c7e78b6fdccb60f4811ef492c11aa0f4fc42bc1b0b0290e30c7bf94cccf91a547da6760e6524592417922b8c4f89bd57feea5d2d74cdf3+s1ISmUjJK6O99mec/TPXcWQKs+ehbB6HKz8gmbvOs=', 'b5dd21d84d0a2766c371847b6ace04f784bc7331715fa139c2290c2b32cf1ac3ff937e4bc57dc6f49e4ffabc71945dd6e5b3c3c7cbd11ea95f548acb5009e19av6t30EbOMUh+L4DxkGMilC/f2oTue1R8wwFtNLMyBfI=', 'a5caf58fe548d2dc5f2a890cdd14a11aacec51cce68f30225706cb82a8e84445c54718a36478ea1010f25367f24b587161d1514da1787841206d9ac1aff85193SrrXPUm8mFUGhjoaWALDYmi+3JkhuE6QbhsoM0605U8=', 'a37cb3294aeb1bc7feab467a0a36af685f71a924ee93e163041c55a60face73ec71c7095982b3f21986d545c0db0a17a6af3899233f4845378663f70ebc21b5eoSpz0p74WhLJQLo+jAHM3oWncimz8uIVVUXarjKFLco=', 'd3913daa7fc92346c23eadaad1b8d11e5d5ca54b161b8343979b9dd643309af41a081c4591f481ffa1ea76f74309b2e38671f2e392e25722206e4d75fe1f014aV7eMxsKUS6r6au0+lwDBgW6lr5RJQusAuxZdzui+gbM=', '8763c5d7a1985ca4e70a4694a69089b0f3a40b63b68abc18874b23f16a74a061dffe8348223d22704792ebeed79cafbd5bbef5ac2b995444e84e99ed2fdf100c2Jcl5SaBLuWsTHk10bq/izHNN1w+YWkTLEF7rzBZSEI=', 1),
(2, '207b4cb98817469c281d721061d2ddef85d7fac82432dbcd93eeb12438a24b13935dfa8f148323499b3a6409a277e17d8ab18bd9a7dd0dbb58dc32b698348817bwh48hSA/q3HmcS4vOzuOjv4JIirImb9DVO1l4QN49o=', '7f0d4ce88144472110cefa020a2d86600011960890e36e4cb73f994f7d7fc20801e5357dfbbc5238873c994dd05fae5591ee469872bd10b282e6b12970606962mjNuJE9Iyqpxk0R9ovNYmFEdZcoBO0k0VaPZPMVTDi4=', 'cd5cec96d05fb4d03fbd0b3aba7441e11721f9a33d524d3c0450d2b36ce354d9cfaafcb26687ed075861c3a6821cc70c067794befc026293c22e6c78c75186199PYfAvBAHGYLgAkI5avkZR8djgz0AWBYuQTtiAR6AO4=', '08c4abe507fab239e89a0b490f4f7c9a730250d5540bc6aa02e6872e1d3b8962c51639be51b7d68995d8f37058938e913dce1e93e7e89ecdf26bf1c958b79b2dWHxuQ9DjYv/OU3VcooYqRx1vz61FmCtMg7DBaBxvIjE=', '3c674a6392b43845c1af58fe9bf8b7450dd96e39fcd309329ee48cafa39b6cbf74a7952873c6f82aba826861dbb10089968253d1638030064eb73b0e298b9756fq0gnQ5Rb2QbVHVsCZbhTxF2IqKjnMgeTXdy86bQCyA=', 'fab426ad03ca2b262c2c514a0d2afca5c2eb05d52721fc51be4f446bafca38d971b0e1fd06f75ea4561535fbe7131ff1e0743163a57f64c95fefa3868f0d07e35Robae10Xlsnob4t5DlVPCcCA9SC/p2igLU/WPsPggo=', 'dfed1b50d4f8a97889d99d5d5fb0045ae1669e47bd648b2009b63850d378f0361b84f3c2568ccbc03a76389afc9856192b1b66d4c033ee8440616f7930f0453ePg/4WbYQRPgIqyJXSSGvoc1WNh1IW3bK0QDUDSHJ7Zo=', '7df7dda05066dd9ef905b1f87fc9a74488ca2125391dd415418b4a53421a181a5fd5a4e690ab3d2941cfb4d46ef7b0c1a6030658cd94089fa47e281d3d4bf97b1lbA6vml6Aj95Y0/RrZhBF+/ufyLfSMr0Dbx8ycgnBk=', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder` int(10) UNSIGNED DEFAULT NULL COMMENT 'folder with images',
  `image` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL COMMENT 'time created',
  `time_update` int(10) UNSIGNED NOT NULL COMMENT 'time updated',
  `visibility` tinyint(1) NOT NULL DEFAULT 1,
  `shop_categorie` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `procurement` int(10) UNSIGNED NOT NULL,
  `in_slider` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL,
  `virtual_products` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_id` int(5) DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `folder`, `image`, `time`, `time_update`, `visibility`, `shop_categorie`, `quantity`, `procurement`, `in_slider`, `url`, `virtual_products`, `brand_id`, `position`, `vendor_id`) VALUES
(1, 1648985182, '9781408855652.jpg', 1648985267, 0, 1, 1, 20, 0, 1, 'Harry_Potter_and_the_Philosophers_Stone_Paperback_1', NULL, 1, 1, 0),
(2, 1648985622, '9781471156267.jpg', 1648985673, 0, 1, 4, 20, 0, 0, 'It_Ends_With_Us_Paperback_2', NULL, 1, 0, 0),
(3, 1648985818, '9781529410150.jpg', 1648985886, 0, 1, 4, 46, 4, 0, 'A_History_of_the_Universe_in_Stars_Paperback_3', NULL, 1, 0, 1),
(4, 1648987530, 'lf.jpg', 1648987543, 0, 1, 5, 500, 0, 1, 'Half_Baked_Harvest_Every_Day_Recipes_for_Balanced_Flexible_FeelGood_Meals_4', 'Test', NULL, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_translations`
--

CREATE TABLE `products_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `basic_description` text NOT NULL,
  `price` varchar(20) NOT NULL,
  `old_price` varchar(20) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_translations`
--

INSERT INTO `products_translations` (`id`, `title`, `description`, `basic_description`, `price`, `old_price`, `abbr`, `for_id`) VALUES
(1, 'Harry Potter and the Philosopher\'s Stone (Paperback)', '<p>Twenty-five years ago, a wide-eyed young wizard was first drawn into an old-fashioned battle between good and evil. From Muggles to Quidditch, Hogwarts to Diagon Alley, the magical journey that launched a billion young readers feels just as fresh, fun and meticulously rendered today.</p>\r\n', '', '250', '200', 'en', 1),
(3, ' It Ends With Us (Paperback)', '<p>Heartbreaking and exquisitely written, Hoover’s touching novel of desire, lost loves and second chances focuses on a brilliantly realised love triangle and how we must always live with the ghosts of the past.</p>\r\n', '', '1500', '1800', 'en', 2),
(4, 'A History of the Universe in 100 Stars (Paperback)', '<p>From the Big Bang to the Gaia Mission, this is a very personal history of the universe through the author\'s favourite 100 stars.<br />\r\n<br />\r\nAstronomer Florian Freistetter has chosen 100 stars that have almost nothing in common. Some are bright and famous, some shine so feebly you need a huge telescope. There are big stars, small stars, nearby stars and faraway stars. Some died a while ago, others have not even yet come into being. Collectively they tell the story of the whole world, according to Freistetter. There is Algol, for example, the Demon Star, whose strange behaviour has long caused people sleepless nights. And Gamma Draconis, from which we know that the earth rotates around its own axis. There is also the star sequence 61 Cygni, which revealed the size of the cosmos to us.</p>\r\n', '', '2000', '2100', 'en', 3),
(5, 'Half Baked Harvest Every Day: Recipes for Balanced, Flexible, Feel-Good Meals', '', '', '2500', '3000', 'en', 4);

-- --------------------------------------------------------

--
-- Table structure for table `seo_pages`
--

CREATE TABLE `seo_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seo_pages`
--

INSERT INTO `seo_pages` (`id`, `name`) VALUES
(1, 'home'),
(2, 'checkout'),
(3, 'contacts'),
(4, 'blog');

-- --------------------------------------------------------

--
-- Table structure for table `seo_pages_translations`
--

CREATE TABLE `seo_pages_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `page_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_for` int(11) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `sub_for`, `position`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 1, 0),
(4, 2, 0),
(5, 2, 0),
(6, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories_translations`
--

CREATE TABLE `shop_categories_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_categories_translations`
--

INSERT INTO `shop_categories_translations` (`id`, `name`, `abbr`, `for_id`) VALUES
(2, 'Fiction', 'en', 1),
(5, 'Non-Fiction', 'en', 2),
(6, 'Romance', 'en', 3),
(7, 'Astronomy & Space Books', 'en', 4),
(8, 'Cook Book', 'en', 5),
(9, 'Fantasy', 'en', 6);

-- --------------------------------------------------------

--
-- Table structure for table `subscribed`
--

CREATE TABLE `subscribed` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `textual_pages_tanslations`
--

CREATE TABLE `textual_pages_tanslations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'notifications by email',
  `last_login` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `notify`, `last_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'your@email.com', 0, 1652017136);

-- --------------------------------------------------------

--
-- Table structure for table `users_public`
--

CREATE TABLE `users_public` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `code` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_public`
--

INSERT INTO `users_public` (`id`, `name`, `email`, `phone`, `password`, `created`, `code`, `status`) VALUES
(1, 'Xtian', 'test@gmail.com', '09654831344', '827ccb0eea8a706c4c34a16891f84e7b', '2022-05-19 11:33:46', '777085', 1),
(2, 'Test', 'testt@gmail.com', '91823182', '827ccb0eea8a706c4c34a16891f84e7b', '2022-04-04 13:53:25', '', 0),
(3, 'Teesttt', 'testsample@test.com', '123123123123', '81dc9bdb52d04dc20036dbd8313ed055', '2022-05-08 11:47:19', '', 0),
(4, 'Yesss', 'yes@gmail.com', '1231232131', '81dc9bdb52d04dc20036dbd8313ed055', '2022-05-08 11:50:06', '828170', 0),
(5, 'Test OTP', 'testotp@gmail.com', '0912247127372', '81dc9bdb52d04dc20036dbd8313ed055', '2022-05-08 13:24:08', '777085', 0),
(6, 'Test 2 OTP', 'test2otp@gmail.com', '0912828312', '81dc9bdb52d04dc20036dbd8313ed055', '2022-05-08 13:26:11', '834251', 0);

-- --------------------------------------------------------

--
-- Table structure for table `value_store`
--

CREATE TABLE `value_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `thekey` varchar(50) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `value_store`
--

INSERT INTO `value_store` (`id`, `thekey`, `value`) VALUES
(1, 'sitelogo', 'logo.png'),
(2, 'navitext', ''),
(3, 'footercopyright', 'Scriptum: Buy the book 2022 © All right reserved. '),
(4, 'contactspage', 'Hello dear client'),
(5, 'footerContactAddr', ''),
(6, 'footerContactEmail', 'scriptumbuythebooksite@gmail.com'),
(7, 'footerContactPhone', ''),
(8, 'googleMaps', '42.671840, 83.279163'),
(9, 'footerAboutUs', ''),
(10, 'footerSocialFacebook', ''),
(11, 'footerSocialTwitter', ''),
(12, 'footerSocialGooglePlus', ''),
(13, 'footerSocialPinterest', ''),
(14, 'footerSocialYoutube', ''),
(16, 'contactsEmailTo', 'scriptumbuythebooksite@gmail.com'),
(17, 'shippingOrder', '1'),
(18, 'addJs', ''),
(19, 'publicQuantity', '1'),
(20, 'paypal_email', ''),
(21, 'paypal_sandbox', '0'),
(22, 'publicDateAdded', '1'),
(23, 'googleApi', ''),
(24, 'template', 'greenlabel'),
(25, 'cashondelivery_visibility', '1'),
(26, 'showBrands', '1'),
(27, 'showInSlider', '1'),
(28, 'codeDiscounts', '1'),
(29, 'virtualProducts', '1'),
(30, 'multiVendor', '1'),
(31, 'outOfStock', '1'),
(32, 'hideBuyButtonsOfOutOfStock', '1'),
(33, 'moreInfoBtn', '1'),
(34, 'refreshAfterAddToCart', '1'),
(35, 'newStyle', '');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `url`, `email`, `password`, `updated_at`, `created_at`) VALUES
(1, 'Xtian Daron', 'Dgte City', 'vendor@gmail.com', '$2y$10$sZHYdPtaYlz8B8txKwTW7efn.fHVaUyNt4wMfa0gfaUQyCePT6k1e', '2022-04-03 11:36:28', '2022-04-03 11:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `vendors_orders`
--

CREATE TABLE `vendors_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `products` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `clean_referrer` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_status` varchar(10) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` tinyint(1) NOT NULL DEFAULT 0,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_code` varchar(20) NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendors_orders`
--

INSERT INTO `vendors_orders` (`id`, `order_id`, `products`, `date`, `referrer`, `clean_referrer`, `payment_type`, `paypal_status`, `processed`, `viewed`, `confirmed`, `discount_code`, `vendor_id`) VALUES
(1, 1234, 'a:1:{i:3;s:1:\"4\";}', 1648986375, 'Direct', 'Direct', 'cashOnDelivery', NULL, 1, 1, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendors_orders_clients`
--

CREATE TABLE `vendors_orders_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(500) NOT NULL,
  `post_code` varchar(500) NOT NULL,
  `notes` text NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendors_orders_clients`
--

INSERT INTO `vendors_orders_clients` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `post_code`, `notes`, `for_id`) VALUES
(1, 'c4cea351c359e13f755e52e28dbf4d0b8ee3a4e78cd3bdd34ca3103cb90eb97852f39a33262dd00773fccf360153afcbc5f9675eee0b34808a34b9dc1cf50022qiRO65rk4LKNvxFt2b4mn0DEgLENeTmXF+3xQrCpv8A=', '9cbd1e9fd15771b608a9ec22c0082f7229ad525838df179a1b5495505eb05733eaec0fbc8a291ea3f44a5912be105679c0e5ee7deb056704792a1aad0b397204lUO157+TPwwuZe5Ulm3xm3lL+DbkbcB9uo7jGA336Ro=', 'd1bd6f96498cc5a2b0833ca1eb4d1c200b97e9a1634448009fb6270ced02a7c0e1881d613390ed3f98e3ceab3011f57abd81e5f96d28ff246277d9d48f2289456W2RVhTJCbzHhb4a9aHFwr0iVTixmIf+i5WgnmdOAhs=', '1a7a8b19ea18096c885431667df3a92a897aadbfb0d9fd4075c7ebf63a44cda869dcff5696268cc455b36b772c1f8e4bec28d2da8512ed165c02aa57893cd39cY8WvST38ThIx+knBBlGTuSHovorw51lvoFqdpZ6p6mk=', '83680cdea3be6abddbb95746d0c830d31a72a9f650cd49475d2f816e73fa9d8281c9200a9c27d57fc13f7411d78d2d1786d932065d024476ea80b8bc6a1b30621z3+XwBVriVmrzD5yqQk/8fagrn5awQ0yGoVQRtvf6g=', '05568d256f8948fea673d7ab7ce998f4a530fcccdd063f582627c2da49469782c01d2dc0d4b4a994bb102064c64de629e9c429b08cf443f0a46d627f83be480dDLaCNoMUHMp/lnMHPSJdKWRps3TuxwDaeoq2vbsMobk=', '6db7a4163f17a00db4cad0d7404e031b008570f790a3c7130a26ccd9314401494ed4d6f53c9a4b88dd31d9699021220e0e4c8d030029d37f5073ce1133d0ab2fQ/Syp2V1Jry+hXtvTTtV7YVzDvW2fU148XkP5wWRNx8=', 'b5187fd6a7c0583aaf5d71e7c181fc9023af7cfd7fe0229d2865635ef4c3d0bf5428a7d74a90d5813f98e895bad3c34a3f407df09f7d5386236647ea10d06214wifds8LgSILKGInEj6wLXAnVY0OBJ+O/ji0bwZrB+i8=', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_pages`
--
ALTER TABLE `active_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirm_links`
--
ALTER TABLE `confirm_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_law`
--
ALTER TABLE `cookie_law`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_law_translations`
--
ALTER TABLE `cookie_law_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`abbr`,`for_id`) USING BTREE;

--
-- Indexes for table `discount_codes`
--
ALTER TABLE `discount_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_clients`
--
ALTER TABLE `orders_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_translations`
--
ALTER TABLE `products_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_pages`
--
ALTER TABLE `seo_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_pages_translations`
--
ALTER TABLE `seo_pages_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_categories_translations`
--
ALTER TABLE `shop_categories_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribed`
--
ALTER TABLE `subscribed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `textual_pages_tanslations`
--
ALTER TABLE `textual_pages_tanslations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_public`
--
ALTER TABLE `users_public`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `value_store`
--
ALTER TABLE `value_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`thekey`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `vendors_orders`
--
ALTER TABLE `vendors_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors_orders_clients`
--
ALTER TABLE `vendors_orders_clients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_pages`
--
ALTER TABLE `active_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `confirm_links`
--
ALTER TABLE `confirm_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cookie_law`
--
ALTER TABLE `cookie_law`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cookie_law_translations`
--
ALTER TABLE `cookie_law_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discount_codes`
--
ALTER TABLE `discount_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_clients`
--
ALTER TABLE `orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products_translations`
--
ALTER TABLE `products_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seo_pages`
--
ALTER TABLE `seo_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seo_pages_translations`
--
ALTER TABLE `seo_pages_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shop_categories_translations`
--
ALTER TABLE `shop_categories_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subscribed`
--
ALTER TABLE `subscribed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `textual_pages_tanslations`
--
ALTER TABLE `textual_pages_tanslations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_public`
--
ALTER TABLE `users_public`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `value_store`
--
ALTER TABLE `value_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendors_orders`
--
ALTER TABLE `vendors_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendors_orders_clients`
--
ALTER TABLE `vendors_orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
