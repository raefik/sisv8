/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50141
Source Host           : localhost:3306
Source Database       : sis_v5_development

Target Server Type    : MYSQL
Target Server Version : 50141
File Encoding         : 65001

Date: 2012-06-14 18:17:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `action_statuses`
-- ----------------------------
DROP TABLE IF EXISTS `action_statuses`;
CREATE TABLE `action_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of action_statuses
-- ----------------------------
INSERT INTO `action_statuses` VALUES ('1', 'Applied', '2012-02-12 19:22:28', '2012-02-12 19:22:28');
INSERT INTO `action_statuses` VALUES ('2', 'Offered', '2012-02-12 19:22:47', '2012-02-12 19:22:47');
INSERT INTO `action_statuses` VALUES ('3', 'Accepted', '2012-02-12 19:23:04', '2012-02-12 19:23:04');
INSERT INTO `action_statuses` VALUES ('4', 'KIV', '2012-02-12 19:23:21', '2012-02-12 19:23:21');
INSERT INTO `action_statuses` VALUES ('5', 'Rejected', '2012-02-12 19:23:40', '2012-02-12 19:23:40');

-- ----------------------------
-- Table structure for `agree_levels`
-- ----------------------------
DROP TABLE IF EXISTS `agree_levels`;
CREATE TABLE `agree_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of agree_levels
-- ----------------------------
INSERT INTO `agree_levels` VALUES ('1', 'Very Strongly Disagree', '2012-03-13 03:07:27', '2012-03-13 03:07:27');
INSERT INTO `agree_levels` VALUES ('2', 'Strongly Disagree', '2012-03-13 03:12:32', '2012-03-13 03:12:32');
INSERT INTO `agree_levels` VALUES ('3', 'Disagree', '2012-03-13 03:13:34', '2012-03-13 03:13:34');
INSERT INTO `agree_levels` VALUES ('4', 'Agree', '2012-03-13 03:15:22', '2012-03-13 03:15:22');
INSERT INTO `agree_levels` VALUES ('5', 'Strongly Agree', '2012-03-13 03:15:49', '2012-03-13 03:15:49');

-- ----------------------------
-- Table structure for `allowances`
-- ----------------------------
DROP TABLE IF EXISTS `allowances`;
CREATE TABLE `allowances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of allowances
-- ----------------------------

-- ----------------------------
-- Table structure for `available_internships`
-- ----------------------------
DROP TABLE IF EXISTS `available_internships`;
CREATE TABLE `available_internships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `adv_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `prog_name_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of available_internships
-- ----------------------------
INSERT INTO `available_internships` VALUES ('5', null, '2012-02-12 14:58:00', '2012-02-12 14:58:00', null, '19', '7');
INSERT INTO `available_internships` VALUES ('6', null, '2012-02-12 15:29:56', '2012-02-12 15:29:56', null, '19', '1');
INSERT INTO `available_internships` VALUES ('7', null, '2012-02-24 01:22:03', '2012-02-24 01:22:03', null, '34', '1');
INSERT INTO `available_internships` VALUES ('8', null, '2012-02-24 07:32:55', '2012-02-24 07:32:55', null, '38', '1');
INSERT INTO `available_internships` VALUES ('9', null, '2012-02-24 07:33:14', '2012-02-24 07:33:14', null, '38', '5');
INSERT INTO `available_internships` VALUES ('10', null, '2012-03-06 19:38:12', '2012-03-06 19:38:12', null, '39', '1');
INSERT INTO `available_internships` VALUES ('11', null, '2012-03-08 04:35:05', '2012-03-08 04:35:05', null, '42', '5');
INSERT INTO `available_internships` VALUES ('12', null, '2012-04-21 02:09:26', '2012-04-21 02:09:26', null, '48', '7');
INSERT INTO `available_internships` VALUES ('13', null, '2012-04-21 02:10:04', '2012-04-21 02:10:04', null, '48', '1');

-- ----------------------------
-- Table structure for `benefits`
-- ----------------------------
DROP TABLE IF EXISTS `benefits`;
CREATE TABLE `benefits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `adv_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of benefits
-- ----------------------------
INSERT INTO `benefits` VALUES ('3', 'Free Hostel', '19', '2012-02-12 14:26:28', '2012-02-12 14:26:28', null);
INSERT INTO `benefits` VALUES ('4', '-Hostel', '34', '2012-02-24 01:21:35', '2012-02-24 01:21:35', null);
INSERT INTO `benefits` VALUES ('5', '-Hostel', '38', '2012-02-24 07:32:33', '2012-02-24 07:32:33', null);
INSERT INTO `benefits` VALUES ('6', 'Hostel', '39', '2012-03-06 19:37:40', '2012-03-06 19:37:40', null);
INSERT INTO `benefits` VALUES ('7', 'Hostel', '42', '2012-03-08 04:34:38', '2012-03-08 04:34:38', null);
INSERT INTO `benefits` VALUES ('8', 'Hostel', '48', '2012-04-21 02:09:10', '2012-04-21 02:09:10', null);
INSERT INTO `benefits` VALUES ('9', 'atikastafsdrhtdhsyjstjjsyksyatikastafsdrhtdhsyjstjjsyksyatikastafsdrhtdhsyjstjjsyksyatikastafsdrhtdhsyjstjjsyksyatikastafsdrhtdhsyjstjjsyksyatikastafsdrhtdhsyjstjjsyksyatikastafsdrhtdhsyjstjjsyksyatikastafsdrhtdhsyjstjjsyksyatikastafsdrhtdhsyjstjjsyksyati', '19', '2012-06-11 16:04:04', '2012-06-11 16:04:04', null);

-- ----------------------------
-- Table structure for `campus`
-- ----------------------------
DROP TABLE IF EXISTS `campus`;
CREATE TABLE `campus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cawangan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of campus
-- ----------------------------

-- ----------------------------
-- Table structure for `cawangans`
-- ----------------------------
DROP TABLE IF EXISTS `cawangans`;
CREATE TABLE `cawangans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cawangans
-- ----------------------------

-- ----------------------------
-- Table structure for `clusters`
-- ----------------------------
DROP TABLE IF EXISTS `clusters`;
CREATE TABLE `clusters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of clusters
-- ----------------------------
INSERT INTO `clusters` VALUES ('1', 'OIL,GAS & ENERGY', '2012-02-05 11:30:50', '2012-02-05 11:30:50');
INSERT INTO `clusters` VALUES ('2', 'BUSINESS SERVICES', '2012-02-05 11:31:09', '2012-02-05 11:31:09');
INSERT INTO `clusters` VALUES ('3', 'HEALTHCARE', '2012-02-05 11:31:25', '2012-02-05 11:32:01');
INSERT INTO `clusters` VALUES ('4', 'PALM OIL', '2012-02-05 11:32:18', '2012-02-05 11:32:18');
INSERT INTO `clusters` VALUES ('5', 'ELECTRONIC & ELECTRICAL', '2012-02-05 11:32:33', '2012-02-05 11:32:33');
INSERT INTO `clusters` VALUES ('6', 'COMMUNICATION,CONTENT & INFRASTRUCTURE', '2012-02-05 11:32:50', '2012-02-05 11:32:50');
INSERT INTO `clusters` VALUES ('7', 'FINANCIAL SERVICES', '2012-02-05 11:33:34', '2012-02-05 11:33:34');
INSERT INTO `clusters` VALUES ('8', 'WHOLESALE & RETAIL', '2012-02-05 11:33:52', '2012-02-05 11:33:52');
INSERT INTO `clusters` VALUES ('9', 'AGRICULTURE', '2012-02-05 11:34:09', '2012-02-05 11:34:09');
INSERT INTO `clusters` VALUES ('10', 'TOURISM', '2012-02-05 11:34:28', '2012-02-05 11:34:28');
INSERT INTO `clusters` VALUES ('11', 'EDUCATION', '2012-02-05 11:34:48', '2012-02-05 11:34:48');
INSERT INTO `clusters` VALUES ('12', 'GREATER KUALA LUMPUR', '2012-02-05 11:35:04', '2012-02-05 11:35:04');
INSERT INTO `clusters` VALUES ('13', 'TIADA DALAM SENARAI', '2012-02-05 11:35:21', '2012-02-05 11:35:21');
INSERT INTO `clusters` VALUES ('14', '', '2012-02-14 14:11:37', '2012-02-14 14:11:37');

-- ----------------------------
-- Table structure for `code_programs`
-- ----------------------------
DROP TABLE IF EXISTS `code_programs`;
CREATE TABLE `code_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of code_programs
-- ----------------------------
INSERT INTO `code_programs` VALUES ('1', 'CS110', '2012-02-11 13:29:58', '2012-02-11 13:29:58');
INSERT INTO `code_programs` VALUES ('2', 'CS111', '2012-02-11 13:30:22', '2012-02-11 13:30:22');
INSERT INTO `code_programs` VALUES ('3', 'CS112', '2012-02-11 13:30:43', '2012-02-11 13:30:43');
INSERT INTO `code_programs` VALUES ('4', 'CS113', '2012-02-11 13:31:06', '2012-02-11 13:31:06');
INSERT INTO `code_programs` VALUES ('5', 'CS220', '2012-02-11 13:31:32', '2012-02-11 13:31:32');
INSERT INTO `code_programs` VALUES ('6', 'CS221', '2012-02-11 13:31:56', '2012-02-11 13:31:56');
INSERT INTO `code_programs` VALUES ('7', 'CS222', '2012-02-11 13:32:19', '2012-02-11 13:32:19');
INSERT INTO `code_programs` VALUES ('8', 'CS223', '2012-02-11 13:32:45', '2012-02-11 13:32:45');
INSERT INTO `code_programs` VALUES ('9', 'CS224', '2012-02-11 13:33:09', '2012-02-11 13:33:09');
INSERT INTO `code_programs` VALUES ('10', 'CS225', '2012-02-11 13:33:35', '2012-02-11 13:33:35');
INSERT INTO `code_programs` VALUES ('11', 'CS226', '2012-02-11 13:34:00', '2012-02-11 13:34:00');
INSERT INTO `code_programs` VALUES ('12', 'CS227', '2012-02-11 13:34:23', '2012-02-11 13:34:23');
INSERT INTO `code_programs` VALUES ('13', 'CS228', '2012-02-11 13:34:47', '2012-02-11 13:34:47');
INSERT INTO `code_programs` VALUES ('14', 'CS229', '2012-02-11 13:35:12', '2012-02-11 13:35:12');
INSERT INTO `code_programs` VALUES ('15', 'CS230', '2012-02-11 13:35:40', '2012-02-11 13:35:40');
INSERT INTO `code_programs` VALUES ('16', 'CS231', '2012-02-11 13:36:04', '2012-02-11 13:36:04');
INSERT INTO `code_programs` VALUES ('17', 'CS233', '2012-02-11 13:36:37', '2012-02-11 13:36:37');

-- ----------------------------
-- Table structure for `companies`
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of companies
-- ----------------------------
INSERT INTO `companies` VALUES ('1', '19', '2012-02-11 19:36:19', '2012-02-11 19:36:19', 'KFC Holdings Sdn Bhd');
INSERT INTO `companies` VALUES ('2', '20', '2012-02-12 21:00:07', '2012-02-12 21:00:07', 'Adidas Sdn Bhd');
INSERT INTO `companies` VALUES ('3', '21', '2012-02-12 21:06:03', '2012-02-12 21:06:03', 'Bank Islam Malaysia');
INSERT INTO `companies` VALUES ('4', '22', '2012-02-12 23:50:04', '2012-02-12 23:50:04', 'Nestle Sdn Bhd');
INSERT INTO `companies` VALUES ('5', '23', '2012-02-12 23:51:00', '2012-02-12 23:51:00', 'Petronas Sdn Bhd');
INSERT INTO `companies` VALUES ('6', '24', '2012-02-12 23:53:48', '2012-02-12 23:53:48', 'Majlis Daerah');
INSERT INTO `companies` VALUES ('7', '29', '2012-02-14 14:59:52', '2012-02-14 14:59:52', 'Syarikat Kasut Cap Ayam');
INSERT INTO `companies` VALUES ('8', '34', '2012-02-24 01:14:54', '2012-02-24 01:14:54', 'Ikea Sdn Bhd');
INSERT INTO `companies` VALUES ('9', '37', '2012-02-24 06:20:06', '2012-02-24 06:20:06', 'Syarikat Peladang');
INSERT INTO `companies` VALUES ('10', '38', '2012-02-24 07:26:50', '2012-02-24 07:26:50', 'Syarikat Koperasi Sdn Bhd');
INSERT INTO `companies` VALUES ('11', '39', '2012-03-06 19:26:05', '2012-03-06 19:26:05', 'Telekom Malaysia Berhad');
INSERT INTO `companies` VALUES ('12', '42', '2012-03-08 04:30:39', '2012-03-08 04:30:39', 'Syarikat A');
INSERT INTO `companies` VALUES ('13', '44', '2012-04-20 23:38:16', '2012-04-20 23:38:16', 'gdf');
INSERT INTO `companies` VALUES ('14', '48', '2012-04-21 02:04:06', '2012-04-21 02:04:06', 'syarkat A');

-- ----------------------------
-- Table structure for `comp_advs`
-- ----------------------------
DROP TABLE IF EXISTS `comp_advs`;
CREATE TABLE `comp_advs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adv_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `about_company` text COLLATE utf8_unicode_ci,
  `requirement_id` int(11) DEFAULT '1',
  `level` int(11) DEFAULT NULL,
  `allowance_id` int(11) DEFAULT '1',
  `value_allowance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `benefit` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status_id` int(11) DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comp_advs
-- ----------------------------
INSERT INTO `comp_advs` VALUES ('1', '2012-02-02', '2012-02-12', 'KFC, founded and also known as Kentucky Fried Chicken, is a chain of fast food restaurants based in Louisville, Kentucky, United States. KFC has been a brand and operating segment, termed a concept of Yum! Brands since 1997 when that company was spun off from PepsiCo as Tricon Global Restaurants Inc.', null, '30', null, '300 per month', null, '19', '2012-02-11 19:36:19', '2012-03-06 16:50:11', '1');
INSERT INTO `comp_advs` VALUES ('2', null, null, null, null, null, null, null, null, '20', '2012-02-12 21:00:07', '2012-02-12 21:00:07', null);
INSERT INTO `comp_advs` VALUES ('3', null, null, null, null, null, null, null, null, '21', '2012-02-12 21:06:03', '2012-02-12 21:06:03', null);
INSERT INTO `comp_advs` VALUES ('4', null, null, null, null, null, null, null, null, '22', '2012-02-12 23:50:04', '2012-02-12 23:50:04', null);
INSERT INTO `comp_advs` VALUES ('5', null, null, null, null, null, null, null, null, '23', '2012-02-12 23:51:00', '2012-02-12 23:51:00', null);
INSERT INTO `comp_advs` VALUES ('6', null, null, null, null, null, null, null, null, '24', '2012-02-12 23:53:48', '2012-02-12 23:53:48', null);
INSERT INTO `comp_advs` VALUES ('7', null, null, null, '1', null, '1', null, null, '29', '2012-02-14 14:59:53', '2012-02-14 14:59:53', '3');
INSERT INTO `comp_advs` VALUES ('8', '2012-02-24', '2012-02-24', 'This Company is named IKea..', '1', '34', '1', '230', null, '34', '2012-02-24 01:14:54', '2012-02-24 01:19:16', '1');
INSERT INTO `comp_advs` VALUES ('9', null, null, null, '1', null, '1', null, null, '37', '2012-02-24 06:20:06', '2012-02-24 06:20:06', '3');
INSERT INTO `comp_advs` VALUES ('10', '2012-02-24', '2012-09-17', 'About this company', '1', '30', '1', '100', null, '38', '2012-02-24 07:26:50', '2012-02-24 07:31:27', '1');
INSERT INTO `comp_advs` VALUES ('11', '2012-03-06', '2013-03-08', 'Telekom Malaysia Berhad , DBA TM, is the largest integrated solutions[clarification needed] provider in Malaysia, and one of Asia\'s leading communications companies, with a market capitalisation of RM13.9 billion and a workforce of 26,629 employees. Established as the Telecommunications Department of Malaya in 1946, it was privatised in 1987, and listed on Bursa Malaysia in 1990. Subsequent growth led to a demerger in 2008 of TM\'s mobile and fixed services, allowing the company to focus more intently on its core businesses of Internet and multimedia, data and fixed-line services.[1]', '1', '34', '1', '230', null, '39', '2012-03-06 19:26:06', '2012-03-06 19:36:05', '1');
INSERT INTO `comp_advs` VALUES ('12', '2012-03-08', '2014-03-11', 'background company...', '1', '32', '1', '230', null, '42', '2012-03-08 04:30:40', '2012-03-08 04:33:58', '1');
INSERT INTO `comp_advs` VALUES ('13', null, null, null, '1', null, '1', null, null, '44', '2012-04-20 23:38:16', '2012-04-20 23:38:16', '3');
INSERT INTO `comp_advs` VALUES ('14', '2012-04-21', '2012-05-21', 'background company', '1', '45', '1', '344', null, '48', '2012-04-21 02:04:06', '2012-04-21 02:07:36', '1');

-- ----------------------------
-- Table structure for `comp_profiles`
-- ----------------------------
DROP TABLE IF EXISTS `comp_profiles`;
CREATE TABLE `comp_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bis_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `official_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `register_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sector_id` int(11) DEFAULT '18',
  `industry_id` int(11) DEFAULT '9',
  `cluster_id` int(11) DEFAULT '14',
  `place` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT '15',
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comp_profiles
-- ----------------------------
INSERT INTO `comp_profiles` VALUES ('1', '-', '2323', '2323', 'www.kfc.com', 'miss Hani', '23132', '15', '4', '11', 'KFC SDN BHD', '4324234', 'Petaling Jaya', '12', '19', '2012-02-11 19:36:18', '2012-03-06 16:44:46');
INSERT INTO `comp_profiles` VALUES ('2', null, null, null, null, null, null, null, null, null, 'bawah jambatan jalan', '4545', 'ggggg', '12', '20', '2012-02-12 21:00:07', '2012-02-12 21:00:07');
INSERT INTO `comp_profiles` VALUES ('3', null, null, null, null, null, null, null, null, null, null, null, null, '12', '21', '2012-02-12 21:06:03', '2012-02-12 21:06:03');
INSERT INTO `comp_profiles` VALUES ('4', null, null, null, null, null, null, null, null, null, null, null, null, '12', '22', '2012-02-12 23:50:04', '2012-02-12 23:50:04');
INSERT INTO `comp_profiles` VALUES ('5', null, null, null, null, null, null, null, null, null, null, null, null, '12', '23', '2012-02-12 23:51:00', '2012-02-12 23:51:00');
INSERT INTO `comp_profiles` VALUES ('6', null, null, null, null, null, null, null, null, null, null, null, null, '12', '24', '2012-02-12 23:53:47', '2012-02-12 23:53:47');
INSERT INTO `comp_profiles` VALUES ('7', null, null, null, null, null, null, '18', '9', '14', null, null, null, '15', '29', '2012-02-14 14:59:52', '2012-02-14 14:59:52');
INSERT INTO `comp_profiles` VALUES ('8', 'x', '03-3456788', 'ikea@gmail.com', 'www.ikea.com', 'Ms Woo', '4242342', '7', '5', '2', 'Blok Bangunan Perniagaan', '356789', 'Bangsar', '12', '34', '2012-02-24 01:14:53', '2012-02-24 01:17:44');
INSERT INTO `comp_profiles` VALUES ('9', null, null, null, null, null, null, '18', '9', '14', null, null, null, '15', '37', '2012-02-24 06:20:05', '2012-02-24 06:20:05');
INSERT INTO `comp_profiles` VALUES ('10', 'Business', '03-3555555', 'koop@gmail.com', 'www.koperasi.com', 'Miss Wong', '23444', '7', '5', '2', 'Pusat Komersial Seksyen 7', '350000', 'Shah Alam', '1', '38', '2012-02-24 07:26:50', '2012-02-24 07:30:30');
INSERT INTO `comp_profiles` VALUES ('11', 'private', '03-456789', 'telekom.hr@gmail.com', 'www.telekom.com', 'En Hafiz', '45678', '5', '4', '5', 'No 2 Jalan Besar', '35000', 'Shah Alam', '1', '39', '2012-03-06 19:26:05', '2012-03-06 19:33:50');
INSERT INTO `comp_profiles` VALUES ('12', '-', '03-12345678', 'syarikat@gmail.com', 'www.google.com', 'En Haris', '234567', '7', '5', '2', 'no 7 seksyen 7', '350000', 'Shah Alam', '1', '42', '2012-03-08 04:30:39', '2012-03-08 04:33:03');
INSERT INTO `comp_profiles` VALUES ('13', null, null, null, null, null, null, '18', '9', '14', null, null, null, '15', '44', '2012-04-20 23:38:16', '2012-04-20 23:38:16');
INSERT INTO `comp_profiles` VALUES ('14', '-', '32323', 'ab@gmail.com', 'www.syarikat_a.com', 'Cik A', '34555', '17', '2', '6', 'Jalan dsds', '32323', 'selangor', '4', '48', '2012-04-21 02:04:05', '2012-04-21 02:06:26');

-- ----------------------------
-- Table structure for `c_skills`
-- ----------------------------
DROP TABLE IF EXISTS `c_skills`;
CREATE TABLE `c_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of c_skills
-- ----------------------------
INSERT INTO `c_skills` VALUES ('1', 'I speak clearly and directly.  ', '2012-03-12 22:50:00', '2012-03-12 22:50:00');
INSERT INTO `c_skills` VALUES ('2', 'I am not capable of negotiating.', '2012-03-12 22:50:21', '2012-03-12 22:50:21');
INSERT INTO `c_skills` VALUES ('3', 'I listen and ask questions to understand the points of views of others.', '2012-03-12 22:50:41', '2012-03-12 22:50:41');
INSERT INTO `c_skills` VALUES ('4', 'I interact using a range of ICT ( Eg. e-mail, sms, blog, facebook, twitter, etc. )', '2012-03-12 22:51:09', '2012-03-12 22:51:09');

-- ----------------------------
-- Table structure for `date_visits`
-- ----------------------------
DROP TABLE IF EXISTS `date_visits`;
CREATE TABLE `date_visits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `matric_no_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of date_visits
-- ----------------------------
INSERT INTO `date_visits` VALUES ('1', null, '2012-02-22', '2006242', null, '2012-02-22 18:22:35', '2012-02-22 18:22:35', null);
INSERT INTO `date_visits` VALUES ('4', '1', '2012-02-22', '2008749103', null, '2012-02-22 21:28:19', '2012-02-22 21:28:19', null);
INSERT INTO `date_visits` VALUES ('5', '2', '2012-02-22', '2008749103', null, '2012-02-22 21:38:25', '2012-02-22 21:38:25', null);
INSERT INTO `date_visits` VALUES ('7', '4', '2012-02-24', '2009898989', null, '2012-02-24 01:46:50', '2012-02-24 01:46:50', null);
INSERT INTO `date_visits` VALUES ('8', '4', '2012-03-01', '2009898989', null, '2012-03-01 18:15:58', '2012-03-01 18:15:58', null);

-- ----------------------------
-- Table structure for `durations`
-- ----------------------------
DROP TABLE IF EXISTS `durations`;
CREATE TABLE `durations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of durations
-- ----------------------------

-- ----------------------------
-- Table structure for `education_backgrounds`
-- ----------------------------
DROP TABLE IF EXISTS `education_backgrounds`;
CREATE TABLE `education_backgrounds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `institute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `education_level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of education_backgrounds
-- ----------------------------
INSERT INTO `education_backgrounds` VALUES ('1', 'Sekolah Kebagsaan Jalan Duta', '1999-2011', '18', '2012-02-11 16:55:02', '2012-02-11 16:55:02', null);
INSERT INTO `education_backgrounds` VALUES ('2', 'Sekolah Kebagsaan Jalan Duta', '1999-2011', '25', '2012-02-14 00:42:30', '2012-02-14 00:42:30', null);
INSERT INTO `education_backgrounds` VALUES ('3', 'Kolej Tegah Padu', '2001-2002', '25', '2012-02-14 00:43:11', '2012-02-14 00:43:11', null);
INSERT INTO `education_backgrounds` VALUES ('5', 'UiTM', '2010-2011', '49', '2012-04-21 02:19:21', '2012-04-21 02:19:21', null);
INSERT INTO `education_backgrounds` VALUES ('6', 'UiTM', '2008', '33', '2012-05-28 09:53:32', '2012-05-28 09:53:32', 'Diploma science computer');

-- ----------------------------
-- Table structure for `employability_skills`
-- ----------------------------
DROP TABLE IF EXISTS `employability_skills`;
CREATE TABLE `employability_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expected_communication` text COLLATE utf8_unicode_ci,
  `perception_communication` text COLLATE utf8_unicode_ci,
  `expected_teamwork` text COLLATE utf8_unicode_ci,
  `perception_teamwork` text COLLATE utf8_unicode_ci,
  `expected_ps` text COLLATE utf8_unicode_ci,
  `perception_ps` text COLLATE utf8_unicode_ci,
  `expected_sm` text COLLATE utf8_unicode_ci,
  `perception_sm` text COLLATE utf8_unicode_ci,
  `expected_po` text COLLATE utf8_unicode_ci,
  `perception_po` text COLLATE utf8_unicode_ci,
  `expected_ts` text COLLATE utf8_unicode_ci,
  `perception_ts` text COLLATE utf8_unicode_ci,
  `expected_lc` text COLLATE utf8_unicode_ci,
  `perception_lc` text COLLATE utf8_unicode_ci,
  `expected_io` text COLLATE utf8_unicode_ci,
  `perception_io` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of employability_skills
-- ----------------------------
INSERT INTO `employability_skills` VALUES ('1', 'dasdasd', 'dsdasd', 'dasdsd', 'dsadasd', 'dasdd', 'dasdsd', 'dasds', 'dsdd', 'dasds', 'dsadd', 'dsdsad', 'dsda', 'dsdsad', 'dasds', 'dasds', 'dsadsads', null, '2012-03-15 13:57:24', '2012-03-15 13:57:24');

