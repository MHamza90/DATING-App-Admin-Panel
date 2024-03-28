-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 31, 2023 at 07:21 AM
-- Server version: 5.7.43-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `love_love`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_fors`
--

CREATE TABLE `account_fors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_fors`
--

INSERT INTO `account_fors` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Yourself', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(2, 'Father', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(3, 'Mother', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(4, 'Brother', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(5, 'Sister', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(6, 'Friend', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(7, 'Uncle', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(8, 'Aunt', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(9, 'Others', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `content_modifications`
--

CREATE TABLE `content_modifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `term_and_condition` longtext COLLATE utf8mb4_unicode_ci,
  `privacy_policy` longtext COLLATE utf8mb4_unicode_ci,
  `help_support` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_modifications`
--

INSERT INTO `content_modifications` (`id`, `user_id`, `term_and_condition`, `privacy_policy`, `help_support`, `created_at`, `updated_at`) VALUES
(1, 1, ':Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<p>', '2023-07-06 12:51:56', '2023-07-24 15:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `disappear_messages`
--

CREATE TABLE `disappear_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `disappear_messages`
--

INSERT INTO `disappear_messages` (`id`, `sender_id`, `receiver_id`, `message`, `created_at`, `updated_at`) VALUES
(13, 42, 46, 'hello', '2023-07-25 11:46:11', '2023-07-25 11:46:11'),
(14, 50, 52, 'hello', '2023-07-31 12:37:49', '2023-07-31 12:37:49'),
(15, 52, 49, 'Hello Lewis', '2023-07-31 13:13:07', '2023-07-31 13:13:07'),
(16, 100, 101, 'Hello', '2023-10-14 00:17:52', '2023-10-14 00:17:52');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hearts`
--

CREATE TABLE `hearts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hearts`
--

INSERT INTO `hearts` (`id`, `sender_id`, `receiver_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 72, 46, 1, '2023-07-27 14:44:31', '2023-07-27 14:46:07'),
(2, 46, 42, 0, '2023-07-27 14:45:02', '2023-07-27 14:45:02'),
(3, 47, 42, 0, '2023-07-27 14:45:09', '2023-07-27 14:45:09'),
(4, 47, 52, 1, '2023-07-27 14:45:12', '2023-07-31 14:50:58'),
(5, 46, 44, 0, '2023-07-27 14:45:26', '2023-07-27 14:45:26'),
(6, 50, 52, 1, '2023-07-31 12:33:31', '2023-07-31 12:36:57'),
(7, 52, 47, 1, '2023-07-31 14:50:25', '2023-08-01 06:30:40'),
(8, 50, 49, 1, '2023-07-31 14:52:06', '2023-07-31 14:52:57'),
(9, 49, 50, 1, '2023-07-31 14:53:22', '2023-07-31 15:23:54'),
(10, 50, 42, 0, '2023-07-31 15:25:29', '2023-07-31 15:25:29'),
(11, 49, 52, 1, '2023-07-31 16:07:38', '2023-07-31 16:08:04'),
(12, 52, 49, 1, '2023-07-31 16:08:31', '2023-07-31 16:09:16'),
(13, 49, 44, 0, '2023-07-31 16:10:19', '2023-07-31 16:10:19'),
(14, 47, 50, 0, '2023-08-01 11:12:06', '2023-08-01 11:12:06'),
(15, 47, 49, 0, '2023-08-01 11:12:16', '2023-08-01 11:12:16'),
(16, 46, 52, 0, '2023-08-01 11:14:11', '2023-08-01 11:14:11'),
(17, 72, 42, 1, '2023-09-13 17:05:56', '2023-09-13 17:05:56'),
(18, 72, 52, 1, '2023-09-19 20:06:48', '2023-09-19 20:06:48'),
(19, 72, 44, 1, '2023-09-19 20:07:53', '2023-09-19 20:07:53'),
(20, 90, 42, 0, '2023-09-19 22:03:35', '2023-09-19 22:03:35'),
(21, 90, 49, 0, '2023-09-19 22:04:32', '2023-09-19 22:04:32'),
(22, 49, 90, 1, '2023-09-19 22:08:11', '2023-09-19 22:09:11'),
(23, 72, 49, 0, '2023-09-20 14:48:11', '2023-09-20 14:48:11'),
(24, 94, 72, 1, '2023-09-20 21:07:31', '2023-09-21 15:01:19'),
(25, 94, 44, 1, '2023-09-21 14:12:51', '2023-09-21 14:12:51'),
(26, 72, 94, 0, '2023-09-21 14:28:25', '2023-09-21 14:28:25'),
(27, 94, 42, 0, '2023-09-21 14:57:58', '2023-09-21 14:57:58'),
(28, 94, 86, 0, '2023-09-21 14:12:51', '2023-09-21 14:12:51'),
(29, 94, 90, 0, '2023-09-22 17:44:47', '2023-09-22 17:44:47'),
(30, 94, 50, 0, '2023-09-22 18:16:28', '2023-09-22 18:16:28'),
(31, 94, 93, 0, '2023-09-22 19:36:02', '2023-09-22 19:36:02'),
(32, 94, 49, 0, '2023-09-22 22:16:44', '2023-09-22 22:16:44'),
(33, 99, 42, 0, '2023-10-13 15:18:00', '2023-10-13 15:18:00'),
(34, 99, 44, 0, '2023-10-13 15:18:04', '2023-10-13 15:18:04'),
(35, 99, 89, 0, '2023-10-13 15:18:08', '2023-10-13 15:18:08'),
(36, 101, 100, 1, '2023-10-14 00:15:34', '2023-10-14 00:18:29'),
(37, 105, 90, 0, '2023-10-25 04:41:19', '2023-10-25 04:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `help_and_supports`
--

CREATE TABLE `help_and_supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `help_and_supports`
--

INSERT INTO `help_and_supports` (`id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 2, 'Test a feild', '2023-06-21 06:54:43', '2023-06-21 06:54:43'),
(2, 2, 'hey Hasee', '2023-06-22 09:26:45', '2023-06-22 09:26:45'),
(3, 2, 'hey Hasee', '2023-06-22 10:27:33', '2023-06-22 10:27:33'),
(4, 4, 'fffgghhjjkk', '2023-06-22 10:34:57', '2023-06-22 10:34:57'),
(5, 2, 'Test a feild', '2023-06-23 10:19:16', '2023-06-23 10:19:16'),
(6, 4, 'fine', '2023-06-23 15:47:29', '2023-06-23 15:47:29'),
(7, 4, 'fine 2', '2023-06-23 15:50:01', '2023-06-23 15:50:01'),
(8, 2, 'Test a feild', '2023-06-26 09:22:54', '2023-06-26 09:22:54'),
(9, 3, 'dfffgygg', '2023-06-26 15:12:44', '2023-06-26 15:12:44'),
(10, 15, 'hello', '2023-06-27 17:01:02', '2023-06-27 17:01:02'),
(11, 8, 'hi', '2023-07-05 23:25:48', '2023-07-05 23:25:48'),
(12, 2, 'Test a feild', '2023-07-14 12:56:38', '2023-07-14 12:56:38'),
(13, 37, 'hi', '2023-07-14 21:57:22', '2023-07-14 21:57:22'),
(14, 45, 'help', '2023-07-27 14:02:18', '2023-07-27 14:02:18'),
(15, 45, 'hi', '2023-07-27 14:02:40', '2023-07-27 14:02:40'),
(16, 46, 'help', '2023-07-27 14:06:14', '2023-07-27 14:06:14'),
(17, 46, 'help', '2023-07-27 14:10:40', '2023-07-27 14:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `user_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(5, 2, 'xuchb3PttnocSw6tDi9dbtc-banner-3.jpg', NULL, '2023-06-26 10:43:39', '2023-06-26 10:43:39'),
(7, 2, 'yfZThVXE0nyzROLoGdXsbtc-banner-3.jpg', NULL, '2023-06-26 10:44:14', '2023-06-26 10:44:14'),
(8, 2, 'wMGeCptoqOyK5v0ccsS2btc-banner-3.jpg', NULL, '2023-06-26 10:45:05', '2023-06-26 10:45:05'),
(9, 2, '4uTZhO7s859q5leB6Avwbtc-banner-3.jpg', NULL, '2023-06-26 10:45:37', '2023-06-26 10:45:37'),
(10, 2, 'P6vEgtrU5yLMImAS40uIbtc-banner-3.jpg', NULL, '2023-06-26 10:46:09', '2023-06-26 10:46:09'),
(11, 2, 'OrZnsdcthrLcOVUCvC6Mbtc-banner-3.jpg', NULL, '2023-06-26 10:47:25', '2023-06-26 10:47:25'),
(12, 2, 'FvcyqQcW30K6EUjbTq2Ubtc-banner-3.jpg', NULL, '2023-06-26 10:48:23', '2023-06-26 10:48:23'),
(13, 2, 'IK5QZC4fA0YGD3p4crovbtc-banner-3.jpg', NULL, '2023-06-26 10:50:20', '2023-06-26 10:50:20'),
(14, 2, '3Eqm17tbOHDI0TrSYHW0btc-banner-3.jpg', NULL, '2023-06-26 10:51:27', '2023-06-26 10:51:27'),
(15, 2, 'cW7zE5wm6VKeT17ctoYGCapture1.PNG', NULL, '2023-06-26 10:51:27', '2023-06-26 10:51:27'),
(16, 2, 'ONPoQjNZ7gJEqoQGF9grdefault.png', NULL, '2023-06-26 10:51:27', '2023-06-26 10:51:27'),
(17, 4, 'afSpqoTkSyiITLZQV1oyimage1', NULL, '2023-06-26 10:59:28', '2023-06-26 10:59:28'),
(18, 4, 'SqsCVzAkdwH9WVi1FgDcimage2', NULL, '2023-06-26 10:59:28', '2023-06-26 10:59:28'),
(25, 46, 'OJ1A3eKQP86X2tMnumOv', NULL, '2023-07-27 07:52:18', '2023-07-27 07:52:18'),
(26, 46, 'y4ECeEFYTzj5fJVRGemf', NULL, '2023-07-27 07:52:18', '2023-07-27 07:52:18'),
(27, 46, 'ieV6YqZwpc7u02Uzk1s3', NULL, '2023-07-27 07:52:18', '2023-07-27 07:52:18'),
(28, 47, 'ERTUO22kF5FQf8NsZxf8', NULL, '2023-07-27 08:12:00', '2023-07-27 08:12:00'),
(29, 47, '7wJY0SpmmPQgURK39dae', NULL, '2023-07-27 08:12:00', '2023-07-27 08:12:00'),
(35, 46, 'IVoB0WfwdwQDWPNnyssB', NULL, '2023-07-27 13:12:53', '2023-07-27 13:12:53'),
(36, 55, 'CnPjF2RAD5x7sLN3B7OS', NULL, '2023-07-27 15:02:50', '2023-07-27 15:02:50'),
(37, 55, 'xfcKO2QWrVpo5UbQHzET', NULL, '2023-07-27 20:04:37', '2023-07-27 20:04:37'),
(38, 56, 'Jb2fH9KnP0pHifY1zkj5', NULL, '2023-07-31 13:48:34', '2023-07-31 13:48:34'),
(39, 49, 'rPw0yazrg7aL2ECY3Lzg', NULL, '2023-07-31 20:00:31', '2023-07-31 20:00:31'),
(40, 42, 'mpun2SORPyi5JyG0GJaO', NULL, '2023-08-08 21:19:01', '2023-08-08 21:19:01'),
(41, 72, 'POjyRUu5B0ltYDND70FM', NULL, '2023-09-13 19:03:54', '2023-09-13 19:03:54'),
(42, 89, '73gvzhkeS2Lc8xKe4kNQPNG', NULL, '2023-09-18 14:50:27', '2023-09-18 14:50:27'),
(43, 89, '7Rq9HC6PsOUfaWa647LzPNG', NULL, '2023-09-18 14:50:27', '2023-09-18 14:50:27'),
(44, 89, 'kxagorD6rvM1mA4GidOGPNG', NULL, '2023-09-18 14:50:27', '2023-09-18 14:50:27'),
(45, 73, 'i7rSkMcNWeqpF2FXVGDs', NULL, '2023-09-18 14:57:34', '2023-09-18 14:57:34'),
(46, 72, 'v1UswbrpJ3JqiFsuqy48', NULL, '2023-09-18 16:22:13', '2023-09-18 16:22:13'),
(47, 90, 'B1s9sUoQv1av9zorrudz', NULL, '2023-09-19 22:00:42', '2023-09-19 22:00:42'),
(48, 91, 'rJJ876lIgj91mHusiG74', NULL, '2023-09-19 22:18:12', '2023-09-19 22:18:12'),
(49, 49, 'X4k2cV9QD8ZA7vFZvgda', NULL, '2023-09-20 01:23:23', '2023-09-20 01:23:23'),
(50, 95, 'Fno55EUJodTUVN3EH8Qtimage0', NULL, '2023-09-20 20:53:02', '2023-09-20 20:53:02'),
(51, 95, '88X2PFiwXtXKbTAkG1Wwimage0', NULL, '2023-09-21 17:32:45', '2023-09-21 17:32:45'),
(52, 72, 'M0SwVehPhUKaOQhH6xtCimage0', NULL, '2023-09-21 17:40:31', '2023-09-21 17:40:31'),
(53, 94, 'PnCWh5o9V56thtypfDeQimage0', NULL, '2023-09-22 16:50:41', '2023-09-22 16:50:41'),
(54, 94, 'LKAWxBZlW0DAI0n1chNYimage1', NULL, '2023-09-22 16:50:41', '2023-09-22 16:50:41'),
(55, 100, 'uO0Sk10qVnQuH9XVD3erimage0', NULL, '2023-10-14 00:07:22', '2023-10-14 00:07:22'),
(56, 101, 'DSVGieE708innUlF9KL2image0', NULL, '2023-10-14 00:14:48', '2023-10-14 00:14:48'),
(57, 58, 'PlGo5lQCm4xADl26dTiCimage0', NULL, '2023-10-25 06:42:37', '2023-10-25 06:42:37'),
(58, 58, 'gBJaEIFyNrd8PF2bcHwgimage0', NULL, '2023-10-25 06:45:10', '2023-10-25 06:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `intrests`
--

CREATE TABLE `intrests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `intrests`
--

INSERT INTO `intrests` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Movie', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(2, 'Photograph', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(3, 'Design', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(4, 'Reading Book', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(5, 'Singing', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(6, 'Music', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `medical_conditions`
--

CREATE TABLE `medical_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medical_conditions`
--

INSERT INTO `medical_conditions` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HIV', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(2, 'Asthma', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(3, 'Diabetes', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(4, 'Herpes', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(5, 'Human papillomavirus (HPV)', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(6, 'Human immunodeficiency virus (HIV)', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(7, 'Trichomoniasis', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(8, 'Hepatitis B', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(9, 'Hepatitis C', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(10, 'Pubic lice (crabs)', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(11, 'Scabies', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(12, 'Genital warts', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(13, 'Heart Disease', '1', NULL, NULL),
(14, 'Chronic Pain', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(16, 'Nothing to Worry About', '1', '2023-06-15 08:08:10', '2023-06-15 08:08:10');

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
(73, '2014_10_12_000000_create_users_table', 1),
(74, '2014_10_12_100000_create_password_resets_table', 1),
(75, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(76, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(77, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(78, '2016_06_01_000004_create_oauth_clients_table', 1),
(79, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(80, '2019_08_19_000000_create_failed_jobs_table', 1),
(81, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(82, '2022_08_29_194659_create_permission_tables', 1),
(83, '2023_05_09_101320_create_images_table', 1),
(84, '2023_05_10_053424_add_columns_to_users_table', 1),
(85, '2023_05_16_064326_create_notifications_table', 1),
(86, '2023_06_13_064734_create_intrests_table', 1),
(87, '2023_06_13_064915_create_user_intrests_table', 1),
(88, '2023_06_13_065105_create_medical_conditions_table', 1),
(89, '2023_06_13_065124_create_user_medical_conditions_table', 1),
(90, '2023_06_13_070123_create_account_fors_table', 1),
(91, '2023_06_15_073727_create_hearts_table', 1),
(92, '2023_06_21_064640_create_help_and_supports_table', 2),
(93, '2023_06_26_102158_create_recommendations_table', 3),
(94, '2023_07_06_081720_add_new_fields_to_users_table', 4),
(96, '2023_10_26_115156_add_medical_health_to_users_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 23),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 25),
(2, 'App\\Models\\User', 26),
(2, 'App\\Models\\User', 27),
(2, 'App\\Models\\User', 28),
(2, 'App\\Models\\User', 29),
(2, 'App\\Models\\User', 30),
(2, 'App\\Models\\User', 31),
(2, 'App\\Models\\User', 32),
(2, 'App\\Models\\User', 33),
(2, 'App\\Models\\User', 34),
(2, 'App\\Models\\User', 35),
(2, 'App\\Models\\User', 36),
(2, 'App\\Models\\User', 37),
(2, 'App\\Models\\User', 38),
(2, 'App\\Models\\User', 39),
(2, 'App\\Models\\User', 40),
(2, 'App\\Models\\User', 41),
(2, 'App\\Models\\User', 42),
(2, 'App\\Models\\User', 43),
(2, 'App\\Models\\User', 44),
(2, 'App\\Models\\User', 45),
(2, 'App\\Models\\User', 46),
(2, 'App\\Models\\User', 47),
(2, 'App\\Models\\User', 48),
(2, 'App\\Models\\User', 49),
(2, 'App\\Models\\User', 50),
(2, 'App\\Models\\User', 51),
(2, 'App\\Models\\User', 52),
(2, 'App\\Models\\User', 53),
(2, 'App\\Models\\User', 54),
(2, 'App\\Models\\User', 55),
(2, 'App\\Models\\User', 56),
(2, 'App\\Models\\User', 57),
(2, 'App\\Models\\User', 58),
(2, 'App\\Models\\User', 59),
(2, 'App\\Models\\User', 60),
(2, 'App\\Models\\User', 63),
(2, 'App\\Models\\User', 64),
(2, 'App\\Models\\User', 65),
(2, 'App\\Models\\User', 66),
(2, 'App\\Models\\User', 67),
(2, 'App\\Models\\User', 68),
(2, 'App\\Models\\User', 69),
(2, 'App\\Models\\User', 70),
(2, 'App\\Models\\User', 71),
(2, 'App\\Models\\User', 72),
(2, 'App\\Models\\User', 73),
(2, 'App\\Models\\User', 74),
(2, 'App\\Models\\User', 75),
(2, 'App\\Models\\User', 76),
(2, 'App\\Models\\User', 77),
(2, 'App\\Models\\User', 78),
(2, 'App\\Models\\User', 79),
(2, 'App\\Models\\User', 80),
(2, 'App\\Models\\User', 81),
(2, 'App\\Models\\User', 82),
(2, 'App\\Models\\User', 83),
(2, 'App\\Models\\User', 84),
(2, 'App\\Models\\User', 85),
(2, 'App\\Models\\User', 86),
(2, 'App\\Models\\User', 87),
(2, 'App\\Models\\User', 88),
(2, 'App\\Models\\User', 89),
(2, 'App\\Models\\User', 90),
(2, 'App\\Models\\User', 91),
(2, 'App\\Models\\User', 92),
(2, 'App\\Models\\User', 93),
(2, 'App\\Models\\User', 94),
(2, 'App\\Models\\User', 95),
(2, 'App\\Models\\User', 96),
(2, 'App\\Models\\User', 97),
(2, 'App\\Models\\User', 98),
(2, 'App\\Models\\User', 99),
(2, 'App\\Models\\User', 100),
(2, 'App\\Models\\User', 101),
(2, 'App\\Models\\User', 102),
(2, 'App\\Models\\User', 103),
(2, 'App\\Models\\User', 104),
(2, 'App\\Models\\User', 105),
(2, 'App\\Models\\User', 106);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `admin_id` tinyint(4) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `admin_id`, `description`, `type`, `status`, `created_at`, `updated_at`) VALUES
(112, 44, NULL, 'New Profile Request', 'request', '0', '2023-07-24 14:33:36', '2023-07-24 14:33:36'),
(116, 45, NULL, 'New Profile Request', 'request', '0', '2023-07-25 09:22:32', '2023-07-25 09:22:32'),
(117, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-25 09:22:36', '2023-07-25 09:22:36'),
(118, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-25 09:52:09', '2023-07-25 09:52:09'),
(119, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-25 11:22:10', '2023-07-25 11:22:10'),
(120, 47, NULL, 'New Profile Request', 'request', '0', '2023-07-25 12:18:57', '2023-07-25 12:18:57'),
(121, 49, NULL, 'New Profile Request', 'request', '0', '2023-07-25 14:23:32', '2023-07-25 14:23:32'),
(122, 50, NULL, 'New Profile Request', 'request', '0', '2023-07-25 14:28:30', '2023-07-25 14:28:30'),
(123, 51, NULL, 'New Profile Request', 'request', '0', '2023-07-25 14:32:03', '2023-07-25 14:32:03'),
(124, 52, NULL, 'New Profile Request', 'request', '0', '2023-07-25 14:39:57', '2023-07-25 14:39:57'),
(125, 52, NULL, 'New Profile Request', 'request', '0', '2023-07-25 14:43:07', '2023-07-25 14:43:07'),
(126, 49, NULL, 'New Profile Request', 'request', '0', '2023-07-25 17:40:19', '2023-07-25 17:40:19'),
(127, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-26 08:01:23', '2023-07-26 08:01:23'),
(128, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-26 10:09:29', '2023-07-26 10:09:29'),
(129, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-26 10:09:31', '2023-07-26 10:09:31'),
(130, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-26 10:32:57', '2023-07-26 10:32:57'),
(131, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-26 10:44:10', '2023-07-26 10:44:10'),
(132, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-26 10:47:13', '2023-07-26 10:47:13'),
(133, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-26 10:48:00', '2023-07-26 10:48:00'),
(134, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-27 06:41:25', '2023-07-27 06:41:25'),
(135, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-27 06:52:01', '2023-07-27 06:52:01'),
(136, 42, NULL, 'New Profile Request', 'request', '0', '2023-07-27 06:52:35', '2023-07-27 06:52:35'),
(137, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-27 07:09:50', '2023-07-27 07:09:50'),
(138, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-27 07:22:45', '2023-07-27 07:22:45'),
(139, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-27 07:26:12', '2023-07-27 07:26:12'),
(140, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-27 07:38:32', '2023-07-27 07:38:32'),
(141, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-27 07:41:16', '2023-07-27 07:41:16'),
(142, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-27 07:45:57', '2023-07-27 07:45:57'),
(143, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-27 07:48:06', '2023-07-27 07:48:06'),
(144, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-27 07:49:07', '2023-07-27 07:49:07'),
(145, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-27 07:51:46', '2023-07-27 07:51:46'),
(146, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-27 07:52:34', '2023-07-27 07:52:34'),
(147, 42, NULL, 'New Profile Request', 'request', '0', '2023-07-27 07:58:03', '2023-07-27 07:58:03'),
(148, 47, NULL, 'New Profile Request', 'request', '0', '2023-07-27 08:11:34', '2023-07-27 08:11:34'),
(149, 47, NULL, 'New Profile Request', 'request', '0', '2023-07-27 08:12:17', '2023-07-27 08:12:17'),
(150, 47, NULL, 'New Profile Request', 'request', '0', '2023-07-27 08:14:47', '2023-07-27 08:14:47'),
(151, 47, NULL, 'New Profile Request', 'request', '0', '2023-07-27 08:16:30', '2023-07-27 08:16:30'),
(152, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-27 08:19:58', '2023-07-27 08:19:58'),
(153, 42, NULL, 'New Profile Request', 'request', '0', '2023-07-27 08:30:11', '2023-07-27 08:30:11'),
(154, 42, NULL, 'New Profile Request', 'request', '0', '2023-07-27 08:32:34', '2023-07-27 08:32:34'),
(155, 42, NULL, 'New Profile Request', 'request', '0', '2023-07-27 08:43:09', '2023-07-27 08:43:09'),
(156, 42, NULL, '$3 has been credtied in the Account', 'amount', '0', '2023-07-27 10:34:24', '2023-07-27 10:34:24'),
(157, 42, NULL, '$3 has been credtied in the Account', 'amount', '0', '2023-07-27 10:36:26', '2023-07-27 10:36:26'),
(158, 42, NULL, '$3 has been credtied in the Account', 'amount', '0', '2023-07-27 11:07:46', '2023-07-27 11:07:46'),
(159, 46, NULL, '$3 has been credtied in the Account', 'amount', '0', '2023-07-27 12:14:27', '2023-07-27 12:14:27'),
(160, 42, NULL, '$3 has been credtied in the Account', 'amount', '0', '2023-07-27 12:17:33', '2023-07-27 12:17:33'),
(161, 42, NULL, '$3 has been credtied in the Account', 'amount', '0', '2023-07-27 12:17:42', '2023-07-27 12:17:42'),
(162, 42, NULL, '$3 has been credtied in the Account', 'amount', '0', '2023-07-27 12:19:20', '2023-07-27 12:19:20'),
(163, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-27 13:12:21', '2023-07-27 13:12:21'),
(164, 46, NULL, 'New Profile Request', 'request', '0', '2023-07-27 13:36:02', '2023-07-27 13:36:02'),
(165, 47, NULL, 'New Profile Request', 'request', '0', '2023-07-27 13:36:06', '2023-07-27 13:36:06'),
(166, 55, NULL, 'New Profile Request', 'request', '0', '2023-07-27 15:02:31', '2023-07-27 15:02:31'),
(167, 56, NULL, 'New Profile Request', 'request', '0', '2023-07-31 13:47:30', '2023-07-31 13:47:30'),
(168, 49, NULL, 'New Profile Request', 'request', '0', '2023-07-31 19:57:53', '2023-07-31 19:57:53'),
(169, 46, NULL, 'New Profile Request', 'request', '0', '2023-08-01 07:51:18', '2023-08-01 07:51:18'),
(170, 57, NULL, 'New Profile Request', 'request', '0', '2023-08-01 08:01:43', '2023-08-01 08:01:43'),
(171, 46, NULL, 'New Profile Request', 'request', '0', '2023-08-01 09:13:02', '2023-08-01 09:13:02'),
(172, 42, NULL, 'New Profile Request', 'request', '0', '2023-08-03 21:09:18', '2023-08-03 21:09:18'),
(173, 42, NULL, 'New Profile Request', 'request', '0', '2023-08-08 14:28:13', '2023-08-08 14:28:13'),
(174, 42, NULL, 'New Profile Request', 'request', '0', '2023-08-08 14:37:10', '2023-08-08 14:37:10'),
(175, 42, NULL, 'New Profile Request', 'request', '0', '2023-08-08 14:38:54', '2023-08-08 14:38:54'),
(176, 42, NULL, 'New Profile Request', 'request', '0', '2023-08-08 21:18:29', '2023-08-08 21:18:29'),
(177, 58, NULL, 'New Profile Request', 'request', '0', '2023-08-14 23:24:31', '2023-08-14 23:24:31'),
(178, 42, NULL, 'New Profile Request', 'request', '0', '2023-09-01 16:00:18', '2023-09-01 16:00:18'),
(179, 59, NULL, 'New Profile Request', 'request', '0', '2023-09-01 16:00:26', '2023-09-01 16:00:26'),
(180, 60, NULL, 'New Profile Request', 'request', '0', '2023-09-01 16:03:33', '2023-09-01 16:03:33'),
(181, 60, NULL, 'New Profile Request', 'request', '0', '2023-09-01 16:05:37', '2023-09-01 16:05:37'),
(182, 63, NULL, 'New Profile Request', 'request', '0', '2023-09-01 17:06:40', '2023-09-01 17:06:40'),
(183, 65, NULL, 'New Profile Request', 'request', '0', '2023-09-01 17:40:47', '2023-09-01 17:40:47'),
(184, 65, NULL, 'New Profile Request', 'request', '0', '2023-09-01 17:56:05', '2023-09-01 17:56:05'),
(185, 65, NULL, 'New Profile Request', 'request', '0', '2023-09-01 17:56:22', '2023-09-01 17:56:22'),
(186, 65, NULL, 'New Profile Request', 'request', '0', '2023-09-01 18:04:57', '2023-09-01 18:04:57'),
(187, 66, NULL, 'New Profile Request', 'request', '0', '2023-09-01 18:15:16', '2023-09-01 18:15:16'),
(188, 66, NULL, 'New Profile Request', 'request', '0', '2023-09-01 18:18:30', '2023-09-01 18:18:30'),
(189, 66, NULL, 'New Profile Request', 'request', '0', '2023-09-01 18:21:56', '2023-09-01 18:21:56'),
(190, 66, NULL, 'New Profile Request', 'request', '0', '2023-09-01 18:23:41', '2023-09-01 18:23:41'),
(191, 66, NULL, 'New Profile Request', 'request', '0', '2023-09-01 18:24:16', '2023-09-01 18:24:16'),
(192, 66, NULL, 'New Profile Request', 'request', '0', '2023-09-01 18:25:41', '2023-09-01 18:25:41'),
(193, 68, NULL, 'New Profile Request', 'request', '0', '2023-09-01 18:35:23', '2023-09-01 18:35:23'),
(194, 68, NULL, 'New Profile Request', 'request', '0', '2023-09-01 18:35:58', '2023-09-01 18:35:58'),
(195, 69, NULL, 'New Profile Request', 'request', '0', '2023-09-01 18:39:03', '2023-09-01 18:39:03'),
(196, 69, NULL, 'New Profile Request', 'request', '0', '2023-09-01 18:40:50', '2023-09-01 18:40:50'),
(197, 69, NULL, 'New Profile Request', 'request', '0', '2023-09-01 18:41:55', '2023-09-01 18:41:55'),
(198, 70, NULL, 'New Profile Request', 'request', '0', '2023-09-01 18:45:34', '2023-09-01 18:45:34'),
(199, 72, NULL, 'New Profile Request', 'request', '0', '2023-09-13 14:36:36', '2023-09-13 14:36:36'),
(200, 72, NULL, 'New Profile Request', 'request', '0', '2023-09-13 19:02:11', '2023-09-13 19:02:11'),
(201, 73, NULL, 'New Profile Request', 'request', '0', '2023-09-13 19:10:55', '2023-09-13 19:10:55'),
(202, 72, NULL, 'New Profile Request', 'request', '0', '2023-09-18 13:31:44', '2023-09-18 13:31:44'),
(203, 72, NULL, 'New Profile Request', 'request', '0', '2023-09-18 13:47:19', '2023-09-18 13:47:19'),
(204, 42, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:07:33', '2023-09-18 14:07:33'),
(205, 42, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:11:18', '2023-09-18 14:11:18'),
(206, 42, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:12:03', '2023-09-18 14:12:03'),
(207, 42, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:12:04', '2023-09-18 14:12:04'),
(208, 77, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:13:05', '2023-09-18 14:13:05'),
(209, 78, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:19:48', '2023-09-18 14:19:48'),
(210, 80, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:25:24', '2023-09-18 14:25:24'),
(211, 82, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:28:57', '2023-09-18 14:28:57'),
(212, 83, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:30:21', '2023-09-18 14:30:21'),
(213, 84, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:35:20', '2023-09-18 14:35:20'),
(214, 85, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:36:34', '2023-09-18 14:36:34'),
(215, 85, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:36:42', '2023-09-18 14:36:42'),
(216, 86, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:43:15', '2023-09-18 14:43:15'),
(217, 87, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:45:19', '2023-09-18 14:45:19'),
(218, 87, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:45:27', '2023-09-18 14:45:27'),
(219, 88, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:46:50', '2023-09-18 14:46:50'),
(220, 72, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:47:44', '2023-09-18 14:47:44'),
(221, 89, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:49:09', '2023-09-18 14:49:09'),
(222, 73, NULL, 'New Profile Request', 'request', '0', '2023-09-18 14:57:06', '2023-09-18 14:57:06'),
(223, 73, NULL, 'New Profile Request', 'request', '0', '2023-09-18 15:07:29', '2023-09-18 15:07:29'),
(224, 72, NULL, 'New Profile Request', 'request', '0', '2023-09-18 15:09:07', '2023-09-18 15:09:07'),
(225, 72, NULL, 'New Profile Request', 'request', '0', '2023-09-18 15:29:27', '2023-09-18 15:29:27'),
(226, 72, NULL, 'New Profile Request', 'request', '0', '2023-09-18 16:17:31', '2023-09-18 16:17:31'),
(227, 90, NULL, 'New Profile Request', 'request', '0', '2023-09-19 21:59:22', '2023-09-19 21:59:22'),
(228, 90, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-19 21:59:22', '2023-09-19 21:59:22'),
(229, 49, NULL, '$3 has been credtied in the Account', 'amount', '0', '2023-09-19 22:15:52', '2023-09-19 22:15:52'),
(230, 91, NULL, 'New Profile Request', 'request', '0', '2023-09-19 22:18:03', '2023-09-19 22:18:03'),
(231, 91, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-19 22:18:03', '2023-09-19 22:18:03'),
(232, 49, NULL, 'New Profile Request', 'request', '0', '2023-09-20 01:22:28', '2023-09-20 01:22:28'),
(233, 49, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-20 01:22:28', '2023-09-20 01:22:28'),
(234, 95, NULL, 'New Profile Request', 'request', '0', '2023-09-20 20:52:36', '2023-09-20 20:52:36'),
(235, 95, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-20 20:52:36', '2023-09-20 20:52:36'),
(236, 95, NULL, 'New Profile Request', 'request', '0', '2023-09-20 20:56:04', '2023-09-20 20:56:04'),
(237, 95, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-20 20:56:04', '2023-09-20 20:56:04'),
(238, 94, NULL, 'New Profile Request', 'request', '0', '2023-09-21 14:37:52', '2023-09-21 14:37:52'),
(239, 94, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-21 14:37:52', '2023-09-21 14:37:52'),
(240, 94, NULL, 'New Profile Request', 'request', '0', '2023-09-21 14:38:49', '2023-09-21 14:38:49'),
(241, 94, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-21 14:38:49', '2023-09-21 14:38:49'),
(242, 42, NULL, 'New Profile Request', 'request', '0', '2023-09-21 14:39:30', '2023-09-21 14:39:30'),
(243, 42, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-21 14:39:30', '2023-09-21 14:39:30'),
(244, 94, NULL, 'New Profile Request', 'request', '0', '2023-09-21 14:39:38', '2023-09-21 14:39:38'),
(245, 94, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-21 14:39:38', '2023-09-21 14:39:38'),
(246, 94, NULL, 'New Profile Request', 'request', '0', '2023-09-21 14:40:49', '2023-09-21 14:40:49'),
(247, 94, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-21 14:40:49', '2023-09-21 14:40:49'),
(248, 42, NULL, 'New Profile Request', 'request', '0', '2023-09-21 14:42:03', '2023-09-21 14:42:03'),
(249, 42, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-21 14:42:03', '2023-09-21 14:42:03'),
(250, 94, NULL, 'New Profile Request', 'request', '0', '2023-09-21 14:44:30', '2023-09-21 14:44:30'),
(251, 94, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-21 14:44:30', '2023-09-21 14:44:30'),
(252, 94, NULL, 'New Profile Request', 'request', '0', '2023-09-21 14:44:48', '2023-09-21 14:44:48'),
(253, 94, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-21 14:44:48', '2023-09-21 14:44:48'),
(254, 42, NULL, 'New Profile Request', 'request', '0', '2023-09-21 14:45:52', '2023-09-21 14:45:52'),
(255, 42, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-21 14:45:52', '2023-09-21 14:45:52'),
(256, 94, NULL, 'New Profile Request', 'request', '0', '2023-09-21 14:57:01', '2023-09-21 14:57:01'),
(257, 94, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-21 14:57:01', '2023-09-21 14:57:01'),
(258, 95, NULL, 'New Profile Request', 'request', '0', '2023-09-21 17:32:32', '2023-09-21 17:32:32'),
(259, 95, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-21 17:32:32', '2023-09-21 17:32:32'),
(260, 72, NULL, 'New Profile Request', 'request', '0', '2023-09-21 17:37:15', '2023-09-21 17:37:15'),
(261, 72, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-21 17:37:15', '2023-09-21 17:37:15'),
(262, 95, NULL, 'New Profile Request', 'request', '0', '2023-09-21 20:11:36', '2023-09-21 20:11:36'),
(263, 95, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-21 20:11:36', '2023-09-21 20:11:36'),
(264, 72, NULL, 'New Profile Request', 'request', '0', '2023-09-21 20:27:11', '2023-09-21 20:27:11'),
(265, 72, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-21 20:27:11', '2023-09-21 20:27:11'),
(266, 94, NULL, 'New Profile Request', 'request', '0', '2023-09-22 16:49:41', '2023-09-22 16:49:41'),
(267, 94, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-22 16:49:41', '2023-09-22 16:49:41'),
(268, 94, NULL, 'New Profile Request', 'request', '0', '2023-09-22 16:51:40', '2023-09-22 16:51:40'),
(269, 94, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-22 16:51:40', '2023-09-22 16:51:40'),
(270, 70, NULL, 'New Profile Request', 'request', '0', '2023-09-22 16:59:06', '2023-09-22 16:59:06'),
(271, 70, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-22 16:59:06', '2023-09-22 16:59:06'),
(272, 94, NULL, 'New Profile Request', 'request', '0', '2023-09-22 17:00:41', '2023-09-22 17:00:41'),
(273, 94, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-22 17:00:41', '2023-09-22 17:00:41'),
(274, 72, NULL, 'New Profile Request', 'request', '0', '2023-09-22 23:01:44', '2023-09-22 23:01:44'),
(275, 72, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-22 23:01:44', '2023-09-22 23:01:44'),
(276, 94, NULL, 'New Profile Request', 'request', '0', '2023-09-26 19:50:45', '2023-09-26 19:50:45'),
(277, 94, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-09-26 19:50:45', '2023-09-26 19:50:45'),
(278, 72, NULL, 'New Profile Request', 'request', '0', '2023-10-09 15:23:01', '2023-10-09 15:23:01'),
(279, 72, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-09 15:23:01', '2023-10-09 15:23:01'),
(280, 72, NULL, 'New Profile Request', 'request', '0', '2023-10-09 15:24:29', '2023-10-09 15:24:29'),
(281, 72, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-09 15:24:29', '2023-10-09 15:24:29'),
(282, 72, NULL, 'New Profile Request', 'request', '0', '2023-10-09 15:59:45', '2023-10-09 15:59:45'),
(283, 72, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-09 15:59:45', '2023-10-09 15:59:45'),
(284, 72, NULL, 'New Profile Request', 'request', '0', '2023-10-09 16:19:44', '2023-10-09 16:19:44'),
(285, 72, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-09 16:19:44', '2023-10-09 16:19:44'),
(286, 72, NULL, 'New Profile Request', 'request', '0', '2023-10-09 18:40:01', '2023-10-09 18:40:01'),
(287, 72, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-09 18:40:01', '2023-10-09 18:40:01'),
(288, 72, NULL, 'New Profile Request', 'request', '0', '2023-10-09 18:47:47', '2023-10-09 18:47:47'),
(289, 72, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-09 18:47:47', '2023-10-09 18:47:47'),
(290, 72, NULL, 'New Profile Request', 'request', '0', '2023-10-10 13:32:10', '2023-10-10 13:32:10'),
(291, 72, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-10 13:32:10', '2023-10-10 13:32:10'),
(292, 72, NULL, 'New Profile Request', 'request', '0', '2023-10-10 13:32:17', '2023-10-10 13:32:17'),
(293, 72, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-10 13:32:17', '2023-10-10 13:32:17'),
(294, 72, NULL, 'New Profile Request', 'request', '0', '2023-10-10 13:34:28', '2023-10-10 13:34:28'),
(295, 72, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-10 13:34:28', '2023-10-10 13:34:28'),
(296, 72, NULL, 'New Profile Request', 'request', '0', '2023-10-10 13:35:27', '2023-10-10 13:35:27'),
(297, 72, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-10 13:35:27', '2023-10-10 13:35:27'),
(298, 72, NULL, 'New Profile Request', 'request', '0', '2023-10-10 13:36:17', '2023-10-10 13:36:17'),
(299, 72, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-10 13:36:17', '2023-10-10 13:36:17'),
(300, 72, NULL, 'New Profile Request', 'request', '0', '2023-10-10 13:37:11', '2023-10-10 13:37:11'),
(301, 72, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-10 13:37:11', '2023-10-10 13:37:11'),
(302, 100, NULL, 'New Profile Request', 'request', '0', '2023-10-14 00:06:59', '2023-10-14 00:06:59'),
(303, 100, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-14 00:06:59', '2023-10-14 00:06:59'),
(304, 101, NULL, 'New Profile Request', 'request', '0', '2023-10-14 00:14:05', '2023-10-14 00:14:05'),
(305, 101, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-14 00:14:05', '2023-10-14 00:14:05'),
(306, 58, NULL, 'New Profile Request', 'request', '0', '2023-10-25 06:41:21', '2023-10-25 06:41:21'),
(307, 58, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-25 06:41:21', '2023-10-25 06:41:21'),
(308, 73, NULL, 'New Profile Request', 'request', '0', '2023-10-25 16:12:52', '2023-10-25 16:12:52'),
(309, 73, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-25 16:12:52', '2023-10-25 16:12:52'),
(310, 73, NULL, 'New Profile Request', 'request', '0', '2023-10-25 23:16:45', '2023-10-25 23:16:45'),
(311, 73, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-25 23:16:45', '2023-10-25 23:16:45'),
(312, 73, NULL, 'New Profile Request', 'request', '0', '2023-10-25 23:18:15', '2023-10-25 23:18:15'),
(313, 73, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-25 23:18:15', '2023-10-25 23:18:15'),
(314, 73, NULL, 'New Profile Request', 'request', '0', '2023-10-25 23:19:41', '2023-10-25 23:19:41'),
(315, 73, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-25 23:19:41', '2023-10-25 23:19:41'),
(316, 73, NULL, 'New Profile Request', 'request', '0', '2023-10-25 23:22:53', '2023-10-25 23:22:53'),
(317, 73, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-25 23:22:53', '2023-10-25 23:22:53'),
(318, 73, NULL, 'New Profile Request', 'request', '0', '2023-10-25 23:23:56', '2023-10-25 23:23:56'),
(319, 73, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-25 23:23:56', '2023-10-25 23:23:56'),
(320, 73, NULL, 'New Profile Request', 'request', '0', '2023-10-25 23:25:12', '2023-10-25 23:25:12'),
(321, 73, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-25 23:25:12', '2023-10-25 23:25:12'),
(322, 73, NULL, 'New Profile Request', 'request', '0', '2023-10-25 23:29:24', '2023-10-25 23:29:24'),
(323, 73, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-25 23:29:24', '2023-10-25 23:29:24'),
(324, 73, NULL, 'New Profile Request', 'request', '0', '2023-10-25 23:30:28', '2023-10-25 23:30:28'),
(325, 73, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-25 23:30:28', '2023-10-25 23:30:28'),
(326, 73, NULL, 'New Profile Request', 'request', '0', '2023-10-26 22:31:04', '2023-10-26 22:31:04'),
(327, 73, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-26 22:31:04', '2023-10-26 22:31:04'),
(328, 73, NULL, 'New Profile Request', 'request', '0', '2023-10-26 22:32:54', '2023-10-26 22:32:54'),
(329, 73, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-26 22:32:54', '2023-10-26 22:32:54'),
(330, 73, NULL, 'New Profile Request', 'request', '0', '2023-10-26 22:34:52', '2023-10-26 22:34:52'),
(331, 73, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-26 22:34:52', '2023-10-26 22:34:52'),
(332, 73, NULL, 'New Profile Request', 'request', '0', '2023-10-26 22:35:59', '2023-10-26 22:35:59'),
(333, 73, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-26 22:35:59', '2023-10-26 22:35:59'),
(334, 73, NULL, 'New Profile Request', 'request', '0', '2023-10-26 22:36:51', '2023-10-26 22:36:51'),
(335, 73, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-26 22:36:51', '2023-10-26 22:36:51'),
(336, 73, NULL, 'New Profile Request', 'request', '0', '2023-10-26 22:37:42', '2023-10-26 22:37:42'),
(337, 73, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-26 22:37:42', '2023-10-26 22:37:42'),
(338, 73, NULL, 'New Profile Request', 'request', '0', '2023-10-26 22:38:20', '2023-10-26 22:38:20'),
(339, 73, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-26 22:38:20', '2023-10-26 22:38:20'),
(340, 73, NULL, 'New Profile Request', 'request', '0', '2023-10-27 20:21:59', '2023-10-27 20:21:59'),
(341, 73, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-27 20:21:59', '2023-10-27 20:21:59'),
(342, 73, NULL, 'New Profile Request', 'request', '0', '2023-10-27 21:44:09', '2023-10-27 21:44:09'),
(343, 73, NULL, 'Edit a Profile Successfully', 'notification', '0', '2023-10-27 21:44:09', '2023-10-27 21:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00504d6acb9839e0243c69b51becc6c9b0f956ab00ad278b39000a87a091aa8b399180cb9c2db031', 2, 1, 'love-love', '[]', 0, '2023-06-23 11:35:52', '2023-06-23 11:35:52', '2024-06-23 11:35:52'),
('0079c0942484f8929e9c87a16c901dd80aed80b418e60c866544c5fd11d0ce48c66927336c57f91b', 73, 1, 'love-love', '[]', 0, '2023-10-26 16:34:13', '2023-10-26 16:34:13', '2024-10-26 09:34:13'),
('00828fd7cb295be59f13f1b93249ab90ad6eec5cf680667a32033fe00cc785370714b266d8c2a0a7', 69, 1, 'love-love', '[]', 0, '2023-10-25 19:34:00', '2023-10-25 19:34:00', '2024-10-25 12:34:00'),
('008a572ac54470415135f69287b2780f5aebf17766cd6d8b5a3801163652a9fe3bb9e4cbb4e5b44b', 44, 1, 'love-love', '[]', 0, '2023-07-24 14:25:24', '2023-07-24 14:25:24', '2024-07-24 14:25:24'),
('00a0101035b5a968c44ffdce668039fb289fa9475160766122c765ec81643f5f22ce1a354fe8046c', 8, 1, 'love-love', '[]', 0, '2023-07-03 18:19:56', '2023-07-03 18:19:56', '2024-07-03 18:19:56'),
('00b1bbc809df7aa45428b75a0f1cf8e075e220d22e2661cc3badd1d800e75a567221db0674799277', 46, 1, 'love-love', '[]', 0, '2023-07-26 07:43:45', '2023-07-26 07:43:45', '2024-07-26 07:43:45'),
('00b810dc6ddbfa411250f2159f637739146691b17ef66a30313aed9659f6694fa3a68aa746a1028c', 90, 1, 'love-love', '[]', 0, '2023-09-19 21:57:34', '2023-09-19 21:57:34', '2024-09-19 14:57:34'),
('00e3c1c18a925090f3131d10908488e03240043f2ad27270902c7ed135823222c14bb651c696439b', 101, 1, 'love-love', '[]', 0, '2023-10-14 00:12:21', '2023-10-14 00:12:21', '2024-10-13 17:12:21'),
('00f95709dffc413e21be2b14ff8c0d8fba2a4b53a4cc8e8754f0207f0b0873ee64a87928459fdbf9', 1, 1, 'love-love', '[]', 0, '2023-06-26 20:50:05', '2023-06-26 20:50:05', '2024-06-26 20:50:05'),
('032d20f0777c6d2927897c0cecf3ec4bf4b47e391fa2007d9b33a9b00bdab13bd4b339dd3619db93', 93, 1, 'love-love', '[]', 0, '2023-09-20 19:08:20', '2023-09-20 19:08:20', '2024-09-20 12:08:20'),
('03597c2afa417d670801f9514f87f3badb0d9bba5316a9b1be92d692ba7aa9a075b098cb55afcc7e', 4, 1, 'love-love', '[]', 0, '2023-06-27 09:46:00', '2023-06-27 09:46:00', '2024-06-27 09:46:00'),
('035c5c1495567bcf31e0d0fc20d06f15c138089f396b4f98de57ef58821a1f45bffbf4a4091a1d14', 4, 1, 'love-love', '[]', 0, '2023-06-21 08:00:22', '2023-06-21 08:00:22', '2024-06-21 08:00:22'),
('045c4079ac26d0d6dcf85f7f5967171a81327c9b8be121addd9325101041cc9b7ea379ded9316236', 4, 1, 'love-love', '[]', 0, '2023-06-27 12:20:25', '2023-06-27 12:20:26', '2024-06-27 12:20:25'),
('046ccae46505405b543a2fdaf8284ea8db35d9175c163a9607dd1a6e17beac06bc7437d1eaf6de19', 4, 1, 'love-love', '[]', 0, '2023-06-20 13:45:20', '2023-06-20 13:45:20', '2024-06-20 13:45:20'),
('049bba5ea25ebb18d01fa8f4c6dd4151d0eb8b7cf61ac79d8310fc11457a40b819439d52ed6b7fe6', 37, 1, 'love-love', '[]', 0, '2023-07-14 21:45:58', '2023-07-14 21:45:58', '2024-07-14 21:45:58'),
('04af2f5b462e07f48f67305ea918b6cd5a0d246ac895c8b7700cba8d9b374a7419c3d1e61a7b50af', 4, 1, 'love-love', '[]', 0, '2023-06-27 11:53:30', '2023-06-27 11:53:30', '2024-06-27 11:53:30'),
('06070265b0f0f6b4e432f19b0e60705ad78ba3357b55c00ba67439bedfb40600feb5c927686c4d8a', 52, 1, 'love-love', '[]', 0, '2023-07-25 14:38:52', '2023-07-25 14:38:52', '2024-07-25 14:38:52'),
('064e1461e068d0d2cc419d2e4f9355784b3df0cdf3e4c81040cc4df2cb091d186c69573d8f32b6db', 42, 1, 'love-love', '[]', 0, '2023-07-26 12:04:10', '2023-07-26 12:04:10', '2024-07-26 12:04:10'),
('069768c6435d58355e59dc11e4afa719ce4ad80e235e481e45e468d6d03150d102728c37e32d3924', 85, 1, 'love-love', '[]', 0, '2023-09-18 14:36:20', '2023-09-18 14:36:20', '2024-09-18 07:36:20'),
('06d0139b0d8a868a55986368522a0c35d6ffea8b9e5340a6d19d864719fbbe2f3989d14786673402', 42, 1, 'love-love', '[]', 0, '2023-08-08 14:27:47', '2023-08-08 14:27:47', '2024-08-08 07:27:47'),
('06d9515adb6ab051764ad42f753fca6f60560d003b3e0d7316604a6272fa9208b88d88a8c797cbd0', 95, 1, 'love-love', '[]', 0, '2023-09-20 19:29:08', '2023-09-20 19:29:08', '2024-09-20 12:29:08'),
('0717f56b2781fde9ee6e44ca397a617c1c42033c8ec29ff6c31557d4e897644e87fdc450ca8b5312', 2, 1, 'love-love', '[]', 0, '2023-06-23 11:00:51', '2023-06-23 11:00:51', '2024-06-23 11:00:51'),
('08242abe3a47fd823d4d56c4f0aea99ddc17fc43753661947a176c410a57c141880e995c40da6b53', 52, 1, 'love-love', '[]', 0, '2023-07-31 14:48:04', '2023-07-31 14:48:04', '2024-07-31 14:48:04'),
('08859a3411ffeec61455a2100328768bb60d2ec941c85a8ddc36de45120d3f4465801edcafc64f48', 12, 1, 'love-love', '[]', 0, '2023-06-26 12:28:12', '2023-06-26 12:28:12', '2024-06-26 12:28:12'),
('08991dffa432e347f11f0d4de60f255aba119d1241ce7b222487904a5857f62ac146916af2d338fe', 8, 1, 'love-love', '[]', 0, '2023-07-05 23:00:29', '2023-07-05 23:00:29', '2024-07-05 23:00:29'),
('08b48c165e383c5b0bf8e5921039b3dca6422bf741fe087acd1ca1bf185c62cf83fb3a07e4831b6f', 4, 1, 'love-love', '[]', 0, '2023-07-03 10:44:07', '2023-07-03 10:44:07', '2024-07-03 10:44:07'),
('08e8f219142cd8693ac161050d56070fed7b2561a0e9b4b909ad1699125844ca93c1bbae1ece0f24', 73, 1, 'love-love', '[]', 0, '2023-10-26 22:40:11', '2023-10-26 22:40:11', '2024-10-26 15:40:11'),
('098415d70c0196f7fd76c519cb8ac20a92c289689f669980557dab59a3f9eaee54423418674e7e92', 15, 1, 'love-love', '[]', 0, '2023-07-05 22:24:37', '2023-07-05 22:24:37', '2024-07-05 22:24:37'),
('09e4bd57f7b723c507f1148d66d0b0cdea118be213a06d8e1b7febab9bb4e809cb3b8b7a93dbdee3', 73, 1, 'love-love', '[]', 0, '2023-10-27 22:21:57', '2023-10-27 22:21:57', '2024-10-27 15:21:57'),
('0a4031125f7d74eac2fba9b90c6f5285aa457c53789925fece2d41cafc726ece2f209d8d7b98dec2', 8, 1, 'love-love', '[]', 0, '2023-07-05 13:37:26', '2023-07-05 13:37:26', '2024-07-05 13:37:26'),
('0aeece5b137b111b0bc9acbfed6337d099bc03d49e579e820123f707f4dbf92e0bb6f8303e83f2ee', 50, 1, 'love-love', '[]', 0, '2023-07-31 15:23:43', '2023-07-31 15:23:43', '2024-07-31 15:23:43'),
('0b0a04949c7b6e095e31da04e582d6b048de6b65217c3d700e192960d13df6cb70be88aa6c101d6c', 21, 1, 'love-love', '[]', 0, '2023-07-05 18:14:01', '2023-07-05 18:14:01', '2024-07-05 18:14:01'),
('0b15ff7ff482c42b8f7cdcd3d1121fe18d970a35386d530d91c94f10a536c7e59b2c4e56bb4fdb5e', 72, 1, 'love-love', '[]', 0, '2023-10-09 18:47:22', '2023-10-09 18:47:22', '2024-10-09 11:47:22'),
('0bfef59e12c9fb0ed6be61539db4032c60aaf82dae7c0c95a79f906655720b9501879fdc82856a10', 2, 1, 'love-love', '[]', 0, '2023-06-15 09:01:09', '2023-06-15 09:01:09', '2024-06-15 09:01:09'),
('0c6305e36359baf22892d6b329a50d6c6255f17ce2900891d7175b9f31d6ce8a8f77bbad74511690', 3, 1, 'love-love', '[]', 0, '2023-07-20 15:16:30', '2023-07-20 15:16:30', '2024-07-20 15:16:30'),
('0c9776b8df236a3a1eb1dc08def8b749d875f17a2f5e3e4857bfc91da04ffa1a0b38ca96bd41ccb6', 42, 1, 'love-love', '[]', 0, '2023-07-24 14:05:09', '2023-07-24 14:05:09', '2024-07-24 14:05:09'),
('0cae496a871c56c3efeb6e61c99f33e0eed30fc5126f39da436dddef1b2ae91ee7540ddea2683ada', 1, 1, 'love-love', '[]', 0, '2023-06-26 16:28:50', '2023-06-26 16:28:50', '2024-06-26 16:28:50'),
('0ccfded61e91411f0a621d8d80df55b351540065983569b64cc5a34d5cb901494ea7b6bd6561d7b5', 46, 1, 'love-love', '[]', 0, '2023-07-27 07:09:13', '2023-07-27 07:09:13', '2024-07-27 07:09:13'),
('0cdb8f9a4924f6b590c1e49e7bbd4463bdbb068031f12180ca80074f2e4cebaf781fb85869880a98', 8, 1, 'love-love', '[]', 0, '2023-07-14 16:43:52', '2023-07-14 16:43:52', '2024-07-14 16:43:52'),
('0d482b5a977ac8f742e043acb9fbee1ff7c515dd0403127f402a4424b565531896826212fa85d5d1', 4, 1, 'love-love', '[]', 0, '2023-06-27 09:32:33', '2023-06-27 09:32:33', '2024-06-27 09:32:33'),
('0d99a1da35e60de3cdb751627d3ad526aa3c1d2646a5a294d5d4dd8b33b7577d1982b42a3b91f955', 95, 1, 'love-love', '[]', 0, '2023-09-22 18:13:42', '2023-09-22 18:13:42', '2024-09-22 11:13:42'),
('0d9b3bc05921874fd5295f3af3b1ae7b31a3363e7ae71757e08a74851030ac768034b30ed9a5ac4d', 47, 1, 'love-love', '[]', 0, '2023-07-25 09:58:56', '2023-07-25 09:58:56', '2024-07-25 09:58:56'),
('0dcc9850844d5dff5aaf428db412a8162c6805e317d639e5eabfdfca30c3d586e6a0b11d6b17d358', 78, 1, 'love-love', '[]', 0, '2023-09-18 14:19:12', '2023-09-18 14:19:12', '2024-09-18 07:19:12'),
('0dcefd7f7f516843dbdf5bba829aac4259bab4f7e87edb7e5faf0d1f736c9fe13ea34f3c7ce8d1f4', 8, 1, 'love-love', '[]', 0, '2023-07-05 13:31:21', '2023-07-05 13:31:21', '2024-07-05 13:31:21'),
('0de4736d1766594f3deb822dfaae89052194afdb20d4ed59cfe619b6f466b2e05155c08f9f0d5106', 4, 1, 'love-love', '[]', 0, '2023-07-20 13:13:20', '2023-07-20 13:13:20', '2024-07-20 13:13:20'),
('0df47c442247fe5f0435abece705feb277317e7aa909993e1d80fd08c58e8cea76a7975b8a291880', 42, 1, 'love-love', '[]', 0, '2023-07-24 14:49:48', '2023-07-24 14:49:48', '2024-07-24 14:49:48'),
('0e0950adeb069b19135d0de019ad1f03ae2102862f7e37ec85a118c94a65b766afb40b7f5d8c69b8', 72, 1, 'love-love', '[]', 0, '2023-09-20 21:07:48', '2023-09-20 21:07:48', '2024-09-20 14:07:48'),
('0e9079d24f52cc144bed6cb91e938f30b24ff820f8f92d7cfba7a18ff881fd400f2ada3bae624082', 46, 1, 'love-love', '[]', 0, '2023-07-27 07:43:08', '2023-07-27 07:43:08', '2024-07-27 07:43:08'),
('0ebf2bd1fc7e6b77cfd64b9f853e1b443ea8f75433aedbd49eca661abd21fe6b5ddeb821d6247f7c', 49, 1, 'love-love', '[]', 0, '2023-07-31 19:39:12', '2023-07-31 19:39:12', '2024-07-31 19:39:12'),
('0ed99b7558ecc502102d5e633435afd0cb0eecb0ed48147ed3e1a06e93bde9f0e730f22e4a42db3e', 46, 1, 'love-love', '[]', 0, '2023-07-26 13:03:19', '2023-07-26 13:03:19', '2024-07-26 13:03:19'),
('0fb93e29aa6a59375a73edac395b1201c8c5ba24223389afc6cc84673f5340110a79129979a5ae1f', 49, 1, 'love-love', '[]', 0, '2023-09-19 22:04:58', '2023-09-19 22:04:58', '2024-09-19 15:04:58'),
('0fe60e75fcf5f3d43eaba69402689992d200136291ff8fc060ab47acf866f1c0a41050e727e1dc6b', 69, 1, 'love-love', '[]', 0, '2023-10-27 21:11:52', '2023-10-27 21:11:52', '2024-10-27 14:11:52'),
('1045d32456132b55e2bb8ae314dc59d425af37f942ad4393f38024614764199acc070e29ae69d553', 4, 1, 'love-love', '[]', 0, '2023-06-15 13:42:21', '2023-06-15 13:42:21', '2024-06-15 13:42:21'),
('119c95ac0f5ee6ab7dba3a5fbc398b5b3120aaf0fa4baadba101aa8faa32c61a195c897eaae2146c', 52, 1, 'love-love', '[]', 0, '2023-07-31 16:54:55', '2023-07-31 16:54:55', '2024-07-31 16:54:55'),
('11fc492d5fc09da2d1cba4e06bf53e54cd1cd99072dfa64ac12811c49da3cc6d078520182e00b538', 90, 1, 'love-love', '[]', 0, '2023-09-19 22:07:34', '2023-09-19 22:07:34', '2024-09-19 15:07:34'),
('12a1af07255d80631be21db8bd65847399f3fd6ff1179f6670c4529b167b27c6f45a587cc96bfab5', 95, 1, 'love-love', '[]', 0, '2023-09-22 15:40:41', '2023-09-22 15:40:41', '2024-09-22 08:40:41'),
('133a634941138a220eaf7699c72a0816d0e415d7c0ad68172b22967772d6330505c674a53ef80374', 4, 1, 'love-love', '[]', 0, '2023-06-22 14:36:35', '2023-06-22 14:36:35', '2024-06-22 14:36:35'),
('13b342beb159bd5af494795bfac3cec38a912593b72b2a8e18798bf76e09031a09955782e9390ed4', 73, 1, 'love-love', '[]', 0, '2023-10-26 22:46:09', '2023-10-26 22:46:09', '2024-10-26 15:46:09'),
('13c153bb1d7877e63d6594e31a2c8e3518d96cff5740dc0c85c025ff58521c3eb30498ad69d3c108', 73, 1, 'love-love', '[]', 0, '2023-10-26 15:36:41', '2023-10-26 15:36:41', '2024-10-26 08:36:41'),
('14d6e581d6b8f8ccde9e1de49c69fa92df42d1adb72d275bd00294627e0b6a9d390025ed3febdb99', 5, 1, 'love-love', '[]', 0, '2023-07-13 11:31:32', '2023-07-13 11:31:32', '2024-07-13 11:31:32'),
('152a4a8dcf92223be3299e76b71db0d24d123e9735efd292892db674cee90296d3e1938c330ed5e9', 73, 1, 'love-love', '[]', 0, '2023-10-26 20:33:27', '2023-10-26 20:33:27', '2024-10-26 13:33:27'),
('1538d7b7982c0c92eb4db55adebd237d1a51733953a74d1afc532d9d81433b9d385717c961e6eb62', 90, 1, 'love-love', '[]', 0, '2023-09-20 21:03:36', '2023-09-20 21:03:36', '2024-09-20 14:03:36'),
('15a43cfe21c2c50d728f8d700ebb0845538fc09cd04ca95e7ed4d2e8e9befec094bf8b33c6bb4fc5', 2, 1, 'love-love', '[]', 0, '2023-06-26 08:29:06', '2023-06-26 08:29:06', '2024-06-26 08:29:06'),
('162f05b97faf69ceac8f8dcd4fe4f748607d28dd5ddd8060b36922eec4f67cab429ba7b34507d419', 46, 1, 'love-love', '[]', 0, '2023-07-27 14:42:38', '2023-07-27 14:42:38', '2024-07-27 14:42:38'),
('170582825fcc213f117f32db1a68e03b24af40e7383f12a23389aac22230f0440448d7e5384b3393', 95, 1, 'love-love', '[]', 0, '2023-09-22 20:54:55', '2023-09-22 20:54:55', '2024-09-22 13:54:55'),
('1717bf11c580b789f311af9e4b84e8265935ad171258623e1de6f2011fbb07130444d859d6214fd7', 46, 1, 'love-love', '[]', 0, '2023-07-27 13:52:09', '2023-07-27 13:52:09', '2024-07-27 13:52:09'),
('17387ef616a86b648337bda796c9420b6e377c893b17cc219ac4b798ef66a46aaceeeb235096bec4', 42, 1, 'love-love', '[]', 0, '2023-08-09 12:35:49', '2023-08-09 12:35:49', '2024-08-09 05:35:49'),
('175d24925c8c58d6507eb4b6f368b0f9e32f99eee10a600fbe0810242e8e3ea062fcb7d94eb2210a', 25, 1, 'love-love', '[]', 0, '2023-07-05 13:40:42', '2023-07-05 13:40:42', '2024-07-05 13:40:42'),
('176067bf0971be79b43ca1fdc63a34dfcf176775bb0637743aa4d4cfca3419d8270506c4bf53ef0c', 8, 1, 'love-love', '[]', 0, '2023-07-19 19:44:31', '2023-07-19 19:44:31', '2024-07-19 19:44:31'),
('17932db14739a20953c31ac6f0610914947a3fefb8312883cdb9525b38ffd3f93d80cc5b8564e630', 51, 1, 'love-love', '[]', 0, '2023-07-25 14:30:21', '2023-07-25 14:30:21', '2024-07-25 14:30:21'),
('179a92c1bdd9f6f6868c6af434a8174cca4e163b659f70be8fd1b0276aeb2c83d99245353eee2ad9', 4, 1, 'love-love', '[]', 0, '2023-07-05 14:37:09', '2023-07-05 14:37:09', '2024-07-05 14:37:09'),
('17cccc38909f21efc7d45545d87d5f367e5d19921339d688ab3a086e4294b30bd5f995dc17f41d8b', 46, 1, 'love-love', '[]', 0, '2023-08-02 13:57:36', '2023-08-02 13:57:36', '2024-08-02 06:57:36'),
('17df446ff92c0515360fe5b953033e005355b13bc6627c0ba117f2002d8581eadc8c9234512ba078', 15, 1, 'love-love', '[]', 0, '2023-06-26 20:24:38', '2023-06-26 20:24:38', '2024-06-26 20:24:38'),
('180c8d68db8660bfdeed97bf22cfb256bd1c3bc197a1a8b6e0f96f7e40a53b6a637604618adde3ae', 94, 1, 'love-love', '[]', 0, '2023-09-20 19:47:43', '2023-09-20 19:47:43', '2024-09-20 12:47:43'),
('180f3e15490b28135ac9bdc7437c731352e207ab2e913e35006863e91b87dd23e887ea4013674573', 72, 1, 'love-love', '[]', 0, '2023-09-21 14:17:28', '2023-09-21 14:17:28', '2024-09-21 07:17:28'),
('18191acbe64852c4f538dff77ccacf428bb8f1ffc98c0e56cc1d87bd9a329c2cf6301ae09542983e', 42, 1, 'love-love', '[]', 0, '2023-07-24 14:22:09', '2023-07-24 14:22:09', '2024-07-24 14:22:09'),
('183dfe3b2f7fa82cf537ad3387fc2b2317b8d8ce081c2c7dfb7aff200ba80c75ebce94ac8b8aaf17', 4, 1, 'love-love', '[]', 0, '2023-07-20 13:59:03', '2023-07-20 13:59:03', '2024-07-20 13:59:03'),
('18a21fe64592c8f6b3c80c083459a78419e7c4ae401298ccffd2491a2f996b9051b469576d8c5b31', 4, 1, 'love-love', '[]', 0, '2023-06-22 12:36:14', '2023-06-22 12:36:14', '2024-06-22 12:36:14'),
('1988faf1469ef62cea344fba8b6bcf01d9b850867568de5e66481f81a4b2292a0ecbe052204853d8', 4, 1, 'love-love', '[]', 0, '2023-07-14 15:27:39', '2023-07-14 15:27:39', '2024-07-14 15:27:39'),
('1a2cdca047c3e5481e625904711a11f2640e8771d80aee08b48d2ba714e03b1c412b2466a2266c12', 13, 1, 'love-love', '[]', 0, '2023-06-26 14:52:26', '2023-06-26 14:52:27', '2024-06-26 14:52:26'),
('1ac28ab5e7b9c9982acdc608e144e73d5cdbbad53a696f52fb6f13927e6b3c88b3368b12c2a27b0f', 1, 1, 'love-love', '[]', 0, '2023-06-26 18:04:36', '2023-06-26 18:04:36', '2024-06-26 18:04:36'),
('1b6724101095291a2756c1f3ee30251a28f9f4756c5490544fb53b903abcb2c40288f8101c73e0c4', 46, 1, 'love-love', '[]', 0, '2023-07-26 07:20:57', '2023-07-26 07:20:57', '2024-07-26 07:20:57'),
('1b8fb17292273d41f8e61c1c73f6c026ab51c2877647fd44551505f651167c187ecec0c847ff0a4e', 52, 1, 'love-love', '[]', 0, '2023-07-31 16:07:54', '2023-07-31 16:07:54', '2024-07-31 16:07:54'),
('1c0caa49377894403d1db21db63ab4408aebdbe18d7c4089c03dc1a955448652815fec65fe48af72', 72, 1, 'love-love', '[]', 0, '2023-09-22 23:10:38', '2023-09-22 23:10:38', '2024-09-22 16:10:38'),
('1c464835dee2386f307b5fdbb30f7949509ae98f3ac5ec3501fde0ca4ab1bc02f59d435b51997d48', 4, 1, 'love-love', '[]', 0, '2023-06-22 14:17:42', '2023-06-22 14:17:42', '2024-06-22 14:17:42'),
('1c6431ca762018df23ab1731e04e09718a1c51c3002f9adb3158390a138d301693be2020a281ff59', 46, 1, 'love-love', '[]', 0, '2023-07-27 12:56:02', '2023-07-27 12:56:02', '2024-07-27 12:56:02'),
('1d2c61b3aa8fd59143741176ac3503d39ae5169ae6cf58ba7e52ebc1f02a1675e520efcc08b077f4', 5, 1, 'love-love', '[]', 0, '2023-07-13 11:42:28', '2023-07-13 11:42:28', '2024-07-13 11:42:28'),
('1d39eab95303ee3fb4127c15efd3c5746ca23d61bee28c5223291ef8cb51fd652f3e4db341e84535', 87, 1, 'love-love', '[]', 0, '2023-09-18 14:45:04', '2023-09-18 14:45:04', '2024-09-18 07:45:04'),
('1d3ea864c70a3ed38ed0e94d172006ad61f51f365aba7dbed8e927d0cf405cfebdaf2b01177ba6b1', 73, 1, 'love-love', '[]', 0, '2023-10-27 18:11:50', '2023-10-27 18:11:50', '2024-10-27 11:11:50'),
('1d5716b8be1f6a2e7c68aff29c9302c76248f1168568776d9d36a4220ff9f2505d7065a1d34b03ad', 4, 1, 'love-love', '[]', 0, '2023-06-27 11:38:05', '2023-06-27 11:38:05', '2024-06-27 11:38:05'),
('1d6ce7539c1df01ecbb9abda56ecda4ca972c85d222561de8a6a2b00f79479a34cb835cf5cfd0642', 73, 1, 'love-love', '[]', 0, '2023-10-26 22:39:19', '2023-10-26 22:39:19', '2024-10-26 15:39:19'),
('1e7a31c08bdbf90e824ca7dca136df9a2c3da856c6f074e94452592262219e30cd6844fd152c6742', 72, 1, 'love-love', '[]', 0, '2023-09-18 13:19:12', '2023-09-18 13:19:12', '2024-09-18 06:19:12'),
('1eab9a13cba4aa15dc5b5a65f737052c422de5b11eb388b1338ba4fc317bd42457d1b1caf4a09c5e', 26, 1, 'love-love', '[]', 0, '2023-07-05 15:40:40', '2023-07-05 15:40:40', '2024-07-05 15:40:40'),
('1f4cb7bdcd7be34e9959f698f3a46f3cbfdea07deef911c9bf8463721735ca58c30c41775f4cee01', 8, 1, 'love-love', '[]', 0, '2023-07-20 13:23:44', '2023-07-20 13:23:44', '2024-07-20 13:23:44'),
('1f8d1c03d1346bef51e841cd9cbb36991d76c40e8c127304f2deddc820d9a24648a34453f67510f2', 4, 1, 'love-love', '[]', 0, '2023-06-16 07:23:04', '2023-06-16 07:23:04', '2024-06-16 07:23:04'),
('206d7ecbf509338a3c5962b0cff12fdf5e641eb79fcf60a0dd6e8036c034a08e5c316b91f0a1f0a0', 73, 1, 'love-love', '[]', 0, '2023-10-13 23:20:10', '2023-10-13 23:20:10', '2024-10-13 16:20:10'),
('2137f354449f4dd56b1071ab3fa98391e818db067240af7a6814fb76f3a4e8b9e6c6534fef35efed', 4, 1, 'love-love', '[]', 0, '2023-07-20 12:41:27', '2023-07-20 12:41:27', '2024-07-20 12:41:27'),
('21579447f93517c1f722100a16285dffa2f5d41e84576303f9dc6d0d5bc6183c2224100b544407c4', 46, 1, 'love-love', '[]', 0, '2023-07-26 10:43:51', '2023-07-26 10:43:51', '2024-07-26 10:43:51'),
('2191e3c66f7442d6f150f27c0e7cbb44649f01bf5f7523ac89e4c791c1803b1b34c53e0f3bf42c3a', 8, 1, 'love-love', '[]', 0, '2023-06-26 18:06:17', '2023-06-26 18:06:17', '2024-06-26 18:06:17'),
('21d6e38aa74e024c842b37b7c75da2fd7a9a5367ec285e8754240be8468ce7045e9f31a488ed130a', 4, 1, 'love-love', '[]', 0, '2023-06-22 11:43:00', '2023-06-22 11:43:00', '2024-06-22 11:43:00'),
('21fabb4ba7264d5d16a90cbdd63891d99a8f3bda0db0fd14c4a7646e75037007f9e3efce6b09a3bf', 4, 1, 'love-love', '[]', 0, '2023-06-16 06:42:54', '2023-06-16 06:42:54', '2024-06-16 06:42:54'),
('224b1eea252c5ae1dd7b4677c2ddaad670c09afbf9019616f03c153f357d354c1df2cc19fc31a3fd', 28, 1, 'love-love', '[]', 0, '2023-07-12 16:04:02', '2023-07-12 16:04:02', '2024-07-12 16:04:02'),
('22c1fde8b19630aacddf1a763b8d4db83a92f2ff34f853c1a6daf6baea2322432afd5e35e567f532', 4, 1, 'love-love', '[]', 0, '2023-06-23 13:31:15', '2023-06-23 13:31:15', '2024-06-23 13:31:15'),
('234ca0532a0ccac5b10edffe24f42b0dba8fad32c58fe3bf7e837a40a8b4a50fa174524cdb5b14f2', 2, 1, 'love-love', '[]', 0, '2023-06-20 14:40:45', '2023-06-20 14:40:45', '2024-06-20 14:40:45'),
('237de29bfc0b1bb00ca29d3f8834d667c6c6d5fdb6a9c5bb37e789e6bc6182db153a8ad7f15eb939', 46, 1, 'love-love', '[]', 0, '2023-07-25 11:24:14', '2023-07-25 11:24:14', '2024-07-25 11:24:14'),
('23bab5921670a6136b5708918f31e7470f8b1c2174f6aa63ad7d8110143a299930b89a5e8b2fc556', 75, 1, 'love-love', '[]', 0, '2023-09-18 13:59:02', '2023-09-18 13:59:02', '2024-09-18 06:59:02'),
('23d29c17be3dc5151df4dded69e185111fd1547b622bbb7a833b7ba82348f817c37e8e98fd977d7d', 4, 1, 'love-love', '[]', 0, '2023-06-21 10:26:03', '2023-06-21 10:26:03', '2024-06-21 10:26:03'),
('23e3adb30ed11a4b199394d71899ee380856dab13d33c52ecb152d6d0caf6e91c9e0708f7886180c', 94, 1, 'love-love', '[]', 0, '2023-09-21 14:50:03', '2023-09-21 14:50:04', '2024-09-21 07:50:03'),
('243941ea8acf8ef9a683df93beb0c50c79c9f8ead00dd318bec1c4884dcfb5f25c17afa893d5f1e9', 95, 1, 'love-love', '[]', 0, '2023-09-21 13:55:31', '2023-09-21 13:55:31', '2024-09-21 06:55:31'),
('24c8c39b160a2bbd1471164e4f91898338932ed3b028304685be563dc444ccffe79f5e0b68b2f030', 73, 1, 'love-love', '[]', 0, '2023-10-31 19:21:20', '2023-10-31 19:21:20', '2024-10-31 12:21:20'),
('251eebee6ee52c3fc7bb97527755c5f550d3be54d5b7983adef18dc490fbce837527a7c2f0eeaacf', 4, 1, 'love-love', '[]', 0, '2023-07-04 12:47:50', '2023-07-04 12:47:50', '2024-07-04 12:47:50'),
('2569063697231e1b95c0fc404643667a375d88c449f7d4197aa88213fd55b6d2d5151d80f4a12316', 8, 1, 'love-love', '[]', 0, '2023-07-22 11:35:48', '2023-07-22 11:35:48', '2024-07-22 11:35:48'),
('2577e5f3948eaf0c10b857a133554193e8d9a83c19366d8d205ac32c2b089336b410871ed5e57446', 45, 1, 'love-love', '[]', 0, '2023-07-25 10:15:38', '2023-07-25 10:15:38', '2024-07-25 10:15:38'),
('26514dd7f64d35995ee3a512181b9795df076996b32a0bc6c27896a41efae6a26d2da715103ba702', 72, 1, 'love-love', '[]', 0, '2023-09-19 20:00:27', '2023-09-19 20:00:28', '2024-09-19 13:00:27'),
('26c11fef0f33b55d608c20aa813ad31209c6278df9204bc785b5c3ef5c9cf8c1dde93e0cbf899e4b', 4, 1, 'love-love', '[]', 0, '2023-06-15 13:51:41', '2023-06-15 13:51:41', '2024-06-15 13:51:41'),
('272f05f773026c1bec9f7b7d3a4e91af7c73aa743d813e91850cad1be07ce867753f4d839864fc71', 92, 1, 'love-love', '[]', 0, '2023-09-20 19:07:50', '2023-09-20 19:07:50', '2024-09-20 12:07:50'),
('2850a7d73b64ca93ffc13effbe31d9a20aeb53df013c95cbe9a4055f7e9d73cc409a8c1181c407fe', 1, 1, 'love-love', '[]', 0, '2023-07-17 18:59:17', '2023-07-17 18:59:17', '2024-07-17 18:59:17'),
('28802935bc43a1616f68e211344cdea4326240bfffab28fc3789b1eac6fe7bd5f233fed18d42cc29', 4, 1, 'love-love', '[]', 0, '2023-07-05 09:20:27', '2023-07-05 09:20:27', '2024-07-05 09:20:27'),
('28bd2ddccde1fb33feceead81f41e3bbe1c1a462ae98d390108d2f7cc71ca851d56293f3bbd5dc9f', 8, 1, 'love-love', '[]', 0, '2023-06-27 16:32:47', '2023-06-27 16:32:47', '2024-06-27 16:32:47'),
('29132639a542f9643c6c4cdd016f2062b22103d68e2b5ad6cc5ac6dcfab96a24dc6d30467d5a2afb', 4, 1, 'love-love', '[]', 0, '2023-06-22 14:29:35', '2023-06-22 14:29:35', '2024-06-22 14:29:35'),
('294ae472ddc6b3bc0bfe7e1019340f430c91efe56ad9b8245acf0bd8164d98fa9913fe1082cca89f', 16, 1, 'love-love', '[]', 0, '2023-06-27 14:29:02', '2023-06-27 14:29:02', '2024-06-27 14:29:02'),
('29662340ac6dbcfb07a3aba5d57204e8710c7c002ea3c9a51ea643000229bdb9b8d0f9bbb73dda75', 94, 1, 'love-love', '[]', 0, '2023-09-22 19:31:46', '2023-09-22 19:31:46', '2024-09-22 12:31:46'),
('2a7e0dcfc8073c5e9f472e5eaefd4e5f91f12a4e81a49bac13ba8bdd7b6b06a16311c0fd42489d91', 95, 1, 'love-love', '[]', 0, '2023-09-21 17:20:14', '2023-09-21 17:20:14', '2024-09-21 10:20:14'),
('2acd0d02f679c5696b3b9ffff35973549cb08518bca5f1f8d28ce29eee17be15779ef7203071f2cf', 72, 1, 'love-love', '[]', 0, '2023-09-13 19:01:44', '2023-09-13 19:01:44', '2024-09-13 12:01:44'),
('2ae6fd2f5538ebe15a3ee41c0844572c5cd82cad0c8a56dacf5f4084f8a4ad0d049ef7c76371b3c2', 4, 1, 'love-love', '[]', 0, '2023-06-22 11:24:39', '2023-06-22 11:24:39', '2024-06-22 11:24:39'),
('2b449483a1b446cf4ae10e50628b50677515fa7533e56509fe8bd625a92ab268a5bd95d6d862f212', 4, 1, 'love-love', '[]', 0, '2023-07-20 13:24:58', '2023-07-20 13:24:58', '2024-07-20 13:24:58'),
('2b769e68bd70e31dc576ea5518e21135b1ab384ec6e26b2516069237ddf8e8a5c8af6a20a353ab12', 15, 1, 'love-love', '[]', 0, '2023-06-27 16:42:08', '2023-06-27 16:42:08', '2024-06-27 16:42:08'),
('2b9e7f6b8d900b7ccdf02eb07c4a53a4fa690fbf7cfe7a4a7ed614707998e8dde7c1ff07b6c0dbf0', 4, 1, 'love-love', '[]', 0, '2023-07-14 14:47:23', '2023-07-14 14:47:23', '2024-07-14 14:47:23'),
('2beca105c418d4d0bebba6e001cb29cf4a1520137df259d8181028721baaabcacdd4e39185d9658c', 4, 1, 'love-love', '[]', 0, '2023-07-03 09:58:47', '2023-07-03 09:58:47', '2024-07-03 09:58:47'),
('2c620ecae6c35ddf005012e4cc3835b592f1207c0ecc2da4bbaf61685e5a2681570f5f1dd36a3b24', 73, 1, 'love-love', '[]', 0, '2023-10-27 18:32:23', '2023-10-27 18:32:23', '2024-10-27 11:32:23'),
('2c74888858a09ac44b1b194c0e9bc9466931c191ada6844df83a84ac249ac385e230c14f4d2abe71', 73, 1, 'love-love', '[]', 0, '2023-10-27 18:19:42', '2023-10-27 18:19:42', '2024-10-27 11:19:42'),
('2c8b142179f373f5b1cc0d752085c48121077f826a5324bdbfbd359d948b30631bb301a6ca43a860', 4, 1, 'love-love', '[]', 0, '2023-06-23 13:39:10', '2023-06-23 13:39:10', '2024-06-23 13:39:10'),
('2ca91275a1453892c42a6ac0730911f395c045f15a2ac7b68ab406f7315b137cf7365da00cb347d8', 16, 1, 'love-love', '[]', 0, '2023-07-04 13:02:48', '2023-07-04 13:02:48', '2024-07-04 13:02:48'),
('2cbf7866554ca9e9989c03034f97272889c2af4c08125bd2477d5e7080c6e9ce312383846a3ba982', 73, 1, 'love-love', '[]', 0, '2023-10-26 20:05:59', '2023-10-26 20:05:59', '2024-10-26 13:05:59'),
('2ccd24c08fc9675d10293e358fcd6c563cf613a8e2abd6b8f4f8f21db1cb78cf655a6d16f0ddc0b7', 57, 1, 'love-love', '[]', 0, '2023-08-01 07:59:24', '2023-08-01 07:59:24', '2024-08-01 07:59:24'),
('2d49c9a63917d1009dce9da6a5d6fb0b0071bf72f5c9d809ae7816d10c76017db36f09ad005d9baa', 2, 1, 'love-love', '[]', 0, '2023-06-15 08:33:04', '2023-06-15 08:33:04', '2024-06-15 08:33:04'),
('2db9fcf8a4b3a577b52dd3d64279577a3efbff05ed2dd9aa7505971978d19be5f9953e547a69f4c0', 8, 1, 'love-love', '[]', 0, '2023-07-14 16:51:51', '2023-07-14 16:51:51', '2024-07-14 16:51:51'),
('2e3f8260021334db72fbcaad75842163f6e3bc87ef5f6cf69061f023ca9ef389486f31014e767e20', 4, 1, 'love-love', '[]', 0, '2023-06-23 07:27:13', '2023-06-23 07:27:13', '2024-06-23 07:27:13'),
('2e496e0acb989437a51d470cfde4c192e3d0a6100184f343509ac3eb973462c1007d078aa748493f', 41, 1, 'love-love', '[]', 0, '2023-07-22 13:17:52', '2023-07-22 13:17:52', '2024-07-22 13:17:52'),
('2e9dee4f17fa9ab6c060c21c1c5b40c8a8355db314fa894206a22854e7d581c186ec984c524e547e', 46, 1, 'love-love', '[]', 0, '2023-07-27 07:01:31', '2023-07-27 07:01:31', '2024-07-27 07:01:31'),
('2f12baff53ad1629f5b3b2acd626d53a5a49332deb32df21adbd791b50c05a8c09b63208bb5b37c8', 13, 1, 'love-love', '[]', 0, '2023-06-26 12:41:25', '2023-06-26 12:41:25', '2024-06-26 12:41:25'),
('2f203384fb64b69f2e190cca75c33c73cf8781263f9c61b700752358b61f98f7b81bc23917e2aaae', 4, 1, 'love-love', '[]', 0, '2023-06-27 09:48:41', '2023-06-27 09:48:41', '2024-06-27 09:48:41'),
('2fa80c6a77f7129a4bfdb61619c8f60a452484a19147a09212725dc081b99985da7f61c68ac63a3c', 5, 1, 'love-love', '[]', 0, '2023-06-27 09:17:47', '2023-06-27 09:17:47', '2024-06-27 09:17:47'),
('30a8b915189678b284ffb85153b74e3f8f19b20b9119225d192fd08a56547e02a099ec891c027bc3', 4, 1, 'love-love', '[]', 0, '2023-06-23 10:37:33', '2023-06-23 10:37:33', '2024-06-23 10:37:33'),
('30c9483d5ff4fc6812c9e1a947c73bd2647d2016cf7596c01a576a750a488859de6dc59e3f6c6e83', 8, 1, 'love-love', '[]', 0, '2023-07-05 23:24:24', '2023-07-05 23:24:24', '2024-07-05 23:24:24'),
('30ff2668b5fd00441b502bad28b5c9c8ebd1dce596a331e45179851586583431558ebc9a15dfa90e', 95, 1, 'love-love', '[]', 0, '2023-09-22 20:47:11', '2023-09-22 20:47:11', '2024-09-22 13:47:11'),
('314cd4e692f84b8ba8dd8cf938cfb221fe08f668c9cb28bb8bbb5fedbbe04abb59fb30cbcfa5df3f', 4, 1, 'love-love', '[]', 0, '2023-07-14 15:33:30', '2023-07-14 15:33:30', '2024-07-14 15:33:30'),
('3160555d33ccb849b73e9b91b71f075e18d1451d117a29e8efe98f993f3653a478a53bb38adb33bb', 5, 1, 'love-love', '[]', 0, '2023-07-13 11:29:08', '2023-07-13 11:29:08', '2024-07-13 11:29:08'),
('317f9417c387330b12525de1af311e6bbea16743a244971a913e23db7f1b42000addf345fdfa35ff', 42, 1, 'love-love', '[]', 0, '2023-08-03 21:08:27', '2023-08-03 21:08:27', '2024-08-03 14:08:27'),
('3194500649ed95946439da77cf0aeb47a883a186ed3c7fcd0ab7ce276185ae28fa71cc81c8f7aa67', 82, 1, 'love-love', '[]', 0, '2023-09-18 14:28:34', '2023-09-18 14:28:34', '2024-09-18 07:28:34'),
('32238a8e48d7172c634eb93e53016b31ea1f4cdba1a86da0d9f1cdce9b8cc7b697133f9cf74c00a2', 73, 1, 'love-love', '[]', 0, '2023-10-25 23:11:34', '2023-10-25 23:11:34', '2024-10-25 16:11:34'),
('326223a8a37fbe1b28ff024e3d46f335d5ad2195f129b48fe927fec1659fee08af05b30c284f4e9b', 94, 1, 'love-love', '[]', 0, '2023-09-22 18:30:56', '2023-09-22 18:30:56', '2024-09-22 11:30:56'),
('326e3e25152422e49d21fdd1d615ef6206516aac9fd9b1c09eb7d6e4a21ef6ab0c607385d14b128a', 4, 1, 'love-love', '[]', 0, '2023-06-26 14:53:06', '2023-06-26 14:53:06', '2024-06-26 14:53:06'),
('32f46e0abbd7d3f1caf8e3cf2c6a9a33f208091428c26547483c840c7704c01b56ace0d737f2816a', 8, 1, 'love-love', '[]', 0, '2023-06-26 20:48:38', '2023-06-26 20:48:38', '2024-06-26 20:48:38'),
('33b52003340bad75c5b9d55a6f3dbd91a0f920c63ceb050fcd6b8feb8711f550bcbc9c7f76c226f7', 26, 1, 'love-love', '[]', 0, '2023-07-05 17:30:41', '2023-07-05 17:30:41', '2024-07-05 17:30:41'),
('33d3ff33f0314897a66b90e27924e7c233865ca93ca20b67c6d92b97f47ce8b3cfb45c41f1871153', 4, 1, 'love-love', '[]', 0, '2023-07-05 08:15:47', '2023-07-05 08:15:47', '2024-07-05 08:15:47'),
('3447de60e83317d098119d475ad7adcb5f42ac67a8040342334d92593ee6254f17936e861a32aef7', 4, 1, 'love-love', '[]', 0, '2023-06-22 07:43:29', '2023-06-22 07:43:29', '2024-06-22 07:43:29'),
('344b40e2242843ae73b01ad36301f08eaf851806448217ecb2390abf2e1edee9e0d64994208e32cd', 3, 1, 'love-love', '[]', 0, '2023-06-26 15:01:44', '2023-06-26 15:01:44', '2024-06-26 15:01:44'),
('3467d77247eebb5f249d84266c24335b50730e037ea02b039b657e698529ff85c2951730aac2f443', 4, 1, 'love-love', '[]', 0, '2023-07-05 09:29:28', '2023-07-05 09:29:28', '2024-07-05 09:29:28'),
('348e2380fb999b83a4190b55a17cd16c0b2f2be23d6a5feb28c4d15bdaafa7d07a0afeaa99c334dc', 4, 1, 'love-love', '[]', 0, '2023-06-23 08:18:23', '2023-06-23 08:18:23', '2024-06-23 08:18:23'),
('35643877cc6eea3e2a64f987649b478a50c07bd02a893f8edc0fc8639af6ce60cd46e8a949975eac', 4, 1, 'love-love', '[]', 0, '2023-06-27 07:36:24', '2023-06-27 07:36:24', '2024-06-27 07:36:24'),
('35d64e15471e0e98c22e8753080650edfe35b7558eb91186549abb2e209fe61b18d417e63c3fec31', 46, 1, 'love-love', '[]', 0, '2023-09-20 18:41:57', '2023-09-20 18:41:57', '2024-09-20 11:41:57'),
('36f263309dcfc5bd1c8be9bb53e0eac14fc34dfde4e1e7004e7c462baa66ef967f98db9d88b09eec', 4, 1, 'love-love', '[]', 0, '2023-07-03 06:46:38', '2023-07-03 06:46:38', '2024-07-03 06:46:38'),
('375be4ae056433abaa5a804ad6bf82f71ca57ccd0a6e16cb5ddbf09d9d9f9f49cdbb518f660c3e55', 4, 1, 'love-love', '[]', 0, '2023-06-23 10:27:38', '2023-06-23 10:27:38', '2024-06-23 10:27:38'),
('376bcea0f543190fd16cc7c3a8cc7d80e425f6f974bbec0332d4881c976dae6a3df10a8e4c5c7b04', 8, 1, 'love-love', '[]', 0, '2023-07-12 16:05:02', '2023-07-12 16:05:02', '2024-07-12 16:05:02'),
('37a10c0aa1b8bf44693c894891bd3bea3207c6a2661c442476650fa8a004cae1286f8fe661f66e8e', 49, 1, 'love-love', '[]', 0, '2023-07-31 14:13:54', '2023-07-31 14:13:54', '2024-07-31 14:13:54'),
('37ac8bc7e6b30e04366d75a5b3c1f875ccdbf253eade9daeb7e28f0e8a4ff04dcd73da1299a5fbb5', 73, 1, 'love-love', '[]', 0, '2023-10-26 22:41:48', '2023-10-26 22:41:48', '2024-10-26 15:41:48'),
('3825a765019fc2cfa9fd9d486e0ff05324dba55f12f749c117dac8ecd7454083eaa1c921a10b9ebe', 2, 1, 'love-love', '[]', 0, '2023-06-15 09:02:32', '2023-06-15 09:02:32', '2024-06-15 09:02:32'),
('385a18eb451f1965fc9a28453dd636abdf55916d2da68b8b825d6c0635316ff560815723ca22856b', 46, 1, 'love-love', '[]', 0, '2023-08-01 09:11:29', '2023-08-01 09:11:29', '2024-08-01 09:11:29'),
('387191663a7dd6c24e0d931f72da16b3c6116b13c391b5aaf92e4dd32f0dfa10883ad7f245e4fb4b', 14, 1, 'love-love', '[]', 0, '2023-06-26 18:29:47', '2023-06-26 18:29:47', '2024-06-26 18:29:47'),
('39918af533f28b4c8cf4f81220966ed1e013c0bd2c5a10915936be05603a947a531989f7d9bad2c8', 4, 1, 'love-love', '[]', 0, '2023-06-22 14:59:57', '2023-06-22 14:59:57', '2024-06-22 14:59:57'),
('39bcf7074059a75b396018a3572dc103649b3fcc741e6ac8e353be9169f4df9fff281227720f0b3f', 95, 1, 'love-love', '[]', 0, '2023-09-22 20:24:26', '2023-09-22 20:24:26', '2024-09-22 13:24:26'),
('3a47fa1f33439aa926f7b71a09d51b9675fcb68ae3cd41eeafffcc9b3ce9f0d63e84cada293272d3', 8, 1, 'love-love', '[]', 0, '2023-07-19 19:41:57', '2023-07-19 19:41:57', '2024-07-19 19:41:57'),
('3a967e6dbfced950e6ebc3882839637f1eabc7257f055da3cb7cbccc7f23f527ef39d3ace236a8de', 46, 1, 'love-love', '[]', 0, '2023-07-27 06:59:33', '2023-07-27 06:59:33', '2024-07-27 06:59:33'),
('3ac7a54f1e902234398459e8f5281f8a70b956227434609bb8d6e77c8f23eddb4f6feaf312d8a8d7', 73, 1, 'love-love', '[]', 0, '2023-10-26 15:30:34', '2023-10-26 15:30:34', '2024-10-26 08:30:34'),
('3ad30b400de1fcd304ed06c970eab68105a2538fc25eeab1091774f21d63ed2424b9221959478497', 4, 1, 'love-love', '[]', 0, '2023-06-22 14:20:09', '2023-06-22 14:20:10', '2024-06-22 14:20:09'),
('3ae25ccebe47ee2d3dd337bb812c04ff9ce4bf1daf0c7a4586f5021605a39f983c3217e1bbff340b', 73, 1, 'love-love', '[]', 0, '2023-09-13 19:09:47', '2023-09-13 19:09:47', '2024-09-13 12:09:47'),
('3b2ad6f6b5e4a6c23b608a7ec2e120d2cc90358e523f1367c758c33b6d863d93d165a1c072c12e0b', 95, 1, 'love-love', '[]', 0, '2023-09-22 19:16:29', '2023-09-22 19:16:29', '2024-09-22 12:16:29'),
('3b34fe3e485e51e0992e784b5d769ad5d1f2133b673a126c71329d03b921bb8922548ad01be7740f', 43, 1, 'love-love', '[]', 0, '2023-07-24 14:05:56', '2023-07-24 14:05:56', '2024-07-24 14:05:56'),
('3b443adf3ef5af74b7245a7737c41e8776f88b5864553b6399f516a651449a867b95e05562b2412f', 97, 1, 'love-love', '[]', 0, '2023-10-11 01:29:15', '2023-10-11 01:29:15', '2024-10-10 18:29:15'),
('3b4d30b2c9027a9fde8c4267f386e65115f0b08ab66c0399fc6b8f2e02d4c2fbbee97df1f8c2d3b8', 14, 1, 'love-love', '[]', 0, '2023-06-26 20:21:01', '2023-06-26 20:21:01', '2024-06-26 20:21:01'),
('3ba159eeede38a9a9879979a4eb84d1945a2ac61e109ff8b03bede6a0a6a19c9ed1ea3616ca1b2ae', 46, 1, 'love-love', '[]', 0, '2023-07-27 06:41:04', '2023-07-27 06:41:04', '2024-07-27 06:41:04'),
('3bc91af37d346c9145f9cae856fba58d0ba94bb9550b3e6d52460bed80762645b38e447480e4a101', 73, 1, 'love-love', '[]', 0, '2023-10-27 18:08:38', '2023-10-27 18:08:38', '2024-10-27 11:08:38'),
('3c41cc7f3d0fe13be4582fb5f62c55c25d7c72451a904cb28775248d6c41dac0fa6bca97419c5077', 103, 1, 'love-love', '[]', 0, '2023-10-24 12:50:08', '2023-10-24 12:50:08', '2024-10-24 05:50:08'),
('3c565c57910745f8f1b18b29faeb0947a81004f51455983b5b938a342780a58516a52894dcc7bd89', 95, 1, 'love-love', '[]', 0, '2023-09-22 18:13:56', '2023-09-22 18:13:56', '2024-09-22 11:13:56'),
('3cbd69b6712fd263bbe48dc4ef0e926e566c2d208d32da907bfadee6eac59e8a050dc0aa8d76197e', 20, 1, 'love-love', '[]', 0, '2023-07-03 16:06:39', '2023-07-03 16:06:39', '2024-07-03 16:06:39'),
('3ded35eebbebb0e24bd0f4b9163c8800cfc108691f4506b55fef193b3b98ad667fb0fbafa2c9204e', 95, 1, 'love-love', '[]', 0, '2023-09-22 20:53:11', '2023-09-22 20:53:11', '2024-09-22 13:53:11'),
('3e93bb7353e545a5b866f8f726305396ac034d49968b6af9490ecfb7cfc3e36b06d7da59421627f4', 2, 1, 'love-love', '[]', 0, '2023-06-22 12:38:40', '2023-06-22 12:38:40', '2024-06-22 12:38:40'),
('3f59706ecbbac7f5bb38fecbfb5b4ecc3f1f17e5aeb15846c3814a7d14a39adb57aa320dded46102', 4, 1, 'love-love', '[]', 0, '2023-06-21 11:05:21', '2023-06-21 11:05:21', '2024-06-21 11:05:21'),
('3f5a09bf11f8593d5f7d2c55f940ad8f231e24a39bb8ab84ffd72955193b939b615ff15e98f2a299', 94, 1, 'love-love', '[]', 0, '2023-09-25 20:49:32', '2023-09-25 20:49:32', '2024-09-25 13:49:32'),
('3fc78899dbd835120eb11fbb42942c8f2a3e78cf9be66e70d0b4a7006620617a924067ee8440c5c6', 50, 1, 'love-love', '[]', 0, '2023-07-25 14:26:00', '2023-07-25 14:26:00', '2024-07-25 14:26:00'),
('405d157dbe4e78e3593262b5a6ab60d56c380ad7d3ad7174bd7ded77d3249130bf6f57d643840bec', 98, 1, 'love-love', '[]', 0, '2023-10-11 01:35:27', '2023-10-11 01:35:27', '2024-10-10 18:35:27'),
('4062d6f7b49bf7bc754a5d9bd884b4fd5294b7336d1bd1341c4254c268da79af02f354fb2137330b', 4, 1, 'love-love', '[]', 0, '2023-06-23 07:51:23', '2023-06-23 07:51:23', '2024-06-23 07:51:23'),
('40ac2a0d1bd174b4c59128b501e1e888585bac6cc6a0d499c9665a4ac489f7047341448fb6d24dc5', 20, 1, 'love-love', '[]', 0, '2023-07-05 18:12:20', '2023-07-05 18:12:20', '2024-07-05 18:12:20'),
('41df92e4485a99d6400f49a6a779a8f6fd3cecd37d38411fecd1e2491d5b975de80b42925df90693', 36, 1, 'love-love', '[]', 0, '2023-07-14 17:49:21', '2023-07-14 17:49:21', '2024-07-14 17:49:21'),
('42093fd16ad25dcfe8fd01c216dbb32e061ed672e8ba5e9a313cfd32f49c7d19f0dd3d85931db650', 1, 1, 'love-love', '[]', 0, '2023-07-12 15:41:15', '2023-07-12 15:41:15', '2024-07-12 15:41:15'),
('421f3b19e05678c5e3eba556ffafabbb87fa884d22a4e6f5b79f824a30b0828cccebfaf0eb0612a6', 37, 1, 'love-love', '[]', 0, '2023-07-14 22:07:40', '2023-07-14 22:07:40', '2024-07-14 22:07:40'),
('427f93e0044ab86af41146a2389125de47638ec663f1b86ddc3c1528959c16f954c9780f3856ff78', 8, 1, 'love-love', '[]', 0, '2023-07-18 21:24:17', '2023-07-18 21:24:17', '2024-07-18 21:24:17'),
('4327e61adcc48bdcc3e30bbf9121c77faed47b4311ca42344efa6f4a04c9bc22ed40d88c75fe5c62', 18, 1, 'love-love', '[]', 0, '2023-06-27 15:20:13', '2023-06-27 15:20:13', '2024-06-27 15:20:13'),
('442a42e5541cb1e306e4e6666c91f6884042473c4df49cf5edc23f53bdf6dbcd4305dce7d94f24ea', 73, 1, 'love-love', '[]', 0, '2023-10-26 23:27:45', '2023-10-26 23:27:45', '2024-10-26 16:27:45'),
('445445fb67669964996a8591f2a99db12a805113c5486c0c34f777b297462fab6d338c0d99405976', 46, 1, 'love-love', '[]', 0, '2023-08-01 11:13:50', '2023-08-01 11:13:50', '2024-08-01 11:13:50'),
('44f7fa92d5d5e4e898bc667e40c9421712bab454bb1202201757789164833e49c70144b4327ed6d7', 72, 1, 'love-love', '[]', 0, '2023-09-20 19:42:25', '2023-09-20 19:42:25', '2024-09-20 12:42:25'),
('450900983687d5b7aa210d42f4372e61b7c3a220ecf89adcc9ce4093a1fd1e8f80a4aae9890922e3', 95, 1, 'love-love', '[]', 0, '2023-09-22 20:14:57', '2023-09-22 20:14:57', '2024-09-22 13:14:57'),
('4582376a0545126517dfc154cf35e80c85ddfcf33eb442f960999589965077682cca4cf747d6f7c4', 8, 1, 'love-love', '[]', 0, '2023-07-22 13:27:41', '2023-07-22 13:27:41', '2024-07-22 13:27:41'),
('4582c30f589098dcdf36ba57bfcc6db201d8b72fc99c3073267cba9f4fad33531fa55e79ac50e4bd', 95, 1, 'love-love', '[]', 0, '2023-09-21 13:13:54', '2023-09-21 13:13:54', '2024-09-21 06:13:54'),
('4603fa8f9571c284c8ec834f5ff8ed7ff3ea8e5e77216e54e20d6fd66ff42e0f0bdb8aa5e50328f8', 73, 1, 'love-love', '[]', 0, '2023-10-26 20:51:39', '2023-10-26 20:51:39', '2024-10-26 13:51:39'),
('46b0541185509a7530652f8d619c174e4678b4df9d7bca456c093a8427f58b56f3f0fe2d1e61a74f', 28, 1, 'love-love', '[]', 0, '2023-07-12 16:17:04', '2023-07-12 16:17:04', '2024-07-12 16:17:04'),
('46e2e8aa7784663d718dc743323df28cfe4704b606d4410204ac4db18fdd8227bd94f4b347c21e27', 94, 1, 'love-love', '[]', 0, '2023-09-21 17:34:27', '2023-09-21 17:34:27', '2024-09-21 10:34:27'),
('4731cf30a6e391533ec13d1a677dd8c57978d41aceaaaecaad334cebf95aa5bdaac8aeec64389a7e', 4, 1, 'love-love', '[]', 0, '2023-07-05 12:07:44', '2023-07-05 12:07:44', '2024-07-05 12:07:44'),
('476bf951da82c18df9e5f36f1ee6f53a99d5a5f4fff48ee047fbcc5d9b266727daeb3e4fee64c550', 45, 1, 'love-love', '[]', 0, '2023-07-27 13:31:32', '2023-07-27 13:31:32', '2024-07-27 13:31:32'),
('4790a3b77d8dc5fba5501291b5e24e03c19752fd75225c8f762209dfe99b2f29c35f2797d6b55a9d', 72, 1, 'love-love', '[]', 0, '2023-09-19 20:04:38', '2023-09-19 20:04:38', '2024-09-19 13:04:38'),
('47fc4b59c84958d5f667861f4610dccbc07f37ea452e5ccffb61ccee846a77d04ae0405108c0afee', 8, 1, 'love-love', '[]', 0, '2023-07-05 13:48:11', '2023-07-05 13:48:11', '2024-07-05 13:48:11'),
('4863788df6a2fb72951a5a3288ee25917f6fe6789c07ba0139ca5758f674c4ca8950afb2866edca0', 72, 1, 'love-love', '[]', 0, '2023-09-21 14:15:29', '2023-09-21 14:15:29', '2024-09-21 07:15:29'),
('48bc34575f362a6e5e3d11227f07983e3afae3d88f9d0d9fdbb899dbdc7c0a59090b0143e8ff188a', 4, 1, 'love-love', '[]', 0, '2023-07-04 13:21:18', '2023-07-04 13:21:18', '2024-07-04 13:21:18'),
('4971a2a14cc6934329d35afba88f37aea9532817b280096763315708f41fe9c00c423ede06bb911c', 14, 1, 'love-love', '[]', 0, '2023-07-12 16:02:05', '2023-07-12 16:02:05', '2024-07-12 16:02:05'),
('497466f20e46134929ee0d425feb3d18fdf0075848e368d4244bc82c3f85740839c6b7ba459668f1', 8, 1, 'love-love', '[]', 0, '2023-06-27 16:28:06', '2023-06-27 16:28:06', '2024-06-27 16:28:06'),
('4975838910e1c328bd55a3bf1a8ae6b084f12cd66b8c394472eb7cbe50530d48232542eded3428d0', 8, 1, 'love-love', '[]', 0, '2023-07-12 15:43:20', '2023-07-12 15:43:20', '2024-07-12 15:43:20'),
('49a5f737fa98ea548d6063533713343f68a3fb4bfbc43d348fed2d6c405cef1c2b26ade0029a0fae', 32, 1, 'love-love', '[]', 0, '2023-07-14 14:48:10', '2023-07-14 14:48:10', '2024-07-14 14:48:10'),
('49da651ded5eedee7fff0d3a9aed04e20245854d08d94aa28636a40e45f8bc60c99fb730054f33c5', 4, 1, 'love-love', '[]', 0, '2023-06-21 11:55:35', '2023-06-21 11:55:35', '2024-06-21 11:55:35'),
('4a8835fc108c2ac27a7bbbb5011d6925c7862d0af05486c5bc2ad3f72cc1598cf810fb2a2f9f0bed', 46, 1, 'love-love', '[]', 0, '2023-07-25 13:37:46', '2023-07-25 13:37:46', '2024-07-25 13:37:46'),
('4adb2032db8a39a56a6f38c3dea2acb95763e33de511ea9b18a5fad09bc57e97c87c52c0b7e0046f', 45, 1, 'love-love', '[]', 0, '2023-07-25 10:54:24', '2023-07-25 10:54:24', '2024-07-25 10:54:24'),
('4b3608f698ef1f8cf3317bce0eac33d52c74ee661bd159b8c5ebd37baf2a8d688c7af657724656fa', 49, 1, 'love-love', '[]', 0, '2023-09-19 22:09:53', '2023-09-19 22:09:53', '2024-09-19 15:09:53'),
('4cf33a19eefbf96a2df8351aec675037abbf486b4da3142e38298815199473493ff956cdf53af3eb', 4, 1, 'love-love', '[]', 0, '2023-06-27 12:54:26', '2023-06-27 12:54:26', '2024-06-27 12:54:26'),
('4d63cdf4b2cc5adee4bf1e829efb218bfc97af186259969573ac7886b7c72d9dd78f0db2d54e6912', 46, 1, 'love-love', '[]', 0, '2023-07-31 14:05:17', '2023-07-31 14:05:17', '2024-07-31 14:05:17'),
('4d717a1dc2f361d8a836f36b3c33be1e395452e7b9789266eb076393557ecd3154e8f3ba719aa1ce', 4, 1, 'love-love', '[]', 0, '2023-07-14 12:47:13', '2023-07-14 12:47:13', '2024-07-14 12:47:13'),
('4d86453b5c1d86fa07629006720aa24df2a0ba7dc06f6c5c9c8422c2c1e8097fc6900dbac138b53d', 49, 1, 'love-love', '[]', 0, '2023-07-31 15:26:28', '2023-07-31 15:26:28', '2024-07-31 15:26:28'),
('4e03418f6dc6dda12bfedc2717a133ab780d741e48fee7feeca392f92229fbc6fadbc6dec222cb07', 95, 1, 'love-love', '[]', 0, '2023-09-22 21:19:17', '2023-09-22 21:19:17', '2024-09-22 14:19:17'),
('4e6117cc6b726f63558786a4d5e08f044a9234238a2e8aa857d398dce5c43059d4d4830ae8f297e3', 4, 1, 'love-love', '[]', 0, '2023-07-24 10:53:02', '2023-07-24 10:53:02', '2024-07-24 10:53:02'),
('4e803a00b0d32e360b101c58af27f86b2aab4c3de196c9ed88a4072419e84f5d5fe4e54aa7f72ccf', 47, 1, 'love-love', '[]', 0, '2023-07-27 13:34:22', '2023-07-27 13:34:22', '2024-07-27 13:34:22'),
('4eaa1ad2fbd83d805fe695fb682cb382f6c472a223223e500b6c6d8476dfac2692e9f5bd76e7f3ee', 73, 1, 'love-love', '[]', 0, '2023-10-26 20:45:47', '2023-10-26 20:45:47', '2024-10-26 13:45:47'),
('4ecf30006bc36a3034c62e96d650784f7c822448f57b519565d50a12f3621d7af3c5952355c2e259', 94, 1, 'love-love', '[]', 0, '2023-09-21 14:35:43', '2023-09-21 14:35:43', '2024-09-21 07:35:43'),
('4f88718ba2ae2a98b4f3611999e8f298a7eb6f28c80d5a61129e4ce061f3bf04aad58c8214c10217', 45, 1, 'love-love', '[]', 0, '2023-07-27 14:00:56', '2023-07-27 14:00:56', '2024-07-27 14:00:56'),
('4f8a4fca584050ff535d54f25d5039ed7f9507ed407d5d2fd5c5302a690e756b1f309cfec7e052d7', 46, 1, 'love-love', '[]', 0, '2023-07-25 09:12:27', '2023-07-25 09:12:27', '2024-07-25 09:12:27'),
('50456140e284443da389c59e1c43b5fffeb205cfce2965f6dc89408e4f263a31e5653d77369dca5d', 49, 1, 'love-love', '[]', 0, '2023-09-19 22:07:56', '2023-09-19 22:07:56', '2024-09-19 15:07:56'),
('505cb43f2d702bc3657239085c702ff7fba4e81c0ab8f1461837067c5478148b1fba8ed9a1d59d4c', 95, 1, 'love-love', '[]', 0, '2023-09-21 13:19:36', '2023-09-21 13:19:36', '2024-09-21 06:19:36'),
('5090b6a40df32b069d58daa6627d81e9754f0ae3fc636283989aa8da2fd8b04e701ec6f9cfbf947f', 3, 1, 'love-love', '[]', 0, '2023-06-26 14:43:32', '2023-06-26 14:43:32', '2024-06-26 14:43:32'),
('5093251d189cee47af67072ae306110caa91e4ee35047f0990d0b0bd7696f8a317e24d43b9a52a14', 94, 1, 'love-love', '[]', 0, '2023-09-26 14:43:01', '2023-09-26 14:43:01', '2024-09-26 07:43:01'),
('50a9b874322ae4e6f8b2535840128341af7af0359dd74950f7cb76515e50234749ad7fe246e7231a', 73, 1, 'love-love', '[]', 0, '2023-10-27 22:26:55', '2023-10-27 22:26:55', '2024-10-27 15:26:55'),
('50c679ff5ab97a84cd6105bccf171c11d88ec0cd19887fcb15ab643ddbef5a514b7a63c5ab1259d9', 46, 1, 'love-love', '[]', 0, '2023-07-27 07:57:45', '2023-07-27 07:57:45', '2024-07-27 07:57:45'),
('5145349f454e2214d4534308cd6568d9bb93347e083a928b48735045df5b749831feeab0917d9774', 102, 1, 'love-love', '[]', 0, '2023-10-24 06:50:14', '2023-10-24 06:50:14', '2024-10-23 23:50:14'),
('517144553579096325d68b0d0f6c83719640b45ee9a05485a17f75920129fd00c7e04c27d4bc63fa', 4, 1, 'love-love', '[]', 0, '2023-07-04 13:17:29', '2023-07-04 13:17:29', '2024-07-04 13:17:29'),
('5177b77c30aaf3cdc5cdff14b75e2b777ac69da9a49b300a0bb0e9cd9e7127c0d7177f878217dc7d', 60, 1, 'love-love', '[]', 0, '2023-09-01 16:03:22', '2023-09-01 16:03:22', '2024-09-01 09:03:22'),
('5256418376284898dd15c8dd21d14e3fd324ee9d7044273df4d0af1e2a25c25c5bf3fa607af39914', 86, 1, 'love-love', '[]', 0, '2023-09-18 14:42:57', '2023-09-18 14:42:57', '2024-09-18 07:42:57'),
('52b479cd4e3d434c2c4d431e2ac26e9b397e9435094f9b7bc984a07d037938e2bfadec8292df751b', 52, 1, 'love-love', '[]', 0, '2023-07-31 13:12:48', '2023-07-31 13:12:48', '2024-07-31 13:12:48'),
('52b5fb38de7fb773176941b0f431b97d14c53627e4d7adcfc61205faf9af03d1d8b2e16d81737c15', 95, 1, 'love-love', '[]', 0, '2023-09-21 20:07:21', '2023-09-21 20:07:21', '2024-09-21 13:07:21'),
('530dfd3ef36ff56360652a7bd5db5062975aee42e6307d9709d9c8a7fd9450a1a2128ffb2d954b6c', 50, 1, 'love-love', '[]', 0, '2023-07-31 12:28:39', '2023-07-31 12:28:39', '2024-07-31 12:28:39'),
('533416b54223269c92830a2d618676edbadf95d7222760cfe717a68af3b1a562f758869365813093', 72, 1, 'love-love', '[]', 0, '2023-09-18 14:47:16', '2023-09-18 14:47:16', '2024-09-18 07:47:16'),
('533695e778b1102c88b48a0bc99cc8da2ca5fdaef38aba3d2e244df155ebf986e8afd012fa23ac51', 8, 1, 'love-love', '[]', 0, '2023-06-26 20:19:38', '2023-06-26 20:19:38', '2024-06-26 20:19:38'),
('537d5a4aac088ede6602629f113a8f740b154c29d3bf9601aa86ea2266d9d419cf3287e473f2a3e7', 84, 1, 'love-love', '[]', 0, '2023-09-18 14:34:59', '2023-09-18 14:34:59', '2024-09-18 07:34:59'),
('53a7f434af3f4c7015ff7d34d949e83532c4923388ce8b50b2deaf81252cac68d8a0ec7536463061', 36, 1, 'love-love', '[]', 0, '2023-07-14 17:39:26', '2023-07-14 17:39:26', '2024-07-14 17:39:26'),
('53b8e606ecf35063f7a95354cfbb19769d3497703b683bfad82f749695d1ac696e520a8bc663d3ed', 50, 1, 'love-love', '[]', 0, '2023-07-31 13:05:42', '2023-07-31 13:05:42', '2024-07-31 13:05:42'),
('53eadc76ec3e449299ecacdc847445768e6cdd43b589734b68e48da04e7816e1c1becc07072d7dbe', 8, 1, 'love-love', '[]', 0, '2023-07-22 13:08:28', '2023-07-22 13:08:28', '2024-07-22 13:08:28'),
('53f767e65eb550ab8028d7ead9a32ae439e481219d28afd247801a3bd0732ec1f3be1a9bd923e08c', 58, 1, 'love-love', '[]', 0, '2023-08-14 23:01:39', '2023-08-14 23:01:39', '2024-08-14 16:01:39'),
('5409f176e819ec6da9e5f7546616d8f754fd18f75fe1351d20dddf1a8b9361ca22a36415b0939c47', 94, 1, 'love-love', '[]', 0, '2023-09-22 18:16:06', '2023-09-22 18:16:06', '2024-09-22 11:16:06'),
('542f61383c8586ead5a2b53899cbf2c07a08a4398a18ff48eed5c0d93542ca769887e68859035e33', 47, 1, 'love-love', '[]', 0, '2023-07-26 07:36:10', '2023-07-26 07:36:10', '2024-07-26 07:36:10'),
('545225d3e9555d5b1ef43b44843938698066d5597dcde06176485b1b5c941a922cd70b9c0147cbb3', 4, 1, 'love-love', '[]', 0, '2023-06-15 13:47:06', '2023-06-15 13:47:06', '2024-06-15 13:47:06'),
('5470672abda6c7b211a6465a1b553e627196c3ed5d4b5aef251854aed88aaa0ea8e36e0fdf281b78', 46, 1, 'love-love', '[]', 0, '2023-07-25 11:26:09', '2023-07-25 11:26:09', '2024-07-25 11:26:09'),
('549c71475ab6991a82d5d2f34d8464a0a23cf31e1ff43b88edc8bdadb339e31e857b799aeb76f95e', 4, 1, 'love-love', '[]', 0, '2023-06-16 08:09:53', '2023-06-16 08:09:53', '2024-06-16 08:09:53'),
('54d45eb562f8fea90e909e68ac8a4fe3e0f591d34c96efdc3d9bb4721fde0ca8a58035646aa4c4a2', 35, 1, 'love-love', '[]', 0, '2023-07-14 16:53:54', '2023-07-14 16:53:54', '2024-07-14 16:53:54'),
('5509703915d2284667e8509185fe5a3ba2eeb1dbb89cd939cc45be835eaf3180ca18a73dde56920a', 16, 1, 'love-love', '[]', 0, '2023-06-27 12:02:27', '2023-06-27 12:02:27', '2024-06-27 12:02:27'),
('556d765075b0350802ef997e1c70e126066c82d16d83d7fbfdee1d9d2ea522b67d1de536cd88f5d4', 49, 1, 'love-love', '[]', 0, '2023-09-20 21:03:57', '2023-09-20 21:03:57', '2024-09-20 14:03:57'),
('557949e4dd77de4173504a9bd282c2804fe538841ad24ecec0f56043191241468b8b6e370905c004', 65, 1, 'love-love', '[]', 0, '2023-09-01 17:32:27', '2023-09-01 17:32:27', '2024-09-01 10:32:27'),
('569076a2f45511b2ae66a8a5378e017af1fc07fb47d7da60663b5debd94f1899d35bd2a78edbdf10', 50, 1, 'love-love', '[]', 0, '2023-07-31 14:51:53', '2023-07-31 14:51:53', '2024-07-31 14:51:53'),
('56b53e07ead3daabfe42695714a0bfeda7c98d3e9668cd6728199757ef32204c34e3420c5a56ee1b', 8, 1, 'love-love', '[]', 0, '2023-06-26 15:58:40', '2023-06-26 15:58:40', '2024-06-26 15:58:40'),
('56be0720a64e13d0d630532b6b3911a133ab58d48110957e6bca09ab2d88bbf11df2b8e9ec0463af', 4, 1, 'love-love', '[]', 0, '2023-06-27 15:19:50', '2023-06-27 15:19:50', '2024-06-27 15:19:50'),
('57a651770051d7a1e586b34d6a91eeb316fb62332518a0910197c504a7dc57c825e0221c6c7fb312', 8, 1, 'love-love', '[]', 0, '2023-07-05 16:55:49', '2023-07-05 16:55:49', '2024-07-05 16:55:49'),
('58d955f161aa1f4fd05ef06922518532dc9d1492f07cc9cc3994ac3bad400e6db8f162beee744fb1', 73, 1, 'love-love', '[]', 0, '2023-10-31 18:39:04', '2023-10-31 18:39:04', '2024-10-31 11:39:04'),
('59097c5dfda410d09971d08a090feee0cc1012b52094aa1560bd55ac14633c2b22341b7c59cb0d9b', 4, 1, 'love-love', '[]', 0, '2023-06-20 14:00:14', '2023-06-20 14:00:14', '2024-06-20 14:00:14'),
('5929edb198d3eef7801cecbce786dcd6fae3203b449ec0b6d0460fa493923bcd54929779b4a8a874', 95, 1, 'love-love', '[]', 0, '2023-09-21 14:48:38', '2023-09-21 14:48:38', '2024-09-21 07:48:38'),
('592a33a108be681aad38da7ff50d1274f2ac4f466211f7646cb5001cec2e1b32db7735238442c2bd', 57, 1, 'love-love', '[]', 0, '2023-08-01 08:54:18', '2023-08-01 08:54:18', '2024-08-01 08:54:18'),
('593a260de76c1def4a5f872beae1a0c7dcd394aa8331044f74ae853cc6ea88bd4af53acb882a1807', 52, 1, 'love-love', '[]', 0, '2023-07-31 14:49:54', '2023-07-31 14:49:54', '2024-07-31 14:49:54'),
('59a50cd29ff5c41f594f1efcd457f2705a964526f02043a632d94d8e263f7845c067eb6fb3af2e3e', 4, 1, 'love-love', '[]', 0, '2023-06-15 11:58:54', '2023-06-15 11:58:54', '2024-06-15 11:58:54'),
('59b68cb5601077c3df97b6bef42677096765ce21ba1b87d736f60e345c2979aaa46d6491e8f1904f', 95, 1, 'love-love', '[]', 0, '2023-09-22 18:24:10', '2023-09-22 18:24:10', '2024-09-22 11:24:10'),
('5a7eeb4e70f8a1db0f526cc2751df5b56f263b140a400c523456736bd795f3eb7740c4b30dcc1ba1', 94, 1, 'love-love', '[]', 0, '2023-09-26 20:48:18', '2023-09-26 20:48:18', '2024-09-26 13:48:18');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('5ac29c79d9db726e112f58f9f7383edd9b15602cb8c852643a85f7b885f6ec2ccc1674d65aeedef4', 53, 1, 'love-love', '[]', 0, '2023-07-27 12:35:00', '2023-07-27 12:35:00', '2024-07-27 12:35:00'),
('5be240c45a7305f5483f615cc14ffa3194c83387e1e953f78fc2744188bf96fc000ff9039961d31b', 4, 1, 'love-love', '[]', 0, '2023-06-26 14:07:14', '2023-06-26 14:07:14', '2024-06-26 14:07:14'),
('5be24469d3c378f68d07a96e5c5409755af651a467720d548580ad916289b917ca35c49762782b46', 2, 1, 'love-love', '[]', 0, '2023-06-26 07:26:25', '2023-06-26 07:26:26', '2024-06-26 07:26:25'),
('5c9e35e163237cb23d73412bed974386a19d9587cbe246bda71211a2500385733c60d15f969076d4', 68, 1, 'love-love', '[]', 0, '2023-09-01 18:31:27', '2023-09-01 18:31:27', '2024-09-01 11:31:27'),
('5cb25a433bf5d82d4bac7b535bc8756ef58721e4fd2d77353946a2bc323ed525e602848b519125ac', 4, 1, 'love-love', '[]', 0, '2023-07-20 14:02:49', '2023-07-20 14:02:49', '2024-07-20 14:02:49'),
('5cc0598af6f5077775db8762643647e7a1143f750f80d97f2c3030471e6e27f381f11d14d7c389f1', 73, 1, 'love-love', '[]', 0, '2023-10-27 17:53:02', '2023-10-27 17:53:02', '2024-10-27 10:53:02'),
('5cf40f9fd2a177f8553970e463002f2df60e4e2a8a05ab13bac6cfef39ed3b66805165e33093cf38', 46, 1, 'love-love', '[]', 0, '2023-07-25 09:20:37', '2023-07-25 09:20:37', '2024-07-25 09:20:37'),
('5cfbf5717b3631e143107da6539f4c138930ed00fd5f10e5b683fccc5c3af8a094f8ca88d448b311', 72, 1, 'love-love', '[]', 0, '2023-09-21 17:47:26', '2023-09-21 17:47:26', '2024-09-21 10:47:26'),
('5d66a7ed99df875bb5e8bed2acadf81a4ae40cba7aa1ff2c6860f006b8a418c3decab5c2fb36a75d', 4, 1, 'love-love', '[]', 0, '2023-06-27 11:26:39', '2023-06-27 11:26:39', '2024-06-27 11:26:39'),
('5e0cd6820d23066b8c0b30ddb181a5c47ffbd13ba983dac1492da4637012acd1836a04023c5ccf5e', 4, 1, 'love-love', '[]', 0, '2023-06-20 11:09:21', '2023-06-20 11:09:21', '2024-06-20 11:09:21'),
('5e1925844dfe9551b96e2acd7eac3f7cbe4b60b11c357161686283a7e1f315a440ee7b1309dfd1bb', 72, 1, 'love-love', '[]', 0, '2023-09-18 16:18:27', '2023-09-18 16:18:27', '2024-09-18 09:18:27'),
('5e93b117a02822c5faeb165eef6a9a37b598d84b8f35b3d6bfdff3ac63ef28fbf03e25a33f9b5d2e', 2, 1, 'love-love', '[]', 0, '2023-06-26 08:25:29', '2023-06-26 08:25:29', '2024-06-26 08:25:29'),
('5eb595d3080c6ae572432c852a49838a8397fa7c816db673b4dd1fd7c98cf1aece1224561dac2d14', 50, 1, 'love-love', '[]', 0, '2023-07-31 15:24:29', '2023-07-31 15:24:29', '2024-07-31 15:24:29'),
('5f1944896f46effb39d53372156aaf63cb8acbe87e3a6334ce6ea750a125eda5cdebdf915e41cbf2', 42, 1, 'love-love', '[]', 0, '2023-07-24 13:59:46', '2023-07-24 13:59:46', '2024-07-24 13:59:46'),
('5f31076e2aa8e3374c29c4b96800dbe8ea911ffb20255c67897cd6547cce8da5bff4b7d9ef085b36', 73, 1, 'love-love', '[]', 0, '2023-10-25 16:17:20', '2023-10-25 16:17:20', '2024-10-25 09:17:20'),
('6073f4f1428f95eae4bb43f68fd0ec5d3d3d0871e7449984e2d8e733f55020802baed2f39d51ec1f', 73, 1, 'love-love', '[]', 0, '2023-10-12 01:20:59', '2023-10-12 01:20:59', '2024-10-11 18:20:59'),
('60948bb3feeb39cdb6239472af0b40c0271da766732c2d318aa0b72190ca4a4b5e3e56c96ab6c7ab', 4, 1, 'love-love', '[]', 0, '2023-07-20 12:18:47', '2023-07-20 12:18:47', '2024-07-20 12:18:47'),
('60f12c4b3928b26a506f93fd1a1a85b2fa58a60cc9123586d2eb910fc2a5393de6aa7f915cffb397', 94, 1, 'love-love', '[]', 0, '2023-09-22 17:00:18', '2023-09-22 17:00:18', '2024-09-22 10:00:18'),
('60fc4928418905c4f37554ff12e667cc1d59dde20a819bb8809a12dd4e6e9617333de76a104a8697', 4, 1, 'love-love', '[]', 0, '2023-06-27 10:43:55', '2023-06-27 10:43:55', '2024-06-27 10:43:55'),
('610a44a151306007baeb0bb93f1c313834a8ba13dbb8c29bb302c9df1930259646dc95d051d4ab33', 46, 1, 'love-love', '[]', 0, '2023-08-01 06:28:07', '2023-08-01 06:28:07', '2024-08-01 06:28:07'),
('6154bb68b09dfdd9beaa79a36ea0a5812d45881adcb9322cd05a5effc68070b287dcb4bf89e39106', 73, 1, 'love-love', '[]', 0, '2023-10-26 16:29:13', '2023-10-26 16:29:13', '2024-10-26 09:29:13'),
('6188966091c25dcd0f43accfdc340de04e07ff29a9f676502637dbd51156f25f75b436fdceea5c1e', 49, 1, 'love-love', '[]', 0, '2023-07-25 14:19:59', '2023-07-25 14:19:59', '2024-07-25 14:19:59'),
('618aa363a3c8d06fe9c717604627359bab162fdd421b6ef2a3ac2d2f531f69906d3a26576eeaef2f', 4, 1, 'love-love', '[]', 0, '2023-06-27 11:17:34', '2023-06-27 11:17:34', '2024-06-27 11:17:34'),
('618d8af48f4fab6794dcac29918c6a2d22de94e8e5921d955e71dd4da10a694644f56c42326c3f58', 14, 1, 'love-love', '[]', 0, '2023-06-26 18:33:18', '2023-06-26 18:33:18', '2024-06-26 18:33:18'),
('61c9f32c91ac8487b1a2b4a1067cd647fbecd46312112cfe10f689ca11164a9364453cb404a65f9b', 4, 1, 'love-love', '[]', 0, '2023-07-03 15:12:05', '2023-07-03 15:12:05', '2024-07-03 15:12:05'),
('623949642154cdc5c2d2a7909445317c761acfe40b20e12aef1c5e6bb9b4bbd5b702d4600f56f82e', 4, 1, 'love-love', '[]', 0, '2023-06-21 11:56:53', '2023-06-21 11:56:53', '2024-06-21 11:56:53'),
('6251793a9a18b89cb649d09e7a1a33c8040849da9f59aff74aaa83e7dcbaf67aab39fc52ca281af0', 46, 1, 'love-love', '[]', 0, '2023-07-26 10:32:30', '2023-07-26 10:32:30', '2024-07-26 10:32:30'),
('6321f78f1ebd75b698888b68402e86b72a0a9397b60ace1c8ab9b2a3b5a3994446e5581b72d70cbe', 73, 1, 'love-love', '[]', 0, '2023-10-25 23:13:57', '2023-10-25 23:13:57', '2024-10-25 16:13:57'),
('63538e45473c2797e78538ad97acc30c552e460a27592bfd4a41aaddf35a726185c1f6ce17b80109', 1, 1, 'love-love', '[]', 0, '2023-06-27 16:38:22', '2023-06-27 16:38:22', '2024-06-27 16:38:22'),
('64276e271a1e6c6902e3edf774bf2670ce56a995af2aed05611af44a2ad7be3aeca111c7fa4421ac', 46, 1, 'love-love', '[]', 0, '2023-07-25 13:17:20', '2023-07-25 13:17:20', '2024-07-25 13:17:20'),
('64d7b43472bc083184a6d9dfd996b4d70ef13c7d3ce450c03fbb244691dc53823a4ddc0696750237', 4, 1, 'love-love', '[]', 0, '2023-06-20 14:51:20', '2023-06-20 14:51:20', '2024-06-20 14:51:20'),
('64fda3129a2de95f273a1308dff8fb074dc027eb1814dcab41f335e6b9bb15c08a63b5a5adea6c53', 72, 1, 'love-love', '[]', 0, '2023-09-18 15:08:55', '2023-09-18 15:08:55', '2024-09-18 08:08:55'),
('6509a13729c7960023c6eecbfe137f1e853a37fde155ed8e2c6373cc708dad6613bd2e2b6d98783d', 73, 1, 'love-love', '[]', 0, '2023-10-27 20:20:11', '2023-10-27 20:20:11', '2024-10-27 13:20:11'),
('6592468c089bd25154188e2944ab53b7d071666e37175b560eb6a197b0ef5005c3565c695a23125a', 72, 1, 'love-love', '[]', 0, '2023-09-13 17:18:28', '2023-09-13 17:18:28', '2024-09-13 10:18:28'),
('65bfd950fb886f1fbf5e5a9f69b6b765d87f2473ee9a18d657b721d3ef29cd495d8d5538809bd4b9', 66, 1, 'love-love', '[]', 0, '2023-09-01 18:21:39', '2023-09-01 18:21:39', '2024-09-01 11:21:39'),
('66123260eebf874d97de0c6948459e4043ccdada26a8c3d06cd66fbc0122d3e129aef3ab5b88c6db', 4, 1, 'love-love', '[]', 0, '2023-07-18 08:16:12', '2023-07-18 08:16:12', '2024-07-18 08:16:12'),
('666d3f7d756b25afdf8777c0d1ea99a5843a2ee85b52df9e240b33ccab0142a853418d09dd12e686', 26, 1, 'love-love', '[]', 0, '2023-07-05 15:38:09', '2023-07-05 15:38:09', '2024-07-05 15:38:09'),
('667a5f6782a285da01962d9de18510310c2fa9ba703d4e04b0bfc7f69866e2496ad64a08011f58bd', 4, 1, 'love-love', '[]', 0, '2023-06-22 07:40:39', '2023-06-22 07:40:39', '2024-06-22 07:40:39'),
('66a3c895cca1ee09f65b3245619a8feb8aac27d3317d6e6bf4bfbfef53df733af984315fa8d63a50', 4, 1, 'love-love', '[]', 0, '2023-07-24 07:17:21', '2023-07-24 07:17:21', '2024-07-24 07:17:21'),
('66ce2a0aa97b66b3072887f452015578653a364e8ab1fe13050f3c4b5034e0833ca19ce9e87b569a', 4, 1, 'love-love', '[]', 0, '2023-06-22 11:22:00', '2023-06-22 11:22:00', '2024-06-22 11:22:00'),
('66f57f4af62f583f19b42a3cfc1cac02fac0eae170221f98a7d611a677b1219716fa5de10eb110e7', 72, 1, 'love-love', '[]', 0, '2023-09-21 20:13:20', '2023-09-21 20:13:20', '2024-09-21 13:13:20'),
('6721768cabd229c1bea96b63fa9cccb708a87f88736ea9742850248d3e59a6a7fb52eaeb8ec98000', 47, 1, 'love-love', '[]', 0, '2023-08-01 10:30:44', '2023-08-01 10:30:44', '2024-08-01 10:30:44'),
('67feaeaee8fc62e5a3edb8a1e0855ef31bdf720f7ee03f5de8ef25b7b637919abd20219c861329f9', 4, 1, 'love-love', '[]', 0, '2023-07-20 07:00:07', '2023-07-20 07:00:07', '2024-07-20 07:00:07'),
('681d32fa24adfe47bb50226862ca6fcfb127be80ee4ac96bf74644ac8b997e0c123597f9ef613ef2', 4, 1, 'love-love', '[]', 0, '2023-07-19 13:26:47', '2023-07-19 13:26:47', '2024-07-19 13:26:47'),
('687deb06b3126a2f98a756ca31d9ee5f95a14115ef1e3b7193d8c573472610cfd2c2334de44d0d09', 4, 1, 'love-love', '[]', 0, '2023-07-04 13:52:11', '2023-07-04 13:52:11', '2024-07-04 13:52:11'),
('69c47575bffa64a83df0c21e3675c4f458749323c136b8e6932a0afda3907e57cc413551c9e3d7a4', 8, 1, 'love-love', '[]', 0, '2023-06-23 19:09:38', '2023-06-23 19:09:38', '2024-06-23 19:09:38'),
('69ce13a57a6582c74e7a6c402175f8cac698f5e133631f83f7af32470647b496e92903a37fb09702', 8, 1, 'love-love', '[]', 0, '2023-07-03 23:01:10', '2023-07-03 23:01:10', '2024-07-03 23:01:10'),
('69d5fafc14dda725a4d8b721150710712480fa02e431693f48e8b54d243b9f6197e8b61dc7ebbdc9', 1, 1, 'love-love', '[]', 0, '2023-10-24 06:42:19', '2023-10-24 06:42:19', '2024-10-23 23:42:19'),
('6a061a31a6d5b873c92fbeb187c6cbf318c8bc3379fb4d6d6c179282dc6e86d3052a593061d3a241', 2, 1, 'love-love', '[]', 0, '2023-06-23 10:11:21', '2023-06-23 10:11:21', '2024-06-23 10:11:21'),
('6a57d1949f139003744a76eedffae36b30714845fb4d1463c82a9ba0d3e852fff789c50de4be4c91', 4, 1, 'love-love', '[]', 0, '2023-07-20 13:31:09', '2023-07-20 13:31:09', '2024-07-20 13:31:09'),
('6aa6e16824cb25186bc70cbcb84c51b86b5eb7dd8e31a01067ffb9d2fc746fee63ecb7d4fec0b463', 4, 1, 'love-love', '[]', 0, '2023-07-05 09:28:07', '2023-07-05 09:28:07', '2024-07-05 09:28:07'),
('6ab7aeada0a6ba2a110b90da5332d73767152d4b562d2652994f96d5c3f39ed4227f5bdaf1bfd540', 73, 1, 'love-love', '[]', 0, '2023-10-27 16:35:13', '2023-10-27 16:35:13', '2024-10-27 09:35:13'),
('6b2ae8d1d16539bf0320813e711a9bf77620b033fbec58c3a2527b376645dd93fb5e7cf5eb7c0946', 4, 1, 'love-love', '[]', 0, '2023-07-14 13:07:49', '2023-07-14 13:07:50', '2024-07-14 13:07:49'),
('6b2c0d29b312c0858bcf3261421020d699c388c33262d3b123bf1a8a61a1639ac405687bf9fadf18', 46, 1, 'love-love', '[]', 0, '2023-07-31 09:04:00', '2023-07-31 09:04:00', '2024-07-31 09:04:00'),
('6b79ec58f998fc13413f5454b111dc44f418bc3e41c6703b6d13b17e2f6c886e911a158ec1600a47', 94, 1, 'love-love', '[]', 0, '2023-09-22 22:04:40', '2023-09-22 22:04:40', '2024-09-22 15:04:40'),
('6b7ec6d01732d220f9b1e2a33a9511595283b1b5681ecb5d29374d9d87635165b8990e99d4109291', 102, 1, 'love-love', '[]', 0, '2023-10-24 06:48:18', '2023-10-24 06:48:18', '2024-10-23 23:48:18'),
('6b8a464c52fb8f3f95cc0e194dcfc2750a705ad228c8c801dc0833257730e23832061cc580e11f18', 58, 1, 'love-love', '[]', 0, '2023-10-25 06:18:50', '2023-10-25 06:18:50', '2024-10-24 23:18:50'),
('6ba25224292ef0bed8db5032af3743929e428b1e59a4d88bd66933c09b317f94202c26c8c9113d6b', 4, 1, 'love-love', '[]', 0, '2023-06-21 11:21:02', '2023-06-21 11:21:02', '2024-06-21 11:21:02'),
('6be0be3674a44e77077237ce57e958e9789f87a82a3ec2819f5bc92965ecae958d5613a8dd506332', 4, 1, 'love-love', '[]', 0, '2023-06-27 11:33:36', '2023-06-27 11:33:36', '2024-06-27 11:33:36'),
('6c116327ae516dd43c134f3ca985e5236bbcc7a0e657257446d3e394ef2951751ec0e2e3193d36a5', 57, 1, 'love-love', '[]', 0, '2023-08-01 08:50:40', '2023-08-01 08:50:40', '2024-08-01 08:50:40'),
('6d4fddeb5f502bf1922ac056c45ad3ffcdffba6468a5eddaefbac47db6c54749d9458c78017e1fe0', 42, 1, 'love-love', '[]', 0, '2023-07-27 06:40:22', '2023-07-27 06:40:22', '2024-07-27 06:40:22'),
('6e25f4dca8fb1ea74f603ab71c60d6078785520266c25fddf593f0914c819a80943580eec03fbd7b', 105, 1, 'love-love', '[]', 0, '2023-10-25 04:39:56', '2023-10-25 04:39:56', '2024-10-24 21:39:56'),
('6eb2a5308fabd6458f84d4cb8fb9dc59fc13bfb111200eb14b282d0c7b9c1e5853fcd1c24e240625', 4, 1, 'love-love', '[]', 0, '2023-06-23 13:41:33', '2023-06-23 13:41:33', '2024-06-23 13:41:33'),
('6ec0012c220fda6423938bb2c2de8662e3e0d2d510c0fd25924071a44c1c38f5d9ccefa8a849c120', 42, 1, 'love-love', '[]', 0, '2023-07-24 14:06:33', '2023-07-24 14:06:33', '2024-07-24 14:06:33'),
('6eed88e4330f659469caa6771c64a413fa3b3b39dccf9fb94b5f08be161bb0f31582a6fafcfb028a', 4, 1, 'love-love', '[]', 0, '2023-06-16 15:07:01', '2023-06-16 15:07:01', '2024-06-16 15:07:01'),
('6fc797cb24ff37c5dcf540e9b484d7094d85d3fa74b735c2c5f2c5612e211959e8b9fe96675075cb', 72, 1, 'love-love', '[]', 0, '2023-09-13 14:19:50', '2023-09-13 14:19:50', '2024-09-13 07:19:50'),
('70ab126ffcc40c977293da7a56fc1883e90dcf112f292f8fae17b195604db6278f7b5fd5e0516054', 72, 1, 'love-love', '[]', 0, '2023-09-18 16:17:12', '2023-09-18 16:17:12', '2024-09-18 09:17:12'),
('70ab9d1e47d916c8843c991b4bf40293701e4901a4507f405a673aa25c88f732529704ead7c4da3a', 94, 1, 'love-love', '[]', 0, '2023-09-22 15:45:11', '2023-09-22 15:45:11', '2024-09-22 08:45:11'),
('718f44ef9e49a68096179790d799a5b38c2926cce537b58deffae7c9bfecefe95b5e23cf0edc8002', 90, 1, 'love-love', '[]', 0, '2023-09-22 23:19:31', '2023-09-22 23:19:31', '2024-09-22 16:19:31'),
('71a9810f8f831f3287ea15a2a2088f986c941b021eb95252d75b3d6ec3f63af3afa9e1359398708c', 4, 1, 'love-love', '[]', 0, '2023-07-13 11:44:37', '2023-07-13 11:44:37', '2024-07-13 11:44:37'),
('71e84309f7f525f8ba58e6f2d67d3ed421470787b1ed196810f57a2401f4ff129ae5ed5e24795830', 1, 1, 'love-love', '[]', 0, '2023-07-17 18:59:13', '2023-07-17 18:59:13', '2024-07-17 18:59:13'),
('71fbaa84b5341fa5524f4edf5c6a8ede20efd9eb71e2cebbde1f8c44dfbdbba630c6858192c961ce', 4, 1, 'love-love', '[]', 0, '2023-07-14 16:00:50', '2023-07-14 16:00:50', '2024-07-14 16:00:50'),
('73727edd016a7b4ee46774112d0958b184737bbbb918d556fbed73f24fc2a8a223062f59c4598fa3', 33, 1, 'love-love', '[]', 0, '2023-07-14 16:06:52', '2023-07-14 16:06:52', '2024-07-14 16:06:52'),
('738ccf5b37769b2a3ee1c1d516a4c3d10aad15dca1ce6ac081eb378ec4a03b44170f2a0df1cf4ef5', 4, 1, 'love-love', '[]', 0, '2023-06-15 13:26:35', '2023-06-15 13:26:35', '2024-06-15 13:26:35'),
('73a6f307084fb6095492e55373040d436d916d33a3144552e2d434c0be19dc534b3622cdbca5d0ed', 4, 1, 'love-love', '[]', 0, '2023-06-21 11:24:43', '2023-06-21 11:24:43', '2024-06-21 11:24:43'),
('73c0bfadc9250d800a31f84c84c1f6c5600f9c2e32ca08ef68123d7a6d70b471557b34d06d7a859e', 4, 1, 'love-love', '[]', 0, '2023-06-22 10:55:46', '2023-06-22 10:55:46', '2024-06-22 10:55:46'),
('7406633818eb2858fcffc439d52914d924ad3413ddb0aaab99675b1bc452469821f955d280df758f', 94, 1, 'love-love', '[]', 0, '2023-09-21 14:47:52', '2023-09-21 14:47:52', '2024-09-21 07:47:52'),
('7462436520b72158246015accb6dafc3aee773549ac18f8288f8f1276359b15c1d3cfde420298027', 73, 1, 'love-love', '[]', 0, '2023-10-27 21:40:43', '2023-10-27 21:40:43', '2024-10-27 14:40:43'),
('74cc0f719387c27f7f6e920fa9a4e9ed396a700253d9117c7df3ba95a330fe301337b2efd1b1f4f1', 94, 1, 'love-love', '[]', 0, '2023-09-25 13:38:35', '2023-09-25 13:38:35', '2024-09-25 06:38:35'),
('74d71094090141e6db41645e22d576320061b43e8142532b6551d4082a1f523fbc81e2a96333c2a0', 45, 1, 'love-love', '[]', 0, '2023-07-25 10:13:41', '2023-07-25 10:13:41', '2024-07-25 10:13:41'),
('75211c6c54fb5fc2a89e8f639ebf59cc871708cfaa799eea450bd6d560df3c8c273979852bc83010', 15, 1, 'love-love', '[]', 0, '2023-07-12 15:42:00', '2023-07-12 15:42:00', '2024-07-12 15:42:00'),
('756392abb49807d1b757bdf9b8eff2ac86241b19109f22f76308a211a8830ebe160265462ae8d8ea', 20, 1, 'love-love', '[]', 0, '2023-07-05 13:27:58', '2023-07-05 13:27:58', '2024-07-05 13:27:58'),
('7684139bb0e367948537d45671e154ab3e71587a06090dd01e59868e88982f559bdd438e41b745db', 46, 1, 'love-love', '[]', 0, '2023-07-25 11:03:31', '2023-07-25 11:03:31', '2024-07-25 11:03:31'),
('76a7514ec434d354350c19574ce8050394a6f0f1a27574dba48ba30cc18095619179470adb46824e', 4, 1, 'love-love', '[]', 0, '2023-06-22 12:00:17', '2023-06-22 12:00:18', '2024-06-22 12:00:17'),
('775eeacdd646a2dec7669d474c8bc66a616822e0ff13f19f3474582778f1fd71da269572332cfc12', 46, 1, 'love-love', '[]', 0, '2023-07-25 14:52:48', '2023-07-25 14:52:48', '2024-07-25 14:52:48'),
('7789e891cc3510d2150e57330324f69b1aa0f68df1da955c30dbcc40a404b105bc097b3c5744c169', 89, 1, 'love-love', '[]', 0, '2023-09-22 14:18:35', '2023-09-22 14:18:35', '2024-09-22 07:18:35'),
('783ff629339f4f0ddea72055c83644370d16e956e29bff4fc26c2cd804e99c4a0216149bbf748f62', 46, 1, 'love-love', '[]', 0, '2023-07-25 10:00:00', '2023-07-25 10:00:00', '2024-07-25 10:00:00'),
('78af7fe51f231c112430224d1f36ab10d451fee8a9180b6554c49ec8a5f71799109afb706429770b', 4, 1, 'love-love', '[]', 0, '2023-07-04 06:40:59', '2023-07-04 06:40:59', '2024-07-04 06:40:59'),
('78d97d5179867e9c668dee98d776b1296b1105e3a1cf7936b83ec22b2a9337d982cfe04c8ee63cc1', 4, 1, 'love-love', '[]', 0, '2023-07-19 14:03:24', '2023-07-19 14:03:24', '2024-07-19 14:03:24'),
('79244f5633decab4698efd96622f44458139b0730b24b46cedf1c511baafe5ca82b64617a42cce32', 33, 1, 'love-love', '[]', 0, '2023-07-19 12:14:53', '2023-07-19 12:14:53', '2024-07-19 12:14:53'),
('79870720a41a3914d7aad8650855bbdc696b17da5d489e06db12978b118db3a2be3c2258cc2aa8bd', 94, 1, 'love-love', '[]', 0, '2023-09-22 18:31:57', '2023-09-22 18:31:57', '2024-09-22 11:31:57'),
('79c8bc52cbebfbd5d63844cb1f7689f4785f41ba7063dd68e87774b8f77bf480439fce6fdaedc6a9', 8, 1, 'love-love', '[]', 0, '2023-07-12 15:34:15', '2023-07-12 15:34:15', '2024-07-12 15:34:15'),
('79db2c11fcdd675c4258d21d85c6fe87592a4a110f05cb176597cfbb4c67f22f5f3d1cdba4c8ced9', 20, 1, 'love-love', '[]', 0, '2023-07-03 23:08:24', '2023-07-03 23:08:24', '2024-07-03 23:08:24'),
('7a4b96ad208f2abe8b12bcd3415d2c10e7af542a9bbf915348e301310df28a78c0327dd4dcfe290b', 46, 1, 'love-love', '[]', 0, '2023-07-27 06:38:50', '2023-07-27 06:38:50', '2024-07-27 06:38:50'),
('7a9dbd91576805770498dec2e5d61ddee1e1e34732c05fdb9ce551d886dfd7156d56ac10769b8b9e', 73, 1, 'love-love', '[]', 0, '2023-10-26 18:42:16', '2023-10-26 18:42:16', '2024-10-26 11:42:16'),
('7ad9b471a68b47312b2cf6bd5a8872eed60fe005450b4dfc5f9d43d6f932162ba9bc65ac6a5bbe5e', 72, 1, 'love-love', '[]', 0, '2023-09-21 15:37:03', '2023-09-21 15:37:03', '2024-09-21 08:37:03'),
('7b114833226996b95a8b1276093786e15b34cf92492226e8c5699dcfd11c5f5c373154fd49464ea2', 47, 1, 'love-love', '[]', 0, '2023-07-27 07:54:19', '2023-07-27 07:54:19', '2024-07-27 07:54:19'),
('7bbc23278960a962da444df58e6697506d314b5b45e6dc20611ddb707e8dcf6ac2ae1e4cbfe82db7', 4, 1, 'love-love', '[]', 0, '2023-07-20 13:49:00', '2023-07-20 13:49:00', '2024-07-20 13:49:00'),
('7bf5a45af9af530bd8a135a84a8ba367588887694ca74e26034dfcddc90df4be631e547dea717064', 4, 1, 'love-love', '[]', 0, '2023-06-22 11:07:38', '2023-06-22 11:07:38', '2024-06-22 11:07:38'),
('7c87a9bf1c29d91bd66207ac398bda033904e1d2f50ba7aab179bf785b3a8412160932c71a92369b', 73, 1, 'love-love', '[]', 0, '2023-10-12 19:16:40', '2023-10-12 19:16:40', '2024-10-12 12:16:40'),
('7cac873592d48d62a331e4e4d83363d068d6ec70ceb0bf0851b96544e4e2b5e4f4f1e037be7e0d63', 2, 1, 'love-love', '[]', 0, '2023-06-22 11:43:35', '2023-06-22 11:43:35', '2024-06-22 11:43:35'),
('7cb82ad34b86c074848b26a1be304bf704bff04e44fe212bdbe1400d8dc55bb344bb6be47e4a50f3', 34, 1, 'love-love', '[]', 0, '2023-07-14 16:38:07', '2023-07-14 16:38:07', '2024-07-14 16:38:07'),
('7d39cdc8a55eb279bd13b6e38e4659ffd78aef58e49a59c3012c7d3a27c2b1b11253d4d34bfae312', 46, 1, 'love-love', '[]', 0, '2023-09-20 19:06:16', '2023-09-20 19:06:16', '2024-09-20 12:06:16'),
('7e0afafc1e0a87623f45699f75eddaf0491b1e9f98aee58cc2dd92c3a87929e8fb8173fbb4a73d37', 73, 1, 'love-love', '[]', 0, '2023-10-18 23:12:53', '2023-10-18 23:12:53', '2024-10-18 16:12:53'),
('7e2558ae05ea4b92d7014c4c6b7cd10e2d4c17b00da429902d274d055808e2488d9bc0600603dc95', 8, 1, 'love-love', '[]', 0, '2023-07-12 15:31:13', '2023-07-12 15:31:13', '2024-07-12 15:31:13'),
('7e27f60d7e9019f813c62e161f60bf51a43b0e77026401d6e3c78ce98aafe67ec5923d78822809fd', 72, 1, 'love-love', '[]', 0, '2023-09-12 17:16:53', '2023-09-12 17:16:53', '2024-09-12 10:16:53'),
('7e9427f566d951504199c1ae68379803d89ca5ee9d232f4a56cd0eb1c03539e529f1bff2a713c443', 4, 1, 'love-love', '[]', 0, '2023-06-23 07:06:46', '2023-06-23 07:06:46', '2024-06-23 07:06:46'),
('7ee7d4578712cea6b4dcec1bd332321f512fa306ff4d243105251aa2a9ce3356ffdff0d609436917', 8, 1, 'love-love', '[]', 0, '2023-06-27 15:57:42', '2023-06-27 15:57:42', '2024-06-27 15:57:42'),
('7fa9fafdf19fb16e1b63642175be7f5b631bb2de6b6795468b2f39a02729f50a0691093014395011', 45, 1, 'love-love', '[]', 0, '2023-07-25 09:16:11', '2023-07-25 09:16:11', '2024-07-25 09:16:11'),
('7fec0c1fc06b4d1804a4f2483dff0acf7867aa8fcf7160988a8ab21e06cc2d4787e12ef1dd8e64bf', 73, 1, 'love-love', '[]', 0, '2023-10-25 16:10:55', '2023-10-25 16:10:55', '2024-10-25 09:10:55'),
('8038a2c4523019406e3b88f1d106aabdb5f5a1a75bffaa18b3dcb1545ef6921c3c6776ed6b5ee66b', 47, 1, 'love-love', '[]', 0, '2023-07-27 13:30:12', '2023-07-27 13:30:12', '2024-07-27 13:30:12'),
('80f2e7d1540cf42afd740c21c4a233a0d9e5b0b194dc1f728a1d4b3a2bf8ec2552ff8b3c211f429a', 89, 1, 'love-love', '[]', 0, '2023-09-18 14:48:54', '2023-09-18 14:48:54', '2024-09-18 07:48:54'),
('80fafd227cdc92ad8d75062e58c764c59b4958d7facab2a568788602d4233dc024a6866a6be0adf1', 73, 1, 'love-love', '[]', 0, '2023-10-25 23:00:40', '2023-10-25 23:00:40', '2024-10-25 16:00:40'),
('8121a69f43318c0fa3c20479ab43c7d3535238e200f313f4f52115b0e6b2764b71b661a45c26d129', 4, 1, 'love-love', '[]', 0, '2023-06-22 14:32:45', '2023-06-22 14:32:45', '2024-06-22 14:32:45'),
('8132476aa9205e9c493c8d71fd000caf6ac5303014f062b7a3dd3c0ccc9b85968b40960f71a6a7fa', 73, 1, 'love-love', '[]', 0, '2023-10-26 20:29:08', '2023-10-26 20:29:08', '2024-10-26 13:29:08'),
('8178c4e480e8360cb26b8975715398fec594fc76de542cac54d2ec8181c5ff02d8ebdf06fc0cf35a', 42, 1, 'love-love', '[]', 0, '2023-07-27 08:30:00', '2023-07-27 08:30:00', '2024-07-27 08:30:00'),
('81d2d291fdcbbb67819e52fd7d967488454cbd6e206f8c69008273bbd284ed2c372a70cbd1852b22', 95, 1, 'love-love', '[]', 0, '2023-09-22 20:44:50', '2023-09-22 20:44:50', '2024-09-22 13:44:50'),
('81edd973a60ae454b832a0b6f3a1d77aad2366e8791aae42fe96a65b8bf048901bab5f3ad5ec2768', 4, 1, 'love-love', '[]', 0, '2023-06-22 13:33:34', '2023-06-22 13:33:34', '2024-06-22 13:33:34'),
('824288c65f1ce60b1e4bf314120874c4b04eace7a42ab888108adafe8fb50bb4fda30102777e2a15', 15, 1, 'love-love', '[]', 0, '2023-06-26 20:23:43', '2023-06-26 20:23:43', '2024-06-26 20:23:43'),
('82b243980a81dab9afef1ed08bcf3dc76905540d7d205f4e888997c1db522da877b6a8f698fa5611', 43, 1, 'love-love', '[]', 0, '2023-07-24 14:02:17', '2023-07-24 14:02:17', '2024-07-24 14:02:17'),
('82c19484afc6bbd8ba506ac3448831ab379e8a346f81124c0f591fb5134fceca49fdcb8bb2cf08b9', 2, 1, 'love-love', '[]', 0, '2023-06-26 12:08:44', '2023-06-26 12:08:44', '2024-06-26 12:08:44'),
('834f432dc3e984b06665cc5c30f0af04077e9d802e1262319e83b9c75674bc8b9278ba271b69c44d', 91, 1, 'love-love', '[]', 0, '2023-09-19 22:17:08', '2023-09-19 22:17:08', '2024-09-19 15:17:08'),
('8399f7d04147bf513abf09d67652f6f8b4a27dc87ade2a98df0f651c23edc4eae77916a5c6259405', 73, 1, 'love-love', '[]', 0, '2023-10-26 23:25:03', '2023-10-26 23:25:03', '2024-10-26 16:25:03'),
('83bbbcabd32e79d1279da4c314ae9f84e420c8c714cd537a7762ed6c50c10bafa6a47c2172dcadd0', 72, 1, 'love-love', '[]', 0, '2023-09-13 14:29:39', '2023-09-13 14:29:39', '2024-09-13 07:29:39'),
('842baaaebf4bfc1fb59689d3c91296b8e5db1f00fb9dd05651e960be6bc1d11082a3fda01deee411', 2, 1, 'love-love', '[]', 0, '2023-06-21 11:11:04', '2023-06-21 11:11:04', '2024-06-21 11:11:04'),
('844ed9c2c8160b492d82429098d939c212f90c75b3071be2bb72256ca2c1bc26d846b4aa8dbeed98', 4, 1, 'love-love', '[]', 0, '2023-07-24 08:00:03', '2023-07-24 08:00:03', '2024-07-24 08:00:03'),
('8487c814afd27b9bc1f3616be56af3f746e11a469bcb5de65a5b0d6f784de8e86030001c621fbc13', 67, 1, 'love-love', '[]', 0, '2023-09-01 18:17:54', '2023-09-01 18:17:54', '2024-09-01 11:17:54'),
('851045ec9c26530ca1dffcf5344571c74faa9cd6560806339db25842b8a0f0ca7152ad4ec9ae2a01', 29, 1, 'love-love', '[]', 0, '2023-07-14 14:29:32', '2023-07-14 14:29:32', '2024-07-14 14:29:32'),
('8519e2f337cb8da05b3d429f66ec91e368adfc986faa2d0ee129a172ff0d4e894e926ce8805ade58', 95, 1, 'love-love', '[]', 0, '2023-09-22 20:23:07', '2023-09-22 20:23:07', '2024-09-22 13:23:07'),
('8557204688c806f5757313a92924725e23255f7d91378db2d247d9c17ba9d3e1f8cb967ca75e476d', 94, 1, 'love-love', '[]', 0, '2023-09-21 14:48:08', '2023-09-21 14:48:08', '2024-09-21 07:48:08'),
('86b606a38b9d154cde7b4e9e97cb7caef1dbc01769e9c4edfa6b7bc3841e5f3fbf3e0291dd9d1411', 4, 1, 'love-love', '[]', 0, '2023-06-27 09:43:04', '2023-06-27 09:43:04', '2024-06-27 09:43:04'),
('86d6f7c8d492a9a14c63fb6993bc60b2d816681b670504c3a0214af2098d7b6dc0083ef69b1f2b76', 90, 1, 'love-love', '[]', 0, '2023-09-21 02:00:27', '2023-09-21 02:00:27', '2024-09-20 19:00:27'),
('873f772dcd3749576d504a1af69b5e9400c5bc221df155273aa506f5d33a9c9dff422cb7adf5c993', 73, 1, 'love-love', '[]', 0, '2023-10-27 18:38:39', '2023-10-27 18:38:40', '2024-10-27 11:38:39'),
('87f27e6ed7b08599351325d185085a75e9fcaa342fbafee2936b9dcea002c1283b420c54c7dbad1f', 73, 1, 'love-love', '[]', 0, '2023-10-26 22:28:08', '2023-10-26 22:28:08', '2024-10-26 15:28:08'),
('888b6d1e2f451f934edc3a88199b563781f074d3f3b049807179b711165c4a0093b94edeef6cc189', 5, 1, 'love-love', '[]', 0, '2023-07-24 12:18:57', '2023-07-24 12:18:57', '2024-07-24 12:18:57'),
('88ab48a0d70f75ad29d06c74ea320659d839d8990cfb5d341ecb5b49d66540ba4bd35d0f70cd926e', 4, 1, 'love-love', '[]', 0, '2023-06-22 13:30:06', '2023-06-22 13:30:06', '2024-06-22 13:30:06'),
('88e80036582894497260f3658b3632b10139e3e8eee13e6a85ce291678b0bd572e8865a61cb7c8c1', 8, 1, 'love-love', '[]', 0, '2023-06-27 18:04:40', '2023-06-27 18:04:40', '2024-06-27 18:04:40'),
('8996be4d53cee580c924cc06c8c4499a1421be5f4cfa7dea7352e818ba06ab0fcbc4e30a1eb11680', 8, 1, 'love-love', '[]', 0, '2023-07-05 22:21:32', '2023-07-05 22:21:32', '2024-07-05 22:21:32'),
('89f06c71e371194235404b70f8f884853fc40a912d32c6983f95de143a80d45447418e5bc720ae24', 4, 1, 'love-love', '[]', 0, '2023-06-26 13:23:04', '2023-06-26 13:23:04', '2024-06-26 13:23:04'),
('8a19c33afb2a97a2e0db75297c534a9302483306718b77ca980736ea1e2e005a8cc36cf16a49b138', 73, 1, 'love-love', '[]', 0, '2023-10-26 16:41:08', '2023-10-26 16:41:08', '2024-10-26 09:41:08'),
('8a3c977e9ce135e1f73d201530fc640e655dcbfb483d57d0cf224babf73301d4461d52dfaa8f57f6', 28, 1, 'love-love', '[]', 0, '2023-07-12 15:45:10', '2023-07-12 15:45:10', '2024-07-12 15:45:10'),
('8a6f848251af536e9bee359a74cd455bc19b82f928f7e045da3cf5ab9500b6518bfcb743d17a3652', 4, 1, 'love-love', '[]', 0, '2023-06-22 14:23:43', '2023-06-22 14:23:43', '2024-06-22 14:23:43'),
('8ab37a981b147ae3909b4be1decba33243b2e0d614e156c9aed60ee7a894671342b69cc39bc76cf2', 66, 1, 'love-love', '[]', 0, '2023-09-01 18:14:58', '2023-09-01 18:14:58', '2024-09-01 11:14:58'),
('8ada33165b6565baacd8e6c60bcde18745c239eff468416a8252bca0bcd93d429cb169c03b13886e', 90, 1, 'love-love', '[]', 0, '2023-09-19 22:08:53', '2023-09-19 22:08:53', '2024-09-19 15:08:53'),
('8b73db584b1675dcd429f5e98a88b8ed678fb3a22c5e5c8cc8d872ad1dc9da1d81665616184c016b', 28, 1, 'love-love', '[]', 0, '2023-07-12 16:31:16', '2023-07-12 16:31:16', '2024-07-12 16:31:16'),
('8b7c49afd49e7318e37b1854b3173fb97f0c682e781e5de5411f37e9d7e0c1a5032b7131f5a33f19', 72, 1, 'love-love', '[]', 0, '2023-09-13 17:04:59', '2023-09-13 17:04:59', '2024-09-13 10:04:59'),
('8bab21bf40fde2667fbc6c899769537e0c9f07d1900e1e342beb603a4f923b05ca8737013bca6277', 3, 1, 'love-love', '[]', 0, '2023-06-26 15:19:01', '2023-06-26 15:19:01', '2024-06-26 15:19:01'),
('8bae35e25d9699cd33e814fb8541da1626663c9b55c9a1e2115ce24417da4cc4ec9e78b8398fd81a', 4, 1, 'love-love', '[]', 0, '2023-07-20 07:02:01', '2023-07-20 07:02:01', '2024-07-20 07:02:01'),
('8baf61be30f0ad529e1fd45ef4ff94402af7b19ad2b214b7a6ec068211e2f51cd6ce20568bd7f0be', 8, 1, 'love-love', '[]', 0, '2023-06-23 17:52:22', '2023-06-23 17:52:22', '2024-06-23 17:52:22'),
('8c453e0730ba139a2289025a7633fe524e6a2e4a0b4aed7f578e3adee0a6b6b6e39b041f793f2e1d', 50, 1, 'love-love', '[]', 0, '2023-07-31 12:37:31', '2023-07-31 12:37:31', '2024-07-31 12:37:31'),
('8c5d1b03a86e3b02891951f0f39b0f6db22fbd1a432a047bf89d9f8028aa76f414fd5c4667b520ad', 8, 1, 'love-love', '[]', 0, '2023-06-23 17:46:36', '2023-06-23 17:46:36', '2024-06-23 17:46:36'),
('8c78475f72d518d1e4cc7fbb8519d204870cb23b51ed8a6947b6aab45b71bfad2b89b1942839287e', 4, 1, 'love-love', '[]', 0, '2023-07-19 12:15:00', '2023-07-19 12:15:00', '2024-07-19 12:15:00'),
('8d1f088110d8c0a8e59c0bdaefe48f01c2f19fe8785dd02eaec78b23d37b8805df714f4d7e89d660', 4, 1, 'love-love', '[]', 0, '2023-06-27 11:10:35', '2023-06-27 11:10:35', '2024-06-27 11:10:35'),
('8d226aa56163cef06d1a4c3f82b1f1901be172c3a292ce4c93ae91cb21013318ad507389f482e515', 4, 1, 'love-love', '[]', 0, '2023-06-16 07:24:29', '2023-06-16 07:24:29', '2024-06-16 07:24:29'),
('8d4a9aec2c9c44fce298e5cee4818e53f99c0a317758c79956e1db90e7b7a124fc1b6f7e119fb61e', 4, 1, 'love-love', '[]', 0, '2023-06-27 10:46:21', '2023-06-27 10:46:21', '2024-06-27 10:46:21'),
('8d6da646cb787247cc661a98ff9e986112d651da1d630b398a2e9dd5c72804db083b1ec33848580f', 15, 1, 'love-love', '[]', 0, '2023-07-14 16:05:30', '2023-07-14 16:05:30', '2024-07-14 16:05:30'),
('8e219db5c55d99259c9d7aeea4651c20e7c3dcff8a4cc8d5ed9d504ab948c57945a8cc982479f60f', 73, 1, 'love-love', '[]', 0, '2023-10-25 22:15:02', '2023-10-25 22:15:02', '2024-10-25 15:15:02'),
('8f3085349706b05a39e7c83b1492a1cbdb1cf72578c5aeb56c589797529d4e4afe3738e2ca5ea325', 95, 1, 'love-love', '[]', 0, '2023-09-22 18:11:19', '2023-09-22 18:11:19', '2024-09-22 11:11:19'),
('8fc3804f699662a6c97375d49b9810e935727f4fd6acb9d7c425485347fb108174093aff2957c693', 4, 1, 'love-love', '[]', 0, '2023-06-23 07:22:54', '2023-06-23 07:22:54', '2024-06-23 07:22:54'),
('9106b64eb36ee03ebb38cc1de2e0f0a1f64a85b41029a12888442480e36121fcfa8c1e5d002342d5', 2, 1, 'love-love', '[]', 0, '2023-06-23 11:01:33', '2023-06-23 11:01:33', '2024-06-23 11:01:33'),
('91c58223083db706d855735125e1cf329d5f62f37f0ca1ec234a6ce28e62bfec0ba19dfce521dfe5', 1, 1, 'love-love', '[]', 0, '2023-06-26 16:27:41', '2023-06-26 16:27:41', '2024-06-26 16:27:41'),
('921b0445a8925573feb2bf28c04b4c84f04b6bb610e4f9732bd90774f057a83d90a09a32f2b9c5e8', 90, 1, 'love-love', '[]', 0, '2023-09-22 23:08:27', '2023-09-22 23:08:27', '2024-09-22 16:08:27'),
('922798deaf6805bccb83644335145d06405a464f46ff2da42664cb280efbd67f239b521c816814de', 95, 1, 'love-love', '[]', 0, '2023-09-20 20:42:07', '2023-09-20 20:42:07', '2024-09-20 13:42:07'),
('92e2ad96cf6d8c4d967c2427e2078c0adebb4e1964ef0fe7082314893dbbd3a9bf7b6658382bc31c', 95, 1, 'love-love', '[]', 0, '2023-09-21 14:15:46', '2023-09-21 14:15:46', '2024-09-21 07:15:46'),
('92febd94819c96eaa0cc0f8b0bc8c99962931d73d3fc5e22bbf6066e58fd9b76c5c16b51fddaea1f', 72, 1, 'love-love', '[]', 0, '2023-09-21 14:34:36', '2023-09-21 14:34:36', '2024-09-21 07:34:36'),
('9329c09f8bf9a3a702556a559d1f42f3067853b5fcf0d22b624e0a22e73d9c44e39564f7564d7f1c', 18, 1, 'love-love', '[]', 0, '2023-07-04 15:51:44', '2023-07-04 15:51:44', '2024-07-04 15:51:44'),
('933d6dee36969ef0e365f267501b7591aa2105825c891a4e1b91dda38d3fc2c71bfe29f29a72fc69', 58, 1, 'love-love', '[]', 0, '2023-10-25 07:48:18', '2023-10-25 07:48:18', '2024-10-25 00:48:18'),
('939dce9e952dbe62dfded41bf1f06e10b04a286b3dd2df05ba47374223f7f11aeebff2d781d9ca3c', 73, 1, 'love-love', '[]', 0, '2023-09-18 14:56:39', '2023-09-18 14:56:39', '2024-09-18 07:56:39'),
('93b9cbc04a703b49a2dc06c364b10983259b45df115acea6353e75256ad8076f130e47dba0a767ba', 77, 1, 'love-love', '[]', 0, '2023-09-18 14:12:52', '2023-09-18 14:12:52', '2024-09-18 07:12:52'),
('940c1e0a619b9d2ecd849ad867cd0f7ac705d610bdc0a9060b87322ef9ac296c9b9f560eff0633c7', 8, 1, 'love-love', '[]', 0, '2023-06-27 17:22:21', '2023-06-27 17:22:21', '2024-06-27 17:22:21'),
('9423bf356d5ef0d5b3ba4999b525ea4735796f3770994de5552f87a84a6bb1fb9173ac383389a9b8', 4, 1, 'love-love', '[]', 0, '2023-06-22 11:06:12', '2023-06-22 11:06:12', '2024-06-22 11:06:12'),
('947ceed5a43e987fd852ae67b1a37988a1124b539c3e8fd3c51ad8b4446ca2dc368e0e489153c80a', 4, 1, 'love-love', '[]', 0, '2023-07-14 15:12:14', '2023-07-14 15:12:14', '2024-07-14 15:12:14'),
('94b262aaa1f188b7cdbde50c94cd16799786edf556f5ec5f06b471fb8870ed913c612789593500df', 4, 1, 'love-love', '[]', 0, '2023-06-22 08:44:03', '2023-06-22 08:44:03', '2024-06-22 08:44:03'),
('94bde8ee9fb2f2370146f75a502e006e80d6546b256dbfedf3a5e2affc04966e7e5e3dd2e0f560a7', 14, 1, 'love-love', '[]', 0, '2023-06-27 16:31:02', '2023-06-27 16:31:02', '2024-06-27 16:31:02'),
('94ff3eb5e087ece26781225eb1fe8a828c277a1e4a7966be6449cce5f10b9ef7fbc44b211200b017', 15, 1, 'love-love', '[]', 0, '2023-06-27 17:18:12', '2023-06-27 17:18:12', '2024-06-27 17:18:12'),
('95191d203c327944f86edba821c4674e5a9b686f57c6a96367a79118aa9de7b6e9bee172f4fe021b', 24, 1, 'love-love', '[]', 0, '2023-07-05 09:46:11', '2023-07-05 09:46:11', '2024-07-05 09:46:11'),
('95a87dc1e5326132e61006d13a646f3702084a752bd6fe6742ce2c77ad240d85e1c481a8d61a26fc', 4, 1, 'love-love', '[]', 0, '2023-07-20 12:10:40', '2023-07-20 12:10:40', '2024-07-20 12:10:40'),
('95c4f965e78416326fec53ac0ef62d27925c85222c879bb4de01210db3eb4fac786ea2e480f3644d', 95, 1, 'love-love', '[]', 0, '2023-09-20 19:53:58', '2023-09-20 19:53:58', '2024-09-20 12:53:58'),
('95e2ae787d29630814947a5a028b02cdb839e23a8195e8edd7e86e62ab1fa1c27c11c201214b49d8', 42, 1, 'love-love', '[]', 0, '2023-08-08 20:55:25', '2023-08-08 20:55:25', '2024-08-08 13:55:25'),
('95ef852c1d9cb89f2c06a0e2e3901d3953efcea32ac50437a052f107d838533765c949580f2ebbda', 49, 1, 'love-love', '[]', 0, '2023-09-20 01:18:56', '2023-09-20 01:18:56', '2024-09-19 18:18:56'),
('9603385d6fd7e1f526063e469e0a1766fbec20f2a67a036db2d216b78cdd4fce8086e0efbf791a6e', 8, 1, 'love-love', '[]', 0, '2023-06-26 17:54:40', '2023-06-26 17:54:40', '2024-06-26 17:54:40'),
('9617da702393d37f903281f2806f22ab44ada3ae57d661d2339a8d64d0d4b5ff9d762c00c9bd01e4', 8, 1, 'love-love', '[]', 0, '2023-07-14 23:10:49', '2023-07-14 23:10:49', '2024-07-14 23:10:49'),
('96196414522ea8b8b201df8e842148abefb7ba44d62cdaf02a30949e4e9c3e4b04d2d401958080e3', 94, 1, 'love-love', '[]', 0, '2023-09-22 15:46:15', '2023-09-22 15:46:15', '2024-09-22 08:46:15'),
('9623da653d7f764237953cb6725819b02a0a67559622f741220c62a41ec3077778e672d1af17ec76', 4, 1, 'love-love', '[]', 0, '2023-06-23 13:25:47', '2023-06-23 13:25:47', '2024-06-23 13:25:47'),
('964968b648123eb71e2c5b36ded0d5371eced08f981ff8f2e7eb2cca77b107d2ac1e369668f58989', 4, 1, 'love-love', '[]', 0, '2023-06-15 11:59:53', '2023-06-15 11:59:53', '2024-06-15 11:59:53'),
('966fa7e96de27ebda3d5a63c59423a765e102eb8f93d9f74ccb26b2519659a280fa724fa7c4885a3', 8, 1, 'love-love', '[]', 0, '2023-06-26 18:31:02', '2023-06-26 18:31:02', '2024-06-26 18:31:02'),
('97dc5bddda8ca395899e4338d9960d7b5dc76ed481f19bff5e96330e7614f199aa5f2db973b7add0', 76, 1, 'love-love', '[]', 0, '2023-09-18 14:03:21', '2023-09-18 14:03:21', '2024-09-18 07:03:21'),
('98a5ebd43371c130ea8a8b718637ecb3cc4b69a02db0212ab8752dbc0e8398ec4653ac8e46428fd2', 4, 1, 'love-love', '[]', 0, '2023-07-20 14:58:11', '2023-07-20 14:58:11', '2024-07-20 14:58:11'),
('98b1bc85cc1ef3bac241eec74fed430346fdbefb47c84402d76f40e6c4b033acb14dbf90806e20fe', 55, 1, 'love-love', '[]', 0, '2023-07-27 14:56:06', '2023-07-27 14:56:06', '2024-07-27 14:56:06'),
('98b95f18c184bcb84d8f1d1d1d77b1a961de6d5831b28467d03db4cd1d8e18f78b528c1329be4339', 102, 1, 'love-love', '[]', 0, '2023-10-24 06:45:39', '2023-10-24 06:45:39', '2024-10-23 23:45:39'),
('98e44463a85e5912bdcef9ec2dfacb2ee545b1e24c1551353c3b9b9c3df2d2535c807c1a8ca9353b', 73, 1, 'love-love', '[]', 0, '2023-10-31 00:23:53', '2023-10-31 00:23:53', '2024-10-30 17:23:53'),
('98e8d8247bec47b1b5c59692b9877ee22b5e29f171da246f002b21f3989abdd12331c942dfbc4da4', 95, 1, 'love-love', '[]', 0, '2023-09-22 17:45:18', '2023-09-22 17:45:18', '2024-09-22 10:45:18'),
('99349611785849ddbe3f926a61d9570caa0f7f51a278f37954f7e446edc23e1e3e6b32b31d012b30', 4, 1, 'love-love', '[]', 0, '2023-07-04 13:25:54', '2023-07-04 13:25:54', '2024-07-04 13:25:54'),
('99559783a9d7080a2e964113914de5ad90e018069435be7df6bd91c33034e2725e40517c371c6040', 72, 1, 'love-love', '[]', 0, '2023-10-25 15:52:21', '2023-10-25 15:52:21', '2024-10-25 08:52:21'),
('998699c4cd92fa5d17c7bf4778aaebf7d0934842cb0a3702f9f5445603543d365e13f4de197f279c', 42, 1, 'love-love', '[]', 0, '2023-08-08 21:16:54', '2023-08-08 21:16:54', '2024-08-08 14:16:54'),
('9a5b049d5f9beebb6d058a0d514733767514ee9054c6ac7d15d8c898fdef7936ddf08006022ed018', 72, 1, 'love-love', '[]', 0, '2023-09-21 17:14:45', '2023-09-21 17:14:45', '2024-09-21 10:14:45'),
('9adf37dd460e9ce2ca8c84af727ad8e2bace8857fd943c38493c1f3a745e3a895af84ce5aed14371', 45, 1, 'love-love', '[]', 0, '2023-07-27 14:43:14', '2023-07-27 14:43:14', '2024-07-27 14:43:14'),
('9af32ca838e244effe4a9d3e968d079bb87c67b3a6652b64174c4c79568dcd107118bcdff3ac7c7f', 72, 1, 'love-love', '[]', 0, '2023-09-22 22:57:59', '2023-09-22 22:57:59', '2024-09-22 15:57:59'),
('9b8fe1d48ca836e9719648a60284bada017d1ccdf7b5d45f0150a4fa0ad5736bbb160c8fa5552480', 4, 1, 'love-love', '[]', 0, '2023-06-15 14:52:53', '2023-06-15 14:52:53', '2024-06-15 14:52:53'),
('9bb82359ce35d3907431127eda3817f51d54d3cae70fd8e631be2c3427a8737100c4ad23c5897a6e', 46, 1, 'love-love', '[]', 0, '2023-07-27 14:05:52', '2023-07-27 14:05:52', '2024-07-27 14:05:52'),
('9bcf2ae20d9d566021ac148d345b4e0fb4752083ca985c30a66e315e940357271270bfc2206125f1', 4, 1, 'love-love', '[]', 0, '2023-06-27 06:41:54', '2023-06-27 06:41:54', '2024-06-27 06:41:54'),
('9bdc35f98d7ebd474089184d9ffa0889f91f422cc719d891f77dbe0f676afbc237424bf43441d307', 14, 1, 'love-love', '[]', 0, '2023-06-26 18:28:23', '2023-06-26 18:28:23', '2024-06-26 18:28:23'),
('9c0be221439272f403e1929f7e250eed39bf6f30908abacb31ee7cb2a4d6590d9bd78e9bd8027a04', 4, 1, 'love-love', '[]', 0, '2023-06-16 06:47:25', '2023-06-16 06:47:25', '2024-06-16 06:47:25'),
('9c4cb0f3124e41572895b9ec3dea65042faab502050db14b759fa5de613e39f82d9e3bc2cb6e92c2', 4, 1, 'love-love', '[]', 0, '2023-07-04 13:04:11', '2023-07-04 13:04:11', '2024-07-04 13:04:11'),
('9c56feb0defbd2ab3ca345f104f4cae3a735268e3352f8801a173fdc3b0ff656ab648af5fb6a90d7', 3, 1, 'love-love', '[]', 0, '2023-06-26 14:58:27', '2023-06-26 14:58:27', '2024-06-26 14:58:27'),
('9c6ce8fdf23de1b96c02df950cec48339066d25deb79454ddc33072a0a32da12d548557d0401effe', 72, 1, 'love-love', '[]', 0, '2023-10-09 16:19:15', '2023-10-09 16:19:15', '2024-10-09 09:19:15'),
('9e0e3b765e61704f8b3360aee6e6cc4feee2b75e4f0c854b9368ee7ea3cbda41a41faaa4c090004b', 95, 1, 'love-love', '[]', 0, '2023-09-21 16:44:50', '2023-09-21 16:44:50', '2024-09-21 09:44:50'),
('9e8e8733fce2cf006069fc000666a7ccddb101ee7994da06c73fbba3f3d1817bd3bd486ef7703e2a', 4, 1, 'love-love', '[]', 0, '2023-07-03 10:30:29', '2023-07-03 10:30:29', '2024-07-03 10:30:29'),
('9efedcb7875dca754fd591f9b950bc52a11f11a65f31c723e8380b417f9e173ed81ffb90d093523a', 4, 1, 'love-love', '[]', 0, '2023-07-14 12:57:41', '2023-07-14 12:57:41', '2024-07-14 12:57:41'),
('9f1a511e299c4f840a35768c40b770fb74aece933fe0da8c4756aa9f3aa39cdc9f456efaf7fcafa9', 37, 1, 'love-love', '[]', 0, '2023-07-15 00:01:34', '2023-07-15 00:01:34', '2024-07-15 00:01:34'),
('9fcec23d28fc2959296c43138e11989044bc06cbef809518c894baac2cde09c8c4d7bd779bde6fd5', 4, 1, 'love-love', '[]', 0, '2023-06-23 07:30:28', '2023-06-23 07:30:28', '2024-06-23 07:30:28'),
('a040c6b1df83503643dec6ad483a99b9162054ce5d1a346bc54eb0318b3b747729340cfa836d47f2', 4, 1, 'love-love', '[]', 0, '2023-07-14 12:59:01', '2023-07-14 12:59:01', '2024-07-14 12:59:01'),
('a041b79a1af8fc06f81b4479fa69987ebf90d863cd1af5ddbf037c53783557ca92a2e3929209c49e', 102, 1, 'love-love', '[]', 0, '2023-10-31 00:59:33', '2023-10-31 00:59:33', '2024-10-30 17:59:33'),
('a0d0babfeeabed7c15bf3a4ebd841836e6e918af1bee93327a75c339b8f6813007926de123deb714', 4, 1, 'love-love', '[]', 0, '2023-06-27 07:32:41', '2023-06-27 07:32:41', '2024-06-27 07:32:41'),
('a0df804580c361c7c83f387844793d6ad7d6585371975ce2bd852660da124059e2f8259741ddf03a', 90, 1, 'love-love', '[]', 0, '2023-09-21 01:57:00', '2023-09-21 01:57:00', '2024-09-20 18:57:00'),
('a10afb8cbd238a54ff3a3f173561fe3c755a8a11897702dc797638c3086d6ee2fa0411caa4f687dd', 20, 1, 'love-love', '[]', 0, '2023-07-05 22:44:03', '2023-07-05 22:44:03', '2024-07-05 22:44:03'),
('a12b116c0b0f90fdf5b114479b6e184c555cedb8be98afab30aa947e17e5c2cc40fef1da07c75d5d', 94, 1, 'love-love', '[]', 0, '2023-09-20 21:06:43', '2023-09-20 21:06:43', '2024-09-20 14:06:43'),
('a13cc109495bc9e037b31c65d5f5670cd34dfba6b3b74d3dcc6493057fbd587230651c5d9e2cc98b', 4, 1, 'love-love', '[]', 0, '2023-07-04 13:23:23', '2023-07-04 13:23:23', '2024-07-04 13:23:23'),
('a17e6171c375cac92cce8d769d3f470623ebc871a3b8c9b076eda115089181c096914dad8c829da6', 4, 1, 'love-love', '[]', 0, '2023-06-26 08:04:24', '2023-06-26 08:04:24', '2024-06-26 08:04:24'),
('a1a404553e2bd5135298fea5f975f1634703f97e1e9886bfaba9c5514c7d7aff26b1a4e818efd820', 88, 1, 'love-love', '[]', 0, '2023-09-18 14:46:37', '2023-09-18 14:46:37', '2024-09-18 07:46:37'),
('a1bef710616f2d5db44981c3279271ba86ecdffdb612c2a65702b08b30aeabba19720f129748f4b4', 4, 1, 'love-love', '[]', 0, '2023-07-05 08:27:06', '2023-07-05 08:27:06', '2024-07-05 08:27:06'),
('a1f9bff8d299ff519a506689413f547db8edd3638bb7c6bebfc990c1ce7ab784b2a66361d1d71bc4', 4, 1, 'love-love', '[]', 0, '2023-07-20 13:15:59', '2023-07-20 13:15:59', '2024-07-20 13:15:59'),
('a22ed40751cc8623ad77557cdfd8e4cec421a2250790a52da9b0057a18a83a045fe8f0acff1aed47', 4, 1, 'love-love', '[]', 0, '2023-06-22 14:07:16', '2023-06-22 14:07:16', '2024-06-22 14:07:16'),
('a237a169497e4b7d2fed82ff15c86efb25ba144fe1e3857d866dad2f23baf63fcd22cb7b9996c20f', 2, 1, 'love-love', '[]', 0, '2023-06-23 07:51:30', '2023-06-23 07:51:30', '2024-06-23 07:51:30'),
('a240c1efd925b406c6d1b050c8aaf84f63e5f388d8b675b797b9870e18ba8be8685ebd84813423e9', 4, 1, 'love-love', '[]', 0, '2023-07-05 11:53:48', '2023-07-05 11:53:48', '2024-07-05 11:53:48'),
('a295a3f68a3941af374144e985170085dda79fe1001395dfe89c727595a8d2b0e2c309cdbea8675c', 46, 1, 'love-love', '[]', 0, '2023-07-26 10:14:32', '2023-07-26 10:14:32', '2024-07-26 10:14:32'),
('a2aa12899701d4c51aee4bfc52ec98b1cb36ebeded4806b609dd229d60611f9531e818c2c64cf357', 8, 1, 'love-love', '[]', 0, '2023-07-17 19:00:37', '2023-07-17 19:00:37', '2024-07-17 19:00:37'),
('a2b94218229c6ca31973d8d4da948c03175bf7866146fe7bd1632e3ddd15828b2f9104b1f37ec944', 94, 1, 'love-love', '[]', 0, '2023-09-21 14:11:24', '2023-09-21 14:11:24', '2024-09-21 07:11:24'),
('a3e35561395ed49c4ae626a66f2414d0672fa0c47ee929f0391c9fa907d0bbe850cb71da5e3aedfe', 3, 1, 'love-love', '[]', 0, '2023-07-20 15:14:59', '2023-07-20 15:14:59', '2024-07-20 15:14:59'),
('a41ccfb216041bf51a13b70246243c4e26060553b22b08125bc4e3db7eec721fe4b67795c04b9cc4', 8, 1, 'love-love', '[]', 0, '2023-07-14 21:58:21', '2023-07-14 21:58:21', '2024-07-14 21:58:21'),
('a43d88e3d9015188e8e39b833f4306732455d0596cf862ce9353bd2b89c46ed2113c379c6e0a9123', 50, 1, 'love-love', '[]', 0, '2023-07-26 12:04:07', '2023-07-26 12:04:07', '2024-07-26 12:04:07'),
('a45893ca1b8c4bb3d19593d0f72a91e33761bd7e1638eca8db0b6c2d83123cd1996f1a934e689570', 94, 1, 'love-love', '[]', 0, '2023-09-26 13:02:38', '2023-09-26 13:02:38', '2024-09-26 06:02:38'),
('a45fb357067d5ecf73c2b3a856022e58da157799d3316ab13ea850f7fccbd0cccd729f394de760dc', 83, 1, 'love-love', '[]', 0, '2023-09-18 14:30:03', '2023-09-18 14:30:03', '2024-09-18 07:30:03'),
('a4850337288d35cc814ca4d49af4427e817c3b0691ebb177fba8c513ecab7ac7402f9d34bbad9865', 46, 1, 'love-love', '[]', 0, '2023-07-25 11:43:11', '2023-07-25 11:43:11', '2024-07-25 11:43:11'),
('a52a095b25477fa3de4918faa71bdd50ddfeef815d2d7bff3ae57a9d40a1a498761f672b43188f4d', 4, 1, 'love-love', '[]', 0, '2023-06-23 15:12:05', '2023-06-23 15:12:05', '2024-06-23 15:12:05'),
('a5a2e52f4c244e4236cef86874ebdb56bd5e09bee055abc43c22b19bcf5341b36d0abf18413306a1', 70, 1, 'love-love', '[]', 0, '2023-09-01 18:43:09', '2023-09-01 18:43:09', '2024-09-01 11:43:09'),
('a5b02b145a1787a60a60557cd6f9e8ef8feab31c2f6ab9941bce99c1bed377d8c09a6d50374c4237', 2, 1, 'love-love', '[]', 0, '2023-06-23 08:04:20', '2023-06-23 08:04:20', '2024-06-23 08:04:20'),
('a5e28b86c3282ee94edf68e88427b69722e018ec6f3799666fb9864b015c090d1e16613821ce7f11', 94, 1, 'love-love', '[]', 0, '2023-09-26 12:59:24', '2023-09-26 12:59:24', '2024-09-26 05:59:24'),
('a6f4fe29767e0f832157ead12dee941aa5e8b2c8f68c988ed6938818b81a2e831715d08ab530c899', 4, 1, 'love-love', '[]', 0, '2023-07-20 13:20:50', '2023-07-20 13:20:50', '2024-07-20 13:20:50'),
('a7d39b0e2389f243572fc35213d8a36b02a3cac7c39c16be6b841508e6638a236d027fbf8b61275f', 46, 1, 'love-love', '[]', 0, '2023-07-27 08:19:43', '2023-07-27 08:19:43', '2024-07-27 08:19:43'),
('a7f87afcc87ab6c5d4c2ab5e5a5daa8d8600213c06b19b5b53e118d198cf483b023ccb9350722442', 2, 1, 'love-love', '[]', 0, '2023-06-21 11:12:18', '2023-06-21 11:12:18', '2024-06-21 11:12:18'),
('a8235ebd325a16b4e2f2808dd71fe86f32fccf3ab70cb7d07cb730c2165f6736fe83c21525cf1c27', 106, 1, 'love-love', '[]', 0, '2023-10-27 22:25:02', '2023-10-27 22:25:02', '2024-10-27 15:25:02'),
('a8600ea6e54e801ba7aceac5b2e74307c6f06b7129b2cfd3920ce4a550b076f25efba5bc8048ce22', 52, 1, 'love-love', '[]', 0, '2023-07-31 12:36:10', '2023-07-31 12:36:10', '2024-07-31 12:36:10'),
('a89cc8b2fdefa853871595653513cbe5e4287fcd88ce4b9b5f79317d08f3b15c3aec5abb1d1cbf1f', 4, 1, 'love-love', '[]', 0, '2023-06-23 07:31:46', '2023-06-23 07:31:46', '2024-06-23 07:31:46'),
('a89ed793ba4b9d1db0e472a0a17bf573cd057e7f169965773b8cbc111d33c2dc04d6725025665998', 4, 1, 'love-love', '[]', 0, '2023-07-20 13:09:36', '2023-07-20 13:09:36', '2024-07-20 13:09:36'),
('a99fdd0fb1296e06344ff0d1a1209a7deb86153d1ccd60ff389f540d88e033bbbde73b5abd18e96e', 73, 1, 'love-love', '[]', 0, '2023-10-27 18:58:55', '2023-10-27 18:58:55', '2024-10-27 11:58:55'),
('aa4fa8efcc9ae791d1f5adc90eb0434f8096b96ed6467b09d83242dcf043e005cd3b5c61ecba4436', 49, 1, 'love-love', '[]', 0, '2023-07-31 16:04:30', '2023-07-31 16:04:30', '2024-07-31 16:04:30'),
('aa705a7ca8a8d7c19d2441ff780441ef6f3521236a4a097eb14ddd543f7af728b21f8550a0781965', 42, 1, 'love-love', '[]', 0, '2023-07-24 14:18:32', '2023-07-24 14:18:32', '2024-07-24 14:18:32'),
('aa9688126c4be37a4326ad4ab6533200fcc2c52e48b815ef71b671f22bd19ec960fb6289b8342fcf', 4, 1, 'love-love', '[]', 0, '2023-07-14 14:20:33', '2023-07-14 14:20:33', '2024-07-14 14:20:33'),
('aabee0521b26a182cdfc218f953814b2c6e170b7101fbbb6ebb341288dd4c0c242427a3d5bd40deb', 102, 1, 'love-love', '[]', 0, '2023-10-25 05:58:41', '2023-10-25 05:58:41', '2024-10-24 22:58:41'),
('ab1ac38a62745b00c15b97967c267028b4ebf57176e513ca98373c375f1fbcfee2bdd675f0223f65', 46, 1, 'love-love', '[]', 0, '2023-07-25 11:21:56', '2023-07-25 11:21:56', '2024-07-25 11:21:56'),
('aba1117552f5c0307bd57805f77b9110508f706457b4ebb3d37fb457e3c91031f8636639e9c8e650', 15, 1, 'love-love', '[]', 0, '2023-07-06 17:24:46', '2023-07-06 17:24:46', '2024-07-06 17:24:46'),
('abf4c6962c6193d1e7f90adb7ac9cb0f9d02d4ee54b7c321fca3eeb64f3ffbf41bcac6563d9cd4a8', 42, 1, 'love-love', '[]', 0, '2023-08-08 21:14:34', '2023-08-08 21:14:34', '2024-08-08 14:14:34'),
('abfeec2c25ec1cef6d72ccac4c8ed190c56793566371742838012eee8541bab094f7b56a05070077', 27, 1, 'love-love', '[]', 0, '2023-07-12 15:37:27', '2023-07-12 15:37:27', '2024-07-12 15:37:27'),
('ac49f8a3fbecfd94497a69bfaf14462cc17c804869f919d00482ac66ba62997399ceb2638a6a1426', 95, 1, 'love-love', '[]', 0, '2023-09-21 14:39:07', '2023-09-21 14:39:07', '2024-09-21 07:39:07'),
('acb02aeffd82cf78608f7e45c898d8e19ca4bc9b1e50e8e095a339d863987b975168240af6518c68', 72, 1, 'love-love', '[]', 0, '2023-09-20 12:54:48', '2023-09-20 12:54:48', '2024-09-20 05:54:48'),
('ad63cb80bc84c900b11b2555b3e542e0adab4203eb147edf66afc4c2b707ca1871be625eb1eb0e2f', 46, 1, 'love-love', '[]', 0, '2023-07-27 10:09:30', '2023-07-27 10:09:30', '2024-07-27 10:09:30'),
('ad7531b3b8244621095d3ded919fcfeb70f585598acd85cf24b31a4900a678cc9bfdf1b11d23a9ce', 15, 1, 'love-love', '[]', 0, '2023-06-27 17:23:30', '2023-06-27 17:23:30', '2024-06-27 17:23:30'),
('ad8a674c342614bca16613cf472669a043fecf5e00718fd4ae58b2eaddba7df4b13a2d5ef25ef3b2', 37, 1, 'love-love', '[]', 0, '2023-07-14 22:34:47', '2023-07-14 22:34:47', '2024-07-14 22:34:47'),
('ad970d8972458cccda45606d5a1bc7b620eb8b8712baab5a7b0363e9ddb7880543ada838fe7eef70', 94, 1, 'love-love', '[]', 0, '2023-09-22 18:27:27', '2023-09-22 18:27:27', '2024-09-22 11:27:27'),
('ada8a244f32b3842992dd4bfada6e4306d1683f9faad3d8af9ce72f77aec71c81fe3bb6a8abec9ab', 73, 1, 'love-love', '[]', 0, '2023-10-26 22:10:22', '2023-10-26 22:10:22', '2024-10-26 15:10:22'),
('ade4349ac805aa8fc8a72ab940e483cf99c1cd8106d6e8b9bfb853e8755853c06be4dcdf6980fb9a', 8, 1, 'love-love', '[]', 0, '2023-07-22 10:04:13', '2023-07-22 10:04:13', '2024-07-22 10:04:13'),
('ae46f4776eeb33e316879c0ac4bb842e6f1c3b046a79c43907528e94417932aa542322a155a70e90', 4, 1, 'love-love', '[]', 0, '2023-07-19 13:25:51', '2023-07-19 13:25:51', '2024-07-19 13:25:51'),
('afc29a34fb8341a820b8f7319cf1f442e9f166fde90c68c1ce9a830c19d22e02987ba19d08d6e6f8', 95, 1, 'love-love', '[]', 0, '2023-09-20 21:02:20', '2023-09-20 21:02:20', '2024-09-20 14:02:20'),
('afd3819cfb9a1bcd928c4ca7773de7c829db1104a923f6b1fc05a5df2be92cc400aa9bdc3c3613e3', 1, 1, 'love-love', '[]', 0, '2023-10-24 06:42:14', '2023-10-24 06:42:14', '2024-10-23 23:42:14'),
('b0bc11986a25834eb2fa1951fae5f1093ac97a2587f97badd742bb54f8836d78ce69c3ea2e190dc3', 46, 1, 'love-love', '[]', 0, '2023-07-25 10:13:14', '2023-07-25 10:13:14', '2024-07-25 10:13:14'),
('b0c2d36026ba9ef7446860d662c01f0714ff49836c0086817fffbb7359f3d1bfc88cb3029cf4a121', 46, 1, 'love-love', '[]', 0, '2023-07-27 13:32:14', '2023-07-27 13:32:14', '2024-07-27 13:32:14'),
('b0e8d493cfc8def7a330c3025ac710c8730d6c374453f4e34a6a5a1409a2dc6ed6e22f132253b033', 73, 1, 'love-love', '[]', 0, '2023-10-13 23:46:18', '2023-10-13 23:46:18', '2024-10-13 16:46:18'),
('b1814140bb695e623eb32bd97ea78e883d70646d5a83eb8d74652cbb3a1183bb2feb12fc3f6dc631', 73, 1, 'love-love', '[]', 0, '2023-10-13 16:31:45', '2023-10-13 16:31:45', '2024-10-13 09:31:45'),
('b2c76485510a85bc77d9726ad22528e9f9645ec6912a47ae3e5403c6d47537f33318144a77f00ba7', 33, 1, 'love-love', '[]', 0, '2023-07-14 15:59:31', '2023-07-14 15:59:31', '2024-07-14 15:59:31'),
('b2de2770a6bd219d516e7fe9ba3f0d69884b53417fa434589a1722318f80e731ebe5a465951de482', 42, 1, 'love-love', '[]', 0, '2023-09-22 20:44:28', '2023-09-22 20:44:28', '2024-09-22 13:44:28'),
('b32cb19c5993661befc9d3eee4a776b03aeae1a09f722e351c27a3c8a5bf07e12036a266a35330ac', 15, 1, 'love-love', '[]', 0, '2023-07-12 16:01:27', '2023-07-12 16:01:27', '2024-07-12 16:01:27'),
('b3be321f9f34b10747dfe97494846a2e0d6945c029a8b70d37bff4f6108e4feefc39585463f50b03', 8, 1, 'love-love', '[]', 0, '2023-06-26 20:36:15', '2023-06-26 20:36:16', '2024-06-26 20:36:15'),
('b3d56486dfb03b8f6d7c4309224f3b452d9d1c46284a408101ac024efae09f3fda7f951e96fb068e', 4, 1, 'love-love', '[]', 0, '2023-06-16 08:36:21', '2023-06-16 08:36:21', '2024-06-16 08:36:21');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('b51a02b74e7ff693918eb430e4226ff584b1231cb3ec4483999e6906fa14ac5b16e5c04709132fb7', 4, 1, 'love-love', '[]', 0, '2023-06-26 15:15:46', '2023-06-26 15:15:46', '2024-06-26 15:15:46'),
('b52befcf87872bea0b70cccdb1da1cb67302b6490f115242d22c541470238dd7c93a227f1d14d98d', 14, 1, 'love-love', '[]', 0, '2023-06-27 16:51:49', '2023-06-27 16:51:49', '2024-06-27 16:51:49'),
('b536839b9f5c4b2961543712414336e3474567944554a9c4d98295076c2e0c5269e0ee71a38f398e', 72, 1, 'love-love', '[]', 0, '2023-10-27 21:16:26', '2023-10-27 21:16:26', '2024-10-27 14:16:26'),
('b5393d4720531cb7c057a3882aaa4103fe239f0bd50328997fa7f8e66856e913b42adf5f481b0d8f', 4, 1, 'love-love', '[]', 0, '2023-07-05 09:22:07', '2023-07-05 09:22:07', '2024-07-05 09:22:07'),
('b5534678d9e820d9284c2d46c88510475c1d5deb9bac823dff52d889ae631b1268b9ff469a48b79b', 15, 1, 'love-love', '[]', 0, '2023-06-27 16:55:26', '2023-06-27 16:55:26', '2024-06-27 16:55:26'),
('b55aea91b55a38dcbcfeab03edadc43215fa6193b9fb7252452a217e53371be779f0228d09415473', 4, 1, 'love-love', '[]', 0, '2023-06-27 09:29:22', '2023-06-27 09:29:22', '2024-06-27 09:29:22'),
('b58d272bd151bb14f5a466b16118b0dca99d43909764a16c734170427d083d72b4c413b158535db0', 4, 1, 'love-love', '[]', 0, '2023-06-20 13:54:54', '2023-06-20 13:54:54', '2024-06-20 13:54:54'),
('b6411b4c6670e1e91725b58b2ed0c34e622a8868544f08bd0dc6ee700a2fa9a002d9040dfcb37faa', 73, 1, 'love-love', '[]', 0, '2023-10-27 17:55:52', '2023-10-27 17:55:52', '2024-10-27 10:55:52'),
('b70311d2f46eeeab60e03619908d77631da78f08b9e8f8aeea09c0e392a0db83a94b326ac94ce9bc', 66, 1, 'love-love', '[]', 0, '2023-09-01 18:25:58', '2023-09-01 18:25:58', '2024-09-01 11:25:58'),
('b82f81d9505bc15eda48965eb7cae2a506127041ac735a201323e05106a90a5f6d4452f1e52e4b4e', 4, 1, 'love-love', '[]', 0, '2023-06-27 11:30:37', '2023-06-27 11:30:37', '2024-06-27 11:30:37'),
('b8388803b77ededd7fdd3df7deda3af6b3de7e40da87c0c10e8409ab0d94da7768dfe700c2722179', 59, 1, 'love-love', '[]', 0, '2023-09-01 15:59:46', '2023-09-01 15:59:46', '2024-09-01 08:59:46'),
('b89d8634db2f348bb52b533655d2d50b392b773bbf4db533723e5b0e0f9122f75f6882a54ab5e5ce', 4, 1, 'love-love', '[]', 0, '2023-06-27 06:53:13', '2023-06-27 06:53:13', '2024-06-27 06:53:13'),
('b8ce2f44b839902935f9ce5299c887a93c21e73362a5fc6c32b1ae7abb1c961ec27eff42dbde3e16', 8, 1, 'love-love', '[]', 0, '2023-07-03 16:15:02', '2023-07-03 16:15:02', '2024-07-03 16:15:02'),
('b93334c178603241a5b982e3d10d3d2aca2a94f9f06f4e9ab439acf0a8844e7b47b13cb7905f9e1b', 46, 1, 'love-love', '[]', 0, '2023-08-01 07:29:02', '2023-08-01 07:29:02', '2024-08-01 07:29:02'),
('b96f395b7d22030daf35761841808c2133a51fccdeb40a6ac3c402fb60437d90b4162a2e36cc47bf', 8, 1, 'love-love', '[]', 0, '2023-07-05 22:59:26', '2023-07-05 22:59:26', '2024-07-05 22:59:26'),
('b99d5f0a684ab5c0ea69155baab51221ab8136b8bb71b3ba78413b6a3228f2f3f2c101b3d80c2670', 46, 1, 'love-love', '[]', 0, '2023-07-27 07:26:00', '2023-07-27 07:26:00', '2024-07-27 07:26:00'),
('b9ab3097581f3c73652ac73efffa3c9bb92a208f0ae597c0c07fab241c5ec557d7581f1279270e45', 99, 1, 'love-love', '[]', 0, '2023-10-13 15:17:53', '2023-10-13 15:17:53', '2024-10-13 08:17:53'),
('b9ec384523296771db60fbeeff565de6374648a2080c82b05165c97e610133490d90352d933a92f5', 8, 1, 'love-love', '[]', 0, '2023-07-12 16:30:25', '2023-07-12 16:30:25', '2024-07-12 16:30:25'),
('ba0161de828fd7c1797d546a2e6cc495994f0f20be31db5913038802af351c8e4a32dcca9dd3c168', 4, 1, 'love-love', '[]', 0, '2023-07-14 12:52:42', '2023-07-14 12:52:42', '2024-07-14 12:52:42'),
('ba18daa90dfbbf9dfa4b03dd5b0af2597250146260adceb5b1fcd62527f67d5e9dc0cdb1a930a2cf', 4, 1, 'love-love', '[]', 0, '2023-06-23 10:41:19', '2023-06-23 10:41:19', '2024-06-23 10:41:19'),
('bbb886285905c5ba50aee092681a7ede9bfe51c45027d8053e5fb3922bb70a337d3914b614d8a132', 14, 1, 'love-love', '[]', 0, '2023-06-27 23:17:20', '2023-06-27 23:17:20', '2024-06-27 23:17:20'),
('bc0fcbf2b21d414afda3591a2e59972a8a6d54d1bab7f9f2e37f293685e20c938bce2d1c3b763ede', 8, 1, 'love-love', '[]', 0, '2023-07-05 15:30:52', '2023-07-05 15:30:52', '2024-07-05 15:30:52'),
('bc5c4997adef9932c74593aa2b7124aec4384cd41a752cad4737e339d162a0bf9f98cdc926e4bd35', 14, 1, 'love-love', '[]', 0, '2023-06-27 16:24:08', '2023-06-27 16:24:08', '2024-06-27 16:24:08'),
('bcb480c8d02ca132b022357fb1a6cfbe73d88b3448bb9d39ff98583ac3f4fd937ec224088e1bc774', 4, 1, 'love-love', '[]', 0, '2023-07-20 10:37:00', '2023-07-20 10:37:00', '2024-07-20 10:37:00'),
('bd8e81a9773f9779dfebb20a6b73dbe5aec5f1464050884451718131d784d4fd8fcedd2e080673a3', 8, 1, 'love-love', '[]', 0, '2023-06-26 16:25:08', '2023-06-26 16:25:08', '2024-06-26 16:25:08'),
('bdcbecf1b671f1bd6e14f7fb48a1ffc2b2a7d4be9c7496ea0e3103be290c37adb64b4c58d2b31083', 42, 1, 'love-love', '[]', 0, '2023-07-24 14:22:27', '2023-07-24 14:22:27', '2024-07-24 14:22:27'),
('becba1a39cb54bcb9f8a499a2be979491d794eb1d33faf30c6379ebb5245129683aed30f2cf2a6c5', 94, 1, 'love-love', '[]', 0, '2023-09-22 21:35:43', '2023-09-22 21:35:43', '2024-09-22 14:35:43'),
('bee644d8044331088a3560c4b5e8e472ac9ad51132d948d5ec012021a9d431dcdea89a1902e08321', 72, 1, 'love-love', '[]', 0, '2023-09-22 23:09:25', '2023-09-22 23:09:25', '2024-09-22 16:09:25'),
('bf1476556cb058749a13fc828fb266a01f9a1caddd59a603411f79af65c3026ef8fb1cb0f58a5fb6', 4, 1, 'love-love', '[]', 0, '2023-06-27 07:49:39', '2023-06-27 07:49:39', '2024-06-27 07:49:39'),
('bf42b45959d4af6002886372f0ea1f0c38a7c514a445f8aaac6bfdd935295f10bdf96ffd15d14a4c', 8, 1, 'love-love', '[]', 0, '2023-07-05 18:13:10', '2023-07-05 18:13:11', '2024-07-05 18:13:10'),
('bfd962a6f9326efce139c0f70f1dae3115195ee8914d6fffa4f6cf7e4668c3ae77a128483f99fb50', 95, 1, 'love-love', '[]', 0, '2023-09-22 20:16:58', '2023-09-22 20:16:58', '2024-09-22 13:16:58'),
('bfefadfedf9191eb7998700164ae7b45feb510c61f9340a8ff06a70870269f78222dc89e88755723', 63, 1, 'love-love', '[]', 0, '2023-09-01 17:06:04', '2023-09-01 17:06:04', '2024-09-01 10:06:04'),
('c016a16188fef733302ab5600a99d7af1580c7860d3090e912c4778e21e915c2ec0b1604a1e59839', 45, 1, 'love-love', '[]', 0, '2023-07-25 10:52:11', '2023-07-25 10:52:11', '2024-07-25 10:52:11'),
('c02f88dea1aacb2130f1075791a13b5cd751af07eb70c4e4ed65570ea30272e9068cb42ed8379a75', 94, 1, 'love-love', '[]', 0, '2023-09-20 19:56:25', '2023-09-20 19:56:25', '2024-09-20 12:56:25'),
('c03f032520abc8b53fb5732dee64c3791a5d7c62dce7eec60e5019f3371102555d0d60e0c7438d7e', 46, 1, 'love-love', '[]', 0, '2023-07-27 07:11:07', '2023-07-27 07:11:07', '2024-07-27 07:11:07'),
('c0735b0b486339999c32cb4e5075ae3f233644e76e2ba16d44b2bb8eec144337600a9346662b7d95', 46, 1, 'love-love', '[]', 0, '2023-09-18 13:22:45', '2023-09-18 13:22:45', '2024-09-18 06:22:45'),
('c126ed5bad76f1076c053ac9a7464e63bc8b3639f86fc891340058e01b74a0ff7de52ddbe76082c0', 8, 1, 'love-love', '[]', 0, '2023-06-26 18:03:14', '2023-06-26 18:03:14', '2024-06-26 18:03:14'),
('c1b73429213059c2be234286b48f1633e3045920dfa7a3c58a47494c72425bd9ab5523eb6404ad1e', 8, 1, 'love-love', '[]', 0, '2023-07-19 14:32:02', '2023-07-19 14:32:02', '2024-07-19 14:32:02'),
('c210f0923a4506699869a3b1d0431fdd22e0c154e01ef62779cfdb47f2436866c012a49bc5829ef0', 8, 1, 'love-love', '[]', 0, '2023-07-12 15:57:58', '2023-07-12 15:57:58', '2024-07-12 15:57:58'),
('c262f2c8e246bb05a577ad017b80eeac6ace8f6af965a63f1a3683ab15904afbcbc952e8184f9382', 42, 1, 'love-love', '[]', 0, '2023-07-26 12:40:39', '2023-07-26 12:40:39', '2024-07-26 12:40:39'),
('c283ac0b2c583378c9e74137237f823240ae01c191252a7b13bde5b33e41adc6d317d2f2c9235e32', 4, 1, 'love-love', '[]', 0, '2023-06-16 08:06:51', '2023-06-16 08:06:51', '2024-06-16 08:06:51'),
('c2ba89b65d085951e3c8c1003cb1c799a27063d179302496fbe63ffc7f3a447726fe9a1c8b874e04', 72, 1, 'love-love', '[]', 0, '2023-10-10 13:31:37', '2023-10-10 13:31:37', '2024-10-10 06:31:37'),
('c2ffc66b3458b71a9167fe494a4c9674c44c2085742be5018753d080cc822809ee697d3668882ae6', 1, 1, 'love-love', '[]', 0, '2023-06-27 16:36:55', '2023-06-27 16:36:55', '2024-06-27 16:36:55'),
('c465958f7a647fe34f225185c1fcd3b5384aa106801b7dd7ebd1586a96d039d7832397a5381379e5', 4, 1, 'love-love', '[]', 0, '2023-07-14 15:05:42', '2023-07-14 15:05:42', '2024-07-14 15:05:42'),
('c49bdca895c73eae0e62fe4ae210ad4d02db90c202a035d886f526839651e4417a217f1dff2bd1dc', 73, 1, 'love-love', '[]', 0, '2023-10-26 20:38:12', '2023-10-26 20:38:12', '2024-10-26 13:38:12'),
('c4eaa1c233406dd3e41529c9547160235b9e415a747eba3dfd5cbe68587882fe717af912b5180c39', 14, 1, 'love-love', '[]', 0, '2023-07-12 16:02:46', '2023-07-12 16:02:46', '2024-07-12 16:02:46'),
('c540e102ae10517d405aaa800ca6896b12081e81fac3390e1a14675f588cb9ef141e62bf8ea11f98', 4, 1, 'love-love', '[]', 0, '2023-06-22 09:46:23', '2023-06-22 09:46:23', '2024-06-22 09:46:23'),
('c5e8950c9a3f2dccab076b01998c35c960179898a09bf66c938164776ad595e166cf2e66356ef4f9', 49, 1, 'love-love', '[]', 0, '2023-07-31 14:52:48', '2023-07-31 14:52:48', '2024-07-31 14:52:48'),
('c620643907aa0256f614f04ec66cd38c9dc0bcd814402f5bbbfa44d433273297d30d3f70ad361c13', 73, 1, 'love-love', '[]', 0, '2023-10-26 17:47:26', '2023-10-26 17:47:26', '2024-10-26 10:47:26'),
('c654eaecb3abfe713fa21de8b2f90066c4db132297ce2034f81da84e1ec13d42fcf9c2e40b6a6ad3', 49, 1, 'love-love', '[]', 0, '2023-07-31 16:09:00', '2023-07-31 16:09:00', '2024-07-31 16:09:00'),
('c65c3d474a9b78d946f74b10f40dc2d4d74f24d34220e760b06354afe36c21e3c0db68db7b203803', 4, 1, 'love-love', '[]', 0, '2023-06-21 11:14:44', '2023-06-21 11:14:44', '2024-06-21 11:14:44'),
('c6783eef208f04ab150420aec20b33c88ce4b965cafadd0882b5baeedfbcbdb76b68d1a1be79b2da', 94, 1, 'love-love', '[]', 0, '2023-09-21 14:49:08', '2023-09-21 14:49:08', '2024-09-21 07:49:08'),
('c6be00c651072c3f4a168d0f46d7cb9d3ec05cb18359350d7cec13e07e8039225e3dbba7966be431', 72, 1, 'love-love', '[]', 0, '2023-10-09 15:22:37', '2023-10-09 15:22:37', '2024-10-09 08:22:37'),
('c6c8bc85c67f8f091f4882dfb3f7e40150c72b905e624cd5e720882aac2db7951d0afbabe9e2ca0d', 49, 1, 'love-love', '[]', 0, '2023-09-20 01:53:43', '2023-09-20 01:53:43', '2024-09-19 18:53:43'),
('c6fa1852f254da85857484b40c37cfd2eefb0b3fba24f8e2b3db997cbcf5fb362dd5a237304f81a9', 72, 1, 'love-love', '[]', 0, '2023-09-21 14:15:19', '2023-09-21 14:15:19', '2024-09-21 07:15:19'),
('c757d9c42cacd7796a6ffc5cc019c2f7bb5181628756cb75cafb4bd7be4945822e556036811de8cd', 2, 1, 'love-love', '[]', 0, '2023-06-23 10:07:19', '2023-06-23 10:07:19', '2024-06-23 10:07:19'),
('c799f432f67054ab25cf89c4c949c4b582a48987a50bdcfe2ff1a2fc8feb8d5c1d658be212729821', 8, 1, 'love-love', '[]', 0, '2023-07-06 16:58:56', '2023-07-06 16:58:56', '2024-07-06 16:58:56'),
('c7d0f0f5f29e02ed9b0f0a799d078c312e1732cf731df8e266c84667798fd6205b8e6cf43337ea25', 2, 1, 'love-love', '[]', 0, '2023-06-26 07:24:18', '2023-06-26 07:24:18', '2024-06-26 07:24:18'),
('c88e9dd8a8fe5c0ba164226d897a3f095b6fdf3bea9edef8e9c15f9f359383b23313c9648e184808', 4, 1, 'love-love', '[]', 0, '2023-06-23 17:47:10', '2023-06-23 17:47:10', '2024-06-23 17:47:10'),
('c9ad68b3e6cd652fc1c513e2bc036ea32971d34a86d56e86e3bd261ff71bc6007faf17016445c542', 95, 1, 'love-love', '[]', 0, '2023-09-21 14:48:38', '2023-09-21 14:48:38', '2024-09-21 07:48:38'),
('ca247fc1fb2c8f27f786fc75230bd83abb2ca88597edde1c35fa19db9758ed344015331762b5f4d9', 1, 1, 'love-love', '[]', 0, '2023-06-23 16:08:52', '2023-06-23 16:08:52', '2024-06-23 16:08:52'),
('cb84d5cf5b7a1f00dcdf0bde3363eb902e77a5cfa5cad93a719c966064ee7afcb72abff0cf7953c3', 73, 1, 'love-love', '[]', 0, '2023-10-26 21:43:45', '2023-10-26 21:43:45', '2024-10-26 14:43:45'),
('cc1c8c5a186d361acdd877c08a14bb75cfbd90cefea018b10d2f83fa55096dd54bbed25b313e65eb', 42, 1, 'love-love', '[]', 0, '2023-09-22 20:25:41', '2023-09-22 20:25:41', '2024-09-22 13:25:41'),
('cc7f2d2dde2c4d0bf053628f2245495e5b5fe3ad85a4311a003691f158e1816dfe7e5761d604218f', 8, 1, 'love-love', '[]', 0, '2023-06-23 16:06:00', '2023-06-23 16:06:00', '2024-06-23 16:06:00'),
('ccbf27196297604749cd16d497cead616f1e31e86330ea86af612a71873698ed13d3553888eb3f39', 33, 1, 'love-love', '[]', 0, '2023-07-24 14:09:04', '2023-07-24 14:09:04', '2024-07-24 14:09:04'),
('ccfb3e1a782bd831c97bcc245d64fdcb6803eedd303d49f39bf141f9cd552c495bd3e8d845270e0d', 94, 1, 'love-love', '[]', 0, '2023-09-21 14:56:33', '2023-09-21 14:56:33', '2024-09-21 07:56:33'),
('cd124ccb63cc90e6082c863df4af1eb88a7080838b56eaaf94543f85723920926d789081b1c70123', 73, 1, 'love-love', '[]', 0, '2023-10-09 15:21:35', '2023-10-09 15:21:35', '2024-10-09 08:21:35'),
('cd1b7649381d4542ed1ae0730c3bd50b05ad52f1f43ace7442452feb00d5b6deb5135b96b85b2e54', 100, 1, 'love-love', '[]', 0, '2023-10-14 00:05:38', '2023-10-14 00:05:38', '2024-10-13 17:05:38'),
('cd2e80026bdf0ce16145c989e38f8a38e0dfafa76b1263a921f8eecdcf655698cd326904eb7f7b32', 6, 1, 'love-love', '[]', 0, '2023-06-19 08:22:59', '2023-06-19 08:22:59', '2024-06-19 08:22:59'),
('cd7de395ca462c509231e99e6d038940c688ad3370a248323e705f082b108a45a005b00bf22e3909', 4, 1, 'love-love', '[]', 0, '2023-06-27 09:53:51', '2023-06-27 09:53:51', '2024-06-27 09:53:51'),
('ce4c93ab594b0177400bf4042c29e60a708bf7a9f06e742f8a7f69132bce426f7f964868c6233562', 4, 1, 'love-love', '[]', 0, '2023-07-19 10:17:44', '2023-07-19 10:17:44', '2024-07-19 10:17:44'),
('cfe3558228623fbc7be169baabe6099462ea088840657c9090eb458f3f6f07d15c4e3cf8b3ffc277', 49, 1, 'love-love', '[]', 0, '2023-09-19 22:11:18', '2023-09-19 22:11:18', '2024-09-19 15:11:18'),
('d08a6130424f82349643e4f532669e7ea9ae4d929f6a868bed7c5b80e2b4ce58f3c5afd7c29c8f09', 94, 1, 'love-love', '[]', 0, '2023-09-22 18:30:32', '2023-09-22 18:30:32', '2024-09-22 11:30:32'),
('d11d9400115eb3019d4c5ebc88a9741c633000ea780b017bedbfd14074aa2bb241d3a47ebd46d468', 18, 1, 'love-love', '[]', 0, '2023-06-27 14:29:37', '2023-06-27 14:29:37', '2024-06-27 14:29:37'),
('d17fe608b555680f5c7139dcc4cbabd007627b51592650deee8a8a6796ea4edcb1d025913f6f1327', 4, 1, 'love-love', '[]', 0, '2023-06-20 14:48:15', '2023-06-20 14:48:15', '2024-06-20 14:48:15'),
('d1ab858a452988f9ed59347afd0b219441cb2ca739eb18c31649e4d92a13f953e34d0d85ce3b0854', 4, 1, 'love-love', '[]', 0, '2023-06-27 09:33:38', '2023-06-27 09:33:38', '2024-06-27 09:33:38'),
('d23a77f9923e7b39fd29b87b7fc37c8e1a3c9982a3518f7524564ea16125e35685c141e35a3a136c', 100, 1, 'love-love', '[]', 0, '2023-10-14 00:17:18', '2023-10-14 00:17:18', '2024-10-13 17:17:18'),
('d24f481c688f63195b4b07d4990ead7ca9b34f5db19bd4ba05ec1bc747a2ecbb93a6e86a11000a5e', 46, 1, 'love-love', '[]', 0, '2023-07-25 10:35:42', '2023-07-25 10:35:42', '2024-07-25 10:35:42'),
('d26ba7f77035ee2700733704a25cf24d033f918f20df3139281e880e4bc44dcb1b478825388b5b3b', 47, 1, 'love-love', '[]', 0, '2023-07-25 12:17:19', '2023-07-25 12:17:19', '2024-07-25 12:17:19'),
('d2736cbf53e7a98e5e57a6fe16db667718be2c771bf59a49c3b9583a4c697c8773ceb6a7c27c6224', 73, 1, 'love-love', '[]', 0, '2023-10-26 19:52:59', '2023-10-26 19:52:59', '2024-10-26 12:52:59'),
('d30b1931e49b6452092cc94a02695c0fb3bafe82ed56ba2e484b4973ffef90b942b0d8af2b7e8a4b', 21, 1, 'love-love', '[]', 0, '2023-07-03 17:09:55', '2023-07-03 17:09:55', '2024-07-03 17:09:55'),
('d32761af7c489d9563a6c1ecb0b3590101c1954adc8e26da99599e62f7bf2de39feb1724924eda19', 94, 1, 'love-love', '[]', 0, '2023-09-22 16:49:15', '2023-09-22 16:49:15', '2024-09-22 09:49:15'),
('d353771c84cd318a68d8adf7d3a645fd40481dc9e51a3d4f9033ad616e62bcf2df4db49a5b0e6655', 95, 1, 'love-love', '[]', 0, '2023-09-21 17:29:07', '2023-09-21 17:29:07', '2024-09-21 10:29:07'),
('d39c4d83dacca20593d8b2da697d921c2c3da0e5f5da6ab4b1032874f635315e6e03621861f44003', 49, 1, 'love-love', '[]', 0, '2023-07-31 13:11:32', '2023-07-31 13:11:32', '2024-07-31 13:11:32'),
('d3ad1fbe3612da64fca3f2a9b3a9ee287e585ff1ea16a1cecae531210c5f65bab26cf73927da2eb3', 49, 1, 'love-love', '[]', 0, '2023-07-25 17:34:10', '2023-07-25 17:34:10', '2024-07-25 17:34:10'),
('d426e9bf5509ff759e665edb4fc3f0bb8f8be64acbfa425fe9939fbd82236bffb6af9a0d3a94c869', 4, 1, 'love-love', '[]', 0, '2023-06-23 10:51:32', '2023-06-23 10:51:32', '2024-06-23 10:51:32'),
('d43c24449977e2519c470c7ea0f2162cdb9de1adbfc073e77da10f3eb748ed4ebad13d120c6c818a', 4, 1, 'love-love', '[]', 0, '2023-06-23 07:54:25', '2023-06-23 07:54:25', '2024-06-23 07:54:25'),
('d44c571e79b365368259e9ddc97c6fbf152521d83db16f31752e0044cd95b6f530ae2a2bec1ce811', 4, 1, 'love-love', '[]', 0, '2023-06-16 07:08:43', '2023-06-16 07:08:43', '2024-06-16 07:08:43'),
('d49752465d2c1e3d47cb1382b9f6ca07284be82b2c232c13333d24e0d456258c0943f59963457b0c', 4, 1, 'love-love', '[]', 0, '2023-07-24 12:16:53', '2023-07-24 12:16:53', '2024-07-24 12:16:53'),
('d52c6312e7b30a990ab361c28d47a17cb5caecce459891dddb7da8a425e93cb0b15df78565051af3', 4, 1, 'love-love', '[]', 0, '2023-06-26 12:48:30', '2023-06-26 12:48:30', '2024-06-26 12:48:30'),
('d563d7943c33b75af70cd0f45a27ba7a294a9b7b2a8dc53a1cfb936519607ea3e51a9056b483466d', 4, 1, 'love-love', '[]', 0, '2023-06-23 07:16:16', '2023-06-23 07:16:16', '2024-06-23 07:16:16'),
('d569cf80ff4f867aa93aaab405308da4068208a256f9ee4dc403605be2b8a214ac9f3827765dc683', 73, 1, 'love-love', '[]', 0, '2023-10-26 22:40:54', '2023-10-26 22:40:54', '2024-10-26 15:40:54'),
('d56ef0c03679461f11c16861069eb6924250daca5e9cab144d9e45f48a0429e3e0709df59343d219', 4, 1, 'love-love', '[]', 0, '2023-07-03 09:15:33', '2023-07-03 09:15:33', '2024-07-03 09:15:33'),
('d5e3a4ef066835890c9eaa34b5787440881cce96e04acf3bfce0c505c61f510dd637ef0db85cf035', 42, 1, 'love-love', '[]', 0, '2023-07-25 11:37:25', '2023-07-25 11:37:25', '2024-07-25 11:37:25'),
('d630963d168ebfb29bdccc0e4532971a8ac89c35d2f82e06da7a3635dc2487cf207dd9d28dab98f6', 73, 1, 'love-love', '[]', 0, '2023-10-12 01:20:20', '2023-10-12 01:20:20', '2024-10-11 18:20:20'),
('d70add604b95a24fcf597c8550e9af9cfec5e0795256fa9a140ec2fd803877f896a77a0adaac5b51', 72, 1, 'love-love', '[]', 0, '2023-10-09 15:59:25', '2023-10-09 15:59:25', '2024-10-09 08:59:25'),
('d715e12a656df0f9cecf8c9fb4a5a5c9214c2e0ae0d7314db7a3432aa0c18d0ac1cc562c06bf4604', 46, 1, 'love-love', '[]', 0, '2023-07-26 10:46:54', '2023-07-26 10:46:54', '2024-07-26 10:46:54'),
('d7464bb808a101d4bf7eb081a436167349a75b50f4e8d8db2e0779f137d959f4c2f2dbd9bcf84796', 4, 1, 'love-love', '[]', 0, '2023-06-23 19:16:40', '2023-06-23 19:16:40', '2024-06-23 19:16:40'),
('d87796f9f5c65698e1bdace86e7295c6acf0c8cd297c5d98c9035474822eb5bebd8c8fbc74556999', 95, 1, 'love-love', '[]', 0, '2023-09-22 20:25:07', '2023-09-22 20:25:07', '2024-09-22 13:25:07'),
('d8785048702f38dc88610db4d1dd5150a8acf017ba34750edd7b663caf4a607c692f194b9917b5ad', 70, 1, 'love-love', '[]', 0, '2023-09-22 16:59:33', '2023-09-22 16:59:33', '2024-09-22 09:59:33'),
('d966076f4e608ecd4418d7f901084f15401882107914a53ff693e9ea1d0d4e25b2eb6edd5dcb4ebd', 38, 1, 'love-love', '[]', 0, '2023-07-14 22:10:29', '2023-07-14 22:10:29', '2024-07-14 22:10:29'),
('d97710ba6596095b8a58daba2f83bf54979cbe435d7380899423c5bf5ad46be23319cc8299c794f6', 4, 1, 'love-love', '[]', 0, '2023-06-21 10:16:35', '2023-06-21 10:16:35', '2024-06-21 10:16:35'),
('d97fe7da1f39466d880ffb668f74440c10b17a44fb9eec8fdeeb1e5678ec14585f270858cb5ce74e', 90, 1, 'love-love', '[]', 0, '2023-09-19 22:10:54', '2023-09-19 22:10:54', '2024-09-19 15:10:54'),
('d9ac6ba12c61835f5c5a91b3f89c787fe336c32d4c83b1390b181c5d8b6e8961aa9028a27c372015', 42, 1, 'love-love', '[]', 0, '2023-07-25 10:34:29', '2023-07-25 10:34:29', '2024-07-25 10:34:29'),
('d9b68e96a88882f3d74510f87636c001cb64334017a31a0ed5fd20bd0bca3e933851d5ef458d5111', 95, 1, 'love-love', '[]', 0, '2023-09-20 19:57:11', '2023-09-20 19:57:11', '2024-09-20 12:57:11'),
('da1fbe4d83e4d20caf5d48dfcbdaaca6c9bce2938b26af10f7b2941ddaf56ecad3dd5d6af6d743b5', 4, 1, 'love-love', '[]', 0, '2023-07-05 12:00:04', '2023-07-05 12:00:04', '2024-07-05 12:00:04'),
('da4b606be8ecd21dc9e4be4e753f512591f1b905b74b384eadd775ff5d6079593d09db2b30ce53a1', 8, 1, 'love-love', '[]', 0, '2023-07-14 15:35:39', '2023-07-14 15:35:39', '2024-07-14 15:35:39'),
('dad525146a84f8fb314071da81faeef06d323e3b9c14a201d971d5183488eb9ca44baa26a4b164e3', 4, 1, 'love-love', '[]', 0, '2023-06-15 09:51:22', '2023-06-15 09:51:22', '2024-06-15 09:51:22'),
('db3fc894a8294708c383d7304e9b4b4e2471fbbabd0b659dbf4532cf3e071ddc85f272b31ad6fe5a', 4, 1, 'love-love', '[]', 0, '2023-07-24 12:23:36', '2023-07-24 12:23:36', '2024-07-24 12:23:36'),
('db9d3b8cfd8c4ec44590cacddb6b620cc2e74fe9aa5ecceeb1d7ad6e4d8526e5974f0651fac85b9b', 15, 1, 'love-love', '[]', 0, '2023-07-03 16:35:45', '2023-07-03 16:35:45', '2024-07-03 16:35:45'),
('dbc2a13a71f3c322a3f2c9adfd071afe84506f7581cf9d377aedcbd0aaa1b4b18bc562c1b0f2bcfc', 58, 1, 'love-love', '[]', 0, '2023-08-14 23:07:42', '2023-08-14 23:07:42', '2024-08-14 16:07:42'),
('dcb04bd099cdabf7612f14bca14d26959008144a8a1d90b69e5a6f8009688b4e37ea49c71b977b23', 46, 1, 'love-love', '[]', 0, '2023-08-01 09:37:23', '2023-08-01 09:37:23', '2024-08-01 09:37:23'),
('dcf0bdb4bf69a25fe08824f63df039cc1ebd15d4dacb2bbf0e900410de8095a82d1b9b5a0804b282', 102, 1, 'love-love', '[]', 0, '2023-10-25 04:38:45', '2023-10-25 04:38:45', '2024-10-24 21:38:45'),
('dd16d839664f27a7fab9c9b0afb7a874eb56b8f7eda64162e923848e852653961e956053214e26d9', 4, 1, 'love-love', '[]', 0, '2023-06-23 07:19:45', '2023-06-23 07:19:45', '2024-06-23 07:19:45'),
('dd37b1051ba35fd8afe3ec619ba3e5d95e481ef0a82af887a451fbaaa542fba1154a6f351dd95d74', 8, 1, 'love-love', '[]', 0, '2023-07-05 22:29:07', '2023-07-05 22:29:07', '2024-07-05 22:29:07'),
('de61c07c0d9f740b9cca04cf4a01822b924c46168d8f4d2b1c46f2e35f65e5483b30c658ff8148a9', 31, 1, 'love-love', '[]', 0, '2023-07-14 14:40:00', '2023-07-14 14:40:00', '2024-07-14 14:40:00'),
('decf226e120708dcc59eeb910e0d0ab059109818dfd37e4705b5a4fe3f30b03871ed8b17b558dd71', 73, 1, 'love-love', '[]', 0, '2023-10-11 01:29:49', '2023-10-11 01:29:50', '2024-10-10 18:29:49'),
('dedeeceb21f71045bc9f32032617c6e75b728af57791568dfd442c136d45028e7c98a0a98b190b26', 47, 1, 'love-love', '[]', 0, '2023-08-01 06:29:19', '2023-08-01 06:29:19', '2024-08-01 06:29:19'),
('defc1f127f0f2ce380f739e0e5e8f668418d27117e298d4434e77723137cf4c61c88ad95332d535f', 33, 1, 'love-love', '[]', 0, '2023-07-14 16:09:28', '2023-07-14 16:09:28', '2024-07-14 16:09:28'),
('df1dd562338b9a47d8ba547287ba515043f46a84078aba3d20c8e64aebb080e47c156fd096d5a50d', 4, 1, 'love-love', '[]', 0, '2023-06-21 10:39:41', '2023-06-21 10:39:41', '2024-06-21 10:39:41'),
('df54eac6d2650256fde967c3387aa336663deade5d343a1e51d1e47f9a052813413b84d1af1fa488', 4, 1, 'love-love', '[]', 0, '2023-07-05 09:17:53', '2023-07-05 09:17:53', '2024-07-05 09:17:53'),
('e0b2327a03b7ee3ade741eac2a5bc4cad8d32412a4383420bfb755940a2358871bce85486dfa1049', 1, 1, 'love-love', '[]', 0, '2023-06-27 17:01:19', '2023-06-27 17:01:19', '2024-06-27 17:01:19'),
('e0c871b014f7c394f10d6d12cc89b7e1f4b592955202d2ef8c233ee17991dfc97a0f9bc36613403e', 94, 1, 'love-love', '[]', 0, '2023-09-22 22:09:38', '2023-09-22 22:09:38', '2024-09-22 15:09:38'),
('e0e15a1dd0dadd77fbdad69a0e0352d824c597a630e0a0125a9b36023151a910eaa1140886f9e4dd', 42, 1, 'love-love', '[]', 0, '2023-08-01 07:57:21', '2023-08-01 07:57:22', '2024-08-01 07:57:21'),
('e137aed16ace0789b86a10ada439c519cdf10efde90ff2c0e239354ce664aec13a1570bcef402fba', 95, 1, 'love-love', '[]', 0, '2023-09-21 14:16:04', '2023-09-21 14:16:04', '2024-09-21 07:16:04'),
('e1edb4a3cf68fdf9158e90d7a06998cb2804222966cebb7633fdb9b383b857401f2c2e8e7164f215', 32, 1, 'love-love', '[]', 0, '2023-07-14 14:52:05', '2023-07-14 14:52:05', '2024-07-14 14:52:05'),
('e20da8e2fb50feba45bfbd991e154f49cb6a5f64ac3ac4a5fa849e09319b7b6814feb9d27accd70d', 95, 1, 'love-love', '[]', 0, '2023-09-22 19:37:14', '2023-09-22 19:37:14', '2024-09-22 12:37:14'),
('e218ae5f8e6dc3b6d99e9ef4f732d9d82a756d1bad9960b37759642b8e5f6ed0155ea63e8770c6b9', 46, 1, 'love-love', '[]', 0, '2023-07-27 14:10:08', '2023-07-27 14:10:08', '2024-07-27 14:10:08'),
('e22a3f11aec2f1d16522d7bb1517d65799ac99e159c9d25ffe0a826243ea7cb008b201d6c95c340b', 47, 1, 'love-love', '[]', 0, '2023-07-27 14:44:15', '2023-07-27 14:44:15', '2024-07-27 14:44:15'),
('e29d8de0707ffefbdd023a70c99e2ff6b62c0b12c6303d4da51a89e4fc43915fb98c7796fdfa837f', 46, 1, 'love-love', '[]', 0, '2023-07-27 07:22:25', '2023-07-27 07:22:25', '2024-07-27 07:22:25'),
('e35a45b74bd50fa1c16bd63da3febcf5fe2918442f4483fe342bb4dde138f22723a4778256f4aa3e', 73, 1, 'love-love', '[]', 0, '2023-10-13 17:32:41', '2023-10-13 17:32:41', '2024-10-13 10:32:41'),
('e3b0a815e28429b9194647f1d3fbeedc567599ea93c2b9f17506ce9d3d5785a0b5780808f19c3f97', 46, 1, 'love-love', '[]', 0, '2023-07-25 11:34:33', '2023-07-25 11:34:33', '2024-07-25 11:34:33'),
('e3b7781f6a07e523d4ffa41ead354788f78ad2274bf04975d0a2b26e0c86c35b0a64e06a4f46760f', 4, 1, 'love-love', '[]', 0, '2023-07-14 15:11:07', '2023-07-14 15:11:07', '2024-07-14 15:11:07'),
('e3e225bc059705fc564b5316c023c8ff66e1add941a0361f750a74a87d22e8aed059631d93e32381', 4, 1, 'love-love', '[]', 0, '2023-06-27 09:50:16', '2023-06-27 09:50:16', '2024-06-27 09:50:16'),
('e49ad9904ddb1be2f2fba084e82e944cdd40d591d2e46edb59eb6447f6f8dac436c1c3f5a4413a0a', 4, 1, 'love-love', '[]', 0, '2023-06-27 10:50:21', '2023-06-27 10:50:21', '2024-06-27 10:50:21'),
('e4b166fbd524e6f24b2bf9276a2335b3c88cc0fdd17e89632a0b77783e5434659052ca888fde786a', 45, 1, 'love-love', '[]', 0, '2023-07-25 11:03:48', '2023-07-25 11:03:48', '2024-07-25 11:03:48'),
('e4c31b60393d94485c7a674508c659298f194b5eda2af7255985010acaaf16c81f36d3baeecc3c15', 72, 1, 'love-love', '[]', 0, '2023-09-21 14:58:32', '2023-09-21 14:58:32', '2024-09-21 07:58:32'),
('e54a7ab435eefaa4d195745129961e62eaee5fad9b5c6c5b4834910a3f8bbac3c8953750976c8eb2', 42, 1, 'love-love', '[]', 0, '2023-07-24 14:34:43', '2023-07-24 14:34:43', '2024-07-24 14:34:43'),
('e5acbaae3a2d920ecba3c13a1695662a7afcca4fcb3032b91d42d1be34150a5695eb628fa02b212f', 8, 1, 'love-love', '[]', 0, '2023-07-05 16:53:30', '2023-07-05 16:53:30', '2024-07-05 16:53:30'),
('e5eb7086ffb8e0a5f00ddfb36f5f58b0c5d8a98f9a70854c995c2906bdcc3f39813088b199f32b64', 94, 1, 'love-love', '[]', 0, '2023-09-22 14:38:29', '2023-09-22 14:38:29', '2024-09-22 07:38:29'),
('e64edd80baed7a021fa6ac8f1f0c3289e3983eddc6c43409f6304821ff4fea288e178487c7ad9fbc', 19, 1, 'love-love', '[]', 0, '2023-06-27 14:23:54', '2023-06-27 14:23:54', '2024-06-27 14:23:54'),
('e6daee745266851ee482564b99913984e1273bfa92f8e0ab5f3de716b1e180750c736f700eb2257d', 94, 1, 'love-love', '[]', 0, '2023-09-22 23:11:25', '2023-09-22 23:11:25', '2024-09-22 16:11:25'),
('e6ff868ecb01901a903589db0353199589de0122c4c3c76ee5dc350cb54edbcb63655c41978ee715', 72, 1, 'love-love', '[]', 0, '2023-09-21 14:27:13', '2023-09-21 14:27:13', '2024-09-21 07:27:13'),
('e7f99338382a4468f4ca8d7ffd7a45a7873d057cb5a720ebc43567ab54cf3e0c22229cc083fec088', 69, 1, 'love-love', '[]', 0, '2023-09-01 18:38:40', '2023-09-01 18:38:40', '2024-09-01 11:38:40'),
('e88ab973bd983668a8b882e149655443bfcf7156f4c9fb145fe1b20a293bba2354fb24e98a306829', 4, 1, 'love-love', '[]', 0, '2023-06-23 18:05:06', '2023-06-23 18:05:06', '2024-06-23 18:05:06'),
('e8b83d31b8a60a3a59366f688f9e1838fa8ef9049c96e1de571ee71a3198275269a7db22327ea6fb', 2, 1, 'love-love', '[]', 0, '2023-06-21 06:52:50', '2023-06-21 06:52:50', '2024-06-21 06:52:50'),
('e8e4a6654d7c7d95f007931f96b275661f121316ed0b652e5b8899fb5902c43ec4d0d46b532b2c09', 4, 1, 'love-love', '[]', 0, '2023-06-19 10:44:08', '2023-06-19 10:44:08', '2024-06-19 10:44:08'),
('e927d2366df27e40a486946bafbb8b9f137b04febf31b777ae337c1cd09134389556e7cf8c850126', 4, 1, 'love-love', '[]', 0, '2023-06-27 11:43:07', '2023-06-27 11:43:07', '2024-06-27 11:43:07'),
('e9e5365736a2b9fc165f269188246b0da4e0cfc8b67904465df73946ee4c0c4ad37d198775c9d27b', 8, 1, 'love-love', '[]', 0, '2023-07-22 13:15:02', '2023-07-22 13:15:02', '2024-07-22 13:15:02'),
('ea91392b35648c42a2d12464798aff9b2ea7928a5f5b3d6fdb295c1d40981383e237cb1f6ef5cc0f', 4, 1, 'love-love', '[]', 0, '2023-06-16 07:11:36', '2023-06-16 07:11:36', '2024-06-16 07:11:36'),
('eadfd955093426a4fdcc03d27e083eeb0ea26f67a2b3de7bc60a6474cef2eb55fa898f35ed2c274e', 4, 1, 'love-love', '[]', 0, '2023-07-14 12:43:30', '2023-07-14 12:43:30', '2024-07-14 12:43:30'),
('eaff5d04f4651ad1c30731def4845f6f7c27f362161467ab1de79ffb7f3481fa72c0f5413c264778', 42, 1, 'love-love', '[]', 0, '2023-08-08 14:36:56', '2023-08-08 14:36:56', '2024-08-08 07:36:56'),
('eb11a450b2535df637ae85a2ce91b54389cf390c09ec7ff451a8317eb7be1a6801caaec5d56a9c1c', 4, 1, 'love-love', '[]', 0, '2023-06-27 09:38:11', '2023-06-27 09:38:11', '2024-06-27 09:38:11'),
('eb4a85ac8e589138bd1e0fa7740d4df505e75b86c25b6d263cd927b0fccc75b6e9ee06bb5239ec23', 4, 1, 'love-love', '[]', 0, '2023-06-16 09:25:19', '2023-06-16 09:25:19', '2024-06-16 09:25:19'),
('eb6339dcf730b216f3ce4b15d03cb35f0c6279dbd48a74f5f66b2cd9e88545ce33a86184cd5c46f1', 1, 1, 'love-love', '[]', 0, '2023-07-12 16:06:51', '2023-07-12 16:06:51', '2024-07-12 16:06:51'),
('eb75fc738c2266c574c7adf0055dc7efa0bebdf0df96af854e4dbd8b27ec60891ec36db27038eb43', 95, 1, 'love-love', '[]', 0, '2023-09-22 20:10:12', '2023-09-22 20:10:12', '2024-09-22 13:10:12'),
('ec168b06c351f7c0d9fe31053fa284c82868d6369ffa1364f8c8da4abc01c7896d711ec660a26381', 4, 1, 'love-love', '[]', 0, '2023-07-24 10:18:07', '2023-07-24 10:18:07', '2024-07-24 10:18:07'),
('ec646a4f6edcb4d04b882501e35af4ed2156d4e622af8bd601f686716f971ea39be765dc5369c7df', 8, 1, 'love-love', '[]', 0, '2023-06-27 17:18:56', '2023-06-27 17:18:56', '2024-06-27 17:18:56'),
('edd2897b591b21f5ac7bf314fdbecbb2956443036f2f9d72979958577e6273e78277e6fd54dcc3b3', 4, 1, 'love-love', '[]', 0, '2023-07-13 11:30:55', '2023-07-13 11:30:55', '2024-07-13 11:30:55'),
('ee0826576f60bf7b73981a2795798b63ec36e36d076003fe00c9bb13e85aa8a10ad633d39762d3fb', 101, 1, 'love-love', '[]', 0, '2023-10-14 00:20:56', '2023-10-14 00:20:56', '2024-10-13 17:20:56'),
('ef746df6f3572d9c5eb37f6949480677b606733514e945aba968257900ff24fdc0f33466558179ef', 42, 1, 'love-love', '[]', 0, '2023-07-25 09:50:14', '2023-07-25 09:50:14', '2024-07-25 09:50:14'),
('ef7bba1692a0874e70142d0a534cac7669f9b827607d8a0eb7859d3bc5e6ad65a5908c6832a4f5e6', 14, 1, 'love-love', '[]', 0, '2023-07-12 15:36:28', '2023-07-12 15:36:28', '2024-07-12 15:36:28'),
('effb6164cbb1ae1fc9c39228cd39bd3eda5c5d1706a5cc74461334ebec2b051bc16045b727576812', 72, 1, 'love-love', '[]', 0, '2023-09-21 17:36:02', '2023-09-21 17:36:02', '2024-09-21 10:36:02'),
('f045d1385777a276a0815bfd65a6a71925799a37cb3adb949ad190abe4f06a1b7639d6e03f43a113', 8, 1, 'love-love', '[]', 0, '2023-07-05 20:02:36', '2023-07-05 20:02:36', '2024-07-05 20:02:36'),
('f07aa3daeea66180ceaa55d13af47c4a1e1b8bb61a622e045bdbf503f0b0c15f73c89efb0ab5375c', 20, 1, 'love-love', '[]', 0, '2023-07-03 17:59:28', '2023-07-03 17:59:28', '2024-07-03 17:59:28'),
('f0e688ab739c9f100967d1a7fd78aa82308a4cf84194bd932f9088ebda3982feadfa392cf88322b0', 47, 1, 'love-love', '[]', 0, '2023-07-27 12:36:06', '2023-07-27 12:36:06', '2024-07-27 12:36:06'),
('f1a585bc8b547ea0919f6d4e60a40747e47b1a6c8a7da29106ae76b57631d3bf4c6aaea19e9f89ec', 34, 1, 'love-love', '[]', 0, '2023-07-14 16:28:52', '2023-07-14 16:28:52', '2024-07-14 16:28:52'),
('f2954dc6671acec119e62255846883c79a844c1829f7684681ad039d479e3b184b016deb9bce0769', 80, 1, 'love-love', '[]', 0, '2023-09-18 14:24:58', '2023-09-18 14:24:58', '2024-09-18 07:24:58'),
('f29f0920c584470ae66067d8b75f3782866199c5c6774819ba10cf3e911a323632ce0e1cf93c84a4', 49, 1, 'love-love', '[]', 0, '2023-07-26 12:09:42', '2023-07-26 12:09:42', '2024-07-26 12:09:42'),
('f312a8ee1fec9279963e8d29288d45327e974fcf17c69fd1e0b40d6d3a1161decb27c0f836494806', 76, 1, 'love-love', '[]', 0, '2023-09-18 14:03:09', '2023-09-18 14:03:09', '2024-09-18 07:03:09'),
('f3731567f0ae5812a7aa00dcff115b2b810e95a28dac9a6529aa2ead3425212a18fa72394eb55948', 8, 1, 'love-love', '[]', 0, '2023-07-14 16:41:43', '2023-07-14 16:41:43', '2024-07-14 16:41:43'),
('f421fa87cefae31afee7820d2db76567a237274891947a5be3a1a37f55ef698317213625e8eae25c', 45, 1, 'love-love', '[]', 0, '2023-07-25 09:14:53', '2023-07-25 09:14:53', '2024-07-25 09:14:53'),
('f622bce51318af7641349e9282cafc8bc87f39107dacb6f3f266b088c6cb6891d0b7ba9e08e9536c', 4, 1, 'love-love', '[]', 0, '2023-06-26 14:40:23', '2023-06-26 14:40:23', '2024-06-26 14:40:23'),
('f65b6fcdefba9afef6a657d6a58b9dc4b19fdb30d816ad8f8acd512089ca20bcd75d6d3ee3cec83d', 8, 1, 'love-love', '[]', 0, '2023-07-14 16:33:42', '2023-07-14 16:33:43', '2024-07-14 16:33:42'),
('f65cd5183f0bacd90fdf1a80812b6db78274c7d0912a9112c17e7483af5cd3ca8fa238e369e94fa5', 4, 1, 'love-love', '[]', 0, '2023-07-04 08:21:45', '2023-07-04 08:21:45', '2024-07-04 08:21:45'),
('f6d9d46390500541fc1655c5fe805c0a96755a5d7e15642dcf8d0e560367af1003b2ebe03339e1d3', 42, 1, 'love-love', '[]', 0, '2023-07-25 06:58:59', '2023-07-25 06:58:59', '2024-07-25 06:58:59'),
('f714b266aaf66e4432e51f749f4848414511d485aca048246162981bbb1bcb4017c438bdaf15f30f', 4, 1, 'love-love', '[]', 0, '2023-07-20 12:35:39', '2023-07-20 12:35:39', '2024-07-20 12:35:39'),
('f7189c2b388118b923f394a455e9b67230865ae81d0857269668d74d62cd908592a3291088ba1a84', 15, 1, 'love-love', '[]', 0, '2023-07-05 13:34:22', '2023-07-05 13:34:22', '2024-07-05 13:34:22'),
('f72dfa4db5faa5111ee839bc046ba537bba8d0af1156c6eabc87361a0faed8615636885643cefba6', 1, 1, 'love-love', '[]', 0, '2023-07-12 15:41:27', '2023-07-12 15:41:27', '2024-07-12 15:41:27'),
('f743c416e371ddc5a43b1526bddba4714f30abc9c0e3f5fa5516da490b90a796e38a99ebb7cf686d', 56, 1, 'love-love', '[]', 0, '2023-07-31 13:45:41', '2023-07-31 13:45:41', '2024-07-31 13:45:41'),
('f74cb20e4777e353883aec49de633784c5ab0ac85a165b1c9b6c7ae01c150cd1d46898d84c552812', 73, 1, 'love-love', '[]', 0, '2023-10-26 23:38:37', '2023-10-26 23:38:37', '2024-10-26 16:38:37'),
('f7a013598d8230436507daec35245fe1246d8566912254aed266b0435db5e48f7fcbdcd0d749da91', 4, 1, 'love-love', '[]', 0, '2023-06-22 11:09:25', '2023-06-22 11:09:25', '2024-06-22 11:09:25'),
('f85af8227b9cf11dbbada6d552687e4f46086ea596ec26ce9796aa7e7b00b9fe0c41b867a34d73b4', 42, 1, 'love-love', '[]', 0, '2023-07-26 09:51:14', '2023-07-26 09:51:14', '2024-07-26 09:51:14'),
('f9197f670a48b510d1e236924b03faa3515fc50bf36cf395de90e6f5d68f9ec81bdf62587bf3b136', 4, 1, 'love-love', '[]', 0, '2023-07-03 09:38:32', '2023-07-03 09:38:32', '2024-07-03 09:38:32'),
('f9a131aa88196f6a959666343592f666416c5e2d85dd20c08fdb9349b21eaecb1abdaaba99f150d7', 1, 1, 'love-love', '[]', 0, '2023-06-27 17:49:24', '2023-06-27 17:49:24', '2024-06-27 17:49:24'),
('fa6227e3c7facd2d0f89dd52bb1468faef9f82e79e65fb51025996856a561b952ea858e2c6d38280', 4, 1, 'love-love', '[]', 0, '2023-06-22 11:20:31', '2023-06-22 11:20:31', '2024-06-22 11:20:31'),
('fa6f3a73f2ecb54a86e70c0c77ef03d51b0697f7ed9a2a4b6c056352347ff49623d539a067f33c04', 47, 1, 'love-love', '[]', 0, '2023-08-01 10:16:50', '2023-08-01 10:16:50', '2024-08-01 10:16:50'),
('fa7d1db2b4ea82a9b670f9fdff9a898f7a16b021f055f7ae18f777eacc7b0275e0d47a830979a31d', 95, 1, 'love-love', '[]', 0, '2023-09-22 20:19:05', '2023-09-22 20:19:05', '2024-09-22 13:19:05'),
('fc35102123ae82edf7789d85c62afe9b20b6107dfdac02ecfe70c699608b8179920abbe1726a3c26', 4, 1, 'love-love', '[]', 0, '2023-07-20 11:58:20', '2023-07-20 11:58:20', '2024-07-20 11:58:20'),
('fc73537fb7b6904d47a13ebd2ab9c451abd0744edb3732b717cab7abe008cec2d8f3050343f444a4', 73, 1, 'love-love', '[]', 0, '2023-10-13 23:17:33', '2023-10-13 23:17:33', '2024-10-13 16:17:33'),
('fed9f969d5a4d20a1f01cf407a655977c0697754b8182198b7060ac36d01fa75e1994cc9cb6b1bfb', 13, 1, 'love-love', '[]', 0, '2023-06-26 14:52:40', '2023-06-26 14:52:40', '2024-06-26 14:52:40'),
('ffcc63e5499c4d406365566de77a6e684757b64ec9429c708b3403e7d0b3657aa01bc6a0fc361a96', 45, 1, 'love-love', '[]', 0, '2023-07-27 13:46:03', '2023-07-27 13:46:03', '2024-07-27 13:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'SI1E2pa9Et7pZSeQhjkzWmlFg6czbBLPTMBefXHw', NULL, 'http://localhost', 1, 0, 0, '2023-06-15 08:32:59', '2023-06-15 08:32:59'),
(2, NULL, 'Laravel Password Grant Client', 'YyMMt4AsAwm3LMYjAX8gCA141coZC954sXFefBZg', 'users', 'http://localhost', 0, 1, 0, '2023-06-15 08:32:59', '2023-06-15 08:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-06-15 08:32:59', '2023-06-15 08:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `user_id`, `first_name`, `last_name`, `email`, `phone_number`, `amount`, `transaction_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 42, NULL, NULL, NULL, NULL, '3', 'ch_3NXQDOIp5pqi4iBw2tHoTITO', 'succeeded', '2023-07-24 14:58:26', '2023-07-24 14:58:26'),
(2, 42, NULL, NULL, NULL, NULL, '3', 'ch_3NXQEsIp5pqi4iBw2ZNRNHJL', 'succeeded', '2023-07-24 14:59:58', '2023-07-24 14:59:58'),
(3, 42, NULL, NULL, NULL, NULL, '3', 'ch_3NXg3jIp5pqi4iBw2ygysk7Y', 'succeeded', '2023-07-25 07:53:32', '2023-07-25 07:53:32'),
(4, 42, NULL, NULL, NULL, NULL, '5', 'ch_3NYRWVIp5pqi4iBw2mMZ44C6', 'succeeded', '2023-07-27 10:34:24', '2023-07-27 10:34:24'),
(5, 42, NULL, NULL, NULL, NULL, '3', 'ch_3NYRYTIp5pqi4iBw0VqkpkkK', 'succeeded', '2023-07-27 10:36:26', '2023-07-27 10:36:26'),
(6, 42, 'test', 'user', 'test@user.com', '121121121', '3', 'ch_3NYS2oIp5pqi4iBw1beROdJ4', 'succeeded', '2023-07-27 11:07:46', '2023-07-27 11:07:46'),
(7, 46, 'qqqq', 'qqqq', 'qqqq', '123456789012', '6', 'ch_3NYT5KIp5pqi4iBw2NMLyfEf', 'succeeded', '2023-07-27 12:14:27', '2023-07-27 12:14:27'),
(8, 42, 'test', 'user', 'test@use', '121121121', '3', 'ch_3NYT8KIp5pqi4iBw1SLVd2hu', 'succeeded', '2023-07-27 12:17:33', '2023-07-27 12:17:33'),
(9, 42, 'test', 'user', 'test@use', '121121121', '3', 'ch_3NYT8TIp5pqi4iBw0Am03hLw', 'succeeded', '2023-07-27 12:17:42', '2023-07-27 12:17:42'),
(10, 42, 'test', 'user', 'user@test', '121121121', '3', 'ch_3NYTA3Ip5pqi4iBw1v64udNC', 'succeeded', '2023-07-27 12:19:19', '2023-07-27 12:19:19'),
(11, 49, 'Lewis', '.', 'lewis@gmail.com', '12345612345', '3', 'ch_3Ns5eVIp5pqi4iBw2JQDJzln', 'succeeded', '2023-09-19 22:15:52', '2023-09-19 22:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `display_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', NULL, NULL, '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(2, 'role-create', 'web', NULL, NULL, '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(3, 'role-edit', 'web', NULL, NULL, '2023-06-15 08:08:10', '2023-06-15 08:08:10'),
(4, 'role-delete', 'web', NULL, NULL, '2023-06-15 08:08:10', '2023-06-15 08:08:10');

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recom_to` tinyint(4) DEFAULT NULL,
  `recom_from` tinyint(4) DEFAULT NULL,
  `recom_user_id` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recommendations`
--

INSERT INTO `recommendations` (`id`, `recom_to`, `recom_from`, `recom_user_id`, `created_at`, `updated_at`) VALUES
(14, 94, 95, 47, '2023-09-22 20:18:12', '2023-09-22 20:18:12'),
(15, 94, 95, 12, '2023-09-22 20:26:35', '2023-09-22 20:26:35'),
(16, 94, 95, 90, '2023-09-22 20:37:37', '2023-09-22 20:37:37'),
(17, 94, 95, 42, '2023-09-22 20:55:07', '2023-09-22 20:55:07'),
(18, 94, 95, 44, '2023-09-22 21:08:34', '2023-09-22 21:08:34'),
(19, 94, 95, 49, '2023-09-22 21:19:38', '2023-09-22 21:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `display_name`, `slug`, `type`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', 'Admin', 'admin', NULL, '2023-06-15 08:08:09', '2023-06-15 08:08:09'),
(2, 'user', 'web', 'User', 'user', NULL, '2023-06-15 08:08:09', '2023-06-15 08:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `span_words`
--

CREATE TABLE `span_words` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `word` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `span_words`
--

INSERT INTO `span_words` (`id`, `word`, `created_at`, `updated_at`) VALUES
(1, '4r5e', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(2, '5h1t', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(3, '5hit', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(4, 'a55', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(5, 'anal', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(6, '\n  anus', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(7, '\n  ar5e', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(8, '\n  arrse', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(9, '\n  arse', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(10, '\n  ass', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(11, '\n  ass-fucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(12, '\n  asses', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(13, '\n  assfucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(14, '\n  assfukka', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(15, '\n  asshole', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(16, '\n  assholes', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(17, '\n  asswhole', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(18, '\n  a_s_s', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(19, '\n  b!tch', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(20, '\n  b00b', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(21, '\n  b00bs', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(22, '\n  b17ch', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(23, '\n  b1tch', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(24, '\n  ballbag', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(25, '\n  balls', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(26, '\n  ballsack', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(27, '\n  bastard', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(28, '\n  beastial', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(29, '\n  beastiality', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(30, '\n  bellend', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(31, '\n  bestial', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(32, '\n  bestiality', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(33, '\n  bi+ch', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(34, '\n  biatch', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(35, '\n  bitch', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(36, '\n  bitcher', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(37, '\n  bitchers', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(38, '\n  bitches', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(39, '\n  bitchin', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(40, '\n  bitching', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(41, '\n  bloody', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(42, '\n  blow job', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(43, '\n  blowjob', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(44, '\n  blowjobs', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(45, '\n  boiolas', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(46, '\n  bollock', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(47, '\n  bollok', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(48, '\n  boner', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(49, '\n  boob', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(50, '\n  boobs', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(51, '\n  booobs', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(52, '\n  boooobs', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(53, '\n  booooobs', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(54, '\n  booooooobs', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(55, '\n  breasts', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(56, '\n  buceta', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(57, '\n  bugger', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(58, '\n  bum', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(59, '\n  bunny fucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(60, '\n  butt', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(61, '\n  butthole', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(62, '\n  buttmuch', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(63, '\n  buttplug', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(64, '\n  c0ck', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(65, '\n  c0cksucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(66, '\n  carpet muncher', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(67, '\n  cawk', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(68, '\n  chink', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(69, '\n  cipa', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(70, '\n  cl1t', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(71, '\n  clit', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(72, '\n  clitoris', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(73, '\n  clits', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(74, '\n  cnut', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(75, '\n  cock', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(76, '\n  cock-sucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(77, '\n  cockface', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(78, '\n  cockhead', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(79, '\n  cockmunch', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(80, '\n  cockmuncher', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(81, '\n  cocks', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(82, '\n  cocksuck', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(83, '\n  cocksucked', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(84, '\n  cocksucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(85, '\n  cocksucking', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(86, '\n  cocksucks', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(87, '\n  cocksuka', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(88, '\n  cocksukka', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(89, '\n  cok', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(90, '\n  cokmuncher', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(91, '\n  coksucka', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(92, '\n  coon', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(93, '\n  cox', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(94, '\n  crap', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(95, '\n  cum', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(96, '\n  cummer', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(97, '\n  cumming', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(98, '\n  cums', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(99, '\n  cumshot', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(100, '\n  cunilingus', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(101, '\n  cunillingus', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(102, '\n  cunnilingus', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(103, '\n  cunt', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(104, '\n  cuntlick', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(105, '\n  cuntlicker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(106, '\n  cuntlicking', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(107, '\n  cunts', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(108, '\n  cyalis', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(109, '\n  cyberfuc', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(110, '\n  cyberfuck', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(111, '\n  cyberfucked', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(112, '\n  cyberfucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(113, '\n  cyberfuckers', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(114, '\n  cyberfucking', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(115, '\n  d1ck', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(116, '\n  damn', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(117, '\n  dike', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(118, '\n  dick', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(119, '\n  dickhead', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(120, '\n  dildo', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(121, '\n  dildos', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(122, '\n  dink', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(123, '\n  dinks', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(124, '\n  dirsa', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(125, '\n  dlck', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(126, '\n  dog-fucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(127, '\n  doggin', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(128, '\n  dogging', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(129, '\n  donkeyribber', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(130, '\n  doosh', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(131, '\n  duche', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(132, '\n  dyke', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(133, '\n  ejaculate', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(134, '\n  ejaculated', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(135, '\n  ejaculates', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(136, '\n  ejaculating', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(137, '\n  ejaculatings', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(138, '\n  ejaculation', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(139, '\n  ejakulate', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(140, '\n  fitt', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(141, '\n  f u c k', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(142, '\n  f u c k e r', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(143, '\n  f4nny', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(144, '\n  fag', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(145, '\n  fagging', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(146, '\n  faggitt', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(147, '\n  faggot', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(148, '\n  faggs', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(149, '\n  fagot', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(150, '\n  fagots', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(151, '\n  fags', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(152, '\n  fanny', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(153, '\n  fannyflaps', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(154, '\n  fannyfucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(155, '\n  fanyy', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(156, '\n  fatass', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(157, '\n  fcuk', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(158, '\n  fcuker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(159, '\n  fcuking', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(160, '\n  feck', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(161, '\n  fecker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(162, '\n  felching', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(163, '\n  fellate', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(164, '\n  fellatio', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(165, '\n  fingerfuck', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(166, '\n  fingerfucked', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(167, '\n  fingerfucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(168, '\n  fingerfuckers', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(169, '\n  fingerfucking', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(170, '\n  fingerfucks', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(171, '\n  fistfuck', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(172, '\n  fistfucked', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(173, '\n  fistfucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(174, '\n  fistfuckers', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(175, '\n  fistfucking', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(176, '\n  fistfuckings', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(177, '\n  fistfucks', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(178, '\n  flange', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(179, '\n  fook', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(180, '\n  fooker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(181, '\n  fuck', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(182, '\n  fucka', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(183, '\n  fucked', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(184, '\n  fucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(185, '\n  fuckers', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(186, '\n  fuckhead', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(187, '\n  fuckheads', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(188, '\n  fuckin', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(189, '\n  fucking', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(190, '\n  fuckings', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(191, '\n  fuckingshitmotherfucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(192, '\n  fuckme', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(193, '\n  fucks', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(194, '\n  fuckwhit', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(195, '\n  fuckwit', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(196, '\n  fudge packer', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(197, '\n  fudgepacker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(198, '\n  fuk', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(199, '\n  fu(', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(200, '\n  fuker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(201, '\n  fukker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(202, '\n  fukkin', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(203, '\n  fuks', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(204, '\n  fukwhit', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(205, '\n  fukwit', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(206, '\n  fux', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(207, '\n  fux0r', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(208, '\n  f_u_c_k', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(209, '\n  gangbang', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(210, '\n  gangbanged', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(211, '\n  gangbangs', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(212, '\n  gaylord', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(213, '\n  gaysex', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(214, '\n  goatse', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(215, '\n  god-dam', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(216, '\n  god-damned', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(217, '\n  goddamn', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(218, '\n  goddamned', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(219, '\n  hardcoresex', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(220, '\n  hell', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(221, '\n  heshe', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(222, '\n  hoar', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(223, '\n  hoare', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(224, '\n  hoer', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(225, '\n  homo', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(226, '\n  hore', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(227, '\n  horniest', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(228, '\n  horny', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(229, '\n  hotsex', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(230, '\n  jack-off', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(231, '\n  jackoff', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(232, '\n  jap', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(233, '\n  jerk-off', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(234, '\n  jism', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(235, '\n  jiz', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(236, '\n  jizm', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(237, '\n  jizz', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(238, '\n  kyrpa', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(239, '\n  kawk', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(240, '\n  kanker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(241, '\n  knob', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(242, '\n  knobead', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(243, '\n  knobed', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(244, '\n  knobend', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(245, '\n  knobhead', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(246, '\n  knobjocky', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(247, '\n  knobjokey', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(248, '\n  kock', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(249, '\n  kondum', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(250, '\n  kondums', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(251, '\n  kum', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(252, '\n  kummer', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(253, '\n  kumming', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(254, '\n  kums', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(255, '\n  kunilingus', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(256, '\n  l3i+ch', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(257, '\n  l3itch', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(258, '\n  labia', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(259, '\n  lust', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(260, '\n  lusting', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(261, '\n  m0f0', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(262, '\n  m0fo', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(263, '\n  m45terbate', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(264, '\n  ma5terb8', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(265, '\n  ma5terbate', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(266, '\n  masochist', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(267, '\n  master-bate', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(268, '\n  masterb8', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(269, '\n  masterbat3', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(270, '\n  masterbat', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(271, '\n  masterbate', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(272, '\n  masterbation', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(273, '\n  masterbations', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(274, '\n  masturbate', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(275, '\n  mo-fo', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(276, '\n  mof0', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(277, '\n  mofo', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(278, '\n  mothafuck', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(279, '\n  mothafucka', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(280, '\n  mothafuckas', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(281, '\n  mothafuckaz', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(282, '\n  mothafucked', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(283, '\n  mothafucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(284, '\n  mothafuckers', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(285, '\n  mothafuckin', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(286, '\n  mothafucking', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(287, '\n  mothafuckings', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(288, '\n  mothafucks', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(289, '\n  mother fucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(290, '\n  motherfuck', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(291, '\n  motherfucked', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(292, '\n  motherfucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(293, '\n  motherfuckers', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(294, '\n  motherfuckin', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(295, '\n  motherfucking', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(296, '\n  motherfuckings', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(297, '\n  motherfuckka', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(298, '\n  motherfucks', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(299, '\n  muff', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(300, '\n  mutha', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(301, '\n  muthafecker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(302, '\n  muthafuckker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(303, '\n  muther', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(304, '\n  mutherfucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(305, '\n  n1gga', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(306, '\n  n1gger', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(307, '\n  nazi', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(308, '\n  nigg3r', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(309, '\n  nigg4h', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(310, '\n  nigga', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(311, '\n  niggah', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(312, '\n  niggas', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(313, '\n  niggaz', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(314, '\n  nigger', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(315, '\n  niggers', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(316, '\n  nob', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(317, '\n  nob jokey', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(318, '\n  nobhead', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(319, '\n  nobjocky', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(320, '\n  nobjokey', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(321, '\n  numbnuts', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(322, '\n  nutsack', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(323, '\n  orgasim', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(324, '\n  orgasims', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(325, '\n  orgasm', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(326, '\n  orgasms', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(327, '\n  p0rn', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(328, '\n  pawn', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(329, '\n  pecker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(330, '\n  penis', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(331, '\n  penisfucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(332, '\n  phonesex', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(333, '\n  phuck', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(334, '\n  phuk', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(335, '\n  phuked', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(336, '\n  phuking', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(337, '\n  phukked', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(338, '\n  phukking', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(339, '\n  phuks', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(340, '\n  phuq', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(341, '\n  pigfucker', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(342, '\n  pimpis', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(343, '\n  piss', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(344, '\n  pissed', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(345, '\n  pisser', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(346, '\n  pissers', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(347, '\n  pisses', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(348, '\n  pissflaps', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(349, '\n  pissin', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(350, '\n  pissing', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(351, '\n  pissoff', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(352, '\n  poop', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(353, '\n  porn', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(354, '\n  porno', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(355, '\n  pornography', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(356, '\n  pornos', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(357, '\n  prick', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(358, '\n  pricks', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(359, '\n  pron', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(360, '\n  pube', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(361, '\n  pusse', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(362, '\n  pussi', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(363, '\n  pussies', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(364, '\n  pussy', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(365, '\n  pussys', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(366, '\n  rectum', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(367, '\n  retard', '2023-07-25 07:25:57', '2023-07-25 07:25:57'),
(368, '\n  rimjaw', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(369, '\n  rimming', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(370, '\n  s hit', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(371, '\n  s.o.b.', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(372, '\n  sadist', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(373, '\n  schlong', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(374, '\n  screwing', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(375, '\n  scroat', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(376, '\n  scrote', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(377, '\n  scrotum', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(378, '\n  semen', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(379, '\n  sex', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(380, '\n  sh!+', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(381, '\n  sh!t', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(382, '\n  sh1t', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(383, '\n  shag', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(384, '\n  shagger', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(385, '\n  shaggin', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(386, '\n  shagging', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(387, '\n  shemale', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(388, '\n  shi+', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(389, '\n  shit', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(390, '\n  shitdick', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(391, '\n  shite', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(392, '\n  shited', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(393, '\n  shitey', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(394, '\n  shitfuck', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(395, '\n  shitfull', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(396, '\n  shithead', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(397, '\n  shiting', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(398, '\n  shitings', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(399, '\n  shits', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(400, '\n  shitted', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(401, '\n  shitter', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(402, '\n  shitters', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(403, '\n  shitting', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(404, '\n  shittings', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(405, '\n  shitty', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(406, '\n  skank', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(407, '\n  slut', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(408, '\n  sluts', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(409, '\n  smegma', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(410, '\n  smut', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(411, '\n  snatch', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(412, '\n  son-of-a-bitch', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(413, '\n  spac', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(414, '\n  spunk', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(415, '\n  s_h_i_t', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(416, '\n  t1tt1e5', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(417, '\n  t1tties', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(418, '\n  teets', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(419, '\n  teez', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(420, '\n  testical', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(421, '\n  testicle', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(422, '\n  tit', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(423, '\n  titfuck', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(424, '\n  tits', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(425, '\n  titt', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(426, '\n  tittie5', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(427, '\n  tittiefucker', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(428, '\n  titties', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(429, '\n  tittyfuck', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(430, '\n  tittywank', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(431, '\n  titwank', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(432, '\n  tosser', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(433, '\n  turd', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(434, '\n  tw4t', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(435, '\n  twat', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(436, '\n  twathead', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(437, '\n  twatty', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(438, '\n  twunt', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(439, '\n  twunter', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(440, '\n  v14gra', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(441, '\n  v1gra', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(442, '\n  vagina', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(443, '\n  viagra', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(444, '\n  vulva', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(445, '\n  w00se', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(446, '\n  wang', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(447, '\n  wank', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(448, '\n  wanker', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(449, '\n  wanky', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(450, '\n  whoar', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(451, '\n  whore', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(452, '\n  willies', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(453, '\n  willy', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(454, '\n  xrated', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(455, '\n  xxx', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(456, '\n  ahole', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(457, '\n  ash0le', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(458, '\n  ash0les', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(459, '\n  asholes', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(460, '\n  ass monkey', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(461, '\n  assface', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(462, '\n  assh0le', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(463, '\n  assh0lez', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(464, '\n  assholz', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(465, '\n  asswipe', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(466, '\n  azzhole', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(467, '\n  bassterds', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(468, '\n  bastards', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(469, '\n  bastardz', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(470, '\n  basterds', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(471, '\n  basterdz', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(472, '\n  boffing', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(473, '\n  buttwipe', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(474, '\n  c0cks', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(475, '\n  c0k', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(476, '\n  cawks', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(477, '\n  cnts', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(478, '\n  cntz', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(479, '\n  cock-head', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(480, '\n  cuntz', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(481, '\n  dild0', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(482, '\n  dild0s', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(483, '\n  dilld0', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(484, '\n  dilld0s', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(485, '\n  dominatricks', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(486, '\n  dominatrics', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(487, '\n  dominatrix', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(488, '\n  enema', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(489, '\n  fag1t', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(490, '\n  faget', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(491, '\n  fagg1t', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(492, '\n  faggit', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(493, '\n  fagg0t', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(494, '\n  fagit', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(495, '\n  fagz', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(496, '\n  faig', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(497, '\n  faigs', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(498, '\n  fart', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(499, '\n  flipping the bird', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(500, '\n  fukah', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(501, '\n  fuken', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(502, '\n  fukin', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(503, '\n  fukk', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(504, '\n  fukkah', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(505, '\n  fukken', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(506, '\n  g00k', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(507, '\n  h00r', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(508, '\n  h0ar', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(509, '\n  h0re', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(510, '\n  hells', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(511, '\n  hoor', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(512, '\n  hoore', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(513, '\n  japs', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(514, '\n  jisim', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(515, '\n  jiss', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(516, '\n  knobs', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(517, '\n  knobz', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(518, '\n  kunt', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(519, '\n  kunts', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(520, '\n  kuntz', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(521, '\n  lezzian', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(522, '\n  lipshits', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(523, '\n  lipshitz', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(524, '\n  masokist', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(525, '\n  massterbait', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(526, '\n  masstrbait', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(527, '\n  masstrbate', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(528, '\n  masterbaiter', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(529, '\n  masterbates', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(530, '\n  motha fucker', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(531, '\n  motha fuker', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(532, '\n  motha fukkah', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(533, '\n  motha fukker', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(534, '\n  mother fukah', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(535, '\n  mother fuker', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(536, '\n  mother fukkah', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(537, '\n  mother fukker', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(538, '\n  mother-fucker', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(539, '\n  mutha fucker', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(540, '\n  mutha fukah', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(541, '\n  mutha fuker', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(542, '\n  mutha fukkah', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(543, '\n  mutha fukker', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(544, '\n  n1gr', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(545, '\n  nastt', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(546, '\n  nigger;', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(547, '\n  nigur;', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(548, '\n  niiger;', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(549, '\n  niigr;', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(550, '\n  orafis', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(551, '\n  orgasim;', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(552, '\n  orgasum', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(553, '\n  oriface', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(554, '\n  orifice', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(555, '\n  orifiss', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(556, '\n  packi', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(557, '\n  packie', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(558, '\n  packy', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(559, '\n  paki', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(560, '\n  pakie', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(561, '\n  paky', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(562, '\n  peeenus', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(563, '\n  peeenusss', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(564, '\n  peenus', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(565, '\n  peinus', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(566, '\n  pen1s', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(567, '\n  pen15', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(568, '\n  penas', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(569, '\n  penis-breath', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(570, '\n  penus', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(571, '\n  penuus', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(572, '\n  phuc', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(573, '\n  phuker', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(574, '\n  phukker', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(575, '\n  polac', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(576, '\n  polack', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(577, '\n  polak', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(578, '\n  poonani', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(579, '\n  pr1c', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(580, '\n  pr1ck', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(581, '\n  pr1k', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(582, '\n  pussee', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(583, '\n  puuke', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(584, '\n  puuker', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(585, '\n  queef', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(586, '\n  queer', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(587, '\n  queers', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(588, '\n  queerz', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(589, '\n  qweers', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(590, '\n  qweerz', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(591, '\n  qweir', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(592, '\n  recktum', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(593, '\n  scank', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(594, '\n  sexy', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(595, '\n  sh1ter', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(596, '\n  sh1ts', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(597, '\n  sh1tter', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(598, '\n  sh1tz', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(599, '\n  shity', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(600, '\n  shitz', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(601, '\n  shyt', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(602, '\n  shyte', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(603, '\n  shytty', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(604, '\n  shyty', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(605, '\n  skanck', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(606, '\n  skankee', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(607, '\n  skankey', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(608, '\n  skanks', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(609, '\n  skanky', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(610, '\n  slag', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(611, '\n  slutty', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(612, '\n  slutz', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(613, '\n  va1jina', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(614, '\n  vag1na', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(615, '\n  vagiina', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(616, '\n  vaj1na', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(617, '\n  vajina', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(618, '\n  vullva', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(619, '\n  w0p', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(620, '\n  wh00r', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(621, '\n  wh0re', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(622, '\n  b!+ch', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(623, '\n  arschloch', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(624, '\n  lesbian', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(625, '\n  @\\$\\$', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(626, '\n  amcik', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(627, '\n  andskota', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(628, '\n  assrammer', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(629, '\n  ayir', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(630, '\n  bi7ch', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(631, '\n  butt-pirate', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(632, '\n  cabron', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(633, '\n  cazzo', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(634, '\n  chraa', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(635, '\n  chuj', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(636, '\n  d4mn', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(637, '\n  daygo', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(638, '\n  dego', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(639, '\n  dupa', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(640, '\n  dziwka', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(641, '\n  ejackulate', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(642, '\n  ekto', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(643, '\n  enculer', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(644, '\n  faen', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(645, '\n  fanculo', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(646, '\n  feces', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(647, '\n  feg', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(648, '\n  felcher', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(649, '\n  ficken', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(650, '\n  flikker', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(651, '\n  foreskin', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(652, '\n  fotze', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(653, '\n  futkretzn', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(654, '\n  gook', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(655, '\n  guiena', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(656, '\n  h0r', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(657, '\n  h4x0r', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(658, '\n  helvete', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(659, '\n  honkey', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(660, '\n  huevon', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(661, '\n  hui', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(662, '\n  injun', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(663, '\n  kike', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(664, '\n  klootzak', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(665, '\n  kraut', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(666, '\n  knulle', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(667, '\n  kuk', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(668, '\n  kuksuger', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(669, '\n  Kurac', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(670, '\n  kurwa', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(671, '\n  lesbo', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(672, '\n  mamhoon', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(673, '\n  mibun', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(674, '\n  monkleigh', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(675, '\n  mouliewop', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(676, '\n  muie', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(677, '\n  mulkku', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(678, '\n  muschi', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(679, '\n  nazis', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(680, '\n  nepesaurio', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(681, '\n  orospu', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(682, '\n  perse', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(683, '\n  picka', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(684, '\n  pimmel', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(685, '\n  pizda', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(686, '\n  poontsee', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(687, '\n  pr0n', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(688, '\n  preteen', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(689, '\n  pula', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(690, '\n  pule', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(691, '\n  puta', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(692, '\n  puto', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(693, '\n  qahbeh', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(694, '\n  rautenberg', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(695, '\n  schaffer', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(696, '\n  schlampe', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(697, '\n  schmuck', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(698, '\n  screw', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(699, '\n  sharmuta', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(700, '\n  sharmute', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(701, '\n  shipal', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(702, '\n  shiz', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(703, '\n  skribz', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(704, '\n  skurwysyn', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(705, '\n  sphencter', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(706, '\n  spic', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(707, '\n  spierdalaj', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(708, '\n  splooge', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(709, '\n  suka', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(710, '\n  vittu', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(711, '\n  wichser', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(712, '\n  wetback', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(713, '\n  yed', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(714, '\n  zabourah', '2023-07-25 07:25:58', '2023-07-25 07:25:58'),
(715, '', '2023-07-25 07:25:58', '2023-07-25 07:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mid_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferred_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_for_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.png',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `reference_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` int(11) DEFAULT '0',
  `user_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `about` longtext COLLATE utf8mb4_unicode_ci,
  `verified_by_number` tinyint(4) DEFAULT '0',
  `otp` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_block` tinyint(4) DEFAULT '0',
  `forget_password_code` int(11) DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lon` decimal(10,7) DEFAULT NULL,
  `lat` decimal(10,7) DEFAULT NULL,
  `automation` tinyint(4) DEFAULT '0',
  `is_medical_condition` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `mid_name`, `last_name`, `preferred_name`, `phone`, `age`, `education`, `gender`, `account_for_id`, `email`, `password`, `address`, `type`, `profile`, `city`, `country`, `status`, `reference_link`, `reference_id`, `user_link`, `user_id`, `description`, `about`, `verified_by_number`, `otp`, `email_verified_at`, `is_block`, `forget_password_code`, `role_id`, `remember_token`, `created_at`, `updated_at`, `lon`, `lat`, `automation`, `is_medical_condition`) VALUES
(1, 'David', NULL, 'Brown', NULL, '1212121212', NULL, NULL, NULL, '', 'admin@gmail.com', '$2y$10$brYt68Ug0BnhAL1owPU9veh1JeTtt4LT.6HTnPmPF9vjKNH4z.7m6', NULL, 'admin', 'default.png', NULL, NULL, 0, '1', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 'admin', NULL, '2023-06-15 08:08:09', '2023-10-24 06:42:19', '67.0461475', '24.8574672', 0, 1),
(42, 'test', 'dev', 'eloper', 'test develop12', '12345678909', 30, 'Developer', 'male', '1', 'johnu@gmail.com', '$2y$10$bhRn55QztMrWHTxnH7sSOu.U7F2WPiI5Wy/vIefitSClbjDe0Q.v6', NULL, 'user', 'mpun2SORPyi5JyG0GJaO', 'los anglus', 'USA', 1, NULL, 43, 'refFiUSR9eO8C-1695282352', NULL, 'Running fine', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, 1234, NULL, 0, NULL, 'user', NULL, '2023-07-24 13:59:34', '2023-09-22 20:44:28', '22.0000000', '11.0000000', 0, 0),
(43, 'johnr', 'wick', 'recommender', 'John', NULL, 26, 'Graduation', 'male', '6', 'johnr@gmail.com', '$2y$10$GNj72Tannv1mSQMQjFn3HON7dK.xvgv4SCUmPRNAat85JJvzzbt1e', NULL, 'user', 'default.png', 'Ohio', 'USA', 1, 'ref8UZulVRhCj-1690207419', 0, NULL, NULL, NULL, 'love to Play Cricket', 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-07-24 14:02:07', '2023-08-04 12:29:15', '67.0460805', '24.8576514', 0, 1),
(44, 'carle', 'wick', 'caly', 'carly', '12345678888', 22, 'Graduation', 'male', '1', 'carle@gmail.com', '$2y$10$R3EaVrmKnjWGjxPJrwUfsOmo.//kMl9WKCOrUu5Lu3mx5rKWoxjwK', NULL, 'user', 'default.png', 'Ohio', 'USA', 1, NULL, 0, NULL, NULL, NULL, 'football lover', 1, NULL, NULL, 0, NULL, 'user', NULL, '2023-07-24 14:25:09', '2023-07-25 09:18:28', '67.0460805', '24.8576514', 0, 1),
(45, 'Andros', 'Willium', 'Jack', 'Andros Jack', '365323222', 30, 'Student', 'male', '4', 'andros@gmail.com', '$2y$10$fTVw4ak2QDDyALxTqTno0euRpHKu3Ih6/EeQRV.H300jwtoSh6d/e', NULL, 'user', 'default.png', 'LA', 'Usa', 1, 'refheKFuD8KvZ-1690276952', 0, NULL, NULL, NULL, 'Hi i m Andrps', 0, 1234, NULL, 0, NULL, 'user', NULL, '2023-07-25 09:11:50', '2023-07-27 14:43:14', '67.0461280', '24.8576758', 0, 1),
(47, 'Dany', 'Johnson', 'Mary', 'test develop12', '23666666666', 30, 'Developer', 'female', '1', 'wed@wed.com', '$2y$10$ihx4.F94Uy1fREWTan1BAuYIWFXTIbKYb6ao55Ko5OV9hvopgKUy6', NULL, 'user', 'default.png', 'los anglus', 'USA', 1, NULL, 45, NULL, NULL, 'Running fine', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content her', 1, 1234, NULL, 0, NULL, 'user', NULL, '2023-07-25 09:11:58', '2023-09-20 19:06:16', '22.0000000', '11.0000000', 0, 1),
(48, 'Mary', 'Lie', 'Teia', NULL, NULL, NULL, NULL, NULL, NULL, 'hasiqtech@gmail.com', '$2y$10$Ovg7JvYsCFTtaOSys6Q6x.WonerHCaB2H63ov9PsI5f614zm0Sj92', NULL, 'admin', 'default.png', NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 4441, 'user', '16960138588037', '2023-07-25 14:06:46', '2023-10-25 20:18:32', NULL, NULL, 0, 1),
(49, 'Lewis', NULL, 'Mark', '.', '03174714790', 25, 'Bachelors', 'Male', '1', 'lewis@gmail.com', '$2y$10$lJ.YsQoeT6/zYUvh3PTStOPRQEq7A4mO.3Y8pZsz02oU6iDg7cbj6', NULL, 'user', 'X4k2cV9QD8ZA7vFZvgda', 'Los Angeles', 'USA', 1, NULL, 0, 'refqQTB4EAkFi-1695147748', NULL, NULL, 'Me + You +… JK, You\nDon’t Have to Do Any Math to Send Me a Message!', 1, 1234, NULL, 0, NULL, 'user', NULL, '2023-07-25 14:19:50', '2023-09-20 21:03:57', '67.0461350', '24.8576267', 0, 1),
(50, 'Gregory', '.', '.', '.', '12364597808', 28, 'Bachelors', 'male', '1', 'gregory@gmail.com', '$2y$10$0AsXOBqIBKOmYlWOftViv.NaROKIFKyXOapV9VswKG1E54JKoOxbu', NULL, 'user', 'default.png', 'New York City', 'USA', 1, NULL, 0, NULL, NULL, NULL, 'Hopeless Romantic? Nope.\nHOPEFUL Romantic Positively Searching for My Match!', 1, 1234, NULL, 0, NULL, 'user', NULL, '2023-07-25 14:25:44', '2023-07-31 15:24:29', '67.0461256', '24.8576252', 0, 1),
(51, 'Jack', '.', '.', '.', NULL, 30, 'Masters', 'male', '6', 'jack@gmail.com', '$2y$10$klKDjppHFIfYXAXA2afGw.zFVoGaRbIOPvohQyeQKhMcOpmMm1YIK', NULL, 'user', 'default.png', 'California', 'USA', 1, 'refvyRKwVPRyU-1690295523', 0, NULL, NULL, NULL, 'Fun and Adventurous Guy: Take a Chance and Send Me a Message!', 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-07-25 14:30:06', '2023-07-26 05:55:42', NULL, NULL, 0, 1),
(52, 'Henry', '.', '.', '.', '12364579085', 25, '.', 'male', '1', 'henry@gmail.com', '$2y$10$IkaNjsKKR8awL4EKkN7gy.tUEfYO2tPVcrQf3nfIaQ3Od/7S6KvUi', NULL, 'user', 'default.png', 'Los Angeles', 'USA', 1, NULL, 0, NULL, NULL, NULL, 'We’ll Never Know If We’re a Great Match Unless You Click that Message Me Button.', 1, 1234, NULL, 0, NULL, 'user', NULL, '2023-07-25 14:38:43', '2023-07-31 16:54:55', '67.0461259', '24.8576263', 0, 1),
(53, 'Willium', 'Carl', 'Son', NULL, NULL, NULL, NULL, NULL, NULL, 'techdev@gmail.com', '$2y$10$1v89jJiZUWySEqrKWzZRdOHm7F0HK4eFjpwz5vb3Zm9Uxhv8hF4He', NULL, 'user', 'default.png', NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-07-27 12:30:35', '2023-07-27 12:35:00', '22.0000000', '11.0000000', 0, 1),
(54, 'Willium', 'Carl', 'Son', NULL, NULL, NULL, NULL, NULL, NULL, 'techdev1@gmail.com', '$2y$10$kmQLbiUNx1iuAYe0ejeIBOTHZ7TuE179J/lNXIUTOADuJln.Mb5WO', NULL, 'user', 'default.png', NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-07-27 12:31:03', '2023-07-27 12:31:25', NULL, NULL, 0, 1),
(55, 'Mark Henry', 'f', 'r', 'gg', NULL, 24, 'bachelors', 'male', '4', 'henrymark@gmail.com', '$2y$10$UuQM/ciNuYMT.NFlm0ijvOxOEQVhkrxxqimMdvaoIdm3MkY9q.1gy', NULL, 'user', 'default.png', 'rt', 'rty', 1, 'refZBc9jAAFjK-1690470151', 0, NULL, NULL, NULL, 'sghzsjnb', 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-07-27 14:55:49', '2023-07-27 20:04:37', '67.0461105', '24.8576189', 0, 1),
(56, 'Mark', '.', '.', '.', NULL, 28, 'Bachelors', 'male', '4', 'mark@gmail.com', '$2y$10$LRzFeAfsQIiAXEEdkn8j9e4cofiV9n3mtrD4rzYEEhrr9fV8wnjOi', NULL, 'user', 'default.png', 'Los Angeles', 'USA', 1, 'refrfE8BW1p3j-1690811250', 0, NULL, NULL, NULL, 'Looking for partner 💔', 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-07-31 13:45:20', '2023-08-05 00:53:57', '67.0461255', '24.8576243', 0, 1),
(57, 'Recxy', 'Roi', 'RRRR', 'Reco', NULL, 18, 'BCS', 'female', '6', 'recommend@gmail.com', '$2y$10$UbEvymexPIx8QwMvtXBc.uQxOm0wAjUorTfQcfbWIx9hqm4uLGj0u', NULL, 'user', 'default.png', 'LHR', 'Mexico', 1, 'refMRllcjvPsu-1690876902', 0, NULL, NULL, NULL, 'Sky is the Height', 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-08-01 07:59:02', '2023-08-04 21:25:42', '-122.0840000', '37.4219983', 0, 1),
(58, 'Rose', 'R', 'Hamilton', 'Rose', NULL, 35, 'collage', 'Female', '6', 'Sugarrose23@gmail.com', '$2y$10$9cQutG8tlWoLGpQcx3f57eAMxT4yQBkLZsi1qStGRQILgLB1WdaNi', NULL, 'user', 'gBJaEIFyNrd8PF2bcHwgimage0', 'Aptos', 'ca', 1, 'refXUW1o1VVuU-1698190881', 0, NULL, NULL, NULL, 'Hi I’m fun', 0, NULL, NULL, 0, 5131, 'user', NULL, '2023-08-14 23:01:03', '2023-10-25 07:48:18', '-121.8863691', '36.9669667', 0, 1),
(66, 'test', 'dev', 'eloper', 'test develop12', NULL, 30, 'Developer', 'male', '2', 'testapiuserrecom@gmail.com', '$2y$10$T0SK7eBK15eqRXs2.JwrVOv/n/5gAEdysbXEbVbX/HCHSvNUogp6e', NULL, 'user', 'default.png', 'los anglus', 'USA', 1, 'refiEcC3ZTK7O-1693567316', 0, NULL, NULL, 'Running fine', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-09-01 18:14:46', '2023-09-01 18:25:58', '22.0000000', '11.0000000', 0, 1),
(68, 'test', 'dev', 'eloper', 'test develop12', NULL, 30, 'Developer', 'male', '1', 'testapiuserprofile@gmail.com', '$2y$10$zeeMjdVyIMlrtvrloqojKeDqAulJD/Jbxfh/xCK3S3gtvqA3.1f2C', NULL, 'user', 'default.png', 'los anglus', 'USA', 1, NULL, 66, 'refmHpj8desiE-1693568158', NULL, 'Running fine', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-09-01 18:27:07', '2023-09-01 18:35:58', '22.0000000', '11.0000000', 0, 1),
(69, 'test', 'dev', 'eloper', 'test develop12', NULL, 30, 'Developer', 'male', '1', 'robertsonalexander40@gmail.com', '$2a$12$IznPKltA1GPlBSuxKdEFxurLmemC6DnXEGjIMvQ0iN5/bNDyTgXOO', NULL, 'user', 'default.png', 'los anglus', 'USA', 1, NULL, 70, 'refeYjPXfAilf-1693568450', NULL, 'Running fine', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 0, NULL, NULL, 0, 3674, 'user', NULL, '2023-09-01 18:38:30', '2023-10-27 21:11:52', '11.0000000', '22.0000000', 0, 1),
(70, 'test', 'dev', 'eloper', 'test develop12', NULL, 30, 'Developer', 'male', '2', 'testapiuserrecom1@gmail.com', '$2y$10$du1SBj/rgmVN4SqVvdaIqu03f5/flOjxCmo6Lxbvy6fPrS.yXLncK', NULL, 'user', 'default.png', 'los anglus', 'USA', 1, 'refNfYzhSznFI-1695376746', 0, NULL, 69, 'Running fine', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-09-01 18:43:02', '2023-09-22 16:59:33', '22.0000000', '11.0000000', 0, 1),
(72, 'Hasee', 'fasi', 'khasi', 'bishi', '+923001234567', 23, 'bcs', 'Male', '1', 'tariq.ahmed@toobitech.com', '$2y$10$.I9KUf1IYHcpGe/4.RZdLebPaBUhkiI5gKKwF/.JsPx7ZO5oZrmvm', NULL, 'user', 'M0SwVehPhUKaOQhH6xtCimage0', 'khi', 'usa', 1, NULL, 0, 'refSDT25DQTvF-1696919831', NULL, NULL, 'yes it\'s hasee', 1, 1234, NULL, 0, 1060, 'user', NULL, '2023-09-12 16:25:39', '2023-10-27 21:16:26', '22.0000000', '11.0000000', 0, 1),
(73, 'Me', 'he', 'she', 'it', NULL, 25, 'be', 'Female', '6', 'me@gmail.com', '$2y$10$zGY2vn9z1HEhAaG74HDaAOOZRnqZ5bHUnAYCQisA7SPklMOFCN18e', NULL, 'user', 'i7rSkMcNWeqpF2FXVGDs', 'khi', 'usa', 1, 'reflymcPRyRKk-1698417849', 0, NULL, NULL, NULL, 'hey its me', 0, NULL, NULL, 0, 3727, 'user', NULL, '2023-09-13 19:09:32', '2023-10-31 19:21:20', '67.0461287', '24.8576110', 0, 1),
(86, 'test', 'dev', 'eloper', 'test develop12', NULL, 30, 'Developer', 'male', '1', 'testapi@gmail.com', '$2y$10$Q2dZnvaHk0keCONd8s/5k.tPE0hTT9PAtRJ/5vxwlFyOm/d0rvl0a', NULL, 'user', 'default.png', 'los anglus', 'USA', 1, NULL, 87, 'refyIu8N7UTGd-1695022995', NULL, 'Running fine', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-09-18 14:42:47', '2023-09-18 14:44:44', '22.0000000', '11.0000000', 0, 1),
(87, 'test', 'dev', 'eloper', 'test develop12', NULL, 30, 'Developer', 'male', '2', 'testapirec@gmail.com', '$2y$10$M.7hkrOvOnhXOkXiFn764.Ojv62tC3KVD1moNkmcVYpSJAK9lUkkS', NULL, 'user', 'default.png', 'los anglus', 'USA', 1, 'refT6tXfqZpT0-1695023127', 0, 'ref63KFC5Bd89-1695023119', 86, 'Running fine', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-09-18 14:44:44', '2023-09-18 14:45:27', '22.0000000', '11.0000000', 0, 1),
(88, 'test', 'dev', 'eloper', 'test develop12', NULL, 30, 'Developer', 'male', '2', 'testapirec1@gmail.com', '$2y$10$WdD39ScSutQnXVTi0RcSUu8e79RnsZNDRXM5S3NgiPgac9oQQF0.i', NULL, 'user', 'default.png', 'los anglus', 'USA', 1, 'refdLQSXNaJGA-1695023210', 0, NULL, NULL, 'Running fine', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-09-18 14:46:26', '2023-09-18 14:46:50', '22.0000000', '11.0000000', 0, 1),
(89, 'test', 'dev', 'eloper', 'test develop12', NULL, 30, 'Developer', 'male', '1', 'testapi1@gmail.com', '$2y$10$/oJhD9HznvyzPwgpSPUK6eGggfNzKYgp61mxhg7BLHL25k3LP87hm', NULL, 'user', '73gvzhkeS2Lc8xKe4kNQPNG', 'los anglus', 'USA', 1, NULL, 88, 'refGbf14N0G7H-1695023349', NULL, 'Running fine', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-09-18 14:48:40', '2023-09-22 14:18:35', '22.0000000', '11.0000000', 0, 1),
(90, 'Lewis', NULL, 'John', 'Lewis', '03174714790', 24, 'Bachelors', 'Male', '1', 'lewis.1@gmail.com', '$2y$10$uEvqmVCMNCLEl9166vD8j.lfHhNCF08B1QOIm12LTPc6FolCjH4m.', NULL, 'user', 'B1s9sUoQv1av9zorrudz', 'Los Angeles', 'USA', 1, NULL, 0, 'refHGQ7SlTT3e-1695135562', NULL, NULL, 'Hi.', 1, 1234, NULL, 0, NULL, 'user', NULL, '2023-09-19 21:57:23', '2023-09-22 23:19:31', '67.0460826', '24.8576856', 0, 1),
(91, 'Gross', NULL, 'John', 'Gross', NULL, 28, 'Masters', 'Male', '4', 'gross@gmail.com', '$2y$10$F8e90uZf6cL87U5HMnLEaOydzZkXjnmK5StRC8EckCOyB8CxhC09K', NULL, 'user', 'rJJ876lIgj91mHusiG74', 'Los Angeles', 'USA', 1, 'refdurln2W8Bg-1695136683', 0, NULL, NULL, NULL, 'hello', 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-09-19 22:16:54', '2023-09-19 22:18:12', NULL, NULL, 0, 1),
(92, 'Willium', 'Carl', 'Son', NULL, NULL, NULL, NULL, NULL, '1', 'techdev13@gmail.com', '$2y$10$Ap3ApnlDjcbm1vMkaMmJ1eLP2GrgNBuxnwAd3UJmm8zxNKWX49SWy', NULL, 'user', 'default.png', NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-09-20 19:07:46', '2023-09-20 19:07:50', '22.0000000', '11.0000000', 0, 1),
(93, 'Willium', 'Carl', 'Son', NULL, NULL, NULL, NULL, NULL, '0', 'techdev134@gmail.com', '$2y$10$2/.Q/fO5ZbcL41wtu1u1uOxHzVJFTMzSj5acOSDwavdl0ptm4G7XK', NULL, 'user', 'default.png', NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-09-20 19:08:10', '2023-09-20 19:08:20', '22.0000000', '11.0000000', 0, 1),
(94, 'test', 'dev', 'eloper', 'test develop12', '03123456789', 30, 'Developer', 'Male', '1', 'lalana@gmail.com', '$2y$10$5mngei0vkmoaqaN/iOwFgu4LrluHvDQWWnHIZd4/AG0YsceWMA1Ne', NULL, 'user', 'PnCWh5o9V56thtypfDeQimage0', 'los anglus', 'USA', 1, NULL, 95, 'refTTmwC9geKB-1695732645', NULL, 'Running fine', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, 1234, NULL, 0, NULL, 'user', NULL, '2023-09-20 19:25:55', '2023-09-26 20:48:18', '-122.0840000', '37.4219983', 0, 1),
(95, 'James', NULL, 'bond', '007', NULL, 41, 'bcs', 'Other', '4', 'james@gmail.com', '$2y$10$1P1uAF9b1DOIQ.DBIyDH5OSa0rZHCsW72FeWmn8MwnEen8gFJhqHS', NULL, 'user', '88X2PFiwXtXKbTAkG1Wwimage0', 'la', 'uk', 1, 'refgs3iBtL6H9-1695301896', NULL, NULL, NULL, NULL, 'yes', 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-09-20 19:28:12', '2023-09-22 21:19:17', '-122.0840000', '37.4219983', 0, 1),
(96, 'Willium', 'Carl', 'Son', NULL, NULL, NULL, NULL, NULL, '1', 'techdev1345@gmail.com', '$2y$10$UfLqIjfvhAhXnGChE2yKXeHJZfY5p9UW57JxmkdsQ2l1RuvIleoPG', NULL, 'user', 'default.png', NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-09-21 13:09:12', '2023-09-21 13:09:12', NULL, NULL, 0, 1),
(97, 'mark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'aliabbasneduet20@gmail.com', '$2y$10$9x2WEkf04NL1jn02w.wmp.vLq3lz1pAq2domlg/LmtDP4J0qQz5yq', NULL, 'user', 'default.png', NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-10-11 01:28:50', '2023-10-11 01:29:15', NULL, NULL, 0, 1),
(98, 'lewis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'aliabbasneduet25@gmail.com', '$2y$10$KUzMAPRhP9O5Ycv4GjpFC.hvLXBQ9v6H0YyZNdWTdjFImZ6IyT.EW', NULL, 'user', 'default.png', NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-10-11 01:35:15', '2023-10-11 01:35:27', NULL, NULL, 0, 1),
(99, 'testing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'testing111@gmail.com', '$2y$10$iONdc2OCrphELZ5.RQIQ6.tWPQ11y70wsOixWOBxEInSyLg4NwA5m', NULL, 'user', 'default.png', NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-10-13 15:17:35', '2023-10-13 15:17:53', NULL, NULL, 0, 1),
(100, 'Smith', '.', '.', '.', NULL, 26, 'BS', 'Male', '1', 'smith@gmail.com', '$2y$10$TqBqUSNyEZFR4/GxiqQwAuH1bxWnvaTDfSFz4r64X5YNZ0THmOXXC', NULL, 'user', 'uO0Sk10qVnQuH9XVD3erimage0', 'Los Angeles', 'USA', 1, NULL, 0, 'ref1lsUOtKh2G-1697216819', NULL, NULL, 'Hi...  I\'m here!!', 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-10-14 00:05:13', '2023-10-14 00:17:18', '67.0460582', '24.8576880', 0, 1),
(101, 'Test', '.', '.', '.', NULL, 34, 'BE', 'Male', '1', 'test@gmail.com', '$2y$10$BkjnwnGnvaTrS.GmSxm4g.qAzMH6amhXDmmw4Di41GktPNHYBCQN6', NULL, 'user', 'DSVGieE708innUlF9KL2image0', 'Los Angeles', 'USA', 1, NULL, 0, 'refdBlID32Zqy-1697217245', NULL, NULL, 'Hello..... I\'m also here!!!', 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-10-14 00:12:08', '2023-10-14 00:20:56', '67.0460516', '24.8576854', 0, 1),
(102, 'Diego', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'diego.wagner@xpertsapp.com', '$2y$10$fvua/V/H8ny.EakYycQUmuu/w6prEB6Kjn3XwLJhxCFTe9eDfprBG', NULL, 'user', 'default.png', NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-10-24 06:45:19', '2023-10-31 00:59:33', '67.0461428', '24.8574697', 0, 1),
(103, 'ali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'ali@gmail.com', '$2y$10$QgJ/N3JbAK.uJXqeKefr6evrGzvCEnShMcmx/aKvFBkZoaQ6jCJNO', NULL, 'user', 'default.png', NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-10-24 12:49:34', '2023-10-24 12:50:08', '67.0460191', '24.8576705', 0, 1),
(104, 'diego', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'diegowagner@xpertsapp.com', '$2y$10$LMjNDKM1P4lvMVgynk738.n3pFrA6kpPMBiCYbMsxI18YR4ZfldBS', NULL, 'user', 'default.png', NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-10-25 04:06:05', '2023-10-25 04:06:05', NULL, NULL, 0, 1),
(105, 'shabbir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'shabbir@itech19.com', '$2y$10$BMS9VXinoGpjpJ8gkZnj.e.8VflxwUGrVeTmo86pbcFqWaj9wyDHi', NULL, 'user', 'default.png', NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 'user', NULL, '2023-10-25 04:39:35', '2023-10-25 04:39:56', '67.0461475', '24.8574672', 0, 1),
(106, 'bushmeat ali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'bisharatali9111@gmail.com', '$2y$10$MRIe0rw8jkpnn3EqKJhoVuOzTiN63dAfn8AKlfteRiZEpf5vWAD3m', NULL, 'user', 'default.png', NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 3383, 'user', NULL, '2023-10-27 21:45:19', '2023-10-27 22:25:02', '67.0461543', '24.8575687', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_intrests`
--

CREATE TABLE `user_intrests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `intrest_id` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_intrests`
--

INSERT INTO `user_intrests` (`id`, `user_id`, `intrest_id`, `created_at`, `updated_at`) VALUES
(58, 18, 2, '2023-07-04 15:53:53', '2023-07-04 15:53:53'),
(59, 24, 3, '2023-07-05 09:49:05', '2023-07-05 09:49:05'),
(60, 24, 6, '2023-07-05 09:49:05', '2023-07-05 09:49:05'),
(61, 25, 6, '2023-07-05 13:42:57', '2023-07-05 13:42:57'),
(64, 27, 1, '2023-07-12 15:39:45', '2023-07-12 15:39:45'),
(65, 27, 5, '2023-07-12 15:39:45', '2023-07-12 15:39:45'),
(66, 27, 3, '2023-07-12 15:39:45', '2023-07-12 15:39:45'),
(67, 27, 6, '2023-07-12 15:39:45', '2023-07-12 15:39:45'),
(68, 28, 1, '2023-07-12 15:47:03', '2023-07-12 15:47:03'),
(70, 29, 1, '2023-07-14 14:35:55', '2023-07-14 14:35:55'),
(71, 29, 6, '2023-07-14 14:35:55', '2023-07-14 14:35:55'),
(72, 31, 4, '2023-07-14 14:42:14', '2023-07-14 14:42:14'),
(73, 31, 5, '2023-07-14 14:42:14', '2023-07-14 14:42:14'),
(74, 31, 6, '2023-07-14 14:42:14', '2023-07-14 14:42:14'),
(75, 31, 3, '2023-07-14 14:42:14', '2023-07-14 14:42:14'),
(76, 31, 2, '2023-07-14 14:42:14', '2023-07-14 14:42:14'),
(77, 31, 1, '2023-07-14 14:42:14', '2023-07-14 14:42:14'),
(78, 32, 2, '2023-07-14 14:58:30', '2023-07-14 14:58:30'),
(79, 32, 1, '2023-07-14 14:58:30', '2023-07-14 14:58:30'),
(80, 32, 5, '2023-07-14 14:58:30', '2023-07-14 14:58:30'),
(81, 32, 6, '2023-07-14 14:58:30', '2023-07-14 14:58:30'),
(83, 33, 1, '2023-07-14 16:00:41', '2023-07-14 16:00:41'),
(84, 33, 4, '2023-07-14 16:00:41', '2023-07-14 16:00:41'),
(85, 33, 5, '2023-07-14 16:00:41', '2023-07-14 16:00:41'),
(86, 34, 2, '2023-07-14 16:30:48', '2023-07-14 16:30:48'),
(87, 36, 1, '2023-07-14 17:41:04', '2023-07-14 17:41:04'),
(88, 36, 2, '2023-07-14 17:41:04', '2023-07-14 17:41:04'),
(89, 37, 1, '2023-07-14 21:48:34', '2023-07-14 21:48:34'),
(94, 37, 4, '2023-07-14 21:48:34', '2023-07-14 21:48:34'),
(95, 8, 1, '2023-07-14 22:06:40', '2023-07-14 22:06:40'),
(96, 8, 2, '2023-07-14 22:06:40', '2023-07-14 22:06:40'),
(97, 38, 1, '2023-07-14 22:11:21', '2023-07-14 22:11:21'),
(98, 38, 4, '2023-07-14 22:11:21', '2023-07-14 22:11:21'),
(99, 38, 2, '2023-07-14 22:11:21', '2023-07-14 22:11:21'),
(100, 41, 4, '2023-07-22 13:19:13', '2023-07-22 13:19:13'),
(101, 41, 1, '2023-07-22 13:19:13', '2023-07-22 13:19:13'),
(104, 43, 1, '2023-07-24 14:03:39', '2023-07-24 14:03:39'),
(105, 44, 2, '2023-07-24 14:33:36', '2023-07-24 14:33:36'),
(106, 44, 1, '2023-07-24 14:33:36', '2023-07-24 14:33:36'),
(107, 44, 3, '2023-07-24 14:33:36', '2023-07-24 14:33:36'),
(108, 45, 1, '2023-07-25 09:22:32', '2023-07-25 09:22:32'),
(109, 45, 2, '2023-07-25 09:22:32', '2023-07-25 09:22:32'),
(110, 45, 5, '2023-07-25 09:22:32', '2023-07-25 09:22:32'),
(111, 45, 6, '2023-07-25 09:22:32', '2023-07-25 09:22:32'),
(115, 47, 1, '2023-07-25 12:18:57', '2023-07-25 12:18:57'),
(116, 47, 5, '2023-07-25 12:18:57', '2023-07-25 12:18:57'),
(117, 47, 6, '2023-07-25 12:18:57', '2023-07-25 12:18:57'),
(118, 49, 1, '2023-07-25 14:23:32', '2023-07-25 14:23:32'),
(119, 49, 5, '2023-07-25 14:23:32', '2023-07-25 14:23:32'),
(120, 49, 6, '2023-07-25 14:23:32', '2023-07-25 14:23:32'),
(121, 50, 1, '2023-07-25 14:28:30', '2023-07-25 14:28:30'),
(122, 50, 4, '2023-07-25 14:28:30', '2023-07-25 14:28:30'),
(123, 50, 5, '2023-07-25 14:28:30', '2023-07-25 14:28:30'),
(124, 50, 6, '2023-07-25 14:28:30', '2023-07-25 14:28:30'),
(125, 51, 1, '2023-07-25 14:32:03', '2023-07-25 14:32:03'),
(126, 51, 3, '2023-07-25 14:32:03', '2023-07-25 14:32:03'),
(127, 51, 5, '2023-07-25 14:32:03', '2023-07-25 14:32:03'),
(128, 51, 4, '2023-07-25 14:32:03', '2023-07-25 14:32:03'),
(129, 52, 1, '2023-07-25 14:39:57', '2023-07-25 14:39:57'),
(130, 52, 4, '2023-07-25 14:39:57', '2023-07-25 14:39:57'),
(131, 52, 6, '2023-07-25 14:39:57', '2023-07-25 14:39:57'),
(134, 42, 5, '2023-07-27 06:52:35', '2023-07-27 06:52:35'),
(135, 42, 6, '2023-07-27 06:52:35', '2023-07-27 06:52:35'),
(136, 42, 7, '2023-07-27 06:52:35', '2023-07-27 06:52:35'),
(137, 42, 8, '2023-07-27 06:52:35', '2023-07-27 06:52:35'),
(139, 46, 6, '2023-07-27 13:36:02', '2023-07-27 13:36:02'),
(140, 55, 1, '2023-07-27 15:02:31', '2023-07-27 15:02:31'),
(141, 56, 1, '2023-07-31 13:47:30', '2023-07-31 13:47:30'),
(142, 56, 4, '2023-07-31 13:47:30', '2023-07-31 13:47:30'),
(143, 57, 3, '2023-08-01 08:01:42', '2023-08-01 08:01:42'),
(144, 57, 4, '2023-08-01 08:01:42', '2023-08-01 08:01:42'),
(145, 57, 2, '2023-08-01 08:01:42', '2023-08-01 08:01:42'),
(146, 58, 5, '2023-08-14 23:24:31', '2023-08-14 23:24:31'),
(147, 58, 6, '2023-08-14 23:24:31', '2023-08-14 23:24:31'),
(148, 59, 5, '2023-09-01 16:00:26', '2023-09-01 16:00:26'),
(149, 59, 6, '2023-09-01 16:00:26', '2023-09-01 16:00:26'),
(150, 59, 7, '2023-09-01 16:00:26', '2023-09-01 16:00:26'),
(151, 59, 8, '2023-09-01 16:00:26', '2023-09-01 16:00:26'),
(152, 60, 5, '2023-09-01 16:03:33', '2023-09-01 16:03:33'),
(153, 60, 6, '2023-09-01 16:03:33', '2023-09-01 16:03:33'),
(154, 60, 7, '2023-09-01 16:03:33', '2023-09-01 16:03:33'),
(155, 60, 8, '2023-09-01 16:03:33', '2023-09-01 16:03:33'),
(156, 63, 5, '2023-09-01 17:06:40', '2023-09-01 17:06:40'),
(157, 63, 6, '2023-09-01 17:06:40', '2023-09-01 17:06:40'),
(158, 63, 7, '2023-09-01 17:06:40', '2023-09-01 17:06:40'),
(159, 63, 8, '2023-09-01 17:06:40', '2023-09-01 17:06:40'),
(160, 65, 5, '2023-09-01 17:40:47', '2023-09-01 17:40:47'),
(161, 65, 6, '2023-09-01 17:40:47', '2023-09-01 17:40:47'),
(162, 65, 7, '2023-09-01 17:40:47', '2023-09-01 17:40:47'),
(163, 65, 8, '2023-09-01 17:40:47', '2023-09-01 17:40:47'),
(164, 66, 5, '2023-09-01 18:15:16', '2023-09-01 18:15:16'),
(165, 66, 6, '2023-09-01 18:15:16', '2023-09-01 18:15:16'),
(166, 66, 7, '2023-09-01 18:15:16', '2023-09-01 18:15:16'),
(167, 66, 8, '2023-09-01 18:15:16', '2023-09-01 18:15:16'),
(168, 68, 5, '2023-09-01 18:35:23', '2023-09-01 18:35:23'),
(169, 68, 6, '2023-09-01 18:35:23', '2023-09-01 18:35:23'),
(170, 68, 7, '2023-09-01 18:35:23', '2023-09-01 18:35:23'),
(171, 68, 8, '2023-09-01 18:35:23', '2023-09-01 18:35:23'),
(172, 69, 5, '2023-09-01 18:39:03', '2023-09-01 18:39:03'),
(173, 69, 6, '2023-09-01 18:39:03', '2023-09-01 18:39:03'),
(174, 69, 7, '2023-09-01 18:39:03', '2023-09-01 18:39:03'),
(175, 69, 8, '2023-09-01 18:39:03', '2023-09-01 18:39:03'),
(176, 70, 5, '2023-09-01 18:45:34', '2023-09-01 18:45:34'),
(177, 70, 6, '2023-09-01 18:45:34', '2023-09-01 18:45:34'),
(178, 70, 7, '2023-09-01 18:45:34', '2023-09-01 18:45:34'),
(179, 70, 8, '2023-09-01 18:45:34', '2023-09-01 18:45:34'),
(180, 72, 1, '2023-09-13 14:36:36', '2023-09-13 14:36:36'),
(181, 72, 2, '2023-09-13 14:36:36', '2023-09-13 14:36:36'),
(182, 72, 3, '2023-09-13 14:36:36', '2023-09-13 14:36:36'),
(185, 77, 5, '2023-09-18 14:13:05', '2023-09-18 14:13:05'),
(186, 77, 6, '2023-09-18 14:13:05', '2023-09-18 14:13:05'),
(187, 77, 7, '2023-09-18 14:13:05', '2023-09-18 14:13:05'),
(188, 77, 8, '2023-09-18 14:13:05', '2023-09-18 14:13:05'),
(189, 78, 5, '2023-09-18 14:19:48', '2023-09-18 14:19:48'),
(190, 78, 6, '2023-09-18 14:19:48', '2023-09-18 14:19:48'),
(191, 78, 7, '2023-09-18 14:19:48', '2023-09-18 14:19:48'),
(192, 78, 8, '2023-09-18 14:19:48', '2023-09-18 14:19:48'),
(193, 80, 5, '2023-09-18 14:25:24', '2023-09-18 14:25:24'),
(194, 80, 6, '2023-09-18 14:25:24', '2023-09-18 14:25:24'),
(195, 80, 7, '2023-09-18 14:25:24', '2023-09-18 14:25:24'),
(196, 80, 8, '2023-09-18 14:25:24', '2023-09-18 14:25:24'),
(197, 82, 5, '2023-09-18 14:28:57', '2023-09-18 14:28:57'),
(198, 82, 6, '2023-09-18 14:28:57', '2023-09-18 14:28:57'),
(199, 82, 7, '2023-09-18 14:28:57', '2023-09-18 14:28:57'),
(200, 82, 8, '2023-09-18 14:28:57', '2023-09-18 14:28:57'),
(201, 83, 5, '2023-09-18 14:30:21', '2023-09-18 14:30:21'),
(202, 83, 6, '2023-09-18 14:30:21', '2023-09-18 14:30:21'),
(203, 83, 7, '2023-09-18 14:30:21', '2023-09-18 14:30:21'),
(204, 83, 8, '2023-09-18 14:30:21', '2023-09-18 14:30:21'),
(205, 84, 5, '2023-09-18 14:35:20', '2023-09-18 14:35:20'),
(206, 84, 6, '2023-09-18 14:35:20', '2023-09-18 14:35:20'),
(207, 84, 7, '2023-09-18 14:35:20', '2023-09-18 14:35:20'),
(208, 84, 8, '2023-09-18 14:35:20', '2023-09-18 14:35:20'),
(209, 85, 5, '2023-09-18 14:36:34', '2023-09-18 14:36:34'),
(210, 85, 6, '2023-09-18 14:36:34', '2023-09-18 14:36:34'),
(211, 85, 7, '2023-09-18 14:36:34', '2023-09-18 14:36:34'),
(212, 85, 8, '2023-09-18 14:36:34', '2023-09-18 14:36:34'),
(213, 86, 5, '2023-09-18 14:43:15', '2023-09-18 14:43:15'),
(214, 86, 6, '2023-09-18 14:43:15', '2023-09-18 14:43:15'),
(215, 86, 7, '2023-09-18 14:43:15', '2023-09-18 14:43:15'),
(216, 86, 8, '2023-09-18 14:43:15', '2023-09-18 14:43:15'),
(217, 87, 5, '2023-09-18 14:45:19', '2023-09-18 14:45:19'),
(218, 87, 6, '2023-09-18 14:45:19', '2023-09-18 14:45:19'),
(219, 87, 7, '2023-09-18 14:45:19', '2023-09-18 14:45:19'),
(220, 87, 8, '2023-09-18 14:45:19', '2023-09-18 14:45:19'),
(221, 88, 5, '2023-09-18 14:46:50', '2023-09-18 14:46:50'),
(222, 88, 6, '2023-09-18 14:46:50', '2023-09-18 14:46:50'),
(223, 88, 7, '2023-09-18 14:46:50', '2023-09-18 14:46:50'),
(224, 88, 8, '2023-09-18 14:46:50', '2023-09-18 14:46:50'),
(225, 89, 5, '2023-09-18 14:49:09', '2023-09-18 14:49:09'),
(226, 89, 6, '2023-09-18 14:49:09', '2023-09-18 14:49:09'),
(227, 89, 7, '2023-09-18 14:49:09', '2023-09-18 14:49:09'),
(228, 89, 8, '2023-09-18 14:49:09', '2023-09-18 14:49:09'),
(229, 90, 1, '2023-09-19 21:59:22', '2023-09-19 21:59:22'),
(230, 90, 2, '2023-09-19 21:59:22', '2023-09-19 21:59:22'),
(231, 91, 1, '2023-09-19 22:18:03', '2023-09-19 22:18:03'),
(232, 91, 2, '2023-09-19 22:18:03', '2023-09-19 22:18:03'),
(233, 91, 6, '2023-09-19 22:18:03', '2023-09-19 22:18:03'),
(234, 91, 4, '2023-09-19 22:18:03', '2023-09-19 22:18:03'),
(235, 91, 5, '2023-09-19 22:18:03', '2023-09-19 22:18:03'),
(236, 91, 3, '2023-09-19 22:18:03', '2023-09-19 22:18:03'),
(237, 95, 4, '2023-09-20 20:52:36', '2023-09-20 20:52:36'),
(238, 95, 1, '2023-09-20 20:52:36', '2023-09-20 20:52:36'),
(240, 94, 5, '2023-09-21 14:37:52', '2023-09-21 14:37:52'),
(241, 94, 6, '2023-09-22 17:00:41', '2023-09-22 17:00:41'),
(242, 94, 7, '2023-09-22 17:00:41', '2023-09-22 17:00:41'),
(243, 94, 8, '2023-09-22 17:00:41', '2023-09-22 17:00:41'),
(244, 100, 1, '2023-10-14 00:06:59', '2023-10-14 00:06:59'),
(245, 100, 5, '2023-10-14 00:06:59', '2023-10-14 00:06:59'),
(246, 100, 4, '2023-10-14 00:06:59', '2023-10-14 00:06:59'),
(247, 101, 1, '2023-10-14 00:14:05', '2023-10-14 00:14:05'),
(248, 101, 2, '2023-10-14 00:14:05', '2023-10-14 00:14:05'),
(249, 101, 5, '2023-10-14 00:14:05', '2023-10-14 00:14:05'),
(250, 73, 4, '2023-10-25 23:16:45', '2023-10-25 23:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_medical_conditions`
--

CREATE TABLE `user_medical_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `medical_condition_id` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_medical_conditions`
--

INSERT INTO `user_medical_conditions` (`id`, `user_id`, `medical_condition_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2023-06-21 11:12:10', '2023-06-21 11:12:10'),
(2, 2, 2, '2023-06-21 11:12:10', '2023-06-21 11:12:10'),
(3, 2, 3, '2023-06-21 11:12:10', '2023-06-21 11:12:10'),
(4, 2, 5, '2023-06-21 11:12:10', '2023-06-21 11:12:10'),
(5, 4, 1, '2023-06-21 11:18:38', '2023-06-21 11:18:38'),
(6, 4, 2, '2023-06-21 11:18:38', '2023-06-21 11:18:38'),
(7, 4, 3, '2023-06-21 11:18:38', '2023-06-21 11:18:38'),
(9, 4, 5, '2023-06-21 11:44:02', '2023-06-21 11:44:02'),
(10, 12, 1, '2023-06-26 12:28:30', '2023-06-26 12:28:30'),
(11, 12, 2, '2023-06-26 12:28:30', '2023-06-26 12:28:30'),
(12, 12, 3, '2023-06-26 12:28:30', '2023-06-26 12:28:30'),
(13, 12, 5, '2023-06-26 12:28:30', '2023-06-26 12:28:30'),
(14, 13, 1, '2023-06-26 12:42:38', '2023-06-26 12:42:38'),
(15, 13, 2, '2023-06-26 12:42:38', '2023-06-26 12:42:38'),
(16, 13, 3, '2023-06-26 12:42:38', '2023-06-26 12:42:38'),
(17, 13, 5, '2023-06-26 12:42:38', '2023-06-26 12:42:38'),
(18, 46, 1, '2023-07-27 06:52:01', '2023-07-27 06:52:01'),
(19, 46, 2, '2023-07-27 06:52:01', '2023-07-27 06:52:01'),
(20, 46, 3, '2023-07-27 06:52:01', '2023-07-27 06:52:01'),
(21, 46, 5, '2023-07-27 06:52:01', '2023-07-27 06:52:01'),
(22, 42, 1, '2023-07-27 06:52:35', '2023-07-27 06:52:35'),
(23, 42, 2, '2023-07-27 06:52:35', '2023-07-27 06:52:35'),
(24, 42, 3, '2023-07-27 06:52:35', '2023-07-27 06:52:35'),
(25, 42, 5, '2023-07-27 06:52:35', '2023-07-27 06:52:35'),
(26, 59, 1, '2023-09-01 16:00:26', '2023-09-01 16:00:26'),
(27, 59, 2, '2023-09-01 16:00:26', '2023-09-01 16:00:26'),
(28, 59, 3, '2023-09-01 16:00:26', '2023-09-01 16:00:26'),
(29, 59, 5, '2023-09-01 16:00:26', '2023-09-01 16:00:26'),
(30, 60, 1, '2023-09-01 16:03:33', '2023-09-01 16:03:33'),
(31, 60, 2, '2023-09-01 16:03:33', '2023-09-01 16:03:33'),
(32, 60, 3, '2023-09-01 16:03:33', '2023-09-01 16:03:33'),
(33, 60, 5, '2023-09-01 16:03:33', '2023-09-01 16:03:33'),
(34, 63, 1, '2023-09-01 17:06:40', '2023-09-01 17:06:40'),
(35, 63, 2, '2023-09-01 17:06:40', '2023-09-01 17:06:40'),
(36, 63, 3, '2023-09-01 17:06:40', '2023-09-01 17:06:40'),
(37, 63, 5, '2023-09-01 17:06:40', '2023-09-01 17:06:40'),
(38, 65, 1, '2023-09-01 17:40:47', '2023-09-01 17:40:47'),
(39, 65, 2, '2023-09-01 17:40:47', '2023-09-01 17:40:47'),
(40, 65, 3, '2023-09-01 17:40:47', '2023-09-01 17:40:47'),
(41, 65, 5, '2023-09-01 17:40:47', '2023-09-01 17:40:47'),
(42, 66, 1, '2023-09-01 18:15:16', '2023-09-01 18:15:16'),
(43, 66, 2, '2023-09-01 18:15:16', '2023-09-01 18:15:16'),
(44, 66, 3, '2023-09-01 18:15:16', '2023-09-01 18:15:16'),
(45, 66, 5, '2023-09-01 18:15:16', '2023-09-01 18:15:16'),
(46, 68, 1, '2023-09-01 18:35:23', '2023-09-01 18:35:23'),
(47, 68, 2, '2023-09-01 18:35:23', '2023-09-01 18:35:23'),
(48, 68, 3, '2023-09-01 18:35:23', '2023-09-01 18:35:23'),
(49, 68, 5, '2023-09-01 18:35:23', '2023-09-01 18:35:23'),
(50, 69, 1, '2023-09-01 18:39:03', '2023-09-01 18:39:03'),
(51, 69, 2, '2023-09-01 18:39:03', '2023-09-01 18:39:03'),
(52, 69, 3, '2023-09-01 18:39:03', '2023-09-01 18:39:03'),
(53, 69, 5, '2023-09-01 18:39:03', '2023-09-01 18:39:03'),
(54, 70, 1, '2023-09-01 18:45:34', '2023-09-01 18:45:34'),
(55, 70, 2, '2023-09-01 18:45:34', '2023-09-01 18:45:34'),
(56, 70, 3, '2023-09-01 18:45:34', '2023-09-01 18:45:34'),
(57, 70, 5, '2023-09-01 18:45:34', '2023-09-01 18:45:34'),
(58, 77, 1, '2023-09-18 14:13:05', '2023-09-18 14:13:05'),
(59, 77, 2, '2023-09-18 14:13:05', '2023-09-18 14:13:05'),
(60, 77, 3, '2023-09-18 14:13:05', '2023-09-18 14:13:05'),
(61, 77, 5, '2023-09-18 14:13:05', '2023-09-18 14:13:05'),
(62, 78, 1, '2023-09-18 14:19:48', '2023-09-18 14:19:48'),
(63, 78, 2, '2023-09-18 14:19:48', '2023-09-18 14:19:48'),
(64, 78, 3, '2023-09-18 14:19:48', '2023-09-18 14:19:48'),
(65, 78, 5, '2023-09-18 14:19:48', '2023-09-18 14:19:48'),
(66, 80, 1, '2023-09-18 14:25:24', '2023-09-18 14:25:24'),
(67, 80, 2, '2023-09-18 14:25:24', '2023-09-18 14:25:24'),
(68, 80, 3, '2023-09-18 14:25:24', '2023-09-18 14:25:24'),
(69, 80, 5, '2023-09-18 14:25:24', '2023-09-18 14:25:24'),
(70, 82, 1, '2023-09-18 14:28:57', '2023-09-18 14:28:57'),
(71, 82, 2, '2023-09-18 14:28:57', '2023-09-18 14:28:57'),
(72, 82, 3, '2023-09-18 14:28:57', '2023-09-18 14:28:57'),
(73, 82, 5, '2023-09-18 14:28:57', '2023-09-18 14:28:57'),
(74, 83, 1, '2023-09-18 14:30:21', '2023-09-18 14:30:21'),
(75, 83, 2, '2023-09-18 14:30:21', '2023-09-18 14:30:21'),
(76, 83, 3, '2023-09-18 14:30:21', '2023-09-18 14:30:21'),
(77, 83, 5, '2023-09-18 14:30:21', '2023-09-18 14:30:21'),
(78, 84, 1, '2023-09-18 14:35:20', '2023-09-18 14:35:20'),
(79, 84, 2, '2023-09-18 14:35:20', '2023-09-18 14:35:20'),
(80, 84, 3, '2023-09-18 14:35:20', '2023-09-18 14:35:20'),
(81, 84, 5, '2023-09-18 14:35:20', '2023-09-18 14:35:20'),
(82, 85, 1, '2023-09-18 14:36:34', '2023-09-18 14:36:34'),
(83, 85, 2, '2023-09-18 14:36:34', '2023-09-18 14:36:34'),
(84, 85, 3, '2023-09-18 14:36:34', '2023-09-18 14:36:34'),
(85, 85, 5, '2023-09-18 14:36:34', '2023-09-18 14:36:34'),
(86, 86, 1, '2023-09-18 14:43:15', '2023-09-18 14:43:15'),
(87, 86, 2, '2023-09-18 14:43:15', '2023-09-18 14:43:15'),
(88, 86, 3, '2023-09-18 14:43:15', '2023-09-18 14:43:15'),
(89, 86, 5, '2023-09-18 14:43:15', '2023-09-18 14:43:15'),
(90, 87, 1, '2023-09-18 14:45:19', '2023-09-18 14:45:19'),
(91, 87, 2, '2023-09-18 14:45:19', '2023-09-18 14:45:19'),
(92, 87, 3, '2023-09-18 14:45:19', '2023-09-18 14:45:19'),
(93, 87, 5, '2023-09-18 14:45:19', '2023-09-18 14:45:19'),
(94, 88, 1, '2023-09-18 14:46:50', '2023-09-18 14:46:50'),
(95, 88, 2, '2023-09-18 14:46:50', '2023-09-18 14:46:50'),
(96, 88, 3, '2023-09-18 14:46:50', '2023-09-18 14:46:50'),
(97, 88, 5, '2023-09-18 14:46:50', '2023-09-18 14:46:50'),
(98, 89, 1, '2023-09-18 14:49:09', '2023-09-18 14:49:09'),
(99, 89, 2, '2023-09-18 14:49:09', '2023-09-18 14:49:09'),
(100, 89, 3, '2023-09-18 14:49:09', '2023-09-18 14:49:09'),
(101, 89, 5, '2023-09-18 14:49:09', '2023-09-18 14:49:09'),
(102, 94, 1, '2023-09-22 17:00:41', '2023-09-22 17:00:41'),
(103, 94, 2, '2023-09-22 17:00:41', '2023-09-22 17:00:41'),
(104, 94, 3, '2023-09-22 17:00:41', '2023-09-22 17:00:41'),
(105, 94, 5, '2023-09-22 17:00:41', '2023-09-22 17:00:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_fors`
--
ALTER TABLE `account_fors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_modifications`
--
ALTER TABLE `content_modifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disappear_messages`
--
ALTER TABLE `disappear_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hearts`
--
ALTER TABLE `hearts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_and_supports`
--
ALTER TABLE `help_and_supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intrests`
--
ALTER TABLE `intrests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_conditions`
--
ALTER TABLE `medical_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `span_words`
--
ALTER TABLE `span_words`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_reference_link_unique` (`reference_link`);

--
-- Indexes for table `user_intrests`
--
ALTER TABLE `user_intrests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_medical_conditions`
--
ALTER TABLE `user_medical_conditions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_fors`
--
ALTER TABLE `account_fors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `content_modifications`
--
ALTER TABLE `content_modifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `disappear_messages`
--
ALTER TABLE `disappear_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hearts`
--
ALTER TABLE `hearts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `help_and_supports`
--
ALTER TABLE `help_and_supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `intrests`
--
ALTER TABLE `intrests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `medical_conditions`
--
ALTER TABLE `medical_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `span_words`
--
ALTER TABLE `span_words`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=716;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `user_intrests`
--
ALTER TABLE `user_intrests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `user_medical_conditions`
--
ALTER TABLE `user_medical_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
