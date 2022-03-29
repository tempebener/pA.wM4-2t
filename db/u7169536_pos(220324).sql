-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 24, 2022 at 05:09 PM
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
-- Database: `u7169536_pos`
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
(111, 37, 79, NULL, 1.0000, 1, '', 'addition');

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
(1, 'SS001', 'WMEAT', 'e15916c9ecc685e84216ad128e76a706.png', 'wmeat', 'WMEAT');

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
(2, 'B001', 'BEEF', NULL, 0, 'beef', 'BEEF');

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

INSERT INTO `sma_companies` (`id`, `group_id`, `group_name`, `customer_group_id`, `customer_group_name`, `name`, `company`, `vat_no`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `invoice_footer`, `payment_term`, `logo`, `award_points`, `deposit_amount`, `price_group_id`, `price_group_name`, `gst_no`) VALUES
(1, NULL, 'biller', NULL, NULL, 'WMART Cipayung', 'WMart', '', 'Jl. Raya Cilangkap No.58,', 'Jakarta Timur', 'DKI Jakarta', '13870', 'Indonesia', '0811 1109 554', 'info@wmeat.store', '', '', '', '', '', '', 'PEMBAYARAN BISA DILAKUKAN MELALUI TRANSFER KE BCA 7000537882', 0, 'wmr2.png', 0, NULL, NULL, NULL, ''),
(2, 1, 'supplier', NULL, NULL, 'WHUB', 'Widodo Makmur Retailindo', '', 'sdad', 'ada', '', '', '', '123123132', 'allchickenmart@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL, ''),
(3, 1, 'customer', 1, 'General', 'Walk-in Client', 'Walk-in Client', '', '', '', '', '', '', '012345678', 'customer@tecdiary.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 1, 'Default', ''),
(73, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'Elisa ', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '1111', 'elisa@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(54, 3, 'customer', 4, 'New Customer (+10)', 'Eksternal Offline', 'Aulia', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '12345', 'aulia@yahoo.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(55, 3, 'customer', 5, 'WMEAT STORE', 'LMP', 'Fida', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '123', 'fida@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(56, 3, 'customer', 1, 'General', 'Eksternal Offline', 'Suciningtyas', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '2', 'suci@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(57, 3, 'customer', 4, 'New Customer (+10)', 'Eksternal Offline', 'Ayu Purwaningsih', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '123', 'ayu@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(58, 3, 'customer', 1, 'General', 'WMP', 'Yanti', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '123', 'yanti@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(59, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'Lusty', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '123', 'lusty@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(60, 3, 'customer', 1, 'General', 'WMP', 'Sherry', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'sherry@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(62, 3, 'customer', 4, 'New Customer (+10)', 'Eksternal Offline', 'Andri', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '123', 'andri@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(63, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'Nurul Fatihat', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'nurul@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(64, 3, 'customer', 6, 'Ecommerce', 'tokopedia', 'florija', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '111', 'florija@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(65, 3, 'customer', 4, 'New Customer (+10)', 'Eksternal Offline', 'fani', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '11111', 'fani@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(66, 3, 'customer', 4, 'New Customer (+10)', 'Eksternal Offline', 'Alfi', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'alfi@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(67, 3, 'customer', 1, 'General', 'WMP', 'retno', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '111111', 'retno@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(68, 3, 'customer', 1, 'General', 'WMP', 'Sonia', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'sonia@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(69, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'Ikhsan', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '1111', 'Ikhsan@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(70, 3, 'customer', 5, 'WMEAT STORE', 'CAM', 'Aditya', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '1111', 'aditya@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(71, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'Marni', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '1111', 'marni@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(72, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'Risti Setyawan', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'risti@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(53, 3, 'customer', 1, 'General', 'PWM', 'Teddy', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '123', 'teddy@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(51, 3, 'customer', 1, 'General', 'Eksternal Offline', 'Eksternal Offline', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1234567', 'wmeatofficial@gmail.comm', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(52, 3, 'customer', 1, 'General', 'CAM', 'Reanie', '', 'CIleungsi', 'Jakarta', '', '', '', '000000000', 'Reanie@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(49, 3, 'customer', 1, 'General', 'Internal Offline', 'Internal Offline', '', 'The Beige', 'jakarta', 'DKI JAKARTA', '', '', '081212345678', 'wmeatofficial@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(50, 3, 'customer', 1, 'General', 'Trading', 'WMU Trading', '', 'the beige', 'jakarta', 'DKI JAKARTA', '', '', '081212345678', 'trading@admin.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(47, 3, 'customer', 6, 'Ecommerce', 'tokopedia', 'aprindy', '', 'tokped', 'jakarta', '', '', '', '123456', 'tokped@admin.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 2, 'Ecommerce', ''),
(48, 4, 'supplier', NULL, NULL, 'PT Cianjur Arta Makmur', 'PT Cianjur Arta Makmur', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '(+62) 817-1095-54', 'WMeat.Official@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL, ''),
(74, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'ninik', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '11111', 'ninik@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(75, 3, 'customer', 1, 'General', 'CAM', 'Syaiful', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '111', 'syaiful@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(76, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'Yurike', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '111', 'yurike@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(77, 3, 'customer', 5, 'WMEAT STORE', 'LMP', 'Citra Ratulangie', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '111111', 'citra@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(78, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'Winda Febri', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '1111', 'winda@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(79, 3, 'customer', 1, 'General', 'Eksternal Offline', 'zen', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'zen@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(80, 3, 'customer', 4, 'New Customer (+10)', 'Eksternal Offline', 'imam', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'imam@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(81, 3, 'customer', 4, 'New Customer (+10)', 'WMU', 'rizky', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '111', 'rizky@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(82, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'yola', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'yola@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(83, 3, 'customer', 1, 'General', 'WMP', 'Aulia', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '111', 'auliaeks@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(84, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'musa', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '1111', 'musa@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(85, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'dede riani', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '123', 'dede@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(86, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'tania', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '11111', 'tania@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(87, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'putri', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'putri@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(88, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'Nova', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '111', 'nova@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(89, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'erdina', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'erdina@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(90, 3, 'customer', 1, 'General', 'Eksternal Offline', 'Luvita', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '111', 'luvita@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(91, 3, 'customer', 1, 'General', 'WMP', 'Marlinda ', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '111', 'marlinda@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(92, 3, 'customer', 1, 'General', 'ACM', 'HADI', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '111', 'hadi@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(93, 3, 'customer', 1, 'General', 'WMP', 'Djarot', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '111', 'djarot@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(94, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'dhyna', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'dhyna@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(95, 3, 'customer', 1, 'General', 'WMP', 'NIDI', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '111', 'nidi@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(96, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'Thunty', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'thunty@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(97, 3, 'customer', 1, 'General', 'IT', 'anto', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '1111', 'antoIT@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(98, 3, 'customer', 1, 'General', 'WMU', 'Irfan ', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '1111', 'irfanwmu@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(99, 3, 'customer', 1, 'General', 'CAM', 'agung', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'agungsulistyo@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(100, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'astrid farabia', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'astrid@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(101, 3, 'customer', 5, 'WMEAT STORE', 'Eksternal Offline', 'astam', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'astam@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(102, 3, 'customer', 1, 'General', 'WMU', 'FiAlfiona Annisa', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '1111', 'alfiona@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(103, 3, 'customer', 1, 'General', 'WMU', 'Alfiona Annisa', '', 'Graha Widodo Makmur CIpayung', 'Jakarta', '', '', '', '1111', 'alfiona1@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(104, 3, 'customer', 1, 'General', 'MWU', 'al ghanusi', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'ghanusi@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(105, 3, 'customer', 1, 'General', 'Eksternal Offline', 'Harry Subagyo', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'harry@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(106, 3, 'customer', 1, 'General', 'IT', 'Dhawy', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'dhawy@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(107, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'ramaria ulandari', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'ramaria@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(108, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'liza', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'liza@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(109, 3, 'customer', 1, 'General', 'PWM', 'shita', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'shita@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(110, 3, 'customer', 1, 'General', 'WMU', 'harry', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'harrywmu@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(111, 3, 'customer', 5, 'WMEAT STORE', 'Eksternal Offline', 'Desi Daritarini', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'desi@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(112, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'Ariq', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'ariq@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(113, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'natanael', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'natanael@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(114, 3, 'customer', 1, 'General', 'WMP', 'erlinda', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'erlinda@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(115, 3, 'customer', 1, 'General', 'WMP', 'M arifin', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'arifin@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(116, 3, 'customer', 5, 'WMEAT STORE', 'WMU', 'Tito', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'tito@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(117, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'Rijal', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'rijal@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(118, 3, 'customer', 5, 'WMEAT STORE', 'Eksternal Offline', 'Wiwi WMU', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'wiwi@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(119, 3, 'customer', 5, 'WMEAT STORE', 'Eksternal Offline', 'Lovita', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'lovita@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(120, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'diya', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'diya@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(121, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'aji', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'aji@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(122, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'arga ', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'arga@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(123, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'rosmalia', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'rosmalia@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(124, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'Zulkifli Hadid', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'zulkifli@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(125, 3, 'customer', 1, 'General', 'WMP', 'Nur Dining Prawesti', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'nur@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(126, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'Annisa', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'annisa@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(127, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'fajar rizky', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'fajar@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(128, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'Panji', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'panji@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(129, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'gita', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'gita@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(130, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'Ulin', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'ulin@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(131, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'Nova', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'novaeksternal@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(132, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'andika', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'andika@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(133, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'Ihab', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'ihab@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(134, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'andrian', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'andrian@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(135, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'bayu amboro', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'amboro@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(136, 3, 'customer', 1, 'General', 'CAM', 'Lamin', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'lamin@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(137, 3, 'customer', 5, 'WMEAT STORE', 'IT', 'BAYU', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'bayu@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(138, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'azura', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'azura@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(139, 3, 'customer', 1, 'General', 'WMP', 'devi', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'devi@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(140, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'Evan', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'evan@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(141, 3, 'customer', 1, 'General', 'WMP', 'Monic', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'monic@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(142, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'reza', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'reza@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(143, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'ibnu', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'ibnu@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(144, 3, 'customer', 1, 'General', 'WMP', 'cynthia', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'cynthia@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(145, 3, 'customer', 5, 'WMEAT STORE', 'Eksternal Offline', 'Bapak Andri', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'andriex@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(146, 3, 'customer', 1, 'General', 'HRD', 'Annisa', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'annisahrd@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(147, 3, 'customer', 5, 'WMEAT STORE', 'Eksternal Offline', 'anne', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'anne@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(148, 3, 'customer', 5, 'WMEAT STORE', 'Eksternal Offline', 'ismi', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'ismi@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(149, 3, 'customer', 5, 'WMEAT STORE', 'Eksternal Offline', 'Mellisa', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'mellisa@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(150, 3, 'customer', 1, 'General', 'eksternal offline 2', 'harry ', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'hari@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(151, 3, 'customer', 5, 'WMEAT STORE', 'Eksternal Offline', 'winda sari', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'windasari@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(152, 3, 'customer', 6, 'Ecommerce', 'Eksternal Offline', 'rere modi', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'reremodi@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(153, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'yasa', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'yasa@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(154, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'heri prasojo', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'heri@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(155, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'Bertha', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'bertha@gmai.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(156, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'Mukhlas', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'mukhlas@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(157, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'Dwi Utomo', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'Dwiutomo@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(158, 3, 'customer', 5, 'WMEAT STORE', 'WMU', 'Rita', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'rita@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(159, 3, 'customer', 5, 'WMEAT STORE', 'WMU', 'asti ', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'asti@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(160, 3, 'customer', 5, 'WMEAT STORE', 'Eksternal Offline', 'Vivid', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'vivid@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(161, 3, 'customer', 5, 'WMEAT STORE', 'Eksternal Offline', 'Komariah', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'komariah@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', '');

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
(419, '2021-11-02', 56, 407, 29, 265, 1.0000, 0.0000, 0.0000, 124000.0000, 124000.0000, 0.0000, 1, 0, NULL),
(418, '2021-11-02', 56, 406, 27, 265, 10.0000, 0.0000, 0.0000, 124000.0000, 124000.0000, 0.0000, 1, 0, NULL),
(420, '2021-11-02', 78, 408, 29, 291, 1.0000, 63500.0000, 63500.0000, 63500.0000, 63500.0000, 0.0000, 1, 0, NULL),
(433, '2021-11-04', 70, 421, 35, 283, 1.0000, 57000.0000, 57000.0000, 57000.0000, 57000.0000, 0.0000, 1, 0, NULL),
(435, '2021-11-04', 38, 423, 36, 267, 1.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 0.0000, 1, 0, NULL),
(431, '2021-11-04', 56, 419, 34, 265, 1.0000, 0.0000, 0.0000, 124000.0000, 124000.0000, 0.0000, 1, 0, NULL),
(432, '2021-11-04', 78, 420, 34, 291, 1.0000, 63500.0000, 63500.0000, 63500.0000, 63500.0000, 0.0000, 1, 0, NULL),
(434, '2021-11-04', 93, 422, 35, NULL, 1.0000, 50000.0000, 50000.0000, 50000.0000, 50000.0000, -1.0000, 1, 1, NULL),
(429, '2021-11-04', 40, 417, 44, 269, 1.0000, 125000.0000, 125000.0000, 130000.0000, 130000.0000, 0.0000, 1, 0, NULL),
(430, '2021-11-04', 78, 418, 44, 291, 1.0000, 63500.0000, 63500.0000, 67000.0000, 67000.0000, 0.0000, 1, 0, NULL),
(427, '2021-11-03', 59, 415, 32, 277, 1.0000, -78403.3614, -78403.3614, 50000.0000, 50000.0000, 0.0000, 1, 0, NULL),
(426, '2021-11-03', 56, 414, 32, 265, 1.0000, 0.0000, 0.0000, 129000.0000, 129000.0000, 0.0000, 1, 0, NULL),
(425, '2021-11-03', 38, 413, 32, 267, 1.0000, 140000.0000, 140000.0000, 150000.0000, 150000.0000, 0.0000, 1, 0, NULL),
(423, '2021-11-03', 75, 411, 31, 288, 5.0000, 95000.0000, 95000.0000, 95000.0000, 95000.0000, 0.0000, 1, 0, NULL),
(428, '2021-11-03', 69, 416, 32, 282, 1.0000, 65000.0000, 65000.0000, 75000.0000, 75000.0000, 0.0000, 1, 0, NULL),
(422, '2021-11-03', 38, 410, 31, 267, 5.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 0.0000, 1, 0, NULL),
(421, '2021-11-03', 46, 409, 30, 270, 1.0000, 0.0000, 0.0000, 41500.0000, 41500.0000, 0.0000, 1, 0, NULL),
(424, '2021-11-03', 77, 412, 31, 290, 5.0000, 70000.0000, 70000.0000, 70000.0000, 70000.0000, 0.0000, 1, 0, NULL),
(436, '2021-11-04', 39, 424, 37, 268, 1.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 0.0000, 1, 0, NULL),
(437, '2021-11-04', 50, 425, 37, 272, 1.0000, 29230.7692, 29230.7692, 90000.0000, 90000.0000, 0.0000, 1, 0, NULL),
(438, '2021-11-04', 52, 426, 38, 274, 1.0000, 77631.5789, 77631.5789, 80000.0000, 80000.0000, 0.0000, 1, 0, NULL),
(439, '2021-11-04', 76, 427, 38, 289, 1.0000, 37000.0000, 37000.0000, 37000.0000, 37000.0000, 0.0000, 1, 0, NULL),
(441, '2021-11-05', 60, 429, 39, 278, 1.0000, -10265.7005, -10265.7005, 90000.0000, 90000.0000, 0.0000, 1, 0, NULL),
(440, '2021-11-05', 52, 428, 39, 274, 1.0000, 77631.5789, 77631.5789, 83500.0000, 83500.0000, 0.0000, 1, 0, NULL),
(442, '2021-11-05', 73, 430, 39, 286, 1.0000, 77888.8889, 77888.8889, 89000.0000, 89000.0000, 3.0000, 1, 0, NULL),
(443, '2021-11-05', 60, 431, 40, 278, 2.0000, -10265.7005, -10265.7005, 85000.0000, 85000.0000, 0.0000, 1, 0, NULL),
(444, '2021-11-05', 75, 432, 40, 288, 5.0000, 95000.0000, 95000.0000, 95000.0000, 95000.0000, 0.0000, 1, 0, NULL),
(445, '2021-11-05', 38, 433, 41, 267, 1.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 0.0000, 1, 0, NULL),
(446, '2021-11-05', 40, 434, 41, 269, 2.0000, 125000.0000, 125000.0000, 125000.0000, 125000.0000, 0.0000, 1, 0, NULL),
(448, '2021-11-05', 70, 436, 42, 283, 3.0000, 57000.0000, 57000.0000, 57000.0000, 57000.0000, 0.0000, 1, 0, NULL),
(447, '2021-11-05', 51, 435, 42, 273, 2.0000, 0.0000, 0.0000, 44000.0000, 44000.0000, 7.0000, 1, 0, NULL),
(449, '2021-11-05', 72, 437, 42, 285, 2.0000, 37500.0000, 37500.0000, 45000.0000, 45000.0000, 3.0000, 1, 0, NULL),
(454, '2022-01-03', 55, 442, 46, 275, 1.0000, 0.0000, 0.0000, 62500.0000, 62500.0000, 0.0000, 1, 0, NULL),
(453, '2021-11-08', 78, 441, 46, 291, 1.0000, 63500.0000, 63500.0000, 67000.0000, 67000.0000, 0.0000, 1, 0, NULL),
(452, '2021-11-08', 68, 440, 46, 281, 1.0000, 13125.0000, 13125.0000, 40000.0000, 40000.0000, 8.0000, 1, 0, NULL),
(451, '2021-11-08', 52, 439, 46, 274, 3.0000, 77631.5789, 77631.5789, 83500.0000, 83500.0000, 0.0000, 1, 0, NULL),
(455, '2022-01-03', 49, 442, 46, 271, 1.0000, 121118.0124, 121118.0124, 47500.0000, 47500.0000, 0.0000, 1, 0, NULL),
(456, '2021-11-09', 72, 443, 47, 285, 5.0000, 37500.0000, 37500.0000, 45000.0000, 45000.0000, 3.0000, 1, 0, NULL),
(450, '2021-11-08', 78, 438, 50, 291, 1.0000, 63500.0000, 63500.0000, 63500.0000, 63500.0000, 0.0000, 1, 0, NULL),
(457, '2021-11-09', 60, 444, 53, 278, 1.0000, -10265.7005, -10265.7005, 85000.0000, 85000.0000, 0.0000, 1, 0, NULL),
(458, '2021-11-10', 52, 445, 52, 274, 1.0000, 77631.5789, 77631.5789, 80000.0000, 80000.0000, 0.0000, 1, 0, NULL),
(460, '2021-11-10', 52, 447, 54, 274, 1.0000, 77631.5789, 77631.5789, 80000.0000, 80000.0000, 0.0000, 1, 0, NULL),
(459, '2021-11-10', 37, 446, 54, 266, 1.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 0.0000, 1, 0, NULL),
(461, '2021-11-10', 75, 448, 54, 301, 1.0000, 95000.0000, 95000.0000, 95000.0000, 95000.0000, 0.0000, 1, 0, NULL),
(462, '2021-11-12', 39, 449, 56, 306, 2.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 0.0000, 1, 0, NULL),
(463, '2021-11-13', 56, 450, 57, 265, 1.0000, 0.0000, 0.0000, 124000.0000, 124000.0000, 0.0000, 1, 0, NULL),
(464, '2021-11-13', 90, 451, 57, 300, 13.0000, 160000.0000, 160000.0000, 124000.0000, 124000.0000, 0.0000, 1, 0, NULL),
(470, '2021-11-15', 78, 456, 58, 291, 4.0000, 63500.0000, 63500.0000, 63500.0000, 63500.0000, 0.0000, 1, 0, NULL),
(469, '2021-11-15', 70, 455, 58, 283, 4.0000, 57000.0000, 57000.0000, 57000.0000, 57000.0000, 0.0000, 1, 0, NULL),
(468, '2021-11-15', 59, 454, 58, 277, 4.0000, -78403.3614, -78403.3614, 45000.0000, 45000.0000, 0.0000, 1, 0, NULL),
(467, '2021-11-15', 55, 453, 58, 275, 2.0000, 0.0000, 0.0000, 65000.0000, 65000.0000, 0.0000, 1, 0, NULL),
(466, '2021-11-15', 40, 452, 58, 307, 3.0000, 125000.0000, 125000.0000, 125000.0000, 125000.0000, 0.0000, 1, 0, NULL),
(465, '2021-11-15', 40, 452, 58, 269, 2.0000, 125000.0000, 125000.0000, 125000.0000, 125000.0000, 0.0000, 1, 0, NULL),
(471, '2021-11-15', 90, 457, 58, 300, 2.0000, 160000.0000, 160000.0000, 124000.0000, 124000.0000, 0.0000, 1, 0, NULL),
(472, '2021-11-15', 50, 458, 59, 272, 1.0000, 29230.7692, 29230.7692, 90000.0000, 90000.0000, 0.0000, 1, 0, NULL),
(475, '2021-11-16', 58, 461, 60, 276, 1.0000, 0.0000, 0.0000, 100500.0000, 100500.0000, 0.0000, 1, 0, NULL),
(474, '2021-11-16', 46, 460, 60, 270, 1.0000, 0.0000, 0.0000, 43500.0000, 43500.0000, 0.0000, 1, 0, NULL),
(473, '2021-11-16', 40, 459, 60, 307, 1.0000, 125000.0000, 125000.0000, 130000.0000, 130000.0000, 0.0000, 1, 0, NULL),
(476, '2021-11-16', 77, 462, 60, 290, 2.0000, 70000.0000, 70000.0000, 74000.0000, 74000.0000, 0.0000, 1, 0, NULL),
(158, '2021-11-25', 73, 169, 61, 286, 1.0000, 69000.0000, 69000.0000, 80000.0000, 80000.0000, 10.0000, 1, 0, NULL),
(157, '2021-11-25', 66, 168, 61, 280, 4.0000, 0.0000, 0.0000, 70000.0000, 70000.0000, 6.0000, 1, 0, NULL),
(156, '2021-11-25', 68, 168, 61, 281, 4.0000, 0.0000, 0.0000, 30000.0000, 30000.0000, 11.0000, 1, 0, NULL),
(155, '2021-11-25', 65, 167, 61, 279, 1.0000, 0.0000, 0.0000, 46500.0000, 46500.0000, 16.0000, 1, 0, NULL),
(154, '2021-11-25', 66, 167, 61, 280, 1.0000, 0.0000, 0.0000, 68500.0000, 68500.0000, 9.0000, 1, 0, NULL),
(159, '2021-11-25', 71, 169, 61, 284, 1.0000, 110000.0000, 110000.0000, 105000.0000, 105000.0000, 4.0000, 1, 0, NULL),
(153, '2021-11-16', 39, 166, 62, 306, 2.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 6.0000, 1, 0, NULL),
(160, '2021-11-16', 78, 170, 63, 291, 1.0000, 63500.0000, 63500.0000, 67000.0000, 67000.0000, 0.0000, 1, 0, NULL),
(161, '2021-11-16', 73, 171, 64, 286, 1.0000, 69000.0000, 69000.0000, 85000.0000, 85000.0000, 9.0000, 1, 0, NULL),
(162, '2021-11-16', 71, 172, 64, 284, 1.0000, 110000.0000, 110000.0000, 110000.0000, 110000.0000, 3.0000, 1, 0, NULL),
(163, '2021-11-16', 60, 173, 64, 278, 1.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 4.0000, 1, 0, NULL),
(164, '2021-11-16', 68, 174, 65, 281, 1.0000, 0.0000, 0.0000, 30000.0000, 30000.0000, 10.0000, 1, 0, NULL),
(165, '2021-11-16', 66, 174, 65, 280, 1.0000, 0.0000, 0.0000, 70000.0000, 70000.0000, 4.0000, 1, 0, NULL),
(168, '2021-11-29', 68, 176, 66, 281, 1.0000, 0.0000, 0.0000, 30000.0000, 30000.0000, 9.0000, 1, 0, NULL),
(169, '2021-11-29', 66, 176, 66, 280, 1.0000, 0.0000, 0.0000, 70000.0000, 70000.0000, 3.0000, 1, 0, NULL),
(170, '2021-11-17', 37, 177, 67, 266, 1.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 12.0000, 1, 0, NULL),
(171, '2021-11-17', 55, 178, 67, 275, 1.0000, 0.0000, 0.0000, 65000.0000, 65000.0000, 6.0000, 1, 0, NULL),
(172, '2021-11-17', 59, 179, 67, 277, 1.0000, 0.0000, 0.0000, 45000.0000, 45000.0000, 0.0000, 1, 0, NULL),
(173, '2021-11-17', 73, 180, 67, 286, 1.0000, 69000.0000, 69000.0000, 85000.0000, 85000.0000, 8.0000, 1, 0, NULL),
(174, '2021-11-18', 90, 181, 68, 320, 1.0000, 124000.0000, 124000.0000, 124000.0000, 124000.0000, 3.0000, 1, 0, NULL),
(175, '2021-11-18', 70, 182, 68, 283, 1.0000, 57000.0000, 57000.0000, 57000.0000, 57000.0000, 2.0000, 1, 0, NULL),
(176, '2021-11-18', 60, 183, 68, 278, 1.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 3.0000, 1, 0, NULL),
(177, '2021-11-18', 75, 184, 69, 301, 3.0000, 95000.0000, 95000.0000, 95000.0000, 95000.0000, 6.0000, 1, 0, NULL),
(187, '2021-11-19', 70, 193, 70, 283, 2.0000, 57000.0000, 57000.0000, 57000.0000, 57000.0000, 0.0000, 1, 0, NULL),
(188, '2021-11-19', 70, 193, 70, 321, 4.0000, 57000.0000, 57000.0000, 57000.0000, 57000.0000, 3.0000, 1, 0, NULL),
(180, '2021-11-19', 78, 186, 71, 304, 1.0000, 63500.0000, 63500.0000, 63500.0000, 63500.0000, 9.0000, 1, 0, NULL),
(181, '2021-11-19', 49, 187, 71, 271, 1.0000, 0.0000, 0.0000, 50000.0000, 50000.0000, 0.0000, 1, 0, NULL),
(182, '2021-11-19', 37, 188, 71, 266, 1.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 11.0000, 1, 0, NULL),
(183, '2021-11-19', 59, 189, 71, 323, 1.0000, 0.0000, 0.0000, 45000.0000, 45000.0000, 8.0000, 1, 0, NULL),
(184, '2021-11-19', 68, 190, 71, 281, 1.0000, 0.0000, 0.0000, 35000.0000, 35000.0000, 8.0000, 1, 0, NULL),
(185, '2021-11-19', 87, 191, 71, 302, 1.0000, 25000.0000, 25000.0000, 25000.0000, 25000.0000, 9.0000, 1, 0, NULL),
(186, '2021-11-19', 72, 192, 71, 285, 1.0000, 37500.0000, 37500.0000, 45000.0000, 45000.0000, 3.0000, 1, 0, NULL),
(189, '2021-11-19', 37, 194, 72, 266, 8.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 3.0000, 1, 0, NULL),
(190, '2021-11-19', 39, 195, 72, 306, 6.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 0.0000, 1, 0, NULL),
(191, '2021-11-19', 70, 196, 72, 321, 3.0000, 57000.0000, 57000.0000, 57000.0000, 57000.0000, 0.0000, 1, 0, NULL),
(192, '2021-11-19', 49, 197, 73, 326, 3.0000, 0.0000, 0.0000, 50000.0000, 50000.0000, 5.0000, 1, 0, NULL),
(193, '2021-11-19', 87, 198, 73, 302, 4.0000, 25000.0000, 25000.0000, 25000.0000, 25000.0000, 5.0000, 1, 0, NULL),
(194, '2021-11-19', 76, 199, 73, 289, 4.0000, 37000.0000, 37000.0000, 37000.0000, 37000.0000, 5.0000, 1, 0, NULL),
(195, '2021-11-19', 77, 200, 73, 290, 1.0000, 70000.0000, 70000.0000, 70000.0000, 70000.0000, 0.0000, 1, 0, NULL),
(196, '2021-11-19', 77, 200, 73, 328, 1.0000, 70000.0000, 70000.0000, 70000.0000, 70000.0000, 4.0000, 1, 0, NULL),
(197, '2021-11-19', 88, 201, 73, 305, 2.0000, 34000.0000, 34000.0000, 41500.0000, 41500.0000, 8.0000, 1, 0, NULL),
(200, '2021-11-22', 36, 204, 74, 303, 1.0000, 120000.0000, 120000.0000, 120000.0000, 120000.0000, 9.0000, 1, 0, NULL),
(201, '2021-11-22', 77, 205, 74, 328, 1.0000, 70000.0000, 70000.0000, 70000.0000, 70000.0000, 3.0000, 1, 0, NULL),
(206, '2021-11-22', 77, 209, 75, 328, 2.0000, 70000.0000, 70000.0000, 74000.0000, 74000.0000, 1.0000, 1, 0, NULL),
(204, '2021-11-22', 90, 208, 76, 320, 1.0000, 124000.0000, 124000.0000, 117000.0000, 117000.0000, 2.0000, 1, 0, NULL),
(205, '2021-11-22', 80, 208, 76, 293, 1.0000, 95000.0000, 95000.0000, 88000.0000, 88000.0000, 10.0000, 1, 0, NULL),
(207, '2021-11-22', 90, 210, 77, 320, 2.0000, 124000.0000, 124000.0000, 124000.0000, 124000.0000, 0.0000, 1, 0, NULL),
(208, '2021-11-22', 90, 210, 77, 329, 8.0000, 124000.0000, 124000.0000, 124000.0000, 124000.0000, 7.0000, 1, 0, NULL),
(209, '2021-11-22', 40, 211, 77, 307, 5.0000, 125000.0000, 125000.0000, 125000.0000, 125000.0000, 1.0000, 1, 0, NULL),
(210, '2021-11-22', 38, 212, 77, 267, 3.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 0.0000, 1, 0, NULL),
(211, '2021-11-22', 38, 212, 77, 325, 2.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 8.0000, 1, 0, NULL),
(212, '2021-11-22', 60, 213, 77, 278, 3.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 0.0000, 1, 0, NULL),
(213, '2021-11-22', 60, 213, 77, 332, 2.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 8.0000, 1, 0, NULL),
(214, '2021-11-23', 50, 214, 78, 272, 1.0000, 0.0000, 0.0000, 90000.0000, 90000.0000, 0.0000, 1, 0, NULL),
(215, '2021-11-23', 50, 214, 78, 327, 3.0000, 0.0000, 0.0000, 90000.0000, 90000.0000, 5.0000, 1, 0, NULL),
(238, '2021-11-25', 36, 236, 80, 303, 2.0000, 120000.0000, 120000.0000, 120000.0000, 120000.0000, 7.0000, 1, 0, NULL),
(220, '2021-11-26', 77, 219, 81, 328, 1.0000, 70000.0000, 70000.0000, 74000.0000, 74000.0000, 0.0000, 1, 0, NULL),
(221, '2021-11-26', 77, 219, 81, 339, 2.0000, 70000.0000, 70000.0000, 74000.0000, 74000.0000, 8.0000, 1, 0, NULL),
(223, '2021-11-26', 90, 221, 82, 329, 7.0000, 124000.0000, 124000.0000, 129000.0000, 129000.0000, 0.0000, 1, 0, NULL),
(224, '2021-11-26', 75, 222, 83, 301, 3.0000, 95000.0000, 95000.0000, 95000.0000, 95000.0000, 3.0000, 1, 0, NULL),
(225, '2021-11-26', 39, 223, 84, 336, 2.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 18.0000, 1, 0, NULL),
(226, '2021-11-26', 37, 224, 84, 266, 1.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 2.0000, 1, 0, NULL),
(227, '2021-11-29', 37, 225, 85, 266, 1.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 1.0000, 1, 0, NULL),
(228, '2021-11-29', 39, 226, 85, 336, 2.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 16.0000, 1, 0, NULL),
(240, '2021-12-01', 90, 238, 88, 343, 10.0000, 124000.0000, 124000.0000, 124000.0000, 124000.0000, 5.0000, 1, 0, NULL),
(239, '2021-11-29', 78, 237, 87, 304, 1.0000, 63500.0000, 63500.0000, 63500.0000, 63500.0000, 8.0000, 1, 0, NULL),
(241, '2021-12-02', 36, 239, 89, 303, 7.0000, 120000.0000, 120000.0000, 120000.0000, 120000.0000, 0.0000, 1, 0, NULL),
(242, '2021-12-02', 78, 240, 89, 304, 4.0000, 63500.0000, 63500.0000, 63500.0000, 63500.0000, 4.0000, 1, 0, NULL),
(243, '2021-12-02', 60, 241, 89, 348, 8.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 0.0000, 1, 0, NULL),
(244, '2021-12-02', 59, 242, 89, 355, 4.0000, 45000.0000, 45000.0000, 45000.0000, 45000.0000, 4.0000, 1, 0, NULL),
(245, '2021-12-02', 90, 243, 90, 343, 5.0000, 124000.0000, 124000.0000, 124000.0000, 124000.0000, 0.0000, 1, 0, NULL),
(246, '2021-12-04', 40, 244, 91, 307, 1.0000, 125000.0000, 125000.0000, 125000.0000, 125000.0000, 0.0000, 1, 0, NULL),
(247, '2021-12-04', 66, 245, 91, 280, 1.0000, 0.0000, 0.0000, 75000.0000, 75000.0000, 2.0000, 1, 0, NULL),
(248, '2021-12-04', 75, 246, 92, 301, 3.0000, 95000.0000, 95000.0000, 95000.0000, 95000.0000, 0.0000, 1, 0, NULL),
(249, '2021-12-04', 75, 246, 92, 342, 1.0000, 95000.0000, 95000.0000, 95000.0000, 95000.0000, 9.0000, 1, 0, NULL),
(254, '2021-12-06', 90, 251, 93, 363, 20.0000, 124000.0000, 124000.0000, 129000.0000, 129000.0000, 0.0000, 1, 0, NULL),
(251, '2021-12-06', 36, 248, 94, 364, 4.0000, 120000.0000, 120000.0000, 120000.0000, 120000.0000, 11.0000, 1, 0, NULL),
(252, '2021-12-06', 50, 249, 94, 361, 4.0000, 90000.0000, 90000.0000, 90000.0000, 90000.0000, 1.0000, 1, 0, NULL),
(253, '2021-12-06', 39, 250, 94, 336, 4.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 12.0000, 1, 0, NULL),
(255, '2021-12-07', 90, 252, 95, 366, 20.0000, 124000.0000, 124000.0000, 129000.0000, 129000.0000, 30.0000, 1, 0, NULL),
(256, '2021-12-07', 75, 253, 96, 342, 1.0000, 95000.0000, 95000.0000, 95000.0000, 95000.0000, 8.0000, 1, 0, NULL),
(257, '2021-12-07', 60, 254, 96, 365, 1.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 14.0000, 1, 0, NULL),
(258, '2021-12-07', 58, 255, 96, 276, 3.0000, 0.0000, 0.0000, 96500.0000, 96500.0000, 0.0000, 1, 0, NULL),
(259, '2021-12-07', 77, 256, 96, 347, 5.0000, 70000.0000, 70000.0000, 70000.0000, 70000.0000, 3.0000, 1, 0, NULL),
(260, '2021-12-07', 39, 257, 97, 336, 1.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 11.0000, 1, 0, NULL),
(261, '2021-12-07', 60, 258, 97, 365, 1.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 13.0000, 1, 0, NULL),
(262, '2021-12-07', 50, 259, 97, 361, 1.0000, 90000.0000, 90000.0000, 90000.0000, 90000.0000, 0.0000, 1, 0, NULL),
(264, '2021-12-07', 60, 261, 98, 365, 2.0000, -10265.7005, -10265.7005, 85000.0000, 85000.0000, 11.0000, 1, 0, NULL),
(352, '2021-12-07', 90, 344, 99, 366, 20.0000, 160000.0000, 160000.0000, 124000.0000, 124000.0000, 0.0000, 1, 0, NULL),
(353, '2021-12-09', 77, 345, 100, 347, 1.0000, 70000.0000, 70000.0000, 74000.0000, 74000.0000, 0.0000, 1, 0, NULL),
(354, '2021-12-09', 90, 346, 101, 366, 10.0000, 160000.0000, 160000.0000, 129000.0000, 129000.0000, 0.0000, 1, 0, NULL),
(355, '2021-12-10', 37, 347, 102, 266, 1.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 0.0000, 1, 0, NULL),
(356, '2021-12-10', 39, 348, 102, 336, 2.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 0.0000, 1, 0, NULL),
(357, '2021-12-10', 37, 349, 103, 337, 1.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 12.0000, 1, 0, NULL),
(358, '2021-12-10', 55, 350, 104, 275, 4.0000, 0.0000, 0.0000, 65000.0000, 65000.0000, 0.0000, 1, 0, NULL),
(359, '2021-12-10', 60, 351, 104, 365, 2.0000, -10265.7005, -10265.7005, 85000.0000, 85000.0000, 7.0000, 1, 0, NULL),
(360, '2021-12-10', 38, 352, 105, 359, 1.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 7.0000, 1, 0, NULL),
(361, '2021-12-10', 90, 353, 106, 369, 20.0000, 160000.0000, 160000.0000, 129000.0000, 129000.0000, 0.0000, 1, 0, NULL),
(362, '2021-12-10', 90, 354, 107, 369, 30.0000, 160000.0000, 160000.0000, 124000.0000, 124000.0000, 0.0000, 1, 0, NULL),
(366, '2021-12-13', 70, 358, 108, 335, 6.0000, 57000.0000, 57000.0000, 57000.0000, 57000.0000, 23.0000, 1, 0, NULL),
(365, '2021-12-13', 49, 357, 108, 360, 1.0000, 121118.0124, 121118.0124, 50000.0000, 50000.0000, 2.0000, 1, 0, NULL),
(364, '2021-12-13', 39, 356, 108, 336, 8.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 0.0000, 1, 0, NULL),
(363, '2021-12-13', 37, 355, 108, 337, 4.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 12.0000, 1, 0, NULL),
(367, '2021-12-13', 76, 359, 108, 289, 3.0000, 37000.0000, 37000.0000, 37000.0000, 37000.0000, 0.0000, 1, 0, NULL),
(368, '2021-12-13', 39, 360, 109, 336, 1.0000, 68000.0000, 68000.0000, 59840.0000, 59840.0000, 0.0000, 1, 0, NULL),
(369, '2021-12-14', 55, 361, 110, 275, 1.0000, 0.0000, 0.0000, 65000.0000, 65000.0000, 0.0000, 1, 0, NULL),
(370, '2021-12-14', 60, 362, 110, 365, 1.0000, -10265.7005, -10265.7005, 85000.0000, 85000.0000, 7.0000, 1, 0, NULL),
(373, '2021-12-14', 59, 365, 111, 355, 2.0000, -78403.3614, -78403.3614, 50000.0000, 50000.0000, 0.0000, 1, 0, NULL),
(372, '2021-12-14', 55, 364, 111, 275, 1.0000, 0.0000, 0.0000, 68000.0000, 68000.0000, 0.0000, 1, 0, NULL),
(371, '2021-12-14', 37, 363, 111, 337, 1.0000, 75000.0000, 75000.0000, 80000.0000, 80000.0000, 12.0000, 1, 0, NULL),
(374, '2021-12-14', 74, 366, 111, 287, 2.0000, 44000.0000, 44000.0000, 52500.0000, 52500.0000, 3.0000, 1, 0, NULL),
(375, '2021-12-14', 52, 367, 112, 274, 1.0000, 77631.5789, 77631.5789, 80000.0000, 80000.0000, 0.0000, 1, 0, NULL),
(376, '2021-12-15', 75, 368, 113, 342, 3.0000, 95000.0000, 95000.0000, 95000.0000, 95000.0000, 0.0000, 1, 0, NULL),
(377, '2021-12-15', 49, 369, 114, 360, 1.0000, 121118.0124, 121118.0124, 51000.0000, 51000.0000, 2.0000, 1, 0, NULL),
(379, '2021-12-15', 75, 371, 117, 342, 2.0000, 95000.0000, 95000.0000, 95000.0000, 95000.0000, 0.0000, 1, 0, NULL),
(378, '2021-12-15', 66, 370, 116, 280, 1.0000, 141304.3480, 141304.3480, 75000.0000, 75000.0000, 0.0000, 1, 0, NULL),
(380, '2021-12-15', 75, 372, 118, 342, 2.0000, 95000.0000, 95000.0000, 95000.0000, 95000.0000, 0.0000, 1, 0, NULL),
(381, '2021-12-16', 39, 373, 119, 379, 1.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 15.0000, 1, 0, NULL),
(382, '2021-12-16', 39, 374, 120, 379, 1.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 15.0000, 1, 0, NULL),
(383, '2021-12-16', 76, 375, 120, 289, 1.0000, 37000.0000, 37000.0000, 38000.0000, 38000.0000, 0.0000, 1, 0, NULL),
(384, '2021-12-16', 46, 376, 121, 270, 1.0000, 0.0000, 0.0000, 50000.0000, 50000.0000, 0.0000, 1, 0, NULL),
(385, '2021-12-16', 60, 377, 121, 365, 1.0000, -10265.7005, -10265.7005, 90000.0000, 90000.0000, 7.0000, 1, 0, NULL),
(386, '2021-12-16', 39, 378, 122, 379, 1.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 15.0000, 1, 0, NULL),
(387, '2021-12-16', 40, 379, 122, 344, 1.0000, 125000.0000, 125000.0000, 125000.0000, 125000.0000, 7.0000, 1, 0, NULL),
(388, '2021-12-17', 59, 380, 123, 355, 1.0000, -78403.3614, -78403.3614, 50000.0000, 50000.0000, 0.0000, 1, 0, NULL),
(389, '2021-12-17', 77, 381, 123, 347, 1.0000, 70000.0000, 70000.0000, 76000.0000, 76000.0000, 0.0000, 1, 0, NULL),
(390, '2021-12-17', 90, 382, 124, 377, 10.0000, 160000.0000, 160000.0000, 165000.0000, 165000.0000, 0.0000, 1, 0, NULL),
(391, '2021-12-17', 77, 383, 125, 347, 1.0000, 70000.0000, 70000.0000, 76000.0000, 76000.0000, 0.0000, 1, 0, NULL),
(394, '2021-12-21', 76, 386, 126, 289, 1.0000, 37000.0000, 37000.0000, 38000.0000, 38000.0000, 0.0000, 1, 0, NULL),
(393, '2021-12-21', 70, 385, 126, 335, 1.0000, 57000.0000, 57000.0000, 57000.0000, 57000.0000, 23.0000, 1, 0, NULL),
(392, '2021-12-21', 40, 384, 126, 344, 1.0000, 125000.0000, 125000.0000, 125000.0000, 125000.0000, 7.0000, 1, 0, NULL),
(395, '2021-12-21', 76, 386, 126, 346, 1.0000, 37000.0000, 37000.0000, 38000.0000, 38000.0000, 7.0000, 1, 0, NULL),
(396, '2021-12-21', 49, 387, 127, 360, 1.0000, 121118.0124, 121118.0124, 51000.0000, 51000.0000, 2.0000, 1, 0, NULL),
(397, '2021-12-21', 89, 388, 127, 381, 1.0000, 82000.0000, 82000.0000, 82000.0000, 82000.0000, 9.0000, 1, 0, NULL),
(403, '2021-12-21', 75, 392, 128, 342, 1.0000, 95000.0000, 95000.0000, 95000.0000, 95000.0000, 0.0000, 1, 0, NULL),
(402, '2021-12-21', 73, 391, 128, 286, 5.0000, 77888.8889, 77888.8889, 85000.0000, 85000.0000, 3.0000, 1, 0, NULL),
(401, '2021-12-21', 65, 390, 128, 279, 10.0000, 0.0000, 0.0000, 53000.0000, 53000.0000, 6.0000, 1, 0, NULL),
(400, '2021-12-21', 52, 389, 128, 385, 1.0000, 77631.5789, 77631.5789, 80000.0000, 80000.0000, 9.0000, 1, 0, NULL),
(399, '2021-12-21', 52, 389, 128, 354, 6.0000, 77631.5789, 77631.5789, 80000.0000, 80000.0000, 0.0000, 1, 0, NULL),
(398, '2021-12-21', 52, 389, 128, 274, 3.0000, 77631.5789, 77631.5789, 80000.0000, 80000.0000, 0.0000, 1, 0, NULL),
(404, '2021-12-21', 75, 392, 128, 382, 4.0000, 95000.0000, 95000.0000, 95000.0000, 95000.0000, 6.0000, 1, 0, NULL),
(406, '2021-12-21', 66, 394, 129, 280, 1.0000, 141304.3480, 141304.3480, 80000.0000, 80000.0000, 0.0000, 1, 0, NULL),
(405, '2021-12-21', 37, 393, 129, 337, 1.0000, 75000.0000, 75000.0000, 80000.0000, 80000.0000, 12.0000, 1, 0, NULL),
(407, '2021-12-21', 74, 395, 129, 287, 2.0000, 44000.0000, 44000.0000, 52500.0000, 52500.0000, 3.0000, 1, 0, NULL),
(409, '2021-12-22', 90, 397, 130, 386, 20.0000, 160000.0000, 160000.0000, 165000.0000, 165000.0000, 0.0000, 1, 0, NULL),
(413, '2021-12-23', 77, 401, 131, 368, 3.0000, 70000.0000, 70000.0000, 76000.0000, 76000.0000, 2.0000, 1, 0, NULL),
(410, '2021-12-23', 36, 398, 132, 364, 1.0000, 120000.0000, 120000.0000, 130000.0000, 130000.0000, 8.0000, 1, 0, NULL),
(411, '2021-12-23', 75, 399, 132, 382, 1.0000, 95000.0000, 95000.0000, 95000.0000, 95000.0000, 6.0000, 1, 0, NULL),
(412, '2021-12-23', 88, 400, 133, 305, 1.0000, 34000.0000, 34000.0000, 47500.0000, 47500.0000, 7.0000, 1, 0, NULL),
(414, '2021-12-24', 36, 402, 134, 364, 2.0000, 120000.0000, 120000.0000, 130000.0000, 130000.0000, 8.0000, 1, 0, NULL),
(415, '2021-12-24', 40, 403, 135, 344, 1.0000, 125000.0000, 125000.0000, 125000.0000, 125000.0000, 7.0000, 1, 0, NULL),
(416, '2021-12-27', 51, 404, 136, 273, 3.0000, 0.0000, 0.0000, 46000.0000, 46000.0000, 7.0000, 1, 0, NULL),
(417, '2021-12-27', 75, 405, 137, 382, 2.0000, 95000.0000, 95000.0000, 95000.0000, 95000.0000, 6.0000, 1, 0, NULL),
(477, '2021-12-27', 75, 463, 138, 382, 2.0000, 95000.0000, 95000.0000, 95000.0000, 95000.0000, 6.0000, 1, 0, NULL),
(480, '2021-12-27', 59, 465, 139, 380, 1.0000, -78403.3614, -78403.3614, 45000.0000, 45000.0000, 19.0000, 1, 0, NULL),
(479, '2021-12-27', 59, 465, 139, 355, 1.0000, -78403.3614, -78403.3614, 45000.0000, 45000.0000, 0.0000, 1, 0, NULL),
(478, '2021-12-27', 39, 464, 139, 379, 2.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 15.0000, 1, 0, NULL),
(481, '2021-12-27', 78, 466, 139, 304, 1.0000, 63500.0000, 63500.0000, 66500.0000, 66500.0000, 3.0000, 1, 0, NULL),
(482, '2021-12-28', 37, 467, 140, 337, 1.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 12.0000, 1, 0, NULL),
(484, '2021-12-28', 40, 469, 141, 344, 1.0000, 125000.0000, 125000.0000, 130000.0000, 130000.0000, 6.0000, 1, 0, NULL),
(485, '2021-12-28', 40, 470, 142, 344, 2.0000, 125000.0000, 125000.0000, 125000.0000, 125000.0000, 4.0000, 1, 0, NULL),
(491, '2021-12-28', 59, 476, 143, 380, 1.0000, -78403.3614, -78403.3614, 50000.0000, 50000.0000, 18.0000, 1, 0, NULL),
(492, '2021-12-28', 36, 477, 144, 364, 1.0000, 120000.0000, 120000.0000, 130000.0000, 130000.0000, 7.0000, 1, 0, NULL),
(493, '2021-12-28', 39, 478, 144, 379, 1.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 14.0000, 1, 0, NULL),
(495, '2021-12-28', 38, 480, 145, 359, 1.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 6.0000, 1, 0, NULL),
(517, '2021-12-29', 77, 502, 146, 368, 1.0000, 70000.0000, 70000.0000, 76000.0000, 76000.0000, 1.0000, 1, 0, NULL),
(516, '2021-12-29', 38, 501, 147, 359, 2.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 2.0000, 1, 0, NULL),
(515, '2021-12-29', 40, 500, 148, 344, 3.0000, 125000.0000, 125000.0000, 125000.0000, 125000.0000, 1.0000, 1, 0, NULL),
(518, '2021-12-29', 39, 503, 149, 379, 2.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 12.0000, 1, 0, NULL),
(519, '2021-12-30', 38, 504, 150, 359, 2.0000, 140000.0000, 140000.0000, 150000.0000, 150000.0000, 2.0000, 1, 0, NULL),
(520, '2021-12-30', 88, 505, 150, 305, 2.0000, 34000.0000, 34000.0000, 50000.0000, 50000.0000, 5.0000, 1, 0, NULL),
(523, '2021-12-30', 40, 507, 151, 344, 1.0000, 125000.0000, 125000.0000, 125000.0000, 125000.0000, 0.0000, 1, 0, NULL),
(524, '2021-12-30', 40, 507, 151, 383, 2.0000, 125000.0000, 125000.0000, 125000.0000, 125000.0000, 3.0000, 1, 0, NULL),
(525, '2021-12-30', 40, 508, 152, 383, 3.0000, 125000.0000, 125000.0000, 125000.0000, 125000.0000, 0.0000, 1, 0, NULL),
(526, '2021-12-30', 72, 509, 153, 285, 3.0000, 37500.0000, 37500.0000, 45000.0000, 45000.0000, 0.0000, 1, 0, NULL),
(527, '2021-12-30', 72, 509, 153, 357, 1.0000, 37500.0000, 37500.0000, 45000.0000, 45000.0000, 5.0000, 1, 0, NULL),
(528, '2021-12-30', 39, 510, 153, 379, 1.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 11.0000, 1, 0, NULL),
(529, '2021-12-30', 38, 511, 154, 359, 2.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 0.0000, 1, 0, NULL),
(530, '2021-12-30', 37, 512, 155, 337, 2.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 10.0000, 1, 0, NULL),
(531, '2021-12-30', 52, 513, 155, 385, 1.0000, 80000.0000, 80000.0000, 80000.0000, 80000.0000, 8.0000, 1, 0, NULL),
(534, '2021-12-30', 37, 516, 157, 337, 1.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 9.0000, 1, 0, NULL),
(535, '2021-12-30', 52, 517, 157, 385, 1.0000, 80000.0000, 80000.0000, 80000.0000, 80000.0000, 7.0000, 1, 0, NULL),
(536, '2021-12-30', 66, 518, 158, 349, 1.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 9.0000, 1, 0, NULL),
(537, '2021-12-30', 39, 519, 158, 379, 1.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 10.0000, 1, 0, NULL),
(546, '2021-12-31', 90, 528, 159, 390, 20.0000, 160000.0000, 160000.0000, 165000.0000, 165000.0000, 1.0000, 1, 0, NULL),
(563, '2021-12-31', 39, 545, 162, 379, 4.0000, 68000.0000, 68000.0000, 71000.0000, 71000.0000, 1.0000, 1, 0, NULL),
(564, '2021-12-31', 39, 546, 161, 379, 4.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 1.0000, 1, 0, NULL),
(565, '2021-12-31', 37, 547, 163, 337, 2.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 7.0000, 1, 0, NULL),
(566, '2021-12-31', 39, 548, 163, 379, 1.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 1.0000, 1, 0, NULL),
(567, '2021-12-31', 38, 549, 164, 393, 1.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 8.0000, 1, 0, NULL),
(568, '2021-12-31', 89, 550, 164, 381, 1.0000, 82000.0000, 82000.0000, 82000.0000, 82000.0000, 8.0000, 1, 0, NULL),
(575, '2021-12-31', 65, 557, 165, 279, 1.0000, 0.0000, 0.0000, 53000.0000, 53000.0000, 5.0000, 1, 0, NULL),
(574, '2021-12-31', 38, 556, 165, 393, 1.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 8.0000, 1, 0, NULL),
(576, '2021-12-31', 69, 558, 165, 351, 1.0000, 65000.0000, 65000.0000, 65000.0000, 65000.0000, 9.0000, 1, 0, NULL),
(572, '2021-12-31', 37, 554, 166, 337, 1.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 6.0000, 1, 0, NULL),
(573, '2021-12-31', 39, 555, 166, 379, 1.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 0.0000, 1, 0, NULL),
(579, '2021-12-31', 38, 561, 167, 393, 2.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 6.0000, 1, 0, NULL),
(581, '2021-12-31', 37, 563, 168, 337, 3.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 3.0000, 1, 0, NULL),
(583, '2021-12-31', 40, 565, 170, 392, 1.0000, 125000.0000, 125000.0000, 125000.0000, 125000.0000, 9.0000, 1, 0, NULL),
(584, '2021-12-31', 38, 566, 171, 393, 1.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 5.0000, 1, 0, NULL),
(585, '2021-12-31', 37, 567, 172, 337, 1.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 2.0000, 1, 0, NULL),
(587, '2021-12-31', 38, 569, 173, 393, 1.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 4.0000, 1, 0, NULL),
(588, '2021-12-31', 65, 570, 174, 279, 2.0000, 0.0000, 0.0000, 60000.0000, 60000.0000, 3.0000, 1, 0, NULL),
(599, '2021-12-31', 73, 578, 176, 286, 3.0000, 69000.0000, 69000.0000, 85000.0000, 85000.0000, 0.0000, 1, 0, NULL),
(598, '2021-12-31', 72, 577, 176, 357, 4.0000, 37500.0000, 37500.0000, 45000.0000, 45000.0000, 1.0000, 1, 0, NULL),
(600, '2021-12-31', 73, 578, 176, 384, 7.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 3.0000, 1, 0, NULL),
(613, '2021-12-31', 74, 591, 177, 287, 2.0000, 44000.0000, 44000.0000, 50000.0000, 50000.0000, 1.0000, 1, 0, NULL),
(612, '2021-12-31', 59, 590, 177, 380, 1.0000, -78403.3614, -78403.3614, 45000.0000, 45000.0000, 17.0000, 1, 0, NULL),
(611, '2021-12-31', 51, 589, 177, 273, 4.0000, 0.0000, 0.0000, 44000.0000, 44000.0000, 3.0000, 1, 0, NULL),
(610, '2021-12-31', 40, 588, 177, 392, 1.0000, 125000.0000, 125000.0000, 125000.0000, 125000.0000, 8.0000, 1, 0, NULL),
(609, '2021-12-31', 38, 587, 177, 393, 1.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 3.0000, 1, 0, NULL),
(608, '2021-12-31', 37, 586, 177, 337, 1.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 1.0000, 1, 0, NULL),
(614, '2021-12-31', 80, 592, 177, 293, 1.0000, 95000.0000, 95000.0000, 95000.0000, 95000.0000, 9.0000, 1, 0, NULL),
(617, '2021-12-31', 51, 595, 178, 273, 3.0000, 0.0000, 0.0000, 46000.0000, 46000.0000, 0.0000, 1, 0, NULL),
(618, '2021-12-31', 66, 596, 178, 349, 2.0000, 141304.3480, 141304.3480, 80000.0000, 80000.0000, 7.0000, 1, 0, NULL),
(619, '2021-12-31', 90, 597, 179, 390, 1.0000, 160000.0000, 160000.0000, 160000.0000, 160000.0000, 0.0000, 1, 0, NULL),
(620, '2021-12-31', 75, 598, 180, 382, 1.0000, 95000.0000, 95000.0000, 95000.0000, 95000.0000, 5.0000, 1, 0, NULL),
(621, '2021-12-31', 40, 599, 180, 392, 1.0000, 125000.0000, 125000.0000, 125000.0000, 125000.0000, 7.0000, 1, 0, NULL),
(622, '2021-12-31', 50, 600, 181, 367, 2.0000, 90000.0000, 90000.0000, 91000.0000, 91000.0000, 8.0000, 1, 0, NULL),
(623, '2021-12-31', 89, 601, 182, 381, 2.0000, 82000.0000, 82000.0000, 82000.0000, 82000.0000, 6.0000, 1, 0, NULL),
(624, '2021-12-31', 49, 602, 182, 360, 1.0000, 50000.0000, 50000.0000, 52000.0000, 52000.0000, 1.0000, 1, 0, NULL),
(625, '2021-12-31', 38, 603, 183, 393, 1.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 2.0000, 1, 0, NULL),
(626, '2021-12-31', 38, 604, 184, 393, 1.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 1.0000, 1, 0, NULL),
(627, '2021-12-31', 38, 605, 185, 393, 1.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 0.0000, 1, 0, NULL),
(628, '2021-12-31', 37, 606, 186, 337, 1.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 0.0000, 1, 0, NULL),
(629, '2021-12-31', 37, 606, 186, 388, 2.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 8.0000, 1, 0, NULL),
(630, '2021-12-31', 37, 607, 187, 388, 5.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 3.0000, 1, 0, NULL),
(631, '2021-12-31', 37, 608, 188, 388, 1.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 2.0000, 1, 0, NULL),
(632, '2022-01-03', 37, 609, 189, 388, 2.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 0.0000, 1, 0, NULL),
(633, '2022-01-05', 37, 610, 190, 401, 2.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 5.0000, 1, 0, NULL),
(638, '2022-01-05', 39, 615, 191, 398, 1.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 8.0000, 1, 0, NULL),
(639, '2022-01-05', 78, 616, 191, 304, 1.0000, 63500.0000, 63500.0000, 66500.0000, 66500.0000, 2.0000, 1, 0, NULL),
(641, '2022-01-05', 51, 618, 192, 402, 3.0000, 44000.0000, 44000.0000, 44000.0000, 44000.0000, 7.0000, 1, 0, NULL),
(642, '2022-01-05', 59, 619, 193, 380, 2.0000, 45000.0000, 45000.0000, 50000.0000, 50000.0000, 15.0000, 1, 0, NULL),
(643, '2022-01-05', 71, 620, 193, 284, 1.0000, 110000.0000, 110000.0000, 115000.0000, 115000.0000, 2.0000, 1, 0, NULL),
(644, '2022-01-05', 52, 621, 193, 385, 2.0000, 80000.0000, 80000.0000, 83500.0000, 83500.0000, 5.0000, 1, 0, NULL),
(645, '2022-01-05', 66, 622, 193, 349, 2.0000, 75000.0000, 75000.0000, 80000.0000, 80000.0000, 5.0000, 1, 0, NULL),
(646, '2022-01-05', 69, 623, 193, 351, 1.0000, 65000.0000, 65000.0000, 75000.0000, 75000.0000, 8.0000, 1, 0, NULL),
(647, '2022-01-05', 39, 624, 194, 398, 2.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 6.0000, 1, 0, NULL),
(676, '2022-01-07', 78, 641, 195, 304, 2.0000, 63500.0000, 63500.0000, 66500.0000, 66500.0000, 0.0000, 1, 0, NULL),
(675, '2022-01-07', 74, 640, 195, 407, 19.0000, 44000.0000, 44000.0000, 50000.0000, 50000.0000, 1.0000, 1, 0, NULL),
(674, '2022-01-07', 74, 640, 195, 287, 1.0000, 44000.0000, 44000.0000, 50000.0000, 50000.0000, 0.0000, 1, 0, NULL),
(673, '2022-01-07', 52, 639, 195, 391, 5.0000, 79169.5147, 79169.5147, 80000.0000, 80000.0000, 0.0000, 1, 0, NULL),
(672, '2022-01-07', 52, 639, 195, 385, 5.0000, 79169.5147, 79169.5147, 80000.0000, 80000.0000, 0.0000, 1, 0, NULL),
(671, '2022-01-07', 51, 638, 195, 409, 3.0000, 44000.0000, 44000.0000, 44000.0000, 44000.0000, 7.0000, 1, 0, NULL),
(670, '2022-01-07', 51, 638, 195, 402, 7.0000, 44000.0000, 44000.0000, 44000.0000, 44000.0000, 0.0000, 1, 0, NULL),
(669, '2022-01-07', 39, 637, 195, 406, 4.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 5.0000, 1, 0, NULL),
(668, '2022-01-07', 39, 637, 195, 398, 6.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 0.0000, 1, 0, NULL),
(667, '2022-01-07', 37, 636, 195, 405, 5.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 5.0000, 1, 0, NULL),
(666, '2022-01-07', 37, 636, 195, 401, 5.0000, 75000.0000, 75000.0000, 75000.0000, 75000.0000, 0.0000, 1, 0, NULL),
(677, '2022-01-07', 78, 641, 195, 408, 18.0000, 63500.0000, 63500.0000, 66500.0000, 66500.0000, 2.0000, 1, 0, NULL),
(664, '2022-01-07', 39, 634, 196, 406, 1.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 5.0000, 1, 0, NULL),
(665, '2022-01-07', 77, 635, 196, 368, 1.0000, 70000.0000, 70000.0000, 72000.0000, 72000.0000, 0.0000, 1, 0, NULL),
(678, '2022-01-10', 76, 642, 197, 346, 7.0000, 37000.0000, 37000.0000, 38000.0000, 38000.0000, 0.0000, 1, 0, NULL),
(679, '2022-01-10', 76, 642, 197, 411, 13.0000, 37000.0000, 37000.0000, 38000.0000, 38000.0000, 5.0000, 1, 0, NULL),
(680, '2022-01-10', 90, 643, 198, 397, 10.0000, 160000.0000, 160000.0000, 165000.0000, 165000.0000, 10.0000, 1, 0, NULL),
(681, '2022-01-12', 38, 644, 199, 400, 1.0000, 140000.0000, 140000.0000, 140000.0000, 140000.0000, 3.0000, 1, 0, NULL),
(682, '2022-01-12', 87, 645, 200, 302, 1.0000, 25000.0000, 25000.0000, 27000.0000, 27000.0000, 4.0000, 1, 0, NULL),
(683, '2022-01-13', 90, 646, 201, 397, 7.0000, 160000.0000, 160000.0000, 165000.0000, 165000.0000, 3.0000, 1, 0, NULL),
(684, '2022-01-13', 75, 647, 202, 382, 1.0000, 95000.0000, 95000.0000, 100000.0000, 100000.0000, 4.0000, 1, 0, NULL),
(685, '2022-01-13', 40, 648, 202, 404, 1.0000, 125000.0000, 125000.0000, 130000.0000, 130000.0000, 6.0000, 1, 0, NULL),
(686, '2022-01-13', 38, 649, 202, 400, 1.0000, 140000.0000, 140000.0000, 150000.0000, 150000.0000, 2.0000, 1, 0, NULL),
(687, '2022-01-13', 90, 650, 203, 397, 3.0000, 160000.0000, 160000.0000, 165000.0000, 165000.0000, 0.0000, 1, 0, NULL),
(688, '2022-01-13', 90, 650, 203, 412, 17.0000, 160000.0000, 160000.0000, 165000.0000, 165000.0000, 3.0000, 1, 0, NULL),
(689, '2022-01-13', 65, 651, 204, 279, 1.0000, 0.0000, 0.0000, 60000.0000, 60000.0000, 2.0000, 1, 0, NULL),
(690, '2022-01-13', 51, 652, 205, 409, 1.0000, 44000.0000, 44000.0000, 44000.0000, 44000.0000, 6.0000, 1, 0, NULL),
(691, '2022-01-13', 39, 653, 205, 406, 1.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 4.0000, 1, 0, NULL),
(692, '2022-01-13', 51, 654, 206, 409, 1.0000, 44000.0000, 44000.0000, 44000.0000, 44000.0000, 5.0000, 1, 0, NULL),
(693, '2022-01-13', 39, 655, 206, 406, 1.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 3.0000, 1, 0, NULL),
(694, '2022-01-13', 39, 656, 207, 406, 1.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 2.0000, 1, 0, NULL),
(695, '2022-01-13', 51, 657, 207, 409, 1.0000, 44000.0000, 44000.0000, 44000.0000, 44000.0000, 4.0000, 1, 0, NULL),
(696, '2022-01-13', 73, 658, 208, 384, 1.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 2.0000, 1, 0, NULL),
(697, '2022-01-13', 39, 659, 208, 406, 1.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 1.0000, 1, 0, NULL),
(698, '2022-01-13', 52, 660, 208, 410, 1.0000, 80000.0000, 80000.0000, 80000.0000, 80000.0000, 9.0000, 1, 0, NULL),
(699, '2022-01-13', 89, 661, 208, 381, 1.0000, 82000.0000, 82000.0000, 82000.0000, 82000.0000, 5.0000, 1, 0, NULL),
(700, '2022-01-13', 70, 662, 208, 335, 1.0000, 57000.0000, 57000.0000, 57000.0000, 57000.0000, 22.0000, 1, 0, NULL),
(705, '2022-01-14', 37, 667, 209, 405, 1.0000, 75000.0000, 75000.0000, 80000.0000, 80000.0000, 4.0000, 1, 0, NULL),
(706, '2022-01-14', 74, 668, 209, 407, 1.0000, 44000.0000, 44000.0000, 52500.0000, 52500.0000, 0.0000, 1, 0, NULL),
(707, '2022-01-14', 36, 669, 210, 364, 1.0000, 120000.0000, 120000.0000, 130000.0000, 130000.0000, 6.0000, 1, 0, NULL),
(708, '2022-01-14', 39, 670, 210, 406, 1.0000, 68000.0000, 68000.0000, 68000.0000, 68000.0000, 0.0000, 1, 0, NULL),
(709, '2022-01-14', 78, 671, 211, 408, 1.0000, 63500.0000, 63500.0000, 70000.0000, 70000.0000, 1.0000, 1, 0, NULL),
(710, '2022-01-14', 50, 672, 211, 367, 1.0000, 90000.0000, 90000.0000, 95000.0000, 95000.0000, 7.0000, 1, 0, NULL),
(715, '2022-01-14', 37, 677, 212, 405, 1.0000, 75000.0000, 75000.0000, 80000.0000, 80000.0000, 3.0000, 1, 0, NULL),
(714, '2022-01-14', 40, 676, 213, 404, 1.0000, 125000.0000, 125000.0000, 130000.0000, 130000.0000, 5.0000, 1, 0, NULL),
(716, '2022-01-14', 39, 678, 214, 416, 2.0000, 68000.0000, 68000.0000, 71000.0000, 71000.0000, 8.0000, 1, 0, NULL),
(717, '2022-01-14', 59, 679, 214, 380, 2.0000, 45000.0000, 45000.0000, 50000.0000, 50000.0000, 13.0000, 1, 0, NULL),
(718, '2022-01-14', 78, 680, 214, 429, 2.0000, 63500.0000, 63500.0000, 70000.0000, 70000.0000, 8.0000, 1, 0, NULL),
(723, '2022-01-14', 51, 685, 215, 409, 3.0000, 44000.0000, 44000.0000, 46000.0000, 46000.0000, 1.0000, 1, 0, NULL),
(722, '2022-01-14', 89, 684, 216, 381, 1.0000, 82000.0000, 82000.0000, 85000.0000, 85000.0000, 4.0000, 1, 0, NULL),
(724, '2022-01-14', 52, 686, 217, 410, 1.0000, 80000.0000, 80000.0000, 80000.0000, 80000.0000, 8.0000, 1, 0, NULL),
(725, '2022-01-14', 73, 687, 217, 384, 1.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 1.0000, 1, 0, NULL),
(726, '2022-01-14', 40, 688, 218, 404, 1.0000, 125000.0000, 125000.0000, 130000.0000, 130000.0000, 4.0000, 1, 0, NULL),
(727, '2022-01-14', 40, 689, 219, 404, 1.0000, 125000.0000, 125000.0000, 130000.0000, 130000.0000, 3.0000, 1, 0, NULL),
(728, '2022-01-15', 75, 690, 220, 382, 1.0000, 95000.0000, 95000.0000, 100000.0000, 100000.0000, 3.0000, 1, 0, NULL),
(729, '2022-01-15', 75, 691, 221, 382, 1.0000, 95000.0000, 95000.0000, 100000.0000, 100000.0000, 2.0000, 1, 0, NULL),
(732, '2022-01-15', 39, 694, 222, 416, 1.0000, 68000.0000, 68000.0000, 71000.0000, 71000.0000, 7.0000, 1, 0, NULL),
(731, '2022-01-15', 66, 693, 223, 349, 1.0000, 75000.0000, 75000.0000, 80000.0000, 80000.0000, 4.0000, 1, 0, NULL),
(733, '2022-01-15', 39, 695, 224, 416, 1.0000, 68000.0000, 68000.0000, 71000.0000, 71000.0000, 6.0000, 1, 0, NULL);

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
(5, 'WMEAT STORE', 0),
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
(1, '99', 'Category');

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
(7, 'kasir', 'kasir');

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
(1, '2015-03-01', 8, 3, 9, 1, 8, 1, 214, 2, 1, 1, 38, 38);

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
(95, '2021-11-30 08:27:00', 70, NULL, NULL, 'SI2021/11/0059', NULL, 'other', '', '', '', '', '', 'Visa', 342000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(94, '2021-11-26 08:26:00', 52, NULL, NULL, 'SI2021/11/0058', NULL, 'other', '', '', '', '', '', 'Visa', 80000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(92, '2021-11-18 08:21:00', 69, NULL, NULL, 'SI2021/11/0056', NULL, 'cash', '', '', '', '', '', 'Visa', 285000.0000, NULL, 6, NULL, 'received', '<p>mas zen</p>', 0.0000, 0.0000, NULL),
(93, '2021-11-19 08:24:00', 70, NULL, NULL, 'SI2021/11/0057', NULL, 'other', '', '', '', '', '', 'Visa', 0.0000, NULL, 6, NULL, 'received', '<p>mas zen</p>', 0.0000, 0.0000, NULL),
(90, '2021-11-29 08:34:00', 66, NULL, NULL, 'SI2021/11/0054', NULL, 'cash', '', '', '', '', '', 'Visa', 100000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(91, '2021-11-18 04:00:00', 68, NULL, NULL, 'SI2021/11/0055', NULL, 'cash', '', '', '', '', '', 'Visa', 266000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(89, '2021-11-16 10:32:00', 65, NULL, NULL, 'SI2021/11/0053', NULL, 'cash', '', '', '', '', '', 'Visa', 100000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(88, '2021-11-16 10:11:00', 63, NULL, NULL, 'SI2021/11/0052', NULL, 'other', '', '', '', '', '', 'Visa', 67000.0000, NULL, 1, NULL, 'received', '', 0.0000, 0.0000, NULL),
(60, '2021-11-02 06:39:00', 29, NULL, NULL, 'SI2021/11/0023', NULL, 'cash', '', '', '', '', '', 'Visa', 0.0000, NULL, 6, NULL, 'received', '<p>Mas Teddy PWM</p>', 0.0000, 0.0000, NULL),
(61, '2021-11-05 06:41:00', 29, NULL, NULL, 'SI2021/11/0024', NULL, 'cash', '', '', '', '', '', 'Visa', 187500.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(62, '2021-11-03 06:42:00', 30, NULL, NULL, 'SI2021/11/0025', NULL, 'cash', '', '', '', '', '', 'Visa', 41500.0000, NULL, 6, NULL, 'received', '<p>Mas Teddy PWM</p>', 0.0000, 0.0000, NULL),
(63, '2021-11-03 07:29:00', 32, NULL, NULL, 'SI2021/11/0026', NULL, 'other', '', '', '', '', '', 'Visa', 404000.0000, NULL, 6, NULL, 'received', '<p>E Commercee Tokopedia</p>', 0.0000, 0.0000, NULL),
(74, '2021-11-04 03:15:00', 44, NULL, NULL, 'SI2021/11/0037', NULL, 'cash', '', '', '', '', '', 'Visa', 197000.0000, NULL, 6, NULL, 'received', '<p>Nurul Fatihat</p>', 0.0000, 0.0000, NULL),
(65, '2021-11-04 08:19:00', 34, NULL, NULL, 'SI2021/11/0028', NULL, 'other', '', '', '', '', '', 'Visa', 187500.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(66, '2021-11-04 08:25:00', 35, NULL, NULL, 'SI2021/11/0029', NULL, 'other', '', '', '', '', '', 'Visa', 0.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(67, '2021-11-04 08:28:00', 35, NULL, NULL, 'SI2021/11/0030', NULL, 'other', '', '', '', '', '', 'Visa', 107000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(68, '2021-11-04 08:30:00', 36, NULL, NULL, 'SI2021/11/0031', NULL, 'other', '', '', '', '', '', 'Visa', 140000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(69, '2021-11-04 08:56:00', 37, NULL, NULL, 'SI2021/11/0032', NULL, 'other', '', '', '', '', '', 'Visa', 158000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(70, '2021-11-05 09:05:00', 39, NULL, NULL, 'SI2021/11/0033', NULL, 'other', '', '', '', '', '', 'Visa', 262500.0000, NULL, 6, NULL, 'received', '<p>E Commercee Aprindy</p>', 0.0000, 0.0000, NULL),
(71, '2021-11-09 08:33:00', 40, NULL, NULL, 'SI2021/11/0034', NULL, 'other', '', '', '', '', '', 'Visa', 645000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(72, '2021-11-05 08:32:00', 41, NULL, NULL, 'SI2021/11/0035', NULL, 'cash', '', '', '', '', '', 'Visa', 390000.0000, NULL, 6, NULL, 'received', '<p>Ibu Sherry</p>', 0.0000, 0.0000, NULL),
(73, '2021-11-05 09:00:00', 42, NULL, NULL, 'SI2021/11/0036', NULL, 'cash', '', '', '', '', '', 'Visa', 349000.0000, NULL, 6, NULL, 'received', '<p>Bapak Andri</p>', 0.0000, 0.0000, NULL),
(75, '2021-11-09 07:31:00', 47, NULL, NULL, 'SI2021/11/0038', NULL, 'cash', '', '', '', '', '', 'Visa', 225000.0000, NULL, 6, NULL, 'received', '<p>Bapak Fani</p>', 0.0000, 0.0000, NULL),
(76, '2021-11-08 09:34:00', 46, NULL, NULL, 'SI2021/11/0039', NULL, 'other', '', '', '', '', '', 'Visa', 467500.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(78, '2021-11-09 07:06:00', 53, NULL, NULL, 'SI2021/11/0041', NULL, 'cash', '', '', '', '', '', 'Visa', 85000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(79, '2021-11-10 07:41:00', 54, NULL, NULL, 'SI2021/11/0042', NULL, 'cash', '', '', '', '', '', 'Visa', 250000.0000, NULL, 6, NULL, 'received', '<p>Ibu Sonia</p>', 0.0000, 0.0000, NULL),
(81, '2021-11-15 06:54:00', 58, NULL, NULL, 'SI2021/11/0045', NULL, 'other', '', '', '', '', '', 'Visa', 1665000.0000, NULL, 1, NULL, 'received', '', 0.0000, 0.0000, NULL),
(82, '2021-11-15 06:54:00', 56, NULL, NULL, 'SI2021/11/0046', NULL, 'other', '', '', '', '', '', 'Visa', 136000.0000, NULL, 1, NULL, 'received', '', 0.0000, 0.0000, NULL),
(83, '2021-11-15 09:00:00', 59, NULL, NULL, 'SI2021/11/0047', NULL, 'cash', '', '', '', '', '', 'Visa', 90000.0000, NULL, 1, NULL, 'received', '', 0.0000, 0.0000, NULL),
(84, '2021-11-16 07:17:00', 60, NULL, NULL, 'SI2021/11/0048', NULL, 'cash', '', '', '', '', '', 'Visa', 422000.0000, NULL, 1, NULL, 'received', '', 0.0000, 0.0000, NULL),
(85, '2021-11-25 07:33:00', 57, NULL, NULL, 'SI2021/11/0049', NULL, 'other', '', '', '', '', '', 'Visa', 1736000.0000, NULL, 1, NULL, 'received', '', 0.0000, 0.0000, NULL),
(86, '2021-11-25 07:45:00', 61, NULL, NULL, 'SI2021/11/0050', NULL, 'cash', '', '', '', '', '', 'Visa', 700000.0000, NULL, 1, NULL, 'received', '<p>Ibu Elisa WMP</p>', 0.0000, 0.0000, NULL),
(87, '2021-11-25 07:54:00', 27, NULL, NULL, 'SI2021/11/0051', NULL, 'other', '', '', '', '', '', 'Visa', 1240000.0000, NULL, 1, NULL, 'received', '', 0.0000, 0.0000, NULL),
(96, '2021-11-30 08:44:00', 74, NULL, NULL, 'SI2021/11/0060', NULL, 'cash', '', '', '', '', '', 'Visa', 0.0000, NULL, 6, NULL, 'received', '<p>rizky wmu</p>', 0.0000, 0.0000, NULL),
(97, '2021-11-22 08:47:00', 74, NULL, NULL, 'SI2021/11/0061', NULL, 'cash', '', '', '', '', '', 'Visa', 190000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(98, '2021-11-22 09:49:00', 75, NULL, NULL, 'SI2021/11/0062', NULL, 'cash', '', '', '', '', '', 'Visa', 74000.0000, NULL, 6, NULL, 'received', '<p>Yola</p>', 0.0000, 0.0000, NULL),
(99, '2021-11-22 09:51:00', 76, NULL, NULL, 'SI2021/11/0063', NULL, 'cash', '', '', '', '', '', 'Visa', 205000.0000, NULL, 6, NULL, 'received', '<p>retno</p>', 0.0000, 0.0000, NULL),
(100, '2021-11-22 08:55:00', 75, NULL, NULL, 'SI2021/11/0064', NULL, 'other', '', '', '', '', '', 'Visa', 74000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(101, '2021-11-23 04:59:00', 78, NULL, NULL, 'SI2021/11/0065', NULL, 'cash', '', '', '', '', '', 'Visa', 360000.0000, NULL, 6, NULL, 'received', '<p>aulia</p>', 0.0000, 0.0000, NULL),
(102, '2021-11-26 09:09:00', 81, NULL, NULL, 'SI2021/11/0066', NULL, 'cash', '', '', '', '', '', 'Visa', 74000.0000, NULL, 6, NULL, 'received', '<p>dede riani ( tokopedia)</p>', 0.0000, 0.0000, NULL),
(103, '2021-11-26 09:11:00', 81, NULL, NULL, 'SI2021/11/0067', NULL, 'other', '', '', '', '', '', 'Visa', 148000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(104, '2021-11-27 09:39:00', 82, NULL, NULL, 'SI2021/11/0068', NULL, 'other', '', '', '', '', '', 'Visa', 868000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(105, '2021-11-26 09:40:00', 82, NULL, NULL, 'SI2021/11/0069', NULL, 'other', '', '', '', '', '', 'Visa', 35000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(106, '2021-11-26 10:12:00', 83, NULL, NULL, 'SI2021/11/0070', NULL, 'cash', '', '', '', '', '', 'Visa', 285000.0000, NULL, 6, NULL, 'received', '<p>zen</p>', 0.0000, 0.0000, NULL),
(107, '2021-11-26 10:13:00', 84, NULL, NULL, 'SI2021/11/0071', NULL, 'cash', '', '', '', '', '', 'Visa', 211000.0000, NULL, 6, NULL, 'received', '<p>Putri </p>', 0.0000, 0.0000, NULL),
(108, '2021-11-29 04:54:00', 85, NULL, NULL, 'SI2021/11/0072', NULL, 'other', '', '', '', '', '', 'Visa', 0.0000, NULL, 6, NULL, 'received', '<p>Nova</p>', 0.0000, 0.0000, NULL),
(109, '2021-11-29 09:56:00', 85, NULL, NULL, 'SI2021/11/0073', NULL, 'other', '', '', '', '', '', 'Visa', 211000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(110, '2021-12-01 05:56:00', 88, NULL, NULL, 'SI2021/12/0074', NULL, 'cash', '', '', '', '', '', 'Visa', 1240000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(111, '2021-12-02 05:57:00', 89, NULL, NULL, 'SI2021/12/0075', NULL, 'cash', '', '', '', '', '', 'Visa', 1954000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(112, '2021-12-02 06:04:00', 90, NULL, NULL, 'SI2021/12/0076', NULL, 'cash', '', '', '', '', '', 'Visa', 620000.0000, NULL, 6, NULL, 'received', '<p>Mba Reanie CAM</p>', 0.0000, 0.0000, NULL),
(113, '2021-12-04 06:13:00', 92, NULL, NULL, 'SI2021/12/0077', NULL, 'cash', '', '', '', '', '', 'Visa', 380000.0000, NULL, 6, NULL, 'received', '<p>Djarot WMP</p>', 0.0000, 0.0000, NULL),
(114, '2021-12-06 06:21:00', 93, NULL, NULL, 'SI2021/12/0078', NULL, 'cash', '', '', '', '', '', 'Visa', 2580000.0000, NULL, 6, NULL, 'received', '<p>Djarot WMP</p>', 0.0000, 0.0000, NULL),
(115, '2021-12-07 07:57:00', 95, NULL, NULL, 'SI2021/12/0079', NULL, 'cash', '', '', '', '', '', 'Visa', 2580000.0000, NULL, 6, NULL, 'received', '<p>Dhyna WMP</p>', 0.0000, 0.0000, NULL),
(116, '2021-12-07 08:11:00', 97, NULL, NULL, 'SI2021/12/0080', NULL, 'cash', '', '', '', '', '', 'Visa', 218000.0000, NULL, 6, NULL, 'received', '<p>Mba winda</p>', 0.0000, 0.0000, NULL),
(117, '2021-12-09 01:57:00', 100, NULL, NULL, 'SI2021/12/0081', NULL, 'cash', '', '', '', '', '', 'Visa', 74000.0000, NULL, 6, NULL, 'received', '<p>Thunty Tokopedia</p>', 0.0000, 0.0000, NULL),
(118, '2021-12-09 03:58:00', 101, NULL, NULL, 'SI2021/12/0082', NULL, 'cash', '', '', '', '', '', 'Visa', 1240000.0000, NULL, 6, NULL, 'received', '<p>Thunty Tokopedia</p>', 0.0000, 0.0000, NULL),
(119, '2021-12-13 06:33:00', 102, NULL, NULL, 'SI2021/12/0083', NULL, 'other', '', '', '', '', '', 'Visa', 186000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(120, '2021-12-10 07:03:00', 106, NULL, NULL, 'SI2021/12/0084', NULL, 'other', '', '', '', '', '', 'Visa', 2580000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(121, '2021-12-13 05:40:00', 109, NULL, NULL, 'SI2021/12/0085', NULL, 'cash', '', '', '', '', '', 'Visa', 59840.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(122, '2021-12-10 05:42:00', 101, NULL, NULL, 'SI2021/12/0086', NULL, 'other', '', '', '', '', '', 'Visa', 50000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(123, '2021-12-15 05:43:00', 110, NULL, NULL, 'SI2021/12/0087', NULL, 'cash', '', '', '', '', '', 'Visa', 132000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(124, '2021-12-14 06:01:00', 111, NULL, NULL, 'SI2021/12/0088', NULL, 'cash', '', '', '', '', '', 'Visa', 353000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(125, '2021-12-14 06:06:00', 112, NULL, NULL, 'SI2021/12/0089', NULL, 'cash', '', '', '', '', '', 'Visa', 80000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(126, '2021-12-15 07:02:00', 114, NULL, NULL, 'SI2021/12/0091', NULL, 'cash', '', '', '', '', '', 'Visa', 44880.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(127, '2021-12-15 08:05:00', 117, NULL, NULL, 'SI2021/12/0093', NULL, 'cash', '', '', '', '', '', 'Visa', 190000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(128, '2021-12-15 07:16:00', 117, NULL, NULL, 'SI2021/12/0094', NULL, 'other', '', '', '', '', '', 'Visa', -22000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(129, '2021-12-15 07:38:00', 117, NULL, NULL, 'SI2021/12/0095', NULL, 'other', '', '', '', '', '', 'Visa', -800.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(130, '2021-12-15 07:38:00', 118, NULL, NULL, 'SI2021/12/0096', NULL, 'other', '', '', '', '', '', 'Visa', 167200.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(131, '2021-12-17 07:39:00', 119, NULL, NULL, 'SI2021/12/0097', NULL, 'cash', '', '', '', '', '', 'Visa', 68000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(132, '2021-12-16 08:00:00', 120, NULL, NULL, 'SI2021/12/0098', NULL, 'cash', '', '', '', '', '', 'Visa', 93280.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(133, '2021-12-16 08:01:00', 121, NULL, NULL, 'SI2021/12/0099', NULL, 'cash', '', '', '', '', '', 'Visa', 140000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(134, '2021-12-17 02:07:00', 123, NULL, NULL, 'SI2021/12/0100', NULL, 'cash', '', '', '', '', '', 'Visa', 126000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(135, '2021-12-17 02:10:00', 124, NULL, NULL, 'SI2021/12/0101', NULL, 'cash', '', '', '', '', '', 'Visa', 1650000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(136, '2021-12-17 02:13:00', 125, NULL, NULL, 'SI2021/12/0102', NULL, 'cash', '', '', '', '', '', 'Visa', 76000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(137, '2021-12-21 02:41:00', 129, NULL, NULL, 'SI2021/12/0103', NULL, 'cash', '', '', '', '', '', 'Visa', 265000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(138, '2021-12-10 02:54:00', 105, NULL, NULL, 'SI2021/12/0104', NULL, 'other', '', '', '', '', '', 'Visa', 123200.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(139, '2021-12-15 02:54:00', 104, NULL, NULL, 'SI2021/12/0105', NULL, 'other', '', '', '', '', '', 'Visa', 405000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(140, '2021-12-15 02:55:00', 103, NULL, NULL, 'SI2021/12/0106', NULL, 'cash', '', '', '', '', '', 'Visa', 66000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(141, '2021-12-10 02:55:00', 99, NULL, NULL, 'SI2021/12/0107', NULL, 'other', '', '', '', '', '', 'Visa', 2455000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(142, '2021-12-16 02:56:00', 94, NULL, NULL, 'SI2021/12/0108', NULL, 'other', '', '', '', '', '', 'Visa', 1087000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(143, '2021-12-03 02:57:00', 73, NULL, NULL, 'SI2021/12/0109', NULL, 'other', '', '', '', '', '', 'Visa', 621000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(144, '2021-12-15 02:57:00', 67, NULL, NULL, 'SI2021/12/0110', NULL, 'other', '', '', '', '', '', 'Visa', 270000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(145, '2021-12-22 04:24:00', 126, NULL, NULL, 'SI2021/12/0111', NULL, 'other', '', '', '', '', '', 'Visa', 233000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(146, '2021-12-22 04:07:00', 130, NULL, NULL, 'SI2021/12/0112', NULL, 'cash', '', '', '', '', '', 'Visa', 3300000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(147, '2021-12-06 04:13:00', 64, NULL, NULL, 'SI2021/12/0113', NULL, 'other', '', '', '', '', '', 'Visa', 280000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(148, '2021-12-23 04:17:00', 131, NULL, NULL, 'SI2021/12/0114', NULL, 'cash', '', '', '', '', '', 'Visa', 228000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(149, '2021-12-23 02:26:00', 132, NULL, NULL, 'SI2021/12/0115', NULL, 'cash', '', '', '', '', '', 'Visa', 225000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(150, '2021-12-23 02:32:00', 133, NULL, NULL, 'SI2021/12/0116', NULL, 'cash', '', '', '', '', '', 'Visa', 41800.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(151, '2021-12-23 07:11:00', 134, NULL, NULL, 'SI2021/12/0117', NULL, 'cash', '', '', '', '', '', 'Visa', 228800.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(152, '2021-12-24 09:10:00', 134, NULL, NULL, 'SI2021/12/0118', NULL, 'other', '', '', '', '', '', 'Visa', 6200.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(153, '2021-12-24 09:28:00', 135, NULL, NULL, 'SI2021/12/0119', NULL, 'other', '', '', '', '', '', 'Visa', 110000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(154, '2021-12-27 09:30:00', 136, NULL, NULL, 'SI2021/12/0120', NULL, 'other', '', '', '', '', '', 'Visa', 138000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(155, '2022-12-28 04:01:00', 140, NULL, NULL, 'SI2022/01/0121', NULL, 'other', '', '', '', '', '', 'Visa', 66000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(156, '2021-12-28 07:02:00', 138, NULL, NULL, 'SI2022/01/0122', NULL, 'other', '', '', '', '', '', 'Visa', 167200.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(157, '2021-12-28 04:57:00', 141, NULL, NULL, 'SI2022/01/0123', NULL, 'other', '', '', '', '', '', 'Visa', 130000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(158, '2021-12-28 09:59:00', 143, NULL, NULL, 'SI2022/01/0124', NULL, 'cash', '', '', '', '', '', 'Visa', 45000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(159, '2021-12-28 10:04:00', 143, NULL, NULL, 'SI2022/01/0125', NULL, 'other', '', '', '', '', '', 'Visa', 5000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(160, '2021-12-28 02:18:00', 146, NULL, NULL, 'SI2022/01/0126', NULL, 'other', '', '', '', '', '', 'Visa', 0.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(161, '2021-12-28 11:31:00', 146, NULL, NULL, 'SI2022/01/0127', NULL, 'other', '', '', '', '', '', 'Visa', 76000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(162, '2021-12-28 11:52:00', 148, NULL, NULL, 'SI2022/01/0128', NULL, 'cash', '', '', '', '', '', 'Visa', 350000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(163, '2021-12-28 12:04:00', 150, NULL, NULL, 'SI2022/01/0129', NULL, 'cash', '', '', '', '', '', 'Visa', 400000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(164, '2021-12-29 03:40:00', 147, NULL, NULL, 'SI2022/01/0130', NULL, 'other', '', '', '', '', '', 'Visa', 255000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(165, '2022-01-30 05:53:00', 151, NULL, NULL, 'SI2022/01/0131', NULL, 'other', '', '', '', '', '', 'Visa', 350000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(166, '2022-01-05 02:13:00', 145, NULL, NULL, 'SI2022/01/0132', NULL, 'other', '', '', '', '', '', 'Visa', 123200.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(167, '2022-01-03 02:14:00', 122, NULL, NULL, 'SI2022/01/0133', NULL, 'other', '', '', '', '', '', 'Visa', 169840.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(168, '2021-12-30 06:15:00', 152, NULL, NULL, 'SI2022/01/0134', NULL, 'cash', '', '', '', '', '', 'Visa', 350000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(169, '2021-12-30 06:40:00', 153, NULL, NULL, 'SI2022/01/0135', NULL, 'other', '', '', '', '', '', 'Visa', 223000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(170, '2021-12-30 08:12:00', 159, NULL, NULL, 'SI2022/01/0136', NULL, 'other', '', '', '', '', '', 'Visa', 2480000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(171, '2021-12-30 08:16:00', 159, NULL, NULL, 'SI2022/01/0137', NULL, 'other', '', '', '', '', '', 'Visa', 820000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(173, '2021-12-31 08:18:00', 162, NULL, NULL, 'SI2022/01/0139', NULL, 'other', '', '', '', '', '', 'Visa', 284000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(174, '2021-12-31 08:55:00', 163, NULL, NULL, 'SI2022/01/0140', NULL, 'cash', '', '', '', '', '', 'Visa', 218000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(175, '2021-12-31 08:56:00', 164, NULL, NULL, 'SI2022/01/0141', NULL, 'cash', '', '', '', '', '', 'Visa', 200500.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(176, '2021-12-31 08:28:00', 164, NULL, NULL, 'SI2022/01/0142', NULL, 'other', '', '', '', '', '', 'Visa', -3500.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(177, '2021-12-31 09:00:00', 165, NULL, NULL, 'SI2022/01/0143', NULL, 'cash', '', '', '', '', '', 'Visa', 234840.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(178, '2021-10-31 08:34:00', 165, NULL, NULL, 'SI2022/01/0144', NULL, 'other', '', '', '', '', '', 'Visa', -1840.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(179, '2021-12-31 09:38:00', 166, NULL, NULL, 'SI2022/01/0145', NULL, 'cash', '', '', '', '', '', 'Visa', 125840.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(180, '2021-12-31 08:49:00', 165, NULL, NULL, 'SI2022/01/0146', NULL, 'other', '', '', '', '', '', 'Visa', 40.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(181, '2021-12-31 10:04:00', 167, NULL, NULL, 'SI2022/01/0147', NULL, 'cash', '', '', '', '', '', 'Visa', 115000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(182, '2021-12-31 09:58:00', 167, NULL, NULL, 'SI2022/01/0148', NULL, 'other', '', '', '', '', '', 'Visa', 140000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(183, '2021-12-31 09:58:00', 168, NULL, NULL, 'SI2022/01/0149', NULL, 'cash', '', '', '', '', '', 'Visa', 225000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(185, '2021-12-31 10:11:00', 170, NULL, NULL, 'SI2022/01/0151', NULL, 'cash', '', '', '', '', '', 'Visa', 110000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(186, '2021-12-31 10:12:00', 171, NULL, NULL, 'SI2022/01/0152', NULL, 'other', '', '', '', '', '', 'Visa', 0.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(187, '2021-12-31 10:37:00', 171, NULL, NULL, 'SI2022/01/0153', NULL, 'other', '', '', '', '', '', 'Visa', 123200.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(188, '2022-01-06 03:47:00', 161, NULL, NULL, 'SI2022/01/0154', NULL, 'other', '', '', '', '', '', 'Visa', 272000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(189, '2022-01-14 03:48:00', 142, NULL, NULL, 'SI2022/01/0155', NULL, 'other', '', '', '', '', '', 'Visa', 225000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(190, '2021-12-31 03:51:00', 137, NULL, NULL, 'SI2022/01/0156', NULL, 'other', '', '', '', '', '', 'Visa', 167200.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(191, '2022-01-13 03:52:00', 113, NULL, NULL, 'SI2022/01/0157', NULL, 'other', '', '', '', '', '', 'Visa', 285000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(192, '2021-12-31 04:03:00', 98, NULL, NULL, 'SI2022/01/0158', NULL, 'other', '', '', '', '', '', 'Visa', 149600.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(193, '2021-12-31 10:14:00', 172, NULL, NULL, 'SI2022/01/0159', NULL, 'cash', '', '', '', '', '', 'Visa', 75000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(194, '2021-12-31 07:11:00', 172, NULL, NULL, 'SI2022/01/0160', NULL, 'other', '', '', '', '', '', 'Visa', -9000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(195, '2021-12-31 07:11:00', 173, NULL, NULL, 'SI2022/01/0161', NULL, 'cash', '', '', '', '', '', 'Visa', 140000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(196, '2021-12-31 10:30:00', 174, NULL, NULL, 'SI2022/01/0162', NULL, 'cash', '', '', '', '', '', 'Visa', 120000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(198, '2021-12-31 10:56:00', 176, NULL, NULL, 'SI2022/01/0164', NULL, 'cash', '', '', '', '', '', 'Visa', 1030000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(199, '2021-12-31 10:59:00', 177, NULL, NULL, 'SI2022/01/0165', NULL, 'other', '', '', '', '', '', 'Visa', 756000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(200, '2021-12-31 07:44:00', 177, NULL, NULL, 'SI2022/01/0166', NULL, 'other', '', '', '', '', '', 'Visa', -25000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(201, '2021-12-31 10:57:00', 178, NULL, NULL, 'SI2022/01/0167', NULL, 'cash', '', '', '', '', '', 'Visa', 298000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(202, '2021-12-31 11:13:00', 179, NULL, NULL, 'SI2022/01/0168', NULL, 'cash', '', '', '', '', '', 'Visa', 160000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(203, '2021-12-31 11:14:00', 180, NULL, NULL, 'SI2022/01/0169', NULL, 'cash', '', '', '', '', '', 'Visa', 220000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(204, '2021-12-31 11:15:00', 181, NULL, NULL, 'SI2022/01/0170', NULL, 'cash', '', '', '', '', '', 'Visa', 160160.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(205, '2021-12-31 11:21:00', 183, NULL, NULL, 'SI2022/01/0171', NULL, 'cash', '', '', '', '', '', 'Visa', 123200.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(206, '2021-12-31 11:26:00', 184, NULL, NULL, 'SI2022/01/0172', NULL, 'cash', '', '', '', '', '', 'Visa', 123200.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(207, '2021-12-31 11:29:00', 185, NULL, NULL, 'SI2022/01/0173', NULL, 'cash', '', '', '', '', '', 'Visa', 123200.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(208, '2021-12-31 11:30:00', 186, NULL, NULL, 'SI2022/01/0174', NULL, 'cash', '', '', '', '', '', 'Visa', 225000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(209, '2021-12-31 11:47:00', 188, NULL, NULL, 'SI2022/01/0175', NULL, 'other', '', '', '', '', '', 'Visa', 150000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(210, '2021-12-31 11:48:00', 188, NULL, NULL, 'SI2022/01/0176', NULL, 'other', '', '', '', '', '', 'Visa', -75000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(211, '2021-12-31 09:10:00', 107, NULL, NULL, 'SI2022/01/0177', NULL, 'other', '', '', '', '', '', 'Visa', 3720000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(212, '2022-01-05 10:00:00', 191, NULL, NULL, 'SI2022/02/0178', NULL, 'cash', '', '', '', '', '', 'Visa', 134500.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(213, '2022-01-05 10:12:00', 193, NULL, NULL, 'SI2022/02/0179', NULL, 'cash', '', '', '', '', '', 'Visa', 617000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(214, '2022-01-05 10:45:00', 196, NULL, NULL, 'SI2022/02/0180', NULL, 'cash', '', '', '', '', '', 'Visa', 0.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(215, '2022-01-05 10:51:00', 196, NULL, NULL, 'SI2022/02/0181', NULL, 'other', '', '', '', '', '', 'Visa', 140000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(216, '2022-01-10 03:53:00', 198, NULL, NULL, 'SI2022/02/0182', NULL, 'cash', '', '', '', '', '', 'Visa', 3300000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(217, '2022-01-12 04:10:00', 199, NULL, NULL, 'SI2022/02/0183', NULL, 'cash', '', '', '', '', '', 'Visa', 140000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(218, '2022-01-12 03:58:00', 200, NULL, NULL, 'SI2022/02/0184', NULL, 'other', '', '', '', '', '', 'Visa', 21060.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(219, '2022-01-10 03:58:00', 198, NULL, NULL, 'SI2022/02/0185', NULL, 'other', '', '', '', '', '', 'Visa', -1650000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(220, '2022-01-05 03:59:00', 192, NULL, NULL, 'SI2022/02/0186', NULL, 'other', '', '', '', '', '', 'Visa', 132000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(221, '2022-01-13 03:00:00', 201, NULL, NULL, 'SI2022/02/0187', NULL, 'cash', '', '', '', '', '', 'Visa', 1155000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(222, '2022-01-13 03:40:00', 202, NULL, NULL, 'SI2022/02/0188', NULL, 'other', '', '', '', '', '', 'Visa', 380000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(223, '2022-01-13 03:41:00', 203, NULL, NULL, 'SI2022/02/0189', NULL, 'other', '', '', '', '', '', 'Visa', 3300000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(224, '2022-01-13 03:55:00', 204, NULL, NULL, 'SI2022/02/0190', NULL, 'other', '', '', '', '', '', 'Visa', 46800.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(225, '2022-01-13 04:00:00', 205, NULL, NULL, 'SI2022/02/0191', NULL, 'other', '', '', '', '', '', 'Visa', 112000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(226, '2022-01-13 04:05:00', 206, NULL, NULL, 'SI2022/02/0192', NULL, 'other', '', '', '', '', '', 'Visa', 112000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(227, '2022-01-13 04:10:00', 207, NULL, NULL, 'SI2022/02/0193', NULL, 'other', '', '', '', '', '', 'Visa', 112000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(228, '2022-01-13 04:12:00', 208, NULL, NULL, 'SI2022/02/0194', NULL, 'other', '', '', '', '', '', 'Visa', 372000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(229, '2022-01-13 04:20:00', 209, NULL, NULL, 'SI2022/02/0195', NULL, 'other', '', '', '', '', '', 'Visa', 132500.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(230, '2022-01-14 01:29:00', 211, NULL, NULL, 'SI2022/02/0196', NULL, 'other', '', '', '', '', '', 'Visa', 143000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(231, '2022-01-14 01:35:00', 212, NULL, NULL, 'SI2022/02/0197', NULL, 'other', '', '', '', '', '', 'Visa', 62400.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(232, '2022-01-14 01:37:00', 213, NULL, NULL, 'SI2022/02/0198', NULL, 'other', '', '', '', '', '', 'Visa', 108000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(233, '2021-12-31 06:55:00', 182, NULL, NULL, 'SI2022/02/0199', NULL, 'other', '', '', '', '', '', 'Visa', 216000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(234, '2022-02-15 06:56:00', 154, NULL, NULL, 'SI2022/02/0200', NULL, 'other', '', '', '', '', '', 'Visa', 255000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(235, '2022-02-15 06:57:00', 127, NULL, NULL, 'SI2022/02/0201', NULL, 'other', '', '', '', '', '', 'Visa', 117040.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(236, '2022-01-14 06:55:00', 214, NULL, NULL, 'SI2022/02/0202', NULL, 'cash', '', '', '', '', '', 'Visa', 360000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(237, '2022-01-15 06:56:00', 215, NULL, NULL, 'SI2022/02/0203', NULL, 'cash', '', '', '', '', '', 'Visa', 116000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(238, '2022-02-19 04:13:00', 216, NULL, NULL, 'SI2022/02/0204', NULL, 'cash', '', '', '', '', '', 'Visa', 66300.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(239, '2022-01-14 06:57:00', 217, NULL, NULL, 'SI2022/02/0205', NULL, 'cash', '', '', '', '', '', 'Visa', 165000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(240, '2022-01-14 07:00:00', 218, NULL, NULL, 'SI2022/02/0206', NULL, 'cash', '', '', '', '', '', 'Visa', 108000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(241, '2022-01-14 07:01:00', 219, NULL, NULL, 'SI2022/02/0207', NULL, 'cash', '', '', '', '', '', 'Visa', 108000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(242, '2022-01-15 01:43:00', 220, NULL, NULL, 'SI2022/02/0208', NULL, 'cash', '', '', '', '', '', 'Visa', 78000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(243, '2022-01-15 01:45:00', 221, NULL, NULL, 'SI2022/02/0209', NULL, 'cash', '', '', '', '', '', 'Visa', 73000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(244, '2022-01-15 08:55:00', 221, NULL, NULL, 'SI2022/02/0210', NULL, 'other', '', '', '', '', '', 'Visa', 5000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(245, '2022-01-15 01:46:00', 222, NULL, NULL, 'SI2022/02/0211', NULL, 'cash', '', '', '', '', '', 'Visa', 55380.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(246, '2022-01-15 01:46:00', 223, NULL, NULL, 'SI2022/02/0212', NULL, 'other', '', '', '', '', '', 'Visa', 62400.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(247, '2022-01-15 01:47:00', 224, NULL, NULL, 'SI2022/02/0213', NULL, 'other', '', '', '', '', '', 'Visa', 55380.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL);

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
(3, 7, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(1, '2021-02-15 03:31:58', 1, 0.0000, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2021-10-04 07:14:27', 6, 10000.0000, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(1, 22, 20, 2, 3, 1, '1', '', '', '', '', '1', 'x1C', 'Ctrl+F3', 'Ctrl+Shift+M', 'Ctrl+Shift+C', 'Ctrl+Shift+A', 'Ctrl+F11', 'Ctrl+F12', 'F4', 'F7', 'F9', 'F8', 'Ctrl+F1', 'Ctrl+F2', 'Ctrl+F10', 0, NULL, 0, 'default', 1, 0, 0, 2, 42, '12345678', 'purchase_code', 'envato_username', '3.4.25', 0, 0, 0, '', 1, 1, 'null', 1, 0, 1);

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
(3, 'WMEAT STORE'),
(4, 'WMU');

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
(1, 70, 2, 6000.0000),
(2, 71, 2, 5000.0000);

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
('56vv4l4g1gf1kt460nk5itiu3hh96hs2', '180.244.165.53', 1648089440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038393434303b),
('fj77iavflib7rottrfb8vr1db86ubhjc', '180.244.165.53', 1648090147, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038393739363b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438303839303438223b6c6173745f69707c733a31343a223138302e3234342e3136352e3533223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('uhvsi9lipi1l1oduh7dq2d2cdt9e08d6', '180.244.165.53', 1648090445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039303135343b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438303839303438223b6c6173745f69707c733a31343a223138302e3234342e3136352e3533223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b637372666b65797c733a383a224165505632466d49223b5f5f63695f766172737c613a323a7b733a373a22637372666b6579223b733a333a226e6577223b733a393a226373726676616c7565223b733a333a226e6577223b7d6373726676616c75657c733a32303a225a77527270413951756c5546376a6f3330566e4f223b),
('u4p46nqfs3e6mcqjgg0i3g4oev9h6k3c', '180.244.165.53', 1648090659, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039303630323b6964656e746974797c733a373a226d616e616a6572223b757365726e616d657c733a373a226d616e616a6572223b656d61696c7c733a31393a226d616e616a657240776d6561742e73746f7265223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438303838373436223b6c6173745f69707c733a31343a223138302e3234342e3136352e3533223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2236223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c4e3b),
('084ictro4hpbvfbdlqt30hb1c6qs2jjm', '180.244.165.53', 1648091159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039313130363b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438303930343835223b6c6173745f69707c733a31343a223138302e3234342e3136352e3533223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('bd029501agaqb66amtq7m4dtjuf13lqg', '45.13.133.51', 1648091154, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039313135343b),
('528lvpi5junj48g7lr5tpmcmaghidj8s', '45.13.133.51', 1648091155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039313135353b7265717565737465645f706167657c733a353a2261646d696e223b),
('s3gm82s30q8v588p1dvv5ikshfanl82a', '45.13.133.51', 1648091155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039313135353b),
('npfrj0jbgtk570u5627742n90f3i54q3', '180.244.165.53', 1648091526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039313532353b),
('okfva4n158imripap6u24onvu5cls0u7', '180.244.165.53', 1648092068, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039313932393b6964656e746974797c733a373a226d616e616a6572223b757365726e616d657c733a373a226d616e616a6572223b656d61696c7c733a31393a226d616e616a657240776d6561742e73746f7265223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438303931393131223b6c6173745f69707c733a31343a223138302e3234342e3136352e3533223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2236223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c4e3b),
('9l3376asu5ujl1s8f2mcib5ttv25uf88', '180.244.165.53', 1648092689, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039323638393b6964656e746974797c733a373a226d616e616a6572223b757365726e616d657c733a373a226d616e616a6572223b656d61696c7c733a31393a226d616e616a657240776d6561742e73746f7265223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438303931393131223b6c6173745f69707c733a31343a223138302e3234342e3136352e3533223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2236223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c4e3b),
('bj5l6q042pftc7lpmp1bj3ivt7argocl', '45.13.133.51', 1648092932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039323933323b),
('peia7400b9qo1dfdj3hjm5j204gmtl13', '45.13.133.51', 1648092932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039323933323b7265717565737465645f706167657c733a353a2261646d696e223b),
('3vjgk9sggsqm5lb3l8e838neuhb5tn39', '45.13.133.51', 1648092932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039323933323b),
('h4kspjs8tnfh6mdljfg5063cnlq3qm83', '45.13.133.51', 1648094752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039343735323b),
('mc5veihtr5k33ofoi5t6cknmiang3a4h', '45.13.133.51', 1648094752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039343735323b7265717565737465645f706167657c733a353a2261646d696e223b),
('g0unhjj71j4knettd2cj2r72j5ch6b77', '45.13.133.51', 1648094752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039343735323b),
('ngge51cugfmulfu9801eg5qnahck9sc4', '180.244.165.53', 1648094804, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039343830343b),
('ibqp75459u7jac85h3kjnfs8hkn21973', '45.13.133.51', 1648096521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039363532313b),
('irsqdgil9iqiso0k4u4j9pl6ai8jtvms', '45.13.133.51', 1648096521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039363532313b7265717565737465645f706167657c733a353a2261646d696e223b),
('m5mh9925vm7hifnb5hfptnoe9sm82ian', '45.13.133.51', 1648096521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039363532313b),
('ljp8m6gl2s2iq5v4r6pe9c1uvr0q0427', '180.244.165.53', 1648097515, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039373531353b7265717565737465645f706167657c733a353a2261646d696e223b),
('je25tms4rv4itn4eqskivcld1cb8fhs0', '45.13.133.51', 1648098371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039383337313b),
('llv6q3hkub2tf4aevk3tdp06h1682dfn', '45.13.133.51', 1648098371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039383337313b7265717565737465645f706167657c733a353a2261646d696e223b),
('hocpaqgogcv5kf5oh1dld21s432r39p3', '45.13.133.51', 1648098372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383039383337323b),
('0cgavki01cc7d15l41q9u2m6pkkl0uu8', '45.13.133.51', 1648100098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383130303039383b),
('a5s6e3pcpoko80mgl550saq2ip3eu6rb', '45.13.133.51', 1648100098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383130303039383b7265717565737465645f706167657c733a353a2261646d696e223b),
('qedgovifocne5cvpq84q5h0qjukc0h9d', '45.13.133.51', 1648100098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383130303039383b),
('qqk8ptnnn1io6r1e247pegf0k5q5l5qb', '45.13.133.51', 1648101949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383130313934393b),
('e2p13pj10esafvmk3mja0sph8mfvkar9', '45.13.133.51', 1648101949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383130313934393b7265717565737465645f706167657c733a353a2261646d696e223b),
('t6bavo8uf82u6slh54adbkuf1ivur9q0', '45.13.133.51', 1648101949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383130313934393b),
('munc91vsvtqqeo5cfb1kubq6ttpktif3', '45.13.133.51', 1648103741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383130333734313b),
('5kncfka53klm20fs76h15s7rhgoudp3q', '45.13.133.51', 1648103741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383130333734313b7265717565737465645f706167657c733a353a2261646d696e223b),
('2os0fu5mliegmvo0muv8vskmsvbneqh0', '45.13.133.51', 1648103742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383130333734323b),
('42nk4okk794k4rn9c9hcp55vr10h2ni7', '45.13.133.51', 1648105548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383130353534383b),
('uskljpuqeu85e5ngjigv83tvinm43gjt', '45.13.133.51', 1648105548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383130353534383b7265717565737465645f706167657c733a353a2261646d696e223b),
('1vfnqss3gqmhguh441i3ofv321pj2pf8', '45.13.133.51', 1648105548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383130353534383b),
('hnvmhe28vmpipj2tu4hk9ckcdda5m8gr', '45.13.133.51', 1648107317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383130373331373b),
('empp7ul1qn61ia9mld0ipqmqpmuese0k', '45.13.133.51', 1648107317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383130373331373b7265717565737465645f706167657c733a353a2261646d696e223b),
('htvkova6ko3d4pkhdisorjiotobbsk3f', '45.13.133.51', 1648107317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383130373331373b),
('ae439rqhjiko0ap4vprchg6inff7a9ss', '45.13.133.51', 1648109163, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383130393136333b),
('a3j6e5jtjeap90ea44f32ta8372km3c6', '45.13.133.51', 1648109163, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383130393136333b7265717565737465645f706167657c733a353a2261646d696e223b),
('rpa1d7of0h07jj5qtpnbhssrf6mfhrd5', '45.13.133.51', 1648109163, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383130393136333b),
('t570nq4jj2qh9t79re4hmg79v43vuv9u', '45.13.133.51', 1648110910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383131303931303b),
('0t7a7m3l3nu3esfumbvjs5b8k87i995s', '45.13.133.51', 1648110910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383131303931303b7265717565737465645f706167657c733a353a2261646d696e223b),
('n8amto4mb43p7qopfqrbshsrtcss6h09', '45.13.133.51', 1648110910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383131303931303b),
('i57s8efkd0v6dbu39mvjehroalcfa68a', '45.13.133.51', 1648112742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383131323734323b),
('00t3k8b6dfljvn2mg0lmttl3u2m8fn5c', '45.13.133.51', 1648112742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383131323734323b7265717565737465645f706167657c733a353a2261646d696e223b),
('6vrqdlljmjvfurtcisvsadkndrrnkh4i', '45.13.133.51', 1648112742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383131323734323b),
('jn6itc3gblhtgaslnu58nsvs0qtpgbgi', '45.13.133.51', 1648114497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383131343439373b),
('tc8o38tvlqqo08vn343hmq487fbdmvvk', '45.13.133.51', 1648114497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383131343439373b7265717565737465645f706167657c733a353a2261646d696e223b),
('ru7a15fco8kvcea6hfg358tj32j1l2v1', '45.13.133.51', 1648114497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383131343439373b),
('an4p69mblvi6utnnnk7oe2q8cbeeqm61', '45.13.133.51', 1648116340, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383131363334303b),
('trq4ehsppcu1847o4jojsk8pehmph560', '45.13.133.51', 1648116340, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383131363334303b7265717565737465645f706167657c733a353a2261646d696e223b),
('gm6pmttov9uqtspc6gt1feqe9n2dcdpg', '45.13.133.51', 1648116340, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383131363334303b),
('t8c70c5i2lqmd0q9obqf2lj1ef03pc8g', '180.244.165.53', 1648087699, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038373430373b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438303837313331223b6c6173745f69707c733a31343a223138302e3234342e3136352e3533223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6d6573736167657c733a32373a223c703e416e646120626572686173696c206d6173756b2e3c2f703e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('9relvn2t2qo6ptavr2nhekt9q8ig8ur4', '180.244.165.53', 1648088781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038383736353b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438303838343935223b6c6173745f69707c733a31343a223138302e3234342e3136352e3533223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('1dgdtdl3nq2tbh81pntbrodoafe0tq3u', '180.244.165.53', 1648087131, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038363836333b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438303032353038223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6d6573736167657c733a32373a223c703e416e646120626572686173696c206d6173756b2e3c2f703e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('vk4276d9dagvhov2uapf8bb19i2pu0ra', '45.13.133.51', 1648085708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038353730383b7265717565737465645f706167657c733a353a2261646d696e223b),
('k6j03b0410lilp1hqtmtr4qggn83eihl', '45.13.133.51', 1648085708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038353730383b),
('bl6er56rpd1g05fdbi3bffdnhrl0p351', '45.13.133.51', 1648085708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038353730383b),
('alsqlin2dptb1704snabdh0l34rsdrm4', '45.13.133.51', 1648083929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038333932393b),
('jg6kb127eslr73i116b1dvkimo98qmoi', '45.13.133.51', 1648083928, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038333932383b7265717565737465645f706167657c733a353a2261646d696e223b),
('9jsfv3ndt30eloppr3m0agmuf4h0d5uk', '45.13.133.51', 1648083928, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038333932383b),
('0ob0m9dpmadhdvdfd3bbt5vb5er219a3', '45.13.133.51', 1648082096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038323039363b),
('7pmr4eurhna6gm3nm0ur66p5r91skfg8', '45.13.133.51', 1648082095, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038323039353b7265717565737465645f706167657c733a353a2261646d696e223b),
('98184govrj1h6tsocdb14b44l2m6vsmt', '45.13.133.51', 1648082095, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038323039353b),
('kd7e9ddeaajoduh54ktqa7h0gm260bf6', '180.244.165.53', 1648089247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038393038323b7265717565737465645f706167657c733a353a2261646d696e223b),
('jfjt3b0sivb7akbnab1gc8gimun0d3cs', '180.244.165.53', 1648089109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038393130393b),
('1oihn4a7k62pgad9q9us3s60vr0u6ftn', '45.13.133.51', 1648089320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038393332303b),
('jkd5fstfgmnj5nb9m3oslj1t3qmnruan', '45.13.133.51', 1648089320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038393332303b),
('cukb1ij74eiljc9ole7a05vp4q6opi6v', '45.13.133.51', 1648089320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038393332303b7265717565737465645f706167657c733a353a2261646d696e223b),
('inbp5vu5nrm56ncu5ug0v0niitfbc0ad', '180.244.165.53', 1648087797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038373739353b),
('4slkslqliqigdcolelsjm7decl2gantg', '180.244.165.53', 1648088308, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038373831343b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438303837363938223b6c6173745f69707c733a31343a223138302e3234342e3136352e3533223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383038373836393b72656769737465725f69647c733a313a2231223b636173685f696e5f68616e647c733a363a22302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30322d31352031303a33313a3538223b),
('6e5rmkpg13fckjo1jq0s3kdlp9l86ul9', '180.244.165.53', 1648088315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038383331343b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363438303837363938223b6c6173745f69707c733a31343a223138302e3234342e3136352e3533223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634383038373836393b72656769737465725f69647c733a313a2231223b636173685f696e5f68616e647c733a363a22302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30322d31352031303a33313a3538223b),
('6cuj5fo3rmdp613hg7ig5bp23dhbqiuk', '45.13.133.51', 1648087539, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038373533393b),
('qqm5qvnnpmlhufoksecijgkcaec54j94', '45.13.133.51', 1648087539, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038373533393b7265717565737465645f706167657c733a353a2261646d696e223b),
('mnsin188ehjj91etim7e5tmk6n0u5uv9', '45.13.133.51', 1648087539, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383038373533393b);

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
(1, 'rsz_widodo-removebg-p.png', 'rsz_widodo-removebg-p1.png', 'WDC', 'indonesian', 1, 0, 'IDR', 0, 10, '2.0.0', 0, 5, 'SO', 'PR', 'PO', 'TR', 'DO', 'SI', 'SR', 'RP', '', 1, 'default', 1, 1, 1, 1, 0, 0, 0, 1, 0, 'Asia/Jakarta', 1080, 1080, 150, 150, 1, 0, 0, 0, NULL, 'smtp', '/usr/sbin/sendmail', 'srv128.niagahoster.com', 'info@wmeat.store', 'WIDODO2019', '465', 'ssl', NULL, 1, 'info@wmeat.store', 0, 4, 1, 0, 2, 1, 1, 1, 0, 0, ',', '.', 0, 1, 'nulled', 'nulled', 0, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 'Rp', 0, '-', 0, 3, 1, 'PI', 1000, '', 1, 0, 'AN', 'dompdf');

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
(14, '2021-10-30 05:23:41', '', 1, 'full', 'b9e2ec576e187c103859b7f4557e018f.csv', 'c17af4fc2bcfca043d5f539bbcc2a3c2.csv', '', '', '', '', '', 41, 41, 30, 11, 0, 6, 6, '2021-10-30 12:41:23', 1);

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

--
-- Dumping data for table `sma_suspended_bills`
--

INSERT INTO `sma_suspended_bills` (`id`, `date`, `customer_id`, `customer`, `count`, `order_discount_id`, `order_tax_id`, `total`, `biller_id`, `warehouse_id`, `created_by`, `suspend_note`, `shipping`, `cgst`, `sgst`, `igst`) VALUES
(1, '2021-11-05 02:25:03', 49, 'Internal Offline', 10, '', 0, 1240000.0000, 1, 1, 6, 'Mba Reanie', 0.0000, NULL, NULL, NULL);

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

--
-- Dumping data for table `sma_suspended_items`
--

INSERT INTO `sma_suspended_items` (`id`, `suspend_id`, `product_id`, `product_code`, `product_name`, `net_unit_price`, `unit_price`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `subtotal`, `serial_no`, `option_id`, `product_type`, `real_unit_price`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `comment`, `gst`, `cgst`, `sgst`, `igst`) VALUES
(1, 1, 56, 'WMS-022', 'WMeat Aus Beef Oxtail Cut 1 kg', 124000.0000, 124000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, 1240000.0000, '', NULL, 'standard', 124000.0000, 23, 'PCS', 10.0000, '', NULL, NULL, NULL, NULL);

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

--
-- Dumping data for table `sma_tax_rates`
--

INSERT INTO `sma_tax_rates` (`id`, `name`, `code`, `rate`, `type`) VALUES
(1, 'No Tax', 'NT', 0.0000, '2'),
(2, 'VAT @10%', 'VAT10', 10.0000, '1'),
(3, 'GST @6%', 'GST', 6.0000, '1'),
(4, 'VAT @20%', 'VT20', 20.0000, '1');

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
(22, 'KG', 'Kilogram', 21, '*', NULL, '1000'),
(23, 'PCS', 'PCS', NULL, NULL, NULL, NULL),
(24, 'Ons', 'Ons', NULL, NULL, NULL, NULL);

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
(1, 0x3138302e3234342e3136352e3533, 0x0000, 'owner', 'a1a91380a8bf75d6792ebb3769baa14487f6b774', NULL, 'owner@tecdiary.com', NULL, NULL, NULL, '094f1a95d80432cae8c46f211e2dbd68cc70dab2', 1351661704, 1648091405, 1, 'Owner', 'Owner', 'WTouch', '012345678', NULL, 'male', 1, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0),
(4, 0x3130332e36362e3139382e3432, 0x31332e31322e31302e31, 'sales', 'b25cad49eaca2f14789cafa0f9a80760bf0f6532', NULL, 'wmeat.shop@gmail.com', NULL, NULL, NULL, NULL, 1588179657, 1588910176, 1, 'sales', 'WMeat', 'WMeat', '123', NULL, 'male', 7, 1, 6, NULL, 1, 1, 0, 0, 0, 0),
(6, 0x3138302e3234342e3136352e3533, 0x3130332e36362e3139382e3432, 'manajer', '8145b2f6bbda07674723ddbc5a6558b6275d2704', NULL, 'manajer@wmeat.store', NULL, NULL, NULL, NULL, 1588574208, 1648092042, 1, 'manajer', 'wmeat', 'WMEAT', '08111109554', NULL, 'male', 6, 1, 1, NULL, NULL, NULL, 0, 1, 0, 1),
(7, NULL, 0x3130332e36362e3139382e3432, 'kasir', '336f67258f03959f629375a6f91c3b351989a097', NULL, 'kasir@wmeat.store', NULL, NULL, NULL, NULL, 1588909335, 1588909335, 1, 'kasir', 'wmeat', 'WMeat', '123456', NULL, 'male', 7, 1, 6, NULL, 1, 1, 0, 0, 0, 0);

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
(384, 6, NULL, 0x3138302e3234342e3136352e3533, 'manajer', '2022-03-24 03:20:42');

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
(18, '500 GR');

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
  `price_group_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_warehouses`
--

INSERT INTO `sma_warehouses` (`id`, `code`, `name`, `address`, `map`, `phone`, `email`, `price_group_id`) VALUES
(1, 'WHI', 'WMart Cipayung', '<p>Jl. Bina Marga No.1A, RW.5, Ceger, Kec. Cipayung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13840</p>', '0e56f91c258e720afff292f8670e6ca6.png', '0817109554', 'wmeat.official@gmail.com', 0);

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
(115, 93, 1, -1.0000, NULL, 50000.0000),
(114, 66, 1, 10.0000, NULL, 110702.3412),
(113, 68, 1, 12.0000, NULL, 13125.0000),
(112, 69, 1, 8.0000, NULL, 65000.0000),
(111, 65, 1, 2.0000, NULL, 0.0000),
(110, 60, 1, 12.0000, NULL, 29428.3414),
(109, 59, 1, 13.0000, NULL, -78403.3614),
(108, 58, 1, 0.0000, NULL, 0.0000),
(107, 86, 1, 1.0000, NULL, 50000.0000),
(106, 55, 1, 0.0000, NULL, 0.0000),
(105, 52, 1, 8.0000, NULL, 79169.5147),
(104, 51, 1, 11.0000, NULL, 44000.0000),
(103, 50, 1, 7.0000, NULL, 29230.7692),
(102, 49, 1, 11.0000, NULL, 121118.0124),
(101, 46, 1, 0.0000, NULL, 0.0000),
(100, 45, 1, 0.0000, NULL, 0.0000),
(99, 40, 1, 10.0000, NULL, 125000.0000),
(98, 39, 1, 6.0000, NULL, 68000.0000),
(97, 38, 1, 6.0000, NULL, 140000.0000),
(96, 37, 1, 23.0000, NULL, 75000.0000),
(95, 36, 1, 21.0000, NULL, 120000.0000),
(94, 78, 1, 9.0000, NULL, 63500.0000),
(93, 79, 1, 11.0000, NULL, 126818.1818),
(92, 80, 1, 9.0000, NULL, 95000.0000),
(91, 91, 1, 0.0000, NULL, 95000.0000),
(90, 90, 1, 36.0000, NULL, 85249.1695),
(89, 89, 1, 10.0000, NULL, 82000.0000),
(88, 77, 1, 20.0000, NULL, 70000.0000),
(87, 76, 1, 5.0000, NULL, 37000.0000),
(86, 88, 1, 5.0000, NULL, 34000.0000),
(85, 87, 1, 4.0000, NULL, 25000.0000),
(84, 75, 1, 6.0000, NULL, 95000.0000),
(83, 74, 1, 4.0000, NULL, 44000.0000),
(82, 73, 1, 11.0000, NULL, 83358.9744),
(81, 72, 1, 11.0000, NULL, 37500.0000),
(80, 85, 1, 0.0000, NULL, 56000.0000),
(79, 84, 1, 0.0000, NULL, 35500.0000),
(78, 71, 1, 12.0000, NULL, 110000.0000),
(77, 70, 1, 22.0000, NULL, 57000.0000),
(76, 82, 1, 0.0000, NULL, 88000.0000),
(75, 56, 1, 0.0000, NULL, 0.0000),
(74, 83, 1, 0.0000, NULL, 63500.0000),
(116, 94, 1, 0.0000, NULL, 90000.0000),
(118, 96, 1, 0.0000, NULL, 0.0000),
(119, 97, 1, 0.0000, NULL, 0.0000),
(120, 98, 1, 0.0000, NULL, 0.0000),
(121, 99, 1, 0.0000, NULL, 0.0000),
(122, 100, 1, 0.0000, NULL, 0.0000),
(123, 101, 1, 0.0000, NULL, 0.0000);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_adjustment_items`
--
ALTER TABLE `sma_adjustment_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_combo_items`
--
ALTER TABLE `sma_combo_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sma_companies`
--
ALTER TABLE `sma_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `sma_costing`
--
ALTER TABLE `sma_costing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=734;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_gift_card_topups`
--
ALTER TABLE `sma_gift_card_topups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_groups`
--
ALTER TABLE `sma_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sma_login_attempts`
--
ALTER TABLE `sma_login_attempts`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `sma_permissions`
--
ALTER TABLE `sma_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sma_pos_register`
--
ALTER TABLE `sma_pos_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_price_groups`
--
ALTER TABLE `sma_price_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sma_printers`
--
ALTER TABLE `sma_printers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_products`
--
ALTER TABLE `sma_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_product_photos`
--
ALTER TABLE `sma_product_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_product_prices`
--
ALTER TABLE `sma_product_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_purchase_items`
--
ALTER TABLE `sma_purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_sms_settings`
--
ALTER TABLE `sma_sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_stock_counts`
--
ALTER TABLE `sma_stock_counts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sma_users`
--
ALTER TABLE `sma_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sma_user_logins`
--
ALTER TABLE `sma_user_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=385;

--
-- AUTO_INCREMENT for table `sma_variants`
--
ALTER TABLE `sma_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sma_warehouses`
--
ALTER TABLE `sma_warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_warehouses_products`
--
ALTER TABLE `sma_warehouses_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

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