-- ----------------------------
-- Table structure for `employer_traits`
-- ----------------------------
DROP TABLE IF EXISTS `employer_traits`;
CREATE TABLE `employer_traits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of employer_traits
-- ----------------------------
INSERT INTO `employer_traits` VALUES ('1', '(eg. Verbal, negotiating, listening, asking questions,  ICT interacting, presenting a point to view)', '2012-03-12 23:55:06', '2012-03-13 00:07:14', 'Communication');
INSERT INTO `employer_traits` VALUES ('2', '(eg. Working together,  sharing information and expertise,  leading or supporting a team, managing and resolving conflicts, open to other opinions)', '2012-03-12 23:55:33', '2012-03-13 00:07:35', 'Teamwork');
INSERT INTO `employer_traits` VALUES ('3', '(eg. Identifying, finding a range of strategies and developing practical solutions to problems )  ', '2012-03-12 23:55:59', '2012-03-13 00:08:00', 'Problem Solving');
INSERT INTO `employer_traits` VALUES ('4', '(eg. Confidence, responsible, carry out a task from start to finish based on quality standards) ', '2012-03-12 23:56:27', '2012-03-13 00:08:27', 'Self-management');
INSERT INTO `employer_traits` VALUES ('5', '(eg. Using time and resources effectively,  setting priorities and planning for contingencies, effective assignment of tasks)', '2012-03-12 23:56:57', '2012-03-13 00:08:52', 'Planning and Organizing');
INSERT INTO `employer_traits` VALUES ('6', '(eg. Have adequate IT skills to apply in given tasks, willing to learn new IT skills', '2012-03-12 23:57:21', '2012-03-13 00:09:16', 'Technology Skills');
INSERT INTO `employer_traits` VALUES ('7', '(eg enthusiasm, willingness to learn in to accommodate change)', '2012-03-12 23:57:46', '2012-03-13 00:09:39', 'Learning continuously');
INSERT INTO `employer_traits` VALUES ('8', '(eg.  creative thinking in work, extra effort in given task )    ', '2012-03-12 23:58:14', '2012-03-13 00:10:22', 'Innovative outcomes');

-- ----------------------------
-- Table structure for `e_skills`
-- ----------------------------
DROP TABLE IF EXISTS `e_skills`;
CREATE TABLE `e_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of e_skills
-- ----------------------------

-- ----------------------------
-- Table structure for `faculties`
-- ----------------------------
DROP TABLE IF EXISTS `faculties`;
CREATE TABLE `faculties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of faculties
-- ----------------------------
INSERT INTO `faculties` VALUES ('1', 'Fakulti Farmasi', '2012-02-06 04:16:15', '2012-02-06 04:16:15');
INSERT INTO `faculties` VALUES ('2', 'Fakulti Kejuruteraan Awam', '2012-02-06 04:16:41', '2012-02-06 04:16:41');
INSERT INTO `faculties` VALUES ('3', 'Fakulti Kejuruteraan Elektrik', '2012-02-06 04:17:00', '2012-02-06 04:17:00');
INSERT INTO `faculties` VALUES ('4', 'Fakulti Kejuruteraan Kimia', '2012-02-06 04:17:32', '2012-02-06 04:17:32');
INSERT INTO `faculties` VALUES ('5', 'Fakulti Kejuruteraan Mekanikal', '2012-02-06 04:17:53', '2012-02-06 04:17:53');
INSERT INTO `faculties` VALUES ('6', 'Fakulti Komunikasi Dan Pengajian Media', '2012-02-06 04:18:14', '2012-02-06 04:18:14');
INSERT INTO `faculties` VALUES ('7', 'Fakulti Muzik', '2012-02-06 04:18:38', '2012-02-06 04:18:38');
INSERT INTO `faculties` VALUES ('8', 'Fakulti Pendidikan', '2012-02-06 04:18:58', '2012-02-06 04:18:58');
INSERT INTO `faculties` VALUES ('9', 'Fakulti Pengurusan Dan Teknologi Pejabat', '2012-02-06 04:19:20', '2012-02-06 04:19:20');
INSERT INTO `faculties` VALUES ('10', 'Fakulti Pengurusan Hotel Dan Pelancongan', '2012-02-06 04:19:43', '2012-02-06 04:19:43');
INSERT INTO `faculties` VALUES ('11', 'Fakulti Pengurusan Maklumat', '2012-02-06 04:20:05', '2012-02-06 04:20:05');
INSERT INTO `faculties` VALUES ('12', 'Fakulti Pengurusan Perniagaan', '2012-02-06 04:20:25', '2012-02-06 04:20:25');
INSERT INTO `faculties` VALUES ('13', 'Fakulti Perakaunan', '2012-02-06 04:20:48', '2012-02-06 04:20:48');
INSERT INTO `faculties` VALUES ('14', 'Fakulti Pergigian', '2012-02-06 04:21:07', '2012-02-06 04:21:07');
INSERT INTO `faculties` VALUES ('15', 'Fakulti Perubatan', '2012-02-06 04:21:29', '2012-02-06 04:21:29');
INSERT INTO `faculties` VALUES ('16', 'Fakulti Sains Gunaan', '2012-02-06 04:21:50', '2012-02-06 04:21:50');
INSERT INTO `faculties` VALUES ('17', 'Fakulti Perladangan dan Agroteknologi', '2012-02-06 04:22:10', '2012-02-06 04:22:10');
INSERT INTO `faculties` VALUES ('18', 'Fakulti Sains Kesihatan', '2012-02-06 04:22:30', '2012-02-06 04:22:30');
INSERT INTO `faculties` VALUES ('19', 'Fakulti Sains Komputer Dan Matematik', '2012-02-06 04:22:50', '2012-02-06 04:22:50');
INSERT INTO `faculties` VALUES ('20', 'Fakulti Sains Pentadbiran & Pengajian Polisi', '2012-02-06 04:23:13', '2012-02-06 04:23:13');
INSERT INTO `faculties` VALUES ('21', 'Fakulti Sains Sukan Dan Rekreasi', '2012-02-06 04:23:32', '2012-02-06 04:23:32');
INSERT INTO `faculties` VALUES ('22', 'Fakulti Senibina, Perancangan & Ukur', '2012-02-06 04:23:46', '2012-02-06 04:24:13');
INSERT INTO `faculties` VALUES ('23', 'Fakulti Teknologi Kreatif & Artistik', '2012-02-06 04:24:34', '2012-02-06 04:24:34');
INSERT INTO `faculties` VALUES ('24', 'Fakulti Undang-undang', '2012-02-06 04:24:52', '2012-02-06 04:24:52');
INSERT INTO `faculties` VALUES ('25', 'Akademik Pengajian Bahasa', '2012-02-06 04:25:38', '2012-02-06 04:25:38');
INSERT INTO `faculties` VALUES ('26', '', '2012-02-14 12:52:19', '2012-02-14 12:52:19');

-- ----------------------------
-- Table structure for `gelarans`
-- ----------------------------
DROP TABLE IF EXISTS `gelarans`;
CREATE TABLE `gelarans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of gelarans
-- ----------------------------
INSERT INTO `gelarans` VALUES ('1', 'Cik', '2012-02-07 21:19:59', '2012-02-07 21:19:59');
INSERT INTO `gelarans` VALUES ('2', 'En', '2012-02-07 21:20:12', '2012-02-07 21:20:12');
INSERT INTO `gelarans` VALUES ('3', 'Tuan', '2012-02-07 21:20:24', '2012-02-07 21:20:24');
INSERT INTO `gelarans` VALUES ('4', 'Puan', '2012-02-07 21:20:39', '2012-02-07 21:20:39');
INSERT INTO `gelarans` VALUES ('5', 'Dr', '2012-02-07 21:20:51', '2012-02-07 21:20:51');
INSERT INTO `gelarans` VALUES ('6', 'Prof Madya', '2012-02-07 21:21:06', '2012-02-07 21:21:06');
INSERT INTO `gelarans` VALUES ('7', 'Datuk', '2012-02-07 21:21:19', '2012-02-07 21:21:19');
INSERT INTO `gelarans` VALUES ('8', 'Datin', '2012-02-07 21:21:32', '2012-02-07 21:21:32');
INSERT INTO `gelarans` VALUES ('9', '', '2012-02-14 14:36:15', '2012-02-14 14:36:15');

-- ----------------------------
-- Table structure for `genders`
-- ----------------------------
DROP TABLE IF EXISTS `genders`;
CREATE TABLE `genders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of genders
-- ----------------------------
INSERT INTO `genders` VALUES ('1', 'Male', '2012-02-05 11:21:26', '2012-02-05 11:21:44');
INSERT INTO `genders` VALUES ('2', 'Female', '2012-02-05 11:22:00', '2012-02-05 11:22:00');
INSERT INTO `genders` VALUES ('3', '', '2012-02-14 12:42:25', '2012-02-14 12:43:38');

-- ----------------------------
-- Table structure for `greds`
-- ----------------------------
DROP TABLE IF EXISTS `greds`;
CREATE TABLE `greds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of greds
-- ----------------------------
INSERT INTO `greds` VALUES ('1', 'A+', '2012-02-22 15:04:14', '2012-02-22 15:04:14');
INSERT INTO `greds` VALUES ('2', 'A', '2012-02-22 15:04:33', '2012-02-22 15:04:33');
INSERT INTO `greds` VALUES ('3', 'A-', '2012-02-22 15:04:53', '2012-02-22 15:04:53');
INSERT INTO `greds` VALUES ('4', 'B+', '2012-02-22 15:05:15', '2012-02-22 15:05:15');
INSERT INTO `greds` VALUES ('5', 'B', '2012-02-22 15:05:33', '2012-02-22 15:05:33');
INSERT INTO `greds` VALUES ('6', 'B-', '2012-02-22 15:05:52', '2012-02-22 15:05:52');
INSERT INTO `greds` VALUES ('7', 'C+', '2012-02-22 15:06:12', '2012-02-22 15:06:12');
INSERT INTO `greds` VALUES ('8', 'C', '2012-02-22 15:06:29', '2012-02-22 15:06:29');
INSERT INTO `greds` VALUES ('9', 'C-', '2012-02-22 15:06:46', '2012-02-22 15:06:46');
INSERT INTO `greds` VALUES ('10', 'D+', '2012-02-22 15:07:05', '2012-02-22 15:07:05');
INSERT INTO `greds` VALUES ('11', 'D', '2012-02-22 15:07:24', '2012-02-22 15:07:24');
INSERT INTO `greds` VALUES ('12', 'D-', '2012-02-22 15:07:45', '2012-02-22 15:07:45');
INSERT INTO `greds` VALUES ('13', 'E', '2012-02-22 15:08:20', '2012-02-22 15:08:20');
INSERT INTO `greds` VALUES ('14', 'F', '2012-02-22 15:08:37', '2012-02-22 15:08:37');

-- ----------------------------
-- Table structure for `impact_internships`
-- ----------------------------
DROP TABLE IF EXISTS `impact_internships`;
CREATE TABLE `impact_internships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of impact_internships
-- ----------------------------
INSERT INTO `impact_internships` VALUES ('1', 'The knowledge acquired during the training was not relevant to my future work.', '2012-03-12 23:06:07', '2012-03-12 23:06:07');
INSERT INTO `impact_internships` VALUES ('2', 'I enjoyed the work given during the training.', '2012-03-12 23:06:26', '2012-03-12 23:06:26');
INSERT INTO `impact_internships` VALUES ('3', 'I enjoyed interacting with the employees of the company.', '2012-03-12 23:06:47', '2012-03-12 23:06:47');
INSERT INTO `impact_internships` VALUES ('4', 'I did not enjoy learning about the nature of business of the company.', '2012-03-12 23:07:13', '2012-03-12 23:07:13');
INSERT INTO `impact_internships` VALUES ('5', 'I see the need for teamwork  in the working environment.', '2012-03-12 23:07:43', '2012-03-12 23:07:43');
INSERT INTO `impact_internships` VALUES ('6', 'I see the need for good communication skills in the working environment.', '2012-03-12 23:08:09', '2012-03-12 23:08:09');
INSERT INTO `impact_internships` VALUES ('7', 'I do not believe that the industry provided me with relevant training experience.', '2012-03-12 23:08:32', '2012-03-12 23:08:32');
INSERT INTO `impact_internships` VALUES ('8', 'I show commitment to the company.', '2012-03-12 23:09:00', '2012-03-12 23:09:00');

-- ----------------------------
-- Table structure for `industries`
-- ----------------------------
DROP TABLE IF EXISTS `industries`;
CREATE TABLE `industries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of industries
-- ----------------------------
INSERT INTO `industries` VALUES ('1', 'KERAJAAN', '2012-02-05 11:58:48', '2012-02-05 11:58:48');
INSERT INTO `industries` VALUES ('2', 'BADAN BERKANUN', '2012-02-05 11:59:04', '2012-02-05 11:59:04');
INSERT INTO `industries` VALUES ('3', 'SWASTA MULTINASIONAL/ASING', '2012-02-05 11:59:26', '2012-02-05 11:59:26');
INSERT INTO `industries` VALUES ('4', 'SWASTA TEMPATAN', '2012-02-05 11:59:43', '2012-02-05 11:59:43');
INSERT INTO `industries` VALUES ('5', 'PERUSAHAAN SENDIRI', '2012-02-05 12:00:11', '2012-02-05 12:00:11');
INSERT INTO `industries` VALUES ('6', 'GLC', '2012-02-05 12:00:31', '2012-02-05 12:00:31');
INSERT INTO `industries` VALUES ('7', 'NGO', '2012-02-05 12:00:49', '2012-02-05 12:00:49');
INSERT INTO `industries` VALUES ('8', 'LAIN-LAIN', '2012-02-05 12:01:10', '2012-02-05 12:01:10');
INSERT INTO `industries` VALUES ('9', '', '2012-02-14 14:13:11', '2012-02-14 14:13:11');

-- ----------------------------
-- Table structure for `innovative_outcomes`
-- ----------------------------
DROP TABLE IF EXISTS `innovative_outcomes`;
CREATE TABLE `innovative_outcomes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of innovative_outcomes
-- ----------------------------
INSERT INTO `innovative_outcomes` VALUES ('1', 'I am willing to put extra effort in given task.', '2012-03-12 23:04:34', '2012-03-12 23:04:34');
INSERT INTO `innovative_outcomes` VALUES ('2', 'I do not translate ideas into actions.', '2012-03-12 23:04:53', '2012-03-12 23:04:53');
INSERT INTO `innovative_outcomes` VALUES ('3', 'I initiate innovative solutions.', '2012-03-12 23:05:17', '2012-03-12 23:05:17');

-- ----------------------------
-- Table structure for `intership_periods`
-- ----------------------------
DROP TABLE IF EXISTS `intership_periods`;
CREATE TABLE `intership_periods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of intership_periods
-- ----------------------------

-- ----------------------------
-- Table structure for `kampus`
-- ----------------------------
DROP TABLE IF EXISTS `kampus`;
CREATE TABLE `kampus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cawangan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of kampus
-- ----------------------------
INSERT INTO `kampus` VALUES ('1', 'UiTM Shah Alam', '', null, '2012-02-15 06:35:24', '2012-02-15 06:35:24');
INSERT INTO `kampus` VALUES ('2', 'UiTM Puncak Alam', '', null, '2012-02-15 06:35:47', '2012-02-15 06:35:47');
INSERT INTO `kampus` VALUES ('3', 'UiTM Puncak Perdana', '', null, '2012-02-15 06:36:10', '2012-02-15 06:36:10');
INSERT INTO `kampus` VALUES ('4', 'Kolej Pendidikan Antarabangsa (INTEC)', '', null, '2012-02-15 06:36:32', '2012-02-15 06:36:32');
INSERT INTO `kampus` VALUES ('5', 'UiTM Jalan Othman', '', null, '2012-02-15 06:36:50', '2012-02-15 06:36:50');
INSERT INTO `kampus` VALUES ('6', 'UiTM Hospital Selayang', '', null, '2012-02-15 06:37:08', '2012-02-15 06:37:08');
INSERT INTO `kampus` VALUES ('7', 'UiTM Johor', '', null, '2012-02-15 06:37:28', '2012-02-15 06:37:28');
INSERT INTO `kampus` VALUES ('8', 'UiTM Johor Bahru', '', null, '2012-02-15 06:37:47', '2012-02-15 06:37:47');
INSERT INTO `kampus` VALUES ('9', 'UiTM Kedah', '', null, '2012-02-15 06:38:09', '2012-02-15 06:38:09');
INSERT INTO `kampus` VALUES ('10', 'UiTM Kelantan', '', null, '2012-02-15 06:38:26', '2012-02-15 06:38:26');
INSERT INTO `kampus` VALUES ('11', 'UiTM Kota Bharu', '', null, '2012-02-15 06:38:43', '2012-02-15 06:38:43');
INSERT INTO `kampus` VALUES ('12', 'UiTM Melaka', '', null, '2012-02-15 06:39:00', '2012-02-15 06:39:00');
INSERT INTO `kampus` VALUES ('13', 'UiTM Bandaraya Melaka', '', null, '2012-02-15 06:39:16', '2012-02-15 06:39:16');
INSERT INTO `kampus` VALUES ('14', 'UiTM Negeri Sembilan', '', null, '2012-02-15 06:39:40', '2012-02-15 06:39:40');
INSERT INTO `kampus` VALUES ('15', 'UiTM Pahang', '', null, '2012-02-15 06:40:03', '2012-02-15 06:40:03');
INSERT INTO `kampus` VALUES ('16', 'UiTM Kuantan', '', null, '2012-02-15 06:40:19', '2012-02-15 06:40:19');
INSERT INTO `kampus` VALUES ('17', 'UiTM Perak', '', null, '2012-02-15 06:40:44', '2012-02-15 06:40:44');
INSERT INTO `kampus` VALUES ('18', 'UiTM Perlis', '', null, '2012-02-15 06:41:03', '2012-02-15 06:41:03');
INSERT INTO `kampus` VALUES ('19', 'UiTM Pulau Pinang', '', null, '2012-02-15 06:41:20', '2012-02-15 06:41:20');
INSERT INTO `kampus` VALUES ('20', 'UiTM Sabah', '', null, '2012-02-15 06:41:38', '2012-02-15 06:41:38');
INSERT INTO `kampus` VALUES ('21', 'UiTM Tawau', '', null, '2012-02-15 06:41:56', '2012-02-15 06:41:56');
INSERT INTO `kampus` VALUES ('22', 'UiTM Sarawak', '', null, '2012-02-15 06:42:45', '2012-02-15 06:42:45');
INSERT INTO `kampus` VALUES ('23', 'UiTM Kuching', '', null, '2012-02-15 06:43:22', '2012-02-15 06:43:22');
INSERT INTO `kampus` VALUES ('24', 'UiTM Terengganu', '', null, '2012-02-15 06:43:41', '2012-02-15 06:43:41');
INSERT INTO `kampus` VALUES ('25', 'UiTM Kuala Terengganu', '', null, '2012-02-15 06:44:03', '2012-02-15 06:44:03');
INSERT INTO `kampus` VALUES ('26', 'UiTM Besut', '', null, '2012-02-15 06:44:22', '2012-02-15 06:44:22');

-- ----------------------------
-- Table structure for `learning_skills`
-- ----------------------------
DROP TABLE IF EXISTS `learning_skills`;
CREATE TABLE `learning_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of learning_skills
-- ----------------------------
INSERT INTO `learning_skills` VALUES ('1', 'I do not have an enthusiasm for ongoing learning.', '2012-03-12 23:02:51', '2012-03-12 23:02:51');
INSERT INTO `learning_skills` VALUES ('2', 'I am willing to learn in any setting.', '2012-03-12 23:03:11', '2012-03-12 23:03:11');
INSERT INTO `learning_skills` VALUES ('3', 'I am prepared to learn in order to accommodate change.', '2012-03-12 23:03:35', '2012-03-12 23:03:35');

-- ----------------------------
-- Table structure for `locations`
-- ----------------------------
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) DEFAULT '15',
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of locations
-- ----------------------------
INSERT INTO `locations` VALUES ('1', '1', '18', '2012-02-11 15:25:14', '2012-02-11 15:25:14');
INSERT INTO `locations` VALUES ('3', '2', '18', '2012-02-11 15:42:39', '2012-02-11 15:42:39');
INSERT INTO `locations` VALUES ('4', '2', '18', '2012-02-11 15:44:39', '2012-02-11 15:44:39');
INSERT INTO `locations` VALUES ('5', '3', '25', '2012-02-14 05:26:39', '2012-02-14 05:26:39');
INSERT INTO `locations` VALUES ('6', '4', '33', '2012-02-23 22:26:06', '2012-02-23 22:26:06');
INSERT INTO `locations` VALUES ('7', '7', '33', '2012-02-23 22:26:48', '2012-02-23 22:26:48');
INSERT INTO `locations` VALUES ('8', '8', '33', '2012-02-23 22:27:09', '2012-02-23 22:27:09');
INSERT INTO `locations` VALUES ('9', '4', '49', '2012-04-21 02:20:57', '2012-04-21 02:20:57');
INSERT INTO `locations` VALUES ('10', '1', '49', '2012-04-21 02:21:24', '2012-04-21 02:21:24');
INSERT INTO `locations` VALUES ('11', '1', '51', '2012-04-24 09:55:18', '2012-04-24 09:55:18');

-- ----------------------------
-- Table structure for `log_books`
-- ----------------------------
DROP TABLE IF EXISTS `log_books`;
CREATE TABLE `log_books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `action_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `stud_profile_id` int(11) DEFAULT NULL,
  `matric_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of log_books
-- ----------------------------
INSERT INTO `log_books` VALUES ('4', '2012-02-23', 'Makan', 'Hari ini ada jamuan makan malam bersama dengan timbalan dekan..', null, '2012-02-23 13:16:36', '2012-02-23 13:16:36', null, null, '1', null);
INSERT INTO `log_books` VALUES ('5', '2012-02-23', 'Memancing', 'Pergi belajar memancing\r\n', null, '2012-02-23 13:42:31', '2012-02-23 13:42:31', null, null, '1', null);
INSERT INTO `log_books` VALUES ('6', '2012-02-23', 'wewe', 'sadsdasdsadasdsd', null, '2012-02-23 13:53:16', '2012-02-23 13:53:16', null, null, '2', null);
INSERT INTO `log_books` VALUES ('7', '2012-02-23', 'asdda', 'daddadasdd', null, '2012-02-23 14:20:49', '2012-02-23 14:20:49', null, null, '2', null);
INSERT INTO `log_books` VALUES ('8', '2012-02-23', 'ssss', 'sfdsfdsfdsf fdsfsdfs fdsfsdfd', null, '2012-02-23 14:25:10', '2012-02-23 14:25:10', null, null, '2', null);
INSERT INTO `log_books` VALUES ('9', '2012-02-24', 'Hari Suai Kenal', 'Hari ini merupakan hari suai kenal diantara staff-staff di syarikat ini bersama pelajar yang menyertai latihan industri di sini. ', null, '2012-02-24 05:44:25', '2012-05-29 14:40:03', null, null, '3', null);
INSERT INTO `log_books` VALUES ('10', '2012-03-06', 'Tugasan Pertama', 'Masukkan data pelajar ke system', null, '2012-03-06 16:35:51', '2012-03-06 16:35:51', null, null, '3', null);
INSERT INTO `log_books` VALUES ('11', '2012-04-21', 'first_day', 'asfasfsadf', null, '2012-04-21 02:33:50', '2012-04-21 02:33:50', null, null, '6', null);
INSERT INTO `log_books` VALUES ('12', '2012-05-23', 'Hari keluarga ', 'Berhari keluarga.. :p', null, '2012-05-29 16:39:27', '2012-05-29 16:39:27', null, null, '3', null);

-- ----------------------------
-- Table structure for `marital_statuses`
-- ----------------------------
DROP TABLE IF EXISTS `marital_statuses`;
CREATE TABLE `marital_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of marital_statuses
-- ----------------------------
INSERT INTO `marital_statuses` VALUES ('1', 'Single', '2012-02-11 13:46:00', '2012-02-11 13:46:00');
INSERT INTO `marital_statuses` VALUES ('2', 'Married', '2012-02-11 13:46:59', '2012-02-11 13:46:59');
INSERT INTO `marital_statuses` VALUES ('3', 'Widow', '2012-02-11 13:47:29', '2012-02-11 13:47:29');
INSERT INTO `marital_statuses` VALUES ('4', 'Widower', '2012-02-11 13:48:04', '2012-02-11 13:48:04');

-- ----------------------------
-- Table structure for `markah_students`
-- ----------------------------
DROP TABLE IF EXISTS `markah_students`;
CREATE TABLE `markah_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `buku_log` int(11) DEFAULT NULL,
  `penyelia` int(11) DEFAULT NULL,
  `laporan` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `gred` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catatan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `matric_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of markah_students
