-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jan 2025 pada 14.33
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
-- Indeks untuk tabel `data_tahun_pelajaran`
--
ALTER TABLE `data_tahun_pelajaran`
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
-- AUTO_INCREMENT untuk tabel `data_tahun_pelajaran`
--
ALTER TABLE `data_tahun_pelajaran`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
