-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2020 at 05:52 AM
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
-- Database: `qlsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaCTHD` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaHD` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaHH` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hanghoa`
--

CREATE TABLE `hanghoa` (
  `MaHH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenHH` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int(11) NOT NULL,
  `Hinh` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hanghoa`
--

INSERT INTO `hanghoa` (`MaHH`, `TenHH`, `DonGia`, `Hinh`) VALUES
('OTO00', 'Ford68', 1000, 'Ford68.png'),
('OTO01', 'Toyota Wigo', 600, 'Wigo.png'),
('OTO02', 'Mazda 2020', 400, 'Mazda2020.png'),
('SCO00', 'Honda Dream', 200, 'Dream.png'),
('SCO01', 'Vision 2013', 100, 'Vision2013.png'),
('TANK00', 'T54 843', 3000, 'T54.png'),
('TANK01', 'M1A1 Abrams', 2000, 'M1A1.png'),
('XLAN00', 'Lucass X79Z', 400, 'XLan00.png'),
('XLAN01', 'Lucass X7', 500, 'XLan01.png'),
('XLAN02', 'TM060', 600, 'XLan02.png');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLapHD` datetime NOT NULL,
  `MaKH` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TongTien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `HoTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `HoTen`, `DienThoai`, `Email`) VALUES
('GUEST', 'Guest', '123456789', 'guest@mail'),
('KH00', 'Duong Tien', '37242344', 'tien@email.com'),
('KH01', 'Thanh Phung', '7436214', 'phungtung@email.com'),
('KH02', 'Gia Phat', '089432475', 'phatjsd@email.com'),
('KH03', 'Nhut Minh Phung', '231566424', 'MinhPh@email.com'),
('KH04', 'Phan Nhat Minh', '32475954', 'PhNhMinh@email.com'),
('KH05', 'Doan Minh Tan', '32485564', 'tanmin@email.com'),
('KH06', 'Duong Gia Bao', '34235623', 'dgbaogia@email.com'),
('KH07', 'Michael De Santa', '7684443', 'miceldes@email.com'),
('KH08', 'Trevor Phillips', '43742375', 'trephilips@email.com'),
('KH09', 'Franklin Clinton', '6542380', 'frankclinton@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

CREATE TABLE `loai` (
  `MaLoai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenLoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MOTA` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`MaLoai`, `TenLoai`, `MOTA`) VALUES
('LXE00', 'Ô tô', 'Ô tô con 4 - 6 chỗ'),
('LXE01', 'Xe tải', 'Xe tải để vận tải'),
('LXE02', 'Xe bán tải', 'Xe gia đình, du lịch'),
('LXE03', 'Xe thể thao', 'Tốc độ cao'),
('LXE04', 'Xe gắn máy', 'Xe nhỏ, tối đa 2 người'),
('LXE05', 'Xe PKL', 'Xe máy phân khối lớn'),
('LXE06', 'Xe đạp', 'Sử dụng cơ chân để di chuyển'),
('LXE07', 'Xe tăng', 'Hỏa lực cao, di chuyển chậm'),
('LXE08', 'Xe lăn', 'Rất phổ biến với người tật nguyền'),
('LXE09', 'Xe đạp điện', 'hiện đại hơn xe đạp'),
('LXE10', 'Xe cẩu', 'Dùng để cẩu xe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MaCTHD`),
  ADD KEY `MaHD` (`MaHD`),
  ADD KEY `MaHH` (`MaHH`);

--
-- Indexes for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`MaHH`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaHH`) REFERENCES `hanghoa` (`MaHH`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
