-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2022 at 12:22 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appnote3`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_apikey`
--

INSERT INTO `cms_apikey` (`id`, `screetkey`, `hit`, `status`, `created_at`, `updated_at`) VALUES
(1, 'f830663c48cc07eb55fbec697e7f852b', 0, 'active', '2022-04-10 10:24:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Moubarak KERIM', 'forgot_password_backend', 'Mot de passe oublier', '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'Mbktiktok6@gmail.com', 'Mbktiktok6@gmail.com', '2022-03-26 11:16:40', '2022-04-10 10:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-03-26 11:17:01', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Moubarak KERIM at Users Management', '', 1, '2022-03-26 11:17:50', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Add New Data Dashboard at Statistic Builder', '', 1, '2022-03-26 12:12:19', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Dashboard at Menu Management', '', 1, '2022-03-26 12:15:39', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/add-save', 'Add New Data  at users', '', 1, '2022-03-26 12:20:37', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-03-26 12:21:36', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bow@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-03-26 12:22:00', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bow@gmail.com logout', '', 3, '2022-03-26 12:22:56', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-03-26 12:35:08', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/3', 'Update data  at users', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$kyhTdkD.Y7f9EEb92Vi82uZ3oUyaBFUON.MBS7p4TtyIbh2lgoyIu</td><td>$2y$10$yh.1TRrb34fjInuyZ7jCr.z1/stXgqge7pmCX0xuNIzSLc5t1tmwq</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 2, '2022-03-26 12:36:56', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-03-26 12:39:58', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-03-26 12:53:50', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/3', 'Update data  at users', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$PAwmuU2fOf0xb7rc91S9beash3PwJCRU4XadD2CeziKIfzxETKnOG</td><td>$2y$10$U3xtUBPejpTJUYTliWAvMuma1T8VC5n8lq2DyllmDdI9AEIc.QjUC</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 2, '2022-03-26 12:54:59', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-03-26 12:55:36', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-03-26 12:58:15', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-03-26 12:58:15', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/3', 'Update data  at users', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$I33UJnbzK1njtrXRYHNJ/ejTdiFThNxm1VdR.ROHaMYWof4eOOC5m</td><td>$2y$10$oQrDSC61Nn115DJoRI.Tze4jyUDWHbEDZ/V2cG4K26tKtKuHtGM1u</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 2, '2022-03-26 12:58:31', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-03-26 13:00:40', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-03-26 13:03:18', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-03-26 13:03:19', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-01 10:54:31', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-01 10:56:09', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-01 10:56:38', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-01 13:59:58', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-03 13:51:04', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-09 12:05:59', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-09 12:31:48', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-09 12:32:11', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/3', 'Update data  at users', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$BzN7pvNJlXvg8HUO3cekU.q2wIco4STKwN2u9V4B/Cj/FBhUptvAy</td><td>$2y$10$HnWbuOuBlBegN0aZ1gsDpOROYUOwjHFxjOYuQ7i/U5VjoSxfgfG5G</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 2, '2022-04-09 12:32:29', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-09 12:32:35', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bow@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-04-09 12:32:47', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bow@gmail.com logout', '', 3, '2022-04-09 12:33:08', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-09 12:33:47', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/1', 'Update data  at users', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Super Admin</td><td>Moubarak KERIM</td></tr><tr><td>photo</td><td></td><td>uploads/2/2022-04/photo.jpg</td></tr><tr><td>email</td><td>admin@crudbooster.com</td><td>moubarakleroikinda@gmail.com</td></tr><tr><td>password</td><td>$2y$10$p8RMNiCQ.aG17L5n6oM4t.jp851DJGUVTUYX8t6r7doyaqNcgFhNG</td><td>$2y$10$N21goKDCIpUjMYmVdNuTK.aG.MQCONr/cvwaRkOtBJ/HncPKW7PEm</td></tr><tr><td>mobile</td><td></td><td>+22891036560</td></tr><tr><td>profession</td><td></td><td>Directeur</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 2, '2022-04-09 12:34:59', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-09 12:35:05', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-09 12:43:47', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/email_templates/edit-save/1', 'Update data Moubarak KERIM at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Email Template Forgot Password Backend</td><td>Moubarak KERIM</td></tr><tr><td>subject</td><td></td><td>Mot de passe oublier</td></tr><tr><td>from_email</td><td>system@crudbooster.com</td><td>moubarakkerim@gmail.com</td></tr><tr><td>cc_email</td><td></td><td>moubarakkerim@gmail.com</td></tr></tbody></table>', 2, '2022-04-09 12:44:43', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-09 12:44:54', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-09 12:49:12', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/email_templates/edit-save/1', 'Update data Moubarak KERIM at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>from_email</td><td>moubarakkerim@gmail.com</td><td>Mbktiktok@gmail.com</td></tr><tr><td>cc_email</td><td>moubarakkerim@gmail.com</td><td>Mbktiktok@gmail.com</td></tr></tbody></table>', 2, '2022-04-09 12:50:22', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-09 12:51:10', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-09 13:23:14', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-09 13:23:41', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-09 13:24:12', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-09 13:24:26', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-09 13:26:09', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-09 13:27:45', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-09 13:29:24', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-09 13:29:41', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-09 13:30:39', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-10 08:37:58', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-10 08:47:09', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/forgot', 'Someone with IP 127.0.0.1 request a password for moubarakleroikinda@gmail.com', '', NULL, '2022-04-10 08:47:27', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakleroikinda@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-04-10 08:49:21', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/email_templates/edit-save/1', 'Update data Moubarak KERIM at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>from_email</td><td>Mbktiktok@gmail.com</td><td>Mbktiktok6@gmail.com</td></tr><tr><td>cc_email</td><td>Mbktiktok@gmail.com</td><td>Mbktiktok6@gmail.com</td></tr></tbody></table>', 1, '2022-04-10 08:53:46', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakleroikinda@gmail.com logout', '', 1, '2022-04-10 08:53:56', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-10 08:55:07', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-10 08:55:31', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-10 08:55:52', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-10 08:56:13', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-10 08:57:05', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-10 08:57:45', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-10 09:05:51', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-10 09:06:56', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-10 09:22:57', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-10 09:23:53', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-10 09:24:50', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/email_templates/edit-save/1', 'Update data Moubarak KERIM at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>from_email</td><td>Mbktiktok6@gmail.com</td><td></td></tr><tr><td>cc_email</td><td>Mbktiktok6@gmail.com</td><td></td></tr></tbody></table>', 2, '2022-04-10 09:25:51', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-10 09:28:23', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-10 09:29:27', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-10 09:29:47', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-10 09:32:08', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-10 09:32:26', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-10 09:34:17', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-10 09:36:06', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-10 09:39:21', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-10 09:39:53', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-10 09:40:13', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-10 09:43:12', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-10 09:55:46', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-10 09:56:23', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-10 09:58:51', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-10 09:59:27', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-10 10:00:00', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-10 10:00:18', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-10 10:08:04', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-10 10:08:23', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-10 10:15:47', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/email_templates/edit-save/1', 'Update data Moubarak KERIM at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>from_email</td><td>Mbktiktok6@gmail.com</td><td></td></tr><tr><td>cc_email</td><td>Mbktiktok6@gmail.com</td><td></td></tr></tbody></table>', 2, '2022-04-10 10:16:42', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-10 10:18:20', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/forgot', 'Someone with IP 127.0.0.1 request a password for moubarakleroikinda@gmail.com', '', NULL, '2022-04-10 10:21:01', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-10 10:21:50', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-23 12:49:57', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-23 13:58:34', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-04-23 13:59:06', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moubarakkerim@gmail.com logout', '', 2, '2022-04-23 14:06:35', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'http://127.0.0.1:8000/admin/forgot', 'Someone with IP 127.0.0.1 request a password for bow@gmail.com', '', NULL, '2022-04-23 14:07:29', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bow@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-04-23 14:09:15', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bow@gmail.com logout', '', 3, '2022-04-23 14:11:14', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moubarakkerim@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-05-12 11:33:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'users', 'Route', 'AdminCmsUsers1ControllerGetIndex', NULL, 'fa fa-users', 0, 1, 0, 1, 1, '2022-03-26 12:10:18', NULL),
(2, 'Dashboard', 'Statistic', 'statistic_builder/show/dashboard', 'normal', 'fa fa-dashboard', 0, 1, 1, 1, NULL, '2022-03-26 12:15:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2022-03-26 11:16:40', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2022-03-26 11:16:40', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2022-03-26 11:16:40', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2022-03-26 11:16:40', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2022-03-26 11:16:40', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2022-03-26 11:16:40', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2022-03-26 11:16:40', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2022-03-26 11:16:40', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2022-03-26 11:16:40', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2022-03-26 11:16:40', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2022-03-26 11:16:40', NULL, NULL),
(12, 'users', 'fa fa-users', 'cms_users', 'cms_users', 'AdminCmsUsers1Controller', 0, 0, '2022-03-26 12:10:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2022-03-26 11:16:44', NULL),
(3, 'administration', 0, 'skin-blue-light', NULL, NULL),
(4, 'evaluation', 0, 'skin-blue-light', NULL, NULL),
(5, 'econome', 0, 'skin-blue-light', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2022-03-26 11:16:44', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2022-03-26 11:16:44', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2022-03-26 11:16:44', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2022-03-26 11:16:45', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2022-03-26 11:16:45', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2022-03-26 11:16:45', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2022-03-26 11:16:45', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2022-03-26 11:16:45', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2022-03-26 11:16:45', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2022-03-26 11:16:46', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2022-03-26 11:16:46', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(14, 1, 0, 1, 0, 0, 3, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2022-03-26 11:16:40', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2022-03-26 11:16:40', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2022-03-26 11:16:40', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@esag.org', 'text', NULL, NULL, '2022-03-26 11:16:40', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'smtp', 'select', 'smtp,mail,sendmail', NULL, '2022-03-26 11:16:40', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', 'smtp.mailtrap.io', 'text', NULL, NULL, '2022-03-26 11:16:40', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '2525', 'text', NULL, 'default 25', '2022-03-26 11:16:40', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '6dc09a6180fb56', 'text', NULL, NULL, '2022-03-26 11:16:40', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', 'ba428eb6b2f733', 'text', NULL, NULL, '2022-03-26 11:16:40', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'NOTE APP', 'text', NULL, NULL, '2022-03-26 11:16:40', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2022-03-26 11:16:40', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2022-04/650d0329bbb50280b1e84bdd7802a3c6.png', 'upload_image', NULL, NULL, '2022-03-26 11:16:40', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2022-03-26 11:16:40', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2022-03-26 11:16:40', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2022-03-26 11:16:40', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2022-03-26 11:16:40', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'dashboard', '2022-03-26 12:12:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, '73a2464a8209baa4de5a289ec96f9df5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"USERS\",\"icon\":\"ion-bag\",\"color\":\"bg-green\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/cms_users\",\"sql\":\"SELECT count(*) from cms_users\"}', '2022-03-26 12:13:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `mobile`, `profession`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Moubarak KERIM', 'uploads/2/2022-04/photo.jpg', 'moubarakleroikinda@gmail.com', '$2y$10$wpS4GTrEr6CZqZy9nlxgzObRIBCbBiHZHEP7YfjQBdG6dUjznVuW.', '+22891036560', 'Directeur', 1, '2022-03-26 11:16:40', '2022-04-09 12:34:59', 'Active'),
(2, 'Moubarak KERIM', 'uploads/1/2022-03/photo.jpg', 'moubarakkerim@gmail.com', '$2y$10$10FHU01i0AAyD1UyNpRIQuLsvc3VJslmHym9DV6CPbNenjAcc1HDm', NULL, NULL, 1, '2022-03-26 11:17:50', NULL, NULL),
(3, 'Bow', 'uploads/1/2022-03/photo.jpg', 'bow@gmail.com', '$2y$10$Ars3uHT6MMgIScUfaq3Nm.Xakl5bmea7xTL7c6tQUOJguHNxXlHsK', '452444', 'Directeur', 3, '2022-03-26 12:20:37', '2022-04-09 12:32:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_08_07_145904_add_table_cms_apicustom', 1),
(4, '2016_08_07_150834_add_table_cms_dashboard', 1),
(5, '2016_08_07_151210_add_table_cms_logs', 1),
(6, '2016_08_07_151211_add_details_cms_logs', 1),
(7, '2016_08_07_152014_add_table_cms_privileges', 1),
(8, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(9, '2016_08_07_152320_add_table_cms_settings', 1),
(10, '2016_08_07_152421_add_table_cms_users', 1),
(11, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(12, '2016_08_07_154624_add_table_cms_moduls', 1),
(13, '2016_08_17_225409_add_status_cms_users', 1),
(14, '2016_08_20_125418_add_table_cms_notifications', 1),
(15, '2016_09_04_033706_add_table_cms_email_queues', 1),
(16, '2016_09_16_035347_add_group_setting', 1),
(17, '2016_09_16_045425_add_label_setting', 1),
(18, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(19, '2016_10_01_141740_add_method_type_apicustom', 1),
(20, '2016_10_01_141846_add_parameters_apicustom', 1),
(21, '2016_10_01_141934_add_responses_apicustom', 1),
(22, '2016_10_01_144826_add_table_apikey', 1),
(23, '2016_11_14_141657_create_cms_menus', 1),
(24, '2016_11_15_132350_create_cms_email_templates', 1),
(25, '2016_11_15_190410_create_cms_statistics', 1),
(26, '2016_11_17_102740_create_cms_statistic_components', 1),
(27, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