-- ----------------------------
INSERT INTO `markah_students` VALUES ('32', null, '1', null, null, null, null, null, null, '2012-02-23 04:17:34', '2012-02-23 04:17:34', null);
INSERT INTO `markah_students` VALUES ('33', null, '1', '33', '33', '22', '323', 'dsadd', 'dasdad', '2012-02-23 04:18:45', '2012-02-23 04:18:45', null);
INSERT INTO `markah_students` VALUES ('34', null, '1', '3', '3', '3', '232', 'sasa', 'asasas', '2012-02-23 04:19:09', '2012-02-23 04:19:50', '2008749103');
INSERT INTO `markah_students` VALUES ('35', null, '1', '22', '22', '22', '22', '22', '222', '2012-02-23 04:20:27', '2012-02-23 04:20:40', null);
INSERT INTO `markah_students` VALUES ('36', null, '1', '44', '44', '44', '323', 'EWEE', 'EWEWE', '2012-02-23 04:22:21', '2012-02-23 04:22:38', null);
INSERT INTO `markah_students` VALUES ('37', null, '1', null, null, null, null, null, null, '2012-02-23 04:23:51', '2012-02-23 04:23:51', null);
INSERT INTO `markah_students` VALUES ('38', null, '1', null, null, null, null, null, null, '2012-02-23 04:24:15', '2012-02-23 04:24:15', null);
INSERT INTO `markah_students` VALUES ('39', null, '1', '22', '2', '22', '2', '33', '33', '2012-02-23 04:24:54', '2012-02-23 04:25:18', '2008767778');
INSERT INTO `markah_students` VALUES ('40', null, '1', '22', '22', '22', '22', 'q', 'dsadasasd', '2012-02-23 04:25:40', '2012-02-23 04:25:56', '2008767778');
INSERT INTO `markah_students` VALUES ('41', null, '1', null, null, null, null, null, null, '2012-02-23 04:26:19', '2012-02-23 04:26:19', null);
INSERT INTO `markah_students` VALUES ('42', null, '1', null, null, null, null, null, null, '2012-02-23 06:10:37', '2012-02-23 06:10:37', null);
INSERT INTO `markah_students` VALUES ('43', null, '1', null, null, null, null, null, null, '2012-02-23 06:10:57', '2012-02-23 06:10:57', null);
INSERT INTO `markah_students` VALUES ('44', null, '1', null, null, null, null, null, null, '2012-02-23 06:23:56', '2012-02-23 06:23:56', null);
INSERT INTO `markah_students` VALUES ('45', null, '1', null, null, null, null, null, null, '2012-02-23 06:24:53', '2012-02-23 06:24:53', null);
INSERT INTO `markah_students` VALUES ('46', null, '1', null, null, null, null, null, null, '2012-02-23 06:26:27', '2012-02-23 06:26:27', null);
INSERT INTO `markah_students` VALUES ('47', null, '1', null, null, null, null, null, null, '2012-02-23 06:26:55', '2012-02-23 06:26:55', null);
INSERT INTO `markah_students` VALUES ('48', null, '1', null, null, null, null, null, null, '2012-02-23 06:27:54', '2012-02-23 06:27:54', null);
INSERT INTO `markah_students` VALUES ('49', null, '1', null, null, null, null, null, null, '2012-02-23 06:28:02', '2012-02-23 06:28:02', null);
INSERT INTO `markah_students` VALUES ('50', null, '1', null, null, null, null, null, null, '2012-02-23 06:30:18', '2012-02-23 06:30:18', null);
INSERT INTO `markah_students` VALUES ('51', null, '1', null, null, null, null, null, null, '2012-02-23 06:30:51', '2012-02-23 06:30:51', null);
INSERT INTO `markah_students` VALUES ('52', null, '1', null, null, null, null, null, null, '2012-02-23 06:34:32', '2012-02-23 06:34:32', null);
INSERT INTO `markah_students` VALUES ('53', null, '1', null, null, null, null, null, null, '2012-02-23 06:38:44', '2012-02-23 06:38:44', null);
INSERT INTO `markah_students` VALUES ('54', null, '1', null, null, null, null, null, null, '2012-02-23 06:41:14', '2012-02-23 06:41:14', null);
INSERT INTO `markah_students` VALUES ('55', null, '1', null, null, null, null, null, null, '2012-02-23 06:42:28', '2012-02-23 06:42:28', null);
INSERT INTO `markah_students` VALUES ('56', null, '1', null, null, null, null, null, null, '2012-02-23 06:44:40', '2012-02-23 06:44:40', null);
INSERT INTO `markah_students` VALUES ('57', null, '1', null, null, null, null, null, null, '2012-02-23 06:45:59', '2012-02-23 06:45:59', null);
INSERT INTO `markah_students` VALUES ('58', null, '1', null, null, null, null, null, null, '2012-02-23 06:46:54', '2012-02-23 06:46:54', null);
INSERT INTO `markah_students` VALUES ('59', null, '1', null, null, null, null, null, null, '2012-02-23 06:48:04', '2012-02-23 06:48:04', null);
INSERT INTO `markah_students` VALUES ('60', null, '1', null, null, null, null, null, null, '2012-02-23 06:55:30', '2012-02-23 06:55:30', null);
INSERT INTO `markah_students` VALUES ('61', null, '1', null, null, null, null, null, null, '2012-02-23 06:56:29', '2012-02-23 06:56:29', null);
INSERT INTO `markah_students` VALUES ('62', null, '1', null, null, null, null, null, null, '2012-02-23 06:57:15', '2012-02-23 06:57:15', null);
INSERT INTO `markah_students` VALUES ('63', null, '1', null, null, null, null, null, null, '2012-02-23 06:58:57', '2012-02-23 06:58:57', null);
INSERT INTO `markah_students` VALUES ('64', null, '1', null, null, null, null, null, null, '2012-02-23 06:59:45', '2012-02-23 06:59:45', null);
INSERT INTO `markah_students` VALUES ('65', null, '1', null, null, null, null, null, null, '2012-02-23 07:13:47', '2012-02-23 07:13:47', null);
INSERT INTO `markah_students` VALUES ('66', null, '1', null, null, null, null, null, null, '2012-02-23 07:17:42', '2012-02-23 07:17:42', null);
INSERT INTO `markah_students` VALUES ('67', null, '1', null, null, null, null, null, null, '2012-02-23 07:23:29', '2012-02-23 07:23:29', null);
INSERT INTO `markah_students` VALUES ('68', null, '1', null, null, null, null, null, null, '2012-02-23 07:25:18', '2012-02-23 07:25:18', null);
INSERT INTO `markah_students` VALUES ('69', null, '1', null, null, null, null, null, null, '2012-02-23 07:26:14', '2012-02-23 07:26:14', null);
INSERT INTO `markah_students` VALUES ('70', null, '1', null, null, null, null, null, null, '2012-02-23 07:28:09', '2012-02-23 07:28:09', null);
INSERT INTO `markah_students` VALUES ('71', null, '1', null, null, null, null, null, null, '2012-02-23 07:30:32', '2012-02-23 07:30:32', null);
INSERT INTO `markah_students` VALUES ('72', null, '1', null, null, null, null, null, null, '2012-02-23 07:31:06', '2012-02-23 07:31:06', null);
INSERT INTO `markah_students` VALUES ('73', null, '1', null, null, null, null, null, null, '2012-02-23 07:33:47', '2012-02-23 07:33:47', null);
INSERT INTO `markah_students` VALUES ('74', null, '1', null, null, null, null, null, null, '2012-02-23 07:34:38', '2012-02-23 07:34:38', null);
INSERT INTO `markah_students` VALUES ('75', null, '1', null, null, null, null, null, null, '2012-02-23 08:05:33', '2012-02-23 08:05:33', null);
INSERT INTO `markah_students` VALUES ('76', null, '1', null, null, null, null, null, null, '2012-02-23 08:05:59', '2012-02-23 08:05:59', null);
INSERT INTO `markah_students` VALUES ('77', null, '1', null, null, null, null, null, null, '2012-02-23 08:06:42', '2012-02-23 08:06:42', null);
INSERT INTO `markah_students` VALUES ('78', null, '1', null, null, null, null, null, null, '2012-02-23 08:07:04', '2012-02-23 08:07:04', null);
INSERT INTO `markah_students` VALUES ('79', null, '1', null, null, null, null, null, null, '2012-02-23 08:08:15', '2012-02-23 08:08:15', null);
INSERT INTO `markah_students` VALUES ('80', null, '1', null, null, null, null, null, null, '2012-02-23 08:08:57', '2012-02-23 08:08:57', null);
INSERT INTO `markah_students` VALUES ('81', null, '1', null, null, null, null, null, null, '2012-02-23 08:09:40', '2012-02-23 08:09:40', null);
INSERT INTO `markah_students` VALUES ('82', null, '1', null, null, null, null, null, null, '2012-02-23 08:10:41', '2012-02-23 08:10:41', null);
INSERT INTO `markah_students` VALUES ('83', null, '1', null, null, null, null, null, null, '2012-02-23 08:11:06', '2012-02-23 08:11:06', null);
INSERT INTO `markah_students` VALUES ('84', null, '1', null, null, null, null, null, null, '2012-02-23 08:12:30', '2012-02-23 08:12:30', null);
INSERT INTO `markah_students` VALUES ('85', null, '1', null, null, null, null, null, null, '2012-02-23 08:19:24', '2012-02-23 08:19:24', null);
INSERT INTO `markah_students` VALUES ('86', null, '1', null, null, null, null, null, null, '2012-02-23 08:20:09', '2012-02-23 08:20:09', null);
INSERT INTO `markah_students` VALUES ('87', null, '1', null, null, null, null, null, null, '2012-02-23 08:21:31', '2012-02-23 08:21:31', null);
INSERT INTO `markah_students` VALUES ('88', null, '1', null, null, null, null, null, null, '2012-02-23 08:22:10', '2012-02-23 08:22:10', null);
INSERT INTO `markah_students` VALUES ('89', null, '1', null, null, null, null, null, null, '2012-02-23 08:23:48', '2012-02-23 08:23:48', null);
INSERT INTO `markah_students` VALUES ('90', null, '1', null, null, null, null, null, null, '2012-02-23 08:24:18', '2012-02-23 08:24:18', null);
INSERT INTO `markah_students` VALUES ('91', null, '1', null, null, null, null, null, null, '2012-02-23 08:25:02', '2012-02-23 08:25:02', null);
INSERT INTO `markah_students` VALUES ('92', null, '1', null, null, null, null, null, null, '2012-02-23 08:25:19', '2012-02-23 08:25:19', null);
INSERT INTO `markah_students` VALUES ('93', null, '1', null, null, null, null, null, null, '2012-02-23 08:25:30', '2012-02-23 08:25:30', null);
INSERT INTO `markah_students` VALUES ('94', null, '1', null, null, null, null, null, null, '2012-02-23 08:29:44', '2012-02-23 08:29:44', null);
INSERT INTO `markah_students` VALUES ('95', null, '1', null, null, null, null, null, null, '2012-02-23 08:30:08', '2012-02-23 08:30:08', null);
INSERT INTO `markah_students` VALUES ('96', null, '1', null, null, null, null, null, null, '2012-02-23 08:31:25', '2012-02-23 08:31:25', null);
INSERT INTO `markah_students` VALUES ('97', null, '1', null, null, null, null, null, null, '2012-02-23 08:31:42', '2012-02-23 08:31:42', null);
INSERT INTO `markah_students` VALUES ('98', null, '1', null, null, null, null, null, null, '2012-02-23 08:32:00', '2012-02-23 08:32:00', null);
INSERT INTO `markah_students` VALUES ('99', null, '1', null, null, null, null, null, null, '2012-02-23 08:32:23', '2012-02-23 08:32:23', null);
INSERT INTO `markah_students` VALUES ('100', null, '1', null, null, null, null, null, null, '2012-02-23 08:35:23', '2012-02-23 08:35:23', null);
INSERT INTO `markah_students` VALUES ('101', null, '1', null, null, null, null, null, null, '2012-02-23 08:35:57', '2012-02-23 08:35:57', null);
INSERT INTO `markah_students` VALUES ('102', null, '1', null, null, null, null, null, null, '2012-02-23 08:36:51', '2012-02-23 08:36:51', null);
INSERT INTO `markah_students` VALUES ('103', null, '1', null, null, null, null, null, null, '2012-02-23 08:43:23', '2012-02-23 08:43:23', null);
INSERT INTO `markah_students` VALUES ('104', null, '1', null, null, null, null, null, null, '2012-02-23 08:44:56', '2012-02-23 08:44:56', null);
INSERT INTO `markah_students` VALUES ('105', null, '1', null, null, null, null, null, null, '2012-02-23 08:45:57', '2012-02-23 08:45:57', null);
INSERT INTO `markah_students` VALUES ('106', null, '1', null, null, null, null, null, null, '2012-02-23 08:46:35', '2012-02-23 08:46:35', null);
INSERT INTO `markah_students` VALUES ('107', null, '1', null, null, null, null, null, null, '2012-02-23 08:47:51', '2012-02-23 08:47:51', null);
INSERT INTO `markah_students` VALUES ('108', null, '1', null, null, null, null, null, null, '2012-02-23 08:49:04', '2012-02-23 08:49:04', null);
INSERT INTO `markah_students` VALUES ('109', null, '1', null, null, null, null, null, null, '2012-02-23 08:51:48', '2012-02-23 08:51:48', null);
INSERT INTO `markah_students` VALUES ('110', null, '1', null, null, null, null, null, null, '2012-02-23 09:00:05', '2012-02-23 09:00:05', null);
INSERT INTO `markah_students` VALUES ('111', null, '1', null, null, null, null, null, null, '2012-02-23 09:00:51', '2012-02-23 09:00:51', null);
INSERT INTO `markah_students` VALUES ('112', null, '1', null, null, null, null, null, null, '2012-02-23 09:01:21', '2012-02-23 09:01:21', null);
INSERT INTO `markah_students` VALUES ('113', null, '1', null, null, null, null, null, null, '2012-02-23 09:01:34', '2012-02-23 09:01:34', null);
INSERT INTO `markah_students` VALUES ('114', null, '1', null, null, null, null, null, null, '2012-02-23 09:02:13', '2012-02-23 09:02:13', null);
INSERT INTO `markah_students` VALUES ('115', null, '1', null, null, null, null, null, null, '2012-02-23 09:02:39', '2012-02-23 09:02:39', null);
INSERT INTO `markah_students` VALUES ('116', null, '1', null, null, null, null, null, null, '2012-02-23 09:03:41', '2012-02-23 09:03:41', null);
INSERT INTO `markah_students` VALUES ('117', null, '1', null, null, null, null, null, null, '2012-02-23 09:04:17', '2012-02-23 09:04:17', null);
INSERT INTO `markah_students` VALUES ('118', null, '1', null, null, null, null, null, null, '2012-02-23 09:04:54', '2012-02-23 09:04:54', null);
INSERT INTO `markah_students` VALUES ('119', null, '1', null, null, null, null, null, null, '2012-02-23 09:05:20', '2012-02-23 09:05:20', null);
INSERT INTO `markah_students` VALUES ('120', null, '1', null, null, null, null, null, null, '2012-02-23 09:05:53', '2012-02-23 09:05:53', null);
INSERT INTO `markah_students` VALUES ('121', null, '1', null, null, null, null, null, null, '2012-02-23 09:06:04', '2012-02-23 09:06:04', null);
INSERT INTO `markah_students` VALUES ('122', null, '1', null, null, null, null, null, null, '2012-02-23 09:06:16', '2012-02-23 09:06:16', null);
INSERT INTO `markah_students` VALUES ('123', null, '1', null, null, null, null, null, null, '2012-02-23 09:06:49', '2012-02-23 09:06:49', null);
INSERT INTO `markah_students` VALUES ('124', null, '1', null, null, null, null, null, null, '2012-02-23 09:07:24', '2012-02-23 09:07:24', null);
INSERT INTO `markah_students` VALUES ('125', null, '1', null, null, null, null, null, null, '2012-02-23 09:07:57', '2012-02-23 09:07:57', null);
INSERT INTO `markah_students` VALUES ('126', null, '1', null, null, null, null, null, null, '2012-02-23 09:08:30', '2012-02-23 09:08:30', null);
INSERT INTO `markah_students` VALUES ('127', null, '1', null, null, null, null, null, null, '2012-02-23 09:09:13', '2012-02-23 09:09:13', null);
INSERT INTO `markah_students` VALUES ('128', null, '1', null, null, null, null, null, null, '2012-02-23 09:09:56', '2012-02-23 09:09:56', null);
INSERT INTO `markah_students` VALUES ('129', null, '1', null, null, null, null, null, null, '2012-02-23 09:11:23', '2012-02-23 09:11:23', null);
INSERT INTO `markah_students` VALUES ('130', null, '1', null, null, null, null, null, null, '2012-02-23 09:12:09', '2012-02-23 09:12:09', null);
INSERT INTO `markah_students` VALUES ('131', null, '1', null, null, null, null, null, null, '2012-02-23 09:12:42', '2012-02-23 09:12:42', null);
INSERT INTO `markah_students` VALUES ('132', null, '1', null, null, null, null, null, null, '2012-02-23 09:13:08', '2012-02-23 09:13:08', null);
INSERT INTO `markah_students` VALUES ('133', null, '1', null, null, null, null, null, null, '2012-02-23 09:13:34', '2012-02-23 09:13:34', null);
INSERT INTO `markah_students` VALUES ('134', null, '1', null, null, null, null, null, null, '2012-02-23 09:14:47', '2012-02-23 09:14:47', null);
INSERT INTO `markah_students` VALUES ('135', null, '1', null, null, null, null, null, null, '2012-02-23 09:15:59', '2012-02-23 09:15:59', null);
INSERT INTO `markah_students` VALUES ('136', null, '1', null, null, null, null, null, null, '2012-02-23 09:16:18', '2012-02-23 09:16:18', null);
INSERT INTO `markah_students` VALUES ('137', null, '1', null, null, null, null, null, null, '2012-02-23 09:17:18', '2012-02-23 09:17:18', null);
INSERT INTO `markah_students` VALUES ('138', null, '1', null, null, null, null, null, null, '2012-02-23 09:17:51', '2012-02-23 09:17:51', null);
INSERT INTO `markah_students` VALUES ('139', null, '1', null, null, null, null, null, null, '2012-02-23 09:18:06', '2012-02-23 09:18:06', null);
INSERT INTO `markah_students` VALUES ('140', null, '1', null, null, null, null, null, null, '2012-02-23 09:19:28', '2012-02-23 09:19:28', null);
INSERT INTO `markah_students` VALUES ('141', null, '1', null, null, null, null, null, null, '2012-02-23 09:19:40', '2012-02-23 09:19:40', null);
INSERT INTO `markah_students` VALUES ('142', null, '1', null, null, null, null, null, null, '2012-02-23 09:22:17', '2012-02-23 09:22:17', null);
INSERT INTO `markah_students` VALUES ('143', null, '1', null, null, null, null, null, null, '2012-02-23 09:23:37', '2012-02-23 09:23:37', null);
INSERT INTO `markah_students` VALUES ('144', null, '1', null, null, null, null, null, null, '2012-02-23 12:56:20', '2012-02-23 12:56:20', null);
INSERT INTO `markah_students` VALUES ('145', null, '1', null, null, null, null, null, null, '2012-02-23 12:56:30', '2012-02-23 12:56:30', null);
INSERT INTO `markah_students` VALUES ('146', null, '1', null, null, null, null, null, null, '2012-02-23 13:17:51', '2012-02-23 13:17:51', null);
INSERT INTO `markah_students` VALUES ('147', null, '1', null, null, null, null, null, null, '2012-02-23 13:17:59', '2012-02-23 13:17:59', null);
INSERT INTO `markah_students` VALUES ('148', null, '1', null, null, null, null, null, null, '2012-02-23 13:21:16', '2012-02-23 13:21:16', null);
INSERT INTO `markah_students` VALUES ('149', null, '1', null, null, null, null, null, null, '2012-02-23 13:23:17', '2012-02-23 13:23:17', null);
INSERT INTO `markah_students` VALUES ('150', null, '1', null, null, null, null, null, null, '2012-02-23 13:23:49', '2012-02-23 13:23:49', null);
INSERT INTO `markah_students` VALUES ('151', null, '1', null, null, null, null, null, null, '2012-02-23 13:25:25', '2012-02-23 13:25:25', null);
INSERT INTO `markah_students` VALUES ('152', null, '1', null, null, null, null, null, null, '2012-02-23 13:30:05', '2012-02-23 13:30:05', null);
INSERT INTO `markah_students` VALUES ('153', null, '1', null, null, null, null, null, null, '2012-02-23 13:30:58', '2012-02-23 13:30:58', null);
INSERT INTO `markah_students` VALUES ('154', null, '1', null, null, null, null, null, null, '2012-02-23 13:31:22', '2012-02-23 13:31:22', null);
INSERT INTO `markah_students` VALUES ('155', null, '1', null, null, null, null, null, null, '2012-02-23 13:32:08', '2012-02-23 13:32:08', null);
INSERT INTO `markah_students` VALUES ('156', null, '1', null, null, null, null, null, null, '2012-02-23 13:33:03', '2012-02-23 13:33:03', null);
INSERT INTO `markah_students` VALUES ('157', null, '1', null, null, null, null, null, null, '2012-02-23 13:38:43', '2012-02-23 13:38:43', null);
INSERT INTO `markah_students` VALUES ('158', null, '1', null, null, null, null, null, null, '2012-02-23 13:39:15', '2012-02-23 13:39:15', null);
INSERT INTO `markah_students` VALUES ('159', null, '1', null, null, null, null, null, null, '2012-02-23 13:39:37', '2012-02-23 13:39:37', null);
INSERT INTO `markah_students` VALUES ('160', null, '1', null, null, null, null, null, null, '2012-02-23 13:39:44', '2012-02-23 13:39:44', null);
INSERT INTO `markah_students` VALUES ('161', null, '1', null, null, null, null, null, null, '2012-02-23 13:40:03', '2012-02-23 13:40:03', null);
INSERT INTO `markah_students` VALUES ('162', null, '1', null, null, null, null, null, null, '2012-02-23 13:40:36', '2012-02-23 13:40:36', null);
INSERT INTO `markah_students` VALUES ('163', null, '1', null, null, null, null, null, null, '2012-02-23 13:41:23', '2012-02-23 13:41:23', null);
INSERT INTO `markah_students` VALUES ('164', null, '1', null, null, null, null, null, null, '2012-02-23 13:43:06', '2012-02-23 13:43:06', null);
INSERT INTO `markah_students` VALUES ('165', null, '1', null, null, null, null, null, null, '2012-02-23 13:43:14', '2012-02-23 13:43:14', null);
INSERT INTO `markah_students` VALUES ('166', null, '1', null, null, null, null, null, null, '2012-02-23 13:43:50', '2012-02-23 13:43:50', null);
INSERT INTO `markah_students` VALUES ('167', null, '1', null, null, null, null, null, null, '2012-02-23 13:44:05', '2012-02-23 13:44:05', null);
INSERT INTO `markah_students` VALUES ('168', null, '1', null, null, null, null, null, null, '2012-02-23 13:47:14', '2012-02-23 13:47:14', null);
INSERT INTO `markah_students` VALUES ('169', null, '1', null, null, null, null, null, null, '2012-02-23 13:47:59', '2012-02-23 13:47:59', null);
INSERT INTO `markah_students` VALUES ('170', null, '1', null, null, null, null, null, null, '2012-02-23 13:49:09', '2012-02-23 13:49:09', null);
INSERT INTO `markah_students` VALUES ('171', null, '1', null, null, null, null, null, null, '2012-02-23 13:49:57', '2012-02-23 13:49:57', null);
INSERT INTO `markah_students` VALUES ('172', null, '1', null, null, null, null, null, null, '2012-02-23 13:51:34', '2012-02-23 13:51:34', null);
INSERT INTO `markah_students` VALUES ('173', null, '1', null, null, null, null, null, null, '2012-02-23 13:52:01', '2012-02-23 13:52:01', null);
INSERT INTO `markah_students` VALUES ('174', null, '1', null, null, null, null, null, null, '2012-02-23 13:52:14', '2012-02-23 13:52:14', null);
INSERT INTO `markah_students` VALUES ('175', null, '1', null, null, null, null, null, null, '2012-02-23 13:53:48', '2012-02-23 13:53:48', null);
INSERT INTO `markah_students` VALUES ('176', null, '1', null, null, null, null, null, null, '2012-02-23 13:57:26', '2012-02-23 13:57:26', null);
INSERT INTO `markah_students` VALUES ('177', null, '1', null, null, null, null, null, null, '2012-02-23 13:58:00', '2012-02-23 13:58:00', null);
INSERT INTO `markah_students` VALUES ('178', null, '1', null, null, null, null, null, null, '2012-02-23 13:58:30', '2012-02-23 13:58:30', null);
INSERT INTO `markah_students` VALUES ('179', null, '1', null, null, null, null, null, null, '2012-02-23 13:59:41', '2012-02-23 13:59:41', null);
INSERT INTO `markah_students` VALUES ('180', null, '1', null, null, null, null, null, null, '2012-02-23 14:00:08', '2012-02-23 14:00:08', null);
INSERT INTO `markah_students` VALUES ('181', null, '1', null, null, null, null, null, null, '2012-02-23 14:00:48', '2012-02-23 14:00:48', null);
INSERT INTO `markah_students` VALUES ('182', null, '1', null, null, null, null, null, null, '2012-02-23 14:27:42', '2012-02-23 14:27:42', null);
INSERT INTO `markah_students` VALUES ('183', null, '1', null, null, null, null, null, null, '2012-02-23 14:29:19', '2012-02-23 14:29:19', null);
INSERT INTO `markah_students` VALUES ('184', null, '1', null, null, null, null, null, null, '2012-02-23 14:29:52', '2012-02-23 14:29:52', null);
INSERT INTO `markah_students` VALUES ('185', null, '1', null, null, null, null, null, null, '2012-02-23 14:33:44', '2012-02-23 14:33:44', null);
INSERT INTO `markah_students` VALUES ('186', null, '1', null, null, null, null, null, null, '2012-02-23 14:34:39', '2012-02-23 14:34:39', null);
INSERT INTO `markah_students` VALUES ('187', null, '1', null, null, null, null, null, null, '2012-02-23 14:36:32', '2012-02-23 14:36:32', null);
INSERT INTO `markah_students` VALUES ('188', null, '1', null, null, null, null, null, null, '2012-02-23 14:37:11', '2012-02-23 14:37:11', null);
INSERT INTO `markah_students` VALUES ('189', null, '1', null, null, null, null, null, null, '2012-02-23 14:38:09', '2012-02-23 14:38:09', null);
INSERT INTO `markah_students` VALUES ('190', null, '1', null, null, null, null, null, null, '2012-02-23 14:38:49', '2012-02-23 14:38:49', null);
INSERT INTO `markah_students` VALUES ('191', null, '1', null, null, null, null, null, null, '2012-02-23 14:39:22', '2012-02-23 14:39:22', null);
INSERT INTO `markah_students` VALUES ('192', null, '1', null, null, null, null, null, null, '2012-02-23 14:39:38', '2012-02-23 14:39:38', null);
INSERT INTO `markah_students` VALUES ('193', null, '1', null, null, null, null, null, null, '2012-02-23 14:41:16', '2012-02-23 14:41:16', null);
INSERT INTO `markah_students` VALUES ('194', null, '1', null, null, null, null, null, null, '2012-02-23 14:44:31', '2012-02-23 14:44:31', null);
INSERT INTO `markah_students` VALUES ('195', null, '1', null, null, null, null, null, null, '2012-02-23 14:44:36', '2012-02-23 14:44:36', null);
INSERT INTO `markah_students` VALUES ('196', null, '1', null, null, null, null, null, null, '2012-02-23 14:45:36', '2012-02-23 14:45:36', null);
INSERT INTO `markah_students` VALUES ('197', null, '1', null, null, null, null, null, null, '2012-02-23 14:46:51', '2012-02-23 14:46:51', null);
INSERT INTO `markah_students` VALUES ('198', null, '1', null, null, null, null, null, null, '2012-02-23 14:47:16', '2012-02-23 14:47:16', null);
INSERT INTO `markah_students` VALUES ('199', null, '1', null, null, null, null, null, null, '2012-02-23 14:47:25', '2012-02-23 14:47:25', null);
INSERT INTO `markah_students` VALUES ('200', null, '1', null, null, null, null, null, null, '2012-02-23 14:48:09', '2012-02-23 14:48:09', null);
INSERT INTO `markah_students` VALUES ('201', null, '1', null, null, null, null, null, null, '2012-02-23 14:48:24', '2012-02-23 14:48:24', null);
INSERT INTO `markah_students` VALUES ('202', null, '1', null, null, null, null, null, null, '2012-02-23 14:48:39', '2012-02-23 14:48:39', null);
INSERT INTO `markah_students` VALUES ('203', null, '1', null, null, null, null, null, null, '2012-02-23 14:49:24', '2012-02-23 14:49:24', null);
INSERT INTO `markah_students` VALUES ('204', null, '1', null, null, null, null, null, null, '2012-02-23 14:49:59', '2012-02-23 14:49:59', null);
INSERT INTO `markah_students` VALUES ('205', null, '1', null, null, null, null, null, null, '2012-02-23 14:50:21', '2012-02-23 14:50:21', null);
INSERT INTO `markah_students` VALUES ('206', null, '1', null, null, null, null, null, null, '2012-02-23 14:50:59', '2012-02-23 14:50:59', null);
INSERT INTO `markah_students` VALUES ('207', null, '1', null, null, null, null, null, null, '2012-02-23 14:51:12', '2012-02-23 14:51:12', null);
INSERT INTO `markah_students` VALUES ('208', null, '1', null, null, null, null, null, null, '2012-02-23 14:51:58', '2012-02-23 14:51:58', null);
INSERT INTO `markah_students` VALUES ('209', null, '1', null, null, null, null, null, null, '2012-02-23 14:52:37', '2012-02-23 14:52:37', null);
INSERT INTO `markah_students` VALUES ('210', null, '1', null, null, null, null, null, null, '2012-02-23 14:52:57', '2012-02-23 14:52:57', null);
INSERT INTO `markah_students` VALUES ('211', null, '1', null, null, null, null, null, null, '2012-02-23 14:53:27', '2012-02-23 14:53:27', null);
INSERT INTO `markah_students` VALUES ('212', null, '1', null, null, null, null, null, null, '2012-02-23 14:54:26', '2012-02-23 14:54:26', null);
INSERT INTO `markah_students` VALUES ('213', null, '1', null, null, null, null, null, null, '2012-02-23 14:55:29', '2012-02-23 14:55:29', null);
INSERT INTO `markah_students` VALUES ('214', null, '1', null, null, null, null, null, null, '2012-02-23 14:56:21', '2012-02-23 14:56:21', null);
INSERT INTO `markah_students` VALUES ('215', null, '1', null, null, null, null, null, null, '2012-02-23 14:56:46', '2012-02-23 14:56:46', null);
INSERT INTO `markah_students` VALUES ('216', null, '1', null, null, null, null, null, null, '2012-02-23 14:58:22', '2012-02-23 14:58:22', null);
INSERT INTO `markah_students` VALUES ('217', null, '1', null, null, null, null, null, null, '2012-02-23 14:58:49', '2012-02-23 14:58:49', null);
INSERT INTO `markah_students` VALUES ('218', null, '1', null, null, null, null, null, null, '2012-02-23 15:00:40', '2012-02-23 15:00:40', null);
INSERT INTO `markah_students` VALUES ('219', null, '1', null, null, null, null, null, null, '2012-02-23 15:01:06', '2012-02-23 15:01:06', null);
INSERT INTO `markah_students` VALUES ('220', null, '1', null, null, null, null, null, null, '2012-02-23 15:05:06', '2012-02-23 15:05:06', null);
INSERT INTO `markah_students` VALUES ('221', null, '1', null, null, null, null, null, null, '2012-02-23 15:05:41', '2012-02-23 15:05:41', null);
INSERT INTO `markah_students` VALUES ('222', null, '1', null, null, null, null, null, null, '2012-02-23 15:06:02', '2012-02-23 15:06:02', null);
INSERT INTO `markah_students` VALUES ('223', null, '1', null, null, null, null, null, null, '2012-02-23 15:06:18', '2012-02-23 15:06:18', null);
INSERT INTO `markah_students` VALUES ('224', null, '1', null, null, null, null, null, null, '2012-02-23 15:06:34', '2012-02-23 15:06:34', null);
INSERT INTO `markah_students` VALUES ('225', null, '1', null, null, null, null, null, null, '2012-02-23 15:06:41', '2012-02-23 15:06:41', null);
INSERT INTO `markah_students` VALUES ('226', null, '1', null, null, null, null, null, null, '2012-02-23 15:10:02', '2012-02-23 15:10:02', null);
INSERT INTO `markah_students` VALUES ('227', null, '1', null, null, null, null, null, null, '2012-02-23 15:10:12', '2012-02-23 15:10:12', null);
INSERT INTO `markah_students` VALUES ('228', null, '1', null, null, null, null, null, null, '2012-02-23 15:10:42', '2012-02-23 15:10:42', null);
INSERT INTO `markah_students` VALUES ('229', null, '1', null, null, null, null, null, null, '2012-02-23 15:12:27', '2012-02-23 15:12:27', null);
INSERT INTO `markah_students` VALUES ('230', null, '1', null, null, null, null, null, null, '2012-02-23 15:12:39', '2012-02-23 15:12:39', null);
INSERT INTO `markah_students` VALUES ('231', null, '1', null, null, null, null, null, null, '2012-02-23 15:13:09', '2012-02-23 15:13:09', null);
INSERT INTO `markah_students` VALUES ('232', null, '1', null, null, null, null, null, null, '2012-02-23 15:15:40', '2012-02-23 15:15:40', null);
INSERT INTO `markah_students` VALUES ('233', null, '1', null, null, null, null, null, null, '2012-02-23 15:15:47', '2012-02-23 15:15:47', null);
INSERT INTO `markah_students` VALUES ('234', null, '1', null, null, null, null, null, null, '2012-02-23 15:16:09', '2012-02-23 15:16:09', null);
INSERT INTO `markah_students` VALUES ('235', null, '1', null, null, null, null, null, null, '2012-02-23 15:16:39', '2012-02-23 15:16:39', null);
INSERT INTO `markah_students` VALUES ('236', null, '1', null, null, null, null, null, null, '2012-02-23 15:17:10', '2012-02-23 15:17:10', null);
INSERT INTO `markah_students` VALUES ('237', null, '1', null, null, null, null, null, null, '2012-02-23 15:17:45', '2012-02-23 15:17:45', null);
INSERT INTO `markah_students` VALUES ('238', null, '1', null, null, null, null, null, null, '2012-02-23 15:20:32', '2012-02-23 15:20:32', null);
INSERT INTO `markah_students` VALUES ('239', null, '1', null, null, null, null, null, null, '2012-02-23 15:21:22', '2012-02-23 15:21:22', null);
INSERT INTO `markah_students` VALUES ('240', null, '1', null, null, null, null, null, null, '2012-02-23 15:21:30', '2012-02-23 15:21:30', null);
INSERT INTO `markah_students` VALUES ('241', null, '1', null, null, null, null, null, null, '2012-02-23 15:21:39', '2012-02-23 15:21:39', null);
INSERT INTO `markah_students` VALUES ('242', null, '1', null, null, null, null, null, null, '2012-02-23 15:26:24', '2012-02-23 15:26:24', null);
INSERT INTO `markah_students` VALUES ('243', null, '1', null, null, null, null, null, null, '2012-02-23 15:26:35', '2012-02-23 15:26:35', null);
INSERT INTO `markah_students` VALUES ('244', null, '1', null, null, null, null, null, null, '2012-02-23 15:37:39', '2012-02-23 15:37:39', null);
INSERT INTO `markah_students` VALUES ('245', null, '1', null, null, null, null, null, null, '2012-02-23 15:39:04', '2012-02-23 15:39:04', null);
INSERT INTO `markah_students` VALUES ('246', null, '1', null, null, null, null, null, null, '2012-02-23 15:40:18', '2012-02-23 15:40:18', null);
INSERT INTO `markah_students` VALUES ('247', null, '1', null, null, null, null, null, null, '2012-02-23 15:40:29', '2012-02-23 15:40:29', null);
INSERT INTO `markah_students` VALUES ('248', null, '1', null, null, null, null, null, null, '2012-02-23 15:40:59', '2012-02-23 15:40:59', null);
INSERT INTO `markah_students` VALUES ('249', null, '1', null, null, null, null, null, null, '2012-02-23 15:42:04', '2012-02-23 15:42:04', null);
INSERT INTO `markah_students` VALUES ('250', null, '1', null, null, null, null, null, null, '2012-02-23 15:43:22', '2012-02-23 15:43:22', null);
INSERT INTO `markah_students` VALUES ('251', null, '1', null, null, null, null, null, null, '2012-02-23 15:45:24', '2012-02-23 15:45:24', null);
INSERT INTO `markah_students` VALUES ('252', null, '1', null, null, null, null, null, null, '2012-02-23 15:47:50', '2012-02-23 15:47:50', null);
INSERT INTO `markah_students` VALUES ('253', null, '1', null, null, null, null, null, null, '2012-02-23 15:49:37', '2012-02-23 15:49:37', null);
INSERT INTO `markah_students` VALUES ('254', null, '1', null, null, null, null, null, null, '2012-02-23 15:52:48', '2012-02-23 15:52:48', null);
INSERT INTO `markah_students` VALUES ('255', null, '1', null, null, null, null, null, null, '2012-02-23 15:53:56', '2012-02-23 15:53:56', null);
INSERT INTO `markah_students` VALUES ('256', null, '1', null, null, null, null, null, null, '2012-02-23 15:59:10', '2012-02-23 15:59:10', null);
INSERT INTO `markah_students` VALUES ('257', null, '1', null, null, null, null, null, null, '2012-02-23 16:01:49', '2012-02-23 16:01:49', null);
INSERT INTO `markah_students` VALUES ('258', null, '1', null, null, null, null, null, null, '2012-02-23 16:02:12', '2012-02-23 16:02:12', null);
INSERT INTO `markah_students` VALUES ('259', null, '1', null, null, null, null, null, null, '2012-02-23 16:06:34', '2012-02-23 16:06:34', null);
INSERT INTO `markah_students` VALUES ('260', null, '1', null, null, null, null, null, null, '2012-02-23 16:08:38', '2012-02-23 16:08:38', null);
INSERT INTO `markah_students` VALUES ('261', null, '1', null, null, null, null, null, null, '2012-02-23 16:09:42', '2012-02-23 16:09:42', null);
INSERT INTO `markah_students` VALUES ('262', null, '1', null, null, null, null, null, null, '2012-02-23 16:10:51', '2012-02-23 16:10:51', null);
INSERT INTO `markah_students` VALUES ('263', null, '1', null, null, null, null, null, null, '2012-02-23 16:11:53', '2012-02-23 16:11:53', null);
INSERT INTO `markah_students` VALUES ('264', null, '1', null, null, null, null, null, null, '2012-02-23 16:11:56', '2012-02-23 16:11:56', null);
INSERT INTO `markah_students` VALUES ('265', null, '1', null, null, null, null, null, null, '2012-02-23 16:11:59', '2012-02-23 16:11:59', null);
INSERT INTO `markah_students` VALUES ('266', null, '1', null, null, null, null, null, null, '2012-02-23 16:13:05', '2012-02-23 16:13:05', null);
INSERT INTO `markah_students` VALUES ('267', null, '1', null, null, null, null, null, null, '2012-02-23 16:14:28', '2012-02-23 16:14:28', null);
INSERT INTO `markah_students` VALUES ('268', null, '1', null, null, null, null, null, null, '2012-02-23 16:15:24', '2012-02-23 16:15:24', null);
INSERT INTO `markah_students` VALUES ('269', null, '1', null, null, null, null, null, null, '2012-02-23 16:16:16', '2012-02-23 16:16:16', null);
INSERT INTO `markah_students` VALUES ('270', null, '1', null, null, null, null, null, null, '2012-02-23 16:57:29', '2012-02-23 16:57:29', null);
INSERT INTO `markah_students` VALUES ('271', null, '1', null, null, null, null, null, null, '2012-02-23 16:58:39', '2012-02-23 16:58:39', null);
INSERT INTO `markah_students` VALUES ('272', null, '1', null, null, null, null, null, null, '2012-02-23 16:59:35', '2012-02-23 16:59:35', null);
INSERT INTO `markah_students` VALUES ('273', null, '1', null, null, null, null, null, null, '2012-02-23 16:59:41', '2012-02-23 16:59:41', null);
INSERT INTO `markah_students` VALUES ('274', null, '1', null, null, null, null, null, null, '2012-02-23 17:02:39', '2012-02-23 17:02:39', null);
INSERT INTO `markah_students` VALUES ('275', null, '1', null, null, null, null, null, null, '2012-02-23 17:03:58', '2012-02-23 17:03:58', null);
INSERT INTO `markah_students` VALUES ('276', null, '1', null, null, null, null, null, null, '2012-02-23 17:04:14', '2012-02-23 17:04:14', null);
INSERT INTO `markah_students` VALUES ('277', null, '1', null, null, null, null, null, null, '2012-02-23 17:06:23', '2012-02-23 17:06:23', null);
INSERT INTO `markah_students` VALUES ('278', null, '1', null, null, null, null, null, null, '2012-02-23 17:06:30', '2012-02-23 17:06:30', null);
INSERT INTO `markah_students` VALUES ('279', null, '1', null, null, null, null, null, null, '2012-02-23 17:08:28', '2012-02-23 17:08:28', null);
INSERT INTO `markah_students` VALUES ('280', null, '1', null, null, null, null, null, null, '2012-02-23 17:10:08', '2012-02-23 17:10:08', null);
INSERT INTO `markah_students` VALUES ('281', null, '1', null, null, null, null, null, null, '2012-02-23 17:10:37', '2012-02-23 17:10:37', null);
INSERT INTO `markah_students` VALUES ('282', null, '1', null, null, null, null, null, null, '2012-02-23 17:10:43', '2012-02-23 17:10:43', null);
INSERT INTO `markah_students` VALUES ('283', null, '1', null, null, null, null, null, null, '2012-02-23 17:18:12', '2012-02-23 17:18:12', null);
INSERT INTO `markah_students` VALUES ('284', null, '1', null, null, null, null, null, null, '2012-02-23 17:19:08', '2012-02-23 17:19:08', null);
INSERT INTO `markah_students` VALUES ('285', null, '1', null, null, null, null, null, null, '2012-02-23 17:19:38', '2012-02-23 17:19:38', null);
INSERT INTO `markah_students` VALUES ('286', null, '1', null, null, null, null, null, null, '2012-02-23 17:19:45', '2012-02-23 17:19:45', null);
INSERT INTO `markah_students` VALUES ('287', null, '1', null, null, null, null, null, null, '2012-02-23 17:21:20', '2012-02-23 17:21:20', null);
INSERT INTO `markah_students` VALUES ('288', null, '1', null, null, null, null, null, null, '2012-02-23 17:23:10', '2012-02-23 17:23:10', null);
INSERT INTO `markah_students` VALUES ('289', null, '2', null, null, null, null, null, null, '2012-02-23 19:05:17', '2012-02-23 19:05:17', null);
INSERT INTO `markah_students` VALUES ('290', null, '2', null, null, null, null, null, null, '2012-02-23 19:05:26', '2012-02-23 19:05:26', null);
INSERT INTO `markah_students` VALUES ('291', null, '2', null, null, null, null, null, null, '2012-02-23 19:07:20', '2012-02-23 19:07:20', null);
INSERT INTO `markah_students` VALUES ('292', null, '2', null, null, null, null, null, null, '2012-02-23 19:08:03', '2012-02-23 19:08:03', null);
INSERT INTO `markah_students` VALUES ('293', null, '2', null, null, null, null, null, null, '2012-02-23 19:08:48', '2012-02-23 19:08:48', null);
INSERT INTO `markah_students` VALUES ('294', null, '2', null, null, null, null, null, null, '2012-02-23 19:09:34', '2012-02-23 19:09:34', null);
INSERT INTO `markah_students` VALUES ('295', null, '2', null, null, null, null, null, null, '2012-02-23 19:27:22', '2012-02-23 19:27:22', null);
INSERT INTO `markah_students` VALUES ('296', null, '4', null, null, null, null, null, null, '2012-02-24 01:38:40', '2012-02-24 01:38:40', null);
INSERT INTO `markah_students` VALUES ('297', null, '4', null, null, null, null, null, null, '2012-02-24 01:47:03', '2012-02-24 01:47:03', null);
INSERT INTO `markah_students` VALUES ('298', null, '4', null, null, null, null, null, null, '2012-02-24 01:47:17', '2012-02-24 01:47:17', null);
INSERT INTO `markah_students` VALUES ('299', null, '4', null, null, null, null, null, null, '2012-02-24 01:47:27', '2012-02-24 01:47:27', null);
INSERT INTO `markah_students` VALUES ('300', null, '4', null, null, null, null, null, null, '2012-02-24 01:49:17', '2012-02-24 01:49:17', null);
INSERT INTO `markah_students` VALUES ('301', null, '4', null, null, null, null, null, null, '2012-02-24 01:49:24', '2012-02-24 01:49:24', null);
INSERT INTO `markah_students` VALUES ('302', null, '4', null, null, null, null, null, null, '2012-02-24 04:18:30', '2012-02-24 04:18:30', null);
INSERT INTO `markah_students` VALUES ('303', null, '4', null, null, null, null, null, null, '2012-02-24 04:19:10', '2012-02-24 04:19:10', null);
INSERT INTO `markah_students` VALUES ('304', null, '4', null, null, null, null, null, null, '2012-02-24 04:20:08', '2012-02-24 04:20:08', null);
INSERT INTO `markah_students` VALUES ('305', null, '4', null, null, null, null, null, null, '2012-02-24 04:29:07', '2012-02-24 04:29:07', null);
INSERT INTO `markah_students` VALUES ('306', null, '4', null, null, null, null, null, null, '2012-02-24 05:36:03', '2012-02-24 05:36:03', null);
INSERT INTO `markah_students` VALUES ('307', null, '1', null, null, null, null, null, null, '2012-02-24 05:41:59', '2012-02-24 05:41:59', null);
INSERT INTO `markah_students` VALUES ('308', null, '1', null, null, null, null, null, null, '2012-02-24 05:42:08', '2012-02-24 05:42:08', null);
INSERT INTO `markah_students` VALUES ('309', null, '4', null, null, null, null, null, null, '2012-02-24 05:45:08', '2012-02-24 05:45:08', null);
INSERT INTO `markah_students` VALUES ('310', null, '4', null, null, null, null, null, null, '2012-02-24 05:45:19', '2012-02-24 05:45:19', null);
INSERT INTO `markah_students` VALUES ('311', null, '4', null, null, null, null, null, null, '2012-02-24 05:45:28', '2012-02-24 05:45:28', null);
INSERT INTO `markah_students` VALUES ('312', null, '4', null, null, null, null, null, null, '2012-02-24 08:05:20', '2012-02-24 08:05:20', null);
INSERT INTO `markah_students` VALUES ('313', null, '4', null, null, null, null, null, null, '2012-02-24 08:05:30', '2012-02-24 08:05:30', null);
INSERT INTO `markah_students` VALUES ('314', null, '1', null, null, null, null, null, null, '2012-02-24 08:13:51', '2012-02-24 08:13:51', null);
INSERT INTO `markah_students` VALUES ('315', null, '1', null, null, null, null, null, null, '2012-02-24 08:14:01', '2012-02-24 08:14:01', null);
INSERT INTO `markah_students` VALUES ('316', null, '1', null, null, null, null, null, null, '2012-02-28 13:51:51', '2012-02-28 13:51:51', null);
INSERT INTO `markah_students` VALUES ('317', null, '1', null, null, null, null, null, null, '2012-02-28 14:32:20', '2012-02-28 14:32:20', null);
INSERT INTO `markah_students` VALUES ('318', null, '1', null, null, null, null, null, null, '2012-02-28 14:32:30', '2012-02-28 14:32:30', null);
INSERT INTO `markah_students` VALUES ('319', null, '1', null, null, null, null, null, null, '2012-02-28 14:34:14', '2012-02-28 14:34:14', null);
INSERT INTO `markah_students` VALUES ('320', null, '1', null, null, null, null, null, null, '2012-02-28 14:34:47', '2012-02-28 14:34:47', null);
INSERT INTO `markah_students` VALUES ('321', null, '2', null, null, null, null, null, null, '2012-02-28 14:53:01', '2012-02-28 14:53:01', null);
INSERT INTO `markah_students` VALUES ('322', null, '4', null, null, null, null, null, null, '2012-02-28 21:39:16', '2012-02-28 21:39:16', null);
INSERT INTO `markah_students` VALUES ('323', null, '4', null, null, null, null, null, null, '2012-02-28 21:39:26', '2012-02-28 21:39:26', null);
INSERT INTO `markah_students` VALUES ('324', null, '1', null, null, null, null, null, null, '2012-03-01 17:07:48', '2012-03-01 17:07:48', null);
INSERT INTO `markah_students` VALUES ('325', null, '1', null, null, null, null, null, null, '2012-03-01 17:07:58', '2012-03-01 17:07:58', null);
INSERT INTO `markah_students` VALUES ('326', null, '1', null, null, null, null, null, null, '2012-03-01 17:08:45', '2012-03-01 17:08:45', null);
INSERT INTO `markah_students` VALUES ('327', null, '1', null, null, null, null, null, null, '2012-03-01 17:09:00', '2012-03-01 17:09:00', null);
INSERT INTO `markah_students` VALUES ('328', null, '1', null, null, null, null, null, null, '2012-03-01 17:09:11', '2012-03-01 17:09:11', null);
INSERT INTO `markah_students` VALUES ('329', null, '1', null, null, null, null, null, null, '2012-03-01 17:09:55', '2012-03-01 17:09:55', null);
INSERT INTO `markah_students` VALUES ('330', null, '1', null, null, null, null, null, null, '2012-03-01 17:10:02', '2012-03-01 17:10:02', null);
INSERT INTO `markah_students` VALUES ('331', null, '1', null, null, null, null, null, null, '2012-03-01 17:12:39', '2012-03-01 17:12:39', null);
INSERT INTO `markah_students` VALUES ('332', null, '1', null, null, null, null, null, null, '2012-03-01 17:17:43', '2012-03-01 17:17:43', null);
INSERT INTO `markah_students` VALUES ('333', null, '1', null, null, null, null, null, null, '2012-03-01 17:17:53', '2012-03-01 17:17:53', null);
INSERT INTO `markah_students` VALUES ('334', null, '1', null, null, null, null, null, null, '2012-03-01 17:20:51', '2012-03-01 17:20:51', null);
INSERT INTO `markah_students` VALUES ('335', null, '1', null, null, null, null, null, null, '2012-03-01 17:27:35', '2012-03-01 17:27:35', null);
INSERT INTO `markah_students` VALUES ('336', null, '1', null, null, null, null, null, null, '2012-03-01 17:28:11', '2012-03-01 17:28:11', null);
INSERT INTO `markah_students` VALUES ('337', null, '1', null, null, null, null, null, null, '2012-03-01 17:29:22', '2012-03-01 17:29:22', null);
INSERT INTO `markah_students` VALUES ('338', null, '1', null, null, null, null, null, null, '2012-03-01 17:29:33', '2012-03-01 17:29:33', null);
INSERT INTO `markah_students` VALUES ('339', null, '1', null, null, null, null, null, null, '2012-03-01 17:29:50', '2012-03-01 17:29:50', null);
INSERT INTO `markah_students` VALUES ('340', null, '1', null, null, null, null, null, null, '2012-03-01 17:29:59', '2012-03-01 17:29:59', null);
INSERT INTO `markah_students` VALUES ('341', null, '1', null, null, null, null, null, null, '2012-03-01 17:30:12', '2012-03-01 17:30:12', null);
INSERT INTO `markah_students` VALUES ('342', null, '1', null, null, null, null, null, null, '2012-03-01 17:30:21', '2012-03-01 17:30:21', null);
INSERT INTO `markah_students` VALUES ('343', null, '1', null, null, null, null, null, null, '2012-03-01 17:30:33', '2012-03-01 17:30:33', null);
INSERT INTO `markah_students` VALUES ('344', null, '1', null, null, null, null, null, null, '2012-03-01 17:31:33', '2012-03-01 17:31:33', null);
INSERT INTO `markah_students` VALUES ('345', null, '1', null, null, null, null, null, null, '2012-03-01 17:33:20', '2012-03-01 17:33:20', null);
INSERT INTO `markah_students` VALUES ('346', null, '1', null, null, null, null, null, null, '2012-03-01 17:33:28', '2012-03-01 17:33:28', null);
INSERT INTO `markah_students` VALUES ('347', null, '1', null, null, null, null, null, null, '2012-03-01 17:34:29', '2012-03-01 17:34:29', null);
INSERT INTO `markah_students` VALUES ('348', null, '1', null, null, null, null, null, null, '2012-03-01 17:34:37', '2012-03-01 17:34:37', null);
INSERT INTO `markah_students` VALUES ('349', null, '1', null, null, null, null, null, null, '2012-03-01 17:35:38', '2012-03-01 17:35:38', null);
INSERT INTO `markah_students` VALUES ('350', null, '1', null, null, null, null, null, null, '2012-03-01 17:35:46', '2012-03-01 17:35:46', null);
INSERT INTO `markah_students` VALUES ('351', null, '1', null, null, null, null, null, null, '2012-03-01 17:35:53', '2012-03-01 17:35:53', null);
INSERT INTO `markah_students` VALUES ('352', null, '1', null, null, null, null, null, null, '2012-03-01 17:40:14', '2012-03-01 17:40:14', null);
INSERT INTO `markah_students` VALUES ('353', null, '1', null, null, null, null, null, null, '2012-03-01 17:58:21', '2012-03-01 17:58:21', null);
INSERT INTO `markah_students` VALUES ('354', null, '1', null, null, null, null, null, null, '2012-03-01 17:58:50', '2012-03-01 17:58:50', null);
INSERT INTO `markah_students` VALUES ('355', null, '1', null, null, null, null, null, null, '2012-03-01 18:00:40', '2012-03-01 18:00:40', null);
INSERT INTO `markah_students` VALUES ('356', null, '1', null, null, null, null, null, null, '2012-03-01 18:00:48', '2012-03-01 18:00:48', null);
INSERT INTO `markah_students` VALUES ('357', null, '1', null, null, null, null, null, null, '2012-03-01 18:03:03', '2012-03-01 18:03:03', null);
INSERT INTO `markah_students` VALUES ('358', null, '1', null, null, null, null, null, null, '2012-03-01 18:03:10', '2012-03-01 18:03:10', null);
INSERT INTO `markah_students` VALUES ('359', null, '1', null, null, null, null, null, null, '2012-03-01 18:04:06', '2012-03-01 18:04:06', null);
INSERT INTO `markah_students` VALUES ('360', null, '1', null, null, null, null, null, null, '2012-03-01 18:04:21', '2012-03-01 18:04:21', null);
INSERT INTO `markah_students` VALUES ('361', null, '1', null, null, null, null, null, null, '2012-03-01 18:11:17', '2012-03-01 18:11:17', null);
INSERT INTO `markah_students` VALUES ('362', null, '1', null, null, null, null, null, null, '2012-03-01 18:11:24', '2012-03-01 18:11:24', null);
INSERT INTO `markah_students` VALUES ('363', null, '1', null, null, null, null, null, null, '2012-03-01 18:12:02', '2012-03-01 18:12:02', null);
INSERT INTO `markah_students` VALUES ('364', null, '1', null, null, null, null, null, null, '2012-03-01 18:12:09', '2012-03-01 18:12:09', null);
INSERT INTO `markah_students` VALUES ('365', null, '1', null, null, null, null, null, null, '2012-03-01 18:12:17', '2012-03-01 18:12:17', null);
INSERT INTO `markah_students` VALUES ('366', null, '1', null, null, null, null, null, null, '2012-03-01 18:13:29', '2012-03-01 18:13:29', null);
INSERT INTO `markah_students` VALUES ('367', null, '4', null, null, null, null, null, null, '2012-03-01 18:16:31', '2012-03-01 18:16:31', null);
INSERT INTO `markah_students` VALUES ('368', null, '4', null, null, null, null, null, null, '2012-03-01 18:16:41', '2012-03-01 18:16:41', null);
INSERT INTO `markah_students` VALUES ('369', null, '4', null, null, null, null, null, null, '2012-03-01 18:16:49', '2012-03-01 18:16:49', null);
INSERT INTO `markah_students` VALUES ('370', null, '4', null, null, null, null, null, null, '2012-03-01 18:18:33', '2012-03-01 18:18:33', null);
INSERT INTO `markah_students` VALUES ('371', null, '4', null, null, null, null, null, null, '2012-03-01 18:18:41', '2012-03-01 18:18:41', null);
INSERT INTO `markah_students` VALUES ('372', null, '4', null, null, null, null, null, null, '2012-03-01 18:18:48', '2012-03-01 18:18:48', null);
INSERT INTO `markah_students` VALUES ('373', null, '4', null, null, null, null, null, null, '2012-03-01 18:19:32', '2012-03-01 18:19:32', null);
INSERT INTO `markah_students` VALUES ('374', null, '4', null, null, null, null, null, null, '2012-03-01 18:46:07', '2012-03-01 18:46:07', null);
INSERT INTO `markah_students` VALUES ('375', null, '4', null, null, null, null, null, null, '2012-03-01 18:46:18', '2012-03-01 18:46:18', null);
INSERT INTO `markah_students` VALUES ('376', null, '4', null, null, null, null, null, null, '2012-03-01 18:51:17', '2012-03-01 18:51:17', null);
INSERT INTO `markah_students` VALUES ('377', null, '4', null, null, null, null, null, null, '2012-03-01 18:51:18', '2012-03-01 18:51:18', null);
INSERT INTO `markah_students` VALUES ('378', null, '4', null, null, null, null, null, null, '2012-03-01 18:51:26', '2012-03-01 18:51:26', null);
INSERT INTO `markah_students` VALUES ('379', null, '4', null, null, null, null, null, null, '2012-03-01 18:52:28', '2012-03-01 18:52:28', null);
INSERT INTO `markah_students` VALUES ('380', null, '4', null, null, null, null, null, null, '2012-03-01 18:52:35', '2012-03-01 18:52:35', null);
INSERT INTO `markah_students` VALUES ('381', null, '4', null, null, null, null, null, null, '2012-03-01 19:02:38', '2012-03-01 19:02:38', null);
INSERT INTO `markah_students` VALUES ('382', null, '4', null, null, null, null, null, null, '2012-03-01 19:02:45', '2012-03-01 19:02:45', null);
INSERT INTO `markah_students` VALUES ('383', null, '4', null, null, null, null, null, null, '2012-03-02 00:58:12', '2012-03-02 00:58:12', null);
INSERT INTO `markah_students` VALUES ('384', null, '4', null, null, null, null, null, null, '2012-03-02 00:58:20', '2012-03-02 00:58:20', null);
INSERT INTO `markah_students` VALUES ('385', null, '4', null, null, null, null, null, null, '2012-03-02 00:59:46', '2012-03-02 00:59:46', null);
INSERT INTO `markah_students` VALUES ('386', null, '4', null, null, null, null, null, null, '2012-03-02 00:59:54', '2012-03-02 00:59:54', null);
INSERT INTO `markah_students` VALUES ('387', null, '4', null, null, null, null, null, null, '2012-03-02 01:08:21', '2012-03-02 01:08:21', null);
INSERT INTO `markah_students` VALUES ('388', null, '4', null, null, null, null, null, null, '2012-03-02 01:23:34', '2012-03-02 01:23:34', null);
INSERT INTO `markah_students` VALUES ('389', null, '4', null, null, null, null, null, null, '2012-03-02 01:29:21', '2012-03-02 01:29:21', null);
INSERT INTO `markah_students` VALUES ('390', null, '4', null, null, null, null, null, null, '2012-03-02 01:29:55', '2012-03-02 01:29:55', null);
INSERT INTO `markah_students` VALUES ('391', null, '4', null, null, null, null, null, null, '2012-03-02 01:30:05', '2012-03-02 01:30:05', null);
INSERT INTO `markah_students` VALUES ('392', null, '4', null, null, null, null, null, null, '2012-03-02 01:30:13', '2012-03-02 01:30:13', null);
INSERT INTO `markah_students` VALUES ('393', null, '4', null, null, null, null, null, null, '2012-03-02 01:31:06', '2012-03-02 01:31:06', null);
INSERT INTO `markah_students` VALUES ('394', null, '4', null, null, null, null, null, null, '2012-03-02 01:31:14', '2012-03-02 01:31:14', null);
INSERT INTO `markah_students` VALUES ('395', null, '4', null, null, null, null, null, null, '2012-03-02 01:33:08', '2012-03-02 01:33:08', null);
INSERT INTO `markah_students` VALUES ('396', null, '4', null, null, null, null, null, null, '2012-03-02 01:57:39', '2012-03-02 01:57:39', null);
INSERT INTO `markah_students` VALUES ('397', null, '4', null, null, null, null, null, null, '2012-03-02 01:58:09', '2012-03-02 01:58:09', null);
INSERT INTO `markah_students` VALUES ('398', null, '4', null, null, null, null, null, null, '2012-03-02 02:05:05', '2012-03-02 02:05:05', null);
INSERT INTO `markah_students` VALUES ('399', null, '4', null, null, null, null, null, null, '2012-03-02 02:06:37', '2012-03-02 02:06:37', null);
INSERT INTO `markah_students` VALUES ('400', null, '4', null, null, null, null, null, null, '2012-03-02 02:38:09', '2012-03-02 02:38:09', null);
INSERT INTO `markah_students` VALUES ('401', null, '4', null, null, null, null, null, null, '2012-03-02 02:38:13', '2012-03-02 02:38:13', null);
INSERT INTO `markah_students` VALUES ('402', null, '4', null, null, null, null, null, null, '2012-03-02 02:38:24', '2012-03-02 02:38:24', null);
INSERT INTO `markah_students` VALUES ('403', null, '4', null, null, null, null, null, null, '2012-03-02 02:38:31', '2012-03-02 02:38:31', null);
INSERT INTO `markah_students` VALUES ('404', null, '4', null, null, null, null, null, null, '2012-03-02 02:49:23', '2012-03-02 02:49:23', null);
INSERT INTO `markah_students` VALUES ('405', null, '4', null, null, null, null, null, null, '2012-03-02 02:57:28', '2012-03-02 02:57:28', null);
INSERT INTO `markah_students` VALUES ('406', null, '4', null, null, null, null, null, null, '2012-03-02 03:49:37', '2012-03-02 03:49:37', null);
INSERT INTO `markah_students` VALUES ('407', null, '4', null, null, null, null, null, null, '2012-03-03 21:58:23', '2012-03-03 21:58:23', null);
INSERT INTO `markah_students` VALUES ('408', null, '4', null, null, null, null, null, null, '2012-03-03 21:58:43', '2012-03-03 21:58:43', null);
INSERT INTO `markah_students` VALUES ('409', null, '4', null, null, null, null, null, null, '2012-03-03 21:59:27', '2012-03-03 21:59:27', null);
INSERT INTO `markah_students` VALUES ('410', null, '4', null, null, null, null, null, null, '2012-03-03 22:02:07', '2012-03-03 22:02:07', null);
INSERT INTO `markah_students` VALUES ('411', null, '4', null, null, null, null, null, null, '2012-03-03 22:06:58', '2012-03-03 22:06:58', null);
INSERT INTO `markah_students` VALUES ('412', null, '4', null, null, null, null, null, null, '2012-03-03 22:07:08', '2012-03-03 22:07:08', null);
INSERT INTO `markah_students` VALUES ('413', null, '4', null, null, null, null, null, null, '2012-03-03 22:07:35', '2012-03-03 22:07:35', null);
INSERT INTO `markah_students` VALUES ('414', null, '4', null, null, null, null, null, null, '2012-03-03 22:07:48', '2012-03-03 22:07:48', null);
INSERT INTO `markah_students` VALUES ('415', null, '4', null, null, null, null, null, null, '2012-03-03 22:14:36', '2012-03-03 22:14:36', null);
INSERT INTO `markah_students` VALUES ('416', null, '4', null, null, null, null, null, null, '2012-03-03 22:14:52', '2012-03-03 22:14:52', null);
INSERT INTO `markah_students` VALUES ('417', null, '4', null, null, null, null, null, null, '2012-03-03 22:22:24', '2012-03-03 22:22:24', null);
INSERT INTO `markah_students` VALUES ('418', null, '4', null, null, null, null, null, null, '2012-03-03 22:27:10', '2012-03-03 22:27:10', null);
INSERT INTO `markah_students` VALUES ('419', null, '4', null, null, null, null, null, null, '2012-03-03 22:33:08', '2012-03-03 22:33:08', null);
INSERT INTO `markah_students` VALUES ('420', null, '4', null, null, null, null, null, null, '2012-03-03 22:33:58', '2012-03-03 22:33:58', null);
INSERT INTO `markah_students` VALUES ('421', null, '4', null, null, null, null, null, null, '2012-03-03 22:34:08', '2012-03-03 22:34:08', null);
INSERT INTO `markah_students` VALUES ('422', null, '4', null, null, null, null, null, null, '2012-03-03 22:35:21', '2012-03-03 22:35:21', null);
INSERT INTO `markah_students` VALUES ('423', null, '4', null, null, null, null, null, null, '2012-03-03 22:35:44', '2012-03-03 22:35:44', null);
INSERT INTO `markah_students` VALUES ('424', null, '4', null, null, null, null, null, null, '2012-03-03 22:36:17', '2012-03-03 22:36:17', null);
INSERT INTO `markah_students` VALUES ('425', null, '4', null, null, null, null, null, null, '2012-03-03 22:36:25', '2012-03-03 22:36:25', null);

