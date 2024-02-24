-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2024 at 07:04 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuyabsen`
--

-- --------------------------------------------------------

--
-- Table structure for table `gedung`
--

CREATE TABLE `gedung` (
  `gedung_id` int(11) NOT NULL,
  `nama_gedung` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gedung`
--

INSERT INTO `gedung` (`gedung_id`, `nama_gedung`, `alamat`) VALUES
(14, 'X RPL', '(10) REKAYASA PERANGKAT LUNAK'),
(15, 'XI RPL', '(11) REKAYASA PERANGKAT LUNAK'),
(16, 'XII RPL', '(12) REKAYASA PERANGKAT LUNAK'),
(17, 'X MP', '(10) MANAGEMENT PERKANTORAN'),
(18, 'XI MP 1', '(11) MANAGEMENT PERKANTORAN\'2\''),
(19, 'XI MP 2', '(11) MANAGEMENT PERKANTORAN\'1\''),
(20, 'XII MP', '(12) MANAGEMENT PERKANTORAN'),
(21, 'X AK', '(10) AKUNTANSI'),
(22, 'XI AK', '(11) AKUNTANSI'),
(23, 'XII AK', '(12) AKUNTANSI'),
(24, 'X BD', '(10) BISNIS DARING'),
(25, 'XI BD', '(11) BISNIS DARING'),
(26, 'XII BD', '(12) BISNIS DARING');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(3, 'operator', 'operator'),
(4, 'scan', 'scanner');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(5, 'PEREMPUAN'),
(6, 'LAKI LAKI');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `id_karyawan` varchar(20) NOT NULL,
  `nama_karyawan` varchar(30) NOT NULL,
  `jabatan` int(11) NOT NULL,
  `id_shift` int(20) NOT NULL,
  `gedung_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `id_karyawan`, `nama_karyawan`, `jabatan`, `id_shift`, `gedung_id`) VALUES
(137, 'L2311001', 'ARIEF RACHMAN', 6, 12, 15),
(138, 'P2311137', 'BILQIS PUTRI DELENA', 5, 12, 15),
(139, 'P2311138', 'DINDA AYU APRILYANI', 5, 12, 15),
(140, 'L2311139', 'FADHIL ANWAR RIZKY', 6, 12, 15),
(141, 'L2311140', 'FERIYANSYAH', 6, 12, 15),
(142, 'L2311141', 'FICKRY ASKA HIDAYAT', 6, 12, 15),
(144, 'L2311143', 'HAFIZH RAHMAN IBRAHIM', 6, 12, 15),
(145, 'L2311144', 'HILMI HIDAYATULLAH', 6, 12, 15),
(146, 'L2311145', 'PANDU PRASETYO', 6, 12, 15),
(147, 'L2311146', 'KEVIN ANANDIPA', 6, 12, 15),
(148, 'L2311147', 'MUHAMAD ALWI NURRAHMAN', 6, 12, 15),
(149, 'L2311148', 'MUHAMAD FAHRAEL FADHILA TAMAM', 6, 12, 15),
(150, 'L2311149', 'MUHAMAD FATHUR RIDHO', 6, 12, 15),
(151, 'L2311150', 'MUHAMAD HAVIS ZAKARYA', 6, 12, 15),
(152, 'L2311151', 'MUHAMAD RAIHAN AMIN', 6, 12, 15),
(153, 'L2311152', 'MUHAMMAD RIDWAN', 6, 12, 15),
(154, 'L2311153', 'MUHAMMMAD RAFI AKBAR FADILAH', 6, 12, 15),
(155, 'P2311154', 'JEZY CAHYA MUSTIKA', 5, 12, 15),
(156, 'L2311155', 'RADITYA KUSUMA', 6, 12, 15),
(157, 'P2311156', 'RAHMA SASKIA HASIBUAN', 5, 12, 15),
(158, 'L2311157', 'RHASYA ANDRIYAS', 6, 12, 15),
(159, 'L2311158', 'RIZALDI ARIEF', 6, 12, 15),
(160, 'P2311159', 'SITI NURAENI', 5, 12, 15),
(161, 'P2311160', 'SITI NURMALA GUNAWAN', 5, 12, 15),
(162, 'P2311161', 'SYIFA AZZAHRA', 5, 12, 15),
(163, 'L2311162', 'YOGA HENDRAWAN', 6, 12, 15),
(164, 'L2311163', 'ZACKY PRIMANANDA', 6, 12, 15),
(165, 'L2311164', 'IRVAN JULIUS PANJAITAN', 6, 12, 15),
(166, 'L2311165', 'JOSE MARIO SCHNAYGER KERAMATA', 6, 12, 15),
(167, 'B2402166', 'Bencong', 7, 12, 14),
(168, 'L2402167', 'Herman', 6, 12, 15);

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id_khd` int(11) NOT NULL,
  `nama_khd` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kehadiran`
--

INSERT INTO `kehadiran` (`id_khd`, `nama_khd`) VALUES
(1, 'Hadir'),
(2, 'Sakit'),
(3, 'Ijin'),
(4, 'Alpha'),
(5, 'Lepas/Off');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `protected` tinyint(4) DEFAULT NULL,
  `is_active` int(1) NOT NULL,
  `is_parent` int(1) UNSIGNED NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `link`, `icon`, `protected`, `is_active`, `is_parent`, `sort`) VALUES
(15, 'menu management', 'menu', 'fa fa-list-alt', NULL, 1, 42, 14),
(16, 'master data', 'sdf', 'fa fa-folder', NULL, 1, 0, 1),
(18, 'Data Siswa/i', 'karyawan', 'fas fa-user-circle', NULL, 1, 16, 2),
(19, 'Gender', 'jabatan', 'fas fa-venus-mars', NULL, 1, 16, 3),
(21, 'Jurusan', 'shift', 'fas fa-suitcase', NULL, 1, 16, 4),
(22, 'Kelas', 'lokasi', 'fas fa-door-open', NULL, 1, 16, 5),
(31, 'Ambil QR Code', 'GenBar', 'fa fa-qrcode', NULL, 1, 0, 6),
(33, 'Scan QRCODE', 'scan', 'fa fa-search-plus', NULL, 1, 0, 7),
(35, 'User management', 'users', 'fa fa-users', NULL, 1, 42, 13),
(36, 'Histori Absensi', 'presensi', 'fa fa-paperclip', NULL, 1, 41, 9),
(39, 'Rekap Absensi', 'rekap', 'fa fa-list-alt', NULL, 1, 41, 10),
(41, 'Data Absensi', 'dataabs', 'far fa-folder-open', NULL, 1, 0, 8),
(42, 'setting', 'setting', 'fas fa-cogs', NULL, 1, 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `id_absen` int(11) NOT NULL,
  `id_karyawan` varchar(20) NOT NULL,
  `tgl` date NOT NULL,
  `jam_msk` time NOT NULL,
  `jam_klr` time NOT NULL,
  `id_khd` int(11) DEFAULT NULL,
  `ket` varchar(150) NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presensi`
