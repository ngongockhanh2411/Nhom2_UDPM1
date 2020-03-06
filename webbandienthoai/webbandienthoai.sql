-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 04, 2020 lúc 04:04 PM
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
  `thutu` int(110) NOT NULL,
  `noibat` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsp`
--

INSERT INTO `chitietsp` (`id_sp`, `tensp`, `hinhanh`, `gia`, `mota`, `id_loaisp`, `thutu`, `noibat`) VALUES
(6, 'Sam Sung', 'ss10.jpg', 6990000, 'Sam sung moi', 16, 0, b'1'),
(7, 'iPhone 11', 'images.jpg', 26000000, ' iPhone moi', 17, 0, b'1'),
(8, 'OPPO', 'oppo-a5-2020-1-400x460.png', 4690000, '       ddt moi', 21, 0, NULL),
(9, 'Xiaomi', 'xiaomi-mi-note-10-pro-black-600x600.jpg', 6290000, '   Ä‘iá»‡n thoáº¡i tÃ u khá»±a', 22, 0, b'1'),
(10, 'Samsung Galaxy Fold', 'samsung-galaxy-fold-black-600x600.jpg', 50000000, 'Sau ráº¥t nhiá»u chá» Ä‘á»£i thÃ¬ Samsung Galaxy Fold - chiáº¿c smartphone mÃ n hÃ¬nh gáº­p Ä‘áº§u tiÃªn cá»§a Samsung cÅ©ng Ä‘Ã£ chÃ­nh thá»©c trÃ¬nh lÃ ng vá»›i thiáº¿t káº¿ má»›i láº¡.', 23, 0, NULL),
(11, 'Samsung Galaxy S20 Ultra', 'samsung-galaxy-s20-ultra-600x600-1-600x600.jpg', 29990000, 'Samsung Galaxy S20 Ultra', 23, 0, NULL),
(12, 'Äiá»‡n thoáº¡i iPhone 11 Pro Max 512GB', 'iphone-11-pro-max-512gb-gold-400x460.png', 35000000, 'Äiá»‡n thoáº¡i iPhone 11 Pro Max 512GB\r\n', 17, 0, b'1'),
(13, 'Vivo V17 Pro', 'vivo-v17-pro-blue-noo-600x600.jpg', 16000000, 'ThÃ´ng sá»‘ ká»¹ thuáº­t\r\nMÃ n hÃ¬nh:	Super AMOLED, 6.44\", Full HD+\r\nHá»‡ Ä‘iá»u hÃ nh:	Android 9.0 (Pie)\r\nCamera sau:	ChÃ­nh 48 MP & Phá»¥ 8 MP, 2 MP, 2 MP\r\nCamera trÆ°á»›c:	ChÃ­nh 32 MP & Phá»¥ 8 MP\r\nCPU:	Snapdragon 675 8 nhÃ¢n\r\nRAM:	8 GB\r\nBá»™ nhá»› trong:	128 GB\r\nTháº» SIM:\r\n2 Nano SIM, Há»— trá»£ 4G\r\nHOTSIM BÃ¹m Data 120 (1GB/ngÃ y)\r\nDung lÆ°á»£ng pin:	4100 mAh, cÃ³ sáº¡c nhanh', 24, 0, NULL),
(15, 'Äiá»‡n thoáº¡i iPhone 8 Plus 64GB', 'iphone-8-plus-1-400x460.png', 11000000, 'Äiá»‡n thoáº¡i iPhone 8 Plus 64gb Ä‘iá»‡n thoáº¡i iPhone 8 Plus 64GB', 17, 0, b'1'),
(16, 'OPPO Reno 2', 'oppo-reno-2-pink-400x460.png', 5690000, ' Äiá»‡n thoáº¡i OPPO Reno2\r\nÄiá»‡n thoáº¡i OPPO Reno2', 21, 0, NULL),
(17, 'OPPO F11 Pro', 'oppo-f11-pro-128gb-400x460.png', 7990000, ' Äiá»‡n thoáº¡i OPPO F11 Pro 128GB', 21, 0, b'1'),
(18, ' Xiaomi Mi Note 10', 'xiaomi-mi-note-10-white-400x460.png', 6790000, 'Äiá»‡n thoáº¡i Xiaomi Mi Note 10', 22, 0, NULL),
(19, 'Vivo V15 128GB', 'vivo-v15-quanghai-400x460.png', 4500000, 'Äiá»‡n thoáº¡i Vivo V15 128GB', 24, 0, NULL),
(20, 'iPhone 7 Plus 32GB', 'iphone-7-plus-gold-400x460-400x460.png', 6400000, 'Äiá»‡n thoáº¡i iPhone 7 Plus 32GB', 17, 0, b'1');

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
('khanh3', '123456', 'khanhvieng9@gmail.com', 966051244, 'VÄ©nh Kiá»u Äá»“ng NguyÃªn Tá»« SÆ¡n Báº¯c ninh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `hinhanhsp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_sp`, `hinhanhsp`) VALUES
(1, 15, '636614727176851624_iphone--8-plus-red-11583246770.png'),
(2, 15, 'iphone-8-plus-64gb-mau-do-red-didongviet_3_1_11583246770.jpg'),
(3, 15, 'iphone-8-plus-silver1583246770.jpg'),
(4, 15, 'táº£i xuá»‘ng1583246770.jpg'),
(5, 15, '636614727176851624_iphone--8-plus-red-11583246782.png'),
(6, 15, 'iphone-8-plus-64gb-mau-do-red-didongviet_3_1_11583246782.jpg'),
(8, 15, 'táº£i xuá»‘ng1583246782.jpg'),
(9, 12, 'thay-kinh-lung-iphone-11-pro-max_15711127921583247330.jpg'),
(10, 7, '111583247344.jpg'),
(11, 7, '637037994666842981_iphone-11-11583247344.jpg'),
(12, 12, 'táº£i xuá»‘ng (1)1583248015.jpg'),
(13, 12, 'unnamed1583248015.jpg');

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
(17, 'iPhone', 12),
(21, 'OPPO', 10),
(22, 'Xiaomi', 1),
(23, 'Sam Sung', 100),
(24, 'VIVO', 121);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idsanpham` int(11) NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `masp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `giadexuat` float NOT NULL,
  `giagiam` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `loaisp` int(11) NOT NULL,
  `nhasx` int(11) NOT NULL,
  `tinhtrang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noibat` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsanpham`, `tensp`, `masp`, `hinhanh`, `giadexuat`, `giagiam`, `soluong`, `loaisp`, `nhasx`, `tinhtrang`, `noidung`, `noibat`) VALUES
