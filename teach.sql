/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : teach

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-06-14 23:40:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `no` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `pass` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1000', 'anodern', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for classroom
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom` (
  `rno` varchar(20) NOT NULL,
  `capacity` int NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '普通',
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classroom
-- ----------------------------
INSERT INTO `classroom` VALUES ('东201', '180', '普通');
INSERT INTO `classroom` VALUES ('东202', '180', '普通');
INSERT INTO `classroom` VALUES ('东301', '180', '普通');
INSERT INTO `classroom` VALUES ('东302', '180', '普通');
INSERT INTO `classroom` VALUES ('东A101', '90', '普通');
INSERT INTO `classroom` VALUES ('东A102', '90', '普通');
INSERT INTO `classroom` VALUES ('东A103', '90', '普通');
INSERT INTO `classroom` VALUES ('东A104', '90', '普通');
INSERT INTO `classroom` VALUES ('东A201', '90', '普通');
INSERT INTO `classroom` VALUES ('东A202', '90', '普通');
INSERT INTO `classroom` VALUES ('东A203', '90', '普通');
INSERT INTO `classroom` VALUES ('东A204', '90', '普通');
INSERT INTO `classroom` VALUES ('东A301', '90', '普通');
INSERT INTO `classroom` VALUES ('东A302', '90', '普通');
INSERT INTO `classroom` VALUES ('东A303', '90', '普通');
INSERT INTO `classroom` VALUES ('东A304', '90', '普通');
INSERT INTO `classroom` VALUES ('东A401', '90', '普通');
INSERT INTO `classroom` VALUES ('东A402', '90', '普通');
INSERT INTO `classroom` VALUES ('东A403', '90', '普通');
INSERT INTO `classroom` VALUES ('东A404', '90', '普通');
INSERT INTO `classroom` VALUES ('东B101', '135', '普通');
INSERT INTO `classroom` VALUES ('东B102', '135', '普通');
INSERT INTO `classroom` VALUES ('东B201', '135', '普通');
INSERT INTO `classroom` VALUES ('东B202', '135', '普通');
INSERT INTO `classroom` VALUES ('东B301', '135', '普通');
INSERT INTO `classroom` VALUES ('东B302', '135', '普通');
INSERT INTO `classroom` VALUES ('东B401', '135', '普通');
INSERT INTO `classroom` VALUES ('东B402', '135', '普通');
INSERT INTO `classroom` VALUES ('南A101', '90', '普通');
INSERT INTO `classroom` VALUES ('南A102', '90', '普通');
INSERT INTO `classroom` VALUES ('南A103', '90', '普通');
INSERT INTO `classroom` VALUES ('南A104', '90', '普通');
INSERT INTO `classroom` VALUES ('南A105', '90', '普通');
INSERT INTO `classroom` VALUES ('南A106', '90', '普通');
INSERT INTO `classroom` VALUES ('南A107', '90', '普通');
INSERT INTO `classroom` VALUES ('南A108', '90', '普通');
INSERT INTO `classroom` VALUES ('南A109', '90', '普通');
INSERT INTO `classroom` VALUES ('南A110', '90', '普通');
INSERT INTO `classroom` VALUES ('南A201', '90', '普通');
INSERT INTO `classroom` VALUES ('南A202', '90', '普通');
INSERT INTO `classroom` VALUES ('南A203', '90', '普通');
INSERT INTO `classroom` VALUES ('南A204', '90', '普通');
INSERT INTO `classroom` VALUES ('南A205', '90', '普通');
INSERT INTO `classroom` VALUES ('南A206', '90', '普通');
INSERT INTO `classroom` VALUES ('南A207', '90', '普通');
INSERT INTO `classroom` VALUES ('南A208', '90', '普通');
INSERT INTO `classroom` VALUES ('南A209', '90', '普通');
INSERT INTO `classroom` VALUES ('南A210', '90', '普通');
INSERT INTO `classroom` VALUES ('南A301', '90', '普通');
INSERT INTO `classroom` VALUES ('南A302', '90', '普通');
INSERT INTO `classroom` VALUES ('南A303', '90', '普通');
INSERT INTO `classroom` VALUES ('南A304', '90', '普通');
INSERT INTO `classroom` VALUES ('南A305', '90', '普通');
INSERT INTO `classroom` VALUES ('南A306', '90', '普通');
INSERT INTO `classroom` VALUES ('南A307', '90', '普通');
INSERT INTO `classroom` VALUES ('南A308', '90', '普通');
INSERT INTO `classroom` VALUES ('南A309', '90', '普通');
INSERT INTO `classroom` VALUES ('南A310', '90', '普通');
INSERT INTO `classroom` VALUES ('南B101', '90', '普通');
INSERT INTO `classroom` VALUES ('南B102', '90', '普通');
INSERT INTO `classroom` VALUES ('南B103', '90', '普通');
INSERT INTO `classroom` VALUES ('南B104', '90', '普通');
INSERT INTO `classroom` VALUES ('南B105', '90', '普通');
INSERT INTO `classroom` VALUES ('南B106', '90', '普通');
INSERT INTO `classroom` VALUES ('南B107', '90', '普通');
INSERT INTO `classroom` VALUES ('南B108', '90', '普通');
INSERT INTO `classroom` VALUES ('南B109', '90', '普通');
INSERT INTO `classroom` VALUES ('南B110', '90', '普通');
INSERT INTO `classroom` VALUES ('南B111', '90', '普通');
INSERT INTO `classroom` VALUES ('南B112', '90', '普通');
INSERT INTO `classroom` VALUES ('南B201', '50', '普通');
INSERT INTO `classroom` VALUES ('南B202', '50', '普通');
INSERT INTO `classroom` VALUES ('南B203', '50', '普通');
INSERT INTO `classroom` VALUES ('南B204', '50', '普通');
INSERT INTO `classroom` VALUES ('南B205', '50', '普通');
INSERT INTO `classroom` VALUES ('南B206', '50', '普通');
INSERT INTO `classroom` VALUES ('南B207', '50', '普通');
INSERT INTO `classroom` VALUES ('南B208', '50', '普通');
INSERT INTO `classroom` VALUES ('南B209', '50', '普通');
INSERT INTO `classroom` VALUES ('南B210', '50', '普通');
INSERT INTO `classroom` VALUES ('南B211', '50', '普通');
INSERT INTO `classroom` VALUES ('南B212', '50', '普通');
INSERT INTO `classroom` VALUES ('南B301', '50', '普通');
INSERT INTO `classroom` VALUES ('南B302', '50', '普通');
INSERT INTO `classroom` VALUES ('南B303', '50', '普通');
INSERT INTO `classroom` VALUES ('南B304', '50', '普通');
INSERT INTO `classroom` VALUES ('南B305', '50', '普通');
INSERT INTO `classroom` VALUES ('南B306', '50', '普通');
INSERT INTO `classroom` VALUES ('南B307', '50', '普通');
INSERT INTO `classroom` VALUES ('南B308', '50', '普通');
INSERT INTO `classroom` VALUES ('南B309', '50', '普通');
INSERT INTO `classroom` VALUES ('南B310', '50', '普通');
INSERT INTO `classroom` VALUES ('南B311', '50', '普通');
INSERT INTO `classroom` VALUES ('南B312', '50', '普通');
INSERT INTO `classroom` VALUES ('南B401', '50', '普通');
INSERT INTO `classroom` VALUES ('南B402', '50', '普通');
INSERT INTO `classroom` VALUES ('南B403', '50', '普通');
INSERT INTO `classroom` VALUES ('南B404', '50', '普通');
INSERT INTO `classroom` VALUES ('南B405', '50', '普通');
INSERT INTO `classroom` VALUES ('南B406', '50', '普通');
INSERT INTO `classroom` VALUES ('南B407', '50', '普通');
INSERT INTO `classroom` VALUES ('南B408', '50', '普通');
INSERT INTO `classroom` VALUES ('南B409', '50', '普通');
INSERT INTO `classroom` VALUES ('南B410', '50', '普通');
INSERT INTO `classroom` VALUES ('南B411', '50', '普通');
INSERT INTO `classroom` VALUES ('南B412', '50', '普通');
INSERT INTO `classroom` VALUES ('南B501', '50', '普通');
INSERT INTO `classroom` VALUES ('南B502', '50', '普通');
INSERT INTO `classroom` VALUES ('南B503', '50', '普通');
INSERT INTO `classroom` VALUES ('南B504', '50', '普通');
INSERT INTO `classroom` VALUES ('南B505', '50', '普通');
INSERT INTO `classroom` VALUES ('南B506', '50', '普通');
INSERT INTO `classroom` VALUES ('南B507', '50', '普通');
INSERT INTO `classroom` VALUES ('南B508', '50', '普通');
INSERT INTO `classroom` VALUES ('南B509', '50', '普通');
INSERT INTO `classroom` VALUES ('南B510', '50', '普通');
INSERT INTO `classroom` VALUES ('南B511', '50', '普通');
INSERT INTO `classroom` VALUES ('南B512', '50', '普通');
INSERT INTO `classroom` VALUES ('南B601', '50', '普通');
INSERT INTO `classroom` VALUES ('南B602', '50', '普通');
INSERT INTO `classroom` VALUES ('南B603', '50', '普通');
INSERT INTO `classroom` VALUES ('南B604', '50', '普通');
INSERT INTO `classroom` VALUES ('南B605', '50', '普通');
INSERT INTO `classroom` VALUES ('南B606', '50', '普通');
INSERT INTO `classroom` VALUES ('文理A101', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A102', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A103', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A104', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A105', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A106', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A107', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A108', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A109', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A110', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A111', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A112', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A201', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A202', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A203', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A204', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A205', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A206', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A207', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A208', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A209', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A210', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A211', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A212', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A301', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A302', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A303', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A304', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A305', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A306', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A307', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A308', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A309', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A310', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A311', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A312', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A401', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A402', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A403', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A404', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A405', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A406', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A407', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A408', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A409', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A410', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A411', '60', '普通');
INSERT INTO `classroom` VALUES ('文理A412', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B101', '160', '普通');
INSERT INTO `classroom` VALUES ('文理B102', '160', '普通');
INSERT INTO `classroom` VALUES ('文理B103', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B104', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B105', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B106', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B107', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B108', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B109', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B110', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B111', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B112', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B201', '160', '普通');
INSERT INTO `classroom` VALUES ('文理B202', '160', '普通');
INSERT INTO `classroom` VALUES ('文理B203', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B204', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B205', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B206', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B207', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B208', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B209', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B210', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B211', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B212', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B301', '160', '普通');
INSERT INTO `classroom` VALUES ('文理B302', '160', '普通');
INSERT INTO `classroom` VALUES ('文理B303', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B304', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B305', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B306', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B307', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B308', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B309', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B310', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B311', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B312', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B401', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B402', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B403', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B404', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B405', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B406', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B407', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B408', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B409', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B410', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B411', '60', '普通');
INSERT INTO `classroom` VALUES ('文理B412', '60', '普通');
INSERT INTO `classroom` VALUES ('艺设101', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设102', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设103', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设104', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设105', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设106', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设107', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设108', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设109', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设110', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设201', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设202', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设203', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设204', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设205', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设206', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设207', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设208', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设209', '50', '普通');
INSERT INTO `classroom` VALUES ('艺设210', '50', '普通');
INSERT INTO `classroom` VALUES ('西101', '90', '普通');
INSERT INTO `classroom` VALUES ('西102', '90', '普通');
INSERT INTO `classroom` VALUES ('西201', '180', '普通');
INSERT INTO `classroom` VALUES ('西202', '180', '普通');
INSERT INTO `classroom` VALUES ('西301', '180', '普通');
INSERT INTO `classroom` VALUES ('西302', '180', '普通');
INSERT INTO `classroom` VALUES ('西A101', '90', '普通');
INSERT INTO `classroom` VALUES ('西A102', '90', '普通');
INSERT INTO `classroom` VALUES ('西A103', '90', '普通');
INSERT INTO `classroom` VALUES ('西A104', '90', '普通');
INSERT INTO `classroom` VALUES ('西A201', '90', '普通');
INSERT INTO `classroom` VALUES ('西A202', '90', '普通');
INSERT INTO `classroom` VALUES ('西A203', '90', '普通');
INSERT INTO `classroom` VALUES ('西A204', '90', '普通');
INSERT INTO `classroom` VALUES ('西A301', '90', '普通');
INSERT INTO `classroom` VALUES ('西A302', '90', '普通');
INSERT INTO `classroom` VALUES ('西A303', '90', '普通');
INSERT INTO `classroom` VALUES ('西A304', '90', '普通');
INSERT INTO `classroom` VALUES ('西A401', '90', '普通');
INSERT INTO `classroom` VALUES ('西A402', '90', '普通');
INSERT INTO `classroom` VALUES ('西A403', '90', '普通');
INSERT INTO `classroom` VALUES ('西A404', '90', '普通');
INSERT INTO `classroom` VALUES ('西B101', '135', '普通');
INSERT INTO `classroom` VALUES ('西B102', '135', '普通');
INSERT INTO `classroom` VALUES ('西B201', '135', '普通');
INSERT INTO `classroom` VALUES ('西B202', '135', '普通');
INSERT INTO `classroom` VALUES ('西B301', '135', '普通');
INSERT INTO `classroom` VALUES ('西B302', '135', '普通');
INSERT INTO `classroom` VALUES ('西B401', '135', '普通');
INSERT INTO `classroom` VALUES ('西B402', '135', '普通');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cno` int NOT NULL,
  `cname` varchar(20) NOT NULL,
  `credit` float NOT NULL,
  `type` varchar(10) NOT NULL,
  `secoll` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '开课学院',
  `first` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('301110014', '思政课程实践Ⅰ', '1', '实践课', '开课学院', null);
