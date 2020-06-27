/*
Navicat MySQL Data Transfer

Source Server         : jesse
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : db_myjsp

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2019-12-26 15:38:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `db_admin`
-- ----------------------------
DROP TABLE IF EXISTS `db_admin`;
CREATE TABLE `db_admin` (
  `adminName` varchar(20) NOT NULL,
  `adminPw` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`adminName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_admin
-- ----------------------------
INSERT INTO `db_admin` VALUES ('admin1', '123');
INSERT INTO `db_admin` VALUES ('admin2', '321');

-- ----------------------------
-- Table structure for `db_donation`
-- ----------------------------
DROP TABLE IF EXISTS `db_donation`;
CREATE TABLE `db_donation` (
  `userName` varchar(40) NOT NULL,
  `userId` int(20) NOT NULL,
  `userProject` varchar(50) DEFAULT NULL,
  `userMoney` float(20,0) DEFAULT NULL,
  `userTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_donation
-- ----------------------------
INSERT INTO `db_donation` VALUES ('Han', '1010', 'Load', '3000', '2019-12-25');


-- ----------------------------
-- Table structure for `db_message`
-- ----------------------------
DROP TABLE IF EXISTS `db_message`;
CREATE TABLE `db_message` (
  `userName` varchar(20) NOT NULL,
  `userMessage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_message
-- ----------------------------
INSERT INTO `db_message` VALUES ('aaaaaa', 'aaaaaaa');
INSERT INTO `db_message` VALUES ('asd', 'asdasd');
INSERT INTO `db_message` VALUES ('元旦', '提前通知元旦加班，早6点上班，晚12点下班，无加班费！祝各位元旦快乐！');
INSERT INTO `db_message` VALUES ('圣诞节', '各位圣诞快乐！');
INSERT INTO `db_message` VALUES ('年假', '大年30晚上回家吃个年夜饭吧。XD');
INSERT INTO `db_message` VALUES ('调休安排', '一个月休5天');

-- ----------------------------
-- Table structure for `db_user`
-- ----------------------------
DROP TABLE IF EXISTS `db_user`;
CREATE TABLE `db_user` (
  `userName` varchar(20) NOT NULL,
  `userId` varchar(20) NOT NULL,
  `userTel` bigint(20) DEFAULT NULL,
  `userAdd` varchar(20) DEFAULT NULL,
  `userEmail` bigint(20) DEFAULT NULL,
  `userPassword` varchar(20) DEFAULT NULL,
  `userPosition` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_user
-- ----------------------------
INSERT INTO `db_user` VALUES ('Caroline', '107', '12345678900', '临沂市', '9000', '908', 'Manager');
INSERT INTO `db_user` VALUES ('Jeff', '105', '12345678900', '德州市德城区', '5500', '666', 'Stuff');
INSERT INTO `db_user` VALUES ('Jesse', '101', '15864912232', 'Shandong', '99999', '123', 'Boss');
INSERT INTO `db_user` VALUES ('Jordan', '104', '12345678900', '聊城市', '5700', '123', 'Stuff');
INSERT INTO `db_user` VALUES ('Lianyang', '109', '17853596779', 'Shandong', '99999', '123', 'Boss');
INSERT INTO `db_user` VALUES ('Max', '108', '12345678900', '烟台市芝罘区', '9000', '888', 'Manager');
INSERT INTO `db_user` VALUES ('Nancy', '106', '12345678900', '潍坊昌邑市', '5500', '888', 'Stuff');
INSERT INTO `db_user` VALUES ('qwe', '112', '15864912222', 'Shandong', null, '123', null);
INSERT INTO `db_user` VALUES ('Sewage', '102', '15684137232', 'Jiangsu', '99999', '123', 'Boss');
