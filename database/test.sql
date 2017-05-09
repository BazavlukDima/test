/*
Navicat MySQL Data Transfer

Source Server         : test.loc
Source Server Version : 50555
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50555
File Encoding         : 65001

Date: 2017-05-09 09:32:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `models`
-- ----------------------------
DROP TABLE IF EXISTS `models`;
CREATE TABLE `models` (
  `ID` int(11) NOT NULL,
  `Name` char(30) NOT NULL DEFAULT '',
  `CountryCode` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`,`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of models
-- ----------------------------
INSERT INTO `models` VALUES ('1', 'Yaris', '3');
INSERT INTO `models` VALUES ('3', 'Mercedes-AMG C 63', '5');
INSERT INTO `models` VALUES ('4', 'Mercedes-AMG E 63 S 4 matic', '5');
INSERT INTO `models` VALUES ('5', 'RAV4', '3');
INSERT INTO `models` VALUES ('6', 'I8', '4');
INSERT INTO `models` VALUES ('7', 'x6', '4');
INSERT INTO `models` VALUES ('8', 'x5', '4');
INSERT INTO `models` VALUES ('9', 'miMax', '6');
INSERT INTO `models` VALUES ('10', 'Note 4', '6');
INSERT INTO `models` VALUES ('11', 'Note 7', '7');
INSERT INTO `models` VALUES ('12', 'Note 8', '7');

-- ----------------------------
-- Table structure for `subt`
-- ----------------------------
DROP TABLE IF EXISTS `subt`;
CREATE TABLE `subt` (
  `ID` int(11) NOT NULL,
  `Name` char(35) NOT NULL,
  `CountryCode` char(3) NOT NULL,
  `Code` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subt
-- ----------------------------
INSERT INTO `subt` VALUES ('1', 'Samsung', '1', '6');
INSERT INTO `subt` VALUES ('2', 'Xiaomi', '1', '7');
INSERT INTO `subt` VALUES ('3', 'Toyota', '2', '3');
INSERT INTO `subt` VALUES ('4', 'BMW', '2', '4');
INSERT INTO `subt` VALUES ('5', 'Mercedes', '2', '5');

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `Code` char(3) NOT NULL DEFAULT '',
  `Name` char(52) NOT NULL DEFAULT '',
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', 'Electronic');
INSERT INTO `type` VALUES ('2', 'Cars');
