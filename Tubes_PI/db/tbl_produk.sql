-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Bulan Mei 2023 pada 15.54
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

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
-- Struktur dari tabel `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `jenis_produk` varchar(100) DEFAULT NULL,
  `berat_produk_gr` varchar(100) DEFAULT NULL,
  `harga_produk` varchar(100) NOT NULL,
  `id_peternakan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_produk`
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
-- Indeks untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
