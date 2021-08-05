-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 05, 2021 at 05:30 AM
-- Server version: 5.7.15-log
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sig_radio`
--

-- --------------------------------------------------------

--
-- Table structure for table `ikon`
--

CREATE TABLE `ikon` (
  `id` int(11) NOT NULL,
  `path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ikon`
--

INSERT INTO `ikon` (`id`, `path`) VALUES
(1, 'dist/img/beachflag.png');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `nama_kecamatan`) VALUES
(1, 'Bintan Pesisir'),
(2, 'Bintan Timur'),
(3, 'Bintan Utara'),
(4, 'Gunung Kijang'),
(5, 'Mantang'),
(6, 'Seri Kuala Lobam'),
(7, 'Tambelan'),
(8, 'Teluk Sebong'),
(9, 'Teluk Bintan'),
(10, 'Toapaya'),
(11, 'Belat'),
(12, 'Buru'),
(13, 'Durai'),
(14, 'Karimun'),
(15, 'Kundur'),
(16, 'Kundur Barat'),
(17, 'Kundur Utara'),
(18, 'Meral'),
(19, 'Meral Barat'),
(20, 'Moro'),
(21, 'Tebing'),
(22, 'Ungar'),
(23, 'Jemaja'),
(24, 'Jemaja Timur'),
(25, 'Palmatak'),
(26, 'Siantan'),
(27, 'Siantan Selatan'),
(28, 'Siantan Tengah'),
(29, 'Siantan Timur'),
(30, 'Bakung Serumpun'),
(31, 'Katang Bidare'),
(32, 'Kepulauan Posek'),
(33, 'Lingga'),
(34, 'Lingga Timur'),
(35, 'Lingga Utara'),
(36, 'Selayar'),
(37, 'Senayang'),
(38, 'Singkep'),
(39, 'Singkep Barat'),
(40, 'Singkep Pesisir'),
(41, 'Singkep Selatan'),
(42, 'Temiang Pesisir'),
(43, 'Bunguran Barat'),
(44, 'Bunguran Batubi'),
(45, 'Bunguran Selatan'),
(46, 'Bunguran Tengah'),
(47, 'Bunguran Timur'),
(48, 'Bunguran Timur Laut'),
(49, 'Bunguran Utara'),
(50, 'Midai'),
(51, 'Pulau Laut'),
(52, 'Pulau Tiga'),
(53, 'Pulau Tiga Barat'),
(54, 'Serasan'),
(55, 'Serasan Timur'),
(56, 'Suak Midai'),
(57, 'Subi'),
(58, 'Batam Kota'),
(59, 'Batu Aji'),
(60, 'Batu Ampar'),
(61, 'Belakang Padang'),
(62, 'Bengkong'),
(63, 'Bulang'),
(64, 'Galang'),
(65, 'Lubuk Baja'),
(66, 'Nongsa'),
(67, 'Sagulung'),
(68, 'Sei Beduk'),
(69, 'Sekupang'),
(70, 'Bukit Bestari'),
(71, 'Tanjung Pinang Barat'),
(72, 'Tanjung Pinang Kota'),
(73, 'Tanjung Pinang Timur');

-- --------------------------------------------------------

--
-- Table structure for table `klien`
--

CREATE TABLE `klien` (
  `id` int(11) NOT NULL,
  `id_klien` int(11) NOT NULL,
  `nama_klien` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `klien`
--

INSERT INTO `klien` (`id`, `id_klien`, `nama_klien`) VALUES
(1, 2073, 'LEMBAGA PENYIARAN PUBLIK TELEVISI REPUBLIK INDONESIA');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `nama_kota`) VALUES
(1, 'Kab. Bintan'),
(2, 'Kab. Karimun'),
(3, 'Kab. Kepulauan Anambas'),
(4, 'Kab. Lingga'),
(5, 'Kab. Natuna'),
(6, 'Kota Batam'),
(7, 'Kota Tanjung Pinang');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `nama_stasiun` varchar(120) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `frekuensi` varchar(50) NOT NULL,
  `servis` varchar(50) NOT NULL,
  `subservis` enum('DVB-T','FM','TV','') NOT NULL,
  `id_klien` int(11) NOT NULL,
  `ikon_marker` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id`, `nama_stasiun`, `latitude`, `longitude`, `alamat`, `telepon`, `kota`, `kecamatan`, `frekuensi`, `servis`, `subservis`, `id_klien`, `ikon_marker`) VALUES
