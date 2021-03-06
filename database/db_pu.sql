-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2020 at 05:14 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pu`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `id_agenda` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tanggal_mulai` datetime NOT NULL,
  `tanggal_selesai` datetime NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_artikel`
--

CREATE TABLE `tbl_artikel` (
  `id_artikel` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tanggal` datetime NOT NULL,
  `image` varchar(255) NOT NULL,
  `visitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `idberita` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `judul` text NOT NULL,
  `slug` text NOT NULL,
  `isi` text NOT NULL,
  `tanggal` datetime NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bidang`
--

CREATE TABLE `tbl_bidang` (
  `id_bidang` int(11) NOT NULL,
  `bidang` varchar(255) NOT NULL,
  `alamat_kantor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bidang`
--

INSERT INTO `tbl_bidang` (`id_bidang`, `bidang`, `alamat_kantor`) VALUES
(1, 'BIDANG SUMBER DAYA AIR', 'KantorJalan '),
(2, 'BIDANG BINA MARGA', 'KantorJalan '),
(3, 'BIDANG CIPTA KARYA', 'KantorJalan '),
(4, 'BIDANG PENATAAN RUANG', 'KantorJalan'),
(5, 'BIDANG JASA KONSTRUKSI', 'KantorJalan '),
(6, 'SEKERTARIS DINAS', 'KantorJalan '),
(7, 'UPT LABORATURIUM', 'KantorJalan '),
(8, 'Potensi Rawa', 'jalan'),
(9, 'POTENSI SUMUR BOR', 'KantorJalan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_black_spot`
--

CREATE TABLE `tbl_black_spot` (
  `id_black_spot` int(11) NOT NULL,
  `ruas` decimal(10,0) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `jenis_masalah` varchar(255) NOT NULL,
  `tingkat_masalah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danau`
--

CREATE TABLE `tbl_danau` (
  `id_danau` int(11) NOT NULL,
  `nama` int(255) NOT NULL,
  `kota` int(100) NOT NULL,
  `luas` int(255) NOT NULL,
  `kedalaman` decimal(10,0) NOT NULL,
  `kapasitas` int(255) NOT NULL,
  `penduduk` int(255) NOT NULL,
  `ternak` int(255) NOT NULL,
  `irigasi` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_embung`
--

CREATE TABLE `tbl_embung` (
  `id_embung` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `kapasitas` decimal(10,0) NOT NULL,
  `penduduk` int(11) NOT NULL,
  `ternak` int(11) NOT NULL,
  `irigasi` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_embung`
--

INSERT INTO `tbl_embung` (`id_embung`, `nama`, `kota`, `kapasitas`, `penduduk`, `ternak`, `irigasi`) VALUES
(1, 'qwe', 'qwe', '0', 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file_download`
--

CREATE TABLE `tbl_file_download` (
  `id_file` int(255) NOT NULL,
  `keterangan` text NOT NULL,
  `nama_file` text NOT NULL,
  `size` bigint(25) NOT NULL,
  `publik` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_file_download`
--

INSERT INTO `tbl_file_download` (`id_file`, `keterangan`, `nama_file`, `size`, `publik`) VALUES
(1, 'Ket File', 'Voucher_20001.pdf', 276, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jabatan`
--

CREATE TABLE `tbl_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jabatan`
--

INSERT INTO `tbl_jabatan` (`id_jabatan`, `jabatan`) VALUES
(1, 'Kepela'),
(2, 'Wakil Kepalan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jalan`
--

CREATE TABLE `tbl_jalan` (
  `id_jalan` int(11) NOT NULL,
  `ruas` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `stat` varchar(255) NOT NULL,
  `panjang` decimal(10,0) NOT NULL,
  `lebar` decimal(10,0) NOT NULL,
  `aspal` decimal(10,0) NOT NULL,
  `japat` decimal(10,0) NOT NULL,
  `tanah` decimal(10,0) NOT NULL,
  `beton` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jalan`
--

INSERT INTO `tbl_jalan` (`id_jalan`, `ruas`, `kota`, `stat`, `panjang`, `lebar`, `aspal`, `japat`, `tanah`, `beton`) VALUES
(2, '1', '1', '1', '1', '1', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jembatan`
--

CREATE TABLE `tbl_jembatan` (
  `id_jembatan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `panjang` decimal(10,0) NOT NULL,
  `lebar` decimal(10,0) NOT NULL,
  `atas` varchar(100) NOT NULL,
  `bawah` varchar(100) NOT NULL,
  `sungai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `module_path` varchar(20) NOT NULL,
  `module_name` varchar(20) NOT NULL,
  `module_icon` varchar(50) NOT NULL,
  `module_parent` int(11) NOT NULL,
  `module_order` int(11) NOT NULL,
  `role` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`module_path`, `module_name`, `module_icon`, `module_parent`, `module_order`, `role`) VALUES
('admin', 'Dashboard', 'fas fa-tachometer-alt', 0, 0, '1,2'),
('admin/bidang', 'Bidang', 'fas fa-bars', 1, 7, '1,2'),
('admin/data_pu', 'Data PU', 'fas fa-edit', 4, 6, '1,2'),
('admin/download', 'Download', 'fas fa-file', 0, 7, '1,2'),
('admin/pegawai', 'Pegawai', 'fas fa-users', 0, 2, '1,2'),
('admin/pengumuman', 'Pengumuman', 'fas fa-file', 3, 5, '1,2'),
('admin/user', 'User', 'fas fa-users', 0, 3, '1'),
('admin/warta', 'Warta', 'fas fa-calendar', 2, 4, '1,2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pegawai`
--

CREATE TABLE `tbl_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `id_bidang` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pemenang_lelang`
--

CREATE TABLE `tbl_pemenang_lelang` (
  `id_pemenang_lelang` int(11) NOT NULL,
  `id_pengumuman_lelang` int(11) NOT NULL,
  `pemenang` varchar(255) NOT NULL,
  `hps` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pemenang_lelang`
--

INSERT INTO `tbl_pemenang_lelang` (`id_pemenang_lelang`, `id_pengumuman_lelang`, `pemenang`, `hps`) VALUES
(6, 23, 'pemenang', 49825242),
(8, 2, 'ded', 52),
(10, 1, 'telkom', 414),
(11, 2, 'telkom yniv', 53252),
(12, 1, '3d', 0),
(13, 0, '$pemenang', 0),
(14, 4, 'telkom', 150000000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengumuman_lelang`
--

CREATE TABLE `tbl_pengumuman_lelang` (
  `id_pengumuman_lelang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `batas` text NOT NULL,
  `no_sk` varchar(255) NOT NULL,
  `nama_paket` varchar(255) NOT NULL,
  `pagu` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_potensi_sumur_bor`
--

CREATE TABLE `tbl_potensi_sumur_bor` (
  `id_sumur` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `swl` decimal(10,0) NOT NULL,
  `debit` decimal(10,0) NOT NULL,
  `airbaku` int(255) NOT NULL,
  `irigasi` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rawa`
--

CREATE TABLE `tbl_rawa` (
  `id_rawa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `sudah_kembang` int(255) NOT NULL,
  `belum_kembang` int(255) NOT NULL,
  `sudah_manfaat` int(255) NOT NULL,
  `belum_manfaat` int(255) NOT NULL,
  `total` int(255) NOT NULL,
  `tahun` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rup`
--

CREATE TABLE `tbl_rup` (
  `id_rup` int(11) NOT NULL,
  `kegiatan` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `pagu` decimal(10,0) NOT NULL,
  `metode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_spam`
--

CREATE TABLE `tbl_spam` (
  `id_spam` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `kapasitas` int(255) NOT NULL,
  `pelayanan` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_menu`
--

CREATE TABLE `tbl_sub_menu` (
  `module_sub_path` varchar(30) NOT NULL,
  `module_sub_name` varchar(50) NOT NULL,
  `module_parent` int(11) NOT NULL,
  `module_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_menu`
--

INSERT INTO `tbl_sub_menu` (`module_sub_path`, `module_sub_name`, `module_parent`, `module_order`) VALUES
('admin/agenda', 'Agenda', 2, 3),
('admin/artikel', 'Artikel', 2, 2),
('admin/berita', 'Berita', 2, 1),
('admin/bidang', 'Bidang', 1, 2),
('admin/datapublackspot', 'Black Spot', 4, 5),
('admin/datapuembung', 'Embung', 4, 3),
('admin/datapujalan', 'Jalan', 4, 1),
('admin/datapujembatan', 'Jembatan', 4, 2),
('admin/datapupotensidanau', 'Potensi Danau', 4, 7),
('admin/datapupotensirawa', 'Potensi Rawa', 4, 8),
('admin/datapupotensisumurbor', 'Potensi Sumur Bor', 4, 9),
('admin/datapuspam', 'Spam', 4, 6),
('admin/datapusumurbor', 'Sumur Bor', 4, 4),
('admin/pegawaibidang', 'Pegawai Bidang', 1, 1),
('admin/pemenang_lelang', 'Pemenang Lelang', 3, 3),
('admin/pengumuman_lelang', 'Pengumuman Lelang', 3, 2),
('admin/rup', 'RUP', 3, 1),
('admin/testimoni', 'Testimoni', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sumurbor`
--

CREATE TABLE `tbl_sumurbor` (
  `tbl_sumurbor` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `debit` decimal(10,0) NOT NULL,
  `air_baku` int(11) NOT NULL,
  `irigasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `id_testimoni` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(1) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Admin', 'a@a.com', 'mask_anonymous_smile_121996_3840x2160.jpg', '$2y$10$vjkrlaw6HeTAiqZQ28HarOfc0ZEwGQkvFikdemHe2ASwfU4t7e57G', 1, 1, 0),
(37, 'user', 'user@user.com', 'user-37-profile.png', '$2y$10$7tkcPLPId6UAhamm6xsYLOZMeuW6GxgTgFCzgYESSNMH.UgEHA2bK', 2, 1, 1604763728);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`idberita`);

--
-- Indexes for table `tbl_bidang`
--
ALTER TABLE `tbl_bidang`
  ADD PRIMARY KEY (`id_bidang`);

--
-- Indexes for table `tbl_black_spot`
--
ALTER TABLE `tbl_black_spot`
  ADD PRIMARY KEY (`id_black_spot`);

--
-- Indexes for table `tbl_danau`
--
ALTER TABLE `tbl_danau`
  ADD PRIMARY KEY (`id_danau`);

--
-- Indexes for table `tbl_embung`
--
ALTER TABLE `tbl_embung`
  ADD PRIMARY KEY (`id_embung`);

--
-- Indexes for table `tbl_file_download`
--
ALTER TABLE `tbl_file_download`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `tbl_jabatan`
--
ALTER TABLE `tbl_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `tbl_jalan`
--
ALTER TABLE `tbl_jalan`
  ADD PRIMARY KEY (`id_jalan`);

--
-- Indexes for table `tbl_jembatan`
--
ALTER TABLE `tbl_jembatan`
  ADD PRIMARY KEY (`id_jembatan`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`module_path`);

--
-- Indexes for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `tbl_pemenang_lelang`
--
ALTER TABLE `tbl_pemenang_lelang`
  ADD PRIMARY KEY (`id_pemenang_lelang`);

--
-- Indexes for table `tbl_pengumuman_lelang`
--
ALTER TABLE `tbl_pengumuman_lelang`
  ADD PRIMARY KEY (`id_pengumuman_lelang`);

--
-- Indexes for table `tbl_potensi_sumur_bor`
--
ALTER TABLE `tbl_potensi_sumur_bor`
  ADD PRIMARY KEY (`id_sumur`);

--
-- Indexes for table `tbl_rawa`
--
ALTER TABLE `tbl_rawa`
  ADD PRIMARY KEY (`id_rawa`);

--
-- Indexes for table `tbl_rup`
--
ALTER TABLE `tbl_rup`
  ADD PRIMARY KEY (`id_rup`);

--
-- Indexes for table `tbl_spam`
--
ALTER TABLE `tbl_spam`
  ADD PRIMARY KEY (`id_spam`);

--
-- Indexes for table `tbl_sub_menu`
--
ALTER TABLE `tbl_sub_menu`
  ADD PRIMARY KEY (`module_sub_path`);

--
-- Indexes for table `tbl_sumurbor`
--
ALTER TABLE `tbl_sumurbor`
  ADD PRIMARY KEY (`tbl_sumurbor`);

--
-- Indexes for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`id_testimoni`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  MODIFY `idberita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_bidang`
--
ALTER TABLE `tbl_bidang`
  MODIFY `id_bidang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_black_spot`
--
ALTER TABLE `tbl_black_spot`
  MODIFY `id_black_spot` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_danau`
--
ALTER TABLE `tbl_danau`
  MODIFY `id_danau` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_embung`
--
ALTER TABLE `tbl_embung`
  MODIFY `id_embung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_file_download`
--
ALTER TABLE `tbl_file_download`
  MODIFY `id_file` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_jalan`
--
ALTER TABLE `tbl_jalan`
  MODIFY `id_jalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_pemenang_lelang`
--
ALTER TABLE `tbl_pemenang_lelang`
  MODIFY `id_pemenang_lelang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_potensi_sumur_bor`
--
ALTER TABLE `tbl_potensi_sumur_bor`
  MODIFY `id_sumur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_rawa`
--
ALTER TABLE `tbl_rawa`
  MODIFY `id_rawa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_rup`
--
ALTER TABLE `tbl_rup`
  MODIFY `id_rup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
