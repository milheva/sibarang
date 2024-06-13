-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 13, 2024 at 11:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sibarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` varchar(6) NOT NULL,
  `n_pelapor` varchar(30) NOT NULL,
  `j_pelapor` varchar(30) NOT NULL,
  `d_pelapor` varchar(30) NOT NULL,
  `n_barang` varchar(30) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `status` text NOT NULL,
  `ket_petugas` varchar(100) NOT NULL,
  `tgl_lapor` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id`, `n_pelapor`, `j_pelapor`, `d_pelapor`, `n_barang`, `ket`, `status`, `ket_petugas`, `tgl_lapor`) VALUES
('NP0001', 'I Wayan Indra Sakti Sanjaya', 'Staff', 'IT', 'Mouse', 'Mouse tidak berfungsi', 'Selesai diproses', 'Mouse sudah berfungsi dengan baik', '2024-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(16) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `img`, `status`) VALUES
('1', 'admin', '$2y$10$/7MpUNjVyELMBteN95nLDue3ridsIWHDJYdPmoiIcRjNQ4d5r6p2e', 'admin', 'default.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
