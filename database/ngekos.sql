-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jan 2026 pada 15.21
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngekos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `boarding_houses`
--

CREATE TABLE `boarding_houses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `boarding_houses`
--

INSERT INTO `boarding_houses` (`id`, `name`, `slug`, `thumbnail`, `city_id`, `category_id`, `description`, `price`, `address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Galaxy ', 'galaxy', 'boarding-houses/01KD740T2992NGM3B822G9X16C.jfif', 1, 1, '<p>Tersedia Kasur Jumbo , Wi-Fi, TV, Makan dan Minum 3 x sehari beserta dessert, Kamar Mandi dengan Shower, Toilet, Sabun Mandi dan Shampoo Gratis</p>', 15000000, 'Jl. Hasan Basri ', NULL, '2025-12-09 19:03:47', '2026-01-13 20:11:56'),
(2, 'Villa Bintang', 'villa-bintang', 'boarding-houses/01KD746KV30V17MPGMMJ69MT2G.jfif', 2, 3, '<p>Villa Bintang Banjarbaru adalah penginapan yang nyaman dan tenang, cocok untuk liburan keluarga maupun acara bersama. Dikelilingi suasana alam yang asri dengan fasilitas lengkap, villa ini menawarkan kenyamanan, privasi, dan pemandangan indah yang membuat pengalaman menginap lebih berkesan.</p>', 3000000, 'Jl. Bintang Raya No. 10, Kelurahan Sungai Besar, Kecamatan Banjarbaru Selatan, Kota Banjarbaru, Kalimantan Selatan.', NULL, '2025-12-16 18:46:02', '2026-01-13 20:22:04'),
(3, 'Samudra View Apartment', 'samudra-view-apartment', 'boarding-houses/01KCN13ZY7P1FCX56E8NZKEG95.jfif', 6, 2, '<p><strong>Bintang Residence Kotabaru</strong> merupakan apartemen modern yang menawarkan kenyamanan tinggal di kawasan strategis Kotabaru. Dirancang dengan konsep elegan dan fungsional, apartemen ini dilengkapi fasilitas lengkap, lingkungan yang aman, serta suasana tenang, sehingga cocok untuk hunian maupun tempat menginap jangka pendek dan panjang.</p>', 60000000, 'Jl. Pangeran Diponegoro No. 88, Kelurahan Kotabaru Tengah, Kecamatan Pulau Laut Sigam, Kabupaten Kotabaru, Kalimantan Selatan', NULL, '2025-12-16 19:09:41', '2026-01-13 20:25:37'),
(4, 'Pelaihari Hills Resort', 'pelaihari-hills-resort', 'boarding-houses/01KCN1YPMQ7VMRK12FPS2G2H5Y.jfif', 7, 4, '<p><strong>Pelaihari Hills Resort</strong> adalah resort bernuansa alam yang berlokasi di kawasan perbukitan Pelaihari. Menawarkan pemandangan hijau yang menenangkan dan udara sejuk, resort ini menjadi pilihan ideal untuk berlibur, beristirahat, maupun mengadakan acara bersama keluarga dengan suasana nyaman dan asri.</p>', 45000000, 'Jl. Bukit Raya, Kelurahan Sarang Halang, Kecamatan Pelaihari, Kabupaten Tanah Laut, Kalimantan Selatan.', NULL, '2025-12-16 19:24:16', '2026-01-13 20:26:05'),
(5, 'Barito Indah Motel', 'barito-indah-motel', 'boarding-houses/01KCN2QQQRA1XYKD9FG9B3RB2R.jfif', 4, 6, '<p><strong>Barito Indah Motel</strong> merupakan motel yang nyaman dan praktis di kawasan Marabahan, cocok bagi anda yang membutuhkan tempat istirahat singkat. Dengan suasana tenang, kamar bersih, dan fasilitas yang memadai, motel ini memberikan kenyamanan dan kemudahan akses bagi para tamu.</p>', 3000000, 'Jl. Trans Kalimantan No. 25, Kelurahan Marabahan Kota, Kecamatan Marabahan, Kabupaten Barito Kuala, Kalimantan Selatan.', NULL, '2025-12-16 19:37:56', '2026-01-13 20:26:26'),
(6, 'CozyStay Guest House', 'cozystay-guest-house', 'boarding-houses/01KEX9TVM73HAADNY9188AC09A.jfif', 3, 5, '<p><strong>CozyStay Guest House</strong> adalah penginapan yang menghadirkan suasana hangat, nyaman, dan tenang seperti di rumah sendiri. Dengan desain sederhana modern dan lingkungan yang bersih serta tertata rapi, CozyStay menjadi pilihan ideal bagi wisatawan, pekerja, maupun keluarga yang mencari tempat istirahat berkualitas dengan harga terjangkau.</p>', 1000000, 'Jalan Mawar No. 12, Desa Tambarangan, Kecamatan Tapin Selatan, Kabupaten Tapin, Kalimantan Selatan', NULL, '2026-01-13 20:47:18', '2026-01-13 20:47:18'),
(7, 'Kos Khusus Putra', 'kos-khusus-putra', 'boarding-houses/01KF8F6ABF555MCG7HPRWBMKGP.jfif', 8, 7, '<blockquote><p>Kos Putra nyaman dan bersih dengan lingkungan tenang, cocok untuk mahasiswa maupun karyawan. Lokasi strategis, mudah diakses, dan dekat dengan fasilitas umum. Keamanan terjaga 24 jam.</p></blockquote>', 800000, 'Jl. Pendidikan No. 12, Kelurahan Keraton, Kecamatan Martapura, Kabupaten Banjar, Kalimantan Selatan 70614.', NULL, '2026-01-18 04:52:35', '2026-01-18 04:52:35'),
(8, 'D\'House', 'dhouse', 'boarding-houses/01KF8FH6GE87776KYZTH8KHNFB.jfif', 5, 8, '<p>Kos Putri nyaman, bersih, dan aman dengan lingkungan tenang. Cocok untuk mahasiswi maupun karyawati. Lokasi strategis dan mudah diakses, serta keamanan terjaga.</p>', 800000, 'Jl. Pasar Lama Gang Melati No. 4, Kandangan, Kabupaten Hulu Sungai Selatan, Kalimantan Selatan.', NULL, '2026-01-18 04:58:32', '2026-01-18 04:58:32'),
(9, 'Oria Hotel', 'oria-hotel', 'boarding-houses/01KF8HA8CM8AHJMESJ8SVQEJR6.jpg', 1, 1, '<p><strong>Oria Hotel</strong> adalah hotel bintang 4 yang memadukan desain modern kontemporer dengan lokasi paling strategis di pusat Jakarta. Terletak di <strong>Jl. KH Wahid Hasyim</strong>, kami menawarkan akses instan ke kawasan bisnis Thamrin, pusat perbelanjaan Sarinah, serta destinasi kuliner populer.</p>', 3000000, ' Jl. KH Wahid Hasyim', NULL, '2026-01-18 05:29:41', '2026-01-18 05:29:41'),
(10, 'Jambuluwuk Thamrin Hotel', 'jambuluwuk-thamrin-hotel', 'boarding-houses/01KF8HX5N28TDBGQNAYKG9QJ0V.jpg', 4, 1, '<p>Jambuluwuk menawarkan pengalaman menginap unik yang mengangkat kearifan lokal dan arsitektur tradisional Indonesia. Dengan sentuhan desain bata merah yang ikonik dan suasana yang hangat, setiap properti kami dirancang untuk memberikan kenyamanan modern namun tetap terasa seperti di rumah sendiri. Destinasi sempurna bagi Anda yang menghargai ketenangan dan keaslian budaya.</p>', 2500000, 'Jl. Riau No. 5 - 7', NULL, '2026-01-18 05:40:01', '2026-01-18 05:40:01'),
(11, 'Grand Sahid Jaya', 'grand-sahid-jaya', 'boarding-houses/01KF8JF64FGJZ5AHY933E212YT.jpg', 3, 1, '<p>Sebagai salah satu hotel paling ikonik di Jakarta, Grand Sahid Jaya menawarkan perpaduan sempurna antara keramahan budaya Indonesia yang autentik dengan fasilitas standar internasional. Terletak strategis di kawasan Sudirman (SCBD), kami menjadi pilihan utama bagi para pemimpin bisnis dan wisatawan yang mencari kemegahan klasik dan layanan prima di pusat kota.</p>', 4000000, 'Jl. Jend Sudirman', NULL, '2026-01-18 05:49:51', '2026-01-18 05:49:51'),
(12, 'Thamrin Residences', 'thamrin-residences', 'boarding-houses/01KF8KATDXMC24AQFJ5DGZ2RCK.png', 2, 2, '<p>Thamrin Residence bukan sekadar tempat tinggal, melainkan sebuah gaya hidup. Dengan fasilitas bintang lima seperti kolam renang yang luas, pusat kebugaran, area komersial yang lengkap (restoran, minimarket, binatu), serta sistem keamanan 24 jam, setiap kebutuhan harian Anda tersedia dalam satu kompleks hunian yang nyaman dan asri.</p>', 4500000, 'Thamrin Residence, Jl. Kebon Kacang Raya No.3, RT.3/RW.8', NULL, '2026-01-18 06:04:57', '2026-01-18 06:04:57'),
(13, 'Apartemen Menteng Park', 'apartemen-menteng-park', 'boarding-houses/01KF8M97EE9SB92PZDN3PT23SH.jpg', 6, 2, '<p><strong>Menteng Park</strong> menghadirkan konsep hunian eksklusif yang memadukan kemewahan modern dengan pesona klasik kawasan Menteng. Terletak sangat dekat dengan pusat kesenian Taman Ismail Marzuki dan area bisnis Thamrin, properti ini menawarkan ketenangan di tengah hiruk-pikuk pusat kota Jakarta. Dengan desain arsitektur yang elegan dan pemandangan cakrawala kota yang memukau, Menteng Park adalah definisi kenyamanan kelas atas.</p>', 2300000, 'Jl. Cikini Raya No.79, RT.2/RW.2, Cikini, Kec. Menteng, Kota Jakarta Pusat', NULL, '2026-01-18 06:21:33', '2026-01-18 06:21:33'),
(14, 'San Villa Syariah', 'san-villa-syariah', 'boarding-houses/01KF8MY19ZMBQ1CVMMVBBCTMP8.jpg', 7, 3, '<p>Temukan ketenangan sejati di villa kami yang eksklusif, di mana desain modern bertemu dengan keasrian alam. Dirancang untuk memberikan privasi total, villa ini dilengkapi dengan kolam renang pribadi, ruang keluarga yang luas, dan layanan personal yang siap memenuhi setiap kebutuhan Anda. Tempat terbaik untuk melarikan diri dari rutinitas dan menciptakan momen tak terlupakan bersama orang tersayang.</p>', 2500000, 'di dekat Berangas Tim., Kabupaten Barito Kuala', NULL, '2026-01-18 06:32:55', '2026-01-18 06:32:55'),
(15, 'Best World Kindai', 'best-world-kindai', 'boarding-houses/01KF8NKCZZF0DHBFSEQY626NHH.jpg', 8, 4, '<p>Rasakan pengalaman menginap yang jauh dari kebisingan kota di resort kami. Dikelilingi oleh keindahan alam yang mempesona, setiap sudut resort dirancang untuk memberikan kenyamanan maksimal dan ketenangan jiwa. Dari balkon pribadi dengan pemandangan menakjubkan hingga suasana tropis yang asri, kami adalah tempat terbaik untuk memulihkan energi dan memanjakan diri.</p>', 3000000, 'Jl. Ahmad Yani Km.4,5 No.437, Kecamatan Banjarmasin Timur, Pemurus Luar, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70236', NULL, '2026-01-18 06:44:35', '2026-01-18 06:44:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bonuses`
--

CREATE TABLE `bonuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `boarding_house_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bonuses`
--

INSERT INTO `bonuses` (`id`, `boarding_house_id`, `image`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'bonuses/01KC3004ZJTBT5TPZ0AZV15WT9.jfif', 'Peralatan Mandi', 'Tersedia Handuk beserta shampoo dan sabun yang wangi ', NULL, '2025-12-09 19:03:47', '2025-12-09 19:03:47'),
(2, 1, 'bonuses/01KC3004ZNWX2H94KN664B2GYS.jfif', 'Makanan dan Minuman', 'Tersedia makanan dan minuman beserta cemilan sehat yang didapatkan 3 kali sehari', NULL, '2025-12-09 19:03:47', '2025-12-09 19:03:47'),
(3, 2, 'bonuses/01KCMZRP6AAV5F5A0F4A997RSM.jfif', 'Kolam Renang', 'Kolam renang Villa Bintang Banjarbaru bersih dan nyaman, cocok untuk bersantai maupun bermain air bersama keluarga. Dilengkapi area yang aman dan suasana asri, kolam ini menambah keseruan dan kenyamanan selama menginap', NULL, '2025-12-16 18:46:02', '2025-12-16 18:46:02'),
(4, 2, 'bonuses/01KCMZRP6FAMH0X3KVN1S9909G.jfif', 'Perlengkapan Mandi', 'Perlengkapan mandi di Villa Bintang Banjarbaru tersedia lengkap dan bersih, meliputi sabun, sampo, handuk, serta fasilitas kamar mandi yang nyaman untuk menunjang kebutuhan tamu selama menginap.', NULL, '2025-12-16 18:46:02', '2025-12-16 18:46:02'),
(5, 2, 'bonuses/01KCMZRP6KBW3PTMBPW5X9P742.jfif', 'Smart TV dengan Netflix', 'Villa Bintang Banjarbaru kini dilengkapi Smart TV dengan akses Netflix, sehingga tamu dapat menikmati berbagai film dan hiburan favorit dengan nyaman selama menginap.', NULL, '2025-12-16 18:46:02', '2025-12-16 18:46:02'),
(6, 3, 'bonuses/01KCN1400JP9WYXVZBB34B13HK.jfif', 'gym', 'Gym di Bintang Residence Kotabaru dilengkapi dengan peralatan olahraga modern dan terawat, cocok untuk latihan kebugaran harian. Dengan ruangan yang bersih, nyaman, dan sirkulasi udara yang baik, fasilitas ini membantu penghuni tetap sehat dan bugar tanpa harus keluar apartemen.', NULL, '2025-12-16 19:09:41', '2025-12-16 19:09:41'),
(7, 3, 'bonuses/01KCN1400QADJCANFR4D8TNCDH.jfif', 'Laundry ', 'Fasilitas laundry di Bintang Residence Kotabaru tersedia praktis dan bersih, memudahkan penghuni dalam mencuci dan merawat pakaian. Dilengkapi mesin cuci modern dan area yang nyaman, layanan ini mendukung kebutuhan harian dengan efisien', NULL, '2025-12-16 19:09:41', '2025-12-16 19:09:41'),
(8, 4, 'bonuses/01KCN1YPQB4S8VQDBEGM19VH19.jfif', 'Makanan & Minuman ', 'Makanan dan minuman di Pelaihari Hills Resort disajikan dengan cita rasa lezat dan bahan segar, menghadirkan pilihan menu lokal dan nasional. Tamu dapat menikmati hidangan yang menggugah selera dalam suasana nyaman dengan pemandangan alam yang menenangkan.', NULL, '2025-12-16 19:24:16', '2025-12-16 19:24:16'),
(9, 4, 'bonuses/01KCN1YPQG79SCN2MZ82DHR6Z9.jfif', 'Kolam Renang', 'Kolam renang di Pelaihari Hills Resort bersih dan menyegarkan, dengan suasana alam perbukitan yang sejuk. Cocok untuk bersantai maupun berenang bersama keluarga sambil menikmati pemandangan hijau yang menenangkan.', NULL, '2025-12-16 19:24:16', '2025-12-16 19:24:16'),
(10, 4, 'bonuses/01KCN1YPQMVNM102AZS9GB3SP2.jfif', 'Spa', 'Fasilitas spa di Pelaihari Hills Resort menawarkan perawatan relaksasi yang menenangkan dengan terapis profesional. Suasana yang tenang dan alami membantu melepas penat serta memberikan pengalaman relaksasi yang menyegarkan bagi tubuh dan pikiran.', NULL, '2025-12-16 19:24:16', '2025-12-16 19:24:16'),
(11, 5, 'bonuses/01KCN2QQTBWNYWNFK5VDNYBMH7.jfif', 'Laundry', 'Fasilitas laundry di Barito Indah Motel tersedia untuk memudahkan tamu selama menginap. Layanan ini praktis, bersih, dan membantu menjaga pakaian tetap rapi, terutama bagi tamu yang menginap dalam perjalanan atau waktu singkat.', NULL, '2025-12-16 19:37:57', '2025-12-16 19:37:57'),
(12, 6, 'bonuses/01KEX9TVQEWE018YQE67VTERWZ.jfif', 'Lemari', 'Setiap kamar di CozyStay Guest House dilengkapi dengan lemari pakaian yang bersih, kokoh, dan tertata rapi, sehingga tamu dapat menyimpan pakaian dan barang pribadi dengan aman dan nyaman. Desainnya minimalis dan praktis, memudahkan tamu menjaga kerapian kamar selama menginap.', NULL, '2026-01-13 20:47:18', '2026-01-13 20:47:18'),
(13, 6, 'bonuses/01KEX9TVQRNPTBN5JVV8AM05RF.jfif', 'Wi-Fi ', 'CozyStay Guest House menyediakan akses WiFi gratis dengan koneksi stabil dan cepat di seluruh area penginapan, termasuk di dalam kamar. Fasilitas ini dirancang untuk mendukung kebutuhan tamu, baik untuk bekerja, belajar online, meeting virtual, streaming, maupun tetap terhubung dengan keluarga dan media sosial.\nDengan jaringan yang aman dan mudah diakses, tamu dapat menikmati kenyamanan maksimal tanpa khawatir koneksi terputus. Menginap di CozyStay bukan hanya nyaman untuk beristirahat, tetapi juga produktif untuk beraktivitas digital.', NULL, '2026-01-13 20:47:18', '2026-01-13 20:47:18'),
(14, 7, 'bonuses/01KF8F6AHKDWC7R6HD1HB7A7D4.jfif', 'Lemari Pakaian ', 'Tersedia Lemari Pakaian yang besar ', NULL, '2026-01-18 04:52:35', '2026-01-18 04:52:35'),
(15, 7, 'bonuses/01KF8F6AJ82SX42GH79CRVEK6G.jfif', 'Shower ', 'Shower untuk mandi', NULL, '2026-01-18 04:52:35', '2026-01-18 04:52:35'),
(16, 8, 'bonuses/01KF8FH6JJX41PR38ED8NDC0EB.jfif', 'Lemari Pakaian', 'Tersedia lemari pakaian yang besar', NULL, '2026-01-18 04:58:32', '2026-01-18 04:58:32'),
(17, 8, 'bonuses/01KF8FH6JQBB8KFN5YHJBFJ6AV.jfif', 'Mesin Cuc', 'Tersedia mesin cuci setiap kamarnya', NULL, '2026-01-18 04:58:32', '2026-01-18 04:58:32'),
(18, 9, 'bonuses/01KF8HA8EWPGMDEJ9SRW14SSN8.jpg', 'Breakfest', 'Nikmati pengalaman sarapan yang lengkap dan memuaskan di Binus Breakfast. Kami menyajikan perpaduan hidangan prasmanan (buffet) yang beragam, mulai dari autentik kuliner nusantara hingga pilihan menu internasional yang populer.', NULL, '2026-01-18 05:29:41', '2026-01-18 05:29:41'),
(19, 10, 'bonuses/01KF8HX5RW98MMZ8FS203PCNZ4.jpg', 'Kolam Renang', 'Oase Tenang di Tengah Hiruk Pikuk Kota Nikmati kesegaran instan di kolam renang kami yang dirancang sebagai pelarian sempurna dari kesibukan Jakarta. Dengan suasana yang tenang dan air yang jernih, area ini adalah tempat terbaik untuk bersantai, berjemur, atau sekadar melepas penat setelah seharian beraktivitas.', NULL, '2026-01-18 05:40:01', '2026-01-18 05:40:01'),
(20, 11, 'bonuses/01KF8JF66W4QAKWF31TS905NK4.jpg', 'Kolam Renang', 'Segarkan Diri dan Pikiran Anda Jadikan momen menginap Anda lebih berkesan dengan berenang santai di kolam renang eksklusif kami. Terletak di area yang privat dengan desain yang estetik, fasilitas ini sangat cocok bagi Anda yang ingin menjaga kebugaran atau menikmati waktu berkualitas bersama keluarga di bawah langit ibu kota.', NULL, '2026-01-18 05:49:51', '2026-01-18 05:49:51'),
(21, 12, 'bonuses/01KF8KATGGZ47BQ5HY2E6ME446.png', 'Kolam Renang', 'Segarkan Diri dan Pikiran Anda Jadikan momen menginap Anda lebih berkesan dengan berenang santai di kolam renang eksklusif kami. Terletak di area yang privat dengan desain yang estetik, fasilitas ini sangat cocok bagi Anda yang ingin menjaga kebugaran atau menikmati waktu berkualitas bersama keluarga di bawah langit ibu kota.', NULL, '2026-01-18 06:04:57', '2026-01-18 06:04:57'),
(22, 13, 'bonuses/01KF8M97HDKCMJ3J9KZY4RQ35X.jpg', 'Kolam Renang', 'Segarkan Diri dan Pikiran Anda Jadikan momen menginap Anda lebih berkesan dengan berenang santai di kolam renang eksklusif kami. Terletak di area yang privat dengan desain yang estetik, fasilitas ini sangat cocok bagi Anda yang ingin menjaga kebugaran atau menikmati waktu berkualitas bersama keluarga di bawah langit ibu kota.', NULL, '2026-01-18 06:21:33', '2026-01-18 06:21:33'),
(23, 14, 'bonuses/01KF8MY1D2KDPNAW35YY2CXKQD.jpg', 'Kolam Renang Private', 'Nikmati waktu santai tanpa gangguan di kolam renang eksklusif', NULL, '2026-01-18 06:32:55', '2026-01-18 06:32:55'),
(24, 15, 'bonuses/01KF8NKD1YWVW3PBBVR453RAH4.jpg', 'Kolam Renang', 'Segarkan Diri dan Pikiran Anda Jadikan momen menginap Anda lebih berkesan dengan berenang santai di kolam renang eksklusif kami. Terletak di area yang privat dengan desain yang estetik, fasilitas ini sangat cocok bagi Anda yang ingin menjaga kebugaran atau menikmati waktu berkualitas bersama keluarga di bawah langit ibu kota.', NULL, '2026-01-18 06:44:35', '2026-01-18 06:44:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:1;', 1768833377),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1768833377;', 1768833377),
('livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1768835089),
('livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1768835089;', 1768835089);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `image`, `name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'categories/01KC2ZJGBXY81J3QVZ5GYPEJAJ.jpeg', 'Hotel', 'hotel', NULL, '2025-12-09 18:56:19', '2025-12-09 18:56:19'),
(2, 'categories/01KC36DGW0VAYPHRVXKYGJR6D0.jfif', 'Apartemen', 'apartement', NULL, '2025-12-09 20:55:56', '2025-12-09 20:55:56'),
(3, 'categories/01KC36JB14WBGRSH8JNGYTPSZ4.jfif', 'Villa ', 'villa', NULL, '2025-12-09 20:58:34', '2025-12-09 20:58:34'),
(4, 'categories/01KCMW6PJPE29NRRS5S58FMVM6.jfif', 'Resort ', 'resort', NULL, '2025-12-16 17:43:47', '2025-12-16 17:43:47'),
(5, 'categories/01KCMWAJNXT3E04X21P9WV7FTH.jfif', 'Guest House', 'guest-house', NULL, '2025-12-16 17:45:54', '2025-12-16 17:45:54'),
(6, 'categories/01KCMWDJ20AFDSKW76FM7D155E.jfif', 'Motel', 'motel', NULL, '2025-12-16 17:47:31', '2025-12-16 17:47:31'),
(7, 'categories/01KCMWHXA1JX71FRD16G8XXEWK.jfif', 'Kos Putra ', 'kos-putra', NULL, '2025-12-16 17:49:54', '2025-12-16 17:49:54'),
(8, 'categories/01KCMWKVPK69HPCJQ82J2R4MNX.jfif', 'Kos Putri', 'kos-putri', NULL, '2025-12-16 17:50:58', '2025-12-16 17:50:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cities`
--

INSERT INTO `cities` (`id`, `image`, `name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'cities/01KC2ZF4SS9MN8CCNEM295J289.jfif', 'Banjarmasin', 'banjarmasin', NULL, '2025-12-09 18:54:29', '2025-12-09 18:54:29'),
(2, 'cities/01KCMWPVV6PTXXYPYMHSQGSHVX.jfif', 'Banjarbaru', 'banjarbaru', NULL, '2025-12-16 17:52:36', '2025-12-16 17:52:36'),
(3, 'cities/01KCMWSBSXN08NP3KP0R3N64XQ.jpg', 'Tapin', 'tapin', NULL, '2025-12-16 17:53:58', '2025-12-16 17:53:58'),
(4, 'cities/01KCMWV8HJFS4DC6NXJ6Z25NYG.jpg', 'Marabahan', 'marabahan', NULL, '2025-12-16 17:55:00', '2025-12-16 17:55:00'),
(5, 'cities/01KCMWX2SVADNM2F0WYPSJKTNA.jpg', 'Kandangan', 'kandangan', NULL, '2025-12-16 17:56:00', '2025-12-16 17:56:00'),
(6, 'cities/01KCMWZMK1JQQ4HWA5G66EHP3N.png', 'Kota Baru', 'kota-baru', NULL, '2025-12-16 17:57:24', '2025-12-16 17:57:24'),
(7, 'cities/01KCMX18QJWCP59K73F0XMXDD3.jfif', 'Pelaihari', 'pelaihari', NULL, '2025-12-16 17:58:17', '2025-12-16 17:58:17'),
(8, 'cities/01KCMX31D57JHB7NVJ2B1WGWD7.jpg', 'Martapura', 'martapura', NULL, '2025-12-16 17:59:15', '2025-12-16 17:59:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jobs`
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
-- Struktur dari tabel `job_batches`
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_26_014805_create_cities_table', 1),
(5, '2025_11_26_014824_create_categories_table', 1),
(6, '2025_11_26_014834_create_boarding_houses_table', 1),
(7, '2025_11_26_014847_create_rooms_table', 1),
(8, '2025_11_26_014858_create_room_images_table', 1),
(9, '2025_11_26_014919_create_bonuses_table', 1),
(10, '2025_11_26_014928_create_testimonials_table', 1),
(11, '2025_11_26_014940_create_transactions_table', 1),
(12, '2025_12_10_030708_add_name_column_to_testimonials_table', 2),
(13, '2026_01_08_054333_create_personal_access_tokens_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `boarding_house_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `room_type` varchar(255) NOT NULL,
  `square_feet` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `price_per_month` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rooms`
--

INSERT INTO `rooms` (`id`, `boarding_house_id`, `name`, `room_type`, `square_feet`, `capacity`, `price_per_month`, `is_available`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Deluxe Room', 'A', 66, 2, 15000000, 1, NULL, '2025-12-09 19:03:47', '2026-01-18 06:52:23'),
(2, 2, 'Deluxe, Family', 'A', 3, 6, 3000000, 1, NULL, '2025-12-16 18:46:02', '2026-01-13 20:29:34'),
(3, 3, 'convertible ', 'A', 12, 4, 60000000, 1, NULL, '2025-12-16 19:09:41', '2026-01-13 20:31:08'),
(4, 4, ' Suite Room', 'A', 3, 2, 45000000, 1, NULL, '2025-12-16 19:24:16', '2026-01-13 20:32:11'),
(5, 5, 'Standar ', 'B', 1, 1, 3000000, 1, NULL, '2025-12-16 19:37:57', '2026-01-13 20:33:04'),
(6, 6, 'Cozy Standard', 'A', 12, 2, 100000, 1, NULL, '2026-01-13 20:47:18', '2026-01-13 20:47:18'),
(7, 7, 'Kamar 1', 'B', 1, 1, 800000, 1, NULL, '2026-01-18 04:52:35', '2026-01-18 04:53:07'),
(8, 8, 'Kamar Putri 1', 'A', 1, 1, 800000, 1, NULL, '2026-01-18 04:58:32', '2026-01-18 04:58:32'),
(9, 9, 'Dream Room', 'Premium', 5, 6, 3000000, 1, NULL, '2026-01-18 05:29:41', '2026-01-18 05:29:41'),
(10, 10, 'Heaven', 'VVIP+', 6, 7, 2500000, 1, NULL, '2026-01-18 05:40:01', '2026-01-18 05:43:42'),
(11, 11, 'King Room', 'Deluxe', 8, 5, 4000000, 1, NULL, '2026-01-18 05:49:51', '2026-01-18 05:49:51'),
(12, 12, 'Queen Room', 'Deluxe', 7, 4, 3200000, 1, NULL, '2026-01-18 06:04:57', '2026-01-18 06:04:57'),
(13, 13, 'King Room', 'Deluxe', 6, 4, 2300000, 1, NULL, '2026-01-18 06:21:33', '2026-01-18 06:21:33'),
(14, 14, 'Sadewa', 'Premium', 7, 4, 2500000, 1, NULL, '2026-01-18 06:32:55', '2026-01-18 06:32:55'),
(15, 15, 'KIng Room', 'VIP', 5, 3, 2000000, 1, NULL, '2026-01-18 06:44:35', '2026-01-18 06:44:35'),
(16, 1, 'Premium Room', 'B', 66, 4, 15000000, 1, NULL, '2026-01-18 06:51:29', '2026-01-18 06:52:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `room_images`
--

CREATE TABLE `room_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `room_images`
--

INSERT INTO `room_images` (`id`, `room_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'room-images/01KC3004ZZGE1VQS59Z358KPFR.jfif', NULL, '2025-12-09 19:03:47', '2025-12-09 19:03:47'),
(2, 2, 'room-images/01KCMZRP6YK9SYEAF7A8XDWVPS.jfif', NULL, '2025-12-16 18:46:02', '2025-12-16 18:46:02'),
(3, 3, 'room-images/01KCN1400Z5H0FQNYBYS6SJCFK.jfif', NULL, '2025-12-16 19:09:41', '2025-12-16 19:09:41'),
(4, 4, 'room-images/01KCN1YPRFZTSPYSQEDPWD6H23.jfif', NULL, '2025-12-16 19:24:16', '2025-12-16 19:24:16'),
(5, 5, 'room-images/01KCN2QQTMF1YJDPZJ1N4KYVMS.jfif', NULL, '2025-12-16 19:37:57', '2025-12-16 19:37:57'),
(6, 1, 'room-images/01KDS39X5D1XHCF9CTJCJYN9BM.jfif', NULL, '2025-12-30 19:20:31', '2025-12-30 19:20:31'),
(7, 1, 'room-images/01KDS3RRKY5XHYQYNJGNVAKCDX.jfif', NULL, '2025-12-30 19:28:38', '2025-12-30 19:28:38'),
(8, 2, 'room-images/01KEX8RYX8ZF3SXAJCZTWXG82C.jfif', NULL, '2026-01-13 20:28:47', '2026-01-13 20:28:47'),
(9, 3, 'room-images/01KEX8X84KVE9B0S7FHGQFR73M.jfif', NULL, '2026-01-13 20:31:08', '2026-01-13 20:31:08'),
(10, 4, 'room-images/01KEX8Z5XF6VZJCKMX1FJ416YN.jfif', NULL, '2026-01-13 20:32:11', '2026-01-13 20:32:11'),
(11, 5, 'room-images/01KEX90SCMBPR9ECM1KRV3WPWP.jfif', NULL, '2026-01-13 20:33:04', '2026-01-13 20:33:04'),
(12, 6, 'room-images/01KEX9TVQZAYP0D69K63877KAH.jfif', NULL, '2026-01-13 20:47:18', '2026-01-13 20:47:18'),
(13, 6, 'room-images/01KEX9TVR9YCMTQEZSVZW31ZWT.jfif', NULL, '2026-01-13 20:47:18', '2026-01-13 20:47:18'),
(14, 7, 'room-images/01KF8F6AJRJEM0FQ78WPA2906B.jfif', NULL, '2026-01-18 04:52:35', '2026-01-18 04:52:35'),
(15, 7, 'room-images/01KF8F6AK95S7TK3QAM29V33E7.jfif', NULL, '2026-01-18 04:52:35', '2026-01-18 04:52:35'),
(16, 8, 'room-images/01KF8FH6K2MZK2CFQT52Q7N0QA.jfif', NULL, '2026-01-18 04:58:32', '2026-01-18 04:58:32'),
(17, 8, 'room-images/01KF8FH6KAVJ0NJYB33KR50SN2.jfif', NULL, '2026-01-18 04:58:32', '2026-01-18 04:58:32'),
(18, 9, 'room-images/01KF8HA8F5S5H297G7WDB08XT0.jpg', NULL, '2026-01-18 05:29:41', '2026-01-18 05:29:41'),
(19, 9, 'room-images/01KF8HA8FETM250EJ43YR7H4GF.jpg', NULL, '2026-01-18 05:29:41', '2026-01-18 05:29:41'),
(20, 10, 'room-images/01KF8HX5S3KR841B99FDGY3Y4M.jpg', NULL, '2026-01-18 05:40:01', '2026-01-18 05:40:01'),
(21, 10, 'room-images/01KF8J3FYJE9W5FBG1MW0V84V9.jpg', NULL, '2026-01-18 05:43:28', '2026-01-18 05:43:28'),
(22, 11, 'room-images/01KF8JF671Q3VX5JREFEV7KBHK.jpg', NULL, '2026-01-18 05:49:51', '2026-01-18 05:49:51'),
(23, 11, 'room-images/01KF8JF6763D069TCTV5JYVXW7.jpg', NULL, '2026-01-18 05:49:51', '2026-01-18 05:49:51'),
(24, 12, 'room-images/01KF8KATH5DC7ZY629WZB3BHJN.png', NULL, '2026-01-18 06:04:57', '2026-01-18 06:04:57'),
(25, 12, 'room-images/01KF8KATHN3Q92C3EZF48490SG.jpg', NULL, '2026-01-18 06:04:57', '2026-01-18 06:04:57'),
(26, 13, 'room-images/01KF8M97HMSP0M7HQFSNN7EJ9A.jpg', NULL, '2026-01-18 06:21:33', '2026-01-18 06:21:33'),
(27, 13, 'room-images/01KF8M97HSXCBZ8ZD4S04GR932.jpg', NULL, '2026-01-18 06:21:33', '2026-01-18 06:21:33'),
(28, 14, 'room-images/01KF8MY1DD404XANDVVWCEMDNY.jpg', NULL, '2026-01-18 06:32:55', '2026-01-18 06:32:55'),
(29, 14, 'room-images/01KF8MY1DNCDMBKA3M32FFX12Q.jpg', NULL, '2026-01-18 06:32:55', '2026-01-18 06:32:55'),
(30, 15, 'room-images/01KF8NKD2472Y0GT67S6XMBR7P.jpg', NULL, '2026-01-18 06:44:35', '2026-01-18 06:44:35'),
(31, 15, 'room-images/01KF8NKD2A26V0HD5A05Y5H35J.jpg', NULL, '2026-01-18 06:44:35', '2026-01-18 06:44:35'),
(32, 16, 'room-images/01KF8P01GY7SR255K7DS2XKTDT.jpg', NULL, '2026-01-18 06:51:29', '2026-01-18 06:51:29'),
(33, 16, 'room-images/01KF8P01H77T146KVYK2KZKF41.jpg', NULL, '2026-01-18 06:51:29', '2026-01-18 06:51:29'),
(34, 16, 'room-images/01KF8P01HCPQSDZNZ6WMDY1JBG.jpg', NULL, '2026-01-18 06:51:29', '2026-01-18 06:51:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
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
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('bgeknFimTc61pMv7Jquwoc11QgtcVka4g6mJejYC', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNlVoWjQ1TkVQOHpNN0dsQVlSZ29tTGxRRXFXUngyYm1jVzRJNDd1YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1768985117),
('NGs8TjJPMWXCvFhI5JJiTkeCZ69b5vSb5rr0CP5K', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiYWtJWG1HaWpoVHdESkZhV21kMUxKc1pNcG0xNmJtMXFCeHVISXJ3bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ib2FyZGluZy1ob3VzZS9nYWxheHkvcm9vbXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkS200NkZRTXlSMEJxdGk2TVl4VWR4T01nZHBLYnpBWkJMU2dlSHJuL2xNQ0Y4SHN6dGdobVMiO3M6MTE6InRyYW5zYWN0aW9uIjthOjM6e3M6MTc6ImJvYXJkaW5nX2hvdXNlX2lkIjtzOjE6IjEiO3M6NjoiX3Rva2VuIjtzOjQwOiJha0lYbUdpamhUd0RKRmFXbWQxTEpzWk1wbTE2Ym0xcUJ4dUhJcndsIjtzOjc6InJvb21faWQiO3M6MToiMSI7fXM6NjoidGFibGVzIjthOjM6e3M6NDA6Ijk2YmU2YzE1NzRhY2M1M2FjNjAzNzU5NjkwMGQxYjM1X2NvbHVtbnMiO2E6Njp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjk6InRodW1ibmFpbCI7czo1OiJsYWJlbCI7czo5OiJUaHVtYm5haWwiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjQ6Im5hbWUiO3M6NToibGFiZWwiO3M6NDoiTmFtZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6OToiY2l0eS5uYW1lIjtzOjU6ImxhYmVsIjtzOjQ6IkNpdHkiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEzOiJjYXRlZ29yeS5uYW1lIjtzOjU6ImxhYmVsIjtzOjg6IkNhdGVnb3J5IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo1OiJwcmljZSI7czo1OiJsYWJlbCI7czo1OiJQcmljZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjU7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImNyZWF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IkNyZWF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO319czo0MDoiNmM0NDQzMjQyY2EyNzEzYzQ3YTFmY2IwMDA2MmI1ZDNfY29sdW1ucyI7YTo2OntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NToicGhvdG8iO3M6NToibGFiZWwiO3M6NToiUGhvdG8iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjQ6Im5hbWUiO3M6NToibGFiZWwiO3M6NDoiTmFtZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTg6ImJvYXJkaW5nSG91c2UubmFtZSI7czo1OiJsYWJlbCI7czoxNDoiQm9hcmRpbmcgSG91c2UiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjc6ImNvbnRlbnQiO3M6NToibGFiZWwiO3M6NzoiQ29udGVudCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjQ7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NjoicmF0aW5nIjtzOjU6ImxhYmVsIjtzOjY6IlJhdGluZyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjU7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImNyZWF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IkNyZWF0ZWQgQXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO319czo0MDoiMTY0NmVlZjU1NDhkNTIyMGUzNzA4OGM5MGI3MjlkZDRfY29sdW1ucyI7YTo4OntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NDoiY29kZSI7czo1OiJsYWJlbCI7czo0OiJDb2RlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxODoiYm9hcmRpbmdIb3VzZS5uYW1lIjtzOjU6ImxhYmVsIjtzOjE0OiJCb2FyZGluZyBob3VzZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6OToicm9vbS5uYW1lIjtzOjU6ImxhYmVsIjtzOjQ6IlJvb20iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjQ6Im5hbWUiO3M6NToibGFiZWwiO3M6NDoiTmFtZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjQ7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTQ6InBheW1lbnRfbWV0aG9kIjtzOjU6ImxhYmVsIjtzOjE0OiJQYXltZW50IG1ldGhvZCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjU7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTQ6InBheW1lbnRfc3RhdHVzIjtzOjU6ImxhYmVsIjtzOjE0OiJQYXltZW50IHN0YXR1cyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjY7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTI6InRvdGFsX2Ftb3VudCI7czo1OiJsYWJlbCI7czoxMjoiVG90YWwgYW1vdW50IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxNjoidHJhbnNhY3Rpb25fZGF0ZSI7czo1OiJsYWJlbCI7czoxNjoiVHJhbnNhY3Rpb24gZGF0ZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO319fXM6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1768745505),
('snPZy0IYF4GeW2RwaXTGmRIATGehEyCRUKNmmmpY', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMmpTSFNvN0lCZkpwU2gyTVVJakZsYld6TkFyRXM3Tnhkd0dWMVF1SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRLbTQ2RlFNeVIwQnF0aTZNWXhVZHhPTWdkcEtiekFaQkxTZ2VIcm4vbE1DRjhIc3p0Z2htUyI7czo2OiJ0YWJsZXMiO2E6MTp7czo0MDoiOTZiZTZjMTU3NGFjYzUzYWM2MDM3NTk2OTAwZDFiMzVfY29sdW1ucyI7YTo2OntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6OToidGh1bWJuYWlsIjtzOjU6ImxhYmVsIjtzOjk6IlRodW1ibmFpbCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NDoibmFtZSI7czo1OiJsYWJlbCI7czo0OiJOYW1lIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo5OiJjaXR5Lm5hbWUiO3M6NToibGFiZWwiO3M6NDoiQ2l0eSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTM6ImNhdGVnb3J5Lm5hbWUiO3M6NToibGFiZWwiO3M6ODoiQ2F0ZWdvcnkiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo0O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjU6InByaWNlIjtzOjU6ImxhYmVsIjtzOjU6IlByaWNlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoiY3JlYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiQ3JlYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fX19fQ==', 1768925668),
('TjHJSaI5VCzcGAs1LqJCxpigmzWNjLH1Uu0bspTI', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZU82cml3N0pLNTBZNGdEN3Q1NFZLTHBXVUV6cjFVNEl0dEZrcWYxdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769003772),
('TtaaE4idwudJJmRjQuW7t9a040D8HUJHW7pbExZJ', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoibklmblNwbERNTUJYcWhmU1pIdE0yZ1JiUXRtNnlHRTR2UFRHaGhFUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9jaXRpZXMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkS200NkZRTXlSMEJxdGk2TVl4VWR4T01nZHBLYnpBWkJMU2dlSHJuL2xNQ0Y4SHN6dGdobVMiO3M6NjoidGFibGVzIjthOjE6e3M6NDA6ImFlOTZmMGQzY2I1NGFlZGU0MTk1NmVjNmQ4MWVjYWNhX2NvbHVtbnMiO2E6Mzp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjU6ImltYWdlIjtzOjU6ImxhYmVsIjtzOjU6IkltYWdlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJuYW1lIjtzOjU6ImxhYmVsIjtzOjQ6Ik5hbWUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToyO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjQ6InNsdWciO3M6NToibGFiZWwiO3M6NDoiU2x1ZyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO319fX0=', 1768836082),
('yXUBC1XLyWa9RPRa7HD8nHgrJIBDQK2SX09flTeH', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0dTVFlNaHlDQ2pKZjNVTmhEWGFRbU5ieXRTUkhFaXY5Yjd0N0RMVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS9ob3RlbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768970544);

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `boarding_house_id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `testimonials`
--

INSERT INTO `testimonials` (`id`, `boarding_house_id`, `photo`, `name`, `content`, `rating`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'testimonials/01KC344E4M6AZDABYZFHG5SRW8.jfif', 'Andi', 'Sangat luas dan nyaman tempatnya bersih dan pemandangan dilantai atas juga sangat bagus sertia makanan dan minuman yang mereka sediakan enak ', 5, NULL, '2025-12-09 20:16:01', '2025-12-09 20:16:01'),
(2, 3, 'testimonials/01KF8DV0H632WE0BJSEZR19VS9.jfif', 'Mingyu', 'Apartemennya bersih, nyaman, dan lokasinya strategis. Fasilitas lengkap dan pelayanannya ramah. Sangat recommended!', 5, NULL, '2026-01-18 04:28:56', '2026-01-18 04:28:56'),
(3, 4, 'testimonials/01KF8DX6FR83BJF669NCFBT7WQ.jfif', 'Lisa', 'Lokasi sangat strategis, dekat dengan minimarket dan tempat makan. Akses mudah ke mana-mana.', 5, NULL, '2026-01-18 04:30:08', '2026-01-18 04:30:08'),
(4, 2, 'testimonials/01KF8E09N43NNHN75VSQ0Z5DX6.jfif', 'Jennie', 'Tempatnya asri dan sejuk, bikin betah. Sangat cocok untuk healing', 5, NULL, '2026-01-18 04:31:49', '2026-01-18 04:31:49'),
(5, 5, 'testimonials/01KF8E3154CQ35BQ776HS1MMXY.jfif', 'Kayla', 'Harga terjangkau, kamar rapi, dan fasilitas cukup lengkap untuk kebutuhan menginap', 5, NULL, '2026-01-18 04:33:19', '2026-01-18 04:33:19'),
(6, 6, 'testimonials/01KF8E4KX1KKT67TYE6RQJEG7E.jfif', 'Lala', 'Lokasi strategis dan mudah dijangkau. Parkiran juga luas.', 4, NULL, '2026-01-18 04:34:11', '2026-01-18 04:34:11'),
(7, 4, 'testimonials/01KF8E6MBJJD47JS8FSZNZA0DT.jfif', 'Renald', 'Kolam renang bagus, kamar nyaman, dan pemandangan luar biasa. Pengalaman menginap sangat menyenangkan.', 5, NULL, '2026-01-18 04:35:17', '2026-01-18 04:35:17'),
(8, 1, 'testimonials/01KF8E8SQ38FFZRGWTNEZK31J9.jfif', 'Zafier', 'Hotelnya bagus, bersih, dan sangat nyaman. Pelayanan ramah dan fasilitas lengkap.', 5, NULL, '2026-01-18 04:36:28', '2026-01-18 04:36:28'),
(9, 4, 'testimonials/01KF8EATDN5HWAW9CHECEP35QQ.jfif', 'Carmen', 'Resortnya keren, nyaman, dan bikin betah. Pasti ingin balik lagi 👍', 5, NULL, '2026-01-18 04:37:34', '2026-01-18 04:37:34'),
(10, 2, 'testimonials/01KF8ECG738GT1ZCSN3TGX2FK3.jfif', 'Eunwoo', 'Villanya bagus, nyaman, dan sesuai ekspektasi. Puas menginap di sini 👍', 5, NULL, '2026-01-18 04:38:29', '2026-01-18 04:38:29'),
(11, 1, 'testimonials/01KF8EF1B65WZ9D82YZ0032318.jfif', 'Jisoo', 'Fasilitas bagus, sarapan enak, dan pelayanan cepat tanggap.', 5, NULL, '2026-01-18 04:39:52', '2026-01-18 04:39:52'),
(12, 3, 'testimonials/01KF8EGSN4W8T15NWWDFG3XD5P.jfif', 'Sooyaa', 'Tempatnya nyaman dan tenang, cocok untuk istirahat. Kamarnya rapi dan AC dingin', 5, NULL, '2026-01-18 04:40:50', '2026-01-18 04:40:50'),
(13, 9, 'testimonials/01KFBAYNKWB4J87TRZTHX3ADJQ.png', 'Annisa', 'Hotelnya bagus dan nyaman', 4, NULL, '2026-01-19 07:36:13', '2026-01-19 07:36:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `boarding_house_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `payment_method` enum('down_payment','full_payment') DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `start_date` date NOT NULL,
  `duration` int(11) NOT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `code`, `boarding_house_id`, `room_id`, `name`, `email`, `phone_number`, `payment_method`, `payment_status`, `start_date`, `duration`, `total_amount`, `transaction_date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1677', 1, 1, 'Andi', 'andi@gmail.com', '0872782', 'full_payment', NULL, '2025-12-12', 6, 1000000, '2025-12-11', NULL, '2025-12-09 20:03:25', '2025-12-09 20:03:25'),
(9, 'NGKBWA232392', 1, 1, 'Halimatus Sa\'diah', 'Atusatus019@gmail.com', '08192787', 'down_payment', 'pending', '2026-01-07', 2, 10080000, '2026-01-07', NULL, '2026-01-06 17:56:06', '2026-01-06 17:56:06'),
(10, 'NGKBWA849870', 1, 1, 'Halimatus Sa\'diah', 'Atusatus019@gmail.com', '08158595', 'full_payment', 'pending', '2026-01-07', 3, 50400000, '2026-01-07', NULL, '2026-01-06 19:27:29', '2026-01-06 19:27:29'),
(11, 'NGKBWA479091', 1, 1, 'Bunga', 'Bunga12@gmail.com', '08786548', 'full_payment', 'pending', '2026-01-07', 2, 33600000, '2026-01-07', NULL, '2026-01-06 19:29:41', '2026-01-06 19:29:41'),
(12, 'NGKBWA326908', 1, 1, 'Cantika', 'Cantika@gmail.com', '0999887', 'full_payment', 'pending', '2026-01-07', 2, 33600000, '2026-01-07', NULL, '2026-01-06 20:35:19', '2026-01-06 20:35:19'),
(13, 'NGKBWA486790', 1, 1, 'Halimatus Sa\'diah', 'atusatus019@gmail.com', '081528449001', 'full_payment', 'pending', '2026-01-07', 3, 50400000, '2026-01-07', NULL, '2026-01-06 20:38:17', '2026-01-06 20:38:17'),
(14, 'NGKBWA507649', 1, 1, 'wahyu', 'wahyu123@gmail.com', '0856573', 'full_payment', 'pending', '2026-01-07', 2, 33600000, '2026-01-07', NULL, '2026-01-07 07:25:20', '2026-01-07 07:25:20'),
(15, 'NGKBWA612377', 1, 1, 'Atus', 'Atus123@gmail.com', '1111', 'full_payment', 'pending', '2026-01-08', 2, 33600000, '2026-01-08', NULL, '2026-01-07 22:08:36', '2026-01-07 22:08:36'),
(16, 'NGKBWA367864', 1, 1, 'Atus Cantikk', 'Atusatus019@gmail.com', '2222', 'full_payment', 'pending', '2026-01-08', 2, 33600000, '2026-01-08', NULL, '2026-01-07 23:26:42', '2026-01-07 23:26:42'),
(17, 'NGKBWA787783', 2, 2, 'Lily', 'lili@gmail.com', '10987', 'full_payment', 'pending', '2026-01-08', 1, 3360000, '2026-01-08', NULL, '2026-01-08 05:58:59', '2026-01-08 05:58:59'),
(18, 'NGKBWA734692', 2, 2, 'Lily', 'lili@gmail.com', '908765', 'full_payment', 'success', '2026-01-08', 1, 3360000, '2026-01-08', NULL, '2026-01-08 06:04:50', '2026-01-08 06:13:02'),
(19, 'NGKBWA259272', 1, 1, 'Halimatus Sa\'diah', 'atusatus019@gmail.com', '081528449001', 'down_payment', 'pending', '2026-01-08', 2, 10080000, '2026-01-08', NULL, '2026-01-08 06:18:52', '2026-01-08 06:18:52'),
(20, 'NGKBWA431767', 1, 1, 'Bunga', 'Bunga12@gmail.com', '33333', 'down_payment', 'success', '2026-01-08', 2, 10080000, '2026-01-08', NULL, '2026-01-08 06:29:35', '2026-01-08 06:30:08'),
(21, 'NGKBWA161596', 2, 2, 'Kayla', 'Kayla66@gmail.com', '087655544', 'full_payment', 'pending', '2026-01-08', 1, 3360000, '2026-01-08', NULL, '2026-01-08 06:32:04', '2026-01-08 06:32:04'),
(22, 'NGKBWA210589', 2, 2, 'Lala', 'lala11@gmail.com', '656443', 'full_payment', 'success', '2026-01-08', 2, 6720000, '2026-01-08', NULL, '2026-01-08 06:43:37', '2026-01-08 06:44:10'),
(23, 'NGKBWA114865', 1, 1, 'Dion', 'Dionsks@gmail.com', '085464683', 'down_payment', 'success', '2026-01-08', 1, 5040000, '2026-01-08', NULL, '2026-01-08 06:45:37', '2026-01-08 06:46:31'),
(24, 'NGKBWA983072', 4, 4, 'Willie', 'wilwil11@gmail.com', '66666', 'down_payment', 'success', '2026-01-14', 2, 30240000, '2026-01-14', NULL, '2026-01-13 17:49:01', '2026-01-13 17:49:42'),
(25, 'NGKBWA390776', 4, 4, 'Andini', 'andiniii3@gmail.com', '99999', 'full_payment', 'pending', '2026-01-14', 3, 151200000, '2026-01-14', NULL, '2026-01-13 18:03:50', '2026-01-13 18:03:50'),
(26, 'NGKBWA717811', 1, 1, 'Andini', 'andiniii3@gmail.com', '908765', 'full_payment', 'success', '2026-01-14', 3, 50400000, '2026-01-14', NULL, '2026-01-13 18:07:21', '2026-01-13 18:07:50'),
(27, 'NGKBWA511847', 2, 2, 'Raihan', 'rai77@gmail.com', '264274782', 'full_payment', 'success', '2026-01-14', 2, 6720000, '2026-01-14', NULL, '2026-01-13 18:31:43', '2026-01-13 18:32:08'),
(28, 'NGKBWA792397', 1, 1, 'Ari', 'rii65@gmail.com', '086453', 'full_payment', 'success', '2026-01-14', 2, 33600000, '2026-01-14', NULL, '2026-01-13 18:51:34', '2026-01-13 18:52:04'),
(29, 'NGKBWA192131', 2, 2, 'Karin', 'rin33@gmail.com', '058743', 'down_payment', 'success', '2026-01-14', 2, 2016000, '2026-01-14', NULL, '2026-01-13 19:08:31', '2026-01-13 19:09:14'),
(30, 'NGKBWA275524', 1, 1, 'anita', 'nit34@gmail.com', '098656', 'down_payment', 'pending', '2026-01-16', 3, 15120000, '2026-01-16', NULL, '2026-01-16 07:59:37', '2026-01-16 07:59:37'),
(31, 'NGKBWA555914', 1, 1, 'anita', 'nit34@gmail.com', '908765', 'full_payment', 'pending', '2026-01-16', 1, 16800000, '2026-01-16', NULL, '2026-01-16 08:22:01', '2026-01-16 08:22:01'),
(32, 'NGKBWA646017', 5, 5, 'Arash', 'rash5@gmail.com', '098876765', 'full_payment', 'success', '2026-01-16', 3, 10080000, '2026-01-16', NULL, '2026-01-16 08:25:44', '2026-01-16 08:26:32'),
(33, 'NGKBWA115124', 5, 5, 'Rina', 'rina4@gmail.om', '08753442', 'down_payment', 'success', '2026-01-17', 2, 2016000, '2026-01-17', NULL, '2026-01-16 19:53:43', '2026-01-16 19:54:36'),
(34, 'NGKBWA819628', 1, 1, 'Rania', 'Rania@gmail.com', '087343343', 'full_payment', 'success', '2026-01-17', 5, 84000000, '2026-01-17', NULL, '2026-01-16 20:23:58', '2026-01-16 20:24:20'),
(35, 'NGKBWA585411', 4, 4, 'Bella', 'bel@gmail.com', '08111111', 'full_payment', 'success', '2026-01-18', 2, 100800000, '2026-01-18', NULL, '2026-01-17 23:29:06', '2026-01-17 23:29:43'),
(36, 'NGKBWA111375', 1, 1, 'Halimatus Sa\'diah', 'atusatus019@gmail.com', '081528449001', 'full_payment', 'pending', '2026-01-19', 1, 16800000, '2026-01-19', '2026-01-19 07:16:20', '2026-01-19 07:14:58', '2026-01-19 07:16:20'),
(37, 'NGKBWA825715', 1, 1, 'Halimatus Sa\'diah', 'atusatus019@gmail.com', '081528449001', 'full_payment', 'pending', '2026-01-19', 2, 33600000, '2026-01-19', '2026-01-19 07:17:16', '2026-01-19 07:16:46', '2026-01-19 07:17:16'),
(38, 'NGKBWA888457', 1, 1, 'aries', 'ris1234@gmail.com', '085555', 'down_payment', 'success', '2026-01-19', 2, 10080000, '2026-01-19', NULL, '2026-01-19 07:18:05', '2026-01-19 07:20:27'),
(39, 'NGKBWA354440', 1, 16, 'Namira', 'namira5@gmail.com', '087777', 'full_payment', 'success', '2026-01-20', 1, 16800000, '2026-01-20', NULL, '2026-01-20 08:51:01', '2026-01-20 08:51:41'),
(40, 'NGKBWA692407', 15, 15, 'Kamal', 'mal@gmail.com', '127809-0765', 'down_payment', 'success', '2026-01-20', 3, 2016000, '2026-01-20', NULL, '2026-01-20 09:09:22', '2026-01-20 09:11:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2025-12-09 18:21:42', '$2y$12$jC/wehEODd00xInHaVEe9.nV07Gq1dq0Wmi1rMW71VgTpUdPErbPa', 'DIwX0rIZed', '2025-12-09 18:21:42', '2025-12-09 18:21:42'),
(2, 'atus', 'atus@gmail.com', NULL, '$2y$12$Km46FQMyR0Bqti6MYxUdxOMgdpKbzAZBLSgeHrn/lMCF8HsztghmS', 'itzrGaIaqXBotVrNnawawS7ZGuaWO4Jpfxr7Zs0DiOjG9SyvDCwQjALk0cwd', '2025-12-09 18:22:22', '2025-12-09 18:22:22');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `boarding_houses`
--
ALTER TABLE `boarding_houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boarding_houses_city_id_foreign` (`city_id`),
  ADD KEY `boarding_houses_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `bonuses`
--
ALTER TABLE `bonuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bonuses_boarding_house_id_foreign` (`boarding_house_id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indeks untuk tabel `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_boarding_house_id_foreign` (`boarding_house_id`);

--
-- Indeks untuk tabel `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_images_room_id_foreign` (`room_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_boarding_house_id_foreign` (`boarding_house_id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_boarding_house_id_foreign` (`boarding_house_id`),
  ADD KEY `transactions_room_id_foreign` (`room_id`);

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
-- AUTO_INCREMENT untuk tabel `boarding_houses`
--
ALTER TABLE `boarding_houses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `bonuses`
--
ALTER TABLE `bonuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `room_images`
--
ALTER TABLE `room_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `boarding_houses`
--
ALTER TABLE `boarding_houses`
  ADD CONSTRAINT `boarding_houses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `boarding_houses_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `bonuses`
--
ALTER TABLE `bonuses`
  ADD CONSTRAINT `bonuses_boarding_house_id_foreign` FOREIGN KEY (`boarding_house_id`) REFERENCES `boarding_houses` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_boarding_house_id_foreign` FOREIGN KEY (`boarding_house_id`) REFERENCES `boarding_houses` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_boarding_house_id_foreign` FOREIGN KEY (`boarding_house_id`) REFERENCES `boarding_houses` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_boarding_house_id_foreign` FOREIGN KEY (`boarding_house_id`) REFERENCES `boarding_houses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
