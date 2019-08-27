-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2019 at 09:53 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timetable`
--

-- --------------------------------------------------------

--
-- Table structure for table `dates`
--

CREATE TABLE `dates` (
  `date_id` int(11) NOT NULL,
  `month` varchar(30) NOT NULL,
  `day_counts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dates`
--

INSERT INTO `dates` (`date_id`, `month`, `day_counts`) VALUES
(1, 'January', 31),
(2, 'February', 28),
(3, 'March', 31),
(4, 'April', 30),
(5, 'May', 31),
(6, 'June', 30),
(7, 'July', 31),
(8, 'August', 31),
(9, 'September', 30),
(10, 'October', 31),
(11, 'November', 30),
(12, 'December', 31);

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
(11, '2019_08_02_120626_create_users_table', 1),
(12, '2019_08_02_120806_add_votes_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `participation`
--

CREATE TABLE `participation` (
  `id` int(11) NOT NULL,
  `participation` varchar(30) NOT NULL,
  `time` int(2) NOT NULL,
  `value` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participation`
--

INSERT INTO `participation` (`id`, `participation`, `time`, `value`) VALUES
(1, 'Regular Day', 8, 'R'),
(2, 'Weekend', 0, 'W'),
(3, 'Sick Leave', 0, 'S'),
(4, 'Vacation', 0, 'V'),
(5, 'Holiday', 0, 'H'),
(6, 'Short day', 7, 'R/'),
(7, 'Overtime', 0, 'O');

-- --------------------------------------------------------

--
-- Table structure for table `use`
--

