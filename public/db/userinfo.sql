-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 09, 2023 at 09:24 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `name`, `email`) VALUES
(1, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(2, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(3, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(4, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(5, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(6, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(7, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(8, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(9, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(10, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(11, 'Pancake', 'faithtanuh@gmail.com'),
(12, 'Pancake', 'faithtanuh@gmail.com'),
(13, 'Pancake', 'faithtanuh@gmail.com'),
(14, 'Pancake', 'faithtanuh@gmail.com'),
(15, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(16, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(17, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(18, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(19, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(20, 'Mercy Mshai', 'faithtanuh@gmail.com'),
(21, 'Mercy Mshai', 'faithtanuh@gmail.com'),
(22, 'Bro', 'faithtanuh@gmail.com'),
(23, 'Bro', 'faithtanuh@gmail.com'),
(24, 'Bro', 'faithtanuh@gmail.com'),
(25, 'Bro', 'faithtanuh@gmail.com'),
(26, 'Bro', 'faithtanuh@gmail.com'),
(27, 'Bro', 'faithtanuh@gmail.com'),
(28, 'Bro', 'faithtanuh@gmail.com'),
(29, 'Bro', 'faithtanuh@gmail.com'),
(30, 'Bro', 'faithtanuh@gmail.com'),
(31, 'Hi', 'faithtanuh@gmail.com'),
(32, 'Hi', 'faithtanuh@gmail.com'),
(33, 'Hi', 'faithtanuh@gmail.com'),
(34, 'House', 'faithtanuh@gmail.com'),
(35, 'House', 'faithtanuh@gmail.com'),
(36, 'House', 'faithtanuh@gmail.com'),
(37, 'House', 'faithtanuh@gmail.com'),
(38, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(39, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(40, 'Mutanu', 'faithtanuh@gmail.com'),
(41, 'Mutanu', 'faithtanuh@gmail.com'),
(42, 'Mutanu u', 'faithtanuh@gmail.com'),
(43, 'Mutanu', 'faithtanuh@gmail.com'),
(44, 'Mutanu', 'faithtanuh@gmail.com'),
(45, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(46, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(47, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(48, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(49, 'Faith Mutanu', 'faithtanuh@gmail.com'),
(50, 'mom', 'faithtanuh@gmail.com'),
(51, 'Bro', 'faithtanuh@gmail.com');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_09_08_232800_create_info_table', 1),
(3, '2023_09_09_062401_create_todos_table', 2);

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
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `title`, `description`) VALUES
(1, 'buy groceries', '10 tomatoes, 5 Carrots, 15 Onions, and fruits'),
(2, 'Complete assessment', 'Do Frontend Task, Do Back end Task');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
