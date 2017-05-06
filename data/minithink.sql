/*
Navicat MySQL Data Transfer

Source Server         : 虚拟机中的数据库
Source Server Version : 50548
Source Host           : 192.168.0.56:3306
Source Database       : minithink

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2017-05-06 16:52:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth
-- ----------------------------
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '角色名称',
  `mark` varchar(255) DEFAULT NULL,
  `node` varchar(255) DEFAULT NULL COMMENT '权限节点',
  `orders` int(5) DEFAULT '99',
  `state` tinyint(1) DEFAULT '1',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色权限';

-- ----------------------------
-- Records of auth
-- ----------------------------
INSERT INTO `auth` VALUES ('1', '超级管理员', '超级管理员', '1,2,3,4,5,6,7,8,9,10', '99', '1', '1493780498');
INSERT INTO `auth` VALUES ('2', '默认角色', '用于权限测试', '1,2,3,4,5,9,10', '99', '1', '1493858043');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '配置标识',
  `title` varchar(50) DEFAULT NULL COMMENT '配置标题',
  `group` int(10) DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `orders` int(5) DEFAULT NULL,
  `mark` varchar(50) DEFAULT NULL COMMENT '说明',
  `value` varchar(255) DEFAULT NULL COMMENT '值',
  `state` tinyint(1) DEFAULT NULL COMMENT '状态 0禁用 1启用',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='配置';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'config_type_list', '配置类型', '9', '3', '5', '主要用于数据解析和页面表单的生成', '1:字符串\n2:文本\n3:数组\n4:图片', '1', '1970');
INSERT INTO `config` VALUES ('2', 'config_group_list', '配置分组', '9', '3', '1', '配置分组', '1:测试\n9:系统', '1', null);
INSERT INTO `config` VALUES ('11', 'test_upload', '测试上传', '1', '4', '100', '测试图片上传', 'null', '1', '1493950815');
INSERT INTO `config` VALUES ('13', 'system_notify', '后台通知', '9', '1', '100', '后台通知，发布给其他管理员查看', '念念不忘，必有回响', '1', '1493974986');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(15) NOT NULL COMMENT '模块',
  `name` varchar(10) NOT NULL COMMENT '菜单名称',
  `pid` int(11) DEFAULT '0' COMMENT '上级菜单',
  `link` varchar(25) DEFAULT '无' COMMENT '能被url函数解析的',
  `orders` int(11) DEFAULT '5' COMMENT '排序',
  `state` tinyint(1) DEFAULT '0' COMMENT '状态 -1 删除  0禁用 1 启用',
  `iconfont` varchar(10) DEFAULT NULL COMMENT '菜单图标',
  `is_dev` tinyint(1) DEFAULT '0' COMMENT '是否开发者可见 0否 1是',
  `create_time` int(11) DEFAULT NULL COMMENT '菜单创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'system', '系统', '0', '无', '6', '1', '&#xe689;', '0', '1490594188');
INSERT INTO `menu` VALUES ('2', 'system', '后台配置', '1', '无', '0', '1', '&#xe646;', '1', '1493262508');
INSERT INTO `menu` VALUES ('3', 'system', '配置管理', '2', 'system/config/index', '10', '1', '&#xe637;', '0', '1493262508');
INSERT INTO `menu` VALUES ('4', 'system', '菜单管理', '2', 'system/menu/index', '5', '1', '&#xe61a;', '0', '1493261007');
INSERT INTO `menu` VALUES ('5', 'system', '配置设置', '2', 'system/config/setconfig', '99', '1', '&#xe689;', '0', '1493278628');
INSERT INTO `menu` VALUES ('6', 'system', '管理员', '1', '无', '5', '1', '&#xe630;', '0', '1493278628');
INSERT INTO `menu` VALUES ('7', 'system', '管理员', '6', 'system/user/index', '99', '1', '&#xe630;', '0', '1493693360');
INSERT INTO `menu` VALUES ('8', 'system', '角色权限', '6', 'system/user/auth', '99', '1', '&#xe63f;', '0', '1493693360');
INSERT INTO `menu` VALUES ('9', 'system', '快捷方式', '1', '无', '99', '1', '&#xe64d;', '1', '1493693610');
INSERT INTO `menu` VALUES ('10', 'system', '生成列表', '9', 'system/fast/fastlist', '99', '1', '&#xe61a;', '0', '1493693610');

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  `md5` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图片表';

-- ----------------------------
-- Records of picture
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `orders` int(5) DEFAULT NULL,
  `state` int(5) DEFAULT NULL,
  `role` int(5) DEFAULT '0' COMMENT '角色id',
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '2f757ab252febd4dc76310dcfb37e091', '5', '1', '1', '1494053133', '1493712190');
