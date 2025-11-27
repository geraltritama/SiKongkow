-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2025 at 01:15 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kongkow_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `absensi_id` int NOT NULL,
  `karyawan_id` int NOT NULL,
  `waktu_check_in` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tanggal_kerja` date NOT NULL,
  `status` enum('Hadir','Izin','Sakit','Alpha') DEFAULT 'Hadir',
  `catatan` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`absensi_id`, `karyawan_id`, `waktu_check_in`, `tanggal_kerja`, `status`, `catatan`) VALUES
(1, 5, '2025-11-19 10:38:01', '2025-11-19', 'Hadir', '-'),
(2, 5, '2025-11-19 10:42:17', '2025-11-19', 'Izin', 's'),
(3, 1, '2025-11-19 10:42:28', '2025-11-19', 'Hadir', ''),
(4, 1, '2025-11-19 10:42:40', '2025-11-19', 'Alpha', ''),
(5, 4, '2025-11-21 01:57:05', '2025-11-21', 'Sakit', 'sakit perutt omaga'),
(6, 4, '2025-11-21 02:26:18', '2025-11-21', 'Sakit', 'demam');

-- --------------------------------------------------------

--
-- Table structure for table `bahan_baku`
--

CREATE TABLE `bahan_baku` (
  `bahan_baku_id` int NOT NULL,
  `nama_bahan` varchar(100) NOT NULL,
  `stok_saat_ini` decimal(10,2) NOT NULL DEFAULT '0.00',
  `satuan` varchar(20) NOT NULL,
  `stok_minimum` decimal(10,2) DEFAULT '0.00',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bahan_baku`
--

