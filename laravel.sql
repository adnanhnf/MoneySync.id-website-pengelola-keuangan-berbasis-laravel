-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2024 at 05:54 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories_credit`
--

CREATE TABLE `categories_credit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_credit`
--

INSERT INTO `categories_credit` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(2, 3, 'Konsumsi', '2023-12-15 23:12:14', '2023-12-15 23:12:14'),
(3, 3, 'Donasi Palestina', '2023-12-15 23:12:31', '2023-12-15 23:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `categories_debit`
--

CREATE TABLE `categories_debit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_debit`
--

INSERT INTO `categories_debit` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kas Bulanan', '2023-12-15 06:38:03', '2023-12-15 06:38:03'),
(2, 3, 'Kas Bulanan', '2023-12-15 23:09:10', '2023-12-15 23:09:10'),
(3, 3, 'Dana Donatur dari Bapak Mariadi', '2023-12-15 23:09:38', '2023-12-17 17:22:42'),
(6, 3, 'Kas', '2023-12-26 18:30:58', '2023-12-26 18:30:58'),
(7, 3, 'Dana Usaha', '2023-12-26 18:47:12', '2023-12-26 18:47:23'),
(8, 3, 'Donatur', '2023-12-26 18:49:24', '2023-12-26 18:49:24'),
(9, 3, 'investasi', '2023-12-27 01:45:16', '2023-12-27 01:45:16');

-- --------------------------------------------------------

--
-- Table structure for table `credit`
--

CREATE TABLE `credit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `nominal` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credit`
--

INSERT INTO `credit` (`id`, `user_id`, `category_id`, `nominal`, `description`, `credit_date`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 400000, 'untuk 40 anggota', '2023-12-16 12:00:00', '2023-12-15 23:13:02', '2023-12-15 23:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `debit`
--

CREATE TABLE `debit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `nominal` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `debit_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `debit`
--

INSERT INTO `debit` (`id`, `user_id`, `category_id`, `nominal`, `description`, `debit_date`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 200000, '30 anggota', '2023-12-15 08:00:00', '2023-12-15 06:38:45', '2023-12-15 06:38:45'),
(4, 3, 2, 200000, 'bulan september', '2023-09-12 12:00:00', '2023-12-15 23:14:13', '2023-12-15 23:14:13'),
(5, 3, 2, 200000, 'november', '2023-11-18 12:00:00', '2023-12-15 23:14:54', '2023-12-15 23:14:54'),
(7, 3, 2, 100000, 'jan', '2023-01-10 12:00:00', '2023-12-15 23:18:42', '2023-12-15 23:18:42'),
(8, 3, 2, 100000, 'feb', '2023-02-06 12:00:00', '2023-12-15 23:19:02', '2023-12-15 23:19:02'),
(9, 3, 2, 10000, 'mar', '2023-03-15 12:00:00', '2023-12-15 23:19:30', '2023-12-15 23:19:30'),
(10, 3, 2, 10000, 'aprl', '2023-04-12 12:00:00', '2023-12-15 23:19:53', '2023-12-15 23:19:53'),
(11, 3, 2, 10000, 'may', '2023-05-18 12:00:00', '2023-12-15 23:20:14', '2023-12-15 23:20:32'),
(12, 3, 2, 19000, 'jun', '2023-06-21 12:00:00', '2023-12-15 23:20:42', '2023-12-15 23:20:51'),
(13, 3, 2, 10000, 'jul', '2023-07-12 12:00:00', '2023-12-15 23:21:10', '2023-12-23 23:37:34'),
(15, 3, 2, 100000, 'Kas desember', '2023-12-27 12:00:00', '2023-12-26 18:33:57', '2023-12-26 18:49:06'),
(16, 3, 7, 100000, 'Jual risol', '2023-12-26 12:00:00', '2023-12-26 18:47:48', '2023-12-26 18:48:55'),
(17, 3, 7, 125000, 'Jual pisang karamel', '2023-12-27 12:00:00', '2023-12-26 18:48:41', '2023-12-26 18:48:41'),
(18, 3, 8, 500000, 'Dari Bp. Joko Marseno untuk acara tahun baru', '2023-12-28 12:00:00', '2023-12-26 18:50:10', '2023-12-26 18:50:25'),
(19, 3, 8, 450000, 'Dari Ibu Sumarni untuk jalan sehat hari ibu', '2023-12-16 12:00:00', '2023-12-26 18:51:55', '2023-12-26 18:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_11_08_081749_create_categories_credit_table', 1),
(10, '2019_11_08_081805_create_credit_table', 1),
(11, '2019_11_08_081821_create_categories_debit_table', 1),
(12, '2019_11_08_081836_create_debit_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `username`, `password`, `email_verified_at`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Farid', 'faridanwar@gmail.com', 'Anwar', '$2y$10$y.lJc8TQ3tc0/w7IU8J9hesOYjnaylQE5HMNkRCRVLiqaqRxzNwa.', NULL, NULL, 'zFy1gKQyV2bUI7QGoBNjjuc6SK3LCsGtMhwC67tHY3fVwLUrNKHLCjeAor0z', '2023-12-15 06:31:14', '2023-12-15 06:31:14'),
(2, 'Nicho', 'nichoprastomo@gmail.com', 'Prastomo', '$2y$10$LBqhv2.yumaFfMBdi3VEouEtw/7FRiztmfdgvmxa/wu9P8Jk3c6CW', NULL, NULL, 'wyB0W5FHsayBPZBP5ckHXBMLbIJlwsL4vu9kJD4lTncOiqGMcwMcx0WCPSVm', '2023-12-15 22:44:11', '2023-12-15 22:44:11'),
(3, 'Nicho Prastomo', 'prastomo@gmail.com', 'prastomow', '$2y$10$oyxundMkn3K1FIitz5ZcMOa1tt37VGI4ypNvaF2UdRg2mLF.aEwg6', NULL, NULL, 'YSjR74b24RXRV8DWdrhqpEvdRVrTJxWrYOavzW4llCvwXBRsWV3M61sVYhs9', '2023-12-15 22:48:59', '2023-12-15 22:48:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories_credit`
--
ALTER TABLE `categories_credit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_credit_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories_debit`
--
ALTER TABLE `categories_debit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_debit_user_id_foreign` (`user_id`);

--
-- Indexes for table `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credit_user_id_foreign` (`user_id`),
  ADD KEY `credit_category_id_foreign` (`category_id`);

--
-- Indexes for table `debit`
--
ALTER TABLE `debit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `debit_user_id_foreign` (`user_id`),
  ADD KEY `debit_category_id_foreign` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories_credit`
--
ALTER TABLE `categories_credit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories_debit`
--
ALTER TABLE `categories_debit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `credit`
--
ALTER TABLE `credit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `debit`
--
ALTER TABLE `debit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories_credit`
--
ALTER TABLE `categories_credit`
  ADD CONSTRAINT `categories_credit_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `categories_debit`
--
ALTER TABLE `categories_debit`
  ADD CONSTRAINT `categories_debit_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `credit`
--
ALTER TABLE `credit`
  ADD CONSTRAINT `credit_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories_credit` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `credit_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `debit`
--
ALTER TABLE `debit`
  ADD CONSTRAINT `debit_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories_debit` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `debit_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
