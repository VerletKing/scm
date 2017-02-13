/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : scm

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2017-02-13 20:46:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_login` varchar(20) DEFAULT NULL,
  `acc_name` varchar(20) DEFAULT NULL,
  `acc_pass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`acc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'admin', '管理员', 'admin');
INSERT INTO `account` VALUES ('2', 'user', '普通用户', 'user');

-- ----------------------------
-- Table structure for account_records
-- ----------------------------
DROP TABLE IF EXISTS `account_records`;
CREATE TABLE `account_records` (
  `ar_id` varchar(36) NOT NULL,
  `sup_id` int(11) DEFAULT NULL,
  `ar_date` date DEFAULT NULL,
  `ar_order_id` varchar(36) DEFAULT NULL,
  `ar_bus_type` varchar(10) DEFAULT NULL,
  `ar_payable` decimal(12,2) DEFAULT NULL,
  `ar_paid` decimal(12,2) DEFAULT NULL,
  `ar_arrears` decimal(12,2) DEFAULT NULL,
  `ar_discount` decimal(12,2) DEFAULT NULL,
  `ar_attn` varchar(20) DEFAULT NULL,
  `ar_operator` int(11) DEFAULT NULL,
  `ar_remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_records
-- ----------------------------
INSERT INTO `account_records` VALUES ('ar-20abed8bef9a4d65a5c0294f5e6977be', '2', '2016-12-17', 'bo-ef9734602e8b4889ab38438af89d1d1e', 'bo', '1.00', '1.00', '10.00', '-10.00', '1', '1', '1111111111111111111111111');
INSERT INTO `account_records` VALUES ('ar-9b59f109168049f29dc4ad7079b5a486', '2', '2016-12-17', 'bo-3c552752ed0f4a4191127db232b1eb0e', 'bo', '1111.00', '1.00', '10.00', '1100.00', '1', '1', '1111111111111111111111111');
INSERT INTO `account_records` VALUES ('ar-9ddb7d99e12343ebb4fc5d158b49932b', '3', '2016-12-17', 'bo-8ab998d389074a30969b70153f09a730', 'bo', '200000.00', '20000.00', '200.00', '179800.00', '2222', '22222', '2222222222');
INSERT INTO `account_records` VALUES ('ar-c139b41c1e1943b49ff17325f426a003', '5', '2016-12-17', 'bo-cfe213a8798e46b5b9de2cefed07d077', 'bo', '123.00', '1111.00', '11.00', '-999.00', '111111', '1111111', '1111111111111111111111111');
INSERT INTO `account_records` VALUES ('ar-cb3c8702f27f4ca2954bb8cf1a5a3453', '2', '2016-12-17', 'bo-ca5db12ee9744470808220d681a6d52f', 'bo', '1111.00', '1.00', '10.00', '1100.00', '1', '1', '1111111111111111111111111');
INSERT INTO `account_records` VALUES ('ar-e212d362b2474debaa1a18a016d7397d', '2', '2016-12-17', 'bo-2dd126e7878f44eda50d239795968288', 'bo', '1.00', '1.00', '10.00', '-10.00', '1', '1', '1111111111111111111111111');
INSERT INTO `account_records` VALUES ('ar-ed8394bd4b1f4bd7912d7aef25666c27', '1', '2016-12-17', 'bo-079c2f2d60ce47d39e1a9adaef8ac8db', 'bo', '100000.00', '10000.00', '100.00', '89900.00', '11111', '11111', '1111111111111111111111111');

