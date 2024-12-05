-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 26, 2024 at 12:44 PM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `QLBH001`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietgd`
--

CREATE TABLE `chitietgd` (
  `magd` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitietgd`
--

INSERT INTO `chitietgd` (`magd`, `masp`, `soluong`) VALUES
(1, 8, 1),
(2, 8, 1),
(3, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `danhmucsp`
--

CREATE TABLE `danhmucsp` (
  `madm` int(11) NOT NULL,
  `tendm` varchar(255) NOT NULL,
  `xuatsu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `danhmucsp`
--

INSERT INTO `danhmucsp` (`madm`, `tendm`, `xuatsu`) VALUES
(1, 'Optimus Prime', 'Cybertron'),
(2, 'Bumblebee', 'Cybertron'),
(3, 'Megatron', 'Cybertron'),
(4, 'Starscream', 'Cybertron'),
(5, 'Ironhide', 'Cybertron'),
(6, 'Soundwave', 'Cybertron');

-- --------------------------------------------------------

--
-- Table structure for table `giaodich`
--

CREATE TABLE `giaodich` (
  `magd` int(11) NOT NULL,
  `tinhtrang` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_dst` varchar(20) NOT NULL,
  `user_addr` text NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `tongtien` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `giaodich`
--

INSERT INTO `giaodich` (`magd`, `tinhtrang`, `user_id`, `user_name`, `user_dst`, `user_addr`, `user_phone`, `tongtien`, `date`) VALUES
(1, 1, 101, 'John Smith', 'Manhattan', '123 Broadway Avenue', '0123456789', '1500000', '2024-11-28 10:00:00'),
(2, 0, 102, 'Emily Johnson', 'Brooklyn', '45 Elm Street', '0987654321', '2000000', '2024-11-28 15:30:00'),
(3, 1, 103, 'Michael Brown', 'Queens', '789 Sunset Boulevard', '0933333333', '500000', '2024-11-29 09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `user_id` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`user_id`, `masp`, `soluong`) VALUES
(1, 2, 1),
(1, 4, 1),
(1, 8, 1),
(1, 9, 1),
(1, 10, 1),
(2, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(11) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `gia` varchar(20) NOT NULL,
  `baohanh` tinyint(2) NOT NULL,
  `trongluong` int(4) NOT NULL,
  `chatlieu` varchar(100) NOT NULL,
  `chongnuoc` tinyint(1) NOT NULL,
  `nangluong` varchar(100) NOT NULL,
  `loaibh` varchar(100) NOT NULL,
  `kichthuoc` varchar(100) NOT NULL,
  `mau` varchar(100) NOT NULL,
  `danhcho` varchar(20) NOT NULL,
  `phukien` varchar(255) NOT NULL,
  `khuyenmai` varchar(100) NOT NULL,
  `tinhtrang` varchar(100) NOT NULL,
  `madm` int(11) NOT NULL,
  `anhchinh` varchar(255) NOT NULL,
  `luotmua` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL,
  `ngay_nhap` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `gia`, `baohanh`, `trongluong`, `chatlieu`, `chongnuoc`, `nangluong`, `loaibh`, `kichthuoc`, `mau`, `danhcho`, `phukien`, `khuyenmai`, `tinhtrang`, `madm`, `anhchinh`, `luotmua`, `luotxem`, `ngay_nhap`) VALUES
(1, 'Optimus Prime Action Figure', '1500000', 12, 800, 'Plastic', 1, 'Battery', 'Electronic Warranty', '30cm x 20cm x 15cm', 'Blue-Red', 'Kids', 'Weapon accessories', '10% off', 'In Stock', 1, 'optimus_prime.jpg', 50, 200, '2024-11-01 10:00:00'),
(2, 'Bumblebee Model', '1200000', 12, 750, 'Metal-Plastic', 1, 'Battery', 'Electronic Warranty', '25cm x 18cm x 12cm', 'Yellow-Black', 'Kids', 'Car mode parts', '15% off', 'In Stock', 1, 'bumblebee.jpg', 70, 300, '2024-11-02 10:00:00'),
(3, 'Megatron Action Figure', '1800000', 24, 1000, 'Metal', 1, 'Battery', 'Electronic Warranty', '35cm x 25cm x 20cm', 'Gray', 'Adults', 'Weapon accessories', '20% off', 'In Stock', 2, 'megatron.jpg', 40, 250, '2024-11-03 10:00:00'),
(4, 'Starscream Model', '1400000', 12, 900, 'Plastic', 0, 'Battery', 'Electronic Warranty', '28cm x 22cm x 14cm', 'Silver', 'Adults', 'Jet mode parts', '5% off', 'In Stock', 2, 'starscream.jpg', 35, 150, '2024-11-04 10:00:00'),
(5, 'Ironhide Figure', '1600000', 24, 1100, 'Metal-Plastic', 1, 'Battery', 'Electronic Warranty', '33cm x 25cm x 18cm', 'Black', 'Adults', 'Weapon accessories', '10% off', 'In Stock', 1, 'ironhide.jpg', 20, 120, '2024-11-05 10:00:00'),
(6, 'Jazz Model', '1300000', 12, 800, 'Plastic', 0, 'Battery', 'Electronic Warranty', '27cm x 19cm x 14cm', 'Silver-Black', 'Kids', 'Car mode parts', '15% off', 'In Stock', 1, 'jazz.jpg', 60, 180, '2024-11-06 10:00:00'),
(7, 'Soundwave Action Figure', '1700000', 24, 1050, 'Metal', 1, 'Battery', 'Electronic Warranty', '32cm x 24cm x 16cm', 'Blue', 'Adults', 'Cassette mode parts', '10% off', 'In Stock', 2, 'soundwave.jpg', 30, 140, '2024-11-07 10:00:00'),
(8, 'Shockwave Figure', '1900000', 24, 950, 'Plastic', 1, 'Solar', 'Electronic Warranty', '34cm x 25cm x 17cm', 'Purple', 'Adults', 'Weapon accessories', '5% off', 'In Stock', 2, 'shockwave.jpg', 25, 130, '2024-11-08 10:00:00'),
(9, 'Grimlock Dinosaur Model', '2000000', 24, 1200, 'Metal-Plastic', 1, 'Battery', 'Electronic Warranty', '40cm x 30cm x 20cm', 'Gold', 'Kids', 'Dinosaur mode parts', '10% off', 'In Stock', 3, 'grimlock.jpg', 45, 220, '2024-11-09 10:00:00'),
(10, 'Unicron Figure', '3000000', 36, 1500, 'Metal', 0, 'Battery', 'Electronic Warranty', '50cm x 35cm x 25cm', 'Orange', 'Adults', 'Planet mode parts', '20% off', 'In Stock', 4, 'unicron.jpg', 10, 100, '2024-11-10 10:00:00'),
(11, 'Ratchet Model', '1100000', 12, 800, 'Plastic', 1, 'Battery', 'Electronic Warranty', '28cm x 21cm x 15cm', 'Green-White', 'Kids', 'Ambulance mode parts', '5% off', 'In Stock', 1, 'ratchet.jpg', 50, 140, '2024-11-11 10:00:00'),
(12, 'Hot Rod Model', '1250000', 12, 850, 'Plastic', 0, 'Battery', 'Electronic Warranty', '29cm x 22cm x 16cm', 'Red-Yellow', 'Kids', 'Car mode parts', '10% off', 'In Stock', 1, 'hot_rod.jpg', 55, 160, '2024-11-12 10:00:00'),
(13, 'Wheeljack Model', '1350000', 12, 950, 'Plastic', 1, 'Solar', 'Electronic Warranty', '31cm x 23cm x 17cm', 'White-Green', 'Kids', 'Car mode parts', '5% off', 'In Stock', 1, 'wheeljack.jpg', 45, 170, '2024-11-13 10:00:00'),
(14, 'Hound Figure', '1500000', 12, 1000, 'Metal-Plastic', 1, 'Battery', 'Electronic Warranty', '32cm x 24cm x 18cm', 'Green', 'Adults', 'Weapon accessories', '15% off', 'In Stock', 1, 'hound.jpg', 25, 120, '2024-11-14 10:00:00'),
(15, 'Sentinel Prime Model', '2200000', 24, 1300, 'Metal', 0, 'Battery', 'Electronic Warranty', '40cm x 30cm x 22cm', 'Red-Gray', 'Adults', 'Weapon accessories', '10% off', 'In Stock', 1, 'sentinel_prime.jpg', 20, 110, '2024-11-15 10:00:00'),
(16, 'Galvatron Model', '2100000', 24, 1250, 'Metal', 1, 'Battery', 'Electronic Warranty', '39cm x 28cm x 20cm', 'Black-Silver', 'Adults', 'Weapon accessories', '10% off', 'In Stock', 2, 'galvatron.jpg', 15, 100, '2024-11-16 10:00:00'),
(17, 'Drift Model', '1400000', 12, 900, 'Plastic', 1, 'Battery', 'Electronic Warranty', '30cm x 22cm x 16cm', 'Blue', 'Kids', 'Sword accessories', '15% off', 'In Stock', 1, 'drift.jpg', 60, 190, '2024-11-17 10:00:00'),
(18, 'Kup Model', '1100000', 12, 850, 'Plastic', 0, 'Battery', 'Electronic Warranty', '28cm x 21cm x 15cm', 'Gray-Green', 'Kids', 'Car mode parts', '5% off', 'In Stock', 1, 'kup.jpg', 55, 150, '2024-11-18 10:00:00'),
(19, 'Springer Figure', '1500000', 12, 950, 'Plastic', 1, 'Battery', 'Electronic Warranty', '32cm x 24cm x 18cm', 'Green-Yellow', 'Adults', 'Weapon accessories', '5% off', 'In Stock', 1, 'springer.jpg', 30, 130, '2024-11-19 10:00:00'),
(20, 'Cliffjumper Model', '1250000', 12, 850, 'Plastic', 0, 'Battery', 'Electronic Warranty', '29cm x 21cm x 15cm', 'Red', 'Kids', 'Car mode parts', '5% off', 'In Stock', 1, 'cliffjumper.jpg', 45, 140, '2024-11-20 10:00:00'),
(21, 'Thundercracker Figure', '1700000', 24, 1100, 'Metal', 1, 'Battery', 'Electronic Warranty', '34cm x 26cm x 18cm', 'Blue-Gray', 'Adults', 'Jet mode parts', '10% off', 'In Stock', 2, 'thundercracker.jpg', 20, 110, '2024-11-21 10:00:00'),
(22, 'Skywarp Model', '1700000', 24, 1100, 'Metal', 1, 'Battery', 'Electronic Warranty', '34cm x 26cm x 18cm', 'Black-Purple', 'Adults', 'Jet mode parts', '10% off', 'In Stock', 2, 'skywarp.jpg', 20, 110, '2024-11-22 10:00:00'),
(23, 'Arcee Figure', '1300000', 12, 800, 'Plastic', 0, 'Battery', 'Electronic Warranty', '28cm x 20cm x 15cm', 'Pink', 'Kids', 'Motorcycle mode parts', '15% off', 'In Stock', 1, 'arcee.jpg', 70, 210, '2024-11-23 10:00:00'),
(24, 'Blitzwing Model', '1800000', 24, 1200, 'Metal-Plastic', 1, 'Battery', 'Electronic Warranty', '36cm x 28cm x 20cm', 'Gray', 'Adults', 'Tank mode parts', '5% off', 'In Stock', 2, 'blitzwing.jpg', 25, 130, '2024-11-24 10:00:00'),
(25, 'Ultra Magnus Model', '2500000', 24, 1350, 'Metal', 0, 'Battery', 'Electronic Warranty', '42cm x 30cm x 22cm', 'Blue-White', 'Adults', 'Weapon accessories', '10% off', 'In Stock', 1, 'ultra_magnus.jpg', 10, 100, '2024-11-25 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sanphamyeuthich`
--

CREATE TABLE `sanphamyeuthich` (
  `user_id` int(11) NOT NULL,
  `masp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanphamyeuthich`
--

INSERT INTO `sanphamyeuthich` (`user_id`, `masp`) VALUES
(1, 1),
(1, 4),
(1, 5),
(1, 7),
(2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `id` int(11) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `tentaikhoan` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sodt` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `quyen` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`id`, `ten`, `tentaikhoan`, `matkhau`, `diachi`, `sodt`, `email`, `date`, `quyen`) VALUES
(1, 'John Doe', 'johndoe123', 'password123', '123 Main St, New York, USA', '1234567890', 'johndoe@example.com', CURRENT_TIMESTAMP, 0),
(2, 'Jane Smith', 'janesmith456', 'password456', '456 Oak St, Los Angeles, USA', '1234567891', 'janesmith@example.com', CURRENT_TIMESTAMP, 0),
(3, 'Michael Johnson', 'michaeljohnson789', 'password789', '789 Pine St, Chicago, USA', '1234567892', 'michaeljohnson@example.com', CURRENT_TIMESTAMP, 0),
(4, 'David Brown', 'davidbrown123', 'password123', '101 Maple St, Boston, USA', '1234567893', 'davidbrown@example.com', CURRENT_TIMESTAMP, 0),
(5, 'Emily White', 'emilywhite456', 'password456', '202 Birch St, Seattle, USA', '1234567894', 'emilywhite@example.com', CURRENT_TIMESTAMP, 0),
(6, 'James Lee', 'jameslee789', 'password789', '303 Cedar St, Miami, USA', '1234567895', 'jameslee@example.com', CURRENT_TIMESTAMP, 0),
(7, 'Sophia Harris', 'sophiaharris123', 'password123', '404 Elm St, Houston, USA', '1234567896', 'sophiaharris@example.com', CURRENT_TIMESTAMP, 0),
(8, 'William Clark', 'williamclark456', 'password456', '505 Fir St, Dallas, USA', '1234567897', 'williamclark@example.com', CURRENT_TIMESTAMP, 0),
(9, 'Olivia Lewis', 'olivialewis789', 'password789', '606 Pineapple St, Phoenix, USA', '1234567898', 'olivialewis@example.com', CURRENT_TIMESTAMP, 0),
(10, 'Benjamin Scott', 'benjaminscott123', 'password123', '707 Elmwood St, San Francisco, USA', '1234567899', 'benjaminscott@example.com', CURRENT_TIMESTAMP, 0),
(11, 'Charlotte Young', 'charlotteyoung456', 'password456', '808 Maplewood St, Denver, USA', '1234567810', 'charlotteyoung@example.com', CURRENT_TIMESTAMP, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietgd`
--
ALTER TABLE `chitietgd`
  ADD PRIMARY KEY (`magd`,`masp`);

--
-- Indexes for table `danhmucsp`
--
ALTER TABLE `danhmucsp`
  ADD PRIMARY KEY (`madm`);

--
-- Indexes for table `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`magd`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`user_id`,`masp`),
  ADD KEY `fk_gh_sp` (`masp`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `fk_sp_dmsp` (`madm`);

--
-- Indexes for table `sanphamyeuthich`
--
ALTER TABLE `sanphamyeuthich`
  ADD PRIMARY KEY (`user_id`,`masp`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmucsp`
--
ALTER TABLE `danhmucsp`
  MODIFY `madm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `giaodich`
--
ALTER TABLE `giaodich`
  MODIFY `magd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `fk_gh_sp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`),
  ADD CONSTRAINT `fk_gh_tv` FOREIGN KEY (`user_id`) REFERENCES `thanhvien` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sp_dmsp` FOREIGN KEY (`madm`) REFERENCES `danhmucsp` (`madm`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
