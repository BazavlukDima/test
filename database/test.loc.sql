/*
Navicat MySQL Data Transfer

Source Server         : test.loc
Source Server Version : 50555
Source Host           : localhost:3306
Source Database       : test.loc

Target Server Type    : MYSQL
Target Server Version : 50555
File Encoding         : 65001

Date: 2017-05-08 14:55:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `car_lada_model`
-- ----------------------------
DROP TABLE IF EXISTS `car_lada_model`;
CREATE TABLE `car_lada_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Product's` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MEMORY AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of car_lada_model
-- ----------------------------
INSERT INTO `car_lada_model` VALUES ('5', 'granta');
INSERT INTO `car_lada_model` VALUES ('4', 'kalina');
INSERT INTO `car_lada_model` VALUES ('3', 'priora');
INSERT INTO `car_lada_model` VALUES ('1', 'vesta');
INSERT INTO `car_lada_model` VALUES ('2', '4x4');

-- ----------------------------
-- Table structure for `car_subtype`
-- ----------------------------
DROP TABLE IF EXISTS `car_subtype`;
CREATE TABLE `car_subtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Product's` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_subtype
-- ----------------------------
INSERT INTO `car_subtype` VALUES ('1', 'Lada');
INSERT INTO `car_subtype` VALUES ('2', 'Toyota');

-- ----------------------------
-- Table structure for `car_toyota_model`
-- ----------------------------
DROP TABLE IF EXISTS `car_toyota_model`;
CREATE TABLE `car_toyota_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Product's` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MEMORY AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of car_toyota_model
-- ----------------------------
INSERT INTO `car_toyota_model` VALUES ('4', 'Yaris');
INSERT INTO `car_toyota_model` VALUES ('3', 'Auris');
INSERT INTO `car_toyota_model` VALUES ('2', 'Rav4');
INSERT INTO `car_toyota_model` VALUES ('1', 'Land_Cruiser');

-- ----------------------------
-- Table structure for `el_an_model`
-- ----------------------------
DROP TABLE IF EXISTS `el_an_model`;
CREATE TABLE `el_an_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Electro_prod` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of el_an_model
-- ----------------------------
INSERT INTO `el_an_model` VALUES ('1', 'Sony');
INSERT INTO `el_an_model` VALUES ('2', 'Google');
INSERT INTO `el_an_model` VALUES ('3', 'HTC');
INSERT INTO `el_an_model` VALUES ('4', 'xiaomi');

-- ----------------------------
-- Table structure for `el_i_model`
-- ----------------------------
DROP TABLE IF EXISTS `el_i_model`;
CREATE TABLE `el_i_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Electro_prod` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of el_i_model
-- ----------------------------
INSERT INTO `el_i_model` VALUES ('1', 'Iphone7');
INSERT INTO `el_i_model` VALUES ('2', 'Iphone6s');
INSERT INTO `el_i_model` VALUES ('3', 'Iphone6');
INSERT INTO `el_i_model` VALUES ('4', 'Iphone5s');
INSERT INTO `el_i_model` VALUES ('5', 'Iphone5');

-- ----------------------------
-- Table structure for `el_subtype`
-- ----------------------------
DROP TABLE IF EXISTS `el_subtype`;
CREATE TABLE `el_subtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Electro_prod` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of el_subtype
-- ----------------------------
INSERT INTO `el_subtype` VALUES ('1', 'Android');
INSERT INTO `el_subtype` VALUES ('2', 'Iphone');

-- ----------------------------
-- Table structure for `Type`
-- ----------------------------
DROP TABLE IF EXISTS `Type`;
CREATE TABLE `Type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prod` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Type
-- ----------------------------
INSERT INTO `Type` VALUES ('1', 'Car');
INSERT INTO `Type` VALUES ('2', 'Electro');
