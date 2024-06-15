-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2024 at 07:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mitrani`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `street_address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `order_id`, `first_name`, `last_name`, `phone`, `street_address`, `city`, `state`, `zip_code`, `created_at`, `updated_at`) VALUES
(14, 15, 'Azura', 'Putri', '089876543212', 'Medan Barat', 'Medan City', 'North Sumatra', '20123', '2024-06-14 22:03:30', '2024-06-14 22:03:30'),
(15, 16, 'Azura', 'Sevina', '083212345678', 'Medan Timur', 'Medan City', 'North Sumatra', '20123', '2024-06-14 22:05:50', '2024-06-14 22:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Adama', 'adama', 'categories/01HZHMRQ96QZ5F4R0VRQZ874FW.png', 1, '2024-06-04 05:49:43', '2024-06-04 05:49:50'),
(2, 'BASF', 'basf', 'categories/01HZHMTVGWDDKM7T5DX6EQD253.png', 1, '2024-06-04 05:50:53', '2024-06-04 05:51:02'),
(3, 'Bayer', 'bayer', 'categories/01HZHMVSZ7BTJY7C7W6HVKPWQ7.png', 1, '2024-06-04 05:51:24', '2024-06-04 05:51:32'),
(4, 'Corteva', 'corteva', 'categories/01HZHMWP5FE89C0G11041ZHA8B.png', 1, '2024-06-04 05:51:53', '2024-06-04 05:52:00'),
(5, 'FMC', 'fmc', 'categories/01HZHMXNJ03PYNGTATEKBXHX57.png', 1, '2024-06-04 05:52:25', '2024-06-04 05:52:41'),
(6, 'Nufarm', 'nufarm', 'categories/01HZHMYW5E4CND1GZYNDC25CJH.png', 1, '2024-06-04 05:53:05', '2024-06-04 05:53:13'),
(7, 'Nutrien', 'nutrien', 'categories/01HZHN05JBKKZF93ZRRNKJZGHH.png', 1, '2024-06-04 05:53:47', '2024-06-04 05:53:56'),
(8, 'PIONEER', 'pioneer', 'categories/01HZHN1JST3T4N9CHBMTMTT2V2.png', 1, '2024-06-04 05:54:34', '2024-06-04 05:54:40'),
(9, 'Pupuk Indonesia', 'pupuk-indonesia', 'categories/01HZHN3EPEJEWDBE29Y16VYJ5N.png', 1, '2024-06-04 05:55:35', '2024-06-04 05:55:57'),
(10, 'Sang Hyang Seri', 'sang-hyang-seri', 'categories/01HZHN552X7SA4FAW3PSWK6BDB.png', 1, '2024-06-04 05:56:31', '2024-06-04 05:56:38'),
(11, 'Syngenta', 'syngenta', 'categories/01HZHN692ZWPDTEATANV8ARR7D.png', 1, '2024-06-04 05:57:07', '2024-06-04 05:57:19'),
(12, 'UPL', 'upl', 'categories/01HZHN7MDXB9W2ZQNYHCDEVRY2.png', 1, '2024-06-04 05:57:52', '2024-06-04 05:57:59'),
(13, 'YARA', 'yara', 'categories/01HZHN8MM91ZMXYMAHZXKXKSJ4.png', 1, '2024-06-04 05:58:25', '2024-06-04 05:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Bahan Kimia', 'bahan-kimia', 'categories/01HZHKYJ45X34X232EE1GC3PT1.png', 1, '2024-06-04 05:35:26', '2024-06-04 05:36:41'),
(2, 'Benih / Bibit', 'benih-bibit', 'categories/01HZHM1SCRYKG667N6KHGPEJTC.png', 1, '2024-06-04 05:37:12', '2024-06-04 05:37:26'),
(3, 'Ikatan/Penutup/Perekat', 'ikatanpenutupperekat', 'categories/01HZHM3KCG82P7QEDNHA4YZQT8.png', 1, '2024-06-04 05:38:11', '2024-06-04 05:38:21'),
(4, 'Peralatan & Perlengkapan', 'peralatan-perlengkapan', 'categories/01HZHM5HGAJ9RGT1GCMQPTPHGV.png', 1, '2024-06-04 05:39:15', '2024-06-04 05:39:21'),
(5, 'Pupuk', 'pupuk', 'categories/01HZHM6FAFH66HJ48B16GK8BVE.png', 1, '2024-06-04 05:39:45', '2024-06-04 05:39:52'),
(6, 'Racun', 'racun', 'categories/01HZHM7GZ4XKF6KCBNYZRJ5HMC.png', 1, '2024-06-04 05:40:20', '2024-06-04 05:40:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_04_115905_create_categories_table', 1),
(6, '2024_06_04_115911_create_brands_table', 1),
(7, '2024_06_04_115937_create_products_table', 1),
(8, '2024_06_04_115943_create_orders_table', 1),
(9, '2024_06_04_115947_create_order_items_table', 1),
(10, '2024_06_04_120006_create_addresses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `grand_total` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `status` enum('new','processing','shipped','delivered','cancelled') NOT NULL DEFAULT 'new',
  `currency` varchar(255) DEFAULT NULL,
  `shipping_amount` decimal(10,2) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `grand_total`, `payment_method`, `payment_status`, `status`, `currency`, `shipping_amount`, `shipping_method`, `notes`, `created_at`, `updated_at`) VALUES
