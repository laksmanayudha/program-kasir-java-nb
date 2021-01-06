-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2020 at 05:29 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama_customer` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`) VALUES
(1, 'yudha'),
(2, 'dede'),
(3, 'anto'),
(4, 'kemal'),
(5, 'karlina'),
(6, 'hendra'),
(7, 'hanggini'),
(8, 'kekei'),
(9, 'hilman'),
(10, 'yudha ganteng'),
(11, 'ganteng'),
(12, 'trisna'),
(13, 'nanda'),
(14, 'sifon'),
(15, 'udayana'),
(16, 'oming'),
(17, 'yoga'),
(18, 'hanzo'),
(19, 'tema'),
(20, 'anton'),
(21, 'rena'),
(22, 'yere'),
(23, 'anom'),
(24, 'novia'),
(25, 'sima'),
(26, 'laksmana'),
(27, 'laksmana yudha'),
(28, 'haris');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `biaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `keterangan`, `biaya`) VALUES
(1, 'listrik', 1000),
(6, 'beli sapu', 5000),
(7, 'service AC', 10000),
(8, 'bayar air', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(20) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `stok_produk` int(11) NOT NULL,
  `kadaluarsa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_beli`, `harga_produk`, `stok_produk`, `kadaluarsa`) VALUES
(1, 'citato', 1000, 3000, 15, '2020-06-28'),
(2, 'permen fox', 2000, 4000, 34, '2020-06-30'),
(3, 'maichi lvl 10', 20000, 22000, 15, '2020-07-02'),
(8, 'lays jumbo', 3500, 5500, 25, '2020-06-24'),
(9, 'fruit tea', 4500, 4500, 30, '2020-07-31'),
(10, 'citos', 2500, 2500, 23, '2020-08-01'),
(11, 'nescafe', 11000, 11000, 15, '2020-06-30'),
(12, 'selamat', 5000, 5000, 24, '2020-06-30'),
(13, 'fanta', 9000, 12000, 33, '2020-10-30'),
(14, 'coca-cola', 8000, 10000, 12, '2020-10-30'),
(15, 'sempurna', 11000, 15000, 20, '2021-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `suply`
--

CREATE TABLE `suply` (
  `id_suply` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `stok_masuk` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suply`
--

INSERT INTO `suply` (`id_suply`, `id_petugas`, `id_produk`, `stok_masuk`, `harga_jual`, `harga_beli`, `tanggal_masuk`) VALUES
(3, 8, 8, 15, 5500, 3500, '2020-05-17'),
(7, 8, 3, 10, 22000, 20000, '2020-05-23'),
(8, 8, 2, 10, 4000, 2000, '2020-05-23'),
(9, 8, 8, 10, 5500, 3500, '2020-05-23'),
(10, 8, 1, 10, 3000, 1000, '2020-05-23'),
(11, 8, 3, 10, 22000, 20000, '2020-06-02'),
(12, 8, 1, 20, 3000, 1000, '2020-06-04'),
(13, 8, 8, 10, 5500, 3500, '2020-06-03'),
(14, 8, 9, 30, 4500, 4000, '2020-06-04'),
(15, 8, 11, 24, 11000, 11000, '2020-08-02'),
(19, 8, 12, 10, 5000, 5000, '2020-06-06'),
(20, 8, 13, 33, 12000, 9000, '2020-06-06'),
(21, 8, 14, 12, 10000, 8000, '2020-06-06'),
(22, 8, 15, 20, 15000, 11000, '2020-06-06'),
(23, 8, 16, 6, 5000, 2000, '2020-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `tanggal_pembelian` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `id_customer`, `id_produk`, `jumlah_barang`, `harga_beli`, `harga`, `tanggal_pembelian`) VALUES
(71, 1, 21, 9, 1, 4500, 4500, '2020-06-01'),
(72, 1, 1, 1, 1, 1000, 3000, '2020-06-01'),
(73, 1, 22, 2, 1, 2000, 4000, '2020-06-01'),
(74, 1, 4, 2, 1, 2000, 4000, '2020-06-01'),
(75, 1, 1, 8, 1, 3500, 5500, '2020-06-01'),
(76, 1, 1, 3, 1, 20000, 22000, '2020-06-02'),
(77, 1, 1, 2, 1, 2000, 4000, '2020-06-01'),
(84, 1, 23, 8, 2, 3500, 5500, '2020-06-01'),
(85, 1, 23, 8, 2, 3500, 5500, '2020-06-01'),
(90, 1, 23, 1, 3, 1000, 3000, '2020-06-02'),
(91, 1, 23, 8, 6, 3500, 5500, '2020-06-01'),
(92, 1, 23, 9, 2, 4500, 4500, '2020-06-01'),
(95, 1, 23, 1, 4, 1000, 3000, '2020-06-01'),
(96, 1, 24, 1, 2, 1000, 3000, '2020-06-01'),
(97, 1, 2, 8, 1, 3500, 5500, '2020-06-01'),
(98, 1, 24, 2, 6, 2000, 4000, '2020-06-02'),
(99, 1, 23, 8, 1, 3500, 5500, '2020-06-02'),
(100, 1, 25, 1, 1, 1000, 3000, '2020-06-02'),
(101, 1, 1, 1, 2, 1000, 3000, '2020-06-04'),
(102, 1, 1, 3, 1, 20000, 22000, '2020-06-04'),
(103, 1, 1, 8, 1, 3500, 5500, '2020-06-04'),
(104, 1, 1, 1, 1, 1000, 3000, '2020-06-04'),
(105, 1, 26, 8, 5, 3500, 5500, '2020-06-04'),
(106, 1, 27, 10, 4, 2500, 2500, '2020-06-03'),
(107, 1, 26, 1, 18, 1000, 3000, '2020-06-04'),
(110, 1, 28, 11, 2, 11000, 11000, '2020-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `role_name`, `email`, `no_hp`) VALUES
(1, 'dede', 'dede', 'kasir', 'yudha@gmail.com', '123'),
(2, 'laksmana', 'laksmana', 'kasir', 'laksmana.com', '888888888888'),
(4, 'oming', 'dede', 'manager', 'oming.com', '9090'),
(5, 'anom', 'haha', 'kasir', 'anom.com', '8989'),
(6, 'admin', 'admin', 'kasir', 'admin.com', '7878'),
(7, 'unud', 'unud', 'kasir', 'unud.com', '32323232'),
(8, 'yoga', 'yoga', 'gudang', 'gudang.com', '8989'),
(9, 'yanto', 'yanto', 'manager', 'yantotaurus32@gmail.com', '123432'),
(11, 'yeye', 'd9d5cba7c445bd9f8dfb1f8616b238d', 'kasir', 'yeye.com', '121212'),
(12, 'Luhris', 'fc8c9f3ef977b69f04e9995390c166', 'manager', 'luhris.com', '767678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `suply`
--
ALTER TABLE `suply`
  ADD PRIMARY KEY (`id_suply`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `customer` (`id_customer`),
  ADD KEY `produk` (`id_produk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `suply`
--
ALTER TABLE `suply`
  MODIFY `id_suply` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `customer` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `produk` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