-- ----------------------------
-- Table structure for `numbers`
-- ----------------------------
DROP TABLE IF EXISTS `numbers`;
CREATE TABLE `numbers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of numbers
-- ----------------------------
INSERT INTO `numbers` VALUES ('1', '1', '2012-02-11 13:39:24', '2012-02-11 13:39:24');
INSERT INTO `numbers` VALUES ('2', '2', '2012-02-11 13:39:47', '2012-02-11 13:39:47');
INSERT INTO `numbers` VALUES ('3', '3', '2012-02-11 13:40:21', '2012-02-11 13:40:21');
INSERT INTO `numbers` VALUES ('4', '4', '2012-02-11 13:41:10', '2012-02-11 13:41:10');
INSERT INTO `numbers` VALUES ('5', '5', '2012-02-11 13:41:49', '2012-02-11 13:41:49');
INSERT INTO `numbers` VALUES ('6', '6', '2012-02-11 13:42:16', '2012-02-11 13:42:16');
INSERT INTO `numbers` VALUES ('7', '7', '2012-02-11 13:42:41', '2012-02-11 13:42:41');
INSERT INTO `numbers` VALUES ('8', '8', '2012-02-11 13:44:04', '2012-02-11 13:44:04');
INSERT INTO `numbers` VALUES ('9', '9', '2012-02-11 13:44:41', '2012-02-11 13:44:41');
INSERT INTO `numbers` VALUES ('10', '10', '2012-02-11 13:45:07', '2012-02-11 13:45:07');
INSERT INTO `numbers` VALUES ('11', '', '2012-02-14 14:36:47', '2012-02-14 14:36:47');

-- ----------------------------
-- Table structure for `plannings`
-- ----------------------------
DROP TABLE IF EXISTS `plannings`;
CREATE TABLE `plannings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of plannings
-- ----------------------------
INSERT INTO `plannings` VALUES ('1', 'I manage time and priorities.', '2012-03-12 22:58:45', '2012-03-12 22:58:45');
INSERT INTO `plannings` VALUES ('2', 'I am a resourceful person.', '2012-03-12 22:59:06', '2012-03-12 22:59:06');
INSERT INTO `plannings` VALUES ('3', 'I can allocate people and other resources to tasks.', '2012-03-12 22:59:35', '2012-03-12 22:59:35');
INSERT INTO `plannings` VALUES ('4', 'I am not able to collect, analyze and organize information.', '2012-03-12 22:59:59', '2012-03-12 22:59:59');

