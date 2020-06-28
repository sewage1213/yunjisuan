/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50729
Source Host           : localhost:3306
Source Database       : rg1701-23-rwh

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2020-06-28 09:45:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminID` int(10) NOT NULL,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `roleid` varchar(10) DEFAULT NULL,
  `rolename` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'tom', '123456', '1', 'tom');

-- ----------------------------
-- Table structure for `vip`
-- ----------------------------
DROP TABLE IF EXISTS `vip`;
CREATE TABLE `vip` (
  `sid` int(10) NOT NULL,
  `sno` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `university` varchar(10) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `major` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vip
-- ----------------------------
