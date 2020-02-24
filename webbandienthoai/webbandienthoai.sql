-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 23, 2020 lúc 05:16 PM
-- Phiên bản máy phục vụ: 10.1.32-MariaDB
-- Phiên bản PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbandienthoai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(0, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsp`
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
-- Đang đổ dữ liệu cho bảng `chitietsp`
--

INSERT INTO `chitietsp` (`id_sp`, `tensp`, `hinhanh`, `gia`, `mota`, `id_loaisp`, `thutu`) VALUES
(6, 'Sam Sung', 'ss10.jpg', 5000000, 'Sam sung moiws', 16, 0),
(8, 'OPPO', 'oppo-a5-2020-1-400x460.png', 4290000, '       ddt moi', 21, 0),
(10, 'Samsung Galaxy Fold', 'samsung-galaxy-fold-black-600x600.jpg', 50000000, ' Sau ráº¥t nhiá»u chá» Ä‘á»£i thÃ¬ Samsung Galaxy Fold - chiáº¿c smartphone mÃ n hÃ¬nh gáº­p Ä‘áº§u tiÃªn cá»§a Samsung cÅ©ng Ä‘Ã£ chÃ­nh thá»©c trÃ¬nh lÃ ng vá»›i thiáº¿t káº¿ má»›i láº¡.', 23, 0),
(11, 'Samsung Galaxy S20 Ultra', 'samsung-galaxy-s20-ultra-600x600-1-600x600.jpg', 25000000, 'Samsung Galaxy S20 Ultra', 23, 0),
(12, ' iPhone 11 Pro Max 512GB', 'iphone-11-pro-max-512gb-gold-400x460.png', 43990000, '  Äiá»‡n thoáº¡i iPhone 11 Pro Max 512GB nÄƒm nay sá»­ dá»¥ng chip Apple A13 Bionic má»›i nháº¥t, nhanh vÃ  tiáº¿t kiá»‡m Ä‘iá»‡n hÆ¡n so vá»›i A12 nÄƒm ngoÃ¡i.\r\n', 17, 0),
(13, 'Vivo V17 Pro', 'vivo-v17-pro-blue-noo-600x600.jpg', 16000000, 'ThÃ´ng sá»‘ ká»¹ thuáº­t\r\nMÃ n hÃ¬nh:	Super AMOLED, 6.44\", Full HD+\r\nHá»‡ Ä‘iá»u hÃ nh:	Android 9.0 (Pie)\r\nCamera sau:	ChÃ­nh 48 MP & Phá»¥ 8 MP, 2 MP, 2 MP\r\nCamera trÆ°á»›c:	ChÃ­nh 32 MP & Phá»¥ 8 MP\r\nCPU:	Snapdragon 675 8 nhÃ¢n\r\nRAM:	8 GB\r\nBá»™ nhá»› trong:	128 GB\r\nTháº» SIM:\r\n2 Nano SIM, Há»— trá»£ 4G\r\nHOTSIM BÃ¹m Data 120 (1GB/ngÃ y)\r\nDung lÆ°á»£ng pin:	4100 mAh, cÃ³ sáº¡c nhanh', 24, 0),
(14, 'Äiá»‡n thoáº¡i iPhone Xs Max 64GB', 'iphone-xs-max-gold-400x460.png', 22000000, '   HoÃ n toÃ n xá»©ng Ä‘Ã¡ng vá»›i nhá»¯ng gÃ¬ Ä‘Æ°á»£c mong chá», phiÃªn báº£n cao cáº¥p nháº¥t iPhone Xs Max 64 GB cá»§a Apple nÄƒm nay ná»•i báº­t vá»›i chip A12 Bionic máº¡nh máº½, mÃ n hÃ¬nh rá»™ng Ä‘áº¿n 6.5 inch, cÃ¹ng camera kÃ©p trÃ­ tuá»‡ nhÃ¢n táº¡o vÃ  Face ID Ä‘Æ°á»£c nÃ¢ng cáº¥p.', 17, 0),
(15, 'OPPO A5S', 'a5s.png', 3290000, 'OPPO A5s chÃ­nh hÃ£ng lÃ  má»™t Ä‘iá»‡n thoáº¡i thÃ´ng minh tuyá»‡t vá»i, Ä‘Æ°á»£c trang bá»‹ ráº¥t nhiá»u tÃ­nh nÄƒng máº¡nh máº½. MÃ¡y cÃ³ má»™t mÃ n hÃ¬nh lá»›n, mÃ¡y áº£nh selfie vÃ  quay video sáº¯c nÃ©t, dung lÆ°á»£ng pin cao vÃ  giÃ¡ bÃ¡n pháº£i chÄƒng.', 21, 0),
(16, 'Xiaomi Note 10Pro  8GB-256GB', 'download.jpg', 13990000, '  SiÃªu pháº©m táº§m trung Xiaomi Mi Note 10 Pro, chiáº¿c smartphone Ä‘áº§u tiÃªn sá»Ÿ há»¯u á»‘ng kÃ­nh Ä‘á»™ phÃ¢n giáº£i 108 MP cÃ¹ng há»‡ thá»‘ng 5 camera Ä‘á»™c Ä‘Ã¡o, cÃ´ng nghá»‡ sáº¡c siÃªu nhanh 30W Ä‘i kÃ¨m nhiá»u tÃ­nh nÄƒng ná»•i trá»™i khÃ¡c', 22, 0),
(17, 'Xiaomi Redmi Note 8 Pro (6GB/64GB)', 'xiaomi-redmi-note-8-pro-white-400x460.png', 5690000, '  Xiaomi Redmi Note 8 Pro lÃ  chiáº¿c smartphone há»©a háº¹n sáº½ gÃ¢y bÃ£o trong thá»i gian tá»›i, khi cÃ³ váº» ngoÃ i áº¥n tÆ°á»£ng vÃ  Ä‘Æ°á»£c cáº£i tiáº¿n máº¡nh máº½ vá» cáº¥u hÃ¬nh bÃªn trong', 22, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangky`
--

CREATE TABLE `dangky` (
  `tenkhachhang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dangky`
--

INSERT INTO `dangky` (`tenkhachhang`, `matkhau`, `email`, `dienthoai`, `diachi`) VALUES
('khanh12', '123456', 'khanh@gmail.com', 123, 'Vkbn'),
('khanh123', '123456', 'khanhvieng9@gmail.com', 966051244, 'VÄ©nh Kiá»u Äá»“ng NguyÃªn Tá»« SÆ¡n Báº¯c ninh'),
('khanh1234', '123456', 'khanhvieng9@gmail.com', 966051244, 'VÄ©nh Kiá»u Äá»“ng NguyÃªn Tá»« SÆ¡n Báº¯c ninh'),
('admin1', '123456', 'khanhvieng9@gmail.com', 966051244, 'VÄ©nh Kiá»u Äá»“ng NguyÃªn Tá»« SÆ¡n Báº¯c ninh'),
('khanh99', '123456', 'khanh@gmail.com', 123456, 'BN'),
('khanh999', '123456', 'khanhvieng9@gmail.com', 966051244, 'VÄ©nh Kiá»u Äá»“ng NguyÃªn Tá»« SÆ¡n Báº¯c ninh'),
('khanh3', '123456', 'khanhvieng9@gmail.com', 966051244, 'VÄ©nh Kiá»u Äá»“ng NguyÃªn Tá»« SÆ¡n Báº¯c ninh'),
('Tieu0911', '1', 'tranbaokhanh0911@gmail.com', 369631854, 'HÃ  Ná»™i'),
('a', '1', 'b', 3, 'c2'),
('1', '2', '3', 5, '4'),
('Tráº§n Báº£o KhÃ¡nh', '1', 'tranbaokhanh0911@gmail.com', 369631854, 'HÃ  Ná»™i'),
('TiÃªu Háº¡', '1', 'tranbaokhanh0911@gmail.com', 369631854, 'HÃ  Ná»™i');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

CREATE TABLE `loaisp` (
  `id_loaisp` int(11) NOT NULL,
  `tenloaisp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thutu` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`id_loaisp`, `tenloaisp`, `thutu`) VALUES
(17, 'iPhone', 1),
(21, 'OPPO', 2),
(22, 'Xiaomi', 3),
(23, 'Sam Sung', 4),
(24, 'VIVO', 5);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietsp`
--
ALTER TABLE `chitietsp`
  ADD PRIMARY KEY (`id_sp`);

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`id_loaisp`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietsp`
--
ALTER TABLE `chitietsp`
  MODIFY `id_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `id_loaisp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
