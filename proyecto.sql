-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2024 at 12:41 AM
-- Server version: 10.11.6-MariaDB-0+deb12u1
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyecto`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carritos`
--

CREATE TABLE `carritos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carritos`
--

INSERT INTO `carritos` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-12-07 05:18:16', '2024-12-07 05:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `carrito_productos`
--

CREATE TABLE `carrito_productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `carrito_id` bigint(20) UNSIGNED NOT NULL,
  `producto_id` bigint(20) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carrito_productos`
--

INSERT INTO `carrito_productos` (`id`, `carrito_id`, `producto_id`, `cantidad`, `created_at`, `updated_at`) VALUES
(1, 1, 27, 2, '2024-12-07 05:18:16', '2024-12-07 05:18:26'),
(2, 1, 24, 10, '2024-12-07 05:21:31', '2024-12-07 05:22:06'),
(3, 1, 32, 1, '2024-12-07 05:54:50', '2024-12-07 05:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_18_033009_create_permisos_table', 1),
(5, '2024_11_28_032610_create_productos_table', 1),
(6, '2024_11_28_032611_create_carritos_table', 1),
(7, '2024_11_28_032612_create_carrito_productos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permisos`
--

CREATE TABLE `permisos` (
  `id_permiso` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permisos`
--

INSERT INTO `permisos` (`id_permiso`, `type`, `created_at`, `updated_at`) VALUES
(2, 'Vendedor', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(1, 'Vendedor', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(3, 'Vendedor', '2024-12-07 04:57:36', '2024-12-07 04:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(8,2) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `deporte` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `image`, `descripcion`, `precio`, `categoria`, `deporte`, `created_at`, `updated_at`) VALUES
(1, 'accesorios_basquetbol_12', NULL, 'Voluptatem architecto et iure nisi voluptas natus in.', 123.85, 'accesorios', 'basquetbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(2, 'ropa_basquetbol_15', NULL, 'Est et eaque sunt eligendi rerum illo voluptas.', 604.17, 'ropa', 'basquetbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(3, 'accesorios_beisbol_1', NULL, 'Suscipit velit error ab voluptatem odio ut.', 793.62, 'accesorios', 'beisbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(4, 'ropa_basquetbol_16', NULL, 'Eius iusto ex voluptas sit.', 284.62, 'ropa', 'basquetbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(5, 'equipamiento_futbol_1', NULL, 'Non aut expedita ipsa velit.', 42.49, 'equipamiento', 'futbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(6, 'ropa_basquetbol_17', NULL, 'Tenetur quia quis culpa eos dolorem et.', 709.62, 'ropa', 'basquetbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(7, 'equipamiento_futbol_12', NULL, 'Cumque dicta quia qui voluptatem magnam consequatur corporis.', 620.65, 'equipamiento', 'basquetbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(8, 'equipamiento_beisbol_1', NULL, 'Suscipit dolor dolorem voluptas est exercitationem voluptatem rem nemo.', 258.31, 'equipamiento', 'beisbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(9, 'ropa_futbol_1', 'images/futbol/ropa/futbol1.jpg', 'Delectus aliquam ipsa alias libero accusantium aspernatur neque sit.', 484.13, 'ropa', 'futbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(10, 'equipamiento_futbol_13', NULL, 'Est distinctio eos quisquam quia.', 407.09, 'equipamiento', 'basquetbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(11, 'accesorios_futbol_1', NULL, 'Deleniti voluptatem excepturi facere qui doloremque omnis.', 407.39, 'accesorios', 'futbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(12, 'equipamiento_beisbol_2', NULL, 'Sed possimus cumque sunt reiciendis velit earum neque.', 879.99, 'equipamiento', 'beisbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(13, 'ropa_basquetbol_18', NULL, 'Beatae consequatur sed enim.', 814.36, 'ropa', 'basquetbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(14, 'accesorios_beisbol_2', NULL, 'Rerum molestiae qui quia et.', 734.99, 'accesorios', 'beisbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(15, 'accesorios_basquetbol_13', NULL, 'Sunt suscipit numquam asperiores nihil.', 135.78, 'accesorios', 'basquetbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(16, 'accesorios_futbol_2', NULL, 'Et voluptatem quo consequatur molestiae rerum veniam facilis.', 829.66, 'accesorios', 'futbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(17, 'accesorios_basquetbol_14', NULL, 'Perspiciatis harum dolores fuga exercitationem molestiae impedit voluptatem repellendus.', 114.09, 'accesorios', 'basquetbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(18, 'equipamiento_beisbol_3', NULL, 'Dolores id optio laboriosam omnis id unde.', 747.68, 'equipamiento', 'beisbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(19, 'accesorios_futbol_3', NULL, 'Et tempore qui voluptas.', 55.31, 'accesorios', 'futbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(20, 'equipamiento_futbol_2', NULL, 'Quod quo consequuntur et natus et consequatur libero iusto.', 390.98, 'equipamiento', 'futbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(21, 'ropa_basquetbol_19', NULL, 'Hic id voluptates nemo ut.', 427.39, 'ropa', 'basquetbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(22, 'equipamiento_futbol_3', NULL, 'Itaque cum tempora numquam facere consectetur.', 159.35, 'equipamiento', 'futbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(23, 'accesorios_futbol_4', NULL, 'Necessitatibus omnis qui debitis sunt.', 716.69, 'accesorios', 'futbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(24, 'ropa_futbol_2', 'images/futbol/ropa/futbol2.jpg', 'Et ex illum dolor quia.', 530.25, 'ropa', 'futbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(25, 'accesorios_futbol_5', NULL, 'Rerum porro itaque nihil debitis ullam ab.', 889.00, 'accesorios', 'futbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(26, 'equipamiento_futbol_14', NULL, 'Facilis sed aut iste quo dignissimos maiores nobis.', 819.70, 'equipamiento', 'basquetbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(27, 'accesorios_beisbol_3', NULL, 'Rerum eos voluptatum voluptatibus.', 111.03, 'accesorios', 'beisbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(28, 'accesorios_futbol_6', NULL, 'Excepturi quod voluptates quibusdam harum.', 818.82, 'accesorios', 'futbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(29, 'equipamiento_beisbol_4', NULL, 'Magnam ipsum ab perspiciatis dolorum ullam sit.', 127.12, 'equipamiento', 'beisbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(30, 'ropa_beisbol_1', NULL, 'Aut qui provident voluptatem laboriosam.', 732.33, 'ropa', 'beisbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(31, 'accesorios_beisbol_4', NULL, 'Iusto non nobis sunt dicta et aut consequatur non.', 481.25, 'accesorios', 'beisbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(32, 'ropa_futbol_3', 'images/futbol/ropa/futbol3.jpg', 'Repellendus qui quibusdam impedit ipsam amet aperiam ut corporis.', 167.68, 'ropa', 'futbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(33, 'equipamiento_futbol_15', NULL, 'Possimus fugiat laudantium quis praesentium id.', 426.00, 'equipamiento', 'basquetbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(34, 'equipamiento_beisbol_5', NULL, 'Rerum et vel accusantium aspernatur sit.', 943.01, 'equipamiento', 'beisbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(35, 'equipamiento_futbol_16', NULL, 'Omnis dolorem omnis perferendis nam ut.', 775.47, 'equipamiento', 'basquetbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(36, 'ropa_beisbol_2', NULL, 'Delectus fuga quas et unde et amet dolores.', 577.86, 'ropa', 'beisbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(37, 'equipamiento_futbol_4', NULL, 'Perspiciatis enim dignissimos beatae.', 509.36, 'equipamiento', 'futbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(38, 'accesorios_beisbol_5', NULL, 'Delectus harum sequi inventore molestiae delectus illo neque minus.', 818.81, 'accesorios', 'beisbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(39, 'equipamiento_futbol_5', NULL, 'Dicta atque odit earum dolore dignissimos facere.', 20.70, 'equipamiento', 'futbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(40, 'equipamiento_futbol_17', NULL, 'Esse et distinctio sed delectus vero.', 902.79, 'equipamiento', 'basquetbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(41, 'ropa_beisbol_3', NULL, 'Accusamus dolorem voluptatibus qui et fuga sed.', 483.22, 'ropa', 'beisbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(42, 'equipamiento_beisbol_6', NULL, 'Ut repudiandae voluptas maiores cupiditate eos odit.', 819.61, 'equipamiento', 'beisbol', '2024-12-07 04:57:34', '2024-12-07 04:57:34'),
(43, 'equipamiento_futbol_18', NULL, 'Sit nisi dolorum eum recusandae.', 372.01, 'equipamiento', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(44, 'equipamiento_futbol_6', NULL, 'Eos sed enim voluptatem aperiam sit.', 193.64, 'equipamiento', 'futbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(45, 'ropa_futbol_4', 'images/futbol/ropa/futbol4.jpg', 'Autem minus et reiciendis aut repellat voluptates.', 592.92, 'ropa', 'futbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(46, 'equipamiento_beisbol_7', NULL, 'Sapiente et porro inventore saepe porro.', 798.79, 'equipamiento', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(47, 'accesorios_basquetbol_15', NULL, 'Aliquam fuga doloribus iusto molestiae nobis labore.', 358.58, 'accesorios', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(48, 'accesorios_beisbol_6', NULL, 'Quos dolorem et minima qui et vitae.', 514.04, 'accesorios', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(49, 'equipamiento_beisbol_8', NULL, 'Aut itaque explicabo labore eos.', 969.78, 'equipamiento', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(50, 'ropa_beisbol_4', NULL, 'Aut quod est qui non aut.', 147.70, 'ropa', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(51, 'accesorios_beisbol_7', NULL, 'Quaerat voluptas eaque est qui similique ut itaque et.', 304.17, 'accesorios', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(52, 'ropa_beisbol_5', NULL, 'Ipsum cumque odit provident unde.', 655.63, 'ropa', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(53, 'accesorios_futbol_7', NULL, 'Nostrum non inventore quibusdam officiis quam qui consequatur non.', 37.99, 'accesorios', 'futbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(54, 'accesorios_basquetbol_16', NULL, 'Praesentium ipsum et culpa dignissimos consequatur ut.', 800.45, 'accesorios', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(55, 'equipamiento_futbol_19', NULL, 'Ex ipsa aliquid incidunt.', 772.49, 'equipamiento', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(56, 'equipamiento_futbol_20', NULL, 'Laudantium sed qui voluptatem vel quos aliquam.', 556.30, 'equipamiento', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(57, 'ropa_futbol_5', 'images/futbol/ropa/futbol5.jpg', 'Aut sed sit debitis quas sunt quibusdam ducimus eaque.', 416.37, 'ropa', 'futbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(58, 'ropa_futbol_6', 'images/futbol/ropa/futbol7.jpg', 'Quia rerum velit saepe ut quo.', 338.85, 'ropa', 'futbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(59, 'equipamiento_futbol_21', NULL, 'Beatae error unde deleniti natus dolorem.', 938.04, 'equipamiento', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(60, 'equipamiento_beisbol_9', NULL, 'Voluptate dicta et eligendi aut at excepturi culpa.', 478.00, 'equipamiento', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(61, 'accesorios_beisbol_8', NULL, 'Quis temporibus unde reiciendis distinctio dignissimos impedit.', 726.03, 'accesorios', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(62, 'accesorios_beisbol_9', NULL, 'Architecto aut dolor explicabo dolores voluptatum.', 824.41, 'accesorios', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(63, 'equipamiento_beisbol_10', NULL, 'Blanditiis similique sed distinctio voluptas quo optio.', 211.36, 'equipamiento', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(64, 'ropa_basquetbol_20', NULL, 'Maiores nesciunt doloribus ipsam delectus voluptatem earum voluptatum.', 129.02, 'ropa', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(65, 'accesorios_beisbol_10', NULL, 'Quae aut asperiores rerum et.', 527.12, 'accesorios', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(66, 'equipamiento_futbol_22', NULL, 'Quis et ipsum facilis quaerat rerum.', 922.77, 'equipamiento', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(67, 'ropa_beisbol_6', NULL, 'Ducimus cupiditate nulla qui perferendis ipsam assumenda dolor.', 721.00, 'ropa', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(68, 'equipamiento_futbol_23', NULL, 'Perferendis deserunt distinctio quibusdam fugit molestiae.', 893.24, 'equipamiento', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(69, 'ropa_futbol_7', NULL, 'Eos iste iste id.', 752.08, 'ropa', 'futbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(70, 'equipamiento_futbol_7', NULL, 'Et ratione ducimus voluptatibus et.', 600.85, 'equipamiento', 'futbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(71, 'accesorios_basquetbol_17', NULL, 'Blanditiis et est quos fuga et exercitationem.', 927.43, 'accesorios', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(72, 'accesorios_beisbol_11', NULL, 'Et repellendus est magni sed asperiores ipsam quia amet.', 848.82, 'accesorios', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(73, 'ropa_futbol_8', NULL, 'Reiciendis ea consectetur ratione omnis quasi debitis fugiat.', 198.62, 'ropa', 'futbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(74, 'ropa_basquetbol_21', NULL, 'Voluptatum rerum iusto iure eius quia sit dolore hic.', 131.41, 'ropa', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(75, 'accesorios_beisbol_12', NULL, 'Doloribus vel qui ipsa enim.', 609.04, 'accesorios', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(76, 'equipamiento_futbol_24', NULL, 'Ratione et animi provident sed qui assumenda.', 855.28, 'equipamiento', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(77, 'ropa_basquetbol_22', NULL, 'Eos a accusamus ut officia delectus doloribus.', 485.45, 'ropa', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(78, 'ropa_futbol_9', NULL, 'Repellat rerum minus similique culpa.', 662.80, 'ropa', 'futbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(79, 'ropa_beisbol_7', NULL, 'Temporibus reprehenderit natus esse quibusdam ipsam ut.', 982.62, 'ropa', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(80, 'accesorios_beisbol_13', NULL, 'Cum aut voluptas totam.', 118.10, 'accesorios', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(81, 'accesorios_basquetbol_18', NULL, 'Sapiente amet vel aut vel qui ut.', 604.04, 'accesorios', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(82, 'accesorios_beisbol_14', NULL, 'Natus et odio in voluptatem pariatur aut nobis sunt.', 937.35, 'accesorios', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(83, 'accesorios_beisbol_15', NULL, 'Ut minima deserunt nihil ut cum.', 184.34, 'accesorios', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(84, 'ropa_basquetbol_23', NULL, 'Illo molestiae et doloribus consequuntur facere deserunt.', 666.57, 'ropa', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(85, 'equipamiento_beisbol_11', NULL, 'Sit laborum distinctio vel nam quidem eligendi est.', 255.51, 'equipamiento', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(86, 'ropa_basquetbol_24', NULL, 'Eum neque et sunt suscipit beatae ut.', 637.49, 'ropa', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(87, 'ropa_futbol_10', NULL, 'Sunt architecto qui et totam sapiente dolorem deleniti.', 190.21, 'ropa', 'futbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(88, 'ropa_futbol_11', NULL, 'Commodi deleniti eos sed facilis odio.', 736.25, 'ropa', 'futbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(89, 'ropa_basquetbol_25', NULL, 'Quia quos architecto deserunt quibusdam quos ea.', 137.08, 'ropa', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(90, 'equipamiento_futbol_8', NULL, 'Quis ullam ut voluptas saepe porro.', 832.58, 'equipamiento', 'futbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(91, 'accesorios_basquetbol_19', NULL, 'Quas est quas nemo ratione voluptatem.', 481.34, 'accesorios', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(92, 'ropa_beisbol_8', NULL, 'Qui voluptas rem nihil et rerum id.', 949.38, 'ropa', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(93, 'accesorios_futbol_8', NULL, 'Aut dolorum porro nihil qui.', 290.29, 'accesorios', 'futbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(94, 'ropa_basquetbol_26', NULL, 'Reprehenderit esse in enim iste accusamus.', 534.48, 'ropa', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(95, 'equipamiento_futbol_9', NULL, 'Sit accusantium ea vero est cum ut.', 690.40, 'equipamiento', 'futbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(96, 'ropa_futbol_12', NULL, 'Voluptate rerum dolore asperiores natus.', 236.26, 'ropa', 'futbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(97, 'ropa_basquetbol_27', NULL, 'Ullam et aliquam dicta hic nihil.', 169.19, 'ropa', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(98, 'accesorios_basquetbol_20', NULL, 'Corporis aut asperiores at.', 278.88, 'accesorios', 'basquetbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(99, 'ropa_futbol_13', NULL, 'Labore hic ipsum velit dolorum.', 790.60, 'ropa', 'futbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(100, 'equipamiento_beisbol_12', NULL, 'Veniam possimus nostrum adipisci rerum.', 39.78, 'equipamiento', 'beisbol', '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(101, 'accesorios_futbol_9', NULL, 'Doloribus fuga autem quod voluptatum omnis.', 891.57, 'accesorios', 'futbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(102, 'equipamiento_futbol_25', NULL, 'Aut veritatis ab laborum natus fugiat sunt ducimus nam.', 481.31, 'equipamiento', 'basquetbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(103, 'equipamiento_futbol_10', NULL, 'Necessitatibus eum ea aspernatur eveniet quaerat tenetur sunt.', 591.01, 'equipamiento', 'futbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(104, 'ropa_basquetbol_28', NULL, 'Delectus ipsum asperiores ullam tempore sint.', 31.92, 'ropa', 'basquetbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(105, 'accesorios_futbol_10', NULL, 'Sapiente dolor et delectus eos.', 208.65, 'accesorios', 'futbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(106, 'equipamiento_beisbol_13', NULL, 'Nihil voluptas totam est temporibus libero dolore repudiandae.', 856.37, 'equipamiento', 'beisbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(107, 'equipamiento_futbol_26', NULL, 'Sit dolore molestiae architecto atque qui eligendi.', 823.63, 'equipamiento', 'basquetbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(108, 'accesorios_basquetbol_21', NULL, 'Quia architecto consequatur sed eos labore.', 897.66, 'accesorios', 'basquetbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(109, 'equipamiento_futbol_27', NULL, 'Qui et possimus iusto et et iure consequatur.', 764.56, 'equipamiento', 'basquetbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(110, 'accesorios_beisbol_16', NULL, 'Doloremque quidem magni aliquid ipsa blanditiis laudantium.', 622.53, 'accesorios', 'beisbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(111, 'accesorios_futbol_11', NULL, 'Odio enim necessitatibus harum nostrum voluptatem et.', 999.38, 'accesorios', 'futbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(112, 'equipamiento_futbol_11', NULL, 'Provident et explicabo vitae molestiae sed sequi.', 440.33, 'equipamiento', 'futbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(113, 'accesorios_basquetbol_22', NULL, 'Deleniti excepturi nemo ut sed minima consequatur.', 133.85, 'accesorios', 'basquetbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(114, 'accesorios_basquetbol_23', NULL, 'Esse nemo mollitia ipsam minus assumenda repellendus.', 231.21, 'accesorios', 'basquetbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(115, 'ropa_basquetbol_29', NULL, 'Commodi qui dolor saepe repellendus eos soluta.', 426.99, 'ropa', 'basquetbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(116, 'ropa_futbol_14', NULL, 'Cum molestiae ipsam nihil illo at architecto nihil.', 332.78, 'ropa', 'futbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(117, 'accesorios_basquetbol_24', NULL, 'Quo molestiae odio qui.', 390.17, 'accesorios', 'basquetbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(118, 'ropa_basquetbol_30', NULL, 'Fugiat laudantium praesentium sapiente omnis voluptas vel rem mollitia.', 17.41, 'ropa', 'basquetbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(119, 'ropa_basquetbol_31', NULL, 'Non sint qui distinctio eum explicabo id.', 728.16, 'ropa', 'basquetbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(120, 'accesorios_basquetbol_25', NULL, 'Et quibusdam rem commodi illo qui dolores.', 872.81, 'accesorios', 'basquetbol', '2024-12-07 04:57:36', '2024-12-07 04:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('v7oMwHX0bLWQSILLuRDO0BlprIWgdgzGQtbrOteh', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 OPR/113.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUE5MRjdkUExya2h4TFdCc1VISWxUZWhnbnkyY2dWZGwzamRmbHlCMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly9wcm8ucHJveWVjdG8uY29tL2Z1dGJvbD9jYXRlZ29yaWE9cm9wYSZwYWdlPTMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1733531826);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Noe Tun', 'noe.tun03@gmail.com', NULL, '$2y$12$9PF8Xfx5ZCZdZFPlw/X8KOc7J2Yuf9rkuUIleL6C5r.2AjhEFywmy', NULL, '2024-12-07 04:57:35', '2024-12-07 04:57:35'),
(2, 'Marc Champlin V', 'jaylen45@example.org', '2024-12-07 04:57:35', '$2y$12$B9lzM8lXIoJNcK4A89RIUe9amGY4oGUpJs9dHfLCF2mgEt6.Htqdy', 'FWPkheMtWc', '2024-12-07 04:57:36', '2024-12-07 04:57:36'),
(3, 'Nick O\'Conner', 'schuster.nicklaus@example.org', '2024-12-07 04:57:36', '$2y$12$B9lzM8lXIoJNcK4A89RIUe9amGY4oGUpJs9dHfLCF2mgEt6.Htqdy', 'JKIrN1WkHr', '2024-12-07 04:57:36', '2024-12-07 04:57:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `carritos`
--
ALTER TABLE `carritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carritos_user_id_foreign` (`user_id`);

--
-- Indexes for table `carrito_productos`
--
ALTER TABLE `carrito_productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carrito_productos_carrito_id_foreign` (`carrito_id`),
  ADD KEY `carrito_productos_producto_id_foreign` (`producto_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permisos`
--
ALTER TABLE `permisos`
  ADD KEY `permisos_id_permiso_foreign` (`id_permiso`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carritos`
--
ALTER TABLE `carritos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carrito_productos`
--
ALTER TABLE `carrito_productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carritos`
--
ALTER TABLE `carritos`
  ADD CONSTRAINT `carritos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `carrito_productos`
--
ALTER TABLE `carrito_productos`
  ADD CONSTRAINT `carrito_productos_carrito_id_foreign` FOREIGN KEY (`carrito_id`) REFERENCES `carritos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carrito_productos_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_id_permiso_foreign` FOREIGN KEY (`id_permiso`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
