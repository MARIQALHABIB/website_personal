-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28 Jul 2024 pada 14.54
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `piaman_ip`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact_info`
--

CREATE TABLE `contact_info` (
  `id_ci` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contact_info`
--

INSERT INTO `contact_info` (`id_ci`, `name`, `email`, `message`, `tanggal`) VALUES
(2, 'Muhadist Hasbi Irsyadi', 'aby@gmail.com', 'Barang yang dikirimkan sudah dengan tingkat keamanan yang sangat baik. Tetapi untuk pengiriman membutuhkan waktu yang sangat lama.', '2024-06-14 10:09:38'),
(3, 'Mutiara Sajidah', 'ejid123@gmail.com', 'Admin merespon customer dengan sangat ramah. Pertahankan kedepannya â˜…â˜…â˜…â˜…â˜…', '2024-06-14 10:12:53'),
(4, 'Lucas', 'lucas@gmail.com', 'Barang yang dikirim dengan kualitas yang sangat premium. Tetapi ada sedikit baret. Mungkin dapat meningkat keamanan barang yang akan di kirim \r\nbarang :â˜…â˜…â˜…â˜…â˜…\r\npengiriman : â˜…â˜…â˜…', '2024-06-14 10:16:42'),
(5, 'Lucas', 'lucas@gmail.com', 'Barang yang dikirim dengan kualitas yang sangat premium, tetapi ada sedikit baret. Mungkin dapat meningkat keamanan barang yang akan di kirim \r\nbarang     :â˜…â˜…â˜…â˜…â˜…\r\npengiriman :â˜…â˜…â˜…', '2024-06-14 10:17:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `status` enum('pending','completed','cancelled') NOT NULL DEFAULT 'pending',
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`order_id`, `name`, `address`, `payment_method`, `total_price`, `status`, `order_date`) VALUES
(1, 'ragilang', 'padang', 'cash_on_delivery', '13500000.00', 'pending', '2024-07-02 15:17:11'),
(2, 'watil', 'padang', 'credit_card', '3300000.00', 'pending', '2024-07-03 03:58:29'),
(3, 'M ARIQ ALHABIB', 'pariaman', 'bank_transfer', '1000000.00', 'pending', '2024-07-10 13:27:33'),
(4, 'M ARIQ ALHABIB', 'pariaman', 'credit_card', '4900000.00', 'pending', '2024-07-10 13:33:22'),
(5, 'M ARIQ ALHABIB', 'pariaman', 'cash_on_delivery', '2750000.00', 'pending', '2024-07-10 13:58:49'),
(6, 'IPHONE 7', 'PERSEL', 'credit_card', '2000000.00', 'pending', '2024-07-10 14:33:36'),
(7, 'M ARIQ ALHABIB', 'Paraman', 'credit_card', '2500000.00', 'pending', '2024-07-10 16:01:59'),
(8, 'M ARIQ ALHABIB', 'pariaman', 'cash_on_delivery', '27900000.00', 'pending', '2024-07-10 16:12:36'),
(9, 'salman', 'solsel', 'bank_transfer', '13400000.00', 'pending', '2024-07-10 16:19:32'),
(10, 'ambi', 'aia haji', 'bank_transfer', '13400000.00', 'pending', '2024-07-10 16:41:03'),
(11, 'rafi', 'padang', 'cash_on_delivery', '1500000.00', 'pending', '2024-07-10 16:51:05'),
(12, 'M ARIQ ALHABIB', 'pariaman', 'bank_transfer', '1000000.00', 'pending', '2024-07-11 01:29:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `id_detail` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `order_items`
--

INSERT INTO `order_items` (`id_detail`, `order_id`, `product_id`, `name`, `quantity`, `price`) VALUES
(26, 6, 2, 'IPHONE 8', 1, '2000000.00'),
(27, 7, 1, 'IPHONE 7', 1, '1000000.00'),
(28, 7, 2, 'IPHONE 8', 1, '1500000.00'),
(29, 8, 9, 'IPHONE 15', 1, '27900000.00'),
(30, 9, 7, 'IPHONE 13', 1, '13400000.00'),
(31, 10, 7, 'IPHONE 13', 1, '13400000.00'),
(32, 11, 2, 'IPHONE 8', 1, '1500000.00'),
(33, 12, 1, 'IPHONE 7', 1, '1000000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(60) NOT NULL,
  `price` double NOT NULL,
  `stok_tersedia` int(11) DEFAULT '0',
  `stok_awal` int(11) DEFAULT NULL,
  `stok_terjual` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `image`, `name`, `description`, `price`, `stok_tersedia`, `stok_awal`, `stok_terjual`) VALUES
(1, 'IPHONE7.JPEG', 'IPHONE 7', 'Second', 1000000, 31, 170, 135),
(2, 'IPHONE 8.jpg', 'IPHONE 8', 'Second', 1500000, 43, 70, 25),
(3, 'IPHONE X.jpg', 'IPHONE X', 'Second ', 2540000, 9, 35, 25),
(4, 'IPHONE XR.jpg', 'IPHONE XR', 'Second', 3460000, 19, 110, 90),
(5, 'IPHONE 11.jpeg', 'IPHONE 11', 'Second', 7899000, 5, 15, 10),
(6, 'IPHONE 12.jpg', 'IPHONE 12', 'Second and New', 9700000, 11, 26, 14),
(7, 'IPHONE 13.jpeg', 'IPHONE 13', 'Second and New', 13400000, 15, 20, 3),
(8, 'IPHONE 14(3).JPEG', 'IPHONE 14', 'Second and New', 17250000, 10, 25, 15),
(9, 'IPHONE 15.JPEG', 'IPHONE 15', 'Second and New', 27900000, 99, 150, 50);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_barang`
--

CREATE TABLE `stok_barang` (
  `id_stok` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `stok_awal` int(11) DEFAULT NULL,
  `stok_tersedia` int(11) DEFAULT NULL,
  `stok_terjual` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('customer','admin') NOT NULL DEFAULT 'customer',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(8, 'admin1', 'mariqalhabib@gmail.com', '$2y$10$mlfsgScjn1dCf33qD5ZTbum/Ox8/T6f./bdl7yyg02VQGqmZfoFMS', 'customer', '2024-07-10 13:26:49'),
(9, 'admin2', 'muhamadpolo@gmail.com', '$2y$10$1Vu8VVhnZj6ad01bDxNAY.NAM60jNPBDapqEtwyd5Eup/ceAGB1uW', 'customer', '2024-07-10 15:55:03'),
(10, 'admin3', 'piaman@gmail.com', '$2y$10$lnAQPKEwxanJQvGPWs4UiOyAB10lh66/orkJX0Mz2kGjMLDIOhUpy', 'customer', '2024-07-10 16:49:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`id_ci`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stok_barang`
--
ALTER TABLE `stok_barang`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `id_ci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `stok_barang`
--
ALTER TABLE `stok_barang`
  MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
