-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 19, 2022 lúc 11:22 PM
-- Phiên bản máy phục vụ: 5.7.38-cll-lve
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vdnphhob_cnttmnm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2021_12_16_151552_create_admins_table', 1),
(6, '2021_12_17_102452_create_tbl_category_product', 2),
(7, '2021_12_18_082239_create_tbl_brand', 3),
(8, '2021_12_18_134003_create_tbl_product', 4),
(9, '2021_12_22_055552_bl_customer', 5),
(10, '2021_12_22_073317_tbl_shopping', 6),
(14, '2021_12_22_135438_tbl_payment', 7),
(15, '2021_12_22_135544_tbl_order', 7),
(16, '2021_12_22_135711_tbl_order_details', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(4, 'admin123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0856509084', '2022-06-10 10:14:03', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(8, 'Apple', '<p>Apple&quot;</p>', 1, NULL, NULL),
(9, 'SamSung', 'SamSung', 0, '2021-12-20 17:00:00', NULL),
(10, 'ViVo', 'ViVo', 1, '2021-12-20 17:00:00', NULL),
(11, 'Asus', '<p>asus</p>', 1, '2021-12-25 17:00:00', NULL),
(12, 'HP', '<p>HP</p>', 1, '2021-12-25 17:00:00', NULL),
(13, 'MSI', '<p>MSI</p>', 1, '2021-12-25 17:00:00', NULL),
(14, 'DELL', '<p>DELL</p>', 1, '2021-12-25 17:00:00', NULL),
(15, 'LENOVO', '<p>LENOVO</p>', 1, '2021-12-25 17:00:00', NULL),
(16, 'Microsoft', '<p>Microsoft</p>', 1, '2021-12-25 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `category_image`, `created_at`, `updated_at`) VALUES
(22, 'Apple', '<p>Danh mục Apple</p>\r\n\r\n<p>&nbsp;</p>', 1, 'hinh-nen-dep-cho-iphone-1937.jpg', '2021-12-25 17:00:00', NULL),
(23, 'Điện Thoại', '<p>Điện thạoi</p>', 1, 'imager_1_37869_70078.jpg', '2021-12-25 17:00:00', NULL),
(24, 'Laptop', '<p>Laptop</p>', 1, '0711_34203_mm95.jpg', '2021-12-25 17:00:00', NULL),
(25, 'PC-Linh Kiệnpc', '<p>PC-Linh Kiệnpc</p>', 1, '57737_nzxt_h510i_modding_watercooling__6_95.jpg', '2021-12-25 17:00:00', NULL),
(26, 'Phụ Kiện', '<p>Phụ Kiện</p>', 1, 'nut-ban-pubg-mobile-auto-tap-terminator-th2-0398.jpg', '2021-12-26 17:00:00', NULL),
(27, 'Hàng Gia Dụng', '<p>H&agrave;ng Gia Dụng</p>', 1, 'nhap-hang-gia-dung-trung-quoc-129.jpg', '2021-12-26 17:00:00', NULL),
(29, 'Phụ Kiệnok', '<p>scscsc</p>', 0, NULL, '2022-09-19 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_coupon`
--

CREATE TABLE `tbl_coupon` (
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `coupon_name` varchar(150) NOT NULL,
  `coupon_time` int(50) NOT NULL,
  `coupon_condition` int(11) NOT NULL,
  `coupon_number` varchar(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_coupon`
--

INSERT INTO `tbl_coupon` (`coupon_id`, `coupon_name`, `coupon_time`, `coupon_condition`, `coupon_number`, `coupon_code`) VALUES
(1, 'Giảm Giá 22/12', 10, 1, '10', '2212DHSHOP'),
(2, 'Covid', 10, 2, '100000', 'CVHDSHOP'),
(4, 'af', 5, 1, '10%', 'vâdsavda');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(1, 'Nhật Anh', 'admin@gmail.com', '123456', '123456', NULL, NULL),
(2, 'Lê Nhật Anh', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '123456', NULL, NULL),
(3, 'nguyễn tân', 'tan@gmail.com', '123456', '0856509084', NULL, NULL),
(4, 'nguyễn hà', 'admin5@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '123456', NULL, NULL),
(5, 'nguyễn Hậu', 'nguyenconghau9084@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0856509084', NULL, NULL),
(6, 'nguyễn Hậu', 'admin5@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0856509084', NULL, NULL),
(7, 'nguyễn Hậu', 'nguyenconghau90844@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0856509084', NULL, NULL),
(8, '<script>alert(\"ahihi\")</script>', 't@gmail.com', 'bc8e298bf1ee62e6b5457e871c3aa977', '<script>alert(\"ahihi\")</script>', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_status` int(50) NOT NULL,
  `order_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `order_status`, `order_code`, `created_at`, `updated_at`) VALUES
(77, 8, 85, 1, '73954', '2022-09-14 09:04:41', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_code`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(48, '73954', 23, 'iPhone 13 mini 128GB', '30000000', 1, NULL, NULL),
(49, '73954', 39, 'Màn hình MSI Modern MD241PW', '5500000', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(100) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` int(50) NOT NULL,
  `product_sold` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_quantity`, `product_sold`, `category_id`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_images`, `product_status`, `created_at`, `updated_at`) VALUES
(23, 'iPhone 13 mini 128GB', 97, 3, 22, 8, '<p><strong>iPhone 13 mini l&agrave; chiếc điện thoại d&agrave;nh cho những ai y&ecirc;u th&iacute;ch sự nhỏ gọn. Với một kiểu d&aacute;ng dễ thương, nằm gọn trong b&agrave;n tay hay t&uacute;i quần của bạn, iPhone 13 mini c&ograve;n g&acirc;y bất ngờ hơn nữa với sức mạnh đ&aacute;ng kinh ngạc, m&agrave;n h&igrave;nh OLED si&ecirc;u n&eacute;t v&agrave; camera nhiếp ảnh chuy&ecirc;n nghiệp.</strong></p>', 'iPhone 13 mini là chiếc điện thoại dành cho những ai yêu thích sự nhỏ gọn. Với một kiểu dáng dễ thương, nằm gọn trong bàn tay hay túi quần của bạn, iPhone 13 mini còn gây bất ngờ hơn nữa với sức mạnh đáng kinh ngạc, màn hình OLED siêu nét và camera nhiếp ảnh chuyên nghiệp.', '30000000', 'iphone-13-mini-192.jpg', 1, '2022-09-09 17:00:00', NULL),
(24, 'iPhone 13 Pro Max 128GB', 48, 2, 22, 8, '<p><strong>iPhone 13 Pro Max&nbsp;xứng đ&aacute;ng l&agrave; một&nbsp;chiếc iPhone lớn nhất, mạnh mẽ nhất v&agrave; c&oacute; thời lượng pin d&agrave;i nhất từ trước đến nay sẽ cho bạn trải nghiệm tuyệt vời, từ những t&aacute;c vụ b&igrave;nh thường cho đến c&aacute;c ứng dụng chuy&ecirc;n nghiệp.</strong></p>', 'iPhone 13 Pro Max xứng đáng là một chiếc iPhone lớn nhất, mạnh mẽ nhất và có thời lượng pin dài nhất từ trước đến nay sẽ cho bạn trải nghiệm tuyệt vời, từ những tác vụ bình thường cho đến các ứng dụng chuyên nghiệp.', '32000000', 'iphone-13-mini-193.jpg', 1, '2022-09-09 17:00:00', NULL),
(27, 'iPhone 14 | 14 Pro Max', 100, NULL, 22, 8, '<h3><strong>iPhone 14 m&agrave;u T&iacute;m c&oacute; những phi&ecirc;n bản n&agrave;o?</strong></h3>\r\n\r\n<p>Nếu bạn đang thắc mắc iPhone 14 m&agrave;u T&iacute;m bao gồm những phi&ecirc;n bản n&agrave;o, tin vui cho bạn l&agrave; phi&ecirc;n bản m&agrave;u T&iacute;m sẽ hiện diện tr&ecirc;n tất cả c&aacute;c model thuộc iPhone 14 series, từ mẫu iPhone 14 ti&ecirc;u chuẩn 128GB gi&aacute; rẻ nhất cho tới bản iPhone 14 Pro Max 1TB đắt gi&aacute; nhất đều c&oacute; bản m&agrave;u T&iacute;m cho bạn lựa chọn.</p>', 'Màu Tím trên iPhone 14 khác so với những phiên bản trước?\r\nThực tế, đây không phải là thế hệ điện thoại đầu tiên được Apple trang bị tùy chọn màu tím. Trước đó màu sắc này từng xuất hiện lần lượt trên iPhone 11 và iPhone 12. Tuy nhiên, vẻ đẹp của iPhone 14 màu Tím khác biệt rất nhiều so với các thế hệ cũ.', '50000000', 'iphone1464.png', 1, '2022-09-09 17:00:00', NULL),
(28, 'iPhone 13 mini 128GB', 100, NULL, 22, 8, '<p><strong>iPhone 13 mini l&agrave; chiếc điện thoại d&agrave;nh cho những ai y&ecirc;u th&iacute;ch sự nhỏ gọn. Với một kiểu d&aacute;ng dễ thương, nằm gọn trong b&agrave;n tay hay t&uacute;i quần của bạn, iPhone 13 mini c&ograve;n g&acirc;y bất ngờ hơn nữa với sức mạnh đ&aacute;ng kinh ngạc, m&agrave;n h&igrave;nh OLED si&ecirc;u n&eacute;t v&agrave; camera nhiếp ảnh chuy&ecirc;n nghiệp.</strong></p>', 'iPhone 13 mini là chiếc điện thoại dành cho những ai yêu thích sự nhỏ gọn. Với một kiểu dáng dễ thương, nằm gọn trong bàn tay hay túi quần của bạn, iPhone 13 mini còn gây bất ngờ hơn nữa với sức mạnh đáng kinh ngạc, màn hình OLED siêu nét và camera nhiếp ảnh chuyên nghiệp.', '23000000', '637864958686782895_iphone-13-mini-hong-193.jpg', 1, '2022-09-09 17:00:00', NULL),
(29, 'Microsoft Surface Laptop', 20, NULL, 24, 16, '<p><strong>Nếu bạn đang t&igrave;m kiếm một chiếc&nbsp;<a href=\"https://fptshop.com.vn/may-tinh-xach-tay/van-phong\">laptop văn ph&ograve;ng</a>&nbsp;nhỏ gọn, mỏng, nhẹ, sang chảnh v&agrave; xịn x&ograve; nhưng mức gi&aacute; lại dễ tiếp cận th&igrave; Microsoft Surface Laptop Go l&agrave; một trong những lựa chọn tốt nhất m&agrave; bạn kh&ocirc;ng thể bỏ qua.</strong></p>', 'Nếu bạn đang tìm kiếm một chiếc laptop văn phòng nhỏ gọn, mỏng, nhẹ, sang chảnh và xịn xò nhưng mức giá lại dễ tiếp cận thì Microsoft Surface Laptop Go là một trong những lựa chọn tốt nhất mà bạn không thể bỏ qua.', '19000000', '637694136421759222_microsoft-surface-go-bac-131.jpg', 1, '2022-09-09 17:00:00', NULL),
(30, 'Laptop Microsoft Surface Pro 7', 50, NULL, 24, 16, '<p><strong>Surface Pro 7 Core i5&nbsp;sẽ mang đến cho bạn một phong c&aacute;ch sử dụng m&aacute;y t&iacute;nh ho&agrave;n to&agrave;n kh&aacute;c, khi bạn c&oacute; thể biến chiếc m&aacute;y t&iacute;nh bảng di động th&agrave;nh một chiếc laptop mạnh mẽ chỉ trong chớp mắt.</strong></p>', 'Surface Pro 7 Core i5 sẽ mang đến cho bạn một phong cách sử dụng máy tính hoàn toàn khác, khi bạn có thể biến chiếc máy tính bảng di động thành một chiếc laptop mạnh mẽ chỉ trong chớp mắt.', '26500000', '637460487066019148_microsoft-surface-pro-7-1035g4-den-390.png', 1, '2022-09-09 17:00:00', NULL),
(31, 'Laptop Microsoft Surface Pro 8', 20, NULL, 24, 16, '<p><strong>Surface Pro 8 thể hiện sự s&aacute;ng tạo tuyệt vời trong ng&agrave;nh c&ocirc;ng nghiệp laptop. Đến từ &ldquo;g&atilde; khổng lồ&rdquo; c&ocirc;ng nghệ Microsoft, Surface Pro 8 cho bạn sử dụng linh hoạt theo nhiều c&aacute;ch kh&aacute;c nhau, đồng thời sở hữu sức mạnh đẳng cấp &ldquo;Pro&rdquo; v&agrave; khả năng tương th&iacute;ch phần mềm ho&agrave;n hảo.</strong></p>', 'Surface Pro 8 thể hiện sự sáng tạo tuyệt vời trong ngành công nghiệp laptop. Đến từ “gã khổng lồ” công nghệ Microsoft, Surface Pro 8 cho bạn sử dụng linh hoạt theo nhiều cách khác nhau, đồng thời sở hữu sức mạnh đẳng cấp “Pro” và khả năng tương thích phần mềm hoàn hảo.', '30000000', '637937465434451471_microsoft-surface-pro-8-dd-no-type-cover38.jpg', 1, '2022-09-09 17:00:00', NULL),
(32, 'Laptop Asus Zenbook UX325EA-KG656W', 20, NULL, 24, 11, '<p><strong>Sở hữu&nbsp;<a href=\"https://fptshop.com.vn/may-tinh-xach-tay/asus-zenbook-ux325ea-kg656w-i5-1135g7\">ASUS ZenBook UX325EA-KG656W</a>&nbsp;đồng nghĩa với việc bạn sẽ được trải nghiệm những tinh hoa h&agrave;ng đầu của ng&agrave;nh c&ocirc;ng nghiệp laptop. Từ thiết kế đẹp tựa kiệt t&aacute;c đến m&agrave;n h&igrave;nh OLED đầy kh&aacute;c biệt, ZenBook 13 OLED mang đến c&aacute;i nh&igrave;n ho&agrave;n to&agrave;n mới cho một chiếc laptop hiện đại.</strong></p>', 'Sở hữu ASUS ZenBook UX325EA-KG656W đồng nghĩa với việc bạn sẽ được trải nghiệm những tinh hoa hàng đầu của ngành công nghiệp laptop. Từ thiết kế đẹp tựa kiệt tác đến màn hình OLED đầy khác biệt, ZenBook 13 OLED mang đến cái nhìn hoàn toàn mới cho một chiếc laptop hiện đại.', '19000000', '637635861841001721_asus-zenbook-ux325-xam-27.jpg', 1, '2022-09-09 17:00:00', NULL),
(33, 'Laptop Asus TUF Gaming', 100, NULL, 24, 11, '<p><strong>Asus TUF Gaming A15 FA506IHRB-HN019W l&agrave; chiếc laptop chơi game đỉnh m&agrave; học tập v&agrave; l&agrave;m việc cũng rất tốt nhờ cấu h&igrave;nh kh&ocirc;ng thể ch&ecirc; trong tầm gi&aacute;. Một chiếc laptop gaming được b&aacute;n với mức gi&aacute; văn ph&ograve;ng chắc chắn sẽ rất hấp dẫn, đặc biệt l&agrave; trong mắt c&aacute;c bạn học sinh, sinh vi&ecirc;n.</strong></p>', 'Asus TUF Gaming A15 FA506IHRB-HN019W là chiếc laptop chơi game đỉnh mà học tập và làm việc cũng rất tốt nhờ cấu hình không thể chê trong tầm giá. Một chiếc laptop gaming được bán với mức giá văn phòng chắc chắn sẽ rất hấp dẫn, đặc biệt là trong mắt các bạn học sinh, sinh viên.', '15590000', '637950740524582194_asus-tuf-gaming-fa506ihr-den-230.jpg', 1, '2022-09-09 17:00:00', NULL),
(34, 'Samsung Galaxy S22 5G 128GB', 100, NULL, 23, 9, '<p><strong>Samsung Galaxy S22 l&agrave; bước nhảy vọt trong c&ocirc;ng nghệ video tr&ecirc;n thế hệ di động. Đồng thời,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;cũng mở ra loạt cải tiến đột ph&aacute; h&agrave;ng đầu hiện nay từ m&agrave;n h&igrave;nh v&aacute;t phẳng &ldquo;nịnh&rdquo; mắt đến&nbsp;bộ xử l&yacute; 4nm ti&ecirc;n tiến đầu ti&ecirc;n tr&ecirc;n thế hệ smartphone&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/samsung\">Samsun</a><a href=\"https://fptshop.com.vn/dien-thoai/samsung\">g</a>.</strong></p>', 'Samsung Galaxy S22 là bước nhảy vọt trong công nghệ video trên thế hệ di động. Đồng thời, điện thoại cũng mở ra loạt cải tiến đột phá hàng đầu hiện nay từ màn hình vát phẳng “nịnh” mắt đến bộ xử lý 4nm tiên tiến đầu tiên trên thế hệ smartphone Samsung.', '15000000', '637800490165751486_samsung-galaxy-s22-xanh-160.jpg', 1, '2022-09-09 17:00:00', NULL),
(35, 'Samsung Galaxy S22 Bora Purple', 400, NULL, 23, 9, '<p><strong>Bật n&eacute;t ki&ecirc;u kỳ, sẵn s&agrave;ng trendy với phi&ecirc;n bản&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-s22-bora-purple\">Samsung Galaxy S22 m&agrave;u t&iacute;m</a>&nbsp;(Bora Purple),</strong><strong>&nbsp;bạn sẽ trở n&ecirc;n thật thời thượng, ấn tượng v&agrave; c&aacute; t&iacute;nh. Đồng h&agrave;nh đ&oacute; l&agrave; những c&ocirc;ng nghệ tốt nhất của Samsung từ hiệu năng Snapdragon 8 Gen 1, m&agrave;n h&igrave;nh cao cấp cho đến hệ thống camera chuy&ecirc;n nghiệp.</strong></p>', 'Bật nét kiêu kỳ, sẵn sàng trendy với phiên bản Samsung Galaxy S22 màu tím (Bora Purple), bạn sẽ trở nên thật thời thượng, ấn tượng và cá tính. Đồng hành đó là những công nghệ tốt nhất của Samsung từ hiệu năng Snapdragon 8 Gen 1, màn hình cao cấp cho đến hệ thống camera chuyên nghiệp.', '13000000', '637941779749182644_samsung-galaxy-s22-bora-purple-447.jpg', 1, '2022-09-09 17:00:00', NULL),
(36, 'Vivo Y02s 3GB-32GB', 100, NULL, 23, 10, '<p><strong>D&ugrave; l&agrave; sản phẩm gi&aacute; rẻ,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/vivo-y02s\">vivo Y02s</a>&nbsp;vẫn thể hiện sự to&agrave;n diện khi vừa chỉn chu trong thiết kế, vừa sở hữu cấu h&igrave;nh ổn định cũng như thời lượng sử dụng l&acirc;u d&agrave;i. Chiếc smartphone n&agrave;y ch&iacute;nh l&agrave; lựa chọn ho&agrave;n hảo cho người d&ugrave;ng phổ th&ocirc;ng nhờ những g&igrave; n&oacute; mang lại l&agrave; v&ocirc; c&ugrave;ng ấn tượng.&nbsp;</strong></p>', 'Dù là sản phẩm giá rẻ, vivo Y02s vẫn thể hiện sự toàn diện khi vừa chỉn chu trong thiết kế, vừa sở hữu cấu hình ổn định cũng như thời lượng sử dụng lâu dài. Chiếc smartphone này chính là lựa chọn hoàn hảo cho người dùng phổ thông nhờ những gì nó mang lại là vô cùng ấn tượng.', '3400000', '637940794898480222_vivo-y02s-3gb-32gb-xanh-12.jpg', 1, '2022-09-09 17:00:00', NULL),
(37, 'Vivo Y21s 4GB+1GB - 128GB', 100, NULL, 23, 10, '<p><strong>Thiết kế mỏng thời thượng, 3 camera sau si&ecirc;u n&eacute;t độ ph&acirc;n giải l&ecirc;n tới 50MP, mạnh mẽ với c&ocirc;ng nghệ RAM mở rộng c&ugrave;ng dung lượng pin cực khủng,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/vivo-y21s\">vivo Y21s</a>&nbsp;sẵn s&agrave;ng c&ugrave;ng bạn ch&aacute;y hết m&igrave;nh trong mọi cuộc vui.</strong></p>', 'Thiết kế mỏng thời thượng, 3 camera sau siêu nét độ phân giải lên tới 50MP, mạnh mẽ với công nghệ RAM mở rộng cùng dung lượng pin cực khủng, vivo Y21s sẵn sàng cùng bạn cháy hết mình trong mọi cuộc vui.', '4129000', '637672551768952051_vivo-y21s-trang-442.jpg', 1, '2022-09-09 17:00:00', NULL),
(38, 'Màn hình Dell UltraSharp U2422H', 20, NULL, 25, 14, '<p><strong>Qu&aacute; tr&igrave;nh l&agrave;m việc của bạn sẽ được hỗ trợ chuy&ecirc;n nghiệp hơn với sự hỗ trợ của m&agrave;n h&igrave;nh Dell UltraSharp U2422H. Sản phẩm đem đến loạt c&ocirc;ng nghệ hiển thị h&igrave;nh ảnh cao cấp nhất v&agrave; cực kỳ th&iacute;ch hợp với những ai l&agrave;m c&ocirc;ng việc li&ecirc;n</strong><img alt=\"Màn hình Dell UltraSharp U2422H (Ảnh 1)\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/HaoPA/asus/Mo-ta-san-pham-man-hinh-dell-ultrasharp-u2422h-6.jpg\" /><strong> quan đến đồ họa, thiết kế.</strong></p>', 'Quá trình làm việc của bạn sẽ được hỗ trợ chuyên nghiệp hơn với sự hỗ trợ của màn hình Dell UltraSharp U2422H. Sản phẩm đem đến loạt công nghệ hiển thị hình ảnh cao cấp nhất và cực kỳ thích hợp với những ai làm công việc liên quan đến đồ họa, thiết kế.', '6000000', '637971116238685259_man-hinh-dell-ultrasharp-u2422h-trang-128.jpg', 1, '2022-09-09 17:00:00', NULL),
(39, 'Màn hình MSI Modern MD241PW', 20, NULL, 25, 13, '<h2>Đ&aacute;nh gi&aacute; chi tiết&nbsp;M&agrave;n h&igrave;nh MSI Modern MD241PW / 24&quot; inchs / FullHD (1920 x 1080) 75Hz</h2>\r\n\r\n<p><strong>Với m&agrave;n h&igrave;nh MSI Modern MD241, bạn c&oacute; thể mở ra trải nghiệm sống tự do ph&oacute;ng kho&aacute;ng qua g&oacute;c nh&igrave;n rộng r&atilde;i với&nbsp;<a href=\"https://fptshop.com.vn/man-hinh/khoang-24-inch\">m&agrave;n h&igrave;nh 24 inch</a>. Thoải m&aacute;i tận hưởng những nội dung giải tr&iacute; m&igrave;nh y&ecirc;u th&iacute;ch, l&agrave;m điều m&igrave;nh muốn, ghi lại những &yacute; tưởng s&aacute;ng tạo chợt l&oacute;e v&agrave; thao t&aacute;c chuy&ecirc;n nghiệp hơn bất cứ ai. Độ ph&acirc;n giải cao kết hợp</strong></p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/9a794383-1ad5-4c8b-9f4f-92753065dfce\" width=\"960\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p><strong>c&ugrave;ng tần số qu&eacute;t 75Hz tạo n&ecirc;n sự kh&aacute;c biệt lớn cho Modern MD241.</strong></p>', 'Đánh giá chi tiết Màn hình MSI Modern MD241PW / 24\" inchs / FullHD (1920 x 1080) 75Hz\r\nVới màn hình MSI Modern MD241, bạn có thể mở ra trải nghiệm sống tự do phóng khoáng qua góc nhìn rộng rãi với màn hình 24 inch. Thoải mái tận hưởng những nội dung giải trí mình yêu thích, làm điều mình muốn, ghi lại những ý tưởng sáng tạo chợt lóe và thao tác chuyên nghiệp hơn bất cứ ai. Độ phân giải cao kết hợp cùng tần số quét 75Hz tạo nên sự khác biệt lớn cho Modern MD241.', '5500000', '637788138246353099_man-hinh-msi-modern-md241pw-trang-17.jpg', 1, '2022-09-09 17:00:00', NULL),
(40, 'Màn hình LCD HP P204v', 50, NULL, 25, 12, '<h2>Đ&aacute;nh gi&aacute; chi tiết&nbsp;M&agrave;n h&igrave;nh LCD HP P204v/19.5 inch/HD+ (1600x900)/60Hz</h2>\r\n\r\n<p><strong><a href=\"https://fptshop.com.vn/man-hinh/man-hinh-vi-tinh-hp-p204v-19-5-inch\">HP P204v</a>&nbsp;l&agrave; m&agrave;n h&igrave;nh với k&iacute;ch thước nhỏ gọn 19,5 inch, ph&ugrave; hợp cho c&ocirc;ng việc văn ph&ograve;ng, giải tr&iacute; nhẹ nh&agrave;ng với chất lượng hiển thị sắc n&eacute;t, hỗ trợ cả kết nối HDMI v&agrave; VGA.</strong></p>\r\n\r\n<p><strong><img alt=\"HP P204v (Ảnh 1)\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/hp-p204v-1.jpg\" /></strong></p>', 'Hiển thị rõ nét cho mọi nội dung\r\nBạn có thể làm việc với văn bản, tài liệu, trang tính, duyệt web cả ngày trên màn hình HP P204v nhờ độ phân giải sắc nét 1600 x 900 pixels, phù hợp cho kích thước nhỏ 19,5 inch. Hình ảnh đầy đủ chi tiết giúp công việc trở nên thuận tiện hơn. Ngoài ra, màu sắc màn hình HP cũng tương đối chân thực để bạn giải trí nhẹ nhàng bằng các hoạt động như xem phim, video trực tuyến.', '3000000', '637681176033032431_man-hinh-vi-tinh-hp-p204v-19-5-inch-187.jpg', 1, '2022-09-09 17:00:00', NULL),
(41, 'Màn hình HP OMEN 27i', 50, NULL, 25, 12, '<h2>Đ&aacute;nh gi&aacute; chi tiết&nbsp;M&agrave;n h&igrave;nh HP OMEN 27i/27 inchs/2K (2560x1440) 165Hz</h2>\r\n\r\n<p><strong>Lựa chọn đỉnh cao d&agrave;nh cho những ai kiếm t&igrave;m trải nghiệm chuy&ecirc;n nghiệp,&nbsp;<a href=\"https://fptshop.com.vn/man-hinh/man-hinh-hp-omen-27i-27-inchs\">m&agrave;n h&igrave;nh HP OMEN 27i</a>&nbsp;ghi nhận độ ph&acirc;n giải QHD với khả năng t&aacute;i tạo m&agrave;u DCI-P3, c&oacute; k&iacute;ch cỡ lớn v&agrave; thiết kế đặc biệt chuy&ecirc;n nghiệp. Sản phẩm được t&iacute;ch hợp h&agrave;ng loạt cổng kết nối đa dạng, ghi nhận tần số qu&eacute;t l&ecirc;n tới 165Hz.</strong></p>\r\n\r\n<p><img alt=\"HP OMEN 27i (Ảnh 1)\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/Qualcomm%20ra%20mat%20Snapdragon%20820/man-hinh-hp-omen-27i-1.JPG\" /></p>', 'HP OMEN 27i sử dụng tấm nền Nano-IPS với kích thước 27 inch rộng rãi. Lợi thế vượt trội về công nghệ giúp sản phẩm dễ dàng đem lại những khuôn hình sắc sảo, rõ nét nhờ độ phân giải đạt ngưỡng 2K (2.560 x 1.440 pixels). Với năng lực tái tạo màu DCI-P3 98%, màn hình HP có khả năng đáp ứng tốt cả nhu cầu làm việc cũng như chơi game chuyên nghiệp.', '10000000', '637800003657400678_man-hinh-hp-omen-27i-27-inchs-den-15.jpg', 1, '2022-09-09 17:00:00', NULL),
(42, 'Màn hình vi tính DELL PRO', 20, NULL, 25, 14, '<h2>Đ&aacute;nh gi&aacute; chi tiết&nbsp;M&agrave;n h&igrave;nh vi t&iacute;nh DELL PRO P2319H 23 inch</h2>\r\n\r\n<p><strong>C&ugrave;ng tối ưu kh&ocirc;ng gian l&agrave;m việc của bạn với&nbsp;<a href=\"https://fptshop.com.vn/man-hinh/man-hinh-vi-tinh-dell-pro-p2319h-23-inch\">Dell Pro P2319H</a>. Kh&ocirc;ng chỉ mang tới trải nghiệm h&igrave;nh ảnh sắc sảo, sản phẩm c&ograve;n gi&uacute;p bạn gia tăng độ chuy&ecirc;n nghiệp nhờ phong c&aacute;ch thiết kế tinh xảo v&agrave; trang nh&atilde;. Tấm nền IPS Full HD cho g&oacute;c tr&ocirc;ng ảnh rộng, m&agrave;u sắc rực rỡ l&agrave; điểm nhấn quan trọng của chiếc m&agrave;n h&igrave;nh n&agrave;y.</strong></p>\r\n\r\n<p><img alt=\"Dell PRO P2319H (Ảnh 1)\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/Philips/man-hinh-dell-pro-p2319h-23-inch-1.jpg\" /></p>', 'Sự ấn tượng của viền màn hình siêu mỏng\r\nKhông cần tới những đường nét cầu kỳ, Dell Pro P2319H dễ dàng ghi điểm về phong cách và diện mạo nhờ tối giản mọi chi tiết trong thiết kế. Từ chân đế bên dưới cho tới màn hình bên trên, tất cả đều đem lại cảm quan hài hòa, giản đơn mà vẫn đẹp mắt, tinh tế.\r\n\r\nSự thành công trong việc rút gọn cấu trúc viền bao quanh giúp trả lại không gian hiển thị mãn nhãn không giới hạn cho người dùng, đồng thời giúp bạn dễ dàng quan sát khi đặt hai chiếc màn hình cạnh nhau để mở rộng tầm nhìn.', '4700000', '637685329036942414_man-hinh-vi-tinh-dell-pro-p2319h-den-13.jpg', 1, '2022-09-09 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_note`, `shipping_method`, `created_at`, `updated_at`) VALUES
(82, 'Nhật Anh', '43-45 NGUYỄN CHÍ THANH Q5' , '0369046596', 'nhatanh.010100@gmail.com', 'dsdvsv', 1, NULL, NULL),
(83, 'Lê Nhật Anh', '22 ĐƯỜNG 40 HIỆP BÌNH CHÁNH', '0856509084', 'nhatanh.1403@gmail.com', 'adad', 0, NULL, NULL),
(84, 'nguyễn Hậu', '22 ĐƯỜNG 40 HIỆP BÌNH CHÁNH', '0856509084', 'nguyenconghau123@gmail.com', 'sfdv', 1, NULL, NULL),
(85, '<script>alert(\"ahihi\")</script>', '<script>alert(\"ahihi\")</script>', '<script>alert(\"ahihi\")</script>', '<script>alert(\"ahihi\")</script>', '<script>alert(\"ahihi\")</script>', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_statistical`
--

CREATE TABLE `tbl_statistical` (
  `id_statistical` int(11) NOT NULL,
  `order_date` varchar(100) NOT NULL,
  `sales` varchar(200) NOT NULL,
  `profit` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_statistical`
--

INSERT INTO `tbl_statistical` (`id_statistical`, `order_date`, `sales`, `profit`, `quantity`, `total_order`) VALUES
(1, '2020-11-08', '20000000', '7000000', 90, 10),
(2, '2020-11-07', '68000000', '9000000', 60, 8),
(3, '2020-11-06', '30000000', '3000000', 45, 7),
(4, '2020-11-05', '45000000', '3800000', 30, 9),
(5, '2020-11-04', '30000000', '1500000', 15, 12),
(6, '2020-11-03', '8000000', '700000', 65, 30),
(7, '2020-11-02', '28000000', '23000000', 32, 20),
(8, '2020-11-01', '25000000', '20000000', 7, 6),
(9, '2020-10-31', '36000000', '28000000', 40, 15),
(10, '2020-10-30', '50000000', '13000000', 89, 19),
(11, '2020-10-29', '20000000', '15000000', 63, 11),
(12, '2020-10-28', '25000000', '16000000', 94, 14),
(13, '2020-10-27', '32000000', '17000000', 16, 10),
(14, '2020-10-26', '33000000', '19000000', 14, 5),
(15, '2020-10-25', '36000000', '18000000', 22, 12),
(16, '2020-10-24', '34000000', '20000000', 33, 20),
(17, '2020-10-23', '25000000', '16000000', 94, 14),
(18, '2020-10-22', '12000000', '7000000', 16, 10),
(19, '2020-10-21', '63000000', '19000000', 14, 5),
(20, '2020-10-20', '66000000', '18000000', 22, 12),
(21, '2020-10-19', '74000000', '20000000', 33, 20),
(22, '2020-10-18', '63000000', '19000000', 14, 5),
(23, '2020-10-17', '66000000', '18000000', 23, 12),
(24, '2020-10-16', '74000000', '20000000', 32, 20),
(25, '2020-10-15', '63000000', '19000000', 14, 5),
(26, '2020-10-14', '66000000', '18000000', 23, 12),
(27, '2020-10-13', '74000000', '20000000', 33, 20),
(28, '2020-10-12', '66000000', '18000000', 23, 12),
(29, '2020-10-11', '74000000', '20000000', 10, 20),
(30, '2020-10-10', '63000000', '19000000', 14, 5),
(31, '2020-10-09', '66000000', '18000000', 23, 12),
(32, '2020-10-08', '74000000', '20000000', 15, 20),
(33, '2020-10-07', '66000000', '18000000', 23, 12),
(34, '2020-10-06', '74000000', '20000000', 30, 22),
(35, '2020-10-05', '66000000', '18000000', 23, 12),
(36, '2020-10-04', '74000000', '20000000', 32, 20),
(37, '2020-10-03', '63000000', '19000000', 14, 5),
(38, '2020-10-02', '66000000', '18000000', 23, 12),
(39, '2020-10-01', '74000000', '20000000', 32, 20),
(40, '2020-09-30', '63000000', '19000000', 14, 5),
(41, '2020-09-29', '66000000', '18000000', 23, 12),
(42, '2020-09-28', '74000000', '20000000', 15, 20),
(43, '2020-09-27', '66000000', '18000000', 23, 12),
(44, '2020-09-26', '74000000', '20000000', 30, 22),
(45, '2020-09-25', '66000000', '18000000', 23, 12),
(46, '2020-09-24', '74000000', '20000000', 32, 20),
(47, '2020-09-23', '63000000', '19000000', 14, 5),
(48, '2020-09-22', '66000000', '18000000', 23, 12),
(49, '2020-09-21', '74000000', '20000000', 32, 20),
(50, '2020-09-20', '63000000', '19000000', 14, 5),
(51, '2020-09-19', '66000000', '18000000', 23, 12),
(52, '2020-09-18', '74000000', '20000000', 15, 20),
(53, '2020-09-17', '66000000', '18000000', 23, 12),
(54, '2020-09-16', '74000000', '20000000', 30, 22),
(55, '2020-09-15', '66000000', '18000000', 23, 12),
(56, '2020-09-14', '74000000', '20000000', 32, 20),
(57, '2020-09-13', '63000000', '19000000', 14, 5),
(58, '2020-09-12', '66000000', '18000000', 23, 12),
(59, '2020-09-11', '74000000', '20000000', 32, 20),
(60, '2020-09-10', '63000000', '19000000', 14, 5),
(61, '2020-09-09', '66000000', '18000000', 23, 12),
(62, '2020-09-08', '74000000', '20000000', 15, 20),
(63, '2020-09-07', '66000000', '18000000', 23, 12),
(64, '2020-09-06', '74000000', '20000000', 30, 22),
(65, '2020-09-05', '66000000', '18000000', 23, 12),
(66, '2020-09-04', '74000000', '20000000', 32, 20),
(67, '2020-09-03', '63000000', '19000000', 14, 5),
(68, '2020-09-02', '66000000', '18000000', 23, 12),
(69, '2020-09-01', '74000000', '20000000', 32, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

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
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `tbl_statistical`
--
ALTER TABLE `tbl_statistical`
  ADD PRIMARY KEY (`id_statistical`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT cho bảng `tbl_statistical`
--
ALTER TABLE `tbl_statistical`
  MODIFY `id_statistical` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
