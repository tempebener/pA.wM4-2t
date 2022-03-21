-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 01 Bulan Mei 2020 pada 07.34
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
-- Database: `wtouch`
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
(2, 9, 'jalan', 'jalan', 'Jakarta Timur', '13870', 'DKI Jakarta', 'Indonesia', '085777714746', '2020-04-30 09:58:06');

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
(2, '2020-04-30 06:37:00', '2020/04/0002', 1, '', NULL, 1, NULL, NULL, NULL);

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
(3, 2, 22, NULL, '11.0000', 1, '', 'addition');

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
('013ec058c00d24a8edeca20900464fa4', '1588245434', 2, '{\"cart_total\":56500,\"total_item_tax\":0,\"total_items\":1,\"total_unique_items\":1,\"2bfc2c97c2f987182469ab1ef7a02cba\":{\"id\":\"6836fa46d49acd840338a3aa0cbf1fbf\",\"product_id\":\"21\",\"qty\":1,\"name\":\"Daging Rendang 500 gr\",\"slug\":\"daging-rendang-500-gr\",\"code\":\"OLN001\",\"price\":56500,\"tax\":\"0\",\"image\":\"ac6c9a19f47dfd46cb5afafd760913af.png\",\"option\":false,\"options\":null,\"rowid\":\"2bfc2c97c2f987182469ab1ef7a02cba\",\"row_tax\":\"0.0000\",\"subtotal\":\"56500.0000\"}}'),
('537487844be3f25925be286a88c348c0', '1588240630', NULL, '{\"cart_total\":56500,\"total_item_tax\":0,\"total_items\":1,\"total_unique_items\":1,\"1729c0dc94d521ca1151e629838fbd9f\":{\"id\":\"6a201017ca8c3e47700b11d3abb44d7d\",\"product_id\":\"21\",\"qty\":1,\"name\":\"Daging Rendang 500 gr\",\"slug\":\"daging-rendang-500-gr\",\"code\":\"OLN001\",\"price\":56500,\"tax\":\"0\",\"image\":\"ac6c9a19f47dfd46cb5afafd760913af.png\",\"option\":false,\"options\":null,\"rowid\":\"1729c0dc94d521ca1151e629838fbd9f\",\"row_tax\":\"0.0000\",\"subtotal\":\"56500.0000\"}}'),
('847a195375de94b7e298452076f0a3b3', '1588257573', 2, '{\"cart_total\":56500,\"total_item_tax\":0,\"total_items\":1,\"total_unique_items\":1,\"9eaa789d9a2bad84fc5f82431c4da017\":{\"id\":\"f0ec9e009a539320270e2410fcdd5477\",\"product_id\":\"21\",\"qty\":1,\"name\":\"Daging Rendang 500 gr\",\"slug\":\"daging-rendang-500-gr\",\"code\":\"OLN001\",\"price\":56500,\"tax\":\"0\",\"image\":\"ac6c9a19f47dfd46cb5afafd760913af.png\",\"option\":false,\"options\":null,\"rowid\":\"9eaa789d9a2bad84fc5f82431c4da017\",\"row_tax\":\"0.0000\",\"subtotal\":\"56500.0000\"}}'),
('86149371537560b9a6e8c659fc298950', '1588309130', NULL, '{\"cart_total\":56500,\"total_item_tax\":0,\"total_items\":1,\"total_unique_items\":1,\"6c1772e73ebba361d53a1b370c46869b\":{\"id\":\"9401cbcfefb5e9f7e35b68b17af1ab9e\",\"product_id\":\"21\",\"qty\":1,\"name\":\"Daging Rendang 500 gr\",\"slug\":\"daging-rendang-500-gr\",\"code\":\"OLN001\",\"price\":56500,\"tax\":\"0\",\"image\":\"ac6c9a19f47dfd46cb5afafd760913af.png\",\"option\":false,\"options\":null,\"rowid\":\"6c1772e73ebba361d53a1b370c46869b\",\"row_tax\":\"0.0000\",\"subtotal\":\"56500.0000\"}}');

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
(9, 3, 'customer', 1, 'General', 'Suhar tanto', 'Widodo Makmur Perkasa', NULL, NULL, NULL, NULL, NULL, NULL, '0857-7771-4746', 'anto@wmp-group.co.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'logo.png', 0, NULL, 1, 'Default', NULL);

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
(2, '2020-04-30', 21, 3, 3, 2, '1.0000', '0.0000', '0.0000', '53675.0000', '53675.0000', '21.0000', 1, 0, NULL),
(3, '2020-04-30', 21, 4, 4, 2, '1.0000', '0.0000', '0.0000', '53675.0000', '53675.0000', '20.0000', 1, 0, NULL),
(4, '2020-04-30', 21, 5, 5, 2, '1.0000', '0.0000', '0.0000', '56500.0000', '56500.0000', '19.0000', 1, 0, NULL),
(5, '2020-04-30', 21, 6, 6, 2, '1.0000', '0.0000', '0.0000', '56500.0000', '56500.0000', '18.0000', 1, 0, NULL),
(6, '2020-04-30', 21, 7, 7, 2, '1.0000', '0.0000', '0.0000', '56500.0000', '56500.0000', '17.0000', 1, 0, NULL);

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

--
-- Dumping data untuk tabel `sma_deliveries`
--

INSERT INTO `sma_deliveries` (`id`, `date`, `sale_id`, `do_reference_no`, `sale_reference_no`, `customer`, `address`, `note`, `status`, `attachment`, `delivered_by`, `received_by`, `created_by`, `updated_by`, `updated_at`) VALUES
(1, '2020-04-29 16:45:00', 2, 'DO2020/04/0001', 'SALE2020/04/0002', 'arie nugraha', '<p>Jl.Percetakan<br><br>Jakarta Jakarta<br>10560 Indonesia<br>Tel: 0865</p>', '', 'delivering', NULL, 'jono', 'arie nugraha', 1, NULL, NULL);

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

--
-- Dumping data untuk tabel `sma_login_attempts`
--

INSERT INTO `sma_login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(7, 0x31332e31322e31302e31, 'ZAP', 1588248698),
(8, 0x31332e31322e31302e31, 'ZAP', 1588248714),
(9, 0x31332e31322e31302e31, 'ZAP', 1588248714),
(10, 0x31332e31322e31302e31, '\'', 1588248717),
(11, 0x31332e31322e31302e31, 'ZAP\'', 1588248718),
(12, 0x31332e31322e31302e31, '\"', 1588248718),
(13, 0x31332e31322e31302e31, 'ZAP\"', 1588248718),
(14, 0x31332e31322e31302e31, ';', 1588248719),
(15, 0x31332e31322e31302e31, 'ZAP;', 1588248719),
(16, 0x31332e31322e31302e31, ')', 1588248719),
(17, 0x31332e31322e31302e31, 'ZAP)', 1588248719),
(18, 0x31332e31322e31302e31, 'ZAP AND 1=1 -- ', 1588248720),
(19, 0x31332e31322e31302e31, 'ZAP AND 1=2 -- ', 1588248720),
(20, 0x31332e31322e31302e31, 'ZAP OR 1=1 -- ', 1588248721),
(21, 0x31332e31322e31302e31, 'ZAP AND 1=2 -- ', 1588248721),
(22, 0x31332e31322e31302e31, 'ZAP OR 1=1 -- ', 1588248721),
(23, 0x31332e31322e31302e31, 'ZAP\' AND \'1\'=\'1\' -- ', 1588248721),
(24, 0x31332e31322e31302e31, 'ZAP\' AND \'1\'=\'2\' -- ', 1588248722),
(25, 0x31332e31322e31302e31, 'ZAP\' OR \'1\'=\'1\' -- ', 1588248722),
(26, 0x31332e31322e31302e31, 'ZAP\' AND \'1\'=\'2\' -- ', 1588248722),
(27, 0x31332e31322e31302e31, 'ZAP\' OR \'1\'=\'1\' -- ', 1588248722),
(28, 0x31332e31322e31302e31, 'ZAP UNION ALL select NULL -- ', 1588248723),
(29, 0x31332e31322e31302e31, 'ZAP\' UNION ALL select NULL -- ', 1588248723),
(30, 0x31332e31322e31302e31, 'ZAP\" UNION ALL select NULL -- ', 1588248723),
(31, 0x31332e31322e31302e31, 'ZAP) UNION ALL select NULL -- ', 1588248723),
(32, 0x31332e31322e31302e31, 'ZAP\') UNION ALL select NULL -- ', 1588248724);

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
(1, '2015-03-01', 4, 2, 1, 1, 6, 2, 6, 1, 1, 1, 1, 3);

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
(2, '2020-04-30 06:57:27', 3, NULL, NULL, 'IPAY2020/04/0001', NULL, 'cash', '', '', '', '', '', '', '53675.0000', NULL, 1, NULL, 'received', '', '53675.0000', '0.0000', NULL),
(3, '2020-04-30 08:31:17', 4, NULL, NULL, 'IPAY2020/04/0002', NULL, 'cash', '', '', '', '', '', '', '53675.0000', NULL, 1, NULL, 'received', '', '53675.0000', '0.0000', NULL),
(4, '2020-04-30 09:05:41', 5, NULL, NULL, 'IPAY2020/04/0003', NULL, 'cash', '', '', '', '', '', '', '56500.0000', NULL, 1, NULL, 'received', '', '56500.0000', '0.0000', NULL),
(5, '2020-04-30 09:14:33', 6, NULL, NULL, 'IPAY2020/04/0004', NULL, 'cash', '', '', '', '', '', '', '56500.0000', NULL, 1, NULL, 'received', '', '56500.0000', '0.0000', NULL),
(6, '2020-04-30 09:23:52', 7, NULL, NULL, 'IPAY2020/04/0005', NULL, 'cash', '', '', '', '', '', '', '56500.0000', NULL, 1, NULL, 'received', '', '56500.0000', '0.0000', NULL);

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
(3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
(1, 22, 20, 11, 7, 6, '1', '', '', '', '', NULL, 'x1C', 'Ctrl+F3', 'Ctrl+Shift+M', 'Ctrl+Shift+C', 'Ctrl+Shift+A', 'Ctrl+F11', 'Ctrl+F12', 'F4', 'F7', 'F9', 'F8', 'Ctrl+F1', 'Ctrl+F2', 'Ctrl+F10', 1, NULL, 0, 'default', 1, 0, 0, 0, 42, '12345678', 'purchase_code', 'envato_username', '3.4.25', 0, 0, 0, '', 1, NULL, 'null', 1, 0, 1);

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
(21, 'OLN001', 'Daging Rendang 500 gr', 21, '0.0000', '56500.0000', '1.0000', 'ac6c9a19f47dfd46cb5afafd760913af.png', 11, NULL, '', '', '', '', '', '', '17.0000', NULL, 1, '', NULL, 'code128', '', '<p>Daging Sapi Lokal - Chuck<br>Packing per pack 500 gr<br>Produk dikemas dalam kondisi beku</p>', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 12, 'daging-rendang-500-gr', NULL, '0.0000', NULL, 3, 0, '', 0),
(22, 'OLN002', 'Daging Rendang 800 gr', 21, '0.0000', '88000.0000', '1.0000', 'cb32e726cd77e0fc8649e7e9102f2437.png', 11, NULL, '', '', '', '', '', '', '11.0000', NULL, 1, '', NULL, 'code128', '', '<p>Daging Sapi Lokal - Chuck<br>Packing per pack 800 gr<br>Produk dikemas dalam kondisi beku</p>', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 12, 'daging-rendang-800-gr', NULL, '0.8000', NULL, 0, 0, '', 0);

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
(2, NULL, NULL, 21, 'OLN001', 'Daging Rendang 500 gr', NULL, '0.0000', '22.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '17.0000', '2020-04-30', 'received', '0.0000', '0.0000', '22.0000', NULL, NULL, 21, 'Gram', '22.0000', NULL, NULL, NULL, NULL),
(3, NULL, NULL, 22, 'OLN002', 'Daging Rendang 800 gr', NULL, '0.0000', '11.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '11.0000', '2020-04-30', 'received', '0.0000', '0.0000', '11.0000', NULL, NULL, 21, 'Gram', '11.0000', NULL, NULL, NULL, NULL);

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

--
-- Dumping data untuk tabel `sma_quotes`
--

INSERT INTO `sma_quotes` (`id`, `date`, `reference_no`, `customer_id`, `customer`, `warehouse_id`, `biller_id`, `biller`, `note`, `internal_note`, `total`, `product_discount`, `order_discount`, `order_discount_id`, `total_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `status`, `created_by`, `updated_by`, `updated_at`, `attachment`, `supplier_id`, `supplier`, `hash`, `cgst`, `sgst`, `igst`) VALUES
(1, '2020-04-29 16:34:00', 'QUOTE2020/04/0001', 7, 'wmp', 1, 6, 'WMeat', '', NULL, '83601.0000', '0.0000', '0.0000', '', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '83601.0000', 'pending', 1, NULL, NULL, NULL, 0, NULL, 'f1b9f124cb885db6e0bf78d8531869acb5d8ef9fb5ca9db47bf5b1185ea1d77f', NULL, NULL, NULL);

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

