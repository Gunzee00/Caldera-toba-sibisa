-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jun 2023 pada 04.42
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caldera-sibisa-db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `tanggal_rilis` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `gambar` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `judul_artikel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `tanggal_rilis`, `gambar`, `deskripsi`, `judul_artikel`) VALUES
(5, '2023-05-24 07:48:23', '1684914503.jpeg', 'asdasd', 'asdas'),
(7, '2023-06-11 15:05:24', '1686495924.jpg', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quasi sint deserunt vero ducimus iure iusto voluptate porro quibusdam dolores nulla quam dicta pariatur maiores reprehenderit accusamus dolorum inventore, dolorem sed. Magnam a vel atque non facere exercitationem repellat fugit doloribus cupiditate sequi vero excepturi praesentium nesciunt fuga dicta reiciendis, vitae alias accusantium dolore! Ullam culpa debitis dicta alias repellat dolore accusantium. Quis voluptatum iusto quidem maiores provident vitae quod exercitationem quam optio laborum cupiditate harum ipsa ex veritatis, excepturi error. Tempora, aut quasi molestiae molestias fugit nam aliquid repellat in similique tenetur odit atque aspernatur iste accusantium, dolorem numquam voluptatibus!', 'Caldera Blog');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pengunjung`
--

CREATE TABLE `data_pengunjung` (
  `id_data` int(11) NOT NULL,
  `nama_pengunjung` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `tempat_tinggal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_pengunjung`
--

INSERT INTO `data_pengunjung` (`id_data`, `nama_pengunjung`, `nik`, `tempat_tinggal`) VALUES
(2, 'silpa', '11421056', 'Kamboja'),
(3, 'Gunawan', '008322244', 'Laguboti');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `judul_galeri` text NOT NULL,
  `gambar_galeri` varchar(200) NOT NULL,
  `deskripsi_galeri` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `judul_galeri`, `gambar_galeri`, `deskripsi_galeri`) VALUES