-- ----------------------------
-- Table structure for `programs`
-- ----------------------------
DROP TABLE IF EXISTS `programs`;
CREATE TABLE `programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of programs
-- ----------------------------
INSERT INTO `programs` VALUES ('1', 'Degree', '2012-02-11 13:54:41', '2012-02-11 13:54:41');
INSERT INTO `programs` VALUES ('2', 'Diploma', '2012-02-11 13:55:21', '2012-02-11 13:55:21');

-- ----------------------------
-- Table structure for `prog_codes`
-- ----------------------------
DROP TABLE IF EXISTS `prog_codes`;
CREATE TABLE `prog_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of prog_codes
-- ----------------------------
INSERT INTO `prog_codes` VALUES ('1', 'CS220', '2012-02-11 17:22:58', '2012-02-11 17:22:58');
INSERT INTO `prog_codes` VALUES ('2', 'CS221', '2012-02-11 17:23:24', '2012-02-11 17:23:24');
INSERT INTO `prog_codes` VALUES ('3', 'CS222', '2012-02-11 17:23:50', '2012-02-11 17:23:50');
INSERT INTO `prog_codes` VALUES ('4', 'CS223', '2012-02-11 17:24:17', '2012-02-11 17:24:17');
INSERT INTO `prog_codes` VALUES ('5', 'CS224', '2012-02-11 17:24:44', '2012-02-11 17:24:44');
INSERT INTO `prog_codes` VALUES ('6', 'CS225', '2012-02-11 17:25:09', '2012-02-11 17:25:09');
INSERT INTO `prog_codes` VALUES ('7', ' CS226', '2012-02-11 17:25:37', '2012-02-11 17:25:37');
INSERT INTO `prog_codes` VALUES ('8', 'CS227', '2012-02-11 17:26:03', '2012-02-11 17:26:03');
INSERT INTO `prog_codes` VALUES ('9', 'CS228', '2012-02-11 17:26:30', '2012-02-11 17:26:30');
INSERT INTO `prog_codes` VALUES ('10', 'CS229', '2012-02-11 17:26:56', '2012-02-11 17:26:56');
INSERT INTO `prog_codes` VALUES ('11', 'CS230', '2012-02-11 17:27:22', '2012-02-11 17:27:22');
INSERT INTO `prog_codes` VALUES ('12', 'CS231', '2012-02-11 17:28:01', '2012-02-11 17:28:01');
INSERT INTO `prog_codes` VALUES ('13', 'CS233', '2012-02-11 17:28:30', '2012-02-11 17:28:30');
INSERT INTO `prog_codes` VALUES ('14', 'CS110', '2012-02-11 17:29:07', '2012-02-11 17:29:07');
INSERT INTO `prog_codes` VALUES ('15', 'CS111', '2012-02-11 17:29:37', '2012-02-11 17:29:37');
INSERT INTO `prog_codes` VALUES ('16', 'CS112', '2012-02-11 17:30:05', '2012-02-11 17:30:05');
INSERT INTO `prog_codes` VALUES ('17', 'CS113', '2012-02-11 17:30:33', '2012-02-11 17:30:33');
INSERT INTO `prog_codes` VALUES ('18', '', '2012-02-14 12:51:44', '2012-02-14 12:51:44');

-- ----------------------------
-- Table structure for `prog_names`
-- ----------------------------
DROP TABLE IF EXISTS `prog_names`;
CREATE TABLE `prog_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of prog_names
-- ----------------------------
INSERT INTO `prog_names` VALUES ('1', 'Diploma in Computer Science', '2012-02-11 13:21:12', '2012-02-11 13:21:12');
INSERT INTO `prog_names` VALUES ('2', 'Diploma in Statistics', '2012-02-11 13:21:39', '2012-02-11 13:21:39');
INSERT INTO `prog_names` VALUES ('3', 'Diploma in Actuarial Science', '2012-02-11 13:22:09', '2012-02-11 13:22:09');
INSERT INTO `prog_names` VALUES ('4', 'Diploma in Quantitative Science', '2012-02-11 13:22:33', '2012-02-11 13:22:59');
INSERT INTO `prog_names` VALUES ('5', 'Bachelor of Science (Hons) (Information Technology)', '2012-02-11 13:23:41', '2012-02-11 13:23:41');
INSERT INTO `prog_names` VALUES ('6', 'Bachelor of Science (Hons) (Statistics)', '2012-02-11 13:24:09', '2012-02-11 13:24:09');
INSERT INTO `prog_names` VALUES ('7', 'Bachelor of Science (Hons) (Actuarial Science)', '2012-02-11 13:24:39', '2012-02-11 13:24:39');
INSERT INTO `prog_names` VALUES ('8', 'Bachelor of Science (Hons) (Intelligent System)', '2012-02-11 13:25:02', '2012-02-11 13:25:02');
INSERT INTO `prog_names` VALUES ('9', 'Bachelor of Science (Hons) (Business Computing)', '2012-02-11 13:25:26', '2012-02-11 13:25:26');
INSERT INTO `prog_names` VALUES ('10', 'Bachelor of Science (Hons) (Data Communication & Networking)', '2012-02-11 13:25:54', '2012-02-11 13:25:54');
INSERT INTO `prog_names` VALUES ('11', 'Bachelor of Science (Hons) (Information System Engineering)', '2012-02-11 13:26:25', '2012-02-11 13:26:25');
INSERT INTO `prog_names` VALUES ('12', 'Bachelor of Science (Hons) (Computational Mathematics)', '2012-02-11 13:26:54', '2012-02-11 13:26:54');
INSERT INTO `prog_names` VALUES ('13', 'Bachelor of Science (Hons) (Management Mathematics)', '2012-02-11 13:27:18', '2012-02-11 13:27:18');
INSERT INTO `prog_names` VALUES ('14', 'Bachelor of Science (Hons) (Mathematics)', '2012-02-11 13:27:44', '2012-02-11 13:27:44');
INSERT INTO `prog_names` VALUES ('15', 'Bachelor of Computer Science (Hons)', '2012-02-11 13:28:12', '2012-02-11 13:28:12');
INSERT INTO `prog_names` VALUES ('16', 'Bachelor of Science (Hons) (Netcentric Computing)', '2012-02-11 13:28:39', '2012-02-11 13:28:39');
INSERT INTO `prog_names` VALUES ('17', 'Bachelor of Computer Science (Hons) (Multimedia Computing) ', '2012-02-11 13:29:05', '2012-02-11 13:29:05');
INSERT INTO `prog_names` VALUES ('18', '', '2012-02-14 12:49:31', '2012-02-14 12:49:31');

-- ----------------------------
-- Table structure for `p_attributes`
-- ----------------------------
DROP TABLE IF EXISTS `p_attributes`;
CREATE TABLE `p_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of p_attributes
-- ----------------------------
INSERT INTO `p_attributes` VALUES ('1', 'I am a faithful person.', '2012-03-12 21:51:30', '2012-03-12 21:51:30');
INSERT INTO `p_attributes` VALUES ('2', 'I cannot cope under pressure.', '2012-03-12 21:51:55', '2012-03-12 21:51:55');
INSERT INTO `p_attributes` VALUES ('3', 'I have a sense of humor.', '2012-03-12 21:52:18', '2012-03-12 21:52:18');
INSERT INTO `p_attributes` VALUES ('4', 'I am an honest and reliable person.', '2012-03-12 21:52:45', '2012-03-12 21:52:45');
INSERT INTO `p_attributes` VALUES ('5', 'I cannot adapt well to changes.', '2012-03-12 21:53:32', '2012-03-12 21:53:32');
INSERT INTO `p_attributes` VALUES ('6', 'I can manage time effectively.   ', '2012-03-12 21:53:57', '2012-03-12 21:53:57');
INSERT INTO `p_attributes` VALUES ('7', 'I have a high self respect of myself.  ', '2012-03-12 21:54:29', '2012-03-12 21:54:29');
INSERT INTO `p_attributes` VALUES ('8', 'I am a dependable person.  ', '2012-03-12 21:54:51', '2012-03-12 21:54:51');
INSERT INTO `p_attributes` VALUES ('9', 'I am not a committed person.', '2012-03-12 21:55:14', '2012-03-12 21:55:14');
INSERT INTO `p_attributes` VALUES ('10', 'I am a self-motivated person.', '2012-03-12 21:55:37', '2012-03-12 21:55:37');
INSERT INTO `p_attributes` VALUES ('11', 'I am a practical and logical person.', '2012-03-12 21:56:03', '2012-03-12 21:56:03');
INSERT INTO `p_attributes` VALUES ('12', 'I am an enthusiastic person.', '2012-03-12 21:56:27', '2012-03-12 21:56:27');
INSERT INTO `p_attributes` VALUES ('13', 'I am a flexible person.', '2012-03-12 21:56:46', '2012-03-12 21:56:46');
INSERT INTO `p_attributes` VALUES ('14', 'I am not a punctual person.', '2012-03-12 21:57:09', '2012-03-12 21:57:09');
INSERT INTO `p_attributes` VALUES ('15', 'I cannot present myself appropriately (It includes my physical presentation, personal hygiene, how I speak, get along with others and deal with issues that come up in any situations). ', '2012-03-12 21:57:37', '2012-03-12 21:57:37');

-- ----------------------------
-- Table structure for `p_solvings`
-- ----------------------------
DROP TABLE IF EXISTS `p_solvings`;
CREATE TABLE `p_solvings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of p_solvings
-- ----------------------------
INSERT INTO `p_solvings` VALUES ('1', 'Identify the source of a problem.', '2012-03-12 22:53:21', '2012-03-12 22:53:21');
INSERT INTO `p_solvings` VALUES ('2', 'I am innovative in exploring possible solutions.', '2012-03-12 22:53:43', '2012-03-12 22:53:43');
INSERT INTO `p_solvings` VALUES ('3', 'I implement solutions', '2012-03-12 22:54:06', '2012-03-12 22:54:06');
INSERT INTO `p_solvings` VALUES ('4', 'I apply a range of strategies to problem solving.', '2012-03-12 22:54:26', '2012-03-12 22:54:26');
INSERT INTO `p_solvings` VALUES ('5', 'I cannot solve problems in teams.', '2012-03-12 22:54:48', '2012-03-12 22:54:48');
INSERT INTO `p_solvings` VALUES ('6', 'I develop practical solutions to problem solving.', '2012-03-12 22:55:11', '2012-03-12 22:55:11');

-- ----------------------------
-- Table structure for `relationships`
-- ----------------------------
DROP TABLE IF EXISTS `relationships`;
CREATE TABLE `relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of relationships
-- ----------------------------
INSERT INTO `relationships` VALUES ('1', 'Siblings', '2012-02-11 16:30:49', '2012-02-11 16:30:49');
INSERT INTO `relationships` VALUES ('2', 'Parents', '2012-02-11 16:31:56', '2012-02-11 16:31:56');
INSERT INTO `relationships` VALUES ('3', 'Relatives', '2012-02-11 16:32:30', '2012-02-11 16:32:30');
INSERT INTO `relationships` VALUES ('4', '', '2012-02-14 12:53:46', '2012-02-14 12:53:46');

-- ----------------------------
-- Table structure for `requirements`
-- ----------------------------
DROP TABLE IF EXISTS `requirements`;
CREATE TABLE `requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `adv_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of requirements
-- ----------------------------
INSERT INTO `requirements` VALUES ('4', 'Good Communication Skills', '2012-02-12 15:00:52', '2012-02-12 15:00:52', null, '19');
INSERT INTO `requirements` VALUES ('5', 'Independents', '2012-02-12 15:01:18', '2012-02-12 15:01:18', null, '19');
INSERT INTO `requirements` VALUES ('6', '-Hardworking', '2012-02-24 01:19:51', '2012-02-24 01:19:51', null, '34');
INSERT INTO `requirements` VALUES ('7', 'Good Attitude', '2012-02-24 01:20:20', '2012-02-24 01:20:20', null, '34');
INSERT INTO `requirements` VALUES ('8', '-Honest', '2012-02-24 01:21:06', '2012-02-24 01:21:06', null, '34');
INSERT INTO `requirements` VALUES ('9', '-Hardworking', '2012-02-24 07:31:53', '2012-02-24 07:31:53', null, '38');
INSERT INTO `requirements` VALUES ('10', 'Good Attitude', '2012-02-24 07:32:14', '2012-02-24 07:32:14', null, '38');
INSERT INTO `requirements` VALUES ('11', 'Eager to learn', '2012-03-06 19:36:51', '2012-03-06 19:36:51', null, '39');
INSERT INTO `requirements` VALUES ('12', 'Hardworking', '2012-03-06 19:37:17', '2012-03-06 19:37:17', null, '39');
INSERT INTO `requirements` VALUES ('13', 'Good Attitude', '2012-03-08 04:34:19', '2012-03-08 04:34:19', null, '42');
INSERT INTO `requirements` VALUES ('14', 'good communication skill', '2012-04-21 02:08:53', '2012-04-21 02:08:53', null, '48');

