-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 31, 2018 at 06:39 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `astcurrent`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(10) UNSIGNED NOT NULL,
  `announcement_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `announcement_name`, `announcement`, `active`, `url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Semicon18', NULL, 0, 'http://semi18.nvytes.co/inv18/16897.html', 'announcements/July2018/gTNhbZYpVW6jD4EK0ZMR.png', '2018-07-12 03:45:00', '2018-07-17 05:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `carousels`
--

CREATE TABLE `carousels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `active` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carousels`
--

INSERT INTO `carousels` (`id`, `name`, `image`, `sort_order`, `active`, `created_at`, `updated_at`) VALUES
(1, 'AST-300', 'carousels/July2018/icxoEuRpSAJnIaxN4cmw.png', 0, 1, '2018-07-12 03:31:00', '2018-07-12 03:38:11'),
(2, 'Setna Ontos 7', 'carousels/July2018/IV6gquLvjhXPkVWLFWx9.png', 2, 1, '2018-07-12 03:34:56', '2018-07-12 03:34:56'),
(3, 'AST-230M', 'carousels/July2018/WDV1y7jd9gjdPzwZEhAs.png', 3, 1, '2018-07-12 03:35:17', '2018-07-12 03:35:17'),
(4, 'AST-200H', 'carousels/July2018/RCGB9cQUatA66cmTQGFy.png', 6, 1, '2018-07-12 03:35:00', '2018-07-12 03:36:02'),
(6, 'AST-S200T', 'carousels/July2018/GIzBozjHtb2JlEdFkuU4.png', 7, 1, '2018-07-12 03:36:34', '2018-07-12 03:36:34'),
(7, 'AST-M200C', 'carousels/July2018/qjSD4EF3IM8gPu4rcgma.png', 5, 1, '2018-07-12 03:36:58', '2018-07-12 03:36:58'),
(8, 'AST-200', 'carousels/July2018/ay79Ih0Sc4qV6BCoec9S.png', 1, 1, '2018-07-12 03:37:35', '2018-07-12 03:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'announcement_name', 'text', 'Announcement Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(25, 4, 'announcement', 'text', 'Announcement', 0, 0, 1, 1, 1, 1, NULL, 3),
(26, 4, 'active', 'checkbox', 'Active', 1, 1, 1, 1, 1, 1, NULL, 6),
(27, 4, 'url', 'text', 'Url', 0, 0, 1, 1, 1, 1, NULL, 4),
(28, 4, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 5),
(29, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 7),
(30, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(31, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(32, 5, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(33, 5, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 3),
(34, 5, 'sort_order', 'number', 'Sort Order', 1, 1, 1, 1, 1, 1, NULL, 4),
(35, 5, 'active', 'checkbox', 'Active', 0, 1, 1, 1, 1, 1, NULL, 5),
(36, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(37, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(38, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(39, 6, 'parent_id', 'select_dropdown', 'Parent Id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(40, 6, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(41, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(42, 6, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(43, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(44, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(45, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(46, 7, 'author_id', 'text', 'Author Id', 1, 0, 0, 0, 0, 0, NULL, 2),
(47, 7, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(48, 7, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, NULL, 6),
(49, 7, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 7),
(50, 7, 'active', 'checkbox', 'Active', 1, 1, 1, 1, 1, 1, NULL, 8),
(51, 7, 'has_content_bg', 'checkbox', 'Has Content Bg', 1, 0, 1, 1, 1, 1, NULL, 4),
(52, 7, 'content_bg_color', 'text', 'Content Bg Color', 0, 0, 1, 1, 1, 1, NULL, 5),
(53, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 9),
(54, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 10),
(55, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(56, 8, 'author_id', 'text', 'Author Id', 1, 0, 0, 0, 0, 0, NULL, 2),
(57, 8, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(58, 8, 'excerpt', 'text_area', 'Excerpt', 0, 1, 1, 1, 1, 1, NULL, 4),
(59, 8, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, NULL, 5),
(60, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 10),
(61, 8, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(62, 8, 'meta_description', 'text', 'Meta Description', 0, 1, 1, 1, 1, 1, NULL, 7),
(63, 8, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, NULL, 8),
(64, 8, 'active', 'checkbox', 'Active', 1, 1, 1, 1, 1, 1, NULL, 9),
(65, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 11),
(66, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 12),
(67, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(68, 9, 'author_id', 'text', 'Author Id', 1, 0, 1, 1, 0, 1, NULL, 2),
(69, 9, 'category_id', 'text', 'Category Id', 0, 0, 1, 1, 1, 0, NULL, 3),
(70, 9, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(71, 9, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, NULL, 7),
(72, 9, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, NULL, 5),
(73, 9, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, NULL, 6),
(74, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 8),
(75, 9, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 9),
(76, 9, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 10),
(77, 9, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, NULL, 11),
(78, 9, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 14),
(79, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 12),
(80, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(81, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(82, 10, 'product_name', 'text', 'Product Name', 1, 1, 1, 1, 1, 1, NULL, 3),
(83, 10, 'product_id', 'text', 'Product Id', 0, 0, 0, 0, 0, 0, NULL, 2),
(84, 10, 'sub_header', 'text', 'Sub Header', 0, 0, 1, 1, 1, 1, NULL, 4),
(85, 10, 'uses', 'text', 'Uses', 0, 0, 1, 1, 1, 1, NULL, 6),
(86, 10, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, NULL, 8),
(87, 10, 'features_specs', 'rich_text_box', 'Features Specs', 0, 0, 1, 1, 1, 1, NULL, 9),
(88, 10, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 10),
(89, 10, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"DRAFT\":\"Draft\",\"PUBLISHED\":\"Published\",\"PENDING\":\"Pending\"}}', 14),
(90, 10, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"product_name\",\"forceUpdate\":true}}', 15),
(91, 10, 'data_sheet', 'text', 'Data Sheet', 0, 0, 1, 1, 1, 1, NULL, 12),
(92, 10, 'sort_order', 'text', 'Sort Order', 0, 0, 1, 1, 1, 1, NULL, 13),
(93, 10, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, NULL, 7),
(94, 10, 'tool_name', 'text', 'Tool Name', 0, 0, 1, 1, 1, 1, NULL, 5),
(95, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 16),
(96, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 17),
(97, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(98, 11, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, NULL, 2),
(99, 11, 'domain', 'text', 'Domain', 0, 1, 1, 1, 1, 1, NULL, 3),
(100, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(101, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(102, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(103, 12, 'category', 'text', 'Category', 0, 1, 1, 1, 1, 1, NULL, 2),
(104, 12, 'category_image', 'image', 'Category Image', 0, 1, 1, 1, 1, 1, NULL, 3),
(105, 12, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"category\",\"forceUpdate\":true}}', 4),
(106, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(107, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(108, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(109, 13, 'company_name', 'text', 'Company Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(110, 13, 'company_logo', 'image', 'Company Logo', 0, 1, 1, 1, 1, 1, NULL, 3),
(111, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(112, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(113, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(114, 14, 'company_id', 'text', 'Company Id', 1, 0, 1, 1, 1, 1, NULL, 2),
(115, 14, 'categories', 'select_dropdown', 'Categories', 0, 1, 1, 1, 1, 1, '{\"default\":\"CAMERAS\",\"options\":{\"CAMERAS\":\"cameras\",\"ADAPTERS\":\"adapters\",\"BOOMSTANDS\":\"boomstands\"}}', 4),
(116, 14, 'data_sheet', 'text', 'Data Sheet', 0, 0, 1, 1, 1, 1, NULL, 5),
(117, 14, 'product_name', 'text', 'Product Name', 0, 1, 1, 1, 1, 1, NULL, 3),
(118, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(119, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(120, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(121, 15, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(122, 15, 'dates', 'text', 'Dates', 0, 0, 1, 1, 1, 1, NULL, 3),
(123, 15, 'location', 'text', 'Location', 0, 0, 1, 1, 1, 1, NULL, 4),
(124, 15, 'city', 'text', 'City', 0, 0, 1, 1, 1, 1, NULL, 5),
(125, 15, 'state', 'text', 'State', 0, 0, 1, 1, 1, 1, NULL, 6),
(126, 15, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 7),
(127, 15, 'sort_order', 'number', 'Sort Order', 1, 0, 1, 1, 1, 1, NULL, 8),
(128, 15, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"DRAFT\":\"Draft\",\"PUBLISHED\":\"Published\",\"PENDING\":\"Pending\"}}', 9),
(129, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 10),
(130, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(131, 10, 'price', 'number', 'Price', 0, 0, 1, 1, 1, 1, NULL, 11),
(132, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(133, 16, 'user_id', 'text', 'User Id', 1, 0, 1, 0, 1, 1, NULL, 2),
(134, 16, 'cart', 'text', 'Cart', 1, 0, 1, 1, 1, 1, NULL, 6),
(136, 16, 'name', 'text', 'Name', 1, 0, 1, 1, 1, 1, NULL, 3),
(137, 16, 'payment_id', 'text', 'Payment Id', 1, 0, 1, 1, 1, 1, NULL, 7),
(138, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 8),
(139, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 9),
(140, 16, 'shipping_address', 'text', 'Shipping Address', 1, 1, 1, 1, 1, 1, NULL, 4),
(141, 16, 'billing_address', 'text', 'Billing Address', 1, 0, 1, 1, 1, 1, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(4, 'announcements', 'announcements', 'Announcement', 'Announcements', NULL, 'App\\Announcement', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-12 01:19:30', '2018-07-12 01:19:30'),
(5, 'carousels', 'carousels', 'Carousel', 'Carousels', NULL, 'App\\Carousel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-12 01:20:17', '2018-07-12 01:20:17'),
(6, 'categories', 'categories', 'Category', 'Categories', NULL, 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-12 01:21:34', '2018-07-12 01:21:34'),
(7, 'page_contents', 'page-contents', 'Page Content', 'Page Contents', NULL, 'App\\PageContent', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-12 01:23:50', '2018-07-12 01:23:50'),
(8, 'pages', 'pages', 'Page', 'Pages', NULL, 'App\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-12 01:26:03', '2018-07-12 01:26:03'),
(9, 'posts', 'posts', 'Post', 'Posts', NULL, 'App\\Post', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-12 01:28:43', '2018-07-12 01:28:43'),
(10, 'products', 'products', 'Product', 'Products', NULL, 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-12 01:32:22', '2018-07-12 01:32:22'),
(11, 'solicitors', 'solicitors', 'Solicitor', 'Solicitors', NULL, 'App\\Solicitor', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-12 01:33:01', '2018-07-12 01:33:01'),
(12, 'third_party_categories', 'third-party-categories', 'Third Party Category', 'Third Party Categories', NULL, 'App\\ThirdPartyCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-12 01:34:05', '2018-07-12 01:34:05'),
(13, 'third_party_companies', 'third-party-companies', 'Third Party Company', 'Third Party Companies', NULL, 'App\\ThirdPartyCompany', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-12 01:34:47', '2018-07-12 01:34:47'),
(14, 'third_party_products', 'third-party-products', 'Third Party Product', 'Third Party Products', NULL, 'App\\ThirdPartyProduct', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-12 01:36:01', '2018-07-12 01:36:01'),
(15, 'tradeshow_highlights', 'tradeshow-highlights', 'Tradeshow Highlight', 'Tradeshow Highlights', NULL, 'App\\TradeshowHighlight', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-12 01:37:39', '2018-07-12 01:37:39'),
(16, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-19 00:32:51', '2018-07-19 00:32:51');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(2, 'Inspection and Metrology', '2018-07-12 00:22:32', '2018-07-12 04:10:36'),
(3, 'Plasma Surface Preparation', '2018-07-12 00:23:15', '2018-07-12 04:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-07-12 00:10:16', '2018-07-12 00:10:16', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 12, '2018-07-12 00:10:16', '2018-07-19 00:33:22', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 15, '2018-07-12 00:10:16', '2018-07-19 00:33:22', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 14, '2018-07-12 00:10:16', '2018-07-19 00:33:22', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 16, '2018-07-12 00:10:16', '2018-07-19 00:33:19', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-07-12 00:10:16', '2018-07-12 01:38:28', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-07-12 00:10:16', '2018-07-12 01:38:28', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-07-12 00:10:16', '2018-07-12 01:38:28', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-07-12 00:10:16', '2018-07-12 01:38:28', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 17, '2018-07-12 00:10:16', '2018-07-19 00:33:19', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-07-12 00:10:16', '2018-07-12 01:38:28', 'voyager.hooks', NULL),
(12, 1, 'Announcements', '/admin/announcements', '_self', 'voyager-exclamation', '#000000', NULL, 5, '2018-07-12 01:19:30', '2018-07-19 00:33:31', NULL, ''),
(13, 1, 'Carousels', '', '_self', 'voyager-images', '#000000', NULL, 11, '2018-07-12 01:20:18', '2018-07-19 00:33:22', 'voyager.carousels.index', 'null'),
(14, 1, 'Categories', '', '_self', 'voyager-categories', '#000000', NULL, 13, '2018-07-12 01:21:34', '2018-07-19 00:33:22', 'voyager.categories.index', 'null'),
(15, 1, 'Page Contents', '/admin/page-contents', '_self', 'voyager-file-text', '#000000', NULL, 3, '2018-07-12 01:23:50', '2018-07-19 00:33:37', NULL, ''),
(16, 1, 'Pages', '', '_self', 'voyager-file-text', '#000000', NULL, 7, '2018-07-12 01:26:03', '2018-07-19 00:33:26', 'voyager.pages.index', 'null'),
(17, 1, 'Posts', '', '_self', 'voyager-news', '#000000', NULL, 6, '2018-07-12 01:28:43', '2018-07-19 00:33:26', 'voyager.posts.index', 'null'),
(18, 1, 'Products', '/admin/products', '_self', 'voyager-dollar', '#000000', NULL, 8, '2018-07-12 01:32:23', '2018-07-19 00:33:26', NULL, ''),
(19, 1, 'Solicitors', '/admin/solicitors', '_self', 'voyager-frown', '#000000', NULL, 4, '2018-07-12 01:33:01', '2018-07-19 00:33:31', NULL, ''),
(20, 1, 'Third Party Categories', '', '_self', 'voyager-categories', '#000000', 24, 1, '2018-07-12 01:34:05', '2018-07-12 01:43:59', 'voyager.third-party-categories.index', 'null'),
(21, 1, 'Third Party Companies', '', '_self', 'voyager-company', '#000000', 24, 3, '2018-07-12 01:34:47', '2018-07-12 01:44:24', 'voyager.third-party-companies.index', 'null'),
(22, 1, 'Third Party Products', '', '_self', 'voyager-dollar', '#000000', 24, 2, '2018-07-12 01:36:01', '2018-07-12 01:44:12', 'voyager.third-party-products.index', 'null'),
(23, 1, 'Tradeshow Highlights', '', '_self', 'voyager-exclamation', '#000000', NULL, 10, '2018-07-12 01:37:39', '2018-07-19 00:33:26', 'voyager.tradeshow-highlights.index', 'null'),
(24, 1, 'Third Party', '', '_self', 'voyager-list', '#000000', NULL, 9, '2018-07-12 01:42:48', '2018-07-19 00:33:26', NULL, ''),
(25, 2, 'AST-300', '/product/ast-300', '_self', 'voyager-anchor', '#000000', NULL, 17, '2018-07-12 04:06:13', '2018-07-12 04:06:13', NULL, ''),
(26, 2, 'AST-200', '/product/ast-200', '_self', 'voyager-anchor', '#000000', NULL, 18, '2018-07-12 04:06:41', '2018-07-12 04:06:41', NULL, ''),
(27, 2, 'AST-S200T', '/product/ast-s200t', '_self', 'voyager-anchor', '#000000', NULL, 19, '2018-07-12 04:06:59', '2018-07-12 04:06:59', NULL, ''),
(28, 2, 'AST-M150T', '/product/ast-m150t', '_self', 'voyager-anchor', '#000000', NULL, 20, '2018-07-12 04:07:16', '2018-07-12 04:07:16', NULL, ''),
(29, 2, 'AST-M200C', '/product/ast-m200c', '_self', 'voyager-anchor', '#000000', NULL, 21, '2018-07-12 04:07:33', '2018-07-12 04:07:33', NULL, ''),
(30, 2, 'AST-200H', '/product/ast-200h', '_self', 'voyager-anchor', '#000000', NULL, 22, '2018-07-12 04:07:53', '2018-07-12 04:07:53', NULL, ''),
(31, 2, 'AST-230M', '/product/ast-230m', '_self', 'voyager-anchor', '#000000', NULL, 23, '2018-07-12 04:08:19', '2018-07-12 04:08:19', NULL, ''),
(32, 2, 'AST-Macro Imager', '/product/ast-macro-imager', '_self', 'voyager-anchor', '#000000', NULL, 24, '2018-07-12 04:08:36', '2018-07-12 04:08:36', NULL, ''),
(33, 2, 'AST Autocollimator', '/product/ast-autocollimator', '_self', 'voyager-anchor', '#000000', NULL, 25, '2018-07-12 04:09:05', '2018-07-12 04:09:05', NULL, ''),
(34, 2, 'uScope', '/product/uscope', '_self', 'voyager-anchor', '#000000', NULL, 26, '2018-07-12 04:09:19', '2018-07-12 04:09:19', NULL, ''),
(35, 3, 'Setna Ontos7', '/product/setna-ontos7', '_self', 'voyager-anchor', '#000000', NULL, 27, '2018-07-12 04:11:30', '2018-07-12 04:11:30', NULL, ''),
(36, 1, 'Orders', '', '_self', 'voyager-dollar', '#000000', NULL, 2, '2018-07-19 00:32:51', '2018-07-19 00:33:49', 'voyager.orders.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2018_07_18_170708_create_orders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `shipping_address`, `name`, `payment_id`, `created_at`, `updated_at`, `billing_address`) VALUES
(1, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:499999.98999999999068677425384521484375;s:4:\"item\";O:11:\"App\\Product\":26:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:2;s:12:\"product_name\";s:7:\"AST-200\";s:10:\"product_id\";N;s:10:\"sub_header\";s:46:\"Advanced Defect Inspection  & Metrology System\";s:4:\"uses\";s:21:\"Inspection, Metrology\";s:11:\"description\";s:964:\"<p>This top performance system is designed for applications that require high-speed inspection and precision measurement of wafers and die. It is well suited for use as a dedicated production tool or versatile process development system. It features a powerful set of automated as well as semi-automated optical/video tools optimized for high accuracy, production throughput, and ease of use.</p>\r\n<p>This automated and versatile platform can be configured with specialized optical paths across the spectrum utilizing precise part staging. The system offers significant and unique advantages for dual production/engineering use, and provides the perfect solution when both defect detection and dimensional metrology are required.</p>\r\n<p>The system can be configured or customized to meet your exact requirements with a variety of optical and illumination accessories, custom wafer/part fixtures, as well as custom operator interface, data formats and reports.</p>\";s:14:\"features_specs\";s:1229:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>APPLICATIONS</p>\r\n<ul>\r\n<li>Wafer level defect detection &amp; measurement</li>\r\n<li>Precision MEMS and HD component inspection</li>\r\n<li>Advanced microelectronics package inspection</li>\r\n</ul>\r\n<p>POWERFUL</p>\r\n<ul>\r\n<li>Designed for automatic/semi-automatic operation</li>\r\n<li>Extensive defect detection features &amp; capability</li>\r\n<li>Integrated dimensional metrology features</li>\r\n</ul>\r\n<p>PRECISE</p>\r\n<ul>\r\n<li>Sub-micron precision optical measurements</li>\r\n<li>High accuracy staging with 0.02 &mu;m linear encoder resolution</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p>FAST</p>\r\n<ul>\r\n<li>50-100 defects/measurements per second typical per field of view</li>\r\n<li>200mm/second part staging speed</li>\r\n<li>[Option] 300mm/second part staging speed</li>\r\n</ul>\r\n<p>USER FRIENDLY</p>\r\n<ul>\r\n<li>Very easy to use, program and set up</li>\r\n<li>Highly visual data with rich color graphics &amp; video</li>\r\n</ul>\r\n<p>FLEXIBLE</p>\r\n<ul>\r\n<li>Specialized options for optics, illumination, fixtures</li>\r\n<li>Optional wafer and other part types handling</li>\r\n<li>Customizable for application specific solutions</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/Mo1eD7KJvFquqSeQXfaI.png\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:7:\"ast-200\";s:10:\"data_sheet\";s:61:\"http://advancedspectral.com/storage/pdfs/ast200_datasheet.pdf\";s:10:\"sort_order\";i:2;s:7:\"excerpt\";s:270:\"The AST-200 is designed for applications where high-speed defect detection and precision measurements are required. It features a powerful set of automated as well as semi-automatic optical/video tools optimized for high accuracy, production throughput, and ease of use.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 20:48:00\";s:10:\"updated_at\";s:19:\"2018-07-11 23:05:34\";s:5:\"price\";s:9:\"499999.99\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:2;s:12:\"product_name\";s:7:\"AST-200\";s:10:\"product_id\";N;s:10:\"sub_header\";s:46:\"Advanced Defect Inspection  & Metrology System\";s:4:\"uses\";s:21:\"Inspection, Metrology\";s:11:\"description\";s:964:\"<p>This top performance system is designed for applications that require high-speed inspection and precision measurement of wafers and die. It is well suited for use as a dedicated production tool or versatile process development system. It features a powerful set of automated as well as semi-automated optical/video tools optimized for high accuracy, production throughput, and ease of use.</p>\r\n<p>This automated and versatile platform can be configured with specialized optical paths across the spectrum utilizing precise part staging. The system offers significant and unique advantages for dual production/engineering use, and provides the perfect solution when both defect detection and dimensional metrology are required.</p>\r\n<p>The system can be configured or customized to meet your exact requirements with a variety of optical and illumination accessories, custom wafer/part fixtures, as well as custom operator interface, data formats and reports.</p>\";s:14:\"features_specs\";s:1229:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>APPLICATIONS</p>\r\n<ul>\r\n<li>Wafer level defect detection &amp; measurement</li>\r\n<li>Precision MEMS and HD component inspection</li>\r\n<li>Advanced microelectronics package inspection</li>\r\n</ul>\r\n<p>POWERFUL</p>\r\n<ul>\r\n<li>Designed for automatic/semi-automatic operation</li>\r\n<li>Extensive defect detection features &amp; capability</li>\r\n<li>Integrated dimensional metrology features</li>\r\n</ul>\r\n<p>PRECISE</p>\r\n<ul>\r\n<li>Sub-micron precision optical measurements</li>\r\n<li>High accuracy staging with 0.02 &mu;m linear encoder resolution</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p>FAST</p>\r\n<ul>\r\n<li>50-100 defects/measurements per second typical per field of view</li>\r\n<li>200mm/second part staging speed</li>\r\n<li>[Option] 300mm/second part staging speed</li>\r\n</ul>\r\n<p>USER FRIENDLY</p>\r\n<ul>\r\n<li>Very easy to use, program and set up</li>\r\n<li>Highly visual data with rich color graphics &amp; video</li>\r\n</ul>\r\n<p>FLEXIBLE</p>\r\n<ul>\r\n<li>Specialized options for optics, illumination, fixtures</li>\r\n<li>Optional wafer and other part types handling</li>\r\n<li>Customizable for application specific solutions</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/Mo1eD7KJvFquqSeQXfaI.png\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:7:\"ast-200\";s:10:\"data_sheet\";s:61:\"http://advancedspectral.com/storage/pdfs/ast200_datasheet.pdf\";s:10:\"sort_order\";i:2;s:7:\"excerpt\";s:270:\"The AST-200 is designed for applications where high-speed defect detection and precision measurements are required. It features a powerful set of automated as well as semi-automatic optical/video tools optimized for high accuracy, production throughput, and ease of use.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 20:48:00\";s:10:\"updated_at\";s:19:\"2018-07-11 23:05:34\";s:5:\"price\";s:9:\"499999.99\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";d:499999.98999999999068677425384521484375;}', '18426 Oak Canyon Rd.||551||Canyon Country||CA||91387', 'Frank||Addelia', 'ch_1CpJemLHHmcjfVnVeomrEqdV', '2018-07-19 00:41:45', '2018-07-19 00:41:45', ''),
(2, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:9;a:3:{s:3:\"qty\";i:2;s:5:\"price\";i:4000;s:4:\"item\";O:11:\"App\\Product\":26:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:9;s:12:\"product_name\";s:18:\"AST Autocollimator\";s:10:\"product_id\";N;s:10:\"sub_header\";s:41:\"Highly Flexible  Angle Measurement System\";s:4:\"uses\";s:17:\"Angle Measurement\";s:11:\"description\";s:667:\"<p>Advanced Spectral Technology&rsquo;s Computerized Autocollimator Systems offer users a highly flexible angle measurement system with features not available from other attitude measurement systems.</p>\r\n<p>The user friendly operating software utilizes easy to identify software buttons to select desired system functions.</p>\r\n<p>Software setups allow measurement configuration parameters to be saved and easily recalled.</p>\r\n<p>On-screen Pass/Fail measurement results can be displayed when the option is selected.&nbsp; Pass/Fail measurement tolerances are programmable.</p>\r\n<p>Report files store data in ASCII format for export into Excel or other programs.</p>\";s:14:\"features_specs\";s:1931:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Engineering/Operator Modes to lock out operators from the system and calibration settings.</li>\r\n<li>Multiple Spot measurement &ndash; up to 4&nbsp;&nbsp; measurements.</li>\r\n<li>LED illumination &ndash; minimizes the associated maintenance required and intensity variations often encountered with fiber optic light sources.</li>\r\n<li>Measurement susceptibility to environmental illumination sources has been minimized with proprietary techniques.</li>\r\n<li>Decreased diffraction around the aperture that produces the spot, thus increased repeatability and reduced noise (flair).</li>\r\n<li>Specific color LED&rsquo;s can be chosen (typically&nbsp; 530nm, Green).</li>\r\n<li>Brightness Level - Recipe Controlled</li>\r\n<li>Improved signal to noise ratio.</li>\r\n<li>Custom spot sizes can be made available upon request.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><strong>Digital camera with USB3.0 interface, which:</strong></p>\r\n<ul>\r\n<li>Allows for higher resolution and larger FOV</li>\r\n<li>Allows the use of a laptop, tablet, mini PC, tower, all in one system</li>\r\n<li>Up to 4 collimators per PC</li>\r\n<li>High frame rates for data streaming in, minimizing latency</li>\r\n</ul>\r\n<p><strong><span id=\"u7070-15\">Powerful software includes:</span></strong></p>\r\n<ul>\r\n<li>Windows 7 or 10 32/64 bit compatible</li>\r\n<li>Touch Screen user interface</li>\r\n<li>Multiple modes with lock-outs for engineer/operator</li>\r\n<li>Custom application support available</li>\r\n</ul>\r\n<p><strong>Additional:</strong></p>\r\n<ul>\r\n<li>Practical and unobtrusive form factor</li>\r\n<li>Angular measurement range minimum +- 2.5 Degrees</li>\r\n<li>Stable active measurement equal to or better than 0.001 degrees</li>\r\n<li>Touch screen or mouse click to pick active spot for single spot measurement in a multi-spot environment</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/bV1NTbGwdn3zKrKwXf39.jpg\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:18:\"ast-autocollimator\";s:10:\"data_sheet\";s:73:\"http://advancedspectral.com/storage/pdfs/ast_autocollimator_datasheet.pdf\";s:10:\"sort_order\";i:9;s:7:\"excerpt\";s:161:\"Autocollimator Systems offer users a user-friendly, highly flexible angle measurement system with features not available from other attitude measurement systems.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 21:00:00\";s:10:\"updated_at\";s:19:\"2018-07-17 19:27:48\";s:5:\"price\";s:4:\"2000\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:9;s:12:\"product_name\";s:18:\"AST Autocollimator\";s:10:\"product_id\";N;s:10:\"sub_header\";s:41:\"Highly Flexible  Angle Measurement System\";s:4:\"uses\";s:17:\"Angle Measurement\";s:11:\"description\";s:667:\"<p>Advanced Spectral Technology&rsquo;s Computerized Autocollimator Systems offer users a highly flexible angle measurement system with features not available from other attitude measurement systems.</p>\r\n<p>The user friendly operating software utilizes easy to identify software buttons to select desired system functions.</p>\r\n<p>Software setups allow measurement configuration parameters to be saved and easily recalled.</p>\r\n<p>On-screen Pass/Fail measurement results can be displayed when the option is selected.&nbsp; Pass/Fail measurement tolerances are programmable.</p>\r\n<p>Report files store data in ASCII format for export into Excel or other programs.</p>\";s:14:\"features_specs\";s:1931:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Engineering/Operator Modes to lock out operators from the system and calibration settings.</li>\r\n<li>Multiple Spot measurement &ndash; up to 4&nbsp;&nbsp; measurements.</li>\r\n<li>LED illumination &ndash; minimizes the associated maintenance required and intensity variations often encountered with fiber optic light sources.</li>\r\n<li>Measurement susceptibility to environmental illumination sources has been minimized with proprietary techniques.</li>\r\n<li>Decreased diffraction around the aperture that produces the spot, thus increased repeatability and reduced noise (flair).</li>\r\n<li>Specific color LED&rsquo;s can be chosen (typically&nbsp; 530nm, Green).</li>\r\n<li>Brightness Level - Recipe Controlled</li>\r\n<li>Improved signal to noise ratio.</li>\r\n<li>Custom spot sizes can be made available upon request.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><strong>Digital camera with USB3.0 interface, which:</strong></p>\r\n<ul>\r\n<li>Allows for higher resolution and larger FOV</li>\r\n<li>Allows the use of a laptop, tablet, mini PC, tower, all in one system</li>\r\n<li>Up to 4 collimators per PC</li>\r\n<li>High frame rates for data streaming in, minimizing latency</li>\r\n</ul>\r\n<p><strong><span id=\"u7070-15\">Powerful software includes:</span></strong></p>\r\n<ul>\r\n<li>Windows 7 or 10 32/64 bit compatible</li>\r\n<li>Touch Screen user interface</li>\r\n<li>Multiple modes with lock-outs for engineer/operator</li>\r\n<li>Custom application support available</li>\r\n</ul>\r\n<p><strong>Additional:</strong></p>\r\n<ul>\r\n<li>Practical and unobtrusive form factor</li>\r\n<li>Angular measurement range minimum +- 2.5 Degrees</li>\r\n<li>Stable active measurement equal to or better than 0.001 degrees</li>\r\n<li>Touch screen or mouse click to pick active spot for single spot measurement in a multi-spot environment</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/bV1NTbGwdn3zKrKwXf39.jpg\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:18:\"ast-autocollimator\";s:10:\"data_sheet\";s:73:\"http://advancedspectral.com/storage/pdfs/ast_autocollimator_datasheet.pdf\";s:10:\"sort_order\";i:9;s:7:\"excerpt\";s:161:\"Autocollimator Systems offer users a user-friendly, highly flexible angle measurement system with features not available from other attitude measurement systems.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 21:00:00\";s:10:\"updated_at\";s:19:\"2018-07-17 19:27:48\";s:5:\"price\";s:4:\"2000\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:499999.98999999999068677425384521484375;s:4:\"item\";O:11:\"App\\Product\":26:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:2;s:12:\"product_name\";s:7:\"AST-200\";s:10:\"product_id\";N;s:10:\"sub_header\";s:46:\"Advanced Defect Inspection  & Metrology System\";s:4:\"uses\";s:21:\"Inspection, Metrology\";s:11:\"description\";s:964:\"<p>This top performance system is designed for applications that require high-speed inspection and precision measurement of wafers and die. It is well suited for use as a dedicated production tool or versatile process development system. It features a powerful set of automated as well as semi-automated optical/video tools optimized for high accuracy, production throughput, and ease of use.</p>\r\n<p>This automated and versatile platform can be configured with specialized optical paths across the spectrum utilizing precise part staging. The system offers significant and unique advantages for dual production/engineering use, and provides the perfect solution when both defect detection and dimensional metrology are required.</p>\r\n<p>The system can be configured or customized to meet your exact requirements with a variety of optical and illumination accessories, custom wafer/part fixtures, as well as custom operator interface, data formats and reports.</p>\";s:14:\"features_specs\";s:1229:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>APPLICATIONS</p>\r\n<ul>\r\n<li>Wafer level defect detection &amp; measurement</li>\r\n<li>Precision MEMS and HD component inspection</li>\r\n<li>Advanced microelectronics package inspection</li>\r\n</ul>\r\n<p>POWERFUL</p>\r\n<ul>\r\n<li>Designed for automatic/semi-automatic operation</li>\r\n<li>Extensive defect detection features &amp; capability</li>\r\n<li>Integrated dimensional metrology features</li>\r\n</ul>\r\n<p>PRECISE</p>\r\n<ul>\r\n<li>Sub-micron precision optical measurements</li>\r\n<li>High accuracy staging with 0.02 &mu;m linear encoder resolution</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p>FAST</p>\r\n<ul>\r\n<li>50-100 defects/measurements per second typical per field of view</li>\r\n<li>200mm/second part staging speed</li>\r\n<li>[Option] 300mm/second part staging speed</li>\r\n</ul>\r\n<p>USER FRIENDLY</p>\r\n<ul>\r\n<li>Very easy to use, program and set up</li>\r\n<li>Highly visual data with rich color graphics &amp; video</li>\r\n</ul>\r\n<p>FLEXIBLE</p>\r\n<ul>\r\n<li>Specialized options for optics, illumination, fixtures</li>\r\n<li>Optional wafer and other part types handling</li>\r\n<li>Customizable for application specific solutions</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/Mo1eD7KJvFquqSeQXfaI.png\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:7:\"ast-200\";s:10:\"data_sheet\";s:61:\"http://advancedspectral.com/storage/pdfs/ast200_datasheet.pdf\";s:10:\"sort_order\";i:2;s:7:\"excerpt\";s:270:\"The AST-200 is designed for applications where high-speed defect detection and precision measurements are required. It features a powerful set of automated as well as semi-automatic optical/video tools optimized for high accuracy, production throughput, and ease of use.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 20:48:00\";s:10:\"updated_at\";s:19:\"2018-07-11 23:05:34\";s:5:\"price\";s:9:\"499999.99\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:2;s:12:\"product_name\";s:7:\"AST-200\";s:10:\"product_id\";N;s:10:\"sub_header\";s:46:\"Advanced Defect Inspection  & Metrology System\";s:4:\"uses\";s:21:\"Inspection, Metrology\";s:11:\"description\";s:964:\"<p>This top performance system is designed for applications that require high-speed inspection and precision measurement of wafers and die. It is well suited for use as a dedicated production tool or versatile process development system. It features a powerful set of automated as well as semi-automated optical/video tools optimized for high accuracy, production throughput, and ease of use.</p>\r\n<p>This automated and versatile platform can be configured with specialized optical paths across the spectrum utilizing precise part staging. The system offers significant and unique advantages for dual production/engineering use, and provides the perfect solution when both defect detection and dimensional metrology are required.</p>\r\n<p>The system can be configured or customized to meet your exact requirements with a variety of optical and illumination accessories, custom wafer/part fixtures, as well as custom operator interface, data formats and reports.</p>\";s:14:\"features_specs\";s:1229:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>APPLICATIONS</p>\r\n<ul>\r\n<li>Wafer level defect detection &amp; measurement</li>\r\n<li>Precision MEMS and HD component inspection</li>\r\n<li>Advanced microelectronics package inspection</li>\r\n</ul>\r\n<p>POWERFUL</p>\r\n<ul>\r\n<li>Designed for automatic/semi-automatic operation</li>\r\n<li>Extensive defect detection features &amp; capability</li>\r\n<li>Integrated dimensional metrology features</li>\r\n</ul>\r\n<p>PRECISE</p>\r\n<ul>\r\n<li>Sub-micron precision optical measurements</li>\r\n<li>High accuracy staging with 0.02 &mu;m linear encoder resolution</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p>FAST</p>\r\n<ul>\r\n<li>50-100 defects/measurements per second typical per field of view</li>\r\n<li>200mm/second part staging speed</li>\r\n<li>[Option] 300mm/second part staging speed</li>\r\n</ul>\r\n<p>USER FRIENDLY</p>\r\n<ul>\r\n<li>Very easy to use, program and set up</li>\r\n<li>Highly visual data with rich color graphics &amp; video</li>\r\n</ul>\r\n<p>FLEXIBLE</p>\r\n<ul>\r\n<li>Specialized options for optics, illumination, fixtures</li>\r\n<li>Optional wafer and other part types handling</li>\r\n<li>Customizable for application specific solutions</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/Mo1eD7KJvFquqSeQXfaI.png\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:7:\"ast-200\";s:10:\"data_sheet\";s:61:\"http://advancedspectral.com/storage/pdfs/ast200_datasheet.pdf\";s:10:\"sort_order\";i:2;s:7:\"excerpt\";s:270:\"The AST-200 is designed for applications where high-speed defect detection and precision measurements are required. It features a powerful set of automated as well as semi-automatic optical/video tools optimized for high accuracy, production throughput, and ease of use.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 20:48:00\";s:10:\"updated_at\";s:19:\"2018-07-11 23:05:34\";s:5:\"price\";s:9:\"499999.99\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";d:503999.98999999999068677425384521484375;}', '18426 Oak Canyon Rd.||551||Canyon Country||CA||91387', 'Frank||Addelia', 'ch_1CpL0vLHHmcjfVnVa8o7vaJc', '2018-07-19 02:08:43', '2018-07-19 02:08:43', ''),
(3, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:2;a:3:{s:3:\"qty\";i:2;s:5:\"price\";d:999999.9799999999813735485076904296875;s:4:\"item\";O:11:\"App\\Product\":26:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:2;s:12:\"product_name\";s:7:\"AST-200\";s:10:\"product_id\";N;s:10:\"sub_header\";s:46:\"Advanced Defect Inspection  & Metrology System\";s:4:\"uses\";s:21:\"Inspection, Metrology\";s:11:\"description\";s:964:\"<p>This top performance system is designed for applications that require high-speed inspection and precision measurement of wafers and die. It is well suited for use as a dedicated production tool or versatile process development system. It features a powerful set of automated as well as semi-automated optical/video tools optimized for high accuracy, production throughput, and ease of use.</p>\r\n<p>This automated and versatile platform can be configured with specialized optical paths across the spectrum utilizing precise part staging. The system offers significant and unique advantages for dual production/engineering use, and provides the perfect solution when both defect detection and dimensional metrology are required.</p>\r\n<p>The system can be configured or customized to meet your exact requirements with a variety of optical and illumination accessories, custom wafer/part fixtures, as well as custom operator interface, data formats and reports.</p>\";s:14:\"features_specs\";s:1229:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>APPLICATIONS</p>\r\n<ul>\r\n<li>Wafer level defect detection &amp; measurement</li>\r\n<li>Precision MEMS and HD component inspection</li>\r\n<li>Advanced microelectronics package inspection</li>\r\n</ul>\r\n<p>POWERFUL</p>\r\n<ul>\r\n<li>Designed for automatic/semi-automatic operation</li>\r\n<li>Extensive defect detection features &amp; capability</li>\r\n<li>Integrated dimensional metrology features</li>\r\n</ul>\r\n<p>PRECISE</p>\r\n<ul>\r\n<li>Sub-micron precision optical measurements</li>\r\n<li>High accuracy staging with 0.02 &mu;m linear encoder resolution</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p>FAST</p>\r\n<ul>\r\n<li>50-100 defects/measurements per second typical per field of view</li>\r\n<li>200mm/second part staging speed</li>\r\n<li>[Option] 300mm/second part staging speed</li>\r\n</ul>\r\n<p>USER FRIENDLY</p>\r\n<ul>\r\n<li>Very easy to use, program and set up</li>\r\n<li>Highly visual data with rich color graphics &amp; video</li>\r\n</ul>\r\n<p>FLEXIBLE</p>\r\n<ul>\r\n<li>Specialized options for optics, illumination, fixtures</li>\r\n<li>Optional wafer and other part types handling</li>\r\n<li>Customizable for application specific solutions</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/Mo1eD7KJvFquqSeQXfaI.png\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:7:\"ast-200\";s:10:\"data_sheet\";s:61:\"http://advancedspectral.com/storage/pdfs/ast200_datasheet.pdf\";s:10:\"sort_order\";i:2;s:7:\"excerpt\";s:270:\"The AST-200 is designed for applications where high-speed defect detection and precision measurements are required. It features a powerful set of automated as well as semi-automatic optical/video tools optimized for high accuracy, production throughput, and ease of use.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 20:48:00\";s:10:\"updated_at\";s:19:\"2018-07-11 23:05:34\";s:5:\"price\";s:9:\"499999.99\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:2;s:12:\"product_name\";s:7:\"AST-200\";s:10:\"product_id\";N;s:10:\"sub_header\";s:46:\"Advanced Defect Inspection  & Metrology System\";s:4:\"uses\";s:21:\"Inspection, Metrology\";s:11:\"description\";s:964:\"<p>This top performance system is designed for applications that require high-speed inspection and precision measurement of wafers and die. It is well suited for use as a dedicated production tool or versatile process development system. It features a powerful set of automated as well as semi-automated optical/video tools optimized for high accuracy, production throughput, and ease of use.</p>\r\n<p>This automated and versatile platform can be configured with specialized optical paths across the spectrum utilizing precise part staging. The system offers significant and unique advantages for dual production/engineering use, and provides the perfect solution when both defect detection and dimensional metrology are required.</p>\r\n<p>The system can be configured or customized to meet your exact requirements with a variety of optical and illumination accessories, custom wafer/part fixtures, as well as custom operator interface, data formats and reports.</p>\";s:14:\"features_specs\";s:1229:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>APPLICATIONS</p>\r\n<ul>\r\n<li>Wafer level defect detection &amp; measurement</li>\r\n<li>Precision MEMS and HD component inspection</li>\r\n<li>Advanced microelectronics package inspection</li>\r\n</ul>\r\n<p>POWERFUL</p>\r\n<ul>\r\n<li>Designed for automatic/semi-automatic operation</li>\r\n<li>Extensive defect detection features &amp; capability</li>\r\n<li>Integrated dimensional metrology features</li>\r\n</ul>\r\n<p>PRECISE</p>\r\n<ul>\r\n<li>Sub-micron precision optical measurements</li>\r\n<li>High accuracy staging with 0.02 &mu;m linear encoder resolution</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p>FAST</p>\r\n<ul>\r\n<li>50-100 defects/measurements per second typical per field of view</li>\r\n<li>200mm/second part staging speed</li>\r\n<li>[Option] 300mm/second part staging speed</li>\r\n</ul>\r\n<p>USER FRIENDLY</p>\r\n<ul>\r\n<li>Very easy to use, program and set up</li>\r\n<li>Highly visual data with rich color graphics &amp; video</li>\r\n</ul>\r\n<p>FLEXIBLE</p>\r\n<ul>\r\n<li>Specialized options for optics, illumination, fixtures</li>\r\n<li>Optional wafer and other part types handling</li>\r\n<li>Customizable for application specific solutions</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/Mo1eD7KJvFquqSeQXfaI.png\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:7:\"ast-200\";s:10:\"data_sheet\";s:61:\"http://advancedspectral.com/storage/pdfs/ast200_datasheet.pdf\";s:10:\"sort_order\";i:2;s:7:\"excerpt\";s:270:\"The AST-200 is designed for applications where high-speed defect detection and precision measurements are required. It features a powerful set of automated as well as semi-automatic optical/video tools optimized for high accuracy, production throughput, and ease of use.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 20:48:00\";s:10:\"updated_at\";s:19:\"2018-07-11 23:05:34\";s:5:\"price\";s:9:\"499999.99\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";d:999999.9799999999813735485076904296875;}', '18426 Oak Canyon Rd.||551||Canyon Country||CA||91387', 'Frank||Addelia', 'ch_1CrrrJLHHmcjfVnVdXKjknMY', '2018-07-26 01:37:14', '2018-07-26 01:37:14', ''),
(4, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:9;a:3:{s:3:\"qty\";i:2;s:5:\"price\";i:4000;s:4:\"item\";O:11:\"App\\Product\":26:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:9;s:12:\"product_name\";s:18:\"AST Autocollimator\";s:10:\"product_id\";N;s:10:\"sub_header\";s:41:\"Highly Flexible  Angle Measurement System\";s:4:\"uses\";s:17:\"Angle Measurement\";s:11:\"description\";s:667:\"<p>Advanced Spectral Technology&rsquo;s Computerized Autocollimator Systems offer users a highly flexible angle measurement system with features not available from other attitude measurement systems.</p>\r\n<p>The user friendly operating software utilizes easy to identify software buttons to select desired system functions.</p>\r\n<p>Software setups allow measurement configuration parameters to be saved and easily recalled.</p>\r\n<p>On-screen Pass/Fail measurement results can be displayed when the option is selected.&nbsp; Pass/Fail measurement tolerances are programmable.</p>\r\n<p>Report files store data in ASCII format for export into Excel or other programs.</p>\";s:14:\"features_specs\";s:1931:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Engineering/Operator Modes to lock out operators from the system and calibration settings.</li>\r\n<li>Multiple Spot measurement &ndash; up to 4&nbsp;&nbsp; measurements.</li>\r\n<li>LED illumination &ndash; minimizes the associated maintenance required and intensity variations often encountered with fiber optic light sources.</li>\r\n<li>Measurement susceptibility to environmental illumination sources has been minimized with proprietary techniques.</li>\r\n<li>Decreased diffraction around the aperture that produces the spot, thus increased repeatability and reduced noise (flair).</li>\r\n<li>Specific color LED&rsquo;s can be chosen (typically&nbsp; 530nm, Green).</li>\r\n<li>Brightness Level - Recipe Controlled</li>\r\n<li>Improved signal to noise ratio.</li>\r\n<li>Custom spot sizes can be made available upon request.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><strong>Digital camera with USB3.0 interface, which:</strong></p>\r\n<ul>\r\n<li>Allows for higher resolution and larger FOV</li>\r\n<li>Allows the use of a laptop, tablet, mini PC, tower, all in one system</li>\r\n<li>Up to 4 collimators per PC</li>\r\n<li>High frame rates for data streaming in, minimizing latency</li>\r\n</ul>\r\n<p><strong><span id=\"u7070-15\">Powerful software includes:</span></strong></p>\r\n<ul>\r\n<li>Windows 7 or 10 32/64 bit compatible</li>\r\n<li>Touch Screen user interface</li>\r\n<li>Multiple modes with lock-outs for engineer/operator</li>\r\n<li>Custom application support available</li>\r\n</ul>\r\n<p><strong>Additional:</strong></p>\r\n<ul>\r\n<li>Practical and unobtrusive form factor</li>\r\n<li>Angular measurement range minimum +- 2.5 Degrees</li>\r\n<li>Stable active measurement equal to or better than 0.001 degrees</li>\r\n<li>Touch screen or mouse click to pick active spot for single spot measurement in a multi-spot environment</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/bV1NTbGwdn3zKrKwXf39.jpg\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:18:\"ast-autocollimator\";s:10:\"data_sheet\";s:73:\"http://advancedspectral.com/storage/pdfs/ast_autocollimator_datasheet.pdf\";s:10:\"sort_order\";i:9;s:7:\"excerpt\";s:161:\"Autocollimator Systems offer users a user-friendly, highly flexible angle measurement system with features not available from other attitude measurement systems.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 21:00:00\";s:10:\"updated_at\";s:19:\"2018-07-17 19:27:48\";s:5:\"price\";s:4:\"2000\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:9;s:12:\"product_name\";s:18:\"AST Autocollimator\";s:10:\"product_id\";N;s:10:\"sub_header\";s:41:\"Highly Flexible  Angle Measurement System\";s:4:\"uses\";s:17:\"Angle Measurement\";s:11:\"description\";s:667:\"<p>Advanced Spectral Technology&rsquo;s Computerized Autocollimator Systems offer users a highly flexible angle measurement system with features not available from other attitude measurement systems.</p>\r\n<p>The user friendly operating software utilizes easy to identify software buttons to select desired system functions.</p>\r\n<p>Software setups allow measurement configuration parameters to be saved and easily recalled.</p>\r\n<p>On-screen Pass/Fail measurement results can be displayed when the option is selected.&nbsp; Pass/Fail measurement tolerances are programmable.</p>\r\n<p>Report files store data in ASCII format for export into Excel or other programs.</p>\";s:14:\"features_specs\";s:1931:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Engineering/Operator Modes to lock out operators from the system and calibration settings.</li>\r\n<li>Multiple Spot measurement &ndash; up to 4&nbsp;&nbsp; measurements.</li>\r\n<li>LED illumination &ndash; minimizes the associated maintenance required and intensity variations often encountered with fiber optic light sources.</li>\r\n<li>Measurement susceptibility to environmental illumination sources has been minimized with proprietary techniques.</li>\r\n<li>Decreased diffraction around the aperture that produces the spot, thus increased repeatability and reduced noise (flair).</li>\r\n<li>Specific color LED&rsquo;s can be chosen (typically&nbsp; 530nm, Green).</li>\r\n<li>Brightness Level - Recipe Controlled</li>\r\n<li>Improved signal to noise ratio.</li>\r\n<li>Custom spot sizes can be made available upon request.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><strong>Digital camera with USB3.0 interface, which:</strong></p>\r\n<ul>\r\n<li>Allows for higher resolution and larger FOV</li>\r\n<li>Allows the use of a laptop, tablet, mini PC, tower, all in one system</li>\r\n<li>Up to 4 collimators per PC</li>\r\n<li>High frame rates for data streaming in, minimizing latency</li>\r\n</ul>\r\n<p><strong><span id=\"u7070-15\">Powerful software includes:</span></strong></p>\r\n<ul>\r\n<li>Windows 7 or 10 32/64 bit compatible</li>\r\n<li>Touch Screen user interface</li>\r\n<li>Multiple modes with lock-outs for engineer/operator</li>\r\n<li>Custom application support available</li>\r\n</ul>\r\n<p><strong>Additional:</strong></p>\r\n<ul>\r\n<li>Practical and unobtrusive form factor</li>\r\n<li>Angular measurement range minimum +- 2.5 Degrees</li>\r\n<li>Stable active measurement equal to or better than 0.001 degrees</li>\r\n<li>Touch screen or mouse click to pick active spot for single spot measurement in a multi-spot environment</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/bV1NTbGwdn3zKrKwXf39.jpg\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:18:\"ast-autocollimator\";s:10:\"data_sheet\";s:73:\"http://advancedspectral.com/storage/pdfs/ast_autocollimator_datasheet.pdf\";s:10:\"sort_order\";i:9;s:7:\"excerpt\";s:161:\"Autocollimator Systems offer users a user-friendly, highly flexible angle measurement system with features not available from other attitude measurement systems.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 21:00:00\";s:10:\"updated_at\";s:19:\"2018-07-17 19:27:48\";s:5:\"price\";s:4:\"2000\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:4000;}', '18426 Oak Canyon Rd.||551||Canyon Country||CA||91387', 'Frank||Addelia', 'ch_1Crrx0LHHmcjfVnVh1aAOcaf', '2018-07-26 01:43:07', '2018-07-26 01:43:07', ''),
(5, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:9;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:2000;s:4:\"item\";O:11:\"App\\Product\":26:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:9;s:12:\"product_name\";s:18:\"AST Autocollimator\";s:10:\"product_id\";N;s:10:\"sub_header\";s:41:\"Highly Flexible  Angle Measurement System\";s:4:\"uses\";s:17:\"Angle Measurement\";s:11:\"description\";s:667:\"<p>Advanced Spectral Technology&rsquo;s Computerized Autocollimator Systems offer users a highly flexible angle measurement system with features not available from other attitude measurement systems.</p>\r\n<p>The user friendly operating software utilizes easy to identify software buttons to select desired system functions.</p>\r\n<p>Software setups allow measurement configuration parameters to be saved and easily recalled.</p>\r\n<p>On-screen Pass/Fail measurement results can be displayed when the option is selected.&nbsp; Pass/Fail measurement tolerances are programmable.</p>\r\n<p>Report files store data in ASCII format for export into Excel or other programs.</p>\";s:14:\"features_specs\";s:1931:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Engineering/Operator Modes to lock out operators from the system and calibration settings.</li>\r\n<li>Multiple Spot measurement &ndash; up to 4&nbsp;&nbsp; measurements.</li>\r\n<li>LED illumination &ndash; minimizes the associated maintenance required and intensity variations often encountered with fiber optic light sources.</li>\r\n<li>Measurement susceptibility to environmental illumination sources has been minimized with proprietary techniques.</li>\r\n<li>Decreased diffraction around the aperture that produces the spot, thus increased repeatability and reduced noise (flair).</li>\r\n<li>Specific color LED&rsquo;s can be chosen (typically&nbsp; 530nm, Green).</li>\r\n<li>Brightness Level - Recipe Controlled</li>\r\n<li>Improved signal to noise ratio.</li>\r\n<li>Custom spot sizes can be made available upon request.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><strong>Digital camera with USB3.0 interface, which:</strong></p>\r\n<ul>\r\n<li>Allows for higher resolution and larger FOV</li>\r\n<li>Allows the use of a laptop, tablet, mini PC, tower, all in one system</li>\r\n<li>Up to 4 collimators per PC</li>\r\n<li>High frame rates for data streaming in, minimizing latency</li>\r\n</ul>\r\n<p><strong><span id=\"u7070-15\">Powerful software includes:</span></strong></p>\r\n<ul>\r\n<li>Windows 7 or 10 32/64 bit compatible</li>\r\n<li>Touch Screen user interface</li>\r\n<li>Multiple modes with lock-outs for engineer/operator</li>\r\n<li>Custom application support available</li>\r\n</ul>\r\n<p><strong>Additional:</strong></p>\r\n<ul>\r\n<li>Practical and unobtrusive form factor</li>\r\n<li>Angular measurement range minimum +- 2.5 Degrees</li>\r\n<li>Stable active measurement equal to or better than 0.001 degrees</li>\r\n<li>Touch screen or mouse click to pick active spot for single spot measurement in a multi-spot environment</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/bV1NTbGwdn3zKrKwXf39.jpg\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:18:\"ast-autocollimator\";s:10:\"data_sheet\";s:73:\"http://advancedspectral.com/storage/pdfs/ast_autocollimator_datasheet.pdf\";s:10:\"sort_order\";i:9;s:7:\"excerpt\";s:161:\"Autocollimator Systems offer users a user-friendly, highly flexible angle measurement system with features not available from other attitude measurement systems.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 21:00:00\";s:10:\"updated_at\";s:19:\"2018-07-17 19:27:48\";s:5:\"price\";s:4:\"2000\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:9;s:12:\"product_name\";s:18:\"AST Autocollimator\";s:10:\"product_id\";N;s:10:\"sub_header\";s:41:\"Highly Flexible  Angle Measurement System\";s:4:\"uses\";s:17:\"Angle Measurement\";s:11:\"description\";s:667:\"<p>Advanced Spectral Technology&rsquo;s Computerized Autocollimator Systems offer users a highly flexible angle measurement system with features not available from other attitude measurement systems.</p>\r\n<p>The user friendly operating software utilizes easy to identify software buttons to select desired system functions.</p>\r\n<p>Software setups allow measurement configuration parameters to be saved and easily recalled.</p>\r\n<p>On-screen Pass/Fail measurement results can be displayed when the option is selected.&nbsp; Pass/Fail measurement tolerances are programmable.</p>\r\n<p>Report files store data in ASCII format for export into Excel or other programs.</p>\";s:14:\"features_specs\";s:1931:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Engineering/Operator Modes to lock out operators from the system and calibration settings.</li>\r\n<li>Multiple Spot measurement &ndash; up to 4&nbsp;&nbsp; measurements.</li>\r\n<li>LED illumination &ndash; minimizes the associated maintenance required and intensity variations often encountered with fiber optic light sources.</li>\r\n<li>Measurement susceptibility to environmental illumination sources has been minimized with proprietary techniques.</li>\r\n<li>Decreased diffraction around the aperture that produces the spot, thus increased repeatability and reduced noise (flair).</li>\r\n<li>Specific color LED&rsquo;s can be chosen (typically&nbsp; 530nm, Green).</li>\r\n<li>Brightness Level - Recipe Controlled</li>\r\n<li>Improved signal to noise ratio.</li>\r\n<li>Custom spot sizes can be made available upon request.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><strong>Digital camera with USB3.0 interface, which:</strong></p>\r\n<ul>\r\n<li>Allows for higher resolution and larger FOV</li>\r\n<li>Allows the use of a laptop, tablet, mini PC, tower, all in one system</li>\r\n<li>Up to 4 collimators per PC</li>\r\n<li>High frame rates for data streaming in, minimizing latency</li>\r\n</ul>\r\n<p><strong><span id=\"u7070-15\">Powerful software includes:</span></strong></p>\r\n<ul>\r\n<li>Windows 7 or 10 32/64 bit compatible</li>\r\n<li>Touch Screen user interface</li>\r\n<li>Multiple modes with lock-outs for engineer/operator</li>\r\n<li>Custom application support available</li>\r\n</ul>\r\n<p><strong>Additional:</strong></p>\r\n<ul>\r\n<li>Practical and unobtrusive form factor</li>\r\n<li>Angular measurement range minimum +- 2.5 Degrees</li>\r\n<li>Stable active measurement equal to or better than 0.001 degrees</li>\r\n<li>Touch screen or mouse click to pick active spot for single spot measurement in a multi-spot environment</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/bV1NTbGwdn3zKrKwXf39.jpg\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:18:\"ast-autocollimator\";s:10:\"data_sheet\";s:73:\"http://advancedspectral.com/storage/pdfs/ast_autocollimator_datasheet.pdf\";s:10:\"sort_order\";i:9;s:7:\"excerpt\";s:161:\"Autocollimator Systems offer users a user-friendly, highly flexible angle measurement system with features not available from other attitude measurement systems.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 21:00:00\";s:10:\"updated_at\";s:19:\"2018-07-17 19:27:48\";s:5:\"price\";s:4:\"2000\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:2000;}', '18426 Oak Canyon Rd.||551||Canyon Country||CA||91387', 'Frank||Addelia', 'ch_1Crs0qLHHmcjfVnVLVTnM2Nf', '2018-07-26 01:47:06', '2018-07-26 01:47:06', '');
INSERT INTO `orders` (`id`, `user_id`, `cart`, `shipping_address`, `name`, `payment_id`, `created_at`, `updated_at`, `billing_address`) VALUES
(6, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:9;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:2000;s:4:\"item\";O:11:\"App\\Product\":26:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:9;s:12:\"product_name\";s:18:\"AST Autocollimator\";s:10:\"product_id\";N;s:10:\"sub_header\";s:41:\"Highly Flexible  Angle Measurement System\";s:4:\"uses\";s:17:\"Angle Measurement\";s:11:\"description\";s:667:\"<p>Advanced Spectral Technology&rsquo;s Computerized Autocollimator Systems offer users a highly flexible angle measurement system with features not available from other attitude measurement systems.</p>\r\n<p>The user friendly operating software utilizes easy to identify software buttons to select desired system functions.</p>\r\n<p>Software setups allow measurement configuration parameters to be saved and easily recalled.</p>\r\n<p>On-screen Pass/Fail measurement results can be displayed when the option is selected.&nbsp; Pass/Fail measurement tolerances are programmable.</p>\r\n<p>Report files store data in ASCII format for export into Excel or other programs.</p>\";s:14:\"features_specs\";s:1931:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Engineering/Operator Modes to lock out operators from the system and calibration settings.</li>\r\n<li>Multiple Spot measurement &ndash; up to 4&nbsp;&nbsp; measurements.</li>\r\n<li>LED illumination &ndash; minimizes the associated maintenance required and intensity variations often encountered with fiber optic light sources.</li>\r\n<li>Measurement susceptibility to environmental illumination sources has been minimized with proprietary techniques.</li>\r\n<li>Decreased diffraction around the aperture that produces the spot, thus increased repeatability and reduced noise (flair).</li>\r\n<li>Specific color LED&rsquo;s can be chosen (typically&nbsp; 530nm, Green).</li>\r\n<li>Brightness Level - Recipe Controlled</li>\r\n<li>Improved signal to noise ratio.</li>\r\n<li>Custom spot sizes can be made available upon request.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><strong>Digital camera with USB3.0 interface, which:</strong></p>\r\n<ul>\r\n<li>Allows for higher resolution and larger FOV</li>\r\n<li>Allows the use of a laptop, tablet, mini PC, tower, all in one system</li>\r\n<li>Up to 4 collimators per PC</li>\r\n<li>High frame rates for data streaming in, minimizing latency</li>\r\n</ul>\r\n<p><strong><span id=\"u7070-15\">Powerful software includes:</span></strong></p>\r\n<ul>\r\n<li>Windows 7 or 10 32/64 bit compatible</li>\r\n<li>Touch Screen user interface</li>\r\n<li>Multiple modes with lock-outs for engineer/operator</li>\r\n<li>Custom application support available</li>\r\n</ul>\r\n<p><strong>Additional:</strong></p>\r\n<ul>\r\n<li>Practical and unobtrusive form factor</li>\r\n<li>Angular measurement range minimum +- 2.5 Degrees</li>\r\n<li>Stable active measurement equal to or better than 0.001 degrees</li>\r\n<li>Touch screen or mouse click to pick active spot for single spot measurement in a multi-spot environment</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/bV1NTbGwdn3zKrKwXf39.jpg\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:18:\"ast-autocollimator\";s:10:\"data_sheet\";s:73:\"http://advancedspectral.com/storage/pdfs/ast_autocollimator_datasheet.pdf\";s:10:\"sort_order\";i:9;s:7:\"excerpt\";s:161:\"Autocollimator Systems offer users a user-friendly, highly flexible angle measurement system with features not available from other attitude measurement systems.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 21:00:00\";s:10:\"updated_at\";s:19:\"2018-07-17 19:27:48\";s:5:\"price\";s:4:\"2000\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:9;s:12:\"product_name\";s:18:\"AST Autocollimator\";s:10:\"product_id\";N;s:10:\"sub_header\";s:41:\"Highly Flexible  Angle Measurement System\";s:4:\"uses\";s:17:\"Angle Measurement\";s:11:\"description\";s:667:\"<p>Advanced Spectral Technology&rsquo;s Computerized Autocollimator Systems offer users a highly flexible angle measurement system with features not available from other attitude measurement systems.</p>\r\n<p>The user friendly operating software utilizes easy to identify software buttons to select desired system functions.</p>\r\n<p>Software setups allow measurement configuration parameters to be saved and easily recalled.</p>\r\n<p>On-screen Pass/Fail measurement results can be displayed when the option is selected.&nbsp; Pass/Fail measurement tolerances are programmable.</p>\r\n<p>Report files store data in ASCII format for export into Excel or other programs.</p>\";s:14:\"features_specs\";s:1931:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Engineering/Operator Modes to lock out operators from the system and calibration settings.</li>\r\n<li>Multiple Spot measurement &ndash; up to 4&nbsp;&nbsp; measurements.</li>\r\n<li>LED illumination &ndash; minimizes the associated maintenance required and intensity variations often encountered with fiber optic light sources.</li>\r\n<li>Measurement susceptibility to environmental illumination sources has been minimized with proprietary techniques.</li>\r\n<li>Decreased diffraction around the aperture that produces the spot, thus increased repeatability and reduced noise (flair).</li>\r\n<li>Specific color LED&rsquo;s can be chosen (typically&nbsp; 530nm, Green).</li>\r\n<li>Brightness Level - Recipe Controlled</li>\r\n<li>Improved signal to noise ratio.</li>\r\n<li>Custom spot sizes can be made available upon request.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><strong>Digital camera with USB3.0 interface, which:</strong></p>\r\n<ul>\r\n<li>Allows for higher resolution and larger FOV</li>\r\n<li>Allows the use of a laptop, tablet, mini PC, tower, all in one system</li>\r\n<li>Up to 4 collimators per PC</li>\r\n<li>High frame rates for data streaming in, minimizing latency</li>\r\n</ul>\r\n<p><strong><span id=\"u7070-15\">Powerful software includes:</span></strong></p>\r\n<ul>\r\n<li>Windows 7 or 10 32/64 bit compatible</li>\r\n<li>Touch Screen user interface</li>\r\n<li>Multiple modes with lock-outs for engineer/operator</li>\r\n<li>Custom application support available</li>\r\n</ul>\r\n<p><strong>Additional:</strong></p>\r\n<ul>\r\n<li>Practical and unobtrusive form factor</li>\r\n<li>Angular measurement range minimum +- 2.5 Degrees</li>\r\n<li>Stable active measurement equal to or better than 0.001 degrees</li>\r\n<li>Touch screen or mouse click to pick active spot for single spot measurement in a multi-spot environment</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/bV1NTbGwdn3zKrKwXf39.jpg\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:18:\"ast-autocollimator\";s:10:\"data_sheet\";s:73:\"http://advancedspectral.com/storage/pdfs/ast_autocollimator_datasheet.pdf\";s:10:\"sort_order\";i:9;s:7:\"excerpt\";s:161:\"Autocollimator Systems offer users a user-friendly, highly flexible angle measurement system with features not available from other attitude measurement systems.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 21:00:00\";s:10:\"updated_at\";s:19:\"2018-07-17 19:27:48\";s:5:\"price\";s:4:\"2000\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:2000;}', '18426 Oak Canyon Rd.||551||Canyon Country||CA||91387', 'Frank||Addelia', 'ch_1Crs2bLHHmcjfVnVIyrsQlbX', '2018-07-26 01:48:55', '2018-07-26 01:48:55', ''),
(7, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:9;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:2000;s:4:\"item\";O:11:\"App\\Product\":26:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:9;s:12:\"product_name\";s:18:\"AST Autocollimator\";s:10:\"product_id\";N;s:10:\"sub_header\";s:41:\"Highly Flexible  Angle Measurement System\";s:4:\"uses\";s:17:\"Angle Measurement\";s:11:\"description\";s:667:\"<p>Advanced Spectral Technology&rsquo;s Computerized Autocollimator Systems offer users a highly flexible angle measurement system with features not available from other attitude measurement systems.</p>\r\n<p>The user friendly operating software utilizes easy to identify software buttons to select desired system functions.</p>\r\n<p>Software setups allow measurement configuration parameters to be saved and easily recalled.</p>\r\n<p>On-screen Pass/Fail measurement results can be displayed when the option is selected.&nbsp; Pass/Fail measurement tolerances are programmable.</p>\r\n<p>Report files store data in ASCII format for export into Excel or other programs.</p>\";s:14:\"features_specs\";s:1931:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Engineering/Operator Modes to lock out operators from the system and calibration settings.</li>\r\n<li>Multiple Spot measurement &ndash; up to 4&nbsp;&nbsp; measurements.</li>\r\n<li>LED illumination &ndash; minimizes the associated maintenance required and intensity variations often encountered with fiber optic light sources.</li>\r\n<li>Measurement susceptibility to environmental illumination sources has been minimized with proprietary techniques.</li>\r\n<li>Decreased diffraction around the aperture that produces the spot, thus increased repeatability and reduced noise (flair).</li>\r\n<li>Specific color LED&rsquo;s can be chosen (typically&nbsp; 530nm, Green).</li>\r\n<li>Brightness Level - Recipe Controlled</li>\r\n<li>Improved signal to noise ratio.</li>\r\n<li>Custom spot sizes can be made available upon request.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><strong>Digital camera with USB3.0 interface, which:</strong></p>\r\n<ul>\r\n<li>Allows for higher resolution and larger FOV</li>\r\n<li>Allows the use of a laptop, tablet, mini PC, tower, all in one system</li>\r\n<li>Up to 4 collimators per PC</li>\r\n<li>High frame rates for data streaming in, minimizing latency</li>\r\n</ul>\r\n<p><strong><span id=\"u7070-15\">Powerful software includes:</span></strong></p>\r\n<ul>\r\n<li>Windows 7 or 10 32/64 bit compatible</li>\r\n<li>Touch Screen user interface</li>\r\n<li>Multiple modes with lock-outs for engineer/operator</li>\r\n<li>Custom application support available</li>\r\n</ul>\r\n<p><strong>Additional:</strong></p>\r\n<ul>\r\n<li>Practical and unobtrusive form factor</li>\r\n<li>Angular measurement range minimum +- 2.5 Degrees</li>\r\n<li>Stable active measurement equal to or better than 0.001 degrees</li>\r\n<li>Touch screen or mouse click to pick active spot for single spot measurement in a multi-spot environment</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/bV1NTbGwdn3zKrKwXf39.jpg\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:18:\"ast-autocollimator\";s:10:\"data_sheet\";s:73:\"http://advancedspectral.com/storage/pdfs/ast_autocollimator_datasheet.pdf\";s:10:\"sort_order\";i:9;s:7:\"excerpt\";s:161:\"Autocollimator Systems offer users a user-friendly, highly flexible angle measurement system with features not available from other attitude measurement systems.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 21:00:00\";s:10:\"updated_at\";s:19:\"2018-07-17 19:27:48\";s:5:\"price\";s:4:\"2000\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:9;s:12:\"product_name\";s:18:\"AST Autocollimator\";s:10:\"product_id\";N;s:10:\"sub_header\";s:41:\"Highly Flexible  Angle Measurement System\";s:4:\"uses\";s:17:\"Angle Measurement\";s:11:\"description\";s:667:\"<p>Advanced Spectral Technology&rsquo;s Computerized Autocollimator Systems offer users a highly flexible angle measurement system with features not available from other attitude measurement systems.</p>\r\n<p>The user friendly operating software utilizes easy to identify software buttons to select desired system functions.</p>\r\n<p>Software setups allow measurement configuration parameters to be saved and easily recalled.</p>\r\n<p>On-screen Pass/Fail measurement results can be displayed when the option is selected.&nbsp; Pass/Fail measurement tolerances are programmable.</p>\r\n<p>Report files store data in ASCII format for export into Excel or other programs.</p>\";s:14:\"features_specs\";s:1931:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Engineering/Operator Modes to lock out operators from the system and calibration settings.</li>\r\n<li>Multiple Spot measurement &ndash; up to 4&nbsp;&nbsp; measurements.</li>\r\n<li>LED illumination &ndash; minimizes the associated maintenance required and intensity variations often encountered with fiber optic light sources.</li>\r\n<li>Measurement susceptibility to environmental illumination sources has been minimized with proprietary techniques.</li>\r\n<li>Decreased diffraction around the aperture that produces the spot, thus increased repeatability and reduced noise (flair).</li>\r\n<li>Specific color LED&rsquo;s can be chosen (typically&nbsp; 530nm, Green).</li>\r\n<li>Brightness Level - Recipe Controlled</li>\r\n<li>Improved signal to noise ratio.</li>\r\n<li>Custom spot sizes can be made available upon request.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><strong>Digital camera with USB3.0 interface, which:</strong></p>\r\n<ul>\r\n<li>Allows for higher resolution and larger FOV</li>\r\n<li>Allows the use of a laptop, tablet, mini PC, tower, all in one system</li>\r\n<li>Up to 4 collimators per PC</li>\r\n<li>High frame rates for data streaming in, minimizing latency</li>\r\n</ul>\r\n<p><strong><span id=\"u7070-15\">Powerful software includes:</span></strong></p>\r\n<ul>\r\n<li>Windows 7 or 10 32/64 bit compatible</li>\r\n<li>Touch Screen user interface</li>\r\n<li>Multiple modes with lock-outs for engineer/operator</li>\r\n<li>Custom application support available</li>\r\n</ul>\r\n<p><strong>Additional:</strong></p>\r\n<ul>\r\n<li>Practical and unobtrusive form factor</li>\r\n<li>Angular measurement range minimum +- 2.5 Degrees</li>\r\n<li>Stable active measurement equal to or better than 0.001 degrees</li>\r\n<li>Touch screen or mouse click to pick active spot for single spot measurement in a multi-spot environment</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/bV1NTbGwdn3zKrKwXf39.jpg\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:18:\"ast-autocollimator\";s:10:\"data_sheet\";s:73:\"http://advancedspectral.com/storage/pdfs/ast_autocollimator_datasheet.pdf\";s:10:\"sort_order\";i:9;s:7:\"excerpt\";s:161:\"Autocollimator Systems offer users a user-friendly, highly flexible angle measurement system with features not available from other attitude measurement systems.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 21:00:00\";s:10:\"updated_at\";s:19:\"2018-07-17 19:27:48\";s:5:\"price\";s:4:\"2000\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:2000;}', '18426 Oak Canyon Rd.||551||Canyon Country||CA||91387', 'Frank||Addelia', 'ch_1CrtcXLHHmcjfVnV977e8Hqv', '2018-07-26 03:30:07', '2018-07-26 03:30:07', ''),
(8, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:9;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:2000;s:4:\"item\";O:11:\"App\\Product\":26:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:9;s:12:\"product_name\";s:18:\"AST Autocollimator\";s:10:\"product_id\";N;s:10:\"sub_header\";s:41:\"Highly Flexible  Angle Measurement System\";s:4:\"uses\";s:17:\"Angle Measurement\";s:11:\"description\";s:667:\"<p>Advanced Spectral Technology&rsquo;s Computerized Autocollimator Systems offer users a highly flexible angle measurement system with features not available from other attitude measurement systems.</p>\r\n<p>The user friendly operating software utilizes easy to identify software buttons to select desired system functions.</p>\r\n<p>Software setups allow measurement configuration parameters to be saved and easily recalled.</p>\r\n<p>On-screen Pass/Fail measurement results can be displayed when the option is selected.&nbsp; Pass/Fail measurement tolerances are programmable.</p>\r\n<p>Report files store data in ASCII format for export into Excel or other programs.</p>\";s:14:\"features_specs\";s:1931:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Engineering/Operator Modes to lock out operators from the system and calibration settings.</li>\r\n<li>Multiple Spot measurement &ndash; up to 4&nbsp;&nbsp; measurements.</li>\r\n<li>LED illumination &ndash; minimizes the associated maintenance required and intensity variations often encountered with fiber optic light sources.</li>\r\n<li>Measurement susceptibility to environmental illumination sources has been minimized with proprietary techniques.</li>\r\n<li>Decreased diffraction around the aperture that produces the spot, thus increased repeatability and reduced noise (flair).</li>\r\n<li>Specific color LED&rsquo;s can be chosen (typically&nbsp; 530nm, Green).</li>\r\n<li>Brightness Level - Recipe Controlled</li>\r\n<li>Improved signal to noise ratio.</li>\r\n<li>Custom spot sizes can be made available upon request.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><strong>Digital camera with USB3.0 interface, which:</strong></p>\r\n<ul>\r\n<li>Allows for higher resolution and larger FOV</li>\r\n<li>Allows the use of a laptop, tablet, mini PC, tower, all in one system</li>\r\n<li>Up to 4 collimators per PC</li>\r\n<li>High frame rates for data streaming in, minimizing latency</li>\r\n</ul>\r\n<p><strong><span id=\"u7070-15\">Powerful software includes:</span></strong></p>\r\n<ul>\r\n<li>Windows 7 or 10 32/64 bit compatible</li>\r\n<li>Touch Screen user interface</li>\r\n<li>Multiple modes with lock-outs for engineer/operator</li>\r\n<li>Custom application support available</li>\r\n</ul>\r\n<p><strong>Additional:</strong></p>\r\n<ul>\r\n<li>Practical and unobtrusive form factor</li>\r\n<li>Angular measurement range minimum +- 2.5 Degrees</li>\r\n<li>Stable active measurement equal to or better than 0.001 degrees</li>\r\n<li>Touch screen or mouse click to pick active spot for single spot measurement in a multi-spot environment</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/bV1NTbGwdn3zKrKwXf39.jpg\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:18:\"ast-autocollimator\";s:10:\"data_sheet\";s:73:\"http://advancedspectral.com/storage/pdfs/ast_autocollimator_datasheet.pdf\";s:10:\"sort_order\";i:9;s:7:\"excerpt\";s:161:\"Autocollimator Systems offer users a user-friendly, highly flexible angle measurement system with features not available from other attitude measurement systems.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 21:00:00\";s:10:\"updated_at\";s:19:\"2018-07-17 19:27:48\";s:5:\"price\";s:4:\"2000\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:9;s:12:\"product_name\";s:18:\"AST Autocollimator\";s:10:\"product_id\";N;s:10:\"sub_header\";s:41:\"Highly Flexible  Angle Measurement System\";s:4:\"uses\";s:17:\"Angle Measurement\";s:11:\"description\";s:667:\"<p>Advanced Spectral Technology&rsquo;s Computerized Autocollimator Systems offer users a highly flexible angle measurement system with features not available from other attitude measurement systems.</p>\r\n<p>The user friendly operating software utilizes easy to identify software buttons to select desired system functions.</p>\r\n<p>Software setups allow measurement configuration parameters to be saved and easily recalled.</p>\r\n<p>On-screen Pass/Fail measurement results can be displayed when the option is selected.&nbsp; Pass/Fail measurement tolerances are programmable.</p>\r\n<p>Report files store data in ASCII format for export into Excel or other programs.</p>\";s:14:\"features_specs\";s:1931:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Engineering/Operator Modes to lock out operators from the system and calibration settings.</li>\r\n<li>Multiple Spot measurement &ndash; up to 4&nbsp;&nbsp; measurements.</li>\r\n<li>LED illumination &ndash; minimizes the associated maintenance required and intensity variations often encountered with fiber optic light sources.</li>\r\n<li>Measurement susceptibility to environmental illumination sources has been minimized with proprietary techniques.</li>\r\n<li>Decreased diffraction around the aperture that produces the spot, thus increased repeatability and reduced noise (flair).</li>\r\n<li>Specific color LED&rsquo;s can be chosen (typically&nbsp; 530nm, Green).</li>\r\n<li>Brightness Level - Recipe Controlled</li>\r\n<li>Improved signal to noise ratio.</li>\r\n<li>Custom spot sizes can be made available upon request.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><strong>Digital camera with USB3.0 interface, which:</strong></p>\r\n<ul>\r\n<li>Allows for higher resolution and larger FOV</li>\r\n<li>Allows the use of a laptop, tablet, mini PC, tower, all in one system</li>\r\n<li>Up to 4 collimators per PC</li>\r\n<li>High frame rates for data streaming in, minimizing latency</li>\r\n</ul>\r\n<p><strong><span id=\"u7070-15\">Powerful software includes:</span></strong></p>\r\n<ul>\r\n<li>Windows 7 or 10 32/64 bit compatible</li>\r\n<li>Touch Screen user interface</li>\r\n<li>Multiple modes with lock-outs for engineer/operator</li>\r\n<li>Custom application support available</li>\r\n</ul>\r\n<p><strong>Additional:</strong></p>\r\n<ul>\r\n<li>Practical and unobtrusive form factor</li>\r\n<li>Angular measurement range minimum +- 2.5 Degrees</li>\r\n<li>Stable active measurement equal to or better than 0.001 degrees</li>\r\n<li>Touch screen or mouse click to pick active spot for single spot measurement in a multi-spot environment</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/bV1NTbGwdn3zKrKwXf39.jpg\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:18:\"ast-autocollimator\";s:10:\"data_sheet\";s:73:\"http://advancedspectral.com/storage/pdfs/ast_autocollimator_datasheet.pdf\";s:10:\"sort_order\";i:9;s:7:\"excerpt\";s:161:\"Autocollimator Systems offer users a user-friendly, highly flexible angle measurement system with features not available from other attitude measurement systems.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 21:00:00\";s:10:\"updated_at\";s:19:\"2018-07-17 19:27:48\";s:5:\"price\";s:4:\"2000\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:2000;}', '18426 Oak Canyon Rd.||551||Canyon Country||CA||91387', 'Frank||Addelia', 'ch_1CrtjOLHHmcjfVnVCDHFrXft', '2018-07-26 03:37:11', '2018-07-26 03:37:11', ''),
(9, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:9;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:2000;s:4:\"item\";O:11:\"App\\Product\":26:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:9;s:12:\"product_name\";s:18:\"AST Autocollimator\";s:10:\"product_id\";N;s:10:\"sub_header\";s:41:\"Highly Flexible  Angle Measurement System\";s:4:\"uses\";s:17:\"Angle Measurement\";s:11:\"description\";s:667:\"<p>Advanced Spectral Technology&rsquo;s Computerized Autocollimator Systems offer users a highly flexible angle measurement system with features not available from other attitude measurement systems.</p>\r\n<p>The user friendly operating software utilizes easy to identify software buttons to select desired system functions.</p>\r\n<p>Software setups allow measurement configuration parameters to be saved and easily recalled.</p>\r\n<p>On-screen Pass/Fail measurement results can be displayed when the option is selected.&nbsp; Pass/Fail measurement tolerances are programmable.</p>\r\n<p>Report files store data in ASCII format for export into Excel or other programs.</p>\";s:14:\"features_specs\";s:1931:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Engineering/Operator Modes to lock out operators from the system and calibration settings.</li>\r\n<li>Multiple Spot measurement &ndash; up to 4&nbsp;&nbsp; measurements.</li>\r\n<li>LED illumination &ndash; minimizes the associated maintenance required and intensity variations often encountered with fiber optic light sources.</li>\r\n<li>Measurement susceptibility to environmental illumination sources has been minimized with proprietary techniques.</li>\r\n<li>Decreased diffraction around the aperture that produces the spot, thus increased repeatability and reduced noise (flair).</li>\r\n<li>Specific color LED&rsquo;s can be chosen (typically&nbsp; 530nm, Green).</li>\r\n<li>Brightness Level - Recipe Controlled</li>\r\n<li>Improved signal to noise ratio.</li>\r\n<li>Custom spot sizes can be made available upon request.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><strong>Digital camera with USB3.0 interface, which:</strong></p>\r\n<ul>\r\n<li>Allows for higher resolution and larger FOV</li>\r\n<li>Allows the use of a laptop, tablet, mini PC, tower, all in one system</li>\r\n<li>Up to 4 collimators per PC</li>\r\n<li>High frame rates for data streaming in, minimizing latency</li>\r\n</ul>\r\n<p><strong><span id=\"u7070-15\">Powerful software includes:</span></strong></p>\r\n<ul>\r\n<li>Windows 7 or 10 32/64 bit compatible</li>\r\n<li>Touch Screen user interface</li>\r\n<li>Multiple modes with lock-outs for engineer/operator</li>\r\n<li>Custom application support available</li>\r\n</ul>\r\n<p><strong>Additional:</strong></p>\r\n<ul>\r\n<li>Practical and unobtrusive form factor</li>\r\n<li>Angular measurement range minimum +- 2.5 Degrees</li>\r\n<li>Stable active measurement equal to or better than 0.001 degrees</li>\r\n<li>Touch screen or mouse click to pick active spot for single spot measurement in a multi-spot environment</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/bV1NTbGwdn3zKrKwXf39.jpg\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:18:\"ast-autocollimator\";s:10:\"data_sheet\";s:73:\"http://advancedspectral.com/storage/pdfs/ast_autocollimator_datasheet.pdf\";s:10:\"sort_order\";i:9;s:7:\"excerpt\";s:161:\"Autocollimator Systems offer users a user-friendly, highly flexible angle measurement system with features not available from other attitude measurement systems.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 21:00:00\";s:10:\"updated_at\";s:19:\"2018-07-17 19:27:48\";s:5:\"price\";s:4:\"2000\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:9;s:12:\"product_name\";s:18:\"AST Autocollimator\";s:10:\"product_id\";N;s:10:\"sub_header\";s:41:\"Highly Flexible  Angle Measurement System\";s:4:\"uses\";s:17:\"Angle Measurement\";s:11:\"description\";s:667:\"<p>Advanced Spectral Technology&rsquo;s Computerized Autocollimator Systems offer users a highly flexible angle measurement system with features not available from other attitude measurement systems.</p>\r\n<p>The user friendly operating software utilizes easy to identify software buttons to select desired system functions.</p>\r\n<p>Software setups allow measurement configuration parameters to be saved and easily recalled.</p>\r\n<p>On-screen Pass/Fail measurement results can be displayed when the option is selected.&nbsp; Pass/Fail measurement tolerances are programmable.</p>\r\n<p>Report files store data in ASCII format for export into Excel or other programs.</p>\";s:14:\"features_specs\";s:1931:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Engineering/Operator Modes to lock out operators from the system and calibration settings.</li>\r\n<li>Multiple Spot measurement &ndash; up to 4&nbsp;&nbsp; measurements.</li>\r\n<li>LED illumination &ndash; minimizes the associated maintenance required and intensity variations often encountered with fiber optic light sources.</li>\r\n<li>Measurement susceptibility to environmental illumination sources has been minimized with proprietary techniques.</li>\r\n<li>Decreased diffraction around the aperture that produces the spot, thus increased repeatability and reduced noise (flair).</li>\r\n<li>Specific color LED&rsquo;s can be chosen (typically&nbsp; 530nm, Green).</li>\r\n<li>Brightness Level - Recipe Controlled</li>\r\n<li>Improved signal to noise ratio.</li>\r\n<li>Custom spot sizes can be made available upon request.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><strong>Digital camera with USB3.0 interface, which:</strong></p>\r\n<ul>\r\n<li>Allows for higher resolution and larger FOV</li>\r\n<li>Allows the use of a laptop, tablet, mini PC, tower, all in one system</li>\r\n<li>Up to 4 collimators per PC</li>\r\n<li>High frame rates for data streaming in, minimizing latency</li>\r\n</ul>\r\n<p><strong><span id=\"u7070-15\">Powerful software includes:</span></strong></p>\r\n<ul>\r\n<li>Windows 7 or 10 32/64 bit compatible</li>\r\n<li>Touch Screen user interface</li>\r\n<li>Multiple modes with lock-outs for engineer/operator</li>\r\n<li>Custom application support available</li>\r\n</ul>\r\n<p><strong>Additional:</strong></p>\r\n<ul>\r\n<li>Practical and unobtrusive form factor</li>\r\n<li>Angular measurement range minimum +- 2.5 Degrees</li>\r\n<li>Stable active measurement equal to or better than 0.001 degrees</li>\r\n<li>Touch screen or mouse click to pick active spot for single spot measurement in a multi-spot environment</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/bV1NTbGwdn3zKrKwXf39.jpg\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:18:\"ast-autocollimator\";s:10:\"data_sheet\";s:73:\"http://advancedspectral.com/storage/pdfs/ast_autocollimator_datasheet.pdf\";s:10:\"sort_order\";i:9;s:7:\"excerpt\";s:161:\"Autocollimator Systems offer users a user-friendly, highly flexible angle measurement system with features not available from other attitude measurement systems.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 21:00:00\";s:10:\"updated_at\";s:19:\"2018-07-17 19:27:48\";s:5:\"price\";s:4:\"2000\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:2000;}', '18426 Oak Canyon Rd.||551||Canyon Country||CA||91387', 'Frank||Addelia', 'ch_1CrvlgLHHmcjfVnVABqUlk76', '2018-07-26 05:47:42', '2018-07-26 05:47:42', ''),
(10, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:9;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:2000;s:4:\"item\";O:11:\"App\\Product\":26:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:9;s:12:\"product_name\";s:18:\"AST Autocollimator\";s:10:\"product_id\";N;s:10:\"sub_header\";s:41:\"Highly Flexible  Angle Measurement System\";s:4:\"uses\";s:17:\"Angle Measurement\";s:11:\"description\";s:667:\"<p>Advanced Spectral Technology&rsquo;s Computerized Autocollimator Systems offer users a highly flexible angle measurement system with features not available from other attitude measurement systems.</p>\r\n<p>The user friendly operating software utilizes easy to identify software buttons to select desired system functions.</p>\r\n<p>Software setups allow measurement configuration parameters to be saved and easily recalled.</p>\r\n<p>On-screen Pass/Fail measurement results can be displayed when the option is selected.&nbsp; Pass/Fail measurement tolerances are programmable.</p>\r\n<p>Report files store data in ASCII format for export into Excel or other programs.</p>\";s:14:\"features_specs\";s:1931:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Engineering/Operator Modes to lock out operators from the system and calibration settings.</li>\r\n<li>Multiple Spot measurement &ndash; up to 4&nbsp;&nbsp; measurements.</li>\r\n<li>LED illumination &ndash; minimizes the associated maintenance required and intensity variations often encountered with fiber optic light sources.</li>\r\n<li>Measurement susceptibility to environmental illumination sources has been minimized with proprietary techniques.</li>\r\n<li>Decreased diffraction around the aperture that produces the spot, thus increased repeatability and reduced noise (flair).</li>\r\n<li>Specific color LED&rsquo;s can be chosen (typically&nbsp; 530nm, Green).</li>\r\n<li>Brightness Level - Recipe Controlled</li>\r\n<li>Improved signal to noise ratio.</li>\r\n<li>Custom spot sizes can be made available upon request.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><strong>Digital camera with USB3.0 interface, which:</strong></p>\r\n<ul>\r\n<li>Allows for higher resolution and larger FOV</li>\r\n<li>Allows the use of a laptop, tablet, mini PC, tower, all in one system</li>\r\n<li>Up to 4 collimators per PC</li>\r\n<li>High frame rates for data streaming in, minimizing latency</li>\r\n</ul>\r\n<p><strong><span id=\"u7070-15\">Powerful software includes:</span></strong></p>\r\n<ul>\r\n<li>Windows 7 or 10 32/64 bit compatible</li>\r\n<li>Touch Screen user interface</li>\r\n<li>Multiple modes with lock-outs for engineer/operator</li>\r\n<li>Custom application support available</li>\r\n</ul>\r\n<p><strong>Additional:</strong></p>\r\n<ul>\r\n<li>Practical and unobtrusive form factor</li>\r\n<li>Angular measurement range minimum +- 2.5 Degrees</li>\r\n<li>Stable active measurement equal to or better than 0.001 degrees</li>\r\n<li>Touch screen or mouse click to pick active spot for single spot measurement in a multi-spot environment</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/bV1NTbGwdn3zKrKwXf39.jpg\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:18:\"ast-autocollimator\";s:10:\"data_sheet\";s:73:\"http://advancedspectral.com/storage/pdfs/ast_autocollimator_datasheet.pdf\";s:10:\"sort_order\";i:9;s:7:\"excerpt\";s:161:\"Autocollimator Systems offer users a user-friendly, highly flexible angle measurement system with features not available from other attitude measurement systems.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 21:00:00\";s:10:\"updated_at\";s:19:\"2018-07-17 19:27:48\";s:5:\"price\";s:4:\"2000\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:9;s:12:\"product_name\";s:18:\"AST Autocollimator\";s:10:\"product_id\";N;s:10:\"sub_header\";s:41:\"Highly Flexible  Angle Measurement System\";s:4:\"uses\";s:17:\"Angle Measurement\";s:11:\"description\";s:667:\"<p>Advanced Spectral Technology&rsquo;s Computerized Autocollimator Systems offer users a highly flexible angle measurement system with features not available from other attitude measurement systems.</p>\r\n<p>The user friendly operating software utilizes easy to identify software buttons to select desired system functions.</p>\r\n<p>Software setups allow measurement configuration parameters to be saved and easily recalled.</p>\r\n<p>On-screen Pass/Fail measurement results can be displayed when the option is selected.&nbsp; Pass/Fail measurement tolerances are programmable.</p>\r\n<p>Report files store data in ASCII format for export into Excel or other programs.</p>\";s:14:\"features_specs\";s:1931:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Engineering/Operator Modes to lock out operators from the system and calibration settings.</li>\r\n<li>Multiple Spot measurement &ndash; up to 4&nbsp;&nbsp; measurements.</li>\r\n<li>LED illumination &ndash; minimizes the associated maintenance required and intensity variations often encountered with fiber optic light sources.</li>\r\n<li>Measurement susceptibility to environmental illumination sources has been minimized with proprietary techniques.</li>\r\n<li>Decreased diffraction around the aperture that produces the spot, thus increased repeatability and reduced noise (flair).</li>\r\n<li>Specific color LED&rsquo;s can be chosen (typically&nbsp; 530nm, Green).</li>\r\n<li>Brightness Level - Recipe Controlled</li>\r\n<li>Improved signal to noise ratio.</li>\r\n<li>Custom spot sizes can be made available upon request.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><strong>Digital camera with USB3.0 interface, which:</strong></p>\r\n<ul>\r\n<li>Allows for higher resolution and larger FOV</li>\r\n<li>Allows the use of a laptop, tablet, mini PC, tower, all in one system</li>\r\n<li>Up to 4 collimators per PC</li>\r\n<li>High frame rates for data streaming in, minimizing latency</li>\r\n</ul>\r\n<p><strong><span id=\"u7070-15\">Powerful software includes:</span></strong></p>\r\n<ul>\r\n<li>Windows 7 or 10 32/64 bit compatible</li>\r\n<li>Touch Screen user interface</li>\r\n<li>Multiple modes with lock-outs for engineer/operator</li>\r\n<li>Custom application support available</li>\r\n</ul>\r\n<p><strong>Additional:</strong></p>\r\n<ul>\r\n<li>Practical and unobtrusive form factor</li>\r\n<li>Angular measurement range minimum +- 2.5 Degrees</li>\r\n<li>Stable active measurement equal to or better than 0.001 degrees</li>\r\n<li>Touch screen or mouse click to pick active spot for single spot measurement in a multi-spot environment</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/bV1NTbGwdn3zKrKwXf39.jpg\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:18:\"ast-autocollimator\";s:10:\"data_sheet\";s:73:\"http://advancedspectral.com/storage/pdfs/ast_autocollimator_datasheet.pdf\";s:10:\"sort_order\";i:9;s:7:\"excerpt\";s:161:\"Autocollimator Systems offer users a user-friendly, highly flexible angle measurement system with features not available from other attitude measurement systems.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 21:00:00\";s:10:\"updated_at\";s:19:\"2018-07-17 19:27:48\";s:5:\"price\";s:4:\"2000\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:2000;}', '18426 Oak Canyon Rd.||551||Canyon Country||CA||91387', 'Frank||Addelia', 'ch_1CrwAtLHHmcjfVnVNv1EhxHW', '2018-07-26 06:13:43', '2018-07-26 06:13:43', '18426 Oak Canyon Rd.||551||Canyon Country||CA||91387'),
(11, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:2;a:3:{s:3:\"qty\";i:2;s:5:\"price\";d:999999.9799999999813735485076904296875;s:4:\"item\";O:11:\"App\\Product\":26:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:2;s:12:\"product_name\";s:7:\"AST-200\";s:10:\"product_id\";N;s:10:\"sub_header\";s:46:\"Advanced Defect Inspection  & Metrology System\";s:4:\"uses\";s:21:\"Inspection, Metrology\";s:11:\"description\";s:964:\"<p>This top performance system is designed for applications that require high-speed inspection and precision measurement of wafers and die. It is well suited for use as a dedicated production tool or versatile process development system. It features a powerful set of automated as well as semi-automated optical/video tools optimized for high accuracy, production throughput, and ease of use.</p>\r\n<p>This automated and versatile platform can be configured with specialized optical paths across the spectrum utilizing precise part staging. The system offers significant and unique advantages for dual production/engineering use, and provides the perfect solution when both defect detection and dimensional metrology are required.</p>\r\n<p>The system can be configured or customized to meet your exact requirements with a variety of optical and illumination accessories, custom wafer/part fixtures, as well as custom operator interface, data formats and reports.</p>\";s:14:\"features_specs\";s:1229:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>APPLICATIONS</p>\r\n<ul>\r\n<li>Wafer level defect detection &amp; measurement</li>\r\n<li>Precision MEMS and HD component inspection</li>\r\n<li>Advanced microelectronics package inspection</li>\r\n</ul>\r\n<p>POWERFUL</p>\r\n<ul>\r\n<li>Designed for automatic/semi-automatic operation</li>\r\n<li>Extensive defect detection features &amp; capability</li>\r\n<li>Integrated dimensional metrology features</li>\r\n</ul>\r\n<p>PRECISE</p>\r\n<ul>\r\n<li>Sub-micron precision optical measurements</li>\r\n<li>High accuracy staging with 0.02 &mu;m linear encoder resolution</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p>FAST</p>\r\n<ul>\r\n<li>50-100 defects/measurements per second typical per field of view</li>\r\n<li>200mm/second part staging speed</li>\r\n<li>[Option] 300mm/second part staging speed</li>\r\n</ul>\r\n<p>USER FRIENDLY</p>\r\n<ul>\r\n<li>Very easy to use, program and set up</li>\r\n<li>Highly visual data with rich color graphics &amp; video</li>\r\n</ul>\r\n<p>FLEXIBLE</p>\r\n<ul>\r\n<li>Specialized options for optics, illumination, fixtures</li>\r\n<li>Optional wafer and other part types handling</li>\r\n<li>Customizable for application specific solutions</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/Mo1eD7KJvFquqSeQXfaI.png\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:7:\"ast-200\";s:10:\"data_sheet\";s:61:\"http://advancedspectral.com/storage/pdfs/ast200_datasheet.pdf\";s:10:\"sort_order\";i:2;s:7:\"excerpt\";s:270:\"The AST-200 is designed for applications where high-speed defect detection and precision measurements are required. It features a powerful set of automated as well as semi-automatic optical/video tools optimized for high accuracy, production throughput, and ease of use.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 20:48:00\";s:10:\"updated_at\";s:19:\"2018-07-11 23:05:34\";s:5:\"price\";s:9:\"499999.99\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:2;s:12:\"product_name\";s:7:\"AST-200\";s:10:\"product_id\";N;s:10:\"sub_header\";s:46:\"Advanced Defect Inspection  & Metrology System\";s:4:\"uses\";s:21:\"Inspection, Metrology\";s:11:\"description\";s:964:\"<p>This top performance system is designed for applications that require high-speed inspection and precision measurement of wafers and die. It is well suited for use as a dedicated production tool or versatile process development system. It features a powerful set of automated as well as semi-automated optical/video tools optimized for high accuracy, production throughput, and ease of use.</p>\r\n<p>This automated and versatile platform can be configured with specialized optical paths across the spectrum utilizing precise part staging. The system offers significant and unique advantages for dual production/engineering use, and provides the perfect solution when both defect detection and dimensional metrology are required.</p>\r\n<p>The system can be configured or customized to meet your exact requirements with a variety of optical and illumination accessories, custom wafer/part fixtures, as well as custom operator interface, data formats and reports.</p>\";s:14:\"features_specs\";s:1229:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>APPLICATIONS</p>\r\n<ul>\r\n<li>Wafer level defect detection &amp; measurement</li>\r\n<li>Precision MEMS and HD component inspection</li>\r\n<li>Advanced microelectronics package inspection</li>\r\n</ul>\r\n<p>POWERFUL</p>\r\n<ul>\r\n<li>Designed for automatic/semi-automatic operation</li>\r\n<li>Extensive defect detection features &amp; capability</li>\r\n<li>Integrated dimensional metrology features</li>\r\n</ul>\r\n<p>PRECISE</p>\r\n<ul>\r\n<li>Sub-micron precision optical measurements</li>\r\n<li>High accuracy staging with 0.02 &mu;m linear encoder resolution</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p>FAST</p>\r\n<ul>\r\n<li>50-100 defects/measurements per second typical per field of view</li>\r\n<li>200mm/second part staging speed</li>\r\n<li>[Option] 300mm/second part staging speed</li>\r\n</ul>\r\n<p>USER FRIENDLY</p>\r\n<ul>\r\n<li>Very easy to use, program and set up</li>\r\n<li>Highly visual data with rich color graphics &amp; video</li>\r\n</ul>\r\n<p>FLEXIBLE</p>\r\n<ul>\r\n<li>Specialized options for optics, illumination, fixtures</li>\r\n<li>Optional wafer and other part types handling</li>\r\n<li>Customizable for application specific solutions</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/Mo1eD7KJvFquqSeQXfaI.png\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:7:\"ast-200\";s:10:\"data_sheet\";s:61:\"http://advancedspectral.com/storage/pdfs/ast200_datasheet.pdf\";s:10:\"sort_order\";i:2;s:7:\"excerpt\";s:270:\"The AST-200 is designed for applications where high-speed defect detection and precision measurements are required. It features a powerful set of automated as well as semi-automatic optical/video tools optimized for high accuracy, production throughput, and ease of use.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 20:48:00\";s:10:\"updated_at\";s:19:\"2018-07-11 23:05:34\";s:5:\"price\";s:9:\"499999.99\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";d:999999.9799999999813735485076904296875;}', '||||||Choose...||', '||', 'ch_1CrwCFLHHmcjfVnV9yZMl1RI', '2018-07-26 06:15:08', '2018-07-26 06:15:08', '23480 Park Sorrento||Suite 119A||Calabasas||CA||91302');
INSERT INTO `orders` (`id`, `user_id`, `cart`, `shipping_address`, `name`, `payment_id`, `created_at`, `updated_at`, `billing_address`) VALUES
(12, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:499999.98999999999068677425384521484375;s:4:\"item\";O:11:\"App\\Product\":26:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:2;s:12:\"product_name\";s:7:\"AST-200\";s:10:\"product_id\";N;s:10:\"sub_header\";s:46:\"Advanced Defect Inspection  & Metrology System\";s:4:\"uses\";s:21:\"Inspection, Metrology\";s:11:\"description\";s:964:\"<p>This top performance system is designed for applications that require high-speed inspection and precision measurement of wafers and die. It is well suited for use as a dedicated production tool or versatile process development system. It features a powerful set of automated as well as semi-automated optical/video tools optimized for high accuracy, production throughput, and ease of use.</p>\r\n<p>This automated and versatile platform can be configured with specialized optical paths across the spectrum utilizing precise part staging. The system offers significant and unique advantages for dual production/engineering use, and provides the perfect solution when both defect detection and dimensional metrology are required.</p>\r\n<p>The system can be configured or customized to meet your exact requirements with a variety of optical and illumination accessories, custom wafer/part fixtures, as well as custom operator interface, data formats and reports.</p>\";s:14:\"features_specs\";s:1229:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>APPLICATIONS</p>\r\n<ul>\r\n<li>Wafer level defect detection &amp; measurement</li>\r\n<li>Precision MEMS and HD component inspection</li>\r\n<li>Advanced microelectronics package inspection</li>\r\n</ul>\r\n<p>POWERFUL</p>\r\n<ul>\r\n<li>Designed for automatic/semi-automatic operation</li>\r\n<li>Extensive defect detection features &amp; capability</li>\r\n<li>Integrated dimensional metrology features</li>\r\n</ul>\r\n<p>PRECISE</p>\r\n<ul>\r\n<li>Sub-micron precision optical measurements</li>\r\n<li>High accuracy staging with 0.02 &mu;m linear encoder resolution</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p>FAST</p>\r\n<ul>\r\n<li>50-100 defects/measurements per second typical per field of view</li>\r\n<li>200mm/second part staging speed</li>\r\n<li>[Option] 300mm/second part staging speed</li>\r\n</ul>\r\n<p>USER FRIENDLY</p>\r\n<ul>\r\n<li>Very easy to use, program and set up</li>\r\n<li>Highly visual data with rich color graphics &amp; video</li>\r\n</ul>\r\n<p>FLEXIBLE</p>\r\n<ul>\r\n<li>Specialized options for optics, illumination, fixtures</li>\r\n<li>Optional wafer and other part types handling</li>\r\n<li>Customizable for application specific solutions</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/Mo1eD7KJvFquqSeQXfaI.png\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:7:\"ast-200\";s:10:\"data_sheet\";s:61:\"http://advancedspectral.com/storage/pdfs/ast200_datasheet.pdf\";s:10:\"sort_order\";i:2;s:7:\"excerpt\";s:270:\"The AST-200 is designed for applications where high-speed defect detection and precision measurements are required. It features a powerful set of automated as well as semi-automatic optical/video tools optimized for high accuracy, production throughput, and ease of use.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 20:48:00\";s:10:\"updated_at\";s:19:\"2018-07-11 23:05:34\";s:5:\"price\";s:9:\"499999.99\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:2;s:12:\"product_name\";s:7:\"AST-200\";s:10:\"product_id\";N;s:10:\"sub_header\";s:46:\"Advanced Defect Inspection  & Metrology System\";s:4:\"uses\";s:21:\"Inspection, Metrology\";s:11:\"description\";s:964:\"<p>This top performance system is designed for applications that require high-speed inspection and precision measurement of wafers and die. It is well suited for use as a dedicated production tool or versatile process development system. It features a powerful set of automated as well as semi-automated optical/video tools optimized for high accuracy, production throughput, and ease of use.</p>\r\n<p>This automated and versatile platform can be configured with specialized optical paths across the spectrum utilizing precise part staging. The system offers significant and unique advantages for dual production/engineering use, and provides the perfect solution when both defect detection and dimensional metrology are required.</p>\r\n<p>The system can be configured or customized to meet your exact requirements with a variety of optical and illumination accessories, custom wafer/part fixtures, as well as custom operator interface, data formats and reports.</p>\";s:14:\"features_specs\";s:1229:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>APPLICATIONS</p>\r\n<ul>\r\n<li>Wafer level defect detection &amp; measurement</li>\r\n<li>Precision MEMS and HD component inspection</li>\r\n<li>Advanced microelectronics package inspection</li>\r\n</ul>\r\n<p>POWERFUL</p>\r\n<ul>\r\n<li>Designed for automatic/semi-automatic operation</li>\r\n<li>Extensive defect detection features &amp; capability</li>\r\n<li>Integrated dimensional metrology features</li>\r\n</ul>\r\n<p>PRECISE</p>\r\n<ul>\r\n<li>Sub-micron precision optical measurements</li>\r\n<li>High accuracy staging with 0.02 &mu;m linear encoder resolution</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p>FAST</p>\r\n<ul>\r\n<li>50-100 defects/measurements per second typical per field of view</li>\r\n<li>200mm/second part staging speed</li>\r\n<li>[Option] 300mm/second part staging speed</li>\r\n</ul>\r\n<p>USER FRIENDLY</p>\r\n<ul>\r\n<li>Very easy to use, program and set up</li>\r\n<li>Highly visual data with rich color graphics &amp; video</li>\r\n</ul>\r\n<p>FLEXIBLE</p>\r\n<ul>\r\n<li>Specialized options for optics, illumination, fixtures</li>\r\n<li>Optional wafer and other part types handling</li>\r\n<li>Customizable for application specific solutions</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/Mo1eD7KJvFquqSeQXfaI.png\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:7:\"ast-200\";s:10:\"data_sheet\";s:61:\"http://advancedspectral.com/storage/pdfs/ast200_datasheet.pdf\";s:10:\"sort_order\";i:2;s:7:\"excerpt\";s:270:\"The AST-200 is designed for applications where high-speed defect detection and precision measurements are required. It features a powerful set of automated as well as semi-automatic optical/video tools optimized for high accuracy, production throughput, and ease of use.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 20:48:00\";s:10:\"updated_at\";s:19:\"2018-07-11 23:05:34\";s:5:\"price\";s:9:\"499999.99\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";d:499999.98999999999068677425384521484375;}', '18426 Oak Canyon Rd.||551||Canyon Country||CA||91387', 'Frank||Addelia', 'ch_1CrwO4LHHmcjfVnV9sL30TGf', '2018-07-26 06:27:21', '2018-07-26 06:27:21', '23480 Park Sorrento||Suite 119A||Calabasas||CA||91302'),
(13, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:2;a:3:{s:3:\"qty\";i:2;s:5:\"price\";d:999999.9799999999813735485076904296875;s:4:\"item\";O:11:\"App\\Product\":26:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:2;s:12:\"product_name\";s:7:\"AST-200\";s:10:\"product_id\";N;s:10:\"sub_header\";s:46:\"Advanced Defect Inspection  & Metrology System\";s:4:\"uses\";s:21:\"Inspection, Metrology\";s:11:\"description\";s:964:\"<p>This top performance system is designed for applications that require high-speed inspection and precision measurement of wafers and die. It is well suited for use as a dedicated production tool or versatile process development system. It features a powerful set of automated as well as semi-automated optical/video tools optimized for high accuracy, production throughput, and ease of use.</p>\r\n<p>This automated and versatile platform can be configured with specialized optical paths across the spectrum utilizing precise part staging. The system offers significant and unique advantages for dual production/engineering use, and provides the perfect solution when both defect detection and dimensional metrology are required.</p>\r\n<p>The system can be configured or customized to meet your exact requirements with a variety of optical and illumination accessories, custom wafer/part fixtures, as well as custom operator interface, data formats and reports.</p>\";s:14:\"features_specs\";s:1229:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>APPLICATIONS</p>\r\n<ul>\r\n<li>Wafer level defect detection &amp; measurement</li>\r\n<li>Precision MEMS and HD component inspection</li>\r\n<li>Advanced microelectronics package inspection</li>\r\n</ul>\r\n<p>POWERFUL</p>\r\n<ul>\r\n<li>Designed for automatic/semi-automatic operation</li>\r\n<li>Extensive defect detection features &amp; capability</li>\r\n<li>Integrated dimensional metrology features</li>\r\n</ul>\r\n<p>PRECISE</p>\r\n<ul>\r\n<li>Sub-micron precision optical measurements</li>\r\n<li>High accuracy staging with 0.02 &mu;m linear encoder resolution</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p>FAST</p>\r\n<ul>\r\n<li>50-100 defects/measurements per second typical per field of view</li>\r\n<li>200mm/second part staging speed</li>\r\n<li>[Option] 300mm/second part staging speed</li>\r\n</ul>\r\n<p>USER FRIENDLY</p>\r\n<ul>\r\n<li>Very easy to use, program and set up</li>\r\n<li>Highly visual data with rich color graphics &amp; video</li>\r\n</ul>\r\n<p>FLEXIBLE</p>\r\n<ul>\r\n<li>Specialized options for optics, illumination, fixtures</li>\r\n<li>Optional wafer and other part types handling</li>\r\n<li>Customizable for application specific solutions</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/Mo1eD7KJvFquqSeQXfaI.png\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:7:\"ast-200\";s:10:\"data_sheet\";s:61:\"http://advancedspectral.com/storage/pdfs/ast200_datasheet.pdf\";s:10:\"sort_order\";i:2;s:7:\"excerpt\";s:270:\"The AST-200 is designed for applications where high-speed defect detection and precision measurements are required. It features a powerful set of automated as well as semi-automatic optical/video tools optimized for high accuracy, production throughput, and ease of use.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 20:48:00\";s:10:\"updated_at\";s:19:\"2018-07-11 23:05:34\";s:5:\"price\";s:9:\"499999.99\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:2;s:12:\"product_name\";s:7:\"AST-200\";s:10:\"product_id\";N;s:10:\"sub_header\";s:46:\"Advanced Defect Inspection  & Metrology System\";s:4:\"uses\";s:21:\"Inspection, Metrology\";s:11:\"description\";s:964:\"<p>This top performance system is designed for applications that require high-speed inspection and precision measurement of wafers and die. It is well suited for use as a dedicated production tool or versatile process development system. It features a powerful set of automated as well as semi-automated optical/video tools optimized for high accuracy, production throughput, and ease of use.</p>\r\n<p>This automated and versatile platform can be configured with specialized optical paths across the spectrum utilizing precise part staging. The system offers significant and unique advantages for dual production/engineering use, and provides the perfect solution when both defect detection and dimensional metrology are required.</p>\r\n<p>The system can be configured or customized to meet your exact requirements with a variety of optical and illumination accessories, custom wafer/part fixtures, as well as custom operator interface, data formats and reports.</p>\";s:14:\"features_specs\";s:1229:\"<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>APPLICATIONS</p>\r\n<ul>\r\n<li>Wafer level defect detection &amp; measurement</li>\r\n<li>Precision MEMS and HD component inspection</li>\r\n<li>Advanced microelectronics package inspection</li>\r\n</ul>\r\n<p>POWERFUL</p>\r\n<ul>\r\n<li>Designed for automatic/semi-automatic operation</li>\r\n<li>Extensive defect detection features &amp; capability</li>\r\n<li>Integrated dimensional metrology features</li>\r\n</ul>\r\n<p>PRECISE</p>\r\n<ul>\r\n<li>Sub-micron precision optical measurements</li>\r\n<li>High accuracy staging with 0.02 &mu;m linear encoder resolution</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p>FAST</p>\r\n<ul>\r\n<li>50-100 defects/measurements per second typical per field of view</li>\r\n<li>200mm/second part staging speed</li>\r\n<li>[Option] 300mm/second part staging speed</li>\r\n</ul>\r\n<p>USER FRIENDLY</p>\r\n<ul>\r\n<li>Very easy to use, program and set up</li>\r\n<li>Highly visual data with rich color graphics &amp; video</li>\r\n</ul>\r\n<p>FLEXIBLE</p>\r\n<ul>\r\n<li>Specialized options for optics, illumination, fixtures</li>\r\n<li>Optional wafer and other part types handling</li>\r\n<li>Customizable for application specific solutions</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\";s:5:\"image\";s:42:\"products/July2018/Mo1eD7KJvFquqSeQXfaI.png\";s:6:\"status\";s:9:\"PUBLISHED\";s:4:\"slug\";s:7:\"ast-200\";s:10:\"data_sheet\";s:61:\"http://advancedspectral.com/storage/pdfs/ast200_datasheet.pdf\";s:10:\"sort_order\";i:2;s:7:\"excerpt\";s:270:\"The AST-200 is designed for applications where high-speed defect detection and precision measurements are required. It features a powerful set of automated as well as semi-automatic optical/video tools optimized for high accuracy, production throughput, and ease of use.\";s:9:\"tool_name\";N;s:10:\"created_at\";s:19:\"2018-07-11 20:48:00\";s:10:\"updated_at\";s:19:\"2018-07-11 23:05:34\";s:5:\"price\";s:9:\"499999.99\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";d:999999.9799999999813735485076904296875;}', '18426 Oak Canyon Rd.||551||Canyon Country||CA||91387', 'Frank||Addelia', 'ch_1CtfDkLHHmcjfVnVW7w7nSMZ', '2018-07-31 00:31:49', '2018-07-31 00:31:49', '18426 Oak Canyon Rd.||551||Canyon Country||CA||91387');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_contents`
--

CREATE TABLE `page_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `has_content_bg` tinyint(4) NOT NULL,
  `content_bg_color` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_contents`
--

INSERT INTO `page_contents` (`id`, `author_id`, `title`, `body`, `slug`, `active`, `has_content_bg`, `content_bg_color`, `created_at`, `updated_at`) VALUES
(1, 0, 'Home Page Content', '<h4>Providing creative solutions for Inspection, Metrology, and Infrared Imaging.</h4>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: bold;\">Advanced Spectral Technology, Inc. (AST)</span> provides manual to fully automated precision motion controlled systems, utilizing application specific optical designs and sensors in any of the Infrared, Visible and UV spectrums. AST employs the latest cutting edge technologies and expertise to solve the industry\'s most challenging defect detection, inspection, infrared imaging, and metrology requirements. AST additionally serves industries that require semiconductor wafer inspection, thermography, and atmospheric plasma surface preparation.</p>\r\n<p>&nbsp;</p>\r\n<p>While we primarily serve the Semiconductor/MEMS, Aerospace &amp; Defense, and Medical fields, we\'re continually seeking to meet the needs of all industries which require creative and innovative solutions to their most diverse applications.</p>\r\n<p>Advanced Spectral Technology, Inc. is an ISO 9001:2015 certified company.<br /> Click to view ISO certificate &gt;&gt; <a title=\"Link to ISO 9001:2015 certificate\" href=\"https://advancedspectral.com/storage/pdfs/iso_cert_9001-2015_ast.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"><img title=\"ISO 9001:2015 Certificate\" src=\"https://advancedspectral.com/images/pdf_symbol.jpg\" alt=\"PDF that links to file ISO 9001:2015 Certificate\" width=\"40\" height=\"40\" /></a></p>', 'home-page-content', 1, 0, NULL, '2018-07-12 03:17:12', '2018-07-12 03:17:12'),
(2, 0, 'Contact Form', '<h4>Send an Inquiry</h4>\r\n<p>If you would like more information on one of our standard systems, or a custom solution for your specific application, drop us a note and a team member will respond shortly.</p>\r\n<p>{!! Form::open([\'route\' =&gt; \'contact.send\']) !!}</p>\r\n<div class=\"form-group\">{!! Form::label(\'name\', \'Name\') !!} {!! Form::text(\'name\', null, [\'class\' =&gt; \'form-control\']) !!}</div>\r\n<div class=\"form-group\">{!! Form::label(\'company\', \'Company\') !!} {!! Form::text(\'company\', null, [\'class\' =&gt; \'form-control\']) !!}</div>\r\n<div class=\"form-group\">{!! Form::label(\'email\', \'E-mail\') !!} {!! Form::text(\'email\', null, [\'class\' =&gt; \'form-control\']) !!}</div>\r\n<div class=\"form-group\">{!! Form::label(\'phone-number\', \'Phone\') !!} {!! Form::text(\'phone-number\', null, [\'class\' =&gt; \'form-control\']) !!}</div>\r\n<div class=\"form-group\">{!! Form::label(\'subject\', \'Subject\') !!}<br /> {!! Form::select(\'subject\', array(\'general-inquiry\' =&gt; \'General Inquiry\', \'request-quote\' =&gt; \'Request for Quote\', \'service-request\' =&gt; \'Service Request\')); !!}</div>\r\n<div class=\"form-group\">{!! Form::label(\'msg\', \'Message\') !!} {!! Form::textarea(\'msg\', null, [\'class\' =&gt; \'form-control\', \'size\' =&gt; \'30x5\']) !!}</div>\r\n<div class=\"form-group\">{!! NoCaptcha::display() !!} {!! NoCaptcha::renderJs() !!} @if ($errors-&gt;has(\'g-recaptcha-response\')) <span class=\"help-block\"> <strong>{{ $errors-&gt;first(\'g-recaptcha-response\') }}</strong> </span> @endif</div>\r\n<p>{!! Form::submit(\'Submit\', [\'class\' =&gt; \'btn btn-info\']) !!} {!! Form::close() !!}</p>', 'contact-form', 1, 0, NULL, '2018-07-12 03:17:54', '2018-07-12 03:17:54'),
(3, 0, 'Contact Us', '<h4>Planning Your Visit to AST</h4>\r\n<p>AST is located approximately 45 minutes northwest of downtown Los Angeles, and is easily accessible via nearby major freeways.</p>\r\n<p><strong>From Los Angeles Area:</strong><br /> Take the Golden State Freeway (5) or the San Diego Freeway (405) north to the Ronald Reagan Freeway (118) west, into Simi Valley. Exit 22A - Madera South. Turn Right onto Madera Road. Turn Right onto W Cochran Street. Turn Left into the driveway labeled \"74-98, W Cochran St.\" AST office is in the second building on the Right in Suite 94-A.</p>\r\n<p><strong>From Northern California Area:</strong><br /> Take the Ventura Freeway (101) south, to the 23 Freeway (towards Fillmore), into Simi Valley. Exit 22 - Madera Road. Turn Right onto Madera Road. Turn Right onto W Cochran Street. Turn Left into the driveway labeled \"74-98, W Cochran St.\" AST office is in the second building on the Right in Suite 94-A.</p>\r\n<p><strong>Out of Town Guests:</strong><br /> For our guests who require overnight accommodations, AST has negotiated discounted rates for the following local hotels:</p>\r\n<p><strong>Best Western Plus Posada Royale Hotel</strong><br /> 1775 Madera Road, Simi Valley, CA 93065<br /> Reservations: 805.581.3442 (ask for the \"AST\" or \"Advanced Spectral Technology\" Corporate Rate)<br /> <a href=\"http://www.posadaroyale.com\" target=\"_blank\" rel=\"noopener\">www.posadaroyale.com</a></p>\r\n<p><strong>Holiday Inn Express</strong><br /> 2550 Erringer Road, Simi Valley, CA 93065<br /> Reservations: 805.584.6006 (ask for the \"AST\" or \"Advanced Spectral Technology\" Corporate Rate)</p>\r\n<p><strong>Grand Vista Hotel</strong><br /> 999 Enchanted Way, Simi Valley, CA 93065<br /> Reservations: 805.583.2000 (ask for the \"AST\" or \"Advanced Spectral Technology\" Corporate Rate)<br /> <a href=\"http://www.grandvistasimi.com\" target=\"_blank\" rel=\"noopener\">www.grandvistasimi.com</a></p>', 'contact-us', 1, 0, NULL, '2018-07-12 03:18:35', '2018-07-12 03:18:35'),
(4, 0, 'Contact Us Info', '<p>Advanced Spectral Technology, Inc.<br /> 94 W Cochran Street, Suite A<br /> Simi Valley, CA 93065, USA</p>\r\n<p><strong>Business Hours:</strong> Monday-Friday, 8:00am - 5:00pm, P.S.T.</p>\r\n<p><strong>Main Office:</strong> 805.527.7657</p>\r\n<p><strong>Fax:</strong> 805.823.2705</p>\r\n<p><strong>General info:</strong> <a href=\"mailto:info@advancedspectral.com\">info@advancedspectral.com</a></p>\r\n<p><strong>Product Sales:</strong> <a href=\"mailto:sales@advancedspectral.com\">sales@advancedspectral.com</a></p>\r\n<p><strong>Product Support:</strong> <a href=\"mailto:quality@advancedspectral.com\">quality@advancedspectral.com</a></p>\r\n<p><strong>Accounts Payable:</strong> <a href=\"mailto:accounting@advancedspectral.com\">accounting@advancedspectral.com</a></p>', 'contact-us-info', 1, 0, NULL, '2018-07-12 03:19:05', '2018-07-12 03:19:05'),
(5, 0, 'Terms of Use', '<p>Web Site Terms and Conditions of Use</p>\r\n<p>1. Terms</p>\r\n<p>By accessing this web site, you are agreeing to be bound by these web site Terms and Conditions of Use, all applicable laws and regulations, and agree that you are responsible for compliance with any applicable local laws. If you do not agree with any of these terms, you are prohibited from using or accessing this site. The materials contained in this web site are protected by applicable copyright and trade mark law.</p>\r\n<p>2. Use License</p>\r\n<p>a. Permission is granted to temporarily download one copy of the materials (information or software) on Advanced Spectral Technology, Inc. (AST)\'s web site for personal, non-commercial transitory viewing only. This is the grant of a license, not a transfer of title, and under this license you may not:</p>\r\n<p>i. modify or copy the materials;</p>\r\n<p>ii. use the materials for any commercial purpose, or for any public display (commercial or non-commercial);</p>\r\n<p>iii. attempt to decompile or reverse engineer any software contained on AST\'s web site;</p>\r\n<p>iv. remove any copyright or other proprietary notations from the materials; or</p>\r\n<p>v. transfer the materials to another person or \"mirror\" the materials on any other server.</p>\r\n<p>b. This license shall automatically terminate if you violate any of these restrictions and may be terminated by AST at any time. Upon terminating your viewing of these materials or upon the termination of this license, you must destroy any downloaded materials in your possession whether in electronic or printed format.</p>\r\n<p>3. Disclaimer</p>\r\n<p>a. The materials on AST\'s web site are provided \"as is\". AST makes no warranties, expressed or implied, and hereby disclaims and negates all other warranties, including without limitation, implied warranties or conditions of merchantability, fitness for a particular purpose, or non-infringement of intellectual property or other violation of rights. Further, AST does not warrant or make any representations concerning the accuracy, likely results, or reliability of the use of the materials on its Internet web site or otherwise relating to such materials or on any sites linked to this site.</p>\r\n<p>4. Limitations</p>\r\n<p>In no event shall AST or its suppliers be liable for any damages (including, without limitation, damages for loss of data or profit, or due to business interruption,) arising out of the use or inability to use the materials on AST\'s Internet site, even if AST or a AST authorized representative has been notified orally or in writing of the possibility of such damage. Because some jurisdictions do not allow limitations on implied warranties, or limitations of liability for consequential or incidental damages, these limitations may not apply to you.</p>\r\n<p>5. Revisions and Errata</p>\r\n<p>The materials appearing on AST\'s web site could include technical, typographical, or photographic errors. AST does not warrant that any of the materials on its web site are accurate, complete, or current. AST may make changes to the materials contained on its web site at any time without notice. AST does not, however, make any commitment to update the materials.</p>\r\n<p>6. Links</p>\r\n<p>AST has not reviewed all of the sites linked to its Internet web site and is not responsible for the contents of any such linked site. The inclusion of any link does not imply endorsement by AST of the site. Use of any such linked web site is at the user\'s own risk.</p>\r\n<p>7. Site Terms of Use Modifications</p>\r\n<p>AST may revise these terms of use for its web site at any time without notice. By using this web site you are agreeing to be bound by the then current version of these Terms and Conditions of Use.</p>\r\n<p>8. Governing Law</p>\r\n<p>Any claim relating to AST\'s web site shall be governed by the laws of the State of California without regard to its conflict of law provisions. General Terms and Conditions applicable to Use of a Web Site.</p>', 'terms-of-use', 1, 1, 'ffffff', '2018-07-12 03:19:37', '2018-07-12 03:19:37'),
(6, 0, 'Privacy Policy', '<p>This privacy policy sets out how Advanced Spectral Technology, Inc. (AST) uses and protects any information that you give AST when you use this website.</p>\r\n<p>AST is committed to ensuring that your privacy is protected. Should we ask you to provide certain information by which you can be identified when using this website, then you can be assured that it will only be used in accordance with this privacy statement.</p>\r\n<p>AST may change this policy from time to time by updating this page. You should check this page from time to time to ensure that you are happy with any changes. This policy is effective from June 18, 2014.</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\">What we collect</span><br />We may collect the following information:</p>\r\n<ul>\r\n<li>name and job title</li>\r\n<li>contact information including email address</li>\r\n<li>demographic information such as postcode, preferences and interests</li>\r\n<li>other information relevant to customer surveys and/or offers</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\">What we do with the information we gather</span><br />We require this information to understand your needs and provide you with a better service, and in particular for the following reasons:</p>\r\n<ul>\r\n<li>Internal record keeping.</li>\r\n<li>We may use the information to improve our products and services.</li>\r\n<li>We may periodically send promotional email about new products, special offers or other information which we think you may find interesting using the email address which you have provided.</li>\r\n<li>From time to time, we may also use your information to contact you for market research purposes. We may contact you by email, phone, fax or mail.</li>\r\n<li>We may use the information to customize the website according to your interests.</li>\r\n<li>We may provide your information to our third party partners for marketing or promotional purposes.</li>\r\n<li>We will never sell your information.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\">Security</span><br />We are committed to ensuring that your information is secure. In order to prevent unauthorized access or disclosure we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online.<span id=\"u3871-55\"></span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\">How we use cookies</span><br />A cookie is a small file which asks permission to be placed on your computer\'s hard drive. Once you agree, the file is added and the cookie helps analyze web traffic or lets you know when you visit a particular site. Cookies allow web applications to respond to you as an individual. The web application can tailor its operations to your needs, likes and dislikes by gathering and remembering information about your preferences.</p>\r\n<p>We use traffic log cookies to identify which pages are being used. This helps us analyze data about web page traffic and improve our website in order to tailor it to customer needs. We only use this information for statistical analysis purposes and then the data is removed from the system.</p>\r\n<p>Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful and which you do not. A cookie in no way gives us access to your computer or any information about you, other than the data you choose to share with us.</p>\r\n<p>You can choose to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. This may prevent you from taking full advantage of the website.</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\">Links to other websites</span><br />Our website may contain links to enable you to visit other websites of interest easily. However, once you have used these links to leave our site, you should note that we do not have any control over that other website. Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst visiting such sites and such sites are not governed by this privacy statement. You should exercise caution and look at the privacy statement applicable to the website in question.</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\">Controlling your personal information</span><br />You may choose to restrict the collection or use of your personal information in the following ways:</p>\r\n<ul>\r\n<li>Whenever you are asked to fill in a form on the website, look for the box that you can click to indicate that you do not want the information to be used by anybody for direct marketing purposes.</li>\r\n<li>If you have previously agreed to us using your personal information for direct marketing purposes, you may change your mind at any time by writing to or emailing us at info[AT]advancedspectral[DOT]com.</li>\r\n</ul>\r\n<p>We will not sell, distribute or lease your personal information to third parties unless we have your permission or are required by law. We may use your personal information to send you promotional information about third parties which we think you may find interesting if you tell us that you wish this to happen.</p>\r\n<p>You may request details of personal information which we hold about you under the Data Protection Act 1998. A small fee will be payable. If you would like a copy of the information held on you please write to AST, Inc., 960 Enchanted Way, Suite 104, Simi Valley, CA 93065.</p>\r\n<p>If you believe that any information we are holding on you is incorrect or incomplete, please write to or email us as soon as possible, at the above address. We will promptly correct any information found to be incorrect.</p>', 'privacy-policy', 1, 1, 'ffffff', '2018-07-12 03:20:10', '2018-07-12 03:20:10'),
(7, 0, 'About Us', '<p><span style=\"font-weight: bold;\">Advanced Spectral Technology, Inc. (AST)</span> is a specialized systems provider with core expertise in high accuracy motion control, defect inspection, metrology and optical design for infrared, visible and UV spectrums. We also integrate key technologies into our manual, semi-automatic &amp; fully automatic platforms allowing us to provide turn-key solutions.</p>\r\n<p>AST utilizes a team of hardware, software and optical engineers as well as ergonomic designers and experienced assemblers who can perform independently or in concert with your design/engineering team to accommodate your specific needs and specifications.</p>\r\n<p>Continually working with and understanding the cutting edge in technology developments allows us to respond with solutions as we stand ready to work through your most difficult application challenges.</p>\r\n<p>Please have your production, quality, reliability and R&amp;D groups contact us today to address their specific needs and application requirements.</p>', 'about-us', 1, 1, 'ffffff', '2018-07-12 03:20:40', '2018-07-12 03:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(2, 'browse_bread', NULL, '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(3, 'browse_database', NULL, '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(4, 'browse_media', NULL, '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(5, 'browse_compass', NULL, '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(6, 'browse_menus', 'menus', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(7, 'read_menus', 'menus', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(8, 'edit_menus', 'menus', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(9, 'add_menus', 'menus', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(10, 'delete_menus', 'menus', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(11, 'browse_roles', 'roles', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(12, 'read_roles', 'roles', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(13, 'edit_roles', 'roles', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(14, 'add_roles', 'roles', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(15, 'delete_roles', 'roles', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(16, 'browse_users', 'users', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(17, 'read_users', 'users', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(18, 'edit_users', 'users', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(19, 'add_users', 'users', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(20, 'delete_users', 'users', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(21, 'browse_settings', 'settings', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(22, 'read_settings', 'settings', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(23, 'edit_settings', 'settings', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(24, 'add_settings', 'settings', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(25, 'delete_settings', 'settings', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(26, 'browse_hooks', NULL, '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(27, 'browse_announcements', 'announcements', '2018-07-12 01:19:30', '2018-07-12 01:19:30'),
(28, 'read_announcements', 'announcements', '2018-07-12 01:19:30', '2018-07-12 01:19:30'),
(29, 'edit_announcements', 'announcements', '2018-07-12 01:19:30', '2018-07-12 01:19:30'),
(30, 'add_announcements', 'announcements', '2018-07-12 01:19:30', '2018-07-12 01:19:30'),
(31, 'delete_announcements', 'announcements', '2018-07-12 01:19:30', '2018-07-12 01:19:30'),
(32, 'browse_carousels', 'carousels', '2018-07-12 01:20:17', '2018-07-12 01:20:17'),
(33, 'read_carousels', 'carousels', '2018-07-12 01:20:17', '2018-07-12 01:20:17'),
(34, 'edit_carousels', 'carousels', '2018-07-12 01:20:17', '2018-07-12 01:20:17'),
(35, 'add_carousels', 'carousels', '2018-07-12 01:20:17', '2018-07-12 01:20:17'),
(36, 'delete_carousels', 'carousels', '2018-07-12 01:20:17', '2018-07-12 01:20:17'),
(37, 'browse_categories', 'categories', '2018-07-12 01:21:34', '2018-07-12 01:21:34'),
(38, 'read_categories', 'categories', '2018-07-12 01:21:34', '2018-07-12 01:21:34'),
(39, 'edit_categories', 'categories', '2018-07-12 01:21:34', '2018-07-12 01:21:34'),
(40, 'add_categories', 'categories', '2018-07-12 01:21:34', '2018-07-12 01:21:34'),
(41, 'delete_categories', 'categories', '2018-07-12 01:21:34', '2018-07-12 01:21:34'),
(42, 'browse_page_contents', 'page_contents', '2018-07-12 01:23:50', '2018-07-12 01:23:50'),
(43, 'read_page_contents', 'page_contents', '2018-07-12 01:23:50', '2018-07-12 01:23:50'),
(44, 'edit_page_contents', 'page_contents', '2018-07-12 01:23:50', '2018-07-12 01:23:50'),
(45, 'add_page_contents', 'page_contents', '2018-07-12 01:23:50', '2018-07-12 01:23:50'),
(46, 'delete_page_contents', 'page_contents', '2018-07-12 01:23:50', '2018-07-12 01:23:50'),
(47, 'browse_pages', 'pages', '2018-07-12 01:26:03', '2018-07-12 01:26:03'),
(48, 'read_pages', 'pages', '2018-07-12 01:26:03', '2018-07-12 01:26:03'),
(49, 'edit_pages', 'pages', '2018-07-12 01:26:03', '2018-07-12 01:26:03'),
(50, 'add_pages', 'pages', '2018-07-12 01:26:03', '2018-07-12 01:26:03'),
(51, 'delete_pages', 'pages', '2018-07-12 01:26:03', '2018-07-12 01:26:03'),
(52, 'browse_posts', 'posts', '2018-07-12 01:28:43', '2018-07-12 01:28:43'),
(53, 'read_posts', 'posts', '2018-07-12 01:28:43', '2018-07-12 01:28:43'),
(54, 'edit_posts', 'posts', '2018-07-12 01:28:43', '2018-07-12 01:28:43'),
(55, 'add_posts', 'posts', '2018-07-12 01:28:43', '2018-07-12 01:28:43'),
(56, 'delete_posts', 'posts', '2018-07-12 01:28:43', '2018-07-12 01:28:43'),
(57, 'browse_products', 'products', '2018-07-12 01:32:23', '2018-07-12 01:32:23'),
(58, 'read_products', 'products', '2018-07-12 01:32:23', '2018-07-12 01:32:23'),
(59, 'edit_products', 'products', '2018-07-12 01:32:23', '2018-07-12 01:32:23'),
(60, 'add_products', 'products', '2018-07-12 01:32:23', '2018-07-12 01:32:23'),
(61, 'delete_products', 'products', '2018-07-12 01:32:23', '2018-07-12 01:32:23'),
(62, 'browse_solicitors', 'solicitors', '2018-07-12 01:33:01', '2018-07-12 01:33:01'),
(63, 'read_solicitors', 'solicitors', '2018-07-12 01:33:01', '2018-07-12 01:33:01'),
(64, 'edit_solicitors', 'solicitors', '2018-07-12 01:33:01', '2018-07-12 01:33:01'),
(65, 'add_solicitors', 'solicitors', '2018-07-12 01:33:01', '2018-07-12 01:33:01'),
(66, 'delete_solicitors', 'solicitors', '2018-07-12 01:33:01', '2018-07-12 01:33:01'),
(67, 'browse_third_party_categories', 'third_party_categories', '2018-07-12 01:34:05', '2018-07-12 01:34:05'),
(68, 'read_third_party_categories', 'third_party_categories', '2018-07-12 01:34:05', '2018-07-12 01:34:05'),
(69, 'edit_third_party_categories', 'third_party_categories', '2018-07-12 01:34:05', '2018-07-12 01:34:05'),
(70, 'add_third_party_categories', 'third_party_categories', '2018-07-12 01:34:05', '2018-07-12 01:34:05'),
(71, 'delete_third_party_categories', 'third_party_categories', '2018-07-12 01:34:05', '2018-07-12 01:34:05'),
(72, 'browse_third_party_companies', 'third_party_companies', '2018-07-12 01:34:47', '2018-07-12 01:34:47'),
(73, 'read_third_party_companies', 'third_party_companies', '2018-07-12 01:34:47', '2018-07-12 01:34:47'),
(74, 'edit_third_party_companies', 'third_party_companies', '2018-07-12 01:34:47', '2018-07-12 01:34:47'),
(75, 'add_third_party_companies', 'third_party_companies', '2018-07-12 01:34:47', '2018-07-12 01:34:47'),
(76, 'delete_third_party_companies', 'third_party_companies', '2018-07-12 01:34:47', '2018-07-12 01:34:47'),
(77, 'browse_third_party_products', 'third_party_products', '2018-07-12 01:36:01', '2018-07-12 01:36:01'),
(78, 'read_third_party_products', 'third_party_products', '2018-07-12 01:36:01', '2018-07-12 01:36:01'),
(79, 'edit_third_party_products', 'third_party_products', '2018-07-12 01:36:01', '2018-07-12 01:36:01'),
(80, 'add_third_party_products', 'third_party_products', '2018-07-12 01:36:01', '2018-07-12 01:36:01'),
(81, 'delete_third_party_products', 'third_party_products', '2018-07-12 01:36:01', '2018-07-12 01:36:01'),
(82, 'browse_tradeshow_highlights', 'tradeshow_highlights', '2018-07-12 01:37:39', '2018-07-12 01:37:39'),
(83, 'read_tradeshow_highlights', 'tradeshow_highlights', '2018-07-12 01:37:39', '2018-07-12 01:37:39'),
(84, 'edit_tradeshow_highlights', 'tradeshow_highlights', '2018-07-12 01:37:39', '2018-07-12 01:37:39'),
(85, 'add_tradeshow_highlights', 'tradeshow_highlights', '2018-07-12 01:37:39', '2018-07-12 01:37:39'),
(86, 'delete_tradeshow_highlights', 'tradeshow_highlights', '2018-07-12 01:37:39', '2018-07-12 01:37:39'),
(87, 'browse_orders', 'orders', '2018-07-19 00:32:51', '2018-07-19 00:32:51'),
(88, 'read_orders', 'orders', '2018-07-19 00:32:51', '2018-07-19 00:32:51'),
(89, 'edit_orders', 'orders', '2018-07-19 00:32:51', '2018-07-19 00:32:51'),
(90, 'add_orders', 'orders', '2018-07-19 00:32:51', '2018-07-19 00:32:51'),
(91, 'delete_orders', 'orders', '2018-07-19 00:32:51', '2018-07-19 00:32:51');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sub_header` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uses` varchar(252) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `features_specs` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_sheet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `tool_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_id`, `sub_header`, `uses`, `description`, `features_specs`, `image`, `status`, `slug`, `data_sheet`, `sort_order`, `excerpt`, `tool_name`, `created_at`, `updated_at`, `price`) VALUES
(1, 'AST-300', NULL, 'Advanced Inspection  & Metrology System', 'Inspection, Metrology', '<p>This top performance system is designed for applications that require high-speed inspection and precision measurement of wafers and die. It is well suited for use as a dedicated production tool or versatile process development system. It features a powerful set of automated as well as semi-automated optical/video tools optimized for high accuracy, production throughput, and ease of use.</p>\r\n<p>This platform can be configured with a variety of specialized optical and illumination accessories for infrared, visible, and UV spectrums and precise part staging, as well as optional wafer handling capabilities. Offering significant and unique advantages for dual production/engineering use, the AST-300 system provides the perfect solution for advanced inspection and dimensional metrology needs.</p>\r\n<p>The AST-300 can be customized to meet your exact specifications with an array of optical, illumination, &amp; wafer/part fixture options, wafer handler, as well as custom operator interface, data formats and reports.</p>\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>APPLICATIONS</p>\r\n<ul>\r\n<li>Wafer/Die level CD (Critical Dimension) Metrology</li>\r\n<li>Precision MEMS &amp; 3D Component Inspection</li>\r\n<li>Advanced Microelectronics PackageInspection</li>\r\n<li>Advanced Overlay Metrology</li>\r\n<li>VSCEL Aperture Metrology &amp; Inspection</li>\r\n<li>High Speed Probe Card Inspection &amp; Metrology</li>\r\n</ul>\r\n<p>USER FRIENDLY</p>\r\n<ul>\r\n<li>Very easy to use, program, &amp; set up</li>\r\n<li>Highly visual data with rich color graphics &amp; video</li>\r\n</ul>\r\n<p>FLEXIBLE</p>\r\n<ul>\r\n<li>Specialized options for optics, illumination, fixtures</li>\r\n<li>Optional wafer &amp; other part types handling</li>\r\n<li>Customizable for application specific solutions</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p>POWERFUL</p>\r\n<ul>\r\n<li>Designed for automatic/semi-automatic operation</li>\r\n<li>Extensive inspection features &amp; capability</li>\r\n<li>Integrated dimensional metrology features</li>\r\n</ul>\r\n<p>PRECISE</p>\r\n<ul>\r\n<li>Sub-micron precision optical measurements</li>\r\n<li>High accuracy staging with 5nm linear encoder resolution</li>\r\n</ul>\r\n<p>FAST</p>\r\n<ul>\r\n<li>Multiple measurements per second typical per field of view</li>\r\n<li>Up to 500mm x 600mm wafer/part size capacity</li>\r\n<li>250mm/second maximum staging speed</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>PLATFORM</p>\r\n<ul>\r\n<li>325mm x 400mm sample size capacity</li>\r\n<li>100mm Z-axis travel</li>\r\n<li>Maximum stage Load capacity: 25kg</li>\r\n<li>250mm/second maximum staging speed</li>\r\n<li>Granite base &amp; Z-column, stainless steel finish</li>\r\n<li>Class 100 clean room compatible</li>\r\n<li>Non-linear 2D accuracy error correction</li>\r\n</ul>\r\n<p>STAGE ACCURACY (XY)</p>\r\n<ul>\r\n<li>1&mu;m limiting X-Y stage accuracy [error&lt;(1.0&mu;m+(L/300)) where L is stage travel in mm]</li>\r\n<li>1&mu;m limiting Z-axis accuracy [error&lt;(1.0&mu;m+(L/100)) where L is stage travel in mm]</li>\r\n</ul>\r\n<p>CAMERA</p>\r\n<ul>\r\n<li>Camera selected for your application: Ultraviolet, Visible, Near IR, Short Wave IR, or Mid Wave IR</li>\r\n<li>High speed digital interface</li>\r\n</ul>\r\n<p>OPTICS</p>\r\n<ul>\r\n<li>Standard configurations for Bright Field, Dark Field, UV, NIR, SWIR</li>\r\n<li>Semi-custom optics readily available for your requirement as needed (DIC, Polarized, etc.)</li>\r\n<li>Flat Field objectives (multiple options) with motorized 5 &amp; 6 position turrets</li>\r\n<li>Integral Video Auto Focus or optional Laser Auto Focus</li>\r\n</ul>\r\n<p>ILLUMINATION</p>\r\n<ul>\r\n<li>Software controlled Coaxial or Backlight or as required</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p>SOFTWARE</p>\r\n<ul>\r\n<li>Flexible part scanning for operator convenience &amp; throughput optimization</li>\r\n<li>High precision vision-based part alignment</li>\r\n<li>AST ScopeViewer Software Application suite</li>\r\n<li>Windows 7 Pro / Windows 10 Pro</li>\r\n</ul>\r\n<p>DIMENSIONAL MEASUREMENT TOOLS</p>\r\n<ul>\r\n<li><strong>Video Tools:</strong> Point, Line, Circle, Arc edge detectors</li>\r\n<li><strong>Constructions:</strong> Extensive geometric constructions with distance &amp; angle measurements (e.g. line to line, etc.)</li>\r\n<li><strong>Origin &amp; Skew:</strong> Unlimited reference frames</li>\r\n<li><strong>Tolerancing:</strong> Dimensional &amp; Angular</li>\r\n<li><strong>Units:</strong> Metric</li>\r\n<li><strong>Coordinates:</strong> Cartesian &amp; Polar</li>\r\n<li><strong>Step &amp; Repeat:</strong> Repeat Loops for repeating features &amp; multiple parts</li>\r\n<li><strong>Reports:</strong> Data on screen, text file, or exports to Excel</li>\r\n<li><strong>SPC:</strong> Average, SD, Range, Min, Max, Cp, Cpk</li>\r\n<li><strong>Additional:</strong> Auto Focus, Auto Lighting, &amp; Outlier Removal</li>\r\n</ul>\r\n<p>OTHER SPECIFICATIONS (Typical)</p>\r\n<ul>\r\n<li>Environmental: 17-23&deg;C, 20-80% Humidity</li>\r\n<li>Electrical: 120/240 VAC, 15A single phase</li>\r\n<li>AST-300 Footprint: 815mm x 1050mm x 1700mm (WxDxH)</li>\r\n<li>Wafer Handler Footprint: 610mm x 1050mm x 1200mm (WxDxH)</li>\r\n<li>Weight: 1100kg crated (including wafer handler)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 'products/July2018/VNEWVXDNvjiLeh3klaoq.png', 'PUBLISHED', 'ast-300', 'http://localhost:8000/storage/pdfs/AST-300_datasheet.pdf', 1, 'The AST-300 is designed for applications that require high-speed inspection and precision measurements are required. It features a powerful set of automated as well as semi-automated optical/video tools optimized for high accuracy, production throughput, and ease of use.', NULL, '2018-07-12 03:13:00', '2018-07-12 03:16:00', NULL),
(2, 'AST-200', NULL, 'Advanced Defect Inspection  & Metrology System', 'Inspection, Metrology', '<p>This top performance system is designed for applications that require high-speed inspection and precision measurement of wafers and die. It is well suited for use as a dedicated production tool or versatile process development system. It features a powerful set of automated as well as semi-automated optical/video tools optimized for high accuracy, production throughput, and ease of use.</p>\r\n<p>This automated and versatile platform can be configured with specialized optical paths across the spectrum utilizing precise part staging. The system offers significant and unique advantages for dual production/engineering use, and provides the perfect solution when both defect detection and dimensional metrology are required.</p>\r\n<p>The system can be configured or customized to meet your exact requirements with a variety of optical and illumination accessories, custom wafer/part fixtures, as well as custom operator interface, data formats and reports.</p>', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>APPLICATIONS</p>\r\n<ul>\r\n<li>Wafer level defect detection &amp; measurement</li>\r\n<li>Precision MEMS and HD component inspection</li>\r\n<li>Advanced microelectronics package inspection</li>\r\n</ul>\r\n<p>POWERFUL</p>\r\n<ul>\r\n<li>Designed for automatic/semi-automatic operation</li>\r\n<li>Extensive defect detection features &amp; capability</li>\r\n<li>Integrated dimensional metrology features</li>\r\n</ul>\r\n<p>PRECISE</p>\r\n<ul>\r\n<li>Sub-micron precision optical measurements</li>\r\n<li>High accuracy staging with 0.02 &mu;m linear encoder resolution</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p>FAST</p>\r\n<ul>\r\n<li>50-100 defects/measurements per second typical per field of view</li>\r\n<li>200mm/second part staging speed</li>\r\n<li>[Option] 300mm/second part staging speed</li>\r\n</ul>\r\n<p>USER FRIENDLY</p>\r\n<ul>\r\n<li>Very easy to use, program and set up</li>\r\n<li>Highly visual data with rich color graphics &amp; video</li>\r\n</ul>\r\n<p>FLEXIBLE</p>\r\n<ul>\r\n<li>Specialized options for optics, illumination, fixtures</li>\r\n<li>Optional wafer and other part types handling</li>\r\n<li>Customizable for application specific solutions</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 'products/July2018/Mo1eD7KJvFquqSeQXfaI.png', 'PUBLISHED', 'ast-200', 'http://advancedspectral.com/storage/pdfs/ast200_datasheet.pdf', 2, 'The AST-200 is designed for applications where high-speed defect detection and precision measurements are required. It features a powerful set of automated as well as semi-automatic optical/video tools optimized for high accuracy, production throughput, and ease of use.', NULL, '2018-07-12 03:48:00', '2018-07-12 06:05:34', '499999.99'),
(3, 'AST-S200T', NULL, 'Short Wave Infrared  Microscope', 'Inspection, Metrology', '<p>The AST-S200T Short Wave Infrared Microscope is used for sub-surface observation, imaging, verification and inspection of materials. Transparent to the Near Infrared (NIR) / Shortwave Infrared (SWIR) wavelengths.</p>\r\n<p>An infrared microscope is ideal when non-destructive inspection of vital components is a critical requirement. Our infrared microscopes are built to exacting specifications, and offer a wide range of capabilities.</p>', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p><span style=\"text-decoration: underline;\">OPTICAL SPECIFICATIONS<br /><br /></span></p>\r\n<p><strong>Camera:</strong></p>\r\n<ul>\r\n<li>Cooled InGaAs (900-1700nm)</li>\r\n<li>Silicon-based option for NIR applications, (740nm-1100nm)</li>\r\n</ul>\r\n<p><strong>Illumination:</strong></p>\r\n<ul>\r\n<li>Epi, optimized Koehler</li>\r\n<li>Transmitted, optimized sub-stage</li>\r\n</ul>\r\n<p><strong>Filters:</strong></p>\r\n<ul>\r\n<li>Multi position filter slider sets available based on application</li>\r\n</ul>\r\n<p><strong>Aperture/Field Diaphragms:</strong></p>\r\n<ul>\r\n<li>Manual adjust</li>\r\n</ul>\r\n<p><strong>Magnification:</strong></p>\r\n<ul>\r\n<li>10x-1000x</li>\r\n</ul>\r\n<p><strong>Objectives:</strong></p>\r\n<ul>\r\n<li>1x-100x, (1x, 2.5x, 5x, 10x, 20x, 50x, 100x). Greater than 100x objectives are available based on the application</li>\r\n</ul>\r\n<p><strong>Turret:</strong></p>\r\n<ul>\r\n<li>Manual, optional motorized</li>\r\n</ul>\r\n<p><strong>Resolution:</strong></p>\r\n<ul>\r\n<li>Submicron optical and digital</li>\r\n</ul>\r\n<p><strong>Display:</strong></p>\r\n<ul>\r\n<li>Large monitor for live and stored image display</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><span style=\"text-decoration: underline;\">PLATFORM SPECIFICATIONS<br /><br /></span></p>\r\n<p><strong>Stand:</strong></p>\r\n<ul>\r\n<li>8&rdquo; Microscope stand with coarse/fine Z focus control</li>\r\n</ul>\r\n<p><strong>Stage:</strong></p>\r\n<ul>\r\n<li>8&rdquo; x 8&rdquo; Stage with coarse/fine manual position control. Other stage sizes available upon request.</li>\r\n<li>Optional motorized stage with joystick control available</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\"><span id=\"u3577-16\">PROCESS</span></span></p>\r\n<p><strong>In Process:</strong></p>\r\n<ul>\r\n<li>Verification of critical alignment applications such as: MEMS, wafer bonding, 3D chip stacking, crack/chip inspection metrology.</li>\r\n</ul>\r\n<p><strong>Post Process:</strong></p>\r\n<ul>\r\n<li>Verification, validation, inspection and measurement of critical sub-surface features</li>\r\n</ul>\r\n<p><strong>Failure Analysis:</strong></p>\r\n<ul>\r\n<li>Process development tool verification, part characterization, qualification and environmental testing.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 'products/July2018/2iM9nCW0YyQcl2f6tCzs.png', 'PUBLISHED', 'ast-s200t', 'http://advancedspectral.com/storage/pdfs/ast-s200t.pdf', 3, 'The AST-S200T is used for subsurface observation, imaging, verification and inspection of materials transparent to the Near Infrared (NIR) / Shortwave Infrared (SWIR) wavelengths.', NULL, '2018-07-12 03:49:58', '2018-07-12 03:49:58', NULL),
(4, 'AST-M150T', NULL, 'Mid Wave Benchtop Infrared Microscope System for  Defect Detection and Analysis', 'Inspection, Metrology', '<p>The AST-M150T is a new Mid Wave Infrared Benchtop Microscope for defect detection and analysis. Universal configuration for a multitude of applications. Powerful software included.</p>', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Meant as an aid to find defects either visually or thermo graphically with the MWIR band (3-5 microns).</li>\r\n<li>Thermo graphic microscope to find thermally identifiable defects.</li>\r\n<li>Applications for aerospace, medical device, semiconductor and forensic, materials and processes development and analysis.</li>\r\n<li>Magnifications from Macro to 1x, 2.5x, 4x, and 5x.</li>\r\n<li>Precision 150mm travel manual coarse and fine precision stage for accurate navigation and metrology.</li>\r\n<li>Stage has 6mm cross-roller, lead-screw/stepper motor construction and can accommodate heavy loads (up to approximately 25 kilos)</li>\r\n<li>Precision Z axis 250mm travel manual column for sample and tooling compatibility.</li>\r\n<li>Thermal detection to 20 mK.</li>\r\n<li>Spatial resolution below 10 microns 640 x 512, 20 micron pixel.</li>\r\n<li>InSb FPA on a closed cycle dewar (no LN2 required).</li>\r\n<li>Turn key system.</li>\r\n<li>System includes various image analysis and enhancement features.</li>\r\n<li>System includes image stitching for large sample, high resolution work.</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><span style=\"text-decoration: underline;\"><span id=\"u3641\">Options:</span></span></p>\r\n<ul>\r\n<li>Motorized (&amp; CNC) X &amp; Y Axis.</li>\r\n<li>Motorized (&amp; CNC) Z Axis.</li>\r\n<li>0.1 or 0.5 &micro;m Linear Encoders for X, Y, and Z Axes.</li>\r\n<li>Laptop or Industrial Computer Interface.</li>\r\n<li>200mm, 300mm and Custom Stages.</li>\r\n<li>Automated and Custom Systems.</li>\r\n<li>Wafer Loaders.</li>\r\n<li>Illumination Packages.</li>\r\n<li>Heated Tooling Plates</li>\r\n<li>Long Wave Systems also available.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 'products/July2018/YLskgUldFFvUkL5isnmw.jpg', 'PUBLISHED', 'ast-m150t', 'http://advancedspectral.com/storage/pdfs/astm150t_datasheet.pdf', 4, 'The AST-M150T is a Mid Wave Infrared Benchtop Microscope for defect detection and analysis. It is a universal configuration that includes powerful software to accommodate a large variety of cross market applications.', NULL, '2018-07-12 03:51:31', '2018-07-12 03:51:31', NULL),
(5, 'AST-M200C', NULL, 'Mid Wave Infrared  Inspection System', 'Inspection, Metrology', '<p>The AST-M200C is a Mid Wave Infrared Inspection microscope designed for defect detection and analysis. It is a universal configuration for a multitude of applications.</p>', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Meant as an aid to find defects either visually or thermo-graphically with the MWIR band (3-5 microns)</li>\r\n<li>Thermo graphic microscope to find thermally identifiable defects</li>\r\n<li>Applications for Aerospace, medical device, semiconductor and forensic; materials and processes development and analysis</li>\r\n<li>Magnifications from Macro to 1x, 2.5x, 4x and 5x</li>\r\n<li>Precision 0.10 micron resolution 200mm travel motorized stage for accurate navigation and metrology</li>\r\n<li>Stage has 6mm cross-roller, lead-screw/stepper motor construction and can accommodate heavy loads (up to approximately 25 kilos)</li>\r\n<li>Precision 0.10 micron Z axis 250mm travel motorized column for sample and tooling compatibility and Z axis metrology</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Thermal detection to 20 mK</li>\r\n<li>Spatial resolution below 10 microns 640 x 512, 20 micron pixel</li>\r\n<li>InSb FPA on a closed cycle dewar (no LN2 required)</li>\r\n<li>Self-contained work station with probe platforms on both sides of stage</li>\r\n<li>System includes various image analysis and enhancement features</li>\r\n<li>System includes image stitching for large sample, high resolution work</li>\r\n<li>A host of options and configuration are available and systems can be custom built for your applications</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 'products/July2018/tqvwE8fh4uu2Q3Z7HXCv.png', 'PUBLISHED', 'ast-m200c', 'http://advancedspectral.com/storage/pdfs/astm200c_datasheet.pdf', 5, 'The AST-M200C is a Mid Wave Infrared platform designed for defect detection and analysis. It is a universal configuration for applications in many different market segments.', NULL, '2018-07-12 03:52:51', '2018-07-12 03:52:51', NULL),
(6, 'AST-200H', NULL, 'Advanced Inspection & Metrology  System with Wafer Handling', 'Inspection, Metrology', '<p>This top performance system is designed for applications where high-speed defect detection and precision measurements on wafers and other parts are required. It is well suited for use as a dedicated production tool or as a versatile process development system. It features a powerful set of automated as well as semi-automatic optical/video tools optimized for high accuracy, production throughput, and ease of use.</p>\r\n<p>This automated and versatile platform can be configured with specialized optical paths across the spectrum utilizing precise part staging. The system offers significant and unique advantages for dual production/engineering use, and provides the perfect solution when both defect detection and dimensional metrology are required.</p>\r\n<p>The system can be configured or customized to meet your exact requirements with a variety of optical and illumination accessories, custom wafer/part fixtures, as well as custom operator interface, data formats and reports.</p>', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p>APPLICATIONS</p>\r\n<ul>\r\n<li>Wafer level defect detection &amp; measurement</li>\r\n<li>Precision MEMS and HD component inspection</li>\r\n<li>Advanced microelectronics package inspection</li>\r\n</ul>\r\n<p>POWERFUL</p>\r\n<ul>\r\n<li>Designed for automatic/semi-automatic operation</li>\r\n<li>Extensive defect detection features &amp; capability</li>\r\n<li>Integrated dimensional metrology features</li>\r\n</ul>\r\n<p>PRECISE</p>\r\n<ul>\r\n<li>Sub-micron precision optical measurements</li>\r\n<li>High accuracy staging with 0.02 &mu;m linear encoder resolution</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p>FAST</p>\r\n<ul>\r\n<li>Up to 10 field of views per second - application dependent.</li>\r\n<li>200mm/second part staging speed</li>\r\n</ul>\r\n<p>USER FRIENDLY</p>\r\n<ul>\r\n<li>Very easy to use, program and set up</li>\r\n<li>Highly visual data with rich color graphics &amp; video</li>\r\n</ul>\r\n<p>FLEXIBLE</p>\r\n<ul>\r\n<li>Specialized optics and other advanced options</li>\r\n<li>Optional wafer and other part types handling</li>\r\n<li>Customizable for application specific solutions</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 'products/July2018/6GNmDsQ5FUHCk17kSWZn.png', 'PUBLISHED', 'ast-200h', 'http://advancedspectral.com/storage/pdfs/ast-200h.pdf', 6, 'The AST-200H is designed for applications where high-speed defect detection and precision measurements are required. It features a powerful set of automated as well as semi-automatic optical/video tools optimized for high accuracy, production throughput, and ease of use.', NULL, '2018-07-12 03:54:14', '2018-07-12 03:54:14', NULL),
(7, 'AST-230M', NULL, 'Ergonomic Metrology  Workstation', 'Inspection, Metrology', '<p>The AST-230M is easy to use, versatile, mechanically stable, and has excellent illumination capabilities. Every AST system is constructed to the highest quality standards before any error compensation is applied, providing exceptional performance and consistent, reliable operation. Powerful software is included.</p>', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li><strong>Optics:</strong> 12:1 video zoom package or optional Microscope optics package</li>\r\n<li><strong><span id=\"u3507-7\">Lighting:</span></strong> 3 or 7-channel LED or Fiber Optic illumination (Ring light, collimated sub-stage and co-axial lighting standard. Quad Ring and Dark Field illumination optional)</li>\r\n<li><strong><span id=\"u3507-12\">Video Camera:</span></strong> Color CCD digital camera, USB interface (1024 x 768 res)</li>\r\n<li><strong><span id=\"u3507-17\">Display:</span></strong> 24&rdquo; LCD Monitor (shown)</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li><strong>Travel &amp; Measuring Capacity:</strong> 230mm x 150mm x 200mm (9&rdquo; x 6&rdquo; x 8&rdquo;)</li>\r\n<li><strong><span id=\"u3508-7\">Scales:</span></strong> Heidenhain 0.1 Micron (0.000004&rdquo;) Resolution Scales</li>\r\n<li><strong><span id=\"u3508-12\">Metrology Controller/Software: </span></strong>QC5000 measurement software and PC Control system includes 12:1 zoom lens and 3-channel illumination</li>\r\n<li><strong><span id=\"u3508-17\">Standard:</span></strong> Granite base and granite column construction for extremely high accuracy. Machine pedestal and Point-of-Control (POC) Cart</li>\r\n<li><strong><span id=\"u3508-22\">OPTIONS:</span></strong> Auxiliary Lenses, Calibration Standards, Touch Probe, Laser Probe, Rotary Fixture, Right Angle Mounting Fixture, Right Angle Viewing Attachment</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 'products/July2018/qBD9ieLgSUVLebq99SPV.png', 'PUBLISHED', 'ast-230m', 'http://advancedspectral.com/storage/pdfs/ast230m_datasheet.pdf', 7, 'The AST-230M is an easy to use metrology workstation with a range of recipe controlled illuminations to accommodate even the most challenging measurements.', NULL, '2018-07-12 03:55:32', '2018-07-12 03:55:32', NULL),
(8, 'AST Macro Imager', NULL, 'Fast, High-Resolution  Imaging System', 'Inspection, Metrology', '<p>The AST Macro Imager is suitable for a wide variety of applications, including:</p>\r\n<ul>\r\n<li>Documentation &amp; Archiving</li>\r\n<li>Inspection</li>\r\n<li>Forensics</li>\r\n<li>Quality Assurance</li>\r\n</ul>', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>5056 x 5056 pixel resolution</li>\r\n<li>30 frames per second at full resolution preview</li>\r\n<li>Diffuse brightfield LED illumination</li>\r\n<li>Adjustable darkfield LED illumination</li>\r\n<li>Software presets for repeatable results</li>\r\n<li>200 x 200mm stage travel can accommodate large samples</li>\r\n<li>85mm, 100mm, 125mm, 150mm high-quality macro lens options</li>\r\n<li>Optional 2-lens slider</li>\r\n<li>200mm Z travel</li>\r\n<li>4K Monitor</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\"><img title=\"Macro Imager Technical Drawing\" src=\"http://advancedspectral.com/storage/products/March2018/macro_imager_tech_drwg.jpg\" alt=\"Macro Imager Technical Drawing\" width=\"352\" height=\"317\" /></div>\r\n</div>\r\n</div>', 'products/July2018/9ER7essxRXLTe4p8x0N0.jpg', 'PUBLISHED', 'ast-macro-imager', 'http://advancedspectral.com/storage/pdfs/ast_macro_imager_datasheet.pdf', 8, 'The AST Macro Imager is suitable for a wide variety of applications, and is highly customizable to your specific needs.', NULL, '2018-07-12 03:58:41', '2018-07-12 03:58:41', NULL),
(9, 'AST Autocollimator', NULL, 'Highly Flexible  Angle Measurement System', 'Angle Measurement', '<p>Advanced Spectral Technology&rsquo;s Computerized Autocollimator Systems offer users a highly flexible angle measurement system with features not available from other attitude measurement systems.</p>\r\n<p>The user friendly operating software utilizes easy to identify software buttons to select desired system functions.</p>\r\n<p>Software setups allow measurement configuration parameters to be saved and easily recalled.</p>\r\n<p>On-screen Pass/Fail measurement results can be displayed when the option is selected.&nbsp; Pass/Fail measurement tolerances are programmable.</p>\r\n<p>Report files store data in ASCII format for export into Excel or other programs.</p>', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Engineering/Operator Modes to lock out operators from the system and calibration settings.</li>\r\n<li>Multiple Spot measurement &ndash; up to 4&nbsp;&nbsp; measurements.</li>\r\n<li>LED illumination &ndash; minimizes the associated maintenance required and intensity variations often encountered with fiber optic light sources.</li>\r\n<li>Measurement susceptibility to environmental illumination sources has been minimized with proprietary techniques.</li>\r\n<li>Decreased diffraction around the aperture that produces the spot, thus increased repeatability and reduced noise (flair).</li>\r\n<li>Specific color LED&rsquo;s can be chosen (typically&nbsp; 530nm, Green).</li>\r\n<li>Brightness Level - Recipe Controlled</li>\r\n<li>Improved signal to noise ratio.</li>\r\n<li>Custom spot sizes can be made available upon request.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><strong>Digital camera with USB3.0 interface, which:</strong></p>\r\n<ul>\r\n<li>Allows for higher resolution and larger FOV</li>\r\n<li>Allows the use of a laptop, tablet, mini PC, tower, all in one system</li>\r\n<li>Up to 4 collimators per PC</li>\r\n<li>High frame rates for data streaming in, minimizing latency</li>\r\n</ul>\r\n<p><strong><span id=\"u7070-15\">Powerful software includes:</span></strong></p>\r\n<ul>\r\n<li>Windows 7 or 10 32/64 bit compatible</li>\r\n<li>Touch Screen user interface</li>\r\n<li>Multiple modes with lock-outs for engineer/operator</li>\r\n<li>Custom application support available</li>\r\n</ul>\r\n<p><strong>Additional:</strong></p>\r\n<ul>\r\n<li>Practical and unobtrusive form factor</li>\r\n<li>Angular measurement range minimum +- 2.5 Degrees</li>\r\n<li>Stable active measurement equal to or better than 0.001 degrees</li>\r\n<li>Touch screen or mouse click to pick active spot for single spot measurement in a multi-spot environment</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 'products/July2018/bV1NTbGwdn3zKrKwXf39.jpg', 'PUBLISHED', 'ast-autocollimator', 'http://advancedspectral.com/storage/pdfs/ast_autocollimator_datasheet.pdf', 9, 'Autocollimator Systems offer users a user-friendly, highly flexible angle measurement system with features not available from other attitude measurement systems.', NULL, '2018-07-12 04:00:00', '2018-07-18 02:27:48', '2000'),
(10, 'uScope', NULL, 'Small Format Standard and  Right Angle Viewing Microscope', 'Inspection', '<p>Microscope system with integrated Coaxial White LED (Brightfield) illumination, Motorized focus stage with 50mm travel and Variable speed Mouse driver, Manual XY sample stage, Includes power supplies for Illuminator and Motorized focus stage.</p>', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p><span style=\"text-decoration: underline;\">Key Features:</span></p>\r\n<ul>\r\n<li><strong>Optics:</strong> Infinity design, 200mm focal length. Compatible with Mitutoyo objectives.</li>\r\n<li><strong>Lighting:</strong> Co-axial lighting standard. Quad Ring and Dark Field illumination optional.</li>\r\n<li><strong>Video Camera:</strong> Standard C-Mount for use with all digital and analog cameras.</li>\r\n<li><strong>Display:</strong> Monitor or computer.</li>\r\n<li><strong>Drive Method:</strong> Joystick control. Stepper motor with sub micron positioning. Optional remote controller.</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<p><span style=\"text-decoration: underline;\">Options</span></p>\r\n<ul>\r\n<li>Auxiliary Lenses</li>\r\n<li>Calibration Standards</li>\r\n<li>Rotary Fixture</li>\r\n<li>Right Angle Mounting Fixture</li>\r\n<li>Right Angle Viewing Attachment</li>\r\n<li>Mitutoyo, Seiwa Objectives</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 'products/July2018/M6CFx8hYuS2dw2q5tuDQ.png', 'PUBLISHED', 'uscope', 'http://advancedspectral.com/storage/pdfs/uscope_datasheet.pdf', 10, 'The uScope is a Desktop Microscope System with integrated coaxial White LED (Brightfield) illumination, motorized focus stage with 50mm travel, variable speed mouse driver, and manual XY stage. Includes power supplies for illuminator and motorized focus stage.', NULL, '2018-07-12 04:02:14', '2018-07-12 04:02:14', NULL),
(11, 'Setna Ontos7', NULL, 'Atmospheric Plasma for  Surface Preparation', 'Surface Preparation', '<p>Process engineers know that native oxides and organic contamination on surfaces can disrupt subsequent processes such as solder bonding, wire bonding, thin film deposition, hybrid assembly, etc. Ontos7 provides the process engineer with a rapid atmospheric plasma process which reduces native oxidation and organic contamination.</p>', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<p><span style=\"text-decoration: underline;\">Key Features:</span></p>\r\n<ul>\r\n<li>Non-toxic, dry atmospheric process.</li>\r\n<li>Removes native oxide from metallic and semiconductor surfaces.</li>\r\n<li>Removes organic contamination films.</li>\r\n<li>Passivates surface against re-oxidation. Process completes in seconds.</li>\r\n<li>Process completes in seconds.</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6\">\r\n<ul>\r\n<li>Downstream radical chemistry only, No ions - No bombardment - CMOS safe.</li>\r\n<li>Fully automatic operation with touchscreen controller and recipe libraries.</li>\r\n<li>Accommodates any planar substrate from small chips to 8\" wafers.</li>\r\n<li>Made in USA.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 'products/July2018/eUdnrczyu44DwZjue9py.png', 'PUBLISHED', 'setna-ontos7', 'http://advancedspectral.com/storage/pdfs/ontos7_datasheet.pdf', 11, 'Process engineers know that native oxides and organic contamination on surfaces can disrupt subsequent processes such as solder bonding, wire bonding, thin film deposition, hybrid assembly, etc. Ontos7 provides a rapid atmospheric process which reduces these contaminates.', NULL, '2018-07-12 04:03:46', '2018-07-12 04:03:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-07-12 00:10:16', '2018-07-12 00:10:16'),
(2, 'user', 'Normal User', '2018-07-12 00:10:16', '2018-07-12 00:10:16');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `solicitors`
--

CREATE TABLE `solicitors` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `third_party_categories`
--

CREATE TABLE `third_party_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `third_party_categories`
--

INSERT INTO `third_party_categories` (`id`, `category`, `category_image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Adapters', 'third-party-categories/July2018/xHI3zZuGafLEjcvxLt5y.jpg', 'adapters', '2018-07-12 04:15:00', '2018-07-12 04:17:06'),
(2, 'Boomstands', 'third-party-categories/July2018/VCYFLMK8XPaVpT4zhwSd.jpg', 'boomstands', '2018-07-12 04:17:28', '2018-07-12 04:17:28'),
(3, 'Cameras', 'third-party-categories/July2018/OcyCFI36rzMnFaioGObU.jpg', 'cameras', '2018-07-12 04:17:50', '2018-07-12 04:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `third_party_companies`
--

CREATE TABLE `third_party_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `third_party_companies`
--

INSERT INTO `third_party_companies` (`id`, `company_name`, `company_logo`, `created_at`, `updated_at`) VALUES
(1, 'Spot Imaging', 'third-party-companies/July2018/8WGGHTuq48g0rsgIikmK.jpg', '2018-07-12 04:22:30', '2018-07-12 04:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `third_party_products`
--

CREATE TABLE `third_party_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_sheet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `third_party_products`
--

INSERT INTO `third_party_products` (`id`, `company_id`, `categories`, `data_sheet`, `product_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'ADAPTERS', 'http://advancedspectral.com/storage/pdfs/third-party/AST%20DW.55%20PDF/DW.55%20adapter%20flyer%20w%20AST%20logo%20HD.pdf', 'DW.55', '2018-07-12 04:19:33', '2018-07-12 04:19:33'),
(2, 1, 'BOOMSTANDS', 'http://advancedspectral.com/storage/pdfs/third-party/AST%20Boomstand%20Reader%20and%20Printer%20PDF/boomstand-catalog-2017%20Reader%20w%20AST%20Logo%20HD.pdf', 'Boomstand Catalog 2017', '2018-07-12 04:19:58', '2018-07-12 04:19:58'),
(3, 1, 'CAMERAS', 'http://advancedspectral.com/storage/pdfs/third-party/AST%20RT%20sCMOS%20PDF/RT%20CMOS%20Sheet%202016%20w%20AST%20Logo%20HD.pdf', 'RT sCMOS', '2018-07-12 04:20:24', '2018-07-12 04:20:24'),
(4, 1, 'CAMERAS', 'http://advancedspectral.com/storage/pdfs/third-party/AST%20Idea%201.3_3.0_5.0%20PDF/Idea%205.0%20w%20AST.pdf', 'Idea 5.0', '2018-07-12 04:20:44', '2018-07-12 04:20:44'),
(5, 1, 'CAMERAS', 'http://advancedspectral.com/storage/pdfs/third-party/AST%20Insight%20CMOS%20PDF/INSIGHT%20Consolidated%20Data%20Sheet%20w%20AST%20Logo.pdf', 'Insight CMOS', '2018-07-12 04:21:03', '2018-07-12 04:21:03'),
(6, 1, 'CAMERAS', 'http://advancedspectral.com/storage/pdfs/third-party/AST%20Idea%201.3_3.0_5.0%20PDF/Idea%203.0%20w%20AST.pdf', 'Idea 3.0', '2018-07-12 04:21:22', '2018-07-12 04:21:22'),
(7, 1, 'CAMERAS', 'http://advancedspectral.com/storage/pdfs/third-party/AST%20Idea%201.3_3.0_5.0%20PDF/Idea%201.3%20w%20AST.pdf', 'Idea 1.3', '2018-07-12 04:21:44', '2018-07-12 04:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `tradeshow_highlights`
--

CREATE TABLE `tradeshow_highlights` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dates` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tradeshow_highlights`
--

INSERT INTO `tradeshow_highlights` (`id`, `name`, `dates`, `location`, `city`, `state`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Semicon West 2016', 'July 12 - 14, 2016', 'Moscone Center', 'San Francisco', 'CA', 'tradeshow-highlights/July2018/IKphFWV6DYr9TUBF8VEi.jpg', 8, 'PUBLISHED', '2018-07-12 04:28:04', '2018-07-12 04:28:04'),
(2, 'MD&M West 2016', 'February 9 - 11, 2016', 'Anaheim Convention Center', 'Anaheim', 'CA', 'tradeshow-highlights/July2018/IlmW9QN3OhCSvLXDNdur.jpg', 7, 'PUBLISHED', '2018-07-12 04:28:58', '2018-07-12 04:28:58'),
(3, 'Semicon West 2015', 'July 14 - 16, 2015', 'Moscone Center', 'San Francisco', 'CA', 'tradeshow-highlights/July2018/HXr2fJ05PUgOeBBX3LJO.jpg', 6, 'PUBLISHED', '2018-07-12 04:29:43', '2018-07-12 04:29:43'),
(4, 'MD&M West 2015', 'February 10 - 12, 2015', 'Anaheim Convention Center', 'Anaheim', 'CA', 'tradeshow-highlights/July2018/WD1tRGqk81BAgergjN1a.jpg', 5, 'PUBLISHED', '2018-07-12 04:30:20', '2018-07-12 04:30:20'),
(5, 'Semicon West 2013', 'July 9 - 11, 2013', 'Moscone Center', 'San Francisco', 'CA', 'tradeshow-highlights/July2018/hwk5PbMaOQwNHxElNY43.jpg', 3, 'PUBLISHED', '2018-07-12 04:31:03', '2018-07-12 04:31:03'),
(6, 'Semicon West 2012', 'July 10 - 12, 2013', 'Moscone Center', 'San Francisco', 'CA', 'tradeshow-highlights/July2018/00G9DlteboSAVGvIGLhT.jpg', 1, 'PUBLISHED', '2018-07-12 04:31:41', '2018-07-12 04:31:41'),
(7, 'ISTFA 2013', 'November 3 - 7, 2013', 'McEnery Convention Center', 'San Jose', 'CA', 'tradeshow-highlights/July2018/HBSxxRar4D0V8XHMC8CC.jpg', 4, 'PUBLISHED', '2018-07-12 04:32:19', '2018-07-12 04:32:19'),
(8, 'ISTFA 2012', 'November 11 - 15, 2012', 'Phoenix Convention Center', 'Phoenix', 'AZ', 'tradeshow-highlights/July2018/UwXil5SpEOAkgH4ldqEC.jpg', 2, 'PUBLISHED', '2018-07-12 04:32:56', '2018-07-12 04:32:56'),
(9, 'Semicon West 2017', 'July 11 - 13, 2017', 'Moscone Center', 'San Francisco', 'CA', 'tradeshow-highlights/July2018/BpMp3NuxWpUH76krYWht.jpg', 9, 'PUBLISHED', '2018-07-12 04:33:34', '2018-07-12 04:33:34');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Frank', 'frank@addelia.com', 'users/July2018/yO17FbIDnjxwrui1RlQS.png', '$2y$10$OVmbnvgychETsQhu0pkzj.ZBl.VuIzTIXniqLY7Yx8F8n/bYoBd1q', 'DUYANIlCAiBorkvu8RfFJByvebhO10SOEW8bM98ZoL2s14utvQybqQRzylEu', '{\"locale\":\"en\"}', '2018-07-12 00:10:45', '2018-07-12 00:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carousels_sort_order_unique` (`sort_order`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `page_contents`
--
ALTER TABLE `page_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_name_unique` (`product_name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD UNIQUE KEY `products_sort_order_unique` (`sort_order`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `solicitors`
--
ALTER TABLE `solicitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_party_categories`
--
ALTER TABLE `third_party_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `third_party_categories_slug_unique` (`slug`);

--
-- Indexes for table `third_party_companies`
--
ALTER TABLE `third_party_companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `third_party_companies_company_name_unique` (`company_name`);

--
-- Indexes for table `third_party_products`
--
ALTER TABLE `third_party_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tradeshow_highlights`
--
ALTER TABLE `tradeshow_highlights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carousels`
--
ALTER TABLE `carousels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_contents`
--
ALTER TABLE `page_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `solicitors`
--
ALTER TABLE `solicitors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `third_party_categories`
--
ALTER TABLE `third_party_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `third_party_companies`
--
ALTER TABLE `third_party_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `third_party_products`
--
ALTER TABLE `third_party_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tradeshow_highlights`
--
ALTER TABLE `tradeshow_highlights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
