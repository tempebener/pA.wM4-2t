-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Apr 2020 pada 06.25
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
(6, NULL, 'biller', NULL, NULL, 'WMeat Store', 'WMeat', '', 'Jl. Raya Cilangkap No.58, RT.7/RW.3, Cilangkap', 'Jakarta Timur', 'DKI Jakarta', '13870', 'Indonesia', '0811 1109 554', 'wmeat.shop@gmail.com', '', '', '', '', '', '', '', 0, 'imageedit_3_256726727.png', 0, NULL, NULL, NULL, '');

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

--
-- Dumping data untuk tabel `sma_login_attempts`
--

INSERT INTO `sma_login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(1, 0x3a3a31, 'admin', 1588128167);

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
(1, '2015-03-01', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

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
(1, '2020-04-29 06:24:17', 1, '5000.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(1, 22, 20, 1, 1, 3, '1', 'GST Reg', 'VAT Reg', '123456789', '987654321', 'BIXOLON SRP-350II', 'x1C', 'Ctrl+F3', 'Ctrl+Shift+M', 'Ctrl+Shift+C', 'Ctrl+Shift+A', 'Ctrl+F11', 'Ctrl+F12', 'F4', 'F7', 'F9', 'F8', 'Ctrl+F1', 'Ctrl+F2', 'Ctrl+F10', 1, 'BIXOLON SRP-350II, BIXOLON SRP-350II', 0, 'default', 1, 0, 0, 0, 42, NULL, 'purchase_code', 'envato_username', '3.4.25', 0, 0, 0, NULL, 1, NULL, NULL, 0, NULL, NULL);

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
(1, '9919000109983', 'WMeat Daging Rendang (Chuck)', 21, '0.0000', '88000.0000', '2.0000', '12d0253a1714c06be8edce5d33dafbdc.png', 11, NULL, '', '', '', '', '', '', NULL, NULL, 1, '<table>\r\n <colgroup></colgroup><tbody><tr>\r\n  <td rowspan=\"2\"><br></td>\r\n </tr></tbody></table>', NULL, 'code128', '', '<table>\r\n <colgroup></colgroup><tbody><tr>\r\n  <td rowspan=\"2\"><p>Daging Sapi Lokal - Chuck<br>Packing per pack 800 gr<br>Produk dikemas dalam kondisi beku</p></td>\r\n </tr></tbody></table>', NULL, 'standard', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '88000.0000', '2020-04-01', '2020-04-30', '', NULL, NULL, NULL, NULL, 21, 21, 12, 'wmeat-daging-rendang-chuck', 1, '0.8000', NULL, 6, 0, '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sma_product_photos`
--

