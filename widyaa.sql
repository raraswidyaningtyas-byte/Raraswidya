-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2026 at 07:35 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `widyaa`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `kd_kat` varchar(6) DEFAULT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `kd_kat`, `category_name`) VALUES
(1, 'K001', 'Buah'),
(4, 'K002', 'snack'),
(5, 'K003', 'Minuman kemasan'),
(6, 'K004', 'Barang Elektronik'),
(7, 'K005', 'Perabotan');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `min_stock` int(5) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_code`, `product_name`, `stock`, `min_stock`, `price`, `gambar`, `created_at`, `update_at`) VALUES
(1, 1, 'P001', 'peach', 110, 35, 30000, '6fe92aa3dd441533bec959e5b1edad5a.jpg', '2026-05-08 12:02:11', '2026-05-08 12:02:11'),
(2, 1, 'P002', 'anggur', 60, 79, 45000, '45adf83c8023261b46ba181147d84123.jpg', '2026-05-09 06:18:22', '2026-05-09 06:18:22'),
(3, 1, 'P003', 'mangga', 120, 60, 10000, '9a59452e0d648aaf1f2c976cbb0d8040.jpg', '2026-05-20 05:40:17', '2026-05-20 05:40:17'),
(4, 1, 'P004', 'apel', 50, 40, 35000, '5ebf2d354601da245696364881004380.jpg', '2026-05-20 05:47:56', '2026-05-20 05:47:56'),
(21, 4, 'P005', 'Taro', 30, 9, 10000, '8fe8bd76669005bcc5aae6b0903d0e9b.jpg', '2026-05-20 07:41:49', '2026-05-20 07:41:49'),
(22, 4, 'P006', 'Nabati', 60, 10, 4000, '7867e1103c54768c7baf3cb4061c7c48.jpg', '2026-05-20 07:43:23', '2026-05-20 07:43:23'),
(23, 4, 'P007', 'Pocky', 35, 20, 10000, '15852db229af073b32f774cecfa24110.jpg', '2026-05-20 07:46:15', '2026-05-20 07:46:15'),
(24, 4, 'P008', 'Oreo', 15, 20, 5000, '9f2a095a424f1a6553a74be6d6fa330d.jpg', '2026-05-20 07:47:29', '2026-05-20 07:47:29'),
(41, 5, 'P009', 'Teh Pucuk', 57, 15, 4000, 'be4ccdd4907c1ee87be162d0376d3fd6.jpg', '2026-05-20 08:25:59', '2026-05-20 08:25:59'),
(43, 5, 'P010', 'CocaCola', 25, 34, 7000, '7552c90e682975db2f5d8cc888aee28c.jpg', '2026-05-20 08:28:07', '2026-05-20 08:28:07'),
(44, 5, 'P011', 'Fanta', 11, 16, 10000, '88631e614446f931bb48a06cd83fd867.jpg', '2026-05-20 08:29:01', '2026-05-20 08:29:01'),
(45, 5, 'P012', 'Sprite', 34, 20, 10000, 'd424d2cdf532d8365d298cc6271517f0.jpg', '2026-05-20 08:30:33', '2026-05-20 08:30:33'),
(61, 6, 'P013', 'Kulkas', 9, 5, 7000000, 'fc4d3da1cf672328f7a8aa20175434e3.jpg', '2026-05-20 09:13:16', '2026-05-20 09:13:16'),
(62, 6, 'P014', 'Mesin Cuci', 10, 5, 5000000, 'ca40f89b1588a503956ea169806cff03.jpg', '2026-05-20 09:14:07', '2026-05-20 09:14:07'),
(63, 6, 'P015', 'Smartphone', 4, 10, 14000000, '7e2d99c77d61163fc8f0f66006f92ca1.jpg', '2026-05-20 09:16:00', '2026-05-20 09:16:00'),
(64, 6, 'P016', 'Laptop', 25, 5, 10000000, '12ec668baff975beb649ba844c702171.jpg', '2026-05-20 09:17:09', '2026-05-20 09:17:09'),
(81, 7, 'P017', 'Sova', 5, 4, 2000000, '5160091d6adbfa43ab5cf9e085799961.jpg', '2026-05-20 09:59:12', '2026-05-20 09:59:12'),
(82, 7, 'P018', 'Lemari', 25, 5, 10000000, 'd6cec1fadee5f5046fada805dae90af3.jpg', '2026-05-20 10:00:02', '2026-05-20 10:00:02'),
(84, 7, 'P019', 'Kasur', 4, 5, 4000000, '87bbaba8cae73f5e7238852901416ded.jpg', '2026-05-20 10:02:41', '2026-05-20 10:02:41'),
(88, 7, 'P020', 'Meja', 30, 21, 2500000, '49aadbff31467831866201031fffc9ec.jpg', '2026-05-20 10:06:10', '2026-05-20 10:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `stock_logs`
--

CREATE TABLE `stock_logs` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `change_type` enum('ADD','EDIT','REDUCE') DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `stock_before` int(11) DEFAULT NULL,
  `stock_after` int(11) DEFAULT NULL,
  `note` varchar(2555) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_logs`
--

INSERT INTO `stock_logs` (`id`, `product_id`, `change_type`, `qty`, `stock_before`, `stock_after`, `note`, `created_at`, `created_by`) VALUES
(38, 3, 'ADD', 40, 80, 120, 'karna produk terjual habis', '2026-05-22 03:47:35', 6),
(39, 4, 'REDUCE', 18, 65, 47, 'karna banyak yang busuk', '2026-05-22 03:48:21', 6),
(41, 22, 'ADD', 35, 25, 60, 'karna barang terjual habis', '2026-05-22 06:33:59', 6),
(42, 24, 'REDUCE', 15, 30, 15, 'karna stok banyak yang kedaluarsa', '2026-05-22 06:35:38', 6),
(43, 41, 'ADD', 27, 30, 57, 'karna barang terjual habis', '2026-05-22 06:36:18', 6),
(44, 44, 'REDUCE', 25, 36, 11, 'karna stok banyak yang kedaluarsa', '2026-05-22 06:36:58', 6),
(45, 64, 'ADD', 15, 10, 25, 'keuntungan yang stabil', '2026-05-22 06:38:55', 6),
(46, 63, 'REDUCE', 16, 20, 4, 'perputaran modal', '2026-05-22 06:40:36', 6),
(47, 82, 'ADD', 15, 10, 25, 'karna banyak peminatnya', '2026-05-22 06:41:15', 6),
(48, 84, 'REDUCE', 6, 10, 4, 'perubahan selera dan tren', '2026-05-22 06:42:21', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff') DEFAULT 'staff',
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_active`, `created_at`) VALUES
(6, 'Raras widyaning tyas', 'raraswidyaningtyas@gmail.com', '$2y$10$S4p/.YQ69EPo/btEvS1cCuNJi1I1gf6CT8VvmjAXHH76C5YkLitI6', 'admin', 1, '2026-05-16 00:18:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_id` (`category_id`,`product_code`);

--
-- Indexes for table `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
