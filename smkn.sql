/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : smkn

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 22/05/2022 20:55:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for guru
-- ----------------------------
DROP TABLE IF EXISTS `guru`;
CREATE TABLE `guru`  (
  `nip` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('l','p') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nip`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 913911 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guru
-- ----------------------------
INSERT INTO `guru` VALUES (18998, 'Percival Leannon', '4490 Hamill Freeway Apt. 043\nAllanton, MO 16947-1107', 'l', 'mbednar@example.org', 'KRISTEN', '1966-01-28', '2022-05-22 08:17:58', '2022-05-22 08:17:58');
INSERT INTO `guru` VALUES (125282, 'Laron Larson', '510 Collier Port Suite 993\nGerholdburgh, AK 10126', 'l', 'tbarton@example.net', 'ISLAM', '1961-10-06', '2022-05-22 08:17:58', '2022-05-22 08:17:58');
INSERT INTO `guru` VALUES (240073, 'Mrs. Macy Green V', '73647 Lubowitz Highway\nMosciskichester, VA 08222-5070', 'l', 'amely42@example.net', 'KRISTEN', '1976-07-18', '2022-05-22 08:17:58', '2022-05-22 08:17:58');
INSERT INTO `guru` VALUES (284053, 'Grayson Smith', '2821 Raven Common Apt. 724\nNorth Harmonyshire, NY 12226', 'l', 'dallas.herman@example.org', 'KRISTEN', '1967-04-08', '2022-05-22 08:17:58', '2022-05-22 08:17:58');
INSERT INTO `guru` VALUES (379387, 'Mr. Edgardo Schulist', '831 Brakus Mountains Apt. 319\nPort Eldon, TN 12054-0599', 'l', 'rollin.howell@example.org', 'KONGHUCU', '1960-11-02', '2022-05-22 08:17:58', '2022-05-22 08:17:58');
INSERT INTO `guru` VALUES (425925, 'Aletha Hegmann I', '69168 Mercedes Crossroad Suite 227\nNorth Shannyview, IA 89739', 'l', 'pgreenholt@example.net', 'BUDDHA', '1989-12-16', '2022-05-22 08:17:58', '2022-05-22 08:17:58');
INSERT INTO `guru` VALUES (440103, 'Kenny Bailey', '3016 Gleichner Fort Suite 792\nMelbatown, MI 03522-5360', 'p', 'larson.alvera@example.com', 'BUDDHA', '1963-05-23', '2022-05-22 08:17:58', '2022-05-22 08:17:58');
INSERT INTO `guru` VALUES (549903, 'Prof. Maximus Schowalter', '6135 Hickle Well Apt. 638\nBuckridgeside, WI 46381-3453', 'l', 'darrin09@example.net', 'KATOLIK', '1975-04-13', '2022-05-22 08:17:58', '2022-05-22 08:17:58');
INSERT INTO `guru` VALUES (704422, 'Mr. Clifton Leannon', '45699 Burdette Well Suite 587\nGulgowskistad, RI 70863', 'p', 'jerad.ohara@example.org', 'HINDU', '1981-09-07', '2022-05-22 08:17:58', '2022-05-22 08:17:58');
INSERT INTO `guru` VALUES (913910, 'Lauren Collier Sr.', '4783 Hauck Greens\nChrishaven, FL 49672', 'l', 'jenkins.jaden@example.com', 'KRISTEN', '1972-08-20', '2022-05-22 08:17:58', '2022-05-22 08:17:58');

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kelas
-- ----------------------------
INSERT INTO `kelas` VALUES (1, 'XII Rpl', '2021/2022', NULL, NULL);

-- ----------------------------
-- Table structure for mata_pelajaran
-- ----------------------------
DROP TABLE IF EXISTS `mata_pelajaran`;
CREATE TABLE `mata_pelajaran`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_mapel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guru_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mata_pelajaran
-- ----------------------------

-- ----------------------------
-- Table structure for materi_pembelajaran
-- ----------------------------
DROP TABLE IF EXISTS `materi_pembelajaran`;
CREATE TABLE `materi_pembelajaran`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `matpel_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `berkas_materi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_at` timestamp NOT NULL,
  `end_at` timestamp NOT NULL,
  `batas_submitan` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `materi_pembelajaran_matpel_id_foreign`(`matpel_id`) USING BTREE,
  CONSTRAINT `materi_pembelajaran_matpel_id_foreign` FOREIGN KEY (`matpel_id`) REFERENCES `mata_pelajaran` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of materi_pembelajaran
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (2, '2022_05_16_124824_create_kelas_table', 1);
INSERT INTO `migrations` VALUES (3, '2022_05_16_134840_create_mata_pelajaran_table', 1);
INSERT INTO `migrations` VALUES (4, '2022_05_17_081806_create_materi_pembelajaran_table', 1);
INSERT INTO `migrations` VALUES (5, '2022_05_17_120059_create_siswa_table', 1);
INSERT INTO `migrations` VALUES (6, '2022_05_17_150631_create_guru_table', 1);
INSERT INTO `migrations` VALUES (7, '2022_05_17_151050_craete_operator_sekolah_table', 1);
INSERT INTO `migrations` VALUES (8, '2022_05_18_115718_create_pengguna_table', 1);
INSERT INTO `migrations` VALUES (9, '2022_05_18_155412_create_tugas_table', 1);

-- ----------------------------
-- Table structure for operator_sekolah
-- ----------------------------
DROP TABLE IF EXISTS `operator_sekolah`;
CREATE TABLE `operator_sekolah`  (
  `id_operator` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('l','p') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_operator`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 957092 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operator_sekolah
-- ----------------------------
INSERT INTO `operator_sekolah` VALUES (65020, 'Dr. Hobart Romaguera', 'nestor90@example.com', 'p', '2022-05-22 08:17:59', '2022-05-22 08:17:59');
INSERT INTO `operator_sekolah` VALUES (154934, 'Prof. Bennett Langosh', 'francesco.lemke@example.net', 'l', '2022-05-22 08:17:59', '2022-05-22 08:17:59');
INSERT INTO `operator_sekolah` VALUES (162875, 'Mr. Hardy Kuphal DVM', 'weissnat.harmon@example.com', 'l', '2022-05-22 08:17:59', '2022-05-22 08:17:59');
INSERT INTO `operator_sekolah` VALUES (421334, 'Miss Ashly Boehm', 'forrest26@example.net', 'p', '2022-05-22 08:17:59', '2022-05-22 08:17:59');
INSERT INTO `operator_sekolah` VALUES (558219, 'Clementina Brekke DVM', 'gracie.herzog@example.org', 'l', '2022-05-22 08:17:59', '2022-05-22 08:17:59');
INSERT INTO `operator_sekolah` VALUES (621359, 'Oscar Maggio', 'bkuhn@example.com', 'p', '2022-05-22 08:17:59', '2022-05-22 08:17:59');
INSERT INTO `operator_sekolah` VALUES (710957, 'Sim Bechtelar', 'keshawn05@example.org', 'l', '2022-05-22 08:17:59', '2022-05-22 08:17:59');
INSERT INTO `operator_sekolah` VALUES (750274, 'Eldridge Borer', 'lonie16@example.org', 'l', '2022-05-22 08:17:59', '2022-05-22 08:17:59');
INSERT INTO `operator_sekolah` VALUES (955890, 'Korbin Marvin I', 'karen34@example.org', 'l', '2022-05-22 08:17:59', '2022-05-22 08:17:59');
INSERT INTO `operator_sekolah` VALUES (957091, 'Berta Baumbach', 'jamal.jakubowski@example.com', 'p', '2022-05-22 08:17:59', '2022-05-22 08:17:59');

-- ----------------------------
-- Table structure for pengguna
-- ----------------------------
DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE `pengguna`  (
  `id_pengguna` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` enum('g','s','o') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nip` int(10) UNSIGNED NULL DEFAULT NULL,
  `nisn` int(10) UNSIGNED NULL DEFAULT NULL,
  `id_operator` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id_pengguna`) USING BTREE,
  UNIQUE INDEX `pengguna_username_unique`(`username`) USING BTREE,
  INDEX `pengguna_nip_foreign`(`nip`) USING BTREE,
  INDEX `pengguna_nisn_foreign`(`nisn`) USING BTREE,
  INDEX `pengguna_id_operator_foreign`(`id_operator`) USING BTREE,
  CONSTRAINT `pengguna_id_operator_foreign` FOREIGN KEY (`id_operator`) REFERENCES `operator_sekolah` (`id_operator`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pengguna_nip_foreign` FOREIGN KEY (`nip`) REFERENCES `guru` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pengguna_nisn_foreign` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
INSERT INTO `pengguna` VALUES (1, 'g', 'guru123', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-05-22 15:18:22', '2022-05-22 15:18:24', 379387, NULL, NULL);
INSERT INTO `pengguna` VALUES (2, 's', 'siswa123', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-05-22 15:18:41', '2022-05-22 15:18:44', NULL, 232532, NULL);
INSERT INTO `pengguna` VALUES (3, 'o', 'operator123', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-05-22 15:19:01', '2022-05-22 15:19:03', NULL, NULL, 558219);

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for siswa
-- ----------------------------
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa`  (
  `nisn` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `jenis_kelamin` enum('l','p') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nisn`) USING BTREE,
  INDEX `siswa_kelas_id_foreign`(`kelas_id`) USING BTREE,
  CONSTRAINT `siswa_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 994380 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of siswa
-- ----------------------------
INSERT INTO `siswa` VALUES (105494, 'Teresa Emard', NULL, 'l', '730 Bayer Ports Apt. 968\nPaucekville, NY 51500-6537', 'zwolf@example.org', 'BUDDHA', '2001-06-30', '2022-05-22 08:17:59', '2022-05-22 08:17:59');
INSERT INTO `siswa` VALUES (135901, 'Albertha Daugherty DDS', NULL, 'p', '298 Virgil Terrace\nPort Vellaborough, RI 78212', 'chris52@example.org', 'KRISTEN', '1998-07-30', '2022-05-22 08:17:59', '2022-05-22 08:17:59');
INSERT INTO `siswa` VALUES (152408, 'Winston Kunze DDS', NULL, 'l', '701 Casey Trafficway\nCarmelton, RI 02697', 'tressie93@example.com', 'KRISTEN', '2004-09-08', '2022-05-22 08:17:59', '2022-05-22 08:17:59');
INSERT INTO `siswa` VALUES (226606, 'Dr. Darron Rolfson', NULL, 'p', '89416 Guiseppe Mills\nSouth Friedrichport, AZ 37968', 'katheryn.ratke@example.org', 'KONGHUCU', '2001-10-20', '2022-05-22 08:17:59', '2022-05-22 08:17:59');
INSERT INTO `siswa` VALUES (232532, 'Mrs. Melba Koch', NULL, 'l', '1565 Eichmann Ways\nNorth Keeley, NV 73604', 'damon.okeefe@example.org', 'KONGHUCU', '2002-12-15', '2022-05-22 08:17:59', '2022-05-22 08:17:59');
INSERT INTO `siswa` VALUES (393237, 'Meda Gerhold', NULL, 'p', '38647 Eichmann Circle\nEmeraldhaven, MT 78446', 'gupton@example.org', 'KRISTEN', '2002-09-04', '2022-05-22 08:17:59', '2022-05-22 08:17:59');
INSERT INTO `siswa` VALUES (543638, 'Martine Harris', NULL, 'l', '9072 Yessenia Skyway\nLake Napoleonview, WI 34455', 'vandervort.cathryn@example.com', 'ISLAM', '2001-11-05', '2022-05-22 08:17:59', '2022-05-22 08:17:59');
INSERT INTO `siswa` VALUES (703261, 'Howard Abernathy I', NULL, 'p', '42518 Vito Square Suite 210\nEast Brainshire, PA 72909', 'eernser@example.net', 'KRISTEN', '2000-02-20', '2022-05-22 08:17:59', '2022-05-22 08:17:59');
INSERT INTO `siswa` VALUES (912131, 'Felicita Connelly', NULL, 'l', '917 Schinner Trafficway\nLakinmouth, OK 45324', 'sasha.champlin@example.net', 'KATOLIK', '2003-11-04', '2022-05-22 08:17:59', '2022-05-22 08:17:59');
INSERT INTO `siswa` VALUES (994379, 'Alena Hayes', NULL, 'p', '85994 Cecil Canyon\nOwenton, NY 63567-0965', 'audrey.nitzsche@example.net', 'KATOLIK', '1998-11-24', '2022-05-22 08:17:59', '2022-05-22 08:17:59');

-- ----------------------------
-- Table structure for tugas
-- ----------------------------
DROP TABLE IF EXISTS `tugas`;
CREATE TABLE `tugas`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `matpel_id` bigint(20) UNSIGNED NOT NULL,
  `berkas_tugas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_tugas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pengumpulan` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tugas_matpel_id_foreign`(`matpel_id`) USING BTREE,
  CONSTRAINT `tugas_matpel_id_foreign` FOREIGN KEY (`matpel_id`) REFERENCES `mata_pelajaran` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tugas
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