INSERT INTO `bahan_baku` (`bahan_baku_id`, `nama_bahan`, `stok_saat_ini`, `satuan`, `stok_minimum`, `updated_at`) VALUES
(6, 'Nasi Putih', '48800.00', 'gram', '5000.00', '2025-11-27 12:31:23'),
(7, 'Mie Telor', '99.00', 'pcs', '10.00', '2025-11-27 12:31:23'),
(8, 'Kwetiau', '5000.00', 'gram', '500.00', '2025-11-19 06:37:04'),
(9, 'Spaghetti', '3000.00', 'gram', '500.00', '2025-11-19 06:37:04'),
(10, 'Roti Tawar', '50.00', 'lembar', '10.00', '2025-11-19 06:37:04'),
(11, 'Indomie Goreng', '50.00', 'bungkus', '10.00', '2025-11-19 06:37:04'),
(12, 'Indomie Soto', '50.00', 'bungkus', '10.00', '2025-11-19 06:37:04'),
(13, 'Ayam Fillet', '4100.00', 'gram', '1000.00', '2025-11-27 12:31:23'),
(14, 'Ayam Potong', '50.00', 'potong', '5.00', '2025-11-19 06:37:04'),
(15, 'Telur', '100.00', 'butir', '10.00', '2025-11-19 06:37:04'),
(16, 'Bakso Sapi', '98.00', 'butir', '20.00', '2025-11-27 12:31:23'),
(17, 'Sosis', '100.00', 'pcs', '10.00', '2025-11-19 06:37:04'),
(18, 'Naget', '50.00', 'pcs', '10.00', '2025-11-19 06:37:04'),
(19, 'Daging Cincang (Bolognese)', '1000.00', 'gram', '200.00', '2025-11-19 06:37:04'),
(20, 'Otak-otak', '50.00', 'pcs', '10.00', '2025-11-19 06:37:04'),
(21, 'Cikuwa', '50.00', 'pcs', '5.00', '2025-11-19 06:37:04'),
(22, 'Fishroll', '50.00', 'pcs', '5.00', '2025-11-19 06:37:04'),
(23, 'Shrimp Tail', '50.00', 'pcs', '5.00', '2025-11-19 06:37:04'),
(24, 'Twister', '50.00', 'pcs', '5.00', '2025-11-19 06:37:04'),
(25, 'Dumpling', '50.00', 'pcs', '5.00', '2025-11-19 06:37:04'),
(26, 'Kentang Frozen', '5000.00', 'gram', '1000.00', '2025-11-19 06:37:04'),
(27, 'Pisang', '20.00', 'buah', '5.00', '2025-11-19 06:37:04'),
(28, 'Kerupuk Seblak', '2000.00', 'gram', '500.00', '2025-11-19 06:37:04'),
(29, 'Saus Blackpepper', '1000.00', 'ml', '200.00', '2025-11-19 06:37:04'),
(30, 'Saus BBQ', '1000.00', 'ml', '200.00', '2025-11-19 06:37:04'),
(31, 'Saus Teriyaki', '880.00', 'ml', '200.00', '2025-11-27 12:31:23'),
(32, 'Keju Parut', '1000.00', 'gram', '100.00', '2025-11-19 06:37:04'),
(33, 'Coklat Meises/Selai', '1000.00', 'gram', '100.00', '2025-11-19 06:37:04'),
(34, 'Minyak Goreng', '5000.00', 'ml', '1000.00', '2025-11-19 06:37:04'),
(35, 'Nescafe Classic', '500.00', 'gram', '50.00', '2025-11-19 06:37:04'),
(36, 'Bubuk Kopi Lampung', '500.00', 'gram', '50.00', '2025-11-19 06:37:04'),
(37, 'Bubuk Kopi Sidikalang', '500.00', 'gram', '50.00', '2025-11-19 06:37:04'),
(38, 'Bubuk Kopi Aceh Gayo', '500.00', 'gram', '50.00', '2025-11-19 06:37:04'),
(39, 'Bubuk Kopi Toraja', '500.00', 'gram', '50.00', '2025-11-19 06:37:04'),
(40, 'Gula Aren Cair', '2000.00', 'ml', '200.00', '2025-11-19 06:37:04'),
(41, 'Susu UHT/Kental Manis', '5000.00', 'ml', '500.00', '2025-11-19 06:37:04'),
(42, 'Bubuk Cappucino', '1000.00', 'gram', '100.00', '2025-11-19 06:37:04'),
(43, 'Bubuk Vanilla Latte', '1000.00', 'gram', '100.00', '2025-11-19 06:37:04'),
(44, 'Buah Nanas', '10.00', 'buah', '2.00', '2025-11-19 06:37:04'),
(45, 'Buah Melon', '5.00', 'buah', '1.00', '2025-11-19 06:37:04'),
(46, 'Buah Mangga', '5000.00', 'gram', '500.00', '2025-11-19 06:37:04'),
(47, 'Buah Jeruk', '3000.00', 'gram', '500.00', '2025-11-19 06:37:04'),
(48, 'Buah Strawberry', '2000.00', 'gram', '200.00', '2025-11-19 06:37:04'),
(49, 'Buah Alpukat', '3000.00', 'gram', '500.00', '2025-11-19 06:37:04'),
(50, 'Sirup Strawberry', '1000.00', 'ml', '100.00', '2025-11-19 06:37:04'),
(51, 'Sirup Melon', '1000.00', 'ml', '100.00', '2025-11-19 06:37:04'),
(52, 'Sirup Leci', '1000.00', 'ml', '100.00', '2025-11-19 06:37:04'),
(53, 'Yakult', '50.00', 'botol', '5.00', '2025-11-19 06:37:04'),
(54, 'Sprite', '3000.00', 'ml', '500.00', '2025-11-19 06:37:04'),
(55, 'Teh Tubruk/Celup', '98.00', 'pcs', '10.00', '2025-11-21 02:29:33'),
(56, 'Jeruk Nipis/Lemon', '1000.00', 'gram', '100.00', '2025-11-19 06:37:04'),
(57, 'Bubuk Coklat Belgia', '1000.00', 'gram', '100.00', '2025-11-19 06:37:04'),
(58, 'Bubuk Coklat Oreo', '1000.00', 'gram', '100.00', '2025-11-19 06:37:04'),
(59, 'Bubuk Taro', '1000.00', 'gram', '100.00', '2025-11-19 06:37:04'),
(60, 'Bubuk Matcha', '1000.00', 'gram', '100.00', '2025-11-19 06:37:04'),
(61, 'Bubuk Red Velvet', '1000.00', 'gram', '100.00', '2025-11-19 06:37:04'),
(62, 'Bubuk Thai Tea', '1000.00', 'gram', '100.00', '2025-11-19 06:37:04'),
(63, 'Bubuk Bubblegum', '1000.00', 'gram', '100.00', '2025-11-19 06:37:04'),
(64, 'Bubuk Hazelnut', '1000.00', 'gram', '100.00', '2025-11-19 06:37:04'),
(65, 'Boba Pearl', '2000.00', 'gram', '500.00', '2025-11-19 06:37:04'),
(66, 'Brown Sugar', '1000.00', 'ml', '200.00', '2025-11-19 06:37:04'),
(67, 'Air Mineral Galon', '4.80', 'galon', '1.00', '2025-11-19 17:57:57');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembelian`
--

CREATE TABLE `detail_pembelian` (
  `detail_pembelian_id` int NOT NULL,
  `pembelian_id` int NOT NULL,
  `bahan_baku_id` int NOT NULL,
  `jumlah_dibeli` decimal(10,2) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `harga_satuan` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `detail_pesanan_id` int NOT NULL,
  `pesanan_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `jumlah` int NOT NULL DEFAULT '1',
  `harga_saat_pesan` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `catatan` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`detail_pesanan_id`, `pesanan_id`, `menu_id`, `jumlah`, `harga_saat_pesan`, `subtotal`, `catatan`) VALUES
