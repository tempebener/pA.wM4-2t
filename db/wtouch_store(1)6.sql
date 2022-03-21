-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jul 2020 pada 10.22
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wtouch_store`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_addresses`
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
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_addresses`
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
-- Struktur dari tabel `sma_adjustments`
--

CREATE TABLE `sma_adjustments` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` text,
  `attachment` varchar(55) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_adjustments`
--

INSERT INTO `sma_adjustments` (`id`, `date`, `reference_no`, `warehouse_id`, `note`, `attachment`, `created_by`, `updated_by`, `updated_at`, `count_id`) VALUES
(1, '2020-04-29 09:29:00', '2020/04/0001', 1, '', NULL, 1, NULL, NULL, NULL),
(2, '2020-04-30 06:37:00', '2020/04/0002', 1, '', NULL, 1, NULL, NULL, NULL),
(3, '2020-05-04 08:34:00', '2020/05/0003', 1, '', NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_adjustment_items`
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
-- Dumping data untuk tabel `sma_adjustment_items`
--

INSERT INTO `sma_adjustment_items` (`id`, `adjustment_id`, `product_id`, `option_id`, `quantity`, `warehouse_id`, `serial_no`, `type`) VALUES
(1, 1, 1, 1, '100.0000', 1, '', 'addition'),
(2, 2, 21, NULL, '22.0000', 1, '', 'addition'),
(3, 2, 22, NULL, '11.0000', 1, '', 'addition'),
(4, 3, 23, NULL, '3.0000', 1, '', 'addition'),
(5, 3, 24, NULL, '22.0000', 1, '', 'addition');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_api_keys`
--

CREATE TABLE `sma_api_keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reference` varchar(40) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_api_limits`
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
-- Struktur dari tabel `sma_api_logs`
--

CREATE TABLE `sma_api_logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_brands`
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
-- Dumping data untuk tabel `sma_brands`
--