INSERT INTO `course` VALUES ('302110019', '概论', '5', '必修课', '开课学院', null);
INSERT INTO `course` VALUES ('401161002', '大学生创新创业教育', '1.5', '必修课', '开课学院', null);
INSERT INTO `course` VALUES ('402112022', '大学体育Ⅲ', '0.5', '必修课', '开课学院', null);
INSERT INTO `course` VALUES ('402112023', '大学体育Ⅳ', '0.5', '必修课', '开课学院', null);
INSERT INTO `course` VALUES ('502104162', '大学外语课程模块Ⅲ', '3', '必修课', '开课学院', null);
INSERT INTO `course` VALUES ('502104163', '大学外语课程模块Ⅳ', '2', '必修课', '开课学院', null);
INSERT INTO `course` VALUES ('701111011', '概率论与数理统计A', '3', '必修课', '开课学院', '高等数学');
INSERT INTO `course` VALUES ('701111014', '线性代数A', '2', '必修课', '开课学院', '高等数学');
INSERT INTO `course` VALUES ('702111002', '	大学物理AⅡ', '3', '必修课', '开课学院', null);
INSERT INTO `course` VALUES ('806302028', '计算机组成与结构', '3.5', '必修课', '开课学院', null);
INSERT INTO `course` VALUES ('806302612', '	数据结构与算法', '3', '必修课', '开课学院', null);
INSERT INTO `course` VALUES ('806402011', 'JAVA基础', '4', '必修课', '开课学院', null);
INSERT INTO `course` VALUES ('806902023', 'JAVA基础课程设计', '1', '实践课', '开课学院', null);
INSERT INTO `course` VALUES ('806902025', '数据库原理及应用课设', '1', '实践课', '开课学院', null);
INSERT INTO `course` VALUES ('809023502', '操作系统A', '3', '	必修课', '开课学院', null);
INSERT INTO `course` VALUES ('809023505', '	计算机网络A', '3.5', '必修课', '开课学院', null);
INSERT INTO `course` VALUES ('809023506', '数据库原理及应用A', '4', '必修课', '开课学院', null);
INSERT INTO `course` VALUES ('809502911', '软件工程导论', '2', '必修课', '开课学院', null);
INSERT INTO `course` VALUES ('809502912', 'WEB应用开发技术', '4', '必修课', '开课学院', null);
INSERT INTO `course` VALUES ('809902680', '数据结构与算法课程设计', '1', '实践课', '开课学院', null);
INSERT INTO `course` VALUES ('809902681', '数据结构与算法实验', '1', '实践课', '开课学院', null);
INSERT INTO `course` VALUES ('809902901', 'WEB应用开发技术课程设计', '2', '实践课', '开课学院', null);
INSERT INTO `course` VALUES ('1205230001', '信息检索', '1', '必修课', '开课学院', null);

