/*
Navicat MySQL Data Transfer

Source Server         : 徐吱eng
Source Server Version : 50728
Source Host           : localhost:3306
Source Database       : coal

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2020-07-14 16:56:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pt_menu_directory
-- ----------------------------
DROP TABLE IF EXISTS `pt_menu_directory`;
CREATE TABLE `pt_menu_directory` (
  `menu_id` int(50) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单目录id（树型结构层级编码）',
  `dir_name` varchar(100) DEFAULT NULL COMMENT '菜单目录名称',
  `dir_level_number` int(2) DEFAULT NULL COMMENT '菜单目录级数',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父目录id',
  `isitem` char(1) NOT NULL DEFAULT '1' COMMENT '明细否：0 非明细；1 明细',
  `locale` varchar(32) NOT NULL DEFAULT 'zh_CN' COMMENT '当前国际化标志',
  `res_uuid` int(50) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单目录表';

-- ----------------------------
-- Records of pt_menu_directory
-- ----------------------------

-- ----------------------------
-- Table structure for pt_organ
-- ----------------------------
DROP TABLE IF EXISTS `pt_organ`;
CREATE TABLE `pt_organ` (
  `organ_uuid` int(50) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `organ_code` varchar(32) DEFAULT NULL COMMENT '组织编码',
  `organ_name` varchar(32) DEFAULT NULL COMMENT '组织名称',
  `organ_type` varchar(16) DEFAULT NULL COMMENT '组织类型',
  `parent_uuid` int(50) DEFAULT NULL COMMENT '父组织信息',
  `status` char(1) DEFAULT NULL COMMENT '是否删除',
  `modtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `description` varchar(400) DEFAULT NULL COMMENT '描述',
  `account_code` varchar(128) DEFAULT NULL COMMENT '资金账户code',
  `shortname` varchar(255) DEFAULT NULL COMMENT '组织简称',
  PRIMARY KEY (`organ_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织机构';

-- ----------------------------
-- Records of pt_organ
-- ----------------------------

-- ----------------------------
-- Table structure for pt_role
-- ----------------------------
DROP TABLE IF EXISTS `pt_role`;
CREATE TABLE `pt_role` (
  `role_uuid` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` varchar(32) DEFAULT NULL,
  `role_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`role_uuid`),
  KEY `ak_key_2` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of pt_role
-- ----------------------------

-- ----------------------------
-- Table structure for pt_role_res
-- ----------------------------
DROP TABLE IF EXISTS `pt_role_res`;
CREATE TABLE `pt_role_res` (
  `role_resid` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `role_uuid` int(50) NOT NULL,
  `res_uuid` int(50) DEFAULT NULL COMMENT '菜单目录id（树型结构层级编码）',
  PRIMARY KEY (`role_resid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色资源配置';

-- ----------------------------
-- Records of pt_role_res
-- ----------------------------

-- ----------------------------
-- Table structure for pt_r_role_organ
-- ----------------------------
DROP TABLE IF EXISTS `pt_r_role_organ`;
CREATE TABLE `pt_r_role_organ` (
  `dutyid` int(50) unsigned NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `name` varchar(255) DEFAULT NULL COMMENT '岗位名称',
  `organ_uuid` int(50) DEFAULT NULL COMMENT '组织ID',
  `role_uuid` int(50) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`dutyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='岗位表（角色和单位的挂接）';

-- ----------------------------
-- Records of pt_r_role_organ
-- ----------------------------

-- ----------------------------
-- Table structure for pt_r_user_duty_org
-- ----------------------------
DROP TABLE IF EXISTS `pt_r_user_duty_org`;
CREATE TABLE `pt_r_user_duty_org` (
  `user_dutyid` int(50) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_uuid` int(50) DEFAULT NULL COMMENT '用户ID',
  `dutyid` int(50) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_dutyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户、岗位对应表';

-- ----------------------------
-- Records of pt_r_user_duty_org
-- ----------------------------

-- ----------------------------
-- Table structure for pt_user
-- ----------------------------
DROP TABLE IF EXISTS `pt_user`;
CREATE TABLE `pt_user` (
  `user_uuid` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL COMMENT '登录名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `email` varchar(32) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `organ_uuid` varchar(64) DEFAULT NULL COMMENT '机构ID',
  `nice_name` varchar(64) DEFAULT NULL COMMENT '姓名',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  `status` char(1) NOT NULL DEFAULT 'N' COMMENT '是否删除(O删除，N不删除）',
  `modtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '操作时间',
  PRIMARY KEY (`user_uuid`),
  KEY `ak_key_2` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of pt_user
-- ----------------------------
INSERT INTO `pt_user` VALUES ('1', 'zhuren', '123', null, null, '42554f47c8614d7f8da370d8c7803f4a', '陈主任', null, 'N', '2020-07-14 11:51:15');
INSERT INTO `pt_user` VALUES ('2', 'xiadewang', '12345', null, null, '42554f47c8614d7f8da370d8c7803f4a', '夏德旺', null, 'N', '2020-07-14 11:51:15');
INSERT INTO `pt_user` VALUES ('3', 'changzhang', '123456', null, null, '42554f47c8614d7f8da370d8c7803f4a', '刘厂长', null, 'N', '2020-07-14 11:51:15');
