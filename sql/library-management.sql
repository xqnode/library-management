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

 Date: 03/11/2022 19:01:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updatetime` datetime(0) NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_key`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '13988997788', NULL, '2022-10-08 22:21:26', '2022-10-11 20:37:20', 'ead08e95e9c867a2ee833c232bf55dbc', 1);
INSERT INTO `admin` VALUES (2, 'admin1', '13877889900', 'admin1@qq.com', '2022-10-10 21:28:42', '2022-10-11 20:39:41', 'a7dbef0f88b54fad3f91d010a30eff55', 1);

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `publish_date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出版日期',
  `author` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '作者',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出版社',
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类',
  `book_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标准码',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `score` int(10) NULL DEFAULT NULL COMMENT '积分',
  `nums` int(10) NULL DEFAULT 0 COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `book_no_index`(`book_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '西游记幼儿美绘本（全10册）', '中国四大名著之一，西游记3-8岁版，彩绘注音，有声伴读。49款夸张角色，610张精美插图， 29个西游问答，10大智力挑战，以一种超有趣的方式亲近名著经典。', '2022-10-17', '吕进1', '少年儿童出版社', '历史文化 > 唐朝文化', 'ISBN：9787558911156', 'http://img3m7.ddimg.cn/10/30/25276987-1_w_44.jpg', '2022-10-17 21:35:14', '2022-10-19 00:00:00', 10, 1);
INSERT INTO `book` VALUES (6, 'Java学习指南', '2222', '2022-10-06', '222', '2', '历史文化 > 唐朝文化', 'JAVA_212113123', 'http://img3m7.ddimg.cn/10/30/25276987-1_w_44.jpg', '2022-10-17 22:30:01', '2022-10-25 00:00:00', 20, 100);
INSERT INTO `book` VALUES (7, '百科全书', '3333', '2022-10-12', '33', '333', '科技 > 高新科技 > 微分子科技', 'BKQS-233131', 'http://img3m7.ddimg.cn/10/30/25276987-1_w_44.jpg', '2022-10-17 22:30:59', '2022-10-25 00:00:00', 10, 98);
INSERT INTO `book` VALUES (8, '童话故事大全', '345', '2022-10-05', '55', '5', '科技 > 生物科技', 'THGS-10011122', 'http://localhost:9090/api/book/file/download/1666707290390?&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwiZXhwIjoxNjY4MDAzMjkwfQ.FtPUrLjNRTbfzauHObyGwy0LWyrqD4VSLylW9Ef7FW8&play=1', '2022-10-17 22:32:16', '2022-10-25 00:00:00', 30, 92);
INSERT INTO `book` VALUES (10, '钢铁是怎样炼成的', NULL, NULL, NULL, NULL, '历史文化 > 现代文化', 'GT-121313213', 'http://localhost:9090/api/book/file/download/1666706911257?&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwiZXhwIjoxNjY4MDAyOTExfQ.DLB80S9v-eWBECESJiigVZooV7ks58D43KUQ2ByJQrI&play=1', '2022-10-25 22:09:08', NULL, 20, 100);

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图书名称',
  `book_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图书标准码',
  `user_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户会员码',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名称',
  `user_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户联系方式',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `score` int(10) NULL DEFAULT NULL COMMENT '借书积分',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '已借出' COMMENT '借书状态',
  `days` int(11) NULL DEFAULT 1 COMMENT '借书天数',
  `return_date` datetime(0) NULL DEFAULT NULL COMMENT '归还日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES (2, '222', '333', '20220927-2094581083', '李芸', '138999009988', '2022-10-19 22:06:32', NULL, 10, '已借出', 2, '2022-10-21 00:00:00');
INSERT INTO `borrow` VALUES (3, '222', '22222', '20220927-2094581083', '李芸', '138999009988', '2022-10-19 22:15:28', NULL, 25, '已借出', 3, '2022-10-22 00:00:00');
INSERT INTO `borrow` VALUES (4, '222', '22222', '20220927-2094581083', '李芸', '138999009988', '2022-10-19 22:16:00', NULL, 25, '已借出', 4, '2022-10-23 00:00:00');
INSERT INTO `borrow` VALUES (5, '222', '22222', '20220927-2094581083', '李芸', '138999009988', '2022-10-19 22:16:26', NULL, 30, '已借出', 5, '2022-10-24 00:00:00');
INSERT INTO `borrow` VALUES (6, '222', '22222', '202209271239528742', '王二文案', '13988990099', '2022-10-19 22:19:18', NULL, 30, '已借出', 6, '2022-10-25 00:00:00');
INSERT INTO `borrow` VALUES (7, '222', '22222', '202209271239528742', '王二文案', '13988990099', '2022-10-19 22:19:40', NULL, 30, '已借出', 7, '2022-10-26 00:00:00');
INSERT INTO `borrow` VALUES (8, '222', '22222', '202209271239528742', '王二文案', '13988990099', '2022-10-19 22:19:47', NULL, 30, '已归还', 8, '2022-10-27 00:00:00');
INSERT INTO `borrow` VALUES (9, '222', '22222', '202209271018800687', '测试', NULL, '2022-10-19 22:30:22', NULL, 30, '已归还', 9, '2022-10-28 00:00:00');
INSERT INTO `borrow` VALUES (10, '222', '22222', '202209271018800687', '测试', NULL, '2022-10-19 22:30:47', NULL, 30, '已归还', 10, '2022-10-29 00:00:00');
INSERT INTO `borrow` VALUES (12, 'Java学习指南', 'JAVA_212113123', '202209271239528742', '苗洋洋', '13988990099', '2022-10-25 19:34:03', NULL, 20, '已归还', 3, '2022-10-28 00:00:00');
INSERT INTO `borrow` VALUES (13, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2022-10-25 21:18:25', NULL, 20, '已归还', 3, '2022-10-28 00:00:00');
INSERT INTO `borrow` VALUES (14, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2022-10-25 21:19:58', NULL, 20, '已归还', 3, '2022-10-28 00:00:00');
INSERT INTO `borrow` VALUES (15, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2022-10-25 21:23:02', NULL, 20, '已归还', 3, '2022-10-28 00:00:00');
INSERT INTO `borrow` VALUES (16, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2022-10-25 21:24:37', NULL, 20, '已归还', 3, '2022-10-28 00:00:00');
INSERT INTO `borrow` VALUES (17, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2022-10-25 21:25:49', NULL, 20, '已归还', 4, '2022-10-29 00:00:00');
INSERT INTO `borrow` VALUES (18, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2022-10-25 21:27:37', NULL, 80, '已归还', 4, '2022-10-22 00:00:00');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `pid` int(11) NULL DEFAULT NULL COMMENT '父级id',
  `createtime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updatetime` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (3, '历史文化', '历史文化', NULL, '2022-10-12 20:42:53', NULL);
INSERT INTO `category` VALUES (4, '唐朝文化', '唐朝文化', 3, '2022-10-12 20:43:21', NULL);
INSERT INTO `category` VALUES (5, '宋朝文化', NULL, 3, '2022-10-12 20:46:29', NULL);
INSERT INTO `category` VALUES (9, '现代文化', '现代文化', 3, '2022-10-12 21:00:41', NULL);
INSERT INTO `category` VALUES (10, '科技', '科技', NULL, '2022-10-12 21:50:08', NULL);
INSERT INTO `category` VALUES (11, '高新科技', NULL, 10, '2022-10-12 21:50:16', NULL);
INSERT INTO `category` VALUES (12, '生物科技', '生物科技', 10, '2022-10-12 21:50:22', NULL);
INSERT INTO `category` VALUES (13, '微分子科技', NULL, 11, '2022-10-17 22:11:44', NULL);

-- ----------------------------
-- Table structure for retur
-- ----------------------------
DROP TABLE IF EXISTS `retur`;
CREATE TABLE `retur`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图书名称',
  `book_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图书标准码',
  `user_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户会员码',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名称',
  `user_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户联系方式',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `score` int(10) NULL DEFAULT NULL COMMENT '借书积分',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '已借出' COMMENT '借书状态',
  `days` int(11) NULL DEFAULT 1 COMMENT '借书天数',
  `return_date` datetime(0) NULL DEFAULT NULL COMMENT '归还日期',
  `real_date` datetime(0) NULL DEFAULT NULL COMMENT '实际归还日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of retur
-- ----------------------------
INSERT INTO `retur` VALUES (2, 'Java学习指南', 'JAVA_212113123', '202209271239528742', '苗洋洋', '13988990099', '2022-10-25 20:18:59', NULL, 20, '已借出', 3, '2022-10-28 00:00:00', NULL);
INSERT INTO `retur` VALUES (3, '222', '22222', '202209271018800687', '测试', NULL, '2022-10-25 20:21:41', NULL, 30, '已借出', 10, '2022-10-29 00:00:00', '2022-10-25 00:00:00');
INSERT INTO `retur` VALUES (4, '222', '22222', '202209271018800687', '测试', NULL, '2022-10-25 20:21:53', NULL, 30, '已借出', 9, '2022-10-28 00:00:00', '2022-10-25 00:00:00');
INSERT INTO `retur` VALUES (5, '222', '22222', '202209271239528742', '王二文案', '13988990099', '2022-10-25 20:21:55', NULL, 30, '已借出', 8, '2022-10-27 00:00:00', '2022-10-25 00:00:00');
INSERT INTO `retur` VALUES (6, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2022-10-25 21:19:01', NULL, 20, '已借出', 3, '2022-10-28 00:00:00', '2022-10-25 00:00:00');
INSERT INTO `retur` VALUES (7, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2022-10-25 21:20:04', NULL, 20, '已借出', 3, '2022-10-28 00:00:00', '2022-10-25 00:00:00');
INSERT INTO `retur` VALUES (8, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2022-10-25 21:23:08', NULL, 20, '已借出', 3, '2022-10-28 00:00:00', '2022-10-25 00:00:00');
INSERT INTO `retur` VALUES (9, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2022-10-25 21:24:47', NULL, 20, '已归还', 3, '2022-10-28 00:00:00', '2022-10-25 00:00:00');
INSERT INTO `retur` VALUES (10, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2022-10-25 21:27:19', NULL, 20, '已归还', 4, '2022-10-29 00:00:00', '2022-10-25 00:00:00');
INSERT INTO `retur` VALUES (11, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2022-10-25 21:28:35', NULL, 80, '已归还', 4, '2022-10-22 00:00:00', '2022-10-25 00:00:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '会员码',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updatetime` datetime(0) NULL DEFAULT NULL,
  `account` int(10) NULL DEFAULT 0 COMMENT '账户余额',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '禁用状态 1不禁用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_index`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (19, '苗洋洋', '202209271239528742', 18, '男', '13988990099', '合肥', '2022-09-27 22:10:36', '2022-10-25 19:32:13', 140, 1);
INSERT INTO `user` VALUES (20, '李芸', '20220927-2094581083', 24, '女', '138999009988', '合肥', '2022-09-27 22:16:03', NULL, 20, 1);
INSERT INTO `user` VALUES (21, '落布', '202209271018800687', 20, NULL, NULL, NULL, '2022-09-27 22:17:06', '2022-10-25 19:31:20', 140, 1);
INSERT INTO `user` VALUES (22, '卡森', '202209271213716465', 22, '男', '13988990066', NULL, '2022-09-27 22:34:48', '2022-10-25 19:31:12', 100, 1);
INSERT INTO `user` VALUES (23, '杰克', '20220927688792394', 33, '男', '13977889988', NULL, '2022-09-27 22:35:35', '2022-10-25 21:07:15', -40, 0);

SET FOREIGN_KEY_CHECKS = 1;
