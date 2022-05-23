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

 Date: 22/05/2022 15:14:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
  CONSTRAINT `pengguna_id_operator_foreign` FOREIGN KEY (`id_operator`) REFERENCES `operator_sekolah` (`id_operator`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pengguna_nip_foreign` FOREIGN KEY (`nip`) REFERENCES `guru` (`nip`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pengguna_nisn_foreign` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
INSERT INTO `pengguna` VALUES (1, 'g', 'guru123', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-05-22 15:11:40', '2022-05-22 15:11:42', 169109, NULL, NULL);
INSERT INTO `pengguna` VALUES (2, 's', 'siswa123', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-05-22 15:11:58', '2022-05-22 15:12:00', NULL, 61923, NULL);
INSERT INTO `pengguna` VALUES (3, 'o', 'operator123', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-05-22 15:12:16', '2022-05-22 15:12:18', NULL, NULL, 3);

SET FOREIGN_KEY_CHECKS = 1;
