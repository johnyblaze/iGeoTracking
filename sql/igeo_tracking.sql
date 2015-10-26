/*
Navicat MySQL Data Transfer

Source Server         : Local DB
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : igeo_tracking

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2015-10-27 00:37:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cars
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `imei` bigint(20) unsigned NOT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num_plate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_spot_loc_lng` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_spot_loc_lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cars_imei_unique` (`imei`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cars
-- ----------------------------
INSERT INTO `cars` VALUES ('1', '2015-10-26 12:43:37', '2015-10-26 12:43:42', null, '12345', 'Honda', '2015', 'H5255', '54.7299096', '25.2509168');
INSERT INTO `cars` VALUES ('5', '2015-10-26 12:43:50', '2015-10-26 12:43:54', null, '1212', 'Audi', '2014', 'G4585', '12.457856', '5.235446');

-- ----------------------------
-- Table structure for cars_copy
-- ----------------------------
DROP TABLE IF EXISTS `cars_copy`;
CREATE TABLE `cars_copy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `imei` bigint(20) unsigned NOT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num_plate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_spot_loc_lng` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_spot_loc_lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cars_imei_unique` (`imei`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cars_copy
-- ----------------------------
INSERT INTO `cars_copy` VALUES ('1', '2015-10-26 12:43:37', '2015-10-26 12:43:42', null, '12345', 'Honda', '2015', 'H5255', '', '');
INSERT INTO `cars_copy` VALUES ('5', '2015-10-26 12:43:50', '2015-10-26 12:43:54', null, '1212', 'Audi', '2014', 'G4585', '', '');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_26_071405_create_cars_table', '2');
INSERT INTO `migrations` VALUES ('2015_10_26_071430_create_spots_table', '2');
INSERT INTO `migrations` VALUES ('2015_10_26_074232_create_cars_table', '3');
INSERT INTO `migrations` VALUES ('2015_10_26_074232_create_spots_table', '3');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for spots
-- ----------------------------
DROP TABLE IF EXISTS `spots`;
CREATE TABLE `spots` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imei` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of spots
-- ----------------------------
INSERT INTO `spots` VALUES ('1', '2015-10-20 12:45:44', '2015-10-26 12:45:44', null, '54.7299096', '25.2509168', '12345');
INSERT INTO `spots` VALUES ('2', '2015-10-27 12:46:12', '2015-10-26 12:46:12', null, '12.457856', '5.235446', '1212');
INSERT INTO `spots` VALUES ('3', '2015-10-15 16:27:24', '2015-10-12 16:27:24', null, '25.2666667', '55.3166667', '12345');
INSERT INTO `spots` VALUES ('4', '2015-10-21 16:27:38', '2015-10-27 16:27:38', null, '45.45454', '12.45454', '1212');
INSERT INTO `spots` VALUES ('5', '2015-10-28 16:27:38', '2015-10-28 16:27:38', null, '25.32323', '22.54455', '12345');
INSERT INTO `spots` VALUES ('6', '2015-10-28 16:27:38', '2015-10-28 16:27:38', null, '23.454545', '20.454845', '12345');

-- ----------------------------
-- Table structure for spots_copy
-- ----------------------------
DROP TABLE IF EXISTS `spots_copy`;
CREATE TABLE `spots_copy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` date NOT NULL DEFAULT '0000-00-00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imei` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of spots_copy
-- ----------------------------
INSERT INTO `spots_copy` VALUES ('1', '2015-10-14', '2015-10-26 12:45:44', null, '54.7299096', '25.2509168', '12345');
INSERT INTO `spots_copy` VALUES ('2', '2015-10-27', '2015-10-26 12:46:12', null, '12.457856', '5.235446', '1212');
INSERT INTO `spots_copy` VALUES ('3', '2015-10-15', '2015-10-12 16:27:24', null, '25.2666667', '55.3166667', '12345');
INSERT INTO `spots_copy` VALUES ('4', '2015-10-21', '2015-10-27 16:27:38', null, '45.45454', '12.45454', '1212');
INSERT INTO `spots_copy` VALUES ('5', '2015-10-28', '0000-00-00 00:00:00', null, '25.32323', '22.54455', '12345');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