--
-- Dumping data untuk tabel `sma_quote_items`
--

INSERT INTO `sma_quote_items` (`id`, `quote_id`, `product_id`, `product_code`, `product_name`, `product_type`, `option_id`, `net_unit_price`, `unit_price`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `subtotal`, `serial_no`, `real_unit_price`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `gst`, `cgst`, `sgst`, `igst`) VALUES
(1, 1, 1, '9919000109983', 'WMeat Daging Rendang (Chuck)', 'standard', 1, '83601.0000', '83601.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '83601.0000', NULL, '83600.0000', 21, 'Gram', '1.0000', NULL, NULL, NULL, NULL);

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
(3, '2020-04-30 06:57:27', 'SALE/POS2020/04/0001', 7, 'wmp', 6, 'WMeat', 1, '', '', '53675.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '53675.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 1, '53675.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '292631cc8763c7a525d9e71e7271b8a60f61201f3176b910cdafdba9dc7e160f', NULL, NULL, NULL, NULL, NULL),
(4, '2020-04-30 08:31:17', 'WTOUCH/POS2020/04/0002', 7, 'wmp', 6, 'WTouch', 1, '', '', '53675.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '53675.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 1, '53675.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '0c189b54cb47715b2af652e8966670e19302193181983b406267d7a09d82c755', NULL, NULL, NULL, NULL, NULL),
(5, '2020-04-30 09:05:41', 'WTOUCH/POS2020/04/0003', 7, 'wmp', 6, 'WTouch', 1, '', '', '56500.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '56500.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 1, '56500.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '793c9c2bbd453724bec0f04613aeb84c639318def82675450b3f45ff6f57cf26', NULL, NULL, NULL, NULL, NULL),
(6, '2020-04-30 09:14:33', 'WTOUCH/POS2020/04/0004', 7, 'wmp', 6, 'WTouch', 1, '', '', '56500.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '56500.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 1, '56500.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'ca847447ae5671abe2ab6de1e4eab3afe7e768967afebce7bd3dab5aa97d76bc', NULL, NULL, NULL, NULL, NULL),
(7, '2020-04-30 09:23:52', 'WTOUCH/POS2020/04/0005', 7, 'wmp', 6, 'WTouch', 1, '', '', '56500.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '56500.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 1, '56500.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'cc723e6cc980a6bbb3c6b6bff781de96fd4e49663ccf34863645b57ca252dc16', NULL, NULL, NULL, NULL, NULL),
(8, '2020-04-30 09:58:39', 'WTOUCH2020/04/0003', 9, 'Widodo Makmur Perkasa', 6, 'WTouch', 1, 'cepet ya', NULL, '56500.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '56500.0000', 'pending', 'pending', NULL, NULL, 5, NULL, NULL, 1, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 1, 2, NULL, '04a4b30aec11d33c90a8cc3d11d58ab825733a0190d989b8b2e9e3fe4fe2622d', NULL, NULL, NULL, NULL, 'bank');

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
(3, 3, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '53675.0000', '53675.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '53675.0000', '', '53675.0000', NULL, 21, 'Gram', '1.0000', '', NULL, NULL, NULL, NULL),
(4, 4, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '53675.0000', '53675.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '53675.0000', '', '53675.0000', NULL, 21, 'Gram', '1.0000', '', NULL, NULL, NULL, NULL),
(5, 5, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '56500.0000', '56500.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '56500.0000', '', '56500.0000', NULL, 21, 'Gram', '1.0000', '', NULL, NULL, NULL, NULL),
(6, 6, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '56500.0000', '56500.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '56500.0000', '', '56500.0000', NULL, 21, 'Gram', '1.0000', '', NULL, NULL, NULL, NULL),
(7, 7, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '56500.0000', '56500.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '56500.0000', '', '56500.0000', NULL, 21, 'Gram', '1.0000', '', NULL, NULL, NULL, NULL),
(8, 8, 21, 'OLN001', 'Daging Rendang 500 gr', 'standard', NULL, '56500.0000', '56500.0000', '1.0000', 1, '0.0000', NULL, '', NULL, '0.0000', '56500.0000', NULL, '56500.0000', NULL, 21, 'Gram', '1.0000', NULL, NULL, NULL, NULL, NULL);

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
('s9pldjgp9ubnkbhorj6khegr9ost49gf', '13.12.10.1', 1588234816, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233343536353b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383233313430363b72656769737465725f69647c733a313a2232223b636173685f696e5f68616e647c733a31313a223530303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d33302031333a35353a3438223b),
('q7tfvp0228hc7asa0t016258d0unh966', '13.12.10.1', 1588232064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233323036323b7265717565737465645f706167657c733a31353a2263617465676f72792f646167696e67223b),
('kcjpkih6c1digrs6mtg0o81v8urqdoji', '13.12.10.1', 1588231406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233313430363b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383233313430363b72656769737465725f69647c733a313a2232223b636173685f696e5f68616e647c733a31313a223530303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d33302031333a35353a3438223b),
('8fa8o7gbauvpdgn2tt9rec5iaer3vo00', '13.12.10.1', 1588230932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233303933313b7265717565737465645f706167657c733a31383a2261646d696e2f73616c65732f766965772f33223b),
('2d086l9lc45qftme3tm3is876mia3po1', '13.12.10.1', 1588231013, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233313031333b7265717565737465645f706167657c733a31383a2261646d696e2f73616c65732f766965772f33223b),
('o1evlmotqik8hi103onjrvlaf6oscbf5', '13.12.10.1', 1588231377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233313039373b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383233313337373b72656769737465725f69647c733a313a2232223b636173685f696e5f68616e647c733a31313a223530303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d33302031333a35353a3438223b),
('d8nrp4ob9u3sle5c3sn6qhql66n6onuk', '13.12.10.1', 1588230595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233303336393b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383233303539353b72656769737465725f69647c733a313a2232223b636173685f696e5f68616e647c733a31313a223530303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d33302031333a35353a3438223b),
('4kopj1s6jodapeu50rmqtg434i594qpo', '13.12.10.1', 1588229848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232393631303b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383232393834373b72656769737465725f69647c733a313a2232223b636173685f696e5f68616e647c733a31313a223530303030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d33302031333a35353a3438223b72656d6f76655f706f736c737c693a313b),
('g0ah52o6cpdi69m5sqekpdqhmjf6hmue', '13.12.10.1', 1588229566, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232393330303b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383232393536363b72656769737465725f69647c733a313a2231223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d32392031333a32343a3137223b),
('33e8cto20rfbn0fmjp5sei4sb7brti8l', '13.12.10.1', 1588228656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232383635343b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('neu79893ajq6fa9kas3f423gjf7ksv45', '13.12.10.1', 1588229140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232383931373b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383232393134303b72656769737465725f69647c733a313a2231223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d32392031333a32343a3137223b),
('oo2886897r4k1pkfnbcp5v5vmg3e5fhc', '13.12.10.1', 1588227832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232373832353b),
('6c18ck8igg2bs6gbu7pcupedrv0a6frg', '13.12.10.1', 1588228630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232383333373b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('bi2f3kla1b5nn4q9io2qq4o7r6sd5iqt', '13.12.10.1', 1588228649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232383339343b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383232383339343b72656769737465725f69647c733a313a2231223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d32392031333a32343a3137223b),
('36r1dh7gucc8t1s2e8625e2sqsnanflc', '13.12.10.1', 1588226797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232363739373b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('hejcofsohsp3ean21ohp5qg02crrqqve', '13.12.10.1', 1588227442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232373434323b),
('5o02jvodfr2omquoupgbk9uugq4rj49t', '13.12.10.1', 1588227637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232373530343b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('mh0kg0s168r1er5i3tmk9np0lpcqjlot', '13.12.10.1', 1588225802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232353739373b7265717565737465645f706167657c733a31353a2263617465676f72792f646167696e67223b),
('8go6uukclqe22shuacqv8dfeg1gtabfl', '13.12.10.1', 1588224245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232343234343b),
('vddbc7br4v3sc32ovli5om2282t68f66', '13.12.10.1', 1588225725, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232353239303b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('9ov60d4588cdkekbfim6pnkogdn6n00b', '13.12.10.1', 1588223829, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232333736393b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('7ui2ji2djl4v3l97jb3kdvcvtrsqljja', '13.12.10.1', 1588223133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232333133333b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('rsqd6fvl8hrlj424hrtvups0op1m7kld', '13.12.10.1', 1588222512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232323331353b6964656e746974797c733a32303a22616e746f40776d702d67726f75702e636f2e6964223b757365726e616d657c733a343a22616e746f223b656d61696c7c733a32303a22616e746f40776d702d67726f75702e636f2e6964223b757365725f69647c733a313a2235223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323232313338223b6c6173745f69707c4e3b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2233223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c733a313a2239223b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('441h73ovefstksqafqjjda3jjt26bbmn', '13.12.10.1', 1588222294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232323237393b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('qnk9dmts8nuv0boit5iqe7n1fv8pliuo', '13.12.10.1', 1588222259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232323030313b6572726f727c733a3130353a223c703e426964616e6720416c616d617420456d61696c20686172757320626572697369206e696c616920756e696b2e3c2f703e0a3c703e426964616e67204e616d612050656e6767756e6120686172757320626572697369206e696c616920756e696b2e3c2f703e0a223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('eb1de63gfaf7ohjs768d61b40vsp3g3i', '13.12.10.1', 1588221961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232313936313b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('l1q1il1maiib8ufrjhrekvee51o302cb', '13.12.10.1', 1588221461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232313330323b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('ff19v1flbp643bndrgi9n2pqm6k0ub8c', '13.12.10.1', 1588221652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232313630353b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6d6573736167657c733a32353a2250656d6261796172616e2073756b7365732064696861707573223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('mcms50q8p2g6iclecci088rn9tgql5mq', '13.12.10.1', 1588221072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232303739333b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135323636223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('tv7mgkkf341ropcbstmfpr5mdrsig96s', '13.12.10.1', 1588216325, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383231363332353b7265717565737465645f706167657c733a353a2261646d696e223b),
('dhuptm34on9rs2u6atocnnu5ru3mo5mf', '13.12.10.1', 1588215788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383231353737383b),
('r8q1c1c5tnkk7mqrurhp08rcvmc28d86', '13.12.10.1', 1588215810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383231353831303b7265717565737465645f706167657c733a353a2261646d696e223b),
('hbuign77eqjb01p0m5m1rv88rfqtg062', '13.12.10.1', 1588215667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383231353634343b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135323636223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6d6573736167657c733a33303a2250656e6761747572616e20626572686173696c2064697065726261727569223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('4je4skfco0lvt67c07afoct6690iear3', '13.12.10.1', 1588180108, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383138303130343b),
('29hlt865mipg5frogi0uo19mjl4k7ug5', '13.12.10.1', 1588182234, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383138323139353b),
('d4vpalj6ontpaosvkfvvn39lnd9qo2et', '13.12.10.1', 1588183835, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383138333535353b),
('qmd9clj93bceb80122oqhp1j9402tadt', '13.12.10.1', 1588215356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383231353132333b),
('p5u1e526ha1f5imcgeq0pf25cbnfbgl6', '13.12.10.1', 1588215755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383231353530333b7265717565737465645f706167657c733a353a2261646d696e223b),
('qv2ud7ap7khn3mpuv9244v6qpt8g9pui', '13.12.10.1', 1588179047, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137393034373b6572726f727c733a3138313a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f3130332e36362e3139382e34322f77746f7563682f7468656d65732f64656661756c742f61646d696e2f6173736574732f7374796c65732f7064662f666f6e74732f676c79706869636f6e732d68616c666c696e67732d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('b6osomh7027b4n53hph3m1ssh9b0p73k', '13.12.10.1', 1588179083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137383737363b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313737393431223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('a83obtg8jb4qn237qaldovm3v0bg18ul', '13.12.10.1', 1588178310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137383331303b),
('k0g8akvb0q2iuhgml8k5ja5cs48bmij6', '13.12.10.1', 1588178310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137383331303b),
('ddg63lf3succkppjpm9am8uuk7b5cmfj', '13.12.10.1', 1588178383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137383338323b),
('0uh9a1ijp61mj8qci4ql8hcnqi3okdeq', '13.12.10.1', 1588178383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137383338333b),
('7na5o1kindlobgklkrssbq067rrlccfr', '13.12.10.1', 1588178384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137383338343b),
('udhvsj1u9n8b53i47jltvll20lrfkenq', '13.12.10.1', 1588178760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137383432383b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313737393431223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('2toifj9870a3pdrkgvmifuj4ia58i5bo', '13.12.10.1', 1588178310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137383331303b),
('vknnge00aa96e13gatarpfsidhm7h36q', '13.12.10.1', 1588178310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137383331303b6572726f727c733a3138313a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f3130332e36362e3139382e34322f77746f7563682f7468656d65732f64656661756c742f61646d696e2f6173736574732f7374796c65732f7064662f666f6e74732f676c79706869636f6e732d68616c666c696e67732d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('9pmfik8djap49c7dlde31i1ieeiulu0r', '13.12.10.1', 1588178025, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137383030303b7265717565737465645f706167657c733a343a2263617274223b),
('30beaupeagqenkuqgs34d9ha27hp8efk', '13.12.10.1', 1588176899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137363632343b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313733373233223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383137363632343b7265717565737465645f706167657c733a31313a226272616e642f776d656174223b757365725f637372667c733a32303a22355a524d464f65547772596f38363345327a4e44223b),
('50m0npn8sne0a2286ta0mrltd2bejhoa', '13.12.10.1', 1588215568, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383231353237323b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135323636223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('d9srjcn82jg38j5pga09fotu6hle29r6', '13.12.10.1', 1588179353, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137393130303b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313737393431223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('ohnp9kt0lk63t19bov6rs60keaorjn1n', '13.12.10.1', 1588179047, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137393034373b),
('lkhlublf821c43c3m3koqd9drghhopir', '13.12.10.1', 1588179047, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137393034373b),
('5lic7a7tsdboc4kv9hg497cptqmif4e9', '13.12.10.1', 1588172104, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137323130333b7265717565737465645f706167657c733a343a2263617274223b),
('e51n1n29g4g89nnmfr3ogfp2j9o8udqg', '13.12.10.1', 1588173982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137333730343b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313730383130223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('h6lhadolpa0lr9n52o2kqe4ka8qo0prq', '13.12.10.1', 1588174311, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137343031323b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313730383130223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('cqtk8rgl9j9q6a0m68sq731ullli8c0i', '13.12.10.1', 1588175149, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137343537303b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313733373233223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('9ctve7i3ocmcvq8evenrk4bjo8lh0n8f', '13.12.10.1', 1588175015, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137343939353b),
('q4omgaj0etjqt7v9k500ol52d6c07o45', '13.12.10.1', 1588174485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137343438353b),
('i936ml8jvja0aelrsm6ej7ia6kc6iaut', '13.12.10.1', 1588174485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137343438353b6572726f727c733a3138313a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f3130332e36362e3139382e34322f77746f7563682f7468656d65732f64656661756c742f61646d696e2f6173736574732f7374796c65732f7064662f666f6e74732f676c79706869636f6e732d68616c666c696e67732d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('gmk1gdo1ar93mkjnp1st096vdumhm0k1', '13.12.10.1', 1588174485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137343438353b),
('87p208qkvajmp7ed7pc8dn7lafh9hosm', '13.12.10.1', 1588175553, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137353135323b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313733373233223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('iam4vqvrpn70u4pm29dro4dc3jnm6leu', '13.12.10.1', 1588175678, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137353631343b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313733373233223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('kdpdek60hp42lc5tlsu9j9duaq27g0os', '13.12.10.1', 1588175673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137353637333b),
('f04ocb3qf97phsk9ruvmvtpniod877rj', '13.12.10.1', 1588175674, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137353637343b6572726f727c733a3138313a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f3130332e36362e3139382e34322f77746f7563682f7468656d65732f64656661756c742f61646d696e2f6173736574732f7374796c65732f7064662f666f6e74732f676c79706869636f6e732d68616c666c696e67732d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('5151hmgt8rrq5dvj25rojn8uvu2bv94r', '13.12.10.1', 1588175674, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137353637343b),
('bc9l9bhuhirh28dqulcaffv4jbsltd8h', '13.12.10.1', 1588176268, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137353937383b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313733373233223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('fpop758fafbh2eg9f0o0a4ajkl1v71eq', '13.12.10.1', 1588176560, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383137363239333b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313733373233223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383137363536303b),
('c6k2lkqi7nl667ui2p6htb3cet4s6ffe', '13.12.10.1', 1588235512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233353436343b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383233353531323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d33302031353a33313a3038223b),
('fm4lk4bp2btogsc3vbvuqb81uav8gc84', '13.12.10.1', 1588236352, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233363036383b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383233363333393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d33302031353a33313a3038223b),
('3lpqn0kvhiah71u2uu1v8slm5eo538dp', '13.12.10.1', 1588236490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233363338303b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383233363439303b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d33302031353a33313a3038223b),
('miafe2l5h8igo0dme0trovo0959h4vcu', '13.12.10.1', 1588237498, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233373137393b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383233373432303b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d33302031353a33313a3038223b),
('2ucu0h2a798bfnbdfa6c09i4n4u5risr', '13.12.10.1', 1588237300, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233373330303b),
('termi0ofbod1hm1d2tioae24cq2k5pqu', '13.12.10.1', 1588237774, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233373530393b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383233373737343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d33302031353a33313a3038223b72656d6f76655f706f736c737c693a313b),
('ec4hngn4hi4t1rf9hofs2g4f31f87ojj', '13.12.10.1', 1588238073, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233373832323b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383233383037333b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d33302031353a33313a3038223b72656d6f76655f706f736c737c693a313b),
('q5j0122gjql4c6cqkue25dmvu5b8ftcn', '13.12.10.1', 1588238379, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233383232353b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383233383337383b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d33302031353a33313a3038223b72656d6f76655f706f736c737c693a313b),
('2iqt039hlq1h2be9e45aflu5u2ch6j0m', '13.12.10.1', 1588238819, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233383539303b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383233383738393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d33302031353a33313a3038223b),
('f60hhjebptka2hf7au6usf8gsn9dpgql', '13.12.10.1', 1588238916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233383931323b7265717565737465645f706167657c733a31383a2261646d696e2f73616c65732f766965772f37223b),
('3uophn3s33aip0d6sr65o6ffr004dfp2', '13.12.10.1', 1588239018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383233383932383b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323135353630223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383233383933313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d33302031353a33313a3038223b),
('ek66il2m9bqd8s9gnl6p80gfj84931o2', '13.12.10.1', 1588240417, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234303431373b),
('6t2iu411sp7k32oo8djtm0g562th7fki', '13.12.10.1', 1588240724, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234303432393b7265717565737465645f706167657c733a353a2261646d696e223b6572726f727c733a3133383a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f7468656d65732f64656661756c742f61646d696e2f6173736574732f696d616765732f69636f6e2e706e67223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('2jaackomjtplo85eji05ldsi47o35mk2', '13.12.10.1', 1588240539, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234303533393b),
('nl83vg4ibbp4fa7kagp8kdqnkapu0oke', '13.12.10.1', 1588240740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234303733373b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('r75lt3me9djvv2bfjfcim51l0b0l75rs', '13.12.10.1', 1588246289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234363238393b),
('7328qj5k8f9o16c9qgtep3isdag4r0d8', '13.12.10.1', 1588247959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234373638303b),
('9rj69k2k8h9vm2cj77dqjcbs6l7givjr', '13.12.10.1', 1588247707, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234373730373b),
('9531b4mba5bqjt95ee19fsvrs3o3nnb0', '13.12.10.1', 1588247708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234373730373b),
('4gvaa8tcnlhvtpmb6edfcn1aj22hgv0a', '13.12.10.1', 1588240578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234303537383b),
('frlg4iddtmpit9eo8tj0dvrggi7q9di7', '13.12.10.1', 1588240647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234303537383b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('cglls43umeumllj4vmgab39scshnkfut', '13.12.10.1', 1588240582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234303538323b),
('63s5huacirmeqhf5fnri2dso6n92amoj', '13.12.10.1', 1588240719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234303731393b),
('2g7cl7lvqfhbor11uti614icl3u2an2n', '13.12.10.1', 1588240636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234303633363b6572726f727c733a3130363a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f66617669636f6e2e69636f223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('dr4h2alv645j686duhj954ubs6lrk1o4', '13.12.10.1', 1588240636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234303633363b),
('9ucsvgua9v7n1e81brjut94755gn3n8u', '13.12.10.1', 1588240719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234303731393b6572726f727c733a3137323a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f7468656d65732f64656661756c742f61646d696e2f6173736574732f7374796c65732f7064662f666f6e74732f676c79706869636f6e732d68616c666c696e67732d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('s40or3u5ohnm019kib5amio9u3uiothe', '13.12.10.1', 1588240719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234303731393b),
('mscm23ln8l1fn269vgn3skruet92u20n', '13.12.10.1', 1588240807, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234303830373b);
INSERT INTO `sma_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('oh6824c18ai8kjh5e2rju4t5v7m389bm', '13.12.10.1', 1588242718, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234323731383b),
('cv8o6reqqqr4ifo8p31jf6020affqrk8', '13.12.10.1', 1588245487, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234353231383b6964656e746974797c733a343a2261726965223b757365726e616d657c733a343a2261726965223b656d61696c7c733a31383a226e7567697339393940676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313738313731223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2233223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c733a313a2237223b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b7265717565737465645f706167657c733a31333a22636172742f636865636b6f7574223b),
('ghqcsa3qsmibmvnris8koo2gkot0289s', '13.12.10.1', 1588245676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234353631353b),
('mvijut8uusctraun9clp522c59o5tile', '13.12.10.1', 1588247766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234373736363b),
('nlko9l49u0k6dfheo1h68nddpl8mkk33', '13.12.10.1', 1588247976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234373937363b),
('9qpbcq6il0esbq85320dm30bcjos477k', '13.12.10.1', 1588248272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234383237323b),
('rcajtpo0b07lnovqjma6kd5b9cq5tppk', '13.12.10.1', 1588248291, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234383239313b),
('vsdv0k175go5f1p12ru3js5lqkro4n8p', '13.12.10.1', 1588248294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234383239343b),
('4kanjjk3unfkpvb4dg75f9j5eqrvqlhh', '13.12.10.1', 1588248294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234383239343b6572726f727c733a3131303a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f63726f7373646f6d61696e2e786d6c223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('mm6il2iki7iigfbk9pslbpp4e8ph1suf', '13.12.10.1', 1588248294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234383239343b),
('ap1bua48t86dd5jetc1ae6tdsntb1bqb', '13.12.10.1', 1588248295, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234383239343b6572726f727c733a3131373a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f636c69656e74616363657373706f6c6963792e786d6c223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('623utlo5vb27p8f3l44ik3h9vb9gmk5s', '13.12.10.1', 1588248295, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234383239353b6572726f727c733a3130353a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f726f626f74732e747874223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('3mo5mcjgi7a8dq1vmok6s10uo7iggg4u', '13.12.10.1', 1588248296, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234383239363b),
('4osku5ds53nb210rj98lb0d0dqme55s5', '13.12.10.1', 1588248686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234383638363b),
('vv46b5kbsfheo8gf30v634p871kn90dv', '13.12.10.1', 1588248687, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234383638373b),
('3e85v41ir5nbj4504fbcnjhi8ke0m31t', '13.12.10.1', 1588248786, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234383639343b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b6572726f727c733a34393a223c703e50617373776f7264205068e1baa3692063c3b320c3ad74206e68c3a2742038206bc3bd2074e1bbb12e3c2f703e0a223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('vb8oqf8pg76au7jrun4divn6dhubfhb8', '13.12.10.1', 1588248928, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234383930373b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('60195vgmbgstv95qh3sd78lc4u12p21p', '13.12.10.1', 1588249115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393131353b),
('kse056ot2p71tntvtn98rnm73nnd6cfo', '13.12.10.1', 1588249116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393131363b),
('1610ob9tm16bpdb89p5f72gl6l3p6qkh', '13.12.10.1', 1588249116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393131363b),
('gpmh02homs42o6eqj57tu494cc2fogfg', '13.12.10.1', 1588249118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393131373b6572726f727c733a3131393a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f6c616e67756167652f656e2d47422f656e2d47422e786d6c223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('djavvfak9s8o6o0kdf071tid4ih6t0j3', '13.12.10.1', 1588249119, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393131383b6572726f727c733a3130383a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f61646d696e6973747261746f72223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('o0kvqad953q19tkafhgvpcc7t4idsuqb', '13.12.10.1', 1588249120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132303b7265717565737465645f706167657c733a353a2261646d696e223b),
('qpo945piubjdtei95lr2o910nvcb9mkm', '13.12.10.1', 1588249121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132303b6572726f727c733a3130373a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f77702d6c6f67696e2e706870223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('8tsq9r8208uv7t1v6lr5u96gtkqk8qrv', '13.12.10.1', 1588249122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132323b7265717565737465645f706167657c733a353a2261646d696e223b),
('mehilvfp4v4gc75hj30td0il5oqicfeg', '13.12.10.1', 1588249126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132363b6572726f727c733a3130343a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f2e6769742f48454144223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('mda6ghqjarhrs63suegae4ia4ife2dol', '13.12.10.1', 1588249126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132363b6572726f727c733a3131353a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f3430347465737470616765343532356432666463223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('r38ifqcettn88p80v4jagbnoq1mpha7a', '13.12.10.1', 1588249126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132363b6572726f727c733a3131313a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f3430346a6176617363726970742e6a73223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('clnj9k8lk7fk7ai75c8vd75p7r9r5k3v', '13.12.10.1', 1588249126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132363b),
('b1emaqcr4fr0e4ki75t7eid4959dk1vm', '13.12.10.1', 1588249126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132363b),
('bibov9d58eea73ug14rqc8vi90hhr0g0', '13.12.10.1', 1588249126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132363b),
('v2d568ts903ben61feh9j508kuufobdf', '13.12.10.1', 1588249126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132363b),
('44dm8ilsgco3ph0jbbju5n097sb2vq85', '13.12.10.1', 1588249126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132363b),
('7p4mkfoa31gsai65j9o3v6qk4arkenub', '13.12.10.1', 1588249126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132363b),
('itrj6fsjth87ivmcsrt7hu916p90l07v', '13.12.10.1', 1588249127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132373b),
('cticq90sodedjkrhjaghh8de436d2g86', '13.12.10.1', 1588249127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132373b),
('rouhtc5npambj83pll4ed4rv8j4khjum', '13.12.10.1', 1588249127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132373b),
('mti13s0seu34tk5jsckfjv4tlp5cnkne', '13.12.10.1', 1588249127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132373b),
('d9ffgec0us3ov9iunbfnp4r2sbivbc8d', '13.12.10.1', 1588249127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132373b),
('s2hbun17gas071kos9qot1gsaoualrud', '13.12.10.1', 1588249127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132373b),
('s5e51e58qmgr3jmssq4hl5ibs5b1tn9v', '13.12.10.1', 1588249127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132373b),
('eov7vg6c0bl99iil4bcnleb4s89n4cfg', '13.12.10.1', 1588249127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132373b),
('3h6dq40i1usq98584mmgf9e97iqgm187', '13.12.10.1', 1588249128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393132383b),
('quqbupp2jpe6ppvcn09fohjvhu8n3in9', '13.12.10.1', 1588249137, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393133373b),
('7iuk5s8g75pc4lqd3pvq8hejudr4vg1g', '13.12.10.1', 1588249137, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393133373b),
('mbgjncl1mg375r6eh5jgad63mrdfsall', '13.12.10.1', 1588249140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393134303b),
('gji3qt3gl9krqmcl03onbujlmsqp349f', '13.12.10.1', 1588249236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393233363b),
('uh0f31iiga0gfi0n4ppe5thkokmlb8jd', '13.12.10.1', 1588249237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393233373b),
('kt9ba7omdh1hmbu4k3ne607qe5gcchti', '13.12.10.1', 1588249238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393233383b),
('1gut0t452urgeiuc2r5a3610qsa0n1k3', '13.12.10.1', 1588249239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393233383b6572726f727c733a3131393a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f6c616e67756167652f656e2d47422f656e2d47422e786d6c223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('0eqd8mq1klgglkgtfra752ak3tda7tlt', '13.12.10.1', 1588249240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393233393b6572726f727c733a3130383a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f61646d696e6973747261746f72223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('ecn1uh54l9vr2qv9pah5nbhavfj3eobk', '13.12.10.1', 1588249241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393234313b7265717565737465645f706167657c733a353a2261646d696e223b),
('h6239thfoj088hvid8rs15ssktv0isva', '13.12.10.1', 1588249242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393234323b6572726f727c733a3130373a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f77702d6c6f67696e2e706870223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('b9i177cudkj6mjj7ikhh4r0n1jd3mue2', '13.12.10.1', 1588249244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393234333b7265717565737465645f706167657c733a353a2261646d696e223b),
('ghh1aqv1fnd4659vf6h4fcb9dj5glqnf', '13.12.10.1', 1588249347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393334373b),
('ji64nj1j376lbc56d57sv7t2hnr07rgo', '13.12.10.1', 1588249361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393336313b),
('upp0fj6424lejo7f7flo6a6eu6kbl7jd', '13.12.10.1', 1588249361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393336313b),
('akp0aljnvaernrk9hmcj8p3pu16q9nmv', '13.12.10.1', 1588249361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393336313b),
('he79vcnu19ghdui95nug338bfogmq5oj', '13.12.10.1', 1588249429, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393430373b6572726f727c733a39393a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f66776d73223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('8bfo2t8h6f7nvcmee8n810cu8niohdu2', '13.12.10.1', 1588249541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393534313b),
('u26mfnr6brfv7j32gg0985vs9tqq16a9', '13.12.10.1', 1588249559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393535383b),
('6p4n8886mirtjbjdiiiitkhc7i21pb9u', '13.12.10.1', 1588249608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393630383b),
('f6a0pga9u9a0bps4ccopa17beb8vbmcn', '13.12.10.1', 1588249630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393633303b),
('iuh1ieertmvifgvk68hrpf0lpc7a2ce0', '13.12.10.1', 1588249678, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393633303b7265717565737465645f706167657c733a31313a226272616e642f776d656174223b6572726f727c733a303a22223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('7p1i60brpulfjrq6sbm53rk2piinc570', '13.12.10.1', 1588249745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393734353b),
('3ifg7f9220s0hq178lqsstnlk5al7m77', '13.12.10.1', 1588249745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393734353b),
('oc00ctnshpsc8rq9g5hr3sqp22ljql3b', '13.12.10.1', 1588249746, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393734363b),
('4baf5ndv3hkio5bvp0e9svh7kduupkvq', '13.12.10.1', 1588249746, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393734363b),
('o2s5fb90dhi5l3e7mr8bu0vi13u3s43b', '13.12.10.1', 1588249746, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393734363b),
('c7l47rjf9mdoa4vnk0uoe8e8n1kajq4u', '13.12.10.1', 1588249747, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393734373b),
('9jje06ec4k2tll6l68rikmb00ss1akf7', '13.12.10.1', 1588249747, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393734373b),
('gmlfabfhtoo0ab3cakcditjmkmh56qjh', '13.12.10.1', 1588249748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393734383b),
('e6ugop8nuj0b21i9it9gfmdtgqf76icp', '13.12.10.1', 1588249748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393734383b),
('c082a0a97p97jfue4fb954ek0gvnnu3d', '13.12.10.1', 1588249749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393734393b),
('jfa757k55ek52o44v68627ou9pl0cvop', '13.12.10.1', 1588249749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393734393b),
('44j3rdeac5l114lm424pkgi5f62cqv49', '13.12.10.1', 1588249750, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393735303b),
('0actrgif2qfv0rahp2b8dv7jcl8hsnvu', '13.12.10.1', 1588249750, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393735303b),
('7kg5rna25t53ufebn9mm84ohf8kc2b1a', '13.12.10.1', 1588249750, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393735303b),
('f8b08t45p49urf1spgij1idtk3tl92ch', '13.12.10.1', 1588249751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393735313b),
('0idrd3dkva7jnfg6usl18ugsbmc2q6m6', '13.12.10.1', 1588249751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393735313b),
('71q5s517p2to20h7j6udqmtbtf1ssjh8', '13.12.10.1', 1588249752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393735313b),
('3iem128huskf6n0sdc1g4ddldnb104vo', '13.12.10.1', 1588249752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393735323b),
('i6j876us2uq7c4c4u7qcg8rerirbt7ka', '13.12.10.1', 1588249752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393735323b),
('nhaqtta0drg95vgb92dp1nh86go0ogfq', '13.12.10.1', 1588249753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393735333b),
('8tr48sapgjt92maj975efs3n1vko3mir', '13.12.10.1', 1588249753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393735333b),
('r6bkl3h1j0bghlssgfgtcmrbdtjdf50k', '13.12.10.1', 1588249754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393735343b),
('6010hodo2g91lhsiffocvnoic0m6d81d', '13.12.10.1', 1588249754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393735343b),
('9ftjtvtci32bk9hdo5o8fu6rap3ob0ch', '13.12.10.1', 1588249755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393735353b),
('c0lopjc40r3f03at96pf7dp010upj6vd', '13.12.10.1', 1588249756, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393735363b),
('vl58im6k6k2gr02c44lpctpnil76qf2v', '13.12.10.1', 1588249759, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393735393b),
('2gka4iteuc996kth8fobb212gco4tvkj', '13.12.10.1', 1588249834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383234393833343b),
('qe6lmtvhtgpchghkb633ca15bpm9ub78', '13.12.10.1', 1588250235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383235303233353b),
('i79lnjcaaj0tclcrtonc0f045fsk0qf8', '13.12.10.1', 1588250236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383235303233363b),
('khucemgvhcklbd4o6baa7jtr9q57sucv', '13.12.10.1', 1588250961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383235303936313b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('ml3rr1avjperkcm28r8kk60f5t03iuu0', '13.12.10.1', 1588250963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383235303936313b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('ms7njdekmpqf5ot4tokno6get5gk5osv', '13.12.10.1', 1588252744, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383235323734343b),
('1fdhdfmad17n8k0k0ifbp93m1jvre337', '13.12.10.1', 1588253202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383235333230323b),
('kjck6kresb7nsnufnohhiv2qctmjiq0l', '13.12.10.1', 1588253721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383235333732313b),
('8m2s6u6e1alfm68hlh6nnp672afcc8o4', '13.12.10.1', 1588253752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383235333735323b),
('vtruhqkqoo9bjcefimb1k12prvvebgcr', '13.12.10.1', 1588254668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383235343636383b),
('e23tebkr5on4k369onkqgasj2fjsft8r', '13.12.10.1', 1588257875, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383235373633303b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323430373531223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6d6573736167657c733a32373a223c703e416e646120626572686173696c206d6173756b2e3c2f703e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('1uruvtikpnk4b230nf0rns8sfcn7bpf1', '13.12.10.1', 1588257646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383235373634363b6572726f727c733a3130363a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f66617669636f6e2e69636f223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('f7eff7p8kcpoggg2nlug7vnq0aar2d04', '13.12.10.1', 1588257646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383235373634363b),
('snssed1s0e8ftcv3sllfnqu0h7icqch3', '13.12.10.1', 1588258133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383235373933313b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323430373531223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383235373936383b),
('4nmpc3gddqti3is48bolgv00g92mp4o3', '13.12.10.1', 1588258879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383235383730383b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323430373531223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383235373936383b),
('ed0g2u0r8u3iof4aqn5h4o8mtve8fojl', '13.12.10.1', 1588259426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383235393231303b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838323430373531223b6c6173745f69707c733a31303a2231332e31322e31302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383235373936383b),
('l3sfol6vngqpnnon33trm8983uduunlo', '13.12.10.1', 1588260742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383236303734323b),
('l0a6f5rdan9sjjjipa35n9vit2a7dh4u', '13.12.10.1', 1588260950, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383236303935303b),
('thpnc0tq0t01bo67su6p5q9rt209p3jc', '13.12.10.1', 1588267849, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383236373834393b6572726f727c733a3130363a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f66617669636f6e2e69636f223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('aruluv09cnirvnkecgh3va4gvc2k2900', '13.12.10.1', 1588269104, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383236393130343b),
('388263v500adnrlaq2jf85f59ebc71j5', '13.12.10.1', 1588271041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383237313034313b),
('9gs1jvg8jg42gmfpdrll4ppmj9s5fl7j', '13.12.10.1', 1588271077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383237313037363b),
('ukvjq6ke5ki5kdthh8l0tccr89j8dk1b', '13.12.10.1', 1588271078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383237313037373b),
('jdi287rdbavhds2kckq9tclh7t9ubfip', '13.12.10.1', 1588271084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383237313038343b),
('3govjeb0pt24ufurafbm5pcom3njnm0t', '13.12.10.1', 1588275430, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383237353433303b),
('q8cc75a7i28hsa7vkfjmismk1ke251f3', '13.12.10.1', 1588277362, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383237373336323b),
('615a8569s9es28s9j21is3p7hhp67q9l', '13.12.10.1', 1588285778, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383238353737383b),
('efgc6p3j60lal25977mnco36uqhil1uc', '13.12.10.1', 1588294638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383239343633383b),
('anqk4rpqfrfrdk7vr2fndfq3dg2gd1ud', '13.12.10.1', 1588294639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383239343633393b6572726f727c733a3130323a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f776d6561742e73746f72652f6164732e747874223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('mopkijrh44iarebhn2d38ntcdbqjtllb', '13.12.10.1', 1588294639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383239343633393b),
('5ods0586o89p7iub3gvajc1ihce37opf', '13.12.10.1', 1588294961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383239343936313b),
('td0klgkoptfknh6pobsu4rcgoprpge7b', '13.12.10.1', 1588300028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383330303032383b),
('qqfq2vpihpft3m7ngphd47nsaa6okua2', '13.12.10.1', 1588302110, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383330323131303b),
('gf54p2ngg98892o8ainm4m953cqq05p5', '13.12.10.1', 1588302116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383330323131363b),
('nn02hu7udk2gul8h4qctslin4k50fbm7', '13.12.10.1', 1588302527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383330323532373b),
('ipms9osn0ivursl6vhgdcnibvn916inm', '13.12.10.1', 1588302532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383330323533323b),
('b4j45916d5vvhcqbph9ratccmu6jv0on', '13.12.10.1', 1588309050, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383330383735313b7265717565737465645f706167657c733a343a2263617274223b),
('33uhdmjch9dt56scdati548t8b9gpu9i', '13.12.10.1', 1588309173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383330393035373b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('hebu5j9s06m0rsvrmlrmp5vmcs3u7k5h', '13.12.10.1', 1588310158, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383331303135383b);

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
(1, 'imageedit_3_2567267271.png', 'imageedit_3_2567267272.png', 'WTouch', 'indonesian', 1, 0, 'IDR', 0, 10, '3.4.25', 0, 5, 'WTOUCH', 'QUOTE', 'PO', 'TR', 'DO', 'IPAY', 'SR', 'PR', '', 0, 'default', 1, 1, 0, 1, 0, 0, 0, 1, 0, 'Asia/Jakarta', 800, 800, 150, 150, 1, 0, 0, 0, NULL, 'smtp', '/usr/sbin/sendmail', 'mail.wmp-group.co.id ', 'no-reply@wmp-group.co.id', 'itwmp1234', '465', 'ssl', NULL, 1, 'wmeat.shop@gmail.com', 0, 4, 1, 0, 2, 0, 1, 1, 0, 0, ',', '.', 0, 6, 'nulled', 'nulled', 0, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 'Rp', 0, '-', 0, 1, 1, 'POP', 90, '', 0, 0, 'AN', 'dompdf');

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
(1, 'WTouch', 'Toko Daging Onlie', 1, 6, '', '', '', '', 'We accept PayPal or you can pay with your credit/debit cards.', 'Please click the link below to follow us on social media.', '#', '', '', '', '08111109554', 'wmeat.shop@gmail.com', 'We use cookies to improve your experience on our website. By browsing this website, you agree to our use of cookies.', '', '[{\"image\":\"32e71ac63939b0f7daf3ccb711eed0f3.jpg\",\"link\":\"\",\"caption\":\"\"},{\"link\":\"\",\"caption\":\"\"},{\"link\":\"\",\"caption\":\"\"},{\"link\":\"\",\"caption\":\"\"},{\"link\":\"\",\"caption\":\"\"}]', 0, '', 'envato_username', '3.4.25', 'imageedit_3_2567267274.png', '', 0, 0, 'WTouch ada karena dipercaya', 0, 0);

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
(1, 0x31332e31322e31302e31, 0x0000, 'owner', 'a1a91380a8bf75d6792ebb3769baa14487f6b774', NULL, 'owner@tecdiary.com', NULL, NULL, NULL, NULL, 1351661704, 1588257875, 1, 'Owner', 'Owner', 'WTouch', '012345678', NULL, 'male', 1, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0),
(2, 0x31332e31322e31302e31, 0x31332e31322e31302e31, 'arie', '6e35ac30d83861f64e1c036af8e794eb63af8e93', NULL, 'nugis999@gmail.com', '885b8046f4b6199c73795f7afa2f826bcacfdd40', NULL, NULL, NULL, 1588167382, 1588257558, 1, 'arie', 'nugraha', 'wmp', '087771187604', NULL, 'male', 3, NULL, NULL, 7, 0, 0, 0, 0, 0, 0),
(3, NULL, 0x31332e31322e31302e31, 'john', 'a4526193f7a50d654798528690ac4565c23bc207', NULL, 'ariesnugs999@gmai.com', '44efd537f5d0507c3252aae11b006f92ca60f508', NULL, NULL, NULL, 1588171331, 1588171331, 0, 'john', 'nugraha', 'wmp', '087771187604', NULL, 'male', 3, NULL, NULL, 8, 0, 0, 0, 0, 0, 0),
(4, 0x31332e31322e31302e31, 0x31332e31322e31302e31, 'sales', 'b25cad49eaca2f14789cafa0f9a80760bf0f6532', NULL, 'wmeat.shop@gmail.com', NULL, NULL, NULL, NULL, 1588179657, 1588179676, 1, 'sales', 'WMeat', 'WMeat', '123', NULL, 'male', 5, 1, 6, NULL, 0, 0, 0, 0, 0, 0),
(5, 0x31332e31322e31302e31, 0x31332e31322e31302e31, 'anto', '020fe4b59208937c1fef186f538697dedd03596b', NULL, 'anto@wmp-group.co.id', NULL, NULL, NULL, NULL, 1588222138, 1588240566, 1, 'Suhar', 'tanto', 'Widodo Makmur Perkasa', '0857-7771-4746', NULL, 'male', 3, NULL, NULL, 9, 0, 0, 0, 0, 0, 0);

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
(34, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-30 14:44:35');

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
(21, 21, 1, '17.0000', NULL, '0.0000'),
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
(22, 22, 1, '11.0000', NULL, '0.0000');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sma_adjustments`
--
ALTER TABLE `sma_adjustments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sma_adjustment_items`
--
ALTER TABLE `sma_adjustment_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `sma_costing`
--
ALTER TABLE `sma_costing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_products`
--
ALTER TABLE `sma_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sma_user_logins`
--
ALTER TABLE `sma_user_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
