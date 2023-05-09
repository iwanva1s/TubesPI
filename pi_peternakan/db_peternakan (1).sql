-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 09:21 AM
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
-- Database: `db_peternakan`
--

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
(1, 'Jawa Tengah', 'Salatiga', 'Jl. Raya Blotongan No. 123', 'ABON ABADI', '0298 - 327646'),
(2, 'Jawa Tengah', 'Salatiga', 'Jl. Jend Sudirman No. 339', 'ABON JUARA JUARA FOOD INDUSTRI', '0298 - 324060'),
(3, 'Banten', 'Tangerang', 'Jl. Bhumimas Raya Desa Talaga', 'ADIL MART, PT', NULL),
(4, 'Jawa Timur', 'Blitar', 'Karto Darmo', 'AGUS SP', NULL),
(5, 'Jawa Tengah', 'Batang', 'Jl. Raya Sigandu', 'AJ FILET', NULL),
(6, 'Jawa Tengah', 'Semarang', 'Wonosari Tengah Raya', 'AL BAROKAH CV', NULL),
(7, 'Jawa Barat', 'Ciamis', 'Jl. Raya Margaluyu No. 402', 'ANDHIKA PAKAN TERNAK,CV', '0265 - 311489'),
(8, 'Jawa Barat', 'Bekasi', 'Jl. Jababeka Ii Tob Blok C No.16 V Kawasan Indi Jababeka I', 'ARLENE JAYAMANDIRI, PT', '021 - 893544'),
(9, 'Jawa Barat', 'Bogor', 'Kampung Kalurahan', 'ASIA AFRIKA, PT', '021 - 982896'),
(10, 'Jawa Timur', 'Sidoarjo', 'Desa Krembung Rt.07/04', 'AYAM GORENG ARIFIN', '031 - 885023'),
(11, 'Jawa Barat', 'Bandung', 'Jl. Cijeungjing', 'AYAM POTONG BAROKAH', NULL),
(12, 'Jawa Barat', 'Garut', 'Kp. Setiajaya', 'AYAM POTONG CEMARA', NULL),
(13, 'Bali', 'Dauh Peken', 'Perum Pesona Rajawali', 'AYUDYA JAYA ABADI, CV', '0361 -'),
(14, 'Banten', 'Tangerang', 'Jl. Bumi Mas Raya No. 5 Kawasan Industri Cikupamas', 'BANGKIT SETIA SENTOSA PRIMATAMA, PT', '021 - 594030'),
(15, 'Banten', 'Banten', 'Jl. Cantiga Petir Cipondoh', 'BAROKAH FOOD, UD', NULL),
(16, 'Jawa Tengah', 'Boyolali', 'Jl. Raya Randusari Nepen Km. 2', 'CAHAYA GUNUNG FOODS, PT', NULL),
(17, 'Banjar', '5', 'Jl. A.yani Km. 13', 'CAKRA PERKASA JAYAMULIA, PT', '0511 - 422042'),
(18, 'Jawa Barat', 'Bogor', 'Jl. Raya Jakarta Bogor Km. 51', 'CALVIN METAL PRODUCTS, PT', '021 - 867053'),
(19, 'Jawa Barat', 'Bogor', 'Desa Tlajung Udik', 'CALVIN METAL PRODUCTS, PT', '021 - 867053'),
(20, 'Banten', 'Serang', 'Jl. Industri Iv Kaw. Modern Industri Kav. 6-8', 'CHAROEN POKHPAND INDONESIA, PT', '0254 - 402628'),
(21, 'Lampung', 'Lampung Selatan', 'Jl. Ir Sutami Km. 15', 'CHAROEN POKPHAND INDONESIA FEEDMILL LA', '0721 - 350602'),
(22, 'Jawa Timur', 'Jawa Timur', 'Jl. Berbek Industri No. 1 No. 24 Berbek', 'CHAROEN POKPHAND INDONESIA TBK, PT', '031 -'),
(23, 'Jawa Tengah', 'Salatiga', 'Jl. Pattimura Km. 1 Kutowinangun Lor', 'CHAROEN POKPHAND INDONESIA, PT', '0298 - 327352'),
(24, 'Sumatera Utara', 'Deli Serdang', 'Dusun V Klumpang Kampung', 'CIOMAS ADI SATWA, PT', NULL),
(25, 'Tabanan', 'Dauh Yeh', 'Jl. Raya Kaba Kaba', 'CIOMAS ADISATWA BALI, PT', NULL),
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
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `jenis_produk` varchar(100) DEFAULT NULL,
  `berat_produk_gr` varchar(100) DEFAULT NULL,
  `harga_produk` varchar(100) NOT NULL,
  `id_peternakan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `nama_produk`, `jenis_produk`, `berat_produk_gr`, `harga_produk`, `id_peternakan`) VALUES
(1, 'Abon Sapi', 'siap jadi', '300', '280000', 1),
(2, 'Abon Sapi', 'siap jadi', '300', '110000', 2),
(3, 'Abon Sapi', 'siap jadi', '300', '40000', 3),
(4, 'Abon Sapi', 'siap jadi', '300', '30000', 4),
(5, 'Abon Sapi', 'siap jadi', '300', '140000', 5),
(6, 'Abon Sapi', 'siap jadi', '300', '130000', 6),
(7, 'Bakso Sapi', 'masakan', '300', '40000', 7),
(8, 'Bakso Sapi', 'masakan', '300', '110000', 8),
(9, 'Kulit Sapi Garaman', 'kulit', '1000', '40000', 9),
(10, 'Kulit Jadi Sapi', 'kulit', '1000', '240000', 10),
(11, 'Bakso Sapi', 'masakan', '300', '120000', 11),
(12, 'Basko Sapi', 'masakan', '3000', '220000', 12),
(13, 'Daging Sapi', 'daging potong', '1000', '300000', 13),
(14, 'Pengepakan Bumbu Masak', 'jasa', NULL, '170000', 14),
(15, 'Susu Sapi', 'siap jadi', '1000', '180000', 15),
(16, 'Daging Sapi Lokal', 'daging potong', NULL, '50000', 16),
(17, 'Dendeng sapi', 'siap jadi', NULL, '230000', 17),
(18, 'Susu Sapi', 'siap jadi', '1000', '200000', 18),
(19, 'Kulit Sapi', 'kulit', NULL, '130000', 19),
(20, 'Kulit Sapi', 'kulit', NULL, '200000', 20),
(21, 'Konsentrat Pakan Sapi Potong Perah', 'pakan', '10000', '100000', 21),
(22, 'Susu Sapi Cair Murni Olahan', 'siap jadi', '1000', '290000', 22),
(23, 'Pakan Ternak Sapi', 'pakan', NULL, '180000', 23),
(24, 'Krecek Dari Kulit Sapi', NULL, NULL, '70000', 24),
(25, 'Krupuk', 'siap jadi', NULL, '290000', 25),
(26, 'pakan Sapi Perah', 'siap jadi', NULL, '210000', 26),
(27, 'Penyamakan Kulit Sapi', 'siap jadi', NULL, '130000', 27),
(28, 'Sosis Sapi', 'siap jadi', '300', '30000', 28),
(29, 'Bakso Sapi', 'masakan', '300', '250000', 29),
(30, 'Konsentrat Pakan Sapi', 'pakan', NULL, '60000', 30),
(31, 'Pakan Unggas', 'pakan', NULL, '180000', 31),
(32, 'Bakso Sapi', 'masakan', NULL, '250000', 32),
(33, 'Kolagen Sapi', NULL, NULL, '160000', 33),
(34, 'Kulit Sapi', 'kulit', NULL, '140000', 34),
(35, 'Sosis Sapi', 'siap jadi', '300', '110000', 35),
(36, 'Krecek Kulit Sapi', NULL, NULL, '280000', 36),
(37, 'Baso Sapi', 'siap jadi', '300', '220000', 37),
(38, 'pakan sapi', 'pakan', NULL, '290000', 38),
(39, 'Kulit Sapi', 'kulit', NULL, '290000', 39),
(40, 'Kain Gray', NULL, NULL, '250000', 40),
(41, 'kulit sapi', 'kulit', NULL, '270000', 41),
(42, 'Daging sapi', 'daging potong', NULL, '100000', 42),
(43, 'Pupuk Organik Granul', NULL, NULL, '70000', 43),
(44, 'Bakso Sapi', 'masakan', '300', '220000', 44),
(45, 'Susu sapi', 'siap jadi', '500', '290000', 45),
(46, 'Susu Sapi Murni', 'siap jadi', '500', '70000', 46),
(47, 'Daging Sapi', 'daging potong', NULL, '130000', 47),
(48, 'Baso Sapi', 'masakan', '300', '230000', 48),
(49, 'Bakso Sapi', 'masakan', '300', '180000', 49),
(50, 'Bakso Sapi', 'masakan', '300', '290000', 50),
(51, 'Abon Ayam', 'siap jadi', '100', '60000', 51),
(52, 'Abon Ayam', 'siap jadi', '300', '150000', 52),
(53, 'Sosis Ayam', 'siap jadi', '300', '240000', 53),
(54, 'Bakso Ayam', 'siap jadi', '300', '230000', 54),
(55, 'Fillet Ikan', 'masakan', NULL, '230000', 55),
(56, 'Bakso Ayam', 'masakan', '300', '250000', 56),
(57, 'Pakan Ternak Ayam Bloiler', 'pakan', NULL, '100000', 57),
(58, 'Bakso Ayam', 'masakan', NULL, '110000', 58),
(59, 'Ayam Potong', 'daging potong', NULL, '290000', 59),
(60, 'Ayam Goreng', 'siap jadi', NULL, '140000', 60),
(61, 'Ayam Potong', 'daging potong', NULL, '50000', 61),
(62, 'Ayam Potong', 'daging potong', NULL, '80000', 62),
(63, 'Daging Olahan Ayam', 'daging potong', NULL, '40000', 63),
(64, 'Ayam Pedaging', NULL, NULL, '280000', 64),
(65, 'Ayam Potong', 'daging potong', NULL, '290000', 65),
(66, 'ayam potong', 'daging potong', NULL, '250000', 66),
(67, 'Potongan Ayam', 'daging potong', NULL, '160000', 67),
(68, 'Mata Ayam', 'daging potong', NULL, '280000', 68),
(69, 'Mata Ayam', 'daging potong', NULL, '200000', 69),
(70, 'Ayam Beku', 'daging potong', NULL, '140000', 70),
(71, 'Pakan Ternak Ayam', 'pakan', NULL, '60000', 71),
(72, 'Sosis Ayam', 'siap jadi', '300', '270000', 72),
(73, 'Ayam Potong', 'daging potong', NULL, '140000', 73),
(74, 'Ayam Potong', 'daging potong', NULL, '300000', 74),
(75, 'Ayam Beku', 'daging potong', NULL, '240000', 75),
(76, 'Ayam Fillet', 'masakan', NULL, '290000', 76),
(77, 'Ayam Potong', 'daging potong', NULL, '60000', 77),
(78, 'Ayam Potong', 'daging potong', NULL, '230000', 78),
(79, 'Daging Ayam', 'daging potong', NULL, '220000', 79),
(80, 'Pemotongan Ayam', 'jasa', NULL, '300000', 80),
(81, 'daging Ayam', 'daging potong', NULL, '60000', 81),
(82, 'Bibit Ayam', NULL, NULL, '60000', 82),
(83, 'Daging Ayam', 'daging potong', NULL, '280000', 83),
(84, 'Daging Ayam', 'daging potong', NULL, '50000', 84),
(85, 'Pakan Ayam', 'pakan', NULL, '220000', 85),
(86, 'Tepung Bulu Ayam', 'siap jadi', NULL, '290000', 86),
(87, 'Filet ayam', 'masakan', NULL, '190000', 87),
(88, 'Filet Ayam', 'masakan', NULL, '130000', 88),
(89, 'Abon Ayam', 'siap jadi', NULL, '90000', 89),
(90, 'Daging Ayam', 'daging potong', NULL, '230000', 90),
(91, 'Pemotongan Ayam', 'jasa', NULL, '150000', 91),
(92, 'Daging Ayam', 'daging potong', NULL, '270000', 92),
(93, 'Ayam Potong', 'daging potong', NULL, '180000', 93),
(94, 'Daging Ayam', 'daging potong', NULL, '240000', 94),
(95, 'Ayam Potong', 'daging potong', NULL, '280000', 95),
(96, 'Tempat Telur Ayam', NULL, NULL, '120000', 96),
(97, 'Daging Ayam', 'daging potong', NULL, '120000', 97),
(98, 'Ayam Potong', 'daging potong', NULL, '120000', 98),
(99, 'Ayam Potong', 'daging potong', NULL, '270000', 99),
(100, 'Ayam Potong', 'daging potong', NULL, '80000', 100),
(101, 'Ikan Kering', 'masakan', NULL, '90000', 101),
(102, 'Pembekuan Ikan', 'jasa', NULL, '230000', 102),
(103, 'Pengeringan Ikan', 'jasa', NULL, '170000', 103),
(104, 'Ikan Trasak Kering', 'masakan', NULL, '260000', 104),
(105, 'Ikan Bandeng Beku', 'masakan', NULL, '60000', 105),
(106, 'Ikan Segar', 'daging potong', NULL, '170000', 106),
(107, 'Ikan Beku', 'masakan', NULL, '170000', 107),
(108, 'Fillet Ikan', 'daging potong', NULL, '220000', 108),
(109, 'Krupuk Dari Tepung Rasa Ikan', 'siap jadi', '1000', '40000', 109),
(110, 'Ikan Beku', 'daging potong', NULL, '240000', 110),
(111, 'Ikan Beku', 'daging potong', NULL, '120000', 111),
(112, 'Ikan', 'daging potong', NULL, '130000', 112),
(113, 'Ikang Kaleng', 'daging potong', NULL, '260000', 113),
(114, 'Pengawetan Ikan', 'Jasa', NULL, '300000', 114),
(115, 'Pengaweta ikan', 'jasa', NULL, '80000', 115),
(116, 'Pengawetan ikan', 'jasa', NULL, '70000', 116),
(117, 'pengawetan ikan', 'jasa', NULL, '50000', 117),
(118, 'Ikan Pindang', 'daging potong', NULL, '210000', 118),
(119, 'Bakso Ikan, Siomay', 'masakan', '300', '230000', 119),
(120, 'Pembekuan Ikan', 'daging potong', NULL, '120000', 120),
(121, 'Tepung Ikan', 'siap jadi', NULL, '220000', 121),
(122, 'Kerupuk Ikan', 'siap jadi', NULL, '30000', 122),
(123, 'Gesek/ikan Filet', 'masakan', NULL, '200000', 123),
(124, 'Pembekuan Ikan', 'jasa', NULL, '160000', 124),
(125, 'Ikan Tuna Dalam Kaleng', 'masakan', NULL, '290000', 125),
(126, 'Ikan', 'daging potong', NULL, '190000', 126),
(127, 'Ikan Beku', 'daging potong', NULL, '230000', 127),
(128, 'Ikan Pindang', 'daging potong', NULL, '250000', 128),
(129, 'Ikan Macarel', 'masakan', NULL, '140000', 129),
(130, 'Ikan Beku', 'daging potong', NULL, '140000', 130),
(131, 'Ikan Beku', 'daging potong', NULL, '290000', 131),
(132, 'Ikan Segar Beku Dan Hasil Laut Beku', 'daging potong', NULL, '180000', 132),
(133, 'Ikan Teri Dan Ikan Layang Kering', 'masakan', NULL, '250000', 133),
(134, 'Pemindangan Ikan', 'jasa', NULL, '230000', 134),
(135, 'Daging Ikan Dibekukan', 'masakan', NULL, '120000', 135),
(136, 'Ikan Beku', 'daging potong', NULL, '210000', 136),
(137, 'Telur Ikan Terbang Kering_', 'masakan', NULL, '90000', 137),
(138, 'Ikan Beku', 'masakan', NULL, '110000', 138),
(139, 'Otak-otak Ikan', 'masakan', NULL, '260000', 139),
(140, 'Daging Ikan', 'daging potong', NULL, '290000', 140),
(141, 'Ikan Pindang Layang', 'daging potong', NULL, '150000', 141),
(142, 'Ikan Beku', 'daging potong', NULL, '100000', 142),
(143, 'Ikan Beku', 'daging potong', NULL, '120000', 143),
(144, 'Filety Ikan Nila', 'daging potong', NULL, '30000', 144),
(145, 'Ikan Beku', 'daging potong', NULL, '210000', 145),
(146, 'Pembekuan Ikan', 'jasa', NULL, '110000', 146),
(147, 'Pembekuan Ikan', 'jasa', NULL, '270000', 147),
(148, 'Ikan Pelagis Segar', 'daging potong', NULL, '40000', 148),
(149, 'Ikan Pindang Layang', 'daging potong', NULL, '240000', 149),
(150, 'Pembekuan Ikan', 'jasa', NULL, '80000', 150),
(151, 'Kulit Kambing', NULL, NULL, '130000', 151),
(152, 'Kulit Domba/kambing', NULL, NULL, '70000', 152),
(153, 'Rokok Tembakau Merek Jumbo Coklat,kambing', 'masakan', NULL, '70000', 153),
(154, 'Susu Bubuk Kambing Etawa', 'siap jadi', NULL, '40000', 154),
(155, 'Kecap', 'siap jadi', '300', '80000', 155),
(156, 'Kulit Kambing Linning', NULL, NULL, '30000', 156),
(157, 'Penyamakan Kulit Sapi/kambing', 'jasa', NULL, '150000', 157),
(158, 'Kulit Sapi & Kambing/domb Fini', 'daging', NULL, '140000', 158),
(159, 'Susu Bubuk Kambing Etawa', 'siap jadi', NULL, '90000', 159),
(160, 'Susu Kambing Bubuk', 'siap jadi', NULL, '200000', 160),
(161, 'Susu Kambing Bubuk', 'siap jadi', NULL, '30000', 161);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_peternakan`
--
ALTER TABLE `tbl_peternakan`
  ADD PRIMARY KEY (`id_peternakan`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_peternakan`
--
ALTER TABLE `tbl_peternakan`
  MODIFY `id_peternakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
