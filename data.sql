-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2023 at 05:38 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `bebas`
--

CREATE TABLE `bebas` (
  `bebas_id` int(11) NOT NULL,
  `student_student_id` int(11) DEFAULT NULL,
  `payment_payment_id` int(11) DEFAULT NULL,
  `bebas_bill` decimal(10,0) DEFAULT NULL,
  `bebas_total_pay` decimal(10,0) DEFAULT 0,
  `bebas_input_date` timestamp NULL DEFAULT NULL,
  `bebas_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bebas_pay`
--

CREATE TABLE `bebas_pay` (
  `bebas_pay_id` int(11) NOT NULL,
  `bebas_bebas_id` int(11) DEFAULT NULL,
  `bebas_pay_number` varchar(100) DEFAULT NULL,
  `bebas_pay_bill` decimal(10,0) DEFAULT NULL,
  `bebas_pay_desc` varchar(100) DEFAULT NULL,
  `user_user_id` int(11) DEFAULT NULL,
  `bebas_pay_input_date` date DEFAULT NULL,
  `bebas_pay_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bulan`
--

CREATE TABLE `bulan` (
  `bulan_id` int(11) NOT NULL,
  `student_student_id` int(11) DEFAULT NULL,
  `payment_payment_id` int(11) DEFAULT NULL,
  `month_month_id` int(11) DEFAULT NULL,
  `bulan_bill` decimal(10,0) DEFAULT NULL,
  `bulan_status` tinyint(1) DEFAULT 0,
  `bulan_number_pay` varchar(100) DEFAULT NULL,
  `bulan_date_pay` date DEFAULT NULL,
  `user_user_id` int(11) DEFAULT NULL,
  `bulan_input_date` timestamp NULL DEFAULT NULL,
  `bulan_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(1, 'X.NKN'),
(2, 'X.TLM'),
(3, 'X.KP.1'),
(4, 'X.KP.2'),
(5, 'X.TF.1'),
(6, 'X.TF.2'),
(7, 'XI.NKN'),
(8, 'XI.TLM'),
(9, 'XI.KP.1'),
(10, 'XI.KP.2'),
(11, 'XI.TF.1'),
(12, 'XI.TF.2'),
(13, 'XII.NKN.1'),
(14, 'XII.NKN.2'),
(15, 'XII.TLM'),
(16, 'XII.KP'),
(17, 'XII.TF.1'),
(18, 'XII.TF.2');

-- --------------------------------------------------------

--
-- Table structure for table `debit`
--

CREATE TABLE `debit` (
  `debit_id` int(11) NOT NULL,
  `debit_date` date DEFAULT NULL,
  `debit_desc` varchar(100) DEFAULT NULL,
  `debit_value` decimal(10,0) DEFAULT NULL,
  `user_user_id` int(11) DEFAULT NULL,
  `debit_input_date` timestamp NULL DEFAULT NULL,
  `debit_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `id` int(11) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `information_id` int(11) NOT NULL,
  `information_title` varchar(100) DEFAULT NULL,
  `information_desc` text DEFAULT NULL,
  `information_img` varchar(255) DEFAULT NULL,
  `information_publish` tinyint(1) DEFAULT 0,
  `user_user_id` int(11) DEFAULT NULL,
  `information_input_date` timestamp NULL DEFAULT NULL,
  `information_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kredit`
--

CREATE TABLE `kredit` (
  `kredit_id` int(11) NOT NULL,
  `kredit_date` date DEFAULT NULL,
  `kredit_desc` varchar(100) DEFAULT NULL,
  `kredit_value` decimal(10,0) DEFAULT NULL,
  `user_user_id` int(11) DEFAULT NULL,
  `kredit_input_date` timestamp NULL DEFAULT NULL,
  `kredit_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `letter`
--

CREATE TABLE `letter` (
  `letter_id` int(11) NOT NULL,
  `letter_number` varchar(100) DEFAULT NULL,
  `letter_month` int(11) DEFAULT NULL,
  `letter_year` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `log_date` timestamp NULL DEFAULT NULL,
  `log_action` varchar(45) DEFAULT NULL,
  `log_module` varchar(45) DEFAULT NULL,
  `log_info` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `log_date`, `log_action`, `log_module`, `log_info`, `user_id`) VALUES
(1, '2023-01-18 06:59:49', 'Tambah', 'Tahun Ajaran', 'ID:null;Title:2023/2024', NULL),
(2, '2023-01-18 07:00:01', 'Tambah', 'Tahun Ajaran', 'ID:null;Title:2022/2023', NULL),
(3, '2023-01-23 00:03:48', 'Tambah', 'Student', 'ID:1;Name:BAMBANG SETIAWAN', 1),
(4, '2023-01-23 00:06:57', 'Sunting', 'Student', 'ID:1;Name:BAMBANG SETIAWAN', 1),
(5, '2023-01-23 00:30:55', 'Hapus', 'user', 'ID:;Title:', 1);

-- --------------------------------------------------------

--
-- Table structure for table `log_trx`
--

CREATE TABLE `log_trx` (
  `log_trx_id` int(11) NOT NULL,
  `student_student_id` int(11) DEFAULT NULL,
  `bulan_bulan_id` int(11) DEFAULT NULL,
  `bebas_pay_bebas_pay_id` int(11) DEFAULT NULL,
  `log_trx_input_date` timestamp NULL DEFAULT NULL,
  `log_trx_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `majors_id` int(11) NOT NULL,
  `majors_name` varchar(100) DEFAULT NULL,
  `majors_short_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`majors_id`, `majors_name`, `majors_short_name`) VALUES
(1, 'NAUTIKA KAPAL NIAGA', 'NKN'),
(2, 'TEKNOLOGI LAB MEDIK', 'TLM'),
(3, 'PELAYANAN KESEHATAN', 'KP'),
(4, 'TEKNOLOGI FARMASI', 'TF');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `month_id` int(11) NOT NULL,
  `month_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`month_id`, `month_name`) VALUES
(1, 'Juli'),
(2, 'Agustus'),
(3, 'September'),
(4, 'Oktober'),
(5, 'November'),
(6, 'Desember'),
(7, 'Januari'),
(8, 'Februari'),
(9, 'Maret'),
(10, 'April'),
(11, 'Mei'),
(12, 'Juni');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_type` enum('BEBAS','BULAN') DEFAULT NULL,
  `period_period_id` int(11) DEFAULT NULL,
  `pos_pos_id` int(11) DEFAULT NULL,
  `payment_input_date` timestamp NULL DEFAULT NULL,
  `payment_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `period`
--

CREATE TABLE `period` (
  `period_id` int(11) NOT NULL,
  `period_start` year(4) DEFAULT NULL,
  `period_end` year(4) DEFAULT NULL,
  `period_status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `period`
--

INSERT INTO `period` (`period_id`, `period_start`, `period_end`, `period_status`) VALUES
(1, 2023, 2024, 0),
(2, 2022, 2023, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pos`
--

CREATE TABLE `pos` (
  `pos_id` int(11) NOT NULL,
  `pos_name` varchar(100) DEFAULT NULL,
  `pos_description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `setting_name` varchar(255) DEFAULT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`, `setting_last_update`) VALUES
(1, 'setting_school', 'SMK MITRA SEHAT MANDIRI SIDOARJO', '2023-01-18 06:55:02'),
(2, 'setting_address', 'JL. KI HAJAR DEWANTARA NO. 200', '2023-01-18 06:55:02'),
(3, 'setting_phone', '031 8987233', '2023-01-18 06:55:02'),
(4, 'setting_district', 'KRIAN', '2023-01-18 06:55:02'),
(5, 'setting_city', 'SIDOARJO', '2023-01-18 06:55:02'),
(6, 'setting_logo', 'SMK_MITRA_SEHAT_MANDIRI_SIDOARJO.jpg', '2023-01-18 06:55:02'),
(7, 'setting_level', 'senior', '2023-01-18 06:55:02'),
(8, 'setting_user_sms', '-', '2023-01-18 06:55:02'),
(9, 'setting_pass_sms', 'password', '2023-01-18 06:55:02'),
(10, 'setting_sms', 'N', '2023-01-18 06:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_nis` varchar(45) DEFAULT NULL,
  `student_nisn` varchar(45) DEFAULT NULL,
  `student_password` varchar(100) DEFAULT NULL,
  `student_full_name` varchar(255) DEFAULT NULL,
  `student_gender` enum('L','P') DEFAULT NULL,
  `student_born_place` varchar(45) DEFAULT NULL,
  `student_born_date` date DEFAULT NULL,
  `student_img` varchar(255) DEFAULT NULL,
  `student_phone` varchar(45) DEFAULT NULL,
  `student_hobby` varchar(100) DEFAULT NULL,
  `student_address` text DEFAULT NULL,
  `student_name_of_mother` varchar(255) DEFAULT NULL,
  `student_name_of_father` varchar(255) DEFAULT NULL,
  `student_parent_phone` varchar(45) DEFAULT NULL,
  `class_class_id` int(11) DEFAULT NULL,
  `majors_majors_id` int(11) DEFAULT NULL,
  `student_status` tinyint(1) DEFAULT 1,
  `student_input_date` timestamp NULL DEFAULT NULL,
  `student_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_nis`, `student_nisn`, `student_password`, `student_full_name`, `student_gender`, `student_born_place`, `student_born_date`, `student_img`, `student_phone`, `student_hobby`, `student_address`, `student_name_of_mother`, `student_name_of_father`, `student_parent_phone`, `class_class_id`, `majors_majors_id`, `student_status`, `student_input_date`, `student_last_update`) VALUES
(1, '2188/0097.073', '2188/0097.073', '', 'DIVTA MAULIDA SYAMPUTRI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 2, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(2, '2189/0098.073', '2189/0098.073', '', 'DYAS ERSICHY AL ROY PASHA', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 2, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(3, '2190/0099.073', '2190/0099.073', '', 'ILLIYIN CHEYSA GLADYS MA\'ARIF', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 2, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(4, '2191/0100.073', '2191/0100.073', '', 'JEZZICA RATU PERMAVI PUTRI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 2, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(5, '2192/0101.073', '2192/0101.073', '', 'KHARISMA INTAN NUR RAHMADANI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 2, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(6, '2193/0102.073', '2193/0102.073', '', 'MARSYA AYU DIAH AGUSTINA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 2, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(7, '2194/0103.073', '2194/0103.073', '', 'NURLAILATUS SAFIRAH', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 2, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(8, '2195/0104.073', '2195/0104.073', '', 'SASKIA SALSABILA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 2, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(9, '2196/0105.073', '2196/0105.073', '', 'VAREL RADITYA WANTORO', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 2, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(10, '2197/0106.073', '2197/0106.073', '', 'VILDA DESSITA SAYEKTI', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 2, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(11, '2198/0107.073', '2198/0107.073', '', 'YOSAFAT JEAVEN AARON RAHARDJO', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 2, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(12, '2198/0176.100', '2198/0176.100', '', 'ACHMADANI PUTRA HIDAYATULLAH', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(13, '2199/0177.100', '2199/0177.100', '', 'ADITYA KARYA MAHATFA YODHA', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(14, '2200/0178.100', '2200/0178.100', '', 'ADITYAH PRATAMA PUTRA', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(15, '2201/0179.100', '2201/0179.100', '', 'ALIF ARYA KUSUMA', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(16, '2202/0180.100', '2202/0180.100', '', 'ANANDA SHIFA AULIA ', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(17, '2203/0181.100', '2203/0181.100', '', 'CHELSEA SAVALENTINA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(18, '2204/0182.100', '2204/0182.100', '', 'DELLA KHALIMATUS TSA\'DIYAH', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(19, '2205/0183.100', '2205/0183.100', '', 'FAJAR DHABITH PUTRA RAMADHANI', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(20, '2206/0184.100', '2206/0184.100', '', 'KAFKA BRILIAN SHUFI', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(21, '2207/0185.100', '2207/0185.100', '', 'M THORIQ IVAN SAPUTRA', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(22, '2208/0186.100', '2208/0186.100', '', 'MUH. GALIH YOGA PRATAMA', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(23, '2209/0187.100', '2209/0187.100', '', 'NAJWA DESEMBRINA PRIMATANIA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(24, '2210/0188.100', '2210/0188.100', '', 'NEZHA AURA JUNIERNEST ', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(25, '2211/0189.100', '2211/0189.100', '', 'NEZIA LANDY RAMADHANI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(26, '2212/0190.100', '2212/0190.100', '', 'NOVAL ANDRYANSYAH', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(27, '2213/0191.100', '2213/0191.100', '', 'REZA NUR APRILIA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(28, '2214/0192.100', '2214/0192.100', '', 'ROHMAN SULISTIANTO', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(29, '2216/0007.101', '2216/0007.101', '', 'DEVA HEDHINATA WIRADHANA', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(30, '2217/0008.101', '2217/0008.101', '', 'FAJAR HIBATH PUTRA RAMADHANA', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(31, '2218/0009.101', '2218/0009.101', '', 'JAYA HADI WIJAYA', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(32, '2219/0010.101', '2219/0010.101', '', 'RISKY PUTRA ANANSYAH', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(33, '2220/0011.101', '2220/0011.101', '', 'ROHIM SULISTIONO', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(34, '2221/0012.101', '2221/0012.101', '', 'WAHYU WIDODO', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(35, '2221/0012.101', '2221/0012.101', '', 'YUDHA PRANATA PUTRA', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 1, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(36, '2132/0247.071', '2132/0247.071', '', 'AISYAH', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(37, '2133/0248.071', '2133/0248.071', '', 'AKHADAH SYIFAA AZZAHRAH', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(38, '2134/0249.071', '2134/0249.071', '', 'AMANDA VALENT MARTADIANTOMO', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(39, '2135/0250.071', '2135/0250.071', '', 'ANINDA FEBRIATI NUR SHAFIRA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(40, '2136/0251.071', '2136/0251.071', '', 'ATIKA YESI ANGGUN PRIBADI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(41, '2137/0252.071', '2137/0252.071', '', 'AULIA MUDHAKKHIROH', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(42, '2138/0253.071', '2138/0253.071', '', 'AYU NUR PRATIWI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(43, '2139/0254.071', '2139/0254.071', '', 'AZZAHRA FIRDAUSY SETIAWAN PUTRI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(44, '2140/0255.071', '2140/0255.071', '', 'CANTIKA AULIA FERNANDA ', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(45, '2141/0256.071', '2141/0256.071', '', 'CHERYL KALYQA NAZAHWA BILA\'IL AWAHYTTA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(46, '2142/0257.071', '2142/0257.071', '', 'DEA NATHASYA FATIHA PUTRI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(47, '2143/0258.071', '2143/0258.071', '', 'DIBA DEWI FARIHA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(48, '2144/0259.071', '2144/0259.071', '', 'Dieva Natasya Aura Putri Santoso', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(49, '2145/0260.071', '2145/0260.071', '', 'DIVA DWI PRIYANTI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(50, '2146/0261.071', '2146/0261.071', '', 'DINA APRILIA SYIFA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(51, '2147/0262.071', '2147/0262.071', '', 'DINA FAIZAH MULYA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(52, '2148/0263.071', '2148/0263.071', '', 'DINDA VIRNA AGUSTIN', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(53, '2149/0264.071', '2149/0264.071', '', 'ELSA PUTRI ANANDA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(54, '2150/0265.071', '2150/0265.071', '', 'HESTI AMALIA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(55, '2151/0266.071', '2151/0266.071', '', 'HIMANDA NUR MAULIDIA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(56, '2152/0267.071', '2152/0267.071', '', 'INDHI NADYA SAFWAH', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(57, '2153/0268.071', '2153/0268.071', '', 'INTAN APRILIANTI ', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(58, '2154/0269.071', '2154/0269.071', '', 'IRZALINA WAHYU NUR AIDA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(59, '2155/0270.071', '2155/0270.071', '', 'LARAS SUCI RAHMADILA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(60, '2156/0271.071', '2156/0271.071', '', 'LELIA NUR ITAVIA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(61, '2157/0272.071', '2157/0272.071', '', 'NABILA CAHYANI SALSABILAH', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(62, '2158/0273.071', '2158/0273.071', '', 'NADILA MEGA CAHYA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(63, '2159/0274.071', '2159/0274.071', '', 'NAJWA AULIA FITRIANI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(64, '2160/0275.071', '2160/0275.071', '', 'NATASYA AZIZAH WAHYUNI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 3, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(65, '2160/0275.071', '2160/0275.071', '', 'NATHASYA RARA DEWANI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(66, '2161/0276.071', '2161/0276.071', '', 'NATHASYA SASKIA KHIRANI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(67, '2162/0277.071', '2162/0277.071', '', 'NAVY ANANTA PUTRI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(68, '2163/0278.071', '2163/0278.071', '', 'NAZILLA AULIA DEWI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(69, '2164/0279.071', '2164/0279.071', '', 'NEZA AULIA PUTRI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(70, '2165/0280.071', '2165/0280.071', '', 'PRITA LAVENIA DARMAWAN', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(71, '2166/0281.071', '2166/0281.071', '', 'QORI\' AINA SALSABILLAH', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(72, '2167/0282.071', '2167/0282.071', '', 'Rachel Sherill Putri Anmandhita', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(73, '2168/0283.071', '2168/0283.071', '', 'RAHMA AULIA DWI AGUSTYA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(74, '2169/0284.071', '2169/0284.071', '', 'RAHMA FITRIA SARI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(75, '2170/0285.071', '2170/0285.071', '', 'REYKASETYA FUTICHA PASHA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(76, '2171/0286.071', '2171/0286.071', '', 'RIFA ISNAINI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(77, '2172/0287.071', '2172/0287.071', '', 'RINI PUSPITASARI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(78, '2173/0288.071', '2173/0288.071', '', 'RIRIZ NUR FADILAH ARISTAYANI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(79, '2174/0289.071', '2174/0289.071', '', 'RISMA YUNITA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(80, '2175/0290.071', '2175/0290.071', '', 'SABRINA RAMADHANI RIDHO', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(81, '2176/0291.071', '2176/0291.071', '', 'SAFIRA AMELIA PUTRI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(82, '2177/0292.071', '2177/0292.071', '', 'SALMA SABRINA NARESWARI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(83, '2178/0293.071', '2178/0293.071', '', 'SALWA PUTRI RAHMADANI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(84, '2179/0294.071', '2179/0294.071', '', 'SARAH APRILLIYANTI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(85, '2180/0295.071', '2180/0295.071', '', 'SEPTIA RAMADANI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(86, '2181/0296.071', '2181/0296.071', '', 'SHELLA OKTAVIA RAHMADANI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(87, '2182/0297.071', '2182/0297.071', '', 'SITI AISYAH RAHMADANI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(88, '2183/0298.071', '2183/0298.071', '', 'WIDYA FAJAR APRIANTI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(89, '2184/0299.071', '2184/0299.071', '', 'WIDYA SULISTIOWATI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(90, '2185/0300.071', '2185/0300.071', '', 'YENNY ZANNUBA ARIFAH PUTRI RAHAYU', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(91, '2186/0301.071', '2186/0301.071', '', 'ZAHWA ARTAMEVIA AULIYAK', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 4, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(92, '2094/0385.074', '2094/0385.074', '', 'MAMBAU KHOIRUS SAADAH', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(93, '2095/0386.074', '2095/0386.074', '', 'MARINE ZAHRO GIANITA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(94, '2096/0387.074', '2096/0387.074', '', 'MATTHEW ANDRIANTO', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(95, '2097/0388.074', '2097/0388.074', '', 'MAYA MEYLISKA HUTABARAT', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(96, '2098/0389.074', '2098/0389.074', '', 'MEISTA TRI ARDANY', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(97, '2099/0390.074', '2099/0390.074', '', 'MIFTACH AMBADAR AR ROZI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(98, '2100/0391.074', '2100/0391.074', '', 'MOCH. DAVIN ALFIANSYAH', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(99, '2101/0392.074', '2101/0392.074', '', 'MOCH. WAHYU NUGRAHA ', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(100, '2102/0393.074', '2102/0393.074', '', 'MUCHAMMAD BINTANG PARVENA', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(101, '2103/0394.074', '2103/0394.074', '', 'NAGITA PUTRI KAFKA NAVISA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(102, '2104/0395.074', '2104/0395.074', '', 'NARO SETYA ANNAJIM', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(103, '2105/0396.074', '2105/0396.074', '', 'NAZWA EVRATA BALQIST', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(104, '2106/0397.074', '2106/0397.074', '', 'NESIYA PUTRI APRILIA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(105, '2107/0398.074', '2107/0398.074', '', 'NINDIA CAHYA NURAINI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(106, '2108/0399.074', '2108/0399.074', '', 'NOBEL RATIH ANDARI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(107, '2109/0400.074', '2109/0400.074', '', 'PRAMITA AUDIYAH', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(108, '2110/0401.074', '2110/0401.074', '', 'PUTRI RAISSA RATRI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(109, '2111/0402.074', '2111/0402.074', '', 'REISYA SAHIRA TAHALELE', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(110, '2112/0403.074', '2112/0403.074', '', 'RENATA PUTRI ARIESTA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(111, '2113/0404.074', '2113/0404.074', '', 'RIFDAH RIHHA DATUL AISY', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(112, '2114/0405.074', '2114/0405.074', '', 'ROBBIYAH ANNISA WARDHANI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(113, '2115/0406.074', '2115/0406.074', '', 'SALWANIA AMANDIKA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(114, '2116/0407.074', '2116/0407.074', '', 'SANEGA ISTITAH ATMAJA ', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(115, '2117/0408.074', '2117/0408.074', '', 'SASKIA AULIA SHAGITA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(116, '2118/0409.074', '2118/0409.074', '', 'SAUSAN MUFIDAH NAWAR DANI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(117, '2119/0410.074', '2119/0410.074', '', 'SHANZA PARIASTIAN AMANY', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(118, '2120/0411.074', '2120/0411.074', '', 'SHIVA IZZI ATSMARA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(119, '2121/0412.074', '2121/0412.074', '', 'SILVIA AYU MUFAROKHA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(120, '2122/0413.074', '2122/0413.074', '', 'SITI MUFIDAH MUKARROMAH ', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(121, '2123/0414.074', '2123/0414.074', '', 'STEVANIE MICHELLINE HUSIANTO', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(122, '2124/0415.074', '2124/0415.074', '', 'SYLVIE DEZTYNA SARI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(123, '2125/0416.074', '2125/0416.074', '', 'THEODORA LUMEN AMINAH KEDANG', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(124, '2126/0417.074', '2126/0417.074', '', 'Veronica Putri Novaryanata', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(125, '2127/0418.074', '2127/0418.074', '', 'YENNY FARISKHA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(126, '2128/0419.074', '2128/0419.074', '', 'Yesiska Erni Rumondang Napitupulu', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(127, '2129/0420.074', '2129/0420.074', '', 'YUNEZA NAZILATUZ ZAHRA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(128, '2130/0421.074', '2130/0421.074', '', 'ZAHRA NUR AZIZAH', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(129, '2131/0422.074', '2131/0422.074', '', 'ZHANIRA RAHMASARI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 6, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(130, '2056/0347.074', '2056/0347.074', '', 'AJENG DWI PRATIWI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(131, '2057/0348.074', '2057/0348.074', '', 'ALEXA AZZAHRA PRASETYO', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(132, '2058/0349.074', '2058/0349.074', '', 'ALMA AQVIANDRY', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(133, '2059/0350.074', '2059/0350.074', '', 'AMELIA ARZAQI HIDAYAT', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(134, '2060/0351.074', '2060/0351.074', '', 'ANGELLA ZIVA PUTRI WIDIANTO', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(135, '2061/0352.074', '2061/0352.074', '', 'ANGGI DWI AL KHOLIFI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(136, '2062/0353.074', '2062/0353.074', '', 'ANGGUN TRIA RAMADANI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(137, '2063/0354.074', '2063/0354.074', '', 'ANISA MUFARIKHATUL CHOIRIYAH', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(138, '2064/0355.074', '2064/0355.074', '', 'ANNISA FATIKA RIANA DEWI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(139, '2065/0356.074', '2065/0356.074', '', 'APRILLIA ARTHA WIJAYA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(140, '2066/0357.074', '2066/0357.074', '', 'BALQIS NAURA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(141, '2067/0358.074', '2067/0358.074', '', 'BELLA SAFITRI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(142, '2068/0359.074', '2068/0359.074', '', 'CHEISA ANANTA AURELLIA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(143, '2069/0360.074', '2069/0360.074', '', 'CHIKA SERENADE RIVERA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(144, '2070/0361.074', '2070/0361.074', '', 'DANI PUTRI KURNIAWAN', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(145, '2071/0362.074', '2071/0362.074', '', 'DIYAH AYU PERMATASARI ', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(146, '2072/0363.074', '2072/0363.074', '', 'DWI WULAN SABBANIA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(147, '2073/0364.074', '2073/0364.074', '', 'ELVIA SHOFI SALSABILA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(148, '2074/0365.074', '2074/0365.074', '', 'ELZA DWI WIDYANINGRUM', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(149, '2075/0366.074', '2075/0366.074', '', 'ESSLA AULIA KHOIRUN NISA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(150, '2076/0367.074', '2076/0367.074', '', 'EVI ANGGRAINI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(151, '2077/0368.074', '2077/0368.074', '', 'FAUZI ADRIAN MAULANA', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(152, '2078/0369.074', '2078/0369.074', '', 'FEBRINIELA DAVICA HEVIN SETIAWAN', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(153, '2079/0370.074', '2079/0370.074', '', 'FITRIA DWI SAFAATIN', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(154, '2080/0371.074', '2080/0371.074', '', 'GITA AMELYA CHARYSTA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(155, '2081/0372.074', '2081/0372.074', '', 'HANIFAH ISTIFAIYYATUR RAHMAH', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(156, '2082/0373.074', '2082/0373.074', '', 'HENICHA PUTRI ZULAIKHAH', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(157, '2083/0374.074', '2083/0374.074', '', 'HIDAYATUL FATIHATUS SHOLIHAH', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(158, '2084/0375.074', '2084/0375.074', '', 'ILHAM AMRI YUSRO ACHMAD', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(159, '2085/0376.074', '2085/0376.074', '', 'IMELDA EKA FEBIAWAN ', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(160, '2086/0377.074', '2086/0377.074', '', 'IWAN DWI ANDIKA', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(161, '2087/0378.074', '2087/0378.074', '', 'JANUAR DIMAS PRAYOGO', 'L', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(162, '2088/0379.074', '2088/0379.074', '', 'JASMINE ANDINA SALSABILLA', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(163, '2089/0380.074', '2089/0380.074', '', 'JIHAN SABRINA AULIA PUTERI SAKUR', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(164, '2090/0381.074', '2090/0381.074', '', 'KIRANA BINTANG SURGAWI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(165, '2091/0382.074', '2091/0382.074', '', 'KURNIA NUR AINI JUNIFALDI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(166, '2092/0383.074', '2092/0383.074', '', 'LATASYAH CITRA DWI NOVITASARI', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(167, '2093/0384.074', '2093/0384.074', '', 'LIFTHYA KEISHA AZ-ZAHRA WIBISONO', 'P', 'Sidoarjo', '1994-12-10', '', '0816299081', 'Belajar', 'Sidoarjo', '-', '-', '0816299081', 5, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(168, '2025/0146.100', '2025/0146.100', '', 'ANANDA BAGUS FIRMANSYAH', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(169, '2026/0147.100', '2026/0147.100', '', 'ANUGRAH AIRON SATRIA ROSYIDI', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(170, '2027/0148.100', '2027/0148.100', '', 'ARYA SEPTIAN FERDIANSYAH', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(171, '2028/0149.100', '2028/0149.100', '', 'AUREL YERIVIAN ALFALANSYAH', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(172, '2029/0150.100', '2029/0150.100', '', 'BIMANDA TEGAR WIBISONO', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(173, '2030/0151.100', '2030/0151.100', '', 'DIAJENG MULYA BADRIATUN NUZULA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(174, '2032/0153.100', '2032/0153.100', '', 'DWI RANGGA PUTRA HERLAMBANG', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(175, '2033/0154.100', '2033/0154.100', '', 'ERNA REVALINA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(176, '2034/0155.100', '2034/0155.100', '', 'EVAN PRADIPA KOSASIH', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(177, '2035/0156.100', '2035/0156.100', '', 'INTAN AYU RAMADHANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(178, '2036/0157.100', '2036/0157.100', '', 'LEO NAZAR AURA RISKY', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(179, '2037/0158.100', '2037/0158.100', '', 'MOCH. LUCKY DWI PRASETYO', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(180, '2038/0159.100', '2038/0159.100', '', 'MUHAMAD RICO KANTA WARDANA', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(181, '2039/0160.100', '2039/0160.100', '', 'NABILA EKA OKTAVIA R.', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(182, '2040/0161.100', '2040/0161.100', '', 'NADELIANA KURNIA SARI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(183, '2041/0162.100', '2041/0162.100', '', 'NARARYA ALIE RIZKY NOER IMAM', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(184, '2042/0163.100', '2042/0163.100', '', 'PINGKI DWI MARCHA WULANDARI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(185, '2043/0164.100', '2043/0164.100', '', 'RAFFA PRATAMA IRFANSYAH', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(186, '2044/0165.100', '2044/0165.100', '', 'RESY ARSHALIA PUTRI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(187, '2045/0166.100', '2045/0166.100', '', 'SIGIT PRASETYA DINATA PUTRA', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(188, '2046/0167.100', '2046/0167.100', '', 'VALENSA NILA SARI EFENDI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(189, '2047/0168.100', '2047/0168.100', '', 'ZAVAQ FIRDAUS', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(190, '2048/0169.100', '2048/0169.100', '', 'ZUKA ALVANDO VAEYMAS PRAKOSA', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(191, '2049/0001.101', '2049/0001.101', '', 'AHMAD NAUVAL NABIL ', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(192, '2050/0002.101', '2050/0002.101', '', 'ALBION ARIS BANGKIT SANJAYA', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(193, '2051/0003.101', '2051/0003.101', '', 'ARVA ANDANY PUTRA FIRDAUS', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(194, '2052/0004.101', '2052/0004.101', '', 'DIMAS JAFAR ARYANTO', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(195, '2053/0005.101', '2053/0005.101', '', 'JENER YORGES PAY LAISKODAT', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(196, '2054/0006.101', '2054/0006.101', '', 'MILYARDO YEHEZKIEL TINDAON', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 7, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(197, '2021/0093.073', '2021/0093.073', '', 'NABILA CAHYANI SALSABILAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 8, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(198, '2022/0094.073', '2022/0094.073', '', 'LIDWINA MAHARANI KUSUMANING PUTRI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 8, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(199, '2023/0095.073', '2023/0095.073', '', 'RINDU CINTARA NIRY', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 8, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(200, '2024/0096.073', '2024/0096.073', '', 'SITI NADIA NUR HIDAYAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 8, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(201, '1971/0197.071', '1971/0197.071', '', 'ADINDA SEKAR TRI OKTAVIANI HARIANTO PUTRI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(202, '1972/0198.071', '1972/0198.071', '', 'AGIESNA NUR ROSITA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(203, '1973/0199.071', '1973/0199.071', '', 'AGUSTIAN INDRA PERDANA', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(204, '1974/0200.071', '1974/0200.071', '', 'ALDA RISMA NIFAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(205, '1975/0201.071', '1975/0201.071', '', 'AMELIA IZZMI AZZA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(206, '1976/0202.071', '1976/0202.071', '', 'AMELIA SAFIRA AZZAHRA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(207, '1977/0203.071', '1977/0203.071', '', 'ANGGI DWI ANGGRAINI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(208, '1978/0204.071', '1978/0204.071', '', 'ANNISA ZILLA ALIKA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(209, '1979/0205.071', '1979/0205.071', '', 'ARTIKA WIDYA SANTOSA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(210, '1980/0206.071', '1980/0206.071', '', 'ASKA SALSABILLA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(211, '1981/0207.071', '1981/0207.071', '', 'BILBINA AUDYA AMMAR', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(212, '1982/0208.071', '1982/0208.071', '', 'CINDY LAURA SEPTIANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(213, '1983/0209.071', '1983/0209.071', '', 'DELLA PUTRI RAHMADANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(214, '1984/0210.071', '1984/0210.071', '', 'DINDA AYU RAMADHINA FRANDA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(215, '1985/0211.071', '1985/0211.071', '', 'DIVA ALYA MAHARANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(216, '1986/0212.071', '1986/0212.071', '', 'DWI ENDAH PRAMISTI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(217, '1987/0213.071', '1987/0213.071', '', 'DWI RISKI ISHA FITRI ', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(218, '1988/0214.071', '1988/0214.071', '', 'ELIZABETH WARDHANI PANGARIBUAN', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(219, '1989/0215.071', '1989/0215.071', '', 'ENJELINA TRI KURNIAWATI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(220, '1990/0216.071', '1990/0216.071', '', 'FEBRIANA SULISTIYO PUTRI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(221, '1991/0217.071', '1991/0217.071', '', 'FINA DINDA AVRILIA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(222, '1992/0218.071', '1992/0218.071', '', 'FRISKA AMELIANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(223, '1993/0219.071', '1993/0219.071', '', 'HANDAYANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(224, '1994/0220.071', '1994/0220.071', '', 'ICHA DWIHABSARI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(225, '1995/0221.071', '1995/0221.071', '', 'IMELDA GADIS SONYA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 9, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00');
INSERT INTO `student` (`student_id`, `student_nis`, `student_nisn`, `student_password`, `student_full_name`, `student_gender`, `student_born_place`, `student_born_date`, `student_img`, `student_phone`, `student_hobby`, `student_address`, `student_name_of_mother`, `student_name_of_father`, `student_parent_phone`, `class_class_id`, `majors_majors_id`, `student_status`, `student_input_date`, `student_last_update`) VALUES
(226, '1996/0222.071', '1996/0222.071', '', 'INDIRA LISTIANA INTAN SARI ', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(227, '1997/0223.071', '1997/0223.071', '', 'MALIKA RAHMA AL MUTTAQIN', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(228, '1998/0224.071', '1998/0224.071', '', 'MARIA BENEDIKTA DETA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(229, '1999/0225.071', '1999/0225.071', '', 'MELLISA ELISABETH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(230, '2000/0226.071', '2000/0226.071', '', 'MIRANDA CANDRA DEWI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(231, '2001/0227.071', '2001/0227.071', '', 'NAILAH HADYAN RAMADHANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(232, '2002/0228.071', '2002/0228.071', '', 'NOVI FERNANDA ROSALIYA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(233, '2003/0229.071', '2003/0229.071', '', 'NOVITRI INDAH KURNIAWATI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(234, '2004/0230.071', '2004/0230.071', '', 'NUR ZIHAN NAIMAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(235, '2005/0231.071', '2005/0231.071', '', 'PRASASTI CAHYA KINANTI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(236, '2006/0232.071', '2006/0232.071', '', 'PUTRI MAHMUDATIN ALIFAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(237, '2007/0233.071', '2007/0233.071', '', 'RENITA AMELIA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(238, '2008/0234.071', '2008/0234.071', '', 'RERIA KUMALA ANALISA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(239, '2009/0235.071', '2009/0235.071', '', 'REVALIA AZZAHRA RAHMADINA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(240, '2010/0236.071', '2010/0236.071', '', 'RIFDA AFADIYAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(241, '2011/0237.071', '2011/0237.071', '', 'RINA PUTRI ANDINI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(242, '2012/0238.071', '2012/0238.071', '', 'SAFIRA AZZAHRAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(243, '2013/0239.071', '2013/0239.071', '', 'SALSABILA NUR FAUZIAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(244, '2014/0240.071', '2014/0240.071', '', 'SELVITA VERLY INDRIANTI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(245, '2015/0241.071', '2015/0241.071', '', 'SHELA SAFITRI INDRIANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(246, '2017/0243.071', '2017/0243.071', '', 'SHERLY WIDYA ANATASYA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(247, '2018/0244.071', '2018/0244.071', '', 'SYERIN NURIL HIDAYAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(248, '2019/0245.071', '2019/0245.071', '', 'WIBIANA ARINDA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(249, '2020/0246.071', '2020/0246.071', '', 'ZALFA OLIVIA ARBITER', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 10, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(250, '1944/0319.074', '1944/0319.074', '', 'LUCYANA TRI ADHANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(251, '1945/0320.074', '1945/0320.074', '', 'LUNA AISYAH SA\'DAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(252, '1946/0321.074', '1946/0321.074', '', 'MANDA ALRIANI EL FAHMI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(253, '1947/0322.074', '1947/0322.074', '', 'MASAYU WINARA ROSYID', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(254, '1948/0323.074', '1948/0323.074', '', 'MOCHAMMAD YOGI PRASETIA PUTRA', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(255, '1949/0324.074', '1949/0324.074', '', 'MONICA ALZHA RAHMANINGTYAS', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(256, '1950/0325.074', '1950/0325.074', '', 'MUTIARA DWI PRIHATANTI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(257, '1951/0326.074', '1951/0326.074', '', 'NADINE CITRA AMANDA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(258, '1952/0327.074', '1952/0327.074', '', 'NINDA KHONSA NUR LATIFAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(259, '1953/0328.074', '1953/0328.074', '', 'NUR AFNI MAIFURO', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(260, '1954/0329.074', '1954/0329.074', '', 'NUR LAILA QURROTA AINI NAFIAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(261, '1955/0330.074', '1955/0330.074', '', 'PUTRI APRILIA ARIFIANA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(262, '1956/0331.074', '1956/0331.074', '', 'PUTRI FEBRIYANTI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(263, '1957/0332.074', '1957/0332.074', '', 'RAHMA APRILIA ARISANTI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(264, '1958/0333.074', '1958/0333.074', '', 'RANGGA DANI PUTRA FERISTI', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(265, '1959/0334.074', '1959/0334.074', '', 'RIA KUSUMA RAMADHANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(266, '1960/0335.074', '1960/0335.074', '', 'RISKA APRILLIA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(267, '1961/0336.074', '1961/0336.074', '', 'SALSABILLA KANAYA HASYIM', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(268, '1962/0337.074', '1962/0337.074', '', 'SALWAA DHIYA\'ULHAQ MUSOFAN', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(269, '1963/0338.074', '1963/0338.074', '', 'SHEIRA DIVA PUTRI ARISKA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(270, '1964/0339.074', '1964/0339.074', '', 'SITI NUR HALIZAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(271, '1965/0340.074', '1965/0340.074', '', 'TABHITA NOVELYN FIRDAUS', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(272, '1966/0341.074', '1966/0341.074', '', 'USWATUN HASANAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(273, '1967/0342.074', '1967/0342.074', '', 'VITA ABDI KIRANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(274, '1968/0343.074', '1968/0343.074', '', 'VONY RINDU ANATASYA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(275, '1969/0344.074', '1969/0344.074', '', 'WINA KARTIKA AULIA SURYANINGTIYAS', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(276, '1970/0345.074', '1970/0345.074', '', 'YAKTA NAJDAH AARIFAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(277, '2055/0346.074', '2055/0346.074', '', 'DIANA TRISNA WULANDARI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 12, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(278, '1916/0291.074', '1916/0291.074', '', 'ADINDA CHUSNUL AFIFAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(279, '1917/0292.074', '1917/0292.074', '', 'AMELLIA DEWI ANGGREINI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(280, '1918/0293.074', '1918/0293.074', '', 'APRILIA LAILATUL FATMA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(281, '1919/0294.074', '1919/0294.074', '', 'ARDIANSYAH RAMADHAN', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(282, '1920/0295.074', '1920/0295.074', '', 'ARINI RACHMA SULISTYA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(283, '1921/0296.074', '1921/0296.074', '', 'AURELYA PUTRI FARADILA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(284, '1922/0297.074', '1922/0297.074', '', 'AYUNDA ZASKIA PUTRI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(285, '1923/0298.074', '1923/0298.074', '', 'CAHYANI DWI SUSANTI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(286, '1924/0299.074', '1924/0299.074', '', 'DELIA AJENG RAHMADANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(287, '1925/0300.074', '1925/0300.074', '', 'DESNITA NUR WINARNI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(288, '1926/0301.074', '1926/0301.074', '', 'DEVI MEYSYA ', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(289, '1927/0302.074', '1927/0302.074', '', 'DEWI CANDRA KUSUMANINGRUM', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(290, '1928/0303.074', '1928/0303.074', '', 'DIVA FITRI AMELIA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(291, '1929/0304.074', '1929/0304.074', '', 'DWI RATNA ZAHWARANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(292, '1930/0305.074', '1930/0305.074', '', 'EKA NURAINI HIDAYANTI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(293, '1931/0306.074', '1931/0306.074', '', 'ENJELLIA CATUR JUNITA SARI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(294, '1932/0307.074', '1932/0307.074', '', 'ERVA OLIFIA DINATA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(295, '1933/0308.074', '1933/0308.074', '', 'EVA WAHYUNI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(296, '1934/0309.074', '1934/0309.074', '', 'FAJRI BALQIS SALSABILA ', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(297, '1935/0310.074', '1935/0310.074', '', 'FARAH NOVALIYA WICAKSONO', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(298, '1936/0311.074', '1936/0311.074', '', 'GENDIS ARUM PERTIWI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(299, '1937/0312.074', '1937/0312.074', '', 'GITA AULIA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(300, '1938/0313.074', '1938/0313.074', '', 'HAWWA\'UN NURIL QULUB', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(301, '1939/0314.074', '1939/0314.074', '', 'JESICA AZALIA PUTRI WIDODO', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(302, '1940/0315.074', '1940/0315.074', '', 'LAILA FATMASARI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(303, '1941/0316.074', '1941/0316.074', '', 'LAILATUL FITRIA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(304, '1942/0317.074', '1942/0317.074', '', 'LATIFATUS ZAHROH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(305, '1943/0318.074', '1943/0318.074', '', 'LINA KUSUMAWATI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 11, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(306, '1862/0092.100', '1862/0092.100', '', 'ACHMAD KHURDIANTO', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(307, '1863/0093.100', '1863/0093.100', '', 'ACHMAD MUNTAHA', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(308, '1864/0094.100', '1864/0094.100', '', 'ADRIAN DWI ARIANTO', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(309, '1865/0095.100', '1865/0095.100', '', 'ANANDA ISA BUDIANTO', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(310, '1866/0096.100', '1866/0096.100', '', 'ANJAS ABDUL ROCHMAN', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(311, '1867/0097.100', '1867/0097.100', '', 'ARDIAN DUTA XENA ADJIE', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(312, '1868/0098.100', '1868/0098.100', '', 'ARGA ERSYA SIREGAR', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(313, '1870/0100.100', '1870/0100.100', '', 'BAMBANG KURNIAWAN', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(314, '1871/0101.100', '1871/0101.100', '', 'BOBY YANUR ALVIN NUGROHO', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(315, '1872/0102.100', '1872/0102.100', '', 'DESTY YUSSRIANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(316, '1873/0103.100', '1873/0103.100', '', 'DEVI NOVITASARI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(317, '1874/0104.100', '1874/0104.100', '', 'DHARMASANTI KUSUMA PUTRI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(318, '1875/0105.100', '1875/0105.100', '', 'DHARU SURAHMAN', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(319, '1876/0106.100', '1876/0106.100', '', 'DIAN SETIAWAN', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(320, '1877/0107.100', '1877/0107.100', '', 'DWI ARIYANTO', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(321, '1878/0108.100', '1878/0108.100', '', 'EDY SUCIPTO', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(322, '1879/0109.100', '1879/0109.100', '', 'FAJAR RAHMATULLAH', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(323, '1880/0110.100', '1880/0110.100', '', 'FEBIOLA DWI ALFIANA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(324, '1881/0111.100', '1881/0111.100', '', 'FIFIANTI KITTY FENDI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(325, '1882/0112.100', '1882/0112.100', '', 'FISA TRI AYU WANDIRA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(326, '1883/0113.100', '1883/0113.100', '', 'FITRI NABILAH ISLAMIYAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(327, '1884/0114.100', '1884/0114.100', '', 'HILWA QORRY AINA SUBECHI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(328, '1885/0115.100', '1885/0115.100', '', 'HIZAM ALFAUZI', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(329, '1886/0116.100', '1886/0116.100', '', 'M. ASRIL EKA PRATAMA', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(330, '1888/0118.100', '1888/0118.100', '', 'M. HIDAYAT FAUZI', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 13, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(331, '1890/0120.100', '1890/0120.100', '', 'MARCERLINO PAUL ONE', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(332, '1891/0121.100', '1891/0121.100', '', 'MELINDA TRYA HABIEBBAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(333, '1892/0122.100', '1892/0122.100', '', 'MOCHAMMAD IMAM MALIKI', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(334, '1894/0124.100', '1894/0124.100', '', 'MUHAMMAD ALAMIL HUDA', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(335, '1895/0125.100', '1895/0125.100', '', 'MUHAMMAD DZIKY NASIRIN', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(336, '1896/0126.100', '1896/0126.100', '', 'MUHAMMAD NUR ADYO', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(337, '1897/0127.100', '1897/0127.100', '', 'MUHAMMAD VIKI FIRMANSYAH', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(338, '1898/0128.100', '1898/0128.100', '', 'MUHAMMAD. FAZA AMRU FADHIL', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(339, '1899/0129.100', '1899/0129.100', '', 'MUKHAMMAD ALFIN FIRZATULLOH', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(340, '1900/0130.100', '1900/0130.100', '', 'NADILLA RISSA FATIMAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(341, '1901/0131.100', '1901/0131.100', '', 'NIA AYU WULANDARI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(342, '1902/0132.100', '1902/0132.100', '', 'NUR DHIMAS ADI SAPUTRO', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(343, '1903/0133.100', '1903/0133.100', '', 'NURUL LAILATUL MUFIDAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(344, '1904/0134.100', '1904/0134.100', '', 'PRAWIRO DIHARJO SYARIF HIDAYAT', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(345, '1905/0135.100', '1905/0135.100', '', 'PUTRI AL AISYAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(346, '1906/0136.100', '1906/0136.100', '', 'RAFY FEBRIANO LANJANU', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(347, '1907/0137.100', '1907/0137.100', '', 'RAYHANDIE ALIMIN PRASETYO', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(348, '1908/0138.100', '1908/0138.100', '', 'RENSA EKA WAHYU SAPUTRA', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(349, '1909/0139.100', '1909/0139.100', '', 'REVIELIA DESTRIA DININGRUM', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(350, '1910/0140.100', '1910/0140.100', '', 'REVIERO FITRAH HAKIM', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(351, '1911/0141.100', '1911/0141.100', '', 'REYHAND BAYU KURNIAWAN ', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(352, '1912/0142.100', '1912/0142.100', '', 'SATRIO WIBOWO', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(353, '1913/0143.100', '1913/0143.100', '', 'SELMA DESTITA SYAHRANI P', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(354, '1914/0144.100', '1914/0144.100', '', 'TYAS ADI PANGESTU', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(355, '1915/0145.100', '1915/0145.100', '', 'YOGA ADITYA PRATAMA', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 14, 1, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(356, '1851/0082.073', '1851/0082.073', '', 'ADINDA AYU ANGGRAENI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 15, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(357, '1853/0084.073', '1853/0084.073', '', 'DEWI ALIFFIANA HANIFAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 15, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(358, '1854/0085.073', '1854/0085.073', '', 'EVANESSA OKTAFIANTI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 15, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(359, '1855/0086.073', '1855/0086.073', '', 'KAMELIA PURNAMA SARI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 15, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(360, '1856/0087.073', '1856/0087.073', '', 'M. FIKRY PUTRA WICAKSONO', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 15, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(361, '1857/0088.073', '1857/0088.073', '', 'MAULANA IBNU MUBAROK', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 15, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(362, '1858/0089.073', '1858/0089.073', '', 'MEYVA FAUZIATUL UMROH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 15, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(363, '1859/0090.073', '1859/0090.073', '', 'PUTRI AFIFAH DWI AFSARI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 15, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(364, '1860/0091.073', '1860/0091.073', '', 'SYLFIA VARINA AULIYA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 15, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(365, '1861/0092.073', '1861/0092.073', '', 'TIFFANY JANE VANIA BUDIMAN', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 15, 2, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(366, '1816/0162.071', '1816/0162.071', '', 'ADINDA MEGA FITRIAN TOMO', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(367, '1817/0163.071', '1817/0163.071', '', 'AFINDA DELITA AYU S', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(368, '1818/0164.071', '1818/0164.071', '', 'AISYAH FADHILLA PUTRI JATMIKO', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(369, '1819/0165.071', '1819/0165.071', '', 'ALFI YULIA ADINDA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(370, '1821/0167.071', '1821/0167.071', '', 'ARDINA IKA MAWADDAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(371, '1822/0168.071', '1822/0168.071', '', 'AURINDA RIZKIANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(372, '1823/0169.071', '1823/0169.071', '', 'AZILLA PUSPA MAULIYANA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(373, '1824/0170.071', '1824/0170.071', '', 'CAHYANING NUR ANZHANNI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(374, '1825/0171.071', '1825/0171.071', '', 'CATHERINE SILIWANGI EDI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(375, '1826/0172.071', '1826/0172.071', '', 'DESI INDAHSARI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(376, '1827/0173.071', '1827/0173.071', '', 'DEWI KURNIAWATI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(377, '1828/0174.071', '1828/0174.071', '', 'DINDA MEI CANTIKA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(378, '1829/0175.071', '1829/0175.071', '', 'ELGA AZYZA SUMINARTO', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(379, '1830/0176.071', '1830/0176.071', '', 'ELSA RIFKA AMELIA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(380, '1831/0177.071', '1831/0177.071', '', 'FERDINICO ZENOBIA HERMAWANTO', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(381, '1832/0178.071', '1832/0178.071', '', 'FITRIA NANDA KUSUMAWATI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(382, '1833/0179.071', '1833/0179.071', '', 'INTAN AULIA MAFASA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(383, '1834/0180.071', '1834/0180.071', '', 'KRISKO MARINA KUSWANDI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(384, '1835/0181.071', '1835/0181.071', '', 'MAULIDIA NUR HALIZA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(385, '1836/0182.071', '1836/0182.071', '', 'MUHAMMAD ADIS ARDIANSYAH HIDAYAT', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(386, '1837/0183.071', '1837/0183.071', '', 'NIKMATUL LAILIA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(387, '1838/0184.071', '1838/0184.071', '', 'NOVITA FITRIANA ARIADI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(388, '1839/0185.071', '1839/0185.071', '', 'NUR HALIZAH FIRDAUS', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(389, '1840/0186.071', '1840/0186.071', '', 'NUR LAILI RAMADANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(390, '1841/0187.071', '1841/0187.071', '', 'PRIMA NUR MEISELA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(391, '1842/0188.071', '1842/0188.071', '', 'RENA YUNITA ROSIFERYANTI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(392, '1843/0189.071', '1843/0189.071', '', 'SEPTYA WIJAYA PUTRI HENDROWATI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(393, '1844/0190.071', '1844/0190.071', '', 'SHINTYA TIFANI FAZRIN', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(394, '1845/0191.071', '1845/0191.071', '', 'SINTIA KHOTIDYAH SANDYA ADZANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(395, '1846/0192.071', '1846/0192.071', '', 'SINTYA VIDIASARI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(396, '1847/0193.071', '1847/0193.071', '', 'SITI ANISA AMBARWATI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(397, '1848/0194.071', '1848/0194.071', '', 'TIRTA NIRMALA SARI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(398, '1849/0195.071', '1849/0195.071', '', 'WINANDA IFANKA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(399, '1850/0196.071', '1850/0196.071', '', 'WINNIE RUBBYTA PUJA CHRESANTA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 16, 3, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(400, '1780/0255.074', '1780/0255.074', '', 'JESYCA SENJANI BAGASKARI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(401, '1781/0256.074', '1781/0256.074', '', 'LELIANA MARSANDA PUTRI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(402, '1782/0257.074', '1782/0257.074', '', 'LINDY WAHYU DWI CHANTIKA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(403, '1784/0259.074', '1784/0259.074', '', 'MAYLA AYU DAVINA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(404, '1785/0260.074', '1785/0260.074', '', 'MOCH. RADITYA BAGUS AULIA', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(405, '1786/0261.074', '1786/0261.074', '', 'MUHAMMAD BISRI MUSTOFA', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(406, '1787/0262.074', '1787/0262.074', '', 'MUTIARA FATWA FITRA ANDINI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(407, '1788/0263.074', '1788/0263.074', '', 'NAMIRA SALSABILLAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(408, '1789/0264.074', '1789/0264.074', '', 'NIYW ULLA I GUSTHI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(409, '1790/0265.074', '1790/0265.074', '', 'NURUL AFIFAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(410, '1791/0266.074', '1791/0266.074', '', 'OKTAVYO YANUARDIANSHA', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(411, '1792/0267.074', '1792/0267.074', '', 'PUJI NUR MASTHURO', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(412, '1793/0268.074', '1793/0268.074', '', 'PUTRI RACHMADANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(413, '1794/0269.074', '1794/0269.074', '', 'RAHADIAN SETIAJI WAHYU WIBISONO', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(414, '1795/0270.074', '1795/0270.074', '', 'REYNATA MARIANA FATIKASARI FANTY', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(415, '1796/0271.074', '1796/0271.074', '', 'RIFDA SABRINA KHAQ', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(416, '1797/0272.074', '1797/0272.074', '', 'ROUDHOTUL AMALIA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(417, '1798/0273.074', '1798/0273.074', '', 'ROXANNA FIRDAUSI VRISCA BETTI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(418, '1799/0274.074', '1799/0274.074', '', 'SAGITA TRI RACHMAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(419, '1800/0275.074', '1800/0275.074', '', 'SALMA NURUL IZZAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(420, '1801/0276.074', '1801/0276.074', '', 'SALSABILLAH RAHMANATASYA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(421, '1802/0277.074', '1802/0277.074', '', 'SHAFA AZZAHRA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(422, '1803/0278.074', '1803/0278.074', '', 'SITI LATIFA PUSPITA ANGGITYA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(423, '1804/0279.074', '1804/0279.074', '', 'SITI NUR NAZILATUL ZULFA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(424, '1805/0280.074', '1805/0280.074', '', 'STEFANNY AGNES RACHELIA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(425, '1806/0281.074', '1806/0281.074', '', 'STEVANI ANGELIANA WUA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(426, '1807/0282.074', '1807/0282.074', '', 'SUCI PUNDI RAHMAWATI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(427, '1808/0283.074', '1808/0283.074', '', 'SURYA APRIL LIYARO', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(428, '1809/0284.074', '1809/0284.074', '', 'TANIA MAHARANI PUTRI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(429, '1810/0285.074', '1810/0285.074', '', 'TERISYA DIAN PURWANTI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(430, '1811/0286.074', '1811/0286.074', '', 'TIARA AYU ANGGRAINI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(431, '1812/0287.074', '1812/0287.074', '', 'VALENTINA KUSUMA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(432, '1813/0288.074', '1813/0288.074', '', 'VIOLA ADINDA PUTRI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(433, '1814/0289.074', '1814/0289.074', '', 'ZAHRA HALIZAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(434, '1815/0290.074', '1815/0290.074', '', 'ZULFA NAFIATUS SA\'ADAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 18, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(435, '1744/0219.074', '1744/0219.074', '', 'ABELIA DWI PUTRI FARHANDIKA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(436, '1745/0220.074', '1745/0220.074', '', 'ACH. ZAKYAH AL FAUZI', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(437, '1746/0221.074', '1746/0221.074', '', 'ADEVIA HILDA SALSABILLA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(438, '1747/0222.074', '1747/0222.074', '', 'ADHISTIN DIVA AMELIA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(439, '1748/0223.074', '1748/0223.074', '', 'ADINDA AYUM PRAMUDITA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(440, '1749/0224.074', '1749/0224.074', '', 'AGUNG DWI RAHMAT', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(441, '1750/0225.074', '1750/0225.074', '', 'AISYAH SYFANANDITA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(442, '1751/0226.074', '1751/0226.074', '', 'ALFIAH AMELIA PUTRI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(443, '1752/0227.074', '1752/0227.074', '', 'ALFILIA DANIA REZKYANA ', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(444, '1753/0228.074', '1753/0228.074', '', 'ALICIA FELLICA CHELSY PURWANTO', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(445, '1754/0229.074', '1754/0229.074', '', 'AMANDA STEVY GUSMAYANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(446, '1755/0230.074', '1755/0230.074', '', 'AMARTYA TITANANDA NURZAQI', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(447, '1756/0231.074', '1756/0231.074', '', 'AMELIA TRIYANANDA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(448, '1757/0232.074', '1757/0232.074', '', 'ANNISA YUKE WIJAYA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00');
INSERT INTO `student` (`student_id`, `student_nis`, `student_nisn`, `student_password`, `student_full_name`, `student_gender`, `student_born_place`, `student_born_date`, `student_img`, `student_phone`, `student_hobby`, `student_address`, `student_name_of_mother`, `student_name_of_father`, `student_parent_phone`, `class_class_id`, `majors_majors_id`, `student_status`, `student_input_date`, `student_last_update`) VALUES
(449, '1758/0233.074', '1758/0233.074', '', 'ARACHELLY NOVELYA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(450, '1759/0234.074', '1759/0234.074', '', 'ARIN AGUSTINA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(451, '1760/0235.074', '1760/0235.074', '', 'ARTIKA TRI RAMADHANI ', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(452, '1761/0236.074', '1761/0236.074', '', 'AUDITA PUTRI RAHMADANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(453, '1762/0237.074', '1762/0237.074', '', 'BADI\'ATUZ ZAHRO', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(454, '1763/0238.074', '1763/0238.074', '', 'BIBI AYU MAHARANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(455, '1764/0239.074', '1764/0239.074', '', 'BILA SASTRA AYUNDAH', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(456, '1765/0240.074', '1765/0240.074', '', 'DANI  INDRA LEONITA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(457, '1766/0241.074', '1766/0241.074', '', 'DELARETA ANGGI FITRIANI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(458, '1767/0242.074', '1767/0242.074', '', 'DEWI ANJAR WATI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(459, '1768/0243.074', '1768/0243.074', '', 'DINDA RAHMALIA AGUSTIN', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(460, '1769/0244.074', '1769/0244.074', '', 'DINI PUSPITA NINGRUM', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(461, '1770/0245.074', '1770/0245.074', '', 'DYCKA ODY SETYAWAN', 'L', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(462, '1771/0246.074', '1771/0246.074', '', 'ELLY EKA RAHMAWATI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(463, '1772/0247.074', '1772/0247.074', '', 'ELVIRA SILVANY ZAHARA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(464, '1773/0248.074', '1773/0248.074', '', 'FATIHAH NAURIN QOLBI WALIUDDIN', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(465, '1774/0249.074', '1774/0249.074', '', 'FEBRY AYU WULANDARI', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(466, '1775/0250.074', '1775/0250.074', '', 'FRANSISCA PRAMADETA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(467, '1776/0251.074', '1776/0251.074', '', 'FRISCHA MEYVIA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(468, '1777/0252.074', '1777/0252.074', '', 'GUSSINDA SELLA LUISA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(469, '1778/0253.074', '1778/0253.074', '', 'HURIYA SHIFA\' AQILA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00'),
(470, '1779/0254.074', '1779/0254.074', '', 'INTANA AGUSTIA', 'P', 'Mojokerto', '1992-12-10', '', '0816299081', 'Belajar', 'Mojokerto', '-', '-', '0816299081', 17, 4, 1, '2023-01-09 17:00:00', '2023-01-09 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(45) DEFAULT NULL,
  `user_password` varchar(45) DEFAULT NULL,
  `user_full_name` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `user_description` text DEFAULT NULL,
  `user_role_role_id` int(11) DEFAULT NULL,
  `user_is_deleted` tinyint(1) DEFAULT 0,
  `user_input_date` timestamp NULL DEFAULT NULL,
  `user_last_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_password`, `user_full_name`, `user_image`, `user_description`, `user_role_role_id`, `user_is_deleted`, `user_input_date`, `user_last_update`) VALUES
(1, 'admin@admin.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', NULL, 'Administrator', 1, 0, '2018-01-15 20:19:33', '2018-01-15 20:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`role_id`, `role_name`) VALUES
(1, 'SUPERUSER'),
(2, 'USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bebas`
--
ALTER TABLE `bebas`
  ADD PRIMARY KEY (`bebas_id`),
  ADD KEY `fk_bebas_payment1_idx` (`payment_payment_id`),
  ADD KEY `fk_bebas_student1_idx` (`student_student_id`);

--
-- Indexes for table `bebas_pay`
--
ALTER TABLE `bebas_pay`
  ADD PRIMARY KEY (`bebas_pay_id`),
  ADD KEY `fk_bebas_pay_bebas1_idx` (`bebas_bebas_id`),
  ADD KEY `fk_bebas_pay_users1_idx` (`user_user_id`);

--
-- Indexes for table `bulan`
--
ALTER TABLE `bulan`
  ADD PRIMARY KEY (`bulan_id`),
  ADD KEY `fk_bulan_payment1_idx` (`payment_payment_id`),
  ADD KEY `fk_bulan_month1_idx` (`month_month_id`),
  ADD KEY `fk_bulan_student1_idx` (`student_student_id`),
  ADD KEY `fk_bulan_users1_idx` (`user_user_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `debit`
--
ALTER TABLE `debit`
  ADD PRIMARY KEY (`debit_id`),
  ADD KEY `fk_jurnal_debit_users1_idx` (`user_user_id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`information_id`),
  ADD KEY `fk_information_users1_idx` (`user_user_id`);

--
-- Indexes for table `kredit`
--
ALTER TABLE `kredit`
  ADD PRIMARY KEY (`kredit_id`),
  ADD KEY `fk_jurnal_kredit_users1_idx` (`user_user_id`);

--
-- Indexes for table `letter`
--
ALTER TABLE `letter`
  ADD PRIMARY KEY (`letter_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `fk_g_activity_log_g_user1_idx` (`user_id`);

--
-- Indexes for table `log_trx`
--
ALTER TABLE `log_trx`
  ADD PRIMARY KEY (`log_trx_id`),
  ADD KEY `fk_log_trx_bebas_pay1_idx` (`bebas_pay_bebas_pay_id`),
  ADD KEY `fk_log_trx_bulan1_idx` (`bulan_bulan_id`),
  ADD KEY `fk_log_trx_student1_idx` (`student_student_id`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`majors_id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `fk_payment_pos1_idx` (`pos_pos_id`),
  ADD KEY `fk_payment_period1_idx` (`period_period_id`);

--
-- Indexes for table `period`
--
ALTER TABLE `period`
  ADD PRIMARY KEY (`period_id`);

--
-- Indexes for table `pos`
--
ALTER TABLE `pos`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `fk_student_class1_idx` (`class_class_id`),
  ADD KEY `fk_student_majors1_idx` (`majors_majors_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_user_user_role1_idx` (`user_role_role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bebas`
--
ALTER TABLE `bebas`
  MODIFY `bebas_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bebas_pay`
--
ALTER TABLE `bebas_pay`
  MODIFY `bebas_pay_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bulan`
--
ALTER TABLE `bulan`
  MODIFY `bulan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `debit`
--
ALTER TABLE `debit`
  MODIFY `debit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kredit`
--
ALTER TABLE `kredit`
  MODIFY `kredit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `letter`
--
ALTER TABLE `letter`
  MODIFY `letter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `log_trx`
--
ALTER TABLE `log_trx`
  MODIFY `log_trx_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `majors_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `period`
--
ALTER TABLE `period`
  MODIFY `period_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos`
--
ALTER TABLE `pos`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bebas`
--
ALTER TABLE `bebas`
  ADD CONSTRAINT `fk_bebas_payment1` FOREIGN KEY (`payment_payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_bebas_student1` FOREIGN KEY (`student_student_id`) REFERENCES `student` (`student_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `bebas_pay`
--
ALTER TABLE `bebas_pay`
  ADD CONSTRAINT `fk_bebas_pay_bebas1` FOREIGN KEY (`bebas_bebas_id`) REFERENCES `bebas` (`bebas_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_bebas_pay_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `bulan`
--
ALTER TABLE `bulan`
  ADD CONSTRAINT `fk_bulan_month1` FOREIGN KEY (`month_month_id`) REFERENCES `month` (`month_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_bulan_payment1` FOREIGN KEY (`payment_payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_bulan_student1` FOREIGN KEY (`student_student_id`) REFERENCES `student` (`student_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_bulan_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `debit`
--
ALTER TABLE `debit`
  ADD CONSTRAINT `fk_jurnal_debit_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `information`
--
ALTER TABLE `information`
  ADD CONSTRAINT `fk_information_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `kredit`
--
ALTER TABLE `kredit`
  ADD CONSTRAINT `fk_jurnal_kredit_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `fk_g_activity_log_g_user1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `log_trx`
--
ALTER TABLE `log_trx`
  ADD CONSTRAINT `fk_log_trx_bebas_pay1` FOREIGN KEY (`bebas_pay_bebas_pay_id`) REFERENCES `bebas_pay` (`bebas_pay_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_log_trx_bulan1` FOREIGN KEY (`bulan_bulan_id`) REFERENCES `bulan` (`bulan_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_log_trx_student1` FOREIGN KEY (`student_student_id`) REFERENCES `student` (`student_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_payment_period1` FOREIGN KEY (`period_period_id`) REFERENCES `period` (`period_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_payment_pos1` FOREIGN KEY (`pos_pos_id`) REFERENCES `pos` (`pos_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_student_class1` FOREIGN KEY (`class_class_id`) REFERENCES `class` (`class_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_student_majors1` FOREIGN KEY (`majors_majors_id`) REFERENCES `majors` (`majors_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_user_user_role1` FOREIGN KEY (`user_role_role_id`) REFERENCES `user_roles` (`role_id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