(3, 'adada', '1686670379.jpg', 'asdasd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` int(20) NOT NULL,
  `nama_kamar` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `nomor_telepon` varchar(200) NOT NULL,
  `status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_15_135511_create_barangs_table', 1),
(6, '2022_06_15_140118_create_pesanans_table', 1),
(7, '2022_06_15_140333_create_pesanan_details_table', 1),
(8, '2022_06_17_190213_create_agens_table', 1),
(9, '2022_06_18_035444_add_deleted_at_table', 1),
(10, '2022_06_18_051514_create_caraousel_images_table', 1),
(11, '2022_06_18_083628_create_reservations_table', 1),
(12, '2022_06_20_131712_create_contact_us_table', 1),
(13, '2022_06_21_045230_create_about_us_table', 1),
(14, '2022_06_30_060829_create_gallerys_table', 1),
(15, '2022_07_04_071935_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `kode` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL DEFAULT '',
  `tanggal_tiket` text NOT NULL,
  `tiket_id` int(11) NOT NULL,
  `jumlah_pesan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanans`
--

INSERT INTO `pesanans` (`id`, `user_id`, `tanggal_pemesanan`, `status`, `kode`, `jumlah_harga`, `gambar`, `tanggal_tiket`, `tiket_id`, `jumlah_pesan`, `created_at`, `updated_at`) VALUES
(41, 9, '2023-06-12', '4', 5114, 10000, 'LOGO1.jpg', '2023-06-28', 13, 1, '2023-06-11 18:36:04', '2023-06-11 18:49:47'),
(42, 9, '2023-06-12', '4', 8627, 15000, 'LOGO1.jpg', '2023-06-14', 14, 1, '2023-06-11 18:37:59', '2023-06-11 20:35:44'),
(43, 6, '2023-06-12', '4', 4137, 15000, 'WhatsApp Image 2023-05-30 at 13.58.08.jpeg', '2023-06-28', 14, 1, '2023-06-11 18:40:45', '2023-06-11 20:50:54'),
(44, 6, '2023-06-12', '4', 5744, 10000, 'pngaaa.com-5054053.png', '2023-06-23', 13, 1, '2023-06-11 18:43:57', '2023-06-11 20:37:10'),
(45, 6, '2023-06-12', '4', 2525, 5000, 'book 1.jpg', '2023-06-29', 12, 1, '2023-06-11 18:53:13', '2023-06-12 07:24:09'),
(46, 9, '2023-06-12', '4', 5376, 30000, 'WhatsApp Image 2023-05-30 at 14.16.43.jpeg', '2023-07-01', 14, 2, '2023-06-11 20:49:24', '2023-06-12 07:29:33'),
(47, 9, '2023-06-12', '4', 2861, 10000, 'WhatsApp Image 2023-05-02 at 08.32.24.jpeg', '2023-07-01', 13, 1, '2023-06-12 07:28:25', '2023-06-12 07:32:17'),
(48, 6, '2023-06-13', '4', 4172, 10000, 'features-2.png', '2023-06-20', 13, 1, '2023-06-12 23:41:03', '2023-06-12 23:43:21'),
(49, 6, '2023-06-13', '4', 5464, 10000, 'apple-touch-icon.png', '2023-05-31', 13, 1, '2023-06-12 23:54:08', '2023-06-12 23:55:07'),
(50, 6, '2023-06-13', '4', 5077, 15000, 'team-2.jpg', '2023-06-10', 14, 1, '2023-06-12 23:58:31', '2023-06-12 23:59:20'),
(51, 6, '2023-06-13', '4', 6917, 30000, 'team-3.jpg', '2023-06-28', 14, 2, '2023-06-13 01:18:44', '2023-06-13 01:19:28'),
(52, 9, '2023-06-13', '4', 2076, 15000, 'team-2.jpg', '2023-06-13', 14, 1, '2023-06-13 07:29:40', '2023-06-13 07:39:41'),
(53, 9, '2023-06-13', '4', 1263, 5000, 'team-4.jpg', '2023-06-16', 12, 1, '2023-06-13 07:44:08', '2023-06-13 07:46:32'),
(54, 6, '2023-06-13', '4', 8712, 15000, 'team-2.jpg', '2023-07-01', 14, 1, '2023-06-13 07:48:57', '2023-06-13 07:50:03'),
(55, 6, '2023-06-13', '4', 8807, 10000, 'team-1.jpg', '2023-06-29', 13, 1, '2023-06-13 08:38:47', '2023-06-14 01:27:56'),
(56, 6, '2023-06-13', '3', 5100, 5000, 'team-2.jpg', '2023-06-03', 12, 1, '2023-06-13 08:39:20', '2023-06-13 08:39:57'),
(57, 6, '2023-06-13', '4', 3883, 460000, 'team-2.jpg', '2023-06-23', 13, 1, '2023-06-13 09:01:59', '2023-06-14 01:23:42'),
(58, 9, '2023-06-14', '0', 1007, 10000, '', '2023-06-13', 13, 1, '2023-06-14 01:32:26', '2023-06-14 01:32:26'),
(59, 13, '2023-06-14', '3', 3367, 10000, '406387-danau-toba.jpeg', '2023-06-20', 13, 1, '2023-06-14 01:38:17', '2023-06-14 01:53:57'),
(60, 13, '2023-06-14', '6', 9317, 5000, '406387-danau-toba.jpeg', '2023-06-10', 12, 1, '2023-06-14 01:40:47', '2023-06-14 01:42:18'),
(61, 13, '2023-06-14', '6', 4900, 10000, '406387-danau-toba.jpeg', '2023-07-07', 13, 1, '2023-06-14 01:48:20', '2023-06-14 01:49:22'),
(62, 13, '2023-06-14', '6', 8608, 10000, '406387-danau-toba.jpeg', '2023-06-21', 13, 1, '2023-06-14 01:55:27', '2023-06-14 01:59:56'),
(63, 13, '2023-06-14', '6', 1912, 10000, '406387-danau-toba.jpeg', '2023-06-22', 13, 1, '2023-06-14 02:02:04', '2023-06-14 02:06:06'),
(64, 13, '2023-06-14', '2', 5384, 10000, '406387-danau-toba.jpeg', '2023-06-15', 13, 1, '2023-06-14 02:14:35', '2023-06-14 02:15:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan_details`
--

CREATE TABLE `pesanan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tiket_id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanan_details`
--

INSERT INTO `pesanan_details` (`id`, `tiket_id`, `pesanan_id`, `jumlah`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 23, 78734566, '2023-05-01 07:40:39', '2023-05-01 07:40:39'),
(2, 1, 2, 13, 44502146, '2023-05-03 07:10:58', '2023-05-03 19:14:05'),
(3, 1, 3, 2, 6846484, '2023-05-09 07:17:41', '2023-05-09 07:17:41'),
(4, 1, 4, 2, 6846484, '2023-05-09 07:22:13', '2023-05-09 07:22:13'),
(5, 1, 5, 1, 3423242, '2023-05-16 21:36:56', '2023-05-16 21:36:56'),
(6, 1, 6, 1, 3423242, '2023-05-16 21:45:06', '2023-05-16 21:45:06'),
(7, 1, 7, 6, 20539452, '2023-05-17 01:21:04', '2023-06-03 06:19:20'),
(8, 1, 8, 2, 6846484, '2023-05-17 01:22:36', '2023-05-17 02:20:07'),
(9, 1, 9, 2, 6846484, '2023-05-17 01:24:05', '2023-05-17 01:25:17'),
(10, 1, 10, 1, 3423242, '2023-05-17 01:26:29', '2023-05-17 01:26:29'),
(11, 4, 11, 3, 30000, '2023-05-19 01:02:15', '2023-05-19 01:02:15'),
(12, 3, 12, 5, 75000, '2023-05-19 20:43:52', '2023-05-19 20:43:52'),
(13, 4, 12, 4, 40000, '2023-05-19 20:44:09', '2023-05-19 20:44:09'),
(14, 1, 13, 3, 10269726, '2023-06-05 21:48:25', '2023-06-05 21:52:21'),
(15, 6, 14, 12, 120000, '2023-06-06 19:03:59', '2023-06-06 19:40:38'),
(16, 5, 14, 1, 15000, '2023-06-06 19:20:46', '2023-06-06 19:20:46'),
(17, 5, 15, 1, 15000, '2023-06-06 20:17:00', '2023-06-06 20:17:00'),
(18, 5, 16, 1, 15000, '2023-06-07 02:15:23', '2023-06-07 02:15:23'),
(19, 5, 17, 1, 15000, '2023-06-07 02:15:45', '2023-06-07 02:15:45'),
(20, 6, 17, 1, 10000, '2023-06-07 02:15:55', '2023-06-07 02:15:55'),
(21, 5, 18, 1, 15000, '2023-06-07 02:18:37', '2023-06-07 02:18:37'),
(22, 6, 18, 1, 10000, '2023-06-07 02:18:46', '2023-06-07 02:18:46'),
(24, 6, 19, 2, 20000, '2023-06-07 19:17:50', '2023-06-07 19:17:50'),
(26, 5, 21, 1, 15000, '2023-06-07 20:02:57', '2023-06-07 20:02:57'),
(28, 5, 22, 1, 15000, '2023-06-08 00:07:34', '2023-06-08 00:07:34'),
(29, 8, 22, 3, 45000, '2023-06-08 01:50:08', '2023-06-08 01:50:28'),
(30, 9, 23, 1, 1231, '2023-06-08 01:58:46', '2023-06-08 01:58:46'),
(31, 9, 24, 1, 1231, '2023-06-08 15:05:10', '2023-06-08 15:05:10'),
(32, 9, 25, 1, 1231, '2023-06-08 17:54:43', '2023-06-08 17:54:43'),
(33, 10, 26, 1, 15000, '2023-06-08 19:24:05', '2023-06-08 19:24:05'),
(34, 9, 26, 1, 1231, '2023-06-08 19:24:26', '2023-06-08 19:24:26'),
(35, 9, 27, 12, 14772, '2023-06-08 19:55:47', '2023-06-08 19:55:47'),
(37, 10, 28, 2, 30000, '2023-06-08 20:46:50', '2023-06-08 20:46:50'),
(39, 9, 29, 2, 2462, '2023-06-08 20:49:01', '2023-06-08 20:49:01'),
(40, 10, 29, 1, 15000, '2023-06-08 20:49:08', '2023-06-08 20:49:08'),
(41, 9, 30, 1, 1231, '2023-06-08 21:40:44', '2023-06-08 21:40:44'),
(42, 10, 30, 1, 15000, '2023-06-08 21:40:54', '2023-06-08 21:40:54'),
(44, 11, 32, 1, 15000, '2023-06-10 22:04:06', '2023-06-10 22:04:06'),
(45, 12, 32, 1, 10000, '2023-06-10 22:05:31', '2023-06-10 22:05:31'),
(46, 12, 33, 2, 20000, '2023-06-10 22:31:56', '2023-06-10 22:32:15'),
(47, 9, 33, 2, 2462, '2023-06-10 22:32:04', '2023-06-10 22:32:28'),
(48, 11, 33, 1, 15000, '2023-06-10 22:32:38', '2023-06-10 22:32:38'),
(49, 9, 34, 1, 1231, '2023-06-10 23:43:22', '2023-06-10 23:43:22'),
(50, 12, 35, 1, 10000, '2023-06-10 23:54:00', '2023-06-10 23:54:00'),
(51, 11, 36, 1, 15000, '2023-06-10 23:59:40', '2023-06-10 23:59:40'),
(52, 11, 37, 1, 15000, '2023-06-11 06:35:53', '2023-06-11 06:35:53'),
(53, 12, 37, 1, 10000, '2023-06-11 06:36:02', '2023-06-11 06:36:02'),
(54, 9, 37, 12, 14772, '2023-06-11 06:36:18', '2023-06-11 06:36:18'),
(55, 12, 38, 1, 5000, '2023-06-11 08:08:01', '2023-06-11 08:08:01'),
(56, 14, 39, 1, 15000, '2023-06-11 18:33:03', '2023-06-11 18:33:03'),
(57, 13, 40, 1, 10000, '2023-06-11 18:34:17', '2023-06-11 18:34:17'),
(58, 13, 41, 1, 10000, '2023-06-11 18:36:04', '2023-06-11 18:36:04'),
(59, 14, 42, 1, 15000, '2023-06-11 18:37:59', '2023-06-11 18:37:59'),
(60, 14, 43, 1, 15000, '2023-06-11 18:40:45', '2023-06-11 18:40:45'),
(61, 13, 44, 1, 10000, '2023-06-11 18:43:57', '2023-06-11 18:43:57'),
(62, 12, 45, 1, 5000, '2023-06-11 18:53:13', '2023-06-11 18:53:13'),
(63, 14, 46, 2, 30000, '2023-06-11 20:49:24', '2023-06-11 20:49:24'),
(64, 13, 47, 1, 10000, '2023-06-12 07:28:25', '2023-06-12 07:28:25'),
(65, 13, 48, 1, 10000, '2023-06-12 23:41:03', '2023-06-12 23:41:03'),
(66, 13, 49, 1, 10000, '2023-06-12 23:54:08', '2023-06-12 23:54:08'),
(67, 14, 50, 1, 15000, '2023-06-12 23:58:31', '2023-06-12 23:58:31'),
(68, 14, 51, 2, 30000, '2023-06-13 01:18:44', '2023-06-13 01:18:44'),
(69, 14, 52, 1, 15000, '2023-06-13 07:29:40', '2023-06-13 07:29:40'),
(70, 12, 53, 1, 5000, '2023-06-13 07:44:08', '2023-06-13 07:44:08'),
(71, 14, 54, 1, 15000, '2023-06-13 07:48:57', '2023-06-13 07:48:57'),
(72, 13, 55, 1, 10000, '2023-06-13 08:38:47', '2023-06-13 08:38:47'),
(73, 12, 56, 1, 5000, '2023-06-13 08:39:20', '2023-06-13 08:39:20'),
(74, 13, 57, 1, 10000, '2023-06-13 09:01:59', '2023-06-13 09:01:59'),
(75, 14, 57, 30, 450000, '2023-06-13 20:23:52', '2023-06-13 20:23:52'),
(76, 13, 58, 1, 10000, '2023-06-14 01:32:26', '2023-06-14 01:32:26'),
(77, 13, 59, 1, 10000, '2023-06-14 01:38:17', '2023-06-14 01:38:17'),
(78, 12, 60, 1, 5000, '2023-06-14 01:40:47', '2023-06-14 01:40:47'),
(79, 13, 61, 1, 10000, '2023-06-14 01:48:20', '2023-06-14 01:48:20'),
(80, 13, 62, 1, 10000, '2023-06-14 01:55:27', '2023-06-14 01:55:27'),
(81, 13, 63, 1, 10000, '2023-06-14 02:02:04', '2023-06-14 02:02:04'),
(82, 13, 64, 1, 10000, '2023-06-14 02:14:35', '2023-06-14 02:14:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar_tiket` varchar(255) NOT NULL,
  `pesanan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `photos`
--

INSERT INTO `photos` (`id`, `gambar_tiket`, `pesanan_id`, `created_at`, `updated_at`) VALUES
(8, 'pngwing.com.png', 41, '2023-06-11 18:49:47', '2023-06-11 18:49:47'),
(9, 'background.jpg', 42, '2023-06-11 20:35:44', '2023-06-11 20:35:44'),
(10, 'LOGO1 (1).jpg', 44, '2023-06-11 20:37:10', '2023-06-11 20:37:10'),
(11, 'LOGO1.jpg', 44, '2023-06-11 20:37:10', '2023-06-11 20:37:10'),
(12, 'pngaaa.com-5054053.png', 43, '2023-06-11 20:50:54', '2023-06-11 20:50:54'),
(13, 'pngwing.com.png', 43, '2023-06-11 20:50:54', '2023-06-11 20:50:54'),
(14, 'WhatsApp Image 2023-05-02 at 08.32.24 (1).jpeg', 45, '2023-06-12 07:24:09', '2023-06-12 07:24:09'),
(15, 'WhatsApp Image 2023-05-02 at 08.32.24.jpeg', 45, '2023-06-12 07:24:09', '2023-06-12 07:24:09'),
(16, 'pngaaa.com-5054053.png', 46, '2023-06-12 07:29:33', '2023-06-12 07:29:33'),
(17, 'pngwing.com.png', 46, '2023-06-12 07:29:33', '2023-06-12 07:29:33'),
(18, 'WhatsApp Image 2023-05-29 at 14.11.07.jpeg', 47, '2023-06-12 07:32:17', '2023-06-12 07:32:17'),
(19, 'logo.png', 48, '2023-06-12 23:43:21', '2023-06-12 23:43:21'),
(20, 'team-1.jpg', 49, '2023-06-12 23:55:07', '2023-06-12 23:55:07'),
(21, 'team-4.jpg', 50, '2023-06-12 23:59:20', '2023-06-12 23:59:20'),
(22, 'team-1.jpg', 51, '2023-06-13 01:19:28', '2023-06-13 01:19:28'),
(23, 'team-1.jpg', 51, '2023-06-13 01:19:28', '2023-06-13 01:19:28'),
(24, 'team-2.jpg', 52, '2023-06-13 07:39:41', '2023-06-13 07:39:41'),
(25, 'team-1.jpg', 53, '2023-06-13 07:46:32', '2023-06-13 07:46:32'),
(26, 'team-4.jpg', 54, '2023-06-13 07:50:03', '2023-06-13 07:50:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiket`
--

CREATE TABLE `tiket` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_tiket` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tiket`
--

INSERT INTO `tiket` (`id`, `jenis_tiket`, `gambar`, `harga`, `stok`, `keterangan`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Panci', '20230606064636.WhatsApp Image 2023-05-30 at 13.58.08.jpeg', 3423242, 9, 'sadadsdf', '2023-06-05 23:47:37', '2023-05-01 07:36:42', '2023-06-05 23:47:37'),
(2, 'sadas', 'image (1).png', 21, 12, 'sadsad', '2023-05-19 00:58:55', '2023-05-19 00:55:11', '2023-05-19 00:58:55'),
(3, 'Dewasa', 'wallhaven-vqz7qm_1920x1080.png', 15000, 95, '18 tahun ke atas', '2023-06-05 22:46:54', '2023-05-19 00:59:48', '2023-06-05 22:46:54'),
(4, 'anak anak', 'pngwing.com.png', 10000, 33, '5 tahun ke atas', '2023-06-04 14:00:11', '2023-05-19 01:00:35', '2023-06-04 14:00:11'),
(5, 'Dewasa', 'WhatsApp Image 2023-05-30 at 14.16.43.jpeg', 15000, 82, 'Hanya dapat digunakan di atas 17 tahun', '2023-06-08 00:25:18', '2023-06-05 23:47:34', '2023-06-08 00:25:18'),
(6, 'Remaja', 'WhatsApp Image 2023-05-02 at 08.32.24.jpeg', 10000, 81, 'Digunakan 17 tahun kebawah', '2023-06-08 00:26:21', '2023-06-05 23:48:46', '2023-06-08 00:26:21'),
(7, 'Dewasa', 'Gunawan Sinaga.png', 10000, 100, 'Hanya dapat digunakan di atas 17 tahun', '2023-06-08 00:30:56', '2023-06-08 00:04:32', '2023-06-08 00:30:56'),
(8, 'Dewasa', 'WhatsApp Image 2023-05-29 at 14.11.07.jpeg', 15000, 100, 'Hanya dapat digunakan di atas 17 tahun', '2023-06-08 01:52:03', '2023-06-08 01:42:35', '2023-06-08 01:52:03'),
(9, 'asdasasd', 'WhatsApp Image 2023-05-30 at 14.16.43.jpeg', 1231, 65, 'qwasdsaa', '2023-06-11 07:12:33', '2023-06-08 01:57:34', '2023-06-11 07:12:33'),
(10, 'Remaja', 'pngaaa.com-5054053.png', 15000, 92, 'Dapat digunakan oleh anak umur 10 tahun sampai umur 16', '2023-06-10 05:39:09', '2023-06-08 19:23:22', '2023-06-10 05:39:09'),
(11, 'Dewasa', 'Gunawan Sinaga.png', 15000, 96, 'Dapat digunakan oleh anak umur 16 tahun sampai lanjut', '2023-06-11 08:03:25', '2023-06-10 05:39:44', '2023-06-11 08:03:25'),
(12, 'Remaja', 'LOGO1 (1).jpg', 5000, 90, 'Dapat digunakan oleh anak umur 10 tahun sampai umur 16', NULL, '2023-06-10 05:55:16', '2023-06-14 01:40:51'),
(13, 'Manca Negara', 'book 3.jpg', 10000, 87, 'Tiket ini dapat digunakan oleh turis', NULL, '2023-06-10 06:00:20', '2023-06-14 02:14:53'),
(14, 'Dewasa', '406387-danau-toba.jpeg', 15000, 0, 'Dapat digunakan oleh anak umur 16 tahun sampai lanjut', NULL, '2023-06-11 08:03:06', '2023-06-13 20:29:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nohp` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `alamat`, `nohp`, `avatar`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '1', NULL, '$2y$10$c8vuOHKVJUvWWwE3a4JWyeKbq5z5ddqlcpwxyT7cUvhtyHA/I7Ski', NULL, NULL, NULL, '2zwK9N0K3380DtAJLihs6GERik3clWejqo2rSwhzyHuEvnFaSoh7aIpvx0zd', '2023-05-01 07:26:54', '2023-05-01 07:26:54', NULL),
(2, 'peh', 'peh@gmail.com', '0', NULL, '$2y$10$mly2K8fKgmufARHUId3RH.E0n8ybJq9nIpcaxFZrFVKp.KdNibbji', 'asdasas', '13112', '555.png', NULL, '2023-05-01 07:39:23', '2023-05-23 08:26:27', '2023-05-23 08:26:27'),
(3, 'tes', 'tes@gmail.com', '0', NULL, '$2y$10$Uull0oa6i5WOhuDbLx8Tc.mpDQ7EoiZx6FQU6CjZjusr8xJI0X45u', NULL, NULL, NULL, NULL, '2023-05-02 06:16:01', '2023-06-13 06:08:34', '2023-06-13 06:08:34'),
(4, 'gunawan', 'gunawan@gmail.com', '0', NULL, '$2y$10$FJCtE1Bkk6KR/fWWCgaq6eb1wpnsx5APMhEtQMZ84yFUrA7VhEFuq', NULL, NULL, NULL, NULL, '2023-05-03 07:09:56', '2023-05-03 07:09:56', NULL),
(5, 'siapa', 'siapa@gmail.com', '0', NULL, '$2y$10$6SG2BI.TVx0zHa0oW6DLdeYkiRZ3VEj6FbikrfmhJyQMRc6L98zpW', '432', '322', 'background.jpg', NULL, '2023-05-09 07:10:17', '2023-05-09 07:18:06', NULL),
(6, 'p', 'p@gmail.com', '2', NULL, '$2y$10$TTiamJSKrgY8t8xd4UmUCeYp6FzeZlSFFxDY2rvf8ujIHQtlUz06m', 'asdasdassasadasassadas', '123131212312', NULL, NULL, '2023-05-16 21:08:57', '2023-05-16 21:38:16', NULL),
(7, 'o', 'o@gmail.com', '0', NULL, '$2y$10$QKQ1oMFakeawSblKWoVkluKQG.lA4GOAcFrS5ax3QSbr.uMmIeeI.', NULL, NULL, NULL, NULL, '2023-05-17 01:23:45', '2023-05-17 01:23:45', NULL),
(8, 'gunawan', 'gungun@gmail.com', '0', NULL, '$2y$10$VENmmpCnT6XnZMFe2lthBuD0PHod56iFrY615gP/L43zpEQAl9dmC', NULL, NULL, NULL, NULL, '2023-06-05 22:49:59', '2023-06-05 22:49:59', NULL),
(9, 'gunawan', 'yudi@gmail.com', '0', NULL, '$2y$10$eBq7oGwM0rXINPHKtOPOLOrMAuBYxu6WFSH4kf0.TaJZkP2KrR4RC', NULL, NULL, NULL, NULL, '2023-06-11 08:07:18', '2023-06-11 08:07:18', NULL),
(10, 'admin1', 'admin1@gmail.com', '1', NULL, '$2y$10$fPMNUdk4SUYvHt7IjiY0re/SIEiM1ndL4s8nkyLdv5LNCWg9tly8y', NULL, NULL, NULL, NULL, '2023-06-12 07:12:08', '2023-06-12 07:12:08', NULL),
(11, 'Admin2', 'admin2@gmail.com', '1', NULL, '$2y$10$TLpj/Pt68B3nNmn/64uXvuZIJCXMlfvAPScueFYJgv7sBiGbJ.rCm', NULL, NULL, NULL, NULL, '2023-06-13 20:16:16', '2023-06-13 20:16:16', NULL),
(12, 'adminisitrator', 'administrator@gmail.com', '2', NULL, '$2y$10$aqmphxWtdmLNXw.lDq6GBOfnzOuv9/pcS5TXFqihPNF.tpqfqPV.O', NULL, NULL, NULL, NULL, '2023-06-13 21:15:20', '2023-06-13 21:15:20', NULL),
(13, 'pe', 'pe@gmail.com', '0', NULL, '$2y$10$ZcHqwAd2Q7B2PsYHx95stu4.5hCt0NPJX2jRLBKaHszAM7r/Ki7g6', NULL, NULL, NULL, NULL, '2023-06-14 00:03:23', '2023-06-14 00:03:23', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `data_pengunjung`
--
ALTER TABLE `data_pengunjung`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan_details`
--
ALTER TABLE `pesanan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_pesanan_id_foreign` (`pesanan_id`);

--
-- Indeks untuk tabel `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `data_pengunjung`
--
ALTER TABLE `data_pengunjung`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT untuk tabel `pesanan_details`
--
ALTER TABLE `pesanan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_pesanan_id_foreign` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanans` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
