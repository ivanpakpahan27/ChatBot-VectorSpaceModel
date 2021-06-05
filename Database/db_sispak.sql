-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for db_sispak
CREATE DATABASE IF NOT EXISTS `db_sispak` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_sispak`;

-- Dumping structure for table db_sispak.tabelakun
CREATE TABLE IF NOT EXISTS `tabelakun` (
  `KodeAkun` int(11) NOT NULL AUTO_INCREMENT,
  `Username` char(20) NOT NULL DEFAULT '',
  `Password` char(20) NOT NULL DEFAULT '',
  `Role` char(5) NOT NULL,
  `Nama` char(25) DEFAULT NULL,
  `Umur` char(3) DEFAULT NULL,
  `Pekerjaan` char(20) DEFAULT NULL,
  `No_Telpon` char(13) DEFAULT NULL,
  PRIMARY KEY (`KodeAkun`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_sispak.tabelakun: ~2 rows (approximately)
/*!40000 ALTER TABLE `tabelakun` DISABLE KEYS */;
INSERT INTO `tabelakun` (`KodeAkun`, `Username`, `Password`, `Role`, `Nama`, `Umur`, `Pekerjaan`, `No_Telpon`) VALUES
	(1, 'Ivan', 'Ivan28', 'Admin', NULL, NULL, NULL, NULL),
	(2, 'a', 'a', 'User', 'a', 'a', 'a', 'a');
/*!40000 ALTER TABLE `tabelakun` ENABLE KEYS */;

-- Dumping structure for table db_sispak.tabelgejala
CREATE TABLE IF NOT EXISTS `tabelgejala` (
  `KodeGejala` char(5) NOT NULL,
  `NamaGejala` char(100) DEFAULT NULL,
  PRIMARY KEY (`KodeGejala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_sispak.tabelgejala: ~48 rows (approximately)
/*!40000 ALTER TABLE `tabelgejala` DISABLE KEYS */;
INSERT INTO `tabelgejala` (`KodeGejala`, `NamaGejala`) VALUES
	('G01', 'Sakit kepala'),
	('G02', 'Wajah memerah'),
	('G03', 'Detak jantung berdebar'),
	('G04', 'Sering buang air kecil'),
	('G05', 'Mudah lelah'),
	('G06', 'Mati rasa pada 1/2 bagian tubuh'),
	('G07', 'Bingung mendadak'),
	('G08', 'Bicara tidak jelas'),
	('G09', 'Mata mendadak kabur'),
	('G10', 'Mendadak susah berjalan'),
	('G11', 'Mengalami kelumpuhan 1/2 bagian tubuh'),
	('G12', 'Hilang kesadaran mendadak'),
	('G13', 'Rasa mual / tidak enak badan'),
	('G14', 'Rasa nyeri pada dada tengah/kiri, lalu menjalar ke leher (seperti tercekik), dagu dan lengan kiri'),
	('G15', 'Sering buang air kecil pada malam hari'),
	('G16', 'Gangguan penglihatan'),
	('G17', 'Sering merasa haus'),
	('G18', 'Mudah lapar, lemah, mengantuk'),
	('G19', 'Penurunan berat badan secara drastis'),
	('G20', 'Gangguan pada BAB atau BAK'),
	('G21', 'Alat pencernaan terganggu dan sulit menelan'),
	('G22', 'Serak dan batuk tidak sembuh-sembuh'),
	('G23', 'Terdapat benjolan(tumor) di payudara atau tempat lain'),
	('G24', 'Tahi lalat yang menjadi besar dan gatal'),
	('G25', 'Sering mudah mengantuk'),
	('G26', 'Sulit tidur'),
	('G27', 'Tidur mendengkur'),
	('G28', 'Nyeri sendi terutama betis dan punggung'),
	('G29', 'Berhenti napas tiba-tiba saat tidur'),
	('G30', 'Ada infeksi di lipatan kulit'),
	('G31', 'Sulit bernafas'),
	('G32', 'Pusing'),
	('G33', 'Nyeri betis pada otot'),
	('G34', 'Sendi yang tiba-tiba terasa sakit terutama sendi ibu jari kaki'),
	('G35', 'Warna kemerahan dan bengkak pada kulit yang kesemutan'),
	('G36', 'Sakit pada pinggang'),
	('G37', 'Tekanan darah tinggi'),
	('G38', 'Penimbunan cairan di beberapa bagian tubuh'),
	('G39', 'Kadang nyeri tulang'),
	('G40', 'Bentuk tulang belakang bengkak'),
	('G41', 'Tinggi badan berkurang'),
	('G42', 'Patah tulang karena aktivitas ringan'),
	('G43', 'Tremor atau Gemetaran'),
	('G44', 'Gerakan melambat, gangguan keseimbangan, dan kehilangan kemampuan gerakan'),
	('G45', 'Kelelahan'),
	('G46', 'Penurunan kemampuan intelektual'),
	('G47', 'Apatis, tidak merawat diri, pelupa, bingung'),
	('G48', 'Gemetar dan Gerakan Tubuh yang janggal');