-- ----------------------------
-- Table structure for `results`
-- ----------------------------
DROP TABLE IF EXISTS `results`;
CREATE TABLE `results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of results
-- ----------------------------

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'student', '2012-02-07 21:16:59', '2012-02-07 21:16:59');
INSERT INTO `roles` VALUES ('2', 'company', '2012-02-07 21:17:16', '2012-02-07 21:17:16');
INSERT INTO `roles` VALUES ('3', 'staff', '2012-02-07 21:17:31', '2012-02-07 21:17:31');

-- ----------------------------
-- Table structure for `schema_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
INSERT INTO `schema_migrations` VALUES ('20120207183710');
INSERT INTO `schema_migrations` VALUES ('20120207183944');
INSERT INTO `schema_migrations` VALUES ('20120207184206');
INSERT INTO `schema_migrations` VALUES ('20120207184408');
INSERT INTO `schema_migrations` VALUES ('20120207184556');
INSERT INTO `schema_migrations` VALUES ('20120207184732');
INSERT INTO `schema_migrations` VALUES ('20120207185026');
INSERT INTO `schema_migrations` VALUES ('20120207185236');
INSERT INTO `schema_migrations` VALUES ('20120207185407');
INSERT INTO `schema_migrations` VALUES ('20120207185720');
INSERT INTO `schema_migrations` VALUES ('20120207190012');
INSERT INTO `schema_migrations` VALUES ('20120207190222');
INSERT INTO `schema_migrations` VALUES ('20120207190432');
INSERT INTO `schema_migrations` VALUES ('20120207193842');
INSERT INTO `schema_migrations` VALUES ('20120207194433');
INSERT INTO `schema_migrations` VALUES ('20120207195450');
INSERT INTO `schema_migrations` VALUES ('20120207195921');
INSERT INTO `schema_migrations` VALUES ('20120207200145');
INSERT INTO `schema_migrations` VALUES ('20120207200411');
INSERT INTO `schema_migrations` VALUES ('20120207200754');
INSERT INTO `schema_migrations` VALUES ('20120207201233');
INSERT INTO `schema_migrations` VALUES ('20120207201456');
INSERT INTO `schema_migrations` VALUES ('20120207201726');
INSERT INTO `schema_migrations` VALUES ('20120207202129');
INSERT INTO `schema_migrations` VALUES ('20120207202458');
INSERT INTO `schema_migrations` VALUES ('20120207202947');
INSERT INTO `schema_migrations` VALUES ('20120207203532');
INSERT INTO `schema_migrations` VALUES ('20120207203834');
INSERT INTO `schema_migrations` VALUES ('20120207204235');
INSERT INTO `schema_migrations` VALUES ('20120207214122');
INSERT INTO `schema_migrations` VALUES ('20120207222203');
INSERT INTO `schema_migrations` VALUES ('20120208081601');
INSERT INTO `schema_migrations` VALUES ('20120208082251');
INSERT INTO `schema_migrations` VALUES ('20120208170805');
INSERT INTO `schema_migrations` VALUES ('20120209071104');
INSERT INTO `schema_migrations` VALUES ('20120209071236');
INSERT INTO `schema_migrations` VALUES ('20120209071416');
INSERT INTO `schema_migrations` VALUES ('20120210034500');
INSERT INTO `schema_migrations` VALUES ('20120211052711');
INSERT INTO `schema_migrations` VALUES ('20120211061124');
INSERT INTO `schema_migrations` VALUES ('20120211061506');
INSERT INTO `schema_migrations` VALUES ('20120211062934');
INSERT INTO `schema_migrations` VALUES ('20120211063241');
INSERT INTO `schema_migrations` VALUES ('20120211063805');
INSERT INTO `schema_migrations` VALUES ('20120211064136');
INSERT INTO `schema_migrations` VALUES ('20120211064553');
INSERT INTO `schema_migrations` VALUES ('20120211080142');
INSERT INTO `schema_migrations` VALUES ('20120211080552');
INSERT INTO `schema_migrations` VALUES ('20120211142150');
INSERT INTO `schema_migrations` VALUES ('20120211143211');
INSERT INTO `schema_migrations` VALUES ('20120211144015');
INSERT INTO `schema_migrations` VALUES ('20120211145622');
INSERT INTO `schema_migrations` VALUES ('20120211175302');
INSERT INTO `schema_migrations` VALUES ('20120211182957');
INSERT INTO `schema_migrations` VALUES ('20120211183853');
INSERT INTO `schema_migrations` VALUES ('20120211200839');
INSERT INTO `schema_migrations` VALUES ('20120212122043');
INSERT INTO `schema_migrations` VALUES ('20120212122453');
INSERT INTO `schema_migrations` VALUES ('20120212123055');
INSERT INTO `schema_migrations` VALUES ('20120212130340');
INSERT INTO `schema_migrations` VALUES ('20120212132315');
INSERT INTO `schema_migrations` VALUES ('20120212134726');
INSERT INTO `schema_migrations` VALUES ('20120212144254');
INSERT INTO `schema_migrations` VALUES ('20120212190126');
INSERT INTO `schema_migrations` VALUES ('20120212191152');
INSERT INTO `schema_migrations` VALUES ('20120214233719');
INSERT INTO `schema_migrations` VALUES ('20120215012213');
INSERT INTO `schema_migrations` VALUES ('20120215012655');
INSERT INTO `schema_migrations` VALUES ('20120215062158');
INSERT INTO `schema_migrations` VALUES ('20120215062829');
INSERT INTO `schema_migrations` VALUES ('20120216185921');
INSERT INTO `schema_migrations` VALUES ('20120216190846');
INSERT INTO `schema_migrations` VALUES ('20120216191149');
INSERT INTO `schema_migrations` VALUES ('20120216191452');
INSERT INTO `schema_migrations` VALUES ('20120216200130');
INSERT INTO `schema_migrations` VALUES ('20120220203802');
INSERT INTO `schema_migrations` VALUES ('20120221012817');
INSERT INTO `schema_migrations` VALUES ('20120221130909');
INSERT INTO `schema_migrations` VALUES ('20120221144534');
INSERT INTO `schema_migrations` VALUES ('20120222144139');
INSERT INTO `schema_migrations` VALUES ('20120222145304');
INSERT INTO `schema_migrations` VALUES ('20120222145855');
INSERT INTO `schema_migrations` VALUES ('20120222183614');
INSERT INTO `schema_migrations` VALUES ('20120222185630');
INSERT INTO `schema_migrations` VALUES ('20120223022236');
INSERT INTO `schema_migrations` VALUES ('20120223062030');
INSERT INTO `schema_migrations` VALUES ('20120223131332');
INSERT INTO `schema_migrations` VALUES ('20120223141041');
INSERT INTO `schema_migrations` VALUES ('20120229030422');
INSERT INTO `schema_migrations` VALUES ('20120312214415');
INSERT INTO `schema_migrations` VALUES ('20120312215935');
INSERT INTO `schema_migrations` VALUES ('20120312220321');
INSERT INTO `schema_migrations` VALUES ('20120312220744');
INSERT INTO `schema_migrations` VALUES ('20120312221039');
INSERT INTO `schema_migrations` VALUES ('20120312221213');
INSERT INTO `schema_migrations` VALUES ('20120312221444');
INSERT INTO `schema_migrations` VALUES ('20120312221716');
INSERT INTO `schema_migrations` VALUES ('20120312221914');
INSERT INTO `schema_migrations` VALUES ('20120312222144');
INSERT INTO `schema_migrations` VALUES ('20120312222447');
INSERT INTO `schema_migrations` VALUES ('20120312232619');
INSERT INTO `schema_migrations` VALUES ('20120313000036');
INSERT INTO `schema_migrations` VALUES ('20120313022607');
INSERT INTO `schema_migrations` VALUES ('20120313022957');
INSERT INTO `schema_migrations` VALUES ('20120313025957');
INSERT INTO `schema_migrations` VALUES ('20120313032244');
INSERT INTO `schema_migrations` VALUES ('20120313032729');
INSERT INTO `schema_migrations` VALUES ('20120313033013');
INSERT INTO `schema_migrations` VALUES ('20120313033230');
INSERT INTO `schema_migrations` VALUES ('20120313033430');
INSERT INTO `schema_migrations` VALUES ('20120313033627');
INSERT INTO `schema_migrations` VALUES ('20120313033901');
INSERT INTO `schema_migrations` VALUES ('20120313034104');
INSERT INTO `schema_migrations` VALUES ('20120313034324');
INSERT INTO `schema_migrations` VALUES ('20120313044415');
INSERT INTO `schema_migrations` VALUES ('20120313051304');
INSERT INTO `schema_migrations` VALUES ('20120313135704');
INSERT INTO `schema_migrations` VALUES ('20120315105506');

-- ----------------------------
-- Table structure for `section_bs`
-- ----------------------------
DROP TABLE IF EXISTS `section_bs`;
CREATE TABLE `section_bs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pa_1` int(11) DEFAULT NULL,
  `pa_2` int(11) DEFAULT NULL,
  `pa_3` int(11) DEFAULT NULL,
  `pa_4` int(11) DEFAULT NULL,
  `pa_5` int(11) DEFAULT NULL,
  `pa_6` int(11) DEFAULT NULL,
  `pa_7` int(11) DEFAULT NULL,
  `pa_8` int(11) DEFAULT NULL,
  `pa_9` int(11) DEFAULT NULL,
  `pa_10` int(11) DEFAULT NULL,
  `pa_11` int(11) DEFAULT NULL,
  `pa_12` int(11) DEFAULT NULL,
  `pa_13` int(11) DEFAULT NULL,
  `pa_14` int(11) DEFAULT NULL,
  `pa_15` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of section_bs
