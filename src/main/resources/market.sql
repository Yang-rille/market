

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for smbms_bill
-- ----------------------------
DROP TABLE IF EXISTS `smbms_bill`;
CREATE TABLE `smbms_bill` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `billCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '账单编码',
  `productName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `productUnit` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品单位',
  `productCount` decimal(20,2) DEFAULT NULL COMMENT '商品数量',
  `totalPrice` decimal(20,2) DEFAULT NULL COMMENT '商品总额',
  `isPayment` int(10) DEFAULT NULL COMMENT '是否支付（1：未支付 2：已支付）',
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
  `modifyDate` datetime DEFAULT NULL COMMENT '更新时间',
  `memberId` bigint(20) DEFAULT NULL COMMENT '会员ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of smbms_bill
-- ----------------------------
BEGIN;
INSERT INTO `smbms_bill` VALUES (1, 'BILL2016_001', '菠萝', '斤', 500.00, 25000.00, 2, 1, '2020-12-14 13:02:03', NULL, '2021-01-03 23:56:17', 4);
INSERT INTO `smbms_bill` VALUES (3, 'BILL2016_003', '苹果', '斤', 300.00, 5890.00, 2, 1, '2020-12-14 13:02:03', NULL, '2020-12-30 22:16:50', 2);
INSERT INTO `smbms_bill` VALUES (4, 'BILL2016_004', '鸭梨', '斤', 200.00, 9800.00, 2, 1, '2020-10-10 03:12:13', NULL, '2021-01-03 23:44:58', 4);
INSERT INTO `smbms_bill` VALUES (5, 'BILL2016_005', '苹果', '斤', 500.00, 7000.00, 2, 1, '2020-12-14 13:02:03', NULL, '2021-01-03 21:26:30', 4);
INSERT INTO `smbms_bill` VALUES (6, 'BILL2016_006', '美国大杏仁', '袋', 300.00, 5000.00, 2, 1, '2020-04-14 06:08:09', NULL, '2021-01-03 23:54:51', 2);
INSERT INTO `smbms_bill` VALUES (8, 'BILL2016_008', '菠萝', '个', 600.00, 6000.00, 2, 1, '2020-04-14 05:12:13', NULL, '2021-01-03 23:47:14', 4);
INSERT INTO `smbms_bill` VALUES (10, 'BILL2016_010', '苹果', '斤', 200.00, 2000.00, 2, 1, '2020-10-29 05:07:03', NULL, '2021-01-03 21:27:11', 4);
INSERT INTO `smbms_bill` VALUES (11, 'BILL2016_011', '橘子', '斤', 50.00, 10000.00, 1, 1, '2020-04-14 16:16:00', NULL, '2021-01-03 23:56:43', 4);
INSERT INTO `smbms_bill` VALUES (14, 'BILL2016_014', '石榴', '斤', 400.00, 5000.00, 2, 1, '2020-10-09 15:20:00', NULL, '2021-01-03 23:45:23', 4);
INSERT INTO `smbms_bill` VALUES (15, 'BILL2016_015', '香蕉', '斤', 600.00, 4000.00, 2, 1, '2020-11-14 14:00:00', NULL, '2021-01-03 21:26:46', 4);
INSERT INTO `smbms_bill` VALUES (16, 'BILL2016_016', '橙子', '斤', 2000.00, 6000.00, 2, 1, '2020-03-27 13:03:01', NULL, '2021-01-03 23:46:05', 4);
INSERT INTO `smbms_bill` VALUES (17, 'BILL2016_017', '香蕉', '斤', 1500.00, 4500.00, 2, 1, '2020-05-10 12:00:00', NULL, '2021-01-03 21:27:32', 4);
INSERT INTO `smbms_bill` VALUES (21, 'HG-100003', '榴莲', '斤', 100.00, 300.00, 2, 1, '2020-12-31 02:03:05', NULL, NULL, 2);
INSERT INTO `smbms_bill` VALUES (23, 'HG-100003', '橘子', '斤', 100.00, 300.00, 2, 1, '2021-01-03 23:44:08', NULL, '2021-01-03 23:44:20', 2);
COMMIT;

