/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : cardealer

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-06-16 20:36:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `car`
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `CarID` char(5) NOT NULL,
  `SerialNumber` varchar(20) DEFAULT NULL,
  `Make` varchar(20) DEFAULT NULL,
  `Model` varchar(20) DEFAULT NULL,
  `Color` varchar(20) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `CarForSale` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`CarID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('C01', 'N0001', 'Toyota', 'Sedan', 'Red', '2012', 'Y');
INSERT INTO `car` VALUES ('C02', 'N0002', 'Honda', 'Sedan', 'Red', '2013', 'N');
INSERT INTO `car` VALUES ('C03', 'N0003', 'Honda', 'Wagon', 'Black', '2012', 'Y');
INSERT INTO `car` VALUES ('C04', 'N0004', 'Mitsubishi', 'Wagon', 'Black', '2013', 'Y');
INSERT INTO `car` VALUES ('C05', 'N0005', 'Toyota', 'Wagon', 'Silver', '2013', 'N');
INSERT INTO `car` VALUES ('C06', 'N0006', 'Honda', 'Sedan', 'Green', '2009', 'N');
INSERT INTO `car` VALUES ('C07', 'N0007', 'Isuzu', 'Wagon', 'Brown', '2008', 'N');
INSERT INTO `car` VALUES ('C08', 'N0008', 'Mitsubishi', 'Pickup', 'Grey', '2011', 'N');
INSERT INTO `car` VALUES ('C09', 'N0009', 'Toyota', 'Sedan', 'Grey', '2012', 'N');
INSERT INTO `car` VALUES ('C10', 'N0010', 'Toyota', 'Wagon', 'Silver', '2013', 'N');
INSERT INTO `car` VALUES ('C11', 'N0011', 'Honda', 'Sedan', 'White', '2014', 'Y');

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `CustomerID` char(5) NOT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Address` text,
  `City` varchar(100) DEFAULT NULL,
  `StateProvince` varchar(100) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `PostalCode` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('C01', 'A', 'B', null, null, null, null, null, null);
