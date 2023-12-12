-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 12, 2023 lúc 03:15 AM
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
-- Cơ sở dữ liệu: `laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `active_users`
--

CREATE TABLE `active_users` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_banner` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `name_banner`, `created_at`, `updated_at`) VALUES
(18, '1700232091banner1.jpg', '2023-11-17 07:41:31', '2023-11-17 07:41:31'),
(23, '1700233535899907172.webp', '2023-11-17 08:05:36', '2023-11-17 08:05:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pizza', NULL, NULL),
(2, 'Mỳ Ý', '2023-11-17 17:22:17', '2023-11-17 17:22:17'),
(4, 'Thức Uống', '2023-11-17 17:22:38', '2023-11-17 17:22:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comboes`
--

CREATE TABLE `comboes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comboes`
--

INSERT INTO `comboes` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Combo Pizza Và Pepsi', 'Mẫu Theme thiết kế Chuẩn', 300000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `delivery_informations`
--

CREATE TABLE `delivery_informations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `provides` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `wards` varchar(255) NOT NULL,
  `apartmentNumber` varchar(255) NOT NULL,
  `StreetNames` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `date_order` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `delivery_informations`
--

INSERT INTO `delivery_informations` (`id`, `name`, `phone`, `provides`, `district`, `wards`, `apartmentNumber`, `StreetNames`, `details`, `date_order`, `created_at`, `updated_at`) VALUES
(18, 'le phu vinh', '0344842232', 'VN211', 'VN21103', 'VN2110319', '34', 'xom 1 thon 13', 'Trần bá giao', '2023-10-18', NULL, NULL),
(19, 'Do Nguyen Toan', '0344842232', 'VN717', 'VN71712', 'VN7171211', '78', 'xom 1 thon 13', 'Trần bá giao', '2023-11-13', NULL, NULL),
(20, 'Do Nguyen Toan', '0344842232', 'VN717', 'VN71712', 'VN7171211', '78', 'xom 1 thon 13', 'Trần bá giao', '2023-11-13', NULL, NULL),
(21, 'Do Nguyen Toan', '0344842232', 'VN717', 'VN71707', 'VN7170725', '56', 'xom 1 thon 13', 'Trường thọ thủ đức', '2023-11-13', NULL, NULL),
(22, 'Phan Duc Hoa', '0344842232', 'VN701', 'VN70139', 'VN7013935', '56', 'xom 1 thon 13', 'Trường thọ thủ đức', '2023-11-13', NULL, NULL),
(23, 'Do Nguyen Tai', '0344842232', 'VN605', 'VN60539', 'VN6053911', '56', 'xom 1 thon 13', 'le van tam', '2023-11-13', NULL, NULL),
(24, 'Do Nguyen Toan', '0344842232', 'VN221', 'VN22111', 'VN2211139', '5655', 'xom 1 thon 13', 'Trần bá giao', '2023-11-16', NULL, NULL),
(25, 'Do Nguyen Toan', '0344842232', 'VN221', 'VN22111', 'VN2211127', '56', 'xom 1 thon 13', 'Trần bá giao', '2023-11-16', NULL, NULL),
(26, 'Do Nguyen Toan', '0344842232', 'VN811', 'VN81103', 'VN8110339', '13', 'xom 1 thon 13', 'Trường thọ thủ đức', '2023-11-16', NULL, NULL),
(27, 'Do Nguyen Toan', '0344842232', 'VN207', 'VN20707', 'VN2070745', '56', 'xom 1 thon 13', 'Trường thọ thủ đức', '2023-11-17', NULL, NULL),
(28, 'Cong An Nhan Dan', '0344842232', 'VN717', 'VN71712', 'VN7171203', '56', 'xom 1 thon 13', 'Trần bá giao', '2023-11-17', NULL, NULL),
(29, 'Do Nguyen Ttt', '0344842232', 'VN221', 'VN22115', 'VN2211549', '13', 'xom 1 thon 13', 'Trần bá giao', '2023-11-17', NULL, NULL),
(30, 'Do Nguyen TT10', '0344842232', 'VN717', 'VN71713', 'VN7171301', '56', 'xom 1 thon 13', '3444545', '2023-11-17', NULL, NULL),
(31, 'Do Nguyen TT10', '0344842232', 'VN717', 'VN71713', 'VN7171301', '56', 'xom 1 thon 13', '3444545', '2023-11-17', NULL, NULL),
(32, 'Do Nguyen TT10', '0344842232', 'VN717', 'VN71713', 'VN7171301', '56', 'xom 1 thon 13', '3444545', '2023-11-17', NULL, NULL),
(33, 'Do Nguyen Toan', '0344842232', 'VN221', 'VN22113', 'VN2211349', '56', 'xom 1 thon 13', 'Trần bá giao', '2023-11-17', NULL, NULL),
(34, 'Do Nguyen Toan', '0344842232', 'VN221', 'VN22113', 'VN2211349', '56', 'xom 1 thon 13', 'Trần bá giao', '2023-11-17', NULL, NULL),
(35, 'Do Nguyen Toan888', '0344842232', 'VN223', 'VN22303', 'VN2230329', '5655', 'xom 1 thon 13', 'Trường thọ thủ đức', '2023-11-17', NULL, NULL),
(36, 'Do Nguyen Toan888', '0344842232', 'VN223', 'VN22303', 'VN2230329', '5655', 'xom 1 thon 13', 'Trường thọ thủ đức', '2023-11-17', NULL, NULL),
(37, 'Do Nguyen Toansfdsf', '0344842232', 'VN221', 'VN22119', 'VN2211909', '56', 'xom 1 thon 13', 'Trường thọ thủ đức', '2023-11-17', NULL, NULL),
(38, 'Cong An Nhan Dan', '0344842232', 'VN805', 'VN80519', 'VN8051919', '56', 'xom 1 thon 13', '3444545', '2023-11-22', NULL, NULL),
(39, 'Do Nguyen Toan', '0344842232', 'VN701', 'VN70121', 'VN7012125', '34567', 'xom 1 thon 13', '3444545', '2023-11-22', NULL, NULL),
(40, 'PHam Khoi', '0344842232', 'VN701', 'VN70135', 'VN7013525', '56', 'xom 1 thon 13', 'Trường thọ thủ đức', '2023-11-25', NULL, NULL),
(41, 'Do Nguyen Toan', '0344842232', 'VN507', 'VN50719', 'VN5071919', '34567', 'xom 1 thon 13', 'sdfsdfdsf', '2023-11-25', NULL, NULL),
(42, 'Do Nguyen Toan', '0344842232', 'VN717', 'VN71707', 'VN7170719', '56', 'xom 1 thon 13', 'sdfsdfdsf', '2023-11-25', NULL, NULL),
(43, 'Do Nguyen Toan', '0344842232', 'VN207', 'VN20709', 'VN2070943', '13', 'xom 1 thon 13', '3444545', '2023-11-28', NULL, NULL),
(44, 'Do Nguyen Toan', '0344842232', 'VN207', 'VN20709', 'VN2070943', '13', 'xom 1 thon 13', '3444545', '2023-11-28', NULL, NULL),
(45, 'Do Nguyen Toan', '0344842232', 'VN707', 'VN70706', 'VN7070609', '56', 'đường số 20', 'phường 5 gò vấp', '2023-11-29', NULL, NULL),
(47, 'le phu vinh', '0344842232', 'VN713', 'VN71301', 'VN7130105', '34567', 'xom 1 thon 13', '34', '2023-11-29', NULL, NULL),
(48, 'Do Nguyen Toan 133', '0344842232', 'VN221', 'VN22107', 'VN2210707', '56', 'xom 1 thon 13', 'Trần bá giao', '2023-11-29', NULL, NULL),
(49, 'Do Nguyen Toan', '0344842232', 'VN223', 'VN22309', 'VN2230935', '56', 'xom 1 thon 13', 'Trần bá giao', '2023-11-29', NULL, NULL),
(50, 'toan 113', '0344842992', 'VN717', 'VN71713', 'VN7171301', '56', 'xom 1 thon 13', 'Trần bá giao', '2023-11-29', NULL, NULL),
(51, 'Do Nguyen Toan', '0344842232', 'VN221', 'VN22107', 'VN2210755', '56', 'xom 1 thon 13', 'ádssadsf', '2023-11-29', NULL, NULL),
(52, 'Do Nguyen Toan', '0344842232', 'VN207', 'VN20709', 'VN2070907', '5655', 'xom 1 thon 13', 'Trần bá giao', '2023-11-29', NULL, NULL),
(53, 'khoi le', '0344842232', 'VN221', 'VN22113', 'VN2211347', '56', 'xom 1 thon 13', '3444545', '2023-11-30', NULL, NULL),
(54, 'Do Nguyen Toan', '0344842232', 'VN821', 'VN82103', 'VN8210309', '56', 'xom 1 thon 13', '3444545', '2023-11-30', NULL, NULL),
(55, 'Do Nguyen Toan', '0344842232', 'VN221', 'VN22107', 'VN2210725', '56', 'xom 1 thon 13', 'sdfsdfdsf', '2023-11-30', NULL, NULL),
(56, 'Do Nguyen Toan', '0344842232', 'VN221', 'VN22107', 'VN2210725', '56', 'xom 1 thon 13', 'sdfsdfdsf', '2023-11-30', NULL, NULL),
(57, 'Do Nguyen Toan', '0344842232', 'VN221', 'VN22107', 'VN2210725', '56', 'xom 1 thon 13', 'sdfsdfdsf', '2023-11-30', NULL, NULL),
(58, 'Do Nguyen Toan', '0344842232', 'VN221', 'VN22107', 'VN2210725', '56', 'xom 1 thon 13', 'sdfsdfdsf', '2023-11-30', NULL, NULL),
(59, 'Do Nguyen Toan', '0344842232', 'VN221', 'VN22115', 'VN2211509', '56', 'xom 1 thon 13', 'Trường thọ thủ đức', '2023-12-01', NULL, NULL),
(60, 'Do Nguyen Toan', '0344842232', 'VN221', 'VN22111', 'VN2211135', '34', 'xom 1 thon 13', 'Trường thọ thủ đức', '2023-12-01', NULL, NULL),
(61, 'duc hoa', '0123456789', 'VN713', 'VN71313', 'VN7131327', '22', 'ấp văn hóa, bảo định', 'hello', '2023-12-01', '2023-12-01 04:57:30', '2023-12-01 04:57:30'),
(62, 'Đức Hoà Phan', '0365114930', 'VN713', 'VN71313', 'VN7131309', 'Nhà thờ thái xuân, ấp văn hoá, bảo định, xuân định, xuân lộc', 'Nhà thờ thái xuân, ấp văn hoá, bảo định, xuân định, xuân lộc', '12345678', '2023-12-01', NULL, NULL);

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
-- Cấu trúc bảng cho bảng `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `likes`
--

INSERT INTO `likes` (`id`, `id_product`, `id_user`, `created_at`, `updated_at`) VALUES
(36, 52, 2, '2023-11-15 19:12:44', '2023-11-15 19:12:44'),
(37, 54, 2, '2023-11-15 19:13:33', '2023-11-15 19:13:33'),
(38, 53, 2, '2023-11-15 19:16:01', '2023-11-15 19:16:01'),
(39, 56, 2, '2023-11-15 19:16:17', '2023-11-15 19:16:17'),
(58, 93, 1, '2023-11-16 18:51:20', '2023-11-16 18:51:20'),
(101, 82, 1, '2023-11-16 19:10:08', '2023-11-16 19:10:08'),
(104, 83, 1, '2023-11-16 19:10:10', '2023-11-16 19:10:10'),
(107, 87, 1, '2023-11-16 19:10:13', '2023-11-16 19:10:13'),
(110, 86, 1, '2023-11-16 19:10:15', '2023-11-16 19:10:15'),
(124, 73, 1, '2023-11-16 19:15:01', '2023-11-16 19:15:01'),
(466, 56, 1, '2023-11-16 20:03:33', '2023-11-16 20:03:33'),
(477, 57, 2, '2023-11-16 20:28:40', '2023-11-16 20:28:40'),
(534, 76, 1, '2023-11-16 21:38:57', '2023-11-16 21:38:57'),
(565, 58, 1, '2023-11-16 21:45:18', '2023-11-16 21:45:18'),
(566, 57, 1, '2023-11-16 21:45:20', '2023-11-16 21:45:20'),
(567, 59, 1, '2023-11-16 21:45:23', '2023-11-16 21:45:23'),
(568, 68, 1, '2023-11-16 21:45:26', '2023-11-16 21:45:26'),
(571, 71, 1, '2023-11-16 21:45:33', '2023-11-16 21:45:33'),
(576, 64, 1, '2023-11-16 21:45:48', '2023-11-16 21:45:48'),
(579, 52, 1, '2023-11-16 21:54:42', '2023-11-16 21:54:42'),
(587, 54, 1, '2023-11-16 21:54:48', '2023-11-16 21:54:48'),
(635, 52, 5, '2023-11-17 17:36:52', '2023-11-17 17:36:52'),
(636, 52, 6, '2023-11-17 17:37:59', '2023-11-17 17:37:59'),
(648, 58, 5, '2023-11-29 09:17:10', '2023-11-29 09:17:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

CREATE TABLE `manufactures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Image` varchar(250) NOT NULL,
  `Phone` varchar(250) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Representative` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`id`, `name`, `created_at`, `updated_at`, `Image`, `Phone`, `Address`, `Representative`) VALUES
(1, 'Hải Sản Cao Cấp 1', '2023-11-01 02:37:08', '2023-11-03 10:56:09', '', '0', '', ''),
(2, 'Nước uống siêu tỉnh táo', '2023-11-01 02:37:08', '2023-11-06 19:21:47', '', '0', '', ''),
(7, 'Sốt bò bằm', '2023-11-05 12:32:20', '2023-11-05 12:36:15', '', '0', '', ''),
(9, 'Mì Ý Thông Thường', '2023-11-06 19:22:12', '2023-11-06 19:25:35', '', '0', '', ''),
(18, 'Pizza thường', '2023-11-17 02:44:46', '2023-11-17 02:44:46', '', '0', '', ''),
(22, 'Salad', '2023-11-23 19:34:02', '2023-11-23 19:34:02', '', '0', '', ''),
(32, 'Do Nguyen Toan123', '2023-11-30 17:28:27', '2023-11-30 17:36:06', '1701390507vi.jpeg', '85735476897', 'xom 1 thon 13', 'toan tt10');

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
(5, '2023_10_07_015206_create_products_table', 1),
(6, '2023_10_07_015633_create_categories_table', 1),
(7, '2023_10_07_015700_create_manufactures_table', 1),
(8, '2023_10_07_015719_create_toppings_table', 1),
(9, '2023_10_07_015733_create_sizes_table', 1),
(10, '2023_10_07_015825_create_comboes_table', 1),
(13, '2023_10_10_022813_create__delivery_informations_table', 4),
(16, '2023_10_17_054238_create_order_detail_table', 5),
(17, '2023_10_17_045159_create_orders_table', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `new_posts`
--

CREATE TABLE `new_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `new_posts`
--

INSERT INTO `new_posts` (`id`, `title`, `image`, `content`, `created_at`, `updated_at`) VALUES
(1, 'THE PIZZA COMPANY VINH DỰ NHẬN GIẢI THƯỞNG TOP 20 THƯƠNG HIỆU VÀNG VIỆT NAM 2022', 'newpost1.png', 'The Pizza Company Việt Nam chào đón Sinh nhật lần thứ 9 với niềm tự hào là thương hiệu Pizza duy nhất tại Việt Nam được bình chọn và trao giải thưởng “TOP 20 THƯƠNG HIỆU VÀNG VIỆT NAM 2022” do Viện Kinh Tế Và Văn Hoá kết hợp cùng Trung Tâm Bảo Vệ Người Tiêu Dùng Việt Nam tổ chức dưới sự phê duyệt của Thủ Tướng Chính Phủ. Bên cạnh đó, tại lễ trao giải được tổ chức và truyền hình trực tiếp trên sóng Đài Truyền Hình Hà Nội, Anh LÊ ĐÌNH HỘI - Tổng Giám Đốc công ty cũng vinh dự đón nhận lễ vinh danh “DOANH NHÂN XUẤT SẮC ĐẤT VIỆT 2022”.\n\nMặc dù có mặt tại Việt Nam vào năm 2013, muộn hơn rất nhiều năm so với các chuỗi pizza khác nhưng The Pizza Company được quản lý bởi công ty QSR Việt Nam đã có những bước tăng trưởng vượt bậc, vượt mặt các đối thủ cạnh tranh để trở thành chuỗi nhà hàng pizza có tốc độ tăng trưởng nhanh nhất và phủ rộng khắp 21 tỉnh thành lớn tại Việt Nam.\n\nNăm 2020, từ ngày xuất hiện ca nhiễm đầu tiên, do những tác động nghiêm trọng, phức tạp và kéo dài của đại dịch Covid-19, năm 2021 tiếp tục là một năm có nhiều khó khăn, thách thức đối với kinh tế xã hội của đất nước nói chung, cũng như đối với các hoạt động sản xuất, kinh doanh, tiêu dùng nói riêng. Nhưng, với nội lực và tiềm lực của chuỗi pizza thuộc hàng Top đầu tại Việt Nam, cùng sự lãnh đạo khéo léo, bình tĩnh của Ban Giám Đốc công ty với phương châm tập trung vào con người: đặt lợi ích của khách hàng (khách hàng bên trong & khách hàng bên ngoài) gắn liền với trách nhiệm xã hội, một lần nữa The Pizza Company đã có một cuộc trở lại vô cùng ấn tượng với mức tăng trưởng vượt trên hai con số so với cùng kỳ năm trước và ngay cả thời gian trước đại dịch.\n\nVới những hành động vì cộng đồng, vì xã hội và đặc biệt là các hoạt động cụ thể để đảm bảo các tiêu chí lợi ích thiết thực của khách hàng (người tiêu dùng) như:\n\n- 100% an toàn\n- 100% chất lượng\n- 100% ưu đãi phù hợp & đúng lúc\n\nThe Pizza Company mang đến cho khách hàng những sản phẩm chất lượng với giá cả hợp lý; Những sản phẩm mới lạ để tăng sự trải nghiệm; Những chương trình ưu đãi hấp dẫn có lợi nhất cho khách hàng.\n\nGiải thưởng này không chỉ là niềm vinh dự của riêng tập thể The Pizza Company mà giải thưởng này còn chính là:\nSỰ LỰA CHỌN, TIN TƯỞNG và ỦNG HỘ TUYỆT VỜI CỦA QUÝ KHÁCH HÀNG.\n\nMột lần nữa, tập thể The Pizza Company xin chân thành cảm ơn Quý khách hàng yêu mến và các tổ chức đại diện người tiêu dùng cùng cơ quan Chính Phủ đã trao vinh dự này cho The Pizza Company.', NULL, NULL),
(2, 'Thông báo điều chỉnh cách thức phục vụ', 'newpost2.png', 'The Pizza Company xin thông báo điều chỉnh cách thức phục vụ trong công tác phòng chống Covid-19 như sau: \r\n\r\nCác chi nhánh nhà hàng hoạt động: \r\n\r\nKhu vực Hồ Chí Minh\r\n\r\nThe Pizza Company Lê Đại Hành: Chung cư Phú Thọ, Lô 4 - Khu B - Căn số 7, Lê Đại Hành, Phường 11, Quận 11, Thành phố Hồ Chí Minh \r\nThe Pizza Company Lê Văn Sỹ (2): 515 Lê Văn Sỹ, Phường 2, Quận Tân Bình, Thành phố Hồ Chí Minh\r\nThe Pizza Company Quang Trung: 638 Quang Trung, Phường 11, Quận Gò Vấp, Thành phố Hồ Chí Minh \r\nThe Pizza Company Nguyễn Sơn: 303F Nguyễn Sơn, Phường Phú Thạnh, Quận Tân Phú, Thành phố Hồ Chí Minh\r\nThe Pizza Company Hậu Giang: 167 Hậu Giang, Phường 5, Quận 6, Thành phố Hồ Chí Minh \r\nThe Pizza Company Nguyễn Ánh Thủ: 75/3-75/4 Nguyễn Ánh Thủ, Ấp Vạn Hạnh, Xã Trung Chánh, Huyện Hóc Môn, Thành phố Hồ Chí Minh \r\nThe Pizza Company Bà Hom: 64A1 - 64A2 Bà Hom, Phường 13, Quận 6, Thành phố Hồ Chí Minh \r\nThe Pizza Company Hòa Bình: 78D-80 Hòa Bình, Phường 5, Quận 11, Thành phố Hồ Chí Minh\r\nThe Pizza Company Co.op Mart Huỳnh Tấn Phát: 80/4A Huỳnh Tấn Phát, Phường Phú Mỹ, Quận 7, Thành phố Hồ Chí Minh\r\nThe Pizza Company Thống Nhất: 452A Thống Nhất, Phường 16, Quận Gò Vấp, Thành phố Hồ Chí Minh \r\nThe Pizza Company Lê Văn Sỹ (1): 333 Lê Văn Sỹ, Phường 13, Quận 3, Thành phố Hồ Chí Minh\r\nThe Pizza Company Hoàng Hoa Thám: 10D Hoàng Hoa Thám, Phường 7, Quận Bình Thạnh, Thành phố Hồ Chí Minh \r\nThe Pizza Company Nguyễn Thị Minh Khai: 506 - 508 Nguyễn Thị Minh Khai, Phường 2, Quận 3, Thành phố Hồ Chí Minh (tạm đóng cửa sửa chữa cửa hàng 27/12 - 30/12)\r\nThe Pizza Company Aeon Mall Tân Phú: Tầng 3, 30 Bờ Bao Tân Thắng, Phường Sơn Kỳ, Quận Tân Phú, Thành phố Hồ Chí Minh\r\nThe Pizza Company Song Hành: 81 Song Hành, Phường An Phú, Quận 2, Thành phố Hồ Chí Minh\r\nThe Pizza Company Võ Văn Ngân: 26-28-30 Võ Văn Ngân, Phường Trường Thọ, Quận Thủ Đức, Thành phố Hồ Chí Minh\r\nThe Pizza Company Nguyễn Đức Cảnh: 101 Nguyễn Đức Cảnh, Khu phố Park View - H19 - 2, Phường Tân Phong, Quận 7, Thành phố Hồ Chí Minh\r\nThe Pizza Company Huỳnh Tấn Phát: 346 Huỳnh Tấn Phát, Phường Bình Thuận, Quận 7, Thành phố Hồ Chí Minh\r\nThe Pizza Company Quốc Lộ 50: 310 -312 Quốc Lộ 50, Phường 6, Quận 8, Thành phố Hồ Chí Minh \r\nThe Pizza Company Nguyễn Gia Trí: 183 D2, Phường 25, Quận Bình Thạnh, Thành phố Hồ Chí Minh \r\nThe Pizza Company Nguyễn Thái Học: 105-107 Nguyễn Thái Học, Phường Cầu Ông Lãnh, Quận 1, Thành phố Hồ Chí Minh\r\nThe Pizza Company Lê Văn Quới: 239 Lê Văn Quới, Phường Bình Trị Đông, Quận Bình Tân, Thành phố Hồ Chí Minh\r\nThe Pizza Company Sense City Phạm Văn Đồng: L3-03, 240-242 Kha Vạn Cân - Phạm Văn Đồng, Phường Hiệp Bình Chánh, Quận Thủ Đức, Thành phố Hồ Chí Minh \r\nThe Pizza Company Crescent Mall: 101 Tôn Dật Tiên, Phường Tân Phú, Quận 7, Thành phố Hồ Chí Minh\r\nThe Pizza Company Vạn Hạnh Mall: L6-06 ,11 Sư Vạn Hạnh, Phường 12, Quận 10, Thành phố Hồ Chí Minh \r\nThe Pizza Company Estella Place: L4-6A-7B, 88 Song Hành, Phường An Phú, Quận 2, Thành phố Hồ Chí Minh \r\nThe Pizza Company Bàu Cát: 207-209 Bàu Cát, Phường 13, Quận Tân Bình, Thành phố Hồ Chí Minh \r\nThe Pizza Company Phan Văn Trị: 527J Phan Văn Trị, Phường 5, Quận Gò Vấp, Thành phố Hồ Chí Minh\r\nThe Pizza Company Phạm Hùng: 322B Phạm Hùng, Phường 5, Quận 8, Thành phố Hồ Chí Minh \r\nThe Pizza Company Phan Xích Long: 355 Phan Xích Long, Phường 1, Quận Phú Nhuận, Thành phố Hồ Chí Minh \r\nThe Pizza Company Vincom Thảo Điền: 159 Xa Lộ Hà Nội, Phường Thảo Điền, Quận 2, Thành phố Hồ Chí Minh \r\nThe Pizza Company Tân Sơn Nhì: 456A Tân Sơn Nhì, Phường Tân Quý, Quận Tân Phú, Thành phố Hồ Chí Minh\r\n\r\nKhu vực Hà Nội \r\n\r\nThe Pizza Company Nguyễn Cơ Thạch: 24 Nguyễn Cơ Thạch, Golden Field Building, Phường Cầu Diễn, Quận Nam Từ Liêm, Thành phố Hà Nội \r\nThe Pizza Company Xuân Diệu: 31 Xuân Diệu, Phường Quảng An, Quận Tây Hồ, Thành phố Hà Nội\r\nThe Pizza Company Vincom Trần Duy Hưng: Tầng 4, 119 Trần Duy Hưng, Phường Trung Hòa, Quận Cầu Giấy, Thành phố Hà Nội\r\nThe Pizza Company Khu đô thị mới Tây Nam hồ Linh Đàm: Ô số 3, dãy A, lô TT3, Phường Hoàng Liệt, Quận Hoàng Mai, Thành phố Hà Nội\r\nThe Pizza Company Aeon Mall Hà Đông: L2-271+272, Tổ Dân Phố, Phố Hoàng Văn Thụ, Phường Dương Nội, Quận Hà Đông, Thành phố Hà Nội\r\nThe Pizza Company Vincom Royal City: B2R3-14, 72A Nguyễn Trãi, Phường Thượng Đình, Quận Thanh Xuân, Thành phố Hà Nội\r\nThe Pizza Company Vincom Times City: B1-05, 458 Phố Minh Khai, Khu đô thị Times City, Hai Bà Trưng, Thành phố Hà Nội \r\nThe Pizza Company Vincom Bắc Từ Liêm: Tòa 27A2, B1-20, 234 Phạm Văn Đồng, Cổ Nhuế 1, Quận Bắc Từ Liêm, Thành phố Hà Nội\r\nThe Pizza Company Aeon Long Biên: Tầng 3, 27 Cổ Linh, Phường Long Biên, Quận Long Biên, Thành phố Hà Nội \r\nThe Pizza Company Nguyễn Văn Lộc: Biệt Thự, 16 P. Nguyễn Văn Lộc, Khu đô thị Mỗ Lao, Hà Đông, Hà Nội \r\nThe Pizza Company Đoàn Trần Nghiệp: 30 Đoàn Trần Nghiệp, Phường Bùi Thị Xuân, Quận Hai Bà Trưng, Thành phố Hà Nội\r\nThe Pizza Company Cầu Giấy: 333 Cầu Giấy, Phường Dịch Vọng, Quận Cầu Giấy, Thành phố Hà Nội\r\n\r\nKhu vực Nam Định \r\n\r\nThe Pizza Company Khu đô thị mới Hoà Vượng: Thửa QH số 19, Lô QH số 22, Đường Đông A, Tỉnh Nam Định\r\n\r\nKhu vực Hải Phòng \r\n\r\nThe Pizza Company Aeon Mall Hải Phòng: Tầng 1, Số 10 Đường Võ Nguyên Giáp, Phường Kênh Dương, Quận Lê Chân, Thành Phố Hải Phòng\r\nThe Pizza Company Tô Hiệu: 106 Tô Hiệu, Phường Trại Cau, Quận Lê Chân, Hải Phòng\r\nThe Pizza Company Lạch Tray: 302 - 304 Lạch Tray, Phường Kênh Dương, Quận Lê Chân, Hải Phòng\r\n\r\nKhu vực Lâm Đồng \r\n\r\nThe Pizza Company Co.op Mart Bảo Lộc: Tầng trệt, Đường Trần Phú, Phường 2, Thành phố Bảo Lộc, Tỉnh Lâm Đồng \r\nThe Pizza Company Hoà Bình Đà Lạt: 1A Nam Kỳ Khởi Nghĩa, Khu Hòa Bình, Thành phố Đà Lạt, Tỉnh Lâm Đồng\r\n\r\nKhu vực Phú Thọ \r\n\r\nThe Pizza Company Vincom Việt Trì: Tầng 4, Đường Hùng Vương, Phường Tiên Cát, Thành Phố Việt Trì, Tỉnh Phú Thọ \r\n\r\nKhu vực Huế \r\n\r\nThe Pizza Company Vincom Huế: Tầng 1, 50A Hùng Vương, Thành phố Huế, Tỉnh Thừa Thiên - Huế\r\n\r\nKhu vực Bắc Ninh \r\n\r\nThe Pizza Company Vincom Bắc Ninh: Tầng 1, Đường Lý Thái Tổ, Đại Phúc, Tỉnh Bắc Ninh\r\n\r\nKhu vực An Giang \r\n\r\nThe Pizza Company Vincom Long Xuyên: Gian hàng L5-06+07, 1242 Trần Hưng Đạo, Phường Mỹ Bình, Thành phố Long Xuyên, Tỉnh An Giang\r\n\r\nKhu vực Đắk Lắk\r\n\r\nThe Pizza Company Vincom Buôn Mê Thuột: L2-A1, 78 Lý Thường Kiệt, Buôn Mê Thuột, Đắk Lắk \r\nThe Pizza Company Co.op Mart Buôn Mê Thuột: GF-04, 71 Nguyễn Tất Thành, Buôn Mê Thuột, Đắc Lắk\r\n\r\nKhu vực Nghệ An\r\n\r\nThe Pizza Company Nguyễn Văn Cừ: 138 Nguyễn Văn Cừ, Phường Hưng Phú, Thành Phố Vinh, Tỉnh Nghệ An\r\nThe Pizza Company Quang Trung - Vinh: 17 Quang Trung, Phường Quang Trung, Thành phố Vinh, Tỉnh Nghệ An\r\n\r\nKhu vực Thanh Hoá\r\n\r\nThe Pizza Company Trung tâm Mua sắm Nguyễn Kim: Tầng 1, 27-29 Đại lộ Lê Lợi, Phường Lam Sơn, Tỉnh Thanh Hóa\r\n\r\nKhu vực Đà Nẵng\r\n\r\nThe Pizza Company Co.op Mart Đà Nẵng: Tầng trệt, 478 Điện Biên Phủ, Quận Thanh Khê, Đà Nẵng \r\nThe Pizza Company Nguyễn Văn Thoại: 173 Nguyễn Văn Thoại, Phường An Hải Đông, Quận Sơn Trà, Đà Nẵng\r\n\r\nKhu vực Khánh Hoà\r\n\r\nThe Pizza Company Nguyễn Thiện Thuật: 30B Nguyễn Thiện Thuật, Phường Tân Lập, Thành phố Nha Trang, Tỉnh Khánh Hoà\r\n\r\nThe Pizza Company 23 Tháng 10: 99A Đường 23 Tháng 10, Phường Phương Sơn, Thành phố Nha Trang, Tỉnh Khánh Hoà\r\n\r\nKhu vực Bến Tre\r\n\r\nThe Pizza Company Sense City Bến Tre: Tầng 1, Co.op Mart Bến Tre, 26A Trần Quốc Tuấn, Phường 4, Thành phố Bến Tre, Tỉnh Bến Tre\r\n\r\nKhu vực Long An\r\n\r\nThe Pizza Company Hùng Vương: 86 Hùng Vương, Phường 2, TP. Tân An, Tỉnh Long An\r\n\r\nKhu vực Vũng Tàu \r\n\r\nThe Pizza Company Võ Thị Sáu: 147 Võ Thị Sáu, Phường 2, Thành phố Vũng Tàu, Tỉnh Bà Rịa Vũng Tàu \r\nThe Pizza Company Hạ Long: 142 Hạ Long, Phường 2, Thành phố Vũng Tầu, Tỉnh Bà Rịa - Vũng Tàu\r\n\r\nKhu vực Đồng Nai\r\n\r\nThe Pizza Company Toà nhà Pegasus Biên Hòa: 53-55 Võ Thị Sáu, Phường Quyết Thắng, Thành phố Biên Hoà, Tỉnh Đồng Nai \r\n\r\nThe Pizza Company Vincom Biên Hòa: Tầng 5, 1096 Phạm Văn Thuận, Phường Tân Mai, Thành phố Biên Hoà, Tỉnh Đồng Nai\r\n\r\nKhu vực Cần Thơ \r\n\r\nThe Pizza Company Sense City Cần Thơ: L2-04, 1 Đại lộ Hoà Bình, Phường Tân An, Quận Ninh Kiều, Tỉnh Cần Thơ\r\n\r\nKhu vực Tiền Giang\r\n\r\nThe Pizza Company Big C Mỹ Tho: Tầng trệt, 545 Lê Văn Phẩm, Phường 5, Thành phố Mỹ Tho, Tỉnh Tiền Giang', NULL, NULL),
(3, 'Thời Gian Hoạt Động Tại Nhà Hàng', 'newpost3.png', ' \n\nĐể thuận tiện cho việc Đặt hàng của các Quý Khách hàng, \n\nThe Pizza Company thông báo danh sách thời gian hoạt động của từng nhà hàng như sau: \n\n \n\nSTT	Cửa hàng	Địa chỉ	Ngày thường (T2-T6)	Cuối tuần\n(T7-CN)	Ngày Lễ\n(30/04/2021 - 1/5/2021)\n1	\nD2 (Nguyễn Gia Trí)\n\n183 D2, Phường 25, Quận Bình Thạnh	10h - 22h	10h - 22h	10h - 22h\n2	\nTân Sơn Nhì \n\n456A Tân Sơn Nhì, Phường Tân Quý, Quận Tân Phú	10h - 22h	10h - 22h	10h - 22h\n3	\nThống Nhất \n\n452A Thống Nhất, Phường 16, Quận Gò Vấp	10h - 22h	10h - 22h	10h - 22h\n4	\n515 Lê Văn Sỹ\n\n515 Lê Văn Sỹ, Phường 2, Quận Tân Bình	10h - 22h	10h - 22h	10h - 22h\n5	\nQuang Trung \n\n638 Quang Trung, Phường 11, Quận Gò Vấp	10h - 22h	10h - 22h	10h - 22h\n6	\nSense City\nPhạm Văn Đồng \n\nL3-03, 240-242 Kha Vạn Cân - Phạm Văn Đồng, Phường Hiệp Bình Chánh, Quận Thủ Đức	10h - 22h	10h - 22h	10h - 22h\n7	\nAeon Mall Tân Phú \n\nTầng 3, 30 Bờ Bao Tân Thắng, Phường Sơn Kỳ, Quận Tân Phú	10h - 22h	10h - 22h	10h - 22h\n8	\nCrescent Mall \n\n101 Tôn Dật Tiên, Phường Tân Phú, Quận 7	10h - 22h	10h - 22h	10h - 22h\n9	\nHuỳnh Tấn Phát  \n\n346 Huỳnh Tấn Phát, Phường Bình Thuận, Quận 7	10h - 22h	10h - 22h	10h - 22h\n10	\nLê Văn Quới \n\n239 Lê Văn Quới, Phường Bình Trị Đông, Quận Bình Tân	10h - 22h	10h - 22h	10h - 22h\n11	\nVạn Hạnh Mall \n\nL6-06 ,11 Sư Vạn Hạnh, Phường 12, Quận 10	10h - 22h	10h - 22h	10h - 22h\n12	\nPhạm Hùng \n\n322B Phạm Hùng, Phường 5, Quận 8	10h - 22h	10h - 22h	10h - 22h\n13	\nEstella Place \n\nL4-6A-7B, 88 Song Hành, Phường An Phú, Quận 2	10h - 22h	10h - 22h	10h - 22h\n14	\nCoopmart\nHuỳnh Tấn Phát  \n\n80/4A Huỳnh Tấn Phát, Phường Phú Mỹ, Quận 7	10h - 22h	10h - 22h	10h - 22h\n15	\nNguyễn Đức Cảnh \n\n101 Nguyễn Đức Cảnh, Khu phố Parkview - H19 - 2, Phường Tân Phong, Quận 7	10h - 22h	10h - 22h	10h - 22h\n16	\nNguyễn Thị Minh Khai \n\n506 - 508 Nguyễn Thị Minh Khai, Phường 2, Quận 3	10h - 22h	10h - 22h	10h - 22h\n17	\nVõ Văn Ngân \n\n26-28-30 Võ Văn Ngân, Phường Trường Thọ, Quận Thủ Đức	10h - 22h	10h - 22h	10h - 22h\n18	\nSong Hành \n\n81 Song Hành, Phường An Phú, Quận 2	10h - 22h	10h - 22h	10h - 22h\n19	\nBàu Cát \n\n207-209 Bàu Cát, Phường 13, Quận Tân Bình	10h - 22h	10h - 22h	10h - 22h\n20	\nNguyễn Ảnh Thủ \n\n75/3-75/4 Nguyễn Ánh Thủ, Ấp Vạn Hạnh, Xã Trung Chánh, Huyện Hóc Môn	10h - 22h	10h - 22h	10h - 22h\n21	\nHoàng Hoa Thám \n\n10D Hoàng Hoa Thám, Phường 7, Quận Bình Thạnh	10h - 22h	10h - 22h	10h - 22h\n22	\nLê Đại Hành \n\nChung cư Phú Thọ: Lô 4 - Khu B - Căn số 7, Lê Đại Hành, Phường 11, Quận 11	10h - 22h	10h - 22h	10h - 22h\n23	\nPhan Xích Long \n\n355 Phan Xích Long, Phường 1, Quận Phú Nhuận	10h - 22h	10h - 22h	10h - 22h\n24	\nBà Hom \n\n64A1 - 64A2 Bà Hom, Phường 13, Quận 6	10h - 22h	10h - 22h	10h - 22h\n25	\nNguyễn Sơn \n\n303F Nguyễn Sơn, Phường Phú Thạnh, Quận Tân Phú	10h - 22h	10h - 22h	10h - 22h\n26	\nHòa Bình \n\n78D-80 Hòa Bình, Phường 5, Quận 11	10h - 22h	10h - 22h	10h - 22h\n27	\nNguyễn Thái Học \n\n105-107 Nguyễn Thái Học, Phường Cầu Ông Lãnh, Quận 1	10h - 22h	10h - 22h	10h - 22h\n28	\n333 Lê Văn Sỹ  \n\n333 Lê Văn Sỹ, Phường 13, Quận 3	10h - 22h	10h - 22h	10h - 22h\n29	\nHậu Giang \n\n167 Hậu Giang, Phường 5, Quận 6	10h - 22h	10h - 22h	10h - 22h\n30	\nQuốc Lộ 50 \n\n310 -312 Quốc Lộ 50, Phường 6, Quận 8	10h - 22h	10h - 22h	10h - 22h\n31	\nPhan Văn Trị \n\n527J Phan Văn Trị, Phường 5, Quận Gò Vấp	10h - 22h	10h - 22h	10h - 22h\n32	\nVincom Thảo Điền \n\n159 Xa Lộ Hà Nội, Phường Thảo Điền, Quận 2	11h - 22h	10h - 22h	10h - 22h\n33	\nCầu Giấy \n\n333 Cầu Giấy, Phường Dịch Vọng, Quận Cầu Giấy	10h - 21h	10h - 21h	10h - 22h\n34	\nĐoàn Trần Nghiệp \n\n30 Đoàn Trần Nghiệp, Phường Bùi Thị Xuân, Quận Hai Bà Trưng	10h - 21h	10h - 21h	10h - 22h\n35	\nXuân Diệu \n\n31 Xuân Diệu, Phường Quảng An, Quận Tây Hồ	10h - 21h	10h - 21h	10h - 22h\n36	\nNguyễn Cơ Thạch\n\n24 Nguyễn Cơ Thạch, Golden Field Building, Phường Cầu Diễn, Quận Nam Từ Liêm	10h - 21h30	10h - 21h30	10h - 21h30\n37	\nLinh Đàm \n\nKhu đô thị mới Tây Nam hồ Linh Đàm: Ô số 3, dãy A, lô TT3, Phường Hoàng Liệt, Quận Hoàng Mai	10h - 21h	10h - 21h	10h - 22h\n38	\nAeon Mall Hà Đông \n\nTTTM Aeon Mall Hà Đông: L2-271+272, Tổ Dân Phố, Phố Hoàng Văn Thụ, Phường Dương Nội, Quận Hà Đông	11h - 21h30	11h - 21h30	10h - 21h30\n39	\nAeon Mall Long Biên \n\nTTTM Aeon Long Biên: Tầng 3, 27 Cổ Linh, Phường Long Biên, Quận Long Biên	10h - 21h	10h - 21h	10h - 22h\n40	\nVincom Royal City \n\nTTTM Vincom Royal City: B2R3-14, 72A Nguyễn Trãi, Phường Thượng Đình, Quận Thanh Xuân	10h - 21h30	10h - 21h30	10h - 21h30 \n41	\nVincom Trần Duy Hưng \n\nTTTM Vincom Trần Duy Hưng: Tầng 4, 119 Trần Duy Hưng, Phường Trung Hòa, Quận Cầu Giấy	10h - 21h	10h - 21h	09h30 - 22h\n42	\nVincom Bắc Từ Liêm \n\nTTTM Vincom Bắc Từ Liêm: Tòa 27A2, B1-20, 234 Phạm Văn Đồng, Cổ Nhuế 1, Quận Bắc Từ Liêm	10h - 21h30	10h - 21h30	09h30 - 21h30 \n43	\nVincom Times City \n\nTTTM Vincom Times City: B1-05, 458 Phố Minh Khai, Khu đô thị Times City, Hai Bà Trưng	10h - 21h	10h - 21h	09h30 - 22h\n44	Sense City Bến Tre	TTTM Sense City Bến Tre: Tầng 1, Co.op Mart Bến Tre, 26A Trần Quốc Tuấn, Phường 4, Thành phố Bến Tre, Tỉnh Bến Tre	09h30 - 22h	09h30 - 22h	09h30 - 22h\n45	Sense City Cần Thơ	TTTM Sense City Cần Thơ: L2-04, 1 Đại lộ Hoà Bình, Phường Tân An, Quận Ninh Kiều, Tỉnh Cần Thơ	09h30 - 22h	09h30 - 22h	09h30 - 22h\n46	Coopmart Buôn Mê Thuột	Co.op Mart Buôn Ma Thuột: GF-04, 71 Nguyễn Tất Thành, Buôn Ma Thuột, Đắc Lắk	10h - 22h	10h - 22h	10h - 22h\n47	Coopmart Bảo Lộc	Co.op Mart Bảo Lộc: Tầng trệt, Đường Trần Phú, Phường 2, Thành phố Bảo Lộc, Tỉnh Lâm Đồng	10h - 22h	10h - 22h	10h - 22h\n48	Hạ Long Vũng Tàu	142 Hạ Long, Phường 2, Thành phố Vũng Tầu, Tỉnh Bà Rịa - Vũng Tàu	10h - 22h	10h - 22h	10h - 22h\n49	Big C Mỹ Tho	TTTM Big C Mỹ Tho: Tầng trệt, 545 Lê Văn Phẩm, Phường 5, Thành phố Mỹ Tho, Tỉnh Tiền Giang 	10h - 22h	10h - 22h	10h - 22h\n50	Hùng Vương Long An	86 Hùng Vương, Phường 2, TP. Tân An, Tỉnh Long An	10h - 22h	10h - 22h	10h - 22h\n51	Nguyễn Thiện Thuật	30B Nguyễn Thiện Thuật, Phường Tân Lập, Thành phố Nha Trang, Tỉnh Khánh Hoà	10h - 22h	10h - 22h	10h - 22h\n52	23 Tháng 10	99A Đường 23 Tháng 10, Phường Phương Sơn, Thành phố Nha Trang, Tỉnh Khánh Hoà	10h - 22h	10h - 22h	10h - 22h\n53	Hòa Bình- Đà Lạt	1A Nam Kỳ Khởi Nghĩa, Khu Hòa Bình, Thành phố Đà Lạt, Tỉnh Lâm Đồng	10h - 21h	10h - 21h	10h - 22h\n54	Võ Thị Sáu	147 Võ Thị Sáu, Phường 2, Thành phố Vũng Tàu, Tỉnh Bà Rịa Vũng Tàu	10h - 22h	10h - 22h	10h - 22h\n55	Pegasus	Toà nhà Pegasus Biên Hòa: 53-55 Võ Thị Sáu, Phường Quyết Thắng, Thành phố Biên Hoà, Tỉnh Đồng Nai	10h - 22h	10h - 22h	10h - 22h\n56	Vincom An Giang	TTTM Vincom Long Xuyên: Gian hàng L5-06+07, 1242 Trần Hưng Đạo, Phường Mỹ Bình, Thành phố Long Xuyên, Tỉnh An Giang	10h - 21h	10h - 22h	10h - 22h\n57	Vincom Biên Hòa	TTTM Vincom Biên Hòa: Tầng 5, 1096 Phạm Văn Thuận, Phường Tân Mai, Thành phố Biên Hoà, Tỉnh Đồng Nai	10h - 21h	10h - 22h	10h - 22h\n58	Vincom Buôn Mê Thuột	TTTM Vincom Buôn Ma Thuột: L2-A1, 78 Lý Thường Kiệt, Buôn Ma Thuột, Đắk Lắk	10h - 21h	10h - 22h	10h - 22h\n59	\nCoopmart Đà Nẵng \n\nCo.op Mart Đà Nẵng: Tầng trệt, 478 Điện Biên Phủ, Quận Thanh Khê, Đà Nẵng	10h - 22h	10h - 22h	10h - 22h\n60	\nNguyễn Văn Thoại \n\n173 Nguyễn Văn Thoại, Phường An Hải Đông, Quận Sơn Trà, Đà Nẵng	10h - 22h	10h - 22h	10h - 22h\n61	Aeon Mall Hải Phòng	Tầng 1, TTTM Aeon Mall Hải Phòng, Số 10 Đường Võ Nguyên Giáp, Phường Kênh Dương, Quận Lê Chân, Thành Phố Hải Phòng	10h - 21h30	10h - 21h30	10h - 21h30\n62	\nQuang Trung- Vinh\n\n17 Quang Trung, Phường Quang Trung, Thành phố Vinh, Tỉnh Nghệ An	10h - 22h	10h - 22h	10h - 22h\n63	\nNguyễn Văn Cừ\n\n138 Nguyễn Văn Cừ, Phường Hưng Phú, Thành Phố Vinh, Tỉnh Nghệ An	10h - 22h	10h - 22h	10h - 22h\n64	Nguyễn Kim Thanh Hóa	Trung tâm Mua sắm Nguyễn Kim: Tầng 1, 27-29 Đại lộ Lê Lợi, Phường Lam Sơn, Tỉnh Thanh Hóa	10h - 22h	10h - 22h	10h - 22h\n65	Nam Định	Khu đô thị mới Hoà Vượng: Thửa QH số 19, Lô QH số 22, Đường Đông A, Tỉnh Nam Định 	10h - 22h	10h - 22h	10h - 22h\n66	Tô Hiệu Hải Phòng	106 Tô Hiệu, Phường Trại Cau, Quận Lê Chân, Hải Phòng	10h - 21h30	10h - 21h30	10h - 21h30\n67	Lạch Tray Hải Phòng	302 - 304 Lạch Tray, Phường Kênh Dương, Quận Lê Chân, Hải Phòng	10h - 21h30	10h - 21h30	10h - 21h30\n68	\nVincom Bắc Ninh\n\nTTTM Vincom Bắc Ninh: Tầng 1, Đường Lý Thái Tổ, Đại Phúc, Tỉnh Bắc Ninh	10h - 22h	09h30 - 22h	09h30 - 22h\n69	Vincom Việt Trì	TTTM Vincom Việt Trì: Tầng 4, Đường Hùng Vương, Phường Tiên Cát, Thành Phố Việt Trì, Tỉnh Phú Thọ	10h - 21h30 	10h - 21h30 	09h30 - 21h30\n70	Vincom Huế	TTTM Vincom Huế: Tầng 1, 50A Hùng Vương, Thành phố Huế, Tỉnh Thừa Thiên - Huế 	10h - 21h	10h - 21h30	09h30 - 22h\n ', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `deliveryInformation_date` date NOT NULL,
  `total_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `deliveryInformation_date`, `total_amount`, `status`, `payment_method`, `created_at`, `updated_at`) VALUES
(17, 18, '2023-01-18', 47.12, 1, 2, '2023-01-17 18:56:53', '2023-02-17 18:56:53'),
(18, 21, '2023-04-13', 20.003, 0, 2, '2023-11-12 22:07:43', '2023-11-12 22:07:43'),
(45, 22, '2023-03-13', 30, 0, 2, '2023-04-13 01:37:31', '2023-11-13 01:37:31'),
(70, 49, '2023-11-29', 219110, 0, 2, '2023-11-28 19:09:24', '2023-11-28 19:09:24'),
(71, 49, '2023-11-29', 219110, 0, 2, '2023-11-28 19:11:24', '2023-11-28 19:11:24'),
(72, 50, '2023-11-29', 239110, 0, 2, '2023-11-29 01:51:58', '2023-11-29 01:51:58'),
(73, 50, '2023-11-29', 239110, 0, 2, '2023-11-29 01:56:01', '2023-11-29 01:56:01'),
(74, 50, '2023-11-29', 239110, 0, 2, '2023-11-29 01:56:42', '2023-11-29 01:56:42'),
(75, 51, '2023-11-29', 239110, 0, 2, '2023-11-29 02:09:07', '2023-11-29 02:09:07'),
(76, 51, '2023-11-29', 239110, 0, 2, '2023-11-29 02:10:01', '2023-11-29 02:10:01'),
(77, 52, '2023-11-29', 149105, 0, 1, '2023-11-29 09:45:13', '2023-11-29 09:45:13'),
(78, 52, '2023-11-29', 149105, 0, 1, '2023-11-29 09:46:20', '2023-11-29 09:46:20'),
(79, 53, '2023-11-30', 239110, 0, 1, '2023-11-29 17:39:46', '2023-11-29 17:39:46'),
(80, 54, '2023-11-30', 239110, 0, 1, '2023-11-30 03:42:20', '2023-11-30 03:42:20'),
(81, 57, '2023-11-30', 239110, 0, 1, '2023-11-30 09:37:01', '2023-11-30 09:37:01'),
(82, 58, '2023-11-30', 239110, 0, 2, '2023-11-30 09:38:24', '2023-11-30 09:38:24'),
(83, 58, '2023-11-30', 239110, 0, 2, '2023-11-30 09:39:02', '2023-11-30 09:39:02'),
(84, 58, '2023-11-30', 239110, 0, 3, '2023-11-30 09:42:57', '2023-11-30 09:42:57'),
(85, 58, '2023-11-30', 239110, 0, 3, '2023-11-30 09:43:40', '2023-11-30 09:43:40'),
(86, 58, '2023-11-30', 239110, 0, 3, '2023-11-30 09:43:52', '2023-11-30 09:43:52'),
(87, 58, '2023-11-30', 239110, 0, 3, '2023-11-30 09:48:43', '2023-11-30 09:48:43'),
(88, 59, '2023-12-01', 149105, 0, 3, '2023-11-30 16:39:06', '2023-11-30 16:39:06'),
(89, 60, '2023-12-01', 349110, 0, 3, '2023-11-30 19:16:08', '2023-11-30 19:16:08'),
(90, 62, '2023-12-01', 139000, 0, 3, '2023-12-01 05:15:19', '2023-12-01 05:15:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(24, 17, 1, 1, 100290, NULL, NULL),
(25, 18, 54, 1, 269110, NULL, NULL),
(26, 19, 52, 1, 269110, NULL, NULL),
(27, 20, 59, 1, 339115, NULL, NULL),
(51, 43, 53, 1, 249110, NULL, NULL),
(52, 44, 54, 1, 269110, NULL, NULL),
(53, 46, 54, 1, 269110, NULL, NULL),
(54, 47, 53, 1, 149110, NULL, NULL),
(55, 47, 69, 1, 219110, NULL, NULL),
(56, 47, 52, 1, 269110, NULL, NULL),
(57, 48, 53, 1, 149100, NULL, NULL),
(58, 49, 69, 1, 319.105, NULL, NULL),
(59, 50, 69, 1, 319.105, NULL, NULL),
(60, 51, 69, 1, 319.105, NULL, NULL),
(61, 50, 69, 1, 319.105, NULL, NULL),
(62, 52, 54, 1, 169.1, NULL, NULL),
(63, 57, 62, 1, 339.105, NULL, NULL),
(64, 58, 62, 1, 239110, NULL, NULL),
(65, 59, 62, 1, 239.11, NULL, NULL),
(66, 60, 62, 1, 239.11, NULL, NULL),
(67, 61, 62, 1, 239.11, NULL, NULL),
(68, 62, 62, 1, 239.11, NULL, NULL),
(69, 63, 57, 1, 249.11, NULL, NULL),
(70, 64, 57, 1, 249.11, NULL, NULL),
(71, 65, 57, 1, 249.11, NULL, NULL),
(72, 66, 56, 1, 269110, NULL, NULL),
(73, 67, 53, 1, 249110, NULL, NULL),
(74, 68, 71, 1, 219.11, NULL, NULL),
(75, 69, 71, 1, 219.11, NULL, NULL),
(76, 70, 68, 1, 219.11, NULL, NULL),
(77, 71, 68, 1, 219.11, NULL, NULL),
(78, 74, 58, 1, 239.11, NULL, NULL),
(79, 76, 58, 1, 239.11, NULL, NULL),
(80, 78, 53, 1, 149105, NULL, NULL),
(81, 79, 59, 1, 239110, NULL, NULL),
(82, 80, 59, 1, 239110, NULL, NULL),
(83, 81, 59, 1, 239110, NULL, NULL),
(84, 82, 59, 1, 239.11, NULL, NULL),
(85, 83, 59, 1, 239.11, NULL, NULL),
(86, 84, 59, 1, 239.11, NULL, NULL),
(87, 85, 59, 1, 239.11, NULL, NULL),
(88, 86, 59, 1, 239.11, NULL, NULL),
(89, 87, 59, 1, 239.11, NULL, NULL),
(90, 88, 53, 1, 149.105, NULL, NULL),
(91, 89, 53, 1, 349.11, NULL, NULL),
(92, 90, 58, 1, 239.11, NULL, NULL),
(93, 90, 68, 1, 119, NULL, NULL),
(94, 90, 74, 1, 139, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('vinhcodeacademy@gmail.com', 'xKm3kvseLpwjloEpSnMs6KEdSm03sDE8odkYPgMpOKs2aDQKFAseluqyt7tYdZTC', '2023-11-14 19:03:08'),
('vinhcodeacademy@gmail.com', 'WkhDnt9vtvF5SRQiV6Kc7ZAStP8bgmfQMJlena4WXIQjhGHY20syc3eJuiCcAmj2', '2023-11-14 19:05:15'),
('vinhcodeacademy@gmail.com', 'TzDVxR1ps4LImwdqz1RFCo0Pw2d5mY8wHksJKPazNms474Ze3eV2QDlhBaCj6TYK', '2023-11-14 19:06:27'),
('donguyentoan2003@gmail.com', 'laB2Sb9XHXLxJq9gUML4JtNCPU4BxAcmRfvLIEqvHZo0BIyMvhhDnXBkCmq2BgG2', '2023-11-17 17:40:44'),
('hoaphan5096@gmail.com', 'ibyAcjOFPHZdq9bbXpRDbWkMdFMWgLCl05bfA0DNaPYLZ3E0qpevnnTSEHZtUzyi', '2023-12-01 05:41:14'),
('hoaphan5096@gmail.com', '4ZQwUyS2ZbNCVdeGnwd4Nc01DdD4J9WOvK915NPwFtUV9RqFgR82iL5lRNDqCWq4', '2023-12-01 05:41:28'),
('hoaphan5096@gmail.com', 'KFPxso5lCskZE89q2ySXIEGYwQYiZk9zw5t5B31j4v74HtFp1Piv2pfTUnW4fZP8', '2023-12-01 05:42:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `id_oder` int(11) NOT NULL,
  `madonhang` varchar(500) NOT NULL,
  `sotien` double NOT NULL,
  `noidung` varchar(500) NOT NULL,
  `maphanhoi` varchar(500) NOT NULL,
  `magiaodich` varchar(500) NOT NULL,
  `manganhang` varchar(500) NOT NULL,
  `thoigian` date NOT NULL,
  `ketqua` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `id_oder`, `madonhang`, `sotien`, `noidung`, `maphanhoi`, `magiaodich`, `manganhang`, `thoigian`, `ketqua`, `created_at`, `updated_at`) VALUES
(1, 58, '5677', 23911000, 'Thanh toan GD:5677', '00', '14192316', 'NCB', '2023-11-22', 'GD Thanh cong', '2023-11-21 21:50:16', '2023-11-21 21:50:16'),
(2, 62, 'gksvh', 239110, 'Thanh toan GD:2fLsf', '00', 'CHy2F', 'COD', '2023-11-22', 'Thành Công', '2023-11-22 02:52:02', '2023-11-22 02:52:02'),
(3, 63, 'z3vlM', 249110, 'Thanh toan GD:vRia6', '00', 'GnW7K', 'COD', '2023-11-25', 'Thành Công', '2023-11-24 19:19:10', '2023-11-24 19:19:10'),
(4, 64, 'AJKbl', 249110, 'Thanh toan GD:PWKYZ', '00', '3G0mK', 'COD', '2023-11-25', 'Thành Công', '2023-11-24 19:20:10', '2023-11-24 19:20:10'),
(5, 65, 'DRpfV', 249110, 'Thanh toan GD:LNrs6', '00', 'VEKGp', 'COD', '2023-11-25', 'Thành Công', '2023-11-24 20:22:43', '2023-11-24 20:22:43'),
(6, 66, '3883', 26911000, 'Thanh toan GD:3883', '00', '14207947', 'NCB', '2023-11-29', 'GD Thanh cong', '2023-11-28 18:50:06', '2023-11-28 18:50:06'),
(7, 67, '1856', 24911000, 'Thanh toan GD:1856', '00', '14207971', 'NCB', '2023-11-29', 'GD Thanh cong', '2023-11-28 18:56:16', '2023-11-28 18:56:16'),
(8, 68, 'bbLAu', 219110, 'Thanh toan GD:Dwo5k', '00', 'rjAHj', 'COD', '2023-11-29', 'Thành Công', '2023-11-28 18:57:28', '2023-11-28 18:57:28'),
(9, 69, 'RxhvZ', 219110, 'Thanh toan GD:xEZzx', '00', 'v6dyZ', 'COD', '2023-11-29', 'Thành Công', '2023-11-28 18:59:08', '2023-11-28 18:59:08'),
(10, 70, 'pj9T5', 219110, 'Thanh toan GD:AvunD', '00', 'Q7KRa', 'COD', '2023-11-29', 'Thành Công', '2023-11-28 19:09:24', '2023-11-28 19:09:24'),
(11, 71, 'jiKHr', 219110, 'Thanh toan GD:e2gJw', '00', 'rnZrF', 'COD', '2023-11-29', 'Thành Công', '2023-11-28 19:11:24', '2023-11-28 19:11:24'),
(12, 74, '6ha6G', 239110, 'Thanh toan GD:5RRGY', '00', 'jLwU5', 'COD', '2023-11-29', 'Thành Công', '2023-11-29 01:56:42', '2023-11-29 01:56:42'),
(13, 76, 'FdgdJ', 239110, 'Thanh toan GD:d3TL4', '00', '0Sjtc', 'COD', '2023-11-29', 'Thành Công', '2023-11-29 02:10:01', '2023-11-29 02:10:01'),
(14, 78, '5387', 14910500, 'Thanh toan GD:5387', '00', '14210022', 'NCB', '2023-11-29', 'GD Thanh cong', '2023-11-29 09:48:22', '2023-11-29 09:48:22'),
(15, 82, 'thv0s', 239110, 'Thanh toan GD:z0uxH', '00', '8v0fW', 'COD', '2023-11-30', 'Thành Công', '2023-11-30 09:38:24', '2023-11-30 09:38:24'),
(16, 83, 'l8UVl', 239110, 'Thanh toan GD:WjoMw', '00', 'TCFUm', 'COD', '2023-11-30', 'Thành Công', '2023-11-30 09:39:02', '2023-11-30 09:39:02'),
(17, 84, 'D2GrY', 239110, 'Thanh toan GD:kAGlz', '00', 'sgliX', 'COD', '2023-11-30', 'Thành Công', '2023-11-30 09:42:57', '2023-11-30 09:42:57'),
(18, 85, 'zr9Rn', 239110, 'Thanh toan GD:i1Vug', '00', '7rmV6', 'COD', '2023-11-30', 'Thành Công', '2023-11-30 09:43:40', '2023-11-30 09:43:40'),
(19, 86, 'B3XlL', 239110, 'Thanh toan GD:hmz6V', '00', 'PmIKC', 'COD', '2023-11-30', 'Thành Công', '2023-11-30 09:43:52', '2023-11-30 09:43:52'),
(20, 87, '2f9dU', 239110, 'Thanh toan GD:ayd6X', '00', 'c0FFw', 'VDT', '2023-11-30', 'Thành Công', '2023-11-30 09:48:43', '2023-11-30 09:48:43'),
(21, 88, 'KAEPo', 149105, 'Thanh toan GD:Tyws7', '00', 'dw1NM', 'VDT', '2023-11-30', 'Thành Công', '2023-11-30 16:39:06', '2023-11-30 16:39:06'),
(22, 89, 'fQSu4', 349110, 'Thanh toan GD:FWIiA', '00', 'CVl5u', 'VDT', '2023-12-01', 'Thành Công', '2023-11-30 19:16:08', '2023-11-30 19:16:08'),
(23, 90, 'BAlOh', 139000, 'Thanh toan GD:2D2dO', '00', 'VCNrj', 'VDT', '2023-12-01', 'Thành Công', '2023-12-01 05:15:19', '2023-12-01 05:15:19');

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
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `like_count` int(11) DEFAULT 0,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `manufacture_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `like_count`, `categories_id`, `manufacture_id`, `created_at`, `updated_at`) VALUES
(51, 'MÌ Ý SỐT BÒ BẰM', 'Mì Ý sốt bò bằm là một món ăn thơm ngon và phong cách của ẩm thực Ý. Mì mềm mịn, sốt bò bằm đậm đà và hương vị phô mai Parmesan tạo nên hòa quyện hoàn hảo, đem đến trải nghiệm ẩm thực tuyệt vời.', '1699237922myYSotBoBam.png', 35000, 0, 2, 9, '2023-11-06 02:32:02', '2023-11-07 02:23:09'),
(53, 'Pizza Hải Sản Cocktail', 'Tôm, cua, giăm bông,... với sốt Thousand Island', '16993282210002212_sf-cocktail_300.png', 149000, 0, 1, 1, '2023-11-07 03:37:01', '2023-11-29 17:29:54'),
(58, 'Pizza Aloha', 'Thịt nguội, xúc xích tiêu cay và dứa hòa quyện với sốt Thousand Island', '16993303640002225_double-pepperoni_300.png', 139000, 1, 1, 15, '2023-11-07 04:12:44', '2023-11-29 17:28:49'),
(59, 'Pizza Thịt Xông Khói', 'Thịt giăm bông, thịt xông khói và hai loại rau của ớt xanh, cà chua', '16993304360002218_sup-deluxe_300.png', 139000, 0, 1, 1, '2023-11-07 04:13:56', '2023-11-29 17:24:48'),
(63, 'Pizza 5 Loại Thịt Đặc Biệt Và Rau Củ', 'Xúc xích bò, giăm bông, thịt xông khói,...và cả thế giới rau phong phú.', '16993307300002221_bacon-sup_300.png', 139000, 0, 1, 1, '2023-11-07 04:18:50', '2023-11-29 01:59:30'),
(64, 'Pizza Gà Nướng Dứa', 'Thịt gà mang vị ngọt của dứa kết hợp với vị cay nóng của ớt', '16993308440002212_sf-cocktail_300.png', 139000, 1, 1, 1, '2023-11-07 04:20:44', '2023-11-17 01:49:01'),
(66, 'Pizza Xúc Xích Ý', 'Xúc xích cay kiểu Ý trên nền sốt cà chua', '16993309300002225_double-pepperoni_300.png', 119000, 0, 1, 1, '2023-11-07 04:22:10', '2023-11-17 08:39:13'),
(68, 'Pizza Hawaiian', 'Giăm bông, thịt muối và dứa', '16993312860002224_hawaii_300.png', 119000, 0, 1, 1, '2023-11-07 04:28:06', '2023-11-17 08:39:12'),
(69, 'Pizza Sốt Nấm & Bông Cải Xanh', 'Với sự kết hợp từ nấm, bông cải xanh và xốt nấm Truffle thơm béo sẽ tạo nên một hương vị khó quên cho những thực khách thích thanh đạm.', '16993313180003785_trufflemushroomsaucebroccoli_300.png', 119000, 0, 1, 1, '2023-11-07 04:28:38', '2023-11-17 01:54:09'),
(71, 'Pizza Rau Củ', 'Pizza Rau Củ', '16993313540002229_veg_300.png', 119000, 0, 1, 1, '2023-11-07 04:29:14', '2023-11-16 21:45:33'),
(72, 'Mỳ Ý Truffle', 'Nấm Truffle đen với hương thơm ngất ngây, phủ trên lớp sốt kem nấm beo béo đậm đà cùng thịt giăm bông mềm mại.', '16993460840003667_ham-mushroom-w-cream-truffle-sause_500.png', 1490000, 0, 2, 9, '2023-11-07 08:34:44', '2023-11-16 19:11:00'),
(73, 'Mì Ý Pesto', 'Các loại nguyên liệu hải sản hảo hạng: Tôm, mực hoà quyện trên nền sốt Pesto xanh đậm vị, thơm hương đặc trưng từ lá húng tây – mang đậm nét truyền thống ẩm thực Ý.', '1699346879pasta-seafood-w-pesto-sauce.png', 149000, 0, 2, 9, '2023-11-07 08:47:59', '2023-11-16 19:15:01'),
(74, 'Mỳ Ý Cay Hải Sản', 'Mỳ Ý rán với các loại hải sản tươi ngon cùng ớt và tỏi', '16993506170003135_spaghetti-vegetarian-w-marinara-sauce_500.png', 139000, 0, 2, 9, '2023-11-07 09:18:49', '2023-11-07 05:38:34'),
(75, 'Mỳ Ý Chay Sốt Marinara', 'Mỳ Ý áp chảo với sốt Marinara, nấm và cà chua đỏ', '16993495840003135_spaghetti-vegetarian-w-marinara-sauce_500.png', 99000, 0, 2, 9, '2023-11-07 02:33:04', '2023-11-16 21:38:54'),
(76, 'Mỳ Ý Tôm Sốt Kem Cà Chua', 'Sự tươi ngon của tôm kết hợp với sốt kem cà chua', '16993497620002257_spaghetti-shrimp-rose_500.png', 139000, 0, 2, 9, '2023-11-07 02:36:02', '2023-11-16 21:38:57'),
(77, 'Mỳ Ý Cay Xúc Xích', 'Mỳ Ý rán với xúc xích cay, thảo mộc, ngò gai và húng quế Ý', '16993500650002254_spicy-sausage-spaghetti_500.png', 119000, 0, 2, 9, '2023-11-07 02:41:05', '2023-11-07 02:41:05'),
(81, 'Pepsi Black Lime Lon', 'Pepsi Black', '16994277460002573_pepsi-lime-can_300.png', 29000, 0, 4, 2, '2023-11-08 00:15:46', '2023-11-08 00:15:46'),
(82, 'Pepsi Black Lon', 'Pepsi Black', '16994278090002420_pepsi-black-can_300.jpeg', 29000, 0, 4, 2, '2023-11-08 00:16:49', '2023-11-16 19:10:08'),
(83, 'Pepsi Lon', 'Pepsi Lon', '16994278650002365_pepsi-can_300.jpeg', 29000, 0, 4, 2, '2023-11-08 00:17:45', '2023-11-16 19:10:10'),
(84, 'Mirinda Soda Kem Lon', 'Mirinda Soda', '16994279050002702_mirinda-soda-kem-can_300.png', 29000, 0, 4, 2, '2023-11-08 00:18:25', '2023-11-08 00:18:25'),
(85, '7Up Lon', '7Up', '16994279790002363_7-up-can_500.jpeg', 29000, 0, 4, 2, '2023-11-08 00:19:39', '2023-11-08 00:19:39'),
(86, 'Pepsi 1,5l Chai', 'Pepsi Chai', '16994280410002364_pepsi-15l-pet_500.jpeg', 29000, 0, 4, 2, '2023-11-08 00:20:41', '2023-11-16 19:10:15'),
(87, '7Up 1,5l Chai', '7Up 1,5l Chai', '16994281010002421_7-up-15l-pet_300.jpeg', 39000, 0, 4, 2, '2023-11-08 00:21:41', '2023-11-16 19:10:13'),
(88, 'Aquafina Chai', 'Aquafina Chai', '16994281440002439_aquafina_500 (1).png', 39000, 0, 4, 2, '2023-11-08 00:22:24', '2023-11-08 00:23:35'),
(89, 'Bia Heineken', 'Bia Heineken', '16994282800002436_heineken_500.png', 49000, 0, 4, 2, '2023-11-08 00:24:40', '2023-11-08 00:24:40'),
(90, 'Bia 333', 'Bia 333', '16994283270002434_333-beer_500.png', 49000, 0, 4, 2, '2023-11-08 00:25:27', '2023-11-09 18:03:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `Name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `Name`) VALUES
(0, 'Customer'),
(1, 'SuperAdmin'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Nhỏ', 5000, NULL, NULL),
(2, 'Vừa', 10000, NULL, NULL),
(3, 'Lớn ', 15000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `toppings`
--

CREATE TABLE `toppings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES
(5, 'Nguyen Toan', '0344842232', 'donguyentoan2003@gmail.com', NULL, '$2y$10$9iDc.uB49cpWvW0AyazCfeQSO6cJgb/uWRiwoLYMth62tU5YaQnkO', NULL, '2023-11-17 01:34:16', '2023-11-29 18:01:00', 1),
(6, 'Nguyen Van Toan', '0344842233', 'cutoihanh@gmail.com', NULL, '$2y$10$g2e1pqKP43TB8IxfYxXjseLhj92ogjeHE4yRh2eBQJ2VOP9BJuzeO', NULL, '2023-11-17 17:37:40', '2023-11-27 01:03:11', 0),
(17, 'Đức Hòa', '0123456789', 'admin@gmail.com', NULL, '$2y$10$4U0NgrB9xZkkvifAphyFsOS/qvKiSx6eWwy155DUc2zqtPTzhZvCC', NULL, '2023-12-01 03:55:07', '2023-12-01 04:14:08', 1),
(18, 'DucHoa', '0365114930', 'hoaphan5096@gmail.com', NULL, '$2y$10$sd63Yagjb.mzEGgyUo98rOYio/mWHX2lLYdw6tCsEL05H2ULAIiTW', NULL, '2023-12-01 05:40:27', '2023-12-01 05:40:27', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `balance` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `address`, `name`, `balance`, `created_at`, `updated_at`) VALUES
(3, 13, 'lzYGpoAePt', 'wallet 13', -139110, '2023-11-30 09:29:42', '2023-11-30 09:48:43'),
(4, 14, '60uYqJcEcF', 'wallet 14', 850895, '2023-11-30 16:36:57', '2023-11-30 16:39:06'),
(5, 15, 'QXrIm3li5h', 'wallet 15', 100000, '2023-11-30 18:20:28', '2023-11-30 18:21:30'),
(6, 16, 'NLvPX6woqR', 'wallet 16', -249110, '2023-11-30 19:13:35', '2023-11-30 19:16:08'),
(7, 17, '2iBmGd9eNZ', 'wallet 17', -139000, '2023-12-01 03:55:07', '2023-12-01 05:15:19'),
(8, 18, 'RalzCyZSkb', 'wallet 18', 0, '2023-12-01 05:40:27', '2023-12-01 05:40:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wallet_id` int(11) NOT NULL,
  `action` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `message` varchar(191) NOT NULL,
  `transaction_id` varchar(191) NOT NULL,
  `balance` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wallet_transactions`
--

INSERT INTO `wallet_transactions` (`id`, `wallet_id`, `action`, `type`, `message`, `transaction_id`, `balance`, `created_at`, `updated_at`) VALUES
(10, 3, 'ACTION_INCREASE', 'TYPE_CHANGE', 'Đã nạp :  100000  vào ví', 'kavmyfdrrY', 100000, '2023-11-30 09:30:40', '2023-11-30 09:30:40'),
(13, 4, 'ACTION_INCREASE', 'TYPE_CHANGE', 'Đã nạp :  1000000  vào ví', 'QMFWZJSfxf', 1000000, '2023-11-30 16:38:15', '2023-11-30 16:38:15'),
(14, 4, 'ACTION_DECREASE', 'TYPE_CHANGE', 'Đã Thanh Toán  :  149105  Cho Đơn Hàng Đã Đặt', 'g6LKort547', 149105, '2023-11-30 16:39:06', '2023-11-30 16:39:06'),
(15, 5, 'ACTION_INCREASE', 'TYPE_CHANGE', 'Đã nạp :  100000  vào ví', 'muyGSHZVWd', 100000, '2023-11-30 18:21:30', '2023-11-30 18:21:30'),
(16, 6, 'ACTION_INCREASE', 'TYPE_CHANGE', 'Đã nạp :  100000  vào ví', 'tRo6qZyQVv', 100000, '2023-11-30 19:15:07', '2023-11-30 19:15:07'),
(17, 6, 'ACTION_DECREASE', 'TYPE_CHANGE', 'Đã Thanh Toán  :  349110  Cho Đơn Hàng Đã Đặt', 'PuBLOIZ9ov', 349110, '2023-11-30 19:16:08', '2023-11-30 19:16:08'),
(18, 7, 'ACTION_DECREASE', 'TYPE_CHANGE', 'Đã Thanh Toán  :  139000  Cho Đơn Hàng Đã Đặt', '11S14dwYSd', 139000, '2023-12-01 05:15:19', '2023-12-01 05:15:19');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `active_users`
--
ALTER TABLE `active_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comboes`
--
ALTER TABLE `comboes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `delivery_informations`
--
ALTER TABLE `delivery_informations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `like_product` (`id_product`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `new_posts`
--
ALTER TABLE `new_posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_id` (`categories_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `toppings`
--
ALTER TABLE `toppings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallets_address_unique` (`address`);

--
-- Chỉ mục cho bảng `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallet_transactions_transaction_id_unique` (`transaction_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `active_users`
--
ALTER TABLE `active_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `comboes`
--
ALTER TABLE `comboes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `delivery_informations`
--
ALTER TABLE `delivery_informations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=649;

--
-- AUTO_INCREMENT cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `new_posts`
--
ALTER TABLE `new_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `active_users`
--
ALTER TABLE `active_users`
  ADD CONSTRAINT `active_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