-- ----------------------------
-- Table structure for smbms_fruit
-- ----------------------------
DROP TABLE IF EXISTS `smbms_fruit`;
CREATE TABLE `smbms_fruit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键，自增',
  `fruitCode` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fruitName` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名称',
  `fruitPrice` float(10,2) NOT NULL COMMENT '商品价格',
  `fruitDesc` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `fruitStock` bigint(20) unsigned zerofill NOT NULL COMMENT '商品库存',
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint(20) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of smbms_fruit
-- ----------------------------
BEGIN;
INSERT INTO `smbms_fruit` VALUES (1, 'PG-100001', '苹果', 3.50, '优质的红富士苹果', 00000000000000000300, 1, '2021-01-02 11:07:06', NULL, NULL);
INSERT INTO `smbms_fruit` VALUES (2, 'XJ-100001', '香蕉', 2.50, '大香蕉', 00000000000000000300, 1, '2021-01-02 11:08:00', 1, '2021-01-03 23:39:22');
INSERT INTO `smbms_fruit` VALUES (13, 'LL-1000002', '榴莲', 5.00, '贵族榴莲', 00000000000000000100, 1, '2021-01-02 03:02:32', NULL, NULL);
INSERT INTO `smbms_fruit` VALUES (14, 'LL-1000003', '菠萝', 5.00, '南方凤梨', 00000000000000000100, 1, '2021-01-02 03:31:45', 1, '2021-01-03 23:49:23');
INSERT INTO `smbms_fruit` VALUES (15, 'LL-1000003', '石榴', 5.00, '香甜可口的大石榴', 00000000000000000800, 1, '2021-01-03 23:48:55', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for smbms_member
-- ----------------------------
DROP TABLE IF EXISTS `smbms_member`;
CREATE TABLE `smbms_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `memCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '会员编码',
  `memName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '会员名称',
  `memDesc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '会员详细描述',
  `memPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `memAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地址',
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyDate` datetime DEFAULT NULL COMMENT '更新时间',
  `modifyBy` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of smbms_member
-- ----------------------------
BEGIN;
INSERT INTO `smbms_member` VALUES (2, 'HB_GYS001', '杨慧清', '经常购物的高级会员', '13309094212', '河北省石家庄新华区', 1, '2020-04-13 04:20:40', NULL, NULL);
INSERT INTO `smbms_member` VALUES (3, 'GZ_GYS001', '杨一', '经常购物的高级会员', '13402013312', '广东省深圳市福田区深南大道6006华丰大厦', 1, '2020-03-21 16:56:07', NULL, NULL);
INSERT INTO `smbms_member` VALUES (4, 'GZ_GYS002', '杨二', '经常购物的高级会员', '18599897645', '广东省深圳市福龙工业区B2栋3楼西', 1, '2020-03-22 16:52:07', NULL, NULL);
INSERT INTO `smbms_member` VALUES (5, 'JS_GYS001', '杨旭东', '经常购物会员', '13754444221', '江苏省兴化市林湖工业区', 1, '2020-11-22 16:52:07', '2021-01-03 23:38:56', NULL);
INSERT INTO `smbms_member` VALUES (6, 'BJ_GYS002', '杨四', '经常购物的高级会员', '13422235678', '北京市朝阳区珠江帝景1号楼', 1, '2020-03-21 17:52:07', NULL, NULL);
INSERT INTO `smbms_member` VALUES (7, 'BJ_GYS003', '杨五', '经常购物的高级会员', '13344441135', '北京大兴青云店开发区', 1, '2020-04-13 00:00:00', NULL, NULL);
INSERT INTO `smbms_member` VALUES (8, 'ZJ_GYS001', '杨六', '经常购物的高级会员', '18099953223', '浙江省宁波市慈溪周巷小安村', 1, '2020-11-21 06:02:07', NULL, NULL);
INSERT INTO `smbms_member` VALUES (9, 'GX_GYS001', '杨七', '经常购物的高级会员', '13323566543', '广西南宁市秀厢大道42-1号', 1, '2020-03-21 19:52:07', NULL, NULL);
INSERT INTO `smbms_member` VALUES (14, 'JS_GYS003', '杨十二', '经常购物的高级会员', '18567674532', '江苏无锡盛岸西路', 1, '2020-04-23 11:11:11', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for smbms_role
-- ----------------------------
DROP TABLE IF EXISTS `smbms_role`;
CREATE TABLE `smbms_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `roleCode` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色编码',
  `roleName` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色名称',
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint(20) DEFAULT NULL COMMENT '修改者',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of smbms_role
-- ----------------------------
BEGIN;
INSERT INTO `smbms_role` VALUES (1, 'SMBMS_ADMIN', '系统管理员', 1, '2020-04-13 00:00:00', NULL, NULL);
INSERT INTO `smbms_role` VALUES (2, 'SMBMS_SALE', '销售人员', 1, '2020-04-13 00:00:00', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for smbms_user
-- ----------------------------
DROP TABLE IF EXISTS `smbms_user`;
CREATE TABLE `smbms_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `userCode` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户编码',
  `userName` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名称',
  `userPassword` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户密码',
  `gender` int(10) DEFAULT NULL COMMENT '性别（1:女、 2:男）',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机',
  `address` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地址',
  `userRole` int(20) DEFAULT NULL COMMENT '用户角色（取自角色表-角色id）',
  `createdBy` int(20) DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyBy` int(20) DEFAULT NULL COMMENT '更新者（userId）',
  `modifyDate` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of smbms_user
-- ----------------------------
BEGIN;
INSERT INTO `smbms_user` VALUES (1, 'admin', '系统管理员', '111111', 1, '1996-10-19', '13688889999', '北京市海淀区成府路207号', 1, 1, '2020-03-21 16:52:07', 1, '2020-01-11 09:41:01');
INSERT INTO `smbms_user` VALUES (2, 'yanghq', '杨慧清', '111111a', 2, '1999-12-28', '13899999999', '地球村', 1, 1, '2020-12-30 02:18:44', 1, '2020-12-30 20:17:56');
INSERT INTO `smbms_user` VALUES (3, 'liming', '李明', '111111', 1, '2021-01-13', '13688884457', '北京市东城区前门东大街9号', 2, 1, '2020-12-31 19:52:09', 1, '2021-01-03 23:38:41');
INSERT INTO `smbms_user` VALUES (5, 'hanlubiao', '韩路彪', '111111', 2, '1984-06-05', '18567542321', '北京市朝阳区北辰中心12号', 2, 1, '2020-12-31 19:52:09', NULL, NULL);
INSERT INTO `smbms_user` VALUES (8, 'zhaoyan', '赵燕', '111111', 1, '1986-03-07', '18098764545', '北京市海淀区回龙观小区10号楼', 2, 1, '2020-04-21 13:54:07', NULL, NULL);
INSERT INTO `smbms_user` VALUES (10, 'sunlei', '孙磊', '111111', 2, '1981-01-04', '13387676765', '北京市朝阳区管庄新月小区12楼', 2, 1, '2020-05-06 10:52:07', NULL, NULL);
INSERT INTO `smbms_user` VALUES (11, 'sunxing', '孙兴', '111111', 2, '1998-12-29', '13367890900', '北京市朝阳区建国门南大街10号', 2, 1, '2020-11-09 16:51:17', 1, '2020-12-30 02:03:07');
INSERT INTO `smbms_user` VALUES (13, 'dengchao', '邓超', '111111', 2, '1981-11-04', '13689674534', '北京市海淀区北航家属院10号楼', 2, 1, '2020-07-11 08:02:47', NULL, NULL);
INSERT INTO `smbms_user` VALUES (14, 'yangguo', '杨过', '111111', 2, '1980-01-01', '13388886623', '北京市朝阳区北苑家园茉莉园20号楼', 2, 1, '2020-02-01 03:52:07', NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
