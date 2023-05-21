-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2023 at 05:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_peternakan`
--

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
(5, '2023_05_03_095500_create_perawatan_table', 1),
(6, '2023_05_03_095519_create_user_table', 1),
(7, '2023_05_12_041549_create_tbl_peternakan_table', 1),
(8, '2023_05_12_041602_create_tbl_hewan_table', 1),
(9, '2023_05_12_041611_create_tbl_produk_table', 1),
(10, '2023_05_13_034330_create_tbl_provinsi_table', 1);

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
-- Table structure for table `perawatan`
--

CREATE TABLE `perawatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'myapptoken', 'e6a2c0860c36070cfa062a32fb66ceaef9beeb1597dce96c3268db6af3fc5a87', '[\"*\"]', '2023-05-14 02:40:53', NULL, '2023-05-14 02:39:36', '2023-05-14 02:40:53'),
(2, 'App\\Models\\User', 2, 'MyApp', '6c83532719ddc08d0dc5b3f5f1361264b14769b4e789d469de142bc2c60204ae', '[\"*\"]', NULL, NULL, '2023-05-21 01:03:02', '2023-05-21 01:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hewan`
--

CREATE TABLE `tbl_hewan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_hewan` varchar(200) NOT NULL,
  `jenis_hewan` varchar(200) NOT NULL,
  `berat_hewan` int(11) NOT NULL,
  `harga_hewan` double(12,2) NOT NULL,
  `id_peternakan` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_hewan`
--

INSERT INTO `tbl_hewan` (`id`, `nama_hewan`, `jenis_hewan`, `berat_hewan`, `harga_hewan`, `id_peternakan`, `created_at`, `updated_at`) VALUES
(1, 'Sapi Brahman', 'sapi', 600, 38900000.00, 1, NULL, NULL),
(2, 'Sapi Simental', 'sapi', 560, 54200000.00, 2, NULL, NULL),
(3, 'Sapi Limosin', 'sapi', 450, 30400000.00, 3, NULL, NULL),
(4, 'Sapi Brahman Cross', 'sapi', 500, 60300000.00, 4, NULL, NULL),
(5, 'Sapi Ongole', 'sapi', 490, 44300000.00, 5, NULL, NULL),
(6, 'Sapi Peranakan Ongole (PO)', 'sapi', 560, 42800000.00, 6, NULL, NULL),
(7, 'Sapi Bali', 'sapi', 450, 63100000.00, 7, NULL, NULL),
(8, 'Sapi Madura', 'sapi', 420, 31600000.00, 8, NULL, NULL),
(9, 'Sapi Aceh', 'sapi', 590, 39900000.00, 9, NULL, NULL),
(10, 'Sapi Angus', 'sapi', 540, 63100000.00, 10, NULL, NULL),
(11, 'Sapi Brangus', 'sapi', 550, 57300000.00, 11, NULL, NULL),
(12, 'Sapi Brahman', 'sapi', 540, 34400000.00, 12, NULL, NULL),
(13, 'Sapi Simental', 'sapi', 410, 31400000.00, 13, NULL, NULL),
(14, 'Sapi Limosin', 'sapi', 430, 61200000.00, 14, NULL, NULL),
(15, 'Sapi Brahman Cross', 'sapi', 460, 42800000.00, 15, NULL, NULL),
(16, 'Sapi Ongole', 'sapi', 520, 43900000.00, 16, NULL, NULL),
(17, 'Sapi Peranakan Ongole (PO)', 'sapi', 430, 51100000.00, 17, NULL, NULL),
(18, 'Sapi Bali', 'sapi', 500, 42100000.00, 18, NULL, NULL),
(19, 'Sapi Madura', 'sapi', 420, 63200000.00, 19, NULL, NULL),
(20, 'Sapi Aceh', 'sapi', 520, 40100000.00, 20, NULL, NULL),
(21, 'Sapi Angus', 'sapi', 510, 62600000.00, 21, NULL, NULL),
(22, 'Sapi Brangus', 'sapi', 440, 48700000.00, 22, NULL, NULL),
(23, 'Sapi Brahman', 'sapi', 600, 44600000.00, 23, NULL, NULL),
(24, 'Sapi Simental', 'sapi', 480, 33400000.00, 24, NULL, NULL),
(25, 'Sapi Limosin', 'sapi', 440, 36100000.00, 25, NULL, NULL),
(26, 'Sapi Brahman Cross', 'sapi', 450, 39500000.00, 26, NULL, NULL),
(27, 'Sapi Ongole', 'sapi', 550, 48400000.00, 27, NULL, NULL),
(28, 'Sapi Peranakan Ongole (PO)', 'sapi', 510, 44900000.00, 28, NULL, NULL),
(29, 'Sapi Bali', 'sapi', 450, 31000000.00, 29, NULL, NULL),
(30, 'Sapi Madura', 'sapi', 560, 61100000.00, 30, NULL, NULL),
(31, 'Sapi Aceh', 'sapi', 510, 55200000.00, 31, NULL, NULL),
(32, 'Sapi Angus', 'sapi', 480, 33000000.00, 32, NULL, NULL),
(33, 'Sapi Brangus', 'sapi', 460, 64800000.00, 33, NULL, NULL),
(34, 'Sapi Brahman', 'sapi', 480, 46700000.00, 34, NULL, NULL),
(35, 'Sapi Simental', 'sapi', 480, 45600000.00, 35, NULL, NULL),
(36, 'Sapi Limosin', 'sapi', 580, 58200000.00, 36, NULL, NULL),
(37, 'Sapi Brahman Cross', 'sapi', 500, 43900000.00, 37, NULL, NULL),
(38, 'Sapi Ongole', 'sapi', 410, 38200000.00, 38, NULL, NULL),
(39, 'Sapi Peranakan Ongole (PO)', 'sapi', 480, 48400000.00, 39, NULL, NULL),
(40, 'Sapi Bali', 'sapi', 430, 51000000.00, 40, NULL, NULL),
(41, 'Sapi Madura', 'sapi', 560, 55000000.00, 41, NULL, NULL),
(42, 'Sapi Aceh', 'sapi', 570, 31100000.00, 42, NULL, NULL),
(43, 'Sapi Angus', 'sapi', 570, 55300000.00, 43, NULL, NULL),
(44, 'Sapi Brangus', 'sapi', 570, 31600000.00, 44, NULL, NULL),
(45, 'Sapi Brahman', 'sapi', 590, 40900000.00, 45, NULL, NULL),
(46, 'Sapi Simental', 'sapi', 580, 34300000.00, 46, NULL, NULL),
(47, 'Sapi Limosin', 'sapi', 500, 55500000.00, 47, NULL, NULL),
(48, 'Sapi Brahman Cross', 'sapi', 540, 33300000.00, 48, NULL, NULL),
(49, 'Sapi Ongole', 'sapi', 560, 49800000.00, 49, NULL, NULL),
(50, 'Sapi Brahman', 'sapi', 550, 63100000.00, 50, NULL, NULL),
(51, 'Sapi Simental', 'sapi', 570, 48500000.00, 16, NULL, NULL),
(52, 'Sapi Limosin', 'sapi', 490, 35500000.00, 6, NULL, NULL),
(53, 'Sapi Brahman Cross', 'sapi', 560, 41000000.00, 4, NULL, NULL),
(54, 'Sapi Ongole', 'sapi', 560, 52200000.00, 11, NULL, NULL),
(55, 'Sapi Peranakan Ongole (PO)', 'sapi', 540, 52300000.00, 28, NULL, NULL),
(56, 'Sapi Bali', 'sapi', 570, 45400000.00, 33, NULL, NULL),
(57, 'Sapi Madura', 'sapi', 500, 55800000.00, 41, NULL, NULL),
(58, 'Sapi Aceh', 'sapi', 530, 56200000.00, 15, NULL, NULL),
(59, 'Sapi Angus', 'sapi', 410, 53200000.00, 6, NULL, NULL),
(60, 'Sapi Brangus', 'sapi', 420, 47700000.00, 30, NULL, NULL),
(61, 'Sapi Brahman', 'sapi', 510, 30600000.00, 24, NULL, NULL),
(62, 'Sapi Simental', 'sapi', 590, 33600000.00, 34, NULL, NULL),
(63, 'Sapi Limosin', 'sapi', 510, 49300000.00, 21, NULL, NULL),
(64, 'Sapi Brahman Cross', 'sapi', 490, 63000000.00, 32, NULL, NULL),
(65, 'Sapi Ongole', 'sapi', 550, 52200000.00, 4, NULL, NULL),
(66, 'Sapi Peranakan Ongole (PO)', 'sapi', 500, 43400000.00, 29, NULL, NULL),
(67, 'Sapi Bali', 'sapi', 590, 33300000.00, 37, NULL, NULL),
(68, 'Sapi Madura', 'sapi', 480, 62000000.00, 10, NULL, NULL),
(69, 'Sapi Aceh', 'sapi', 570, 54900000.00, 48, NULL, NULL),
(70, 'Sapi Angus', 'sapi', 450, 42500000.00, 21, NULL, NULL),
(71, 'Sapi Brangus', 'sapi', 430, 48300000.00, 44, NULL, NULL),
(72, 'Sapi Brahman', 'sapi', 410, 34500000.00, 12, NULL, NULL),
(73, 'Sapi Simental', 'sapi', 510, 51600000.00, 22, NULL, NULL),
(74, 'Sapi Limosin', 'sapi', 510, 34200000.00, 30, NULL, NULL),
(75, 'Sapi Brahman Cross', 'sapi', 520, 49500000.00, 27, NULL, NULL),
(76, 'Sapi Ongole', 'sapi', 600, 42900000.00, 37, NULL, NULL),
(77, 'Sapi Peranakan Ongole (PO)', 'sapi', 470, 63600000.00, 13, NULL, NULL),
(78, 'Sapi Bali', 'sapi', 430, 57400000.00, 32, NULL, NULL),
(79, 'Sapi Madura', 'sapi', 490, 58900000.00, 25, NULL, NULL),
(80, 'Sapi Aceh', 'sapi', 550, 42200000.00, 18, NULL, NULL),
(81, 'Sapi Angus', 'sapi', 480, 34400000.00, 48, NULL, NULL),
(82, 'Sapi Brangus', 'sapi', 500, 44100000.00, 44, NULL, NULL),
(83, 'Sapi Brahman', 'sapi', 490, 43700000.00, 47, NULL, NULL),
(84, 'Sapi Simental', 'sapi', 480, 34100000.00, 27, NULL, NULL),
(85, 'Sapi Limosin', 'sapi', 480, 58500000.00, 35, NULL, NULL),
(86, 'Sapi Brahman Cross', 'sapi', 510, 56500000.00, 2, NULL, NULL),
(87, 'Sapi Ongole', 'sapi', 590, 31200000.00, 33, NULL, NULL),
(88, 'Sapi Peranakan Ongole (PO)', 'sapi', 560, 50600000.00, 28, NULL, NULL),
(89, 'Sapi Bali', 'sapi', 440, 43200000.00, 40, NULL, NULL),
(90, 'Sapi Madura', 'sapi', 570, 58300000.00, 28, NULL, NULL),
(91, 'Sapi Aceh', 'sapi', 530, 33200000.00, 49, NULL, NULL),
(92, 'Sapi Angus', 'sapi', 550, 33600000.00, 9, NULL, NULL),
(93, 'Sapi Brangus', 'sapi', 550, 40900000.00, 8, NULL, NULL),
(94, 'Sapi Brahman', 'sapi', 590, 38400000.00, 22, NULL, NULL),
(95, 'Sapi Simental', 'sapi', 590, 55800000.00, 14, NULL, NULL),
(96, 'Sapi Limosin', 'sapi', 490, 33000000.00, 14, NULL, NULL),
(97, 'Sapi Brahman Cross', 'sapi', 590, 63700000.00, 10, NULL, NULL),
(98, 'Sapi Ongole', 'sapi', 480, 49400000.00, 11, NULL, NULL),
(99, 'Ayam Broiler', 'sapi', 1, 154000.00, 45, NULL, NULL),
(100, 'Ayam Kampung', 'sapi', 2, 493000.00, 50, NULL, NULL),
(101, 'Ayam Arab', 'ayam', 2, 186000.00, 51, NULL, NULL),
(102, 'Ayam Rhode Island Red', 'ayam', 1, 308000.00, 52, NULL, NULL),
(103, 'Ayam cerami', 'ayam', 1, 131000.00, 53, NULL, NULL),
(104, 'Ayam Cemani', 'ayam', 2, 331000.00, 54, NULL, NULL),
(105, 'Ayam Broiler', 'ayam', 1, 36000.00, 55, NULL, NULL),
(106, 'Ayam Broiler', 'ayam', 1, 123000.00, 56, NULL, NULL),
(107, 'Ayam Kampung', 'ayam', 2, 36000.00, 57, NULL, NULL),
(108, 'Ayam Arab', 'ayam', 1, 146000.00, 58, NULL, NULL),
(109, 'Ayam Rhode Island Red', 'ayam', 3, 94000.00, 59, NULL, NULL),
(110, 'Ayam cerami', 'ayam', 2, 485000.00, 60, NULL, NULL),
(111, 'Ayam Cemani', 'ayam', 2, 405000.00, 61, NULL, NULL),
(112, 'Ayam Broiler', 'ayam', 2, 376000.00, 62, NULL, NULL),
(113, 'Ayam Broiler', 'ayam', 3, 488000.00, 63, NULL, NULL),
(114, 'Ayam Kampung', 'ayam', 1, 295000.00, 64, NULL, NULL),
(115, 'Ayam Arab', 'ayam', 3, 411000.00, 65, NULL, NULL),
(116, 'Ayam Rhode Island Red', 'ayam', 2, 112000.00, 66, NULL, NULL),
(117, 'Ayam cerami', 'ayam', 2, 467000.00, 67, NULL, NULL),
(118, 'Ayam Cemani', 'ayam', 3, 324000.00, 68, NULL, NULL),
(119, 'Ayam Broiler', 'ayam', 1, 210000.00, 69, NULL, NULL),
(120, 'Ayam Broiler', 'ayam', 1, 377000.00, 70, NULL, NULL),
(121, 'Ayam Kampung', 'ayam', 1, 340000.00, 71, NULL, NULL),
(122, 'Ayam Arab', 'ayam', 2, 405000.00, 72, NULL, NULL),
(123, 'Ayam Rhode Island Red', 'ayam', 2, 213000.00, 73, NULL, NULL),
(124, 'Ayam cerami', 'ayam', 1, 268000.00, 74, NULL, NULL),
(125, 'Ayam Cemani', 'ayam', 3, 199000.00, 75, NULL, NULL),
(126, 'Ayam Broiler', 'ayam', 1, 189000.00, 76, NULL, NULL),
(127, 'Ayam Broiler', 'ayam', 3, 395000.00, 77, NULL, NULL),
(128, 'Ayam Kampung', 'ayam', 2, 486000.00, 78, NULL, NULL),
(129, 'Ayam Arab', 'ayam', 1, 396000.00, 79, NULL, NULL),
(130, 'Ayam Rhode Island Red', 'ayam', 2, 200000.00, 80, NULL, NULL),
(131, 'Ayam cerami', 'ayam', 1, 312000.00, 81, NULL, NULL),
(132, 'Ayam Cemani', 'ayam', 2, 140000.00, 82, NULL, NULL),
(133, 'Ayam Broiler', 'ayam', 2, 78000.00, 83, NULL, NULL),
(134, 'Ayam Broiler', 'ayam', 3, 281000.00, 84, NULL, NULL),
(135, 'Ayam Kampung', 'ayam', 3, 266000.00, 85, NULL, NULL),
(136, 'Ayam Arab', 'ayam', 1, 176000.00, 86, NULL, NULL),
(137, 'Ayam Rhode Island Red', 'ayam', 2, 373000.00, 87, NULL, NULL),
(138, 'Ayam cerami', 'ayam', 3, 216000.00, 88, NULL, NULL),
(139, 'Ayam Cemani', 'ayam', 3, 336000.00, 89, NULL, NULL),
(140, 'Ayam Broiler', 'ayam', 2, 492000.00, 90, NULL, NULL),
(141, 'Ayam Broiler', 'ayam', 2, 226000.00, 91, NULL, NULL),
(142, 'Ayam Kampung', 'ayam', 1, 379000.00, 92, NULL, NULL),
(143, 'Ayam Arab', 'ayam', 3, 168000.00, 93, NULL, NULL),
(144, 'Ayam Rhode Island Red', 'ayam', 2, 355000.00, 94, NULL, NULL),
(145, 'Ayam cerami', 'ayam', 2, 100000.00, 95, NULL, NULL),
(146, 'Ayam Cemani', 'ayam', 2, 181000.00, 96, NULL, NULL),
(147, 'Ayam Broiler', 'ayam', 3, 262000.00, 97, NULL, NULL),
(148, 'Ayam Broiler', 'ayam', 1, 241000.00, 98, NULL, NULL),
(149, 'Ayam Kampung', 'ayam', 2, 273000.00, 99, NULL, NULL),
(150, 'Ayam Arab', 'ayam', 2, 413000.00, 100, NULL, NULL),
(151, 'Ayam Rhode Island Red', 'ayam', 3, 329000.00, 100, NULL, NULL),
(152, 'Ayam cerami', 'ayam', 2, 246000.00, 77, NULL, NULL),
(153, 'Ayam Cemani', 'ayam', 3, 88000.00, 52, NULL, NULL),
(154, 'Ayam Broiler', 'ayam', 1, 70000.00, 51, NULL, NULL),
(155, 'Ayam Broiler', 'ayam', 3, 251000.00, 77, NULL, NULL),
(156, 'Ayam Kampung', 'ayam', 1, 223000.00, 68, NULL, NULL),
(157, 'Ayam Arab', 'ayam', 2, 251000.00, 71, NULL, NULL),
(158, 'Ayam Rhode Island Red', 'ayam', 3, 373000.00, 75, NULL, NULL),
(159, 'Ayam cerami', 'ayam', 3, 342000.00, 62, NULL, NULL),
(160, 'Ayam Cemani', 'ayam', 1, 384000.00, 86, NULL, NULL),
(161, 'Ayam Broiler', 'ayam', 2, 226000.00, 75, NULL, NULL),
(162, 'Ayam Broiler', 'ayam', 1, 179000.00, 91, NULL, NULL),
(163, 'Ayam Kampung', 'ayam', 2, 45000.00, 87, NULL, NULL),
(164, 'Ayam Arab', 'ayam', 3, 473000.00, 57, NULL, NULL),
(165, 'Ayam Rhode Island Red', 'ayam', 2, 292000.00, 58, NULL, NULL),
(166, 'Ayam cerami', 'ayam', 3, 22000.00, 65, NULL, NULL),
(167, 'Ayam Cemani', 'ayam', 2, 383000.00, 54, NULL, NULL),
(168, 'Ayam Broiler', 'ayam', 3, 121000.00, 68, NULL, NULL),
(169, 'Ayam Broiler', 'ayam', 3, 267000.00, 55, NULL, NULL),
(170, 'Ayam Kampung', 'ayam', 3, 48000.00, 76, NULL, NULL),
(171, 'Ayam Arab', 'ayam', 1, 294000.00, 93, NULL, NULL),
(172, 'Ayam Rhode Island Red', 'ayam', 2, 379000.00, 77, NULL, NULL),
(173, 'Ayam cerami', 'ayam', 3, 207000.00, 67, NULL, NULL),
(174, 'Ayam Cemani', 'ayam', 2, 24000.00, 100, NULL, NULL),
(175, 'Ayam Broiler', 'ayam', 3, 152000.00, 52, NULL, NULL),
(176, 'Ayam Broiler', 'ayam', 2, 275000.00, 100, NULL, NULL),
(177, 'Ayam Kampung', 'ayam', 3, 136000.00, 53, NULL, NULL),
(178, 'Ayam Arab', 'ayam', 2, 51000.00, 88, NULL, NULL),
(179, 'Ayam Rhode Island Red', 'ayam', 2, 154000.00, 78, NULL, NULL),
(180, 'Ayam cerami', 'ayam', 2, 147000.00, 90, NULL, NULL),
(181, 'Ayam Cemani', 'ayam', 2, 180000.00, 83, NULL, NULL),
(182, 'Ayam Broiler', 'ayam', 2, 422000.00, 65, NULL, NULL),
(183, 'Ayam Broiler', 'ayam', 3, 233000.00, 66, NULL, NULL),
(184, 'Ayam Kampung', 'ayam', 2, 45000.00, 56, NULL, NULL),
(185, 'Ayam Arab', 'ayam', 3, 134000.00, 63, NULL, NULL),
(186, 'Ayam Rhode Island Red', 'ayam', 3, 460000.00, 89, NULL, NULL),
(187, 'Ayam cerami', 'ayam', 1, 24000.00, 88, NULL, NULL),
(188, 'Ayam Cemani', 'ayam', 1, 200000.00, 85, NULL, NULL),
(189, 'Ayam Broiler', 'ayam', 2, 48000.00, 57, NULL, NULL),
(190, 'Ayam Broiler', 'ayam', 1, 209000.00, 59, NULL, NULL),
(191, 'Ayam Kampung', 'ayam', 1, 160000.00, 82, NULL, NULL),
(192, 'Ayam Arab', 'ayam', 2, 494000.00, 95, NULL, NULL),
(193, 'Ayam Rhode Island Red', 'ayam', 3, 254000.00, 51, NULL, NULL),
(194, 'Ayam cerami', 'ayam', 1, 86000.00, 61, NULL, NULL),
(195, 'Ayam Cemani', 'ayam', 3, 147000.00, 69, NULL, NULL),
(196, 'Ayam Broiler', 'ayam', 3, 82000.00, 59, NULL, NULL),
(197, 'Ayam Broiler', 'ayam', 2, 53000.00, 66, NULL, NULL),
(198, 'Ayam Kampung', 'ayam', 1, 410000.00, 55, NULL, NULL),
(199, 'Ayam Arab', 'ayam', 1, 74000.00, 66, NULL, NULL),
(200, 'Ayam Rhode Island Red', 'ayam', 1, 125000.00, 80, NULL, NULL),
(201, 'Lele', 'ikan', 0, 114000.00, 101, NULL, NULL),
(202, 'Gurame', 'ikan', 0, 45000.00, 102, NULL, NULL),
(203, 'Nila', 'ikan', 0, 107000.00, 103, NULL, NULL),
(204, 'Patin', 'ikan', 0, 135000.00, 104, NULL, NULL),
(205, 'Bandeng', 'ikan', 0, 105000.00, 105, NULL, NULL),
(206, 'Kakap', 'ikan', 0, 89000.00, 106, NULL, NULL),
(207, 'Kerapu', 'ikan', 0, 145000.00, 107, NULL, NULL),
(208, 'Ikan Mas', 'ikan', 0, 115000.00, 108, NULL, NULL),
(209, 'Lele', 'ikan', 0, 94000.00, 109, NULL, NULL),
(210, 'Gurame', 'ikan', 0, 70000.00, 110, NULL, NULL),
(211, 'Nila', 'ikan', 0, 17000.00, 111, NULL, NULL),
(212, 'Patin', 'ikan', 0, 105000.00, 112, NULL, NULL),
(213, 'Bandeng', 'ikan', 0, 116000.00, 113, NULL, NULL),
(214, 'Kakap', 'ikan', 0, 95000.00, 114, NULL, NULL),
(215, 'Kerapu', 'ikan', 0, 22000.00, 115, NULL, NULL),
(216, 'Ikan Mas', 'ikan', 0, 28000.00, 116, NULL, NULL),
(217, 'Lele', 'ikan', 0, 77000.00, 117, NULL, NULL),
(218, 'Gurame', 'ikan', 0, 60000.00, 118, NULL, NULL),
(219, 'Nila', 'ikan', 0, 44000.00, 119, NULL, NULL),
(220, 'Patin', 'ikan', 0, 93000.00, 120, NULL, NULL),
(221, 'Bandeng', 'ikan', 0, 49000.00, 121, NULL, NULL),
(222, 'Kakap', 'ikan', 0, 116000.00, 122, NULL, NULL),
(223, 'Kerapu', 'ikan', 0, 28000.00, 123, NULL, NULL),
(224, 'Ikan Mas', 'ikan', 0, 82000.00, 124, NULL, NULL),
(225, 'Lele', 'ikan', 0, 122000.00, 125, NULL, NULL),
(226, 'Gurame', 'ikan', 0, 29000.00, 126, NULL, NULL),
(227, 'Nila', 'ikan', 0, 33000.00, 127, NULL, NULL),
(228, 'Patin', 'ikan', 0, 120000.00, 128, NULL, NULL),
(229, 'Bandeng', 'ikan', 0, 53000.00, 129, NULL, NULL),
(230, 'Kakap', 'ikan', 0, 130000.00, 130, NULL, NULL),
(231, 'Kerapu', 'ikan', 0, 145000.00, 131, NULL, NULL),
(232, 'Ikan Mas', 'ikan', 0, 64000.00, 132, NULL, NULL),
(233, 'Lele', 'ikan', 0, 34000.00, 133, NULL, NULL),
(234, 'Gurame', 'ikan', 0, 63000.00, 134, NULL, NULL),
(235, 'Nila', 'ikan', 0, 18000.00, 135, NULL, NULL),
(236, 'Patin', 'ikan', 0, 46000.00, 136, NULL, NULL),
(237, 'Bandeng', 'ikan', 0, 33000.00, 137, NULL, NULL),
(238, 'Kakap', 'ikan', 0, 69000.00, 138, NULL, NULL),
(239, 'Kerapu', 'ikan', 0, 46000.00, 139, NULL, NULL),
(240, 'Ikan Mas', 'ikan', 0, 87000.00, 140, NULL, NULL),
(241, 'Lele', 'ikan', 0, 20000.00, 141, NULL, NULL),
(242, 'Gurame', 'ikan', 0, 48000.00, 142, NULL, NULL),
(243, 'Nila', 'ikan', 0, 126000.00, 143, NULL, NULL),
(244, 'Patin', 'ikan', 0, 31000.00, 144, NULL, NULL),
(245, 'Bandeng', 'ikan', 0, 126000.00, 145, NULL, NULL),
(246, 'Kakap', 'ikan', 0, 16000.00, 146, NULL, NULL),
(247, 'Kerapu', 'ikan', 0, 70000.00, 147, NULL, NULL),
(248, 'Ikan Mas', 'ikan', 0, 67000.00, 148, NULL, NULL),
(249, 'Lele', 'ikan', 0, 122000.00, 149, NULL, NULL),
(250, 'Gurame', 'ikan', 0, 100000.00, 150, NULL, NULL),
(251, 'Nila', 'ikan', 0, 132000.00, 111, NULL, NULL),
(252, 'Patin', 'ikan', 0, 133000.00, 132, NULL, NULL),
(253, 'Bandeng', 'ikan', 0, 118000.00, 126, NULL, NULL),
(254, 'Kakap', 'ikan', 0, 96000.00, 126, NULL, NULL),
(255, 'Kerapu', 'ikan', 0, 148000.00, 139, NULL, NULL),
(256, 'Ikan Mas', 'ikan', 0, 93000.00, 116, NULL, NULL),
(257, 'Lele', 'ikan', 0, 105000.00, 106, NULL, NULL),
(258, 'Gurame', 'ikan', 0, 118000.00, 133, NULL, NULL),
(259, 'Nila', 'ikan', 0, 98000.00, 109, NULL, NULL),
(260, 'Patin', 'ikan', 0, 27000.00, 129, NULL, NULL),
(261, 'Bandeng', 'ikan', 0, 114000.00, 110, NULL, NULL),
(262, 'Kakap', 'ikan', 0, 58000.00, 137, NULL, NULL),
(263, 'Kerapu', 'ikan', 0, 102000.00, 119, NULL, NULL),
(264, 'Ikan Mas', 'ikan', 0, 46000.00, 145, NULL, NULL),
(265, 'Lele', 'ikan', 0, 137000.00, 135, NULL, NULL),
(266, 'Gurame', 'ikan', 0, 44000.00, 106, NULL, NULL),
(267, 'Nila', 'ikan', 0, 73000.00, 106, NULL, NULL),
(268, 'Patin', 'ikan', 0, 113000.00, 111, NULL, NULL),
(269, 'Bandeng', 'ikan', 0, 63000.00, 119, NULL, NULL),
(270, 'Kakap', 'ikan', 0, 75000.00, 102, NULL, NULL),
(271, 'Kerapu', 'ikan', 0, 26000.00, 111, NULL, NULL),
(272, 'Ikan Mas', 'ikan', 0, 104000.00, 102, NULL, NULL),
(273, 'Lele', 'ikan', 0, 118000.00, 119, NULL, NULL),
(274, 'Gurame', 'ikan', 0, 146000.00, 104, NULL, NULL),
(275, 'Nila', 'ikan', 0, 84000.00, 117, NULL, NULL),
(276, 'Patin', 'ikan', 0, 77000.00, 141, NULL, NULL),
(277, 'Bandeng', 'ikan', 0, 92000.00, 150, NULL, NULL),
(278, 'Kakap', 'ikan', 0, 142000.00, 132, NULL, NULL),
(279, 'Kerapu', 'ikan', 0, 79000.00, 130, NULL, NULL),
(280, 'Ikan Mas', 'ikan', 0, 149000.00, 140, NULL, NULL),
(281, 'Lele', 'ikan', 0, 72000.00, 110, NULL, NULL),
(282, 'Gurame', 'ikan', 0, 132000.00, 147, NULL, NULL),
(283, 'Nila', 'ikan', 0, 90000.00, 116, NULL, NULL),
(284, 'Patin', 'ikan', 0, 22000.00, 148, NULL, NULL),
(285, 'Bandeng', 'ikan', 0, 143000.00, 119, NULL, NULL),
(286, 'Kakap', 'ikan', 0, 65000.00, 107, NULL, NULL),
(287, 'Kerapu', 'ikan', 0, 85000.00, 107, NULL, NULL),
(288, 'Ikan Mas', 'ikan', 0, 72000.00, 106, NULL, NULL),
(289, 'Lele', 'ikan', 0, 68000.00, 116, NULL, NULL),
(290, 'Gurame', 'ikan', 0, 115000.00, 132, NULL, NULL),
(291, 'Nila', 'ikan', 0, 123000.00, 115, NULL, NULL),
(292, 'Patin', 'ikan', 0, 24000.00, 138, NULL, NULL),
(293, 'Bandeng', 'ikan', 0, 120000.00, 109, NULL, NULL),
(294, 'Kakap', 'ikan', 0, 53000.00, 119, NULL, NULL),
(295, 'Kerapu', 'ikan', 0, 72000.00, 103, NULL, NULL),
(296, 'Ikan Mas', 'ikan', 0, 113000.00, 108, NULL, NULL),
(297, 'Nila', 'ikan', 0, 140000.00, 136, NULL, NULL),
(298, 'Patin', 'ikan', 0, 26000.00, 136, NULL, NULL),
(299, 'Bandeng', 'ikan', 0, 67000.00, 115, NULL, NULL),
(300, 'Kakap', 'ikan', 0, 62000.00, 140, NULL, NULL),
(301, 'Kambing Boer', 'kambing', 68, 2040000.00, 151, NULL, NULL),
(302, 'Kambing Etawa', 'kambing', 76, 1730000.00, 152, NULL, NULL),
(303, 'Kambing Kacang', 'kambing', 37, 3190000.00, 153, NULL, NULL),
(304, 'Kambing Jawarandu', 'kambing', 60, 2830000.00, 154, NULL, NULL),
(305, 'Kambing Katjang', 'kambing', 77, 2580000.00, 155, NULL, NULL),
(306, 'Kambing Samosir', 'kambing', 43, 6820000.00, 156, NULL, NULL),
(307, 'Kambing Boer', 'kambing', 71, 1890000.00, 157, NULL, NULL),
(308, 'Kambing Etawa', 'kambing', 72, 540000.00, 158, NULL, NULL),
(309, 'Kambing Kacang', 'kambing', 64, 3130000.00, 159, NULL, NULL),
(310, 'Kambing Jawarandu', 'kambing', 47, 2350000.00, 160, NULL, NULL),
(311, 'Kambing Katjang', 'kambing', 77, 6140000.00, 161, NULL, NULL),
(312, 'Kambing Samosir', 'kambing', 70, 4510000.00, 162, NULL, NULL),
(313, 'Kambing Boer', 'kambing', 36, 4240000.00, 163, NULL, NULL),
(314, 'Kambing Etawa', 'kambing', 63, 4470000.00, 164, NULL, NULL),
(315, 'Kambing Kacang', 'kambing', 39, 1250000.00, 165, NULL, NULL),
(316, 'Kambing Jawarandu', 'kambing', 42, 2230000.00, 166, NULL, NULL),
(317, 'Kambing Boer', 'kambing', 62, 870000.00, 167, NULL, NULL),
(318, 'Kambing Etawa', 'kambing', 79, 3750000.00, 168, NULL, NULL),
(319, 'Kambing Kacang', 'kambing', 52, 1890000.00, 169, NULL, NULL),
(320, 'Kambing Jawarandu', 'kambing', 46, 5340000.00, 170, NULL, NULL),
(321, 'Kambing Katjang', 'kambing', 54, 6930000.00, 171, NULL, NULL),
(322, 'Kambing Samosir', 'kambing', 35, 6090000.00, 172, NULL, NULL),
(323, 'Kambing Jawarandu', 'kambing', 64, 1430000.00, 173, NULL, NULL),
(324, 'Kambing Katjang', 'kambing', 75, 2460000.00, 174, NULL, NULL),
(325, 'Kambing Samosir', 'kambing', 39, 4880000.00, 175, NULL, NULL),
(326, 'Kambing Boer', 'kambing', 76, 2830000.00, 176, NULL, NULL),
(327, 'Kambing Etawa', 'kambing', 41, 4950000.00, 177, NULL, NULL),
(328, 'Kambing Kacang', 'kambing', 72, 210000.00, 178, NULL, NULL),
(329, 'Kambing Jawarandu', 'kambing', 67, 2750000.00, 179, NULL, NULL),
(330, 'Kambing Boer', 'kambing', 54, 1160000.00, 180, NULL, NULL),
(331, 'Kambing Etawa', 'kambing', 57, 920000.00, 181, NULL, NULL),
(332, 'Kambing Jawarandu', 'kambing', 78, 1640000.00, 182, NULL, NULL),
(333, 'Kambing Katjang', 'kambing', 53, 1960000.00, 183, NULL, NULL),
(334, 'Kambing Samosir', 'kambing', 77, 960000.00, 184, NULL, NULL),
(335, 'Kambing Boer', 'kambing', 49, 1810000.00, 185, NULL, NULL),
(336, 'Kambing Etawa', 'kambing', 49, 6580000.00, 186, NULL, NULL),
(337, 'Kambing Kacang', 'kambing', 40, 1910000.00, 187, NULL, NULL),
(338, 'Kambing Jawarandu', 'kambing', 78, 2770000.00, 188, NULL, NULL),
(339, 'Kambing Jawarandu', 'kambing', 80, 4350000.00, 189, NULL, NULL),
(340, 'Kambing Katjang', 'kambing', 39, 2640000.00, 190, NULL, NULL),
(341, 'Kambing Samosir', 'kambing', 75, 1130000.00, 191, NULL, NULL),
(342, 'Kambing Boer', 'kambing', 75, 4450000.00, 192, NULL, NULL),
(343, 'Kambing Etawa', 'kambing', 52, 4950000.00, 193, NULL, NULL),
(344, 'Kambing Jawarandu', 'kambing', 60, 2160000.00, 194, NULL, NULL),
(345, 'Kambing Katjang', 'kambing', 67, 6320000.00, 195, NULL, NULL),
(346, 'Kambing Samosir', 'kambing', 37, 1420000.00, 196, NULL, NULL),
(347, 'Kambing Boer', 'kambing', 58, 4990000.00, 197, NULL, NULL),
(348, 'Kambing Etawa', 'kambing', 50, 560000.00, 198, NULL, NULL),
(349, 'Kambing Boer', 'kambing', 62, 1300000.00, 199, NULL, NULL),
(350, 'Kambing Etawa', 'kambing', 47, 2540000.00, 200, NULL, NULL),
(351, 'Kambing Jawarandu', 'kambing', 64, 3790000.00, 201, NULL, NULL),
(352, 'Kambing Katjang', 'kambing', 52, 5730000.00, 202, NULL, NULL),
(353, 'Kambing Samosir', 'kambing', 63, 1210000.00, 203, NULL, NULL),
(354, 'Kambing Boer', 'kambing', 53, 4120000.00, 204, NULL, NULL),
(355, 'Kambing Etawa', 'kambing', 56, 2710000.00, 205, NULL, NULL),
(356, 'Kambing Boer', 'kambing', 40, 2020000.00, 206, NULL, NULL),
(357, 'Kambing Boer', 'kambing', 65, 780000.00, 207, NULL, NULL),
(358, 'Kambing Etawa', 'kambing', 62, 350000.00, 208, NULL, NULL),
(359, 'Kambing Jawarandu', 'kambing', 60, 3870000.00, 209, NULL, NULL),
(360, 'Kambing Katjang', 'kambing', 37, 6060000.00, 210, NULL, NULL),
(361, 'Kambing Samosir', 'kambing', 51, 4020000.00, 211, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peternakan`
--

CREATE TABLE `tbl_peternakan` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_provinsi` int(10) UNSIGNED NOT NULL,
  `alamat_peternakan` varchar(200) NOT NULL,
  `nama_peternakan` varchar(200) NOT NULL,
  `no_telp` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_peternakan`
--

INSERT INTO `tbl_peternakan` (`id`, `id_provinsi`, `alamat_peternakan`, `nama_peternakan`, `no_telp`, `created_at`, `updated_at`) VALUES
(1, 4, 'Jl. Raya Blotongan No. 123', 'ABON ABADI', '0298 - 327646', NULL, NULL),
(2, 18, 'Jl. Jend Sudirman No. 339', 'ABON JUARA JUARA FOOD INDUSTRI', '0298 - 324060', NULL, NULL),
(7, 10, 'Jl. Raya Margaluyu No. 402', 'ANDHIKA PAKAN TERNAK,CV', '0265 - 311489', NULL, NULL),
(8, 12, 'Jl. Jababeka Ii Tob Blok C No.16 V Kawasan Indi Jababeka I', 'ARLENE JAYAMANDIRI, PT', '021 - 893544', NULL, NULL),
(9, 28, 'Kampung Kalurahan', 'ASIA AFRIKA, PT', '021 - 982896', NULL, NULL),
(10, 37, 'Desa Krembung Rt.07/04', 'AYAM GORENG ARIFIN', '031 - 885023', NULL, NULL),
(13, 21, 'Perum Pesona Rajawali', 'AYUDYA JAYA ABADI, CV', '0361 -', NULL, NULL),
(14, 36, 'Jl. Bumi Mas Raya No. 5 Kawasan Industri Cikupamas', 'BANGKIT SETIA SENTOSA PRIMATAMA, PT', '021 - 594030', NULL, NULL),
(17, 26, 'Jl. A.yani Km. 13', 'CAKRA PERKASA JAYAMULIA, PT', '0511 - 422042', NULL, NULL),
(18, 35, 'Jl. Raya Jakarta Bogor Km. 51', 'CALVIN METAL PRODUCTS, PT', '021 - 867053', NULL, NULL),
(19, 22, 'Desa Tlajung Udik', 'CALVIN METAL PRODUCTS, PT', '021 - 867053', NULL, NULL),
(20, 14, 'Jl. Industri Iv Kaw. Modern Industri Kav. 6-8', 'CHAROEN POKHPAND INDONESIA, PT', '0254 - 402628', NULL, NULL),
(21, 35, 'Jl. Ir Sutami Km. 15', 'CHAROEN POKPHAND INDONESIA FEEDMILL LA', '0721 - 350602', NULL, NULL),
(22, 6, 'Jl. Berbek Industri No. 1 No. 24 Berbek', 'CHAROEN POKPHAND INDONESIA TBK, PT', '031 -', NULL, NULL),
(23, 15, 'Jl. Pattimura Km. 1 Kutowinangun Lor', 'CHAROEN POKPHAND INDONESIA, PT', '0298 - 327352', NULL, NULL),
(27, 9, 'Jl. Patimura Km. 6', 'CIOMAS ADISATWA, PT', '0298 - 342092', NULL, NULL),
(28, 19, 'Desa Semambung', 'CIOMAS INDONESIA, PT/ CIOMAS ADI SATWA', '031 - 898629', NULL, NULL),
(29, 18, 'Jl. Talaga Mas Raya No. 29', 'CITRA GUNA LESTARI, PT', '021 - 594036', NULL, NULL),
(32, 36, 'Desa Luwung', 'DINAMIKA MEGATAMA CITRA, PT', '031 - 848421', NULL, NULL),
(34, 21, 'Jl. Dr. Sitanala Tanah Lapang Kecil', 'DOK PERKAPALAN WAYAME, PT', '0911 - 321674', NULL, NULL),
(36, 36, 'Jl. Raya Serang Km. 17 No.19 Kawasan Industri Cikupa Mas', 'FEPROTAMA PERTIWI, PT', '021 - 596903', NULL, NULL),
(44, 3, 'Jl. Setia Budi Timur 28', 'HARAPAN AYAM POTONG', '0821 - 413210', NULL, NULL),
(46, 28, 'Jl. Recobarong Iii/41', 'HARYONO', '0355 - 775559', NULL, NULL),
(48, 21, 'Jl. Raya Ciruas Petir Kp. Lebak', 'HIBER JAYA', '0254 - 283095', NULL, NULL),
(50, 27, 'Jl. Toyogiri', 'INDO MURAYAMA PRES & DIES INDUSTRI, PT', '021 - 880744', NULL, NULL),
(51, 6, 'Jl. Raya Blotongan No. 123', 'ABON ABADI', '0298 - 327646', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `jenis_produk` varchar(200) NOT NULL,
  `berat_produk` int(11) DEFAULT NULL,
  `harga_produk` double(12,2) DEFAULT NULL,
  `id_peternakan` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id`, `nama_produk`, `jenis_produk`, `berat_produk`, `harga_produk`, `id_peternakan`, `created_at`, `updated_at`) VALUES
(1, 'Abon Sapi', 'siap jadi', 300, 280000.00, 1, NULL, NULL),
(2, 'Abon Sapi', 'siap jadi', 300, 110000.00, 2, NULL, NULL),
(3, 'Abon Sapi', 'siap jadi', 300, 40000.00, 3, NULL, NULL),
(4, 'Abon Sapi', 'siap jadi', 300, 30000.00, 4, NULL, NULL),
(5, 'Abon Sapi', 'siap jadi', 300, 140000.00, 5, NULL, NULL),
(6, 'Abon Sapi', 'siap jadi', 300, 130000.00, 6, NULL, NULL),
(7, 'Bakso Sapi', 'masakan', 300, 40000.00, 7, NULL, NULL),
(8, 'Bakso Sapi', 'masakan', 300, 110000.00, 8, NULL, NULL),
(9, 'Kulit Sapi Garaman', 'kulit', 1000, 40000.00, 9, NULL, NULL),
(10, 'Kulit Jadi Sapi', 'kulit', 1000, 240000.00, 10, NULL, NULL),
(11, 'Bakso Sapi', 'masakan', 300, 120000.00, 11, NULL, NULL),
(12, 'Basko Sapi', 'masakan', 3000, 220000.00, 12, NULL, NULL),
(13, 'Daging Sapi', 'daging potong', 1000, 300000.00, 13, NULL, NULL),
(14, 'Pengepakan Bumbu Masak', 'jasa', 0, 170000.00, 14, NULL, NULL),
(15, 'Susu Sapi', 'siap jadi', 1000, 180000.00, 15, NULL, NULL),
(16, 'Daging Sapi Lokal', 'daging potong', 0, 50000.00, 16, NULL, NULL),
(17, 'Dendeng sapi', 'siap jadi', 0, 230000.00, 17, NULL, NULL),
(18, 'Susu Sapi', 'siap jadi', 1000, 200000.00, 18, NULL, NULL),
(19, 'Kulit Sapi', 'kulit', 0, 130000.00, 19, NULL, NULL),
(20, 'Kulit Sapi', 'kulit', 0, 200000.00, 20, NULL, NULL),
(21, 'Konsentrat Pakan Sapi Potong Perah', 'pakan', 10000, 100000.00, 21, NULL, NULL),
(22, 'Susu Sapi Cair Murni Olahan', 'siap jadi', 1000, 290000.00, 22, NULL, NULL),
(23, 'Pakan Ternak Sapi', 'pakan', 0, 180000.00, 23, NULL, NULL),
(24, 'Krecek Dari Kulit Sapi', '', 0, 70000.00, 24, NULL, NULL),
(25, 'Krupuk', 'siap jadi', 0, 290000.00, 25, NULL, NULL),
(26, 'pakan Sapi Perah', 'siap jadi', 0, 210000.00, 26, NULL, NULL),
(27, 'Penyamakan Kulit Sapi', 'siap jadi', 0, 130000.00, 27, NULL, NULL),
(28, 'Sosis Sapi', 'siap jadi', 300, 30000.00, 28, NULL, NULL),
(29, 'Bakso Sapi', 'masakan', 300, 250000.00, 29, NULL, NULL),
(30, 'Konsentrat Pakan Sapi', 'pakan', 0, 60000.00, 30, NULL, NULL),
(31, 'Pakan Unggas', 'pakan', 0, 180000.00, 31, NULL, NULL),
(32, 'Bakso Sapi', 'masakan', 0, 250000.00, 32, NULL, NULL),
(33, 'Kolagen Sapi', '', 0, 160000.00, 33, NULL, NULL),
(34, 'Kulit Sapi', 'kulit', 0, 140000.00, 34, NULL, NULL),
(35, 'Sosis Sapi', 'siap jadi', 300, 110000.00, 35, NULL, NULL),
(36, 'Krecek Kulit Sapi', '', 0, 280000.00, 36, NULL, NULL),
(37, 'Baso Sapi', 'siap jadi', 300, 220000.00, 37, NULL, NULL),
(38, 'pakan sapi', 'pakan', 0, 290000.00, 38, NULL, NULL),
(39, 'Kulit Sapi', 'kulit', 0, 290000.00, 39, NULL, NULL),
(40, 'Kain Gray', '', 0, 250000.00, 40, NULL, NULL),
(41, 'kulit sapi', 'kulit', 0, 270000.00, 41, NULL, NULL),
(42, 'Daging sapi', 'daging potong', 0, 100000.00, 42, NULL, NULL),
(43, 'Pupuk Organik Granul', '', 0, 70000.00, 43, NULL, NULL),
(44, 'Bakso Sapi', 'masakan', 300, 220000.00, 44, NULL, NULL),
(45, 'Susu sapi', 'siap jadi', 500, 290000.00, 45, NULL, NULL),
(46, 'Susu Sapi Murni', 'siap jadi', 500, 70000.00, 46, NULL, NULL),
(47, 'Daging Sapi', 'daging potong', 0, 130000.00, 47, NULL, NULL),
(48, 'Baso Sapi', 'masakan', 300, 230000.00, 48, NULL, NULL),
(49, 'Bakso Sapi', 'masakan', 300, 180000.00, 49, NULL, NULL),
(50, 'Bakso Sapi', 'masakan', 300, 290000.00, 50, NULL, NULL),
(51, 'Abon Ayam', 'siap jadi', 100, 60000.00, 51, NULL, NULL),
(52, 'Abon Ayam', 'siap jadi', 300, 150000.00, 52, NULL, NULL),
(53, 'Sosis Ayam', 'siap jadi', 300, 240000.00, 53, NULL, NULL),
(54, 'Bakso Ayam', 'siap jadi', 300, 230000.00, 54, NULL, NULL),
(55, 'Fillet Ikan', 'masakan', 0, 230000.00, 55, NULL, NULL),
(56, 'Bakso Ayam', 'masakan', 300, 250000.00, 56, NULL, NULL),
(57, 'Pakan Ternak Ayam Bloiler', 'pakan', 0, 100000.00, 57, NULL, NULL),
(58, 'Bakso Ayam', 'masakan', 0, 110000.00, 58, NULL, NULL),
(59, 'Ayam Potong', 'daging potong', 0, 290000.00, 59, NULL, NULL),
(60, 'Ayam Goreng', 'siap jadi', 0, 140000.00, 60, NULL, NULL),
(61, 'Ayam Potong', 'daging potong', 0, 50000.00, 61, NULL, NULL),
(62, 'Ayam Potong', 'daging potong', 0, 80000.00, 62, NULL, NULL),
(63, 'Daging Olahan Ayam', 'daging potong', 0, 40000.00, 63, NULL, NULL),
(64, 'Ayam Pedaging', '', 0, 280000.00, 64, NULL, NULL),
(65, 'Ayam Potong', 'daging potong', 0, 290000.00, 65, NULL, NULL),
(66, 'ayam potong', 'daging potong', 0, 250000.00, 66, NULL, NULL),
(67, 'Potongan Ayam', 'daging potong', 0, 160000.00, 67, NULL, NULL),
(68, 'Mata Ayam', 'daging potong', 0, 280000.00, 68, NULL, NULL),
(69, 'Mata Ayam', 'daging potong', 0, 200000.00, 69, NULL, NULL),
(70, 'Ayam Beku', 'daging potong', 0, 140000.00, 70, NULL, NULL),
(71, 'Pakan Ternak Ayam', 'pakan', 0, 60000.00, 71, NULL, NULL),
(72, 'Sosis Ayam', 'siap jadi', 300, 270000.00, 72, NULL, NULL),
(73, 'Ayam Potong', 'daging potong', 0, 140000.00, 73, NULL, NULL),
(74, 'Ayam Potong', 'daging potong', 0, 300000.00, 74, NULL, NULL),
(75, 'Ayam Beku', 'daging potong', 0, 240000.00, 75, NULL, NULL),
(76, 'Ayam Fillet', 'masakan', 0, 290000.00, 76, NULL, NULL),
(77, 'Ayam Potong', 'daging potong', 0, 60000.00, 77, NULL, NULL),
(78, 'Ayam Potong', 'daging potong', 0, 230000.00, 78, NULL, NULL),
(79, 'Daging Ayam', 'daging potong', 0, 220000.00, 79, NULL, NULL),
(80, 'Pemotongan Ayam', 'jasa', 0, 300000.00, 80, NULL, NULL),
(81, 'daging Ayam', 'daging potong', 0, 60000.00, 81, NULL, NULL),
(82, 'Bibit Ayam', '', 0, 60000.00, 82, NULL, NULL),
(83, 'Daging Ayam', 'daging potong', 0, 280000.00, 83, NULL, NULL),
(84, 'Daging Ayam', 'daging potong', 0, 50000.00, 84, NULL, NULL),
(85, 'Pakan Ayam', 'pakan', 0, 220000.00, 85, NULL, NULL),
(86, 'Tepung Bulu Ayam', 'siap jadi', 0, 290000.00, 86, NULL, NULL),
(87, 'Filet ayam', 'masakan', 0, 190000.00, 87, NULL, NULL),
(88, 'Filet Ayam', 'masakan', 0, 130000.00, 88, NULL, NULL),
(89, 'Abon Ayam', 'siap jadi', 0, 90000.00, 89, NULL, NULL),
(90, 'Daging Ayam', 'daging potong', 0, 230000.00, 90, NULL, NULL),
(91, 'Pemotongan Ayam', 'jasa', 0, 150000.00, 91, NULL, NULL),
(92, 'Daging Ayam', 'daging potong', 0, 270000.00, 92, NULL, NULL),
(93, 'Ayam Potong', 'daging potong', 0, 180000.00, 93, NULL, NULL),
(94, 'Daging Ayam', 'daging potong', 0, 240000.00, 94, NULL, NULL),
(95, 'Ayam Potong', 'daging potong', 0, 280000.00, 95, NULL, NULL),
(96, 'Tempat Telur Ayam', '', 0, 120000.00, 96, NULL, NULL),
(97, 'Daging Ayam', 'daging potong', 0, 120000.00, 97, NULL, NULL),
(98, 'Ayam Potong', 'daging potong', 0, 120000.00, 98, NULL, NULL),
(99, 'Ayam Potong', 'daging potong', 0, 270000.00, 99, NULL, NULL),
(100, 'Ayam Potong', 'daging potong', 0, 80000.00, 100, NULL, NULL),
(101, 'Ikan Kering', 'masakan', 0, 90000.00, 101, NULL, NULL),
(102, 'Pembekuan Ikan', 'jasa', 0, 230000.00, 102, NULL, NULL),
(103, 'Pengeringan Ikan', 'jasa', 0, 170000.00, 103, NULL, NULL),
(104, 'Ikan Trasak Kering', 'masakan', 0, 260000.00, 104, NULL, NULL),
(105, 'Ikan Bandeng Beku', 'masakan', 0, 60000.00, 105, NULL, NULL),
(106, 'Ikan Segar', 'daging potong', 0, 170000.00, 106, NULL, NULL),
(107, 'Ikan Beku', 'masakan', 0, 170000.00, 107, NULL, NULL),
(108, 'Fillet Ikan', 'daging potong', 0, 220000.00, 108, NULL, NULL),
(109, 'Krupuk Dari Tepung Rasa Ikan', 'siap jadi', 1000, 40000.00, 109, NULL, NULL),
(110, 'Ikan Beku', 'daging potong', 0, 240000.00, 110, NULL, NULL),
(111, 'Ikan Beku', 'daging potong', 0, 120000.00, 111, NULL, NULL),
(112, 'Ikan', 'daging potong', 0, 130000.00, 112, NULL, NULL),
(113, 'Ikang Kaleng', 'daging potong', 0, 260000.00, 113, NULL, NULL),
(114, 'Pengawetan Ikan', 'Jasa', 0, 300000.00, 114, NULL, NULL),
(115, 'Pengaweta ikan', 'jasa', 0, 80000.00, 115, NULL, NULL),
(116, 'Pengawetan ikan', 'jasa', 0, 70000.00, 116, NULL, NULL),
(117, 'pengawetan ikan', 'jasa', 0, 50000.00, 117, NULL, NULL),
(118, 'Ikan Pindang', 'daging potong', 0, 210000.00, 118, NULL, NULL),
(119, 'Bakso Ikan, Siomay', 'masakan', 300, 230000.00, 119, NULL, NULL),
(120, 'Pembekuan Ikan', 'daging potong', 0, 120000.00, 120, NULL, NULL),
(121, 'Tepung Ikan', 'siap jadi', 0, 220000.00, 121, NULL, NULL),
(122, 'Kerupuk Ikan', 'siap jadi', 0, 30000.00, 122, NULL, NULL),
(123, 'Gesek/ikan Filet', 'masakan', 0, 200000.00, 123, NULL, NULL),
(124, 'Pembekuan Ikan', 'jasa', 0, 160000.00, 124, NULL, NULL),
(125, 'Ikan Tuna Dalam Kaleng', 'masakan', 0, 290000.00, 125, NULL, NULL),
(126, 'Ikan', 'daging potong', 0, 190000.00, 126, NULL, NULL),
(127, 'Ikan Beku', 'daging potong', 0, 230000.00, 127, NULL, NULL),
(128, 'Ikan Pindang', 'daging potong', 0, 250000.00, 128, NULL, NULL),
(129, 'Ikan Macarel', 'masakan', 0, 140000.00, 129, NULL, NULL),
(130, 'Ikan Beku', 'daging potong', 0, 140000.00, 130, NULL, NULL),
(131, 'Ikan Beku', 'daging potong', 0, 290000.00, 131, NULL, NULL),
(132, 'Ikan Segar Beku Dan Hasil Laut Beku', 'daging potong', 0, 180000.00, 132, NULL, NULL),
(133, 'Ikan Teri Dan Ikan Layang Kering', 'masakan', 0, 250000.00, 133, NULL, NULL),
(134, 'Pemindangan Ikan', 'jasa', 0, 230000.00, 134, NULL, NULL),
(135, 'Daging Ikan Dibekukan', 'masakan', 0, 120000.00, 135, NULL, NULL),
(136, 'Ikan Beku', 'daging potong', 0, 210000.00, 136, NULL, NULL),
(137, 'Telur Ikan Terbang Kering_', 'masakan', 0, 90000.00, 137, NULL, NULL),
(138, 'Ikan Beku', 'masakan', 0, 110000.00, 138, NULL, NULL),
(139, 'Otak-otak Ikan', 'masakan', 0, 260000.00, 139, NULL, NULL),
(140, 'Daging Ikan', 'daging potong', 0, 290000.00, 140, NULL, NULL),
(141, 'Ikan Pindang Layang', 'daging potong', 0, 150000.00, 141, NULL, NULL),
(142, 'Ikan Beku', 'daging potong', 0, 100000.00, 142, NULL, NULL),
(143, 'Ikan Beku', 'daging potong', 0, 120000.00, 143, NULL, NULL),
(144, 'Filety Ikan Nila', 'daging potong', 0, 30000.00, 144, NULL, NULL),
(145, 'Ikan Beku', 'daging potong', 0, 210000.00, 145, NULL, NULL),
(146, 'Pembekuan Ikan', 'jasa', 0, 110000.00, 146, NULL, NULL),
(147, 'Pembekuan Ikan', 'jasa', 0, 270000.00, 147, NULL, NULL),
(148, 'Ikan Pelagis Segar', 'daging potong', 0, 40000.00, 148, NULL, NULL),
(149, 'Ikan Pindang Layang', 'daging potong', 0, 240000.00, 149, NULL, NULL),
(150, 'Pembekuan Ikan', 'jasa', 0, 80000.00, 150, NULL, NULL),
(151, 'Kulit Kambing', '', 0, 130000.00, 151, NULL, NULL),
(152, 'Kulit Domba/kambing', '', 0, 70000.00, 152, NULL, NULL),
(153, 'Rokok Tembakau Merek Jumbo Coklat,kambing', 'masakan', 0, 70000.00, 153, NULL, NULL),
(154, 'Susu Bubuk Kambing Etawa', 'siap jadi', 0, 40000.00, 154, NULL, NULL),
(155, 'Kecap', 'siap jadi', 300, 80000.00, 155, NULL, NULL),
(156, 'Kulit Kambing Linning', '', 0, 30000.00, 156, NULL, NULL),
(157, 'Penyamakan Kulit Sapi/kambing', 'jasa', 0, 150000.00, 157, NULL, NULL),
(158, 'Kulit Sapi & Kambing/domb Fini', 'daging', 0, 140000.00, 158, NULL, NULL),
(159, 'Susu Bubuk Kambing Etawa', 'siap jadi', 0, 90000.00, 159, NULL, NULL),
(160, 'Susu Kambing Bubuk', 'siap jadi', 0, 200000.00, 160, NULL, NULL),
(161, 'Susu Kambing Bubuk', 'siap jadi', 0, 30000.00, 161, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provinsi`
--

CREATE TABLE `tbl_provinsi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_provinsi` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_provinsi`
--

INSERT INTO `tbl_provinsi` (`id`, `nama_provinsi`, `created_at`, `updated_at`) VALUES
(1, 'Aceh', NULL, NULL),
(2, 'Sumatra Utara', NULL, NULL),
(3, 'Sumatra Barat', NULL, NULL),
(4, 'Riau', NULL, NULL),
(5, 'Jambi', NULL, NULL),
(6, 'Sumatra Selatan', NULL, NULL),
(7, 'Bengkulu', NULL, NULL),
(8, 'Lampung', NULL, NULL),
(9, 'Kepulauan Bangka Belitung', NULL, NULL),
(10, 'Kepulauan Riau', NULL, NULL),
(11, 'Daerah Khusus Ibukota Jakarta', NULL, NULL),
(12, 'Jawa Barat', NULL, NULL),
(13, 'Jawa Tengah', NULL, NULL),
(14, 'Daerah Istimewa Yogyakarta', NULL, NULL),
(15, 'Jawa Timur', NULL, NULL),
(16, 'Banten', NULL, NULL),
(17, 'Bali', NULL, NULL),
(18, 'Nusa Tenggara Barat', NULL, NULL),
(19, 'Nusa Tenggara Timur', NULL, NULL),
(20, 'Kalimantan Barat', NULL, NULL),
(21, 'Kalimantan Tengah', NULL, NULL),
(22, 'Kalimantan Selatan', NULL, NULL),
(23, 'Kalimantan Timur', NULL, NULL),
(24, 'Kalimantan Utara', NULL, NULL),
(25, 'Sulawesi Utara', NULL, NULL),
(26, 'Sulawesi Tengah', NULL, NULL),
(27, 'Sulawesi Selatan', NULL, NULL),
(28, 'Sulawesi Tenggara', NULL, NULL),
(29, 'Gorontalo', NULL, NULL),
(30, 'Sulawesi Barat', NULL, NULL),
(31, 'Maluku', NULL, NULL),
(32, 'Maluku Utara', NULL, NULL),
(33, 'Papua', NULL, NULL),
(34, 'Papua Barat', NULL, NULL),
(35, 'Papua Selatan', NULL, NULL),
(36, 'Papua Tengah', NULL, NULL),
(37, 'Papua Pegunungan', NULL, NULL),
(38, 'Papua Barat Daya', NULL, NULL);

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
  `api_token` varchar(80) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kiel2', 'kiel2@gmail.com', NULL, '$2y$10$2E4tUHY6B8KwneFHE689DeRGxv6hSSOaxYTks2fCzRpVRLvNpqvJm', NULL, NULL, '2023-05-14 02:39:36', '2023-05-14 02:39:36'),
(2, 'hara', 'hara@gmail.com', NULL, '$2y$10$FwAkraZSHF1BnxKKH5HSn.6uVuwcazyeZHwmnyfTQeLPQtlpZjdL6', 'OfYjC45xmNbK9NyNuUKb5oZxmKUYlxaRGBJeG3EB30FCnIL6vYHrJ69zUmEb', NULL, '2023-05-21 01:03:02', '2023-05-21 01:03:02');

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `perawatan`
--
ALTER TABLE `perawatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tbl_hewan`
--
ALTER TABLE `tbl_hewan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_peternakan` (`id_peternakan`);

--
-- Indexes for table `tbl_peternakan`
--
ALTER TABLE `tbl_peternakan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_provinsi` (`id_provinsi`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_peternakan` (`id_peternakan`);

--
-- Indexes for table `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `api_token` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

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
-- AUTO_INCREMENT for table `perawatan`
--
ALTER TABLE `perawatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_hewan`
--
ALTER TABLE `tbl_hewan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `tbl_peternakan`
--
ALTER TABLE `tbl_peternakan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_peternakan`
--
ALTER TABLE `tbl_peternakan`
  ADD CONSTRAINT `tbl_peternakan_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `tbl_provinsi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