CREATE TABLE `use` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month_id` int(11) NOT NULL,
  `participation` varchar(20) NOT NULL,
  `hours` int(2) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `day` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `use`
--

INSERT INTO `use` (`id`, `user_id`, `month_id`, `participation`, `hours`, `comment`, `day`) VALUES
(5, 1, 8, 'Overtime', 12, 'adkslskfls', 1),
(6, 1, 8, 'Overtime', 12, 'jdhcsdkhvs,lkhv s', 2),
(7, 1, 8, 'Overtime', 3, 'purpose', 3),
(8, 1, 8, 'Overtime', 4, '', 4),
(9, 1, 8, 'Holiday', 0, '', 5),
(10, 1, 8, 'Regular Day', 8, '', 6),
(11, 1, 8, 'Regular Day', 8, '', 7),
(12, 1, 8, 'Regular Day', 9, '', 8),
(13, 1, 8, 'Short day', 0, '', 9),
(14, 1, 8, 'Weekend', 0, '', 10),
(15, 1, 8, 'Weekend', 0, '', 11),
(16, 1, 8, 'Holiday', 0, '', 12),
(17, 1, 8, 'Holiday', 0, '', 13),
(18, 1, 8, 'Holiday', 0, '', 14),
(19, 1, 8, 'Overtime', 11, '', 15),
(20, 1, 8, 'Regular Day', 0, '', 16),
(21, 1, 8, 'Weekend', 0, '', 17),
(22, 1, 8, 'Weekend', 0, '', 18),
(23, 1, 8, 'Regular Day', 0, '', 19),
(24, 1, 8, 'Short day', 0, '', 20),
(25, 1, 8, 'Overtime', 2, '', 21),
(26, 1, 8, 'Regular Day', 0, '', 22),
(27, 1, 8, 'Regular Day', 0, '', 23),
(28, 1, 8, 'Weekend', 0, '', 24),
(29, 1, 8, 'Overtime', 8, '', 25),
(30, 1, 8, 'Regular Day', 8, '', 26),
(31, 1, 8, 'Regular Day', 4, '', 27),
(32, 1, 8, 'Regular Day', 0, '', 28),
(33, 1, 8, 'Vacation', 6, '', 29),
(34, 1, 8, 'Weekend', 0, '', 30),
(35, 1, 8, 'Weekend', 7, '', 31),
(36, 8, 8, 'Regular Day', 0, 'adkslskfls', 1),
(37, 8, 8, 'Vacation', 0, 'skjdvhskvgs', 2),
(38, 8, 8, 'Vacation', 0, '', 3),
(39, 8, 8, 'Weekend', 0, '', 4),
(40, 8, 8, 'Regular Day', 0, '', 5),
(41, 8, 8, 'Regular Day', 0, '', 6),
(42, 8, 8, 'Regular Day', 0, '', 7),
(43, 8, 8, 'Regular Day', 0, '', 8),
(44, 8, 8, 'Short day', 0, '', 9),
(45, 8, 8, 'Weekend', 0, '', 10),
(46, 8, 8, 'Weekend', 0, '', 11),
(47, 8, 8, 'Holiday', 0, '', 12),
(48, 8, 8, 'Holiday', 0, '', 13),
(49, 8, 8, 'Regular Day', 0, '', 14),
(50, 8, 8, 'Regular Day', 0, '', 15),
(51, 8, 8, 'Regular Day', 0, '', 16),
(52, 8, 8, 'Weekend', 0, '', 17),
(53, 8, 8, 'Weekend', 0, '', 18),
(54, 8, 8, 'Regular Day', 0, 'adkslskfls', 19),
(55, 8, 8, 'Regular Day', 0, '', 20),
(56, 8, 8, 'Regular Day', 0, '', 21),
(57, 8, 8, 'Regular Day', 0, '', 22),
(58, 8, 8, 'Weekend', 0, '', 23),
(59, 8, 8, 'Weekend', 0, '', 24),
(60, 8, 8, 'Regular Day', 0, '', 25),
(61, 8, 8, 'Regular Day', 0, '', 26),
(62, 8, 8, 'Regular Day', 0, '', 27),
(63, 8, 8, 'Regular Day', 0, '', 28),
(64, 8, 8, 'Regular Day', 0, '', 29),
(65, 8, 8, 'Weekend', 0, '', 30),
(66, 8, 8, 'Weekend', 7, '', 31),
(67, 2, 8, '', 0, '', 1),
(68, 0, 8, '', 0, '', 2),
(69, 0, 8, '', 0, '', 3),
(70, 0, 8, '', 0, '', 4),
(71, 0, 8, '', 0, '', 5),
(72, 0, 8, '', 0, '', 6),
(73, 0, 8, '', 0, '', 7),
(74, 0, 8, '', 0, '', 8),
(75, 0, 8, '', 0, '', 9),
(76, 0, 8, '', 0, '', 10),
(77, 0, 8, '', 0, '', 11),
(78, 0, 8, '', 0, '', 12),
(79, 0, 8, '', 0, '', 13),
(80, 0, 8, '', 0, '', 14),
(81, 0, 8, '', 0, '', 15),
(82, 0, 8, '', 0, '', 16),
(83, 0, 8, '', 0, '', 17),
(84, 0, 8, '', 0, '', 18),
(85, 0, 8, '', 0, '', 19),
(86, 0, 8, '', 0, '', 20),
(87, 0, 8, '', 0, '', 21),
(88, 0, 8, '', 0, '', 22),
(89, 0, 8, '', 0, '', 23),
(90, 0, 8, '', 0, '', 24),
(91, 0, 8, '', 0, '', 25),
(92, 0, 8, '', 0, '', 26),
(93, 0, 8, '', 0, '', 27),
(94, 0, 8, '', 0, '', 28),
(95, 0, 8, '', 0, '', 29),
(96, 0, 8, '', 0, '', 30),
(97, 0, 8, '', 0, '', 31);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(3) NOT NULL,
  `status` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `created_at`, `updated_at`, `parent_id`, `status`) VALUES
(1, 'jale', 'JaleQuluzade98@gmail.com', NULL, '$2y$10$wau2XaK9jPqytylolKuSS.rX513hbywK5azCdEk.4OgxyNtowq4K.', '2019-08-09 01:40:41', '2019-08-09 01:40:41', 2, 0),
(2, 'admin', 'admin@mail.ru', NULL, '$2y$10$WJADiPf3Er12wO8vCCRrkuknZM30E.6dPdcSlDzIBIn8SotNZpsfW', '2019-08-09 01:41:10', '2019-08-09 01:41:10', 5, 1),
(3, 'admin2', 'admin2@mail.ru', NULL, '$2y$10$HPo9RiuYMa94yCDP3IDy3.OehFQtwwJ01WrmXNrL8tnAJV5ujp4Di', '2019-08-14 09:20:44', '2019-08-14 09:20:44', 5, 1),
(4, 'admin3', 'admin3@mail.ru', NULL, '$2y$10$.bEzJmA0slPJ.vhSmh5lveh8Q6fLU6/Gt7xQwywIEU8or077TKzUO', '2019-08-14 09:21:39', '2019-08-14 09:21:39', 5, 1),
(5, 'HR', 'hr@mail.ru', NULL, '$2y$10$.fefxp4NHzh6aL6W9.w6bOMLhXovdxVNvrB0FDv10v7fm2ta/nRhK', '2019-08-14 09:22:27', '2019-08-14 09:22:27', 0, 1),
(6, 'fatime', 'fatime@mail.ru', NULL, '$2y$10$/CHG/DJ4sFkWb7VN/QQaxe5UUAxwDW5JfmmDfxE.HyLApSTvKkrgG', '2019-08-14 09:23:59', '2019-08-14 09:23:59', 3, 0),
(7, 'murad', 'murad@mail.ru', NULL, '$2y$10$nWp78uszZnxqNhUcP2Y0UOsQxlFd2tI8ImI15dKBEVkQ69TnJppFS', '2019-08-14 09:24:39', '2019-08-14 09:24:39', 4, 0),
(8, 'rauf', 'rauf@mail.ru', NULL, '$2y$10$hHV6jmHksyVcCz2Xs.CsdOxav8HdxJblLXSm5Gbdtg5CXzHSo0Gmi', '2019-08-21 06:18:33', '2019-08-21 06:18:33', 2, 0),
(9, 'kanan', 'fetullayevkenan@mail.ru', NULL, '$2y$10$9ey4jBwoMZOM3jCHLKfageWwctFDIED0StGOBzBoN.ty/9tYpwJSa', '2019-08-26 02:21:52', '2019-08-26 02:21:52', 3, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dates`
--
ALTER TABLE `dates`
  ADD PRIMARY KEY (`date_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participation`
--
ALTER TABLE `participation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `use`
--
ALTER TABLE `use`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `participation`
--
ALTER TABLE `participation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `use`
--
ALTER TABLE `use`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
