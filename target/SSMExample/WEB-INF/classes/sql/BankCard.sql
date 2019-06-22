/*
 Navicat MySQL Data Transfer

 Source Server         : develop
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : 140.143.72.57:3306
 Source Schema         : develop

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 20/06/2019 10:30:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for BankCard
-- ----------------------------
DROP TABLE IF EXISTS `BankCard`;
CREATE TABLE `BankCard`  (
  `card_id` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '银行卡号',
  `cust_id` int(11) NOT NULL COMMENT '顾客ID',
  `create_date` datetime(0) NOT NULL COMMENT '开户时间',
  `create_money` double(255, 0) NOT NULL COMMENT '开户金额',
  `currency_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '货币类型',
  `deposit_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '存款类型',
  `balance` double(255, 0) UNSIGNED ZEROFILL NOT NULL COMMENT '余额',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `report_loss` int(255) NULL DEFAULT NULL COMMENT '是否挂失',
  PRIMARY KEY (`card_id`) USING BTREE,
  INDEX `fk_cust_id`(`cust_id`) USING BTREE,
  CONSTRAINT `fk_cust_id` FOREIGN KEY (`cust_id`) REFERENCES `Customer` (`cust_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
