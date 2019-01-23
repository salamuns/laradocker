-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: database
-- Generation Time: Jan 22, 2019 at 04:56 AM
-- Server version: 5.6.42
-- PHP Version: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dockerApp`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` VALUES
(1, 'Sari Tania Puspita', NULL, NULL),
(2, 'Diki Alfarabi Hadi', NULL, NULL),
(3, 'Luluh Sinaga', NULL, NULL),
(4, 'Lamar Putra', NULL, NULL),
(5, 'Banawi Kuswoyo', NULL, NULL),
(6, 'Ratih Wijayanti', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `anggota_hadiah`
--

CREATE TABLE `anggota_hadiah` (
  `id` int(10) UNSIGNED NOT NULL,
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `hadiah_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota_hadiah`
--

INSERT INTO `anggota_hadiah` VALUES
(1, 6, 6, NULL, NULL),
(2, 2, 5, NULL, NULL),
(3, 6, 10, NULL, NULL),
(4, 3, 4, NULL, NULL),
(5, 3, 6, NULL, NULL),
(6, 1, 4, NULL, NULL),
(7, 4, 11, NULL, NULL),
(8, 5, 5, NULL, NULL),
(9, 2, 9, NULL, NULL),
(10, 6, 6, NULL, NULL),
(11, 3, 2, NULL, NULL),
(12, 2, 3, NULL, NULL),
(13, 1, 8, NULL, NULL),
(14, 6, 8, NULL, NULL),
(15, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` VALUES
(1, 'Placeat saepe ea possimus provident quos est molestiae reiciendis.', NULL, NULL),
(2, 'Totam laudantium molestiae similique sit.', NULL, NULL),
(3, 'Aut consequatur ducimus ut non voluptatem voluptas.', NULL, NULL),
(4, 'Ad sit voluptatem qui ut dolorem.', NULL, NULL),
(5, 'Qui consequatur eum fuga corrupti.', NULL, NULL),
(6, 'Quos nesciunt blanditiis amet odio.', NULL, NULL),
(7, 'Ex doloremque consequuntur velit alias repellendus ullam.', NULL, NULL),
(8, 'Perspiciatis a quo beatae nobis et suscipit illo.', NULL, NULL),
(9, 'Maiores voluptate animi est enim totam.', NULL, NULL),
(10, 'Rerum expedita inventore nulla voluptates perferendis placeat.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` VALUES
(1, 'Salamun', 43, NULL, NULL, NULL),
(2, 'Fitria Gilda Hastuti S.Pd', 40, NULL, NULL, NULL),
(3, 'Ana Mayasari S.Gz', 34, NULL, NULL, NULL),
(4, 'Cemeti Gunarto', 33, NULL, NULL, NULL),
(5, 'Gangsa Samosir', 41, NULL, NULL, NULL),
(6, 'Salwa Wastuti', 44, NULL, NULL, NULL),
(7, 'Cici Oliva Puspita', 37, NULL, NULL, NULL),
(8, 'Dartono Kusumo', 36, NULL, NULL, NULL),
(9, 'Hardi Asmadi Uwais S.Ked', 26, NULL, NULL, NULL),
(10, 'Gina Halimah', 39, NULL, NULL, NULL);
-- --------------------------------------------------------

--
-- Table structure for table `hadiah`
--

CREATE TABLE `hadiah` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_hadiah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hadiah`
--

INSERT INTO `hadiah` VALUES
(1, 'Kulkas', NULL, NULL),
(2, 'Lemari', NULL, NULL),
(3, 'Rumah', NULL, NULL),
(4, 'Mobil', NULL, NULL),
(5, 'Sepeda Motor', NULL, NULL),
(6, 'Pulpen', NULL, NULL),
(7, 'Tas', NULL, NULL),
(8, 'Sepatu', NULL, NULL),
(9, 'Voucher', NULL, NULL),
(10, 'Mouse', NULL, NULL),
(11, 'Laptop', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` VALUES
(2, '2019_01_21_044313_create_pegawai_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `pegawai_nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pegawai_jabatan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pegawai_umur` int(11) NOT NULL,
  `pegawai_alamat` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` VALUES
(1, 'Salamun', 'Koordinator', 43, 'GDC Gardenia Depok'),
(2, 'Kuswanto', 'Staff IT', 42, 'Parung Bogor'),
(3, 'Joni', 'Web Designer', 25, 'Jl. Panglateh'),
(4, 'Maida Uyainah', 'consequatur', 27, 'Gg. Jend. A. Yani No. 934, Administrasi Jakarta Timur 20074, JaBar'),
(5, 'Najam Banawi Nainggolan', 'necessitatibus', 34, 'Kpg. Muwardi No. 368, Subulussalam 69922, Aceh'),
(6, 'Kamal Gamani Adriansyah S.Sos', 'quod', 39, 'Gg. Yogyakarta No. 997, Pangkal Pinang 42827, KalUt'),
(7, 'Cakrabirawa Pranowo', 'saepe', 38, 'Ds. Basmol Raya No. 736, Cimahi 66765, SumUt'),
(8, 'Azalea Kartika Utami', 'nemo', 42, 'Psr. Abang No. 718, Bontang 83673, Papua'),
(9, 'Lantar Thamrin M.Kom.', 'amet', 44, 'Jln. Pasirkoja No. 278, Magelang 29657, SumBar'),
(10, 'Sakti Hakim', 'nemo', 39, 'Jln. Jagakarsa No. 314, Salatiga 63911, DKI'),
(11, 'Gilda Purnawati S.I.Kom', 'ea', 46, 'Jr. Kalimantan No. 139, Salatiga 85962, PapBar'),
(12, 'Opan Pratama', 'ab', 46, 'Kpg. HOS. Cjokroaminoto (Pasirkaliki) No. 206, Tasikmalaya 68670, Jambi'),
(13, 'Hamima Tania Handayani S.Kom', 'qui', 39, 'Ki. Otista No. 105, Gorontalo 58662, Gorontalo'),
(14, 'Maida Agnes Pertiwi M.Kom.', 'sed', 27, 'Jr. Baabur Royan No. 628, Blitar 41544, Riau'),
(15, 'Yulia Lili Safitri M.Farm', 'consectetur', 48, 'Jr. Dewi Sartika No. 148, Salatiga 59934, JaTim'),
(16, 'Oliva Maryati M.Pd', 'consequatur', 49, 'Kpg. Otista No. 713, Langsa 46651, SumUt'),
(17, 'Nalar Kemba Mandala S.E.I', 'ut', 55, 'Dk. Hasanuddin No. 990, Samarinda 20568, KalTim'),
(18, 'Paulin Zelda Agustina S.Farm', 'et', 50, 'Jr. Moch. Ramdan No. 714, Bandar Lampung 84865, BaBel'),
(19, 'Hasta Siregar', 'accusantium', 46, 'Psr. Abdul No. 645, Pagar Alam 16726, NTB'),
(20, 'Ibun Nashiruddin', 'voluptatibus', 28, 'Jr. Uluwatu No. 700, Banjarbaru 82639, MalUt'),
(21, 'Ratna Carla Hastuti', 'sed', 53, 'Kpg. Padma No. 829, Magelang 65151, JaTeng'),
(22, 'Hasna Yolanda', 'dolorum', 45, 'Ds. Banal No. 512, Surabaya 24740, PapBar'),
(23, 'Galar Suryono', 'ut', 44, 'Ki. Raden No. 342, Jayapura 91081, DIY'),
(24, 'Kamaria Pratiwi', 'architecto', 55, 'Gg. Kebangkitan Nasional No. 377, Sorong 12061, DIY'),
(25, 'Ellis Septi Suartini', 'et', 44, 'Ds. Muwardi No. 401, Batam 30933, Maluku'),
(26, 'Leo Habibi', 'itaque', 47, 'Jln. Gremet No. 582, Tebing Tinggi 74166, Maluku'),
(27, 'Jaka Jasmani Saputra S.I.Kom', 'deserunt', 45, 'Gg. Ciumbuleuit No. 613, Sukabumi 84746, Gorontalo'),
(28, 'Kania Kusmawati', 'odio', 42, 'Jln. Padma No. 276, Sungai Penuh 16836, KalBar'),
(29, 'Ismail Hardiansyah M.Farm', 'nihil', 34, 'Dk. HOS. Cjokroaminoto (Pasirkaliki) No. 586, Salatiga 39146, DKI'),
(30, 'Rafi Salahudin S.Pd', 'et', 43, 'Jr. Nakula No. 951, Prabumulih 34186, JaBar'),
(31, 'Edison Wahyu Marbun S.T.', 'est', 52, 'Gg. Jend. A. Yani No. 93, Kediri 92431, Bengkulu'),
(32, 'Irsad Salahudin', 'occaecati', 29, 'Gg. Setiabudhi No. 245, Bandung 12595, Aceh'),
(33, 'Farah Vivi Halimah', 'enim', 38, 'Jln. Sentot Alibasa No. 457, Yogyakarta 96586, Bengkulu'),
(34, 'Pardi Rahmat Prasetyo', 'asperiores', 28, 'Ki. Daan No. 93, Sukabumi 97665, JaTim'),
(35, 'Balamantri Emong Zulkarnain S.Pt', 'et', 51, 'Kpg. Casablanca No. 405, Gorontalo 18286, KalTeng'),
(36, 'Tantri Maryati', 'asperiores', 43, 'Gg. Lumban Tobing No. 332, Pekalongan 79940, PapBar'),
(37, 'Tedi Firgantoro', 'repudiandae', 53, 'Kpg. Moch. Yamin No. 999, Tangerang Selatan 58812, Riau'),
(38, 'Saka Hardiansyah', 'in', 35, 'Psr. Warga No. 907, Bontang 97344, BaBel'),
(39, 'Koko Prabowo Setiawan', 'porro', 37, 'Psr. Mahakam No. 290, Payakumbuh 22194, PapBar'),
(40, 'Paris Nabila Purwanti', 'ad', 53, 'Kpg. Bank Dagang Negara No. 407, Balikpapan 20581, KalTim'),
(41, 'Erik Pangestu', 'quaerat', 39, 'Ki. Babadan No. 314, Tasikmalaya 21160, JaTeng'),
(42, 'Legawa Tomi Firgantoro S.E.I', 'qui', 34, 'Gg. Pasteur No. 882, Magelang 87835, SulTeng'),
(43, 'Nasim Rajata', 'ut', 28, 'Ds. Aceh No. 513, Pangkal Pinang 77867, SulBar'),
(44, 'Lalita Mandasari', 'labore', 37, 'Ki. Bakau No. 360, Pariaman 86651, JaBar'),
(45, 'Jindra Mandala', 'et', 42, 'Dk. Abdul Muis No. 411, Serang 94165, SulTra'),
(46, 'Oliva Usada', 'consequatur', 46, 'Kpg. Samanhudi No. 957, Sorong 38724, Gorontalo'),
(47, 'Cindy Ophelia Mandasari', 'enim', 40, 'Ds. Camar No. 952, Sukabumi 40575, Papua'),
(48, 'Eli Melani', 'dignissimos', 51, 'Ki. Wahidin No. 471, Pekalongan 89597, Jambi'),
(49, 'Gaman Gading Tampubolon', 'voluptatem', 29, 'Kpg. Rajawali No. 429, Ambon 30902, DKI'),
(50, 'Marsito Pradipta', 'dolorum', 25, 'Ki. Setia Budi No. 551, Depok 89895, JaTim'),
(52, 'Fajar Sabastian', 'Staff Mobile', 29, 'Bekasi Timur'),
(53, 'Manatap', 'Staff yellowpages', 37, 'Depok'),
(54, 'Khairul Fahmi', 'Staff IT/Mobile', 25, 'Jakarta Selatan');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` VALUES
(1, 'Padmi Kamila Hassanah S.Farm', NULL, NULL),
(2, 'Julia Oktaviani', NULL, NULL),
(3, 'Darmana Sitompul', NULL, NULL),
(4, 'Naradi Nainggolan', NULL, NULL),
(5, 'Tedi Winarno', NULL, NULL),
(6, 'Ulya Yani Permata S.Pt', NULL, NULL),
(7, 'Maida Uyainah', NULL, NULL),
(8, 'Putri Dian Nasyidah M.Pd', NULL, NULL),
(9, 'Lantar Uwais', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` VALUES
(1, 'dolores', 2, NULL, NULL),
(2, 'culpa', 3, NULL, NULL),
(3, 'sit', 4, NULL, NULL),
(4, 'quasi', 3, NULL, NULL),
(5, 'inventore', 5, NULL, NULL),
(6, 'ut', 7, NULL, NULL),
(7, 'quisquam', 5, NULL, NULL),
(8, 'fugiat', 7, NULL, NULL),
(9, 'perspiciatis', 5, NULL, NULL),
(10, 'voluptatem', 3, NULL, NULL),
(11, 'non', 2, NULL, NULL),
(12, 'ducimus', 5, NULL, NULL),
(13, 'tempora', 4, NULL, NULL),
(14, 'voluptatem', 10, NULL, NULL),
(15, 'nisi', 3, NULL, NULL),
(16, 'exercitationem', 10, NULL, NULL),
(17, 'sed', 2, NULL, NULL),
(18, 'tempora', 6, NULL, NULL),
(19, 'laudantium', 7, NULL, NULL),
(20, 'a', 6, NULL, NULL),
(21, 'consequuntur', 9, NULL, NULL),
(22, 'omnis', 1, NULL, NULL),
(23, 'rerum', 9, NULL, NULL),
(24, 'ut', 1, NULL, NULL),
(25, 'amet', 10, NULL, NULL),
(26, 'atque', 9, NULL, NULL),
(27, 'at', 4, NULL, NULL),
(28, 'hic', 3, NULL, NULL),
(29, 'itaque', 1, NULL, NULL),
(30, 'quia', 9, NULL, NULL),
(31, 'consequatur', 8, NULL, NULL),
(32, 'non', 9, NULL, NULL),
(33, 'explicabo', 10, NULL, NULL),
(34, 'eos', 6, NULL, NULL),
(35, 'eveniet', 5, NULL, NULL),
(36, 'dolor', 10, NULL, NULL),
(37, 'magnam', 10, NULL, NULL),
(38, 'aut', 1, NULL, NULL),
(39, 'et', 6, NULL, NULL),
(40, 'ut', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `telepon`
--

CREATE TABLE `telepon` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomor_telepon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengguna_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telepon`
--

INSERT INTO `telepon` VALUES
(1, '(+62) 878 0989 834', 1, NULL, NULL),
(2, '(+62) 509 9868 0557', 2, NULL, NULL),
(3, '023 9503 4379', 3, NULL, NULL),
(4, '(+62) 24 1120 052', 4, NULL, NULL),
(5, '0535 3676 2454', 5, NULL, NULL),
(6, '0614 0945 4128', 6, NULL, NULL),
(7, '0460 8541 5478', 7, NULL, NULL),
(8, '(+62) 713 5497 976', 8, NULL, NULL),
(9, '(+62) 653 4057 294', 9, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hadiah`
--
ALTER TABLE `hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telepon`
--
ALTER TABLE `telepon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hadiah`
--
ALTER TABLE `hadiah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawai_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `telepon`
--
ALTER TABLE `telepon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
