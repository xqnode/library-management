/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : library-management

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 26/09/2022 22:31:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updatetime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '张三', 'zhang', 20, '男', '13988997799', '合肥', NULL, NULL);
INSERT INTO `user` VALUES (2, '张三', 'zhang', 20, '男', '13988997799', '合肥', NULL, NULL);
INSERT INTO `user` VALUES (3, '张三', 'zhang', 20, '男', '13988997799', '合肥', NULL, NULL);
INSERT INTO `user` VALUES (4, '张三', 'zhang', 20, '男', '13988997799', '合肥', NULL, NULL);
INSERT INTO `user` VALUES (5, '张三', 'zhang', 20, '男', '13988997799', '合肥', NULL, NULL);
INSERT INTO `user` VALUES (6, '张三', 'zhang', 20, '男', '13988997799', '合肥', NULL, NULL);
INSERT INTO `user` VALUES (7, '张三', 'zhang', 20, '男', '13988997799', '合肥', NULL, NULL);
INSERT INTO `user` VALUES (8, '张三', 'zhang', 20, '男', '13988997799', '合肥', NULL, NULL);
INSERT INTO `user` VALUES (9, '张三', 'zhang', 20, '男', '13988997799', '合肥', NULL, NULL);
INSERT INTO `user` VALUES (10, '张三', 'zhang', 20, '男', '13988997799', '合肥', NULL, NULL);
INSERT INTO `user` VALUES (14, '张三', 'zhang', 20, '男', '13988997799', '合肥', NULL, NULL);
INSERT INTO `user` VALUES (15, '张三', 'zhang', 20, '男', '15988997799', '合肥', NULL, NULL);
INSERT INTO `user` VALUES (16, '李四', 'lisi', 25, '男', '13988990099', '北京', NULL, NULL);
INSERT INTO `user` VALUES (17, '李四', 'lisi', 25, '男', '13988990099', '北京', NULL, NULL);
INSERT INTO `user` VALUES (18, '小红12', '20220926c01925d267964446a11f9f097fae0965', 21, '女', '13988776655', '南京', '2022-09-26 19:49:32', '2022-09-26 20:18:29');

SET FOREIGN_KEY_CHECKS = 1;
