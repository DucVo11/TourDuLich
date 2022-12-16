-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th8 04, 2022 lúc 04:21 AM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bantourdulich`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `a_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_show_home` tinyint(4) NOT NULL DEFAULT '0',
  `a_active` tinyint(4) NOT NULL DEFAULT '1',
  `a_view` int(11) NOT NULL DEFAULT '0',
  `a_description` text COLLATE utf8mb4_unicode_ci,
  `a_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci,
  `a_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `a_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_a_slug_index` (`a_slug`),
  KEY `articles_a_show_home_index` (`a_show_home`),
  KEY `articles_a_active_index` (`a_active`),
  KEY `articles_a_category_id_index` (`a_category_id`),
  KEY `articles_a_user_id_index` (`a_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_title`, `a_slug`, `a_show_home`, `a_active`, `a_view`, `a_description`, `a_avatar`, `a_content`, `a_category_id`, `a_user_id`, `created_at`, `updated_at`) VALUES
(1, 'Ưu đãi Tháng 5, cơ hội vàng săn tour du lịch hè giá tốt', '', 0, 1, 0, '<p>M&ugrave;a h&egrave; bắt đầu chạm ng&otilde;, cũng l&agrave; l&uacute;c c&aacute;c doanh nghiệp bắt đầu tung ra nhiều chương tr&igrave;nh khuyến m&atilde;i. Đ&acirc;y cũng l&agrave; cơ hội tốt để &ldquo;săn&rdquo; ưu đ&atilde;i th&aacute;ng 5 với nhiều chương tr&igrave;nh hấp dẫn c&oacute; gi&aacute; ưu đ&atilde;i bất ngờ.</p>', '2021-07-03__63bcf3f3fb8d1f6b13518ab9668b4d88.jpg', '<p>Th&aacute;ng 5 cũng l&agrave; thời điểm khởi đầu m&ugrave;a h&egrave;, để đ&aacute;p ứng nhu cầu giải tr&iacute;, thư gi&atilde;n của du kh&aacute;ch muốn &ldquo;trốn nắng&rdquo; v&agrave; nạp lại năng lượng sau những ng&agrave;y tất bật với gi&aacute;o &aacute;n, thi cử. Nhằm mang đến cho du kh&aacute;ch một m&ugrave;a h&egrave; s&ocirc;i động nhưng vẫn đảm bảo t&iacute;nh &ldquo;du lịch an to&agrave;n&rdquo; với gi&aacute; tốt nhất, Vietravel mang đến cho du kh&aacute;ch loạt ưu đ&atilde;i th&aacute;ng 5 với c&aacute;c chương tr&igrave;nh tour trọn g&oacute;i độc đ&aacute;o, g&oacute;i dịch vụ chất lượng, gi&aacute; giảm sốc l&ecirc;n đến 49%. Nhiều sản phẩm giảm từ 500.000 - 1.000.000 đồng.<br />\r\n<br />\r\nCombo gi&aacute; tốt giảm đến 500.000 đồng đặc biệt d&agrave;nh cho ưu đ&atilde;i th&aacute;ng 5<br />\r\n<br />\r\nVới lợi thế khi sở hữu X&iacute; nghiệp vận chuyển Xuy&ecirc;n &Aacute; v&agrave; H&atilde;ng h&agrave;ng kh&ocirc;ng Vietravel Airlines với c&aacute;c đường bay kết nối c&aacute;c v&ugrave;ng kinh tế trọng điểm, c&aacute;c điểm đến du lịch nổi tiếng trong cả nước, Vietravel sẽ mang đến cho du kh&aacute;ch những g&oacute;i dịch vụ tốt nhất với gi&aacute; thấp nhất, chỉ từ 1.190.000 đồng bao gồm v&eacute; m&aacute;y bay khứ hồi + 2 đ&ecirc;m kh&aacute;ch sạn 3*,4*,5* tại c&aacute;c kh&aacute;ch sạn nổi tiếng như Dragon King Đ&agrave; Lạt, Sunset Beach Resort &amp; Spa Ph&uacute; Quốc,&hellip;<br />\r\n&nbsp;</p>', 2, 1, '2021-07-03 13:47:02', '2021-07-17 16:44:33'),
(2, 'Nhiều ưu đãi du lịch hè hấp dẫn nhân dịp Ngày hội Du lịch Thành phố Hồ Chí Minh lần thứ 17', '', 0, 1, 0, '<p>Nhiều ưu đ&atilde;i du lịch h&egrave; hấp dẫn nh&acirc;n dịp Ng&agrave;y hội Du lịch Th&agrave;nh phố Hồ Ch&iacute; Minh lần thứ 17</p>', '2021-07-03__7c0f878f09f49a0b8abc3c194313e34b.jpg', '<p>Nhiều ưu đ&atilde;i du lịch h&egrave; hấp dẫn nh&acirc;n dịp Ng&agrave;y hội Du lịch Th&agrave;nh phố Hồ Ch&iacute; Minh lần thứ 17<br />\r\n&nbsp;</p>', 1, 1, '2021-07-03 13:48:13', '2021-07-12 18:10:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_tours`
--

DROP TABLE IF EXISTS `book_tours`;
CREATE TABLE IF NOT EXISTS `book_tours` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `b_tour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `b_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `b_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_start_date` date DEFAULT NULL,
  `b_note` text COLLATE utf8mb4_unicode_ci,
  `b_number_adults` int(11) DEFAULT '0',
  `b_number_children` int(11) DEFAULT '0',
  `b_number_child6` int(11) NOT NULL,
  `b_price_child2` int(11) NOT NULL,
  `b_number_child2` int(11) NOT NULL,
  `b_price_child6` int(11) NOT NULL,
  `b_price_adults` int(11) NOT NULL DEFAULT '0',
  `b_price_children` int(11) NOT NULL DEFAULT '0',
  `b_status` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_tours_b_tour_id_index` (`b_tour_id`),
  KEY `book_tours_b_user_id_index` (`b_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_parent_id` int(11) DEFAULT '0',
  `c_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT '0',
  `c_status` tinyint(4) NOT NULL DEFAULT '1',
  `c_type` tinyint(4) DEFAULT NULL,
  `c_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  KEY `categories_c_parent_id_index` (`c_parent_id`),
  KEY `categories_c_user_id_index` (`c_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_parent_id`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_hot`, `c_status`, `c_type`, `c_user_id`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức', 0, 'tin-tuc', NULL, NULL, NULL, 0, 1, NULL, NULL, '2021-07-03 13:36:58', '2021-07-03 13:36:58'),