(37, 'iphone 7', 'M01', 'iphone-7-plus-red-128gb-400x460.png', 89, 89, 1, 5, 4, '1', 'rrrrrrr', NULL),
(38, 'Macbook Pro', 'M50', 'featured-section-new-to-imac_2x.jpg', 500000, 39, 1, 9, 3, '1', '<p>Ä‘áº¹p</p>', NULL),
(39, 'iphone 7', 'M50', 'iphone-7-plus-red-128gb-400x460.png', 3200000, 39, 1, 12, 3, '1', '<p>Ä‘áº¹p</p>', NULL),
(40, 'Laptop Core ', 'M50', '5190001_sa (1).jpg', 1800000, 39, 1, 10, 1, '1', '<p>Ä‘áº¹p</p>', NULL),
(44, 'Oppo F3 plus', 'f3plus', 'oppo-f3-plus-pp-300x300.jpg', 230000, 89, 5, 11, 4, '1', '<p>Ä‘áº¹p</p>', NULL),
(45, 'iphone 5 plus 256GB', 'ip5', 'iphone-7-plus-256gb-300x300.jpg', 24000, 60, 6, 11, 3, '1', '<p>Ä‘áº¹p</p>', NULL),
(47, 'Sony 9', 'm8', 'sony-xperia-xzs-400x460.png', 180000, 8, 4, 11, 1, '1', '<p>Äáº¹p</p>', NULL),
(48, 'Sony 9', 'm8', 'sony-xperia-xzs-400x460.png', 20000, 8, 4, 11, 1, '1', '<p>Äáº¹p</p>', NULL),
(65, 'Phá»¥ Kiá»‡n Bá»™ Combo cÃ¡p + Sáº¡c iphone 4', 'h7', 'znp1369155325-150x150.jpg', 199900, 60, 4, 2, 1, '1', '<p>Äáº¹p</p>', NULL),
(66, 'Phá»¥ Kiá»‡n Bá»™ combo CÃ¡p + Sáº¡c iPad 2/3/4', 'y7', '7-700x390.jpg', 299000, 199, 3, 2, 4, '1', '<p>Äáº¹p</p>', NULL),
(67, 'Phá»¥ Kiá»‡n Bá»™ Combo CÃ¡p + Sáº¡c iPhone 5/6/6+ ( Pisen)', 'j8', 'znp1369155325-150x150.jpg', 249900, 199, 6, 2, 1, '1', '<p>Äáº¹p</p>', NULL),
(68, 'Bao da Clear View Galaxy S8 Plus Standing 2017 chÃ­nh hÃ£ng ', 'b6', 'timthumb (1).jpg', 849000, 699, 2, 4, 4, '1', '<p>Äáº¹p</p>', NULL),
(69, 'Bao da Clear View Galaxy S8 Plus Standing 2017 chÃ­nh hÃ£ng ', 'b6', 'timthumb (2).jpg', 679000, 699, 2, 4, 8, '1', '<p>Äáº¹p</p>', NULL),
(70, 'Bao da Clear View Galaxy S8 Plus Standing 2017 chÃ­nh hÃ£ng ', 'b6', 'timthumb.jpg', 779000, 699, 2, 4, 7, '1', '<p>Äáº¹p</p>', NULL),
(71, 'Gáº­y tá»± sÆ°á»›ng mini lÃ³t ná»‰', 'k8', 'gay ts gap gon dau 5_200x200.jpg', 400000, 30, 6, 8, 1, '1', '<p>Äáº¹p</p>', NULL),
(72, 'Gáº­y tá»± sÆ°á»›ng mini lÃ³t ná»‰', 'k8', 'gay tu suong mini 2_200x200.jpg', 40000, 30, 6, 8, 1, '1', '<p>Äáº¹p</p>', NULL),
(73, 'Gáº­y tá»± sÆ°á»›ng mini lÃ³t ná»‰', 'k8', '3112575548_1184480815_200x200.jpg', 60000, 30, 6, 8, 1, '1', '<p>Äáº¹p</p>', NULL),
(74, 'Pin Äiá»‡n Thoáº¡i Lg Blt6', 'p7', 'image-5763535-574477648cb589dfd49642531b777ca5-product.jpg', 159000, 149, 0, 9, 5, '1', '<p>Äáº¹p</p>', NULL),
(75, 'Pin Äiá»‡n Thoáº¡i Lg Blt6', 'p7', 'image-6282355-202a86ba4c35ce1b5941fab448818358-product.jpg', 179000, 149, 2, 9, 7, '1', '<p>Äáº¹p</p>', NULL),
(76, 'Pin Äiá»‡n Thoáº¡i Lg Blt6', 'p7', 'image-7576025-31419a2ed9a0cb8fb604b2f1590a52e7-product.jpg', 189000, 149, 2, 9, 7, '1', '<p>Äáº¹p</p>', NULL),
(77, 'Pin Äiá»‡n Thoáº¡i Lg Blt6', 'p7', 'image-9776025-284b2d6e9c4f8a725360e92b737582f7-product.jpg', 215000, 149, 2, 9, 9, '1', '<p>Äáº¹p</p>', NULL),
(78, 'Sáº C Dá»° PHÃ’NG GENAI TRáº®NG', 'j8', '0a7-sac-du-phong-romoss-polymoss-10000mah-gia-re.jpg', 199000, 189, 3, 10, 9, '1', '<p>Äáº¹p</p>', NULL),
(79, 'Sáº C Dá»° PHÃ’NG GENAI TRáº®NG 10.000MAH', 'j8', '797-sac-du-phong-genai-trang-10000mah-gia-re.jpg', 1990000, 189, 3, 10, 8, '1', '<p>Äáº¹p</p>', NULL),
(80, 'Sáº C Dá»° PHÃ’NG GENAI TRáº®NG 10.000MAH', 'j8', 'd8e-pin-sac-xiaomi-10000mah-gen-2-gia-re.jpg', 159000, 189, 3, 10, 8, '1', '<p>Äáº¹p</p>', NULL),
(81, 'Sáº C Dá»° PHÃ’NG GENAI TRáº®NG 10.000MAH', 'j8', 'd8e-pin-sac-xiaomi-10000mah-gen-2-gia-re.jpg', 1290000, 189, 3, 10, 10, '1', '<p>Äáº¹p</p>', NULL),
(82, 'Bá»™ Sáº¡c T2H5', 'b6', '2.jpg', 199000, 199, 0, 13, 1, '1', '<p>Äáº¹p</p>', NULL),
(83, 'Bá»™ Sáº¡c T2H5', 'b6', '3.jpg', 199000, 199, 0, 13, 1, '1', '<p>Äáº¹p</p>', NULL),
(85, 'Canon EOS-1D X', 'canon', 'canon-eos-1d-x-1-1-min.jpg', 12000000, 12000000, 6, 22, 1, '1', '<p>Sáº£n pháº«m h&agrave;ng ch&iacute;nh h&atilde;ng v&agrave; ráº¥t l&agrave; Ä‘áº¹p.</p>', NULL),
(86, 'Canon EOS 6D', 'canon 6d', '3-4a620da2-d3d1-46b3-82b7-6522066a48ed.jpg', 27000000, 27000000, 6, 22, 1, '1', '<p>Äáº¹p</p>', NULL),
(88, 'Macbook pro 2017', 'mp67', 'download (1).jpg', 22000000, 19000000, 100, 24, 14, '1', '<p>Macbook pro qu&aacute; Ä‘áº¹p ,nhÆ°ng qu&aacute; máº¯c.</p>', NULL),
(89, 'Tai nghe head', 'r45', '2.jpg', 70000, 68000, 6, 18, 13, '1', '<p>Tai nghe cá»±c Ä‘áº¹p</p>', NULL),
(90, '', '', '', 0, 0, 0, 2, 1, '1', '', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietsp`
--
ALTER TABLE `chitietsp`
  ADD PRIMARY KEY (`id_sp`);

--
-- Chỉ mục cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`id_loaisp`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsanpham`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietsp`
--
ALTER TABLE `chitietsp`
  MODIFY `id_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `id_loaisp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
