-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2022 at 10:57 AM
-- Server version: 10.5.13-MariaDB-cll-lve
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1491134_whub`
--

-- --------------------------------------------------------

--
-- Table structure for table `sma_addresses`
--

CREATE TABLE `sma_addresses` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `line1` varchar(50) NOT NULL,
  `line2` varchar(50) DEFAULT NULL,
  `city` varchar(25) NOT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `state` varchar(25) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_addresses`
--

INSERT INTO `sma_addresses` (`id`, `company_id`, `line1`, `line2`, `city`, `postal_code`, `state`, `country`, `phone`, `updated_at`) VALUES
(1, 7, 'Jl.Percetakan', '', 'Jakarta', '10560', 'DKI Jakarta', 'Indonesia', '0865', '2020-04-29 15:34:26'),
(2, 9, 'jalan', 'jalan', 'Jakarta Timur', '13870', 'DKI Jakarta', 'Indonesia', '085777714746', '2020-04-30 09:58:06'),
(3, 10, '1', '2', 'Jakarta', '38292', 'Jakarta', 'Indonesia', '02929832', '2020-05-05 07:23:44'),
(4, 10, '1', '2', 'Jakarta', '38292', 'Jakarta', 'Indonesia', '02929832', '2020-05-05 07:24:58'),
(5, 11, ';l;o', '\';l', 'pl', ';l', ';l', 'kl', 'l', '2020-05-08 09:35:17'),
(6, 10, 'Jl. Kebon Kelapa', 'Jl. Kebon Kelapa', 'Jakarta', '13120', 'Jakarta', 'Indonesia', '08999592439', '2020-05-10 09:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `sma_adjustments`
--

CREATE TABLE `sma_adjustments` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_adjustments`
--

INSERT INTO `sma_adjustments` (`id`, `date`, `reference_no`, `warehouse_id`, `note`, `attachment`, `created_by`, `updated_by`, `updated_at`, `count_id`) VALUES
(1, '2022-03-26 07:24:00', '2022/03/0038', 1, '', NULL, 1, NULL, NULL, NULL),
(2, '2022-03-26 07:28:00', '2022/03/0039', 1, '', NULL, 1, NULL, NULL, NULL),
(3, '2022-03-26 07:29:00', '2022/03/0040', 1, '', NULL, 1, NULL, NULL, NULL),
(4, '2022-03-26 07:36:00', '2022/03/0041', 1, '', NULL, 1, NULL, NULL, NULL),
(5, '2022-03-26 07:38:00', '2022/03/0042', 1, '', NULL, 1, NULL, NULL, NULL),
(6, '2022-03-26 09:14:00', '2022/03/0043', 1, '', NULL, 1, NULL, NULL, NULL),
(7, '2022-03-26 09:17:00', '2022/03/0044', 3, '', NULL, 1, NULL, NULL, NULL),
(8, '2022-03-28 07:32:58', '2022/03/0045', 1, '', NULL, 6, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_adjustment_items`
--

CREATE TABLE `sma_adjustment_items` (
  `id` int(11) NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_adjustment_items`
--

INSERT INTO `sma_adjustment_items` (`id`, `adjustment_id`, `product_id`, `option_id`, `quantity`, `warehouse_id`, `serial_no`, `type`) VALUES
(84, 37, 37, NULL, 14.0000, 1, '', 'addition'),
(85, 37, 38, NULL, 11.0000, 1, '', 'addition'),
(86, 37, 39, NULL, 1.0000, 1, '', 'addition'),
(87, 37, 40, NULL, 5.0000, 1, '', 'addition'),
(88, 37, 46, NULL, 3.0000, 1, '', 'addition'),
(89, 37, 49, NULL, 2.0000, 1, '', 'addition'),
(90, 37, 50, NULL, 3.0000, 1, '', 'addition'),
(91, 37, 51, NULL, 12.0000, 1, '', 'addition'),
(92, 37, 52, NULL, 11.0000, 1, '', 'addition'),
(93, 37, 55, NULL, 10.0000, 1, '', 'addition'),
(94, 37, 56, NULL, 14.0000, 1, '', 'addition'),
(95, 37, 58, NULL, 4.0000, 1, '', 'addition'),
(96, 37, 59, NULL, 6.0000, 1, '', 'addition'),
(97, 37, 60, NULL, 9.0000, 1, '', 'addition'),
(98, 37, 65, NULL, 17.0000, 1, '', 'addition'),
(99, 37, 66, NULL, 10.0000, 1, '', 'addition'),
(100, 37, 68, NULL, 16.0000, 1, '', 'addition'),
(101, 37, 69, NULL, 1.0000, 1, '', 'addition'),
(102, 37, 70, NULL, 11.0000, 1, '', 'addition'),
(103, 37, 71, NULL, 5.0000, 1, '', 'addition'),
(104, 37, 72, NULL, 11.0000, 1, '', 'addition'),
(105, 37, 73, NULL, 12.0000, 1, '', 'addition'),
(106, 37, 74, NULL, 7.0000, 1, '', 'addition'),
(107, 37, 75, NULL, 10.0000, 1, '', 'addition'),
(108, 37, 76, NULL, 10.0000, 1, '', 'addition'),
(109, 37, 77, NULL, 8.0000, 1, '', 'addition'),
(110, 37, 78, NULL, 10.0000, 1, '', 'addition'),
(113, 37, 86, NULL, 1.0000, 1, '', 'addition'),
(112, 37, 80, NULL, 11.0000, 1, '', 'addition'),
(111, 37, 79, NULL, 1.0000, 1, '', 'addition'),
(124, 1, 150, NULL, 20.0000, 1, '', 'addition'),
(123, 1, 143, NULL, 20.0000, 1, '', 'addition'),
(122, 2, 147, NULL, 20.0000, 1, '', 'addition'),
(121, 3, 146, NULL, 20.0000, 1, '', 'addition'),
(120, 4, 144, NULL, 20.0000, 1, '', 'addition'),
(119, 5, 144, NULL, 30.0000, 1, '', 'addition'),
(125, 6, 128, NULL, 21.0000, 1, '', 'addition'),
(126, 7, 145, NULL, 30.0000, 3, '', 'addition'),
(127, 8, 89, NULL, 1.0000, 1, '', 'subtraction'),
(128, 8, 142, NULL, 8.0000, 1, '', 'addition'),
(129, 8, 143, NULL, 11.0000, 1, '', 'subtraction'),
(130, 8, 144, NULL, 35.0000, 1, '', 'subtraction'),
(131, 8, 150, NULL, 38.0000, 1, '', 'addition'),
(132, 8, 145, NULL, 8.0000, 1, '', 'addition'),
(133, 8, 146, NULL, 19.0000, 1, '', 'subtraction'),
(134, 8, 147, NULL, 20.0000, 1, '', 'subtraction'),
(135, 8, 118, NULL, 20.0000, 1, '', 'addition'),
(136, 8, 103, NULL, 13.0000, 1, '', 'addition'),
(137, 8, 111, NULL, 9.0000, 1, '', 'subtraction'),
(138, 8, 107, NULL, 9.0000, 1, '', 'addition'),
(139, 8, 101, NULL, 1.0000, 1, '', 'subtraction'),
(140, 8, 148, NULL, 30.0000, 1, '', 'addition'),
(141, 8, 149, NULL, 2.0000, 1, '', 'subtraction'),
(142, 8, 152, NULL, 3.0000, 1, '', 'subtraction'),
(143, 8, 151, NULL, 3.0000, 1, '', 'addition'),
(144, 8, 133, NULL, 3.0000, 1, '', 'addition'),
(145, 8, 130, NULL, 4.0000, 1, '', 'subtraction'),
(146, 8, 128, NULL, 19.0000, 1, '', 'addition'),
(147, 8, 85, NULL, 10.0000, 1, '', 'addition'),
(148, 8, 122, NULL, 20.0000, 1, '', 'addition'),
(149, 8, 97, NULL, 31.0000, 1, '', 'addition'),
(150, 8, 90, NULL, 9.0000, 1, '', 'addition'),
(151, 8, 91, NULL, 1.0000, 1, '', 'addition'),
(152, 8, 76, NULL, 38.0000, 1, '', 'addition'),
(153, 8, 100, NULL, 20.0000, 1, '', 'addition'),
(154, 8, 102, NULL, 37.0000, 1, '', 'addition'),
(155, 8, 104, NULL, 33.0000, 1, '', 'addition'),
(156, 8, 108, NULL, 28.0000, 1, '', 'addition'),
(157, 8, 110, NULL, 20.0000, 1, '', 'addition'),
(158, 8, 112, NULL, 31.0000, 1, '', 'addition'),
(159, 8, 114, NULL, 9.0000, 1, '', 'addition');

-- --------------------------------------------------------

--
-- Table structure for table `sma_api_keys`
--

CREATE TABLE `sma_api_keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reference` varchar(40) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text DEFAULT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_api_limits`
--

CREATE TABLE `sma_api_limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_api_logs`
--

CREATE TABLE `sma_api_logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text DEFAULT NULL,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_brands`
--

CREATE TABLE `sma_brands` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_brands`
--

INSERT INTO `sma_brands` (`id`, `code`, `name`, `image`, `slug`, `description`) VALUES
(1, 'JV001', 'JAVA', 'add6971be3a787ed03219030448cbc23.png', 'java', 'java'),
(3, 'RJ001', 'ROYAL JAVA', NULL, 'royal-java', 'Royal Java'),
(4, 'WM001', 'WMEAT', 'b97e836927880ea941d7aab38af855a8.png', 'wmeat', 'WMEAT'),
(5, 'W99', 'W99', '8a89bf104f853a5120d86873bfe9d363.png', 'w99', 'W99'),
(6, 'SM001', 'SUMUR TUJUH', NULL, 'sumur-tujuh', 'SUMUR TUJUH'),
(7, 'PL001', 'PULOSARI', NULL, 'pulosari', 'pulosari'),
(8, 'sasa01', 'Sasa', NULL, 'sasa', 'Sasa'),
(9, 'Art1', 'ART', NULL, 'art', 'ART');

-- --------------------------------------------------------

--
-- Table structure for table `sma_calendar`
--

CREATE TABLE `sma_calendar` (
  `id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `color` varchar(7) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_captcha`
--

CREATE TABLE `sma_captcha` (
  `captcha_id` bigint(13) UNSIGNED NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `word` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_cart`
--

CREATE TABLE `sma_cart` (
  `id` varchar(40) NOT NULL,
  `time` varchar(30) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_cart`
--

INSERT INTO `sma_cart` (`id`, `time`, `user_id`, `data`) VALUES
('b30885dac6c34d769c334ea5bcf7e45b', '1633585601', 1, '{\"cart_total\":165000,\"total_item_tax\":0,\"total_items\":2,\"total_unique_items\":2,\"5ea48a218366bada88417826348d2239\":{\"id\":\"28dd2c7955ce926456240b2ff0100bde\",\"product_id\":\"77\",\"qty\":1,\"name\":\"WMeat Aus Beef All Variant (Tumis\\/Sop) 1 kg\",\"slug\":\"wmeat-aus-beef-all-variant-tumissop-1-kg\",\"code\":\"OLN-016\",\"price\":70000,\"tax\":\"0\",\"image\":\"724c029ebd487ee39194dff3334f6f17.jpg\",\"option\":false,\"options\":null,\"rowid\":\"5ea48a218366bada88417826348d2239\",\"row_tax\":\"0.0000\",\"subtotal\":\"70000.0000\"},\"814d291a255988a5d16ddb0854ab5cfe\":{\"id\":\"f033ab37c30201f73f142449d037028d\",\"product_id\":\"80\",\"qty\":1,\"name\":\"Tenderloin Cube 300 gr\",\"slug\":\"tenderloin-cube-300-gr\",\"code\":\"OLN-0290\",\"price\":95000,\"tax\":\"0\",\"image\":\"c6b8a473fc3a58f605852cf57f3a3a09.jpg\",\"option\":false,\"options\":null,\"rowid\":\"814d291a255988a5d16ddb0854ab5cfe\",\"row_tax\":\"0.0000\",\"subtotal\":\"95000.0000\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `sma_categories`
--

CREATE TABLE `sma_categories` (
  `id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL,
  `image` varchar(55) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_categories`
--

INSERT INTO `sma_categories` (`id`, `code`, `name`, `image`, `parent_id`, `slug`, `description`) VALUES
(1, 'G01', 'General', '7d7d5d9156717f196f3739f6292477a9.jpg', 0, 'general', 'general'),
(2, 'B0001', 'BEEF', '2a389e1beea6a814926a1e2c94335c7b.jpg', 0, 'beef', 'BEEF'),
(3, 'SS001', 'Sausage', NULL, 0, 'sausage', 'sausage'),
(4, 'CC001', 'Cold Cut', NULL, 0, 'cold-cut', 'cold cut'),
(5, 'NG001', 'Nugget', NULL, 0, 'nugget', 'Nugget'),
(6, 'MT001', 'MeatBall', NULL, 0, 'meatball', 'MeatBall'),
(7, 'PT001', 'Portion', NULL, 0, 'portion', 'Portion'),
(8, 'BK001', 'Bakery', NULL, 0, 'bakery', 'Bakery'),
(9, 'KK001', 'Karkas Utuh', NULL, 0, 'karkas-utuh', 'Karkas Utuh'),
(10, 'BO001', 'Boneless', NULL, 0, 'boneless', 'Boneless'),
(11, 'P0001', 'Parting', NULL, 0, 'parting', 'Parting'),
(12, 'OL0001', 'Olahan', NULL, 0, 'olahan', 'Olahan'),
(13, 'TLR001', 'Telur Ayam', NULL, 0, 'telur-ayam', 'Telur Ayam');

-- --------------------------------------------------------

--
-- Table structure for table `sma_combo_items`
--

CREATE TABLE `sma_combo_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `quantity` decimal(12,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_combo_items`
--

INSERT INTO `sma_combo_items` (`id`, `product_id`, `item_code`, `quantity`, `unit_price`) VALUES
(1, 92, 'OLN-006', 1.0000, 58000.0000),
(2, 92, 'OLN-001', 1.0000, 58500.0000),
(3, 95, 'OLN-003', 2.0000, 57000.0000),
(4, 95, 'WMS-005', 2.0000, 68000.0000),
(5, 96, 'WMS-021', 1.0000, 62500.0000),
(6, 96, 'WMS-015', 1.0000, 47500.0000),
(26, 97, 'WMS-027', 1.0000, 46500.0000),
(25, 97, 'WMS-030', 1.0000, 68500.0000),
(28, 98, 'WMS-006', 1.0000, 114500.0000),
(27, 98, 'WMS-022', 1.0000, 115500.0000),
(30, 99, 'WMS-030', 1.0000, 70000.0000),
(29, 99, 'WMS-029', 1.0000, 30000.0000),
(34, 100, 'OLN-0290', 1.0000, 88000.0000),
(33, 100, 'OLN-018', 1.0000, 117000.0000),
(38, 101, 'OLN-004', 1.0000, 105000.0000),
(37, 101, 'OLN-010', 1.0000, 80000.0000);

-- --------------------------------------------------------

--
-- Table structure for table `sma_companies`
--

CREATE TABLE `sma_companies` (
  `id` int(11) NOT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `group_name` varchar(20) NOT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `customer_group_name` varchar(100) DEFAULT NULL,
  `whub_id` int(11) DEFAULT NULL,
  `whub_name` varchar(100) DEFAULT NULL,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) NOT NULL,
  `vat_no` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(55) DEFAULT NULL,
  `state` varchar(55) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `cf1` varchar(100) DEFAULT NULL,
  `cf2` varchar(100) DEFAULT NULL,
  `cf3` varchar(100) DEFAULT NULL,
  `cf4` varchar(100) DEFAULT NULL,
  `cf5` varchar(100) DEFAULT NULL,
  `cf6` varchar(100) DEFAULT NULL,
  `invoice_footer` text DEFAULT NULL,
  `payment_term` int(11) DEFAULT 0,
  `logo` varchar(255) DEFAULT 'logo.png',
  `award_points` int(11) DEFAULT 0,
  `deposit_amount` decimal(25,4) DEFAULT NULL,
  `price_group_id` int(11) DEFAULT NULL,
  `price_group_name` varchar(50) DEFAULT NULL,
  `gst_no` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_companies`
--

INSERT INTO `sma_companies` (`id`, `group_id`, `group_name`, `customer_group_id`, `customer_group_name`, `whub_id`, `whub_name`, `name`, `company`, `vat_no`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `invoice_footer`, `payment_term`, `logo`, `award_points`, `deposit_amount`, `price_group_id`, `price_group_name`, `gst_no`) VALUES
(1, NULL, 'biller', NULL, NULL, NULL, NULL, 'WMART Cipayung', 'WMart', '', 'Jl. Bina Marga No.1A, RW.5, Ceger, Kec. Cipayung', 'Jakarta Timur', 'DKI Jakarta', '13840', 'Indonesia', '0811 1109 554', 'wmartcipayung@widodoretail.com', '', '', '', '', '', '', '', 0, 'WMart-logo-mini.jpg', 0, NULL, NULL, NULL, ''),
(2, 4, 'supplier', NULL, NULL, NULL, NULL, 'Widodo Makmur Retail', 'Widodo Makmur Retail', '', 'sdad', 'ada', '', '', '', '123123132', 'marketing@widodoretail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL, ''),
(162, 3, 'customer', 5, 'WMart Cipayung', NULL, NULL, 'WALK IN CIPAYUNG', 'walk-in-cipayung', '', 'Wmart Cipayung', 'Jakarta', 'DKI Jakarta', '', '', '12345678', 'pelanggan@widodoretail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMart Cipayung', ''),
(163, NULL, 'biller', NULL, NULL, NULL, NULL, 'Widodo Makmur Retailindo', 'Widodo Makmur Retailindo', '', 'Jl. Raya Cilangkap No.58, RT.7/RW.3, Cipayun', 'Jakarta', 'DKI Jakarta', '13870', 'Indonesia', '012345678', 'info@widodoretail.com', '', '', '', '', '', '', '', 0, 'rsz_widodo-removebg-p.png', 0, NULL, NULL, NULL, ''),
(164, 4, 'supplier', NULL, NULL, NULL, NULL, 'Ibu Yatmi', 'Ibu Yatmi', '', 'Jl.Graha Widodo', 'Jakarta', 'DKI Jakarta', '', '', '0123456', 'ibuyatmi@admin.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL, ''),
(165, 3, 'customer', 5, 'WMart Cipayung', NULL, NULL, 'Tumiyana', 'PT WIdodo Makmur Perkasa', '', 'Graha widodo', 'Jakarta', 'DKI Jakarta', '', '', '01234567', 'tumiyana@widodoretail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMart Cipayung', ''),
(48, 4, 'supplier', NULL, NULL, NULL, NULL, 'PT Cianjur Arta Makmur', 'PT Cianjur Arta Makmur', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '(+62) 817-1095-54', 'WMeat.Official@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `sma_costing`
--

CREATE TABLE `sma_costing` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_item_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `purchase_item_id` int(11) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `purchase_net_unit_cost` decimal(25,4) DEFAULT NULL,
  `purchase_unit_cost` decimal(25,4) DEFAULT NULL,
  `sale_net_unit_price` decimal(25,4) NOT NULL,
  `sale_unit_price` decimal(25,4) NOT NULL,
  `quantity_balance` decimal(15,4) DEFAULT NULL,
  `inventory` tinyint(1) DEFAULT 0,
  `overselling` tinyint(1) DEFAULT 0,
  `option_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_costing`
--

INSERT INTO `sma_costing` (`id`, `date`, `product_id`, `sale_item_id`, `sale_id`, `purchase_item_id`, `quantity`, `purchase_net_unit_cost`, `purchase_unit_cost`, `sale_net_unit_price`, `sale_unit_price`, `quantity_balance`, `inventory`, `overselling`, `option_id`) VALUES
(831, '2022-03-29', 145, 98, 38, 59, 1.0000, 0.0000, 0.0000, 27000.0000, 27000.0000, 29.0000, 1, 0, NULL),
(830, '2022-03-29', 134, 97, 37, 24, 5.0000, 20000.0000, 20000.0000, 22000.0000, 22000.0000, 39.5250, 1, 0, NULL),
(835, '2022-03-29', 145, 102, 41, 61, 1.0000, 0.0000, 0.0000, 27000.0000, 27000.0000, 5.0000, 1, 0, NULL),
(834, '2022-03-29', 145, 101, 40, 61, 1.0000, 0.0000, 0.0000, 27000.0000, 27000.0000, 6.0000, 1, 0, NULL),
(836, '2022-03-29', 151, 103, 42, 36, 1.0000, 54000.0000, 54000.0000, 57500.0000, 57500.0000, 23.0000, 1, 0, NULL),
(734, '2022-03-25', 133, 1, 1, 1, 2.0000, 8300.0000, 8300.0000, 8300.0000, 8300.0000, 22.0000, 1, 0, NULL),
(735, '2022-03-25', 133, 2, 2, 1, 1.0000, 8300.0000, 8300.0000, 8300.0000, 8300.0000, 21.0000, 1, 0, NULL),
(736, '2022-03-26', 131, 3, 3, 4, 1.0000, 9000.0000, 9000.0000, 13000.0000, 13000.0000, 29.0000, 1, 0, NULL),
(737, '2022-03-26', 149, 4, 3, 48, 1.0000, 34768.0000, 34768.0000, 44000.0000, 44000.0000, 19.0000, 1, 0, NULL),
(738, '2022-03-26', 130, 5, 3, 3, 2.0000, 6500.0000, 6500.0000, 9000.0000, 9000.0000, 46.0000, 1, 0, NULL),
(739, '2022-03-26', 146, 6, 3, 45, 1.0000, 7902.0000, 7902.0000, 13000.0000, 13000.0000, 43.0000, 1, 0, NULL),
(740, '2022-03-26', 144, 7, 3, 55, 1.0000, 0.0000, 0.0000, 27700.0000, 27700.0000, 49.0000, 1, 0, NULL),
(741, '2022-03-26', 138, 8, 3, 41, 1.0000, 10205.0000, 10205.0000, 14150.0000, 14150.0000, 11.0000, 1, 0, NULL),
(742, '2022-03-26', 137, 9, 3, 40, 1.0000, 10205.0000, 10205.0000, 14150.0000, 14150.0000, 23.0000, 1, 0, NULL),
(743, '2022-03-26', 131, 10, 4, 4, 1.0000, 9000.0000, 9000.0000, 13000.0000, 13000.0000, 28.0000, 1, 0, NULL),
(744, '2022-03-26', 144, 11, 4, 55, 1.0000, 0.0000, 0.0000, 27700.0000, 27700.0000, 48.0000, 1, 0, NULL),
(745, '2022-03-26', 129, 12, 4, 5, 1.0000, 22000.0000, 22000.0000, 31500.0000, 31500.0000, 19.0000, 1, 0, NULL),
(746, '2022-03-26', 135, 13, 4, 38, 1.0000, 25512.0000, 25512.0000, 35625.0000, 35625.0000, 39.0000, 1, 0, NULL),
(747, '2022-03-26', 91, 14, 4, 8, 1.0000, 36900.0000, 36900.0000, 39400.0000, 39400.0000, 9.0000, 1, 0, NULL),
(748, '2022-03-26', 139, 15, 5, 42, 1.0000, 10205.0000, 10205.0000, 14125.0000, 14125.0000, 11.0000, 1, 0, NULL),
(749, '2022-03-26', 136, 16, 5, 39, 1.0000, 10205.0000, 10205.0000, 14125.0000, 14125.0000, 23.0000, 1, 0, NULL),
(750, '2022-03-26', 138, 17, 5, 41, 1.0000, 10205.0000, 10205.0000, 14125.0000, 14125.0000, 10.0000, 1, 0, NULL),
(751, '2022-03-26', 144, 18, 5, 55, 2.0000, 0.0000, 0.0000, 27700.0000, 27700.0000, 46.0000, 1, 0, NULL),
(752, '2022-03-26', 94, 19, 5, 10, 1.0000, 37900.0000, 37900.0000, 40400.0000, 40400.0000, 9.0000, 1, 0, NULL),
(753, '2022-03-26', 149, 20, 6, 48, 2.0000, 34768.0000, 34768.0000, 48125.0000, 48125.0000, 17.0000, 1, 0, NULL),
(754, '2022-03-26', 131, 21, 6, 4, 2.0000, 9000.0000, 9000.0000, 13000.0000, 13000.0000, 26.0000, 1, 0, NULL),
(755, '2022-03-26', 146, 22, 6, 45, 2.0000, 7902.0000, 7902.0000, 13000.0000, 13000.0000, 41.0000, 1, 0, NULL),
(756, '2022-03-26', 128, 23, 6, 58, 2.0000, 0.0000, 0.0000, 37000.0000, 37000.0000, 19.0000, 1, 0, NULL),
(757, '2022-03-26', 137, 24, 6, 40, 1.0000, 10205.0000, 10205.0000, 14125.0000, 14125.0000, 22.0000, 1, 0, NULL),
(758, '2022-03-26', 130, 25, 6, 3, 2.0000, 6500.0000, 6500.0000, 13000.0000, 13000.0000, 44.0000, 1, 0, NULL),
(759, '2022-03-26', 134, 26, 7, 24, 1.7000, 20000.0000, 20000.0000, 22000.0000, 22000.0000, 73.3000, 1, 0, NULL),
(760, '2022-03-26', 129, 27, 7, 5, 2.0000, 22000.0000, 22000.0000, 31500.0000, 31500.0000, 17.0000, 1, 0, NULL),
(761, '2022-03-26', 130, 28, 7, 3, 2.0000, 6500.0000, 6500.0000, 13000.0000, 13000.0000, 42.0000, 1, 0, NULL),
(762, '2022-03-26', 128, 29, 7, 58, 1.0000, 0.0000, 0.0000, 37000.0000, 37000.0000, 18.0000, 1, 0, NULL),
(763, '2022-03-26', 131, 30, 7, 4, 1.0000, 9000.0000, 9000.0000, 13000.0000, 13000.0000, 25.0000, 1, 0, NULL),
(764, '2022-03-26', 135, 31, 7, 38, 1.0000, 25512.0000, 25512.0000, 35625.0000, 35625.0000, 38.0000, 1, 0, NULL),
(765, '2022-03-26', 134, 32, 8, 24, 1.7750, 20000.0000, 20000.0000, 22000.0000, 22000.0000, 71.5250, 1, 0, NULL),
(766, '2022-03-26', 115, 33, 9, 30, 1.0000, 51000.0000, 51000.0000, 61710.0000, 61710.0000, 39.0000, 1, 0, NULL),
(767, '2022-03-26', 101, 34, 9, 29, 1.0000, 90000.0000, 90000.0000, 108900.0000, 108900.0000, 39.0000, 1, 0, NULL),
(768, '2022-03-26', 107, 35, 9, 25, 1.0000, 58000.0000, 58000.0000, 70180.0000, 70180.0000, 19.0000, 1, 0, NULL),
(769, '2022-03-26', 113, 36, 9, 34, 1.0000, 63000.0000, 63000.0000, 76230.0000, 76230.0000, 9.0000, 1, 0, NULL),
(770, '2022-03-26', 88, 37, 9, 11, 1.0000, 33500.0000, 33500.0000, 36000.0000, 36000.0000, 9.0000, 1, 0, NULL),
(771, '2022-03-26', 137, 38, 9, 40, 1.0000, 10205.0000, 10205.0000, 14125.0000, 14125.0000, 21.0000, 1, 0, NULL),
(772, '2022-03-26', 91, 39, 10, 8, 2.0000, 36900.0000, 36900.0000, 39400.0000, 39400.0000, 7.0000, 1, 0, NULL),
(773, '2022-03-26', 135, 40, 10, 38, 1.0000, 25512.0000, 25512.0000, 35625.0000, 35625.0000, 37.0000, 1, 0, NULL),
(774, '2022-03-26', 128, 41, 10, 58, 1.0000, 0.0000, 0.0000, 37000.0000, 37000.0000, 17.0000, 1, 0, NULL),
(775, '2022-03-26', 101, 42, 11, 29, 1.0000, 90000.0000, 90000.0000, 108900.0000, 108900.0000, 38.0000, 1, 0, NULL),
(776, '2022-03-26', 137, 43, 11, 40, 1.0000, 10205.0000, 10205.0000, 14125.0000, 14125.0000, 20.0000, 1, 0, NULL),
(777, '2022-03-26', 128, 44, 11, 58, 2.0000, 0.0000, 0.0000, 37000.0000, 37000.0000, 15.0000, 1, 0, NULL),
(778, '2022-03-26', 144, 45, 11, 55, 1.0000, 0.0000, 0.0000, 27700.0000, 27700.0000, 45.0000, 1, 0, NULL),
(779, '2022-03-26', 151, 46, 12, 36, 3.0000, 54000.0000, 54000.0000, 57500.0000, 57500.0000, 22.0000, 1, 0, NULL),
(780, '2022-03-26', 115, 47, 13, 30, 1.0000, 51000.0000, 51000.0000, 61710.0000, 61710.0000, 38.0000, 1, 0, NULL),
(781, '2022-03-26', 129, 48, 14, 5, 1.0000, 22000.0000, 22000.0000, 31500.0000, 31500.0000, 16.0000, 1, 0, NULL),
(782, '2022-03-26', 137, 49, 14, 40, 1.0000, 10205.0000, 10205.0000, 14125.0000, 14125.0000, 19.0000, 1, 0, NULL),
(783, '2022-03-26', 138, 50, 14, 41, 1.0000, 10205.0000, 10205.0000, 14125.0000, 14125.0000, 9.0000, 1, 0, NULL),
(784, '2022-03-26', 141, 51, 14, 44, 1.0000, 38380.0000, 38380.0000, 53125.0000, 53125.0000, 39.0000, 1, 0, NULL),
(785, '2022-03-26', 149, 52, 15, 48, 5.0000, 34768.0000, 34768.0000, 48125.0000, 48125.0000, 12.0000, 1, 0, NULL),
(786, '2022-03-26', 129, 53, 15, 5, 5.0000, 22000.0000, 22000.0000, 31500.0000, 31500.0000, 11.0000, 1, 0, NULL),
(787, '2022-03-26', 134, 54, 16, 24, 2.0000, 20000.0000, 20000.0000, 22000.0000, 22000.0000, 69.5250, 1, 0, NULL),
(788, '2022-03-26', 146, 55, 16, 45, 2.0000, 7902.0000, 7902.0000, 13000.0000, 13000.0000, 39.0000, 1, 0, NULL),
(789, '2022-03-26', 131, 56, 16, 4, 1.0000, 9000.0000, 9000.0000, 13000.0000, 13000.0000, 24.0000, 1, 0, NULL),
(790, '2022-03-26', 131, 57, 17, 4, 1.0000, 9000.0000, 9000.0000, 13000.0000, 13000.0000, 23.0000, 1, 0, NULL),
(791, '2022-03-26', 134, 58, 18, 24, 5.0000, 20000.0000, 20000.0000, 22000.0000, 22000.0000, 64.5250, 1, 0, NULL),
(792, '2022-03-26', 130, 59, 19, 3, 2.0000, 6500.0000, 6500.0000, 13000.0000, 13000.0000, 40.0000, 1, 0, NULL),
(793, '2022-03-26', 131, 60, 19, 4, 1.0000, 9000.0000, 9000.0000, 13000.0000, 13000.0000, 22.0000, 1, 0, NULL),
(794, '2022-03-26', 144, 61, 19, 55, 1.0000, 0.0000, 0.0000, 27700.0000, 27700.0000, 44.0000, 1, 0, NULL),
(795, '2022-03-28', 134, 62, 20, 24, 6.0000, 20000.0000, 20000.0000, 22000.0000, 22000.0000, 58.5250, 1, 0, NULL),
(796, '2022-03-28', 130, 63, 21, 3, 1.0000, 6500.0000, 6500.0000, 13000.0000, 13000.0000, 39.0000, 1, 0, NULL),
(797, '2022-03-28', 131, 64, 21, 4, 1.0000, 9000.0000, 9000.0000, 18500.0000, 18500.0000, 21.0000, 1, 0, NULL),
(798, '2022-03-28', 134, 65, 21, 24, 1.0000, 20000.0000, 20000.0000, 22000.0000, 22000.0000, 57.5250, 1, 0, NULL),
(799, '2022-03-28', 131, 66, 22, 4, 1.0000, 9000.0000, 9000.0000, 18500.0000, 18500.0000, 20.0000, 1, 0, NULL),
(800, '2022-03-28', 130, 67, 22, 3, 1.0000, 6500.0000, 6500.0000, 13000.0000, 13000.0000, 38.0000, 1, 0, NULL),
(801, '2022-03-28', 134, 68, 22, 24, 1.0000, 20000.0000, 20000.0000, 22000.0000, 22000.0000, 56.5250, 1, 0, NULL),
(802, '2022-03-28', 137, 69, 23, 40, 1.0000, 10205.0000, 10205.0000, 14125.0000, 14125.0000, 18.0000, 1, 0, NULL),
(803, '2022-03-28', 134, 70, 24, 24, 1.0000, 20000.0000, 20000.0000, 22000.0000, 22000.0000, 55.5250, 1, 0, NULL),
(804, '2022-03-28', 128, 71, 25, 58, 2.0000, 0.0000, 0.0000, 27500.0000, 27500.0000, 13.0000, 1, 0, NULL),
(805, '2022-03-28', 135, 72, 25, 38, 1.0000, 25512.0000, 25512.0000, 35625.0000, 35625.0000, 36.0000, 1, 0, NULL),
(806, '2022-03-28', 138, 73, 25, 41, 1.0000, 10205.0000, 10205.0000, 14125.0000, 14125.0000, 8.0000, 1, 0, NULL),
(807, '2022-03-28', 130, 74, 25, 3, 2.0000, 6500.0000, 6500.0000, 13000.0000, 13000.0000, 36.0000, 1, 0, NULL),
(808, '2022-03-28', 137, 75, 26, 40, 1.0000, 10205.0000, 10205.0000, 14125.0000, 14125.0000, 17.0000, 1, 0, NULL),
(809, '2022-03-28', 146, 76, 26, 45, 1.0000, 7902.0000, 7902.0000, 13000.0000, 13000.0000, 19.0000, 1, 0, NULL),
(810, '2022-03-28', 131, 77, 26, 4, 1.0000, 9000.0000, 9000.0000, 18500.0000, 18500.0000, 19.0000, 1, 0, NULL),
(811, '2022-03-28', 140, 78, 27, 43, 1.0000, 10205.0000, 10205.0000, 14125.0000, 14125.0000, 11.0000, 1, 0, NULL),
(812, '2022-03-28', 128, 79, 27, 58, 1.0000, 0.0000, 0.0000, 27500.0000, 27500.0000, 31.0000, 1, 0, NULL),
(813, '2022-03-28', 149, 80, 28, 48, 1.0000, 34768.0000, 34768.0000, 48125.0000, 48125.0000, 9.0000, 1, 0, NULL),
(814, '2022-03-28', 139, 81, 28, 42, 1.0000, 10205.0000, 10205.0000, 14125.0000, 14125.0000, 10.0000, 1, 0, NULL),
(815, '2022-03-28', 136, 82, 28, 39, 1.0000, 10205.0000, 10205.0000, 14125.0000, 14125.0000, 22.0000, 1, 0, NULL),
(816, '2022-03-29', 134, 83, 29, 24, 4.0000, 20000.0000, 20000.0000, 22000.0000, 22000.0000, 51.5250, 1, 0, NULL),
(817, '2022-03-29', 76, 84, 30, 67, 2.0000, 0.0000, 0.0000, 27800.0000, 27800.0000, 36.0000, 1, 0, NULL),
(818, '2022-03-29', 152, 85, 31, 37, 1.0000, 54500.0000, 54500.0000, 60000.0000, 60000.0000, 21.0000, 1, 0, NULL),
(819, '2022-03-29', 151, 86, 31, 36, 1.0000, 54000.0000, 54000.0000, 57500.0000, 57500.0000, 24.0000, 1, 0, NULL),
(820, '2022-03-29', 76, 87, 31, 67, 5.0000, 0.0000, 0.0000, 27800.0000, 27800.0000, 31.0000, 1, 0, NULL),
(821, '2022-03-29', 131, 88, 31, 4, 1.0000, 9000.0000, 9000.0000, 18500.0000, 18500.0000, 18.0000, 1, 0, NULL),
(822, '2022-03-29', 146, 89, 32, 45, 1.0000, 7902.0000, 7902.0000, 13000.0000, 13000.0000, 18.0000, 1, 0, NULL),
(823, '2022-03-29', 137, 90, 32, 40, 1.0000, 10205.0000, 10205.0000, 14125.0000, 14125.0000, 16.0000, 1, 0, NULL),
(824, '2022-03-29', 134, 91, 32, 24, 2.0000, 20000.0000, 20000.0000, 22000.0000, 22000.0000, 49.5250, 1, 0, NULL),
(825, '2022-03-29', 134, 92, 33, 24, 5.0000, 20000.0000, 20000.0000, 22000.0000, 22000.0000, 44.5250, 1, 0, NULL),
(826, '2022-03-29', 130, 93, 33, 3, 1.0000, 6500.0000, 6500.0000, 13000.0000, 13000.0000, 31.0000, 1, 0, NULL),
(832, '2022-03-29', 145, 99, 39, 61, 1.0000, 0.0000, 0.0000, 27000.0000, 27000.0000, 7.0000, 1, 0, NULL),
(838, '2022-03-30', 89, 105, 44, 9, 1.0000, 36900.0000, 36900.0000, 39400.0000, 39400.0000, 8.0000, 1, 0, NULL),
(839, '2022-03-30', 91, 106, 44, 8, 1.0000, 36900.0000, 36900.0000, 39400.0000, 39400.0000, 7.0000, 1, 0, NULL),
(840, '2022-03-30', 146, 107, 44, 45, 1.0000, 7902.0000, 7902.0000, 13000.0000, 13000.0000, 17.0000, 1, 0, NULL),
(843, '2022-03-30', 139, 110, 47, 42, 1.0000, 10205.0000, 10205.0000, 14125.0000, 14125.0000, 9.0000, 1, 0, NULL),
(844, '2022-03-30', 128, 111, 47, 58, 1.0000, 0.0000, 0.0000, 37000.0000, 37000.0000, 30.0000, 1, 0, NULL),
(845, '2022-03-30', 139, 112, 48, 42, 1.0000, 10205.0000, 10205.0000, 14125.0000, 14125.0000, 8.0000, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_currencies`
--

CREATE TABLE `sma_currencies` (
  `id` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(55) NOT NULL,
  `rate` decimal(12,4) NOT NULL,
  `auto_update` tinyint(1) NOT NULL DEFAULT 0,
  `symbol` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_currencies`
--

INSERT INTO `sma_currencies` (`id`, `code`, `name`, `rate`, `auto_update`, `symbol`) VALUES
(2, 'IDR', 'Rupiah', 1.0000, 0, 'Rp');

-- --------------------------------------------------------

--
-- Table structure for table `sma_customer_groups`
--

CREATE TABLE `sma_customer_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `percent` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_customer_groups`
--

INSERT INTO `sma_customer_groups` (`id`, `name`, `percent`) VALUES
(1, 'General', 0),
(2, 'Reseller', -5),
(3, 'Distributor', -15),
(4, 'New Customer (+10)', 10),
(5, 'WMart Cipayung', 0),
(6, 'Ecommerce', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sma_date_format`
--

CREATE TABLE `sma_date_format` (
  `id` int(11) NOT NULL,
  `js` varchar(20) NOT NULL,
  `php` varchar(20) NOT NULL,
  `sql` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_date_format`
--

INSERT INTO `sma_date_format` (`id`, `js`, `php`, `sql`) VALUES
(1, 'mm-dd-yyyy', 'm-d-Y', '%m-%d-%Y'),
(2, 'mm/dd/yyyy', 'm/d/Y', '%m/%d/%Y'),
(3, 'mm.dd.yyyy', 'm.d.Y', '%m.%d.%Y'),
(4, 'dd-mm-yyyy', 'd-m-Y', '%d-%m-%Y'),
(5, 'dd/mm/yyyy', 'd/m/Y', '%d/%m/%Y'),
(6, 'dd.mm.yyyy', 'd.m.Y', '%d.%m.%Y');

-- --------------------------------------------------------

--
-- Table structure for table `sma_deliveries`
--

CREATE TABLE `sma_deliveries` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `sale_id` int(11) NOT NULL,
  `do_reference_no` varchar(50) NOT NULL,
  `sale_reference_no` varchar(50) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `attachment` varchar(50) DEFAULT NULL,
  `delivered_by` varchar(50) DEFAULT NULL,
  `received_by` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_deposits`
--

CREATE TABLE `sma_deposits` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `company_id` int(11) NOT NULL,
  `amount` decimal(25,4) NOT NULL,
  `paid_by` varchar(50) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_expenses`
--

CREATE TABLE `sma_expenses` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `reference` varchar(50) NOT NULL,
  `amount` decimal(25,4) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `created_by` varchar(55) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_expense_categories`
--

CREATE TABLE `sma_expense_categories` (
  `id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_expense_categories`
--

INSERT INTO `sma_expense_categories` (`id`, `code`, `name`) VALUES
(1, 'B001', 'Biaya Kirim');

-- --------------------------------------------------------

--
-- Table structure for table `sma_gift_cards`
--

CREATE TABLE `sma_gift_cards` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `card_no` varchar(20) NOT NULL,
  `value` decimal(25,4) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `balance` decimal(25,4) NOT NULL,
  `expiry` date DEFAULT NULL,
  `created_by` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_gift_cards`
--

INSERT INTO `sma_gift_cards` (`id`, `date`, `card_no`, `value`, `customer_id`, `customer`, `balance`, `expiry`, `created_by`) VALUES
(1, '2022-03-26 05:53:04', '1311173316597034', 0.0000, 165, 'PT WIdodo Makmur Perkasa', 500000.0000, '2024-03-26', '6');

-- --------------------------------------------------------

--
-- Table structure for table `sma_gift_card_topups`
--

CREATE TABLE `sma_gift_card_topups` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `card_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_gift_card_topups`
--

INSERT INTO `sma_gift_card_topups` (`id`, `date`, `card_id`, `amount`, `created_by`) VALUES
(1, '2022-03-26 08:34:09', 1, 500000.0000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_groups`
--

CREATE TABLE `sma_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_groups`
--

INSERT INTO `sma_groups` (`id`, `name`, `description`) VALUES
(1, 'owner', 'Owner'),
(2, 'admin', 'Administrator'),
(3, 'customer', 'Customer'),
(4, 'supplier', 'Supplier'),
(5, 'sales', 'Sales Staff'),
(6, 'manajer', 'Manajer'),
(7, 'kasir', 'kasir'),
(8, 'wmart-cipayung', 'wmart cipayung');

-- --------------------------------------------------------

--
-- Table structure for table `sma_login_attempts`
--

CREATE TABLE `sma_login_attempts` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_login_attempts`
--

INSERT INTO `sma_login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(100, 0x3132372e302e302e31, 'cumi@admin.com', 1648569806);

-- --------------------------------------------------------

--
-- Table structure for table `sma_migrations`
--

CREATE TABLE `sma_migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_migrations`
--

INSERT INTO `sma_migrations` (`version`) VALUES
(315);

-- --------------------------------------------------------

--
-- Table structure for table `sma_notifications`
--

CREATE TABLE `sma_notifications` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `from_date` datetime DEFAULT NULL,
  `till_date` datetime DEFAULT NULL,
  `scope` tinyint(1) NOT NULL DEFAULT 3
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_order_ref`
--

CREATE TABLE `sma_order_ref` (
  `ref_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `so` int(11) NOT NULL DEFAULT 1,
  `qu` int(11) NOT NULL DEFAULT 1,
  `po` int(11) NOT NULL DEFAULT 1,
  `to` int(11) NOT NULL DEFAULT 1,
  `pos` int(11) NOT NULL DEFAULT 1,
  `do` int(11) NOT NULL DEFAULT 1,
  `pay` int(11) NOT NULL DEFAULT 1,
  `re` int(11) NOT NULL DEFAULT 1,
  `rep` int(11) NOT NULL DEFAULT 1,
  `ex` int(11) NOT NULL DEFAULT 1,
  `ppay` int(11) NOT NULL DEFAULT 1,
  `qa` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_order_ref`
--

INSERT INTO `sma_order_ref` (`ref_id`, `date`, `so`, `qu`, `po`, `to`, `pos`, `do`, `pay`, `re`, `rep`, `ex`, `ppay`, `qa`) VALUES
(1, '2015-03-01', 8, 3, 11, 1, 56, 1, 262, 2, 1, 1, 39, 46);

-- --------------------------------------------------------

--
-- Table structure for table `sma_pages`
--

CREATE TABLE `sma_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `title` varchar(60) NOT NULL,
  `description` varchar(180) NOT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `body` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_no` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_payments`
--

CREATE TABLE `sma_payments` (
  `id` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `sale_id` int(11) DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `reference_no` varchar(50) NOT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `paid_by` varchar(20) NOT NULL,
  `cheque_no` varchar(20) DEFAULT NULL,
  `cc_no` varchar(20) DEFAULT NULL,
  `cc_holder` varchar(25) DEFAULT NULL,
  `cc_month` varchar(2) DEFAULT NULL,
  `cc_year` varchar(4) DEFAULT NULL,
  `cc_type` varchar(20) DEFAULT NULL,
  `amount` decimal(25,4) NOT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `pos_paid` decimal(25,4) DEFAULT 0.0000,
  `pos_balance` decimal(25,4) DEFAULT 0.0000,
  `approval_code` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_payments`
--

INSERT INTO `sma_payments` (`id`, `date`, `sale_id`, `return_id`, `purchase_id`, `reference_no`, `transaction_id`, `paid_by`, `cheque_no`, `cc_no`, `cc_holder`, `cc_month`, `cc_year`, `cc_type`, `amount`, `currency`, `created_by`, `attachment`, `type`, `note`, `pos_paid`, `pos_balance`, `approval_code`) VALUES
(291, '2022-03-29 09:41:00', 40, NULL, NULL, 'SI2022/03/0253', NULL, 'cash', '', '', '', '', '', '', 27000.0000, NULL, 6, NULL, 'received', '', 50000.0000, 23000.0000, NULL),
(294, '2022-03-29 10:04:57', 42, NULL, NULL, 'SI2022/03/0255', NULL, 'other', '', '', '', '', '', '', 57500.0000, NULL, 6, NULL, 'received', '', 57500.0000, 0.0000, NULL),
(293, '2022-03-29 09:59:50', 41, NULL, NULL, 'SI2022/03/0254', NULL, 'cash', '', '', '', '', '', '', 27000.0000, NULL, 6, NULL, 'received', '', 50000.0000, 23000.0000, NULL),
(254, '2022-03-26 07:42:13', 3, NULL, NULL, 'SI2022/03/0216', NULL, 'other', '', '', '', '', '', '', 144000.0000, NULL, 6, NULL, 'received', 'qris', 144000.0000, 0.0000, NULL),
(249, '2022-03-25 10:31:40', 1, NULL, NULL, 'SI2022/03/0214', NULL, 'cash', '', '', '', '', '', '', 16600.0000, NULL, 6, NULL, 'received', '', 16600.0000, 0.0000, NULL),
(250, '2022-03-25 14:36:25', 2, NULL, NULL, 'SI2022/03/0215', NULL, 'cash', '', '', '', '', '', '', 8300.0000, NULL, 6, NULL, 'received', '', 10000.0000, 1700.0000, NULL),
(255, '2022-03-26 09:24:19', 4, NULL, NULL, 'SI2022/03/0217', NULL, 'cash', '', '', '', '', '', '', 147225.0000, NULL, 6, NULL, 'received', '', 200000.0000, 52775.0000, NULL),
(256, '2022-03-26 09:48:31', 5, NULL, NULL, 'SI2022/03/0218', NULL, 'cash', '', '', '', '', '', '', 138175.0000, NULL, 6, NULL, 'received', '', 150000.0000, 11825.0000, NULL),
(257, '2022-03-26 09:58:17', 6, NULL, NULL, 'SI2022/03/0219', NULL, 'other', '', '', '', '', '', '', 262375.0000, NULL, 6, NULL, 'received', '', 262375.0000, 0.0000, NULL),
(258, '2022-03-26 10:05:12', 7, NULL, NULL, 'SI2022/03/0220', NULL, 'other', '', '', '', '', '', '', 212025.0000, NULL, 6, NULL, 'received', '', 212025.0000, 0.0000, NULL),
(259, '2022-03-26 10:13:23', 8, NULL, NULL, 'SI2022/03/0221', NULL, 'other', '', '', '', '', '', '', 39050.0000, NULL, 6, NULL, 'received', '', 39050.0000, 0.0000, NULL),
(260, '2022-03-26 10:25:58', 9, NULL, NULL, 'SI2022/03/0222', NULL, 'other', '', '', '', '', '', '', 367145.0000, NULL, 6, NULL, 'received', '', 367145.0000, 0.0000, NULL),
(261, '2022-03-26 10:28:04', 10, NULL, NULL, 'SI2022/03/0223', NULL, 'other', '', '', '', '', '', '', 151425.0000, NULL, 6, NULL, 'received', '', 151425.0000, 0.0000, NULL),
(262, '2022-03-26 10:30:37', 11, NULL, NULL, 'SI2022/03/0224', NULL, 'other', '', '', '', '', '', '', 224725.0000, NULL, 6, NULL, 'received', '', 224725.0000, 0.0000, NULL),
(263, '2022-03-26 10:31:49', 12, NULL, NULL, 'SI2022/03/0225', NULL, 'other', '', '', '', '', '', '', 172500.0000, NULL, 6, NULL, 'received', '', 172500.0000, 0.0000, NULL),
(264, '2022-03-26 10:33:36', 13, NULL, NULL, 'SI2022/03/0226', NULL, 'other', '', '', '', '', '', '', 61710.0000, NULL, 6, NULL, 'received', '', 61710.0000, 0.0000, NULL),
(265, '2022-03-26 10:44:29', 14, NULL, NULL, 'SI2022/03/0227', NULL, 'other', '', '', '', '', '', '', 112875.0000, NULL, 6, NULL, 'received', '', 112875.0000, 0.0000, NULL),
(266, '2022-03-26 11:30:40', 15, NULL, NULL, 'SI2022/03/0228', NULL, 'cash', '', '', '', '', '', '', 398125.0000, NULL, 6, NULL, 'received', '', 400000.0000, 1875.0000, NULL),
(267, '2022-03-26 11:57:44', 16, NULL, NULL, 'SI2022/03/0229', NULL, 'other', '', '', '', '', '', '', 83000.0000, NULL, 6, NULL, 'received', '', 83000.0000, 0.0000, NULL),
(268, '2022-03-26 12:05:53', 17, NULL, NULL, 'SI2022/03/0230', NULL, 'cash', '', '', '', '', '', '', 13000.0000, NULL, 6, NULL, 'received', '', 20000.0000, 7000.0000, NULL),
(269, '2022-03-26 12:12:53', 18, NULL, NULL, 'SI2022/03/0231', NULL, 'other', '', '', '', '', '', '', 110000.0000, NULL, 6, NULL, 'received', 'QRIS', 110000.0000, 0.0000, NULL),
(270, '2022-03-26 12:26:59', 19, NULL, NULL, 'SI2022/03/0232', NULL, 'other', '', '', '', '', '', '', 66700.0000, NULL, 6, NULL, 'received', '', 66700.0000, 0.0000, NULL),
(271, '2022-03-28 02:24:44', 20, NULL, NULL, 'SI2022/03/0233', NULL, 'cash', '', '', '', '', '', '', 132000.0000, NULL, 6, NULL, 'received', '', 150000.0000, 18000.0000, NULL),
(272, '2022-03-28 02:47:06', 21, NULL, NULL, 'SI2022/03/0234', NULL, 'cash', '', '', '', '', '', '', 53500.0000, NULL, 6, NULL, 'received', '', 53500.0000, 0.0000, NULL),
(273, '2022-03-28 02:47:58', 22, NULL, NULL, 'SI2022/03/0235', NULL, 'cash', '', '', '', '', '', '', 53500.0000, NULL, 6, NULL, 'received', '', 100000.0000, 46500.0000, NULL),
(274, '2022-03-28 02:50:47', 23, NULL, NULL, 'SI2022/03/0236', NULL, 'other', '', '', '', '', '', '', 14125.0000, NULL, 6, NULL, 'received', '', 14125.0000, 0.0000, NULL),
(275, '2022-03-28 02:59:04', 24, NULL, NULL, 'SI2022/03/0237', NULL, 'cash', '', '', '', '', '', '', 22000.0000, NULL, 6, NULL, 'received', '', 22000.0000, 0.0000, NULL),
(276, '2022-03-28 04:01:22', 25, NULL, NULL, 'SI2022/03/0238', NULL, 'other', '', '', '', '', '', '', 130750.0000, NULL, 6, NULL, 'received', '', 130750.0000, 0.0000, NULL),
(277, '2022-03-28 08:38:30', 26, NULL, NULL, 'SI2022/03/0239', NULL, 'cash', '', '', '', '', '', '', 45625.0000, NULL, 6, NULL, 'received', '', 45625.0000, 0.0000, NULL),
(278, '2022-03-28 09:51:35', 27, NULL, NULL, 'SI2022/03/0240', NULL, 'cash', '', '', '', '', '', '', 41625.0000, NULL, 6, NULL, 'received', '', 42000.0000, 375.0000, NULL),
(279, '2022-03-28 12:43:01', 28, NULL, NULL, 'SI2022/03/0241', NULL, 'other', '', '', '', '', '', '', 76375.0000, NULL, 6, NULL, 'received', '', 76375.0000, 0.0000, NULL),
(280, '2022-03-29 01:59:24', 29, NULL, NULL, 'SI2022/03/0242', NULL, 'cash', '', '', '', '', '', '', 88000.0000, NULL, 6, NULL, 'received', '', 100000.0000, 12000.0000, NULL),
(281, '2022-03-29 02:14:52', 30, NULL, NULL, 'SI2022/03/0243', NULL, 'cash', '', '', '', '', '', '', 55600.0000, NULL, 6, NULL, 'received', '', 55600.0000, 0.0000, NULL),
(282, '2022-03-29 02:40:45', 31, NULL, NULL, 'SI2022/03/0244', NULL, 'cash', '', '', '', '', '', '', 275000.0000, NULL, 6, NULL, 'received', '', 300000.0000, 25000.0000, NULL),
(283, '2022-03-29 05:15:55', 32, NULL, NULL, 'SI2022/03/0245', NULL, 'cash', '', '', '', '', '', '', 71125.0000, NULL, 6, NULL, 'received', '', 100000.0000, 28875.0000, NULL),
(284, '2022-03-29 07:11:22', 33, NULL, NULL, 'SI2022/03/0246', NULL, 'cash', '', '', '', '', '', '', 123000.0000, NULL, 6, NULL, 'received', '', 150000.0000, 27000.0000, NULL),
(288, '2022-03-29 09:25:18', 37, NULL, NULL, 'SI2022/03/0250', NULL, 'cash', '', '', '', '', '', '', 110000.0000, NULL, 6, NULL, 'received', '', 110000.0000, 0.0000, NULL),
(289, '2022-03-29 09:30:31', 38, NULL, NULL, 'SI2022/03/0251', NULL, 'cash', '', '', '', '', '', '', 27000.0000, NULL, 1, NULL, 'received', '', 32000.0000, 5000.0000, NULL),
(290, '2022-03-29 09:32:39', 39, NULL, NULL, 'SI2022/03/0252', NULL, 'cash', '', '', '', '', '', '', 27000.0000, NULL, 6, NULL, 'received', '', 50000.0000, 23000.0000, NULL),
(296, '2022-03-30 02:28:20', 44, NULL, NULL, 'SI2022/03/0257', NULL, 'cash', '', '', '', '', '', '', 91800.0000, NULL, 9, NULL, 'received', '', 91800.0000, 0.0000, NULL),
(299, '2022-03-30 03:17:05', 47, NULL, NULL, 'SI2022/03/0260', NULL, 'cash', '', '', '', '', '', '', 51125.0000, NULL, 9, NULL, 'received', '', 52000.0000, 875.0000, NULL),
(300, '2022-03-30 03:32:22', 48, NULL, NULL, 'SI2022/03/0261', NULL, 'cash', '', '', '', '', '', '', 14125.0000, NULL, 9, NULL, 'received', '', 15000.0000, 875.0000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_paypal`
--

CREATE TABLE `sma_paypal` (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `paypal_currency` varchar(3) NOT NULL DEFAULT 'USD',
  `fixed_charges` decimal(25,4) NOT NULL DEFAULT 2.0000,
  `extra_charges_my` decimal(25,4) NOT NULL DEFAULT 3.9000,
  `extra_charges_other` decimal(25,4) NOT NULL DEFAULT 4.4000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_paypal`
--

INSERT INTO `sma_paypal` (`id`, `active`, `account_email`, `paypal_currency`, `fixed_charges`, `extra_charges_my`, `extra_charges_other`) VALUES
(1, 0, 'mypaypal@paypal.com', 'USD', 0.0000, 0.0000, 0.0000);

-- --------------------------------------------------------

--
-- Table structure for table `sma_permissions`
--

CREATE TABLE `sma_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `products-index` tinyint(1) DEFAULT 0,
  `products-add` tinyint(1) DEFAULT 0,
  `products-edit` tinyint(1) DEFAULT 0,
  `products-delete` tinyint(1) DEFAULT 0,
  `products-cost` tinyint(1) DEFAULT 0,
  `products-price` tinyint(1) DEFAULT 0,
  `quotes-index` tinyint(1) DEFAULT 0,
  `quotes-add` tinyint(1) DEFAULT 0,
  `quotes-edit` tinyint(1) DEFAULT 0,
  `quotes-pdf` tinyint(1) DEFAULT 0,
  `quotes-email` tinyint(1) DEFAULT 0,
  `quotes-delete` tinyint(1) DEFAULT 0,
  `sales-index` tinyint(1) DEFAULT 0,
  `sales-add` tinyint(1) DEFAULT 0,
  `sales-edit` tinyint(1) DEFAULT 0,
  `sales-pdf` tinyint(1) DEFAULT 0,
  `sales-email` tinyint(1) DEFAULT 0,
  `sales-delete` tinyint(1) DEFAULT 0,
  `purchases-index` tinyint(1) DEFAULT 0,
  `purchases-add` tinyint(1) DEFAULT 0,
  `purchases-edit` tinyint(1) DEFAULT 0,
  `purchases-pdf` tinyint(1) DEFAULT 0,
  `purchases-email` tinyint(1) DEFAULT 0,
  `purchases-delete` tinyint(1) DEFAULT 0,
  `transfers-index` tinyint(1) DEFAULT 0,
  `transfers-add` tinyint(1) DEFAULT 0,
  `transfers-edit` tinyint(1) DEFAULT 0,
  `transfers-pdf` tinyint(1) DEFAULT 0,
  `transfers-email` tinyint(1) DEFAULT 0,
  `transfers-delete` tinyint(1) DEFAULT 0,
  `customers-index` tinyint(1) DEFAULT 0,
  `customers-add` tinyint(1) DEFAULT 0,
  `customers-edit` tinyint(1) DEFAULT 0,
  `customers-delete` tinyint(1) DEFAULT 0,
  `suppliers-index` tinyint(1) DEFAULT 0,
  `suppliers-add` tinyint(1) DEFAULT 0,
  `suppliers-edit` tinyint(1) DEFAULT 0,
  `suppliers-delete` tinyint(1) DEFAULT 0,
  `sales-deliveries` tinyint(1) DEFAULT 0,
  `sales-add_delivery` tinyint(1) DEFAULT 0,
  `sales-edit_delivery` tinyint(1) DEFAULT 0,
  `sales-delete_delivery` tinyint(1) DEFAULT 0,
  `sales-email_delivery` tinyint(1) DEFAULT 0,
  `sales-pdf_delivery` tinyint(1) DEFAULT 0,
  `sales-gift_cards` tinyint(1) DEFAULT 0,
  `sales-add_gift_card` tinyint(1) DEFAULT 0,
  `sales-edit_gift_card` tinyint(1) DEFAULT 0,
  `sales-delete_gift_card` tinyint(1) DEFAULT 0,
  `pos-index` tinyint(1) DEFAULT 0,
  `sales-return_sales` tinyint(1) DEFAULT 0,
  `reports-index` tinyint(1) DEFAULT 0,
  `reports-warehouse_stock` tinyint(1) DEFAULT 0,
  `reports-quantity_alerts` tinyint(1) DEFAULT 0,
  `reports-expiry_alerts` tinyint(1) DEFAULT 0,
  `reports-products` tinyint(1) DEFAULT 0,
  `reports-daily_sales` tinyint(1) DEFAULT 0,
  `reports-monthly_sales` tinyint(1) DEFAULT 0,
  `reports-sales` tinyint(1) DEFAULT 0,
  `reports-payments` tinyint(1) DEFAULT 0,
  `reports-purchases` tinyint(1) DEFAULT 0,
  `reports-profit_loss` tinyint(1) DEFAULT 0,
  `reports-customers` tinyint(1) DEFAULT 0,
  `reports-suppliers` tinyint(1) DEFAULT 0,
  `reports-staff` tinyint(1) DEFAULT 0,
  `reports-register` tinyint(1) DEFAULT 0,
  `sales-payments` tinyint(1) DEFAULT 0,
  `purchases-payments` tinyint(1) DEFAULT 0,
  `purchases-expenses` tinyint(1) DEFAULT 0,
  `products-adjustments` tinyint(1) NOT NULL DEFAULT 0,
  `bulk_actions` tinyint(1) NOT NULL DEFAULT 0,
  `customers-deposits` tinyint(1) NOT NULL DEFAULT 0,
  `customers-delete_deposit` tinyint(1) NOT NULL DEFAULT 0,
  `products-barcode` tinyint(1) NOT NULL DEFAULT 0,
  `purchases-return_purchases` tinyint(1) NOT NULL DEFAULT 0,
  `reports-expenses` tinyint(1) NOT NULL DEFAULT 0,
  `reports-daily_purchases` tinyint(1) DEFAULT 0,
  `reports-monthly_purchases` tinyint(1) DEFAULT 0,
  `products-stock_count` tinyint(1) DEFAULT 0,
  `edit_price` tinyint(1) DEFAULT 0,
  `returns-index` tinyint(1) DEFAULT 0,
  `returns-add` tinyint(1) DEFAULT 0,
  `returns-edit` tinyint(1) DEFAULT 0,
  `returns-delete` tinyint(1) DEFAULT 0,
  `returns-email` tinyint(1) DEFAULT 0,
  `returns-pdf` tinyint(1) DEFAULT 0,
  `reports-tax` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_permissions`
--

INSERT INTO `sma_permissions` (`id`, `group_id`, `products-index`, `products-add`, `products-edit`, `products-delete`, `products-cost`, `products-price`, `quotes-index`, `quotes-add`, `quotes-edit`, `quotes-pdf`, `quotes-email`, `quotes-delete`, `sales-index`, `sales-add`, `sales-edit`, `sales-pdf`, `sales-email`, `sales-delete`, `purchases-index`, `purchases-add`, `purchases-edit`, `purchases-pdf`, `purchases-email`, `purchases-delete`, `transfers-index`, `transfers-add`, `transfers-edit`, `transfers-pdf`, `transfers-email`, `transfers-delete`, `customers-index`, `customers-add`, `customers-edit`, `customers-delete`, `suppliers-index`, `suppliers-add`, `suppliers-edit`, `suppliers-delete`, `sales-deliveries`, `sales-add_delivery`, `sales-edit_delivery`, `sales-delete_delivery`, `sales-email_delivery`, `sales-pdf_delivery`, `sales-gift_cards`, `sales-add_gift_card`, `sales-edit_gift_card`, `sales-delete_gift_card`, `pos-index`, `sales-return_sales`, `reports-index`, `reports-warehouse_stock`, `reports-quantity_alerts`, `reports-expiry_alerts`, `reports-products`, `reports-daily_sales`, `reports-monthly_sales`, `reports-sales`, `reports-payments`, `reports-purchases`, `reports-profit_loss`, `reports-customers`, `reports-suppliers`, `reports-staff`, `reports-register`, `sales-payments`, `purchases-payments`, `purchases-expenses`, `products-adjustments`, `bulk_actions`, `customers-deposits`, `customers-delete_deposit`, `products-barcode`, `purchases-return_purchases`, `reports-expenses`, `reports-daily_purchases`, `reports-monthly_purchases`, `products-stock_count`, `edit_price`, `returns-index`, `returns-add`, `returns-edit`, `returns-delete`, `returns-email`, `returns-pdf`, `reports-tax`) VALUES
(1, 5, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 6, 1, 1, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1),
(3, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, 0, 0, 1, NULL, 1, 1, 1, 1, 1, NULL, 0, 1, NULL, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 8, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_pos_register`
--

CREATE TABLE `sma_pos_register` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `cash_in_hand` decimal(25,4) NOT NULL,
  `status` varchar(10) NOT NULL,
  `total_cash` decimal(25,4) DEFAULT NULL,
  `total_cheques` int(11) DEFAULT NULL,
  `total_cc_slips` int(11) DEFAULT NULL,
  `total_cash_submitted` decimal(25,4) DEFAULT NULL,
  `total_cheques_submitted` int(11) DEFAULT NULL,
  `total_cc_slips_submitted` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `closed_at` timestamp NULL DEFAULT NULL,
  `transfer_opened_bills` varchar(50) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_pos_register`
--

INSERT INTO `sma_pos_register` (`id`, `date`, `user_id`, `cash_in_hand`, `status`, `total_cash`, `total_cheques`, `total_cc_slips`, `total_cash_submitted`, `total_cheques_submitted`, `total_cc_slips_submitted`, `note`, `closed_at`, `transfer_opened_bills`, `closed_by`) VALUES
(1, '2021-02-15 03:31:58', 1, 0.0000, 'close', 1212000.0000, 0, 0, 1212000.0000, 0, 0, '', '2022-03-25 02:45:39', NULL, 1),
(2, '2021-10-04 07:14:27', 6, 10000.0000, 'close', 33776720.0000, 0, 0, 33776720.0000, 0, 0, '', '2022-03-25 02:46:11', '0', 1),
(3, '2022-03-25 02:48:35', 1, 0.0000, 'close', 0.0000, 0, 0, 0.0000, 0, 0, '', '2022-03-25 02:49:15', NULL, 1),
(4, '2022-03-25 03:23:16', 6, 5000.0000, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2022-03-25 06:03:40', 1, 0.0000, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2022-03-30 01:14:49', 9, 58000.0000, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_pos_settings`
--

CREATE TABLE `sma_pos_settings` (
  `pos_id` int(1) NOT NULL,
  `cat_limit` int(11) NOT NULL,
  `pro_limit` int(11) NOT NULL,
  `default_category` int(11) NOT NULL,
  `default_customer` int(11) NOT NULL,
  `default_biller` int(11) NOT NULL,
  `display_time` varchar(3) NOT NULL DEFAULT 'yes',
  `cf_title1` varchar(255) DEFAULT NULL,
  `cf_title2` varchar(255) DEFAULT NULL,
  `cf_value1` varchar(255) DEFAULT NULL,
  `cf_value2` varchar(255) DEFAULT NULL,
  `receipt_printer` varchar(55) DEFAULT NULL,
  `cash_drawer_codes` varchar(55) DEFAULT NULL,
  `focus_add_item` varchar(55) DEFAULT NULL,
  `add_manual_product` varchar(55) DEFAULT NULL,
  `customer_selection` varchar(55) DEFAULT NULL,
  `add_customer` varchar(55) DEFAULT NULL,
  `toggle_category_slider` varchar(55) DEFAULT NULL,
  `toggle_subcategory_slider` varchar(55) DEFAULT NULL,
  `cancel_sale` varchar(55) DEFAULT NULL,
  `suspend_sale` varchar(55) DEFAULT NULL,
  `print_items_list` varchar(55) DEFAULT NULL,
  `finalize_sale` varchar(55) DEFAULT NULL,
  `today_sale` varchar(55) DEFAULT NULL,
  `open_hold_bills` varchar(55) DEFAULT NULL,
  `close_register` varchar(55) DEFAULT NULL,
  `keyboard` tinyint(1) NOT NULL,
  `pos_printers` varchar(255) DEFAULT NULL,
  `java_applet` tinyint(1) NOT NULL,
  `product_button_color` varchar(20) NOT NULL DEFAULT 'default',
  `tooltips` tinyint(1) DEFAULT 1,
  `paypal_pro` tinyint(1) DEFAULT 0,
  `stripe` tinyint(1) DEFAULT 0,
  `rounding` tinyint(1) DEFAULT 0,
  `char_per_line` tinyint(4) DEFAULT 42,
  `pin_code` varchar(20) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT 'purchase_code',
  `envato_username` varchar(50) DEFAULT 'envato_username',
  `version` varchar(10) DEFAULT '3.4.25',
  `after_sale_page` tinyint(1) DEFAULT 0,
  `item_order` tinyint(1) DEFAULT 0,
  `authorize` tinyint(1) DEFAULT 0,
  `toggle_brands_slider` varchar(55) DEFAULT NULL,
  `remote_printing` tinyint(1) DEFAULT 1,
  `printer` int(11) DEFAULT NULL,
  `order_printers` varchar(55) DEFAULT NULL,
  `auto_print` tinyint(1) DEFAULT 0,
  `customer_details` tinyint(1) DEFAULT NULL,
  `local_printers` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_pos_settings`
--

INSERT INTO `sma_pos_settings` (`pos_id`, `cat_limit`, `pro_limit`, `default_category`, `default_customer`, `default_biller`, `display_time`, `cf_title1`, `cf_title2`, `cf_value1`, `cf_value2`, `receipt_printer`, `cash_drawer_codes`, `focus_add_item`, `add_manual_product`, `customer_selection`, `add_customer`, `toggle_category_slider`, `toggle_subcategory_slider`, `cancel_sale`, `suspend_sale`, `print_items_list`, `finalize_sale`, `today_sale`, `open_hold_bills`, `close_register`, `keyboard`, `pos_printers`, `java_applet`, `product_button_color`, `tooltips`, `paypal_pro`, `stripe`, `rounding`, `char_per_line`, `pin_code`, `purchase_code`, `envato_username`, `version`, `after_sale_page`, `item_order`, `authorize`, `toggle_brands_slider`, `remote_printing`, `printer`, `order_printers`, `auto_print`, `customer_details`, `local_printers`) VALUES
(1, 22, 50, 1, 162, 1, '1', '', '', '', '', '1', 'x1C', 'Ctrl+F3', 'Ctrl+Shift+M', 'Ctrl+Shift+C', 'Ctrl+Shift+A', 'Ctrl+F11', 'Ctrl+F12', 'F4', 'F7', 'F9', 'F8', 'Ctrl+F1', 'Ctrl+F2', 'Ctrl+F10', 0, NULL, 0, 'default', 1, 0, 0, 1, 42, NULL, 'purchase_code', 'envato_username', '3.4.25', 0, 0, 0, '', 1, 1, 'null', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_price_groups`
--

CREATE TABLE `sma_price_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_price_groups`
--

INSERT INTO `sma_price_groups` (`id`, `name`) VALUES
(1, 'Default'),
(2, 'Ecommerce'),
(3, 'WMart Cipayung'),
(5, 'WHub Cilangkap');

-- --------------------------------------------------------

--
-- Table structure for table `sma_printers`
--

CREATE TABLE `sma_printers` (
  `id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `type` varchar(25) NOT NULL,
  `profile` varchar(25) NOT NULL,
  `char_per_line` tinyint(3) UNSIGNED DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `ip_address` varbinary(45) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_printers`
--

INSERT INTO `sma_printers` (`id`, `title`, `type`, `profile`, `char_per_line`, `path`, `ip_address`, `port`) VALUES
(1, 'POS ', 'windows', 'default', 0, 'smb://ITPC//POS80', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_products`
--

CREATE TABLE `sma_products` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unit` int(11) DEFAULT NULL,
  `cost` decimal(25,4) DEFAULT NULL,
  `price` decimal(25,4) NOT NULL,
  `alert_quantity` decimal(15,4) DEFAULT 20.0000,
  `image` varchar(255) DEFAULT 'no_image.png',
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `cf1` varchar(255) DEFAULT NULL,
  `cf2` varchar(255) DEFAULT NULL,
  `cf3` varchar(255) DEFAULT NULL,
  `cf4` varchar(255) DEFAULT NULL,
  `cf5` varchar(255) DEFAULT NULL,
  `cf6` varchar(255) DEFAULT NULL,
  `quantity` decimal(15,4) DEFAULT 0.0000,
  `tax_rate` int(11) DEFAULT NULL,
  `track_quantity` tinyint(1) DEFAULT 1,
  `details` varchar(1000) DEFAULT NULL,
  `warehouse` int(11) DEFAULT NULL,
  `barcode_symbology` varchar(55) NOT NULL DEFAULT 'code128',
  `file` varchar(100) DEFAULT NULL,
  `product_details` text DEFAULT NULL,
  `tax_method` tinyint(1) DEFAULT 0,
  `type` varchar(55) NOT NULL DEFAULT 'standard',
  `supplier1` int(11) DEFAULT NULL,
  `supplier1price` decimal(25,4) DEFAULT NULL,
  `supplier2` int(11) DEFAULT NULL,
  `supplier2price` decimal(25,4) DEFAULT NULL,
  `supplier3` int(11) DEFAULT NULL,
  `supplier3price` decimal(25,4) DEFAULT NULL,
  `supplier4` int(11) DEFAULT NULL,
  `supplier4price` decimal(25,4) DEFAULT NULL,
  `supplier5` int(11) DEFAULT NULL,
  `supplier5price` decimal(25,4) DEFAULT NULL,
  `promotion` tinyint(1) DEFAULT 0,
  `promo_price` decimal(25,4) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `supplier1_part_no` varchar(50) DEFAULT NULL,
  `supplier2_part_no` varchar(50) DEFAULT NULL,
  `supplier3_part_no` varchar(50) DEFAULT NULL,
  `supplier4_part_no` varchar(50) DEFAULT NULL,
  `supplier5_part_no` varchar(50) DEFAULT NULL,
  `sale_unit` int(11) DEFAULT NULL,
  `purchase_unit` int(11) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `weight` decimal(10,4) DEFAULT NULL,
  `hsn_code` int(11) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `hide` tinyint(1) NOT NULL DEFAULT 0,
  `second_name` varchar(255) DEFAULT NULL,
  `hide_pos` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_products`
--

INSERT INTO `sma_products` (`id`, `code`, `name`, `unit`, `cost`, `price`, `alert_quantity`, `image`, `category_id`, `subcategory_id`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `quantity`, `tax_rate`, `track_quantity`, `details`, `warehouse`, `barcode_symbology`, `file`, `product_details`, `tax_method`, `type`, `supplier1`, `supplier1price`, `supplier2`, `supplier2price`, `supplier3`, `supplier3price`, `supplier4`, `supplier4price`, `supplier5`, `supplier5price`, `promotion`, `promo_price`, `start_date`, `end_date`, `supplier1_part_no`, `supplier2_part_no`, `supplier3_part_no`, `supplier4_part_no`, `supplier5_part_no`, `sale_unit`, `purchase_unit`, `brand`, `slug`, `featured`, `weight`, `hsn_code`, `views`, `hide`, `second_name`, `hide_pos`) VALUES
(97, 'OLN032', 'Oxtail Super 500 gr', 25, 0.0000, 0.0000, 10.0000, '5020092ca51d82ecef14336caa5f83d9.jpg', 2, NULL, '', '', '', '', '', '', 31.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 133000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'oxtail-super-500-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(96, 'AP1P', 'Parting 10 Ukuran 1.0 Kg Premium', 25, 0.0000, 0.0000, 10.0000, '18de42946f4719c3cd6ed48dfb8eb6ee.png', 11, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 36100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'w99-ayam-parting-10-ukuran-10-kg-premium', NULL, 0.0000, NULL, 0, 0, '', 0),
(95, 'AP1', 'Parting 10 Ukuran 1.0 Kg', 25, 0.0000, 0.0000, 10.0000, '65d6d34e6e6cc47aa618bea683b3d659.jpg', 11, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 35100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'parting-10-ukuran-10-kg', NULL, 0.0000, NULL, 0, 0, '', 0),
(94, 'SU1P', 'Sayap Utuh 1.0 Kg Premium', 25, 37900.0000, 0.0000, 10.0000, 'cd4e29e9c7945c46f7e6976fdf9d1e17.jpg', 11, NULL, '', '', '', '', '', '', 9.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 37900.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'sayap-utuh-10-kg-premium', NULL, 0.0000, NULL, 0, 0, '', 0),
(93, 'SU1', 'Sayap Utuh 1.0 Kg', 25, 0.0000, 0.0000, 10.0000, 'no_image.png', 11, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 36900.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'sayap-utuh-10-kg', NULL, 0.0000, NULL, 0, 0, '', 0),
(84, 'BD1P', 'Boneless breast 1 kg', 25, 0.0000, 0.0000, 10.0000, 'a04faafb03d9c8eac42067e87b91fdcb.png', 10, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 44500.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'boneless-breast-1-kg', NULL, 1.0000, NULL, 0, 0, 'Boneless breast 1 kg', 0),
(85, 'BP1', 'Boneless Paha 1.0 Kg', 25, 0.0000, 0.0000, 10.0000, 'no_image.png', 10, NULL, '', '', '', '', '', '', 10.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 41500.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'w99-boneless-paha-10-kg', NULL, 0.0000, NULL, 0, 0, '', 0),
(86, '011010004', 'Boneless Paha 1.0 Kg Premium', 25, 42500.0000, 0.0000, 10.0000, 'caa095b78d1a4d51b085d83377ba17ee.jpg', 10, NULL, '', '', '', '', '', '', 10.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 42500.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'boneless-paha-10-kg-premium', NULL, 1.0000, NULL, 0, 0, 'Boneless leg 1 kg', 0),
(87, 'KL1', 'Kulit 1.0 Kg', 25, 0.0000, 0.0000, 10.0000, 'no_image.png', 10, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 32500.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'kulit-ayam-10-kg', NULL, 0.0000, NULL, 0, 0, '', 0),
(88, 'KL1P', 'Kulit 1.0 Kg Premium', 25, 33500.0000, 0.0000, 10.0000, '420eb444ebb5328045cb3b8f04aa12cf.png', 10, NULL, '', '', '', '', '', '', 9.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 33500.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'kulit-10-kg-premium', NULL, 0.0000, NULL, 0, 0, '', 0),
(89, '011010001', 'Paha Atas 1.0 Kg', 25, 36900.0000, 0.0000, 10.0000, 'no_image.png', 11, NULL, '', '', '', '', '', '', 8.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 36900.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'paha-atas-10-kg', NULL, 1.0000, NULL, 0, 0, 'paha atas 1kg', 0),
(91, 'PB1', 'Paha Bawah 1.0 Kg', 25, 36900.0000, 0.0000, 10.0000, 'no_image.png', 11, NULL, '', '', '', '', '', '', 7.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 36900.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'paha-bawah-10-kg', NULL, 0.0000, NULL, 0, 0, '', 0),
(92, 'PB1P', 'Paha Bawah 1.0 Kg Premium', 25, 0.0000, 0.0000, 10.0000, '91ef9783d1740dfd02b35b5a977710bb.png', 11, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 37900.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'paha-bawah-10-kg-premium', NULL, 0.0000, NULL, 0, 0, '', 0),
(73, 'WK004', 'Karkas 0.4 Kg', 25, 0.0000, 0.0000, 10.0000, 'd5a799b584efd2f26d67c4fdb3216f69.jpg', 9, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 17500.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'w99-karkas-04-kg', NULL, 0.0000, NULL, 0, 0, '', 0),
(75, 'WK006', 'Karkas 0.6 Kg', 25, 0.0000, 0.0000, 10.0000, '18a7f6b31b86472b11ee9f6f5ebe6eac.jpg', 9, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 23800.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'karkas-06-kg', NULL, 0.0000, NULL, 0, 0, '', 0),
(74, 'WK005', 'Karkas 0.5 Kg', 25, 0.0000, 0.0000, 10.0000, '426801d17fafeffcd8c9aba1169cdb27.jpg', 9, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 20500.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'karkas-05-kg', NULL, 0.0000, NULL, 0, 0, '', 0),
(76, 'WK007', 'Karkas 0.7 Kg', 25, 0.0000, 0.0000, 10.0000, 'fd28d39597a23428c8d3f92719aedd0f.jpg', 9, NULL, '', '', '', '', '', '', 31.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 25300.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'karkas-07-kg', NULL, 0.0000, NULL, 0, 0, '', 0),
(77, 'WK008', 'Karkas 0.8 Kg', 25, 0.0000, 0.0000, 10.0000, '503adc80a3b1ae2674e5c2e1e4d53856.jpg', 9, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 27200.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'karkas-08-kg', NULL, 0.0000, NULL, 0, 0, '', 0),
(78, 'WK009', 'Karkas 0.9 Kg', 25, 0.0000, 0.0000, 10.0000, 'def9c8979d8178ad45b6b6a922714ee9.jpg', 9, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 30100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'karkas-09-kg', NULL, 0.0000, NULL, 0, 0, '', 0),
(79, 'WK010', 'Karkas 1.0 Kg', 25, 0.0000, 0.0000, 10.0000, 'ff6a09f616d1bd6ffc300e5a264bfaa7.jpg', 9, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 31500.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'karkas-10-kg', NULL, 0.0000, NULL, 0, 0, '', 0),
(80, 'WK011', 'Karkas 1.1 Kg', 25, 0.0000, 0.0000, 10.0000, '1e73b09b2e93bfc764871e71dd597f25.jpg', 9, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 33600.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'karkas-11-kg', NULL, 0.0000, NULL, 0, 0, '', 0),
(81, 'WK012', 'Karkas 1.2 Kg', 25, 0.0000, 0.0000, 10.0000, 'c48e59473d66643bf2f0ea6b28267843.jpg', 9, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 36300.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'karkas-12-kg', NULL, 0.0000, NULL, 0, 0, '', 0),
(82, 'WK013', 'Karkas 1.3 Kg', 25, 0.0000, 0.0000, 10.0000, '0fe47596bb23d19a0ccf98d7484f209b.jpg', 9, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 38200.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'karkas-13-kg', NULL, 0.0000, NULL, 0, 0, '', 0),
(83, 'BD1', 'Boneless Dada 1.0 Kg', 25, 43500.0000, 0.0000, 10.0000, 'no_image.png', 10, NULL, '', '', '', '', '', '', 10.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 43500.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'boneless-dada-10-kg', NULL, 0.0000, NULL, 0, 0, '', 0),
(98, 'OLN0290', 'Tenderloin Cube 300 gr', 25, 0.0000, 0.0000, 10.0000, '19c8ca806deb4966a2ceb8d0b1a2aac9.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 98000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-tenderloin-cube-300-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(99, '011010027', 'Daging Rendang 500 gr (AUS)', 25, 88000.0000, 0.0000, 10.0000, 'be5d7a5e1f8923b1cb0a21e1a1a56385.jpg', 2, NULL, '', '', '', '', '', '', 20.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 88000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-daging-rendang-500-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(100, 'WMS002', 'Daging Rendang 1 kg (AUS)', 25, 0.0000, 0.0000, 10.0000, '546baed5d6acf148fc298da887d98cef.jpg', 2, NULL, '', '', '', '', '', '', 20.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 168000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-daging-rendang-1000-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(101, '011010026', 'Sukiyaki Slice 500 gr (AUS)', 25, 90000.0000, 0.0000, 10.0000, 'a59d4f95bded1fc7e781652c38b1cc15.jpg', 2, NULL, '', '', '', '', '', '', 37.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 90000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-sukiyaki-slice-500-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(102, 'WMS004', 'Sukiyaki Slice 1 kg (AUS)', 25, 0.0000, 0.0000, 10.0000, 'c4d1b6d54c0302e670cdb6b253f407e5.jpg', 2, NULL, '', '', '', '', '', '', 37.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 173000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-sukiyaki-slice-1000-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(103, '011010021', 'Yakiniku / Teriyaki Slice Less Fat 500 gr (AUS)', 25, 88000.0000, 0.0000, 10.0000, '9dec55ba95276b4da5f429cdfa38e1e7.jpg', 2, NULL, '', '', '', '', '', '', 33.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 88000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-yakiniku-teriyaki-slice-less-fat-500-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(104, 'WMS006', 'Yakiniku / Teriyaki Slice Less Fat 1 kg (AUS)', 25, 0.0000, 0.0000, 10.0000, '290a83f786343b96af69a3e4523952e9.jpg', 2, NULL, '', '', '', '', '', '', 33.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 168000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'yakiniku-teriyaki-slice-less-fat-1-kg', NULL, 0.0000, NULL, 0, 0, '', 0),
(105, 'WMS011', 'Tulang Sop Neckbone 500 gr (AUS)', 25, 0.0000, 0.0000, 10.0000, '0d7160e01dab7d6ce09f264641692eab.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 31000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-tulang-sop-neckbone-500-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(106, 'WMS012', 'Tulang Sop Neckbone 1 kg (AUS)', 25, 0.0000, 0.0000, 10.0000, '12be63e0b85f13bebd25e0f73540dc54.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 52000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-tulang-sop-neckbone-1000-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(107, '011010023', 'All Variant Super Less Fat 500 gr (AUS)', 25, 58000.0000, 0.0000, 10.0000, 'c1103d653e20377323ca4de3407760a6.jpg', 2, NULL, '', '', '', '', '', '', 28.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 58000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'all-variant-super-less-fat-500-gr-aus', NULL, 0.0000, NULL, 0, 0, '', 0),
(108, 'WMS016', 'All Variant Super Less Fat 1kg (AUS)', 25, 0.0000, 0.0000, 10.0000, '11ba01714bf7bcb190d3bf4fb9a5ea52.jpg', 2, NULL, '', '', '', '', '', '', 28.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 108000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-all-variant-super-less-fat-1000-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(109, '011010019', 'Rib Eye Steak 200 gr (AUS)', 25, 53000.0000, 0.0000, 10.0000, 'e2a6d50a1d8fb16f64603057f48a57a6.jpg', 2, NULL, '', '', '', '', '', '', 20.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 53000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-rib-eye-steak-200-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(110, 'WMS018', 'Rib Eye Steak 400 gr (AUS)', 25, 0.0000, 0.0000, 10.0000, 'dc21a0d2d1789c34be5d1d67ddc8faa9.jpg', 2, NULL, '', '', '', '', '', '', 20.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 98000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-rib-eye-steak-400-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(111, '011010022', 'Oxtail Cut 500 gr (AUS)', 25, 133000.0000, 0.0000, 10.0000, '492c650b3b2151300c77dfe842a8e3c0.jpg', 2, NULL, '', '', '', '', '', '', 31.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 133000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-oxtail-cut-500-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(112, 'WMS022', 'Oxtail Cut 1 kg (AUS)', 25, 0.0000, 0.0000, 10.0000, '11de77679f3cc73cc1db62b11c98d35e.jpg', 2, NULL, '', '', '', '', '', '', 31.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 258000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-oxtail-cut-1000-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(113, '011010028', 'Daging Giling 500 gr (AUS)', 25, 63000.0000, 0.0000, 10.0000, 'c37633d8b6c1b39e1581419f7d99618d.jpg', 2, NULL, '', '', '', '', '', '', 9.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 63000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-daging-giling-500-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(114, 'WMS024', 'Daging Giling 1 kg (AUS)', 25, 0.0000, 0.0000, 10.0000, 'a2de4f179e211f43cc8924a7ac4d686b.jpg', 2, NULL, '', '', '', '', '', '', 9.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 118000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-daging-giling-1000-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(115, '011010025', 'Iga Sop Super (Rib Plate) 500 gr (AUS)', 25, 51000.0000, 0.0000, 10.0000, '5cb03e311a9c2962973dd1c2a46b578c.jpg', 2, NULL, '', '', '', '', '', '', 38.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 51000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-iga-sop-super-rib-plate-500-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(116, 'WMS026', 'Iga Sop Super (Rib Plate) 1 kg', 25, 0.0000, 0.0000, 10.0000, 'b62d72367c02cd258c97245da1aad98f.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 93000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'iga-sop-super-rib-plate-1-kg', NULL, 0.0000, NULL, 0, 0, '', 0),
(117, 'WM027', 'Bone In Sirloin Steak 250 gr (AUS)', 25, 0.0000, 0.0000, 10.0000, '97608d4c0bcfd8aa49943f9b9270b9fb.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 61000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-bone-in-sirloin-steak-250-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(118, '011010018', 'Lidah Slice 500 gr (AUS)', 25, 0.0000, 0.0000, 10.0000, '3f5e71f101bf00c8c306008746088092.jpg', 2, NULL, '', '', '', '', '', '', 20.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 75000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'beef-lidah-slice-500-gr-aus', NULL, 0.0000, NULL, 0, 0, '', 0),
(119, 'WMS029', 'Lidah Slice 250 gr (AUS)', 25, 43000.0000, 0.0000, 10.0000, 'ee959322ca838bc9357dc7e42c179886.jpg', 2, NULL, '', '', '', '', '', '', 20.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 43000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'lidah-slice-250-gr-aus', NULL, 0.0000, NULL, 0, 0, '', 0),
(120, '011010024', 'Iga Galbi 500 gr (AUS)', 25, 81000.0000, 0.0000, 10.0000, '0c7b94855ec05c88debcdad4e40c7964.jpg', 2, NULL, '', '', '', '', '', '', 5.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 81000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-iga-galbi-500-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(121, '011010020', 'Striploin Steak 200 gr (AUS)', 25, 53000.0000, 0.0000, 10.0000, '87d5e89a9e3185e6d3cc4d9e3ab31edd.jpg', 2, NULL, '', '', '', '', '', '', 20.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 53000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-striploin-steak-200-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(122, 'OLN010', 'Striploin Steak 400 gr (AUS)', 25, 0.0000, 0.0000, 10.0000, '8d59f6fa70101107c5ba0a4106358b8c.jpg', 2, NULL, '', '', '', '', '', '', 20.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 98000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-striploin-steak-400-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(123, 'OLN011', 'Iga Bakar Back Ribs 500 gr (AUS)', 25, 0.0000, 0.0000, 10.0000, '2378b3cdcb2ebd5e9f106d12b45349b6.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 56000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-iga-bakar-back-ribs-500-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(124, 'OLN012', 'Iga Bakar Back Ribs 1 kg (AUS)', 25, 0.0000, 0.0000, 10.0000, '6d8fe029a68e38cbc819408941414635.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 101000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'iga-bakar-back-ribs-1000-gr-aus', NULL, 0.0000, NULL, 0, 0, '', 0),
(125, 'OLN015', 'All Variant Tumis / Sop 500 gr (AUS)', 25, 0.0000, 0.0000, 10.0000, '1f25ad809922bd4813671dc241d39337.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 50000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-all-variant-tumis-sop-500-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(126, 'OLN016', 'All Variant Tumis / Sop 1 kg (AUS)', 25, 0.0000, 0.0000, 10.0000, '7aaa65c6a281410bd5b621c0fbd0c52b.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 93000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 4, 'wmeat-aus-beef-all-variant-tumis-sop-1000-gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(128, '8997221224877', 'Spicy chicken 500g ', 25, 0.0000, 0.0000, 10.0000, '35f2a99b46ea1e20a0e30f974bab5cdd.png', 12, NULL, '', '', '', '', '', '', 30.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 21000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 27500.0000, '2022-03-27', '2022-03-28', '', NULL, NULL, NULL, NULL, 25, 25, 1, 'spicy-chicken-500g', NULL, 0.0000, NULL, 0, 0, 'Spicy chicken 500g ', 0),
(129, '8997221225164', 'Sosis Royal Mini', 25, 22000.0000, 0.0000, 10.0000, '94647fd1620067cf698d7c6506772e78.png', 12, NULL, '', '', '', '', '', '', 11.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 22000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 3, 'sosis-royal-mini', NULL, 0.0000, NULL, 0, 0, '', 0),
(130, '8997221220466', 'Nuget Fancy 250gr', 25, 6500.0000, 0.0000, 10.0000, '470f09c004b4aa1661981446af0a1dc2.jpg', 12, NULL, '', '', '', '', '', '', 55.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 6500.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 1, 'nuget-fancy-250gr', NULL, 0.2500, NULL, 0, 0, '', 0),
(131, '011010006', 'Bakso Java 500gr', 25, 9000.0000, 0.0000, 10.0000, 'ae9f988dae77bc09fc1f2b7102a1ee04.png', 12, NULL, '', '', '', '', '', '', 18.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 2, 9000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 13000.0000, '2022-03-26', '2022-03-27', '', NULL, NULL, NULL, NULL, 25, 25, 1, 'bakso-java-500gr', NULL, 0.0000, NULL, 0, 0, '', 0),
(133, '8991188943543', 'Sasa santan kelapa 200 ml', 23, 8300.0000, 8300.0000, 5.0000, 'da5668a5fb7c9d00a413362823d8a999.jpg', 3, NULL, '', '', '', '', '', '', 24.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, 8300.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 8, 'sasa-santan-kelapa-200-ml', NULL, 0.0000, NULL, 0, 0, 'Sasa santan kelapa 200 ml', 0),
(134, 'TLR001', 'Telur Ayam', 22, 20000.0000, 0.0000, 1.0000, '0424205ab7c2b3405faa40982775bdbb.jpg', 13, NULL, '', '', '', '', '', '', 39.5250, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 164, 20000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 5, 'telur-ayam', NULL, 1.0000, NULL, 0, 0, 'Telur Ayam', 0),
(135, '8997221221524', 'JAVA BEEF PATTIES 500GR', 21, 25512.0000, 0.0000, 0.0000, 'cb733fe0f88ab9f4bf281e8486dad043.png', 12, NULL, '', '', '', '', '', '', 36.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, 25512.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 1, 'java-beef-patties-500gr', NULL, 0.5000, NULL, 0, 0, '', 0),
(136, '8997221224242', 'MINIPAO AYAM 480GR', 25, 10205.0000, 0.0000, 0.0000, '7d61fb98dc690c30500cb4908cdc75c8.png', 12, NULL, '', '', '', '', '', '', 22.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, 10205.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 1, 'oke-mini-ayam-480gr', NULL, 11.5200, NULL, 0, 0, 'OKE MINI AYAM 480GR', 0),
(137, '8997221222132', 'MINIPAO COKELAT 480GR', 25, 10205.0000, 0.0000, 0.0000, 'c4c5c3bf6f6932dd153a0124bf2ab21f.png', 12, NULL, '', '', '', '', '', '', 16.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, 10205.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 1, 'minipao-cokelat-480gr', NULL, 11.5200, NULL, 0, 0, 'OKEPAO MINI COKELAT 480GR', 0),
(138, '8997221223849', 'MINIPAO KEJU 480GR', 25, 10205.0000, 0.0000, 0.0000, 'b7b3c271f2d30a9106b4728accc8d11a.png', 12, NULL, '', '', '', '', '', '', 8.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, 10205.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 1, 'oke-mini-keju-480gr', NULL, 5.7600, NULL, 0, 0, 'OKE MINI KEJU 480GR', 0),
(139, '8997221224259', 'MINIPAO SAPI 480GR', 25, 10205.0000, 0.0000, 5.0000, '2c9c715dea8481c7983c1b8d50836273.png', 12, NULL, '', '', '', '', '', '', 8.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, 10205.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 1, 'oke-mini-sapi-480gr', NULL, 5.7600, NULL, 0, 0, 'OKE MINI SAPI 480GR', 0),
(140, '8997221223856', 'MINIPAO STROBERI 480GR', 25, 10205.0000, 0.0000, 5.0000, '29433cc3d095ef5fa14ba92c2306a567.png', 12, NULL, '', '', '', '', '', '', 11.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, 10205.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 1, 'oke-mini-stroberi-480gr', NULL, 5.7600, NULL, 0, 0, 'OKE MINI STROBERI 480GR', 0),
(141, '8997221227595', 'ROYAL JAVA BAKSO SAPI 450GR', 25, 38380.0000, 0.0000, 5.0000, 'c127a7d5b6e3f82e659c8caf990e97db.jpg', 12, NULL, '', '', '', '', '', '', 39.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, 38380.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 1, 'royal-java-bakso-sapi-450gr', NULL, 0.8000, NULL, 0, 0, 'ROYAL JAVA BAKSO SAPI 450GR', 0),
(146, '011010014', 'Naget ayam hati 250 g', 25, 7902.0000, 0.0000, 0.0000, '40eeb1f36fe47282c806c43174e6c03e.jpg', 5, NULL, '', '', '', '', '', '', 17.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, 7902.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 1, 'naget-ayam-hati-250-g', NULL, 0.2500, NULL, 0, 0, 'Naget ayam hati 250 g', 0),
(150, '011010008', 'Naget ayam fancy 250 gr', 25, 7902.0000, 0.0000, 10.0000, 'dcfdb140e6662be1880f0a014ba3c6a7.png', 5, NULL, '', '', '', '', '', '', 58.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, 7902.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 1, 'naget-ayam-fancy-250-gr', NULL, 0.2500, NULL, 0, 0, 'Naget ayam fancy 250 gr', 0),
(142, '011010002', 'Drum stick 1 kg', 25, 0.0000, 0.0000, 0.0000, '6c67250dfa275a45470836f932a61e7f.png', 11, NULL, '', '', '', '', '', '', 8.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 5, 'drum-stick-1-kg', NULL, 1.0000, NULL, 0, 0, 'Drum stick 1 kg', 0),
(143, '011010003', 'Chicken wing 1 kg', 23, 0.0000, 0.0000, 0.0000, 'no_image.png', 11, NULL, '', '', '', '', '', '', 9.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 5, 'chicken-wing-1-kg', NULL, 1.0000, NULL, 0, 0, 'Chicken wing 1 kg', 0),
(144, '011010007', 'Chicken teriyaki 500g', 25, 0.0000, 0.0000, 0.0000, 'ee06979c55b3ea70f4a29245425b1e19.jpg', 12, NULL, '', '', '', '', '', '', 9.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 1, 'chicken-teriyaki-500g', NULL, 0.5000, NULL, 0, 0, 'Chicken teriyaki 500g', 0),
(145, '011010009', 'Bart\'s french fries 1 kg', 25, 0.0000, 0.0000, 0.0000, '498701c23988e04e1fb2b30f3595bc44.jpg', 1, NULL, '', '', '', '', '', '', 34.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 9, 'barts-french-fries-1-kg', NULL, 1.0000, NULL, 0, 0, 'Bart&#039;s french fries 1 kg', 0),
(147, '011010015', 'Naget ayam fancy 500 g ', 25, 14223.0000, 0.0000, 0.0000, 'a454efb24ab7a1ef2aa4e1f0ae675042.png', 5, NULL, '', '', '', '', '', '', 12.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, 14223.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 1, 'naget-ayam-fancy-500-g', NULL, 0.5000, NULL, 0, 0, 'Naget ayam fancy 500 g ', 0),
(148, '011010029', 'Bratwurst sausage mini ori 500 g', 25, 34768.0000, 0.0000, 0.0000, '6025eaa7bf1684c6202fa271494e84b3.png', 12, NULL, '', '', '', '', '', '', 50.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, 34768.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 1, 'bratwurst-sausage-mini-ori-500-g', NULL, 0.5000, NULL, 0, 0, 'Bratwurst sausage mini ori 500 g', 0),
(149, '011010031', 'Bratwurst sausage mini keju 500 g', 25, 34768.0000, 0.0000, 0.0000, '3ce629ca00fe64454c082d74b7b51acb.png', 12, NULL, '', '', '', '', '', '', 9.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, 34768.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 3, 'bratwurst-sausage-mini-keju-500-g', NULL, 0.5000, NULL, 0, 0, 'Bratwurst sausage mini keju 500 g', 0),
(151, '8986360571294', 'Sumur Tujuh', 25, 54000.0000, 0.0000, 0.0000, '404d2428f5061798818a518ef7998f87.jpg', 1, NULL, '', '', '', '', '', '', 23.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, 54800.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 6, 'sumur-tujuh', NULL, 5.0000, NULL, 0, 0, 'Sumur Tujuh', 0),
(152, '8896360571210', 'Pulosari 5 KG', 25, 54500.0000, 0.0000, 0.0000, '9d85aff79e290118a3680ccbcb20a30b.png', 1, NULL, '', '', '', '', '', '', 21.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 2, 54500.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 7, 'pulosari-5-kg', NULL, 5.0000, NULL, 0, 0, 'Pulosari 5kg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_photos`
--

CREATE TABLE `sma_product_photos` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_prices`
--

CREATE TABLE `sma_product_prices` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price_group_id` int(11) NOT NULL,
  `price` decimal(25,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_product_prices`
--

INSERT INTO `sma_product_prices` (`id`, `product_id`, `price_group_id`, `price`) VALUES
(3, 95, 3, 37600.0000),
(4, 96, 3, 38600.0000),
(5, 83, 3, 46000.0000),
(6, 84, 3, 46000.0000),
(7, 85, 3, 44000.0000),
(8, 86, 3, 45000.0000),
(9, 87, 3, 35000.0000),
(10, 88, 3, 36000.0000),
(11, 121, 3, 64130.0000),
(12, 122, 3, 118580.0000),
(13, 123, 3, 67760.0000),
(14, 124, 3, 122210.0000),
(15, 125, 3, 60500.0000),
(16, 126, 3, 112530.0000),
(17, 98, 3, 118580.0000),
(18, 97, 3, 160930.0000),
(19, 89, 3, 39400.0000),
(21, 91, 3, 39400.0000),
(22, 92, 3, 40400.0000),
(23, 93, 3, 39400.0000),
(24, 94, 3, 40400.0000),
(25, 73, 3, 20000.0000),
(26, 74, 3, 23000.0000),
(27, 75, 3, 26300.0000),
(28, 76, 3, 27800.0000),
(29, 77, 3, 29700.0000),
(30, 78, 3, 32600.0000),
(31, 79, 3, 34000.0000),
(32, 80, 3, 36100.0000),
(33, 81, 3, 38800.0000),
(34, 82, 3, 40700.0000),
(35, 117, 3, 73810.0000),
(36, 99, 3, 106480.0000),
(37, 100, 3, 203280.0000),
(38, 101, 3, 108900.0000),
(39, 102, 3, 209330.0000),
(40, 103, 3, 106480.0000),
(41, 104, 3, 203280.0000),
(42, 105, 3, 37510.0000),
(43, 106, 3, 62920.0000),
(44, 107, 3, 70180.0000),
(45, 108, 3, 130680.0000),
(46, 109, 3, 64130.0000),
(47, 110, 3, 118580.0000),
(48, 111, 3, 160930.0000),
(49, 112, 3, 312180.0000),
(50, 113, 3, 76230.0000),
(51, 114, 3, 142780.0000),
(52, 115, 3, 61710.0000),
(53, 116, 3, 112530.0000),
(54, 118, 3, 90750.0000),
(55, 119, 3, 52030.0000),
(56, 120, 3, 98010.0000),
(57, 134, 3, 22000.0000),
(58, 152, 3, 60000.0000),
(59, 151, 3, 57500.0000),
(60, 139, 3, 14125.0000),
(61, 136, 3, 14125.0000),
(62, 140, 3, 14125.0000),
(63, 138, 3, 14125.0000),
(64, 137, 3, 14125.0000),
(65, 143, 3, 39400.0000),
(66, 131, 3, 18500.0000),
(67, 144, 3, 27700.0000),
(68, 150, 3, 13000.0000),
(69, 145, 3, 27000.0000),
(70, 146, 3, 13000.0000),
(71, 147, 3, 19650.0000),
(72, 148, 3, 48125.0000),
(73, 149, 3, 48125.0000),
(74, 133, 3, 8300.0000),
(75, 130, 3, 13000.0000),
(76, 135, 3, 35625.0000),
(77, 128, 3, 37000.0000),
(78, 129, 3, 31500.0000),
(79, 141, 3, 53125.0000),
(80, 142, 3, 39400.0000);

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_variants`
--

CREATE TABLE `sma_product_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `cost` decimal(25,4) DEFAULT NULL,
  `price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_promos`
--

CREATE TABLE `sma_promos` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `product2buy` int(11) NOT NULL,
  `product2get` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_purchases`
--

CREATE TABLE `sma_purchases` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `supplier_id` int(11) NOT NULL,
  `supplier` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `total` decimal(25,4) DEFAULT NULL,
  `product_discount` decimal(25,4) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_discount` decimal(25,4) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT NULL,
  `product_tax` decimal(25,4) DEFAULT NULL,
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT 0.0000,
  `shipping` decimal(25,4) DEFAULT 0.0000,
  `grand_total` decimal(25,4) NOT NULL,
  `paid` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `status` varchar(55) DEFAULT '',
  `payment_status` varchar(20) DEFAULT 'pending' COMMENT 'Paid or pending',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `payment_term` tinyint(4) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `surcharge` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `return_purchase_ref` varchar(55) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `return_purchase_total` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_purchases`
--

INSERT INTO `sma_purchases` (`id`, `reference_no`, `date`, `supplier_id`, `supplier`, `warehouse_id`, `note`, `total`, `product_discount`, `order_discount_id`, `order_discount`, `total_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `paid`, `status`, `payment_status`, `created_by`, `updated_by`, `updated_at`, `attachment`, `payment_term`, `due_date`, `return_id`, `surcharge`, `return_purchase_ref`, `purchase_id`, `return_purchase_total`, `cgst`, `sgst`, `igst`) VALUES
(1, 'PO2022/03/0009', '2022-03-25 10:29:50', 2, 'Widodo Makmur Retail', 1, '', 199200.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 199200.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(3, 'SJ/CKR/299', '2022-03-26 01:48:22', 2, 'Widodo Makmur Retail', 1, '', 1022000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1022000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(4, 'SJ/CKR/299', '2022-03-26 02:12:27', 2, 'Widodo Makmur Retail', 1, '', 2312000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 2312000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(5, '1512/DO/PWM/III/22', '2022-03-26 02:48:00', 2, 'Widodo Makmur Retail', 1, '', 5319944.0000, 0.0000, '12', 12.0000, 12.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 5319932.0000, 0.0000, 'received', 'pending', 6, 1, '2022-03-26 04:58:19', NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(6, 'PO2022/03/0010', '2022-03-26 02:50:49', 164, 'Ibu Yatmi', 1, '', 1500000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1500000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(7, 'PO2022/03/0004', '2022-03-26 03:06:30', 2, 'Widodo Makmur Retail', 1, '&lt;p&gt;No&period; DO&colon;&nbsp;7464&sol;DO&sol;CAM&sol;III&sol;22&lt;br&gt;No&period; SO&colon; 2918&sol;GI&sol;CAM&sol;III&sol;22&lt;br&gt;SO&colon; SO-22031387&lt;&sol;p&gt;', 19655000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 19655000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(8, 'WMS/2022/III/DO/0497', '2022-03-26 04:22:50', 2, 'Widodo Makmur Retail', 1, '', 2712500.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 2712500.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_purchase_items`
--

CREATE TABLE `sma_purchase_items` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_cost` decimal(25,4) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(20) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `quantity_balance` decimal(15,4) DEFAULT 0.0000,
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `unit_cost` decimal(25,4) DEFAULT NULL,
  `real_unit_cost` decimal(25,4) DEFAULT NULL,
  `quantity_received` decimal(15,4) DEFAULT NULL,
  `supplier_part_no` varchar(50) DEFAULT NULL,
  `purchase_item_id` int(11) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_purchase_items`
--

INSERT INTO `sma_purchase_items` (`id`, `purchase_id`, `transfer_id`, `product_id`, `product_code`, `product_name`, `option_id`, `net_unit_cost`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `expiry`, `subtotal`, `quantity_balance`, `date`, `status`, `unit_cost`, `real_unit_cost`, `quantity_received`, `supplier_part_no`, `purchase_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `gst`, `cgst`, `sgst`, `igst`) VALUES
(1, 1, NULL, 133, '8991188943543', 'Sasa santan kelapa 200 ml', NULL, 8300.0000, 24.0000, 1, 0.0000, NULL, '', '0', 0.0000, '2023-02-25', 199200.0000, 24.0000, '2022-03-25', 'received', 8300.0000, 8300.0000, 24.0000, NULL, NULL, 23, 'PCS', 24.0000, NULL, NULL, NULL, NULL),
(3, 3, NULL, 130, '8997221220466', 'Nuget Fancy 250gr', NULL, 6500.0000, 48.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 312000.0000, 31.0000, '2022-03-26', 'received', 6500.0000, 6500.0000, 48.0000, NULL, NULL, 25, 'Pack', 48.0000, NULL, NULL, NULL, NULL),
(4, 3, NULL, 131, '8997221225812', 'Bakso Java 500gr', NULL, 9000.0000, 30.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 270000.0000, 18.0000, '2022-03-26', 'received', 9000.0000, 9000.0000, 30.0000, NULL, NULL, 25, 'Pack', 30.0000, NULL, NULL, NULL, NULL),
(5, 3, NULL, 129, '8997221225164', 'Sosis Royal Mini', NULL, 22000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 440000.0000, 11.0000, '2022-03-26', 'received', 22000.0000, 22000.0000, 20.0000, NULL, NULL, 25, 'Pack', 20.0000, NULL, NULL, NULL, NULL),
(6, 4, NULL, 83, 'BD1', 'W99 Boneless Dada 1.0 Kg', NULL, 43500.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 435000.0000, 10.0000, '2022-03-26', 'received', 43500.0000, 43500.0000, 10.0000, NULL, NULL, 25, 'Pack', 10.0000, NULL, NULL, NULL, NULL),
(7, 4, NULL, 86, '011010004', 'Boneless Paha 1.0 Kg Premium', NULL, 42500.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 425000.0000, 10.0000, '2022-03-26', 'received', 42500.0000, 42500.0000, 10.0000, NULL, NULL, 25, 'Pack', 10.0000, NULL, NULL, NULL, NULL),
(8, 4, NULL, 91, 'PB1', 'W99 Paha Bawah 1.0 Kg', NULL, 36900.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 369000.0000, 7.0000, '2022-03-26', 'received', 36900.0000, 36900.0000, 10.0000, NULL, NULL, 25, 'Pack', 10.0000, NULL, NULL, NULL, NULL),
(9, 4, NULL, 89, '011010001', 'Paha Atas 1.0 Kg', NULL, 36900.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 369000.0000, 8.0000, '2022-03-26', 'received', 36900.0000, 36900.0000, 10.0000, NULL, NULL, 25, 'Pack', 10.0000, NULL, NULL, NULL, NULL),
(10, 4, NULL, 94, 'SU1P', 'W99 Sayap Utuh 1.0 Kg Premium', NULL, 37900.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 379000.0000, 9.0000, '2022-03-26', 'received', 37900.0000, 37900.0000, 10.0000, NULL, NULL, 25, 'Pack', 10.0000, NULL, NULL, NULL, NULL),
(11, 4, NULL, 88, 'KL1P', 'W99 Kulit 1.0 Kg Premium', NULL, 33500.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 335000.0000, 9.0000, '2022-03-26', 'received', 33500.0000, 33500.0000, 10.0000, NULL, NULL, 25, 'Pack', 10.0000, NULL, NULL, NULL, NULL),
(49, 5, NULL, 130, '8997221220466', 'Nuget Fancy 250gr', NULL, 6500.0000, 24.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 156000.0000, 24.0000, '2022-03-26', 'received', 6500.0000, 6500.0000, 24.0000, NULL, NULL, 25, 'Pack', 24.0000, NULL, NULL, NULL, NULL),
(48, 5, NULL, 149, '011010031', 'Bratwurst sausage mini keju 500 g', NULL, 34768.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 695360.0000, 9.0000, '2022-03-26', 'received', 34768.0000, 34768.0000, 20.0000, NULL, NULL, 25, 'Pack', 20.0000, NULL, NULL, NULL, NULL),
(47, 5, NULL, 148, '011010028', 'Bratwurst sausage mini ori 500 g', NULL, 34768.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 695360.0000, 50.0000, '2022-03-26', 'received', 34768.0000, 34768.0000, 20.0000, NULL, NULL, 25, 'Pack', 20.0000, NULL, NULL, NULL, NULL),
(46, 5, NULL, 147, '011010015', 'Naget ayam fancy 500 g ', NULL, 14223.0000, 12.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 170676.0000, 12.0000, '2022-03-26', 'received', 14223.0000, 14223.0000, 12.0000, NULL, NULL, 25, 'Pack', 12.0000, NULL, NULL, NULL, NULL),
(45, 5, NULL, 146, '011010014', 'Naget ayam hati 250 g', NULL, 7902.0000, 24.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 189648.0000, 17.0000, '2022-03-26', 'received', 7902.0000, 7902.0000, 24.0000, NULL, NULL, 25, 'Pack', 24.0000, NULL, NULL, NULL, NULL),
(44, 5, NULL, 141, '8997221227595', 'ROYAL JAVA BAKSO SAPI 450GR', NULL, 38380.0000, 40.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1535200.0000, 39.0000, '2022-03-26', 'received', 38380.0000, 38380.0000, 40.0000, NULL, NULL, 25, 'Pack', 40.0000, NULL, NULL, NULL, NULL),
(43, 5, NULL, 140, '8997221223856', 'MINIPAO STROBERI 480GR', NULL, 10205.0000, 12.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 122460.0000, 11.0000, '2022-03-26', 'received', 10205.0000, 10205.0000, 12.0000, NULL, NULL, 25, 'Pack', 12.0000, NULL, NULL, NULL, NULL),
(42, 5, NULL, 139, '8997221224259', 'MINIPAO SAPI 480GR', NULL, 10205.0000, 12.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 122460.0000, 8.0000, '2022-03-26', 'received', 10205.0000, 10205.0000, 12.0000, NULL, NULL, 25, 'Pack', 12.0000, NULL, NULL, NULL, NULL),
(41, 5, NULL, 138, '8997221223849', 'MINIPAO KEJU 480GR', NULL, 10205.0000, 12.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 122460.0000, 8.0000, '2022-03-26', 'received', 10205.0000, 10205.0000, 12.0000, NULL, NULL, 25, 'Pack', 12.0000, NULL, NULL, NULL, NULL),
(40, 5, NULL, 137, '8997221222132', 'MINIPAO COKELAT 480GR', NULL, 10205.0000, 24.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 244920.0000, 16.0000, '2022-03-26', 'received', 10205.0000, 10205.0000, 24.0000, NULL, NULL, 25, 'Pack', 24.0000, NULL, NULL, NULL, NULL),
(39, 5, NULL, 136, '8997221224242', 'MINIPAO AYAM 480GR', NULL, 10205.0000, 24.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 244920.0000, 22.0000, '2022-03-26', 'received', 10205.0000, 10205.0000, 24.0000, NULL, NULL, 25, 'Pack', 24.0000, NULL, NULL, NULL, NULL),
(38, 5, NULL, 135, '8997221221524', 'JAVA BEEF PATTIES 500GR', NULL, 25512.0000, 40.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1020480.0000, 36.0000, '2022-03-26', 'received', 25512.0000, 25512.0000, 40.0000, NULL, NULL, 21, 'Gram', 40.0000, NULL, NULL, NULL, NULL),
(24, 6, NULL, 134, 'TLR001', 'Telur Ayam', NULL, 20000.0000, 75.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1500000.0000, 39.5250, '2022-03-26', 'received', 20000.0000, 20000.0000, 75.0000, NULL, NULL, 22, 'KG', 75.0000, NULL, NULL, NULL, NULL),
(25, 7, NULL, 107, 'WMS015', 'Wmeat Aus Beef All Variant Super Less Fat 500 gr', NULL, 58000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1160000.0000, 28.0000, '2022-03-26', 'received', 58000.0000, 58000.0000, 20.0000, NULL, NULL, 25, 'Pack', 20.0000, NULL, NULL, NULL, NULL),
(26, 7, NULL, 99, 'WMS001', 'Wmeat Aus Beef Daging Rendang 500 gr', NULL, 88000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1760000.0000, 20.0000, '2022-03-26', 'received', 88000.0000, 88000.0000, 20.0000, NULL, NULL, 25, 'Pack', 20.0000, NULL, NULL, NULL, NULL),
(27, 7, NULL, 103, '011010021', 'Wmeat Aus Beef Yakiniku / Teriyaki Slice (Less Fat) 500 gr', NULL, 88000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1760000.0000, 33.0000, '2022-03-26', 'received', 88000.0000, 88000.0000, 20.0000, NULL, NULL, 25, 'Pack', 20.0000, NULL, NULL, NULL, NULL),
(28, 7, NULL, 119, 'WMS029', 'Wmeat Aus Beef Lidah Slice 250 gr', NULL, 43000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 860000.0000, 20.0000, '2022-03-26', 'received', 43000.0000, 43000.0000, 20.0000, NULL, NULL, 25, 'Pack', 20.0000, NULL, NULL, NULL, NULL),
(29, 7, NULL, 101, 'WMS003', 'Wmeat Aus Beef Sukiyaki Slice 500 gr', NULL, 90000.0000, 40.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 3600000.0000, 37.0000, '2022-03-26', 'received', 90000.0000, 90000.0000, 40.0000, NULL, NULL, 25, 'Pack', 40.0000, NULL, NULL, NULL, NULL),
(30, 7, NULL, 115, 'WMS025', 'Wmeat Aus Beef Iga Sop Super (Rib Plate) 500 gr', NULL, 51000.0000, 40.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 2040000.0000, 38.0000, '2022-03-26', 'received', 51000.0000, 51000.0000, 40.0000, NULL, NULL, 25, 'Pack', 40.0000, NULL, NULL, NULL, NULL),
(31, 7, NULL, 109, '011010019', 'Wmeat Aus Beef Rib Eye Steak 200 gr', NULL, 53000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1060000.0000, 20.0000, '2022-03-26', 'received', 53000.0000, 53000.0000, 20.0000, NULL, NULL, 25, 'Pack', 20.0000, NULL, NULL, NULL, NULL),
(32, 7, NULL, 121, ' 011010020', 'Wmeat Aus Beef Striploin Steak 200 gr', NULL, 53000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1060000.0000, 20.0000, '2022-03-26', 'received', 53000.0000, 53000.0000, 20.0000, NULL, NULL, 25, 'Pack', 20.0000, NULL, NULL, NULL, NULL),
(33, 7, NULL, 111, 'WMS021', 'Wmeat Aus Beef Oxtail Cut 500 gr', NULL, 133000.0000, 40.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 5320000.0000, 31.0000, '2022-03-26', 'received', 133000.0000, 133000.0000, 40.0000, NULL, NULL, 25, 'Pack', 40.0000, NULL, NULL, NULL, NULL),
(34, 7, NULL, 113, 'WMS023', 'Wmeat Aus Beef Daging Giling 500 gr', NULL, 63000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 630000.0000, 9.0000, '2022-03-26', 'received', 63000.0000, 63000.0000, 10.0000, NULL, NULL, 25, 'Pack', 10.0000, NULL, NULL, NULL, NULL),
(35, 7, NULL, 120, 'WMS030', 'Wmeat Aus Beef Iga Galbi 500 gr', NULL, 81000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 405000.0000, 5.0000, '2022-03-26', 'received', 81000.0000, 81000.0000, 5.0000, NULL, NULL, 25, 'Pack', 5.0000, NULL, NULL, NULL, NULL),
(36, 8, NULL, 151, '8986360571294', 'Sumur Tujuh', NULL, 54000.0000, 25.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1350000.0000, 23.0000, '2022-03-26', 'received', 54000.0000, 54000.0000, 25.0000, NULL, NULL, 22, 'KG', 25.0000, NULL, NULL, NULL, NULL),
(37, 8, NULL, 152, '8896360571210', 'Pulosari 5 KG', NULL, 54500.0000, 25.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1362500.0000, 21.0000, '2022-03-26', 'received', 54500.0000, 54500.0000, 25.0000, NULL, NULL, 22, 'KG', 25.0000, NULL, NULL, NULL, NULL),
(50, NULL, NULL, 143, '011010003', 'Chicken wing 1 kg', NULL, 0.0000, 20.0000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '2022-03-26', 'received', 0.0000, 0.0000, 20.0000, NULL, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL),
(51, NULL, NULL, 150, '011010008', 'Naget ayam fancy 250 gr', NULL, 7902.0000, 20.0000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 158040.0000, 0.0000, '2022-03-26', 'received', 7902.0000, 7902.0000, 20.0000, NULL, NULL, 25, 'Pack', 20.0000, NULL, NULL, NULL, NULL),
(52, NULL, NULL, 147, '011010015', 'Naget ayam fancy 500 g ', NULL, 14223.0000, 20.0000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 284460.0000, 0.0000, '2022-03-26', 'received', 14223.0000, 14223.0000, 20.0000, NULL, NULL, 25, 'Pack', 20.0000, NULL, NULL, NULL, NULL),
(53, NULL, NULL, 146, '011010014', 'Naget ayam hati 250 g', NULL, 7902.0000, 20.0000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 158040.0000, 0.0000, '2022-03-26', 'received', 7902.0000, 7902.0000, 20.0000, NULL, NULL, 25, 'Pack', 20.0000, NULL, NULL, NULL, NULL),
(54, NULL, NULL, 144, '011010007', 'Chicken teriyaki 500g', NULL, 0.0000, 20.0000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '2022-03-26', 'received', 0.0000, 0.0000, 20.0000, NULL, NULL, 25, 'Pack', 20.0000, NULL, NULL, NULL, NULL),
(55, NULL, NULL, 144, '011010007', 'Chicken teriyaki 500g', NULL, 0.0000, 30.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 9.0000, '2022-03-26', 'received', 0.0000, 0.0000, 30.0000, NULL, NULL, 25, 'Pack', 30.0000, NULL, NULL, NULL, NULL),
(56, NULL, NULL, 143, '011010003', 'Chicken wing 1 kg', NULL, 0.0000, 20.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 9.0000, '2022-03-26', 'received', 0.0000, 0.0000, 20.0000, NULL, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL),
(57, NULL, NULL, 150, '011010008', 'Naget ayam fancy 250 gr', NULL, 7902.0000, 20.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 158040.0000, 58.0000, '2022-03-26', 'received', 7902.0000, 7902.0000, 20.0000, NULL, NULL, 25, 'Pack', 20.0000, NULL, NULL, NULL, NULL),
(58, NULL, NULL, 128, '8997221224877', 'Spicy chicken 500g ', NULL, 0.0000, 21.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 30.0000, '2022-03-26', 'received', 0.0000, 0.0000, 21.0000, NULL, NULL, 25, 'Pack', 21.0000, NULL, NULL, NULL, NULL),
(59, NULL, NULL, 145, '011010009', 'Bart\'s french fries 1 kg', NULL, 0.0000, 30.0000, 3, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 29.0000, '2022-03-26', 'received', 0.0000, 0.0000, 30.0000, NULL, NULL, 25, 'Pack', 30.0000, NULL, NULL, NULL, NULL),
(60, NULL, NULL, 142, '011010002', 'Drum stick 1 kg', NULL, 0.0000, 8.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 8.0000, '2022-03-28', 'received', 0.0000, 0.0000, 8.0000, NULL, NULL, 25, 'Pack', 8.0000, NULL, NULL, NULL, NULL),
(61, NULL, NULL, 145, '011010009', 'Bart\'s french fries 1 kg', NULL, 0.0000, 8.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 5.0000, '2022-03-28', 'received', 0.0000, 0.0000, 8.0000, NULL, NULL, 25, 'Pack', 8.0000, NULL, NULL, NULL, NULL),
(62, NULL, NULL, 118, '011010018', 'Lidah Slice 500 gr (AUS)', NULL, 0.0000, 20.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 20.0000, '2022-03-28', 'received', 0.0000, 0.0000, 20.0000, NULL, NULL, 25, 'Pack', 20.0000, NULL, NULL, NULL, NULL),
(63, NULL, NULL, 85, 'BP1', 'W99 Boneless Paha 1.0 Kg', NULL, 0.0000, 10.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 10.0000, '2022-03-28', 'received', 0.0000, 0.0000, 10.0000, NULL, NULL, 25, 'Pack', 10.0000, NULL, NULL, NULL, NULL),
(64, NULL, NULL, 122, 'OLN010', 'Striploin Steak 400 gr (AUS)', NULL, 0.0000, 20.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 20.0000, '2022-03-28', 'received', 0.0000, 0.0000, 20.0000, NULL, NULL, 25, 'Pack', 20.0000, NULL, NULL, NULL, NULL),
(65, NULL, NULL, 97, 'OLN032', 'Oxtail Super 500 gr', NULL, 0.0000, 31.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 31.0000, '2022-03-28', 'received', 0.0000, 0.0000, 31.0000, NULL, NULL, 25, 'Pack', 31.0000, NULL, NULL, NULL, NULL),
(66, NULL, NULL, 90, 'PA1P', 'W99 Paha Atas 1.0 Kg Premium', NULL, 0.0000, 9.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 9.0000, '2022-03-28', 'received', 0.0000, 0.0000, 9.0000, NULL, NULL, 25, 'Pack', 9.0000, NULL, NULL, NULL, NULL),
(67, NULL, NULL, 76, 'WK007', 'W99 Karkas 0.7 Kg', NULL, 0.0000, 38.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 31.0000, '2022-03-28', 'received', 0.0000, 0.0000, 38.0000, NULL, NULL, 25, 'Pack', 38.0000, NULL, NULL, NULL, NULL),
(68, NULL, NULL, 100, 'WMS002', 'Daging Rendang 1 kg (AUS)', NULL, 0.0000, 20.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 20.0000, '2022-03-28', 'received', 0.0000, 0.0000, 20.0000, NULL, NULL, 25, 'Pack', 20.0000, NULL, NULL, NULL, NULL),
(69, NULL, NULL, 102, 'WMS004', 'Sukiyaki Slice 1 kg (AUS)', NULL, 0.0000, 37.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 37.0000, '2022-03-28', 'received', 0.0000, 0.0000, 37.0000, NULL, NULL, 25, 'Pack', 37.0000, NULL, NULL, NULL, NULL),
(70, NULL, NULL, 104, 'WMS006', 'Yakiniku / Teriyaki Slice Less Fat 1 kg (AUS)', NULL, 0.0000, 33.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 33.0000, '2022-03-28', 'received', 0.0000, 0.0000, 33.0000, NULL, NULL, 25, 'Pack', 33.0000, NULL, NULL, NULL, NULL),
(71, NULL, NULL, 108, 'WMS016', 'All Variant Super Less Fat 1kg (AUS)', NULL, 0.0000, 28.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 28.0000, '2022-03-28', 'received', 0.0000, 0.0000, 28.0000, NULL, NULL, 25, 'Pack', 28.0000, NULL, NULL, NULL, NULL),
(72, NULL, NULL, 110, 'WMS018', 'Rib Eye Steak 400 gr (AUS)', NULL, 0.0000, 20.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 20.0000, '2022-03-28', 'received', 0.0000, 0.0000, 20.0000, NULL, NULL, 25, 'Pack', 20.0000, NULL, NULL, NULL, NULL),
(73, NULL, NULL, 112, 'WMS022', 'Oxtail Cut 1 kg (AUS)', NULL, 0.0000, 31.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 31.0000, '2022-03-28', 'received', 0.0000, 0.0000, 31.0000, NULL, NULL, 25, 'Pack', 31.0000, NULL, NULL, NULL, NULL),
(74, NULL, NULL, 114, 'WMS024', 'Daging Giling 1 kg (AUS)', NULL, 0.0000, 9.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 9.0000, '2022-03-28', 'received', 0.0000, 0.0000, 9.0000, NULL, NULL, 25, 'Pack', 9.0000, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_quotes`
--

CREATE TABLE `sma_quotes` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `internal_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT 0.0000,
  `order_discount` decimal(25,4) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT 0.0000,
  `product_tax` decimal(25,4) DEFAULT 0.0000,
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT NULL,
  `shipping` decimal(25,4) DEFAULT 0.0000,
  `grand_total` decimal(25,4) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `supplier` varchar(55) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_quote_items`
--

CREATE TABLE `sma_quote_items` (
  `id` int(11) NOT NULL,
  `quote_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_returns`
--

CREATE TABLE `sma_returns` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `staff_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT 0.0000,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT 0.0000,
  `order_discount` decimal(25,4) DEFAULT 0.0000,
  `product_tax` decimal(25,4) DEFAULT 0.0000,
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT 0.0000,
  `total_tax` decimal(25,4) DEFAULT 0.0000,
  `grand_total` decimal(25,4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_items` smallint(6) DEFAULT NULL,
  `paid` decimal(25,4) DEFAULT 0.0000,
  `surcharge` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `attachment` varchar(55) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL,
  `shipping` decimal(25,4) DEFAULT 0.0000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_return_items`
--

CREATE TABLE `sma_return_items` (
  `id` int(11) NOT NULL,
  `return_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_sales`
--

CREATE TABLE `sma_sales` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `staff_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT 0.0000,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT 0.0000,
  `order_discount` decimal(25,4) DEFAULT 0.0000,
  `product_tax` decimal(25,4) DEFAULT 0.0000,
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT 0.0000,
  `total_tax` decimal(25,4) DEFAULT 0.0000,
  `shipping` decimal(25,4) DEFAULT 0.0000,
  `grand_total` decimal(25,4) NOT NULL,
  `sale_status` varchar(20) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `payment_term` tinyint(4) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_items` smallint(6) DEFAULT NULL,
  `pos` tinyint(1) NOT NULL DEFAULT 0,
  `paid` decimal(25,4) DEFAULT 0.0000,
  `return_id` int(11) DEFAULT NULL,
  `surcharge` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `attachment` varchar(55) DEFAULT NULL,
  `return_sale_ref` varchar(55) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `return_sale_total` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `rounding` decimal(10,4) DEFAULT NULL,
  `suspend_note` varchar(255) DEFAULT NULL,
  `api` tinyint(1) DEFAULT 0,
  `shop` tinyint(1) DEFAULT 0,
  `address_id` int(11) DEFAULT NULL,
  `reserve_id` int(11) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `manual_payment` varchar(55) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL,
  `payment_method` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sales`
--

INSERT INTO `sma_sales` (`id`, `date`, `reference_no`, `customer_id`, `customer`, `biller_id`, `biller`, `warehouse_id`, `note`, `staff_note`, `total`, `product_discount`, `order_discount_id`, `total_discount`, `order_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `sale_status`, `payment_status`, `payment_term`, `due_date`, `created_by`, `updated_by`, `updated_at`, `total_items`, `pos`, `paid`, `return_id`, `surcharge`, `attachment`, `return_sale_ref`, `sale_id`, `return_sale_total`, `rounding`, `suspend_note`, `api`, `shop`, `address_id`, `reserve_id`, `hash`, `manual_payment`, `cgst`, `sgst`, `igst`, `payment_method`) VALUES
(1, '2022-03-25 10:31:40', 'SO/POS2022/03/0008', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 16600.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 16600.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 2, 1, 16600.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '734157af0be93dc45847a6e0f12746c06da3b3255dbf8ac0b9efb0f15bb9afed', NULL, NULL, NULL, NULL, NULL),
(2, '2022-03-25 14:36:25', 'SO/POS2022/03/0009', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 8300.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 8300.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 1, 8300.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, 'dd36128d45e5d17743f226ff699142ac57f095fed32a0527dcde4f429158a4d2', NULL, NULL, NULL, NULL, NULL),
(3, '2022-03-26 07:42:13', 'SO/POS2022/03/0010', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 144000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 144000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 8, 1, 144000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '2015ea622891152c80550e155dc45395f9ef1cbf0a221490a9e141c014e0419b', NULL, NULL, NULL, NULL, NULL),
(4, '2022-03-26 09:24:19', 'SO/POS2022/03/0011', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 147225.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 147225.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 5, 1, 147225.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, 'be0d782945f7a9b2aa05e14f3e54d0efd981e1fc974197f47ac63f4ac0e00378', NULL, NULL, NULL, NULL, NULL),
(5, '2022-03-26 09:48:31', 'SO/POS2022/03/0012', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 138175.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 138175.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 6, 1, 138175.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '275297a7f9b925142aec940cb5e4d518a4457b2dbb08fc31d74559597e29e8d3', NULL, NULL, NULL, NULL, NULL),
(6, '2022-03-26 09:58:17', 'SO/POS2022/03/0013', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 262375.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 262375.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 11, 1, 262375.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, 'a8afc401458d2d59f506b925a7983d78838f2afed29cca3a2c3a79c20b67ce39', NULL, NULL, NULL, NULL, NULL),
(7, '2022-03-26 10:05:12', 'SO/POS2022/03/0014', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 218625.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 218625.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 9, 1, 212025.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '988839828c12284c9960782367dec9e32fd9b9c771396e37b628b50bce1ef60a', NULL, NULL, NULL, NULL, NULL),
(8, '2022-03-26 10:13:23', 'SO/POS2022/03/0015', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 44000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 44000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 2, 1, 39050.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '9bea02445c2d8aa3d88153b3373780d21c53e70350d69df98087745e2a4ec962', NULL, NULL, NULL, NULL, NULL),
(9, '2022-03-26 10:25:58', 'SO/POS2022/03/0016', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 367145.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 367145.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 6, 1, 367145.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, 'b914c3fb6c5f00a411ad46f0bf408e3de46645e93f748c8f85b97acaabb23860', NULL, NULL, NULL, NULL, NULL),
(10, '2022-03-26 10:28:04', 'SO/POS2022/03/0017', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 151425.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 151425.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 4, 1, 151425.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '4da41b5481344ca6da789111c820cba6b8f96dd55977c0c5ce1b8cd26f7e480c', NULL, NULL, NULL, NULL, NULL),
(11, '2022-03-26 10:30:37', 'SO/POS2022/03/0018', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 224725.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 224725.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 5, 1, 224725.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '39bc26c7a6cb4c9224ee487c479709a23951307d70e9591813af76e9b6cd6047', NULL, NULL, NULL, NULL, NULL),
(12, '2022-03-26 10:31:49', 'SO/POS2022/03/0019', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 172500.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 172500.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 3, 1, 172500.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '7c07959c87dbb8ed6adbab605e411178ff18b9fa3a86d83ead313e33509392e5', NULL, NULL, NULL, NULL, NULL),
(13, '2022-03-26 10:33:36', 'SO/POS2022/03/0020', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 61710.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 61710.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 1, 61710.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, 'cd9129277c5ae5b1c98e9e834ec474770fefe9069f3803034e81ef7e654c4acd', NULL, NULL, NULL, NULL, NULL),
(14, '2022-03-26 10:44:29', 'SO/POS2022/03/0021', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 112875.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 112875.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 4, 1, 112875.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '6f7f4c15275bf9cc8deeb4dca27c683c9365d106698da7864e179aa71f79779d', NULL, NULL, NULL, NULL, NULL),
(15, '2022-03-26 11:30:40', 'SO/POS2022/03/0022', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 398125.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 398125.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 10, 1, 398125.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '81831e3d180f7e791f924e38fa3b44c49ed3379c017fa071e4e3edfb29930747', NULL, NULL, NULL, NULL, NULL),
(16, '2022-03-26 11:57:44', 'SO/POS2022/03/0023', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 83000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 83000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 5, 1, 83000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '18e73f1c555974dc30db86f1aa0fce60e7b739470e3487af1bd5590bbcaa96d8', NULL, NULL, NULL, NULL, NULL),
(17, '2022-03-26 12:05:53', 'SO/POS2022/03/0024', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 13000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 13000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 1, 13000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, 'd7a86d66b5cb9a2c7bb256cf6416ccaae0ff156ae8f8b8d9b213b44ee02b6da2', NULL, NULL, NULL, NULL, NULL),
(18, '2022-03-26 12:12:53', 'SO/POS2022/03/0025', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 110000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 110000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 5, 1, 110000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, 'b5986b91d4fd7b73421e914ae0f000547a6e6666e952427d9a0ca72a1f7d41c8', NULL, NULL, NULL, NULL, NULL),
(19, '2022-03-26 12:26:59', 'SO/POS2022/03/0026', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 66700.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 66700.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 4, 1, 66700.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '08ed8dd3038ac0f681bd3e37aeae827e10cc4c3d693a815580a080d9e87f36fd', NULL, NULL, NULL, NULL, NULL),
(20, '2022-03-28 02:24:44', 'SO/POS2022/03/0027', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 132000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 132000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 6, 1, 132000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, 'c27203c226fb59cb5e6b86420a70cc199d6d2384f877af68e9dac2436d7ffd19', NULL, NULL, NULL, NULL, NULL),
(21, '2022-03-28 02:47:06', 'SO/POS2022/03/0028', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 53500.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 53500.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 3, 1, 53500.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, 'f014b790a04e4ab8323cd4ec4d82ab13ded479eb7656b9ad372421a751c13e5e', NULL, NULL, NULL, NULL, NULL),
(22, '2022-03-28 02:47:58', 'SO/POS2022/03/0029', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 53500.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 53500.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 3, 1, 53500.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, 'c7f9236badd1c30730139e9368ac6b66837a2fcccb562da9ac306b815f6c8173', NULL, NULL, NULL, NULL, NULL),
(23, '2022-03-28 02:50:47', 'SO/POS2022/03/0030', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 14125.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 14125.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 1, 14125.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '09a17994653a4938dbde9be9c4a4b4a2ac699604827be5d1f14fae7a56c4214b', NULL, NULL, NULL, NULL, NULL),
(24, '2022-03-28 02:59:04', 'SO/POS2022/03/0031', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 22000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 22000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 1, 22000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '577825dc7277d3fee7a745c0aeb61f736ac42fee222bf4d42b0b07c8a164021f', NULL, NULL, NULL, NULL, NULL),
(25, '2022-03-28 04:01:22', 'SO/POS2022/03/0032', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 130750.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 130750.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 6, 1, 130750.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '1770a49e0b843056b51f1375ce79faae8465fd6dd1906d672d8590e80693bb1e', NULL, NULL, NULL, NULL, NULL),
(26, '2022-03-28 08:38:30', 'SO/POS2022/03/0033', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 45625.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 45625.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 3, 1, 45625.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '0df5720d5b500695d46df7bef70563f9006f98ea15f22733d224e978168ad54d', NULL, NULL, NULL, NULL, NULL),
(27, '2022-03-28 09:51:35', 'SO/POS2022/03/0034', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 41625.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 41625.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 2, 1, 41625.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '90f64801725306beaf66905fdaf3b136866cd1740ecd03e89056804da203065b', NULL, NULL, NULL, NULL, NULL),
(28, '2022-03-28 12:43:01', 'SO/POS2022/03/0035', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 76375.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 76375.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 3, 1, 76375.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, 'dc0ec8f4f1bd0e9138699b7a6dbd098ffeebe662537c65f75db86425caa8846a', NULL, NULL, NULL, NULL, NULL),
(29, '2022-03-29 01:59:24', 'SO/POS2022/03/0036', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 88000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 88000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 4, 1, 88000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, 'e077c5c86a9e59ad4c1ebf0dbf01b43ef6aa55baa8be1d95ae9aaec1d8f18af9', NULL, NULL, NULL, NULL, NULL),
(30, '2022-03-29 02:14:52', 'SO/POS2022/03/0037', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 55600.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 55600.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 2, 1, 55600.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '188c1942da169e8352b92d6a3f72331834308cba0d50e25ffb55920b20a2bb80', NULL, NULL, NULL, NULL, NULL),
(31, '2022-03-29 02:40:45', 'SO/POS2022/03/0038', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 275000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 275000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 8, 1, 275000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '5e3c4b6fcf49b19d008e557f86418ff0aa134b013b1aaa76b2982c186dade169', NULL, NULL, NULL, NULL, NULL),
(32, '2022-03-29 05:15:55', 'SO/POS2022/03/0039', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 71125.0000, 0.0000, '0', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 71125.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 4, 1, 71125.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, 'dcf930bfd00ecd9517889feef5efab64c1c8bd6a88d290c990333ed4dc0c7d74', NULL, NULL, NULL, NULL, NULL),
(33, '2022-03-29 07:11:22', 'SO/POS2022/03/0040', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 123000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 123000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 6, 1, 123000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, 'e7acd93f7f77a70c666b2e80339206b7f7f21e0466d3f2da16e7f8784a7e9a8c', NULL, NULL, NULL, NULL, NULL),
(37, '2022-03-29 09:25:18', 'SO/POS2022/03/0044', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 110000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 110000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 5, 1, 110000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, 'b2eed4bfe36a7e65c32d90bfcc668c0a6c9b3c78a134dca17fb19bd212f35ae8', NULL, NULL, NULL, NULL, NULL),
(38, '2022-03-29 09:30:31', 'SO/POS2022/03/0045', 162, 'walk-in-cipayung', 1, 'WMart', 3, '', '', 27000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 27000.0000, 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 1, 27000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '5750ae509038573c8cc1eba0a2695cfe76cfddefbfe1595e72b77d94f1daf79d', NULL, NULL, NULL, NULL, NULL),
(39, '2022-03-29 09:32:39', 'SO/POS2022/03/0046', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 27000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 27000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 1, 27000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '47cebb8b71e5dc0b48e08e2a27d8d52c41550b20d18ea94eac41b7f11d36f66d', NULL, NULL, NULL, NULL, NULL),
(40, '2022-03-29 09:41:00', 'SO/POS2022/03/0047', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 27000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 27000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-03-29 09:46:38', 1, 1, 27000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, 'b9bf93be0cb3dc20f67b62bf5970d5e6d87e4f3b1cae42d8c3bb7b0ede3cfba0', NULL, NULL, NULL, NULL, NULL),
(41, '2022-03-29 09:59:50', 'SO/POS2022/03/0048', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 27000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 27000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 1, 27000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '1d1e15cefa1e103387438b54ab613286d19436568806e6b2dcec88ba6ac91306', NULL, NULL, NULL, NULL, NULL),
(42, '2022-03-29 10:04:57', 'SO/POS2022/03/0049', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 57500.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 57500.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 1, 57500.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '4bac7d08bc5d8aebe6bdf62dd0d4c68f48483bacb1ca04d0268352ec09565f3f', NULL, NULL, NULL, NULL, NULL),
(44, '2022-03-30 02:28:20', 'SO/POS2022/03/0051', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 91800.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 91800.0000, 'completed', 'paid', 0, NULL, 9, NULL, NULL, 3, 1, 91800.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, 'b54c9820c8125a89c4cee75d27e435a10d97545020e7eaa95f934d055331b242', NULL, NULL, NULL, NULL, NULL),
(47, '2022-03-30 03:17:05', 'SO/POS2022/03/0054', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 51125.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 51125.0000, 'completed', 'paid', 0, NULL, 9, NULL, NULL, 2, 1, 51125.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '329387324f17a4f0e584ac3ae82622a3e3edeae2a26baad576b3a9141519325f', NULL, NULL, NULL, NULL, NULL),
(48, '2022-03-30 03:32:22', 'SO/POS2022/03/0055', 162, 'walk-in-cipayung', 1, 'WMart', 1, '', '', 14125.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0.0000, 14125.0000, 'completed', 'paid', 0, NULL, 9, NULL, NULL, 1, 1, 14125.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '29f387b2be0f62c188b7633132fb76f20877819254acd7e32cd7b387fbe17ab6', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_sale_items`
--

CREATE TABLE `sma_sale_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `sale_item_id` int(11) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sale_items`
--

INSERT INTO `sma_sale_items` (`id`, `sale_id`, `product_id`, `product_code`, `product_name`, `product_type`, `option_id`, `net_unit_price`, `unit_price`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `subtotal`, `serial_no`, `real_unit_price`, `sale_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `comment`, `gst`, `cgst`, `sgst`, `igst`) VALUES
(1, 1, 133, '8991188943543', 'Sasa santan kelapa 200 ml', 'standard', NULL, 8300.0000, 8300.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 16600.0000, '', 8300.0000, NULL, 23, 'PCS', 2.0000, '', NULL, NULL, NULL, NULL),
(2, 2, 133, '8991188943543', 'Sasa santan kelapa 200 ml', 'standard', NULL, 8300.0000, 8300.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 8300.0000, '', 8300.0000, NULL, 23, 'PCS', 1.0000, '', NULL, NULL, NULL, NULL),
(3, 3, 131, '011010006', 'Bakso Java 500gr', 'standard', NULL, 13000.0000, 13000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 13000.0000, '', 13000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(4, 3, 149, '011010031', 'Bratwurst sausage mini keju 500 g', 'standard', NULL, 44000.0000, 44000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 44000.0000, '', 44000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(5, 3, 130, '8997221220466', 'Nuget Fancy 250gr', 'standard', NULL, 9000.0000, 9000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 18000.0000, '', 9000.0000, NULL, 25, 'Pack', 2.0000, '', NULL, NULL, NULL, NULL),
(6, 3, 146, '011010014', 'Naget ayam hati 250 g', 'standard', NULL, 13000.0000, 13000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 13000.0000, '', 13000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(7, 3, 144, '011010007', 'Chicken teriyaki 500g', 'standard', NULL, 27700.0000, 27700.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 27700.0000, '', 27700.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(8, 3, 138, '8997221223849', 'MINIPAO KEJU 480GR', 'standard', NULL, 14150.0000, 14150.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14150.0000, '', 14150.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(9, 3, 137, '8997221222132', 'MINIPAO COKELAT 480GR', 'standard', NULL, 14150.0000, 14150.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14150.0000, '', 14150.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(10, 4, 131, '011010006', 'Bakso Java 500gr', 'standard', NULL, 13000.0000, 13000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 13000.0000, '', 13000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(11, 4, 144, '011010007', 'Chicken teriyaki 500g', 'standard', NULL, 27700.0000, 27700.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 27700.0000, '', 27700.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(12, 4, 129, '8997221225164', 'Sosis Royal Mini', 'standard', NULL, 31500.0000, 31500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 31500.0000, '', 31500.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(13, 4, 135, '8997221221524', 'JAVA BEEF PATTIES 500GR', 'standard', NULL, 35625.0000, 35625.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 35625.0000, '', 35625.0000, NULL, 21, 'Gram', 1.0000, '', NULL, NULL, NULL, NULL),
(14, 4, 91, 'PB1', 'W99 Paha Bawah 1.0 Kg', 'standard', NULL, 39400.0000, 39400.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 39400.0000, '', 39400.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(15, 5, 139, '8997221224259', 'MINIPAO SAPI 480GR', 'standard', NULL, 14125.0000, 14125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14125.0000, '', 14125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(16, 5, 136, '8997221224242', 'MINIPAO AYAM 480GR', 'standard', NULL, 14125.0000, 14125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14125.0000, '', 14125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(17, 5, 138, '8997221223849', 'MINIPAO KEJU 480GR', 'standard', NULL, 14125.0000, 14125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14125.0000, '', 14125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(18, 5, 144, '011010007', 'Chicken teriyaki 500g', 'standard', NULL, 27700.0000, 27700.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 55400.0000, '', 27700.0000, NULL, 25, 'Pack', 2.0000, '', NULL, NULL, NULL, NULL),
(19, 5, 94, 'SU1P', 'W99 Sayap Utuh 1.0 Kg Premium', 'standard', NULL, 40400.0000, 40400.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 40400.0000, '', 40400.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(20, 6, 149, '011010031', 'Bratwurst sausage mini keju 500 g', 'standard', NULL, 48125.0000, 48125.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 96250.0000, '', 48125.0000, NULL, 25, 'Pack', 2.0000, '', NULL, NULL, NULL, NULL),
(21, 6, 131, '011010006', 'Bakso Java 500gr', 'standard', NULL, 13000.0000, 13000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 26000.0000, '', 13000.0000, NULL, 25, 'Pack', 2.0000, '', NULL, NULL, NULL, NULL),
(22, 6, 146, '011010014', 'Naget ayam hati 250 g', 'standard', NULL, 13000.0000, 13000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 26000.0000, '', 13000.0000, NULL, 25, 'Pack', 2.0000, '', NULL, NULL, NULL, NULL),
(23, 6, 128, '8997221224877', 'Spicy chicken 500g ', 'standard', NULL, 37000.0000, 37000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 74000.0000, '', 37000.0000, NULL, 25, 'Pack', 2.0000, '', NULL, NULL, NULL, NULL),
(24, 6, 137, '8997221222132', 'MINIPAO COKELAT 480GR', 'standard', NULL, 14125.0000, 14125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14125.0000, '', 14125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(25, 6, 130, '8997221220466', 'Nuget Fancy 250gr', 'standard', NULL, 13000.0000, 13000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 26000.0000, '', 13000.0000, NULL, 25, 'Pack', 2.0000, '', NULL, NULL, NULL, NULL),
(26, 7, 134, 'TLR001', 'Telur Ayam', 'standard', NULL, 22000.0000, 22000.0000, 1.7000, 1, 0.0000, NULL, '', '0', 0.0000, 44000.0000, '', 22000.0000, NULL, 22, 'KG', 2.0000, '', NULL, NULL, NULL, NULL),
(27, 7, 129, '8997221225164', 'Sosis Royal Mini', 'standard', NULL, 31500.0000, 31500.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 63000.0000, '', 31500.0000, NULL, 25, 'Pack', 2.0000, '', NULL, NULL, NULL, NULL),
(28, 7, 130, '8997221220466', 'Nuget Fancy 250gr', 'standard', NULL, 13000.0000, 13000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 26000.0000, '', 13000.0000, NULL, 25, 'Pack', 2.0000, '', NULL, NULL, NULL, NULL),
(29, 7, 128, '8997221224877', 'Spicy chicken 500g ', 'standard', NULL, 37000.0000, 37000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 37000.0000, '', 37000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(30, 7, 131, '011010006', 'Bakso Java 500gr', 'standard', NULL, 13000.0000, 13000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 13000.0000, '', 13000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(31, 7, 135, '8997221221524', 'JAVA BEEF PATTIES 500GR', 'standard', NULL, 35625.0000, 35625.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 35625.0000, '', 35625.0000, NULL, 21, 'Gram', 1.0000, '', NULL, NULL, NULL, NULL),
(32, 8, 134, 'TLR001', 'Telur Ayam', 'standard', NULL, 22000.0000, 22000.0000, 1.7750, 1, 0.0000, NULL, '', '0', 0.0000, 44000.0000, '', 22000.0000, NULL, 22, 'KG', 2.0000, '', NULL, NULL, NULL, NULL),
(33, 9, 115, '011010025', 'Wmeat Aus Beef Iga Sop Super (Rib Plate) 500 gr', 'standard', NULL, 61710.0000, 61710.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 61710.0000, '', 61710.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(34, 9, 101, '011010026', 'Wmeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 108900.0000, 108900.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 108900.0000, '', 108900.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(35, 9, 107, '011010023', 'Wmeat Aus Beef All Variant Super Less Fat 500 gr', 'standard', NULL, 70180.0000, 70180.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 70180.0000, '', 70180.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(36, 9, 113, '011010028', 'Wmeat Aus Beef Daging Giling 500 gr', 'standard', NULL, 76230.0000, 76230.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 76230.0000, '', 76230.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(37, 9, 88, 'KL1P', 'W99 Kulit 1.0 Kg Premium', 'standard', NULL, 36000.0000, 36000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 36000.0000, '', 36000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(38, 9, 137, '8997221222132', 'MINIPAO COKELAT 480GR', 'standard', NULL, 14125.0000, 14125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14125.0000, '', 14125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(39, 10, 91, 'PB1', 'W99 Paha Bawah 1.0 Kg', 'standard', NULL, 39400.0000, 39400.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 78800.0000, '', 39400.0000, NULL, 25, 'Pack', 2.0000, '', NULL, NULL, NULL, NULL),
(40, 10, 135, '8997221221524', 'JAVA BEEF PATTIES 500GR', 'standard', NULL, 35625.0000, 35625.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 35625.0000, '', 35625.0000, NULL, 21, 'Gram', 1.0000, '', NULL, NULL, NULL, NULL),
(41, 10, 128, '8997221224877', 'Spicy chicken 500g ', 'standard', NULL, 37000.0000, 37000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 37000.0000, '', 37000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(42, 11, 101, '011010026', 'Wmeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 108900.0000, 108900.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 108900.0000, '', 108900.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(43, 11, 137, '8997221222132', 'MINIPAO COKELAT 480GR', 'standard', NULL, 14125.0000, 14125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14125.0000, '', 14125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(44, 11, 128, '8997221224877', 'Spicy chicken 500g ', 'standard', NULL, 37000.0000, 37000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 74000.0000, '', 37000.0000, NULL, 25, 'Pack', 2.0000, '', NULL, NULL, NULL, NULL),
(45, 11, 144, '011010007', 'Chicken teriyaki 500g', 'standard', NULL, 27700.0000, 27700.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 27700.0000, '', 27700.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(46, 12, 151, '8986360571294', 'Sumur Tujuh', 'standard', NULL, 57500.0000, 57500.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 172500.0000, '', 57500.0000, NULL, 22, 'KG', 3.0000, '', NULL, NULL, NULL, NULL),
(47, 13, 115, '011010025', 'Wmeat Aus Beef Iga Sop Super (Rib Plate) 500 gr', 'standard', NULL, 61710.0000, 61710.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 61710.0000, '', 61710.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(48, 14, 129, '8997221225164', 'Sosis Royal Mini', 'standard', NULL, 31500.0000, 31500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 31500.0000, '', 31500.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(49, 14, 137, '8997221222132', 'MINIPAO COKELAT 480GR', 'standard', NULL, 14125.0000, 14125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14125.0000, '', 14125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(50, 14, 138, '8997221223849', 'MINIPAO KEJU 480GR', 'standard', NULL, 14125.0000, 14125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14125.0000, '', 14125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(51, 14, 141, '8997221227595', 'ROYAL JAVA BAKSO SAPI 450GR', 'standard', NULL, 53125.0000, 53125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 53125.0000, '', 53125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(52, 15, 149, '011010031', 'Bratwurst sausage mini keju 500 g', 'standard', NULL, 48125.0000, 48125.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 240625.0000, '', 48125.0000, NULL, 25, 'Pack', 5.0000, '', NULL, NULL, NULL, NULL),
(53, 15, 129, '8997221225164', 'Sosis Royal Mini', 'standard', NULL, 31500.0000, 31500.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 157500.0000, '', 31500.0000, NULL, 25, 'Pack', 5.0000, '', NULL, NULL, NULL, NULL),
(54, 16, 134, 'TLR001', 'Telur Ayam', 'standard', NULL, 22000.0000, 22000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 44000.0000, '', 22000.0000, NULL, 22, 'KG', 2.0000, '', NULL, NULL, NULL, NULL),
(55, 16, 146, '011010014', 'Naget ayam hati 250 g', 'standard', NULL, 13000.0000, 13000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 26000.0000, '', 13000.0000, NULL, 25, 'Pack', 2.0000, '', NULL, NULL, NULL, NULL),
(56, 16, 131, '011010006', 'Bakso Java 500gr', 'standard', NULL, 13000.0000, 13000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 13000.0000, '', 13000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(57, 17, 131, '011010006', 'Bakso Java 500gr', 'standard', NULL, 13000.0000, 13000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 13000.0000, '', 13000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(58, 18, 134, 'TLR001', 'Telur Ayam', 'standard', NULL, 22000.0000, 22000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 110000.0000, '', 22000.0000, NULL, 22, 'KG', 5.0000, '', NULL, NULL, NULL, NULL),
(59, 19, 130, '8997221220466', 'Nuget Fancy 250gr', 'standard', NULL, 13000.0000, 13000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 26000.0000, '', 13000.0000, NULL, 25, 'Pack', 2.0000, '', NULL, NULL, NULL, NULL),
(60, 19, 131, '011010006', 'Bakso Java 500gr', 'standard', NULL, 13000.0000, 13000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 13000.0000, '', 13000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(61, 19, 144, '011010007', 'Chicken teriyaki 500g', 'standard', NULL, 27700.0000, 27700.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 27700.0000, '', 27700.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(62, 20, 134, 'TLR001', 'Telur Ayam', 'standard', NULL, 22000.0000, 22000.0000, 6.0000, 1, 0.0000, NULL, '', '0', 0.0000, 132000.0000, '', 22000.0000, NULL, 22, 'KG', 6.0000, '', NULL, NULL, NULL, NULL),
(63, 21, 130, '8997221220466', 'Nuget Fancy 250gr', 'standard', NULL, 13000.0000, 13000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 13000.0000, '', 13000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(64, 21, 131, '011010006', 'Bakso Java 500gr', 'standard', NULL, 18500.0000, 18500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 18500.0000, '', 18500.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(65, 21, 134, 'TLR001', 'Telur Ayam', 'standard', NULL, 22000.0000, 22000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 22000.0000, '', 22000.0000, NULL, 22, 'KG', 1.0000, '', NULL, NULL, NULL, NULL),
(66, 22, 131, '011010006', 'Bakso Java 500gr', 'standard', NULL, 18500.0000, 18500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 18500.0000, '', 18500.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(67, 22, 130, '8997221220466', 'Nuget Fancy 250gr', 'standard', NULL, 13000.0000, 13000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 13000.0000, '', 13000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(68, 22, 134, 'TLR001', 'Telur Ayam', 'standard', NULL, 22000.0000, 22000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 22000.0000, '', 22000.0000, NULL, 22, 'KG', 1.0000, '', NULL, NULL, NULL, NULL),
(69, 23, 137, '8997221222132', 'MINIPAO COKELAT 480GR', 'standard', NULL, 14125.0000, 14125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14125.0000, '', 14125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(70, 24, 134, 'TLR001', 'Telur Ayam', 'standard', NULL, 22000.0000, 22000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 22000.0000, '', 22000.0000, NULL, 22, 'KG', 1.0000, '', NULL, NULL, NULL, NULL),
(71, 25, 128, '8997221224877', 'Spicy chicken 500g ', 'standard', NULL, 27500.0000, 27500.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 55000.0000, '', 27500.0000, NULL, 25, 'Pack', 2.0000, '', NULL, NULL, NULL, NULL),
(72, 25, 135, '8997221221524', 'JAVA BEEF PATTIES 500GR', 'standard', NULL, 35625.0000, 35625.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 35625.0000, '', 35625.0000, NULL, 21, 'Gram', 1.0000, '', NULL, NULL, NULL, NULL),
(73, 25, 138, '8997221223849', 'MINIPAO KEJU 480GR', 'standard', NULL, 14125.0000, 14125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14125.0000, '', 14125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(74, 25, 130, '8997221220466', 'Nuget Fancy 250gr', 'standard', NULL, 13000.0000, 13000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 26000.0000, '', 13000.0000, NULL, 25, 'Pack', 2.0000, '', NULL, NULL, NULL, NULL),
(75, 26, 137, '8997221222132', 'MINIPAO COKELAT 480GR', 'standard', NULL, 14125.0000, 14125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14125.0000, '', 14125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(76, 26, 146, '011010014', 'Naget ayam hati 250 g', 'standard', NULL, 13000.0000, 13000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 13000.0000, '', 13000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(77, 26, 131, '011010006', 'Bakso Java 500gr', 'standard', NULL, 18500.0000, 18500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 18500.0000, '', 18500.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(78, 27, 140, '8997221223856', 'MINIPAO STROBERI 480GR', 'standard', NULL, 14125.0000, 14125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14125.0000, '', 14125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(79, 27, 128, '8997221224877', 'Spicy chicken 500g ', 'standard', NULL, 27500.0000, 27500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 27500.0000, '', 27500.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(80, 28, 149, '011010031', 'Bratwurst sausage mini keju 500 g', 'standard', NULL, 48125.0000, 48125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 48125.0000, '', 48125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(81, 28, 139, '8997221224259', 'MINIPAO SAPI 480GR', 'standard', NULL, 14125.0000, 14125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14125.0000, '', 14125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(82, 28, 136, '8997221224242', 'MINIPAO AYAM 480GR', 'standard', NULL, 14125.0000, 14125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14125.0000, '', 14125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(83, 29, 134, 'TLR001', 'Telur Ayam', 'standard', NULL, 22000.0000, 22000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 88000.0000, '', 22000.0000, NULL, 22, 'KG', 4.0000, '', NULL, NULL, NULL, NULL),
(84, 30, 76, 'WK007', 'Karkas 0.7 Kg', 'standard', NULL, 27800.0000, 27800.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 55600.0000, '', 27800.0000, NULL, 25, 'Pack', 2.0000, '', NULL, NULL, NULL, NULL),
(85, 31, 152, '8896360571210', 'Pulosari 5 KG', 'standard', NULL, 60000.0000, 60000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 60000.0000, '', 60000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(86, 31, 151, '8986360571294', 'Sumur Tujuh', 'standard', NULL, 57500.0000, 57500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 57500.0000, '', 57500.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(87, 31, 76, 'WK007', 'Karkas 0.7 Kg', 'standard', NULL, 27800.0000, 27800.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 139000.0000, '', 27800.0000, NULL, 25, 'Pack', 5.0000, '', NULL, NULL, NULL, NULL),
(88, 31, 131, '011010006', 'Bakso Java 500gr', 'standard', NULL, 18500.0000, 18500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 18500.0000, '', 18500.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(89, 32, 146, '011010014', 'Naget ayam hati 250 g', 'standard', NULL, 13000.0000, 13000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 13000.0000, '', 13000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(90, 32, 137, '8997221222132', 'MINIPAO COKELAT 480GR', 'standard', NULL, 14125.0000, 14125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14125.0000, '', 14125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(91, 32, 134, 'TLR001', 'Telur Ayam', 'standard', NULL, 22000.0000, 22000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 44000.0000, '', 22000.0000, NULL, 22, 'KG', 2.0000, '', NULL, NULL, NULL, NULL),
(92, 33, 134, 'TLR001', 'Telur Ayam', 'standard', NULL, 22000.0000, 22000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 110000.0000, '', 22000.0000, NULL, 22, 'KG', 5.0000, '', NULL, NULL, NULL, NULL),
(93, 33, 130, '8997221220466', 'Nuget Fancy 250gr', 'standard', NULL, 13000.0000, 13000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 13000.0000, '', 13000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(97, 37, 134, 'TLR001', 'Telur Ayam', 'standard', NULL, 22000.0000, 22000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 110000.0000, '', 22000.0000, NULL, 22, 'KG', 5.0000, '', NULL, NULL, NULL, NULL),
(98, 38, 145, '011010009', 'Bart\'s french fries 1 kg', 'standard', NULL, 27000.0000, 27000.0000, 1.0000, 3, 0.0000, NULL, '', '0', 0.0000, 27000.0000, '', 27000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(99, 39, 145, '011010009', 'Bart\'s french fries 1 kg', 'standard', NULL, 27000.0000, 27000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 27000.0000, '', 27000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(101, 40, 145, '011010009', 'Bart\'s french fries 1 kg', 'standard', NULL, 27000.0000, 27000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 27000.0000, '', 27000.0000, NULL, 25, 'Pack', 1.0000, NULL, NULL, NULL, NULL, NULL),
(102, 41, 145, '011010009', 'Bart\'s french fries 1 kg', 'standard', NULL, 27000.0000, 27000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 27000.0000, '', 27000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(103, 42, 151, '8986360571294', 'Sumur Tujuh', 'standard', NULL, 57500.0000, 57500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 57500.0000, '', 57500.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(105, 44, 89, '011010001', 'Paha Atas 1.0 Kg', 'standard', NULL, 39400.0000, 39400.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 39400.0000, '', 39400.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(106, 44, 91, 'PB1', 'Paha Bawah 1.0 Kg', 'standard', NULL, 39400.0000, 39400.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 39400.0000, '', 39400.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(107, 44, 146, '011010014', 'Naget ayam hati 250 g', 'standard', NULL, 13000.0000, 13000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 13000.0000, '', 13000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(110, 47, 139, '8997221224259', 'MINIPAO SAPI 480GR', 'standard', NULL, 14125.0000, 14125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14125.0000, '', 14125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(111, 47, 128, '8997221224877', 'Spicy chicken 500g ', 'standard', NULL, 37000.0000, 37000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 37000.0000, '', 37000.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL),
(112, 48, 139, '8997221224259', 'MINIPAO SAPI 480GR', 'standard', NULL, 14125.0000, 14125.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 14125.0000, '', 14125.0000, NULL, 25, 'Pack', 1.0000, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_sessions`
--

CREATE TABLE `sma_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sessions`
--

INSERT INTO `sma_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('922b186ec446640ced79ec9bdf335edad643b8ec', '103.66.198.42', 1648551116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535313131363b),
('62d7fa6b956c30dd9031b20ae5f7adb7f0639663', '109.106.252.101', 1648551645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535313634353b),
('6c7ac56dfbf736c6ae08865f9f0ddc716f21d483', '109.106.252.101', 1648551645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535313634353b7265717565737465645f706167657c733a353a2261646d696e223b),
('50b0b83db1df7555e5b1e29066df9f1447d042c5', '109.106.252.101', 1648551645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535313634353b),
('5e8f329f05480db0cd646cf7a4096dcf9b924005', '114.124.242.156', 1648555391, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535353339313b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383535323135363b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('705fb903db1057ee1dcad749a404b176c62a5264', '103.66.198.42', 1648552251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535323235313b7265717565737465645f706167657c733a353a2261646d696e223b),
('240442a1735c40d9b661e48f4d9a1d4510f93925', '109.106.252.101', 1648553443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535333434333b),
('60c19bceb8cd12abeca5af0b672f07e7b10dcee9', '109.106.252.101', 1648553443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535333434333b7265717565737465645f706167657c733a353a2261646d696e223b),
('c8f5fb9017ac668271fe1e9db18826bbd8370edb', '109.106.252.101', 1648553443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535333434333b),
('10c3a5f1a9f0b2b43c5c84a962272f8565b4c75d', '109.106.252.101', 1648555249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535353234393b),
('8407e1863b339d9d4fd9177dac0c379a64fca817', '109.106.252.101', 1648555250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535353235303b7265717565737465645f706167657c733a353a2261646d696e223b),
('6f1831635469b6e3f419853d90dece66666e65a5', '109.106.252.101', 1648555250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535353235303b),
('1c10d179a237e31ea26f4dca19ea538b69da354c', '114.124.242.156', 1648555750, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535353735303b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383535353633343b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('09262b3c45dd8cb08b6522239dfdffc08e1adf1b', '114.124.242.156', 1648557373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535373337333b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383535373337333b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('1767881927864da7da032700eaaea9be77dedd1e', '109.106.252.101', 1648557042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535373034323b),
('0d2f7e96b647bc38b0e148a10fec9625ff7ec7b9', '109.106.252.101', 1648557042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535373034323b7265717565737465645f706167657c733a353a2261646d696e223b),
('e8704b86ea3b91e9088da322ff5b714bcc2719d0', '109.106.252.101', 1648557042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535373034323b),
('df619deab71d994a1dc6ed3a225d52450760f97a', '114.124.242.156', 1648558294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535383239343b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383535373431333b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('a615d82b4babe51e351562c5032a94359cba9f9c', '114.124.242.156', 1648558294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535383239343b),
('72faabff31f4c8f6214e02fa01eef074260d4cfb', '109.106.252.101', 1648558844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535383834343b),
('8645577082b54cb156be4cacc5130aa45531ea4b', '109.106.252.101', 1648558844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535383834343b7265717565737465645f706167657c733a353a2261646d696e223b),
('b1349de40abef3af899fb86947f01b37066804ea', '109.106.252.101', 1648558844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535383834343b),
('a21f967714edb7c2bebb113941f040ed3fba3ec7', '109.106.252.101', 1648560646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536303634363b),
('7d835fad801b0d2c4b17867c46c86b1b976c4d28', '109.106.252.101', 1648560646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536303634363b7265717565737465645f706167657c733a353a2261646d696e223b),
('88052a7ea51c5608e6e5291af087d8eda6803868', '109.106.252.101', 1648560646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536303634363b),
('3fee08895d2162fcb1da5ba694033715ad55223d', '109.106.252.101', 1648562454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536323435343b),
('f256995d6337fbae30230bce497405e337c4861d', '109.106.252.101', 1648562454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536323435343b7265717565737465645f706167657c733a353a2261646d696e223b),
('5642722795b1bc76cf1ef020cfe69873a301d0d4', '109.106.252.101', 1648562454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536323435343b),
('59ad70a4c54d034d1923c77ce6a7de4a929dab55', '109.106.252.101', 1648564242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536343234323b),
('d4ec82229ddeecee96e6f1cfc3676aa182813d57', '109.106.252.101', 1648564242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536343234323b7265717565737465645f706167657c733a353a2261646d696e223b),
('c6237dcc5b294c56e7241a0a25f10a3bb7aa4d7b', '109.106.252.101', 1648564242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536343234323b),
('559967e7218febda3e373070510ca123c3e672c9', '109.106.252.101', 1648566052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536363035323b),
('0f697d2beba666b3cbaed715e828ffc992f12960', '109.106.252.101', 1648566052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536363035323b7265717565737465645f706167657c733a353a2261646d696e223b),
('55f709fb703274abbe13f9450e4aed97b2906f02', '109.106.252.101', 1648566052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536363035323b),
('5ee4662e88220ed296f08018330b879bdb8bbf61', '115.178.200.80', 1648550778, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535303734353b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353439353630223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383535303737363b),
('d1a0c7c18612c0e6fe61f8dd86b288bfaa96b267', '180.244.165.144', 1648512468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531323431363b7265717565737465645f706167657c733a31333a2261646d696e2f77656c636f6d65223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438343832383534223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383531323436383b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('3c9e2f2412357194014daf42f3d6f5a1791d8f3c', '109.106.252.101', 1648512044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531323034343b),
('c519bd72241c8930fd1c41e8d111f418f1ba66c2', '109.106.252.101', 1648512044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531323034343b7265717565737465645f706167657c733a353a2261646d696e223b),
('8ace6672bc1865649fbd78387dcc2ae5ac75198e', '109.106.252.101', 1648512044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531323034343b),
('ce8978f63d69f33355bdb9c31c0c98dbbe649369', '188.165.87.107', 1648510502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531303530323b),
('48b42edb1cac2c1e1c8cde98a9deb00a372bca9d', '188.165.87.97', 1648510502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531303530323b),
('28c5cab705e6b2ac7c294b20a234b314b5d7b3e0', '188.165.87.109', 1648510502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531303530323b),
('ed40ea754d3657cc10260a6bba1db3b676360f6f', '109.106.252.101', 1648510240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531303234303b),
('8b580a78be3a3028ef6b0edcf7328025dc263f1b', '109.106.252.101', 1648510240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531303234303b7265717565737465645f706167657c733a353a2261646d696e223b),
('b581bad58d7907ab268854b02b15c3e42a359626', '109.106.252.101', 1648510240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531303234303b),
('ddfd55c739f42b6c4954881bc432833b29c3489a', '51.254.49.96', 1648509252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383530393235323b),
('e96a2ab077586f1450269e7155b052fad2d1a937', '109.106.252.101', 1648508444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383530383434343b),
('c543fb5942e999ae5ec79b037b71fb5997f6127f', '109.106.252.101', 1648508444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383530383434343b7265717565737465645f706167657c733a353a2261646d696e223b),
('eeb929b4d14b3edfc90cf0eb471cddf09e925a65', '109.106.252.101', 1648508444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383530383434343b),
('e24caa8910ed77c431b3871c282e35efbbd2d0a6', '188.165.87.105', 1648506922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383530363932323b7265717565737465645f706167657c733a353a2261646d696e223b),
('269d08103e3b8ff417d8b3a55c2ac2e64e2ee546', '188.165.87.101', 1648506922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383530363932323b7265717565737465645f706167657c733a353a2261646d696e223b),
('c9f472d0fde4991e6cf418d38fb0262a6f30dd07', '188.165.87.102', 1648506922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383530363932323b7265717565737465645f706167657c733a353a2261646d696e223b),
('ecc27224834e1831efb609fad012fc9a7c9e66c9', '109.106.252.101', 1648506645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383530363634343b),
('55997d2b9caa91aca9401b516305d4d33329a02e', '109.106.252.101', 1648506644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383530363634343b7265717565737465645f706167657c733a353a2261646d696e223b),
('9cf191760e7deb338bae8cf73dbbc6e60ab233d7', '109.106.252.101', 1648506644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383530363634343b),
('509862df5907652f42dea72aa289e7319f685ecd', '114.124.242.156', 1648551903, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535313930333b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383535303631363b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('8cbfefb77e43e0283b5a3cf8b16a05a11ca9b671', '114.124.213.156', 1648550090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535303037343b7265717565737465645f706167657c733a353a2261646d696e223b),
('585e557daf18a9753e64e93d7d3d6ba224797447', '114.124.242.156', 1648550401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535303430313b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383535303134393b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('388a4ab4531e8378a15d2d9363a3cd2f30ebbf9c', '109.106.252.101', 1648549840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534393834303b),
('8cc9727c25482617f8f60b6203b42308f95d7e3f', '115.178.200.80', 1648550745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535303734353b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353439353630223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b637372666b65797c733a383a22523677345762646a223b5f5f63695f766172737c613a323a7b733a373a22637372666b6579223b733a333a226e6577223b733a393a226373726676616c7565223b733a333a226e6577223b7d6373726676616c75657c733a32303a22796c4b3356475465453476537544305738594d72223b),
('f8443db128d27a9c5a75c629344c490bcb1ebce2', '103.66.198.42', 1648551041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535313034313b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353439353337223b6c6173745f69707c733a31343a223131352e3137382e3230302e3830223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383534393736303b),
('85f271cc82c4b29aa00cd1f75f0efb1f263e8dc9', '109.106.252.101', 1648549840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534393834303b7265717565737465645f706167657c733a353a2261646d696e223b),
('999f5e91fb99b328f7c5bf42d1dd42bc874660c4', '180.241.23.41', 1648552251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383535323235313b7265717565737465645f706167657c733a353a2261646d696e223b),
('2ba8aa9a3d4e24bea14e10c6be3a4656cc41b2d0', '109.106.252.101', 1648549840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534393834303b),
('5f82123f56069527ff7cd7b066fe2c44fec49e18', '103.66.198.42', 1648549556, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534393535363b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353437393238223b6c6173745f69707c733a31343a223131352e3137382e3230302e3830223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b),
('50e92dedff9f1eb06e02605045e6d810a600ba85', '114.124.242.156', 1648549993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534393939333b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534363234353b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('57b5a9d3316080b794c3ba7b63f1aebf49958b85', '103.66.198.42', 1648548769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534383736393b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353435303339223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383534383736393b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a363a22302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031333a30333a3430223b),
('44b27e97ebdaf20a3340fdc87e32a75d8b320c82', '115.178.200.80', 1648549377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534393337373b7265717565737465645f706167657c733a393a2261646d696e2f706f73223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353436323934223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534383337353b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b72656d6f76655f706f736c737c693a313b),
('0a3f2834d5a18f2bbd3f1c29ab90c4ccf0e872bb', '109.106.252.101', 1648548044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534383034343b),
('4fb01ea148f7b06cbd0fcc387777dc2762424bce', '109.106.252.101', 1648548044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534383034343b7265717565737465645f706167657c733a353a2261646d696e223b),
('e531c1c4e31e07eaf310e655229c4604e338efff', '115.178.200.80', 1648548297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534383239373b7265717565737465645f706167657c733a393a2261646d696e2f706f73223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353436323934223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534383232303b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('30a950fa471a96b44417090c98c57ea4def19ee3', '103.66.198.42', 1648548366, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534383336363b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353435303339223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383534383333383b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a363a22302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031333a30333a3430223b),
('ae15a726b734a0399cdaebbee52c7442abc35afb', '115.178.200.80', 1648547919, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534373931333b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353432383731223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534373931383b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b72656d6f76655f736c6c737c693a313b),
('0b7f8730c0c37363a3ba9e35de693415c9fba25b', '109.106.252.101', 1648548044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534383034343b),
('edd75c8d4b93c51bde0a22f08bb7aaa31fabc8b9', '115.178.200.80', 1648547913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534373931333b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353432383731223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534373330303b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b72656d6f76655f736c6c737c693a313b),
('e6c4cbbbba83dc468c5eafd2806eccff475cdec1', '103.66.198.42', 1648547884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534373838343b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353436323932223b6c6173745f69707c733a31343a223131352e3137382e3230302e3830223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534373838313b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('9af43367982e39655414eeb4cf8bf9f1569244ee', '103.66.198.42', 1648547581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534373538313b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353436323932223b6c6173745f69707c733a31343a223131352e3137382e3230302e3830223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534373336323b),
('e054e0069624ec193ed5b8bde2dbc04b40f0c843', '115.178.200.80', 1648547300, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534373330303b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353432383731223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534373330303b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b72656d6f76655f736c6c737c693a313b),
('7214962e96cd3fc8fe873238489c76bbf2a06b07', '103.66.198.42', 1648547110, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534373131303b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353436323932223b6c6173745f69707c733a31343a223131352e3137382e3230302e3830223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534363935393b),
('e23cbb808f89e5af5b927838ad8a37493264d969', '115.178.200.80', 1648546965, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534363936353b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353432383731223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534363836303b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b72656d6f76655f706f736c737c693a313b),
('6b41824e2936d8a707ec38b56d1e4f7425e8e7b7', '109.106.252.101', 1648546242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534363234323b),
('cfda594b1d27e6f76690f397568633b9234462de', '109.106.252.101', 1648546242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534363234323b),
('18c73a15335c2fd16e7b0ec4b40cd6ad9b1f08ef', '109.106.252.101', 1648546242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534363234323b7265717565737465645f706167657c733a353a2261646d696e223b),
('5777d65d86656b5a4edbd0b8d63d5b382b528bc5', '115.178.200.80', 1648546633, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534363633333b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353432383731223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534363335393b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b72656d6f76655f706f736c737c693a313b),
('e84e9ecbdc1739bc3af25c5a3546f6bb273cea53', '114.124.242.156', 1648549124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534393132343b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534363234353b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('ebdc80034922439d4d9b059c27a2249e97391002', '103.66.198.42', 1648546769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534363736393b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353436323932223b6c6173745f69707c733a31343a223131352e3137382e3230302e3830223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534363432303b),
('6ceb619b38255dab1d897be96ad9661c0c7a9944', '114.124.242.156', 1648546223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534363232333b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534353933323b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('b7467950e35b44ad72a9bf7766e9d0a8e86f7101', '103.66.198.42', 1648546056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534363035363b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353432353136223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383534353639383b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a363a22302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031333a30333a3430223b),
('526ffc4d42d62a9d9fb9605e6ffa36fc8aedc0b3', '114.124.242.156', 1648545918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534353931383b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534353839343b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('5c2a78fbfaec33bce92904925473028d3df629b5', '103.66.198.42', 1648545398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534353339383b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353432353136223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383534353231383b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a363a22302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031333a30333a3430223b),
('ce3d8e2c501b23834eb5d0bedb2ad22b23a9f654', '114.124.242.156', 1648545455, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534353435353b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534353435353b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b72656d6f76655f706f736c737c693a313b),
('8503021040fda82fb8259a6798d85ed4af210c57', '114.124.242.156', 1648545128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534353132383b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534353130303b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('2b82458a3662bf67ee3859a49baeff76c9f9c1fa', '109.106.252.101', 1648544445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534343434353b7265717565737465645f706167657c733a353a2261646d696e223b),
('1094bccc715fda061782da3836f1094dad24504c', '109.106.252.101', 1648544445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534343434353b),
('7d044af24d10f8fffee3dec3290f53b945c2f261', '103.66.198.42', 1648545724, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534353732343b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353432353136223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383534353639383b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a363a22302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031333a30333a3430223b),
('3a51338927044dc4758771d2bed849c4f41f1bf0', '109.106.252.101', 1648542642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534323634323b),
('908124c12e2b6f29aa9849ee933560dce6dcad74', '109.106.252.101', 1648542642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534323634323b7265717565737465645f706167657c733a353a2261646d696e223b),
('c7d3113898a9c84ab02e881da55801a099eeb589', '109.106.252.101', 1648542642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534323634323b),
('34b38265690b47e2e3ac9cfbd43a322ac33e52b0', '103.66.198.42', 1648544771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534343737313b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353430343334223b6c6173745f69707c733a31353a223131342e3132342e3234322e313536223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534323933383b),
('6d38aba3ff69f2b9c77c918fb73b8066003a7fa0', '109.106.252.101', 1648544445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534343434353b),
('4dfa90b040c1f845aa6a7786d371565d79e8732a', '103.66.198.42', 1648542490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534323439303b7265717565737465645f706167657c733a353a2261646d696e223b),
('1149a0c3ff4ff11236152552329fe871828c14ce', '103.66.198.42', 1648546137, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534363133373b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353338383038223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383534323536373b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a363a22302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031333a30333a3430223b);
INSERT INTO `sma_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('ae02ad19a7cd8487338885fcd2d452f8650cf5d3', '109.106.252.101', 1648540854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534303835343b),
('6ca374143a9e5fce6f540271daa21dbd1a927efc', '109.106.252.101', 1648540854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534303835343b),
('09c1c083e7d0991ec64ecf22da6340aba935ee8b', '109.106.252.101', 1648540854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534303835343b7265717565737465645f706167657c733a353a2261646d696e223b),
('c99fce896bf2a02f7977ba8e52c2997b9b7f14b4', '180.241.23.41', 1648540458, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534303334363b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353334313037223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383534303434313b6572726f727c4e3b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a363a22302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031333a30333a3430223b637372666b65797c733a383a22484f363968624667223b5f5f63695f766172737c613a323a7b733a373a22637372666b6579223b733a333a226f6c64223b733a393a226373726676616c7565223b733a333a226f6c64223b7d6373726676616c75657c733a32303a224c653748697579786a706e714b46343631416153223b),
('993ddc5b0bc33a019c2d1ad8babb846fcedcf580', '114.124.242.156', 1648540434, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534303433323b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353136393231223b6c6173745f69707c733a31353a223131342e3132342e3234332e313431223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6d6573736167657c733a32373a223c703e416e646120626572686173696c206d6173756b2e3c2f703e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('eb041c66122a9a5852a500b2eb9dbddc64107915', '114.124.242.156', 1648544820, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534343832303b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383534343832303b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('e03be4552f1d9f65f3a3b96bc8e2875b15670506', '109.106.252.101', 1648539046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533393034363b),
('fde1f73bf2967e4cc3471ee3e8b91d9d8fa89d2b', '109.106.252.101', 1648539046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533393034363b),
('29d41789e9af34e40d442e375fe3662a3f0f50d5', '109.106.252.101', 1648539046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533393034363b7265717565737465645f706167657c733a353a2261646d696e223b),
('a017088a8fdcdcc49862a9eef00cee104f162ecd', '103.66.198.42', 1648540346, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534303334363b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353334313037223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383533383837383b6572726f727c4e3b),
('f5817e00f4721c46ec0455469b84a06e05b86503', '114.124.242.156', 1648540007, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534303030373b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383533383135383b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('d2fd69b1e0e63c56b321e0e1b0f225ec618a007f', '109.106.252.101', 1648537250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533373235303b),
('365b87a9bc82a04d1e31bd3c06e40d100c220939', '109.106.252.101', 1648537250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533373235303b7265717565737465645f706167657c733a353a2261646d696e223b),
('4d2f5b2f7fbb1b98a4e7ea264a2bfae3f6d2e047', '103.66.198.42', 1648538794, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533383739343b7265717565737465645f706167657c733a353a2261646d696e223b),
('7210882e696d1d3be40f62d9f32bcb19f07d5567', '109.106.252.101', 1648537250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533373235303b),
('4eadb50ba9be0b2e4f576635187c1fc4c7ef9f4f', '114.124.242.156', 1648537882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533373838323b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383533373836353b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('d58bda8d4faef15546a78811f7704d0d651ac914', '109.106.252.101', 1648533643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533333634333b),
('480017aa0b5b1460aae653681e891b6874c6bb3f', '109.106.252.101', 1648533643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533333634333b7265717565737465645f706167657c733a353a2261646d696e223b),
('27a9742b6ddd1fb6b45c7f131ab65d7210ca86cd', '109.106.252.101', 1648533643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533333634333b),
('cdb5a5d06f0eeebd241719fa186dab1d4c05f4db', '180.241.23.41', 1648542770, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383534323737303b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353236303836223b6c6173745f69707c733a31333a223134302e3231332e31352e3531223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383533393139383b),
('38b1ae5cb794f5ad8c74f131f62b6a30093fc6c6', '109.106.252.101', 1648535445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533353434353b),
('37596ac1c4fde47dc58dff0b0815f6e45ee891b3', '109.106.252.101', 1648535445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533353434353b7265717565737465645f706167657c733a353a2261646d696e223b),
('ae8b1132ff17ea6ff9ea822f6a5af7b97179bf92', '109.106.252.101', 1648535445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533353434353b),
('519fb760a677f7034afb115895ad6c3d3be84de5', '140.213.15.51', 1648526133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532363037323b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353231363636223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6572726f727c4e3b),
('49a3fb5f1fa1268bdf7435b139dc09e46c8edd9b', '109.106.252.101', 1648526447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532363434373b),
('9e85d4654824c2b207bc47d4ae7ab48b49d56227', '109.106.252.101', 1648526447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532363434373b7265717565737465645f706167657c733a353a2261646d696e223b),
('6d31251f4a9c95b525a122d249046dc4f1198099', '109.106.252.101', 1648526447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532363434373b),
('b5aa70a1f423ce35c64a9fdebeb35da467d23c60', '109.106.252.101', 1648528240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532383234303b),
('1bdfc288fe6ba917740e53449700a5573648661f', '109.106.252.101', 1648528240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532383234303b7265717565737465645f706167657c733a353a2261646d696e223b),
('ef8b3035806ea5ed44dfdf1f25bef4b917c895d2', '109.106.252.101', 1648528240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532383234303b),
('1efdaf2fd2ecdb174a66e51feaf6874cbd5632ed', '114.124.242.156', 1648530607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533303630373b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383533303039313b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('190d0c439a74e13dca311849dfb5e3e0cc94f433', '109.106.252.101', 1648530042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533303034323b),
('e892e2062d2204afd18167e05127ac260d38b9a3', '109.106.252.101', 1648530042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533303034323b7265717565737465645f706167657c733a353a2261646d696e223b),
('4599655b9de4b67f239e78ecb71a75695f2495d1', '109.106.252.101', 1648530042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533303034323b),
('f9ee08bfdf2554435fd04145ab52304116755b1e', '114.124.242.156', 1648530955, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533303935353b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383533303732373b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('e3f73dc4f35dba017d0295513b7f0c309de1bfd6', '114.124.242.156', 1648532016, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533323031363b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383533303935353b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b72656d6f76655f706f736c737c693a313b),
('c0b7658febc614a53acf155e18199b981d6d1453', '109.106.252.101', 1648531845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533313834353b),
('59b38bcca06b3bbc8b2eca7148eafff7f5b159c5', '109.106.252.101', 1648531845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533313834353b7265717565737465645f706167657c733a353a2261646d696e223b),
('4c3612e20fbd09e20c759c969514d745dbcd3bde', '109.106.252.101', 1648531845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533313834353b),
('093478d422baf84a03a940cb10d827c75c592089', '114.124.242.156', 1648537006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383533373030363b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383533323033303b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('254494c1c90c9fb19149ffabb4feabdd9e762c16', '109.106.252.101', 1648524642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532343634323b7265717565737465645f706167657c733a353a2261646d696e223b),
('fad1fece8a5abb39d4adf5d7726895fd1fadd36e', '109.106.252.101', 1648524642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532343634323b),
('72206ad51a347850b89cf8bf2be286e8b9cc290b', '103.66.198.42', 1648525467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532353435323b7265717565737465645f706167657c733a33323a2261646d696e2f73797374656d5f73657474696e67732f77617265686f75736573223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438343630343337223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383532353436353b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a363a22302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031333a30333a3430223b),
('a8c809627c2d8da76459f0ad7efcd4dc93ef5daf', '114.124.242.156', 1648529945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532393934353b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383532343632313b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('1968ab9cf510e7ce5baf1fa45f4c8f5b1074ec09', '109.106.252.101', 1648524642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532343634323b),
('fd5d3c80df7ae24e1c0e18ef29f9a833237b0ada', '114.124.242.156', 1648524434, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532343433343b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383532343433343b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('02826401d45737b8fc1c17fa112f14194f851abb', '109.106.252.101', 1648522846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532323834363b7265717565737465645f706167657c733a353a2261646d696e223b),
('a751a39f2ff570e3f3fe362759143de9d5666243', '109.106.252.101', 1648522846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532323834363b),
('86b8693f568780231aefd33f85a49fd2b61e05c5', '114.124.243.141', 1648524117, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532343131373b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383532323336393b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('de43bed9fcbb19d47d7fd42e3701af891cd5778c', '109.106.252.101', 1648522846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532323834363b),
('fa87d106b0e90497a41c89374ce72ab20dac28e2', '103.66.198.42', 1648525452, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532353435323b7265717565737465645f706167657c733a33323a2261646d696e2f73797374656d5f73657474696e67732f77617265686f75736573223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438343630343337223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('a0bef7b5e4c596288e44e67b5b2d19aa3f576bfd', '114.124.243.141', 1648523288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532333238383b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383532323336393b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('0cfb740ca1bb075a4c01d466913716eb9ef9281b', '109.106.252.101', 1648521041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532313034313b7265717565737465645f706167657c733a353a2261646d696e223b),
('948460a440270b2e1e319f74b48a0c7af2cdd974', '109.106.252.101', 1648521041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532313034313b),
('5fa255792a36b5ffd805b43631a66c4d8af13484', '114.124.243.141', 1648522347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532323334373b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383532323231353b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('7be9fb9275b853308a51594a81039dd605c92424', '109.106.252.101', 1648521041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532313034313b),
('81eb777db3062a423f1c1ef93a182e8be0bcded7', '114.124.243.141', 1648521645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532313634353b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383532313532363b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('b6d7dbd5605712fb0756328ef389ad609a150360', '109.106.252.101', 1648519249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531393234393b7265717565737465645f706167657c733a353a2261646d696e223b),
('f53a787e6fcaa30d4ffc6035093384ebae6417a7', '109.106.252.101', 1648519249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531393234393b),
('9b2486e2f10df7ad987c6adc9fd8fd97d4e7ee1b', '114.124.243.141', 1648520092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383532303039323b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383532303034373b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('68d0ba1f425a43f70ecd15a282a8e05233f498b3', '109.106.252.101', 1648519249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531393234393b),
('0f62225a70c67d5640add0e0cb59dc634bc84d72', '109.106.252.101', 1648517441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531373434313b),
('09fdab5d37a869bf7b5e7e59aff818d2ca94a05d', '109.106.252.101', 1648517441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531373434313b7265717565737465645f706167657c733a353a2261646d696e223b),
('e4a633c1b25d0be7b061c7003d05ea487e18e8b8', '109.106.252.101', 1648517441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531373434313b),
('f58723428459c81d0407328c4295269a75f19378', '114.124.243.141', 1648519468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531393436383b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383531393339343b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('214a80e07060e17d79cefc30eca50c8cf99b5bd5', '114.124.243.141', 1648519164, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531393136343b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353132343138223b6c6173745f69707c733a31353a223138302e3234342e3136352e313434223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383531393039303b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('52b8d43db0b7460a9fe197bbd60a3bad5445aafe', '109.106.252.101', 1648513842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531333834323b),
('d38197e5fb7c726e9cb40cfa1da001cae30eb949', '109.106.252.101', 1648515642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531353634323b),
('c3656826e228a476b5e2e58e0d8aa5200c0762bd', '109.106.252.101', 1648515642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531353634323b7265717565737465645f706167657c733a353a2261646d696e223b),
('c25403286cce2250514123bd02573cc8878c8bf6', '109.106.252.101', 1648515642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531353634323b),
('a05e7af587e4dfc93edf7f88e39064b84f7f065d', '109.106.252.101', 1648513842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531333834323b7265717565737465645f706167657c733a353a2261646d696e223b),
('5a12b88d2494f8aedcebb9f6e92a799391608625', '109.106.252.101', 1648513842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383531333834323b),
('6o5549jnudklvci3q4si657rju8gdb4v', '127.0.0.1', 1648567762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536373736323b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353439373033223b6c6173745f69707c733a31343a223131352e3137382e3230302e3830223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383536373033393b),
('jkc88ufmhkhk5mq1oqcq9an2akv73kds', '127.0.0.1', 1648568077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536383037373b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353439373033223b6c6173745f69707c733a31343a223131352e3137382e3230302e3830223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383536383035393b),
('h7lu5obojnbr4aj2r5pc07f6gsmbge4e', '127.0.0.1', 1648568474, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536383437343b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353439373033223b6c6173745f69707c733a31343a223131352e3137382e3230302e3830223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383536383332313b),
('st36cd1pfdoqqqf2hc6n8di9ir97t5b8', '127.0.0.1', 1648569114, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536393131343b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353439373033223b6c6173745f69707c733a31343a223131352e3137382e3230302e3830223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383536383535303b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a363a22302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031333a30333a3430223b),
('4a69do102l455qbb726c89manpu79llp', '127.0.0.1', 1648569776, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536393737363b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353439373033223b6c6173745f69707c733a31343a223131352e3137382e3230302e3830223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383536383535303b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a363a22302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031333a30333a3430223b),
('rsusngcl16aduo9otcb9nme6iar0t88i', '127.0.0.1', 1648569901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536393830323b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353438393035223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b),
('2683473eca96c13c63cce534b35f8ad57598ffa5', '103.138.49.94', 1648572670, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537323637303b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353639383838223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383537303330303b),
('910bd3f7935751a2b88669dfbdc1b4fdcc311303', '109.106.252.101', 1648571441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537313434313b),
('467024cf86f7956176b5046ef4dce3c7064c6786', '109.106.252.101', 1648571441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537313434313b7265717565737465645f706167657c733a353a2261646d696e223b),
('3f77a9b242a86d46a7c14bc810cc4f1ccb24d65f', '109.106.252.101', 1648571441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537313434313b),
('6e584d7623eead0701a2e1e8b493656aea944ee0', '103.138.49.71', 1648573523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537333532333b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353639383838223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383537303330303b),
('551a348bd0d36cf464fe002a0d07fd0d54daae1a', '109.106.252.101', 1648573272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537333237323b),
('bfc9466e9490dcf976b79c479daf086d06b458af', '109.106.252.101', 1648573272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537333237323b7265717565737465645f706167657c733a353a2261646d696e223b),
('8769899fdf5989cbfb8ba8991d69307f8c682bec', '109.106.252.101', 1648573272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537333237323b),
('3231e232af379a19d5a851f0018dbb0349157d7a', '103.138.49.102', 1648574168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537343136383b),
('a57c363de374ce7b5246503680e0a78ec20d816e', '103.138.49.94', 1648574173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537343136383b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353636383831223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383537343137323b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a363a22302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031333a30333a3430223b),
('5cbdbafede1a2df71f293525c4588f49fae398e6', '109.106.252.101', 1648575041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537353034313b),
('c1aba62455fe6dce9f6c40e837ffcb5b97276ee9', '109.106.252.101', 1648575041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537353034313b7265717565737465645f706167657c733a353a2261646d696e223b),
('a58a9bda21f7bd98bbbee5b26bc150f228c574ff', '109.106.252.101', 1648575041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537353034313b),
('02d73b1f27bb8ea1cd6cd18733539bce31215780', '109.106.252.101', 1648576841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537363834313b),
('612f09e731dc32480c8c6a1fa5f0745d71ae9046', '109.106.252.101', 1648576841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537363834313b7265717565737465645f706167657c733a353a2261646d696e223b),
('4e0e9a8198f1ffbfede61153e7d391197850da5b', '109.106.252.101', 1648576841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537363834313b),
('5859a3e61e82927099bcf49a820aca36b3aecf0f', '109.106.252.101', 1648578644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537383634343b),
('6cff385837dcae36f34ee3794700a6289ffa8c6d', '109.106.252.101', 1648578644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537383634343b7265717565737465645f706167657c733a353a2261646d696e223b),
('0e1e8b305c31ca45e7e74c71011973d39531b69a', '109.106.252.101', 1648578644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383537383634343b),
('750bdff563ba24302c28def983ff17ee6899094f', '109.106.252.101', 1648580441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383538303434313b),
('fdeb4fd316f7e94fe10c3355aaf3c161db9b9adc', '109.106.252.101', 1648580441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383538303434313b7265717565737465645f706167657c733a353a2261646d696e223b),
('9ef004c31fee929c2854f55e20aa27a0f9df17d8', '109.106.252.101', 1648580441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383538303434313b),
('6925c42d309f9971e6b38d372adeb63632c2d6a3', '109.106.252.101', 1648582240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383538323234303b),
('278f2fc13d8463ad9f514168d0493f80b78556ea', '109.106.252.101', 1648582240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383538323234303b7265717565737465645f706167657c733a353a2261646d696e223b),
('0c766cf56d0c02ab84822114e66a3c687109b174', '109.106.252.101', 1648582240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383538323234303b),
('a4db8fecb75bddbdd29ae84184e7fd96294a2bf6', '109.106.252.101', 1648584043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383538343034333b),
('1398e74d42c1172ee38d9da56130328efe3fd2f8', '109.106.252.101', 1648584043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383538343034333b7265717565737465645f706167657c733a353a2261646d696e223b),
('0c961f68a7d6414a57840f0044e12c2096738f38', '109.106.252.101', 1648584043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383538343034333b),
('5d06f5c8371acb1718fd8707e27c4382af72ea47', '109.106.252.101', 1648585841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383538353834313b),
('41f873b7509b1f01711d188c0537ad2977ca4918', '109.106.252.101', 1648585841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383538353834313b7265717565737465645f706167657c733a353a2261646d696e223b),
('016a28c19f2478e87f34eeb660e3890a8b75cf0b', '109.106.252.101', 1648585841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383538353834313b),
('ffaba9ede45b1751f5b72ca75d651b986c85f77d', '109.106.252.101', 1648587643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383538373634333b),
('34c9ff72a77cfb0a38712743e9d0c78975654440', '109.106.252.101', 1648587643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383538373634333b7265717565737465645f706167657c733a353a2261646d696e223b),
('b66fb185395caffffabfa25c406d3e43cd399a17', '109.106.252.101', 1648587643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383538373634333b),
('88ef9fdf56f4c930b45c6b4485c0d48b48b594cf', '109.106.252.101', 1648589441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383538393434313b),
('6da37395310b4c58e5e9a7cca0f865b6586851b1', '109.106.252.101', 1648589441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383538393434313b7265717565737465645f706167657c733a353a2261646d696e223b),
('9cded747d914a508cc12de7024cdb44bea86bc4c', '109.106.252.101', 1648589441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383538393434313b),
('9fca41268144ce9b9b6a4e608f2685edca21095f', '109.106.252.101', 1648591241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383539313234313b),
('e96f30b640dbfc2b704819e1b477a034db50f1d3', '109.106.252.101', 1648591241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383539313234313b7265717565737465645f706167657c733a353a2261646d696e223b),
('4d16c7345342d8a80fd5f77346d2a3d87f08bbef', '109.106.252.101', 1648591241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383539313234313b),
('bd3d41f777df2a4dfb2be06c31ebc19e2768959a', '109.106.252.101', 1648593040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383539333034303b),
('592df150998e685c470cf1e39841c416fde040bc', '109.106.252.101', 1648593040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383539333034303b7265717565737465645f706167657c733a353a2261646d696e223b),
('55516e3b7a34a600aca72fe3ccf666881518f2d9', '109.106.252.101', 1648593040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383539333034303b);
INSERT INTO `sma_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('420a410d2d2b1104cbcfa1339e8a7b581d5e0d10', '109.106.252.101', 1648594842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383539343834323b),
('20074b27a6d57cded32175e3625fbdc95f4f4457', '109.106.252.101', 1648594842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383539343834323b7265717565737465645f706167657c733a353a2261646d696e223b),
('7ded72aedaf75c19d5e7dd202505d8fffb9bb008', '109.106.252.101', 1648594842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383539343834323b),
('43ec2cdc980e2d648176cc9d58f9dc9b34fcaabd', '109.106.252.101', 1648596640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383539363634303b),
('f10b6f20746bd5a13f77b93096c367eeabe92139', '109.106.252.101', 1648596640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383539363634303b7265717565737465645f706167657c733a353a2261646d696e223b),
('51452b0fbda078166428041385335ec1c50cdb2b', '109.106.252.101', 1648596640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383539363634303b),
('e25551aedb3e0fb8cf02910d6dad8cffc014e7f5', '103.213.129.148', 1648597732, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383539373733323b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353734313638223b6c6173745f69707c733a31333a223130332e3133382e34392e3934223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383539373630373b),
('8ce8c87e1bebe8dd15efd122e3304efe919390af', '103.213.129.148', 1648597854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383539373733323b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353734313638223b6c6173745f69707c733a31333a223130332e3133382e34392e3934223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383539373833383b),
('9fc2ddbc1e573834de87adf84a45c3db5a4c35e9', '109.106.252.101', 1648598450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383539383435303b),
('90266c7e8adc2699501ecace161ba55ff8de5565', '109.106.252.101', 1648598450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383539383435303b7265717565737465645f706167657c733a353a2261646d696e223b),
('44bbc99c39c14075878ebea59f32894803376ea1', '109.106.252.101', 1648598450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383539383435303b),
('eab77a2bdec64608a1cc1b959540cec4de2f01a9', '109.106.252.101', 1648600240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630303234303b),
('5b48c904e2eaf7405c980208c37c2f8ab3a97d98', '109.106.252.101', 1648600240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630303234303b7265717565737465645f706167657c733a353a2261646d696e223b),
('0058d55f36f23e4923623074748b3d6883a347cf', '109.106.252.101', 1648600240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630303234303b),
('9abe805757d39fc99e3901f6cfd64651895a1432', '109.106.252.101', 1648602047, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630323034373b),
('94d38d8a34d7b1b58d345102999d4974913e65f6', '109.106.252.101', 1648602047, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630323034373b7265717565737465645f706167657c733a353a2261646d696e223b),
('52ca34716f6d2203a7cf450f453b05721a2f7c97', '109.106.252.101', 1648602047, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630323034373b),
('92e9c76ba388556473aab95e46c5a048b0fe2509', '114.124.141.171', 1648605549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630353534393b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31303a226b61736972776d617274223b757365726e616d657c733a31303a226b61736972776d617274223b656d61696c7c733a32383a226b617369722d776d617274407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2239223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438343538323133223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a363a2266656d616c65223b67726f75705f69647c733a313a2237223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c4e3b6c6173745f61637469766974797c693a313634383630323838393b72656769737465725f69647c733a313a2236223b636173685f696e5f68616e647c733a31303a2235383030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d33302030383a31343a3439223b6572726f727c733a3134393a22416b736573204469746f6c616b2120416e646120746964616b206d656d696c696b692068616b20756e74756b206d656e67616b7365732068616c616d616e2079616e672064696d696e74612e204a696b6120416e64612062657270696b69722c20697475206b6172656e61206b6573616c6168616e2c2073696c616b616e20687562756e67692061646d696e6973747261746f722e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('5d150a4f6908450f3b26d30ee323e16ef05a7ef9', '103.66.198.42', 1648606751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630363735313b7265717565737465645f706167657c733a353a2261646d696e223b),
('4cdf7636a4302116235f514e504bb8e6d1acf604', '109.106.252.101', 1648603839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630333833393b),
('624fcc19d5c9ce160e8165cfdc8084efe4098fd9', '109.106.252.101', 1648603839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630333833393b7265717565737465645f706167657c733a353a2261646d696e223b),
('4f814f70a9738a4248c5cb628ceaadffca86cd10', '109.106.252.101', 1648603839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630333833393b),
('054c3f394df7dfda4b1124061776e96e9ddd3cf0', '114.124.141.171', 1648607300, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630373330303b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31303a226b61736972776d617274223b757365726e616d657c733a31303a226b61736972776d617274223b656d61696c7c733a32383a226b617369722d776d617274407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2239223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438343538323133223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a363a2266656d616c65223b67726f75705f69647c733a313a2237223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c4e3b6c6173745f61637469766974797c693a313634383630373139363b72656769737465725f69647c733a313a2236223b636173685f696e5f68616e647c733a31303a2235383030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d33302030383a31343a3439223b),
('b6e5714aafc91b2d8232822fe6904f657237eae8', '109.106.252.101', 1648605641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630353634313b),
('b7a6db1dcf3cb9d6da54ba4e87fdb199e03acd81', '109.106.252.101', 1648605641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630353634313b7265717565737465645f706167657c733a353a2261646d696e223b),
('5dfdd41e21bfc3574de58cd0ba47dbcbb4574019', '109.106.252.101', 1648605641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630353634313b),
('4aeca49c7b6da18879b3458849a0b234cad4e140', '103.66.198.42', 1648608348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630383334383b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353937343332223b6c6173745f69707c733a31353a223130332e3231332e3132392e313438223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6d6573736167657c733a32373a223c703e416e646120626572686173696c206d6173756b2e3c2f703e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('9ce5af473fd2734fa0a83a35a3e038a538912bc0', '114.124.141.171', 1648607628, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630373632383b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31303a226b61736972776d617274223b757365726e616d657c733a31303a226b61736972776d617274223b656d61696c7c733a32383a226b617369722d776d617274407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2239223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438343538323133223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a363a2266656d616c65223b67726f75705f69647c733a313a2237223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c4e3b6c6173745f61637469766974797c693a313634383630373539393b72656769737465725f69647c733a313a2236223b636173685f696e5f68616e647c733a31303a2235383030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d33302030383a31343a3439223b),
('7badfaf861bf26acc9b8034e5031d517a907f749', '103.87.86.155', 1648612387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383631323338373b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353730323835223b6c6173745f69707c733a31343a223130332e3133382e34392e313032223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383630373437353b),
('1089b77d5b57d57e2fab28e1e179bb1373899cb4', '109.106.252.101', 1648607442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630373434323b),
('5730a1e5f2f14eb81f01c21b27bb02b9e1d93b6d', '109.106.252.101', 1648607442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630373434323b7265717565737465645f706167657c733a353a2261646d696e223b),
('2d7900ed87cbe319c0db92144c331458e91fcfcb', '109.106.252.101', 1648607442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630373434323b),
('f6c8ae3f4511a2c49cf4b7dadb4cd33142f73966', '114.124.141.171', 1648608137, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630383133373b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31303a226b61736972776d617274223b757365726e616d657c733a31303a226b61736972776d617274223b656d61696c7c733a32383a226b617369722d776d617274407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2239223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438343538323133223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a363a2266656d616c65223b67726f75705f69647c733a313a2237223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c4e3b6c6173745f61637469766974797c693a313634383630373635373b72656769737465725f69647c733a313a2236223b636173685f696e5f68616e647c733a31303a2235383030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d33302030383a31343a3439223b),
('f36ead36230e96ff16698a50e12aaea6114eb265', '114.124.141.171', 1648608565, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630383536353b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31303a226b61736972776d617274223b757365726e616d657c733a31303a226b61736972776d617274223b656d61696c7c733a32383a226b617369722d776d617274407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2239223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438343538323133223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a363a2266656d616c65223b67726f75705f69647c733a313a2237223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c4e3b6c6173745f61637469766974797c693a313634383630383231373b72656769737465725f69647c733a313a2236223b636173685f696e5f68616e647c733a31303a2235383030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d33302030383a31343a3439223b),
('891d1226534736b0088bc18596d2eab5ecf81454', '103.66.198.42', 1648609872, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630393837323b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353937343332223b6c6173745f69707c733a31353a223130332e3231332e3132392e313438223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('6ba0c31eba546fd44370a1bdf0861066203e8104', '114.124.141.171', 1648610074, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383631303037343b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31303a226b61736972776d617274223b757365726e616d657c733a31303a226b61736972776d617274223b656d61696c7c733a32383a226b617369722d776d617274407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2239223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438343538323133223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a363a2266656d616c65223b67726f75705f69647c733a313a2237223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c4e3b6c6173745f61637469766974797c693a313634383630393638333b72656769737465725f69647c733a313a2236223b636173685f696e5f68616e647c733a31303a2235383030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d33302030383a31343a3439223b),
('b29e182fc96dd18b4018904920cd7ade5b1ecc69', '109.106.252.101', 1648609244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630393234343b),
('8581a509245bb0cd41e9839d953e4384b6c1e63e', '109.106.252.101', 1648609244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630393234343b7265717565737465645f706167657c733a353a2261646d696e223b),
('c34d22305a9807efb609cc52d9b01745a780af00', '109.106.252.101', 1648609244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630393234343b),
('f4b712269a3992dc382b46fa53478e4cec65e7d4', '103.66.198.42', 1648610428, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383631303432383b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438363039383831223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('7835f935ef59f9840f213fd924e6afae1e219d3f', '103.66.198.42', 1648609949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630393837363b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438363036373531223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383630393934393b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a363a22302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031333a30333a3430223b),
('8633ed48e8fcc54f6273ae01302a4a16ba6fc308', '103.66.198.42', 1648610079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383630393936313b6964656e746974797c733a31303a226b61736972776d617274223b757365726e616d657c733a31303a226b61736972776d617274223b656d61696c7c733a32383a226b617369722d776d617274407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2239223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438363032373937223b6c6173745f69707c733a31353a223131342e3132342e3134312e313731223b6176617461727c4e3b67656e6465727c733a363a2266656d616c65223b67726f75705f69647c733a313a2237223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c4e3b6c6173745f61637469766974797c693a313634383631303035343b72656769737465725f69647c733a313a2236223b636173685f696e5f68616e647c733a31303a2235383030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d33302030383a31343a3439223b),
('5291ea080c9ceb3692b947b1c73b5f8460c0c319', '103.66.198.42', 1648610428, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383631303432383b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438363039383831223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6d6573736167657c733a32373a223c703e416e646120626572686173696c206d6173756b2e3c2f703e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('f4bfb0f8cf8ce4c6c3ff44ca56355f8972e26901', '114.124.141.171', 1648611142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383631313134323b6964656e746974797c733a31303a226b61736972776d617274223b757365726e616d657c733a31303a226b61736972776d617274223b656d61696c7c733a32383a226b617369722d776d617274407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2239223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438363039393639223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a363a2266656d616c65223b67726f75705f69647c733a313a2237223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c4e3b6c6173745f61637469766974797c693a313634383631313132393b72656769737465725f69647c733a313a2236223b636173685f696e5f68616e647c733a31303a2235383030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d33302030383a31343a3439223b),
('7779e9553b86a0704a45544b982f8c44b5101b3e', '109.106.252.101', 1648611043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383631313034333b),
('a6d9ca260d3c9093786699003588d31ffba791f2', '109.106.252.101', 1648611043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383631313034333b7265717565737465645f706167657c733a353a2261646d696e223b),
('3273667b1e7b2bc7fb54c5e7639a32a755dff9ec', '109.106.252.101', 1648611043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383631313034333b),
('83046cbe50fb002047a8e9c37b6b4f24321e1764', '114.124.141.171', 1648612473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383631323437333b6964656e746974797c733a31303a226b61736972776d617274223b757365726e616d657c733a31303a226b61736972776d617274223b656d61696c7c733a32383a226b617369722d776d617274407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2239223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438363039393639223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a363a2266656d616c65223b67726f75705f69647c733a313a2237223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c4e3b6c6173745f61637469766974797c693a313634383631313136353b72656769737465725f69647c733a313a2236223b636173685f696e5f68616e647c733a31303a2235383030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d33302030383a31343a3439223b),
('523086e6296bcc7661c779ba5927dc561473026d', '140.213.9.151', 1648612409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383631323338373b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a31333a22776d6172746369706179756e67223b757365726e616d657c733a31333a22776d6172746369706179756e67223b656d61696c7c733a33303a22776d6172746369706179756e67407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438353730323835223b6c6173745f69707c733a31343a223130332e3133382e34392e313032223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2238223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c733a313a2231223b6c6173745f61637469766974797c693a313634383631323430303b72656769737465725f69647c733a313a2234223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d32352031303a32333a3136223b),
('a34a61042c4f800cd7003f7610d810f416765fc3', '114.124.141.171', 1648612565, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383631323437333b6964656e746974797c733a31303a226b61736972776d617274223b757365726e616d657c733a31303a226b61736972776d617274223b656d61696c7c733a32383a226b617369722d776d617274407769646f646f72657461696c2e636f6d223b757365725f69647c733a313a2239223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438363039393639223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a363a2266656d616c65223b67726f75705f69647c733a313a2237223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c4e3b6c6173745f61637469766974797c693a313634383631323536353b72656769737465725f69647c733a313a2236223b636173685f696e5f68616e647c733a31303a2235383030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30332d33302030383a31343a3439223b);

-- --------------------------------------------------------

--
-- Table structure for table `sma_settings`
--

CREATE TABLE `sma_settings` (
  `setting_id` int(1) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `logo2` varchar(255) NOT NULL,
  `site_name` varchar(55) NOT NULL,
  `language` varchar(20) NOT NULL,
  `default_warehouse` int(2) NOT NULL,
  `accounting_method` tinyint(4) NOT NULL DEFAULT 0,
  `default_currency` varchar(3) NOT NULL,
  `default_tax_rate` int(2) NOT NULL,
  `rows_per_page` int(2) NOT NULL,
  `version` varchar(10) NOT NULL DEFAULT '1.0',
  `default_tax_rate2` int(11) NOT NULL DEFAULT 0,
  `dateformat` int(11) NOT NULL,
  `sales_prefix` varchar(20) DEFAULT NULL,
  `quote_prefix` varchar(20) DEFAULT NULL,
  `purchase_prefix` varchar(20) DEFAULT NULL,
  `transfer_prefix` varchar(20) DEFAULT NULL,
  `delivery_prefix` varchar(20) DEFAULT NULL,
  `payment_prefix` varchar(20) DEFAULT NULL,
  `return_prefix` varchar(20) DEFAULT NULL,
  `returnp_prefix` varchar(20) DEFAULT NULL,
  `expense_prefix` varchar(20) DEFAULT NULL,
  `item_addition` tinyint(1) NOT NULL DEFAULT 0,
  `theme` varchar(20) NOT NULL,
  `product_serial` tinyint(4) NOT NULL,
  `default_discount` int(11) NOT NULL,
  `product_discount` tinyint(1) NOT NULL DEFAULT 0,
  `discount_method` tinyint(4) NOT NULL,
  `tax1` tinyint(4) NOT NULL,
  `tax2` tinyint(4) NOT NULL,
  `overselling` tinyint(1) NOT NULL DEFAULT 0,
  `restrict_user` tinyint(4) NOT NULL DEFAULT 0,
  `restrict_calendar` tinyint(4) NOT NULL DEFAULT 0,
  `timezone` varchar(100) DEFAULT NULL,
  `iwidth` int(11) NOT NULL DEFAULT 0,
  `iheight` int(11) NOT NULL,
  `twidth` int(11) NOT NULL,
  `theight` int(11) NOT NULL,
  `watermark` tinyint(1) DEFAULT NULL,
  `reg_ver` tinyint(1) DEFAULT NULL,
  `allow_reg` tinyint(1) DEFAULT NULL,
  `reg_notification` tinyint(1) DEFAULT NULL,
  `auto_reg` tinyint(1) DEFAULT NULL,
  `protocol` varchar(20) NOT NULL DEFAULT 'mail',
  `mailpath` varchar(55) DEFAULT '/usr/sbin/sendmail',
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_user` varchar(100) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(10) DEFAULT '25',
  `smtp_crypto` varchar(10) DEFAULT NULL,
  `corn` datetime DEFAULT NULL,
  `customer_group` int(11) NOT NULL,
  `default_email` varchar(100) NOT NULL,
  `mmode` tinyint(1) NOT NULL,
  `bc_fix` tinyint(4) NOT NULL DEFAULT 0,
  `auto_detect_barcode` tinyint(1) NOT NULL DEFAULT 0,
  `captcha` tinyint(1) NOT NULL DEFAULT 1,
  `reference_format` tinyint(1) NOT NULL DEFAULT 1,
  `racks` tinyint(1) DEFAULT 0,
  `attributes` tinyint(1) NOT NULL DEFAULT 0,
  `product_expiry` tinyint(1) NOT NULL DEFAULT 0,
  `decimals` tinyint(2) NOT NULL DEFAULT 2,
  `qty_decimals` tinyint(2) NOT NULL DEFAULT 2,
  `decimals_sep` varchar(2) NOT NULL DEFAULT '.',
  `thousands_sep` varchar(2) NOT NULL DEFAULT ',',
  `invoice_view` tinyint(1) DEFAULT 0,
  `default_biller` int(11) DEFAULT NULL,
  `envato_username` varchar(50) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT NULL,
  `rtl` tinyint(1) DEFAULT 0,
  `each_spent` decimal(15,4) DEFAULT NULL,
  `ca_point` tinyint(4) DEFAULT NULL,
  `each_sale` decimal(15,4) DEFAULT NULL,
  `sa_point` tinyint(4) DEFAULT NULL,
  `update` tinyint(1) DEFAULT 0,
  `sac` tinyint(1) DEFAULT 0,
  `display_all_products` tinyint(1) DEFAULT 0,
  `display_symbol` tinyint(1) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `remove_expired` tinyint(1) DEFAULT 0,
  `barcode_separator` varchar(2) NOT NULL DEFAULT '-',
  `set_focus` tinyint(1) NOT NULL DEFAULT 0,
  `price_group` int(11) DEFAULT NULL,
  `barcode_img` tinyint(1) NOT NULL DEFAULT 1,
  `ppayment_prefix` varchar(20) DEFAULT 'POP',
  `disable_editing` smallint(6) DEFAULT 90,
  `qa_prefix` varchar(55) DEFAULT NULL,
  `update_cost` tinyint(1) DEFAULT NULL,
  `apis` tinyint(1) NOT NULL DEFAULT 0,
  `state` varchar(100) DEFAULT NULL,
  `pdf_lib` varchar(20) DEFAULT 'dompdf'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_settings`
--

INSERT INTO `sma_settings` (`setting_id`, `logo`, `logo2`, `site_name`, `language`, `default_warehouse`, `accounting_method`, `default_currency`, `default_tax_rate`, `rows_per_page`, `version`, `default_tax_rate2`, `dateformat`, `sales_prefix`, `quote_prefix`, `purchase_prefix`, `transfer_prefix`, `delivery_prefix`, `payment_prefix`, `return_prefix`, `returnp_prefix`, `expense_prefix`, `item_addition`, `theme`, `product_serial`, `default_discount`, `product_discount`, `discount_method`, `tax1`, `tax2`, `overselling`, `restrict_user`, `restrict_calendar`, `timezone`, `iwidth`, `iheight`, `twidth`, `theight`, `watermark`, `reg_ver`, `allow_reg`, `reg_notification`, `auto_reg`, `protocol`, `mailpath`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_port`, `smtp_crypto`, `corn`, `customer_group`, `default_email`, `mmode`, `bc_fix`, `auto_detect_barcode`, `captcha`, `reference_format`, `racks`, `attributes`, `product_expiry`, `decimals`, `qty_decimals`, `decimals_sep`, `thousands_sep`, `invoice_view`, `default_biller`, `envato_username`, `purchase_code`, `rtl`, `each_spent`, `ca_point`, `each_sale`, `sa_point`, `update`, `sac`, `display_all_products`, `display_symbol`, `symbol`, `remove_expired`, `barcode_separator`, `set_focus`, `price_group`, `barcode_img`, `ppayment_prefix`, `disable_editing`, `qa_prefix`, `update_cost`, `apis`, `state`, `pdf_lib`) VALUES
(1, 'rsz_widodo-removebg-p.png', 'rsz_widodo-removebg-p1.png', 'Widodo Retail', 'indonesian', 3, 0, 'IDR', 0, 10, '2.0.0', 0, 5, 'SO', 'PR', 'PO', 'TR', 'DO', 'SI', 'SR', 'RP', '', 1, 'default', 1, 1, 1, 1, 0, 0, 0, 1, 0, 'Asia/Jakarta', 1080, 1080, 150, 150, 1, 0, 0, 0, NULL, 'smtp', '/usr/sbin/sendmail', 'mail.widodoretail.com ', 'info@widodoretail.com ', 'widodo2019', '465', 'ssl', NULL, 5, 'info@widodoretail.com', 0, 4, 1, 0, 2, 1, 1, 1, 0, 0, ',', '.', 0, 163, 'nulled', 'nulled', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Rp', 0, '-', 0, 5, 1, 'PI', 1000, '', 1, 0, 'AN', 'dompdf');

-- --------------------------------------------------------

--
-- Table structure for table `sma_shop_settings`
--

CREATE TABLE `sma_shop_settings` (
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(55) NOT NULL,
  `description` varchar(160) NOT NULL,
  `warehouse` int(11) NOT NULL,
  `biller` int(11) NOT NULL,
  `about_link` varchar(55) NOT NULL,
  `terms_link` varchar(55) NOT NULL,
  `privacy_link` varchar(55) NOT NULL,
  `contact_link` varchar(55) NOT NULL,
  `payment_text` varchar(100) NOT NULL,
  `follow_text` varchar(100) NOT NULL,
  `facebook` varchar(55) NOT NULL,
  `twitter` varchar(55) DEFAULT NULL,
  `google_plus` varchar(55) DEFAULT NULL,
  `instagram` varchar(55) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `cookie_message` varchar(180) DEFAULT NULL,
  `cookie_link` varchar(55) DEFAULT NULL,
  `slider` text DEFAULT NULL,
  `shipping` int(11) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT 'purchase_code',
  `envato_username` varchar(50) DEFAULT 'envato_username',
  `version` varchar(10) DEFAULT '3.4.25',
  `logo` varchar(55) DEFAULT NULL,
  `bank_details` varchar(255) DEFAULT NULL,
  `products_page` tinyint(1) DEFAULT NULL,
  `hide0` tinyint(1) DEFAULT 0,
  `products_description` varchar(255) DEFAULT NULL,
  `private` tinyint(1) DEFAULT 0,
  `hide_price` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_shop_settings`
--

INSERT INTO `sma_shop_settings` (`shop_id`, `shop_name`, `description`, `warehouse`, `biller`, `about_link`, `terms_link`, `privacy_link`, `contact_link`, `payment_text`, `follow_text`, `facebook`, `twitter`, `google_plus`, `instagram`, `phone`, `email`, `cookie_message`, `cookie_link`, `slider`, `shipping`, `purchase_code`, `envato_username`, `version`, `logo`, `bank_details`, `products_page`, `hide0`, `products_description`, `private`, `hide_price`) VALUES
(1, 'WMEAT STORE', 'Meat Stpre', 1, 1, '', '', '', '', 'We accept Transfer or you can pay with your credit/debit cards.', 'Please click the link below to follow us on social media.', '#', '', '', '', '0817109554', 'wmeat.official@gmail.com', 'We use cookies to improve your experience on our website. By browsing this website, you agree to our use of cookies.', '', '[{\"image\":\"650c214455f4ea72fc32f54d8136ae8b.jpg\",\"link\":\"\",\"caption\":\"\"},{\"image\":\"a655168055a1b372c86241b189032625.jpg\",\"link\":\"\",\"caption\":\"\"},{\"image\":\"3e844c604133e9db316babde53cff511.jpg\",\"link\":\"\",\"caption\":\"\"},{\"link\":\"\",\"caption\":\"\"},{\"link\":\"\",\"caption\":\"\"}]', 0, '', 'envato_username', '2.0.0', 'imageedit_3_2567267278.png', '', 0, 0, 'ada karena dipercaya', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sma_skrill`
--

CREATE TABLE `sma_skrill` (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `account_email` varchar(255) NOT NULL DEFAULT 'testaccount2@moneybookers.com',
  `secret_word` varchar(20) NOT NULL DEFAULT 'mbtest',
  `skrill_currency` varchar(3) NOT NULL DEFAULT 'USD',
  `fixed_charges` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `extra_charges_my` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `extra_charges_other` decimal(25,4) NOT NULL DEFAULT 0.0000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_skrill`
--

INSERT INTO `sma_skrill` (`id`, `active`, `account_email`, `secret_word`, `skrill_currency`, `fixed_charges`, `extra_charges_my`, `extra_charges_other`) VALUES
(1, 0, 'testaccount2@moneybookers.com', 'mbtest', 'USD', 0.0000, 0.0000, 0.0000);

-- --------------------------------------------------------

--
-- Table structure for table `sma_sms_settings`
--

CREATE TABLE `sma_sms_settings` (
  `id` int(11) NOT NULL,
  `auto_send` tinyint(1) DEFAULT NULL,
  `config` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sms_settings`
--

INSERT INTO `sma_sms_settings` (`id`, `auto_send`, `config`) VALUES
(1, NULL, '{\"gateway\":\"Log\",\"Log\":{}');

-- --------------------------------------------------------

--
-- Table structure for table `sma_stock_counts`
--

CREATE TABLE `sma_stock_counts` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `initial_file` varchar(50) NOT NULL,
  `final_file` varchar(50) DEFAULT NULL,
  `brands` varchar(50) DEFAULT NULL,
  `brand_names` varchar(100) DEFAULT NULL,
  `categories` varchar(50) DEFAULT NULL,
  `category_names` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `products` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `differences` int(11) DEFAULT NULL,
  `matches` int(11) DEFAULT NULL,
  `missing` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `finalized` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_stock_counts`
--

INSERT INTO `sma_stock_counts` (`id`, `date`, `reference_no`, `warehouse_id`, `type`, `initial_file`, `final_file`, `brands`, `brand_names`, `categories`, `category_names`, `note`, `products`, `rows`, `differences`, `matches`, `missing`, `created_by`, `updated_by`, `updated_at`, `finalized`) VALUES
(11, '2021-10-30 05:10:00', '', 1, 'full', '9d0e826867737125476b42531ca13685.csv', NULL, '', '', '', '', NULL, 2, 2, NULL, NULL, NULL, 6, NULL, NULL, NULL),
(10, '2021-10-30 05:05:01', '', 1, 'full', '7d49dbb3040e1a2b45aae4c55be3f1d4.csv', 'a5d972c560c31a173869a79e97632eff.csv', '', '', '', '', '', 2, 2, 0, 41, -39, 6, 6, '2021-10-30 12:01:05', 1),
(9, '2021-10-30 05:02:00', '', 1, 'full', 'b4e107ba8a7bd7197ce91a10a3352cb3.csv', NULL, '', '', '', '', NULL, 2, 2, NULL, NULL, NULL, 6, NULL, NULL, NULL),
(7, '2021-10-30 04:51:00', '', 1, 'full', 'b2c5f5473a55ad05be4664ede2ff902e.csv', NULL, '', '', '', '', NULL, 2, 2, NULL, NULL, NULL, 6, NULL, NULL, NULL),
(8, '2021-10-30 04:59:00', '', 1, 'full', '4839620f8d1c4d29cb54e44b665ded16.csv', NULL, '', '', '', '', NULL, 2, 2, NULL, NULL, NULL, 6, NULL, NULL, NULL),
(12, '2021-10-30 05:12:00', '', 1, 'full', '13ebf5cb7208c8da7e943e9ab312ef48.csv', NULL, '', '', '', '', NULL, 11, 11, NULL, NULL, NULL, 6, NULL, NULL, NULL),
(13, '2021-10-30 05:18:13', '', 1, 'full', '0d475ec06ee55f427fb908db5b061d5b.csv', '916be84aaafbdd9914b693723c136314.csv', '', '', '', '', '', 41, 41, 29, 12, 0, 6, 6, '2021-10-30 12:13:18', 1),
(14, '2021-10-30 05:23:41', '', 1, 'full', 'b9e2ec576e187c103859b7f4557e018f.csv', 'c17af4fc2bcfca043d5f539bbcc2a3c2.csv', '', '', '', '', '', 41, 41, 30, 11, 0, 6, 6, '2021-10-30 12:41:23', 1),
(15, '2022-03-28 02:53:00', '', 1, 'full', '9ee9043465204f37d0b9beb8c77f2bae.csv', NULL, '', '', '', '', NULL, 79, 79, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(16, '2022-03-28 04:13:51', '', 1, 'full', 'cdd24d8835ccaa247c43040e4f6290c0.csv', NULL, '', '', '', '', NULL, 79, 79, NULL, NULL, NULL, 6, NULL, NULL, NULL),
(17, '2022-03-28 06:26:00', '', 1, 'full', 'd8bdba5479faa9ea111d784dbbf6c0c7.csv', NULL, '', '', '', '', NULL, 78, 78, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(18, '2022-03-28 07:11:00', '123456', 3, 'partial', '32daeb84ee258c49be7a95f2c042cef4.csv', NULL, '8', 'Sasa', '3', 'Sausage', NULL, 1, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(19, '2022-03-28 07:24:00', '12345', 1, 'partial', '3b049eaa31db6e096daaad280efc430d.csv', NULL, '8', 'Sasa', '3', 'Sausage', NULL, 1, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_stock_count_items`
--

CREATE TABLE `sma_stock_count_items` (
  `id` int(11) NOT NULL,
  `stock_count_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_variant` varchar(55) DEFAULT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `expected` decimal(15,4) NOT NULL,
  `counted` decimal(15,4) NOT NULL,
  `cost` decimal(25,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_stock_count_items`
--

INSERT INTO `sma_stock_count_items` (`id`, `stock_count_id`, `product_id`, `product_code`, `product_name`, `product_variant`, `product_variant_id`, `expected`, `counted`, `cost`) VALUES
(1, 6, 83, 'OLN-001', 'WMeat Daging Rendang 500 gr', '', NULL, 127.0000, 130.0000, 56500.0000),
(2, 13, 70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', '', NULL, 0.0000, 11.0000, 57000.0000),
(3, 13, 71, 'OLN-004', 'WMeat Aus Beef Daging Giling 1 kg', '', NULL, 0.0000, 5.0000, 110000.0000),
(4, 13, 72, 'OLN-009', 'WMeat Aus Beef Striploin Steak 200 gr', '', NULL, 0.0000, 11.0000, 37500.0000),
(5, 13, 73, 'OLN-010', 'WMeat Aus Beef Striploin Steak 400 gr', '', NULL, 0.0000, 12.0000, 69000.0000),
(6, 13, 74, 'OLN-011', 'WMeat Aus Beef Iga Bakar 500 gr', '', NULL, 0.0000, 7.0000, 44000.0000),
(7, 13, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', '', NULL, 0.0000, 10.0000, 84000.0000),
(8, 13, 76, 'OLN-015', 'WMeat Aus Beef All Variant (Tumis/Sop) 500 gr', '', NULL, 0.0000, 10.0000, 37000.0000),
(9, 13, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', '', NULL, 0.0000, 8.0000, 70000.0000),
(10, 13, 80, 'OLN-0290', 'Tenderloin Cube 300 gr', '', NULL, 0.0000, 11.0000, 95000.0000),
(11, 13, 79, 'OLN-032', 'Wmeat Oxtail Super 500 gr', '', NULL, 0.0000, 1.0000, 95000.0000),
(12, 13, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', '', NULL, 0.0000, 10.0000, 63500.0000),
(13, 13, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', '', NULL, 0.0000, 14.0000, 75000.0000),
(14, 13, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', '', NULL, 0.0000, 11.0000, 140000.0000),
(15, 13, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', '', NULL, 0.0000, 1.0000, 68000.0000),
(16, 13, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', '', NULL, 0.0000, 5.0000, 125000.0000),
(17, 13, 46, 'WMS-012', 'WMeat Aus Beef Tulang Sop 1 kg', '', NULL, 0.0000, 3.0000, 0.0000),
(18, 13, 49, 'WMS-015', 'WMeat Aus Beef All Variant Less Fat 500 gr', '', NULL, 0.0000, 2.0000, 0.0000),
(19, 13, 50, 'WMS-016', 'WMeat Aus Beef All Variant Less Fat 1 kg', '', NULL, 0.0000, 3.0000, 0.0000),
(20, 13, 51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', '', NULL, 0.0000, 12.0000, 0.0000),
(21, 13, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', '', NULL, 0.0000, 11.0000, 0.0000),
(22, 13, 55, 'WMS-021', 'WMeat Aus Beef Oxtail Cut 500 gr', '', NULL, 0.0000, 10.0000, 0.0000),
(23, 13, 86, 'WMS-023', 'WMeat Aus Beef Daging Giling 500 gram', '', NULL, 0.0000, 1.0000, 50000.0000),
(24, 13, 58, 'WMS-024', 'WMeat Aus Beef Daging Giling 1 kg', '', NULL, 0.0000, 4.0000, 0.0000),
(25, 13, 59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', '', NULL, 0.0000, 6.0000, 0.0000),
(26, 13, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', '', NULL, 0.0000, 9.0000, 0.0000),
(27, 13, 65, 'WMS-027', 'Wmeat Aus Beef Striploin Steak Bone In 250 gr', '', NULL, 0.0000, 17.0000, 0.0000),
(28, 13, 69, 'WMS-028', 'WMeat Aus Beef Lidah Sapi Slice 500 gr', '', NULL, 0.0000, 1.0000, 65000.0000),
(29, 13, 68, 'WMS-029', 'WMeat Aus Beef Lidah Sapi Slice 250 gr', '', NULL, 0.0000, 16.0000, 0.0000),
(30, 13, 66, 'WMS-030', 'Wmeat Aus Beef Iga Galbi 500 gr', '', NULL, 0.0000, 10.0000, 0.0000),
(31, 14, 70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', '', NULL, 0.0000, 11.0000, 57000.0000),
(32, 14, 71, 'OLN-004', 'WMeat Aus Beef Daging Giling 1 kg', '', NULL, 0.0000, 5.0000, 110000.0000),
(33, 14, 72, 'OLN-009', 'WMeat Aus Beef Striploin Steak 200 gr', '', NULL, 0.0000, 11.0000, 37500.0000),
(34, 14, 73, 'OLN-010', 'WMeat Aus Beef Striploin Steak 400 gr', '', NULL, 0.0000, 12.0000, 69000.0000),
(35, 14, 74, 'OLN-011', 'WMeat Aus Beef Iga Bakar 500 gr', '', NULL, 0.0000, 7.0000, 44000.0000),
(36, 14, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', '', NULL, 0.0000, 10.0000, 84000.0000),
(37, 14, 76, 'OLN-015', 'WMeat Aus Beef All Variant (Tumis/Sop) 500 gr', '', NULL, 0.0000, 10.0000, 37000.0000),
(38, 14, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', '', NULL, 0.0000, 8.0000, 70000.0000),
(39, 14, 80, 'OLN-0290', 'Tenderloin Cube 300 gr', '', NULL, 0.0000, 11.0000, 95000.0000),
(40, 14, 79, 'OLN-032', 'Wmeat Oxtail Super 500 gr', '', NULL, 0.0000, 1.0000, 95000.0000),
(41, 14, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', '', NULL, 0.0000, 10.0000, 63500.0000),
(42, 14, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', '', NULL, 0.0000, 14.0000, 75000.0000),
(43, 14, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', '', NULL, 0.0000, 11.0000, 140000.0000),
(44, 14, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', '', NULL, 0.0000, 1.0000, 68000.0000),
(45, 14, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', '', NULL, 0.0000, 5.0000, 125000.0000),
(46, 14, 46, 'WMS-012', 'WMeat Aus Beef Tulang Sop 1 kg', '', NULL, 0.0000, 3.0000, 0.0000),
(47, 14, 49, 'WMS-015', 'WMeat Aus Beef All Variant Less Fat 500 gr', '', NULL, 0.0000, 2.0000, 0.0000),
(48, 14, 50, 'WMS-016', 'WMeat Aus Beef All Variant Less Fat 1 kg', '', NULL, 0.0000, 3.0000, 0.0000),
(49, 14, 51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', '', NULL, 0.0000, 12.0000, 0.0000),
(50, 14, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', '', NULL, 0.0000, 11.0000, 0.0000),
(51, 14, 55, 'WMS-021', 'WMeat Aus Beef Oxtail Cut 500 gr', '', NULL, 0.0000, 10.0000, 0.0000),
(52, 14, 56, 'WMS-022', 'WMeat Aus Beef Oxtail Cut 1 kg', '', NULL, 0.0000, 14.0000, 0.0000),
(53, 14, 86, 'WMS-023', 'WMeat Aus Beef Daging Giling 500 gram', '', NULL, 0.0000, 1.0000, 50000.0000),
(54, 14, 58, 'WMS-024', 'WMeat Aus Beef Daging Giling 1 kg', '', NULL, 0.0000, 4.0000, 0.0000),
(55, 14, 59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', '', NULL, 0.0000, 6.0000, 0.0000),
(56, 14, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', '', NULL, 0.0000, 9.0000, 0.0000),
(57, 14, 65, 'WMS-027', 'Wmeat Aus Beef Striploin Steak Bone In 250 gr', '', NULL, 0.0000, 17.0000, 0.0000),
(58, 14, 69, 'WMS-028', 'WMeat Aus Beef Lidah Sapi Slice 500 gr', '', NULL, 0.0000, 1.0000, 65000.0000),
(59, 14, 68, 'WMS-029', 'WMeat Aus Beef Lidah Sapi Slice 250 gr', '', NULL, 0.0000, 16.0000, 0.0000),
(60, 14, 66, 'WMS-030', 'Wmeat Aus Beef Iga Galbi 500 gr', '', NULL, 0.0000, 10.0000, 0.0000);

-- --------------------------------------------------------

--
-- Table structure for table `sma_suspended_bills`
--

CREATE TABLE `sma_suspended_bills` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) DEFAULT NULL,
  `count` int(11) NOT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_tax_id` int(11) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `suspend_note` varchar(255) DEFAULT NULL,
  `shipping` decimal(15,4) DEFAULT 0.0000,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_suspended_items`
--

CREATE TABLE `sma_suspended_items` (
  `id` int(11) NOT NULL,
  `suspend_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) NOT NULL,
  `quantity` decimal(15,4) DEFAULT 0.0000,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_tax_rates`
--

CREATE TABLE `sma_tax_rates` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `rate` decimal(12,4) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_transfers`
--

CREATE TABLE `sma_transfers` (
  `id` int(11) NOT NULL,
  `transfer_no` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `from_warehouse_id` int(11) NOT NULL,
  `from_warehouse_code` varchar(55) NOT NULL,
  `from_warehouse_name` varchar(55) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `to_warehouse_code` varchar(55) NOT NULL,
  `to_warehouse_name` varchar(55) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT NULL,
  `grand_total` decimal(25,4) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'pending',
  `shipping` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `attachment` varchar(55) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_transfer_items`
--

CREATE TABLE `sma_transfer_items` (
  `id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `net_unit_cost` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) DEFAULT NULL,
  `quantity_balance` decimal(15,4) NOT NULL,
  `unit_cost` decimal(25,4) DEFAULT NULL,
  `real_unit_cost` decimal(25,4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_units`
--

CREATE TABLE `sma_units` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(55) NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(1) DEFAULT NULL,
  `unit_value` varchar(55) DEFAULT NULL,
  `operation_value` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_units`
--

INSERT INTO `sma_units` (`id`, `code`, `name`, `base_unit`, `operator`, `unit_value`, `operation_value`) VALUES
(21, 'Gram', 'Gram', NULL, NULL, NULL, NULL),
(22, 'KG', 'Kilogram', NULL, NULL, NULL, NULL),
(23, 'PCS', 'PCS', NULL, NULL, NULL, NULL),
(24, 'Ons', 'Ons', NULL, NULL, NULL, NULL),
(25, 'Pack', 'Pack', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_users`
--

CREATE TABLE `sma_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `last_ip_address` varbinary(45) DEFAULT NULL,
  `ip_address` varbinary(45) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(55) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `warehouse_id` int(10) UNSIGNED DEFAULT NULL,
  `biller_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `show_cost` tinyint(1) DEFAULT 0,
  `show_price` tinyint(1) DEFAULT 0,
  `award_points` int(11) DEFAULT 0,
  `view_right` tinyint(1) NOT NULL DEFAULT 0,
  `edit_right` tinyint(1) NOT NULL DEFAULT 0,
  `allow_discount` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_users`
--

INSERT INTO `sma_users` (`id`, `last_ip_address`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `avatar`, `gender`, `group_id`, `warehouse_id`, `biller_id`, `company_id`, `show_cost`, `show_price`, `award_points`, `view_right`, `edit_right`, `allow_discount`) VALUES
(1, 0x3130332e36362e3139382e3432, 0x0000, 'owner', 'a1a91380a8bf75d6792ebb3769baa14487f6b774', NULL, 'owner@tecdiary.com', NULL, NULL, NULL, '094f1a95d80432cae8c46f211e2dbd68cc70dab2', 1351661704, 1648610081, 1, 'Owner', 'Owner', 'WTouch', '012345678', NULL, 'male', 1, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0),
(4, 0x3130332e36362e3139382e3432, 0x31332e31322e31302e31, 'sales', 'b25cad49eaca2f14789cafa0f9a80760bf0f6532', NULL, 'wmeat.shop@gmail.com', NULL, NULL, NULL, NULL, 1588179657, 1588910176, 1, 'sales', 'WMeat', 'WMeat', '123', NULL, 'male', 7, 1, 6, NULL, NULL, NULL, 0, 0, 0, 0),
(6, 0x3130332e36362e3139382e3432, 0x3130332e36362e3139382e3432, 'wmartcipayung', '77ce8ff8770ed5366fc95499f91bfcbdf4b7ab6a', NULL, 'wmartcipayung@widodoretail.com', NULL, NULL, NULL, NULL, 1588574208, 1648609887, 1, 'WMart', 'Manajer', 'WMart Cipayung', '012345678', NULL, 'male', 8, 1, 1, NULL, NULL, 1, 0, 1, 0, 1),
(7, 0x3130332e36362e3139382e3432, 0x3130332e36362e3139382e3432, 'kasir', '18276956dd6b907b52eecf8fef6d55fe423140ec', NULL, 'kasir@wmeat.store', NULL, NULL, NULL, NULL, 1588909335, 1648609964, 1, 'kasir', 'wmeat', 'WMeat', '123456', NULL, 'male', 7, 1, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(9, 0x3131342e3132342e3134312e313731, 0x3134302e3231332e31332e313532, 'kasirwmart', '5cab16eab8190bf284f4358221cd49337e0beb63', NULL, 'kasir-wmart@widodoretail.com', NULL, NULL, NULL, NULL, 1648207356, 1648610153, 1, 'kasirwmart', 'wmart cipayung', 'WMart Cipayung', '012345678', NULL, 'female', 7, 1, 1, NULL, NULL, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sma_user_logins`
--

CREATE TABLE `sma_user_logins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_user_logins`
--

INSERT INTO `sma_user_logins` (`id`, `user_id`, `company_id`, `ip_address`, `login`, `time`) VALUES
(1, 1, NULL, 0x35382e31312e32372e313232, 'owner@tecdiary.com', '2019-10-22 04:21:08'),
(5, 1, NULL, 0x3a3a31, 'owner@tecdiary.com', '2020-04-28 09:21:14'),
(6, 1, NULL, 0x3a3a31, 'owner', '2020-04-29 02:42:58'),
(7, 1, NULL, 0x3a3a31, 'owner', '2020-04-29 04:26:54'),
(8, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 08:08:57'),
(9, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 13:37:27'),
(10, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 14:33:30'),
(11, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 15:22:03'),
(12, 2, NULL, 0x31332e31322e31302e31, 'arie', '2020-04-29 15:33:14'),
(13, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 15:36:34'),
(14, 2, NULL, 0x31332e31322e31302e31, 'arie', '2020-04-29 16:16:26'),
(15, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 16:20:48'),
(16, 2, NULL, 0x31332e31322e31302e31, 'arie', '2020-04-29 16:23:45'),
(17, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 16:24:55'),
(18, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 16:29:01'),
(19, 2, NULL, 0x31332e31322e31302e31, 'arie', '2020-04-29 16:30:56'),
(20, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 16:32:21'),
(21, 2, NULL, 0x31332e31322e31302e31, 'arie', '2020-04-29 16:34:29'),
(22, 2, NULL, 0x31332e31322e31302e31, 'arie', '2020-04-29 16:36:11'),
(23, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 16:40:45'),
(24, 4, NULL, 0x31332e31322e31302e31, 'sales', '2020-04-29 17:01:16'),
(25, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 17:05:43'),
(26, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-30 02:54:26'),
(27, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-30 02:59:20'),
(28, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-30 04:40:19'),
(29, 5, NULL, 0x31332e31322e31302e31, 'anto@wmp-group.co.id', '2020-04-30 04:51:55'),
(30, 5, NULL, 0x31332e31322e31302e31, 'anto@wmp-group.co.id', '2020-04-30 09:56:06'),
(31, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-30 09:59:11'),
(32, 2, NULL, 0x31332e31322e31302e31, 'arie', '2020-04-30 11:15:51'),
(33, 2, NULL, 0x31332e31322e31302e31, 'arie', '2020-04-30 14:39:18'),
(34, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-30 14:44:35'),
(35, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-05-01 05:36:57'),
(36, 1, NULL, 0x3134302e3231332e352e313236, 'owner', '2020-05-02 21:23:20'),
(37, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-04 03:54:50'),
(38, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-04 06:20:21'),
(39, 6, NULL, 0x3130332e36362e3139382e3432, 'manajer', '2020-05-04 06:36:58'),
(40, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-04 08:34:33'),
(41, 1, NULL, 0x3131322e3231352e3230312e3233, 'owner', '2020-05-04 13:50:41'),
(42, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-05 02:40:32'),
(43, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-05 06:57:27'),
(44, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-05 07:15:22'),
(45, 1, NULL, 0x3130332e36362e3139382e3432, 'Owner', '2020-05-05 07:26:34'),
(46, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-06 04:11:35'),
(47, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 03:38:37'),
(48, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 03:44:48'),
(49, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 03:45:42'),
(50, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 03:50:59'),
(51, 4, NULL, 0x3130332e36362e3139382e3432, 'sales', '2020-05-08 03:51:27'),
(52, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 03:51:48'),
(53, 4, NULL, 0x3130332e36362e3139382e3432, 'sales', '2020-05-08 03:52:19'),
(54, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 03:52:42'),
(55, 4, NULL, 0x3130332e36362e3139382e3432, 'sales', '2020-05-08 03:56:16'),
(56, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 08:07:25'),
(57, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 09:22:08'),
(58, 1, NULL, 0x3130332e36362e3139382e3432, 'Owner', '2020-05-08 09:28:52'),
(59, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 09:31:21'),
(60, 8, NULL, 0x3130332e36362e3139382e3432, 'reginasahnita@gmail.com', '2020-05-08 09:33:22'),
(61, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 09:41:31'),
(62, 1, NULL, 0x3230322e38302e3231372e37, 'owner', '2020-05-10 09:49:48'),
(63, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-11 09:00:28'),
(64, 1, NULL, 0x3138302e3234332e3135342e323038, 'owner', '2020-05-12 06:22:35'),
(65, 1, NULL, 0x3138302e3234332e3135342e323038, 'owner', '2020-05-12 08:17:54'),
(66, 1, NULL, 0x3138302e3234332e3135342e323038, 'owner', '2020-05-12 08:37:56'),
(67, 1, NULL, 0x3134302e3231332e312e3532, 'owner', '2020-05-13 10:48:25'),
(68, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-14 04:29:32'),
(69, 1, NULL, 0x3131322e3231352e3230302e313438, 'owner', '2020-05-14 05:07:12'),
(70, 1, NULL, 0x3131322e3231352e3230302e313438, 'owner', '2020-05-14 05:08:05'),
(71, 1, NULL, 0x3131322e3231352e3230302e313438, 'owner', '2020-05-14 05:13:04'),
(72, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-06-05 08:44:30'),
(73, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-06-05 09:29:33'),
(74, 1, NULL, 0x3a3a31, 'owner', '2020-07-26 04:22:47'),
(75, 1, NULL, 0x3a3a31, 'owner', '2020-11-29 02:18:34'),
(76, 1, NULL, 0x3a3a31, 'owner', '2020-12-29 16:47:28'),
(77, 1, NULL, 0x3a3a31, 'owner', '2020-12-30 14:23:56'),
(78, 1, NULL, 0x3a3a31, 'owner', '2021-01-27 11:25:36'),
(79, 1, NULL, 0x3a3a31, 'owner', '2021-02-05 08:45:45'),
(80, 1, NULL, 0x3a3a31, 'owner', '2021-02-06 08:20:45'),
(81, 1, NULL, 0x3a3a31, 'owner', '2021-02-08 08:59:06'),
(82, 1, NULL, 0x3a3a31, 'owner', '2021-02-09 15:45:41'),
(83, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 02:04:57'),
(84, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 02:06:06'),
(85, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 04:29:01'),
(86, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 05:05:57'),
(87, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 05:10:39'),
(88, 6, NULL, 0x3a3a31, 'manajer', '2021-02-10 05:37:55'),
(89, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 07:36:55'),
(90, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 07:40:59'),
(91, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 09:17:53'),
(92, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 11:59:27'),
(93, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 11:59:48'),
(94, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-02-10 12:00:46'),
(95, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-02-10 12:03:59'),
(96, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 12:13:35'),
(97, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-02-10 12:15:10'),
(98, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 12:16:24'),
(99, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 12:20:16'),
(100, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 12:21:02'),
(101, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 12:29:53'),
(102, 1, NULL, 0x3a3a31, 'owner', '2021-02-11 03:36:18'),
(103, 1, NULL, 0x3a3a31, 'owner', '2021-02-11 05:55:53'),
(104, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-02-15 03:31:05'),
(105, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-02-15 09:16:31'),
(106, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-02-16 03:14:37'),
(107, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-02-16 10:19:30'),
(108, 1, NULL, 0x3132352e3136362e39332e313833, 'owner', '2021-10-04 03:15:53'),
(109, 1, NULL, 0x3132352e3136362e39332e313833, 'owner', '2021-10-04 03:30:18'),
(110, 6, NULL, 0x3132352e3136362e39332e313833, 'manajer', '2021-10-04 03:31:01'),
(111, 1, NULL, 0x3132352e3136362e39332e313833, 'owner', '2021-10-04 03:31:29'),
(112, 6, NULL, 0x3131302e3133382e38392e3432, 'manajer', '2021-10-04 03:40:10'),
(113, 6, NULL, 0x3131302e3133382e38392e3432, 'manajer ', '2021-10-04 03:48:54'),
(114, 6, NULL, 0x3131302e3133382e38392e3432, 'manajer', '2021-10-04 03:49:55'),
(115, 1, NULL, 0x3132352e3136362e39332e313833, 'owner', '2021-10-04 06:00:23'),
(116, 6, NULL, 0x33362e38332e3230342e3337, 'manajer', '2021-10-04 06:35:42'),
(117, 1, NULL, 0x3134302e3231332e33332e3531, 'owner', '2021-10-04 06:40:24'),
(118, 6, NULL, 0x3134302e3231332e302e323033, 'manajer ', '2021-10-04 06:55:15'),
(119, 6, NULL, 0x36312e39342e3231342e3832, 'manajer', '2021-10-04 07:24:37'),
(120, 1, NULL, 0x3131302e3133382e39312e313836, 'owner', '2021-10-05 02:41:36'),
(121, 6, NULL, 0x33362e37302e32382e323439, 'manajer', '2021-10-05 02:53:19'),
(122, 6, NULL, 0x33362e37302e32382e323439, 'Manajer', '2021-10-05 06:43:10'),
(123, 1, NULL, 0x3131302e3133382e39312e313836, 'owner', '2021-10-05 06:58:29'),
(124, 6, NULL, 0x3131302e3133382e39312e3131, 'manajer', '2021-10-06 02:02:21'),
(125, 6, NULL, 0x3131302e3133382e38372e3235, 'manajer', '2021-10-06 06:06:10'),
(126, 1, NULL, 0x3131302e3133382e39342e313337, 'owner', '2021-10-06 08:02:50'),
(127, 1, NULL, 0x3131302e3133382e39342e313337, 'owner', '2021-10-06 10:59:11'),
(128, 6, NULL, 0x3131302e3133382e39332e3831, 'manajer', '2021-10-07 01:50:59'),
(129, 1, NULL, 0x3131302e3133382e39332e3831, 'owner', '2021-10-07 03:29:51'),
(130, 1, NULL, 0x33362e38332e3230362e323435, 'owner', '2021-10-07 05:47:24'),
(131, 1, NULL, 0x3131302e3133382e39322e313839, 'owner', '2021-10-08 01:31:29'),
(132, 1, NULL, 0x3131302e3133382e39322e313839, 'owner', '2021-10-08 01:37:58'),
(133, 6, NULL, 0x3132352e3136362e37382e3939, 'manajer', '2021-10-08 03:11:10'),
(134, 6, NULL, 0x3132352e3136362e37382e3939, 'manajer', '2021-10-08 06:15:55'),
(135, 1, NULL, 0x3132352e3136362e37382e3939, 'owner', '2021-10-08 06:54:54'),
(136, 6, NULL, 0x3132352e3136362e37382e3939, 'manajer', '2021-10-08 08:49:12'),
(137, 6, NULL, 0x3131302e3133382e39352e313836, 'manajer', '2021-10-09 05:12:32'),
(138, 6, NULL, 0x3131302e3133382e39322e313539, 'manajer', '2021-10-11 03:01:58'),
(139, 1, NULL, 0x3138302e3235322e33342e313636, 'owner', '2021-10-11 03:09:12'),
(140, 6, NULL, 0x3131302e3133382e39322e313539, 'manajer', '2021-10-11 06:31:28'),
(141, 6, NULL, 0x3131302e3133382e39322e313539, 'Manajer', '2021-10-11 07:15:50'),
(142, 6, NULL, 0x33362e38342e3132392e313134, 'manajer', '2021-10-12 03:21:59'),
(143, 6, NULL, 0x33362e38342e3132392e313134, 'manajer', '2021-10-12 09:29:27'),
(144, 6, NULL, 0x33362e38342e3132392e313134, 'manajer', '2021-10-13 02:47:50'),
(145, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-10-13 03:46:14'),
(146, 1, NULL, 0x3131302e3133382e39332e313437, 'owner', '2021-10-13 10:16:50'),
(147, 6, NULL, 0x3132352e3136312e3138332e323332, 'manajer', '2021-10-14 06:24:36'),
(148, 6, NULL, 0x3131302e3133382e38352e313435, 'manajer', '2021-10-18 02:06:42'),
(149, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-10-18 02:51:57'),
(150, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-10-18 07:28:53'),
(151, 6, NULL, 0x3132352e3136312e3133342e3835, 'manajer', '2021-10-19 02:07:32'),
(152, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-10-19 04:06:20'),
(153, 6, NULL, 0x3132352e3136312e3133342e3835, 'manajer', '2021-10-19 06:16:36'),
(154, 6, NULL, 0x3132352e3136312e3133342e3835, 'manajer', '2021-10-19 06:24:04'),
(155, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-10-19 08:14:18'),
(156, 6, NULL, 0x33362e37372e3139392e313432, 'manajer', '2021-10-21 01:53:10'),
(157, 1, NULL, 0x3138302e3234342e3135392e323233, 'owner', '2021-10-21 02:55:32'),
(158, 6, NULL, 0x33362e37372e3139392e313432, 'manajer', '2021-10-21 07:13:04'),
(159, 6, NULL, 0x3131302e3133382e38342e313537, 'manajer', '2021-10-22 01:52:57'),
(160, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-10-22 02:21:56'),
(161, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-10-22 03:56:07'),
(162, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-10-22 06:25:18'),
(163, 6, NULL, 0x3131302e3133382e38342e313537, 'manajer', '2021-10-22 06:25:25'),
(164, 1, NULL, 0x3130332e3131392e3134312e313030, 'owner', '2021-10-23 03:26:51'),
(165, 1, NULL, 0x3130332e3131392e3134312e313030, 'owner', '2021-10-24 11:01:36'),
(166, 6, NULL, 0x3131302e3133382e38342e3935, 'manajer', '2021-10-25 03:03:06'),
(167, 6, NULL, 0x3131302e3133382e38342e3935, 'manajer', '2021-10-25 07:46:23'),
(168, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-10-26 02:24:43'),
(169, 6, NULL, 0x3132352e3136362e38362e313537, 'manajer', '2021-10-26 02:44:35'),
(170, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-10-26 06:06:17'),
(171, 1, NULL, 0x3132352e3136362e38362e313537, 'owner', '2021-10-26 06:50:06'),
(172, 6, NULL, 0x3131302e3133382e38342e313336, 'manajer', '2021-10-27 02:02:38'),
(173, 6, NULL, 0x36312e39342e36362e3336, 'Manajer', '2021-10-27 03:18:23'),
(174, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-10-27 07:40:42'),
(175, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-10-27 08:58:13'),
(176, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-10-27 09:09:55'),
(177, 6, NULL, 0x36312e39342e36362e3336, 'manajer', '2021-10-27 10:20:46'),
(178, 1, NULL, 0x3131382e39362e37352e313935, 'owner', '2021-10-30 04:06:49'),
(179, 1, NULL, 0x3131382e39362e37352e313935, 'owner', '2021-10-30 04:07:08'),
(180, 6, NULL, 0x3131382e39362e37352e313935, 'manajer', '2021-10-30 04:10:21'),
(181, 6, NULL, 0x3131382e39362e37352e313935, 'manajer', '2021-10-30 04:40:33'),
(182, 6, NULL, 0x3131302e3133382e39342e3732, 'manajer', '2021-11-02 01:50:59'),
(183, 6, NULL, 0x3131302e3133382e39342e3732, 'manajer', '2021-11-02 08:35:32'),
(184, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-02 09:27:58'),
(185, 6, NULL, 0x3132352e3136302e3234302e323038, 'manajer', '2021-11-03 08:58:00'),
(186, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-03 09:39:20'),
(187, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-04 02:46:45'),
(188, 6, NULL, 0x3131302e3133382e38312e313337, 'manajer', '2021-11-04 03:33:41'),
(189, 6, NULL, 0x3131302e3133382e38312e313337, 'manajer', '2021-11-04 10:46:11'),
(190, 6, NULL, 0x36312e39342e34322e3132, 'manajer', '2021-11-05 02:20:15'),
(191, 6, NULL, 0x36312e39342e34322e3132, 'Manajer', '2021-11-05 02:32:08'),
(192, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-05 02:47:45'),
(193, 6, NULL, 0x36312e39342e34322e3132, 'manajer', '2021-11-05 06:10:50'),
(194, 6, NULL, 0x33362e37302e3136382e3430, 'Manajer', '2021-11-05 09:28:19'),
(195, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-08 02:44:14'),
(196, 6, NULL, 0x33362e36392e3231332e313639, 'Manajer', '2021-11-08 03:48:05'),
(197, 6, NULL, 0x33362e36392e3231332e313639, 'manajer', '2021-11-08 04:08:08'),
(198, 6, NULL, 0x33362e36392e3231332e313639, 'manajer', '2021-11-08 06:35:58'),
(199, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-08 06:36:42'),
(200, 1, NULL, 0x3131302e3133382e39302e313839, 'owner', '2021-11-09 02:31:52'),
(201, 1, NULL, 0x3130332e3131392e3134302e313432, 'owner', '2021-11-09 07:34:23'),
(202, 1, NULL, 0x3130332e3131392e3134302e313432, 'owner', '2021-11-09 07:42:41'),
(203, 1, NULL, 0x3130332e3131392e3134302e313432, 'owner', '2021-11-09 07:43:44'),
(204, 1, NULL, 0x3130332e3131392e3134302e313432, 'owner', '2021-11-09 08:21:24'),
(205, 6, NULL, 0x3131382e39362e31382e3838, 'manajer', '2021-11-09 08:27:19'),
(206, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-10 02:19:22'),
(207, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-10 02:34:24'),
(208, 6, NULL, 0x3131302e3133382e38302e313531, 'manajer', '2021-11-10 04:05:06'),
(209, 6, NULL, 0x3131302e3133382e38302e313531, 'manajer', '2021-11-10 06:12:46'),
(210, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-10 06:49:40'),
(211, 6, NULL, 0x3131302e3133382e38302e313531, 'manajer', '2021-11-10 08:59:08'),
(212, 6, NULL, 0x3131302e3133382e38302e313531, 'Manajer', '2021-11-10 08:59:32'),
(213, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-11 02:48:45'),
(214, 6, NULL, 0x3131302e3133382e38302e313531, 'manajer', '2021-11-11 03:52:55'),
(215, 1, NULL, 0x3131302e3133382e38302e313531, 'owner', '2021-11-11 06:57:16'),
(216, 6, NULL, 0x3131302e3133382e38302e313531, 'manajer', '2021-11-11 07:01:20'),
(217, 1, NULL, 0x3131302e3133382e38302e313531, 'owner', '2021-11-11 07:02:00'),
(218, 6, NULL, 0x3131302e3133382e38302e313531, 'manajer', '2021-11-11 07:03:54'),
(219, 6, NULL, 0x3131302e3133382e38302e313531, 'Manajer', '2021-11-11 07:19:05'),
(220, 1, NULL, 0x3131302e3133382e38302e313531, 'owner', '2021-11-11 07:29:44'),
(221, 6, NULL, 0x3131302e3133382e38302e313531, 'manajer', '2021-11-11 07:52:11'),
(222, 1, NULL, 0x3138302e3234342e3136362e313239, 'owner', '2021-11-12 04:00:41'),
(223, 1, NULL, 0x33362e37302e3130372e3939, 'owner', '2021-11-12 04:28:10'),
(224, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-12 07:47:47'),
(225, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-12 08:57:50'),
(226, 1, NULL, 0x33362e37302e3130372e3939, 'owner', '2021-11-13 03:43:47'),
(227, 6, NULL, 0x33362e37302e3130372e3939, 'Manajer', '2021-11-13 04:50:38'),
(228, 1, NULL, 0x3130332e3131392e3134302e323432, 'owner', '2021-11-13 10:56:34'),
(229, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-15 03:28:13'),
(230, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-15 04:18:18'),
(231, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-15 06:40:32'),
(232, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-15 09:42:53'),
(233, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-16 06:06:27'),
(234, 1, NULL, 0x3138302e3234332e31382e3739, 'owner', '2021-11-16 07:15:40'),
(235, 1, NULL, 0x3138302e3234352e392e3438, 'owner', '2021-11-16 10:07:10'),
(236, 1, NULL, 0x3138302e3235322e33372e323533, 'owner', '2021-11-17 03:25:07'),
(237, 1, NULL, 0x3138302e3235322e33372e323533, 'owner', '2021-11-17 06:27:09'),
(238, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-17 06:58:11'),
(239, 1, NULL, 0x3138302e3234342e3231322e3530, 'owner', '2021-11-18 11:04:20'),
(240, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-22 03:17:48'),
(241, 1, NULL, 0x3138302e3234332e3134362e323330, 'owner', '2021-11-22 04:03:18'),
(242, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-22 05:22:00'),
(243, 1, NULL, 0x3131302e3133382e38392e313632, 'owner', '2021-11-23 02:06:27'),
(244, 1, NULL, 0x3132352e3136312e3137342e313533, 'owner', '2021-11-24 02:32:31'),
(245, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-24 06:26:48'),
(246, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-24 08:46:37'),
(247, 1, NULL, 0x33362e36392e3232392e313234, 'owner', '2021-11-25 02:26:06'),
(248, 1, NULL, 0x33362e36392e3232392e313234, 'owner', '2021-11-25 06:43:25'),
(249, 1, NULL, 0x3138302e3234322e3136322e3633, 'owner', '2021-11-26 03:18:52'),
(250, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-26 04:47:32'),
(251, 1, NULL, 0x3138302e3234322e3136322e3633, 'owner', '2021-11-26 07:03:30'),
(252, 1, NULL, 0x3134302e3231332e352e3336, 'owner', '2021-11-27 06:13:27'),
(253, 1, NULL, 0x33362e36392e3232372e313230, 'owner', '2021-11-29 02:25:01'),
(254, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-29 02:27:48'),
(255, 6, NULL, 0x33362e36392e3232372e313230, 'manajer', '2021-11-29 04:54:12'),
(256, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-11-29 08:03:13'),
(257, 6, NULL, 0x33362e36392e3231362e323035, 'manajer', '2021-11-30 01:59:43'),
(258, 6, NULL, 0x3131302e3133382e39302e313734, 'manajer', '2021-11-30 08:02:54'),
(259, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-01 04:27:13'),
(260, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-02 07:16:23'),
(261, 6, NULL, 0x33362e37312e3231362e3335, 'manajer', '2021-12-03 02:32:30'),
(262, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-03 06:34:02'),
(263, 6, NULL, 0x3131382e39362e33312e323333, 'Manajer', '2021-12-06 02:53:23'),
(264, 6, NULL, 0x3131382e39362e33312e323333, 'Manajer', '2021-12-06 02:54:33'),
(265, 6, NULL, 0x3131382e39362e33312e323333, 'manajer', '2021-12-06 02:55:09'),
(266, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-06 06:59:21'),
(267, 6, NULL, 0x3131382e39362e33312e323333, 'manajer', '2021-12-06 07:05:24'),
(268, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-06 07:23:01'),
(269, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-06 07:23:03'),
(270, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-07 02:39:06'),
(271, 6, NULL, 0x3138302e3234342e3132372e3635, 'manajer', '2021-12-07 02:57:32'),
(272, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-07 06:30:01'),
(273, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-07 06:55:08'),
(274, 6, NULL, 0x3138302e3234342e3132372e3635, 'manajer', '2021-12-07 07:17:10'),
(275, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-08 07:03:32'),
(276, 6, NULL, 0x3131302e3133382e3132312e3638, 'manajer', '2021-12-08 07:51:15'),
(277, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-08 08:14:03'),
(278, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-08 10:00:08'),
(279, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-09 03:53:34'),
(280, 6, NULL, 0x3132352e3136362e38362e313032, 'manajer', '2021-12-09 05:53:26'),
(281, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-09 09:29:58'),
(282, 6, NULL, 0x3131302e3133382e39342e313236, 'manajer', '2021-12-10 02:23:41'),
(283, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-10 04:01:41'),
(284, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-10 06:26:39'),
(285, 6, NULL, 0x3131302e3133382e39342e313236, 'manajer', '2021-12-10 06:28:25'),
(286, 6, NULL, 0x3131302e3133382e3132302e3234, 'manajer', '2021-12-13 02:06:47'),
(287, 6, NULL, 0x3131302e3133382e3132302e3234, 'manajer', '2021-12-13 06:06:11'),
(288, 6, NULL, 0x3132352e3136362e3231332e313933, 'manajer', '2021-12-14 03:47:13'),
(289, 6, NULL, 0x3132352e3136362e3231332e313933, 'manajer', '2021-12-14 07:33:28'),
(290, 1, NULL, 0x3131302e3133362e37302e3736, 'owner', '2021-12-15 02:24:58'),
(291, 6, NULL, 0x3131302e3133362e37302e3736, 'manajer', '2021-12-15 02:45:49'),
(292, 1, NULL, 0x3131302e3133362e37302e3736, 'owner', '2021-12-15 04:02:34'),
(293, 6, NULL, 0x3131302e3133362e37302e3736, 'manajer', '2021-12-15 05:33:58'),
(294, 6, NULL, 0x3131302e3133362e37302e3736, 'manajer', '2021-12-15 05:37:10'),
(295, 1, NULL, 0x3131302e3133362e37302e3736, 'owner', '2021-12-15 07:11:04'),
(296, 6, NULL, 0x3138302e3235322e3131322e323231, 'manajer', '2021-12-16 07:59:28'),
(297, 6, NULL, 0x3138302e3235322e3131322e323231, 'manajer', '2021-12-16 08:36:54'),
(298, 6, NULL, 0x3138302e3234342e3136312e313137, 'manajer', '2021-12-17 04:03:13'),
(299, 6, NULL, 0x3138302e3234342e3136312e313137, 'manajer', '2021-12-17 06:30:10'),
(300, 6, NULL, 0x3138302e3235322e3131342e313833, 'manajer', '2021-12-22 02:03:40'),
(301, 6, NULL, 0x3132352e3136302e3133322e313837, 'manajer', '2021-12-23 03:34:55'),
(302, 6, NULL, 0x3132352e3136302e3133322e313837, 'manajer', '2021-12-23 09:09:56'),
(303, 6, NULL, 0x3138302e3235322e3132342e313831, 'manajer', '2021-12-24 02:11:44'),
(304, 6, NULL, 0x3138302e3235322e3132342e313831, 'manajer', '2021-12-24 07:56:05'),
(305, 1, NULL, 0x3134302e3231332e31332e323133, 'owner', '2021-12-26 04:26:00'),
(306, 6, NULL, 0x3138302e3234342e3136342e313035, 'manajer', '2021-12-27 01:55:22'),
(307, 6, NULL, 0x3138302e3234342e3136342e313035, 'manajer', '2021-12-27 03:39:20'),
(308, 6, NULL, 0x3138302e3234342e3136342e313035, 'manajer', '2021-12-27 06:51:59'),
(309, 6, NULL, 0x3138302e3234392e36372e313230, 'manajer', '2021-12-29 09:03:44'),
(310, 6, NULL, 0x3138302e3234332e3137392e3230, 'manajer', '2021-12-30 07:58:35'),
(311, 6, NULL, 0x3138302e3234342e3136352e313632, 'manajer', '2022-01-03 06:54:25'),
(312, 6, NULL, 0x3138302e3234342e3136352e313632, 'manajer', '2022-01-03 06:57:15'),
(313, 6, NULL, 0x3138302e3234342e3136352e313633, 'manajer', '2022-01-04 02:06:19'),
(314, 6, NULL, 0x3138302e3234342e3136352e313633, 'manajer', '2022-01-04 06:07:45'),
(315, 6, NULL, 0x3138302e3235322e3133342e323135, 'manajer', '2022-01-06 01:35:18'),
(316, 1, NULL, 0x3134302e3231332e31312e3433, 'owner', '2022-01-06 05:20:28'),
(317, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-01-06 05:22:42'),
(318, 1, NULL, 0x3134302e3231332e352e32, 'owner', '2022-01-07 06:48:20'),
(319, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-01-07 07:13:53'),
(320, 6, NULL, 0x3138302e3235322e3134312e313633, 'manajer', '2022-01-07 08:37:35'),
(321, 6, NULL, 0x3138302e3235322e3132362e3737, 'manajer', '2022-01-08 02:56:27'),
(322, 1, NULL, 0x3134302e3231332e302e3837, 'owner', '2022-01-10 05:57:22'),
(323, 6, NULL, 0x3138302e3235322e3131352e313733, 'manajer', '2022-01-10 06:34:37'),
(324, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-01-12 07:33:40'),
(325, 6, NULL, 0x3138302e3234342e3136352e313331, 'manajer', '2022-01-14 01:39:18'),
(326, 6, NULL, 0x3138302e3234342e3136352e313331, 'manajer', '2022-01-14 07:07:07'),
(327, 6, NULL, 0x3138302e3234342e3136352e313331, 'manajer', '2022-01-14 07:36:21'),
(328, 6, NULL, 0x3138302e3234342e3136332e313633, 'manajer', '2022-01-18 06:42:36'),
(329, 6, NULL, 0x3138302e3234342e3136372e313737, 'manajer', '2022-01-19 05:34:55'),
(330, 6, NULL, 0x3138302e3234342e3136372e313737, 'manajer', '2022-01-21 02:24:39'),
(331, 6, NULL, 0x3138302e3234342e3136372e313737, 'manajer', '2022-01-21 08:40:29'),
(332, 6, NULL, 0x3138302e3234342e3136352e3739, 'manajer', '2022-01-22 02:31:57'),
(333, 6, NULL, 0x3138302e3234342e3136362e3535, 'manajer', '2022-01-24 02:42:39'),
(334, 6, NULL, 0x3138302e3234342e3136342e313035, 'manajer', '2022-01-25 02:10:18'),
(335, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-01-27 11:01:14'),
(336, 1, NULL, 0x3130332e3131392e3134312e313637, 'owner', '2022-01-30 08:25:50'),
(337, 6, NULL, 0x3138302e3234342e3136352e323436, 'manajer', '2022-02-02 06:20:39'),
(338, 6, NULL, 0x3138302e3235322e3131322e313434, 'manajer', '2022-02-03 06:33:13'),
(339, 6, NULL, 0x3138302e3234342e3136332e3839, 'manajer', '2022-02-04 07:35:39'),
(340, 6, NULL, 0x3138302e3234332e3233372e323435, 'manajer', '2022-02-05 02:40:28'),
(341, 6, NULL, 0x3138302e3234342e3136342e38, 'manajer', '2022-02-07 08:44:15'),
(342, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-02-08 03:09:16'),
(343, 6, NULL, 0x3138302e3235322e3132332e313738, 'manajer', '2022-02-09 03:20:41'),
(344, 6, NULL, 0x3138302e3234332e3234312e3834, 'manajer', '2022-02-10 02:29:06'),
(345, 6, NULL, 0x3138302e3234332e3234312e3834, 'manajer', '2022-02-10 07:26:54'),
(346, 6, NULL, 0x3138302e3234342e3136302e3734, 'manajer', '2022-02-11 03:18:20'),
(347, 6, NULL, 0x3138302e3234342e3136302e3734, 'manajer', '2022-02-11 06:59:15'),
(348, 6, NULL, 0x3138302e3235322e3131322e3838, 'manajer', '2022-02-15 02:20:38'),
(349, 6, NULL, 0x3138302e3235322e3131322e3838, 'manajer', '2022-02-15 06:00:08'),
(350, 6, NULL, 0x3131322e3231352e3233382e313033, 'manajer', '2022-02-16 03:27:38'),
(351, 6, NULL, 0x3131322e3231352e3137312e3538, 'manajer', '2022-02-17 02:41:44'),
(352, 1, NULL, 0x3130332e3231332e3132392e3536, 'owner', '2022-02-18 16:38:05'),
(353, 6, NULL, 0x3138302e3234342e3136362e313830, 'manajer', '2022-02-19 03:30:38'),
(354, 6, NULL, 0x3138302e3234342e3136362e313232, 'manajer', '2022-02-21 02:03:59'),
(355, 6, NULL, 0x3138302e3234342e3136362e313232, 'manajer', '2022-02-21 08:37:41'),
(356, 6, NULL, 0x3138302e3235322e3131382e313932, 'manajer', '2022-02-22 06:39:27'),
(357, 6, NULL, 0x3138302e3235322e3131382e313932, 'manajer', '2022-02-22 09:47:01'),
(358, 6, NULL, 0x3138302e3234342e3136372e3531, 'manajer', '2022-02-23 07:38:52'),
(359, 6, NULL, 0x3138302e3234342e3136342e3339, 'manajer', '2022-02-24 02:33:08'),
(360, 6, NULL, 0x3138302e3234342e3136372e313935, 'manajer', '2022-02-25 08:26:13'),
(361, 1, NULL, 0x3138302e3234342e3136322e323033, 'owner', '2022-03-02 11:38:45'),
(362, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-15 09:33:51'),
(363, 6, NULL, 0x3131382e39362e34342e313939, 'manajer', '2022-03-16 06:38:44'),
(364, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-17 03:19:41'),
(365, 6, NULL, 0x3138302e3235322e3132382e313034, 'manajer', '2022-03-21 03:20:10'),
(366, 1, NULL, 0x3132372e302e302e31, 'owner', '2022-03-21 07:48:51'),
(367, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-22 03:25:34'),
(368, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-22 03:27:10'),
(369, 1, NULL, 0x3138302e3234342e3136352e3636, 'owner', '2022-03-22 07:05:44'),
(370, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-23 02:28:28'),
(371, 1, NULL, 0x3138302e3234342e3136352e3533, 'owner', '2022-03-24 01:58:51'),
(372, 1, NULL, 0x3138302e3234342e3136352e3533, 'owner', '2022-03-24 02:08:18'),
(373, 1, NULL, 0x3138302e3234342e3136352e3533, 'owner', '2022-03-24 02:10:21'),
(374, 1, NULL, 0x3138302e3234342e3136352e3533, 'owner', '2022-03-24 02:21:35'),
(375, 6, NULL, 0x3138302e3234342e3136352e3533, 'manajer', '2022-03-24 02:25:46'),
(376, 1, NULL, 0x3138302e3234342e3136352e3533, 'owner', '2022-03-24 02:26:09'),
(377, 1, NULL, 0x3138302e3234342e3136352e3533, 'owner', '2022-03-24 02:30:48'),
(378, 1, NULL, 0x3138302e3234342e3136352e3533, 'owner', '2022-03-24 02:43:20'),
(379, 1, NULL, 0x3138302e3234342e3136352e3533, 'owner', '2022-03-24 02:54:45'),
(380, 6, NULL, 0x3138302e3234342e3136352e3533, 'manajer', '2022-03-24 02:56:45'),
(381, 1, NULL, 0x3138302e3234342e3136352e3533, 'owner', '2022-03-24 03:05:23'),
(382, 1, NULL, 0x3138302e3234342e3136352e3533, 'owner', '2022-03-24 03:10:05'),
(383, 6, NULL, 0x3138302e3234342e3136352e3533, 'manajer', '2022-03-24 03:18:31'),
(384, 6, NULL, 0x3138302e3234342e3136352e3533, 'manajer', '2022-03-24 03:20:42'),
(385, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-24 10:41:32'),
(386, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-24 10:49:54'),
(387, 6, NULL, 0x3130332e36362e3139382e3432, 'wmartcipayung', '2022-03-24 11:59:39'),
(388, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-24 12:00:06'),
(389, 6, NULL, 0x3130332e36362e3139382e3432, 'wmartcipayung', '2022-03-24 12:04:24'),
(390, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-24 12:16:44'),
(391, 6, NULL, 0x3130332e36362e3139382e3432, 'wmartcipayung', '2022-03-25 02:36:03'),
(392, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-25 02:40:05'),
(393, 6, NULL, 0x3130332e36362e3139382e3432, 'wmartcipayung', '2022-03-25 02:40:54'),
(394, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-25 02:48:21'),
(395, 1, NULL, 0x3138302e3235322e3133322e313934, 'owner', '2022-03-25 03:10:05'),
(396, 6, NULL, 0x3130332e36362e3139382e3432, 'wmartcipayung', '2022-03-25 03:22:48'),
(397, 6, NULL, 0x3134302e3231332e31332e313532, 'wmartcipayung', '2022-03-25 04:47:07'),
(398, 1, NULL, 0x3134302e3231332e31332e313532, 'owner', '2022-03-25 05:48:05'),
(399, 1, NULL, 0x3134302e3231332e31332e313532, 'owner', '2022-03-25 05:53:33'),
(400, 6, NULL, 0x3134302e3231332e31332e313532, 'wmartcipayung', '2022-03-25 06:54:21'),
(401, 1, NULL, 0x3134302e3231332e31332e313532, 'owner', '2022-03-25 06:54:50'),
(402, 6, NULL, 0x3134302e3231332e31332e313532, 'wmartcipayung', '2022-03-25 07:12:58'),
(403, 6, NULL, 0x3134302e3231332e31332e313532, 'wmartcipayung', '2022-03-25 07:14:58'),
(404, 1, NULL, 0x3134302e3231332e31332e313532, 'owner', '2022-03-25 07:15:19'),
(405, 6, NULL, 0x3134302e3231332e31332e313532, 'wmartcipayung', '2022-03-25 07:51:20'),
(406, 1, NULL, 0x3134302e3231332e31332e313532, 'owner', '2022-03-25 08:21:16'),
(407, 6, NULL, 0x3134302e3231332e31332e313532, 'wmartcipayung', '2022-03-25 08:27:05'),
(408, 1, NULL, 0x3134302e3231332e31332e313532, 'owner', '2022-03-25 08:28:30'),
(409, 6, NULL, 0x3134302e3231332e31332e313532, 'wmartcipayung', '2022-03-25 08:40:22'),
(410, 1, NULL, 0x3134302e3231332e31332e313532, 'owner', '2022-03-25 08:43:07'),
(411, 6, NULL, 0x3134302e3231332e31332e313532, 'wmartcipayung', '2022-03-25 08:48:44'),
(412, 6, NULL, 0x3134302e3231332e31332e313532, 'wmartcipayung', '2022-03-25 08:52:22'),
(413, 1, NULL, 0x3134302e3231332e31332e313532, 'owner', '2022-03-25 08:52:31'),
(414, 6, NULL, 0x3134302e3231332e31332e313532, 'wmartcipayung', '2022-03-25 08:53:27'),
(415, 1, NULL, 0x3134302e3231332e31332e313532, 'owner', '2022-03-25 08:54:13'),
(416, 6, NULL, 0x3134302e3231332e31312e3633, 'wmartcipayung', '2022-03-25 09:17:11'),
(417, 1, NULL, 0x3131342e3132342e3134352e313533, 'owner', '2022-03-25 10:18:28'),
(418, 6, NULL, 0x3131342e3132342e3233372e37, 'wmartcipayung', '2022-03-25 10:22:02'),
(419, 6, NULL, 0x3131342e3132342e3137372e313132, 'wmartcipayung', '2022-03-25 10:33:06'),
(420, 6, NULL, 0x3131342e3132342e3137372e313132, 'wmartcipayung', '2022-03-25 10:37:16'),
(421, 1, NULL, 0x3134302e3231332e31332e313532, 'Owner', '2022-03-25 10:45:21'),
(422, 1, NULL, 0x3131342e3132342e3137372e313132, 'owner', '2022-03-25 10:45:29'),
(423, 6, NULL, 0x3131342e3132342e3137372e313132, 'wmartcipayung', '2022-03-25 10:46:53'),
(424, 1, NULL, 0x3131342e3132342e3137372e313132, 'owner', '2022-03-25 10:47:48'),
(425, 6, NULL, 0x3131342e3132342e3137372e313132, 'wmartcipayung', '2022-03-25 10:52:54'),
(426, 1, NULL, 0x3131342e3132342e3137372e313132, 'owner', '2022-03-25 10:53:53'),
(427, 6, NULL, 0x3131342e3132342e3137372e313132, 'wmartcipayung', '2022-03-25 11:02:19'),
(428, 1, NULL, 0x3134302e3231332e31332e313532, 'owner', '2022-03-25 11:15:28'),
(429, 1, NULL, 0x3134302e3231332e31332e313532, 'owner', '2022-03-25 11:20:40'),
(430, 1, NULL, 0x3134302e3231332e31332e313532, 'owner', '2022-03-25 11:23:05'),
(431, 9, NULL, 0x3134302e3231332e31332e313532, 'kasirwmart', '2022-03-25 11:23:38'),
(432, 1, NULL, 0x3134302e3231332e31332e313532, 'owner', '2022-03-25 11:23:53'),
(433, 9, NULL, 0x3134302e3231332e31332e313532, 'kasirwmart', '2022-03-25 11:25:48'),
(434, 1, NULL, 0x3134302e3231332e31332e313532, 'owner', '2022-03-25 11:26:28'),
(435, 9, NULL, 0x3134302e3231332e31332e313532, 'kasirwmart', '2022-03-25 11:27:34'),
(436, 1, NULL, 0x3134302e3231332e31332e313532, 'owner', '2022-03-25 11:31:18'),
(437, 1, NULL, 0x3131342e3132342e3137372e313132, 'owner', '2022-03-25 11:55:25'),
(438, 6, NULL, 0x3131342e3132342e3134332e3835, 'wmartcipayung', '2022-03-25 12:05:37'),
(439, 6, NULL, 0x3131342e3132342e3137372e313132, 'wmartcipayung', '2022-03-25 14:35:56'),
(440, 1, NULL, 0x3134302e3231332e31332e313538, 'owner', '2022-03-25 14:59:08'),
(441, 1, NULL, 0x3131342e3132342e3137382e323239, 'owner', '2022-03-25 15:06:40'),
(442, 6, NULL, 0x3134302e3231332e31332e313538, 'wmartcipayung', '2022-03-25 15:21:19'),
(443, 1, NULL, 0x3134302e3231332e31312e3436, 'owner', '2022-03-25 15:26:06'),
(444, 1, NULL, 0x3131342e3132342e3137382e323239, 'owner', '2022-03-25 15:26:24'),
(445, 6, NULL, 0x3134302e3231332e31312e3436, 'wmartcipayung', '2022-03-25 15:41:07'),
(446, 1, NULL, 0x3134302e3231332e31332e313538, 'owner', '2022-03-25 15:42:37'),
(447, 6, NULL, 0x3131342e3132342e3137382e323239, 'wmartcipayung', '2022-03-25 15:44:09'),
(448, 1, NULL, 0x3131342e3132342e3137382e323239, 'owner', '2022-03-25 15:44:51'),
(449, 1, NULL, 0x3130332e3133382e34392e313031, 'owner', '2022-03-25 17:41:10'),
(450, 1, NULL, 0x3130332e3133382e34392e313230, 'owner', '2022-03-25 23:43:56'),
(451, 6, NULL, 0x3130332e3231332e3132382e313732, 'wmartcipayung', '2022-03-26 01:34:59'),
(452, 1, NULL, 0x3130332e3231332e3132382e313732, 'owner', '2022-03-26 01:42:12'),
(453, 6, NULL, 0x3130332e3231332e3132382e313732, 'wmartcipayung', '2022-03-26 01:43:35'),
(454, 6, NULL, 0x3131342e3132342e3138302e323530, 'wmartcipayung', '2022-03-26 02:40:32'),
(455, 1, NULL, 0x3131342e3132342e3134382e3930, 'owner', '2022-03-26 02:48:38'),
(456, 6, NULL, 0x3131342e3132342e3134382e3930, 'wmartcipayung', '2022-03-26 02:49:57'),
(457, 1, NULL, 0x3131342e3132342e3134382e3930, 'owner', '2022-03-26 02:54:13'),
(458, 6, NULL, 0x3131342e3132342e3134382e3930, 'wmartcipayung', '2022-03-26 02:55:10'),
(459, 1, NULL, 0x3131342e3132342e3234352e313533, 'owner', '2022-03-26 04:07:24'),
(460, 6, NULL, 0x3131342e3132342e3234352e313533, 'wmartcipayung', '2022-03-26 04:18:59'),
(461, 1, NULL, 0x3131342e3132342e3234352e313533, 'owner', '2022-03-26 04:35:53'),
(462, 1, NULL, 0x3134302e3231332e392e3834, 'owner', '2022-03-26 05:09:03'),
(463, 6, NULL, 0x3131342e3132342e3231332e313532, 'wmartcipayung', '2022-03-26 05:50:40'),
(464, 1, NULL, 0x3131342e3132342e3231332e313532, 'owner', '2022-03-26 06:08:16'),
(465, 6, NULL, 0x3131342e3132342e3231332e313532, 'wmartcipayung', '2022-03-26 06:19:29'),
(466, 6, NULL, 0x3131342e3132342e3234342e313835, 'wmartcipayung', '2022-03-26 06:43:11'),
(467, 1, NULL, 0x3131342e3132342e3234342e313835, 'owner', '2022-03-26 06:43:40'),
(468, 6, NULL, 0x3131342e3132342e3234342e313835, 'wmartcipayung', '2022-03-26 06:46:28'),
(469, 6, NULL, 0x3131342e3132342e3234342e313835, 'wmartcipayung', '2022-03-26 06:48:18'),
(470, 1, NULL, 0x3131342e3132342e3139332e3430, 'owner', '2022-03-26 07:15:39'),
(471, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-28 01:42:05'),
(472, 6, NULL, 0x3131342e3132342e3138312e3939, 'wmartcipayung', '2022-03-28 02:13:03'),
(473, 1, NULL, 0x3138302e3234342e3136342e313131, 'owner', '2022-03-28 02:24:08'),
(474, 6, NULL, 0x3131342e3132342e3136312e3531, 'wmartcipayung', '2022-03-28 02:57:30'),
(475, 1, NULL, 0x3131342e3132342e3136312e3531, 'owner', '2022-03-28 02:58:07'),
(476, 6, NULL, 0x3131342e3132342e3138312e3939, 'wmartcipayung', '2022-03-28 03:28:22'),
(477, 1, NULL, 0x3131342e3132342e3138312e3939, 'owner', '2022-03-28 03:46:13'),
(478, 6, NULL, 0x3131342e3132342e3138312e3939, 'wmartcipayung', '2022-03-28 03:49:02'),
(479, 1, NULL, 0x3131342e3132342e3138312e3939, 'owner', '2022-03-28 04:52:57'),
(480, 6, NULL, 0x3131342e3132342e3138312e3939, 'wmartcipayung', '2022-03-28 05:18:11'),
(481, 1, NULL, 0x3131342e3132342e3138312e3939, 'owner', '2022-03-28 06:23:34'),
(482, 6, NULL, 0x3131342e3132342e3138312e3939, 'wmartcipayung', '2022-03-28 07:16:52'),
(483, 1, NULL, 0x3131342e3132342e3137352e323432, 'owner', '2022-03-28 08:00:47'),
(484, 6, NULL, 0x3131342e3132342e3137352e323432, 'wmartcipayung', '2022-03-28 08:02:36'),
(485, 1, NULL, 0x3131342e3132342e3137352e323432, 'owner', '2022-03-28 08:03:17'),
(486, 6, NULL, 0x3131342e3132342e3137352e323432, 'wmartcipayung', '2022-03-28 08:04:04'),
(487, 1, NULL, 0x3131342e3132342e3137352e323432, 'owner', '2022-03-28 08:06:29'),
(488, 6, NULL, 0x3131342e3132342e3137352e323432, 'wmartcipayung', '2022-03-28 08:06:58'),
(489, 6, NULL, 0x3131342e3132342e3138382e313331, 'wmartcipayung', '2022-03-28 08:46:03'),
(490, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-28 09:03:21'),
(491, 9, NULL, 0x3130332e36362e3139382e3432, 'kasirwmart', '2022-03-28 09:03:33'),
(492, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-28 09:07:44'),
(493, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-28 09:08:27'),
(494, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-28 09:40:37'),
(495, 6, NULL, 0x3130332e36362e3139382e3432, 'wmartcipayung', '2022-03-28 10:14:00'),
(496, 6, NULL, 0x3131342e3132342e3138312e3939, 'wmartcipayung', '2022-03-28 10:29:22'),
(497, 6, NULL, 0x3138302e3234342e3136352e313434, 'wmartcipayung', '2022-03-28 15:54:14'),
(498, 6, NULL, 0x3138302e3234342e3136352e313434, 'wmartcipayung', '2022-03-29 00:06:58'),
(499, 6, NULL, 0x3131342e3132342e3234332e313431, 'wmartcipayung', '2022-03-29 01:22:01'),
(500, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-29 02:41:06'),
(501, 1, NULL, 0x3134302e3231332e31352e3531, 'owner', '2022-03-29 03:54:46'),
(502, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-29 06:08:27'),
(503, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-29 07:26:48'),
(504, 6, NULL, 0x3131342e3132342e3234322e313536, 'wmartcipayung', '2022-03-29 07:53:54'),
(505, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-29 08:28:36'),
(506, 6, NULL, 0x3130332e36362e3139382e3432, 'wmartcipayung', '2022-03-29 08:34:31'),
(507, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-29 09:10:39'),
(508, 6, NULL, 0x3131352e3137382e3230302e3830, 'wmartcipayung', '2022-03-29 09:31:32'),
(509, 6, NULL, 0x3130332e36362e3139382e3432, 'wmartcipayung', '2022-03-29 09:31:34'),
(510, 6, NULL, 0x3131352e3137382e3230302e3830, 'wmartcipayung', '2022-03-29 09:58:48'),
(511, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-29 10:00:42'),
(512, 6, NULL, 0x3130332e36362e3139382e3432, 'wmartcipayung', '2022-03-29 10:15:05'),
(513, 1, NULL, 0x3131352e3137382e3230302e3830, 'owner', '2022-03-29 10:23:00'),
(514, 1, NULL, 0x3131352e3137382e3230302e3830, 'owner', '2022-03-29 10:25:37'),
(515, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-29 10:26:00'),
(516, 7, NULL, 0x3131352e3137382e3230302e3830, 'kasir', '2022-03-29 10:26:51'),
(517, 1, NULL, 0x3131352e3137382e3230302e3830, 'owner', '2022-03-29 10:28:23'),
(518, 1, NULL, 0x3132372e302e302e31, 'owner', '2022-03-29 15:14:41'),
(519, 6, NULL, 0x3132372e302e302e31, 'wmartcipayung', '2022-03-29 16:04:48'),
(520, 6, NULL, 0x3130332e3133382e34392e313032, 'wmartcipayung', '2022-03-29 16:11:25'),
(521, 1, NULL, 0x3130332e3133382e34392e3934, 'owner', '2022-03-29 17:16:08'),
(522, 1, NULL, 0x3130332e3231332e3132392e313438, 'owner', '2022-03-29 23:43:52'),
(523, 9, NULL, 0x3131342e3132342e3134312e313731, 'kasirwmart', '2022-03-30 01:13:17'),
(524, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-30 02:19:11'),
(525, 6, NULL, 0x3130332e38372e38362e313535, 'wmartcipayung', '2022-03-30 02:30:22'),
(526, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-30 03:11:21'),
(527, 6, NULL, 0x3130332e36362e3139382e3432, 'wmartcipayung', '2022-03-30 03:11:27'),
(528, 7, NULL, 0x3130332e36362e3139382e3432, 'kasir', '2022-03-30 03:12:44'),
(529, 9, NULL, 0x3130332e36362e3139382e3432, 'kasirwmart', '2022-03-30 03:12:49'),
(530, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-03-30 03:14:41'),
(531, 9, NULL, 0x3131342e3132342e3134312e313731, 'kasirwmart', '2022-03-30 03:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `sma_variants`
--

CREATE TABLE `sma_variants` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_variants`
--

INSERT INTO `sma_variants` (`id`, `name`) VALUES
(1, 'size 300'),
(17, 'size 1 KG'),
(15, 'size 800'),
(16, 'size 500'),
(18, '500 GR'),
(19, 'size 250'),
(20, 'size 1,2'),
(21, 'size 2'),
(22, 'Rasa Keju'),
(23, 'Strawberry'),
(24, 'Rasa Ayam'),
(25, 'Rasa Strawberry'),
(26, 'Rasa Sapi');

-- --------------------------------------------------------

--
-- Table structure for table `sma_warehouses`
--

CREATE TABLE `sma_warehouses` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `map` varchar(255) DEFAULT NULL,
  `phone` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `price_group_id` int(11) DEFAULT NULL,
  `whub_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_warehouses`
--

INSERT INTO `sma_warehouses` (`id`, `code`, `name`, `address`, `map`, `phone`, `email`, `price_group_id`, `whub_id`) VALUES
(1, 'WM001', 'WMart Cipayung', '<p>Jl. Bina Marga No.1A, RW.5, Ceger, Kec. Cipayung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13840</p>', '0e56f91c258e720afff292f8670e6ca6.png', '0817109554', 'wmartcipayung@widodoretail.com', 3, NULL),
(3, 'WHub001', 'WHub Cilangkap', '<p>Jl. Raya Cilangkap No.58, RT.7/RW.3, Cipayung, Kec. Cipayung, Jakarta, Daerah Khusus Ibukota Jakarta 13870</p>', NULL, '', '', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_warehouses_products`
--

CREATE TABLE `sma_warehouses_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `rack` varchar(55) DEFAULT NULL,
  `avg_cost` decimal(25,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_warehouses_products`
--

INSERT INTO `sma_warehouses_products` (`id`, `product_id`, `warehouse_id`, `quantity`, `rack`, `avg_cost`) VALUES
(115, 93, 1, 0.0000, NULL, 50000.0000),
(144, 86, 3, 0.0000, NULL, 0.0000),
(143, 85, 3, 0.0000, NULL, 0.0000),
(140, 96, 3, 0.0000, NULL, 0.0000),
(141, 83, 3, 0.0000, NULL, 0.0000),
(142, 84, 3, 0.0000, NULL, 0.0000),
(128, 130, 1, 55.0000, NULL, 6500.0000),
(107, 86, 1, 10.0000, NULL, 42500.0000),
(130, 128, 1, 30.0000, NULL, 0.0000),
(131, 128, 3, 0.0000, NULL, 0.0000),
(132, 129, 1, 11.0000, NULL, 22000.0000),
(133, 129, 3, 0.0000, NULL, 0.0000),
(134, 131, 1, 18.0000, NULL, 9000.0000),
(135, 131, 3, 0.0000, NULL, 0.0000),
(255, 150, 3, 0.0000, NULL, 0.0000),
(254, 150, 1, 58.0000, NULL, 7902.0000),
(138, 95, 1, 0.0000, NULL, 0.0000),
(94, 78, 1, 0.0000, NULL, 63500.0000),
(93, 79, 1, 0.0000, NULL, 126818.1818),
(92, 80, 1, 0.0000, NULL, 95000.0000),
(91, 91, 1, 7.0000, NULL, 36900.0000),
(89, 89, 1, 8.0000, NULL, 36900.0000),
(88, 77, 1, 0.0000, NULL, 70000.0000),
(87, 76, 1, 31.0000, NULL, 37000.0000),
(86, 88, 1, 9.0000, NULL, 33500.0000),
(85, 87, 1, 0.0000, NULL, 25000.0000),
(84, 75, 1, 0.0000, NULL, 95000.0000),
(83, 74, 1, 0.0000, NULL, 44000.0000),
(82, 73, 1, 0.0000, NULL, 83358.9744),
(145, 87, 3, 0.0000, NULL, 0.0000),
(80, 85, 1, 10.0000, NULL, 56000.0000),
(79, 84, 1, 0.0000, NULL, 35500.0000),
(146, 88, 3, 0.0000, NULL, 0.0000),
(139, 95, 3, 0.0000, NULL, 0.0000),
(76, 82, 1, 0.0000, NULL, 88000.0000),
(129, 130, 3, 0.0000, NULL, 0.0000),
(74, 83, 1, 10.0000, NULL, 43500.0000),
(116, 94, 1, 9.0000, NULL, 37900.0000),
(118, 96, 1, 0.0000, NULL, 0.0000),
(119, 97, 1, 31.0000, NULL, 0.0000),
(120, 98, 1, 0.0000, NULL, 0.0000),
(121, 99, 1, 20.0000, NULL, 88000.0000),
(122, 100, 1, 20.0000, NULL, 0.0000),
(123, 101, 1, 37.0000, NULL, 90000.0000),
(150, 122, 3, 0.0000, NULL, 0.0000),
(149, 122, 1, 20.0000, NULL, 0.0000),
(148, 121, 3, 0.0000, NULL, 0.0000),
(147, 121, 1, 20.0000, NULL, 53000.0000),
(151, 123, 1, 0.0000, NULL, 0.0000),
(152, 123, 3, 0.0000, NULL, 0.0000),
(153, 124, 1, 0.0000, NULL, 0.0000),
(154, 124, 3, 0.0000, NULL, 0.0000),
(155, 125, 1, 0.0000, NULL, 0.0000),
(156, 125, 3, 0.0000, NULL, 0.0000),
(157, 126, 1, 0.0000, NULL, 0.0000),
(158, 126, 3, 0.0000, NULL, 0.0000),
(159, 98, 3, 0.0000, NULL, 0.0000),
(160, 97, 3, 0.0000, NULL, 0.0000),
(161, 89, 3, 0.0000, NULL, 0.0000),
(163, 91, 3, 0.0000, NULL, 0.0000),
(164, 92, 1, 0.0000, NULL, 0.0000),
(165, 92, 3, 0.0000, NULL, 0.0000),
(166, 93, 3, 0.0000, NULL, 0.0000),
(167, 94, 3, 0.0000, NULL, 0.0000),
(168, 73, 3, 0.0000, NULL, 0.0000),
(169, 74, 3, 0.0000, NULL, 0.0000),
(170, 75, 3, 0.0000, NULL, 0.0000),
(171, 76, 3, 0.0000, NULL, 0.0000),
(172, 77, 3, 0.0000, NULL, 0.0000),
(173, 78, 3, 0.0000, NULL, 0.0000),
(174, 79, 3, 0.0000, NULL, 0.0000),
(175, 80, 3, 0.0000, NULL, 0.0000),
(176, 81, 1, 0.0000, NULL, 0.0000),
(177, 81, 3, 0.0000, NULL, 0.0000),
(178, 82, 3, 0.0000, NULL, 0.0000),
(179, 117, 1, 0.0000, NULL, 0.0000),
(180, 117, 3, 0.0000, NULL, 0.0000),
(181, 99, 3, 0.0000, NULL, 0.0000),
(182, 100, 3, 0.0000, NULL, 0.0000),
(183, 101, 3, 0.0000, NULL, 0.0000),
(184, 102, 1, 37.0000, NULL, 0.0000),
(185, 102, 3, 0.0000, NULL, 0.0000),
(186, 103, 1, 33.0000, NULL, 88000.0000),
(187, 103, 3, 0.0000, NULL, 0.0000),
(188, 104, 1, 33.0000, NULL, 0.0000),
(189, 104, 3, 0.0000, NULL, 0.0000),
(190, 105, 1, 0.0000, NULL, 0.0000),
(191, 105, 3, 0.0000, NULL, 0.0000),
(192, 106, 1, 0.0000, NULL, 0.0000),
(193, 106, 3, 0.0000, NULL, 0.0000),
(194, 107, 1, 28.0000, NULL, 58000.0000),
(195, 107, 3, 0.0000, NULL, 0.0000),
(196, 108, 1, 28.0000, NULL, 0.0000),
(197, 108, 3, 0.0000, NULL, 0.0000),
(198, 109, 1, 20.0000, NULL, 53000.0000),
(199, 109, 3, 0.0000, NULL, 0.0000),
(200, 110, 1, 20.0000, NULL, 0.0000),
(201, 110, 3, 0.0000, NULL, 0.0000),
(202, 111, 1, 31.0000, NULL, 133000.0000),
(203, 111, 3, 0.0000, NULL, 0.0000),
(204, 112, 1, 31.0000, NULL, 0.0000),
(205, 112, 3, 0.0000, NULL, 0.0000),
(206, 113, 1, 9.0000, NULL, 63000.0000),
(207, 113, 3, 0.0000, NULL, 0.0000),
(208, 114, 1, 9.0000, NULL, 0.0000),
(209, 114, 3, 0.0000, NULL, 0.0000),
(210, 115, 1, 38.0000, NULL, 51000.0000),
(211, 115, 3, 0.0000, NULL, 0.0000),
(212, 116, 1, 0.0000, NULL, 0.0000),
(213, 116, 3, 0.0000, NULL, 0.0000),
(214, 118, 1, 20.0000, NULL, 0.0000),
(215, 118, 3, 0.0000, NULL, 0.0000),
(216, 119, 1, 20.0000, NULL, 43000.0000),
(217, 119, 3, 0.0000, NULL, 0.0000),
(218, 120, 1, 5.0000, NULL, 81000.0000),
(219, 120, 3, 0.0000, NULL, 0.0000),
(220, 133, 1, 24.0000, NULL, 8300.0000),
(221, 133, 3, 0.0000, NULL, 8300.0000),
(222, 134, 1, 39.5250, NULL, 20000.0000),
(223, 134, 3, 0.0000, NULL, 0.0000),
(224, 135, 1, 36.0000, NULL, 25512.0000),
(225, 135, 3, 0.0000, NULL, 0.0000),
(226, 136, 1, 22.0000, NULL, 10205.0000),
(227, 136, 3, 0.0000, NULL, 0.0000),
(228, 137, 1, 16.0000, NULL, 10205.0000),
(229, 137, 3, 0.0000, NULL, 0.0000),
(230, 138, 1, 8.0000, NULL, 10205.0000),
(231, 138, 3, 0.0000, NULL, 0.0000),
(232, 139, 1, 8.0000, NULL, 10205.0000),
(233, 139, 3, 0.0000, NULL, 0.0000),
(234, 140, 1, 11.0000, NULL, 10205.0000),
(235, 140, 3, 0.0000, NULL, 0.0000),
(236, 141, 1, 39.0000, NULL, 38380.0000),
(237, 141, 3, 0.0000, NULL, 0.0000),
(238, 142, 1, 8.0000, NULL, 0.0000),
(239, 142, 3, 0.0000, NULL, 0.0000),
(240, 143, 1, 9.0000, NULL, 0.0000),
(241, 143, 3, 0.0000, NULL, 0.0000),
(242, 144, 1, 9.0000, NULL, 0.0000),
(243, 144, 3, 0.0000, NULL, 0.0000),
(244, 145, 1, 5.0000, NULL, 0.0000),
(245, 145, 3, 29.0000, NULL, 0.0000),
(246, 146, 1, 17.0000, NULL, 7902.0000),
(247, 146, 3, 0.0000, NULL, 0.0000),
(248, 147, 1, 12.0000, NULL, 14223.0000),
(249, 147, 3, 0.0000, NULL, 0.0000),
(250, 148, 1, 50.0000, NULL, 34768.0000),
(251, 148, 3, 0.0000, NULL, 0.0000),
(252, 149, 1, 9.0000, NULL, 34768.0000),
(253, 149, 3, 0.0000, NULL, 0.0000),
(256, 151, 1, 23.0000, NULL, 54000.0000),
(257, 151, 3, 0.0000, NULL, 0.0000),
(258, 152, 1, 21.0000, NULL, 54500.0000),
(259, 152, 3, 0.0000, NULL, 0.0000);

-- --------------------------------------------------------

--
-- Table structure for table `sma_warehouses_products_variants`
--

CREATE TABLE `sma_warehouses_products_variants` (
  `id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `rack` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_wishlist`
--

CREATE TABLE `sma_wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sma_addresses`
--
ALTER TABLE `sma_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `sma_adjustments`
--
ALTER TABLE `sma_adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_adjustment_items`
--
ALTER TABLE `sma_adjustment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adjustment_id` (`adjustment_id`);

--
-- Indexes for table `sma_api_keys`
--
ALTER TABLE `sma_api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_api_limits`
--
ALTER TABLE `sma_api_limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_api_logs`
--
ALTER TABLE `sma_api_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_brands`
--
ALTER TABLE `sma_brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `sma_calendar`
--
ALTER TABLE `sma_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_captcha`
--
ALTER TABLE `sma_captcha`
  ADD PRIMARY KEY (`captcha_id`),
  ADD KEY `word` (`word`);

--
-- Indexes for table `sma_cart`
--
ALTER TABLE `sma_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_categories`
--
ALTER TABLE `sma_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_combo_items`
--
ALTER TABLE `sma_combo_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_companies`
--
ALTER TABLE `sma_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `group_id_2` (`group_id`);

--
-- Indexes for table `sma_costing`
--
ALTER TABLE `sma_costing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_currencies`
--
ALTER TABLE `sma_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_customer_groups`
--
ALTER TABLE `sma_customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_date_format`
--
ALTER TABLE `sma_date_format`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_deliveries`
--
ALTER TABLE `sma_deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_deposits`
--
ALTER TABLE `sma_deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_expenses`
--
ALTER TABLE `sma_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_expense_categories`
--
ALTER TABLE `sma_expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_gift_cards`
--
ALTER TABLE `sma_gift_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `card_no` (`card_no`);

--
-- Indexes for table `sma_gift_card_topups`
--
ALTER TABLE `sma_gift_card_topups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_id` (`card_id`);

--
-- Indexes for table `sma_groups`
--
ALTER TABLE `sma_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_login_attempts`
--
ALTER TABLE `sma_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_notifications`
--
ALTER TABLE `sma_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_order_ref`
--
ALTER TABLE `sma_order_ref`
  ADD PRIMARY KEY (`ref_id`);

--
-- Indexes for table `sma_pages`
--
ALTER TABLE `sma_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_payments`
--
ALTER TABLE `sma_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_paypal`
--
ALTER TABLE `sma_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_permissions`
--
ALTER TABLE `sma_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_pos_register`
--
ALTER TABLE `sma_pos_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_pos_settings`
--
ALTER TABLE `sma_pos_settings`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `sma_price_groups`
--
ALTER TABLE `sma_price_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `sma_printers`
--
ALTER TABLE `sma_printers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_products`
--
ALTER TABLE `sma_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `category_id_2` (`category_id`),
  ADD KEY `unit` (`unit`),
  ADD KEY `brand` (`brand`);

--
-- Indexes for table `sma_product_photos`
--
ALTER TABLE `sma_product_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_product_prices`
--
ALTER TABLE `sma_product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `price_group_id` (`price_group_id`);

--
-- Indexes for table `sma_product_variants`
--
ALTER TABLE `sma_product_variants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_product_id_name` (`product_id`,`name`);

--
-- Indexes for table `sma_promos`
--
ALTER TABLE `sma_promos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_purchases`
--
ALTER TABLE `sma_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_purchase_items`
--
ALTER TABLE `sma_purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_quotes`
--
ALTER TABLE `sma_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_quote_items`
--
ALTER TABLE `sma_quote_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quote_id` (`quote_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_returns`
--
ALTER TABLE `sma_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_return_items`
--
ALTER TABLE `sma_return_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `return_id` (`return_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`,`return_id`),
  ADD KEY `return_id_2` (`return_id`,`product_id`);

--
-- Indexes for table `sma_sales`
--
ALTER TABLE `sma_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`,`sale_id`),
  ADD KEY `sale_id_2` (`sale_id`,`product_id`);

--
-- Indexes for table `sma_sessions`
--
ALTER TABLE `sma_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `sma_settings`
--
ALTER TABLE `sma_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `sma_shop_settings`
--
ALTER TABLE `sma_shop_settings`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `sma_skrill`
--
ALTER TABLE `sma_skrill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_sms_settings`
--
ALTER TABLE `sma_sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_stock_counts`
--
ALTER TABLE `sma_stock_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_stock_count_items`
--
ALTER TABLE `sma_stock_count_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_count_id` (`stock_count_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_suspended_bills`
--
ALTER TABLE `sma_suspended_bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_suspended_items`
--
ALTER TABLE `sma_suspended_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_tax_rates`
--
ALTER TABLE `sma_tax_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_transfers`
--
ALTER TABLE `sma_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_transfer_items`
--
ALTER TABLE `sma_transfer_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfer_id` (`transfer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_units`
--
ALTER TABLE `sma_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_unit` (`base_unit`);

--
-- Indexes for table `sma_users`
--
ALTER TABLE `sma_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`,`warehouse_id`,`biller_id`),
  ADD KEY `group_id_2` (`group_id`,`company_id`);

--
-- Indexes for table `sma_user_logins`
--
ALTER TABLE `sma_user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_variants`
--
ALTER TABLE `sma_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_warehouses`
--
ALTER TABLE `sma_warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_warehouses_products`
--
ALTER TABLE `sma_warehouses_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_warehouses_products_variants`
--
ALTER TABLE `sma_warehouses_products_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_wishlist`
--
ALTER TABLE `sma_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sma_addresses`
--
ALTER TABLE `sma_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sma_adjustments`
--
ALTER TABLE `sma_adjustments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sma_adjustment_items`
--
ALTER TABLE `sma_adjustment_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `sma_api_keys`
--
ALTER TABLE `sma_api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_api_limits`
--
ALTER TABLE `sma_api_limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_api_logs`
--
ALTER TABLE `sma_api_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_brands`
--
ALTER TABLE `sma_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sma_calendar`
--
ALTER TABLE `sma_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_captcha`
--
ALTER TABLE `sma_captcha`
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_categories`
--
ALTER TABLE `sma_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sma_combo_items`
--
ALTER TABLE `sma_combo_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sma_companies`
--
ALTER TABLE `sma_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `sma_costing`
--
ALTER TABLE `sma_costing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=846;

--
-- AUTO_INCREMENT for table `sma_currencies`
--
ALTER TABLE `sma_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_customer_groups`
--
ALTER TABLE `sma_customer_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sma_date_format`
--
ALTER TABLE `sma_date_format`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sma_deliveries`
--
ALTER TABLE `sma_deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_deposits`
--
ALTER TABLE `sma_deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_expenses`
--
ALTER TABLE `sma_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_expense_categories`
--
ALTER TABLE `sma_expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_gift_cards`
--
ALTER TABLE `sma_gift_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_gift_card_topups`
--
ALTER TABLE `sma_gift_card_topups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_groups`
--
ALTER TABLE `sma_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sma_login_attempts`
--
ALTER TABLE `sma_login_attempts`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `sma_notifications`
--
ALTER TABLE `sma_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_order_ref`
--
ALTER TABLE `sma_order_ref`
  MODIFY `ref_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_pages`
--
ALTER TABLE `sma_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_payments`
--
ALTER TABLE `sma_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `sma_permissions`
--
ALTER TABLE `sma_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sma_pos_register`
--
ALTER TABLE `sma_pos_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sma_price_groups`
--
ALTER TABLE `sma_price_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sma_printers`
--
ALTER TABLE `sma_printers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_products`
--
ALTER TABLE `sma_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `sma_product_photos`
--
ALTER TABLE `sma_product_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_product_prices`
--
ALTER TABLE `sma_product_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `sma_product_variants`
--
ALTER TABLE `sma_product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_promos`
--
ALTER TABLE `sma_promos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_purchases`
--
ALTER TABLE `sma_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sma_purchase_items`
--
ALTER TABLE `sma_purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `sma_quotes`
--
ALTER TABLE `sma_quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_quote_items`
--
ALTER TABLE `sma_quote_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_returns`
--
ALTER TABLE `sma_returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sma_return_items`
--
ALTER TABLE `sma_return_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sma_sales`
--
ALTER TABLE `sma_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `sma_sms_settings`
--
ALTER TABLE `sma_sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_stock_counts`
--
ALTER TABLE `sma_stock_counts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sma_stock_count_items`
--
ALTER TABLE `sma_stock_count_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `sma_suspended_bills`
--
ALTER TABLE `sma_suspended_bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_suspended_items`
--
ALTER TABLE `sma_suspended_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_tax_rates`
--
ALTER TABLE `sma_tax_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sma_transfers`
--
ALTER TABLE `sma_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_transfer_items`
--
ALTER TABLE `sma_transfer_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_units`
--
ALTER TABLE `sma_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sma_users`
--
ALTER TABLE `sma_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sma_user_logins`
--
ALTER TABLE `sma_user_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;

--
-- AUTO_INCREMENT for table `sma_variants`
--
ALTER TABLE `sma_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sma_warehouses`
--
ALTER TABLE `sma_warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sma_warehouses_products`
--
ALTER TABLE `sma_warehouses_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `sma_warehouses_products_variants`
--
ALTER TABLE `sma_warehouses_products_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_wishlist`
--
ALTER TABLE `sma_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