(1, 11, 6, 1, '15000.00', '15000.00', '-'),
(2, 12, 7, 1, '15000.00', '15000.00', '-'),
(3, 13, 7, 1, '15000.00', '15000.00', '-'),
(4, 14, 7, 1, '15000.00', '15000.00', '-'),
(5, 15, 6, 1, '15000.00', '15000.00', '-'),
(6, 16, 6, 1, '15000.00', '15000.00', '-'),
(7, 17, 68, 1, '6000.00', '6000.00', '-'),
(8, 18, 6, 1, '15000.00', '15000.00', '-'),
(9, 18, 58, 1, '5000.00', '5000.00', '-'),
(10, 19, 58, 1, '5000.00', '5000.00', '-'),
(11, 19, 6, 1, '15000.00', '15000.00', '-'),
(12, 20, 6, 1, '15000.00', '15000.00', '-'),
(13, 21, 7, 1, '15000.00', '15000.00', '-'),
(14, 22, 6, 1, '15000.00', '15000.00', '-'),
(15, 22, 12, 1, '13000.00', '13000.00', '-');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `kategori` enum('Makanan Berat','Cemilan','Bakaran','Minuman') NOT NULL,
  `status` enum('Tersedia','Habis') NOT NULL DEFAULT 'Tersedia',
  `gambar_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `nama_menu`, `harga`, `kategori`, `status`, `gambar_url`, `created_at`) VALUES
(6, 'Chicken Katsu + Nasi', '15000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(7, 'Rice Bowl', '15000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(8, 'Ayam Geprek + Nasi', '18000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(9, 'Ayam Bakar + Nasi', '20000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(10, 'Bakso Kuah', '13000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(11, 'Mie Ayam Biasa', '11000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(12, 'Mie Ayam Bakso', '13000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(13, 'Nasi Goreng Biasa', '12000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(14, 'Nasi Goreng Telor', '15000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(15, 'Nasi Goreng Special', '18000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(16, 'Kwetiau Biasa', '12000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(17, 'Kwetiau Telor', '15000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(18, 'Kwetiau Special', '18000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(19, 'Seblak Biasa', '10000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(20, 'Seblak Telor', '13000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(21, 'Seblak Seafood', '18000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(22, 'Mie Tektek Biasa', '12000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(23, 'Mie Tektek Telor', '15000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(24, 'Mie Tektek Special', '18000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(25, 'Indomie Biasa', '10000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(26, 'Indomie Telor', '13000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(27, 'Nasi Putih Tambahan', '5000.00', 'Makanan Berat', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(28, 'Kentang Goreng', '18000.00', 'Cemilan', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(29, 'Mix Snack', '20000.00', 'Cemilan', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(30, 'Spaghetti Bolognese', '15000.00', 'Cemilan', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(31, 'Korean Seafood', '15000.00', 'Cemilan', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(32, 'Otak Otak Goreng', '12000.00', 'Cemilan', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(33, 'Bakso Goreng', '12000.00', 'Cemilan', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(34, 'Pisang Goreng Keju Coklat', '15000.00', 'Cemilan', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(35, 'Roti Bakar Keju Coklat', '15000.00', 'Cemilan', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(36, 'Sosis Bakar Medium', '5000.00', 'Bakaran', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(37, 'Sosis Bakar Large', '10000.00', 'Bakaran', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(38, 'Mix Grilled (5 Tusuk)', '12000.00', 'Bakaran', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(39, 'Ice/Hot Americano', '12000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(40, 'Kopi Susu Gula Aren', '12000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(41, 'Kopi Susu Strawberry', '12000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(42, 'Kopi Susu Melon', '12000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(43, 'Kopi Lampung', '11000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(44, 'Kopi Sidikalang', '13000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(45, 'Kopi Aceh Gayo', '15000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(46, 'Kopi Toraja', '15000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(47, 'Ice Cappucino', '12000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(48, 'Ice Vanilla Latte', '12000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(49, 'Jus Nanas', '15000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(50, 'Jus Melon', '15000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(51, 'Jus Mangga', '15000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(52, 'Jus Jeruk', '15000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(53, 'Jus Strawberry', '15000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(54, 'Jus Alpukat', '15000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(55, 'Yakult Leci', '15000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(56, 'Yakult Melon', '15000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(57, 'Yakult Strawberry', '15000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(58, 'Es Teh Manis', '5000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(59, 'Lemon Tea', '8000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(60, 'Es Jeruk', '8000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(61, 'Ice Blend Choco Belgia', '10000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(62, 'Ice Blend Choco Oreo', '10000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(63, 'Ice Blend Taro', '10000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(64, 'Ice Blend Matcha', '10000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(65, 'Ice Blend Thai Tea', '10000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(66, 'Boba Brown Sugar', '12000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(67, 'Boba Red Velvet', '12000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38'),
(68, 'Air Mineral', '6000.00', 'Minuman', 'Tersedia', NULL, '2025-11-19 06:43:38');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_hp` varchar(30) NOT NULL,
  `visit_count` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `nama`, `no_hp`, `visit_count`) VALUES
