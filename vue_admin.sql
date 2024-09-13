-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 13, 2024 at 06:09 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `operator_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `operator_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Create', 'Created by admin(admin@laravel-vue-admin.eu.org)', '2024-09-13 12:55:31', '2024-09-13 12:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_20_125200_create_permission_tables', 1),
(4, '2019_04_20_130706_setup_role_permissions', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2022_05_20_092434_create_logs_table', 1),
(8, '2022_05_21_034423_create_requests_table', 1),
(9, '2022_05_24_145840_alter_uni_name_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(4, 'App\\Models\\User', 2),
(5, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view menu permission', 'api', '2024-09-13 11:44:54', '2024-09-13 11:44:54'),
(2, 'view menu administrator', 'api', '2024-09-13 11:44:54', '2024-09-13 11:44:54'),
(3, 'view menu charts', 'api', '2024-09-13 11:44:54', '2024-09-13 11:44:54'),
(4, 'manage user', 'api', '2024-09-13 11:44:54', '2024-09-13 11:44:54'),
(5, 'manage article', 'api', '2024-09-13 11:44:54', '2024-09-13 11:44:54'),
(6, 'manage permission', 'api', '2024-09-13 11:44:54', '2024-09-13 11:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'laravel-vue-admin', '003c489b2a3b40394bcd41f759fbbcfe84ec547f1e14a2c9e90bc9706e89c6dd', '[\"*\"]', '2024-09-13 12:55:37', NULL, '2024-09-13 12:52:24', '2024-09-13 12:55:37'),
(2, 'App\\Models\\User', 2, 'laravel-vue-admin', 'b662327bd5139e0d4e4b0766a7bcbb4e371b0a5e068f71c751ba0a92687e7b26', '[\"*\"]', '2024-09-13 12:55:59', NULL, '2024-09-13 12:55:47', '2024-09-13 12:55:59'),
(3, 'App\\Models\\User', 1, 'laravel-vue-admin', '9a40bd72477c41a3153ad989f6171d893012ab1ab110637a5f4bd8bb478e408c', '[\"*\"]', '2024-09-13 12:57:25', NULL, '2024-09-13 12:56:05', '2024-09-13 12:57:25'),
(4, 'App\\Models\\User', 2, 'laravel-vue-admin', '2acb3e1cf0f181fae754b9b5af0c783c65c369647ad7b8d54da92a67f4219545', '[\"*\"]', '2024-09-13 12:57:49', NULL, '2024-09-13 12:57:32', '2024-09-13 12:57:49'),
(5, 'App\\Models\\User', 1, 'laravel-vue-admin', '90ee6fe4af969cdf070389a3d4eb472b7cf330d92c0a6e32df444d4f9fbfce24', '[\"*\"]', '2024-09-13 13:04:41', NULL, '2024-09-13 12:58:10', '2024-09-13 13:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` bigint UNSIGNED NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varbinary(16) DEFAULT NULL,
  `visit_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `method`, `uri`, `ip`, `visit_at`) VALUES
(1, 'GET', '/', 0x7f000001, '2024-09-13 17:49:49'),
(2, 'GET', '/', 0x7f000001, '2024-09-13 17:49:50'),
(3, 'GET', '/_ignition/health-check', 0x7f000001, '2024-09-13 17:49:50'),
(4, 'GET', '/', 0x7f000001, '2024-09-13 17:50:19'),
(5, 'GET', '/api/sanctum/csrf-cookie', 0x7f000001, '2024-09-13 17:52:19'),
(6, 'POST', '/api/auth/login', 0x7f000001, '2024-09-13 17:52:20'),
(7, 'GET', '/api/sanctum/csrf-cookie', 0x7f000001, '2024-09-13 17:52:24'),
(8, 'POST', '/api/auth/login', 0x7f000001, '2024-09-13 17:52:24'),
(9, 'GET', '/api/user', 0x7f000001, '2024-09-13 17:52:24'),
(10, 'GET', '/api/orders', 0x7f000001, '2024-09-13 17:52:25'),
(11, 'GET', '/api/user', 0x7f000001, '2024-09-13 17:52:31'),
(12, 'GET', '/api/users/1/logs?page=1&per_page=10', 0x7f000001, '2024-09-13 17:52:31'),
(13, 'GET', '/api/roles?page=1&per_page=10&keyword=&role=', 0x7f000001, '2024-09-13 17:52:35'),
(14, 'GET', '/api/permissions', 0x7f000001, '2024-09-13 17:52:36'),
(15, 'GET', '/api/requests', 0x7f000001, '2024-09-13 17:53:01'),
(16, 'GET', '/api/roles?page=1&per_page=10&keyword=&role=', 0x7f000001, '2024-09-13 17:53:07'),
(17, 'GET', '/api/permissions', 0x7f000001, '2024-09-13 17:53:08'),
(18, 'GET', '/api/orders', 0x7f000001, '2024-09-13 17:53:09'),
(19, 'GET', '/api/user', 0x7f000001, '2024-09-13 17:53:19'),
(20, 'GET', '/api/users/1/logs?page=1&per_page=10', 0x7f000001, '2024-09-13 17:53:19'),
(21, 'GET', '/api/orders', 0x7f000001, '2024-09-13 17:53:21'),
(22, 'GET', '/api/orders', 0x7f000001, '2024-09-13 17:53:23'),
(23, 'GET', '/', 0x7f000001, '2024-09-13 17:53:29'),
(24, 'GET', '/api/user', 0x7f000001, '2024-09-13 17:53:30'),
(25, 'GET', '/api/orders', 0x7f000001, '2024-09-13 17:53:31'),
(26, 'GET', '/api/users?page=1&per_page=10&keyword=&role=', 0x7f000001, '2024-09-13 17:55:02'),
(27, 'GET', '/api/permissions', 0x7f000001, '2024-09-13 17:55:03'),
(28, 'POST', '/api/users', 0x7f000001, '2024-09-13 17:55:30'),
(29, 'GET', '/api/users?page=1&per_page=10&keyword=&role=', 0x7f000001, '2024-09-13 17:55:31'),
(30, 'POST', '/api/auth/logout', 0x7f000001, '2024-09-13 17:55:37'),
(31, 'GET', '/api/sanctum/csrf-cookie', 0x7f000001, '2024-09-13 17:55:46'),
(32, 'POST', '/api/auth/login', 0x7f000001, '2024-09-13 17:55:46'),
(33, 'GET', '/api/user', 0x7f000001, '2024-09-13 17:55:47'),
(34, 'POST', '/api/auth/logout', 0x7f000001, '2024-09-13 17:55:59'),
(35, 'GET', '/api/sanctum/csrf-cookie', 0x7f000001, '2024-09-13 17:56:04'),
(36, 'POST', '/api/auth/login', 0x7f000001, '2024-09-13 17:56:04'),
(37, 'GET', '/api/user', 0x7f000001, '2024-09-13 17:56:05'),
(38, 'GET', '/api/orders', 0x7f000001, '2024-09-13 17:56:05'),
(39, 'GET', '/api/roles?page=1&per_page=10&keyword=&role=', 0x7f000001, '2024-09-13 17:56:12'),
(40, 'GET', '/api/permissions', 0x7f000001, '2024-09-13 17:56:13'),
(41, 'GET', '/api/users?page=1&per_page=10&keyword=&role=', 0x7f000001, '2024-09-13 17:56:14'),
(42, 'GET', '/api/permissions', 0x7f000001, '2024-09-13 17:56:14'),
(43, 'GET', '/api/users/2/permissions', 0x7f000001, '2024-09-13 17:56:16'),
(44, 'GET', '/api/users/2/permissions', 0x7f000001, '2024-09-13 17:56:21'),
(45, 'GET', '/api/roles?page=1&per_page=10&keyword=&role=', 0x7f000001, '2024-09-13 17:56:45'),
(46, 'GET', '/api/permissions', 0x7f000001, '2024-09-13 17:56:46'),
(47, 'PUT', '/api/roles/4', 0x7f000001, '2024-09-13 17:57:19'),
(48, 'GET', '/api/roles?page=1&per_page=10&keyword=&role=', 0x7f000001, '2024-09-13 17:57:19'),
(49, 'POST', '/api/auth/logout', 0x7f000001, '2024-09-13 17:57:25'),
(50, 'GET', '/api/sanctum/csrf-cookie', 0x7f000001, '2024-09-13 17:57:32'),
(51, 'POST', '/api/auth/login', 0x7f000001, '2024-09-13 17:57:32'),
(52, 'GET', '/api/user', 0x7f000001, '2024-09-13 17:57:32'),
(53, 'GET', '/api/user', 0x7f000001, '2024-09-13 17:57:45'),
(54, 'GET', '/api/users/2/logs?page=1&per_page=10', 0x7f000001, '2024-09-13 17:57:45'),
(55, 'POST', '/api/auth/logout', 0x7f000001, '2024-09-13 17:57:49'),
(56, 'GET', '/api/sanctum/csrf-cookie', 0x7f000001, '2024-09-13 17:57:52'),
(57, 'POST', '/api/auth/login', 0x7f000001, '2024-09-13 17:57:53'),
(58, 'GET', '/api/sanctum/csrf-cookie', 0x7f000001, '2024-09-13 17:58:09'),
(59, 'POST', '/api/auth/login', 0x7f000001, '2024-09-13 17:58:10'),
(60, 'GET', '/api/user', 0x7f000001, '2024-09-13 17:58:10'),
(61, 'GET', '/api/orders', 0x7f000001, '2024-09-13 17:58:10'),
(62, 'GET', '/api/users?page=1&per_page=10&keyword=&role=', 0x7f000001, '2024-09-13 17:58:15'),
(63, 'GET', '/api/permissions', 0x7f000001, '2024-09-13 17:58:15'),
(64, 'GET', '/api/users/2/permissions', 0x7f000001, '2024-09-13 17:58:17'),
(65, 'PUT', '/api/users/2/permissions', 0x7f000001, '2024-09-13 17:58:30'),
(66, 'GET', '/api/roles?page=1&per_page=10&keyword=&role=', 0x7f000001, '2024-09-13 17:58:34'),
(67, 'GET', '/api/permissions', 0x7f000001, '2024-09-13 17:58:34'),
(68, 'PUT', '/api/roles/5', 0x7f000001, '2024-09-13 17:58:51'),
(69, 'GET', '/api/roles?page=1&per_page=10&keyword=&role=', 0x7f000001, '2024-09-13 17:58:51'),
(70, 'GET', '/api/orders', 0x7f000001, '2024-09-13 18:04:03'),
(71, 'GET', '/api/users?page=1&per_page=10&keyword=&role=', 0x7f000001, '2024-09-13 18:04:06'),
(72, 'GET', '/api/permissions', 0x7f000001, '2024-09-13 18:04:06'),
(73, 'GET', '/api/users/2/permissions', 0x7f000001, '2024-09-13 18:04:16'),
(74, 'PUT', '/api/users/2/permissions', 0x7f000001, '2024-09-13 18:04:40');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'api', '2024-09-13 11:44:54', '2024-09-13 11:44:54'),
(2, 'manager', 'api', '2024-09-13 11:44:54', '2024-09-13 11:44:54'),
(3, 'editor', 'api', '2024-09-13 11:44:54', '2024-09-13 11:44:54'),
(4, 'user', 'api', '2024-09-13 11:44:54', '2024-09-13 11:44:54'),
(5, 'visitor', 'api', '2024-09-13 11:44:54', '2024-09-13 11:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(1, 3),
(2, 3),
(3, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `avatar` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `sex` tinyint NOT NULL DEFAULT '0' COMMENT '0:man 1:woman',
  `birthday` timestamp NULL DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `nickname`, `avatar`, `email`, `status`, `sex`, `birthday`, `description`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', '', '', 'admin@laravel-vue-admin.eu.org', 1, 0, '2006-01-02 10:04:05', 'Talk is cheap. Show me the code', '$2y$10$hsoge1rO6Nk3tOsT0udvWuICZunbKWDcbRgyH/TS/C0J4tWZTYo5y', NULL, '2024-09-13 11:44:54', '2024-09-13 11:44:54', NULL),
(2, 'umar', '', '', 'umarf4929@gmail.com', 1, 0, '2024-09-22 19:00:00', 'assa', '$2y$10$iUq95rha3XA.VLbrj87HguT39R8Yw.h6.tv9epHdHZMfrbUusR6He', NULL, '2024-09-13 12:55:31', '2024-09-13 12:55:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logs_user_id_index` (`user_id`),
  ADD KEY `logs_operator_id_index` (`operator_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uni_name_deleted_at` (`name`,`deleted_at`),
  ADD UNIQUE KEY `uni_email_deleted_at` (`email`,`deleted_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