-- ----------------------------
-- Table structure for csel
-- ----------------------------
DROP TABLE IF EXISTS `csel`;
CREATE TABLE `csel` (
  `sno` int NOT NULL,
  `cno` int NOT NULL,
  `tno` int NOT NULL,
  `rno` varchar(10) NOT NULL,
  `year` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `score` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`sno`,`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of csel
-- ----------------------------
INSERT INTO `csel` VALUES ('202180301', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180301', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180302', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180302', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180303', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180303', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180304', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180304', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180305', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180305', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180306', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180306', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180307', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180307', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180308', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180308', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180309', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180309', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180310', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180310', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180311', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180311', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180312', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180312', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180313', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180313', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180314', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180314', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180315', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180315', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180316', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180316', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180317', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180317', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180318', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180318', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180319', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180319', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180320', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180320', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180321', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180321', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180322', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180322', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180323', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180323', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180324', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180324', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180325', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180325', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180326', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180326', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);
INSERT INTO `csel` VALUES ('202180399', '502104163', '25001', '文理B110', '20201', '五,1-2', null);
INSERT INTO `csel` VALUES ('202180399', '806302028', '25002', '东A101', '20201', '四,1-2', null);
INSERT INTO `csel` VALUES ('202180399', '806302612', '25002', '东A201', '20201', '二,5-6;四,7-8', '83');
INSERT INTO `csel` VALUES ('202180399', '809023502', '25001', '西A304', '20201', '一,1-2;三,1-2', null);
INSERT INTO `csel` VALUES ('202180399', '809502912', '25001', '西A301', '20201', '三,3-4;五,3-4', null);

-- ----------------------------
-- Table structure for cselrange
-- ----------------------------
DROP TABLE IF EXISTS `cselrange`;
CREATE TABLE `cselrange` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `srange` varchar(1024) NOT NULL,
  `crange` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(40) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `year` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cselrange
-- ----------------------------
INSERT INTO `cselrange` VALUES ('1', '2020-1学期公选课', '软件181,软件182', '809023502,806302612,809502912', '二,3-4;五,1-2', '2020-06-12 00:00:00', '2020-06-19 00:00:00', '20201');
INSERT INTO `cselrange` VALUES ('2', '2020-1学期跨专业选修', '软件181,软件182', '701111011,701111014,702111002', '二,3-4;五,1-2', '2020-06-14 00:00:00', '2020-06-21 00:00:00', '20201');

-- ----------------------------
-- Table structure for cseltemp
-- ----------------------------
DROP TABLE IF EXISTS `cseltemp`;
CREATE TABLE `cseltemp` (
  `sno` int NOT NULL,
  `cno` int NOT NULL,
  `tno` int DEFAULT NULL,
  `rno` int DEFAULT NULL,
  `year` varchar(255) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `rangeid` int NOT NULL,
  PRIMARY KEY (`sno`,`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cseltemp
-- ----------------------------
INSERT INTO `cseltemp` VALUES ('202180301', '809502912', null, null, '20201', null, '1');
INSERT INTO `cseltemp` VALUES ('202180331', '809502912', null, null, '20201', null, '1');
INSERT INTO `cseltemp` VALUES ('202180399', '701111014', null, null, '20201', null, '2');
INSERT INTO `cseltemp` VALUES ('202180399', '806302612', null, null, '20201', null, '1');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sno` int NOT NULL,
  `sname` varchar(20) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `birthday` date NOT NULL,
  `nation` varchar(10) NOT NULL,
  `grade` int NOT NULL,
  `secoll` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `spec` varchar(20) NOT NULL,
  `sclass` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pass` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('202160101', '苏醒', '男', '1997-12-17', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160102', '魏旭东', '男', '1998-07-18', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160103', '吴靖', '男', '1998-04-17', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160104', '徐金洋', '男', '1998-03-01', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160105', '薛洪宇', '男', '1997-09-23', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160106', '杨杰生', '男', '1998-05-18', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160107', '于淼', '男', '1998-04-05', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160108', '袁鑫', '男', '1998-06-14', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160109', '张海', '男', '1997-12-27', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160110', '张治祥', '男', '1997-10-28', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160111', '周阳', '男', '1998-05-11', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160112', '郑伟', '男', '1998-03-02', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160113', '印邵胜', '男', '1998-08-20', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160114', '周彦宇', '男', '1997-12-26', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160201', '黄浩', '女', '1998-03-07', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160202', '黄航伟', '女', '1998-03-17', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160203', '董惠媛', '女', '1997-10-08', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160204', '韩业红', '女', '1998-08-13', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160205', '李隆琴', '女', '1998-01-19', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160206', '谢萌萌', '女', '1997-12-26', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160207', '张雨雯', '女', '1998-01-19', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160208', '陈保华', '男', '1998-04-17', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160209', '陈天朔', '男', '1998-02-09', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160210', '崔凯', '男', '1997-11-08', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160211', '黄海涛', '男', '1998-05-27', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160212', '黄家伟', '男', '1998-04-27', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160213', '柯宇恒', '男', '1998-03-19', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160214', '李广道', '男', '1998-08-14', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160215', '李磊', '男', '1998-02-19', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160216', '李正', '男', '1998-06-22', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160217', '苗轶舜', '男', '1998-07-27', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160218', '彭磊', '男', '1998-01-15', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160219', '盛成成', '男', '1997-11-21', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160220', '苏奕辰', '男', '1998-03-14', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160221', '王子健', '男', '1998-06-17', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160222', '翁诚', '男', '1998-04-16', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160223', '熊尚华', '男', '1998-02-04', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160224', '许泽宇', '男', '1998-04-03', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160225', '严晨', '男', '1998-03-22', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160226', '颜明', '男', '1998-01-22', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160227', '杨树伟', '男', '1998-05-27', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160228', '殷明', '男', '1997-10-21', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160229', '余宝荣', '男', '1998-08-11', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160230', '臧文轩', '男', '1998-04-04', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160231', '张艺缤', '男', '1998-01-09', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160232', '赵浩文', '男', '1998-03-27', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160233', '周一伟', '男', '1997-11-15', '汉', '2016', '计算机学院', '计算机科学与技术', '计算机162', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160301', '薛佳丽', '女', '1998-07-13', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160302', '刘婷', '女', '1998-06-02', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160303', '邵淑婷', '女', '1998-02-28', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160304', '王婧', '女', '1997-12-11', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160305', '袁维维', '女', '1998-02-22', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160306', '步健', '男', '1997-11-29', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160307', '陈浩', '男', '1998-05-04', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160308', '陈泰良', '男', '1998-01-12', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160309', '邓连', '男', '1997-10-08', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160310', '葛元清', '男', '1998-05-10', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160311', '黄加林', '男', '1998-07-23', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160312', '黄顺园', '男', '1997-11-15', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160313', '李啸', '男', '1998-03-18', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160314', '李子昂', '男', '1998-04-28', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160315', '刘凡', '男', '1998-08-18', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160316', '刘张辉', '男', '1998-05-26', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160317', '马龙骅', '男', '1997-09-08', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160318', '莫延', '男', '1998-06-17', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160319', '潘登', '男', '1997-12-11', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160320', '冉照彬', '男', '1998-08-09', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160321', '石益磊', '男', '1998-02-28', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160322', '田梓寅', '男', '1998-04-14', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160323', '王磊', '男', '1998-08-23', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160324', '王雄鹏', '男', '1998-07-19', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160325', '吴开天', '男', '1998-01-23', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160326', '闫守虎', '男', '1997-11-07', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160327', '杨睿', '男', '1997-12-06', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160328', '余正清', '男', '1997-11-18', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160329', '张玳铭', '男', '1998-04-21', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160330', '张路', '男', '1998-07-07', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160331', '张绍泓', '男', '1998-01-17', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160332', '张天宇', '男', '1997-10-04', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160333', '张祥辉', '男', '1997-12-30', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160334', '张煜', '男', '1998-04-20', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160335', '朱昊辰', '男', '1997-11-21', '汉', '2016', '计算机学院', '软件工程', '软件161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160401', '彭亮', '女', '1998-03-22', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160402', '于波', '女', '1998-07-05', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160403', '顾妍', '女', '1998-01-23', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160404', '郭康', '女', '1997-09-30', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160405', '方艳', '女', '1998-08-07', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160406', '郭媛媛', '女', '1998-03-19', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160407', '尚瑞婷', '女', '1998-02-07', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160408', '杨拉拉', '女', '1998-08-18', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160409', '张玲玉', '女', '1998-04-03', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160410', '丁宇', '男', '1997-12-04', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160411', '梁潇', '男', '1998-06-20', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160412', '梅峰鑫', '男', '1998-02-16', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160413', '潘大柱', '男', '1998-04-18', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160414', '屠锦江', '男', '1998-04-27', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160415', '杨国华', '男', '1998-07-23', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160416', '张健', '男', '1997-10-27', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160417', '张轶博', '男', '1998-03-15', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160501', '姬昊宇', '女', '1998-04-06', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160502', '傅益娴', '女', '1998-05-20', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160503', '陈鹏', '女', '1997-09-21', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160504', '陈学芹', '女', '1998-05-11', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160505', '胡小磊', '女', '1998-01-27', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160506', '刘玉婷', '女', '1998-07-19', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160507', '肖雨', '女', '1998-01-13', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160508', '徐新宇', '女', '1998-01-15', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160509', '杨洁', '女', '1998-03-05', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160510', '张丽', '女', '1998-06-19', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160511', '赵妍', '女', '1998-06-15', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160512', '曹春波', '男', '1998-07-08', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160513', '曾凌伟', '男', '1997-12-10', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160514', '杜宇', '男', '1997-10-25', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160515', '高立强', '男', '1998-04-13', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160516', '高瞻远', '男', '1998-03-23', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160517', '韩啸', '男', '1998-03-12', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160518', '蒋诚骏', '男', '1998-04-08', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160519', '解小飞', '男', '1998-02-04', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160520', '李康辉', '男', '1997-10-03', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160521', '刘平红', '男', '1998-06-27', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160522', '吕泉润', '男', '1998-08-08', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160523', '马玉亮', '男', '1998-05-17', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160524', '卿光胜', '男', '1997-10-11', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160525', '桑徐', '男', '1997-11-25', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160526', '沈秦凯', '男', '1998-01-18', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160527', '孙思俊', '男', '1998-07-08', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160528', '汪明瑞', '男', '1998-04-08', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160529', '王士万', '男', '1998-02-13', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160530', '吴震宇', '男', '1998-06-16', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160531', '徐飞', '男', '1997-11-28', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160532', '许浒', '男', '1997-10-16', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160533', '杨啸天', '男', '1998-07-15', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160534', '雍康正', '男', '1998-01-04', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160535', '袁朋槐', '男', '1998-04-28', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160536', '张麒', '男', '1998-03-24', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160537', '周坚', '男', '1997-09-29', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160538', '朱福冬', '男', '1998-04-11', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160539', '朱子熹', '男', '1998-01-13', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160540', '王紫薇', '男', '1997-09-03', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160541', '胡浩', '男', '1998-03-27', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160542', '王宇', '男', '1998-04-24', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160543', '王秦科', '男', '1997-09-25', '汉', '2016', '计算机学院', '网络工程', '网络161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160601', '丁亚楠', '女', '1998-01-24', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160602', '王思思', '女', '1998-05-26', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160603', '邢哲铭', '女', '1997-12-27', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160604', '薛焱', '女', '1997-10-05', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160605', '张乐', '女', '1997-10-12', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160606', '张强', '女', '1997-10-20', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160607', '朱虹', '女', '1997-12-19', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160608', '曹昊', '男', '1997-12-18', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160609', '常轩铭', '男', '1998-03-26', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160610', '丁宇仕', '男', '1998-03-06', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160611', '冯秋峰', '男', '1998-05-13', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160612', '高阳', '男', '1997-09-23', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160613', '郭丰啸', '男', '1998-05-28', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160614', '黄子彦', '男', '1998-02-07', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160615', '蒋霖苏', '男', '1998-01-08', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160616', '李兵', '男', '1998-01-26', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160617', '李洋洋', '男', '1998-06-19', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160618', '刘帅峰', '男', '1997-12-28', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160619', '马向荣', '男', '1998-07-18', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160620', '潘浩', '男', '1998-02-14', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160621', '全鑫', '男', '1998-06-28', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160622', '沈高昂', '男', '1997-10-06', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160623', '宋家豪', '男', '1997-09-20', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160624', '陶阳', '男', '1998-05-25', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160625', '王晨晨', '男', '1998-02-16', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160626', '王劲博', '男', '1997-09-01', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160627', '吴亚磊', '男', '1998-03-15', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160628', '夏云鹏', '男', '1998-07-25', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160629', '徐阳阳', '男', '1997-11-19', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160630', '杨吉新', '男', '1997-12-18', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160631', '姚乐鑫', '男', '1998-06-23', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160632', '喻伟', '男', '1997-11-28', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160633', '袁铜锁', '男', '1997-09-26', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160634', '张培源', '男', '1998-03-08', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160635', '张学能', '男', '1998-01-14', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160636', '朱承林', '男', '1997-11-04', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160637', '朱宇涵', '男', '1997-09-24', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160638', '吴法池', '男', '1998-08-09', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160639', '张云霞', '男', '1998-05-28', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160640', '周欣然', '男', '1998-04-22', '汉', '2016', '汽车与轨道交通学院', '交通运输', '交通161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160701', '陈斌', '男', '1998-05-22', '汉', '2016', '汽车与轨道交通学院', '城市轨道交通', '轨道161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160702', '陈相池', '男', '1998-05-10', '汉', '2016', '汽车与轨道交通学院', '城市轨道交通', '轨道161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160703', '陈奕旭', '男', '1998-06-22', '汉', '2016', '汽车与轨道交通学院', '城市轨道交通', '轨道161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160704', '吕轶伟', '男', '1998-03-01', '汉', '2016', '汽车与轨道交通学院', '城市轨道交通', '轨道161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160705', '马松豪', '男', '1998-04-23', '汉', '2016', '汽车与轨道交通学院', '城市轨道交通', '轨道161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160706', '阮泽云', '男', '1998-07-12', '汉', '2016', '汽车与轨道交通学院', '城市轨道交通', '轨道161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160707', '宋剑雄', '男', '1998-01-02', '汉', '2016', '汽车与轨道交通学院', '城市轨道交通', '轨道161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160708', '唐明龙', '男', '1998-08-08', '汉', '2016', '汽车与轨道交通学院', '城市轨道交通', '轨道161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160709', '王程', '男', '1998-04-12', '汉', '2016', '汽车与轨道交通学院', '城市轨道交通', '轨道161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160710', '王敏杰', '男', '1998-04-04', '汉', '2016', '汽车与轨道交通学院', '城市轨道交通', '轨道161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160711', '王垚', '男', '1998-08-16', '汉', '2016', '汽车与轨道交通学院', '城市轨道交通', '轨道161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160712', '项宇程', '男', '1998-06-04', '汉', '2016', '汽车与轨道交通学院', '城市轨道交通', '轨道161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160713', '徐一凡', '男', '1997-12-02', '汉', '2016', '汽车与轨道交通学院', '城市轨道交通', '轨道161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160714', '杨宇航', '男', '1997-11-22', '汉', '2016', '汽车与轨道交通学院', '城市轨道交通', '轨道161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160715', '尤琪', '男', '1998-05-05', '汉', '2016', '汽车与轨道交通学院', '城市轨道交通', '轨道161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160716', '张文景', '男', '1998-07-14', '汉', '2016', '汽车与轨道交通学院', '城市轨道交通', '轨道161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160717', '赵振乐', '男', '1998-04-28', '汉', '2016', '汽车与轨道交通学院', '城市轨道交通', '轨道161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202160718', '庄鹏', '男', '1997-10-01', '汉', '2016', '汽车与轨道交通学院', '城市轨道交通', '轨道161', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170101', '史逸凡', '男', '1999-07-07', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170102', '孙斌杰', '男', '1999-08-10', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170103', '孙宇轩', '男', '1999-04-06', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170104', '唐轩宇', '男', '1999-06-13', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170105', '王行健', '男', '1999-05-15', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170106', '王一飞', '男', '1998-11-22', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170107', '吴润飞', '男', '1999-06-17', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170108', '徐康玮', '男', '1998-12-03', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170109', '许舒航', '男', '1998-12-30', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170110', '杨竣淇', '男', '1999-06-26', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170111', '余剑翔', '男', '1999-03-05', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170112', '翟益都', '男', '1999-03-15', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170113', '张雨嘉', '男', '1999-07-02', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170114', '赵文汇', '男', '1999-06-05', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170115', '智康烈', '男', '1998-10-19', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170116', '朱睿', '男', '1999-05-04', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170201', '蔡可盈', '女', '1999-08-27', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170202', '丁卫佳', '女', '1999-06-17', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170203', '马云唯', '女', '1999-01-03', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170204', '陶媛媛', '女', '1999-07-05', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170205', '张雨雯', '女', '1999-04-04', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170206', '陈超', '男', '1999-01-21', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170207', '费亦扬', '男', '1999-01-26', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170208', '龚许晨', '男', '1998-10-25', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170209', '韩旭东', '男', '1998-11-28', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170210', '胡宇昂', '男', '1998-11-12', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170211', '姜笑奕', '男', '1999-04-18', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170212', '李承洋', '男', '1998-12-01', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170213', '刘云飞', '男', '1999-02-04', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170214', '陆辰霖', '男', '1998-11-07', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170215', '吕宗盛', '男', '1999-04-19', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170216', '潘辰斐', '男', '1999-05-08', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170217', '邵敬一', '男', '1998-09-15', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170218', '施昶', '男', '1999-03-01', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170219', '苏若愚', '男', '1999-02-24', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170220', '孙克焱', '男', '1998-11-27', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170221', '孙雨晨', '男', '1999-02-12', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170222', '晏新宽', '男', '1998-10-11', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170223', '翟骁', '男', '1999-04-24', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170224', '赵申楠', '男', '1999-08-07', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170225', '周鑫源', '男', '1998-09-26', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170226', '邹润霖', '男', '1999-03-19', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170227', '王雅琪', '男', '1998-11-03', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170228', '杨鑫', '男', '1999-05-26', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170229', '喻宁', '男', '1999-06-08', '汉', '2017', '计算机学院', '计算机科学与技术', '计算机172', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170301', '韩娟娟', '女', '1998-11-25', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170302', '黄颖', '女', '1998-11-13', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170303', '王金花', '女', '1998-12-29', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170304', '杨雨昕', '女', '1998-09-28', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170305', '祝叶', '女', '1999-01-07', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170306', '曹华清', '男', '1999-05-27', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170307', '陈正烨', '男', '1999-02-15', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170308', '仇学富', '男', '1999-07-25', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170309', '范文杰', '男', '1999-02-02', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170310', '冯猛', '男', '1999-07-22', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170311', '葛广仁', '男', '1998-10-02', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170312', '胡兵', '男', '1999-01-12', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170313', '黄晨宇', '男', '1998-12-12', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170314', '吉刘俊', '男', '1999-02-13', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170315', '季嘉豪', '男', '1999-08-09', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170316', '姜佳华', '男', '1999-06-08', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170317', '蒋袁丁', '男', '1999-07-16', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170318', '黎耀', '男', '1999-03-07', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170319', '林贤明', '男', '1999-06-02', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170320', '马文超', '男', '1999-07-08', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170321', '毛思洋', '男', '1999-07-23', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170322', '彭聪', '男', '1998-12-23', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170323', '普林杰', '男', '1999-01-17', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170324', '宋志鹏', '男', '1999-08-10', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170325', '孙浩芳', '男', '1998-09-08', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170326', '王诗旭', '男', '1998-10-06', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170327', '王永虎', '男', '1999-08-26', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170328', '吴晓斌', '男', '1998-12-17', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170329', '徐建伟', '男', '1998-10-03', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170330', '杨浩', '男', '1998-10-03', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170331', '杨尚雨', '男', '1999-03-05', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170332', '张岩明', '男', '1999-03-21', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170333', '赵袁涛', '男', '1999-02-27', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170334', '郑阳', '男', '1999-02-22', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170335', '周杰', '男', '1999-08-14', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170336', '朱浩', '男', '1998-12-07', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170337', '朱立弟', '男', '1998-10-07', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170401', '何翊邦', '女', '1999-02-15', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170402', '李文鑫', '女', '1998-12-15', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170403', '王青云', '女', '1999-01-24', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170404', '李淑文', '女', '1998-11-25', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170405', '王晓云', '女', '1999-04-05', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170406', '印嘉庆', '女', '1999-04-27', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170407', '蔡宏熹', '男', '1999-04-09', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170408', '褚陆津', '男', '1998-09-11', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170409', '冯雷', '男', '1998-11-12', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170410', '顾凌峰', '男', '1999-02-13', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170411', '胡立帅', '男', '1999-08-09', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170412', '黄亚鹏', '男', '1999-05-20', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170413', '吉鑫', '男', '1998-09-14', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170414', '江子涵', '男', '1998-09-01', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170415', '蒋铖涛', '男', '1999-01-27', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170416', '李宗蔚', '男', '1999-05-02', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170417', '马涛', '男', '1998-11-13', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170418', '潘威', '男', '1999-06-20', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170419', '平松涛', '男', '1998-12-08', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170420', '师勋', '男', '1999-06-20', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170421', '孙传捷', '男', '1998-12-02', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170422', '覃志超', '男', '1999-03-08', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170423', '王鹏', '男', '1999-02-23', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170424', '王轩', '男', '1998-12-26', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170425', '郑浩南', '男', '1999-03-20', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170426', '周仕尧', '男', '1998-12-08', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170427', '朱浩瑞', '男', '1999-07-21', '汉', '2017', '计算机学院', '软件工程', '软件171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170501', '范思蕊', '女', '1998-10-29', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170502', '刘思婷', '女', '1999-02-24', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170503', '彭燕苹', '女', '1999-07-18', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170504', '沈佳绮', '女', '1999-07-20', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170505', '张凯雯', '女', '1999-04-07', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170506', '蔡研', '男', '1998-09-07', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170507', '陈斌', '男', '1999-06-17', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170508', '陈帅', '男', '1998-09-17', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170509', '储啸', '男', '1999-04-01', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170510', '戴宇科', '男', '1999-02-02', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170511', '丁子卿', '男', '1998-12-03', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170512', '冯家程', '男', '1998-12-28', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170513', '郭宇', '男', '1998-12-16', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170514', '韩祥', '男', '1998-11-24', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170515', '黄亚君', '男', '1999-01-26', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170516', '李国强', '男', '1999-04-16', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170517', '李浩铭', '男', '1999-03-21', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170518', '刘纯', '男', '1999-03-13', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170519', '刘昊鑫', '男', '1999-08-10', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170520', '欧飞跃', '男', '1998-12-09', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170521', '潘煜', '男', '1998-09-24', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170522', '沈宇', '男', '1998-09-01', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170523', '施帅军', '男', '1998-09-21', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170524', '覃文成', '男', '1998-09-16', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170525', '童家豪', '男', '1999-06-19', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170526', '王会景', '男', '1999-06-20', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170527', '王思', '男', '1999-03-04', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170528', '吴宇恒', '男', '1999-08-16', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170529', '杨晨宇', '男', '1999-06-19', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170530', '杨书鑫', '男', '1999-02-09', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170531', '袁昊', '男', '1999-08-08', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170532', '张齐旭', '男', '1998-11-29', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170533', '张沈逸', '男', '1998-10-01', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170534', '赵越', '男', '1998-12-06', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170535', '周文炜', '男', '1999-03-24', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170536', '卓松', '男', '1999-08-15', '汉', '2017', '计算机学院', '网络工程', '网络171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170601', '高阳', '女', '1999-05-27', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170602', '罗炜祺', '女', '1999-05-04', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170603', '齐晨玲', '女', '1999-02-13', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170604', '孙鑫', '女', '1999-08-05', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170605', '别傲然', '女', '1999-01-27', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170606', '曹子健', '男', '1999-07-06', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170607', '陈树洋', '男', '1998-09-30', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170608', '陈郅杰', '男', '1999-01-27', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170609', '崔万林', '男', '1998-12-12', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170610', '董强', '男', '1998-11-28', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170611', '郭吴晨', '男', '1998-09-21', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170612', '韩巍', '男', '1999-02-06', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170613', '黄琪雄', '男', '1998-12-23', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170614', '姜培均', '男', '1998-09-13', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170615', '李昊蒙', '男', '1998-09-16', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170616', '李玉聪', '男', '1998-09-10', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170617', '刘帆', '男', '1998-10-26', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170618', '宁凡', '男', '1999-02-25', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170619', '沈佳浩', '男', '1998-10-16', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170620', '沈宇峰', '男', '1998-09-14', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170621', '宋继鹏', '男', '1999-07-02', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170622', '唐宸宇', '男', '1999-03-28', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170623', '王浩', '男', '1999-05-20', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170624', '王磊', '男', '1998-10-12', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170625', '王炜涛', '男', '1999-02-02', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170626', '吴英杰', '男', '1999-05-26', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170627', '徐飞飞', '男', '1999-01-28', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170628', '杨帆', '男', '1998-09-11', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170629', '袁岑', '男', '1999-07-23', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170630', '张汉林', '男', '1999-07-23', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170631', '张庆添', '男', '1999-08-18', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170632', '赵清奇', '男', '1999-06-21', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170633', '周柏任', '男', '1999-03-15', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170634', '周新宇', '男', '1998-12-17', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170635', '祝飞', '男', '1999-01-09', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170636', '邹秋石', '男', '1998-10-23', '汉', '2017', '汽车与轨道交通学院', '交通运输', '交通171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170701', '刘吉鹏', '女', '1999-01-12', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170702', '付丽', '女', '1999-06-16', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170703', '匡晨', '女', '1998-09-17', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170704', '张佳敏', '女', '1998-12-11', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170705', '陈天', '男', '1998-10-29', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170706', '陈宇鹏', '男', '1999-07-26', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170707', '陈子贤', '男', '1998-09-26', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170708', '方晨豪', '男', '1998-12-17', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170709', '葛林波', '男', '1998-10-10', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170710', '顾伟冬', '男', '1998-10-27', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170711', '杭伟', '男', '1999-03-21', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170712', '胡天宇', '男', '1999-04-23', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170713', '黄家径', '男', '1999-02-28', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170714', '李冬', '男', '1998-12-29', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170715', '刘季松', '男', '1999-06-12', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170716', '刘炜', '男', '1999-03-28', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170717', '刘泽军', '男', '1998-11-08', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170718', '吕立泳', '男', '1999-07-03', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202170719', '沈明龙', '男', '1999-04-07', '汉', '2017', '汽车与轨道交通学院', '城市轨道交通', '轨道171', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180101', '陈慧', '女', '2000-01-01', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180102', '徐婉妮', '女', '1999-12-30', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180103', '杨文秀', '女', '2000-08-13', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180104', '杨云兮', '女', '2000-05-01', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180105', '朱静', '女', '1999-09-09', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180106', '陈育龙', '男', '2000-02-24', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180107', '杜鹏飞', '男', '2000-04-19', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180108', '樊英泽', '男', '2000-05-27', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180109', '龚浩', '男', '2000-01-12', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180110', '顾世鑫', '男', '2000-02-22', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180111', '黄东宇', '男', '2000-04-06', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180112', '吉君', '男', '2000-07-17', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180113', '姜琼', '男', '2000-04-01', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180114', '李安琦', '男', '2000-08-15', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180115', '刘航', '男', '2000-03-18', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180116', '刘思洋', '男', '1999-10-09', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180117', '陆子阳', '男', '2000-08-03', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180118', '毛辰星', '男', '1999-12-02', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180119', '潘启航', '男', '1999-10-23', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180120', '沈溢良', '男', '2000-03-21', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180121', '宋琦', '男', '1999-11-15', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180122', '陶逸伟', '男', '2000-04-24', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180123', '王思川', '男', '2000-02-05', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180124', '王彦博', '男', '1999-11-29', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180125', '王宇翔', '男', '1999-11-16', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180126', '魏振宇', '男', '2000-06-13', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180127', '吴宇舰', '男', '2000-08-02', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180128', '邢子俊', '男', '2000-08-14', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180129', '杨炼鑫', '男', '2000-08-08', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180130', '叶康', '男', '2000-07-03', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180131', '俞思远', '男', '2000-06-19', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180132', '张凯聪', '男', '2000-03-19', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180133', '张思宇', '男', '2000-04-10', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180134', '赵悦', '男', '2000-01-20', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180201', '李思婷', '女', '1999-10-05', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180202', '孙依然', '女', '2000-06-26', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180203', '徐子璎', '女', '2000-04-12', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180204', '杨亚楠', '女', '2000-04-16', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180205', '李臻炜', '女', '2000-08-07', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180206', '刘嘉淇', '女', '1999-10-16', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180207', '刘亿繁', '男', '2000-02-16', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180208', '吕宗真', '男', '2000-06-09', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180209', '聂鹏成', '男', '2000-04-26', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180210', '施德泷', '男', '2000-06-08', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180211', '王淳', '男', '1999-11-24', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180212', '王连杰', '男', '2000-06-04', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180213', '王新龙', '男', '2000-07-05', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180214', '吴光源', '男', '2000-08-24', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180215', '武鹏旭', '男', '2000-02-25', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180216', '杨戴咏', '男', '2000-05-05', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180217', '姚峰', '男', '1999-12-09', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180218', '赵正', '男', '2000-05-10', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180219', '郭香杉', '男', '2000-03-20', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180220', '金恬', '男', '1999-11-02', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180221', '罗婷婷', '男', '2000-03-10', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180222', '肖桂阳', '男', '2000-02-22', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180223', '张瓘赫', '男', '1999-12-05', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180224', '陈永康', '男', '2000-08-12', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180225', '黄鹤', '男', '1999-11-20', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180226', '黄学刚', '男', '1999-12-20', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180227', '籍文曦', '男', '1999-09-04', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180228', '李俊超', '男', '2000-02-13', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180229', '李帅', '男', '2000-08-17', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180230', '林钟', '男', '2000-08-20', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180231', '刘涛', '男', '2000-08-25', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180232', '卢枫岚', '男', '2000-08-07', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180233', '罗斌', '男', '2000-05-07', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180234', '潘帅成', '男', '2000-05-06', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180235', '沈晨', '男', '2000-03-05', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180236', '宋润华', '男', '1999-09-02', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180237', '苏嘉凯', '男', '2000-06-15', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180238', '王子涵', '男', '2000-07-19', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180239', '吴伟', '男', '2000-07-26', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180240', '吴卓文', '男', '2000-02-18', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180241', '张康良', '男', '2000-02-02', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180242', '张旺', '男', '2000-06-20', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180243', '刘清雨', '男', '2000-02-19', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180244', '王兆琦', '男', '2000-05-04', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180245', '杨一鸣', '男', '1999-11-16', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180246', '曾能标', '男', '2000-06-01', '汉', '2018', '计算机学院', '计算机科学与技术', '计算机182', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180301', '陈洁文', '女', '2000-06-03', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180302', '储江云', '女', '1999-09-12', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180303', '顾文权', '男', '2000-07-14', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180304', '胡锦华', '男', '2000-05-16', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180305', '黄俊', '男', '2000-08-13', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180306', '黄志群', '男', '1999-10-29', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180307', '李鹏', '男', '1999-09-16', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180308', '李万凯', '男', '1999-11-01', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180309', '梁泽', '男', '1999-11-08', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180310', '刘柏寒', '男', '2000-02-10', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180311', '卢逸尘', '男', '2000-04-06', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180312', '潘成东', '男', '2000-03-17', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180313', '钱荣炜', '男', '2000-07-21', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180314', '史学超', '男', '2000-05-23', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180315', '宋子乐', '男', '2000-04-10', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180316', '陶毅', '男', '2000-04-22', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180317', '王德明', '男', '2000-04-26', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180318', '王泽华', '男', '1999-10-23', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180319', '王子阳', '男', '1999-11-22', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180320', '吴征涛', '男', '1999-09-09', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180321', '严芝浩', '男', '2000-08-17', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180322', '杨盛凯', '男', '2000-08-04', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180323', '喻天翼', '男', '1999-11-24', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180324', '张昊天', '男', '1999-09-04', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180325', '张天宇', '男', '2000-03-25', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180326', '章帅', '男', '2000-08-17', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180399', '学生301', '女', '2000-01-01', '汉', '2018', '计算机学院', '软件工程', '软件181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180401', '曹嘉琪', '女', '2000-03-10', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180402', '陈晗昕', '女', '2000-04-01', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180403', '李木子', '女', '1999-12-29', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180404', '田炜钰', '女', '2000-01-13', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180405', '袁清华', '女', '2000-07-09', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180406', '张雯', '女', '2000-08-22', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180407', '周恬', '女', '1999-09-26', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180408', '曹义鑫', '男', '1999-11-08', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180409', '陈雪通', '男', '2000-07-20', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180410', '陈一良', '男', '2000-03-16', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180411', '段章彬', '男', '2000-06-11', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180412', '顾正', '男', '2000-04-17', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180413', '海宇杰', '男', '2000-01-09', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180414', '洪天倚', '男', '1999-12-28', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180415', '黄晓杰', '男', '2000-05-25', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180416', '蒋海强', '男', '1999-10-17', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180417', '李逸然', '男', '1999-12-25', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180418', '刘乐乐', '男', '1999-11-05', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180419', '刘阳', '男', '1999-10-12', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180420', '陆定波', '男', '1999-10-01', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180421', '罗王凯', '男', '1999-12-22', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180422', '潘鑫', '男', '1999-12-15', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180423', '全凯明', '男', '1999-12-03', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180424', '王晋伟', '男', '1999-12-05', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180425', '王温杰', '男', '2000-01-10', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180426', '王元智', '男', '2000-03-22', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180427', '夏宇飞', '男', '2000-03-25', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180428', '袁子轩', '男', '1999-10-16', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180429', '张灏', '男', '1999-10-09', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180430', '张凯', '男', '1999-11-19', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180431', '张天程', '男', '2000-01-06', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180432', '周达', '男', '2000-02-10', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180501', '李彬', '女', '2000-04-16', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180502', '曾子玥', '女', '2000-08-21', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180503', '呼浩', '女', '1999-12-09', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180504', '卢妍莹', '女', '2000-04-14', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180505', '潘慧', '女', '2000-07-08', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180506', '唐颖', '女', '1999-11-03', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180507', '王红妍', '女', '2000-04-23', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180508', '袁子丰', '女', '2000-04-12', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180509', '赵凤先', '女', '2000-02-17', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180510', '包寅烨', '男', '1999-09-02', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180511', '陈伏政', '男', '2000-04-19', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180512', '陈岩', '男', '1999-12-11', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180513', '程艳峰', '男', '2000-03-15', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180514', '范曾', '男', '2000-08-10', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180515', '郭雨豪', '男', '1999-12-19', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180516', '韩劲松', '男', '2000-02-27', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180517', '花煜楠', '男', '2000-04-06', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180518', '姜官坤', '男', '2000-08-14', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180519', '蓝锋译', '男', '2000-05-25', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180520', '梁超', '男', '2000-06-03', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180521', '刘为', '男', '2000-01-13', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180522', '罗璨', '男', '2000-05-11', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180523', '马跃', '男', '2000-01-03', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180524', '钱洋', '男', '1999-12-07', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180525', '沈天阳', '男', '2000-07-25', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180526', '石优', '男', '2000-07-12', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180527', '王梦辉', '男', '2000-05-22', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180528', '徐孟杰', '男', '2000-07-01', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180529', '许志成', '男', '1999-11-18', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180530', '杨易', '男', '2000-05-24', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180531', '恽宇辉', '男', '2000-03-06', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180532', '张灏东', '男', '1999-09-11', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180533', '张理', '男', '2000-04-15', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180534', '赵昀鹏', '男', '2000-01-19', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180535', '周昫光', '男', '1999-11-20', '汉', '2018', '计算机学院', '网络工程', '网络181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180601', '韩孟昀', '女', '2000-06-08', '汉', '2018', '汽车与轨道交通学院', '交通运输', '交通181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180602', '王瑾', '女', '2000-06-14', '汉', '2018', '汽车与轨道交通学院', '交通运输', '交通181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180603', '朱思仪', '女', '2000-08-17', '汉', '2018', '汽车与轨道交通学院', '交通运输', '交通181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180604', '洪成隆', '男', '1999-12-26', '汉', '2018', '汽车与轨道交通学院', '交通运输', '交通181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180605', '廖宝龙', '男', '2000-02-06', '汉', '2018', '汽车与轨道交通学院', '交通运输', '交通181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180606', '刘欢', '男', '2000-08-27', '汉', '2018', '汽车与轨道交通学院', '交通运输', '交通181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180607', '邵智杰', '男', '2000-01-19', '汉', '2018', '汽车与轨道交通学院', '交通运输', '交通181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180608', '孙钰哲', '男', '1999-10-11', '汉', '2018', '汽车与轨道交通学院', '交通运输', '交通181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180609', '唐隽', '男', '1999-10-04', '汉', '2018', '汽车与轨道交通学院', '交通运输', '交通181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180610', '王季瑄', '男', '2000-03-22', '汉', '2018', '汽车与轨道交通学院', '交通运输', '交通181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180611', '魏来', '男', '1999-12-18', '汉', '2018', '汽车与轨道交通学院', '交通运输', '交通181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180612', '张继元', '男', '2000-04-24', '汉', '2018', '汽车与轨道交通学院', '交通运输', '交通181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180613', '张明阳', '男', '2000-07-26', '汉', '2018', '汽车与轨道交通学院', '交通运输', '交通181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180614', '郑永煌', '男', '2000-02-21', '汉', '2018', '汽车与轨道交通学院', '交通运输', '交通181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180701', '何佩懿', '女', '2000-07-10', '汉', '2018', '汽车与轨道交通学院', '城市轨道交通', '轨道181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180702', '鲍耀龙', '男', '2000-06-27', '汉', '2018', '汽车与轨道交通学院', '城市轨道交通', '轨道181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180703', '方舟', '男', '2000-03-12', '汉', '2018', '汽车与轨道交通学院', '城市轨道交通', '轨道181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180704', '焦子洋', '男', '2000-03-05', '汉', '2018', '汽车与轨道交通学院', '城市轨道交通', '轨道181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180705', '蒯超宇', '男', '2000-02-06', '汉', '2018', '汽车与轨道交通学院', '城市轨道交通', '轨道181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180706', '刘恒亓', '男', '1999-10-29', '汉', '2018', '汽车与轨道交通学院', '城市轨道交通', '轨道181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180707', '刘金鹏', '男', '2000-08-18', '汉', '2018', '汽车与轨道交通学院', '城市轨道交通', '轨道181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180708', '刘涛', '男', '2000-02-13', '汉', '2018', '汽车与轨道交通学院', '城市轨道交通', '轨道181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180709', '卢法自', '男', '2000-04-06', '汉', '2018', '汽车与轨道交通学院', '城市轨道交通', '轨道181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180710', '舒小凡', '男', '2000-06-28', '汉', '2018', '汽车与轨道交通学院', '城市轨道交通', '轨道181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180711', '王福', '男', '1999-09-05', '汉', '2018', '汽车与轨道交通学院', '城市轨道交通', '轨道181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202180712', '杨恩富', '男', '2000-01-07', '汉', '2018', '汽车与轨道交通学院', '城市轨道交通', '轨道181', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190101', '杨震昊', '男', '2001-03-03', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190102', '雍子凡', '男', '2001-05-24', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190103', '张东', '男', '2001-03-18', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190104', '张沛然', '男', '2001-07-17', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190105', '张屹潇', '男', '2000-10-29', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190106', '朱子昂', '男', '2001-08-08', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190107', '高杨', '男', '2001-02-23', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190108', '洪银召', '男', '2001-07-12', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190109', '李冠兴', '男', '2001-05-14', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190110', '于维燚', '男', '2001-06-13', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190111', '黄炎', '男', '2001-06-09', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190112', '彭成姣', '男', '2001-08-17', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190113', '毕波', '男', '2001-03-10', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190114', '补佳霖', '男', '2000-12-03', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190115', '曾繁智', '男', '2000-09-16', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190201', '方善力', '女', '2000-09-05', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190202', '冯思诚', '女', '2001-01-21', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190203', '郭凡', '男', '2001-05-17', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190204', '郭旭辉', '男', '2001-03-13', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190205', '韩涛', '男', '2000-10-06', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190206', '郝振键', '男', '2000-12-21', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190207', '何梦雷', '男', '2001-08-07', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190208', '黄凯', '男', '2001-06-06', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190209', '梁伟强', '男', '2001-01-26', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190210', '刘盾', '男', '2000-12-29', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190211', '刘飞翔', '男', '2001-04-27', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190212', '陆圣尧', '男', '2001-06-27', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190213', '马家鹏', '男', '2001-02-01', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190214', '石锰', '男', '2000-12-16', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190215', '孙佳祥', '男', '2000-10-24', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190216', '孙江文', '男', '2001-06-08', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190217', '汤康明', '男', '2001-03-12', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190218', '吴恒景', '男', '2001-07-07', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190219', '许鹏飞', '男', '2001-06-03', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190220', '于浩伟', '男', '2000-09-23', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190221', '张永吉', '男', '2001-08-19', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190222', '张忠杨', '男', '2001-07-01', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190223', '赵德胜', '男', '2001-06-10', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190224', '赵智鑫', '男', '2001-04-23', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190225', '郑治', '男', '2001-03-18', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190226', '朱宇宁', '男', '2001-03-07', '汉', '2019', '计算机学院', '计算机科学与技术', '计算机192', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190301', '孙颖', '女', '2001-06-17', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190302', '张海峰', '女', '2001-04-26', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190303', '马扬扬', '女', '2000-10-20', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190304', '丁莹', '女', '2001-08-01', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190305', '刘婷', '女', '2000-11-12', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190306', '王佳佳', '女', '2001-01-21', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190307', '王乾慧', '女', '2001-02-21', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190308', '张慧', '女', '2001-05-21', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190309', '钟卓璇', '女', '2000-09-19', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190310', '卞清淳', '男', '2001-01-09', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190311', '陈儒', '男', '2001-05-08', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190312', '戴子洋', '男', '2000-11-06', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190313', '党国浩', '男', '2001-08-11', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190314', '冯瑞', '男', '2001-01-13', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190315', '冯鑫', '男', '2000-12-11', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190316', '何海峰', '男', '2001-03-13', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190317', '蒋声远', '男', '2001-02-08', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190318', '李虎', '男', '2001-08-01', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190319', '李政', '男', '2001-06-28', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190320', '李志祥', '男', '2001-07-26', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190321', '刘涛', '男', '2001-02-13', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190322', '陆杨振羽', '男', '2001-01-03', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190323', '彭天宝', '男', '2001-07-16', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190324', '唐凌凌', '男', '2001-08-01', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190325', '万芬雄', '男', '2001-05-09', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190326', '王海', '男', '2000-11-23', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190327', '王智聪', '男', '2001-02-26', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190328', '徐世来', '男', '2000-11-13', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190329', '杨鹏程', '男', '2000-12-22', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190330', '姚智瀛', '男', '2000-12-10', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190331', '袁雪飞', '男', '2001-01-21', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190332', '岳洺宇', '男', '2001-04-07', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190333', '张子涵', '男', '2001-03-16', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190334', '赵环宇', '男', '2000-09-06', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190335', '朱友德', '男', '2001-06-05', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190336', '朱勇', '男', '2001-02-14', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190337', '贺广来', '男', '2001-04-21', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190338', '李子敬', '男', '2001-03-01', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190339', '谢炜', '男', '2000-12-13', '汉', '2019', '计算机学院', '软件工程', '软件191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190401', '余森泽', '女', '2001-04-12', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190402', '刘丁', '女', '2001-05-19', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190403', '曹哲奇', '女', '2001-04-01', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190404', '吴晗', '女', '2000-10-05', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190405', '葛灵芝', '女', '2000-10-01', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190406', '钱慕荣', '女', '2000-09-09', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190407', '汪檀珍', '女', '2000-11-25', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190408', '詹娅', '女', '2001-03-27', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190409', '仲楠', '女', '2001-01-09', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190410', '卞浩', '男', '2001-06-15', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190411', '陈涛', '男', '2000-12-04', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190412', '陈威', '男', '2001-07-19', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190413', '成友慧', '男', '2000-09-04', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190414', '高仕杰', '男', '2001-01-20', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190415', '贾子庆', '男', '2001-03-03', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190416', '金伟业', '男', '2001-08-28', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190417', '李程帆', '男', '2001-06-18', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190418', '李国辉', '男', '2000-09-11', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190419', '李嘉哲', '男', '2001-03-23', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190420', '李想', '男', '2001-04-03', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190421', '刘冬', '男', '2001-05-24', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190422', '刘影', '男', '2001-03-24', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190423', '吕超品', '男', '2001-04-16', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190424', '邵俊瑜', '男', '2000-12-13', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190425', '孙睿辰', '男', '2000-12-22', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190426', '唐天寅', '男', '2001-02-26', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190427', '万长丰', '男', '2000-10-04', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190428', '王飞', '男', '2000-10-26', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190429', '王上锐', '男', '2001-05-19', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190430', '王仕文', '男', '2001-08-06', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190431', '王文喜', '男', '2001-07-08', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190432', '王崟瑞', '男', '2001-03-05', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190433', '魏晓磊', '男', '2000-10-20', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190434', '肖兵', '男', '2000-12-21', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190435', '邢福伟', '男', '2000-10-14', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190436', '徐斌', '男', '2001-03-05', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190437', '杨杰', '男', '2000-11-02', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190438', '杨张远', '男', '2000-11-28', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190439', '章军', '男', '2000-09-15', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190440', '周子巽', '男', '2001-01-21', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190501', '缪凯', '女', '2000-12-15', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190502', '何至简', '女', '2001-02-25', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190503', '姜雪', '女', '2001-01-05', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190504', '梁凤仪', '女', '2001-02-03', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190505', '宋悦悦', '女', '2001-05-21', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190506', '孙俐', '女', '2001-02-08', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190507', '张晓楠', '女', '2001-04-10', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190508', '白钦', '男', '2001-07-19', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190509', '陈果', '男', '2001-08-03', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190510', '陈磊', '男', '2001-01-28', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190511', '陈信周', '男', '2001-08-15', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190512', '冯学志', '男', '2001-08-01', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190513', '何海毅', '男', '2001-06-11', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190514', '姜广康', '男', '2000-12-26', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190515', '刘浩', '男', '2001-05-24', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190516', '浦艺钟', '男', '2001-06-17', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190517', '瞿楚航', '男', '2001-05-24', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190518', '汤钦楠', '男', '2001-01-05', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190519', '王寒冰', '男', '2001-01-15', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190520', '宣春有', '男', '2001-02-13', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190521', '郁金亮', '男', '2001-04-23', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190522', '赵恒', '男', '2000-10-07', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190523', '朱剑锋', '男', '2001-03-28', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190524', '邹宏', '男', '2000-09-18', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190525', '吴文艺', '男', '2000-10-16', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190526', '邹雪文', '男', '2000-11-22', '汉', '2019', '计算机学院', '网络工程', '网络191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190601', '鲍金笛', '女', '2001-04-20', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190602', '陈国栋', '女', '2001-02-14', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190603', '陈杰', '女', '2001-02-20', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190604', '陈啸', '女', '2001-07-09', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190605', '陈兆康', '女', '2001-08-25', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190606', '龚思远', '女', '2001-07-02', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190607', '黄爱兵', '女', '2000-09-16', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190608', '黄弘杰', '女', '2001-04-12', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190609', '黄中杰', '女', '2000-10-02', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190610', '林势清', '女', '2001-06-18', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190611', '陆凯烨', '女', '2001-04-04', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190612', '马洪昕', '女', '2001-03-25', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190613', '唐绍毅', '女', '2001-03-27', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190614', '王汉谱', '女', '2001-08-27', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190615', '王杰', '女', '2001-08-04', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190616', '王进', '女', '2000-09-14', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190617', '王立信', '女', '2001-07-14', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190618', '谢磊', '男', '2001-02-13', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190619', '徐久珺', '男', '2001-06-12', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190620', '徐朋', '男', '2001-05-17', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190621', '詹长坤', '男', '2001-02-14', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190622', '张涛', '男', '2000-12-15', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190623', '张毅', '男', '2001-06-21', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190624', '赵星宇', '男', '2001-03-12', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190625', '朱稷玮', '男', '2001-06-24', '汉', '2019', '汽车与轨道交通学院', '交通运输', '交通191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190701', '白雯玮', '女', '2001-07-08', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190702', '陈婧婕', '女', '2000-10-16', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190703', '丁羽娴', '女', '2001-02-12', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190704', '郭静怡', '女', '2001-02-25', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190705', '李思雨', '女', '2001-07-10', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190706', '邵乔伊', '女', '2001-02-15', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190707', '孙柱叶', '女', '2001-01-23', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190708', '王炼可', '女', '2000-09-09', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190709', '杨柳', '女', '2001-05-03', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190710', '张乐霄', '女', '2001-05-14', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190711', '曹书豪', '男', '2000-10-27', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190712', '陈凯杰', '男', '2001-08-07', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190713', '单正杰', '男', '2001-03-02', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190714', '伏博然', '男', '2001-07-27', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190715', '高远方', '男', '2000-09-11', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190716', '谷文轩', '男', '2000-09-13', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190717', '侯庆龙', '男', '2000-11-28', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190718', '黄博文', '男', '2000-11-10', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190719', '靳戈', '男', '2001-06-05', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190720', '李顶', '男', '2000-09-30', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190721', '力嘉易', '男', '2001-01-04', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190722', '刘颖', '男', '2000-12-11', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190723', '刘云天', '男', '2000-11-12', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190724', '骆君行', '男', '2001-08-09', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190725', '孟周阳', '男', '2000-12-23', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190726', '沙宇辰', '男', '2001-05-12', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190727', '佘红霄', '男', '2001-05-27', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190728', '沈元立', '男', '2000-11-26', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `student` VALUES ('202190729', '施福衍', '男', '2001-01-16', '汉', '2019', '汽车与轨道交通学院', '城市轨道交通', '轨道191', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tno` int NOT NULL,
  `tname` varchar(20) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `birthday` date NOT NULL,
  `secoll` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(13) NOT NULL,
  `pass` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`tno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('25001', '教师1', '男', '1990-01-01', '学院1', '13333333', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `teacher` VALUES ('25002', '教师2', '男', '1980-05-05', '计算机学院', '12355488', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- View structure for viewcsel
-- ----------------------------
DROP VIEW IF EXISTS `viewcsel`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewcsel` AS select `csel`.`sno` AS `sno`,`csel`.`cno` AS `cno`,`csel`.`tno` AS `tno`,`csel`.`rno` AS `rno`,`csel`.`year` AS `year`,`csel`.`time` AS `time`,`csel`.`score` AS `score`,`course`.`cname` AS `cname`,`course`.`credit` AS `credit`,`teacher`.`tname` AS `tname`,`student`.`sname` AS `sname` from (((`csel` join `course` on((`csel`.`cno` = `course`.`cno`))) join `teacher` on((`csel`.`tno` = `teacher`.`tno`))) join `student` on((`csel`.`sno` = `student`.`sno`))) ;

-- ----------------------------
-- View structure for viewcseltemp
-- ----------------------------
DROP VIEW IF EXISTS `viewcseltemp`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewcseltemp` AS select `cseltemp`.`sno` AS `sno`,`cseltemp`.`cno` AS `cno`,`course`.`cname` AS `cname`,`course`.`credit` AS `credit`,`cseltemp`.`tno` AS `tno`,`cseltemp`.`rno` AS `rno`,`cseltemp`.`year` AS `year`,`cseltemp`.`time` AS `time`,`cseltemp`.`rangeid` AS `rangeid` from (`cseltemp` join `course` on((`cseltemp`.`cno` = `course`.`cno`))) ;