(3, 'Budi Santoso', '08123456789', 16),
(4, 'Raffi Ahmad', '081122334455', 20),
(5, 'Siti Aminah', '081987654321', 8),
(6, 'Dedy Corbuzier', '085712312312', 6),
(7, 'Joko Anwar', '081333444555', 1),
(8, 'Anya Geraldine', '087899988877', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `pembelian_id` int NOT NULL,
  `karyawan_id` int NOT NULL,
  `supplier_nama` varchar(100) DEFAULT NULL,
  `tanggal_pembelian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_biaya` decimal(10,2) DEFAULT NULL,
  `status` enum('Dipesan','Diterima','Dibatalkan') NOT NULL DEFAULT 'Dipesan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `pesanan_id` int NOT NULL,
  `karyawan_id` int NOT NULL,
  `pelanggan_id` int DEFAULT NULL,
  `waktu_pesanan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nomor_meja` int DEFAULT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `diskon` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_harga` decimal(10,2) NOT NULL,
  `tipe_pembayaran` enum('Tunai','Non-Tunai') DEFAULT NULL,
  `status_pesanan` enum('Pending','Diproses','Selesai','Dibatalkan') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`pesanan_id`, `karyawan_id`, `pelanggan_id`, `waktu_pesanan`, `nomor_meja`, `subtotal`, `diskon`, `total_harga`, `tipe_pembayaran`, `status_pesanan`) VALUES
(11, 4, NULL, '2025-11-19 16:44:44', NULL, '15000.00', '0.00', '15000.00', 'Tunai', 'Selesai'),
(12, 1, NULL, '2025-11-19 16:49:24', NULL, '15000.00', '0.00', '15000.00', 'Tunai', 'Selesai'),
(13, 1, NULL, '2025-11-19 16:53:51', NULL, '15000.00', '0.00', '15000.00', 'Non-Tunai', 'Selesai'),
(14, 1, NULL, '2025-11-19 16:55:05', NULL, '15000.00', '0.00', '15000.00', 'Tunai', 'Selesai'),
(15, 1, NULL, '2025-11-19 17:48:16', NULL, '15000.00', '0.00', '15000.00', 'Tunai', 'Selesai'),
(16, 1, NULL, '2025-11-19 17:57:23', NULL, '15000.00', '0.00', '15000.00', 'Tunai', 'Selesai'),
(17, 1, NULL, '2025-11-19 17:57:57', NULL, '6000.00', '0.00', '6000.00', 'Tunai', 'Selesai'),
(18, 4, NULL, '2025-11-20 13:55:53', NULL, '20000.00', '0.00', '20000.00', 'Tunai', 'Selesai'),
(19, 1, NULL, '2025-11-21 02:29:33', NULL, '20000.00', '0.00', '20000.00', 'Tunai', 'Selesai'),
(20, 1, NULL, '2025-11-21 02:30:43', NULL, '15000.00', '0.00', '15000.00', 'Tunai', 'Selesai'),
(21, 1, NULL, '2025-11-27 12:27:43', NULL, '15000.00', '0.00', '15000.00', 'Tunai', 'Selesai'),
(22, 1, 3, '2025-11-27 12:31:23', NULL, '28000.00', '4200.00', '23800.00', 'Non-Tunai', 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `resep_menu`
--

CREATE TABLE `resep_menu` (
  `resep_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `bahan_baku_id` int NOT NULL,
  `jumlah_dibutuhkan` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `resep_menu`
--

INSERT INTO `resep_menu` (`resep_id`, `menu_id`, `bahan_baku_id`, `jumlah_dibutuhkan`) VALUES
(1, 6, 13, '150.00'),
(2, 6, 6, '200.00'),
(3, 6, 31, '20.00'),
(4, 7, 13, '100.00'),
(5, 7, 6, '200.00'),
(6, 7, 31, '20.00'),
(7, 8, 14, '1.00'),
(8, 8, 6, '200.00'),
(9, 9, 14, '1.00'),
(10, 9, 6, '200.00'),
(11, 10, 16, '5.00'),
(12, 11, 7, '1.00'),
(13, 11, 13, '50.00'),
(14, 12, 7, '1.00'),
(15, 12, 13, '50.00'),
(16, 12, 16, '2.00'),
(17, 13, 6, '200.00'),
(18, 13, 34, '20.00'),
(19, 14, 6, '200.00'),
(20, 14, 15, '1.00'),
(21, 15, 6, '200.00'),
(22, 15, 15, '1.00'),
(23, 15, 16, '2.00'),
(24, 15, 17, '1.00'),
(25, 16, 8, '150.00'),
(26, 17, 8, '150.00'),
(27, 17, 15, '1.00'),
(28, 18, 8, '150.00'),
(29, 18, 15, '1.00'),
(30, 18, 16, '2.00'),
(31, 18, 17, '1.00'),
(32, 19, 28, '20.00'),
(33, 19, 16, '2.00'),
(34, 19, 17, '1.00'),
(35, 19, 7, '0.50'),
(36, 20, 15, '1.00'),
(37, 21, 15, '1.00'),
(38, 21, 21, '1.00'),
(39, 21, 22, '1.00'),
(40, 21, 23, '1.00'),
(41, 21, 24, '1.00'),
(42, 22, 7, '1.00'),
(43, 23, 7, '1.00'),
(44, 23, 15, '1.00'),
(45, 24, 7, '2.00'),
(46, 24, 15, '2.00'),
(47, 24, 16, '2.00'),
(48, 24, 17, '1.00'),
(49, 25, 11, '1.00'),
(50, 26, 11, '1.00'),
(51, 26, 15, '1.00'),
(52, 27, 6, '200.00'),
(53, 28, 26, '200.00'),
(54, 29, 26, '100.00'),
(55, 29, 17, '2.00'),
(56, 29, 18, '2.00'),
(57, 30, 9, '150.00'),
(58, 30, 19, '50.00'),
(59, 31, 21, '1.00'),
(60, 31, 22, '1.00'),
(61, 31, 23, '1.00'),
(62, 31, 24, '1.00'),
(63, 31, 17, '1.00'),
(64, 32, 20, '5.00'),
(65, 33, 16, '5.00'),
(66, 34, 27, '2.00'),
(67, 34, 33, '20.00'),
(68, 34, 32, '20.00'),
(69, 35, 10, '2.00'),
(70, 35, 33, '20.00'),
(71, 35, 32, '20.00'),
(72, 36, 17, '1.00'),
(73, 37, 17, '1.00'),
(74, 38, 17, '1.00'),
(75, 38, 16, '1.00'),
(76, 38, 21, '1.00'),
(77, 38, 22, '1.00'),
(78, 38, 23, '1.00'),
(79, 39, 35, '5.00'),
(80, 40, 35, '5.00'),
(81, 40, 40, '20.00'),
(82, 40, 41, '50.00'),
(83, 41, 35, '5.00'),
(84, 41, 50, '20.00'),
(85, 41, 41, '50.00'),
(86, 42, 35, '5.00'),
(87, 42, 51, '20.00'),
(88, 42, 41, '50.00'),
(89, 43, 36, '15.00'),
(90, 44, 37, '15.00'),
(91, 45, 38, '15.00'),
(92, 46, 39, '15.00'),
(93, 47, 42, '30.00'),
(94, 48, 43, '30.00'),
(95, 49, 44, '0.50'),
(96, 50, 45, '0.25'),
(97, 51, 46, '200.00'),
(98, 52, 47, '200.00'),
(99, 53, 48, '100.00'),
(100, 54, 49, '200.00'),
(101, 55, 52, '20.00'),
(102, 55, 53, '1.00'),
(103, 55, 54, '100.00'),
(104, 56, 51, '20.00'),
(105, 56, 53, '1.00'),
(106, 56, 54, '100.00'),
(107, 57, 50, '20.00'),
(108, 57, 53, '1.00'),
(109, 57, 54, '100.00'),
(110, 58, 55, '1.00'),
(111, 59, 55, '1.00'),
(112, 59, 56, '20.00'),
(113, 60, 47, '100.00'),
(114, 61, 57, '30.00'),
(115, 62, 58, '30.00'),
(116, 63, 59, '30.00'),
(117, 64, 60, '30.00'),
(118, 65, 62, '30.00'),
(119, 66, 66, '20.00'),
(120, 66, 65, '30.00'),
(121, 67, 61, '30.00'),
(122, 67, 65, '30.00'),
(123, 68, 67, '0.20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jabatan` enum('Pemilik','Manager','Kasir','Koki','Pelayan') NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `reset_token` varchar(100) DEFAULT NULL,
  `token_expiry` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `nama`, `username`, `password`, `jabatan`, `no_telepon`, `reset_token`, `token_expiry`, `created_at`) VALUES
(1, 'Admin Pemilik', 'pemilik', '123', 'Pemilik', '0811111111', NULL, NULL, '2025-11-13 11:21:38'),
(2, 'Ani Kasir', 'ani_kasir', '$2a$10$e.x/L3b.b/V5g.E8/qRk.u.O/wN.pY.K/gU/5n.U/6p.S/9p.W', 'Kasir', '0822222222', NULL, NULL, '2025-11-13 11:21:38'),
(3, 'Budi Koki', 'budi_koki', '$2a$10$f.z/C7d.g/W9h.G2/tSl.v.P/xO.rZ.L/iV/6o.X/7q.T/0q.Y', 'Koki', '0833333333', NULL, NULL, '2025-11-13 11:21:38'),
(4, 'Geral Tritama', 'geral', '12345', 'Kasir', '0895406320307', NULL, NULL, '2025-11-13 15:08:05'),
(5, 'adminKongkow', 'admin', '123', 'Pemilik', '0895406320307', NULL, NULL, '2025-11-13 15:12:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`absensi_id`),
  ADD KEY `karyawan_id` (`karyawan_id`);

--
-- Indexes for table `bahan_baku`
--
ALTER TABLE `bahan_baku`
  ADD PRIMARY KEY (`bahan_baku_id`),
  ADD UNIQUE KEY `nama_bahan` (`nama_bahan`);

--
-- Indexes for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  ADD PRIMARY KEY (`detail_pembelian_id`),
  ADD UNIQUE KEY `idx_detail_pembelian_unik` (`pembelian_id`,`bahan_baku_id`),
  ADD KEY `bahan_baku_id` (`bahan_baku_id`);

--
-- Indexes for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`detail_pesanan_id`),
  ADD UNIQUE KEY `idx_detail_pesanan_unik` (`pesanan_id`,`menu_id`,`catatan`(50)),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD UNIQUE KEY `nama_menu` (`nama_menu`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`),
  ADD UNIQUE KEY `no_hp` (`no_hp`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`pembelian_id`),
  ADD KEY `karyawan_id` (`karyawan_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`pesanan_id`),
  ADD KEY `karyawan_id` (`karyawan_id`),
  ADD KEY `pelanggan_id` (`pelanggan_id`);

--
-- Indexes for table `resep_menu`
--
ALTER TABLE `resep_menu`
  ADD PRIMARY KEY (`resep_id`),
  ADD UNIQUE KEY `idx_resep_menu_unik` (`menu_id`,`bahan_baku_id`),
  ADD KEY `bahan_baku_id` (`bahan_baku_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `absensi_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bahan_baku`
--
ALTER TABLE `bahan_baku`
  MODIFY `bahan_baku_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  MODIFY `detail_pembelian_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  MODIFY `detail_pesanan_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `pelanggan_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `pembelian_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `pesanan_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `resep_menu`
--
ALTER TABLE `resep_menu`
  MODIFY `resep_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `absensi_ibfk_1` FOREIGN KEY (`karyawan_id`) REFERENCES `users` (`users_id`) ON DELETE CASCADE;

--
-- Constraints for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  ADD CONSTRAINT `detail_pembelian_ibfk_1` FOREIGN KEY (`pembelian_id`) REFERENCES `pembelian` (`pembelian_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_pembelian_ibfk_2` FOREIGN KEY (`bahan_baku_id`) REFERENCES `bahan_baku` (`bahan_baku_id`);

--
-- Constraints for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `detail_pesanan_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_pesanan_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`);

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`karyawan_id`) REFERENCES `users` (`users_id`);

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`karyawan_id`) REFERENCES `users` (`users_id`),
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggan` (`pelanggan_id`) ON DELETE SET NULL;

--
-- Constraints for table `resep_menu`
--
ALTER TABLE `resep_menu`
  ADD CONSTRAINT `resep_menu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `resep_menu_ibfk_2` FOREIGN KEY (`bahan_baku_id`) REFERENCES `bahan_baku` (`bahan_baku_id`) ON DELETE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
