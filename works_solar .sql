-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 02, 2019 at 05:22 AM
-- Server version: 5.6.41-84.1-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `works_solar`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `ab_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` enum('Active','Blocked') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`ab_id`, `title`, `image`, `description`, `status`, `timestamp`) VALUES
(3, 'about solar now', 'uploads/about/about solar now201908059570.png', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document without relying on meaningful content (also called greeking). Replacing the actual content with placeholder text allows designers to design the form of the content before the content itself has been produced. The lorem ipsum text is typically a scrambled section of De finibus bonorum et malorum, a 1st-century BC Latin text by Cicero, with words altered, added, and removed to make it nonsensical, improper Latin.', 'Active', '2019-08-03 16:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banner_id` int(11) NOT NULL,
  `banner_title` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `banner_status` enum('Active','Blocked') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banner_id`, `banner_title`, `banner_image`, `banner_status`, `timestamp`) VALUES
(1, 'Banner 1', 'uploads/banner/Banner 1201908057040.png', 'Active', '2019-08-02 17:02:50'),
(3, 'Banner 2', 'uploads/banner/Banner 2201908054430.png', 'Active', '2019-08-02 17:04:36'),
(4, 'Banner 3', 'uploads/banner/Banner 3201908059465.png', 'Active', '2019-08-03 16:11:28'),
(5, 'test', 'uploads/banner/test201908248891.png', 'Blocked', '2019-08-24 09:07:52'),
(6, '56fhgvjghjghghkhkjhkhbmbdhhjhkjljkf5676786858575575gjhjhmbmbdhf576gfggj', 'uploads/banner/56fhgvjghjghghkhkjhkhbmbdhhjhkjljkf5676786858575575gjhjhmbmbdhf576gfggj201908245586.png', 'Blocked', '2019-08-24 09:23:20'),
(7, 'test hhh jjkkk jjkk, jjkkll jjgtfddbbhjkklll,,nhgf 567bbn bmmm hnk, ', 'uploads/banner/test hhh jjkkk jjkk, jjkkll jjgtfddbbhjkklll,,nhgf 567bbn bmmm hnk, 201908279265.png', 'Blocked', '2019-08-27 14:05:34'),
(8, 'Test banner', 'uploads/banner/Test banner201909168143.png', 'Active', '2019-09-16 17:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `call_button`
--

CREATE TABLE `call_button` (
  `call_id` int(11) NOT NULL,
  `call_title` varchar(255) NOT NULL,
  `phonenumber` bigint(20) NOT NULL,
  `call_status` enum('Active','Blocked') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `call_button`
--

INSERT INTO `call_button` (`call_id`, `call_title`, `phonenumber`, `call_status`, `timestamp`) VALUES
(1, 'Test', 9754321345, 'Active', '2019-08-16 11:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `certificate_id` int(11) NOT NULL,
  `certificate_title` varchar(255) NOT NULL,
  `certificate_image` varchar(100) NOT NULL,
  `certificate_status` enum('Active','Blocked') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`certificate_id`, `certificate_title`, `certificate_image`, `certificate_status`, `timestamp`) VALUES
(1, 'certificate1', 'uploads/certificate/certificate1201908224305.png', 'Active', '2019-08-02 17:18:37'),
(2, 'certificate2', 'uploads/certificate/certificate2201908228631.png', 'Active', '2019-08-02 17:18:39'),
(3, 'certificate3', 'uploads/certificate/certificate3201908224518.png', 'Active', '2019-08-02 17:18:40'),
(4, 'test', 'uploads/certificate/test201908243855.png', 'Blocked', '2019-08-24 11:09:46');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `document_id` int(11) NOT NULL,
  `document_title` varchar(255) NOT NULL,
  `document_type` enum('photo','audio','video','fact_sheet') NOT NULL,
  `file` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `document_status` enum('Active','Blocked') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`document_id`, `document_title`, `document_type`, `file`, `size`, `document_status`, `timestamp`) VALUES
(1, 'My photo', 'photo', 'uploads/documents/My photo201908059052.png', '', 'Active', '2019-08-02 17:06:34'),
(2, 'My audio', 'audio', 'uploads/documents/My audio201908059543roja-flute-1-20.mp3', '', 'Active', '2019-08-02 17:11:03'),
(3, 'My video', 'video', 'https://www.youtube.com/watch?v=_UfFY6PSVu0', '', 'Active', '2019-08-02 17:12:00'),
(5, 'test', 'photo', 'uploads/documents/test201908058991.png', '', 'Active', '2019-08-03 16:12:28'),
(8, 'test', 'fact_sheet', 'uploads/documents/test201908279616mpdf.pdf', '35.71 KB', 'Active', '2019-08-27 10:22:04'),
(9, 'test1', 'photo', 'uploads/documents/test1201908277197.png', '', 'Active', '2019-08-27 13:47:30'),
(10, 'Testing', 'audio', 'uploads/documents/Testing201909021180Alan Walker, K-391, Tungevaag, Mangoo - PLAY (Alan Walker-320.mp3', '', 'Active', '2019-09-02 13:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `enquiry_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_phone` bigint(20) NOT NULL,
  `customer_address` text NOT NULL,
  `comments` text NOT NULL,
  `response` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`enquiry_id`, `category_id`, `category_name`, `product_id`, `product_name`, `user_id`, `customer_name`, `customer_phone`, `customer_address`, `comments`, `response`, `timestamp`, `updated_at`) VALUES
(1, 1, '', 1, 'test', 1, 'as', 9876543210, 'test ', 'hello', 'hi', '2019-07-24 18:30:00', '2019-07-25 08:59:42'),
(2, 1, '', 1, 'tests', 2, 'tests', 9765432180, 'asasasasasasassa', 'helllo', 'gud morning ', '2019-07-28 18:30:00', '2019-07-29 04:27:58'),
(3, 1, 'test', 2, 'testing', 2, 'shaaa', 9876543210, 'aaaaaaaaaaaaaa', 'hello', '', '2019-08-20 13:49:47', '2019-08-20 08:19:47'),
(4, 1, 'test', 3, 'test123', 1, 'shaaa', 9876543210, 'aaaaaaaaaaaaaa', 'good after noon', '', '2019-08-20 13:53:02', '2019-08-20 08:23:02'),
(5, 11, 'bjbj', 11, 'hhh', 1777, 'jee', 94889894, 'nnnnkkj', 'jj', '', '2019-08-23 13:52:48', '2019-08-23 08:22:48'),
(6, 11, 'bjbj', 0, 'hhh', 1777, 'jee', 94889894, 'nnnnkkj', 'jj', '', '2019-08-23 13:53:25', '2019-08-23 08:23:25'),
(7, 0, 'bjbj', 0, 'hhh', 1777, 'jee', 94889894, 'nnnnkkj', 'jj', '', '2019-08-23 15:06:32', '2019-08-23 09:36:32'),
(8, 28, 'Installation Materials', 1, 'mm', 192425, 'Jeeshna t.k', 919048897240, 'testAbimUganda', 'hhh', 'ok\r\n', '2019-08-23 15:41:27', '2019-08-24 09:32:41'),
(9, 28, 'Installation Materials', 1, 'mm', 192425, 'Jeeshna t.k', 919048897240, 'testAbimUganda', 'fgg', '', '2019-08-23 15:42:13', '2019-08-23 10:12:13'),
(10, 28, 'Installation Materials', 346, '3.2kW Inverter cabinet', 192425, 'Jeeshna t.k', 919048897240, 'testAbimUganda', 'good', '', '2019-08-23 16:17:01', '2019-08-23 10:47:01'),
(11, 28, 'Installation Materials', 371, 'Battery Box for 1x200Ah batteries', 192425, 'Jeeshna t.k', 919048897240, 'testAbimUganda', 'very good', '', '2019-08-23 16:17:21', '2019-08-23 10:47:21'),
(12, 33, 'Solar Solutions', 802, '1.6kW/24V MPPT Solar Charge Controller with Integrated Inverter (Incl: 3  circuit breakers and distribution box)', 192425, 'Jeeshna t.k', 919048897240, 'testAbimUganda', 'Excellent', '', '2019-08-23 16:19:16', '2019-08-23 10:49:16'),
(13, 28, 'Installation Materials', 772, 'Accessory Connect Cable Size;4mm2*500mm 2Pcs Lugs for 1 cable with rubber covers', 192425, 'Jeeshna t.k', 919048897240, 'testAbimUganda', 'good', '', '2019-08-23 17:00:43', '2019-08-23 11:30:43'),
(14, 28, 'Installation Materials', 179, 'AC adapter input 100-240 Vac - output 12Vdc and 5A', 192425, 'Jeeshna t.k', 919048897240, 'testAbimUganda', 'I like this product very much........ ', '', '2019-08-23 20:03:25', '2019-08-23 14:33:25'),
(15, 28, 'Installation Materials', 188, 'Battery Box for 12x200Ah batteries', 192425, 'Jeeshna t.k', 919048897240, 'testAbimUganda', 'Very good product', '', '2019-08-23 20:06:35', '2019-08-23 14:36:35'),
(16, 33, 'Solar Solutions', 802, '1.6kW/24V MPPT Solar Charge Controller with Integrated Inverter (Incl: 3  circuit breakers and distribution box)', 192425, 'Jeeshna t.k', 919048897240, 'testAbimUganda', 'very nice', '', '2019-08-23 20:09:44', '2019-08-23 14:39:44'),
(17, 35, 'Replacements', 351, 'Charge Controller 15A/12Vdc PWM', 192425, 'Jeeshna t.k', 919048897240, 'testAbimUganda', 'ggggucgugcgcugcugcuugc jgcyxgygxygxygxugxg uxfyfxgxyygcg CUGXGUCCGU ucg ugcgxuguxjgxgjxugx ucgugxguxugxgxuugxgxxugxugxu gcugxugxgxugxgugxfxugxugxugxugxufxutx chihcctugxugxxtutxutx', '', '2019-08-23 20:14:48', '2019-08-23 14:44:48'),
(18, 28, 'Installation Materials', 346, '3.2kW Inverter cabinet', 192425, 'Jeeshna t.k', 919048897240, 'testAbimUganda', 'hshshsbbsbsbsvvsvvsvdvsvvdvdvdvvdvdvdvvdvdvvdvvdvvdvdvvdvdggdgdggdggdggddggdgdggdggdgggdggdggdggdgdgddgdgggsgsggdgggdgggdgdggdggdgehjsbvgdjdkgdggshvs bbs', '', '2019-08-23 20:15:41', '2019-08-23 14:45:41'),
(19, 28, 'Installation Materials', 346, '3.2kW Inverter cabinet', 192426, 'anagha', 919497538075, 'test1AbimKenya', 'good\n', '', '2019-08-24 15:15:23', '2019-08-24 09:45:23'),
(20, 28, 'Installation Materials', 346, '3.2kW Inverter cabinet', 192465, 'Test', 256147258369, 'TestAbimUganda', 'Test', 'ok\r\n', '2019-09-05 11:08:20', '2019-09-05 11:16:22'),
(21, 33, 'Solar Solutions', 826, 'Charge Controller 15A/12Vdc PWM with integrated USB ports', 192470, 'Jeeshna t.k', 256904889724, 'TestAbimUganda', 'Test', '', '2019-09-05 20:22:17', '2019-09-05 14:52:17'),
(22, 33, 'Solar Solutions', 364, 'Charge Controller 50A MPPT', 192465, 'Test', 256879375639, 'TestAbimKenya', 'Tedt', '', '2019-09-12 16:03:04', '2019-09-12 10:33:04'),
(23, 33, 'Solar Solutions', 802, '1.6kW/24V MPPT Solar Charge Controller with Integrated Inverter (Incl: 3  circuit breakers and distribution box)', 192470, 'Jeeshna t.k', 256904889724, 'TestAbimUganda', 'Test', '', '2019-09-13 13:56:04', '2019-09-13 08:26:04'),
(24, 28, 'Installation Materials', 346, '3.2kW Inverter cabinet', 192470, 'Jeeshna t.k', 256904889724, 'TestAbimUganda', 'Testing...... ', 'ok', '2019-09-13 14:07:34', '2019-09-18 17:36:59'),
(25, 35, 'Replacements', 351, 'Charge Controller 15A/12Vdc PWM', 192470, 'Jeeshna t.k', 256904889724, 'TestAbimUganda', 'Testing...... ', '', '2019-09-14 17:05:17', '2019-09-14 11:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_description` text NOT NULL,
  `faq_image` varchar(255) NOT NULL,
  `faq_status` enum('Active','Blocked') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faq_id`, `faq_title`, `faq_description`, `faq_image`, `faq_status`, `timestamp`) VALUES
(1, 'How to work', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document without relying on meaningful content (also called greeking). Replacing the actual content with placeholder text allows designers to design the form of the content before the content itself has been produced.\r\n\r\nThe lorem ipsum text is typically a scrambled section of De finibus bonorum et malorum, a 1st-century BC Latin text by Cicero, with words altered, added, and removed to make it nonsensical, improper Latin.', 'uploads/faq/How to work201908056046.png', 'Active', '2019-08-05 12:11:03'),
(2, 'test', 'test', 'uploads/faq/test201908242157.png', 'Active', '2019-08-24 10:49:13'),
(3, 'how to  login ', 'testiing', '', 'Active', '2019-08-27 13:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_comments` text NOT NULL,
  `no_of_stars` float NOT NULL,
  `status` enum('Active','Blocked') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `customer_id`, `customer_name`, `customer_comments`, `no_of_stars`, `status`, `timestamp`) VALUES
(1, 1, 'test', 'good', 4, 'Active', '2019-08-15 18:30:00'),
(2, 2, 'as', 'nice', 3, 'Active', '2019-08-15 18:30:00'),
(3, 3, 'test', 'goood', 5, 'Active', '2019-08-20 15:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `how_to_use`
--

CREATE TABLE `how_to_use` (
  `hw_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` enum('Active','Blocked') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `how_to_use`
--

INSERT INTO `how_to_use` (`hw_id`, `product_id`, `title`, `description`, `image`, `status`, `timestamp`) VALUES
(1, 1, 'Test', 'Testing 12334', 'uploads/about/Test201908162796.png', 'Active', '2019-08-16 11:07:01'),
(2, 6, 'test6', 'testing', 'uploads/how_to_use/test6201908274256.png', 'Active', '2019-08-27 13:49:53'),
(3, 188, 'Testing', 'Avoid creating unnecessary objects. Prefer static over virtual. Use static final for constants. Use enhanced for loop syntax. Consider package instead of private access with private inner classes. Avoid using floating-point. Know and use the libraries.', 'uploads/how_to_use/Testing201909209302.png', 'Active', '2019-09-20 11:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `user_name`, `password`, `timestamp`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2019-07-22 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `image` varchar(225) NOT NULL,
  `status` enum('Active','Blocked') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `description`, `date`, `image`, `status`, `timestamp`) VALUES
(1, 'SOLARNOW WINS PEOPLE’S CHOICE AWARD.', '“Winning isn’t everything, it’s the only thing.”- Vince Lombardi\r\n\r\nIt gives us great pleasure to announce that SolarNow has won the people’s choice award for the  category of ”CONSUMER CHOICE SOLAR POWER SERVICE PROVIDER FOR THE WHOLE COUNTRY OF UGANDA” the 2nd year running.\r\n\r\nThis is truly a testament to hard work and outstanding service we have continued to provide over the past years. We are part of a much-selected group of businesses recognized by the people of Uganda for their business excellence over multiple years. The people’s choice award was established in 2009 and is considered the most distinguished award for business excellence in Uganda. The award is given after conducting annual statistical research, ensuring rigorous assessment of unbiased opinions, perceptions and service expectations in the solar market.', '2019-09-24', 'uploads/news/SOLARNOW WINS PEOPLE’S CHOICE AWARD.201910028950.png', 'Active', '2019-10-02 10:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `review_id` int(11) NOT NULL,
  `order_no` varchar(100) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_review` text NOT NULL,
  `star_rating` float NOT NULL,
  `status` enum('Active','Blocked') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`review_id`, `order_no`, `customer_id`, `customer_name`, `product_id`, `product_name`, `product_review`, `star_rating`, `status`, `timestamp`) VALUES
(1, '123', 0, 'test', 1, 'test', 'good', 4, 'Active', '2019-08-16 00:00:00'),
(2, 'SO234567', 3, 'tester', 1, 'test', 'goood', 5, 'Active', '2019-08-21 10:12:31'),
(3, 'SO234568', 4, 'test12', 1, 'test', 'good', 5, 'Active', '2019-08-21 10:22:22'),
(4, 'SO161396', 192425, 'Jeeshna t.k', 801, 'Battery', 'Good', 3, 'Active', '2019-08-30 16:57:38'),
(5, 'SO161401', 192425, 'Jeeshna t.k', 343, 'Battery Box for 2x100Ah batteries', 'Good', 3, 'Active', '2019-09-02 15:14:02'),
(6, 'SO161408', 192469, 'Athul', 791, '23.6\'\' TV (Incl. Inbuilt Satellite Decoder)', '', 5, 'Active', '2019-09-05 15:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateway`
--

CREATE TABLE `sms_gateway` (
  `sms_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` enum('Active','Blocked') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`ab_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `call_button`
--
ALTER TABLE `call_button`
  ADD PRIMARY KEY (`call_id`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`certificate_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `how_to_use`
--
ALTER TABLE `how_to_use`
  ADD PRIMARY KEY (`hw_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `sms_gateway`
--
ALTER TABLE `sms_gateway`
  ADD PRIMARY KEY (`sms_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `ab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `call_button`
--
ALTER TABLE `call_button`
  MODIFY `call_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `certificate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `how_to_use`
--
ALTER TABLE `how_to_use`
  MODIFY `hw_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sms_gateway`
--
ALTER TABLE `sms_gateway`
  MODIFY `sms_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
