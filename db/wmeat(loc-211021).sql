-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2021 at 05:05 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wmeat`
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
(2, '2021-10-07 01:51:00', '2021/10/0002', 1, '', NULL, 6, NULL, NULL, NULL),
(3, '2021-10-07 01:53:00', '2021/10/0003', 1, '', NULL, 6, NULL, NULL, NULL),
(4, '2021-10-07 01:54:00', '2021/10/0004', 1, '', NULL, 6, NULL, NULL, NULL),
(5, '2021-10-07 01:56:00', '2021/10/0005', 1, '', NULL, 6, NULL, NULL, NULL),
(6, '2021-10-07 02:36:00', '2021/10/0006', 1, '', NULL, 6, NULL, NULL, NULL),
(7, '2021-10-07 02:37:00', '2021/10/0007', 1, '', NULL, 6, NULL, NULL, NULL),
(8, '2021-10-07 02:40:00', '2021/10/0008', 1, '', NULL, 6, NULL, NULL, NULL),
(9, '2021-10-07 02:41:00', '2021/10/0009', 1, '', NULL, 6, NULL, NULL, NULL),
(10, '2021-10-07 02:44:00', '2021/10/0010', 1, '', NULL, 6, NULL, NULL, NULL),
(11, '2021-10-07 02:45:00', '2021/10/0011', 1, '', NULL, 6, NULL, NULL, NULL),
(12, '2021-10-07 02:46:00', '2021/10/0012', 1, '', NULL, 6, NULL, NULL, NULL),
(13, '2021-10-07 03:02:00', '2021/10/0013', 1, '', NULL, 6, NULL, NULL, NULL),
(14, '2021-10-07 03:03:00', '2021/10/0014', 1, '', NULL, 6, NULL, NULL, NULL),
(15, '2021-10-07 03:04:00', '2021/10/0015', 1, '', NULL, 6, NULL, NULL, NULL),
(16, '2021-10-07 03:16:00', '2021/10/0016', 1, '', NULL, 6, NULL, NULL, NULL),
(17, '2021-10-07 03:17:00', '2021/10/0017', 1, '', NULL, 6, NULL, NULL, NULL),
(18, '2021-10-07 03:18:00', '2021/10/0018', 1, '', NULL, 6, NULL, NULL, NULL),
(19, '2021-10-07 03:19:00', '2021/10/0019', 1, '', NULL, 6, NULL, NULL, NULL),
(20, '2021-10-07 03:20:00', '2021/10/0020', 1, '', NULL, 6, NULL, NULL, NULL),
(21, '2021-10-07 03:21:00', '2021/10/0021', 1, '', NULL, 6, NULL, NULL, NULL),
(22, '2021-10-07 03:27:00', '2021/10/0022', 1, '', NULL, 6, NULL, NULL, NULL),
(23, '2021-10-07 03:29:00', '2021/10/0023', 1, '', NULL, 6, NULL, NULL, NULL),
(24, '2021-10-07 03:30:00', '2021/10/0024', 1, '', NULL, 6, NULL, NULL, NULL),
(25, '2021-10-07 03:31:00', '2021/10/0025', 1, '', NULL, 6, NULL, NULL, NULL),
(26, '2021-10-07 03:32:00', '2021/10/0026', 1, '', NULL, 6, NULL, NULL, NULL),
(27, '2021-10-07 03:32:00', '2021/10/0027', 1, '', NULL, 6, NULL, NULL, NULL),
(28, '2021-10-07 03:33:00', '2021/10/0028', 1, '', NULL, 6, NULL, NULL, NULL),
(29, '2021-10-07 03:33:00', '2021/10/0029', 1, '', NULL, 6, NULL, NULL, NULL),
(30, '2021-10-07 03:34:00', '2021/10/0030', 1, '', NULL, 6, NULL, NULL, NULL),
(31, '2021-10-07 03:34:00', '2021/10/0031', 1, '', NULL, 6, NULL, NULL, NULL),
(32, '2021-10-07 03:35:00', '2021/10/0032', 1, '', NULL, 6, NULL, NULL, NULL),
(33, '2021-10-07 03:35:00', '2021/10/0033', 1, '', NULL, 6, NULL, NULL, NULL),
(34, '2021-10-07 07:38:00', '2021/10/0034', 1, '', NULL, 6, NULL, NULL, NULL);

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
(6, 2, 70, NULL, '15.0000', 1, '', 'addition'),
(7, 3, 71, NULL, '5.0000', 1, '', 'addition'),
(8, 4, 72, NULL, '7.0000', 1, '', 'addition'),
(9, 5, 73, NULL, '12.0000', 1, '', 'addition'),
(10, 6, 74, NULL, '11.0000', 1, '', 'addition'),
(11, 7, 75, NULL, '10.0000', 1, '', 'addition'),
(12, 8, 76, NULL, '15.0000', 1, '', 'addition'),
(13, 9, 77, NULL, '9.0000', 1, '', 'addition'),
(14, 10, 80, NULL, '11.0000', 1, '', 'addition'),
(15, 11, 79, NULL, '4.0000', 1, '', 'addition'),
(16, 12, 78, NULL, '13.0000', 1, '', 'addition'),
(17, 13, 36, NULL, '9.0000', 1, '', 'addition'),
(18, 14, 37, NULL, '16.0000', 1, '', 'addition'),
(19, 15, 38, NULL, '10.0000', 1, '', 'addition'),
(20, 16, 40, NULL, '9.0000', 1, '', 'addition'),
(21, 17, 39, NULL, '12.0000', 1, '', 'addition'),
(22, 18, 45, NULL, '5.0000', 1, '', 'addition'),
(23, 19, 46, NULL, '5.0000', 1, '', 'addition'),
(24, 20, 49, NULL, '8.0000', 1, '', 'addition'),
(25, 21, 50, NULL, '8.0000', 1, '', 'addition'),
(26, 22, 51, NULL, '8.0000', 1, '', 'addition'),
(27, 23, 52, NULL, '17.0000', 1, '', 'addition'),
(28, 24, 55, NULL, '11.0000', 1, '', 'addition'),
(29, 25, 56, NULL, '12.0000', 1, '', 'addition'),
(30, 26, 57, NULL, '1.0000', 1, '', 'addition'),
(31, 27, 58, NULL, '8.0000', 1, '', 'addition'),
(32, 28, 59, NULL, '8.0000', 1, '', 'addition'),
(33, 29, 60, NULL, '11.0000', 1, '', 'addition'),
(34, 30, 65, NULL, '17.0000', 1, '', 'addition'),
(35, 31, 69, NULL, '4.0000', 1, '', 'addition'),
(36, 32, 68, NULL, '16.0000', 1, '', 'addition'),
(37, 33, 66, NULL, '12.0000', 1, '', 'addition'),
(38, 34, 70, NULL, '15.0000', 1, '', 'subtraction');

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
(49, 3, 'customer', 1, 'General', 'BAYU', 'PT ABC', '', 'graha widodo', 'jakarta', 'DKI JAKARTA', '', '', '081212345678', 'bayu@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(50, 3, 'customer', 1, 'General', 'BAYU', 'BAYU', '', 'graha widodo', 'jakarta', 'DKI JAKARTA', '', '', '081212345678', 'bayu@admin.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(47, 3, 'customer', 6, 'Ecommerce', 'tokped', 'tokped', '', 'tokped', 'jakarta', '', '', '', '123456', 'tokped@admin.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 2, 'Ecommerce', ''),
(48, 4, 'supplier', NULL, NULL, 'PT Cianjur Arta Makmur', 'PT Cianjur Arta Makmur', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '(+62) 817-1095-54', 'WMeat.Official@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL, '');

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
(5, '2021-10-08', 50, 5, 4, 21, '2.0000', '0.0000', '0.0000', '90000.0000', '90000.0000', '6.0000', 1, 0, NULL),
(6, '2021-10-08', 50, 6, 5, 21, '1.0000', '0.0000', '0.0000', '90000.0000', '90000.0000', '5.0000', 1, 0, NULL),
(7, '2021-10-08', 70, 7, 6, 34, '1.0000', '0.0000', '0.0000', '5000.0000', '5000.0000', '14.0000', 1, 0, NULL);

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
(2, 'IDR', 'Rupiah', '1.0000', 0, 'Rp');

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
(1, '2015-03-01', 2, 1, 2, 1, 6, 1, 6, 1, 1, 1, 1, 35);

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
(3, '2021-10-08 07:06:06', 4, NULL, NULL, 'SI2021/10/0003', NULL, 'cash', '', '', '', '', '', '', '180000.0000', NULL, 1, NULL, 'received', '', '180000.0000', '0.0000', NULL),
(4, '2021-10-08 07:06:46', 5, NULL, NULL, 'SI2021/10/0004', NULL, 'cash', '', '', '', '', '', '', '12000.0000', NULL, 1, NULL, 'received', '', '12000.0000', '-78000.0000', NULL),
(5, '2021-10-08 09:02:39', 6, NULL, NULL, 'SI2021/10/0005', NULL, 'cash', '', '', '', '', '', '', '5000.0000', NULL, 1, NULL, 'received', '', '5000.0000', '0.0000', NULL);

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
(1, 0, 'mypaypal@paypal.com', 'USD', '0.0000', '0.0000', '0.0000');

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
(1, '2021-02-15 03:31:58', 1, '0.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2021-10-04 07:14:27', 6, '10000.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(80, 'OLN-0290', 'Tenderloin Cube 300 gr', 23, '0.0000', '95000.0000', '4.0000', 'c6b8a473fc3a58f605852cf57f3a3a09.jpg', 2, NULL, '', '', '', '', '', '', '11.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'tenderloin-cube-300-gr', NULL, '0.3000', NULL, 0, 0, '', 0),
(55, 'WMS-021', 'WMeat Aus Beef Oxtail Cut 500 gr', 23, '0.0000', '65000.0000', '4.0000', '41bc6d8264cec9d6cc0d82f1215c6dd5.jpg', 2, NULL, '', '', '', '', '', '', '11.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-oxtail-cut-500-gr', NULL, '0.5000', NULL, 0, 0, '', 0),
(56, 'WMS-022', 'WMeat Aus Beef Oxtail Cut 1 kg', 23, '0.0000', '124000.0000', '4.0000', '55a7800734e46f3f07eb16d0b2f907be.jpg', 2, NULL, '', '', '', '', '', '', '12.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-oxtail-cut-1-kg', NULL, '1.0000', NULL, 0, 0, '', 0),
(57, 'WMS-023', 'WMeat Aus Beef Daging Giling 500 gr', 23, '0.0000', '50000.0000', '4.0000', 'aa9d1091e4a10715362bfcb8e6f2d2cf.jpg', 2, NULL, '', '', '', '', '', '', '3.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-daging-giling-500-gr', NULL, '0.5000', NULL, 0, 0, '', 0),
(58, 'WMS-024', 'WMeat Aus Beef Daging Giling 1 kg', 23, '0.0000', '96000.0000', '4.0000', '128b4c1c96b3fa9f6ead866129c4c12b.jpg', 2, NULL, '', '', '', '', '', '', '8.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-daging-giling-1-kg', NULL, '1.0000', NULL, 0, 0, '', 0),
(59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', 23, '0.0000', '45000.0000', '4.0000', 'b42a8c3ee23a6a2be6896f589ecb6132.jpg', 2, NULL, '', '', '', '', '', '', '8.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-iga-sop-super-500-gr', NULL, '0.5000', NULL, 0, 0, '', 0),
(36, 'WMS-002', 'WMeat Aus Beef Daging Rendang 1 kg', 23, '0.0000', '120000.0000', '4.0000', '5ed1d411fd2678aec06f98fc502ab091.jpg', 2, NULL, '', '', '', '', '', '', '9.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-daging-rendang-1-kg', NULL, '1.0000', NULL, 0, 0, '', 0),
(37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', 23, '0.0000', '75000.0000', '4.0000', '40074c49592344cd30c896cbd0ba93a8.jpg', 2, NULL, '', '', '', '', '', '', '16.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-sukiyaki-slice-500-gr', NULL, '0.5000', NULL, 0, 0, '', 0),
(38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', 23, '0.0000', '140000.0000', '4.0000', 'f6ee8304c85dd7df8821d276c3c2e8ee.jpg', 2, NULL, '', '', '', '', '', '', '10.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-sukiyaki-slice-1-kg', NULL, '1.0000', NULL, 0, 0, '', 0),
(39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', 23, '0.0000', '68000.0000', '4.0000', '2fc2545813d80858e810c3783919e032.jpg', 2, NULL, '', '', '', '', '', '', '27.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-yakinikuteriyaki-slice-500-gr', NULL, '0.5000', NULL, 0, 0, '', 0),
(40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', 23, '0.0000', '125000.0000', '4.0000', '1c008c705c1a65885969b4984654c8e3.jpg', 2, NULL, '', '', '', '', '', '', '9.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-yakinikuteriyaki-slice-1-kg', NULL, '1.0000', NULL, 0, 0, '', 0),
(45, 'WMS-011', 'WMeat Aus Beef Tulang Sop 500 gr', 23, '0.0000', '25000.0000', '4.0000', '911290648c67c1d419e340cd44c2442d.jpg', 2, NULL, '', '', '', '', '', '', '5.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-tulang-sop-500-gr', NULL, '0.5000', NULL, 0, 0, '', 0),
(46, 'WMS-012', 'WMeat Aus Beef Tulang Sop 1 kg', 23, '0.0000', '41500.0000', '4.0000', '59436369a587f5114a38af71e263f9de.jpg', 2, NULL, '', '', '', '', '', '', '5.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-tulang-sop-1-kg', NULL, '1.0000', NULL, 0, 0, '', 0),
(49, 'WMS-015', 'WMeat Aus Beef All Variant Less Fat 500 gr', 23, '0.0000', '50000.0000', '4.0000', '2a0d439711689056dd2db2ffb49cf26e.jpg', 2, NULL, '', '', '', '', '', '', '8.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-all-variant-less-fat-500-gr', NULL, '0.5000', NULL, 0, 0, '', 0),
(50, 'WMS-016', 'WMeat Aus Beef All Variant Less Fat 1 kg', 23, '0.0000', '90000.0000', '4.0000', '6170d1e5cf4ecf98c83106b8effb5c11.jpg', 2, NULL, '', '', '', '', '', '', '5.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-all-variant-less-fat-1-kg', NULL, '1.0000', NULL, 0, 0, '', 0),
(51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', 23, '0.0000', '44000.0000', '4.0000', 'bb7b3bfe0fa5c9e3c7c74288a1ca8ad7.jpg', 2, NULL, '', '', '', '', '', '', '8.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-rib-eye-steak-200-gr', NULL, '0.2000', NULL, 0, 0, '', 0),
(52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', 23, '0.0000', '80000.0000', '4.0000', '118033ee7bfa2abd98ed13216a2f0f8e.jpg', 2, NULL, '', '', '', '', '', '', '17.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-rib-eye-steak-400-gr', NULL, '0.4000', NULL, 0, 0, '', 0),
(60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', 23, '0.0000', '85000.0000', '4.0000', 'c6cb837e598b1059d38c837029e0d1fa.jpg', 2, NULL, '', '', '', '', '', '', '11.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-iga-sop-super-1-kg', NULL, '1.0000', NULL, 0, 0, '', 0),
(78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', 23, '0.0000', '63500.0000', '4.0000', '2cb1087faa951da952ee27108a99b8f4.jpg', 2, NULL, '', '', '', '', '', '', '13.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-daging-rendang-500-gram', NULL, '0.5000', NULL, 0, 0, '', 0),
(65, 'WMS-027', 'Wmeat Aus Beef Striploin Steak Bone In 250 gr', 23, '0.0000', '53000.0000', '4.0000', '9d2ffa92b3463beb536344abe218c3c9.jpg', 2, NULL, '', '', '', '', '', '', '27.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-striploin-steak-bone-in-250-gr', NULL, '0.2500', NULL, 0, 0, '', 0),
(66, 'WMS-030', 'Wmeat Aus Beef Iga Galbi 500 gr', 23, '0.0000', '75000.0000', '4.0000', '2cd6a2aaf53260e29e9150d465b1f019.jpg', 2, NULL, '', '', '', '', '', '', '12.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-iga-galbi-500-gr', NULL, '0.5000', NULL, 0, 0, '', 0),
(79, 'OLN-032', 'Wmeat Oxtail Super 500 gr', 23, '0.0000', '95000.0000', '4.0000', '3c6c4882ea3ff2e5bf279d06f26272fd.jpg', 2, NULL, '', '', '', '', '', '', '4.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 0, 'wmeat-oxtail-super-500-gr', NULL, '0.5000', NULL, 0, 0, '', 0),
(68, 'WMS-029', 'WMeat Aus Beef Lidah Sapi Slice 250 gr', 23, '0.0000', '35000.0000', '4.0000', '55cf765420d2d18d7dc2707fdaba68f9.jpg', 2, NULL, '', '', '', '', '', '', '16.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-lidah-sapi-slice-250-gr', NULL, '0.2500', NULL, 0, 0, '', 0),
(69, 'WMS-028', 'WMeat Aus Beef Lidah Sapi Slice 500 gr', 23, '0.0000', '65000.0000', '4.0000', 'f08033d9651ae7158ac617b71654a3b5.jpg', 2, NULL, '', '', '', '', '', '', '4.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-lidah-sapi-slice-500-gr', NULL, '0.5000', NULL, 0, 0, '', 0),
(70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', 23, '0.0000', '57000.0000', '4.0000', '01f35aa81ecc5c0db0ec3314e072b9e8.jpg', 2, NULL, '', '', '', '', '', '', '14.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5000.0000', '2021-10-08', '2021-10-15', '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-daging-giling-500-gr', NULL, '0.5000', NULL, 0, 0, 'Aus Beef ', 0),
(71, 'OLN-004', 'WMeat Aus Beef Daging Giling 1 kg', 23, '0.0000', '110000.0000', '4.0000', '3ad86d91f49b24341b1d367a4bf918d0.jpg', 2, NULL, '', '', '', '', '', '', '5.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-daging-giling-1-kg', NULL, '1.0000', NULL, 0, 0, '', 0),
(72, 'OLN-009', 'WMeat Aus Beef Striploin Steak 200 gr', 23, '0.0000', '45000.0000', '4.0000', '501d55f77d6cd514aa5bc323843461ac.jpg', 2, NULL, '', '', '', '', '', '', '7.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-striploin-steak-200-gr', NULL, '0.2000', NULL, 0, 0, '', 0),
(73, 'OLN-010', 'WMeat Aus Beef Striploin Steak 400 gr', 23, '0.0000', '85000.0000', '4.0000', 'c8470b7bb1d31fa2cfd6541582658965.jpg', 2, NULL, '', '', '', '', '', '', '12.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-striploin-steak-400-gr', NULL, '0.4000', NULL, 0, 0, '', 0),
(74, 'OLN-011', 'WMeat Aus Beef Iga Bakar 500 gr', 23, '0.0000', '50000.0000', '4.0000', '3cebef794513a8279edb4bddef715e81.jpg', 2, NULL, '', '', '', '', '', '', '11.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-iga-bakar-500-gr', NULL, '0.5000', NULL, 0, 0, '', 0),
(75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', 23, '0.0000', '95000.0000', '4.0000', '23dc98b52d8aeb9d2b18987fa199ac2f.jpg', 2, NULL, '', '', '', '', '', '', '10.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-iga-bakar-1-kg', NULL, '1.0000', NULL, 0, 0, '', 0),
(76, 'OLN-015', 'WMeat Aus Beef All Variant (Tumis/Sop) 500 gr', 23, '0.0000', '37000.0000', '4.0000', 'bae1ce6b042b68e7ece56f65ffd0d953.jpg', 2, NULL, '', '', '', '', '', '', '15.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-all-variant-tumissop-500-gr', NULL, '0.5000', NULL, 0, 0, '', 0),
(77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', 23, '0.0000', '70000.0000', '4.0000', '724c029ebd487ee39194dff3334f6f17.jpg', 2, NULL, '', '', '', '', '', '', '9.0000', NULL, 1, '', NULL, 'code128', NULL, '', NULL, 'standard', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 1, 'wmeat-aus-beef-all-variant-tumissop-1-kg', NULL, '1.0000', NULL, 0, 0, '', 0);

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
(1, 70, 2, '6000.0000'),
(2, 71, 2, '5000.0000');

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
(2, 'DO-21104159', '2021-10-07 03:38:00', 48, 'PT Cianjur Arta Makmur', 1, '&lt;p&gt;No SO &colon; SO-21104188&lt;&sol;p&gt;', '0.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL),
(3, 'DO 123456', '2021-10-07 03:36:00', 48, 'PT Cianjur Arta Makmur', 1, '&lt;p&gt;NO So n123456&lt;&sol;p&gt;', '0.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'received', 'paid', 6, 6, '2021-10-07 03:53:49', NULL, 0, NULL, 4, '0.0000', 'RP2021/10/0001', NULL, '0.0000', NULL, NULL, NULL),
(4, 'DO 123456', '2021-10-07 03:54:00', 48, 'PT Cianjur Arta Makmur', 1, '&lt;p&gt;barang busuk dimakan oca&lt;&sol;p&gt;', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'returned', 'due', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', 'RP2021/10/0001', 3, '0.0000', NULL, NULL, NULL);

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
(1, NULL, NULL, 70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', NULL, '0.0000', '8.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '2021-10-04', 'received', '0.0000', '0.0000', '8.0000', NULL, NULL, 21, 'Gram', '8.0000', NULL, NULL, NULL, NULL),
(3, NULL, NULL, 71, 'OLN-004', 'WMeat Aus Beef Daging Giling 1 kg', NULL, '0.0000', '5.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '5.0000', '2021-10-07', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, 23, 'PCS', '5.0000', NULL, NULL, NULL, NULL),
(4, NULL, NULL, 72, 'OLN-009', 'WMeat Aus Beef Striploin Steak 200 gr', NULL, '0.0000', '7.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '7.0000', '2021-10-07', 'received', '0.0000', '0.0000', '7.0000', NULL, NULL, 23, 'PCS', '7.0000', NULL, NULL, NULL, NULL),
(5, NULL, NULL, 73, 'OLN-010', 'WMeat Aus Beef Striploin Steak 400 gr', NULL, '0.0000', '12.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '12.0000', '2021-10-07', 'received', '0.0000', '0.0000', '12.0000', NULL, NULL, 23, 'PCS', '12.0000', NULL, NULL, NULL, NULL),
(6, NULL, NULL, 74, 'OLN-011', 'WMeat Aus Beef Iga Bakar 500 gr', NULL, '0.0000', '11.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '11.0000', '2021-10-07', 'received', '0.0000', '0.0000', '11.0000', NULL, NULL, 23, 'PCS', '11.0000', NULL, NULL, NULL, NULL),
(7, NULL, NULL, 75, 'OLN-012', 'WMeat Aus Beef Iga Bakar 1 kg', NULL, '0.0000', '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '10.0000', '2021-10-07', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, 23, 'PCS', '10.0000', NULL, NULL, NULL, NULL),
(8, NULL, NULL, 76, 'OLN-015', 'WMeat Aus Beef All Variant (Tumis/Sop) 500 gr', NULL, '0.0000', '15.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '15.0000', '2021-10-07', 'received', '0.0000', '0.0000', '15.0000', NULL, NULL, 23, 'PCS', '15.0000', NULL, NULL, NULL, NULL),
(9, NULL, NULL, 77, 'OLN-016', 'WMeat Aus Beef All Variant (Tumis/Sop) 1 kg', NULL, '0.0000', '9.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '9.0000', '2021-10-07', 'received', '0.0000', '0.0000', '9.0000', NULL, NULL, 23, 'PCS', '9.0000', NULL, NULL, NULL, NULL),
(10, NULL, NULL, 80, 'OLN-0290', 'Tenderloin Cube 300 gr', NULL, '0.0000', '11.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '11.0000', '2021-10-07', 'received', '0.0000', '0.0000', '11.0000', NULL, NULL, 23, 'PCS', '11.0000', NULL, NULL, NULL, NULL),
(11, NULL, NULL, 79, 'OLN-032', 'Wmeat Oxtail Super 500 gr', NULL, '0.0000', '4.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '4.0000', '2021-10-07', 'received', '0.0000', '0.0000', '4.0000', NULL, NULL, 23, 'PCS', '4.0000', NULL, NULL, NULL, NULL),
(12, NULL, NULL, 78, 'WMS-001', 'WMeat Aus Beef Daging Rendang 500 gram', NULL, '0.0000', '13.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '13.0000', '2021-10-07', 'received', '0.0000', '0.0000', '13.0000', NULL, NULL, 23, 'PCS', '13.0000', NULL, NULL, NULL, NULL),
(13, NULL, NULL, 36, 'WMS-002', 'WMeat Aus Beef Daging Rendang 1 kg', NULL, '0.0000', '9.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '9.0000', '2021-10-07', 'received', '0.0000', '0.0000', '9.0000', NULL, NULL, 23, 'PCS', '9.0000', NULL, NULL, NULL, NULL),
(14, NULL, NULL, 37, 'WMS-003', 'WMeat Aus Beef Sukiyaki Slice 500 gr', NULL, '0.0000', '16.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '16.0000', '2021-10-07', 'received', '0.0000', '0.0000', '16.0000', NULL, NULL, 23, 'PCS', '16.0000', NULL, NULL, NULL, NULL),
(15, NULL, NULL, 38, 'WMS-004', 'WMeat Aus Beef Sukiyaki Slice 1 kg', NULL, '0.0000', '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '10.0000', '2021-10-07', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, 23, 'PCS', '10.0000', NULL, NULL, NULL, NULL),
(16, NULL, NULL, 40, 'WMS-006', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 1 kg', NULL, '0.0000', '9.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '9.0000', '2021-10-07', 'received', '0.0000', '0.0000', '9.0000', NULL, NULL, 23, 'PCS', '9.0000', NULL, NULL, NULL, NULL),
(17, NULL, NULL, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', NULL, '0.0000', '12.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '12.0000', '2021-10-07', 'received', '0.0000', '0.0000', '12.0000', NULL, NULL, 23, 'PCS', '12.0000', NULL, NULL, NULL, NULL),
(18, NULL, NULL, 45, 'WMS-011', 'WMeat Aus Beef Tulang Sop 500 gr', NULL, '0.0000', '5.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '5.0000', '2021-10-07', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, 23, 'PCS', '5.0000', NULL, NULL, NULL, NULL),
(19, NULL, NULL, 46, 'WMS-012', 'WMeat Aus Beef Tulang Sop 1 kg', NULL, '0.0000', '5.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '5.0000', '2021-10-07', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, 23, 'PCS', '5.0000', NULL, NULL, NULL, NULL),
(20, NULL, NULL, 49, 'WMS-015', 'WMeat Aus Beef All Variant Less Fat 500 gr', NULL, '0.0000', '8.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '8.0000', '2021-10-07', 'received', '0.0000', '0.0000', '8.0000', NULL, NULL, 23, 'PCS', '8.0000', NULL, NULL, NULL, NULL),
(21, NULL, NULL, 50, 'WMS-016', 'WMeat Aus Beef All Variant Less Fat 1 kg', NULL, '0.0000', '8.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '5.0000', '2021-10-07', 'received', '0.0000', '0.0000', '8.0000', NULL, NULL, 23, 'PCS', '8.0000', NULL, NULL, NULL, NULL),
(22, NULL, NULL, 51, 'WMS-017', 'WMeat Aus Beef Rib Eye Steak 200 gr', NULL, '0.0000', '8.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '8.0000', '2021-10-07', 'received', '0.0000', '0.0000', '8.0000', NULL, NULL, 23, 'PCS', '8.0000', NULL, NULL, NULL, NULL),
(23, NULL, NULL, 52, 'WMS-018', 'WMeat Aus Beef Rib Eye Steak 400 gr', NULL, '0.0000', '17.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '17.0000', '2021-10-07', 'received', '0.0000', '0.0000', '17.0000', NULL, NULL, 23, 'PCS', '17.0000', NULL, NULL, NULL, NULL),
(24, NULL, NULL, 55, 'WMS-021', 'WMeat Aus Beef Oxtail Cut 500 gr', NULL, '0.0000', '11.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '11.0000', '2021-10-07', 'received', '0.0000', '0.0000', '11.0000', NULL, NULL, 23, 'PCS', '11.0000', NULL, NULL, NULL, NULL),
(25, NULL, NULL, 56, 'WMS-022', 'WMeat Aus Beef Oxtail Cut 1 kg', NULL, '0.0000', '12.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '12.0000', '2021-10-07', 'received', '0.0000', '0.0000', '12.0000', NULL, NULL, 23, 'PCS', '12.0000', NULL, NULL, NULL, NULL),
(26, NULL, NULL, 57, 'WMS-023', 'WMeat Aus Beef Daging Giling 500 gr', NULL, '0.0000', '1.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '1.0000', '2021-10-07', 'received', '0.0000', '0.0000', '1.0000', NULL, NULL, 23, 'PCS', '1.0000', NULL, NULL, NULL, NULL),
(27, NULL, NULL, 58, 'WMS-024', 'WMeat Aus Beef Daging Giling 1 kg', NULL, '0.0000', '8.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '8.0000', '2021-10-07', 'received', '0.0000', '0.0000', '8.0000', NULL, NULL, 23, 'PCS', '8.0000', NULL, NULL, NULL, NULL),
(28, NULL, NULL, 59, 'WMS-025', 'WMeat Aus Beef Iga Sop Super 500 gr', NULL, '0.0000', '8.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '8.0000', '2021-10-07', 'received', '0.0000', '0.0000', '8.0000', NULL, NULL, 23, 'PCS', '8.0000', NULL, NULL, NULL, NULL),
(29, NULL, NULL, 60, 'WMS-026', 'WMeat Aus Beef Iga Sop Super 1 kg', NULL, '0.0000', '11.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '11.0000', '2021-10-07', 'received', '0.0000', '0.0000', '11.0000', NULL, NULL, 23, 'PCS', '11.0000', NULL, NULL, NULL, NULL),
(30, NULL, NULL, 65, 'WMS-027', 'Wmeat Aus Beef Striploin Steak Bone In 250 gr', NULL, '0.0000', '17.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '17.0000', '2021-10-07', 'received', '0.0000', '0.0000', '17.0000', NULL, NULL, 23, 'PCS', '17.0000', NULL, NULL, NULL, NULL),
(31, NULL, NULL, 69, 'WMS-028', 'WMeat Aus Beef Lidah Sapi Slice 500 gr', NULL, '0.0000', '4.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '4.0000', '2021-10-07', 'received', '0.0000', '0.0000', '4.0000', NULL, NULL, 23, 'PCS', '4.0000', NULL, NULL, NULL, NULL),
(32, NULL, NULL, 68, 'WMS-029', 'WMeat Aus Beef Lidah Sapi Slice 250 gr', NULL, '0.0000', '16.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '16.0000', '2021-10-07', 'received', '0.0000', '0.0000', '16.0000', NULL, NULL, 23, 'PCS', '16.0000', NULL, NULL, NULL, NULL),
(33, NULL, NULL, 66, 'WMS-030', 'Wmeat Aus Beef Iga Galbi 500 gr', NULL, '0.0000', '12.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '12.0000', '2021-10-07', 'received', '0.0000', '0.0000', '12.0000', NULL, NULL, 23, 'PCS', '12.0000', NULL, NULL, NULL, NULL),
(34, 2, NULL, 70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', NULL, '0.0000', '15.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '2022-03-01', '0.0000', '14.0000', '2021-10-07', 'received', '0.0000', '0.0000', '15.0000', NULL, NULL, 23, 'PCS', '15.0000', NULL, NULL, NULL, NULL),
(39, 3, NULL, 65, 'WMS-027', 'Wmeat Aus Beef Striploin Steak Bone In 250 gr', NULL, '0.0000', '10.0000', 1, '0.0000', NULL, '', NULL, '0.0000', NULL, '0.0000', '10.0000', '2021-10-07', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, 23, 'PCS', '10.0000', NULL, NULL, NULL, NULL),
(38, 3, NULL, 57, 'WMS-023', 'WMeat Aus Beef Daging Giling 500 gr', NULL, '0.0000', '5.0000', 1, '0.0000', NULL, '', NULL, '0.0000', NULL, '0.0000', '5.0000', '2021-10-07', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, 23, 'PCS', '5.0000', NULL, NULL, NULL, NULL),
(40, 3, NULL, 39, 'WMS-005', 'WMeat Aus Beef Yakiniku/Teriyaki Slice 500 gr', NULL, '0.0000', '15.0000', 1, '0.0000', NULL, '', NULL, '0.0000', NULL, '0.0000', '15.0000', '2021-10-07', 'received', '0.0000', '0.0000', '15.0000', NULL, NULL, 23, 'PCS', '15.0000', NULL, NULL, NULL, NULL),
(41, 4, NULL, 57, 'WMS-023', 'WMeat Aus Beef Daging Giling 500 gr', NULL, '0.0000', '-3.0000', 1, '0.0000', NULL, '', NULL, '0.0000', NULL, '0.0000', '-3.0000', '0000-00-00', 'received', '0.0000', '0.0000', NULL, NULL, 38, 23, 'PCS', '-3.0000', NULL, NULL, NULL, NULL);

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
(5, '2021-10-08 07:06:46', 'SO/POS2021/10/0004', 3, 'Walk-in Client', 1, 'WMEAT', 1, '', '', '90000.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '90000.0000', 'completed', 'due', 0, NULL, 1, NULL, NULL, 1, 1, '12000.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '582197b5a65e7aa8dacce3140df4c50d6602767f80a172e40e540447b8b99f51', NULL, NULL, NULL, NULL, NULL),
(4, '2021-10-08 07:06:06', 'SO/POS2021/10/0003', 3, 'Walk-in Client', 1, 'WMEAT', 1, '', '', '180000.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '180000.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 2, 1, '180000.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '3c5fa9edfafbf37f73ce7e31cff48e60a32140f0bda62eff7b599ada2d1be23d', NULL, NULL, NULL, NULL, NULL),
(6, '2021-10-08 09:02:39', 'SO/POS2021/10/0005', 3, 'Walk-in Client', 1, 'WMEAT', 1, '', '', '5000.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '5000.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 1, '5000.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'bca5a51776c4900827fb471cf83f130953d9c44f54ee6007b89a16acd6c80b0a', NULL, NULL, NULL, NULL, NULL);

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
(6, 5, 50, 'WMS-016', 'WMeat Aus Beef All Variant Less Fat 1 kg', 'standard', NULL, '90000.0000', '90000.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '90000.0000', '', '90000.0000', NULL, 23, 'PCS', '1.0000', '', NULL, NULL, NULL, NULL),
(5, 4, 50, 'WMS-016', 'WMeat Aus Beef All Variant Less Fat 1 kg', 'standard', NULL, '90000.0000', '90000.0000', '2.0000', 1, '0.0000', NULL, '', '0', '0.0000', '180000.0000', '', '90000.0000', NULL, 23, 'PCS', '2.0000', '', NULL, NULL, NULL, NULL),
(7, 6, 70, 'OLN-003', 'WMeat Aus Beef Daging Giling 500 gr', 'standard', NULL, '5000.0000', '5000.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5000.0000', '', '5000.0000', NULL, 23, 'PCS', '1.0000', '', NULL, NULL, NULL, NULL);

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
('9a9da8a0d4a4689f1b0b221cf330d1206bb73a77', '47.243.235.112', 1633876963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363936333b),
('fb2fc77b7304118e16610a28284bcca073f3678b', '47.243.235.112', 1633876969, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363936393b),
('55ea732002ff9d50401e603a1fd1353eac5d5ed1', '47.243.235.112', 1633876970, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363937303b),
('b2fc81d61486052263a79f94d1a1d8ce36d4600a', '47.243.235.112', 1633876985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363938353b6572726f727c733a3131343a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e68747470733a2f2f776167656e742e776d6561742e73746f72652f736974656d61702e786d6c223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('5257713ce19c7dc23044be8f1b36941f9d3e3f13', '47.243.235.112', 1633876977, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363932383b),
('5172d259d43f7fbb291d3735040c51a9fa211cb5', '47.243.235.112', 1633876936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363933363b6572726f727c733a3131343a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e68747470733a2f2f776167656e742e776d6561742e73746f72652f736974656d61702e786d6c223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('99a45d7c344167c8f805fda97b607e672b7ad437', '47.243.235.112', 1633876936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363933363b6572726f727c733a3131333a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e68747470733a2f2f776167656e742e776d6561742e73746f72652f726f626f74732e747874223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('6119e123664c46b9a0dd02a429f23f1bef97f54b', '47.243.235.112', 1633876942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363934323b),
('4d35d1f633ee8b854159eaa44dca12ab1c954a44', '47.243.235.112', 1633876942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363934323b),
('daa599f56c2a83013929b6427cc4343decdcd59e', '47.243.235.112', 1633876944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363934343b),
('7e570fd4c31ceacc6ca7233a24191eab4a7bee88', '47.243.235.112', 1633876944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363934343b),
('cd6969f8bdbcd2c8760e590802197ade4c62d182', '47.243.235.112', 1633876945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363934353b),
('3698099cdfa5471afcc7476b3a2a73604210ce6f', '47.243.235.112', 1633876945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363934353b),
('9e574d1c554825b673839f17d3df4ad807f23b72', '47.243.235.112', 1633876954, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363935343b6572726f727c733a3131343a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e68747470733a2f2f776167656e742e776d6561742e73746f72652f736974656d61702e786d6c223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('c4d6dbf5fbee294789ecda856c1cd1e1a1595d30', '47.243.235.112', 1633876955, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363935353b6572726f727c733a3131333a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e68747470733a2f2f776167656e742e776d6561742e73746f72652f726f626f74732e747874223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('c1263a87dba217d20f112a7655014ed57cffc21c', '47.243.235.112', 1633876959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363935393b),
('6fb5fd7feacc1046e0b298567079c609a32be412', '103.66.198.42', 1633929887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333932393730323b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333363736303934223b6c6173745f69707c733a31333a223132352e3136362e37382e3939223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('23bf119a0fb127436124ad20bc650f5fcfc4cafd', '180.242.115.149', 1633929702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333932393730323b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333363736303934223b6c6173745f69707c733a31333a223132352e3136362e37382e3939223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('a412c5c28a4c7249773d7f8a26e84eb47b33f3fc', '180.242.115.149', 1633926101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333932363130313b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333363736303934223b6c6173745f69707c733a31333a223132352e3136362e37382e3939223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('77dd4baac541c150351c75f911e75b73b5058b43', '180.252.34.166', 1633925732, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333932353733323b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333363736303934223b6c6173745f69707c733a31333a223132352e3136362e37382e3939223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('53098d1abc1d867dcf86bc5abee1f8fa9b59dce0', '180.252.34.166', 1633921889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333932313838393b7265717565737465645f706167657c733a353a2261646d696e223b),
('a6ab5a3f04626b52cf52e6cdb27a11dcb75e75de', '180.252.34.166', 1633921890, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333932313839303b),
('ddcb688d3598a7c0803ac77b7ed086521b24ba53', '180.252.34.166', 1633924492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333932343439323b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333363736303934223b6c6173745f69707c733a31333a223132352e3136362e37382e3939223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('48879d8fb81723b1d5cc643e1f5792f69ba835bc', '180.252.34.166', 1633924057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333932343035373b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333363736303934223b6c6173745f69707c733a31333a223132352e3136362e37382e3939223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('434a350bf1469567c52b876657cd32729d5075ee', '110.138.92.159', 1633921618, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333932313631383b7265717565737465645f706167657c733a33353a2261646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b6964656e746974797c733a373a226d616e616a6572223b757365726e616d657c733a373a226d616e616a6572223b656d61696c7c733a31393a226d616e616a657240776d6561742e73746f7265223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333373536333532223b6c6173745f69707c733a31343a223131302e3133382e39352e313836223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('f6a952267ae3ae55dd5dc3defc3f4ab1dcc19549', '47.243.61.252', 1633894558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343535373b),
('d804bc5d53054e19e78b1f7cb3a7938629096d58', '47.243.61.252', 1633894559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343535393b),
('e5966c126c0b5056451f879ee257833ce67e1423', '47.243.61.252', 1633894560, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343536303b),
('24e4b7838a05d3d27d4c5f2efa65ada721b07f77', '47.243.61.252', 1633894561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343536313b),
('b4b795926ee1af63cc85af5b9774a4df25893dff', '110.138.92.159', 1633921618, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333932313631383b7265717565737465645f706167657c733a33353a2261646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b6964656e746974797c733a373a226d616e616a6572223b757365726e616d657c733a373a226d616e616a6572223b656d61696c7c733a31393a226d616e616a657240776d6561742e73746f7265223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333373536333532223b6c6173745f69707c733a31343a223131302e3133382e39352e313836223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d6572726f727c733a3134333a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776167656e742e776d6561742e73746f72652f61646d696e2f61646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b),
('a60a42c4a2384ef094821bda84f049aad5e6aeea', '47.243.61.252', 1633894541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343534313b),
('4c1512942f5d6dfb08cc3d3c29525ac52d120738', '47.243.61.252', 1633894545, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343534353b6572726f727c733a3131383a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e68747470733a2f2f7777772e776167656e742e776d6561742e73746f72652f736974656d61702e786d6c223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('5338f6e41557668fb38e9de627dbe5665e290234', '47.243.61.252', 1633894551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343535313b),
('22972040499aacc7d622f19e5f5a3714dcf2c70f', '47.243.61.252', 1633894539, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343533393b6572726f727c733a3131373a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e68747470733a2f2f7777772e776167656e742e776d6561742e73746f72652f726f626f74732e747874223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('45dab18908be504e957611c018598ae6da10344f', '47.243.61.252', 1633894524, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343532343b),
('c604272c601adf67853f05612503fc43fea7a8be', '47.243.61.252', 1633894526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343532363b),
('d530a7c07c22877d01d76b62323ba15ed20b1129', '47.243.61.252', 1633894518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343531383b),
('9bd0fdd34970f3fd1fbfd3c59fdee658c545f2b1', '47.243.61.252', 1633894508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343530383b),
('20efc85de62607c042e473fcaed2c1844d5cc37b', '47.243.61.252', 1633894511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343531313b),
('c52a899fa761f970ce0adfba712fad7eb5d8097c', '47.243.61.252', 1633894518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343531383b),
('1a646ba1430fb312afdc228271bd0933390f063d', '47.243.61.252', 1633894505, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343530353b6572726f727c733a3131383a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e68747470733a2f2f7777772e776167656e742e776d6561742e73746f72652f736974656d61702e786d6c223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('0fe560c0508444541204b702b59316a540c49f82', '47.243.61.252', 1633894506, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343530363b6572726f727c733a3131373a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e68747470733a2f2f7777772e776167656e742e776d6561742e73746f72652f726f626f74732e747874223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('55298cb8ad2e9b33fd7c750fc515df0c7b3bb4b0', '47.243.61.252', 1633894496, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343439363b),
('bc3df2f91557d1750dfb817873a1d2886f0fed25', '47.243.61.252', 1633894479, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343437393b),
('4815d99e93e05d9cc467ca5fa8a3ba7c86fdb962', '47.243.61.252', 1633894485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343438353b),
('694b1fce802a60dcfb575441f28398fa2f88b441', '47.243.61.252', 1633894492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343439323b),
('4bce38267b9f294fc33bc8532fd8a4d80252091b', '47.243.61.252', 1633894475, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343437353b),
('1d1ca470a6f074932fe7d57e0a1a65a2f10fc680', '47.243.61.252', 1633894477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343437373b),
('497850e8a363ea36eb386cc06966ffff2c57d208', '47.243.61.252', 1633894478, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343437383b6572726f727c733a3131373a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e68747470733a2f2f7777772e776167656e742e776d6561742e73746f72652f726f626f74732e747874223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('5d32718bf4a33a97dfa41173c17b497050bdc08a', '47.243.231.241', 1633885828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353832383b),
('1188f3c00da5f0466c4e389b17f6ace98b5d1cb0', '47.243.61.252', 1633894535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343436383b),
('7c2b7ef32713c1faef7ae7e35ed61f5c1600dd91', '47.243.61.252', 1633894473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333839343437333b6572726f727c733a3131383a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e68747470733a2f2f7777772e776167656e742e776d6561742e73746f72652f736974656d61702e786d6c223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('feb33574fe6f1510712884a653092f2ce9326332', '47.243.231.241', 1633885828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353832383b),
('e1175d1544bc57b74d9dde2d622c7a95b64fc5a1', '47.243.231.241', 1633885818, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353831383b),
('a24d6c01c435c97cca3aa715bd7493eafebd7777', '47.243.231.241', 1633885819, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353831393b),
('aceb4078163de01d31dcaf55fa66b7f065de548c', '47.243.231.241', 1633885819, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353831393b),
('686cb382f5f273907e6482d7be964128fc99f9e1', '47.243.231.241', 1633885817, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353831373b),
('0d9b4772d4d64b998c666927f8fe550271da7a23', '47.243.231.241', 1633885816, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353831363b6572726f727c733a3131363a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f7777772e776167656e742e776d6561742e73746f72652f726f626f74732e747874223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('219f6a0c2fdd3a7e1dcff40dc0ff23283edc25de', '47.243.231.241', 1633885807, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353830373b),
('82f2a5393c6bc69019457b55d9b90f9f4d1f9f1a', '47.243.231.241', 1633885809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353830393b),
('925401dbf676d06e799eabc8a98d6f047422211f', '47.243.231.241', 1633885816, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353831363b6572726f727c733a3131373a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f7777772e776167656e742e776d6561742e73746f72652f736974656d61702e786d6c223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('50d72629f2b1f790b5e923be13f86a8850c8cf5c', '47.243.231.241', 1633885805, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353830353b),
('5adfa9b62086524d5713a3cab602d1fb2dc209e6', '47.243.231.241', 1633885805, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353830353b),
('8ca62e8ad8877eb8fd140a65c30276d04f8ed977', '47.243.231.241', 1633885803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353830333b),
('2e6a3f7f1557b2964d8dcd59385df1d4b5df00b5', '47.243.231.241', 1633885803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353830333b),
('59bc35b5f258f36acbad640934c06514f47b123f', '47.243.231.241', 1633885801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353830313b6572726f727c733a3131373a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f7777772e776167656e742e776d6561742e73746f72652f736974656d61702e786d6c223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('1a4f38b85a1e2cdec80ca342cb59e22199affdb0', '47.243.231.241', 1633885801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353830313b6572726f727c733a3131363a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f7777772e776167656e742e776d6561742e73746f72652f726f626f74732e747874223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('090715a774c2357ef65c00750c100f63d6020cb9', '47.243.231.241', 1633885793, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353739333b),
('b2d5eab7243894e5d388e51ab9a0a0b042a7d0f5', '47.243.231.241', 1633885789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353738393b),
('ebf227363463464d02d8ec1eee1636b106e01458', '47.243.231.241', 1633885789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353738393b),
('2b5db189de657f29aef8678583432b1f173a40be', '47.243.231.241', 1633885791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353739313b),
('c475d1d98b245c2f767a22578da9adb4d6332b7c', '47.243.231.241', 1633885791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353739313b),
('62cbb8314cc7bb10d4b000e7ef107e55a6301f4b', '47.243.231.241', 1633885793, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353739333b),
('307231956642e497793745faf588da6103c09265', '47.243.231.241', 1633885787, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353738373b6572726f727c733a3131363a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f7777772e776167656e742e776d6561742e73746f72652f726f626f74732e747874223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('35c740d525458b544e573a00cde7829dd31f067b', '47.243.231.241', 1633885787, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353738373b6572726f727c733a3131373a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f7777772e776167656e742e776d6561742e73746f72652f736974656d61702e786d6c223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('764574aff6be69ab07867d72206f85ef798ab15e', '47.243.228.83', 1633877096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373039363b),
('995ae8a2fd157df56ac529ab4ff7ea7a9eb7253c', '47.243.228.83', 1633877096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373039363b),
('d44d94724cbf44403bcc1c0923996c13ed8224af', '47.243.228.83', 1633877097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373039373b),
('1ff4101deed6e41bcf351108ffc03030d2ce4b55', '47.243.228.83', 1633877102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373130323b),
('85c66698997300f342bbc6bd299054b6a3f2d32d', '47.243.231.241', 1633885812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333838353738313b),
('a76e063d0ea3bf7f139456c98c7a1934872c5bd4', '47.243.228.83', 1633877094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373039343b6572726f727c733a3131333a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776167656e742e776d6561742e73746f72652f736974656d61702e786d6c223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('83ef1324da39efa005e7a5e74130f003a2a7f309', '47.243.228.83', 1633877094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373039343b6572726f727c733a3131323a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776167656e742e776d6561742e73746f72652f726f626f74732e747874223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('f5844b7e404b5b0475082df339c50e2b7f01635f', '47.243.228.83', 1633877085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373038353b),
('96075328884b57eca836ba53801157cc8593ec06', '47.243.228.83', 1633877085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373038353b),
('20527d117f8dd88079073d052546af5d9affcb67', '47.243.228.83', 1633877086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373038363b),
('7c330f844afdf6195218911accfeb2964a569221', '47.243.228.83', 1633877086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373038363b),
('56c8f32ae9d6aa8df53c0522435a7481d0da05a3', '47.243.228.83', 1633877088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373038383b),
('d396f2ab183b203bd723699ac42b7b400a2f6d08', '47.243.235.112', 1633876985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363938353b6572726f727c733a3131333a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e68747470733a2f2f776167656e742e776d6561742e73746f72652f726f626f74732e747874223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('9746d7cb5bfc4cac0c49be7657abf012a2fb4c60', '47.243.235.112', 1633876987, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363938373b),
('d78742028811f102f05190175d6228fea0ed5df2', '47.243.235.112', 1633876987, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363938373b),
('ba510e6ac17631e6394d1db0086b88a5074ad559', '47.243.235.112', 1633876988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363938383b),
('42ec0d6f654e51ed7c2f04358b8b00542892876e', '47.243.235.112', 1633876988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363938383b),
('fcd133f1c94bcc5aa3475ae99d30febe9f0640f5', '47.243.235.112', 1633876993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363939333b),
('0846d90c45bbd31d97d5c1e5da023f6ddb10feb3', '47.243.235.112', 1633876996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837363939363b),
('4b5cc34875d0a8be28349cd5a541d642737b5f13', '47.243.228.83', 1633877091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373036343b),
('6665cb7249516a14a0f82cef9987159a975d977a', '47.243.228.83', 1633877067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373036373b6572726f727c733a3131333a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776167656e742e776d6561742e73746f72652f736974656d61702e786d6c223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('2710a5e1b204805608b783e5c90813f6f429bd99', '47.243.228.83', 1633877067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373036373b6572726f727c733a3131323a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776167656e742e776d6561742e73746f72652f726f626f74732e747874223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('4a23be385d1e9e91e3cd838494c07fe1112040da', '47.243.228.83', 1633877071, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373037313b),
('a1e8a2d938217f9eb9847ca10ea4a4b02fa82bde', '47.243.228.83', 1633877071, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373037313b),
('a73f22f1869a7e8b51d7bfbe3be78daf2792f5b0', '47.243.228.83', 1633877072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373037323b),
('f3ac1c6120c1b5b4e3cf730d49937bb7391858f6', '47.243.228.83', 1633877072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373037323b),
('b686fd4a7803e4a0c2ce9035a6928d70569e2f64', '47.243.228.83', 1633877073, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373037333b),
('f2905888a6a521ca7f336642338e86e3cbddbd87', '47.243.228.83', 1633877073, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373037333b),
('fbb3ece37e7336d1e0d1f76be5185f67f92072cf', '47.243.228.83', 1633877079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373037393b6572726f727c733a3131333a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776167656e742e776d6561742e73746f72652f736974656d61702e786d6c223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('bec52c342438a9e3f865f9bed9f8d075807a85e1', '47.243.228.83', 1633877079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373037393b6572726f727c733a3131323a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776167656e742e776d6561742e73746f72652f726f626f74732e747874223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('1ba3a56a6266ca64e91571f572a369114434ec65', '47.243.228.83', 1633877084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333837373038343b),
('dlm3uq5qoo9078ams258lmq0o7q4do8c', '127.0.0.1', 1633936649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333933363634393b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333393231373532223b6c6173745f69707c733a31343a223138302e3235322e33342e313636223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('im7ugvgni2llpki9dae3r0fgqp2ul1co', '127.0.0.1', 1633936886, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333933363634393b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333393231373532223b6c6173745f69707c733a31343a223138302e3235322e33342e313636223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('hd5j26kpop91aae9ehetrdn62bbeib0p', '127.0.0.1', 1633936981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333933363938313b7265717565737465645f706167657c733a31343a2261646d696e2f70726f6475637473223b),
('l4e2onf01r2g6ntmde6hfsstj4a3lcdn', '127.0.0.1', 1633937086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333933373037353b7265717565737465645f706167657c733a31343a2261646d696e2f70726f6475637473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333393336303632223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('avr0m60p6muis0ggo5s0m5e65h2hl8im', '127.0.0.1', 1633937416, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333933373431363b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333393337303831223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('k68i8rrj1363ei0vsbt4n1nck6mem3gj', '127.0.0.1', 1633937722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333933373732323b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333393337303831223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('go47n5cgdq1ouo9lccjno7r3fhnvc9mk', '127.0.0.1', 1633938157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333933383135373b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333393337303831223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('rup0kft6h0l7oe6ldmo5q0eqr9nf6sj2', '127.0.0.1', 1633938729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333933383732393b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333393337303831223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('t5mum35n3en20cqncqshvtseu92tccnc', '127.0.0.1', 1633941996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333934313939363b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333393337303831223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('r5h83ij3vi3hbh99pmq5h8qc5rra39ie', '127.0.0.1', 1633942412, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333934323431323b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333393337303831223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('9aak0qdtfkvs7b61m80emuscen80olr1', '127.0.0.1', 1633944164, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333934343136343b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333393337303831223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('orho2ti5g9tbtkn13h46a5qm00p719g2', '127.0.0.1', 1633942629, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333934323632393b7265717565737465645f706167657c733a31343a2261646d696e2f70726f6475637473223b),
('rb84clo2qm9qlriolqt3f4mtuvfjdok1', '127.0.0.1', 1633942707, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333934323730373b7265717565737465645f706167657c733a31343a2261646d696e2f70726f6475637473223b),
('2ej4gmdd9aq0f6130bve77kehgkgjffv', '127.0.0.1', 1633944474, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333934343437343b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333393337303831223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('tu0rmavmoqv06as3avpjr262ej6jouag', '127.0.0.1', 1633945523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333934353532333b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333393337303831223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('8pq2774cdthso5fpnm6hh0ms3mhg7kc4', '127.0.0.1', 1633945921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333934353932313b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333393337303831223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('4706rhs9lu3sh056ksibq1vj8gulkj4b', '127.0.0.1', 1633945923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333934353932313b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333393337303831223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('u9aknjc911r0376r47unro21kln7dt1b', '127.0.0.1', 1634004844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343030343737353b7265717565737465645f706167657c733a31383a2261646d696e2f70726f64756374732f616464223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333393337313037223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6572726f727c4e3b),
('ermshatketmhu738mp2s0b3dm7d18t2m', '127.0.0.1', 1634004836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343030343833363b7265717565737465645f706167657c733a31383a2261646d696e2f70726f64756374732f616464223b),
('eukerv02ftidjjt8b0hqnm2takrae246', '127.0.0.1', 1634005298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343030353239383b7265717565737465645f706167657c733a31383a2261646d696e2f70726f64756374732f616464223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363334303034373831223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('j7djl45fvdf351mv5gmjjdvmjd93a838', '127.0.0.1', 1634006694, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343030363639343b7265717565737465645f706167657c733a31383a2261646d696e2f70726f64756374732f616464223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363334303034373831223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('1553o38k06ngp6dv5mso5i9ng5r9h3ik', '127.0.0.1', 1634007455, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343030373435353b),
('4ssoi0taq5vsscptp3pmi6l69u4tn36h', '127.0.0.1', 1634007825, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343030373832353b),
('5c9neo91hii8fr9i13jut3rk2upi780e', '127.0.0.1', 1634007595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343030373539353b),
('me334bm85g06qgm9cok1apiuia127s2s', '127.0.0.1', 1634007862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343030373832353b);

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
(1, 'imageedit_3_2567267275.png', 'logo.png', 'WMEAT', 'indonesian', 1, 0, 'IDR', 0, 10, '2.0.0', 0, 5, 'SO', 'PR', 'PO', 'TR', 'DO', 'SI', 'SR', 'RP', '', 1, 'default', 1, 1, 1, 1, 0, 0, 0, 1, 0, 'Asia/Jakarta', 1080, 1080, 150, 150, 1, 0, 0, 0, NULL, 'smtp', '/usr/sbin/sendmail', 'srv128.niagahoster.com', 'info@wmeat.store', 'WIDODO2019', '465', 'ssl', NULL, 1, 'info@wmeat.store', 0, 4, 1, 0, 2, 1, 1, 1, 0, 0, ',', '.', 0, 1, 'nulled', 'nulled', 0, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 'Rp', 0, '-', 0, 3, 1, 'PI', 90, '', 0, 0, 'AN', 'dompdf');

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
(1, 'WMEAT STORE', 'Toko Daging', 1, 1, '', '', '', '', 'We accept Transfer or you can pay with your credit/debit cards.', 'Please click the link below to follow us on social media.', '#', '', '', '', '08111109554', 'admin@wmeat.id', 'We use cookies to improve your experience on our website. By browsing this website, you agree to our use of cookies.', '', '[{\"image\":\"e0575ef5b42f6ad7fa1934e22f2b8eac.jpg\",\"link\":\"\",\"caption\":\"\"},{\"image\":\"77a111434cd27c1d67a68b637179fc14.jpg\",\"link\":\"\",\"caption\":\"\"},{\"image\":\"aef8f66d5c4d4327b78683ca44f23ebd.jpg\",\"link\":\"\",\"caption\":\"\"},{\"link\":\"\",\"caption\":\"\"},{\"link\":\"\",\"caption\":\"\"}]', 0, '', 'envato_username', '2.0.0', 'imageedit_3_2567267278.png', '', 0, 0, 'ada karena dipercaya', 1, 0);

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
(1, 0, 'testaccount2@moneybookers.com', 'mbtest', 'USD', '0.0000', '0.0000', '0.0000');

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
(1, '2021-02-10 09:28:00', '', 1, 'full', '7424e1a1aa651546e3b9753dcb93488b.csv', NULL, '', '', '', '', NULL, 1, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(2, '2021-10-05 04:46:00', '', 1, 'full', '9d04c6ef463ca91f6ab7b6e233899dcd.csv', NULL, '', '', '', '', NULL, 2, 2, NULL, NULL, NULL, 6, NULL, NULL, NULL),
(3, '2021-10-08 07:03:00', '', 1, 'partial', 'f05d9dc3867467d5c438a008415229d8.csv', NULL, '1', 'WMEAT', '2', 'BEEF', NULL, 31, 31, NULL, NULL, NULL, 1, NULL, NULL, NULL);

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

--
-- Dumping data for table `sma_tax_rates`
--

INSERT INTO `sma_tax_rates` (`id`, `name`, `code`, `rate`, `type`) VALUES
(1, 'No Tax', 'NT', '0.0000', '2'),
(2, 'VAT @10%', 'VAT10', '10.0000', '1'),
(3, 'GST @6%', 'GST', '6.0000', '1'),
(4, 'VAT @20%', 'VT20', '20.0000', '1');

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
(1, 0x3132372e302e302e31, 0x0000, 'owner', 'a1a91380a8bf75d6792ebb3769baa14487f6b774', NULL, 'owner@tecdiary.com', NULL, NULL, NULL, '094f1a95d80432cae8c46f211e2dbd68cc70dab2', 1351661704, 1634004951, 1, 'Owner', 'Owner', 'WTouch', '012345678', NULL, 'male', 1, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0),
(4, 0x3130332e36362e3139382e3432, 0x31332e31322e31302e31, 'sales', 'b25cad49eaca2f14789cafa0f9a80760bf0f6532', NULL, 'wmeat.shop@gmail.com', NULL, NULL, NULL, NULL, 1588179657, 1588910176, 1, 'sales', 'WMeat', 'WMeat', '123', NULL, 'male', 7, 1, 6, NULL, 1, 1, 0, 0, 0, 0),
(6, 0x3131302e3133382e39322e313539, 0x3130332e36362e3139382e3432, 'manajer', '65cb0b47dab2d5fa1c1a581c697b7575cb7e2f88', NULL, 'manajer@wmeat.store', NULL, NULL, NULL, NULL, 1588574208, 1633921318, 1, 'manajer', 'wmeat', 'WMEAT', '08111109554', NULL, 'male', 1, 1, 1, NULL, 0, 0, 0, 0, 1, 1),
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
(140, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-10-11 07:07:42'),
(141, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-10-11 07:24:41'),
(142, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-10-11 07:25:07'),
(143, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-10-12 02:13:01'),
(144, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-10-12 02:15:51');

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
(37, 37, 1, '16.0000', NULL, '0.0000'),
(38, 38, 1, '10.0000', NULL, '0.0000'),
(39, 39, 1, '27.0000', NULL, '0.0000'),
(40, 40, 1, '9.0000', NULL, '0.0000'),
(41, 45, 1, '5.0000', NULL, '0.0000'),
(42, 46, 1, '5.0000', NULL, '0.0000'),
(27, 70, 1, '14.0000', NULL, '0.0000'),
(44, 50, 1, '5.0000', NULL, '0.0000'),
(43, 49, 1, '8.0000', NULL, '0.0000'),
(28, 71, 1, '5.0000', NULL, '0.0000'),
(29, 72, 1, '7.0000', NULL, '0.0000'),
(30, 73, 1, '12.0000', NULL, '0.0000'),
(31, 74, 1, '11.0000', NULL, '0.0000'),
(32, 75, 1, '10.0000', NULL, '0.0000'),
(33, 76, 1, '15.0000', NULL, '0.0000'),
(34, 77, 1, '9.0000', NULL, '0.0000'),
(35, 78, 1, '13.0000', NULL, '0.0000'),
(36, 36, 1, '9.0000', NULL, '0.0000'),
(45, 51, 1, '8.0000', NULL, '0.0000'),
(46, 52, 1, '17.0000', NULL, '0.0000'),
(47, 55, 1, '11.0000', NULL, '0.0000'),
(48, 56, 1, '12.0000', NULL, '0.0000'),
(49, 57, 1, '3.0000', NULL, '0.0000'),
(50, 58, 1, '8.0000', NULL, '0.0000'),
(51, 59, 1, '8.0000', NULL, '0.0000'),
(52, 60, 1, '11.0000', NULL, '0.0000'),
(53, 65, 1, '27.0000', NULL, '0.0000'),
(54, 69, 1, '4.0000', NULL, '0.0000'),
(55, 68, 1, '16.0000', NULL, '0.0000'),
(56, 66, 1, '12.0000', NULL, '0.0000'),
(57, 79, 1, '4.0000', NULL, '0.0000'),
(58, 80, 1, '11.0000', NULL, '0.0000');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sma_adjustment_items`
--
ALTER TABLE `sma_adjustment_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_companies`
--
ALTER TABLE `sma_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `sma_costing`
--
ALTER TABLE `sma_costing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sma_purchase_items`
--
ALTER TABLE `sma_purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_return_items`
--
ALTER TABLE `sma_return_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_sales`
--
ALTER TABLE `sma_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sma_sms_settings`
--
ALTER TABLE `sma_sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_stock_counts`
--
ALTER TABLE `sma_stock_counts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sma_stock_count_items`
--
ALTER TABLE `sma_stock_count_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_suspended_bills`
--
ALTER TABLE `sma_suspended_bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_suspended_items`
--
ALTER TABLE `sma_suspended_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

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
