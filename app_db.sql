-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: db
-- Thời gian đã tạo: Th8 11, 2024 lúc 11:58 AM
-- Phiên bản máy phục vụ: 10.5.8-MariaDB-1:10.5.8+maria~focal
-- Phiên bản PHP: 8.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `app_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `deposit_detail`
--

CREATE TABLE `deposit_detail` (
  `id` int(11) NOT NULL,
  `deposit_id` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `deposit_detail`
--

INSERT INTO `deposit_detail` (`id`, `deposit_id`, `total_money`, `method`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 100, 'Credit Card', 'Success', '2024-07-21 08:15:59', '2024-07-21 08:15:59'),
(2, 2, 200, 'PayPal', 'Success', '2024-07-21 08:15:59', '2024-07-21 08:15:59');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `specialgroup_id` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `link_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  `point` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `movie`
--

INSERT INTO `movie` (`id`, `category_id`, `specialgroup_id`, `title`, `description`, `link_id`, `created_at`, `updated_at`, `rank`, `point`) VALUES
(1, 1, 1, 'nữ hoàng nước mắt', '215720', 1, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 2, 807),
(2, 1, 1, 'Nữ luật sư kỳ lạ', '197067', 2, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 10, 182),
(3, 1, 1, 'Lấy danh nghĩa người nhà', '107329', 3, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 1, 822),
(4, 1, 1, 'Hoàn hồn ALCHEMY OF SOULS', '135157', 4, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 5, 644),
(5, 1, 1, 'Đời sống ngục tù', '74821', 5, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 7, 584),
(6, 1, 1, 'Mùa hè yêu dấu của chúng ta', '135897', 6, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 6, 585),
(7, 1, 1, 'Yêu tinh', '67915', 7, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 4, 765),
(8, 1, 1, 'Vinh quang trong thù hận', '136283', 8, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 9, 292),
(9, 1, 1, 'Khi anh chạy về phía em', '228547', 9, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 8, 435),
(10, 1, 1, 'Trường tương tư', '210524', 10, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 3, 801),
(11, 1, 1, 'Trường tương tư', '210524', 11, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(12, 1, 1, 'Đi đến nơi có gió', '216424', 12, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(13, 1, 1, 'Chiếc bật lửa và váy công chúa', '134331', 13, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(14, 1, 1, 'Minh lan truyện', '81502', 14, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(15, 1, 1, 'Chệch quỹ đạo', '237918', 15, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(16, 1, 1, 'Trường nguyệt tẫn minh', '137206', 16, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(17, 1, 1, 'Em đẹp nhất là khi mỉm cười', '95486', 17, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(18, 1, 1, 'Yêu em từ cái nhìn đầu tiên', '66776', 18, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(19, 1, 1, 'An lạc truyện', '134679', 19, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(20, 1, 1, 'Thương lan quyết', '130368', 20, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(21, 1, 1, 'Trường ca hành', '122182', 21, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(22, 1, 1, 'Go go squid', '82817', 22, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(23, 1, 1, 'Manh thê thực thần', '79574', 23, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(24, 1, 1, 'Put your head on my shoulder', '88548', 24, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(25, 1, 1, 'Tôi đã gặp được vị cứu tinh', '216405', 25, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(26, 1, 1, 'Tình đầu ngây ngô', '95100', 26, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(27, 1, 1, 'Thả thí thiên hạ', '127323', 27, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(28, 1, 1, 'Cuộc sống lý trí', '122206', 28, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(29, 1, 1, 'Lưỡng bất nghi', '121870', 29, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(30, 1, 1, 'Tại sao boss muốn cưới tôi?', '86605', 30, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(31, 1, 1, 'Trạm kế tiêp là hạnh phúc', '98830', 31, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(32, 1, 1, 'Tam sinh tam thế thập lý đào hoa', '69316', 32, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(33, 1, 1, 'Ngự giao ký', '136973', 33, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(34, 1, 1, 'Vường sao băng', '16420', 34, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(35, 1, 1, 'Gửi thời thanh xuân ngây thơ tươi đẹp', '75387', 35, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(36, 1, 1, 'Ngọc cốt dao', '130270', 36, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(37, 1, 1, 'Câu chuyện cảm động nhất', '87299', 37, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(38, 1, 1, 'Cẩm tú vị ương', '68358', 38, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(39, 1, 1, 'Thiên quan tứ phúc', '112398', 39, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(40, 1, 1, 'Vào giờ phút này', '218177', 40, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(41, 1, 1, 'Công chúa hội tam hoàng', '96049', 41, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(42, 1, 1, 'Thầm yêu quất sinh hoài nam', '104982', 42, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(43, 1, 1, 'Sexy central', '91491', 43, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(44, 1, 1, 'Mẹ đừng làm vậy', '135726', 44, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(45, 1, 1, 'Cực phẩm xứng đôi', '70580', 45, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(46, 1, 1, 'Chỉ cần em hạnh phúc', '124578', 46, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(47, 1, 1, 'Tình yêu đến sau ba ngày', '130839', 47, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(48, 1, 1, 'Ông chú của tôi', '76662', 48, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(49, 1, 1, 'Cuộc chiến thượng lưu', '99489', 49, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(50, 1, 1, 'Sweet home thế giới ma quái', '96648', 50, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(51, 1, 1, 'Yêu tinh', '67915', 51, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(52, 1, 1, 'Lời hồi đáp 1988', '64010', 52, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(53, 1, 1, 'Điên thì có sao', '96462', 53, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(54, 1, 1, 'Nghệ thuật săn quỷ và nấu mì', '113268', 54, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(55, 1, 1, 'Chàng trai cuồng sạch sẽ thân yêu của tôi', '125255', 55, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(56, 1, 1, 'Diên hi công lược', '96997', 56, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(57, 1, 1, 'Truy bắt lính đào ngũ', '110534', 57, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(58, 1, 1, 'Luyến mộ', '129478', 58, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(59, 1, 1, 'Khóa học yêu cấp tốc', '202318', 59, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(60, 1, 1, 'Tuổi hai lăm tuổi hai mốt', '129888', 60, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(61, 1, 1, 'Tầng lớp itaewon', '96162', 61, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(62, 1, 1, 'Trò chơi con mực', '93405', 62, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(63, 1, 1, 'Hậu duệ mặt trời', '82665', 63, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(64, 1, 1, 'Lâu đài tham vọng', '84327', 64, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(65, 1, 1, 'Thế giới hôn nhân', '96164', 65, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(66, 1, 1, 'Dưới bóng trung điện', '156406', 66, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(67, 1, 1, 'Quý ngài ánh dương', '75820', 67, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(68, 1, 1, 'Khu rừng bí mật', '97565', 68, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(69, 1, 1, 'Người thầy y đức', '68398', 69, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(70, 1, 1, 'Vì sao đưa anh tới', '60957', 70, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(71, 1, 1, 'Khi hoa trà nở', '93097', 71, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(72, 1, 1, 'Quý cô ưu tú', '71497', 72, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(73, 1, 1, 'Tòa án vị thành niên', '112833', 73, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(74, 1, 1, 'Con của bạn không phải là con của bạn', '80759', 74, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(75, 1, 1, 'Mơ hồ', '76715', 75, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(76, 1, 1, 'Mặt trăng ôm mặt trời', '45579', 76, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(77, 1, 1, 'Bác sĩ nhân ái', '57647', 77, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(78, 1, 1, 'Thanh tra Koo', '129475', 78, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(79, 1, 1, 'Tội nhân vô định', '94384', 79, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(80, 1, 1, 'Thánh ma túy', '97970', 80, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(81, 1, 1, 'Sát nhân bắt chước', '158876', 81, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(82, 1, 1, 'Hoa của quỷ', '99494', 82, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(83, 1, 1, 'Đội bóng chày Dreams', '95484', 83, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(84, 1, 1, 'Hướng tới thiên đường', '96571', 84, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(85, 1, 1, 'Hoa đăng sơ thượng', '130330', 85, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(86, 1, 1, 'Gió đông năm ấy', '47091', 86, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(87, 1, 1, 'Đôi mắt rực rỡ', '86546', 87, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(88, 1, 1, 'Mashle', '204832', 88, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(89, 1, 1, 'Pháp sư tiễn táng', '209867', 89, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(90, 1, 1, 'Hậu cung chân hoàn chuyện', '50878', 90, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(91, 1, 1, 'Chệch quỹ đạo', '237918', 91, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(92, 1, 1, 'One piece', '111110', 92, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(93, 1, 1, 'The kings avatar', '71194', 93, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(94, 1, 1, 'Sơn hà lệnh', '119362', 94, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(95, 1, 1, 'Tỉnh mộng', '73021', 95, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(96, 1, 1, 'Thơ săn quái vật', '71912', 96, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(97, 1, 1, 'Sweet tooth cậu bé gạc nai', '103768', 97, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(98, 1, 1, 'Arcane', '94605', 98, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(99, 1, 1, 'Huyển thoại vikings: Valhalla', '116135', 99, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(100, 1, 1, 'Shadow and bone', '85720', 100, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100),
(101, 1, 1, 'Biệt đội titans', '75450', 101, '2024-07-21 08:15:59', '2024-07-21 08:15:59', 11, 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movieCategory`
--

CREATE TABLE `movieCategory` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `movieCategory`
--

INSERT INTO `movieCategory` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Comedy'),
(3, 'Drama');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie_link`
--

CREATE TABLE `movie_link` (
  `id` int(11) NOT NULL,
  `episode_status` int(11) DEFAULT NULL,
  `poster_link` varchar(255) DEFAULT NULL,
  `movie_link` varchar(255) DEFAULT NULL,
  `rank_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `movie_link`
--

INSERT INTO `movie_link` (`id`, `episode_status`, `poster_link`, `movie_link`, `rank_link`) VALUES
(1, 1, 'datasources/filmphoto_[body]/filmphoto_[body]_1.png', 'https://www.youtube.com/watch?v=nvdSbuizTUA&pp=ygUgZ2nhu69hIGPGoW4gYsOjbyB0dXnhur90IHRyYWlsZXI%3D', 'datasources/imageranking/img1.jpg'),
(2, 2, 'datasources/filmphoto_[body]/filmphoto_[body]_2.png', 'https://www.youtube.com/watch?v=9SdYFYflVbw&pp=ygUlbuG7ryBsdeG6rXQgc8awIHdvbyB5b3VuZyB3b28gdHJhaWxlcg%3D%3D', 'datasources/imageranking/img2.jpg'),
(3, 3, 'datasources/filmphoto_[body]/filmphoto_[body]_3.png', 'movie_link_3', 'datasources/imageranking/img3.jpg'),
(4, 4, 'datasources/filmphoto_[body]/filmphoto_[body]_4.png', 'movie_link_4', 'datasources/imageranking/img4.jpg'),
(5, 5, 'datasources/filmphoto_[body]/filmphoto_[body]_5.png', 'movie_link_5', 'datasources/imageranking/img5.jpg'),
(6, 6, 'datasources/filmphoto_[body]/filmphoto_[body]_6.png', 'movie_link_6', 'datasources/imageranking/img6.jpg'),
(7, 7, 'datasources/filmphoto_[body]/filmphoto_[body]_7.png', 'movie_link_7', 'datasources/imageranking/img7.jpg'),
(8, 8, 'datasources/filmphoto_[body]/filmphoto_[body]_8.png', 'movie_link_8', 'datasources/imageranking/img8.jpg'),
(9, 9, 'datasources/filmphoto_[body]/filmphoto_[body]_9.png', 'movie_link_9', 'datasources/imageranking/img9.jpg'),
(10, 10, 'datasources/filmphoto_[body]/filmphoto_[body]_10.png', 'movie_link_10', 'datasources/imageranking/img10.jpg'),
(11, 11, 'datasources/filmphoto_[body]/filmphoto_[body]_11.png', 'movie_link_11', 'datasources/imageranking/img11.jpg'),
(12, 12, 'datasources/filmphoto_[body]/filmphoto_[body]_12.png', 'movie_link_12', 'datasources/imageranking/img12.jpg'),
(13, 13, 'datasources/filmphoto_[body]/filmphoto_[body]_13.png', 'movie_link_13', 'datasources/imageranking/img13.jpg'),
(14, 14, 'datasources/filmphoto_[body]/filmphoto_[body]_14.png', 'movie_link_14', 'datasources/imageranking/img14.jpg'),
(15, 15, 'datasources/filmphoto_[body]/filmphoto_[body]_15.png', 'movie_link_15', 'datasources/imageranking/img15.jpg'),
(16, 16, 'datasources/filmphoto_[body]/filmphoto_[body]_16.png', 'movie_link_16', 'datasources/imageranking/img16.jpg'),
(17, 17, 'datasources/filmphoto_[body]/filmphoto_[body]_17.png', 'movie_link_17', 'datasources/imageranking/img17.jpg'),
(18, 18, 'datasources/filmphoto_[body]/filmphoto_[body]_18.png', 'movie_link_18', 'datasources/imageranking/img18.jpg'),
(19, 19, 'datasources/filmphoto_[body]/filmphoto_[body]_19.png', 'movie_link_19', 'datasources/imageranking/img19.jpg'),
(20, 20, 'datasources/filmphoto_[body]/filmphoto_[body]_20.png', 'movie_link_20', 'datasources/imageranking/img20.jpg'),
(21, 21, 'datasources/filmphoto_[body]/filmphoto_[body]_21.png', 'movie_link_21', 'datasources/imageranking/img21.jpg'),
(22, 22, 'datasources/filmphoto_[body]/filmphoto_[body]_22.png', 'movie_link_22', 'datasources/imageranking/img22.jpg'),
(23, 23, 'datasources/filmphoto_[body]/filmphoto_[body]_23.png', 'movie_link_23', 'datasources/imageranking/img23.jpg'),
(24, 24, 'datasources/filmphoto_[body]/filmphoto_[body]_24.png', 'movie_link_24', 'datasources/imageranking/img24.jpg'),
(25, 25, 'datasources/filmphoto_[body]/filmphoto_[body]_25.png', 'movie_link_25', 'datasources/imageranking/img25.jpg'),
(26, 26, 'datasources/filmphoto_[body]/filmphoto_[body]_26.png', 'movie_link_26', 'datasources/imageranking/img26.jpg'),
(27, 27, 'datasources/filmphoto_[body]/filmphoto_[body]_27.png', 'movie_link_27', 'datasources/imageranking/img27.jpg'),
(28, 28, 'datasources/filmphoto_[body]/filmphoto_[body]_28.png', 'movie_link_28', 'datasources/imageranking/img28.jpg'),
(29, 29, 'datasources/filmphoto_[body]/filmphoto_[body]_29.png', 'movie_link_29', 'datasources/imageranking/img29.jpg'),
(30, 30, 'datasources/filmphoto_[body]/filmphoto_[body]_30.png', 'movie_link_30', 'datasources/imageranking/img30.jpg'),
(31, 31, 'datasources/filmphoto_[body]/filmphoto_[body]_31.png', 'movie_link_31', 'datasources/imageranking/img31.jpg'),
(32, 32, 'datasources/filmphoto_[body]/filmphoto_[body]_32.png', 'movie_link_32', 'datasources/imageranking/img32.jpg'),
(33, 33, 'datasources/filmphoto_[body]/filmphoto_[body]_33.png', 'movie_link_33', 'datasources/imageranking/img33.jpg'),
(34, 34, 'datasources/filmphoto_[body]/filmphoto_[body]_34.png', 'movie_link_34', 'datasources/imageranking/img34.jpg'),
(35, 35, 'datasources/filmphoto_[body]/filmphoto_[body]_35.png', 'movie_link_35', 'datasources/imageranking/img35.jpg'),
(36, 36, 'datasources/filmphoto_[body]/filmphoto_[body]_36.png', 'movie_link_36', 'datasources/imageranking/img36.jpg'),
(37, 37, 'datasources/filmphoto_[body]/filmphoto_[body]_37.png', 'movie_link_37', 'datasources/imageranking/img37.jpg'),
(38, 38, 'datasources/filmphoto_[body]/filmphoto_[body]_38.png', 'movie_link_38', 'datasources/imageranking/img38.jpg'),
(39, 39, 'datasources/filmphoto_[body]/filmphoto_[body]_39.png', 'movie_link_39', 'datasources/imageranking/img39.jpg'),
(40, 40, 'datasources/filmphoto_[body]/filmphoto_[body]_40.png', 'movie_link_40', 'datasources/imageranking/img40.jpg'),
(41, 41, 'datasources/filmphoto_[body]/filmphoto_[body]_41.png', 'movie_link_41', 'datasources/imageranking/img41.jpg'),
(42, 42, 'datasources/filmphoto_[body]/filmphoto_[body]_42.png', 'movie_link_42', 'datasources/imageranking/img42.jpg'),
(43, 43, 'datasources/filmphoto_[body]/filmphoto_[body]_43.png', 'movie_link_43', 'datasources/imageranking/img43.jpg'),
(44, 44, 'datasources/filmphoto_[body]/filmphoto_[body]_44.png', 'movie_link_44', 'datasources/imageranking/img44.jpg'),
(45, 45, 'datasources/filmphoto_[body]/filmphoto_[body]_45.png', 'movie_link_45', 'datasources/imageranking/img45.jpg'),
(46, 46, 'datasources/filmphoto_[body]/filmphoto_[body]_46.png', 'movie_link_46', 'datasources/imageranking/img46.jpg'),
(47, 47, 'datasources/filmphoto_[body]/filmphoto_[body]_47.png', 'movie_link_47', 'datasources/imageranking/img47.jpg'),
(48, 48, 'datasources/filmphoto_[body]/filmphoto_[body]_48.png', 'movie_link_48', 'datasources/imageranking/img48.jpg'),
(49, 49, 'datasources/filmphoto_[body]/filmphoto_[body]_49.png', 'movie_link_49', 'datasources/imageranking/img49.jpg'),
(50, 50, 'datasources/filmphoto_[body]/filmphoto_[body]_50.png', 'movie_link_50', 'datasources/imageranking/img50.jpg'),
(51, 51, 'datasources/filmphoto_[body]/filmphoto_[body]_51.png', 'movie_link_51', 'datasources/imageranking/img51.jpg'),
(52, 52, 'datasources/filmphoto_[body]/filmphoto_[body]_52.png', 'movie_link_52', 'datasources/imageranking/img52.jpg'),
(53, 53, 'datasources/filmphoto_[body]/filmphoto_[body]_53.png', 'movie_link_53', 'datasources/imageranking/img53.jpg'),
(54, 54, 'datasources/filmphoto_[body]/filmphoto_[body]_54.png', 'movie_link_54', 'datasources/imageranking/img54.jpg'),
(55, 55, 'datasources/filmphoto_[body]/filmphoto_[body]_55.png', 'movie_link_55', 'datasources/imageranking/img55.jpg'),
(56, 56, 'datasources/filmphoto_[body]/filmphoto_[body]_56.png', 'movie_link_56', 'datasources/imageranking/img56.jpg'),
(57, 57, 'datasources/filmphoto_[body]/filmphoto_[body]_57.png', 'movie_link_57', 'datasources/imageranking/img57.jpg'),
(58, 58, 'datasources/filmphoto_[body]/filmphoto_[body]_58.png', 'movie_link_58', 'datasources/imageranking/img58.jpg'),
(59, 59, 'datasources/filmphoto_[body]/filmphoto_[body]_59.png', 'movie_link_59', 'datasources/imageranking/img59.jpg'),
(60, 60, 'datasources/filmphoto_[body]/filmphoto_[body]_60.png', 'movie_link_60', 'datasources/imageranking/img60.jpg'),
(61, 61, 'datasources/filmphoto_[body]/filmphoto_[body]_61.png', 'movie_link_61', 'datasources/imageranking/img61.jpg'),
(62, 62, 'datasources/filmphoto_[body]/filmphoto_[body]_62.png', 'movie_link_62', 'datasources/imageranking/img62.jpg'),
(63, 63, 'datasources/filmphoto_[body]/filmphoto_[body]_63.png', 'movie_link_63', 'datasources/imageranking/img63.jpg'),
(64, 64, 'datasources/filmphoto_[body]/filmphoto_[body]_64.png', 'movie_link_64', 'datasources/imageranking/img64.jpg'),
(65, 65, 'datasources/filmphoto_[body]/filmphoto_[body]_65.png', 'movie_link_65', 'datasources/imageranking/img65.jpg'),
(66, 66, 'datasources/filmphoto_[body]/filmphoto_[body]_66.png', 'movie_link_66', 'datasources/imageranking/img66.jpg'),
(67, 67, 'datasources/filmphoto_[body]/filmphoto_[body]_67.png', 'movie_link_67', 'datasources/imageranking/img67.jpg'),
(68, 68, 'datasources/filmphoto_[body]/filmphoto_[body]_68.png', 'movie_link_68', 'datasources/imageranking/img68.jpg'),
(69, 69, 'datasources/filmphoto_[body]/filmphoto_[body]_69.png', 'movie_link_69', 'datasources/imageranking/img69.jpg'),
(70, 70, 'datasources/filmphoto_[body]/filmphoto_[body]_70.png', 'movie_link_70', 'datasources/imageranking/img70.jpg'),
(71, 71, 'datasources/filmphoto_[body]/filmphoto_[body]_71.png', 'movie_link_71', 'datasources/imageranking/img71.jpg'),
(72, 72, 'datasources/filmphoto_[body]/filmphoto_[body]_72.png', 'movie_link_72', 'datasources/imageranking/img72.jpg'),
(73, 73, 'datasources/filmphoto_[body]/filmphoto_[body]_73.png', 'movie_link_73', 'datasources/imageranking/img73.jpg'),
(74, 74, 'datasources/filmphoto_[body]/filmphoto_[body]_74.png', 'movie_link_74', 'datasources/imageranking/img74.jpg'),
(75, 75, 'datasources/filmphoto_[body]/filmphoto_[body]_75.png', 'movie_link_75', 'datasources/imageranking/img75.jpg'),
(76, 76, 'datasources/filmphoto_[body]/filmphoto_[body]_76.png', 'movie_link_76', 'datasources/imageranking/img76.jpg'),
(77, 77, 'datasources/filmphoto_[body]/filmphoto_[body]_77.png', 'movie_link_77', 'datasources/imageranking/img77.jpg'),
(78, 78, 'datasources/filmphoto_[body]/filmphoto_[body]_78.png', 'movie_link_78', 'datasources/imageranking/img78.jpg'),
(79, 79, 'datasources/filmphoto_[body]/filmphoto_[body]_79.png', 'movie_link_79', 'datasources/imageranking/img79.jpg'),
(80, 80, 'datasources/filmphoto_[body]/filmphoto_[body]_80.png', 'movie_link_80', 'datasources/imageranking/img80.jpg'),
(81, 81, 'datasources/filmphoto_[body]/filmphoto_[body]_81.png', 'movie_link_81', 'datasources/imageranking/img81.jpg'),
(82, 82, 'datasources/filmphoto_[body]/filmphoto_[body]_82.png', 'movie_link_82', 'datasources/imageranking/img82.jpg'),
(83, 83, 'datasources/filmphoto_[body]/filmphoto_[body]_83.png', 'movie_link_83', 'datasources/imageranking/img83.jpg'),
(84, 84, 'datasources/filmphoto_[body]/filmphoto_[body]_84.png', 'movie_link_84', 'datasources/imageranking/img84.jpg'),
(85, 85, 'datasources/filmphoto_[body]/filmphoto_[body]_85.png', 'movie_link_85', 'datasources/imageranking/img85.jpg'),
(86, 86, 'datasources/filmphoto_[body]/filmphoto_[body]_86.png', 'movie_link_86', 'datasources/imageranking/img86.jpg'),
(87, 87, 'datasources/filmphoto_[body]/filmphoto_[body]_87.png', 'movie_link_87', 'datasources/imageranking/img87.jpg'),
(88, 88, 'datasources/filmphoto_[body]/filmphoto_[body]_88.png', 'movie_link_88', 'datasources/imageranking/img88.jpg'),
(89, 89, 'datasources/filmphoto_[body]/filmphoto_[body]_89.png', 'movie_link_89', 'datasources/imageranking/img89.jpg'),
(90, 90, 'datasources/filmphoto_[body]/filmphoto_[body]_90.png', 'movie_link_90', 'datasources/imageranking/img90.jpg'),
(91, 91, 'datasources/filmphoto_[body]/filmphoto_[body]_91.png', 'movie_link_91', 'datasources/imageranking/img91.jpg'),
(92, 92, 'datasources/filmphoto_[body]/filmphoto_[body]_92.png', 'movie_link_92', 'datasources/imageranking/img92.jpg'),
(93, 93, 'datasources/filmphoto_[body]/filmphoto_[body]_93.png', 'movie_link_93', 'datasources/imageranking/img93.jpg'),
(94, 94, 'datasources/filmphoto_[body]/filmphoto_[body]_94.png', 'movie_link_94', 'datasources/imageranking/img94.jpg'),
(95, 95, 'datasources/filmphoto_[body]/filmphoto_[body]_95.png', 'movie_link_95', 'datasources/imageranking/img95.jpg'),
(96, 96, 'datasources/filmphoto_[body]/filmphoto_[body]_96.png', 'movie_link_96', 'datasources/imageranking/img96.jpg'),
(97, 97, 'datasources/filmphoto_[body]/filmphoto_[body]_97.png', 'movie_link_97', 'datasources/imageranking/img97.jpg'),
(98, 98, 'datasources/filmphoto_[body]/filmphoto_[body]_98.png', 'movie_link_98', 'datasources/imageranking/img98.jpg'),
(99, 99, 'datasources/filmphoto_[body]/filmphoto_[body]_99.png', 'movie_link_99', 'datasources/imageranking/img99.jpg'),
(100, 100, 'datasources/filmphoto_[body]/filmphoto_[body]_100.png', 'movie_link_100', 'datasources/imageranking/img100.jpg'),
(101, 101, 'datasources/filmphoto_[body]/filmphoto_[body]_101.png', 'movie_link_101', 'datasources/imageranking/img100.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlist_detail`
--

CREATE TABLE `playlist_detail` (
  `id` int(11) NOT NULL,
  `user_playlist_id` int(11) DEFAULT NULL,
  `episode_status` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `currentime` int(11) DEFAULT NULL,
  `currentepisode` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `playlist_detail`
--

INSERT INTO `playlist_detail` (`id`, `user_playlist_id`, `episode_status`, `status`, `currentime`, `currentepisode`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Watching', 120, 3, '2024-07-21 08:15:59', '2024-07-21 08:15:59'),
(2, 2, 2, 'Paused', 90, 2, '2024-07-21 08:15:59', '2024-07-21 08:15:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Lf1JZf3JbmPIyPMMwSUJdE6qpiXDrrLZCJlfiG2N', 4, '172.20.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZXdSR0JOdVBqUkJZN3l6dXgwQjhkYmJOVkxENFBSUGhHcmczbTRBUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODg4OC9pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7fQ==', 1723375260);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `specialgroup`
--

CREATE TABLE `specialgroup` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `specialgroup`
--

INSERT INTO `specialgroup` (`id`, `name`) VALUES
(1, 'New Releases'),
(2, 'Top Rated');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `avartar` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT 2,
  `plan_id` int(11) DEFAULT NULL,
  `deposit_id` int(11) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `birthday`, `email`, `phoneNumber`, `address`, `avartar`, `role_id`, `plan_id`, `deposit_id`, `discount_id`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', '1990-05-15', 'john.doe@example.com', '1234567890', '123 Main St, City, Country', 'avatar1.jpg', 1, 1, 1, NULL, '2024-07-21 08:15:59', '2024-07-21 08:15:59'),
(2, 'Jane Smith', '1985-08-25', 'jane.smith@example.com', '9876543210', '456 Elm St, Town, Country', 'avatar2.jpg', 2, 2, 2, NULL, '2024-07-21 08:15:59', '2024-07-21 08:15:59'),
(3, 'khoa', '2001-12-27', 'khoa1@gmail.com', NULL, NULL, NULL, 2, NULL, NULL, NULL, '2024-07-21 08:22:26', '2024-07-21 08:22:26'),
(4, 'nguyenkhoa', '2001-12-27', 'Khoaviper@gmail.com', NULL, NULL, NULL, 2, NULL, NULL, NULL, '2024-07-21 14:09:07', '2024-07-21 14:09:07'),
(5, 'viper', '2005-01-12', 'viper1@gmail.com', NULL, NULL, NULL, 2, NULL, NULL, NULL, '2024-07-25 06:06:59', '2024-07-25 06:06:59'),
(6, 'khoa', '2001-06-27', 'khoa1@gmail.com', NULL, NULL, NULL, 2, NULL, NULL, NULL, '2024-07-30 05:25:18', '2024-07-30 05:25:18'),
(7, 'kiet', '2001-11-11', 'kiet@gmail.com', NULL, NULL, NULL, 2, NULL, NULL, NULL, '2024-07-30 06:30:22', '2024-07-30 06:30:22'),
(8, 'khoa12', '2001-12-27', 'khoa12@gmail.com', NULL, NULL, NULL, 2, NULL, NULL, NULL, '2024-07-30 06:50:55', '2024-07-30 06:50:55');

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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'khoa', 'khoa@gmail.com', NULL, '$2y$12$K6a.vceB8NM52Oh6QGAAOey6x88/P3vyx34p9ClW/9Sp4fBxtFTXW', NULL, '2024-07-21 08:22:27', '2024-07-21 08:22:27'),
(2, 'nguyenkhoa', 'Khoaviper@gmail.com', NULL, '$2y$12$Du/Msy5bkyzARE9W7Z8TROPnEILcI3jokKdRH7yMvkqLZ2QyEMA6C', NULL, '2024-07-21 14:09:08', '2024-07-21 14:09:08'),
(3, 'viper', 'viper1@gmail.com', NULL, '$2y$12$xK4botSWmKaNR6fSsxK4mu5kX5TVSpxEVnAZ5IAHzSfPRGNPMvojm', NULL, '2024-07-25 06:07:00', '2024-07-25 06:07:00'),
(4, 'khoa', 'khoa1@gmail.com', NULL, '$2y$12$OWsEY/4T/vg9N6wR5sq6A.8uRbADlSIJAcvxuh94Y5WnWVC3OJ6lO', NULL, '2024-07-30 05:25:18', '2024-07-30 05:25:18'),
(5, 'kiet', 'kiet@gmail.com', NULL, '$2y$12$Vm1KlQG5SF/axGS0LntTzOZthGol0bltDqKzd5MfRVLirI6U4gGOa', NULL, '2024-07-30 06:30:23', '2024-07-30 06:30:23'),
(6, 'khoa12', 'khoa12@gmail.com', NULL, '$2y$12$oTu/i75eYC2dFWV2c1olqeEQT.xSGcZneHoL6oPTAMaCeOFFW0p/y', NULL, '2024-07-30 06:50:55', '2024-07-30 06:50:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `User_credential`
--

CREATE TABLE `User_credential` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `User_credential`
--

INSERT INTO `User_credential` (`id`, `user_id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, 'john.doe@example.com', 'password123', '2024-07-21 08:15:59', '2024-07-21 08:15:59'),
(2, 2, 'jane.smith@example.com', 'letmein', '2024-07-21 08:15:59', '2024-07-21 08:15:59'),
(3, NULL, 'khoa@gmail.com', '$2y$12$1aTtd4k4UQWdLpwGc3qIaODaULwNFyvMS7uCYFme4Gs89QKa13ljm', '2024-07-21 08:22:27', '2024-07-21 08:22:27'),
(4, NULL, 'Khoaviper@gmail.com', '$2y$12$UVnwfN2yk46GDJmZu2M67.nf3yPQfC9d5aZQCNA0M/Lf/eEPe7W5S', '2024-07-21 14:09:08', '2024-07-21 14:09:08'),
(5, NULL, 'viper1@gmail.com', '$2y$12$16MJnPtcy73tA.2zwCe4A.NmFUVN2TELUp2ZaFxsScLvp4iL173MO', '2024-07-25 06:07:00', '2024-07-25 06:07:00'),
(6, NULL, 'khoa1@gmail.com', '$2y$12$XlvNAJkXj8prXg0zhXqVTuBu/1tThoil5A1vB//cd.oUeJ4Fetm.K', '2024-07-30 05:25:18', '2024-07-30 05:25:18'),
(7, NULL, 'kiet@gmail.com', '$2y$12$Nb4pmnlVtJpfuGj98M5OnO3LHDT.Ce5pXAS5cjG8gx7AYIzLpflRy', '2024-07-30 06:30:23', '2024-07-30 06:30:23'),
(8, NULL, 'khoa12@gmail.com', '$2y$12$wNf3Zp9ZAY/wb5Km7NrBc.CCkPFQsRW3gD6y6n299zHJHyIfIKpWm', '2024-07-30 06:50:55', '2024-07-30 06:50:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_deposit`
--

CREATE TABLE `user_deposit` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL,
  `deposit_detail_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user_deposit`
--

INSERT INTO `user_deposit` (`id`, `user_id`, `total_money`, `deposit_detail_id`, `created_at`, `updated_at`) VALUES
(1, 1, 100, 1, '2024-07-21 08:15:59', '2024-07-21 08:15:59'),
(2, 2, 200, 2, '2024-07-21 08:15:59', '2024-07-21 08:15:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_plan`
--

CREATE TABLE `user_plan` (
  `id` int(11) NOT NULL,
  `plan_type` varchar(50) DEFAULT NULL,
  `planstart_at` datetime DEFAULT NULL,
  `planend_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user_plan`
--

INSERT INTO `user_plan` (`id`, `plan_type`, `planstart_at`, `planend_at`, `created_at`, `updated_at`) VALUES
(1, 'Basic', '2024-07-21 08:15:59', '2024-08-21 08:15:59', '2024-07-21 08:15:59', '2024-07-21 08:15:59'),
(2, 'Premium', '2024-07-21 08:15:59', '2025-07-21 08:15:59', '2024-07-21 08:15:59', '2024-07-21 08:15:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_playlist`
--

CREATE TABLE `user_playlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `playlist_detail_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user_playlist`
--

INSERT INTO `user_playlist` (`id`, `user_id`, `playlist_detail_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-07-21 08:15:59', '2024-07-21 08:15:59'),
(2, 2, 2, '2024-07-21 08:15:59', '2024-07-21 08:15:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user_role`
--

INSERT INTO `user_role` (`id`, `role_type`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2024-07-21 08:15:59', '2024-07-21 08:15:59'),
(2, 'user', '2024-07-21 08:15:59', '2024-07-21 08:15:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voucher`
--

CREATE TABLE `voucher` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `voucherstart_date` datetime DEFAULT NULL,
  `voucherend_date` datetime DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `discount_percentage` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `voucher`
--

INSERT INTO `voucher` (`id`, `name`, `voucherstart_date`, `voucherend_date`, `code`, `discount_percentage`, `status`) VALUES
(1, 'Spring Sale', '2024-07-21 08:15:59', '2024-08-21 08:15:59', 'SPRING2024', 20, 'Active'),
(2, 'Summer Discount', '2024-07-21 08:15:59', '2024-09-21 08:15:59', 'SUMMER2024', 15, 'Active');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `deposit_detail`
--
ALTER TABLE `deposit_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposit_id` (`deposit_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `specialgroup_id` (`specialgroup_id`),
  ADD KEY `link_id` (`link_id`);

--
-- Chỉ mục cho bảng `movieCategory`
--
ALTER TABLE `movieCategory`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movie_link`
--
ALTER TABLE `movie_link`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `playlist_detail`
--
ALTER TABLE `playlist_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `episode_status` (`episode_status`),
  ADD KEY `user_playlist_id` (`user_playlist_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `specialgroup`
--
ALTER TABLE `specialgroup`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `plan_id` (`plan_id`),
  ADD KEY `discount_id` (`discount_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `User_credential`
--
ALTER TABLE `User_credential`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `user_deposit`
--
ALTER TABLE `user_deposit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `user_plan`
--
ALTER TABLE `user_plan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_playlist`
--
ALTER TABLE `user_playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `deposit_detail`
--
ALTER TABLE `deposit_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT cho bảng `movieCategory`
--
ALTER TABLE `movieCategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `movie_link`
--
ALTER TABLE `movie_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT cho bảng `playlist_detail`
--
ALTER TABLE `playlist_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `specialgroup`
--
ALTER TABLE `specialgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `User_credential`
--
ALTER TABLE `User_credential`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `user_deposit`
--
ALTER TABLE `user_deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user_plan`
--
ALTER TABLE `user_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user_playlist`
--
ALTER TABLE `user_playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `deposit_detail`
--
ALTER TABLE `deposit_detail`
  ADD CONSTRAINT `deposit_detail_ibfk_1` FOREIGN KEY (`deposit_id`) REFERENCES `user_deposit` (`id`);

--
-- Các ràng buộc cho bảng `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `movieCategory` (`id`),
  ADD CONSTRAINT `movie_ibfk_2` FOREIGN KEY (`specialgroup_id`) REFERENCES `specialgroup` (`id`),
  ADD CONSTRAINT `movie_ibfk_3` FOREIGN KEY (`link_id`) REFERENCES `movie_link` (`id`);

--
-- Các ràng buộc cho bảng `playlist_detail`
--
ALTER TABLE `playlist_detail`
  ADD CONSTRAINT `playlist_detail_ibfk_1` FOREIGN KEY (`episode_status`) REFERENCES `movie` (`id`),
  ADD CONSTRAINT `playlist_detail_ibfk_2` FOREIGN KEY (`user_playlist_id`) REFERENCES `user_playlist` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`plan_id`) REFERENCES `user_plan` (`id`),
  ADD CONSTRAINT `user_ibfk_3` FOREIGN KEY (`discount_id`) REFERENCES `voucher` (`id`);

--
-- Các ràng buộc cho bảng `User_credential`
--
ALTER TABLE `User_credential`
  ADD CONSTRAINT `User_credential_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `user_deposit`
--
ALTER TABLE `user_deposit`
  ADD CONSTRAINT `user_deposit_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `user_playlist`
--
ALTER TABLE `user_playlist`
  ADD CONSTRAINT `user_playlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
