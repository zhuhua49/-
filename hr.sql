/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : hr

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-06-09 17:05:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for archives
-- ----------------------------
DROP TABLE IF EXISTS `archives`;
CREATE TABLE `archives` (
  `uersID` int(3) NOT NULL AUTO_INCREMENT,
  `archivesID` char(12) DEFAULT NULL,
  `mechanism1` varchar(20) DEFAULT NULL,
  `mechanism2` varchar(20) DEFAULT NULL,
  `mechanism3` varchar(20) DEFAULT NULL,
  `job_classification` varchar(20) DEFAULT NULL,
  `job_name` varchar(20) DEFAULT NULL,
  `job_title` varchar(20) DEFAULT NULL,
  `uers_name` varchar(20) DEFAULT NULL,
  `sex` char(2) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `QQ` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `postcode` varchar(20) DEFAULT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  `homeplace` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `nation` varchar(20) DEFAULT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `political` varchar(20) DEFAULT NULL,
  `IDcard` char(18) DEFAULT NULL,
  `social_card` char(18) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  `education` varchar(20) DEFAULT NULL,
  `major` varchar(20) DEFAULT NULL,
  `standardID` int(3) DEFAULT NULL,
  `bank` varchar(20) DEFAULT NULL,
  `account` varchar(20) DEFAULT NULL,
  `specialty` varchar(20) DEFAULT NULL,
  `hobby` varchar(20) DEFAULT NULL,
  `record` text,
  `family` text,
  `note` text,
  `registrar` varchar(20) DEFAULT NULL,
  `registration_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `photo` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uersID`),
  KEY `standardID` (`standardID`),
  KEY `archivesID` (`archivesID`),
  CONSTRAINT `standardID` FOREIGN KEY (`standardID`) REFERENCES `salary_standard` (`standardID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of archives
-- ----------------------------
INSERT INTO `archives` VALUES ('28', '199801030628', '集团', '生物科技公司', '开发组', '软件开发', '项目经理', '高级工程师', '张三', '男', 'zs@qq.com', '123', '321', '456', '湛江', '512325', '中国', '广东', '1998-01-01', '回族', '佛教', '党员', '440202199801011234', '440202199801011234', '20', '高中', '信息管理与信息系统', '2', '中国建设银行', '123456', '数据库', '乒乓球', '履历', '一人', '无', 'ad', '2018-12-18 12:48:58', 'null', '正常');
INSERT INTO `archives` VALUES ('29', '199801020529', '集团', '软件公司', '测试组', '软件测试', '工程师', '工程师', '李四', '女', 'lisi@qq.com', '123123', '321321', '456456', '广东海洋大学', '512311', '中国', '湛江', '1998-02-02', '满族', '伊斯兰教', '其他', '440202199802021235', '440202199802021235', '19', '本科及以上', '计算机科学与技术', '1', '中国工商银行', '654321', '后台', '足球', '我是李四', '一个人', '没有', 'ad1', '2018-12-18 13:04:01', 'null', '正常');
INSERT INTO `archives` VALUES ('30', '199501030430', '集团', '生物科技公司', '外包组', '软件设计', '工程师', '高级工程师', '王五', '男', 'wang@qq.com', '534', '234', '452', '广东', '511432', '中国', '广州', '1995-03-06', '汉族', '基督教', '群众', '440202199503061234', '440202199503061234', '30', '本科及以上', '软件工程', '1', '中国农业银行', '2367', '前端', '足球', '暂无', '三口之家', '暂无', '张三', '2018-12-18 11:42:00', null, '待复核');
INSERT INTO `archives` VALUES ('31', '199701020531', '集团', '软件公司', '测试组', '软件分析', '工程师', '高级工程师', '林大胆', '男', 'ldd@qq.com', '2345', '3456', '1134', '广东海洋大学', '512311', '中国', '湛江', '1997-04-01', '汉族', '无', '党员', '440202199704011764', '440202199704011764', '24', '本科及以上', '软件工程', '3', '中国人民银行', '3312', '后台', '篮球', '没有', '三口', '没有', '张三', '2018-12-18 13:04:06', 'null', '正常');

-- ----------------------------
-- Table structure for mechanism_job
-- ----------------------------
DROP TABLE IF EXISTS `mechanism_job`;
CREATE TABLE `mechanism_job` (
  `ID` int(2) NOT NULL AUTO_INCREMENT,
  `IDs` int(2) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`IDs`),
  CONSTRAINT `ID` FOREIGN KEY (`IDs`) REFERENCES `mechanism_job` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mechanism_job
-- ----------------------------
INSERT INTO `mechanism_job` VALUES ('1', null, '集团', 'I级机构');
INSERT INTO `mechanism_job` VALUES ('2', '1', '软件公司', 'II级机构');
INSERT INTO `mechanism_job` VALUES ('3', '1', '生物科技公司', 'II级机构');
INSERT INTO `mechanism_job` VALUES ('4', null, '外包组', 'III级机构');
INSERT INTO `mechanism_job` VALUES ('5', null, '测试组', 'III级机构');
INSERT INTO `mechanism_job` VALUES ('6', null, '开发组', 'III级机构');

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `ID` int(6) NOT NULL AUTO_INCREMENT,
  `archivesID` char(12) DEFAULT NULL,
  `uers_name` varchar(20) DEFAULT NULL,
  `paymentID` int(3) DEFAULT NULL,
  `base_pay` float(6,2) DEFAULT NULL,
  `travel_allowance` float(6,2) DEFAULT NULL,
  `lunch_allowance` float(6,2) DEFAULT NULL,
  `communication_allowance` float(6,2) DEFAULT NULL,
  `endowment_insurance` float(6,2) DEFAULT NULL,
  `medical_insurance` float(6,2) DEFAULT NULL,
  `unemployment_insurance` float(6,2) DEFAULT NULL,
  `housing_fund` float(6,2) DEFAULT NULL,
  `reward` float(6,2) DEFAULT NULL,
  `fine` float(6,2) DEFAULT NULL,
  `total` float(7,2) DEFAULT NULL,
  `actual_sum` float(7,2) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `registration_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `archivesID` (`archivesID`),
  KEY `paymentID` (`paymentID`),
  CONSTRAINT `archivesID` FOREIGN KEY (`archivesID`) REFERENCES `archives` (`archivesID`),
  CONSTRAINT `paymentID` FOREIGN KEY (`paymentID`) REFERENCES `payment_form` (`paymentID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES ('3', '199801030628', '张三', '3', '5000.00', '300.00', '500.00', '500.00', '400.00', '103.00', '25.00', '400.00', '100.00', '200.00', '6172.00', '6072.00', '正常', '2018-12-17 16:39:26');
INSERT INTO `payment` VALUES ('4', '199801020529', '李四', '4', '5000.00', '300.00', '500.00', '500.00', '400.00', '103.00', '25.00', '400.00', '200.00', '100.00', '6172.00', '6272.00', '正常', '2018-12-18 13:07:16');
INSERT INTO `payment` VALUES ('5', '199701020531', '林大胆', '4', '5000.00', '400.00', '600.00', '600.00', '400.00', '103.00', '25.00', '400.00', '200.00', '100.00', '6472.00', '6572.00', '正常', '2018-12-18 13:07:16');
INSERT INTO `payment` VALUES ('6', '199801020529', '李四', '5', '5000.00', '300.00', '500.00', '500.00', '400.00', '103.00', '25.00', '400.00', '200.00', '100.00', '6172.00', '6272.00', '待复核', '2018-12-18 16:44:14');
INSERT INTO `payment` VALUES ('7', '199701020531', '林大胆', '5', '5000.00', '400.00', '600.00', '600.00', '400.00', '103.00', '25.00', '400.00', '200.00', '100.00', '6472.00', '6572.00', '待复核', '2018-12-18 16:44:14');

-- ----------------------------
-- Table structure for payment_form
-- ----------------------------
DROP TABLE IF EXISTS `payment_form`;
CREATE TABLE `payment_form` (
  `paymentID` int(3) NOT NULL AUTO_INCREMENT,
  `mechanism1` varchar(20) DEFAULT NULL,
  `mechanism2` varchar(20) DEFAULT NULL,
  `mechanism3` varchar(20) DEFAULT NULL,
  `numberall` int(2) DEFAULT NULL,
  `total` float(7,2) DEFAULT NULL,
  `actual_sum` float(7,2) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `registrar` varchar(20) DEFAULT NULL,
  `registration_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`paymentID`),
  KEY `mechanism1` (`mechanism1`),
  KEY `mechanism2` (`mechanism2`),
  KEY `mechanism3` (`mechanism3`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payment_form
-- ----------------------------
INSERT INTO `payment_form` VALUES ('3', '集团', '生物科技公司', '开发组', '1', '6172.00', '6072.00', '正常', '李四', '2018-12-17 16:39:26');
INSERT INTO `payment_form` VALUES ('4', '集团', '软件公司', '测试组', '2', '12644.00', '12844.00', '正常', '李四', '2018-12-18 13:07:16');
INSERT INTO `payment_form` VALUES ('5', '集团', '软件公司', '测试组', '2', '12644.00', '12844.00', '待复核', '李四', '2018-12-18 16:44:14');

-- ----------------------------
-- Table structure for salary_management
-- ----------------------------
DROP TABLE IF EXISTS `salary_management`;
CREATE TABLE `salary_management` (
  `itemID` int(2) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salary_management
-- ----------------------------

-- ----------------------------
-- Table structure for salary_standard
-- ----------------------------
DROP TABLE IF EXISTS `salary_standard`;
CREATE TABLE `salary_standard` (
  `standardID` int(3) NOT NULL AUTO_INCREMENT,
  `standard_name` varchar(20) DEFAULT NULL,
  `setter` varchar(20) DEFAULT NULL,
  `registrar` varchar(20) DEFAULT NULL,
  `registration_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `base_pay` float(6,2) DEFAULT NULL,
  `travel_allowance` float(6,2) DEFAULT NULL,
  `lunch_allowance` float(6,2) DEFAULT NULL,
  `communication_allowance` float(6,2) DEFAULT NULL,
  `endowment_insurance` float(6,2) DEFAULT NULL,
  `medical_insurance` float(6,2) DEFAULT NULL,
  `unemployment_insurance` float(6,2) DEFAULT NULL,
  `housing_fund` float(6,2) DEFAULT NULL,
  `total` float(7,2) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`standardID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salary_standard
-- ----------------------------
INSERT INTO `salary_standard` VALUES ('1', '软件工程师', '张三', '李四', '2018-12-16 21:28:33', '5000.00', '300.00', '500.00', '500.00', '400.00', '103.00', '25.00', '400.00', '6172.00', '正常', '');
INSERT INTO `salary_standard` VALUES ('2', '项目经理', '张三', '李四', '2018-12-16 22:32:49', '5000.00', '300.00', '500.00', '500.00', '400.00', '103.00', '25.00', '400.00', '6172.00', '正常', '');
INSERT INTO `salary_standard` VALUES ('3', '高级工程师', '张三', '李四', '2018-12-18 12:58:39', '5000.00', '400.00', '600.00', '600.00', '400.00', '103.00', '25.00', '400.00', '6472.00', '正常', '');
