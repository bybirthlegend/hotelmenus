-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.46 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for infosys
DROP DATABASE IF EXISTS `infosys`;
CREATE DATABASE IF NOT EXISTS `infosys` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `infosys`;

-- Dumping structure for table infosys.tblaccountmaster
DROP TABLE IF EXISTS `tblaccountmaster`;
CREATE TABLE IF NOT EXISTS `tblaccountmaster` (
  `strWBAccountCode` varchar(20) NOT NULL,
  `strWBAccountName` varchar(200) NOT NULL,
  `strClientCode` varchar(20) NOT NULL,
  PRIMARY KEY (`strWBAccountCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblaccountmaster: ~0 rows (approximately)
DELETE FROM `tblaccountmaster`;
/*!40000 ALTER TABLE `tblaccountmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaccountmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tbladvancebookingtemp
DROP TABLE IF EXISTS `tbladvancebookingtemp`;
CREATE TABLE IF NOT EXISTS `tbladvancebookingtemp` (
  `strCustomerCode` varchar(10) NOT NULL,
  `strCustomerName` varchar(100) NOT NULL,
  `strAddrLine1` varchar(50) NOT NULL,
  `strAddrLine2` varchar(50) NOT NULL,
  `strAddrLine3` varchar(50) NOT NULL,
  `strCity` varchar(50) NOT NULL,
  `strState` varchar(50) NOT NULL,
  `intPinCode` varchar(50) NOT NULL,
  `intMobileNo` varchar(50) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteUserCreated` datetime NOT NULL,
  `dteUserEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  KEY `strCustomerCode` (`strCustomerCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbladvancebookingtemp: ~0 rows (approximately)
DELETE FROM `tbladvancebookingtemp`;
/*!40000 ALTER TABLE `tbladvancebookingtemp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladvancebookingtemp` ENABLE KEYS */;

-- Dumping structure for table infosys.tbladvanceordertypemaster
DROP TABLE IF EXISTS `tbladvanceordertypemaster`;
CREATE TABLE IF NOT EXISTS `tbladvanceordertypemaster` (
  `strAdvOrderTypeCode` varchar(15) NOT NULL,
  `strAdvOrderTypeName` varchar(200) NOT NULL,
  `strOperational` varchar(3) NOT NULL DEFAULT 'Yes',
  `strPOSCode` varchar(10) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(20) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strAdvOrderTypeCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tbladvanceordertypemaster: ~0 rows (approximately)
DELETE FROM `tbladvanceordertypemaster`;
/*!40000 ALTER TABLE `tbladvanceordertypemaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladvanceordertypemaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tbladvancereceiptdtl
DROP TABLE IF EXISTS `tbladvancereceiptdtl`;
CREATE TABLE IF NOT EXISTS `tbladvancereceiptdtl` (
  `strReceiptNo` varchar(10) NOT NULL,
  `strSettlementCode` varchar(10) NOT NULL,
  `strCardNo` varchar(50) NOT NULL,
  `strExpirydate` varchar(50) NOT NULL,
  `strChequeNo` varchar(50) NOT NULL,
  `dteCheque` date NOT NULL,
  `strBankName` varchar(50) NOT NULL,
  `dblAdvDepositesettleAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strRemark` varchar(50) NOT NULL,
  `dblPaidAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dteInstallment` datetime NOT NULL,
  KEY `strReceiptNo` (`strReceiptNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbladvancereceiptdtl: ~0 rows (approximately)
DELETE FROM `tbladvancereceiptdtl`;
/*!40000 ALTER TABLE `tbladvancereceiptdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladvancereceiptdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tbladvancereceipthd
DROP TABLE IF EXISTS `tbladvancereceipthd`;
CREATE TABLE IF NOT EXISTS `tbladvancereceipthd` (
  `strReceiptNo` varchar(15) NOT NULL,
  `strAdvBookingNo` varchar(15) NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `strSettelmentMode` varchar(15) NOT NULL,
  `dtReceiptDate` date NOT NULL,
  `dblAdvDeposite` decimal(18,2) NOT NULL DEFAULT '0.00',
  `intShiftCode` int(11) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dtDateCreated` datetime NOT NULL,
  `dtDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strReceiptNo`,`strAdvBookingNo`,`strPOSCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbladvancereceipthd: ~0 rows (approximately)
DELETE FROM `tbladvancereceipthd`;
/*!40000 ALTER TABLE `tbladvancereceipthd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladvancereceipthd` ENABLE KEYS */;

-- Dumping structure for table infosys.tbladvbookbillchardtl
DROP TABLE IF EXISTS `tbladvbookbillchardtl`;
CREATE TABLE IF NOT EXISTS `tbladvbookbillchardtl` (
  `strItemCode` varchar(15) NOT NULL,
  `strAdvBookingNo` varchar(20) NOT NULL,
  `strCharCode` varchar(15) NOT NULL,
  `strCharValues` varchar(200) NOT NULL,
  `strClientCode` varchar(11) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strItemCode`,`strAdvBookingNo`,`strCharCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbladvbookbillchardtl: ~0 rows (approximately)
DELETE FROM `tbladvbookbillchardtl`;
/*!40000 ALTER TABLE `tbladvbookbillchardtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladvbookbillchardtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tbladvbookbilldtl
DROP TABLE IF EXISTS `tbladvbookbilldtl`;
CREATE TABLE IF NOT EXISTS `tbladvbookbilldtl` (
  `strItemCode` varchar(50) NOT NULL,
  `strItemName` varchar(50) NOT NULL,
  `strAdvBookingNo` varchar(50) NOT NULL,
  `dblQuantity` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `dblTaxAmount` decimal(18,2) NOT NULL,
  `dteAdvBookingDate` datetime NOT NULL,
  `dteOrderFor` date NOT NULL,
  `strClientCode` varchar(50) NOT NULL,
  `strCustomerCode` varchar(15) DEFAULT NULL,
  `dblWeight` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strItemCode`,`strAdvBookingNo`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbladvbookbilldtl: ~0 rows (approximately)
DELETE FROM `tbladvbookbilldtl`;
/*!40000 ALTER TABLE `tbladvbookbilldtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladvbookbilldtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tbladvbookbillhd
DROP TABLE IF EXISTS `tbladvbookbillhd`;
CREATE TABLE IF NOT EXISTS `tbladvbookbillhd` (
  `strAdvBookingNo` varchar(15) NOT NULL,
  `dteAdvBookingDate` datetime NOT NULL,
  `dteOrderFor` datetime NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `strSettelmentMode` varchar(50) NOT NULL,
  `dblDiscountAmt` decimal(18,2) NOT NULL,
  `dblDiscountPer` decimal(18,2) NOT NULL,
  `dblTaxAmt` decimal(18,2) NOT NULL,
  `dblSubTotal` decimal(18,2) NOT NULL,
  `dblGrandTotal` decimal(18,2) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strCustomerCode` varchar(15) DEFAULT NULL,
  `intShiftCode` int(11) NOT NULL,
  `strMessage` varchar(150) NOT NULL DEFAULT '',
  `strShape` varchar(100) NOT NULL DEFAULT '',
  `strNote` varchar(300) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strDeliveryTime` varchar(10) NOT NULL,
  `strWaiterNo` varchar(10) NOT NULL DEFAULT '',
  `strHomeDelivery` varchar(1) NOT NULL DEFAULT 'N',
  `dblHomeDelCharges` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strOrderType` varchar(10) NOT NULL,
  `strManualAdvOrderNo` varchar(20) NOT NULL DEFAULT '',
  `strImageName` varchar(50) NOT NULL DEFAULT '',
  `strSpecialsymbolImage` varchar(50) NOT NULL DEFAULT '',
  `strUrgentOrder` varchar(1) NOT NULL DEFAULT 'N',
  `dblUSDConversionRate` decimal(10,2) NOT NULL DEFAULT '0.00',
  KEY `strAdvBookingNo` (`strAdvBookingNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbladvbookbillhd: ~0 rows (approximately)
DELETE FROM `tbladvbookbillhd`;
/*!40000 ALTER TABLE `tbladvbookbillhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladvbookbillhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tbladvbookbillimgdtl
DROP TABLE IF EXISTS `tbladvbookbillimgdtl`;
CREATE TABLE IF NOT EXISTS `tbladvbookbillimgdtl` (
  `strItemCode` varchar(15) NOT NULL,
  `strAdvBookingNo` varchar(20) NOT NULL,
  `blobCakeImage` longblob NOT NULL,
  `strClientCode` varchar(11) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strItemCode`,`strAdvBookingNo`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbladvbookbillimgdtl: ~0 rows (approximately)
DELETE FROM `tbladvbookbillimgdtl`;
/*!40000 ALTER TABLE `tbladvbookbillimgdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladvbookbillimgdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tbladvbookitemtemp
DROP TABLE IF EXISTS `tbladvbookitemtemp`;
CREATE TABLE IF NOT EXISTS `tbladvbookitemtemp` (
  `strSerialno` decimal(10,0) NOT NULL,
  `strPosCode` varchar(50) NOT NULL,
  `strItemCode` varchar(15) NOT NULL,
  `strItemName` varchar(50) DEFAULT NULL,
  `dblItemQuantity` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `dblWeight` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblPrice` decimal(18,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbladvbookitemtemp: ~0 rows (approximately)
DELETE FROM `tbladvbookitemtemp`;
/*!40000 ALTER TABLE `tbladvbookitemtemp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladvbookitemtemp` ENABLE KEYS */;

-- Dumping structure for table infosys.tbladvbooktaxdtl
DROP TABLE IF EXISTS `tbladvbooktaxdtl`;
CREATE TABLE IF NOT EXISTS `tbladvbooktaxdtl` (
  `strAdvBookingNo` varchar(15) NOT NULL,
  `strTaxCode` varchar(15) NOT NULL,
  `dblTaxableAmount` decimal(18,2) NOT NULL,
  `dblTaxAmount` decimal(18,2) NOT NULL,
  `strClientCode` varchar(15) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  KEY `strAdvBookingNo` (`strAdvBookingNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbladvbooktaxdtl: ~0 rows (approximately)
DELETE FROM `tbladvbooktaxdtl`;
/*!40000 ALTER TABLE `tbladvbooktaxdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladvbooktaxdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tbladvbooktaxtemp
DROP TABLE IF EXISTS `tbladvbooktaxtemp`;
CREATE TABLE IF NOT EXISTS `tbladvbooktaxtemp` (
  `strTaxCode` varchar(50) NOT NULL,
  `strTaxName` varchar(50) NOT NULL,
  `dblTaxableAmt` decimal(18,2) NOT NULL,
  `dblTaxAmt` decimal(18,2) NOT NULL,
  `strTaxCal` varchar(50) NOT NULL,
  `strItemName` varchar(50) NOT NULL,
  KEY `strTaxCode` (`strTaxCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbladvbooktaxtemp: ~0 rows (approximately)
DELETE FROM `tbladvbooktaxtemp`;
/*!40000 ALTER TABLE `tbladvbooktaxtemp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladvbooktaxtemp` ENABLE KEYS */;

-- Dumping structure for table infosys.tbladvordermodifierdtl
DROP TABLE IF EXISTS `tbladvordermodifierdtl`;
CREATE TABLE IF NOT EXISTS `tbladvordermodifierdtl` (
  `strAdvOrderNo` varchar(15) NOT NULL,
  `strItemCode` varchar(10) NOT NULL,
  `strModifierCode` varchar(4) NOT NULL,
  `strModifierName` varchar(50) NOT NULL,
  `dblQuantity` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strCustomerCode` varchar(15) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strAdvOrderNo`,`strItemCode`,`strModifierCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbladvordermodifierdtl: ~0 rows (approximately)
DELETE FROM `tbladvordermodifierdtl`;
/*!40000 ALTER TABLE `tbladvordermodifierdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladvordermodifierdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblareamaster
DROP TABLE IF EXISTS `tblareamaster`;
CREATE TABLE IF NOT EXISTS `tblareamaster` (
  `strAreaCode` varchar(4) NOT NULL,
  `strAreaName` varchar(200) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strPOSCode` varchar(20) NOT NULL DEFAULT 'P01',
  `strMACAddress` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`strAreaCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblareamaster: ~1 rows (approximately)
DELETE FROM `tblareamaster`;
/*!40000 ALTER TABLE `tblareamaster` DISABLE KEYS */;
INSERT INTO `tblareamaster` (`strAreaCode`, `strAreaName`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`, `strClientCode`, `strDataPostFlag`, `strPOSCode`, `strMACAddress`) VALUES
	('A001', 'All', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'P01', '');
/*!40000 ALTER TABLE `tblareamaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblareawisedc
DROP TABLE IF EXISTS `tblareawisedc`;
CREATE TABLE IF NOT EXISTS `tblareawisedc` (
  `strBuildingCode` varchar(15) NOT NULL,
  `dblKilometers` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strSymbol` varchar(3) NOT NULL DEFAULT '',
  `dblBillAmount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblBillAmount1` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblDeliveryCharges` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strCustTypeCode` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblareawisedc: ~0 rows (approximately)
DELETE FROM `tblareawisedc`;
/*!40000 ALTER TABLE `tblareawisedc` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblareawisedc` ENABLE KEYS */;

-- Dumping structure for table infosys.tblareawisedelboywisecharges
DROP TABLE IF EXISTS `tblareawisedelboywisecharges`;
CREATE TABLE IF NOT EXISTS `tblareawisedelboywisecharges` (
  `strCustAreaCode` varchar(20) NOT NULL,
  `strDeliveryBoyCode` varchar(20) NOT NULL,
  `dblValue` decimal(18,2) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  KEY `strCustAreaCode` (`strCustAreaCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblareawisedelboywisecharges: ~0 rows (approximately)
DELETE FROM `tblareawisedelboywisecharges`;
/*!40000 ALTER TABLE `tblareawisedelboywisecharges` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblareawisedelboywisecharges` ENABLE KEYS */;

-- Dumping structure for table infosys.tblatvreport
DROP TABLE IF EXISTS `tblatvreport`;
CREATE TABLE IF NOT EXISTS `tblatvreport` (
  `strPosCode` varchar(50) DEFAULT NULL,
  `strPosName` varchar(50) DEFAULT NULL,
  `dteDate` date DEFAULT NULL,
  `dblDiningAmt` decimal(18,2) DEFAULT NULL,
  `dblDiningNoBill` decimal(18,2) DEFAULT NULL,
  `dblDiningAvg` decimal(18,2) DEFAULT NULL,
  `dblHDAmt` decimal(18,2) DEFAULT NULL,
  `dblHDNoBill` decimal(18,2) DEFAULT NULL,
  `dblHdAvg` decimal(18,2) DEFAULT NULL,
  `dblTAAmt` decimal(18,2) DEFAULT NULL,
  `dblTANoBill` decimal(18,2) DEFAULT NULL,
  `dblTAAvg` decimal(18,2) DEFAULT NULL,
  `strWaiterName` varchar(50) DEFAULT '',
  KEY `strPosCode` (`strPosCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblatvreport: ~0 rows (approximately)
DELETE FROM `tblatvreport`;
/*!40000 ALTER TABLE `tblatvreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblatvreport` ENABLE KEYS */;

-- Dumping structure for table infosys.tblaudit
DROP TABLE IF EXISTS `tblaudit`;
CREATE TABLE IF NOT EXISTS `tblaudit` (
  `strDocNo` varchar(10) NOT NULL,
  `strFormName` varchar(40) NOT NULL,
  `strTransactionName` varchar(20) NOT NULL,
  `strReasonCode` varchar(10) NOT NULL,
  `strRemarks` varchar(50) NOT NULL,
  `dtePOSDate` datetime NOT NULL,
  `dteCreatedDate` datetime NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(10) NOT NULL DEFAULT 'N',
  KEY `strDocNo` (`strDocNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblaudit: ~0 rows (approximately)
DELETE FROM `tblaudit`;
/*!40000 ALTER TABLE `tblaudit` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaudit` ENABLE KEYS */;

-- Dumping structure for table infosys.tblbenowsettlementdtl
DROP TABLE IF EXISTS `tblbenowsettlementdtl`;
CREATE TABLE IF NOT EXISTS `tblbenowsettlementdtl` (
  `strBillNo` varchar(15) NOT NULL DEFAULT '',
  `strQRString` varchar(500) NOT NULL,
  `dblSettlementAmount` decimal(18,2) NOT NULL,
  `strTransID` varchar(20) NOT NULL,
  `strTransStatus` varchar(20) NOT NULL,
  `dteTransDate` date NOT NULL,
  `strMerchantCode` varchar(15) NOT NULL,
  PRIMARY KEY (`strBillNo`,`dteTransDate`,`strMerchantCode`),
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblbenowsettlementdtl: ~0 rows (approximately)
DELETE FROM `tblbenowsettlementdtl`;
/*!40000 ALTER TABLE `tblbenowsettlementdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbenowsettlementdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblbilladvanceamt
DROP TABLE IF EXISTS `tblbilladvanceamt`;
CREATE TABLE IF NOT EXISTS `tblbilladvanceamt` (
  `strBillNo` varchar(15) NOT NULL DEFAULT '',
  `strPOSCode` varchar(10) NOT NULL DEFAULT '',
  `dteBillDate` datetime NOT NULL,
  `dblGrandTotal` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblAdvanceAmt` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strUserCreated` varchar(50) NOT NULL DEFAULT ' ',
  `strUserEdited` varchar(50) NOT NULL DEFAULT ' ',
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`strBillNo`,`strPOSCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblbilladvanceamt: ~0 rows (approximately)
DELETE FROM `tblbilladvanceamt`;
/*!40000 ALTER TABLE `tblbilladvanceamt` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbilladvanceamt` ENABLE KEYS */;

-- Dumping structure for table infosys.tblbillcomplementrydtl
DROP TABLE IF EXISTS `tblbillcomplementrydtl`;
CREATE TABLE IF NOT EXISTS `tblbillcomplementrydtl` (
  `strItemCode` varchar(10) NOT NULL,
  `strItemName` varchar(200) NOT NULL,
  `strBillNo` varchar(15) DEFAULT NULL,
  `strAdvBookingNo` varchar(10) NOT NULL DEFAULT '',
  `dblRate` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblQuantity` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `dblTaxAmount` decimal(18,2) NOT NULL,
  `dteBillDate` datetime NOT NULL,
  `strKOTNo` varchar(10) NOT NULL DEFAULT '',
  `strClientCode` varchar(10) NOT NULL,
  `strCustomerCode` varchar(10) DEFAULT '',
  `tmeOrderProcessing` time NOT NULL DEFAULT '00:00:00',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strMMSDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strManualKOTNo` varchar(10) NOT NULL DEFAULT '',
  `tdhYN` varchar(1) NOT NULL DEFAULT 'N',
  `strPromoCode` varchar(20) NOT NULL DEFAULT '',
  `strCounterCode` varchar(5) NOT NULL DEFAULT '',
  `strWaiterNo` varchar(10) NOT NULL DEFAULT '',
  `dblDiscountAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblDiscountPer` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strSequenceNo` varchar(10) NOT NULL DEFAULT '0.00',
  `strType` varchar(20) NOT NULL DEFAULT 'Complimentary',
  `dtBillDate` date NOT NULL,
  `tmeOrderPickup` time NOT NULL DEFAULT '00:00:00',
  `strKOTUser` varchar(50) NOT NULL DEFAULT '',
  `strReasonCode` varchar(50) DEFAULT '',
  `strRemarks` varchar(150) DEFAULT NULL,
  `strPOSCode` varchar(10) NOT NULL DEFAULT '',
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblbillcomplementrydtl: ~0 rows (approximately)
DELETE FROM `tblbillcomplementrydtl`;
/*!40000 ALTER TABLE `tblbillcomplementrydtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbillcomplementrydtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblbilldiscdtl
DROP TABLE IF EXISTS `tblbilldiscdtl`;
CREATE TABLE IF NOT EXISTS `tblbilldiscdtl` (
  `strBillNo` varchar(15) DEFAULT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `dblDiscAmt` decimal(18,2) NOT NULL,
  `dblDiscPer` decimal(10,2) NOT NULL,
  `dblDiscOnAmt` decimal(18,2) NOT NULL,
  `strDiscOnType` varchar(50) NOT NULL DEFAULT '',
  `strDiscOnValue` varchar(100) NOT NULL DEFAULT '',
  `strDiscReasonCode` varchar(10) NOT NULL DEFAULT '',
  `strDiscRemarks` varchar(100) NOT NULL DEFAULT '',
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL DEFAULT '',
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dteBillDate` date NOT NULL,
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblbilldiscdtl: ~0 rows (approximately)
DELETE FROM `tblbilldiscdtl`;
/*!40000 ALTER TABLE `tblbilldiscdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbilldiscdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblbilldtl
DROP TABLE IF EXISTS `tblbilldtl`;
CREATE TABLE IF NOT EXISTS `tblbilldtl` (
  `strItemCode` varchar(10) NOT NULL,
  `strItemName` varchar(200) NOT NULL,
  `strBillNo` varchar(15) DEFAULT NULL,
  `strAdvBookingNo` varchar(10) NOT NULL DEFAULT '',
  `dblRate` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblQuantity` decimal(18,4) NOT NULL,
  `dblAmount` decimal(18,4) NOT NULL,
  `dblTaxAmount` decimal(18,4) NOT NULL,
  `dteBillDate` datetime NOT NULL,
  `strKOTNo` varchar(10) NOT NULL DEFAULT '',
  `strClientCode` varchar(10) NOT NULL,
  `strCustomerCode` varchar(15) DEFAULT NULL,
  `tmeOrderProcessing` time NOT NULL DEFAULT '00:00:00',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strMMSDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strManualKOTNo` varchar(50) NOT NULL DEFAULT '',
  `tdhYN` varchar(1) NOT NULL DEFAULT 'N',
  `strPromoCode` varchar(20) NOT NULL DEFAULT '',
  `strCounterCode` varchar(5) NOT NULL DEFAULT '',
  `strWaiterNo` varchar(10) NOT NULL DEFAULT '',
  `dblDiscountAmt` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblDiscountPer` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strSequenceNo` varchar(50) NOT NULL DEFAULT '0.00',
  `dtBillDate` date NOT NULL,
  `tmeOrderPickup` time NOT NULL DEFAULT '00:00:00',
  `strKOTUser` varchar(50) NOT NULL DEFAULT '',
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblbilldtl: ~2 rows (approximately)
DELETE FROM `tblbilldtl`;
/*!40000 ALTER TABLE `tblbilldtl` DISABLE KEYS */;
INSERT INTO `tblbilldtl` (`strItemCode`, `strItemName`, `strBillNo`, `strAdvBookingNo`, `dblRate`, `dblQuantity`, `dblAmount`, `dblTaxAmount`, `dteBillDate`, `strKOTNo`, `strClientCode`, `strCustomerCode`, `tmeOrderProcessing`, `strDataPostFlag`, `strMMSDataPostFlag`, `strManualKOTNo`, `tdhYN`, `strPromoCode`, `strCounterCode`, `strWaiterNo`, `dblDiscountAmt`, `dblDiscountPer`, `strSequenceNo`, `dtBillDate`, `tmeOrderPickup`, `strKOTUser`) VALUES
	('I000045', 'Afgani Tikka Roll', 'P0100001', '', 76.0000, 1.0000, 76.0000, 0.0000, '2022-06-01 17:59:33', '', '412.005', NULL, '00:00:00', 'N', 'N', '', 'N', 'NA', '', '', 0.0000, 0.0000, '0.00', '2022-06-01', '00:00:00', ''),
	('I000015', 'Aloo & 2 Pcs Poori', 'P0100002', '', 54.0000, 1.0000, 54.0000, 0.0000, '2022-06-01 19:19:50', '', '412.005', NULL, '00:00:00', 'N', 'N', '', 'N', 'NA', '', '', 0.0000, 0.0000, '0.00', '2022-06-01', '00:00:00', ''),
	('I000423', 'Chargrilled Burrito Wrap', 'SMP0100001', '', 125.0000, 1.0000, 125.0000, 0.0000, '2022-08-10 18:58:34', 'NA', '412.005', NULL, '00:00:00', 'N', 'N', 'NA', 'N', 'NA', '', 'NA', 0.0000, 0.0000, '0.00', '2022-08-10', '00:00:00', ''),
	('I000423', 'Chargrilled Burrito Wrap', 'SMP0100002', '', 125.0000, 1.0000, 125.0000, 0.0000, '2022-08-10 19:05:36', 'NA', '412.005', NULL, '00:00:00', 'N', 'N', 'NA', 'N', 'NA', '', 'NA', 0.0000, 0.0000, '0.00', '2022-08-10', '00:00:00', ''),
	('I000423', 'Chargrilled Burrito Wrap', 'SMP0100003', '', 125.0000, 1.0000, 125.0000, 0.0000, '2022-08-10 19:06:44', 'NA', '412.005', NULL, '00:00:00', 'N', 'N', 'NA', 'N', 'NA', '', 'NA', 0.0000, 0.0000, '0.00', '2022-08-10', '00:00:00', ''),
	('I000088', 'Awadhi Chicken Dum Biryani', 'SMP0100004', '', 115.0000, 1.0000, 115.0000, 0.0000, '2022-08-10 19:07:14', 'NA', '412.005', NULL, '00:00:00', 'N', 'N', 'NA', 'N', 'NA', '', 'NA', 0.0000, 0.0000, '0.00', '2022-08-10', '00:00:00', ''),
	('I000090', 'Bawarchi Chicken Dum Biryani', 'SMP0100005', '', 115.0000, 1.0000, 115.0000, 0.0000, '2022-08-10 19:08:36', 'NA', '412.005', NULL, '00:00:00', 'N', 'N', 'NA', 'N', 'NA', '', 'NA', 0.0000, 0.0000, '0.00', '2022-08-10', '00:00:00', '');
/*!40000 ALTER TABLE `tblbilldtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblbillhd
DROP TABLE IF EXISTS `tblbillhd`;
CREATE TABLE IF NOT EXISTS `tblbillhd` (
  `strBillNo` varchar(15) NOT NULL DEFAULT '',
  `strAdvBookingNo` varchar(10) NOT NULL DEFAULT '',
  `dteBillDate` datetime NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `strSettelmentMode` varchar(50) NOT NULL,
  `dblDiscountAmt` decimal(18,4) NOT NULL,
  `dblDiscountPer` decimal(10,4) NOT NULL,
  `dblTaxAmt` decimal(18,4) NOT NULL,
  `dblSubTotal` decimal(18,4) NOT NULL,
  `dblGrandTotal` decimal(18,4) NOT NULL,
  `strTakeAway` varchar(50) NOT NULL DEFAULT 'No',
  `strOperationType` varchar(20) NOT NULL DEFAULT 'Dine In',
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL DEFAULT '',
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime DEFAULT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strTableNo` varchar(10) NOT NULL DEFAULT '',
  `strWaiterNo` varchar(5) NOT NULL DEFAULT '',
  `strCustomerCode` varchar(15) DEFAULT NULL,
  `strManualBillNo` varchar(15) NOT NULL DEFAULT '',
  `intShiftCode` int(11) NOT NULL DEFAULT '0',
  `intPaxNo` int(11) NOT NULL DEFAULT '0',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strReasonCode` varchar(10) NOT NULL DEFAULT '',
  `strRemarks` varchar(600) NOT NULL DEFAULT '',
  `dblTipAmount` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dteSettleDate` datetime NOT NULL,
  `strCounterCode` varchar(10) NOT NULL DEFAULT 'NA',
  `dblDeliveryCharges` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strCouponCode` varchar(100) NOT NULL DEFAULT '',
  `strAreaCode` varchar(10) NOT NULL DEFAULT '',
  `strDiscountRemark` varchar(200) NOT NULL DEFAULT '',
  `strTakeAwayRemarks` varchar(200) NOT NULL DEFAULT '',
  `strDiscountOn` varchar(20) NOT NULL DEFAULT 'All',
  `strCardNo` varchar(50) NOT NULL DEFAULT '',
  `strTransactionType` varchar(300) NOT NULL DEFAULT '',
  `strJioMoneyRRefNo` varchar(20) NOT NULL DEFAULT '',
  `strJioMoneyAuthCode` varchar(10) NOT NULL DEFAULT '',
  `strJioMoneyTxnId` varchar(25) NOT NULL DEFAULT '',
  `strJioMoneyTxnDateTime` varchar(20) NOT NULL DEFAULT '',
  `strJioMoneyCardNo` varchar(16) NOT NULL DEFAULT '',
  `strJioMoneyCardType` varchar(40) NOT NULL DEFAULT '',
  `dblRoundOff` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `intBillSeriesPaxNo` int(11) NOT NULL DEFAULT '0',
  `dtBillDate` date NOT NULL,
  `intOrderNo` int(11) NOT NULL DEFAULT '0',
  `strCRMRewardId` varchar(50) NOT NULL DEFAULT '',
  `strNSCTax` varchar(10) NOT NULL DEFAULT '',
  `strKOTToBillNote` varchar(500) NOT NULL DEFAULT '',
  `dblUSDConverionRate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `strNDTax` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`strBillNo`,`strClientCode`,`dtBillDate`,`strPOSCode`),
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblbillhd: ~2 rows (approximately)
DELETE FROM `tblbillhd`;
/*!40000 ALTER TABLE `tblbillhd` DISABLE KEYS */;
INSERT INTO `tblbillhd` (`strBillNo`, `strAdvBookingNo`, `dteBillDate`, `strPOSCode`, `strSettelmentMode`, `dblDiscountAmt`, `dblDiscountPer`, `dblTaxAmt`, `dblSubTotal`, `dblGrandTotal`, `strTakeAway`, `strOperationType`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`, `strClientCode`, `strTableNo`, `strWaiterNo`, `strCustomerCode`, `strManualBillNo`, `intShiftCode`, `intPaxNo`, `strDataPostFlag`, `strReasonCode`, `strRemarks`, `dblTipAmount`, `dteSettleDate`, `strCounterCode`, `dblDeliveryCharges`, `strCouponCode`, `strAreaCode`, `strDiscountRemark`, `strTakeAwayRemarks`, `strDiscountOn`, `strCardNo`, `strTransactionType`, `strJioMoneyRRefNo`, `strJioMoneyAuthCode`, `strJioMoneyTxnId`, `strJioMoneyTxnDateTime`, `strJioMoneyCardNo`, `strJioMoneyCardType`, `dblRoundOff`, `intBillSeriesPaxNo`, `dtBillDate`, `intOrderNo`, `strCRMRewardId`, `strNSCTax`, `strKOTToBillNote`, `dblUSDConverionRate`, `strNDTax`) VALUES
	('P0100001', '', '2022-06-01 17:59:33', 'P01', '', 0.0000, 0.0000, 0.0000, 76.0000, 76.0000, 'Yes', 'TakeAway', 'SANGUINE', 'SANGUINE', '2022-06-08 17:59:33', '2022-06-22 00:00:00', '412.005', '', '', '005C0000001', '', 1, 0, 'N', '', '', 0.0000, '2022-06-01 00:00:00', '', 0.0000, '', '', '', '', '', '', 'Direct Biller', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 0.0000, 0, '2022-06-01', 1, '', '', '', 0.00, ''),
	('P0100002', '', '2022-06-01 19:19:50', 'P01', '', 0.0000, 0.0000, 0.0000, 54.0000, 54.0000, 'Yes', 'TakeAway', 'SANGUINE', 'SANGUINE', '2022-06-08 19:19:50', '2022-06-22 01:15:36', '412.005', '', '', '005C0000001', '', 1, 0, 'N', '', '', 0.0000, '2022-06-01 00:00:00', '', 0.0000, '', '', '', '', '', '', 'Direct Biller', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 0.0000, 0, '2022-06-01', 2, '', '', '', 0.00, ''),
	('SMP0100001', '', '2022-08-10 18:58:34', 'P01', '', 0.0000, 0.0000, 0.0000, 125.0000, 125.0000, '', '', '', '', '2022-08-10 18:58:34', '2022-08-10 18:58:34', '412.005', '', '', '005C0000001', '', 0, 0, 'N', '', '', 0.0000, '2022-08-10 00:00:00', '', 0.0000, '', '', '', '', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 0.0000, 0, '2022-08-10', 11, '', '', '', 0.00, ''),
	('SMP0100002', '', '2022-08-10 19:05:36', 'P01', '', 0.0000, 0.0000, 0.0000, 125.0000, 125.0000, '', '', '', '', '2022-08-10 19:05:36', '2022-08-10 19:05:36', '412.005', '', '', '005C0000001', '', 0, 0, 'N', '', '', 0.0000, '2022-08-10 00:00:00', '', 0.0000, '', '', '', '', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 0.0000, 0, '2022-08-10', 12, '', '', '', 0.00, ''),
	('SMP0100003', '', '2022-08-10 19:06:44', 'P01', '', 0.0000, 0.0000, 0.0000, 125.0000, 125.0000, '', '', '', '', '2022-08-10 19:06:44', '2022-08-10 19:06:44', '412.005', '', '', '005C0000001', '', 0, 0, 'N', '', '', 0.0000, '2022-08-10 00:00:00', '', 0.0000, '', '', '', '', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 0.0000, 0, '2022-08-10', 13, '', '', '', 0.00, ''),
	('SMP0100004', '', '2022-08-10 19:07:14', 'P01', '', 0.0000, 0.0000, 0.0000, 115.0000, 115.0000, '', '', '', '', '2022-08-10 19:07:14', '2022-08-10 19:07:14', '412.005', '', '', '005C0000001', '', 0, 0, 'N', '', '', 0.0000, '2022-08-10 00:00:00', '', 0.0000, '', '', '', '', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 0.0000, 0, '2022-08-10', 14, '', '', '', 0.00, ''),
	('SMP0100005', '', '2022-08-10 19:08:36', 'P01', '', 0.0000, 0.0000, 0.0000, 115.0000, 115.0000, '', '', '', '', '2022-08-10 19:08:36', '2022-08-10 19:08:36', '412.005', '', '', '005C0000001', '', 0, 0, 'N', '', '', 0.0000, '2022-08-10 00:00:00', '', 0.0000, '', '', '', '', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 0.0000, 0, '2022-08-10', 15, '', '', '', 0.00, '');
/*!40000 ALTER TABLE `tblbillhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblbillmodifierdtl
DROP TABLE IF EXISTS `tblbillmodifierdtl`;
CREATE TABLE IF NOT EXISTS `tblbillmodifierdtl` (
  `strBillNo` varchar(15) DEFAULT NULL,
  `strItemCode` varchar(20) NOT NULL,
  `strModifierCode` varchar(10) NOT NULL,
  `strModifierName` varchar(200) NOT NULL,
  `dblRate` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblQuantity` decimal(18,4) NOT NULL,
  `dblAmount` decimal(18,4) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strCustomerCode` varchar(20) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strMMSDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strDefaultModifierDeselectedYN` varchar(1) NOT NULL DEFAULT 'N',
  `strSequenceNo` varchar(50) NOT NULL DEFAULT '0.00',
  `dblDiscPer` decimal(18,4) NOT NULL,
  `dblDiscAmt` decimal(18,4) NOT NULL,
  `dteBillDate` date NOT NULL,
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblbillmodifierdtl: ~0 rows (approximately)
DELETE FROM `tblbillmodifierdtl`;
/*!40000 ALTER TABLE `tblbillmodifierdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbillmodifierdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblbillpromotiondtl
DROP TABLE IF EXISTS `tblbillpromotiondtl`;
CREATE TABLE IF NOT EXISTS `tblbillpromotiondtl` (
  `strBillNo` varchar(15) DEFAULT NULL,
  `strItemCode` varchar(15) NOT NULL,
  `strPromotionCode` varchar(20) NOT NULL,
  `dblQuantity` decimal(18,4) NOT NULL,
  `dblRate` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strClientCode` varchar(20) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strPromoType` varchar(20) NOT NULL,
  `dblAmount` decimal(18,4) NOT NULL,
  `dblDiscountPer` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblDiscountAmt` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dteBillDate` date NOT NULL,
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblbillpromotiondtl: ~0 rows (approximately)
DELETE FROM `tblbillpromotiondtl`;
/*!40000 ALTER TABLE `tblbillpromotiondtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbillpromotiondtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblbillseries
DROP TABLE IF EXISTS `tblbillseries`;
CREATE TABLE IF NOT EXISTS `tblbillseries` (
  `strPOSCode` varchar(15) NOT NULL,
  `strType` varchar(15) NOT NULL,
  `strBillSeries` varchar(15) NOT NULL,
  `intLastNo` bigint(20) NOT NULL,
  `strCodes` varchar(500) NOT NULL,
  `strNames` varchar(500) NOT NULL,
  `strUserCreated` varchar(20) NOT NULL,
  `strUserEdited` varchar(20) NOT NULL,
  `dteCreatedDate` datetime NOT NULL,
  `dteEditedDate` datetime NOT NULL,
  `strDataPostFlag` varchar(2) NOT NULL DEFAULT 'N',
  `strClientCode` varchar(10) NOT NULL,
  `strPropertyCode` varchar(15) NOT NULL,
  `strPrintGTOfOtherBills` varchar(1) NOT NULL DEFAULT 'N',
  `strPrintInclusiveOfTaxOnBill` varchar(1) NOT NULL DEFAULT 'N',
  `strBillNote` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`strPOSCode`,`strBillSeries`,`strClientCode`),
  KEY `strBillSeries` (`strBillSeries`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblbillseries: ~0 rows (approximately)
DELETE FROM `tblbillseries`;
/*!40000 ALTER TABLE `tblbillseries` DISABLE KEYS */;
INSERT INTO `tblbillseries` (`strPOSCode`, `strType`, `strBillSeries`, `intLastNo`, `strCodes`, `strNames`, `strUserCreated`, `strUserEdited`, `dteCreatedDate`, `dteEditedDate`, `strDataPostFlag`, `strClientCode`, `strPropertyCode`, `strPrintGTOfOtherBills`, `strPrintInclusiveOfTaxOnBill`, `strBillNote`) VALUES
	('P01', 'Group', 'SM', 5, 'G0000001', 'FOOD', 'SANGUINE', 'SANGUINE', '2022-08-10 18:57:59', '2022-08-10 18:57:59', 'N', '412.005', '412.005.P01', 'N', 'N', '');
/*!40000 ALTER TABLE `tblbillseries` ENABLE KEYS */;

-- Dumping structure for table infosys.tblbillseriesbilldtl
DROP TABLE IF EXISTS `tblbillseriesbilldtl`;
CREATE TABLE IF NOT EXISTS `tblbillseriesbilldtl` (
  `strPOSCode` varchar(10) NOT NULL,
  `strBillSeries` varchar(10) NOT NULL,
  `strHdBillNo` varchar(15) NOT NULL,
  `strDtlBillNos` varchar(200) DEFAULT NULL,
  `dblGrandTotal` decimal(18,2) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strUserCreated` varchar(10) NOT NULL,
  `dteCreatedDate` datetime NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteEditedDate` datetime NOT NULL,
  `dteBillDate` date NOT NULL,
  PRIMARY KEY (`strPOSCode`,`strHdBillNo`,`strClientCode`,`dteBillDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblbillseriesbilldtl: ~0 rows (approximately)
DELETE FROM `tblbillseriesbilldtl`;
/*!40000 ALTER TABLE `tblbillseriesbilldtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbillseriesbilldtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblbillsettlementdtl
DROP TABLE IF EXISTS `tblbillsettlementdtl`;
CREATE TABLE IF NOT EXISTS `tblbillsettlementdtl` (
  `strBillNo` varchar(15) NOT NULL DEFAULT '',
  `strSettlementCode` varchar(10) NOT NULL,
  `dblSettlementAmt` decimal(18,4) NOT NULL,
  `dblPaidAmt` decimal(18,4) DEFAULT '0.0000',
  `strExpiryDate` varchar(7) NOT NULL DEFAULT '',
  `strCardName` varchar(50) NOT NULL DEFAULT '0',
  `strRemark` varchar(600) NOT NULL DEFAULT '0',
  `strClientCode` varchar(10) NOT NULL DEFAULT '0',
  `strCustomerCode` varchar(15) DEFAULT NULL,
  `dblActualAmt` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblRefundAmt` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strGiftVoucherCode` varchar(50) DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strFolioNo` varchar(10) NOT NULL DEFAULT '',
  `strRoomNo` varchar(10) NOT NULL DEFAULT '',
  `dteBillDate` date NOT NULL,
  `strGiftVoucherNo` varchar(50) DEFAULT '',
  PRIMARY KEY (`strBillNo`,`strClientCode`,`dteBillDate`,`strSettlementCode`),
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblbillsettlementdtl: ~0 rows (approximately)
DELETE FROM `tblbillsettlementdtl`;
/*!40000 ALTER TABLE `tblbillsettlementdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbillsettlementdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblbilltaxdtl
DROP TABLE IF EXISTS `tblbilltaxdtl`;
CREATE TABLE IF NOT EXISTS `tblbilltaxdtl` (
  `strBillNo` varchar(15) NOT NULL DEFAULT '',
  `strTaxCode` varchar(10) NOT NULL,
  `dblTaxableAmount` decimal(18,4) NOT NULL,
  `dblTaxAmount` decimal(18,4) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dteBillDate` date NOT NULL,
  PRIMARY KEY (`strBillNo`,`strTaxCode`,`dteBillDate`,`strClientCode`),
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblbilltaxdtl: ~0 rows (approximately)
DELETE FROM `tblbilltaxdtl`;
/*!40000 ALTER TABLE `tblbilltaxdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbilltaxdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblblockedusers
DROP TABLE IF EXISTS `tblblockedusers`;
CREATE TABLE IF NOT EXISTS `tblblockedusers` (
  `strUserCode` varchar(10) NOT NULL,
  `strUserName` varchar(100) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `dteDate` datetime NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `strUserCreated` varchar(50) NOT NULL,
  `strReasonCode` varchar(10) NOT NULL,
  `strUserUnBlocked` varchar(50) NOT NULL DEFAULT '',
  `dteUnblockedDate` datetime NOT NULL,
  `strRemark` varchar(50) DEFAULT '',
  PRIMARY KEY (`strUserCode`,`strPOSCode`,`strClientCode`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblblockedusers: ~0 rows (approximately)
DELETE FROM `tblblockedusers`;
/*!40000 ALTER TABLE `tblblockedusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblblockedusers` ENABLE KEYS */;

-- Dumping structure for table infosys.tblbookingsrcmaster
DROP TABLE IF EXISTS `tblbookingsrcmaster`;
CREATE TABLE IF NOT EXISTS `tblbookingsrcmaster` (
  `strBookingsrcCode` varchar(50) NOT NULL DEFAULT '',
  `strBookingsrcName` varchar(50) NOT NULL DEFAULT '',
  `strUserCreated` varchar(50) NOT NULL DEFAULT '',
  `strUserEdited` varchar(50) NOT NULL DEFAULT '',
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT '',
  `strOperationalYN` varchar(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`strBookingsrcCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblbookingsrcmaster: ~0 rows (approximately)
DELETE FROM `tblbookingsrcmaster`;
/*!40000 ALTER TABLE `tblbookingsrcmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbookingsrcmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblbookingstatusmaster
DROP TABLE IF EXISTS `tblbookingstatusmaster`;
CREATE TABLE IF NOT EXISTS `tblbookingstatusmaster` (
  `strBookingStatusCode` varchar(50) NOT NULL DEFAULT '',
  `strBookingStatusName` varchar(50) NOT NULL DEFAULT '',
  `strUserCreated` varchar(50) NOT NULL DEFAULT '',
  `strUserEdited` varchar(50) NOT NULL DEFAULT '',
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT '',
  `strOperationalYN` varchar(1) NOT NULL DEFAULT '',
  `strColor` varchar(100) NOT NULL DEFAULT '',
  `strShortName` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`strBookingStatusCode`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblbookingstatusmaster: ~0 rows (approximately)
DELETE FROM `tblbookingstatusmaster`;
/*!40000 ALTER TABLE `tblbookingstatusmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbookingstatusmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblbuildingmaster
DROP TABLE IF EXISTS `tblbuildingmaster`;
CREATE TABLE IF NOT EXISTS `tblbuildingmaster` (
  `strBuildingCode` varchar(10) NOT NULL,
  `strBuildingName` varchar(200) NOT NULL,
  `strAddress` varchar(200) NOT NULL DEFAULT '',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `dblHomeDeliCharge` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strClientCode` varchar(15) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dblDeliveryBoyPayOut` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblHelperPayOut` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strZoneCode` varchar(10) NOT NULL,
  PRIMARY KEY (`strBuildingCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblbuildingmaster: ~0 rows (approximately)
DELETE FROM `tblbuildingmaster`;
/*!40000 ALTER TABLE `tblbuildingmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbuildingmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblbuttonsequence
DROP TABLE IF EXISTS `tblbuttonsequence`;
CREATE TABLE IF NOT EXISTS `tblbuttonsequence` (
  `strPOSCode` varchar(15) NOT NULL,
  `strTransactionName` varchar(15) NOT NULL,
  `strButtonName` varchar(50) NOT NULL,
  `intSeqNo` int(11) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strPOSCode`,`strTransactionName`,`strButtonName`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblbuttonsequence: ~30 rows (approximately)
DELETE FROM `tblbuttonsequence`;
/*!40000 ALTER TABLE `tblbuttonsequence` DISABLE KEYS */;
INSERT INTO `tblbuttonsequence` (`strPOSCode`, `strTransactionName`, `strButtonName`, `intSeqNo`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`, `strClientCode`, `strDataPostFlag`) VALUES
	('All', 'DirectBiller', 'Customer History', 2, 'SANGUINE', 'SANGUINE', '2017-05-31 17:07:26', '2017-05-31 17:07:26', '405.001', 'N'),
	('All', 'DirectBiller', 'Customer History', 2, 'SANGUINE', 'SANGUINE', '2021-11-17 14:33:02', '2021-11-17 14:33:02', '412.005', 'N'),
	('All', 'DirectBiller', 'Delivery Boy', 4, 'SANGUINE', 'SANGUINE', '2017-06-15 16:55:25', '2017-06-15 16:55:25', '405.001', 'N'),
	('All', 'DirectBiller', 'Delivery Boy', 4, 'SANGUINE', 'SANGUINE', '2021-11-17 14:33:02', '2021-11-17 14:33:02', '412.005', 'N'),
	('All', 'DirectBiller', 'Done', 6, 'SANGUINE', 'SANGUINE', '2017-06-15 16:55:25', '2017-06-15 16:55:25', '405.001', 'N'),
	('All', 'DirectBiller', 'Done', 6, 'SANGUINE', 'SANGUINE', '2021-11-17 14:33:02', '2021-11-17 14:33:02', '412.005', 'N'),
	('All', 'DirectBiller', 'Home', 1, 'SANGUINE', 'SANGUINE', '2017-06-15 16:55:25', '2017-06-15 16:55:25', '405.001', 'N'),
	('All', 'DirectBiller', 'Home', 1, 'SANGUINE', 'SANGUINE', '2021-11-17 14:33:02', '2021-11-17 14:33:02', '412.005', 'N'),
	('All', 'DirectBiller', 'Home Delivery', 3, 'SANGUINE', 'SANGUINE', '2017-06-15 16:55:25', '2017-06-15 16:55:25', '405.001', 'N'),
	('All', 'DirectBiller', 'Home Delivery', 3, 'SANGUINE', 'SANGUINE', '2021-11-17 14:33:02', '2021-11-17 14:33:02', '412.005', 'N'),
	('All', 'DirectBiller', 'Take Away', 5, 'SANGUINE', 'SANGUINE', '2017-06-15 16:55:25', '2017-06-15 16:55:25', '405.001', 'N'),
	('All', 'DirectBiller', 'Take Away', 5, 'SANGUINE', 'SANGUINE', '2021-11-17 14:33:02', '2021-11-17 14:33:02', '412.005', 'N'),
	('All', 'MakeKOT', 'Check KOT', 5, 'SANGUINE', 'SANGUINE', '2017-06-15 16:55:25', '2017-06-15 16:55:25', '405.001', 'N'),
	('All', 'MakeKOT', 'Check KOT', 5, 'SANGUINE', 'SANGUINE', '2021-11-17 14:33:02', '2021-11-17 14:33:02', '412.005', 'N'),
	('All', 'MakeKOT', 'Customer', 7, 'SANGUINE', 'SANGUINE', '2017-06-15 16:55:25', '2017-06-15 16:55:25', '405.001', 'N'),
	('All', 'MakeKOT', 'Customer', 7, 'SANGUINE', 'SANGUINE', '2021-11-17 14:33:02', '2021-11-17 14:33:02', '412.005', 'N'),
	('All', 'MakeKOT', 'Delivery Boy', 4, 'SANGUINE', 'SANGUINE', '2017-06-15 16:55:25', '2017-06-15 16:55:25', '405.001', 'N'),
	('All', 'MakeKOT', 'Delivery Boy', 4, 'SANGUINE', 'SANGUINE', '2021-11-17 14:33:02', '2021-11-17 14:33:02', '412.005', 'N'),
	('All', 'MakeKOT', 'Done', 8, 'SANGUINE', 'SANGUINE', '2017-06-15 16:55:25', '2017-06-15 16:55:25', '405.001', 'N'),
	('All', 'MakeKOT', 'Done', 8, 'SANGUINE', 'SANGUINE', '2021-11-17 14:33:02', '2021-11-17 14:33:02', '412.005', 'N'),
	('All', 'MakeKOT', 'Home', 1, 'SANGUINE', 'SANGUINE', '2017-06-15 16:55:25', '2017-06-15 16:55:25', '405.001', 'N'),
	('All', 'MakeKOT', 'Home', 1, 'SANGUINE', 'SANGUINE', '2021-11-17 14:33:02', '2021-11-17 14:33:02', '412.005', 'N'),
	('All', 'MakeKOT', 'Home Delivery', 3, 'SANGUINE', 'SANGUINE', '2017-06-15 16:55:25', '2017-06-15 16:55:25', '405.001', 'N'),
	('All', 'MakeKOT', 'Home Delivery', 3, 'SANGUINE', 'SANGUINE', '2021-11-17 14:33:02', '2021-11-17 14:33:02', '412.005', 'N'),
	('All', 'MakeKOT', 'Make Bill', 9, 'SANGUINE', 'SANGUINE', '2017-06-15 16:55:25', '2017-06-15 16:55:25', '405.001', 'N'),
	('All', 'MakeKOT', 'Make Bill', 9, 'SANGUINE', 'SANGUINE', '2021-11-17 14:33:02', '2021-11-17 14:33:02', '412.005', 'N'),
	('All', 'MakeKOT', 'NC KOT', 6, 'SANGUINE', 'SANGUINE', '2017-06-15 16:55:25', '2017-06-15 16:55:25', '405.001', 'N'),
	('All', 'MakeKOT', 'NC KOT', 6, 'SANGUINE', 'SANGUINE', '2021-11-17 14:33:02', '2021-11-17 14:33:02', '412.005', 'N'),
	('All', 'MakeKOT', 'Settle Bill', 2, 'SANGUINE', 'SANGUINE', '2017-06-15 16:55:25', '2017-06-15 16:55:25', '405.001', 'N'),
	('All', 'MakeKOT', 'Settle Bill', 2, 'SANGUINE', 'SANGUINE', '2021-11-17 14:33:02', '2021-11-17 14:33:02', '412.005', 'N');
/*!40000 ALTER TABLE `tblbuttonsequence` ENABLE KEYS */;

-- Dumping structure for table infosys.tblbuypromotiondtl
DROP TABLE IF EXISTS `tblbuypromotiondtl`;
CREATE TABLE IF NOT EXISTS `tblbuypromotiondtl` (
  `strPromoCode` varchar(10) NOT NULL,
  `strBuyPromoItemCode` varchar(10) NOT NULL,
  `dblBuyItemQty` decimal(18,4) NOT NULL,
  `strOperator` varchar(3) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  KEY `strPromoCode` (`strPromoCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblbuypromotiondtl: ~0 rows (approximately)
DELETE FROM `tblbuypromotiondtl`;
/*!40000 ALTER TABLE `tblbuypromotiondtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbuypromotiondtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblcashdenominations
DROP TABLE IF EXISTS `tblcashdenominations`;
CREATE TABLE IF NOT EXISTS `tblcashdenominations` (
  `strCashDenomCode` varchar(10) NOT NULL,
  `strPOSCode` varchar(4) NOT NULL,
  `strCashDenominations` varchar(20) NOT NULL,
  `intCount` int(11) NOT NULL DEFAULT '0',
  `dblAmount` decimal(18,2) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `intShiftNo` int(11) NOT NULL,
  `dtePOSDate` datetime NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserUpdated` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateUpdated` datetime NOT NULL,
  PRIMARY KEY (`strCashDenomCode`,`strClientCode`,`strCashDenominations`,`strPOSCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblcashdenominations: ~0 rows (approximately)
DELETE FROM `tblcashdenominations`;
/*!40000 ALTER TABLE `tblcashdenominations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcashdenominations` ENABLE KEYS */;

-- Dumping structure for table infosys.tblcashiermanagement
DROP TABLE IF EXISTS `tblcashiermanagement`;
CREATE TABLE IF NOT EXISTS `tblcashiermanagement` (
  `strTransactionId` varchar(10) NOT NULL,
  `strPOSCode` varchar(3) NOT NULL,
  `strTransactionType` varchar(11) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `strTransferor` varchar(10) NOT NULL,
  `strTransferee` varchar(10) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dtDateCreated` datetime NOT NULL,
  `dtDateEdited` datetime NOT NULL,
  PRIMARY KEY (`strTransactionId`,`dtDateEdited`),
  KEY `strTransactionId` (`strTransactionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblcashiermanagement: ~0 rows (approximately)
DELETE FROM `tblcashiermanagement`;
/*!40000 ALTER TABLE `tblcashiermanagement` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcashiermanagement` ENABLE KEYS */;

-- Dumping structure for table infosys.tblcashmanagement
DROP TABLE IF EXISTS `tblcashmanagement`;
CREATE TABLE IF NOT EXISTS `tblcashmanagement` (
  `strTransID` varchar(10) NOT NULL,
  `strTransType` varchar(100) NOT NULL,
  `dteTransDate` datetime NOT NULL,
  `strReasonCode` varchar(10) NOT NULL,
  `strPOSCode` varchar(5) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `strRemarks` varchar(300) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strCurrencyType` varchar(100) NOT NULL,
  `intShiftCode` int(11) NOT NULL,
  `strAgainst` varchar(20) NOT NULL DEFAULT 'Direct',
  `dblRollingAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strTransID`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblcashmanagement: ~0 rows (approximately)
DELETE FROM `tblcashmanagement`;
/*!40000 ALTER TABLE `tblcashmanagement` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcashmanagement` ENABLE KEYS */;

-- Dumping structure for table infosys.tblcharactersticsmaster
DROP TABLE IF EXISTS `tblcharactersticsmaster`;
CREATE TABLE IF NOT EXISTS `tblcharactersticsmaster` (
  `strCharCode` varchar(10) NOT NULL,
  `strCharName` varchar(100) NOT NULL,
  `strCharType` varchar(50) NOT NULL,
  `strWSCharCode` varchar(10) NOT NULL,
  `strValue` varchar(100) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strPOSCode` varchar(10) NOT NULL,
  KEY `strCharCode` (`strCharCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblcharactersticsmaster: ~0 rows (approximately)
DELETE FROM `tblcharactersticsmaster`;
/*!40000 ALTER TABLE `tblcharactersticsmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcharactersticsmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblcharvalue
DROP TABLE IF EXISTS `tblcharvalue`;
CREATE TABLE IF NOT EXISTS `tblcharvalue` (
  `strCharCode` varchar(10) NOT NULL,
  `strCharName` varchar(50) NOT NULL,
  `strCharValues` varchar(50) NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strPOScode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  KEY `strCharCode` (`strCharCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblcharvalue: ~0 rows (approximately)
DELETE FROM `tblcharvalue`;
/*!40000 ALTER TABLE `tblcharvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcharvalue` ENABLE KEYS */;

-- Dumping structure for table infosys.tblcompanymaster
DROP TABLE IF EXISTS `tblcompanymaster`;
CREATE TABLE IF NOT EXISTS `tblcompanymaster` (
  `strCompanyCode` varchar(50) NOT NULL DEFAULT '',
  `strCompanyName` varchar(50) NOT NULL DEFAULT '',
  `strUserCreated` varchar(50) NOT NULL DEFAULT '',
  `strUserEdited` varchar(50) NOT NULL DEFAULT '',
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT '',
  `strOperationalYN` varchar(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`strCompanyCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblcompanymaster: ~0 rows (approximately)
DELETE FROM `tblcompanymaster`;
/*!40000 ALTER TABLE `tblcompanymaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcompanymaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblconfig
DROP TABLE IF EXISTS `tblconfig`;
CREATE TABLE IF NOT EXISTS `tblconfig` (
  `strServer` varchar(100) NOT NULL DEFAULT 'mysql',
  `strDBName` varchar(100) NOT NULL DEFAULT 'mama',
  `strUserID` varchar(100) NOT NULL DEFAULT 'root',
  `strPassword` varchar(100) NOT NULL DEFAULT 'root',
  `strIPAddress` varchar(100) NOT NULL DEFAULT 'localhost',
  `strPort` varchar(100) NOT NULL DEFAULT '3306',
  `strBackupPath` varchar(500) NOT NULL DEFAULT '',
  `strExportPath` varchar(500) NOT NULL DEFAULT '',
  `strImagePath` varchar(500) NOT NULL DEFAULT '',
  `strHOWebServiceUrl` varchar(255) NOT NULL DEFAULT '',
  `strMMSWebServiceUrl` varchar(255) NOT NULL DEFAULT '',
  `strOS` varchar(100) NOT NULL DEFAULT 'windows',
  `strDefaultPrinter` varchar(100) NOT NULL DEFAULT '',
  `strPrinterType` varchar(100) NOT NULL DEFAULT 'Inbuild',
  `strTouchScreenMode` varchar(100) NOT NULL DEFAULT 'false',
  `strServerFilePath` varchar(500) NOT NULL DEFAULT '',
  `strSelectWaiterFromCardSwipe` varchar(100) NOT NULL DEFAULT 'false',
  `strMySQBackupFilePath` varchar(500) NOT NULL DEFAULT '',
  `strHOCommunication` varchar(100) NOT NULL DEFAULT 'true',
  `strAdvReceiptPrinter` varchar(100) NOT NULL DEFAULT '',
  `strClientCode` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblconfig: ~0 rows (approximately)
DELETE FROM `tblconfig`;
/*!40000 ALTER TABLE `tblconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblconfig` ENABLE KEYS */;

-- Dumping structure for table infosys.tblcostcentermaster
DROP TABLE IF EXISTS `tblcostcentermaster`;
CREATE TABLE IF NOT EXISTS `tblcostcentermaster` (
  `strCostCenterCode` varchar(4) NOT NULL,
  `strCostCenterName` varchar(100) NOT NULL,
  `strPrinterPort` varchar(100) NOT NULL,
  `strSecondaryPrinterPort` varchar(100) NOT NULL,
  `strPrintOnBothPrinters` varchar(5) NOT NULL DEFAULT 'N',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strLabelOnKOT` varchar(10) NOT NULL DEFAULT 'KOT',
  `strWSLocationCode` varchar(15) NOT NULL DEFAULT '',
  `strWSLocationName` varchar(100) NOT NULL DEFAULT '',
  `intCostCenterWiseNoOfCopies` int(11) NOT NULL DEFAULT '0',
  `intPrimaryPrinterNoOfCopies` int(11) NOT NULL DEFAULT '1',
  `intSecondaryPrinterNoOfCopies` int(11) NOT NULL DEFAULT '0',
  `strConsolidatedPrint` varchar(1) NOT NULL DEFAULT 'N',
  `strItemWisePrint` varchar(1) NOT NULL DEFAULT 'N',
  `strKOTFormat` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`strCostCenterCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblcostcentermaster: ~5 rows (approximately)
DELETE FROM `tblcostcentermaster`;
/*!40000 ALTER TABLE `tblcostcentermaster` DISABLE KEYS */;
INSERT INTO `tblcostcentermaster` (`strCostCenterCode`, `strCostCenterName`, `strPrinterPort`, `strSecondaryPrinterPort`, `strPrintOnBothPrinters`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`, `strClientCode`, `strDataPostFlag`, `strLabelOnKOT`, `strWSLocationCode`, `strWSLocationName`, `intCostCenterWiseNoOfCopies`, `intPrimaryPrinterNoOfCopies`, `intSecondaryPrinterNoOfCopies`, `strConsolidatedPrint`, `strItemWisePrint`, `strKOTFormat`) VALUES
	('C01', 'Shaan-e-Punjab - Indian Cuisine', 'Tenax', '', 'N', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-08-10 18:48:39', '412.005', 'N', 'KOT', '', '', 0, 1, 0, 'N', 'N', 'Text File'),
	('C02', 'Saucy Wok - Asian Cuisine', 'Tenax', '', 'N', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-08-10 18:48:39', '412.005', 'N', 'KOT', '', '', 0, 1, 0, 'N', 'N', 'Text File'),
	('C03', 'Curry On Tikka- A-la-Carte', 'Tenax', '', 'N', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-08-10 18:48:39', '412.005', 'N', 'KOT', '', '', 0, 1, 0, 'N', 'N', 'Text File'),
	('C04', 'Indian Burrito Company - Indo Mexican', 'Tenax', '', 'N', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-08-10 18:48:39', '412.005', 'N', 'KOT', '', '', 0, 1, 0, 'N', 'N', 'Text File'),
	('C05', 'Flavours of South - South Indian Cuisine', 'Tenax', '', 'N', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-08-10 18:48:39', '412.005', 'N', 'KOT', '', '', 0, 1, 0, 'N', 'N', 'Text File');
/*!40000 ALTER TABLE `tblcostcentermaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblcounterdtl
DROP TABLE IF EXISTS `tblcounterdtl`;
CREATE TABLE IF NOT EXISTS `tblcounterdtl` (
  `strCounterCode` varchar(10) NOT NULL,
  `strMenuCode` varchar(10) NOT NULL,
  `strClientCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblcounterdtl: ~0 rows (approximately)
DELETE FROM `tblcounterdtl`;
/*!40000 ALTER TABLE `tblcounterdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcounterdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblcounterhd
DROP TABLE IF EXISTS `tblcounterhd`;
CREATE TABLE IF NOT EXISTS `tblcounterhd` (
  `strCounterCode` varchar(10) NOT NULL,
  `strCounterName` varchar(200) NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strOperational` varchar(3) NOT NULL DEFAULT 'No',
  `strUserCode` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`strCounterCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblcounterhd: ~0 rows (approximately)
DELETE FROM `tblcounterhd`;
/*!40000 ALTER TABLE `tblcounterhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcounterhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblcreditbillreceipthd
DROP TABLE IF EXISTS `tblcreditbillreceipthd`;
CREATE TABLE IF NOT EXISTS `tblcreditbillreceipthd` (
  `strReceiptNo` varchar(15) NOT NULL,
  `strBillNo` varchar(15) NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `dteReceiptDate` date NOT NULL,
  `dblReceiptAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `intShiftCode` int(11) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dteBillDate` datetime NOT NULL,
  `strSettlementCode` varchar(10) NOT NULL,
  `strSettlementName` varchar(50) NOT NULL,
  `strChequeNo` varchar(50) NOT NULL DEFAULT '',
  `strBankName` varchar(50) NOT NULL DEFAULT '',
  `dteChequeDate` datetime NOT NULL DEFAULT '1990-01-01 00:00:00',
  `strRemarks` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`strReceiptNo`,`strBillNo`,`strClientCode`,`dteBillDate`),
  KEY `strReceiptNo_strBillNo_strPOSCode_dteBillDate` (`strReceiptNo`,`strBillNo`,`strPOSCode`,`dteBillDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblcreditbillreceipthd: ~0 rows (approximately)
DELETE FROM `tblcreditbillreceipthd`;
/*!40000 ALTER TABLE `tblcreditbillreceipthd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcreditbillreceipthd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblcrmpoints
DROP TABLE IF EXISTS `tblcrmpoints`;
CREATE TABLE IF NOT EXISTS `tblcrmpoints` (
  `strBillNo` varchar(15) NOT NULL,
  `dblPoints` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strTransactionId` varchar(100) NOT NULL DEFAULT '',
  `strOutletUID` varchar(100) NOT NULL DEFAULT '',
  `dblRedeemedAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `longCustMobileNo` varchar(15) NOT NULL,
  `strClientCode` varchar(15) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dblValue` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strCustomerId` varchar(50) NOT NULL DEFAULT '',
  `dteBillDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblcrmpoints: ~0 rows (approximately)
DELETE FROM `tblcrmpoints`;
/*!40000 ALTER TABLE `tblcrmpoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcrmpoints` ENABLE KEYS */;

-- Dumping structure for table infosys.tblcustareatypemaster
DROP TABLE IF EXISTS `tblcustareatypemaster`;
CREATE TABLE IF NOT EXISTS `tblcustareatypemaster` (
  `strZoneCode` varchar(10) NOT NULL,
  `strZoneName` varchar(100) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblcustareatypemaster: ~0 rows (approximately)
DELETE FROM `tblcustareatypemaster`;
/*!40000 ALTER TABLE `tblcustareatypemaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcustareatypemaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblcustomermaster
DROP TABLE IF EXISTS `tblcustomermaster`;
CREATE TABLE IF NOT EXISTS `tblcustomermaster` (
  `strCustomerCode` varchar(15) NOT NULL,
  `strCustomerName` varchar(100) NOT NULL,
  `strBuldingCode` varchar(10) NOT NULL DEFAULT '',
  `strBuildingName` varchar(200) NOT NULL DEFAULT '',
  `strStreetName` varchar(200) NOT NULL DEFAULT '',
  `strLandmark` varchar(200) NOT NULL DEFAULT '',
  `strArea` varchar(200) NOT NULL DEFAULT '',
  `strCity` varchar(100) NOT NULL DEFAULT '',
  `strState` varchar(100) NOT NULL DEFAULT '',
  `intPinCode` varchar(50) NOT NULL DEFAULT '',
  `longMobileNo` varchar(100) NOT NULL DEFAULT '',
  `longAlternateMobileNo` varchar(50) NOT NULL DEFAULT '',
  `strOfficeBuildingCode` varchar(10) NOT NULL DEFAULT '',
  `strOfficeBuildingName` varchar(200) NOT NULL DEFAULT '',
  `strOfficeStreetName` varchar(200) NOT NULL DEFAULT '',
  `strOfficeLandmark` varchar(200) NOT NULL DEFAULT '',
  `strOfficeArea` varchar(200) NOT NULL DEFAULT '',
  `strOfficeCity` varchar(200) NOT NULL DEFAULT '',
  `strOfficePinCode` varchar(10) NOT NULL DEFAULT '',
  `strOfficeState` varchar(200) NOT NULL DEFAULT '',
  `strOfficeNo` varchar(50) NOT NULL DEFAULT '',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strClientCode` varchar(15) NOT NULL,
  `strOfficeAddress` varchar(100) NOT NULL DEFAULT 'N',
  `strExternalCode` varchar(10) NOT NULL DEFAULT '',
  `strCustomerType` varchar(50) NOT NULL DEFAULT '',
  `dteDOB` datetime NOT NULL,
  `strGender` varchar(7) NOT NULL DEFAULT 'Male',
  `dteAnniversary` datetime NOT NULL,
  `strEmailId` varchar(100) NOT NULL DEFAULT '',
  `strCRMId` varchar(50) NOT NULL DEFAULT '',
  `strCustAddress` varchar(200) NOT NULL DEFAULT '',
  `strTempAddress` varchar(200) NOT NULL DEFAULT '',
  `strTempStreet` varchar(200) NOT NULL DEFAULT '',
  `strTempLandmark` varchar(200) NOT NULL DEFAULT '',
  `strGSTNo` varchar(100) NOT NULL DEFAULT '',
  `strDebtorCode` varchar(100) NOT NULL DEFAULT '',
  `strAccountCode` varchar(20) NOT NULL DEFAULT 'NA',
  `dblCreditLimit` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strOfficeName` varchar(100) NOT NULL DEFAULT '',
  `strItemImage` varchar(100) NOT NULL DEFAULT '',
  `strPreferences` varchar(100) NOT NULL DEFAULT '',
  `strDesignation` varchar(100) NOT NULL DEFAULT '',
  `imgImage` longblob NOT NULL,
  PRIMARY KEY (`strCustomerCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblcustomermaster: ~0 rows (approximately)
DELETE FROM `tblcustomermaster`;
/*!40000 ALTER TABLE `tblcustomermaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcustomermaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblcustomertypemaster
DROP TABLE IF EXISTS `tblcustomertypemaster`;
CREATE TABLE IF NOT EXISTS `tblcustomertypemaster` (
  `strCustTypeCode` varchar(5) NOT NULL,
  `strCustType` varchar(20) NOT NULL,
  `dblDiscPer` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(50) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strPlayZoneCustType` varchar(10) NOT NULL DEFAULT 'Member'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblcustomertypemaster: ~0 rows (approximately)
DELETE FROM `tblcustomertypemaster`;
/*!40000 ALTER TABLE `tblcustomertypemaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcustomertypemaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tbldayendprocess
DROP TABLE IF EXISTS `tbldayendprocess`;
CREATE TABLE IF NOT EXISTS `tbldayendprocess` (
  `strPOSCode` varchar(5) NOT NULL,
  `dtePOSDate` datetime NOT NULL,
  `strDayEnd` varchar(1) NOT NULL,
  `dblTotalSale` decimal(18,4) DEFAULT '0.0000',
  `dblNoOfBill` decimal(18,4) DEFAULT '0.0000',
  `dblNoOfVoidedBill` decimal(18,4) DEFAULT '0.0000',
  `dblNoOfModifyBill` decimal(18,4) DEFAULT '0.0000',
  `dblHDAmt` decimal(18,4) DEFAULT '0.0000',
  `dblDiningAmt` decimal(18,4) DEFAULT '0.0000',
  `dblTakeAway` decimal(18,4) DEFAULT '0.0000',
  `dblFloat` decimal(18,4) DEFAULT '0.0000',
  `dblCash` decimal(18,4) DEFAULT '0.0000',
  `dblAdvance` decimal(18,4) DEFAULT '0.0000',
  `dblTransferIn` decimal(18,4) DEFAULT '0.0000',
  `dblTotalReceipt` decimal(18,4) DEFAULT '0.0000',
  `dblPayments` decimal(18,4) DEFAULT '0.0000',
  `dblWithdrawal` decimal(18,4) DEFAULT '0.0000',
  `dblTransferOut` decimal(18,4) DEFAULT '0.0000',
  `dblTotalPay` decimal(18,4) DEFAULT '0.0000',
  `dblCashInHand` decimal(18,4) DEFAULT '0.0000',
  `dblRefund` decimal(18,4) DEFAULT '0.0000',
  `dblTotalDiscount` decimal(18,4) DEFAULT '0.0000',
  `dblNoOfDiscountedBill` decimal(18,4) DEFAULT '0.0000',
  `intShiftCode` int(11) NOT NULL DEFAULT '0',
  `strShiftEnd` varchar(50) NOT NULL DEFAULT '0',
  `intTotalPax` int(11) NOT NULL DEFAULT '0',
  `intNoOfTakeAway` int(50) DEFAULT '0',
  `intNoOfHomeDelivery` int(50) DEFAULT '0',
  `strUserCreated` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDayEndDateTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `strUserEdited` varchar(10) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `intNoOfNCKOT` int(50) NOT NULL DEFAULT '0',
  `intNoOfComplimentaryKOT` int(50) NOT NULL DEFAULT '0',
  `intNoOfVoidKOT` int(50) NOT NULL DEFAULT '0',
  `dblUsedDebitCardBalance` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblUnusedDebitCardBalance` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strWSStockAdjustmentNo` varchar(500) NOT NULL DEFAULT '',
  `dblTipAmt` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strExciseBillGeneration` varchar(20) NOT NULL DEFAULT '',
  `dblNetSale` decimal(18,4) DEFAULT '0.0000',
  `dblGrossSale` decimal(18,4) DEFAULT '0.0000',
  `dblAPC` decimal(18,4) DEFAULT '0.0000',
  `strJVNo` varchar(50) NOT NULL DEFAULT '',
  `strClientCode` varchar(10) NOT NULL DEFAULT '',
  `dteDayEndReportsDateTime` datetime DEFAULT NULL,
  `dblJVAmt` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strHDJVNo` varchar(50) NOT NULL DEFAULT '',
  `strTAJVno` varchar(50) NOT NULL DEFAULT '',
  `dblHDJVAmt` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblTAJVAmt` decimal(18,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`strPOSCode`,`dtePOSDate`,`intShiftCode`),
  KEY `strPOSCode_dtePOSDate` (`strPOSCode`,`dtePOSDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbldayendprocess: ~1 rows (approximately)
DELETE FROM `tbldayendprocess`;
/*!40000 ALTER TABLE `tbldayendprocess` DISABLE KEYS */;
INSERT INTO `tbldayendprocess` (`strPOSCode`, `dtePOSDate`, `strDayEnd`, `dblTotalSale`, `dblNoOfBill`, `dblNoOfVoidedBill`, `dblNoOfModifyBill`, `dblHDAmt`, `dblDiningAmt`, `dblTakeAway`, `dblFloat`, `dblCash`, `dblAdvance`, `dblTransferIn`, `dblTotalReceipt`, `dblPayments`, `dblWithdrawal`, `dblTransferOut`, `dblTotalPay`, `dblCashInHand`, `dblRefund`, `dblTotalDiscount`, `dblNoOfDiscountedBill`, `intShiftCode`, `strShiftEnd`, `intTotalPax`, `intNoOfTakeAway`, `intNoOfHomeDelivery`, `strUserCreated`, `dteDateCreated`, `dteDayEndDateTime`, `strUserEdited`, `strDataPostFlag`, `intNoOfNCKOT`, `intNoOfComplimentaryKOT`, `intNoOfVoidKOT`, `dblUsedDebitCardBalance`, `dblUnusedDebitCardBalance`, `strWSStockAdjustmentNo`, `dblTipAmt`, `strExciseBillGeneration`, `dblNetSale`, `dblGrossSale`, `dblAPC`, `strJVNo`, `strClientCode`, `dteDayEndReportsDateTime`, `dblJVAmt`, `strHDJVNo`, `strTAJVno`, `dblHDJVAmt`, `dblTAJVAmt`) VALUES
	('P01', '2022-06-01 00:00:00', 'N', 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1, 'N', 0, 0, 0, 'SANGUINE', '2022-06-01 15:17:34', '2022-06-01 15:17:34', '', 'N', 0, 0, 0, 0.0000, 0.0000, '', 0.0000, '', 0.0000, 0.0000, 0.0000, '', '412.005', NULL, 0.0000, '', '', 0.0000, 0.0000);
/*!40000 ALTER TABLE `tbldayendprocess` ENABLE KEYS */;

-- Dumping structure for table infosys.tbldayendreports
DROP TABLE IF EXISTS `tbldayendreports`;
CREATE TABLE IF NOT EXISTS `tbldayendreports` (
  `strPOSCode` varchar(20) NOT NULL,
  `strClientCode` varchar(11) NOT NULL,
  `strReportName` varchar(200) NOT NULL,
  `dtePOSDate` datetime NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strPOSCode`,`strClientCode`,`strReportName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbldayendreports: ~0 rows (approximately)
DELETE FROM `tbldayendreports`;
/*!40000 ALTER TABLE `tbldayendreports` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldayendreports` ENABLE KEYS */;

-- Dumping structure for table infosys.tbldcrechargesettlementdtl
DROP TABLE IF EXISTS `tbldcrechargesettlementdtl`;
CREATE TABLE IF NOT EXISTS `tbldcrechargesettlementdtl` (
  `strRechargeNo` varchar(10) NOT NULL,
  `strSettlementCode` varchar(5) NOT NULL,
  `dblRechargeAmt` decimal(18,4) NOT NULL,
  `strCardNo` varchar(10) NOT NULL,
  `strType` varchar(20) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strExpiryDate` varchar(20) NOT NULL DEFAULT ' ',
  `strCardName` varchar(50) NOT NULL DEFAULT ' ',
  `strRemark` varchar(100) NOT NULL DEFAULT ' ',
  `dteRechargeDate` date NOT NULL,
  PRIMARY KEY (`strRechargeNo`,`strClientCode`,`strSettlementCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbldcrechargesettlementdtl: ~0 rows (approximately)
DELETE FROM `tbldcrechargesettlementdtl`;
/*!40000 ALTER TABLE `tbldcrechargesettlementdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldcrechargesettlementdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tbldebitcardbilldetails
DROP TABLE IF EXISTS `tbldebitcardbilldetails`;
CREATE TABLE IF NOT EXISTS `tbldebitcardbilldetails` (
  `strBillNo` varchar(10) NOT NULL,
  `strCardNo` varchar(50) NOT NULL,
  `dblTransactionAmt` decimal(18,2) NOT NULL,
  `strPOSCode` varchar(3) NOT NULL,
  `dteBillDate` datetime NOT NULL,
  `strTransactionType` varchar(10) NOT NULL,
  PRIMARY KEY (`strBillNo`,`strCardNo`,`dteBillDate`),
  KEY `strBillNo_strCardNo` (`strBillNo`,`strCardNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tbldebitcardbilldetails: ~0 rows (approximately)
DELETE FROM `tbldebitcardbilldetails`;
/*!40000 ALTER TABLE `tbldebitcardbilldetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldebitcardbilldetails` ENABLE KEYS */;

-- Dumping structure for table infosys.tbldebitcardmaster
DROP TABLE IF EXISTS `tbldebitcardmaster`;
CREATE TABLE IF NOT EXISTS `tbldebitcardmaster` (
  `strCardTypeCode` varchar(15) NOT NULL,
  `strCardNo` varchar(50) NOT NULL,
  `dblRedeemAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strStatus` char(10) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `strCustomerCode` varchar(15) DEFAULT NULL,
  `intPassword` int(4) NOT NULL DEFAULT '0',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strClientCode` varchar(20) NOT NULL,
  `strCardString` varchar(50) NOT NULL,
  `strReachrgeRemark` varchar(100) NOT NULL DEFAULT '',
  `strRefMemberCode` varchar(50) NOT NULL DEFAULT '',
  `strManualNo` varchar(100) NOT NULL DEFAULT 'NA',
  KEY `strCardTypeCode_strCardNo` (`strCardTypeCode`,`strCardNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbldebitcardmaster: ~0 rows (approximately)
DELETE FROM `tbldebitcardmaster`;
/*!40000 ALTER TABLE `tbldebitcardmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldebitcardmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tbldebitcardrecharge
DROP TABLE IF EXISTS `tbldebitcardrecharge`;
CREATE TABLE IF NOT EXISTS `tbldebitcardrecharge` (
  `intRechargeNo` varchar(50) NOT NULL,
  `intRedeemNo` varchar(50) NOT NULL,
  `strCardTypeCode` varchar(15) NOT NULL,
  `strCardString` varchar(50) NOT NULL,
  `strRedeemable` char(1) NOT NULL,
  `strComplementary` char(1) NOT NULL,
  `dblRechargeAmount` decimal(18,2) NOT NULL,
  `dblRedeemableAmount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strRechargeSettlmentMode` varchar(10) NOT NULL DEFAULT '',
  `strUserCreated` varchar(10) NOT NULL,
  `strPOSCode` varchar(8) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `strRemarks` varchar(100) NOT NULL DEFAULT '',
  `strRechargeType` varchar(20) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strClientCode` varchar(20) NOT NULL,
  `strMemberCode` varchar(50) NOT NULL DEFAULT '',
  `strRechargeSlipNo` varchar(10) NOT NULL DEFAULT '',
  `strCardNo` varchar(10) NOT NULL,
  `strTransferBalance` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`intRechargeNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbldebitcardrecharge: ~0 rows (approximately)
DELETE FROM `tbldebitcardrecharge`;
/*!40000 ALTER TABLE `tbldebitcardrecharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldebitcardrecharge` ENABLE KEYS */;

-- Dumping structure for table infosys.tbldebitcardrefundamt
DROP TABLE IF EXISTS `tbldebitcardrefundamt`;
CREATE TABLE IF NOT EXISTS `tbldebitcardrefundamt` (
  `strRefundNo` varchar(10) NOT NULL,
  `strCardTypeCode` varchar(10) NOT NULL,
  `strCardString` varchar(50) NOT NULL,
  `strCardNo` varchar(50) NOT NULL,
  `dblCardBalance` decimal(18,4) NOT NULL,
  `dblRefundAmt` decimal(18,4) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strRefundSlipNo` varchar(10) NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  PRIMARY KEY (`strRefundNo`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbldebitcardrefundamt: ~0 rows (approximately)
DELETE FROM `tbldebitcardrefundamt`;
/*!40000 ALTER TABLE `tbldebitcardrefundamt` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldebitcardrefundamt` ENABLE KEYS */;

-- Dumping structure for table infosys.tbldebitcardrevenue
DROP TABLE IF EXISTS `tbldebitcardrevenue`;
CREATE TABLE IF NOT EXISTS `tbldebitcardrevenue` (
  `strCardNo` varchar(50) NOT NULL,
  `dblCardAmt` decimal(18,4) NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `dtePOSDate` datetime NOT NULL,
  `dteDate` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strUserCreated` varchar(10) NOT NULL,
  KEY `strCardNo` (`strCardNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbldebitcardrevenue: ~0 rows (approximately)
DELETE FROM `tbldebitcardrevenue`;
/*!40000 ALTER TABLE `tbldebitcardrevenue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldebitcardrevenue` ENABLE KEYS */;

-- Dumping structure for table infosys.tbldebitcardsettlementdtl
DROP TABLE IF EXISTS `tbldebitcardsettlementdtl`;
CREATE TABLE IF NOT EXISTS `tbldebitcardsettlementdtl` (
  `strCardTypeCode` varchar(15) NOT NULL,
  `strSettlementCode` varchar(15) NOT NULL,
  `strApplicable` varchar(15) NOT NULL,
  `strClientCode` varchar(15) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  KEY `strSettlementCode` (`strSettlementCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbldebitcardsettlementdtl: ~0 rows (approximately)
DELETE FROM `tbldebitcardsettlementdtl`;
/*!40000 ALTER TABLE `tbldebitcardsettlementdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldebitcardsettlementdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tbldebitcardtabletemp
DROP TABLE IF EXISTS `tbldebitcardtabletemp`;
CREATE TABLE IF NOT EXISTS `tbldebitcardtabletemp` (
  `strTableNo` varchar(10) NOT NULL,
  `strCardNo` varchar(50) NOT NULL,
  `dblRedeemAmt` decimal(18,2) DEFAULT NULL,
  `strPrintYN` varchar(1) DEFAULT NULL,
  KEY `strCardNo` (`strCardNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbldebitcardtabletemp: ~0 rows (approximately)
DELETE FROM `tbldebitcardtabletemp`;
/*!40000 ALTER TABLE `tbldebitcardtabletemp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldebitcardtabletemp` ENABLE KEYS */;

-- Dumping structure for table infosys.tbldebitcardtype
DROP TABLE IF EXISTS `tbldebitcardtype`;
CREATE TABLE IF NOT EXISTS `tbldebitcardtype` (
  `strCardTypeCode` varchar(15) NOT NULL,
  `strCardName` varchar(50) NOT NULL,
  `strDebitOnCredit` char(1) NOT NULL,
  `strRoomCard` char(1) NOT NULL,
  `strComplementary` char(1) NOT NULL,
  `strAutoTopUp` char(1) NOT NULL,
  `strRedeemableCard` char(1) NOT NULL,
  `strCardInUse` char(1) NOT NULL,
  `strEntryCharge` char(1) NOT NULL,
  `strCoverCharge` char(1) NOT NULL,
  `strDiplomate` char(1) NOT NULL,
  `strAllowTopUp` char(1) NOT NULL,
  `strExValOnTopUp` char(1) NOT NULL,
  `strSetExpiryDt` char(1) NOT NULL,
  `dteExpiryDt` datetime NOT NULL,
  `strCurrentFinacialYr` char(1) NOT NULL,
  `intValidityDays` int(50) NOT NULL,
  `dblCardValueFixed` decimal(18,2) NOT NULL,
  `dblMinVal` decimal(18,2) NOT NULL,
  `dblMaxVal` decimal(18,2) NOT NULL,
  `dblDepositAmt` decimal(18,2) NOT NULL,
  `dblMinCharge` decimal(18,2) NOT NULL,
  `strPayModCash` char(1) NOT NULL,
  `strPayModParty` char(1) NOT NULL,
  `strPayModMember` char(1) NOT NULL,
  `strPayModCreditCard` char(1) NOT NULL,
  `strPayModStaff` char(1) NOT NULL,
  `strPayModCheque` char(1) NOT NULL,
  `dblMaxRefundAmt` decimal(18,2) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strRedemptionLimitType` varchar(10) NOT NULL,
  `dblRedemptionLimitValue` decimal(18,2) NOT NULL,
  `strCustomerCompulsory` varchar(1) NOT NULL DEFAULT 'N',
  `strClientCode` varchar(20) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strCashCard` varchar(1) NOT NULL DEFAULT 'N',
  `strAuthorizeMemberCard` varchar(1) NOT NULL DEFAULT 'N',
  `strSetExpiryTime` varchar(1) NOT NULL DEFAULT 'N',
  `intExpiryTime` int(11) NOT NULL DEFAULT '0',
  `strDiscountOn` varchar(50) NOT NULL DEFAULT '',
  `dblDiscPercentage` varchar(50) NOT NULL DEFAULT '',
  `strPOSCodes` varchar(50) NOT NULL DEFAULT '',
  `strOperationTypes` varchar(50) NOT NULL DEFAULT '',
  KEY `strCardTypeCode` (`strCardTypeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbldebitcardtype: ~0 rows (approximately)
DELETE FROM `tbldebitcardtype`;
/*!40000 ALTER TABLE `tbldebitcardtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldebitcardtype` ENABLE KEYS */;

-- Dumping structure for table infosys.tbldeliveryboycategorymaster
DROP TABLE IF EXISTS `tbldeliveryboycategorymaster`;
CREATE TABLE IF NOT EXISTS `tbldeliveryboycategorymaster` (
  `strDelBoyCategoryCode` varchar(20) NOT NULL,
  `strDelBoyCategoryName` varchar(100) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  KEY `strDelBoyCategoryCode` (`strDelBoyCategoryCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbldeliveryboycategorymaster: ~0 rows (approximately)
DELETE FROM `tbldeliveryboycategorymaster`;
/*!40000 ALTER TABLE `tbldeliveryboycategorymaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldeliveryboycategorymaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tbldeliverypersonmaster
DROP TABLE IF EXISTS `tbldeliverypersonmaster`;
CREATE TABLE IF NOT EXISTS `tbldeliverypersonmaster` (
  `strDPCode` varchar(10) NOT NULL,
  `strDPName` varchar(100) NOT NULL,
  `strAddressLine1` varchar(100) NOT NULL DEFAULT '',
  `strAddressLine2` varchar(100) NOT NULL DEFAULT '',
  `strAddressLine3` varchar(100) NOT NULL DEFAULT '',
  `strCity` varchar(20) NOT NULL DEFAULT '',
  `strState` varchar(50) NOT NULL DEFAULT '',
  `intPinCode` bigint(20) NOT NULL DEFAULT '0',
  `intMobileNo` bigint(20) NOT NULL DEFAULT '0',
  `strDeliveryArea` varchar(100) DEFAULT NULL,
  `strUserCreated` varchar(50) DEFAULT NULL,
  `strUserEdited` varchar(50) DEFAULT NULL,
  `dteDateCreated` datetime DEFAULT NULL,
  `dteDateEdited` datetime DEFAULT NULL,
  `strOperational` varchar(1) NOT NULL DEFAULT 'N',
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dblIncentiveAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strDBCategoryCode` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`strDPCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbldeliverypersonmaster: ~0 rows (approximately)
DELETE FROM `tbldeliverypersonmaster`;
/*!40000 ALTER TABLE `tbldeliverypersonmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldeliverypersonmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tbldesignationmaster
DROP TABLE IF EXISTS `tbldesignationmaster`;
CREATE TABLE IF NOT EXISTS `tbldesignationmaster` (
  `strDesignationCode` varchar(50) NOT NULL DEFAULT '',
  `strDesignationName` varchar(50) NOT NULL DEFAULT '',
  `strUserCreated` varchar(50) NOT NULL DEFAULT '',
  `strUserEdited` varchar(50) NOT NULL DEFAULT '',
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT '',
  `strOperationalYN` varchar(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`strDesignationCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbldesignationmaster: ~0 rows (approximately)
DELETE FROM `tbldesignationmaster`;
/*!40000 ALTER TABLE `tbldesignationmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldesignationmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tbldisccoreservations
DROP TABLE IF EXISTS `tbldisccoreservations`;
CREATE TABLE IF NOT EXISTS `tbldisccoreservations` (
  `ReservationId` varchar(50) DEFAULT NULL,
  `ReservationDate` varchar(50) DEFAULT NULL,
  `ReservationTime` varchar(50) DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Lastname` varchar(50) DEFAULT NULL,
  `Firstname` varchar(50) DEFAULT NULL,
  `Mobile` varchar(50) DEFAULT NULL,
  `Landline` varchar(50) DEFAULT NULL,
  `EmailId` varchar(50) DEFAULT NULL,
  `Pax` varchar(50) DEFAULT NULL,
  `ReservationNotes` varchar(250) DEFAULT NULL,
  `PatronNotes` varchar(250) DEFAULT NULL,
  `Occasion` varchar(50) DEFAULT NULL,
  `GuestId` varchar(50) DEFAULT NULL,
  `Tables` varchar(50) DEFAULT NULL,
  `MemberNumber` varchar(50) DEFAULT NULL,
  `Membershiplevel` varchar(50) DEFAULT NULL,
  `MemberShipType` varchar(50) DEFAULT NULL,
  `Iswalkin` varchar(50) DEFAULT NULL,
  `OfferId` varchar(50) DEFAULT NULL,
  `OfferName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbldisccoreservations: ~0 rows (approximately)
DELETE FROM `tbldisccoreservations`;
/*!40000 ALTER TABLE `tbldisccoreservations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldisccoreservations` ENABLE KEYS */;

-- Dumping structure for table infosys.tbldiscdtl
DROP TABLE IF EXISTS `tbldiscdtl`;
CREATE TABLE IF NOT EXISTS `tbldiscdtl` (
  `strDiscCode` varchar(10) NOT NULL,
  `strDiscOnCode` varchar(50) NOT NULL,
  `strDiscOnName` varchar(100) NOT NULL,
  `strDiscountType` varchar(10) NOT NULL DEFAULT '',
  `dblDiscountValue` decimal(10,2) NOT NULL DEFAULT '0.00',
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strDiscCode`,`strDiscOnCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbldiscdtl: ~0 rows (approximately)
DELETE FROM `tbldiscdtl`;
/*!40000 ALTER TABLE `tbldiscdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldiscdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tbldischd
DROP TABLE IF EXISTS `tbldischd`;
CREATE TABLE IF NOT EXISTS `tbldischd` (
  `strDiscCode` varchar(10) NOT NULL,
  `strDiscName` varchar(200) NOT NULL,
  `strPOSCode` varchar(15) NOT NULL DEFAULT '',
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDiscOn` varchar(50) NOT NULL,
  `dteFromDate` date NOT NULL,
  `dteToDate` date NOT NULL,
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strDineIn` varchar(1) NOT NULL DEFAULT 'Y',
  `strHomeDelivery` varchar(1) NOT NULL DEFAULT 'N',
  `strTakeAway` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strDiscCode`,`strPOSCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbldischd: ~0 rows (approximately)
DELETE FROM `tbldischd`;
/*!40000 ALTER TABLE `tbldischd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldischd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblfactorymaster
DROP TABLE IF EXISTS `tblfactorymaster`;
CREATE TABLE IF NOT EXISTS `tblfactorymaster` (
  `strFactoryCode` varchar(10) NOT NULL,
  `strFactoryName` varchar(200) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strFactoryCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblfactorymaster: ~0 rows (approximately)
DELETE FROM `tblfactorymaster`;
/*!40000 ALTER TABLE `tblfactorymaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfactorymaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblflagmaster
DROP TABLE IF EXISTS `tblflagmaster`;
CREATE TABLE IF NOT EXISTS `tblflagmaster` (
  `strFlagCode` varchar(50) NOT NULL DEFAULT '',
  `strFlagName` varchar(50) NOT NULL DEFAULT '',
  `strUserCreated` varchar(50) NOT NULL DEFAULT '',
  `strUserEdited` varchar(50) NOT NULL DEFAULT '',
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT '',
  `strOperationalYN` varchar(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`strFlagCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblflagmaster: ~0 rows (approximately)
DELETE FROM `tblflagmaster`;
/*!40000 ALTER TABLE `tblflagmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblflagmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblforms
DROP TABLE IF EXISTS `tblforms`;
CREATE TABLE IF NOT EXISTS `tblforms` (
  `strFormName` varchar(50) NOT NULL,
  `strModuleName` varchar(50) NOT NULL,
  `strModuleType` varchar(2) NOT NULL,
  `strImageName` varchar(100) NOT NULL,
  `intSequence` int(11) NOT NULL,
  `strColorImageName` varchar(100) NOT NULL,
  `strRequestMapping` varchar(100) NOT NULL,
  `strShortName` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`strFormName`),
  KEY `strFormName` (`strFormName`),
  KEY `strModuleName` (`strModuleName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblforms: ~247 rows (approximately)
DELETE FROM `tblforms`;
/*!40000 ALTER TABLE `tblforms` DISABLE KEYS */;
INSERT INTO `tblforms` (`strFormName`, `strModuleName`, `strModuleType`, `strImageName`, `intSequence`, `strColorImageName`, `strRequestMapping`, `strShortName`) VALUES
	('ComplimentrySettlement', 'Complimentry Settlement', 'T', 'imgPlacedOrderReport', 143, 'imgPlacedOrderReport1', 'POSComplimentrySettlement.html', 'Complimentry Settlement'),
	('DiscountOnBill', 'Discount On Bill', 'T', 'imgPlacedOrderReport', 144, 'imgPlacedOrderReport1', 'POSDiscountOnBill.html', 'Discount On Bill'),
	('frmAddKOTToBill', 'Add KOT To Bill', 'T', 'imgKOTToBill', 85, 'imgKOTToBill1', 'frmPOSAddKOTToBill.html', 'Add KOT To Bill'),
	('frmAdvanceBooking', 'Advance Order', 'T', 'imgAdvanceOrder', 24, 'imgAdvanceOrder1', 'frmPOSAdvanceBooking.html', 'Advance Order'),
	('frmAdvanceOrderFlash', 'Advance Order Flash', 'R', 'imgAdvanceOrderFlash', 47, 'imgAdvanceOrderFlash1', 'frmPOSAdvanceOrderFlash.html', 'Advance Order Flash'),
	('frmAdvanceOrderReport', 'Advance Order Report', 'R', 'imgAdvanceOrderReport', 145, 'imgAdvanceOrderReport1', 'frmPOSAdvanceOrderReport.html', 'Advance Order Report'),
	('frmAdvanceOrderTypeMaster', 'Advance Order Type Master', 'M', 'imgAdvanceOrderTypeMaster', 86, 'imgAdvanceOrderTypeMaster1', 'frmPOSAdvanceOrderTypeMaster.html', 'Advance Order Type Master'),
	('frmAIPB', 'AvgItemPerBill', 'R', 'imgAvgItemsPerBill', 63, 'imgAvgItemsPerBill1', 'frmPOSAIPB.html', 'AvgItemPerBill'),
	('frmAPC', 'AvgPerCover', 'R', 'imgAveragePC', 64, 'imgAveragePC1', 'frmPOSAPC.html', 'AvgPerCover'),
	('frmAreaMaster', 'Area Master', 'M', 'imgAreaMaster', 54, 'imgAreaMaster1', 'frmPOSAreaMaster.html', 'Area Master'),
	('frmAreaWiseGroupWiseSales', 'Area Wise Group Wise Sales', 'R', 'imgAreaWiseGroupWiseSales', 212, 'imgAreaWiseGroupWiseSales1', 'frmAreaWiseGroupWiseSales.html', 'Area Wise Group Wise Sales'),
	('frmArrangeTransaction', 'Arrange Transaction', 'M', 'imgArrangeTransaction', 124, 'imgArrangeTransaction1', 'frmPOSArrangeTransaction.html', 'Arrange Transaction'),
	('frmAssignHomeDelivery', 'AssignHomeDelivery', 'T', 'imgAsignHomeDelivery', 99, 'imgAsignHomeDelivery1', 'frmPOSAssignHomeDelivery.html', 'AssignHomeDelivery'),
	('frmATV', 'AvgTicketValue', 'R', 'imgAvgValue', 65, 'imgAvgValue1', 'frmPOSATV.html', 'AvgTicketValue'),
	('frmAuditFlash', 'Audit Flash', 'R', 'imgAuditFlash', 46, 'imgAuditFlash1', 'frmPOSAuditFlash.html', 'Audit Flash'),
	('frmAuditorReport', 'Auditor Report', 'R', 'imgAuditorReport', 97, 'imgAuditorReport1', 'frmPOSAuditorReport.html', 'Auditor Report'),
	('frmAvdBookReceipt', 'Advance Booking Receipt', 'T', 'imgAdvanceBookingReceipt', 31, 'imgAdvanceBookingReceipt1', 'frmPOSAvdBookReceipt.html', 'Advance Booking Receipt'),
	('frmBarcodeGeneration', 'Barcode Generation', 'T', 'imgBarcodeGeneration', 159, 'imgBarcodeGeneration1', 'frmPOSBarcodeGeneration.html', 'Barcode Generation'),
	('frmBillAuditHistory', 'Bill Audit History', 'R', 'imgBillAuditHistoryReport', 271, 'imgBillAuditHistoryReport1', 'frmPOSBillAuditHistory.html', 'Bill Audit History'),
	('frmBillForItems', 'Bill For Items', 'T', 'imgBillForItems', 203, 'imgBillForItems1', 'frmBillForItems.html', 'Bill For Items'),
	('frmBillFromKOTs', 'BillFromKOTs', 'T', 'imgMakeBillFromKOT', 76, 'imgMakeBillFromKOT1', 'frmPOSBillFromKOTs.html', 'BillFromKOTs'),
	('frmBillReport', 'Bill Wise Report', 'R', 'imgBillWiseReport', 9, 'imgBillWiseReport1', 'frmPOSBillReport.html', 'Bill Wise Report'),
	('frmBillSeriesMaster', 'Bill Series Master', 'M', 'imgBillSeriesMaster', 192, 'imgBillSeriesMaster1', 'frmBillSeriesMaster.html', 'Bill Series Master'),
	('frmBillWiseSettlementSalesSummaryFlash', 'BillWiseSettlementSalesSummaryFlash', 'R', 'imgBillWiseSttlementSalesSummary', 131, 'imgBillWiseSttlementSalesSummary1', 'frmPOSBillWiseSettlementSalesSummaryFlash.html', 'BillWiseSettlementSalesSummaryFlash'),
	('frmBillWiseSettlementWiseGroupWiseBreakup', 'Bill Wise Settlement Wise Group Wise Breakup', 'R', 'imgBillWiseSettlementWiseGroupWiseBreakup', 179, 'imgBillWiseSettlementWiseGroupWiseBreakup1', 'frmBillWiseSettlementWiseGroupWiseBreakup.html', 'Bill Wise Settlement Wise Group Wise Breakup'),
	('frmBlindSettlementWiseReport', 'Blind Settlement Wise Report', 'R', 'imgBlindSettlementWiseReport', 195, 'imgBlindSettlementWiseReport1', 'frmPOSBlindSettlementWiseReport1.html', 'Blind Settlement Wise Report'),
	('frmBlockedUsers', 'Blocked Users', 'T', 'imgBlockedUsers', 224, 'imgBlockedUsers1', 'frmBlockedUsers.html', 'Blocked Users'),
	('frmBookingSourceMaster', 'Booking Source', 'M', 'imgBookingSource', 265, 'imgBookingSource1', 'frmBookingSourceMaster.html', 'Booking Source'),
	('frmBookingStatusMaster', 'Booking Status Master', 'M', 'imgBookingStatusMaster', 266, 'imgBookingStatusMaster1', 'frmBookingStatusMaster.html', 'Booking Status Master'),
	('frmBulkItemUpload', 'Bulk Item Upload', 'T', 'imgBulkItemUpload', 217, 'imgBulkItemUpload1', 'frmBulkItemUpload.html', 'Bulk Item Upload'),
	('frmBulkMenuItemPricing', 'Bulk Menu Item Pricing', 'M', 'imgBulkMenuItemPricing', 88, 'imgBulkMenuItemPricing1', 'frmPOSBulkMenuItemPricing.html', 'Bulk Menu Item Pricing'),
	('frmCallCenter', 'Call Center', 'T', 'imgCallCenter', 198, 'imgCallCenter1', 'frmCallCenter.html', 'Call Center'),
	('frmCallCenterOrderFlash', 'Call Center Order Flash', 'T', 'imgCallCenterOrderFlash', 200, 'imgCallCenterOrderFlash1', 'frmCallCenterOrderFlash.html', 'Call Center Order Flash'),
	('frmCashManagement', 'Cash Management', 'T', 'imgCashManagement', 43, 'imgCashManagement1', 'frmPOSCashManagement.html', 'Cash Management'),
	('frmCashMgmtReport', 'Cash Mgmt Report', 'R', 'imgCashMgmtFlashReport', 44, 'imgCashMgmtFlashReport1', 'frmPOSCashMgmtReport.html', 'Cash Mgmt Report'),
	('frmChangeCustomerOnBill', 'ChangeCustomerOnBill', 'T', 'imgChangeCustomerOnBill', 116, 'imgChangeCustomerOnBill1', 'frmPOSChangeCustomerOnBill.html', 'ChangeCustomerOnBill'),
	('frmChangePassword', 'Change Password', 'U', 'imgChangePassword', 176, 'imgChangePassword1', 'frmChangePassword.html', 'Change Password'),
	('frmChangeSettlement', 'Change Settlement', 'T', 'imgChangeSettlement', 171, 'imgChangeSettlement1', 'frmPOSChangeSettlement.html', 'Change Settlement'),
	('frmCharactersticsMaster', 'Characterstics Master', 'M', 'imgCharactersticsMaster', 139, 'imgCharactersticsMaster1', 'frmPOSCharactersticsMaster.html', 'Characterstics Master'),
	('frmCloseProductionOrder', 'Close Producion Order', 'T', 'imgProductionOrder', 84, 'imgProductionOrder1', 'frmPOSCloseProductionOrder.html', 'Close Producion Order'),
	('frmCocktailWorldInterface', 'CW Interface', 'T', 'imgCWInterface', 135, 'imgCWInterface1', 'frmPOSCocktailWorldInterface.html', 'CW Interface'),
	('frmCompanyMaster', 'Company Master', 'M', 'imgCompanyMaster', 264, 'imgCompanyMaster1', 'frmCompanyMaster.html', 'Company Master'),
	('frmComplimentaryItems', 'Complimentary Items', 'T', 'imgComplimentaryItems', 187, 'imgComplimentaryItems1', 'frmComplimentaryItems.html', 'Complimentary Items'),
	('frmComplimentarySettlement', 'Complimentary Settlement Report', 'R', 'imgComplimentarySettlementReport', 93, 'imgComplimentarySettlementReport1', 'frmPOSComplimentarySettlement.html', 'Complimentary Settlement Report'),
	('frmConsolidatedDiscountReport', 'Consolidated Discount Report', 'R', 'imgConsolidatedDiscountReport', 209, 'imgConsolidatedDiscountReport1', 'frmConsolidatedDiscountReport.html', 'Consolidated Discount Report'),
	('frmCostCenter', 'Cost Center', 'M', 'imgCostCenter', 22, 'imgCostCenter1', 'frmPOSCostCenter.html', 'Cost Center'),
	('frmCostCenterWiseReport', 'Cost Centre Report', 'R', 'imgCostCenterReport', 39, 'imgCostCenterReport1', 'frmPOSCostCenterWiseReport.html', 'Cost Centre Report'),
	('frmCounterMaster', 'CounterMaster', 'M', 'imgCounterMaster', 73, 'imgCounterMaster1', 'frmPOSCounterMaster.html', 'CounterMaster'),
	('frmCounterWiseSalesReport', 'Counter Wise Sales Report', 'R', 'imgCounterWiseSalesReport', 94, 'imgCounterWiseSalesReport1', 'frmPOSCounterWiseSalesReport.html', 'Counter Wise Sales Report'),
	('frmCreditBillOutstandingReport', 'Credit Bill Outstanding Report', 'R', 'imgCreditBillOutstandingReport', 169, 'imgCreditBillOutstandingReport1', 'frmPOSCreditBillOutstandingReport.html', 'Credit Bill Outstanding Report'),
	('frmCreditBillReceipt', 'Credit Bill Receipt', 'T', 'imgCreditBillReceipt', 168, 'imgCreditBillReceipt1', 'frmPOSCreditBillReceipt.html', 'Credit Bill Receipt'),
	('frmCreditReport', 'Credit Report', 'R', 'imgCreditReport', 206, 'imgCreditReport1', 'frmCreditReport.html', 'Credit Report'),
	('frmCustAreaMaster', 'Customer Area Master', 'M', 'imgCustAreaMaster', 11, 'imgCustAreaMaster1', 'frmPOSCustAreaMaster.html', 'Customer Area Master'),
	('frmCustomerDisplaySystem', 'CustomerDisplaySystem', 'T', 'imgCustomerDisplaySystem', 119, 'imgCustomerDisplaySystem1', 'frmPOSCustomerDisplaySystem.html', 'CustomerDisplaySystem'),
	('frmCustomerHistoryFlashReport', 'Customer History Flash Report', 'R', 'imgCustomerHistoryFlashReport', 163, 'imgCustomerHistoryFlashReport1', 'frmPOSCustomerHistoryFlash.html', 'Customer History Flash Report'),
	('frmCustomerLedger', 'Customer Ledger', 'R', 'imgCustomerLedger', 211, 'imgCustomerLedger1', 'frmCustomerLedger.html', 'Customer Ledger'),
	('frmCustomerMaster', 'Customer Master', 'M', 'imgCustomerMaster', 30, 'imgCustomerMaster1', 'frmPOSCustomerMaster.html', 'Customer Master'),
	('frmCustomerOrder', 'Customer Order', 'T', 'imgCustomerOrder', 175, 'imgCustomerOrder1', 'frmPOSCustomerOrder.html', 'Customer Order'),
	('frmCustomerTypeMaster', 'CustomerTypeMaster', 'M', 'imgCustomerTypeMaster', 68, 'imgCustomerTypeMaster1', 'frmPOSCustomerTypeMaster.html', 'CustomerTypeMaster'),
	('frmDailyCollectionReport', 'Daily Collection Report', 'R', 'imgDailyCollectionReport', 110, 'imgDailyCollectionReport1', 'frmPOSDailyCollectionReport.html', 'Daily Collection Report'),
	('frmDailySalesReport', 'Daily Sales Report', 'R', 'imgDailySalesReport', 111, 'imgDailySalesReport1', 'frmPOSDailySalesReport.html', 'Daily Sales Report'),
	('frmDayEndFlash', 'Day End Flash', 'R', 'imgDayEndFlash', 49, 'imgDayEndFlash1', 'frmPOSDayEndFlash.html', 'Day End Flash'),
	('frmDayEndProcess', 'Day End', 'T', 'imgDayEnd', 20, 'imgDayEnd1', 'frmPOSDayEndProcess.html', 'Day End'),
	('frmDayEndWithoutDetails', 'DayEndWithoutDetails', 'T', 'imgDayEndwithoutDetails', 80, 'imgDayEndwithoutDetails1', 'frmPOSDayEndWithoutDetails.html', 'Blank Day End'),
	('frmDayWiseSalesSummaryFlash', 'DayWiseSalesSummaryFlash', 'R', 'imgDayWiseSalesSummary', 130, 'imgDayWiseSalesSummary1', 'frmPOSDayWiseSalesSummaryFlash.html', 'DayWiseSalesSummaryFlash'),
	('frmDebitCardBulkRecharge', 'Debit Card Bulk Recharge', 'T', 'imgDebitCardBulkRecharge', 213, 'imgDebitCardBulkRecharge1', 'frmDebitCardBulkRecharge.html', 'Bulk Recharge'),
	('frmDebitCardFlashReports', 'DebitCardFlashReports', 'R', 'imgDebitCardFlash', 66, 'imgDebitCardFlash1', 'frmPOSDebitCardFlashReports.html', 'DebitCardFlashReports'),
	('frmDebitCardMaster', 'DebitCardMaster', 'M', 'imgCardTypeMaster', 58, 'imgCardTypeMaster1', 'frmPOSDebitCardMaster.html', 'DebitCardMaster'),
	('frmDebtorsAsOnReport', 'Debtors As On', 'R', 'imgDebtorsAsOn', 204, 'imgDebtorsAsOn1', 'frmDebtorsAsOnReport.html', 'Debtors As On'),
	('frmDeliveryboyIncentive', 'DeliveryboyIncentive', 'R', 'imgDeliveryboyIncentive', 105, 'imgDeliveryboyIncentive1', 'frmPOSDeliveryboyIncentive.html', 'DeliveryboyIncentive'),
	('frmDeliveryBoyWiseCashTakenReport', 'Delivery Boy Wise Cash Taken', 'R', 'imgDeliveryBoyWiseCashTaken', 164, 'imgDeliveryBoyWiseCashTaken1', 'frmPOSDeliveryBoyWiseCashTaken.html', 'Delivery Boy Wise Cash Taken'),
	('frmDeliveryPersonMaster', 'Home Delivery Person', 'M', 'imgDeliveryBoy', 19, 'imgDeliveryBoy1', 'frmPOSDeliveryPersonMaster.html', 'Delivery Boy'),
	('frmDesignationMaster', 'Designation Master', 'M', 'imgDesignationMaster', 260, 'imgDesignationMaster1', 'frmDesignationMaster.html', 'Designation Master'),
	('frmDirectBiller', 'Direct Biller', 'T', 'imgDirectBiller', 28, 'imgDirectBiller1', 'frmPOSDirectBiller.html', 'Direct Biller'),
	('frmDiscountMaster', 'Discount Master', 'M', 'imgDiscountMaster', 191, 'imgDiscountMaster1', 'frmDiscountMaster.html', 'Discount Master'),
	('frmDiscountReport', 'Discount Report', 'R', 'imgDiscountReport', 89, 'imgDiscountReport1', 'frmPOSDiscountReport.html', 'Discount Report'),
	('frmExportTallyInterface', 'Export Tally Interface', 'U', 'imgExportTallyInterface', 157, 'imgExportTallyInterface1', 'frmPOSExportTallyInterface.html', 'Export Tally Interface'),
	('frmFactoryMaster', 'Factory Master', 'M', 'imgFactoryMaster', 152, 'imgFactoryMaster1', 'frmPOSFactoryMaster.html', 'Factory Master'),
	('frmFlagMaster', 'Flag Master', 'M', 'imgFlagMaster', 261, 'imgFlagMaster1', 'frmFlagMaster.html', 'Flag Master'),
	('frmFoodCosting', 'Food Costing', 'R', 'imgFoodCosting', 189, 'imgFoodCosting1', 'frmFoodCosting.html', 'Food Costing'),
	('frmGenrateMallInterfaceText', 'GenrateMallInterfaceText', 'T', 'imgGenrateMIText', 120, 'imgGenrateMIText1', 'frmPOSGenrateMallInterfaceText.html', 'GenrateMallInterfaceText'),
	('frmGiftVoucherFlash', 'Gift Voucher Flash', 'R', 'imgGiftVoucherFlash', 222, 'imgGiftVoucherFlash', 'frmGiftVoucherFlash.html', 'Gift Voucher Flash'),
	('frmGiftVoucherIssue', 'GiftVoucherIssue', 'T', 'imgGiftVoucherIssue', 78, 'imgGiftVoucherIssue1', 'frmPOSGiftVoucherIssue.html', 'GiftVoucherIssue'),
	('frmGiftVoucherMaster', 'GiftVoucherMaster', 'M', 'imgGiftVoucher', 61, 'imgGiftVoucher1', 'frmPOSGiftVoucherMaster.html', 'GiftVoucherMaster'),
	('frmGrossSalesSummary', 'Gross Sales Summary', 'R', 'imgGrossSalesSummary', 196, 'imgGrossSalesSummary1', 'frmGrossSalesSummary.html', 'Gross Sales Summary'),
	('frmGroup', 'Group', 'M', 'imgGroup', 34, 'imgGroup1', 'frmGroup.html', 'Group'),
	('frmGroupSubGroupWiseReport', 'Group-SubGroup Wise Report', 'R', 'imgGrpSubGrpWise', 90, 'imgGrpSubGrpWise1', 'frmPOSGroupSubGroupWiseReport.html', 'Group-SubGroup Wise Report'),
	('frmGroupWiseReport', 'Group Wise Report', 'R', 'imgGroupWiseReport', 13, 'imgGroupWiseReport1', 'frmPOSGroupWiseReport.html', 'Group Wise Report'),
	('frmGuestCreditReport', 'Guest Credit Report', 'R', 'imgGuestCreditReport', 114, 'imgGuestCreditReport1', 'frmPOSGuestCreditReport.html', 'Guest Credit Report'),
	('frmHourlyItemWiseReport', 'Hourly Item Wise Report', 'R', 'imgHourlyItemWise', 215, 'imgHourlyItemWise1', 'frmHourlyItemWiseReport.html', 'Hourly Item Wise Report'),
	('frmImportDatabase', 'Import Database', 'T', 'imgImportDatabase', 128, 'imgImportDatabase1', 'frmPOSImportDatabase.html', 'Import Database'),
	('frmImportExcelFile', 'ImportExcel', 'T', 'imgImportData', 74, 'imgImportData1', 'frmPOSImportExcelFile.html', 'Import Export Master'),
	('frmItemMasterListingReport', 'Item Master Listing Report', 'R', 'imgItemMasterListingReport', 154, 'imgItemMasterListingReport1', 'frmPOSItemMasterListingReport.html', 'Item Master Listing Report'),
	('frmItemModifier', 'Item Modifier', 'M', 'imgItemModifier', 27, 'imgItemModifier1', 'frmPOSItemModifier.html', 'Item Modifier'),
	('frmItemWiseConsumption', 'Item Wise Consumption', 'R', 'imgItemWiseConsumption', 137, 'imgItemWiseConsumption1', 'frmPOSItemWiseConsumption.html', 'Item Wise Consumption'),
	('frmItemWiseReport', 'Item Wise Report', 'R', 'imgItemWiseReport', 10, 'imgItemWiseReport1', 'frmPOSItemWiseReport.html', 'Item Wise Report'),
	('frmJioMoneyRefund', 'JioMoney Refund', 'T', 'imgJioMoneyRefund', 165, 'imgJioMoneyRefund1', 'frmPOSJioMoneyRefund.html', 'JioMoney Refund'),
	('frmJioMoneyTransactionFlash', 'JioMoney Transacttion Flash', 'R', 'imgJioMoneyTransactionFlash', 166, 'imgJioMoneyTransactionFlash1', 'frmPOSJioMoneyTransactionFlash.html', 'JioMoney Transacttion Flash'),
	('frmKDSBookAndProcess', 'KDSBookAndProcess', 'T', 'imgKDSBookAndProcess', 126, 'imgKDSBookAndProcess1', 'frmPOSKDSBookAndProcess.html', 'KDSBookAndProcess'),
	('frmKDSFlash', 'KDS Flash', 'R', 'imgKDSFlash', 185, 'imgKDSFlash1', 'frmKDSFlash.html', 'KDS Flash'),
	('frmKDSForKOTBookAndProcess', 'KDSForKOTBookAndProcess', 'T', 'imgKDSForKOTBookAndProcess', 153, 'imgKDSForKOTBookAndProcess1', 'frmPOSKDSForKOTBookAndProcess.html', 'KDSForKOTBookAndProcess'),
	('frmKitchenDisplaySystem', 'Kitchen System', 'T', 'imgKitchenDisplaySystem', 45, 'imgKitchenDisplaySystem1', 'frmPOSKitchenDisplaySystem.html', 'Kitchen System'),
	('frmKPS', 'Kitchen Process System', 'T', 'imgKPS', 184, 'imgKPS1', 'frmKPS.html', 'Kitchen Process System'),
	('frmLinkupMaster', 'Linkup Master', 'M', 'imgLinkupMaster', 155, 'imgLinkupMaster1', 'frmPOSLinkupMaster.html', 'Linkup Master'),
	('frmListBillOrderReport', 'List Bill Order Report', 'R', 'imgListBillReport', 258, 'imgListBillReport1', 'frmPOSListBillOrderReport.html', 'List Bill Order Report'),
	('frmLoyaltyPointMaster', 'LoyaltyPoints', 'M', 'imgLoyaltyMaster', 75, 'imgLoyaltyMaster1', 'frmPOSLoyaltyPointMaster.html', 'LoyaltyPoints'),
	('frmLoyaltyPointReport', 'Loyalty Point Report', 'R', 'imgLoyaltyPointReport', 91, 'imgLoyaltyPointReport1', 'frmPOSLoyaltyPointReport.html', 'Loyalty Point Report'),
	('frmMailDayEndReports', 'Mail Day End Reports', 'R', 'imgMailDayEndReports', 167, 'imgMailDayEndReports1', 'frmPOSMailDayEndReports.html', 'Mail Day End Reports'),
	('frmMakeBill', 'Make Bill', 'T', 'imgMakeBill', 29, 'imgMakeBill1', 'frmPOSMakeBill.html', 'Make Bill'),
	('frmManagersReport', 'Managers Report', 'R', 'imgManagersReport', 136, 'imgManagersReport1', 'frmPOSManagersReport.html', 'Managers Report'),
	('frmManagerSummaryFlash', 'Manager Summary Flash', 'R', 'imgManagersSummaryReport', 158, 'imgManagersSummaryReport1', 'frmManagerSummaryFlash.html', 'Manager Summary Flash'),
	('frmMenuHead', 'Menu Head', 'M', 'imgMenuHead', 38, 'imgMenuHead1', 'frmPOSMenuHead.html', 'Menu Head'),
	('frmMenuHeadWiseReport', 'Menu Head Wise', 'R', 'imgMenuHeadWiseReport', 100, 'imgMenuHeadWiseReport1', 'frmPOSMenuHeadWiseReport.html', 'Menu Head Wise'),
	('frmMenuItem', 'Menu Item', 'M', 'imgMenuItem', 23, 'imgMenuItem1', 'frmPOSMenuItem.html', 'Menu Item'),
	('frmMiniMakeKOT', 'Mini Make KOT', 'T', 'imgminimakekot', 182, 'imgminimakekot1', 'frmMiniMakeKOT.html', 'Mini Make KOT'),
	('frmModifierGroupMaster', 'ModifierGroupMaster', 'M', 'imgModifierGroupMaster', 77, 'imgModifierGroupMaster1', 'frmPOSModifierGroupMaster.html', 'ModifierGroupMaster'),
	('frmModifyBill', 'Modify Bill', 'T', 'imgModifyBill', 25, 'imgModifyBill1', 'frmPOSModifyBill.html', 'Modify Bill'),
	('frmMoveItemsToTable', 'Move Items To Table', 'T', 'imgMoveItemsToTable', 202, 'imgMoveItemsToTable1', 'frmMoveItemsToTable.html', 'Move Items To Table'),
	('frmMoveKOT', 'Move KOT', 'T', 'imgMoveKOT', 62, 'imgMoveKOT1', 'frmPOSMoveKOT.html', 'Move KOT'),
	('frmMoveKOTItemToTable', 'Move KOT Items', 'T', 'imgMoveKOTItemsToTable', 149, 'imgMoveKOTItemsToTable1', 'frmPOSMoveKOTItemToTable.html', 'Move KOT Items To Table'),
	('frmMoveTable', 'Move Table', 'T', 'imgMoveTable', 53, 'imgMoveTable1', 'frmPOSMoveTable.html', 'Move Table'),
	('frmMultiBillSettle', 'Multi Bill Settle', 'T', 'imgMultiBillSettle', 162, 'imgMultiBillSettle1', 'frmPOSMultiBillSettle.html', 'Multi Bill Settle'),
	('frmMultiChangeSettlement', 'Multi Change Settlement', 'T', 'imgMutliChangeSettlement', 121, 'imgMutliChangeSettlement1', 'frmMultiChangeSettlement.html', 'Multi Change Settlement'),
	('frmMultiCostCenterKDS', 'MultiCostCenterKDS', 'T', 'imgMultiCostCenterKDS', 82, 'imgMultiCostCenterKDS1', 'frmPOSMultiCostCenterKDS.html', 'MultiCostCenterKDS'),
	('frmMultipleCreditBillReceipt', 'Multiple Credit Bill Receipt', 'T', 'imgMultiBillReceipt', 202, 'imgMultiBillReceipt1', 'frmMultipleCreditBillReceipt.html', 'Multiple Bill Receipt'),
	('frmNCKOT', 'NCKOT', 'T', 'imgNCKOT', 125, 'imgNCKOT1', 'frmPOSNCKOT.html', 'NCKOT'),
	('frmNonAvailableItems', 'Non Available Items', 'T', 'imgNonAvailableItem', 170, 'imgNonAvailableItem1', 'frmPOSNonAvailableItems.html', 'Non Available Items'),
	('frmNonChargableSettlementReport', 'Non Chargable KOT Report', 'R', 'imgNonChargableKOTReport', 95, 'imgNonChargableKOTReport1', 'frmPOSNonChargableSettlementReport.html', 'Non Chargable KOT Report'),
	('frmNonSellingItems', 'Non Selling Items', 'R', 'imgNonSellingItems', 201, 'imgNonSellingItems1', 'frmNonSellingItems.html', 'Non Selling Items'),
	('frmNotificationMaster', 'Notification Master', 'M', 'imgNotificationMaster', 208, 'imgNotificationMaster1', 'frmPOSNotificationMaster.html', 'Notification Master'),
	('frmOccasionMaster', 'Occasion Master', 'M', 'imgOccasionMaster', 262, 'imgOccasionMaster1', 'frmOccasionMaster.html', 'Occasion Master'),
	('frmOpenIteWiseAuditReport', 'Open Item Wise Audit Report', 'R', 'imgOpenItemWiseAuditReport', 197, 'imgOpenItemWiseAuditReport1', 'frmOpenItemWiseAuditReport.html', 'Open Item Wise Audit Report'),
	('frmOperatorWiseReport', 'OperatorWise Report', 'R', 'imgOperatorWiseReport', 15, 'imgOperatorWiseReport1', 'frmPOSOperatorWiseReport.html', 'OperatorWise Report'),
	('frmOrderAnalysisReport', 'Order Analysis Report', 'R', 'imgOrderAnalysisReport', 96, 'imgOrderAnalysisReport1', 'frmPOSOrderAnalysisReport.html', 'Order Analysis Report'),
	('frmOrderMaster', 'Order Master', 'M', 'imgOrderMaster', 138, 'imgOrderMaster1', 'frmPOSOrderMaster.html', 'Order Master'),
	('frmPaymentInterfaceMaster', 'Payment Interface Master', 'M', 'imgPaymentInterfaceMaster', 193, 'imgPaymentInterfaceMaster1', 'frmPaymentInterfaceMaster.html', 'Payment Interface Master'),
	('frmPaymentReceiptReport', 'Payment Receipt Report', 'R', 'imgPaymentReceiptReport', 205, 'imgPaymentReceiptReport1', 'frmPaymentReceiptReport.html', 'Payment Receipt Report'),
	('frmPhysicalStkPosting', 'Physical Stock Posting', 'T', 'imgPhysicalStockPosting', 21, 'imgPhysicalStockPosting1', 'frmPOSPhysicalStkPosting.html', 'Physical Stock Posting'),
	('frmPhysicalStockFlash', 'PhysicalStockFlash', 'R', 'imgPhysicalStockPosting', 147, 'imgPhysicalStockPosting1', 'frmPOSPhysicalStockFlash.html', 'PhysicalStockFlash'),
	('frmPlacedOrderReport', 'Placed Order Report', 'R', 'imgPlacedOrderReport', 142, 'imgPlacedOrderReport1', 'frmPOSPlacedOrderReport.html', 'Placed Order Report'),
	('frmPlaceOrder', 'Place Order', 'T', 'imgPlaceOrder', 133, 'imgPlaceOrder1', 'frmPOSPlaceOrder.html', 'Place Order'),
	('frmPlayZonePricingMaster', 'PlayZone Pricing Master', 'M', 'imgPlayZonePricingMaster', 194, 'imgPlayZonePricingMaster1', 'frmPlayZonePricingMaster.html', 'PlayZone Pricing Master'),
	('frmPOSComparisonwiseDashboard', 'Comparisonwise Dashboard', 'R', 'imgComparisonwiseDashboard', 174, 'imgComparisonwiseDashboard1', 'frmPOSComparisonwiseDashboard.html', 'Comparisonwise Dashboard'),
	('frmPOSDashboard', 'Dashboard', 'R', 'imgDashboard', 172, 'imgDashboard1', 'frmPOSDashboard.html', 'Dashboard'),
	('frmPosMaster', 'POS Master', 'M', 'imgPOSMaster', 5, 'imgPOSMaster1', 'frmPosMaster.html', 'POS Master'),
	('frmPOSSaleVSPurchase', 'SaleVSPurchase', 'R', 'imgSaleVSPurchase', 173, 'imgSaleVSPurchase1', 'frmPOSSaleVSPurchase.html', 'SaleVSPurchase'),
	('frmPostDataToHO', 'Post Sale Data', 'T', 'imgPostPOSDataToHO', 83, 'imgPostPOSDataToHO1', 'frmPostDataToHO.html', 'Post Sale Data'),
	('frmPostingReport', 'Posting Report', 'R', 'imgPostingReport', 141, 'imgPostingReport1', 'frmPOSPostingReport.html', 'Posting Report'),
	('frmPostPOSDataToCMS', 'Post POS Data To CMS', 'T', 'imgPostPOSDataToCMS', 98, 'imgPostPOSDataToCMS1', 'frmPostPOSDataToCMS.html', 'Post POS Data To CMS'),
	('frmPostPOSSalesDataToExcise', 'PostPOSSalesDataToExcise', 'T', 'imgPostPOSSalesDataToExcise', 160, 'imgPostPOSSalesDataToExcise1', 'frmPOSPostPOSSalesDataToExcise.html', 'PostPOSSalesDataToExcise'),
	('frmPostPOSSalesDataToMMS', 'PostPOSSalesDataToMMS', 'T', 'imgPostPOSSalesDataToMMS', 117, 'imgPostPOSSalesDataToMMS1', 'frmPOSPostPOSSalesDataToMMS.html', 'PostPOSSalesDataToMMS'),
	('frmPOSWiseItemIncentive', 'Item Wise Incentives', 'M', 'imgPOSWiseItemIncentive', 150, 'imgPOSWiseItemIncentive1', 'frmPOSWiseItemIncentive.html', 'Item Wise Incentives'),
	('frmPOSWiseSalesComparison', 'POS Wise Sales', 'R', 'imgPOSWiseSales', 107, 'imgPOSWiseSales1', 'frmPOSWiseSalesComparison.html', 'POS Wise Sales'),
	('frmPrice', 'Price Menu', 'M', 'imgPriceMenu', 4, 'imgPriceMenu1', 'frmPOSPrice.html', 'Price Menu'),
	('frmPrinterSetup', 'Printer Setup', 'M', 'imgPrinterSetup', 207, 'imgPrinterSetup1', 'frmPrinterSetup.html', 'Printer Setup'),
	('frmPromationFlash', 'Promotion Flash', 'R', 'imgPromotionReport', 87, 'imgPromotionReport1', 'frmPOSPromationFlash.html', 'Promotion Flash'),
	('frmPromationMaster', 'Promotion Master', 'M', 'imgPromotionMaster', 81, 'imgPromotionMaster1', 'frmPOSPromationMaster.html', 'Promotion Master'),
	('frmPromotionGroupMaster', 'Promotion Group Master', 'M', 'imgPromotionGroupMaster', 178, 'imgPromotionGroupMaster1', 'frmPromotionGroupMaster.html', 'Promotion Group Master'),
	('frmPromotionMasterReport', 'Promotion Master Report', 'R', 'imgBilling', 259, 'imgBilling1', 'frmPromotionMasterReport.html', 'Promotion Master Report'),
	('frmPropertySetup', 'Property Setup', 'U', 'imgPropertySetup', 8, 'imgPropertySetup1', 'frmPOSPropertySetup.html', 'Property Setup'),
	('frmPullOrder', 'Pull Order', 'T', 'imgPullOrder', 134, 'imgPullOrder1', 'frmPOSPullOrder.html', 'Pull Order'),
	('frmPurchaseOrder', 'Purchase Order', 'T', 'imgPurchaseOrder', 181, 'imgPurchaseOrder1', 'frmPurchaseOrder.html', 'Purchase Order'),
	('frmPurchaseOrderReport', 'Purchase Order Report', 'R', 'imgPurchaseOrder', 183, 'imgPurchaseOrder1', 'frmPurchaseOrderReport.html', 'Purchase Order Report'),
	('frmRatingMaster', 'Rating Master', 'M', 'imgRatingMaster', 263, 'imgRatingMaster1', 'frmRatingMaster.html', 'Rating Master'),
	('frmReasonGroupMaster', 'Reason Group Master', 'M', 'imgReasonGroup', 223, 'imgReasonGroup1', 'frmReasonGroupMaster.html', 'Reason Group Master'),
	('frmReasonMaster', 'Reason Master', 'M', 'imgReasonMaster', 18, 'imgReasonMaster1', 'frmPOSReasonMaster.html', 'Reason Master'),
	('frmReasonSubGroupMaster', 'Reason SubGroup Master', 'M', 'imgReasonSubGrp', 223, 'imgReasonSubGrp1', 'frmReasonSubGroupMaster.html', 'Reason SubGroup Master'),
	('frmRechargeDebitCard', 'RechargeDebitCard', 'T', 'imgRechargeCard', 60, 'imgRechargeCard1', 'frmPOSRechargeDebitCard.html', 'RechargeDebitCard'),
	('frmRecipeMaster', 'RecipeMaster', 'M', 'imgRecipeMaster', 79, 'imgRecipeMaster1', 'frmPOSRecipeMaster.html', 'RecipeMaster'),
	('frmRegisterDebitCard', 'DebitCardRegister', 'M', 'imgRegisterDebitCard', 59, 'imgRegisterDebitCard1', 'frmPOSRegisterDebitCard.html', 'DebitCardRegister'),
	('frmRegisterInOutPlayZone', 'RegisterInOutPlayZone', 'T', 'imgRegisterInOutPlayZone', 208, 'imgRegisterInOutPlayZone1', 'frmRegisterInOutPlayZone.html', 'RegisterInOutPlayZone'),
	('frmReOrderTime', 'ReOrderTime', 'M', 'imgReorderTime', 72, 'imgReorderTime1', 'frmPOSReOrderTime.html', 'ReOrderTime'),
	('frmReportingGroup', 'Reporting Group', 'M', 'imgReportingGroup', 220, 'imgReportingGroup', 'frmReportingGroup.html', 'Reporting Group'),
	('frmReprint', 'Reprint', 'T', 'imgReprintDocs', 50, 'imgReprintDocs1', 'frmPOSReprint.html', 'Reprint Documents'),
	('frmReprintDocsReport', 'Reprint Docs Report', 'R', 'imgReprintDocsReport', 148, 'imgReprintDocsReport1', 'frmPOSReprintDocsReport.html', 'Reprint Docs Report'),
	('frmRestaurantBill', 'Make KOT', 'T', 'imgMakeKOT', 26, 'imgMakeKOT1', 'frmPOSRestaurantBill.html', 'Make KOT'),
	('frmRestaurantDtl', 'SettleBill', 'T', 'imgSettleBill', 42, 'imgSettleBill1', 'frmPOSRestaurantDtl.html', 'SettleBill'),
	('frmRevenueHeadWiseItemSalesReport', 'Revenue Head Wise Item Sales', 'R', 'imgRevenueHeadWiseItemSales', 132, 'imgRevenueHeadWiseItemSales1', 'frmPOSRevenueHeadWiseItemSalesReport.html', 'Revenue Head Wise Item Sales'),
	('frmReverseSplitBill', 'Reverse Split Bill', 'T', 'imgReverseSplitBill', 267, 'imgReverseSplitBill1', 'frmReverseSplitBill.html', 'Reverse Split Bill'),
	('frmSalesReport', 'Sales Report', 'U', 'imgSalesReport', 6, 'imgSalesReport1', 'frmPOSSalesReport.html', 'Sales Report'),
	('frmSalesSummaryFlash', 'Sales Summary Flash', 'R', 'imgSalesSummaryFlash', 106, 'imgSalesSummaryFlash1', 'frmPOSSalesSummaryFlash.html', 'Sales Summary Flash'),
	('frmSalesSummaryFlash2', 'Sales Summary Flash 2', 'R', 'imgSalesSummaryFlash2', 257, 'imgSalesSummaryFlash21', 'frmSalesSummaryFlash2.html', 'Sales Summary Flash 2'),
	('frmScanQR', 'Scan QR', 'T', 'imgScanQR', 270, 'imgScanQR1', 'frmScanQR.html', 'Scan QR'),
	('frmSendBulkSMS', 'SendBulkSMS', 'T', 'imgSendBulkSMS', 121, 'imgSendBulkSMS1', 'frmPOSSendBulkSMS.html', 'SendBulkSMS'),
	('frmSettlement', 'Settlement', 'M', 'imgSettlement', 3, 'imgSettlement1', 'frmPOSSettlement.html', 'Settlement'),
	('frmSettlementWiseGroupWiseBreakup', 'Settlement Wise Group Wise Breakup', 'R', 'imgSettlementWiseGroupWiseBreakup', 177, 'imgSettlementWiseGroupWiseBreakup1', 'frmSettlementWiseGroupWiseBreakup.html', 'Settlement Wise Group Wise Breakup'),
	('frmSettlementWiseReport', 'SettlementWise Report', 'R', 'imgSettlementWiseReport', 16, 'imgSettlementWiseReport1', 'frmPOSSettlementWiseReport.html', 'SettlementWise Report'),
	('frmShiftEndProcessConsolidate', 'ShiftEndProcessConsolidate', 'T', 'imgDayEndConsolidate', 118, 'imgDayEndConsolidate1', 'frmPOSShiftEndProcessConsolidate.html', 'Consolidate Day End'),
	('frmShiftMaster', 'Shift Master', 'M', 'imgShiftMaster', 56, 'imgShiftMaster1', 'frmPOSShiftMaster.html', 'Shift Master'),
	('frmShiftWiseSalesSummaryFlash', 'Shift Wise Sales Summary Flash', 'R', 'imgShiftWiseSalesReportSummaryFlash', 213, 'imgShiftWiseSalesReportSummaryFlash1', 'frmShiftWiseSalesSummaryFlash.html', 'Shift Wise Sales Summary Flash'),
	('frmShortcutKeySetup', 'Shortcut Key Setup', 'U', 'imgShortcutKeySetup', 113, 'imgShortcutKeySetup1', 'frmPOSShortcutKeySetup.html', 'Shortcut Key Setup'),
	('frmShowCard', 'ShowCard', 'T', 'imgShowCard', 122, 'imgShowCard1', 'frmPOSShowCard.html', 'ShowCard'),
	('frmSplitBill', 'SplitBill', 'T', 'imgSplitBill', 69, 'imgSplitBill1', 'frmPOSSplitBill.html', 'SplitBill'),
	('frmSplitBillHistoryReport', 'Split Bill History Report', 'R', 'imgSplitbillHistoryReport', 268, 'imgSplitbillHistoryReport1', 'frmPOSSplitBillHistoryReport.html', 'Split Bill History Report'),
	('frmStaffAttendance', 'Staff Attendance', 'T', 'imgStaffAttendance', 219, 'imgStaffAttendance', 'frmStaffAttendance.html', 'Staff Attendance'),
	('frmStatistics', 'Statistics', 'T', 'imgStatistics', 109, 'imgStatistics1', 'frmPOSStatistics.html', 'Statistics'),
	('frmStkAdjustment', 'Stock Adujstment', 'T', 'imgStockAdjustment', 40, 'imgStockAdjustment1', 'frmPOSStkAdjustment.html', 'Stock Adujstment'),
	('frmStkIn', 'Stock In', 'T', 'imgStockIn', 1, 'imgStockIn1', 'frmPOSStkIn.html', 'Stock In'),
	('frmStkInOutFlash', 'Stock In Out Flash', 'R', 'imgStockInOutFlash', 48, 'imgStockInOutFlash1', 'frmPOSStkInOutFlash.html', 'Stock In Out Flash'),
	('frmStkOut', 'Stock Out', 'T', 'imgStockOut', 2, 'imgStockOut1', 'frmPOSStkOut.html', 'Stock Out'),
	('frmStockFlashReport', 'Stock Flash Report', 'U', 'imgStockFlashReport', 17, 'imgStockFlashReport1', 'frmPOSStockFlashReport.html', 'Stock Flash Report'),
	('frmSubGroup', 'SubGroup', 'M', 'imgSubGroup', 35, 'imgSubGroup1', 'frmPOSSubGroup.html', 'SubGroup'),
	('frmSubGroupWiseReport', 'SubGroupWise Report', 'R', 'imgSubGroupWiseReport', 14, 'imgSubGroupWiseReport1', 'frmPOSSubGroupWiseReport.html', 'SubGroupWise Report'),
	('frmSubGroupWiseSummaryReport', 'SubGroupWiseSummaryReport', 'R', 'imgSubGroupWiseSummaryReport', 123, 'imgSubGroupWiseSummaryReport1', 'frmPOSSubGroupWiseSummaryReport.html', 'SubGroupWiseSummaryReport'),
	('frmSupplierMaster', 'Supplier Master', 'M', 'imgSupplierMaster', 180, 'imgSupplierMaster1', 'frmSupplierMaster.html', 'Supplier Master'),
	('frmSyncDataToQRMenu', 'Synchronize Data To QRMenu', 'M', 'imgSyncQRMenu', 218, 'imgSyncQRMenu', 'frmSyncDataToQRMenu.html', 'Sync Data To QRMenu'),
	('frmTableMaster', 'Table Master', 'M', 'imgTableMaster', 37, 'imgTableMaster1', 'frmPOSTableMaster.html', 'Table Master'),
	('frmTableReservation', 'Table Reservation', 'T', 'imgTableReservation', 108, 'imgTableReservation1', 'frmPOSTableReservation.html', 'Table Reservation'),
	('frmTableStatusReport', 'TableStatusReport', 'T', 'imgTableStatusReport', 70, 'imgTableStatusReport1', 'frmPOSTableStatusReport.html', 'TableStatusReport'),
	('frmTableWisePaxReport', 'Table Wise Pax Report', 'R', 'imgTableWisePaxReport', 140, 'imgTableWisePaxReport1', 'frmPOSTableWisePaxReport.html', 'Table Wise Pax Report'),
	('frmTakeAway', 'Take Away', 'T', 'imgTakeAway', 129, 'imgTakeAway1', 'frmPOSTakeAway.html', 'Take Away'),
	('frmTallyLinkupMaster', 'Tally Linkup Master', 'M', 'imgTallyLinkupMaster', 156, 'imgTallyLinkupMaster1', 'frmPOSTallyLinkupMaster.html', 'Tally Linkup Master'),
	('frmTaxMaster', 'Tax Master', 'M', 'imgTaxMaster', 36, 'imgTaxMaster1', 'frmPOSTaxMaster.html', 'Tax Master'),
	('frmTaxRegeneration', 'Tax Regeneration', 'T', 'imgTaxReGeneration', 92, 'imgTaxReGeneration1', 'frmPOSTaxRegeneration.html', 'Tax Regeneration'),
	('frmTaxWiseReport', 'Tax Wise Report', 'R', 'imgTaxWiseReport', 41, 'imgTaxWiseReport1', 'frmPOSTaxWiseReport.html', 'Tax Wise Report'),
	('frmTDH', 'TDH', 'M', 'imgTDH', 67, 'imgTDH1', 'frmPOSTDH.html', 'TDH'),
	('frmTDHSalesSummaryReport', 'TDH Sales Summary Report', 'R', 'imgTDHSalesSummaryReport', 269, 'imgTDHSalesSummaryReport1', 'frmPOSTDHSalesSummaryReport', 'TDH Sales Summary Report'),
	('frmTools', 'Tools', 'U', 'imgTools', 57, 'imgTools1', 'frmPOSTools.html', 'Tools'),
	('frmTransactionSummaryFlash', 'Transaction Summary Flash', 'R', 'imgTransactionSummary', 225, 'imgTransactionSummary1', 'frmTransactionSummaryFlash.html', 'Transaction Summary Flash'),
	('frmUnlockTable', 'Unlock Table', 'T', 'imgUnlockTable', 190, 'imgUnlockTable1', 'frmUnlockTable.html', 'Unlock Table'),
	('frmUnsettleBill', 'Unsettle Bill', 'T', 'imgUnsettleBill', 55, 'imgUnsettleBill1', 'frmUnsettleBill.html', 'Unsettle Bill'),
	('frmUnusedCardBalanceReport', 'UnusedCardBalanceReport', 'R', 'imgUnusedCardBalance', 127, 'imgUnusedCardBalance1', 'frmPOSUnusedCardBalanceReport.html', 'UnusedCardBalanceReport'),
	('frmUomMaster', 'UOM Master', 'M', 'imgUomMaster', 188, 'imgUomMaster1', 'frmUomMaster.html', 'UOM Master'),
	('frmUpdatePOSDate', 'Change POS Date', 'T', 'imgUpdatePOSDate', 216, 'imgUpdatePOSDate', 'frmUpdatePOSDate.html', 'Update POS Date'),
	('frmUserCardSwipe', 'UserCardSwipe', 'M', 'imgUserCards', 115, 'imgUserCards1', 'frmPOSUserCardSwipe.html', 'UserCardSwipe'),
	('frmUserGroupRights', 'User Group Rights', 'M', 'imgUserGroupRights', 186, 'imgUserGroupRights1', 'frmUserGroupRights.html', 'User Group Rights'),
	('frmUserItemWiseSalesReport', 'User Item Wise Sales Report', 'R', 'imgUserItemWise', 214, 'imgUserItemWise1', 'frmUserItemWiseSalesReport.html', 'User Item Wise Sales Report'),
	('frmUserMasterListing', 'User Master Listing Report', 'R', 'imgUserMasterListing', 221, 'imgUserMasterListing', 'frmUserMasterListing.html', 'User Master Listing Report'),
	('frmUserRegistration', 'User Registration', 'M', 'imgUserRegistration', 7, 'imgUserRegistration1', 'frmPOSUserRegistration.html', 'User Registration'),
	('frmVoidAdvanceOrder', 'VoidAdvanceOrder', 'T', 'imgVoidAdvOrder', 104, 'imgVoidAdvOrder1', 'frmPOSVoidAdvanceOrder.html', 'VoidAdvanceOrder'),
	('frmVoidAdvanceOrderReport', 'Void Advance Order Report', 'R', 'imgVoidAdvanceOrderReport', 146, 'imgVoidAdvanceOrderReport1', 'frmPOSVoidAdvanceOrderReport.html', 'Void Advance Order Report'),
	('frmVoidBill', 'Void Bill', 'T', 'imgVoidBill', 12, 'imgVoidBill1', 'frmPOSVoidBill.html', 'Void Bill'),
	('frmVoidBillReport', 'Void Bill Report', 'R', 'imgVoidBillReport', 32, 'imgVoidBillReport1', 'frmPOSVoidBillReport.html', 'Void Bill Report'),
	('frmVoidKot', 'VoidKot', 'T', 'imgVoidKOT', 51, 'imgVoidKOT1', 'frmPOSVoidKot.html', 'VoidKot'),
	('frmVoidKOTReport', 'Void KOT Report', 'R', 'imgVoidKOTReport', 112, 'imgVoidKOTReport1', 'frmPOSVoidKOTReport.html', 'Void KOT Report'),
	('frmVoidNCKot', 'VoidNCKot', 'T', 'imgVoidNCKOT', 225, 'imgVoidNCKOT1', 'frmPOSVoidNCKot.html', 'VoidNCKot'),
	('frmVoidStock', 'VoidStock', 'T', 'imgVoidStock', 52, 'imgVoidStock1', 'frmPOSVoidStock.html', 'VoidStock'),
	('frmWaiterMaster', 'Waiter Master', 'M', 'imgWaiterMaster', 33, 'imgWaiterMaster1', 'frmPOSWaiterMaster.html', 'Waiter Master'),
	('frmWaiterWiseIncentiveReport', 'WaiterWiseIncentivesReport', 'R', 'imgWaiterIncentivesReports', 103, 'imgWaiterIncentivesReports1', 'frmPOSWaiterWiseIncentiveReport.html', 'WaiterWiseIncentivesReport'),
	('frmWaiterWiseItemReport', 'WaiterWiseItemReport', 'R', 'imgWaiterWiseItemReport', 102, 'imgWaiterWiseItemReport1', 'frmPOSWaiterWiseItemReport.html', 'WaiterWiseItemReport'),
	('frmWaiterWiseItemWiseIncentiveReport', 'Waiter Wise Item Wise Incentives Report', 'R', 'imgWaiterWiseItemWiseIncentivesReports', 151, 'imgWaiterWiseItemWiseIncentivesReports1', 'frmPOSWaiterWiseItemWiseIncentiveReport.html', 'Waiter Wise Item Wise Incentives Report'),
	('frmWebbookLinkUp', 'Webbook LinkUp', 'M', 'imgWebbookLinkupMaster', 256, 'imgWebbookLinkupMaster1', 'frmWebbookLinkUp.html', 'Webbook LinkUp'),
	('frmWebPOSBilling', 'Billing', 'T', 'imgBilling', 199, 'imgBilling1', 'frmWebPOSBilling.html', 'Billing'),
	('frmWeraFoodOrders', 'Wera Food Online Orders', 'T', 'imgWeraFoodOrders', 210, 'imgWeraFoodOrders1', 'frmWeraFoodOrders.html', 'Wera Food Online Orders'),
	('frmZoneMaster', 'Zone Master', 'M', 'imgZoneMaster', 101, 'imgZoneMaster1', 'frmPOSZoneMaster.html', 'Zone Master'),
	('funTaxBreakupSummaryReport', 'Tax Breakup Summary Report', 'R', 'imgTaxBreakupSummaryReport', 98, 'imgTaxBreakupSummaryReport1', 'funPOSTaxBreakupSummaryReport.html', 'Tax Breakup Summary Report'),
	('OpenItems', 'Open Items', 'AT', 'imgOpenItems', 161, 'imgOpenItems1', 'frmPOSOpenItems.html', 'Open Items');
/*!40000 ALTER TABLE `tblforms` ENABLE KEYS */;

-- Dumping structure for table infosys.tblgiftvoucher
DROP TABLE IF EXISTS `tblgiftvoucher`;
CREATE TABLE IF NOT EXISTS `tblgiftvoucher` (
  `strGiftVoucherCode` varchar(10) NOT NULL,
  `strGiftVoucherName` varchar(100) NOT NULL,
  `strGiftVoucherSeries` varchar(10) NOT NULL,
  `intGiftVoucherStartNo` int(11) NOT NULL,
  `intGiftVoucherEndNo` int(11) NOT NULL,
  `intTotalGiftVouchers` int(11) NOT NULL,
  `strGiftVoucherValueType` varchar(10) NOT NULL,
  `dblGiftVoucherValue` decimal(18,2) NOT NULL,
  `dteValidFrom` datetime NOT NULL,
  `dteValidTo` datetime NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strPOSAccess` varchar(255) NOT NULL,
  PRIMARY KEY (`strGiftVoucherCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblgiftvoucher: ~0 rows (approximately)
DELETE FROM `tblgiftvoucher`;
/*!40000 ALTER TABLE `tblgiftvoucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblgiftvoucher` ENABLE KEYS */;

-- Dumping structure for table infosys.tblgiftvoucherissue
DROP TABLE IF EXISTS `tblgiftvoucherissue`;
CREATE TABLE IF NOT EXISTS `tblgiftvoucherissue` (
  `strGiftVoucherCode` varchar(10) NOT NULL,
  `strGiftVoucherNo` varchar(10) NOT NULL,
  `strCustomerCode` varchar(15) NOT NULL,
  `dblBillAmount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblGiftVoucherAmount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strGiftVoucherIssueId` varchar(15) NOT NULL,
  `strPOSCode` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblgiftvoucherissue: ~0 rows (approximately)
DELETE FROM `tblgiftvoucherissue`;
/*!40000 ALTER TABLE `tblgiftvoucherissue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblgiftvoucherissue` ENABLE KEYS */;

-- Dumping structure for table infosys.tblgrouphd
DROP TABLE IF EXISTS `tblgrouphd`;
CREATE TABLE IF NOT EXISTS `tblgrouphd` (
  `strGroupCode` varchar(10) NOT NULL,
  `strGroupName` varchar(50) NOT NULL,
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strOperationalYN` varchar(1) NOT NULL DEFAULT 'Y',
  `strGroupShortName` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`strGroupCode`,`strClientCode`),
  KEY `intGroupCode` (`strGroupCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblgrouphd: ~1 rows (approximately)
DELETE FROM `tblgrouphd`;
/*!40000 ALTER TABLE `tblgrouphd` DISABLE KEYS */;
INSERT INTO `tblgrouphd` (`strGroupCode`, `strGroupName`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`, `strClientCode`, `strDataPostFlag`, `strOperationalYN`, `strGroupShortName`) VALUES
	('G0000001', 'FOOD', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:53', '2022-06-01 15:38:53', '412.005', 'N', 'Y', '');
/*!40000 ALTER TABLE `tblgrouphd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblhomedeldtl
DROP TABLE IF EXISTS `tblhomedeldtl`;
CREATE TABLE IF NOT EXISTS `tblhomedeldtl` (
  `strBillNo` varchar(10) NOT NULL,
  `strDPCode` varchar(10) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strSettleYN` varchar(5) NOT NULL DEFAULT 'N',
  `dblDBIncentives` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dteBillDate` datetime NOT NULL,
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblhomedeldtl: ~0 rows (approximately)
DELETE FROM `tblhomedeldtl`;
/*!40000 ALTER TABLE `tblhomedeldtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblhomedeldtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblhomedelivery
DROP TABLE IF EXISTS `tblhomedelivery`;
CREATE TABLE IF NOT EXISTS `tblhomedelivery` (
  `strBillNo` varchar(50) NOT NULL,
  `strCustomerCode` varchar(15) DEFAULT NULL,
  `strDPCode` varchar(100) NOT NULL DEFAULT '',
  `dteDate` date NOT NULL,
  `tmeTime` varchar(50) DEFAULT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `strCustAddressLine1` varchar(200) NOT NULL DEFAULT '',
  `strCustAddressLine2` varchar(200) NOT NULL DEFAULT '',
  `strCustAddressLine3` varchar(200) NOT NULL DEFAULT '',
  `strCustAddressLine4` varchar(200) NOT NULL DEFAULT '',
  `strCustCity` varchar(30) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strClientCode` varchar(15) NOT NULL,
  `dblHomeDeliCharge` double(18,2) NOT NULL DEFAULT '0.00',
  `dblLooseCashAmt` double(18,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`strBillNo`,`strClientCode`,`dteDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblhomedelivery: ~0 rows (approximately)
DELETE FROM `tblhomedelivery`;
/*!40000 ALTER TABLE `tblhomedelivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblhomedelivery` ENABLE KEYS */;

-- Dumping structure for table infosys.tblimportexcel
DROP TABLE IF EXISTS `tblimportexcel`;
CREATE TABLE IF NOT EXISTS `tblimportexcel` (
  `strItemName` varchar(100) NOT NULL,
  `strItemCode` varchar(10) NOT NULL DEFAULT '',
  `strSubMenuHeadName` varchar(30) NOT NULL DEFAULT '',
  `strSubMenuHeadCode` varchar(10) NOT NULL DEFAULT '',
  `strGroupName` varchar(50) NOT NULL,
  `strGroupCode` varchar(10) NOT NULL DEFAULT '',
  `strCostCenterName` varchar(50) NOT NULL,
  `strCostCenterCode` varchar(10) NOT NULL DEFAULT '',
  `strShortName` varchar(80) NOT NULL,
  `strMenuHeadName` varchar(50) NOT NULL,
  `strMenuHeadCode` varchar(10) NOT NULL DEFAULT '',
  `strRevenueHead` varchar(50) NOT NULL DEFAULT '',
  `strPOSName` varchar(50) NOT NULL,
  `strPOSCode` varchar(10) NOT NULL DEFAULT '',
  `strSubGroupName` varchar(50) NOT NULL,
  `strSubGroupCode` varchar(10) NOT NULL DEFAULT '',
  `strAreaName` varchar(30) NOT NULL,
  `strAreaCode` varchar(10) NOT NULL DEFAULT '',
  `dblTax` varchar(15) NOT NULL DEFAULT '0.00',
  `dblPurchaseRate` varchar(15) NOT NULL DEFAULT '0.00',
  `strExternalCode` varchar(30) NOT NULL DEFAULT '',
  `strItemDetails` varchar(200) NOT NULL DEFAULT '',
  `strItemType` varchar(30) NOT NULL DEFAULT '',
  `strApplyDiscount` varchar(3) NOT NULL DEFAULT 'N',
  `strStockInEnable` varchar(3) NOT NULL DEFAULT 'N',
  `dblPriceSunday` varchar(15) NOT NULL DEFAULT '0.00',
  `dblPriceMonday` varchar(15) NOT NULL DEFAULT '0.00',
  `dblPriceTuesday` varchar(15) NOT NULL DEFAULT '0.00',
  `dblPriceWednesday` varchar(15) NOT NULL DEFAULT '0.00',
  `dblPriceThursday` varchar(15) NOT NULL DEFAULT '0.00',
  `dblPriceFriday` varchar(15) NOT NULL DEFAULT '0.00',
  `dblPriceSaturday` varchar(15) NOT NULL DEFAULT '0.00',
  `strCounterName` varchar(50) NOT NULL DEFAULT '',
  `strCounterCode` varchar(10) NOT NULL DEFAULT '',
  `strCustName` varchar(50) NOT NULL DEFAULT '',
  `strCustCode` varchar(10) NOT NULL DEFAULT '',
  `strBuildName` varchar(100) NOT NULL DEFAULT '',
  `strBuildCode` varchar(100) NOT NULL DEFAULT '',
  `strBuildingArea` varchar(100) NOT NULL DEFAULT '',
  `strTelephoneNo` varchar(40) NOT NULL DEFAULT '',
  `strEmail` varchar(100) NOT NULL DEFAULT '',
  `strDOB` varchar(100) NOT NULL DEFAULT '',
  `strUOM` varchar(5) NOT NULL DEFAULT '',
  `strRawMaterial` varchar(5) NOT NULL DEFAULT 'N',
  `strRecipeUOM` varchar(50) NOT NULL DEFAULT '',
  `strHourlyPricing` varchar(3) NOT NULL DEFAULT 'No',
  `tmeTimeFrom` varchar(50) NOT NULL DEFAULT 'HH:MM:S',
  `tmeTimeTo` varchar(50) NOT NULL DEFAULT 'HH:MM:S',
  `strFoodType` varchar(50) NOT NULL DEFAULT '',
  KEY `strItemName` (`strItemName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblimportexcel: ~588 rows (approximately)
DELETE FROM `tblimportexcel`;
/*!40000 ALTER TABLE `tblimportexcel` DISABLE KEYS */;
INSERT INTO `tblimportexcel` (`strItemName`, `strItemCode`, `strSubMenuHeadName`, `strSubMenuHeadCode`, `strGroupName`, `strGroupCode`, `strCostCenterName`, `strCostCenterCode`, `strShortName`, `strMenuHeadName`, `strMenuHeadCode`, `strRevenueHead`, `strPOSName`, `strPOSCode`, `strSubGroupName`, `strSubGroupCode`, `strAreaName`, `strAreaCode`, `dblTax`, `dblPurchaseRate`, `strExternalCode`, `strItemDetails`, `strItemType`, `strApplyDiscount`, `strStockInEnable`, `dblPriceSunday`, `dblPriceMonday`, `dblPriceTuesday`, `dblPriceWednesday`, `dblPriceThursday`, `dblPriceFriday`, `dblPriceSaturday`, `strCounterName`, `strCounterCode`, `strCustName`, `strCustCode`, `strBuildName`, `strBuildCode`, `strBuildingArea`, `strTelephoneNo`, `strEmail`, `strDOB`, `strUOM`, `strRawMaterial`, `strRecipeUOM`, `strHourlyPricing`, `tmeTimeFrom`, `tmeTimeTo`, `strFoodType`) VALUES
	('Omlette & 2 Pcs- White Bread', 'I000001', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '36', '36', '36', '36', '36', '36', '36', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Boiled Egg- Single', 'I000002', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '10', '10', '10', '10', '10', '10', '10', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Bulls Eye & 2 Pcs - White Bread', 'I000003', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '36', '36', '36', '36', '36', '36', '36', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Egg Burji & 2 Pcs - White Bread', 'I000004', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '36', '36', '36', '36', '36', '36', '36', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Egg Burji & 1 Plain Paratha', 'I000005', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '36', '36', '36', '36', '36', '36', '36', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Omlette & 2 Pcs - Brown Bread', 'I000006', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '37', '37', '37', '37', '37', '37', '37', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Bulls Eye & 2 Pcs - Brown Bread', 'I000007', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '37', '37', '37', '37', '37', '37', '37', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Egg Burji & 2 Pcs - Brown Bread', 'I000008', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '37', '37', '37', '37', '37', '37', '37', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Butter Toast - 2 Pcs White Bread', 'I000009', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '25', '25', '25', '25', '25', '25', '25', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Butter Toast - 2 Pcs Brown Bread', 'I000010', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '25', '25', '25', '25', '25', '25', '25', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Idli - 2 Pcs & Paneer Butter Masala', 'I000011', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '68', '68', '68', '68', '68', '68', '68', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Idli - 2 Pcs & Butter Chicken', 'I000012', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Idli - 2 Pcs & Chicken Curry', 'I000013', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Idli - 2 Pcs & Veg Gravy', 'I000014', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '63', '63', '63', '63', '63', '63', '63', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Aloo & 2 Pcs Poori', 'I000015', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '54', '54', '54', '54', '54', '54', '54', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Khichdi', 'I000016', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '32', '32', '32', '32', '32', '32', '32', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Besan Chilla - 1 Pcs', 'I000017', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '32', '32', '32', '32', '32', '32', '32', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Moong Dal Chilla - 1 Pcs', 'I000018', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '32', '32', '32', '32', '32', '32', '32', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Poha- 200 Grams', 'I000019', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '37', '37', '37', '37', '37', '37', '37', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Upma- 200 Grams', 'I000020', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '25', '25', '25', '25', '25', '25', '25', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Bombay Toast - 2Pcs', 'I000021', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '32', '32', '32', '32', '32', '32', '32', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Eggy Bread - 2 Pcs', 'I000022', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '32', '32', '32', '32', '32', '32', '32', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Dal Stuffed Poori- 2 Pcs', 'I000023', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '56', '56', '56', '56', '56', '56', '56', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Dal Kachori with Aloo', 'I000024', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '44', '44', '44', '44', '44', '44', '44', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Dalia Namkeen with Veggies', 'I000025', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '56', '56', '56', '56', '56', '56', '56', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Dalia Namkeen with Chicken', 'I000026', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '82', '82', '82', '82', '82', '82', '82', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Oats Namkeen with Veggies', 'I000027', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '56', '56', '56', '56', '56', '56', '56', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Oats Namkeen with Chicken', 'I000028', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '82', '82', '82', '82', '82', '82', '82', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Bread Upma', 'I000029', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '44', '44', '44', '44', '44', '44', '44', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Black Channa & 1 Pcs Paratha', 'I000030', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '49', '49', '49', '49', '49', '49', '49', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Bhurji & 1 Pcs Paratha', 'I000031', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Bhurji & 2 Pcs Bread', 'I000032', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '56', '56', '56', '56', '56', '56', '56', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Bhurji & 2 Pcs Pav', 'I000033', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Bhurji & 1 Pcs Kulcha', 'I000034', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Keema & 2 Pcs Pav', 'I000035', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Keema & 1 Pcs Kulcha', 'I000036', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Keema & 1 Pcs Plain Paratha', 'I000037', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Keema & 2 Pcs Bread', 'I000038', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Aloo Jeera  & 1 Pcs Plain Paratha', 'I000039', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '44', '44', '44', '44', '44', '44', '44', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Sabudhan Kichdi', 'I000040', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '56', '56', '56', '56', '56', '56', '56', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Tikka Roll', 'I000041', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Malai Roll', 'I000042', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Haryali Roll', 'I000043', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Tandoori Chicken Roll', 'I000044', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Afgani Tikka Roll', 'I000045', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Sheekh Roll', 'I000046', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Butter Chicken Roll', 'I000047', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Tikka Masala Roll', 'I000048', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Tikka Masala Roll', 'I000049', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Achari Chicken Tikka Roll', 'I000050', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Kadai Veg Roll', 'I000051', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Tikka Roll', 'I000052', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Haryali Paneer Tikka Roll', 'I000053', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Malai Paneer Tikka Roll', 'I000054', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Veg Sheekh Roll', 'I000055', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Achari Paneer Tikka Roll', 'I000056', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Samosa- Aloo', 'I000057', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '17', '17', '17', '17', '17', '17', '17', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Kachori- Aloo', 'I000058', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '17', '17', '17', '17', '17', '17', '17', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Desi Fries', 'I000059', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '37', '37', '37', '37', '37', '37', '37', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Bread Pakora', 'I000060', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '56', '56', '56', '56', '56', '56', '56', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Pakora', 'I000061', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '56', '56', '56', '56', '56', '56', '56', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mix Veg Pakora', 'I000062', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '49', '49', '49', '49', '49', '49', '49', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Onion Pakora', 'I000063', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '49', '49', '49', '49', '49', '49', '49', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Plain Bread Pakora', 'I000064', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '36', '36', '36', '36', '36', '36', '36', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Plain Tea', 'I000065', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '11', '11', '11', '11', '11', '11', '11', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Masala Tea', 'I000066', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '12', '12', '12', '12', '12', '12', '12', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Green Tea', 'I000067', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '15', '15', '15', '15', '15', '15', '15', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Lemon Tea', 'I000068', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '13', '13', '13', '13', '13', '13', '13', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Black Tea', 'I000069', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '11', '11', '11', '11', '11', '11', '11', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Black Coffee', 'I000070', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '11', '11', '11', '11', '11', '11', '11', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Plain Coffee', 'I000071', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '11', '11', '11', '11', '11', '11', '11', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Nescafe Vanilla Latte', 'I000072', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '44', '44', '44', '44', '44', '44', '44', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Nescafe Hazelnut Latte', 'I000073', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '44', '44', '44', '44', '44', '44', '44', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Caramel Latte', 'I000074', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '44', '44', '44', '44', '44', '44', '44', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Pav Samosa', 'I000075', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '25', '25', '25', '25', '25', '25', '25', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Bun Samosa', 'I000076', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '25', '25', '25', '25', '25', '25', '25', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Samosa Sandwich', 'I000077', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '25', '25', '25', '25', '25', '25', '25', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chole & 2 Pcs Kulcha', 'I000078', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '68', '68', '68', '68', '68', '68', '68', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Hyderabadi Bun Kabab- Chicken', 'I000079', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '56', '56', '56', '56', '56', '56', '56', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Dum Biryani', 'I000080', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '115', '115', '115', '115', '115', '115', '115', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Hyderabadi Chicken Dum Biryani', 'I000081', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '115', '115', '115', '115', '115', '115', '115', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mughlai Chicken Dum Biryani', 'I000082', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '115', '115', '115', '115', '115', '115', '115', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Kashmiri Chicken Dum Biryani', 'I000083', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '115', '115', '115', '115', '115', '115', '115', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Butter Chicken Dum Biryani', 'I000084', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '115', '115', '115', '115', '115', '115', '115', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Butter Chicken Pulao', 'I000085', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '115', '115', '115', '115', '115', '115', '115', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Lucknowi Chicken Dum Biryani', 'I000086', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '115', '115', '115', '115', '115', '115', '115', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Nawabi Chicken Dum Biryani', 'I000087', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '115', '115', '115', '115', '115', '115', '115', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Awadhi Chicken Dum Biryani', 'I000088', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '115', '115', '115', '115', '115', '115', '115', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Malabar Chicken Dum Biryani', 'I000089', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '115', '115', '115', '115', '115', '115', '115', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Bawarchi Chicken Dum Biryani', 'I000090', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '115', '115', '115', '115', '115', '115', '115', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Calicut Chicken Biryani', 'I000091', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '115', '115', '115', '115', '115', '115', '115', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Tikka Dum Biryani', 'I000092', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '115', '115', '115', '115', '115', '115', '115', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Punjabi Dum Biryani', 'I000093', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '115', '115', '115', '115', '115', '115', '115', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mutton Dum Biryani', 'I000094', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '147', '147', '147', '147', '147', '147', '147', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Egg Dum Biryani', 'I000095', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '92', '92', '92', '92', '92', '92', '92', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Makhani Dum Biryani', 'I000096', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('SEP Chicken Dum Biryani', 'I000097', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '118', '118', '118', '118', '118', '118', '118', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Palak Paneer Dum Biryani', 'I000098', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Tikka Dum Biryani', 'I000099', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Tandoori Chicken Dum Biryani', 'I000100', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '118', '118', '118', '118', '118', '118', '118', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Veg & Paneer Dum Biryani', 'I000101', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Biryani', 'M000002', 'FOOD', 'Demo', 'P01', 'Biryani', 'SG0000002', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Kadhi Chawal', 'I000102', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Solo Meal', 'M000003', 'FOOD', 'Demo', 'P01', 'Solo Meal', 'SG0000003', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '85', '85', '85', '85', '85', '85', '85', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Rajma Chawal', 'I000103', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Solo Meal', 'M000003', 'FOOD', 'Demo', 'P01', 'Solo Meal', 'SG0000003', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '85', '85', '85', '85', '85', '85', '85', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chole Chawal', 'I000104', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Solo Meal', 'M000003', 'FOOD', 'Demo', 'P01', 'Solo Meal', 'SG0000003', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '85', '85', '85', '85', '85', '85', '85', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Dal Tadka Chawal', 'I000105', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Solo Meal', 'M000003', 'FOOD', 'Demo', 'P01', 'Solo Meal', 'SG0000003', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '85', '85', '85', '85', '85', '85', '85', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Dal Makhani Chawal', 'I000106', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Solo Meal', 'M000003', 'FOOD', 'Demo', 'P01', 'Solo Meal', 'SG0000003', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '67', '67', '67', '67', '67', '67', '67', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Makhani Chawal', 'I000107', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Solo Meal', 'M000003', 'FOOD', 'Demo', 'P01', 'Solo Meal', 'SG0000003', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '97', '97', '97', '97', '97', '97', '97', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Butter Chicken Rice', 'I000108', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Solo Meal', 'M000003', 'FOOD', 'Demo', 'P01', 'Solo Meal', 'SG0000003', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '103', '103', '103', '103', '103', '103', '103', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Chawal', 'I000109', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Solo Meal', 'M000003', 'FOOD', 'Demo', 'P01', 'Solo Meal', 'SG0000003', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '97', '97', '97', '97', '97', '97', '97', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Palak Paneer & Rice', 'I000110', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Solo Meal', 'M000003', 'FOOD', 'Demo', 'P01', 'Solo Meal', 'SG0000003', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '97', '97', '97', '97', '97', '97', '97', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Matar Paneer & Rice', 'I000111', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Solo Meal', 'M000003', 'FOOD', 'Demo', 'P01', 'Solo Meal', 'SG0000003', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '97', '97', '97', '97', '97', '97', '97', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Egg Curry & Rice', 'I000112', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Solo Meal', 'M000003', 'FOOD', 'Demo', 'P01', 'Solo Meal', 'SG0000003', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '100', '100', '100', '100', '100', '100', '100', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Dal Tadka Roti', 'I000113', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Solo Meal', 'M000003', 'FOOD', 'Demo', 'P01', 'Solo Meal', 'SG0000003', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '62', '62', '62', '62', '62', '62', '62', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Dal Makhani Roti', 'I000114', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Solo Meal', 'M000003', 'FOOD', 'Demo', 'P01', 'Solo Meal', 'SG0000003', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '62', '62', '62', '62', '62', '62', '62', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Rajma & Roti', 'I000115', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Solo Meal', 'M000003', 'FOOD', 'Demo', 'P01', 'Solo Meal', 'SG0000003', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '74', '74', '74', '74', '74', '74', '74', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chole &  Roti', 'I000116', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Solo Meal', 'M000003', 'FOOD', 'Demo', 'P01', 'Solo Meal', 'SG0000003', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '74', '74', '74', '74', '74', '74', '74', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Kadhi Pakora & Roti', 'I000117', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Solo Meal', 'M000003', 'FOOD', 'Demo', 'P01', 'Solo Meal', 'SG0000003', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '74', '74', '74', '74', '74', '74', '74', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Makhani Combo', 'I000118', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Dhaniya Adraki Combo', 'I000119', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Palak Paneer Combo', 'I000120', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Matar Paneer Combo', 'I000121', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Peshawari Paneer Combo', 'I000122', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Do Pyaza Combo', 'I000123', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Achari Paneer Masala Combo', 'I000124', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Patiala Kadhai Paneer Combo', 'I000125', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Punjabi Paneer Tikka Masala Combo', 'I000126', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Amritsari Paneer Butter Masala Combo', 'I000127', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Pasanda Combo', 'I000128', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Lababdar Combo', 'I000129', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Bhurji Combo', 'I000130', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Cheese Tomato Paneer Masala Combo', 'I000131', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Malai Kofta Combo', 'I000132', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '114', '114', '114', '114', '114', '114', '114', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Nargisi Kofta Curry Combo', 'I000133', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '114', '114', '114', '114', '114', '114', '114', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Haryali Veg Kofta Curry Combo', 'I000134', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '114', '114', '114', '114', '114', '114', '114', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Aloo Methi Malai Combo', 'I000135', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Navratan Korma Curry Combo', 'I000136', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Kadhai Mushroom Masala Combo', 'I000137', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Matar Mushroom Combo', 'I000138', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Makai Matar Khumb Masala Combo', 'I000139', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mushroom Do Pyaza Combo', 'I000140', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Bagicha Mushroom Combo', 'I000141', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Subji Miloni Combo', 'I000142', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Dum Ki Sabji Combo', 'I000143', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Milijuli Sabzi Combo', 'I000144', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Kadhai Veg Combo', 'I000145', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Veg Keema Masala Combo', 'I000146', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Beans Aloo Combo', 'I000147', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Nizami Handi Combo', 'I000148', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Subz Diwani Handi Combo', 'I000149', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Veg Korma Masala Combo', 'I000150', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Veg Kolapuri Combo', 'I000151', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Veg Jalfrezi Combo', 'I000152', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Palak Corn Curry Combo', 'I000153', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Palak Soya Curry Combo', 'I000154', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Methi Malai Matar Combo', 'I000155', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Aloo Achrai Masala Combo', 'I000156', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Dum Aloo Combo', 'I000157', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Aloo Matar Combo', 'I000158', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Ghiya Masala Combo', 'I000159', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Aloo Achari Masala Combo', 'I000160', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Dahiwale Aloo Masala Combo', 'I000161', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Ghiya Matar Combo', 'I000162', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Jeera Aloo Combo', 'I000163', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Aloo Matar Combo', 'I000158', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Raada Masala Combo', 'I000164', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Curry Combo', 'I000165', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Makhani Combo', 'I000166', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Butter Chicken Combo', 'I000167', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Dhaniya Adraki Combo', 'I000168', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Kadai Chicken Combo', 'I000169', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Do Pyaza Combo', 'I000170', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Keema Kalazi Combo', 'I000171', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Haveli Spl Combo', 'I000172', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Saag Combo', 'I000173', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Tawa Hyderabadi Combo', 'I000174', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Tikka Masala Combo', 'I000175', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Bhuna Chicken Combo', 'I000176', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Tawa Chicken Combo', 'I000177', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Kastoori Murgh Combo', 'I000178', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mughali Murgh Combo', 'I000179', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chef Special Murgh Combo', 'I000180', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Amristari Butter Chicken Combo', 'I000181', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Korma Combo', 'I000182', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Tandoori Chicken Masala Combo', 'I000183', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Shaami Kebab Combo', 'I000184', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Kofta Curry Combo', 'I000185', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Anda Keema Masala Combo', 'I000186', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Palak Chicken Combo', 'I000187', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Methi Malai Combo', 'I000188', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Achrai Murgh Masala Combo', 'I000189', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Chaap Combo', 'I000190', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Sheekh Masala Combo', 'I000191', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Teekha Murgh Curry Combo', 'I000192', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chaana Aur Khaata Pyaz Ka Murgh Combo', 'I000193', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Patiala Combo', 'I000194', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Dhaba Chicken Combo', 'I000195', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Dhaniya Korma Combo', 'I000196', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Meat Beliram Combo', 'I000197', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mutton Kakori Kebab Combo', 'I000198', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '144', '144', '144', '144', '144', '144', '144', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Punjabi Mutton Masala Combo', 'I000199', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '144', '144', '144', '144', '144', '144', '144', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Gosht Nihari Combo', 'I000200', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '144', '144', '144', '144', '144', '144', '144', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mutton Raada Masala Combo', 'I000201', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '144', '144', '144', '144', '144', '144', '144', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mutton Rogan Gosht Combo', 'I000202', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '144', '144', '144', '144', '144', '144', '144', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Gosht Taar Korma Combo', 'I000203', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '144', '144', '144', '144', '144', '144', '144', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mutton Handi Masala Combo', 'I000204', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '144', '144', '144', '144', '144', '144', '144', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mutton Keema Masala Combo', 'I000205', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Gravy Combos', 'M000004', 'FOOD', 'Demo', 'P01', 'Gravy Combos', 'SG0000004', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '144', '144', '144', '144', '144', '144', '144', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Peshawari Paneer Tikka Combo', 'I000206', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '114', '114', '114', '114', '114', '114', '114', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Hariyali Paneer Tikka Combo', 'I000207', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '114', '114', '114', '114', '114', '114', '114', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Tikka Combo', 'I000208', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '114', '114', '114', '114', '114', '114', '114', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Afgani Paneer Tikka Combo', 'I000209', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '114', '114', '114', '114', '114', '114', '114', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Tandoori Mushroom Combo', 'I000210', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '114', '114', '114', '114', '114', '114', '114', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Sheekh Combo', 'I000211', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Fingers Combo', 'I000212', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Bharwa Aloo Combo', 'I000213', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Tandoori Aloo Combo', 'I000214', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Veg Galouti Combo', 'I000215', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Veg Sheekh Combo', 'I000216', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Hara Bhara Kebab Combo', 'I000217', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Peshawari Tandoori Gobi Combo', 'I000218', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Veg Shammi Kebab Combo', 'I000219', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Kabuli Shammi Kebab Combo', 'I000220', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Bhindi Masala Combo', 'I000221', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Aloo Bhindi Masala Combo', 'I000222', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Tandoori Gobi Combo', 'I000223', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Sukha Ghiya Masala Combo', 'I000224', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Yellow Moong Dal Combo', 'I000225', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Green Moong Dal Combo', 'I000226', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Aloo Jeera Masala Combo', 'I000227', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Karela Masala Combo', 'I000228', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Sukha Channa Combo', 'I000229', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Baigan Ka Bhartha Combo', 'I000230', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Aloo Gobi Combo', 'I000231', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Aloo Shimla Mirch Combo', 'I000232', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Pindi Channa Masala Combo', 'I000233', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chatpata Channa Combo', 'I000234', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Aloo Methi Combo', 'I000235', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Soya Aloo Combo', 'I000236', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Baghare Baigan Combo', 'I000237', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '87', '87', '87', '87', '87', '87', '87', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mushroom 65 Combo', 'I000238', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '114', '114', '114', '114', '114', '114', '114', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Matar Corn Ki Tikki Combo', 'I000239', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Tandoori Aloo Imliwala Combo', 'I000240', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Palak Anjeer Ki Tikki Combo', 'I000241', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '114', '114', '114', '114', '114', '114', '114', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Dahi Ke Kebab Combo', 'I000242', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '114', '114', '114', '114', '114', '114', '114', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Subz Saufiya Sheekh Combo', 'I000243', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Kurkure Kebab Combo', 'I000244', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '114', '114', '114', '114', '114', '114', '114', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Bhutteyan Da Kebab Combo', 'I000245', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Baby Corn Fritters Combo', 'I000246', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '100', '100', '100', '100', '100', '100', '100', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Badam Aur Arbi Ka Kebab Combo', 'I000247', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '114', '114', '114', '114', '114', '114', '114', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Channa Dal Sheekh Kebab Combo', 'I000248', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '100', '100', '100', '100', '100', '100', '100', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Corn Potato Kebab Combo', 'I000249', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '100', '100', '100', '100', '100', '100', '100', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Corn Methi Kebab Combo', 'I000250', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '100', '100', '100', '100', '100', '100', '100', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Cottage Cheese Cutlets Combo', 'I000251', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '114', '114', '114', '114', '114', '114', '114', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Hare Channa Ke Kebab Combo', 'I000252', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '100', '100', '100', '100', '100', '100', '100', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Maake Galouti Kebab Combo', 'I000253', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Moong Dal Sheekh Combo', 'I000254', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Channa Sheekh Combo', 'I000255', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '114', '114', '114', '114', '114', '114', '114', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Papad Aloo Rolls Combo', 'I000256', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '100', '100', '100', '100', '100', '100', '100', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Papad Paneer Rolls Combo', 'I000257', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '114', '114', '114', '114', '114', '114', '114', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Rajma Galouti Kebab Combo', 'I000258', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Pudhina Aloo Combo', 'I000259', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Rajma Kebab Combo', 'I000260', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Palak Channa Kebab Combo', 'I000261', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Vegetable Shikampuri Combo', 'I000262', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '100', '100', '100', '100', '100', '100', '100', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Black Lentil Tikka Combo', 'I000263', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Corn and Lotus Steam Kebab Combo', 'I000264', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Sukhe Bhae Combo', 'I000265', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '106', '106', '106', '106', '106', '106', '106', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Kale Channa Ke Kebab Combo', 'I000266', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Palak Paneer Ke Kebab Combo', 'I000267', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '114', '114', '114', '114', '114', '114', '114', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Sarson Ka Saag Combo', 'I000268', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '114', '114', '114', '114', '114', '114', '114', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Soyabin Vadiya Combo', 'I000269', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Kalmi Kebab Combo', 'I000270', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Malai Tikka Combo', 'I000271', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Tikka Combo', 'I000272', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Lasooni Tikka Combo', 'I000273', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Haryali Tikka Combo', 'I000274', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Sheekh Kebab Combo', 'I000275', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Gilafi Tikka Combo', 'I000276', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Kalimirch Tikka Combo', 'I000277', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Reshmi Murgh Tikka Combo', 'I000278', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Achari Murgh Tikka Combo', 'I000279', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Zafrani Murgh Tikka Combo', 'I000280', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Banjara Murgh Tikka Combo', 'I000281', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Afgani Tikka Combo', 'I000282', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Pudina Chicken Tikka Combo', 'I000283', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Peshawari Murgh Tikka Combo', 'I000284', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Multani Murgh Tikka Combo', 'I000285', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Pahaadi Murgh Tikka Combo', 'I000286', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Haryali Chicken Tikka Combo', 'I000287', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Galouti Kebab Combo', 'I000288', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Badami Chicken Tikka Combo', 'I000289', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Boti Kebab Combo', 'I000290', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Ajwani Chicken Tikka Combo', 'I000291', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Lahoori Murgh Tikka Combo', 'I000292', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Vintage Tandoori Chicken Combo', 'I000293', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Ka Shola Combo', 'I000294', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Rajasthani Murgh Tikka Combo', 'I000295', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Awadhi Murgh Tikka Combo', 'I000296', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken 65 Combo', 'I000297', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Grilled Chicken Combo', 'I000298', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Green Chilli Chicken Tikka Combo', 'I000299', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Lemon Chilli Chicken Tikka Combo', 'I000300', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Nawabi Murgh Tikka Combo', 'I000301', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Kashmiri Murgh Tikka Combo', 'I000302', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Kakkori Tikka Combo', 'I000303', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Murgh Shammi Kebab Combo', 'I000304', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '119', '119', '119', '119', '119', '119', '119', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chilli Fish Tikka Combo', 'I000305', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '138', '138', '138', '138', '138', '138', '138', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Fish Tikka Combo', 'I000306', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '138', '138', '138', '138', '138', '138', '138', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mutton Kakori Kebab Combo', 'I000198', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '145', '145', '145', '145', '145', '145', '145', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mutton Sheekh Kebab Combo', 'I000307', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikka Combos', 'M000005', 'FOOD', 'Demo', 'P01', 'Tikka Combos', 'SG0000005', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '145', '145', '145', '145', '145', '145', '145', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Veg Grill (without Cheese)', 'I000308', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '37', '37', '37', '37', '37', '37', '37', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Veg Grill (with Cheese)', 'I000309', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '44', '44', '44', '44', '44', '44', '44', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Veg Cheese Grill', 'I000310', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '44', '44', '44', '44', '44', '44', '44', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Cheese Grill', 'I000311', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '44', '44', '44', '44', '44', '44', '44', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Potato Onion Cheese Grill', 'I000312', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '44', '44', '44', '44', '44', '44', '44', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Potato Cheese Grill', 'I000313', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '44', '44', '44', '44', '44', '44', '44', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Cheese Grill', 'I000314', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '49', '49', '49', '49', '49', '49', '49', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Veg Cheese Grill', 'I000315', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '49', '49', '49', '49', '49', '49', '49', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mushroom Veg Cheese Grill', 'I000316', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '49', '49', '49', '49', '49', '49', '49', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mushroom Chilly Cheese', 'I000317', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '49', '49', '49', '49', '49', '49', '49', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mushroom Onion Cheese', 'I000318', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '49', '49', '49', '49', '49', '49', '49', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mushroom Tomato Cheese', 'I000319', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '49', '49', '49', '49', '49', '49', '49', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mushroom Capsicum Cheese', 'I000320', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '49', '49', '49', '49', '49', '49', '49', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mushroom Paneer Cheese', 'I000321', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '49', '49', '49', '49', '49', '49', '49', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Cheese PlainÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â Sandwich', 'I000322', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '36', '36', '36', '36', '36', '36', '36', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Veg PlainÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â Sandwich', 'I000323', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '36', '36', '36', '36', '36', '36', '36', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Corn SandwichÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â  Grill', 'I000324', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '49', '49', '49', '49', '49', '49', '49', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Baby Corn Cheese Sandwich', 'I000325', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '49', '49', '49', '49', '49', '49', '49', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Baby Corn Veg Cheese Grill', 'I000326', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '49', '49', '49', '49', '49', '49', '49', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Maggi Noodles Veg', 'I000327', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '32', '32', '32', '32', '32', '32', '32', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Maggi Noodles with Cheese', 'I000328', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '32', '32', '32', '32', '32', '32', '32', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Maggi Noodles with Egg', 'I000329', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '37', '37', '37', '37', '37', '37', '37', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Maggi Noodles with Paneer', 'I000330', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '37', '37', '37', '37', '37', '37', '37', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Bombay Vada Pav', 'I000331', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '43', '43', '43', '43', '43', '43', '43', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Bread Butter Jam Grill', 'I000332', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '32', '32', '32', '32', '32', '32', '32', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Brown Bread Butter Grill', 'I000333', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '32', '32', '32', '32', '32', '32', '32', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Fruit, Jam, Sandwich', 'I000334', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '44', '44', '44', '44', '44', '44', '44', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Fruit, Jam, Sandwich with Cheese', 'I000335', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '49', '49', '49', '49', '49', '49', '49', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Cheese Plain Sandwich', 'I000336', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '44', '44', '44', '44', '44', '44', '44', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Jam Cheese Grill Sandwich', 'I000337', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '44', '44', '44', '44', '44', '44', '44', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mix Fruit Cheese Grill Sandwich', 'I000338', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Indian Street Food', 'M000001', 'FOOD', 'Demo', 'P01', 'Indian Street Food', 'SG0000001', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '49', '49', '49', '49', '49', '49', '49', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Aloo Pyaz Paratha- 2 Pcs', 'I000339', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tandoori Paratha', 'M000006', 'FOOD', 'Demo', 'P01', 'Tandoori Paratha', 'SG0000006', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '42', '42', '42', '42', '42', '42', '42', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Paneer Pyaz Paratha- 2 Pcs', 'I000340', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tandoori Paratha', 'M000006', 'FOOD', 'Demo', 'P01', 'Tandoori Paratha', 'SG0000006', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '51', '51', '51', '51', '51', '51', '51', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Amritsari Kulcha- 2 Pcs', 'I000341', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tandoori Paratha', 'M000006', 'FOOD', 'Demo', 'P01', 'Tandoori Paratha', 'SG0000006', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '56', '56', '56', '56', '56', '56', '56', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Palak Pyaz Paratha- 2 Pcs', 'I000342', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tandoori Paratha', 'M000006', 'FOOD', 'Demo', 'P01', 'Tandoori Paratha', 'SG0000006', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '43', '43', '43', '43', '43', '43', '43', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Gobi Pyaz Paratha- 2 Pcs', 'I000343', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tandoori Paratha', 'M000006', 'FOOD', 'Demo', 'P01', 'Tandoori Paratha', 'SG0000006', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '42', '42', '42', '42', '42', '42', '42', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mooli Pyaz Paratha- 2 Pcs', 'I000344', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tandoori Paratha', 'M000006', 'FOOD', 'Demo', 'P01', 'Tandoori Paratha', 'SG0000006', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '44', '44', '44', '44', '44', '44', '44', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chicken Keema Paratha- 2 Pcs', 'I000345', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tandoori Paratha', 'M000006', 'FOOD', 'Demo', 'P01', 'Tandoori Paratha', 'SG0000006', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '82', '82', '82', '82', '82', '82', '82', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mutton Keema Paratha- 2 Pcs', 'I000346', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tandoori Paratha', 'M000006', 'FOOD', 'Demo', 'P01', 'Tandoori Paratha', 'SG0000006', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Missi Roti- 1 Pcs', 'I000347', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tandoori Paratha', 'M000006', 'FOOD', 'Demo', 'P01', 'Tandoori Paratha', 'SG0000006', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '43', '43', '43', '43', '43', '43', '43', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('1- Pcs- Aloo Pyaz Paratha', 'I000348', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tandoori Paratha', 'M000006', 'FOOD', 'Demo', 'P01', 'Tandoori Paratha', 'SG0000006', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '23', '23', '23', '23', '23', '23', '23', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('1- Pcs- Paneer Pyaz Paratha', 'I000349', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tandoori Paratha', 'M000006', 'FOOD', 'Demo', 'P01', 'Tandoori Paratha', 'SG0000006', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '28', '28', '28', '28', '28', '28', '28', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('1- Pcs- Amritsari Kulcha Paratha', 'I000350', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tandoori Paratha', 'M000006', 'FOOD', 'Demo', 'P01', 'Tandoori Paratha', 'SG0000006', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '30', '30', '30', '30', '30', '30', '30', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('1- Pcs- Palak Pyaz Paratha', 'I000351', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tandoori Paratha', 'M000006', 'FOOD', 'Demo', 'P01', 'Tandoori Paratha', 'SG0000006', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '25', '25', '25', '25', '25', '25', '25', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('1- Pcs- Mooli Pyaz Paratha', 'I000352', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tandoori Paratha', 'M000006', 'FOOD', 'Demo', 'P01', 'Tandoori Paratha', 'SG0000006', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '25', '25', '25', '25', '25', '25', '25', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('1- Pcs- Gobi Pyaz Paratha', 'I000353', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tandoori Paratha', 'M000006', 'FOOD', 'Demo', 'P01', 'Tandoori Paratha', 'SG0000006', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '25', '25', '25', '25', '25', '25', '25', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('1- Pcs- Chicken Keema Paratha', 'I000354', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tandoori Paratha', 'M000006', 'FOOD', 'Demo', 'P01', 'Tandoori Paratha', 'SG0000006', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '44', '44', '44', '44', '44', '44', '44', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('1- Pcs- Mutton Keema Paratha', 'I000355', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tandoori Paratha', 'M000006', 'FOOD', 'Demo', 'P01', 'Tandoori Paratha', 'SG0000006', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '56', '56', '56', '56', '56', '56', '56', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Tandoori Roti- 1 Pcs', 'I000356', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Breads', 'M000007', 'FOOD', 'Demo', 'P01', 'Breads', 'SG0000007', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '14', '14', '14', '14', '14', '14', '14', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Lacha Paratha- 1 Pcs', 'I000357', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Breads', 'M000007', 'FOOD', 'Demo', 'P01', 'Breads', 'SG0000007', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '25', '25', '25', '25', '25', '25', '25', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Butter Naan- 1 Pcs', 'I000358', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Breads', 'M000007', 'FOOD', 'Demo', 'P01', 'Breads', 'SG0000007', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '17', '17', '17', '17', '17', '17', '17', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Fhulka- 1 Pcs', 'I000359', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Breads', 'M000007', 'FOOD', 'Demo', 'P01', 'Breads', 'SG0000007', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '15', '15', '15', '15', '15', '15', '15', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Rumali Roti- 1 Pcs', 'I000360', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Breads', 'M000007', 'FOOD', 'Demo', 'P01', 'Breads', 'SG0000007', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '18', '18', '18', '18', '18', '18', '18', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Butter Garlic Naan- 1 Pcs', 'I000361', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Breads', 'M000007', 'FOOD', 'Demo', 'P01', 'Breads', 'SG0000007', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '32', '32', '32', '32', '32', '32', '32', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Plain Naan- 1 Pcs', 'I000362', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Breads', 'M000007', 'FOOD', 'Demo', 'P01', 'Breads', 'SG0000007', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '25', '25', '25', '25', '25', '25', '25', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mix Veg Stuffed Parathas- 2 Pcs', 'I000363', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tandoori Paratha', 'M000006', 'FOOD', 'Demo', 'P01', 'Tandoori Paratha', 'SG0000006', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '47', '47', '47', '47', '47', '47', '47', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Sweet Lassi', 'I000364', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Drinks- Homemade', 'M000008', 'FOOD', 'Demo', 'P01', 'Drinks- Homemade', 'SG0000008', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '32', '32', '32', '32', '32', '32', '32', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Salt and Pepper Lassi', 'I000365', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Drinks- Homemade', 'M000008', 'FOOD', 'Demo', 'P01', 'Drinks- Homemade', 'SG0000008', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '30', '30', '30', '30', '30', '30', '30', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Shikanji', 'I000366', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Drinks- Homemade', 'M000008', 'FOOD', 'Demo', 'P01', 'Drinks- Homemade', 'SG0000008', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '31', '31', '31', '31', '31', '31', '31', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Jaljeera', 'I000367', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Drinks- Homemade', 'M000008', 'FOOD', 'Demo', 'P01', 'Drinks- Homemade', 'SG0000008', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '25', '25', '25', '25', '25', '25', '25', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Badam Milk', 'I000368', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Drinks- Homemade', 'M000008', 'FOOD', 'Demo', 'P01', 'Drinks- Homemade', 'SG0000008', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '49', '49', '49', '49', '49', '49', '49', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Butter Milk', 'I000369', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Drinks- Homemade', 'M000008', 'FOOD', 'Demo', 'P01', 'Drinks- Homemade', 'SG0000008', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '25', '25', '25', '25', '25', '25', '25', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Flavored Lassi', 'I000370', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Drinks- Homemade', 'M000008', 'FOOD', 'Demo', 'P01', 'Drinks- Homemade', 'SG0000008', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '48', '48', '48', '48', '48', '48', '48', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Fresh Lime Juice', 'I000371', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '18', '18', '18', '18', '18', '18', '18', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Pudina Ginger Lime', 'I000372', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '25', '25', '25', '25', '25', '25', '25', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Fresh Lime Soda', 'I000373', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '24', '24', '24', '24', '24', '24', '24', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Nannari Soda', 'I000374', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '30', '30', '30', '30', '30', '30', '30', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Lemon Soda Sweet and Salt', 'I000375', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '26', '26', '26', '26', '26', '26', '26', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Black Jeera Soda', 'I000376', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '30', '30', '30', '30', '30', '30', '30', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Fruit Beer Soda', 'I000377', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '30', '30', '30', '30', '30', '30', '30', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Nannari Juice', 'I000378', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '30', '30', '30', '30', '30', '30', '30', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Kumkuma Juice', 'I000379', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '30', '30', '30', '30', '30', '30', '30', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mosambi Juice', 'I000380', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '30', '30', '30', '30', '30', '30', '30', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Orange Juice', 'I000381', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '30', '30', '30', '30', '30', '30', '30', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mango Juice', 'I000382', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '30', '30', '30', '30', '30', '30', '30', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Apple Juice', 'I000383', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '40', '40', '40', '40', '40', '40', '40', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Grape Juice', 'I000384', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '30', '30', '30', '30', '30', '30', '30', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Pineapple Juice', 'I000385', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '30', '30', '30', '30', '30', '30', '30', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Water Melon Juice', 'I000386', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '30', '30', '30', '30', '30', '30', '30', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Musk Melon Juice', 'I000387', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '30', '30', '30', '30', '30', '30', '30', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mix Fruits Juice', 'I000388', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '38', '38', '38', '38', '38', '38', '38', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Pomegranate Juice', 'I000389', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '40', '40', '40', '40', '40', '40', '40', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Papaya Juice', 'I000390', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '30', '30', '30', '30', '30', '30', '30', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Fruit Salad', 'I000391', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '51', '51', '51', '51', '51', '51', '51', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Chikoo Milkshake', 'I000392', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'MilkShake', 'M000010', 'FOOD', 'Demo', 'P01', 'MilkShake', 'SG0000010', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '41', '41', '41', '41', '41', '41', '41', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Apple Milkshake', 'I000393', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'MilkShake', 'M000010', 'FOOD', 'Demo', 'P01', 'MilkShake', 'SG0000010', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '46', '46', '46', '46', '46', '46', '46', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Pomegranate Milkshake', 'I000394', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'MilkShake', 'M000010', 'FOOD', 'Demo', 'P01', 'MilkShake', 'SG0000010', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '46', '46', '46', '46', '46', '46', '46', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mango Milkshake', 'I000395', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'MilkShake', 'M000010', 'FOOD', 'Demo', 'P01', 'MilkShake', 'SG0000010', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '44', '44', '44', '44', '44', '44', '44', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Nannari Milkshake', 'I000396', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'MilkShake', 'M000010', 'FOOD', 'Demo', 'P01', 'MilkShake', 'SG0000010', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '46', '46', '46', '46', '46', '46', '46', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Butter Fruit Milkhake', 'I000397', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'MilkShake', 'M000010', 'FOOD', 'Demo', 'P01', 'MilkShake', 'SG0000010', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '46', '46', '46', '46', '46', '46', '46', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Musk Melon Milkshake', 'I000398', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'MilkShake', 'M000010', 'FOOD', 'Demo', 'P01', 'MilkShake', 'SG0000010', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '33', '33', '33', '33', '33', '33', '33', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Banana Milkshake', 'I000399', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'MilkShake', 'M000010', 'FOOD', 'Demo', 'P01', 'MilkShake', 'SG0000010', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '32', '32', '32', '32', '32', '32', '32', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Papaya Milkshake', 'I000400', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'MilkShake', 'M000010', 'FOOD', 'Demo', 'P01', 'MilkShake', 'SG0000010', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '33', '33', '33', '33', '33', '33', '33', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Strawberry Crush Juice', 'I000401', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '33', '33', '33', '33', '33', '33', '33', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Mango Crush', 'I000402', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '33', '33', '33', '33', '33', '33', '33', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Pineapple Crush Juice', 'I000403', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Fresh Juice', 'M000009', 'FOOD', 'Demo', 'P01', 'Fresh Juice', 'SG0000009', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '33', '33', '33', '33', '33', '33', '33', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Bowl of Dal- 120 Grams', 'I000404', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Add On', 'M000011', 'FOOD', 'Demo', 'P01', 'Add On', 'SG0000011', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '32', '32', '32', '32', '32', '32', '32', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Bowl of Rajma- 120 Grams', 'I000405', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Add On', 'M000011', 'FOOD', 'Demo', 'P01', 'Add On', 'SG0000011', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '32', '32', '32', '32', '32', '32', '32', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Bowl of Chola- 120 Grams', 'I000406', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Add On', 'M000011', 'FOOD', 'Demo', 'P01', 'Add On', 'SG0000011', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '32', '32', '32', '32', '32', '32', '32', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('GRAVY- VEG(PANEER) - 120 Grams BOWL', 'I000407', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Add On', 'M000011', 'FOOD', 'Demo', 'P01', 'Add On', 'SG0000011', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('GRAVY- NV (CHICKEN) - 120 Grams BOWL', 'I000408', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Add On', 'M000011', 'FOOD', 'Demo', 'P01', 'Add On', 'SG0000011', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '68', '68', '68', '68', '68', '68', '68', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('GRAVY- NV (MUTTON) - 120 Grams BOWL', 'I000409', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Add On', 'M000011', 'FOOD', 'Demo', 'P01', 'Add On', 'SG0000011', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '94', '94', '94', '94', '94', '94', '94', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('TIKKA- NV (CHICKEN) - 120 Grams BOWL', 'I000410', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikkas', 'M000012', 'FOOD', 'Demo', 'P01', 'Tikkas', 'SG0000012', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '76', '76', '76', '76', '76', '76', '76', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('TIKKA- NV (MUTTON) - 120 Grams BOWL', 'I000411', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikkas', 'M000012', 'FOOD', 'Demo', 'P01', 'Tikkas', 'SG0000012', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '95', '95', '95', '95', '95', '95', '95', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('TIKKA- NV ( FISH) - 120 Grams BOWL', 'I000412', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Add On', 'M000011', 'FOOD', 'Demo', 'P01', 'Add On', 'SG0000011', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '100', '100', '100', '100', '100', '100', '100', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('GRAVY- NV (FISH) - 120 Grams BOWL', 'I000413', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Add On', 'M000011', 'FOOD', 'Demo', 'P01', 'Add On', 'SG0000011', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '100', '100', '100', '100', '100', '100', '100', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Tandoori Chicken- 4 Pcs', 'I000414', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikkas', 'M000012', 'FOOD', 'Demo', 'P01', 'Tikkas', 'SG0000012', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '184', '184', '184', '184', '184', '184', '184', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Tandoori Chicken- 8 Pcs', 'I000415', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikkas', 'M000012', 'FOOD', 'Demo', 'P01', 'Tikkas', 'SG0000012', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '308', '308', '308', '308', '308', '308', '308', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Afgani Chicken- 8 Pcs', 'I000416', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikkas', 'M000012', 'FOOD', 'Demo', 'P01', 'Tikkas', 'SG0000012', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '316', '316', '316', '316', '316', '316', '316', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('Afgani Chicken- 4 Pcs', 'I000417', '', '', 'FOOD', 'G0000001', 'KITCHEN', 'C01', '', 'Tikkas', 'M000012', 'FOOD', 'Demo', 'P01', 'Tikkas', 'SG0000012', 'All', 'A001', '', '0.00', '', '', 'Food', 'Y', 'N', '188', '188', '188', '188', '188', '188', '188', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'No', 'HH:MM:S', 'HH:MM:S', 'Other'),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', ''),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '', 'NO', 'HH:MM:S', 'HH:MM:S', '');
/*!40000 ALTER TABLE `tblimportexcel` ENABLE KEYS */;

-- Dumping structure for table infosys.tblinternal
DROP TABLE IF EXISTS `tblinternal`;
CREATE TABLE IF NOT EXISTS `tblinternal` (
  `strTransactionType` varchar(100) NOT NULL,
  `dblLastNo` bigint(20) NOT NULL,
  KEY `strTransactionType` (`strTransactionType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblinternal: ~31 rows (approximately)
DELETE FROM `tblinternal`;
/*!40000 ALTER TABLE `tblinternal` DISABLE KEYS */;
INSERT INTO `tblinternal` (`strTransactionType`, `dblLastNo`) VALUES
	('KOTNo', 0),
	('stockInNo', 0),
	('stockOutNo', 0),
	('Area', 1),
	('GiftVoucher', 0),
	('Counter', 0),
	('custtype', 2),
	('Recipe', 0),
	('LoyaltyCode', 0),
	('Physicalstock', 0),
	('Production', 0),
	('AdvOrderType', 0),
	('DebitCard', 0),
	('ReOrder', 0),
	('DelBoyCategory', 0),
	('Zone', 0),
	('AdvReceipt', 0),
	('RechargeNo', 0),
	('RedeemNo', 0),
	('CardNo', 0),
	('MIReceiptNo', 0),
	('PromotionCode', 0),
	('PlaceOrder', 31),
	('CreditReceipt', 0),
	('PromoGroup', 0),
	('LiquorBillCustomer', 0),
	('OrderNo', 15),
	('PlayZonePricing', 0),
	('Order', 0),
	('Characterstic', 2),
	('CashDenom', 5);
/*!40000 ALTER TABLE `tblinternal` ENABLE KEYS */;

-- Dumping structure for table infosys.tblitembarcode
DROP TABLE IF EXISTS `tblitembarcode`;
CREATE TABLE IF NOT EXISTS `tblitembarcode` (
  `strItemCode` varchar(50) NOT NULL,
  `strBarCode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblitembarcode: ~0 rows (approximately)
DELETE FROM `tblitembarcode`;
/*!40000 ALTER TABLE `tblitembarcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblitembarcode` ENABLE KEYS */;

-- Dumping structure for table infosys.tblitemcharctersticslinkupdtl
DROP TABLE IF EXISTS `tblitemcharctersticslinkupdtl`;
CREATE TABLE IF NOT EXISTS `tblitemcharctersticslinkupdtl` (
  `strItemCode` varchar(10) NOT NULL,
  `strCharCode` varchar(10) NOT NULL,
  `strCharValue` varchar(100) NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblitemcharctersticslinkupdtl: ~0 rows (approximately)
DELETE FROM `tblitemcharctersticslinkupdtl`;
/*!40000 ALTER TABLE `tblitemcharctersticslinkupdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblitemcharctersticslinkupdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblitemcurrentstk
DROP TABLE IF EXISTS `tblitemcurrentstk`;
CREATE TABLE IF NOT EXISTS `tblitemcurrentstk` (
  `strGroupName` varchar(100) NOT NULL DEFAULT '',
  `strSubgroupName` varchar(100) NOT NULL DEFAULT '',
  `strItemCode` varchar(11) NOT NULL,
  `strItemName` varchar(200) NOT NULL,
  `strPOSCode` varchar(3) NOT NULL DEFAULT '',
  `intOpening` decimal(18,2) NOT NULL DEFAULT '0.00',
  `intOut` decimal(18,2) NOT NULL DEFAULT '0.00',
  `intIn` decimal(18,2) NOT NULL DEFAULT '0.00',
  `intSale` decimal(18,2) NOT NULL DEFAULT '0.00',
  `intBalance` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblPurchaseRate` decimal(18,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblitemcurrentstk: ~0 rows (approximately)
DELETE FROM `tblitemcurrentstk`;
/*!40000 ALTER TABLE `tblitemcurrentstk` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblitemcurrentstk` ENABLE KEYS */;

-- Dumping structure for table infosys.tblitemmaster
DROP TABLE IF EXISTS `tblitemmaster`;
CREATE TABLE IF NOT EXISTS `tblitemmaster` (
  `strItemCode` varchar(10) NOT NULL,
  `strItemName` varchar(200) NOT NULL,
  `strSubGroupCode` varchar(10) NOT NULL,
  `strItemImage` varchar(200) NOT NULL DEFAULT '',
  `strTaxIndicator` char(1) NOT NULL,
  `strStockInEnable` varchar(1) NOT NULL,
  `dblPurchaseRate` decimal(18,2) NOT NULL,
  `intProcTimeMin` bigint(20) NOT NULL DEFAULT '0',
  `strExternalCode` varchar(100) NOT NULL DEFAULT '0.00',
  `strItemDetails` varchar(400) NOT NULL DEFAULT '0.00',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strItemType` varchar(20) NOT NULL DEFAULT 'Food',
  `strDiscountApply` varchar(1) NOT NULL DEFAULT 'Y',
  `strShortName` varchar(80) NOT NULL DEFAULT '',
  `dblMinLevel` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblMaxLevel` decimal(18,2) NOT NULL DEFAULT '0.00',
  `intProcDay` int(10) NOT NULL DEFAULT '0',
  `strRawMaterial` varchar(1) NOT NULL DEFAULT 'N',
  `dblSalePrice` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strItemForSale` varchar(1) NOT NULL DEFAULT 'Y',
  `strRevenueHead` varchar(50) NOT NULL DEFAULT 'Food',
  `strItemWeight` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strOpenItem` varchar(1) NOT NULL DEFAULT 'N',
  `strItemWiseKOTYN` varchar(1) NOT NULL DEFAULT 'N',
  `strWSProdCode` varchar(10) NOT NULL DEFAULT ' NA',
  `strExciseBrandCode` varchar(10) NOT NULL DEFAULT '',
  `strNoDeliveryDays` varchar(200) NOT NULL DEFAULT '',
  `intDeliveryDays` int(10) NOT NULL DEFAULT '0',
  `dblIncrementalWeight` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblMinWeight` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strUrgentOrder` varchar(1) NOT NULL DEFAULT 'N',
  `strUOM` varchar(50) NOT NULL DEFAULT '',
  `imgImage` longblob NOT NULL,
  `tmeTargetMiss` bigint(20) NOT NULL DEFAULT '0',
  `strRecipeUOM` varchar(50) NOT NULL DEFAULT '',
  `dblReceivedConversion` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblRecipeConversion` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strHSNNo` varchar(30) NOT NULL DEFAULT '',
  `strOperationalYN` varchar(1) NOT NULL DEFAULT 'Y',
  `strItemVoiceCaptureText` varchar(500) NOT NULL DEFAULT '',
  `strPrintBarCode` varchar(2) NOT NULL DEFAULT 'N',
  `strQrMenu` varchar(2) NOT NULL DEFAULT 'N',
  `intItemSequence` int(10) NOT NULL DEFAULT '0',
  `strFoodType` varchar(20) NOT NULL,
  PRIMARY KEY (`strItemCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblitemmaster: ~427 rows (approximately)
DELETE FROM `tblitemmaster`;
/*!40000 ALTER TABLE `tblitemmaster` DISABLE KEYS */;
INSERT INTO `tblitemmaster` (`strItemCode`, `strItemName`, `strSubGroupCode`, `strItemImage`, `strTaxIndicator`, `strStockInEnable`, `dblPurchaseRate`, `intProcTimeMin`, `strExternalCode`, `strItemDetails`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`, `strClientCode`, `strDataPostFlag`, `strItemType`, `strDiscountApply`, `strShortName`, `dblMinLevel`, `dblMaxLevel`, `intProcDay`, `strRawMaterial`, `dblSalePrice`, `strItemForSale`, `strRevenueHead`, `strItemWeight`, `strOpenItem`, `strItemWiseKOTYN`, `strWSProdCode`, `strExciseBrandCode`, `strNoDeliveryDays`, `intDeliveryDays`, `dblIncrementalWeight`, `dblMinWeight`, `strUrgentOrder`, `strUOM`, `imgImage`, `tmeTargetMiss`, `strRecipeUOM`, `dblReceivedConversion`, `dblRecipeConversion`, `strHSNNo`, `strOperationalYN`, `strItemVoiceCaptureText`, `strPrintBarCode`, `strQrMenu`, `intItemSequence`, `strFoodType`) VALUES
	('I000001', 'Omlette & 2 Pcs- White Bread', 'SG0000001', '', '', 'N', 0.00, 1, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:41:11', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', '', '', 'A', 0, 0.00, 0.00, 'N', '', _binary '', 1, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000002', 'Boiled Egg- Single', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000003', 'Bulls Eye & 2 Pcs - White Bread', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000004', 'Egg Burji & 2 Pcs - White Bread', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000005', 'Egg Burji & 1 Plain Paratha', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000006', 'Omlette & 2 Pcs - Brown Bread', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000007', 'Bulls Eye & 2 Pcs - Brown Bread', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000008', 'Egg Burji & 2 Pcs - Brown Bread', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000009', 'Butter Toast - 2 Pcs White Bread', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000010', 'Butter Toast - 2 Pcs Brown Bread', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000011', 'Idli - 2 Pcs & Paneer Butter Masala', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000012', 'Idli - 2 Pcs & Butter Chicken', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000013', 'Idli - 2 Pcs & Chicken Curry', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000014', 'Idli - 2 Pcs & Veg Gravy', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000015', 'Aloo & 2 Pcs Poori', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000016', 'Khichdi', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000017', 'Besan Chilla - 1 Pcs', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000018', 'Moong Dal Chilla - 1 Pcs', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000019', 'Poha- 200 Grams', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000020', 'Upma- 200 Grams', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000021', 'Bombay Toast - 2Pcs', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000022', 'Eggy Bread - 2 Pcs', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000023', 'Dal Stuffed Poori- 2 Pcs', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000024', 'Dal Kachori with Aloo', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000025', 'Dalia Namkeen with Veggies', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000026', 'Dalia Namkeen with Chicken', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000027', 'Oats Namkeen with Veggies', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000028', 'Oats Namkeen with Chicken', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000029', 'Bread Upma', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000030', 'Black Channa & 1 Pcs Paratha', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000031', 'Paneer Bhurji & 1 Pcs Paratha', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000032', 'Paneer Bhurji & 2 Pcs Bread', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000033', 'Paneer Bhurji & 2 Pcs Pav', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000034', 'Paneer Bhurji & 1 Pcs Kulcha', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000035', 'Chicken Keema & 2 Pcs Pav', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000036', 'Chicken Keema & 1 Pcs Kulcha', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000037', 'Chicken Keema & 1 Pcs Plain Paratha', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000038', 'Chicken Keema & 2 Pcs Bread', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000039', 'Aloo Jeera  & 1 Pcs Plain Paratha', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000040', 'Sabudhan Kichdi', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000041', 'Chicken Tikka Roll', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000042', 'Murgh Malai Roll', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000043', 'Murgh Haryali Roll', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000044', 'Tandoori Chicken Roll', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000045', 'Afgani Tikka Roll', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000046', 'Chicken Sheekh Roll', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000047', 'Butter Chicken Roll', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000048', 'Chicken Tikka Masala Roll', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000049', 'Paneer Tikka Masala Roll', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000050', 'Achari Chicken Tikka Roll', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000051', 'Kadai Veg Roll', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000052', 'Paneer Tikka Roll', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000053', 'Haryali Paneer Tikka Roll', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000054', 'Malai Paneer Tikka Roll', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000055', 'Veg Sheekh Roll', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000056', 'Achari Paneer Tikka Roll', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000057', 'Samosa- Aloo', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000058', 'Kachori- Aloo', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000059', 'Desi Fries', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000060', 'Paneer Bread Pakora', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000061', 'Paneer Pakora', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000062', 'Mix Veg Pakora', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000063', 'Onion Pakora', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000064', 'Plain Bread Pakora', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000065', 'Plain Tea', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000066', 'Masala Tea', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000067', 'Green Tea', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000068', 'Lemon Tea', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000069', 'Black Tea', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000070', 'Black Coffee', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000071', 'Plain Coffee', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000072', 'Nescafe Vanilla Latte', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000073', 'Nescafe Hazelnut Latte', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000074', 'Caramel Latte', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000075', 'Pav Samosa', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000076', 'Bun Samosa', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000077', 'Samosa Sandwich', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000078', 'Chole & 2 Pcs Kulcha', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000079', 'Hyderabadi Bun Kabab- Chicken', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000080', 'Chicken Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000081', 'Hyderabadi Chicken Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000082', 'Mughlai Chicken Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000083', 'Kashmiri Chicken Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000084', 'Butter Chicken Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000085', 'Butter Chicken Pulao', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000086', 'Lucknowi Chicken Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000087', 'Nawabi Chicken Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000088', 'Awadhi Chicken Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000089', 'Malabar Chicken Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000090', 'Bawarchi Chicken Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000091', 'Calicut Chicken Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000092', 'Chicken Tikka Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000093', 'Murgh Punjabi Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000094', 'Mutton Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000095', 'Egg Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000096', 'Paneer Makhani Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000097', 'SEP Chicken Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000098', 'Palak Paneer Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000099', 'Paneer Tikka Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000100', 'Tandoori Chicken Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000101', 'Veg & Paneer Dum Biryani', 'SG0000002', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000102', 'Kadhi Chawal', 'SG0000003', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000103', 'Rajma Chawal', 'SG0000003', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000104', 'Chole Chawal', 'SG0000003', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000105', 'Dal Tadka Chawal', 'SG0000003', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000106', 'Dal Makhani Chawal', 'SG0000003', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000107', 'Paneer Makhani Chawal', 'SG0000003', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000108', 'Butter Chicken Rice', 'SG0000003', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000109', 'Chicken Chawal', 'SG0000003', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000110', 'Palak Paneer & Rice', 'SG0000003', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000111', 'Matar Paneer & Rice', 'SG0000003', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000112', 'Egg Curry & Rice', 'SG0000003', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000113', 'Dal Tadka Roti', 'SG0000003', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000114', 'Dal Makhani Roti', 'SG0000003', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000115', 'Rajma & Roti', 'SG0000003', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000116', 'Chole &  Roti', 'SG0000003', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000117', 'Kadhi Pakora & Roti', 'SG0000003', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000118', 'Paneer Makhani Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000119', 'Paneer Dhaniya Adraki Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000120', 'Palak Paneer Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000121', 'Matar Paneer Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000122', 'Peshawari Paneer Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000123', 'Paneer Do Pyaza Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000124', 'Achari Paneer Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000125', 'Patiala Kadhai Paneer Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000126', 'Punjabi Paneer Tikka Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000127', 'Amritsari Paneer Butter Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000128', 'Paneer Pasanda Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000129', 'Paneer Lababdar Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000130', 'Paneer Bhurji Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000131', 'Cheese Tomato Paneer Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000132', 'Malai Kofta Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000133', 'Nargisi Kofta Curry Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000134', 'Haryali Veg Kofta Curry Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000135', 'Aloo Methi Malai Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000136', 'Navratan Korma Curry Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000137', 'Kadhai Mushroom Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000138', 'Matar Mushroom Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000139', 'Makai Matar Khumb Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000140', 'Mushroom Do Pyaza Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000141', 'Bagicha Mushroom Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000142', 'Subji Miloni Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000143', 'Dum Ki Sabji Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000144', 'Milijuli Sabzi Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000145', 'Kadhai Veg Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000146', 'Veg Keema Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000147', 'Beans Aloo Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000148', 'Nizami Handi Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000149', 'Subz Diwani Handi Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000150', 'Veg Korma Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000151', 'Veg Kolapuri Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000152', 'Veg Jalfrezi Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000153', 'Palak Corn Curry Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000154', 'Palak Soya Curry Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000155', 'Methi Malai Matar Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000156', 'Aloo Achrai Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000157', 'Dum Aloo Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000158', 'Aloo Matar Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000159', 'Ghiya Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000160', 'Aloo Achari Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000161', 'Dahiwale Aloo Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000162', 'Ghiya Matar Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000163', 'Jeera Aloo Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000164', 'Murgh Raada Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000165', 'Chicken Curry Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000166', 'Murgh Makhani Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000167', 'Butter Chicken Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000168', 'Murgh Dhaniya Adraki Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000169', 'Kadai Chicken Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000170', 'Murgh Do Pyaza Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000171', 'Chicken Keema Kalazi Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000172', 'Murgh Haveli Spl Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000173', 'Murgh Saag Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000174', 'Tawa Hyderabadi Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000175', 'Chicken Tikka Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000176', 'Bhuna Chicken Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000177', 'Tawa Chicken Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000178', 'Kastoori Murgh Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000179', 'Mughali Murgh Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000180', 'Chef Special Murgh Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000181', 'Amristari Butter Chicken Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000182', 'Chicken Korma Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000183', 'Tandoori Chicken Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000184', 'Murgh Shaami Kebab Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000185', 'Chicken Kofta Curry Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000186', 'Anda Keema Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000187', 'Palak Chicken Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000188', 'Murgh Methi Malai Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000189', 'Achrai Murgh Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000190', 'Chicken Chaap Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000191', 'Murgh Sheekh Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000192', 'Teekha Murgh Curry Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000193', 'Chaana Aur Khaata Pyaz Ka Murgh Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000194', 'Chicken Patiala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000195', 'Dhaba Chicken Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000196', 'Murgh Dhaniya Korma Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000197', 'Meat Beliram Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000198', 'Mutton Kakori Kebab Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000199', 'Punjabi Mutton Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000200', 'Gosht Nihari Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000201', 'Mutton Raada Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000202', 'Mutton Rogan Gosht Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000203', 'Gosht Taar Korma Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000204', 'Mutton Handi Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000205', 'Mutton Keema Masala Combo', 'SG0000004', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000206', 'Peshawari Paneer Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000207', 'Hariyali Paneer Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000208', 'Paneer Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000209', 'Afgani Paneer Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000210', 'Tandoori Mushroom Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000211', 'Paneer Sheekh Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000212', 'Paneer Fingers Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000213', 'Bharwa Aloo Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000214', 'Tandoori Aloo Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000215', 'Veg Galouti Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000216', 'Veg Sheekh Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000217', 'Hara Bhara Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000218', 'Peshawari Tandoori Gobi Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000219', 'Veg Shammi Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000220', 'Kabuli Shammi Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000221', 'Bhindi Masala Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000222', 'Aloo Bhindi Masala Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000223', 'Tandoori Gobi Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000224', 'Sukha Ghiya Masala Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000225', 'Yellow Moong Dal Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000226', 'Green Moong Dal Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000227', 'Aloo Jeera Masala Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000228', 'Karela Masala Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000229', 'Sukha Channa Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000230', 'Baigan Ka Bhartha Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000231', 'Aloo Gobi Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000232', 'Aloo Shimla Mirch Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000233', 'Pindi Channa Masala Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000234', 'Chatpata Channa Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000235', 'Aloo Methi Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000236', 'Soya Aloo Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000237', 'Baghare Baigan Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000238', 'Mushroom 65 Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000239', 'Matar Corn Ki Tikki Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000240', 'Tandoori Aloo Imliwala Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000241', 'Palak Anjeer Ki Tikki Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000242', 'Dahi Ke Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000243', 'Subz Saufiya Sheekh Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000244', 'Paneer Kurkure Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000245', 'Bhutteyan Da Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000246', 'Baby Corn Fritters Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000247', 'Badam Aur Arbi Ka Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000248', 'Channa Dal Sheekh Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000249', 'Corn Potato Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000250', 'Corn Methi Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000251', 'Cottage Cheese Cutlets Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000252', 'Hare Channa Ke Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000253', 'Maake Galouti Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000254', 'Moong Dal Sheekh Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000255', 'Paneer Channa Sheekh Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000256', 'Papad Aloo Rolls Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000257', 'Papad Paneer Rolls Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000258', 'Rajma Galouti Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000259', 'Pudhina Aloo Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000260', 'Rajma Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000261', 'Palak Channa Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000262', 'Vegetable Shikampuri Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000263', 'Black Lentil Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000264', 'Corn and Lotus Steam Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000265', 'Sukhe Bhae Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000266', 'Kale Channa Ke Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000267', 'Palak Paneer Ke Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000268', 'Sarson Ka Saag Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000269', 'Soyabin Vadiya Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000270', 'Kalmi Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000271', 'Murgh Malai Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000272', 'Chicken Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000273', 'Murgh Lasooni Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000274', 'Murgh Haryali Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000275', 'Chicken Sheekh Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000276', 'Murgh Gilafi Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000277', 'Murgh Kalimirch Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000278', 'Reshmi Murgh Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000279', 'Achari Murgh Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000280', 'Zafrani Murgh Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000281', 'Banjara Murgh Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000282', 'Murgh Afgani Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000283', 'Pudina Chicken Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000284', 'Peshawari Murgh Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000285', 'Multani Murgh Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000286', 'Pahaadi Murgh Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000287', 'Haryali Chicken Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000288', 'Galouti Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000289', 'Badami Chicken Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000290', 'Boti Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000291', 'Ajwani Chicken Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000292', 'Lahoori Murgh Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000293', 'Vintage Tandoori Chicken Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000294', 'Murgh Ka Shola Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000295', 'Rajasthani Murgh Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000296', 'Awadhi Murgh Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000297', 'Chicken 65 Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000298', 'Grilled Chicken Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000299', 'Green Chilli Chicken Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000300', 'Lemon Chilli Chicken Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000301', 'Nawabi Murgh Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000302', 'Kashmiri Murgh Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000303', 'Murgh Kakkori Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000304', 'Murgh Shammi Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000305', 'Chilli Fish Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000306', 'Fish Tikka Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000307', 'Mutton Sheekh Kebab Combo', 'SG0000005', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000308', 'Veg Grill (without Cheese)', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000309', 'Veg Grill (with Cheese)', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000310', 'Veg Cheese Grill', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000311', 'Cheese Grill', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000312', 'Potato Onion Cheese Grill', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000313', 'Potato Cheese Grill', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000314', 'Paneer Cheese Grill', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000315', 'Paneer Veg Cheese Grill', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000316', 'Mushroom Veg Cheese Grill', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000317', 'Mushroom Chilly Cheese', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000318', 'Mushroom Onion Cheese', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000319', 'Mushroom Tomato Cheese', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000320', 'Mushroom Capsicum Cheese', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000321', 'Mushroom Paneer Cheese', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000322', 'Cheese PlainÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â Sandwich', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000323', 'Veg PlainÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â Sandwich', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000324', 'Corn SandwichÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â  Grill', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000325', 'Baby Corn Cheese Sandwich', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000326', 'Baby Corn Veg Cheese Grill', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000327', 'Maggi Noodles Veg', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000328', 'Maggi Noodles with Cheese', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000329', 'Maggi Noodles with Egg', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000330', 'Maggi Noodles with Paneer', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000331', 'Bombay Vada Pav', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000332', 'Bread Butter Jam Grill', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000333', 'Brown Bread Butter Grill', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000334', 'Fruit, Jam, Sandwich', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000335', 'Fruit, Jam, Sandwich with Cheese', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000336', 'Cheese Plain Sandwich', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000337', 'Jam Cheese Grill Sandwich', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000338', 'Mix Fruit Cheese Grill Sandwich', 'SG0000001', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000339', 'Aloo Pyaz Paratha- 2 Pcs', 'SG0000006', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000340', 'Paneer Pyaz Paratha- 2 Pcs', 'SG0000006', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000341', 'Amritsari Kulcha- 2 Pcs', 'SG0000006', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000342', 'Palak Pyaz Paratha- 2 Pcs', 'SG0000006', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000343', 'Gobi Pyaz Paratha- 2 Pcs', 'SG0000006', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000344', 'Mooli Pyaz Paratha- 2 Pcs', 'SG0000006', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000345', 'Chicken Keema Paratha- 2 Pcs', 'SG0000006', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000346', 'Mutton Keema Paratha- 2 Pcs', 'SG0000006', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000347', 'Missi Roti- 1 Pcs', 'SG0000006', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000348', '1- Pcs- Aloo Pyaz Paratha', 'SG0000006', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000349', '1- Pcs- Paneer Pyaz Paratha', 'SG0000006', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000350', '1- Pcs- Amritsari Kulcha Paratha', 'SG0000006', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000351', '1- Pcs- Palak Pyaz Paratha', 'SG0000006', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000352', '1- Pcs- Mooli Pyaz Paratha', 'SG0000006', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000353', '1- Pcs- Gobi Pyaz Paratha', 'SG0000006', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000354', '1- Pcs- Chicken Keema Paratha', 'SG0000006', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000355', '1- Pcs- Mutton Keema Paratha', 'SG0000006', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000356', 'Tandoori Roti- 1 Pcs', 'SG0000007', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000357', 'Lacha Paratha- 1 Pcs', 'SG0000007', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000358', 'Butter Naan- 1 Pcs', 'SG0000007', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000359', 'Fhulka- 1 Pcs', 'SG0000007', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000360', 'Rumali Roti- 1 Pcs', 'SG0000007', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000361', 'Butter Garlic Naan- 1 Pcs', 'SG0000007', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000362', 'Plain Naan- 1 Pcs', 'SG0000007', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000363', 'Mix Veg Stuffed Parathas- 2 Pcs', 'SG0000006', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000364', 'Sweet Lassi', 'SG0000008', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000365', 'Salt and Pepper Lassi', 'SG0000008', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000366', 'Shikanji', 'SG0000008', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000367', 'Jaljeera', 'SG0000008', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000368', 'Badam Milk', 'SG0000008', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000369', 'Butter Milk', 'SG0000008', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000370', 'Flavored Lassi', 'SG0000008', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000371', 'Fresh Lime Juice', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000372', 'Pudina Ginger Lime', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000373', 'Fresh Lime Soda', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000374', 'Nannari Soda', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000375', 'Lemon Soda Sweet and Salt', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000376', 'Black Jeera Soda', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000377', 'Fruit Beer Soda', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000378', 'Nannari Juice', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000379', 'Kumkuma Juice', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000380', 'Mosambi Juice', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000381', 'Orange Juice', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000382', 'Mango Juice', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000383', 'Apple Juice', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000384', 'Grape Juice', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000385', 'Pineapple Juice', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000386', 'Water Melon Juice', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000387', 'Musk Melon Juice', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000388', 'Mix Fruits Juice', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000389', 'Pomegranate Juice', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000390', 'Papaya Juice', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000391', 'Fruit Salad', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000392', 'Chikoo Milkshake', 'SG0000010', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000393', 'Apple Milkshake', 'SG0000010', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000394', 'Pomegranate Milkshake', 'SG0000010', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000395', 'Mango Milkshake', 'SG0000010', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000396', 'Nannari Milkshake', 'SG0000010', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000397', 'Butter Fruit Milkhake', 'SG0000010', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000398', 'Musk Melon Milkshake', 'SG0000010', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000399', 'Banana Milkshake', 'SG0000010', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000400', 'Papaya Milkshake', 'SG0000010', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000401', 'Strawberry Crush Juice', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000402', 'Mango Crush', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000403', 'Pineapple Crush Juice', 'SG0000009', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000404', 'Bowl of Dal- 120 Grams', 'SG0000011', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000405', 'Bowl of Rajma- 120 Grams', 'SG0000011', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000406', 'Bowl of Chola- 120 Grams', 'SG0000011', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000407', 'GRAVY- VEG(PANEER) - 120 Grams BOWL', 'SG0000011', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000408', 'GRAVY- NV (CHICKEN) - 120 Grams BOWL', 'SG0000011', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000409', 'GRAVY- NV (MUTTON) - 120 Grams BOWL', 'SG0000011', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000410', 'TIKKA- NV (CHICKEN) - 120 Grams BOWL', 'SG0000012', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000411', 'TIKKA- NV (MUTTON) - 120 Grams BOWL', 'SG0000012', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000412', 'TIKKA- NV ( FISH) - 120 Grams BOWL', 'SG0000011', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000413', 'GRAVY- NV (FISH) - 120 Grams BOWL', 'SG0000011', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000414', 'Tandoori Chicken- 4 Pcs', 'SG0000012', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000415', 'Tandoori Chicken- 8 Pcs', 'SG0000012', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000416', 'Afgani Chicken- 8 Pcs', 'SG0000012', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000417', 'Afgani Chicken- 4 Pcs', 'SG0000012', '', '', 'N', 0.00, 0, '', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:55', '2022-06-01 15:38:55', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', ' NA', '', '', 0, 0.00, 0.00, 'N', '', _binary '', 0, '', 0.00, 0.00, '', 'Y', '', 'N', 'Y', 0, 'Other'),
	('I000418', 'Chili Chicken Combo', 'SG0000001', '', '', 'N', 0.00, 1, '', ' ', 'SANGUINE', 'SANGUINE', '2022-08-10 16:39:30', '2022-08-10 16:39:30', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', '', '', 'A', 0, 0.00, 0.00, 'N', '', _binary '', 1, '', 1.00, 1.00, '', 'Y', '', 'N', 'N', 0, 'Others'),
	('I000419', 'Paneer Manchurian Combo', 'SG0000001', '', '', 'N', 0.00, 1, '', ' ', 'SANGUINE', 'SANGUINE', '2022-08-10 16:40:31', '2022-08-10 16:40:31', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', '', '', 'A', 0, 0.00, 0.00, 'N', '', _binary '', 1, '', 1.00, 1.00, '', 'Y', '', 'N', 'N', 0, 'Others'),
	('I000420', 'Open Butter Masala Dosa', 'SG0000001', '', '', 'N', 0.00, 1, '', ' ', 'SANGUINE', 'SANGUINE', '2022-08-10 16:41:59', '2022-08-10 16:41:59', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', '', '', 'A', 0, 0.00, 0.00, 'N', '', _binary '', 1, '', 1.00, 1.00, '', 'Y', '', 'N', 'N', 0, 'Others'),
	('I000421', 'Tea', 'SG0000001', '', '', 'N', 0.00, 1, '', ' ', 'SANGUINE', 'SANGUINE', '2022-08-10 16:42:41', '2022-08-10 16:42:41', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', '', '', 'A', 0, 0.00, 0.00, 'N', '', _binary '', 1, '', 1.00, 1.00, '', 'Y', '', 'N', 'N', 0, 'Others'),
	('I000422', 'Coffee', 'SG0000001', '', '', 'N', 0.00, 1, '', ' ', 'SANGUINE', 'SANGUINE', '2022-08-10 16:45:58', '2022-08-10 16:45:58', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', '', '', 'A', 0, 0.00, 0.00, 'N', '', _binary '', 1, '', 1.00, 1.00, '', 'Y', '', 'N', 'N', 0, 'Others'),
	('I000423', 'Chargrilled Burrito Wrap', 'SG0000001', '', '', 'N', 0.00, 1, '', ' ', 'SANGUINE', 'SANGUINE', '2022-08-10 16:47:15', '2022-08-10 16:47:15', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', '', '', 'A', 0, 0.00, 0.00, 'N', '', _binary '', 1, '', 1.00, 1.00, '', 'Y', '', 'N', 'N', 0, 'Others'),
	('I000424', 'Lemon Ice Tea', 'SG0000001', '', '', 'N', 0.00, 1, '', ' ', 'SANGUINE', 'SANGUINE', '2022-08-10 16:47:54', '2022-08-10 16:47:54', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', '', '', 'A', 0, 0.00, 0.00, 'N', '', _binary '', 1, '', 1.00, 1.00, '', 'Y', '', 'N', 'N', 0, 'Others'),
	('I000425', 'Naan', 'SG0000001', '', '', 'N', 0.00, 1, '', ' ', 'SANGUINE', 'SANGUINE', '2022-08-10 16:48:26', '2022-08-10 16:48:26', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', '', '', 'A', 0, 0.00, 0.00, 'N', '', _binary '', 1, '', 1.00, 1.00, '', 'Y', '', 'N', 'N', 0, 'Others'),
	('I000426', 'Tandoori Roti', 'SG0000001', '', '', 'N', 0.00, 1, '', ' ', 'SANGUINE', 'SANGUINE', '2022-08-10 16:49:10', '2022-08-10 16:49:10', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', '', '', 'A', 0, 0.00, 0.00, 'N', '', _binary '', 1, '', 1.00, 1.00, '', 'Y', '', 'N', 'N', 0, 'Others'),
	('I000427', 'Chicken Tikka', 'SG0000001', '', '', 'N', 0.00, 1, '', ' ', 'SANGUINE', 'SANGUINE', '2022-08-10 16:49:45', '2022-08-10 16:49:45', '412.005', 'N', 'Food', 'Y', '', 0.00, 0.00, 0, 'N', 0.0000, 'Y', 'Food', 0.00, 'N', 'N', '', '', 'A', 0, 0.00, 0.00, 'N', '', _binary '', 1, '', 1.00, 1.00, '', 'Y', '', 'N', 'N', 0, 'Others');
/*!40000 ALTER TABLE `tblitemmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblitemmasterlinkupdtl
DROP TABLE IF EXISTS `tblitemmasterlinkupdtl`;
CREATE TABLE IF NOT EXISTS `tblitemmasterlinkupdtl` (
  `strItemCode` varchar(20) NOT NULL,
  `strPOSCode` varchar(20) NOT NULL,
  `strWSProductCode` varchar(20) NOT NULL,
  `strWSProductName` varchar(200) NOT NULL,
  `strExciseBrandCode` varchar(20) NOT NULL DEFAULT '',
  `strExciseBrandName` varchar(200) NOT NULL DEFAULT '',
  `strClientCode` varchar(20) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL,
  `isModifier` varchar(1) NOT NULL DEFAULT 'N',
  KEY `strItemCode_strPOSCode_strWSProductCode_strClientCode` (`strItemCode`,`strPOSCode`,`strWSProductCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblitemmasterlinkupdtl: ~10 rows (approximately)
DELETE FROM `tblitemmasterlinkupdtl`;
/*!40000 ALTER TABLE `tblitemmasterlinkupdtl` DISABLE KEYS */;
INSERT INTO `tblitemmasterlinkupdtl` (`strItemCode`, `strPOSCode`, `strWSProductCode`, `strWSProductName`, `strExciseBrandCode`, `strExciseBrandName`, `strClientCode`, `strDataPostFlag`, `isModifier`) VALUES
	('I000418', 'P01', 'P0000013', 'Chili Chicken Combo', '', '', '412.005', 'N', 'N'),
	('I000419', 'P01', 'P0000014', 'Paneer Manchurian Combo', '', '', '412.005', 'N', 'N'),
	('I000420', 'P01', 'P0000015', 'Open Butter Masala Dosa', '', '', '412.005', 'N', 'N'),
	('I000421', 'P01', 'P0000016', 'Tea', '', '', '412.005', 'N', 'N'),
	('I000422', 'P01', 'P0000017', 'Coffee', '', '', '412.005', 'N', 'N'),
	('I000423', 'P01', 'P0000018', 'Chargrilled Burrito Wrap', '', '', '412.005', 'N', 'N'),
	('I000424', 'P01', 'P0000019', 'Lemon Ice Tea', '', '', '412.005', 'N', 'N'),
	('I000425', 'P01', 'P0000020', 'Naan', '', '', '412.005', 'N', 'N'),
	('I000426', 'P01', 'P0000021', 'Tandoori Roti', '', '', '412.005', 'N', 'N'),
	('I000427', 'P01', 'P0000022', 'Chicken Tikka', '', '', '412.005', 'N', 'N');
/*!40000 ALTER TABLE `tblitemmasterlinkupdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblitemmodofier
DROP TABLE IF EXISTS `tblitemmodofier`;
CREATE TABLE IF NOT EXISTS `tblitemmodofier` (
  `strItemCode` varchar(10) NOT NULL,
  `strModifierCode` varchar(20) NOT NULL,
  `strChargable` varchar(1) NOT NULL,
  `dblRate` decimal(18,4) NOT NULL,
  `strApplicable` varchar(1) NOT NULL,
  `strDefaultModifier` varchar(5) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strItemCode`,`strModifierCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblitemmodofier: ~0 rows (approximately)
DELETE FROM `tblitemmodofier`;
/*!40000 ALTER TABLE `tblitemmodofier` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblitemmodofier` ENABLE KEYS */;

-- Dumping structure for table infosys.tblitemorderingdtl
DROP TABLE IF EXISTS `tblitemorderingdtl`;
CREATE TABLE IF NOT EXISTS `tblitemorderingdtl` (
  `strItemCode` varchar(20) NOT NULL,
  `strPOSCode` varchar(20) NOT NULL,
  `strOrderCode` varchar(20) NOT NULL,
  `strClientCode` varchar(20) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblitemorderingdtl: ~0 rows (approximately)
DELETE FROM `tblitemorderingdtl`;
/*!40000 ALTER TABLE `tblitemorderingdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblitemorderingdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblitempricingauditdtl
DROP TABLE IF EXISTS `tblitempricingauditdtl`;
CREATE TABLE IF NOT EXISTS `tblitempricingauditdtl` (
  `strItemCode` varchar(10) NOT NULL,
  `strItemName` varchar(200) NOT NULL,
  `strPosCode` varchar(3) NOT NULL,
  `strMenuCode` varchar(10) NOT NULL,
  `strPopular` char(1) NOT NULL,
  `strPriceMonday` decimal(18,2) NOT NULL,
  `strPriceTuesday` decimal(18,2) NOT NULL,
  `strPriceWednesday` decimal(18,2) NOT NULL,
  `strPriceThursday` decimal(18,2) NOT NULL,
  `strPriceFriday` decimal(18,2) NOT NULL,
  `strPriceSaturday` decimal(18,2) NOT NULL,
  `strPriceSunday` decimal(18,2) NOT NULL,
  `dteFromDate` datetime NOT NULL,
  `dteToDate` datetime NOT NULL,
  `tmeTimeFrom` varchar(50) NOT NULL,
  `strAMPMFrom` varchar(4) NOT NULL,
  `tmeTimeTo` varchar(50) NOT NULL,
  `strAMPMTo` varchar(4) NOT NULL,
  `strCostCenterCode` varchar(4) NOT NULL,
  `strTextColor` varchar(15) NOT NULL,
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strAreaCode` varchar(10) NOT NULL,
  `strSubMenuHeadCode` varchar(12) NOT NULL,
  `strHourlyPricing` varchar(3) NOT NULL DEFAULT 'No',
  `longPricingId` bigint(20) NOT NULL,
  `strClientCode` varchar(15) NOT NULL DEFAULT '',
  `strFontColor` varchar(15) NOT NULL DEFAULT '',
  `strDiscountApply` varchar(1) NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblitempricingauditdtl: ~0 rows (approximately)
DELETE FROM `tblitempricingauditdtl`;
/*!40000 ALTER TABLE `tblitempricingauditdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblitempricingauditdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblitemrtemp
DROP TABLE IF EXISTS `tblitemrtemp`;
CREATE TABLE IF NOT EXISTS `tblitemrtemp` (
  `strSerialNo` varchar(10) NOT NULL,
  `strTableNo` varchar(10) NOT NULL,
  `strCardNo` varchar(50) DEFAULT NULL,
  `dblRedeemAmt` decimal(18,2) DEFAULT NULL,
  `strHomeDelivery` varchar(50) DEFAULT 'No',
  `strCustomerCode` varchar(50) DEFAULT NULL,
  `strPOSCode` varchar(3) NOT NULL,
  `strItemCode` varchar(50) NOT NULL,
  `strItemName` varchar(200) NOT NULL,
  `dblItemQuantity` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `strWaiterNo` varchar(10) NOT NULL,
  `strKOTNo` varchar(10) NOT NULL,
  `intPaxNo` int(11) NOT NULL,
  `strPrintYN` char(1) DEFAULT NULL,
  `strManualKOTNo` varchar(10) NOT NULL DEFAULT '',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strOrderBefore` varchar(10) NOT NULL DEFAULT 'No',
  `strTakeAwayYesNo` varchar(10) NOT NULL DEFAULT 'No',
  `tdhComboItemYN` varchar(1) NOT NULL DEFAULT 'N',
  `strDelBoyCode` varchar(10) NOT NULL DEFAULT '',
  `strNCKotYN` varchar(1) NOT NULL DEFAULT 'N',
  `strCustomerName` varchar(100) NOT NULL DEFAULT '',
  `strActiveYN` varchar(1) NOT NULL DEFAULT 'N',
  `dblBalance` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblCreditLimit` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strCounterCode` varchar(4) NOT NULL DEFAULT '',
  `strPromoCode` varchar(10) NOT NULL DEFAULT '',
  `dblRate` decimal(18,2) NOT NULL DEFAULT '0.00',
  `intId` bigint(20) DEFAULT NULL,
  `strCardType` varchar(50) NOT NULL DEFAULT '',
  `dblTaxAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strReason` varchar(50) NOT NULL DEFAULT 'No',
  `strItemProcessed` varchar(1) NOT NULL DEFAULT 'N',
  `tmeOrderProcessing` time NOT NULL DEFAULT '00:00:00',
  `tmeOrderPickup` time NOT NULL DEFAULT '00:00:00',
  `strItemPickedUp` varchar(1) NOT NULL DEFAULT 'N',
  `strTableStatus` varchar(20) NOT NULL DEFAULT 'Normal',
  `strDeviceMACAdd` varchar(100) NOT NULL DEFAULT '',
  `strDeviceId` varchar(100) NOT NULL DEFAULT '',
  `strCRMRewardId` varchar(50) NOT NULL DEFAULT '',
  `dblFiredQty` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblPrintQty` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strBillNote` varchar(100) NOT NULL DEFAULT '',
  `strTDHKotNo` varchar(10) NOT NULL DEFAULT '',
  `strTDHItemCode` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`strTableNo`,`strItemCode`,`strKOTNo`,`strItemName`,`strSerialNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblitemrtemp: ~0 rows (approximately)
DELETE FROM `tblitemrtemp`;
/*!40000 ALTER TABLE `tblitemrtemp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblitemrtemp` ENABLE KEYS */;

-- Dumping structure for table infosys.tblitemrtemp_bck
DROP TABLE IF EXISTS `tblitemrtemp_bck`;
CREATE TABLE IF NOT EXISTS `tblitemrtemp_bck` (
  `strSerialNo` varchar(10) NOT NULL,
  `strTableNo` varchar(10) NOT NULL,
  `strCardNo` varchar(50) DEFAULT NULL,
  `dblRedeemAmt` decimal(18,2) DEFAULT NULL,
  `strHomeDelivery` varchar(50) DEFAULT 'No',
  `strCustomerCode` varchar(50) DEFAULT NULL,
  `strPOSCode` varchar(3) NOT NULL,
  `strItemCode` varchar(50) NOT NULL,
  `strItemName` varchar(200) NOT NULL,
  `dblItemQuantity` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `strWaiterNo` varchar(10) NOT NULL,
  `strKOTNo` varchar(10) NOT NULL DEFAULT '',
  `intPaxNo` int(11) NOT NULL,
  `strPrintYN` char(1) DEFAULT NULL,
  `strManualKOTNo` varchar(10) NOT NULL DEFAULT '',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strOrderBefore` varchar(10) NOT NULL DEFAULT 'No',
  `strTakeAwayYesNo` varchar(10) NOT NULL DEFAULT 'No',
  `tdhComboItemYN` varchar(1) NOT NULL DEFAULT 'N',
  `strDelBoyCode` varchar(10) NOT NULL DEFAULT '',
  `strNCKotYN` varchar(1) NOT NULL DEFAULT 'N',
  `strCustomerName` varchar(100) NOT NULL DEFAULT '',
  `strActiveYN` varchar(1) NOT NULL DEFAULT 'N',
  `dblBalance` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblCreditLimit` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strCounterCode` varchar(4) NOT NULL DEFAULT '',
  `strPromoCode` varchar(10) NOT NULL DEFAULT '',
  `dblRate` decimal(18,2) NOT NULL DEFAULT '0.00',
  `intId` bigint(20) DEFAULT NULL,
  `strCardType` varchar(50) NOT NULL DEFAULT '',
  `dblTaxAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strReason` varchar(50) NOT NULL DEFAULT 'No',
  `strItemProcessed` varchar(1) NOT NULL DEFAULT 'N',
  `tmeOrderProcessing` time NOT NULL DEFAULT '00:00:00',
  `tmeOrderPickup` time NOT NULL DEFAULT '00:00:00',
  `strItemPickedUp` varchar(1) NOT NULL DEFAULT 'N',
  `strTableStatus` varchar(20) NOT NULL DEFAULT 'Normal',
  `strDeviceMACAdd` varchar(100) NOT NULL DEFAULT '',
  `strDeviceId` varchar(100) NOT NULL DEFAULT '',
  `strCRMRewardId` varchar(50) NOT NULL DEFAULT '',
  `dblFiredQty` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblPrintQty` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strBillNote` varchar(100) NOT NULL DEFAULT '',
  `strTDHKotNo` varchar(10) NOT NULL DEFAULT '',
  `strTDHItemCode` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`strTableNo`,`strItemCode`,`strKOTNo`,`strItemName`,`strSerialNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblitemrtemp_bck: ~0 rows (approximately)
DELETE FROM `tblitemrtemp_bck`;
/*!40000 ALTER TABLE `tblitemrtemp_bck` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblitemrtemp_bck` ENABLE KEYS */;

-- Dumping structure for table infosys.tblitemtemp
DROP TABLE IF EXISTS `tblitemtemp`;
CREATE TABLE IF NOT EXISTS `tblitemtemp` (
  `strSerialno` decimal(10,1) DEFAULT NULL,
  `strPosCode` varchar(3) NOT NULL,
  `strItemCode` varchar(15) NOT NULL,
  `strItemName` varchar(200) NOT NULL,
  `dblItemQuantity` decimal(18,2) NOT NULL,
  `dblAmount` varchar(10) NOT NULL,
  `strUserCreated` varchar(10) DEFAULT NULL,
  `strUserEdited` varchar(10) DEFAULT NULL,
  `dteDateCreated` datetime DEFAULT NULL,
  `dteDateEdited` datetime DEFAULT NULL,
  `tdhComboItemYN` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblitemtemp: ~0 rows (approximately)
DELETE FROM `tblitemtemp`;
/*!40000 ALTER TABLE `tblitemtemp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblitemtemp` ENABLE KEYS */;

-- Dumping structure for table infosys.tblkdsprocess
DROP TABLE IF EXISTS `tblkdsprocess`;
CREATE TABLE IF NOT EXISTS `tblkdsprocess` (
  `strDocNo` varchar(20) NOT NULL,
  `strBP` char(1) NOT NULL,
  `dteBookProcessTime` datetime NOT NULL,
  `dteUserCreated` datetime NOT NULL,
  `strUserCreated` varchar(50) NOT NULL,
  `dteUserEdited` datetime NOT NULL,
  `strUserEdited` varchar(50) NOT NULL,
  `strKDSName` varchar(10) NOT NULL,
  `strItemCode` varchar(20) NOT NULL,
  `strCostCenterCode` varchar(10) NOT NULL,
  `strWaiterNo` varchar(20) NOT NULL,
  `dteKOTDateAndTime` datetime NOT NULL,
  KEY `strDocNo` (`strDocNo`),
  KEY `strItemCode` (`strItemCode`),
  KEY `strCostCenterCode` (`strCostCenterCode`),
  KEY `strWaiterNo` (`strWaiterNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblkdsprocess: ~0 rows (approximately)
DELETE FROM `tblkdsprocess`;
/*!40000 ALTER TABLE `tblkdsprocess` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblkdsprocess` ENABLE KEYS */;

-- Dumping structure for table infosys.tblkottaxdtl
DROP TABLE IF EXISTS `tblkottaxdtl`;
CREATE TABLE IF NOT EXISTS `tblkottaxdtl` (
  `strTableNo` varchar(10) NOT NULL,
  `strKOTNo` varchar(10) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `dblTaxAmt` decimal(18,2) NOT NULL,
  KEY `strKOTNo` (`strKOTNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblkottaxdtl: ~0 rows (approximately)
DELETE FROM `tblkottaxdtl`;
/*!40000 ALTER TABLE `tblkottaxdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblkottaxdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tbllaststoreadvbookingbill
DROP TABLE IF EXISTS `tbllaststoreadvbookingbill`;
CREATE TABLE IF NOT EXISTS `tbllaststoreadvbookingbill` (
  `strPosCode` varchar(50) DEFAULT NULL,
  `strAdvBookingNo` varchar(50) DEFAULT NULL,
  KEY `strPosCode` (`strPosCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbllaststoreadvbookingbill: ~0 rows (approximately)
DELETE FROM `tbllaststoreadvbookingbill`;
/*!40000 ALTER TABLE `tbllaststoreadvbookingbill` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllaststoreadvbookingbill` ENABLE KEYS */;

-- Dumping structure for table infosys.tbllinevoid
DROP TABLE IF EXISTS `tbllinevoid`;
CREATE TABLE IF NOT EXISTS `tbllinevoid` (
  `strSerialno` decimal(10,1) DEFAULT NULL,
  `strPosCode` varchar(3) NOT NULL,
  `strItemCode` varchar(200) NOT NULL,
  `strItemName` varchar(50) NOT NULL,
  `dblItemQuantity` decimal(18,2) NOT NULL,
  `dblAmount` varchar(10) NOT NULL,
  `strUserCreated` varchar(10) DEFAULT NULL,
  `strUserEdited` varchar(10) DEFAULT NULL,
  `dteDateCreated` datetime DEFAULT NULL,
  `dteDateEdited` datetime DEFAULT NULL,
  `strKOTNo` varchar(10) NOT NULL DEFAULT 'NA',
  KEY `strPosCode` (`strPosCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbllinevoid: ~0 rows (approximately)
DELETE FROM `tbllinevoid`;
/*!40000 ALTER TABLE `tbllinevoid` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllinevoid` ENABLE KEYS */;

-- Dumping structure for table infosys.tblloyaltypointcustomerdtl
DROP TABLE IF EXISTS `tblloyaltypointcustomerdtl`;
CREATE TABLE IF NOT EXISTS `tblloyaltypointcustomerdtl` (
  `strLoyaltyCode` varchar(15) NOT NULL,
  `strCustomerTypeCode` varchar(15) NOT NULL,
  `strClientCode` varchar(15) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblloyaltypointcustomerdtl: ~0 rows (approximately)
DELETE FROM `tblloyaltypointcustomerdtl`;
/*!40000 ALTER TABLE `tblloyaltypointcustomerdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblloyaltypointcustomerdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblloyaltypointmenuhddtl
DROP TABLE IF EXISTS `tblloyaltypointmenuhddtl`;
CREATE TABLE IF NOT EXISTS `tblloyaltypointmenuhddtl` (
  `strLoyaltyCode` varchar(15) NOT NULL,
  `strMenuCode` varchar(15) NOT NULL,
  `strClientCode` varchar(15) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblloyaltypointmenuhddtl: ~0 rows (approximately)
DELETE FROM `tblloyaltypointmenuhddtl`;
/*!40000 ALTER TABLE `tblloyaltypointmenuhddtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblloyaltypointmenuhddtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblloyaltypointposdtl
DROP TABLE IF EXISTS `tblloyaltypointposdtl`;
CREATE TABLE IF NOT EXISTS `tblloyaltypointposdtl` (
  `strLoyaltyCode` varchar(15) NOT NULL,
  `strPOSCode` varchar(15) NOT NULL,
  `strClientCode` varchar(15) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblloyaltypointposdtl: ~0 rows (approximately)
DELETE FROM `tblloyaltypointposdtl`;
/*!40000 ALTER TABLE `tblloyaltypointposdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblloyaltypointposdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblloyaltypoints
DROP TABLE IF EXISTS `tblloyaltypoints`;
CREATE TABLE IF NOT EXISTS `tblloyaltypoints` (
  `strLoyaltyCode` varchar(10) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblLoyaltyPoints` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblLoyaltyPoints1` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblLoyaltyValue` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dteFromDate` datetime NOT NULL,
  `dteToDate` datetime NOT NULL,
  PRIMARY KEY (`strLoyaltyCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblloyaltypoints: ~0 rows (approximately)
DELETE FROM `tblloyaltypoints`;
/*!40000 ALTER TABLE `tblloyaltypoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblloyaltypoints` ENABLE KEYS */;

-- Dumping structure for table infosys.tblloyaltypointsubgroupdtl
DROP TABLE IF EXISTS `tblloyaltypointsubgroupdtl`;
CREATE TABLE IF NOT EXISTS `tblloyaltypointsubgroupdtl` (
  `strLoyaltyCode` varchar(15) NOT NULL,
  `strCode` varchar(15) NOT NULL,
  `strClientCode` varchar(15) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblloyaltypointsubgroupdtl: ~0 rows (approximately)
DELETE FROM `tblloyaltypointsubgroupdtl`;
/*!40000 ALTER TABLE `tblloyaltypointsubgroupdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblloyaltypointsubgroupdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblmasteroperationstatus
DROP TABLE IF EXISTS `tblmasteroperationstatus`;
CREATE TABLE IF NOT EXISTS `tblmasteroperationstatus` (
  `strTableName` varchar(50) NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  PRIMARY KEY (`strTableName`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblmasteroperationstatus: ~31 rows (approximately)
DELETE FROM `tblmasteroperationstatus`;
/*!40000 ALTER TABLE `tblmasteroperationstatus` DISABLE KEYS */;
INSERT INTO `tblmasteroperationstatus` (`strTableName`, `dteDateEdited`, `strClientCode`) VALUES
	('AdvanceOrderType', '2022-06-01 15:24:06', '412.005'),
	('Area', '2022-06-01 15:24:06', '412.005'),
	('AreaWiseDC', '2022-06-01 15:24:06', '412.005'),
	('BillSeries', '2022-08-10 18:57:59', '412.005'),
	('Building', '2022-06-01 15:24:06', '412.005'),
	('Characteristics', '2022-06-01 15:24:06', '412.005'),
	('CostCenter', '2022-06-01 15:24:06', '412.005'),
	('Counter', '2022-06-01 15:24:06', '412.005'),
	('Customer', '2022-06-01 15:24:06', '412.005'),
	('CustomerType', '2022-06-01 15:24:06', '412.005'),
	('DelBoyCat', '2022-06-01 15:24:06', '412.005'),
	('DeliveryBoy', '2022-06-01 15:24:06', '412.005'),
	('DiscountMaster', '2022-06-01 15:24:06', '412.005'),
	('Factory', '2022-06-01 15:24:06', '412.005'),
	('Group', '2022-06-01 15:24:06', '412.005'),
	('Menu', '2022-06-01 15:24:06', '412.005'),
	('MenuItem', '2022-08-10 16:49:45', '412.005'),
	('MenuItemPricing', '2022-08-10 16:50:03', '412.005'),
	('Modifier', '2022-06-01 15:24:06', '412.005'),
	('Order', '2022-06-01 15:24:06', '412.005'),
	('PosWiseItemWiseIncentive', '2022-06-01 15:24:06', '412.005'),
	('PromoGroup', '2022-06-01 15:24:06', '412.005'),
	('Promotion', '2022-06-01 15:24:06', '412.005'),
	('Reason', '2022-06-01 15:24:06', '412.005'),
	('Settlement', '2022-06-01 15:24:06', '412.005'),
	('SubGroup', '2022-06-01 15:24:06', '412.005'),
	('SubMenuHead', '2022-06-01 15:24:06', '412.005'),
	('Table', '2022-06-01 15:24:06', '412.005'),
	('Tax', '2022-06-01 15:24:06', '412.005'),
	('User', '2022-06-01 15:24:06', '412.005'),
	('Waiter', '2022-06-01 15:24:06', '412.005');
/*!40000 ALTER TABLE `tblmasteroperationstatus` ENABLE KEYS */;

-- Dumping structure for table infosys.tblmenuhd
DROP TABLE IF EXISTS `tblmenuhd`;
CREATE TABLE IF NOT EXISTS `tblmenuhd` (
  `strMenuCode` varchar(10) NOT NULL,
  `strMenuName` varchar(50) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `intSequence` int(11) NOT NULL DEFAULT '0',
  `strOperational` varchar(1) NOT NULL DEFAULT 'N',
  `strImagePath` varchar(500) NOT NULL DEFAULT '',
  `imgImage` longblob NOT NULL,
  PRIMARY KEY (`strMenuCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblmenuhd: ~12 rows (approximately)
DELETE FROM `tblmenuhd`;
/*!40000 ALTER TABLE `tblmenuhd` DISABLE KEYS */;
INSERT INTO `tblmenuhd` (`strMenuCode`, `strMenuName`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`, `strClientCode`, `strDataPostFlag`, `intSequence`, `strOperational`, `strImagePath`, `imgImage`) VALUES
	('M000001', 'Indian Street Food', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0, 'Y', '', _binary ''),
	('M000002', 'Biryani', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0, 'Y', '', _binary ''),
	('M000003', 'Solo Meal', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0, 'Y', '', _binary ''),
	('M000004', 'Gravy Combos', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0, 'Y', '', _binary ''),
	('M000005', 'Tikka Combos', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0, 'Y', '', _binary ''),
	('M000006', 'Tandoori Paratha', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0, 'Y', '', _binary ''),
	('M000007', 'Breads', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0, 'Y', '', _binary ''),
	('M000008', 'Drinks- Homemade', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0, 'Y', '', _binary ''),
	('M000009', 'Fresh Juice', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0, 'Y', '', _binary ''),
	('M000010', 'MilkShake', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0, 'Y', '', _binary ''),
	('M000011', 'Add On', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0, 'Y', '', _binary ''),
	('M000012', 'Tikkas', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0, 'Y', '', _binary '');
/*!40000 ALTER TABLE `tblmenuhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblmenuitempricingdtl
DROP TABLE IF EXISTS `tblmenuitempricingdtl`;
CREATE TABLE IF NOT EXISTS `tblmenuitempricingdtl` (
  `strItemCode` varchar(10) NOT NULL,
  `strItemName` varchar(200) NOT NULL,
  `strPosCode` varchar(3) NOT NULL,
  `strMenuCode` varchar(10) NOT NULL,
  `strPopular` char(1) NOT NULL,
  `strPriceMonday` decimal(18,4) NOT NULL,
  `strPriceTuesday` decimal(18,4) NOT NULL,
  `strPriceWednesday` decimal(18,4) NOT NULL,
  `strPriceThursday` decimal(18,4) NOT NULL,
  `strPriceFriday` decimal(18,4) NOT NULL,
  `strPriceSaturday` decimal(18,4) NOT NULL,
  `strPriceSunday` decimal(18,4) NOT NULL,
  `dteFromDate` datetime NOT NULL,
  `dteToDate` datetime NOT NULL,
  `tmeTimeFrom` varchar(50) NOT NULL,
  `strAMPMFrom` varchar(4) NOT NULL,
  `tmeTimeTo` varchar(50) NOT NULL,
  `strAMPMTo` varchar(4) NOT NULL,
  `strCostCenterCode` varchar(4) NOT NULL,
  `strTextColor` varchar(15) NOT NULL,
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strAreaCode` varchar(10) NOT NULL,
  `strSubMenuHeadCode` varchar(12) NOT NULL,
  `strHourlyPricing` varchar(3) NOT NULL DEFAULT 'No',
  `longPricingId` bigint(20) NOT NULL AUTO_INCREMENT,
  `strClientCode` varchar(15) NOT NULL DEFAULT '',
  `strFontColor` varchar(15) NOT NULL DEFAULT '',
  `strDiscountApply` varchar(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`longPricingId`)
) ENGINE=InnoDB AUTO_INCREMENT=429 DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblmenuitempricingdtl: ~428 rows (approximately)
DELETE FROM `tblmenuitempricingdtl`;
/*!40000 ALTER TABLE `tblmenuitempricingdtl` DISABLE KEYS */;
INSERT INTO `tblmenuitempricingdtl` (`strItemCode`, `strItemName`, `strPosCode`, `strMenuCode`, `strPopular`, `strPriceMonday`, `strPriceTuesday`, `strPriceWednesday`, `strPriceThursday`, `strPriceFriday`, `strPriceSaturday`, `strPriceSunday`, `dteFromDate`, `dteToDate`, `tmeTimeFrom`, `strAMPMFrom`, `tmeTimeTo`, `strAMPMTo`, `strCostCenterCode`, `strTextColor`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`, `strAreaCode`, `strSubMenuHeadCode`, `strHourlyPricing`, `longPricingId`, `strClientCode`, `strFontColor`, `strDiscountApply`) VALUES
	('I000001', 'Omlette & 2 Pcs- White Bread', 'P01', 'M000001', 'N', 36.0000, 36.0000, 36.0000, 36.0000, 36.0000, 36.0000, 36.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 1, '412.005', 'Black', 'Y'),
	('I000002', 'Boiled Egg- Single', 'P01', 'M000001', 'N', 10.0000, 10.0000, 10.0000, 10.0000, 10.0000, 10.0000, 10.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 2, '412.005', 'Black', 'Y'),
	('I000003', 'Bulls Eye & 2 Pcs - White Bread', 'P01', 'M000001', 'N', 36.0000, 36.0000, 36.0000, 36.0000, 36.0000, 36.0000, 36.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 3, '412.005', 'Black', 'Y'),
	('I000004', 'Egg Burji & 2 Pcs - White Bread', 'P01', 'M000001', 'N', 36.0000, 36.0000, 36.0000, 36.0000, 36.0000, 36.0000, 36.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 4, '412.005', 'Black', 'Y'),
	('I000005', 'Egg Burji & 1 Plain Paratha', 'P01', 'M000001', 'N', 36.0000, 36.0000, 36.0000, 36.0000, 36.0000, 36.0000, 36.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 5, '412.005', 'Black', 'Y'),
	('I000006', 'Omlette & 2 Pcs - Brown Bread', 'P01', 'M000001', 'N', 37.0000, 37.0000, 37.0000, 37.0000, 37.0000, 37.0000, 37.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 6, '412.005', 'Black', 'Y'),
	('I000007', 'Bulls Eye & 2 Pcs - Brown Bread', 'P01', 'M000001', 'N', 37.0000, 37.0000, 37.0000, 37.0000, 37.0000, 37.0000, 37.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 7, '412.005', 'Black', 'Y'),
	('I000008', 'Egg Burji & 2 Pcs - Brown Bread', 'P01', 'M000001', 'N', 37.0000, 37.0000, 37.0000, 37.0000, 37.0000, 37.0000, 37.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 8, '412.005', 'Black', 'Y'),
	('I000009', 'Butter Toast - 2 Pcs White Bread', 'P01', 'M000001', 'N', 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 9, '412.005', 'Black', 'Y'),
	('I000010', 'Butter Toast - 2 Pcs Brown Bread', 'P01', 'M000001', 'N', 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 10, '412.005', 'Black', 'Y'),
	('I000011', 'Idli - 2 Pcs & Paneer Butter Masala', 'P01', 'M000001', 'N', 68.0000, 68.0000, 68.0000, 68.0000, 68.0000, 68.0000, 68.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 11, '412.005', 'Black', 'Y'),
	('I000012', 'Idli - 2 Pcs & Butter Chicken', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 12, '412.005', 'Black', 'Y'),
	('I000013', 'Idli - 2 Pcs & Chicken Curry', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 13, '412.005', 'Black', 'Y'),
	('I000014', 'Idli - 2 Pcs & Veg Gravy', 'P01', 'M000001', 'N', 63.0000, 63.0000, 63.0000, 63.0000, 63.0000, 63.0000, 63.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 14, '412.005', 'Black', 'Y'),
	('I000015', 'Aloo & 2 Pcs Poori', 'P01', 'M000001', 'N', 54.0000, 54.0000, 54.0000, 54.0000, 54.0000, 54.0000, 54.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 15, '412.005', 'Black', 'Y'),
	('I000016', 'Khichdi', 'P01', 'M000001', 'N', 32.0000, 32.0000, 32.0000, 32.0000, 32.0000, 32.0000, 32.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 16, '412.005', 'Black', 'Y'),
	('I000017', 'Besan Chilla - 1 Pcs', 'P01', 'M000001', 'N', 32.0000, 32.0000, 32.0000, 32.0000, 32.0000, 32.0000, 32.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 17, '412.005', 'Black', 'Y'),
	('I000018', 'Moong Dal Chilla - 1 Pcs', 'P01', 'M000001', 'N', 32.0000, 32.0000, 32.0000, 32.0000, 32.0000, 32.0000, 32.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 18, '412.005', 'Black', 'Y'),
	('I000019', 'Poha- 200 Grams', 'P01', 'M000001', 'N', 37.0000, 37.0000, 37.0000, 37.0000, 37.0000, 37.0000, 37.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 19, '412.005', 'Black', 'Y'),
	('I000020', 'Upma- 200 Grams', 'P01', 'M000001', 'N', 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 20, '412.005', 'Black', 'Y'),
	('I000021', 'Bombay Toast - 2Pcs', 'P01', 'M000001', 'N', 32.0000, 32.0000, 32.0000, 32.0000, 32.0000, 32.0000, 32.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 21, '412.005', 'Black', 'Y'),
	('I000022', 'Eggy Bread - 2 Pcs', 'P01', 'M000001', 'N', 32.0000, 32.0000, 32.0000, 32.0000, 32.0000, 32.0000, 32.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 22, '412.005', 'Black', 'Y'),
	('I000023', 'Dal Stuffed Poori- 2 Pcs', 'P01', 'M000001', 'N', 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 23, '412.005', 'Black', 'Y'),
	('I000024', 'Dal Kachori with Aloo', 'P01', 'M000001', 'N', 44.0000, 44.0000, 44.0000, 44.0000, 44.0000, 44.0000, 44.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 24, '412.005', 'Black', 'Y'),
	('I000025', 'Dalia Namkeen with Veggies', 'P01', 'M000001', 'N', 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 25, '412.005', 'Black', 'Y'),
	('I000026', 'Dalia Namkeen with Chicken', 'P01', 'M000001', 'N', 82.0000, 82.0000, 82.0000, 82.0000, 82.0000, 82.0000, 82.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 26, '412.005', 'Black', 'Y'),
	('I000027', 'Oats Namkeen with Veggies', 'P01', 'M000001', 'N', 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 27, '412.005', 'Black', 'Y'),
	('I000028', 'Oats Namkeen with Chicken', 'P01', 'M000001', 'N', 82.0000, 82.0000, 82.0000, 82.0000, 82.0000, 82.0000, 82.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 28, '412.005', 'Black', 'Y'),
	('I000029', 'Bread Upma', 'P01', 'M000001', 'N', 44.0000, 44.0000, 44.0000, 44.0000, 44.0000, 44.0000, 44.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 29, '412.005', 'Black', 'Y'),
	('I000030', 'Black Channa & 1 Pcs Paratha', 'P01', 'M000001', 'N', 49.0000, 49.0000, 49.0000, 49.0000, 49.0000, 49.0000, 49.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 30, '412.005', 'Black', 'Y'),
	('I000031', 'Paneer Bhurji & 1 Pcs Paratha', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 31, '412.005', 'Black', 'Y'),
	('I000032', 'Paneer Bhurji & 2 Pcs Bread', 'P01', 'M000001', 'N', 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 32, '412.005', 'Black', 'Y'),
	('I000033', 'Paneer Bhurji & 2 Pcs Pav', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 33, '412.005', 'Black', 'Y'),
	('I000034', 'Paneer Bhurji & 1 Pcs Kulcha', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 34, '412.005', 'Black', 'Y'),
	('I000035', 'Chicken Keema & 2 Pcs Pav', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 35, '412.005', 'Black', 'Y'),
	('I000036', 'Chicken Keema & 1 Pcs Kulcha', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 36, '412.005', 'Black', 'Y'),
	('I000037', 'Chicken Keema & 1 Pcs Plain Paratha', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 37, '412.005', 'Black', 'Y'),
	('I000038', 'Chicken Keema & 2 Pcs Bread', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 38, '412.005', 'Black', 'Y'),
	('I000039', 'Aloo Jeera  & 1 Pcs Plain Paratha', 'P01', 'M000001', 'N', 44.0000, 44.0000, 44.0000, 44.0000, 44.0000, 44.0000, 44.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 39, '412.005', 'Black', 'Y'),
	('I000040', 'Sabudhan Kichdi', 'P01', 'M000001', 'N', 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 40, '412.005', 'Black', 'Y'),
	('I000041', 'Chicken Tikka Roll', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 41, '412.005', 'Black', 'Y'),
	('I000042', 'Murgh Malai Roll', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 42, '412.005', 'Black', 'Y'),
	('I000043', 'Murgh Haryali Roll', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 43, '412.005', 'Black', 'Y'),
	('I000044', 'Tandoori Chicken Roll', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 44, '412.005', 'Black', 'Y'),
	('I000045', 'Afgani Tikka Roll', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 45, '412.005', 'Black', 'Y'),
	('I000046', 'Chicken Sheekh Roll', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 46, '412.005', 'Black', 'Y'),
	('I000047', 'Butter Chicken Roll', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 47, '412.005', 'Black', 'Y'),
	('I000048', 'Chicken Tikka Masala Roll', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 48, '412.005', 'Black', 'Y'),
	('I000049', 'Paneer Tikka Masala Roll', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 49, '412.005', 'Black', 'Y'),
	('I000050', 'Achari Chicken Tikka Roll', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 50, '412.005', 'Black', 'Y'),
	('I000051', 'Kadai Veg Roll', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 51, '412.005', 'Black', 'Y'),
	('I000052', 'Paneer Tikka Roll', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 52, '412.005', 'Black', 'Y'),
	('I000053', 'Haryali Paneer Tikka Roll', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 53, '412.005', 'Black', 'Y'),
	('I000054', 'Malai Paneer Tikka Roll', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 54, '412.005', 'Black', 'Y'),
	('I000055', 'Veg Sheekh Roll', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 55, '412.005', 'Black', 'Y'),
	('I000056', 'Achari Paneer Tikka Roll', 'P01', 'M000001', 'N', 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, 76.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 56, '412.005', 'Black', 'Y'),
	('I000057', 'Samosa- Aloo', 'P01', 'M000001', 'N', 17.0000, 17.0000, 17.0000, 17.0000, 17.0000, 17.0000, 17.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 57, '412.005', 'Black', 'Y'),
	('I000058', 'Kachori- Aloo', 'P01', 'M000001', 'N', 17.0000, 17.0000, 17.0000, 17.0000, 17.0000, 17.0000, 17.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 58, '412.005', 'Black', 'Y'),
	('I000059', 'Desi Fries', 'P01', 'M000001', 'N', 37.0000, 37.0000, 37.0000, 37.0000, 37.0000, 37.0000, 37.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 59, '412.005', 'Black', 'Y'),
	('I000060', 'Paneer Bread Pakora', 'P01', 'M000001', 'N', 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 60, '412.005', 'Black', 'Y'),
	('I000061', 'Paneer Pakora', 'P01', 'M000001', 'N', 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 61, '412.005', 'Black', 'Y'),
	('I000062', 'Mix Veg Pakora', 'P01', 'M000001', 'N', 49.0000, 49.0000, 49.0000, 49.0000, 49.0000, 49.0000, 49.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 62, '412.005', 'Black', 'Y'),
	('I000063', 'Onion Pakora', 'P01', 'M000001', 'N', 49.0000, 49.0000, 49.0000, 49.0000, 49.0000, 49.0000, 49.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 63, '412.005', 'Black', 'Y'),
	('I000064', 'Plain Bread Pakora', 'P01', 'M000001', 'N', 36.0000, 36.0000, 36.0000, 36.0000, 36.0000, 36.0000, 36.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 64, '412.005', 'Black', 'Y'),
	('I000065', 'Plain Tea', 'P01', 'M000001', 'N', 11.0000, 11.0000, 11.0000, 11.0000, 11.0000, 11.0000, 11.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 65, '412.005', 'Black', 'Y'),
	('I000066', 'Masala Tea', 'P01', 'M000001', 'N', 12.0000, 12.0000, 12.0000, 12.0000, 12.0000, 12.0000, 12.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 66, '412.005', 'Black', 'Y'),
	('I000067', 'Green Tea', 'P01', 'M000001', 'N', 15.0000, 15.0000, 15.0000, 15.0000, 15.0000, 15.0000, 15.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 67, '412.005', 'Black', 'Y'),
	('I000068', 'Lemon Tea', 'P01', 'M000001', 'N', 13.0000, 13.0000, 13.0000, 13.0000, 13.0000, 13.0000, 13.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 68, '412.005', 'Black', 'Y'),
	('I000069', 'Black Tea', 'P01', 'M000001', 'N', 11.0000, 11.0000, 11.0000, 11.0000, 11.0000, 11.0000, 11.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 69, '412.005', 'Black', 'Y'),
	('I000070', 'Black Coffee', 'P01', 'M000001', 'N', 11.0000, 11.0000, 11.0000, 11.0000, 11.0000, 11.0000, 11.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 70, '412.005', 'Black', 'Y'),
	('I000071', 'Plain Coffee', 'P01', 'M000001', 'N', 11.0000, 11.0000, 11.0000, 11.0000, 11.0000, 11.0000, 11.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 71, '412.005', 'Black', 'Y'),
	('I000072', 'Nescafe Vanilla Latte', 'P01', 'M000001', 'N', 44.0000, 44.0000, 44.0000, 44.0000, 44.0000, 44.0000, 44.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 72, '412.005', 'Black', 'Y'),
	('I000073', 'Nescafe Hazelnut Latte', 'P01', 'M000001', 'N', 44.0000, 44.0000, 44.0000, 44.0000, 44.0000, 44.0000, 44.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 73, '412.005', 'Black', 'Y'),
	('I000074', 'Caramel Latte', 'P01', 'M000001', 'N', 44.0000, 44.0000, 44.0000, 44.0000, 44.0000, 44.0000, 44.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 74, '412.005', 'Black', 'Y'),
	('I000075', 'Pav Samosa', 'P01', 'M000001', 'N', 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 75, '412.005', 'Black', 'Y'),
	('I000076', 'Bun Samosa', 'P01', 'M000001', 'N', 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 76, '412.005', 'Black', 'Y'),
	('I000077', 'Samosa Sandwich', 'P01', 'M000001', 'N', 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 77, '412.005', 'Black', 'Y'),
	('I000078', 'Chole & 2 Pcs Kulcha', 'P01', 'M000001', 'N', 68.0000, 68.0000, 68.0000, 68.0000, 68.0000, 68.0000, 68.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 78, '412.005', 'Black', 'Y'),
	('I000079', 'Hyderabadi Bun Kabab- Chicken', 'P01', 'M000001', 'N', 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, 56.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 79, '412.005', 'Black', 'Y'),
	('I000080', 'Chicken Dum Biryani', 'P01', 'M000002', 'N', 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 80, '412.005', 'Black', 'Y'),
	('I000081', 'Hyderabadi Chicken Dum Biryani', 'P01', 'M000002', 'N', 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 81, '412.005', 'Black', 'Y'),
	('I000082', 'Mughlai Chicken Dum Biryani', 'P01', 'M000002', 'N', 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 82, '412.005', 'Black', 'Y'),
	('I000083', 'Kashmiri Chicken Dum Biryani', 'P01', 'M000002', 'N', 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 83, '412.005', 'Black', 'Y'),
	('I000084', 'Butter Chicken Dum Biryani', 'P01', 'M000002', 'N', 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 84, '412.005', 'Black', 'Y'),
	('I000085', 'Butter Chicken Pulao', 'P01', 'M000002', 'N', 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 85, '412.005', 'Black', 'Y'),
	('I000086', 'Lucknowi Chicken Dum Biryani', 'P01', 'M000002', 'N', 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 86, '412.005', 'Black', 'Y'),
	('I000087', 'Nawabi Chicken Dum Biryani', 'P01', 'M000002', 'N', 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 87, '412.005', 'Black', 'Y'),
	('I000088', 'Awadhi Chicken Dum Biryani', 'P01', 'M000002', 'N', 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 88, '412.005', 'Black', 'Y'),
	('I000089', 'Malabar Chicken Dum Biryani', 'P01', 'M000002', 'N', 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 89, '412.005', 'Black', 'Y'),
	('I000090', 'Bawarchi Chicken Dum Biryani', 'P01', 'M000002', 'N', 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 90, '412.005', 'Black', 'Y'),
	('I000091', 'Calicut Chicken Biryani', 'P01', 'M000002', 'N', 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 91, '412.005', 'Black', 'Y'),
	('I000092', 'Chicken Tikka Dum Biryani', 'P01', 'M000002', 'N', 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 92, '412.005', 'Black', 'Y'),
	('I000093', 'Murgh Punjabi Dum Biryani', 'P01', 'M000002', 'N', 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, 115.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 93, '412.005', 'Black', 'Y'),
	('I000094', 'Mutton Dum Biryani', 'P01', 'M000002', 'N', 147.0000, 147.0000, 147.0000, 147.0000, 147.0000, 147.0000, 147.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 94, '412.005', 'Black', 'Y'),
	('I000095', 'Egg Dum Biryani', 'P01', 'M000002', 'N', 92.0000, 92.0000, 92.0000, 92.0000, 92.0000, 92.0000, 92.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 95, '412.005', 'Black', 'Y'),
	('I000096', 'Paneer Makhani Dum Biryani', 'P01', 'M000002', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 96, '412.005', 'Black', 'Y'),
	('I000097', 'SEP Chicken Dum Biryani', 'P01', 'M000002', 'N', 118.0000, 118.0000, 118.0000, 118.0000, 118.0000, 118.0000, 118.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 97, '412.005', 'Black', 'Y'),
	('I000098', 'Palak Paneer Dum Biryani', 'P01', 'M000002', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 98, '412.005', 'Black', 'Y'),
	('I000099', 'Paneer Tikka Dum Biryani', 'P01', 'M000002', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 99, '412.005', 'Black', 'Y'),
	('I000100', 'Tandoori Chicken Dum Biryani', 'P01', 'M000002', 'N', 118.0000, 118.0000, 118.0000, 118.0000, 118.0000, 118.0000, 118.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 100, '412.005', 'Black', 'Y'),
	('I000101', 'Veg & Paneer Dum Biryani', 'P01', 'M000002', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 101, '412.005', 'Black', 'Y'),
	('I000102', 'Kadhi Chawal', 'P01', 'M000003', 'N', 85.0000, 85.0000, 85.0000, 85.0000, 85.0000, 85.0000, 85.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 102, '412.005', 'Black', 'Y'),
	('I000103', 'Rajma Chawal', 'P01', 'M000003', 'N', 85.0000, 85.0000, 85.0000, 85.0000, 85.0000, 85.0000, 85.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 103, '412.005', 'Black', 'Y'),
	('I000104', 'Chole Chawal', 'P01', 'M000003', 'N', 85.0000, 85.0000, 85.0000, 85.0000, 85.0000, 85.0000, 85.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 104, '412.005', 'Black', 'Y'),
	('I000105', 'Dal Tadka Chawal', 'P01', 'M000003', 'N', 85.0000, 85.0000, 85.0000, 85.0000, 85.0000, 85.0000, 85.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 105, '412.005', 'Black', 'Y'),
	('I000106', 'Dal Makhani Chawal', 'P01', 'M000003', 'N', 67.0000, 67.0000, 67.0000, 67.0000, 67.0000, 67.0000, 67.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 106, '412.005', 'Black', 'Y'),
	('I000107', 'Paneer Makhani Chawal', 'P01', 'M000003', 'N', 97.0000, 97.0000, 97.0000, 97.0000, 97.0000, 97.0000, 97.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 107, '412.005', 'Black', 'Y'),
	('I000108', 'Butter Chicken Rice', 'P01', 'M000003', 'N', 103.0000, 103.0000, 103.0000, 103.0000, 103.0000, 103.0000, 103.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 108, '412.005', 'Black', 'Y'),
	('I000109', 'Chicken Chawal', 'P01', 'M000003', 'N', 97.0000, 97.0000, 97.0000, 97.0000, 97.0000, 97.0000, 97.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 109, '412.005', 'Black', 'Y'),
	('I000110', 'Palak Paneer & Rice', 'P01', 'M000003', 'N', 97.0000, 97.0000, 97.0000, 97.0000, 97.0000, 97.0000, 97.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 110, '412.005', 'Black', 'Y'),
	('I000111', 'Matar Paneer & Rice', 'P01', 'M000003', 'N', 97.0000, 97.0000, 97.0000, 97.0000, 97.0000, 97.0000, 97.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 111, '412.005', 'Black', 'Y'),
	('I000112', 'Egg Curry & Rice', 'P01', 'M000003', 'N', 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 112, '412.005', 'Black', 'Y'),
	('I000113', 'Dal Tadka Roti', 'P01', 'M000003', 'N', 62.0000, 62.0000, 62.0000, 62.0000, 62.0000, 62.0000, 62.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 113, '412.005', 'Black', 'Y'),
	('I000114', 'Dal Makhani Roti', 'P01', 'M000003', 'N', 62.0000, 62.0000, 62.0000, 62.0000, 62.0000, 62.0000, 62.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 114, '412.005', 'Black', 'Y'),
	('I000115', 'Rajma & Roti', 'P01', 'M000003', 'N', 74.0000, 74.0000, 74.0000, 74.0000, 74.0000, 74.0000, 74.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 115, '412.005', 'Black', 'Y'),
	('I000116', 'Chole &  Roti', 'P01', 'M000003', 'N', 74.0000, 74.0000, 74.0000, 74.0000, 74.0000, 74.0000, 74.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 116, '412.005', 'Black', 'Y'),
	('I000117', 'Kadhi Pakora & Roti', 'P01', 'M000003', 'N', 74.0000, 74.0000, 74.0000, 74.0000, 74.0000, 74.0000, 74.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 117, '412.005', 'Black', 'Y'),
	('I000118', 'Paneer Makhani Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 118, '412.005', 'Black', 'Y'),
	('I000119', 'Paneer Dhaniya Adraki Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 119, '412.005', 'Black', 'Y'),
	('I000120', 'Palak Paneer Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 120, '412.005', 'Black', 'Y'),
	('I000121', 'Matar Paneer Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 121, '412.005', 'Black', 'Y'),
	('I000122', 'Peshawari Paneer Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 122, '412.005', 'Black', 'Y'),
	('I000123', 'Paneer Do Pyaza Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 123, '412.005', 'Black', 'Y'),
	('I000124', 'Achari Paneer Masala Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 124, '412.005', 'Black', 'Y'),
	('I000125', 'Patiala Kadhai Paneer Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 125, '412.005', 'Black', 'Y'),
	('I000126', 'Punjabi Paneer Tikka Masala Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 126, '412.005', 'Black', 'Y'),
	('I000127', 'Amritsari Paneer Butter Masala Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 127, '412.005', 'Black', 'Y'),
	('I000128', 'Paneer Pasanda Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 128, '412.005', 'Black', 'Y'),
	('I000129', 'Paneer Lababdar Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 129, '412.005', 'Black', 'Y'),
	('I000130', 'Paneer Bhurji Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 130, '412.005', 'Black', 'Y'),
	('I000131', 'Cheese Tomato Paneer Masala Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 131, '412.005', 'Black', 'Y'),
	('I000132', 'Malai Kofta Combo', 'P01', 'M000004', 'N', 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 132, '412.005', 'Black', 'Y'),
	('I000133', 'Nargisi Kofta Curry Combo', 'P01', 'M000004', 'N', 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 133, '412.005', 'Black', 'Y'),
	('I000134', 'Haryali Veg Kofta Curry Combo', 'P01', 'M000004', 'N', 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 134, '412.005', 'Black', 'Y'),
	('I000135', 'Aloo Methi Malai Combo', 'P01', 'M000004', 'N', 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 135, '412.005', 'Black', 'Y'),
	('I000136', 'Navratan Korma Curry Combo', 'P01', 'M000004', 'N', 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 136, '412.005', 'Black', 'Y'),
	('I000137', 'Kadhai Mushroom Masala Combo', 'P01', 'M000004', 'N', 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 137, '412.005', 'Black', 'Y'),
	('I000138', 'Matar Mushroom Combo', 'P01', 'M000004', 'N', 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 138, '412.005', 'Black', 'Y'),
	('I000139', 'Makai Matar Khumb Masala Combo', 'P01', 'M000004', 'N', 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 139, '412.005', 'Black', 'Y'),
	('I000140', 'Mushroom Do Pyaza Combo', 'P01', 'M000004', 'N', 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 140, '412.005', 'Black', 'Y'),
	('I000141', 'Bagicha Mushroom Combo', 'P01', 'M000004', 'N', 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 141, '412.005', 'Black', 'Y'),
	('I000142', 'Subji Miloni Combo', 'P01', 'M000004', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 142, '412.005', 'Black', 'Y'),
	('I000143', 'Dum Ki Sabji Combo', 'P01', 'M000004', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 143, '412.005', 'Black', 'Y'),
	('I000144', 'Milijuli Sabzi Combo', 'P01', 'M000004', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 144, '412.005', 'Black', 'Y'),
	('I000145', 'Kadhai Veg Combo', 'P01', 'M000004', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 145, '412.005', 'Black', 'Y'),
	('I000146', 'Veg Keema Masala Combo', 'P01', 'M000004', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 146, '412.005', 'Black', 'Y'),
	('I000147', 'Beans Aloo Combo', 'P01', 'M000004', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 147, '412.005', 'Black', 'Y'),
	('I000148', 'Nizami Handi Combo', 'P01', 'M000004', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 148, '412.005', 'Black', 'Y'),
	('I000149', 'Subz Diwani Handi Combo', 'P01', 'M000004', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 149, '412.005', 'Black', 'Y'),
	('I000150', 'Veg Korma Masala Combo', 'P01', 'M000004', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 150, '412.005', 'Black', 'Y'),
	('I000151', 'Veg Kolapuri Combo', 'P01', 'M000004', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 151, '412.005', 'Black', 'Y'),
	('I000152', 'Veg Jalfrezi Combo', 'P01', 'M000004', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 152, '412.005', 'Black', 'Y'),
	('I000153', 'Palak Corn Curry Combo', 'P01', 'M000004', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 153, '412.005', 'Black', 'Y'),
	('I000154', 'Palak Soya Curry Combo', 'P01', 'M000004', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 154, '412.005', 'Black', 'Y'),
	('I000155', 'Methi Malai Matar Combo', 'P01', 'M000004', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 155, '412.005', 'Black', 'Y'),
	('I000156', 'Aloo Achrai Masala Combo', 'P01', 'M000004', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 156, '412.005', 'Black', 'Y'),
	('I000157', 'Dum Aloo Combo', 'P01', 'M000004', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 157, '412.005', 'Black', 'Y'),
	('I000158', 'Aloo Matar Combo', 'P01', 'M000004', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 158, '412.005', 'Black', 'Y'),
	('I000159', 'Ghiya Masala Combo', 'P01', 'M000004', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 159, '412.005', 'Black', 'Y'),
	('I000160', 'Aloo Achari Masala Combo', 'P01', 'M000004', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 160, '412.005', 'Black', 'Y'),
	('I000161', 'Dahiwale Aloo Masala Combo', 'P01', 'M000004', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 161, '412.005', 'Black', 'Y'),
	('I000162', 'Ghiya Matar Combo', 'P01', 'M000004', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 162, '412.005', 'Black', 'Y'),
	('I000163', 'Jeera Aloo Combo', 'P01', 'M000004', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 163, '412.005', 'Black', 'Y'),
	('I000164', 'Murgh Raada Masala Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 164, '412.005', 'Black', 'Y'),
	('I000165', 'Chicken Curry Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 165, '412.005', 'Black', 'Y'),
	('I000166', 'Murgh Makhani Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 166, '412.005', 'Black', 'Y'),
	('I000167', 'Butter Chicken Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 167, '412.005', 'Black', 'Y'),
	('I000168', 'Murgh Dhaniya Adraki Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 168, '412.005', 'Black', 'Y'),
	('I000169', 'Kadai Chicken Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 169, '412.005', 'Black', 'Y'),
	('I000170', 'Murgh Do Pyaza Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 170, '412.005', 'Black', 'Y'),
	('I000171', 'Chicken Keema Kalazi Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 171, '412.005', 'Black', 'Y'),
	('I000172', 'Murgh Haveli Spl Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 172, '412.005', 'Black', 'Y'),
	('I000173', 'Murgh Saag Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 173, '412.005', 'Black', 'Y'),
	('I000174', 'Tawa Hyderabadi Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 174, '412.005', 'Black', 'Y'),
	('I000175', 'Chicken Tikka Masala Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 175, '412.005', 'Black', 'Y'),
	('I000176', 'Bhuna Chicken Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 176, '412.005', 'Black', 'Y'),
	('I000177', 'Tawa Chicken Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 177, '412.005', 'Black', 'Y'),
	('I000178', 'Kastoori Murgh Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 178, '412.005', 'Black', 'Y'),
	('I000179', 'Mughali Murgh Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 179, '412.005', 'Black', 'Y'),
	('I000180', 'Chef Special Murgh Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 180, '412.005', 'Black', 'Y'),
	('I000181', 'Amristari Butter Chicken Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 181, '412.005', 'Black', 'Y'),
	('I000182', 'Chicken Korma Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 182, '412.005', 'Black', 'Y'),
	('I000183', 'Tandoori Chicken Masala Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 183, '412.005', 'Black', 'Y'),
	('I000184', 'Murgh Shaami Kebab Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 184, '412.005', 'Black', 'Y'),
	('I000185', 'Chicken Kofta Curry Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 185, '412.005', 'Black', 'Y'),
	('I000186', 'Anda Keema Masala Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 186, '412.005', 'Black', 'Y'),
	('I000187', 'Palak Chicken Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 187, '412.005', 'Black', 'Y'),
	('I000188', 'Murgh Methi Malai Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 188, '412.005', 'Black', 'Y'),
	('I000189', 'Achrai Murgh Masala Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 189, '412.005', 'Black', 'Y'),
	('I000190', 'Chicken Chaap Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 190, '412.005', 'Black', 'Y'),
	('I000191', 'Murgh Sheekh Masala Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 191, '412.005', 'Black', 'Y'),
	('I000192', 'Teekha Murgh Curry Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 192, '412.005', 'Black', 'Y'),
	('I000193', 'Chaana Aur Khaata Pyaz Ka Murgh Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 193, '412.005', 'Black', 'Y'),
	('I000194', 'Chicken Patiala Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 194, '412.005', 'Black', 'Y'),
	('I000195', 'Dhaba Chicken Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 195, '412.005', 'Black', 'Y'),
	('I000196', 'Murgh Dhaniya Korma Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 196, '412.005', 'Black', 'Y'),
	('I000197', 'Meat Beliram Combo', 'P01', 'M000004', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 197, '412.005', 'Black', 'Y'),
	('I000198', 'Mutton Kakori Kebab Combo', 'P01', 'M000004', 'N', 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 198, '412.005', 'Black', 'Y'),
	('I000199', 'Punjabi Mutton Masala Combo', 'P01', 'M000004', 'N', 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 199, '412.005', 'Black', 'Y'),
	('I000200', 'Gosht Nihari Combo', 'P01', 'M000004', 'N', 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 200, '412.005', 'Black', 'Y'),
	('I000201', 'Mutton Raada Masala Combo', 'P01', 'M000004', 'N', 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 201, '412.005', 'Black', 'Y'),
	('I000202', 'Mutton Rogan Gosht Combo', 'P01', 'M000004', 'N', 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 202, '412.005', 'Black', 'Y'),
	('I000203', 'Gosht Taar Korma Combo', 'P01', 'M000004', 'N', 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 203, '412.005', 'Black', 'Y'),
	('I000204', 'Mutton Handi Masala Combo', 'P01', 'M000004', 'N', 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 204, '412.005', 'Black', 'Y'),
	('I000205', 'Mutton Keema Masala Combo', 'P01', 'M000004', 'N', 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, 144.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 205, '412.005', 'Black', 'Y'),
	('I000206', 'Peshawari Paneer Tikka Combo', 'P01', 'M000005', 'N', 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 206, '412.005', 'Black', 'Y'),
	('I000207', 'Hariyali Paneer Tikka Combo', 'P01', 'M000005', 'N', 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 207, '412.005', 'Black', 'Y'),
	('I000208', 'Paneer Tikka Combo', 'P01', 'M000005', 'N', 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 208, '412.005', 'Black', 'Y'),
	('I000209', 'Afgani Paneer Tikka Combo', 'P01', 'M000005', 'N', 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 209, '412.005', 'Black', 'Y'),
	('I000210', 'Tandoori Mushroom Combo', 'P01', 'M000005', 'N', 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 210, '412.005', 'Black', 'Y'),
	('I000211', 'Paneer Sheekh Combo', 'P01', 'M000005', 'N', 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 211, '412.005', 'Black', 'Y'),
	('I000212', 'Paneer Fingers Combo', 'P01', 'M000005', 'N', 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 212, '412.005', 'Black', 'Y'),
	('I000213', 'Bharwa Aloo Combo', 'P01', 'M000005', 'N', 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 213, '412.005', 'Black', 'Y'),
	('I000214', 'Tandoori Aloo Combo', 'P01', 'M000005', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 214, '412.005', 'Black', 'Y'),
	('I000215', 'Veg Galouti Combo', 'P01', 'M000005', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 215, '412.005', 'Black', 'Y'),
	('I000216', 'Veg Sheekh Combo', 'P01', 'M000005', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 216, '412.005', 'Black', 'Y'),
	('I000217', 'Hara Bhara Kebab Combo', 'P01', 'M000005', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 217, '412.005', 'Black', 'Y'),
	('I000218', 'Peshawari Tandoori Gobi Combo', 'P01', 'M000005', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 218, '412.005', 'Black', 'Y'),
	('I000219', 'Veg Shammi Kebab Combo', 'P01', 'M000005', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 219, '412.005', 'Black', 'Y'),
	('I000220', 'Kabuli Shammi Kebab Combo', 'P01', 'M000005', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 220, '412.005', 'Black', 'Y'),
	('I000221', 'Bhindi Masala Combo', 'P01', 'M000005', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 221, '412.005', 'Black', 'Y'),
	('I000222', 'Aloo Bhindi Masala Combo', 'P01', 'M000005', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 222, '412.005', 'Black', 'Y'),
	('I000223', 'Tandoori Gobi Combo', 'P01', 'M000005', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 223, '412.005', 'Black', 'Y'),
	('I000224', 'Sukha Ghiya Masala Combo', 'P01', 'M000005', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 224, '412.005', 'Black', 'Y'),
	('I000225', 'Yellow Moong Dal Combo', 'P01', 'M000005', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 225, '412.005', 'Black', 'Y'),
	('I000226', 'Green Moong Dal Combo', 'P01', 'M000005', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 226, '412.005', 'Black', 'Y'),
	('I000227', 'Aloo Jeera Masala Combo', 'P01', 'M000005', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 227, '412.005', 'Black', 'Y'),
	('I000228', 'Karela Masala Combo', 'P01', 'M000005', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 228, '412.005', 'Black', 'Y'),
	('I000229', 'Sukha Channa Combo', 'P01', 'M000005', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 229, '412.005', 'Black', 'Y'),
	('I000230', 'Baigan Ka Bhartha Combo', 'P01', 'M000005', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 230, '412.005', 'Black', 'Y'),
	('I000231', 'Aloo Gobi Combo', 'P01', 'M000005', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 231, '412.005', 'Black', 'Y'),
	('I000232', 'Aloo Shimla Mirch Combo', 'P01', 'M000005', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 232, '412.005', 'Black', 'Y'),
	('I000233', 'Pindi Channa Masala Combo', 'P01', 'M000005', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 233, '412.005', 'Black', 'Y'),
	('I000234', 'Chatpata Channa Combo', 'P01', 'M000005', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 234, '412.005', 'Black', 'Y'),
	('I000235', 'Aloo Methi Combo', 'P01', 'M000005', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 235, '412.005', 'Black', 'Y'),
	('I000236', 'Soya Aloo Combo', 'P01', 'M000005', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 236, '412.005', 'Black', 'Y'),
	('I000237', 'Baghare Baigan Combo', 'P01', 'M000005', 'N', 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, 87.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 237, '412.005', 'Black', 'Y'),
	('I000238', 'Mushroom 65 Combo', 'P01', 'M000005', 'N', 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 238, '412.005', 'Black', 'Y'),
	('I000239', 'Matar Corn Ki Tikki Combo', 'P01', 'M000005', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 239, '412.005', 'Black', 'Y'),
	('I000240', 'Tandoori Aloo Imliwala Combo', 'P01', 'M000005', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 240, '412.005', 'Black', 'Y'),
	('I000241', 'Palak Anjeer Ki Tikki Combo', 'P01', 'M000005', 'N', 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 241, '412.005', 'Black', 'Y'),
	('I000242', 'Dahi Ke Kebab Combo', 'P01', 'M000005', 'N', 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 242, '412.005', 'Black', 'Y'),
	('I000243', 'Subz Saufiya Sheekh Combo', 'P01', 'M000005', 'N', 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 243, '412.005', 'Black', 'Y'),
	('I000244', 'Paneer Kurkure Kebab Combo', 'P01', 'M000005', 'N', 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 244, '412.005', 'Black', 'Y'),
	('I000245', 'Bhutteyan Da Kebab Combo', 'P01', 'M000005', 'N', 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, 95.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 245, '412.005', 'Black', 'Y'),
	('I000246', 'Baby Corn Fritters Combo', 'P01', 'M000005', 'N', 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 246, '412.005', 'Black', 'Y'),
	('I000247', 'Badam Aur Arbi Ka Kebab Combo', 'P01', 'M000005', 'N', 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 247, '412.005', 'Black', 'Y'),
	('I000248', 'Channa Dal Sheekh Kebab Combo', 'P01', 'M000005', 'N', 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 248, '412.005', 'Black', 'Y'),
	('I000249', 'Corn Potato Kebab Combo', 'P01', 'M000005', 'N', 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 249, '412.005', 'Black', 'Y'),
	('I000250', 'Corn Methi Kebab Combo', 'P01', 'M000005', 'N', 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 250, '412.005', 'Black', 'Y'),
	('I000251', 'Cottage Cheese Cutlets Combo', 'P01', 'M000005', 'N', 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, 114.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 251, '412.005', 'Black', 'Y'),
	('I000252', 'Hare Channa Ke Kebab Combo', 'P01', 'M000005', 'N', 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 252, '412.005', 'Black', 'Y'),
	('I000253', 'Maake Galouti Kebab Combo', 'P01', 'M000005', 'N', 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, 106.0000, '2022-06-01 15:38:56', '2023-06-01 15:38:56', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C01', 'Grey', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56', 'A001', '', 'No', 253, '412.005', 'Black', 'Y'),
	('I000418', 'Chili Chicken Combo', 'P01', 'M000001', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 00:00:00', '2122-08-10 00:00:00', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C02', 'Grey', 'SANGUINE', 'SANGUINE', '2022-08-10 16:39:59', '2022-08-10 16:39:59', 'A001', 'NA', 'No', 419, '412.005', 'Black', 'Y'),
	('I000419', 'Paneer Manchurian Combo', 'P01', 'M000001', 'N', 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, 119.0000, '2022-06-01 00:00:00', '2122-08-10 00:00:00', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C02', 'Grey', 'SANGUINE', 'SANGUINE', '2022-08-10 16:41:01', '2022-08-10 16:41:01', 'A001', 'NA', 'No', 420, '412.005', 'Black', 'Y'),
	('I000420', 'Open Butter Masala Dosa', 'P01', 'M000001', 'N', 422.0000, 422.0000, 422.0000, 422.0000, 422.0000, 422.0000, 422.0000, '2022-06-01 00:00:00', '2122-08-10 00:00:00', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C05', 'Grey', 'SANGUINE', 'SANGUINE', '2022-08-10 16:42:23', '2022-08-10 16:42:23', 'A001', 'NA', 'No', 421, '412.005', 'Black', 'Y'),
	('I000421', 'Tea', 'P01', 'M000001', 'N', 13.0000, 13.0000, 13.0000, 13.0000, 13.0000, 13.0000, 13.0000, '2022-06-01 00:00:00', '2122-08-10 00:00:00', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C05', 'Grey', 'SANGUINE', 'SANGUINE', '2022-08-10 16:44:58', '2022-08-10 16:44:58', 'A001', 'NA', 'No', 422, '412.005', 'Black', 'Y'),
	('I000422', 'Coffee', 'P01', 'M000001', 'N', 13.0000, 13.0000, 13.0000, 13.0000, 13.0000, 13.0000, 13.0000, '2022-06-01 00:00:00', '2122-08-10 00:00:00', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C05', 'Grey', 'SANGUINE', 'SANGUINE', '2022-08-10 16:46:34', '2022-08-10 16:46:34', 'A001', 'NA', 'No', 423, '412.005', 'Black', 'Y'),
	('I000423', 'Chargrilled Burrito Wrap', 'P01', 'M000001', 'N', 125.0000, 125.0000, 125.0000, 125.0000, 125.0000, 125.0000, 125.0000, '2022-06-01 00:00:00', '2122-08-10 00:00:00', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C04', 'Grey', 'SANGUINE', 'SANGUINE', '2022-08-10 16:47:38', '2022-08-10 16:47:38', 'A001', 'NA', 'No', 424, '412.005', 'Black', 'Y'),
	('I000424', 'Lemon Ice Tea', 'P01', 'M000001', 'N', 48.0000, 48.0000, 48.0000, 48.0000, 48.0000, 48.0000, 48.0000, '2022-06-01 00:00:00', '2122-08-10 00:00:00', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C04', 'Grey', 'SANGUINE', 'SANGUINE', '2022-08-10 16:48:06', '2022-08-10 16:48:06', 'A001', 'NA', 'No', 425, '412.005', 'Black', 'Y'),
	('I000425', 'Naan', 'P01', 'M000001', 'N', 30.0000, 30.0000, 30.0000, 30.0000, 30.0000, 30.0000, 30.0000, '2022-06-01 00:00:00', '2122-08-10 00:00:00', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C03', 'Grey', 'SANGUINE', 'SANGUINE', '2022-08-10 16:48:52', '2022-08-10 16:48:52', 'A001', 'NA', 'No', 426, '412.005', 'Black', 'Y'),
	('I000426', 'Tandoori Roti', 'P01', 'M000001', 'N', 20.0000, 20.0000, 20.0000, 20.0000, 20.0000, 20.0000, 20.0000, '2022-06-01 00:00:00', '2122-08-10 00:00:00', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C03', 'Grey', 'SANGUINE', 'SANGUINE', '2022-08-10 16:49:32', '2022-08-10 16:49:32', 'A001', 'NA', 'No', 427, '412.005', 'Black', 'Y'),
	('I000427', 'Chicken Tikka', 'P01', 'M000001', 'N', 160.0000, 160.0000, 160.0000, 160.0000, 160.0000, 160.0000, 160.0000, '2022-06-01 00:00:00', '2122-08-10 00:00:00', 'HH:MM:S', 'AM', 'HH:MM:S', 'AM', 'C03', 'Grey', 'SANGUINE', 'SANGUINE', '2022-08-10 16:50:03', '2022-08-10 16:50:03', 'A001', 'NA', 'No', 428, '412.005', 'Black', 'Y');
/*!40000 ALTER TABLE `tblmenuitempricingdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblmenuitempricinghd
DROP TABLE IF EXISTS `tblmenuitempricinghd`;
CREATE TABLE IF NOT EXISTS `tblmenuitempricinghd` (
  `strPosCode` varchar(10) NOT NULL,
  `strMenuCode` varchar(10) NOT NULL,
  `strMenuName` varchar(50) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblmenuitempricinghd: ~12 rows (approximately)
DELETE FROM `tblmenuitempricinghd`;
/*!40000 ALTER TABLE `tblmenuitempricinghd` DISABLE KEYS */;
INSERT INTO `tblmenuitempricinghd` (`strPosCode`, `strMenuCode`, `strMenuName`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`) VALUES
	('P01', 'M000001', 'Indian Street Food', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56'),
	('P01', 'M000002', 'Biryani', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56'),
	('P01', 'M000003', 'Solo Meal', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56'),
	('P01', 'M000004', 'Gravy Combos', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56'),
	('P01', 'M000005', 'Tikka Combos', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56'),
	('P01', 'M000006', 'Tandoori Paratha', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56'),
	('P01', 'M000007', 'Breads', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56'),
	('P01', 'M000008', 'Drinks- Homemade', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56'),
	('P01', 'M000009', 'Fresh Juice', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56'),
	('P01', 'M000010', 'MilkShake', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56'),
	('P01', 'M000011', 'Add On', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56'),
	('P01', 'M000012', 'Tikkas', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:56', '2022-06-01 15:38:56');
/*!40000 ALTER TABLE `tblmenuitempricinghd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblmodifiergrouphd
DROP TABLE IF EXISTS `tblmodifiergrouphd`;
CREATE TABLE IF NOT EXISTS `tblmodifiergrouphd` (
  `strModifierGroupCode` varchar(12) NOT NULL,
  `strModifierGroupName` varchar(50) NOT NULL,
  `strModifierGroupShortName` varchar(14) NOT NULL,
  `strApplyMaxItemLimit` varchar(1) NOT NULL,
  `intItemMaxLimit` double NOT NULL,
  `strOperational` varchar(3) NOT NULL DEFAULT 'YES',
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strApplyMinItemLimit` varchar(1) NOT NULL DEFAULT 'N',
  `intItemMinLimit` double NOT NULL,
  `intSequenceNo` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`strModifierGroupCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblmodifiergrouphd: ~0 rows (approximately)
DELETE FROM `tblmodifiergrouphd`;
/*!40000 ALTER TABLE `tblmodifiergrouphd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmodifiergrouphd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblmodifiermaster
DROP TABLE IF EXISTS `tblmodifiermaster`;
CREATE TABLE IF NOT EXISTS `tblmodifiermaster` (
  `strModifierCode` varchar(20) NOT NULL,
  `strModifierName` varchar(200) NOT NULL,
  `strModifierDesc` varchar(200) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strModifierGroupCode` varchar(12) NOT NULL DEFAULT 'NA',
  PRIMARY KEY (`strModifierCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblmodifiermaster: ~0 rows (approximately)
DELETE FROM `tblmodifiermaster`;
/*!40000 ALTER TABLE `tblmodifiermaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmodifiermaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblnonavailableitems
DROP TABLE IF EXISTS `tblnonavailableitems`;
CREATE TABLE IF NOT EXISTS `tblnonavailableitems` (
  `strItemCode` varchar(10) NOT NULL,
  `strItemName` varchar(100) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `dteDate` datetime NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `strUserCreated` varchar(50) NOT NULL,
  PRIMARY KEY (`strItemCode`,`strPOSCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblnonavailableitems: ~0 rows (approximately)
DELETE FROM `tblnonavailableitems`;
/*!40000 ALTER TABLE `tblnonavailableitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblnonavailableitems` ENABLE KEYS */;

-- Dumping structure for table infosys.tblnonchargablekot
DROP TABLE IF EXISTS `tblnonchargablekot`;
CREATE TABLE IF NOT EXISTS `tblnonchargablekot` (
  `strTableNo` varchar(10) NOT NULL,
  `strItemCode` varchar(20) NOT NULL,
  `dblQuantity` decimal(18,4) NOT NULL,
  `dblRate` decimal(18,4) NOT NULL,
  `strKOTNo` varchar(15) NOT NULL,
  `strEligibleForVoid` varchar(1) NOT NULL DEFAULT 'Y',
  `strClientCode` varchar(15) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strReasonCode` varchar(10) NOT NULL,
  `strRemark` varchar(50) NOT NULL,
  `dteNCKOTDate` datetime NOT NULL,
  `strUserCreated` varchar(50) NOT NULL DEFAULT '',
  `strUserEdited` varchar(50) NOT NULL DEFAULT '',
  `strPOSCode` varchar(10) NOT NULL,
  `strItemName` varchar(200) NOT NULL,
  `strBillNote` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblnonchargablekot: ~0 rows (approximately)
DELETE FROM `tblnonchargablekot`;
/*!40000 ALTER TABLE `tblnonchargablekot` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblnonchargablekot` ENABLE KEYS */;

-- Dumping structure for table infosys.tblnotificationmaster
DROP TABLE IF EXISTS `tblnotificationmaster`;
CREATE TABLE IF NOT EXISTS `tblnotificationmaster` (
  `strNotificationCode` varchar(50) NOT NULL DEFAULT '',
  `strPOSCode` varchar(50) NOT NULL DEFAULT '',
  `strAreaCode` varchar(30) NOT NULL DEFAULT '',
  `dteFromDate` datetime NOT NULL,
  `dteToDate` datetime NOT NULL,
  `strNotificationText` varchar(3000) NOT NULL DEFAULT ' ',
  `strNotificationType` varchar(30) NOT NULL DEFAULT ' ',
  `strUserCreated` varchar(50) NOT NULL DEFAULT ' ',
  `dteDateCreated` datetime NOT NULL,
  `strClientCode` varchar(50) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`strNotificationCode`,`strPOSCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblnotificationmaster: ~0 rows (approximately)
DELETE FROM `tblnotificationmaster`;
/*!40000 ALTER TABLE `tblnotificationmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblnotificationmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tbloccasionmaster
DROP TABLE IF EXISTS `tbloccasionmaster`;
CREATE TABLE IF NOT EXISTS `tbloccasionmaster` (
  `strOccasionCode` varchar(50) NOT NULL DEFAULT '',
  `strOccasionName` varchar(50) NOT NULL DEFAULT '',
  `strUserCreated` varchar(50) NOT NULL DEFAULT '',
  `strUserEdited` varchar(50) NOT NULL DEFAULT '',
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT '',
  `strOperationalYN` varchar(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`strOccasionCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbloccasionmaster: ~0 rows (approximately)
DELETE FROM `tbloccasionmaster`;
/*!40000 ALTER TABLE `tbloccasionmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbloccasionmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblonlinemenuimport
DROP TABLE IF EXISTS `tblonlinemenuimport`;
CREATE TABLE IF NOT EXISTS `tblonlinemenuimport` (
  `strItemName` varchar(100) NOT NULL DEFAULT '',
  `strItemCode` varchar(10) NOT NULL DEFAULT '',
  `strIsModifier` varchar(5) NOT NULL DEFAULT 'N',
  `strModifierOnItemName` varchar(100) NOT NULL DEFAULT '',
  `strModifierCode` varchar(10) NOT NULL DEFAULT '',
  `strModifierGroupName` varchar(100) NOT NULL DEFAULT '',
  `strModifierGroupCode` varchar(100) NOT NULL DEFAULT '',
  `strGroupName` varchar(50) NOT NULL DEFAULT '',
  `strGroupCode` varchar(10) NOT NULL DEFAULT '',
  `strCostCenterName` varchar(50) NOT NULL DEFAULT '',
  `strCostCenterCode` varchar(10) NOT NULL DEFAULT '',
  `strMenuHeadName` varchar(50) NOT NULL DEFAULT '',
  `strMenuHeadCode` varchar(10) NOT NULL DEFAULT '',
  `strPOSCode` varchar(10) NOT NULL DEFAULT '',
  `strSubGroupName` varchar(50) NOT NULL DEFAULT '',
  `strSubGroupCode` varchar(10) NOT NULL DEFAULT '',
  `strAreaName` varchar(30) NOT NULL DEFAULT '',
  `strAreaCode` varchar(10) NOT NULL DEFAULT '',
  `strSubMenuHeadName` varchar(30) NOT NULL DEFAULT '',
  `strSubMenuHeadCode` varchar(10) NOT NULL DEFAULT '',
  `strExternalCode` varchar(30) NOT NULL DEFAULT '',
  `dblRate` decimal(18,2) NOT NULL DEFAULT '0.00',
  `min` int(10) NOT NULL DEFAULT '0',
  `max` int(10) NOT NULL DEFAULT '0',
  KEY `strItemName` (`strItemName`,`strItemCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblonlinemenuimport: ~0 rows (approximately)
DELETE FROM `tblonlinemenuimport`;
/*!40000 ALTER TABLE `tblonlinemenuimport` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblonlinemenuimport` ENABLE KEYS */;

-- Dumping structure for table infosys.tblonlinepaymentconfigdtl
DROP TABLE IF EXISTS `tblonlinepaymentconfigdtl`;
CREATE TABLE IF NOT EXISTS `tblonlinepaymentconfigdtl` (
  `strPGCode` varchar(20) NOT NULL,
  `strFieldDesc` varchar(100) NOT NULL,
  `strFieldValue` varchar(100) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strPGCode`,`strFieldDesc`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblonlinepaymentconfigdtl: ~0 rows (approximately)
DELETE FROM `tblonlinepaymentconfigdtl`;
/*!40000 ALTER TABLE `tblonlinepaymentconfigdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblonlinepaymentconfigdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblonlinepaymentconfighd
DROP TABLE IF EXISTS `tblonlinepaymentconfighd`;
CREATE TABLE IF NOT EXISTS `tblonlinepaymentconfighd` (
  `strPGCode` varchar(20) NOT NULL,
  `strPGName` varchar(100) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strPosCode` varchar(10) NOT NULL,
  PRIMARY KEY (`strPGCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblonlinepaymentconfighd: ~0 rows (approximately)
DELETE FROM `tblonlinepaymentconfighd`;
/*!40000 ALTER TABLE `tblonlinepaymentconfighd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblonlinepaymentconfighd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblorderanalysis
DROP TABLE IF EXISTS `tblorderanalysis`;
CREATE TABLE IF NOT EXISTS `tblorderanalysis` (
  `strField1` varchar(100) NOT NULL DEFAULT '',
  `strField2` varchar(100) NOT NULL DEFAULT '',
  `strField3` varchar(100) NOT NULL DEFAULT '',
  `strField4` varchar(100) NOT NULL DEFAULT '',
  `strField5` varchar(100) NOT NULL DEFAULT '',
  `strField6` varchar(100) NOT NULL DEFAULT '',
  `strField7` varchar(100) NOT NULL DEFAULT '',
  `strField8` varchar(100) NOT NULL DEFAULT '',
  `strField9` varchar(100) NOT NULL DEFAULT '',
  `strField10` varchar(100) NOT NULL DEFAULT '',
  `strField11` varchar(100) NOT NULL DEFAULT '',
  `strField12` varchar(100) NOT NULL DEFAULT '',
  `strField13` varchar(100) NOT NULL DEFAULT '',
  `strField14` varchar(100) NOT NULL DEFAULT '',
  `strField15` varchar(100) NOT NULL DEFAULT '',
  KEY `strField1` (`strField1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblorderanalysis: ~0 rows (approximately)
DELETE FROM `tblorderanalysis`;
/*!40000 ALTER TABLE `tblorderanalysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblorderanalysis` ENABLE KEYS */;

-- Dumping structure for table infosys.tblordermaster
DROP TABLE IF EXISTS `tblordermaster`;
CREATE TABLE IF NOT EXISTS `tblordermaster` (
  `strOrderCode` varchar(10) NOT NULL,
  `strOrderDesc` varchar(200) NOT NULL,
  `tmeUpToTime` varchar(15) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strPOSCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblordermaster: ~0 rows (approximately)
DELETE FROM `tblordermaster`;
/*!40000 ALTER TABLE `tblordermaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblordermaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblplaceorderadvorderdtl
DROP TABLE IF EXISTS `tblplaceorderadvorderdtl`;
CREATE TABLE IF NOT EXISTS `tblplaceorderadvorderdtl` (
  `strAdvOrderNo` varchar(20) NOT NULL,
  `dteOrderDate` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strOrderType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblplaceorderadvorderdtl: ~0 rows (approximately)
DELETE FROM `tblplaceorderadvorderdtl`;
/*!40000 ALTER TABLE `tblplaceorderadvorderdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblplaceorderadvorderdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblplaceorderdtl
DROP TABLE IF EXISTS `tblplaceorderdtl`;
CREATE TABLE IF NOT EXISTS `tblplaceorderdtl` (
  `strOrderCode` varchar(20) NOT NULL,
  `strProductCode` varchar(20) NOT NULL,
  `strItemCode` varchar(20) NOT NULL,
  `dblQty` decimal(18,2) NOT NULL,
  `dblStockQty` decimal(18,2) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strAdvOrderNo` varchar(20) NOT NULL DEFAULT '',
  `dblWeight` decimal(18,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblplaceorderdtl: ~0 rows (approximately)
DELETE FROM `tblplaceorderdtl`;
/*!40000 ALTER TABLE `tblplaceorderdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblplaceorderdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblplaceorderhd
DROP TABLE IF EXISTS `tblplaceorderhd`;
CREATE TABLE IF NOT EXISTS `tblplaceorderhd` (
  `strOrderCode` varchar(20) NOT NULL,
  `strSOCode` varchar(20) NOT NULL,
  `dteSODate` datetime NOT NULL,
  `dteOrderDate` datetime NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strCloseSO` varchar(1) NOT NULL,
  `strDCCode` varchar(20) NOT NULL,
  `strOrderTypeCode` varchar(20) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strOrderType` varchar(15) NOT NULL DEFAULT 'Normal',
  PRIMARY KEY (`strOrderCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblplaceorderhd: ~0 rows (approximately)
DELETE FROM `tblplaceorderhd`;
/*!40000 ALTER TABLE `tblplaceorderhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblplaceorderhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblplayzonepricingdtl
DROP TABLE IF EXISTS `tblplayzonepricingdtl`;
CREATE TABLE IF NOT EXISTS `tblplayzonepricingdtl` (
  `strPlayZonePricingCode` varchar(20) NOT NULL,
  `dteFromTime` time NOT NULL,
  `dteToTime` time NOT NULL,
  `dblMemberPriceMonday` decimal(18,2) NOT NULL,
  `dblMemberPriceTuesday` decimal(18,2) NOT NULL,
  `dblMemberPriceWednesday` decimal(18,2) NOT NULL,
  `dblMemberPriceThursday` decimal(18,2) NOT NULL,
  `dblMemberPriceFriday` decimal(18,2) NOT NULL,
  `dblMemberPriceSaturday` decimal(18,2) NOT NULL,
  `dblMemberPriceSunday` decimal(18,2) NOT NULL,
  `dblGuestPriceMonday` decimal(18,2) NOT NULL,
  `dblGuestPriceTuesday` decimal(18,2) NOT NULL,
  `dblGuestPriceWednesday` decimal(18,2) NOT NULL,
  `dblGuestPriceThursday` decimal(18,2) NOT NULL,
  `dblGuestPriceFriday` decimal(18,2) NOT NULL,
  `dblGuestPriceSaturday` decimal(18,2) NOT NULL,
  `dblGuestPriceSunday` decimal(18,2) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  PRIMARY KEY (`strPlayZonePricingCode`,`dteFromTime`,`dteToTime`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblplayzonepricingdtl: ~0 rows (approximately)
DELETE FROM `tblplayzonepricingdtl`;
/*!40000 ALTER TABLE `tblplayzonepricingdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblplayzonepricingdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblplayzonepricinghd
DROP TABLE IF EXISTS `tblplayzonepricinghd`;
CREATE TABLE IF NOT EXISTS `tblplayzonepricinghd` (
  `strPlayZonePricingCode` varchar(20) NOT NULL,
  `strPosCode` varchar(3) NOT NULL,
  `strItemCode` varchar(10) NOT NULL,
  `strMenuCode` varchar(10) NOT NULL,
  `strCostCenterCode` varchar(10) NOT NULL,
  `strClientCode` varchar(15) NOT NULL,
  `intTimeStamp` int(11) NOT NULL,
  `intGracePeriod` int(4) NOT NULL,
  `dteFromDate` datetime NOT NULL,
  `dteToDate` datetime NOT NULL,
  `strUserCreated` varchar(50) NOT NULL,
  `strAreaCode` varchar(5) NOT NULL,
  PRIMARY KEY (`strPlayZonePricingCode`,`strPosCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblplayzonepricinghd: ~0 rows (approximately)
DELETE FROM `tblplayzonepricinghd`;
/*!40000 ALTER TABLE `tblplayzonepricinghd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblplayzonepricinghd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblpmspostingbilldtl
DROP TABLE IF EXISTS `tblpmspostingbilldtl`;
CREATE TABLE IF NOT EXISTS `tblpmspostingbilldtl` (
  `strBillNo` varchar(50) NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `dteBillDate` datetime NOT NULL,
  `dblSettleAmt` decimal(18,2) NOT NULL,
  `strFolioNo` varchar(10) NOT NULL,
  `strGuestCode` varchar(15) NOT NULL,
  `strRoomNo` varchar(15) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strPMSDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strBillType` varchar(10) NOT NULL,
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblpmspostingbilldtl: ~0 rows (approximately)
DELETE FROM `tblpmspostingbilldtl`;
/*!40000 ALTER TABLE `tblpmspostingbilldtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpmspostingbilldtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblpointsonbill
DROP TABLE IF EXISTS `tblpointsonbill`;
CREATE TABLE IF NOT EXISTS `tblpointsonbill` (
  `strBillNo` varchar(10) NOT NULL,
  `dteBillDate` datetime NOT NULL,
  `dblBillAmount` decimal(18,2) NOT NULL,
  `dblPointsEarned` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strCustomerCode` varchar(10) NOT NULL DEFAULT '',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblpointsonbill: ~0 rows (approximately)
DELETE FROM `tblpointsonbill`;
/*!40000 ALTER TABLE `tblpointsonbill` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpointsonbill` ENABLE KEYS */;

-- Dumping structure for table infosys.tblposmaster
DROP TABLE IF EXISTS `tblposmaster`;
CREATE TABLE IF NOT EXISTS `tblposmaster` (
  `strPosCode` varchar(10) NOT NULL,
  `strPosName` varchar(50) NOT NULL,
  `strPosType` varchar(50) NOT NULL,
  `strDebitCardTransactionYN` varchar(5) NOT NULL DEFAULT 'No',
  `strPropertyPOSCode` varchar(11) NOT NULL DEFAULT '',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strCounterWiseBilling` varchar(3) NOT NULL DEFAULT 'No',
  `strDelayedSettlementForDB` varchar(1) NOT NULL DEFAULT 'N',
  `strBillPrinterPort` varchar(100) NOT NULL DEFAULT '',
  `strAdvReceiptPrinterPort` varchar(100) NOT NULL DEFAULT '',
  `strOperationalYN` varchar(5) NOT NULL DEFAULT 'N',
  `strPrintVatNo` varchar(1) NOT NULL DEFAULT 'N',
  `strPrintServiceTaxNo` varchar(1) NOT NULL DEFAULT 'N',
  `strVatNo` varchar(20) NOT NULL DEFAULT '',
  `strServiceTaxNo` varchar(20) NOT NULL DEFAULT '',
  `strRoundOff` varchar(20) NOT NULL DEFAULT '',
  `strTip` varchar(20) NOT NULL DEFAULT '',
  `strDiscount` varchar(20) NOT NULL DEFAULT '',
  `strWSLocationCode` varchar(10) NOT NULL DEFAULT '',
  `strExciseLicenceCode` varchar(10) NOT NULL DEFAULT '',
  `strEnableShift` varchar(1) NOT NULL DEFAULT 'N',
  `strWSLocationName` varchar(100) NOT NULL DEFAULT '',
  `strExciseLicenceName` varchar(100) NOT NULL DEFAULT '',
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strPlayZonePOS` varchar(1) NOT NULL DEFAULT 'N',
  `strPropertyCode` varchar(10) NOT NULL,
  PRIMARY KEY (`strPosCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblposmaster: ~1 rows (approximately)
DELETE FROM `tblposmaster`;
/*!40000 ALTER TABLE `tblposmaster` DISABLE KEYS */;
INSERT INTO `tblposmaster` (`strPosCode`, `strPosName`, `strPosType`, `strDebitCardTransactionYN`, `strPropertyPOSCode`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`, `strCounterWiseBilling`, `strDelayedSettlementForDB`, `strBillPrinterPort`, `strAdvReceiptPrinterPort`, `strOperationalYN`, `strPrintVatNo`, `strPrintServiceTaxNo`, `strVatNo`, `strServiceTaxNo`, `strRoundOff`, `strTip`, `strDiscount`, `strWSLocationCode`, `strExciseLicenceCode`, `strEnableShift`, `strWSLocationName`, `strExciseLicenceName`, `strClientCode`, `strPlayZonePOS`, `strPropertyCode`) VALUES
	('P01', 'Demo', 'Direct Biller', 'No', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:28:41', '2022-06-01 15:28:41', 'No', 'N', '', '', 'Y', 'N', 'N', '', '', '', '', '', '', '', 'N', '', '', '412.005', 'N', '');
/*!40000 ALTER TABLE `tblposmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblpossettlementdtl
DROP TABLE IF EXISTS `tblpossettlementdtl`;
CREATE TABLE IF NOT EXISTS `tblpossettlementdtl` (
  `strPOSCode` varchar(10) NOT NULL,
  `strSettlementCode` varchar(10) NOT NULL,
  `strSettlementDesc` varchar(100) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblpossettlementdtl: ~0 rows (approximately)
DELETE FROM `tblpossettlementdtl`;
/*!40000 ALTER TABLE `tblpossettlementdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpossettlementdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblposwiseitemwiseincentives
DROP TABLE IF EXISTS `tblposwiseitemwiseincentives`;
CREATE TABLE IF NOT EXISTS `tblposwiseitemwiseincentives` (
  `strPOSCode` varchar(10) NOT NULL,
  `strItemCode` varchar(10) NOT NULL,
  `strItemName` varchar(200) NOT NULL,
  `strIncentiveType` varchar(15) NOT NULL,
  `dblIncentiveValue` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblposwiseitemwiseincentives: ~0 rows (approximately)
DELETE FROM `tblposwiseitemwiseincentives`;
/*!40000 ALTER TABLE `tblposwiseitemwiseincentives` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblposwiseitemwiseincentives` ENABLE KEYS */;

-- Dumping structure for table infosys.tblprintersetup
DROP TABLE IF EXISTS `tblprintersetup`;
CREATE TABLE IF NOT EXISTS `tblprintersetup` (
  `strCostCenterCode` varchar(4) NOT NULL,
  `strCostCenterName` varchar(100) NOT NULL,
  `strPrimaryPrinterPort` varchar(100) NOT NULL,
  `strSecondaryPrinterPort` varchar(100) NOT NULL,
  `strPrintOnBothPrintersYN` varchar(5) NOT NULL DEFAULT 'N',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strCostCenterCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblprintersetup: ~1 rows (approximately)
DELETE FROM `tblprintersetup`;
/*!40000 ALTER TABLE `tblprintersetup` DISABLE KEYS */;
INSERT INTO `tblprintersetup` (`strCostCenterCode`, `strCostCenterName`, `strPrimaryPrinterPort`, `strSecondaryPrinterPort`, `strPrintOnBothPrintersYN`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`, `strClientCode`, `strDataPostFlag`) VALUES
	('C01', 'Shaan-e-Punjab - Indian Cuisine', '', '', 'N', 'SANGUINE', 'SANGUINE', '2022-08-10 18:48:39', '2022-08-10 18:48:39', '412.005', 'N'),
	('C02', 'Saucy Wok - Asian Cuisine', '', '', 'N', 'SANGUINE', 'SANGUINE', '2022-08-10 18:48:39', '2022-08-10 18:48:39', '412.005', 'N'),
	('C03', 'Curry On Tikka- A-la-Carte', '', '', 'N', 'SANGUINE', 'SANGUINE', '2022-08-10 18:48:39', '2022-08-10 18:48:39', '412.005', 'N'),
	('C04', 'Indian Burrito Company - Indo Mexican', '', '', 'N', 'SANGUINE', 'SANGUINE', '2022-08-10 18:48:39', '2022-08-10 18:48:39', '412.005', 'N'),
	('C05', 'Flavours of South - South Indian Cuisine', '', '', 'N', 'SANGUINE', 'SANGUINE', '2022-08-10 18:48:39', '2022-08-10 18:48:39', '412.005', 'N');
/*!40000 ALTER TABLE `tblprintersetup` ENABLE KEYS */;

-- Dumping structure for table infosys.tblprintersetupmaster
DROP TABLE IF EXISTS `tblprintersetupmaster`;
CREATE TABLE IF NOT EXISTS `tblprintersetupmaster` (
  `strPOSCode` varchar(10) NOT NULL,
  `strAreaCode` varchar(4) NOT NULL,
  `strCostCenterCode` varchar(4) NOT NULL,
  `strPrinterType` varchar(100) NOT NULL DEFAULT 'COST CENTER',
  `strPrimaryPrinterPort` varchar(100) NOT NULL,
  `strSecondaryPrinterPort` varchar(100) NOT NULL,
  `strPrintOnBothPrintersYN` varchar(5) NOT NULL DEFAULT 'N',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strPOSCode`,`strAreaCode`,`strCostCenterCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblprintersetupmaster: ~1 rows (approximately)
DELETE FROM `tblprintersetupmaster`;
/*!40000 ALTER TABLE `tblprintersetupmaster` DISABLE KEYS */;
INSERT INTO `tblprintersetupmaster` (`strPOSCode`, `strAreaCode`, `strCostCenterCode`, `strPrinterType`, `strPrimaryPrinterPort`, `strSecondaryPrinterPort`, `strPrintOnBothPrintersYN`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`, `strClientCode`, `strDataPostFlag`) VALUES
	('P01', 'A001', 'C01', 'Cost Center', 'OneNote for Windows 10', 'OneNote for Windows 10', 'Y', 'ADMIN', 'ADMIN', '2021-11-03 08:34:25', '2021-11-03 08:34:25', '405.001', 'N');
/*!40000 ALTER TABLE `tblprintersetupmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblproductiondtl
DROP TABLE IF EXISTS `tblproductiondtl`;
CREATE TABLE IF NOT EXISTS `tblproductiondtl` (
  `strProductionCode` varchar(20) NOT NULL,
  `strItemCode` varchar(10) NOT NULL,
  `strItemName` varchar(200) NOT NULL,
  `dblStock` decimal(18,4) NOT NULL,
  `dblOrderQty` decimal(18,4) NOT NULL,
  `strClientCode` varchar(20) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblproductiondtl: ~0 rows (approximately)
DELETE FROM `tblproductiondtl`;
/*!40000 ALTER TABLE `tblproductiondtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproductiondtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblproductionhd
DROP TABLE IF EXISTS `tblproductionhd`;
CREATE TABLE IF NOT EXISTS `tblproductionhd` (
  `strProductionCode` varchar(20) NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `dteProductionDate` datetime NOT NULL,
  `strClose` varchar(1) NOT NULL,
  `strRemarks` varchar(200) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(20) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strProductionCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblproductionhd: ~0 rows (approximately)
DELETE FROM `tblproductionhd`;
/*!40000 ALTER TABLE `tblproductionhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproductionhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblpromogroupdtl
DROP TABLE IF EXISTS `tblpromogroupdtl`;
CREATE TABLE IF NOT EXISTS `tblpromogroupdtl` (
  `strPromoGroupCode` varchar(10) NOT NULL,
  `strItemCode` varchar(10) NOT NULL,
  `strMenuCode` varchar(10) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblpromogroupdtl: ~0 rows (approximately)
DELETE FROM `tblpromogroupdtl`;
/*!40000 ALTER TABLE `tblpromogroupdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpromogroupdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblpromogroupmaster
DROP TABLE IF EXISTS `tblpromogroupmaster`;
CREATE TABLE IF NOT EXISTS `tblpromogroupmaster` (
  `strPromoGroupCode` varchar(10) NOT NULL,
  `strPromoGroupName` varchar(100) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strPromoGroupCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblpromogroupmaster: ~0 rows (approximately)
DELETE FROM `tblpromogroupmaster`;
/*!40000 ALTER TABLE `tblpromogroupmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpromogroupmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblpromotiondaytimedtl
DROP TABLE IF EXISTS `tblpromotiondaytimedtl`;
CREATE TABLE IF NOT EXISTS `tblpromotiondaytimedtl` (
  `strPromoCode` varchar(10) NOT NULL,
  `strDay` varchar(10) NOT NULL,
  `tmeFromTime` varchar(10) NOT NULL,
  `tmeToTime` varchar(10) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblpromotiondaytimedtl: ~0 rows (approximately)
DELETE FROM `tblpromotiondaytimedtl`;
/*!40000 ALTER TABLE `tblpromotiondaytimedtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpromotiondaytimedtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblpromotiondtl
DROP TABLE IF EXISTS `tblpromotiondtl`;
CREATE TABLE IF NOT EXISTS `tblpromotiondtl` (
  `strPromoCode` varchar(10) NOT NULL,
  `strPromotionOn` varchar(30) NOT NULL,
  `strPromoItemCode` varchar(10) NOT NULL,
  `dblGetQty` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strDiscountType` varchar(7) NOT NULL DEFAULT 'Percent',
  `dblDiscount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblpromotiondtl: ~0 rows (approximately)
DELETE FROM `tblpromotiondtl`;
/*!40000 ALTER TABLE `tblpromotiondtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpromotiondtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblpromotionmaster
DROP TABLE IF EXISTS `tblpromotionmaster`;
CREATE TABLE IF NOT EXISTS `tblpromotionmaster` (
  `strPromoCode` varchar(10) NOT NULL,
  `strPromoName` varchar(200) NOT NULL,
  `strPromotionOn` varchar(30) NOT NULL,
  `strPromoItemCode` varchar(10) NOT NULL,
  `strOperator` varchar(3) NOT NULL,
  `dblBuyQty` decimal(18,2) NOT NULL,
  `dteFromDate` datetime NOT NULL,
  `dteToDate` datetime NOT NULL,
  `tmeFromTime` varchar(15) NOT NULL,
  `tmeToTime` varchar(15) NOT NULL,
  `strDays` varchar(200) NOT NULL,
  `strType` varchar(10) NOT NULL,
  `strPromoNote` varchar(200) NOT NULL DEFAULT '',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strPOSCode` varchar(10) NOT NULL,
  `strGetItemCode` varchar(10) NOT NULL,
  `strGetPromoOn` varchar(10) NOT NULL,
  `strAreaCode` varchar(10) NOT NULL,
  `strPromoGroupType` varchar(50) NOT NULL DEFAULT '',
  `longKOTTimeBound` int(11) NOT NULL DEFAULT '0',
  KEY `strPromoCode_strClientCode` (`strPromoCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblpromotionmaster: ~0 rows (approximately)
DELETE FROM `tblpromotionmaster`;
/*!40000 ALTER TABLE `tblpromotionmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpromotionmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblpropertyimage
DROP TABLE IF EXISTS `tblpropertyimage`;
CREATE TABLE IF NOT EXISTS `tblpropertyimage` (
  `strPOSCode` varchar(10) NOT NULL,
  `blobReportImage` longblob,
  `strClientCode` varchar(20) NOT NULL,
  PRIMARY KEY (`strPOSCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblpropertyimage: ~1 rows (approximately)
DELETE FROM `tblpropertyimage`;
/*!40000 ALTER TABLE `tblpropertyimage` DISABLE KEYS */;
INSERT INTO `tblpropertyimage` (`strPOSCode`, `blobReportImage`, `strClientCode`) VALUES
	('P01', _binary '', '412.005');
/*!40000 ALTER TABLE `tblpropertyimage` ENABLE KEYS */;

-- Dumping structure for table infosys.tblpspdtl
DROP TABLE IF EXISTS `tblpspdtl`;
CREATE TABLE IF NOT EXISTS `tblpspdtl` (
  `strPSPCode` varchar(20) NOT NULL,
  `strItemCode` varchar(10) NOT NULL,
  `dblPhyStk` decimal(18,2) NOT NULL,
  `dblCompStk` decimal(18,2) NOT NULL,
  `dblVariance` decimal(18,2) NOT NULL,
  `dblVairanceAmt` decimal(18,2) NOT NULL,
  `strClientCode` varchar(20) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblpspdtl: ~0 rows (approximately)
DELETE FROM `tblpspdtl`;
/*!40000 ALTER TABLE `tblpspdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpspdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblpsphd
DROP TABLE IF EXISTS `tblpsphd`;
CREATE TABLE IF NOT EXISTS `tblpsphd` (
  `strPSPCode` varchar(20) NOT NULL,
  `strPOSCode` varchar(3) NOT NULL,
  `strStkInCode` varchar(9) NOT NULL,
  `strStkOutCode` varchar(9) NOT NULL,
  `strBillNo` varchar(10) NOT NULL,
  `dblStkInAmt` decimal(18,2) NOT NULL,
  `dblSaleAmt` decimal(18,2) NOT NULL,
  `intShiftCode` int(11) NOT NULL DEFAULT '0',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(20) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strReasonCode` varchar(10) NOT NULL,
  `strRemarks` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblpsphd: ~0 rows (approximately)
DELETE FROM `tblpsphd`;
/*!40000 ALTER TABLE `tblpsphd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpsphd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblpurchaseorder
DROP TABLE IF EXISTS `tblpurchaseorder`;
CREATE TABLE IF NOT EXISTS `tblpurchaseorder` (
  `strPOCode` varchar(10) NOT NULL,
  `dtePODate` datetime NOT NULL,
  `strSupplierCode` varchar(10) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strPOCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblpurchaseorder: ~0 rows (approximately)
DELETE FROM `tblpurchaseorder`;
/*!40000 ALTER TABLE `tblpurchaseorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpurchaseorder` ENABLE KEYS */;

-- Dumping structure for table infosys.tblpurchaseorderdtl
DROP TABLE IF EXISTS `tblpurchaseorderdtl`;
CREATE TABLE IF NOT EXISTS `tblpurchaseorderdtl` (
  `strPOCode` varchar(10) NOT NULL,
  `strItemCode` varchar(10) NOT NULL,
  `dblOrderQty` decimal(18,2) NOT NULL,
  `dblPurchaseRate` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `strRemarks` varchar(100) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strPOCode`,`strItemCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblpurchaseorderdtl: ~0 rows (approximately)
DELETE FROM `tblpurchaseorderdtl`;
/*!40000 ALTER TABLE `tblpurchaseorderdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpurchaseorderdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblpurchaseorderhd
DROP TABLE IF EXISTS `tblpurchaseorderhd`;
CREATE TABLE IF NOT EXISTS `tblpurchaseorderhd` (
  `strPOCode` varchar(10) NOT NULL,
  `dtePODate` datetime NOT NULL,
  `strSupplierCode` varchar(10) NOT NULL,
  `dblSubTotal` decimal(18,2) NOT NULL,
  `dblTaxAmt` decimal(18,2) NOT NULL,
  `dblExtraAmt` decimal(18,2) NOT NULL,
  `dblGrandTotal` decimal(18,2) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dteDeliveryDate` datetime NOT NULL,
  `strClosePO` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strPOCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblpurchaseorderhd: ~0 rows (approximately)
DELETE FROM `tblpurchaseorderhd`;
/*!40000 ALTER TABLE `tblpurchaseorderhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpurchaseorderhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblpurchaseordertaxdtl
DROP TABLE IF EXISTS `tblpurchaseordertaxdtl`;
CREATE TABLE IF NOT EXISTS `tblpurchaseordertaxdtl` (
  `strPOCode` varchar(20) NOT NULL,
  `strTaxCode` varchar(10) NOT NULL,
  `dblTaxableAmount` decimal(18,4) NOT NULL,
  `dblTaxAmount` decimal(18,4) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strPOCode`,`strTaxCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblpurchaseordertaxdtl: ~0 rows (approximately)
DELETE FROM `tblpurchaseordertaxdtl`;
/*!40000 ALTER TABLE `tblpurchaseordertaxdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpurchaseordertaxdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblqadvancereceiptdtl
DROP TABLE IF EXISTS `tblqadvancereceiptdtl`;
CREATE TABLE IF NOT EXISTS `tblqadvancereceiptdtl` (
  `strReceiptNo` varchar(10) NOT NULL,
  `strSettlementCode` varchar(10) NOT NULL,
  `strCardNo` varchar(50) NOT NULL,
  `strExpirydate` varchar(50) NOT NULL,
  `strChequeNo` varchar(50) NOT NULL,
  `dteCheque` date NOT NULL,
  `strBankName` varchar(50) NOT NULL,
  `dblAdvDepositesettleAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strRemark` varchar(50) NOT NULL,
  `dblPaidAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dteInstallment` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblqadvancereceiptdtl: ~0 rows (approximately)
DELETE FROM `tblqadvancereceiptdtl`;
/*!40000 ALTER TABLE `tblqadvancereceiptdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblqadvancereceiptdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblqadvancereceipthd
DROP TABLE IF EXISTS `tblqadvancereceipthd`;
CREATE TABLE IF NOT EXISTS `tblqadvancereceipthd` (
  `strReceiptNo` varchar(15) NOT NULL,
  `strAdvBookingNo` varchar(15) NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `strSettelmentMode` varchar(15) NOT NULL,
  `dtReceiptDate` date NOT NULL,
  `dblAdvDeposite` decimal(18,2) NOT NULL DEFAULT '0.00',
  `intShiftCode` int(11) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dtDateCreated` datetime NOT NULL,
  `dtDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strReceiptNo`,`strAdvBookingNo`,`strPOSCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblqadvancereceipthd: ~0 rows (approximately)
DELETE FROM `tblqadvancereceipthd`;
/*!40000 ALTER TABLE `tblqadvancereceipthd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblqadvancereceipthd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblqadvbookbillchardtl
DROP TABLE IF EXISTS `tblqadvbookbillchardtl`;
CREATE TABLE IF NOT EXISTS `tblqadvbookbillchardtl` (
  `strItemCode` varchar(15) NOT NULL,
  `strAdvBookingNo` varchar(20) NOT NULL,
  `strCharCode` varchar(15) NOT NULL,
  `strCharValues` varchar(200) NOT NULL,
  `strClientCode` varchar(11) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strItemCode`,`strAdvBookingNo`,`strCharCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblqadvbookbillchardtl: ~0 rows (approximately)
DELETE FROM `tblqadvbookbillchardtl`;
/*!40000 ALTER TABLE `tblqadvbookbillchardtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblqadvbookbillchardtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblqadvbookbilldtl
DROP TABLE IF EXISTS `tblqadvbookbilldtl`;
CREATE TABLE IF NOT EXISTS `tblqadvbookbilldtl` (
  `strItemCode` varchar(50) NOT NULL,
  `strItemName` varchar(50) NOT NULL,
  `strAdvBookingNo` varchar(50) NOT NULL,
  `dblQuantity` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `dblTaxAmount` decimal(18,2) NOT NULL,
  `dteAdvBookingDate` datetime NOT NULL,
  `dteOrderFor` date NOT NULL,
  `strClientCode` varchar(50) NOT NULL,
  `strCustomerCode` varchar(15) DEFAULT NULL,
  `dblWeight` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strItemCode`,`strAdvBookingNo`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblqadvbookbilldtl: ~0 rows (approximately)
DELETE FROM `tblqadvbookbilldtl`;
/*!40000 ALTER TABLE `tblqadvbookbilldtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblqadvbookbilldtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblqadvbookbillhd
DROP TABLE IF EXISTS `tblqadvbookbillhd`;
CREATE TABLE IF NOT EXISTS `tblqadvbookbillhd` (
  `strAdvBookingNo` varchar(15) NOT NULL,
  `dteAdvBookingDate` datetime NOT NULL,
  `dteOrderFor` datetime NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `strSettelmentMode` varchar(50) NOT NULL,
  `dblDiscountAmt` decimal(18,2) NOT NULL,
  `dblDiscountPer` decimal(18,2) NOT NULL,
  `dblTaxAmt` decimal(18,2) NOT NULL,
  `dblSubTotal` decimal(18,2) NOT NULL,
  `dblGrandTotal` decimal(18,2) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strCustomerCode` varchar(15) DEFAULT NULL,
  `intShiftCode` int(11) NOT NULL,
  `strMessage` varchar(150) NOT NULL DEFAULT '',
  `strShape` varchar(100) NOT NULL DEFAULT '',
  `strNote` varchar(300) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strDeliveryTime` varchar(10) NOT NULL,
  `strWaiterNo` varchar(10) NOT NULL DEFAULT '',
  `strHomeDelivery` varchar(1) NOT NULL DEFAULT 'N',
  `dblHomeDelCharges` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strOrderType` varchar(10) NOT NULL,
  `strManualAdvOrderNo` varchar(20) NOT NULL DEFAULT '',
  `strImageName` varchar(50) NOT NULL DEFAULT '',
  `strSpecialsymbolImage` varchar(50) NOT NULL DEFAULT '',
  `strUrgentOrder` varchar(1) NOT NULL DEFAULT 'N',
  `dblUSDConversionRate` decimal(10,2) NOT NULL DEFAULT '0.00',
  KEY `strAdvBookingNo` (`strAdvBookingNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblqadvbookbillhd: ~0 rows (approximately)
DELETE FROM `tblqadvbookbillhd`;
/*!40000 ALTER TABLE `tblqadvbookbillhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblqadvbookbillhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblqadvordermodifierdtl
DROP TABLE IF EXISTS `tblqadvordermodifierdtl`;
CREATE TABLE IF NOT EXISTS `tblqadvordermodifierdtl` (
  `strAdvOrderNo` varchar(15) NOT NULL,
  `strItemCode` varchar(10) NOT NULL,
  `strModifierCode` varchar(4) NOT NULL,
  `strModifierName` varchar(50) NOT NULL,
  `dblQuantity` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strCustomerCode` varchar(15) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strAdvOrderNo`,`strItemCode`,`strModifierCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblqadvordermodifierdtl: ~0 rows (approximately)
DELETE FROM `tblqadvordermodifierdtl`;
/*!40000 ALTER TABLE `tblqadvordermodifierdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblqadvordermodifierdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblqbillcomplementrydtl
DROP TABLE IF EXISTS `tblqbillcomplementrydtl`;
CREATE TABLE IF NOT EXISTS `tblqbillcomplementrydtl` (
  `strItemCode` varchar(10) NOT NULL,
  `strItemName` varchar(200) NOT NULL,
  `strBillNo` varchar(15) DEFAULT NULL,
  `strAdvBookingNo` varchar(10) NOT NULL DEFAULT '',
  `dblRate` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblQuantity` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `dblTaxAmount` decimal(18,2) NOT NULL,
  `dteBillDate` datetime NOT NULL,
  `strKOTNo` varchar(20) NOT NULL DEFAULT '',
  `strClientCode` varchar(10) NOT NULL,
  `strCustomerCode` varchar(10) DEFAULT '',
  `tmeOrderProcessing` time NOT NULL DEFAULT '00:00:00',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strMMSDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strManualKOTNo` varchar(10) NOT NULL DEFAULT '',
  `tdhYN` varchar(1) NOT NULL DEFAULT 'N',
  `strPromoCode` varchar(20) NOT NULL DEFAULT '',
  `strCounterCode` varchar(5) NOT NULL DEFAULT '',
  `strWaiterNo` varchar(10) NOT NULL DEFAULT '',
  `dblDiscountAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblDiscountPer` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strSequenceNo` varchar(10) NOT NULL DEFAULT '0.00',
  `strType` varchar(20) NOT NULL DEFAULT 'Complimentary',
  `dtBillDate` date NOT NULL,
  `tmeOrderPickup` time NOT NULL DEFAULT '00:00:00',
  `strKOTUser` varchar(50) NOT NULL DEFAULT '',
  `strReasonCode` varchar(50) DEFAULT '',
  `strRemarks` varchar(256) DEFAULT '',
  `strPOSCode` varchar(10) NOT NULL DEFAULT '',
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblqbillcomplementrydtl: ~0 rows (approximately)
DELETE FROM `tblqbillcomplementrydtl`;
/*!40000 ALTER TABLE `tblqbillcomplementrydtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblqbillcomplementrydtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblqbilldiscdtl
DROP TABLE IF EXISTS `tblqbilldiscdtl`;
CREATE TABLE IF NOT EXISTS `tblqbilldiscdtl` (
  `strBillNo` varchar(15) DEFAULT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `dblDiscAmt` decimal(18,4) NOT NULL,
  `dblDiscPer` decimal(18,4) NOT NULL,
  `dblDiscOnAmt` decimal(18,4) NOT NULL,
  `strDiscOnType` varchar(50) NOT NULL DEFAULT '',
  `strDiscOnValue` varchar(100) NOT NULL DEFAULT '',
  `strDiscReasonCode` varchar(10) NOT NULL DEFAULT '',
  `strDiscRemarks` varchar(100) NOT NULL DEFAULT '',
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL DEFAULT '',
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dteBillDate` date NOT NULL,
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblqbilldiscdtl: ~0 rows (approximately)
DELETE FROM `tblqbilldiscdtl`;
/*!40000 ALTER TABLE `tblqbilldiscdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblqbilldiscdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblqbilldtl
DROP TABLE IF EXISTS `tblqbilldtl`;
CREATE TABLE IF NOT EXISTS `tblqbilldtl` (
  `strItemCode` varchar(10) NOT NULL,
  `strItemName` varchar(200) NOT NULL,
  `strBillNo` varchar(15) DEFAULT NULL,
  `strAdvBookingNo` varchar(10) NOT NULL DEFAULT '',
  `dblRate` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblQuantity` decimal(18,4) NOT NULL,
  `dblAmount` decimal(18,4) NOT NULL,
  `dblTaxAmount` decimal(18,4) NOT NULL,
  `dteBillDate` datetime NOT NULL,
  `strKOTNo` varchar(10) NOT NULL DEFAULT '',
  `strClientCode` varchar(10) NOT NULL,
  `strCustomerCode` varchar(15) DEFAULT NULL,
  `tmeOrderProcessing` time NOT NULL DEFAULT '00:00:00',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strMMSDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strManualKOTNo` varchar(50) NOT NULL DEFAULT '',
  `tdhYN` varchar(1) NOT NULL DEFAULT 'N',
  `strPromoCode` varchar(20) NOT NULL DEFAULT '',
  `strCounterCode` varchar(5) NOT NULL DEFAULT '',
  `strWaiterNo` varchar(10) NOT NULL DEFAULT '',
  `dblDiscountAmt` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblDiscountPer` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strSequenceNo` varchar(10) NOT NULL DEFAULT '0.00',
  `dtBillDate` date NOT NULL,
  `tmeOrderPickup` time NOT NULL DEFAULT '00:00:00',
  `strKOTUser` varchar(50) NOT NULL DEFAULT '',
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblqbilldtl: ~0 rows (approximately)
DELETE FROM `tblqbilldtl`;
/*!40000 ALTER TABLE `tblqbilldtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblqbilldtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblqbillhd
DROP TABLE IF EXISTS `tblqbillhd`;
CREATE TABLE IF NOT EXISTS `tblqbillhd` (
  `strBillNo` varchar(15) NOT NULL,
  `strAdvBookingNo` varchar(10) DEFAULT '0',
  `dteBillDate` datetime NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `strSettelmentMode` varchar(50) NOT NULL,
  `dblDiscountAmt` decimal(18,4) NOT NULL,
  `dblDiscountPer` decimal(10,4) NOT NULL,
  `dblTaxAmt` decimal(18,4) NOT NULL,
  `dblSubTotal` decimal(18,4) NOT NULL,
  `dblGrandTotal` decimal(18,4) NOT NULL,
  `strTakeAway` varchar(50) NOT NULL DEFAULT 'No',
  `strOperationType` varchar(20) NOT NULL DEFAULT 'Dine In',
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL DEFAULT '',
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime DEFAULT NULL,
  `strClientCode` varchar(10) NOT NULL DEFAULT '',
  `strTableNo` varchar(10) NOT NULL DEFAULT '',
  `strWaiterNo` varchar(5) NOT NULL DEFAULT '',
  `strCustomerCode` varchar(15) DEFAULT NULL,
  `strManualBillNo` varchar(15) NOT NULL DEFAULT '',
  `intShiftCode` int(11) NOT NULL DEFAULT '0',
  `intPaxNo` int(11) NOT NULL DEFAULT '0',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strReasonCode` varchar(10) NOT NULL DEFAULT '',
  `strRemarks` varchar(600) NOT NULL DEFAULT '',
  `dblTipAmount` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dteSettleDate` datetime NOT NULL,
  `strCounterCode` varchar(10) NOT NULL DEFAULT 'NA',
  `dblDeliveryCharges` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strCouponCode` varchar(100) NOT NULL DEFAULT '',
  `strAreaCode` varchar(10) NOT NULL DEFAULT '',
  `strDiscountRemark` varchar(200) NOT NULL DEFAULT '',
  `strTakeAwayRemarks` varchar(200) NOT NULL DEFAULT '',
  `strDiscountOn` varchar(20) NOT NULL DEFAULT 'All',
  `strCardNo` varchar(50) NOT NULL DEFAULT '',
  `strTransactionType` varchar(300) NOT NULL DEFAULT '',
  `strJioMoneyRRefNo` varchar(20) NOT NULL DEFAULT '',
  `strJioMoneyAuthCode` varchar(10) NOT NULL DEFAULT '',
  `strJioMoneyTxnId` varchar(25) NOT NULL DEFAULT '',
  `strJioMoneyTxnDateTime` varchar(20) NOT NULL DEFAULT '',
  `strJioMoneyCardNo` varchar(16) NOT NULL DEFAULT '',
  `strJioMoneyCardType` varchar(40) NOT NULL DEFAULT '',
  `dblRoundOff` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `intBillSeriesPaxNo` int(11) NOT NULL DEFAULT '0',
  `dtBillDate` date NOT NULL,
  `intOrderNo` int(11) NOT NULL DEFAULT '0',
  `strCRMRewardId` varchar(50) NOT NULL DEFAULT '',
  `strNSCTax` varchar(10) NOT NULL DEFAULT '',
  `strKOTToBillNote` varchar(500) NOT NULL DEFAULT '',
  `dblUSDConverionRate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `strNDTax` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`strBillNo`,`strClientCode`,`dtBillDate`,`strPOSCode`),
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblqbillhd: ~0 rows (approximately)
DELETE FROM `tblqbillhd`;
/*!40000 ALTER TABLE `tblqbillhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblqbillhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblqbillmodifierdtl
DROP TABLE IF EXISTS `tblqbillmodifierdtl`;
CREATE TABLE IF NOT EXISTS `tblqbillmodifierdtl` (
  `strBillNo` varchar(15) DEFAULT NULL,
  `strItemCode` varchar(20) NOT NULL,
  `strModifierCode` varchar(10) NOT NULL,
  `strModifierName` varchar(200) NOT NULL,
  `dblRate` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblQuantity` decimal(18,4) NOT NULL,
  `dblAmount` decimal(18,4) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strCustomerCode` varchar(20) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strMMSDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strDefaultModifierDeselectedYN` varchar(1) NOT NULL DEFAULT 'N',
  `strSequenceNo` varchar(10) NOT NULL DEFAULT '0.00',
  `dblDiscPer` decimal(18,4) NOT NULL,
  `dblDiscAmt` decimal(18,4) NOT NULL,
  `dteBillDate` date NOT NULL,
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblqbillmodifierdtl: ~0 rows (approximately)
DELETE FROM `tblqbillmodifierdtl`;
/*!40000 ALTER TABLE `tblqbillmodifierdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblqbillmodifierdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblqbillpromotiondtl
DROP TABLE IF EXISTS `tblqbillpromotiondtl`;
CREATE TABLE IF NOT EXISTS `tblqbillpromotiondtl` (
  `strBillNo` varchar(15) DEFAULT NULL,
  `strItemCode` varchar(15) NOT NULL,
  `strPromotionCode` varchar(20) NOT NULL,
  `dblQuantity` decimal(18,2) NOT NULL,
  `dblRate` decimal(18,4) NOT NULL,
  `strClientCode` varchar(20) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strPromoType` varchar(20) NOT NULL,
  `dblAmount` decimal(18,4) NOT NULL,
  `dblDiscountPer` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblDiscountAmt` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dteBillDate` date NOT NULL,
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblqbillpromotiondtl: ~0 rows (approximately)
DELETE FROM `tblqbillpromotiondtl`;
/*!40000 ALTER TABLE `tblqbillpromotiondtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblqbillpromotiondtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblqbillsettlementdtl
DROP TABLE IF EXISTS `tblqbillsettlementdtl`;
CREATE TABLE IF NOT EXISTS `tblqbillsettlementdtl` (
  `strBillNo` varchar(15) NOT NULL DEFAULT '',
  `strSettlementCode` varchar(10) NOT NULL,
  `dblSettlementAmt` decimal(18,4) NOT NULL,
  `dblPaidAmt` decimal(18,4) DEFAULT '0.0000',
  `strExpiryDate` varchar(7) NOT NULL DEFAULT '',
  `strCardName` varchar(50) NOT NULL DEFAULT '0',
  `strRemark` varchar(600) NOT NULL DEFAULT '0',
  `strClientCode` varchar(10) NOT NULL DEFAULT '0',
  `strCustomerCode` varchar(15) DEFAULT NULL,
  `dblActualAmt` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblRefundAmt` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strGiftVoucherCode` varchar(50) DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strFolioNo` varchar(10) NOT NULL DEFAULT '',
  `strRoomNo` varchar(10) NOT NULL DEFAULT '',
  `dteBillDate` date NOT NULL,
  `strGiftVoucherNo` varchar(50) DEFAULT '',
  PRIMARY KEY (`strBillNo`,`strClientCode`,`dteBillDate`,`strSettlementCode`),
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblqbillsettlementdtl: ~0 rows (approximately)
DELETE FROM `tblqbillsettlementdtl`;
/*!40000 ALTER TABLE `tblqbillsettlementdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblqbillsettlementdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblqbilltaxdtl
DROP TABLE IF EXISTS `tblqbilltaxdtl`;
CREATE TABLE IF NOT EXISTS `tblqbilltaxdtl` (
  `strBillNo` varchar(15) NOT NULL DEFAULT '',
  `strTaxCode` varchar(10) NOT NULL,
  `dblTaxableAmount` decimal(18,4) NOT NULL,
  `dblTaxAmount` decimal(18,4) NOT NULL,
  `strClientCode` varchar(10) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dteBillDate` date NOT NULL,
  PRIMARY KEY (`strBillNo`,`strTaxCode`,`dteBillDate`,`strClientCode`),
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblqbilltaxdtl: ~0 rows (approximately)
DELETE FROM `tblqbilltaxdtl`;
/*!40000 ALTER TABLE `tblqbilltaxdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblqbilltaxdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblqcreditbillreceipthd
DROP TABLE IF EXISTS `tblqcreditbillreceipthd`;
CREATE TABLE IF NOT EXISTS `tblqcreditbillreceipthd` (
  `strReceiptNo` varchar(15) NOT NULL,
  `strBillNo` varchar(15) NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `dteReceiptDate` date NOT NULL,
  `dblReceiptAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `intShiftCode` int(11) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dteBillDate` datetime NOT NULL,
  `strSettlementCode` varchar(10) NOT NULL,
  `strSettlementName` varchar(50) NOT NULL,
  `strChequeNo` varchar(50) NOT NULL DEFAULT '',
  `strBankName` varchar(50) NOT NULL DEFAULT '',
  `dteChequeDate` datetime NOT NULL DEFAULT '1990-01-01 00:00:00',
  `strRemarks` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`strReceiptNo`,`strBillNo`,`strClientCode`,`dteBillDate`),
  KEY `strReceiptNo_strBillNo_strPOSCode_dteBillDate` (`strReceiptNo`,`strBillNo`,`strPOSCode`,`dteBillDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblqcreditbillreceipthd: ~0 rows (approximately)
DELETE FROM `tblqcreditbillreceipthd`;
/*!40000 ALTER TABLE `tblqcreditbillreceipthd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblqcreditbillreceipthd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblqrmenudineinorders
DROP TABLE IF EXISTS `tblqrmenudineinorders`;
CREATE TABLE IF NOT EXISTS `tblqrmenudineinorders` (
  `strSerialNo` varchar(10) NOT NULL,
  `strTableNo` varchar(10) NOT NULL,
  `strCardNo` varchar(50) DEFAULT NULL,
  `dblRedeemAmt` decimal(18,2) DEFAULT NULL,
  `strHomeDelivery` varchar(50) DEFAULT 'No',
  `strCustomerCode` varchar(50) DEFAULT NULL,
  `strPOSCode` varchar(3) NOT NULL,
  `strItemCode` varchar(50) NOT NULL,
  `strItemName` varchar(200) NOT NULL,
  `dblItemQuantity` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `strWaiterNo` varchar(10) NOT NULL,
  `strKOTNo` varchar(10) NOT NULL,
  `intPaxNo` int(11) NOT NULL,
  `strPrintYN` char(1) DEFAULT NULL,
  `strManualKOTNo` varchar(10) NOT NULL DEFAULT '',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strOrderBefore` varchar(10) NOT NULL DEFAULT 'No',
  `strTakeAwayYesNo` varchar(10) NOT NULL DEFAULT 'No',
  `tdhComboItemYN` varchar(1) NOT NULL DEFAULT 'N',
  `strDelBoyCode` varchar(10) NOT NULL DEFAULT '',
  `strNCKotYN` varchar(1) NOT NULL DEFAULT 'N',
  `strCustomerName` varchar(100) NOT NULL DEFAULT '',
  `strActiveYN` varchar(1) NOT NULL DEFAULT 'N',
  `dblBalance` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblCreditLimit` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strCounterCode` varchar(4) NOT NULL DEFAULT '',
  `strPromoCode` varchar(10) NOT NULL DEFAULT '',
  `dblRate` decimal(18,2) NOT NULL DEFAULT '0.00',
  `intId` bigint(20) DEFAULT NULL,
  `strCardType` varchar(50) NOT NULL DEFAULT '',
  `dblTaxAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strReason` varchar(50) NOT NULL DEFAULT 'No',
  `strItemProcessed` varchar(1) NOT NULL DEFAULT 'N',
  `tmeOrderProcessing` time NOT NULL DEFAULT '00:00:00',
  `tmeOrderPickup` time NOT NULL DEFAULT '00:00:00',
  `strItemPickedUp` varchar(1) NOT NULL DEFAULT 'N',
  `strTableStatus` varchar(20) NOT NULL DEFAULT 'Normal',
  `strDeviceMACAdd` varchar(100) NOT NULL DEFAULT '',
  `strDeviceId` varchar(100) NOT NULL DEFAULT '',
  `strCRMRewardId` varchar(50) NOT NULL DEFAULT '',
  `dblFiredQty` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblPrintQty` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strBillNote` varchar(100) NOT NULL DEFAULT '',
  `strClientCode` varchar(100) NOT NULL DEFAULT '',
  `strMobileNo` varchar(100) NOT NULL DEFAULT '',
  `strDataPostedToPOSYN` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strTableNo`,`strItemCode`,`strKOTNo`,`strItemName`,`strSerialNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblqrmenudineinorders: ~0 rows (approximately)
DELETE FROM `tblqrmenudineinorders`;
/*!40000 ALTER TABLE `tblqrmenudineinorders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblqrmenudineinorders` ENABLE KEYS */;

-- Dumping structure for table infosys.tblratingmaster
DROP TABLE IF EXISTS `tblratingmaster`;
CREATE TABLE IF NOT EXISTS `tblratingmaster` (
  `strRatingCode` varchar(50) NOT NULL DEFAULT '',
  `strRatingName` varchar(50) NOT NULL DEFAULT '',
  `strUserCreated` varchar(50) NOT NULL DEFAULT '',
  `strUserEdited` varchar(50) NOT NULL DEFAULT '',
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT '',
  `strOperationalYN` varchar(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`strRatingCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblratingmaster: ~0 rows (approximately)
DELETE FROM `tblratingmaster`;
/*!40000 ALTER TABLE `tblratingmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblratingmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblreasongroupmaster
DROP TABLE IF EXISTS `tblreasongroupmaster`;
CREATE TABLE IF NOT EXISTS `tblreasongroupmaster` (
  `strReasonGroupCode` varchar(10) NOT NULL,
  `strReasonGroupName` varchar(50) NOT NULL,
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strOperationalYN` varchar(1) NOT NULL DEFAULT 'Y',
  `strReasonGroupShortName` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`strReasonGroupCode`,`strClientCode`) USING BTREE,
  KEY `intReasonGroupCode` (`strReasonGroupCode`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblreasongroupmaster: ~0 rows (approximately)
DELETE FROM `tblreasongroupmaster`;
/*!40000 ALTER TABLE `tblreasongroupmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblreasongroupmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblreasonmaster
DROP TABLE IF EXISTS `tblreasonmaster`;
CREATE TABLE IF NOT EXISTS `tblreasonmaster` (
  `strReasonCode` varchar(5) NOT NULL,
  `strReasonName` varchar(100) NOT NULL,
  `strStkIn` char(1) NOT NULL,
  `strStkOut` char(1) NOT NULL,
  `strVoidBill` char(1) NOT NULL,
  `strModifyBill` char(1) NOT NULL,
  `strTransferEntry` varchar(100) NOT NULL,
  `strTransferType` varchar(15) NOT NULL,
  `strPSP` varchar(1) NOT NULL,
  `strKot` varchar(1) NOT NULL,
  `strCashMgmt` varchar(1) NOT NULL,
  `strVoidStkIn` varchar(1) NOT NULL,
  `strVoidStkOut` varchar(1) NOT NULL,
  `strUnsettleBill` varchar(1) NOT NULL,
  `strComplementary` varchar(1) NOT NULL,
  `strDiscount` varchar(1) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strNCKOT` varchar(1) NOT NULL DEFAULT 'N',
  `strVoidAdvOrder` varchar(1) NOT NULL DEFAULT 'N',
  `strReprint` varchar(1) NOT NULL DEFAULT 'N',
  `strMoveKOT` varchar(1) NOT NULL DEFAULT 'N',
  `strHashTagLoyalty` varchar(1) NOT NULL DEFAULT 'N',
  `strOperational` varchar(1) NOT NULL DEFAULT 'Y',
  `strTransactionType` varchar(20) NOT NULL,
  `strChangeSettlement` varchar(1) NOT NULL DEFAULT 'Y',
  `strReasonSubGroupCode` varchar(10) NOT NULL,
  `strLoyalty` varchar(1) NOT NULL DEFAULT 'N',
  `strBlockedUser` varchar(1) NOT NULL DEFAULT 'N',
  `strItemNonAvailable` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strReasonCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblreasonmaster: ~0 rows (approximately)
DELETE FROM `tblreasonmaster`;
/*!40000 ALTER TABLE `tblreasonmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblreasonmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblreasonsubgroupmaster
DROP TABLE IF EXISTS `tblreasonsubgroupmaster`;
CREATE TABLE IF NOT EXISTS `tblreasonsubgroupmaster` (
  `strReasonSubGroupCode` varchar(10) NOT NULL,
  `strReasonSubGroupName` varchar(50) NOT NULL,
  `strReasonGroupCode` varchar(10) NOT NULL,
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strIncentives` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strAccountCode` varchar(20) NOT NULL DEFAULT 'NA',
  `strFactoryCode` varchar(10) NOT NULL DEFAULT '',
  `strReasonSubGroupShortName` varchar(20) NOT NULL DEFAULT '',
  `strLimit` varchar(10) NOT NULL DEFAULT '',
  `dblLimitValue` decimal(18,4) DEFAULT NULL,
  `strMaxNoOfBills` decimal(18,4) NOT NULL,
  `strOTPAuth` varchar(25) NOT NULL DEFAULT 'N',
  `strMobileNo` varchar(20) NOT NULL,
  `strDiscountOn` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`strReasonSubGroupCode`,`strClientCode`) USING BTREE,
  KEY `strGroupCode` (`strReasonGroupCode`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblreasonsubgroupmaster: ~0 rows (approximately)
DELETE FROM `tblreasonsubgroupmaster`;
/*!40000 ALTER TABLE `tblreasonsubgroupmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblreasonsubgroupmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblrecipedtl
DROP TABLE IF EXISTS `tblrecipedtl`;
CREATE TABLE IF NOT EXISTS `tblrecipedtl` (
  `strRecipeCode` varchar(15) NOT NULL,
  `strChildItemCode` varchar(10) NOT NULL,
  `dblQuantity` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strPOSCode` varchar(20) NOT NULL,
  `strClientCode` varchar(15) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblrecipedtl: ~0 rows (approximately)
DELETE FROM `tblrecipedtl`;
/*!40000 ALTER TABLE `tblrecipedtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrecipedtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblrecipehd
DROP TABLE IF EXISTS `tblrecipehd`;
CREATE TABLE IF NOT EXISTS `tblrecipehd` (
  `strRecipeCode` varchar(15) NOT NULL,
  `strItemCode` varchar(15) NOT NULL,
  `dteFromDate` datetime NOT NULL,
  `dteToDate` datetime NOT NULL,
  `strPOSCode` varchar(20) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(15) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblrecipehd: ~0 rows (approximately)
DELETE FROM `tblrecipehd`;
/*!40000 ALTER TABLE `tblrecipehd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrecipehd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblregisterinoutplayzone
DROP TABLE IF EXISTS `tblregisterinoutplayzone`;
CREATE TABLE IF NOT EXISTS `tblregisterinoutplayzone` (
  `strRegisterCode` varchar(10) NOT NULL,
  `strPOSCode` varchar(10) NOT NULL DEFAULT 'P01',
  `strMemberCode` varchar(50) NOT NULL,
  `strCardNo` varchar(50) NOT NULL,
  `strMemberName` varchar(100) NOT NULL,
  `intMembers` int(11) NOT NULL DEFAULT '1',
  `intExtraGuests` int(11) NOT NULL DEFAULT '0',
  `strPhoneNo` varchar(100) NOT NULL DEFAULT '',
  `strMobileNo` varchar(100) NOT NULL DEFAULT '',
  `strEmailId` varchar(100) NOT NULL DEFAULT '',
  `dteDOB` date NOT NULL DEFAULT '1900-01-01',
  `dteDOJ` date NOT NULL DEFAULT '1900-01-01',
  `dteMembershipExpiry` date NOT NULL DEFAULT '1900-01-01',
  `strGender` varchar(7) NOT NULL DEFAULT 'M',
  `strParents` varchar(50) NOT NULL DEFAULT '',
  `strRemarks` varchar(200) NOT NULL DEFAULT '',
  `strIn` varchar(2) NOT NULL DEFAULT 'Y',
  `dteInDateTime` datetime NOT NULL,
  `strOut` varchar(2) NOT NULL DEFAULT 'N',
  `dteOutDateTime` datetime NOT NULL,
  `strBillNo` varchar(15) NOT NULL DEFAULT '',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strRegisterCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblregisterinoutplayzone: ~0 rows (approximately)
DELETE FROM `tblregisterinoutplayzone`;
/*!40000 ALTER TABLE `tblregisterinoutplayzone` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblregisterinoutplayzone` ENABLE KEYS */;

-- Dumping structure for table infosys.tblregisterterminal
DROP TABLE IF EXISTS `tblregisterterminal`;
CREATE TABLE IF NOT EXISTS `tblregisterterminal` (
  `strClientCode` varchar(20) NOT NULL,
  `strHOSTName` varchar(30) NOT NULL,
  `strMACAddress` varchar(20) NOT NULL,
  `strTerminalName` varchar(10) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strClientCode`,`strMACAddress`,`strTerminalName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblregisterterminal: ~3 rows (approximately)
DELETE FROM `tblregisterterminal`;
/*!40000 ALTER TABLE `tblregisterterminal` DISABLE KEYS */;
INSERT INTO `tblregisterterminal` (`strClientCode`, `strHOSTName`, `strMACAddress`, `strTerminalName`, `strUserCreated`, `dteDateCreated`, `strDataPostFlag`) VALUES
	('412.005', 'lenovo', '54-E1-AD-D3-8D-BB', 'SPOS', 'SANGUINE', '2022-08-10 00:00:00', 'N'),
	('412.005', 'Gauri', '60-A5-E2-5D-76-E0', 'SPOS', 'SANGUINE', '2022-06-01 00:00:00', 'N'),
	('412.005', 'DESKTOP-TFRTDRF', 'A0-D3-C1-0E-F6-2A', 'SPOS', 'SANGUINE', '2022-08-10 00:00:00', 'N'),
	('412.005', 'DESKTOP-LQUJ4IU', 'DC-E9-94-2E-AB-51', 'SPOS', 'SANGUINE', '2022-08-03 00:00:00', 'N');
/*!40000 ALTER TABLE `tblregisterterminal` ENABLE KEYS */;

-- Dumping structure for table infosys.tblreorderdtl
DROP TABLE IF EXISTS `tblreorderdtl`;
CREATE TABLE IF NOT EXISTS `tblreorderdtl` (
  `strReOrderCode` varchar(10) NOT NULL,
  `strItemCode` varchar(10) NOT NULL,
  `dblStock` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblReOrderQty` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblReOrderValue` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strNarration` varchar(200) NOT NULL DEFAULT 'NA',
  `strClientCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblreorderdtl: ~0 rows (approximately)
DELETE FROM `tblreorderdtl`;
/*!40000 ALTER TABLE `tblreorderdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblreorderdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblreorderhd
DROP TABLE IF EXISTS `tblreorderhd`;
CREATE TABLE IF NOT EXISTS `tblreorderhd` (
  `strReOrderCode` varchar(10) NOT NULL,
  `dteReOrderDate` datetime NOT NULL,
  `tmeReOrderTime` varchar(50) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strReOrderCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblreorderhd: ~0 rows (approximately)
DELETE FROM `tblreorderhd`;
/*!40000 ALTER TABLE `tblreorderhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblreorderhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblreordertime
DROP TABLE IF EXISTS `tblreordertime`;
CREATE TABLE IF NOT EXISTS `tblreordertime` (
  `tmeFromTime` varchar(10) NOT NULL,
  `tmeToTime` varchar(10) NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblreordertime: ~0 rows (approximately)
DELETE FROM `tblreordertime`;
/*!40000 ALTER TABLE `tblreordertime` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblreordertime` ENABLE KEYS */;

-- Dumping structure for table infosys.tblreportinggroup
DROP TABLE IF EXISTS `tblreportinggroup`;
CREATE TABLE IF NOT EXISTS `tblreportinggroup` (
  `strReportGroupCode` varchar(10) NOT NULL,
  `strReportGroupName` varchar(50) NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strUnderGroupCode` varchar(10) NOT NULL,
  PRIMARY KEY (`strReportGroupCode`,`strClientCode`,`strPOSCode`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblreportinggroup: ~0 rows (approximately)
DELETE FROM `tblreportinggroup`;
/*!40000 ALTER TABLE `tblreportinggroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblreportinggroup` ENABLE KEYS */;

-- Dumping structure for table infosys.tblreservation
DROP TABLE IF EXISTS `tblreservation`;
CREATE TABLE IF NOT EXISTS `tblreservation` (
  `strResCode` varchar(20) NOT NULL,
  `strCustomerCode` varchar(15) DEFAULT NULL,
  `intPax` int(11) NOT NULL DEFAULT '0',
  `strSmoking` varchar(5) NOT NULL DEFAULT 'N',
  `dteResDate` date NOT NULL,
  `tmeResTime` time NOT NULL,
  `strAMPM` varchar(2) NOT NULL,
  `strSpecialInfo` varchar(500) NOT NULL DEFAULT '',
  `strTableNo` varchar(10) NOT NULL DEFAULT '',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strPosCode` varchar(10) NOT NULL,
  `strCancelReservation` varchar(1) NOT NULL DEFAULT 'N',
  `strReservationType` varchar(50) NOT NULL DEFAULT '',
  `strBookedBy` varchar(100) NOT NULL DEFAULT '',
  `strReason` varchar(100) NOT NULL DEFAULT '',
  `strRemark` varchar(600) NOT NULL DEFAULT '',
  `strOccasion` varchar(50) NOT NULL DEFAULT '',
  `strBookingSrc` varchar(50) NOT NULL DEFAULT '',
  `strStatus` varchar(50) NOT NULL DEFAULT '',
  `strDesignation` varchar(50) NOT NULL DEFAULT '',
  `strFlag` varchar(50) NOT NULL DEFAULT '',
  `strCompany` varchar(50) NOT NULL DEFAULT '',
  `strPreferences` varchar(50) NOT NULL DEFAULT '',
  `strRating` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`strResCode`,`strClientCode`),
  KEY `strCustomerCode` (`strCustomerCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblreservation: ~0 rows (approximately)
DELETE FROM `tblreservation`;
/*!40000 ALTER TABLE `tblreservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblreservation` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsalessummaryreport
DROP TABLE IF EXISTS `tblsalessummaryreport`;
CREATE TABLE IF NOT EXISTS `tblsalessummaryreport` (
  `strPOSCode` varchar(150) NOT NULL,
  `strParticulars` varchar(150) NOT NULL,
  `strCurrToday` varchar(150) NOT NULL,
  `strCurrMTD` varchar(150) NOT NULL,
  `strCurrLM` varchar(150) NOT NULL,
  `strLastYearToday` varchar(150) NOT NULL,
  `strLastYearMTD` varchar(150) NOT NULL,
  `strLastYearLM` varchar(150) NOT NULL,
  `strClientCode` varchar(150) NOT NULL,
  `strUserCode` varchar(150) NOT NULL,
  `intSeqNo` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblsalessummaryreport: ~0 rows (approximately)
DELETE FROM `tblsalessummaryreport`;
/*!40000 ALTER TABLE `tblsalessummaryreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsalessummaryreport` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsettelmenthd
DROP TABLE IF EXISTS `tblsettelmenthd`;
CREATE TABLE IF NOT EXISTS `tblsettelmenthd` (
  `strSettelmentCode` varchar(10) NOT NULL,
  `strSettelmentDesc` varchar(50) NOT NULL,
  `strSettelmentType` varchar(50) NOT NULL,
  `strApplicable` varchar(50) NOT NULL,
  `strBilling` varchar(50) NOT NULL,
  `strAdvanceReceipt` varchar(50) NOT NULL,
  `dblConvertionRatio` decimal(18,2) NOT NULL,
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strAccountCode` varchar(20) NOT NULL,
  `strBillPrintOnSettlement` varchar(1) NOT NULL DEFAULT 'N',
  `strCreditReceiptYN` varchar(1) NOT NULL DEFAULT 'N',
  `dblThirdPartyComission` decimal(5,2) NOT NULL DEFAULT '0.00',
  `strComissionType` varchar(5) NOT NULL DEFAULT 'Per',
  `strComissionOn` varchar(50) NOT NULL DEFAULT 'Net Amount',
  `strCustomerSelectionOnBillSettlement` varchar(1) NOT NULL DEFAULT 'N',
  `strPrinterType` varchar(50) NOT NULL DEFAULT '',
  `strApplicableForChangeSettlement` varchar(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`strSettelmentCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblsettelmenthd: ~1 rows (approximately)
DELETE FROM `tblsettelmenthd`;
/*!40000 ALTER TABLE `tblsettelmenthd` DISABLE KEYS */;
INSERT INTO `tblsettelmenthd` (`strSettelmentCode`, `strSettelmentDesc`, `strSettelmentType`, `strApplicable`, `strBilling`, `strAdvanceReceipt`, `dblConvertionRatio`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`, `strClientCode`, `strDataPostFlag`, `strAccountCode`, `strBillPrintOnSettlement`, `strCreditReceiptYN`, `dblThirdPartyComission`, `strComissionType`, `strComissionOn`, `strCustomerSelectionOnBillSettlement`, `strPrinterType`, `strApplicableForChangeSettlement`) VALUES
	('S01', 'CASH', 'Cash', 'Yes', 'Yes', 'null', 1.00, 'SANGUINE', 'SANGUINE', '2022-06-01 15:18:16', '2022-06-01 15:18:16', '412.005', 'N', '', 'N', 'N', 0.00, 'Per', 'Net Amount', 'N', '', 'Y');
/*!40000 ALTER TABLE `tblsettelmenthd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsettlementtax
DROP TABLE IF EXISTS `tblsettlementtax`;
CREATE TABLE IF NOT EXISTS `tblsettlementtax` (
  `strTaxCode` varchar(10) NOT NULL,
  `strSettlementCode` varchar(3) NOT NULL,
  `strSettlementName` varchar(50) NOT NULL,
  `strApplicable` varchar(5) NOT NULL,
  `dteFrom` datetime NOT NULL,
  `dteTo` datetime NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`strTaxCode`,`strSettlementCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblsettlementtax: ~0 rows (approximately)
DELETE FROM `tblsettlementtax`;
/*!40000 ALTER TABLE `tblsettlementtax` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsettlementtax` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsetup
DROP TABLE IF EXISTS `tblsetup`;
CREATE TABLE IF NOT EXISTS `tblsetup` (
  `strClientId` varchar(10) NOT NULL,
  `strClientName` varchar(100) NOT NULL,
  `strAddressLine1` varchar(100) NOT NULL,
  `strAddressLine2` varchar(100) NOT NULL,
  `strAddressLine3` varchar(100) NOT NULL,
  `strEmail` varchar(50) NOT NULL,
  `strBillFooter` varchar(2000) NOT NULL,
  `strBillFooterStatus` varchar(5) NOT NULL,
  `intBillPaperSize` int(10) NOT NULL,
  `strNegativeBilling` varchar(1) NOT NULL,
  `strDayEnd` varchar(1) NOT NULL DEFAULT 'N',
  `strPrintMode` varchar(50) NOT NULL,
  `strDiscountNote` varchar(50) NOT NULL,
  `strCityName` varchar(50) NOT NULL,
  `strState` varchar(50) NOT NULL,
  `strCountry` varchar(50) NOT NULL,
  `intTelephoneNo` varchar(50) NOT NULL,
  `dteStartDate` datetime NOT NULL,
  `dteEndDate` datetime NOT NULL,
  `strNatureOfBusinnes` varchar(50) NOT NULL,
  `strMultipleBillPrinting` varchar(1) NOT NULL,
  `strEnableKOT` varchar(1) NOT NULL,
  `strEffectOnPSP` varchar(1) NOT NULL,
  `strPrintVatNo` varchar(1) NOT NULL,
  `strVatNo` varchar(50) NOT NULL,
  `strShowBill` varchar(1) NOT NULL,
  `strPrintServiceTaxNo` varchar(1) NOT NULL,
  `strServiceTaxNo` varchar(50) NOT NULL,
  `strManualBillNo` varchar(15) NOT NULL,
  `strMenuItemDispSeq` varchar(15) NOT NULL,
  `strSenderEmailId` varchar(40) NOT NULL,
  `strEmailPassword` varchar(25) NOT NULL,
  `strConfirmEmailPassword` varchar(25) NOT NULL,
  `strBody` varchar(500) NOT NULL,
  `strEmailServerName` varchar(50) NOT NULL,
  `strSMSApi` varchar(200) NOT NULL,
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strPOSType` varchar(20) NOT NULL DEFAULT 'No',
  `strWebServiceLink` varchar(100) NOT NULL DEFAULT '',
  `strDataSendFrequency` varchar(100) NOT NULL DEFAULT '',
  `dteHOServerDate` varchar(25) NOT NULL DEFAULT '2013-01-01 16:49:15',
  `strRFID` varchar(1) NOT NULL DEFAULT 'N',
  `strServerName` varchar(30) NOT NULL DEFAULT '',
  `strDBUserName` varchar(15) NOT NULL DEFAULT '',
  `strDBPassword` varchar(20) NOT NULL DEFAULT '',
  `strDatabaseName` varchar(20) NOT NULL DEFAULT '',
  `strEnableKOTForDirectBiller` varchar(1) NOT NULL DEFAULT 'N',
  `intPinCode` int(6) NOT NULL,
  `strChangeTheme` varchar(7) NOT NULL DEFAULT 'N',
  `dblMaxDiscount` decimal(18,2) NOT NULL DEFAULT '99.00',
  `strAreaWisePricing` varchar(3) NOT NULL DEFAULT 'N',
  `strMenuItemSortingOn` varchar(20) NOT NULL DEFAULT 'NA',
  `strDirectAreaCode` varchar(20) NOT NULL DEFAULT '',
  `intColumnSize` int(2) NOT NULL DEFAULT '40',
  `strPrintType` varchar(25) NOT NULL,
  `strEditHomeDelivery` varchar(1) NOT NULL DEFAULT 'N',
  `strSlabBasedHDCharges` varchar(1) NOT NULL DEFAULT 'N',
  `strSkipWaiterAndPax` varchar(1) NOT NULL DEFAULT 'N',
  `strSkipWaiter` varchar(1) NOT NULL DEFAULT 'N',
  `strDirectKOTPrintMakeKOT` varchar(1) NOT NULL DEFAULT 'N',
  `strSkipPax` varchar(1) NOT NULL DEFAULT 'N',
  `strCRMInterface` varchar(50) NOT NULL DEFAULT '',
  `strGetWebserviceURL` varchar(300) NOT NULL DEFAULT '',
  `strPostWebserviceURL` varchar(300) NOT NULL DEFAULT '',
  `strOutletUID` varchar(100) NOT NULL DEFAULT '',
  `strPOSID` varchar(100) NOT NULL DEFAULT '',
  `strStockInOption` varchar(15) NOT NULL DEFAULT '',
  `longCustSeries` bigint(20) NOT NULL,
  `intAdvReceiptPrintCount` int(11) NOT NULL DEFAULT '0',
  `strHomeDeliverySMS` varchar(600) NOT NULL,
  `strBillStettlementSMS` varchar(300) NOT NULL,
  `strBillFormatType` varchar(30) NOT NULL DEFAULT '',
  `strActivePromotions` varchar(1) NOT NULL DEFAULT 'N',
  `strSendHomeDelSMS` varchar(1) NOT NULL DEFAULT 'N',
  `strSendBillSettlementSMS` varchar(1) NOT NULL DEFAULT 'N',
  `strSMSType` varchar(50) NOT NULL,
  `strPrintShortNameOnKOT` varchar(1) NOT NULL DEFAULT 'N',
  `strShowCustHelp` varchar(1) NOT NULL DEFAULT 'N',
  `strPrintOnVoidBill` varchar(1) NOT NULL DEFAULT 'N',
  `strPostSalesDataToMMS` varchar(1) NOT NULL DEFAULT 'N',
  `strCustAreaMasterCompulsory` varchar(1) NOT NULL DEFAULT 'N',
  `strPriceFrom` varchar(20) NOT NULL DEFAULT 'Menu Pricing',
  `strShowPrinterErrorMessage` varchar(1) NOT NULL DEFAULT 'Y',
  `strTouchScreenMode` varchar(1) NOT NULL DEFAULT 'N',
  `strCardInterfaceType` varchar(50) NOT NULL,
  `strCMSIntegrationYN` varchar(1) NOT NULL DEFAULT 'N',
  `strCMSWebServiceURL` varchar(255) NOT NULL DEFAULT '',
  `strChangeQtyForExternalCode` varchar(1) NOT NULL DEFAULT 'N',
  `strPointsOnBillPrint` varchar(1) NOT NULL DEFAULT 'N',
  `strCMSPOSCode` varchar(20) NOT NULL DEFAULT '',
  `strManualAdvOrderNoCompulsory` varchar(1) NOT NULL DEFAULT 'N',
  `strPrintManualAdvOrderNoOnBill` varchar(1) NOT NULL DEFAULT 'N',
  `strPrintModifierQtyOnKOT` varchar(1) NOT NULL DEFAULT 'Y',
  `strNoOfLinesInKOTPrint` varchar(100) NOT NULL DEFAULT '5',
  `strMultipleKOTPrintYN` varchar(1) NOT NULL DEFAULT 'N',
  `strItemQtyNumpad` varchar(1) NOT NULL DEFAULT 'N',
  `strTreatMemberAsTable` varchar(1) NOT NULL DEFAULT '',
  `strKOTToLocalPrinter` varchar(1) NOT NULL DEFAULT 'N',
  `blobReportImage` longblob,
  `strSettleBtnForDirectBillerBill` varchar(1) NOT NULL DEFAULT 'N',
  `strDelBoySelCompulsoryOnDirectBiller` varchar(1) NOT NULL DEFAULT 'N',
  `strCMSMemberForKOTJPOS` varchar(1) NOT NULL DEFAULT 'Y',
  `strCMSMemberForKOTMPOS` varchar(1) NOT NULL DEFAULT 'Y',
  `strDontShowAdvOrderInOtherPOS` varchar(1) NOT NULL DEFAULT 'N',
  `strPrintZeroAmtModifierInBill` varchar(1) NOT NULL DEFAULT 'N',
  `strPrintKOTYN` varchar(1) NOT NULL DEFAULT 'Y',
  `strCreditCardSlipNoCompulsoryYN` varchar(1) NOT NULL DEFAULT 'N',
  `strCreditCardExpiryDateCompulsoryYN` varchar(1) NOT NULL DEFAULT 'N',
  `strSelectWaiterFromCardSwipe` varchar(1) NOT NULL DEFAULT 'N',
  `strMultiWaiterSelectionOnMakeKOT` varchar(1) NOT NULL DEFAULT 'N',
  `strMoveTableToOtherPOS` varchar(1) NOT NULL DEFAULT 'N',
  `strMoveKOTToOtherPOS` varchar(1) NOT NULL DEFAULT 'N',
  `strCalculateTaxOnMakeKOT` varchar(1) NOT NULL DEFAULT 'N',
  `strReceiverEmailId` varchar(500) NOT NULL DEFAULT '',
  `strCalculateDiscItemWise` varchar(1) NOT NULL DEFAULT 'N',
  `strTakewayCustomerSelection` varchar(1) NOT NULL DEFAULT 'N',
  `StrShowItemStkColumnInDB` varchar(1) NOT NULL DEFAULT 'N',
  `strItemType` varchar(10) NOT NULL DEFAULT 'Both',
  `strAllowNewAreaMasterFromCustMaster` varchar(5) NOT NULL DEFAULT 'N',
  `strCustAddressSelectionForBill` varchar(1) NOT NULL DEFAULT 'N',
  `strGenrateMI` varchar(1) NOT NULL DEFAULT 'N',
  `strFTPAddress` varchar(50) NOT NULL DEFAULT '',
  `strFTPServerUserName` varchar(50) NOT NULL DEFAULT '',
  `strFTPServerPass` varchar(50) NOT NULL DEFAULT '',
  `strAllowToCalculateItemWeight` varchar(5) NOT NULL DEFAULT 'N',
  `strShowBillsDtlType` varchar(30) NOT NULL,
  `strPrintTaxInvoiceOnBill` varchar(5) NOT NULL DEFAULT 'Y',
  `strPrintInclusiveOfAllTaxesOnBill` varchar(5) NOT NULL DEFAULT 'Y',
  `strApplyDiscountOn` varchar(20) NOT NULL DEFAULT 'SubTotal',
  `strMemberCodeForKotInMposByCardSwipe` varchar(20) NOT NULL DEFAULT 'N',
  `strPrintBillYN` varchar(1) NOT NULL DEFAULT 'Y',
  `strVatAndServiceTaxFromPos` varchar(1) NOT NULL DEFAULT 'Y',
  `strMemberCodeForMakeBillInMPOS` varchar(1) NOT NULL DEFAULT 'N',
  `strItemWiseKOTYN` varchar(1) NOT NULL DEFAULT 'N',
  `strLastPOSForDayEnd` varchar(10) NOT NULL,
  `strCMSPostingType` varchar(20) NOT NULL,
  `strPopUpToApplyPromotionsOnBill` varchar(1) NOT NULL DEFAULT 'N',
  `strSelectCustomerCodeFromCardSwipe` varchar(1) NOT NULL DEFAULT 'N',
  `strCheckDebitCardBalOnTransactions` varchar(1) NOT NULL DEFAULT 'N',
  `strSettlementsFromPOSMaster` varchar(1) NOT NULL DEFAULT 'N',
  `strShiftWiseDayEndYN` varchar(1) NOT NULL DEFAULT 'N',
  `strProductionLinkup` varchar(1) NOT NULL DEFAULT 'N',
  `strLockDataOnShift` varchar(1) NOT NULL DEFAULT 'Y',
  `strWSClientCode` varchar(11) NOT NULL DEFAULT '',
  `strPOSCode` varchar(10) NOT NULL DEFAULT 'All',
  `strEnableBillSeries` varchar(1) NOT NULL DEFAULT 'N',
  `strEnablePMSIntegrationYN` varchar(1) NOT NULL DEFAULT 'N',
  `strPrintTimeOnBill` varchar(1) NOT NULL DEFAULT 'N',
  `strPrintTDHItemsInBill` varchar(1) NOT NULL DEFAULT 'N',
  `strPrintRemarkAndReasonForReprint` varchar(1) NOT NULL DEFAULT 'N',
  `intDaysBeforeOrderToCancel` int(11) NOT NULL DEFAULT '0',
  `intNoOfDelDaysForAdvOrder` int(11) NOT NULL DEFAULT '0',
  `intNoOfDelDaysForUrgentOrder` int(11) NOT NULL DEFAULT '0',
  `strSetUpToTimeForAdvOrder` varchar(1) NOT NULL DEFAULT 'N',
  `strSetUpToTimeForUrgentOrder` varchar(1) NOT NULL DEFAULT 'N',
  `strUpToTimeForAdvOrder` varchar(20) NOT NULL DEFAULT '00:00 AM',
  `strUpToTimeForUrgentOrder` varchar(20) NOT NULL DEFAULT '00:00 AM',
  `strEnableBothPrintAndSettleBtnForDB` varchar(1) NOT NULL DEFAULT 'N',
  `strInrestoPOSIntegrationYN` varchar(1) NOT NULL DEFAULT 'N',
  `strInrestoPOSWebServiceURL` varchar(255) NOT NULL DEFAULT '',
  `strInrestoPOSId` varchar(50) NOT NULL DEFAULT '',
  `strInrestoPOSKey` varchar(50) NOT NULL DEFAULT '',
  `strCarryForwardFloatAmtToNextDay` varchar(1) NOT NULL DEFAULT 'N',
  `strOpenCashDrawerAfterBillPrintYN` varchar(1) NOT NULL DEFAULT 'N',
  `strPropertyWiseSalesOrderYN` varchar(1) NOT NULL DEFAULT 'N',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strShowItemDetailsGrid` varchar(1) NOT NULL DEFAULT 'Y',
  `strShowPopUpForNextItemQuantity` varchar(1) NOT NULL DEFAULT 'N',
  `strJioMoneyIntegration` varchar(1) NOT NULL DEFAULT 'N',
  `strJioWebServiceUrl` varchar(255) NOT NULL DEFAULT '',
  `strJioMID` varchar(15) NOT NULL,
  `strJioTID` varchar(8) NOT NULL,
  `strJioActivationCode` varchar(16) NOT NULL,
  `strJioDeviceID` varchar(20) NOT NULL,
  `strNewBillSeriesForNewDay` varchar(1) NOT NULL DEFAULT 'N',
  `strShowReportsPOSWise` varchar(1) NOT NULL DEFAULT 'N',
  `strEnableDineIn` varchar(1) NOT NULL DEFAULT 'Y',
  `strAutoAreaSelectionInMakeKOT` varchar(1) NOT NULL DEFAULT 'N',
  `strConsolidatedKOTPrinterPort` varchar(100) NOT NULL DEFAULT '',
  `dblRoundOff` decimal(18,2) NOT NULL DEFAULT '1.00',
  `strShowUnSettlementForm` varchar(1) NOT NULL DEFAULT 'Y',
  `strPrintOpenItemsOnBill` varchar(1) NOT NULL DEFAULT 'Y',
  `strPrintHomeDeliveryYN` varchar(1) NOT NULL DEFAULT 'Y',
  `strScanQRYN` varchar(1) NOT NULL DEFAULT 'N',
  `strAreaWisePromotions` varchar(1) NOT NULL DEFAULT 'N',
  `strPrintItemsOnMoveKOTMoveTable` varchar(1) NOT NULL DEFAULT 'N',
  `strShowPurRateInDirectBiller` varchar(1) NOT NULL DEFAULT 'N',
  `strEnableTableReservationForCustomer` varchar(1) NOT NULL DEFAULT 'N',
  `strAutoShowPopItems` varchar(1) NOT NULL DEFAULT 'N',
  `intShowPopItemsOfDays` int(11) NOT NULL DEFAULT '1',
  `strPostSalesCostOrLoc` varchar(20) NOT NULL DEFAULT 'Cost Center',
  `strEffectOfSales` varchar(20) NOT NULL DEFAULT '',
  `strPOSWiseItemToMMSProductLinkUpYN` varchar(1) NOT NULL DEFAULT 'N',
  `strEnableMasterDiscount` varchar(1) NOT NULL DEFAULT 'N',
  `strEnableNFCInterface` varchar(1) NOT NULL DEFAULT 'N',
  `strBenowIntegrationYN` varchar(1) NOT NULL DEFAULT 'N',
  `strXEmail` varchar(50) NOT NULL,
  `strMerchantCode` varchar(15) NOT NULL,
  `strAuthenticationKey` varchar(500) NOT NULL,
  `strSalt` varchar(20) NOT NULL,
  `strEnableLockTable` varchar(1) NOT NULL DEFAULT 'Y',
  `strHomeDeliveryAreaForDirectBiller` varchar(5) NOT NULL DEFAULT 'A001',
  `strTakeAwayAreaForDirectBiller` varchar(5) NOT NULL DEFAULT 'A001',
  `strRoundOffBillFinalAmt` varchar(5) NOT NULL DEFAULT 'Y',
  `dblNoOfDecimalPlace` int(2) NOT NULL DEFAULT '2',
  `strSendDBBackupOnClientMail` varchar(1) NOT NULL DEFAULT 'N',
  `strPrintOrderNoOnBillYN` varchar(1) NOT NULL DEFAULT 'Y',
  `strPrintDeviceAndUserDtlOnKOTYN` varchar(1) NOT NULL DEFAULT 'Y',
  `strRemoveSCTaxCode` varchar(10) NOT NULL DEFAULT '',
  `strAutoAddKOTToBill` varchar(1) NOT NULL DEFAULT 'N',
  `strAreaWiseCostCenterKOTPrintingYN` varchar(1) NOT NULL DEFAULT 'N',
  `strWERAOnlineOrderIntegration` varchar(1) NOT NULL DEFAULT 'N',
  `strWERAMerchantOutletId` varchar(10) NOT NULL DEFAULT '',
  `strWERAAuthenticationAPIKey` varchar(100) NOT NULL DEFAULT '',
  `strFireCommunication` varchar(1) NOT NULL DEFAULT 'N',
  `dblUSDConverionRate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `strDBBackupMailReceiver` varchar(500) NOT NULL DEFAULT '',
  `strPrintMoveTableMoveKOTYN` varchar(1) NOT NULL DEFAULT 'Y',
  `strPrintQtyTotal` varchar(1) NOT NULL DEFAULT 'N',
  `strShowReportsInCurrency` varchar(20) NOT NULL DEFAULT 'BASE',
  `strPOSToMMSPostingCurrency` varchar(20) NOT NULL DEFAULT 'BASE',
  `strPOSToWebBooksPostingCurrency` varchar(20) NOT NULL DEFAULT 'BASE',
  `strLockTableForWaiter` varchar(1) NOT NULL DEFAULT 'N',
  `strReprintOnSettleBill` varchar(1) NOT NULL DEFAULT 'N',
  `strTableReservationSMS` varchar(300) NOT NULL,
  `strSendTableReservationSMS` varchar(1) NOT NULL DEFAULT 'N',
  `strMergeAllKOTSToBill` varchar(1) NOT NULL DEFAULT 'N',
  `strEmailSmtpHost` varchar(50) NOT NULL DEFAULT '',
  `strEmailSmtpPort` varchar(10) NOT NULL DEFAULT ' ',
  `strSendDBBackupOnSanguineId` varchar(1) NOT NULL DEFAULT 'Y',
  `strPrintOriginalOnBill` varchar(1) NOT NULL DEFAULT 'N',
  `strPostSalesDataToExcise` varchar(1) NOT NULL DEFAULT 'N',
  `strPrintFullVoidBill` varchar(1) NOT NULL DEFAULT 'N',
  `strUserWiseShowBill` varchar(1) NOT NULL DEFAULT 'N',
  `strDisplayTotalShowBill` varchar(1) NOT NULL DEFAULT 'Y',
  `strShowNotificationsOnTransaction` varchar(1) NOT NULL DEFAULT 'N',
  `strBlankDayEndPrint` varchar(1) NOT NULL DEFAULT 'Y',
  `strOnlineOrderNotification` varchar(1) NOT NULL DEFAULT 'N',
  `strPostRoundOffToWebBooks` varchar(1) NOT NULL DEFAULT 'Y',
  `strShortNameOnDirectBillerAndBill` varchar(1) NOT NULL DEFAULT 'N',
  `strClearAllTrasactionAtDayEnd` varchar(1) NOT NULL DEFAULT 'N',
  `strCashDenominationCompulsary` varchar(1) NOT NULL DEFAULT 'N',
  `strCashManagementCompulsary` varchar(1) NOT NULL DEFAULT 'N',
  `strShowItemCodeOnPLU` varchar(1) NOT NULL DEFAULT 'N',
  `strDirectSettleOnSelection` varchar(1) NOT NULL DEFAULT 'N',
  `strPrintOrderNoOnMakeKot` varchar(1) NOT NULL DEFAULT 'N',
  `strPaxOnBilling` varchar(1) NOT NULL DEFAULT 'N',
  `strDirectBillFromMakeKOTOnBarTable` varchar(1) NOT NULL DEFAULT 'N',
  `strTakeFFModifierAmt` varchar(1) NOT NULL DEFAULT 'Y',
  `strImmediateSettlement` varchar(1) NOT NULL DEFAULT 'N',
  `strShowSubGroupShortName` varchar(1) NOT NULL DEFAULT 'N',
  `strOnlineOrderChannel` varchar(15) NOT NULL DEFAULT '',
  `strUrbanPiperServerLink` varchar(30) NOT NULL DEFAULT '',
  `strMPesaIntegration` varchar(5) NOT NULL DEFAULT '',
  `strMPesaShortCode` varchar(10) NOT NULL DEFAULT '',
  `strMPesaConsumerKey` varchar(50) NOT NULL DEFAULT '',
  `strMPesaSecret` varchar(50) NOT NULL DEFAULT '',
  `strMPesaValidationURL` varchar(110) NOT NULL DEFAULT '',
  `strMPesaConfirmationURL` varchar(110) NOT NULL DEFAULT '',
  `strMPesaTillNumer` varchar(20) NOT NULL DEFAULT '',
  `strMPesaLNMPassKey` varchar(100) NOT NULL DEFAULT '',
  `strBarCodePrinterName` varchar(40) NOT NULL DEFAULT '',
  `dteQRMenuDate` varchar(25) NOT NULL DEFAULT '',
  `strQRMenuServerLink` varchar(50) NOT NULL DEFAULT '',
  `strCompItemOnMakeKot` varchar(1) NOT NULL DEFAULT 'N',
  `strPasswordPolicyDays` int(4) NOT NULL DEFAULT '0',
  `strItemNoDiscount` varchar(25) NOT NULL DEFAULT '',
  `strPaytmTID` varchar(50) NOT NULL,
  `strPaytmMID` varchar(50) NOT NULL,
  `strPaytmMkey` varchar(50) NOT NULL,
  `strDineoutRestaurantID` varchar(50) NOT NULL,
  `intBillReprintLimit` int(11) NOT NULL DEFAULT '0',
  `intKOTReprintLimit` int(11) NOT NULL DEFAULT '0',
  `strPlayZonePricingType` varchar(40) NOT NULL,
  `intIncreamentalValue` int(11) NOT NULL DEFAULT '0',
  `strDonation` varchar(20) NOT NULL DEFAULT '',
  `strPricingAreaFromTables` varchar(1) NOT NULL DEFAULT 'N',
  `strTableReservationInterfaceType` varchar(50) NOT NULL DEFAULT '',
  `strDiscoRestuarantId` varchar(50) NOT NULL DEFAULT '',
  `strDiscoInterfaceId` varchar(50) NOT NULL DEFAULT '',
  `strDiscoAuthenticationKey` varchar(50) NOT NULL DEFAULT '',
  `strDiscoAuthenticationValue` varchar(50) NOT NULL DEFAULT '',
  `strDiscoSourceApp` varchar(50) NOT NULL DEFAULT '',
  `strDiscoPackageName` varchar(50) NOT NULL DEFAULT '',
  `strAutoGeneratedOrdersAfter` varchar(50) NOT NULL,
  `strPricingAreaForOnlineOrders` varchar(5) NOT NULL DEFAULT 'A001',
  `strOperationType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`strClientId`,`strPOSCode`) USING BTREE,
  KEY `strShopCode` (`strClientId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblsetup: ~1 rows (approximately)
DELETE FROM `tblsetup`;
/*!40000 ALTER TABLE `tblsetup` DISABLE KEYS */;
INSERT INTO `tblsetup` (`strClientId`, `strClientName`, `strAddressLine1`, `strAddressLine2`, `strAddressLine3`, `strEmail`, `strBillFooter`, `strBillFooterStatus`, `intBillPaperSize`, `strNegativeBilling`, `strDayEnd`, `strPrintMode`, `strDiscountNote`, `strCityName`, `strState`, `strCountry`, `intTelephoneNo`, `dteStartDate`, `dteEndDate`, `strNatureOfBusinnes`, `strMultipleBillPrinting`, `strEnableKOT`, `strEffectOnPSP`, `strPrintVatNo`, `strVatNo`, `strShowBill`, `strPrintServiceTaxNo`, `strServiceTaxNo`, `strManualBillNo`, `strMenuItemDispSeq`, `strSenderEmailId`, `strEmailPassword`, `strConfirmEmailPassword`, `strBody`, `strEmailServerName`, `strSMSApi`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`, `strPOSType`, `strWebServiceLink`, `strDataSendFrequency`, `dteHOServerDate`, `strRFID`, `strServerName`, `strDBUserName`, `strDBPassword`, `strDatabaseName`, `strEnableKOTForDirectBiller`, `intPinCode`, `strChangeTheme`, `dblMaxDiscount`, `strAreaWisePricing`, `strMenuItemSortingOn`, `strDirectAreaCode`, `intColumnSize`, `strPrintType`, `strEditHomeDelivery`, `strSlabBasedHDCharges`, `strSkipWaiterAndPax`, `strSkipWaiter`, `strDirectKOTPrintMakeKOT`, `strSkipPax`, `strCRMInterface`, `strGetWebserviceURL`, `strPostWebserviceURL`, `strOutletUID`, `strPOSID`, `strStockInOption`, `longCustSeries`, `intAdvReceiptPrintCount`, `strHomeDeliverySMS`, `strBillStettlementSMS`, `strBillFormatType`, `strActivePromotions`, `strSendHomeDelSMS`, `strSendBillSettlementSMS`, `strSMSType`, `strPrintShortNameOnKOT`, `strShowCustHelp`, `strPrintOnVoidBill`, `strPostSalesDataToMMS`, `strCustAreaMasterCompulsory`, `strPriceFrom`, `strShowPrinterErrorMessage`, `strTouchScreenMode`, `strCardInterfaceType`, `strCMSIntegrationYN`, `strCMSWebServiceURL`, `strChangeQtyForExternalCode`, `strPointsOnBillPrint`, `strCMSPOSCode`, `strManualAdvOrderNoCompulsory`, `strPrintManualAdvOrderNoOnBill`, `strPrintModifierQtyOnKOT`, `strNoOfLinesInKOTPrint`, `strMultipleKOTPrintYN`, `strItemQtyNumpad`, `strTreatMemberAsTable`, `strKOTToLocalPrinter`, `blobReportImage`, `strSettleBtnForDirectBillerBill`, `strDelBoySelCompulsoryOnDirectBiller`, `strCMSMemberForKOTJPOS`, `strCMSMemberForKOTMPOS`, `strDontShowAdvOrderInOtherPOS`, `strPrintZeroAmtModifierInBill`, `strPrintKOTYN`, `strCreditCardSlipNoCompulsoryYN`, `strCreditCardExpiryDateCompulsoryYN`, `strSelectWaiterFromCardSwipe`, `strMultiWaiterSelectionOnMakeKOT`, `strMoveTableToOtherPOS`, `strMoveKOTToOtherPOS`, `strCalculateTaxOnMakeKOT`, `strReceiverEmailId`, `strCalculateDiscItemWise`, `strTakewayCustomerSelection`, `StrShowItemStkColumnInDB`, `strItemType`, `strAllowNewAreaMasterFromCustMaster`, `strCustAddressSelectionForBill`, `strGenrateMI`, `strFTPAddress`, `strFTPServerUserName`, `strFTPServerPass`, `strAllowToCalculateItemWeight`, `strShowBillsDtlType`, `strPrintTaxInvoiceOnBill`, `strPrintInclusiveOfAllTaxesOnBill`, `strApplyDiscountOn`, `strMemberCodeForKotInMposByCardSwipe`, `strPrintBillYN`, `strVatAndServiceTaxFromPos`, `strMemberCodeForMakeBillInMPOS`, `strItemWiseKOTYN`, `strLastPOSForDayEnd`, `strCMSPostingType`, `strPopUpToApplyPromotionsOnBill`, `strSelectCustomerCodeFromCardSwipe`, `strCheckDebitCardBalOnTransactions`, `strSettlementsFromPOSMaster`, `strShiftWiseDayEndYN`, `strProductionLinkup`, `strLockDataOnShift`, `strWSClientCode`, `strPOSCode`, `strEnableBillSeries`, `strEnablePMSIntegrationYN`, `strPrintTimeOnBill`, `strPrintTDHItemsInBill`, `strPrintRemarkAndReasonForReprint`, `intDaysBeforeOrderToCancel`, `intNoOfDelDaysForAdvOrder`, `intNoOfDelDaysForUrgentOrder`, `strSetUpToTimeForAdvOrder`, `strSetUpToTimeForUrgentOrder`, `strUpToTimeForAdvOrder`, `strUpToTimeForUrgentOrder`, `strEnableBothPrintAndSettleBtnForDB`, `strInrestoPOSIntegrationYN`, `strInrestoPOSWebServiceURL`, `strInrestoPOSId`, `strInrestoPOSKey`, `strCarryForwardFloatAmtToNextDay`, `strOpenCashDrawerAfterBillPrintYN`, `strPropertyWiseSalesOrderYN`, `strDataPostFlag`, `strShowItemDetailsGrid`, `strShowPopUpForNextItemQuantity`, `strJioMoneyIntegration`, `strJioWebServiceUrl`, `strJioMID`, `strJioTID`, `strJioActivationCode`, `strJioDeviceID`, `strNewBillSeriesForNewDay`, `strShowReportsPOSWise`, `strEnableDineIn`, `strAutoAreaSelectionInMakeKOT`, `strConsolidatedKOTPrinterPort`, `dblRoundOff`, `strShowUnSettlementForm`, `strPrintOpenItemsOnBill`, `strPrintHomeDeliveryYN`, `strScanQRYN`, `strAreaWisePromotions`, `strPrintItemsOnMoveKOTMoveTable`, `strShowPurRateInDirectBiller`, `strEnableTableReservationForCustomer`, `strAutoShowPopItems`, `intShowPopItemsOfDays`, `strPostSalesCostOrLoc`, `strEffectOfSales`, `strPOSWiseItemToMMSProductLinkUpYN`, `strEnableMasterDiscount`, `strEnableNFCInterface`, `strBenowIntegrationYN`, `strXEmail`, `strMerchantCode`, `strAuthenticationKey`, `strSalt`, `strEnableLockTable`, `strHomeDeliveryAreaForDirectBiller`, `strTakeAwayAreaForDirectBiller`, `strRoundOffBillFinalAmt`, `dblNoOfDecimalPlace`, `strSendDBBackupOnClientMail`, `strPrintOrderNoOnBillYN`, `strPrintDeviceAndUserDtlOnKOTYN`, `strRemoveSCTaxCode`, `strAutoAddKOTToBill`, `strAreaWiseCostCenterKOTPrintingYN`, `strWERAOnlineOrderIntegration`, `strWERAMerchantOutletId`, `strWERAAuthenticationAPIKey`, `strFireCommunication`, `dblUSDConverionRate`, `strDBBackupMailReceiver`, `strPrintMoveTableMoveKOTYN`, `strPrintQtyTotal`, `strShowReportsInCurrency`, `strPOSToMMSPostingCurrency`, `strPOSToWebBooksPostingCurrency`, `strLockTableForWaiter`, `strReprintOnSettleBill`, `strTableReservationSMS`, `strSendTableReservationSMS`, `strMergeAllKOTSToBill`, `strEmailSmtpHost`, `strEmailSmtpPort`, `strSendDBBackupOnSanguineId`, `strPrintOriginalOnBill`, `strPostSalesDataToExcise`, `strPrintFullVoidBill`, `strUserWiseShowBill`, `strDisplayTotalShowBill`, `strShowNotificationsOnTransaction`, `strBlankDayEndPrint`, `strOnlineOrderNotification`, `strPostRoundOffToWebBooks`, `strShortNameOnDirectBillerAndBill`, `strClearAllTrasactionAtDayEnd`, `strCashDenominationCompulsary`, `strCashManagementCompulsary`, `strShowItemCodeOnPLU`, `strDirectSettleOnSelection`, `strPrintOrderNoOnMakeKot`, `strPaxOnBilling`, `strDirectBillFromMakeKOTOnBarTable`, `strTakeFFModifierAmt`, `strImmediateSettlement`, `strShowSubGroupShortName`, `strOnlineOrderChannel`, `strUrbanPiperServerLink`, `strMPesaIntegration`, `strMPesaShortCode`, `strMPesaConsumerKey`, `strMPesaSecret`, `strMPesaValidationURL`, `strMPesaConfirmationURL`, `strMPesaTillNumer`, `strMPesaLNMPassKey`, `strBarCodePrinterName`, `dteQRMenuDate`, `strQRMenuServerLink`, `strCompItemOnMakeKot`, `strPasswordPolicyDays`, `strItemNoDiscount`, `strPaytmTID`, `strPaytmMID`, `strPaytmMkey`, `strDineoutRestaurantID`, `intBillReprintLimit`, `intKOTReprintLimit`, `strPlayZonePricingType`, `intIncreamentalValue`, `strDonation`, `strPricingAreaFromTables`, `strTableReservationInterfaceType`, `strDiscoRestuarantId`, `strDiscoInterfaceId`, `strDiscoAuthenticationKey`, `strDiscoAuthenticationValue`, `strDiscoSourceApp`, `strDiscoPackageName`, `strAutoGeneratedOrdersAfter`, `strPricingAreaForOnlineOrders`, `strOperationType`) VALUES
	('412.005', 'Demo 1', '.', '.', '.', 'info@gmail.com', 'THANK YOU AND VISIT AGAIN !!!', '0', 3, 'Y', 'N', 'Portrait', '10%', 'Bangalore', 'Maharashtra', 'India', '.', '2013-05-01 00:00:00', '2015-10-15 00:00:00', 'F&B', 'N', 'N', 'N', 'N', '', 'Y', 'N', '', 'N', 'Ascending', '', 'teams@2018.', 'teams@2018.', 'Day End Reports !!!', 'smtp.gmail.com', '', 'SUPER', 'SANGUINE', '2013-05-01 16:49:15', '2022-08-10 18:48:39', 'Stand Alone', 'http://localhost:8081/prjSanguineWebService', 'After Every Bill', '2021-10-25 16:34:54.0', 'N', '', '', '', '', 'N', 0, 'Default', 99.00, 'N', 'subgroupWise', 'A001', 40, 'Text File', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'JPOS', '', '', '', '', 'ItemWise', 1, 2, '', '', 'Text 5', 'N', 'N', 'N', 'SINFINI', 'N', 'N', 'Y', 'N', 'N', 'Menu Pricing', 'Y', 'N', 'Customer Card', 'N', '', 'Y', 'N', 'SAN', 'N', 'N', 'N', '7', 'N', 'N', 'N', 'N', _binary '', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', '', 'Y', 'N', 'N', 'Both', 'N', 'Y', 'N', '', '', '', 'Y', 'Delivery Detail Wise', 'N', 'Y', 'Item Master', 'N', 'Y', 'Y', 'N', 'N', 'P01', 'Others', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', '426.005', 'P01', 'N', 'N', 'Y', 'N', 'N', 0, 0, 0, 'Y', 'Y', '23:59 PM', '23:59 PM', 'Y', 'N', '', '', '', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', '', '', '', '', '', 'N', 'N', 'Y', 'N', '', 1.00, 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 1, 'Cost Center', 'MMS', 'N', 'N', 'N', 'N', '', '', '', '', 'Y', 'A001', 'A001', 'Y', 1, 'Y', 'Y', 'Y', '', 'N', 'N', 'N', '', '', 'N', 0.00, '', 'N', 'N', 'BASE', 'BASE', 'BASE', 'N', 'N', '', 'N', 'N', 'smtp.gmail.com', '465', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'Wera', '', 'No', '', '', '', '', '', '', '', '', '2021-6-8 null', 'http://localhost:8081/prjSanguineWebService', 'N', 0, 'Item Master', '', '', '', '', 0, 0, 'PlayZone Pricing', 0, '', 'N', 'Sanguine', '', '', '', '', '', '', 'No', 'A001', 'DineIn');
/*!40000 ALTER TABLE `tblsetup` ENABLE KEYS */;

-- Dumping structure for table infosys.tblshiftmaster
DROP TABLE IF EXISTS `tblshiftmaster`;
CREATE TABLE IF NOT EXISTS `tblshiftmaster` (
  `intShiftCode` int(11) NOT NULL DEFAULT '0',
  `strPOSCode` varchar(8) NOT NULL,
  `tmeShiftStart` varchar(50) NOT NULL,
  `tmeShiftEnd` varchar(50) NOT NULL,
  `strBillDateTimeType` varchar(50) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`intShiftCode`,`strPOSCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblshiftmaster: ~0 rows (approximately)
DELETE FROM `tblshiftmaster`;
/*!40000 ALTER TABLE `tblshiftmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblshiftmaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblshortcutkeysetup
DROP TABLE IF EXISTS `tblshortcutkeysetup`;
CREATE TABLE IF NOT EXISTS `tblshortcutkeysetup` (
  `strShortcutKey` varchar(10) NOT NULL,
  `strModuleName` varchar(500) NOT NULL,
  `strModuleType` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblshortcutkeysetup: ~0 rows (approximately)
DELETE FROM `tblshortcutkeysetup`;
/*!40000 ALTER TABLE `tblshortcutkeysetup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblshortcutkeysetup` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsms
DROP TABLE IF EXISTS `tblsms`;
CREATE TABLE IF NOT EXISTS `tblsms` (
  `strBillNo` varchar(20) NOT NULL,
  `dteBillDate` datetime NOT NULL,
  `dblBillAmount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblTotalBillAmount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strRechargeNo` varchar(20) NOT NULL,
  `dblRechargeAmount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblTotalRechargeAmount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblBalance` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblTotalRewardPoints` decimal(18,2) NOT NULL DEFAULT '0.00',
  `longMobileNo` bigint(20) NOT NULL DEFAULT '0',
  `strCustomerCode` varchar(20) NOT NULL DEFAULT '',
  `dteSMSDate` datetime NOT NULL,
  `strSMSStatus` varchar(50) NOT NULL DEFAULT 'Pending',
  `strClientCode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblsms: ~0 rows (approximately)
DELETE FROM `tblsms`;
/*!40000 ALTER TABLE `tblsms` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsms` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsmssetup
DROP TABLE IF EXISTS `tblsmssetup`;
CREATE TABLE IF NOT EXISTS `tblsmssetup` (
  `strPOSCode` varchar(10) NOT NULL,
  `strTransactionName` varchar(50) NOT NULL,
  `strSendSMSYN` varchar(5) NOT NULL DEFAULT 'N',
  `longMobileNo` varchar(100) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  KEY `strTransactionName` (`strTransactionName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblsmssetup: ~8 rows (approximately)
DELETE FROM `tblsmssetup`;
/*!40000 ALTER TABLE `tblsmssetup` DISABLE KEYS */;
INSERT INTO `tblsmssetup` (`strPOSCode`, `strTransactionName`, `strSendSMSYN`, `longMobileNo`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`, `strClientCode`, `strDataPostFlag`) VALUES
	('All', 'DayEnd', 'N', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:25:19', '2022-06-01 15:25:19', '412.005', 'N'),
	('All', 'VoidKOT', 'N', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:25:19', '2022-06-01 15:25:19', '412.005', 'N'),
	('All', 'NCKOT', 'N', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:25:19', '2022-06-01 15:25:19', '412.005', 'N'),
	('All', 'VoidAdvOrder', 'N', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:25:19', '2022-06-01 15:25:19', '412.005', 'N'),
	('All', 'VoidBill', 'N', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:25:19', '2022-06-01 15:25:19', '412.005', 'N'),
	('All', 'ModifyBill', 'N', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:25:19', '2022-06-01 15:25:19', '412.005', 'N'),
	('All', 'SettleBill', 'N', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:25:19', '2022-06-01 15:25:19', '412.005', 'N'),
	('All', 'ComplementaryBill', 'N', '', 'SANGUINE', 'SANGUINE', '2022-06-01 15:25:19', '2022-06-01 15:25:19', '412.005', 'N'),
	('P01', 'DayEnd', 'N', '', 'SANGUINE', 'SANGUINE', '2022-06-01 18:48:24', '2022-06-01 18:48:24', '412.005', 'N'),
	('P01', 'VoidKOT', 'N', '', 'SANGUINE', 'SANGUINE', '2022-06-01 18:48:24', '2022-06-01 18:48:24', '412.005', 'N'),
	('P01', 'NCKOT', 'N', '', 'SANGUINE', 'SANGUINE', '2022-06-01 18:48:24', '2022-06-01 18:48:24', '412.005', 'N'),
	('P01', 'VoidAdvOrder', 'N', '', 'SANGUINE', 'SANGUINE', '2022-06-01 18:48:24', '2022-06-01 18:48:24', '412.005', 'N'),
	('P01', 'VoidBill', 'N', '', 'SANGUINE', 'SANGUINE', '2022-06-01 18:48:24', '2022-06-01 18:48:24', '412.005', 'N'),
	('P01', 'ModifyBill', 'N', '', 'SANGUINE', 'SANGUINE', '2022-06-01 18:48:24', '2022-06-01 18:48:24', '412.005', 'N'),
	('P01', 'SettleBill', 'N', '', 'SANGUINE', 'SANGUINE', '2022-06-01 18:48:24', '2022-06-01 18:48:24', '412.005', 'N'),
	('P01', 'ComplementaryBill', 'N', '', 'SANGUINE', 'SANGUINE', '2022-06-01 18:48:24', '2022-06-01 18:48:24', '412.005', 'N');
/*!40000 ALTER TABLE `tblsmssetup` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsplitbill
DROP TABLE IF EXISTS `tblsplitbill`;
CREATE TABLE IF NOT EXISTS `tblsplitbill` (
  `strPOSCode` varchar(3) NOT NULL,
  `strOldBillNo` varchar(15) NOT NULL,
  `strNewBillNo` varchar(15) NOT NULL,
  `strUserCreated` varchar(50) NOT NULL DEFAULT '0',
  `dteCreatedDate` datetime NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteEditedDate` datetime NOT NULL,
  `dteBillDate` datetime NOT NULL,
  `strTransType` varchar(50) NOT NULL DEFAULT '',
  `strReason` varchar(50) NOT NULL DEFAULT '',
  `strRemarks` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblsplitbill: ~0 rows (approximately)
DELETE FROM `tblsplitbill`;
/*!40000 ALTER TABLE `tblsplitbill` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsplitbill` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsplitbillcomplementrydtl
DROP TABLE IF EXISTS `tblsplitbillcomplementrydtl`;
CREATE TABLE IF NOT EXISTS `tblsplitbillcomplementrydtl` (
  `strItemCode` varchar(10) NOT NULL,
  `strItemName` varchar(200) NOT NULL,
  `strBillNo` varchar(15) DEFAULT NULL,
  `strAdvBookingNo` varchar(10) NOT NULL DEFAULT '',
  `dblRate` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblQuantity` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `dblTaxAmount` decimal(18,2) NOT NULL,
  `dteBillDate` datetime NOT NULL,
  `strKOTNo` varchar(10) NOT NULL DEFAULT '',
  `strClientCode` varchar(10) NOT NULL,
  `strCustomerCode` varchar(10) DEFAULT '',
  `tmeOrderProcessing` time NOT NULL DEFAULT '00:00:00',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strMMSDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strManualKOTNo` varchar(10) NOT NULL DEFAULT '',
  `tdhYN` varchar(1) NOT NULL DEFAULT 'N',
  `strPromoCode` varchar(20) NOT NULL DEFAULT '',
  `strCounterCode` varchar(5) NOT NULL DEFAULT '',
  `strWaiterNo` varchar(10) NOT NULL DEFAULT '',
  `dblDiscountAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblDiscountPer` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strSequenceNo` varchar(10) NOT NULL DEFAULT '0.00',
  `strType` varchar(20) NOT NULL DEFAULT 'Complimentary',
  `dtBillDate` date NOT NULL,
  `tmeOrderPickup` time NOT NULL DEFAULT '00:00:00',
  `strKOTUser` varchar(50) NOT NULL DEFAULT '',
  `strReasonCode` varchar(50) DEFAULT '',
  `strRemarks` varchar(150) DEFAULT NULL,
  `strPOSCode` varchar(3) NOT NULL DEFAULT '',
  KEY `strBillNo` (`strBillNo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblsplitbillcomplementrydtl: ~0 rows (approximately)
DELETE FROM `tblsplitbillcomplementrydtl`;
/*!40000 ALTER TABLE `tblsplitbillcomplementrydtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsplitbillcomplementrydtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsplitbilldiscdtl
DROP TABLE IF EXISTS `tblsplitbilldiscdtl`;
CREATE TABLE IF NOT EXISTS `tblsplitbilldiscdtl` (
  `strBillNo` varchar(15) DEFAULT NULL,
  `strPOSCode` varchar(5) NOT NULL,
  `dblDiscAmt` decimal(18,2) NOT NULL,
  `dblDiscPer` decimal(10,2) NOT NULL,
  `dblDiscOnAmt` decimal(18,2) NOT NULL,
  `strDiscOnType` varchar(50) NOT NULL DEFAULT '',
  `strDiscOnValue` varchar(100) NOT NULL DEFAULT '',
  `strDiscReasonCode` varchar(10) NOT NULL DEFAULT '',
  `strDiscRemarks` varchar(100) NOT NULL DEFAULT '',
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL DEFAULT '',
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dteBillDate` date NOT NULL,
  KEY `strBillNo` (`strBillNo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblsplitbilldiscdtl: ~0 rows (approximately)
DELETE FROM `tblsplitbilldiscdtl`;
/*!40000 ALTER TABLE `tblsplitbilldiscdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsplitbilldiscdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsplitbilldtl
DROP TABLE IF EXISTS `tblsplitbilldtl`;
CREATE TABLE IF NOT EXISTS `tblsplitbilldtl` (
  `strItemCode` varchar(10) NOT NULL,
  `strItemName` varchar(200) NOT NULL,
  `strBillNo` varchar(15) DEFAULT NULL,
  `strAdvBookingNo` varchar(10) NOT NULL DEFAULT '',
  `dblRate` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblQuantity` decimal(18,4) NOT NULL,
  `dblAmount` decimal(18,4) NOT NULL,
  `dblTaxAmount` decimal(18,4) NOT NULL,
  `dteBillDate` datetime NOT NULL,
  `strKOTNo` varchar(10) NOT NULL DEFAULT '',
  `strClientCode` varchar(10) NOT NULL,
  `strCustomerCode` varchar(15) DEFAULT NULL,
  `tmeOrderProcessing` time NOT NULL DEFAULT '00:00:00',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strMMSDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strManualKOTNo` varchar(50) NOT NULL DEFAULT '',
  `tdhYN` varchar(1) NOT NULL DEFAULT 'N',
  `strPromoCode` varchar(20) NOT NULL DEFAULT '',
  `strCounterCode` varchar(5) NOT NULL DEFAULT '',
  `strWaiterNo` varchar(10) NOT NULL DEFAULT '',
  `dblDiscountAmt` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblDiscountPer` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strSequenceNo` varchar(50) NOT NULL DEFAULT '0.00',
  `dtBillDate` date NOT NULL,
  `tmeOrderPickup` time NOT NULL DEFAULT '00:00:00',
  `strKOTUser` varchar(50) NOT NULL DEFAULT '',
  KEY `strBillNo` (`strBillNo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblsplitbilldtl: ~0 rows (approximately)
DELETE FROM `tblsplitbilldtl`;
/*!40000 ALTER TABLE `tblsplitbilldtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsplitbilldtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsplitbillhd
DROP TABLE IF EXISTS `tblsplitbillhd`;
CREATE TABLE IF NOT EXISTS `tblsplitbillhd` (
  `strBillNo` varchar(15) NOT NULL DEFAULT '',
  `strAdvBookingNo` varchar(10) NOT NULL DEFAULT '',
  `dteBillDate` datetime NOT NULL,
  `strPOSCode` varchar(3) NOT NULL,
  `strSettelmentMode` varchar(50) NOT NULL,
  `dblDiscountAmt` decimal(18,4) NOT NULL,
  `dblDiscountPer` decimal(10,4) NOT NULL,
  `dblTaxAmt` decimal(18,4) NOT NULL,
  `dblSubTotal` decimal(18,4) NOT NULL,
  `dblGrandTotal` decimal(18,4) NOT NULL,
  `strTakeAway` varchar(50) NOT NULL DEFAULT 'No',
  `strOperationType` varchar(20) NOT NULL DEFAULT 'Dine In',
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL DEFAULT '',
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime DEFAULT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strTableNo` varchar(10) NOT NULL DEFAULT '',
  `strWaiterNo` varchar(5) NOT NULL DEFAULT '',
  `strCustomerCode` varchar(15) DEFAULT NULL,
  `strManualBillNo` varchar(15) NOT NULL DEFAULT '',
  `intShiftCode` int(11) NOT NULL DEFAULT '0',
  `intPaxNo` int(11) NOT NULL DEFAULT '0',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strReasonCode` varchar(10) NOT NULL DEFAULT '',
  `strRemarks` varchar(600) NOT NULL DEFAULT '',
  `dblTipAmount` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dteSettleDate` datetime NOT NULL,
  `strCounterCode` varchar(10) NOT NULL DEFAULT 'NA',
  `dblDeliveryCharges` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strCouponCode` varchar(100) NOT NULL DEFAULT '',
  `strAreaCode` varchar(10) NOT NULL DEFAULT '',
  `strDiscountRemark` varchar(200) NOT NULL DEFAULT '',
  `strTakeAwayRemarks` varchar(200) NOT NULL DEFAULT '',
  `strDiscountOn` varchar(20) NOT NULL DEFAULT 'All',
  `strCardNo` varchar(50) NOT NULL DEFAULT '',
  `strTransactionType` varchar(300) NOT NULL DEFAULT '',
  `strJioMoneyRRefNo` varchar(20) NOT NULL DEFAULT '',
  `strJioMoneyAuthCode` varchar(10) NOT NULL DEFAULT '',
  `strJioMoneyTxnId` varchar(25) NOT NULL DEFAULT '',
  `strJioMoneyTxnDateTime` varchar(20) NOT NULL DEFAULT '',
  `strJioMoneyCardNo` varchar(16) NOT NULL DEFAULT '',
  `strJioMoneyCardType` varchar(40) NOT NULL DEFAULT '',
  `dblRoundOff` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `intBillSeriesPaxNo` int(11) NOT NULL DEFAULT '0',
  `dtBillDate` date NOT NULL,
  `intOrderNo` int(11) NOT NULL DEFAULT '0',
  `strCRMRewardId` varchar(50) NOT NULL DEFAULT '',
  `strNSCTax` varchar(10) NOT NULL DEFAULT '',
  `strKOTToBillNote` varchar(500) NOT NULL DEFAULT '',
  `dblUSDConverionRate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `strNDTax` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`strBillNo`,`strClientCode`,`dtBillDate`,`strPOSCode`) USING BTREE,
  KEY `strBillNo` (`strBillNo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblsplitbillhd: ~0 rows (approximately)
DELETE FROM `tblsplitbillhd`;
/*!40000 ALTER TABLE `tblsplitbillhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsplitbillhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsplitbillmodifierdtl
DROP TABLE IF EXISTS `tblsplitbillmodifierdtl`;
CREATE TABLE IF NOT EXISTS `tblsplitbillmodifierdtl` (
  `strBillNo` varchar(15) DEFAULT NULL,
  `strItemCode` varchar(20) NOT NULL,
  `strModifierCode` varchar(10) NOT NULL,
  `strModifierName` varchar(200) NOT NULL,
  `dblRate` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblQuantity` decimal(18,4) NOT NULL,
  `dblAmount` decimal(18,4) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strCustomerCode` varchar(20) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strMMSDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strDefaultModifierDeselectedYN` varchar(1) NOT NULL DEFAULT 'N',
  `strSequenceNo` varchar(50) NOT NULL DEFAULT '0.00',
  `dblDiscPer` decimal(18,4) NOT NULL,
  `dblDiscAmt` decimal(18,4) NOT NULL,
  `dteBillDate` date NOT NULL,
  KEY `strBillNo` (`strBillNo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblsplitbillmodifierdtl: ~0 rows (approximately)
DELETE FROM `tblsplitbillmodifierdtl`;
/*!40000 ALTER TABLE `tblsplitbillmodifierdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsplitbillmodifierdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsplitbillpromotiondtl
DROP TABLE IF EXISTS `tblsplitbillpromotiondtl`;
CREATE TABLE IF NOT EXISTS `tblsplitbillpromotiondtl` (
  `strBillNo` varchar(15) DEFAULT NULL,
  `strItemCode` varchar(15) NOT NULL,
  `strPromotionCode` varchar(20) NOT NULL,
  `dblQuantity` decimal(18,4) NOT NULL,
  `dblRate` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strClientCode` varchar(20) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strPromoType` varchar(20) NOT NULL,
  `dblAmount` decimal(18,4) NOT NULL,
  `dblDiscountPer` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblDiscountAmt` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dteBillDate` date NOT NULL,
  KEY `strBillNo` (`strBillNo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblsplitbillpromotiondtl: ~0 rows (approximately)
DELETE FROM `tblsplitbillpromotiondtl`;
/*!40000 ALTER TABLE `tblsplitbillpromotiondtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsplitbillpromotiondtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsplitbillsettlementdtl
DROP TABLE IF EXISTS `tblsplitbillsettlementdtl`;
CREATE TABLE IF NOT EXISTS `tblsplitbillsettlementdtl` (
  `strBillNo` varchar(15) NOT NULL DEFAULT '',
  `strSettlementCode` varchar(10) NOT NULL,
  `dblSettlementAmt` decimal(18,4) NOT NULL,
  `dblPaidAmt` decimal(18,4) DEFAULT '0.0000',
  `strExpiryDate` varchar(7) NOT NULL DEFAULT '',
  `strCardName` varchar(50) NOT NULL DEFAULT '0',
  `strRemark` varchar(600) NOT NULL DEFAULT '0',
  `strClientCode` varchar(10) NOT NULL DEFAULT '0',
  `strCustomerCode` varchar(15) DEFAULT NULL,
  `dblActualAmt` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblRefundAmt` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strGiftVoucherCode` varchar(50) DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strFolioNo` varchar(10) NOT NULL DEFAULT '',
  `strRoomNo` varchar(10) NOT NULL DEFAULT '',
  `dteBillDate` date NOT NULL,
  `strGiftVoucherNo` varchar(50) DEFAULT '',
  PRIMARY KEY (`strBillNo`,`strClientCode`,`dteBillDate`,`strSettlementCode`) USING BTREE,
  KEY `strBillNo` (`strBillNo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblsplitbillsettlementdtl: ~0 rows (approximately)
DELETE FROM `tblsplitbillsettlementdtl`;
/*!40000 ALTER TABLE `tblsplitbillsettlementdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsplitbillsettlementdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsplitbilltaxdtl
DROP TABLE IF EXISTS `tblsplitbilltaxdtl`;
CREATE TABLE IF NOT EXISTS `tblsplitbilltaxdtl` (
  `strBillNo` varchar(15) NOT NULL DEFAULT '',
  `strTaxCode` varchar(10) NOT NULL,
  `dblTaxableAmount` decimal(18,4) NOT NULL,
  `dblTaxAmount` decimal(18,4) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dteBillDate` date NOT NULL,
  PRIMARY KEY (`strBillNo`,`strTaxCode`,`dteBillDate`,`strClientCode`) USING BTREE,
  KEY `strBillNo` (`strBillNo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblsplitbilltaxdtl: ~0 rows (approximately)
DELETE FROM `tblsplitbilltaxdtl`;
/*!40000 ALTER TABLE `tblsplitbilltaxdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsplitbilltaxdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblstaffattendance
DROP TABLE IF EXISTS `tblstaffattendance`;
CREATE TABLE IF NOT EXISTS `tblstaffattendance` (
  `strUserCode` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(10) NOT NULL,
  `In/Out` varchar(10) NOT NULL,
  `strClientCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblstaffattendance: ~0 rows (approximately)
DELETE FROM `tblstaffattendance`;
/*!40000 ALTER TABLE `tblstaffattendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstaffattendance` ENABLE KEYS */;

-- Dumping structure for table infosys.tblstkindtl
DROP TABLE IF EXISTS `tblstkindtl`;
CREATE TABLE IF NOT EXISTS `tblstkindtl` (
  `strStkInCode` varchar(10) NOT NULL,
  `strItemCode` varchar(10) NOT NULL,
  `dblQuantity` decimal(18,2) NOT NULL,
  `dblPurchaseRate` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  KEY `strStkInCode` (`strStkInCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblstkindtl: ~0 rows (approximately)
DELETE FROM `tblstkindtl`;
/*!40000 ALTER TABLE `tblstkindtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstkindtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblstkinhd
DROP TABLE IF EXISTS `tblstkinhd`;
CREATE TABLE IF NOT EXISTS `tblstkinhd` (
  `strStkInCode` varchar(10) NOT NULL,
  `strPOSCode` varchar(3) NOT NULL,
  `dteStkInDate` datetime NOT NULL,
  `strReasonCode` varchar(5) NOT NULL,
  `strPurchaseBillNo` varchar(50) DEFAULT NULL,
  `dtePurchaseBillDate` datetime DEFAULT NULL,
  `intShiftCode` int(11) NOT NULL DEFAULT '0',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strInvoiceCode` varchar(20) NOT NULL DEFAULT '',
  `dblTaxAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblExtraAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblGrandTotal` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strSupplierCode` varchar(10) NOT NULL,
  PRIMARY KEY (`strStkInCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblstkinhd: ~0 rows (approximately)
DELETE FROM `tblstkinhd`;
/*!40000 ALTER TABLE `tblstkinhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstkinhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblstkintaxdtl
DROP TABLE IF EXISTS `tblstkintaxdtl`;
CREATE TABLE IF NOT EXISTS `tblstkintaxdtl` (
  `strStkInCode` varchar(10) NOT NULL,
  `strTaxCode` varchar(10) NOT NULL,
  `dblTaxableAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblTaxAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strClientCode` varchar(10) NOT NULL DEFAULT '0.00',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strStkInCode`,`strTaxCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblstkintaxdtl: ~0 rows (approximately)
DELETE FROM `tblstkintaxdtl`;
/*!40000 ALTER TABLE `tblstkintaxdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstkintaxdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblstkoutdtl
DROP TABLE IF EXISTS `tblstkoutdtl`;
CREATE TABLE IF NOT EXISTS `tblstkoutdtl` (
  `strStkOutCode` varchar(10) NOT NULL,
  `strItemCode` varchar(10) NOT NULL,
  `dblQuantity` decimal(18,2) NOT NULL,
  `dblPurchaseRate` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strParentCode` varchar(20) NOT NULL DEFAULT '',
  `strRemark` varchar(100) NOT NULL DEFAULT '',
  `strDisplayQty` varchar(100) NOT NULL DEFAULT '',
  `dblParentItemQty` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblParentItemRate` decimal(18,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblstkoutdtl: ~0 rows (approximately)
DELETE FROM `tblstkoutdtl`;
/*!40000 ALTER TABLE `tblstkoutdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstkoutdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblstkouthd
DROP TABLE IF EXISTS `tblstkouthd`;
CREATE TABLE IF NOT EXISTS `tblstkouthd` (
  `strStkOutCode` varchar(10) NOT NULL,
  `strPOSCode` varchar(3) NOT NULL,
  `dteStkOutDate` datetime NOT NULL,
  `strReasonCode` varchar(5) NOT NULL,
  `strPurchaseBillNo` varchar(50) NOT NULL DEFAULT '',
  `dtePurchaseBillDate` datetime NOT NULL,
  `intShiftCode` int(11) NOT NULL DEFAULT '0',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strNarration` varchar(300) NOT NULL DEFAULT '',
  `dblTaxAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblExtraAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblGrandTotal` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strSupplierCode` varchar(10) NOT NULL,
  PRIMARY KEY (`strStkOutCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblstkouthd: ~0 rows (approximately)
DELETE FROM `tblstkouthd`;
/*!40000 ALTER TABLE `tblstkouthd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstkouthd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblstkouttaxdtl
DROP TABLE IF EXISTS `tblstkouttaxdtl`;
CREATE TABLE IF NOT EXISTS `tblstkouttaxdtl` (
  `strStkOutCode` varchar(10) NOT NULL,
  `strTaxCode` varchar(10) NOT NULL,
  `dblTaxableAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblTaxAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strClientCode` varchar(10) NOT NULL DEFAULT '0.00',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strStkOutCode`,`strTaxCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblstkouttaxdtl: ~0 rows (approximately)
DELETE FROM `tblstkouttaxdtl`;
/*!40000 ALTER TABLE `tblstkouttaxdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstkouttaxdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblstockintemp
DROP TABLE IF EXISTS `tblstockintemp`;
CREATE TABLE IF NOT EXISTS `tblstockintemp` (
  `strStkInCode` varchar(10) NOT NULL,
  `strItemName` varchar(100) NOT NULL,
  `strItemCode` varchar(10) NOT NULL,
  `dblQuantity` decimal(18,2) NOT NULL,
  `dblPurchaseRate` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblstockintemp: ~0 rows (approximately)
DELETE FROM `tblstockintemp`;
/*!40000 ALTER TABLE `tblstockintemp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstockintemp` ENABLE KEYS */;

-- Dumping structure for table infosys.tblstocktaxdtl
DROP TABLE IF EXISTS `tblstocktaxdtl`;
CREATE TABLE IF NOT EXISTS `tblstocktaxdtl` (
  `strTransactionId` varchar(10) NOT NULL,
  `strTaxCode` varchar(10) NOT NULL,
  `dblTaxableAmt` decimal(18,2) NOT NULL,
  `dblTaxAmt` decimal(18,2) NOT NULL,
  `strClientCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblstocktaxdtl: ~0 rows (approximately)
DELETE FROM `tblstocktaxdtl`;
/*!40000 ALTER TABLE `tblstocktaxdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstocktaxdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblstorelastbill
DROP TABLE IF EXISTS `tblstorelastbill`;
CREATE TABLE IF NOT EXISTS `tblstorelastbill` (
  `strPosCode` varchar(3) NOT NULL,
  `strBillNo` double NOT NULL,
  PRIMARY KEY (`strPosCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblstorelastbill: ~1 rows (approximately)
DELETE FROM `tblstorelastbill`;
/*!40000 ALTER TABLE `tblstorelastbill` DISABLE KEYS */;
INSERT INTO `tblstorelastbill` (`strPosCode`, `strBillNo`) VALUES
	('P01', 2);
/*!40000 ALTER TABLE `tblstorelastbill` ENABLE KEYS */;

-- Dumping structure for table infosys.tblstorelastorderno
DROP TABLE IF EXISTS `tblstorelastorderno`;
CREATE TABLE IF NOT EXISTS `tblstorelastorderno` (
  `strPosCode` varchar(5) NOT NULL,
  `longOrderNo` bigint(20) NOT NULL,
  PRIMARY KEY (`strPosCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblstorelastorderno: ~0 rows (approximately)
DELETE FROM `tblstorelastorderno`;
/*!40000 ALTER TABLE `tblstorelastorderno` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstorelastorderno` ENABLE KEYS */;

-- Dumping structure for table infosys.tblstructureupdate
DROP TABLE IF EXISTS `tblstructureupdate`;
CREATE TABLE IF NOT EXISTS `tblstructureupdate` (
  `strStructureCode` varchar(50) NOT NULL,
  `strStructureName` varchar(100) NOT NULL,
  `intQueryNo` int(11) NOT NULL DEFAULT '0',
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strStructureCode`,`strClientCode`),
  KEY `intStructureCode` (`strStructureCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblstructureupdate: ~8 rows (approximately)
DELETE FROM `tblstructureupdate`;
/*!40000 ALTER TABLE `tblstructureupdate` DISABLE KEYS */;
INSERT INTO `tblstructureupdate` (`strStructureCode`, `strStructureName`, `intQueryNo`, `strClientCode`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`, `strDataPostFlag`) VALUES
	('dbStructure', 'Database Level Structure Update', 0, '412.005', 'SANGUINE', 'SANGUINE', '2018-09-13 12:27:00', '2018-09-13 12:27:00', 'N'),
	('frmStructure', 'Forms Structure Update', 8, '412.005', 'SANGUINE', 'null', '2018-09-13 12:27:00', '2022-08-03 16:53:02', 'N'),
	('internalTableStructure', 'Internal Table Structure Update', 1, '412.005', 'SANGUINE', 'null', '2018-09-13 12:27:00', '2022-08-03 16:53:02', 'N'),
	('masterTableStatusStructure', 'Master Forms Table Structure Update', 1, '412.005', 'SANGUINE', 'null', '2018-09-13 12:27:00', '2022-08-03 16:53:02', 'N'),
	('superUserStructure', 'Super User Entry Structure Update', 2, '412.005', 'SANGUINE', 'null', '2018-09-13 12:27:00', '2022-08-03 16:53:02', 'N'),
	('tblStructure', 'Table Level Structure Update', 1566, '412.005', 'SANGUINE', 'null', '2018-09-13 12:27:00', '2022-08-03 16:53:03', 'N'),
	('userStructure', 'Normal User Entry Structure Update', 0, '412.005', 'SANGUINE', 'SANGUINE', '2018-09-13 12:27:00', '2018-09-13 12:27:00', 'N'),
	('viewStructure', 'Table View  Structure Update', 31, '412.005', 'SANGUINE', 'SANGUINE', '2018-09-13 12:27:00', '2018-12-24 12:13:24', 'N');
/*!40000 ALTER TABLE `tblstructureupdate` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsubgrouphd
DROP TABLE IF EXISTS `tblsubgrouphd`;
CREATE TABLE IF NOT EXISTS `tblsubgrouphd` (
  `strSubGroupCode` varchar(10) NOT NULL,
  `strSubGroupName` varchar(50) NOT NULL,
  `strGroupCode` varchar(10) NOT NULL,
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strIncentives` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strAccountCode` varchar(20) NOT NULL DEFAULT 'NA',
  `strFactoryCode` varchar(10) NOT NULL DEFAULT '',
  `strSubGroupShortName` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`strSubGroupCode`,`strClientCode`),
  KEY `strGroupCode` (`strGroupCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblsubgrouphd: ~12 rows (approximately)
DELETE FROM `tblsubgrouphd`;
/*!40000 ALTER TABLE `tblsubgrouphd` DISABLE KEYS */;
INSERT INTO `tblsubgrouphd` (`strSubGroupCode`, `strSubGroupName`, `strGroupCode`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`, `strClientCode`, `strDataPostFlag`, `strIncentives`, `strAccountCode`, `strFactoryCode`, `strSubGroupShortName`) VALUES
	('SG0000001', 'Indian Street Food', 'G0000001', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:53', '2022-06-01 15:38:53', '412.005', 'N', 0.0000, 'NA', '', ''),
	('SG0000002', 'Biryani', 'G0000001', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:53', '2022-06-01 15:38:53', '412.005', 'N', 0.0000, 'NA', '', ''),
	('SG0000003', 'Solo Meal', 'G0000001', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:53', '2022-06-01 15:38:53', '412.005', 'N', 0.0000, 'NA', '', ''),
	('SG0000004', 'Gravy Combos', 'G0000001', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:53', '2022-06-01 15:38:53', '412.005', 'N', 0.0000, 'NA', '', ''),
	('SG0000005', 'Tikka Combos', 'G0000001', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0.0000, 'NA', '', ''),
	('SG0000006', 'Tandoori Paratha', 'G0000001', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0.0000, 'NA', '', ''),
	('SG0000007', 'Breads', 'G0000001', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0.0000, 'NA', '', ''),
	('SG0000008', 'Drinks- Homemade', 'G0000001', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0.0000, 'NA', '', ''),
	('SG0000009', 'Fresh Juice', 'G0000001', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0.0000, 'NA', '', ''),
	('SG0000010', 'MilkShake', 'G0000001', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0.0000, 'NA', '', ''),
	('SG0000011', 'Add On', 'G0000001', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0.0000, 'NA', '', ''),
	('SG0000012', 'Tikkas', 'G0000001', 'SANGUINE', 'SANGUINE', '2022-06-01 15:38:54', '2022-06-01 15:38:54', '412.005', 'N', 0.0000, 'NA', '', '');
/*!40000 ALTER TABLE `tblsubgrouphd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsubgroupmasterlinkupdtl
DROP TABLE IF EXISTS `tblsubgroupmasterlinkupdtl`;
CREATE TABLE IF NOT EXISTS `tblsubgroupmasterlinkupdtl` (
  `strSubGrooupCode` varchar(20) NOT NULL,
  `strWSSubGroupCode` varchar(20) NOT NULL,
  `strWSSubGroupName` varchar(20) NOT NULL,
  `strClientCode` varchar(20) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL,
  KEY `strSubGrooupCode_strWSSubGroupCode_strClientCode` (`strSubGrooupCode`,`strWSSubGroupCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblsubgroupmasterlinkupdtl: ~0 rows (approximately)
DELETE FROM `tblsubgroupmasterlinkupdtl`;
/*!40000 ALTER TABLE `tblsubgroupmasterlinkupdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsubgroupmasterlinkupdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsubmenuhead
DROP TABLE IF EXISTS `tblsubmenuhead`;
CREATE TABLE IF NOT EXISTS `tblsubmenuhead` (
  `strSubMenuHeadCode` varchar(12) NOT NULL,
  `strMenuCode` varchar(10) NOT NULL,
  `strSubMenuHeadShortName` varchar(12) NOT NULL,
  `strSubMenuHeadName` varchar(50) NOT NULL,
  `strSubMenuOperational` varchar(1) NOT NULL DEFAULT 'Y',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL,
  PRIMARY KEY (`strSubMenuHeadCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tblsubmenuhead: ~0 rows (approximately)
DELETE FROM `tblsubmenuhead`;
/*!40000 ALTER TABLE `tblsubmenuhead` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsubmenuhead` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsuperuserdtl
DROP TABLE IF EXISTS `tblsuperuserdtl`;
CREATE TABLE IF NOT EXISTS `tblsuperuserdtl` (
  `strUserCode` varchar(10) NOT NULL,
  `strFormName` varchar(50) NOT NULL,
  `strButtonName` varchar(50) NOT NULL,
  `intSequence` int(11) NOT NULL,
  `strAdd` char(10) NOT NULL,
  `strEdit` char(10) NOT NULL,
  `strDelete` char(10) NOT NULL,
  `strView` char(10) NOT NULL,
  `strPrint` char(10) NOT NULL,
  `strSave` varchar(5) NOT NULL,
  `strGrant` varchar(5) NOT NULL,
  `strTLA` varchar(5) NOT NULL DEFAULT 'false',
  `strAuditing` varchar(5) NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblsuperuserdtl: ~0 rows (approximately)
DELETE FROM `tblsuperuserdtl`;
/*!40000 ALTER TABLE `tblsuperuserdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsuperuserdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblsuppliermaster
DROP TABLE IF EXISTS `tblsuppliermaster`;
CREATE TABLE IF NOT EXISTS `tblsuppliermaster` (
  `strSupplierCode` varchar(10) NOT NULL,
  `strSupplierName` varchar(50) NOT NULL,
  `strAddress1` varchar(100) NOT NULL,
  `strAddress2` varchar(100) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL,
  `intMobileNumber` varchar(50) NOT NULL,
  `strEmailId` varchar(50) NOT NULL,
  `strGSTNo` varchar(50) NOT NULL,
  `strContactPerson` varchar(100) NOT NULL,
  PRIMARY KEY (`strSupplierCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblsuppliermaster: ~0 rows (approximately)
DELETE FROM `tblsuppliermaster`;
/*!40000 ALTER TABLE `tblsuppliermaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsuppliermaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltablemaster
DROP TABLE IF EXISTS `tbltablemaster`;
CREATE TABLE IF NOT EXISTS `tbltablemaster` (
  `strTableNo` varchar(10) NOT NULL,
  `strTableName` varchar(100) NOT NULL,
  `strStatus` varchar(15) NOT NULL,
  `strAreaCode` varchar(20) NOT NULL,
  `strWaiterNo` varchar(20) NOT NULL,
  `intPaxNo` int(11) NOT NULL DEFAULT '0',
  `strOperational` varchar(1) NOT NULL DEFAULT 'Y',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `intSequence` int(11) NOT NULL DEFAULT '0',
  `strPOSCode` varchar(20) NOT NULL DEFAULT 'P01',
  `strNCTable` varchar(1) NOT NULL DEFAULT 'N',
  `strBarTable` varchar(1) NOT NULL DEFAULT 'N',
  `strReservationNo` varchar(50) NOT NULL DEFAULT '',
  `strSmoking` varchar(1) NOT NULL DEFAULT 'N',
  `strCustomerCode` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`strTableNo`,`strClientCode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbltablemaster: 0 rows
DELETE FROM `tbltablemaster`;
/*!40000 ALTER TABLE `tbltablemaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltablemaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltallylinkup
DROP TABLE IF EXISTS `tbltallylinkup`;
CREATE TABLE IF NOT EXISTS `tbltallylinkup` (
  `strPOSCode` varchar(10) NOT NULL,
  `strLinkupCode` varchar(20) NOT NULL,
  `strLinkupName` varchar(100) NOT NULL,
  `strTallyAliasCode` varchar(10) NOT NULL,
  `strDiscTallyAliasCode` varchar(10) NOT NULL DEFAULT '',
  `strTipTallyAliasCode` varchar(10) NOT NULL DEFAULT '',
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strClientCode` varchar(10) NOT NULL,
  PRIMARY KEY (`strPOSCode`,`strLinkupCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbltallylinkup: ~0 rows (approximately)
DELETE FROM `tbltallylinkup`;
/*!40000 ALTER TABLE `tbltallylinkup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltallylinkup` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltaxdtl
DROP TABLE IF EXISTS `tbltaxdtl`;
CREATE TABLE IF NOT EXISTS `tbltaxdtl` (
  `strTaxCode` varchar(10) NOT NULL,
  `strTaxType` varchar(50) NOT NULL,
  `dblFrom` decimal(18,2) NOT NULL,
  `dblTo` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbltaxdtl: ~0 rows (approximately)
DELETE FROM `tbltaxdtl`;
/*!40000 ALTER TABLE `tbltaxdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltaxdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltaxhd
DROP TABLE IF EXISTS `tbltaxhd`;
CREATE TABLE IF NOT EXISTS `tbltaxhd` (
  `strTaxCode` varchar(10) NOT NULL,
  `strTaxDesc` varchar(50) NOT NULL,
  `strTaxOnSP` varchar(10) NOT NULL,
  `strTaxType` varchar(50) NOT NULL,
  `dblPercent` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `dteValidFrom` datetime NOT NULL,
  `dteValidTo` datetime NOT NULL,
  `strTaxOnGD` varchar(15) NOT NULL,
  `strTaxCalculation` varchar(10) NOT NULL,
  `strTaxIndicator` char(1) NOT NULL,
  `strTaxRounded` varchar(5) NOT NULL,
  `strTaxOnTax` varchar(4) NOT NULL,
  `strTaxOnTaxCode` varchar(100) NOT NULL,
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strAreaCode` varchar(100) NOT NULL DEFAULT '',
  `strOperationType` varchar(100) NOT NULL DEFAULT '',
  `strItemType` varchar(20) NOT NULL DEFAULT '',
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strAccountCode` varchar(20) NOT NULL,
  `strTaxShortName` varchar(20) NOT NULL DEFAULT '',
  `strBillNote` varchar(100) NOT NULL DEFAULT '',
  `strTOTOnSubTotal` varchar(1) NOT NULL DEFAULT 'Y',
  `intSequence` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`strTaxCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbltaxhd: ~0 rows (approximately)
DELETE FROM `tbltaxhd`;
/*!40000 ALTER TABLE `tbltaxhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltaxhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltaxongroup
DROP TABLE IF EXISTS `tbltaxongroup`;
CREATE TABLE IF NOT EXISTS `tbltaxongroup` (
  `strTaxCode` varchar(10) NOT NULL,
  `strGroupCode` varchar(10) NOT NULL,
  `strGroupName` varchar(50) NOT NULL,
  `strApplicable` varchar(5) NOT NULL,
  `dteFrom` datetime NOT NULL,
  `dteTo` datetime NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL,
  KEY `strTaxCode_strGroupCode_strClientCode` (`strTaxCode`,`strGroupCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbltaxongroup: ~32 rows (approximately)
DELETE FROM `tbltaxongroup`;
/*!40000 ALTER TABLE `tbltaxongroup` DISABLE KEYS */;
INSERT INTO `tbltaxongroup` (`strTaxCode`, `strGroupCode`, `strGroupName`, `strApplicable`, `dteFrom`, `dteTo`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`, `strClientCode`) VALUES
	('T03', 'G0000001', 'FOOD 5%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:44:40', '2020-10-24 16:44:40', '405.001'),
	('T03', 'G0000002', 'FOOD 12%', 'true', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:44:40', '2020-10-24 16:44:40', '405.001'),
	('T03', 'G0000003', 'FOOD 18%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:44:40', '2020-10-24 16:44:40', '405.001'),
	('T03', 'G0000004', 'FOOD 28%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:44:40', '2020-10-24 16:44:40', '405.001'),
	('T03', 'G0000005', 'FOOD 0%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:44:40', '2020-10-24 16:44:40', '405.001'),
	('T04', 'G0000001', 'FOOD 5%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:45:14', '2020-10-24 16:45:14', '405.001'),
	('T04', 'G0000002', 'FOOD 12%', 'true', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:45:14', '2020-10-24 16:45:14', '405.001'),
	('T04', 'G0000003', 'FOOD 18%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:45:14', '2020-10-24 16:45:14', '405.001'),
	('T04', 'G0000004', 'FOOD 28%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:45:14', '2020-10-24 16:45:14', '405.001'),
	('T04', 'G0000005', 'FOOD 0%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:45:14', '2020-10-24 16:45:14', '405.001'),
	('T05', 'G0000001', 'FOOD 5%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SANGUINE', 'SANGUINE', '2020-10-22 16:37:51', '2020-10-22 16:37:51', '405.001'),
	('T05', 'G0000002', 'FOOD 12%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SANGUINE', 'SANGUINE', '2020-10-22 16:37:51', '2020-10-22 16:37:51', '405.001'),
	('T05', 'G0000003', 'FOOD 18%', 'true', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SANGUINE', 'SANGUINE', '2020-10-22 16:37:51', '2020-10-22 16:37:51', '405.001'),
	('T05', 'G0000004', 'FOOD 28%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SANGUINE', 'SANGUINE', '2020-10-22 16:37:51', '2020-10-22 16:37:51', '405.001'),
	('T05', 'G0000005', 'FOOD 0%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SANGUINE', 'SANGUINE', '2020-10-22 16:37:51', '2020-10-22 16:37:51', '405.001'),
	('T06', 'G0000001', 'FOOD 5%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:45:21', '2020-10-24 16:45:21', '405.001'),
	('T06', 'G0000002', 'FOOD 12%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:45:21', '2020-10-24 16:45:21', '405.001'),
	('T06', 'G0000003', 'FOOD 18%', 'true', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:45:21', '2020-10-24 16:45:21', '405.001'),
	('T06', 'G0000004', 'FOOD 28%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:45:21', '2020-10-24 16:45:21', '405.001'),
	('T06', 'G0000005', 'FOOD 0%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:45:21', '2020-10-24 16:45:21', '405.001'),
	('T07', 'G0000001', 'FOOD 5%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:44:22', '2020-10-24 16:44:22', '405.001'),
	('T07', 'G0000002', 'FOOD 12%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:44:22', '2020-10-24 16:44:22', '405.001'),
	('T07', 'G0000003', 'FOOD 18%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:44:22', '2020-10-24 16:44:22', '405.001'),
	('T07', 'G0000004', 'FOOD 28%', 'true', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:44:22', '2020-10-24 16:44:22', '405.001'),
	('T07', 'G0000005', 'FOOD 0%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:44:22', '2020-10-24 16:44:22', '405.001'),
	('T08', 'G0000001', 'FOOD 5%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:44:58', '2020-10-24 16:44:58', '405.001'),
	('T08', 'G0000002', 'FOOD 12%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:44:58', '2020-10-24 16:44:58', '405.001'),
	('T08', 'G0000003', 'FOOD 18%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:44:58', '2020-10-24 16:44:58', '405.001'),
	('T08', 'G0000004', 'FOOD 28%', 'true', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:44:58', '2020-10-24 16:44:58', '405.001'),
	('T08', 'G0000005', 'FOOD 0%', 'false', '2019-06-06 00:00:00', '2119-06-06 00:00:00', 'SHABBIR', 'SHABBIR', '2020-10-24 16:44:58', '2020-10-24 16:44:58', '405.001'),
	('T01', 'G0000001', 'FOOD', 'true', '2019-06-01 00:00:00', '2118-10-06 00:00:00', 'SANGUINE', 'SANGUINE', '2022-01-07 16:49:24', '2022-01-07 16:49:24', '412.005'),
	('T02', 'G0000001', 'FOOD', 'true', '2019-06-01 00:00:00', '2118-10-06 00:00:00', 'SANGUINE', 'SANGUINE', '2022-01-07 16:49:35', '2022-01-07 16:49:35', '412.005');
/*!40000 ALTER TABLE `tbltaxongroup` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltaxposdtl
DROP TABLE IF EXISTS `tbltaxposdtl`;
CREATE TABLE IF NOT EXISTS `tbltaxposdtl` (
  `strTaxCode` varchar(8) NOT NULL,
  `strPOSCode` varchar(3) NOT NULL,
  `strTaxDesc` varchar(100) NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbltaxposdtl: ~0 rows (approximately)
DELETE FROM `tbltaxposdtl`;
/*!40000 ALTER TABLE `tbltaxposdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltaxposdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltaxtemp
DROP TABLE IF EXISTS `tbltaxtemp`;
CREATE TABLE IF NOT EXISTS `tbltaxtemp` (
  `strTaxCode` varchar(10) NOT NULL,
  `strTaxName` varchar(100) NOT NULL,
  `dblTaxableAmt` decimal(18,2) NOT NULL,
  `dblTaxAmt` decimal(18,2) NOT NULL,
  `strTaxCal` varchar(8) NOT NULL,
  `strItemName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbltaxtemp: ~0 rows (approximately)
DELETE FROM `tbltaxtemp`;
/*!40000 ALTER TABLE `tbltaxtemp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltaxtemp` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltdhcomboitemdtl
DROP TABLE IF EXISTS `tbltdhcomboitemdtl`;
CREATE TABLE IF NOT EXISTS `tbltdhcomboitemdtl` (
  `strTDHCode` varchar(50) NOT NULL,
  `strItemCode` varchar(15) NOT NULL,
  `strSubItemCode` varchar(15) NOT NULL,
  `intSubItemQty` int(20) NOT NULL DEFAULT '1',
  `strDefaultYN` varchar(1) NOT NULL DEFAULT 'N',
  `strSubItemMenuCode` varchar(15) NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `intSequence` int(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tbltdhcomboitemdtl: ~0 rows (approximately)
DELETE FROM `tbltdhcomboitemdtl`;
/*!40000 ALTER TABLE `tbltdhcomboitemdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltdhcomboitemdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltdhhd
DROP TABLE IF EXISTS `tbltdhhd`;
CREATE TABLE IF NOT EXISTS `tbltdhhd` (
  `strTDHCode` varchar(50) NOT NULL,
  `strDescription` varchar(50) NOT NULL,
  `strMenuCode` varchar(10) NOT NULL,
  `strItemCode` varchar(15) NOT NULL,
  `intMaxQuantity` int(20) NOT NULL,
  `strApplicable` varchar(1) NOT NULL DEFAULT 'N',
  `strComboItemYN` varchar(1) NOT NULL DEFAULT 'N',
  `strClientCode` varchar(11) NOT NULL,
  PRIMARY KEY (`strTDHCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbltdhhd: ~0 rows (approximately)
DELETE FROM `tbltdhhd`;
/*!40000 ALTER TABLE `tbltdhhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltdhhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltempadvorderflash
DROP TABLE IF EXISTS `tbltempadvorderflash`;
CREATE TABLE IF NOT EXISTS `tbltempadvorderflash` (
  `strAdvBookingNo` varchar(10) NOT NULL,
  `dteAdvBookingDate` datetime NOT NULL,
  `dteOrderForDate` datetime NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `strSettlementMode` varchar(100) NOT NULL,
  `dblGrandTotal` varchar(50) NOT NULL,
  `dblAdvDeposite` varchar(50) NOT NULL,
  `dblBalance` varchar(50) NOT NULL,
  `strWaiterName` varchar(50) NOT NULL,
  `strAdvOrderType` varchar(50) NOT NULL,
  `strOperationType` varchar(50) NOT NULL,
  `strBillNo` varchar(20) NOT NULL,
  `dblSettlementAmt` varchar(50) NOT NULL,
  `strUserCode` varchar(10) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strManualAdvOrderNo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tbltempadvorderflash: ~0 rows (approximately)
DELETE FROM `tbltempadvorderflash`;
/*!40000 ALTER TABLE `tbltempadvorderflash` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltempadvorderflash` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltempcompitem
DROP TABLE IF EXISTS `tbltempcompitem`;
CREATE TABLE IF NOT EXISTS `tbltempcompitem` (
  `strItemCode` varchar(50) NOT NULL DEFAULT '',
  `strItemName` varchar(50) NOT NULL DEFAULT '',
  `dblQty` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblRate` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `dblAmount` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `strTableNo` varchar(20) NOT NULL DEFAULT '',
  `strPosCode` varchar(10) NOT NULL DEFAULT '',
  `strClientCode` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbltempcompitem: ~0 rows (approximately)
DELETE FROM `tbltempcompitem`;
/*!40000 ALTER TABLE `tbltempcompitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltempcompitem` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltemphomedelv
DROP TABLE IF EXISTS `tbltemphomedelv`;
CREATE TABLE IF NOT EXISTS `tbltemphomedelv` (
  `strCustomerCode` varchar(50) DEFAULT NULL,
  `strCustomerName` varchar(200) DEFAULT NULL,
  `strAddrLine1` varchar(200) DEFAULT NULL,
  `strAddrLine2` varchar(200) DEFAULT NULL,
  `strAddrLine3` varchar(200) DEFAULT NULL,
  `strCity` varchar(50) DEFAULT NULL,
  `strState` varchar(50) DEFAULT NULL,
  `intPinCode` varchar(6) DEFAULT NULL,
  `intMobileNo.` varchar(10) DEFAULT NULL,
  `strDevlPersonCode` varchar(10) DEFAULT NULL,
  `strDelvBoy` varchar(100) DEFAULT NULL,
  `intDelvTime` varchar(50) DEFAULT NULL,
  `strUserCreated` varchar(50) DEFAULT NULL,
  `strUserEdited` varchar(50) DEFAULT NULL,
  `dteUserCreated` datetime DEFAULT NULL,
  `dteUserEdited` datetime DEFAULT NULL,
  KEY `strCustomerCode` (`strCustomerCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbltemphomedelv: ~0 rows (approximately)
DELETE FROM `tbltemphomedelv`;
/*!40000 ALTER TABLE `tbltemphomedelv` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltemphomedelv` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltempitemstk
DROP TABLE IF EXISTS `tbltempitemstk`;
CREATE TABLE IF NOT EXISTS `tbltempitemstk` (
  `strItemCode` varchar(10) NOT NULL,
  `dblQuantity` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbltempitemstk: ~0 rows (approximately)
DELETE FROM `tbltempitemstk`;
/*!40000 ALTER TABLE `tbltempitemstk` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltempitemstk` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltempprintbill
DROP TABLE IF EXISTS `tbltempprintbill`;
CREATE TABLE IF NOT EXISTS `tbltempprintbill` (
  `strPosCode` varchar(10) DEFAULT NULL,
  `strItemName` varchar(200) DEFAULT NULL,
  `dblQuantity` int(11) DEFAULT NULL,
  `dblAmount` double(18,2) DEFAULT NULL,
  `strBillNo` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbltempprintbill: ~0 rows (approximately)
DELETE FROM `tbltempprintbill`;
/*!40000 ALTER TABLE `tbltempprintbill` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltempprintbill` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltempsalesflash
DROP TABLE IF EXISTS `tbltempsalesflash`;
CREATE TABLE IF NOT EXISTS `tbltempsalesflash` (
  `strcode` varchar(50) NOT NULL DEFAULT '',
  `strname` varchar(200) NOT NULL DEFAULT '',
  `dblquantity` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblamount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strposcode` varchar(100) NOT NULL DEFAULT '',
  `struser` varchar(20) NOT NULL DEFAULT '',
  `dblRate` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblsubtotal` varchar(100) NOT NULL DEFAULT '',
  `dbldiscamt` varchar(100) NOT NULL DEFAULT '',
  KEY `strcode` (`strcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tbltempsalesflash: ~0 rows (approximately)
DELETE FROM `tbltempsalesflash`;
/*!40000 ALTER TABLE `tbltempsalesflash` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltempsalesflash` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltempsalesflash1
DROP TABLE IF EXISTS `tbltempsalesflash1`;
CREATE TABLE IF NOT EXISTS `tbltempsalesflash1` (
  `strbillno` varchar(100) NOT NULL DEFAULT '',
  `dtebilldate` varchar(100) NOT NULL DEFAULT '',
  `tmebilltime` varchar(100) NOT NULL DEFAULT '',
  `strtablename` varchar(100) NOT NULL DEFAULT '',
  `strposcode` varchar(100) NOT NULL DEFAULT '',
  `strpaymode` varchar(100) NOT NULL DEFAULT '',
  `dblsubtotal` varchar(100) NOT NULL DEFAULT '',
  `dbldiscper` varchar(100) NOT NULL DEFAULT '',
  `dbldiscamt` varchar(100) NOT NULL DEFAULT '',
  `dbltaxamt` varchar(100) NOT NULL DEFAULT '',
  `dblsettlementamt` varchar(100) NOT NULL DEFAULT '',
  `strusercreated` varchar(100) NOT NULL DEFAULT '',
  `struseredited` varchar(100) NOT NULL DEFAULT '',
  `dtedatecreated` varchar(100) NOT NULL DEFAULT '',
  `dtedateedited` varchar(100) NOT NULL DEFAULT '',
  `strclientcode` varchar(100) NOT NULL DEFAULT '',
  `strwaiterno` varchar(100) NOT NULL DEFAULT '',
  `strcustomercode` varchar(100) NOT NULL DEFAULT '',
  `dbldeliverycharges` varchar(100) NOT NULL DEFAULT '',
  `strremarks` varchar(200) NOT NULL DEFAULT '',
  `strcustomername` varchar(100) NOT NULL DEFAULT '',
  `dbltipamt` varchar(100) NOT NULL DEFAULT '',
  `strUser` varchar(100) NOT NULL DEFAULT '',
  `strdiscremarks` varchar(100) NOT NULL DEFAULT '',
  `strReasonDesc` varchar(500) NOT NULL DEFAULT '',
  KEY `strbillno` (`strbillno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbltempsalesflash1: ~0 rows (approximately)
DELETE FROM `tbltempsalesflash1`;
/*!40000 ALTER TABLE `tbltempsalesflash1` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltempsalesflash1` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltempsalesflashtotals1
DROP TABLE IF EXISTS `tbltempsalesflashtotals1`;
CREATE TABLE IF NOT EXISTS `tbltempsalesflashtotals1` (
  `dblsubtotal` varchar(100) NOT NULL,
  `dbltaxamt` varchar(100) NOT NULL,
  `dbldiscamt` varchar(100) NOT NULL,
  `dblsettlementamt` varchar(100) NOT NULL,
  `strUser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table infosys.tbltempsalesflashtotals1: ~0 rows (approximately)
DELETE FROM `tbltempsalesflashtotals1`;
/*!40000 ALTER TABLE `tbltempsalesflashtotals1` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltempsalesflashtotals1` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltempvoidkot
DROP TABLE IF EXISTS `tbltempvoidkot`;
CREATE TABLE IF NOT EXISTS `tbltempvoidkot` (
  `strItemName` varchar(100) DEFAULT NULL,
  `strItemCode` varchar(20) NOT NULL,
  `dblItemQuantity` int(11) DEFAULT NULL,
  `strTableNo` varchar(10) NOT NULL,
  `strWaiterNo` varchar(10) NOT NULL,
  `strKOTNo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbltempvoidkot: ~0 rows (approximately)
DELETE FROM `tbltempvoidkot`;
/*!40000 ALTER TABLE `tbltempvoidkot` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltempvoidkot` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltreemast
DROP TABLE IF EXISTS `tbltreemast`;
CREATE TABLE IF NOT EXISTS `tbltreemast` (
  `strFormName` varchar(255) NOT NULL,
  `intFormKey` varchar(255) DEFAULT NULL,
  `intFormNo` varchar(255) DEFAULT NULL,
  `intRootIndex` varchar(255) DEFAULT NULL,
  `strActFile` varchar(255) DEFAULT NULL,
  `strAdd` varchar(255) DEFAULT NULL,
  `strAuditForm` varchar(255) DEFAULT NULL,
  `strAuthorise` varchar(255) DEFAULT NULL,
  `strAutorisationForm` varchar(255) DEFAULT NULL,
  `strDelete` varchar(255) DEFAULT NULL,
  `strDeliveryNote` varchar(255) DEFAULT NULL,
  `strDirect` varchar(255) DEFAULT NULL,
  `strEdit` varchar(255) DEFAULT NULL,
  `strFormDesc` varchar(255) DEFAULT NULL,
  `strGRN` varchar(255) DEFAULT NULL,
  `strGrant` varchar(255) DEFAULT NULL,
  `strHelpFile` varchar(255) DEFAULT NULL,
  `strImgName` varchar(255) DEFAULT NULL,
  `strImgSrc` varchar(255) DEFAULT NULL,
  `strMIS` varchar(255) DEFAULT NULL,
  `strMinimumLevel` varchar(255) DEFAULT NULL,
  `strModule` varchar(255) DEFAULT NULL,
  `strOpeningStock` varchar(255) DEFAULT NULL,
  `strPrint` varchar(255) DEFAULT NULL,
  `strProductionOrder` varchar(255) DEFAULT NULL,
  `strProject` varchar(255) DEFAULT NULL,
  `strPurchaseIndent` varchar(255) DEFAULT NULL,
  `strPurchaseOrder` varchar(255) DEFAULT NULL,
  `strPurchaseReturn` varchar(255) DEFAULT NULL,
  `strRateContractor` varchar(255) DEFAULT NULL,
  `strRequestMapping` varchar(255) DEFAULT NULL,
  `strRequisition` varchar(255) DEFAULT NULL,
  `strRootNode` varchar(255) DEFAULT NULL,
  `strSalesOrder` varchar(255) DEFAULT NULL,
  `strSalesProjection` varchar(255) DEFAULT NULL,
  `strSalesReturn` varchar(255) DEFAULT NULL,
  `strServiceOrder` varchar(255) DEFAULT NULL,
  `strSubContractorGRN` varchar(255) DEFAULT NULL,
  `strTemp` varchar(255) DEFAULT NULL,
  `strType` varchar(255) DEFAULT NULL,
  `strView` varchar(255) DEFAULT NULL,
  `strWorkOrder` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`strFormName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbltreemast: ~0 rows (approximately)
DELETE FROM `tbltreemast`;
/*!40000 ALTER TABLE `tbltreemast` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltreemast` ENABLE KEYS */;

-- Dumping structure for table infosys.tbltruncationdtl
DROP TABLE IF EXISTS `tbltruncationdtl`;
CREATE TABLE IF NOT EXISTS `tbltruncationdtl` (
  `strUser` varchar(50) NOT NULL,
  `strTruncateForms` varchar(500) NOT NULL DEFAULT '',
  `dteDate` datetime NOT NULL,
  `strModuleType` varchar(50) NOT NULL,
  `dteFromDate` datetime NOT NULL,
  `dteToDate` datetime NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `strClientCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbltruncationdtl: ~11 rows (approximately)
DELETE FROM `tbltruncationdtl`;
/*!40000 ALTER TABLE `tbltruncationdtl` DISABLE KEYS */;
INSERT INTO `tbltruncationdtl` (`strUser`, `strTruncateForms`, `dteDate`, `strModuleType`, `dteFromDate`, `dteToDate`, `strPOSCode`, `strClientCode`) VALUES
	('SANGUINE', 'Clear All POS Data', '2021-01-06 13:53:54', 'T', '2021-01-11 13:54:19', '2021-01-11 13:54:19', 'All', '405.001'),
	('sanguine', 'Clear All POS Data', '2021-01-11 11:28:10', 'T', '2021-01-25 11:29:18', '2021-01-25 11:29:18', 'All', '405.001'),
	('sanguine', 'Clear All POS Data', '2021-06-27 15:56:32', 'T', '2021-07-07 15:58:28', '2021-07-07 15:58:28', 'All', '405.001'),
	('sanguine', 'Clear All POS Data', '2021-07-07 12:57:28', 'T', '2021-10-20 12:58:29', '2021-10-20 12:58:29', 'All', '319.007'),
	('sanguine', 'Clear All POS Data', '2021-10-20 15:50:49', 'T', '2021-10-23 15:51:32', '2021-10-23 15:51:32', 'All', '319.010'),
	('sanguine', 'Clear All POS Data', '2021-10-23 12:30:38', 'T', '2021-11-01 12:31:51', '2021-11-01 12:31:51', 'All', '405.001'),
	('sanguine', 'Clear All POS Data', '2021-11-10 17:40:59', 'T', '2021-11-13 17:41:51', '2021-11-13 17:41:51', 'All', '412.005'),
	('sanguine', 'Clear All POS Data', '2021-12-20 14:23:52', 'T', '2021-12-21 14:25:30', '2021-12-21 14:25:30', 'All', '412.005'),
	('sanguine', 'Clear All POS Data', '2022-01-10 16:03:58', 'T', '2022-01-10 16:05:18', '2022-01-10 16:05:18', 'All', '412.005'),
	('sanguine', '[Advance Order, Billing, Cash Management, Day End Process, Debit Card, Gift Voucher, KOT, Audit, Production, Physical Stock Posting, Advance Receipt, Stock In/Out, Place Order, Document Nos, Reservation, Register POS Terminal, Non Available Items]', '2022-03-16 12:50:41', 'T', '2020-08-01 00:00:00', '2022-05-23 00:00:00', 'P01', '412.005'),
	('sanguine', 'Clear All POS Data', '2022-05-23 15:16:51', 'T', '2022-06-01 15:17:25', '2022-06-01 15:17:25', 'All', '412.005');
/*!40000 ALTER TABLE `tbltruncationdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tbluommaster
DROP TABLE IF EXISTS `tbluommaster`;
CREATE TABLE IF NOT EXISTS `tbluommaster` (
  `strUomName` varchar(50) NOT NULL,
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strPosCode` varchar(10) NOT NULL,
  PRIMARY KEY (`strUomName`,`strClientCode`),
  KEY `intUomName` (`strUomName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbluommaster: ~2 rows (approximately)
DELETE FROM `tbluommaster`;
/*!40000 ALTER TABLE `tbluommaster` DISABLE KEYS */;
INSERT INTO `tbluommaster` (`strUomName`, `strUserCreated`, `strUserEdited`, `dteDateCreated`, `dteDateEdited`, `strClientCode`, `strDataPostFlag`, `strPosCode`) VALUES
	('KG', 'SANGUINE', 'SANGUINE', '2021-11-20 15:53:58', '2021-11-20 15:53:58', '412.005', 'N', 'P01'),
	('NOS', 'SANGUINE', 'SANGUINE', '2019-06-19 11:52:35', '2019-06-19 11:52:35', '405.001', 'N', 'P01');
/*!40000 ALTER TABLE `tbluommaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblupdatekotandbillfromqrmenu
DROP TABLE IF EXISTS `tblupdatekotandbillfromqrmenu`;
CREATE TABLE IF NOT EXISTS `tblupdatekotandbillfromqrmenu` (
  `strPOSBillNo` varchar(20) NOT NULL DEFAULT '',
  `strQRMenuBillNo` varchar(20) NOT NULL DEFAULT '',
  `strClientCode` varchar(20) NOT NULL DEFAULT '',
  `dtePOSDate` datetime NOT NULL,
  `dteCreatedDate` datetime NOT NULL,
  `strPrintYN` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblupdatekotandbillfromqrmenu: ~0 rows (approximately)
DELETE FROM `tblupdatekotandbillfromqrmenu`;
/*!40000 ALTER TABLE `tblupdatekotandbillfromqrmenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblupdatekotandbillfromqrmenu` ENABLE KEYS */;

-- Dumping structure for table infosys.tbluserdtl
DROP TABLE IF EXISTS `tbluserdtl`;
CREATE TABLE IF NOT EXISTS `tbluserdtl` (
  `strUserCode` varchar(10) NOT NULL,
  `strFormName` varchar(50) NOT NULL,
  `strButtonName` varchar(50) NOT NULL,
  `intSequence` int(11) NOT NULL,
  `strAdd` char(10) NOT NULL,
  `strEdit` char(10) NOT NULL,
  `strDelete` char(10) NOT NULL,
  `strView` char(10) NOT NULL,
  `strPrint` char(10) NOT NULL,
  `strSave` varchar(5) NOT NULL,
  `strGrant` varchar(5) NOT NULL,
  `strTLA` varchar(5) NOT NULL DEFAULT 'false',
  `strAuditing` varchar(5) NOT NULL DEFAULT 'true',
  PRIMARY KEY (`strUserCode`,`strFormName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbluserdtl: ~0 rows (approximately)
DELETE FROM `tbluserdtl`;
/*!40000 ALTER TABLE `tbluserdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbluserdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tbluserforms
DROP TABLE IF EXISTS `tbluserforms`;
CREATE TABLE IF NOT EXISTS `tbluserforms` (
  `strFormName` varchar(100) NOT NULL,
  `strModuleName` varchar(100) NOT NULL,
  `intSequence` int(11) NOT NULL,
  `strImageName` varchar(100) NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbluserforms: ~0 rows (approximately)
DELETE FROM `tbluserforms`;
/*!40000 ALTER TABLE `tbluserforms` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbluserforms` ENABLE KEYS */;

-- Dumping structure for table infosys.tbluserhd
DROP TABLE IF EXISTS `tbluserhd`;
CREATE TABLE IF NOT EXISTS `tbluserhd` (
  `strUserCode` varchar(10) NOT NULL,
  `strUserName` varchar(100) NOT NULL,
  `strPassword` varchar(50) NOT NULL,
  `strSuperType` varchar(10) NOT NULL,
  `dteValidDate` date NOT NULL,
  `strPOSAccess` varchar(255) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `imgUserIcon` longblob NOT NULL,
  `strImgUserIconPath` varchar(500) NOT NULL,
  `strDebitCardString` varchar(50) NOT NULL DEFAULT '',
  `strWaiterNo` varchar(10) NOT NULL DEFAULT '',
  `strUserType` varchar(10) NOT NULL DEFAULT '',
  `intNoOfDaysReportsView` smallint(6) NOT NULL DEFAULT '0',
  `strShowDocs` varchar(10) NOT NULL DEFAULT 'All',
  PRIMARY KEY (`strUserCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbluserhd: ~0 rows (approximately)
DELETE FROM `tbluserhd`;
/*!40000 ALTER TABLE `tbluserhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbluserhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tbluserpasspolicy
DROP TABLE IF EXISTS `tbluserpasspolicy`;
CREATE TABLE IF NOT EXISTS `tbluserpasspolicy` (
  `strUserCode` varchar(50) DEFAULT '',
  `strPassword` varchar(50) DEFAULT '',
  `dtePassChangeDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tbluserpasspolicy: ~0 rows (approximately)
DELETE FROM `tbluserpasspolicy`;
/*!40000 ALTER TABLE `tbluserpasspolicy` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbluserpasspolicy` ENABLE KEYS */;

-- Dumping structure for table infosys.tblviewbilldtl
DROP TABLE IF EXISTS `tblviewbilldtl`;
CREATE TABLE IF NOT EXISTS `tblviewbilldtl` (
  `strItemCode` varchar(10) NOT NULL DEFAULT '',
  `strItemName` varchar(50) NOT NULL DEFAULT '',
  `strBillNo` varchar(10) NOT NULL DEFAULT '',
  `dblQuantity` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblAmount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblTaxAmount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dteBillDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblviewbilldtl: ~0 rows (approximately)
DELETE FROM `tblviewbilldtl`;
/*!40000 ALTER TABLE `tblviewbilldtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblviewbilldtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblviewbillhd
DROP TABLE IF EXISTS `tblviewbillhd`;
CREATE TABLE IF NOT EXISTS `tblviewbillhd` (
  `strBillNo` varchar(10) NOT NULL DEFAULT '',
  `dteBillDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `strPOSCode` varchar(3) NOT NULL DEFAULT '',
  `strSettelmentMode` varchar(50) NOT NULL DEFAULT '',
  `dblDiscountAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblDiscountPer` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dblTaxAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblSubTotal` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblGrandTotal` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strUserCreated` varchar(50) NOT NULL DEFAULT '',
  `strUserEdited` varchar(50) DEFAULT NULL,
  `dteDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dteDateEdited` datetime DEFAULT NULL,
  `strClientCode` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblviewbillhd: ~0 rows (approximately)
DELETE FROM `tblviewbillhd`;
/*!40000 ALTER TABLE `tblviewbillhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblviewbillhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblvoidadvancereceiptdtl
DROP TABLE IF EXISTS `tblvoidadvancereceiptdtl`;
CREATE TABLE IF NOT EXISTS `tblvoidadvancereceiptdtl` (
  `strReceiptNo` varchar(10) NOT NULL,
  `strSettlementCode` varchar(10) NOT NULL,
  `strCardNo` varchar(50) NOT NULL,
  `strExpirydate` varchar(50) NOT NULL,
  `strChequeNo` varchar(50) NOT NULL,
  `dteCheque` date NOT NULL,
  `strBankName` varchar(50) NOT NULL,
  `dblAdvDepositesettleAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strRemark` varchar(50) NOT NULL,
  `dblPaidAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dteInstallment` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblvoidadvancereceiptdtl: ~0 rows (approximately)
DELETE FROM `tblvoidadvancereceiptdtl`;
/*!40000 ALTER TABLE `tblvoidadvancereceiptdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblvoidadvancereceiptdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblvoidadvancereceipthd
DROP TABLE IF EXISTS `tblvoidadvancereceipthd`;
CREATE TABLE IF NOT EXISTS `tblvoidadvancereceipthd` (
  `strReceiptNo` varchar(15) NOT NULL,
  `strAdvBookingNo` varchar(15) NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `strSettelmentMode` varchar(15) NOT NULL,
  `dtReceiptDate` date NOT NULL,
  `dblAdvDeposite` decimal(18,2) NOT NULL DEFAULT '0.00',
  `intShiftCode` int(11) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dtDateCreated` datetime NOT NULL,
  `dtDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strReceiptNo`,`strAdvBookingNo`,`strPOSCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblvoidadvancereceipthd: ~0 rows (approximately)
DELETE FROM `tblvoidadvancereceipthd`;
/*!40000 ALTER TABLE `tblvoidadvancereceipthd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblvoidadvancereceipthd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblvoidadvbookbillchardtl
DROP TABLE IF EXISTS `tblvoidadvbookbillchardtl`;
CREATE TABLE IF NOT EXISTS `tblvoidadvbookbillchardtl` (
  `strItemCode` varchar(15) NOT NULL,
  `strAdvBookingNo` varchar(20) NOT NULL,
  `strCharCode` varchar(15) NOT NULL,
  `strCharValues` varchar(200) NOT NULL,
  `strClientCode` varchar(11) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strItemCode`,`strAdvBookingNo`,`strCharCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblvoidadvbookbillchardtl: ~0 rows (approximately)
DELETE FROM `tblvoidadvbookbillchardtl`;
/*!40000 ALTER TABLE `tblvoidadvbookbillchardtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblvoidadvbookbillchardtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblvoidadvbookbilldtl
DROP TABLE IF EXISTS `tblvoidadvbookbilldtl`;
CREATE TABLE IF NOT EXISTS `tblvoidadvbookbilldtl` (
  `strItemCode` varchar(50) NOT NULL,
  `strItemName` varchar(50) NOT NULL,
  `strAdvBookingNo` varchar(50) NOT NULL,
  `dblQuantity` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `dblTaxAmount` decimal(18,2) NOT NULL,
  `dteAdvBookingDate` datetime NOT NULL,
  `dteOrderFor` date NOT NULL,
  `strClientCode` varchar(50) NOT NULL,
  `strCustomerCode` varchar(50) NOT NULL,
  `dblWeight` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strItemCode`,`strAdvBookingNo`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblvoidadvbookbilldtl: ~0 rows (approximately)
DELETE FROM `tblvoidadvbookbilldtl`;
/*!40000 ALTER TABLE `tblvoidadvbookbilldtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblvoidadvbookbilldtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblvoidadvbookbillhd
DROP TABLE IF EXISTS `tblvoidadvbookbillhd`;
CREATE TABLE IF NOT EXISTS `tblvoidadvbookbillhd` (
  `strAdvBookingNo` varchar(15) NOT NULL,
  `dteAdvBookingDate` datetime NOT NULL,
  `dteOrderFor` datetime NOT NULL,
  `strPOSCode` varchar(10) NOT NULL,
  `strSettelmentMode` varchar(10) NOT NULL,
  `dblDiscountAmt` decimal(18,2) NOT NULL,
  `dblDiscountPer` decimal(18,2) NOT NULL,
  `dblTaxAmt` decimal(18,2) NOT NULL,
  `dblSubTotal` decimal(18,2) NOT NULL,
  `dblGrandTotal` decimal(18,2) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strCustomerCode` varchar(15) NOT NULL,
  `intShiftCode` int(11) NOT NULL,
  `strMessage` varchar(150) NOT NULL DEFAULT '',
  `strShape` varchar(100) NOT NULL DEFAULT '',
  `strNote` varchar(300) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strDeliveryTime` varchar(10) NOT NULL,
  `strWaiterNo` varchar(10) NOT NULL DEFAULT '',
  `strHomeDelivery` varchar(1) NOT NULL DEFAULT 'N',
  `dblHomeDelCharges` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strOrderType` varchar(10) NOT NULL,
  `strManualAdvOrderNo` varchar(20) NOT NULL DEFAULT '',
  `strImageName` varchar(50) NOT NULL DEFAULT '',
  `strSpecialsymbolImage` varchar(50) NOT NULL DEFAULT '',
  `strUrgentOrder` varchar(1) NOT NULL DEFAULT 'N',
  `strReasonCode` varchar(10) NOT NULL,
  `strRemark` varchar(100) NOT NULL,
  PRIMARY KEY (`strAdvBookingNo`,`strPOSCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblvoidadvbookbillhd: ~0 rows (approximately)
DELETE FROM `tblvoidadvbookbillhd`;
/*!40000 ALTER TABLE `tblvoidadvbookbillhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblvoidadvbookbillhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblvoidadvordermodifierdtl
DROP TABLE IF EXISTS `tblvoidadvordermodifierdtl`;
CREATE TABLE IF NOT EXISTS `tblvoidadvordermodifierdtl` (
  `strAdvOrderNo` varchar(15) NOT NULL,
  `strItemCode` varchar(10) NOT NULL,
  `strModifierCode` varchar(4) NOT NULL,
  `strModifierName` varchar(50) NOT NULL,
  `dblQuantity` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strCustomerCode` varchar(10) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`strAdvOrderNo`,`strItemCode`,`strModifierCode`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblvoidadvordermodifierdtl: ~0 rows (approximately)
DELETE FROM `tblvoidadvordermodifierdtl`;
/*!40000 ALTER TABLE `tblvoidadvordermodifierdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblvoidadvordermodifierdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblvoidbill
DROP TABLE IF EXISTS `tblvoidbill`;
CREATE TABLE IF NOT EXISTS `tblvoidbill` (
  `strPosCode` varchar(3) NOT NULL,
  `strReasonCode` varchar(10) DEFAULT NULL,
  `strReasonName` varchar(50) DEFAULT NULL,
  `strItemCode` varchar(10) DEFAULT NULL,
  `strItemName` varchar(50) DEFAULT NULL,
  `strBillNo` varchar(15) DEFAULT NULL,
  `intQuantity` int(11) DEFAULT NULL,
  `dblAmount` decimal(18,2) DEFAULT NULL,
  `dblTaxAmount` decimal(18,2) DEFAULT NULL,
  `dteBillDate` datetime DEFAULT NULL,
  `strTransType` char(10) DEFAULT NULL,
  `dteModifyVoidBill` datetime DEFAULT NULL,
  `strSettlementCode` varchar(10) DEFAULT NULL,
  `dblSettlementAmt` decimal(18,2) DEFAULT NULL,
  `dblPaidAmt` decimal(18,2) DEFAULT NULL,
  `strTableNo` varchar(50) DEFAULT NULL,
  `strWaiterNo` varchar(50) DEFAULT NULL,
  `intShiftCode` int(11) NOT NULL DEFAULT '0',
  `strUserCreated` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblvoidbill: ~0 rows (approximately)
DELETE FROM `tblvoidbill`;
/*!40000 ALTER TABLE `tblvoidbill` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblvoidbill` ENABLE KEYS */;

-- Dumping structure for table infosys.tblvoidbilldiscdtl
DROP TABLE IF EXISTS `tblvoidbilldiscdtl`;
CREATE TABLE IF NOT EXISTS `tblvoidbilldiscdtl` (
  `strBillNo` varchar(15) DEFAULT NULL,
  `strPOSCode` varchar(5) NOT NULL,
  `dblDiscAmt` decimal(18,2) NOT NULL,
  `dblDiscPer` decimal(10,2) NOT NULL,
  `dblDiscOnAmt` decimal(18,2) NOT NULL,
  `strDiscOnType` varchar(50) NOT NULL DEFAULT '',
  `strDiscOnValue` varchar(100) NOT NULL DEFAULT '',
  `strDiscReasonCode` varchar(10) NOT NULL DEFAULT '',
  `strDiscRemarks` varchar(100) NOT NULL DEFAULT '',
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL DEFAULT '',
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dteBillDate` date NOT NULL,
  `strTransType` char(10) NOT NULL DEFAULT '',
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblvoidbilldiscdtl: ~0 rows (approximately)
DELETE FROM `tblvoidbilldiscdtl`;
/*!40000 ALTER TABLE `tblvoidbilldiscdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblvoidbilldiscdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblvoidbilldtl
DROP TABLE IF EXISTS `tblvoidbilldtl`;
CREATE TABLE IF NOT EXISTS `tblvoidbilldtl` (
  `strPosCode` varchar(3) NOT NULL,
  `strReasonCode` varchar(10) NOT NULL DEFAULT '',
  `strReasonName` varchar(50) NOT NULL DEFAULT '',
  `strItemCode` varchar(30) NOT NULL,
  `strItemName` varchar(200) NOT NULL,
  `strBillNo` varchar(15) DEFAULT NULL,
  `intQuantity` int(11) NOT NULL DEFAULT '0',
  `dblAmount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblTaxAmount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dteBillDate` datetime NOT NULL,
  `strTransType` char(30) NOT NULL,
  `dteModifyVoidBill` datetime NOT NULL,
  `strSettlementCode` varchar(10) NOT NULL DEFAULT '',
  `dblSettlementAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblPaidAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strTableNo` varchar(50) NOT NULL DEFAULT 'NA',
  `strWaiterNo` varchar(50) NOT NULL DEFAULT 'NA',
  `intShiftCode` int(11) NOT NULL DEFAULT '0',
  `strUserCreated` varchar(10) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strKOTNo` varchar(10) NOT NULL DEFAULT 'N',
  `strRemarks` varchar(500) NOT NULL DEFAULT 'NA',
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblvoidbilldtl: ~0 rows (approximately)
DELETE FROM `tblvoidbilldtl`;
/*!40000 ALTER TABLE `tblvoidbilldtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblvoidbilldtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblvoidbillhd
DROP TABLE IF EXISTS `tblvoidbillhd`;
CREATE TABLE IF NOT EXISTS `tblvoidbillhd` (
  `strPosCode` varchar(3) NOT NULL,
  `strReasonCode` varchar(10) NOT NULL DEFAULT '',
  `strReasonName` varchar(50) NOT NULL DEFAULT '',
  `strBillNo` varchar(15) DEFAULT NULL,
  `dblActualAmount` decimal(18,2) NOT NULL,
  `dblModifiedAmount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dteBillDate` datetime NOT NULL,
  `strTransType` char(30) NOT NULL DEFAULT '',
  `dteModifyVoidBill` datetime NOT NULL,
  `strTableNo` varchar(10) NOT NULL DEFAULT '',
  `strWaiterNo` varchar(5) NOT NULL DEFAULT '',
  `intShiftCode` int(11) NOT NULL DEFAULT '0',
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL DEFAULT '',
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strRemark` varchar(200) NOT NULL DEFAULT '',
  `strVoidBillType` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblvoidbillhd: ~0 rows (approximately)
DELETE FROM `tblvoidbillhd`;
/*!40000 ALTER TABLE `tblvoidbillhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblvoidbillhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblvoidbillsettlementdtl
DROP TABLE IF EXISTS `tblvoidbillsettlementdtl`;
CREATE TABLE IF NOT EXISTS `tblvoidbillsettlementdtl` (
  `strBillNo` varchar(15) DEFAULT NULL,
  `strSettlementCode` varchar(10) NOT NULL,
  `dblSettlementAmt` decimal(18,2) NOT NULL,
  `dblPaidAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strExpiryDate` varchar(7) NOT NULL DEFAULT '',
  `strCardName` varchar(50) NOT NULL DEFAULT '0',
  `strRemark` varchar(500) NOT NULL DEFAULT '0',
  `strClientCode` varchar(10) NOT NULL DEFAULT '0',
  `strCustomerCode` varchar(10) NOT NULL DEFAULT '',
  `dblActualAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dblRefundAmt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `strGiftVoucherCode` varchar(50) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dteBillDate` datetime NOT NULL,
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblvoidbillsettlementdtl: ~0 rows (approximately)
DELETE FROM `tblvoidbillsettlementdtl`;
/*!40000 ALTER TABLE `tblvoidbillsettlementdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblvoidbillsettlementdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblvoidbilltaxdtl
DROP TABLE IF EXISTS `tblvoidbilltaxdtl`;
CREATE TABLE IF NOT EXISTS `tblvoidbilltaxdtl` (
  `strBillNo` varchar(15) NOT NULL DEFAULT '',
  `strTaxCode` varchar(10) NOT NULL,
  `dblTaxableAmount` decimal(18,2) NOT NULL,
  `dblTaxAmount` decimal(18,2) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `dteBillDate` date NOT NULL,
  `strTransType` char(30) NOT NULL DEFAULT '',
  KEY `strBillNo` (`strBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblvoidbilltaxdtl: ~0 rows (approximately)
DELETE FROM `tblvoidbilltaxdtl`;
/*!40000 ALTER TABLE `tblvoidbilltaxdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblvoidbilltaxdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblvoidkot
DROP TABLE IF EXISTS `tblvoidkot`;
CREATE TABLE IF NOT EXISTS `tblvoidkot` (
  `strTableNo` varchar(10) NOT NULL,
  `strPOSCode` varchar(3) NOT NULL,
  `strItemCode` varchar(50) NOT NULL,
  `strItemName` varchar(100) NOT NULL,
  `dblItemQuantity` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `strWaiterNo` varchar(10) NOT NULL,
  `strKOTNo` varchar(10) NOT NULL DEFAULT '',
  `intPaxNo` int(11) NOT NULL,
  `strType` varchar(50) NOT NULL DEFAULT '',
  `strReasonCode` varchar(50) NOT NULL DEFAULT '',
  `strUserCreated` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteVoidedDate` datetime NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strClientCode` varchar(15) NOT NULL DEFAULT '',
  `strManualKOTNo` varchar(10) NOT NULL DEFAULT '',
  `strPrintKOT` varchar(1) NOT NULL DEFAULT 'N',
  `strRemark` varchar(200) NOT NULL DEFAULT 'N',
  `strItemProcessed` varchar(1) NOT NULL DEFAULT 'N',
  `strVoidBillType` varchar(50) NOT NULL DEFAULT 'N',
  `strAreaCode` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblvoidkot: ~0 rows (approximately)
DELETE FROM `tblvoidkot`;
/*!40000 ALTER TABLE `tblvoidkot` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblvoidkot` ENABLE KEYS */;

-- Dumping structure for table infosys.tblvoidmodifierdtl
DROP TABLE IF EXISTS `tblvoidmodifierdtl`;
CREATE TABLE IF NOT EXISTS `tblvoidmodifierdtl` (
  `strBillNo` varchar(15) NOT NULL,
  `strItemCode` varchar(20) NOT NULL,
  `strModifierCode` varchar(10) NOT NULL,
  `strModifierName` varchar(200) NOT NULL,
  `dblQuantity` decimal(18,2) NOT NULL,
  `dblAmount` decimal(18,2) NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strCustomerCode` varchar(50) DEFAULT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strRemarks` varchar(500) NOT NULL DEFAULT 'NA',
  `strReasonCode` varchar(10) NOT NULL,
  `dteBillDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblvoidmodifierdtl: ~0 rows (approximately)
DELETE FROM `tblvoidmodifierdtl`;
/*!40000 ALTER TABLE `tblvoidmodifierdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblvoidmodifierdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblvoidstockdtl
DROP TABLE IF EXISTS `tblvoidstockdtl`;
CREATE TABLE IF NOT EXISTS `tblvoidstockdtl` (
  `strStockCode` varchar(50) DEFAULT NULL,
  `strItemCode` varchar(50) DEFAULT NULL,
  `dblQuantity` decimal(18,0) DEFAULT NULL,
  `dblPurchaseRate` decimal(18,2) DEFAULT NULL,
  `dblAmount` decimal(18,2) DEFAULT NULL,
  `dblPhyStk` decimal(18,2) DEFAULT NULL,
  `dblCompStk` decimal(18,2) DEFAULT NULL,
  `dblVariance` decimal(18,2) DEFAULT NULL,
  `dblVairanceAmt` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblvoidstockdtl: ~0 rows (approximately)
DELETE FROM `tblvoidstockdtl`;
/*!40000 ALTER TABLE `tblvoidstockdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblvoidstockdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblvoidstockhd
DROP TABLE IF EXISTS `tblvoidstockhd`;
CREATE TABLE IF NOT EXISTS `tblvoidstockhd` (
  `strStockCode` varchar(50) NOT NULL,
  `strPOSCode` varchar(50) DEFAULT NULL,
  `strStockInCode` varchar(50) DEFAULT NULL,
  `strStockOutCode` varchar(50) DEFAULT NULL,
  `strBillNo` varchar(50) DEFAULT NULL,
  `dteStkDate` datetime DEFAULT NULL,
  `dblStkInAmt` decimal(18,2) DEFAULT NULL,
  `dblSaleAmt` decimal(18,2) DEFAULT NULL,
  `strReasonCode` varchar(50) DEFAULT NULL,
  `strPurchaseBillNo` varchar(50) DEFAULT NULL,
  `dtePurchaseBillDate` datetime DEFAULT NULL,
  `dteVoidedDate` datetime DEFAULT NULL,
  `strTransType` varchar(50) DEFAULT NULL,
  `strVoidReasonCode` varchar(50) DEFAULT NULL,
  `strUserCreated` varchar(50) DEFAULT NULL,
  `intShiftCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblvoidstockhd: ~0 rows (approximately)
DELETE FROM `tblvoidstockhd`;
/*!40000 ALTER TABLE `tblvoidstockhd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblvoidstockhd` ENABLE KEYS */;

-- Dumping structure for table infosys.tblvoidstocktaxdtl
DROP TABLE IF EXISTS `tblvoidstocktaxdtl`;
CREATE TABLE IF NOT EXISTS `tblvoidstocktaxdtl` (
  `strTransactionId` varchar(50) DEFAULT NULL,
  `strTaxCode` varchar(50) DEFAULT NULL,
  `dblTaxableAmt` decimal(18,2) DEFAULT NULL,
  `dblTaxAmt` decimal(18,0) DEFAULT NULL,
  `strClientCode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblvoidstocktaxdtl: ~0 rows (approximately)
DELETE FROM `tblvoidstocktaxdtl`;
/*!40000 ALTER TABLE `tblvoidstocktaxdtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblvoidstocktaxdtl` ENABLE KEYS */;

-- Dumping structure for table infosys.tblwaitermaster
DROP TABLE IF EXISTS `tblwaitermaster`;
CREATE TABLE IF NOT EXISTS `tblwaitermaster` (
  `strWaiterNo` varchar(4) NOT NULL,
  `strWShortName` varchar(10) NOT NULL,
  `strWFullName` varchar(200) NOT NULL,
  `strStatus` varchar(10) NOT NULL,
  `strOperational` varchar(1) NOT NULL DEFAULT 'Y',
  `strDebitCardString` varchar(200) NOT NULL DEFAULT '',
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(11) NOT NULL DEFAULT '',
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N',
  `strPOSCode` varchar(10) NOT NULL DEFAULT 'All',
  `strMobilePOSString` varchar(50) DEFAULT '',
  PRIMARY KEY (`strWaiterNo`,`strClientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblwaitermaster: ~0 rows (approximately)
DELETE FROM `tblwaitermaster`;
/*!40000 ALTER TABLE `tblwaitermaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwaitermaster` ENABLE KEYS */;

-- Dumping structure for table infosys.tblwebbookslinkup
DROP TABLE IF EXISTS `tblwebbookslinkup`;
CREATE TABLE IF NOT EXISTS `tblwebbookslinkup` (
  `strLinkUpType` varchar(50) NOT NULL DEFAULT '',
  `strPOSCode` varchar(50) NOT NULL DEFAULT '',
  `strClientCode` varchar(50) NOT NULL DEFAULT '',
  `strMasterCode` varchar(150) NOT NULL DEFAULT '',
  `strMasterName` varchar(150) NOT NULL DEFAULT '',
  `strOperationType` varchar(50) NOT NULL DEFAULT '',
  `strAccountCode` varchar(50) NOT NULL DEFAULT '',
  `strAccountName` varchar(150) NOT NULL DEFAULT '',
  `strDebtorCode` varchar(50) NOT NULL DEFAULT '',
  `strDebtorName` varchar(150) NOT NULL DEFAULT '',
  `strUserCreated` varchar(50) NOT NULL,
  `strUserEdited` varchar(50) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblwebbookslinkup: ~0 rows (approximately)
DELETE FROM `tblwebbookslinkup`;
/*!40000 ALTER TABLE `tblwebbookslinkup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwebbookslinkup` ENABLE KEYS */;

-- Dumping structure for table infosys.tblzonemaster
DROP TABLE IF EXISTS `tblzonemaster`;
CREATE TABLE IF NOT EXISTS `tblzonemaster` (
  `strZoneCode` varchar(10) NOT NULL,
  `strZoneName` varchar(100) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strClientCode` varchar(10) NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.tblzonemaster: ~0 rows (approximately)
DELETE FROM `tblzonemaster`;
/*!40000 ALTER TABLE `tblzonemaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblzonemaster` ENABLE KEYS */;

-- Dumping structure for table infosys.vcustomeroffaddress
DROP TABLE IF EXISTS `vcustomeroffaddress`;
CREATE TABLE IF NOT EXISTS `vcustomeroffaddress` (
  `strCustomerCode` varchar(10) NOT NULL,
  `strCustomerName` varchar(100) NOT NULL,
  `strBuldingCode` varchar(10) NOT NULL,
  `strBuildingName` varchar(200) NOT NULL,
  `strStreetName` varchar(200) NOT NULL,
  `strLandmark` varchar(200) NOT NULL,
  `strArea` varchar(200) NOT NULL,
  `strCity` varchar(100) NOT NULL,
  `strState` varchar(100) NOT NULL,
  `intPinCode` varchar(50) NOT NULL,
  `longMobileNo` varchar(50) NOT NULL,
  `longAlternateMobileNo` varchar(50) NOT NULL,
  `strOfficeBuildingCode` varchar(10) NOT NULL,
  `strOfficeBuildingName` varchar(200) NOT NULL,
  `strOfficeStreetName` varchar(200) NOT NULL,
  `strOfficeLandmark` varchar(200) NOT NULL,
  `strOfficeArea` varchar(200) NOT NULL,
  `strOfficeCity` varchar(200) NOT NULL,
  `strOfficePinCode` varchar(10) NOT NULL,
  `strOfficeState` varchar(200) NOT NULL,
  `strOfficeNo` varchar(50) NOT NULL,
  `strUserCreated` varchar(10) NOT NULL,
  `strUserEdited` varchar(10) NOT NULL,
  `dteDateCreated` datetime NOT NULL,
  `dteDateEdited` datetime NOT NULL,
  `strDataPostFlag` varchar(1) NOT NULL,
  `strClientCode` varchar(15) NOT NULL,
  `strOfficeAddress` varchar(1) NOT NULL,
  `strExternalCode` varchar(10) NOT NULL,
  `strCustomerType` varchar(50) NOT NULL,
  `dteDOB` varchar(50) NOT NULL,
  `strGender` varchar(5) NOT NULL,
  `dteAnniversary` varchar(50) NOT NULL,
  `strEmailId` varchar(50) NOT NULL,
  `strCRMId` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table infosys.vcustomeroffaddress: 0 rows
DELETE FROM `vcustomeroffaddress`;
/*!40000 ALTER TABLE `vcustomeroffaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `vcustomeroffaddress` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
