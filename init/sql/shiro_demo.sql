/*
 Navicat Premium Data Transfer
 本地库
 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : 127.0.0.1:3306
 Source Schema         : shiro_demo

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 29/12/2018 11:27:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for u_permission
-- ----------------------------
DROP TABLE IF EXISTS `u_permission`;
CREATE TABLE `u_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'url地址',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'url描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of u_permission
-- ----------------------------
INSERT INTO `u_permission` VALUES (4, '/permission/index.shtml', '权限列表');
INSERT INTO `u_permission` VALUES (6, '/permission/addPermission.shtml', '权限添加');
INSERT INTO `u_permission` VALUES (7, '/permission/deletePermissionById.shtml', '权限删除');
INSERT INTO `u_permission` VALUES (8, '/member/list.shtml', '用户列表');
INSERT INTO `u_permission` VALUES (9, '/member/online.shtml', '在线用户');
INSERT INTO `u_permission` VALUES (10, '/member/changeSessionStatus.shtml', '用户Session踢出');
INSERT INTO `u_permission` VALUES (11, '/member/forbidUserById.shtml', '用户激活&禁止');
INSERT INTO `u_permission` VALUES (12, '/member/deleteUserById.shtml', '用户删除');
INSERT INTO `u_permission` VALUES (13, '/permission/addPermission2Role.shtml', '权限分配');
INSERT INTO `u_permission` VALUES (14, '/role/clearRoleByUserIds.shtml', '用户角色分配清空');
INSERT INTO `u_permission` VALUES (15, '/role/addRole2User.shtml', '角色分配保存');
INSERT INTO `u_permission` VALUES (16, '/role/deleteRoleById.shtml', '角色列表删除');
INSERT INTO `u_permission` VALUES (17, '/role/addRole.shtml', '角色列表添加');
INSERT INTO `u_permission` VALUES (18, '/role/index.shtml', '角色列表');
INSERT INTO `u_permission` VALUES (19, '/permission/allocation.shtml', '权限分配');
INSERT INTO `u_permission` VALUES (20, '/role/allocation.shtml', '角色分配');

-- ----------------------------
-- Table structure for u_role
-- ----------------------------
DROP TABLE IF EXISTS `u_role`;
CREATE TABLE `u_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of u_role
-- ----------------------------
INSERT INTO `u_role` VALUES (1, '系统管理员', '888888');
INSERT INTO `u_role` VALUES (3, '权限角色', '100003');
INSERT INTO `u_role` VALUES (4, '用户中心', '100002');

-- ----------------------------
-- Table structure for u_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `u_role_permission`;
CREATE TABLE `u_role_permission`  (
  `rid` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '权限ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of u_role_permission
-- ----------------------------
INSERT INTO `u_role_permission` VALUES (4, 8);
INSERT INTO `u_role_permission` VALUES (4, 9);
INSERT INTO `u_role_permission` VALUES (4, 10);
INSERT INTO `u_role_permission` VALUES (4, 11);
INSERT INTO `u_role_permission` VALUES (4, 12);
INSERT INTO `u_role_permission` VALUES (3, 4);
INSERT INTO `u_role_permission` VALUES (3, 6);
INSERT INTO `u_role_permission` VALUES (3, 7);
INSERT INTO `u_role_permission` VALUES (3, 13);
INSERT INTO `u_role_permission` VALUES (3, 14);
INSERT INTO `u_role_permission` VALUES (3, 15);
INSERT INTO `u_role_permission` VALUES (3, 16);
INSERT INTO `u_role_permission` VALUES (3, 17);
INSERT INTO `u_role_permission` VALUES (3, 18);
INSERT INTO `u_role_permission` VALUES (3, 19);
INSERT INTO `u_role_permission` VALUES (3, 20);
INSERT INTO `u_role_permission` VALUES (1, 4);
INSERT INTO `u_role_permission` VALUES (1, 6);
INSERT INTO `u_role_permission` VALUES (1, 7);
INSERT INTO `u_role_permission` VALUES (1, 8);
INSERT INTO `u_role_permission` VALUES (1, 9);
INSERT INTO `u_role_permission` VALUES (1, 10);
INSERT INTO `u_role_permission` VALUES (1, 11);
INSERT INTO `u_role_permission` VALUES (1, 12);
INSERT INTO `u_role_permission` VALUES (1, 13);
INSERT INTO `u_role_permission` VALUES (1, 14);
INSERT INTO `u_role_permission` VALUES (1, 15);
INSERT INTO `u_role_permission` VALUES (1, 16);
INSERT INTO `u_role_permission` VALUES (1, 17);
INSERT INTO `u_role_permission` VALUES (1, 18);
INSERT INTO `u_role_permission` VALUES (1, 19);
INSERT INTO `u_role_permission` VALUES (1, 20);

-- ----------------------------
-- Table structure for u_user
-- ----------------------------
DROP TABLE IF EXISTS `u_user`;
CREATE TABLE `u_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `email` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱|登录帐号',
  `pswd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_login_time` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `status` bigint(1) NULL DEFAULT 1 COMMENT '1:有效，0:禁止登录',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of u_user
-- ----------------------------
INSERT INTO `u_user` VALUES (1, '管理员', 'admin', '57eb72e6b78a87a12d46a7f5e9315138', '2016-06-16 11:15:33', '2018-12-29 11:14:56', 1);
INSERT INTO `u_user` VALUES (11, 'soso', '8446666@qq.com', 'd57ffbe486910dd5b26d0167d034f9ad', '2016-05-26 20:50:54', '2016-06-16 11:24:35', 1);
INSERT INTO `u_user` VALUES (12, '8446666', '8446666', '4afdc875a67a55528c224ce088be2ab8', '2016-05-27 22:34:19', '2016-06-15 17:03:16', 1);

-- ----------------------------
-- Table structure for u_user_role
-- ----------------------------
DROP TABLE IF EXISTS `u_user_role`;
CREATE TABLE `u_user_role`  (
  `uid` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `rid` bigint(20) NULL DEFAULT NULL COMMENT '角色ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of u_user_role
-- ----------------------------
INSERT INTO `u_user_role` VALUES (12, 4);
INSERT INTO `u_user_role` VALUES (11, 3);
INSERT INTO `u_user_role` VALUES (11, 4);
INSERT INTO `u_user_role` VALUES (1, 1);
INSERT INTO `u_user_role` VALUES (15, 1);

SET FOREIGN_KEY_CHECKS = 1;
