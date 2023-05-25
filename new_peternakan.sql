-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 06:25 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_peternakan`
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `tbl_peternakan`
--

CREATE TABLE `tbl_peternakan` (
  `id_peternakan` int(11) NOT NULL,
  `provinsi_peternakan` varchar(100) NOT NULL,
  `kabkota_peternakan` varchar(100) DEFAULT NULL,
  `alamat_peternakan` varchar(100) NOT NULL,
  `nama_peternakan` varchar(100) NOT NULL,
  `no_telp` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_peternakan`
--

INSERT INTO `tbl_peternakan` (`id_peternakan`, `provinsi_peternakan`, `kabkota_peternakan`, `alamat_peternakan`, `nama_peternakan`, `no_telp`) VALUES
(1, 'Jawa Tengah', 'Salatiga', 'Jl. Raya Blotongan No. 123', 'ABON ABADI', '08945612375'),
(2, 'Jawa Tengah', 'Salatiga', 'Jl. Jend Sudirman No. 339', 'ABON JUARA JUARA FOOD INDUSTRI', '0856412356'),
(3, 'Banten', 'Tangerang', 'Jl. Bhumimas Raya Desa Talaga', 'ADIL MART, PT', '08123456789'),
(4, 'Jawa Timur', 'Blitar', 'Karto Darmo', 'AGUS SP', '08987456321'),
(5, 'Jawa Tengah', 'Batang', 'Jl. Raya Sigandu', 'AJ FILET', '08325684156'),
(6, 'Jawa Tengah', 'Semarang', 'Wonosari Tengah Raya', 'AL BAROKAH CV', '025689245'),
(7, 'Jawa Barat', 'Ciamis', 'Jl. Raya Margaluyu No. 402', 'ANDHIKA PAKAN TERNAK,CV', '0265 - 311489'),
(8, 'Jawa Barat', 'Bekasi', 'Jl. Jababeka Ii Tob Blok C No.16 V Kawasan Indi Jababeka I', 'ARLENE JAYAMANDIRI, PT', '021 - 893544'),
(9, 'Jawa Barat', 'Bogor', 'Kampung Kalurahan', 'ASIA AFRIKA, PT', '021 - 982896'),
(10, 'Jawa Timur', 'Sidoarjo', 'Desa Krembung Rt.07/04', 'AYAM GORENG ARIFIN', '031 - 885023'),
(11, 'Jawa Barat', 'Bandung', 'Jl. Cijeungjing', 'AYAM POTONG BAROKAH', '0598456156484'),
(12, 'Jawa Barat', 'Garut', 'Kp. Setiajaya', 'AYAM POTONG CEMARA', '0897854123'),
(13, 'Bali', 'Dauh Peken', 'Perum Pesona Rajawali', 'AYUDYA JAYA ABADI, CV', '0895621256'),
(14, 'Banten', 'Tangerang', 'Jl. Bumi Mas Raya No. 5 Kawasan Industri Cikupamas', 'BANGKIT SETIA SENTOSA PRIMATAMA, PT', '021 - 594030'),
(15, 'Banten', 'Banten', 'Jl. Cantiga Petir Cipondoh', 'BAROKAH FOOD, UD', '02158689456'),
(16, 'Jawa Tengah', 'Boyolali', 'Jl. Raya Randusari Nepen Km. 2', 'CAHAYA GUNUNG FOODS, PT', '021568952356'),
(17, 'Banjar', 'Aranlo', 'Jl. A.yani Km. 13', 'CAKRA PERKASA JAYAMULIA, PT', '0511 - 422042'),
(18, 'Jawa Barat', 'Bogor', 'Jl. Raya Jakarta Bogor Km. 51', 'CALVIN METAL PRODUCTS, PT', '021 - 867053'),
(19, 'Jawa Barat', 'Bogor', 'Desa Tlajung Udik', 'CALVIN METAL PRODUCTS, PT', '021 - 867053'),
(20, 'Banten', 'Serang', 'Jl. Industri Iv Kaw. Modern Industri Kav. 6-8', 'CHAROEN POKHPAND INDONESIA, PT', '021-402628'),
(21, 'Lampung', 'Lampung Selatan', 'Jl. Ir Sutami Km. 15', 'CHAROEN POKPHAND INDONESIA FEEDMILL LA', '089456782563'),
(22, 'Jawa Timur', 'Jawa Timur', 'Jl. Berbek Industri No. 1 No. 24 Berbek', 'CHAROEN POKPHAND INDONESIA TBK, PT', '0856497852'),
(23, 'Jawa Tengah', 'Salatiga', 'Jl. Pattimura Km. 1 Kutowinangun Lor', 'CHAROEN POKPHAND INDONESIA, PT', '08956327352'),
(24, 'Sumatera Utara', 'Deli Serdang', 'Dusun V Klumpang Kampung', 'CIOMAS ADI SATWA, PT', '08945756212'),
(25, 'Tabanan', 'Dauh Yeh', 'Jl. Raya Kaba Kaba', 'CIOMAS ADISATWA BALI, PT', '08974561234'),
(26, 'Jawa Barat', 'Purwakarta', 'Jl. Raya Sadang-subang Km 14', 'CIOMAS ADISATWA, PT', NULL),
(27, 'Semarang', 'Kauman Lor', 'Jl. Patimura Km. 6', 'CIOMAS ADISATWA, PT', '0298 - 342092'),
(28, 'Jawa Timur', 'Sidoarjo', 'Desa Semambung', 'CIOMAS INDONESIA, PT/ CIOMAS ADI SATWA', '031 - 898629'),
(29, 'Banten', 'Tangerang', 'Jl. Talaga Mas Raya No. 29', 'CITRA GUNA LESTARI, PT', '021 - 594036'),
(30, 'Jawa Barat', 'Garut', 'Kp. Setia Jaya', 'DAGING AYAM CEMARA', NULL),
(31, 'Jawa Timur', 'Pasuruan', 'Dusun Penampan Wonokoyo', 'DINAMIKA MEGATAMA CITRA', NULL),
(32, 'Sidoarjo', 'Dsn Sumokembangsri', 'Desa Luwung', 'DINAMIKA MEGATAMA CITRA, PT', '031 - 848421'),
(33, 'Jawa Timur', 'Pasuruan', 'Dusun Penampon', 'DINAMIKA MEGATAMA CITRA, PT', NULL),
(34, 'Maluku', 'Ambon', 'Jl. Dr. Sitanala Tanah Lapang Kecil', 'DOK PERKAPALAN WAYAME, PT', '0911 - 321674'),
(35, 'Jawa Barat', 'Karawang', 'Jl. Surya Lestari Kav 1 - 17b Kaw. Surya Cipta', 'EAST HOPE AGRICULTURE IND., PT', NULL),
(36, 'Banten', 'Tangerang', 'Jl. Raya Serang Km. 17 No.19 Kawasan Industri Cikupa Mas', 'FEPROTAMA PERTIWI, PT', '021 - 596903'),
(37, 'Jawa Tengah', 'Batang', 'Jl. Raya Sigandu Rt. 01/04', 'FILET IKAN AJ (AYAMTO)', NULL),
(38, 'Jawa Barat', 'Bekasi', 'Jl. Inspeksi Tarum Barat Pekopen Lambang Jaya Tambun', 'GALIH AYAM PARAMENT PT', NULL),
(39, 'Jawa Barat', 'Bekasi', 'Jl. Inspeksi Tarum Barat Pekopen Lambang Jaya Tambun', 'GALIH AYAM PARAMENT, PT', NULL),
(40, 'Jawa Barat', 'Tasikmalaya', 'Jl. Pancasenggang/ Kp. Rancasenggang', 'GAYAM', NULL),
(41, 'Jawa Timur', 'Sidoarjo', 'Jl. Raya Tulangan', 'GELANG TANI, CV', NULL),
(42, 'Jawa Timur', 'Jawa Timur', 'Jl. Raya Gondek 1 A', 'GEMILANG INTI SUKSES, PT', NULL),
(43, 'Jawa Tengah', 'Boyolali', 'Dk Baros Rt 2/ Rw 8', 'GEMILANG SETIA SEJAHTERA, PT', NULL),
(44, 'Jawa Timur', 'Madiun', 'Jl. Setia Budi Timur 28', 'HARAPAN AYAM POTONG', '0821 - 413210'),
(45, 'Sulawesi Selatan', 'Makassar', 'Jl. Hati Murni', 'HARCO, UD', NULL),
(46, 'Jawa Timur', 'Tulungagung', 'Jl. Recobarong Iii/41', 'HARYONO', '0355 - 775559'),
(47, 'Jawa Barat', 'Bekasi', 'Kawasan Industri Lippo Cikarang Blok A E-52', 'HENPRAKAYAMA', NULL),
(48, 'Banten', 'Serang', 'Jl. Raya Ciruas Petir Kp. Lebak', 'HIBER JAYA', '0254 - 283095'),
(49, 'Sumatera Selatan', 'Banyu Asin', 'Jalan Pangeran Ayin', 'INDFUSTRI KOPI CAP AYAM, PT', NULL),
(50, 'Jawa Barat', 'Bekasi', 'Jl. Toyogiri', 'INDO MURAYAMA PRES & DIES INDUSTRI, PT', '021 - 880744'),
(51, 'Jawa Tengah', 'Blitar', 'Jl. Raya Blotongan No. 123', 'ABON ABADI', '0298 - 327646'),
(52, 'Jawa Tengah', 'Batang', 'Jl. Jend Sudirman No. 339', 'ABON JUARA JUARA FOOD INDUSTRI', '0298 - 324060'),
(53, 'Banten', 'Semarang', 'Jl. Bhumimas Raya Desa Talaga', 'ADIL MART, PT', NULL),
(54, 'Jawa Timur', 'Ciamis', 'Karto Darmo', 'AGUS SP', NULL),
(55, 'Jawa Tengah', 'Bekasi', 'Jl. Raya Sigandu', 'AJ FILET', NULL),
(56, 'Jawa Tengah', 'Bogor', 'Wonosari Tengah Raya', 'AL BAROKAH CV', NULL),
(57, 'Jawa Barat', 'Sidoarjo', 'Jl. Raya Margaluyu No. 402', 'ANDHIKA PAKAN TERNAK,CV', '0265 - 311489'),
(58, 'Jawa Barat', 'Bandung', 'Jl. Jababeka Ii Tob Blok C No.16 V Kawasan Indi Jababeka I', 'ARLENE JAYAMANDIRI, PT', '021 - 893544'),
(59, 'Jawa Barat', 'Garut', 'Kampung Kalurahan', 'ASIA AFRIKA, PT', '021 - 982896'),
(60, 'Jawa Timur', 'Dauh Peken', 'Desa Krembung Rt.07/04', 'AYAM GORENG ARIFIN', '031 - 885023'),
(61, 'Jawa Barat', 'Tangerang', 'Jl. Cijeungjing', 'AYAM POTONG BAROKAH', NULL),
(62, 'Jawa Barat', 'Banten', 'Kp. Setiajaya', 'AYAM POTONG CEMARA', NULL),
(63, 'Bali', 'Boyolali', 'Perum Pesona Rajawali', 'AYUDYA JAYA ABADI, CV', '0361 -'),
(64, 'Banten', '5', 'Jl. Bumi Mas Raya No. 5 Kawasan Industri Cikupamas', 'BANGKIT SETIA SENTOSA PRIMATAMA, PT', '021 - 594030'),
(65, 'Banten', 'Bogor', 'Jl. Cantiga Petir Cipondoh', 'BAROKAH FOOD, UD', NULL),
(66, 'Jawa Tengah', 'Bogor', 'Jl. Raya Randusari Nepen Km. 2', 'CAHAYA GUNUNG FOODS, PT', NULL),
(67, 'Banjar', 'Serang', 'Jl. A.yani Km. 13', 'CAKRA PERKASA JAYAMULIA, PT', '0511 - 422042'),
(68, 'Jawa Barat', 'Lampung Selatan', 'Jl. Raya Jakarta Bogor Km. 51', 'CALVIN METAL PRODUCTS, PT', '021 - 867053'),
(69, 'Jawa Barat', 'Jawa Timur', 'Desa Tlajung Udik', 'CALVIN METAL PRODUCTS, PT', '021 - 867053'),
(70, 'Banten', 'Salatiga', 'Jl. Industri Iv Kaw. Modern Industri Kav. 6-8', 'CHAROEN POKHPAND INDONESIA, PT', '0254 - 402628'),
(71, 'Lampung', 'Deli Serdang', 'Jl. Ir Sutami Km. 15', 'CHAROEN POKPHAND INDONESIA FEEDMILL LA', '0721 - 350602'),
(72, 'Jawa Timur', 'Dauh Yeh', 'Jl. Berbek Industri No. 1 No. 24 Berbek', 'CHAROEN POKPHAND INDONESIA TBK, PT', '031 -'),
(73, 'Jawa Tengah', 'Purwakarta', 'Jl. Pattimura Km. 1 Kutowinangun Lor', 'CHAROEN POKPHAND INDONESIA, PT', '0298 - 327352'),
(74, 'Sumatera Utara', 'Kauman Lor', 'Dusun V Klumpang Kampung', 'CIOMAS ADI SATWA, PT', NULL),
(75, 'Tabanan', 'Sidoarjo', 'Jl. Raya Kaba Kaba', 'CIOMAS ADISATWA BALI, PT', NULL),
(76, 'Jawa Barat', 'Tangerang', 'Jl. Raya Sadang-subang Km 14', 'CIOMAS ADISATWA, PT', NULL),
(77, 'Semarang', 'Garut', 'Jl. Patimura Km. 6', 'CIOMAS ADISATWA, PT', '0298 - 342092'),
(78, 'Jawa Timur', 'Pasuruan', 'Desa Semambung', 'CIOMAS INDONESIA, PT/ CIOMAS ADI SATWA', '031 - 898629'),
(79, 'Banten', 'Dsn Sumokembangsri', 'Jl. Talaga Mas Raya No. 29', 'CITRA GUNA LESTARI, PT', '021 - 594036'),
(80, 'Jawa Barat', 'Pasuruan', 'Kp. Setia Jaya', 'DAGING AYAM CEMARA', NULL),
(81, 'Jawa Timur', 'Ambon', 'Dusun Penampan Wonokoyo', 'DINAMIKA MEGATAMA CITRA', NULL),
(82, 'Sidoarjo', 'Karawang', 'Desa Luwung', 'DINAMIKA MEGATAMA CITRA, PT', '031 - 848421'),
(83, 'Jawa Timur', 'Tangerang', 'Dusun Penampon', 'DINAMIKA MEGATAMA CITRA, PT', NULL),
(84, 'Maluku', 'Batang', 'Jl. Dr. Sitanala Tanah Lapang Kecil', 'DOK PERKAPALAN WAYAME, PT', '0911 - 321674'),
(85, 'Jawa Barat', 'Bekasi', 'Jl. Surya Lestari Kav 1 - 17b Kaw. Surya Cipta', 'EAST HOPE AGRICULTURE IND., PT', NULL),
(86, 'Banten', 'Bekasi', 'Jl. Raya Serang Km. 17 No.19 Kawasan Industri Cikupa Mas', 'FEPROTAMA PERTIWI, PT', '021 - 596903'),
(87, 'Jawa Tengah', 'Tasikmalaya', 'Jl. Raya Sigandu Rt. 01/04', 'FILET IKAN AJ (AYAMTO)', NULL),
(88, 'Jawa Barat', 'Sidoarjo', 'Jl. Inspeksi Tarum Barat Pekopen Lambang Jaya Tambun', 'GALIH AYAM PARAMENT PT', NULL),
(89, 'Jawa Barat', 'Jawa Timur', 'Jl. Inspeksi Tarum Barat Pekopen Lambang Jaya Tambun', 'GALIH AYAM PARAMENT, PT', NULL),
(90, 'Jawa Barat', 'Boyolali', 'Jl. Pancasenggang/ Kp. Rancasenggang', 'GAYAM', NULL),
(91, 'Jawa Timur', 'Madiun', 'Jl. Raya Tulangan', 'GELANG TANI, CV', NULL),
(92, 'Jawa Timur', 'Makassar', 'Jl. Raya Gondek 1 A', 'GEMILANG INTI SUKSES, PT', NULL),
(93, 'Jawa Tengah', 'Tulungagung', 'Dk Baros Rt 2/ Rw 8', 'GEMILANG SETIA SEJAHTERA, PT', NULL),
(94, 'Jawa Timur', 'Bekasi', 'Jl. Setia Budi Timur 28', 'HARAPAN AYAM POTONG', '0821 - 413210'),
(95, 'Sulawesi Selatan', 'Serang', 'Jl. Hati Murni', 'HARCO, UD', NULL),
(96, 'Jawa Timur', 'Banyu Asin', 'Jl. Recobarong Iii/41', 'HARYONO', '0355 - 775559'),
(97, 'Jawa Barat', 'Bekasi', 'Kawasan Industri Lippo Cikarang Blok A E-52', 'HENPRAKAYAMA', NULL),
(98, 'Banten', NULL, 'Jl. Raya Ciruas Petir Kp. Lebak', 'HIBER JAYA', '0254 - 283095'),
(99, 'Sumatera Selatan', NULL, 'Jalan Pangeran Ayin', 'INDFUSTRI KOPI CAP AYAM, PT', NULL),
(100, 'Jawa Barat', NULL, 'Jl. Toyogiri', 'INDO MURAYAMA PRES & DIES INDUSTRI, PT', '021 - 880744'),
(101, 'Jawa Tengah', 'Blitar', 'Jl. Raya Blotongan No. 123', 'ABON ABADI', '0298 - 327646'),
(102, 'Jawa Tengah', 'Batang', 'Jl. Jend Sudirman No. 339', 'ABON JUARA JUARA FOOD INDUSTRI', '0298 - 324060'),
(103, 'Banten', 'Semarang', 'Jl. Bhumimas Raya Desa Talaga', 'ADIL MART, PT', NULL),
(104, 'Jawa Timur', 'Ciamis', 'Karto Darmo', 'AGUS SP', NULL),
(105, 'Jawa Tengah', 'Bekasi', 'Jl. Raya Sigandu', 'AJ FILET', NULL),
(106, 'Jawa Tengah', 'Bogor', 'Wonosari Tengah Raya', 'AL BAROKAH CV', NULL),
(107, 'Jawa Barat', 'Sidoarjo', 'Jl. Raya Margaluyu No. 402', 'ANDHIKA PAKAN TERNAK,CV', '0265 - 311489'),
(108, 'Jawa Barat', 'Bandung', 'Jl. Jababeka Ii Tob Blok C No.16 V Kawasan Indi Jababeka I', 'ARLENE JAYAMANDIRI, PT', '021 - 893544'),
(109, 'Jawa Barat', 'Garut', 'Kampung Kalurahan', 'ASIA AFRIKA, PT', '021 - 982896'),
(110, 'Jawa Timur', 'Dauh Peken', 'Desa Krembung Rt.07/04', 'AYAM GORENG ARIFIN', '031 - 885023'),
(111, 'Jawa Barat', 'Tangerang', 'Jl. Cijeungjing', 'AYAM POTONG BAROKAH', NULL),
(112, 'Jawa Barat', 'Banten', 'Kp. Setiajaya', 'AYAM POTONG CEMARA', NULL),
(113, 'Bali', 'Boyolali', 'Perum Pesona Rajawali', 'AYUDYA JAYA ABADI, CV', '0361 -'),
(114, 'Banten', '5', 'Jl. Bumi Mas Raya No. 5 Kawasan Industri Cikupamas', 'BANGKIT SETIA SENTOSA PRIMATAMA, PT', '021 - 594030'),
(115, 'Banten', 'Bogor', 'Jl. Cantiga Petir Cipondoh', 'BAROKAH FOOD, UD', NULL),
(116, 'Jawa Tengah', 'Bogor', 'Jl. Raya Randusari Nepen Km. 2', 'CAHAYA GUNUNG FOODS, PT', NULL),
(117, 'Banjar', 'Serang', 'Jl. A.yani Km. 13', 'CAKRA PERKASA JAYAMULIA, PT', '0511 - 422042'),
(118, 'Jawa Barat', 'Lampung Selatan', 'Jl. Raya Jakarta Bogor Km. 51', 'CALVIN METAL PRODUCTS, PT', '021 - 867053'),
(119, 'Jawa Barat', 'Jawa Timur', 'Desa Tlajung Udik', 'CALVIN METAL PRODUCTS, PT', '021 - 867053'),
(120, 'Banten', 'Salatiga', 'Jl. Industri Iv Kaw. Modern Industri Kav. 6-8', 'CHAROEN POKHPAND INDONESIA, PT', '0254 - 402628'),
(121, 'Lampung', 'Deli Serdang', 'Jl. Ir Sutami Km. 15', 'CHAROEN POKPHAND INDONESIA FEEDMILL LA', '0721 - 350602'),
(122, 'Jawa Timur', 'Dauh Yeh', 'Jl. Berbek Industri No. 1 No. 24 Berbek', 'CHAROEN POKPHAND INDONESIA TBK, PT', '031 -'),
(123, 'Jawa Tengah', 'Purwakarta', 'Jl. Pattimura Km. 1 Kutowinangun Lor', 'CHAROEN POKPHAND INDONESIA, PT', '0298 - 327352'),
(124, 'Sumatera Utara', 'Kauman Lor', 'Dusun V Klumpang Kampung', 'CIOMAS ADI SATWA, PT', NULL),
(125, 'Tabanan', 'Sidoarjo', 'Jl. Raya Kaba Kaba', 'CIOMAS ADISATWA BALI, PT', NULL),
(126, 'Jawa Barat', 'Tangerang', 'Jl. Raya Sadang-subang Km 14', 'CIOMAS ADISATWA, PT', NULL),
(127, 'Semarang', 'Garut', 'Jl. Patimura Km. 6', 'CIOMAS ADISATWA, PT', '0298 - 342092'),
(128, 'Jawa Timur', 'Pasuruan', 'Desa Semambung', 'CIOMAS INDONESIA, PT/ CIOMAS ADI SATWA', '031 - 898629'),
(129, 'Banten', 'Dsn Sumokembangsri', 'Jl. Talaga Mas Raya No. 29', 'CITRA GUNA LESTARI, PT', '021 - 594036'),
(130, 'Jawa Barat', 'Pasuruan', 'Kp. Setia Jaya', 'DAGING AYAM CEMARA', NULL),
(131, 'Jawa Timur', 'Ambon', 'Dusun Penampan Wonokoyo', 'DINAMIKA MEGATAMA CITRA', NULL),
(132, 'Sidoarjo', 'Karawang', 'Desa Luwung', 'DINAMIKA MEGATAMA CITRA, PT', '031 - 848421'),
(133, 'Jawa Timur', 'Tangerang', 'Dusun Penampon', 'DINAMIKA MEGATAMA CITRA, PT', NULL),
(134, 'Maluku', 'Batang', 'Jl. Dr. Sitanala Tanah Lapang Kecil', 'DOK PERKAPALAN WAYAME, PT', '0911 - 321674'),
(135, 'Jawa Barat', 'Bekasi', 'Jl. Surya Lestari Kav 1 - 17b Kaw. Surya Cipta', 'EAST HOPE AGRICULTURE IND., PT', NULL),
(136, 'Banten', 'Bekasi', 'Jl. Raya Serang Km. 17 No.19 Kawasan Industri Cikupa Mas', 'FEPROTAMA PERTIWI, PT', '021 - 596903'),
(137, 'Jawa Tengah', 'Tasikmalaya', 'Jl. Raya Sigandu Rt. 01/04', 'FILET IKAN AJ (AYAMTO)', NULL),
(138, 'Jawa Barat', 'Sidoarjo', 'Jl. Inspeksi Tarum Barat Pekopen Lambang Jaya Tambun', 'GALIH AYAM PARAMENT PT', NULL),
(139, 'Jawa Barat', 'Jawa Timur', 'Jl. Inspeksi Tarum Barat Pekopen Lambang Jaya Tambun', 'GALIH AYAM PARAMENT, PT', NULL),
(140, 'Jawa Barat', 'Boyolali', 'Jl. Pancasenggang/ Kp. Rancasenggang', 'GAYAM', NULL),
(141, 'Jawa Timur', 'Madiun', 'Jl. Raya Tulangan', 'GELANG TANI, CV', NULL),
(142, 'Jawa Timur', 'Makassar', 'Jl. Raya Gondek 1 A', 'GEMILANG INTI SUKSES, PT', NULL),
(143, 'Jawa Tengah', 'Tulungagung', 'Dk Baros Rt 2/ Rw 8', 'GEMILANG SETIA SEJAHTERA, PT', NULL),
(144, 'Jawa Timur', 'Bekasi', 'Jl. Setia Budi Timur 28', 'HARAPAN AYAM POTONG', '0821 - 413210'),
(145, 'Sulawesi Selatan', 'Serang', 'Jl. Hati Murni', 'HARCO, UD', NULL),
(146, 'Jawa Timur', 'Banyu Asin', 'Jl. Recobarong Iii/41', 'HARYONO', '0355 - 775559'),
(147, 'Jawa Barat', 'Bekasi', 'Kawasan Industri Lippo Cikarang Blok A E-52', 'HENPRAKAYAMA', NULL),
(148, 'Banten', NULL, 'Jl. Raya Ciruas Petir Kp. Lebak', 'HIBER JAYA', '0254 - 283095'),
(149, 'Sumatera Selatan', NULL, 'Jalan Pangeran Ayin', 'INDFUSTRI KOPI CAP AYAM, PT', NULL),
(150, 'Jawa Barat', NULL, 'Jl. Toyogiri', 'INDO MURAYAMA PRES & DIES INDUSTRI, PT', '021 - 880744'),
(151, 'Jawa Timur', NULL, 'Pesisir Prenduan', 'ABD HADI', NULL),
(152, 'Jawa Timur', NULL, 'Pengaletan Rt.04/06', 'ABDUL AZIS', '852325'),
(153, 'Kalimantan Utara', 'Tarakan', 'Jalan Gajah Mada Kompleks Tpi', 'AGAPE CV', NULL),
(154, 'Bali', 'Denpasar', 'jl.Taman Mahardika No.28 Mumbul', 'AGRO MINA DEWATA, CV', '777292'),
(155, 'Sumatera Utara', 'Tapanuli Tengah', 'jl.Gatot Subroto Pondok Batu', 'AGUNG SUMATERA SAMUDERA ABADI, PT', NULL),
(156, 'Jawa Tengah', 'Batang', 'jl.Raya Sigandu', 'AJ FILET', NULL),
(157, 'Jawa Timur', NULL, 'jl.Bomo Rejosari Rt01/rw2', 'AJI/YULIATI, KRUPUK', '813364'),
(158, 'Sulawesi Utara', 'Bitung', 'Kelurahan Sagerat', 'ALAM BARU RECORD, PT', '812897'),
(159, 'Jawa Timur', 'Surabaya', 'jl.Rungkut Industri Ii/25', 'ALAM JAYA, PT', NULL),
(160, 'DKI Jakarta', 'Jakarta Utara', 'jl.Demaga Timur Transit 19 Muara Baru', 'ALAM SAMUDRA, PT', NULL),
(161, 'Sulawesi Utara', 'Bitung', 'Madidir Unet', 'ALIANSI, PT', NULL),
(162, 'Sulawesi Utara', 'Lingkungan 2', 'Kel Madidir Unet', 'ALLIANCE FOOD INDONESIA INTERNATIONAL,', '0438 - 28664'),
(163, 'Jawa Timur', 'Surabaya', 'jl.Jeleduk', 'ALSTOM POWER ENERGY SYSTEM PT', '31 - 3292080'),
(164, 'Jawa Barat', 'Bandung', 'jl.Pakar Timur Ii No.109', 'ALUMNI BANDUNG, PT', '022 - 250125'),
(165, 'Kepulauan Riau', 'B A T A M', 'Komplek Ruko Fanindo Blok D No.5', 'ALUSTEEL ENGINEERING INDONESIA, PT', NULL),
(166, 'Jawa Tengah', 'Rembang', 'Desa Tasik Agung No 10', 'ALVIAN PUTRA, UD', NULL),
(167, 'Jawa Timur', 'Sidoarjo', 'jl.Raya Bulu Sidokare', 'AMIN JAYA, UD', NULL),
(168, 'Sulawesi Tenggara', 'Kendari', 'jl.Komp Pps Samudra', 'AMO (ABADI MAKMUR OCEAN), PT', '0401 - 312960'),
(169, 'Sulawesi Utara', 'Ds.Krajan Rt.05/rw.08', 'Dusun Kalimati', 'ANANTA PRATAMA, UD', NULL),
(170, 'Jawa Timur', 'Banyuwangi', 'jl.Joyoboyo No.05', 'ANDALAS, UD', '0333 - 423705'),
(171, 'Jawa Tengah', 'Brebes', 'Dusun Bancang Rt.03 Rw.02', 'ANDI JAYA', '878299'),
(172, 'Sulawesi Tenggara', 'Kendari', 'jl.Komp Pps Samudra', 'ANDIKA, CV', NULL),
(173, 'Jawa Timur', 'Pasuruan', 'jl.Raya Sby Malang Km.38', 'ANEKA TUNA INDONESIA, PT', '0343 - 851361'),
(174, 'Bali', NULL, 'jl.Gatot Subroto', 'ANGEL FASHION STUDIO, PT', '31 - 8912117'),
(175, 'Jawa Tengah', 'Pati', 'Dukuhmulyo', 'ANI MITRA JAYA', NULL),
(176, 'Jawa Timur', 'Jember', 'Mandaran Ii Rt.02/06', 'ANK PUTRA', '0336 - 721276'),
(177, 'Sumatera Utara', 'Medan', 'jl.Jala Iv No.32 Paya Pasir', 'ANUGERAH ALAM, PD', '061 - 685221'),
(178, 'Maluku', 'Desa Wangel', 'Jl Gosamtian Dusun Marbali', 'ANUGERAH BAHARI MANDIRI, CV', NULL),
(179, 'Sulawesi Selatan', 'Maros', 'jl.Bambu Runcing No.99', 'ANUGERAH BINTANG CEMERLANG, CV', NULL),
(180, 'Sumatera Utara', 'Tanjung Balai', 'jl.Letjen Suprapto', 'ANUGERAH KERAMAT INDAH, PT', NULL),
(181, 'Jawa Timur', 'Tuban', 'Desa Sobontoro', 'ANUGERAH LAUT (PENGERINGAN IKAN AL AMI', NULL),
(182, 'Jawa Tengah', 'Rembang', 'Dukuh Rembangan Rt.01/03 Tasikagung', 'ANUGERAH MINA RAYA, UD', '813265'),
(183, 'Sumatera Utara', 'Tapanuli Tengah', 'jl.Gatot Subroto Komplek Ppn', 'ANUGERAH SARI LAUT, PT', '063 - 24428'),
(184, 'DKI Jakarta', 'Jakarta Utara', 'Pelabuhan Perikanan Samudera Jakarta Kawasan Dermag', 'ANUGERAH SECO JAYA, PT', '6628039'),
(185, 'Sulawesi Selatan', 'Makassar', 'jl.Metro Tanjung Bunga A.33 Ruko Sumba Opu', 'ANUGERAH SEJATI, CV', NULL),
(186, 'Maluku', 'Maluku Tengah', 'jl.Nunumahu', 'ANUGERAH TEHORU MANISE, PT', NULL),
(187, 'Jawa Barat', 'Bekasi', 'Casagardenia', 'ANUGRAH , UD', NULL),
(188, 'Jawa Timur', 'Surabaya', 'jl.Nambangan No.9', 'ANUGRAH ARTA ABADI, CV', NULL),
(189, 'Jawa Timur', 'Lamongan', 'jl.Raya Jompong', 'ANUGRAH JAYA , UD', '0322 - 662069'),
(190, 'Sulawesi Utara', 'Bitung', 'Lorong Tanjung Merah', 'ANUGRAH TIMUR MAKMUR, PT', NULL),
(191, 'Sumatera Utara', 'Serdang Bedagai', 'Dusun Vii Desa Naga Kisar', 'AQUA FARM, PT', '062 - 41918'),
(192, 'Jawa Tengah', 'Semarang', 'jl.Tambakaji V No.9', 'AQUAFARM NUSANTARA, PT', NULL),
(193, 'Bali', 'Denpasar', 'jl.By Pass Ngurah Rai No.92 Xx Pesanggrahan', 'ARABIKATAMA KHATULISTIWA FI, PT', NULL),
(194, 'Maluku', 'Kepulauan Aru', 'Desa Warabal', 'ARABIKATAMA KHATULISTIWA FISHING INDUS', '0917 - 21258'),
(195, 'Maluku', 'Kepulauan Aru', 'jl.Rajasam Dobo', 'ARAFURA FISHING INDUSTRIES, CV', NULL),
(196, 'DKI Jakarta', 'Jakarta Utara', 'jl.Muara Baru Ujung Dermaga Transit No 16', 'ARIYA JAYA SANTANG, PT', NULL),
(197, 'Jawa Timur', 'Lamongan', 'Komplek Tpi', 'ARTA JAYA, UD', NULL),
(198, 'Sulawesi Tenggara', 'Wakatobi', 'jl.Jendral A.h.Nasution', 'ARTA MINA JAYA , PT', NULL),
(199, 'Sumatera Utara', 'Medan', 'Jln. Ngumban Surbakti', 'HARI JAYA MANDIRI', '0979-12873'),
(200, 'Sumatera Utara', 'Samosir', 'samosit', 'MAJU BERSAMA', '0921-42830'),
(201, 'Jawa Timur', 'Pasuruan', 'Jl. A.yani 129', 'CARMA WIRA JATIM,PT', '0343 - 421714'),
(202, 'Jawa Timur', 'Sidoarjo', 'Jl. Berbek Industri Ii/5', 'FILL SURYA MEGAH,PT', '843197'),
(203, 'Jawa Timur', 'Blitar', 'Jl. Jagalan', 'GUNUNG MAS', NULL),
(204, 'Jawa Tengah', 'Tegal', 'Kedungbungkus Rt. 4/2', 'HEALTH MANUFAKTUR,CV', NULL),
(205, 'Kalimantan Barat', 'Singkawang', 'Jl. Alianyang', 'KECAP CAP KAMBING', NULL),
(206, 'Jawa Tengah', 'Magelang', 'Jl. Letnan Tukiyat Km. 4 Dusun Kedon', 'KURNIA KULIT ABADI,CV', '0293 - 788287'),
(207, 'Jawa Timur', 'Malang', 'Jl. Susanto No.8', 'LOKA,PT', NULL),
(208, 'Jawa Timur', 'Sidoarjo', 'Desa Tanjung Sari', 'RAJAWALI MUSINDO,PT', NULL),
(209, 'D.I. Yogyakarta', 'Sleman', 'Jl. Solo Km. 10 Sorogenen 1 No. 17 Purwomartani Rt. 008 Rw. 002', 'SOLUSKY PT', NULL),
(210, 'D.I. Yogyakarta', 'Sleman', 'Sidorejo Rt. 05 Rw. 04', 'TAMTO MANDIRI ,CV', NULL),
(211, 'D.I. Yogyakarta', 'Sleman', 'Kemirikebo Girikerto Rt. 02 Rw. 07', 'UMSKEY,CV', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_hewan` int(11) NOT NULL,
  `nama_hewan` varchar(100) NOT NULL,
  `jenis_hewan` varchar(100) NOT NULL,
  `berat_hewankg` int(11) NOT NULL,
  `harga_hewan` int(11) NOT NULL,
  `id_peternakan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_hewan`, `nama_hewan`, `jenis_hewan`, `berat_hewankg`, `harga_hewan`, `id_peternakan`) VALUES
(1, 'Sapi Brahman', 'sapi', 600, 38900000, 1),
(2, 'Sapi Simental', 'sapi', 560, 54200000, 2),
(3, 'Sapi Limosin', 'sapi', 450, 30400000, 3),
(4, 'Sapi Brahman Cross', 'sapi', 500, 60300000, 4),
(5, 'Sapi Ongole', 'sapi', 490, 44300000, 5),
(6, 'Sapi Peranakan Ongole (PO)', 'sapi', 560, 42800000, 6),
(7, 'Sapi Bali', 'sapi', 450, 63100000, 7),
(8, 'Sapi Madura', 'sapi', 420, 31600000, 8),
(9, 'Sapi Aceh', 'sapi', 590, 39900000, 9),
(10, 'Sapi Angus', 'sapi', 540, 63100000, 10),
(11, 'Sapi Brangus', 'sapi', 550, 57300000, 11),
(12, 'Sapi Brahman', 'sapi', 540, 34400000, 12),
(13, 'Sapi Simental', 'sapi', 410, 31400000, 13),
(14, 'Sapi Limosin', 'sapi', 430, 61200000, 14),
(15, 'Sapi Brahman Cross', 'sapi', 460, 42800000, 15),
(16, 'Sapi Ongole', 'sapi', 520, 43900000, 16),
(17, 'Sapi Peranakan Ongole (PO)', 'sapi', 430, 51100000, 17),
(18, 'Sapi Bali', 'sapi', 500, 42100000, 18),
(19, 'Sapi Madura', 'sapi', 420, 63200000, 19),
(20, 'Sapi Aceh', 'sapi', 520, 40100000, 20),
(21, 'Sapi Angus', 'sapi', 510, 62600000, 21),
(22, 'Sapi Brangus', 'sapi', 440, 48700000, 22),
(23, 'Sapi Brahman', 'sapi', 600, 44600000, 23),
(24, 'Sapi Simental', 'sapi', 480, 33400000, 24),
(25, 'Sapi Limosin', 'sapi', 440, 36100000, 25),
(26, 'Sapi Brahman Cross', 'sapi', 450, 39500000, 26),
(27, 'Sapi Ongole', 'sapi', 550, 48400000, 27),
(28, 'Sapi Peranakan Ongole (PO)', 'sapi', 510, 44900000, 28),
(29, 'Sapi Bali', 'sapi', 450, 31000000, 29),
(30, 'Sapi Madura', 'sapi', 560, 61100000, 30),
(31, 'Sapi Aceh', 'sapi', 510, 55200000, 31),
(32, 'Sapi Angus', 'sapi', 480, 33000000, 32),
(33, 'Sapi Brangus', 'sapi', 460, 64800000, 33),
(34, 'Sapi Brahman', 'sapi', 480, 46700000, 34),
(35, 'Sapi Simental', 'sapi', 480, 45600000, 35),
(36, 'Sapi Limosin', 'sapi', 580, 58200000, 36),
(37, 'Sapi Brahman Cross', 'sapi', 500, 43900000, 37),
(38, 'Sapi Ongole', 'sapi', 410, 38200000, 38),
(39, 'Sapi Peranakan Ongole (PO)', 'sapi', 480, 48400000, 39),
(40, 'Sapi Bali', 'sapi', 430, 51000000, 40),
(41, 'Sapi Madura', 'sapi', 560, 55000000, 41),
(42, 'Sapi Aceh', 'sapi', 570, 31100000, 42),
(43, 'Sapi Angus', 'sapi', 570, 55300000, 43),
(44, 'Sapi Brangus', 'sapi', 570, 31600000, 44),
(45, 'Sapi Brahman', 'sapi', 590, 40900000, 45),
(46, 'Sapi Simental', 'sapi', 580, 34300000, 46),
(47, 'Sapi Limosin', 'sapi', 500, 55500000, 47),
(48, 'Sapi Brahman Cross', 'sapi', 540, 33300000, 48),
(49, 'Sapi Ongole', 'sapi', 560, 49800000, 49),
(50, 'Sapi Brahman', 'sapi', 550, 63100000, 50),
(51, 'Sapi Simental', 'sapi', 570, 48500000, 16),
(52, 'Sapi Limosin', 'sapi', 490, 35500000, 6),
(53, 'Sapi Brahman Cross', 'sapi', 560, 41000000, 4),
(54, 'Sapi Ongole', 'sapi', 560, 52200000, 11),
(55, 'Sapi Peranakan Ongole (PO)', 'sapi', 540, 52300000, 28),
(56, 'Sapi Bali', 'sapi', 570, 45400000, 33),
(57, 'Sapi Madura', 'sapi', 500, 55800000, 41),
(58, 'Sapi Aceh', 'sapi', 530, 56200000, 15),
(59, 'Sapi Angus', 'sapi', 410, 53200000, 6),
(60, 'Sapi Brangus', 'sapi', 420, 47700000, 30),
(61, 'Sapi Brahman', 'sapi', 510, 30600000, 24),
(62, 'Sapi Simental', 'sapi', 590, 33600000, 34),
(63, 'Sapi Limosin', 'sapi', 510, 49300000, 21),
(64, 'Sapi Brahman Cross', 'sapi', 490, 63000000, 32),
(65, 'Sapi Ongole', 'sapi', 550, 52200000, 4),
(66, 'Sapi Peranakan Ongole (PO)', 'sapi', 500, 43400000, 29),
(67, 'Sapi Bali', 'sapi', 590, 33300000, 37),
(68, 'Sapi Madura', 'sapi', 480, 62000000, 10),
(69, 'Sapi Aceh', 'sapi', 570, 54900000, 48),
(70, 'Sapi Angus', 'sapi', 450, 42500000, 21),
(71, 'Sapi Brangus', 'sapi', 430, 48300000, 44),
(72, 'Sapi Brahman', 'sapi', 410, 34500000, 12),
(73, 'Sapi Simental', 'sapi', 510, 51600000, 22),
(74, 'Sapi Limosin', 'sapi', 510, 34200000, 30),
(75, 'Sapi Brahman Cross', 'sapi', 520, 49500000, 27),
(76, 'Sapi Ongole', 'sapi', 600, 42900000, 37),
(77, 'Sapi Peranakan Ongole (PO)', 'sapi', 470, 63600000, 13),
(78, 'Sapi Bali', 'sapi', 430, 57400000, 32),
(79, 'Sapi Madura', 'sapi', 490, 58900000, 25),
(80, 'Sapi Aceh', 'sapi', 550, 42200000, 18),
(81, 'Sapi Angus', 'sapi', 480, 34400000, 48),
(82, 'Sapi Brangus', 'sapi', 500, 44100000, 44),
(83, 'Sapi Brahman', 'sapi', 490, 43700000, 47),
(84, 'Sapi Simental', 'sapi', 480, 34100000, 27),
(85, 'Sapi Limosin', 'sapi', 480, 58500000, 35),
(86, 'Sapi Brahman Cross', 'sapi', 510, 56500000, 2),
(87, 'Sapi Ongole', 'sapi', 590, 31200000, 33),
(88, 'Sapi Peranakan Ongole (PO)', 'sapi', 560, 50600000, 28),
(89, 'Sapi Bali', 'sapi', 440, 43200000, 40),
(90, 'Sapi Madura', 'sapi', 570, 58300000, 28),
(91, 'Sapi Aceh', 'sapi', 530, 33200000, 49),
(92, 'Sapi Angus', 'sapi', 550, 33600000, 9),
(93, 'Sapi Brangus', 'sapi', 550, 40900000, 8),
(94, 'Sapi Brahman', 'sapi', 590, 38400000, 22),
(95, 'Sapi Simental', 'sapi', 590, 55800000, 14),
(96, 'Sapi Limosin', 'sapi', 490, 33000000, 14),
(97, 'Sapi Brahman Cross', 'sapi', 590, 63700000, 10),
(98, 'Sapi Ongole', 'sapi', 480, 49400000, 11),
(99, 'Ayam Broiler', 'sapi', 1, 154000, 45),
(100, 'Ayam Kampung', 'sapi', 2, 493000, 50),
(101, 'Ayam Arab', 'ayam', 2, 186000, 51),
(102, 'Ayam Rhode Island Red', 'ayam', 1, 308000, 52),
(103, 'Ayam cerami', 'ayam', 1, 131000, 53),
(104, 'Ayam Cemani', 'ayam', 2, 331000, 54),
(105, 'Ayam Broiler', 'ayam', 1, 36000, 55),
(106, 'Ayam Broiler', 'ayam', 1, 123000, 56),
(107, 'Ayam Kampung', 'ayam', 2, 36000, 57),
(108, 'Ayam Arab', 'ayam', 1, 146000, 58),
(109, 'Ayam Rhode Island Red', 'ayam', 3, 94000, 59),
(110, 'Ayam cerami', 'ayam', 2, 485000, 60),
(111, 'Ayam Cemani', 'ayam', 2, 405000, 61),
(112, 'Ayam Broiler', 'ayam', 2, 376000, 62),
(113, 'Ayam Broiler', 'ayam', 3, 488000, 63),
(114, 'Ayam Kampung', 'ayam', 1, 295000, 64),
(115, 'Ayam Arab', 'ayam', 3, 411000, 65),
(116, 'Ayam Rhode Island Red', 'ayam', 2, 112000, 66),
(117, 'Ayam cerami', 'ayam', 2, 467000, 67),
(118, 'Ayam Cemani', 'ayam', 3, 324000, 68),
(119, 'Ayam Broiler', 'ayam', 1, 210000, 69),
(120, 'Ayam Broiler', 'ayam', 1, 377000, 70),
(121, 'Ayam Kampung', 'ayam', 1, 340000, 71),
(122, 'Ayam Arab', 'ayam', 2, 405000, 72),
(123, 'Ayam Rhode Island Red', 'ayam', 2, 213000, 73),
(124, 'Ayam cerami', 'ayam', 1, 268000, 74),
(125, 'Ayam Cemani', 'ayam', 3, 199000, 75),
(126, 'Ayam Broiler', 'ayam', 1, 189000, 76),
(127, 'Ayam Broiler', 'ayam', 3, 395000, 77),
(128, 'Ayam Kampung', 'ayam', 2, 486000, 78),
(129, 'Ayam Arab', 'ayam', 1, 396000, 79),
(130, 'Ayam Rhode Island Red', 'ayam', 2, 200000, 80),
(131, 'Ayam cerami', 'ayam', 1, 312000, 81),
(132, 'Ayam Cemani', 'ayam', 2, 140000, 82),
(133, 'Ayam Broiler', 'ayam', 2, 78000, 83),
(134, 'Ayam Broiler', 'ayam', 3, 281000, 84),
(135, 'Ayam Kampung', 'ayam', 3, 266000, 85),
(136, 'Ayam Arab', 'ayam', 1, 176000, 86),
(137, 'Ayam Rhode Island Red', 'ayam', 2, 373000, 87),
(138, 'Ayam cerami', 'ayam', 3, 216000, 88),
(139, 'Ayam Cemani', 'ayam', 3, 336000, 89),
(140, 'Ayam Broiler', 'ayam', 2, 492000, 90),
(141, 'Ayam Broiler', 'ayam', 2, 226000, 91),
(142, 'Ayam Kampung', 'ayam', 1, 379000, 92),
(143, 'Ayam Arab', 'ayam', 3, 168000, 93),
(144, 'Ayam Rhode Island Red', 'ayam', 2, 355000, 94),
(145, 'Ayam cerami', 'ayam', 2, 100000, 95),
(146, 'Ayam Cemani', 'ayam', 2, 181000, 96),
(147, 'Ayam Broiler', 'ayam', 3, 262000, 97),
(148, 'Ayam Broiler', 'ayam', 1, 241000, 98),
(149, 'Ayam Kampung', 'ayam', 2, 273000, 99),
(150, 'Ayam Arab', 'ayam', 2, 413000, 100),
(151, 'Ayam Rhode Island Red', 'ayam', 3, 329000, 100),
(152, 'Ayam cerami', 'ayam', 2, 246000, 77),
(153, 'Ayam Cemani', 'ayam', 3, 88000, 52),
(154, 'Ayam Broiler', 'ayam', 1, 70000, 51),
(155, 'Ayam Broiler', 'ayam', 3, 251000, 77),
(156, 'Ayam Kampung', 'ayam', 1, 223000, 68),
(157, 'Ayam Arab', 'ayam', 2, 251000, 71),
(158, 'Ayam Rhode Island Red', 'ayam', 3, 373000, 75),
(159, 'Ayam cerami', 'ayam', 3, 342000, 62),
(160, 'Ayam Cemani', 'ayam', 1, 384000, 86),
(161, 'Ayam Broiler', 'ayam', 2, 226000, 75),
(162, 'Ayam Broiler', 'ayam', 1, 179000, 91),
(163, 'Ayam Kampung', 'ayam', 2, 45000, 87),
(164, 'Ayam Arab', 'ayam', 3, 473000, 57),
(165, 'Ayam Rhode Island Red', 'ayam', 2, 292000, 58),
(166, 'Ayam cerami', 'ayam', 3, 22000, 65),
(167, 'Ayam Cemani', 'ayam', 2, 383000, 54),
(168, 'Ayam Broiler', 'ayam', 3, 121000, 68),
(169, 'Ayam Broiler', 'ayam', 3, 267000, 55),
(170, 'Ayam Kampung', 'ayam', 3, 48000, 76),
(171, 'Ayam Arab', 'ayam', 1, 294000, 93),
(172, 'Ayam Rhode Island Red', 'ayam', 2, 379000, 77),
(173, 'Ayam cerami', 'ayam', 3, 207000, 67),
(174, 'Ayam Cemani', 'ayam', 2, 24000, 100),
(175, 'Ayam Broiler', 'ayam', 3, 152000, 52),
(176, 'Ayam Broiler', 'ayam', 2, 275000, 100),
(177, 'Ayam Kampung', 'ayam', 3, 136000, 53),
(178, 'Ayam Arab', 'ayam', 2, 51000, 88),
(179, 'Ayam Rhode Island Red', 'ayam', 2, 154000, 78),
(180, 'Ayam cerami', 'ayam', 2, 147000, 90),
(181, 'Ayam Cemani', 'ayam', 2, 180000, 83),
(182, 'Ayam Broiler', 'ayam', 2, 422000, 65),
(183, 'Ayam Broiler', 'ayam', 3, 233000, 66),
(184, 'Ayam Kampung', 'ayam', 2, 45000, 56),
(185, 'Ayam Arab', 'ayam', 3, 134000, 63),
(186, 'Ayam Rhode Island Red', 'ayam', 3, 460000, 89),
(187, 'Ayam cerami', 'ayam', 1, 24000, 88),
(188, 'Ayam Cemani', 'ayam', 1, 200000, 85),
(189, 'Ayam Broiler', 'ayam', 2, 48000, 57),
(190, 'Ayam Broiler', 'ayam', 1, 209000, 59),
(191, 'Ayam Kampung', 'ayam', 1, 160000, 82),
(192, 'Ayam Arab', 'ayam', 2, 494000, 95),
(193, 'Ayam Rhode Island Red', 'ayam', 3, 254000, 51),
(194, 'Ayam cerami', 'ayam', 1, 86000, 61),
(195, 'Ayam Cemani', 'ayam', 3, 147000, 69),
(196, 'Ayam Broiler', 'ayam', 3, 82000, 59),
(197, 'Ayam Broiler', 'ayam', 2, 53000, 66),
(198, 'Ayam Kampung', 'ayam', 1, 410000, 55),
(199, 'Ayam Arab', 'ayam', 1, 74000, 66),
(200, 'Ayam Rhode Island Red', 'ayam', 1, 125000, 80),
(201, 'Lele', 'ikan', 0, 114000, 101),
(202, 'Gurame', 'ikan', 0, 45000, 102),
(203, 'Nila', 'ikan', 0, 107000, 103),
(204, 'Patin', 'ikan', 0, 135000, 104),
(205, 'Bandeng', 'ikan', 0, 105000, 105),
(206, 'Kakap', 'ikan', 0, 89000, 106),
(207, 'Kerapu', 'ikan', 0, 145000, 107),
(208, 'Ikan Mas', 'ikan', 0, 115000, 108),
(209, 'Lele', 'ikan', 0, 94000, 109),
(210, 'Gurame', 'ikan', 0, 70000, 110),
(211, 'Nila', 'ikan', 0, 17000, 111),
(212, 'Patin', 'ikan', 0, 105000, 112),
(213, 'Bandeng', 'ikan', 0, 116000, 113),
(214, 'Kakap', 'ikan', 0, 95000, 114),
(215, 'Kerapu', 'ikan', 0, 22000, 115),
(216, 'Ikan Mas', 'ikan', 0, 28000, 116),
(217, 'Lele', 'ikan', 0, 77000, 117),
(218, 'Gurame', 'ikan', 0, 60000, 118),
(219, 'Nila', 'ikan', 0, 44000, 119),
(220, 'Patin', 'ikan', 0, 93000, 120),
(221, 'Bandeng', 'ikan', 0, 49000, 121),
(222, 'Kakap', 'ikan', 0, 116000, 122),
(223, 'Kerapu', 'ikan', 0, 28000, 123),
(224, 'Ikan Mas', 'ikan', 0, 82000, 124),
(225, 'Lele', 'ikan', 0, 122000, 125),
(226, 'Gurame', 'ikan', 0, 29000, 126),
(227, 'Nila', 'ikan', 0, 33000, 127),
(228, 'Patin', 'ikan', 0, 120000, 128),
(229, 'Bandeng', 'ikan', 0, 53000, 129),
(230, 'Kakap', 'ikan', 0, 130000, 130),
(231, 'Kerapu', 'ikan', 0, 145000, 131),
(232, 'Ikan Mas', 'ikan', 0, 64000, 132),
(233, 'Lele', 'ikan', 0, 34000, 133),
(234, 'Gurame', 'ikan', 0, 63000, 134),
(235, 'Nila', 'ikan', 0, 18000, 135),
(236, 'Patin', 'ikan', 0, 46000, 136),
(237, 'Bandeng', 'ikan', 0, 33000, 137),
(238, 'Kakap', 'ikan', 0, 69000, 138),
(239, 'Kerapu', 'ikan', 0, 46000, 139),
(240, 'Ikan Mas', 'ikan', 0, 87000, 140),
(241, 'Lele', 'ikan', 0, 20000, 141),
(242, 'Gurame', 'ikan', 0, 48000, 142),
(243, 'Nila', 'ikan', 0, 126000, 143),
(244, 'Patin', 'ikan', 0, 31000, 144),
(245, 'Bandeng', 'ikan', 0, 126000, 145),
(246, 'Kakap', 'ikan', 0, 16000, 146),
(247, 'Kerapu', 'ikan', 0, 70000, 147),
(248, 'Ikan Mas', 'ikan', 0, 67000, 148),
(249, 'Lele', 'ikan', 0, 122000, 149),
(250, 'Gurame', 'ikan', 0, 100000, 150),
(251, 'Nila', 'ikan', 0, 132000, 111),
(252, 'Patin', 'ikan', 0, 133000, 132),
(253, 'Bandeng', 'ikan', 0, 118000, 126),
(254, 'Kakap', 'ikan', 0, 96000, 126),
(255, 'Kerapu', 'ikan', 0, 148000, 139),
(256, 'Ikan Mas', 'ikan', 0, 93000, 116),
(257, 'Lele', 'ikan', 0, 105000, 106),
(258, 'Gurame', 'ikan', 0, 118000, 133),
(259, 'Nila', 'ikan', 0, 98000, 109),
(260, 'Patin', 'ikan', 0, 27000, 129),
(261, 'Bandeng', 'ikan', 0, 114000, 110),
(262, 'Kakap', 'ikan', 0, 58000, 137),
(263, 'Kerapu', 'ikan', 0, 102000, 119),
(264, 'Ikan Mas', 'ikan', 0, 46000, 145),
(265, 'Lele', 'ikan', 0, 137000, 135),
(266, 'Gurame', 'ikan', 0, 44000, 106),
(267, 'Nila', 'ikan', 0, 73000, 106),
(268, 'Patin', 'ikan', 0, 113000, 111),
(269, 'Bandeng', 'ikan', 0, 63000, 119),
(270, 'Kakap', 'ikan', 0, 75000, 102),
(271, 'Kerapu', 'ikan', 0, 26000, 111),
(272, 'Ikan Mas', 'ikan', 0, 104000, 102),
(273, 'Lele', 'ikan', 0, 118000, 119),
(274, 'Gurame', 'ikan', 0, 146000, 104),
(275, 'Nila', 'ikan', 0, 84000, 117),
(276, 'Patin', 'ikan', 0, 77000, 141),
(277, 'Bandeng', 'ikan', 0, 92000, 150),
(278, 'Kakap', 'ikan', 0, 142000, 132),
(279, 'Kerapu', 'ikan', 0, 79000, 130),
(280, 'Ikan Mas', 'ikan', 0, 149000, 140),
(281, 'Lele', 'ikan', 0, 72000, 110),
(282, 'Gurame', 'ikan', 0, 132000, 147),
(283, 'Nila', 'ikan', 0, 90000, 116),
(284, 'Patin', 'ikan', 0, 22000, 148),
(285, 'Bandeng', 'ikan', 0, 143000, 119),
(286, 'Kakap', 'ikan', 0, 65000, 107),
(287, 'Kerapu', 'ikan', 0, 85000, 107),
(288, 'Ikan Mas', 'ikan', 0, 72000, 106),
(289, 'Lele', 'ikan', 0, 68000, 116),
(290, 'Gurame', 'ikan', 0, 115000, 132),
(291, 'Nila', 'ikan', 0, 123000, 115),
(292, 'Patin', 'ikan', 0, 24000, 138),
(293, 'Bandeng', 'ikan', 0, 120000, 109),
(294, 'Kakap', 'ikan', 0, 53000, 119),
(295, 'Kerapu', 'ikan', 0, 72000, 103),
(296, 'Ikan Mas', 'ikan', 0, 113000, 108),
(297, 'Nila', 'ikan', 0, 140000, 136),
(298, 'Patin', 'ikan', 0, 26000, 136),
(299, 'Bandeng', 'ikan', 0, 67000, 115),
(300, 'Kakap', 'ikan', 0, 62000, 140),
(301, 'Kambing Boer', 'kambing', 68, 2040000, 151),
(302, 'Kambing Etawa', 'kambing', 76, 1730000, 152),
(303, 'Kambing Kacang', 'kambing', 37, 3190000, 153),
(304, 'Kambing Jawarandu', 'kambing', 60, 2830000, 154),
(305, 'Kambing Katjang', 'kambing', 77, 2580000, 155),
(306, 'Kambing Samosir', 'kambing', 43, 6820000, 156),
(307, 'Kambing Boer', 'kambing', 71, 1890000, 157),
(308, 'Kambing Etawa', 'kambing', 72, 540000, 158),
(309, 'Kambing Kacang', 'kambing', 64, 3130000, 159),
(310, 'Kambing Jawarandu', 'kambing', 47, 2350000, 160),
(311, 'Kambing Katjang', 'kambing', 77, 6140000, 161),
(312, 'Kambing Samosir', 'kambing', 70, 4510000, 162),
(313, 'Kambing Boer', 'kambing', 36, 4240000, 163),
(314, 'Kambing Etawa', 'kambing', 63, 4470000, 164),
(315, 'Kambing Kacang', 'kambing', 39, 1250000, 165),
(316, 'Kambing Jawarandu', 'kambing', 42, 2230000, 166),
(317, 'Kambing Boer', 'kambing', 62, 870000, 167),
(318, 'Kambing Etawa', 'kambing', 79, 3750000, 168),
(319, 'Kambing Kacang', 'kambing', 52, 1890000, 169),
(320, 'Kambing Jawarandu', 'kambing', 46, 5340000, 170),
(321, 'Kambing Katjang', 'kambing', 54, 6930000, 171),
(322, 'Kambing Samosir', 'kambing', 35, 6090000, 172),
(323, 'Kambing Jawarandu', 'kambing', 64, 1430000, 173),
(324, 'Kambing Katjang', 'kambing', 75, 2460000, 174),
(325, 'Kambing Samosir', 'kambing', 39, 4880000, 175),
(326, 'Kambing Boer', 'kambing', 76, 2830000, 176),
(327, 'Kambing Etawa', 'kambing', 41, 4950000, 177),
(328, 'Kambing Kacang', 'kambing', 72, 210000, 178),
(329, 'Kambing Jawarandu', 'kambing', 67, 2750000, 179),
(330, 'Kambing Boer', 'kambing', 54, 1160000, 180),
(331, 'Kambing Etawa', 'kambing', 57, 920000, 181),
(332, 'Kambing Jawarandu', 'kambing', 78, 1640000, 182),
(333, 'Kambing Katjang', 'kambing', 53, 1960000, 183),
(334, 'Kambing Samosir', 'kambing', 77, 960000, 184),
(335, 'Kambing Boer', 'kambing', 49, 1810000, 185),
(336, 'Kambing Etawa', 'kambing', 49, 6580000, 186),
(337, 'Kambing Kacang', 'kambing', 40, 1910000, 187),
(338, 'Kambing Jawarandu', 'kambing', 78, 2770000, 188),
(339, 'Kambing Jawarandu', 'kambing', 80, 4350000, 189),
(340, 'Kambing Katjang', 'kambing', 39, 2640000, 190),
(341, 'Kambing Samosir', 'kambing', 75, 1130000, 191),
(342, 'Kambing Boer', 'kambing', 75, 4450000, 192),
(343, 'Kambing Etawa', 'kambing', 52, 4950000, 193),
(344, 'Kambing Jawarandu', 'kambing', 60, 2160000, 194),
(345, 'Kambing Katjang', 'kambing', 67, 6320000, 195),
(346, 'Kambing Samosir', 'kambing', 37, 1420000, 196),
(347, 'Kambing Boer', 'kambing', 58, 4990000, 197),
(348, 'Kambing Etawa', 'kambing', 50, 560000, 198),
(349, 'Kambing Boer', 'kambing', 62, 1300000, 199),
(350, 'Kambing Etawa', 'kambing', 47, 2540000, 200),
(351, 'Kambing Jawarandu', 'kambing', 64, 3790000, 201),
(352, 'Kambing Katjang', 'kambing', 52, 5730000, 202),
(353, 'Kambing Samosir', 'kambing', 63, 1210000, 203),
(354, 'Kambing Boer', 'kambing', 53, 4120000, 204),
(355, 'Kambing Etawa', 'kambing', 56, 2710000, 205),
(356, 'Kambing Boer', 'kambing', 40, 2020000, 206),
(357, 'Kambing Boer', 'kambing', 65, 780000, 207),
(358, 'Kambing Etawa', 'kambing', 62, 350000, 208),
(359, 'Kambing Jawarandu', 'kambing', 60, 3870000, 209),
(360, 'Kambing Katjang', 'kambing', 37, 6060000, 210),
(361, 'Kambing Samosir', 'kambing', 51, 4020000, 211);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tbl_peternakan`
--
ALTER TABLE `tbl_peternakan`
  ADD PRIMARY KEY (`id_peternakan`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_hewan`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_peternakan`
--
ALTER TABLE `tbl_peternakan`
  MODIFY `id_peternakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_hewan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
