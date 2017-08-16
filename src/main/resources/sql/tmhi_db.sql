/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : tmhi_db

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-16 14:24:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tmhi_admin
-- ----------------------------
DROP TABLE IF EXISTS `tmhi_admin`;
CREATE TABLE `tmhi_admin` (
  `TU_UID` varchar(50) NOT NULL,
  `TU_MAILADDRESS` varchar(50) DEFAULT NULL COMMENT '账号',
  `TU_PASSWORD` varchar(50) DEFAULT NULL COMMENT '密码',
  `TU_SALT` varchar(50) DEFAULT NULL COMMENT '加密盐',
  `TU_ACTIVITY` varchar(50) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`TU_UID`),
  KEY `TU_UID` (`TU_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmhi_admin
-- ----------------------------
INSERT INTO `tmhi_admin` VALUES ('1', '839715086@qq.com', 'cd7d2a43ddd88a37bd7fd532e50e0ba2', 'BX4O5', 'N');
INSERT INTO `tmhi_admin` VALUES ('2', 'yyk@qq.com', '59908b67b15f0fc062108dfa2491cb1b', '20RAI', 'Y');
INSERT INTO `tmhi_admin` VALUES ('3', '123456@qq.com', 'b66ce0493ab9c7f925e1482a5692a4e4', 'XLLGX', 'Y');

-- ----------------------------
-- Table structure for tmhi_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `tmhi_admin_role`;
CREATE TABLE `tmhi_admin_role` (
  `id` varchar(50) NOT NULL,
  `admin_id` varchar(50) DEFAULT NULL,
  `role_idd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_admin_id` (`admin_id`),
  KEY `fk_role_id` (`role_idd`),
  CONSTRAINT `fk_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `tmhi_admin` (`TU_UID`),
  CONSTRAINT `fk_role_id` FOREIGN KEY (`role_idd`) REFERENCES `tmhi_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tmhi_admin_role
-- ----------------------------
INSERT INTO `tmhi_admin_role` VALUES ('1', '1', '1');
INSERT INTO `tmhi_admin_role` VALUES ('2', '2', '1');
INSERT INTO `tmhi_admin_role` VALUES ('3', '2', '2');
INSERT INTO `tmhi_admin_role` VALUES ('4', '3', '2');
INSERT INTO `tmhi_admin_role` VALUES ('5', '3', '3');
INSERT INTO `tmhi_admin_role` VALUES ('6', '1', '3');

-- ----------------------------
-- Table structure for tmhi_login_log
-- ----------------------------
DROP TABLE IF EXISTS `tmhi_login_log`;
CREATE TABLE `tmhi_login_log` (
  `TL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TU_UID` int(11) NOT NULL COMMENT '用户UID',
  `TL_LOGIN_IP` varchar(30) NOT NULL COMMENT '登录IP',
  `TL_LOGIN_DATE` datetime NOT NULL COMMENT '登录日期',
  PRIMARY KEY (`TL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmhi_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for tmhi_resource
-- ----------------------------
DROP TABLE IF EXISTS `tmhi_resource`;
CREATE TABLE `tmhi_resource` (
  `id` varchar(50) NOT NULL,
  `resource_name` varchar(50) DEFAULT NULL,
  `resource_url` varchar(50) DEFAULT NULL,
  `resource_type` varchar(50) DEFAULT NULL,
  `resource_parent` varchar(50) DEFAULT NULL,
  `resource_tag` varchar(50) DEFAULT NULL,
  `resource_icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resource_parent` (`resource_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmhi_resource
-- ----------------------------
INSERT INTO `tmhi_resource` VALUES ('1', '轮播图模块', '/view/luobotu.jsp?id=1', 'menu', '0', 'pic:show', 'icon-more');
INSERT INTO `tmhi_resource` VALUES ('10', '上师管理', 'lama/lama.jsp', 'menu', '4', 'mas:show', 'icon-redo');
INSERT INTO `tmhi_resource` VALUES ('100', '音频管理', 'special/music.jsp', 'menu', '2', 'spe:show', 'icon-redo');
INSERT INTO `tmhi_resource` VALUES ('101', '修模块', null, 'menu', '0', 'class:show', 'icon-more');
INSERT INTO `tmhi_resource` VALUES ('105', '添加音频', null, 'fun', '100', 'mus:add', 'icon-redo');
INSERT INTO `tmhi_resource` VALUES ('106', '删除音频', null, 'fun', '100', 'mus:del', 'icon-clear');
INSERT INTO `tmhi_resource` VALUES ('107', '修改音频', null, 'fun', '100', 'mus:edit', 'icon-edit');
INSERT INTO `tmhi_resource` VALUES ('108', '查询音频', null, 'fun', '100', 'mus:sel', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('109', '音频管理2', 'special/music2.jsp', 'menu', '2', null, null);
INSERT INTO `tmhi_resource` VALUES ('11', '用户管理', 'user/user.jsp', 'menu', '5', 'user:show', 'icon-redo');
INSERT INTO `tmhi_resource` VALUES ('110', '功课管理', null, 'menu', '5', null, null);
INSERT INTO `tmhi_resource` VALUES ('111', '增加功课', null, 'fun', '110', null, null);
INSERT INTO `tmhi_resource` VALUES ('112', '删除功课', null, 'fun', '110', null, null);
INSERT INTO `tmhi_resource` VALUES ('113', '修改功课', null, 'fun', '110', null, null);
INSERT INTO `tmhi_resource` VALUES ('114', '查询功课', null, 'fun', '110', null, null);
INSERT INTO `tmhi_resource` VALUES ('12', '管理员管理', 'admin/admin.jsp', 'menu', '6', 'admin:show', 'icon-reload');
INSERT INTO `tmhi_resource` VALUES ('13', '角色管理', 'role/role.jsp', 'menu', '6', 'role:show', 'icon-man');
INSERT INTO `tmhi_resource` VALUES ('14', '资源管理', 'res/res.jsp', 'menu', '6', 'res:show', 'icon-man');
INSERT INTO `tmhi_resource` VALUES ('15', '日志管理(最后)', '/log/showall.jsp', 'menu', '6', 'log:show', 'icon-lock');
INSERT INTO `tmhi_resource` VALUES ('16', '数据备份管理', '/data/showall.jsp', 'menu', '6', 'data:show', 'icon-lock');
INSERT INTO `tmhi_resource` VALUES ('17', '增加轮播图', 'null', 'fun', '7', 'pic:add', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('18', '删除轮播图', 'null', 'fun', '7', 'pic:del', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('19', '修改轮播图', 'null', 'fun', '7', 'pic:upd', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('2', '吉祥妙音(闻模块)', '/view/left2.jsp?id=2', 'menu', '0', 'spe:show', 'icon-more');
INSERT INTO `tmhi_resource` VALUES ('20', '查找轮播图', 'null', 'fun', '7', 'pic:search', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('21', '增加专辑', 'null', 'fun', '8', 'spe:add', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('22', '删除专辑', 'null', 'fun', '8', 'spe:del', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('23', '修改专辑', 'null', 'fun', '8', 'spe:upd', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('24', '查找专辑', 'null', 'fun', '8', 'spe:search', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('25', '增加文章', 'null', 'fun', '9', 'art:add', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('26', '删除文章', 'null', 'fun', '9', 'art:del', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('27', '修改文章', 'null', 'fun', '9', 'art:upd', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('28', '查找文章', 'null', 'fun', '9', 'art:search', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('29', '增加上师', 'null', 'fun', '10', 'mas:add', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('3', '甘露妙宝(思模块)', '', 'menu', '0', 'art:show', 'icon-more');
INSERT INTO `tmhi_resource` VALUES ('30', '删除上师', 'null', 'fun', '10', 'mas:del', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('31', '修改上师', 'null', 'fun', '10', 'mas:upd', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('32', '查找上师', 'null', 'fun', '10', 'mas:search', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('33', '增加用户', 'null', 'fun', '11', 'user:add', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('34', '删除用户', 'null', 'fun', '11', 'user:del', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('35', '修改用户', 'null', 'fun', '11', 'user:upd', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('36', '查找用户', 'null', 'fun', '11', 'user:search', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('37', '增加管理员', 'null', 'fun', '12', 'admin:add', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('38', '删除管理员', 'null', 'fun', '12', 'admin:del', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('39', '修改管理员', 'null', 'fun', '12', 'admin:upd', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('4', '上师模块', 'null', 'menu', '0', 'mas:show', 'icon-more');
INSERT INTO `tmhi_resource` VALUES ('40', '查找管理员', 'null', 'fun', '12', 'admin:search', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('41', '增加角色', 'null', 'fun', '13', 'role:add', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('42', '删除角色', 'null', 'fun', '13', 'role:del', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('43', '修改角色', 'null', 'fun', '13', 'role:upd', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('44', '查找角色', 'null', 'fun', '13', 'role:search', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('45', '增加资源', 'null', 'fun', '14', 'res:add', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('46', '删除资源', 'null', 'fun', '14', 'res:del', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('47', '修改资源', 'null', 'fun', '14', 'res:upd', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('48', '查找资源', 'null', 'fun', '14', 'res:search', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('49', '增加日志', 'null', 'fun', '15', 'log:add', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('4bb6841e-cbe0-4d86-a940-2dae9815a47a', 'aaa', 'aaa', 'fun', '0', 'null', 'null');
INSERT INTO `tmhi_resource` VALUES ('5', '用户模块', '', 'menu', '0', 'user:show', 'icon-more');
INSERT INTO `tmhi_resource` VALUES ('50', '删除日志', 'null', 'fun', '15', 'log:del', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('51', '修改日志', 'null', 'fun', '15', 'log:upd', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('52', '查询日志', 'null', 'fun', '15', 'log:search', 'icon-nav');
INSERT INTO `tmhi_resource` VALUES ('53', '增加备份', 'null', 'fun', '16', 'data:add', 'icon-add');
INSERT INTO `tmhi_resource` VALUES ('54', '删除备份', 'null', 'fun', '16', 'data:del', 'icon-clear');
INSERT INTO `tmhi_resource` VALUES ('55', '修改备份', 'null', 'fun', '16', 'data:upd', 'icon-edit');
INSERT INTO `tmhi_resource` VALUES ('56', '查找备份', 'null', 'fun', '16', 'data:search', 'icon-search');
INSERT INTO `tmhi_resource` VALUES ('6', '系统管理模块', '/view/left2.jsp?id=6', 'menu', '0', 'sys:show', 'icon-more');
INSERT INTO `tmhi_resource` VALUES ('7', '轮播图管理', 'view/lunbotu.jsp', 'menu', '1', 'pic:sgow', 'icon-undo');
INSERT INTO `tmhi_resource` VALUES ('8', '专辑管理', 'special/special.jsp', 'menu', '2', 'spe:show', 'icon-redo');
INSERT INTO `tmhi_resource` VALUES ('9', '文章管理', 'article/article.jsp?id=9', 'menu', '3', 'art:show', 'icon-redo');

-- ----------------------------
-- Table structure for tmhi_role
-- ----------------------------
DROP TABLE IF EXISTS `tmhi_role`;
CREATE TABLE `tmhi_role` (
  `id` varchar(50) NOT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `role_tag` varchar(50) DEFAULT NULL,
  `role_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmhi_role
-- ----------------------------
INSERT INTO `tmhi_role` VALUES ('1', '管理员1', '001', '1');
INSERT INTO `tmhi_role` VALUES ('2', '管理员2', '002', '2');
INSERT INTO `tmhi_role` VALUES ('3', '管理员3', '003', '3');

-- ----------------------------
-- Table structure for tmhi_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `tmhi_role_resource`;
CREATE TABLE `tmhi_role_resource` (
  `id` varchar(50) NOT NULL,
  `role_id` varchar(50) DEFAULT NULL,
  `resource_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_role` (`role_id`),
  KEY `fk_resource` (`resource_id`),
  CONSTRAINT `fk_resource` FOREIGN KEY (`resource_id`) REFERENCES `tmhi_resource` (`id`),
  CONSTRAINT `fk_role` FOREIGN KEY (`role_id`) REFERENCES `tmhi_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmhi_role_resource
-- ----------------------------
INSERT INTO `tmhi_role_resource` VALUES ('1', '1', '1');
INSERT INTO `tmhi_role_resource` VALUES ('10', '1', '10');
INSERT INTO `tmhi_role_resource` VALUES ('100', '1', '109');
INSERT INTO `tmhi_role_resource` VALUES ('11', '1', '11');
INSERT INTO `tmhi_role_resource` VALUES ('12', '1', '12');
INSERT INTO `tmhi_role_resource` VALUES ('13', '1', '13');
INSERT INTO `tmhi_role_resource` VALUES ('14', '1', '14');
INSERT INTO `tmhi_role_resource` VALUES ('15', '1', '15');
INSERT INTO `tmhi_role_resource` VALUES ('16', '1', '16');
INSERT INTO `tmhi_role_resource` VALUES ('17', '1', '17');
INSERT INTO `tmhi_role_resource` VALUES ('18', '1', '18');
INSERT INTO `tmhi_role_resource` VALUES ('19', '1', '19');
INSERT INTO `tmhi_role_resource` VALUES ('2', '1', '2');
INSERT INTO `tmhi_role_resource` VALUES ('20', '1', '20');
INSERT INTO `tmhi_role_resource` VALUES ('21', '1', '21');
INSERT INTO `tmhi_role_resource` VALUES ('22', '1', '22');
INSERT INTO `tmhi_role_resource` VALUES ('23', '1', '23');
INSERT INTO `tmhi_role_resource` VALUES ('24', '1', '24');
INSERT INTO `tmhi_role_resource` VALUES ('25', '1', '25');
INSERT INTO `tmhi_role_resource` VALUES ('26', '1', '26');
INSERT INTO `tmhi_role_resource` VALUES ('27', '1', '27');
INSERT INTO `tmhi_role_resource` VALUES ('28', '1', '28');
INSERT INTO `tmhi_role_resource` VALUES ('29', '1', '29');
INSERT INTO `tmhi_role_resource` VALUES ('3', '1', '3');
INSERT INTO `tmhi_role_resource` VALUES ('30', '1', '30');
INSERT INTO `tmhi_role_resource` VALUES ('31', '1', '31');
INSERT INTO `tmhi_role_resource` VALUES ('32', '1', '32');
INSERT INTO `tmhi_role_resource` VALUES ('33', '1', '33');
INSERT INTO `tmhi_role_resource` VALUES ('34', '1', '34');
INSERT INTO `tmhi_role_resource` VALUES ('35', '1', '35');
INSERT INTO `tmhi_role_resource` VALUES ('36', '1', '36');
INSERT INTO `tmhi_role_resource` VALUES ('37', '1', '37');
INSERT INTO `tmhi_role_resource` VALUES ('38', '1', '38');
INSERT INTO `tmhi_role_resource` VALUES ('39', '1', '39');
INSERT INTO `tmhi_role_resource` VALUES ('4', '1', '4');
INSERT INTO `tmhi_role_resource` VALUES ('40', '1', '40');
INSERT INTO `tmhi_role_resource` VALUES ('41', '1', '41');
INSERT INTO `tmhi_role_resource` VALUES ('42', '1', '42');
INSERT INTO `tmhi_role_resource` VALUES ('43', '1', '43');
INSERT INTO `tmhi_role_resource` VALUES ('44', '1', '44');
INSERT INTO `tmhi_role_resource` VALUES ('45', '1', '45');
INSERT INTO `tmhi_role_resource` VALUES ('46', '1', '46');
INSERT INTO `tmhi_role_resource` VALUES ('47', '1', '47');
INSERT INTO `tmhi_role_resource` VALUES ('48', '1', '48');
INSERT INTO `tmhi_role_resource` VALUES ('49', '1', '49');
INSERT INTO `tmhi_role_resource` VALUES ('5', '1', '5');
INSERT INTO `tmhi_role_resource` VALUES ('50', '1', '50');
INSERT INTO `tmhi_role_resource` VALUES ('51', '1', '51');
INSERT INTO `tmhi_role_resource` VALUES ('52', '1', '52');
INSERT INTO `tmhi_role_resource` VALUES ('53', '1', '53');
INSERT INTO `tmhi_role_resource` VALUES ('54', '1', '54');
INSERT INTO `tmhi_role_resource` VALUES ('55', '1', '55');
INSERT INTO `tmhi_role_resource` VALUES ('56', '1', '56');
INSERT INTO `tmhi_role_resource` VALUES ('57', '2', '1');
INSERT INTO `tmhi_role_resource` VALUES ('58', '2', '2');
INSERT INTO `tmhi_role_resource` VALUES ('59', '2', '3');
INSERT INTO `tmhi_role_resource` VALUES ('6', '1', '6');
INSERT INTO `tmhi_role_resource` VALUES ('60', '2', '4');
INSERT INTO `tmhi_role_resource` VALUES ('61', '2', '7');
INSERT INTO `tmhi_role_resource` VALUES ('62', '2', '8');
INSERT INTO `tmhi_role_resource` VALUES ('63', '2', '9');
INSERT INTO `tmhi_role_resource` VALUES ('64', '2', '10');
INSERT INTO `tmhi_role_resource` VALUES ('65', '2', '17');
INSERT INTO `tmhi_role_resource` VALUES ('66', '2', '18');
INSERT INTO `tmhi_role_resource` VALUES ('67', '2', '19');
INSERT INTO `tmhi_role_resource` VALUES ('68', '2', '20');
INSERT INTO `tmhi_role_resource` VALUES ('69', '2', '21');
INSERT INTO `tmhi_role_resource` VALUES ('7', '1', '7');
INSERT INTO `tmhi_role_resource` VALUES ('70', '2', '22');
INSERT INTO `tmhi_role_resource` VALUES ('71', '2', '23');
INSERT INTO `tmhi_role_resource` VALUES ('72', '2', '24');
INSERT INTO `tmhi_role_resource` VALUES ('73', '2', '25');
INSERT INTO `tmhi_role_resource` VALUES ('74', '2', '26');
INSERT INTO `tmhi_role_resource` VALUES ('75', '2', '27');
INSERT INTO `tmhi_role_resource` VALUES ('76', '2', '28');
INSERT INTO `tmhi_role_resource` VALUES ('77', '2', '29');
INSERT INTO `tmhi_role_resource` VALUES ('78', '2', '30');
INSERT INTO `tmhi_role_resource` VALUES ('79', '2', '31');
INSERT INTO `tmhi_role_resource` VALUES ('8', '1', '8');
INSERT INTO `tmhi_role_resource` VALUES ('80', '2', '32');
INSERT INTO `tmhi_role_resource` VALUES ('81', '2', '5');
INSERT INTO `tmhi_role_resource` VALUES ('82', '2', '11');
INSERT INTO `tmhi_role_resource` VALUES ('83', '2', '33');
INSERT INTO `tmhi_role_resource` VALUES ('84', '2', '34');
INSERT INTO `tmhi_role_resource` VALUES ('85', '2', '35');
INSERT INTO `tmhi_role_resource` VALUES ('9', '1', '9');
INSERT INTO `tmhi_role_resource` VALUES ('90', '1', '100');
INSERT INTO `tmhi_role_resource` VALUES ('91', '1', '105');
INSERT INTO `tmhi_role_resource` VALUES ('92', '1', '106');
INSERT INTO `tmhi_role_resource` VALUES ('93', '1', '110');
INSERT INTO `tmhi_role_resource` VALUES ('94', '1', '111');
INSERT INTO `tmhi_role_resource` VALUES ('95', '1', '112');
INSERT INTO `tmhi_role_resource` VALUES ('96', '1', '113');
INSERT INTO `tmhi_role_resource` VALUES ('97', '1', '114');

-- ----------------------------
-- Table structure for tmhi_users
-- ----------------------------
DROP TABLE IF EXISTS `tmhi_users`;
CREATE TABLE `tmhi_users` (
  `TU_UID` int(11) NOT NULL AUTO_INCREMENT,
  `TU_MAILADDRESS` varchar(50) NOT NULL COMMENT '用户账号名',
  `TU_UNAME` varchar(14) NOT NULL COMMENT '用户昵称',
  `TU_PASSWORD` varchar(32) NOT NULL COMMENT '用户密码',
  `TU_UGID` varchar(20) NOT NULL COMMENT '关联wows游戏名',
  `TU_FLEETNAME` varchar(20) NOT NULL COMMENT '关联wows游戏舰队名',
  `TU_SIGNUP_DATE` datetime NOT NULL COMMENT '注册日期',
  `TU_ACTIVITY` tinyint(1) NOT NULL DEFAULT '0' COMMENT '激活状态  0：未激活；1：已激活',
  `TU_ACTIVITY_CODE` varchar(32) NOT NULL COMMENT '验证码 随机生成',
  `TU_ACTIVITY_DATE` datetime NOT NULL COMMENT '验证码激活日期',
  `TU_PERMISSION` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户权限  1：普通用户',
  PRIMARY KEY (`TU_UID`)
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmhi_users
-- ----------------------------
INSERT INTO `tmhi_users` VALUES ('10001', 'hiei.tmhi@foxmail.com', 'MasterHiei', '52c69e3a57331081823331c4e69d3f2e', '牧野由依么么哒', '么么哒之刃', '2017-08-16 10:13:16', '1', 'f813ff431bea930627637658cbfe3490', '2017-08-16 10:13:16', '2');
INSERT INTO `tmhi_users` VALUES ('10002', '805376460@qq.com', 'RBQMikoto', '96e79218965eb72c92a549dd5a330112', '青山七海么么哒', '么么哒之刃', '2017-08-16 10:13:16', '1', '497f5ffdfff190d900ed2877693d9b30', '2017-08-16 10:13:16', '1');
