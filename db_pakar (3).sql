-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Agu 2023 pada 01.30
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
-- Struktur dari tabel `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `kode_gejala` varchar(5) NOT NULL,
  `nama_gejala` varchar(35) NOT NULL,
  `kode_penyakit` varchar(5) NOT NULL,
  `nama_penyakit` varchar(20) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(10, 'G10', 'Rasa gatal pada telinga', 1, 'P02'),
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
(143, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(144, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(145, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(146, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(147, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(148, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(149, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(150, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(151, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(152, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(153, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(154, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(155, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(156, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(157, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(158, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(159, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(160, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(161, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(162, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(163, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(164, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(165, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(166, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(167, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(168, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(169, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(170, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(171, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(172, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(173, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(174, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(175, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(176, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(177, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(178, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(179, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(180, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(181, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(182, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(183, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(184, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(185, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(186, '2023-08-24', 'Franc', 'Otitis Interna', '81.84'),
(196, '2023-08-24', 'Aldi', 'Otitis Interna', '91.43'),
(197, '2023-08-24', '', 'Otitis Interna', '91.43'),
(198, '2023-08-24', '', 'Otitis Interna', '91.43'),
(199, '2023-08-24', '', 'Otitis Interna', '91.43'),
(200, '2023-08-24', '', 'Otitis Interna', '91.43'),
(201, '2023-08-24', '', 'Otitis Interna', '91.43'),
(202, '2023-08-24', '', 'Otitis Interna', '91.43'),
(203, '2023-08-24', '', 'Otitis Interna', '91.43'),
(204, '2023-08-24', 'dsfaddadf', 'Otitis Interna', '86.39');

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
  MODIFY `id_laporan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

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
