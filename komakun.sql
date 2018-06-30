-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21 Mei 2018 pada 04.13
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `komakun`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kas`
--

CREATE TABLE `jenis_kas` (
  `id` int(11) NOT NULL,
  `kode_kas` varchar(2) NOT NULL,
  `nama_kas` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_kas`
--

INSERT INTO `jenis_kas` (`id`, `kode_kas`, `nama_kas`) VALUES
(1, 'KM', 'Kas Masuk'),
(2, 'KK', 'Kas Keluar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal_umum`
--

CREATE TABLE `jurnal_umum` (
  `id_jurnal_umum` int(64) NOT NULL,
  `tanggal` date NOT NULL,
  `unit` varchar(64) NOT NULL,
  `jenis_kas` varchar(64) NOT NULL,
  `nama_akun` varchar(64) NOT NULL,
  `jumlah` varchar(64) NOT NULL,
  `keterangan` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurnal_umum`
--

INSERT INTO `jurnal_umum` (`id_jurnal_umum`, `tanggal`, `unit`, `jenis_kas`, `nama_akun`, `jumlah`, `keterangan`) VALUES
(1, '2018-05-25', 'C1', 'KM', '11204BANK CENTRAL ASIA 009-30-87221', '453243', 'fgd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kode_rek2`
--

CREATE TABLE `kode_rek2` (
  `idkode_rek` int(11) NOT NULL,
  `kode1` varchar(4) NOT NULL,
  `kode2` varchar(10) NOT NULL,
  `kode3` varchar(2) NOT NULL,
  `Nama` varchar(200) NOT NULL,
  `status` varchar(4) NOT NULL,
  `deleted` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kode_rek2`
--

INSERT INTO `kode_rek2` (`idkode_rek`, `kode1`, `kode2`, `kode3`, `Nama`, `status`, `deleted`) VALUES
(1, '1', '10000', '1', 'ASSET LANCAR', 'd', '1'),
(2, '1', '11000', '2', 'KAS DAN SETARA KAS', 'd', '1'),
(3, '1', '11100', '3', 'KAS KECIL DAN KAS PENDAPATAN', 'd', '1'),
(4, '1', '11101', '4', 'KAS KECIL YAYASAN', 'd', ''),
(5, '1', '11102', '4', 'KAS KECIL UNIVERSITAS', 'd', ''),
(6, '1', '11103', '4', 'KAS GAJI UNIVERSITAS', 'd', '1'),
(7, '1', '11104', '4', 'KAS KECIL CLT', 'd', ''),
(8, '1', '11105', '4', 'KAS PENDAPATAN CLT', 'd', ''),
(9, '1', '11106', '4', 'KAS KECIL LPT', 'd', ''),
(10, '1', '11107', '4', 'KAS PENDAPATAN LPT', 'd', ''),
(11, '1', '11200', '3', '** BANK RK GIRO **', 'd', '1'),
(12, '1', '11201', '4', 'CIMB NIAGA 800006912500', 'd', ''),
(13, '1', '11202', '4', 'CIMB NIAGA 800097235400', 'd', ''),
(14, '1', '11203', '4', 'CIMB NIAGA 800097240900', 'd', ''),
(15, '1', '11204', '4', 'BANK CENTRAL ASIA 009-30-87221', 'd', ''),
(16, '1', '11205', '4', 'BANK JATENG 1-034-02406-1', 'd', ''),
(17, '1', '11206', '4', 'BANK BNI 0029041693', 'd', ''),
(18, '1', '11207', '4', 'BANK MANDIRI 135-0000229540', 'd', ''),
(19, '1', '11208', '4', 'OCBC NISP 030-010-81882-3', 'd', ''),
(20, '1', '11209', '4', 'OCBC NISP 030-010-86001-7', 'd', ''),
(21, '1', '11210', '4', 'MAYBANK 2-050-000849 ', 'd', ''),
(22, '1', '11211', '4', 'MAYBANK 2-050-060330', 'd', ''),
(23, '1', '11212', '4', 'MAYBANK 2-050-004360', 'd', ''),
(24, '1', '11213', '4', 'MAYBANK 2-050-004360 QQ UNIKA', 'd', ''),
(25, '1', '11214', '4', 'MAYBANK 2-575-000025 QQ UNIKA', 'd', ''),
(26, '1', '11215', '4', 'TABUNGAN BII 1-575-169600', 'd', '1'),
(27, '1', '11300', '3', '** DEPOSITO **', 'd', '1'),
(28, '1', '11301', '4', 'DEPOSITO JANGKA PENDEK', 'd', ''),
(29, '1', '12000', '2', '** PIUTANG USAHA **', 'd', '1'),
(30, '1', '12101', '4', 'PIUTANG PENDAPATAN UNIVERSITAS', 'd', ''),
(31, '1', '12201', '4', 'PIUTANG PENDAPATAN PPT', 'd', ''),
(32, '1', '12301', '4', 'PIUTANG PENDAPATAN BUNGA DEPOSITO', 'd', ''),
(33, '1', '13000', '2', '** PIUTANG LAIN-LAIN **', 'd', '1'),
(34, '1', '13101', '4', 'PIUTANG KARYAWAN YAYASAN', 'd', ''),
(35, '1', '13201', '4', 'PIUTANG KARYAWAN UNIVERSITAS', 'd', ''),
(36, '1', '13301', '4', 'PIUTANG LAIN-LAIN', 'd', ''),
(37, '1', '14000', '2', '**PERSEDIAAN SUPPLIES KANTOR**', 'd', '1'),
(38, '1', '14101', '4', 'PERSEDIAAN ATK', 'd', ''),
(39, '1', '14201', '4', 'PERSEDIAAN PERALATAN INVENTARIS', 'd', ''),
(40, '1', '14301', '4', 'PERSEDIAAN CETAKAN+SOVENIR', 'd', ''),
(41, '1', '15000', '2', '**BEBAN DIBAYAR DIMUKA/ UANG MUKA', 'd', '1'),
(42, '1', '15101', '4', 'BEBAN DIBAYAR DIMUKA', 'd', ''),
(43, '1', '15201', '4', 'UANG MUKA PEMBELIAN INVENTARIS', 'd', ''),
(44, '1', '15301', '4', 'UANG MUKA PEMBANGUNAN GEDUNG', 'd', ''),
(45, '1', '19000', '2', '** R/K GROUP **', 'd', '1'),
(46, '1', '19101', '4', 'R/K GROUP YAYASAN', 'd', ''),
(47, '1', '19201', '4', 'R/K GROUP UNIVERSITAS', 'd', ''),
(48, '1', '19301', '4', 'R/K GROUP LEMBAGA ', 'd', ''),
(49, '1', '19401', '4', 'R/K GROUP POLIKLINIK', 'd', ''),
(50, '1', '20000', '1', 'ASET TIDAK LANCAR', 'k', '1'),
(51, '1', '21000', '2', ' ASSET TETAP', 'k', '1'),
(52, '1', '21101', '4', 'TANAH', 'k', ''),
(53, '1', '21102', '4', 'BANGUNAN', 'k', ''),
(54, '1', '21103', '4', 'LABORATORIUM', 'k', ''),
(55, '1', '21104', '4', 'KENDARAAN DINAS', 'k', ''),
(56, '1', '21105', '4', 'INVENTARIS KANTOR & RUANG KULIAH', 'k', ''),
(57, '1', '21106', '4', 'INVENTARIS PERPUSTAKAAN', 'k', ''),
(58, '1', '21107', '4', 'INVENTARIS RUMAH TANGGA', 'k', ''),
(59, '1', '21108', '4', 'INVENTARIS LEMBAGA', 'k', ''),
(60, '1', '21109', '4', 'INVENTARIS POLIKLINIK', 'k', ''),
(61, '1', '21202', '4', 'APH. BANGUNAN', 'k', ''),
(62, '1', '21203', '4', 'APH. LABORATORIUM', 'k', ''),
(63, '1', '21204', '4', 'APH. KENDARAAN DINAS', 'k', ''),
(64, '1', '21205', '4', 'APH. INVENTARIS KANTOR & RUANG KULIAH', 'k', ''),
(65, '1', '21206', '4', 'APH. PERPUSTAKAAN', 'k', ''),
(66, '1', '21207', '4', 'APH. INVENTARIS RUMAH TANGGA', 'k', ''),
(67, '1', '21208', '4', 'APH. INVENTARIS LEMBAGA', 'k', ''),
(68, '1', '21209', '4', 'APH. INVENTARIS POLIKLINIK', 'k', ''),
(69, '1', '22000', '2', 'ASET TETAP DANA PEMBANGUNAN DAN SARANA PENDIDIKAN', 'k', '1'),
(70, '1', '22101', '4', 'TANAH', 'k', ''),
(71, '1', '22102', '4', 'BANGUNAN', 'k', ''),
(72, '1', '22103', '4', 'LABORATORIUM', 'k', ''),
(73, '1', '22104', '4', 'KENDARAAN DINAS', 'k', ''),
(74, '1', '22105', '4', 'INVENTARIS KANTOR & RUANG KULIAH', 'k', ''),
(75, '1', '22202', '4', 'APH. BANGUNAN', 'k', ''),
(76, '1', '22203', '4', 'APH. LABORATORIUM', 'k', ''),
(77, '1', '22204', '4', 'APH. KENDARAAN DINAS', 'k', ''),
(78, '1', '22205', '4', 'APH. INVENTARIS KANTOR & RUANG KULIAH', 'k', ''),
(79, '1', '23000', '2', 'ASET LAIN-LAIN', 'k', '1'),
(80, '1', '23101', '4', 'HAK ATAS TANAH DALAM PROSES', 'k', ''),
(81, '1', '23102', '4', 'TANAH PERUMAHAN KARYAWAN', 'k', ''),
(82, '1', '23201', '4', 'BANGUNAN DALAM PROSES', 'k', ''),
(83, '1', '23301', '4', 'SARANA PRASARANA DALAM PROSES', 'k', ''),
(84, '1', '23401', '4', 'INVESTASI JANGKA PANJANG', 'k', ''),
(85, '2', '31100', '3', '** HUTANG USAHA **', 'k', '1'),
(86, '2', '31101', '4', 'HUTANG USAHA', 'k', ''),
(87, '2', '31200', '3', '** HUTANG BANK **', 'k', '1'),
(88, '2', '31201', '4', 'HUTANG BANK', 'k', ''),
(89, '2', '31300', '3', '** HUTANG PAJAK **', 'k', '1'),
(90, '2', '31301', '4', 'HUTANG PPH PASAL 21', 'k', ''),
(91, '2', '31302', '4', 'HUTANG PPH PASAL 25', 'k', ''),
(92, '2', '31303', '4', 'HUTANG PPH PASAL 23', 'k', ''),
(93, '2', '31304', '4', 'PAJAK BUMI DAN BANGUNAN', 'k', ''),
(94, '2', '31400', '3', '** HUTANG LAIN-LAIN **', 'k', '1'),
(95, '2', '31401', '4', 'TITIPAN LAIN-LAIN', 'k', ''),
(96, '2', '31500', '3', '** BIAYA RUTIN MASIH HARUS DIBAYAR **', 'k', '1'),
(97, '2', '31501', '4', 'BIAYA RUTIN ', 'k', ''),
(98, '2', '31600', '3', '** PENDAPATAN DITERIMA DIMUKA **', 'k', '1'),
(99, '2', '31601', '4', 'UANG PENDAFTARAN MAHASISWA BARU', 'k', ''),
(100, '2', '31602', '4', 'SETORAN AWAL MAHASISWA BARU', 'k', ''),
(101, '2', '31603', '4', 'SETORAN AWAL MAHASISWA LAMA', 'k', ''),
(102, '2', '31604', '4', 'SEWA DITERIMA DIMUKA ', 'k', ''),
(103, '3', '32000', '2', '** ASET BERSIH **', 'k', '1'),
(104, '3', '32101', '4', 'ASET BERSIH TERIKAT PERMANEN', 'k', ''),
(105, '3', '32201', '4', 'ASET BERSIH TIDAK TERIKAT (TERIKAT TEMPORER)', 'k', ''),
(106, '3', '32301', '4', 'SALDO CAD.DANA PEMBANGUNGAN', 'k', ''),
(107, '3', '32401', '4', 'CADANGAN / SHU PERIODE BERJALAN', 'k', ''),
(108, '4', '41000', '2', 'PENDAPATAN DARI MAHASISWA', 'k', '1'),
(109, '4', '41101', '4', 'UANG KULIAH POKOK', 'k', ''),
(110, '4', '41102', '4', 'UANG KULIAH SKS', 'k', ''),
(111, '4', '41103', '4', 'UANG PENGEMBANGAN PENDIDIKAN', 'k', ''),
(112, '4', '41104', '4', 'UANG KEMAHASISWAAN', 'k', ''),
(113, '4', '41105', '4', 'UANG PENDAFTARAN MAHASISWA BARU', 'k', ''),
(114, '4', '41106', '4', 'UANG KKN,KKU,KKL', 'k', ''),
(115, '4', '41107', '4', 'UANG WISUDA', 'k', ''),
(116, '4', '41108', '4', 'UANG DENDA KETERLAMBATAN', 'k', ''),
(117, '4', '42000', '2', 'BANTUAN PENGEMBANGAN AKADEMIK', 'k', '1'),
(118, '4', '42101', '4', 'BANTUAN PEMERINTAH / KOPERTIS', 'k', ''),
(119, '4', '42201', '4', 'BANTUAN PENELITIAN', 'k', ''),
(120, '4', '42301', '4', 'BANTUAN BEASISWA S1', 'k', ''),
(121, '4', '42401', '4', 'BANTUAN LAIN-LAIN', 'k', ''),
(122, '4', '43000', '2', '**PENDAPATAN LEMBAGA DAN LAIN-LAIN', 'k', '1'),
(123, '4', '43100', '3', 'LEMBAGA CENTRE for LANGUAGE TRAINING', 'k', '1'),
(124, '4', '43101', '4', 'UANG PENDAFTARAN KURSUS', 'k', ''),
(125, '4', '43102', '4', 'UANG KURSUS SISWA', 'k', ''),
(126, '4', '43103', '4', 'UANG BUKU MATERI', 'k', ''),
(127, '4', '43104', '4', 'UANG SERTIFIKAT', 'k', ''),
(128, '4', '43105', '4', 'UANG UJIAN ULANG', 'k', ''),
(129, '4', '43106', '4', 'UANG In-COMPANY TRAINING', 'k', ''),
(130, '4', '43107', '4', 'UANG KOMISI KERJASAMA', 'k', ''),
(131, '4', '43108', '4', 'PENDAPATAN LAIN-LAIN', 'k', ''),
(132, '4', '43200', '3', 'PENDAPATAN LEMBAGA PSIKOLOGI TERAPAN', 'k', '1'),
(133, '4', '43201', '4', 'SELEKSI DAN EVALUASI KARYAWAN', 'k', ''),
(134, '4', '43202', '4', 'SELEKSI MINAT BAKAT', 'k', ''),
(135, '4', '43203', '4', 'SELEKSI DAN EVALUASI SISWA', 'k', ''),
(136, '4', '43204', '4', 'JASA KONSULTASI', 'k', ''),
(137, '4', '43205', '4', 'JASA TEST INTELGENSI', 'k', ''),
(138, '4', '43206', '4', 'JASA LAIN-LAIN', 'k', ''),
(139, '4', '43300', '3', '** PUSAT LABORATORIUM **', 'k', '1'),
(140, '4', '43301', '4', 'JASA LABORATORIUM TEKNIK SIPIL', 'k', ''),
(141, '4', '43400', '3', '** FOOD COURT DAN LAIN-LAIN **', 'k', '1'),
(142, '4', '43401', '4', 'FOOD COURT', 'k', ''),
(143, '4', '43402', '4', 'PERPUSTAKAAN', 'k', ''),
(144, '4', '43403', '4', 'ASRAMA MAHASISWA', 'k', ''),
(145, '4', '43404', '4', 'JAKET, TOGA DAN LAIN-LAIN', 'k', ''),
(146, '5', '51000', '2', 'PENYELENGGARAAN AKADEMIK', 'd', '1'),
(147, '5', '51100', '3', 'GAJI TENAGA EDUKATIF TETAP', 'd', '1'),
(148, '5', '51101', '4', 'GAJI POKOK DAN TUNJANGAN KELUARGA', 'd', ''),
(149, '5', '51102', '4', 'TUNJANGAN FUNGSIONAL', 'd', ''),
(150, '5', '51103', '4', 'TUNJANGAN STRUKTURAL', 'd', ''),
(151, '5', '51104', '4', 'TUNJANGAN YAYASAN', 'd', ''),
(152, '5', '51105', '4', 'TUNJANGAN KELEBIHAN BEBAN TUGAS', 'd', ''),
(153, '5', '51106', '4', 'TUNJANGAN HARI NATAL', 'd', ''),
(154, '5', '51107', '4', 'TUNJANGAN LAIN/ INSENTIF', 'd', ''),
(155, '5', '51110', '3', 'GAJI CALON EDUKATIF TETAP', 'd', '1'),
(156, '5', '51111', '4', 'GAJI POKOK DAN TUNJANGAN KELUARGA', 'd', ''),
(157, '5', '51112', '4', 'TUNJANGAN FUNGSIONAL', 'd', ''),
(158, '5', '51113', '4', 'TUNJANGAN STRUKTURAL', 'd', ''),
(159, '5', '51114', '4', 'TUNJANGAN YAYASAN', 'd', ''),
(160, '5', '51115', '4', 'TUNJANGAN KELEBIHAN BEBAN TUGAS', 'd', ''),
(161, '5', '51116', '4', 'TUNJANGAN HARI NATAL', 'd', ''),
(162, '5', '51117', '4', 'TUNJANGAN LAIN/ INSENTIF', 'd', ''),
(163, '5', '51120', '3', 'GAJI EDUKATIF TETAP TERBATAS', 'd', '1'),
(164, '5', '51121', '4', 'GAJI EDUKATIF TETAP TERBATAS', 'd', ''),
(165, '5', '51122', '4', 'TUNJANGAN YAYASAN', 'd', ''),
(166, '5', '51123', '4', 'TUNJANGAN LAIN-LAIN/ INSENTIF', 'd', ''),
(167, '5', '51124', '4', 'TUNJANGAN HARI NATAL', 'd', ''),
(168, '5', '51125', '4', 'TUNJANGAN FUNGSIONAL', 'd', ''),
(169, '5', '51126', '4', 'TUNJANGAN STRUKTURAL', 'd', ''),
(170, '5', '51127', '4', 'TUNJANGAN PENDIDIKAN', 'd', ''),
(171, '5', '51130', '3', 'GAJI EDUKATIF TIDAK TETAP', 'd', '1'),
(172, '5', '51131', '4', 'HONOR DTT PENGAJAR S1 DAN DIPLOMA', 'd', ''),
(173, '5', '51132', '4', 'HONOR ASISTEN DOSEN S1 DAN DIPLOMA', 'd', ''),
(174, '5', '51133', '4', 'HONOR DTT PENGAJAR MAGISTER', 'd', ''),
(175, '5', '51200', '3', 'BEBAN PENYELENGGARAAN UJIAN', 'd', '1'),
(176, '5', '51201', '4', 'UJIAN SEMESTER/ MID.SEMESTER', 'd', ''),
(177, '5', '51202', '4', 'BEBAN UJIAN SKRIPSI,TA,TESIS', 'd', ''),
(178, '5', '51203', '4', 'BEBAN UJIAN SISIPAN', 'd', ''),
(179, '5', '51300', '3', 'BEBAN PENGEMBAGAN STAF AKADEMIK', 'd', '1'),
(180, '5', '51301', '4', 'CERAMAH DAN SEMINAR', 'd', ''),
(181, '5', '51302', '4', 'PENATARAN TENAGA EDUKATIF', 'd', ''),
(182, '5', '51303', '4', 'KEGIATAN AKAD./ STUDI BANDING', 'd', ''),
(183, '5', '51304', '4', 'PENGEMBANGAN TENAGA EDUKATIF', 'd', ''),
(184, '5', '51305', '4', 'RAKER UNIVERSITAS DAN FAKULTAS', 'd', ''),
(185, '5', '51306', '4', 'KERJASAMA ', 'd', ''),
(186, '5', '51307', '4', 'PENGEMBAGAN PROGRAM STUDY', 'd', ''),
(187, '5', '51400', '3', 'PENELITIAN DAN PENGABDIAN MASYARAKAT', 'd', '1'),
(188, '5', '51401', '4', 'BEBAN PENELITIAN', 'd', ''),
(189, '5', '51402', '4', 'BEBAN PENGABDIAN MASYARAKAT ', 'd', ''),
(190, '5', '51403', '4', 'BALAI KONSULTASI', 'd', ''),
(191, '5', '51404', '4', 'STUDI TOUR DAN KKL', 'd', ''),
(192, '5', '51405', '4', 'KULIAH KERJA NAYATA', 'd', ''),
(193, '5', '51500', '3', 'BUKU DAN OPERASIONAL PERPUSTAKAAN', 'd', '1'),
(194, '5', '51501', '4', 'BUKU PEPUSTAKAAN DAN JURNAL', 'd', ''),
(195, '5', '51502', '4', 'OPERASIONAL PERPUSTAKAAN', 'd', ''),
(196, '5', '51600', '3', 'BEBAN OPERASIONAL LABORATORIUM', 'd', '1'),
(197, '5', '51601', '4', 'BAHAN PRAKTIKUM', 'd', ''),
(198, '5', '51602', '4', 'OPERASIONAL LABORATORIUM', 'd', ''),
(199, '5', '51700', '3', 'BEBAN PENERIMAAN MAHASISWA BARU', 'd', '1'),
(200, '5', '51701', '4', 'BEBAN PROMOSI PMB', 'd', ''),
(201, '5', '51702', '4', 'BEBAN PENYELENGGARAAN SELEKSI', 'd', ''),
(202, '5', '51703', '4', 'BEBAN PENYELENGGARAAN PTMB', 'd', ''),
(203, '5', '51800', '3', 'BEBAN UMUM AKADEMIK', 'd', '1'),
(204, '5', '51801', '4', 'DIES NATALIS/ WISUDA SARJANA', 'd', ''),
(205, '5', '51802', '4', 'DANA TAKTIS REKTOR &  DEKAN', 'd', ''),
(206, '5', '51803', '4', 'PUBLIKASI UNIVERSITAS', 'd', ''),
(207, '5', '51804', '4', 'PENERBITAN', 'd', ''),
(208, '5', '51805', '4', 'EVALUASI DAN AKREDITASI', 'd', ''),
(209, '5', '51806', '4', 'PEMBUKAAN FAKULTAS & JURUSAN', 'd', ''),
(210, '5', '51807', '4', 'PENGURUSAN TENAGA EDUKATIF', 'd', ''),
(211, '5', '52000', '2', 'PENYELENGGARAAN KEMAHASISWAAN', 'd', '1'),
(212, '5', '52100', '3', 'BEBAN KEGIATAN KEMAHASISWAAN', 'd', '1'),
(213, '5', '52101', '4', 'KEGATAN OLAH RAGA', 'd', ''),
(214, '5', '52102', '4', 'KEGIATAN SENI DAN BUDAYA', 'd', ''),
(215, '5', '52103', '4', 'KEGIATAN PRESTATIF MAHASISWA', 'd', ''),
(216, '5', '52104', '4', 'PENELITIAN MAHASISWA', 'd', ''),
(217, '5', '52200', '3', 'BEBAN UMUM KEMAHASISWAAN', 'd', '1'),
(218, '5', '52201', '4', 'PERINGATAN HARI BESAR', 'd', ''),
(219, '5', '52202', '4', 'BEBAN PREMI ASURANSI', 'd', ''),
(220, '5', '52203', '4', 'JAKET ALMAMATER MAHASISWA BARU', 'd', ''),
(221, '5', '52204', '4', 'BUKU PEDOMAN MAHASISWA BARU', 'd', ''),
(222, '5', '52205', '4', 'PELATIHAN KEPRIBADIAN MAHASISWA', 'd', ''),
(223, '5', '52206', '4', 'LAYANAN KONSELING', 'd', ''),
(224, '5', '52207', '4', 'KEGIATAN ALUMNI', 'd', ''),
(225, '5', '52208', '4', 'KEGIATAN SSCC', 'd', ''),
(226, '5', '52209', '4', 'PEMBEKALAN TOEFL WISUDAWAN', 'd', ''),
(227, '5', '52300', '3', 'BEBAN BEASISWA S1', 'd', '1'),
(228, '5', '52301', '4', 'BEASISWA YAY.SANDJOJO-UNIVERSITAS', 'd', ''),
(229, '5', '52302', '4', 'BEASISWA S1 KWI/ APTIK', 'd', ''),
(230, '5', '52303', '4', 'BEASISWA S1 LAINNYA', 'd', ''),
(231, '5', '53000', '2', 'PENYELENGGARAAN ADMINISTRASI', 'd', '1'),
(232, '5', '53200', '3', 'BEBAN ADMINISTRASI KANTOR', 'd', '1'),
(233, '5', '53201', '4', 'ALAT TULIS KANTOR', 'd', ''),
(234, '5', '53202', '4', 'RUTIN RUMAH TANGGA', 'd', ''),
(235, '5', '53203', '4', 'METERAI DAN PERANGKO', 'd', ''),
(236, '5', '53204', '4', 'BEBAN RAPAT', 'd', ''),
(237, '5', '53205', '4', 'CETAK DAN FOTO COPY', 'd', ''),
(238, '5', '53206', '4', 'SURAT KABAR/ MAJALAH', 'd', ''),
(239, '5', '53207', '4', 'BEBAN ADMINISTRASI BANK', 'd', ''),
(240, '5', '53208', '4', 'BEBAN SOUVENIR', 'd', ''),
(241, '5', '53100', '3', 'GAJI TENAGA ADMINISTRASI', 'd', '1'),
(242, '5', '53101', '4', 'GAJI POKOK DAN TUNJ. KELUARGA', 'd', ''),
(243, '5', '53102', '4', 'TUNJANGAN FUNGSIONAL', 'd', ''),
(244, '5', '53103', '4', 'TUNJANGAN STRUKTURAL', 'd', ''),
(245, '5', '53104', '4', 'TUNJANGAN YAYASAN', 'd', ''),
(246, '5', '53105', '4', 'TUNJANGAN HARI NATAL', 'd', ''),
(247, '5', '53106', '4', 'TUNJANGAN INSENTIF/ LAIN-LAIN', 'd', ''),
(248, '5', '53107', '4', 'TUNJANGAN LEMBUR', 'd', ''),
(249, '5', '53108', '4', 'GAJI TENAGA KONTRAK', 'd', ''),
(250, '5', '53300', '3', 'BEBAN UMUM KEPEGAWAIAN', 'd', '1'),
(251, '5', '53301', '4', 'OBAT-OBATAN KLINIK IBU TERESA', 'd', ''),
(252, '5', '53302', '4', 'PENGEMBANGAN/ PELATIHAN PEGAWAI', 'd', ''),
(253, '5', '53303', '4', 'REKOLEKSI, RETRET & REKREASI', 'd', ''),
(254, '5', '53304', '4', 'PAKAIAN DINAS', 'd', ''),
(255, '5', '53305', '4', 'TRANSPORT DINAS', 'd', ''),
(256, '5', '53306', '4', 'IURAN PRANATA SEHAT', 'd', ''),
(257, '5', '53400', '3', 'BEBAN JASA PUBLIK', 'd', '1'),
(258, '5', '53401', '4', 'REKENING LISTRIK', 'd', ''),
(259, '5', '53402', '4', 'REKENING TELEPON', 'd', ''),
(260, '5', '53403', '4', 'REKENING AIR', 'd', ''),
(261, '5', '53404', '4', 'RESTRIBUSI SAMPAH', 'd', ''),
(262, '5', '53405', '4', 'REKENING ASTINET', 'd', ''),
(263, '5', '53500', '3', 'JASA TENAGA AHLI', 'd', '1'),
(264, '5', '53501', '4', 'TENAGA AKUNTAN PUBLIK', 'd', ''),
(265, '5', '53502', '4', 'TENAGA MANAJEMEN & PROGRAMER', 'd', ''),
(266, '5', '53503', '4', 'TENAGA NOTARIS, DLL.', 'd', ''),
(267, '5', '53600', '3', 'BEBAN IURAN KEBERSAMAAN', 'd', '1'),
(268, '5', '53601', '4', 'IURAN BMPTS/ KOPERTIS', 'd', ''),
(269, '5', '53602', '4', 'IURAN YADAPEN', 'd', ''),
(270, '5', '53603', '4', 'IURAN APTIK', 'd', ''),
(271, '5', '53604', '4', 'IURAN DPLK PENDAMPING PENSIUN', 'd', ''),
(272, '5', '53605', '4', 'SUMBANGAN SOSIAL', 'd', ''),
(273, '5', '53606', '4', 'BINGKISAN HARI BESAR KEAGAMAAN', 'd', ''),
(274, '5', '53700', '3', 'BEBAN PENGEMBANGAN', 'd', '1'),
(275, '5', '53701', '4', 'PENELITIAN DAN STUDI BANDING', 'd', ''),
(276, '5', '53702', '4', 'BUKU PERPUSTAKAAN/ REFERENSI', 'd', ''),
(277, '5', '53703', '4', 'OPS LAB UNIT', 'd', ''),
(278, '5', '53704', '4', 'PROMOSI,IKLAN,PUBLIKASI', 'd', ''),
(279, '5', '53800', '3', 'BEBAN PREMI ASURANSI', 'd', '1'),
(280, '5', '53801', '4', 'PREMI ASURANSI BANGUNAN', 'd', ''),
(281, '5', '53802', '4', 'PREMI ASURANSI KENDARAAN ', 'd', ''),
(282, '5', '53900', '3', 'BEBAN PAJAK', 'd', '1'),
(283, '5', '53901', '4', 'BEBAN PAJAK BUMI DAN BANGUNAN', 'd', ''),
(284, '5', '53902', '4', 'BEBAN PAJAK PENGASILAN PASAL 21', 'd', ''),
(285, '5', '53903', '4', 'BEBAN PAJAK PENGASILAN BADAN', 'd', ''),
(286, '5', '54000', '2', 'BEBAN PERAWATAN DAN DEPRESIASI ASET TETAP', 'd', '1'),
(287, '5', '54100', '3', 'BEBAN PERAWATAN ', 'd', '1'),
(288, '5', '54101', '4', 'PERAWATAN RUANG KULIAH', 'd', ''),
(289, '5', '54102', '4', 'PERAWATAN PERALATAN LABORATORIUM', 'd', ''),
(290, '5', '54103', '4', 'PERAWATAN KENDARAAN DINAS', 'd', ''),
(291, '5', '54104', '4', 'PERAWATAN PERALATAN KANTOR', 'd', ''),
(292, '5', '54105', '4', 'PERAWATAN PERALATAN PERPUSTAKAAN', 'd', ''),
(293, '5', '54106', '4', 'PERAWATAN PERALATAN RM. TANGGA', 'd', ''),
(294, '5', '54107', '4', 'PERAWATAN SARANA KAMPUS', 'd', ''),
(295, '5', '54200', '3', 'BEBAN DEPRESIASI ASET TETAP', 'd', '1'),
(296, '5', '54201', '4', 'BEBAN DEPRESIASI BANGUNAN', 'd', ''),
(297, '5', '54202', '4', 'BEBAN DEPRESIASI LABORATORIUM', 'd', ''),
(298, '5', '54203', '4', 'BEBAN DEPRESIASI KENDARAAN DINAS', 'd', ''),
(299, '5', '54204', '4', 'BEBAN DEPRESIASI INVENTARIS KANTOR & RUANG KULIAH', 'd', ''),
(300, '3', '31701', '4', 'Titipan Lain-lain', 'k', '1'),
(301, '1', '11216', '4', 'MAYBANK 2-575-000023 QQ UNIKA', 'd', ''),
(302, '1', '11217', '4', 'MAYBANK 2-575-000006 QQ UNIKA', 'd', ''),
(303, '1', '11218', '4', 'MAYBANK 2-575-000071\r\n', 'd', ''),
(304, '1', '11219', '4', 'MAYBANK 2-575-000085', 'd', ''),
(305, '3', '31701', '4', 'TITIPAN LAIN-LAIN', 'k', '1'),
(306, '4', '43405', '4', 'PENDAPATAN SEWA RUANG DAN FASILITAS', 'k', '1'),
(307, '4', '43406', '4', 'PENDAPATAN SEWA KENDARAAN', 'k', '1'),
(308, '4', '43110', '4', 'PENDAPATAN JASA GIRO', 'd', '1'),
(310, '4', '43207', '4', 'JASA KONSULTASI ANAK', 'k', ''),
(311, '5', '53307', '4', 'Iuran BPJS', 'd', ''),
(312, '5', '53308', '4', 'Iuran CAR', 'd', ''),
(313, '4', '41109', '4', 'SETORAN MAHASISWA VIA BII.01', 'k', '1'),
(314, '4', '41110', '4', 'SETORAN MAHASISWA TIDAK JELAS', 'k', ''),
(315, '1', '11220', '4', 'BANK BRI 1110-01-000149-30-3', 'd', ''),
(316, '4', '43109', '4', 'Bunga Deposito', 'd', '1'),
(317, '5', '51108', '4', 'TUNJANGAN KPO EDUKATIF TETAP', 'k', ''),
(318, '5', '51118', '4', 'TUNJANGAN KPO CALON EDUKATIF TETAP', 'k', ''),
(319, '5', '53209', '4', 'TUNJANGAN KPO TENAGA KEPENDIDIKAN', 'k', '1'),
(320, '5', '53504', '4', 'HONORARIUM KONSULTAN', 'd', ''),
(321, '1', '11221', '4', 'BANK BTN 00117-01-30-000119-1', 'd', ''),
(322, '1', '11222', '4', 'REKENING RUSUNAWA MAYBANK 2.575.00000.6', 'd', '1'),
(323, '5', '53505', '4', 'HONORARIUM ASISTEN', 'd', ''),
(324, '3', '32601', '4', 'MODAL BANTUAN PEMERINTAH', 'k', '1'),
(325, '3', '32701', '4', 'MODAL SUMBANGAN', 'k', '1'),
(326, '3', '32801', '4', 'MODAL YAYASAN', 'k', '1'),
(327, '3', '32501', '4', 'MODAL PENDIRIAN', 'k', '1'),
(328, '3', '32901', '4', 'LABA SELISIH KURS US$', 'k', '1'),
(329, '5', '51109', '4', 'TUNJANGAN KINERJA', 'k', ''),
(330, '5', '52304', '4', 'BEASISWA S1 PEMERINTAH/DIKTI', 'k', ''),
(331, '4', '43407', '4', 'PENDAPATAN SEWA TANAH DAN BANGUNAN', 'k', '1'),
(332, '5', '53506', '4', 'GAJI PENGAJAR TETAP', 'd', ''),
(333, '5', '51134', '4', 'GAJI PENGAJAR TIDAK TETAP', 'd', ''),
(334, '5', '51128', '2', 'TUNJANGAN KPO TBT', 'd', ''),
(335, '1', '11108', '3', 'KAS KECIL ASRAMA MAHASISWA', 'd', ''),
(336, '1', '11109', '3', 'KAS PENDAPATAN ASRAMA DORMITORY', 'd', '1'),
(337, '5', '55101', '3', 'POTONGAN', 'k', '1'),
(339, '2', '31305', '4', 'PPh.FINAL PASAL 4,AYAT 2', 'k', ''),
(341, '4', '41199', '4', 'SETORAN MAHASISWA (REK TAMPUNG)', 'k', ''),
(342, '4', '49000', '2', 'PENDAPATAN DAN (BEBAN) LAIN-LAIN', 'k', ''),
(343, '4', '49101', '4', 'JASA GIRO, Neto', 'k', ''),
(344, '4', '49201', '4', 'BUNGA DEPOSITO, Neto', 'k', ''),
(345, '4', '49301', '4', 'LABA (RUGI) SELISIH KURS', 'k', ''),
(346, '4', '49401', '4', 'SEWA DAN LAIN-LAIN, Neto', 'k', ''),
(347, '4', '49501', '4', 'LABA (RUGI) PENJUALAN ASET TETAP', 'k', ''),
(348, '5', '54205', '4', 'DEPRESIASI ASET TETAP CAD DANA PEMBANGUNAN', 'd', ''),
(349, '5', '59101', '4', 'BEBAN BUNGA PINJAMAN', 'd', ''),
(350, '5', '53705', '4', 'RAPAT KERJA UNIT', 'd', ''),
(351, '5', '53706', '4', 'PENGEMBANGAN TENAGA PENGAJAR', 'd', ''),
(352, '5', '53707', '4', 'KERJASAMA LEMBAGA', 'd', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit`
--

CREATE TABLE `unit` (
  `id_unit` int(64) NOT NULL,
  `kode1` int(64) NOT NULL,
  `kode2` varchar(64) NOT NULL,
  `Nama` varchar(64) NOT NULL,
  `status` varchar(64) NOT NULL,
  `deleted` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `unit`
--

INSERT INTO `unit` (`id_unit`, `kode1`, `kode2`, `Nama`, `status`, `deleted`) VALUES
(1, 1, 'A1', 'BAK', 'd', '0'),
(2, 1, 'C1', 'UKM', 'd', '0'),
(3, 1, 'F1', 'Fakultas', 'd', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_kas`
--
ALTER TABLE `jenis_kas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurnal_umum`
--
ALTER TABLE `jurnal_umum`
  ADD PRIMARY KEY (`id_jurnal_umum`);

--
-- Indexes for table `kode_rek2`
--
ALTER TABLE `kode_rek2`
  ADD PRIMARY KEY (`idkode_rek`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id_unit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_kas`
--
ALTER TABLE `jenis_kas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jurnal_umum`
--
ALTER TABLE `jurnal_umum`
  MODIFY `id_jurnal_umum` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kode_rek2`
--
ALTER TABLE `kode_rek2`
  MODIFY `idkode_rek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;
--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id_unit` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