/*!40000 ALTER TABLE `tabelgejala` ENABLE KEYS */;

-- Dumping structure for table db_sispak.tabelpasien
CREATE TABLE IF NOT EXISTS `tabelpasien` (
  `KodePasien` int(5) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(50) DEFAULT NULL,
  `Umur` varchar(3) DEFAULT NULL,
  `Pekerjaan` varchar(20) DEFAULT NULL,
  `No_Telpon` varchar(20) DEFAULT NULL,
  `Diagnosa` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`KodePasien`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_sispak.tabelpasien: ~33 rows (approximately)
/*!40000 ALTER TABLE `tabelpasien` DISABLE KEYS */;
INSERT INTO `tabelpasien` (`KodePasien`, `Nama`, `Umur`, `Pekerjaan`, `No_Telpon`, `Diagnosa`) VALUES
	(1, 'Zaack', '21', '1212', '12', 'Jantung Koroner'),
	(2, 'srtgs', 'sr', 'rt', 'y', 'Jantung Koroner'),
	(3, 'Balad', '22', 'se', 'wrw', 'Hipertensi'),
	(4, 'seg', 'sg', 'rtg', 'rtg', 'Tidak Spesifik'),
	(5, 'rdgd', 'drg', 'rgdrg', 'drg', 'Hipertensi'),
	(6, 'adfiue', '12', 'sds', 'dfsf', 'Tidak Spesifik'),
	(7, 'rt', '12', 'asd', 'asd', 'Hipertensi'),
	(8, 'ar', '12', 'ada', 'asd', 'Tidak Spesifik'),
	(9, 'ef', '12', 'cc', 'cc', 'Tidak Spesifik'),
	(10, 'ds', '32', 'sds', 'dss', 'Tidak Spesifik'),
	(11, 'sa', '12', 'as', 'asa', 'Tidak Spesifik'),
	(12, 'da', '32', 'as', 'as', 'Tidak Spesifik'),
	(13, 'as', '12', 'asas', 'as', 'Tidak Spesifik'),
	(14, 'Balda', '42', 'Guru', '088442', 'Tidak Terdeteksi'),
	(15, 'Burhan', '50', 'Dosen', '03323323', 'Jantung Koroner'),
	(16, 'Badruz', '46', 'Berburu', '03020030', 'Tidak Terdeteksi'),
	(17, 'Ivan', '76', 'Petani', '0122345', 'Tidak Terdeteksi'),
	(18, 'Ridle', '67', 'Petani', '028881212', 'Tidak Terdeteksi'),
	(19, 'Bagal', '23', 'Petani', 'o0300023', 'Tidak Terdeteksi'),
	(20, 'Pacqiau', '69', 'Nelayan', '0821210012', 'Jantung Koroner'),
	(21, 'Silva', '89', 'Pensiunan', '-', 'Dislipidemia'),
	(22, 'Rudi', '30', 'Petani', '0288838', 'Hipertensi'),
	(23, 'Nil', '40', 'RT', '08212112', 'Hipertensi'),
	(24, 'Billie Joel', '99', 'Supir', '0203004', 'Hipertensi'),
	(25, 'Brian Griffin', '67', 'Petani', '03332912', 'Hipertensi'),
	(26, 'Raka', '65', 'Buruh', '999400433', 'Hipertensi'),
	(27, 'MJ', '78', 'Buruh', '03994392493', 'Hipertensi'),
	(28, 'Limbad', '90', 'Insinyur', '093993993', 'Hipertensi'),
	(29, 'Liam', '86', 'Guru', '8434304', 'Hipertensi'),
	(30, 'Rizal', '56', 'Nelayan', '-', 'Hipertensi'),
	(31, 'Rikishi', '78', 'Sumo', '-', 'Tidak Terdeteksi'),
	(32, 'SAdi', '79', '-', '-', 'Hipertensi'),
	(33, 'a', 'a', 'a', 'a', 'Hipertensi'),
	(34, 'a', 'a', 'a', 'a', 'Hipertensi'),
	(35, 'a', 'a', 'a', 'a', 'Hipertensi'),
	(36, 'a', 'a', 'a', 'a', 'Hipertensi'),
	(37, 'a', 'a', 'a', 'a', 'Hipertensi'),
	(38, 'a', 'a', 'a', 'a', 'Hipertensi'),
	(39, 'a', 'a', 'a', 'a', 'Hipertensi');
/*!40000 ALTER TABLE `tabelpasien` ENABLE KEYS */;

-- Dumping structure for table db_sispak.tabelpenyakit
CREATE TABLE IF NOT EXISTS `tabelpenyakit` (
  `KodePenyakit` varchar(5) NOT NULL DEFAULT '',
  `NamaPenyakit` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`KodePenyakit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_sispak.tabelpenyakit: ~12 rows (approximately)
/*!40000 ALTER TABLE `tabelpenyakit` DISABLE KEYS */;
INSERT INTO `tabelpenyakit` (`KodePenyakit`, `NamaPenyakit`) VALUES
	('P01', 'Hipertensi'),
	('P02', 'Stroke'),
	('P03', 'Dislipidemia'),
	('P04', 'Parkinson'),
	('P05', 'Creutzfeldt-Jakob'),
	('P06', 'Jantung Koroner'),
	('P07', 'Ginjal Akut'),
	('P08', 'Diabetes'),
	('P09', 'Kanker'),
	('P10', 'Obesitas'),
	('P11', 'Asam Urat'),
	('P12', 'Osteoporosis');
/*!40000 ALTER TABLE `tabelpenyakit` ENABLE KEYS */;

-- Dumping structure for table db_sispak.tabelpertanyaan
CREATE TABLE IF NOT EXISTS `tabelpertanyaan` (
  `KodePertanyaan` varchar(5) NOT NULL DEFAULT '',
  `Pertanyaan` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`KodePertanyaan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_sispak.tabelpertanyaan: ~48 rows (approximately)
/*!40000 ALTER TABLE `tabelpertanyaan` DISABLE KEYS */;
INSERT INTO `tabelpertanyaan` (`KodePertanyaan`, `Pertanyaan`) VALUES
	('T01', 'Apakah anda mengalami sakit kepala?'),
	('T02', 'Apakah wajah anda terkadang memerah?'),
	('T03', 'Apakah detak jantung anda sering berdebar?'),
	('T04', 'Apakah anda sering buang air kecil?'),
	('T05', 'Apakah anda merasa mudah lelah?'),
	('T06', 'Apakah anda mengalami mati rasa pada 1/2 bagian tubuh?'),
	('T07', 'Apakah anda sering merasa bingung secara mendadak?'),
	('T08', 'Apakah anda sering bicara tidak jelas?'),
	('T09', 'Apakah mata anda mendadak kabur?'),
	('T10', 'Apakah anda sering merasa susah berjalan secara mendadak?'),
	('T11', 'Apakah anda mengalami kelumpuhan 1/2 bagian tubuh?'),
	('T12', 'Apakah anda sering hilang kesadaran mendadak?'),
	('T13', 'Apakah anda merasa mual / tidak enak badan?'),
	('T14', 'Apakah ada rasa nyeri pada dada tengah/kiri, lalu menjalar ke leher (seperti tercekik)?'),
	('T15', 'Apakah anda sering buang air kecil pada malam hari?'),
	('T16', 'Apakah anda mengalami gangguan penglihatan?'),
	('T17', 'Apakah anda sering merasa haus?'),
	('T18', 'Apakah anda mudah lapar, lemah, mengantuk?'),
	('T19', 'Apakah terjadi penurunan berat badan secara drastis?'),
	('T20', 'Apakah anda mengalami gangguan pada BAB atau BAK'),
	('T21', 'Apakah terjadi gangguan pada alat pencernaan dan sulit menelan?'),
	('T22', 'Apakah serak dan batuk anda tidak sembuh-sembuh?'),
	('T23', 'Apakah terdapat benjolan(tumor) di payudara atau tempat lain?'),
	('T24', 'Apakah tahi lalat menjadi besar dan gatal?'),
	('T25', 'Apakah anda sering mengantuk?'),
	('T26', 'Apakah anda sulit tidur?'),
	('T27', 'Apakah tidur anda mendengkur?'),
	('T28', 'Apakah anda mengalami nyeri sendi terutama betis dan punggung?'),
	('T29', 'Apakah anda merasa berhenti bernapas tiba-tiba, saat tidur?'),
	('T30', 'Apakah ada infeksi di lipatan kulit anda?'),
	('T31', 'Apakah anda sulit bernapas?'),
	('T32', 'Apakah anda sering merasa pusing?'),
	('T33', 'Apakah anda sering merasa nyeri otot pada betis?'),
	('T34', 'Apakah anda merasa sendi tiba-tiba terasa sakit terutama sendi ibu jari kaki?'),
	('T35', 'Apakah terdapat warna kemerahan dan bengkak pada kulit yang kesemutan?'),
	('T36', 'Apakah anda mengalami sakit pada pinggang?'),
	('T37', 'Apakah tekanan darah anda tinggi?'),
	('T38', 'Apakah terdapat penimbunan cairan di beberapa bagian tubuh anda?'),
	('T39', 'Apakah anda terkadang mengalami nyeri tulang?'),
	('T40', 'Apakah bentuk tulang belakang anda seperti membengkak?'),
	('T41', 'Apakah tinggi badan anda berkurang?'),
	('T42', 'Apakah anda mengalami patah tulang karena aktivitas ringan?'),
	('T43', 'Apakah anda mengalami tremor atau gemetaran?'),
	('T44', 'Apakah gerakan anda melambat?, gangguan keseimbangan?, dan kehilangan kemampuan gerakan?'),
	('T45', 'Apakah anda sering kelelahan?'),
	('T46', 'Apakah anda merasa terjadi penurunan kemampuan intelektual?'),
	('T47', 'Apakah anda merasa menjadi apatis(tidak merawat diri), pelupa, dan bingung?'),
	('T48', 'Apakah anda merasa gemetar dan gerakan tubuh yang janggal?');
/*!40000 ALTER TABLE `tabelpertanyaan` ENABLE KEYS */;

-- Dumping structure for table db_sispak.tabelrule
CREATE TABLE IF NOT EXISTS `tabelrule` (
  `KodeRule` varchar(5) NOT NULL DEFAULT '',
  `kodepertanyaan1` varchar(50) NOT NULL DEFAULT '',
  `kodepenyakit` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`KodeRule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_sispak.tabelrule: ~12 rows (approximately)
/*!40000 ALTER TABLE `tabelrule` DISABLE KEYS */;
INSERT INTO `tabelrule` (`KodeRule`, `kodepertanyaan1`, `kodepenyakit`) VALUES
	('R01', 'T01, T02, T03, T04, T05', 'P01'),
	('R02', 'T01, T06, T07, T08, T09, T10, T11, T12', 'P02'),
	('R03', 'T01, T32, T33', 'P03'),
	('R04', 'T08, T43, T44', 'P04'),
	('R05', 'T09, T45, T46, T47, T48', 'P05'),
	('R06', 'T13, T14', 'P06'),
	('R07', 'T13, T36, T37, T38', 'P07'),
	('R08', 'T15, T16, T17, T18, T19', 'P08'),
	('R09', 'T20, T21, T22, T23, T24', 'P09'),
	('R10', 'T25, T26, T27, T28, T29, T30, T31', 'P10'),
	('R11', 'T34, T35', 'P11'),
	('R12', 'T39, T40, T41, T42', 'P12');
/*!40000 ALTER TABLE `tabelrule` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
