/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : student_ms

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2020-06-27 17:01:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adid` int(11) NOT NULL AUTO_INCREMENT,
  `pwd` varchar(30) DEFAULT NULL,
  `roleid` varchar(30) DEFAULT NULL,
  `rolename` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`adid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '123', '0', '超级管理员', 'tom');
INSERT INTO `admin` VALUES ('2', '123456', '0', '超级管理员', 'zmm');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` varchar(12) NOT NULL,
  `spwd` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `grade` varchar(30) DEFAULT NULL,
  `major` varchar(30) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `university` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('20172202789', '111333', '王五', '2010-03-26', '外国语学院', '1705', '英语', '男', '鲁东大学');
INSERT INTO `student` VALUES ('20172202935', '123456', '张蒙蒙  ', '2019-04-28', '信电学院  ', '1702  ', '软件工程  ', '女', '鲁东大学  ');
INSERT INTO `student` VALUES ('20172202936', '111', '张三', '2020-04-01', '文学院', '1703', '汉语言文学', '男', '鲁东大学');
INSERT INTO `student` VALUES ('20172202958', '123', '杜金芝', '2020-03-30', '信电学院 ', '1701 ', '软件工程 ', '女', '鲁东大学 ');
INSERT INTO `student` VALUES ('20172203456', '1122', '张三', '2020-02-04', '物理学院', '1703', '物理', '男', '鲁东大学');
INSERT INTO `student` VALUES ('20172204567', '123456789', '李四', '2020-03-02', '化学院', '1702', '材料分析', '男', '鲁东大学');
