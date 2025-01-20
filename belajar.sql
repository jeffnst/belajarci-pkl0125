-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jan 2025 pada 11.18
-- Versi server: 8.0.28
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_harga_biaya`
--

CREATE TABLE `data_harga_biaya` (
  `id` int NOT NULL,
  `jenis_biaya_id` int NOT NULL,
  `tahun_pelajaran_id` int NOT NULL,
  `harga_biaya` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `data_harga_biaya`
--

INSERT INTO `data_harga_biaya` (`id`, `jenis_biaya_id`, `tahun_pelajaran_id`, `harga_biaya`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 200000, '2025-01-16 11:26:16', '2025-01-16 11:26:16', 0),
(2, 2, 2, 250000, '2025-01-16 11:27:04', '2025-01-16 11:56:46', 1737003532),
(3, 3, 1, 210000, '2025-01-16 12:23:32', '2025-01-16 12:23:32', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_jenis_biaya`
--

CREATE TABLE `data_jenis_biaya` (
  `id` int NOT NULL,
  `nama_jenis_biaya` varchar(100) NOT NULL,
  `status_jenis_biaya` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `data_jenis_biaya`
--

INSERT INTO `data_jenis_biaya` (`id`, `nama_jenis_biaya`, `status_jenis_biaya`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'pendaftaran', 1, '0000-00-00 00:00:00', '2025-01-16 10:54:39', 0),
(2, 'SPP', 1, '2025-01-16 10:56:30', '2025-01-16 10:56:30', 0),
(3, 'Seragam', 1, '2025-01-16 11:00:38', '2025-01-16 11:00:38', 0),
(4, 'Makan', 1, '2025-01-16 11:03:15', '2025-01-16 11:05:27', 0),
(6, 'Pembangunan', 1, '2025-01-16 12:08:07', '2025-01-16 12:08:07', 0),
(7, 'Kegiatan', 1, '2025-01-16 12:22:47', '2025-01-16 12:22:47', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_jurusan`
--

CREATE TABLE `data_jurusan` (
  `id` int NOT NULL,
  `id_tahun_pelajaran` int NOT NULL,
  `nama_jurusan` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `data_jurusan`
--

INSERT INTO `data_jurusan` (`id`, `id_tahun_pelajaran`, `nama_jurusan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 1, 'RPL', '2025-01-14 13:20:31', '2025-01-14 13:20:31', 0),
(5, 1, 'TKJ', '2025-01-14 13:21:18', '2025-01-14 13:21:18', 0),
(6, 2, 'RPL', '2025-01-14 13:21:42', '2025-01-14 13:21:42', 0),
(7, 2, 'TKJ', '2025-01-14 13:38:24', '2025-01-14 13:38:24', 0),
(8, 1, 'DKV', '2025-01-14 13:50:49', '2025-01-14 13:50:49', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kelas`
--

CREATE TABLE `data_kelas` (
  `id` int NOT NULL,
  `id_jurusan` int NOT NULL,
  `nama_kelas` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `data_kelas`
--

INSERT INTO `data_kelas` (`id`, `id_jurusan`, `nama_kelas`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, '10 RPL', '2025-01-14 14:10:17', '2025-01-14 14:10:17', 0),
(2, 4, '11 RPL', '2025-01-14 14:11:22', '2025-01-14 14:11:22', 0),
(3, 6, '10 RPL', '2025-01-14 14:11:53', '2025-01-14 14:11:53', 0),
(4, 7, '10 TKJ', '2025-01-14 14:31:28', '2025-01-14 14:31:28', 1736839958);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_stok_seragam`
--

CREATE TABLE `data_stok_seragam` (
  `id` int NOT NULL,
  `jenis_seragam_id` int NOT NULL,
  `ukuran_seragam` varchar(10) NOT NULL,
  `stok_seragam` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `upadated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `data_stok_seragam`
--

INSERT INTO `data_stok_seragam` (`id`, `jenis_seragam_id`, `ukuran_seragam`, `stok_seragam`, `created_at`, `upadated_at`, `deleted_at`) VALUES
(1, 2, 'S', 10, '2025-01-17 15:50:46', '2025-01-17 15:50:46', 0),
(2, 3, 'M', 20, '2025-01-17 15:53:13', '2025-01-17 15:53:13', 1737104013),
(3, 3, 'XL', 15, '2025-01-17 15:53:46', '2025-01-17 15:53:46', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_tahun_pelajaran`
--

CREATE TABLE `data_tahun_pelajaran` (
  `id` int NOT NULL,
  `nama_tahun_pelajaran` varchar(50) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `status_tahun_pelajaran` varchar(50) NOT NULL COMMENT 'ppdb, berjalan',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `data_tahun_pelajaran`
--

INSERT INTO `data_tahun_pelajaran` (`id`, `nama_tahun_pelajaran`, `tanggal_mulai`, `tanggal_akhir`, `status_tahun_pelajaran`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2025-2026', '2025-01-01', '2026-01-01', '1', '2025-01-14 11:55:27', '2025-01-14 11:55:27', 0),
(2, '2026-2027', '2025-01-15', '2025-01-15', '1', '0000-00-00 00:00:00', '2025-01-14 08:14:46', 0),
(7, '2024-2025', '2025-01-14', '2025-01-14', '1', '2025-01-14 13:37:13', '2025-01-14 13:37:13', 0),
(8, '2026-2028', '0000-00-00', '0000-00-00', '1', '2025-01-14 13:37:36', '2025-01-14 13:37:36', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_seragam`
--

CREATE TABLE `jenis_seragam` (
  `id` int NOT NULL,
  `nama_jenis_seragam` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jenis_seragam`
--

INSERT INTO `jenis_seragam` (`id`, `nama_jenis_seragam`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Batiks', '2025-01-17 15:26:42', '2025-01-17 15:26:42', 1737102724),
(2, 'Olahraga', '2025-01-17 23:22:50', '2025-01-17 23:22:50', 0),
(3, 'Batik', '2025-01-17 15:32:12', '2025-01-17 15:32:12', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `updated_at`) VALUES
(5, 'user21', '12345', '2025-01-09 16:38:03'),
(15, 'user12', '1234', '2025-01-13 10:12:27'),
(20, 'aab', '11', '2025-01-13 10:29:05'),
(22, '12', '12', '2025-01-13 10:58:57'),
(24, 'qq', 'ww', '2025-01-13 11:05:00'),
(25, 'zz', 'zz', '2025-01-13 11:14:10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_harga_biaya`
--
ALTER TABLE `data_harga_biaya`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_jenis_biaya`
--
ALTER TABLE `data_jenis_biaya`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_jurusan`
--
ALTER TABLE `data_jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_kelas`
--
ALTER TABLE `data_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_stok_seragam`
--
ALTER TABLE `data_stok_seragam`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_tahun_pelajaran`
--
ALTER TABLE `data_tahun_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis_seragam`
--
ALTER TABLE `jenis_seragam`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_harga_biaya`
--
ALTER TABLE `data_harga_biaya`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `data_jenis_biaya`
--
ALTER TABLE `data_jenis_biaya`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `data_jurusan`
--
ALTER TABLE `data_jurusan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `data_kelas`
--
ALTER TABLE `data_kelas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `data_stok_seragam`
--
ALTER TABLE `data_stok_seragam`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `data_tahun_pelajaran`
--
ALTER TABLE `data_tahun_pelajaran`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `jenis_seragam`
--
ALTER TABLE `jenis_seragam`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