-- ----------------------------
INSERT INTO `section_bs` VALUES ('1', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2012-03-13 14:11:25', '2012-03-13 14:11:25');

-- ----------------------------
-- Table structure for `section_bs_zzz`
-- ----------------------------
DROP TABLE IF EXISTS `section_bs_zzz`;
CREATE TABLE `section_bs_zzz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_attribute_id` int(11) DEFAULT NULL,
  `agree_level_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of section_bs_zzz
-- ----------------------------

-- ----------------------------
-- Table structure for `section_c1s`
-- ----------------------------
DROP TABLE IF EXISTS `section_c1s`;
CREATE TABLE `section_c1s` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_skill_id` int(11) DEFAULT NULL,
  `agree_level_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of section_c1s
-- ----------------------------

-- ----------------------------
-- Table structure for `section_c2s`
-- ----------------------------
DROP TABLE IF EXISTS `section_c2s`;
CREATE TABLE `section_c2s` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_skill_id` int(11) DEFAULT NULL,
  `agree_level_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of section_c2s
-- ----------------------------

-- ----------------------------
-- Table structure for `section_c3s`
-- ----------------------------
DROP TABLE IF EXISTS `section_c3s`;
CREATE TABLE `section_c3s` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_solving_id` int(11) DEFAULT NULL,
  `agree_level_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of section_c3s
-- ----------------------------

-- ----------------------------
-- Table structure for `section_c4s`
-- ----------------------------
DROP TABLE IF EXISTS `section_c4s`;
CREATE TABLE `section_c4s` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_management_id` int(11) DEFAULT NULL,
  `agree_level_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of section_c4s
-- ----------------------------

-- ----------------------------
-- Table structure for `section_c5s`
-- ----------------------------
DROP TABLE IF EXISTS `section_c5s`;
CREATE TABLE `section_c5s` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `planning_id` int(11) DEFAULT NULL,
  `agree_level_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of section_c5s
-- ----------------------------

-- ----------------------------
-- Table structure for `section_c6s`
-- ----------------------------
DROP TABLE IF EXISTS `section_c6s`;
CREATE TABLE `section_c6s` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technology_skill_id` int(11) DEFAULT NULL,
  `agree_level_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of section_c6s
-- ----------------------------

-- ----------------------------
-- Table structure for `section_c7s`
-- ----------------------------
DROP TABLE IF EXISTS `section_c7s`;
CREATE TABLE `section_c7s` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `learning_skill_id` int(11) DEFAULT NULL,
  `agree_level_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of section_c7s
-- ----------------------------

-- ----------------------------
-- Table structure for `section_c8s`
-- ----------------------------
DROP TABLE IF EXISTS `section_c8s`;
CREATE TABLE `section_c8s` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `innovative_outcome_id` int(11) DEFAULT NULL,
  `agree_level_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of section_c8s
-- ----------------------------

-- ----------------------------
-- Table structure for `section_cs`
-- ----------------------------
DROP TABLE IF EXISTS `section_cs`;
CREATE TABLE `section_cs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_1` int(11) DEFAULT NULL,
  `c_2` int(11) DEFAULT NULL,
  `c_3` int(11) DEFAULT NULL,
  `c_4` int(11) DEFAULT NULL,
  `tw_1` int(11) DEFAULT NULL,
  `tw_2` int(11) DEFAULT NULL,
  `tw_3` int(11) DEFAULT NULL,
  `tw_4` int(11) DEFAULT NULL,
  `tw_5` int(11) DEFAULT NULL,
  `tw_6` int(11) DEFAULT NULL,
  `ps_1` int(11) DEFAULT NULL,
  `ps_2` int(11) DEFAULT NULL,
  `ps_3` int(11) DEFAULT NULL,
  `ps_4` int(11) DEFAULT NULL,
  `ps_5` int(11) DEFAULT NULL,
  `ps_6` int(11) DEFAULT NULL,
  `sm_1` int(11) DEFAULT NULL,
  `sm_2` int(11) DEFAULT NULL,
  `sm_3` int(11) DEFAULT NULL,
  `sm_4` int(11) DEFAULT NULL,
  `sm_5` int(11) DEFAULT NULL,
  `po_1` int(11) DEFAULT NULL,
  `po_2` int(11) DEFAULT NULL,
  `po_3` int(11) DEFAULT NULL,
  `po_4` int(11) DEFAULT NULL,
  `ts_1` int(11) DEFAULT NULL,
  `ts_2` int(11) DEFAULT NULL,
  `ts_3` int(11) DEFAULT NULL,
  `ts_4` int(11) DEFAULT NULL,
  `lc_1` int(11) DEFAULT NULL,
  `lc_2` int(11) DEFAULT NULL,
  `lc_3` int(11) DEFAULT NULL,
  `io_1` int(11) DEFAULT NULL,
  `io_2` int(11) DEFAULT NULL,
  `io_3` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of section_cs
-- ----------------------------

-- ----------------------------
-- Table structure for `section_ds`
-- ----------------------------
DROP TABLE IF EXISTS `section_ds`;
CREATE TABLE `section_ds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `d_1` int(11) DEFAULT NULL,
  `d_2` int(11) DEFAULT NULL,
  `d_3` int(11) DEFAULT NULL,
  `d_4` int(11) DEFAULT NULL,
  `d_5` int(11) DEFAULT NULL,
  `d_6` int(11) DEFAULT NULL,
  `d_7` int(11) DEFAULT NULL,
  `d_8` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of section_ds
-- ----------------------------

-- ----------------------------
-- Table structure for `sectors`
-- ----------------------------
DROP TABLE IF EXISTS `sectors`;
CREATE TABLE `sectors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sectors
-- ----------------------------
INSERT INTO `sectors` VALUES ('1', 'PERTANIAN,PERBURUAN DAN PERHUTANAN', '2012-02-05 11:23:45', '2012-02-05 11:23:45');
INSERT INTO `sectors` VALUES ('2', 'PERIKANAN', '2012-02-05 11:24:14', '2012-02-05 11:24:14');
INSERT INTO `sectors` VALUES ('3', 'PERLOMBONGAN DAN PENGKUARIAN', '2012-02-05 11:24:33', '2012-02-05 11:24:33');
INSERT INTO `sectors` VALUES ('4', 'PEMBUATAN', '2012-02-05 11:24:57', '2012-02-05 11:24:57');
INSERT INTO `sectors` VALUES ('5', 'BEKALAN ELEKTRIK, GAS DAN AIR', '2012-02-05 11:25:18', '2012-02-05 11:25:18');
INSERT INTO `sectors` VALUES ('6', 'PEMBINAAN', '2012-02-05 11:25:34', '2012-02-05 11:25:34');
INSERT INTO `sectors` VALUES ('7', 'PERDAGANGAN JUAL BORONG DAN JUAL RUNCIT,PEMBAIKAN KENDERAAN', '2012-02-05 11:25:57', '2012-02-05 11:25:57');
INSERT INTO `sectors` VALUES ('8', 'BERMOTOR,MOTOSIKAL DAN BARANGAN PERSENDIRIAN DAN ISI RUMAH,HOTEL DAN RESTORAN', '2012-02-05 11:26:21', '2012-02-05 11:26:21');
INSERT INTO `sectors` VALUES ('9', 'PENGANKUTAN,PENYIMPANAN DAN KOMUNIKASI', '2012-02-05 11:26:41', '2012-02-05 11:26:41');
INSERT INTO `sectors` VALUES ('11', 'PENGANTARAN KEWANGAN', '2012-02-05 11:27:17', '2012-02-05 11:27:17');
INSERT INTO `sectors` VALUES ('13', 'PENTADBIRAN AWAM DAN PERTAHANAN,KESELAMATAN SOSIAL WAJIB', '2012-02-05 11:27:58', '2012-02-05 11:27:58');
INSERT INTO `sectors` VALUES ('14', 'PENDIDIKAN\",\"KESIHATAN DAN KERJA SOSIAL', '2012-02-05 11:28:16', '2012-02-05 11:28:16');
INSERT INTO `sectors` VALUES ('15', 'AKTIVITI PERKHIDMATAN KOMUNITI,SOSIAL DAN PERSENDIRIAN LAIN', '2012-02-05 11:28:36', '2012-02-05 11:28:36');
INSERT INTO `sectors` VALUES ('16', 'ISI RUMAH PERSENDIRIAN DENGAN PEKERJA BERGAJI', '2012-02-05 11:28:56', '2012-02-05 11:28:56');
INSERT INTO `sectors` VALUES ('17', 'AKTIVITI HARTANAH,PENYEWAAN DAN PERNIAGAAN', '2012-02-05 11:29:50', '2012-02-05 11:29:50');
INSERT INTO `sectors` VALUES ('18', '', '2012-02-14 14:12:32', '2012-02-14 14:12:32');

-- ----------------------------
-- Table structure for `sem_internships`
-- ----------------------------
DROP TABLE IF EXISTS `sem_internships`;
CREATE TABLE `sem_internships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sem_internships
-- ----------------------------

-- ----------------------------
-- Table structure for `sesis`
-- ----------------------------
DROP TABLE IF EXISTS `sesis`;
CREATE TABLE `sesis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sesis
-- ----------------------------
INSERT INTO `sesis` VALUES ('1', 'September-January', '2012-02-15 01:34:20', '2012-02-15 01:34:20');
INSERT INTO `sesis` VALUES ('2', 'March-July', '2012-02-15 01:34:46', '2012-02-15 01:34:46');

-- ----------------------------
-- Table structure for `skill_pros`
-- ----------------------------
DROP TABLE IF EXISTS `skill_pros`;
CREATE TABLE `skill_pros` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of skill_pros
-- ----------------------------
INSERT INTO `skill_pros` VALUES ('1', 'Medium');
INSERT INTO `skill_pros` VALUES ('2', 'Intermediate');
INSERT INTO `skill_pros` VALUES ('3', 'Expert');

-- ----------------------------
-- Table structure for `spokens`
-- ----------------------------
DROP TABLE IF EXISTS `spokens`;
CREATE TABLE `spokens` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of spokens
-- ----------------------------
INSERT INTO `spokens` VALUES ('1', 'Excellent');
INSERT INTO `spokens` VALUES ('2', 'Good');
INSERT INTO `spokens` VALUES ('3', 'Fair');

-- ----------------------------
-- Table structure for `staffs`
-- ----------------------------
DROP TABLE IF EXISTS `staffs`;
CREATE TABLE `staffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `staff_type_id` int(11) DEFAULT '7',
  `gelaran_id` int(11) DEFAULT '9',
  `program_id` int(11) DEFAULT '18',
  `faculty_id` int(11) DEFAULT '26',
  `room_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `place` text COLLATE utf8_unicode_ci,
  `office_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hp_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prog_code_id` int(11) DEFAULT '18',
  `prog_name_id` int(11) DEFAULT '18',
  `kampu_id` int(11) DEFAULT NULL,
  `validate_staff` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of staffs
-- ----------------------------
INSERT INTO `staffs` VALUES ('1', '23233', '1', '2', '18', '9', '321332', 'Blog Pensyarah fakulti teknologi maklumat', '03-34324', '23232', 'hakim@gmail.com', '30', '2012-02-14 15:02:11', '2012-03-04 05:14:21', 'Hakim Bin Hakim', '5', '3', '1', '1');
INSERT INTO `staffs` VALUES ('2', '456789', '3', '3', '18', '22', '2345rw', 'rwererer', '234423', '432434', 'ss@d.n', '31', '2012-02-16 17:00:15', '2012-03-06 17:24:08', 'Sharul Shah', '3', '4', '3', '0');
INSERT INTO `staffs` VALUES ('3', '4432323', '3', '4', '18', '21', '32323aa', 'ddsda sffsfd ffsfdsf ffdfsd', '23123', '43545345', 'eawewe', '32', '2012-02-20 20:50:33', '2012-03-01 18:14:49', 'jojo', '15', '15', '1', '1');
INSERT INTO `staffs` VALUES ('4', '3456789', '3', '1', '18', '11', '3456AA', 'Blok Pensyarah', '03-34444788', '018-32323232', 'sharina@gmail.com', '35', '2012-02-24 01:33:51', '2012-03-06 17:22:41', 'Sharina Shahril', '18', '18', '17', '1');
INSERT INTO `staffs` VALUES ('5', '2324', '3', '2', '18', '8', '3434A', 'Blok Pensyarah', '03-345666', '017-35353535', 'akmal@gmail.com', '36', '2012-02-24 05:36:53', '2012-03-04 04:28:48', 'Ahmad Kamal ', '18', '18', '1', '1');
INSERT INTO `staffs` VALUES ('6', '676789', '3', '1', '18', '19', '456AB', 'Blok Pensyarah FSKM', '03-256789', '017-35353535', 'fazura@abc.com', '41', '2012-03-07 01:48:12', '2012-03-07 01:55:03', 'Fazura', '18', '18', '1', '1');
INSERT INTO `staffs` VALUES ('7', '45644', '1', '4', '18', '9', '4343', 'dadadsada', '23123', 'dsadad', 'aaaa', '45', '2012-04-20 23:41:49', '2012-04-20 23:48:48', 'z', '18', '18', '15', null);
INSERT INTO `staffs` VALUES ('8', '456789', '3', '2', '18', '21', '53454', 'fdfsdfsd fdsfsdf ', '3123123', '312313', 'sasas', '46', '2012-04-20 23:50:34', '2012-04-20 23:51:28', 'x', '18', '18', '9', null);
INSERT INTO `staffs` VALUES ('9', '4234', '2', '3', '18', '12', '4234', '434234', '324324', '45345', 'eweqe', '47', '2012-04-20 23:54:41', '2012-04-20 23:55:27', 'c', '18', '18', '14', null);
INSERT INTO `staffs` VALUES ('10', '12345', '3', '1', '18', '9', '343a', 'Blok Pensyarah', '03444', '12121', 'atikah@gmail.com', '50', '2012-04-21 02:37:46', '2012-04-21 02:41:29', 'atikah', '18', '18', '3', '1');

-- ----------------------------
-- Table structure for `staff_types`
-- ----------------------------
DROP TABLE IF EXISTS `staff_types`;
CREATE TABLE `staff_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of staff_types
-- ----------------------------
INSERT INTO `staff_types` VALUES ('1', 'Ketua Program', '2012-02-09 23:36:24', '2012-02-09 23:36:24');
INSERT INTO `staff_types` VALUES ('2', 'Advisor', '2012-02-09 23:37:11', '2012-02-09 23:37:11');
INSERT INTO `staff_types` VALUES ('3', 'Academic Supervisor', '2012-02-09 23:38:03', '2012-02-20 21:43:19');
INSERT INTO `staff_types` VALUES ('4', 'Examiner', '2012-02-09 23:38:48', '2012-02-09 23:38:48');
INSERT INTO `staff_types` VALUES ('5', 'Staff', '2012-02-09 23:39:35', '2012-02-09 23:39:35');
INSERT INTO `staff_types` VALUES ('6', 'Dekan', '2012-02-09 23:40:17', '2012-02-09 23:40:17');
INSERT INTO `staff_types` VALUES ('7', '', '2012-02-14 14:42:19', '2012-02-14 14:42:19');

-- ----------------------------
-- Table structure for `states`
-- ----------------------------
DROP TABLE IF EXISTS `states`;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of states
-- ----------------------------
INSERT INTO `states` VALUES ('1', 'Selangor', '2012-02-05 11:17:00', '2012-02-05 11:17:00');
INSERT INTO `states` VALUES ('2', 'Perak', '2012-02-05 11:17:15', '2012-02-05 11:17:15');
INSERT INTO `states` VALUES ('3', 'Sabah', '2012-02-05 11:17:30', '2012-02-05 11:17:30');
INSERT INTO `states` VALUES ('4', 'Serawak', '2012-02-05 11:17:43', '2012-02-05 11:17:43');
INSERT INTO `states` VALUES ('5', 'Negeri Sembilan', '2012-02-05 11:18:00', '2012-02-05 11:18:00');
INSERT INTO `states` VALUES ('7', 'Johor', '2012-02-05 11:18:22', '2012-02-05 11:18:22');
INSERT INTO `states` VALUES ('8', 'Kelantan', '2012-02-05 11:18:36', '2012-02-05 11:18:36');
INSERT INTO `states` VALUES ('9', 'Terangganu', '2012-02-05 11:18:50', '2012-02-05 11:18:50');
INSERT INTO `states` VALUES ('10', 'Pahang', '2012-02-05 11:19:05', '2012-02-05 11:19:05');
INSERT INTO `states` VALUES ('11', 'Kelantan', '2012-02-05 11:19:25', '2012-02-05 11:19:25');
INSERT INTO `states` VALUES ('12', ' Kuala Lumpur', '2012-02-05 11:19:58', '2012-02-05 11:19:58');
INSERT INTO `states` VALUES ('13', 'Perlis', '2012-02-05 11:20:37', '2012-02-05 11:20:37');
INSERT INTO `states` VALUES ('14', 'Kedah', '2012-02-05 11:20:56', '2012-02-05 11:20:56');
INSERT INTO `states` VALUES ('15', '', '2012-02-14 12:52:51', '2012-02-14 12:52:51');

-- ----------------------------
-- Table structure for `statuses`
-- ----------------------------
DROP TABLE IF EXISTS `statuses`;
CREATE TABLE `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of statuses
-- ----------------------------
INSERT INTO `statuses` VALUES ('1', 'Yes', '2012-02-11 13:49:47', '2012-02-11 13:49:47');
INSERT INTO `statuses` VALUES ('2', 'No', '2012-02-11 13:50:11', '2012-02-11 13:50:11');
INSERT INTO `statuses` VALUES ('3', '', '2012-02-14 12:54:24', '2012-02-14 12:54:24');

-- ----------------------------
-- Table structure for `students`
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `kpi_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', '18', '2012-02-11 13:59:13', '2012-02-11 13:59:13', 'Aminah Bt Hassan', null, null);
INSERT INTO `students` VALUES ('2', '25', '2012-02-13 21:26:28', '2012-02-13 21:26:28', 'Ali Bt Ahmad', null, null);
INSERT INTO `students` VALUES ('3', '26', '2012-02-14 12:28:09', '2012-02-14 12:28:09', 'Azman Bin Azmin', null, null);
INSERT INTO `students` VALUES ('4', '27', '2012-02-14 12:35:52', '2012-02-14 12:35:52', 'Omar Bin Omar', null, null);
INSERT INTO `students` VALUES ('5', '28', '2012-02-14 14:55:04', '2012-02-14 14:55:04', 'Shahrul Ameen Bin Muhd kaza', null, null);
INSERT INTO `students` VALUES ('6', '33', '2012-02-23 21:53:32', '2012-02-23 21:53:32', 'Nur Amalina Bt Muhd Nasir', null, null);
INSERT INTO `students` VALUES ('7', '40', '2012-03-06 19:56:06', '2012-03-06 19:56:06', 'Wan Kamarul Ariffin', null, null);
INSERT INTO `students` VALUES ('8', '43', '2012-04-20 23:28:24', '2012-04-20 23:28:24', 'abc', null, null);
INSERT INTO `students` VALUES ('9', '49', '2012-04-21 02:13:19', '2012-04-21 02:13:19', 'syafiq', null, null);
INSERT INTO `students` VALUES ('10', '51', '2012-04-24 09:51:02', '2012-04-24 09:51:02', 'ijat', null, null);
INSERT INTO `students` VALUES ('11', '52', '2012-04-25 05:08:03', '2012-04-25 05:08:03', 'icah', null, null);
INSERT INTO `students` VALUES ('12', '53', '2012-04-25 05:37:55', '2012-04-25 05:37:55', 'jaja', null, null);
INSERT INTO `students` VALUES ('13', '54', '2012-04-25 08:13:15', '2012-04-25 08:13:15', 'pali', null, null);
INSERT INTO `students` VALUES ('14', '55', '2012-04-26 05:13:43', '2012-04-26 05:13:43', 'kadir', null, null);
INSERT INTO `students` VALUES ('15', '56', '2012-05-30 04:20:42', '2012-05-30 04:20:42', '\'Atikah Syahidah binti Mohd Shafie', null, null);
INSERT INTO `students` VALUES ('16', '57', '2012-05-30 06:57:20', '2012-05-30 06:57:20', '\'Atikah Syahidah binti Mohd Shafie', null, null);
INSERT INTO `students` VALUES ('17', '58', '2012-05-30 06:59:48', '2012-05-30 06:59:48', '\'Atikah Syahidah binti Mohd Shafie', null, null);

-- ----------------------------
-- Table structure for `student_classes`
-- ----------------------------
DROP TABLE IF EXISTS `student_classes`;
CREATE TABLE `student_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prog_name_id` int(11) DEFAULT NULL,
  `prog_code_id` int(11) DEFAULT NULL,
  `class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_student` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kpi_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sesi_id` int(11) DEFAULT NULL,
  `tahun` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of student_classes
-- ----------------------------
INSERT INTO `student_classes` VALUES ('4', '1', '14', 'CS1101A', '23', null, '1', null, '2012-02-15 05:30:23', '2012-02-15 05:30:23', '1', '2012-2013');
INSERT INTO `student_classes` VALUES ('5', '6', '5', 'CS224A', '34', null, '1', null, '2012-02-15 05:31:48', '2012-02-15 05:31:48', '1', '2011-2012');
INSERT INTO `student_classes` VALUES ('6', '4', '4', 'CS223A', '24', null, '1', null, '2012-02-21 06:46:29', '2012-02-21 06:46:29', '1', '2011-2012');
INSERT INTO `student_classes` VALUES ('7', '1', '14', 'CS231AA', '20', null, '1', null, '2012-02-24 08:10:18', '2012-02-24 08:10:18', '1', '2011-2012');
INSERT INTO `student_classes` VALUES ('8', '1', '14', 'cs110D', '23', null, '1', null, '2012-03-08 05:06:35', '2012-03-08 05:06:35', '1', '2012-2013');
INSERT INTO `student_classes` VALUES ('10', null, null, 'Not Assign Yet', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `stud_adds`
-- ----------------------------
DROP TABLE IF EXISTS `stud_adds`;
CREATE TABLE `stud_adds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `place` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT '15',
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of stud_adds
-- ----------------------------
INSERT INTO `stud_adds` VALUES ('1', '6', 'No 5 kawasan perumahan belakang sekolah', '23232', 'Bandar', '13', null, '2012-02-07 22:15:10', '2012-02-09 03:23:36');
INSERT INTO `stud_adds` VALUES ('2', '8', null, null, null, null, null, '2012-02-07 22:28:25', '2012-02-07 22:28:25');
INSERT INTO `stud_adds` VALUES ('3', '9', null, null, null, null, null, '2012-02-08 05:26:50', '2012-02-08 05:26:50');
INSERT INTO `stud_adds` VALUES ('4', '12', 'kawasan Perumahan Belakang Sekolah', '345000', 'Bandae', '12', null, '2012-02-09 07:26:25', '2012-02-09 19:46:06');
INSERT INTO `stud_adds` VALUES ('5', '15', 'No 3 jalan Mati', '23000', 'Petaling Jaya', '1', null, '2012-02-09 22:42:59', '2012-02-09 22:48:15');
INSERT INTO `stud_adds` VALUES ('6', '17', null, null, null, null, null, '2012-02-11 06:07:55', '2012-02-11 06:07:55');
INSERT INTO `stud_adds` VALUES ('7', '18', 'No 2 Jalan Mati', '323323', 'Bandar', '12', null, '2012-02-11 13:59:14', '2012-02-11 18:14:00');
INSERT INTO `stud_adds` VALUES ('8', '25', 'No 11 Kampung Tanjung Ipoh', '71500', 'Tanjung Ipoh', '5', null, '2012-02-13 21:26:29', '2012-02-14 03:56:10');
INSERT INTO `stud_adds` VALUES ('9', '26', null, null, null, null, null, '2012-02-14 12:28:09', '2012-02-14 12:28:09');
INSERT INTO `stud_adds` VALUES ('10', '27', null, null, null, null, null, '2012-02-14 12:35:53', '2012-02-14 12:35:53');
INSERT INTO `stud_adds` VALUES ('11', '28', null, null, null, '15', null, '2012-02-14 14:55:05', '2012-02-14 14:55:05');
INSERT INTO `stud_adds` VALUES ('12', '33', 'Blok 5 Jalan Lama Bukit Bintang 2', '35678', 'Serdang', '1', null, '2012-02-23 21:53:33', '2012-05-28 07:08:05');
INSERT INTO `stud_adds` VALUES ('13', '40', 'Bandar Cempaka,Jalan Melintang', '560000', 'Kluang', '7', null, '2012-03-06 19:56:07', '2012-03-07 01:11:14');
INSERT INTO `stud_adds` VALUES ('14', '43', 'asdsdsad', '3213', 'dasdd', '3', null, '2012-04-20 23:28:25', '2012-04-20 23:34:33');
INSERT INTO `stud_adds` VALUES ('15', '49', 'alamat pelajar', '345678', 's.alam', '1', null, '2012-04-21 02:13:20', '2012-04-21 02:16:49');
INSERT INTO `stud_adds` VALUES ('16', '51', null, null, null, '15', null, '2012-04-24 09:51:02', '2012-04-24 09:51:02');
INSERT INTO `stud_adds` VALUES ('17', '52', null, null, null, '15', null, '2012-04-25 05:08:03', '2012-04-25 05:08:03');
INSERT INTO `stud_adds` VALUES ('18', '53', null, null, null, '15', null, '2012-04-25 05:37:56', '2012-04-25 05:37:56');
INSERT INTO `stud_adds` VALUES ('19', '54', null, null, null, '15', null, '2012-04-25 08:13:16', '2012-04-25 08:13:16');
INSERT INTO `stud_adds` VALUES ('20', '55', null, null, null, '15', null, '2012-04-26 05:13:44', '2012-04-26 05:13:44');
INSERT INTO `stud_adds` VALUES ('21', '56', null, null, null, '15', null, '2012-05-30 04:20:42', '2012-05-30 04:20:42');
INSERT INTO `stud_adds` VALUES ('22', '57', null, null, null, '15', null, '2012-05-30 06:57:20', '2012-05-30 06:57:20');
INSERT INTO `stud_adds` VALUES ('23', '58', null, null, null, '15', null, '2012-05-30 06:59:48', '2012-05-30 06:59:48');

-- ----------------------------
-- Table structure for `stud_custodians`
-- ----------------------------
DROP TABLE IF EXISTS `stud_custodians`;
CREATE TABLE `stud_custodians` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `place` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hp_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relationship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `state_id` int(11) DEFAULT '15',
  `hp_no_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of stud_custodians
-- ----------------------------
INSERT INTO `stud_custodians` VALUES ('1', 'Ahmad Bin Abu', 'No 1 Kawasan Perumahan', '213123', 'city', 'apa@g.com', '312312323', 'siblings', '18', null, '2012-02-11 13:59:13', '2012-02-11 18:59:17', '3', null);
INSERT INTO `stud_custodians` VALUES ('2', 'Muhammad Haikal Bin Sameon', 'No 3 Jalan Kembong Lama', '342344', 'Jalan Gembira', 'haikal@g.com', '012-383938', 'brother', '25', null, '2012-02-13 21:26:29', '2012-02-14 04:19:23', '3', null);
INSERT INTO `stud_custodians` VALUES ('3', null, null, null, null, null, null, null, '26', null, '2012-02-14 12:28:09', '2012-02-14 12:28:09', null, null);
INSERT INTO `stud_custodians` VALUES ('4', null, null, null, null, null, null, null, '27', null, '2012-02-14 12:35:52', '2012-02-14 12:35:52', null, null);
INSERT INTO `stud_custodians` VALUES ('5', null, null, null, null, null, null, null, '28', null, '2012-02-14 14:55:04', '2012-02-14 14:55:04', '15', null);
INSERT INTO `stud_custodians` VALUES ('6', 'Mohd Nasir Bin Syahir', 'No 3,Jalan Melawar', '234567', 'Damanasara', 'nasir@gmail.com', '012-234567898', 'siblings', '33', null, '2012-02-23 21:53:33', '2012-05-28 07:14:12', '12', '010-9909292');
INSERT INTO `stud_custodians` VALUES ('7', 'Hajarul Aswad', 'Taman Perumahan Kosong', '35000', 'Petaling Jaya', 'hajarul@gmail.com', '012-234567898', 'Siblings', '40', null, '2012-03-06 19:56:07', '2012-03-07 01:12:38', '1', null);
INSERT INTO `stud_custodians` VALUES ('8', 'wewe', 'dadadd', '123213', 'daddad', 'adsd', '2312323', 'dddasd', '43', null, '2012-04-20 23:28:24', '2012-04-20 23:35:07', '2', null);
INSERT INTO `stud_custodians` VALUES ('9', 'Encik A', 'alamat penjaga', '456666', 's.alam', 'encik-A@gmail.com', '012345677', 'siblings', '49', null, '2012-04-21 02:13:20', '2012-04-21 02:18:00', '7', null);
INSERT INTO `stud_custodians` VALUES ('10', null, null, null, null, null, null, null, '51', null, '2012-04-24 09:51:02', '2012-04-24 09:51:02', '15', null);
INSERT INTO `stud_custodians` VALUES ('11', null, null, null, null, null, null, null, '52', null, '2012-04-25 05:08:03', '2012-04-25 05:08:03', '15', null);
INSERT INTO `stud_custodians` VALUES ('12', null, null, null, null, null, null, null, '53', null, '2012-04-25 05:37:55', '2012-04-25 05:37:55', '15', null);
INSERT INTO `stud_custodians` VALUES ('13', null, null, null, null, null, null, null, '54', null, '2012-04-25 08:13:16', '2012-04-25 08:13:16', '15', null);
INSERT INTO `stud_custodians` VALUES ('14', null, null, null, null, null, null, null, '55', null, '2012-04-26 05:13:43', '2012-04-26 05:13:43', '15', null);
INSERT INTO `stud_custodians` VALUES ('15', null, null, null, null, null, null, null, '56', null, '2012-05-30 04:20:42', '2012-05-30 04:20:42', '15', null);
INSERT INTO `stud_custodians` VALUES ('16', null, null, null, null, null, null, null, '57', null, '2012-05-30 06:57:20', '2012-05-30 06:57:20', '15', null);
INSERT INTO `stud_custodians` VALUES ('17', null, null, null, null, null, null, null, '58', null, '2012-05-30 06:59:48', '2012-05-30 06:59:48', '15', null);

-- ----------------------------
-- Table structure for `stud_descriptions`
-- ----------------------------
DROP TABLE IF EXISTS `stud_descriptions`;
CREATE TABLE `stud_descriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_me` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of stud_descriptions
-- ----------------------------
INSERT INTO `stud_descriptions` VALUES ('1', 'I am a good student.Always come early to schools and finishing all my homework\'s in an advance time..', '18', '2012-02-11 16:30:02', '2012-02-11 16:30:02');
INSERT INTO `stud_descriptions` VALUES ('2', 'I am a good person that belongs to general family fom villages.', '25', '2012-02-13 21:26:29', '2012-02-14 05:28:51');
INSERT INTO `stud_descriptions` VALUES ('3', null, '26', '2012-02-14 12:28:09', '2012-02-14 12:28:09');
INSERT INTO `stud_descriptions` VALUES ('4', null, '27', '2012-02-14 12:35:52', '2012-02-14 12:35:52');
INSERT INTO `stud_descriptions` VALUES ('5', null, '28', '2012-02-14 14:55:05', '2012-02-14 14:55:05');
INSERT INTO `stud_descriptions` VALUES ('6', 'I am hardworking person.\r\ncan work more than office hour.', '33', '2012-02-23 21:53:33', '2012-05-29 05:37:32');
INSERT INTO `stud_descriptions` VALUES ('7', null, '40', '2012-03-06 19:56:07', '2012-03-06 19:56:07');
INSERT INTO `stud_descriptions` VALUES ('8', null, '43', '2012-04-20 23:28:25', '2012-04-20 23:28:25');
INSERT INTO `stud_descriptions` VALUES ('9', 'about student', '49', '2012-04-21 02:13:20', '2012-04-21 02:22:55');
INSERT INTO `stud_descriptions` VALUES ('10', null, '51', '2012-04-24 09:51:02', '2012-04-24 09:51:02');
INSERT INTO `stud_descriptions` VALUES ('11', null, '52', '2012-04-25 05:08:03', '2012-04-25 05:08:03');
INSERT INTO `stud_descriptions` VALUES ('12', null, '53', '2012-04-25 05:37:56', '2012-04-25 05:37:56');
INSERT INTO `stud_descriptions` VALUES ('13', null, '54', '2012-04-25 08:13:16', '2012-04-25 08:13:16');
INSERT INTO `stud_descriptions` VALUES ('14', null, '55', '2012-04-26 05:13:43', '2012-04-26 05:13:43');
INSERT INTO `stud_descriptions` VALUES ('15', null, '56', '2012-05-30 04:20:42', '2012-05-30 04:20:42');
INSERT INTO `stud_descriptions` VALUES ('16', null, '57', '2012-05-30 06:57:20', '2012-05-30 06:57:20');
INSERT INTO `stud_descriptions` VALUES ('17', null, '58', '2012-05-30 06:59:48', '2012-05-30 06:59:48');

-- ----------------------------
-- Table structure for `stud_edus`
-- ----------------------------
DROP TABLE IF EXISTS `stud_edus`;
CREATE TABLE `stud_edus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `cgpa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_sem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prog_name_id` int(11) DEFAULT '18',
  `prog_code_id` int(11) DEFAULT '18',
  `faculty_id` int(11) DEFAULT '26',
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `student_class_id` int(11) DEFAULT '0',
  `kampu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of stud_edus
-- ----------------------------
INSERT INTO `stud_edus` VALUES ('1', '18', '2.34', '3', '1', '7', '16', null, '2012-02-11 13:59:14', '2012-02-16 19:54:34', '4', '1');
INSERT INTO `stud_edus` VALUES ('2', '25', '3.22', '4', '3', '3', '3', null, '2012-02-13 21:26:29', '2012-02-14 05:24:20', '4', null);
INSERT INTO `stud_edus` VALUES ('3', '26', null, null, null, null, '3', null, '2012-02-14 12:28:09', '2012-02-14 12:28:09', '4', null);
INSERT INTO `stud_edus` VALUES ('4', '27', null, null, null, null, '3', null, '2012-02-14 12:35:53', '2012-02-14 12:35:53', '5', null);
INSERT INTO `stud_edus` VALUES ('5', '28', null, null, '18', '18', '26', null, '2012-02-14 14:55:05', '2012-02-14 14:55:05', '6', null);
INSERT INTO `stud_edus` VALUES ('6', '33', '2.89', '5', '1', '17', '19', null, '2012-02-23 21:53:33', '2012-05-28 07:05:24', '4', '2');
INSERT INTO `stud_edus` VALUES ('7', '40', '2.34', '4', '16', '12', '19', null, '2012-03-06 19:56:07', '2012-03-07 01:09:10', '7', '1');
INSERT INTO `stud_edus` VALUES ('8', '43', '2.5', '2.9', '4', '16', '23', null, '2012-04-20 23:28:25', '2012-04-20 23:34:09', '5', '17');
INSERT INTO `stud_edus` VALUES ('9', '49', '2.9', '3.7', '10', '11', '9', null, '2012-04-21 02:13:20', '2012-04-21 02:16:06', '6', '12');
INSERT INTO `stud_edus` VALUES ('10', '51', '3.56', '3.96', '10', '6', '19', null, '2012-04-24 09:51:02', '2012-04-24 09:54:16', '6', '1');
INSERT INTO `stud_edus` VALUES ('11', '52', null, null, '18', '18', '26', null, '2012-04-25 05:08:03', '2012-04-25 05:08:03', '0', null);
INSERT INTO `stud_edus` VALUES ('12', '53', null, null, '18', '18', '26', null, '2012-04-25 05:37:56', '2012-04-25 05:37:56', '0', null);
INSERT INTO `stud_edus` VALUES ('13', '54', null, null, '18', '18', '26', null, '2012-04-25 08:13:16', '2012-04-25 08:13:16', '0', null);
INSERT INTO `stud_edus` VALUES ('14', '55', null, null, '18', '18', '26', null, '2012-04-26 05:13:44', '2012-04-26 05:13:44', '0', null);
INSERT INTO `stud_edus` VALUES ('15', '56', null, null, '18', '18', '26', null, '2012-05-30 04:20:42', '2012-05-30 04:20:42', '0', null);
INSERT INTO `stud_edus` VALUES ('16', '57', null, null, '18', '18', '26', null, '2012-05-30 06:57:20', '2012-05-30 06:57:20', '0', null);
INSERT INTO `stud_edus` VALUES ('17', '58', null, null, '18', '18', '26', null, '2012-05-30 06:59:48', '2012-05-30 06:59:48', '0', null);

-- ----------------------------
-- Table structure for `stud_internships`
-- ----------------------------
DROP TABLE IF EXISTS `stud_internships`;
CREATE TABLE `stud_internships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `duration` int(11) DEFAULT '0',
  `sem_internship_start` date DEFAULT '0000-00-00',
  `user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sem_internship_end` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of stud_internships
-- ----------------------------
INSERT INTO `stud_internships` VALUES ('6', '5', '2007-01-05', '33', null, null, null, '2007-01-28');
INSERT INTO `stud_internships` VALUES ('15', '0', null, '56', null, '2012-05-30 04:20:42', '2012-05-30 04:20:42', null);
INSERT INTO `stud_internships` VALUES ('16', '0', null, '57', null, '2012-05-30 06:57:20', '2012-05-30 06:57:20', null);
INSERT INTO `stud_internships` VALUES ('17', '0', null, '58', null, '2012-05-30 06:59:48', '2012-05-30 06:59:48', null);

-- ----------------------------
-- Table structure for `stud_languages`
-- ----------------------------
DROP TABLE IF EXISTS `stud_languages`;
CREATE TABLE `stud_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spoken_id` int(11) DEFAULT NULL,
  `written_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of stud_languages
-- ----------------------------
INSERT INTO `stud_languages` VALUES ('11', 'English', '1', '1', '33', null, '2012-05-28 09:46:10', '2012-05-28 09:46:10');

-- ----------------------------
-- Table structure for `stud_pref_locations`
-- ----------------------------
DROP TABLE IF EXISTS `stud_pref_locations`;
CREATE TABLE `stud_pref_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location1` int(11) DEFAULT NULL,
  `location2` int(11) DEFAULT NULL,
  `location3` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of stud_pref_locations
-- ----------------------------
INSERT INTO `stud_pref_locations` VALUES ('1', '6', null, null, null, null, '2012-02-07 22:15:10', '2012-02-07 22:15:10');
INSERT INTO `stud_pref_locations` VALUES ('2', '8', null, null, null, null, '2012-02-07 22:28:25', '2012-02-07 22:28:25');
INSERT INTO `stud_pref_locations` VALUES ('3', '9', '2', '3', '5', null, '2012-02-08 05:26:50', '2012-02-09 03:35:57');
INSERT INTO `stud_pref_locations` VALUES ('4', '12', '1', '4', '5', null, '2012-02-09 07:26:25', '2012-02-09 20:07:13');
INSERT INTO `stud_pref_locations` VALUES ('5', '15', '4', '1', '10', null, '2012-02-09 22:42:59', '2012-02-09 22:54:05');

-- ----------------------------
-- Table structure for `stud_profiles`
-- ----------------------------
DROP TABLE IF EXISTS `stud_profiles`;
CREATE TABLE `stud_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matric_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nric` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender_id` int(11) DEFAULT '3',
  `patient_history` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disease_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hp_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marital_status_id` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `buku_log` int(11) DEFAULT '0',
  `penyelia` int(11) DEFAULT '0',
  `laporan` int(11) DEFAULT '0',
  `jumlah` int(11) DEFAULT '0',
  `gred_id` int(11) DEFAULT NULL,
  `catatan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of stud_profiles
-- ----------------------------
INSERT INTO `stud_profiles` VALUES ('1', '2008749103', '870707-07-7777', '2', 'No', '', '012-323232323', 'aminah@g.com', '18', null, '2012-02-11 13:59:13', '2012-03-06 01:09:30', '1', null, null, '2', '2', '33', '45', null, '3', 'ada apa dengan testing');
INSERT INTO `stud_profiles` VALUES ('2', '2008767778', '8588778989', '2', 'no', 'weqwewewewe  eweqweqwew', '343432434', 'sadasdsdd', '25', null, '2012-02-13 21:26:29', '2012-02-21 14:30:45', '1', null, null, '2', '0', '0', '0', null, null, null);
INSERT INTO `stud_profiles` VALUES ('3', '2009898989', '890909-09-9090', '2', 'Yes', 'cacat..\r\nishh.. OKU.. paham??\r\n', '017-123456789', 'am@gmail.com.my', '33', null, '2012-02-23 21:53:33', '2012-05-28 06:57:42', '1', null, null, '4', '6', '33', '23', '0', '3', 'Tiada Tindak Balas Dari Syarikat');
INSERT INTO `stud_profiles` VALUES ('4', '2010201020', '890909-09-9090', '1', '-', '', '012-323232323', 'kamarul@gmail.com', '40', null, '2012-03-06 19:56:06', '2012-03-07 02:00:21', '1', null, null, '6', '4', '32', '40', '0', '3', 'Baik');
INSERT INTO `stud_profiles` VALUES ('5', '123456789', '123456789', '2', '-', '', '1234', '1234@g.com', '43', null, '2012-04-20 23:28:24', '2012-04-20 23:33:32', '1', null, null, null, '0', '0', '0', '0', null, null);
INSERT INTO `stud_profiles` VALUES ('6', '123456789', '123456789', '1', '-', '-', '0123456789', 'syafiq@yahoo.com', '49', null, '2012-04-21 02:13:20', '2012-04-21 02:15:32', '1', null, null, null, '0', '0', '0', '0', null, null);
INSERT INTO `stud_profiles` VALUES ('7', '2011300137', '910529146935', '1', 'no', '', '0172432833', '', '51', null, '2012-04-24 09:51:02', '2012-04-24 09:52:37', '1', null, null, null, '0', '0', '0', '0', null, null);
INSERT INTO `stud_profiles` VALUES ('11', '987654321', '900990120990', '3', 'n0', 'hahaha', '0190887676', 'ff@ff.com', '55', null, '2012-04-26 05:13:43', '2012-04-26 05:16:24', '1', null, null, null, '0', '0', '0', '0', null, null);
INSERT INTO `stud_profiles` VALUES ('12', null, null, '3', null, null, null, null, '56', null, '2012-05-30 04:20:42', '2012-05-30 04:20:42', null, null, null, null, '0', '0', '0', '0', null, null);
INSERT INTO `stud_profiles` VALUES ('13', null, null, '3', null, null, null, null, '57', null, '2012-05-30 06:57:20', '2012-05-30 06:57:20', null, null, null, null, '0', '0', '0', '0', null, null);
INSERT INTO `stud_profiles` VALUES ('14', null, null, '3', null, null, null, null, '58', null, '2012-05-30 06:59:48', '2012-05-30 06:59:48', null, null, null, null, '0', '0', '0', '0', null, null);

-- ----------------------------
-- Table structure for `stud_references`
-- ----------------------------
DROP TABLE IF EXISTS `stud_references`;
CREATE TABLE `stud_references` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relationship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of stud_references
-- ----------------------------
INSERT INTO `stud_references` VALUES ('1', '6', null, null, null, null, null, null, null, '2012-02-07 22:15:10', '2012-02-07 22:15:10');
INSERT INTO `stud_references` VALUES ('2', '8', null, null, 'vv', null, null, null, null, '2012-02-07 22:28:25', '2012-02-07 22:28:25');
INSERT INTO `stud_references` VALUES ('3', '9', 'vvvvv', 'vvvvv', 'sss', 'vvvv', 'vvvv', 'vvv', null, '2012-02-08 05:26:50', '2012-02-08 15:56:54');
INSERT INTO `stud_references` VALUES ('4', '12', 'Muhd Ali', 'Tukang Kebun', 'Syarikat Sendir', '09-32321312', 'ali@g.com', 'Supervisor', null, '2012-02-09 20:11:02', '2012-02-09 20:11:02');
INSERT INTO `stud_references` VALUES ('5', '12', 'Hani', 'Guru', 'Sekolah Dato ', '019-344343', 'hani@g.com', 'Guru', null, '2012-02-09 20:12:25', '2012-02-09 20:12:25');
INSERT INTO `stud_references` VALUES ('6', '15', 'Cikgu Shida', 'Cikgu', 'Sekolah Kebangsaan Dato K', '03-23232323', 'shida@g.com', 'Guru', null, '2012-02-09 22:55:53', '2012-02-09 22:55:53');
INSERT INTO `stud_references` VALUES ('7', '18', 'Ahmad', 'Kerani', 'Pos Malaysia', '012-3232323', 'ahmad@g.com', 'Kawan Baik', null, '2012-02-11 16:58:34', '2012-02-11 16:58:34');
INSERT INTO `stud_references` VALUES ('8', '25', 'Mohd Kamal Bin Azha', 'Customer Service', 'Belantara Sdn Bhd', '89898-98989', 'ali@g.com', 'Lecturer', null, '2012-02-14 05:28:00', '2012-02-14 05:28:00');
INSERT INTO `stud_references` VALUES ('9', '33', 'En Khairul Fahmi ', 'Lecturer', 'Kolej Cosmopoint', '012-33444555', 'khai@gmail.com', 'Lecturer', null, '2012-02-23 22:29:22', '2012-02-23 22:29:22');
INSERT INTO `stud_references` VALUES ('10', '49', 'Dr Ali', 'Lecturer', 'UiTM', '323232', 'ali@gmail.com', 'lecturer', null, '2012-04-21 02:22:31', '2012-04-21 02:22:31');

-- ----------------------------
-- Table structure for `stud_skills`
-- ----------------------------
DROP TABLE IF EXISTS `stud_skills`;
CREATE TABLE `stud_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skill` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year_exp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skill_pro_id` int(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of stud_skills
-- ----------------------------
INSERT INTO `stud_skills` VALUES ('4', 'PHP,JAVA,C++', '3', '1', '33', null, '2012-02-23 22:14:35', '2012-05-28 08:14:15');
INSERT INTO `stud_skills` VALUES ('16', 'joget', null, '3', '33', null, '2012-05-28 08:12:12', '2012-05-28 08:12:12');
INSERT INTO `stud_skills` VALUES ('17', 'xreti mandi', null, '3', '33', null, '2012-05-28 08:15:38', '2012-05-28 08:15:38');

-- ----------------------------
-- Table structure for `s_managements`
-- ----------------------------
DROP TABLE IF EXISTS `s_managements`;
CREATE TABLE `s_managements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of s_managements
-- ----------------------------
INSERT INTO `s_managements` VALUES ('1', 'I have confidence in my own ideas. ', '2012-03-12 22:56:37', '2012-03-12 22:56:37');
INSERT INTO `s_managements` VALUES ('2', 'I am a responsible person.', '2012-03-12 22:57:02', '2012-03-12 22:57:02');
INSERT INTO `s_managements` VALUES ('3', 'I carry out a task from start to finish.', '2012-03-12 22:57:22', '2012-03-12 22:57:22');
INSERT INTO `s_managements` VALUES ('4', 'I cannot monitor the success of a task.', '2012-03-12 22:57:44', '2012-03-12 22:57:44');
INSERT INTO `s_managements` VALUES ('5', 'I work based on quality standards and specifications.', '2012-03-12 22:58:05', '2012-03-12 22:58:05');

-- ----------------------------
-- Table structure for `technology_skills`
-- ----------------------------
DROP TABLE IF EXISTS `technology_skills`;
CREATE TABLE `technology_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of technology_skills
-- ----------------------------
INSERT INTO `technology_skills` VALUES ('1', 'I have a range of basic IT skills eg. Words, Excel, Power Point.', '2012-03-12 23:00:43', '2012-03-12 23:00:43');
INSERT INTO `technology_skills` VALUES ('2', 'I apply IT as a management tool.', '2012-03-12 23:01:05', '2012-03-12 23:01:05');
INSERT INTO `technology_skills` VALUES ('3', 'I use IT to organize data.', '2012-03-12 23:01:27', '2012-03-12 23:01:27');
INSERT INTO `technology_skills` VALUES ('4', 'I am not willing to learn new IT skills.', '2012-03-12 23:01:49', '2012-03-12 23:01:49');

-- ----------------------------
-- Table structure for `t_skills`
-- ----------------------------
DROP TABLE IF EXISTS `t_skills`;
CREATE TABLE `t_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_skills
-- ----------------------------
INSERT INTO `t_skills` VALUES ('1', 'I contribute to a team by sharing information and expertise.', '2012-03-12 22:43:40', '2012-03-12 22:46:06');
INSERT INTO `t_skills` VALUES ('2', 'I cannot work across different ages, gender,  ethnic. ', '2012-03-12 22:44:12', '2012-03-12 22:46:31');
INSERT INTO `t_skills` VALUES ('3', 'I cannot work as an individual and as a member of a team.', '2012-03-12 22:44:37', '2012-03-12 22:47:10');
INSERT INTO `t_skills` VALUES ('4', 'I lead or support a team when appropriate.', '2012-03-12 22:45:15', '2012-03-12 22:47:56');
INSERT INTO `t_skills` VALUES ('5', 'I manage and resolve conflicts when appropriate.', '2012-03-12 22:48:46', '2012-03-12 22:48:46');
INSERT INTO `t_skills` VALUES ('6', 'I try to respect and  be open to the opinions and contributions of others. ', '2012-03-12 22:49:18', '2012-03-12 22:49:18');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('18', 'Aminah Bt Hassan', 'aminah@gmail.com', '2f67b1eb830a3d9c37a99a280ecb0ddb1c2945d56e221ee7b28156288bdddd01', '0150239aae771959d5b1063e692db589806c1b7326c916cc565c61267bcbdad6', '1', null, null, '2012-02-11 13:59:13', '2012-02-11 13:59:13');
INSERT INTO `users` VALUES ('19', 'KFC Holdings Sdn Bhd', 'kfc@gmail.com', '1a75195e81cf6e73060ae5f06b3435fe6f0520c7a6e149bf6bb2194b9e74c9a4', 'd17097cbd8051fa442431f4a21f3dff0cb138aa9523edd82f03f66ba9df8040d', '2', null, null, '2012-02-11 19:36:18', '2012-02-11 19:36:18');
INSERT INTO `users` VALUES ('20', 'Adidas Sdn Bhd', 'adidas@g.com', '2b503ac581ab83f3ca29d0456d665ea49dbc941c02dc302e5301b3f13f424946', '4c9aec8980508b2ced439ba1306e770cfd309d96e8e83a4d6eea47a4aefd538f', '2', null, null, '2012-02-12 21:00:07', '2012-02-12 21:00:07');
INSERT INTO `users` VALUES ('21', 'Bank Islam Malaysia', 'bank@gmail.com', '1a2ed2af5d741f0349c96e0a679c36cedc5756dc0d9de63efabbc9c27ee8685d', 'c7c937e58afba04164ba93678da3d4e103b9658c3a7811b6de5c8e17f298c932', '2', null, null, '2012-02-12 21:06:03', '2012-02-12 21:06:03');
INSERT INTO `users` VALUES ('22', 'Nestle Sdn Bhd', 'nestle@g.com', '25d973e1c6829fc84241b777898dbc3d9d8aca3f58d7f92e2dfb13763a673daa', 'cea83e0ff3794f703ee1a6ca048ac01b4571e7593cf5a70f25fb02d68fe0ad5f', '2', null, null, '2012-02-12 23:50:04', '2012-02-12 23:50:04');
INSERT INTO `users` VALUES ('23', 'Petronas Sdn Bhd', 'petronas@g.com', 'f2ab3e63c98507d165eb1a06dbcfdd9ff278df8c82110390c4c81c35511a894d', '5fda9b69233e99cadb0815144a3d0e5d9f77e28dabcdb38bec1cdadbc3dadc12', '2', null, null, '2012-02-12 23:51:00', '2012-02-12 23:51:00');
INSERT INTO `users` VALUES ('24', 'Majlis Daerah', 'majlis@g.com', '4918b8cfb0ad8774c18ba86268033023152e21edb65cf7a6992481d196b842c4', '96dc4f3487a60c95e50e29aa657388da52b664c6c8adde5ac2f39156f25167cd', '2', null, null, '2012-02-12 23:53:47', '2012-02-12 23:53:47');
INSERT INTO `users` VALUES ('25', 'Ali Bt Ahmad', 'rantaikunci@gmail.com', '0d4fc49885d3183f1c3fc6f883aac9b7eb34b4d6853057490905cad405f35855', '6c6512a5a864001b8e1f8b0046940d8f27ff02ca70cf23ab22cc026ba7190385', '1', null, null, '2012-02-13 21:26:28', '2012-02-13 21:26:28');
INSERT INTO `users` VALUES ('26', 'Azman Bin Azmin', 'azman@g.com', '6447a147c60a17acf8d30de2ca5c95ce6a95cf86523581a5304024e7edf8ab25', '2eb6439f7d2e8c4cc3ee89df6bceb968527ded63689d78e5c1af726995e63b10', '1', null, null, '2012-02-14 12:28:09', '2012-02-14 12:28:09');
INSERT INTO `users` VALUES ('27', 'Omar Bin Omar', 'omar@g.com', 'a794386005c4dc218ce3e29271092a4000582a2809aad9d946436db67ff27b91', '7176590668c0b12243fba8b9531ae50c243230f2f495f3e59d4b2823a811e523', '1', null, null, '2012-02-14 12:35:52', '2012-02-14 12:35:52');
INSERT INTO `users` VALUES ('28', 'Shahrul Ameen Bin Muhd kaza', 'shah@g.com', '1037b58b7a5647adfacd91740861a7f72a020341effc2099236f17146555f39c', 'd988fbfbe4dfd7bda63cf71ec683cf5af7818ebbbd03498fb2094477bc617fbe', '1', null, null, '2012-02-14 14:55:04', '2012-02-14 14:55:04');
INSERT INTO `users` VALUES ('29', 'Syarikat Kasut Cap Ayam', 'kasut@g.com', 'a772703dcf0dc89a062d0c936a517bf6da34a77f480ed4e6e62a181f0596db39', 'c6924055240fa4cfa87fab59562ba975e549fdecaa86bd3dcef7faab39d87d6b', '2', null, null, '2012-02-14 14:59:52', '2012-02-14 14:59:52');
INSERT INTO `users` VALUES ('30', 'Hakim Hafiz', 'hakim@gmail.com', '52d30949bf93b57a020b6045e935e4135f248884ad982a2e80727a5a10c53c70', 'ba933534b1ba49ed81ca6a700f6a8ede874853a36165bede95062da4761841bf', '3', null, null, '2012-02-14 15:02:11', '2012-02-14 15:02:11');
INSERT INTO `users` VALUES ('31', 'Sharul Shah', 'sharul@g.com', 'd72d0562c710f954dcc9ab0624479645f634343b6ca0856285a1b1c31bb41734', 'a9f83b6fa2b9c34c60ebcd8f852443048f07ed3237746df77e29855cfd4b9b4d', '3', null, null, '2012-02-16 17:00:14', '2012-02-16 17:00:14');
INSERT INTO `users` VALUES ('32', 'jojo', 'jojo@g.com', '2a9c3b8a8777240a7520a417f8e516c7852e68eac57f9d554216e52001ea663e', '3c85e2bab26162a3ee922a7416c40aafd1cddfae2f75522107e09101bf79e3c3', '3', null, null, '2012-02-20 20:50:33', '2012-02-20 20:50:33');
INSERT INTO `users` VALUES ('33', 'Nur Amalina Bt Muhd Nasir', 'amalina@gmail.com', 'de320b2936b0c66ee0aa23bcd47b4fda3609d7aace4854a39ce5726780d41ec7', '581101f43e85838c4d3759dba2719a5f2f3e0254f6047e42907b282b24c5228f', '1', null, null, '2012-02-23 21:53:32', '2012-02-23 21:53:32');
INSERT INTO `users` VALUES ('34', 'Ikea Sdn Bhd', 'ikea@gmail.com', 'dcd8bb0ef8e67d747f9e7b1137d48c363164dfee2909a9a6541605d1bc7c24e3', '18db6c9a3598cfdc2ffa6682a648239d191b5d5df0c9fa7537aac84430db231f', '2', null, null, '2012-02-24 01:14:53', '2012-02-24 01:14:53');
INSERT INTO `users` VALUES ('35', 'Sharina Shahril', 'sharina@gmail.com', '5ec943b5254313e337f55283e266d367f6d09d129f55b7a3f0e1f67b39f52e49', '915416693161be8784b0299a683fcfa9a035a0cda24d4c989df15993c962858a', '3', null, null, '2012-02-24 01:33:51', '2012-02-24 01:33:51');
INSERT INTO `users` VALUES ('36', 'Ahmad Kamal ', 'akmal@gmail.com', 'b0bbd314fb33926c2fba7772d76f05053013a5dbc0db47970a57a77fa6ce4948', 'e224dcc0a2c98eb7dce049d6a4985c7a90686840dd731444027bb72eb017362d', '3', null, null, '2012-02-24 05:36:53', '2012-02-24 05:36:53');
INSERT INTO `users` VALUES ('37', 'Syarikat Peladang', 'peladang@gmail.com', '1ce15484efdc8e627704bd1583635d40ae68ed4bb3f5d1c412f2b54e0ab003b5', '68bfe6f6f937eaadcb559257ecde6a718811c7d79990c9680daa0164292ca876', '2', null, null, '2012-02-24 06:20:05', '2012-02-24 06:20:05');
INSERT INTO `users` VALUES ('38', 'Syarikat Koperasi Sdn Bhd', 'koperasi@gmail.com', 'ab2a82c6e7ae0c6f0c506d89da6e18e4b636c238f68c982c4959c1a7a8b098ff', 'ffeebc3e665b266c80095d0cec022dded5da6071391d895f81415d77c4c79f7a', '2', null, null, '2012-02-24 07:26:49', '2012-02-24 07:26:49');
INSERT INTO `users` VALUES ('39', 'Telekom Malaysia Berhad', 'telekom@gmail.com', '7680bed7f0f65eff3c28d7471b2da42cb2967372245ec592864e0c22eee46620', '256763b32e378bbe16badec20f0a07d4d6274032de35954ecf2717227dd111ba', '2', null, null, '2012-03-06 19:26:05', '2012-03-06 19:26:05');
INSERT INTO `users` VALUES ('40', 'Wan Kamarul Ariffin', 'wan@gmail.com', 'f87515e873c31a0b4e1923bd992b5ead213bab7ee5af1cb13f1cb89d3cc9f6fb', '19934fc36e0397ebb4ba8e66bb09442fe380f60d5aa479a0d74568656544c360', '1', null, null, '2012-03-06 19:56:06', '2012-03-06 19:56:06');
INSERT INTO `users` VALUES ('41', 'Fazura', 'fazura@gmail.com', '44b3c90a31fce605cea191154de2a22ce09c46c4fa51582e79b21fec3042acfc', '8d602de726c7a1d57a06094b5f2cdc48123ce81743aee8dc7d56831adf2d8eee', '3', null, null, '2012-03-07 01:48:12', '2012-03-07 01:48:12');
INSERT INTO `users` VALUES ('42', 'Syarikat A', 'syarikat@gmail.com', '188a7a776f2118259f072026811a00e485400a2ea09700f8523bfb35e656c4ee', '2f9bf7aa305b99a2f11b7766ce516baa7c85e58ae60830093db5bd52312cb26e', '2', null, null, '2012-03-08 04:30:39', '2012-03-08 04:30:39');
INSERT INTO `users` VALUES ('43', 'abc', 'abc@gmail.com', 'b70ba6d818642d7b918646fcbaf462c5001b7de13bf08fc32209e64db3d02636', '02f90fe6a658c37b1e1d77627eadc63c50b14943ba8cacbef3ed88dcc3218758', '1', null, null, '2012-04-20 23:28:24', '2012-04-20 23:28:24');
INSERT INTO `users` VALUES ('44', 'gdf', 'gdf@gmail.com', '53d920bac6a93613308603ab02db8a7244bb975822f3182551f64f7a86622a6f', '585046061db1a4a993f20f4a8cffbe500393c8759d7cf3c9e7a80c000f5fd00a', '2', null, null, '2012-04-20 23:38:16', '2012-04-20 23:38:16');
INSERT INTO `users` VALUES ('45', 'z', 'z@gmail.com', '4888f9de88c8332967e7f6c2e0197928f7f94c572a5034a665841343f6d1f30b', 'e89a1e7f0f4c4c28d7183f1744d407e3d2fdbcbf9999e6804a47d9b7858752dd', '3', null, null, '2012-04-20 23:41:49', '2012-04-20 23:41:49');
INSERT INTO `users` VALUES ('46', 'x', 'x@gmail.com', '64a8460e373a0c9c51f947729a2b35f734b35ac5c4ff09d91b6458ecfde839bc', 'f3236f69349f1b3b847641285f6ed32740d1b61cae61a4b6579a7375fa0543b0', '3', null, null, '2012-04-20 23:50:34', '2012-04-20 23:50:34');
INSERT INTO `users` VALUES ('47', 'c', 'c@gmail.com', '1fa61d8ff409744dd39d0069b550457fdd0fe79ce9f6afdfb2781786d26035f0', '273dfdba198f51a24e86317f9d50f4005b271dcf1d96102598eb6953d5e6cdb7', '3', null, null, '2012-04-20 23:54:41', '2012-04-20 23:54:41');
INSERT INTO `users` VALUES ('48', 'syarkat A', 'a@gmail.com', '4a173933d745fea4f3f4f1c74f90a9c81d681f7e4dc0de5059e3d8224e2c6f9f', 'fa674cd32b8383590ebd58e190a325c0ddc5818b9e2d043f02922bc022f48e80', '2', null, null, '2012-04-21 02:04:05', '2012-04-21 02:04:05');
INSERT INTO `users` VALUES ('49', 'syafiq', 'syafiq@gmail.com', '6fcf154beaad5f7411ec8bf27401d916462c0338d92b42809739fd4f4026fb07', 'cdc89fafe65dfe302261cc853f3716d44bdfcdaefe10f3f08d2c9bedd18c16fa', '1', null, null, '2012-04-21 02:13:19', '2012-04-21 02:13:19');
INSERT INTO `users` VALUES ('50', 'atikah', 'atikah@gmail.com', 'a030dc66510d8c96823104d0c4407e9f01c648bb9c7c3d1db5cfaf4bee81a264', 'c5fc2a2d9311c8c914dba9b5c030f274a3988029e19661f87b86833992313bf8', '3', null, null, '2012-04-21 02:37:46', '2012-04-21 02:37:46');
INSERT INTO `users` VALUES ('51', 'ijat', 'zat_90s@yahoo.com', '0c3c8c5189fd7e95e07501ce2b5c001f8ae511530672107afdab3b09c0007bf5', '756836e5f1927445d574e3677c3da46f081b07a3936c397490d9dc785499f2a2', '1', null, null, '2012-04-24 09:51:02', '2012-04-24 09:51:02');
INSERT INTO `users` VALUES ('52', 'icah', 'icahsahaja@yahoo.com', 'd51d769c5b9bfb6767fff834b4d8c8941dc68194490387a61523ec17c253a6fc', '991ebb4075d4655e331812b58c9729c4ebd4d939b614d559d8844a24d3ef9892', '1', null, null, '2012-04-25 05:08:02', '2012-04-25 05:08:02');
INSERT INTO `users` VALUES ('53', 'jaja', 'jaja@gmail.com', '21223a21cfab819a1868a40663bd75789ecb57127cf6274ede9016ea930d5022', '6aae75829ec0bb6b450bcc1e8e8f978ea566e79017a0b900d31112d5d1fabf07', '1', null, null, '2012-04-25 05:37:55', '2012-04-25 05:37:55');
INSERT INTO `users` VALUES ('54', 'pali', 'pali@gmail.com', '3b0b2ac8c8c978f94446857d5cd3124d73cc9b6e67ccecaa1ad159bdf268aa58', '59e715a2fef63b2362b1a0369b7744e41bb3ea38a92cb0edad60d2ced28e3af3', '1', null, null, '2012-04-25 08:13:15', '2012-04-25 08:13:15');
INSERT INTO `users` VALUES ('55', 'kadir', 'kadir@gmail.com', '241cf3a7fb9ae807df9000dc03ce4c10c15a1bbdd5801c6a53d0e0f7eda81408', '71706f63a5ae23ee37f57e24b03d8d4e32fe51cf671c6582258e37aa713cf1e4', '1', null, null, '2012-04-26 05:13:43', '2012-04-26 05:13:43');
INSERT INTO `users` VALUES ('58', '\'Atikah Syahidah binti Mohd Shafie', 'atikahmohdshafie@yahoo.com', '735fa76db0ea4c868006795fb4d52b6240f351f03963f61b36ecaee0e4d2eb8a', 'b788d7cba24a9e28e55fc3bdc032c7da48b2ec8ec9b75dc9fb18b2bfae171d37', '1', null, null, '2012-05-30 06:59:48', '2012-05-30 06:59:48');

-- ----------------------------
-- Table structure for `user_companies`
-- ----------------------------
DROP TABLE IF EXISTS `user_companies`;
CREATE TABLE `user_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT '1',
  `quantity` int(11) DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `action_status_id` int(11) DEFAULT '1',
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_companies
-- ----------------------------
INSERT INTO `user_companies` VALUES ('8', '1', '1', '1', '1', '18', '2012-02-12 20:38:51', '2012-04-26 13:39:19', '3', '1');
INSERT INTO `user_companies` VALUES ('20', '1', '2', '1', '1', '18', '2012-02-12 22:23:11', '2012-02-21 19:55:00', '2', null);
INSERT INTO `user_companies` VALUES ('21', '1', '3', '1', '1', '18', '2012-02-12 22:24:18', '2012-02-23 20:24:51', '2', null);
INSERT INTO `user_companies` VALUES ('24', '2', '6', '1', '1', '25', '2012-02-13 21:26:48', '2012-02-13 21:40:45', '4', null);
INSERT INTO `user_companies` VALUES ('25', '2', '3', '1', '1', '25', '2012-02-13 21:27:02', '2012-02-13 21:27:02', '1', null);
INSERT INTO `user_companies` VALUES ('26', '2', '4', '1', '1', '25', '2012-02-13 21:27:15', '2012-02-13 21:27:15', '1', null);
INSERT INTO `user_companies` VALUES ('47', '4', '6', '1', '1', '27', '2012-02-14 14:25:29', '2012-02-14 14:25:29', '1', null);
INSERT INTO `user_companies` VALUES ('48', '4', '5', '1', '1', '27', '2012-02-14 14:26:56', '2012-02-14 14:26:56', '1', null);
INSERT INTO `user_companies` VALUES ('49', '2', '1', '1', '1', '25', '2012-02-22 21:06:12', '2012-04-26 13:35:43', '2', null);
INSERT INTO `user_companies` VALUES ('58', '6', '1', '1', '1', '33', '2012-03-06 04:13:54', '2012-03-06 16:28:16', '3', '1');
INSERT INTO `user_companies` VALUES ('59', '6', '3', '1', '1', '33', '2012-03-06 04:14:14', '2012-03-06 16:24:50', '2', null);
INSERT INTO `user_companies` VALUES ('60', '6', '6', '1', '1', '33', '2012-03-06 16:20:32', '2012-03-06 16:26:24', '2', null);
INSERT INTO `user_companies` VALUES ('61', '6', '9', '1', '1', '33', '2012-03-06 16:20:59', '2012-03-06 16:20:59', '1', null);
INSERT INTO `user_companies` VALUES ('62', '6', '4', '1', '1', '33', '2012-03-06 16:22:48', '2012-03-06 16:22:48', '1', null);
INSERT INTO `user_companies` VALUES ('68', '7', '2', '1', '1', '40', '2012-03-08 03:00:52', '2012-03-08 03:00:52', '1', null);
INSERT INTO `user_companies` VALUES ('69', '7', '1', '1', '1', '40', '2012-03-08 04:38:15', '2012-03-08 04:43:40', '3', '1');
INSERT INTO `user_companies` VALUES ('70', '7', '12', '1', '1', '40', '2012-03-08 04:38:43', '2012-03-08 04:38:43', '2', null);
INSERT INTO `user_companies` VALUES ('71', '7', '6', '1', '1', '40', '2012-03-08 04:38:58', '2012-03-08 04:38:58', '2', null);
INSERT INTO `user_companies` VALUES ('72', '7', '5', '1', '1', '40', '2012-03-08 04:39:15', '2012-03-08 04:39:15', '1', null);
INSERT INTO `user_companies` VALUES ('73', '1', '8', '1', '1', '18', '2012-04-10 17:33:17', '2012-04-10 17:33:17', '1', null);
INSERT INTO `user_companies` VALUES ('74', '8', '1', '1', '1', '43', '2012-04-20 23:36:14', '2012-04-20 23:36:14', '1', null);
INSERT INTO `user_companies` VALUES ('75', '8', '2', '1', '1', '43', '2012-04-20 23:37:03', '2012-04-20 23:37:03', '1', null);
INSERT INTO `user_companies` VALUES ('76', '9', '14', '1', '1', '49', '2012-04-21 02:24:37', '2012-04-21 02:32:32', '3', '1');
INSERT INTO `user_companies` VALUES ('77', '9', '1', '1', '1', '49', '2012-04-21 02:26:06', '2012-04-21 02:26:06', '1', null);
INSERT INTO `user_companies` VALUES ('78', '9', '2', '1', '1', '49', '2012-04-21 02:27:27', '2012-04-21 02:27:27', '1', null);
INSERT INTO `user_companies` VALUES ('79', '9', '5', '1', '1', '49', '2012-04-21 02:27:48', '2012-04-21 02:27:48', '1', null);
INSERT INTO `user_companies` VALUES ('80', '9', '6', '1', '1', '49', '2012-04-21 02:28:06', '2012-04-21 02:28:06', '1', null);
INSERT INTO `user_companies` VALUES ('81', '10', '4', '1', '1', '51', '2012-04-24 09:56:42', '2012-04-24 09:56:42', '1', null);
INSERT INTO `user_companies` VALUES ('82', '10', '1', '1', '1', '51', '2012-04-24 09:57:36', '2012-04-24 10:02:15', '3', null);
INSERT INTO `user_companies` VALUES ('83', '11', '8', '1', '1', '52', '2012-04-25 05:09:00', '2012-04-25 05:09:00', '1', null);
INSERT INTO `user_companies` VALUES ('84', '10', '12', '1', '1', '51', '2012-04-25 17:13:30', '2012-04-25 17:13:30', '1', null);
INSERT INTO `user_companies` VALUES ('85', '10', '7', '1', '1', '51', '2012-04-26 13:32:23', '2012-04-26 13:32:23', '1', null);

-- ----------------------------
-- Table structure for `working_experiences`
-- ----------------------------
DROP TABLE IF EXISTS `working_experiences`;
CREATE TABLE `working_experiences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year_exp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `working_as` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of working_experiences
-- ----------------------------
INSERT INTO `working_experiences` VALUES ('6', 'KFC Holding', '3', 'Cashier', '33', '2012-03-08 02:35:41', '2012-03-08 02:35:41');
INSERT INTO `working_experiences` VALUES ('7', 'KFC sdn bhd', '2', 'Cashier', '49', '2012-04-21 02:20:07', '2012-04-21 02:20:07');

-- ----------------------------
-- Table structure for `writtens`
-- ----------------------------
DROP TABLE IF EXISTS `writtens`;
CREATE TABLE `writtens` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of writtens
-- ----------------------------
INSERT INTO `writtens` VALUES ('1', 'Excellent');
INSERT INTO `writtens` VALUES ('2', 'Good');
INSERT INTO `writtens` VALUES ('3', 'Fair');