-- ----------------------------
-- Table structure for buy_order
-- ----------------------------
DROP TABLE IF EXISTS `buy_order`;
CREATE TABLE `buy_order` (
  `bo_id` varchar(36) NOT NULL,
  `sup_id` int(11) DEFAULT NULL,
  `sh_id` varchar(10) DEFAULT NULL,
  `bo_date` date DEFAULT NULL,
  `bo_payable` decimal(12,2) DEFAULT NULL,
  `bo_paid` decimal(12,2) DEFAULT NULL,
  `bo_arrears` decimal(12,2) DEFAULT NULL,
  `bo_original` varchar(20) DEFAULT NULL,
  `bo_remark` varchar(100) DEFAULT NULL,
  `bo_attn` varchar(20) DEFAULT NULL,
  `bo_operator` int(11) DEFAULT NULL,
  PRIMARY KEY (`bo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buy_order
-- ----------------------------
INSERT INTO `buy_order` VALUES ('bo-079c2f2d60ce47d39e1a9adaef8ac8db', '1', '111', '2016-12-17', '100000.00', '10000.00', '100.00', '1111', '1111111111111111111111111', '11111', '11111');
INSERT INTO `buy_order` VALUES ('bo-2dd126e7878f44eda50d239795968288', '2', '1', '2016-12-17', '1.00', '1.00', '10.00', '11111', '1111111111111111111111111', '1', '1');
INSERT INTO `buy_order` VALUES ('bo-3c552752ed0f4a4191127db232b1eb0e', '2', '1', '2016-12-17', '1111.00', '1.00', '10.00', '11111', '1111111111111111111111111', '1', '1');
INSERT INTO `buy_order` VALUES ('bo-8ab998d389074a30969b70153f09a730', '3', '222', '2016-12-17', '200000.00', '20000.00', '200.00', '2222', '2222222222', '2222', '22222');
INSERT INTO `buy_order` VALUES ('bo-ca5db12ee9744470808220d681a6d52f', '2', '1', '2016-12-17', '1111.00', '1.00', '10.00', '11111', '1111111111111111111111111', '1', '1');
INSERT INTO `buy_order` VALUES ('bo-cfe213a8798e46b5b9de2cefed07d077', '5', '123', '2016-12-17', '123.00', '1111.00', '11.00', '11111', '1111111111111111111111111', '111111', '1111111');
INSERT INTO `buy_order` VALUES ('bo-ef9734602e8b4889ab38438af89d1d1e', '2', '1', '2016-12-17', '1.00', '1.00', '10.00', '11111', '1111111111111111111111111', '1', '1');

-- ----------------------------
-- Table structure for buy_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `buy_order_detail`;
CREATE TABLE `buy_order_detail` (
  `bod_id` varchar(36) NOT NULL,
  `goods_id` varchar(36) DEFAULT NULL,
  `goods_name` varchar(20) DEFAULT NULL,
  `goods_unit` varchar(10) DEFAULT NULL,
  `goods_type` varchar(10) DEFAULT NULL,
  `goods_color` varchar(10) DEFAULT NULL,
  `bod_amount` int(11) DEFAULT NULL,
  `bod_buy_price` decimal(12,2) DEFAULT NULL,
  `bod_total_price` decimal(12,2) DEFAULT NULL,
  `bo_id` varchar(36) DEFAULT NULL,
  `bod_imei_list` text,
  PRIMARY KEY (`bod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buy_order_detail
-- ----------------------------
INSERT INTO `buy_order_detail` VALUES ('20ebb8d14f074941a2c6567afab22d56', '2', 'note5', '部', null, '5', '2', '200.00', '400.00', 'bo-8ab998d389074a30969b70153f09a730', '1234##4321');
INSERT INTO `buy_order_detail` VALUES ('274c1f70c5d14d4bb2fb78fd961d5976', '1', 'note4', '部', null, '1', '1', '10000.00', '10000.00', 'bo-079c2f2d60ce47d39e1a9adaef8ac8db', '1111');
INSERT INTO `buy_order_detail` VALUES ('4c3a345cdcf9422fa260cd439b08b8ac', '3', 'note6', '部', null, '6', '1', '10.00', '10.00', 'bo-ca5db12ee9744470808220d681a6d52f', '01');
INSERT INTO `buy_order_detail` VALUES ('557547998ca34c709a016de6ccb5ccce', '3', 'note6', '部', null, '6', '1', '10.00', '10.00', 'bo-3c552752ed0f4a4191127db232b1eb0e', '01');
INSERT INTO `buy_order_detail` VALUES ('5b51d119e3ce42c19b1d322c24804634', '3', 'note6', '部', null, '6', '1', '10.00', '10.00', 'bo-2dd126e7878f44eda50d239795968288', '1');
INSERT INTO `buy_order_detail` VALUES ('bf2dd502067246c0b8b77f5070ccb9b3', '3', 'note6', '部', null, '6', '1', '10.00', '10.00', 'bo-ef9734602e8b4889ab38438af89d1d1e', '1');
INSERT INTO `buy_order_detail` VALUES ('d78411d2320b4bd9b303aefbd66d587f', '3', 'note6', '部', null, '6', '1', '300.00', '300.00', 'bo-8ab998d389074a30969b70153f09a730', '321##123');
INSERT INTO `buy_order_detail` VALUES ('e9632e8d61e94d8d8146cf7f91ffc414', '2', 'note5', '部', null, '5', '1', '12.00', '12.00', 'bo-cfe213a8798e46b5b9de2cefed07d077', '123');
INSERT INTO `buy_order_detail` VALUES ('eeb2a73532334cf38ff85d1ebeb79cc4', '2', 'note5', '部', null, '5', '2', '2222.00', '4444.00', 'bo-079c2f2d60ce47d39e1a9adaef8ac8db', '2222##3333');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_Id` varchar(36) NOT NULL,
  `goods_name` varchar(20) DEFAULT NULL,
  `goods_unit` varchar(10) DEFAULT NULL,
  `goods_type` varchar(10) DEFAULT NULL,
  `goods_color` varchar(10) DEFAULT NULL,
  `goods_store` int(11) DEFAULT NULL,
  `goods_limit` int(11) DEFAULT NULL,
  `goods_commission` decimal(2,2) DEFAULT NULL,
  `goods_producer` varchar(50) DEFAULT NULL,
  `goods_remark` varchar(100) DEFAULT NULL,
  `goods_sel_price` decimal(12,2) DEFAULT NULL,
  `goods_buy_price` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`goods_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'note4', '部', null, '1', null, null, null, null, 'red note4', '2500.00', '2000.00');
INSERT INTO `goods` VALUES ('2', 'note5', '部', null, '2', null, null, null, null, 'red note5', '3500.00', '3000.00');
INSERT INTO `goods` VALUES ('3', 'note6', '部', null, '3', null, null, null, null, 'blue note5', '4500.00', '4000.00');

-- ----------------------------
-- Table structure for return_order
-- ----------------------------
DROP TABLE IF EXISTS `return_order`;
CREATE TABLE `return_order` (
  `ro_id` varchar(36) NOT NULL,
  `sup_id` int(11) DEFAULT NULL,
  `sh_id` varchar(10) DEFAULT NULL,
  `ro_date` date DEFAULT NULL,
  `ro_payable` decimal(12,2) DEFAULT NULL,
  `ro_paid` decimal(12,2) DEFAULT NULL,
  `ro_remark` varchar(100) DEFAULT NULL,
  `ro_attn` varchar(20) DEFAULT NULL,
  `ro_operator` int(11) DEFAULT NULL,
  PRIMARY KEY (`ro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of return_order
-- ----------------------------

-- ----------------------------
-- Table structure for return_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `return_order_detail`;
CREATE TABLE `return_order_detail` (
  `rod_id` varchar(36) NOT NULL,
  `goods_id` varchar(36) DEFAULT NULL,
  `goods_unit` varchar(10) DEFAULT NULL,
  `goods_name` varchar(20) DEFAULT NULL,
  `goods_type` varchar(10) DEFAULT NULL,
  `goods_color` varchar(10) DEFAULT NULL,
  `rod_amount` int(11) DEFAULT NULL,
  `rod_return_price` decimal(12,2) DEFAULT NULL,
  `rod_total_price` decimal(12,2) DEFAULT NULL,
  `rod_imei_list` text,
  `ro_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`rod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of return_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for store_house
-- ----------------------------
DROP TABLE IF EXISTS `store_house`;
CREATE TABLE `store_house` (
  `sh_id` varchar(10) NOT NULL,
  `sh_name` varchar(20) DEFAULT NULL,
  `sh_responsible` varchar(20) DEFAULT NULL,
  `sh_phone` varchar(11) DEFAULT NULL,
  `sh_address` varchar(50) DEFAULT NULL,
  `sh_type` varchar(10) DEFAULT NULL,
  `sh_remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store_house
-- ----------------------------
INSERT INTO `store_house` VALUES ('1', '主仓库', null, null, '广东省广州市', null, null);
INSERT INTO `store_house` VALUES ('2', '深圳分仓库', null, null, '广东省深圳市', null, null);

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `sup_id` int(11) NOT NULL,
  `sup_name` varchar(20) DEFAULT NULL,
  `sup_linkman` varchar(20) DEFAULT NULL,
  `sup_phone` varchar(11) DEFAULT NULL,
  `sup_address` varchar(100) DEFAULT NULL,
  `sup_remark` varchar(100) DEFAULT NULL,
  `sup_pay` decimal(12,2) DEFAULT NULL,
  `sup_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`sup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('1', '苹果供应商', '小张', '12388888887', '广州花都', '普通供应商', '0.00', '1');
INSERT INTO `supplier` VALUES ('2', '三星供应商', '小王', '12388888888', '广州增城', '普通供应商', '0.00', '1');
INSERT INTO `supplier` VALUES ('3', '华为供应商', '小王', '12388888889', '广东深圳', '一级供应商', '0.00', '2');
INSERT INTO `supplier` VALUES ('4', 'TCL供应商', '小王', '12388888666', '广州增城', '普通供应商', '0.00', '1');
INSERT INTO `supplier` VALUES ('5', '乐视供应商', '小辉', '12345678910', '湖北武汉', '一级供应商', '0.00', '1');

-- ----------------------------
-- Table structure for sys_param
-- ----------------------------
DROP TABLE IF EXISTS `sys_param`;
CREATE TABLE `sys_param` (
  `sys_param_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sys_param_field` varchar(50) DEFAULT NULL,
  `sys_param_value` varchar(500) DEFAULT NULL,
  `sys_param_text` varchar(50) DEFAULT NULL,
  `sys_param_type` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`sys_param_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_param
-- ----------------------------
INSERT INTO `sys_param` VALUES ('1', 'shId', 'select s.sh_id as sys_param_value,s.sh_name as sys_param_text from store_house s', null, '1');
INSERT INTO `sys_param` VALUES ('2', 'supType', '1', '一级供应商', null);
INSERT INTO `sys_param` VALUES ('3', 'supType', '2', '二级供应商', null);
INSERT INTO `sys_param` VALUES ('4', 'supType', '3', '普通供应商', null);
INSERT INTO `sys_param` VALUES ('5', 'goodsColor', '1', '红色', null);
INSERT INTO `sys_param` VALUES ('6', 'goodsColor', '2', '绿色', null);
INSERT INTO `sys_param` VALUES ('7', 'goodsColor', '3', '蓝色', null);
