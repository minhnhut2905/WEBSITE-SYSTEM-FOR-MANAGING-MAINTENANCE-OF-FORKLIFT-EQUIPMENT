-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 29, 2023 lúc 04:27 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlythietbi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id_admin_roles` int(10) UNSIGNED NOT NULL,
  `admin_admin_id` int(11) NOT NULL,
  `role_id_roles` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_19_124436_create_tbl_admin_table', 1),
(6, '2023_03_20_042302_create_tbl_catagory_products', 1),
(7, '2023_03_20_131123_create_tbl_brand', 1),
(8, '2023_03_20_141327_create_tbl_product', 1),
(9, '2023_03_21_085549_create_tbl_nhanvien', 1),
(10, '2023_03_25_082419_create_tbl_customer', 1),
(11, '2023_03_25_093613_create_tbl_devices', 1),
(12, '2023_03_29_130945_create_roles_table', 1),
(13, '2023_03_29_131024_create_permissions_table', 1),
(14, '2023_03_29_131155_create_tbl_user_role', 1),
(15, '2023_03_29_131228_create_tbl_permission_role', 1),
(16, '2023_04_03_104749_create_tbl_admin_role', 2),
(17, '2023_04_03_111925_create_admin_role', 3),
(18, '2023_04_03_112247_create_admin_roles', 4),
(19, '2023_04_03_113759_create_tbl_lichbaotri', 5),
(20, '2023_04_03_140040_create_tbl_phancongcongviec', 6),
(21, '2023_04_06_075623_create_tbl_phieukhaosat', 7),
(22, '2023_04_08_083637_create_tbl__services', 8),
(23, '2023_04_09_101534_create_tbl_chitietphieukhaosat', 9),
(24, '2023_04_11_070827_create_tbl_phieukhaosat', 10),
(25, '2023_04_15_085137_create_tbl_phieubaotri', 11),
(26, '2023_04_15_090745_create_tbl_chitietphieubaotri', 11),
(27, '2023_04_19_101806_create_tbl_phieubaogia', 12),
(28, '2023_04_19_102347_create_tbl_chitietphieubaogialinhkien', 13),
(29, '2023_04_19_102825_create_tbl_chitietphieubaogiadichvu', 14),
(30, '2023_04_21_114809_create_tbl_chitietphieubaogia', 15),
(31, '2023_04_23_113313_create_tbl_hoadon', 16),
(32, '2023_04_23_113338_create_tbl_chitiethoadondichvu', 16),
(33, '2023_04_23_113346_create_tbl_chitiethoadonlinhkien', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `admin_hinhanh` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `matkhau`, `role`, `hoten`, `admin_hinhanh`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'luuminhnhut0411@gmail.com', '$2y$10$cgEn2uVKDvY4JBM2DjwBAO8FIa5i//V62Xnd/oh6E9ntL96ks2./W', 0, 'Lưu Minh Nhựt', '34CCC3EF-D9B5-4182-AAB6-2979D19DEE4D5.jpg', '0366676704', NULL, NULL),
(2, 'nguyenvana21@gmail.com', '$2y$10$ehGg1UlX9SS9.SbFvN9hS.B6jQwpvZoGxHh4OQcDcRzPYJPGENfcK', 1, 'Nguyễn Tấn Đức', 'IMGS (21)4.jpg', '0265487562', NULL, NULL),
(3, 'tnathu_20vn2@students.agu.edu.vn', '$2y$10$m9VZ3ea1a.ab6mWADfeCY.ioXpjz0a.I04I7AHGPou9qBjlKwOq9m', 2, 'Trần Ngọc Anh Thư', '331141369_576486207729201_2226640153226191705_n78.jpg', '0379234691', NULL, NULL),
(5, 'taothao_20pm@student.agu.edu.vn', '$2y$10$26YjihDJkXmXLqha657g4uhDghFRXIWPC1r2SMS8hfIGGVtTtVIp.', 2, 'Tào Tháo', 'Nap_thung_dau_xe_nang80.jpg', '0364578827', NULL, NULL),
(6, 'hkngan_21nh2@student.agu.edu.vn', '$2y$10$d41i69ZNwY1zXYQGpPlAYOH2odcj36qmNt3gJV9.4hHYJPFcbdxD2', 1, 'Hà Kim Ngân', 'HkNgan16.jpeg', '0364578827', NULL, NULL),
(7, 'nttlinh0301@gmail.com', '$2y$10$S2SoSBqvMpGJjvEPrqjPDO.w699GLOvN/RLbkmjo3kp4jJnz0TOkW', 1, 'Nguyễn Thị Trúc Linh', '0A826CCD-625D-48FB-BE6E-28E0B9A6F8FD97.jpg', '0123456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_desc` text NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'KOMATSU', 'Nhật Bản', 0, NULL, NULL),
(2, 'NISSAN', 'Nhật Bản', 0, NULL, NULL),
(3, 'TOYOTA', 'Nhật Bản', 0, NULL, NULL),
(4, 'SONY', 'Nhật Bản', 0, NULL, NULL),
(5, 'UNI CARRIERS', 'Nhật Bản', 0, NULL, NULL),
(6, 'ROCKET', 'Nhật Bản', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_catagory_products`
--

CREATE TABLE `tbl_catagory_products` (
  `catagory_id` int(10) UNSIGNED NOT NULL,
  `catagory_name` varchar(255) NOT NULL,
  `catagory_desc` text NOT NULL,
  `catagory_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_catagory_products`
--

INSERT INTO `tbl_catagory_products` (`catagory_id`, `catagory_name`, `catagory_desc`, `catagory_status`, `created_at`, `updated_at`) VALUES
(1, 'Xe Nâng Tay', 'Xe Nâng Tay', 1, NULL, NULL),
(2, 'Xe Nâng Điện Ngồi Lái EP', 'Xe Nâng Điện Ngồi Lái EP', 1, NULL, NULL),
(3, 'Xe Nâng Qua Sử Dụng', 'Xe Nâng Qua Sử Dụng', 0, NULL, NULL),
(4, 'Phụ tùng xe nâng dầu xăng ga', 'Phụ tùng xe nâng dầu xăng ga', 0, NULL, NULL),
(5, 'Phụ tùng xe nâng điện', 'Phụ tùng xe nâng điện', 0, NULL, NULL),
(6, 'Xe Nâng', 'Xe Nâng', 0, NULL, NULL),
(7, 'HỆ THỐNG MÁY - ĐỘNG CƠ', 'HỆ THỐNG MÁY - ĐỘNG CƠ', 1, NULL, NULL),
(8, 'BODY AND STRUCTURE - KẾT CẤU XE', 'KẾT CẤU XE', 1, NULL, NULL),
(9, 'DRIVE UNIT - HỆ THỐNG CHẠY', 'DRIVE UNIT - HỆ THỐNG CHẠY', 1, NULL, NULL),
(10, 'WHEELS - BÁNH XE', 'WHEELS - BÁNH XE', 0, NULL, NULL),
(11, 'STEERENG -HỆ THỐNG LÁI', 'STEERENG -HỆ THỐNG LÁI', 1, NULL, NULL),
(12, 'BRAKES - HỆ THỐNG PHANH', 'BRAKES', 1, NULL, NULL),
(13, 'HỆ THỐNG THỦY LỰC', 'HỆ THỐNG THỦY LỰC', 0, NULL, NULL),
(14, 'HỆ THỐNG THỦY LỰC', 'HỆ THỐNG THỦY LỰC', 0, NULL, NULL),
(15, 'ĐỘNG CƠ & ĐỘNG CƠ ĐIỆN', 'ĐỘNG CƠ & ĐỘNG CƠ ĐIỆN', 0, NULL, NULL),
(16, 'BÌNH ẮC QUY', 'BÌNH ẮC QUY', 0, NULL, NULL),
(17, 'HỆ THỐNG ĐIỆN', 'HỆ THỐNG ĐIỆN', 1, NULL, NULL),
(18, 'HỆ THỐNG NÂNG', 'HỆ THỐNG NÂNG', 0, NULL, NULL),
(19, 'KIỂM TRA CHỨC NĂNG', 'KIỂM TRA CHỨC NĂNG', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chitiethoadondichvu`
--

CREATE TABLE `tbl_chitiethoadondichvu` (
  `id_chitiethoadondichvu` int(10) UNSIGNED NOT NULL,
  `id_hoadon` int(10) UNSIGNED NOT NULL,
  `id_dichvu` int(10) UNSIGNED NOT NULL,
  `giasuachua` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_chitiethoadondichvu`
--

INSERT INTO `tbl_chitiethoadondichvu` (`id_chitiethoadondichvu`, `id_hoadon`, `id_dichvu`, `giasuachua`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 50000, NULL, NULL),
(2, 1, 6, 50000, NULL, NULL),
(3, 1, 4, 50000, NULL, NULL),
(4, 1, 3, 50000, NULL, NULL),
(5, 1, 2, 50000, NULL, NULL),
(6, 1, 1, 50000, NULL, NULL),
(7, 1, 7, 350000, NULL, NULL),
(8, 1, 6, 350000, NULL, NULL),
(9, 1, 4, 100000, NULL, NULL),
(10, 1, 3, 350000, NULL, NULL),
(11, 1, 2, 250000, NULL, NULL),
(12, 1, 1, 100000, NULL, NULL),
(13, 1, 7, 350000, NULL, NULL),
(14, 1, 6, 350000, NULL, NULL),
(15, 1, 4, 100000, NULL, NULL),
(16, 1, 3, 350000, NULL, NULL),
(17, 1, 2, 250000, NULL, NULL),
(18, 1, 1, 100000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chitiethoadonlinhkien`
--

CREATE TABLE `tbl_chitiethoadonlinhkien` (
  `id_hoadonlinhkien` int(10) UNSIGNED NOT NULL,
  `id_hoadon` int(10) UNSIGNED NOT NULL,
  `id_linhkien` int(10) UNSIGNED NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `chiphiphatsinh` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_chitiethoadonlinhkien`
--

INSERT INTO `tbl_chitiethoadonlinhkien` (`id_hoadonlinhkien`, `id_hoadon`, `id_linhkien`, `soluong`, `gia`, `chiphiphatsinh`, `thanhtien`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 5, 1000000, 0, 5000000, NULL, NULL),
(2, 1, 5, 8, 150000, 0, 1200000, NULL, NULL),
(3, 1, 7, 4, 600000, 0, 2400000, NULL, NULL),
(4, 2, 8, 4, 50000, 0, 200000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chitietphieubaogiadichvu`
--

CREATE TABLE `tbl_chitietphieubaogiadichvu` (
  `id_chitietphieudichvu` int(10) UNSIGNED NOT NULL,
  `id_phieubaogia` int(10) UNSIGNED NOT NULL,
  `id_dichvu` int(10) UNSIGNED NOT NULL,
  `giasuachua` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_chitietphieubaogiadichvu`
--

INSERT INTO `tbl_chitietphieubaogiadichvu` (`id_chitietphieudichvu`, `id_phieubaogia`, `id_dichvu`, `giasuachua`, `created_at`, `updated_at`) VALUES
(25, 8, 7, 350000, NULL, NULL),
(26, 8, 6, 250000, NULL, NULL),
(27, 8, 4, 350000, NULL, NULL),
(28, 8, 3, 100000, NULL, NULL),
(29, 8, 2, 350000, NULL, NULL),
(30, 8, 1, 50000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chitietphieubaogialinhkien`
--

CREATE TABLE `tbl_chitietphieubaogialinhkien` (
  `id_chitietphieulinhkien` int(10) UNSIGNED NOT NULL,
  `id_phieubaogia` int(10) UNSIGNED NOT NULL,
  `id_linhkien` int(10) UNSIGNED NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `chiphiphatsinh` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_chitietphieubaogialinhkien`
--

INSERT INTO `tbl_chitietphieubaogialinhkien` (`id_chitietphieulinhkien`, `id_phieubaogia`, `id_linhkien`, `soluong`, `gia`, `chiphiphatsinh`, `thanhtien`, `created_at`, `updated_at`) VALUES
(20, 8, 9, 5, 500000, 0, 2500000, NULL, NULL),
(21, 8, 5, 4, 150000, 0, 600000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chitietphieukhaosat`
--

CREATE TABLE `tbl_chitietphieukhaosat` (
  `id_phieukhaosat` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `kiemtra` tinyint(1) NOT NULL DEFAULT 0,
  `suachua` tinyint(1) NOT NULL DEFAULT 0,
  `yeucauthaythe` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_chitietphieukhaosat`
--

INSERT INTO `tbl_chitietphieukhaosat` (`id_phieukhaosat`, `service_id`, `kiemtra`, `suachua`, `yeucauthaythe`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 1, 0, NULL, NULL),
(1, 2, 1, 1, 1, NULL, NULL),
(1, 3, 1, 1, 0, NULL, NULL),
(1, 4, 1, 1, 0, NULL, NULL),
(1, 6, 1, 1, 0, NULL, NULL),
(4, 1, 0, 1, 0, NULL, NULL),
(4, 2, 0, 1, 0, NULL, NULL),
(4, 3, 0, 1, 1, NULL, NULL),
(4, 4, 1, 1, 0, NULL, NULL),
(4, 6, 0, 1, 0, NULL, NULL),
(6, 1, 1, 0, 1, NULL, NULL),
(6, 2, 1, 1, 0, NULL, NULL),
(6, 3, 1, 0, 0, NULL, NULL),
(6, 4, 1, 1, 0, NULL, NULL),
(6, 6, 1, 0, 0, NULL, NULL),
(6, 7, 1, 1, 1, NULL, NULL),
(7, 1, 1, 0, 0, NULL, NULL),
(7, 2, 1, 1, 0, NULL, NULL),
(7, 3, 1, 1, 0, NULL, NULL),
(7, 4, 1, 0, 0, NULL, NULL),
(7, 6, 1, 1, 0, NULL, NULL),
(7, 7, 1, 0, 0, NULL, NULL),
(9, 1, 1, 0, 0, NULL, NULL),
(9, 2, 1, 1, 1, NULL, NULL),
(9, 3, 1, 0, 0, NULL, NULL),
(9, 4, 1, 0, 0, NULL, NULL),
(9, 6, 1, 1, 1, NULL, NULL),
(9, 7, 1, 0, 0, NULL, NULL),
(10, 1, 1, 0, 0, NULL, NULL),
(10, 2, 1, 0, 1, NULL, NULL),
(10, 3, 1, 1, 0, NULL, NULL),
(10, 4, 1, 0, 0, NULL, NULL),
(10, 6, 1, 1, 0, NULL, NULL),
(10, 7, 1, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_sex` int(11) NOT NULL,
  `customer_birth` date NOT NULL,
  `customer_address` text NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_image` varchar(255) NOT NULL,
  `customer_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_sex`, `customer_birth`, `customer_address`, `customer_phone`, `customer_email`, `customer_image`, `customer_status`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Diễm Hương', 1, '2000-02-25', 'Châu Đốc - An Giang', '0868375141', 'ndhuong_19vn@students.agu.edu.vn', '331120618_1526239801197717_8602122294146246469_n5.jpg', 0, NULL, NULL),
(2, 'Lưu Bá Ôn', 0, '1995-03-30', 'Thoại Sơn - An Giang', '0319664982', 'lbaon@gmail.com', 'NTT (21)16.JPG', 1, NULL, NULL),
(3, 'Trương Thị Mỹ Xuyên', 1, '2001-05-14', 'Tịnh Biên - An Giang', '0939383862', 'ttmxuyen_20kt@students.agu.edu.vn', 'z_768432513555266289_2_81811db98fa6a1da62a59e23cd00fc9233.jpg', 1, NULL, NULL),
(4, 'Điêu Thuyền', 0, '1975-03-13', 'Chợ Mới - An Giang', '0534921654', 'dieuthuyen@students.agu.edu.vn', 'Gioang_xe_nang32.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_devices`
--

CREATE TABLE `tbl_devices` (
  `device_id` int(10) UNSIGNED NOT NULL,
  `device_name` varchar(255) NOT NULL,
  `device_price` int(11) NOT NULL,
  `device_content` text NOT NULL,
  `device_desc` text NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `catagory_id` int(10) UNSIGNED NOT NULL,
  `device_image` varchar(255) NOT NULL,
  `device_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_devices`
--

INSERT INTO `tbl_devices` (`device_id`, `device_name`, `device_price`, `device_content`, `device_desc`, `brand_id`, `catagory_id`, `device_image`, `device_status`, `created_at`, `updated_at`) VALUES
(1, 'MÔ TƠ LÁI XE NÂNG', 750000, 'MÔ TƠ LÁI XE NÂNG', 'MÔ TƠ LÁI XE NÂNG', 4, 5, 'Mo_to_lai_xe_nang40.jpg', 1, NULL, NULL),
(2, 'Giắc Cắm Bình Điện', 250000, 'Giắc Cắm Bình Điện', 'Giắc Cắm Bình Điện', 3, 5, 'Giac_cam_binh_dien_xe_nang_B35050.jpg', 1, NULL, NULL),
(3, 'GIẮC CẮM BÌNH ĐIỆN XE NÂNG B175', 475000, 'GIẮC CẮM BÌNH ĐIỆN XE NÂNG B175', 'GIẮC CẮM BÌNH ĐIỆN XE NÂNG B175', 1, 5, 'Giac_cam_binh_dien_xe_nang_B17583.jpg', 0, NULL, NULL),
(4, 'Bố Thắng Xe Nâng', 350000, 'Bố Thắng Xe Nâng', 'Bố Thắng Xe Nâng', 3, 5, 'Bo_thang_xe_nang358.jpg', 1, NULL, NULL),
(5, 'ỐNG DẦU XE NÂNG', 450000, 'ỐNG DẦU XE NÂNG', 'ỐNG DẦU XE NÂNG', 3, 7, 'Ong_dau_xe_nang56.jpg', 1, NULL, NULL),
(6, 'ỐNG DẦU HỒI XE NÂNG', 475000, 'ỐNG DẦU HỒI XE NÂNG', 'ỐNG DẦU HỒI XE NÂNG', 6, 7, 'Ong_dau_hoi_xe_nang58.jpg', 1, NULL, NULL),
(7, 'ỐNG DẦU HỒI XE NÂNG', 450000, 'ỐNG DẦU HỒI XE NÂNG', 'ỐNG DẦU HỒI XE NÂNG', 4, 7, 'Nap_thung_dau_xe_nang93.jpg', 1, NULL, NULL),
(8, 'GIOĂNG XE NÂNG', 350000, 'GIOĂNG XE NÂNG', 'GIOĂNG XE NÂNG', 2, 7, 'Gioang_xe_nang8.jpg', 1, NULL, NULL),
(9, 'GIOĂNG MẶT MÁY XE NÂNG', 750000, 'GIOĂNG MẶT MÁY XE NÂNG', 'GIOĂNG MẶT MÁY XE NÂNG', 2, 7, 'gioang_mat_may_xe_nang60.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hoadon`
--

CREATE TABLE `tbl_hoadon` (
  `id_hoadon` int(10) UNSIGNED NOT NULL,
  `id_nhanvien_lap` int(10) UNSIGNED NOT NULL,
  `ngaylap` datetime NOT NULL,
  `id_khachhang` int(10) UNSIGNED NOT NULL,
  `id_phieukhaosat` int(10) UNSIGNED NOT NULL,
  `tongtien` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_hoadon`
--

INSERT INTO `tbl_hoadon` (`id_hoadon`, `id_nhanvien_lap`, `ngaylap`, `id_khachhang`, `id_phieukhaosat`, `tongtien`, `created_at`, `updated_at`) VALUES
(1, 2, '2023-04-23 19:55:10', 4, 7, 11900000, NULL, NULL),
(2, 1, '2023-04-26 20:47:41', 4, 7, 200000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lichbaotri`
--

CREATE TABLE `tbl_lichbaotri` (
  `id_hoatdong` int(10) UNSIGNED NOT NULL,
  `ten_hoatdong` varchar(255) NOT NULL,
  `ngaytao_hoatdong` date NOT NULL,
  `ngaytienhanh` date NOT NULL,
  `id_nhanvien` int(10) UNSIGNED NOT NULL,
  `id_khachhang` int(10) UNSIGNED NOT NULL,
  `tinhtrang` int(11) NOT NULL DEFAULT 1,
  `ghichu` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lichbaotri`
--

INSERT INTO `tbl_lichbaotri` (`id_hoatdong`, `ten_hoatdong`, `ngaytao_hoatdong`, `ngaytienhanh`, `id_nhanvien`, `id_khachhang`, `tinhtrang`, `ghichu`, `created_at`, `updated_at`) VALUES
(1, 'Bảo Trì Xe Nâng D01', '2023-04-03', '2023-04-06', 1, 1, 0, 'a', NULL, NULL),
(2, 'Bảo Trì Xe Nâng D02', '2023-02-20', '2023-04-04', 1, 3, 0, 'b', NULL, NULL),
(3, 'Bảo Trì Xe Nâng D03', '2023-04-05', '2023-05-04', 1, 2, 0, 'c', NULL, NULL),
(4, 'Bảo Trì Xe Nâng D04', '2023-04-07', '2023-04-15', 1, 3, 0, 'd', NULL, NULL),
(5, 'Bảo Trì Xe Nâng D05', '2023-04-07', '2023-04-10', 1, 4, 0, 'e', NULL, NULL),
(6, 'Bảo Trì Xe Nâng D06', '2023-04-10', '2023-04-20', 2, 4, 1, 'hahaha', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nhanvien`
--

CREATE TABLE `tbl_nhanvien` (
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `nhanvien_name` varchar(255) NOT NULL,
  `nhanvien_sex` int(11) NOT NULL,
  `nhanvien_birth` date NOT NULL,
  `nhanvien_address` text NOT NULL,
  `nhanvien_phone` varchar(20) NOT NULL,
  `nhanvien_position` varchar(255) NOT NULL,
  `nhanvien_image` varchar(255) NOT NULL,
  `nhanvien_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_nhanvien`
--

INSERT INTO `tbl_nhanvien` (`nhanvien_id`, `nhanvien_name`, `nhanvien_sex`, `nhanvien_birth`, `nhanvien_address`, `nhanvien_phone`, `nhanvien_position`, `nhanvien_image`, `nhanvien_status`, `created_at`, `updated_at`) VALUES
(1, 'Lưu Minh Nhựt', 0, '2001-05-29', '<p>Tri T&ocirc;n - An Giang</p>', '0366676704', 'Quản lí', 'IMGS (7)61.JPG', 1, NULL, NULL),
(2, 'Trần Ngọc Anh Thư', 1, '2001-02-11', '<p>Phường B&igrave;nh Kh&aacute;nh - TP Long Xuy&ecirc;n - An Giang</p>', '0379234691', 'Nhân viên bán hàng', '331141369_576486207729201_2226640153226191705_n53.jpg', 1, NULL, NULL),
(3, 'Huỳnh Nguyễn Thái An', 0, '2001-03-30', '<p>Long Xuy&ecirc;n - An Giang</p>', '0368249216', 'Nhân viên kỹ thuật', 'facebook55.png', 1, NULL, NULL),
(4, 'Chu Nguyên Chương', 0, '1990-02-02', '<p>Ch&acirc;u Đốc - An Giang</p>', '0561378216', 'Nhân viên kỹ thuật', '316965705-159606870142894-6573819072181146749-n-1675135752427_result97.jpg', 1, NULL, NULL),
(5, 'Hồ Duy Dung', 0, '1992-02-06', '<p>Tịnh Bi&ecirc;n - An Giang</p>', '0834621924', 'Nhân viên kỹ thuật', '271046923_103178668921251_4068046015393712283_n29.jpg', 1, NULL, NULL),
(6, 'Nguyễn Thị Mỹ Hạnh', 0, '2001-02-12', 'Long Xuyên', '0823465219', 'Nhân viên bán hàng', 'IMG_MyHanh_0165.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_phancongcongviec`
--

CREATE TABLE `tbl_phancongcongviec` (
  `id_congviec` int(10) UNSIGNED NOT NULL,
  `id_hoatdong` int(10) UNSIGNED NOT NULL,
  `id_nhanvien_tao` int(10) UNSIGNED NOT NULL,
  `khachhang_id` int(10) UNSIGNED NOT NULL,
  `id_nhanvien_thuchien` int(10) UNSIGNED NOT NULL,
  `ngaytao_congviec` date NOT NULL,
  `ngaybatdau` date NOT NULL,
  `ngayketthuc` date NOT NULL,
  `ghichus` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_phancongcongviec`
--

INSERT INTO `tbl_phancongcongviec` (`id_congviec`, `id_hoatdong`, `id_nhanvien_tao`, `khachhang_id`, `id_nhanvien_thuchien`, `ngaytao_congviec`, `ngaybatdau`, `ngayketthuc`, `ghichus`, `created_at`, `updated_at`) VALUES
(22, 1, 1, 1, 3, '2023-04-07', '2023-04-10', '2023-04-26', '123', NULL, NULL),
(23, 5, 1, 4, 4, '2023-04-07', '2023-04-13', '2023-04-30', 'hello', NULL, NULL),
(24, 4, 1, 3, 5, '2023-04-07', '2023-04-15', '2023-04-20', 'Hạnh', NULL, NULL),
(25, 3, 1, 2, 3, '2023-04-07', '2023-04-20', '2023-04-21', 'Hạnh', NULL, NULL),
(26, 2, 1, 3, 3, '2023-04-08', '2023-04-10', '2023-04-15', 'hhhh', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_phieubaogia`
--

CREATE TABLE `tbl_phieubaogia` (
  `id_phieubaogia` int(10) UNSIGNED NOT NULL,
  `id_nhanvien_lap` int(10) UNSIGNED NOT NULL,
  `ngaylap` datetime NOT NULL,
  `id_khachhang` int(10) UNSIGNED NOT NULL,
  `id_phieukhaosat` int(10) UNSIGNED NOT NULL,
  `tongtien` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_phieubaogia`
--

INSERT INTO `tbl_phieubaogia` (`id_phieubaogia`, `id_nhanvien_lap`, `ngaylap`, `id_khachhang`, `id_phieukhaosat`, `tongtien`, `created_at`, `updated_at`) VALUES
(8, 1, '2023-04-25 20:40:39', 4, 7, 4550000, NULL, NULL),
(9, 1, '2023-04-29 20:31:45', 3, 10, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_phieukhaosat`
--

CREATE TABLE `tbl_phieukhaosat` (
  `id_phieukhaosat` int(10) UNSIGNED NOT NULL,
  `tenphieukhaosat` varchar(255) NOT NULL,
  `id_congviec` int(10) UNSIGNED NOT NULL,
  `id_nhanvien_tao` int(10) UNSIGNED NOT NULL,
  `ngaylapphieu` date NOT NULL,
  `id_khachhang` int(10) UNSIGNED NOT NULL,
  `ten_xe` varchar(255) NOT NULL,
  `so_seri` varchar(255) NOT NULL,
  `ngayvanhanh` date NOT NULL,
  `so_km_vanhanh` int(11) NOT NULL,
  `ghichu` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_phieukhaosat`
--

INSERT INTO `tbl_phieukhaosat` (`id_phieukhaosat`, `tenphieukhaosat`, `id_congviec`, `id_nhanvien_tao`, `ngaylapphieu`, `id_khachhang`, `ten_xe`, `so_seri`, `ngayvanhanh`, `so_km_vanhanh`, `ghichu`, `created_at`, `updated_at`) VALUES
(1, 'Phiếu Khảo Sát Công Việc 23 - KH: Trương Thị Mỹ Xuyên', 26, 3, '2023-04-11', 3, 'XE NÂNG HÀNG 2 TẤN EP, MODEL CPCD20 MAX8', 'XN001', '2022-06-15', 16250, 'Xuyên', NULL, NULL),
(5, 'Phiếu Khảo Sát Công Việc 2 - KH: Nguyễn Diễm Hương', 22, 3, '2023-04-15', 1, 'XE NÂNG HÀNG 2 TẤN EP, MODEL CPCD20 MAX8', 'XN003', '2021-06-17', 10000, 'scscs', NULL, NULL),
(7, 'Phiếu Khảo Sát Công Việc 23 - KH: Trương Thị Mỹ Xuyên', 23, 3, '2023-04-18', 4, 'XE NÂNG HÀNG 2 TẤN EP, MODEL CPCD20 MAX10', 'XN0062', '2022-06-22', 10000, 'b', NULL, NULL),
(10, 'Phiếu Khảo Sát Công Việc 24 - KH: Trương Thị Mỹ Xuyên', 24, 1, '2023-04-29', 3, 'XE NÂNG HÀNG 2 TẤN EP, MODEL CPCD20 MAX8', 'XN00622', '2020-06-15', 1000, 'Mỹ Xuyên', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `catagory_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `product_desc` text NOT NULL,
  `product_content` text NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `catagory_id`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 'CPC(D)30/35T3 Xe nâng dầu 3/3.5 tấn', 3, 1, 'CPC(D)30/35T3 Xe nâng dầu 3/3.5 tấn', 'CPC(D)30/35T3 Xe nâng dầu 3/3.5 tấn', '30000000', 'xe-nang-dau-3-387.jpg', 1, NULL, NULL),
(2, 'CPC(Q)D15/18T8 – Xe nâng dầu 1.5/1.8 tấn', 4, 1, 'CPC(Q)D15/18T8 – Xe nâng dầu 1.5/1.8 tấn', 'CPC(Q)D15/18T8 – Xe nâng dầu 1.5/1.8 tấn', '40000000', '1F2137.jpg', 1, NULL, NULL),
(3, 'Xe Nâng Động Cơ Xăng/Dầu/Gaz 1F2 (1.5 - 3.5 Tấn)', 3, 6, 'Xe Nâng Động Cơ Xăng/Dầu/Gaz 1F2 (1.5 - 3.5 Tấn)', 'Xe Nâng Động Cơ Xăng/Dầu/Gaz 1F2 (1.5 - 3.5 Tấn)', 'Xe Nâng Động Cơ Xăng/Dầu/Gaz 1F2 (1.5 - 3.5 Tấn)', '483599353547936-140.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_services`
--

CREATE TABLE `tbl_services` (
  `service_id` int(10) UNSIGNED NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `catagory_id` int(10) UNSIGNED NOT NULL,
  `service_desc` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_services`
--

INSERT INTO `tbl_services` (`service_id`, `service_name`, `catagory_id`, `service_desc`, `created_at`, `updated_at`) VALUES
(1, 'KIỂM TRA CÁC NẮP BẢO VỆ', 8, 'KIỂM TRA CÁC NẮP BẢO VỆ', NULL, NULL),
(2, 'KIỂM TRA KẾT CẤU KẾT NỐI', 8, 'KIỂM TRA KẾT CẤU KẾT NỐI', NULL, NULL),
(3, 'KIỂM TRA CÁC NƯỚC', 8, 'KIỂM TRA CÁC NƯỚC', NULL, NULL),
(4, 'KIỂM TRA HỘP SỐ', 9, 'KIỂM TRA HỘP SỐ', NULL, NULL),
(6, 'KIỂM TRA SỰ HƯ HỎNG CỦA BÁNH XE', 10, 'KIỂM TRA SỰ HƯ HỎNG CỦA BÁNH XE', NULL, NULL),
(7, 'KIỂM TRA ỐNG DẦU VÀ CÁC KẾT NỐI', 14, 'KIỂM TRA ỐNG DẦU VÀ CÁC KẾT NỐI', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id_admin_roles`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_catagory_products`
--
ALTER TABLE `tbl_catagory_products`
  ADD PRIMARY KEY (`catagory_id`);

--
-- Chỉ mục cho bảng `tbl_chitiethoadondichvu`
--
ALTER TABLE `tbl_chitiethoadondichvu`
  ADD PRIMARY KEY (`id_chitiethoadondichvu`),
  ADD KEY `id_hoadon` (`id_hoadon`,`id_dichvu`),
  ADD KEY `tbl_hoadondichvu_ibfk_1` (`id_dichvu`);

--
-- Chỉ mục cho bảng `tbl_chitiethoadonlinhkien`
--
ALTER TABLE `tbl_chitiethoadonlinhkien`
  ADD PRIMARY KEY (`id_hoadonlinhkien`),
  ADD KEY `id_hoadon` (`id_hoadon`,`id_linhkien`),
  ADD KEY `tbl_hoadonlinhkien_ibfk_1` (`id_linhkien`);

--
-- Chỉ mục cho bảng `tbl_chitietphieubaogiadichvu`
--
ALTER TABLE `tbl_chitietphieubaogiadichvu`
  ADD PRIMARY KEY (`id_chitietphieudichvu`),
  ADD KEY `id_phieubaogia` (`id_phieubaogia`,`id_dichvu`),
  ADD KEY `tbl_chitietphieubaogiadichvu_ibfk_1` (`id_dichvu`);

--
-- Chỉ mục cho bảng `tbl_chitietphieubaogialinhkien`
--
ALTER TABLE `tbl_chitietphieubaogialinhkien`
  ADD PRIMARY KEY (`id_chitietphieulinhkien`),
  ADD KEY `id_phieubaogia` (`id_phieubaogia`,`id_linhkien`),
  ADD KEY `id_linhkien` (`id_linhkien`);

--
-- Chỉ mục cho bảng `tbl_chitietphieukhaosat`
--
ALTER TABLE `tbl_chitietphieukhaosat`
  ADD PRIMARY KEY (`id_phieukhaosat`,`service_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_devices`
--
ALTER TABLE `tbl_devices`
  ADD PRIMARY KEY (`device_id`),
  ADD KEY `brand_id` (`brand_id`,`catagory_id`),
  ADD KEY `catagory_id` (`catagory_id`);

--
-- Chỉ mục cho bảng `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  ADD PRIMARY KEY (`id_hoadon`),
  ADD KEY `id_nhanvien_lap` (`id_nhanvien_lap`,`id_khachhang`,`id_phieukhaosat`),
  ADD KEY `tbl_hoadon_ibfk_2` (`id_khachhang`),
  ADD KEY `tbl_hoadon_ibfk_3` (`id_phieukhaosat`);

--
-- Chỉ mục cho bảng `tbl_lichbaotri`
--
ALTER TABLE `tbl_lichbaotri`
  ADD PRIMARY KEY (`id_hoatdong`),
  ADD KEY `id_nhanvien` (`id_nhanvien`,`id_khachhang`),
  ADD KEY `id_khachhang` (`id_khachhang`);

--
-- Chỉ mục cho bảng `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  ADD PRIMARY KEY (`nhanvien_id`);

--
-- Chỉ mục cho bảng `tbl_phancongcongviec`
--
ALTER TABLE `tbl_phancongcongviec`
  ADD PRIMARY KEY (`id_congviec`),
  ADD KEY `id_hoatdong` (`id_hoatdong`,`id_nhanvien_tao`,`khachhang_id`,`id_nhanvien_thuchien`),
  ADD KEY `khachhang_id` (`khachhang_id`),
  ADD KEY `id_nhanvien_tao` (`id_nhanvien_tao`);

--
-- Chỉ mục cho bảng `tbl_phieubaogia`
--
ALTER TABLE `tbl_phieubaogia`
  ADD PRIMARY KEY (`id_phieubaogia`),
  ADD KEY `id_nhanvien_lap` (`id_nhanvien_lap`,`id_khachhang`,`id_phieukhaosat`),
  ADD KEY `id_phieukhaosat` (`id_phieukhaosat`);

--
-- Chỉ mục cho bảng `tbl_phieukhaosat`
--
ALTER TABLE `tbl_phieukhaosat`
  ADD PRIMARY KEY (`id_phieukhaosat`),
  ADD KEY `id_congviec` (`id_congviec`,`id_nhanvien_tao`,`id_khachhang`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `catagory_id` (`catagory_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `catagory_id` (`catagory_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id_admin_roles` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_catagory_products`
--
ALTER TABLE `tbl_catagory_products`
  MODIFY `catagory_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_chitiethoadondichvu`
--
ALTER TABLE `tbl_chitiethoadondichvu`
  MODIFY `id_chitiethoadondichvu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tbl_chitiethoadonlinhkien`
--
ALTER TABLE `tbl_chitiethoadonlinhkien`
  MODIFY `id_hoadonlinhkien` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_chitietphieubaogiadichvu`
--
ALTER TABLE `tbl_chitietphieubaogiadichvu`
  MODIFY `id_chitietphieudichvu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `tbl_chitietphieubaogialinhkien`
--
ALTER TABLE `tbl_chitietphieubaogialinhkien`
  MODIFY `id_chitietphieulinhkien` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_devices`
--
ALTER TABLE `tbl_devices`
  MODIFY `device_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  MODIFY `id_hoadon` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_lichbaotri`
--
ALTER TABLE `tbl_lichbaotri`
  MODIFY `id_hoatdong` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  MODIFY `nhanvien_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_phancongcongviec`
--
ALTER TABLE `tbl_phancongcongviec`
  MODIFY `id_congviec` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `tbl_phieubaogia`
--
ALTER TABLE `tbl_phieubaogia`
  MODIFY `id_phieubaogia` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_phieukhaosat`
--
ALTER TABLE `tbl_phieukhaosat`
  MODIFY `id_phieukhaosat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `service_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_chitiethoadondichvu`
--
ALTER TABLE `tbl_chitiethoadondichvu`
  ADD CONSTRAINT `tbl_hoadondichvu_ibfk_1` FOREIGN KEY (`id_dichvu`) REFERENCES `tbl_services` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_hoadondichvu_ibfk_2` FOREIGN KEY (`id_hoadon`) REFERENCES `tbl_hoadon` (`id_hoadon`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_chitiethoadonlinhkien`
--
ALTER TABLE `tbl_chitiethoadonlinhkien`
  ADD CONSTRAINT `tbl_hoadonlinhkien_ibfk_1` FOREIGN KEY (`id_linhkien`) REFERENCES `tbl_devices` (`device_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_hoadonlinhkien_ibfk_2` FOREIGN KEY (`id_hoadon`) REFERENCES `tbl_hoadon` (`id_hoadon`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_chitietphieubaogiadichvu`
--
ALTER TABLE `tbl_chitietphieubaogiadichvu`
  ADD CONSTRAINT `tbl_chitietphieubaogiadichvu_ibfk_1` FOREIGN KEY (`id_dichvu`) REFERENCES `tbl_services` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_chitietphieubaogiadichvu_ibfk_2` FOREIGN KEY (`id_phieubaogia`) REFERENCES `tbl_phieubaogia` (`id_phieubaogia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_chitietphieubaogialinhkien`
--
ALTER TABLE `tbl_chitietphieubaogialinhkien`
  ADD CONSTRAINT `tbl_chitietphieubaogialinhkien_ibfk_1` FOREIGN KEY (`id_linhkien`) REFERENCES `tbl_devices` (`device_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_chitietphieubaogialinhkien_ibfk_2` FOREIGN KEY (`id_phieubaogia`) REFERENCES `tbl_phieubaogia` (`id_phieubaogia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_chitietphieukhaosat`
--
ALTER TABLE `tbl_chitietphieukhaosat`
  ADD CONSTRAINT `tbl_chitietphieukhaosat_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `tbl_services` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_devices`
--
ALTER TABLE `tbl_devices`
  ADD CONSTRAINT `tbl_devices_ibfk_1` FOREIGN KEY (`catagory_id`) REFERENCES `tbl_catagory_products` (`catagory_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_devices_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `tbl_brand` (`brand_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  ADD CONSTRAINT `tbl_hoadon_ibfk_1` FOREIGN KEY (`id_nhanvien_lap`) REFERENCES `tbl_nhanvien` (`nhanvien_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_hoadon_ibfk_2` FOREIGN KEY (`id_khachhang`) REFERENCES `tbl_customer` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_hoadon_ibfk_3` FOREIGN KEY (`id_phieukhaosat`) REFERENCES `tbl_phieukhaosat` (`id_phieukhaosat`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_lichbaotri`
--
ALTER TABLE `tbl_lichbaotri`
  ADD CONSTRAINT `tbl_lichbaotri_ibfk_1` FOREIGN KEY (`id_nhanvien`) REFERENCES `tbl_nhanvien` (`nhanvien_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_lichbaotri_ibfk_2` FOREIGN KEY (`id_khachhang`) REFERENCES `tbl_customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_phancongcongviec`
--
ALTER TABLE `tbl_phancongcongviec`
  ADD CONSTRAINT `tbl_phancongcongviec_ibfk_1` FOREIGN KEY (`khachhang_id`) REFERENCES `tbl_customer` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_phancongcongviec_ibfk_2` FOREIGN KEY (`id_nhanvien_tao`) REFERENCES `tbl_nhanvien` (`nhanvien_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_phieubaogia`
--
ALTER TABLE `tbl_phieubaogia`
  ADD CONSTRAINT `tbl_phieubaogia_ibfk_1` FOREIGN KEY (`id_phieukhaosat`) REFERENCES `tbl_phieukhaosat` (`id_phieukhaosat`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `tbl_brand` (`brand_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`catagory_id`) REFERENCES `tbl_catagory_products` (`catagory_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD CONSTRAINT `tbl_services_ibfk_1` FOREIGN KEY (`catagory_id`) REFERENCES `tbl_catagory_products` (`catagory_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
