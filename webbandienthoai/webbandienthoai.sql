-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2020 at 02:58 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webbandienthoai`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(0, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `chitietsp`
--

CREATE TABLE `chitietsp` (
  `id_sp` int(11) NOT NULL,
  `tensp` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` int(100) NOT NULL,
  `mota` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_loaisp` int(110) NOT NULL,
  `thutu` int(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitietsp`
--

INSERT INTO `chitietsp` (`id_sp`, `tensp`, `hinhanh`, `gia`, `mota`, `id_loaisp`, `thutu`) VALUES
(6, 'Sam Sung', 'ss10.jpg', 200000, 'Sam sung moiws', 16, 0),
(7, 'iPhone 11', 'images.jpg', 25000, ' iPhone moi', 17, 0),
(8, 'OPPO', 'oppo-a5-2020-1-400x460.png', 3000, '       ddt moi', 21, 0),
(9, 'Xiaomi', 'xiaomi-mi-note-10-pro-black-600x600.jpg', 120000, '   Ä‘iá»‡n thoáº¡i tÃ u khá»±a', 22, 0),
(10, 'Samsung Galaxy Fold', 'samsung-galaxy-fold-black-600x600.jpg', 50000, 'Sau ráº¥t nhiá»u chá» Ä‘á»£i thÃ¬ Samsung Galaxy Fold - chiáº¿c smartphone mÃ n hÃ¬nh gáº­p Ä‘áº§u tiÃªn cá»§a Samsung cÅ©ng Ä‘Ã£ chÃ­nh thá»©c trÃ¬nh lÃ ng vá»›i thiáº¿t káº¿ má»›i láº¡.', 23, 0),
(11, 'Samsung Galaxy S20 Ultra', 'samsung-galaxy-s20-ultra-600x600-1-600x600.jpg', 30000, 'Samsung Galaxy S20 Ultra', 23, 0),
(12, 'Äiá»‡n thoáº¡i iPhone 11 Pro Max 512GB', 'iphone-11-pro-max-512gb-gold-400x460.png', 35000, 'Äiá»‡n thoáº¡i iPhone 11 Pro Max 512GB\r\n', 17, 0),
(13, 'Vivo V17 Pro', 'vivo-v17-pro-blue-noo-600x600.jpg', 16000, 'ThÃ´ng sá»‘ ká»¹ thuáº­t\r\nMÃ n hÃ¬nh:	Super AMOLED, 6.44\", Full HD+\r\nHá»‡ Ä‘iá»u hÃ nh:	Android 9.0 (Pie)\r\nCamera sau:	ChÃ­nh 48 MP & Phá»¥ 8 MP, 2 MP, 2 MP\r\nCamera trÆ°á»›c:	ChÃ­nh 32 MP & Phá»¥ 8 MP\r\nCPU:	Snapdragon 675 8 nhÃ¢n\r\nRAM:	8 GB\r\nBá»™ nhá»› trong:	128 GB\r\nTháº» SIM:\r\n2 Nano SIM, Há»— trá»£ 4G\r\nHOTSIM BÃ¹m Data 120 (1GB/ngÃ y)\r\nDung lÆ°á»£ng pin:	4100 mAh, cÃ³ sáº¡c nhanh', 24, 0),
(14, 'Äiá»‡n thoáº¡i iPhone Xs Max 64GB', 'iphone-xs-max-gold-400x460.png', 16000, 'HoÃ n toÃ n xá»©ng Ä‘Ã¡ng vá»›i nhá»¯ng gÃ¬ Ä‘Æ°á»£c mong chá», phiÃªn báº£n cao cáº¥p nháº¥t iPhone Xs Max 64 GB cá»§a Apple nÄƒm nay ná»•i báº­t vá»›i chip A12 Bionic máº¡nh máº½, mÃ n hÃ¬nh rá»™ng Ä‘áº¿n 6.5 inch, cÃ¹ng camera kÃ©p trÃ­ tuá»‡ nhÃ¢n táº¡o vÃ  Face ID Ä‘Æ°á»£c nÃ¢ng cáº¥p.', 17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dangky`
--

CREATE TABLE `dangky` (
  `tenkhachhang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dangky`
--

INSERT INTO `dangky` (`tenkhachhang`, `matkhau`, `email`, `dienthoai`, `diachi`) VALUES
('khanh12', '123456', 'khanh@gmail.com', 123, 'Vkbn'),
('khanh123', '123456', 'khanhvieng9@gmail.com', 966051244, 'VÄ©nh Kiá»u Äá»“ng NguyÃªn Tá»« SÆ¡n Báº¯c ninh'),
('khanh1234', '123456', 'khanhvieng9@gmail.com', 966051244, 'VÄ©nh Kiá»u Äá»“ng NguyÃªn Tá»« SÆ¡n Báº¯c ninh'),
('admin1', '123456', 'khanhvieng9@gmail.com', 966051244, 'VÄ©nh Kiá»u Äá»“ng NguyÃªn Tá»« SÆ¡n Báº¯c ninh'),
('khanh99', '123456', 'khanh@gmail.com', 123456, 'BN'),
('khanh999', '123456', 'khanhvieng9@gmail.com', 966051244, 'VÄ©nh Kiá»u Äá»“ng NguyÃªn Tá»« SÆ¡n Báº¯c ninh'),
('khanh3', '123456', 'khanhvieng9@gmail.com', 966051244, 'VÄ©nh Kiá»u Äá»“ng NguyÃªn Tá»« SÆ¡n Báº¯c ninh');

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE `loaisp` (
  `id_loaisp` int(11) NOT NULL,
  `tenloaisp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thutu` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`id_loaisp`, `tenloaisp`, `thutu`) VALUES
(17, 'iPhone', 12),
(21, 'OPPO', 10),
(22, 'Xiaomi', 1),
(23, 'Sam Sung', 100),
(24, 'VIVO', 121);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietsp`
--
ALTER TABLE `chitietsp`
  ADD PRIMARY KEY (`id_sp`);

--
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`id_loaisp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietsp`
--
ALTER TABLE `chitietsp`
  MODIFY `id_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `id_loaisp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