(1, 'Tarempa', '3.22335', '106.22335', 'Jl. Pasir Merah Kel. Tarempa', '', 'Kepulauan Anambas', 'Siantan', '2073', 'Broadcast', 'DVB-T', 0, ''),
(2, 'MUX SCTV BATAM', '1.17916667', '104.0133333', 'Jalan Tenggiri Bukit Girang, Kel. Batu Merah', '', 'Batam', 'Batu Ampar', '642', '', 'DVB-T', 0, ''),
(4, 'TVRI BATAM', '1.12333333', '103.9455556', 'Jl. Palapa VIII Bukit Dangas', '', 'Batam', 'Sekupang', '687.25', '', 'DVB-T', 0, ''),
(6, 'TRANS TV BATAM', '1.12297222', '103.9455278', 'Jl. Palapa 7 Bukit Dangas Sekupang, Kel Tanjung Pinggir', '', 'Batam', 'Sekupang', '674', '', 'DVB-T', 0, ''),
(7, 'MUX SCTV TANJUNG  PINANG', '0.95084167', '104.4608361', 'Jl. Kampung Sungai Ladi RT.2 RW.3, Kel. Kampung Bugis', '', 'Tanjung Pinang ', 'Tanjung Pinang Kota', '642', '', 'DVB-T', 0, ''),
(8, 'BINTAN RADIO', '0.99722222', '104.5127778', 'Jl.Raya Tanjung Pinang-Tg. Uban KM.42, Kel. Bintan Buyu, Kec. Teluk Bintan, Kab. Bintan, Kepulauan R', '', 'Bintan', 'Teluk Bintan', '96.5', '', 'DVB-T', 0, ''),
(9, 'CANGGAI PUTRI FM', '1.00594167', '103.4353611', 'Jl. Pertambangan No. 8 Gedung Dispenda Lt.3 TG. Balai Karimun', '', 'Karimun', 'Karimun', '105.3', '', 'DVB-T', 0, ''),
(10, 'AZAM FM', '0.99623056', '103.4293028', 'Jl. Angkat, Tanjung Balai Karimun, Karimun, Kepulauan Riau', '', 'Karimun', 'Tj. Balai Karimun', '103.5', '', 'DVB-T', 0, ''),
(11, 'Senandung 100.2 FM', '3.21694444', '106.2161111', 'Jl. Tanjung Lambai Desa Sri Tanjung, Tarempa, Kabupaten Kepulauan Anambas, Kepri', '', 'Kepulauan Anambas', 'Siantan', '91.3', '', 'DVB-T', 0, ''),
(12, 'Stasiun Pemancar Relay RRI Tarempa', '3.21772778', '106.217794', 'Jl. Pasir Merah', '', 'Kepulauan Anambas', 'Siantan', '97.5', '', 'DVB-T', 0, ''),
(13, 'SING FM', '1.15286111', '104.0246111', 'Jl. Raja Ali Haji, Planet Holiday Hotel Lt. 20, Sei Jodoh Batam', '', 'Batam', 'Kota Batam', '106.5', '', 'DVB-T', 0, ''),
(14, 'BIGS FM', '1.1125', '104.03', 'Komp. Badar Mas Blok F No. 3A Batam Centre Batam', '', 'Batam', 'Kota Batam', '104.7', '', 'DVB-T', 0, ''),
(15, 'JUAN FM', '1.13333333', '104.0247194', 'Jl. Laksamana Bintan, Komplek Pertokoan Seruni, Blok A No. 25, Sei Panas', '', 'Batam ', 'Batam Kota', '103.2', '', 'DVB-T', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi_baru`
--

CREATE TABLE `lokasi_baru` (
  `id` int(11) NOT NULL,
  `nama_stasiun` varchar(120) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  `frekuensi` varchar(50) NOT NULL,
  `id_servis` int(11) NOT NULL,
  `id_subservis` int(11) NOT NULL,
  `id_klien` int(11) NOT NULL,
  `id_ikon_marker` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lokasi_baru`
--

INSERT INTO `lokasi_baru` (`id`, `nama_stasiun`, `latitude`, `longitude`, `alamat`, `telepon`, `id_kota`, `id_kecamatan`, `frekuensi`, `id_servis`, `id_subservis`, `id_klien`, `id_ikon_marker`) VALUES
(2, 'TAREMPA', '1.17916667', '106.22335', 'JL. PASIR MERAH KEL. TAREMPA', '2222222', 6, 26, '674', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengukuran`
--

CREATE TABLE `pengukuran` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_stasiun` int(11) NOT NULL,
  `kanal` int(11) NOT NULL,
  `frekuensi_terukur` int(11) NOT NULL,
  `pergeseran` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `bandwith` int(11) NOT NULL,
  `field_strength` int(11) NOT NULL,
  `daya_terukur` int(11) NOT NULL,
  `kedalaman_modulasi` int(11) NOT NULL,
  `deviasi_frekuensi` int(11) NOT NULL,
  `erp` int(11) NOT NULL,
  `frekuensi1` int(11) NOT NULL,
  `level1` int(11) NOT NULL,
  `frekuensi2` int(11) NOT NULL,
  `level2` int(11) NOT NULL,
  `frekuensi3` int(11) NOT NULL,
  `level3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengukuran`
--

INSERT INTO `pengukuran` (`id`, `tanggal`, `id_stasiun`, `kanal`, `frekuensi_terukur`, `pergeseran`, `level`, `bandwith`, `field_strength`, `daya_terukur`, `kedalaman_modulasi`, `deviasi_frekuensi`, `erp`, `frekuensi1`, `level1`, `frekuensi2`, `level2`, `frekuensi3`, `level3`) VALUES
(1, '2021-07-01', 1, 333, 444, 34, 22, 34, 344, 3455, 55, 65, 23, 45, 34565, 54, 34, 70, 70);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `nip` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal_lahir` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `jenjang_pendidikan` varchar(50) NOT NULL,
  `golongan` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `nip`, `nama`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `jenjang_pendidikan`, `golongan`, `jabatan`, `alamat`) VALUES
(0, 1111, 'Putrin', '2001-04-29', 'Perempuan', 'Islam', 'SMA', 'IIA', 'nothing', 'Jl.Elang Sakti');

-- --------------------------------------------------------

--
-- Table structure for table `servis`
--

CREATE TABLE `servis` (
  `id` int(11) NOT NULL,
  `servis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `servis`
--

INSERT INTO `servis` (`id`, `servis`) VALUES
(1, 'Broadcast');

-- --------------------------------------------------------

--
-- Table structure for table `subservis`
--

CREATE TABLE `subservis` (
  `id` int(11) NOT NULL,
  `subservis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subservis`
--

INSERT INTO `subservis` (`id`, `subservis`) VALUES
(1, 'DVB-T'),
(2, 'FM'),
(3, 'TV');

-- --------------------------------------------------------

--
-- Table structure for table `towerradio`
--

CREATE TABLE `towerradio` (
  `id` int(11) NOT NULL,
  `nama_tower` varchar(200) NOT NULL,
  `latitude` varchar(200) NOT NULL,
  `longitude` varchar(200) NOT NULL,
  `id_radio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ikon`
--
ALTER TABLE `ikon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `klien`
--
ALTER TABLE `klien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_klien` (`id_klien`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi_baru`
--
ALTER TABLE `lokasi_baru`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kota` (`id_kota`),
  ADD KEY `id_kecamatan` (`id_kecamatan`),
  ADD KEY `id_servis` (`id_servis`),
  ADD KEY `id_subservis` (`id_subservis`),
  ADD KEY `id_klien` (`id_klien`),
  ADD KEY `id_ikon_marker` (`id_ikon_marker`);

--
-- Indexes for table `pengukuran`
--
ALTER TABLE `pengukuran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servis`
--
ALTER TABLE `servis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subservis`
--
ALTER TABLE `subservis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `towerradio`
--
ALTER TABLE `towerradio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ikon`
--
ALTER TABLE `ikon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `klien`
--
ALTER TABLE `klien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `lokasi_baru`
--
ALTER TABLE `lokasi_baru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pengukuran`
--
ALTER TABLE `pengukuran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `servis`
--
ALTER TABLE `servis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subservis`
--
ALTER TABLE `subservis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `towerradio`
--
ALTER TABLE `towerradio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `lokasi_baru`
--
ALTER TABLE `lokasi_baru`
  ADD CONSTRAINT `lokasi_baru_ibfk_1` FOREIGN KEY (`id_subservis`) REFERENCES `subservis` (`id`),
  ADD CONSTRAINT `lokasi_baru_ibfk_2` FOREIGN KEY (`id_kota`) REFERENCES `kota` (`id`),
  ADD CONSTRAINT `lokasi_baru_ibfk_3` FOREIGN KEY (`id_kecamatan`) REFERENCES `kecamatan` (`id`),
  ADD CONSTRAINT `lokasi_baru_ibfk_4` FOREIGN KEY (`id_servis`) REFERENCES `servis` (`id`),
  ADD CONSTRAINT `lokasi_baru_ibfk_5` FOREIGN KEY (`id_klien`) REFERENCES `klien` (`id`),
  ADD CONSTRAINT `lokasi_baru_ibfk_6` FOREIGN KEY (`id_ikon_marker`) REFERENCES `ikon` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;