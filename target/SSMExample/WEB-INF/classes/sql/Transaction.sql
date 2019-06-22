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

 Date: 20/06/2019 10:30:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Transaction
-- ----------------------------
DROP TABLE IF EXISTS `Transaction`;
CREATE TABLE `Transaction`  (
  `card_id` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '银行卡号',
  `transanction_date` datetime(0) NOT NULL COMMENT '交易日期',
  `transanction_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '交易类型',
  `transanction_pay` double(255, 0) NULL DEFAULT NULL COMMENT '交易金额',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  INDEX `fk_card_id`(`card_id`) USING BTREE,
  CONSTRAINT `fk_card_id` FOREIGN KEY (`card_id`) REFERENCES `BankCard` (`card_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
