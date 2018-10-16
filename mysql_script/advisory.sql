-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2018 at 04:37 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `advisory`
--

-- --------------------------------------------------------

--
-- Table structure for table `listing`
--

CREATE TABLE `listing` (
  `id` int(5) NOT NULL,
  `list_name` varchar(45) NOT NULL,
  `distance` float(4,3) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listing`
--

INSERT INTO `listing` (`id`, `list_name`, `distance`, `user_id`) VALUES
(1, 'Pantai Seafood Restaurant', 1.900, 2),
(2, 'Signature By The Hill @ the Roof', 2.400, 2);

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
('090ba7c79c1ad5fd5c393785ea5e4ede28c47012ebdddb4ad6f2b7275a3e20e1b92823a180bae915', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 02:14:20', '2018-10-15 02:14:20', '2019-10-15 10:14:20'),
('17d6ed6a4c1b04f32632e362cfa1fdb3daf77deeae15bcdc9c2935d1fc990ea0fd6fb8a37fdf4fc1', 5, 3, 'Personal Access Token', '[]', 1, '2018-10-14 23:49:11', '2018-10-14 23:49:11', '2019-10-15 07:49:11'),
('30bec5ca40ab0134136e2337843169e1cc87d5c868730666844122f521735473dd1f6701c6fb3c75', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 00:57:03', '2018-10-15 00:57:03', '2019-10-15 08:57:03'),
('4056b0bb5ad8de64824a3dc652d977da3d3511dad8c5c1ede2082ccdc1e2e16a0e586592d6cf29ae', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 00:43:12', '2018-10-15 00:43:12', '2019-10-15 08:43:12'),
('41a0bfd53afe050c6a9ac7ee25853efe5912ecb23169f46eca95adbf283bd21d0723a94a166461ab', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 02:15:10', '2018-10-15 02:15:10', '2019-10-15 10:15:10'),
('44a24ef5dbfc9fa2dcc9652f764ed92410273d22ab4a7a21b734969d8490f3b275bdead383160a05', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 00:48:41', '2018-10-15 00:48:41', '2019-10-15 08:48:41'),
('4621fdfed406902d7e1ce70abf33ffb4f12d1886192937dcea9586c6741dcbcb7355ecefc09cc81f', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-14 23:33:32', '2018-10-14 23:33:32', '2019-10-15 07:33:32'),
('47dba8ec3a229ed0b79ca3ee4a3178d667c40a675485bd16046531aa960a8705dac5369fb5fe793b', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 00:59:36', '2018-10-15 00:59:36', '2019-10-15 08:59:36'),
('4fa360600e1bcf66e6fc2b0e843b81d668e49450e5d357e0621d2602a44df42e6e070baf454a54b4', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 01:02:44', '2018-10-15 01:02:44', '2019-10-15 09:02:44'),
('50548af62ce3e0ae2013ee54ae9426196978b20e67b376e12b1f71d649646794aa9372d199bb8d26', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 01:58:21', '2018-10-15 01:58:21', '2019-10-15 09:58:21'),
('5e39d3cd319891733a9d754444d691182e0ae3d58217d6eef7cfe22fdd4d0e0c16587dcbd30d7bb3', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 00:48:00', '2018-10-15 00:48:00', '2019-10-15 08:48:00'),
('6bc078fe2ed5614eb72f30716bace0299241ee277ece8e31b4a90e074a078879924e5faef8a7fbae', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 00:52:29', '2018-10-15 00:52:29', '2019-10-15 08:52:29'),
('6bcb8f1b11177f591b124e4f74da5fcc0cb6450312137d1f98600129a85be5fba455356db1d5795a', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 02:19:17', '2018-10-15 02:19:17', '2019-10-15 10:19:17'),
('6d6e2d5a2b43e050ce2e6aa84ad83614cf035775bd9664af8a81ee02ef4b163908ba84c3e9959b29', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-14 23:47:09', '2018-10-14 23:47:09', '2019-10-15 07:47:09'),
('6ffc4124fa219c47ea0ff509a3937348a597f7ccdd3e1d027a1f0273c8d639ab4c5b360a23bc1bf4', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-14 23:34:46', '2018-10-14 23:34:46', '2019-10-15 07:34:46'),
('7e2b5716ea805eeb95c9d80885058ea4ae356258c77eb7c0cfb40abf817f953f5b137cb4ced39963', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 02:13:24', '2018-10-15 02:13:24', '2019-10-15 10:13:24'),
('84207d79a8e5c933176a8875b7db2f323bf1611aad6765bd22001acd999aa08f65cdce72fcd4118f', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 00:56:23', '2018-10-15 00:56:23', '2019-10-15 08:56:23'),
('90c5949e15b8a59923a217fba0586a123b15e60bb6790845f00131ad142bf722ddfcc43d4d70ed27', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-14 23:26:44', '2018-10-14 23:26:44', '2019-10-15 07:26:44'),
('9cee62a092abc5eb0fa7124f0cac97baa08926af35d7c8b87e0ec98723c62954e5eb078f6fc37a3f', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-14 23:44:48', '2018-10-14 23:44:48', '2019-10-15 07:44:48'),
('9f8d7acae318dce64624b5c65eea1113e5a453d4307c4666795b01bf1832e7f8adc63dd0442c7e2e', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 00:55:15', '2018-10-15 00:55:15', '2019-10-15 08:55:15'),
('a219f8eb5e64847505feba1f01e857871777afd7a06c1b31170d75d7b977c4d6c7e6e1c3bed24c0b', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 02:15:54', '2018-10-15 02:15:54', '2019-10-15 10:15:54'),
('a663fe0a92398e6ded52ba4ac48e87ffb739e9cad6ffdfb648a5ccc5e0ea3dd3aa4b3eabcd467337', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 00:49:39', '2018-10-15 00:49:39', '2019-10-15 08:49:39'),
('a80174323401eb5f2e97ecea551ecd14984bb91db6bdda01ce472b2a4c2dbcb8e0c68c3e54eeb821', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 00:54:27', '2018-10-15 00:54:27', '2019-10-15 08:54:27'),
('aaef39b7bf481b33881b3b820b57090d1f26e6c59a1c756135a113540b9ddf0c520cd88a69ca72a7', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-14 23:48:03', '2018-10-14 23:48:03', '2019-10-15 07:48:03'),
('b3349b80860ba3a1583276f0741b04f6575a0a87eb00f64ed02ea6bee32f173c1eaa843cbcde33c4', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 01:59:42', '2018-10-15 01:59:42', '2019-10-15 09:59:42'),
('b59947ef807b126711d01e102b6e5c24216f7a4150e1d1b8961485c57ccb13f1e4b083948ed97c6b', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 00:50:48', '2018-10-15 00:50:48', '2019-10-15 08:50:48'),
('ce8571d2fff4708063955693340f04229cbe898fcb38339a6439970c1149d9991ae990416dd8d8be', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 02:17:00', '2018-10-15 02:17:00', '2019-10-15 10:17:00'),
('cea3f0a7ca1463ec37d7f27f033124c1652f5e1833b2c83c6481628fda309fdca5f180b4c7b1807d', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-15 02:04:13', '2018-10-15 02:04:13', '2019-10-15 10:04:13'),
('d24a4a3b91d7a485de8b3b64aa51be973316e2e02a17d43598194348594ca1a34dbd33fead2e2148', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-14 23:35:24', '2018-10-14 23:35:24', '2019-10-15 07:35:24'),
('e75fe783e0be9ff8c768f810ea2052a2a78e26468359b907f575220f1a04813c669a54b808d36f11', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-14 23:47:40', '2018-10-14 23:47:40', '2019-10-15 07:47:40'),
('f293f46f9928783d50a3344e6c95b04119456008f0700be145f3ed21b38060b80cf541a8aae249c4', 5, 3, 'Personal Access Token', '[]', 0, '2018-10-14 23:12:44', '2018-10-14 23:12:44', '2019-10-15 07:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'cOPfVh9FMfbEokUxuAbXsXOwc5jQb1wQE1qEQ5Ds', 'http://localhost', 1, 0, 0, '2018-10-14 08:41:02', '2018-10-14 08:41:02'),
(2, NULL, 'Laravel Password Grant Client', 'gaMuZvUA5dTbgu5nWe1kNsGceqC9hdcWWqlu2b3x', 'http://localhost', 0, 1, 0, '2018-10-14 08:41:02', '2018-10-14 08:41:02'),
(3, NULL, 'Laravel Personal Access Client', 'bMSkIIqjITKPZHku05FzXdAG6LypO8nhKNtIGPk6', 'http://localhost', 1, 0, 0, '2018-10-14 08:41:25', '2018-10-14 08:41:25'),
(4, NULL, 'Laravel Password Grant Client', 'bmX4sQ7wLQaKaIE1rK42PjVdTko2c53kamLn0FYR', 'http://localhost', 0, 1, 0, '2018-10-14 08:41:25', '2018-10-14 08:41:25');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-10-14 08:41:02', '2018-10-14 08:41:02'),
(2, 3, '2018-10-14 08:41:25', '2018-10-14 08:41:25');

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
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL COMMENT 'will be used as user_id',
  `email` varchar(255) NOT NULL COMMENT 'user email',
  `encrypted_password` varchar(255) NOT NULL COMMENT 'used bycrypt',
  `token` varchar(32) DEFAULT NULL COMMENT 'token alphanum',
  `type` char(1) NOT NULL COMMENT 'u - user a-admin'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `encrypted_password`, `token`, `type`) VALUES
(1, 'nurzan.jefry@gmail.com', '12345', '1234', 'a'),
(2, 'nrizan.koplo@gmail.com', '12345', '1235', 'u'),
(5, 'nurzan@test.com', '$2y$10$28NUdUObYpdk4WLNnUpzvOH4XKLa6OGUQCntgGRpe9RF8cTflKERa', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `listing`
--
ALTER TABLE `listing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userID_listingUSERID` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `token` (`token`);

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
-- AUTO_INCREMENT for table `listing`
--
ALTER TABLE `listing`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'will be used as user_id', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `listing`
--
ALTER TABLE `listing`
  ADD CONSTRAINT `fk_userID_listingUSERID` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
