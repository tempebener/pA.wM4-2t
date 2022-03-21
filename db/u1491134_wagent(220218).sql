-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2022 at 11:06 PM
-- Server version: 10.3.32-MariaDB-cll-lve
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
-- Database: `u1491134_wagent`
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
(37, '2021-10-30 07:33:00', '2021/11/0037', 1, '', NULL, 6, NULL, NULL, 14);

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
(1, NULL, 'biller', NULL, NULL, 'WMEAT', 'WMEAT', '', 'Jl. Raya Cilangkap No.58,', 'Jakarta Timur', 'DKI Jakarta', '13870', 'Indonesia', '0811 1109 554', 'info@wmeat.store', '', '', '', '', '', '', 'PEMBAYARAN BISA DILAKUKAN MELALUI TRANSFER KE BCA 7000537882', 0, 'imageedit_3_2567267271.png', 0, NULL, NULL, NULL, ''),
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
(155, 3, 'customer', 5, 'WMEAT STORE', 'WMP', 'Bertha', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '1111', 'bertha@gmai.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', '');

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
(719, '2022-01-15', 51, 681, 215, 409, 3.0000, 44000.0000, 44000.0000, 46000.0000, 46000.0000, 1.0000, 1, 0, NULL);

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
(1, '2015-03-01', 8, 2, 9, 1, 8, 1, 204, 2, 1, 1, 38, 38);

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
(237, '2022-01-15 06:56:00', 215, NULL, NULL, 'SI2022/02/0203', NULL, 'cash', '', '', '', '', '', 'Visa', 116000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL);

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
(2, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
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

--
-- Dumping data for table `sma_products`
--

INSERT INTO `sma_products` (`id`, `code`, `name`, `unit`, `cost`, `price`, `alert_quantity`, `image`, `category_id`, `subcategory_id`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `quantity`, `tax_rate`, `track_quantity`, `details`, `warehouse`, `barcode_symbology`, `file`, `product_details`, `tax_method`, `type`, `supplier1`, `supplier1price`, `supplier2`, `supplier2price`, `supplier3`, `supplier3price`, `supplier4`, `supplier4price`, `supplier5`, `supplier5price`, `promotion`, `promo_price`, `start_date`, `end_date`, `supplier1_part_no`, `supplier2_part_no`, `supplier3_part_no`, `supplier4_part_no`, `supplier5_part_no`, `sale_unit`, `purchase_unit`, `brand`, `slug`, `featured`, `weight`, `hsn_code`, `views`, `hide`, `second_name`, `hide_pos`) VALUES
(80, 'OLN-0290', 'Tenderloin Cube 300 gr', 23, 95000.0000, 95000.0000, 4.0000, 'c6b8a473fc3a58f605852cf57f3a3a09.jpg', 2, NULL, '', '', '', '', '', '', 9.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'tenderloin-cube-300-gr', NULL, 0.3000, NULL, 0, 0, '', 0),
(86, 'WMS-023', 'WMeat Aus Beef Daging Giling 500 gram', 23, 50000.0000, 50000.0000, 4.0000, '3cd64fedbfc6e0cc9f8ce640486190a9.jpg', 2, NULL, '', '', '', '', '', '', 1.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-daging-giling-500-gram', NULL, 0.5000, NULL, 0, 0, '', 0),
(55, 'WMS-021', 'WMeat Aus Beef Oxtail Cut 500 gr', 23, 65000.0000, 65000.0000, 4.0000, '41bc6d8264cec9d6cc0d82f1215c6dd5.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-oxtail-cut-500-gr', NULL, 0.5000, NULL, 0, 0, '', 0),
(56, 'WMS-022', 'WMeat Aus Beef Oxtail Cut 1 kg', 23, 124000.0000, 124000.0000, 4.0000, '55a7800734e46f3f07eb16d0b2f907be.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-oxtail-cut-1-kg', NULL, 1.0000, NULL, 0, 0, '', 0),
(58, 'WMS-024', 'WMeat Aus Beef Daging Giling 1 kg', 23, 96000.0000, 96000.0000, 4.0000, '128b4c1c96b3fa9f6ead866129c4c12b.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-daging-giling-1-kg', NULL, 1.0000, NULL, 0, 0, '', 0),
(59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', 23, 45000.0000, 45000.0000, 4.0000, 'b42a8c3ee23a6a2be6896f589ecb6132.jpg', 2, NULL, '', '', '', '', '', '', 13.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-iga-sop-super-500-gr', NULL, 0.5000, NULL, 0, 0, '', 0),
(36, 'WMS-002', 'WMeat Aus Beef Daging Rendang 1 kg', 23, 120000.0000, 120000.0000, 4.0000, '5ed1d411fd2678aec06f98fc502ab091.jpg', 2, NULL, '', '', '', '', '', '', 21.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-daging-rendang-1-kg', NULL, 1.0000, NULL, 0, 0, '', 0),
(37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 23, 75000.0000, 75000.0000, 4.0000, '40074c49592344cd30c896cbd0ba93a8.jpg', 2, NULL, '', '', '', '', '', '', 23.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-sukiyaki-slice-500-gr', NULL, 0.5000, NULL, 0, 0, '', 0),
(38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 23, 140000.0000, 140000.0000, 4.0000, 'f6ee8304c85dd7df8821d276c3c2e8ee.jpg', 2, NULL, '', '', '', '', '', '', 6.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-sukiyaki-slice-1-kg', NULL, 1.0000, NULL, 0, 0, '', 0),
(39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 23, 68000.0000, 68000.0000, 4.0000, '2fc2545813d80858e810c3783919e032.jpg', 2, NULL, '', '', '', '', '', '', 8.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-yakinikuteriyaki-slice-500-gr', NULL, 0.5000, NULL, 0, 0, 'slice less fat 85 Cl ', 0),
(40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 23, 125000.0000, 125000.0000, 4.0000, '1c008c705c1a65885969b4984654c8e3.jpg', 2, NULL, '', '', '', '', '', '', 12.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-yakinikuteriyaki-slice-1-kg', NULL, 1.0000, NULL, 0, 0, 'slice less fat 85 Cl ', 0),
(83, 'OLN-001', 'WMeat Daging Rendang 500 gr', 23, 63500.0000, 58500.0000, 4.0000, '2670bd218f2cecb61c71e6b5e1bf5611.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-daging-rendang-500-gr', NULL, 0.5000, NULL, 0, 0, 'Rendang OLN', 0),
(45, 'WMS-011', 'WMeat Aus Beef Tulang Sop 500 gr', 23, 25000.0000, 25000.0000, 4.0000, '911290648c67c1d419e340cd44c2442d.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-tulang-sop-500-gr', NULL, 0.5000, NULL, 0, 0, '', 0),
(46, 'WMS-012', 'WMeat Aus Beef Tulang Sop 1 kg', 23, 41500.0000, 41500.0000, 4.0000, '59436369a587f5114a38af71e263f9de.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-tulang-sop-1-kg', NULL, 1.0000, NULL, 0, 0, '', 0),
(84, 'OLN-005', 'WMeat Daging Slice 300 gr', 23, 35500.0000, 37500.0000, 4.0000, 'afad878381af78fc2c4223abc81b5d1c.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-daging-slice-300-gr', NULL, 0.3000, NULL, 0, 0, 'Slice OLN', 0),
(49, 'WMS-015', 'WMeat Aus Beef All Variant Less Fat 500 gr', 23, 50000.0000, 50000.0000, 4.0000, '2a0d439711689056dd2db2ffb49cf26e.jpg', 2, NULL, '', '', '', '', '', '', 11.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-all-variant-less-fat-500-gr', NULL, 0.5000, NULL, 0, 0, '', 0),
(50, 'WMS-016', 'WMeat Aus Beef All Variant Less Fat 1 kg', 23, 90000.0000, 90000.0000, 4.0000, '6170d1e5cf4ecf98c83106b8effb5c11.jpg', 2, NULL, '', '', '', '', '', '', 7.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-all-variant-less-fat-1-kg', NULL, 1.0000, NULL, 0, 0, '', 0),
(51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', 23, 44000.0000, 44000.0000, 4.0000, 'bb7b3bfe0fa5c9e3c7c74288a1ca8ad7.jpg', 2, NULL, '', '', '', '', '', '', 11.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-rib-eye-steak-200-gr', NULL, 0.2000, NULL, 0, 0, '', 0),
(52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', 23, 80000.0000, 80000.0000, 4.0000, '118033ee7bfa2abd98ed13216a2f0f8e.jpg', 2, NULL, '', '', '', '', '', '', 9.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-rib-eye-steak-400-gr', NULL, 0.4000, NULL, 0, 0, '', 0),
(60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', 23, 85000.0000, 85000.0000, 4.0000, 'c6cb837e598b1059d38c837029e0d1fa.jpg', 2, NULL, '', '', '', '', '', '', 12.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-iga-sop-super-1-kg', NULL, 1.0000, NULL, 0, 0, '', 0),
(82, 'OLN-002', 'WMeat Daging Rendang 800 gr', 23, 88000.0000, 90000.0000, 4.0000, 'bbe12838ef04a53c77f8c61505af0faf.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-daging-rendang-800-gr', NULL, 0.8000, NULL, 0, 0, 'Rendang OLN', 0),
(78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', 23, 63500.0000, 63500.0000, 4.0000, '2cb1087faa951da952ee27108a99b8f4.jpg', 2, NULL, '', '', '', '', '', '', 9.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-daging-rendang-500-gram', NULL, 0.5000, NULL, 0, 0, 'daging rendang bahan knuckle', 0),
(65, 'WMS-027', 'Wmeat Aus Beef Striploin Steak Bone In 250 gr', 23, 53000.0000, 53000.0000, 4.0000, '9d2ffa92b3463beb536344abe218c3c9.jpg', 2, NULL, '', '', '', '', '', '', 2.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-striploin-steak-bone-in-250-gr', NULL, 0.2500, NULL, 0, 0, '', 0),
(66, 'WMS-030', 'Wmeat Aus Beef Iga Galbi 500 gr', 23, 75000.0000, 75000.0000, 4.0000, '2cd6a2aaf53260e29e9150d465b1f019.jpg', 2, NULL, '', '', '', '', '', '', 11.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-iga-galbi-500-gr', NULL, 0.5000, NULL, 0, 0, '', 0),
(79, 'OLN-032', 'Wmeat Oxtail Super 500 gr', 23, 130000.0000, 95000.0000, 4.0000, '3c6c4882ea3ff2e5bf279d06f26272fd.jpg', 2, NULL, '', '', '', '', '', '', 11.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-oxtail-super-500-gr', NULL, 0.5000, NULL, 0, 0, 'Oxtail Centre cut', 0),
(68, 'WMS-029', 'WMeat Aus Beef Lidah Sapi Slice 250 gr', 23, 35000.0000, 35000.0000, 4.0000, '55cf765420d2d18d7dc2707fdaba68f9.jpg', 2, NULL, '', '', '', '', '', '', 12.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-lidah-sapi-slice-250-gr', NULL, 0.2500, NULL, 0, 0, '', 0),
(69, 'WMS-028', 'WMeat Aus Beef Lidah Sapi Slice 500 gr', 23, 65000.0000, 65000.0000, 4.0000, 'f08033d9651ae7158ac617b71654a3b5.jpg', 2, NULL, '', '', '', '', '', '', 8.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-lidah-sapi-slice-500-gr', NULL, 0.5000, NULL, 0, 0, '', 0),
(70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', 23, 57000.0000, 57000.0000, 4.0000, '01f35aa81ecc5c0db0ec3314e072b9e8.jpg', 2, NULL, '', '', '', '', '', '', 22.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000.0000, '2021-10-08', '2021-10-15', '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-daging-giling-500-gr', 1, 0.5000, NULL, 0, 0, 'Minced Beef 85 CL', 0),
(71, 'OLN-004', 'WMeat Aus Beef Daging Giling 1 kg', 23, 110000.0000, 110000.0000, 4.0000, '3ad86d91f49b24341b1d367a4bf918d0.jpg', 2, NULL, '', '', '', '', '', '', 12.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-daging-giling-1-kg', 1, 1.0000, NULL, 0, 0, 'Minced Beef 85 CL', 0),
(72, 'OLN-009', 'WMeat Aus Beef Striploin Steak 200 gr', 23, 37500.0000, 45000.0000, 4.0000, '501d55f77d6cd514aa5bc323843461ac.jpg', 2, NULL, '', '', '', '', '', '', 11.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-striploin-steak-200-gr', 1, 0.2000, NULL, 0, 0, '', 0),
(73, 'OLN-010', 'WMeat Aus Beef Striploin Steak 400 gr', 23, 85000.0000, 85000.0000, 4.0000, 'c8470b7bb1d31fa2cfd6541582658965.jpg', 2, NULL, '', '', '', '', '', '', 12.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-striploin-steak-400-gr', 1, 0.4000, NULL, 0, 0, '', 0),
(74, 'OLN-011', 'WMeat Aus Beef Iga Bakar 500 gr', 23, 44000.0000, 50000.0000, 4.0000, '3cebef794513a8279edb4bddef715e81.jpg', 2, NULL, '', '', '', '', '', '', 4.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-iga-bakar-500-gr', 1, 0.5000, NULL, 0, 0, 'Iga Back Ribs', 0),
(75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', 23, 95000.0000, 95000.0000, 4.0000, '23dc98b52d8aeb9d2b18987fa199ac2f.jpg', 2, NULL, '', '', '', '', '', '', 8.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-iga-bakar-1-kg', 1, 1.0000, NULL, 0, 0, 'Iga Back Ribs', 0),
(76, 'OLN-015', 'WMeat Aus Beef All Variant (Tumis/Sop) 500 gr', 23, 37000.0000, 37000.0000, 4.0000, 'bae1ce6b042b68e7ece56f65ffd0d953.jpg', 2, NULL, '', '', '', '', '', '', 5.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-all-variant-tumissop-500-gr', NULL, 0.5000, NULL, 0, 0, 'daging sop 65 cl', 0),
(77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', 23, 70000.0000, 70000.0000, 4.0000, '724c029ebd487ee39194dff3334f6f17.jpg', 2, NULL, '', '', '', '', '', '', 20.0000, NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-all-variant-tumissop-1-kg', NULL, 1.0000, NULL, 0, 0, 'daging sop 65 CL', 0),
(85, 'OLN-006', 'WMeat Daging Slice  500 gr', 23, 56000.0000, 58000.0000, 4.0000, 'dafcbdb37465d70d36bec8b741eeecef.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'w-meat-daging-slice-500-gr', NULL, 0.5000, NULL, 0, 0, 'Slice OLN 500 gram ', 0),
(87, 'OLN-013', 'WMeat Tulang Sapi Sop  500 gr', 23, 25000.0000, 20000.0000, 4.0000, 'bfbfe6de1b076935fb1cd6d4f1f27c44.jpg', 2, NULL, '', '', '', '', '', '', 4.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'tulang-sapi-sop-500-gr', NULL, 0.5000, NULL, 0, 0, 'Tulang Sapi Lokal OLN', 0),
(88, 'OLN-014', 'WMeat Tulang Sapi Soup  1 kg', 23, 34000.0000, 36000.0000, 4.0000, '0bbaad078e5b88ddc333c1598177cf2e.jpg', 2, NULL, '', '', '', '', '', '', 5.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-tulang-sapi-soup-1-kg', NULL, 1.0000, NULL, 0, 0, 'Tulang Sapi Lokal OLN', 0),
(89, 'OLN-017', 'WMeat Buntut Sapi / Oxtail Cut  500 gr', 23, 82000.0000, 65000.0000, 4.0000, 'daf8f28e7878695f08bbc3ce657980a7.jpg', 2, NULL, '', '', '', '', '', '', 11.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'buntut-sapi-oxtail-cut-500-gr', NULL, 0.5000, NULL, 0, 0, 'Bunrut sapi Lokal OLM', 0),
(90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 23, 160000.0000, 124000.0000, 4.0000, '4897f8c5c349bad286fe0d566a382eb7.jpg', 2, NULL, '', '', '', '', '', '', 36.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-buntut-sapi-oxtail-cut-1-kg', NULL, 1.0000, NULL, 0, 0, '', 0),
(91, 'OLN-023', 'Daging Rendang 1 kg Shank', 23, 95000.0000, 95000.0000, 4.0000, '2d1fe1bb02361525602f39835599a7e9.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'daging-rendang-1-kg-shank', NULL, 1.0000, NULL, 0, 0, '', 0),
(98, 'Hebat-2', 'Paket Promo Bundling Hebat ( Hemat Banget) 2', NULL, NULL, 230000.0000, 0.0000, 'no_image.png', 2, NULL, '', '', '', '', '', '', NULL, NULL, 0, '', NULL, 'code128', '', '<p>Paket Promo Bundling Hebat ( Hemat Banget) 2</p>', NULL, 'combo', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 1, 'paket-promo-bundling-hebat-hemat-banget-2', NULL, 2.0000, NULL, 0, 0, 'Hebat 2', 0),
(93, 'WMS-037', 'WMeat Aus Beef All Variant Less Fat 500 gr lokal', 23, 50000.0000, 50000.0000, 4.0000, '981a535beea1f14fc428fe2f33c84eff.jpg', 2, NULL, '', '', '', '', '', '', -1.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-all-variant-less-fat-500-gr-lokal', NULL, 0.5000, NULL, 0, 0, 'Daging Rawon Lokal', 0),
(94, 'WMS-038', 'WMeat Aus Beef All Variant Less Fat 1 kg lokal', 23, 90000.0000, 90000.0000, 4.0000, 'c7f0352b9683f1ee1a89c6a9eab3320c.jpg', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-all-variant-less-fat-1-kg-lokal', NULL, 1.0000, NULL, 0, 0, 'Daging Rawon Lokal', 0),
(96, 'PPKM-001', 'PPKM 1', NULL, NULL, 110000.0000, 0.0000, 'no_image.png', 2, NULL, '', '', '', '', '', '', NULL, NULL, 0, '', NULL, 'code128', '', '', NULL, 'combo', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 1, 'ppkm-1', NULL, 1.0000, NULL, 0, 0, '', 0),
(97, 'Hebat-1', 'Paket Promo Bundling Hebat ( Hemat Banget) 1', NULL, NULL, 115000.0000, 0.0000, 'no_image.png', 2, NULL, '', '', '', '', '', '', NULL, NULL, 0, '', NULL, 'code128', '', '<p>Paket Promo Bundling Hebat ( Hemat Banget) 1</p>', NULL, 'combo', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 1, 'paket-promo-bundling-hebat-hemat-banget-1', NULL, 0.7500, NULL, 0, 0, 'Hebat 1', 0),
(99, 'Hebat-3', 'Paket Promo Bundling Hebat ( Hemat Banget) 3', NULL, NULL, 100000.0000, 0.0000, 'no_image.png', 2, NULL, '', '', '', '', '', '', NULL, NULL, 0, '', NULL, 'code128', '', '', NULL, 'combo', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 1, 'paket-promo-bundling-hebat-hemat-banget-3', NULL, 75.0000, NULL, 0, 0, 'Hebat 3', 0),
(100, 'Hebat-4', 'Paket Promo Bundling Hebat ( Hemat Banget) 4', NULL, NULL, 205000.0000, 0.0000, 'no_image.png', 2, NULL, '', '', '', '', '', '', NULL, NULL, 0, '<p>Paket Promo Bundling Hebat ( Hemat Banget) 4</p>', NULL, 'code128', '', '', NULL, 'combo', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 1, 'paket-promo-bundling-hebat-hemat-banget-4', NULL, 13.0000, NULL, 0, 0, 'Hebat-4', 0),
(101, 'Hebat-5', 'Paket Promo Bundling Hebat (Hemat Banget) 5', NULL, NULL, 185000.0000, 0.0000, 'no_image.png', 2, NULL, '', '', '', '', '', '', NULL, NULL, 0, '', NULL, 'code128', '', '', NULL, 'combo', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 1, 'paket-promo-bundling-hebat-hemat-banget-5', NULL, 1.4000, NULL, 0, 0, 'Hebat 5', 0);

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

--
-- Dumping data for table `sma_purchases`
--

INSERT INTO `sma_purchases` (`id`, `reference_no`, `date`, `supplier_id`, `supplier`, `warehouse_id`, `note`, `total`, `product_discount`, `order_discount_id`, `order_discount`, `total_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `paid`, `status`, `payment_status`, `created_by`, `updated_by`, `updated_at`, `attachment`, `payment_term`, `due_date`, `return_id`, `surcharge`, `return_purchase_ref`, `purchase_id`, `return_purchase_total`, `cgst`, `sgst`, `igst`) VALUES
(49, 'DO 21114558/SO 21114632', '2021-11-04 03:00:00', 48, 'PT Cianjur Arta Makmur', 1, '', 2870000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 2870000.0000, 0.0000, 'received', 'pending', 6, 6, '2021-12-06 08:24:15', NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(50, 'DO 21114676/SO 21114701', '2021-11-08 06:57:00', 48, 'PT Cianjur Arta Makmur', 1, '', 2810000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 2810000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(51, 'DO 21114723/ SO 21114753', '2021-11-10 03:48:00', 48, 'PT Cianjur Arta Makmur', 1, '', 4355000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 4355000.0000, 0.0000, 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(52, 'DO 21114845/ SO 21114868', '2021-11-16 07:13:00', 48, 'PT Cianjur Arta Makmur', 1, '&lt;p&gt;No DO 21114845&sol; SO 21114868&lt;&sol;p&gt;', 2005000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 2005000.0000, 0.0000, 'received', 'pending', 1, 6, '2021-12-06 08:21:38', NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(53, 'DO 21114880/ SO 21114884', '2021-11-18 06:43:00', 48, 'PT Cianjur Arta Makmur', 1, '', 5350000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 5350000.0000, 0.0000, 'received', 'pending', 1, 6, '2021-12-06 08:11:28', NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(54, 'MS-21111796', '2021-11-22 06:54:00', 48, 'PT Cianjur Arta Makmur', 1, '', 4570000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 4570000.0000, 0.0000, 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(55, 'MS-21111811', '2021-11-25 07:09:00', 48, 'PT Cianjur Arta Makmur', 1, '', 2746000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 2746000.0000, 0.0000, 'received', 'pending', 1, 6, '2021-12-06 08:02:43', NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(56, 'MS-21111818', '2021-11-27 09:35:00', 48, 'PT Cianjur Arta Makmur', 1, '', 2810000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 2810000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(57, 'MS-21121837', '2021-12-04 07:56:00', 48, 'PT Cianjur Arta Makmur', 1, '', 5555000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 5555000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(58, 'MS-21121846', '2021-12-07 08:02:00', 48, 'PT Cianjur Arta Makmur', 1, '', 7100000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 7100000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(59, 'MS-21121857', '2021-12-10 06:07:00', 48, 'PT Cianjur Arta Makmur', 1, '', 7185000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 7185000.0000, 0.0000, 'received', 'pending', 6, 6, '2022-02-15 07:16:07', NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(61, 'MS-21121879', '2021-12-15 09:51:00', 48, 'PT Cianjur Arta Makmur', 1, '', 3080000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 3080000.0000, 0.0000, 'received', 'pending', 6, 6, '2021-12-16 10:18:17', NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(62, 'MS-21121879', '2021-12-16 09:57:00', 48, 'PT Cianjur Arta Makmur', 1, '', 2900000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 2900000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(63, 'MS-21121882', '2021-12-17 07:41:00', 48, 'PT Cianjur Arta Makmur', 1, '', 2050000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 2050000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(64, 'MS-21121890', '2021-12-21 02:25:00', 48, 'PT Cianjur Arta Makmur', 1, '&lt;p&gt;MS-21121890&lt;&sol;p&gt;', 1650000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1650000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(65, 'MS-21121894', '2021-12-22 04:09:00', 48, 'PT Cianjur Arta Makmur', 1, '', 3200000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 3200000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(66, 'MS-21121908', '2021-12-28 08:59:00', 48, 'PT Cianjur Arta Makmur', 1, '', 5210000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 5210000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(67, 'MS-21121816', '2021-12-31 09:30:00', 48, 'PT Cianjur Arta Makmur', 1, '', 2650000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 2650000.0000, 0.0000, 'received', 'pending', 6, 6, '2022-02-03 08:10:24', NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(68, 'MS-22010005', '2022-01-03 06:57:00', 48, 'PT Cianjur Arta Makmur', 1, '', 7067000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 7067000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(69, 'MS-22010014', '2022-01-06 08:28:00', 48, 'PT Cianjur Arta Makmur', 1, '', 4820000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 4820000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(70, 'MS-22010021', '2022-01-08 08:46:00', 48, 'PT Cianjur Arta Makmur', 1, '', 666000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 666000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(71, 'MS-22010035', '2022-01-13 08:50:00', 48, 'PT Cianjur Arta Makmur', 1, '', 5066000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 5066000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(72, 'MS-22010043', '2022-01-14 03:27:00', 48, 'PT Cianjur Arta Makmur', 1, '', 3575000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 3575000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(73, 'MS-22010050', '2022-01-15 03:37:00', 48, 'PT Cianjur Arta Makmur', 1, '', 2432000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 2432000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(74, 'MS-22010053', '2022-01-17 03:45:00', 48, 'PT Cianjur Arta Makmur', 1, '', 3580000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 3580000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(75, 'MS-22010061', '2022-01-20 03:49:00', 48, 'PT Cianjur Arta Makmur', 1, '', 1800000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1800000.0000, 0.0000, 'received', 'pending', 6, NULL, NULL, NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL);

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
(426, 75, NULL, 36, 'WMS-002', 'WMeat Aus Beef Daging Rendang 1 kg', NULL, 120000.0000, 15.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1800000.0000, 15.0000, '2022-01-20', 'received', 120000.0000, 120000.0000, 15.0000, NULL, NULL, 23, 'PCS', 15.0000, NULL, NULL, NULL, NULL),
(425, 74, NULL, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', NULL, 70000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 700000.0000, 10.0000, '2022-01-17', 'received', 70000.0000, 70000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(424, 74, NULL, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', NULL, 160000.0000, 18.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 2880000.0000, 18.0000, '2022-01-17', 'received', 160000.0000, 160000.0000, 18.0000, NULL, NULL, 23, 'PCS', 18.0000, NULL, NULL, NULL, NULL),
(423, 73, NULL, 89, 'OLN-017', 'WMeat Buntut Sapi / Oxtail Cut  500 gr', NULL, 82000.0000, 6.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 492000.0000, 6.0000, '2022-01-15', 'received', 82000.0000, 82000.0000, 6.0000, NULL, NULL, 23, 'PCS', 6.0000, NULL, NULL, NULL, NULL),
(422, 73, NULL, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', NULL, 75000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 750000.0000, 10.0000, '2022-01-15', 'received', 75000.0000, 75000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(421, 73, NULL, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', NULL, 125000.0000, 6.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 750000.0000, 6.0000, '2022-01-15', 'received', 125000.0000, 125000.0000, 6.0000, NULL, NULL, 23, 'PCS', 6.0000, NULL, NULL, NULL, NULL),
(420, 73, NULL, 51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', NULL, 44000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 440000.0000, 10.0000, '2022-01-15', 'received', 44000.0000, 44000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(419, 72, NULL, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', NULL, 85000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 425000.0000, 5.0000, '2022-01-14', 'received', 85000.0000, 85000.0000, 5.0000, NULL, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL),
(418, 72, NULL, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', NULL, 160000.0000, 15.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 2400000.0000, 15.0000, '2022-01-14', 'received', 160000.0000, 160000.0000, 15.0000, NULL, NULL, 23, 'PCS', 15.0000, NULL, NULL, NULL, NULL),
(417, 72, NULL, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', NULL, 75000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 750000.0000, 10.0000, '2022-01-14', 'received', 75000.0000, 75000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(416, 71, NULL, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', NULL, 68000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 680000.0000, 8.0000, '2022-01-13', 'received', 68000.0000, 68000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(415, 71, NULL, 66, 'WMS-030', 'Wmeat Aus Beef Iga Galbi 500 gr', NULL, 75000.0000, 6.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 450000.0000, 6.0000, '2022-01-13', 'received', 75000.0000, 75000.0000, 6.0000, NULL, NULL, 23, 'PCS', 6.0000, NULL, NULL, NULL, NULL),
(413, 71, NULL, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', NULL, 140000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 560000.0000, 4.0000, '2022-01-13', 'received', 140000.0000, 140000.0000, 4.0000, NULL, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL),
(414, 71, NULL, 74, 'OLN-011', 'WMeat Aus Beef Iga Bakar 500 gr', NULL, 44000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 176000.0000, 4.0000, '2022-01-13', 'received', 44000.0000, 44000.0000, 4.0000, NULL, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL),
(412, 71, NULL, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', NULL, 160000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 3200000.0000, 3.0000, '2022-01-13', 'received', 160000.0000, 160000.0000, 20.0000, NULL, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL),
(409, 69, NULL, 51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', NULL, 44000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 440000.0000, 1.0000, '2022-01-06', 'received', 44000.0000, 44000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(410, 69, NULL, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', NULL, 80000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 800000.0000, 9.0000, '2022-01-06', 'received', 80000.0000, 80000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(411, 70, NULL, 76, 'OLN-015', 'WMeat Aus Beef All Variant (Tumis/Sop) 500 gr', NULL, 37000.0000, 18.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 666000.0000, 5.0000, '2022-01-08', 'received', 37000.0000, 37000.0000, 18.0000, NULL, NULL, 23, 'PCS', 18.0000, NULL, NULL, NULL, NULL),
(402, 68, NULL, 51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', NULL, 44000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 440000.0000, 0.0000, '2022-01-03', 'received', 44000.0000, 44000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(405, 69, NULL, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', NULL, 75000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 750000.0000, 3.0000, '2022-01-06', 'received', 75000.0000, 75000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(406, 69, NULL, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', NULL, 68000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 680000.0000, 0.0000, '2022-01-06', 'received', 68000.0000, 68000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(407, 69, NULL, 74, 'OLN-011', 'WMeat Aus Beef Iga Bakar 500 gr', NULL, 44000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 880000.0000, 0.0000, '2022-01-06', 'received', 44000.0000, 44000.0000, 20.0000, NULL, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL),
(408, 69, NULL, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', NULL, 63500.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1270000.0000, 1.0000, '2022-01-06', 'received', 63500.0000, 63500.0000, 20.0000, NULL, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL),
(401, 68, NULL, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', NULL, 75000.0000, 7.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 525000.0000, 0.0000, '2022-01-03', 'received', 75000.0000, 75000.0000, 7.0000, NULL, NULL, 23, 'PCS', 7.0000, NULL, NULL, NULL, NULL),
(267, NULL, NULL, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', NULL, 140000.0000, 11.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1540000.0000, 0.0000, '2021-10-30', 'received', 140000.0000, 140000.0000, 11.0000, NULL, NULL, 23, 'PCS', 11.0000, NULL, NULL, NULL, NULL),
(268, NULL, NULL, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', NULL, 68000.0000, 1.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 68000.0000, 0.0000, '2021-10-30', 'received', 68000.0000, 68000.0000, 1.0000, NULL, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL),
(269, NULL, NULL, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', NULL, 125000.0000, 5.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 625000.0000, 0.0000, '2021-10-30', 'received', 125000.0000, 125000.0000, 5.0000, NULL, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL),
(270, NULL, NULL, 46, 'WMS-012', 'WMeat Aus Beef Tulang Sop 1 kg', NULL, 0.0000, 3.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '2021-10-30', 'received', 0.0000, 0.0000, 3.0000, NULL, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL),
(271, NULL, NULL, 49, 'WMS-015', 'WMeat Aus Beef All Variant Less Fat 500 gr', NULL, 0.0000, 2.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '2021-10-30', 'received', 0.0000, 0.0000, 2.0000, NULL, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL),
(272, NULL, NULL, 50, 'WMS-016', 'WMeat Aus Beef All Variant Less Fat 1 kg', NULL, 0.0000, 3.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '2021-10-30', 'received', 0.0000, 0.0000, 3.0000, NULL, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL),
(273, NULL, NULL, 51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', NULL, 0.0000, 12.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '2021-10-30', 'received', 0.0000, 0.0000, 12.0000, NULL, NULL, 23, 'PCS', 12.0000, NULL, NULL, NULL, NULL),
(274, NULL, NULL, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', NULL, 0.0000, 11.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '2021-10-30', 'received', 0.0000, 0.0000, 11.0000, NULL, NULL, 23, 'PCS', 11.0000, NULL, NULL, NULL, NULL),
(275, NULL, NULL, 55, 'WMS-021', 'WMeat Aus Beef Oxtail Cut 500 gr', NULL, 0.0000, 10.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '2021-10-30', 'received', 0.0000, 0.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(276, NULL, NULL, 58, 'WMS-024', 'WMeat Aus Beef Daging Giling 1 kg', NULL, 0.0000, 4.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '2021-10-30', 'received', 0.0000, 0.0000, 4.0000, NULL, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL),
(277, NULL, NULL, 59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', NULL, 0.0000, 6.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '2021-10-30', 'received', 0.0000, 0.0000, 6.0000, NULL, NULL, 23, 'PCS', 6.0000, NULL, NULL, NULL, NULL),
(278, NULL, NULL, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', NULL, 0.0000, 9.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '2021-10-30', 'received', 0.0000, 0.0000, 9.0000, NULL, NULL, 23, 'PCS', 9.0000, NULL, NULL, NULL, NULL),
(279, NULL, NULL, 65, 'WMS-027', 'Wmeat Aus Beef Striploin Steak Bone In 250 gr', NULL, 0.0000, 17.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 2.0000, '2021-10-30', 'received', 0.0000, 0.0000, 17.0000, NULL, NULL, 23, 'PCS', 17.0000, NULL, NULL, NULL, NULL),
(280, NULL, NULL, 66, 'WMS-030', 'Wmeat Aus Beef Iga Galbi 500 gr', NULL, 0.0000, 10.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '2021-10-30', 'received', 0.0000, 0.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(281, NULL, NULL, 68, 'WMS-029', 'WMeat Aus Beef Lidah Sapi Slice 250 gr', NULL, 0.0000, 16.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 8.0000, '2021-10-30', 'received', 0.0000, 0.0000, 16.0000, NULL, NULL, 23, 'PCS', 16.0000, NULL, NULL, NULL, NULL),
(282, NULL, NULL, 69, 'WMS-028', 'WMeat Aus Beef Lidah Sapi Slice 500 gr', NULL, 65000.0000, 1.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 65000.0000, 0.0000, '2021-10-30', 'received', 65000.0000, 65000.0000, 1.0000, NULL, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL),
(283, NULL, NULL, 70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', NULL, 57000.0000, 11.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 627000.0000, 0.0000, '2021-10-30', 'received', 57000.0000, 57000.0000, 11.0000, NULL, NULL, 23, 'PCS', 11.0000, NULL, NULL, NULL, NULL),
(284, NULL, NULL, 71, 'OLN-004', 'WMeat Aus Beef Daging Giling 1 kg', NULL, 110000.0000, 5.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 550000.0000, 2.0000, '2021-10-30', 'received', 110000.0000, 110000.0000, 5.0000, NULL, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL),
(285, NULL, NULL, 72, 'OLN-009', 'WMeat Aus Beef Striploin Steak 200 gr', NULL, 37500.0000, 11.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 412500.0000, 0.0000, '2021-10-30', 'received', 37500.0000, 37500.0000, 11.0000, NULL, NULL, 23, 'PCS', 11.0000, NULL, NULL, NULL, NULL),
(286, NULL, NULL, 73, 'OLN-010', 'WMeat Aus Beef Striploin Steak 400 gr', NULL, 69000.0000, 12.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 828000.0000, 0.0000, '2021-10-30', 'received', 69000.0000, 69000.0000, 12.0000, NULL, NULL, 23, 'PCS', 12.0000, NULL, NULL, NULL, NULL),
(287, NULL, NULL, 74, 'OLN-011', 'WMeat Aus Beef Iga Bakar 500 gr', NULL, 44000.0000, 7.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 308000.0000, 0.0000, '2021-10-30', 'received', 44000.0000, 44000.0000, 7.0000, NULL, NULL, 23, 'PCS', 7.0000, NULL, NULL, NULL, NULL),
(288, NULL, NULL, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', NULL, 84000.0000, 10.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 840000.0000, 0.0000, '2021-10-30', 'received', 84000.0000, 84000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(289, NULL, NULL, 76, 'OLN-015', 'WMeat Aus Beef All Variant (Tumis/Sop) 500 gr', NULL, 37000.0000, 10.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 370000.0000, 0.0000, '2021-10-30', 'received', 37000.0000, 37000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(290, NULL, NULL, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', NULL, 70000.0000, 8.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 560000.0000, 0.0000, '2021-10-30', 'received', 70000.0000, 70000.0000, 8.0000, NULL, NULL, 23, 'PCS', 8.0000, NULL, NULL, NULL, NULL),
(291, NULL, NULL, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', NULL, 63500.0000, 10.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 635000.0000, 0.0000, '2021-10-30', 'received', 63500.0000, 63500.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(292, NULL, NULL, 79, 'OLN-032', 'Wmeat Oxtail Super 500 gr', NULL, 95000.0000, 1.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 95000.0000, 1.0000, '2021-10-30', 'received', 95000.0000, 95000.0000, 1.0000, NULL, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL),
(293, NULL, NULL, 80, 'OLN-0290', 'Tenderloin Cube 300 gr', NULL, 95000.0000, 11.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1045000.0000, 9.0000, '2021-10-30', 'received', 95000.0000, 95000.0000, 11.0000, NULL, NULL, 23, 'PCS', 11.0000, NULL, NULL, NULL, NULL),
(294, NULL, NULL, 86, 'WMS-023', 'WMeat Aus Beef Daging Giling 500 gram', NULL, 50000.0000, 1.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 50000.0000, 1.0000, '2021-10-30', 'received', 50000.0000, 50000.0000, 1.0000, NULL, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL),
(295, NULL, NULL, 45, 'WMS-011', 'WMeat Aus Beef Tulang Sop 500 gr', NULL, 0.0000, -1.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '2021-10-30', 'received', 0.0000, 0.0000, -1.0000, NULL, NULL, 23, 'PCS', -1.0000, NULL, NULL, NULL, NULL),
(362, 49, NULL, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', NULL, 70000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 350000.0000, 0.0000, '2021-11-04', 'received', 70000.0000, 70000.0000, 5.0000, NULL, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL),
(361, 49, NULL, 50, 'WMS-016', 'WMeat Aus Beef All Variant Less Fat 1 kg', NULL, 90000.0000, 8.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 720000.0000, 0.0000, '2021-11-04', 'received', 90000.0000, 90000.0000, 8.0000, NULL, NULL, 23, 'PCS', 8.0000, NULL, NULL, NULL, NULL),
(360, 49, NULL, 49, 'WMS-015', 'WMeat Aus Beef All Variant Less Fat 500 gr', NULL, 50000.0000, 8.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 400000.0000, 1.0000, '2021-11-04', 'received', 50000.0000, 50000.0000, 8.0000, NULL, NULL, 23, 'PCS', 8.0000, NULL, NULL, NULL, NULL),
(359, 49, NULL, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', NULL, 140000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1400000.0000, 0.0000, '2021-11-04', 'received', 140000.0000, 140000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(300, 50, NULL, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', NULL, 124000.0000, 15.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1860000.0000, 0.0000, '2021-11-08', 'received', 124000.0000, 124000.0000, 15.0000, NULL, NULL, 23, 'PCS', 15.0000, NULL, NULL, NULL, NULL),
(301, 50, NULL, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', NULL, 95000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 950000.0000, 0.0000, '2021-11-08', 'received', 95000.0000, 95000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(302, 51, NULL, 87, 'OLN-013', 'WMeat Tulang Sapi Sop  500 gr', NULL, 25000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 250000.0000, 4.0000, '2021-11-10', 'received', 25000.0000, 25000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(303, 51, NULL, 36, 'WMS-002', 'WMeat Aus Beef Daging Rendang 1 kg', NULL, 120000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1200000.0000, 0.0000, '2021-11-10', 'received', 120000.0000, 120000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(304, 51, NULL, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', NULL, 63500.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 635000.0000, 0.0000, '2021-11-10', 'received', 63500.0000, 63500.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(305, 51, NULL, 88, 'OLN-014', 'WMeat Tulang Sapi Soup  1 kg', NULL, 34000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 340000.0000, 5.0000, '2021-11-10', 'received', 34000.0000, 34000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(306, 51, NULL, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', NULL, 68000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 680000.0000, 0.0000, '2021-11-10', 'received', 68000.0000, 68000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(307, 51, NULL, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', NULL, 125000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1250000.0000, 0.0000, '2021-11-10', 'received', 125000.0000, 125000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(358, 52, NULL, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', NULL, 124000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 496000.0000, 0.0000, '2021-11-16', 'received', 124000.0000, 124000.0000, 4.0000, NULL, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL),
(357, 52, NULL, 72, 'OLN-009', 'WMeat Aus Beef Striploin Steak 200 gr', NULL, 37500.0000, 6.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 225000.0000, 1.0000, '2021-11-16', 'received', 37500.0000, 37500.0000, 6.0000, NULL, NULL, 23, 'PCS', 6.0000, NULL, NULL, NULL, NULL),
(356, 52, NULL, 70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', NULL, 57000.0000, 7.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 399000.0000, 0.0000, '2021-11-16', 'received', 57000.0000, 57000.0000, 7.0000, NULL, NULL, 23, 'PCS', 7.0000, NULL, NULL, NULL, NULL),
(355, 52, NULL, 59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', NULL, 45000.0000, 9.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 405000.0000, 0.0000, '2021-11-16', 'received', 45000.0000, 45000.0000, 9.0000, NULL, NULL, 23, 'PCS', 9.0000, NULL, NULL, NULL, NULL),
(354, 52, NULL, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', NULL, 80000.0000, 6.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 480000.0000, 0.0000, '2021-11-16', 'received', 80000.0000, 80000.0000, 6.0000, NULL, NULL, 23, 'PCS', 6.0000, NULL, NULL, NULL, NULL),
(353, 53, NULL, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', NULL, 124000.0000, 15.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1860000.0000, 0.0000, '2021-11-18', 'received', 124000.0000, 124000.0000, 15.0000, NULL, NULL, 23, 'PCS', 15.0000, NULL, NULL, NULL, NULL),
(352, 53, NULL, 71, 'OLN-004', 'WMeat Aus Beef Daging Giling 1 kg', NULL, 110000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1100000.0000, 10.0000, '2021-11-18', 'received', 110000.0000, 110000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(351, 53, NULL, 69, 'WMS-028', 'WMeat Aus Beef Lidah Sapi Slice 500 gr', NULL, 65000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 650000.0000, 8.0000, '2021-11-18', 'received', 65000.0000, 65000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(350, 53, NULL, 68, 'WMS-029', 'WMeat Aus Beef Lidah Sapi Slice 250 gr', NULL, 35000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 140000.0000, 4.0000, '2021-11-18', 'received', 35000.0000, 35000.0000, 4.0000, NULL, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL),
(349, 53, NULL, 66, 'WMS-030', 'Wmeat Aus Beef Iga Galbi 500 gr', NULL, 75000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 750000.0000, 5.0000, '2021-11-18', 'received', 75000.0000, 75000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(348, 53, NULL, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', NULL, 85000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 850000.0000, 0.0000, '2021-11-18', 'received', 85000.0000, 85000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(335, 54, NULL, 70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', NULL, 57000.0000, 30.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1710000.0000, 22.0000, '2021-11-22', 'received', 57000.0000, 57000.0000, 30.0000, NULL, NULL, 23, 'PCS', 30.0000, NULL, NULL, NULL, NULL),
(336, 54, NULL, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', NULL, 68000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1360000.0000, 0.0000, '2021-11-22', 'received', 68000.0000, 68000.0000, 20.0000, NULL, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL),
(337, 54, NULL, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', NULL, 75000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1500000.0000, 0.0000, '2021-11-22', 'received', 75000.0000, 75000.0000, 20.0000, NULL, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL),
(347, 55, NULL, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', NULL, 70000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 700000.0000, 0.0000, '2021-11-25', 'received', 70000.0000, 70000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(346, 55, NULL, 76, 'OLN-015', 'WMeat Aus Beef All Variant (Tumis/Sop) 500 gr', NULL, 37000.0000, 8.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 296000.0000, 0.0000, '2021-11-25', 'received', 37000.0000, 37000.0000, 8.0000, NULL, NULL, 23, 'PCS', 8.0000, NULL, NULL, NULL, NULL),
(345, 55, NULL, 49, 'WMS-015', 'WMeat Aus Beef All Variant Less Fat 500 gr', NULL, 50000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 500000.0000, 10.0000, '2021-11-25', 'received', 50000.0000, 50000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(344, 55, NULL, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', NULL, 125000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1250000.0000, 0.0000, '2021-11-25', 'received', 125000.0000, 125000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(342, 56, NULL, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', NULL, 95000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 950000.0000, 0.0000, '2021-11-27', 'received', 95000.0000, 95000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(343, 56, NULL, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', NULL, 124000.0000, 15.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1860000.0000, 0.0000, '2021-11-27', 'received', 124000.0000, 124000.0000, 15.0000, NULL, NULL, 23, 'PCS', 15.0000, NULL, NULL, NULL, NULL),
(363, 57, NULL, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', NULL, 124000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 2480000.0000, 0.0000, '2021-12-04', 'received', 124000.0000, 124000.0000, 20.0000, NULL, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL),
(364, 57, NULL, 36, 'WMS-002', 'WMeat Aus Beef Daging Rendang 1 kg', NULL, 120000.0000, 15.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1800000.0000, 6.0000, '2021-12-04', 'received', 120000.0000, 120000.0000, 15.0000, NULL, NULL, 23, 'PCS', 15.0000, NULL, NULL, NULL, NULL),
(365, 57, NULL, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', NULL, 85000.0000, 15.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1275000.0000, 7.0000, '2021-12-04', 'received', 85000.0000, 85000.0000, 15.0000, NULL, NULL, 23, 'PCS', 15.0000, NULL, NULL, NULL, NULL),
(366, 58, NULL, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', NULL, 124000.0000, 50.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 6200000.0000, 0.0000, '2021-12-07', 'received', 124000.0000, 124000.0000, 50.0000, NULL, NULL, 23, 'PCS', 50.0000, NULL, NULL, NULL, NULL),
(367, 58, NULL, 50, 'WMS-016', 'WMeat Aus Beef All Variant Less Fat 1 kg', NULL, 90000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 900000.0000, 7.0000, '2021-12-07', 'received', 90000.0000, 90000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(429, 59, NULL, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', NULL, 63500.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 635000.0000, 8.0000, '2021-12-10', 'received', 63500.0000, 63500.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(428, 59, NULL, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', NULL, 124000.0000, 50.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 6200000.0000, 0.0000, '2021-12-10', 'received', 124000.0000, 124000.0000, 50.0000, NULL, NULL, 23, 'PCS', 50.0000, NULL, NULL, NULL, NULL),
(427, 59, NULL, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', NULL, 70000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 350000.0000, 0.0000, '2021-12-10', 'received', 70000.0000, 70000.0000, 5.0000, NULL, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL),
(400, 68, NULL, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', NULL, 140000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 560000.0000, 2.0000, '2022-01-03', 'received', 140000.0000, 140000.0000, 4.0000, NULL, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL),
(399, 68, NULL, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', NULL, 125000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 125000.0000, 1.0000, '2022-01-03', 'received', 125000.0000, 125000.0000, 1.0000, NULL, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL),
(381, 61, NULL, 89, 'OLN-017', 'WMeat Buntut Sapi / Oxtail Cut  500 gr', NULL, 82000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 820000.0000, 5.0000, '2021-12-15', 'received', 82000.0000, 82000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(380, 61, NULL, 59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', NULL, 45000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 900000.0000, 13.0000, '2021-12-15', 'received', 45000.0000, 45000.0000, 20.0000, NULL, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL),
(379, 61, NULL, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', NULL, 68000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1360000.0000, 0.0000, '2021-12-15', 'received', 68000.0000, 68000.0000, 20.0000, NULL, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL),
(377, 62, NULL, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', NULL, 160000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1600000.0000, 0.0000, '2021-12-16', 'received', 160000.0000, 160000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(378, 62, NULL, 79, 'OLN-032', 'Wmeat Oxtail Super 500 gr', NULL, 130000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1300000.0000, 10.0000, '2021-12-16', 'received', 130000.0000, 130000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(382, 63, NULL, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', NULL, 95000.0000, 15.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1425000.0000, 4.0000, '2021-12-17', 'received', 95000.0000, 95000.0000, 15.0000, NULL, NULL, 23, 'PCS', 15.0000, NULL, NULL, NULL, NULL),
(383, 63, NULL, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', NULL, 125000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 625000.0000, 0.0000, '2021-12-17', 'received', 125000.0000, 125000.0000, 5.0000, NULL, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL),
(384, 64, NULL, 73, 'OLN-010', 'WMeat Aus Beef Striploin Steak 400 gr', NULL, 85000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 850000.0000, 2.0000, '2021-12-21', 'received', 85000.0000, 85000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(385, 64, NULL, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', NULL, 80000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 800000.0000, 0.0000, '2021-12-21', 'received', 80000.0000, 80000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(386, 65, NULL, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', NULL, 160000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 3200000.0000, 0.0000, '2021-12-22', 'received', 160000.0000, 160000.0000, 20.0000, NULL, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL),
(387, NULL, NULL, 93, '', '', NULL, 0.0000, 0.0000, 1, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, -1.0000, '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL),
(388, 66, NULL, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', NULL, 75000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 750000.0000, 0.0000, '2021-12-28', 'received', 75000.0000, 75000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(389, 66, NULL, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', NULL, 70000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 700000.0000, 10.0000, '2021-12-28', 'received', 70000.0000, 70000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(390, 66, NULL, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', NULL, 160000.0000, 21.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 3360000.0000, 0.0000, '2021-12-28', 'received', 160000.0000, 160000.0000, 21.0000, NULL, NULL, 23, 'PCS', 21.0000, NULL, NULL, NULL, NULL),
(391, 66, NULL, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', NULL, 80000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 400000.0000, 0.0000, '2021-12-28', 'received', 80000.0000, 80000.0000, 5.0000, NULL, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL),
(404, 67, NULL, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', NULL, 125000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1250000.0000, 5.0000, '2021-12-31', 'received', 125000.0000, 125000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(403, 67, NULL, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', NULL, 140000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 1400000.0000, 0.0000, '2021-12-31', 'received', 140000.0000, 140000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(394, 68, NULL, 72, 'OLN-009', 'WMeat Aus Beef Striploin Steak 200 gr', NULL, 37500.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 375000.0000, 10.0000, '2022-01-03', 'received', 37500.0000, 37500.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(395, 68, NULL, 73, 'OLN-010', 'WMeat Aus Beef Striploin Steak 400 gr', NULL, 85000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 850000.0000, 10.0000, '2022-01-03', 'received', 85000.0000, 85000.0000, 10.0000, NULL, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL),
(396, 68, NULL, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', NULL, 95000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 380000.0000, 4.0000, '2022-01-03', 'received', 95000.0000, 95000.0000, 4.0000, NULL, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL),
(397, 68, NULL, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', NULL, 160000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 3200000.0000, 0.0000, '2022-01-03', 'received', 160000.0000, 160000.0000, 20.0000, NULL, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL),
(398, 68, NULL, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', NULL, 68000.0000, 9.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 612000.0000, 0.0000, '2022-01-03', 'received', 68000.0000, 68000.0000, 9.0000, NULL, NULL, 23, 'PCS', 9.0000, NULL, NULL, NULL, NULL),
(265, NULL, NULL, 56, 'WMS-022', 'WMeat Aus Beef Oxtail Cut 1 kg', NULL, 0.0000, 14.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '2021-10-30', 'received', 0.0000, 0.0000, 14.0000, NULL, NULL, 23, 'PCS', 14.0000, NULL, NULL, NULL, NULL),
(266, NULL, NULL, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', NULL, 75000.0000, 14.0000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1050000.0000, 0.0000, '2021-10-30', 'received', 75000.0000, 75000.0000, 14.0000, NULL, NULL, 23, 'PCS', 14.0000, NULL, NULL, NULL, NULL);

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
(37, '2021-11-04 08:56:00', 'WT009', 58, 'Yanti', 1, 'WMEAT', 1, '&lt;p&gt;Mba Yanti WMP&lt;&sol;p&gt;', '', 158000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 158000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:18:20', 2, 0, 158000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '943aa42a3766318480397b1bdccf3e64d14b4d8267987d8610e6f6f0ad2d2654', NULL, NULL, NULL, NULL, NULL),
(36, '2021-11-04 08:30:00', 'WT008', 57, 'Ayu Purwaningsih', 1, 'WMEAT', 1, '&lt;p&gt;Ibu Ayu &lpar; Transfer&lt;&sol;p&gt;', '', 140000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 140000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:18:10', 1, 0, 140000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'fdd4634eb6863e7499755497868dbb8013d738684ac37685ad094ae3c0343960', NULL, NULL, NULL, NULL, NULL),
(35, '2021-11-04 08:25:00', 'WT007', 56, 'Suciningtyas', 1, 'WMEAT', 1, '&lt;p&gt;Mba Suci &lpar; Transfer&rpar;&lt;&sol;p&gt;', '', 107000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 107000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:18:03', 2, 0, 107000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'fe067351cd00a693d13bc2dd61cf5e6504bcdc2488a231bf923116802fe0a880', NULL, NULL, NULL, NULL, NULL),
(27, '2021-11-02 03:36:00', 'WT000', 52, 'Reanie', 1, 'WMEAT', 1, '', '', 1240000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1240000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:13:30', 10, 0, 1240000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '5b29d0ba78db96bc330cb13a0dabae8a13600710faef5c29fa9d36de7ff327c4', NULL, NULL, NULL, NULL, NULL),
(29, '2021-11-02 06:39:00', 'WT001', 53, 'Teddy', 1, 'WMEAT', 1, '', '', 187500.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 187500.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:13:51', 2, 0, 187500.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'cffabb7dd25c2034e515993bb0407b55433d5eb521a81aa79b845a444999d5b3', NULL, NULL, NULL, NULL, NULL),
(30, '2021-11-03 06:42:00', 'WT002', 54, 'Aulia', 1, 'WMEAT', 1, '&lt;p&gt;a&period;n Aulia&lt;&sol;p&gt;', '', 41500.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 41500.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:14:14', 1, 0, 41500.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'ddc7ec50e77666d6ddda7fb71e680011bf10fa845a4cf872abd31dad457fdb3c', NULL, NULL, NULL, NULL, NULL),
(31, '2021-11-03 06:47:00', 'WT003', 50, 'WMU Trading', 1, 'WMEAT', 1, '&lt;p&gt;Trading WMU&lt;&sol;p&gt;', '', 1525000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1525000.0000, 'completed', 'due', 0, NULL, 6, 6, '2022-01-03 08:15:32', 15, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '9c2e539578c600ac3a39d6761edd0977b3b17fb911456a9cec1f421468ecff1a', NULL, NULL, NULL, NULL, NULL),
(32, '2021-11-03 07:29:00', 'WT004', 89, 'erdina', 1, 'WMEAT', 1, '', '', 404000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 404000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:16:01', 4, 0, 404000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '7cfdbe97194cb4f4542ffacaae27b08b89dff9b5f6b747df758d8acaf6419fb2', NULL, NULL, NULL, NULL, NULL),
(34, '2021-11-04 08:19:00', 'WT006', 55, 'Fida', 1, 'WMEAT', 1, '&lt;p&gt;Mba Fida LMP&lt;&sol;p&gt;', '', 187500.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 187500.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:17:54', 2, 0, 187500.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '0c6112d6ba64cfa5efd3a296cb9b4b0149dc8d8c0bba50c84cee41de678a6a27', NULL, NULL, NULL, NULL, NULL),
(38, '2021-11-04 09:01:00', 'WT010', 50, 'WMU Trading', 1, 'WMEAT', 1, '&lt;p&gt;Trading WMU&lt;&sol;p&gt;', '', 117000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 117000.0000, 'completed', 'due', 0, NULL, 6, 6, '2022-01-03 08:18:28', 2, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '76add35533e439e44e6c9911abf9324c26a3bf96c1af589b100c522211db9cc2', NULL, NULL, NULL, NULL, NULL),
(39, '2021-11-05 09:05:00', 'WT011', 47, 'aprindy', 1, 'WMEAT', 1, '', '', 262500.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 262500.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:20:03', 3, 0, 262500.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '613c868fe35df0128ced4afd816ff8a9b3ef91e1e362e9dfc4162eb64f1fbf10', NULL, NULL, NULL, NULL, NULL),
(40, '2021-11-05 09:23:00', 'WT012', 59, 'Lusty', 1, 'WMEAT', 1, '&lt;p&gt;Lusty WMP&lt;&sol;p&gt;', '', 645000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 645000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:20:12', 7, 0, 645000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '63240ba28ae7e493fed012a2d98fc1e6419c17618b9c05354b449f58d9b8963f', NULL, NULL, NULL, NULL, NULL),
(41, '2021-11-05 10:32:00', 'WT013', 60, 'Sherry', 1, 'WMEAT', 1, '', '', 390000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 390000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:20:20', 3, 0, 390000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '2071e8b4f8ff284d49f7fa6791cd67185ae5e2e75625978083f6c71a7f2ab965', NULL, NULL, NULL, NULL, NULL),
(42, '2021-11-05 10:33:00', 'WT014', 62, 'Andri', 1, 'WMEAT', 1, '', '', 349000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 349000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:20:29', 7, 0, 349000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'b546253a6263f367406241ff7b02a8c4143567f13058b8ec9e022587c0b089f1', NULL, NULL, NULL, NULL, NULL),
(44, '2021-11-04 03:15:00', 'WT005', 63, 'Nurul Fatihat', 1, 'WMEAT', 1, '', '', 197000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 197000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:16:27', 2, 0, 197000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'e4be0b872cc9da3f89666805f5452809ea9ac758a82f3fb9eacb42fe7918848d', NULL, NULL, NULL, NULL, NULL),
(46, '2021-11-08 05:18:00', 'WT016', 64, 'florija', 1, 'WMEAT', 1, '&lt;p&gt;FLorija&lt;&sol;p&gt;', '', 467500.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 467500.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:20:46', 6, 0, 467500.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '859206cd98a85c643b3155cdebdb80c0b9d9845dacf8ba74cc65f9f24ab86a3f', NULL, NULL, NULL, NULL, NULL),
(47, '2021-11-09 07:05:00', 'WT017', 65, 'fani', 1, 'WMEAT', 1, '', '', 225000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 225000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:20:54', 5, 0, 225000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'efaedcfdcac68542df7ae052f1f1b97c102f1a51fc940d3d17a4f3ed6842a8bd', NULL, NULL, NULL, NULL, NULL),
(50, '2021-11-08 03:16:00', 'WT015', 50, 'WMU Trading', 1, 'WMEAT', 1, '&lt;p&gt;Bapak Maha&lt;&sol;p&gt;', '', 63500.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 63500.0000, 'completed', 'due', 0, NULL, 6, 6, '2022-01-03 08:20:37', 1, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '40cf7c949ee6e313cbe4dad8bb3dbf42d7b89b1e3959cb940f399a1dc2620d5d', NULL, NULL, NULL, NULL, NULL),
(53, '2021-11-09 07:06:00', 'WT018', 66, 'Alfi', 1, 'WMEAT', 1, '&lt;p&gt;Alfi&lt;&sol;p&gt;', '', 85000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 85000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:21:01', 1, 0, 85000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '81f0adcb1f1ac47dd68d0fe58d366c139067b0a715105bb980ba9e3df211c6c1', NULL, NULL, NULL, NULL, NULL),
(52, '2021-11-10 09:47:00', 'WT019', 67, 'retno', 1, 'WMEAT', 1, '&lt;p&gt;Retno WMP1&lt;&sol;p&gt;', '', 80000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 80000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:21:11', 1, 0, 80000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'f2627c5d7feffe85b91726fd376c3cef654895e41a10c66f778f98a287da1a61', NULL, NULL, NULL, NULL, NULL),
(54, '2021-11-10 10:41:00', 'WT020', 68, 'Sonia', 1, 'WMEAT', 1, '', '', 250000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 250000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:21:18', 3, 0, 250000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'fb5f6004d7068265f5d8350c2dfa5f46da323106e0b137e531e2632be3072e7f', NULL, NULL, NULL, NULL, NULL),
(56, '2021-11-12 04:19:00', 'WT021', 69, 'Ikhsan', 1, 'WMEAT', 1, '', '', 136000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 136000.0000, 'completed', 'paid', 0, NULL, 1, 6, '2022-01-03 08:21:25', 2, 0, 136000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '62955996cb53b335bcb0906bce0a06824da4096ce1f85453ec7c5dec53feefba', NULL, NULL, NULL, NULL, NULL),
(57, '2021-11-13 04:27:00', 'WT022', 52, 'Reanie', 1, 'WMEAT', 1, '', '', 1736000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1736000.0000, 'completed', 'paid', 0, NULL, 1, 6, '2022-01-03 08:21:33', 14, 0, 1736000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '3f9a5bdafbdcc5687320095dadb8e93095be20f80d38538171880122e4dbae9a', NULL, NULL, NULL, NULL, NULL),
(58, '2021-11-15 04:24:00', 'WT023', 70, 'Aditya', 1, 'WMEAT', 1, '&lt;p&gt;Pak Aditya &lpar; CAM&rpar;&lt;&sol;p&gt;', '', 1665000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1665000.0000, 'completed', 'paid', 0, NULL, 1, 6, '2022-01-03 08:21:43', 21, 0, 1665000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'dfb7dce261465647020d4295f9d0c574ec0f4ddfffb1466ade51b0329b9ce222', NULL, NULL, NULL, NULL, NULL),
(59, '2021-11-15 09:00:00', 'WT024', 71, 'Marni', 1, 'WMEAT', 1, '&lt;p&gt;Ibu Marni WMP&lt;&sol;p&gt;', '', 90000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 90000.0000, 'completed', 'paid', 0, NULL, 1, 6, '2022-01-03 08:21:51', 1, 0, 90000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'f3f662d64f1759d9309d54ebc97d4e814a397e801bb2ac18c9eb7c553cc5d438', NULL, NULL, NULL, NULL, NULL),
(60, '2021-11-16 07:17:00', 'WT025', 72, 'Risti Setyawan', 1, 'WMEAT', 1, '', '', 422000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 422000.0000, 'completed', 'paid', 0, NULL, 1, 6, '2022-01-03 08:22:00', 5, 0, 422000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'de312db32009d9bee20cbe47c128419a0d35e45c4c6cdbbad44b94927633a592', NULL, NULL, NULL, NULL, NULL),
(61, '2021-11-16 07:45:00', 'WT026', 73, 'Elisa ', 1, 'WMEAT', 1, '', '', 700000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 700000.0000, 'completed', 'paid', 0, NULL, 1, 1, '2021-11-25 08:02:30', 6, 0, 700000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'bbd6256d1558524db24cb673c2e3df3ff85dccb77c6773c32322f0326a7a1421', NULL, NULL, NULL, NULL, NULL),
(62, '2021-11-16 10:00:00', 'WT027', 50, 'WMU Trading', 1, 'WMEAT', 1, '&lt;p&gt;a&period;n Korsek WMP&lt;&sol;p&gt;', '', 136000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 136000.0000, 'completed', 'pending', 0, NULL, 1, NULL, NULL, 2, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '007cab67d3bb9b449d745dcafbe01d4454afa81ae30afa60315ea76c0223e257', NULL, NULL, NULL, NULL, NULL),
(63, '2021-11-16 10:04:00', 'WT028', 74, 'ninik', 1, 'WMEAT', 1, '&lt;p&gt;Ibu Ninik tokopedia&lt;&sol;p&gt;', '', 67000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 67000.0000, 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 0, 67000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'aa0a6e02e24e5720f06b08f99fc3e1d85146d29237981f2fc8e6d748663604e9', NULL, NULL, NULL, NULL, NULL),
(64, '2021-11-16 10:10:00', 'WT029', 75, 'Syaiful', 1, 'WMEAT', 1, '&lt;p&gt;Bapak Syaiful CAM&lt;&sol;p&gt;', '', 280000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 280000.0000, 'completed', 'paid', 0, NULL, 1, NULL, NULL, 3, 0, 280000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '164d97b46794c1a38f07a60baa0159f8d97a00412f07eb073de2ffe68e41f55a', NULL, NULL, NULL, NULL, NULL),
(65, '2021-11-16 10:32:00', 'WT030', 73, 'Elisa ', 1, 'WMEAT', 1, '&lt;p&gt;Mba Elisa WMP&lt;&sol;p&gt;', '', 100000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 100000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 0, 100000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '7101965d572dfe5c4a1e7d25bafab4b605ce7dda537b01533ab12f2f105e0152', NULL, NULL, NULL, NULL, NULL),
(66, '2021-11-16 10:34:00', 'WT031', 76, 'Yurike', 1, 'WMEAT', 1, '&lt;p&gt;Mba Yurike WMP&lt;&sol;p&gt;', '', 100000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 100000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2021-11-29 08:40:29', 1, 0, 100000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '7da7d3e39ef22e7612dccbe4360c81e522f79655b520aa98667e312708763012', NULL, NULL, NULL, NULL, NULL),
(67, '2021-11-17 02:00:00', 'WT032', 77, 'Citra Ratulangie', 1, 'WMEAT', 1, '&lt;p&gt;Mba Ciyra LMP&lt;&sol;p&gt;', '', 270000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 270000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 4, 0, 270000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '88766f926fb1118125e8944fefeab6eb585d414f1e6bf41580e25faeecbad3d0', NULL, NULL, NULL, NULL, NULL),
(68, '2021-11-18 04:00:00', 'WT033', 78, 'Winda Febri', 1, 'WMEAT', 1, '&lt;p&gt;Mba WInda Febri&lt;&sol;p&gt;', '', 266000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 266000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 3, 0, 266000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '6984fbd86cafc359fac323e9da901d2f633a1d961c668d3221b8f8fc8c026f8f', NULL, NULL, NULL, NULL, NULL),
(69, '2021-11-18 08:21:00', 'WT034', 79, 'zen', 1, 'WMEAT', 1, '', '', 285000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 285000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 3, 0, 285000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '096acca48e76d1e8e3e80126651b53b24cd6f3505d06250dc069c4375822b600', NULL, NULL, NULL, NULL, NULL),
(70, '2021-11-19 03:24:00', 'WT035', 62, 'Andri', 1, 'WMEAT', 1, '', '', 342000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 342000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2021-11-30 08:33:37', 6, 0, 342000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '3f78efc214c789c65ae2c98a206f060a6cef3c3f89974c379a8eaf09fde8f969', NULL, NULL, NULL, NULL, NULL),
(71, '2021-11-19 04:00:00', 'WT036', 50, 'WMU Trading', 1, 'WMEAT', 1, '&lt;p&gt;Trading&lt;&sol;p&gt;', '', 338500.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 338500.0000, 'completed', 'pending', 0, NULL, 6, NULL, NULL, 7, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'be98b3706479263c652bd3fad03e85013b527ff7699d97c7c7b8ea54e0bb082b', NULL, NULL, NULL, NULL, NULL),
(72, '2021-11-19 05:34:00', 'WT037', 50, 'WMU Trading', 1, 'WMEAT', 1, '&lt;p&gt;WMU Trading&lt;&sol;p&gt;', '', 1179000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1179000.0000, 'completed', 'pending', 0, NULL, 6, NULL, NULL, 17, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'ff757d622a09be36f53d96686e1d0e9311cd82c62332b4b33a2e1a9a791f4efb', NULL, NULL, NULL, NULL, NULL),
(73, '2021-11-19 08:40:00', 'WT038', 80, 'imam', 1, 'WMEAT', 1, '&lt;p&gt;Pak Imam&nbsp;&lt;&sol;p&gt;', '', 621000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 621000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 15, 0, 621000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'a1a58b770d1cfda2f790ac41238633a0002291e379163c3b15adfae7b90027dc', NULL, NULL, NULL, NULL, NULL),
(74, '2021-11-22 08:44:00', 'WT039', 81, 'rizky', 1, 'WMEAT', 1, '', '', 190000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 190000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2021-11-30 08:48:02', 2, 0, 190000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '3cef3714faea8250f43b62bb369c04ccc2f7e540020acc2da7a2b3f9999a430a', NULL, NULL, NULL, NULL, NULL),
(75, '2021-11-22 09:49:00', 'WT040', 82, 'yola', 1, 'WMEAT', 1, '', '', 148000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 148000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2021-11-30 08:54:58', 2, 0, 148000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '09230157dfaf77a70321b7576e47376bd696a0d2ca27bbf5f4eb3f6a7c5605ee', NULL, NULL, NULL, NULL, NULL),
(76, '2021-11-22 09:51:00', 'WT041', 67, 'retno', 1, 'WMEAT', 1, '', '', 205000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 205000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 0, 205000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'fe69d277430419471090c6288a157d6bc9b565a18cb9b2f83c2e66f7a8bcffb6', NULL, NULL, NULL, NULL, NULL),
(77, '2021-11-22 09:55:00', 'WT042', 50, 'WMU Trading', 1, 'WMEAT', 1, '', '', 2990000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 2990000.0000, 'completed', 'pending', 0, NULL, 6, NULL, NULL, 25, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '4f38f8f149dd4b1b6cdfceb285b59590671dc815e271f882ad70bae208a3aae5', NULL, NULL, NULL, NULL, NULL),
(78, '2021-11-23 04:59:00', 'WT043', 83, 'Aulia', 1, 'WMEAT', 1, '', '', 360000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 360000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 4, 0, 360000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'd202ca05a6b61fe867481daf4c056a547f3fdd080491b077032824b131a2b78a', NULL, NULL, NULL, NULL, NULL),
(80, '2021-11-25 09:07:00', 'WT044', 90, 'Luvita', 1, 'WMEAT', 1, '&lt;p&gt;luvita&lt;&sol;p&gt;', '', 240000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 240000.0000, 'completed', 'due', 0, NULL, 6, 6, '2021-11-30 10:10:07', 2, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'a41684d7b0098cd7a79d52a2a5cdb8217eadf3118a61da50193ab87df0310785', NULL, NULL, NULL, NULL, NULL),
(81, '2021-11-26 09:09:00', 'WT045', 85, 'dede riani', 1, 'WMEAT', 1, '', '', 222000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 222000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2021-11-30 09:10:55', 3, 0, 222000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'b047d684f2254cd7f33b662ce0088c33dd0e7ae536a2d56f72224209b7a93dff', NULL, NULL, NULL, NULL, NULL),
(82, '2021-11-26 10:11:00', 'WT046', 86, 'tania', 1, 'WMEAT', 1, '', '', 903000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 903000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2021-11-30 09:40:46', 7, 0, 903000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '81bed3675ca436aec797a0299351da211acce196c460182c63524525cde744ad', NULL, NULL, NULL, NULL, NULL),
(83, '2021-11-26 10:12:00', 'WT047', 79, 'zen', 1, 'WMEAT', 1, '', '', 285000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 285000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 3, 0, 285000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '01290465f42620eb7b4f8e819adc3401b3ea3404c675f23857a2721c4dd92a39', NULL, NULL, NULL, NULL, NULL),
(84, '2021-11-26 10:13:00', 'WT048', 87, 'putri', 1, 'WMEAT', 1, '', '', 211000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 211000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 3, 0, 211000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'f21915d268d02b1b5c5cadac35f53a5c95f65829215ea304026f5c7c8b597121', NULL, NULL, NULL, NULL, NULL),
(85, '2021-11-29 04:54:00', 'WT049', 88, 'Nova', 1, 'WMEAT', 1, '', '', 211000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 211000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 3, 0, 211000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '60ca07f46002ba2269e5a2307ccf13901ff45b87542a497cff3f7574579e8a7c', NULL, NULL, NULL, NULL, NULL),
(88, '2021-12-01 05:56:00', 'Wt051', 52, 'Reanie', 1, 'WMEAT', 1, '&lt;p&gt;Mba Reanie CAM&lt;&sol;p&gt;', '', 1240000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1240000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 10, 0, 1240000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '40b2a22c4d80bed72cdb3c3817806f2c17ace4ef1e064e6e16db3f12fb9e3dd8', NULL, NULL, NULL, NULL, NULL),
(87, '2021-11-29 09:57:00', 'WT050', 50, 'WMU Trading', 1, 'WMEAT', 1, '&lt;p&gt;trading&lt;&sol;p&gt;', '', 63500.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 63500.0000, 'completed', 'due', 0, NULL, 6, 6, '2021-12-03 02:33:36', 1, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '1f28b8db95b1cdf7242cd11c0928a92a087f96fb4be2a90a6873fe0f2b74321b', NULL, NULL, NULL, NULL, NULL),
(89, '2021-12-02 05:57:00', 'WT052', 91, 'Marlinda ', 1, 'WMEAT', 1, '', '', 1954000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1954000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 23, 0, 1954000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '7d3c18f6899830baeea1dbc966cadbdd55dcba59266b74827baf4db8602a3979', NULL, NULL, NULL, NULL, NULL),
(90, '2021-12-02 06:04:00', 'WT053', 52, 'Reanie', 1, 'WMEAT', 1, '', '', 620000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 620000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 5, 0, 620000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '54a17b58aa12d6f7e654951e2ec41f67171a88468f4282a9dbfca09cb14cc6be', NULL, NULL, NULL, NULL, NULL),
(91, '2021-12-04 06:09:00', 'WT054', 92, 'HADI', 1, 'WMEAT', 1, '&lt;p&gt;Mas Hadi WMU&lt;&sol;p&gt;', '', 200000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 200000.0000, 'completed', 'pending', 0, NULL, 6, NULL, NULL, 2, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '9fd1311ac97bf6f99d37bfad196590830409f08f88e424917fac726d947e3c69', NULL, NULL, NULL, NULL, NULL),
(92, '2021-12-04 06:13:00', 'WT055', 93, 'Djarot', 1, 'WMEAT', 1, '', '', 380000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 380000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 4, 0, 380000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '2a2dcd17f07ae51516036c3c7c6fa27a1befd11a8ba90025b380946c21a31352', NULL, NULL, NULL, NULL, NULL),
(93, '2021-12-06 06:21:00', 'WT056', 94, 'dhyna', 1, 'WMEAT', 1, '&lt;p&gt;Dhyba Tokopedia&lt;&sol;p&gt;', '', 2580000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 2580000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2021-12-09 07:47:37', 20, 0, 2580000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '026f30555741af3f742dd470e81895af27db7815d0bd7479f1adf0dc3e7f89ee', NULL, NULL, NULL, NULL, NULL),
(94, '2021-12-06 06:45:00', 'WT057', 95, 'NIDI', 1, 'WMEAT', 1, '', '', 1112000.0000, 0.0000, '25000', 25000.0000, 25000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1087000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 12, 0, 1087000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'd91affb555d3a5f267ae698eedad85e97e965e5bd6f2f72b986045fe18ea2f4a', NULL, NULL, NULL, NULL, NULL),
(95, '2021-12-07 07:57:00', 'WT058', 94, 'dhyna', 1, 'WMEAT', 1, '', '', 2580000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 2580000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 20, 0, 2580000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '5a2ad1645a6f204cddd784c58e3c55782a3efcccf72e7ae535482f57e4e5b036', NULL, NULL, NULL, NULL, NULL),
(96, '2021-12-07 08:00:00', 'WT059', 50, 'WMU Trading', 1, 'WMEAT', 1, '', '', 819500.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 819500.0000, 'completed', 'pending', 0, NULL, 6, NULL, NULL, 10, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '58b70d349d113374dae320dbbc2faa8e2a37e17802b306f598b950a59ab0e390', NULL, NULL, NULL, NULL, NULL),
(97, '2021-12-07 08:11:00', 'WT060', 78, 'Winda Febri', 1, 'WMEAT', 1, '', '', 243000.0000, 0.0000, '25000', 25000.0000, 25000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 218000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 3, 0, 218000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'fe49fb08b1537d9056ab5d777ae847257b8bd6a5c1ecaffeb9ddce38ed28f912', NULL, NULL, NULL, NULL, NULL),
(98, '2021-12-07 09:49:00', 'WT061', 73, 'Elisa ', 1, 'WMEAT', 1, '', '', 170000.0000, 0.0000, '20400', 20400.0000, 20400.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 149600.0000, 'completed', 'paid', 0, NULL, 6, 6, '2021-12-09 09:53:15', 2, 0, 149600.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '68e2ca51d7339f6fad955ef91961b0e759c276c1b29b1e3b02c97a7eb8610e5f', NULL, NULL, NULL, NULL, NULL),
(99, '2021-12-07 09:53:00', 'WT062', 52, 'Reanie', 1, 'WMEAT', 1, '&lt;p&gt;Mba Reanie CAM&lt;&sol;p&gt;', '', 2480000.0000, 0.0000, '25000', 25000.0000, 25000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 2455000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:47:16', 20, 0, 2455000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'f1e75811d4b536f8e8333998493923e22d2682a041504967cd27e33d5d07097f', NULL, NULL, NULL, NULL, NULL),
(100, '2021-12-09 01:57:00', 'WT063', 96, 'Thunty', 1, 'WMEAT', 1, '', '', 74000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 74000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:47:58', 1, 0, 74000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '06f462c3ff54431ccde809a5c33efbcb68aee03059e032239d80be00329269f6', NULL, NULL, NULL, NULL, NULL),
(101, '2021-12-09 03:58:00', 'WT064', 94, 'dhyna', 1, 'WMEAT', 1, '', '', 1290000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1290000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:48:36', 10, 0, 1290000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'a2ce9a5a1e9867b39dda150e2f0b12a65cd8116f4a57f09c920320c0cd324262', NULL, NULL, NULL, NULL, NULL),
(102, '2021-12-10 06:06:00', 'WT065', 87, 'putri', 1, 'WMEAT', 1, '&lt;p&gt;Mba Putri WMP&lt;&sol;p&gt;', '', 211000.0000, 0.0000, '25000', 25000.0000, 25000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 186000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:48:58', 3, 0, 186000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '8095569c9161b2fec64877abed953e18f293f769621dbe4996d60ee3313fbb4e', NULL, NULL, NULL, NULL, NULL),
(103, '2021-12-10 06:28:00', 'WT066', 97, 'anto', 1, 'WMEAT', 1, '&lt;p&gt;Anto IT&lt;&sol;p&gt;', '', 75000.0000, 0.0000, '9000', 9000.0000, 9000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 66000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:49:37', 1, 0, 66000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '75361047f2263e6bc56639ccf676fe98fac3bf0e26e61df5a9c60e3e2b517970', NULL, NULL, NULL, NULL, NULL),
(104, '2021-12-10 06:41:00', 'WT067', 98, 'Irfan ', 1, 'WMEAT', 1, '&lt;p&gt;Bapak Irfan WMU&lt;&sol;p&gt;', '', 430000.0000, 0.0000, '25000', 25000.0000, 25000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 405000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:50:01', 6, 0, 405000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '0a19ba37e89028a9f91dfee9c6c38df33b22321db6ab296c9cc3cf77df28259b', NULL, NULL, NULL, NULL, NULL),
(105, '2021-12-10 06:51:00', 'WT068', 99, 'agung', 1, 'WMEAT', 1, '', '', 140000.0000, 0.0000, '16800', 16800.0000, 16800.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 123200.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:50:23', 1, 0, 123200.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '63ef32a23bc1c1548e11aad32b92016a2a569f2db2b62dc70dcdebe287c6831b', NULL, NULL, NULL, NULL, NULL),
(106, '2021-12-10 06:54:00', 'WT069', 94, 'dhyna', 1, 'WMEAT', 1, '', '', 2580000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 2580000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:50:53', 20, 0, 2580000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'a9a1a1bdef3ef7671eb5b743efaeaff53b9bbe6ef69152c4000de51957836530', NULL, NULL, NULL, NULL, NULL),
(107, '2021-12-10 07:03:00', 'WT070', 52, 'Reanie', 1, 'WMEAT', 1, '', '', 3720000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 3720000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:52:07', 30, 0, 3720000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '285bccfb1c299d8dd545e321f18792b782f58417528536e2df206073673c00ee', NULL, NULL, NULL, NULL, NULL),
(108, '2021-12-13 05:38:00', 'WT071', 50, 'WMU Trading', 1, 'WMEAT', 1, '&lt;p&gt;Trading WMU &lpar; Toko Hari&rpar;&lt;&sol;p&gt;', '', 1347000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1347000.0000, 'completed', 'due', 0, NULL, 6, 6, '2022-01-03 07:52:57', 22, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '0e9c753c19b3183559c727f5aac20c46f1f8c9b272f70e2279ac7910a2cb8338', NULL, NULL, NULL, NULL, NULL),
(109, '2021-12-13 05:40:00', 'WT072', 53, 'Teddy', 1, 'WMEAT', 1, '', '', 59840.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 59840.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:53:27', 1, 0, 59840.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '5b745cc425acfe5ce0417d9ea70802d1d553b3a86c59bd83e366034f970b63cf', NULL, NULL, NULL, NULL, NULL),
(110, '2021-12-14 05:43:00', 'WT073', 55, 'Fida', 1, 'WMEAT', 1, '&lt;p&gt;Mba Fida LMP&lt;&sol;p&gt;', '', 150000.0000, 0.0000, '18000', 18000.0000, 18000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 132000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:54:00', 2, 0, 132000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '5ec2d7363f7ca67fe510855cc86c1aaf900bde94495a59e16106defecc844139', NULL, NULL, NULL, NULL, NULL),
(111, '2021-12-14 06:01:00', 'WT074', 100, 'astrid farabia', 1, 'WMEAT', 1, '', '', 353000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 353000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:54:33', 6, 0, 353000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '1522b3a44811e132304bedff85a9c9b4aedc84093a12188fbca2732ccb3cfc83', NULL, NULL, NULL, NULL, NULL),
(112, '2021-12-14 06:06:00', 'WT075', 101, 'astam', 1, 'WMEAT', 1, '', '', 80000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 80000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:55:03', 1, 0, 80000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '242275a1f154262cb1c9b3c9c2bbaf4ef34ad7fbd69c7c132e80005386e2983e', NULL, NULL, NULL, NULL, NULL),
(113, '2021-12-15 06:07:00', 'WT076', 79, 'zen', 1, 'WMEAT', 1, '', '', 285000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 285000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:55:36', 3, 0, 285000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '089aa0db30e7c52c5c2e3523d554d274c3baa737b8ce57c6aa0398637d15e0de', NULL, NULL, NULL, NULL, NULL),
(114, '2021-12-15 06:30:00', 'WT077', 103, 'Alfiona Annisa', 1, 'WMEAT', 1, '', '', 51000.0000, 0.0000, '6120', 6120.0000, 6120.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 44880.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:56:10', 1, 0, 44880.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '5c956e52776f622709fc2a06b8a559e5fb79039387a8ff9a30aed065fb0544b1', NULL, NULL, NULL, NULL, NULL),
(117, '2021-12-15 08:05:00', 'WT079', 71, 'Marni', 1, 'WMEAT', 1, '', '', 190000.0000, 0.0000, '22800', 22800.0000, 22800.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 167200.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:56:55', 2, 0, 167200.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '6663aa87e7a40c2632a2d19a7246e1dbae798e5b4f62204d45d8d263439b9a1f', NULL, NULL, NULL, NULL, NULL),
(116, '2021-12-15 07:30:00', 'WT078', 92, 'HADI', 1, 'WMEAT', 1, '', '', 75000.0000, 0.0000, '9000', 9000.0000, 9000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 66000.0000, 'completed', 'due', 0, NULL, 6, 6, '2022-01-03 07:56:32', 1, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '28bf3b374619d845df6626b59036639131026fc2a30fb8aa6c23923721baf7ec', NULL, NULL, NULL, NULL, NULL),
(118, '2021-12-15 09:18:00', 'WT080', 68, 'Sonia', 1, 'WMEAT', 1, '', '', 190000.0000, 0.0000, '22800', 22800.0000, 22800.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 167200.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:57:17', 2, 0, 167200.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '4e68202afe8c5e995869955b7e68b6717076425f540eb2f91566091db2d9a551', NULL, NULL, NULL, NULL, NULL),
(119, '2021-12-16 07:39:00', 'WT081', 53, 'Teddy', 1, 'WMEAT', 1, '', '', 68000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 68000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:57:47', 1, 0, 68000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '9c06cdf726e00865295359684d52c76669174b762c7f965d984725d5c208c8b8', NULL, NULL, NULL, NULL, NULL),
(120, '2021-12-16 07:57:00', 'WT082', 104, 'al ghanusi', 1, 'WMEAT', 1, '', '', 106000.0000, 0.0000, '12720', 12720.0000, 12720.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 93280.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:58:24', 2, 0, 93280.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'd69425a95968b65fc77bbe0fa0e057991807a0c24d61795e76b58b4b5ec4be09', NULL, NULL, NULL, NULL, NULL),
(121, '2021-12-16 08:01:00', 'Wt083', 105, 'Harry Subagyo', 1, 'WMEAT', 1, '', '', 140000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 140000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:58:46', 2, 0, 140000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '1644613352c7227d65832ffcf453ac546dabb2925b2a04cea5c314b3a60b3b71', NULL, NULL, NULL, NULL, NULL),
(122, '2021-12-16 08:05:00', 'WT084', 106, 'Dhawy', 1, 'WMEAT', 1, '', '', 193000.0000, 0.0000, '23160', 23160.0000, 23160.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 169840.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 07:59:10', 2, 0, 169840.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '0abc51078823606f42b9ac57ce4c2d9919050a0fe0310e55660d0b6be3138817', NULL, NULL, NULL, NULL, NULL),
(123, '2021-12-17 02:07:00', 'WT085', 107, 'ramaria ulandari', 1, 'WMEAT', 1, '', '', 126000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 126000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:02:15', 2, 0, 126000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'a69c53da39ab8ed3f24363f5660013d87a93aab8e4f83d6a1c513d46efc7d5f4', NULL, NULL, NULL, NULL, NULL),
(124, '2021-12-17 02:10:00', 'WT086', 94, 'dhyna', 1, 'WMEAT', 1, '', '', 1650000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1650000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:02:44', 10, 0, 1650000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '6b0f29c8136927603dbf4b26c68457298d6aeb2642365687f4220ad2d5c6e2fb', NULL, NULL, NULL, NULL, NULL),
(125, '2021-12-17 02:13:00', 'WT087', 108, 'liza', 1, 'WMEAT', 1, '', '', 76000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 76000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:03:07', 1, 0, 76000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '0a9b496deea813c4f5482c8e6ed14aa4188c9640a2be37867ec04d810cbfabac', NULL, NULL, NULL, NULL, NULL),
(126, '2021-12-21 02:17:00', 'WT088', 109, 'shita', 1, 'WMEAT', 1, '', '', 258000.0000, 0.0000, '25000', 25000.0000, 25000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 233000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:03:36', 4, 0, 233000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '7853534c41f61284dc06d26a1c8ebf6d851e651a713073cff6e4931af87c63c2', NULL, NULL, NULL, NULL, NULL),
(127, '2021-12-21 02:19:00', 'WT089', 110, 'harry', 1, 'WMEAT', 1, '', '', 133000.0000, 0.0000, '15960', 15960.0000, 15960.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 117040.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:03:58', 2, 0, 117040.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'c141f21b1e98b160b2880a6874223b6b9f838c8fe54cac173350de63e52701c7', NULL, NULL, NULL, NULL, NULL),
(128, '2021-12-21 02:22:00', 'WT090', 50, 'WMU Trading', 1, 'WMEAT', 1, '', '', 2230000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 2230000.0000, 'completed', 'due', 0, NULL, 6, 6, '2022-01-03 08:04:38', 30, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '17c98a28fcad2839865a058c34fd8cac3d0e53361b1b6b2d8da72e3d921a640c', NULL, NULL, NULL, NULL, NULL),
(129, '2021-12-21 02:41:00', 'WT091', 62, 'Andri', 1, 'WMEAT', 1, '', '', 265000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 265000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:05:01', 4, 0, 265000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'ebc22aa0a638587a88017817a1fd08d9fb3166700a5d89556bc6cd870fabc0d3', NULL, NULL, NULL, NULL, NULL),
(130, '2021-12-22 04:07:00', 'WT092', 94, 'dhyna', 1, 'WMEAT', 1, '', '', 3300000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 3300000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:05:58', 20, 0, 3300000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '92098e6c539d569441c98903c3b40bc33e8fc44dadda3db35814d7cdb4b2cea8', NULL, NULL, NULL, NULL, NULL),
(131, '2021-12-23 04:17:00', 'WT095', 85, 'dede riani', 1, 'WMEAT', 1, '', '', 228000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 228000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:10:36', 3, 0, 228000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'd2c4f312f324ce671acf79e1fc1942cc07c1157db65c03964bfc10b75ed55b45', NULL, NULL, NULL, NULL, NULL),
(132, '2021-12-23 02:26:00', 'WT093', 111, 'Desi Daritarini', 1, 'WMEAT', 1, '', '', 225000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 225000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:06:31', 2, 0, 225000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'c93a33173d5e0c5651c9fedf345d643c0218d55b33f0d2c675d43e1b74a95414', NULL, NULL, NULL, NULL, NULL),
(133, '2021-12-23 02:32:00', 'WT094', 112, 'Ariq', 1, 'WMEAT', 1, '', '', 47500.0000, 0.0000, '5700', 5700.0000, 5700.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 41800.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:10:06', 1, 0, 41800.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '49c285789e9e5057ec6adf54ad2c28dfa522c6300c349d92e8d45fd42b3f9704', NULL, NULL, NULL, NULL, NULL),
(134, '2021-12-24 07:11:00', 'WT096', 88, 'Nova', 1, 'WMEAT', 1, '', '', 260000.0000, 0.0000, '25000', 25000.0000, 25000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 235000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:10:58', 2, 0, 235000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '0b1976d57c1032370fb6c002cadc2f15a3c54c36133df0543ffe595178e23c80', NULL, NULL, NULL, NULL, NULL),
(135, '2021-12-24 09:26:00', 'WT097', 76, 'Yurike', 1, 'WMEAT', 1, '', '', 125000.0000, 0.0000, '15000', 15000.0000, 15000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 110000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:11:21', 1, 0, 110000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '1312cb1e4001ed4acbaaf205e0e6b533e08e47899d7c2aad5466bc99e84e13b7', NULL, NULL, NULL, NULL, NULL),
(136, '2021-12-27 09:29:00', 'WT098', 113, 'natanael', 1, 'WMEAT', 1, '', '', 138000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 138000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:11:39', 3, 0, 138000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '5c38793010ca143eab1dd9d0b35e66f7cb4de9d7d4b147aeb48eaa0ccf57ef64', NULL, NULL, NULL, NULL, NULL),
(137, '2021-12-27 09:33:00', 'WT099', 114, 'erlinda', 1, 'WMEAT', 1, '', '', 190000.0000, 0.0000, '22800', 22800.0000, 22800.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 167200.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:11:56', 2, 0, 167200.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'a8e94d7bc8719ad8a9a0988132cee0d3c5fbcd575db92948e36771e9b505635c', NULL, NULL, NULL, NULL, NULL),
(138, '2021-12-27 09:35:00', 'WT100', 115, 'M arifin', 1, 'WMEAT', 1, '', '', 190000.0000, 0.0000, '22800', 22800.0000, 22800.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 167200.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:24:25', 2, 0, 167200.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '961ee1bf8d1183fc2ec6dba2228ac1c5be34dca3f65f381fbff0100a3802d10b', NULL, NULL, NULL, NULL, NULL),
(139, '2021-12-27 09:35:00', 'WT101', 90, 'Luvita', 1, 'WMEAT', 1, '', '', 292500.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 292500.0000, 'completed', 'due', 0, NULL, 6, 6, '2022-01-03 08:24:49', 5, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '192630a0cd87394d465653073f8dc64a22c660faa8ea5571b843cd5175c6ae9c', NULL, NULL, NULL, NULL, NULL),
(140, '2021-12-28 09:04:00', 'WT102', 116, 'Tito', 1, 'WMEAT', 1, '', '', 75000.0000, 0.0000, '9000', 9000.0000, 9000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 66000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 08:25:06', 1, 0, 66000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '151c79912cb42ed04804dffa39e2a56b02cf6a1aeffe400e78d61dd8e5dd8cf8', NULL, NULL, NULL, NULL, NULL),
(141, '2021-12-28 09:30:00', 'WT103', 117, 'Rijal', 1, 'WMEAT', 1, '', '', 130000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 130000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 09:52:11', 1, 0, 130000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '0d2284a66cd62b33d56b353c49a88bf01dd76539dd1f175b6764ec441c24115a', NULL, NULL, NULL, NULL, NULL),
(142, '2021-12-28 09:36:00', 'WT104', 118, 'Wiwi WMU', 1, 'WMEAT', 1, '', '', 250000.0000, 0.0000, '25000', 25000.0000, 25000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 225000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 2, 0, 225000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'bb6c0e4b00f1092fb7495191edf08129b6f11b563d978950a105aed09b86501d', NULL, NULL, NULL, NULL, NULL),
(143, '2021-12-28 09:59:00', 'WT105', 119, 'Lovita', 1, 'WMEAT', 1, '', '', 50000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 50000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 10:08:25', 1, 0, 50000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'b1777fa1866dfb0e5de13670a078b7a7362a2012eb918e48fbb5c1aaed0437e3', NULL, NULL, NULL, NULL, NULL),
(144, '2021-12-28 10:05:00', 'WT106', 50, 'WMU Trading', 1, 'WMEAT', 1, '', '', 198000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 198000.0000, 'completed', 'due', 0, NULL, 6, 6, '2022-01-03 10:08:46', 2, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'e7f931504f8005b44caeeb0bce0f3e7080f207fe7ddded125e9c57be3aad193c', NULL, NULL, NULL, NULL, NULL),
(145, '2021-12-28 10:09:00', 'WT107', 67, 'retno', 1, 'WMEAT', 1, '', '', 140000.0000, 0.0000, '16800', 16800.0000, 16800.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 123200.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-03 10:12:43', 1, 0, 123200.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'e5193a2d9b5b6f360c876db289210dfcd7bb49471121449ca8ecdb442b78d8da', NULL, NULL, NULL, NULL, NULL),
(146, '2021-12-29 03:45:00', 'WT108', 120, 'diya', 1, 'WMEAT', 1, '', '', 76000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 76000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-04 03:38:38', 1, 0, 76000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '2b3de68a148c44b1ea87ef3a9bf55884ecb28e99054031cb0a354fc4225716d9', NULL, NULL, NULL, NULL, NULL),
(147, '2021-12-29 03:46:00', 'WT109', 121, 'aji', 1, 'WMEAT', 1, '', '', 280000.0000, 0.0000, '25000', 25000.0000, 25000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 255000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-04 03:38:00', 2, 0, 255000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '23b6a95322d57aacb3bc3927f2b7aa554ca6380d1cf2034823865fd60ee5fc98', NULL, NULL, NULL, NULL, NULL),
(148, '2021-12-29 03:52:00', 'WT110', 122, 'arga ', 1, 'WMEAT', 1, '', '', 375000.0000, 0.0000, '25000', 25000.0000, 25000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 350000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-04 03:37:15', 3, 0, 350000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'c02023e47d204707d3e844055b948956dcf673c8f06497735077313099eec02a', NULL, NULL, NULL, NULL, NULL),
(149, '2021-12-29 04:00:00', 'WT111', 50, 'WMU Trading', 1, 'WMEAT', 1, '', '', 136000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 136000.0000, 'completed', 'due', 0, NULL, 6, 6, '2022-01-04 03:39:18', 2, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '0fb2add32dd5947e5a5d2d0d70c65cf9f88b6865b98094fd87954189214860fb', NULL, NULL, NULL, NULL, NULL),
(150, '2021-12-30 04:04:00', 'WT112', 123, 'rosmalia', 1, 'WMEAT', 1, '', '', 400000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 400000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-04 03:39:47', 4, 0, 400000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '6552c662ba7fd3493b10bcbef39b016cd7e35fcd60e82ce6eaba225e8a42017b', NULL, NULL, NULL, NULL, NULL),
(151, '2021-12-30 05:53:00', 'WT113', 124, 'Zulkifli Hadid', 1, 'WMEAT', 1, '', '', 375000.0000, 0.0000, '25000', 25000.0000, 25000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 350000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-06 02:16:30', 3, 0, 350000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '82480da6ee2e55d5dcb9da287274c4bd8390d0c6ee238de9d970b3dd0db072c1', NULL, NULL, NULL, NULL, NULL),
(152, '2021-12-30 06:15:00', 'WT114', 125, 'Nur Dining Prawesti', 1, 'WMEAT', 1, '', '', 375000.0000, 0.0000, '25000', 25000.0000, 25000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 350000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 3, 0, 350000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '87838dc0c58f33a884bfe8613162535d92433789ffc5b995cdf5c02b50058b45', NULL, NULL, NULL, NULL, NULL),
(153, '2021-12-30 06:40:00', 'WT115', 126, 'Annisa', 1, 'WMEAT', 1, '', '', 248000.0000, 0.0000, '25000', 25000.0000, 25000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 223000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 5, 0, 223000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '4f66a11b05b5b2ac10bbd02c064bd951a562247be40a88d4f22aac6e30a9396e', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sma_sales` (`id`, `date`, `reference_no`, `customer_id`, `customer`, `biller_id`, `biller`, `warehouse_id`, `note`, `staff_note`, `total`, `product_discount`, `order_discount_id`, `total_discount`, `order_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `sale_status`, `payment_status`, `payment_term`, `due_date`, `created_by`, `updated_by`, `updated_at`, `total_items`, `pos`, `paid`, `return_id`, `surcharge`, `attachment`, `return_sale_ref`, `sale_id`, `return_sale_total`, `rounding`, `suspend_note`, `api`, `shop`, `address_id`, `reserve_id`, `hash`, `manual_payment`, `cgst`, `sgst`, `igst`, `payment_method`) VALUES
(154, '2021-12-30 06:55:00', 'WT116', 127, 'fajar rizky', 1, 'WMEAT', 1, '', '', 280000.0000, 0.0000, '25000', 25000.0000, 25000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 255000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 2, 0, 255000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '0bad114d12ddb39e5bd3a4b1e64e57b8912143c054ebf1d7c2a0c001f5afa99e', NULL, NULL, NULL, NULL, NULL),
(155, '2021-12-30 07:22:00', 'WT117', 128, 'Panji', 1, 'WMEAT', 1, '', '', 230000.0000, 0.0000, '25000', 25000.0000, 25000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 205000.0000, 'completed', 'pending', 0, NULL, 6, NULL, NULL, 3, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '740a39234c97a9f8e1c9f7f4e5a3f55d4ba4b7adc54e212d424ada23b3a89a9e', NULL, NULL, NULL, NULL, NULL),
(157, '2021-12-30 07:50:00', 'WT118', 129, 'gita', 1, 'WMEAT', 1, '', '', 155000.0000, 0.0000, '18600', 18600.0000, 18600.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 136400.0000, 'completed', 'pending', 0, NULL, 6, NULL, NULL, 2, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'ba4a8fcd49821e9bb2d106e49de03e1299a0b36bfa0583d1a477300fc53e27b0', NULL, NULL, NULL, NULL, NULL),
(158, '2021-12-30 08:00:00', 'WT119', 130, 'Ulin', 1, 'WMEAT', 1, '', '', 143000.0000, 0.0000, '17160', 17160.0000, 17160.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 125840.0000, 'completed', 'pending', 0, NULL, 6, NULL, NULL, 2, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '0f6f0400dd8e47afb7fd9896e0f2f1ccb91ac7fb75e874910774f91df0cce419', NULL, NULL, NULL, NULL, NULL),
(159, '2021-12-31 06:12:00', 'WT120', 94, 'dhyna', 1, 'WMEAT', 1, '', '', 3300000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 3300000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-06 08:15:55', 20, 0, 3300000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '3a46803c556d5754935aa2ccc21e8e2fea745fe6adc35da847f539905721d5c4', NULL, NULL, NULL, NULL, NULL),
(163, '2021-12-31 08:55:00', 'WT123', 99, 'agung', 1, 'WMEAT', 1, '', '', 218000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 218000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-06 08:37:12', 3, 0, 218000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '21d91b466e84006a07b9948363650536553d12072ab3656344121e04fe518a3e', NULL, NULL, NULL, NULL, NULL),
(161, '2021-12-31 08:24:00', 'WT122', 95, 'NIDI', 1, 'WMEAT', 1, '', '', 272000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 272000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-06 08:36:35', 4, 0, 272000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'a091f760826e6e20efbc2d07531802668d67227d5221f5debd3f57dace6d2bf1', NULL, NULL, NULL, NULL, NULL),
(162, '2021-12-31 08:17:00', 'WT121', 131, 'Nova', 1, 'WMEAT', 1, '', '', 284000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 284000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-06 08:36:16', 4, 0, 284000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'c99f7e161c645cdc216cef528ef146823d010b55d4ee0b3e400c602b9410c98e', NULL, NULL, NULL, NULL, NULL),
(164, '2021-12-31 08:56:00', 'WT124', 81, 'rizky', 1, 'WMEAT', 1, '', '', 222000.0000, 0.0000, '25000', 25000.0000, 25000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 197000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-06 08:37:28', 2, 0, 197000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'a2489ac3c34c3edac22942310a09de67c829e573f95dc2812d81d4861a98e7a1', NULL, NULL, NULL, NULL, NULL),
(165, '2021-12-31 09:00:00', 'WT125', 132, 'andika', 1, 'WMEAT', 1, '', '', 258000.0000, 0.0000, '24960', 24960.0000, 24960.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 233040.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-06 08:49:25', 3, 0, 233040.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'a06e40fccd63fbdeae5ea2b20af3b4d6231465a48feb0259e63ceddffaaed09c', NULL, NULL, NULL, NULL, NULL),
(166, '2021-12-31 09:38:00', 'WT126', 133, 'Ihab', 1, 'WMEAT', 1, '', '', 143000.0000, 0.0000, '17160', 17160.0000, 17160.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 125840.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 2, 0, 125840.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '6c78cb7d654c1f560821e63fd14ba4afb1843a10c5eb5ddc37e6b62abceec519', NULL, NULL, NULL, NULL, NULL),
(167, '2021-12-31 10:04:00', 'WT127', 134, 'andrian', 1, 'WMEAT', 1, '', '', 280000.0000, 0.0000, '25000', 25000.0000, 25000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 255000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-06 09:58:05', 2, 0, 255000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '4d0700f9969d757d8d10394d8d3e74d20da5151957babc00b99a9aa2860461ed', NULL, NULL, NULL, NULL, NULL),
(168, '2021-12-31 10:05:00', 'WT128', 98, 'Irfan ', 1, 'WMEAT', 1, '', '', 225000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 225000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-14 01:57:08', 3, 0, 225000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '246b7330f1c83609e0d69a7b8ad84f86bc676609cbc597edbc5e382d2811fc26', NULL, NULL, NULL, NULL, NULL),
(170, '2021-12-31 10:11:00', 'WT129', 135, 'bayu amboro', 1, 'WMEAT', 1, '', '', 125000.0000, 0.0000, '15000', 15000.0000, 15000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 110000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 0, 110000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '051e1d581a0a0b98b71a3968882d6f08e4e9ab295688c669d2e6ea6bfe0c488f', NULL, NULL, NULL, NULL, NULL),
(171, '2021-12-31 10:12:00', 'WT130', 136, 'Lamin', 1, 'WMEAT', 1, '', '', 140000.0000, 0.0000, '16800', 16800.0000, 16800.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 123200.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 0, 123200.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'd24917d3627cd8a0344235d2cf94829772cf5dba485fb550fd24f30c3f53d05f', NULL, NULL, NULL, NULL, NULL),
(172, '2021-12-31 10:14:00', 'WT131', 137, 'BAYU', 1, 'WMEAT', 1, '', '', 75000.0000, 0.0000, '9000', 9000.0000, 9000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 66000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 0, 66000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'dff51036d896f81bb5a7642f0a89517a849bfd850a0b9b598b6df6c89c629b80', NULL, NULL, NULL, NULL, NULL),
(173, '2021-12-31 10:22:00', 'WT132', 99, 'agung', 1, 'WMEAT', 1, '', '', 140000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 140000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-14 07:13:36', 1, 0, 140000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '6d8d3c84096e9dec547ea2102c7f3b76b37c1432e04cd61443172064e1299fc7', NULL, NULL, NULL, NULL, NULL),
(174, '2021-12-31 10:30:00', 'WT133', 138, 'azura', 1, 'WMEAT', 1, '', '', 120000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 120000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 2, 0, 120000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '06e64483315cf6b297b847bcbad085118be6a1360ed845e2de04ee9de205d3a2', NULL, NULL, NULL, NULL, NULL),
(177, '2021-12-31 10:59:00', 'WT135', 139, 'devi', 1, 'WMEAT', 1, '', '', 756000.0000, 0.0000, '25000', 25000.0000, 25000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 731000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-19 07:44:31', 11, 0, 731000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'fe8fd65dfb6bf817fc9d7962d148d7be48bd1fab8b0a27d9872402c67cb7cb94', NULL, NULL, NULL, NULL, NULL),
(176, '2021-12-31 10:56:00', 'WT134', 52, 'Reanie', 1, 'WMEAT', 1, '', '', 1030000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1030000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 14, 0, 1030000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '1669f3d7da391b20ffd1cde597b19e062e5245ad0420e6c4b0892a2668c26fb7', NULL, NULL, NULL, NULL, NULL),
(178, '2021-12-31 11:00:00', 'WT136', 65, 'fani', 1, 'WMEAT', 1, '', '', 298000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 298000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-01-22 02:32:57', 5, 0, 298000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '739f991a204f635502b69a948c5564180eb3f0409ed916edce52c0ce82f82643', NULL, NULL, NULL, NULL, NULL),
(179, '2021-12-31 11:13:00', 'WT137', 109, 'shita', 1, 'WMEAT', 1, '', '', 160000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 160000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 0, 160000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '90dd1ed1b9f48b57c425505df67888373a8a35690b12cb1d7f7f355413d694b0', NULL, NULL, NULL, NULL, NULL),
(180, '2021-12-31 11:14:00', 'WT138', 132, 'andika', 1, 'WMEAT', 1, '', '', 220000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 220000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 2, 0, 220000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '7e8fea1f2cdd0e8695b71141c99555de838f803ffa2b0c0c9d02614f77232272', NULL, NULL, NULL, NULL, NULL),
(181, '2021-12-31 11:15:00', 'WT139', 140, 'Evan', 1, 'WMEAT', 1, '', '', 182000.0000, 0.0000, '21840', 21840.0000, 21840.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 160160.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 2, 0, 160160.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'e649bd7c7b17934dd11a1f5c604073e7f792643c7273e394002e203a85519d70', NULL, NULL, NULL, NULL, NULL),
(182, '2021-12-31 11:17:00', 'WT140', 110, 'harry', 1, 'WMEAT', 1, '', '', 216000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 216000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 3, 0, 216000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '8a03818aac3d54ed6bcd31832efca33a723d9929ba402df8f89e38e97ccbae77', NULL, NULL, NULL, NULL, NULL),
(183, '2021-12-31 11:21:00', 'WT140', 141, 'Monic', 1, 'WMEAT', 1, '', '', 140000.0000, 0.0000, '16800', 16800.0000, 16800.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 123200.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 0, 123200.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'efd125d61de833b4106b5be5a1e750755064d1839ba71a9e96560f42780e9bd2', NULL, NULL, NULL, NULL, NULL),
(184, '2021-12-31 11:26:00', 'WT141', 142, 'reza', 1, 'WMEAT', 1, '', '', 140000.0000, 0.0000, '16800', 16800.0000, 16800.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 123200.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 0, 123200.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '13526e5482157bae70bc40937bea56b0a2337f7cc1892dc94ecd8592847deeef', NULL, NULL, NULL, NULL, NULL),
(185, '2021-12-31 11:29:00', 'WT142', 143, 'ibnu', 1, 'WMEAT', 1, '', '', 140000.0000, 0.0000, '16800', 16800.0000, 16800.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 123200.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 0, 123200.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '4263d1a920c27e7e512fc65b5a30d21f4c09b160ba99dc73e86672ef713b3616', NULL, NULL, NULL, NULL, NULL),
(186, '2021-12-31 11:30:00', 'WT143', 144, 'cynthia', 1, 'WMEAT', 1, '', '', 225000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 225000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 3, 0, 225000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '6f54432f6cb0d8ffb4d621276f3463fb4f0b9db0eda257c080bcd55969ae43ee', NULL, NULL, NULL, NULL, NULL),
(187, '2021-12-31 11:31:00', 'WT144', 50, 'WMU Trading', 1, 'WMEAT', 1, '', '', 375000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 375000.0000, 'completed', 'pending', 0, NULL, 6, NULL, NULL, 5, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '2fecce0a56842ac67ab38b5ee5aab44c1687ca96c60d5205e55e8e41470bc4c3', NULL, NULL, NULL, NULL, NULL),
(188, '2021-12-31 11:47:00', 'WT145', 145, 'Bapak Andri', 1, 'WMEAT', 1, '', '', 75000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 75000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 0, 75000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'a80a9a92c5409f0c7f249bb3ee3190163a57faf2947196b0964c28d130f41363', NULL, NULL, NULL, NULL, NULL),
(189, '2022-01-03 01:54:00', 'WT146', 50, 'WMU Trading', 1, 'WMEAT', 1, '', '', 150000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 150000.0000, 'completed', 'pending', 0, NULL, 6, NULL, NULL, 2, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '6d674a6c7326a559f1f05f398cd2b7b3c08cd2c2fc114eddd265223bcfa1996e', NULL, NULL, NULL, NULL, NULL),
(190, '2022-01-05 09:58:00', 'WT147', 50, 'WMU Trading', 1, 'WMEAT', 1, '', '', 150000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 150000.0000, 'completed', 'pending', 0, NULL, 6, NULL, NULL, 2, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '418c17c9e7730f99fcafd4a62088d28537fad05191d21737f3db9f111e645891', NULL, NULL, NULL, NULL, NULL),
(191, '2022-01-05 09:59:00', 'WT148', 112, 'Ariq', 1, 'WMEAT', 1, '', '', 134500.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 134500.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-02-04 10:06:19', 2, 0, 134500.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'd4f07fc44048c65666e0c51c528d6f9868f849c54f5ad1d6dfac2a93f0646f2e', NULL, NULL, NULL, NULL, NULL),
(192, '2022-01-05 10:04:00', 'WT149', 146, 'Annisa', 1, 'WMEAT', 1, '', '', 132000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 132000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-02-04 10:10:29', 3, 0, 132000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '6be073c6ddfdb46e41a46dfbc7183361a658eeddea280df93b24226c6cd8eb1b', NULL, NULL, NULL, NULL, NULL),
(193, '2022-01-05 10:12:00', 'WT150', 147, 'anne', 1, 'WMEAT', 1, '', '', 617000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 617000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 8, 0, 617000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '13e3f15beecedddc0446ded49b29fd78ea989353c99400c428dacdeded829d92', NULL, NULL, NULL, NULL, NULL),
(194, '2022-01-05 10:30:00', 'WT151', 50, 'WMU Trading', 1, 'WMEAT', 1, '', '', 136000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 136000.0000, 'completed', 'pending', 0, NULL, 6, NULL, NULL, 2, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '10648c7697680a8da4fc28066c66eccb244b8e3fb51d2d0a7751f1a4d0a3d1d4', NULL, NULL, NULL, NULL, NULL),
(195, '2022-01-07 01:31:00', 'WT152', 50, 'WMU Trading', 1, 'WMEAT', 1, '', '', 5000000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 5000000.0000, 'completed', 'due', 0, NULL, 6, 6, '2022-02-05 03:54:51', 80, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '467a9544a2f9d5707399e9dc1e23ee725a7a62ce2f63f6efd4e524bcc486dc87', NULL, NULL, NULL, NULL, NULL),
(196, '2022-01-07 01:45:00', 'WT153', 99, 'agung', 1, 'WMEAT', 1, '', '', 140000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 140000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-02-05 03:53:59', 2, 0, 140000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '331a34cf598781e6e17110ebd2bbafe90c51616fa70a0c01237c40f17500a19f', NULL, NULL, NULL, NULL, NULL),
(197, '2022-01-10 03:52:00', 'WT154', 50, 'WMU Trading', 1, 'WMEAT', 1, '', '', 760000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 760000.0000, 'completed', 'due', 0, NULL, 6, 6, '2022-02-05 03:55:34', 20, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '212caf2b0208a4981f9f85ece35b35cccfbc11bb6fa4e39da04ca52560cca252', NULL, NULL, NULL, NULL, NULL),
(198, '2022-01-10 03:53:00', 'WT155', 94, 'dhyna', 1, 'WMEAT', 1, '', '', 1650000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1650000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 10, 0, 1650000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '8ba064549f3dc1b166762270e53c64e8771b0d4f35197ecfb354db40a9e28499', NULL, NULL, NULL, NULL, NULL),
(199, '2022-01-12 04:10:00', 'WT156', 132, 'andika', 1, 'WMEAT', 1, '', '', 140000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 140000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 0, 140000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '54c1e4d6c961b9943be7019478b917a7a1f0a3c95f508805cb2f515ee7f9bd02', NULL, NULL, NULL, NULL, NULL),
(200, '2022-01-12 04:21:00', 'WT157', 99, 'agung', 1, 'WMEAT', 1, '', '', 27000.0000, 0.0000, '5940', 5940.0000, 5940.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 21060.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 0, 21060.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '4aafb3e20273461471b72ce8dc999fef9f601cd755ac7f56ac1feaf9429c1d5d', NULL, NULL, NULL, NULL, NULL),
(201, '2022-01-13 03:00:00', 'WT158', 86, 'tania', 1, 'WMEAT', 1, '', '', 1155000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 1155000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 7, 0, 1155000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'ad02c4c0feda959fba7f15d77323b88595a57c9909d043d28d1e9e8f6731478a', NULL, NULL, NULL, NULL, NULL),
(202, '2022-01-13 03:40:00', 'WT159', 148, 'ismi', 1, 'WMEAT', 1, '', '', 380000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 380000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 3, 0, 380000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '8712d1bba96ff453c919d3cccc60991e6ccb5d60f06ce81eff5b87b0724cdc13', NULL, NULL, NULL, NULL, NULL),
(203, '2022-01-13 03:41:00', 'WT160', 94, 'dhyna', 1, 'WMEAT', 1, '', '', 3300000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 3300000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 20, 0, 3300000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '6ed3e1df9d7ba29657bdd491a4c9a9bc2638a9676673d99059d8ae9743361f9c', NULL, NULL, NULL, NULL, NULL),
(204, '2022-01-13 03:55:00', 'WT161', 99, 'agung', 1, 'WMEAT', 1, '', '', 60000.0000, 0.0000, '13200', 13200.0000, 13200.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 46800.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 1, 0, 46800.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '9c532785371ea0643fbf8951c92c449280e34c5803c5d83481fbc8e4ce359e51', NULL, NULL, NULL, NULL, NULL),
(205, '2022-01-13 04:00:00', 'WT162', 149, 'Mellisa', 1, 'WMEAT', 1, '', '', 112000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 112000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 2, 0, 112000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'bbbd14ec1cb04e17e647b9c6bfce5fe017b723c3fe07f6ba8895267ee8e3080d', NULL, NULL, NULL, NULL, NULL),
(206, '2022-01-13 04:05:00', 'WT163', 150, 'harry ', 1, 'WMEAT', 1, '', '', 112000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 112000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 2, 0, 112000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'd6ac16e7f3d13a447b343a6f5aab53b3c9d150451ebaf05391cbc66821eee8e5', NULL, NULL, NULL, NULL, NULL),
(207, '2022-01-13 04:10:00', 'WT164', 151, 'winda sari', 1, 'WMEAT', 1, '', '', 112000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 112000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 2, 0, 112000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'f8e609fe738d95dcc682792bcdd54f7271398e4b841561ffe3cc6ec7e0558da7', NULL, NULL, NULL, NULL, NULL),
(208, '2022-01-13 04:12:00', 'WT165', 132, 'andika', 1, 'WMEAT', 1, '', '', 372000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 372000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 5, 0, 372000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'dcff05ab451be7fb320107bd775a40df026cbb4f7d26471e6ffac11c75222c30', NULL, NULL, NULL, NULL, NULL),
(209, '2022-01-14 01:20:00', 'WT166', 152, 'rere modi', 1, 'WMEAT', 1, '', '', 132500.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 132500.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-02-10 07:27:48', 2, 0, 132500.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'a86279491e0ea3aa2ae9ed455b14e7efe85b69a0a9587c44e10766664af11918', NULL, NULL, NULL, NULL, NULL),
(210, '2022-01-14 01:25:00', 'WT167', 50, 'WMU Trading', 1, 'WMEAT', 1, '', '', 198000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 198000.0000, 'completed', 'due', 0, NULL, 6, 6, '2022-02-10 07:28:13', 2, 0, 0.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'a3720643c87cced1209d9ba68f003b34066835344a1f0ebcef426e53a7221409', NULL, NULL, NULL, NULL, NULL),
(211, '2022-01-14 01:29:00', 'WT168', 78, 'Winda Febri', 1, 'WMEAT', 1, '', '', 165000.0000, 0.0000, '22000', 22000.0000, 22000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 143000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 2, 0, 143000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '9c0571e3973b3f0082e4a82fb3f9c7a663f07e307d897f28dc99b0f3de468d0e', NULL, NULL, NULL, NULL, NULL),
(212, '2022-01-14 01:35:00', 'WT170', 153, 'yasa', 1, 'WMEAT', 1, '', '', 80000.0000, 0.0000, '17600', 17600.0000, 17600.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 62400.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-02-10 08:55:31', 1, 0, 62400.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'a629244da0dae1acb596ceb5a4d9a7697d97cb699ac6a7ec9a6216797e8cbeac', NULL, NULL, NULL, NULL, NULL),
(213, '2022-01-14 01:34:00', 'WT169', 154, 'heri prasojo', 1, 'WMEAT', 1, '', '', 130000.0000, 0.0000, '22000', 22000.0000, 22000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 108000.0000, 'completed', 'paid', 0, NULL, 6, 6, '2022-02-10 08:55:18', 1, 0, 108000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'd47de733ff70662cbafeee7437a0a7a4e71d1b0f18be6f9ce59ee8ae9417bd4f', NULL, NULL, NULL, NULL, NULL),
(214, '2022-01-14 06:55:00', 'WT171', 119, 'Lovita', 1, 'WMEAT', 1, '', '', 382000.0000, 0.0000, '22000', 22000.0000, 22000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 360000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 6, 0, 360000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'c9e691a1b7c9b32fcd055da1cc4cd1a1d8015ad055f808d2fd5710e16160ae43', NULL, NULL, NULL, NULL, NULL),
(215, '2022-01-15 06:56:00', 'WT172', 155, 'Bertha', 1, 'WMEAT', 1, '', '', 138000.0000, 0.0000, '22000', 22000.0000, 22000.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 116000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 3, 0, 116000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, '838a51ceecde98e6bb79eb07f824224ffa6b7ef8e721f7336ef22663f6c76518', NULL, NULL, NULL, NULL, NULL);

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
(421, 35, 70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', 'standard', NULL, 57000.0000, 57000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 57000.0000, '', 57000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(422, 35, 93, 'WMS-037', 'WMeat Aus Beef All Variant Less Fat 500 gr lokal', 'standard', NULL, 50000.0000, 50000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 50000.0000, '', 50000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(419, 34, 56, 'WMS-022', 'WMeat Aus Beef Oxtail Cut 1 kg', 'standard', NULL, 124000.0000, 124000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 124000.0000, '', 124000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(406, 27, 56, 'WMS-022', 'WMeat Aus Beef Oxtail Cut 1 kg', 'standard', NULL, 124000.0000, 124000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, 1240000.0000, '', 124000.0000, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL, NULL),
(420, 34, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', 'standard', NULL, 63500.0000, 63500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 63500.0000, '', 63500.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(408, 29, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', 'standard', NULL, 63500.0000, 63500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 63500.0000, '', 63500.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(407, 29, 56, 'WMS-022', 'WMeat Aus Beef Oxtail Cut 1 kg', 'standard', NULL, 124000.0000, 124000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 124000.0000, '', 124000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(409, 30, 46, 'WMS-012', 'WMeat Aus Beef Tulang Sop 1 kg', 'standard', NULL, 41500.0000, 41500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 41500.0000, '', 41500.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(412, 31, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', 'standard', NULL, 70000.0000, 70000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 350000.0000, '', 70000.0000, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL, NULL),
(411, 31, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', 'standard', NULL, 95000.0000, 95000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 475000.0000, '', 95000.0000, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL, NULL),
(410, 31, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', NULL, 140000.0000, 140000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 700000.0000, '', 140000.0000, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL, NULL),
(416, 32, 69, 'WMS-028', 'WMeat Aus Beef Lidah Sapi Slice 500 gr', 'standard', 0, 75000.0000, 75000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 75000.0000, '', 75000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(415, 32, 59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', 'standard', 0, 50000.0000, 50000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 50000.0000, '', 50000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(414, 32, 56, 'WMS-022', 'WMeat Aus Beef Oxtail Cut 1 kg', 'standard', 0, 129000.0000, 129000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 129000.0000, '', 129000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(413, 32, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', 0, 150000.0000, 150000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 150000.0000, '', 150000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(438, 50, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', 'standard', NULL, 63500.0000, 63500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 63500.0000, '', 63500.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(418, 44, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', 'standard', 0, 67000.0000, 67000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 67000.0000, '', 67000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(423, 36, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', NULL, 140000.0000, 140000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 140000.0000, '', 140000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(424, 37, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 68000.0000, '', 68000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(425, 37, 50, 'WMS-016', 'WMeat Aus Beef All Variant Less Fat 1 kg', 'standard', NULL, 90000.0000, 90000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 90000.0000, '', 90000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(427, 38, 76, 'OLN-015', 'WMeat Aus Beef All Variant (Tumis/Sop) 500 gr', 'standard', NULL, 37000.0000, 37000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 37000.0000, '', 37000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(426, 38, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', 'standard', NULL, 80000.0000, 80000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 80000.0000, '', 80000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(428, 39, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', 'standard', 0, 83500.0000, 83500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 83500.0000, '', 83500.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(429, 39, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', 'standard', 0, 90000.0000, 90000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 90000.0000, '', 90000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(430, 39, 73, 'OLN-010', 'WMeat Aus Beef Striploin Steak 400 gr', 'standard', 0, 89000.0000, 89000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 89000.0000, '', 89000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(432, 40, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', 'standard', NULL, 95000.0000, 95000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 475000.0000, '', 95000.0000, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL, NULL),
(431, 40, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', 'standard', NULL, 85000.0000, 85000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 170000.0000, '', 85000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(434, 41, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', NULL, 125000.0000, 125000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 250000.0000, '', 125000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(433, 41, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', NULL, 140000.0000, 140000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 140000.0000, '', 140000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(435, 42, 51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', 'standard', NULL, 44000.0000, 44000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 88000.0000, '', 44000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(436, 42, 70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', 'standard', NULL, 57000.0000, 57000.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 171000.0000, '', 57000.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(437, 42, 72, 'OLN-009', 'WMeat Aus Beef Striploin Steak 200 gr', 'standard', NULL, 45000.0000, 45000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 90000.0000, '', 45000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(417, 44, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', 0, 130000.0000, 130000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 130000.0000, '', 130000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(439, 46, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', 'standard', 0, 83500.0000, 83500.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 250500.0000, '', 83500.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(440, 46, 68, 'WMS-029', 'WMeat Aus Beef Lidah Sapi Slice 250 gr', 'standard', 0, 40000.0000, 40000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 40000.0000, '', 40000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(441, 46, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', 'standard', 0, 67000.0000, 67000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 67000.0000, '', 67000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(442, 46, 96, 'PPKM-001', 'PPKM 1', 'combo', NULL, 110000.0000, 110000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 110000.0000, '', 110000.0000, NULL, NULL, NULL, 1.0000, NULL, NULL, NULL, NULL, NULL),
(443, 47, 72, 'OLN-009', 'WMeat Aus Beef Striploin Steak 200 gr', 'standard', NULL, 45000.0000, 45000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 225000.0000, '', 45000.0000, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL, NULL),
(444, 53, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', 'standard', NULL, 85000.0000, 85000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 85000.0000, '', 85000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(445, 52, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', 'standard', NULL, 80000.0000, 80000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 80000.0000, '', 80000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(446, 54, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 75000.0000, '', 75000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(447, 54, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', 'standard', NULL, 80000.0000, 80000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 80000.0000, '', 80000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(448, 54, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', 'standard', NULL, 95000.0000, 95000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 95000.0000, '', 95000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(449, 56, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 136000.0000, '', 68000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(451, 57, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', NULL, 124000.0000, 124000.0000, 13.0000, 1, 0.0000, NULL, '', '0', 0.0000, 1612000.0000, '', 124000.0000, NULL, 23, 'PCS', 13.0000, NULL, NULL, NULL, NULL, NULL),
(450, 57, 56, 'WMS-022', 'WMeat Aus Beef Oxtail Cut 1 kg', 'standard', NULL, 124000.0000, 124000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 124000.0000, '', 124000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(452, 58, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', NULL, 125000.0000, 125000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 625000.0000, '', 125000.0000, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL, NULL),
(453, 58, 55, 'WMS-021', 'WMeat Aus Beef Oxtail Cut 500 gr', 'standard', NULL, 65000.0000, 65000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 130000.0000, '', 65000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(454, 58, 59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', 'standard', NULL, 45000.0000, 45000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 180000.0000, '', 45000.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL),
(455, 58, 70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', 'standard', NULL, 57000.0000, 57000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 228000.0000, '', 57000.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL),
(456, 58, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', 'standard', NULL, 63500.0000, 63500.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 254000.0000, '', 63500.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL),
(457, 58, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', NULL, 124000.0000, 124000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 248000.0000, '', 124000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(458, 59, 50, 'WMS-016', 'WMeat Aus Beef All Variant Less Fat 1 kg', 'standard', NULL, 90000.0000, 90000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 90000.0000, '', 90000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(460, 60, 46, 'WMS-012', 'WMeat Aus Beef Tulang Sop 1 kg', 'standard', 0, 43500.0000, 43500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 43500.0000, '', 43500.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(461, 60, 58, 'WMS-024', 'WMeat Aus Beef Daging Giling 1 kg', 'standard', 0, 100500.0000, 100500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 100500.0000, '', 100500.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(462, 60, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', 'standard', 0, 74000.0000, 74000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 148000.0000, '', 74000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(459, 60, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', 0, 130000.0000, 130000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 130000.0000, '', 130000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(169, 61, 101, 'Hebat-5', 'Paket Promo Bundling Hebat (Hemat Banget) 5', 'combo', NULL, 185000.0000, 185000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 185000.0000, '', 185000.0000, NULL, NULL, NULL, 1.0000, NULL, NULL, NULL, NULL, NULL),
(168, 61, 99, 'Hebat-3', 'Paket Promo Bundling Hebat ( Hemat Banget) 3', 'combo', NULL, 100000.0000, 100000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 400000.0000, '', 100000.0000, NULL, NULL, NULL, 4.0000, NULL, NULL, NULL, NULL, NULL),
(167, 61, 97, 'Hebat-1', 'Paket Promo Bundling Hebat ( Hemat Banget) 1', 'combo', NULL, 115000.0000, 115000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 115000.0000, '', 115000.0000, NULL, NULL, NULL, 1.0000, NULL, NULL, NULL, NULL, NULL),
(166, 62, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 136000.0000, '', 68000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(170, 63, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', 'standard', 0, 67000.0000, 67000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 67000.0000, '', 67000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(171, 64, 73, 'OLN-010', 'WMeat Aus Beef Striploin Steak 400 gr', 'standard', NULL, 85000.0000, 85000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 85000.0000, '', 85000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(172, 64, 71, 'OLN-004', 'WMeat Aus Beef Daging Giling 1 kg', 'standard', NULL, 110000.0000, 110000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 110000.0000, '', 110000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(173, 64, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', 'standard', NULL, 85000.0000, 85000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 85000.0000, '', 85000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(174, 65, 99, 'Hebat-3', 'Paket Promo Bundling Hebat ( Hemat Banget) 3', 'combo', NULL, 100000.0000, 100000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 100000.0000, '', 100000.0000, NULL, NULL, NULL, 1.0000, NULL, NULL, NULL, NULL, NULL),
(176, 66, 99, 'Hebat-3', 'Paket Promo Bundling Hebat ( Hemat Banget) 3', 'combo', NULL, 100000.0000, 100000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 100000.0000, '', 100000.0000, NULL, NULL, NULL, 1.0000, NULL, NULL, NULL, NULL, NULL),
(177, 67, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 75000.0000, '', 75000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(178, 67, 55, 'WMS-021', 'WMeat Aus Beef Oxtail Cut 500 gr', 'standard', NULL, 65000.0000, 65000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 65000.0000, '', 65000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(179, 67, 59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', 'standard', NULL, 45000.0000, 45000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 45000.0000, '', 45000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(180, 67, 73, 'OLN-010', 'WMeat Aus Beef Striploin Steak 400 gr', 'standard', NULL, 85000.0000, 85000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 85000.0000, '', 85000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(181, 68, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', NULL, 124000.0000, 124000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 124000.0000, '', 124000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(182, 68, 70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', 'standard', NULL, 57000.0000, 57000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 57000.0000, '', 57000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(183, 68, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', 'standard', NULL, 85000.0000, 85000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 85000.0000, '', 85000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(184, 69, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', 'standard', NULL, 95000.0000, 95000.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 285000.0000, '', 95000.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(193, 70, 70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', 'standard', 0, 57000.0000, 57000.0000, 6.0000, 1, 0.0000, NULL, '', '0', 0.0000, 342000.0000, '', 57000.0000, NULL, 23, 'PCS', 6.0000, NULL, NULL, NULL, NULL, NULL),
(186, 71, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', 'standard', NULL, 63500.0000, 63500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 63500.0000, '', 63500.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(187, 71, 49, 'WMS-015', 'WMeat Aus Beef All Variant Less Fat 500 gr', 'standard', NULL, 50000.0000, 50000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 50000.0000, '', 50000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(188, 71, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 75000.0000, '', 75000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(189, 71, 59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', 'standard', NULL, 45000.0000, 45000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 45000.0000, '', 45000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(190, 71, 68, 'WMS-029', 'WMeat Aus Beef Lidah Sapi Slice 250 gr', 'standard', NULL, 35000.0000, 35000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 35000.0000, '', 35000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(191, 71, 87, 'OLN-013', 'WMeat Tulang Sapi Sop  500 gr', 'standard', 0, 25000.0000, 25000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 25000.0000, '', 25000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(192, 71, 72, 'OLN-009', 'WMeat Aus Beef Striploin Steak 200 gr', 'standard', NULL, 45000.0000, 45000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 45000.0000, '', 45000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(194, 72, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 8.0000, 1, 0.0000, NULL, '', '0', 0.0000, 600000.0000, '', 75000.0000, NULL, 23, 'PCS', 8.0000, NULL, NULL, NULL, NULL, NULL),
(195, 72, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 6.0000, 1, 0.0000, NULL, '', '0', 0.0000, 408000.0000, '', 68000.0000, NULL, 23, 'PCS', 6.0000, NULL, NULL, NULL, NULL, NULL),
(196, 72, 70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', 'standard', NULL, 57000.0000, 57000.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 171000.0000, '', 57000.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(197, 73, 49, 'WMS-015', 'WMeat Aus Beef All Variant Less Fat 500 gr', 'standard', 0, 50000.0000, 50000.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 150000.0000, '', 50000.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(198, 73, 87, 'OLN-013', 'WMeat Tulang Sapi Sop  500 gr', 'standard', 0, 25000.0000, 25000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 100000.0000, '', 25000.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL),
(199, 73, 76, 'OLN-015', 'WMeat Aus Beef All Variant (Tumis/Sop) 500 gr', 'standard', 0, 37000.0000, 37000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 148000.0000, '', 37000.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL),
(200, 73, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', 'standard', 0, 70000.0000, 70000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 140000.0000, '', 70000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(201, 73, 88, 'OLN-014', 'WMeat Tulang Sapi Soup  1 kg', 'standard', 0, 41500.0000, 41500.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 83000.0000, '', 41500.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(205, 74, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', 'standard', 0, 70000.0000, 70000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 70000.0000, '', 70000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(204, 74, 36, 'WMS-002', 'WMeat Aus Beef Daging Rendang 1 kg', 'standard', 0, 120000.0000, 120000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 120000.0000, '', 120000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(209, 75, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', 'standard', 0, 74000.0000, 74000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 148000.0000, '', 74000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(208, 76, 100, 'Hebat-4', 'Paket Promo Bundling Hebat ( Hemat Banget) 4', 'combo', NULL, 205000.0000, 205000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 205000.0000, '', 205000.0000, NULL, NULL, NULL, 1.0000, NULL, NULL, NULL, NULL, NULL),
(210, 77, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', NULL, 124000.0000, 124000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, 1240000.0000, '', 124000.0000, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL, NULL),
(211, 77, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', NULL, 125000.0000, 125000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 625000.0000, '', 125000.0000, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL, NULL),
(212, 77, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', NULL, 140000.0000, 140000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 700000.0000, '', 140000.0000, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL, NULL),
(213, 77, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', 'standard', NULL, 85000.0000, 85000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 425000.0000, '', 85000.0000, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL, NULL),
(214, 78, 50, 'WMS-016', 'WMeat Aus Beef All Variant Less Fat 1 kg', 'standard', NULL, 90000.0000, 90000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 360000.0000, '', 90000.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL),
(236, 80, 36, 'WMS-002', 'WMeat Aus Beef Daging Rendang 1 kg', 'standard', NULL, 120000.0000, 120000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 240000.0000, '', 120000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(219, 81, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', 'standard', 0, 74000.0000, 74000.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 222000.0000, '', 74000.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(221, 82, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', 0, 129000.0000, 129000.0000, 7.0000, 1, 0.0000, NULL, '', '0', 0.0000, 903000.0000, '', 129000.0000, NULL, 23, 'PCS', 7.0000, NULL, NULL, NULL, NULL, NULL),
(222, 83, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', 'standard', NULL, 95000.0000, 95000.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 285000.0000, '', 95000.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(223, 84, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 136000.0000, '', 68000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(224, 84, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 75000.0000, '', 75000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(225, 85, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 75000.0000, '', 75000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(226, 85, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 136000.0000, '', 68000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(238, 88, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', NULL, 124000.0000, 124000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, 1240000.0000, '', 124000.0000, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL, NULL),
(237, 87, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', 'standard', NULL, 63500.0000, 63500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 63500.0000, '', 63500.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(239, 89, 36, 'WMS-002', 'WMeat Aus Beef Daging Rendang 1 kg', 'standard', NULL, 120000.0000, 120000.0000, 7.0000, 1, 0.0000, NULL, '', '0', 0.0000, 840000.0000, '', 120000.0000, NULL, 23, 'PCS', 7.0000, NULL, NULL, NULL, NULL, NULL),
(240, 89, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', 'standard', NULL, 63500.0000, 63500.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 254000.0000, '', 63500.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL),
(241, 89, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', 'standard', NULL, 85000.0000, 85000.0000, 8.0000, 1, 0.0000, NULL, '', '0', 0.0000, 680000.0000, '', 85000.0000, NULL, 23, 'PCS', 8.0000, NULL, NULL, NULL, NULL, NULL),
(242, 89, 59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', 'standard', NULL, 45000.0000, 45000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 180000.0000, '', 45000.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL),
(243, 90, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', NULL, 124000.0000, 124000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 620000.0000, '', 124000.0000, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL, NULL),
(244, 91, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', NULL, 125000.0000, 125000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 125000.0000, '', 125000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(245, 91, 66, 'WMS-030', 'Wmeat Aus Beef Iga Galbi 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 75000.0000, '', 75000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(246, 92, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', 'standard', NULL, 95000.0000, 95000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 380000.0000, '', 95000.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL),
(251, 93, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', 0, 129000.0000, 129000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, 2580000.0000, '', 129000.0000, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL, NULL),
(248, 94, 36, 'WMS-002', 'WMeat Aus Beef Daging Rendang 1 kg', 'standard', 0, 120000.0000, 120000.0000, 4.0000, 1, 0.0000, NULL, '', '0.12', 0.0000, 480000.0000, '', 120000.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL),
(249, 94, 50, 'WMS-016', 'WMeat Aus Beef All Variant Less Fat 1 kg', 'standard', NULL, 90000.0000, 90000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 360000.0000, '', 90000.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL),
(250, 94, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 272000.0000, '', 68000.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL),
(252, 95, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', 0, 129000.0000, 129000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, 2580000.0000, '', 129000.0000, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL, NULL),
(253, 96, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', 'standard', NULL, 95000.0000, 95000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 95000.0000, '', 95000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(254, 96, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', 'standard', NULL, 85000.0000, 85000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 85000.0000, '', 85000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(255, 96, 58, 'WMS-024', 'WMeat Aus Beef Daging Giling 1 kg', 'standard', 0, 96500.0000, 96500.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 289500.0000, '', 96500.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(256, 96, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', 'standard', NULL, 70000.0000, 70000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 350000.0000, '', 70000.0000, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL, NULL),
(257, 97, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 68000.0000, '', 68000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(258, 97, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', 'standard', NULL, 85000.0000, 85000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 85000.0000, '', 85000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(259, 97, 50, 'WMS-016', 'WMeat Aus Beef All Variant Less Fat 1 kg', 'standard', NULL, 90000.0000, 90000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 90000.0000, '', 90000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(261, 98, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', 'standard', NULL, 85000.0000, 85000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 170000.0000, '', 85000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(344, 99, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', NULL, 124000.0000, 124000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, 2480000.0000, '', 124000.0000, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL, NULL),
(345, 100, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', 'standard', 0, 74000.0000, 74000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 74000.0000, '', 74000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(346, 101, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', 0, 129000.0000, 129000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, 1290000.0000, '', 129000.0000, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL, NULL),
(347, 102, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 75000.0000, '', 75000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(349, 103, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 75000.0000, '', 75000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(348, 102, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 136000.0000, '', 68000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(351, 104, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', 'standard', NULL, 85000.0000, 85000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 170000.0000, '', 85000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(350, 104, 55, 'WMS-021', 'WMeat Aus Beef Oxtail Cut 500 gr', 'standard', NULL, 65000.0000, 65000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 260000.0000, '', 65000.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL),
(352, 105, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', NULL, 140000.0000, 140000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 140000.0000, '', 140000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(353, 106, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', 0, 129000.0000, 129000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, 2580000.0000, '', 129000.0000, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL, NULL),
(354, 107, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', NULL, 124000.0000, 124000.0000, 30.0000, 1, 0.0000, NULL, '', '0', 0.0000, 3720000.0000, '', 124000.0000, NULL, 23, 'PCS', 30.0000, NULL, NULL, NULL, NULL, NULL),
(359, 108, 76, 'OLN-015', 'WMeat Aus Beef All Variant (Tumis/Sop) 500 gr', 'standard', NULL, 37000.0000, 37000.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 111000.0000, '', 37000.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(358, 108, 70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', 'standard', NULL, 57000.0000, 57000.0000, 6.0000, 1, 0.0000, NULL, '', '0', 0.0000, 342000.0000, '', 57000.0000, NULL, 23, 'PCS', 6.0000, NULL, NULL, NULL, NULL, NULL),
(355, 108, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 300000.0000, '', 75000.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL),
(356, 108, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 8.0000, 1, 0.0000, NULL, '', '0', 0.0000, 544000.0000, '', 68000.0000, NULL, 23, 'PCS', 8.0000, NULL, NULL, NULL, NULL, NULL),
(357, 108, 49, 'WMS-015', 'WMeat Aus Beef All Variant Less Fat 500 gr', 'standard', NULL, 50000.0000, 50000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 50000.0000, '', 50000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(360, 109, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', 0, 59840.0000, 59840.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 59840.0000, '', 59840.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(362, 110, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', 'standard', NULL, 85000.0000, 85000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 85000.0000, '', 85000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(361, 110, 55, 'WMS-021', 'WMeat Aus Beef Oxtail Cut 500 gr', 'standard', NULL, 65000.0000, 65000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 65000.0000, '', 65000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(364, 111, 55, 'WMS-021', 'WMeat Aus Beef Oxtail Cut 500 gr', 'standard', 0, 68000.0000, 68000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 68000.0000, '', 68000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(365, 111, 59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', 'standard', 0, 50000.0000, 50000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 100000.0000, '', 50000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(366, 111, 74, 'OLN-011', 'WMeat Aus Beef Iga Bakar 500 gr', 'standard', 0, 52500.0000, 52500.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 105000.0000, '', 52500.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(363, 111, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', 0, 80000.0000, 80000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 80000.0000, '', 80000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(367, 112, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', 'standard', NULL, 80000.0000, 80000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 80000.0000, '', 80000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(368, 113, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', 'standard', NULL, 95000.0000, 95000.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 285000.0000, '', 95000.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(369, 114, 49, 'WMS-015', 'WMeat Aus Beef All Variant Less Fat 500 gr', 'standard', 0, 51000.0000, 51000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 51000.0000, '', 51000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(371, 117, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', 'standard', NULL, 95000.0000, 95000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 190000.0000, '', 95000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(370, 116, 66, 'WMS-030', 'Wmeat Aus Beef Iga Galbi 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 75000.0000, '', 75000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(372, 118, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', 'standard', NULL, 95000.0000, 95000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 190000.0000, '', 95000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(373, 119, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 68000.0000, '', 68000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(375, 120, 76, 'OLN-015', 'WMeat Aus Beef All Variant (Tumis/Sop) 500 gr', 'standard', 0, 38000.0000, 38000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 38000.0000, '', 38000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(374, 120, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 68000.0000, '', 68000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(376, 121, 46, 'WMS-012', 'WMeat Aus Beef Tulang Sop 1 kg', 'standard', 0, 50000.0000, 50000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 50000.0000, '', 50000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(377, 121, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', 'standard', 0, 90000.0000, 90000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 90000.0000, '', 90000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(379, 122, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', NULL, 125000.0000, 125000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 125000.0000, '', 125000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(378, 122, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 68000.0000, '', 68000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(380, 123, 59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', 'standard', 0, 50000.0000, 50000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 50000.0000, '', 50000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(381, 123, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', 'standard', 0, 76000.0000, 76000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 76000.0000, '', 76000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(382, 124, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', 0, 165000.0000, 165000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, 1650000.0000, '', 165000.0000, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL, NULL),
(383, 125, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', 'standard', 0, 76000.0000, 76000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 76000.0000, '', 76000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(386, 126, 76, 'OLN-015', 'WMeat Aus Beef All Variant (Tumis/Sop) 500 gr', 'standard', 0, 38000.0000, 38000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 76000.0000, '', 38000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(385, 126, 70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', 'standard', NULL, 57000.0000, 57000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 57000.0000, '', 57000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(384, 126, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', NULL, 125000.0000, 125000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 125000.0000, '', 125000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(387, 127, 49, 'WMS-015', 'WMeat Aus Beef All Variant Less Fat 500 gr', 'standard', 0, 51000.0000, 51000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 51000.0000, '', 51000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(388, 127, 89, 'OLN-017', 'WMeat Buntut Sapi / Oxtail Cut  500 gr', 'standard', 0, 82000.0000, 82000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 82000.0000, '', 82000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(392, 128, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', 'standard', NULL, 95000.0000, 95000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 475000.0000, '', 95000.0000, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL, NULL),
(391, 128, 73, 'OLN-010', 'WMeat Aus Beef Striploin Steak 400 gr', 'standard', NULL, 85000.0000, 85000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 425000.0000, '', 85000.0000, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL, NULL),
(389, 128, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', 'standard', NULL, 80000.0000, 80000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, 800000.0000, '', 80000.0000, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL, NULL),
(390, 128, 65, 'WMS-027', 'Wmeat Aus Beef Striploin Steak Bone In 250 gr', 'standard', NULL, 53000.0000, 53000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, 530000.0000, '', 53000.0000, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL, NULL),
(395, 129, 74, 'OLN-011', 'WMeat Aus Beef Iga Bakar 500 gr', 'standard', 0, 52500.0000, 52500.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 105000.0000, '', 52500.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(394, 129, 66, 'WMS-030', 'Wmeat Aus Beef Iga Galbi 500 gr', 'standard', 0, 80000.0000, 80000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 80000.0000, '', 80000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(393, 129, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', 0, 80000.0000, 80000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 80000.0000, '', 80000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(397, 130, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', 0, 165000.0000, 165000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, 3300000.0000, '', 165000.0000, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL, NULL),
(401, 131, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', 'standard', 0, 76000.0000, 76000.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 228000.0000, '', 76000.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(398, 132, 36, 'WMS-002', 'WMeat Aus Beef Daging Rendang 1 kg', 'standard', 0, 130000.0000, 130000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 130000.0000, '', 130000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(399, 132, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', 'standard', NULL, 95000.0000, 95000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 95000.0000, '', 95000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(400, 133, 88, 'OLN-014', 'WMeat Tulang Sapi Soup  1 kg', 'standard', 0, 47500.0000, 47500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 47500.0000, '', 47500.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(402, 134, 36, 'WMS-002', 'WMeat Aus Beef Daging Rendang 1 kg', 'standard', 0, 130000.0000, 130000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 260000.0000, '', 130000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(403, 135, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', NULL, 125000.0000, 125000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 125000.0000, '', 125000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(404, 136, 51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', 'standard', 0, 46000.0000, 46000.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 138000.0000, '', 46000.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(405, 137, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', 'standard', NULL, 95000.0000, 95000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 190000.0000, '', 95000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(463, 138, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', 'standard', NULL, 95000.0000, 95000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 190000.0000, '', 95000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(466, 139, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', 'standard', 0, 66500.0000, 66500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 66500.0000, '', 66500.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(465, 139, 59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', 'standard', NULL, 45000.0000, 45000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 90000.0000, '', 45000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(464, 139, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 136000.0000, '', 68000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(467, 140, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 75000.0000, '', 75000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(469, 141, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', 0, 130000.0000, 130000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 130000.0000, '', 130000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(470, 142, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', NULL, 125000.0000, 125000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 250000.0000, '', 125000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(476, 143, 59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', 'standard', 0, 50000.0000, 50000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 50000.0000, '', 50000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(478, 144, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 68000.0000, '', 68000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(477, 144, 36, 'WMS-002', 'WMeat Aus Beef Daging Rendang 1 kg', 'standard', 0, 130000.0000, 130000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 130000.0000, '', 130000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(480, 145, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', NULL, 140000.0000, 140000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 140000.0000, '', 140000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(502, 146, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', 'standard', 0, 76000.0000, 76000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 76000.0000, '', 76000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(501, 147, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', NULL, 140000.0000, 140000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 280000.0000, '', 140000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(500, 148, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', NULL, 125000.0000, 125000.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 375000.0000, '', 125000.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(503, 149, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 136000.0000, '', 68000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(505, 150, 88, 'OLN-014', 'WMeat Tulang Sapi Soup  1 kg', 'standard', 0, 50000.0000, 50000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 100000.0000, '', 50000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(504, 150, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', 0, 150000.0000, 150000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 300000.0000, '', 150000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(507, 151, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', NULL, 125000.0000, 125000.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 375000.0000, '', 125000.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(508, 152, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', NULL, 125000.0000, 125000.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 375000.0000, '', 125000.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(509, 153, 72, 'OLN-009', 'WMeat Aus Beef Striploin Steak 200 gr', 'standard', NULL, 45000.0000, 45000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 180000.0000, '', 45000.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sma_sale_items` (`id`, `sale_id`, `product_id`, `product_code`, `product_name`, `product_type`, `option_id`, `net_unit_price`, `unit_price`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `subtotal`, `serial_no`, `real_unit_price`, `sale_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `comment`, `gst`, `cgst`, `sgst`, `igst`) VALUES
(510, 153, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 68000.0000, '', 68000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(511, 154, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', NULL, 140000.0000, 140000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 280000.0000, '', 140000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(512, 155, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 150000.0000, '', 75000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(513, 155, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', 'standard', NULL, 80000.0000, 80000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 80000.0000, '', 80000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(517, 157, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', 'standard', NULL, 80000.0000, 80000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 80000.0000, '', 80000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(516, 157, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 75000.0000, '', 75000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(518, 158, 66, 'WMS-030', 'Wmeat Aus Beef Iga Galbi 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 75000.0000, '', 75000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(519, 158, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 68000.0000, '', 68000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(528, 159, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', 0, 165000.0000, 165000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, 3300000.0000, '', 165000.0000, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL, NULL),
(545, 162, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', 0, 71000.0000, 71000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 284000.0000, '', 71000.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL),
(546, 161, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 272000.0000, '', 68000.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL),
(548, 163, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 68000.0000, '', 68000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(547, 163, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 150000.0000, '', 75000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(550, 164, 89, 'OLN-017', 'WMeat Buntut Sapi / Oxtail Cut  500 gr', 'standard', 0, 82000.0000, 82000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 82000.0000, '', 82000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(549, 164, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', 0, 140000.0000, 140000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 140000.0000, '', 140000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(556, 165, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', NULL, 140000.0000, 140000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 140000.0000, '', 140000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(557, 165, 65, 'WMS-027', 'Wmeat Aus Beef Striploin Steak Bone In 250 gr', 'standard', NULL, 53000.0000, 53000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 53000.0000, '', 53000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(558, 165, 69, 'WMS-028', 'WMeat Aus Beef Lidah Sapi Slice 500 gr', 'standard', NULL, 65000.0000, 65000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 65000.0000, '', 65000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(554, 166, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 75000.0000, '', 75000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(555, 166, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 68000.0000, '', 68000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(561, 167, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', NULL, 140000.0000, 140000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 280000.0000, '', 140000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(563, 168, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 225000.0000, '', 75000.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(565, 170, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', NULL, 125000.0000, 125000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 125000.0000, '', 125000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(566, 171, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', NULL, 140000.0000, 140000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 140000.0000, '', 140000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(567, 172, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 75000.0000, '', 75000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(569, 173, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', NULL, 140000.0000, 140000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 140000.0000, '', 140000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(570, 174, 65, 'WMS-027', 'Wmeat Aus Beef Striploin Steak Bone In 250 gr', 'standard', 0, 60000.0000, 60000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 120000.0000, '', 60000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(578, 176, 73, 'OLN-010', 'WMeat Aus Beef Striploin Steak 400 gr', 'standard', NULL, 85000.0000, 85000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, 850000.0000, '', 85000.0000, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL, NULL),
(577, 176, 72, 'OLN-009', 'WMeat Aus Beef Striploin Steak 200 gr', 'standard', NULL, 45000.0000, 45000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 180000.0000, '', 45000.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL),
(592, 177, 80, 'OLN-0290', 'Tenderloin Cube 300 gr', 'standard', NULL, 95000.0000, 95000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 95000.0000, '', 95000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(591, 177, 74, 'OLN-011', 'WMeat Aus Beef Iga Bakar 500 gr', 'standard', NULL, 50000.0000, 50000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 100000.0000, '', 50000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(590, 177, 59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', 'standard', NULL, 45000.0000, 45000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 45000.0000, '', 45000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(589, 177, 51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', 'standard', NULL, 44000.0000, 44000.0000, 4.0000, 1, 0.0000, NULL, '', '0', 0.0000, 176000.0000, '', 44000.0000, NULL, 23, 'PCS', 4.0000, NULL, NULL, NULL, NULL, NULL),
(588, 177, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', NULL, 125000.0000, 125000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 125000.0000, '', 125000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(587, 177, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', NULL, 140000.0000, 140000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 140000.0000, '', 140000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(586, 177, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 75000.0000, '', 75000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(596, 178, 66, 'WMS-030', 'Wmeat Aus Beef Iga Galbi 500 gr', 'standard', 0, 80000.0000, 80000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 160000.0000, '', 80000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(595, 178, 51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', 'standard', 0, 46000.0000, 46000.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 138000.0000, '', 46000.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(597, 179, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', 0, 160000.0000, 160000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 160000.0000, '', 160000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(598, 180, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', 'standard', NULL, 95000.0000, 95000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 95000.0000, '', 95000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(599, 180, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', NULL, 125000.0000, 125000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 125000.0000, '', 125000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(600, 181, 50, 'WMS-016', 'WMeat Aus Beef All Variant Less Fat 1 kg', 'standard', 0, 91000.0000, 91000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 182000.0000, '', 91000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(601, 182, 89, 'OLN-017', 'WMeat Buntut Sapi / Oxtail Cut  500 gr', 'standard', 0, 82000.0000, 82000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 164000.0000, '', 82000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(602, 182, 49, 'WMS-015', 'WMeat Aus Beef All Variant Less Fat 500 gr', 'standard', 0, 52000.0000, 52000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 52000.0000, '', 52000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(603, 183, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', NULL, 140000.0000, 140000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 140000.0000, '', 140000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(604, 184, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', NULL, 140000.0000, 140000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 140000.0000, '', 140000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(605, 185, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', NULL, 140000.0000, 140000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 140000.0000, '', 140000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(606, 186, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 225000.0000, '', 75000.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(607, 187, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 5.0000, 1, 0.0000, NULL, '', '0', 0.0000, 375000.0000, '', 75000.0000, NULL, 23, 'PCS', 5.0000, NULL, NULL, NULL, NULL, NULL),
(608, 188, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 75000.0000, '', 75000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(609, 189, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 150000.0000, '', 75000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(610, 190, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 150000.0000, '', 75000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(616, 191, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', 'standard', 0, 66500.0000, 66500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 66500.0000, '', 66500.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(615, 191, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 68000.0000, '', 68000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(618, 192, 51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', 'standard', NULL, 44000.0000, 44000.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 132000.0000, '', 44000.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL),
(619, 193, 59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', 'standard', 0, 50000.0000, 50000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 100000.0000, '', 50000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(620, 193, 71, 'OLN-004', 'WMeat Aus Beef Daging Giling 1 kg', 'standard', 0, 115000.0000, 115000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 115000.0000, '', 115000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(621, 193, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', 'standard', 0, 83500.0000, 83500.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 167000.0000, '', 83500.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(622, 193, 66, 'WMS-030', 'Wmeat Aus Beef Iga Galbi 500 gr', 'standard', 0, 80000.0000, 80000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 160000.0000, '', 80000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(623, 193, 69, 'WMS-028', 'WMeat Aus Beef Lidah Sapi Slice 500 gr', 'standard', 0, 75000.0000, 75000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 75000.0000, '', 75000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(624, 194, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 136000.0000, '', 68000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(641, 195, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', 'standard', 0, 66500.0000, 66500.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, 1330000.0000, '', 66500.0000, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL, NULL),
(640, 195, 74, 'OLN-011', 'WMeat Aus Beef Iga Bakar 500 gr', 'standard', NULL, 50000.0000, 50000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, 1000000.0000, '', 50000.0000, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL, NULL),
(639, 195, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', 'standard', NULL, 80000.0000, 80000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, 800000.0000, '', 80000.0000, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL, NULL),
(638, 195, 51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', 'standard', NULL, 44000.0000, 44000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, 440000.0000, '', 44000.0000, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL, NULL),
(637, 195, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, 680000.0000, '', 68000.0000, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL, NULL),
(636, 195, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', NULL, 75000.0000, 75000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, 750000.0000, '', 75000.0000, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL, NULL),
(635, 196, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', 'standard', 0, 72000.0000, 72000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 72000.0000, '', 72000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(634, 196, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 68000.0000, '', 68000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(642, 197, 76, 'OLN-015', 'WMeat Aus Beef All Variant (Tumis/Sop) 500 gr', 'standard', 0, 38000.0000, 38000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, 760000.0000, '', 38000.0000, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL, NULL),
(643, 198, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', 0, 165000.0000, 165000.0000, 10.0000, 1, 0.0000, NULL, '', '0', 0.0000, 1650000.0000, '', 165000.0000, NULL, 23, 'PCS', 10.0000, NULL, NULL, NULL, NULL, NULL),
(644, 199, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', NULL, 140000.0000, 140000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 140000.0000, '', 140000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(645, 200, 87, 'OLN-013', 'WMeat Tulang Sapi Sop  500 gr', 'standard', 0, 27000.0000, 27000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 27000.0000, '', 27000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(646, 201, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', 0, 165000.0000, 165000.0000, 7.0000, 1, 0.0000, NULL, '', '0', 0.0000, 1155000.0000, '', 165000.0000, NULL, 23, 'PCS', 7.0000, NULL, NULL, NULL, NULL, NULL),
(647, 202, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', 'standard', 0, 100000.0000, 100000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 100000.0000, '', 100000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(648, 202, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', 0, 130000.0000, 130000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 130000.0000, '', 130000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(649, 202, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 'standard', 0, 150000.0000, 150000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 150000.0000, '', 150000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(650, 203, 90, 'OLN-018', 'WMeat Buntut Sapi / Oxtail Cut  1 kg', 'standard', 0, 165000.0000, 165000.0000, 20.0000, 1, 0.0000, NULL, '', '0', 0.0000, 3300000.0000, '', 165000.0000, NULL, 23, 'PCS', 20.0000, NULL, NULL, NULL, NULL, NULL),
(651, 204, 65, 'WMS-027', 'Wmeat Aus Beef Striploin Steak Bone In 250 gr', 'standard', 0, 60000.0000, 60000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 60000.0000, '', 60000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(652, 205, 51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', 'standard', NULL, 44000.0000, 44000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 44000.0000, '', 44000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(653, 205, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 68000.0000, '', 68000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(654, 206, 51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', 'standard', NULL, 44000.0000, 44000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 44000.0000, '', 44000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(655, 206, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 68000.0000, '', 68000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(656, 207, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 68000.0000, '', 68000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(657, 207, 51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', 'standard', NULL, 44000.0000, 44000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 44000.0000, '', 44000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(658, 208, 73, 'OLN-010', 'WMeat Aus Beef Striploin Steak 400 gr', 'standard', NULL, 85000.0000, 85000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 85000.0000, '', 85000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(659, 208, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 68000.0000, '', 68000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(660, 208, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', 'standard', NULL, 80000.0000, 80000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 80000.0000, '', 80000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(661, 208, 89, 'OLN-017', 'WMeat Buntut Sapi / Oxtail Cut  500 gr', 'standard', 0, 82000.0000, 82000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 82000.0000, '', 82000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(662, 208, 70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', 'standard', NULL, 57000.0000, 57000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 57000.0000, '', 57000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(668, 209, 74, 'OLN-011', 'WMeat Aus Beef Iga Bakar 500 gr', 'standard', 0, 52500.0000, 52500.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 52500.0000, '', 52500.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(667, 209, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', 0, 80000.0000, 80000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 80000.0000, '', 80000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(670, 210, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', NULL, 68000.0000, 68000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 68000.0000, '', 68000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(669, 210, 36, 'WMS-002', 'WMeat Aus Beef Daging Rendang 1 kg', 'standard', 0, 130000.0000, 130000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 130000.0000, '', 130000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(671, 211, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', 'standard', 0, 70000.0000, 70000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 70000.0000, '', 70000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(672, 211, 50, 'WMS-016', 'WMeat Aus Beef All Variant Less Fat 1 kg', 'standard', 0, 95000.0000, 95000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 95000.0000, '', 95000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(677, 212, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 'standard', 0, 80000.0000, 80000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 80000.0000, '', 80000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(676, 213, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 'standard', 0, 130000.0000, 130000.0000, 1.0000, 1, 0.0000, NULL, '', '0', 0.0000, 130000.0000, '', 130000.0000, NULL, 23, 'PCS', 1.0000, NULL, NULL, NULL, NULL, NULL),
(678, 214, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 'standard', 0, 71000.0000, 71000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 142000.0000, '', 71000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(679, 214, 59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', 'standard', 0, 50000.0000, 50000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 100000.0000, '', 50000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(680, 214, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', 'standard', 0, 70000.0000, 70000.0000, 2.0000, 1, 0.0000, NULL, '', '0', 0.0000, 140000.0000, '', 70000.0000, NULL, 23, 'PCS', 2.0000, NULL, NULL, NULL, NULL, NULL),
(681, 215, 51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', 'standard', 0, 46000.0000, 46000.0000, 3.0000, 1, 0.0000, NULL, '', '0', 0.0000, 138000.0000, '', 46000.0000, NULL, 23, 'PCS', 3.0000, NULL, NULL, NULL, NULL, NULL);

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
('33cfac9af5f2d99010eced3a50f8757c8fd9ff70', '109.106.252.101', 1645198239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353139383233393b),
('480f9f1283bbd011d04455e89ee0af35a2bf42bd', '103.213.129.56', 1645200192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353230303139323b7265717565737465645f706167657c733a353a2261646d696e223b),
('da4b5d8924cdf00118b9b464d8dbfeaebfc90aff', '109.106.252.101', 1645200040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353230303034303b),
('91d9a0661fd1d8b4cec82ed8fc467fce548387c0', '109.106.252.101', 1645200040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353230303034303b7265717565737465645f706167657c733a353a2261646d696e223b),
('c96a5aabcbdb6831ff1c50cb0a053cf92cfa3915', '109.106.252.101', 1645200040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353230303034303b),
('4086ed4cb46b1f47d69925dc51f329f634bcd4ac', '109.106.252.101', 1645198239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353139383233393b7265717565737465645f706167657c733a353a2261646d696e223b),
('34907852c681fa0b53440c49355bda2d0d7c4eff', '109.106.252.101', 1645196447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353139363434373b7265717565737465645f706167657c733a353a2261646d696e223b),
('b06384c9817c19acd798a914d8c0095fc34904cb', '109.106.252.101', 1645196447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353139363434373b),
('2643f56c5eae3ba9bcb9de2f69ace4f837286645', '109.106.252.101', 1645198239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353139383233393b),
('1658d42c4ef4d465dc4c3a828a8742afd81e7fb4', '109.106.252.101', 1645194637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353139343633373b7265717565737465645f706167657c733a353a2261646d696e223b),
('2cb72bdd688f0dcb900fd81504e1ef08a9ef4324', '109.106.252.101', 1645196447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353139363434373b),
('a97a940a558a0a1fe2586d96ef3188e4491c5443', '109.106.252.101', 1645194637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353139343633373b),
('74d7ebbc9a1fbb591dcd557fcfec4e6a573bb56f', '109.106.252.101', 1645194637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353139343633373b),
('25469da6623424b46c6c8dede5cad004a72fbc2e', '109.106.252.101', 1645192843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353139323834333b),
('33e27ddcaa6d1f0000318d6d1b84bdef33af099a', '109.106.252.101', 1645192843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353139323834333b7265717565737465645f706167657c733a353a2261646d696e223b),
('aee24f80fec7d6866138433c2c040a430b78d14d', '109.106.252.101', 1645192843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353139323834333b),
('d2b45d949a8cdf8f59e598178ef90ef109d77f79', '109.106.252.101', 1645191041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353139313034313b),
('d6c7166f573e6ee3ee630ce084f4c397e77eb0fa', '109.106.252.101', 1645191041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353139313034313b7265717565737465645f706167657c733a353a2261646d696e223b),
('1770e60fcee2cf7e3fdeeef0a5d61207652c0943', '109.106.252.101', 1645191041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353139313034313b),
('30b1d7b0a7c20dd262c7be9d0bff409c0294cc3b', '109.106.252.101', 1645189239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138393233393b),
('e23a76224659fa38fdd0f0cedcbb09ef2c832326', '109.106.252.101', 1645189239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138393233393b7265717565737465645f706167657c733a353a2261646d696e223b),
('f5fae8d9b54aa5f0654d3b8f9c1f7288cab39347', '109.106.252.101', 1645189239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138393233393b),
('91ff4c38f0a9e2c777590026066c360ed3a62bf9', '109.106.252.101', 1645187437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138373433373b),
('c694d1f57c30d0b22348b0388eae144192c1fa9b', '109.106.252.101', 1645187437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138373433373b7265717565737465645f706167657c733a353a2261646d696e223b),
('a9b4d02b0134e134f517bafa2c3ef5b79b6bf06d', '109.106.252.101', 1645187437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138373433373b),
('cdd6567cc9a9147091f39cd2854690ac01197590', '109.106.252.101', 1645185644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138353634343b),
('a784b30e510457f38afed3f5111fa5ebe3a0b5af', '109.106.252.101', 1645185644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138353634343b7265717565737465645f706167657c733a353a2261646d696e223b),
('54acda6ec980acb357e36eafd68f3afe8ae9dcb0', '109.106.252.101', 1645185642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138353634323b),
('c2b770bc2e72353004a7a314a70eecaaf2b448de', '109.106.252.101', 1645183836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138333833363b),
('47963c98e988771f990954d36c4cee824413a0f7', '109.106.252.101', 1645183836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138333833363b7265717565737465645f706167657c733a353a2261646d696e223b),
('c3b82134aca10146602df7e166a46bd5baf38304', '109.106.252.101', 1645183836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138333833363b),
('5710700400c8e9d7fecbb9dc90fee75523257c08', '109.106.252.101', 1645182048, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138323034383b),
('ed95885d2cf89f9fca150e66962e59d46c219c38', '109.106.252.101', 1645182048, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138323034383b7265717565737465645f706167657c733a353a2261646d696e223b),
('3c251b2470f2002a1a0f7ef18f1da61c8927bcb5', '109.106.252.101', 1645182048, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138323034383b),
('124b58c2e05186393e36e6a752c95d12570121cb', '109.106.252.101', 1645180240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138303234303b),
('5f1f9db5da96f0bc766bdef47430b8a713341bf7', '109.106.252.101', 1645180240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138303234303b7265717565737465645f706167657c733a353a2261646d696e223b),
('c23d1359c89dc26834d31a01f0769d564d894e78', '109.106.252.101', 1645180240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353138303233393b),
('5911bda0f9abf9eeaa3aa4ac10bfd21ac7d44a67', '109.106.252.101', 1645178439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353137383433393b),
('a0bdce3f802898e76debca68d8fe04a1d382cf93', '109.106.252.101', 1645178439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353137383433393b7265717565737465645f706167657c733a353a2261646d696e223b),
('3d614a46559ca37fec9ad7f6643de3089b18eec5', '109.106.252.101', 1645178439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353137383433393b),
('16a2e54554755305c2c808dd270af65edf85df5f', '109.106.252.101', 1645176638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353137363633383b),
('c46ea910e81c4ccfdbbbbd175821bff6f825a73c', '109.106.252.101', 1645176638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353137363633383b7265717565737465645f706167657c733a353a2261646d696e223b),
('e317a0de66615c9c9f1c2af7583c7cba79ae9a48', '109.106.252.101', 1645176638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353137363633383b),
('9d0e6bfc11bc9a342203d7379187d8cb548776e6', '109.106.252.101', 1645174837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353137343833373b),
('8c85019610a6d41940efefc2ebf97ce074d89a72', '109.106.252.101', 1645174837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353137343833373b7265717565737465645f706167657c733a353a2261646d696e223b),
('a3c615994280ff2f78faf097b14a95f188992985', '109.106.252.101', 1645174837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353137343833373b),
('0b411b8a6ba86e305d1e368d90dad89f3799e684', '109.106.252.101', 1645173036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353137333033363b),
('f6e61aa9e2c0daef9b0142a77ab274a695b1ee76', '109.106.252.101', 1645173036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353137333033363b7265717565737465645f706167657c733a353a2261646d696e223b),
('2eaf3d0d63d14d1a873a8152c6c1efcc7ce9cb7a', '109.106.252.101', 1645173036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353137333033363b),
('41ba144c1eb8f8eb053e603fe616beab8ad27621', '109.106.252.101', 1645171242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353137313234323b),
('54155a14fb1400fdd3a840a18146459764e080e7', '109.106.252.101', 1645171242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353137313234323b7265717565737465645f706167657c733a353a2261646d696e223b),
('784fdcf5a68c61cb311e646e38738f018ae2d095', '109.106.252.101', 1645171242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353137313234323b),
('2dae203185f9725c3407d4ff939bc6cd0afbd7e6', '109.106.252.101', 1645169436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353136393433363b),
('aafbbdfb58383d2f62353ea7c9a93b685459dadf', '109.106.252.101', 1645169436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353136393433363b7265717565737465645f706167657c733a353a2261646d696e223b),
('dfd42ea21f5db60f150c6ff83be1924b1a2d29b4', '109.106.252.101', 1645169436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353136393433363b),
('198608d8b3092ebc75304271f7db99c7cf7c28bd', '109.106.252.101', 1645167643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353136373634333b),
('9ba6699f917f62faf670a153183da0640dc4f897', '109.106.252.101', 1645167643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353136373634333b7265717565737465645f706167657c733a353a2261646d696e223b),
('d6abc3470d4b9d935d6df9ceee809f1b34ba21ca', '109.106.252.101', 1645167642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353136373634323b),
('4f442593d780748bfcb994b1bd4e037b8e444876', '109.106.252.101', 1645165837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353136353833373b7265717565737465645f706167657c733a353a2261646d696e223b),
('a6067c1061b3f82784d314ac48b2199a942b64be', '109.106.252.101', 1645165837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353136353833373b),
('2e44e217348fd15c6b4f58b6afbd33697f869d38', '109.106.252.101', 1645165837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353136353833373b),
('0c403a87c88391ec07385eda7c9b7580df384dc1', '109.106.252.101', 1645164042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353136343034323b),
('b0239cd40dd7d6e29d5bc35c1a2712ffced8abbb', '109.106.252.101', 1645164042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353136343034323b7265717565737465645f706167657c733a353a2261646d696e223b),
('88c3916dece0a34fb40a95ace9b763a0ddb64d50', '109.106.252.101', 1645164042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353136343034323b),
('4d313a9287f427537aa0393e9992f760a1bb884f', '109.106.252.101', 1645162237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353136323233373b),
('72ff80e8a2ce0459508f323446ff7ba54c8af41e', '109.106.252.101', 1645162237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353136323233373b7265717565737465645f706167657c733a353a2261646d696e223b),
('5f048a92ef39739db128f351b1a87ecb991a3965', '109.106.252.101', 1645162237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353136323233373b),
('86a9ba0daf8b58e2893d90a15a637536432bdf6d', '109.106.252.101', 1645160440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353136303434303b),
('010d09c98e37d9df0c802e273742bacca2e46d4d', '109.106.252.101', 1645160440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353136303434303b7265717565737465645f706167657c733a353a2261646d696e223b),
('3d8d7d12f93955c99d14cbf4e01a14411960e3af', '109.106.252.101', 1645160440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353136303434303b),
('56bb9b9844a8ba4abf34ad20594c4cc82a583f47', '109.106.252.101', 1645158637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135383633373b),
('36e728b798485c8305d316e3029b6c916a796c58', '109.106.252.101', 1645158637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135383633373b7265717565737465645f706167657c733a353a2261646d696e223b),
('f9dd53d9a3331f9ba48b5e37f963a01ed6c0cd9c', '109.106.252.101', 1645158637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135383633373b),
('72f92b5f80840911d496c1790c16b40e7157d3b3', '109.106.252.101', 1645156839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135363833393b),
('b31b4aa38daa1a11cf1cc0f14d82421de13572b8', '109.106.252.101', 1645156839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135363833393b7265717565737465645f706167657c733a353a2261646d696e223b),
('5e69d4228e1e61f1cde417de4f080459d3cdbc23', '109.106.252.101', 1645156839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135363833393b),
('985d46d54e6190b17122d6022b1bff43be74f6b7', '109.106.252.101', 1645155036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135353033363b),
('986ded291f851e9b2a840333d593e3665e931c3b', '109.106.252.101', 1645155036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135353033363b7265717565737465645f706167657c733a353a2261646d696e223b),
('80e9350415c5bde2902997e7b17d2f6f66275d27', '109.106.252.101', 1645155036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135353033363b),
('cc6987fe80e996062647c95e4f855d7eed099362', '109.106.252.101', 1645153240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135333234303b),
('51d38d8325033e6ee33d27cabd97ef954007b107', '109.106.252.101', 1645153240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135333234303b7265717565737465645f706167657c733a353a2261646d696e223b),
('d93dbd436db6fe5b3547ff65c3ff7495d8f317bb', '109.106.252.101', 1645153240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135333234303b),
('37b2b1ff7b071e7f339e61ff7a60677866c44b0c', '109.106.252.101', 1645151440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135313434303b),
('04bea0b91aa8dadc4e037bdfa7159a4c3fd1b258', '109.106.252.101', 1645151440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135313434303b7265717565737465645f706167657c733a353a2261646d696e223b),
('a35515d32ea3a18bd3892a2f973013658c7b4ca5', '109.106.252.101', 1645151439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353135313433393b),
('636561349c8b5d7228ee2e7ab9c5220fd568d52d', '109.106.252.101', 1645149642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353134393634323b),
('6f2e3aae69a0a040f0d261e0273c23c32b0298e4', '109.106.252.101', 1645149642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353134393634323b7265717565737465645f706167657c733a353a2261646d696e223b),
('3c3afe60c1a309d211d34f4b08611a8b2bb7e4a0', '109.106.252.101', 1645149642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353134393634323b),
('0bd4adab67159472cb09c9a74b7da0c6f6bf74b5', '109.106.252.101', 1645147838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353134373833383b),
('01e31d91ac6bc4052ef00380858a72078f81d590', '109.106.252.101', 1645147838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353134373833383b7265717565737465645f706167657c733a353a2261646d696e223b),
('33575455552ae2ce8367c373d0222f634b9fc52e', '109.106.252.101', 1645147838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353134373833383b),
('5b164e77b7b249ae528a8efba179d4a56a911b57', '109.106.252.101', 1645146038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353134363033383b),
('100e9258c784e40e10c0edc4ddbe5eaaa45cbc82', '109.106.252.101', 1645146038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353134363033383b7265717565737465645f706167657c733a353a2261646d696e223b),
('94498b7f77db3ca3be7ebd6ae05a9a1fdea13c96', '109.106.252.101', 1645146038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353134363033383b),
('f33646e6b7352240ce7489fb7d208a1c098648eb', '109.106.252.101', 1645144236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353134343233363b),
('2e9b2d8a5d2834270d69dceedf95ab75ed9b88a1', '109.106.252.101', 1645144236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353134343233363b7265717565737465645f706167657c733a353a2261646d696e223b),
('a849c178477e127da98ac6d1a38e6c42e81ced2c', '109.106.252.101', 1645144236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353134343233363b),
('1fff6861809d73fe12a619b97cf4f619ad4264f1', '109.106.252.101', 1645142440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353134323434303b),
('339791ecad98e1909d6145605204cc57e87b5f7c', '109.106.252.101', 1645142440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353134323434303b7265717565737465645f706167657c733a353a2261646d696e223b),
('4aa6c90b88395e29b9005078f1a053a069d6b9cf', '109.106.252.101', 1645142440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353134323434303b),
('cd1a8feeea1a4f8abe91fbae7905ecb6444d46c9', '109.106.252.101', 1645140636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353134303633363b),
('a598d966cc20f8792ebadc714b64b0d72833d668', '109.106.252.101', 1645140636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353134303633363b7265717565737465645f706167657c733a353a2261646d696e223b),
('79371b884515c551d4d8110928a8f0637e4469cd', '109.106.252.101', 1645140636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353134303633363b),
('b3c2c3dc5c4bdd163e8ffee2106aba6c6d804918', '109.106.252.101', 1645138838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353133383833383b),
('f8645834d9b7ee88bfc88bda340bba99a3f6367a', '109.106.252.101', 1645138838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353133383833383b7265717565737465645f706167657c733a353a2261646d696e223b),
('6d1bf0c32de3ad197df17cc3e51fc400715ee3e8', '109.106.252.101', 1645138838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353133383833383b),
('0b011f4066fab7b2f2113c1e335001834bda681c', '109.106.252.101', 1645137038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353133373033383b),
('6e0d5fa4a6d8b612f8711be8c1c3a842d0eaadf1', '109.106.252.101', 1645137038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353133373033383b7265717565737465645f706167657c733a353a2261646d696e223b),
('724b5c33c2d5d17c3ee7439f696937a2e9ef9634', '109.106.252.101', 1645137038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353133373033383b),
('8f1b5012d455958d11bb813aafbb53b1823971ea', '109.106.252.101', 1645135238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353133353233383b),
('20d05ab712876d7063d8dd07b10e4c30bc6eed56', '109.106.252.101', 1645135238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353133353233383b7265717565737465645f706167657c733a353a2261646d696e223b),
('965e9a7bec4523b1dc1da216e3bf0160b164d1db', '109.106.252.101', 1645135238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353133353233383b),
('65f1966b9c74890085db6390e1943db2171faf18', '109.106.252.101', 1645133438, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353133333433383b),
('09ca1ef8d890d170a0bd11b3e82e0d9a582201bc', '109.106.252.101', 1645133438, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353133333433383b7265717565737465645f706167657c733a353a2261646d696e223b),
('ef7417008400d6c92cdb8e683b574a4192fcb661', '109.106.252.101', 1645133438, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353133333433383b),
('17b72cb73302d48ee693b59dc07c7e29f5501743', '109.106.252.101', 1645131638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353133313633383b),
('6edcf249b39dc84dc3423fdb1f729e451a4f2d84', '109.106.252.101', 1645131638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353133313633383b7265717565737465645f706167657c733a353a2261646d696e223b),
('105ba73fb97cccc04b679138ffe631560a5bf86e', '109.106.252.101', 1645131638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353133313633383b),
('c4867e67eca629c18862495f369733275fb9d921', '109.106.252.101', 1645129836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132393833363b),
('cc99431eac452041a827bbeafcfa6abfc9cb678e', '109.106.252.101', 1645129836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132393833363b7265717565737465645f706167657c733a353a2261646d696e223b),
('9be29cfd2b3f2743daf7f506ecaca96c9363eee7', '109.106.252.101', 1645129836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132393833363b),
('9d3a69e59400a25e291c250db325501950f9a0aa', '109.106.252.101', 1645128038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132383033383b),
('9c4bb409a820db6c1e262b3f2f1d8b6b407a5636', '109.106.252.101', 1645128038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132383033383b7265717565737465645f706167657c733a353a2261646d696e223b),
('8d1b4cc9edd9b7594f6c206b238d6d21fccec87f', '109.106.252.101', 1645128038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132383033383b),
('10e4b3f341418f58f7232de19e465f933806b21e', '35.212.26.22', 1645127976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132373937363b),
('314ae70e24fe6b710c628bc83546fa18c56480dc', '35.212.26.22', 1645127976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132373937363b7265717565737465645f706167657c733a353a2261646d696e223b),
('ae18f5776683bac0adbc0d1861bb9656aa1052b0', '35.212.26.22', 1645127975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132373937353b),
('104eea90b5cc3faab7ca043c5bdaa1135816b4f5', '109.106.252.101', 1645126236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132363233363b),
('d0587bfb13f8facbff1d9dc9b6f8d270204f54d3', '109.106.252.101', 1645126236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132363233363b7265717565737465645f706167657c733a353a2261646d696e223b),
('da646e313622719ea33e2fd02a3a31b59a4e892e', '109.106.252.101', 1645126236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132363233363b),
('59b7b3bbfc95eb079be5c88b18ba6d4abea2dd29', '109.106.252.101', 1645124437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132343433373b),
('0294f0fb6221140409b9ee95f7fb1bf71bbb6d25', '109.106.252.101', 1645124437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132343433373b7265717565737465645f706167657c733a353a2261646d696e223b),
('aca6711b32b5aacd93eabfc844175955b057bacd', '109.106.252.101', 1645124437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132343433373b),
('b7baeaf4ef1d6e63b902a05987aa439b0431a51e', '109.106.252.101', 1645122637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132323633373b),
('a85080186520e00cef3441beae8a73e993493846', '109.106.252.101', 1645122637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132323633373b7265717565737465645f706167657c733a353a2261646d696e223b),
('31560257f9c378fa159dd138cd461ec37ccff486', '109.106.252.101', 1645122637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132323633373b),
('712f17207967be470f1f1067659ced83b83e0336', '109.106.252.101', 1645120838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132303833383b),
('d65c627da9395557712de27b7f702274334cbe50', '109.106.252.101', 1645120838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132303833383b7265717565737465645f706167657c733a353a2261646d696e223b),
('a24cd094c69bb44dceb8f424aa07ceb3e610353a', '109.106.252.101', 1645120838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353132303833383b),
('92f73f4411cb13f427b9d2dac12506d0690b91f2', '109.106.252.101', 1645119036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353131393033363b),
('40d8bd6ba8078a4ac0a74916d819c15a5e65691b', '109.106.252.101', 1645119036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353131393033363b7265717565737465645f706167657c733a353a2261646d696e223b),
('7e2782a5fb6feeedb0ab987e04cbf52e63623ef1', '109.106.252.101', 1645119036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353131393033363b),
('6f071b62d56f533bad52b9d3b50d0980e2e43a59', '109.106.252.101', 1645117252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353131373235323b),
('4b8fff07f39102d7f0f8fbef45e507a6f544eadd', '109.106.252.101', 1645117251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353131373235313b7265717565737465645f706167657c733a353a2261646d696e223b),
('dad1a9431d69f23a6fe2ce70f49d21574c09331e', '109.106.252.101', 1645117251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353131373235313b),
('8449a4c8cafd18fe0c3137a60c6e85232339dcfb', '109.106.252.101', 1645115442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353131353434323b),
('d8722ace451e8e0a007aa2de5d6527593bcc6fb9', '109.106.252.101', 1645115442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353131353434323b7265717565737465645f706167657c733a353a2261646d696e223b),
('a9768deac22ced56d12a45d698b332bbcc35d49c', '109.106.252.101', 1645115442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353131353434323b),
('e0806df43baa7268807f755d99baf2c5a51763af', '109.106.252.101', 1645113645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353131333634353b),
('18ed388fa0cc91c32801cf0e40f04c5d89e555ee', '109.106.252.101', 1645113645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353131333634353b7265717565737465645f706167657c733a353a2261646d696e223b),
('578452c7ec975aabc5bf5cb699433f4301b362e0', '109.106.252.101', 1645113645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353131333634353b),
('ad330d25f5142c3b90e2d81db754597b622f722c', '109.106.252.101', 1645111839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353131313833393b),
('459d3254af63891a1a3e4cf0b907f471634b3f3f', '109.106.252.101', 1645111839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353131313833393b7265717565737465645f706167657c733a353a2261646d696e223b),
('0e3cdb66f3013312381cba56bc8eff0dc1b36613', '109.106.252.101', 1645111839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353131313833393b),
('21627ad532a02b18ba4d73dcb65f95b5285187c1', '109.106.252.101', 1645110043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353131303034333b),
('541c71c6ae3df9ec5d0e4c3231fef14b0ccdaf4a', '109.106.252.101', 1645110043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353131303034333b7265717565737465645f706167657c733a353a2261646d696e223b),
('539094c1d92804a8c3a920a7f31d59b7940f0250', '109.106.252.101', 1645110043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353131303034333b),
('598e9659e025ea1d6bbf80e7414d682b4650582a', '109.106.252.101', 1645108241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353130383234313b),
('dfec7b88e2b7b04c6bb35957bb869d86a4a14b54', '109.106.252.101', 1645106444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353130363434343b7265717565737465645f706167657c733a353a2261646d696e223b),
('d337afce80b7873c4f3ae29ee2c9ad8d8d128c99', '109.106.252.101', 1645106444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353130363434343b),
('7dbae6dbde9ca359da6211625cac420fb7dc57ec', '109.106.252.101', 1645108241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353130383234313b),
('77506195d3cb3aabe829f6ccb19b0e95cce1c7b9', '109.106.252.101', 1645108241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353130383234313b7265717565737465645f706167657c733a353a2261646d696e223b),
('1d5a32a4df6611f81127e6693b703711c0c8f58b', '109.106.252.101', 1645106444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353130363434343b),
('915965d0798e1bd74718c914333f423db93dc039', '109.106.252.101', 1645104641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353130343634313b),
('851b529916447e377fb89497cccf29d0b4cbea0e', '109.106.252.101', 1645104641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353130343634313b7265717565737465645f706167657c733a353a2261646d696e223b),
('abf73d3d29ef340995e78003b2d05d73c6726037', '109.106.252.101', 1645104641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353130343634313b),
('67baaa8942ca5176d59389d7e7751a2448ba8a7c', '109.106.252.101', 1645102843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353130323834333b),
('bf2d3c53187dc581affeb55e4cc0db21190d63db', '109.106.252.101', 1645101040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353130313034303b7265717565737465645f706167657c733a353a2261646d696e223b),
('c3c114bf509d49b8fbe35447e75c3d99a6cec155', '109.106.252.101', 1645101040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353130313034303b),
('84a80ecb3580d5c85762f72810f38b3a6c19b6f8', '109.106.252.101', 1645102843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353130323834333b),
('f6f5b19be806bd4232f2d7338720c740a6fb2741', '109.106.252.101', 1645102843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353130323834333b7265717565737465645f706167657c733a353a2261646d696e223b),
('14d0fcc8c0ac830bdf0676bf2d6c2ef730a8ca24', '109.106.252.101', 1645099240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353039393234303b),
('07b10d80f124da6e6ad53f929d0f07c006a49f78', '109.106.252.101', 1645099240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353039393234303b7265717565737465645f706167657c733a353a2261646d696e223b),
('e85fe8091e74a8911cb27fa0615899594b8e2df2', '109.106.252.101', 1645099240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353039393234303b),
('9f01e5a6e3c828a84ea1678e745b287d222bd48f', '109.106.252.101', 1645101040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353130313034303b),
('cfa4a3940af3b06228ef005fa0ed68515b11a63b', '109.106.252.101', 1645097440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353039373434303b),
('9ea4343d3ac3051b2401060824c8935252d78619', '109.106.252.101', 1645097440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353039373434303b7265717565737465645f706167657c733a353a2261646d696e223b),
('1dfe521097696b5665fb0a618e365e773c151a8d', '109.106.252.101', 1645097440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353039373434303b),
('289392070ce96796796944dd6609d6f055c3121d', '109.106.252.101', 1645095649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353039353634393b),
('c9ebe7d799a8dceb18ed9926d62010ea0a2aa30b', '109.106.252.101', 1645095649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353039353634393b7265717565737465645f706167657c733a353a2261646d696e223b),
('78f7c46260f5123feded5822f0117dbbfc1bc0c1', '109.106.252.101', 1645095649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353039353634393b),
('9ed624ea2a32172e3fa3fe322797e7f6a41ab10f', '109.106.252.101', 1645093843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353039333834333b),
('4cb7dd9b442ece89203cb278f482c253b2badb8f', '109.106.252.101', 1645093843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353039333834333b7265717565737465645f706167657c733a353a2261646d696e223b),
('7929743ffae1ee89fe5da9d70ccef2f5abd0d0cc', '109.106.252.101', 1645093843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353039333834333b),
('713f44e1db6c1f354c03936f4f61cb1425a90677', '109.106.252.101', 1645092046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353039323034363b),
('11bbe2d3903ccd4d902ceb2f629b5f7c850a25cd', '109.106.252.101', 1645092046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353039323034363b7265717565737465645f706167657c733a353a2261646d696e223b),
('2d5a5aa3f06463d0a97fa690235a738979afcf83', '109.106.252.101', 1645092046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353039323034363b),
('606acb59b4e04d292311656a17f6735a29131344', '109.106.252.101', 1645090243, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353039303234333b),
('731ef47e66a21a88b6fa916fbc36e76b7ab3400d', '109.106.252.101', 1645088442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353038383434323b7265717565737465645f706167657c733a353a2261646d696e223b),
('b9a2cb229505ffca4c72c49abc47eaa0600bb454', '109.106.252.101', 1645088442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353038383434323b),
('54c1eb577958df8b53b0dbe8aa13b5e5746a1a34', '109.106.252.101', 1645090243, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353039303234333b),
('6b7435c885a4ea37ae57b7adae05e8d4b971bce9', '109.106.252.101', 1645090243, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353039303234333b7265717565737465645f706167657c733a353a2261646d696e223b),
('a9c769aa8298c3ed2899840b0ec3159dd6787046', '109.106.252.101', 1645088442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353038383434323b),
('b22f1d8fdcc28d608153f47d2bab8956f6f6dcb2', '109.106.252.101', 1645086640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353038363634303b),
('21cdc7a4266a78a62c5c2513411dc46f55eef69b', '109.106.252.101', 1645086640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353038363634303b7265717565737465645f706167657c733a353a2261646d696e223b),
('46b52fb9f6b5350293b72fa4d0255a2434d7eafa', '109.106.252.101', 1645086639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353038363633393b),
('b44fbe1d0d3312cb88245bdbe27d80de5a7713b6', '109.106.252.101', 1645084840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353038343834303b),
('11e2923ca5baf4e26819acddbbaec15aaf2b4c59', '109.106.252.101', 1645083041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353038333034313b7265717565737465645f706167657c733a353a2261646d696e223b),
('01266233d116012280bafd2629e670aff8530ac9', '109.106.252.101', 1645083041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353038333034313b),
('de5d22a217e210b5ebc3b1ddad9b89176c9b8637', '109.106.252.101', 1645084840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353038343834303b),
('0067a02ae1773ba89a73cce735e78643ddca6664', '109.106.252.101', 1645084840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353038343834303b7265717565737465645f706167657c733a353a2261646d696e223b),
('faaf2000c22b4c10a042dc91b0b0042c34f1a602', '109.106.252.101', 1645083041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353038333034313b),
('e40f0247b8254a79d040d660a64d5bfd3f1251f4', '109.106.252.101', 1645081242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353038313234323b),
('b86ac611007cdc933284071d7e731bf192000aa7', '109.106.252.101', 1645079442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037393434323b7265717565737465645f706167657c733a353a2261646d696e223b),
('25c02ba8f93fdbff8ecdf4b9cbbea8de01c4edad', '109.106.252.101', 1645079442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037393434323b),
('9f80fd9efd3ec55a2150f6414fd864e489fd2882', '109.106.252.101', 1645081242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353038313234323b),
('e603440f9f07a92a1ca41cf4f6808c139843f568', '109.106.252.101', 1645081242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353038313234323b7265717565737465645f706167657c733a353a2261646d696e223b),
('7796024e81fe838ffb1f06b4baf9f2281d28abd8', '109.106.252.101', 1645077640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037373634303b),
('036a1974637f66a649abad2cc421fc4b39320a2c', '109.106.252.101', 1645077640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037373634303b7265717565737465645f706167657c733a353a2261646d696e223b),
('dd8a27af7e2049d851fbd867392ddf753d5190fc', '109.106.252.101', 1645077640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037373634303b),
('23878838c14a42a02270ea8ba398848f58519d51', '109.106.252.101', 1645079442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037393434323b),
('fdcde794d4beac1f92cccaebaecfe870f72b25a8', '109.106.252.101', 1645075837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037353833373b),
('a83d64e920f56c7bd159ec45e91bb9131aede214', '109.106.252.101', 1645075837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037353833373b7265717565737465645f706167657c733a353a2261646d696e223b),
('e7bf1f4a1f7b4f3e04b11c490d3485fe52a3244e', '109.106.252.101', 1645075838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037353833373b),
('1d0a419df9e2a5b7d5e92d13d7ea49a251d9f2cb', '51.158.103.247', 1645077360, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037373336303b),
('3dd3ee41d825acd0a3bc12a5955fdbac2ce82719', '109.106.252.101', 1645074044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037343034343b),
('889f8944ab89cb4c79959265e58b4a6a02fc1383', '109.106.252.101', 1645072241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037323234313b),
('b5f35ebc810b9c83cdb623cdcf45019ea1bdee80', '109.106.252.101', 1645074044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037343034343b),
('0308a586ff3c6140932cabb9e782728583ccb663', '109.106.252.101', 1645074044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037343034343b7265717565737465645f706167657c733a353a2261646d696e223b),
('71cb262d7144eb9818691fa1cc2d7effc5c0576c', '109.106.252.101', 1645070443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037303434333b7265717565737465645f706167657c733a353a2261646d696e223b),
('127ad3f9800616d61f7e99cf842431e8c8b1e2d4', '109.106.252.101', 1645070443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037303434333b),
('81aaf96832041a374bf3e134b4f9ae6776acf255', '109.106.252.101', 1645072241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037323234313b),
('58330a322267436abe92c52c67f28f250a619fb6', '109.106.252.101', 1645072241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037323234313b7265717565737465645f706167657c733a353a2261646d696e223b),
('410633008eee312ea8da71e2cf8dc6d7ae414d18', '109.106.252.101', 1645070443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353037303434333b),
('edca6453af68886b85e4a407f35728a2c5306fbe', '109.106.252.101', 1645068639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353036383633393b),
('5c5b7bfa8249697a7344f4fcb8d6a1f25bcee1ee', '109.106.252.101', 1645068639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353036383633393b7265717565737465645f706167657c733a353a2261646d696e223b),
('b31783bbb8c969dbb44f23c823c372ff8f538039', '109.106.252.101', 1645066845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353036363834353b),
('2c8e7eb48d1913f989957c46ff701d5627f784cc', '109.106.252.101', 1645066845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353036363834353b7265717565737465645f706167657c733a353a2261646d696e223b),
('5a4c439dbdd48008c3840f24ffc2e9407c729064', '109.106.252.101', 1645066845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353036363834353b),
('59137fe8925e5c6650a935ac308d4e1a84dffad0', '109.106.252.101', 1645068639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353036383633393b),
('50b93eecb878cf5aa458b289a0f987fda3d56f36', '112.215.235.202', 1645065704, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353036353636323b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a373a226d616e616a6572223b757365726e616d657c733a373a226d616e616a6572223b656d61696c7c733a31393a226d616e616a657240776d6561742e73746f7265223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363434393832303538223b6c6173745f69707c733a31353a223131322e3231352e3233382e313033223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6d6573736167657c733a32373a223c703e416e646120626572686173696c206d6173756b2e3c2f703e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('d2e2010f167e62c47fa2df57427f327a38809e1c', '109.106.252.101', 1645065041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353036353034313b),
('cd3d3d10fc3c512df21c5049bb94bd1e638ce0f0', '109.106.252.101', 1645065041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353036353034313b7265717565737465645f706167657c733a353a2261646d696e223b),
('05a643a2939117516260d6422f65ceea37b8c359', '109.106.252.101', 1645063248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353036333234383b),
('57cf278f9e1e566a7ddcfb3dce3c30ceb35f805e', '109.106.252.101', 1645063248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353036333234383b7265717565737465645f706167657c733a353a2261646d696e223b),
('3fece05ea9e5115fbc92cd70b01b4dcee78c6b3e', '109.106.252.101', 1645063248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353036333234383b),
('a58a6b9ffd80c11f97f91f323a280ce5c7177fc6', '109.106.252.101', 1645065041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353036353034313b),
('1cd44461fbb6e0b641c198a7c677cb16be1442ef', '109.106.252.101', 1645061439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353036313433393b),
('03f811f31e3f1e54480b7400a720956ca219664c', '109.106.252.101', 1645061439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353036313433393b7265717565737465645f706167657c733a353a2261646d696e223b),
('866544f6400d6d27baa0bf0db6d8c8876efe3908', '109.106.252.101', 1645061439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353036313433393b),
('557dd6c9d18b49f53f90827805a4e7bb1af40daa', '109.106.252.101', 1645059644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035393634343b),
('db6904669faf6066fe867d58e4d054d78f457dfc', '109.106.252.101', 1645059644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035393634343b7265717565737465645f706167657c733a353a2261646d696e223b),
('d37b69f7d41c49a28343c3599cea3e29647526c9', '109.106.252.101', 1645059644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035393634343b),
('1c6e85154bfe571c383bf5943190f8a8a8a31d48', '109.106.252.101', 1645057840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035373834303b),
('8cae36ffa64fd6a13d0aa61b56912a8caa0b09b7', '109.106.252.101', 1645056040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035363034303b7265717565737465645f706167657c733a353a2261646d696e223b),
('f0f8f624050f0909e44f4d5a49b33976e0b935b2', '109.106.252.101', 1645056040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035363034303b),
('85b15870e40001f0890abcc1e7d42376e4664b61', '109.106.252.101', 1645057840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035373834303b),
('bda16a304965223778b5139d258cffab48c481e5', '109.106.252.101', 1645057840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035373834303b7265717565737465645f706167657c733a353a2261646d696e223b),
('9cc18d20487392d5c32b70efb18bb566020b9f1f', '109.106.252.101', 1645056040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035363034303b),
('602d79a57ee6785e60082e917f03467895068262', '109.106.252.101', 1645054239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035343233393b),
('a319a86a5e77e7c47ab242c69f40c6cd60d9ee29', '109.106.252.101', 1645054239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035343233393b7265717565737465645f706167657c733a353a2261646d696e223b),
('ed53d513247beea08976ac45a7fd0cedf5a8c719', '109.106.252.101', 1645052445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035323434353b),
('8ac6cd7b5d38c7287bfd961e7f4d79ce6ea508cd', '109.106.252.101', 1645052445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035323434353b7265717565737465645f706167657c733a353a2261646d696e223b),
('3f26697813b4d00cd130be5e3ccc12122e21d75e', '109.106.252.101', 1645052445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035323434353b),
('989a6fa1ac6544dc30aaf4b75b7ac9094b40f894', '109.106.252.101', 1645054239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035343233393b),
('898ce87d48c24edaaa204994772409b4c3cef463', '109.106.252.101', 1645050639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035303633393b),
('ff203431baad34e950448032e679cd6704709ea4', '109.106.252.101', 1645050639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035303633393b7265717565737465645f706167657c733a353a2261646d696e223b),
('c77057f16ebb1c634f4b75bae2da2fbf5cfedfad', '109.106.252.101', 1645050639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353035303633393b),
('be7b5c070ed4897f9aff7fd6c1995919377c4292', '109.106.252.101', 1645048843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353034383834333b),
('58ebdb89f7e309af3dad3379c50cd8015890da02', '109.106.252.101', 1645048843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353034383834333b7265717565737465645f706167657c733a353a2261646d696e223b),
('dd1072f3855d5defb3db6307199f57c30494c782', '109.106.252.101', 1645048843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353034383834333b),
('ef14d1017001122f72838880b1f23b2803e6f0b4', '109.106.252.101', 1645047037, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353034373033373b),
('02a44401fee969bb5fe16338ba72d24261bea305', '109.106.252.101', 1645047037, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353034373033373b7265717565737465645f706167657c733a353a2261646d696e223b),
('722db2bbec8381024674265af8badef65d0e91f1', '109.106.252.101', 1645047037, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353034373033373b),
('2f1ebca1cdd35b54de537e1e3cb65e193d04aab7', '109.106.252.101', 1645045241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353034353234313b),
('0f07e9a910b5c39f2863a5622cee94f383c8c644', '109.106.252.101', 1645045241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353034353234313b7265717565737465645f706167657c733a353a2261646d696e223b),
('75d40ff568a786acbe33d89ec0584170f043cb1c', '109.106.252.101', 1645045241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353034353234313b),
('2150053bc09cec8e50e77f83fef2ebe132189580', '109.106.252.101', 1645043439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353034333433393b),
('7328a1f3feb3637a5e72500e5c4de47ceba015e9', '109.106.252.101', 1645043439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353034333433393b7265717565737465645f706167657c733a353a2261646d696e223b),
('83cc1c25a8a53f3b7b76a484136c9f4e19d8f815', '109.106.252.101', 1645043439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353034333433393b),
('37e45ff750b1221e45754f79a39749ba1bd27907', '109.106.252.101', 1645041641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353034313634313b),
('d037d6c3358b10a3db71637e588a01f86fc9d903', '109.106.252.101', 1645041641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353034313634313b7265717565737465645f706167657c733a353a2261646d696e223b),
('656c0d7e06bffcbda541d51a780052f7d6cd7fd0', '109.106.252.101', 1645041641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353034313634313b),
('69bee09726c6547c1c099df8296d142447715341', '109.106.252.101', 1645039840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033393834303b),
('2867310fc5d4af895a06ddf85cf8060be0ecce43', '109.106.252.101', 1645039840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033393834303b7265717565737465645f706167657c733a353a2261646d696e223b),
('1171321e9a32a8763ac384524499dfa5c3acd3e2', '109.106.252.101', 1645039840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033393834303b),
('83e564867b1526397b0b5a83f0cb0a2d10deb56a', '109.106.252.101', 1645038043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033383034333b),
('d1c717113238ed639f0c0f3358b169c90971fd5f', '109.106.252.101', 1645038043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033383034333b7265717565737465645f706167657c733a353a2261646d696e223b),
('31c38e8dcf73d47df5b40a22b581879908a5ed4c', '109.106.252.101', 1645038043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033383034333b),
('9253ad9cad7973a876ff96301ddb4cbbe3fce8d3', '109.106.252.101', 1645036238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033363233383b),
('80267ed6991750c49e9fc3b487ec107cf2ef0ad5', '109.106.252.101', 1645036238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033363233383b7265717565737465645f706167657c733a353a2261646d696e223b),
('9bac098255328803da59be859631e44433c67c5b', '109.106.252.101', 1645036238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033363233383b),
('a10c60290402eb85a53329def4285b85f8889970', '109.106.252.101', 1645034444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033343434343b),
('74db134a75e531d1fcff06840d18c2311786a93c', '109.106.252.101', 1645034444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033343434343b7265717565737465645f706167657c733a353a2261646d696e223b),
('6a5d089553ca2a8d4d349fc656d01f5897c24188', '109.106.252.101', 1645034444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033343434343b),
('306ddb482efbd6acaa0d6a9db86e1a9495b17b22', '109.106.252.101', 1645032639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033323633393b),
('5a50a3cd3d9042c4b8acf315ca63beeb2c990dd9', '109.106.252.101', 1645032639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033323633393b7265717565737465645f706167657c733a353a2261646d696e223b),
('65010db12cf51d373f1e383bfdbb18cb439c6d25', '109.106.252.101', 1645032639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033323633393b),
('12cb0acc9b64d4389d389d6e604fe91a996402fe', '109.106.252.101', 1645030841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033303834313b),
('c1568175f533a9bc05e6a310f66f9bb061c8411c', '109.106.252.101', 1645030841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033303834313b7265717565737465645f706167657c733a353a2261646d696e223b),
('a016fd72360a17feb90cf6f156d48a5f03361437', '109.106.252.101', 1645030841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353033303834313b),
('1210297d06530f0bd70f13c4c3dc43e9f4e6a8ee', '109.106.252.101', 1645029040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032393034303b),
('a9c792a42d4dfc51d8cb9c9a233b0cc2768be47e', '109.106.252.101', 1645029040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032393034303b7265717565737465645f706167657c733a353a2261646d696e223b),
('f4a6e40c2e32d2f68b3ba9bb28b341219d4b97af', '109.106.252.101', 1645029040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032393034303b),
('abbb7a23945592f8bb68c8e1cc639409ea3a2990', '109.106.252.101', 1645027247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032373234373b),
('349c58c58ff9c0c6da455b2a747d6d1db37e85c9', '109.106.252.101', 1645027247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032373234373b7265717565737465645f706167657c733a353a2261646d696e223b),
('ae989c04e72efa76f460d1a8cac1d679c8435607', '109.106.252.101', 1645027247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032373234373b);
INSERT INTO `sma_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('c5b7c62850d5544edfeac74b0eda7f4ad7a62502', '109.106.252.101', 1645025439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032353433393b),
('32dac26cf19f1f940de41be8d814f8d3ef32a768', '109.106.252.101', 1645025439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032353433393b7265717565737465645f706167657c733a353a2261646d696e223b),
('8e8dcbde065dd6c12ba7b6b160cc15fb4e6f7f69', '109.106.252.101', 1645025439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032353433393b),
('0ae8446c296b740901587c035bbce91ba7e44b50', '109.106.252.101', 1645023642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032333634323b),
('d13751200542586ce18f571f6a28650f05e88d8a', '109.106.252.101', 1645023642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032333634323b7265717565737465645f706167657c733a353a2261646d696e223b),
('d2d7032155beffe847ad2c69f38e7c50175b595f', '109.106.252.101', 1645023642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032333634323b),
('2e96b67ad70cbc732200549d63824dbb274374f7', '109.106.252.101', 1645021842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032313834323b),
('6b422cf4c649db969a9cc1ea59120394593650d1', '109.106.252.101', 1645021842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032313834323b7265717565737465645f706167657c733a353a2261646d696e223b),
('3045a5dd72935484050646916e0fe41bc636e9ad', '109.106.252.101', 1645021842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032313834323b),
('cbf337bf3b7cdb78ea414c6a7489f98776e33287', '109.106.252.101', 1645020040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032303034303b),
('40b6c4358cb5c6607e743f8b6fd75f54baaf61b1', '109.106.252.101', 1645020040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032303034303b7265717565737465645f706167657c733a353a2261646d696e223b),
('7463187c2ddde97e54946c78993574614222de62', '109.106.252.101', 1645020040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353032303034303b),
('28c811bae357c3bc2e427a61d2b758ba03397cc3', '109.106.252.101', 1645018242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353031383234323b),
('eb9d8b989642c20b74bb454b4323d0cf6c3581ba', '109.106.252.101', 1645018242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353031383234323b7265717565737465645f706167657c733a353a2261646d696e223b),
('cdbff5ee09cd0e06131e636987f921bbf0e95429', '109.106.252.101', 1645018242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353031383234313b),
('fa0b506c7cb268761733ba4beaf8770bc54557ea', '109.106.252.101', 1645016445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353031363434353b),
('e07a364c204f81a67b2577bdb52d440dfcfd8921', '109.106.252.101', 1645016445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353031363434353b7265717565737465645f706167657c733a353a2261646d696e223b),
('e6510b07294a39a8859306fed7d603ff3c2c39ea', '109.106.252.101', 1645016445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353031363434353b),
('a79c78c78e195d30cd6471fddbd989b82d2da6e6', '109.106.252.101', 1645014638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353031343633383b),
('4637cc924770b861aeb13022a2913f182f53426c', '109.106.252.101', 1645014638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353031343633383b7265717565737465645f706167657c733a353a2261646d696e223b),
('807ba7370936b1d723daded07bf0b54429fc999f', '109.106.252.101', 1645014638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353031343633383b),
('267d16d7b3c4751200cf3afcd0cb58394ea9b4ed', '109.106.252.101', 1645012847, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353031323834373b),
('579bdf567202c6a14d9cd2758cf0c9fdd2f7a319', '109.106.252.101', 1645012847, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353031323834373b7265717565737465645f706167657c733a353a2261646d696e223b),
('4df2608a8bdae2890e3e4c8647365de071739385', '109.106.252.101', 1645012847, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353031323834373b),
('850c7759b4a9be489dc493524d8c7f5e3e53a3a9', '109.106.252.101', 1645011042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353031313034323b),
('8b91f4dc601dba89a65608167210e380cd16ee13', '109.106.252.101', 1645011042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353031313034323b7265717565737465645f706167657c733a353a2261646d696e223b),
('3de35b641aebf0e47084cbc24e5ca7cda683494f', '109.106.252.101', 1645011041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353031313034313b),
('dde45c6aee03170249b32608d7735cf65384d1a1', '109.106.252.101', 1645009240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353030393234303b),
('bb9cf3c431e5d599af2ad13c00a8668950c8d3ea', '109.106.252.101', 1645009240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353030393234303b7265717565737465645f706167657c733a353a2261646d696e223b),
('37b70b67c7cfdcc7d211018f45b4971ba3fd84a1', '109.106.252.101', 1645009240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353030393234303b),
('bb9913019f1718b3127ecdf18b3d5e2bf60c7f0a', '109.106.252.101', 1645007439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353030373433393b),
('bdf4d1006aa52cec6d28da561fa17df2565e55bf', '109.106.252.101', 1645007439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353030373433393b7265717565737465645f706167657c733a353a2261646d696e223b),
('a1395d952df8dab769f3bf33240651164de3f482', '109.106.252.101', 1645007439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353030373433393b),
('9d33f3217be1fe892e476f187dd789acab05e9d6', '109.106.252.101', 1645005639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353030353633393b),
('a302a5cf56ee7a48a67fdee7eb476e54dc0f8e30', '109.106.252.101', 1645005639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353030353633393b7265717565737465645f706167657c733a353a2261646d696e223b),
('588acf7ad58ddff6fab20136d35e38e25c149f1d', '109.106.252.101', 1645005639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353030353633393b),
('dcce01aefb601f499cadc822d9e6e5e266204201', '109.106.252.101', 1645003847, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353030333834373b),
('106a23077be8e73debb9b1ddaa49e6139ac83d47', '109.106.252.101', 1645003846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353030333834363b7265717565737465645f706167657c733a353a2261646d696e223b),
('e763817662c062205ca55ac24e688df6221203eb', '109.106.252.101', 1645003846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353030333834363b),
('d95fbd8619af168274b61545a02f7b77afcabdc3', '109.106.252.101', 1645002042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353030323034323b),
('3e41e4727c3b24c45b41be8edaffc43b56b99892', '109.106.252.101', 1645002042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353030323034323b7265717565737465645f706167657c733a353a2261646d696e223b),
('df37982fecf4510be2351dac94ac09f32b66db74', '109.106.252.101', 1645002041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353030323034313b),
('478b33b598496bac0c16aacdebf0882461797606', '109.106.252.101', 1645000241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353030303234313b),
('bfea32c7b1790568aa2c3f76a97ca051130c6d3e', '109.106.252.101', 1645000241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353030303234313b7265717565737465645f706167657c733a353a2261646d696e223b),
('6dfce2abf16689e33f37d0f05f9d819a7c9ea19f', '109.106.252.101', 1645000241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634353030303234313b),
('018872d950bd8aa5abc97217124ccb43a80bd70e', '109.106.252.101', 1644998446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343939383434363b),
('8ce08e1c9e4633a87b2617e03645cb2c38db827b', '109.106.252.101', 1644998446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343939383434363b7265717565737465645f706167657c733a353a2261646d696e223b),
('891a5db1a6348405071bb9bb1aa691e2dc89d6f1', '109.106.252.101', 1644998446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343939383434363b),
('eb9f79d529b2dccfd6c0cbef7030b3269d03621c', '109.106.252.101', 1644996644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343939363634343b),
('93f2cd5b503f3bc8d0f2ac1bc21648a44acda63d', '109.106.252.101', 1644996644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343939363634343b7265717565737465645f706167657c733a353a2261646d696e223b),
('6c5af7592e82407582b8489395d0aa7b1e2dde81', '109.106.252.101', 1644996644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343939363634343b),
('439d43d7a363b3786a23eda6c44f191969029ce5', '109.106.252.101', 1644994842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343939343834323b),
('5df315018e7aa64aab05be1a0ee15453f06c25d4', '109.106.252.101', 1644994842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343939343834323b7265717565737465645f706167657c733a353a2261646d696e223b),
('2a663eee863968eea9df4119b502cfbe017e991f', '109.106.252.101', 1644994842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343939343834323b),
('8802ed6a471aff1967aa35838634eb276e60213c', '109.106.252.101', 1644993043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343939333034333b),
('a90f2af199a9c68f5ce5bf4066aec80632a2884e', '109.106.252.101', 1644993043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343939333034333b7265717565737465645f706167657c733a353a2261646d696e223b),
('1c9746d52d18fd25e11dd41cb2bdfe948027b467', '109.106.252.101', 1644993043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343939333034333b),
('929416827b50fe8a55640164ad24dffc38ce89ab', '109.106.252.101', 1644991239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343939313233393b),
('32cf490127988ecd9f36c9ef40fcfe269a7771ef', '109.106.252.101', 1644991239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343939313233393b7265717565737465645f706167657c733a353a2261646d696e223b),
('041348a39135ffdc9a54c714c7b4cf2b79c8c010', '140.213.5.155', 1644983180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343938333138303b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a373a226d616e616a6572223b757365726e616d657c733a373a226d616e616a6572223b656d61696c7c733a31393a226d616e616a657240776d6561742e73746f7265223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363434393034383038223b6c6173745f69707c733a31343a223138302e3235322e3131322e3838223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('5d1bf0ba47339ddb612fcf44e73632b22f0715e3', '109.106.252.101', 1644991239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343939313233393b),
('a3fa13c09ef3323e8be41476b8493d1637c6c161', '109.106.252.101', 1644989440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343938393434303b),
('41f8fb19fc9fceff74db567b5ebc6b1db65d1bc5', '109.106.252.101', 1644989440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343938393434303b7265717565737465645f706167657c733a353a2261646d696e223b),
('dd90710937a5588299b9dec7a60894d3ab0cca9e', '112.215.238.103', 1644983353, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343938333138303b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a373a226d616e616a6572223b757365726e616d657c733a373a226d616e616a6572223b656d61696c7c733a31393a226d616e616a657240776d6561742e73746f7265223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363434393034383038223b6c6173745f69707c733a31343a223138302e3235322e3131322e3838223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('efe559b8335e82fe3dd3b0266eca4d29283a309b', '109.106.252.101', 1644984040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343938343034303b),
('54c27883f3e8876f6cd21850aac9f3f589c39584', '109.106.252.101', 1644984040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343938343034303b7265717565737465645f706167657c733a353a2261646d696e223b),
('b42a19e9c5c41e762bae74c1f712b01ce097701e', '109.106.252.101', 1644984040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343938343034303b),
('f1b95d59f1cda5665048a3f78f0e249141446c06', '109.106.252.101', 1644985841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343938353834313b),
('606c3791b00e09674fc8d8210911a746f6871ece', '109.106.252.101', 1644985841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343938353834313b7265717565737465645f706167657c733a353a2261646d696e223b),
('10881767cadc80fbf3437fcbb11b93edd674fecb', '109.106.252.101', 1644985841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343938353834313b),
('562f4fb65d91e119d03333ea37dc443516d6d873', '109.106.252.101', 1644987645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343938373634353b),
('0c8b45ec49b55d8f20ff3281e2fb1e11aa15332f', '109.106.252.101', 1644987645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343938373634353b7265717565737465645f706167657c733a353a2261646d696e223b),
('5432e041773a15f7b76d5bd51ba556e5b04a5997', '109.106.252.101', 1644987645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343938373634353b),
('ee3f9acc3e276a3124161aa637b2ab9ce161c8b4', '109.106.252.101', 1644989440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634343938393434303b);

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
(1, 'imageedit_3_2567267275.png', 'logo.png', 'WMEAT', 'indonesian', 1, 0, 'IDR', 0, 10, '2.0.0', 0, 5, 'SO', 'PR', 'PO', 'TR', 'DO', 'SI', 'SR', 'RP', '', 1, 'default', 1, 1, 1, 1, 0, 0, 0, 1, 0, 'Asia/Jakarta', 1080, 1080, 150, 150, 1, 0, 0, 0, NULL, 'smtp', '/usr/sbin/sendmail', 'srv128.niagahoster.com', 'info@wmeat.store', 'WIDODO2019', '465', 'ssl', NULL, 1, 'info@wmeat.store', 0, 4, 1, 0, 2, 1, 1, 1, 0, 0, ',', '.', 0, 1, 'nulled', 'nulled', 0, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 'Rp', 0, '-', 0, 3, 1, 'PI', 1000, '', 1, 0, 'AN', 'dompdf');

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
(1, 0x3130332e36362e3139382e3432, 0x0000, 'owner', 'a1a91380a8bf75d6792ebb3769baa14487f6b774', NULL, 'owner@tecdiary.com', NULL, NULL, NULL, '094f1a95d80432cae8c46f211e2dbd68cc70dab2', 1351661704, 1644289756, 1, 'Owner', 'Owner', 'WTouch', '012345678', NULL, 'male', 1, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0),
(4, 0x3130332e36362e3139382e3432, 0x31332e31322e31302e31, 'sales', 'b25cad49eaca2f14789cafa0f9a80760bf0f6532', NULL, 'wmeat.shop@gmail.com', NULL, NULL, NULL, NULL, 1588179657, 1588910176, 1, 'sales', 'WMeat', 'WMeat', '123', NULL, 'male', 7, 1, 6, NULL, 1, 1, 0, 0, 0, 0),
(6, 0x3131322e3231352e3137312e3538, 0x3130332e36362e3139382e3432, 'manajer', '65cb0b47dab2d5fa1c1a581c697b7575cb7e2f88', NULL, 'manajer@wmeat.store', NULL, NULL, NULL, NULL, 1588574208, 1645065704, 1, 'manajer', 'wmeat', 'WMEAT', '08111109554', NULL, 'male', 1, 1, 1, NULL, 0, 0, 0, 0, 1, 1),
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
(351, 6, NULL, 0x3131322e3231352e3137312e3538, 'manajer', '2022-02-17 02:41:44');

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
(1, 'WHI', 'WMeat Store', '<p>The Beige No B6 Rt8/RW 2 Cilangkap Kec CIpayung Kota Jakarta Timur</p>', NULL, '0817109554', 'wmeat.official@gmail.com', 0);

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
(114, 66, 1, 11.0000, NULL, 110702.3412),
(113, 68, 1, 12.0000, NULL, 13125.0000),
(112, 69, 1, 8.0000, NULL, 65000.0000),
(111, 65, 1, 2.0000, NULL, 0.0000),
(110, 60, 1, 12.0000, NULL, 29428.3414),
(109, 59, 1, 13.0000, NULL, -78403.3614),
(108, 58, 1, 0.0000, NULL, 0.0000),
(107, 86, 1, 1.0000, NULL, 50000.0000),
(106, 55, 1, 0.0000, NULL, 0.0000),
(105, 52, 1, 9.0000, NULL, 79169.5147),
(104, 51, 1, 11.0000, NULL, 44000.0000),
(103, 50, 1, 7.0000, NULL, 29230.7692),
(102, 49, 1, 11.0000, NULL, 121118.0124),
(101, 46, 1, 0.0000, NULL, 0.0000),
(100, 45, 1, 0.0000, NULL, 0.0000),
(99, 40, 1, 12.0000, NULL, 125000.0000),
(98, 39, 1, 8.0000, NULL, 68000.0000),
(97, 38, 1, 6.0000, NULL, 140000.0000),
(96, 37, 1, 23.0000, NULL, 75000.0000),
(95, 36, 1, 21.0000, NULL, 120000.0000),
(94, 78, 1, 9.0000, NULL, 63500.0000),
(93, 79, 1, 11.0000, NULL, 126818.1818),
(92, 80, 1, 9.0000, NULL, 95000.0000),
(91, 91, 1, 0.0000, NULL, 95000.0000),
(90, 90, 1, 36.0000, NULL, 85249.1695),
(89, 89, 1, 11.0000, NULL, 82000.0000),
(88, 77, 1, 20.0000, NULL, 70000.0000),
(87, 76, 1, 5.0000, NULL, 37000.0000),
(86, 88, 1, 5.0000, NULL, 34000.0000),
(85, 87, 1, 4.0000, NULL, 25000.0000),
(84, 75, 1, 8.0000, NULL, 95000.0000),
(83, 74, 1, 4.0000, NULL, 44000.0000),
(82, 73, 1, 12.0000, NULL, 83358.9744),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `sma_costing`
--
ALTER TABLE `sma_costing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=720;

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
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `sma_purchase_items`
--
ALTER TABLE `sma_purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=430;

--
-- AUTO_INCREMENT for table `sma_quotes`
--
ALTER TABLE `sma_quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_quote_items`
--
ALTER TABLE `sma_quote_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=682;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

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