INSERT INTO `sma_brands` (`id`, `code`, `name`, `image`, `slug`, `description`) VALUES
(12, 'WM001', 'WMeat', '3828bdfc2ce5e373bd865031010dfd48.png', 'wmeat', 'WMeat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_calendar`
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
-- Struktur dari tabel `sma_captcha`
--

CREATE TABLE `sma_captcha` (
  `captcha_id` bigint(13) UNSIGNED NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `word` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_cart`
--

CREATE TABLE `sma_cart` (
  `id` varchar(40) NOT NULL,
  `time` varchar(30) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_cart`
--

INSERT INTO `sma_cart` (`id`, `time`, `user_id`, `data`) VALUES
('a9214d5fd7953fc1d6f04effd5e1314e', '1588172096', NULL, '{\"cart_total\":88001,\"total_item_tax\":0,\"total_items\":1,\"total_unique_items\":1,\"f3b6f6432767e1a743d632b824aa8ecb\":{\"id\":\"2899f930bb7038f016349ad2482c263b\",\"product_id\":\"1\",\"qty\":1,\"name\":\"WMeat Daging Rendang (Chuck)\",\"slug\":\"wmeat-daging-rendang-chuck\",\"code\":\"9919000109983\",\"price\":88001,\"tax\":\"0\",\"image\":\"12d0253a1714c06be8edce5d33dafbdc.png\",\"option\":\"1\",\"options\":[{\"id\":\"1\",\"name\":\"size 58\",\"price\":\"1.0000\",\"total_quantity\":\"100.0000\",\"quantity\":\"100.0000\"}],\"rowid\":\"f3b6f6432767e1a743d632b824aa8ecb\",\"row_tax\":\"0.0000\",\"subtotal\":\"88001.0000\"}}'),
('58178c524d49f2726a71184c325afc71', '1588215788', NULL, '{\"cart_total\":88001,\"total_item_tax\":0,\"total_items\":1,\"total_unique_items\":1,\"fdd3ba5fb957430d5a40020856f74738\":{\"id\":\"2d01a5e58ca5d20f0c2ee9ca71150fd3\",\"product_id\":\"1\",\"qty\":1,\"name\":\"WMeat Daging Rendang (Chuck)\",\"slug\":\"wmeat-daging-rendang-chuck\",\"code\":\"9919000109983\",\"price\":88001,\"tax\":\"0\",\"image\":\"12d0253a1714c06be8edce5d33dafbdc.png\",\"option\":\"1\",\"options\":[{\"id\":\"1\",\"name\":\"size 58\",\"price\":\"1.0000\",\"total_quantity\":\"99.0000\",\"quantity\":\"99.0000\"}],\"rowid\":\"fdd3ba5fb957430d5a40020856f74738\",\"row_tax\":\"0.0000\",\"subtotal\":\"88001.0000\"}}'),
('537487844be3f25925be286a88c348c0', '1588240630', NULL, '{\"cart_total\":56500,\"total_item_tax\":0,\"total_items\":1,\"total_unique_items\":1,\"1729c0dc94d521ca1151e629838fbd9f\":{\"id\":\"6a201017ca8c3e47700b11d3abb44d7d\",\"product_id\":\"21\",\"qty\":1,\"name\":\"Daging Rendang 500 gr\",\"slug\":\"daging-rendang-500-gr\",\"code\":\"OLN001\",\"price\":56500,\"tax\":\"0\",\"image\":\"ac6c9a19f47dfd46cb5afafd760913af.png\",\"option\":false,\"options\":null,\"rowid\":\"1729c0dc94d521ca1151e629838fbd9f\",\"row_tax\":\"0.0000\",\"subtotal\":\"56500.0000\"}}'),
('86149371537560b9a6e8c659fc298950', '1588309130', NULL, '{\"cart_total\":56500,\"total_item_tax\":0,\"total_items\":1,\"total_unique_items\":1,\"6c1772e73ebba361d53a1b370c46869b\":{\"id\":\"9401cbcfefb5e9f7e35b68b17af1ab9e\",\"product_id\":\"21\",\"qty\":1,\"name\":\"Daging Rendang 500 gr\",\"slug\":\"daging-rendang-500-gr\",\"code\":\"OLN001\",\"price\":56500,\"tax\":\"0\",\"image\":\"ac6c9a19f47dfd46cb5afafd760913af.png\",\"option\":false,\"options\":null,\"rowid\":\"6c1772e73ebba361d53a1b370c46869b\",\"row_tax\":\"0.0000\",\"subtotal\":\"56500.0000\"}}'),
('eb3fad588f5d24be44a01f3bdbdf6850', '1588629003', NULL, '{\"cart_total\":112500,\"total_item_tax\":0,\"total_items\":2,\"total_unique_items\":2,\"57064dc4c442cfa87a823e44a4992d9e\":{\"id\":\"f6670748c06f6f6e1587fbf4b6fd922f\",\"product_id\":\"21\",\"qty\":1,\"name\":\"Daging Rendang 500 gr\",\"slug\":\"daging-rendang-500-gr\",\"code\":\"OLN001\",\"price\":56500,\"tax\":\"0\",\"image\":\"ac6c9a19f47dfd46cb5afafd760913af.png\",\"option\":false,\"options\":null,\"rowid\":\"57064dc4c442cfa87a823e44a4992d9e\",\"row_tax\":\"0.0000\",\"subtotal\":\"56500.0000\"},\"1e3ab062fc1b855b83b88d1c7c698a41\":{\"id\":\"20e6116a373542ad6934f4ea8afb46bd\",\"product_id\":\"23\",\"qty\":1,\"name\":\"WMeat Daging Slice (Yakiniku Sukiyaki Shabu) Murah - 500 gr\",\"slug\":\"wmeat-daging-slice-yakiniku-sukiyaki-shabu-murah-500-gr\",\"code\":\"OLN005\",\"price\":56000,\"tax\":\"0\",\"image\":\"55c808ba412d43efe21e94aef0b8bd47.jpg\",\"option\":false,\"options\":null,\"rowid\":\"1e3ab062fc1b855b83b88d1c7c698a41\",\"row_tax\":\"0.0000\",\"subtotal\":\"56000.0000\"}}'),
('7e0f1ea5b22b7887c474dae6f370fe49', '1591780074', NULL, '{\"cart_total\":56000,\"total_item_tax\":0,\"total_items\":1,\"total_unique_items\":1,\"395d5afd33f2d5dd58ddbfbb43fd72b9\":{\"id\":\"0e63945aabf097cd1563470cf2f7a5a0\",\"product_id\":\"23\",\"qty\":1,\"name\":\"WMeat Daging Slice (Yakiniku Sukiyaki Shabu) Murah - 500 gr\",\"slug\":\"wmeat-daging-slice-yakiniku-sukiyaki-shabu-murah-500-gr\",\"code\":\"OLN005\",\"price\":56000,\"tax\":\"0\",\"image\":\"55c808ba412d43efe21e94aef0b8bd47.jpg\",\"option\":false,\"options\":null,\"rowid\":\"395d5afd33f2d5dd58ddbfbb43fd72b9\",\"row_tax\":\"0.0000\",\"subtotal\":\"56000.0000\"}}'),
('5ca19cc780716293b08bd22f322fe538', '1588931211', NULL, '{\"cart_total\":56500,\"total_item_tax\":0,\"total_items\":1,\"total_unique_items\":1,\"6283d3c433fcbc6b3fabf1c6e2179a86\":{\"id\":\"ba97aeaffd3c1c404b089fb3df9eb035\",\"product_id\":\"21\",\"qty\":1,\"name\":\"Daging Rendang 500 gr\",\"slug\":\"daging-rendang-500-gr\",\"code\":\"OLN001\",\"price\":56500,\"tax\":\"0\",\"image\":\"9b81e0d3ae936790beb2d1d1af52efe7.jpg\",\"option\":false,\"options\":null,\"rowid\":\"6283d3c433fcbc6b3fabf1c6e2179a86\",\"row_tax\":\"0.0000\",\"subtotal\":\"56500.0000\"}}'),
('becb9f49c10b2b4dbe6ec01ecd748334', '1590953073', NULL, '{\"cart_total\":100000,\"total_item_tax\":0,\"total_items\":1,\"total_unique_items\":1,\"de287c6c99d02231c63be6a730b6ddc7\":{\"id\":\"c34df83ed3d9916deda331598b23ffaf\",\"product_id\":\"24\",\"qty\":1,\"name\":\"WMeat Buntut Sapi \\/ Beef Oxtail Murah - 1 kg\",\"slug\":\"wmeat-buntut-sapi-beef-oxtail-murah-1-kg\",\"code\":\"OLN018\",\"price\":100000,\"tax\":\"0\",\"image\":\"2a5428f37d01e3b7137f64db3ccc3580.png\",\"option\":false,\"options\":null,\"rowid\":\"de287c6c99d02231c63be6a730b6ddc7\",\"row_tax\":\"0.0000\",\"subtotal\":\"100000.0000\"}}'),
('26fbd90a8244e40458765c2092d788d8', '1593143176', NULL, '{\"cart_total\":500000,\"total_item_tax\":0,\"total_items\":5,\"total_unique_items\":1,\"2e42f34ba2e47d70da48a69aaea3db57\":{\"id\":\"4b4707ba08ec59ba7fb4a3fd86507848\",\"product_id\":\"24\",\"qty\":5,\"name\":\"WMeat Buntut Sapi \\/ Beef Oxtail Murah - 1 kg\",\"slug\":\"wmeat-buntut-sapi-beef-oxtail-murah-1-kg\",\"code\":\"OLN018\",\"price\":100000,\"tax\":\"0\",\"image\":\"2a5428f37d01e3b7137f64db3ccc3580.png\",\"option\":false,\"options\":null,\"rowid\":\"2e42f34ba2e47d70da48a69aaea3db57\",\"row_tax\":\"0.0000\",\"subtotal\":\"500000.0000\"}}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_categories`
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
-- Dumping data untuk tabel `sma_categories`
--

INSERT INTO `sma_categories` (`id`, `code`, `name`, `image`, `parent_id`, `slug`, `description`) VALUES
(11, 'DG001', 'Daging', '7d7d5d9156717f196f3739f6292477a9.jpg', 0, 'daging', 'daging sapi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_combo_items`
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
-- Struktur dari tabel `sma_companies`
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
  `invoice_footer` text,
  `payment_term` int(11) DEFAULT '0',
  `logo` varchar(255) DEFAULT 'logo.png',
  `award_points` int(11) DEFAULT '0',
  `deposit_amount` decimal(25,4) DEFAULT NULL,
  `price_group_id` int(11) DEFAULT NULL,
  `price_group_name` varchar(50) DEFAULT NULL,
  `gst_no` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_companies`
--

INSERT INTO `sma_companies` (`id`, `group_id`, `group_name`, `customer_group_id`, `customer_group_name`, `name`, `company`, `vat_no`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `invoice_footer`, `payment_term`, `logo`, `award_points`, `deposit_amount`, `price_group_id`, `price_group_name`, `gst_no`) VALUES
(6, NULL, 'biller', NULL, NULL, 'WTouch', 'WTouch', '', 'Jl. Raya Cilangkap No.58,', 'Jakarta Timur', 'DKI Jakarta', '13870', 'Indonesia', '0811 1109 554', 'wmeat.shop@gmail.com', '', '', '', '', '', '', '', 0, 'imageedit_3_256726727.png', 0, NULL, NULL, NULL, ''),
(7, 3, 'customer', 1, 'General', 'arie nugraha', 'wmp', '', 'Jakarta', 'jakarta', '', '', '', '087771187604', 'nugis999@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 1, 'Default', ''),
(8, 3, 'customer', 1, 'General', 'john nugraha', 'wmp', NULL, NULL, NULL, NULL, NULL, NULL, '087771187604', 'ariesnugs999@gmai.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'logo.png', 0, NULL, 1, 'Default', NULL),
(9, 3, 'customer', 1, 'General', 'Suhar tanto', 'Widodo Makmur Perkasa', NULL, NULL, NULL, NULL, NULL, NULL, '0857-7771-4746', 'anto@wmp-group.co.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'logo.png', 0, NULL, 1, 'Default', NULL),
(10, NULL, '', 1, 'General', 'Nugie', 'Wmp', NULL, '1<br>2', 'Cilangkap', 'Jakarta', '12120', 'Indonesia', '02175375375', 'Bayoewa@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'logo.png', 0, NULL, 1, 'Default', NULL),
(11, 3, 'customer', 1, 'General', 'Sahnita Regina Ginting', 'Cianjur Arta Makmur', 'w', 'Jalan Raya ', '12434', 'we2t', '\';welr\'', '\'\'twet3t', '082161305343', 'reginasahnita@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'logo.png', 0, NULL, 1, 'Default', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_costing`
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
  `inventory` tinyint(1) DEFAULT '0',
  `overselling` tinyint(1) DEFAULT '0',
  `option_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_costing`
--

INSERT INTO `sma_costing` (`id`, `date`, `product_id`, `sale_item_id`, `sale_id`, `purchase_item_id`, `quantity`, `purchase_net_unit_cost`, `purchase_unit_cost`, `sale_net_unit_price`, `sale_unit_price`, `quantity_balance`, `inventory`, `overselling`, `option_id`) VALUES
(7, '2020-05-05', 21, 9, 9, 2, '1.0000', '0.0000', '0.0000', '56500.0000', '56500.0000', '21.0000', 1, 0, NULL),
(8, '2020-05-05', 21, 10, 10, 2, '1.0000', '0.0000', '0.0000', '56500.0000', '56500.0000', '20.0000', 1, 0, NULL),
(9, '2020-05-05', 22, 15, 13, 3, '1.0000', '0.0000', '0.0000', '88000.0000', '88000.0000', '10.0000', 1, 0, NULL),
(10, '2020-05-05', 21, 16, 13, 2, '1.0000', '0.0000', '0.0000', '56500.0000', '56500.0000', '19.0000', 1, 0, NULL),
(11, '2020-05-05', 21, 17, 14, 2, '1.0000', '0.0000', '0.0000', '56500.0000', '56500.0000', '18.0000', 1, 0, NULL),
(12, '2020-05-05', 22, 18, 15, 3, '1.0000', '0.0000', '0.0000', '88000.0000', '88000.0000', '9.0000', 1, 0, NULL),
(13, '2020-05-06', 21, 19, 16, 2, '1.0000', '0.0000', '0.0000', '56500.0000', '56500.0000', '17.0000', 1, 0, NULL),
(14, '2020-05-06', 21, 20, 17, 2, '1.0000', '0.0000', '0.0000', '56500.0000', '56500.0000', '16.0000', 1, 0, NULL),
(15, '2020-05-08', 21, 21, 18, 2, '1.0000', '0.0000', '0.0000', '56500.0000', '56500.0000', '15.0000', 1, 0, NULL),
(16, '2020-05-14', 21, 26, 21, 2, '2.0000', '0.0000', '0.0000', '56500.0000', '56500.0000', '13.0000', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_currencies`
--

CREATE TABLE `sma_currencies` (
  `id` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(55) NOT NULL,
  `rate` decimal(12,4) NOT NULL,
  `auto_update` tinyint(1) NOT NULL DEFAULT '0',
  `symbol` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_currencies`
--

INSERT INTO `sma_currencies` (`id`, `code`, `name`, `rate`, `auto_update`, `symbol`) VALUES
(2, 'IDR', 'Rupiah', '1.0000', 0, 'Rp');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_customer_groups`
--

CREATE TABLE `sma_customer_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `percent` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_customer_groups`
--

INSERT INTO `sma_customer_groups` (`id`, `name`, `percent`) VALUES
(1, 'General', 0),
(2, 'Reseller', -5),
(3, 'Distributor', -15),
(4, 'New Customer (+10)', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_date_format`
--

CREATE TABLE `sma_date_format` (
  `id` int(11) NOT NULL,
  `js` varchar(20) NOT NULL,
  `php` varchar(20) NOT NULL,
  `sql` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_date_format`
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
-- Struktur dari tabel `sma_deliveries`
--

CREATE TABLE `sma_deliveries` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
-- Struktur dari tabel `sma_deposits`
--

CREATE TABLE `sma_deposits` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
-- Struktur dari tabel `sma_expenses`
--

CREATE TABLE `sma_expenses` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
-- Struktur dari tabel `sma_expense_categories`
--

CREATE TABLE `sma_expense_categories` (
  `id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_expense_categories`
--

INSERT INTO `sma_expense_categories` (`id`, `code`, `name`) VALUES
(1, '99', 'Category');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_gift_cards`
--

CREATE TABLE `sma_gift_cards` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
-- Struktur dari tabel `sma_gift_card_topups`
--

CREATE TABLE `sma_gift_card_topups` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `card_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_groups`
--

CREATE TABLE `sma_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_groups`
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
-- Struktur dari tabel `sma_login_attempts`
--

CREATE TABLE `sma_login_attempts` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_migrations`
--

CREATE TABLE `sma_migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_migrations`
--

INSERT INTO `sma_migrations` (`version`) VALUES
(315);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_notifications`
--

CREATE TABLE `sma_notifications` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `from_date` datetime DEFAULT NULL,
  `till_date` datetime DEFAULT NULL,
  `scope` tinyint(1) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_order_ref`
--

CREATE TABLE `sma_order_ref` (
  `ref_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `so` int(11) NOT NULL DEFAULT '1',
  `qu` int(11) NOT NULL DEFAULT '1',
  `po` int(11) NOT NULL DEFAULT '1',
  `to` int(11) NOT NULL DEFAULT '1',
  `pos` int(11) NOT NULL DEFAULT '1',
  `do` int(11) NOT NULL DEFAULT '1',
  `pay` int(11) NOT NULL DEFAULT '1',
  `re` int(11) NOT NULL DEFAULT '1',
  `rep` int(11) NOT NULL DEFAULT '1',
  `ex` int(11) NOT NULL DEFAULT '1',
  `ppay` int(11) NOT NULL DEFAULT '1',
  `qa` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_order_ref`
--

INSERT INTO `sma_order_ref` (`ref_id`, `date`, `so`, `qu`, `po`, `to`, `pos`, `do`, `pay`, `re`, `rep`, `ex`, `ppay`, `qa`) VALUES
(1, '2015-03-01', 8, 2, 1, 1, 15, 2, 14, 1, 1, 1, 1, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_pages`
--

CREATE TABLE `sma_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `title` varchar(60) NOT NULL,
  `description` varchar(180) NOT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `body` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_no` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_payments`
--

CREATE TABLE `sma_payments` (
  `id` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
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
  `pos_paid` decimal(25,4) DEFAULT '0.0000',
  `pos_balance` decimal(25,4) DEFAULT '0.0000',
  `approval_code` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_payments`
--

INSERT INTO `sma_payments` (`id`, `date`, `sale_id`, `return_id`, `purchase_id`, `reference_no`, `transaction_id`, `paid_by`, `cheque_no`, `cc_no`, `cc_holder`, `cc_month`, `cc_year`, `cc_type`, `amount`, `currency`, `created_by`, `attachment`, `type`, `note`, `pos_paid`, `pos_balance`, `approval_code`) VALUES
(7, '2020-05-05 07:00:11', 9, NULL, NULL, 'IPAY2020/05/0006', NULL, 'cash', '', '', '', '', '', '', '56500.0000', NULL, 1, NULL, 'received', '', '56500.0000', '0.0000', NULL),
(8, '2020-05-05 07:23:22', 10, NULL, NULL, 'IPAY2020/05/0007', NULL, 'cash', '', '', '', '', '', '', '56500.0000', NULL, 1, NULL, 'received', '', '56500.0000', '0.0000', NULL),
(9, '2020-05-05 07:28:10', 13, NULL, NULL, 'IPAY2020/05/0008', NULL, 'cash', '', '', '', '', '', '', '144500.0000', NULL, 1, NULL, 'received', 'H8h', '144500.0000', '0.0000', NULL),
(10, '2020-05-05 07:46:21', 15, NULL, NULL, 'IPAY2020/05/0009', NULL, 'cash', '', '', '', '', '', '', '88000.0000', NULL, 1, NULL, 'received', '', '88000.0000', '0.0000', NULL),
(11, '2020-05-06 04:12:56', 16, NULL, NULL, 'IPAY2020/05/0010', NULL, 'cash', '', '', '', '', '', '', '56500.0000', NULL, 1, NULL, 'received', '', '56500.0000', '0.0000', NULL),
(12, '2020-05-06 04:32:04', 17, NULL, NULL, 'IPAY2020/05/0011', NULL, 'cash', '', '', '', '', '', '', '56500.0000', NULL, 1, NULL, 'received', '', '56500.0000', '0.0000', NULL),
(13, '2020-05-08 08:07:47', 18, NULL, NULL, 'IPAY2020/05/0012', NULL, 'cash', '', '', '', '', '', '', '56500.0000', NULL, 1, NULL, 'received', '', '56500.0000', '0.0000', NULL),
(14, '2020-05-14 05:11:12', 21, NULL, NULL, 'IPAY2020/05/0013', NULL, 'cash', '', '', '', '', '', '', '113000.0000', NULL, 1, NULL, 'received', '', '113000.0000', '0.0000', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_paypal`
--

CREATE TABLE `sma_paypal` (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `paypal_currency` varchar(3) NOT NULL DEFAULT 'USD',
  `fixed_charges` decimal(25,4) NOT NULL DEFAULT '2.0000',
  `extra_charges_my` decimal(25,4) NOT NULL DEFAULT '3.9000',
  `extra_charges_other` decimal(25,4) NOT NULL DEFAULT '4.4000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_paypal`
--

INSERT INTO `sma_paypal` (`id`, `active`, `account_email`, `paypal_currency`, `fixed_charges`, `extra_charges_my`, `extra_charges_other`) VALUES
(1, 1, 'mypaypal@paypal.com', 'USD', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_permissions`
--

CREATE TABLE `sma_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `products-index` tinyint(1) DEFAULT '0',
  `products-add` tinyint(1) DEFAULT '0',
  `products-edit` tinyint(1) DEFAULT '0',
  `products-delete` tinyint(1) DEFAULT '0',
  `products-cost` tinyint(1) DEFAULT '0',
  `products-price` tinyint(1) DEFAULT '0',
  `quotes-index` tinyint(1) DEFAULT '0',
  `quotes-add` tinyint(1) DEFAULT '0',
  `quotes-edit` tinyint(1) DEFAULT '0',
  `quotes-pdf` tinyint(1) DEFAULT '0',
  `quotes-email` tinyint(1) DEFAULT '0',
  `quotes-delete` tinyint(1) DEFAULT '0',
  `sales-index` tinyint(1) DEFAULT '0',
  `sales-add` tinyint(1) DEFAULT '0',
  `sales-edit` tinyint(1) DEFAULT '0',
  `sales-pdf` tinyint(1) DEFAULT '0',
  `sales-email` tinyint(1) DEFAULT '0',
  `sales-delete` tinyint(1) DEFAULT '0',
  `purchases-index` tinyint(1) DEFAULT '0',
  `purchases-add` tinyint(1) DEFAULT '0',
  `purchases-edit` tinyint(1) DEFAULT '0',
  `purchases-pdf` tinyint(1) DEFAULT '0',
  `purchases-email` tinyint(1) DEFAULT '0',
  `purchases-delete` tinyint(1) DEFAULT '0',
  `transfers-index` tinyint(1) DEFAULT '0',
  `transfers-add` tinyint(1) DEFAULT '0',
  `transfers-edit` tinyint(1) DEFAULT '0',
  `transfers-pdf` tinyint(1) DEFAULT '0',
  `transfers-email` tinyint(1) DEFAULT '0',
  `transfers-delete` tinyint(1) DEFAULT '0',
  `customers-index` tinyint(1) DEFAULT '0',
  `customers-add` tinyint(1) DEFAULT '0',
  `customers-edit` tinyint(1) DEFAULT '0',
  `customers-delete` tinyint(1) DEFAULT '0',
  `suppliers-index` tinyint(1) DEFAULT '0',
  `suppliers-add` tinyint(1) DEFAULT '0',
  `suppliers-edit` tinyint(1) DEFAULT '0',
  `suppliers-delete` tinyint(1) DEFAULT '0',
  `sales-deliveries` tinyint(1) DEFAULT '0',
  `sales-add_delivery` tinyint(1) DEFAULT '0',
  `sales-edit_delivery` tinyint(1) DEFAULT '0',
  `sales-delete_delivery` tinyint(1) DEFAULT '0',
  `sales-email_delivery` tinyint(1) DEFAULT '0',
  `sales-pdf_delivery` tinyint(1) DEFAULT '0',
  `sales-gift_cards` tinyint(1) DEFAULT '0',
  `sales-add_gift_card` tinyint(1) DEFAULT '0',
  `sales-edit_gift_card` tinyint(1) DEFAULT '0',
  `sales-delete_gift_card` tinyint(1) DEFAULT '0',
  `pos-index` tinyint(1) DEFAULT '0',
  `sales-return_sales` tinyint(1) DEFAULT '0',
  `reports-index` tinyint(1) DEFAULT '0',
  `reports-warehouse_stock` tinyint(1) DEFAULT '0',
  `reports-quantity_alerts` tinyint(1) DEFAULT '0',
  `reports-expiry_alerts` tinyint(1) DEFAULT '0',
  `reports-products` tinyint(1) DEFAULT '0',
  `reports-daily_sales` tinyint(1) DEFAULT '0',
  `reports-monthly_sales` tinyint(1) DEFAULT '0',
  `reports-sales` tinyint(1) DEFAULT '0',
  `reports-payments` tinyint(1) DEFAULT '0',
  `reports-purchases` tinyint(1) DEFAULT '0',
  `reports-profit_loss` tinyint(1) DEFAULT '0',
  `reports-customers` tinyint(1) DEFAULT '0',
  `reports-suppliers` tinyint(1) DEFAULT '0',
  `reports-staff` tinyint(1) DEFAULT '0',
  `reports-register` tinyint(1) DEFAULT '0',
  `sales-payments` tinyint(1) DEFAULT '0',
  `purchases-payments` tinyint(1) DEFAULT '0',
  `purchases-expenses` tinyint(1) DEFAULT '0',
  `products-adjustments` tinyint(1) NOT NULL DEFAULT '0',
  `bulk_actions` tinyint(1) NOT NULL DEFAULT '0',
  `customers-deposits` tinyint(1) NOT NULL DEFAULT '0',
  `customers-delete_deposit` tinyint(1) NOT NULL DEFAULT '0',
  `products-barcode` tinyint(1) NOT NULL DEFAULT '0',
  `purchases-return_purchases` tinyint(1) NOT NULL DEFAULT '0',
  `reports-expenses` tinyint(1) NOT NULL DEFAULT '0',
  `reports-daily_purchases` tinyint(1) DEFAULT '0',
  `reports-monthly_purchases` tinyint(1) DEFAULT '0',
  `products-stock_count` tinyint(1) DEFAULT '0',
  `edit_price` tinyint(1) DEFAULT '0',
  `returns-index` tinyint(1) DEFAULT '0',
  `returns-add` tinyint(1) DEFAULT '0',
  `returns-edit` tinyint(1) DEFAULT '0',
  `returns-delete` tinyint(1) DEFAULT '0',
  `returns-email` tinyint(1) DEFAULT '0',
  `returns-pdf` tinyint(1) DEFAULT '0',
  `reports-tax` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_permissions`
--

INSERT INTO `sma_permissions` (`id`, `group_id`, `products-index`, `products-add`, `products-edit`, `products-delete`, `products-cost`, `products-price`, `quotes-index`, `quotes-add`, `quotes-edit`, `quotes-pdf`, `quotes-email`, `quotes-delete`, `sales-index`, `sales-add`, `sales-edit`, `sales-pdf`, `sales-email`, `sales-delete`, `purchases-index`, `purchases-add`, `purchases-edit`, `purchases-pdf`, `purchases-email`, `purchases-delete`, `transfers-index`, `transfers-add`, `transfers-edit`, `transfers-pdf`, `transfers-email`, `transfers-delete`, `customers-index`, `customers-add`, `customers-edit`, `customers-delete`, `suppliers-index`, `suppliers-add`, `suppliers-edit`, `suppliers-delete`, `sales-deliveries`, `sales-add_delivery`, `sales-edit_delivery`, `sales-delete_delivery`, `sales-email_delivery`, `sales-pdf_delivery`, `sales-gift_cards`, `sales-add_gift_card`, `sales-edit_gift_card`, `sales-delete_gift_card`, `pos-index`, `sales-return_sales`, `reports-index`, `reports-warehouse_stock`, `reports-quantity_alerts`, `reports-expiry_alerts`, `reports-products`, `reports-daily_sales`, `reports-monthly_sales`, `reports-sales`, `reports-payments`, `reports-purchases`, `reports-profit_loss`, `reports-customers`, `reports-suppliers`, `reports-staff`, `reports-register`, `sales-payments`, `purchases-payments`, `purchases-expenses`, `products-adjustments`, `bulk_actions`, `customers-deposits`, `customers-delete_deposit`, `products-barcode`, `purchases-return_purchases`, `reports-expenses`, `reports-daily_purchases`, `reports-monthly_purchases`, `products-stock_count`, `edit_price`, `returns-index`, `returns-add`, `returns-edit`, `returns-delete`, `returns-email`, `returns-pdf`, `reports-tax`) VALUES
(1, 5, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 7, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_pos_register`
--

CREATE TABLE `sma_pos_register` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `cash_in_hand` decimal(25,4) NOT NULL,
  `status` varchar(10) NOT NULL,
  `total_cash` decimal(25,4) DEFAULT NULL,
  `total_cheques` int(11) DEFAULT NULL,
  `total_cc_slips` int(11) DEFAULT NULL,
  `total_cash_submitted` decimal(25,4) DEFAULT NULL,
  `total_cheques_submitted` int(11) DEFAULT NULL,
  `total_cc_slips_submitted` int(11) DEFAULT NULL,
  `note` text,
  `closed_at` timestamp NULL DEFAULT NULL,
  `transfer_opened_bills` varchar(50) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_pos_register`
--

INSERT INTO `sma_pos_register` (`id`, `date`, `user_id`, `cash_in_hand`, `status`, `total_cash`, `total_cheques`, `total_cc_slips`, `total_cash_submitted`, `total_cheques_submitted`, `total_cc_slips_submitted`, `note`, `closed_at`, `transfer_opened_bills`, `closed_by`) VALUES
(1, '2020-04-29 06:24:17', 1, '5000.0000', 'close', '5000.0000', 0, 0, '5000.0000', 0, 0, '', '2020-04-30 06:55:32', NULL, 1),
(2, '2020-04-30 06:55:48', 1, '500000.0000', 'close', '553675.0000', 0, 0, '553675.0000', 0, 0, '', '2020-04-30 07:08:07', NULL, 1),
(3, '2020-04-30 08:31:08', 1, '5000.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_pos_settings`
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
  `tooltips` tinyint(1) DEFAULT '1',
  `paypal_pro` tinyint(1) DEFAULT '0',
  `stripe` tinyint(1) DEFAULT '0',
  `rounding` tinyint(1) DEFAULT '0',
  `char_per_line` tinyint(4) DEFAULT '42',
  `pin_code` varchar(20) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT 'purchase_code',
  `envato_username` varchar(50) DEFAULT 'envato_username',
  `version` varchar(10) DEFAULT '3.4.25',
  `after_sale_page` tinyint(1) DEFAULT '0',
  `item_order` tinyint(1) DEFAULT '0',
  `authorize` tinyint(1) DEFAULT '0',
  `toggle_brands_slider` varchar(55) DEFAULT NULL,
  `remote_printing` tinyint(1) DEFAULT '1',
  `printer` int(11) DEFAULT NULL,
  `order_printers` varchar(55) DEFAULT NULL,
  `auto_print` tinyint(1) DEFAULT '0',
  `customer_details` tinyint(1) DEFAULT NULL,
  `local_printers` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_pos_settings`
--

INSERT INTO `sma_pos_settings` (`pos_id`, `cat_limit`, `pro_limit`, `default_category`, `default_customer`, `default_biller`, `display_time`, `cf_title1`, `cf_title2`, `cf_value1`, `cf_value2`, `receipt_printer`, `cash_drawer_codes`, `focus_add_item`, `add_manual_product`, `customer_selection`, `add_customer`, `toggle_category_slider`, `toggle_subcategory_slider`, `cancel_sale`, `suspend_sale`, `print_items_list`, `finalize_sale`, `today_sale`, `open_hold_bills`, `close_register`, `keyboard`, `pos_printers`, `java_applet`, `product_button_color`, `tooltips`, `paypal_pro`, `stripe`, `rounding`, `char_per_line`, `pin_code`, `purchase_code`, `envato_username`, `version`, `after_sale_page`, `item_order`, `authorize`, `toggle_brands_slider`, `remote_printing`, `printer`, `order_printers`, `auto_print`, `customer_details`, `local_printers`) VALUES
(1, 22, 20, 11, 7, 6, '1', '', '', '', '', '1', 'x1C', 'Ctrl+F3', 'Ctrl+Shift+M', 'Ctrl+Shift+C', 'Ctrl+Shift+A', 'Ctrl+F11', 'Ctrl+F12', 'F4', 'F7', 'F9', 'F8', 'Ctrl+F1', 'Ctrl+F2', 'Ctrl+F10', 1, NULL, 0, 'default', 1, 0, 0, 0, 42, '12345678', 'purchase_code', 'envato_username', '3.4.25', 0, 0, 0, '', 1, 1, 'null', 1, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_price_groups`
--

CREATE TABLE `sma_price_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_price_groups`
--

INSERT INTO `sma_price_groups` (`id`, `name`) VALUES
(1, 'Default');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_printers`
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
-- Dumping data untuk tabel `sma_printers`
--

INSERT INTO `sma_printers` (`id`, `title`, `type`, `profile`, `char_per_line`, `path`, `ip_address`, `port`) VALUES
(1, 'POS ', 'windows', 'default', 0, 'smb://ITPC//POS80', '', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_products`
--

CREATE TABLE `sma_products` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unit` int(11) DEFAULT NULL,
  `cost` decimal(25,4) DEFAULT NULL,
  `price` decimal(25,4) NOT NULL,
  `alert_quantity` decimal(15,4) DEFAULT '20.0000',
  `image` varchar(255) DEFAULT 'no_image.png',
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `cf1` varchar(255) DEFAULT NULL,
  `cf2` varchar(255) DEFAULT NULL,
  `cf3` varchar(255) DEFAULT NULL,
  `cf4` varchar(255) DEFAULT NULL,
  `cf5` varchar(255) DEFAULT NULL,
  `cf6` varchar(255) DEFAULT NULL,
  `quantity` decimal(15,4) DEFAULT '0.0000',
  `tax_rate` int(11) DEFAULT NULL,
  `track_quantity` tinyint(1) DEFAULT '1',
  `details` varchar(1000) DEFAULT NULL,
  `warehouse` int(11) DEFAULT NULL,
  `barcode_symbology` varchar(55) NOT NULL DEFAULT 'code128',
  `file` varchar(100) DEFAULT NULL,
  `product_details` text,
  `tax_method` tinyint(1) DEFAULT '0',
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
  `promotion` tinyint(1) DEFAULT '0',
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
  `views` int(11) NOT NULL DEFAULT '0',
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `second_name` varchar(255) DEFAULT NULL,
  `hide_pos` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_products`
--

INSERT INTO `sma_products` (`id`, `code`, `name`, `unit`, `cost`, `price`, `alert_quantity`, `image`, `category_id`, `subcategory_id`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `quantity`, `tax_rate`, `track_quantity`, `details`, `warehouse`, `barcode_symbology`, `file`, `product_details`, `tax_method`, `type`, `supplier1`, `supplier1price`, `supplier2`, `supplier2price`, `supplier3`, `supplier3price`, `supplier4`, `supplier4price`, `supplier5`, `supplier5price`, `promotion`, `promo_price`, `start_date`, `end_date`, `supplier1_part_no`, `supplier2_part_no`, `supplier3_part_no`, `supplier4_part_no`, `supplier5_part_no`, `sale_unit`, `purchase_unit`, `brand`, `slug`, `featured`, `weight`, `hsn_code`, `views`, `hide`, `second_name`, `hide_pos`) VALUES
(21, 'OLN001', 'Daging Rendang 500 gr', 21, '0.0000', '56500.0000', '1.0000', '9b81e0d3ae936790beb2d1d1af52efe7.jpg', 11, NULL, '', '', '', '', '', '', '13.0000', NULL, 1, '', NULL, 'code128', '', '<p>Daging Sapi Lokal - Chuck<br>Packing per pack 500 gr<br>Produk dikemas dalam kondisi beku</p>', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 12, 'daging-rendang-500-gr', 1, '0.0000', NULL, 16, 0, '', 0),
(22, 'OLN002', 'Daging Rendang 800 gr', 21, '0.0000', '88000.0000', '1.0000', 'cb32e726cd77e0fc8649e7e9102f2437.png', 11, NULL, '', '', '', '', '', '', '9.0000', NULL, 1, '', NULL, 'code128', '', '<p>Daging Sapi Lokal - Chuck<br>Packing per pack 800 gr<br>Produk dikemas dalam kondisi beku</p>', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 12, 'daging-rendang-800-gr', NULL, '0.8000', NULL, 4, 0, '', 0),
(23, 'OLN005', 'WMeat Daging Slice (Yakiniku Sukiyaki Shabu) Murah - 500 gr', 21, '0.0000', '56000.0000', '0.0000', '55c808ba412d43efe21e94aef0b8bd47.jpg', 11, NULL, '', '', '', '', '', '', '3.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 12, 'wmeat-daging-slice-yakiniku-sukiyaki-shabu-murah-500-gr', 1, '0.5000', NULL, 14, 0, '', 0),
(24, 'OLN018', 'WMeat Buntut Sapi / Beef Oxtail Murah - 1 kg', 21, '0.0000', '100000.0000', '0.0000', '2a5428f37d01e3b7137f64db3ccc3580.png', 11, NULL, '', '', '', '', '', '', '22.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 12, 'wmeat-buntut-sapi-beef-oxtail-murah-1-kg', 1, '1.0000', NULL, 14, 0, '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_product_photos`
--

CREATE TABLE `sma_product_photos` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_product_prices`
--

CREATE TABLE `sma_product_prices` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price_group_id` int(11) NOT NULL,
  `price` decimal(25,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_product_variants`
--

CREATE TABLE `sma_product_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `cost` decimal(25,4) DEFAULT NULL,
  `price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_product_variants`
--

INSERT INTO `sma_product_variants` (`id`, `product_id`, `name`, `cost`, `price`, `quantity`) VALUES
(3, 2, 'size 59', NULL, '0.0000', NULL),
(4, 2, 'size 62', NULL, '0.0000', NULL),
(5, 3, 'size 49', NULL, '0.0000', NULL),
(6, 3, 'size 50', NULL, '0.0000', NULL),
(7, 3, 'size 51', NULL, '0.0000', NULL),
(8, 3, 'size 52', NULL, '0.0000', NULL),
(9, 3, 'size 54', NULL, '0.0000', NULL),
(10, 4, 'size 54', NULL, '0.0000', NULL),
(11, 4, 'size 57', NULL, '0.0000', NULL),
(12, 5, 'size 56', NULL, '0.0000', NULL),
(13, 5, 'size 54', NULL, '0.0000', NULL),
(14, 5, 'size 59', NULL, '0.0000', NULL),
(15, 6, 'size 52', NULL, '0.0000', NULL),
(16, 6, 'size 54', NULL, '0.0000', NULL),
(17, 7, 'size 49', NULL, '0.0000', NULL),
(18, 7, 'size 50', NULL, '0.0000', NULL),
(19, 7, 'size 55', NULL, '0.0000', NULL),
(20, 6, 'size 57', NULL, '0.0000', NULL),
(21, 8, 'size 48', NULL, '0.0000', NULL),
(22, 8, 'size 50', NULL, '0.0000', NULL),
(23, 8, 'size 51', NULL, '0.0000', NULL),
(24, 8, 'size 52', NULL, '0.0000', NULL),
(25, 8, 'size 56', NULL, '0.0000', NULL),
(26, 8, 'size 58', NULL, '0.0000', NULL),
(27, 9, 'size 48', NULL, '0.0000', NULL),
(28, 9, 'size 51', NULL, '0.0000', NULL),
(29, 4, 'size 58', NULL, '0.0000', NULL),
(30, 10, 'size 51', NULL, '0.0000', NULL),
(31, 10, 'size 52', NULL, '0.0000', NULL),
(32, 10, 'size 53', NULL, '0.0000', NULL),
(33, 10, 'size 54', NULL, '0.0000', NULL),
(34, 11, 'size 53', NULL, '0.0000', NULL),
(35, 12, 'size 52', NULL, '0.0000', NULL),
(36, 12, 'size 54', NULL, '0.0000', NULL),
(37, 12, 'size 63', NULL, '0.0000', NULL),
(38, 15, 'size 54', NULL, '0.0000', NULL),
(39, 15, 'size 59', NULL, '0.0000', NULL),
(40, 16, 'size 50', NULL, '0.0000', NULL),
(41, 16, 'size 51', NULL, '0.0000', NULL),
(42, 16, 'size 52', NULL, '0.0000', NULL),
(43, 17, 'size 56', NULL, '0.0000', NULL),
(44, 17, 'size 59', NULL, '0.0000', NULL),
(45, 18, 'size 52', NULL, '0.0000', NULL),
(46, 18, 'size 56', NULL, '0.0000', NULL),
(47, 19, 'size 49', NULL, '0.0000', NULL),
(48, 19, 'size 51', NULL, '0.0000', NULL),
(49, 19, 'size 54', NULL, '0.0000', NULL),
(50, 19, 'size 56', NULL, '0.0000', NULL),
(51, 19, 'size 59', NULL, '0.0000', NULL),
(52, 20, 'size 54', NULL, '0.0000', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_promos`
--

CREATE TABLE `sma_promos` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `product2buy` int(11) NOT NULL,
  `product2get` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_purchases`
--

CREATE TABLE `sma_purchases` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `total_tax` decimal(25,4) DEFAULT '0.0000',
  `shipping` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `paid` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `status` varchar(55) DEFAULT '',
  `payment_status` varchar(20) DEFAULT 'pending',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `payment_term` tinyint(4) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `surcharge` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `return_purchase_ref` varchar(55) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `return_purchase_total` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_purchase_items`
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
  `quantity_balance` decimal(15,4) DEFAULT '0.0000',
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
-- Dumping data untuk tabel `sma_purchase_items`
--

INSERT INTO `sma_purchase_items` (`id`, `purchase_id`, `transfer_id`, `product_id`, `product_code`, `product_name`, `option_id`, `net_unit_cost`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `expiry`, `subtotal`, `quantity_balance`, `date`, `status`, `unit_cost`, `real_unit_cost`, `quantity_received`, `supplier_part_no`, `purchase_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `gst`, `cgst`, `sgst`, `igst`) VALUES
(1, NULL, NULL, 1, '9919000109983', 'WMeat Daging Rendang (Chuck)', 1, '0.0000', '100.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '100.0000', '2020-04-29', 'received', '0.0000', '0.0000', '100.0000', NULL, NULL, 21, 'Gram', '100.0000', NULL, NULL, NULL, NULL),
(2, NULL, NULL, 21, 'OLN001', 'Daging Rendang 500 gr', NULL, '0.0000', '22.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '13.0000', '2020-04-30', 'received', '0.0000', '0.0000', '22.0000', NULL, NULL, 21, 'Gram', '22.0000', NULL, NULL, NULL, NULL),
(3, NULL, NULL, 22, 'OLN002', 'Daging Rendang 800 gr', NULL, '0.0000', '11.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '9.0000', '2020-04-30', 'received', '0.0000', '0.0000', '11.0000', NULL, NULL, 21, 'Gram', '11.0000', NULL, NULL, NULL, NULL),
(4, NULL, NULL, 23, 'OLN005', 'WMeat Daging Slice (Yakiniku Sukiyaki Shabu) Murah - 500 gr', NULL, '0.0000', '3.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '3.0000', '2020-05-04', 'received', '0.0000', '0.0000', '3.0000', NULL, NULL, 21, 'Gram', '3.0000', NULL, NULL, NULL, NULL),
(5, NULL, NULL, 24, 'OLN018', 'WMeat Buntut Sapi / Beef Oxtail Murah - 1 kg', NULL, '0.0000', '22.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '22.0000', '2020-05-04', 'received', '0.0000', '0.0000', '22.0000', NULL, NULL, 21, 'Gram', '22.0000', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_quotes`
--

CREATE TABLE `sma_quotes` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `internal_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount` decimal(25,4) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT '0.0000',
  `product_tax` decimal(25,4) DEFAULT '0.0000',
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT NULL,
  `shipping` decimal(25,4) DEFAULT '0.0000',
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
-- Struktur dari tabel `sma_quote_items`
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
-- Struktur dari tabel `sma_returns`
--

CREATE TABLE `sma_returns` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `staff_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount` decimal(25,4) DEFAULT '0.0000',
  `product_tax` decimal(25,4) DEFAULT '0.0000',
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT '0.0000',
  `total_tax` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_items` smallint(6) DEFAULT NULL,
  `paid` decimal(25,4) DEFAULT '0.0000',
  `surcharge` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `attachment` varchar(55) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL,
  `shipping` decimal(25,4) DEFAULT '0.0000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_return_items`
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
-- Struktur dari tabel `sma_sales`
--

CREATE TABLE `sma_sales` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `staff_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount` decimal(25,4) DEFAULT '0.0000',
  `product_tax` decimal(25,4) DEFAULT '0.0000',
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT '0.0000',
  `total_tax` decimal(25,4) DEFAULT '0.0000',
  `shipping` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `sale_status` varchar(20) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `payment_term` tinyint(4) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_items` smallint(6) DEFAULT NULL,
  `pos` tinyint(1) NOT NULL DEFAULT '0',
  `paid` decimal(25,4) DEFAULT '0.0000',
  `return_id` int(11) DEFAULT NULL,
  `surcharge` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `attachment` varchar(55) DEFAULT NULL,
  `return_sale_ref` varchar(55) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `return_sale_total` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `rounding` decimal(10,4) DEFAULT NULL,
  `suspend_note` varchar(255) DEFAULT NULL,
  `api` tinyint(1) DEFAULT '0',
  `shop` tinyint(1) DEFAULT '0',
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
-- Dumping data untuk tabel `sma_sales`
--

INSERT INTO `sma_sales` (`id`, `date`, `reference_no`, `customer_id`, `customer`, `biller_id`, `biller`, `warehouse_id`, `note`, `staff_note`, `total`, `product_discount`, `order_discount_id`, `total_discount`, `order_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `sale_status`, `payment_status`, `payment_term`, `due_date`, `created_by`, `updated_by`, `updated_at`, `total_items`, `pos`, `paid`, `return_id`, `surcharge`, `attachment`, `return_sale_ref`, `sale_id`, `return_sale_total`, `rounding`, `suspend_note`, `api`, `shop`, `address_id`, `reserve_id`, `hash`, `manual_payment`, `cgst`, `sgst`, `igst`, `payment_method`) VALUES
(9, '2020-05-05 07:00:11', 'WTOUCH/POS2020/05/0006', 7, 'wmp', 6, 'WTouch', 1, '', '', '56500.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '56500.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 1, '56500.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'a7cc46ecd2c9ab6583e3a706e0f8bfc244dcf8cd697edff23cd045d951c3c973', NULL, NULL, NULL, NULL, NULL),
(10, '2020-05-05 07:23:22', 'WTOUCH/POS2020/05/0007', 7, 'wmp', 6, 'WTouch', 1, '', '', '56500.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '56500.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 1, '56500.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'fc3be826114763bb7160bbf7ed42a1e08b0e2e88f576c4f72f2c00af77d83eb8', NULL, NULL, NULL, NULL, NULL),
(11, '2020-05-05 07:23:44', 'WTOUCH2020/05/0004', 10, 'Wmp', 6, 'WTouch', 1, '', NULL, '169000.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '169000.0000', 'pending', 'pending', NULL, NULL, NULL, NULL, NULL, 3, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 1, 3, NULL, '0d4ebe0360f2a5c80c22d15f069ae09f9d7230d586f4ef025d319cb3788c0b17', NULL, NULL, NULL, NULL, 'bank'),
(12, '2020-05-05 07:24:58', 'WTOUCH2020/05/0005', 10, 'Wmp', 6, 'WTouch', 1, '', NULL, '113000.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '113000.0000', 'pending', 'pending', NULL, NULL, NULL, NULL, NULL, 2, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 1, 4, NULL, '61e5651b96cb2dd5818f729de5e00294bbf0549e57d750fa6a2b79a1e164050b', NULL, NULL, NULL, NULL, 'cod'),
(13, '2020-05-05 07:28:10', 'WTOUCH/POS2020/05/0008', 7, 'wmp', 6, 'WTouch', 1, 'Ugi', 'Gu', '144500.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '144500.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 2, 1, '144500.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '06fb53aeee02b85f9f7eb359e6282eb2819eb16cb0fe04d47f03f8e4d3660950', NULL, NULL, NULL, NULL, NULL),
(14, '2020-05-05 07:42:53', 'WTOUCH/POS2020/05/0009', 7, 'wmp', 6, 'WTouch', 1, '', '', '56500.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '56500.0000', 'completed', 'due', 0, NULL, 1, NULL, NULL, 1, 1, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'bfe97f3763624d8c33c5ab53885e076c4efcf1cafff3f8147e9f823d0e252810', NULL, NULL, NULL, NULL, NULL),
(15, '2020-05-05 07:46:21', 'WTOUCH/POS2020/05/0010', 7, 'wmp', 6, 'WTouch', 1, '', '', '88000.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '88000.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 1, '88000.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'b80268b2484eb611633491e92e22be846510f1e047d1b3a3d30db271aa38edc2', NULL, NULL, NULL, NULL, NULL),
(16, '2020-05-06 04:12:56', 'WTOUCH/POS2020/05/0011', 7, 'wmp', 6, 'WTouch', 1, '', '', '56500.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '56500.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 1, '56500.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '14d5e601049f30faeb5f6d45643b2a91f9af068b9a68b049e8f9e32f473b99d2', NULL, NULL, NULL, NULL, NULL),
(17, '2020-05-06 04:32:04', 'WTOUCH/POS2020/05/0012', 7, 'wmp', 6, 'WTouch', 1, '', '', '56500.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '56500.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 1, '56500.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '6d703681203fef0b36446f86e24b37529573512568b65d5c902efa3aa92b0adc', NULL, NULL, NULL, NULL, NULL),
(18, '2020-05-08 08:07:47', 'WTOUCH/POS2020/05/0013', 7, 'wmp', 6, 'WTouch', 1, '', '', '56500.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '56500.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 1, '56500.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '67e8c2a4e298681265ae9aa08bf7381880f5c542beac056e1f147c2d799f8210', NULL, NULL, NULL, NULL, NULL),
(19, '2020-05-08 09:35:38', 'WTOUCH2020/05/0006', 11, 'Cianjur Arta Makmur', 6, 'WTouch', 1, ';lk;', NULL, '113000.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '113000.0000', 'pending', 'pending', NULL, NULL, 8, NULL, NULL, 2, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 1, 5, NULL, 'ab698a01b96fa225483bfa663e4f7671825de0ef875a9c95f2eaa36d90dc5da7', NULL, NULL, NULL, NULL, 'cod'),
(20, '2020-05-10 09:52:58', 'WTOUCH2020/05/0007', 10, 'Wmp', 6, 'WTouch', 1, '', NULL, '232500.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '232500.0000', 'pending', 'pending', NULL, NULL, NULL, NULL, NULL, 3, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 1, 6, NULL, 'ef7b0cbbabda170c263f775cbe9acb79e9f0adc4eededc61aa64d40c00be00c2', NULL, NULL, NULL, NULL, 'cod'),
(21, '2020-05-14 05:11:12', 'WTOUCH/POS2020/05/0014', 7, 'wmp', 6, 'WTouch', 1, '', '', '113000.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '113000.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 2, 1, '113000.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'e3f0fa5d7906b85a17e403919709bd8ed44f89d17b9d52e36c63aec7bce27b92', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_sale_items`
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
-- Dumping data untuk tabel `sma_sale_items`
--

INSERT INTO `sma_sale_items` (`id`, `sale_id`, `product_id`, `product_code`, `product_name`, `product_type`, `option_id`, `net_unit_price`, `unit_price`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `subtotal`, `serial_no`, `real_unit_price`, `sale_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `comment`, `gst`, `cgst`, `sgst`, `igst`) VALUES
(9, 9, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '56500.0000', '56500.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '56500.0000', '', '56500.0000', NULL, 21, 'Gram', '1.0000', '', NULL, NULL, NULL, NULL),
(10, 10, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '56500.0000', '56500.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '56500.0000', '', '56500.0000', NULL, 21, 'Gram', '1.0000', '', NULL, NULL, NULL, NULL),
(11, 11, 23, 'OLN005', 'WMeat Daging Slice (Yakiniku Sukiyaki Shabu) Murah - 500 gr', 'standard', NULL, '56000.0000', '56000.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '56000.0000', NULL, '56000.0000', NULL, 21, 'Gram', '1.0000', NULL, NULL, NULL, NULL, NULL),
(12, 11, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '56500.0000', '56500.0000', '2.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '113000.0000', NULL, '56500.0000', NULL, 21, 'Gram', '2.0000', NULL, NULL, NULL, NULL, NULL),
(13, 12, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '56500.0000', '56500.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '56500.0000', NULL, '56500.0000', NULL, 21, 'Gram', '1.0000', NULL, NULL, NULL, NULL, NULL),
(14, 12, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '56500.0000', '56500.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '56500.0000', NULL, '56500.0000', NULL, 21, 'Gram', '1.0000', NULL, NULL, NULL, NULL, NULL),
(15, 13, 22, 'OLN002', 'Daging Rendang 800 gr', 'standard', NULL, '88000.0000', '88000.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '88000.0000', '', '88000.0000', NULL, 21, 'Gram', '1.0000', '', NULL, NULL, NULL, NULL),
(16, 13, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '56500.0000', '56500.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '56500.0000', '', '56500.0000', NULL, 21, 'Gram', '1.0000', '', NULL, NULL, NULL, NULL),
(17, 14, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '56500.0000', '56500.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '56500.0000', '', '56500.0000', NULL, 21, 'Gram', '1.0000', '', NULL, NULL, NULL, NULL),
(18, 15, 22, 'OLN002', 'Daging Rendang 800 gr', 'standard', NULL, '88000.0000', '88000.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '88000.0000', '', '88000.0000', NULL, 21, 'Gram', '1.0000', '', NULL, NULL, NULL, NULL),
(19, 16, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '56500.0000', '56500.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '56500.0000', '', '56500.0000', NULL, 21, 'Gram', '1.0000', '', NULL, NULL, NULL, NULL),
(20, 17, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '56500.0000', '56500.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '56500.0000', '', '56500.0000', NULL, 21, 'Gram', '1.0000', '', NULL, NULL, NULL, NULL),
(21, 18, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '56500.0000', '56500.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '56500.0000', '', '56500.0000', NULL, 21, 'Gram', '1.0000', '', NULL, NULL, NULL, NULL),
(22, 19, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '56500.0000', '56500.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '56500.0000', NULL, '56500.0000', NULL, 21, 'Gram', '1.0000', NULL, NULL, NULL, NULL, NULL),
(23, 19, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '56500.0000', '56500.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '56500.0000', NULL, '56500.0000', NULL, 21, 'Gram', '1.0000', NULL, NULL, NULL, NULL, NULL),
(24, 20, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '56500.0000', '56500.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '56500.0000', NULL, '56500.0000', NULL, 21, 'Gram', '1.0000', NULL, NULL, NULL, NULL, NULL),
(25, 20, 22, 'OLN002', 'Daging Rendang 800 gr', 'standard', NULL, '88000.0000', '88000.0000', '2.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '176000.0000', NULL, '88000.0000', NULL, 21, 'Gram', '2.0000', NULL, NULL, NULL, NULL, NULL),
(26, 21, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '56500.0000', '56500.0000', '2.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '113000.0000', '', '56500.0000', NULL, 21, 'Gram', '2.0000', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_sessions`
--

CREATE TABLE `sma_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_sessions`
--

INSERT INTO `sma_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('dq0p95vpvlaumhrrf4scu2huvnu5d78c', '103.66.198.42', 1594780150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343738303135303b6572726f727c733a3133373a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f7468656d65732f64656661756c742f73686f702f6173736574732f696d616765732f69636f6e2e706e67223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('egumasaub43002vapkvmjts47ps3fmpi', '207.46.13.237', 1594776811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343737363831313b),
('7fmmokkgo7pcrdarpb9s17nfhjo7efbj', '207.46.13.237', 1594776812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343737363831323b),
('9t4b9n1dlb2lbd9l5s802lel3joq5lg2', '209.17.96.234', 1594777382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343737373338323b),
('rer25n0qrqo5jkemmb1cq85bp02f728t', '207.46.13.237', 1594776811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343737363831313b6572726f727c733a3130353a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f726f626f74732e747874223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('ek8ls3ed42spk6h4r5de0i9hrjck6e6d', '209.17.97.2', 1594768393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343736383339333b),
('7orm3v9132ioqietlk678ur1l83mvirh', '103.66.198.42', 1594725528, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343732353532363b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353934373137393134223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('tvd2nudus7sunq0l5sohhecm0dbjini5', '209.17.97.90', 1594725317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343732353331373b),
('gd8mel1cabjeq2t54kuvm18rat1ipju8', '103.66.198.42', 1594725527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343732353532363b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353934373137393134223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('pvhi71v5h0235m3ajat0vdo1e08672jd', '103.66.198.42', 1594724212, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343732343231323b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353934373137393134223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('v3kf327bob3o1c8640e82rudcmjt9bn3', '103.66.198.42', 1594718222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343731383232323b),
('53020gbhg28oaacs25u09qbu7em3bs87', '103.66.198.42', 1594718222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343731383232323b6572726f727c733a3130363a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f66617669636f6e2e69636f223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('hh8pnq1ekv1bkdu2slru7hi9ofb85ki4', '103.66.198.42', 1594718609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343731383539323b6964656e746974797c733a363a22726567696e61223b757365726e616d657c733a363a22726567696e61223b656d61696c7c733a32333a22726567696e617361686e69746140676d61696c2e636f6d223b757365725f69647c733a313a2238223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353934373138353538223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2233223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c733a323a223131223b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('l8fd1uq1ti7j6gskkir8kukvog2e2mmb', '209.17.96.2', 1594703387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343730333338373b),
('nipaqlt2p7v1q89olr4lno84pfi9rcui', '209.17.96.90', 1594716153, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343731363135333b),
('qn6ltp3librh8gd5ql3u2ck1otd53tn3', '103.66.198.42', 1594718220, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343731383232303b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353931333439333733223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313539343731383133383b),
('tusj8jml7klm74u9ata1nprnqa22ob58', '68.183.203.140', 1594614768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343631343736383b),
('lsf0eou3fsford8vkbkng7au5tl2tvmu', '209.17.97.34', 1594701626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343730313632353b),
('u9spn13lerh770isahnatchna8eah4j7', '68.183.203.140', 1594614767, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343631343736373b6572726f727c733a3132353a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f776f726470726573732f77702d61646d696e2f696e7374616c6c2e706870223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('gd9ts91ugupcgdh57is0elsk1u35lrsi', '68.183.203.140', 1594614766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343631343736363b6572726f727c733a3131353a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f77702d61646d696e2f696e7374616c6c2e706870223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('50d2c8ihiletdct1loasmjj88hp781qn', '68.183.203.140', 1594614767, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343631343736373b),
('anur5lnmvuikrhj8pm1figa3mlkmv5q9', '68.183.203.140', 1594614766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343631343736353b),
('7v3n4vhtvqegcf1pij7uh4bbihn6vo75', '157.55.39.204', 1594594527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343539343532373b),
('k5grhuh7bbqd6m0mfbrbrb3enso4cd2c', '68.183.203.140', 1594614765, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343631343736353b6572726f727c733a3131353a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f77702d61646d696e2f696e7374616c6c2e706870223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('m7ce7esiihuc4g85vpkr4bvilrssa5ee', '66.249.73.142', 1594586674, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343538363637343b),
('i9pj8rll0hg1hc4g11pa7t975ibtqq4l', '66.249.73.140', 1594586674, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343538363637343b),
('l2bpoq4r0ku8bf781pv658h2q5qnvhot', '66.249.73.142', 1594586673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343538363637333b6572726f727c733a3130353a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f726f626f74732e747874223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('5021sscqhlolkc9b57fsfkacq8e9rqto', '40.77.167.146', 1594581981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343538313938313b),
('5855d03b8j9hq4v91uovd5nue6tp0sdo', '::1', 1594799681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343739393338303b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353934373939303930223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('lcn4pc57ca88r3u96duob4crkqkm1ehf', '::1', 1594799949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343739393638343b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353934373939303930223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('bfsnckep7nghu4bnabbibkj5ntshv0l2', '::1', 1594800225, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343739393939383b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353934373939303930223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('mj2r4gftmtspdi9rne42o1bi03b4r28r', '::1', 1594800629, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343830303332383b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353934373939303930223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('cm0ufjs9a94ge63ci1c320uu1fl14t8o', '::1', 1594800816, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343830303632393b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353934373939303930223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('am3b4mnc917rqr7m2b0tkjguk657n02l', '::1', 1594801034, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539343830303935333b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353934373939303930223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b757365725f637372667c733a32303a22674a355633594d454b4e57415074315a536b5255223b);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_settings`
--

CREATE TABLE `sma_settings` (
  `setting_id` int(1) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `logo2` varchar(255) NOT NULL,
  `site_name` varchar(55) NOT NULL,
  `language` varchar(20) NOT NULL,
  `default_warehouse` int(2) NOT NULL,
  `accounting_method` tinyint(4) NOT NULL DEFAULT '0',
  `default_currency` varchar(3) NOT NULL,
  `default_tax_rate` int(2) NOT NULL,
  `rows_per_page` int(2) NOT NULL,
  `version` varchar(10) NOT NULL DEFAULT '1.0',
  `default_tax_rate2` int(11) NOT NULL DEFAULT '0',
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
  `item_addition` tinyint(1) NOT NULL DEFAULT '0',
  `theme` varchar(20) NOT NULL,
  `product_serial` tinyint(4) NOT NULL,
  `default_discount` int(11) NOT NULL,
  `product_discount` tinyint(1) NOT NULL DEFAULT '0',
  `discount_method` tinyint(4) NOT NULL,
  `tax1` tinyint(4) NOT NULL,
  `tax2` tinyint(4) NOT NULL,
  `overselling` tinyint(1) NOT NULL DEFAULT '0',
  `restrict_user` tinyint(4) NOT NULL DEFAULT '0',
  `restrict_calendar` tinyint(4) NOT NULL DEFAULT '0',
  `timezone` varchar(100) DEFAULT NULL,
  `iwidth` int(11) NOT NULL DEFAULT '0',
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
  `bc_fix` tinyint(4) NOT NULL DEFAULT '0',
  `auto_detect_barcode` tinyint(1) NOT NULL DEFAULT '0',
  `captcha` tinyint(1) NOT NULL DEFAULT '1',
  `reference_format` tinyint(1) NOT NULL DEFAULT '1',
  `racks` tinyint(1) DEFAULT '0',
  `attributes` tinyint(1) NOT NULL DEFAULT '0',
  `product_expiry` tinyint(1) NOT NULL DEFAULT '0',
  `decimals` tinyint(2) NOT NULL DEFAULT '2',
  `qty_decimals` tinyint(2) NOT NULL DEFAULT '2',
  `decimals_sep` varchar(2) NOT NULL DEFAULT '.',
  `thousands_sep` varchar(2) NOT NULL DEFAULT ',',
  `invoice_view` tinyint(1) DEFAULT '0',
  `default_biller` int(11) DEFAULT NULL,
  `envato_username` varchar(50) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT NULL,
  `rtl` tinyint(1) DEFAULT '0',
  `each_spent` decimal(15,4) DEFAULT NULL,
  `ca_point` tinyint(4) DEFAULT NULL,
  `each_sale` decimal(15,4) DEFAULT NULL,
  `sa_point` tinyint(4) DEFAULT NULL,
  `update` tinyint(1) DEFAULT '0',
  `sac` tinyint(1) DEFAULT '0',
  `display_all_products` tinyint(1) DEFAULT '0',
  `display_symbol` tinyint(1) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `remove_expired` tinyint(1) DEFAULT '0',
  `barcode_separator` varchar(2) NOT NULL DEFAULT '-',
  `set_focus` tinyint(1) NOT NULL DEFAULT '0',
  `price_group` int(11) DEFAULT NULL,
  `barcode_img` tinyint(1) NOT NULL DEFAULT '1',
  `ppayment_prefix` varchar(20) DEFAULT 'POP',
  `disable_editing` smallint(6) DEFAULT '90',
  `qa_prefix` varchar(55) DEFAULT NULL,
  `update_cost` tinyint(1) DEFAULT NULL,
  `apis` tinyint(1) NOT NULL DEFAULT '0',
  `state` varchar(100) DEFAULT NULL,
  `pdf_lib` varchar(20) DEFAULT 'dompdf'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_settings`
--

INSERT INTO `sma_settings` (`setting_id`, `logo`, `logo2`, `site_name`, `language`, `default_warehouse`, `accounting_method`, `default_currency`, `default_tax_rate`, `rows_per_page`, `version`, `default_tax_rate2`, `dateformat`, `sales_prefix`, `quote_prefix`, `purchase_prefix`, `transfer_prefix`, `delivery_prefix`, `payment_prefix`, `return_prefix`, `returnp_prefix`, `expense_prefix`, `item_addition`, `theme`, `product_serial`, `default_discount`, `product_discount`, `discount_method`, `tax1`, `tax2`, `overselling`, `restrict_user`, `restrict_calendar`, `timezone`, `iwidth`, `iheight`, `twidth`, `theight`, `watermark`, `reg_ver`, `allow_reg`, `reg_notification`, `auto_reg`, `protocol`, `mailpath`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_port`, `smtp_crypto`, `corn`, `customer_group`, `default_email`, `mmode`, `bc_fix`, `auto_detect_barcode`, `captcha`, `reference_format`, `racks`, `attributes`, `product_expiry`, `decimals`, `qty_decimals`, `decimals_sep`, `thousands_sep`, `invoice_view`, `default_biller`, `envato_username`, `purchase_code`, `rtl`, `each_spent`, `ca_point`, `each_sale`, `sa_point`, `update`, `sac`, `display_all_products`, `display_symbol`, `symbol`, `remove_expired`, `barcode_separator`, `set_focus`, `price_group`, `barcode_img`, `ppayment_prefix`, `disable_editing`, `qa_prefix`, `update_cost`, `apis`, `state`, `pdf_lib`) VALUES
(1, 'imageedit_3_2567267271.png', 'imageedit_3_2567267272.png', 'WTouch', 'indonesian', 1, 0, 'IDR', 0, 10, '3.4.25', 0, 5, 'WTOUCH', 'QUOTE', 'PO', 'TR', 'DO', 'IPAY', 'SR', 'PR', '', 0, 'default', 1, 1, 0, 1, 0, 0, 0, 1, 0, 'Asia/Jakarta', 1500, 600, 150, 150, 1, 0, 0, 0, NULL, 'smtp', '/usr/sbin/sendmail', 'mail.wmp-group.co.id ', 'no-reply@wmp-group.co.id', 'itwmp1234', '465', 'ssl', NULL, 1, 'wmeat.shop@gmail.com', 0, 4, 1, 0, 2, 1, 1, 1, 0, 0, ',', '.', 0, 6, 'nulled', 'nulled', 0, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 'Rp', 0, '-', 0, 1, 1, 'POP', 90, '', 0, 0, 'AN', 'dompdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_shop_settings`
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
  `slider` text,
  `shipping` int(11) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT 'purchase_code',
  `envato_username` varchar(50) DEFAULT 'envato_username',
  `version` varchar(10) DEFAULT '3.4.25',
  `logo` varchar(55) DEFAULT NULL,
  `bank_details` varchar(255) DEFAULT NULL,
  `products_page` tinyint(1) DEFAULT NULL,
  `hide0` tinyint(1) DEFAULT '0',
  `products_description` varchar(255) DEFAULT NULL,
  `private` tinyint(1) DEFAULT '0',
  `hide_price` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_shop_settings`
--

INSERT INTO `sma_shop_settings` (`shop_id`, `shop_name`, `description`, `warehouse`, `biller`, `about_link`, `terms_link`, `privacy_link`, `contact_link`, `payment_text`, `follow_text`, `facebook`, `twitter`, `google_plus`, `instagram`, `phone`, `email`, `cookie_message`, `cookie_link`, `slider`, `shipping`, `purchase_code`, `envato_username`, `version`, `logo`, `bank_details`, `products_page`, `hide0`, `products_description`, `private`, `hide_price`) VALUES
(1, 'WTouch', 'Toko Daging Onlie', 1, 6, '', '', '', '', 'We accept PayPal or you can pay with your credit/debit cards.', 'Please click the link below to follow us on social media.', '#', '', '', '', '08111109554', 'wmeat.shop@gmail.com', 'We use cookies to improve your experience on our website. By browsing this website, you agree to our use of cookies.', '', '[{\"image\":\"e0575ef5b42f6ad7fa1934e22f2b8eac.jpg\",\"link\":\"\",\"caption\":\"\"},{\"image\":\"77a111434cd27c1d67a68b637179fc14.jpg\",\"link\":\"\",\"caption\":\"\"},{\"image\":\"aef8f66d5c4d4327b78683ca44f23ebd.jpg\",\"link\":\"\",\"caption\":\"\"},{\"link\":\"\",\"caption\":\"\"},{\"link\":\"\",\"caption\":\"\"}]', 0, '', 'envato_username', '3.4.25', 'imageedit_3_2567267274.png', '', 0, 0, 'WTouch ada karena dipercaya', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_skrill`
--

CREATE TABLE `sma_skrill` (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `account_email` varchar(255) NOT NULL DEFAULT 'testaccount2@moneybookers.com',
  `secret_word` varchar(20) NOT NULL DEFAULT 'mbtest',
  `skrill_currency` varchar(3) NOT NULL DEFAULT 'USD',
  `fixed_charges` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `extra_charges_my` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `extra_charges_other` decimal(25,4) NOT NULL DEFAULT '0.0000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_skrill`
--

INSERT INTO `sma_skrill` (`id`, `active`, `account_email`, `secret_word`, `skrill_currency`, `fixed_charges`, `extra_charges_my`, `extra_charges_other`) VALUES
(1, 1, 'testaccount2@moneybookers.com', 'mbtest', 'USD', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_sms_settings`
--

CREATE TABLE `sma_sms_settings` (
  `id` int(11) NOT NULL,
  `auto_send` tinyint(1) DEFAULT NULL,
  `config` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_sms_settings`
--

INSERT INTO `sma_sms_settings` (`id`, `auto_send`, `config`) VALUES
(1, NULL, '{\"gateway\":\"Log\",\"Log\":{}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_stock_counts`
--

CREATE TABLE `sma_stock_counts` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `initial_file` varchar(50) NOT NULL,
  `final_file` varchar(50) DEFAULT NULL,
  `brands` varchar(50) DEFAULT NULL,
  `brand_names` varchar(100) DEFAULT NULL,
  `categories` varchar(50) DEFAULT NULL,
  `category_names` varchar(100) DEFAULT NULL,
  `note` text,
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_stock_count_items`
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
-- Struktur dari tabel `sma_suspended_bills`
--

CREATE TABLE `sma_suspended_bills` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `shipping` decimal(15,4) DEFAULT '0.0000',
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_suspended_items`
--

CREATE TABLE `sma_suspended_items` (
  `id` int(11) NOT NULL,
  `suspend_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) NOT NULL,
  `quantity` decimal(15,4) DEFAULT '0.0000',
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
-- Struktur dari tabel `sma_tax_rates`
--

CREATE TABLE `sma_tax_rates` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `rate` decimal(12,4) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_tax_rates`
--

INSERT INTO `sma_tax_rates` (`id`, `name`, `code`, `rate`, `type`) VALUES
(1, 'No Tax', 'NT', '0.0000', '2'),
(2, 'VAT @10%', 'VAT10', '10.0000', '1'),
(3, 'GST @6%', 'GST', '6.0000', '1'),
(4, 'VAT @20%', 'VT20', '20.0000', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_transfers`
--

CREATE TABLE `sma_transfers` (
  `id` int(11) NOT NULL,
  `transfer_no` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `shipping` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `attachment` varchar(55) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_transfer_items`
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
-- Struktur dari tabel `sma_units`
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
-- Dumping data untuk tabel `sma_units`
--

INSERT INTO `sma_units` (`id`, `code`, `name`, `base_unit`, `operator`, `unit_value`, `operation_value`) VALUES
(21, 'Gram', 'Gram', NULL, NULL, NULL, NULL),
(22, 'KG', 'Kilogram', 21, '*', NULL, '1000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_users`
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
  `show_cost` tinyint(1) DEFAULT '0',
  `show_price` tinyint(1) DEFAULT '0',
  `award_points` int(11) DEFAULT '0',
  `view_right` tinyint(1) NOT NULL DEFAULT '0',
  `edit_right` tinyint(1) NOT NULL DEFAULT '0',
  `allow_discount` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_users`
--

INSERT INTO `sma_users` (`id`, `last_ip_address`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `avatar`, `gender`, `group_id`, `warehouse_id`, `biller_id`, `company_id`, `show_cost`, `show_price`, `award_points`, `view_right`, `edit_right`, `allow_discount`) VALUES
(1, 0x3a3a31, 0x0000, 'owner', 'a1a91380a8bf75d6792ebb3769baa14487f6b774', NULL, 'owner@tecdiary.com', NULL, NULL, NULL, '094f1a95d80432cae8c46f211e2dbd68cc70dab2', 1351661704, 1594799618, 1, 'Owner', 'Owner', 'WTouch', '012345678', NULL, 'male', 1, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0),
(2, 0x31332e31322e31302e31, 0x31332e31322e31302e31, 'arie', '6e35ac30d83861f64e1c036af8e794eb63af8e93', NULL, 'nugis999@gmail.com', '885b8046f4b6199c73795f7afa2f826bcacfdd40', NULL, NULL, NULL, 1588167382, 1588257558, 1, 'arie', 'nugraha', 'wmp', '087771187604', NULL, 'male', 3, NULL, NULL, 7, 0, 0, 0, 0, 0, 0),
(3, NULL, 0x31332e31322e31302e31, 'john', 'a4526193f7a50d654798528690ac4565c23bc207', NULL, 'ariesnugs999@gmai.com', '44efd537f5d0507c3252aae11b006f92ca60f508', NULL, NULL, NULL, 1588171331, 1588171331, 0, 'john', 'nugraha', 'wmp', '087771187604', NULL, 'male', 3, NULL, NULL, 8, 0, 0, 0, 0, 0, 0),
(4, 0x3a3a31, 0x31332e31322e31302e31, 'sales', 'd2e37be22af10b5006c055327c177f3f1c52ab3d', NULL, 'wmeat.shop@gmail.com', NULL, NULL, NULL, NULL, 1588179657, 1594799131, 1, 'sales', 'WMeat', 'WMeat', '123', NULL, 'male', 5, 1, 6, NULL, 1, 1, 0, 0, 0, 0),
(5, 0x31332e31322e31302e31, 0x31332e31322e31302e31, 'anto', '020fe4b59208937c1fef186f538697dedd03596b', NULL, 'anto@wmp-group.co.id', NULL, NULL, NULL, NULL, 1588222138, 1588240566, 1, 'Suhar', 'tanto', 'Widodo Makmur Perkasa', '0857-7771-4746', NULL, 'male', 3, NULL, NULL, 9, 0, 0, 0, 0, 0, 0),
(6, 0x3130332e36362e3139382e3432, 0x3130332e36362e3139382e3432, 'manajer', 'fd535acaca759507938e6babed91c186b4a2acb0', NULL, 'manajer@wmeat.store', NULL, NULL, NULL, NULL, 1588574208, 1588574218, 1, 'manajer', 'wmeat', 'WTouch', '1234678', NULL, 'male', 2, NULL, 6, NULL, 0, 0, 0, 1, 0, 1),
(7, NULL, 0x3130332e36362e3139382e3432, 'kasir', '336f67258f03959f629375a6f91c3b351989a097', NULL, 'kasir@wmeat.store', NULL, NULL, NULL, NULL, 1588909335, 1588909335, 1, 'kasir', 'wmeat', 'WMeat', '123456', NULL, 'male', 7, 1, 6, NULL, 1, 1, 0, 0, 0, 0),
(8, 0x3130332e36362e3139382e3432, 0x3130332e36362e3139382e3432, 'regina', 'b716ebb571cc4d0c4ecd733ec1c79c6df6702483', NULL, 'reginasahnita@gmail.com', NULL, NULL, NULL, NULL, 1588930075, 1594718601, 1, 'Sahnita Regina', 'Ginting', 'Cianjur Arta Makmur', '082161305343', NULL, 'male', 3, NULL, NULL, 11, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_user_logins`
--

CREATE TABLE `sma_user_logins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_user_logins`
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
(74, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-07-14 09:11:54'),
(75, 8, NULL, 0x3130332e36362e3139382e3432, 'regina', '2020-07-14 09:22:38'),
(76, 8, NULL, 0x3130332e36362e3139382e3432, 'regina', '2020-07-14 09:23:21'),
(77, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-07-14 10:49:10'),
(78, 1, NULL, 0x3a3a31, 'owner', '2020-07-15 07:43:16'),
(79, 1, NULL, 0x3a3a31, 'owner', '2020-07-15 07:43:50'),
(80, 4, NULL, 0x3a3a31, 'sales', '2020-07-15 07:44:34'),
(81, 1, NULL, 0x3a3a31, 'owner', '2020-07-15 07:44:50'),
(82, 4, NULL, 0x3a3a31, 'sales', '2020-07-15 07:45:31'),
(83, 1, NULL, 0x3a3a31, 'owner', '2020-07-15 07:53:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_variants`
--

CREATE TABLE `sma_variants` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_variants`
--

INSERT INTO `sma_variants` (`id`, `name`) VALUES
(1, 'size 300'),
(17, 'size 1 KG'),
(15, 'size 800'),
(16, 'size 500'),
(18, '500 GR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_warehouses`
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
-- Dumping data untuk tabel `sma_warehouses`
--

INSERT INTO `sma_warehouses` (`id`, `code`, `name`, `address`, `map`, `phone`, `email`, `price_group_id`) VALUES
(1, 'WHI', 'Warehouse Cilangkap', '<p>Address, City</p>', NULL, '012345678', 'whi@gmail.com', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_warehouses_products`
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
-- Dumping data untuk tabel `sma_warehouses_products`
--

INSERT INTO `sma_warehouses_products` (`id`, `product_id`, `warehouse_id`, `quantity`, `rack`, `avg_cost`) VALUES
(21, 21, 1, '13.0000', NULL, '0.0000'),
(2, 2, 1, '0.0000', NULL, '640.0000'),
(3, 3, 1, '0.0000', NULL, '109.0000'),
(4, 4, 1, '0.0000', NULL, '330.0000'),
(5, 5, 1, '0.0000', NULL, '180.0000'),
(6, 6, 1, '0.0000', NULL, '150.0000'),
(7, 7, 1, '0.0000', NULL, '140.0000'),
(8, 8, 1, '0.0000', NULL, '130.0000'),
(9, 9, 1, '0.0000', NULL, '130.0000'),
(10, 10, 1, '0.0000', NULL, '130.0000'),
(11, 11, 1, '0.0000', NULL, '130.0000'),
(12, 12, 1, '0.0000', NULL, '490.0000'),
(13, 13, 1, '0.0000', NULL, '140.0000'),
(14, 14, 1, '0.0000', NULL, '180.0000'),
(15, 15, 1, '0.0000', NULL, '140.0000'),
(16, 16, 1, '0.0000', NULL, '130.0000'),
(17, 17, 1, '0.0000', NULL, '195.0000'),
(18, 18, 1, '0.0000', NULL, '120.0000'),
(19, 19, 1, '0.0000', NULL, '140.0000'),
(20, 20, 1, '0.0000', NULL, '160.0000'),
(22, 22, 1, '9.0000', NULL, '0.0000'),
(23, 23, 1, '3.0000', NULL, '0.0000'),
(24, 24, 1, '22.0000', NULL, '0.0000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_warehouses_products_variants`
--

CREATE TABLE `sma_warehouses_products_variants` (
  `id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `rack` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_warehouses_products_variants`
--

INSERT INTO `sma_warehouses_products_variants` (`id`, `option_id`, `product_id`, `warehouse_id`, `quantity`, `rack`) VALUES
(3, 3, 2, 1, '0.0000', NULL),
(4, 4, 2, 1, '0.0000', NULL),
(5, 5, 3, 1, '0.0000', NULL),
(6, 6, 3, 1, '0.0000', NULL),
(7, 7, 3, 1, '0.0000', NULL),
(8, 8, 3, 1, '0.0000', NULL),
(9, 9, 3, 1, '0.0000', NULL),
(10, 10, 4, 1, '0.0000', NULL),
(11, 11, 4, 1, '0.0000', NULL),
(12, 12, 5, 1, '0.0000', NULL),
(13, 13, 5, 1, '0.0000', NULL),
(14, 14, 5, 1, '0.0000', NULL),
(15, 15, 6, 1, '0.0000', NULL),
(16, 16, 6, 1, '0.0000', NULL),
(17, 17, 7, 1, '0.0000', NULL),
(18, 18, 7, 1, '0.0000', NULL),
(19, 19, 7, 1, '0.0000', NULL),
(20, 21, 8, 1, '0.0000', NULL),
(21, 22, 8, 1, '0.0000', NULL),
(22, 23, 8, 1, '0.0000', NULL),
(23, 24, 8, 1, '0.0000', NULL),
(24, 25, 8, 1, '0.0000', NULL),
(25, 26, 8, 1, '0.0000', NULL),
(26, 27, 9, 1, '0.0000', NULL),
(27, 28, 9, 1, '0.0000', NULL),
(28, 30, 10, 1, '0.0000', NULL),
(29, 31, 10, 1, '0.0000', NULL),
(30, 32, 10, 1, '0.0000', NULL),
(31, 33, 10, 1, '0.0000', NULL),
(32, 34, 11, 1, '0.0000', NULL),
(33, 35, 12, 1, '0.0000', NULL),
(34, 36, 12, 1, '0.0000', NULL),
(35, 37, 12, 1, '0.0000', NULL),
(36, 38, 15, 1, '0.0000', NULL),
(37, 39, 15, 1, '0.0000', NULL),
(38, 40, 16, 1, '0.0000', NULL),
(39, 41, 16, 1, '0.0000', NULL),
(40, 42, 16, 1, '0.0000', NULL),
(41, 43, 17, 1, '0.0000', NULL),
(42, 44, 17, 1, '0.0000', NULL),
(43, 45, 18, 1, '0.0000', NULL),
(44, 46, 18, 1, '0.0000', NULL),
(45, 47, 19, 1, '0.0000', NULL),
(46, 48, 19, 1, '0.0000', NULL),
(47, 49, 19, 1, '0.0000', NULL),
(48, 50, 19, 1, '0.0000', NULL),
(49, 51, 19, 1, '0.0000', NULL),
(50, 52, 20, 1, '0.0000', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_wishlist`
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
-- Indeks untuk tabel `sma_addresses`
--
ALTER TABLE `sma_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indeks untuk tabel `sma_adjustments`
--
ALTER TABLE `sma_adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indeks untuk tabel `sma_adjustment_items`
--
ALTER TABLE `sma_adjustment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adjustment_id` (`adjustment_id`);

--
-- Indeks untuk tabel `sma_api_keys`
--
ALTER TABLE `sma_api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_api_limits`
--
ALTER TABLE `sma_api_limits`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_api_logs`
--
ALTER TABLE `sma_api_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_brands`
--
ALTER TABLE `sma_brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indeks untuk tabel `sma_calendar`
--
ALTER TABLE `sma_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_captcha`
--
ALTER TABLE `sma_captcha`
  ADD PRIMARY KEY (`captcha_id`),
  ADD KEY `word` (`word`);

--
-- Indeks untuk tabel `sma_cart`
--
ALTER TABLE `sma_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_categories`
--
ALTER TABLE `sma_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `sma_combo_items`
--
ALTER TABLE `sma_combo_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_companies`
--
ALTER TABLE `sma_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `group_id_2` (`group_id`);

--
-- Indeks untuk tabel `sma_costing`
--
ALTER TABLE `sma_costing`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_currencies`
--
ALTER TABLE `sma_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_customer_groups`
--
ALTER TABLE `sma_customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_date_format`
--
ALTER TABLE `sma_date_format`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_deliveries`
--
ALTER TABLE `sma_deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_deposits`
--
ALTER TABLE `sma_deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_expenses`
--
ALTER TABLE `sma_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_expense_categories`
--
ALTER TABLE `sma_expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `sma_gift_cards`
--
ALTER TABLE `sma_gift_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `card_no` (`card_no`);

--
-- Indeks untuk tabel `sma_gift_card_topups`
--
ALTER TABLE `sma_gift_card_topups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_id` (`card_id`);

--
-- Indeks untuk tabel `sma_groups`
--
ALTER TABLE `sma_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_login_attempts`
--
ALTER TABLE `sma_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_notifications`
--
ALTER TABLE `sma_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_order_ref`
--
ALTER TABLE `sma_order_ref`
  ADD PRIMARY KEY (`ref_id`);

--
-- Indeks untuk tabel `sma_pages`
--
ALTER TABLE `sma_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_payments`
--
ALTER TABLE `sma_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_paypal`
--
ALTER TABLE `sma_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_permissions`
--
ALTER TABLE `sma_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_pos_register`
--
ALTER TABLE `sma_pos_register`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_pos_settings`
--
ALTER TABLE `sma_pos_settings`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indeks untuk tabel `sma_price_groups`
--
ALTER TABLE `sma_price_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indeks untuk tabel `sma_printers`
--
ALTER TABLE `sma_printers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_products`
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
-- Indeks untuk tabel `sma_product_photos`
--
ALTER TABLE `sma_product_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_product_prices`
--
ALTER TABLE `sma_product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `price_group_id` (`price_group_id`);

--
-- Indeks untuk tabel `sma_product_variants`
--
ALTER TABLE `sma_product_variants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_product_id_name` (`product_id`,`name`);

--
-- Indeks untuk tabel `sma_promos`
--
ALTER TABLE `sma_promos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_purchases`
--
ALTER TABLE `sma_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `sma_purchase_items`
--
ALTER TABLE `sma_purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `sma_quotes`
--
ALTER TABLE `sma_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `sma_quote_items`
--
ALTER TABLE `sma_quote_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quote_id` (`quote_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `sma_returns`
--
ALTER TABLE `sma_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `sma_return_items`
--
ALTER TABLE `sma_return_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `return_id` (`return_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`,`return_id`),
  ADD KEY `return_id_2` (`return_id`,`product_id`);

--
-- Indeks untuk tabel `sma_sales`
--
ALTER TABLE `sma_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`,`sale_id`),
  ADD KEY `sale_id_2` (`sale_id`,`product_id`);

--
-- Indeks untuk tabel `sma_sessions`
--
ALTER TABLE `sma_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indeks untuk tabel `sma_settings`
--
ALTER TABLE `sma_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indeks untuk tabel `sma_shop_settings`
--
ALTER TABLE `sma_shop_settings`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indeks untuk tabel `sma_skrill`
--
ALTER TABLE `sma_skrill`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_sms_settings`
--
ALTER TABLE `sma_sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_stock_counts`
--
ALTER TABLE `sma_stock_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indeks untuk tabel `sma_stock_count_items`
--
ALTER TABLE `sma_stock_count_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_count_id` (`stock_count_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `sma_suspended_bills`
--
ALTER TABLE `sma_suspended_bills`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_suspended_items`
--
ALTER TABLE `sma_suspended_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_tax_rates`
--
ALTER TABLE `sma_tax_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_transfers`
--
ALTER TABLE `sma_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `sma_transfer_items`
--
ALTER TABLE `sma_transfer_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfer_id` (`transfer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `sma_units`
--
ALTER TABLE `sma_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_unit` (`base_unit`);

--
-- Indeks untuk tabel `sma_users`
--
ALTER TABLE `sma_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`,`warehouse_id`,`biller_id`),
  ADD KEY `group_id_2` (`group_id`,`company_id`);

--
-- Indeks untuk tabel `sma_user_logins`
--
ALTER TABLE `sma_user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_variants`
--
ALTER TABLE `sma_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sma_warehouses`
--
ALTER TABLE `sma_warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `sma_warehouses_products`
--
ALTER TABLE `sma_warehouses_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indeks untuk tabel `sma_warehouses_products_variants`
--
ALTER TABLE `sma_warehouses_products_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indeks untuk tabel `sma_wishlist`
--
ALTER TABLE `sma_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `sma_addresses`
--
ALTER TABLE `sma_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sma_adjustments`
--
ALTER TABLE `sma_adjustments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sma_adjustment_items`
--
ALTER TABLE `sma_adjustment_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sma_api_keys`
--
ALTER TABLE `sma_api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_api_limits`
--
ALTER TABLE `sma_api_limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_api_logs`
--
ALTER TABLE `sma_api_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_brands`
--
ALTER TABLE `sma_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `sma_calendar`
--
ALTER TABLE `sma_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_captcha`
--
ALTER TABLE `sma_captcha`
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_categories`
--
ALTER TABLE `sma_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `sma_combo_items`
--
ALTER TABLE `sma_combo_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_companies`
--
ALTER TABLE `sma_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `sma_costing`
--
ALTER TABLE `sma_costing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `sma_currencies`
--
ALTER TABLE `sma_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sma_customer_groups`
--
ALTER TABLE `sma_customer_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sma_date_format`
--
ALTER TABLE `sma_date_format`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sma_deliveries`
--
ALTER TABLE `sma_deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sma_deposits`
--
ALTER TABLE `sma_deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_expenses`
--
ALTER TABLE `sma_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_expense_categories`
--
ALTER TABLE `sma_expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sma_gift_cards`
--
ALTER TABLE `sma_gift_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_gift_card_topups`
--
ALTER TABLE `sma_gift_card_topups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_groups`
--
ALTER TABLE `sma_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `sma_login_attempts`
--
ALTER TABLE `sma_login_attempts`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `sma_notifications`
--
ALTER TABLE `sma_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sma_order_ref`
--
ALTER TABLE `sma_order_ref`
  MODIFY `ref_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sma_pages`
--
ALTER TABLE `sma_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sma_payments`
--
ALTER TABLE `sma_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `sma_permissions`
--
ALTER TABLE `sma_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sma_pos_register`
--
ALTER TABLE `sma_pos_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sma_price_groups`
--
ALTER TABLE `sma_price_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sma_printers`
--
ALTER TABLE `sma_printers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sma_products`
--
ALTER TABLE `sma_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `sma_product_photos`
--
ALTER TABLE `sma_product_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sma_product_prices`
--
ALTER TABLE `sma_product_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_product_variants`
--
ALTER TABLE `sma_product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `sma_promos`
--
ALTER TABLE `sma_promos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_purchases`
--
ALTER TABLE `sma_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_purchase_items`
--
ALTER TABLE `sma_purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sma_quotes`
--
ALTER TABLE `sma_quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sma_quote_items`
--
ALTER TABLE `sma_quote_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sma_returns`
--
ALTER TABLE `sma_returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_return_items`
--
ALTER TABLE `sma_return_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_sales`
--
ALTER TABLE `sma_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `sma_sms_settings`
--
ALTER TABLE `sma_sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sma_stock_counts`
--
ALTER TABLE `sma_stock_counts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_stock_count_items`
--
ALTER TABLE `sma_stock_count_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_suspended_bills`
--
ALTER TABLE `sma_suspended_bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_suspended_items`
--
ALTER TABLE `sma_suspended_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_tax_rates`
--
ALTER TABLE `sma_tax_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sma_transfers`
--
ALTER TABLE `sma_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_transfer_items`
--
ALTER TABLE `sma_transfer_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_units`
--
ALTER TABLE `sma_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `sma_users`
--
ALTER TABLE `sma_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `sma_user_logins`
--
ALTER TABLE `sma_user_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT untuk tabel `sma_variants`
--
ALTER TABLE `sma_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `sma_warehouses`
--
ALTER TABLE `sma_warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sma_warehouses_products`
--
ALTER TABLE `sma_warehouses_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `sma_warehouses_products_variants`
--
ALTER TABLE `sma_warehouses_products_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `sma_wishlist`
--
ALTER TABLE `sma_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