CREATE TABLE `sma_product_photos` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sma_product_photos`
--

INSERT INTO `sma_product_photos` (`id`, `product_id`, `photo`) VALUES
(1, 1, '2e9567b8235295322251cf13366eb86a.png'),
(2, 1, 'a374dcec87ba5e5bdae0dffc8a044b85.png');

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
(1, 1, 'size 58', NULL, '1.0000', NULL),
(2, 1, 'size 60', NULL, '0.0000', NULL),
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
('4goajgh9e7mkniqaf3f0t9kn2dlt2nmr', '::1', 1588146254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134363235343b6572726f727c733a3231353a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f77746f7563682f7468656d65732f64656661756c742f73686f702f6173736574732f666f6e74732f7562756e74752f7562756e74752d76392d637972696c6c69632d6578745f677265656b2d6578745f6c6174696e2d6578745f677265656b5f6c6174696e5f637972696c6c69632d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('qku72ot0e4pavaf16r01gitf2ln9t99n', '::1', 1588146255, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134363235353b6572726f727c733a3231313a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f77746f7563682f7468656d65732f64656661756c742f73686f702f6173736574732f666f6e74732f7562756e74752f7562756e74752d76392d637972696c6c69632d6578745f677265656b2d6578745f6c6174696e2d6578745f677265656b5f6c6174696e5f637972696c6c69632d3730302e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('qt6588gndku1jr2pa8b2hjcqutgd3gh1', '::1', 1588146232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134363233323b6572726f727c733a3231313a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f77746f7563682f7468656d65732f64656661756c742f73686f702f6173736574732f666f6e74732f7562756e74752f7562756e74752d76392d637972696c6c69632d6578745f677265656b2d6578745f6c6174696e2d6578745f677265656b5f6c6174696e5f637972696c6c69632d3730302e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('7qu9hg32dmk14njibb7ikj3urbsb3uls', '::1', 1588146232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134363233323b6572726f727c733a3231353a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f77746f7563682f7468656d65732f64656661756c742f73686f702f6173736574732f666f6e74732f7562756e74752f7562756e74752d76392d637972696c6c69632d6578745f677265656b2d6578745f6c6174696e2d6578745f677265656b5f6c6174696e5f637972696c6c69632d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('l1nd8di06ao3vunsag2rnq7ut7g64lb8', '::1', 1588146227, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134363232373b6572726f727c733a3231313a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f77746f7563682f7468656d65732f64656661756c742f73686f702f6173736574732f666f6e74732f7562756e74752f7562756e74752d76392d637972696c6c69632d6578745f677265656b2d6578745f6c6174696e2d6578745f677265656b5f6c6174696e5f637972696c6c69632d3730302e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('bdp2n5mnimnkegjf3kn4m1bjekige78j', '::1', 1588146227, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134363232373b6572726f727c733a3231353a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f77746f7563682f7468656d65732f64656661756c742f73686f702f6173736574732f666f6e74732f7562756e74752f7562756e74752d76392d637972696c6c69632d6578745f677265656b2d6578745f6c6174696e2d6578745f677265656b5f6c6174696e5f637972696c6c69632d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('lic6uo9g03s5jsh4v5lb0229md7e96et', '::1', 1588146400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134363232363b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313238313738223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383134313435373b72656769737465725f69647c733a313a2231223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d32392031333a32343a3137223b),
('6m41be7n0dih0ro1eii932jjqqga24tm', '::1', 1588146223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134363232333b6572726f727c733a3231313a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f77746f7563682f7468656d65732f64656661756c742f73686f702f6173736574732f666f6e74732f7562756e74752f7562756e74752d76392d637972696c6c69632d6578745f677265656b2d6578745f6c6174696e2d6578745f677265656b5f6c6174696e5f637972696c6c69632d3730302e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('ujrqa477pjteinq1rp6glj04rkj8ul21', '::1', 1588146222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134363232323b6572726f727c733a3231353a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f77746f7563682f7468656d65732f64656661756c742f73686f702f6173736574732f666f6e74732f7562756e74752f7562756e74752d76392d637972696c6c69632d6578745f677265656b2d6578745f6c6174696e2d6578745f677265656b5f6c6174696e5f637972696c6c69632d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('tvcte2cfabhm0aiutcn414si72bhmtd4', '::1', 1588145665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134353538303b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('7seagf6tgsm9sfochgjnijl6n2mcekl7', '::1', 1588144782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134343738313b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('tsspuk6c65jvesb94hrtnmavd7vg1f4e', '::1', 1588145395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134353135313b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('kq419f87mm7j8nlk55e9akubpr8lj9s3', '::1', 1588145654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134353633303b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313238313738223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383134313435373b72656769737465725f69647c733a313a2231223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d32392031333a32343a3137223b),
('ssktf024hfgcm7e5qa4o03gk8v8lh7l3', '::1', 1588144473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134343436313b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('itonrqidhg9mguue0lpq82f3ef9mr0l3', '::1', 1588143548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134333331383b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('su03jirgokm0for4oml6jt8ci5qofv4h', '::1', 1588144067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134333831393b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('2oa2aa4b710cce272k908h41g661i8e2', '::1', 1588144311, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134343134353b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('2kff6hn8i8e2hef3ucmrn55kcvefd4ci', '::1', 1588144456, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134343331393b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313238313738223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383134313435373b72656769737465725f69647c733a313a2231223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d32392031333a32343a3137223b),
('t32hvdsf8fi88blf4ftu13fs0b0usn5q', '::1', 1588143251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134333032393b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313238313738223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383134313435373b72656769737465725f69647c733a313a2231223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d32392031333a32343a3137223b),
('vreujp5nb6sld9n1iho51drg79dqcnmt', '::1', 1588139463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383133393431373b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313238313738223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6572726f727c733a38383a223c703e4265726b61732079616e6720416e6461206d656e636f626120756e74756b206d656e67756e67676168206c65626968206265736172206461726920756b7572616e2079616e67206469697a696e6b616e2e3c2f703e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('lg6f5cs4km8s5r0rruplh448hcp1rk02', '::1', 1588139756, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383133393632313b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('91mh8pdcgk06dvh7op1n769jrit16s6c', '::1', 1588140916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383133393736323b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313238313738223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('v4ihoq4hf9t3517n403oma83hlqplnoh', '::1', 1588139996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383133393935383b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('bdl2fkjd4jmr25atrcj8fgqm3uq40v0v', '::1', 1588140999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134303939393b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313238313738223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('jbqhj70es37sb57rn6cq9af3m4ssgscs', '::1', 1588141542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134313430383b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('984tgrtpr0uj04dvbo23i0ojklr5o187', '::1', 1588141677, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134313435303b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313238313738223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383134313435373b72656769737465725f69647c733a313a2231223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d32392031333a32343a3137223b),
('pmnqua85o4tuu6am0thipjhanrgseumg', '::1', 1588141728, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134313732383b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('nqv2gt4nh309pogdgmu2ig9k7jecc4vc', '::1', 1588142301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134323137333b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('ebdvp46u6jp5jrcra4ceuc2m51jhuh54', '::1', 1588142613, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134323332373b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313238313738223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383134313435373b72656769737465725f69647c733a313a2231223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d32392031333a32343a3137223b),
('kj2plv5ronev6g1hi44k8qa8qacupknn', '::1', 1588142548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134323530363b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('as1rplv42tf8ge7i1oc4t3kq0u86vc5a', '::1', 1588142788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134323633363b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313238313738223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383134313435373b72656769737465725f69647c733a313a2231223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d32392031333a32343a3137223b),
('ftbqngiqvti0qo5d0tg0peu6e7i0urm1', '::1', 1588143158, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134333031363b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('o412l1hek2hdni0ejd525t0k61a32pt3', '::1', 1588146939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134363637383b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353838313238313738223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313538383134313435373b72656769737465725f69647c733a313a2231223b636173685f696e5f68616e647c733a393a22353030302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032302d30342d32392031333a32343a3137223b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('3vrsh3ikmohgepegfuhccmo2cok8q764', '::1', 1588147145, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134373134353b6572726f727c733a3231313a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f77746f7563682f7468656d65732f64656661756c742f73686f702f6173736574732f666f6e74732f7562756e74752f7562756e74752d76392d637972696c6c69632d6578745f677265656b2d6578745f6c6174696e2d6578745f677265656b5f6c6174696e5f637972696c6c69632d3730302e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('dv474q5l3trbdjktr2e878laca11h59t', '::1', 1588147145, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134373134353b6572726f727c733a3231353a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f77746f7563682f7468656d65732f64656661756c742f73686f702f6173736574732f666f6e74732f7562756e74752f7562756e74752d76392d637972696c6c69632d6578745f677265656b2d6578745f6c6174696e2d6578745f677265656b5f6c6174696e5f637972696c6c69632d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('4q6epbsm995u12ng0be5ogq79u5cbuah', '::1', 1588147651, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134373433323b),
('q58lrl3i40talj21t01sn7s9jk9mnqe0', '::1', 1588147605, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134373630353b6572726f727c733a3231313a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f77746f7563682f7468656d65732f64656661756c742f73686f702f6173736574732f666f6e74732f7562756e74752f7562756e74752d76392d637972696c6c69632d6578745f677265656b2d6578745f6c6174696e2d6578745f677265656b5f6c6174696e5f637972696c6c69632d3730302e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('8666fmc0qt9bn997ocpck30gjt4ni7on', '::1', 1588147566, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134373536363b6572726f727c733a3231313a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f77746f7563682f7468656d65732f64656661756c742f73686f702f6173736574732f666f6e74732f7562756e74752f7562756e74752d76392d637972696c6c69632d6578745f677265656b2d6578745f6c6174696e2d6578745f677265656b5f6c6174696e5f637972696c6c69632d3730302e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('bpgtu9ofatndjttmor9kdipsgl28rqit', '::1', 1588147566, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134373536363b6572726f727c733a3231353a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f77746f7563682f7468656d65732f64656661756c742f73686f702f6173736574732f666f6e74732f7562756e74752f7562756e74752d76392d637972696c6c69632d6578745f677265656b2d6578745f6c6174696e2d6578745f677265656b5f6c6174696e5f637972696c6c69632d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('ou8is4u658aj8hoqgqbukg08jf6k6jml', '::1', 1588147578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134373537383b6572726f727c733a3231353a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f77746f7563682f7468656d65732f64656661756c742f73686f702f6173736574732f666f6e74732f7562756e74752f7562756e74752d76392d637972696c6c69632d6578745f677265656b2d6578745f6c6174696e2d6578745f677265656b5f6c6174696e5f637972696c6c69632d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('qtvpf39qmak4vkgt2n61rsdvjeidlcdf', '::1', 1588147578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134373537383b6572726f727c733a3231313a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f77746f7563682f7468656d65732f64656661756c742f73686f702f6173736574732f666f6e74732f7562756e74752f7562756e74752d76392d637972696c6c69632d6578745f677265656b2d6578745f6c6174696e2d6578745f677265656b5f6c6174696e5f637972696c6c69632d3730302e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('c43n0uafb0sdv233v40s60t9sc3g94hv', '::1', 1588147605, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134373630353b6572726f727c733a3231353a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f77746f7563682f7468656d65732f64656661756c742f73686f702f6173736574732f666f6e74732f7562756e74752f7562756e74752d76392d637972696c6c69632d6578745f677265656b2d6578745f6c6174696e2d6578745f677265656b5f6c6174696e5f637972696c6c69632d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('p2l8u805v8gjidoiufjj7rb14atqmo7g', '::1', 1588149200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383134393230303b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('fcop9fmfa52i4i0ojs8d528cpqk687ir', '::1', 1588220662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538383232303636323b);

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
(1, 'imageedit_3_2567267271.png', 'imageedit_3_2567267272.png', 'WTouch', 'indonesian', 1, 0, 'IDR', 0, 10, '3.4.25', 1, 5, 'SALE', 'QUOTE', 'PO', 'TR', 'DO', 'IPAY', 'SR', 'PR', '', 0, 'default', 1, 1, 1, 1, 0, 1, 0, 1, 0, 'Asia/Jakarta', 800, 800, 150, 150, 1, 0, 0, 0, NULL, 'mail', '/usr/sbin/sendmail', 'pop.gmail.com', 'contact@sma.tecdiary.org', 'jEFTM4T63AiQ9dsidxhPKt9CIg4HQjCN58n/RW9vmdC/UDXCzRLR469ziZ0jjpFlbOg43LyoSmpJLBkcAHh0Yw==', '25', NULL, NULL, 1, 'wmeat.shop@gmail.com', 0, 4, 1, 0, 2, 0, 1, 1, 0, 0, ',', '.', 0, 6, 'nulled', 'nulled', 0, NULL, NULL, NULL, NULL, 0, 1, 1, 1, '', 0, '-', 0, 1, 1, 'POP', 90, '', 0, 0, 'AN', 'dompdf');

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
(1, 'WTouch', 'Toko Daging Onlie', 1, 6, '', '', '', '', 'We accept PayPal or you can pay with your credit/debit cards.', 'Please click the link below to follow us on social media.', 'http://facebook.com/tecdiary', 'http://twitter.com/tecdiary', '', '', '08111109554', 'wmeat.shop@gmail.com', 'We use cookies to improve your experience on our website. By browsing this website, you agree to our use of cookies.', '', '[{\"image\":\"dfac3250c81bf1015255ba5c2c01f447.jpg\",\"link\":\"\",\"caption\":\"\"},{\"link\":\"\",\"caption\":\"\"},{\"link\":\"\",\"caption\":\"\"},{\"link\":\"\",\"caption\":\"\"},{\"link\":\"\",\"caption\":\"\"}]', 0, '', 'envato_username', '3.4.25', 'imageedit_3_2567267274.png', '', 0, 0, 'WTouch ada karena dipercaya', 0, 0);

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
(1, 0x3a3a31, 0x0000, 'owner', 'a1a91380a8bf75d6792ebb3769baa14487f6b774', NULL, 'owner@tecdiary.com', NULL, NULL, NULL, NULL, 1351661704, 1588134414, 1, 'Owner', 'Owner', 'WTouch', '012345678', NULL, 'male', 1, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0);

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
(7, 1, NULL, 0x3a3a31, 'owner', '2020-04-29 04:26:54');

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
(16, 'size 500');

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
(1, 1, 1, '0.0000', NULL, '749.0000'),
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
(20, 20, 1, '0.0000', NULL, '160.0000');

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
(1, 1, 1, 1, '0.0000', NULL),
(2, 2, 1, 1, '0.0000', NULL),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_adjustments`
--
ALTER TABLE `sma_adjustments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_adjustment_items`
--
ALTER TABLE `sma_adjustment_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sma_costing`
--
ALTER TABLE `sma_costing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_payments`
--
ALTER TABLE `sma_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_permissions`
--
ALTER TABLE `sma_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sma_pos_register`
--
ALTER TABLE `sma_pos_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_quotes`
--
ALTER TABLE `sma_quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_quote_items`
--
ALTER TABLE `sma_quote_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sma_user_logins`
--
ALTER TABLE `sma_user_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `sma_variants`
--
ALTER TABLE `sma_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `sma_warehouses`
--
ALTER TABLE `sma_warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sma_warehouses_products`
--
ALTER TABLE `sma_warehouses_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