(2, 'Cẩm nang du lịch', 0, 'cam-nang-du-lich', NULL, NULL, NULL, 0, 1, NULL, NULL, '2021-07-03 13:37:12', '2021-07-03 13:37:12'),
(3, 'Kinh nghiệm du lịch', 0, 'kinh-nghiem-du-lich', NULL, NULL, NULL, 0, 1, NULL, NULL, '2021-07-03 13:37:27', '2021-07-03 13:37:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cm_reply_id` bigint(20) DEFAULT NULL,
  `cm_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cm_article_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cm_hotel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cm_tour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cm_content` text COLLATE utf8mb4_unicode_ci,
  `cm_images` text COLLATE utf8mb4_unicode_ci,
  `cm_status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_cm_reply_id_index` (`cm_reply_id`),
  KEY `comments_cm_user_id_index` (`cm_user_id`),
  KEY `comments_cm_article_id_index` (`cm_article_id`),
  KEY `comments_cm_hotel_id_index` (`cm_hotel_id`),
  KEY `comments_cm_tour_id_index` (`cm_tour_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `cm_reply_id`, `cm_user_id`, `cm_article_id`, `cm_hotel_id`, `cm_tour_id`, `cm_content`, `cm_images`, `cm_status`, `created_at`, `updated_at`) VALUES
(15, NULL, 7, NULL, 3, NULL, 'Quá OK', NULL, 1, '2022-08-04 12:57:10', '2022-08-04 12:57:10'),
(16, NULL, 7, 1, NULL, NULL, 'OK', NULL, 1, '2022-08-04 13:50:13', '2022-08-04 13:50:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `c_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_c_user_id_index` (`c_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_permission`
--

DROP TABLE IF EXISTS `group_permission`;
CREATE TABLE IF NOT EXISTS `group_permission` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_permission_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `group_permission`
--

INSERT INTO `group_permission` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Quản lý thệ thống', 'Quản lý thệ thống', '2021-07-19 16:00:50', '2021-07-19 16:00:50'),
(2, 'Quản lý danh mục', 'Quản lý danh mục', '2021-07-19 16:01:29', '2021-07-19 16:01:29'),
(3, 'Quản lý bài viết', 'Quản lý bài viết', '2021-07-19 16:01:38', '2021-07-19 16:01:38'),
(4, 'Quản lý địa điểm', 'Quản lý địa điểm', '2021-07-19 16:01:48', '2021-07-19 16:01:48'),
(5, 'Quản lý tour', 'Quản lý tour', '2021-07-19 16:01:57', '2021-07-19 16:01:57'),
(6, 'Quản lý khách sạn', 'Quản lý khách sạn', '2021-07-19 16:02:08', '2021-07-19 16:02:08'),
(7, 'Quản lý đặt tour', 'Quản lý đặt tour', '2021-07-19 16:02:25', '2021-07-19 16:02:25'),
(8, 'Quản lý vai trò', 'Quản lý đặt tour', '2021-07-19 16:02:38', '2021-07-19 16:02:38'),
(9, 'Quản lý người dùng', 'Quản lý người dùng', '2021-07-19 16:02:50', '2021-07-19 16:02:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hotels`
--

DROP TABLE IF EXISTS `hotels`;
CREATE TABLE IF NOT EXISTS `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `h_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_anbum_image` text COLLATE utf8mb4_unicode_ci,
  `h_price` int(11) DEFAULT '0',
  `h_price_contact` tinyint(4) DEFAULT '0',
  `h_sale` int(11) NOT NULL DEFAULT '0',
  `h_description` text COLLATE utf8mb4_unicode_ci,
  `h_content` text COLLATE utf8mb4_unicode_ci,
  `h_status` tinyint(4) NOT NULL DEFAULT '0',
  `h_location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `h_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hotels_h_location_id_index` (`h_location_id`),
  KEY `hotels_h_user_id_index` (`h_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hotels`
--

INSERT INTO `hotels` (`id`, `h_name`, `h_image`, `h_address`, `h_phone`, `h_anbum_image`, `h_price`, `h_price_contact`, `h_sale`, `h_description`, `h_content`, `h_status`, `h_location_id`, `h_user_id`, `created_at`, `updated_at`) VALUES
(1, 'VINPEARL DISCOVERY 3 PHU QUOC', '2021-07-15__b447e61894d6115ffd55727ed54ae363.jpg', NULL, NULL, NULL, 76856785, 0, 0, '<p><em>Vinpearl Ph&uacute; Quốc Resort &amp; Spa mang đậm kiến tr&uacute;c &Aacute; Đ&ocirc;ng với m&aacute;i ng&oacute;i đỏ điển h&igrave;nh trong quần thể Vinpearl Ph&uacute; Quốc. Khu nghỉ dưỡng sở hữu c&aacute;c ch&ograve;i spa tr&ecirc;n mặt hồ độc đ</em></p>', NULL, 1, 3, NULL, '2021-07-10 03:58:06', '2021-07-15 18:01:58'),
(2, 'Vinpearl Resort & Spa Đà Nẵng', '2021-07-16__16224dc2b36003d18479886a00d30f9a.jpg', '23 Trường Sa, Hoà Hải, Ngũ Hành Sơn, Đà Nẵng 550000', '0902976588', NULL, 8550000, 0, 0, '<p>Y&ecirc;n b&igrave;nh nằm b&ecirc;n b&atilde;i biển Non Nước xinh đẹp,&nbsp;<strong>Vinpearl Resort &amp; Spa Đ&agrave; Nẵng</strong>&nbsp;sở hữu 122 căn biệt thự với tầm nh&igrave;n độc đ&aacute;o vừa hướng hồ, vừa hướng biển. Kiến tr&uacute;c t&acirc;n cổ điển đặc trưng v&agrave; phong cảnh thi&ecirc;n nhi&ecirc;n hữu t&igrave;nh khiến cho khu nghỉ dưỡng từ l&acirc;u đ&atilde; trở th&agrave;nh điểm đến kh&ocirc;ng thể bỏ qua d&agrave;nh cho cả gia đ&igrave;nh trong h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; th&agrave;nh phố&nbsp;<strong>Đ&agrave; Nẵng</strong>&nbsp;xinh đẹp cũng dễ d&agrave;ng gh&eacute; thăm khu phố cổ&nbsp;<strong>Hội An</strong>&nbsp;y&ecirc;n b&igrave;nh.</p>', '<p>VỊ TR&Iacute;</p>\r\n\r\n<p>Nằm tr&ecirc;n đường Trường Sa, Ngũ H&agrave;nh Sơn &ndash; nợi được mệnh danh l&agrave; con đường 5 sao về du lịch của Th&agrave;nh phố Đ&agrave; Nẵng - trung t&acirc;m của con đường di sản miền Trung v&agrave; l&agrave; th&agrave;nh phố đ&aacute;ng sống nhất Việt Nam. Vinpearl Resort &amp; Spa Đ&agrave; Nẵng với kiến tr&uacute;c t&acirc;n cổ điển đặc trưng, nằm b&ecirc;n b&atilde;i biển Non Nước xinh đẹp, với hệ thống 122 biệt thự nghỉ dưỡng, kh&ocirc;ng chỉ gi&uacute;p bạn trải nghiệm một m&ocirc;i trường sống xứng tầm giữa thi&ecirc;n nhi&ecirc;n tuyệt đẹp v&agrave; hệ thống tiện nghi &nbsp;hiện đại. Ch&iacute;nh v&igrave; vậy, c&oacute; thể n&oacute;i Vinpearl Resort &amp; Spa Đ&agrave; Nẵng l&agrave; địa điểm th&iacute;ch hợp nhất khi chọn loại h&igrave;nh du lịch nghỉ dưỡng ở Đ&agrave; nẵng.</p>\r\n\r\n<p>Vị tr&iacute; thuận lợi, du kh&aacute;ch c&oacute; thể dễ d&agrave;ng di chuyển đến nhiều danh thắng nổi tiếng của Đ&agrave; Nẵng như Cầu Rồng (12km), chợ H&agrave;n (12km), ch&ugrave;a Linh Ứng (16,3km), Hội An (17km),</p>\r\n\r\n<p>+ Khu du lịch B&agrave; N&agrave; Hills (33km).</p>\r\n\r\n<p>Gi&aacute; v&eacute; 700.000vnđ/ người lớn, 550.000vnđ/ trẻ em. Địa điểm mua v&eacute;: tại quầy dưới ch&acirc;n n&uacute;i Khu du lịch B&agrave; N&agrave; Hills. Mua v&eacute; online tại trang web của Sun World B&agrave; N&agrave; Hills. Văn ph&ograve;ng đại diện tại số 93 Nguyễn Văn Linh, Q.Hải Ch&acirc;u. B&agrave; N&agrave; Hills quần thể du lịch nghỉ dưỡng kết hợp vui chơi giải tr&iacute; đẳng cấp tại Việt Nam. Đến đ&acirc;y, du kh&aacute;ch được trải nghiệm một trong 10 tuyến c&aacute;p treo ấn tượng nhất thế giới (do CNN b&igrave;nh chọn).</p>\r\n\r\n<p>+ C&ocirc;ng vi&ecirc;n suối kho&aacute;ng n&oacute;ng n&uacute;i Thần T&agrave;i (36km)</p>\r\n\r\n<p>Gi&aacute; v&eacute;: V&eacute; v&agrave;o cổng: 300.000vnđ/ người lớn, 150.000vnđ/ trẻ em từ 1-1m3, miễn ph&iacute; trẻ dưới 1m.</p>\r\n\r\n<p>Gi&aacute; v&eacute; bao gồm c&aacute;c dịch vụ: Tắm kho&aacute;ng tại Huyệt Long Hồ v&agrave; c&aacute;c hồ tự nhi&ecirc;n kh&aacute;c. Thư gi&atilde;n với với x&ocirc;ng hơi kh&ocirc;, x&ocirc;ng hơi ướt. Trượt phao chinh phục d&ograve;ng s&ocirc;ng Lười. Tham quan c&aacute;c mỏ kho&aacute;ng ph&aacute;t lộ. Ng&acirc;m ch&acirc;n trực tiếp tại một trong những điểm ph&aacute;t lộ tại mỏ kho&aacute;ng. Thỏa sức tham gia c&aacute;c tr&ograve; chơi nước v&agrave; massage tại hồ sục Jacuzzii. Vui chơi c&ocirc;ng vi&ecirc;n nước.</p>\r\n\r\n<p>**Lưu &yacute;: Từ C&ocirc;ng vi&ecirc;n sang Khu du lịch B&agrave; N&agrave; Hills khoảng 17km, xung quanh kh&aacute; vắng n&ecirc;n du kh&aacute;ch n&ecirc;n ưu ti&ecirc;n lựa chọn ăn uống ngay trong khu&ocirc;n vi&ecirc;n.</p>\r\n\r\n<p>DI CHUYỂN</p>\r\n\r\n<p>Di chuyển bằng đường h&agrave;ng kh&ocirc;ng: Từ H&agrave; Nội, TP.HCM,&hellip; c&aacute;c bạn c&oacute; thể di chuyển bằng m&aacute;y bay xuống s&acirc;n bay quốc tế Đ&agrave; Nẵng.<br />\r\n+ TP.HCM &ndash; s&acirc;n bay quốc tế Đ&agrave; Nẵng: gi&aacute; dao động từ 647.000 &ndash; 2.469.000 vnđ/người/chuyến (t&ugrave;y v&agrave;o thời gian của chuyến bay, số ghế,&hellip;). &nbsp;Thời gian di chuyển khoảng 1 tiếng 20 ph&uacute;t.</p>\r\n\r\n<p>+ H&agrave; Nội &ndash; s&acirc;n bay quốc tế Đ&agrave; Nẵng: gi&aacute; dao động từ 647.000 &ndash; 2.369.000 vnđ/người/chuyến (t&ugrave;y v&agrave;o thời gian của chuyến bay, số ghế,&hellip;). &nbsp;Thời gian di chuyển khoảng 1 tiếng 20 ph&uacute;t.</p>\r\n\r\n<p>Từ s&acirc;n bay Đ&agrave; Nẵng thuận tiện nhất l&agrave; sử dụng taxi của c&aacute;c h&atilde;ng xe phổ biến tại Đ&agrave; Nẵng - Hội An như Mai Linh, Vinasun, Ti&ecirc;n Sa,.... để đến Vinpearl Resort &amp; Spa Đ&agrave; Nẵng.</p>\r\n\r\n<p>Từ s&acirc;n bay Đ&agrave; Nẵng về resort khoảng 12,7km tương đương 24 ph&uacute;t đi xe. Gi&aacute; taxi một chiều khoảng 182.000 - 211.000 vnđ t&ugrave;y loại xe, t&ugrave;y h&atilde;ng xe bạn chọn v&agrave; thời điểm đặt xe.</p>\r\n\r\n<p>Di chuyển bằng xe kh&aacute;ch: Từ H&agrave; Nội, hoặc TPHCM,&hellip; c&aacute;c bạn c&oacute; thể di chuyển bằng xe kh&aacute;ch đến Đ&agrave; Nẵng với gi&aacute; khoảng 320.000vnđ/người/chuyến. Sau đ&oacute; di chuyển bằng taxi đến Vinpearl Resort &amp; Golf Nam Hội An.<br />\r\nTIỆN &Iacute;CH V&Agrave; GIẢI TR&Iacute;</p>\r\n\r\n<p>Nh&agrave; h&agrave;ng v&agrave; bar: Trong một kh&ocirc;ng gian được thiết kế sang trọng, độc đ&aacute;o, tinh tế v&agrave; tỉ mĩ đến từng chi tiết, bạn sẽ được thưởng thức những tinh hoa tuyệt vời, đặc sắc v&agrave; đa dạng trong ẩm thực &Aacute;-&Acirc;u.<br />\r\nGiải tr&iacute;: s&acirc;n tennis rộng lớn đặt trong khu vực sảnh, s&acirc;n tennis của Vinpearl cung cấp dịch vụ cho thu&ecirc; thiết bị v&agrave; người chơi, trọng t&agrave;i cũng như huấn luyện vi&ecirc;n chuy&ecirc;n nghiệp, đ&aacute;p ứng mọi y&ecirc;u cầu của du kh&aacute;ch. Đặc biệt, Vinpearl Resort &amp; Spa Đ&agrave; Nẵng sở hữu một b&atilde;i biển ri&ecirc;ng tại b&atilde;i Non Nước y&ecirc;n b&igrave;nh v&agrave; hoang sơ, gi&uacute;p qu&yacute; kh&aacute;ch c&oacute; kh&ocirc;ng gian ri&ecirc;ng, thoải m&aacute;i đắm m&igrave;nh trong biển xanh, c&aacute;t trắng, nắng v&agrave;ng, tận hưởng những l&agrave;n gi&oacute; tươi mới từ biển cả v&agrave; tham gia c&aacute;c m&ocirc;n thể thao tr&ecirc;n biển. To&agrave;n bộ hệ thống của Vinpearl phục vụ đầy đủ c&aacute;c spa, khu tập thể h&igrave;nh, c&acirc;u lạc bộ cho trẻ em,&hellip; với mong muốn l&agrave;m h&agrave;i long, gi&uacute;p bạn c&oacute; một kỳ nghỉ thư giản tuyệt đối tại c&aacute;c hệ th&ocirc;ng của Vinpear n&oacute;i chung v&agrave; Vinpearl Resort &amp; Spa Đ&agrave; Nẵng n&oacute;i ri&ecirc;ng.</p>', 1, 3, NULL, '2021-07-15 17:08:27', '2021-07-15 18:01:48'),
(3, 'VINPEARL RESORT & GOLF NAM HỘI AN', '2021-07-16__7b40cbfc23091bfe8950aca27d7b3c5e.jpg', NULL, '0902.976.588', NULL, 4150000, 0, 0, '<p>&Ocirc;m trọn 1.300m bờ biển B&igrave;nh Minh nguy&ecirc;n sơ, Vinpearl Resort &amp; Golf Nam Hội An l&agrave; quần thể du lịch nghỉ dưỡng v&agrave; kh&aacute;m ph&aacute; duy nhất tại Việt Nam kết hợp nghỉ dưỡng biển v&agrave; c&ocirc;ng nghệ giải tr&iacute; thời thượng để đem đến những trải nghiệm nghỉ dưỡng trọn vẹn nhất cho mỗi du kh&aacute;ch.</p>', '<p>VỊ TR&Iacute;</p>\r\n\r\n<p>Nằm ở ph&iacute;a Nam của th&agrave;nh phố Hội An, tọa lạc b&ecirc;n bờ biển B&igrave;nh Minh nguy&ecirc;n sơ d&agrave;i 1.300m. Vinpearl Resort &amp; Golf Nam Hội An l&agrave; khu du lịch nghỉ dưỡng phức hợp đẳng cấp đầu ti&ecirc;n hội tụ ho&agrave;n hảo những tinh hoa của hệ sinh th&aacute;i trong &ldquo;ốc đảo&rdquo; thi&ecirc;n nhi&ecirc;n nhiệt đới.</p>\r\n\r\n<p>Được thiết kế theo phong c&aacute;ch kiến tr&uacute;c nhiệt đới đương đại, mới lạ, lấy cảm hứng từ những miền thi&ecirc;n nhi&ecirc;n nhiệt đới với m&agrave;u xanh bất tận của biển v&agrave; trời, 132 căn biệt thự tại Vinpearl Resort &amp; Golf Nam Hội An được thiết kế tối giản, gần gũi với m&ocirc;i trường, mang đến một phong c&aacute;ch nghỉ dưỡng hiện đại, thư th&aacute;i h&ograve;a m&igrave;nh c&ugrave;ng đại dương. Mỗi căn biệt thự l&agrave; một tuyệt t&aacute;c kiến tr&uacute;c tinh tế với bể bơi v&agrave; khoảng s&acirc;n vườn xanh m&aacute;t bao quanh, mở ra khoảng trời y&ecirc;n b&igrave;nh, ri&ecirc;ng tư tuyệt đối b&ecirc;n bờ biển thi&ecirc;n đường.</p>\r\n\r\n<p>DI CHUYỂN</p>\r\n\r\n<p>Di chuyển bằng đường h&agrave;ng kh&ocirc;ng: Từ H&agrave; Nội, TP.HCM,&hellip; c&aacute;c bạn c&oacute; thể di chuyển bằng m&aacute;y bay xuống s&acirc;n bay quốc tế Đ&agrave; Nẵng hoặc s&acirc;n bay Chu Lai Quảng Nam.<br />\r\n+ TP.HCM &ndash; s&acirc;n bay quốc tế Đ&agrave; Nẵng: gi&aacute; dao động từ 647.000 &ndash; 2.469.000 vnđ/người/chuyến (t&ugrave;y v&agrave;o thời gian của chuyến bay, số ghế,&hellip;). &nbsp;Thời gian di chuyển khoảng 1 tiếng 20 ph&uacute;t.</p>\r\n\r\n<p>+TP.HCM &ndash; s&acirc;n bay Chu Lai, Quảng Nam: gi&aacute; dao động từ 1.049.000 &ndash; 2.469.000 vnđ/người/chuyến. Thời gian di chuyển 1 tiếng 20 ph&uacute;t.</p>\r\n\r\n<p>+ H&agrave; Nội &ndash; s&acirc;n bay quốc tế Đ&agrave; Nẵng: gi&aacute; dao động từ 647.000 &ndash; 2.369.000 vnđ/người/chuyến (t&ugrave;y v&agrave;o thời gian của chuyến bay, số ghế,&hellip;). &nbsp;Thời gian di chuyển khoảng 1 tiếng 20 ph&uacute;t.</p>\r\n\r\n<p>+ H&agrave; Nội &ndash; s&acirc;n bay Chu Lai, Quảng Nam: gi&aacute; dao động từ 525.000 &ndash; 939.000 vnđ/người/chuyến. Thời gian di chuyển 1 tiếng 30 ph&uacute;t.</p>\r\n\r\n<p>Từ s&acirc;n bay Đ&agrave; Nẵng hoặc Chu Lai &nbsp;thuận tiện nhất l&agrave; sử dụng taxi của c&aacute;c h&atilde;ng xe phổ biến tại Đ&agrave; Nẵng - Hội An như Mai Linh, Vinasun, Ti&ecirc;n Sa,... hoặc bạn cũng c&oacute; thể sử dụng dịch vụ đưa đ&oacute;n s&acirc;n bay c&oacute; t&iacute;nh ph&iacute; của resort. &nbsp;</p>\r\n\r\n<p>Từ s&acirc;n bay Đ&agrave; Nẵng về resort khoảng 43 km tương đương 1 giờ đi xe. Gi&aacute; taxi một chiều khoảng 480.000 - 600.000 vnđ t&ugrave;y loại xe 4 hay 7 chỗ, t&ugrave;y h&atilde;ng xe bạn chọn v&agrave; thời điểm đặt xe.</p>\r\n\r\n<p>Từ s&acirc;n bay Chu Lai về resort khoảng 64,5 km tương đương 1tiếng15p đi xe. Gi&aacute; taxi một chiều khoảng 660.000 - 790.000 vnđ t&ugrave;y loại xe 4 hay 7 chỗ, t&ugrave;y h&atilde;ng xe bạn chọn v&agrave; thời điểm đặt xe.</p>\r\n\r\n<p>Resort cung cấp dịch vụ đưa đ&oacute;n s&acirc;n bay c&oacute; t&iacute;nh ph&iacute;. Mức gi&aacute; c&oacute; thể thay đổi t&ugrave;y thời điểm đặt xe. Qu&yacute; kh&aacute;ch c&oacute; nhu cầu vui l&ograve;ng li&ecirc;n hệ lễ t&acirc;n trước để được kiểm tra t&igrave;nh trạng c&ocirc;ng suất v&agrave; sắp xếp đưa đ&oacute;n ph&ugrave; hợp.</p>\r\n\r\n<p>Di chuyển bằng xe kh&aacute;ch: Từ H&agrave; Nội, hoặc TPHCM,&hellip; c&aacute;c bạn c&oacute; thể di chuyển bằng xe kh&aacute;ch đến Đ&agrave; Nẵng với gi&aacute; khoảng 320.000vnđ/người/chuyến. Sau đ&oacute; di chuyển bằng taxi đến Vinpearl Resort &amp; Golf Nam Hội An.<br />\r\nTIỆN &Iacute;CH V&Agrave; GIẢI TR&Iacute;</p>\r\n\r\n<p>Nh&agrave; h&agrave;ng v&agrave; bar: đa số phục vụ ẩm thực Hội An truyền thống. C&aacute;c nh&agrave; h&agrave;ng v&agrave; bar ở đ&acirc;y sẽ gi&uacute;p bạn cảm nhận một c&aacute;ch r&otilde; n&eacute;t nhất những tinh hoa, những n&eacute;t đặc sắc nhất trong ẩm thực Hội An. Ngo&agrave;i ra c&aacute;c nh&agrave; h&agrave;ng cũng phục vụ đa dạng c&aacute;c m&oacute;n từ &Aacute; sang &Acirc;u mang đến nhiều cảm nhận phong ph&uacute; hơn trong ẩm thực.<br />\r\nTrung t&acirc;m hội nghị: Vinpearl Nam Hội An Resort &amp; Golf sở hữu kh&ocirc;ng gian hội nghị lớn v&agrave; nhiều ph&ograve;ng nhỏ được trang bị đầy đủ tiện nghi, hiện đại, th&iacute;ch hợp cho mọi nhu cầu tổ chức sự kiện v&agrave; hội họp.<br />\r\nGiải tr&iacute;: Cung cấp đầy đủ c&aacute;c dịch vụ spa, thể h&igrave;nh, c&acirc;u lạc bộ cho trẻ em,&hellip; nhằm đ&aacute;p ứng đủ c&aacute;c nhu cầu, mag đến cho bạn một kỳ nghỉ trọn vẹn.<br />\r\n+ Trong đ&oacute;, nổi bậc hơn cả l&agrave; Vinpearl River Safari C&ocirc;ng vi&ecirc;n động vật phi&ecirc;n bản du khảo bằng đường thủy đầu ti&ecirc;n v&agrave; duy nhất tại Việt Nam, nơi du kh&aacute;ch sẽ cảm nhận như đang ngồi giữa d&ograve;ng Amazon huyền thoại để kh&aacute;m ph&aacute; cuộc sống hoang d&atilde; của c&aacute;c lo&agrave;i động vật qu&yacute; hiếm hai b&ecirc;n bờ như hổ Bengal, linh dương, kangaroo, t&ecirc; gi&aacute;c, hươu cao cổ, ngựa vằn&hellip;</p>\r\n\r\n<p>+ C&ograve;n c&oacute; khu Vinpearl Golf Nam Hội An, giờ mở cửa: 06:00 &ndash; 19:00. S&acirc;n golf 18 hố b&ecirc;n bờ biển B&igrave;nh Minh, với c&aacute;c điểm ph&aacute;t b&oacute;ng được thiết kế ở tầm cao đảm bảo tầm nh&igrave;n xa &ldquo;ho&agrave;n hảo&rdquo;, địa h&igrave;nh tuyệt mỹ c&ugrave;ng cảnh đẹp say đắm l&ograve;ng người, mang đến những gi&acirc;y ph&uacute;t kh&oacute; qu&ecirc;n cho bất cứ ai từng đặt ch&acirc;n tới đ&acirc;y.</p>\r\n\r\n<p>+ VinEco Nam Hội An l&agrave; khu sinh th&aacute;i xanh m&aacute;t diện t&iacute;ch 12,4ha, nơi du kh&aacute;ch thỏa sức trải nghiệm quy tr&igrave;nh trồng rau củ quả kh&eacute;p k&iacute;n v&agrave; cảm nhận sự tươi ngon của n&ocirc;ng sản sạch ngay tại vườn. C&aacute;c khu chức năng bao gồm: 1 nh&agrave; k&iacute;nh Marchagey 1.000m2 nhập khẩu từ Ph&aacute;p, 3 nh&agrave; k&iacute;nh TAP nhập khẩu từ Israel, 15ha trồng c&acirc;y ăn quả, đồng ruộng, cảnh quan v&agrave; hạ tầng phụ trợ. Mở cửa từ 6:00 &ndash; 19:00.</p>\r\n\r\n<p>+ Khu Vinpear Land Nam Hội An Mở cửa cả ng&agrave;y. Tổ hợp khu vui chơi giải tr&iacute; với diện t&iacute;ch trải rộng 62,4 ha, bao gồm v&ugrave;ng đất phi&ecirc;u lưu v&agrave; c&ocirc;ng vi&ecirc;n nước &ndash; thi&ecirc;n đường giải tr&iacute; thời thượng, Đảo D&acirc;n gian với sự hội tụ của tinh hoa truyền thống Việt, v&agrave; Bến cảng Giao thoa, nơi du kh&aacute;ch c&oacute; thể thưởng ngoạn kh&ocirc;ng gian văn ho&aacute; t&aacute;i hiện phố cổ Hội An c&ugrave;ng những quần thể kiến tr&uacute;c đậm chất ch&acirc;u &Acirc;u.</p>', 1, 3, NULL, '2021-07-15 17:14:27', '2021-07-15 17:14:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `l_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_content` text COLLATE utf8mb4_unicode_ci,
  `l_status` tinyint(4) DEFAULT '0',
  `l_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `locations_l_user_id_index` (`l_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `locations`
--

INSERT INTO `locations` (`id`, `l_name`, `l_slug`, `l_image`, `l_description`, `l_content`, `l_status`, `l_user_id`, `created_at`, `updated_at`) VALUES
(1, 'Du lịch miền bắc', 'du-lich-mien-bac', '2022-08-04__ec28c018c5abd0b91c0b0aca1a899441.jpeg', 'Du lịch miền bắc', '<p>Du lịch miền bắc</p>', 1, 1, '2021-07-03 15:20:40', '2022-08-04 17:18:32'),
(3, 'Du lịch Miền Trung', 'du-lich-mien-trung', '2022-08-04__f3f4632af82550421da12a68ac2c0f27.jpeg', 'Du lịch Miền Trung', '<p>Du lịch Miền Trung</p>', 1, 1, '2021-07-10 04:31:29', '2022-08-04 17:18:49'),
(4, 'Du lịch Miền Nam', 'du-lich-mien-nam', '2022-08-04__41b586905e6233e72b076191f8bf9512.png', 'Du lịch Miền Nam', '<p>Du lịch Miền Nam</p>', 1, 1, '2021-07-10 04:31:48', '2022-08-04 17:18:13'),
(5, 'Du lịch Đà Nẵng', 'du-lich-da-nang', '2022-08-04__3b724915c18dd2f177907938d9e2a7c1.jpg', 'Du lịch Đà Nẵng - Danh sách các tour du lịch Đà Nẵng - Tour Đà Nẵng', '<p>Được mệnh danh l&agrave; &lsquo;&rsquo;th&agrave;nh phố đ&aacute;ng đến&rsquo;&rsquo; với d&ograve;ng s&ocirc;ng H&agrave;n thơ mộng với c&acirc;y cầu Rồng biểu tượng của Th&agrave;nh phố biển&nbsp;<strong><a href=\"https://dulichviet.com.vn/du-lich-da-nang\">du lịch Đ&agrave; Nẵng</a>&nbsp;</strong>- nơi m&agrave; qu&yacute; kh&aacute;ch c&oacute; thể cảm nhận được sự pha trộn&nbsp;giữa kh&iacute; hậu miền Bắc, miền Nam.Ngo&agrave;i ra&nbsp;<strong>Đ&agrave; Nẵng</strong>&nbsp;c&ograve;n sở hữu nhiều danh lam thắng cảnh l&agrave;m say l&ograve;ng người như: B&agrave; N&agrave; Hills, B&aacute;n Đảo Sơn Tr&agrave;, Ngũ H&agrave;nh Sơn,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Đ&agrave; Nẵng</a>, phố cổ Hội An&hellip;.&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\"><strong>Tour du lịch Đ&agrave; Nẵng</strong></a>&nbsp;sẽ đưa qu&yacute; kh&aacute;ch kh&aacute;m ph&aacute; b&atilde;i biển được Forbes lựa chọn l&agrave; b&atilde;i biển quyến rũ nhất h&agrave;nh tinh với bờ biển d&agrave;i,l&agrave;n nước trong xanh, kh&ocirc;ng kh&iacute; m&aacute;t mẻ &hellip;Tham khảo&nbsp;<a href=\"https://dulichviet.com.vn/tin-tuc/kinh-nghiem-du-lich-da-nang\"><strong>kinh nghiệm du lịch Đ&agrave; Nẵng</strong></a>&nbsp;v&agrave; Đặt ngay&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\"><strong>tour Đ&agrave; Nẵng</strong></a>&nbsp;của&nbsp;<strong>Du Lịch Việt</strong>&nbsp;để kh&aacute;m ph&aacute; Đ&agrave; Nẵng c&oacute; g&igrave; m&agrave; lại lu&ocirc;n l&agrave; điểm đến hấp dẫn như vậy.</p>\r\n\r\n<p><strong>TAG:</strong>&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Du lịch Đ&agrave; Nẵng</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Du lịch H&egrave; Đ&agrave; Nẵng</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Du lịch Đ&agrave; Nằng H&egrave; 2021</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Tour Đ&agrave; Nẵng</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Tour H&egrave; Đ&agrave; Nẵng</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Tour Đ&agrave; Nẵng H&egrave; 2021</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Tour Du Lịch Đ&agrave; Nẵng</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Tour Du Lịch H&egrave; Đ&agrave; Nẵng</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Tour Du Lịch Đ&agrave; Nằng H&egrave; 2021</a></p>', 1, 1, '2021-07-10 04:52:12', '2022-08-04 17:16:15'),
(6, 'Du lịch Đà Lạt', 'du-lich-da-lat', '2022-08-04__74d398225333bbe6317337add4d06f04.png', 'Tour du lịch Đà Lạt', '<p>Đ&agrave; Lạt nằm tr&ecirc;n cao nguy&ecirc;n L&acirc;m Vi&ecirc;n, tỉnh L&acirc;m Đồng với độ cao 1.500m so với mặt nước biển. Được v&iacute; như một tiểu Paris mộng mơ, n&ecirc;n thơ, đ&acirc;y l&agrave; địa điểm du lịch xinh đẹp v&agrave; quyến rũ nhất mảnh đất h&igrave;nh chữ S. Đ&agrave; Lạt được đặt cho nhiều c&aacute;i t&ecirc;n mĩ miều như: th&agrave;nh phố ng&agrave;n th&ocirc;ng, th&agrave;nh phố t&igrave;nh y&ecirc;u, th&agrave;nh phố mộng mơ, th&agrave;nh phố sương m&ugrave;, xứ sở sương m&ugrave;, xứ sở hoa anh đ&agrave;o,&hellip;.. Vậy c&oacute; b&iacute; mật g&igrave; đằng sau t&ecirc;n gọi &ldquo;th&agrave;nh phố ng&agrave;n hoa&rdquo; của Đ&agrave; Lạt hay chăng?</p>', 1, 1, '2021-11-07 06:04:36', '2022-08-04 12:54:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_09_171541_laravel_entrust_setup_tables', 1),
(5, '2021_04_04_032200_create_categories_table', 1),
(6, '2021_04_04_080911_create_articles_table', 1),
(7, '2021_06_26_151636_create_locations_table', 1),
(8, '2021_06_26_151750_create_tours_table', 1),
(9, '2021_06_26_151830_create_hotels_table', 1),
(10, '2021_06_26_162813_create_contacts_table', 1),
(11, '2021_07_03_110944_create_book_tours_table', 1),
(12, '2021_07_08_155913_add_votes_t_number_registered_tours_table', 2),
(14, '2021_07_10_013319_add_update_colmn_to_hotels_table', 3),
(15, '2021_07_15_001617_change_column_to_hotels_table', 4),
(16, '2021_07_30_204824_create_comments_table', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`),
  KEY `permissions_group_permission_id_foreign` (`group_permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `group_permission_id`, `created_at`, `updated_at`) VALUES
(1, 'full-quyen-quan-ly', 'Full quyền quản lý', 'Full quyền quản lý', 1, '2021-07-19 16:03:40', '2021-07-19 16:03:40'),
(2, 'truy-cap-he-thong', 'Truy cập hệ thống', 'Truy cập hệ thống', 1, '2021-07-19 16:03:52', '2021-07-19 16:03:52'),
(3, 'danh-sach-danh-muc', 'Danh sách danh mục', 'Danh sách danh mục', 2, '2021-07-19 16:04:28', '2021-07-19 16:04:28'),
(4, 'them-moi-danh-muc', 'Thêm mới danh mục', 'Thêm mới danh mục', 2, '2021-07-19 16:04:39', '2021-07-19 16:04:39'),
(5, 'chinh-sua-danh-muc', 'Chỉnh sửa danh mục', 'Chỉnh sửa danh mục', 2, '2021-07-19 16:05:08', '2021-07-19 16:05:08'),
(6, 'xoa-danh-muc', 'Xóa danh mục', 'Xóa danh mục', 2, '2021-07-19 16:05:45', '2021-07-19 16:05:45'),
(7, 'danh-sach-bai-viet', 'Danh sách bài viết', 'Danh sách bài viết', 3, '2021-07-19 16:06:02', '2021-07-19 16:06:02'),
(8, 'them-moi-bai-viet', 'Thêm mới bài viết', 'Thêm mới bài viết', 3, '2021-07-19 16:06:13', '2021-07-19 16:06:13'),
(9, 'chinh-sua-bai-viet', 'Chỉnh sửa bài viết', 'Chỉnh sửa bài viết', 3, '2021-07-19 16:08:19', '2021-07-19 16:08:19'),
(10, 'xoa-bai-viet', 'Xóa bài viết', 'Xóa bài viết', 3, '2021-07-19 16:08:29', '2021-07-19 16:08:29'),
(11, 'danh-sach-dia-diem', 'Danh sách địa điểm', 'Danh sách địa điểm', 4, '2021-07-19 16:08:43', '2021-07-19 16:08:43'),
(12, 'them-moi-dia-diem', 'Thêm mới địa điểm', 'Thêm mới địa điểm', 4, '2021-07-19 16:08:59', '2021-07-19 16:08:59'),
(13, 'chinh-sua-dia-diem', 'Chỉnh sửa địa điểm', 'Chỉnh sửa địa điểm', 4, '2021-07-19 16:09:13', '2021-07-19 16:09:13'),
(14, 'xoa-dia-diem', 'Xóa địa điểm', 'Xóa địa điểm', 4, '2021-07-19 16:09:25', '2021-07-19 16:09:25'),
(15, 'danh-sach-tour', 'Danh sách tour', 'Danh sách tour', 5, '2021-07-19 16:10:12', '2021-07-19 16:10:12'),
(16, 'them-moi-tour', 'Thêm mới tour', 'Thêm mới tour', 5, '2021-07-19 16:10:22', '2021-07-19 16:10:22'),
(17, 'chinh-sua-tour', 'Chỉnh sửa tour', 'Chỉnh sửa tour', 5, '2021-07-19 16:10:41', '2021-07-19 16:10:41'),
(18, 'xoa-tour', 'Xóa tour', 'Xóa tour', 5, '2021-07-19 16:10:55', '2021-07-19 16:10:55'),
(19, 'danh-sach-khach-san', 'Danh sách khách sạn', 'Danh sách khách sạn', 6, '2021-07-19 16:11:15', '2021-07-19 16:11:15'),
(20, 'them-moi-khach-san', 'Thêm mới khách sạn', 'Thêm mới khách sạn', 6, '2021-07-19 16:11:31', '2021-07-19 16:11:31'),
(21, 'chinh-sua-khach-san', 'Chỉnh sửa khách sạn', 'Chỉnh sửa khách sạn', 6, '2021-07-19 16:13:24', '2021-07-19 16:13:24'),
(22, 'xoa-khach-san', 'Xóa khách sạn', 'Xóa khách sạn', 6, '2021-07-19 16:13:40', '2021-07-19 16:13:40'),
(23, 'quan-ly-dat-tour', 'Quản lý đặt tour', 'Quản lý đặt tour', 7, '2021-07-19 16:14:00', '2021-07-19 16:14:00'),
(24, 'xoa-va-cap-nhat-trang-thai', 'Xóa và cập nhật trạng thái', 'Xóa và cập nhật trạng thái', 7, '2021-07-19 16:14:50', '2021-07-19 16:14:50'),
(25, 'danh-sach-vai-tro', 'Danh sách vai trò', 'Danh sách vai trò', 8, '2021-07-19 16:15:27', '2021-07-19 16:15:27'),
(26, 'them-moi-vai-tro', 'Thêm mới vai trò', 'Thêm mới vai trò', 8, '2021-07-19 16:15:38', '2021-07-19 16:15:38'),
(27, 'chinh-sua-vai-tro', 'Chỉnh sửa vai trò', 'Chỉnh sửa vai trò', 8, '2021-07-19 16:15:50', '2021-07-19 16:15:50'),
(28, 'xoa-vai-tro', 'Xóa vai trò', 'Xóa vai trò', 8, '2021-07-19 16:16:02', '2021-07-19 16:16:02'),
(29, 'danh-sach-nguoi-dung', 'Danh sách người dùng', 'Danh sách người dùng', 9, '2021-07-19 16:16:19', '2021-07-19 16:16:19'),
(30, 'them-moi-nguoi-dung', 'Thêm mới người dùng', 'Thêm mới người dùng', 9, '2021-07-19 16:16:30', '2021-07-19 16:16:30'),
(31, 'chinh-sua-nguoi-dung', 'Chỉnh sửa người dùng', 'Chỉnh sửa người dùng', 9, '2021-07-19 16:16:42', '2021-07-19 16:16:42'),
(32, 'xoa-nguoi-dung', 'Xóa người dùng', 'Xóa người dùng', 9, '2021-07-19 16:16:51', '2021-07-19 16:16:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(23, 2),
(24, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'Administrator', NULL, '2021-07-19 16:17:25', '2021-07-19 16:17:25'),
(2, 'nhan-vien', 'Nhân viên', NULL, '2021-07-19 16:35:20', '2021-07-19 16:35:20'),
(3, 'khach-hang', 'Khách hàng', NULL, '2021-07-19 16:35:30', '2021-07-19 16:35:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tours`
--

DROP TABLE IF EXISTS `tours`;
CREATE TABLE IF NOT EXISTS `tours` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `t_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_journeys` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_schedule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_move_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_starting_gate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_start_date` date DEFAULT NULL,
  `t_end_date` date DEFAULT NULL,
  `t_number_guests` int(11) NOT NULL DEFAULT '0',
  `t_price_adults` int(11) NOT NULL DEFAULT '0',
  `t_price_children` int(11) NOT NULL DEFAULT '0',
  `t_sale` int(11) NOT NULL DEFAULT '0',
  `t_view` int(11) NOT NULL DEFAULT '0',
  `t_description` text COLLATE utf8mb4_unicode_ci,
  `t_content` text COLLATE utf8mb4_unicode_ci,
  `t_anbum_image` text COLLATE utf8mb4_unicode_ci,
  `t_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `t_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `t_number_registered` int(11) DEFAULT '0',
  `t_follow` int(11) DEFAULT '0',
  `t_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tours_t_location_id_index` (`t_location_id`),
  KEY `tours_t_user_id_index` (`t_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tours`
--

INSERT INTO `tours` (`id`, `t_title`, `t_journeys`, `t_schedule`, `t_move_method`, `t_starting_gate`, `t_start_date`, `t_end_date`, `t_number_guests`, `t_price_adults`, `t_price_children`, `t_sale`, `t_view`, `t_description`, `t_content`, `t_anbum_image`, `t_image`, `t_location_id`, `t_user_id`, `t_number_registered`, `t_follow`, `t_status`, `created_at`, `updated_at`) VALUES
(1, 'Du lịch Hà Nội - Yên Tử - Hạ Long - Tràng An - Sapa - Fansipan từ Sài Gòn', 'Hà Nội - Yên Tử - Hạ Long - Tràng An - Sapa - Fansipan', '6 ngày 5 đêm', NULL, NULL, '2021-07-04', '2021-07-07', 20, 600000, 560000, 20, 0, '<p><em>Miền Bắc l&agrave; nơi khởi nguồn văn h&oacute;a ng&agrave;n năm văn hiến của d&acirc;n tộc Việt Nam.&nbsp;<strong>Du lịch miền Bắc</strong>&nbsp;du kh&aacute;ch sẽ được kh&aacute;m ph&aacute; những thắng cảnh thi&ecirc;n nhi&ecirc;n đẹp m&ecirc; hồn c&ugrave;ng nhiều c&ocirc;ng tr&igrave;nh kiến tr&uacute;c ấn tượng được tạo n&ecirc;n bởi b&agrave;n tay kh&eacute;o l&eacute;o của con người. Điểm du lịch Tr&agrave;ng An l&agrave; nơi&nbsp;du kh&aacute;ch sẽ được kh&aacute;m ph&aacute; một trong những địa điểm du lịch đẹp nhất Ninh B&igrave;nh. Tạo h&oacute;a đ&atilde; v&ocirc; c&ugrave;ng ưu &aacute;i ban tặng cho nơi đ&acirc;y một cảnh quan thi&ecirc;n nhi&ecirc;n tuyệt đẹp với c&aacute;c d&atilde;y n&uacute;i uốn lượn bao quanh c&aacute;c d&ograve;ng Suối nước tự nhi&ecirc;n, tạo n&ecirc;n v&ocirc; v&agrave;n c&aacute;c hang động kỳ ảo, huyền b&iacute;....&nbsp;C&ugrave;ng Du Lịch Việt kh&aacute;m ph&aacute; những địa điểm du lịch miền bắc hấp dẫn nhất như&nbsp;<strong>H&agrave; Nội - Y&ecirc;n Tử - Hạ Long - Ch&ugrave;a B&aacute;i Đ&iacute;nh - Tr&agrave;ng An - Sapa - Bản C&aacute;t C&aacute;t - Đỉnh Fansipan</strong>,... để bắt đầu l&ecirc;n kế hoạch cho chuyến du lịch ngay nh&eacute;!</em></p>', '<p>NG&Agrave;Y 1 |&nbsp;TP.HCM &ndash; H&Agrave; NỘI &ndash; HẠ LONG (Ăn trưa, chiều)</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;&nbsp; &nbsp;Qu&yacute; kh&aacute;ch c&oacute; mặt tại ga quốc nội, s&acirc;n bay T&acirc;n Sơn Nhất trước giờ bay &iacute;t nhất ba tiếng.</strong></p>\r\n\r\n<ul>\r\n	<li>Đại diện c&ocirc;ng ty Du Lịch Việt đ&oacute;n v&agrave; hỗ trợ Qu&yacute; Kh&aacute;ch l&agrave;m thủ tục đ&oacute;n chuyến bay đi H&agrave; Nội.</li>\r\n	<li>Đến s&acirc;n bay Nội B&agrave;i, Hướng Dẫn Vi&ecirc;n đ&oacute;n đo&agrave;n, Khởi h&agrave;nh đến Hạ Long. Đến n&uacute;i Y&ecirc;n Tử - ngọn n&uacute;i cao 1068 m so với mực nước biển, một thắng cảnh thi&ecirc;n nhi&ecirc;n c&ograve;n lưu giữ hệ thống c&aacute;c di t&iacute;ch lịch sử văn h&oacute;a gắn với sự ra đời, h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển của thiền ph&aacute;i Tr&uacute;c L&acirc;m Y&ecirc;n Tử, được mệnh danh l&agrave; &ldquo;đất tổ Phật gi&aacute;o Việt Nam&rdquo;.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa: D&ugrave;ng cơm trưa.</strong></p>\r\n\r\n<ul>\r\n	<li>Qu&yacute; kh&aacute;ch l&ecirc;n n&uacute;i bằng c&aacute;p treo (chi ph&iacute; c&aacute;p treo tự t&uacute;c), tham quan ch&ugrave;a Hoa Y&ecirc;n, Bảo Th&aacute;p, Tr&uacute;c L&acirc;m Tam Tổ, H&agrave;ng T&ugrave;ng 700 tuổi&hellip;xuống n&uacute;i tham quan Thiền Viện Tr&uacute;c L&acirc;m với quả cầu Như &Yacute; nặng 6 tấn được xếp kỷ lục guiness Việt Nam.</li>\r\n	<li>Đo&agrave;n khởi h&agrave;nh đến Hạ Long.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:&nbsp; D&ugrave;ng bữa tối. Nghỉ đ&ecirc;m tại Hạ Long.</strong></p>\r\n\r\n<ul>\r\n	<li>Qu&yacute; kh&aacute;ch tự do dạo phố, mua sắm tại chợ đ&ecirc;m hoặc tham gia khu Sunworld Hạ Long Park với tất cả khu tr&ograve; chơi trong nh&agrave;, ngo&agrave;i trời ho&agrave;nh tr&aacute;ng c&oacute; c&aacute;c khu C&ocirc;ng vi&ecirc;n Rồng, C&aacute;p treo Nữ Ho&agrave;ng v&ograve;ng quay Sun wheel&hellip;(chi ph&iacute; tự t&uacute;c).</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 2 |&nbsp;HẠ LONG &ndash; NINH B&Igrave;NH (Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m)</p>\r\n\r\n<p>NG&Agrave;Y 3 |&nbsp;NINH B&Igrave;NH &ndash; H&Agrave; NỘI (Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m)</p>\r\n\r\n<p>NG&Agrave;Y 4 |&nbsp;H&Agrave; NỘI &ndash; L&Agrave;O CAI - SAPA (Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m)</p>\r\n\r\n<p>NG&Agrave;Y 5 |&nbsp;SAPA &ndash; FANSIPAN &ndash; H&Agrave; NỘI (Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m)</p>\r\n\r\n<p>NG&Agrave;Y 6 |&nbsp;H&Agrave; NỘI &ndash; TP.HCM (Ăn s&aacute;ng, trưa) (Xem th&ecirc;m)</p>', NULL, '2021-07-04__db79dedc6747e24c8215c1e83deb2cf3.jpg', 1, 1, 20, 6, 1, '2021-07-03 19:20:09', '2021-11-15 06:23:16'),
(2, 'Du lịch Hè - Tour Du lịch Tây Ninh - Tòa Thánh Cao Đài - Núi Bà Đen từ Sài Gòn', 'Tây Ninh - Tòa Thánh Cao Đài - Núi Bà Đen', '1 ngày', 'Xe du lịch', 'Hồ Chí Minh', '2021-07-12', '2021-07-12', 20, 499000, 250000, 0, 0, '<table align=\"left\" border=\"0\" cellpadding=\"10\" cellspacing=\"10\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>H&agrave;nh tr&igrave;nh:</strong></td>\r\n			<td><strong>T&acirc;y Ninh - T&ograve;a Th&aacute;nh Cao Đ&agrave;i - N&uacute;i B&agrave; Đen</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Lịch tr&igrave;nh:</strong></td>\r\n			<td><strong>1 ng&agrave;y&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Ng&agrave;y khởi h&agrave;nh:</strong></td>\r\n			<td><strong>Chủ nhật h&agrave;ng tuần</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Vận chuyển:</strong></td>\r\n			<td><strong>Xe du lịch đời mới</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p><strong>NG&Agrave;Y 1 |&nbsp;TP. HCM &ndash; T&Acirc;Y NINH (Ăn s&aacute;ng, trưa)</strong></p>\r\n\r\n<ul>\r\n	<li>S&aacute;ng Xe v&agrave; Hướng Dẫn Vi&ecirc;n C&ocirc;ng Ty Du Lịch Việt đ&oacute;n Qu&yacute; kh&aacute;ch tại điểm hẹn.</li>\r\n	<li>Khởi h&agrave;nh đi T&acirc;y Ninh. Qu&yacute; kh&aacute;ch d&ugrave;ng bữa s&aacute;ng</li>\r\n	<li style=\"text-align:justify\">Đo&agrave;n đến N&uacute;i B&agrave; Đen - nổi tiếng về cảnh sắc thi&ecirc;n nhi&ecirc;n hoang sơ v&agrave; quần thể kiến tr&uacute;c t&acirc;m linh l&acirc;u đời; ngọn n&uacute;i với chiều cao hơn 986m được mệnh danh l&agrave; &ldquo;n&oacute;c nh&agrave;&rdquo; của khu vực Nam Bộ. Qu&yacute; kh&aacute;ch trải nghiệm hệ thống c&aacute;p treo hiện đại Sun World Baden Moutain với 2 tuyến c&aacute;p treo hiện đại trong h&agrave;nh tr&igrave;nh chi&ecirc;m b&aacute;i v&agrave; chinh phục ngọn n&uacute;i cao nhất v&ugrave;ng Đ&ocirc;ng Nam Bộ của du kh&aacute;ch thập phương trở n&ecirc;n dễ d&agrave;ng hơn bao giờ hết. (chi ph&iacute; c&aacute;p treo tự t&uacute;c)</li>\r\n	<li style=\"text-align:justify\">Tuyến c&aacute;p treo Ch&ugrave;a Hang đưa du kh&aacute;ch đến Quần Thể T&acirc;m Linh Ch&ugrave;a B&agrave;: ở độ cao 350 m&eacute;t giữa lưng chừng n&uacute;i l&agrave; quần thể kiến tr&uacute;c hang động, ch&ugrave;a chiền mang n&eacute;t đẹp thi&ecirc;n ph&uacute; v&agrave; nh&acirc;n tạo với nhiều truyền thuyết ly kỳ, b&iacute; ẩn gồm Ch&ugrave;a B&agrave;, Ch&ugrave;a Hang, Động Ho&agrave;ng Chung, Ch&ugrave;a Trung, Ch&ugrave;a Mới&hellip; Những ng&ocirc;i ch&ugrave;a cổ v&agrave; di t&iacute;ch lịch sử linh thi&ecirc;ng tại N&uacute;i B&agrave; đ&atilde; được c&ocirc;ng nhận l&agrave; Di t&iacute;ch lịch sử văn h&oacute;a v&agrave; danh lam thắng cảnh cấp quốc gia. Ngo&agrave;i ra, Qu&yacute; kh&aacute;ch c&ograve;n c&oacute; thể trải nghiệm m&aacute;ng trượt Ch&ugrave;a B&agrave; &ndash; một trong những hệ thống m&aacute;ng trượt độc đ&aacute;o, mới lạ v&agrave; nổi tiếng được lắp đặt tr&ecirc;n sườn n&uacute;i đầu ti&ecirc;n ở Việt Nam.</li>\r\n	<li style=\"text-align:justify\">Tuyến c&aacute;p treo V&acirc;n Sơn đưa du kh&aacute;ch xuy&ecirc;n m&acirc;y h&ograve;a m&igrave;nh v&agrave;o cảnh vật thi&ecirc;n nhi&ecirc;n h&ugrave;ng vĩ để chinh phục ngọn n&uacute;i cao nhất v&ugrave;ng Đ&ocirc;ng Nam Bộ. H&agrave;nh tr&igrave;nh l&ecirc;n đỉnh n&uacute;i thi&ecirc;ng sẽ mang đến cho du kh&aacute;ch những trải nghiệm tuyệt vời với tầm nh&igrave;n 360 độ ngắm trọn T&acirc;y Ninh, chạm tay v&agrave;o cột mốc 986 m&eacute;t, ngắm trời xanh, n&uacute;i biếc, hồ Dầu Tiếng xinh đẹp v&agrave; v&ugrave;ng đồng bằng tr&ugrave; ph&uacute; đẹp như tranh&hellip;</li>\r\n</ul>\r\n\r\n<p><strong>Trưa &nbsp;&nbsp; &nbsp;Q&uacute;y kh&aacute;ch dung cơm trưa</strong></p>\r\n\r\n<ul>\r\n	<li>Đo&agrave;n gh&eacute; T&ograve;a Th&aacute;nh Cao Đ&agrave;i, tham quan t&igrave;m hiểu t&ocirc;n gi&aacute;o độc đ&aacute;o của Đạo Cao Đ&agrave;i, du kh&aacute;ch c&oacute; thể chi&ecirc;m ngưỡng to&agrave;n bộ nghi thức trang trọng của đạo hữu Cao Đ&agrave;i. Với kiến tr&uacute;c độc đ&aacute;o, thể hiện một sự dung h&ograve;a của nhiều yếu tố t&acirc;m linh từ Đ&ocirc;ng sang T&acirc;y, T&ograve;a Th&aacute;nh T&acirc;y Ninh kh&ocirc;ng chỉ l&agrave; nơi h&agrave;nh hương của c&aacute;c t&iacute;n đồ đạo Cao Đ&agrave;i m&agrave; c&ograve;n thu h&uacute;t một lượng lớn du kh&aacute;ch trong v&agrave; ngo&agrave;i nước tới tham quan mỗi ng&agrave;y.</li>\r\n	<li>Khởi h&agrave;nh về TP.HCM. Tr&ecirc;n đường về đo&agrave;n gh&eacute; thăm Tu Viện Kh&aacute;nh An, nơi được xem l&agrave; Nhật Bản thu nhỏ giữa l&ograve;ng S&agrave;i G&ograve;n. Ng&ocirc;i ch&ugrave;a được x&acirc;y dựng theo lối kiến tr&uacute;c ấn tượng của Nhật Bản, to&agrave;n bộ c&ocirc;ng tr&igrave;nh đ&atilde; vận dụng linh hoạt phong c&aacute;ch kiến ch&uacute;c ch&ugrave;a đặc trưng của xứ sở Ph&ugrave; Tang, thể hiện qua m&aacute;i ch&ugrave;a, m&agrave;u sắc v&agrave; cả những chi tiết nhỏ như cột, c&aacute;nh cửa, &hellip;</li>\r\n	<li>Về tới TP.HCM, kết th&uacute;c h&agrave;nh tr&igrave;nh tour. Ch&agrave;o tạm biệt v&agrave; hẹn gặp lại.</li>\r\n</ul>\r\n\r\n<p>Dịch vụ bao gồm v&agrave; kh&ocirc;ng bao gồm</p>\r\n\r\n<p><strong>Gi&aacute; tour bao gồm:</strong><br />\r\n-&nbsp;&nbsp; &nbsp;Xe tham quan (xe 16 chỗ, 29 chỗ, 35 chỗ, 45 chỗ) t&ugrave;y theo số lượng kh&aacute;ch thực tế tr&ecirc;n chuyến đi.<br />\r\n-&nbsp;&nbsp; &nbsp;Ăn uống theo chương tr&igrave;nh. Bao gồm 1 bữa ch&iacute;nh + 1 bữa ăn s&aacute;ng&nbsp;<br />\r\n-&nbsp;&nbsp; &nbsp;V&eacute; tham quan theo chương tr&igrave;nh.<br />\r\n-&nbsp;&nbsp; &nbsp;Hướng dẫn vi&ecirc;n tiếng Việt vui vẻ nhiệt t&igrave;nh suốt chuyến đi.<br />\r\n-&nbsp;&nbsp; &nbsp;Bảo hiểm với mức bồi thường 100.000.000 đồng/trường hợp. Kh&ocirc;ng &aacute;p dụng cho kh&aacute;ch từ 80 tuổi trở l&ecirc;n.<br />\r\n-&nbsp;&nbsp; &nbsp;Qu&agrave; tặng: n&oacute;n du lịch Việt, nước.&nbsp;<br />\r\n-&nbsp;&nbsp; &nbsp;Thuế VAT.<br />\r\n-&nbsp;&nbsp; &nbsp;C&aacute;p treo 2 chặng<br />\r\n<strong>Kh&ocirc;ng bao gồm:</strong><br />\r\n-&nbsp;&nbsp; &nbsp;Bia hay nước ngọt trong c&aacute;c bữa ăn.<br />\r\n-&nbsp;&nbsp; &nbsp;Tham quan ngo&agrave;i chương tr&igrave;nh, ph&iacute; c&aacute;p treo n&uacute;i B&agrave; Đen.<br />\r\n-&nbsp;&nbsp; &nbsp;Chi ph&iacute; c&aacute; nh&acirc;n: điện thoại, giặt ủi&hellip;<br />\r\n-&nbsp;&nbsp; &nbsp;Phụ ph&iacute; người nước ngo&agrave;i.<br />\r\n-&nbsp;&nbsp; &nbsp;Phụ ph&iacute; ph&ograve;ng đơn.</p>\r\n\r\n<p><strong>Ghi ch&uacute;</strong></p>\r\n\r\n<p><strong>Gi&aacute; vé dành cho trẻ em:&nbsp;</strong><br />\r\n-&nbsp;&nbsp; &nbsp;Trẻ em dưới 05 tuổi: miễn gi&aacute; tour. Cha, Mẹ hoặc người th&acirc;n đi k&egrave;m tự lo c&aacute;c chi ph&iacute; ăn, ngủ, tham quan (nếu c&oacute;) cho b&eacute;. Hai người lớn chỉ k&egrave;m 1 trẻ em dưới 5 tuổi, trẻ em thứ 2 trở l&ecirc;n phải mua &frac12; v&eacute; tour.<br />\r\n-&nbsp;&nbsp; &nbsp;Trẻ em từ 05 &ndash; dưới 10 tuổi: 75% gi&aacute; tour. Bao gồm c&aacute;c dịch vụ ăn uống, ghế ngồi tr&ecirc;n xe v&agrave; ngủ chung với gia đ&igrave;nh. Hai người lớn chỉ được k&egrave;m 1 trẻ em từ 5 đến dưới 10tuổi, trẻ em thứ 2 trở l&ecirc;n Cha Mẹ n&ecirc;n mua th&ecirc;m 1 suất giường đơn hoặc v&eacute; người lớn.<br />\r\n-&nbsp;&nbsp; &nbsp;Từ 10 tuổi trở l&ecirc;n: 100% gi&aacute; tour v&agrave; ti&ecirc;u chuẩn như người lớn.<br />\r\nĐiều kiện khi đăng k&yacute; v&agrave; hủy v&eacute; tour:<br />\r\n-&nbsp;&nbsp; &nbsp;Sau khi x&aacute;c nhận v&agrave; thanh to&aacute;n (&iacute;t nhất 50% tiền cọc giữ chỗ v&agrave; thanh to&aacute;n đủ 100% tổng gi&aacute; trị tiền tour trước 10 ng&agrave;y khởi h&agrave;nh).<br />\r\n-&nbsp;&nbsp; &nbsp;Khi đến ng&agrave;y thanh to&aacute;n đủ 100% tổng gi&aacute; trị tiền tour, nếu Qu&yacute; kh&aacute;ch kh&ocirc;ng thanh to&aacute;n đ&uacute;ng hạn v&agrave; đ&uacute;ng số tiền được xem như Qu&yacute; kh&aacute;ch tự &yacute; huỷ tour v&agrave; mất hết số tiền đ&atilde; đặt cọc giữ chỗ.<br />\r\n-&nbsp;&nbsp; &nbsp;V&eacute; M&aacute;y Bay / v&eacute; xe lửa / v&eacute; t&agrave;u cao tốc được xuất ngay sau khi qu&yacute; kh&aacute;ch đăng k&yacute;, thanh to&aacute;n, x&aacute;c nhận th&ocirc;ng tin c&aacute; nh&acirc;n (họ t&ecirc;n, ng&agrave;y th&aacute;ng năm sinh&hellip;) v&agrave; c&oacute; những điều kiện v&eacute; như sau: Kh&ocirc;ng được đổi t&ecirc;n, ho&agrave;n v&eacute;, hủy v&eacute;, thay đổi ng&agrave;y, thay đổi h&agrave;nh tr&igrave;nh.<br />\r\n* &nbsp; &nbsp;Ngay sau khi Qu&yacute; kh&aacute;ch đăng k&yacute; tour nếu hủy sẽ bị phạt tiền tour:<br />\r\n-&nbsp;&nbsp; &nbsp;Ngay sau khi đặt cọc hoặc thanh to&aacute;n hoặc trước 15 ng&agrave;y: ph&iacute; hủy 10% tiền tour<br />\r\n-&nbsp;&nbsp; &nbsp;Hủy 10 ng&agrave;y trước ng&agrave;y khởi h&agrave;nh: ph&iacute; hủy 50% tiền tour&nbsp;<br />\r\n-&nbsp;&nbsp; &nbsp;Hủy 07 ng&agrave;y trước ng&agrave;y khởi h&agrave;nh: ph&iacute; hủy 70% tiền tour &nbsp;<br />\r\n-&nbsp;&nbsp; &nbsp;Hủy &nbsp;05 ng&agrave;y trước ng&agrave;y khởi h&agrave;nh: ph&iacute; hủy 100% tiền tour &nbsp;<br />\r\n-&nbsp;&nbsp; &nbsp;Việc huỷ bỏ chuyến đi phải được th&ocirc;ng b&aacute;o trực tiếp với C&ocirc;ng ty hoặc qua fax, email, tin nhắn v&agrave; phải được C&ocirc;ng ty x&aacute;c nhận. Việc huỷ bỏ bằng điện thoại kh&ocirc;ng được chấp nhận.<br />\r\n-&nbsp;&nbsp; &nbsp;Do t&iacute;nh chất l&agrave; đo&agrave;n gh&eacute;p kh&aacute;ch lẻ, Du Lịch Việt sẽ c&oacute; tr&aacute;ch nhiệm nhận kh&aacute;ch đăng k&yacute; cho đủ đo&agrave;n (20 kh&aacute;ch người lớn trở l&ecirc;n) th&igrave; đo&agrave;n sẽ khởi h&agrave;nh đ&uacute;ng lịch tr&igrave;nh. Nếu số lượng đo&agrave;n dưới 20 kh&aacute;ch, c&ocirc;ng ty c&oacute; tr&aacute;ch nhiệm th&ocirc;ng b&aacute;o cho kh&aacute;ch trước ng&agrave;y khởi h&agrave;nh 3 ng&agrave;y v&agrave; sẽ thỏa thuận lại ng&agrave;y khởi h&agrave;nh mới hoặc ho&agrave;n trả to&agrave;n bộ số tiền đ&atilde; đặt cọc tour.<br />\r\n-&nbsp;&nbsp; &nbsp;C&aacute;c ng&agrave;y đặt cọc, thanh to&aacute;n, huỷ v&agrave; dời tour: kh&ocirc;ng t&iacute;nh thứ 7, Chủ Nhật.<br />\r\n-&nbsp;&nbsp; &nbsp;Trong những trường hợp bất khả kh&aacute;ng như: khủng bố, bạo động, thi&ecirc;n tai, lũ lụt&hellip; Tuỳ theo t&igrave;nh h&igrave;nh thực tế v&agrave; sự thuận tiện, an to&agrave;n của kh&aacute;ch h&agrave;ng, c&ocirc;ng ty Du Lịch sẽ chủ động th&ocirc;ng b&aacute;o cho kh&aacute;ch h&agrave;ng sự thay đổi như sau: huỷ hoặc thay thế bằng một chương tr&igrave;nh mới với chi ph&iacute; tương đương chương tr&igrave;nh tham quan trước đ&oacute;. Trong trường hợp chương tr&igrave;nh mới c&oacute; ph&aacute;t sinh th&igrave; Kh&aacute;ch h&agrave;ng sẽ thanh to&aacute;n khoản ph&aacute;t sinh n&agrave;y. Tuy nhi&ecirc;n, mỗi b&ecirc;n c&oacute; tr&aacute;ch nhiệm cố gắng tối đa, gi&uacute;p đỡ b&ecirc;n bị thiệt hại nhằm giảm thiểu c&aacute;c tổn thất g&acirc;y ra v&igrave; l&yacute; do bất khả kh&aacute;ng.&hellip;<br />\r\n-&nbsp;&nbsp; &nbsp;Đối với sự thay đổi lịch tr&igrave;nh, giờ bay do lỗi của h&atilde;ng h&agrave;ng kh&ocirc;ng, t&agrave;u hoả, t&agrave;u thuỷ, Du Lịch Việt sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm bất kỳ ph&aacute;t sinh n&agrave;o do lỗi tr&ecirc;n như: ph&aacute;t sinh bữa ăn, nh&agrave; h&agrave;ng, kh&aacute;ch sạn, phương tiện di chuyển, hướng dẫn vi&ecirc;n, &hellip;.&nbsp;<br />\r\n<strong>NHỮNG TH&Ocirc;NG TIN CẦN THIẾT KHI ĐI TOUR</strong><br />\r\n-&nbsp;&nbsp; &nbsp;Ng&agrave;y khởi h&agrave;nh, Qu&yacute; kh&aacute;ch vui l&ograve;ng tập trung l&uacute;c .......... &nbsp;tại .........<br />\r\n&nbsp; &nbsp; &nbsp; C&ocirc;ng ty du lịch kh&ocirc;ng chịu tr&aacute;ch nhiệm khi Qu&yacute; kh&aacute;ch đến trễ.<br />\r\n-&nbsp;&nbsp; &nbsp;Một số thứ tự, chi tiết trong chương tr&igrave;nh: giờ bay; giờ xe lửa; giờ t&agrave;u cao tốc, &hellip; c&oacute; thể thay đổi để ph&ugrave; hợp với t&igrave;nh h&igrave;nh thực tế của chuyến đi (thời tiết, giao th&ocirc;ng&hellip;).<br />\r\n-&nbsp;&nbsp; &nbsp;Qui định nhận &amp; trả ph&ograve;ng tại c&aacute;c kh&aacute;ch sạn/resort: nhận ph&ograve;ng sau 14h v&agrave; trả ph&ograve;ng trước 12h /.<br />\r\n-&nbsp;&nbsp; &nbsp;HDV C&ocirc;ng ty th&ocirc;ng b&aacute;o cụ thể thời gian v&agrave; địa điểm cho kh&aacute;ch v&agrave;o buổi chiều trước ng&agrave;y khởi h&agrave;nh 01 ng&agrave;y.<br />\r\n-&nbsp;&nbsp; &nbsp;Qu&yacute; kh&aacute;ch vui l&ograve;ng ngồi đ&uacute;ng số ghế - cung cấp khi đăng k&yacute; tour.<br />\r\n-&nbsp;&nbsp; &nbsp;Qu&yacute; kh&aacute;ch vui l&ograve;ng mang theo h&agrave;nh l&yacute; gọn nhẹ.<br />\r\n-&nbsp;&nbsp; &nbsp;Giấy tờ t&ugrave;y th&acirc;n tiền bạc, h&agrave;nh l&yacute; tư trang qu&yacute; gi&aacute;. Qu&yacute; kh&aacute;ch tự giữ lấy. C&ocirc;ng ty du lịch sẽ hỗ trợ t&igrave;m kiếm v&agrave; kh&ocirc;ng chịu tr&aacute;ch nhiệm đền b&ugrave;.<br />\r\n-&nbsp;&nbsp; &nbsp;Qu&yacute; kh&aacute;ch n&ecirc;n mang theo 1 c&acirc;y d&ugrave; xếp che nắng, mưa. Gi&agrave;y thể thao hoặc d&eacute;p c&oacute; quai hậu để tiện đi lại.<br />\r\n-&nbsp;&nbsp; &nbsp;Qu&yacute; kh&aacute;ch cần tu&acirc;n theo quy định thời gian tập trung của HDV, tr&aacute;nh việc trễ giờ hẹn g&acirc;y ảnh hưởng chung cho cả đo&agrave;n.<br />\r\n-&nbsp;&nbsp; &nbsp; V&igrave; l&yacute; do sức khỏe v&agrave; an to&agrave;n vệ sinh thực phẩm, Qu&yacute; Kh&aacute;ch vui l&ograve;ng kh&ocirc;ng mang thực phẩm từ b&ecirc;n ngo&agrave;i v&agrave;o nh&agrave; h&agrave;ng, kh&aacute;ch sạn. Đối với thức uống khi mang v&agrave;o phải c&oacute; sự đồng &yacute; của nh&agrave; h&agrave;ng, kh&aacute;ch sạn v&agrave; bị t&iacute;nh ph&iacute; nếu c&oacute;.<br />\r\n-&nbsp;&nbsp; &nbsp;Trước khi rời khỏi chỗ ngồi: tr&ecirc;n xe, nh&agrave; h&agrave;ng, điểm tham quan, mua sắm, trả ph&ograve;ng kh&aacute;ch sạn&hellip; Qu&yacute; kh&aacute;ch thường xuy&ecirc;n kiểm tra lại h&agrave;nh l&yacute;, tư trang c&aacute; nh&acirc;n: b&oacute;p, v&iacute;, t&uacute;i x&aacute;ch, m&aacute;y ảnh, m&aacute;y quay phim, điện thoại&hellip; đề ph&ograve;ng việc bỏ qu&ecirc;n, thất lạc g&acirc;y thiệt hại v&agrave; ảnh hưởng chuyến tham quan của Qu&yacute; kh&aacute;ch.<br />\r\n-&nbsp;&nbsp; &nbsp;Qu&yacute; kh&aacute;ch cẩn thận khi đi lại trong c&aacute;c điểm tham quan, kh&ocirc;ng được đứng, leo tr&egrave;o ở những nơi kh&ocirc;ng an to&agrave;n. Cẩn thận khi đi lại tr&ecirc;n t&agrave;u, đ&ograve;. Qua đường phải đi đ&uacute;ng luật qui định. Những gia đ&igrave;nh c&oacute; trẻ em vui l&ograve;ng quan s&aacute;t v&agrave; tr&ocirc;ng giữ c&aacute;c b&eacute; cẩn thận.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><br />\r\n<strong>CH&Uacute;C QU&Yacute; KH&Aacute;CH CHUYẾN ĐI TH&Uacute; VỊ V&Agrave; BỔ &Iacute;CH !</strong></p>', NULL, '2021-07-10__0aed5323f504b042822a0bd8b526487a.jpg', 4, 1, 0, 0, 1, '2021-07-10 04:47:53', '2021-11-13 05:15:30'),
(3, 'Tour Du lịch Đà Nẵng - Hội An - Huế - Hồ Truồi - Thiền Viện Trúc Lâm Bạch Mã từ Sài Gòn', 'Du lịch Hè - Du lịch Đà Nẵng - Bà Nà - Hội An - Huế - Hồ Truồi - Thiền Viện Trúc Lâm Bạch Mã', '4 ngày 3 đêm', 'Xe du lịch, Máy bay', 'Hồ Chí Minh', '2021-07-14', '2021-07-19', 15, 500000, 400000, 20, 0, '<p><em>Du lịch H&egrave; - Tour Du lịch Đ&agrave; Nẵng - B&agrave; N&agrave; Hill địa điểm&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\"><strong>du lịch Đ&agrave; Nẵng</strong></a>&nbsp;đang trở th&agrave;nh một từ kh&oacute;a &ldquo;hot&rdquo;, l&agrave; sự lựa chọn cho chuyến nghỉ dưỡng của nhiều kh&aacute;ch du lịch cả trong lẫn ngo&agrave;i nước. Sở dĩ nhận được nhiều sự quan t&acirc;m, ưu &aacute;i đến vậy l&agrave; bởi B&agrave; N&agrave; Hill c&oacute; nhiều địa điểm tham quan hấp dẫn khiến bất cứ ai đến đ&acirc;y đều phải hết lời khen ngợi. Nếu bạn cũng đang ấp ủ kế hoạch nghỉ dưỡng tại Đ&agrave; Nẵng dịp H&egrave;&nbsp;năm 2021 n&agrave;y th&igrave; h&atilde;y c&ugrave;ng&nbsp;<a href=\"https://dulichviet.com.vn/\"><strong>Du Lịch Việt</strong></a>&nbsp;đi v&agrave; kh&aacute;m ph&aacute; cung đường n&agrave;y nh&eacute;!</em></p>', '<p><strong>NG&Agrave;Y 1 |&nbsp;TP.HCM &ndash; Đ&Agrave; NẴNG (ăn trưa, chiều)</strong></p>\r\n\r\n<p><strong>S&aacute;ng: Qu&yacute; kh&aacute;ch c&oacute; mặt tại ga quốc nội, s&acirc;n bay T&acirc;n Sơn Nhất trước giờ bay &iacute;t nhất ba tiếng.</strong></p>\r\n\r\n<ul>\r\n	<li>Đại diện c&ocirc;ng ty Du Lịch Việt đ&oacute;n v&agrave; hỗ trợ Qu&yacute; Kh&aacute;ch l&agrave;m thủ tục đ&oacute;n chuyến bay đi Đ&agrave; Nẵng.</li>\r\n	<li>Đến s&acirc;n bay, Hướng Dẫn Vi&ecirc;n đ&oacute;n đo&agrave;n Tham quan Ngũ H&agrave;nh Sơn - được v&iacute; như h&ograve;n non bộ khổng lồ giữa l&ograve;ng th&agrave;nh phố Đ&agrave; Nẵng với Động Huyền Kh&ocirc;ng, Ch&ugrave;a Linh Ứng, Ch&ugrave;a Tam Thai, Vọng Hải Đ&agrave;i,&hellip;mua sắm qu&agrave; lưu niệm tại l&agrave;ng nghề đi&ecirc;u khắc đ&aacute; Non Nước.</li>\r\n</ul>\r\n\r\n<p><strong>Trưa: D&ugrave;ng bữa trưa tại nh&agrave; h&agrave;ng.</strong></p>\r\n\r\n<ul>\r\n	<li>Đo&agrave;n tham quan Phố Cổ Hội An - di sản văn ho&aacute; thế giới với Ch&ugrave;a Cầu Nhật Bản, Hội Qu&aacute;n Ph&uacute;c Kiến, Nh&agrave; Cổ Ph&ugrave;ng Hưng&hellip;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chiều: D&ugrave;ng cơm chiều.</strong></p>\r\n\r\n<ul>\r\n	<li>Nghỉ đ&ecirc;m tại Đ&agrave; Nẵng. &nbsp; &nbsp;</li>\r\n</ul>\r\n\r\n<p>NG&Agrave;Y 2 |&nbsp;Đ&Agrave; NẴNG &ndash; SƠN TR&Agrave; - B&Agrave; N&Agrave; (ăn s&aacute;ng, chiều) (Ăn trưa tự t&uacute;c) (Xem th&ecirc;m)</p>\r\n\r\n<p>NG&Agrave;Y 3 |&nbsp;Đ&Agrave; NẴNG &ndash; HỒ TRUỒI &ndash; KHẢI ĐỊNH (ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m)</p>\r\n\r\n<p>NG&Agrave;Y 4 |&nbsp;HUẾ - ĐẠI NỘI &ndash; TP.HCM (ăn s&aacute;ng, trưa) (Xem th&ecirc;m)</p>\r\n\r\n<p><strong>Dịch vụ bao gồm v&agrave; kh&ocirc;ng bao gồm</strong></p>\r\n\r\n<p><em>Giờ bay c&oacute; thể thay đổi theo quy định của h&agrave;ng kh&ocirc;ng. Du Lịch Việt sẽ thay đổi chương tr&igrave;nh cho ph&ugrave; hợp với giờ bay mới nhưng sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm về c&aacute;c khoản chi ph&iacute; ph&aacute;t sinh.</em><br />\r\n<strong>Gi&aacute; tour bao gồm:</strong><br />\r\n-&nbsp;&nbsp; &nbsp;V&eacute; m&aacute;y bay khứ hồi TP.HCM &ndash; Đ&Agrave; NẴNG / HUẾ &ndash; TP.HCM (VietJetAir).<br />\r\n-&nbsp;&nbsp; &nbsp;Xe tham quan (xe 16 chỗ, 29 chỗ, 35 chỗ, 45 chỗ) t&ugrave;y theo số lượng kh&aacute;ch thực tế tr&ecirc;n chuyến đi.<br />\r\n-&nbsp;&nbsp; &nbsp;Kh&aacute;ch sạn ti&ecirc;u chuẩn đầy đủ tiện nghi 2 kh&aacute;ch người lớn/ ph&ograve;ng. Nếu lẻ người thứ 3, đ&oacute;ng phụ ph&iacute; ph&ograve;ng đơn hoặc ngủ gh&eacute;p ph&ograve;ng 3 kh&aacute;ch.<br />\r\n+ Kh&aacute;ch sạn 3 sao tại Đ&agrave; Nẵng: H&ugrave;ng Anh, Merry,&hellip;hoặc tương đương.<br />\r\n+ Kh&aacute;ch sạn 4 sao tại Đ&agrave; Nẵng: Aria, Gold Đ&agrave; Nẵng&hellip;hoặc tương đương.<br />\r\n+ Kh&aacute;ch sạn 3 sao tại Huế: Duy T&acirc;n, &hellip; hoặc tương đương.<br />\r\n+ Kh&aacute;ch sạn 4 sao tại Huế: Cherish, &hellip; hoặc tương đương.<br />\r\n-&nbsp;&nbsp; &nbsp;Ăn uống theo chương tr&igrave;nh:&nbsp;<br />\r\n+ Ăn phụ: 3 bữa buffet s&aacute;ng tại kh&aacute;ch sạn.&nbsp;<br />\r\n+ Ăn ch&iacute;nh: 6 bữa ch&iacute;nh ti&ecirc;u chuẩn 120.000 đồng/bữa.<br />\r\n-&nbsp;&nbsp; &nbsp;V&eacute; tham quan theo chương tr&igrave;nh.&nbsp;<br />\r\n-&nbsp;&nbsp; &nbsp;Hướng dẫn vi&ecirc;n tiếng Việt vui vẻ nhiệt t&igrave;nh suốt chuyến đi.<br />\r\n-&nbsp;&nbsp; &nbsp;Bảo hiểm với mức bồi thường tối đa 100.000.000 đồng/trường hợp. Kh&ocirc;ng &aacute;p dụng cho kh&aacute;ch từ 80 tuổi trở l&ecirc;n.<br />\r\n-&nbsp;&nbsp; &nbsp;Qu&agrave; tặng: n&oacute;n du lịch Việt, nước, khăn lạnh.<br />\r\n<strong>Kh&ocirc;ng bao gồm:</strong><br />\r\n-&nbsp;&nbsp; &nbsp;Bia hay nước ngọt trong c&aacute;c bữa ăn.<br />\r\n-&nbsp;&nbsp; &nbsp;Tham quan ngo&agrave;i chương tr&igrave;nh.<br />\r\n-&nbsp;&nbsp; &nbsp;Chi ph&iacute; c&aacute; nh&acirc;n: điện thoại, giặt ủi&hellip;<br />\r\n-&nbsp;&nbsp; &nbsp;V&eacute; c&aacute;p treo đi B&agrave; N&agrave;, c&ocirc;ng vi&ecirc;n Ch&acirc;u &Aacute;, v&eacute; tham quan v&agrave; dịch vụ tại C&ocirc;ng vi&ecirc;n Suối kho&aacute;ng n&oacute;ng N&uacute;i Thần T&agrave;i, v&eacute; xem ph&aacute;o hoa, &hellip;<br />\r\n-&nbsp;&nbsp; &nbsp;01 bữa ăn trưa ng&agrave;y thứ 2 trong chương tr&igrave;nh.<br />\r\n-&nbsp;&nbsp; &nbsp;Chi ph&iacute; b&atilde;i biển: d&ugrave;, v&otilde;ng, tắm nước ngọt&hellip;<br />\r\n-&nbsp;&nbsp; &nbsp;Thuế VAT.</p>\r\n\r\n<p>Ghi ch&uacute;</p>\r\n\r\n<p><strong>Gi&aacute; vé dành cho trẻ em:</strong><br />\r\n-&nbsp;&nbsp; &nbsp;Trẻ em dưới 02 tuổi: miễn gi&aacute; tour, gi&aacute; v&eacute; m&aacute;y bay theo quy định của h&atilde;ng h&agrave;ng kh&ocirc;ng, Cha, Mẹ hoặc người th&acirc;n đi k&egrave;m tự lo c&aacute;c chi ph&iacute; ăn, ngủ, tham quan (nếu c&oacute;) cho b&eacute;.&nbsp;<br />\r\n-&nbsp;&nbsp; &nbsp;Trẻ em từ 02 &ndash; dưới 05 tuổi: 100 % gi&aacute; v&eacute; m&aacute;y bay; miễn gi&aacute; tour. Cha, Mẹ hoặc người th&acirc;n đi k&egrave;m tự lo c&aacute;c chi ph&iacute; ăn, ngủ, tham quan (nếu c&oacute;) cho b&eacute;. Hai người lớn chỉ k&egrave;m 1 trẻ em dưới 5 tuổi, trẻ em thứ 2 trở l&ecirc;n phải mua &frac12; v&eacute; tour.<br />\r\n-&nbsp;&nbsp; &nbsp;Trẻ em từ 05 &ndash; dưới 11 tuổi: 100 % gi&aacute; v&eacute; m&aacute;y bay; 50% gi&aacute; tour. Bao gồm c&aacute;c dịch vụ ăn uống, ghế ngồi tr&ecirc;n xe v&agrave; ngủ chung với gia đ&igrave;nh. Hai người lớn chỉ được k&egrave;m 1 trẻ em từ 5 đến dưới 11 tuổi, trẻ em thứ 2 trở l&ecirc;n Cha, Mẹ n&ecirc;n mua th&ecirc;m 1 suất giường đơn.<br />\r\n-&nbsp;&nbsp; &nbsp;Từ 11 tuổi trở l&ecirc;n: 100% gi&aacute; tour v&agrave; ti&ecirc;u chuẩn như người lớn.<br />\r\nQuy định thanh to&aacute;n, hủy v&eacute;:<br />\r\n-&nbsp;&nbsp; &nbsp;Sau khi x&aacute;c nhận v&agrave; thanh to&aacute;n (&iacute;t nhất 50% tiền cọc giữ chỗ v&agrave; thanh to&aacute;n đủ 100% tổng gi&aacute; trị tiền tour trước 15 ng&agrave;y khởi h&agrave;nh).<br />\r\n-&nbsp;&nbsp; &nbsp; Khi đến ng&agrave;y thanh to&aacute;n đủ 100% tổng gi&aacute; trị tiền tour, nếu Qu&yacute; kh&aacute;ch kh&ocirc;ng thanh to&aacute;n đ&uacute;ng hạn v&agrave; đ&uacute;ng số tiền được xem như Qu&yacute; kh&aacute;ch tự &yacute; huỷ tour v&agrave; mất hết số tiền đ&atilde; đặt cọc giữ chỗ.<br />\r\n-&nbsp;&nbsp; &nbsp;V&eacute; M&aacute;y Bay / v&eacute; xe lửa / v&eacute; t&agrave;u cao tốc được xuất ngay sau khi qu&yacute; kh&aacute;ch đ&oacute;ng tiền v&agrave; c&oacute; x&aacute;c nhận sự ch&iacute;nh x&aacute;c về họ, t&ecirc;n (đ&uacute;ng từng k&yacute; tự ghi trong hộ chiếu hoặc CMND), ng&agrave;y-th&aacute;ng-năm sinh &hellip; của h&agrave;nh kh&aacute;ch theo y&ecirc;u cầu của h&atilde;ng vận chuyển. Mọi sự thay đổi li&ecirc;n quan đến v&eacute; đ&atilde; xuất: ng&agrave;y giờ đi, t&ecirc;n h&agrave;nh kh&aacute;ch, hủy v&eacute;, qu&yacute; kh&aacute;ch vui l&ograve;ng chịu chi ph&iacute; theo qui định sau:<br />\r\n* &nbsp; &nbsp;Ngay sau khi Qu&yacute; kh&aacute;ch đăng k&yacute; tour nếu hủy sẽ bị phạt tiền tour v&agrave; v&eacute; m&aacute;y bay: &nbsp;<br />\r\n-&nbsp;&nbsp; &nbsp;Ngay sau khi đặt cọc hoặc thanh to&aacute;n hoặc trước 15 ng&agrave;y: ph&iacute; hủy 35% tiền tour+ 100% V&eacute; m&aacute;y bay.<br />\r\n-&nbsp;&nbsp; &nbsp;Hủy 10 ng&agrave;y trước ng&agrave;y khởi h&agrave;nh: ph&iacute; hủy 50% tiền tour + 100% v&eacute; m&aacute;y bay.<br />\r\n-&nbsp;&nbsp; &nbsp;Hủy 07 ng&agrave;y trước ng&agrave;y khởi h&agrave;nh: ph&iacute; hủy 70% tiền tour &nbsp;+ 100% v&eacute; m&aacute;y bay.<br />\r\n-&nbsp;&nbsp; &nbsp;Hủy &nbsp;05 ng&agrave;y trước ng&agrave;y khởi h&agrave;nh: ph&iacute; hủy 100% tiền tour &nbsp;+ 100% v&eacute; m&aacute;y bay.&nbsp;<br />\r\n-&nbsp;&nbsp; &nbsp;Trường hợp qu&yacute; kh&aacute;ch đến trễ giờ khởi h&agrave;nh được t&iacute;nh l&agrave; hủy 5 ng&agrave;y trước ng&agrave;y khởi h&agrave;nh.<br />\r\n-&nbsp;&nbsp; &nbsp;Do t&iacute;nh chất l&agrave; đo&agrave;n gh&eacute;p kh&aacute;ch lẻ, Du Lịch Việt sẽ c&oacute; tr&aacute;ch nhiệm nhận kh&aacute;ch đăng k&yacute; cho đủ đo&agrave;n (10 kh&aacute;ch người lớn trở l&ecirc;n) th&igrave; đo&agrave;n sẽ khởi h&agrave;nh đ&uacute;ng lịch tr&igrave;nh. Nếu số lượng đo&agrave;n dưới 10 kh&aacute;ch, c&ocirc;ng ty c&oacute; tr&aacute;ch nhiệm th&ocirc;ng b&aacute;o cho kh&aacute;ch trước ng&agrave;y khởi h&agrave;nh 3 ng&agrave;y v&agrave; sẽ thỏa thuận lại ng&agrave;y khởi h&agrave;nh mới hoặc ho&agrave;n trả to&agrave;n bộ số tiền đ&atilde; đặt cọc tour.<br />\r\n-&nbsp;&nbsp; &nbsp;Việc huỷ bỏ chuyến đi phải được th&ocirc;ng b&aacute;o trực tiếp với C&ocirc;ng ty hoặc qua fax, email, tin nhắn v&agrave; phải được C&ocirc;ng ty x&aacute;c nhận. Việc huỷ bỏ bằng điện thoại kh&ocirc;ng được chấp nhận.<br />\r\n-&nbsp;&nbsp; &nbsp;C&aacute;c ng&agrave;y đặt cọc, thanh to&aacute;n, huỷ v&agrave; dời tour: kh&ocirc;ng t&iacute;nh thứ 7, Chủ Nhật.<br />\r\n-&nbsp;&nbsp; &nbsp;Trong những trường hợp bất khả kh&aacute;ng như: khủng bố, bạo động, thi&ecirc;n tai, lũ lụt&hellip; Tuỳ theo t&igrave;nh h&igrave;nh thực tế v&agrave; sự thuận tiện, an to&agrave;n của kh&aacute;ch h&agrave;ng, c&ocirc;ng ty Du Lịch sẽ chủ động th&ocirc;ng b&aacute;o cho kh&aacute;ch h&agrave;ng sự thay đổi như sau: huỷ hoặc thay thế bằng một chương tr&igrave;nh mới với chi ph&iacute; tương đương chương tr&igrave;nh tham quan trước đ&oacute;. Trong trường hợp chương tr&igrave;nh mới c&oacute; ph&aacute;t sinh th&igrave; Kh&aacute;ch h&agrave;ng sẽ thanh to&aacute;n khoản ph&aacute;t sinh n&agrave;y. Tuy nhi&ecirc;n, mỗi b&ecirc;n c&oacute; tr&aacute;ch nhiệm cố gắng tối đa, gi&uacute;p đỡ b&ecirc;n bị thiệt hại nhằm giảm thiểu c&aacute;c tổn thất g&acirc;y ra v&igrave; l&yacute; do bất khả kh&aacute;ng.&hellip;<br />\r\n-&nbsp;&nbsp; &nbsp;Đối với sự thay đổi lịch tr&igrave;nh, giờ bay do lỗi của h&atilde;ng h&agrave;ng kh&ocirc;ng, t&agrave;u hoả, t&agrave;u thuỷ, Du Lịch Việt sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm bất kỳ ph&aacute;t sinh n&agrave;o do lỗi tr&ecirc;n như: ph&aacute;t sinh bữa ăn, nh&agrave; h&agrave;ng, kh&aacute;ch sạn, phương tiện di chuyển, hướng dẫn vi&ecirc;n, &hellip;.&nbsp;<br />\r\n<strong>ĐIỀU KIỆN BẢO LƯU TOUR DO ẢNH HƯỞNG CỦA DỊCH COVID:&nbsp;</strong><br />\r\n1.&nbsp;&nbsp; &nbsp;Kh&aacute;ch h&agrave;ng thuộc c&aacute;c điều kiện như sau:&nbsp;<br />\r\n&bull; Kh&aacute;ch c&oacute; tour đi đến V&ugrave;ng đang c&oacute; Dịch, đang bị phong tỏa c&aacute;ch ly hoặc giản c&aacute;ch x&atilde; hội.&nbsp;<br />\r\n&bull; Kh&aacute;ch đang bị c&aacute;ch ly phong tỏa do khu vực kh&aacute;ch lưu tr&uacute; đang nằm trong v&ugrave;ng Dịch.&nbsp;<br />\r\n&bull; Kh&aacute;ch l&agrave; trường hợp F1, F2, F3,&hellip;đang được y&ecirc;u cầu c&aacute;ch ly tại nh&agrave; hoặc c&oacute; tiếp x&uacute;c qua người nghi nhiễm.&nbsp;<br />\r\n2. &nbsp;&nbsp; &nbsp;Kh&aacute;ch h&agrave;ng, nếu thuộc trong c&aacute;c trường hợp n&ecirc;u tr&ecirc;n sẽ được Bảo lưu tour cụ thể như sau: &bull; Bảo lưu trong thời gian 365 ng&agrave;y kể từ ng&agrave;y kh&aacute;ch th&ocirc;ng b&aacute;o cho c&ocirc;ng ty. Lưu &yacute;: Kh&aacute;ch h&agrave;ng phải cung cấp đầy đủ giấy tờ chứng minh đang thuộc c&aacute;c trường hợp tr&ecirc;n bao gồm : chứng minh nh&acirc;n d&acirc;n , sổ hộ khẩu, giấy x&aacute;c nhận của địa phương ( nếu thuộc điều kiện 2,3)<br />\r\n3.&nbsp;&nbsp; &nbsp;Trường hợp một số điểm tham quan trong chương tr&igrave;nh nằm trong v&ugrave;ng dịch, C&ocirc;ng ty sẽ thay đổi h&agrave;nh trinh, điểm tham quan hợp l&yacute; nhất.<br />\r\n<strong>Lưu &yacute; :</strong><br />\r\n-&nbsp;&nbsp; &nbsp;Khi đăng k&yacute; tour kh&aacute;ch h&agrave;ng bắt buộc phải gởi giấy tờ t&ugrave;y th&acirc;n cho đơn vị du lịch để v&agrave;o t&ecirc;n xuất v&eacute; v&agrave; mua bảo hiểm du lịch. Những giấy tờ c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng (CMND hoặc Passport) thuộc về tr&aacute;ch nhiệm của kh&aacute;ch h&agrave;ng. Mọi vấn đề như h&igrave;nh ảnh, th&ocirc;ng tin giấy tờ trong bản gốc bị mờ, kh&ocirc;ng r&otilde; r&agrave;ng; Passport, CMND hết hạn,&hellip; kh&ocirc;ng đ&uacute;ng quy định của ph&aacute;p luật Việt Nam, Du Lịch Việt sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm v&agrave; sẽ kh&ocirc;ng ho&agrave;n trả bất cứ chi ph&iacute; ph&aacute;t sinh n&agrave;o.<br />\r\n-&nbsp;&nbsp; &nbsp;Đối với kh&aacute;ch Nước ngo&agrave;i/Việt Kiều: Khi đi tour phải mang theo đầy đủ Passport (Hộ Chiếu), Visa Việt Nam bản ch&iacute;nh c&ograve;n hạn sử dụng l&agrave;m thủ tục l&ecirc;n m&aacute;y bay theo qui định h&agrave;ng kh&ocirc;ng. &nbsp;<br />\r\n-&nbsp;&nbsp; &nbsp;Trẻ em (dưới 12 tuổi) khi đi du lịch mang theo giấy khai sinh (bản ch&iacute;nh hoặc sao y c&oacute; thị thực c&ograve;n hạn sử dụng) để &nbsp;l&agrave;m thủ tục h&agrave;ng kh&ocirc;ng.&nbsp;<br />\r\n-&nbsp;&nbsp; &nbsp;Qu&yacute; kh&aacute;ch từ 14 tuổi bắt buộc phải c&oacute; CMND hoặc Passport (c&ograve;n hạn sử dụng), KH&Ocirc;NG SỬ DỤNG GIẤY KHAI SINH. Nếu trẻ em từ 14 tuổi chưa c&oacute; CMND hoặc Passport bắt buộc phải c&oacute; Giấy x&aacute;c nhận nh&acirc;n th&acirc;n (C&oacute; x&aacute;c nhận ch&iacute;nh quyền (c&ograve;n hạn sử dụng)) + Giấy khai sinh.&nbsp;<br />\r\n-&nbsp;&nbsp; &nbsp;Một số thứ tự, chi tiết trong chương tr&igrave;nh; giờ bay; giờ xe lửa; giờ t&agrave;u cao tốc c&oacute; thể thay đổi để ph&ugrave; hợp với t&igrave;nh h&igrave;nh thực tế của chuyến đi (thời tiết, giao th&ocirc;ng&hellip;)<br />\r\n-&nbsp;&nbsp; &nbsp;Qui định nhận &amp; trả ph&ograve;ng tại c&aacute;c kh&aacute;ch sạn/resort: nhận ph&ograve;ng sau 14H00 v&agrave; trả ph&ograve;ng trước 12H00 .<br />\r\n-&nbsp;&nbsp; &nbsp;H&agrave;nh l&yacute; v&agrave; tư trang du kh&aacute;ch tự bảo quản trong qu&aacute; tr&igrave;nh du lịch .<br />\r\n-&nbsp;&nbsp; &nbsp;V&igrave; l&yacute; do sức khỏe v&agrave; an to&agrave;n vệ sinh thực phẩm, Qu&yacute; Kh&aacute;ch vui l&ograve;ng kh&ocirc;ng mang thực phẩm từ b&ecirc;n ngo&agrave;i v&agrave;o nh&agrave; h&agrave;ng, kh&aacute;ch sạn. Đối với thức uống khi mang v&agrave;o phải c&oacute; sự đồng &yacute; của nh&agrave; h&agrave;ng, kh&aacute;ch sạn v&agrave; bị t&iacute;nh ph&iacute; nếu c&oacute;.</p>\r\n\r\n<p style=\"text-align:center\"><br />\r\n<strong>K&Iacute;NH CH&Uacute;C QU&Yacute; KH&Aacute;CH CHUYẾN ĐI TH&Uacute; VỊ V&Agrave; BỔ &Iacute;CH !</strong></p>', NULL, '2021-07-10__49cfc4c309e79f2ef8f1d89c5a6020cc.jpg', 5, 1, 1, 0, 1, '2021-07-10 04:57:07', '2021-11-13 05:02:21'),
(5, 'Du lịch Đà Lạt', 'Khám phá Đà Lạt', '3 ngày 2 đêm', 'Xe khách', 'TPHCM', '2021-11-20', '2021-11-22', 40, 500000, 400000, 10, 0, '<h3><strong>Ng&agrave;y 1: TP. HCM - Đ&Oacute;N KH&Aacute;CH -&nbsp;</strong><strong>DU LỊCH Đ&Agrave; LẠT</strong><strong>&nbsp;(Ăn: S&aacute;ng - Trưa - Tối)</strong></h3>\r\n\r\n<p><strong>05:00</strong>&nbsp;&nbsp;Xe v&agrave; hướng dẫn vi&ecirc;n&nbsp;<strong><a href=\"https://www.intour.com.vn/\" title=\"Công Ty TNHH Du Lịch INTOUR\">Du Lịch INTOUR</a></strong>&nbsp;đ&oacute;n kh&aacute;ch tại những điểm hẹn, khởi h&agrave;nh&nbsp;<strong><a href=\"https://www.intour.com.vn/da-lat-thanh-pho-ngan-hoa.html\" title=\"Tour du lịch Đà Lạt 3 ngày 2 đêm\">tour du lịch Đ&agrave; Lạt 3 ng&agrave;y 2 đ&ecirc;m</a></strong>. Qu&yacute; kh&aacute;ch d&ugrave;ng điểm t&acirc;m s&aacute;ng tại nh&agrave; h&agrave;ng ở&nbsp;<strong>Dầu Gi&acirc;y</strong>.</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch tham gia c&aacute;c tr&ograve; chơi tập thể vui nhộn như:&nbsp;<em>&ldquo;Đi t&igrave;m ẩn số, B&iacute; mật cuối c&ugrave;ng, Chiếc n&oacute;n kỳ diệu,&hellip;</em>&rdquo; với nhiều phần qu&agrave; hấp dẫn. Qu&yacute; kh&aacute;ch&nbsp;dừng ch&acirc;n nghỉ ngơi tại lưng chừng&nbsp;đ&egrave;o<strong><em>&nbsp;Bảo Lộc,</em></strong><em>&nbsp;</em>tham quan v&agrave; thưởng ngoạn. Ngắm phong cảnh n&uacute;i non h&ugrave;ng vĩ m&acirc;y trong n&uacute;i. Tự do chụp ảnh lưu niệm.</p>\r\n\r\n<p><strong>10:00</strong>&nbsp;Đến&nbsp;<strong>Đức Trọng</strong>, đo&agrave;n dừng ch&acirc;n tham quan&nbsp;<strong>Th&aacute;c Pongour</strong>&nbsp;&ndash; được mệnh danh l&agrave;&nbsp;<strong>Nam Thi&ecirc;n Đệ Nhất Th&aacute;c</strong>&nbsp;hay c&ograve;n gọi l&agrave;&nbsp;<strong>Th&aacute;c Bảy Tầng</strong>&nbsp;&ndash; một ngọn th&aacute;c h&ugrave;ng vĩ của tỉnh L&acirc;m Đồng.</p>\r\n\r\n<p><strong>12:00</strong>&nbsp;&nbsp;D&ugrave;ng cơm trưa tại&nbsp;nh&agrave;h&agrave;ng. Thưởng thức miễn ph&iacute; m&oacute;n tr&agrave;,&nbsp;<strong>cafe Bảo Lộc</strong>&nbsp;nổi tiếng, nghe kể về c&acirc;u chuyện<strong>&nbsp;&ldquo;Tứ Đại Danh Tr&agrave;&rdquo;</strong>&nbsp;v&agrave; t&igrave;m hiểu về nghệ thuật uống tr&agrave; của người Việt Nam.</p>\r\n\r\n<p><strong>14:00</strong>&nbsp; Viếng&nbsp;<strong><em>Ch&ugrave;a Linh Phước</em></strong>&nbsp;c&ograve;n gọi l&agrave;&nbsp;<strong><em>Ch&ugrave;a Ve chai</em></strong>&nbsp;&ndash; một trong những danh thắng nổi tiếng của Đ&agrave; Lạt, c&ocirc;ng tr&igrave;nh kiến tr&uacute;c khảm s&agrave;nh đặc sắc, ngo&agrave;i việc d&acirc;ng hương lễ Phật, du kh&aacute;ch được thưởng ngoạn những kiến tr&uacute;c được x&acirc;y dựng mang đậm bản sắc &Aacute; Đ&ocirc;ng.</p>\r\n\r\n<p><strong>16:00&nbsp;</strong>Qu&yacute; kh&aacute;ch tham quan&nbsp;<strong><em>Quảng trường L&acirc;m Vi&ecirc;n, Hồ Xu&acirc;n Hương</em></strong>&nbsp;check&ndash;in chụp h&igrave;nh.</p>\r\n\r\n<p><strong>17:30&nbsp;</strong>Qu&yacute; kh&aacute;ch&nbsp;<em><strong>tự t&uacute;c d&ugrave;ng cơm tối</strong>.</em></p>\r\n\r\n<p><strong>Buổi tối:</strong>&nbsp;Tự do tham quan&nbsp;<strong><em>Th&agrave;nh phố Cao Nguy&ecirc;n</em></strong>&nbsp;về đ&ecirc;m, thưởng thức c&aacute;c m&oacute;n ăn:<em>&nbsp;</em><em>Kem Bơ Thạch Thảo đường Nguyễn Văn Trỗi, Cafe T&ugrave;ng nghe Nhạc Trịnh b&ecirc;n h&ocirc;ng nh&agrave; h&aacute;t H&ograve;a B&igrave;nh, Ch&egrave; H&eacute; &ndash; 59 đường 3/2, B&aacute;nh Tr&aacute;ng Nướng &ndash; 112 Nguyễn Văn Trỗi</em></p>\r\n\r\n<h3><strong>Ng&agrave;y 2:&nbsp;<strong>ĐƯỜNG HẦM ĐẤT S&Eacute;T &ndash; GA Đ&Agrave; LẠT &ndash; LANGBIANG&nbsp; - GIAO LƯU LỬA TRẠI -&nbsp;</strong>&nbsp;(Ăn: S&aacute;ng - Trưa - Tối).</strong></h3>\r\n\r\n<p><strong>07:00</strong>&nbsp; Qu&yacute; kh&aacute;ch tr&ecirc;n&nbsp;<strong>tour&nbsp; Đ&agrave; Lạt 3 ng&agrave;y 2 đ&ecirc;m&nbsp;</strong>D&ugrave;ng điểm t&acirc;m&nbsp;<strong>BUFFET</strong>&nbsp;s&aacute;ng. Qu&yacute; kh&aacute;ch di chuyển theo cung đường&nbsp;<strong>Hồ Tuyền L&acirc;m</strong>&nbsp;với hệ thống rừng th&ocirc;ng bạt ng&agrave;n, hoa&nbsp;<strong>D&atilde; Quỳ</strong>v&agrave;ng rực dọc hai b&ecirc;n đường.</p>\r\n\r\n<p><strong>08:00</strong>&nbsp;&nbsp;<strong><a href=\"https://www.intour.com.vn/dich-vu/thien-vien-truc-lam-lam-dong-da-lat.html\" title=\"Viếng thiền viện trúc lâm đà lạt\">Viếng&nbsp;</a></strong><strong><a href=\"https://www.intour.com.vn/dich-vu/thien-vien-truc-lam-lam-dong-da-lat.html\" title=\"Viếng thiền viện trúc lâm đà lạt\">Thiền Viện Tr&uacute;c L&acirc;m</a></strong>, ngắm to&agrave;n cảnh&nbsp;<strong>Hồ Tuyền L&acirc;m</strong>&nbsp;thơ mộng từ đồi&nbsp;<strong>Phượng</strong><strong>Ho&agrave;ng</strong>, qu&yacute; kh&aacute;ch c&oacute; dịp xuy&ecirc;n rừng th&ocirc;ng b&aacute;t ng&aacute;t bằng c&aacute;p treo từ&nbsp;<strong>đồi&nbsp;</strong><strong>Robin</strong>&nbsp;qua&nbsp;<strong>Thiền Viện.</strong></p>\r\n\r\n<p><strong>10:30</strong>&nbsp; Đo&agrave;n tham quan Khu&nbsp;du lịch<strong>&nbsp;Đường hầm đất S&eacute;t</strong>&nbsp;với những c&ocirc;ng tr&igrave;nh&nbsp;<strong>Ng&ocirc;i nh&agrave; Đất S&eacute;t&nbsp;</strong>(xung quanh hai b&ecirc;n đường hầm l&agrave; c&ocirc;ng tr&igrave;nh những bức ph&ugrave; đi&ecirc;u &ndash; bức tượng l&agrave;m bằng đất s&eacute;t m&ocirc; tả qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh TP. Đ&agrave; Lạt: Những chiếc xe Vespa cổ &ndash; Đ&agrave;n voi trong khu rừng nguy&ecirc;n sinh &ndash; Dải ta luy bằng đất d&agrave;i 63 m, cao 5,5 m &ndash; Ếch đi motor&nbsp;&ndash; đường đi d&agrave;nh cho du kh&aacute;ch tất cả c&aacute;c c&ocirc;ng tr&igrave;nh đều bằng đất đỏ&hellip;) được c&ocirc;ng nhận trong Trung t&acirc;m s&aacute;ch Kỷ Lục Việt Nam. Đặc biệt nổi tiếng với điểm&nbsp;<strong>HOT check&ndash;in&nbsp;</strong><strong>&ldquo;Hồ V&ocirc; Cực&rdquo;</strong>&nbsp;đ&atilde; thu h&uacute;t rất nhiều du kh&aacute;ch đến tham quan..</p>\r\n\r\n<p><strong>11:</strong><strong>30</strong><strong>&nbsp;&nbsp;</strong>Tham<strong>&nbsp;</strong>quan<strong>&nbsp;Nh&agrave; ga Đ&agrave; Lạt</strong>&nbsp;&ndash; c&ocirc;ng tr&igrave;nh đường sắt cổ k&iacute;nh nhất v&agrave; độc nhất của Việt Nam v&agrave;&nbsp;<strong>Đ&ocirc;ng</strong><strong>Dương</strong>&nbsp;v&igrave; c&oacute; tuyến đường sắt duy nhất thiết kế theo kiểu răng cưa. Nh&agrave; ga c&oacute; h&igrave;nh d&aacute;ng của d&atilde;y&nbsp;<strong>LangBiang</strong>&nbsp;h&ugrave;ng vỹ với ba ch&oacute;p nhọn. Ph&iacute;a trước c&ograve;n c&oacute; mặt đồng hồ to, ghi lại thời gian c&acirc;u chuyện b&aacute;c sỹ&nbsp;<strong>Alexandre</strong><strong>Yersin</strong>&nbsp;ph&aacute;t hiện ra&nbsp;<strong>Đ&agrave; L</strong><strong>ạt.</strong></p>\r\n\r\n<p><strong>11:45</strong>&nbsp;Qu&yacute; kh&aacute;ch&nbsp;d&ugrave;ng bữa trưa&nbsp;<strong>BUFFET RAU KH&Ocirc;NG GIỚI HẠN</strong>với thực đơn hấp dẫn.</p>\r\n\r\n<ul>\r\n	<li>Salad trộn, gỏi s&uacute; t&iacute;m Đ&agrave; Lạt, củ quả hấp, rau ăn lẩu.</li>\r\n	<li>Hai loại nước lẩu, b&uacute;n + m&igrave; trứng, tr&agrave; đ&aacute;.&nbsp;</li>\r\n	<li>Thức ăn k&egrave;m lẩu: ba chỉ, b&ograve; fille, c&aacute; di&ecirc;u hồng, v&acirc;y c&aacute; hồi, t&ocirc;m, mực, c&aacute; vi&ecirc;n, c&aacute;c loại, nấm...</li>\r\n</ul>\r\n\r\n<p><strong>12:30&nbsp;</strong>Đo&agrave;n trở về kh&aacute;ch sạn nghỉ ngơi.</p>\r\n\r\n<p><strong>14:30</strong>&nbsp;Đo&agrave;n tiếp tục chương tr&igrave;nh tham quan, thưởng ngoạn:</p>\r\n\r\n<p>Tham quan<strong>Nh&agrave; thờ Domain de Marie</strong>&nbsp;được mệnh danh&nbsp;<strong>&ldquo;L&atilde;nh địa của Đức B&agrave;&rdquo;</strong>&nbsp;tại đ&acirc;y Qu&yacute; kh&aacute;ch&nbsp;c&ograve;n thể mua sắm &aacute;o len được l&agrave;m bằng thủ c&ocirc;ng</p>\r\n\r\n<p>Tự do&nbsp;<strong>thưởng thức đặc sản Mứt &ndash;</strong>&nbsp;đặc sản đặc trưng&nbsp;<strong>Đ&agrave;</strong>&nbsp;<strong>Lạt</strong>, mua về l&agrave;m qu&agrave; cho người th&acirc;n.</p>\r\n\r\n<p><strong>17:30&nbsp;</strong>Đo&agrave;n&nbsp;tr&ecirc;n&nbsp;<strong>tour Đ&agrave; Lạt</strong>&nbsp;d&ugrave;ng cơm chiều&nbsp;nh&agrave; h&agrave;ng. Tự do tham gia chương tr&igrave;nh&nbsp;<strong>Giao lưu văn h&oacute;a cồng chi&ecirc;ng</strong>&nbsp;với người d&acirc;n tộc&nbsp;<strong>Lạch</strong>&nbsp;uống rượu cần &ndash; thưởng thức thịt rừng (chi ph&iacute; tự t&uacute;c). Tự do thưởng thức đặc sản Đ&agrave; Lạt, mua qu&agrave; lưu niệm, dạo chợ đ&ecirc;m trong kh&ocirc;ng kh&iacute; se lạnh v&ugrave;ng cao nguy&ecirc;n.</p>\r\n\r\n<p><strong>Buổi tối:</strong>&nbsp;Tự do tham quan&nbsp;<strong>Th&agrave;nh phố Cao Nguy&ecirc;n</strong>&nbsp;về đ&ecirc;m, thưởng thức c&aacute;c m&oacute;n ăn: Kem Bơ Thạch Thảo đường Nguyễn Văn Trỗi, Cafe T&ugrave;ng nghe Nhạc Trịnh b&ecirc;n h&ocirc;ng nh&agrave; h&aacute;t H&ograve;a B&igrave;nh, Ch&egrave; H&eacute; &ndash; 59 đường 3/2, B&aacute;nh Tr&aacute;ng Nướng &ndash; 112 Nguyễn Văn Trỗi&hellip;</p>\r\n\r\n<h3><strong>Ng&agrave;y 3:</strong><strong><a href=\"https://www.intour.com.vn/da-lat-thanh-pho-ngan-hoa.html\" title=\"TOUR ĐÀ LẠT GIÁ RẺ\"><span style=\"color:null\">TOUR Đ&Agrave; LẠT GI&Aacute; RẺ</span></a></strong><strong>&nbsp;- TP. HCM (Ăn: S&aacute;ng - Trưa)</strong></h3>\r\n\r\n<p><strong>07h00:</strong>&nbsp;Ng&agrave;y cuối c&ugrave;ng của&nbsp;<strong>tour du lịch Đ&agrave; lạt gi&aacute; rẻ</strong>, du kh&aacute;ch sắp xếp h&agrave;nh l&yacute; v&agrave; l&agrave;m thủ tục trả ph&ograve;ng, d&ugrave;ng điểm t&acirc;m s&aacute;ng. Sau đ&oacute; xe sẽ đưa du kh&aacute;ch tham quan cũng như mua sắm tại Chợ Đ&agrave; Lạt rồi khởi h&agrave;nh về TP. Hồ Ch&iacute; Minh.</p>\r\n\r\n<p><strong>11h00:</strong>&nbsp;Xe dừng tại Bảo Lộc, du kh&aacute;ch sẽ được viếng ch&ugrave;a Linh Quy Ph&aacute;p Ấn - cổng trời của n&uacute;i rừng T&acirc;y Nguy&ecirc;n, được chi&ecirc;m ngưỡng thi&ecirc;n nhi&ecirc;n trong l&agrave;nh v&agrave; thỏa th&iacute;ch selfie, sống ảo.</p>\r\n\r\n<p>Tiếp đ&oacute; cả đo&agrave;n dừng ch&acirc;n nghỉ ngơi v&agrave; d&ugrave;ng bữa trưa tại nh&agrave; h&agrave;ng, thưởng thức tr&agrave; v&agrave; cafe miễn ph&iacute;.</p>\r\n\r\n<p><strong>18h30:</strong>&nbsp;Xe đến TP. Hồ Ch&iacute; Minh, hướng dẫn vi&ecirc;n của Du lịch Intour n&oacute;i lời cảm ơn v&agrave; kết th&uacute;c chuyến&nbsp;<strong>du lịch Đ&agrave; Lạt 3 ng&agrave;y 2 đ&ecirc;m</strong>, tạm biệt qu&yacute; kh&aacute;ch, hẹn gặp lại Qu&yacute; kh&aacute;ch!</p>', '<p><em><strong>Đ&agrave; Lạt nằm tr&ecirc;n cao nguy&ecirc;n L&acirc;m Vi&ecirc;n, tỉnh L&acirc;m Đồng với độ cao 1.500m so với mặt nước biển. Được v&iacute; như một tiểu Paris mộng mơ, n&ecirc;n thơ, đ&acirc;y l&agrave; địa điểm du lịch xinh đẹp v&agrave; quyến rũ nhất mảnh đất h&igrave;nh chữ S. Đ&agrave; Lạt được đặt cho nhiều c&aacute;i t&ecirc;n mĩ miều như:&nbsp;th&agrave;nh phố ng&agrave;n th&ocirc;ng, th&agrave;nh phố t&igrave;nh y&ecirc;u, th&agrave;nh phố mộng mơ, th&agrave;nh phố sương m&ugrave;, xứ sở sương m&ugrave;, xứ sở hoa anh đ&agrave;o,&hellip;.. Vậy c&oacute; b&iacute; mật g&igrave; đằng sau t&ecirc;n gọi &ldquo;th&agrave;nh phố ng&agrave;n hoa&rdquo; của Đ&agrave; Lạt hay chăng?</strong></em></p>', NULL, '2021-11-07__cc1dd30501b5271724beb14566aed5a8.jpg', 6, 1, 0, 3, 1, '2021-11-07 06:08:26', '2021-11-15 05:13:25');
INSERT INTO `tours` (`id`, `t_title`, `t_journeys`, `t_schedule`, `t_move_method`, `t_starting_gate`, `t_start_date`, `t_end_date`, `t_number_guests`, `t_price_adults`, `t_price_children`, `t_sale`, `t_view`, `t_description`, `t_content`, `t_anbum_image`, `t_image`, `t_location_id`, `t_user_id`, `t_number_registered`, `t_follow`, `t_status`, `created_at`, `updated_at`) VALUES
(6, 'Khám Phá Địa Điểm Mới Tại Đà Lạt', 'Khám phá Đà Lạt', '1 ngày', 'Xe khách', 'TPHCM', '2021-11-14', '2021-11-15', 30, 1000000, 900000, 15, 0, '<p>8h30: Xe v&agrave; HDV&nbsp;c&ocirc;ng ty&nbsp;đ&oacute;n qu&yacute; kh&aacute;ch tại trung t&acirc;m th&agrave;nh phố&nbsp;<strong>Đ&agrave; Lạt</strong>, di chuyển đi tham quan:</p>\r\n\r\n<p>-&nbsp;<strong>Lạc Ti&ecirc;n Giới</strong>&nbsp;&ndash; Thung lũng check in v&ocirc; c&ugrave;ng ảo diệu (trải nghiệm xe jeep k&igrave; th&uacute;, hơn 30 tiểu cảnh tham hồ chọn lựa)&nbsp;</p>\r\n\r\n<p>-&nbsp;<strong>Khu du lịch Th&uacute;y Thuận</strong>&nbsp;&ndash; Xưởng c&agrave; ph&ecirc; lớn ở Đ&agrave; Lạt.&nbsp;Nơi đ&acirc;y c&oacute; diện t&iacute;ch l&ecirc;n đến gần 4 ha, lại c&ograve;n được nằm tr&ecirc;n cao, c&oacute; view ngắm trọn đồi th&ocirc;ng v&agrave; thi&ecirc;n nhi&ecirc;n n&uacute;i rừng ở th&agrave;nh phố t&igrave;nh y&ecirc;u.&nbsp;</p>\r\n\r\n<p>-&nbsp;<strong>C&agrave; ph&ecirc; M&ecirc; Linh</strong>&nbsp;- Thưởng thức Cafe Chồn nguy&ecirc;n chất (chi ph&iacute; tự t&uacute;c )</p>\r\n\r\n<p>- C&aacute;nh đồng hoa&nbsp;<strong>Tam Giác Mạch</strong>, hoa cánh bướm, hoa Hướng Dương&hellip;( Phụ thuộc v&agrave;o từng m&ugrave;a hoa sẽ cho kh&aacute;ch đi tham quan vườn hoa đ&oacute;).</p>\r\n\r\n<p>12h: Đo&agrave;n d&ugrave;ng cơm trưa tự t&uacute;c tại nh&agrave; h&agrave;ng, nghỉ ngơi.</p>\r\n\r\n<p>13h30: Đo&agrave;n tiếp tục tham quan:</p>\r\n\r\n<p>- C&aacute;nh đồng hoa&nbsp;<strong>Cẩm T&uacute; Cầu</strong>&nbsp;- Nấc thang l&ecirc;n thi&ecirc;n đường &ndash; C&acirc;y cầu v&agrave;ng.&nbsp;</p>\r\n\r\n<p>-&nbsp;<strong>Mama Dala</strong>&nbsp;&ndash; Tổ hợp check in si&ecirc;u Hot (hơn 30 concepts với Đồng hồ TikTak, Dương Sĩ cổ đại, nh&agrave; bong b&oacute;ng&hellip;)&nbsp;</p>\r\n\r\n<p>-&nbsp;<strong>Vườn d&acirc;u t&acirc;y</strong>: &nbsp;Những khu vườn xinh xắn trồng d&acirc;u t&acirc;y ở Đ&agrave; Lạt đang trở th&agrave;nh điểm tham quan hấp dẫn. Nhiều du kh&aacute;ch t&igrave;m đến c&aacute;c vườn d&acirc;u để được tự tay chọn những quả đẹp v&agrave; ngon nhất.&nbsp;</p>\r\n\r\n<p>16h: Xe đưa qu&yacute; kh&aacute;ch về lại điểm đ&oacute;n ban đầu, kết th&uacute;c tour v&agrave; hẹn gặp lại.</p>\r\n\r\n<p><em>Thứ tự tham quan c&oacute; thể thay đổi nhưng vẫn đảm bảo đầy đủ điểm trong chương tr&igrave;nh.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<p>Từ l&acirc;u Đ&agrave; Lạt đ&atilde; trở th&agrave;nh thi&ecirc;n đường của rau v&agrave; hoa v&agrave; rất nhiều du kh&aacute;ch, đ&oacute; ch&iacute;nh l&agrave; l&ecirc;n đ&agrave; lạt chỉ để ăn rau củ quả sạch cho đ&atilde; v&igrave; đ&atilde; qu&aacute; ng&aacute;n với c&aacute;c sản phẩm kh&ocirc;ng r&otilde; nguồn gốc. Bạn l&agrave; người y&ecirc;u thi&ecirc;n nhi&ecirc;n, y&ecirc;u c&aacute;i đẹp v&agrave; đặc biệt l&agrave; sự độc lạ, muốn tận tay h&aacute;i rau, củ, quả th&igrave; h&atilde;y c&ugrave;ng iVIVU kh&aacute;m ph&aacute; ngay h&ocirc;m nay!&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Những trải nghiệm th&uacute; vị trong chương tr&igrave;nh</h3>\r\n\r\n<p>Đến với thi&ecirc;n đường n&ocirc;ng trại chắc chắn sẽ gh&eacute; qua:</p>\r\n\r\n<p>-&nbsp;Khu du lịch&nbsp;<strong>Th&uacute;y Thuận Đ&agrave; Lạt</strong>&nbsp;hay qu&aacute;n cafe Th&uacute;y Thuận Đ&agrave; Lạt đang l&agrave; một trong top những địa điểm du lịch Đ&agrave; Lạt cực kỳ hot trong năm nay. C&oacute; thể n&oacute;i nơi đ&acirc;y l&agrave; xưởng c&agrave; ph&ecirc; lớn nhất Đ&ocirc;ng Nam &Aacute;.</p>\r\n\r\n<p>-&nbsp;<strong>Lạc ti&ecirc;n giới Đ&agrave; Lạt</strong>&nbsp;điểm sống ảo triệu view vừa mới nổi tại Đ&agrave; Lạt. Một địa điểm check in cực kỳ chill đậm chất trời &Acirc;u tại Đ&agrave; Lạt.</p>\r\n\r\n<p>-&nbsp;Chị em n&agrave;o &ldquo;lười&rdquo; di chuyển qua nhiều địa điểm kh&aacute;c nhau để chụp h&igrave;nh th&igrave;&nbsp;<strong>MAMA DALA</strong>&nbsp;l&agrave; một nơi tuyệt vời bạn sẽ được tha hồ check-in sương sương hơn 30 concept chụp ảnh v&agrave; nhiều concept vườn hoa đẹp mắt.</p>', NULL, '2022-08-04__1ed034be7dea889ed082f3c7a05f2707.jpg', 6, 1, 2, 4, 1, '2021-11-12 07:33:24', '2022-08-04 18:00:50'),
(7, 'Tour Phú Quốc 1N: Vi Vu Cano 5 Đảo - Cáp Treo Hòn Thơm', 'Khám phá Phú Quốc', '1 ngày', 'Máy bay', 'TPHCM', '2021-11-15', '2021-11-16', 50, 1100000, 1000000, 5, 0, '<p>08h00: Xe đ&oacute;n du kh&aacute;ch tại resort tại thị trấn&nbsp;<strong>Dương Đ&ocirc;ng</strong>. Bắt đầu cuộc h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; quần đảo đẹp nhất ph&iacute;a nam&nbsp;<strong>Ph&uacute; Quốc.</strong></p>\r\n\r\n<p>09h00: Đến cảng ổn định chỗ ngồi v&agrave; khởi h&agrave;nh th&ocirc;i!</p>\r\n\r\n<p>C&ugrave;ng vi vu Quần&nbsp;<strong>Đảo An Thới&nbsp;</strong>bằng&nbsp;cano đi qua 12 đảo v&agrave; gh&eacute; tại 5 đảo đẹp nhất</p>\r\n\r\n<p>-&nbsp;<strong>C&ocirc;ng vi&ecirc;n San H&ocirc;</strong>: Kh&aacute;m ph&aacute; nhiều loại sinh vật biển với số lượng san h&ocirc; lớn nhất hiện nay.&nbsp;</p>\r\n\r\n<p>-&nbsp;<strong>H&ograve;n Dăm Ngang (H&ograve;n Gầm Gh&igrave;)</strong>: Trải nghiệm đắm m&igrave;nh trong l&agrave;n nước trong vắt v&agrave; lặn ngắm san h&ocirc; đầy sắc m&agrave;u.&nbsp;Được mệnh danh l&agrave; Vương Quốc San H&ocirc; &ndash; Lặn ngắm san h&ocirc;.</p>\r\n\r\n<p>-&nbsp;<strong>H&ograve;n M&acirc;y R&uacute;t Ngo&agrave;i</strong>&nbsp;v&agrave;&nbsp;<strong>H&ograve;n M&acirc;y R&uacute;t</strong>&nbsp;<strong>Trong:&nbsp;</strong>Qu&yacute; kh&aacute;ch tự do nghỉ ngơi &ndash; tắm biển hoặc kh&aacute;m ph&aacute; c&aacute;c hoạt động thể thao tr&ecirc;n b&atilde;i biển.&nbsp;</p>\r\n\r\n<p>D&ugrave;ng bữa trưa tại nh&agrave; h&agrave;ng.</p>\r\n\r\n<p>-&nbsp;<strong>H&ograve;n M&oacute;ng Tay</strong>: thư gi&atilde;n check in tại kh&ocirc;ng gian đẹp tựa thi&ecirc;n đường v&agrave; mệnh danh l&agrave; &ldquo; Madivies Việt &rdquo;</p>\r\n\r\n<p>14h00 &ndash; 14h30:&nbsp;<strong>B&atilde;i Tr&agrave;o H&ograve;n Thơm</strong>: Thỏa sức check in tại c&acirc;y cầu d&agrave;i bắt ra biển &ldquo; Cầu Ho&agrave;ng H&ocirc;n&rsquo;&rsquo;</p>\r\n\r\n<p>17h00:&nbsp;<strong>C&aacute;p treo h&ograve;n thơm</strong>: bạn sẽ được chi&ecirc;m ngưỡng to&agrave;n cảnh đẹp c&aacute;c đảo từ tr&ecirc;n cao.</p>\r\n\r\n<p>17h30: xe đ&oacute;n đo&agrave;n đưa về lại kh&aacute;ch sạn nghỉ ngơi.</p>\r\n\r\n<p><em>Thứ tự tham quan c&oacute; thể thay đổi nhưng vẫn đảm bảo đầy đủ điểm trong chương tr&igrave;nh.</em></p>', '<h3>Kh&aacute;m Ph&aacute; Vẻ Đẹp Hoang D&atilde; C&aacute;c Đảo Ph&uacute; Quốc</h3>\r\n\r\n<p>Nếu bạn muốn&nbsp;kh&aacute;m ph&aacute; một thi&ecirc;n đường tr&ecirc;n biển, sống động, đầy kỳ th&uacute; h&atilde;y đến với Ph&uacute; Quốc! Bạn sẽ được thỏa th&iacute;ch chi&ecirc;m ngưỡng vẻ đẹp thật k&igrave; diệu khi từ tr&ecirc;n cao nh&igrave;n xuống v&agrave; bao qu&aacute;t hết cả v&ugrave;ng trời biển ph&iacute;a Nam Ph&uacute; Quốc từ tr&ecirc;n ca bin c&aacute;p treo. C&aacute;p treo từ Cảng An Thới ra H&ograve;n Thơm Ph&uacute; Quốc với qu&atilde;ng đường d&agrave;i 7.899,9m, được Tổ chức Guinness trao tặng Chứng nhận C&aacute;p treo d&agrave;i nhất thế giới.&nbsp;Với lợi thế gồm c&aacute;c d&ograve;ng Cano mới v&agrave; hiện đại nhất Ph&uacute; Quốc như Cano SB c&oacute; m&aacute;i che, k&iacute;nh chắn gi&oacute; v&agrave; kh&ocirc;ng gian rộng r&atilde;i. C&ugrave;ng iVIVU kh&aacute;m ph&aacute; ngay h&ocirc;m nay!&nbsp;</p>\r\n\r\n<h3>Những trải nghiệm th&uacute; vị trong chương tr&igrave;nh</h3>\r\n\r\n<p>Kh&aacute;m ph&aacute; 4 đảo tại&nbsp;<strong>Ph&uacute; Quốc</strong>&nbsp;du kh&aacute;ch say đắm:&nbsp;</p>\r\n\r\n<p>- Chi&ecirc;m ngưỡng vẻ đẹp to&agrave;n cảnh từ c&aacute;p treo<strong>&nbsp;H&ograve;n Thơm</strong>, được tổ chức Guinness chứng nhận l&agrave; c&aacute;p treo d&agrave;i nhất thế giới.</p>\r\n\r\n<p>- Kh&aacute;m ph&aacute; 3 h&ograve;n đảo xinh đẹp gồm&nbsp;<strong>H&ograve;n Dăm Ngang, H&ograve;n M&acirc;y R&uacute;t Trong&nbsp;</strong>v&agrave;<strong>&nbsp;H&ograve;n M&acirc;y R&uacute;t Ngo&agrave;i.</strong></p>\r\n\r\n<p>-&nbsp;Thực đơn Hải Sản hấp dẫn.&nbsp;</p>', NULL, '2022-08-04__4be13b75710958c61dede6c7f073393c.png', 4, 1, 0, 0, 1, '2021-11-12 07:48:18', '2022-08-04 18:00:28'),
(8, 'Du lịch Hè - Tour Du lịch Mỹ Tho - Cồn Phụng - Cần Thơ - Thiền Viện Trúc Lâm từ Sài Gòn', 'Khám phá miền Tây', '2 ngày 1 đêm', 'Xe du lịch', 'TPHCM', '2021-11-14', '2021-11-16', 30, 1499000, 1499000, 0, 0, '<p><strong>NG&Agrave;Y 1 |&nbsp;TP. HCM &ndash; TIỀN GIANG &ndash; MỸ THO &ndash; CẦN THƠ (Ăn s&aacute;ng, trưa, chiều)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng&nbsp;&nbsp; &nbsp;Xe v&agrave; Hướng Dẫn Vi&ecirc;n C&ocirc;ng Ty Du Lịch Việt đ&oacute;n Qu&yacute; kh&aacute;ch tại điểm hẹn.</strong></p>\r\n\r\n<ul>\r\n	<li>Khởi h&agrave;nh đi Mỹ Tho.</li>\r\n	<li>Qu&yacute; kh&aacute;ch d&ugrave;ng bữa s&aacute;ng tại Trung Lương. Tiếp tục lộ tr&igrave;nh gh&eacute; tham quan ch&ugrave;a Vĩnh Tr&agrave;ng với lối kiến tr&uacute;c kết hợp Ch&acirc;u &Acirc;u v&agrave; Ch&acirc;u &Aacute;.</li>\r\n	<li>Đo&agrave;n xuống bến đ&ograve; 30/04, Qu&yacute; kh&aacute;ch xuống thuyền thưởng ngoạn cảnh s&ocirc;ng nước miền T&acirc;y Nam Bộ với 4 c&ugrave; lao: Long, L&acirc;n , Quy, Phụng, thưởng thức hương vị ngọt ng&agrave;o của tr&aacute;i dừa xi&ecirc;m.</li>\r\n	<li>Thuyền đưa đo&agrave;n đi tham quan c&ugrave; lao Thới Sơn, đi bộ tr&ecirc;n đường l&agrave;ng, tham quan trại nu&ocirc;i ong mật, uống tr&agrave; mật ong, thưởng thức c&aacute;c loại mứt đặc sản. Tham quan vườn c&acirc;y ăn tr&aacute;i, thưởng thức c&aacute;c loại tr&aacute;i c&acirc;y tại vườn, nghe nhạc t&agrave;i tử Nam Bộ. Đi xuồng ch&egrave;o trong rạch dừa nước thi&ecirc;n nhi&ecirc;n.</li>\r\n	<li>Thuyền lớn đưa kh&aacute;ch sang Bến Tre tham quan l&ograve; kẹo dừa nổi tiếng Bến Tre.</li>\r\n	<li>Tham quan Cồn Phụng ( Di t&iacute;ch &Ocirc;ng Đạo Dừa).</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa&nbsp;&nbsp; &nbsp;D&ugrave;ng cơm trưa.&nbsp;&nbsp; &nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Thuyền đưa du kh&aacute;ch trở lại Bến T&agrave;u 30/4, khởi h&agrave;nh đi Cần Thơ.</li>\r\n	<li>Chiều &nbsp;D&ugrave;ng cơm chiều.</li>\r\n	<li>Nghỉ đ&ecirc;m kh&aacute;ch sạn tại Cần Thơ.</li>\r\n</ul>\r\n\r\n<p><strong>NG&Agrave;Y 2 |&nbsp;CHỢ NỔI C&Aacute;I RĂNG &ndash; THIỀN VIỆN TR&Uacute;C L&Acirc;M &ndash; TP. HCM (Ăn s&aacute;ng, trưa)&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>S&aacute;ng&nbsp;&nbsp; &nbsp;Du kh&aacute;ch đến bến Ninh Kiều: Thuyền đưa du kh&aacute;ch tham quan chợ nổi C&aacute;i Răng với cảnh nhộn nhịp bu&ocirc;n b&aacute;n tr&ecirc;n s&ocirc;ng, một n&eacute;t văn h&oacute;a rất đặc sắc ở v&ugrave;ng đồng bằng s&ocirc;ng nước Cửu Long.</p>\r\n\r\n<ul>\r\n	<li>Về lại kh&aacute;ch sạn, d&ugrave;ng bữa s&aacute;ng.&nbsp;</li>\r\n	<li>Viếng thăm Thiền Viện Tr&uacute;c L&acirc;m Phương Nam được xem l&agrave; một trong những c&ocirc;ng tr&igrave;nh nghệ thuật độc đ&aacute;o của đất T&acirc;y Đ&ocirc; - ng&ocirc;i ch&ugrave;a rộng nhất khu vực Đồng bằng s&ocirc;ng Cửu Long, được x&acirc;y dựng tr&ecirc;n diện t&iacute;ch gần 4 ha, với kết cấu lợp ng&oacute;i, khung cột gỗ lim, ch&aacute;nh điện rộng c&ugrave;ng nh&agrave; tổ, nhiều tượng Phật được l&agrave;m bằng gỗ Du Sam.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa&nbsp;&nbsp; &nbsp;D&ugrave;ng cơm trưa.</strong></p>\r\n\r\n<ul>\r\n	<li>Khởi h&agrave;nh về TP.HCM tr&ecirc;n dừng ch&acirc;n tham quan cầu treo Mỹ Thuận, tiếp tục lộ tr&igrave;nh về đến TP.HCM</li>\r\n	<li>Kết th&uacute;c h&agrave;nh tr&igrave;nh tour. Ch&agrave;o tạm biệt v&agrave; hẹn gặp lại.</li>\r\n</ul>', '<p><em>Du lịch H&egrave;&nbsp;<strong>&nbsp;-&nbsp;<a href=\"http://dulichviet.com.vn/du-lich-mien-tay\">Du lịch Miền T&acirc;y</a></strong>&nbsp;- Xu&ocirc;i theo d&ograve;ng nước du kh&aacute;ch đến với chợ nổi C&aacute;i Răng để chứng kiến điều k&igrave; lạ, chợ m&agrave; nổi được tr&ecirc;n s&ocirc;ng? Du kh&aacute;ch đi chợ nổi C&aacute;i Răng tr&ecirc;n s&ocirc;ng Cần Thơ kh&ocirc;ng chỉ để ngắm nh&igrave;n những ghe thuyền đầy ắp hoa quả, h&agrave;ng h&oacute;a m&agrave; c&ograve;n để thưởng thức hương vị t&ocirc; hủ tiếu hay t&ocirc; b&uacute;n cua thơm ngon giữa d&ograve;ng nước m&ecirc;nh m&ocirc;ng. B&ecirc;n cạnh tham quan c&aacute;c Chợ nổi, du kh&aacute;ch c&ograve;n được&nbsp;viếng thăm Thiền Viện Tr&uacute;c L&acirc;m Phương Nam, Thiền Viện được xem l&agrave; một trong những c&ocirc;ng tr&igrave;nh nghệ thuật độc đ&aacute;o của đất T&acirc;y Đ&ocirc; - ng&ocirc;i ch&ugrave;a rộng nhất khu vực Đồng bằng s&ocirc;ng Cửu Long, được x&acirc;y dựng tr&ecirc;n diện t&iacute;ch gần 4 ha, với kết cấu lợp ng&oacute;i, khung cột gỗ lim, ch&aacute;nh điện rộng c&ugrave;ng nh&agrave; tổ, nhiều tượng Phật được l&agrave;m bằng gỗ Du Sam.&nbsp;</em></p>', NULL, '2022-08-04__844c3c62aff747ce7576240c8e1638f7.jpg', 4, 1, 1, 0, 1, '2021-11-13 04:33:03', '2022-08-04 18:00:10'),
(9, 'Biển Phan Thiết', 'Khám phá các địa điểm ở Phan Thiết', '3 ngày 2 đêm', 'Xe du lịch', 'TPHCM', '2021-11-16', '2021-11-18', 40, 500000, 450000, 5, 0, '<p>Ng&agrave;y 1:&nbsp;</p>\r\n\r\n<p>Ng&agrave;y 2:</p>', '<p><a href=\"https://dulichviet.com.vn/du-lich-phan-thiet\"><strong>Du lịch Phan Thiết</strong></a>&nbsp;-&nbsp;Th&agrave;nh phố biển Phan Thiết kh&ocirc;ng chỉ nổi tiếng với những b&atilde;i biển xanh biếc,&nbsp;những h&agrave;ng dừa cao v&uacute;t, m&agrave; nơi đ&acirc;y c&ograve;n thu h&uacute;t du kh&aacute;ch với những danh thắng như:&nbsp;<em>Lầu &Ocirc;ng Ho&agrave;ng, th&aacute;p Ch&agrave;m P&ocirc;shanư, b&atilde;i đ&aacute; &Ocirc;ng Địa, rạn dừa H&agrave;m Tiến</em>... Đến với&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-phan-thiet\"><strong>tour Phan Thiết</strong></a>, du kh&aacute;ch sẽ c&oacute; dịp chi&ecirc;u ngưỡn n&eacute;t đẹp hoang sơ từ phong cảnh đến những b&atilde;i biển chưa được kh&aacute;m ph&aacute;, được thưởng thức những m&oacute;n ăn đậm chất miền biển,... V&agrave; tất cả những điểm đến hấp dẫn đ&oacute; đều c&oacute; trong h&agrave;nh tr&igrave;nh<strong>&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-phan-thiet\">tour&nbsp;du lịch Phan Thiết</a></strong>&nbsp;m&agrave;&nbsp;<a href=\"https://dulichviet.com.vn/\"><strong>Du Lịch Việt</strong></a>&nbsp;đang mở b&aacute;n trực tuyến v&agrave;o c&aacute;c ng&agrave;y trong tuần.</p>\r\n\r\n<p><strong>TAG</strong>:&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-phan-thiet\">Du lịch Phan Thiết</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-phan-thiet\">Du lịch H&egrave; Phan Thiết</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-phan-thiet\">Du lịch Phan Thiết H&egrave; 2022</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-phan-thiet\">Tour Phan Thiết</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-phan-thiet\">Tour H&egrave; Phan Thiết</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-phan-thiet\">Tour Phan Thiết H&egrave; 2022</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-phan-thiet\">Tour Du Lịch Phan Thiết</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-phan-thiet\">tour du lịch h&egrave; Phan Thiết</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-phan-thiet\">Tour Du lịch Phan Thiết h&egrave; 2022</a></p>', NULL, '2022-08-04__844c3c62aff747ce7576240c8e1638f7.jpg', 3, 1, 0, 0, 1, '2021-11-15 06:34:52', '2022-08-04 17:59:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `avatar`, `address`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '0343754517', NULL, '$2y$10$pXiF9Y65kXEAaEgvM84RauX3gR0V60a7Bscin3haG32tzTRemAtYa', '', NULL, 1, '2Lw6zcnp3iKH2LfqWqRk6ItkDKzbZ1YZoJNGF4iQSjViK7hBiOrkDZjXfYQw', '2021-07-03 13:35:20', '2021-11-13 03:39:48'),
(7, 'Nguyễn Quốc Khánh', 'user@gmail.com', '0343754517', NULL, '$2y$10$pomukFgu5BES/g5urp4O1eQ2pLquzb13jlXFBZ1jfOI/MC4OSdR2q', NULL, 'Phú Thanh,Tân Phú,Đồng Nai', 1, 'jl3rswsoAKuAdBoZPwqkekN2jl9bfR5etemxxTHlRUFNI5Wa0VRvwQ0cq5Qa', '2022-08-04 12:54:44', '2022-08-04 12:54:44');

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_a_category_id_foreign` FOREIGN KEY (`a_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_a_user_id_foreign` FOREIGN KEY (`a_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `book_tours`
--
ALTER TABLE `book_tours`
  ADD CONSTRAINT `book_tours_b_tour_id_foreign` FOREIGN KEY (`b_tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_tours_b_user_id_foreign` FOREIGN KEY (`b_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_c_user_id_foreign` FOREIGN KEY (`c_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_cm_article_id_foreign` FOREIGN KEY (`cm_article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_cm_hotel_id_foreign` FOREIGN KEY (`cm_hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_cm_tour_id_foreign` FOREIGN KEY (`cm_tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_cm_user_id_foreign` FOREIGN KEY (`cm_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_c_user_id_foreign` FOREIGN KEY (`c_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `hotels_h_location_id_foreign` FOREIGN KEY (`h_location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hotels_h_user_id_foreign` FOREIGN KEY (`h_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_l_user_id_foreign` FOREIGN KEY (`l_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_group_permission_id_foreign` FOREIGN KEY (`group_permission_id`) REFERENCES `group_permission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tours`
--
ALTER TABLE `tours`
  ADD CONSTRAINT `tours_t_location_id_foreign` FOREIGN KEY (`t_location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tours_t_user_id_foreign` FOREIGN KEY (`t_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
