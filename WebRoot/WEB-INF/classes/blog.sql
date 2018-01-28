/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50157
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50157
File Encoding         : 65001

Date: 2015-07-23 12:08:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IP` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `YANZHENGXINXI` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', null, '123', '123', null);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERS` varchar(255) DEFAULT NULL,
  `MESSAGE` longtext,
  `TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for xinzhongsi
-- ----------------------------
DROP TABLE IF EXISTS `xinzhongsi`;
CREATE TABLE `xinzhongsi` (
  `XZS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) DEFAULT NULL,
  `AUTHOR` varchar(255) DEFAULT NULL,
  `TIME` datetime DEFAULT NULL,
  `CONTENT` longtext,
  PRIMARY KEY (`XZS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xinzhongsi
-- ----------------------------
INSERT INTO `xinzhongsi` VALUES ('11', '不怕找不到出口，就怕让怯懦成为借口。', '朱志强', '2015-07-21 19:22:06', '<p>不怕找不到出口，就怕让怯懦成为借口。</p>\r\n\r\n<p><img alt=\"\" src=\"/blog/userfiles/images/a.jpg\" style=\"height:500px; width:500px\" /></p>\r\n');

-- ----------------------------
-- Table structure for xzs_answer
-- ----------------------------
DROP TABLE IF EXISTS `xzs_answer`;
CREATE TABLE `xzs_answer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IP` varchar(255) DEFAULT NULL,
  `ANSWER` varchar(255) DEFAULT NULL,
  `XZS_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKDC1CA62C5779D649` (`XZS_ID`),
  CONSTRAINT `FKDC1CA62C5779D649` FOREIGN KEY (`XZS_ID`) REFERENCES `xinzhongsi` (`XZS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xzs_answer
-- ----------------------------