(15, 5, 150000.00, 'cod', 'pending', 'new', 'idr', 0.00, NULL, 'Order Placed byazura', '2024-06-14 22:03:30', '2024-06-14 22:03:30'),
(16, 5, 45000.00, 'cod', 'pending', 'new', 'idr', 0.00, NULL, 'Order Placed byazura', '2024-06-14 22:05:50', '2024-06-14 22:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `unit_amount` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `unit_amount`, `total_amount`, `created_at`, `updated_at`) VALUES
(16, 15, 1, 2, 75000.00, 150000.00, '2024-06-14 22:03:30', '2024-06-14 22:03:30'),
(17, 16, 2, 1, 45000.00, 45000.00, '2024-06-14 22:05:50', '2024-06-14 22:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images`)),
  `description` longtext DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `in_stock` tinyint(1) NOT NULL DEFAULT 1,
  `on_sale` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `slug`, `images`, `description`, `price`, `is_active`, `is_featured`, `in_stock`, `on_sale`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'Acemain', 'acemain', '[\"products\\/01HZHP5Q76PSB55T2H3KFWK4MR.png\"]', 'Pupuk yang bagus, sebagus kenanganmu dengannya!!', 75000.00, 1, 1, 1, 1, '2024-06-04 06:14:18', '2024-06-04 06:14:22'),
(2, 6, 1, 'AGIL 100 EC', 'agil-100-ec', '[\"products\\/01HZM1JB898FYS6YZDE9PMBWFM.png\"]', 'Herbisida sistemik purna tumbuh berbentuk pekatan yang dapat diemulsikan, berwarna kekuningan, untuk mengendalikan gulma berdaun sempit/rumput pada pertanaman kedelai, bawang merah, kelapa sawit, kacang tanah, dan tembakau\n\nCara Kerja :\n1.Herbisida sistemik purna tumbuh.\n2.Diserap melalui akar dan daun lalu ditranslokasikan keseluruh bagian gulma.\n3.Pertumbuhan gulma akan terhenti dalam 3-4 hari yang ditandai dengan matinya jaringan muda, dan akan mati dalam 10 – 20 hari.', 45000.00, 1, 1, 1, 1, '2024-06-05 04:11:55', '2024-06-05 04:12:00'),
(3, 6, 2, 'Basgran 460 SL', 'basgran-460-sl', '[\"products\\/01HZTWFA8GXYDS5GHR802WS9YG.png\"]', 'Bagus', 50000.00, 1, 1, 1, 1, '2024-06-07 19:57:33', '2024-06-14 05:01:23'),
(4, 5, 9, 'Pupuk NPK Phonska', 'pupuk-npk-phonska', '[\"products\\/01HZTWYY5NYS7QK679VXJ0NKE4.png\"]', 'Pupuk yang Baik', 450000.00, 1, 1, 1, 1, '2024-06-07 20:06:05', '2024-06-07 20:06:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@email.com', NULL, '$2y$10$U5Kke4Q7XrHomrAvBGKId.BQKKhefBFTCTyLFVcVtPr0kBqPVHIAC', NULL, '2024-06-04 05:08:59', '2024-06-04 05:08:59'),
(2, 'Gerald Pasaribu', 'gerald@email.com', '2024-06-04 12:21:55', '$2y$10$WUHD21mcrwbY7lB0xogyKOxhNI6ccK2Rbzok4SOt0Wmgs5gVbPkui', NULL, '2024-06-04 05:22:01', '2024-06-04 05:22:01'),
(3, 'Okma Ginting', 'okma@email.com', '2024-06-04 12:22:10', '$2y$10$edGIbH8Z9nWiM3swW8J7SusL7n.cQDDvgWMzQe4Ss9wENwhFAdrYC', 'CY69Iq69FkoaJl6URZ30z0NHon7ieCU6PUCfavx77nEkhA9DdkliMxISY1To', '2024-06-04 05:22:33', '2024-06-11 03:17:26'),
(4, 'Riama', 'riama@email.com', NULL, '$2y$10$vneqHZP6LwIM9yAC1.HCMO4H5G/SlL/lidpU7Vs4A6wvmY92gi3yK', NULL, '2024-06-10 17:34:13', '2024-06-10 17:34:13'),
(5, 'azura', 'azura@email.com', NULL, '$2y$10$NcA4UPc5dEQ67oW.khv17uhKb0BgC6oS4P9MQxsqTYmyVXNdHeLgy', 'KejNu0QtGr4ZK2k9IgduuVkDEUhRxkdZwrG0BgxYuQU7iHCIOYPAyiR0GQ61', '2024-06-10 18:10:16', '2024-06-14 21:49:27'),
(6, 'Elisabeth', 'elisabeth@email.com', NULL, '$2y$10$umjnPb.oLUj6hXlHZu3HFOMKuJ4rbQcmzd8NbmzgCezesV4elIvui', NULL, '2024-06-14 18:25:45', '2024-06-14 18:25:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_order_id_foreign` (`order_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

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
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
