-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Agu 2023 pada 02.58
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pakar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `no` int(5) NOT NULL,
  `kodegejala` varchar(5) NOT NULL,
  `namagejala` varchar(35) NOT NULL,
  `nilai` float NOT NULL,
  `kodepenyakit` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`no`, `kodegejala`, `namagejala`, `nilai`, `kodepenyakit`) VALUES
(1, 'G01', 'Lubang telinga sangat kotor', 1, 'P02'),
(2, 'G02', 'Menggaruk-garuk telinga', 0.6, 'P01'),
(3, 'G03', 'Menggoyang-goyangkan kepala', 0.6, 'P01'),
(4, 'G04', 'Bau busuk pada telinga', 0.83, 'P02'),
(5, 'G05', 'Nyeri disekitaran telinga', 1, 'P01'),
(6, 'G06', 'Mengalami Stress/Sensitive', 0.4, 'P01'),
(7, 'G07', 'Pembengkakan pada liang telinga', 0.75, 'P03'),
(8, 'G08', 'Adanya kutu telinga', 0.75, 'P03'),
(9, 'G09', 'Kelembaban', 1, 'P02'),
(10, 'G10', 'Rasa gatal pada telinga', 0.83, 'P02'),
(11, 'G11', 'Tumbuh rambut berlebih pada telinga', 0.5, 'P02'),
(12, 'G12', 'Iritasi', 1, 'P02'),
(13, 'G13', 'Bernanah', 0.5, 'P03'),
(14, 'G14', 'Trauma', 1, 'P03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_diagnosa`
--

CREATE TABLE `laporan_diagnosa` (
  `id_laporan` int(5) NOT NULL,
  `tgl_diagnosa` date NOT NULL,
  `nama` varchar(50) NOT NULL,
  `penyakit` varchar(50) NOT NULL,
  `nilai_bayes` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laporan_diagnosa`
--

INSERT INTO `laporan_diagnosa` (`id_laporan`, `tgl_diagnosa`, `nama`, `penyakit`, `nilai_bayes`) VALUES
(48, '2023-08-10', '', 'Otitis Interna', '80.4'),
(49, '2023-08-10', '', 'Otitis Interna', '85.77'),
(50, '2023-08-10', '', 'Otitis Interna', '100'),
(51, '2023-08-10', '', 'Otitis Interna', '100'),
(52, '2023-08-10', '', 'Otitis Interna', '87.58'),
(53, '2023-08-10', '', 'Otitis Interna', '83.92'),
(54, '2023-08-10', '', 'Otitis Interna', '83.92'),
(55, '2023-08-10', '', 'Otitis Interna', '100'),
(56, '2023-08-10', '', 'Otitis Interna', '100'),
(57, '2023-08-10', '', 'Otitis Interna', '87.58'),
(58, '2023-08-10', '', 'Otitis Interna', '90.5'),
(59, '2023-08-10', '', 'Otitis Interna', '100'),
(60, '2023-08-10', '', 'Otitis Interna', '100'),
(61, '2023-08-10', '', 'Otitis Interna', '100'),
(62, '2023-08-10', '', 'Otitis Interna', '100'),
(63, '2023-08-10', 'fgdsfgs', 'Otitis Interna', '87.58'),
(64, '2023-08-10', '', 'Otitis Interna', '91.43'),
(65, '2023-08-10', '', 'Otitis Eksterna', '75'),
(66, '2023-08-10', '', 'Otitis Interna', '86.39'),
(67, '2023-08-10', '', 'Otitis Interna', '87.58'),
(68, '2023-08-10', '', 'Auricular Hematoma', '70'),
(69, '2023-08-10', '', 'Otitis Interna', '86.39'),
(70, '2023-08-10', '', 'Otitis Interna', '85.77'),
(71, '2023-08-10', '', 'Otitis Eksterna', '82'),
(72, '2023-08-10', 'hjghjgkj', 'Otitis Eksterna', '75'),
(73, '2023-08-10', '', 'Otitis Interna', '87.58'),
(74, '2023-08-10', '', 'Otitis Interna', '68.89'),
(75, '2023-08-10', '', 'Otitis Interna', '86.39'),
(76, '2023-08-10', '', 'Otitis Eksterna', '82'),
(77, '2023-08-10', '', 'Otitis Interna', '86.39'),
(78, '2023-08-10', '', 'Otitis Interna', '91.43'),
(79, '2023-08-10', '', 'Otitis Interna', '91.43'),
(80, '2023-08-10', '', 'Otitis Interna', '91.43'),
(81, '2023-08-10', '', 'Otitis Interna', '91.43'),
(82, '2023-08-10', 'franc', 'Otitis Interna', '87.58'),
(83, '2023-08-10', 'franc', 'Otitis Interna', '87.58'),
(84, '2023-08-10', 'franc', 'Otitis Interna', '87.58'),
(85, '2023-08-10', 'franc', 'Otitis Interna', '87.58'),
(86, '2023-08-10', 'franc', 'Otitis Interna', '87.58'),
(87, '2023-08-10', 'franc', 'Otitis Interna', '87.58'),
(88, '2023-08-10', 'fsdra', 'Otitis Interna', '87.58'),
(89, '2023-08-10', 'Franciskus', 'Otitis Interna', '87.58'),
(90, '2023-08-13', 'Franc', 'Otitis Interna', '84.39'),
(91, '2023-08-13', 'Franc', 'Otitis Interna', '84.39'),
(92, '2023-08-13', 'Franc', 'Otitis Interna', '84.39'),
(93, '2023-08-17', '', 'Otitis Interna', '74.8'),
(94, '2023-08-17', '', 'Otitis Interna', '84.56'),
(95, '2023-08-17', '', 'Otitis Interna', '84.56'),
(96, '2023-08-17', 'franc', 'Otitis Interna', '84.56'),
(97, '2023-08-18', 'Franciskus Nadeak', 'Otitis Interna', '84.56'),
(98, '2023-08-19', 'geby', 'Otitis Interna', '79.86'),
(99, '2023-08-19', 'dfhjdhfsjkdfhsjkdhfs', 'Otitis Interna', '84.56'),
(100, '2023-08-19', '', '', '0'),
(101, '2023-08-19', '', 'Otitis Interna', '100'),
(102, '2023-08-19', '', 'Otitis Interna', '68.06'),
(103, '2023-08-19', '', 'Otitis Interna', '86.39'),
(104, '2023-08-19', '', 'Auricular Hematoma', '56.25'),
(105, '2023-08-19', '', 'Otitis Eksterna', '36'),
(106, '2023-08-19', '', '', '0'),
(107, '2023-08-19', '', 'Otitis Interna', '86.39'),
(108, '2023-08-19', '', 'Otitis Interna', '84.56'),
(109, '2023-08-19', 'geb', 'Otitis Interna', '84.56'),
(110, '2023-08-19', 'Franc', 'Otitis Interna', '81.84'),
(111, '2023-08-19', 'Franc', 'Otitis Interna', '81.84'),
(112, '2023-08-19', 'Franc', 'Otitis Interna', '81.84'),
(113, '2023-08-20', 'franc', 'Otitis Interna', '91.43'),
(114, '2023-08-20', 'franc', 'Otitis Interna', '91.43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `no` int(5) NOT NULL,
  `kodepenyakit` varchar(5) NOT NULL,
  `namapenyakit` varchar(20) NOT NULL,
  `pengobatan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`no`, `kodepenyakit`, `namapenyakit`, `pengobatan`) VALUES
(1, 'P01', 'Otitis Eksterna', 'Memberikan antibiotik, Membersihkan telinga dengan cairan antiseptic secara perlahan dan Membersihkan daerah sekitar lingkungan dengan desinfektan.'),
(2, 'P02', 'Otitis Interna', 'Membersihkan kotoran telinga secara rutin setiap minggunya sehingga telinga terhindar dari iritasi, infeksi dan suasana lembab.'),
(3, 'P03', 'Auricular Hematoma', 'Melakukan pembedahan atau operasi untuk mengeluarkan akumulasi darah secara tuntas  sehinggah mencegah auralhematoma terbentuk kembali, dan menjaga pola makan yang teratur dan pembersihan lingkungan.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_login`
--

CREATE TABLE `tabel_login` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_login`
--

INSERT INTO `tabel_login` (`id`, `nama`, `username`, `password`, `level`) VALUES
(5, 'Franc', 'admin', '202cb962ac59075b964b07152d234b70', 'admin'),
(6, 'franc', 'pengunjung', '202cb962ac59075b964b07152d234b70', 'pengunjung');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `laporan_diagnosa`
--
ALTER TABLE `laporan_diagnosa`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `tabel_login`
--
ALTER TABLE `tabel_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `laporan_diagnosa`
--
ALTER TABLE `laporan_diagnosa`
  MODIFY `id_laporan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tabel_login`
--
ALTER TABLE `tabel_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