--

INSERT INTO `presensi` (`id_absen`, `id_karyawan`, `tgl`, `jam_msk`, `jam_klr`, `id_khd`, `ket`, `id_status`) VALUES
(64, 'S2008001', '2020-08-02', '12:52:43', '12:52:46', 1, '', 2),
(76, 'L2311139', '2023-11-25', '09:40:58', '09:40:59', 1, '', 2),
(77, 'L2311149', '2023-12-09', '07:44:26', '00:00:00', 1, '', 2),
(78, 'L2311143', '2023-12-09', '08:03:21', '00:00:00', 1, '', 1),
(79, 'L2311157', '2023-12-09', '11:39:40', '00:00:00', 1, '', 1),
(80, 'L2311165', '2023-12-23', '09:12:29', '09:12:29', 1, '', 2),
(81, 'L2311162', '2023-12-23', '09:13:43', '09:13:43', 1, '', 2),
(82, 'P2311161', '2023-12-23', '09:15:37', '09:15:37', 1, '', 2),
(83, 'P2311160', '2023-12-23', '09:15:46', '09:15:46', 1, '', 2),
(84, 'L2311163', '2023-12-23', '09:20:30', '09:20:30', 1, '', 2),
(85, 'L2311157', '2023-12-23', '09:20:43', '09:20:43', 1, '', 2),
(86, 'L2311158', '2023-12-23', '09:20:52', '00:00:00', 1, '', 1),
(87, 'P2311156', '2023-12-23', '09:21:08', '09:21:08', 1, '', 2),
(88, 'L2311155', '2023-12-23', '09:21:24', '10:34:33', 1, '', 2),
(89, 'P2311154', '2023-12-23', '09:21:31', '09:21:31', 1, '', 2),
(90, 'L2311153', '2023-12-23', '09:21:58', '09:21:58', 1, '', 2),
(91, 'L2311144', '2023-12-23', '09:31:54', '09:31:55', 1, '', 2),
(92, 'L2311145', '2023-12-23', '09:32:03', '00:00:00', 1, '', 1),
(93, 'L2311146', '2023-12-23', '09:32:43', '00:00:00', 1, '', 1),
(94, 'L2311001', '2023-12-23', '10:34:50', '10:34:51', 1, '', 2),
(95, 'P2311137', '2023-12-23', '10:36:29', '10:36:29', 1, '', 2),
(96, 'P2311138', '2023-12-23', '10:36:37', '11:04:36', 1, '', 2),
(97, 'L2311139', '2024-02-17', '06:03:42', '00:00:00', 1, '', 1),
(98, 'P2311161', '2024-02-21', '11:39:43', '11:39:54', 1, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `id_shift` int(11) NOT NULL,
  `nama_shift` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`id_shift`, `nama_shift`) VALUES
