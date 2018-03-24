-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2018 at 02:35 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lithotrepsy`
--
CREATE DATABASE IF NOT EXISTS `lithotrepsy` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lithotrepsy`;

-- --------------------------------------------------------

--
-- Table structure for table `bread_templates`
--

CREATE TABLE `bread_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bread_templates`
--

INSERT INTO `bread_templates` (`id`, `name`, `slug`, `view`, `created_at`, `updated_at`) VALUES
(1, 'Columns 8/4', 'columns-8-4', '<div class=\"row\">\n    <div class=\"col-sm-8 col-md-8 col-lg-8\">\n        <div class=\"panel panel-body\">@stack(\"r01_lf\")</div>\n    </div>\n    <div class=\"col-sm-4 col-md-4 col-lg-4\">\n        <div class=\"panel panel-body\">@stack(\"r01_rg\")</div>\n    </div>\n</div>\n<div class=\"row\">\n    <div class=\"col-sm-8 col-md-8 col-lg-8\">\n        <div class=\"panel panel-body\">@stack(\"r02_lf\")</div>\n    </div>\n    <div class=\"col-sm-4 col-md-4 col-lg-4\">\n        <div class=\"panel panel-body\">@stack(\"r02_rg\")</div>\n    </div>\n</div>', '2018-03-17 06:12:20', '2018-03-17 06:12:20'),
(2, 'Columns 6/6', 'columns-6-6', '<div class=\"row\">\n    <div class=\"col-sm-6 col-md-6 col-lg-6\">\n        <div class=\"panel panel-body\">@stack(\"lf\")</div>\n    </div>\n    <div class=\"col-sm-6 col-md-6 col-lg-6\">\n        <div class=\"panel panel-body\">@stack(\"rg\")</div>\n    </div>\n</div>', '2018-03-17 06:12:20', '2018-03-17 06:12:20'),
(3, 'Columns 4/8', 'columns-4-8', '<div class=\"row\">\n    <div class=\"col-sm-4 col-md-4 col-lg-4\">\n        <div class=\"panel panel-body\">@stack(\"r01_rg\")</div>\n    </div>\n    <div class=\"col-sm-8 col-md-8 col-lg-8\">\n        <div class=\"panel panel-body\">@stack(\"r01_lf\")</div>\n    </div>\n</div>\n<div class=\"row\">\n    <div class=\"col-sm-4 col-md-4 col-lg-4\">\n        <div class=\"panel panel-body\">@stack(\"r02_rg\")</div>\n    </div>\n    <div class=\"col-sm-8 col-md-8 col-lg-8\">\n        <div class=\"panel panel-body\">@stack(\"r02_lf\")</div>\n    </div>\n</div>', '2018-03-17 06:12:20', '2018-03-17 06:12:20');

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

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-03-14 06:27:33', '2018-03-14 06:27:33');

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
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, NULL, 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, NULL, 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '{\"template\":{\"slug\":\"columns-8-4\",\"stack\":\"r01_lf\"}}', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 0, 0, 1, 1, 1, 1, '{\"template\":{\"slug\":\"columns-8-4\",\"stack\":\"r02_lf\"}}', 7),
(18, 2, 'body', 'rich_text_box', 'body', 0, 0, 1, 1, 1, 1, '{\"template\":{\"slug\":\"columns-8-4\",\"stack\":\"r02_lf\"}}', 11),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"template\":{\"slug\":\"columns-8-4\",\"stack\":\"r01_rg\"}}', 4),
(20, 2, 'meta_description', 'text', 'meta_description', 0, 0, 1, 1, 1, 1, '{\"template\":{\"slug\":\"columns-8-4\",\"stack\":\"r01_lf\"}}', 5),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 0, 0, 1, 1, 1, 1, '{\"template\":{\"slug\":\"columns-8-4\",\"stack\":\"r01_lf\"}}', 6),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"},\"template\":{\"slug\":\"columns-8-4\",\"stack\":\"r01_rg\"}}', 8),
(23, 2, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '{\"template\":{\"slug\":\"columns-8-4\",\"stack\":\"r01_rg\"}}', 9),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, NULL, 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '{\"template\":{\"slug\":\"columns-8-4\",\"stack\":\"r02_rg\"}}', 10),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, NULL, 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, NULL, 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, NULL, 3),
(29, 3, 'password', 'password', 'password', 1, 0, 0, 1, 1, 0, NULL, 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, NULL, 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, NULL, 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, NULL, 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'role_id', 0, 1, 1, 1, 1, 1, NULL, 9),
(54, 11, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, '{\"description\":\"A helpful description text here for your future self.\"}', 1),
(59, 11, 'patient_id', 'hidden', 'Patient Id', 0, 0, 0, 0, 0, 0, '{\"description\":\"A helpful description text here for your future self.\"}', 3),
(60, 11, 'diagnose', 'text', 'التشخيص', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"custom_id\"},\"description\":\"A helpful description text here for your future self.\"}', 4),
(61, 11, 'report', 'rich_text_box', 'Report', 0, 0, 1, 1, 1, 1, '{\"description\":\"A helpful description text here for your future self.\"}', 6),
(62, 11, 'patient_case', 'checkbox', 'Patient Case', 0, 1, 1, 1, 1, 1, '{\"description\":\"A helpful description text here for your future self.\"}', 5),
(63, 12, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(67, 12, 'user_id', 'checkbox', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 8),
(68, 12, 'patient_id', 'hidden', 'المرضي المحولين', 0, 0, 0, 0, 0, 0, '{\"description\":\"A helpful description text here for your future self.\"}', 10),
(72, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 5),
(73, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(74, 12, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 7),
(75, 13, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(77, 13, 'national_id', 'number', 'بطاقة', 1, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"custom_id\"}}', 3),
(83, 13, 'created_at', 'date', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 7),
(84, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(85, 13, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 14),
(89, 11, 'drin_belongsto_user_relationship', 'relationship', 'Created By', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"name\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 11),
(90, 11, 'user_id', 'checkbox', 'User Id', 1, 1, 1, 1, 1, 1, '{\"description\":\"A helpful description text here for your future self.\"}', 10),
(94, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 7),
(95, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(96, 11, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 9),
(97, 12, 'fromdr_belongsto_user_relationship', 'relationship', 'Created By', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"name\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 9),
(98, 12, 'fromdr_hasmany_patient_relationship', 'relationship', 'patients', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Patient\",\"table\":\"patients\",\"type\":\"hasMany\",\"column\":\"fromdr_id\",\"key\":\"patientname\",\"label\":\"patientname\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 11),
(99, 14, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(100, 14, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(101, 14, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 3),
(102, 14, 'view', 'code_editor', 'body', 1, 0, 1, 1, 1, 1, '', 4),
(103, 14, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 5),
(104, 14, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 6),
(111, 13, 'patient_hasone_user_relationship', 'relationship', 'Drin', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"bread_templates\",\"pivot\":\"0\"}', 10),
(113, 13, 'patient_hasone_user_relationship_1', 'relationship', 'Created By', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"name\",\"label\":\"name\",\"pivot_table\":\"bread_templates\",\"pivot\":\"0\"}', 15),
(114, 13, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 8),
(115, 3, 'user_hasmany_patient_relationship', 'relationship', 'patients', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\patient\",\"table\":\"patients\",\"type\":\"hasMany\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"books\",\"pivot\":\"0\"}', 11),
(117, 12, 'fromdrtitle', 'text', 'Fromdrtitle', 0, 1, 1, 1, 1, 1, '{\"template\":{\"slug\":\"columns-8-4\",\"stack\":\"r01_rg\"}}', 2),
(118, 12, 'fromdrname', 'text', 'Fromdrname', 0, 1, 1, 1, 1, 1, '{\"description\":\"A helpful description text here for your future self.\"}', 3),
(119, 12, 'fromdraddress', 'text_area', 'Fromdraddress', 0, 1, 1, 1, 1, 1, '{\"description\":\"A helpful description text here for your future self.\"}', 4),
(120, 13, 'patientname', 'text', 'اسم المريض', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"custom_id\"}}', 2),
(121, 13, 'patientaddress', 'text', 'عنوان', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"custom_id\"}}', 4),
(122, 13, 'patientbirth_date', 'date', 'ت الميلاد', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"custom_id\"}}', 5),
(123, 13, 'patientmobile_no', 'number', 'Patientmobile No', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"custom_id\"}}', 6),
(126, 13, 'patient_belongsto_drin_relationship', 'relationship', 'Patient Case', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Drin\",\"table\":\"drins\",\"type\":\"belongsToMany\",\"column\":\"drin_id\",\"key\":\"patient_case\",\"label\":\"patient_case\",\"pivot_table\":\"drin_patients\",\"pivot\":\"1\"}', 16),
(127, 13, 'drin_id', 'text', 'Drin Id', 0, 1, 1, 1, 1, 1, NULL, 9),
(128, 13, 'patient_belongsto_fromdr_relationship', 'relationship', 'fromdrs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Fromdr\",\"table\":\"fromdrs\",\"type\":\"belongsTo\",\"column\":\"fromdr_id\",\"key\":\"id\",\"label\":\"fromdrname\",\"pivot_table\":\"fromdrs\",\"pivot\":\"0\"}', 12),
(130, 13, 'fromdr_id', 'text', 'Fromdr Id', 0, 1, 1, 1, 1, 1, NULL, 11),
(131, 11, 'drin_belongstomany_patient_relationship', 'relationship', 'patients', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Patient\",\"table\":\"patients\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"patientname\",\"pivot_table\":\"drin_patients\",\"pivot\":\"1\"}', 2),
(133, 17, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(134, 17, 'drin_id', 'text', 'Drin Id', 0, 1, 1, 1, 1, 1, NULL, 2),
(135, 17, 'Patient_id', 'text', 'Patient Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(136, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(137, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(138, 17, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, NULL, 6),
(139, 17, 'status', 'checkbox', 'Status', 0, 1, 1, 1, 1, 1, NULL, 7),
(140, 18, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(141, 18, 'drin_id', 'checkbox', 'Drin Id', 0, 1, 1, 1, 1, 1, NULL, 2),
(142, 18, 'Patient_id', 'checkbox', 'Patient Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(143, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(144, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(145, 18, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, NULL, 6),
(146, 18, 'status', 'hidden', 'Status', 0, 1, 1, 1, 1, 1, NULL, 7),
(147, 18, 'drin_patient_hasone_drin_relationship', 'relationship', 'Patient Case', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Drin\",\"table\":\"drins\",\"type\":\"belongsTo\",\"column\":\"drin_id\",\"key\":\"patient_case\",\"label\":\"patient_case\",\"pivot_table\":\"bread_templates\",\"pivot\":\"0\"}', 8);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, '2018-03-14 06:27:32', '2018-03-14 06:27:32'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '2018-03-14 06:27:32', '2018-03-14 08:20:03'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', NULL, NULL, 1, 0, '2018-03-14 06:27:32', '2018-03-22 07:16:47'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2018-03-14 06:27:32', '2018-03-14 06:27:32'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-03-14 06:27:32', '2018-03-14 06:27:32'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-03-14 06:27:32', '2018-03-14 06:27:32'),
(11, 'drins', 'drins', 'Drin', 'Drins', 'voyager-wand', 'App\\Drin', NULL, NULL, NULL, 1, 0, '2018-03-14 06:54:55', '2018-03-14 09:18:27'),
(12, 'fromdrs', 'fromdrs', 'Fromdr', 'Fromdrs', NULL, 'App\\Fromdr', NULL, NULL, NULL, 1, 0, '2018-03-14 06:55:06', '2018-03-14 06:55:06'),
(13, 'patients', 'patients', 'Patient', 'Patients', NULL, 'App\\Patient', NULL, NULL, NULL, 1, 0, '2018-03-14 06:55:14', '2018-03-14 06:55:14'),
(14, 'bread_templates', 'templates', 'Template', 'Templates', 'voyager-news', 'Launcher\\BreadTemplates\\Models\\Template', NULL, '', '', 1, 0, '2018-03-17 06:12:20', '2018-03-17 06:12:20'),
(17, 'drin_patient', 'drin-patient', 'Drin Patient', 'Drin Patients', NULL, 'App\\DrinPatient', NULL, NULL, NULL, 1, 0, '2018-03-22 12:30:50', '2018-03-22 12:30:50'),
(18, 'drin_patients', 'drin-patients', 'Drin Patient', 'Drin Patients', NULL, 'App\\DrinPatient', NULL, NULL, NULL, 1, 0, '2018-03-22 12:32:11', '2018-03-22 12:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `drins`
--

CREATE TABLE `drins` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` text COLLATE utf8_unicode_ci NOT NULL,
  `patient_id` text COLLATE utf8_unicode_ci,
  `diagnose` text COLLATE utf8_unicode_ci,
  `report` mediumtext COLLATE utf8_unicode_ci,
  `patient_case` bit(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drins`
--

INSERT INTO `drins` (`id`, `user_id`, `patient_id`, `diagnose`, `report`, `patient_case`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', NULL, '1', '<p>1</p>', b'1', '2018-03-23 17:41:31', '2018-03-23 17:41:31', NULL),
(2, '1', NULL, '222', '<p>2222222</p>', b'1', '2018-03-24 09:16:01', '2018-03-24 09:16:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drin_patients`
--

CREATE TABLE `drin_patients` (
  `id` int(10) UNSIGNED NOT NULL,
  `drin_id` int(11) DEFAULT NULL,
  `Patient_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drin_patients`
--

INSERT INTO `drin_patients` (`id`, `drin_id`, `Patient_id`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(1, 1, 1, NULL, '2018-03-22 12:40:17', NULL, 1),
(2, 1, 1, NULL, '2018-03-22 12:40:01', NULL, 0),
(3, 13, 3, NULL, NULL, NULL, NULL),
(5, 12, 2, NULL, NULL, NULL, NULL),
(6, 10, 9, NULL, NULL, NULL, NULL),
(7, 2, 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fromdrs`
--

CREATE TABLE `fromdrs` (
  `id` int(10) UNSIGNED NOT NULL,
  `fromdrtitle` tinytext COLLATE utf8_unicode_ci,
  `fromdrname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromdraddress` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fromdrs`
--

INSERT INTO `fromdrs` (`id`, `fromdrtitle`, `fromdrname`, `fromdraddress`, `user_id`, `patient_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'أ.د', 'طبيب تحويل', 'شسيثشسيشسي', 1, 0, '2018-03-14 09:29:00', '2018-03-22 10:36:03', NULL),
(2, 'Dr', 'طبيب تحويل 2', '521063253516513216465', 1, 0, '2018-03-21 12:22:00', '2018-03-22 10:47:29', NULL),
(3, 'Dr.', 'طبيب تحويل 3', '21321321231231', 1, NULL, '2018-03-24 09:31:11', '2018-03-24 09:31:11', NULL);

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
(1, 'admin', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(2, 'Public', '2018-03-14 09:42:49', '2018-03-14 09:43:09');

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
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 2, '2018-03-14 06:27:33', '2018-03-24 09:01:55', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-03-14 06:27:33', '2018-03-24 09:01:55', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2018-03-14 06:27:33', '2018-03-24 09:01:55', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 4, '2018-03-14 06:27:33', '2018-03-24 09:01:55', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2018-03-14 06:27:33', '2018-03-24 09:01:55', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-03-14 06:27:33', '2018-03-24 09:01:55', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2018-03-14 06:27:33', '2018-03-24 09:01:55', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-03-14 06:27:33', '2018-03-24 09:01:55', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2018-03-14 06:27:33', '2018-03-21 12:19:47', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2018-03-14 06:27:33', '2018-03-21 12:19:47', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 3, '2018-03-14 06:27:33', '2018-03-21 12:19:47', 'voyager.compass.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2018-03-14 06:27:33', '2018-03-24 09:01:55', 'voyager.settings.index', NULL),
(13, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 8, 4, '2018-03-14 06:27:33', '2018-03-21 12:19:47', 'voyager.hooks', NULL),
(14, 1, 'Drins', '/admin/drins', '_self', 'voyager-study', '#ff0000', 26, 2, '2018-03-14 06:54:55', '2018-03-24 09:08:02', NULL, ''),
(15, 1, 'Fromdrs', '/admin/fromdrs', '_self', 'voyager-certificate', '#ff0000', 26, 3, '2018-03-14 06:55:06', '2018-03-24 09:09:34', NULL, ''),
(16, 1, 'Patients', '/admin/patients', '_self', 'voyager-people', '#ff0000', 26, 1, '2018-03-14 06:55:14', '2018-03-24 09:04:49', NULL, ''),
(17, 2, 'الأطباء المتواجدون', 'http://lithotrepsy.mans/admin/drins', '_self', 'voyager-wand', '#000000', NULL, 18, '2018-03-14 09:45:22', '2018-03-14 09:45:22', NULL, ''),
(18, 2, 'النمرضي', 'http://lithotrepsy.mans/admin/fromdrs', '_self', 'voyager-paperclip', '#ba2118', NULL, 19, '2018-03-14 09:46:47', '2018-03-14 09:46:47', NULL, ''),
(19, 2, 'التحويلات', 'http://lithotrepsy.mans/admin/fromdrs', '_self', 'voyager-paper-plane', '#f8ac0e', NULL, 20, '2018-03-14 09:48:35', '2018-03-14 09:48:35', NULL, ''),
(20, 1, 'Templates', '/admin/templates', '_self', 'voyager-megaphone', NULL, NULL, 11, '2018-03-17 06:12:20', '2018-03-24 09:01:55', NULL, NULL),
(21, 1, 'Themes', '/admin/themes', '_self', 'voyager-paint-bucket', NULL, NULL, 12, '2018-03-17 07:07:55', '2018-03-24 09:01:55', NULL, NULL),
(22, 1, 'Jotform API', '/admin/jotform-api/forms', '_self', 'voyager-file-text', NULL, NULL, 13, '2018-03-18 08:39:43', '2018-03-24 09:01:55', NULL, NULL),
(23, 1, 'Forms', '/admin/jotform-api/forms', '_self', 'voyager-check', NULL, 22, 1, '2018-03-18 08:39:43', '2018-03-21 12:19:47', NULL, NULL),
(24, 1, 'Redirects', '/admin/redirects', '_self', 'voyager-external', NULL, NULL, 14, '2018-03-18 11:54:42', '2018-03-24 09:01:55', NULL, NULL),
(26, 1, 'M.L.C', 'voyager-helm', '_self', 'voyager-dashboard', '#069911', NULL, 1, '2018-03-21 12:19:33', '2018-03-24 09:06:35', NULL, ''),
(27, 1, 'Drin Patients', '/admin/drin-patient', '_self', NULL, NULL, 26, 4, '2018-03-22 12:30:50', '2018-03-24 09:01:55', NULL, NULL);

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
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1),
(24, '2017_06_26_000000_create_bread_templates_table', 2),
(25, '2018_03_19_124031_create_books_table', 3),
(26, '2018_03_19_124706_create_books_table', 4);

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
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'columns-4-8', 'Yar Meta Description', 'Keyword1, Keyword2', 1, '2018-03-14 06:27:33', '2018-03-17 06:34:36');

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
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(10) UNSIGNED NOT NULL,
  `patientname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `national_id` bigint(20) NOT NULL,
  `patientaddress` text COLLATE utf8_unicode_ci,
  `patientbirth_date` date DEFAULT NULL,
  `patientmobile_no` bigint(20) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` text COLLATE utf8_unicode_ci,
  `drin_id` text COLLATE utf8_unicode_ci,
  `fromdr_id` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `patientname`, `national_id`, `patientaddress`, `patientbirth_date`, `patientmobile_no`, `created_at`, `updated_at`, `deleted_at`, `user_id`, `drin_id`, `fromdr_id`) VALUES
(1, 'P1', 1, '1', '2001-01-01', 1, '2018-03-23', '2018-03-23 17:40:56', NULL, '1', NULL, '1'),
(2, 'Patient 2', 22, '2', '2002-02-02', 1, '2018-03-24', '2018-03-24 09:15:16', NULL, '2', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(2, 'browse_database', NULL, '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(3, 'browse_media', NULL, '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(4, 'browse_compass', NULL, '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(5, 'browse_menus', 'menus', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(6, 'read_menus', 'menus', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(7, 'edit_menus', 'menus', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(8, 'add_menus', 'menus', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(9, 'delete_menus', 'menus', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(10, 'browse_pages', 'pages', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(11, 'read_pages', 'pages', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(12, 'edit_pages', 'pages', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(13, 'add_pages', 'pages', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(14, 'delete_pages', 'pages', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(15, 'browse_roles', 'roles', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(16, 'read_roles', 'roles', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(17, 'edit_roles', 'roles', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(18, 'add_roles', 'roles', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(19, 'delete_roles', 'roles', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(20, 'browse_users', 'users', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(21, 'read_users', 'users', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(22, 'edit_users', 'users', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(23, 'add_users', 'users', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(24, 'delete_users', 'users', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(25, 'browse_posts', 'posts', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(26, 'read_posts', 'posts', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(27, 'edit_posts', 'posts', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(28, 'add_posts', 'posts', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(29, 'delete_posts', 'posts', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(30, 'browse_categories', 'categories', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(31, 'read_categories', 'categories', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(32, 'edit_categories', 'categories', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(33, 'add_categories', 'categories', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(34, 'delete_categories', 'categories', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(35, 'browse_settings', 'settings', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(36, 'read_settings', 'settings', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(37, 'edit_settings', 'settings', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(38, 'add_settings', 'settings', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(39, 'delete_settings', 'settings', '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(40, 'browse_hooks', NULL, '2018-03-14 06:27:33', '2018-03-14 06:27:33', NULL),
(41, 'browse_drins', 'drins', '2018-03-14 06:54:55', '2018-03-14 06:54:55', NULL),
(42, 'read_drins', 'drins', '2018-03-14 06:54:55', '2018-03-14 06:54:55', NULL),
(43, 'edit_drins', 'drins', '2018-03-14 06:54:55', '2018-03-14 06:54:55', NULL),
(44, 'add_drins', 'drins', '2018-03-14 06:54:55', '2018-03-14 06:54:55', NULL),
(45, 'delete_drins', 'drins', '2018-03-14 06:54:55', '2018-03-14 06:54:55', NULL),
(46, 'browse_fromdrs', 'fromdrs', '2018-03-14 06:55:06', '2018-03-14 06:55:06', NULL),
(47, 'read_fromdrs', 'fromdrs', '2018-03-14 06:55:06', '2018-03-14 06:55:06', NULL),
(48, 'edit_fromdrs', 'fromdrs', '2018-03-14 06:55:06', '2018-03-14 06:55:06', NULL),
(49, 'add_fromdrs', 'fromdrs', '2018-03-14 06:55:06', '2018-03-14 06:55:06', NULL),
(50, 'delete_fromdrs', 'fromdrs', '2018-03-14 06:55:06', '2018-03-14 06:55:06', NULL),
(51, 'browse_patients', 'patients', '2018-03-14 06:55:14', '2018-03-14 06:55:14', NULL),
(52, 'read_patients', 'patients', '2018-03-14 06:55:14', '2018-03-14 06:55:14', NULL),
(53, 'edit_patients', 'patients', '2018-03-14 06:55:14', '2018-03-14 06:55:14', NULL),
(54, 'add_patients', 'patients', '2018-03-14 06:55:14', '2018-03-14 06:55:14', NULL),
(55, 'delete_patients', 'patients', '2018-03-14 06:55:14', '2018-03-14 06:55:14', NULL),
(56, 'browse_bread_templates', 'bread_templates', '2018-03-17 06:12:20', '2018-03-17 06:12:20', NULL),
(57, 'read_bread_templates', 'bread_templates', '2018-03-17 06:12:20', '2018-03-17 06:12:20', NULL),
(58, 'edit_bread_templates', 'bread_templates', '2018-03-17 06:12:20', '2018-03-17 06:12:20', NULL),
(59, 'add_bread_templates', 'bread_templates', '2018-03-17 06:12:20', '2018-03-17 06:12:20', NULL),
(60, 'delete_bread_templates', 'bread_templates', '2018-03-17 06:12:20', '2018-03-17 06:12:20', NULL),
(61, 'browse_themes', 'admin', '2018-03-17 07:07:55', '2018-03-17 07:07:55', NULL),
(62, 'jotform_api', 'admin', '2018-03-18 08:39:43', '2018-03-18 08:39:43', NULL),
(63, 'browse_redirects', 'redirects', '2018-03-18 11:54:42', '2018-03-18 11:54:42', NULL),
(64, 'edit_redirects', 'redirects', '2018-03-18 11:54:42', '2018-03-18 11:54:42', NULL),
(65, 'add_redirects', 'redirects', '2018-03-18 11:54:42', '2018-03-18 11:54:42', NULL),
(66, 'delete_redirects', 'redirects', '2018-03-18 11:54:42', '2018-03-18 11:54:42', NULL),
(72, 'browse_drin_patient', 'drin_patient', '2018-03-22 12:30:50', '2018-03-22 12:30:50', NULL),
(73, 'read_drin_patient', 'drin_patient', '2018-03-22 12:30:50', '2018-03-22 12:30:50', NULL),
(74, 'edit_drin_patient', 'drin_patient', '2018-03-22 12:30:50', '2018-03-22 12:30:50', NULL),
(75, 'add_drin_patient', 'drin_patient', '2018-03-22 12:30:50', '2018-03-22 12:30:50', NULL),
(76, 'delete_drin_patient', 'drin_patient', '2018-03-22 12:30:50', '2018-03-22 12:30:50', NULL),
(77, 'browse_drin_patients', 'drin_patients', '2018-03-22 12:32:11', '2018-03-22 12:32:11', NULL),
(78, 'read_drin_patients', 'drin_patients', '2018-03-22 12:32:11', '2018-03-22 12:32:11', NULL),
(79, 'edit_drin_patients', 'drin_patients', '2018-03-22 12:32:11', '2018-03-22 12:32:11', NULL),
(80, 'add_drin_patients', 'drin_patients', '2018-03-22 12:32:11', '2018-03-22 12:32:11', NULL),
(81, 'delete_drin_patients', 'drin_patients', '2018-03-22 12:32:11', '2018-03-22 12:32:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 3),
(9, 1),
(9, 3),
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
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(40, 2),
(40, 3),
(41, 1),
(41, 2),
(41, 3),
(42, 1),
(42, 2),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(51, 3),
(52, 1),
(52, 2),
(52, 3),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
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
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1);

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
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-03-14 06:27:33', '2018-03-14 06:27:33');

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
(1, 'admin', 'Administrator', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(2, 'Recemption', 'Normal User', '2018-03-14 06:27:33', '2018-03-14 07:38:14'),
(3, 'Dr In', 'طبيب متواجد', '2018-03-14 07:38:54', '2018-03-14 09:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'M.L.C', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Mansouta Litrhotripsy Center', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/March2018/eULPNjEULdrHmU32PIOs.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '1006386973840-c4k174eg3booc3j0vf1bh46v742b63ir.apps.googleusercontent.com', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '1006386973840-c4k174eg3booc3j0vf1bh46v742b63ir.apps.googleusercontent.com', '', 'text', 1, 'Admin'),
(12, 'admin.jotform_api_key', 'Jotform API Key', '6173178ed0be802978fad696c39e1d80', '', 'text', 1, 'Admin');

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

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2018-03-14 06:27:33', '2018-03-14 06:27:33'),
(30, 'menu_items', 'title', 12, 'pt', 'Configurações', '2018-03-14 06:27:33', '2018-03-14 06:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$z9V0eLF0N2SYqyhKCRo16OHdsR5qJnuoAlLgFMfK/4I3AWpBe/rCm', 'N8kNqJuQqCtWwNsF8lkF3PrLP4ooqZfUMAu2rAKW3bvyVeHK7qYfSUk2E3Pw', '2018-03-14 06:27:33', '2018-03-22 08:08:29'),
(2, 3, 'dr', 'dr@admin.com', 'users/default.png', '$2y$10$MoMO8TezxYPdlrrY8LPtvucF6xnL5IBt/Z10hjmfWh.Sqgy5iAK8a', 'EvxLWoTyt9V5t31eMHKVe1iDhKddT0VowWNhcXkDQnow0AVEikDjWI7UxXuC', '2018-03-14 07:39:44', '2018-03-22 08:08:57'),
(3, 2, 'receptionesr', 'rec@admin.com', 'users/default.png', '$2y$10$tRuwFcAxG1YSOdpgNiiICOP8KvULaofWY0nOB2MLYcsT.Jwv3EFQS', 'sGSTRkDhDnNt1SzWOVPtMCsfcpJvhrSbhpnbTANwKVaMdUKIg3xImkPc0c23', '2018-03-14 10:39:29', '2018-03-14 10:39:29');

-- --------------------------------------------------------

--
-- Table structure for table `voyager_redirects`
--

CREATE TABLE `voyager_redirects` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voyager_themes`
--

CREATE TABLE `voyager_themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voyager_theme_options`
--

CREATE TABLE `voyager_theme_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `voyager_theme_id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drins`
--
ALTER TABLE `drins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drin_patients`
--
ALTER TABLE `drin_patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fromdrs`
--
ALTER TABLE `fromdrs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voyager_themes`
--
ALTER TABLE `voyager_themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `voyager_themes_folder_unique` (`folder`);

--
-- Indexes for table `voyager_theme_options`
--
ALTER TABLE `voyager_theme_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voyager_theme_options_voyager_theme_id_index` (`voyager_theme_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drins`
--
ALTER TABLE `drins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `drin_patients`
--
ALTER TABLE `drin_patients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fromdrs`
--
ALTER TABLE `fromdrs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `voyager_themes`
--
ALTER TABLE `voyager_themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voyager_theme_options`
--
ALTER TABLE `voyager_theme_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `voyager_theme_options`
--
ALTER TABLE `voyager_theme_options`
  ADD CONSTRAINT `voyager_theme_options_voyager_theme_id_foreign` FOREIGN KEY (`voyager_theme_id`) REFERENCES `voyager_themes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
