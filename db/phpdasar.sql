-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2022 pada 17.24
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpdasar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `npm` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tmpt_Lahir` varchar(50) NOT NULL,
  `tgl_Lahir` date NOT NULL,
  `jekel` enum('Laki - Laki','Perempuan') NOT NULL,
  `fakultas` enum('Teknik','Hukum','Pertanian','Kedokteran','Ekonomi dan Bisnis','Ilmu Sosial dan Ilmu Politik','Keguruan dan Ilmu Pendidikan','Matematika dan Ilmu Pengetahuan Alam') NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`npm`, `nama`, `tmpt_Lahir`, `tgl_Lahir`, `jekel`, `fakultas`, `prodi`, `email`, `gambar`, `alamat`) VALUES
('2001051012', 'Joya Oktavia', 'Punggur', '2001-10-14', 'Perempuan', 'Ilmu Sosial dan Ilmu Politik', 'Ilmu Komunikasi', 'joya@gmail.com', '62acb1180939c.png', 'Punggur'),
('2007051015', 'Dyandra Ayu', 'Bogor', '2002-12-16', 'Perempuan', 'Ekonomi dan Bisnis', 'Akuntansi', 'dyandra@gmail.com', '62acafd1652c2.jpeg', 'Bogor'),
('2017051001', 'Ervan Chodry', 'Metro', '1990-01-16', 'Laki - Laki', 'Ilmu Sosial dan Ilmu Politik', 'Administrasi Bisnis', 'ervan@gmail.com', '62acae66bdc5a.jpg', 'Jatimulyo'),
('2017051003', 'Ananda Cindy', 'Kotabumi', '2003-05-12', 'Perempuan', 'Matematika dan Ilmu Pengetahuan Alam', 'Matematika', 'cindy@gmail.com', '62acaf4d1825c.png', 'Kotabumi'),
('2017051023', 'Muhammad Hanif Pratama', 'Jakarta', '2001-05-20', 'Laki - Laki', 'Teknik', 'Teknik Sipil', 'mhanif@gmail.com', '62acb014520d3.jpeg', 'Bandar Lampung'),
('2017051030', 'Yogi Andaru', 'Metro', '2001-05-30', 'Laki - Laki', 'Hukum', 'Ilmu Hukum', 'yogi@gmail.com', '62acb085220cc.png', 'Metro Pusat'),
('2057051002', 'Muhammad Hanif', 'Bandar Lampung', '2002-10-12', 'Laki - Laki', 'Matematika dan Ilmu Pengetahuan Alam', 'Ilmu Komputer', 'hanif@gmail.com', '62acaee78e5fc.png', 'Kemiling'),
('2057051012', 'Sintia', 'jakarta', '1995-01-17', 'Perempuan', 'Kedokteran', 'Pendidikan Dokter', 'sintia@gmail.com', '62acaa7e54916.jpg', 'Jakarta Pusat'),
('2057051015', 'Wahyu Eka Saputra', 'serpong', '1980-01-01', 'Laki - Laki', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Bahasa Inggris', 'persadanya@gmail.com', '62aca9c315a6b.jpg', 'Buntang'),
('2057051016', 'Putu Putra', 'Metro', '2001-10-16', 'Laki - Laki', 'Pertanian', 'Agribisnis', 'putupersada@gmail.com', '62ac9ba7c4ea1.jpg', 'Rama Dewa 2'),
('2057051049', 'Bagus Tito', 'Metro', '2002-12-12', 'Laki - Laki', 'Matematika dan Ilmu Pengetahuan Alam', 'Matematika', 'bagus@gmail.com', '62acc0231ba79.png', 'Langkapura'),
('2057051099', 'Adiwijaya', 'Majalengka', '2003-05-20', 'Laki - Laki', 'Pertanian', 'Peternakan', 'adiwijaya@gmail.com', '62acb20f2850c.jpg', 'Bandar Lampung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`npm`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