INSERT INTO `customer` VALUES ('C02', 'B', 'C', null, null, null, null, null, null);
INSERT INTO `customer` VALUES ('C03', 'C', 'D', null, null, null, null, null, null);
INSERT INTO `customer` VALUES ('C04', 'D', 'E', null, null, null, null, null, null);
INSERT INTO `customer` VALUES ('C05', 'E', 'F', null, null, null, null, null, null);
INSERT INTO `customer` VALUES ('C06', 'F', 'G', null, null, null, null, null, null);
INSERT INTO `customer` VALUES ('C07', 'G', 'H', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `mechanic`
-- ----------------------------
DROP TABLE IF EXISTS `mechanic`;
CREATE TABLE `mechanic` (
  `MechanicID` varchar(5) NOT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MechanicID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mechanic
-- ----------------------------
INSERT INTO `mechanic` VALUES ('M01', 'A', 'B');
INSERT INTO `mechanic` VALUES ('M02', 'B', 'C');
INSERT INTO `mechanic` VALUES ('M03', 'C', 'D');

-- ----------------------------
-- Table structure for `parts`
-- ----------------------------
DROP TABLE IF EXISTS `parts`;
CREATE TABLE `parts` (
  `PartsID` char(5) NOT NULL,
  `PartNumber` varchar(6) DEFAULT NULL,
  `Description` text,
  `PurchasePrice` int(11) DEFAULT NULL,
  `RetailPrice` int(11) DEFAULT NULL,
  PRIMARY KEY (`PartsID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parts
-- ----------------------------
INSERT INTO `parts` VALUES ('P01', 'N0001', 'Parts A', '120000', '145000');
INSERT INTO `parts` VALUES ('P02', 'N0002', 'Parts B', '250000', '320000');
INSERT INTO `parts` VALUES ('P03', 'N0003', 'Parts C', '175000', '280000');
INSERT INTO `parts` VALUES ('P04', 'N0004', 'Parts D', '578000', '7600000');
INSERT INTO `parts` VALUES ('P05', 'N0005', 'Parts E', '99000', '145000');
INSERT INTO `parts` VALUES ('P06', 'N0006', 'Parts F', '89500', '125000');

-- ----------------------------
-- Table structure for `partsused`
-- ----------------------------
DROP TABLE IF EXISTS `partsused`;
CREATE TABLE `partsused` (
  `PartsUsedID` int(11) NOT NULL AUTO_INCREMENT,
  `PartsID` char(5) DEFAULT NULL,
  `ServiceTicketID` int(11) DEFAULT NULL,
  `NumberUsed` int(11) DEFAULT NULL,
  PRIMARY KEY (`PartsUsedID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of partsused
-- ----------------------------
INSERT INTO `partsused` VALUES ('1', 'P04', '83', '1');
INSERT INTO `partsused` VALUES ('2', 'P06', '88', '10');
INSERT INTO `partsused` VALUES ('3', 'P02', '95', '2');
INSERT INTO `partsused` VALUES ('4', 'P01', '98', '2');
INSERT INTO `partsused` VALUES ('5', 'P06', '77', '5');
INSERT INTO `partsused` VALUES ('6', 'P06', '51', '5');
INSERT INTO `partsused` VALUES ('7', 'P04', '91', '3');
INSERT INTO `partsused` VALUES ('8', 'P02', '82', '8');
INSERT INTO `partsused` VALUES ('9', 'P01', '45', '3');
INSERT INTO `partsused` VALUES ('10', 'P01', '89', '8');
INSERT INTO `partsused` VALUES ('11', 'P01', '33', '5');
INSERT INTO `partsused` VALUES ('12', 'P03', '2', '6');
INSERT INTO `partsused` VALUES ('13', 'P02', '46', '4');
INSERT INTO `partsused` VALUES ('14', 'P03', '3', '1');
INSERT INTO `partsused` VALUES ('15', 'P05', '91', '1');
INSERT INTO `partsused` VALUES ('16', 'P01', '1', '3');
INSERT INTO `partsused` VALUES ('17', 'P03', '18', '3');
INSERT INTO `partsused` VALUES ('18', 'P04', '29', '10');
INSERT INTO `partsused` VALUES ('19', 'P03', '70', '4');
INSERT INTO `partsused` VALUES ('20', 'P04', '45', '6');
INSERT INTO `partsused` VALUES ('21', 'P06', '91', '7');
INSERT INTO `partsused` VALUES ('22', 'P01', '86', '1');
INSERT INTO `partsused` VALUES ('23', 'P05', '8', '10');
INSERT INTO `partsused` VALUES ('24', 'P05', '89', '3');
INSERT INTO `partsused` VALUES ('25', 'P04', '43', '8');
INSERT INTO `partsused` VALUES ('26', 'P06', '92', '7');
INSERT INTO `partsused` VALUES ('27', 'P02', '85', '2');
INSERT INTO `partsused` VALUES ('28', 'P05', '26', '9');
INSERT INTO `partsused` VALUES ('29', 'P04', '99', '1');
INSERT INTO `partsused` VALUES ('30', 'P05', '15', '9');
INSERT INTO `partsused` VALUES ('31', 'P03', '86', '5');
INSERT INTO `partsused` VALUES ('32', 'P04', '91', '3');
INSERT INTO `partsused` VALUES ('33', 'P01', '12', '2');
INSERT INTO `partsused` VALUES ('34', 'P04', '2', '6');
INSERT INTO `partsused` VALUES ('35', 'P02', '78', '6');
INSERT INTO `partsused` VALUES ('36', 'P06', '25', '10');
INSERT INTO `partsused` VALUES ('37', 'P03', '76', '8');
INSERT INTO `partsused` VALUES ('38', 'P01', '42', '8');
INSERT INTO `partsused` VALUES ('39', 'P04', '4', '6');
INSERT INTO `partsused` VALUES ('40', 'P01', '91', '6');
INSERT INTO `partsused` VALUES ('41', 'P04', '34', '10');
INSERT INTO `partsused` VALUES ('42', 'P01', '56', '1');
INSERT INTO `partsused` VALUES ('43', 'P04', '72', '9');
INSERT INTO `partsused` VALUES ('44', 'P05', '76', '3');
INSERT INTO `partsused` VALUES ('45', 'P03', '6', '8');
INSERT INTO `partsused` VALUES ('46', 'P03', '76', '9');
INSERT INTO `partsused` VALUES ('47', 'P01', '56', '2');
INSERT INTO `partsused` VALUES ('48', 'P04', '87', '1');
INSERT INTO `partsused` VALUES ('49', 'P03', '91', '6');
INSERT INTO `partsused` VALUES ('50', 'P03', '5', '2');
INSERT INTO `partsused` VALUES ('51', 'P05', '69', '6');
INSERT INTO `partsused` VALUES ('52', 'P03', '76', '5');
INSERT INTO `partsused` VALUES ('53', 'P05', '31', '3');
INSERT INTO `partsused` VALUES ('54', 'P06', '55', '8');
INSERT INTO `partsused` VALUES ('55', 'P03', '7', '7');
INSERT INTO `partsused` VALUES ('56', 'P05', '3', '5');
INSERT INTO `partsused` VALUES ('57', 'P02', '20', '7');
INSERT INTO `partsused` VALUES ('58', 'P01', '37', '4');
INSERT INTO `partsused` VALUES ('59', 'P02', '86', '2');
INSERT INTO `partsused` VALUES ('60', 'P05', '32', '2');
INSERT INTO `partsused` VALUES ('61', 'P01', '38', '9');
INSERT INTO `partsused` VALUES ('62', 'P02', '46', '1');
INSERT INTO `partsused` VALUES ('63', 'P06', '65', '3');
INSERT INTO `partsused` VALUES ('64', 'P02', '95', '6');
INSERT INTO `partsused` VALUES ('65', 'P06', '17', '6');
INSERT INTO `partsused` VALUES ('66', 'P01', '44', '3');
INSERT INTO `partsused` VALUES ('67', 'P05', '27', '1');
INSERT INTO `partsused` VALUES ('68', 'P03', '94', '3');
INSERT INTO `partsused` VALUES ('69', 'P02', '34', '3');
INSERT INTO `partsused` VALUES ('70', 'P06', '7', '2');
INSERT INTO `partsused` VALUES ('71', 'P04', '35', '9');
INSERT INTO `partsused` VALUES ('72', 'P06', '54', '2');
INSERT INTO `partsused` VALUES ('73', 'P06', '22', '2');
INSERT INTO `partsused` VALUES ('74', 'P06', '14', '6');
INSERT INTO `partsused` VALUES ('75', 'P04', '74', '6');
INSERT INTO `partsused` VALUES ('76', 'P01', '3', '4');
INSERT INTO `partsused` VALUES ('77', 'P03', '86', '5');
INSERT INTO `partsused` VALUES ('78', 'P06', '78', '1');
INSERT INTO `partsused` VALUES ('79', 'P03', '61', '6');
INSERT INTO `partsused` VALUES ('80', 'P03', '24', '10');
INSERT INTO `partsused` VALUES ('81', 'P02', '76', '2');
INSERT INTO `partsused` VALUES ('82', 'P01', '31', '7');
INSERT INTO `partsused` VALUES ('83', 'P06', '52', '8');
INSERT INTO `partsused` VALUES ('84', 'P01', '92', '8');
INSERT INTO `partsused` VALUES ('85', 'P05', '26', '9');
INSERT INTO `partsused` VALUES ('86', 'P06', '81', '3');
INSERT INTO `partsused` VALUES ('87', 'P04', '43', '1');
INSERT INTO `partsused` VALUES ('88', 'P06', '99', '7');
INSERT INTO `partsused` VALUES ('89', 'P01', '30', '1');
INSERT INTO `partsused` VALUES ('90', 'P03', '26', '8');
INSERT INTO `partsused` VALUES ('91', 'P04', '17', '1');
INSERT INTO `partsused` VALUES ('92', 'P02', '3', '1');
INSERT INTO `partsused` VALUES ('93', 'P04', '94', '4');
INSERT INTO `partsused` VALUES ('94', 'P04', '46', '6');
INSERT INTO `partsused` VALUES ('95', 'P06', '63', '7');
INSERT INTO `partsused` VALUES ('96', 'P06', '84', '3');
INSERT INTO `partsused` VALUES ('97', 'P05', '89', '9');
INSERT INTO `partsused` VALUES ('98', 'P06', '83', '4');
INSERT INTO `partsused` VALUES ('99', 'P01', '6', '1');
INSERT INTO `partsused` VALUES ('100', 'P05', '97', '1');

-- ----------------------------
-- Table structure for `salesinvoice`
-- ----------------------------
DROP TABLE IF EXISTS `salesinvoice`;
CREATE TABLE `salesinvoice` (
  `InvoiceID` int(5) NOT NULL AUTO_INCREMENT,
  `InvoiceNumber` varchar(20) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `CarID` char(5) DEFAULT NULL,
  `CustomerID` char(5) DEFAULT NULL,
  `SalesPersonID` char(5) DEFAULT NULL,
  PRIMARY KEY (`InvoiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of salesinvoice
-- ----------------------------
INSERT INTO `salesinvoice` VALUES ('51', 'INV01', '2019-06-11', 'C01', 'C01', 'SP01');
INSERT INTO `salesinvoice` VALUES ('52', 'INV02', '2019-07-04', 'C04', 'C03', 'SP01');
INSERT INTO `salesinvoice` VALUES ('53', 'INV03', '2019-05-07', 'C11', 'C04', 'SP02');

-- ----------------------------
-- Table structure for `salesperson`
-- ----------------------------
DROP TABLE IF EXISTS `salesperson`;
CREATE TABLE `salesperson` (
  `SalesPersonID` char(5) NOT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SalesPersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of salesperson
-- ----------------------------
INSERT INTO `salesperson` VALUES ('SP01', 'A', 'B');
INSERT INTO `salesperson` VALUES ('SP02', 'B', 'C');
INSERT INTO `salesperson` VALUES ('SP03', 'C', 'D');
INSERT INTO `salesperson` VALUES ('SP04', 'D', 'E');

-- ----------------------------
-- Table structure for `service`
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service` (
  `ServiceID` char(5) NOT NULL,
  `ServiceName` text,
  `HourlyRate` int(11) DEFAULT NULL,
  PRIMARY KEY (`ServiceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES ('S01', 'Service A', '120000');
INSERT INTO `service` VALUES ('S02', 'Service B', '135000');
INSERT INTO `service` VALUES ('S03', 'Service C', '150000');
INSERT INTO `service` VALUES ('S04', 'Service D', '175000');

-- ----------------------------
-- Table structure for `servicemechanic`
-- ----------------------------
DROP TABLE IF EXISTS `servicemechanic`;
CREATE TABLE `servicemechanic` (
  `ServiceMechanicID` int(11) NOT NULL AUTO_INCREMENT,
  `ServiceTicketID` int(11) DEFAULT NULL,
  `ServiceID` char(5) DEFAULT NULL,
  `MechanicID` char(5) DEFAULT NULL,
  `Hours` int(11) DEFAULT NULL,
  `Comments` text,
  `Rate` enum('Good','Poor') DEFAULT NULL,
  PRIMARY KEY (`ServiceMechanicID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of servicemechanic
-- ----------------------------
INSERT INTO `servicemechanic` VALUES ('1', '1', 'S01', 'M02', '11', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('2', '2', 'S02', 'M02', '38', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('3', '3', 'S04', 'M03', '2', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('4', '4', 'S04', 'M02', '39', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('5', '5', 'S02', 'M01', '28', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('6', '6', 'S04', 'M01', '29', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('7', '7', 'S04', 'M01', '16', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('8', '8', 'S03', 'M01', '37', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('9', '9', 'S01', 'M02', '30', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('10', '10', 'S01', 'M02', '21', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('11', '11', 'S01', 'M01', '46', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('12', '12', 'S04', 'M01', '35', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('13', '13', 'S02', 'M01', '34', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('14', '14', 'S02', 'M01', '34', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('15', '15', 'S03', 'M01', '29', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('16', '16', 'S04', 'M01', '4', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('17', '17', 'S01', 'M03', '32', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('18', '18', 'S01', 'M02', '5', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('19', '19', 'S02', 'M02', '28', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('20', '20', 'S02', 'M01', '19', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('21', '21', 'S01', 'M03', '17', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('22', '22', 'S04', 'M01', '43', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('23', '23', 'S01', 'M02', '8', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('24', '24', 'S02', 'M01', '30', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('25', '25', 'S03', 'M03', '22', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('26', '26', 'S02', 'M03', '9', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('27', '27', 'S04', 'M02', '6', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('28', '28', 'S01', 'M03', '39', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('29', '29', 'S01', 'M03', '32', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('30', '30', 'S03', 'M02', '24', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('31', '31', 'S02', 'M02', '39', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('32', '32', 'S03', 'M02', '38', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('33', '33', 'S04', 'M02', '14', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('34', '34', 'S02', 'M01', '9', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('35', '35', 'S03', 'M02', '32', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('36', '36', 'S02', 'M03', '6', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('37', '37', 'S01', 'M02', '40', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('38', '38', 'S01', 'M02', '24', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('39', '39', 'S02', 'M01', '34', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('40', '40', 'S01', 'M02', '26', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('41', '41', 'S01', 'M03', '30', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('42', '42', 'S04', 'M02', '12', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('43', '43', 'S04', 'M03', '21', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('44', '44', 'S04', 'M03', '43', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('45', '45', 'S01', 'M02', '8', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('46', '46', 'S01', 'M01', '43', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('47', '47', 'S04', 'M02', '10', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('48', '48', 'S03', 'M03', '16', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('49', '49', 'S03', 'M02', '4', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('50', '50', 'S04', 'M02', '31', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('51', '51', 'S01', 'M01', '8', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('52', '52', 'S01', 'M01', '27', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('53', '53', 'S01', 'M02', '37', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('54', '54', 'S02', 'M02', '23', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('55', '55', 'S02', 'M03', '37', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('56', '56', 'S04', 'M01', '2', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('57', '57', 'S03', 'M01', '34', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('58', '58', 'S03', 'M03', '36', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('59', '59', 'S02', 'M01', '20', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('60', '60', 'S01', 'M03', '24', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('61', '61', 'S02', 'M01', '30', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('62', '62', 'S04', 'M01', '41', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('63', '63', 'S04', 'M02', '7', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('64', '64', 'S03', 'M02', '9', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('65', '65', 'S02', 'M01', '17', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('66', '66', 'S02', 'M01', '45', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('67', '67', 'S03', 'M01', '3', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('68', '68', 'S04', 'M01', '43', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('69', '69', 'S03', 'M02', '46', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('70', '70', 'S03', 'M01', '30', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('71', '71', 'S04', 'M01', '8', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('72', '72', 'S04', 'M01', '32', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('73', '73', 'S02', 'M02', '5', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('74', '74', 'S02', 'M02', '7', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('75', '75', 'S02', 'M03', '38', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('76', '76', 'S04', 'M03', '40', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('77', '77', 'S03', 'M02', '44', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('78', '78', 'S01', 'M02', '5', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('79', '79', 'S01', 'M03', '25', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('80', '80', 'S02', 'M01', '14', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('81', '81', 'S03', 'M03', '6', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('82', '82', 'S03', 'M02', '21', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('83', '83', 'S04', 'M03', '45', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('84', '84', 'S01', 'M03', '9', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('85', '85', 'S02', 'M01', '10', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('86', '86', 'S04', 'M03', '48', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('87', '87', 'S03', 'M03', '44', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('88', '88', 'S01', 'M03', '41', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('89', '89', 'S04', 'M02', '23', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('90', '90', 'S02', 'M01', '29', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('91', '91', 'S02', 'M02', '48', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('92', '92', 'S04', 'M02', '16', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('93', '93', 'S01', 'M02', '12', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('94', '94', 'S02', 'M03', '44', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('95', '95', 'S03', 'M01', '39', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('96', '96', 'S03', 'M03', '43', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('97', '97', 'S04', 'M03', '20', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('98', '98', 'S03', 'M01', '18', null, 'Good');
INSERT INTO `servicemechanic` VALUES ('99', '99', 'S03', 'M01', '31', null, 'Poor');
INSERT INTO `servicemechanic` VALUES ('100', '100', 'S03', 'M02', '23', null, 'Poor');

-- ----------------------------
-- Table structure for `serviceticket`
-- ----------------------------
DROP TABLE IF EXISTS `serviceticket`;
CREATE TABLE `serviceticket` (
  `ServiceTicketID` int(11) NOT NULL AUTO_INCREMENT,
  `ServiceTicketNumber` varchar(20) DEFAULT NULL,
  `CarID` char(5) DEFAULT NULL,
  `CustomerID` char(5) DEFAULT NULL,
  `DateReceived` date DEFAULT NULL,
  `Comments` text,
  `DateReturnedToCustomer` date DEFAULT NULL,
  PRIMARY KEY (`ServiceTicketID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of serviceticket
-- ----------------------------
INSERT INTO `serviceticket` VALUES ('1', null, 'C05', 'CUS04', '2018-05-30', null, '2018-06-07');
INSERT INTO `serviceticket` VALUES ('2', null, 'C09', 'CUS01', '2018-12-05', null, '2018-12-13');
INSERT INTO `serviceticket` VALUES ('3', null, 'C09', 'CUS06', '2018-10-25', null, '2018-10-31');
INSERT INTO `serviceticket` VALUES ('4', null, 'C05', 'CUS04', '2018-06-09', null, '2018-06-15');
INSERT INTO `serviceticket` VALUES ('5', null, 'C05', 'CUS06', '2018-11-18', null, '2018-11-20');
INSERT INTO `serviceticket` VALUES ('6', null, 'C09', 'CUS03', '2018-01-25', null, '2018-01-28');
INSERT INTO `serviceticket` VALUES ('7', null, 'C06', 'CUS07', '2018-06-30', null, '2018-07-04');
INSERT INTO `serviceticket` VALUES ('8', null, 'C05', 'CUS06', '2018-01-20', null, '2018-01-22');
INSERT INTO `serviceticket` VALUES ('9', null, 'C02', 'CUS01', '2018-09-06', null, '2018-09-10');
INSERT INTO `serviceticket` VALUES ('10', null, 'C02', 'CUS02', '2018-10-26', null, '2018-11-02');
INSERT INTO `serviceticket` VALUES ('11', null, 'C02', 'CUS07', '2018-06-03', null, '2018-06-08');
INSERT INTO `serviceticket` VALUES ('12', null, 'C06', 'CUS04', '2018-11-12', null, '2018-11-20');
INSERT INTO `serviceticket` VALUES ('13', null, 'C02', 'CUS06', '2018-03-26', null, '2018-03-31');
INSERT INTO `serviceticket` VALUES ('14', null, 'C07', 'CUS06', '2018-07-21', null, '2018-07-28');
INSERT INTO `serviceticket` VALUES ('15', null, 'C09', 'CUS04', '2018-08-28', null, '2018-08-31');
INSERT INTO `serviceticket` VALUES ('16', null, 'C07', 'CUS01', '2018-08-14', null, '2018-08-22');
INSERT INTO `serviceticket` VALUES ('17', null, 'C08', 'CUS03', '2018-06-20', null, '2018-06-27');
INSERT INTO `serviceticket` VALUES ('18', null, 'C09', 'CUS05', '2018-01-06', null, '2018-01-14');
INSERT INTO `serviceticket` VALUES ('19', null, 'C06', 'CUS05', '2018-08-26', null, '2018-09-01');
INSERT INTO `serviceticket` VALUES ('20', null, 'C07', 'CUS03', '2018-01-03', null, '2018-01-08');
INSERT INTO `serviceticket` VALUES ('21', null, 'C10', 'CUS03', '2018-06-16', null, '2018-06-21');
INSERT INTO `serviceticket` VALUES ('22', null, 'C07', 'CUS03', '2018-04-04', null, '2018-04-06');
INSERT INTO `serviceticket` VALUES ('23', null, 'C07', 'CUS04', '2018-12-26', null, '2018-12-31');
INSERT INTO `serviceticket` VALUES ('24', null, 'C02', 'CUS03', '2018-03-26', null, '2018-03-31');
INSERT INTO `serviceticket` VALUES ('25', null, 'C07', 'CUS07', '2018-11-04', null, '2018-11-12');
INSERT INTO `serviceticket` VALUES ('26', null, 'C10', 'CUS06', '2018-05-21', null, '2018-05-24');
INSERT INTO `serviceticket` VALUES ('27', null, 'C10', 'CUS07', '2018-01-21', null, '2018-01-24');
INSERT INTO `serviceticket` VALUES ('28', null, 'C06', 'CUS07', '2018-07-13', null, '2018-07-17');
INSERT INTO `serviceticket` VALUES ('29', null, 'C10', 'CUS06', '2018-08-13', null, '2018-08-17');
INSERT INTO `serviceticket` VALUES ('30', null, 'C07', 'CUS02', '2018-12-10', null, '2018-12-15');
INSERT INTO `serviceticket` VALUES ('31', null, 'C08', 'CUS02', '2018-10-31', null, '2018-11-05');
INSERT INTO `serviceticket` VALUES ('32', null, 'C06', 'CUS04', '2018-06-28', null, '2018-06-30');
INSERT INTO `serviceticket` VALUES ('33', null, 'C02', 'CUS07', '2018-10-20', null, '2018-10-28');
INSERT INTO `serviceticket` VALUES ('34', null, 'C09', 'CUS07', '2018-06-07', null, '2018-06-12');
INSERT INTO `serviceticket` VALUES ('35', null, 'C06', 'CUS04', '2018-09-06', null, '2018-09-13');
INSERT INTO `serviceticket` VALUES ('36', null, 'C08', 'CUS05', '2018-04-03', null, '2018-04-06');
INSERT INTO `serviceticket` VALUES ('37', null, 'C07', 'CUS01', '2018-11-29', null, '2018-12-05');
INSERT INTO `serviceticket` VALUES ('38', null, 'C06', 'CUS01', '2018-06-15', null, '2018-06-20');
INSERT INTO `serviceticket` VALUES ('39', null, 'C10', 'CUS05', '2018-04-09', null, '2018-04-13');
INSERT INTO `serviceticket` VALUES ('40', null, 'C10', 'CUS07', '2018-10-15', null, '2018-10-21');
INSERT INTO `serviceticket` VALUES ('41', null, 'C08', 'CUS05', '2018-11-12', null, '2018-11-15');
INSERT INTO `serviceticket` VALUES ('42', null, 'C06', 'CUS04', '2018-01-25', null, '2018-02-02');
INSERT INTO `serviceticket` VALUES ('43', null, 'C07', 'CUS06', '2018-03-19', null, '2018-03-22');
INSERT INTO `serviceticket` VALUES ('44', null, 'C06', 'CUS03', '2018-09-15', null, '2018-09-18');
INSERT INTO `serviceticket` VALUES ('45', null, 'C09', 'CUS03', '2018-03-08', null, '2018-03-12');
INSERT INTO `serviceticket` VALUES ('46', null, 'C07', 'CUS04', '2018-02-12', null, '2018-02-16');
INSERT INTO `serviceticket` VALUES ('47', null, 'C10', 'CUS03', '2018-10-06', null, '2018-10-11');
INSERT INTO `serviceticket` VALUES ('48', null, 'C05', 'CUS01', '2018-02-21', null, '2018-02-24');
INSERT INTO `serviceticket` VALUES ('49', null, 'C10', 'CUS01', '2018-07-01', null, '2018-07-08');
INSERT INTO `serviceticket` VALUES ('50', null, 'C10', 'CUS01', '2018-02-23', null, '2018-02-25');
INSERT INTO `serviceticket` VALUES ('51', null, 'C05', 'CUS07', '2018-09-12', null, '2018-09-16');
INSERT INTO `serviceticket` VALUES ('52', null, 'C09', 'CUS05', '2018-05-06', null, '2018-05-11');
INSERT INTO `serviceticket` VALUES ('53', null, 'C09', 'CUS04', '2018-10-28', null, '2018-10-30');
INSERT INTO `serviceticket` VALUES ('54', null, 'C10', 'CUS06', '2018-02-22', null, '2018-02-26');
INSERT INTO `serviceticket` VALUES ('55', null, 'C05', 'CUS06', '2018-12-11', null, '2018-12-13');
INSERT INTO `serviceticket` VALUES ('56', null, 'C09', 'CUS07', '2018-09-25', null, '2018-09-30');
INSERT INTO `serviceticket` VALUES ('57', null, 'C09', 'CUS03', '2018-08-24', null, '2018-08-30');
INSERT INTO `serviceticket` VALUES ('58', null, 'C02', 'CUS06', '2018-09-15', null, '2018-09-18');
INSERT INTO `serviceticket` VALUES ('59', null, 'C05', 'CUS05', '2018-01-24', null, '2018-01-28');
INSERT INTO `serviceticket` VALUES ('60', null, 'C09', 'CUS06', '2018-12-28', null, '2018-12-31');
INSERT INTO `serviceticket` VALUES ('61', null, 'C07', 'CUS06', '2018-06-18', null, '2018-06-25');
INSERT INTO `serviceticket` VALUES ('62', null, 'C06', 'CUS03', '2018-02-18', null, '2018-02-21');
INSERT INTO `serviceticket` VALUES ('63', null, 'C05', 'CUS07', '2018-07-14', null, '2018-07-20');
INSERT INTO `serviceticket` VALUES ('64', null, 'C05', 'CUS04', '2018-01-03', null, '2018-01-11');
INSERT INTO `serviceticket` VALUES ('65', null, 'C05', 'CUS05', '2018-07-14', null, '2018-07-19');
INSERT INTO `serviceticket` VALUES ('66', null, 'C08', 'CUS07', '2018-08-14', null, '2018-08-22');
INSERT INTO `serviceticket` VALUES ('67', null, 'C02', 'CUS01', '2018-02-19', null, '2018-02-27');
INSERT INTO `serviceticket` VALUES ('68', null, 'C02', 'CUS05', '2018-03-02', null, '2018-03-08');
INSERT INTO `serviceticket` VALUES ('69', null, 'C09', 'CUS01', '2018-07-09', null, '2018-07-15');
INSERT INTO `serviceticket` VALUES ('70', null, 'C10', 'CUS03', '2018-05-12', null, '2018-05-20');
INSERT INTO `serviceticket` VALUES ('71', null, 'C06', 'CUS07', '2018-03-19', null, '2018-03-22');
INSERT INTO `serviceticket` VALUES ('72', null, 'C10', 'CUS04', '2018-04-11', null, '2018-04-15');
INSERT INTO `serviceticket` VALUES ('73', null, 'C08', 'CUS05', '2018-01-10', null, '2018-01-16');
INSERT INTO `serviceticket` VALUES ('74', null, 'C10', 'CUS07', '2018-01-20', null, '2018-01-25');
INSERT INTO `serviceticket` VALUES ('75', null, 'C08', 'CUS01', '2018-10-09', null, '2018-10-14');
INSERT INTO `serviceticket` VALUES ('76', null, 'C02', 'CUS02', '2018-09-14', null, '2018-09-21');
INSERT INTO `serviceticket` VALUES ('77', null, 'C02', 'CUS01', '2018-01-02', null, '2018-01-06');
INSERT INTO `serviceticket` VALUES ('78', null, 'C02', 'CUS06', '2018-06-14', null, '2018-06-20');
INSERT INTO `serviceticket` VALUES ('79', null, 'C07', 'CUS07', '2018-06-21', null, '2018-06-23');
INSERT INTO `serviceticket` VALUES ('80', null, 'C05', 'CUS07', '2018-12-26', null, '2019-01-01');
INSERT INTO `serviceticket` VALUES ('81', null, 'C09', 'CUS01', '2018-03-26', null, '2018-04-03');
INSERT INTO `serviceticket` VALUES ('82', null, 'C09', 'CUS01', '2018-04-06', null, '2018-04-13');
INSERT INTO `serviceticket` VALUES ('83', null, 'C02', 'CUS04', '2018-10-15', null, '2018-10-17');
INSERT INTO `serviceticket` VALUES ('84', null, 'C08', 'CUS06', '2018-10-01', null, '2018-10-04');
INSERT INTO `serviceticket` VALUES ('85', null, 'C05', 'CUS02', '2018-04-27', null, '2018-05-01');
INSERT INTO `serviceticket` VALUES ('86', null, 'C05', 'CUS01', '2018-08-30', null, '2018-09-05');
INSERT INTO `serviceticket` VALUES ('87', null, 'C06', 'CUS06', '2018-12-17', null, '2018-12-19');
INSERT INTO `serviceticket` VALUES ('88', null, 'C08', 'CUS01', '2018-08-20', null, '2018-08-25');
INSERT INTO `serviceticket` VALUES ('89', null, 'C07', 'CUS02', '2018-07-13', null, '2018-07-18');
INSERT INTO `serviceticket` VALUES ('90', null, 'C07', 'CUS01', '2018-06-25', null, '2018-07-01');
INSERT INTO `serviceticket` VALUES ('91', null, 'C02', 'CUS06', '2018-06-06', null, '2018-06-12');
INSERT INTO `serviceticket` VALUES ('92', null, 'C06', 'CUS02', '2018-04-13', null, '2018-04-17');
INSERT INTO `serviceticket` VALUES ('93', null, 'C05', 'CUS02', '2018-11-20', null, '2018-11-22');
INSERT INTO `serviceticket` VALUES ('94', null, 'C02', 'CUS04', '2018-12-25', null, '2018-12-28');
INSERT INTO `serviceticket` VALUES ('95', null, 'C05', 'CUS07', '2018-07-06', null, '2018-07-13');
INSERT INTO `serviceticket` VALUES ('96', null, 'C08', 'CUS03', '2018-12-09', null, '2018-12-12');
INSERT INTO `serviceticket` VALUES ('97', null, 'C05', 'CUS01', '2018-11-24', null, '2018-11-30');
INSERT INTO `serviceticket` VALUES ('98', null, 'C08', 'CUS01', '2018-11-13', null, '2018-11-18');
INSERT INTO `serviceticket` VALUES ('99', null, 'C08', 'CUS06', '2018-04-21', null, '2018-04-29');
INSERT INTO `serviceticket` VALUES ('100', null, 'C09', 'CUS01', '2018-11-07', null, '2018-11-10');
