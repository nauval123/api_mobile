/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : tackle

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-01-15 01:42:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('3', '2021_01_12_181040_create_misi_table', '1');

-- ----------------------------
-- Table structure for misi
-- ----------------------------
DROP TABLE IF EXISTS `misi`;
CREATE TABLE `misi` (
  `id_misi` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `judul_misi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tingkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_misi` bit(1) NOT NULL,
  `poin` int(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_misi`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of misi
-- ----------------------------
INSERT INTO `misi` VALUES ('1', 'Beli Botol Minum Tidak Sekali Pakai', 'easy', 'Indonesia adalah penyumbang sampah plastik terbanyak kedua di dunia ! kebanyakan sampah plastik tersebut digunakan hanya beberapa kali saja dan dibuang begitu saja ke TPA,atau didaur ulang dengan dibakar yang dapat menghasilkan emisi karbon yang tinggi !', '\0', '5', '2021-01-13 01:33:10', '2021-01-13 01:33:15');
INSERT INTO `misi` VALUES ('2', 'Membuang Sampah ditempatnya', 'easy', 'Membuang sampah di sembarang tempat memang terasa lebih \"praktis\" namun tahukah kamu sampah yang kamu buang sembarang bisa berakhir dilaut ! sampah plastik mempunyai ketahanan yang tinggi sehingga butuh ratusan tahun untuk terurai!', '\0', '5', '2021-01-13 01:37:17', '2021-01-13 01:37:19');
INSERT INTO `misi` VALUES ('3', 'Menghabiskan Makanan', 'easy', 'Apakah kalian tahu penyumbang seperempat gas emisi rumah kaca adalah dari sektor pertanian? namun sepertiga dari semua itu tidak benar benar dimakan ! bersyukurlah  dengan menghabiskan apa yang sudah dibeli!', '\0', '5', '2021-01-13 01:40:37', '2021-01-13 01:40:40');
INSERT INTO `misi` VALUES ('4', 'Gunakan Kendaraan Umum !', 'medium', 'Aku tahu ini cukup berat karena kita akan berdesakan tapi tahukah kamu bahwa kendaraan bermotor menyumbang 70 persen polusi di kota kota besar, bayangkan lingkumanmu gelap dan sesak dengan asap yang perlahan membunuhmu!', '\0', '15', '2021-01-13 01:53:46', null);
INSERT INTO `misi` VALUES ('5', 'Kurangi makan daging sapi', 'medium', 'tahukah kamu kalau gas buangan CO2 di dunia,14.5% berasal dari sektor pertenakan sapi!  5 kali lebih banyak dibandingkan peternakan ayam!', '\0', '15', '2021-01-13 01:53:50', null);
INSERT INTO `misi` VALUES ('6', 'Buat  Acara untuk membantu pencegahan perubahan iklim!', 'Hard', 'Dengan kalian aktif dalam pergerakan perubahan iklim banyak manfaat yang didapatkan,namun ingat mencintai bumi sama dengan mencintai dirimu sendiri!', '\0', '30', '2021-01-13 01:53:53', null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