(10, 'MANAGEMENT PERKANTOR'),
(11, 'BISNIS DARING'),
(12, 'REKAYASA PERANGKAT'),
(13, 'AKUNTANSI');

-- --------------------------------------------------------

--
-- Table structure for table `stts`
--

CREATE TABLE `stts` (
  `id_status` int(11) NOT NULL,
  `nama_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stts`
--

INSERT INTO `stts` (`id_status`, `nama_status`) VALUES
(1, 'Masuk'),
(2, 'Pulang'),
(3, 'tidak hadir');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(26, '::1', 'admin@admin.com', '$2y$12$MPcQlOck9fzd/5UjJ6iIXuhZivhkXdfoVD2xFXpZTnZ2IWQw/nFhW', 'admin@admin.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1556798313, 1708751690, 1, 'Admin ', 'core', NULL, '123412341234'),
(49, '::1', 'hafizh@hafizh.com', '$2y$10$N7PoDb4R1v74p2ja2yz2Xek3WX15AYkMgjiDgoglzMv.CeRc9KTMu', 'hafizh@hafizh.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1702090635, 1702095254, 1, 'Hafizh', 'Rahman', 'Guru', '081234567890'),
(52, '::1', 'penguji@gmail.com', '$2y$10$0svs2Yi5z6crLMW.jx0Zfu59ilrGuJoxiwfaALgkZXzuz1rJwYuW2', 'penguji@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1708752318, 1708752344, 1, 'penguji', 'ujian', 'Guru', '081234567890');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(29, 26, 1),
(52, 49, 3),
(54, 52, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gedung`
--
ALTER TABLE `gedung`
  ADD PRIMARY KEY (`gedung_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id_khd`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id_shift`);

--
-- Indexes for table `stts`
--
ALTER TABLE `stts`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gedung`
--
ALTER TABLE `gedung`
  MODIFY `gedung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id_khd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `id_shift` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `stts`
--
ALTER TABLE `stts`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
