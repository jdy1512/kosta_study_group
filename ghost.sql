-- --------------------------------------------------------
-- 호스트:                          ec2-54-186-141-25.us-west-2.compute.amazonaws.com
-- 서버 버전:                        5.5.37 - MySQL Community Server (GPL)
-- 서버 OS:                        Linux
-- HeidiSQL 버전:                  9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 테이블 allchange의 구조를 덤프합니다. GH_AREA
CREATE TABLE IF NOT EXISTS `GH_AREA` (
  `NATION_CD` varchar(2) NOT NULL,
  `AREA_CD` varchar(6) NOT NULL,
  `AREA_NM` varchar(50) NOT NULL,
  `AREA_ENG_NM` varchar(50) DEFAULT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `NATION_CD_AREA_CD` (`NATION_CD`,`AREA_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_AREA: ~4 rows (대략적)
/*!40000 ALTER TABLE `GH_AREA` DISABLE KEYS */;
INSERT IGNORE INTO `GH_AREA` (`NATION_CD`, `AREA_CD`, `AREA_NM`, `AREA_ENG_NM`, `CREATE_DTIME`, `CREATE_ID`, `LAST_DTIME`, `LAST_ID`) VALUES
	('KR', '000001', '서울', 'Seoul', '20140308161421', 'admin', '20140308161421', 'admin'),
	('KR', '000002', '경기', 'Gyeonggi', '20140308161508', 'admin', '20140308161508', 'admin'),
	('KR', '000003', '충남', 'Chungnam', '20140308161535', 'admin', '20140308161535', 'admin'),
	('KR', '000004', '강릉', 'Gangrung', '20140308171535', 'admin', '20140308171535', 'admin');
/*!40000 ALTER TABLE `GH_AREA` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_BANK
CREATE TABLE IF NOT EXISTS `GH_BANK` (
  `BANK_CD` varchar(3) NOT NULL,
  `BANK_NM` varchar(50) NOT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `BANK_CD` (`BANK_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_BANK: ~2 rows (대략적)
/*!40000 ALTER TABLE `GH_BANK` DISABLE KEYS */;
INSERT IGNORE INTO `GH_BANK` (`BANK_CD`, `BANK_NM`, `CREATE_DTIME`, `CREATE_ID`, `LAST_DTIME`, `LAST_ID`) VALUES
	('001', '국민은행', '20140309195155', 'admin', '20140309195155', 'admin'),
	('002', '지역농협', '20140309195217', 'admin', '20140309195217', 'admin');
/*!40000 ALTER TABLE `GH_BANK` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_BED_TYPE
CREATE TABLE IF NOT EXISTS `GH_BED_TYPE` (
  `BED_TYPE` varchar(5) NOT NULL,
  `BED_TYPE_NM` varchar(30) NOT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `BED_TYPE` (`BED_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_BED_TYPE: ~3 rows (대략적)
/*!40000 ALTER TABLE `GH_BED_TYPE` DISABLE KEYS */;
INSERT IGNORE INTO `GH_BED_TYPE` (`BED_TYPE`, `BED_TYPE_NM`, `CREATE_DTIME`, `CREATE_ID`, `LAST_DTIME`, `LAST_ID`) VALUES
	('BED', '일반침대', '20140314130630', 'admin', '20140314130630', 'admin'),
	('DBED', '2층침대', '20140314130503', 'admin', '20140314130503', 'admin'),
	('NOBED', '침대없음', '20140314130619', 'admin', '20140314130619', 'admin');
/*!40000 ALTER TABLE `GH_BED_TYPE` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_CHANNEL
CREATE TABLE IF NOT EXISTS `GH_CHANNEL` (
  `GH_NO` varchar(6) NOT NULL,
  `CHANNEL_CD` varchar(3) NOT NULL,
  `CHANNEL_NM` varchar(50) NOT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_CHANNEL: ~6 rows (대략적)
/*!40000 ALTER TABLE `GH_CHANNEL` DISABLE KEYS */;
INSERT IGNORE INTO `GH_CHANNEL` (`GH_NO`, `CHANNEL_CD`, `CHANNEL_NM`, `CREATE_DTIME`, `CREATE_ID`, `LAST_DTIME`, `LAST_ID`) VALUES
	('GH0001', 'air', 'AirBnb', '20140311115231', 'admin', '20140311115231', 'admin'),
	('GH0002', 'boo', 'booking.com', '20140311115219', 'admin', '20140311115219', 'admin'),
	('GH0001', 'boo', 'booking.com', '20140311115219', 'admin', '20140311115219', 'admin'),
	('GH0002', 'hw', 'hostelworld.com', '20140311115219', 'admin', '20140311115219', 'admin'),
	('GH0002', 'ago', 'agoda.com', '20140311115219', 'admin', '20140311115219', 'admin'),
	('GH0002', 'hb', 'hostelbookers.com', '20140311115219', 'admin', '20140311115219', 'admin');
/*!40000 ALTER TABLE `GH_CHANNEL` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_CONFIRM_CANCEL
CREATE TABLE IF NOT EXISTS `GH_CONFIRM_CANCEL` (
  `RES_SEQ` int(11) NOT NULL,
  `GH_NO` varchar(6) NOT NULL,
  `FLOOR_CD` varchar(3) NOT NULL,
  `ROOM_CD` varchar(3) NOT NULL,
  `RESERVE_DATE` varchar(8) NOT NULL,
  `RESERVE_NO` int(11) NOT NULL,
  `RESERVE_DTIME` varchar(14) NOT NULL,
  `CONFIRM_ID` varchar(50) NOT NULL,
  `CONFIRM_DTIME` varchar(14) NOT NULL,
  `CONFIRM_CANCLE_ID` varchar(50) NOT NULL,
  `CONFIRM_CANCEL_DTIME` varchar(14) NOT NULL,
  `REFUND_PRICE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_CONFIRM_CANCEL: ~0 rows (대략적)
/*!40000 ALTER TABLE `GH_CONFIRM_CANCEL` DISABLE KEYS */;
/*!40000 ALTER TABLE `GH_CONFIRM_CANCEL` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_CURRENCY
CREATE TABLE IF NOT EXISTS `GH_CURRENCY` (
  `CURRENCY_CD` varchar(3) NOT NULL,
  `CURRENCY_NM` varchar(50) NOT NULL,
  `CURRENCY_ENG_NM` varchar(50) DEFAULT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `CURRENCY_CD` (`CURRENCY_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_CURRENCY: ~1 rows (대략적)
/*!40000 ALTER TABLE `GH_CURRENCY` DISABLE KEYS */;
INSERT IGNORE INTO `GH_CURRENCY` (`CURRENCY_CD`, `CURRENCY_NM`, `CURRENCY_ENG_NM`, `CREATE_DTIME`, `CREATE_ID`, `LAST_DTIME`, `LAST_ID`) VALUES
	('KRW', '대한민국 원', 'Korea Won', '20140311112524', 'admin', '20140311112524', 'admin');
/*!40000 ALTER TABLE `GH_CURRENCY` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_FRB_BCLASS
CREATE TABLE IF NOT EXISTS `GH_FRB_BCLASS` (
  `GH_NO` varchar(6) NOT NULL,
  `FLOOR_CD` varchar(3) NOT NULL,
  `ROOM_CD` varchar(3) NOT NULL,
  `ROOM_TYPE` varchar(2) NOT NULL COMMENT 'FE(for female), MA(for male), MI(mixed or private)',
  `BED_CD` varchar(3) NOT NULL,
  `BED_NM` varchar(50) NOT NULL,
  `BED_TYPE` varchar(5) NOT NULL COMMENT 'NOBED:침대없음, BED:일반침대, DBED:2층침대',
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `GH_NO_FLOOR_CD_ROOM_CD_BED_CD` (`GH_NO`,`FLOOR_CD`,`ROOM_CD`,`BED_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_FRB_BCLASS: ~80 rows (대략적)
/*!40000 ALTER TABLE `GH_FRB_BCLASS` DISABLE KEYS */;
INSERT IGNORE INTO `GH_FRB_BCLASS` (`GH_NO`, `FLOOR_CD`, `ROOM_CD`, `ROOM_TYPE`, `BED_CD`, `BED_NM`, `BED_TYPE`, `CREATE_DTIME`, `CREATE_ID`, `LAST_DTIME`, `LAST_ID`) VALUES
	('GH0001', '001', '001', 'FE', '001', '창가침대', 'BED', '20140314134342', 'admin', '20140314134342', 'admin'),
	('GH0001', '001', '001', 'FE', '002', '싱글침대', 'BED', '20140314134508', 'admin', '20140314134508', 'admin'),
	('GH0001', '001', '001', 'FE', '003', '슈퍼싱글침대', 'BED', '20140314134520', 'admin', '20140314134520', 'admin'),
	('GH0001', '001', '001', 'FE', '004', '퀸사이즈침대', 'BED', '20140314134540', 'admin', '20140314134540', 'admin'),
	('GH0001', '001', '001', 'FE', '005', '더블침대', 'DBED', '20140314134628', 'admin', '20140314134628', 'admin'),
	('GH0001', '001', '001', 'FE', '006', '슈퍼더블침대', 'DBED', '20140314134649', 'admin', '20140314134649', 'admin'),
	('GH0001', '001', '001', 'FE', '007', '퀸사이즈더블침대', 'DBED', '20140314134705', 'admin', '20140314134705', 'admin'),
	('GH0001', '001', '002', 'MA', '001', '먼지쌓인침대', 'BED', '20140314134818', 'admin', '20140314134818', 'admin'),
	('GH0001', '001', '002', 'MA', '002', '먼지많이쌓인침대', 'BED', '20140314134828', 'admin', '20140314134828', 'admin'),
	('GH0001', '001', '002', 'MA', '003', '먼지매우많이쌓인침대', 'BED', '20140314134835', 'admin', '20140314134835', 'admin'),
	('GH0001', '001', '002', 'MA', '004', '먼지쌓인바닥', 'NOBED', '20140314134855', 'admin', '20140314134855', 'admin'),
	('GH0001', '001', '002', 'MA', '005', '먼지많이쌓인바닥', 'NOBED', '20140314134903', 'admin', '20140314134903', 'admin'),
	('GH0001', '001', '002', 'MA', '006', '먼지매우많이쌓인바닥', 'NOBED', '20140314134911', 'admin', '20140314134911', 'admin'),
	('GH0001', '001', '003', 'MI', '001', '냄새나는침대', 'BED', '20140314134945', 'admin', '20140314134945', 'admin'),
	('GH0001', '001', '003', 'MI', '002', '냄새많이나는침대', 'BED', '20140314134950', 'admin', '20140314134950', 'admin'),
	('GH0001', '001', '003', 'MI', '003', '냄새매우많이나는침대', 'BED', '20140314134955', 'admin', '20140314134955', 'admin'),
	('GH0001', '001', '003', 'MI', '004', '냄새나는더블침대', 'DBED', '20140314135018', 'admin', '20140314135018', 'admin'),
	('GH0001', '001', '003', 'MI', '005', '냄새많이나는더블침대', 'DBED', '20140314135025', 'admin', '20140314135025', 'admin'),
	('GH0001', '001', '003', 'MI', '006', '냄새매우많이나는더블침대', 'DBED', '20140314135032', 'admin', '20140314135032', 'admin'),
	('GH0001', '001', '004', 'MA', '001', '벌레있는침대', 'BED', '20140314135115', 'admin', '20140314135115', 'admin'),
	('GH0001', '001', '004', 'MA', '002', '벌레많이있는침대', 'BED', '20140314135121', 'admin', '20140314135121', 'admin'),
	('GH0001', '001', '004', 'MA', '003', '벌레매우많이있는침대', 'BED', '20140314135127', 'admin', '20140314135127', 'admin'),
	('GH0001', '002', '001', 'FE', '001', '초코향기나는침대', 'BED', '20140314135224', 'admin', '20140314135224', 'admin'),
	('GH0001', '002', '001', 'FE', '002', '초코향기나는퀸사이즈침대', 'BED', '20140314135245', 'admin', '20140314135245', 'admin'),
	('GH0001', '002', '001', 'FE', '003', '초코향기나는창가침대', 'BED', '20140314135252', 'admin', '20140314135252', 'admin'),
	('GH0001', '002', '001', 'FE', '004', '초코향기나는더블침대', 'DBED', '20140314135301', 'admin', '20140314135301', 'admin'),
	('GH0001', '002', '001', 'FE', '005', '초코향기나는퀸사이즈더블침대', 'DBED', '20140314135310', 'admin', '20140314135310', 'admin'),
	('GH0001', '002', '002', 'MI', '001', '딱딱한침대', 'BED', '20140314135325', 'admin', '20140314135325', 'admin'),
	('GH0001', '002', '002', 'MI', '002', '딱딱한바닥', 'NOBED', '20140314135345', 'admin', '20140314135345', 'admin'),
	('GH0001', '002', '002', 'MI', '003', '화장실같은바닥', 'NOBED', '20140314135358', 'admin', '20140314135358', 'admin'),
	('GH0001', '002', '002', 'MI', '004', '콘크리트바닥', 'NOBED', '20140314135408', 'admin', '20140314135408', 'admin'),
	('GH0001', '002', '003', 'MA', '001', '눅눅한바닥', 'NOBED', '20140314135419', 'admin', '20140314135419', 'admin'),
	('GH0001', '002', '003', 'MA', '002', '눅눅한침대', 'BED', '20140314135428', 'admin', '20140314135428', 'admin'),
	('GH0001', '002', '003', 'MA', '003', '눅눅한더블침대', 'DBED', '20140314135436', 'admin', '20140314135436', 'admin'),
	('GH0001', '002', '004', 'FE', '001', '너네집같은침대', 'BED', '20140314135450', 'admin', '20140314135450', 'admin'),
	('GH0001', '002', '004', 'FE', '002', '너네집같은온돌바닥', 'NOBED', '20140314135507', 'admin', '20140314135507', 'admin'),
	('GH0001', '002', '004', 'FE', '003', '너네집같은퀸사이즈침대', 'BED', '20140314135516', 'admin', '20140314135516', 'admin'),
	('GH0001', '002', '004', 'FE', '004', '너네집같은더블침대', 'DBED', '20140314135527', 'admin', '20140314135527', 'admin'),
	('GH0001', '002', '004', 'FE', '005', '너네집같은퀸사이즈더블침대', 'DBED', '20140314135533', 'admin', '20140314135533', 'admin'),
	('GH0001', '003', '001', 'MI', '001', '창가침대', 'BED', '20140314135552', 'admin', '20140314135552', 'admin'),
	('GH0001', '003', '001', 'MI', '002', '한기가스며드는침대', 'BED', '20140314135603', 'admin', '20140314135603', 'admin'),
	('GH0001', '003', '001', 'MI', '003', '물이새는바닥', 'NOBED', '20140314135633', 'admin', '20140314135633', 'admin'),
	('GH0001', '003', '001', 'MI', '004', '으슥한구석의더블침대', 'DBED', '20140314135706', 'admin', '20140314135706', 'admin'),
	('GH0002', '001', '001', 'FE', '001', '일반', 'BED', '20140314134342', 'admin', '20140314134342', 'admin'),
	('GH0002', '001', '001', 'FE', '002', '일반', 'BED', '20140314134342', 'admin', '20140314134342', 'admin'),
	('GH0002', '001', '001', 'FE', '003', '일반', 'BED', '20140314134342', 'admin', '20140314134342', 'admin'),
	('GH0002', '001', '001', 'FE', '004', '일반', 'BED', '20140314134342', 'admin', '20140314134342', 'admin'),
	('GH0002', '001', '001', 'FE', '005', '일반', 'BED', '20140314134342', 'admin', '20140314134342', 'admin'),
	('GH0002', '001', '001', 'FE', '006', '일반', 'BED', '20140314134342', 'admin', '20140314134342', 'admin'),
	('GH0002', '001', '001', 'FE', '007', '일반', 'BED', '20140314134342', 'admin', '20140314134342', 'admin'),
	('GH0002', '001', '001', 'FE', '008', '일반', 'BED', '20140314134342', 'admin', '20140314134342', 'admin'),
	('GH0002', '001', '002', 'TW', '001', '일반', 'BED', '20140317171502', 'admin', '20140317171502', 'admin'),
	('GH0002', '001', '002', 'TW', '002', '일반', 'BED', '20140317171510', 'admin', '20140317171510', 'admin'),
	('GH0002', '001', '003', 'MI', '001', '일반', 'BED', '20140317171539', 'admin', '20140317171539', 'admin'),
	('GH0002', '001', '003', 'MI', '002', '일반', 'BED', '20140317171541', 'admin', '20140317171541', 'admin'),
	('GH0002', '001', '003', 'MI', '003', '일반', 'BED', '20140317171543', 'admin', '20140317171543', 'admin'),
	('GH0002', '001', '003', 'MI', '004', '일반', 'BED', '20140317171545', 'admin', '20140317171545', 'admin'),
	('GH0002', '001', '003', 'MI', '005', '일반', 'BED', '20140317171546', 'admin', '20140317171546', 'admin'),
	('GH0002', '001', '003', 'MI', '006', '일반', 'BED', '20140317171548', 'admin', '20140317171548', 'admin'),
	('GH0002', '001', '003', 'MI', '007', '일반', 'BED', '20140317171550', 'admin', '20140317171550', 'admin'),
	('GH0002', '001', '003', 'MI', '008', '일반', 'BED', '20140317171552', 'admin', '20140317171552', 'admin'),
	('GH0002', '001', '004', 'TW', '001', 'a double deck', 'DBED', '20140317171643', 'admin', '20140317171643', 'admin'),
	('GH0002', '001', '004', 'TW', '002', 'a double deck', 'DBED', '20140317171645', 'admin', '20140317171645', 'admin'),
	('GH0002', '001', '005', 'SI', '001', '일반', 'BED', '20140317171705', 'admin', '20140317171705', 'admin'),
	('GH0002', '002', '001', 'MI', '001', '일반', 'BED', '20140317171728', 'admin', '20140317171728', 'admin'),
	('GH0002', '002', '001', 'MI', '002', '일반', 'BED', '20140317171730', 'admin', '20140317171730', 'admin'),
	('GH0002', '002', '001', 'MI', '003', '일반', 'BED', '20140317171732', 'admin', '20140317171732', 'admin'),
	('GH0002', '002', '001', 'MI', '004', '일반', 'BED', '20140317171734', 'admin', '20140317171734', 'admin'),
	('GH0002', '002', '001', 'MI', '005', '일반', 'BED', '20140317171736', 'admin', '20140317171736', 'admin'),
	('GH0002', '002', '001', 'MI', '006', '일반', 'BED', '20140317171737', 'admin', '20140317171737', 'admin'),
	('GH0002', '002', '001', 'MI', '007', '일반', 'BED', '20140317171739', 'admin', '20140317171739', 'admin'),
	('GH0002', '002', '001', 'MI', '008', '일반', 'BED', '20140317171741', 'admin', '20140317171741', 'admin'),
	('GH0002', '002', '002', 'MI', '001', '일반', 'BED', '20140317171751', 'admin', '20140317171751', 'admin'),
	('GH0002', '002', '002', 'MI', '002', '일반', 'BED', '20140317171752', 'admin', '20140317171752', 'admin'),
	('GH0002', '002', '002', 'MI', '003', '일반', 'BED', '20140317171754', 'admin', '20140317171754', 'admin'),
	('GH0002', '002', '002', 'MI', '004', '일반', 'BED', '20140317171755', 'admin', '20140317171755', 'admin'),
	('GH0002', '002', '003', 'FE', '001', '일반', 'BED', '20140317171804', 'admin', '20140317171804', 'admin'),
	('GH0002', '002', '003', 'FE', '002', '일반', 'BED', '20140317171806', 'admin', '20140317171806', 'admin'),
	('GH0002', '002', '003', 'FE', '003', '일반', 'BED', '20140317171808', 'admin', '20140317171808', 'admin'),
	('GH0002', '002', '003', 'FE', '004', '일반', 'BED', '20140317171810', 'admin', '20140317171810', 'admin');
/*!40000 ALTER TABLE `GH_FRB_BCLASS` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_FRB_FCLASS
CREATE TABLE IF NOT EXISTS `GH_FRB_FCLASS` (
  `GH_NO` varchar(6) NOT NULL,
  `FLOOR_CD` varchar(3) NOT NULL,
  `FLOOR_NM` varchar(50) NOT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `GH_NO_FLOOR_CD` (`GH_NO`,`FLOOR_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_FRB_FCLASS: ~5 rows (대략적)
/*!40000 ALTER TABLE `GH_FRB_FCLASS` DISABLE KEYS */;
INSERT IGNORE INTO `GH_FRB_FCLASS` (`GH_NO`, `FLOOR_CD`, `FLOOR_NM`, `CREATE_DTIME`, `CREATE_ID`, `LAST_DTIME`, `LAST_ID`) VALUES
	('GH0001', '001', '따뜻한 1층', '20140314131309', 'admin', '20140314131309', 'admin'),
	('GH0001', '002', '전망좋은 2층', '20140314131325', 'admin', '20140314131325', 'admin'),
	('GH0001', '003', '아늑한 3층', '20140314131332', 'admin', '20140314131332', 'admin'),
	('GH0002', '001', '1층', '20140314140706', 'admin', '20140314140706', 'admin'),
	('GH0002', '002', '2층', '20140314140706', 'admin', '20140314140706', 'admin');
/*!40000 ALTER TABLE `GH_FRB_FCLASS` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_FRB_RCLASS
CREATE TABLE IF NOT EXISTS `GH_FRB_RCLASS` (
  `GH_NO` varchar(6) NOT NULL,
  `FLOOR_CD` varchar(3) NOT NULL,
  `ROOM_CD` varchar(3) NOT NULL,
  `ROOM_NM` varchar(50) NOT NULL,
  `ROOM_TYPE` varchar(2) NOT NULL COMMENT 'FE(for female), MA(for male), MI(mixed or private)',
  `ROOM_ID` varchar(10) DEFAULT NULL COMMENT 'myallocator roomID',
  `DOUBLEBED` tinyint(1) DEFAULT '0' COMMENT 'myallocator 2층침대',
  `ENSUITE` tinyint(1) DEFAULT '0' COMMENT 'myallocator 화장실내부',
  `PRIVATEROOM` tinyint(1) DEFAULT '0' COMMENT 'myallocator 1인실',
  `MIN_STAY` int(11) DEFAULT '1' COMMENT 'myallocator 투숙최소일자',
  `MAX_STAY` int(11) DEFAULT '365' COMMENT 'myallocator 투숙최대일자',
  `START_DATE` varchar(8) DEFAULT NULL,
  `END_DATE` varchar(8) DEFAULT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `GH_NO_FLOOR_CD_ROOM_CD` (`GH_NO`,`FLOOR_CD`,`ROOM_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_FRB_RCLASS: ~17 rows (대략적)
/*!40000 ALTER TABLE `GH_FRB_RCLASS` DISABLE KEYS */;
INSERT IGNORE INTO `GH_FRB_RCLASS` (`GH_NO`, `FLOOR_CD`, `ROOM_CD`, `ROOM_NM`, `ROOM_TYPE`, `ROOM_ID`, `DOUBLEBED`, `ENSUITE`, `PRIVATEROOM`, `MIN_STAY`, `MAX_STAY`, `START_DATE`, `END_DATE`, `CREATE_DTIME`, `CREATE_ID`, `LAST_DTIME`, `LAST_ID`) VALUES
	('GH0001', '001', '001', '공기가 살아 숨쉬는 방', 'FE', NULL, 0, 0, 0, 1, 365, NULL, NULL, '20140314131913', 'admin', '20140314131913', 'admin'),
	('GH0001', '001', '002', '먼지가 살아 숨쉬는 방', 'MA', NULL, 0, 0, 0, 1, 365, NULL, NULL, '20140314132032', 'admin', '20140314132032', 'admin'),
	('GH0001', '001', '003', '냄새가 살아 숨쉬는 방', 'MI', NULL, 0, 0, 0, 1, 365, NULL, NULL, '20140314132046', 'admin', '20140314132046', 'admin'),
	('GH0001', '001', '004', '벌레가 살아 숨쉬는 방', 'MA', NULL, 0, 0, 0, 1, 365, NULL, NULL, '20140314132102', 'admin', '20140314132102', 'admin'),
	('GH0001', '002', '001', '초코처럼 달달한 방', 'FE', NULL, 0, 0, 0, 1, 365, NULL, NULL, '20140314132138', 'admin', '20140314132138', 'admin'),
	('GH0001', '002', '002', '벽돌처럼 딱딱한 방', 'MI', NULL, 0, 0, 0, 1, 365, NULL, NULL, '20140314132157', 'admin', '20140314132157', 'admin'),
	('GH0001', '002', '003', '이끼처럼 눅눅한 방', 'MA', NULL, 0, 0, 0, 1, 365, NULL, NULL, '20140314132238', 'admin', '20140314132238', 'admin'),
	('GH0001', '002', '004', '너네집처럼 깨끗한 방', 'FE', NULL, 0, 0, 0, 1, 365, NULL, NULL, '20140314132302', 'admin', '20140314132302', 'admin'),
	('GH0001', '003', '001', '옥탑방', 'MI', NULL, 0, 0, 0, 1, 365, NULL, NULL, '20140314132331', 'admin', '20140314132331', 'admin'),
	('GH0002', '001', '001', 'female 8dorm', 'FE', NULL, 0, 0, 0, 1, 365, NULL, NULL, '20140314140706', 'admin', '20140314140706', 'admin'),
	('GH0002', '001', '002', 'female twin', 'TW', NULL, 0, 0, 0, 1, 365, NULL, NULL, '20140314140706', 'admin', '20140314140706', 'admin'),
	('GH0002', '001', '003', 'mixed 8dorm', 'MI', NULL, 0, 0, 0, 1, 365, NULL, NULL, '20140314140706', 'admin', '20140314140706', 'admin'),
	('GH0002', '001', '004', 'twin(a double deck)', 'TW', NULL, 0, 0, 0, 1, 365, NULL, NULL, '20140314140706', 'admin', '20140314140706', 'admin'),
	('GH0002', '001', '005', 'single', 'SI', NULL, 0, 0, 0, 1, 365, NULL, NULL, '20140314140706', 'admin', '20140314140706', 'admin'),
	('GH0002', '002', '001', 'mixed 8dorm', 'MI', NULL, 0, 0, 0, 1, 365, NULL, NULL, '20140314140706', 'admin', '20140314140706', 'admin'),
	('GH0002', '002', '002', 'mixed 4 dorm', 'MI', NULL, 0, 0, 0, 1, 365, NULL, NULL, '20140314140706', 'admin', '20140314140706', 'admin'),
	('GH0002', '002', '003', 'female 4 dorm', 'FE', NULL, 0, 0, 0, 1, 365, NULL, NULL, '20140314140706', 'admin', '20140314140706', 'admin');
/*!40000 ALTER TABLE `GH_FRB_RCLASS` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_GUEST
CREATE TABLE IF NOT EXISTS `GH_GUEST` (
  `GUEST_NO` int(11) NOT NULL,
  `EMAIL_ID` varchar(50) NOT NULL,
  `FACEBOOK_CODE` varchar(256) DEFAULT NULL,
  `EMAIL_PWD` varchar(50) NOT NULL,
  `GUEST_FNM` varchar(10) NOT NULL,
  `GUEST_LNM` varchar(10) NOT NULL,
  `NATIONALITY` varchar(10) DEFAULT NULL,
  `CITY` varchar(10) DEFAULT NULL,
  `BIRTH_DAY` varchar(8) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL COMMENT '0:남, 1:여',
  `E_MAIL` varchar(50) DEFAULT NULL,
  `HP_NO` varchar(15) DEFAULT NULL,
  `DEVICE_TYPE` varchar(1) DEFAULT NULL,
  `REG_ID` varchar(256) DEFAULT NULL,
  `EMAIL_FG` varchar(1) DEFAULT '0',
  `SMS_FG` varchar(1) DEFAULT '0',
  `RECEIPT_FG` varchar(1) DEFAULT '0',
  `TEL_NO` varchar(15) DEFAULT NULL,
  `ZIP_NO` varchar(6) DEFAULT NULL,
  `ADDRESS` varchar(60) DEFAULT NULL,
  `ADDRESS_BUNJI` varchar(50) DEFAULT NULL,
  `PRIVACY_POLICY` varchar(1) DEFAULT NULL,
  `VISIT_FG1` varchar(2) DEFAULT NULL,
  `VISIT_FG2` varchar(2) DEFAULT NULL,
  `VISIT_FG3` varchar(2) DEFAULT NULL,
  `VISIT_FG4` varchar(2) DEFAULT NULL,
  `VISIT_FG5` varchar(2) DEFAULT NULL,
  `VISIT_FG6` varchar(2) DEFAULT NULL,
  `JOIN_DATE` varchar(14) DEFAULT NULL,
  `DROP_DATE` varchar(14) DEFAULT NULL,
  `INFO` varchar(2000) DEFAULT NULL,
  `PROFILE_IMG_PATH` varchar(100) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `CREATE_DTIME` varchar(14) DEFAULT NULL,
  `CREATE_ID` varchar(50) DEFAULT NULL,
  `LAST_DTIME` varchar(14) DEFAULT NULL,
  `LAST_ID` varchar(50) DEFAULT NULL,
  UNIQUE KEY `EMAIL_ID` (`EMAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_GUEST: ~11 rows (대략적)
/*!40000 ALTER TABLE `GH_GUEST` DISABLE KEYS */;
INSERT IGNORE INTO `GH_GUEST` (`GUEST_NO`, `EMAIL_ID`, `FACEBOOK_CODE`, `EMAIL_PWD`, `GUEST_FNM`, `GUEST_LNM`, `NATIONALITY`, `CITY`, `BIRTH_DAY`, `SEX`, `E_MAIL`, `HP_NO`, `DEVICE_TYPE`, `REG_ID`, `EMAIL_FG`, `SMS_FG`, `RECEIPT_FG`, `TEL_NO`, `ZIP_NO`, `ADDRESS`, `ADDRESS_BUNJI`, `PRIVACY_POLICY`, `VISIT_FG1`, `VISIT_FG2`, `VISIT_FG3`, `VISIT_FG4`, `VISIT_FG5`, `VISIT_FG6`, `JOIN_DATE`, `DROP_DATE`, `INFO`, `PROFILE_IMG_PATH`, `REMARK`, `CREATE_DTIME`, `CREATE_ID`, `LAST_DTIME`, `LAST_ID`) VALUES
	(3, 'aa', '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '자', '부', 'KR', '000001', '19700402', '1', 'aa', '01091445991', '1', 'APA91bGAI9aOI03yBtcdDf-jQ6ULTYw3W-l5ME3yuEBg1-iR6MwzIZdMYT1cgXiHotWRbAHNNN9UXi3RGQ_gBwLdaroLItr-pCVJyAuG2k78rt59myAe_JOw2WiUSVXIb2t0SwC9lDhThFKE_fmiB-8EHz2ZWPpomA', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20140318', NULL, NULL, 'http://14.49.43.118/allchange/uploads/user/aa/profile.png', NULL, '20140318081844', 'aa', '20140318081844', 'aa'),
	(10, 'bb', '', '*E72B08C841E005B05BD564FA1C18CAFFB9FEF5FC', '지훈', '정', 'KR', '000001', '20000402', '', 'bb', '01091445991', '1', 'APA91bGAI9aOI03yBtcdDf-jQ6ULTYw3W-l5ME3yuEBg1-iR6MwzIZdMYT1cgXiHotWRbAHNNN9UXi3RGQ_gBwLdaroLItr-pCVJyAuG2k78rt59myAe_JOw2WiUSVXIb2t0SwC9lDhThFKE_fmiB-8EHz2ZWPpomA', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20140327', NULL, NULL, 'http://14.49.43.118/allchange/uploads/user/bb/profile.png', NULL, '20140327104534', 'bb', '20140327104534', 'bb'),
	(11, 'cc', '', '*164E743F997F9503018E3E97727508D8B19569D4', '씨', '씨', 'KR', '000001', '20000402', '', 'cc', '01091445991', '1', 'APA91bGAI9aOI03yBtcdDf-jQ6ULTYw3W-l5ME3yuEBg1-iR6MwzIZdMYT1cgXiHotWRbAHNNN9UXi3RGQ_gBwLdaroLItr-pCVJyAuG2k78rt59myAe_JOw2WiUSVXIb2t0SwC9lDhThFKE_fmiB-8EHz2ZWPpomA', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20140327', NULL, NULL, 'http://14.49.43.118/allchange/uploads/user/cc/profile.png', NULL, '20140327110911', 'cc', '20140327110911', 'cc'),
	(12, 'dd', '', '*2F3B76898A59E6BB293D056656D934848B96A444', '이', '하', 'KR', '000001', '19770417', '0', 'dd@naver.com', '01091445991', '1', 'APA91bGAI9aOI03yBtcdDf-jQ6ULTYw3W-l5ME3yuEBg1-iR6MwzIZdMYT1cgXiHotWRbAHNNN9UXi3RGQ_gBwLdaroLItr-pCVJyAuG2k78rt59myAe_JOw2WiUSVXIb2t0SwC9lDhThFKE_fmiB-8EHz2ZWPpomA', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '02', NULL, NULL, '05', '06', '20140327', NULL, '안녕하세요 저는 디디 에여', 'http://14.49.43.118/allchange/uploads/user/dd/profile.png', NULL, '20140327112051', 'dd', '20140327112051', 'dd'),
	(15, 'jky0207@naver.com', '100000038951299', '*400C61D44D1E1B468C40AD593642DC60A8727020', '광윤', '정', 'KR', '000001', '19890207', '', 'jky0207@naver.com', '01091445991', '1', 'APA91bGAI9aOI03yBtcdDf-jQ6ULTYw3W-l5ME3yuEBg1-iR6MwzIZdMYT1cgXiHotWRbAHNNN9UXi3RGQ_gBwLdaroLItr-pCVJyAuG2k78rt59myAe_JOw2WiUSVXIb2t0SwC9lDhThFKE_fmiB-8EHz2ZWPpomA', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20140402', NULL, '안녕', 'http://14.49.43.118/allchange/uploads/user/jky0207@naver.com/profile.png', NULL, '20140402180525', 'jky0207@naver.com', '20140402180525', 'jky0207@naver.com'),
	(8, 'jqpark81@gmail.com', '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '진규', '박', 'KR', '000001', '19780924', '', 'jqpark81@gmail.com', '01071569211', '1', 'APA91bEbwbCr6SUZn35oxhI1Z_e026U27KS6C3vxbGsg9vYomPfbZlby3-lNjFxBTcNftcGsOC5-zOf2ntLbBd2knVhL4Tg7CfWKa3jNr7jqiGSr1IoVSAOvUkUhIaPSy3GDyFWC4rNpKAIHzeLvZ8MkXTcjI9vnVw', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, '01', NULL, '03', NULL, '05', NULL, '20140321', NULL, '안녕하세요', 'http://14.49.43.118/allchange/uploads/user/jqpark81@gmail.com/profile.png', NULL, '20140321073504', 'jqpark81@gmail.com', '20140321073504', 'jqpark81@gmail.com'),
	(9, 'kl4684@gmail.com', '', '*7F0C90A004C46C64A0EB9DDDCE5DE0DC437A635C', '혁', '이', 'KR', '000001', '19890402', '', 'kl4684@gmail.com', '01091445991', '1', 'APA91bGAI9aOI03yBtcdDf-jQ6ULTYw3W-l5ME3yuEBg1-iR6MwzIZdMYT1cgXiHotWRbAHNNN9UXi3RGQ_gBwLdaroLItr-pCVJyAuG2k78rt59myAe_JOw2WiUSVXIb2t0SwC9lDhThFKE_fmiB-8EHz2ZWPpomA', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20140327', NULL, '', 'http://14.49.43.118/allchange/uploads/user/kl4684@gmail.com/profile.png', NULL, '20140327104431', 'kl4684@gmail.com', '20140327104431', 'kl4684@gmail.com'),
	(1, 'lol@gmail.com', '', '*91D9861DFC07DD967611B8C96953474EF270AD5E', '정', '김', 'KR', '000001', '19400906', '0', 'lol@gmail.com', '01091445991', '1', 'APA91bGAI9aOI03yBtcdDf-jQ6ULTYw3W-l5ME3yuEBg1-iR6MwzIZdMYT1cgXiHotWRbAHNNN9UXi3RGQ_gBwLdaroLItr-pCVJyAuG2k78rt59myAe_JOw2WiUSVXIb2t0SwC9lDhThFKE_fmiB-8EHz2ZWPpomA', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, '01', '02', NULL, NULL, NULL, '06', '20140318', NULL, '안녕하세요 저는 아이유데쓰네 방가방가', 'http://14.49.43.118/allchange/uploads/user/lol@gmail.com/profile.png', NULL, '20140318063403', 'lol@gmail.com', '20140318063403', 'lol@gmail.com'),
	(13, 'ndlee81@gmail.com', '', '*864038DD36930F047C2CA3CE1C5F1D2DBA6D6D82', '승현', '이', 'KR', '000001', '20000402', '', 'ndlee81@gmail.com', '01096902358', '1', 'APA91bFjlITg6_D6Wa1voi90_r1XqPoynErDZVDZqcZ1WHQTh3QjULxMQJ0k0Nvsw0rYgGcH1l1C_LdH-v1P28wwK6k93s3iAhmX0gG-9dT32wjUXmAyb0ibuoKqj7XeApe_zypSqytw', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20140328', NULL, NULL, 'http://14.49.43.118/allchange/uploads/user/ndlee81@gmail.com/profile.png', NULL, '20140328195343', 'ndlee81@gmail.com', '20140328195343', 'ndlee81@gmail.com'),
	(16, 'ridurbd', '', '*DEE59C300700AF9B586F9F2A702231C0AC373A13', '광윤', '정', 'KR', '000001', '20000402', '', 'ridurbd', '01091445991', '1', 'APA91bGAI9aOI03yBtcdDf-jQ6ULTYw3W-l5ME3yuEBg1-iR6MwzIZdMYT1cgXiHotWRbAHNNN9UXi3RGQ_gBwLdaroLItr-pCVJyAuG2k78rt59myAe_JOw2WiUSVXIb2t0SwC9lDhThFKE_fmiB-8EHz2ZWPpomA', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '02', '03', NULL, '05', NULL, '20140402', NULL, '안녕', 'http://14.49.43.118/allchange/uploads/user/ridurbd/profile.png', NULL, '20140402185408', 'ridurbd', '20140402185408', 'ridurbd'),
	(2, 'wleodud1512@naver.com', '100002501777715', '*A4B6157319038724E3560894F7F932C8886EBFCF', '대영', '지', 'KR', '000001', '19880202', '1', 'wleodud1512@naver.com', '+821071370068', '1', 'APA91bFFGbNKv2swQUyT-utm9HZDYKJrBgRT--xuKp0IGZcNtF53weBYVGelbO6g43dVUIXBwDtqg7iM1VixeK6oqo1Szzq7c3hacByc1YqFVymb7EupwaPiuEevyl-3PZY--pX7woHzpDzp-O2WhTfEB_N5IjJSXA', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, '01', '02', NULL, '04', '05', NULL, '20140318', NULL, '헬로~  헬로~', 'http://14.49.43.118/allchange/uploads/user/wleodud1512@naver.com/profile.png', NULL, '20140318072513', 'wleodud1512@naver.com', '20140318072513', 'wleodud1512@naver.com');
/*!40000 ALTER TABLE `GH_GUEST` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_HOUSE
CREATE TABLE IF NOT EXISTS `GH_HOUSE` (
  `GH_NO` varchar(6) NOT NULL,
  `GH_NM` varchar(20) NOT NULL,
  `CHAIN_NO` varchar(4) DEFAULT '0000' COMMENT '체인 본사코드',
  `CHAIN_HQ_YN` varchar(1) DEFAULT 'N' COMMENT '체인 본사여부',
  `BUSINESS_NO` varchar(10) DEFAULT NULL COMMENT '사업자 등록번호',
  `BS_KIND` varchar(60) DEFAULT NULL COMMENT '업종(사업자등록)',
  `GH_MASTER_ID` varchar(50) DEFAULT 'GH_NO' COMMENT 'myallocator masterID',
  `GH_MASTER_PWD` varchar(20) DEFAULT NULL COMMENT 'myallocator masterPWD',
  `GH_MASTER_FNM` varchar(20) NOT NULL,
  `GH_MASTER_LNM` varchar(20) NOT NULL,
  `TEL_NO` varchar(15) DEFAULT NULL,
  `HP_NO` varchar(15) DEFAULT NULL,
  `EMG_NO` varchar(15) DEFAULT NULL,
  `FAX_NO` varchar(15) DEFAULT NULL,
  `E_MAIL` varchar(30) DEFAULT NULL,
  `HOMEPAGE` varchar(50) DEFAULT NULL,
  `ZIP_NO` varchar(6) DEFAULT NULL,
  `ADDRESS` varchar(60) NOT NULL,
  `ADDRESS_BUNJI` varchar(100) DEFAULT NULL,
  `ADDRESS_STREET` varchar(100) DEFAULT NULL,
  `HOUSE_TYPE` varchar(2) DEFAULT NULL,
  `BANK_CD` varchar(3) NOT NULL,
  `ACCT_CD` varchar(20) NOT NULL,
  `ACCT_NM` varchar(20) NOT NULL,
  `OPEN_DATE` varchar(8) NOT NULL,
  `EXPIRY_DATE` varchar(8) DEFAULT NULL COMMENT 'myallocator 만기날짜',
  `CONTRACT_CD` varchar(2) DEFAULT NULL COMMENT '계약 TYPE (월별, 년별, A TYPE, B TYPE, ...)',
  `CURRENCY_CD` varchar(3) NOT NULL COMMENT 'myallocator 통화',
  `NATION_CD` varchar(2) NOT NULL,
  `AREA_CD` varchar(6) NOT NULL,
  `BREAKFAST` varchar(2) DEFAULT 'EX' COMMENT 'myallocator IN(included) or EX(excluded)',
  `LATITUDE` varchar(20) DEFAULT NULL,
  `LONGITUDE` varchar(20) DEFAULT NULL,
  `MAIN_IMG_PATH` varchar(100) NOT NULL COMMENT '720 x 400',
  `DETAIL_IMG_PATH1` varchar(100) NOT NULL COMMENT '360 x 240',
  `DETAIL_IMG_PATH2` varchar(100) NOT NULL,
  `DETAIL_IMG_PATH3` varchar(100) NOT NULL,
  `DETAIL_IMG_PATH4` varchar(100) DEFAULT NULL,
  `DETAIL_IMG_PATH5` varchar(100) DEFAULT NULL,
  `DETAIL_IMG_PATH6` varchar(100) DEFAULT NULL,
  `DETAIL_IMG_PATH7` varchar(100) DEFAULT NULL,
  `DETAIL_IMG_PATH8` varchar(100) DEFAULT NULL,
  `DETAIL_IMG_PATH9` varchar(100) DEFAULT NULL,
  `DETAIL_IMG_PATH10` varchar(100) DEFAULT NULL,
  `COMMUNITYSPACE` int(2) DEFAULT '0',
  `RESTROOM_CNT` int(2) NOT NULL,
  `INTRODUCE` varchar(4000) DEFAULT '소개글없음',
  `RULE` varchar(4000) DEFAULT '규정없음',
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `GH_NO` (`GH_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_HOUSE: ~2 rows (대략적)
/*!40000 ALTER TABLE `GH_HOUSE` DISABLE KEYS */;
INSERT IGNORE INTO `GH_HOUSE` (`GH_NO`, `GH_NM`, `CHAIN_NO`, `CHAIN_HQ_YN`, `BUSINESS_NO`, `BS_KIND`, `GH_MASTER_ID`, `GH_MASTER_PWD`, `GH_MASTER_FNM`, `GH_MASTER_LNM`, `TEL_NO`, `HP_NO`, `EMG_NO`, `FAX_NO`, `E_MAIL`, `HOMEPAGE`, `ZIP_NO`, `ADDRESS`, `ADDRESS_BUNJI`, `ADDRESS_STREET`, `HOUSE_TYPE`, `BANK_CD`, `ACCT_CD`, `ACCT_NM`, `OPEN_DATE`, `EXPIRY_DATE`, `CONTRACT_CD`, `CURRENCY_CD`, `NATION_CD`, `AREA_CD`, `BREAKFAST`, `LATITUDE`, `LONGITUDE`, `MAIN_IMG_PATH`, `DETAIL_IMG_PATH1`, `DETAIL_IMG_PATH2`, `DETAIL_IMG_PATH3`, `DETAIL_IMG_PATH4`, `DETAIL_IMG_PATH5`, `DETAIL_IMG_PATH6`, `DETAIL_IMG_PATH7`, `DETAIL_IMG_PATH8`, `DETAIL_IMG_PATH9`, `DETAIL_IMG_PATH10`, `COMMUNITYSPACE`, `RESTROOM_CNT`, `INTRODUCE`, `RULE`, `CREATE_DTIME`, `CREATE_ID`, `LAST_DTIME`, `LAST_ID`) VALUES
	('GH0001', '강릉게스트하우스', '0000', 'N', NULL, NULL, 'admin', 'admin', '사장', '강', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '강릉, 강원도', NULL, NULL, '02', '002', '170417-56-081118', '강사장', '20140309', NULL, NULL, 'KRW', 'KR', '000004', 'EX', '37.751853', '128.876057', 'http://14.49.43.118/allchange/uploads/guesthouse/GH0001/main.png', 'http://14.49.43.118/allchange/uploads/guesthouse/GH0001/detail1.png', 'http://14.49.43.118/allchange/uploads/guesthouse/GH0001/detail2.png', 'http://14.49.43.118/allchange/uploads/guesthouse/GH0001/detail3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, '소개글없음', '규정없음', '20140309200123', 'admin', '20140309200123', 'admin'),
	('GH0002', '크로스로드 백팩커스', '0000', 'N', NULL, '게스트하우스\r\n', 'GH0002', 'GH0002', '승국', '최', '07075321994', '01087500486', NULL, NULL, 'reservation.backpackers@gmail.', 'www.crossroadkorea.com', NULL, '마포, 서울\r\n', '서교동 마포구 서울시 335-32', '와우산로29다길11-1\r\n', '02', '', '', '', '20140317', '99999999', NULL, 'KRW', 'KR', '000001', 'IN', '37.556299', '126.922086', 'http://14.49.43.118/allchange/uploads/guesthouse/GH0002/main.png', 'http://14.49.43.118/allchange/uploads/guesthouse/GH0002/detail1.png', 'http://14.49.43.118/allchange/uploads/guesthouse/GH0002/detail2.png', 'http://14.49.43.118/allchange/uploads/guesthouse/GH0002/detail3.png', 'http://14.49.43.118/allchange/uploads/guesthouse/GH0002/detail4.png', NULL, NULL, NULL, NULL, NULL, NULL, 8, 4, '"크로스로드 백팩커스는 여행자들이 서로 소통하고 즐기며 여행을 더욱 다양하고 활기차게 만드는 공간입니다.\n홍익대학교 인근의 최적의 장소에 위치한 저희는 지하철, 공항철도, 버스 정류장에서 도보 3분거리 입니다.\n\n1. 청결을 위하여 게스트 체크인 시 세탁된 침구류 커버를 제공합니다.\n2. 편안한 잠자리를 위하여 모든 침대는 라텍스 메트리스/베개로 구성하여 편안함 잠자리를 제공합니다.\n3. 여성 전용 객실을 위한 시설 - 디지털 카드키와 메이크업 룸을 이용해 보세요.\n4. 다양한 사람들과 즐기는 이벤트와 파티.\n5. 다른 게스트들과 어울릴 수 있는 공간(거실과 옥상정원)\n6. 관광에 전문화된 직원.(대형 여행사H사,R사 근무 경력 및 관광 전공) "', '*Check- in은 오후 3시부터 오후 11시까지입니다. \r\n자정이후 Check-in은 다른 여행객들의 휴식을 방해할 수 있습니다. \r\n만약 부득이하게 자정이후 Check-in이 필요할경우 별도 문의 부탁드립니다. \r\n일찍 도착하시는 경우 짐 보관 서비스를 통하여 가볍게 여행하세요. \r\n\r\n* Check-out은 오전 11시 입니다. \r\n\r\n*Check-in 이후 별도의 통금시간은 없으나 다른 여행객들의 휴식을 고려해 주시기 바랍니다.\r\n', '20140317075142', 'admin', '20140317075142', 'admin');
/*!40000 ALTER TABLE `GH_HOUSE` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_HOUSE_TYPE
CREATE TABLE IF NOT EXISTS `GH_HOUSE_TYPE` (
  `HOUSE_TYPE` varchar(2) NOT NULL,
  `HOUSE_TYPE_NM` varchar(30) NOT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `HOUSE_TYPE` (`HOUSE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_HOUSE_TYPE: ~3 rows (대략적)
/*!40000 ALTER TABLE `GH_HOUSE_TYPE` DISABLE KEYS */;
INSERT IGNORE INTO `GH_HOUSE_TYPE` (`HOUSE_TYPE`, `HOUSE_TYPE_NM`, `CREATE_DTIME`, `CREATE_ID`, `LAST_DTIME`, `LAST_ID`) VALUES
	('01', '한옥', '20140309190657', 'admin', '20140309190657', 'admin'),
	('02', '주택', '20140309190916', 'admin', '20140309190916', 'admin'),
	('03', '빌딩', '20140309190924', 'admin', '20140309190924', 'admin');
/*!40000 ALTER TABLE `GH_HOUSE_TYPE` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_MASTER
CREATE TABLE IF NOT EXISTS `GH_MASTER` (
  `GH_NO` varchar(6) NOT NULL,
  `MASTER_ID` varchar(50) NOT NULL,
  `MASTER_PWD` varchar(50) NOT NULL,
  `REG_ID` varchar(512) NOT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `MASTER_ID` (`MASTER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_MASTER: ~2 rows (대략적)
/*!40000 ALTER TABLE `GH_MASTER` DISABLE KEYS */;
INSERT IGNORE INTO `GH_MASTER` (`GH_NO`, `MASTER_ID`, `MASTER_PWD`, `REG_ID`, `CREATE_DTIME`, `CREATE_ID`, `LAST_DTIME`, `LAST_ID`) VALUES
	('GH0001', 'admin', '*4ACFE3202A5FF5CF467898FC58AAB1D615029441', 'APA91bG2jv9OSKJjfhDWUizeTXpSHcRtgUpSzJHDF_HtWdvGoGfda0Xnt7Yp7gGzkasU9b15Ev4tiKNGNyb8fzMhs-ZddAJMRVO0cmvn_nmP2yOXsF-j27aUlbEObLcIMKC4yRztLaKQ2NsWe3Ez6iyzc5VdyJGPXFc6TnKUO7vrlX3kW4vM6eg', '20140312170126', 'admin', '20140312170126', 'admin'),
	('GH0002', 'GH0002', '*4897FA4DFE046F0D6DF1DC6DA5C4C0008E39DA68', 'APA91bFRcGZRgsPwmz4m8vp_WitCjwwpdj7-fKS1CyXjBfX2BwLJezKTtrDNJA9YOysVaNwDQiZ9kUfi-NPPVqeDgFUFmrFuge20uC42aKBZx5SztoIHR9JxJVb2KGLcU3MRv7Ax8JNZ2QJi4RdYsxOuPrw5YRfygCMHtA5Ua4c2GwT8DYTrEGk', '20140312170126', 'admin', '20140312170126', 'admin');
/*!40000 ALTER TABLE `GH_MASTER` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_NATION
CREATE TABLE IF NOT EXISTS `GH_NATION` (
  `NATION_CD` varchar(2) NOT NULL,
  `NATION_NM` varchar(50) NOT NULL,
  `NATION_ENG_NM` varchar(50) DEFAULT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `NATION_CD` (`NATION_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_NATION: ~1 rows (대략적)
/*!40000 ALTER TABLE `GH_NATION` DISABLE KEYS */;
INSERT IGNORE INTO `GH_NATION` (`NATION_CD`, `NATION_NM`, `NATION_ENG_NM`, `CREATE_DTIME`, `CREATE_ID`, `LAST_DTIME`, `LAST_ID`) VALUES
	('KR', '한국', 'Korea', '20140308161107', 'admin', '20140308161107', 'admin');
/*!40000 ALTER TABLE `GH_NATION` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_NOTICE
CREATE TABLE IF NOT EXISTS `GH_NOTICE` (
  `GH_NO` varchar(6) NOT NULL,
  `NOTICE` varchar(2000) NOT NULL,
  `NOTICE_DHOUR` varchar(10) NOT NULL,
  `NOTICE_DATE` varchar(8) NOT NULL,
  `CREATE_DTIME` varchar(14) DEFAULT NULL,
  `CREATE_ID` varchar(50) DEFAULT NULL,
  `LAST_DTIME` varchar(14) DEFAULT NULL,
  `LAST_ID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_NOTICE: ~97 rows (대략적)
/*!40000 ALTER TABLE `GH_NOTICE` DISABLE KEYS */;
INSERT IGNORE INTO `GH_NOTICE` (`GH_NO`, `NOTICE`, `NOTICE_DHOUR`, `NOTICE_DATE`, `CREATE_DTIME`, `CREATE_ID`, `LAST_DTIME`, `LAST_ID`) VALUES
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014032720', '20140327', '20140327203557', 'GH0002', '20140327203557', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014032720', '20140327', '20140327203815', 'GH0002', '20140327203815', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014032720', '20140327', '20140327203833', 'GH0002', '20140327203833', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014032720', '20140327', '20140327204032', 'GH0002', '20140327204032', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014033111', '20140331', '20140331110713', 'GH0002', '20140331110713', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014033111', '20140331', '20140331113027', 'GH0002', '20140331113027', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014033111', '20140331', '20140331113444', 'GH0002', '20140331113444', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014033111', '20140331', '20140331113524', 'GH0002', '20140331113524', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014033111', '20140331', '20140331113540', 'GH0002', '20140331113540', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014033111', '20140331', '20140331113627', 'GH0002', '20140331113627', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014033111', '20140331', '20140331113726', 'GH0002', '20140331113726', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014033111', '20140331', '20140331114115', 'GH0002', '20140331114115', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/10000/&&/BBQ/&&/Party/&&/뒷뜰/&&/', '2014년 04월 ', '20140331', '20140331140020', 'GH0002', '20140331140020', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '20220915PM', '20140331', '20140331140900', 'GH0002', '20140331140900', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '20140420PM', '20140331', '20140331141153', 'GH0002', '20140331141153', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2015020727', '20140331', '20140331142828', 'GH0002', '20140331142828', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/ᆞㅅㄴㅇㄴㅇㄴㅇㄷ/&&/', '2014040436', '20140331', '20140331143624', 'GH0002', '20140331143624', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014042555', '20140331', '20140331144233', 'GH0002', '20140331144233', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/whereㄹᆞ/&&/', '2014033124', '20140331', '20140331144344', 'GH0002', '20140331144344', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/whereㅅㄴㄷㄴᆞ/&&/', '2014041024', '20140331', '20140331144444', 'GH0002', '20140331144444', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/whereㅅㄴㄷㄴᆞ/&&/', '2014041024', '20140331', '20140331144851', 'GH0002', '20140331144851', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/whereㅅㄴㄷㄴᆞ/&&/', '2014041024', '20140331', '20140331144901', 'GH0002', '20140331144901', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/whereㅅㄴㄷㄴᆞ/&&/', '2014041024', '20140331', '20140331144930', 'GH0002', '20140331144930', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014033124', '20140331', '20140331144953', 'GH0002', '20140331144953', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014033125', '20140331', '20140331145047', 'GH0002', '20140331145047', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040435', '20140331', '20140331145310', 'GH0002', '20140331145310', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040435', '20140331', '20140331145320', 'GH0002', '20140331145320', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040435', '20140331', '20140331145321', 'GH0002', '20140331145321', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014033125', '20140331', '20140331145357', 'GH0002', '20140331145357', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014033125', '20140331', '20140331145451', 'GH0002', '20140331145451', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014033125', '20140331', '20140331145633', 'GH0002', '20140331145633', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014033109', '20140331', '20140331150003', 'GH0002', '20140331150003', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014033113', '20140331', '20140331150016', 'GH0002', '20140331150016', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331182208', 'GH0002', '20140331182208', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331183146', 'GH0002', '20140331183146', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331183346', 'GH0002', '20140331183346', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331183431', 'GH0002', '20140331183431', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331183904', 'GH0002', '20140331183904', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331184009', 'GH0002', '20140331184009', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331184150', 'GH0002', '20140331184150', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331184408', 'GH0002', '20140331184408', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331184520', 'GH0002', '20140331184520', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331184609', 'GH0002', '20140331184609', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331184857', 'GH0002', '20140331184857', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331184955', 'GH0002', '20140331184955', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331185102', 'GH0002', '20140331185102', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331185133', 'GH0002', '20140331185133', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331185546', 'GH0002', '20140331185546', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331185744', 'GH0002', '20140331185744', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331185843', 'GH0002', '20140331185843', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331191042', 'GH0002', '20140331191042', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331191239', 'GH0002', '20140331191239', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331191257', 'GH0002', '20140331191257', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331191447', 'GH0002', '20140331191447', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331191717', 'GH0002', '20140331191717', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331192049', 'GH0002', '20140331192049', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/우리집/&&/', '2014040421', '20140331', '20140331192108', 'GH0002', '20140331192108', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/뒷뜰/&&/', '2014033107', '20140331', '20140331193420', 'GH0002', '20140331193420', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/뒷뜰/&&/', '2014033107', '20140331', '20140331193718', 'GH0002', '20140331193718', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/뒷뜰/&&/', '2014033107', '20140331', '20140331193819', 'GH0002', '20140331193819', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/뒷뜰/&&/', '2014033107', '20140331', '20140331194148', 'GH0002', '20140331194148', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/뒷뜰/&&/', '2014033107', '20140331', '20140331194235', 'GH0002', '20140331194235', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/뒷뜰/&&/', '2014033107', '20140331', '20140331194242', 'GH0002', '20140331194242', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/뒷뜰/&&/', '2014033107', '20140331', '20140331194255', 'GH0002', '20140331194255', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/뒷뜰/&&/', '2014033107', '20140331', '20140331194305', 'GH0002', '20140331194305', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/뒷뜰/&&/', '2014033107', '20140331', '20140331194430', 'GH0002', '20140331194430', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/뒷뜰/&&/', '2014033107', '20140331', '20140331194503', 'GH0002', '20140331194503', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/뒷뜰/&&/', '2014033107', '20140331', '20140331195515', 'GH0002', '20140331195515', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040100', '20140401', '20140401124410', 'GH0002', '20140401124410', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040100', '20140401', '20140401124424', 'GH0002', '20140401124424', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040100', '20140401', '20140401124432', 'GH0002', '20140401124432', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040100', '20140401', '20140401124645', 'GH0002', '20140401124645', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014041202', '20140401', '20140401144556', 'GH0002', '20140401144556', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040102', '20140401', '20140401144633', 'GH0002', '20140401144633', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040102', '20140401', '20140401145027', 'GH0002', '20140401145027', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040102', '20140401', '20140401145041', 'GH0002', '20140401145041', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040102', '20140401', '20140401145042', 'GH0002', '20140401145042', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040102', '20140401', '20140401145043', 'GH0002', '20140401145043', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040102', '20140401', '20140401145045', 'GH0002', '20140401145045', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040102', '20140401', '20140401145046', 'GH0002', '20140401145046', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040103', '20140401', '20140401150050', 'GH0002', '20140401150050', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040915', '20140401', '20140401150059', 'GH0002', '20140401150059', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040915', '20140401', '20140401150106', 'GH0002', '20140401150106', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040915', '20140401', '20140401150108', 'GH0002', '20140401150108', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040915', '20140401', '20140401150108', 'GH0002', '20140401150108', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040915', '20140401', '20140401150108', 'GH0002', '20140401150108', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040915', '20140401', '20140401150109', 'GH0002', '20140401150109', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040915', '20140401', '20140401150109', 'GH0002', '20140401150109', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040915', '20140401', '20140401150109', 'GH0002', '20140401150109', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040915', '20140401', '20140401150109', 'GH0002', '20140401150109', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040915', '20140401', '20140401150109', 'GH0002', '20140401150109', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040915', '20140401', '20140401150110', 'GH0002', '20140401150110', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040915', '20140401', '20140401150110', 'GH0002', '20140401150110', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040915', '20140401', '20140401150110', 'GH0002', '20140401150110', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040915', '20140401', '20140401150111', 'GH0002', '20140401150111', 'GH0002'),
	('GH0002', 'Don\'t miss it!/&&/Free/&&/BBQ/&&/Party/&&/where/&&/', '2014040103', '20140401', '20140401150129', 'GH0002', '20140401150129', 'GH0002'),
	('GH0002', '뭐해/&&/999999999/&&/집에/&&/가고싶다/&&/고투홈 홈 홈/&&/', '2014040106', '20140401', '20140401174916', 'GH0002', '20140401174916', 'GH0002');
/*!40000 ALTER TABLE `GH_NOTICE` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_PAYMENT
CREATE TABLE IF NOT EXISTS `GH_PAYMENT` (
  `PAY_CD` varchar(2) NOT NULL,
  `PAY_NM` varchar(20) NOT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `PAY_CD` (`PAY_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_PAYMENT: ~0 rows (대략적)
/*!40000 ALTER TABLE `GH_PAYMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `GH_PAYMENT` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_PAYMENT_DETAIL
CREATE TABLE IF NOT EXISTS `GH_PAYMENT_DETAIL` (
  `PAY_CD` varchar(2) NOT NULL,
  `PAY_DT_CD` varchar(2) NOT NULL,
  `PAY_DT_NM` varchar(20) NOT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `PAY_CD_PAY_DT_CD` (`PAY_CD`,`PAY_DT_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_PAYMENT_DETAIL: ~0 rows (대략적)
/*!40000 ALTER TABLE `GH_PAYMENT_DETAIL` DISABLE KEYS */;
/*!40000 ALTER TABLE `GH_PAYMENT_DETAIL` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_REFUND
CREATE TABLE IF NOT EXISTS `GH_REFUND` (
  `GH_NO` varchar(6) NOT NULL,
  `REFUND_CD` varchar(2) NOT NULL,
  `REFUND_NM` varchar(20) NOT NULL,
  `REFUND_RATE` int(3) NOT NULL,
  `REFUND_DAY` int(2) NOT NULL,
  `ROUND_FG` varchar(1) NOT NULL,
  `REFUND_FG` varchar(1) DEFAULT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `GH_NO_REFUND_CD` (`GH_NO`,`REFUND_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_REFUND: ~0 rows (대략적)
/*!40000 ALTER TABLE `GH_REFUND` DISABLE KEYS */;
/*!40000 ALTER TABLE `GH_REFUND` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_RENT_PRICE
CREATE TABLE IF NOT EXISTS `GH_RENT_PRICE` (
  `GH_NO` varchar(6) NOT NULL,
  `FLOOR_CD` varchar(3) NOT NULL,
  `ROOM_CD` varchar(3) NOT NULL,
  `RENT_PRICE_OFF_WEEKDAY` int(11) NOT NULL,
  `RENT_PRICE_OFF_WEEKEND` int(11) NOT NULL,
  `RENT_PRICE_LOW_WEEKDAY` int(11) NOT NULL,
  `RENT_PRICE_LOW_WEEKEND` int(11) NOT NULL,
  `RENT_PRICE_AVG_WEEKDAY` int(11) NOT NULL,
  `RENT_PRICE_AVG_WEEKEND` int(11) NOT NULL,
  `RENT_PRICE_PEEK_WEEKDAY` int(11) NOT NULL,
  `RENT_PRICE_PEEK_WEEKEND` int(11) NOT NULL,
  `RENT_PRICE_BUSY_WEEKDAY` int(11) NOT NULL,
  `RENT_PRICE_BUSY_WEEKEND` int(11) NOT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `GH_NO_FLOOR_CD_ROOM_CD` (`GH_NO`,`FLOOR_CD`,`ROOM_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_RENT_PRICE: ~17 rows (대략적)
/*!40000 ALTER TABLE `GH_RENT_PRICE` DISABLE KEYS */;
INSERT IGNORE INTO `GH_RENT_PRICE` (`GH_NO`, `FLOOR_CD`, `ROOM_CD`, `RENT_PRICE_OFF_WEEKDAY`, `RENT_PRICE_OFF_WEEKEND`, `RENT_PRICE_LOW_WEEKDAY`, `RENT_PRICE_LOW_WEEKEND`, `RENT_PRICE_AVG_WEEKDAY`, `RENT_PRICE_AVG_WEEKEND`, `RENT_PRICE_PEEK_WEEKDAY`, `RENT_PRICE_PEEK_WEEKEND`, `RENT_PRICE_BUSY_WEEKDAY`, `RENT_PRICE_BUSY_WEEKEND`, `CREATE_DTIME`, `CREATE_ID`, `LAST_DTIME`, `LAST_ID`) VALUES
	('GH0001', '001', '001', 10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, 50000, 55000, '20140314050101', 'admin', '20140314050101', 'admin'),
	('GH0001', '001', '002', 5000, 5500, 10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, '20140314050101', 'admin', '20140314050101', 'admin'),
	('GH0001', '001', '003', 5000, 5500, 10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, '20140314050101', 'admin', '20140314050101', 'admin'),
	('GH0001', '001', '004', 5000, 5500, 10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, '20140314050101', 'admin', '20140314050101', 'admin'),
	('GH0001', '002', '001', 10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, 50000, 55000, '20140314050101', 'admin', '20140314050101', 'admin'),
	('GH0001', '002', '002', 5000, 5500, 10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, '20140314050101', 'admin', '20140314050101', 'admin'),
	('GH0001', '002', '003', 5000, 5500, 10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, '20140314050101', 'admin', '20140314050101', 'admin'),
	('GH0001', '002', '004', 5000, 5500, 10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, '20140314050101', 'admin', '20140314050101', 'admin'),
	('GH0001', '003', '001', 5000, 5500, 10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, '20140314050101', 'admin', '20140314050101', 'admin'),
	('GH0002', '001', '001', 10000, 15000, 20000, 25000, 18000, 22000, 40000, 45000, 50000, 55000, '20140314050101', 'admin', '20140314050101', 'admin'),
	('GH0002', '001', '002', 10000, 15000, 20000, 25000, 55000, 65000, 40000, 45000, 50000, 55000, '20140314050101', 'admin', '20140314050101', 'admin'),
	('GH0002', '001', '003', 10000, 15000, 20000, 25000, 15000, 20000, 40000, 45000, 50000, 55000, '20140314050101', 'admin', '20140314050101', 'admin'),
	('GH0002', '001', '004', 10000, 15000, 20000, 25000, 55000, 65000, 40000, 45000, 50000, 55000, '20140314050101', 'admin', '20140314050101', 'admin'),
	('GH0002', '001', '005', 10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, 50000, 55000, '20140314050101', 'admin', '20140314050101', 'admin'),
	('GH0002', '002', '001', 10000, 15000, 20000, 25000, 15000, 20000, 40000, 45000, 50000, 55000, '20140314050101', 'admin', '20140314050101', 'admin'),
	('GH0002', '002', '002', 10000, 15000, 20000, 25000, 18000, 25000, 40000, 45000, 50000, 55000, '20140314050101', 'admin', '20140314050101', 'admin'),
	('GH0002', '002', '003', 10000, 15000, 20000, 25000, 20000, 25000, 40000, 45000, 50000, 55000, '20140314050101', 'admin', '20140314050101', 'admin');
/*!40000 ALTER TABLE `GH_RENT_PRICE` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_RENT_SEASON
CREATE TABLE IF NOT EXISTS `GH_RENT_SEASON` (
  `GH_NO` varchar(6) NOT NULL,
  `SEASON_TYPE` varchar(10) NOT NULL,
  `START_DATE` varchar(4) NOT NULL,
  `END_DATE` varchar(4) NOT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_RENT_SEASON: ~0 rows (대략적)
/*!40000 ALTER TABLE `GH_RENT_SEASON` DISABLE KEYS */;
/*!40000 ALTER TABLE `GH_RENT_SEASON` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_REPLY
CREATE TABLE IF NOT EXISTS `GH_REPLY` (
  `TARGET_RES_SEQ` int(11) NOT NULL,
  `REPLY_RES_SEQ` int(11) NOT NULL,
  `REPLY_TEXT` varchar(200) NOT NULL,
  `REPLY_DTIME` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_REPLY: ~29 rows (대략적)
/*!40000 ALTER TABLE `GH_REPLY` DISABLE KEYS */;
INSERT IGNORE INTO `GH_REPLY` (`TARGET_RES_SEQ`, `REPLY_RES_SEQ`, `REPLY_TEXT`, `REPLY_DTIME`) VALUES
	(9, 1, '응', '20140325163810'),
	(2, 1, '응', '20140325163823'),
	(1, 1, '믕', '20140325163837'),
	(11, 1, '자기소개점요', '20140325163859'),
	(9, 1, '진규형 ㅎㅇ', '20140325164955'),
	(11, 1, '헐 머임', '20140325165023'),
	(11, 1, '3 안보 ', '20140325170104'),
	(9, 1, '3 진규박', '20140325170125'),
	(2, 1, '2대영지', '20140325170134'),
	(3, 26, '안녕', '20140330105821'),
	(29, 26, '지영아 안뇽', '20140401152328'),
	(29, 26, '지영지버섯', '20140401153208'),
	(26, 26, '나한테는 왜 아무도 댓글 안담요', '20140401153240'),
	(29, 26, '지영아 프로필좀 올려봐', '20140401153306'),
	(3, 28, 'ㅎㅇ', '20140401155010'),
	(3, 28, '4일난ㅅ 오시는데 그때 근처 식당에 파티가 있는데 같이 하시겠어요?', '20140401155113'),
	(3, 32, '으힛', '20140401172756'),
	(3, 32, '하하', '20140401172812'),
	(32, 32, '수딩젤', '20140401172820'),
	(32, 32, '방가', '20140401173109'),
	(34, 35, '잉', '20140402132049'),
	(29, 35, '아이유', '20140402132107'),
	(31, 31, '', '20140402135733'),
	(31, 31, '', '20140402141300'),
	(31, 31, '', '20140402172339'),
	(31, 31, '아니', '20140402172344'),
	(32, 33, '수딩젤?', '20140402181229'),
	(33, 33, '야', '20140402182908'),
	(32, 33, 'ㅎㅇ', '20140402192036');
/*!40000 ALTER TABLE `GH_REPLY` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_RESERVE
CREATE TABLE IF NOT EXISTS `GH_RESERVE` (
  `RES_SEQ` int(11) DEFAULT NULL,
  `GH_NO` varchar(6) DEFAULT NULL,
  `FLOOR_CD` varchar(3) DEFAULT NULL,
  `ROOM_CD` varchar(3) DEFAULT NULL,
  `BED_CD` varchar(3) DEFAULT NULL,
  `STATE_FG` varchar(1) DEFAULT NULL COMMENT '0:예약,1:입금,2:체크인,3:체크아웃',
  `RENT_PRICE` int(11) DEFAULT NULL,
  `RESERVE_DATE` varchar(8) DEFAULT NULL,
  `CHECK_OUTDATE` varchar(8) DEFAULT NULL,
  `RESERVE_NO` int(11) DEFAULT NULL,
  `RESERVE_DTIME` varchar(14) DEFAULT NULL,
  `CONFIRM_ID` varchar(50) DEFAULT NULL,
  `CONFIRM_DTIME` varchar(14) DEFAULT NULL,
  `RESERVE_CANCEL_ID` varchar(50) DEFAULT NULL,
  `CONFIRM_CANCEL_ID` varchar(50) DEFAULT NULL,
  `RESERVE_TYPE` varchar(1) DEFAULT NULL,
  `PAY_DT_CD` varchar(2) DEFAULT NULL,
  `CHECK_IN_NO` int(11) DEFAULT NULL,
  `CHECK_IN_DTIME` varchar(14) DEFAULT NULL,
  `CHECK_OUT_NO` int(11) DEFAULT NULL,
  `CHECK_OUT_DTIME` varchar(14) DEFAULT NULL,
  UNIQUE KEY `GH_NO_FLOOR_CD_ROOM_CD_BED_CD_RESERVE_DATE` (`GH_NO`,`FLOOR_CD`,`ROOM_CD`,`BED_CD`,`RESERVE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_RESERVE: ~25 rows (대략적)
/*!40000 ALTER TABLE `GH_RESERVE` DISABLE KEYS */;
INSERT IGNORE INTO `GH_RESERVE` (`RES_SEQ`, `GH_NO`, `FLOOR_CD`, `ROOM_CD`, `BED_CD`, `STATE_FG`, `RENT_PRICE`, `RESERVE_DATE`, `CHECK_OUTDATE`, `RESERVE_NO`, `RESERVE_DTIME`, `CONFIRM_ID`, `CONFIRM_DTIME`, `RESERVE_CANCEL_ID`, `CONFIRM_CANCEL_ID`, `RESERVE_TYPE`, `PAY_DT_CD`, `CHECK_IN_NO`, `CHECK_IN_DTIME`, `CHECK_OUT_NO`, `CHECK_OUT_DTIME`) VALUES
	(10, 'GH0002', '002', '002', NULL, '3', 18000, '20140325', '20140326', 8, '20140321074040', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 8, '20140326111840'),
	(13, 'GH0002', '002', '001', NULL, '3', 15000, '20140324', '20140327', 8, '20140321143816', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 8, '20140327111840'),
	(22, 'GH0002', '001', '001', '004', '3', 18000, '20140328', '20140331', 9, '20140327105209', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 9, '20140331114730'),
	(4, 'GH0002', '001', '001', '002', '2', 58000, '20130324', '20130330', 1, '20140318070436', NULL, NULL, NULL, NULL, '1', NULL, 1, '20140318071211', NULL, NULL),
	(18, 'GH0002', '001', '001', '007', '2', 58000, '20130328', '20130329', 1, '20140328130420', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL),
	(11, 'GH0002', '002', '001', NULL, '3', 55000, '20130324', '20130327', 8, '20140321143816', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 8, '20140327111840'),
	(8, 'GH0002', '002', '002', NULL, '3', 58000, '20130325', '20130326', 8, '20140321074040', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 8, '20140326111840'),
	(24, 'GH0002', '001', '001', '006', '2', 58000, '20130328', '20130331', 9, '20140327105209', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL),
	(23, 'GH0002', '001', '001', '006', '2', 38000, '20110328', '20110331', 9, '20140327105209', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL),
	(7, 'GH0002', '002', '002', NULL, '3', 38000, '20110325', '20110326', 8, '20140321074040', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 8, '20140326111840'),
	(16, 'GH0002', '001', '001', '007', '2', 38000, '20110328', '20110329', 1, '20140328130420', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL),
	(2, 'GH0002', '001', '001', '002', '2', 38000, '20110324', '20110330', 1, '20140318070436', NULL, NULL, NULL, NULL, '1', NULL, 1, '20140318071211', NULL, NULL),
	(21, 'GH0002', '001', '001', '006', '2', 138000, '20150328', '20150331', 9, '20140327105209', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL),
	(6, 'GH0002', '002', '002', NULL, '3', 138000, '20150325', '20150326', 8, '20140321074040', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 8, '20140326111840'),
	(14, 'GH0002', '002', '001', NULL, '3', 135000, '20150324', '20150327', 8, '20140321143816', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 8, '20140327111840'),
	(17, 'GH0002', '001', '001', '007', '2', 138000, '20150328', '20150329', 1, '20140328130420', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL),
	(1, 'GH0002', '001', '001', '002', '2', 138000, '20150324', '20150330', 1, '20140318070436', NULL, NULL, NULL, NULL, '1', NULL, 1, '20140318071211', NULL, NULL),
	(25, 'GH0002', '001', '001', '006', '2', 28000, '20190328', '20190331', 9, '20140327105209', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL),
	(9, 'GH0002', '002', '002', NULL, '3', 28000, '20190325', '20190326', 8, '20140321074040', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 8, '20140326111840'),
	(12, 'GH0002', '002', '001', NULL, '3', 25000, '20190324', '20190327', 8, '20140321143816', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 8, '20140327111840'),
	(20, 'GH0002', '001', '001', '007', '2', 28000, '20190328', '20190329', 1, '20140328130420', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL),
	(5, 'GH0002', '001', '001', '002', '2', 28000, '20190324', '20190330', 1, '20140318070436', NULL, NULL, NULL, NULL, '1', NULL, 1, '20140318071211', NULL, NULL),
	(29, 'GH0002', '001', '001', NULL, '3', 18000, '20140409', '20140418', 14, '20140401144420', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL),
	(32, 'GH0002', '001', '001', '006', '3', 18000, '20140402', '20140405', 2, '20140402175604', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL),
	(33, 'GH0002', '001', '001', '003', '3', 18000, '20140402', '20140411', 16, '20140402190433', NULL, NULL, NULL, NULL, '1', NULL, 16, '20140402192127', 16, '20140411113056');
/*!40000 ALTER TABLE `GH_RESERVE` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_RESERVE_CANCEL
CREATE TABLE IF NOT EXISTS `GH_RESERVE_CANCEL` (
  `RES_SEQ` int(11) NOT NULL,
  `GH_NO` varchar(6) NOT NULL,
  `FLOOR_CD` varchar(3) NOT NULL,
  `ROOM_CD` varchar(3) NOT NULL,
  `RESERVE_DATE` varchar(8) NOT NULL,
  `RESERVE_NO` int(10) NOT NULL,
  `RESERVE_DTIME` varchar(14) NOT NULL,
  `RESERVE_CANCEL_ID` varchar(50) NOT NULL,
  `RESERVE_CANCEL_DTIME` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_RESERVE_CANCEL: ~0 rows (대략적)
/*!40000 ALTER TABLE `GH_RESERVE_CANCEL` DISABLE KEYS */;
/*!40000 ALTER TABLE `GH_RESERVE_CANCEL` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_REVIEW
CREATE TABLE IF NOT EXISTS `GH_REVIEW` (
  `GH_NO` varchar(6) NOT NULL,
  `GUEST_NO` int(11) NOT NULL,
  `SCORE` int(1) DEFAULT NULL,
  `ADD_DATE` varchar(8) NOT NULL,
  `REVIEW` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_REVIEW: ~0 rows (대략적)
/*!40000 ALTER TABLE `GH_REVIEW` DISABLE KEYS */;
/*!40000 ALTER TABLE `GH_REVIEW` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_ROOM_TYPE
CREATE TABLE IF NOT EXISTS `GH_ROOM_TYPE` (
  `ROOM_TYPE` varchar(2) NOT NULL COMMENT 'FE(for female), MA(for male), MI(mixed or private)',
  `ROOM_TYPE_NM` varchar(30) NOT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `ROOM_TYPE` (`ROOM_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_ROOM_TYPE: ~5 rows (대략적)
/*!40000 ALTER TABLE `GH_ROOM_TYPE` DISABLE KEYS */;
INSERT IGNORE INTO `GH_ROOM_TYPE` (`ROOM_TYPE`, `ROOM_TYPE_NM`, `CREATE_DTIME`, `CREATE_ID`, `LAST_DTIME`, `LAST_ID`) VALUES
	('FE', 'for females', '20140310173339', 'admin', '20140310173339', 'admin'),
	('MA', 'for males', '20140310173310', 'admin', '20140310173310', 'admin'),
	('MI', 'mixed', '20140310173422', 'admin', '20140310173422', 'admin'),
	('SI', 'single', '20140310173422', 'admin', '20140310173422', 'admin'),
	('TW', 'twin', '20140310173422', 'admin', '20140310173422', 'admin');
/*!40000 ALTER TABLE `GH_ROOM_TYPE` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_SEARCH
CREATE TABLE IF NOT EXISTS `GH_SEARCH` (
  `GH_NO` int(11) NOT NULL,
  `GH_NM` varchar(256) NOT NULL,
  `GH_LATITUDE` varchar(128) NOT NULL,
  `GH_LONGITUDE` varchar(128) NOT NULL,
  `GH_OWNER_CD` varchar(128) NOT NULL,
  `GH_ROOM_CD` varchar(128) NOT NULL,
  `GH_CHANNEL` varchar(64) NOT NULL,
  UNIQUE KEY `GH_NO` (`GH_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_SEARCH: ~0 rows (대략적)
/*!40000 ALTER TABLE `GH_SEARCH` DISABLE KEYS */;
/*!40000 ALTER TABLE `GH_SEARCH` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_SMS_SAVE
CREATE TABLE IF NOT EXISTS `GH_SMS_SAVE` (
  `SMS_SEQ` int(11) NOT NULL,
  `GH_NO` varchar(6) NOT NULL,
  `TITLE` varchar(30) NOT NULL,
  `CONTENT` varchar(100) NOT NULL,
  `SAVE_FG` varchar(1) NOT NULL,
  `INPUT_FG` varchar(10) NOT NULL,
  `ENDDATE` varchar(14) DEFAULT NULL,
  `CNT` int(4) NOT NULL,
  `CONTENT_BYTE` varchar(2) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_SMS_SAVE: ~0 rows (대략적)
/*!40000 ALTER TABLE `GH_SMS_SAVE` DISABLE KEYS */;
/*!40000 ALTER TABLE `GH_SMS_SAVE` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_STAFF
CREATE TABLE IF NOT EXISTS `GH_STAFF` (
  `GH_NO` varchar(6) NOT NULL,
  `STAFF_ID` varchar(50) NOT NULL,
  `STAFF_PW` varchar(30) NOT NULL,
  `STAFF_NM` varchar(20) NOT NULL,
  `STAFF_FG` varchar(1) NOT NULL,
  `GRADE_FG` varchar(1) NOT NULL,
  `RESI_NO` varchar(13) DEFAULT NULL,
  `E_MAIL` varchar(50) DEFAULT NULL,
  `HP_NO` varchar(15) DEFAULT NULL,
  `TEL_NO` varchar(15) DEFAULT NULL,
  `ZIP_NO` varchar(6) DEFAULT NULL,
  `ADDRESS` varchar(60) DEFAULT NULL,
  `ADDRESS_BUNJI` varchar(50) DEFAULT NULL,
  `START_TIME` varchar(4) DEFAULT NULL,
  `LEAVE_TIME` varchar(4) DEFAULT NULL,
  `STATE_FG` varchar(1) NOT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `GH_NO_STAFF_ID` (`GH_NO`,`STAFF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_STAFF: ~0 rows (대략적)
/*!40000 ALTER TABLE `GH_STAFF` DISABLE KEYS */;
/*!40000 ALTER TABLE `GH_STAFF` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_SUPPORT
CREATE TABLE IF NOT EXISTS `GH_SUPPORT` (
  `GH_NO` varchar(6) NOT NULL,
  `SUPPORT_CD` varchar(2) NOT NULL,
  `SUPPORT_NM` varchar(50) NOT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `GH_NO_SUPPORT_CD` (`GH_NO`,`SUPPORT_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_SUPPORT: ~5 rows (대략적)
/*!40000 ALTER TABLE `GH_SUPPORT` DISABLE KEYS */;
INSERT IGNORE INTO `GH_SUPPORT` (`GH_NO`, `SUPPORT_CD`, `SUPPORT_NM`, `CREATE_DTIME`, `CREATE_ID`, `LAST_DTIME`, `LAST_ID`) VALUES
	('GH0001', '01', 'parking', '20140314140706', 'admin', '20140314140706', 'admin'),
	('GH0002', '01', 'domitory', '20140317075306', 'admin', '20140317075306', 'admin'),
	('GH0002', '02', 'breakfast', '20140317075306', 'admin', '20140317075306', 'admin'),
	('GH0002', '03', 'barbeque', '20140317075306', 'admin', '20140317075306', 'admin'),
	('GH0002', '04', 'foreignerfriendly', '20140317075306', 'admin', '20140317075306', 'admin');
/*!40000 ALTER TABLE `GH_SUPPORT` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_TALK_LAST_MESSAGES
CREATE TABLE IF NOT EXISTS `GH_TALK_LAST_MESSAGES` (
  `SENDER_ID` varchar(128) NOT NULL COMMENT 'sender email',
  `LAST_MESSAGE` text NOT NULL COMMENT '메시지',
  `LAST_MESSAGE_DTIME` varchar(14) NOT NULL COMMENT '마지막메시지 작성시간',
  UNIQUE KEY `SENDER_ID` (`SENDER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_TALK_LAST_MESSAGES: 2 rows
/*!40000 ALTER TABLE `GH_TALK_LAST_MESSAGES` DISABLE KEYS */;
INSERT IGNORE INTO `GH_TALK_LAST_MESSAGES` (`SENDER_ID`, `LAST_MESSAGE`, `LAST_MESSAGE_DTIME`) VALUES
	('wleodud1512@naver.com', 'ㅎㅇ', '20140411075150'),
	('jky0207@naver.com', 'ㅓ얼', '20140526045420');
/*!40000 ALTER TABLE `GH_TALK_LAST_MESSAGES` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_TALK_MESSAGES
CREATE TABLE IF NOT EXISTS `GH_TALK_MESSAGES` (
  `SENDER_ID` varchar(128) NOT NULL COMMENT 'sender email',
  `MESSAGE` text NOT NULL COMMENT '메시지',
  `MESSAGE_DTIME` varchar(14) NOT NULL COMMENT '메시지 작성시간',
  KEY `SENDER_ID` (`SENDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_TALK_MESSAGES: ~8 rows (대략적)
/*!40000 ALTER TABLE `GH_TALK_MESSAGES` DISABLE KEYS */;
INSERT IGNORE INTO `GH_TALK_MESSAGES` (`SENDER_ID`, `MESSAGE`, `MESSAGE_DTIME`) VALUES
	('jky0207@naver.com', 'ㅎㅇ', '20140411070558'),
	('wleodud1512@naver.com', 'ㅎㅇ', '20140411075150'),
	('jky0207@naver.com', '하이', '20140526034755'),
	('jky0207@naver.com', '요', '20140526034841'),
	('jky0207@naver.com', '하이', '20140526034940'),
	('jky0207@naver.com', 'ㅇㄹ', '20140526045157'),
	('jky0207@naver.com', '', '20140526045417'),
	('jky0207@naver.com', 'ㅓ얼', '20140526045420');
/*!40000 ALTER TABLE `GH_TALK_MESSAGES` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_TALK_ROOM
CREATE TABLE IF NOT EXISTS `GH_TALK_ROOM` (
  `ROOM_NO` int(11) NOT NULL COMMENT 'room_id',
  `GH_NO` varchar(128) NOT NULL COMMENT '게스트하우스 id',
  `SENDER_ID` varchar(128) NOT NULL COMMENT 'sender email',
  `CHECK_INDATE` varchar(8) NOT NULL COMMENT '체크인 날짜',
  `CHECK_OUTDATE` varchar(8) NOT NULL COMMENT '체크아웃 날짜',
  UNIQUE KEY `ROOM_NO` (`ROOM_NO`),
  KEY `SENDER_ID` (`SENDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_TALK_ROOM: ~5 rows (대략적)
/*!40000 ALTER TABLE `GH_TALK_ROOM` DISABLE KEYS */;
INSERT IGNORE INTO `GH_TALK_ROOM` (`ROOM_NO`, `GH_NO`, `SENDER_ID`, `CHECK_INDATE`, `CHECK_OUTDATE`) VALUES
	(1, '3', 'jky0207@naver.com', '20140411', '20140423'),
	(2, '', 'jky0207@naver.com', '', ''),
	(3, '3', 'wleodud1512@naver.com', '20140411', '20140430'),
	(4, '', 'wleodud1512@naver.com', '', ''),
	(5, '', 'wleodud1512@naver.com', '', '');
/*!40000 ALTER TABLE `GH_TALK_ROOM` ENABLE KEYS */;


-- 테이블 allchange의 구조를 덤프합니다. GH_VISIT
CREATE TABLE IF NOT EXISTS `GH_VISIT` (
  `VISIT_CD` varchar(2) NOT NULL,
  `VISIT_NM` varchar(20) NOT NULL,
  `CREATE_DTIME` varchar(14) NOT NULL,
  `CREATE_ID` varchar(50) NOT NULL,
  `LAST_DTIME` varchar(14) NOT NULL,
  `LAST_ID` varchar(50) NOT NULL,
  UNIQUE KEY `VISIT_CD` (`VISIT_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allchange.GH_VISIT: ~6 rows (대략적)
/*!40000 ALTER TABLE `GH_VISIT` DISABLE KEYS */;
INSERT IGNORE INTO `GH_VISIT` (`VISIT_CD`, `VISIT_NM`, `CREATE_DTIME`, `CREATE_ID`, `LAST_DTIME`, `LAST_ID`) VALUES
	('01', 'festival', '20140314162520', 'admin', '20140314162520', 'admin'),
	('02', 'eatout', '20140314162552', 'admin', '20140314162552', 'admin'),
	('03', 'business', '20140314162601', 'admin', '20140314162601', 'admin'),
	('04', 'shopping', '20140314162607', 'admin', '20140314162607', 'admin'),
	('05', 'sightseeing', '20140314162620', 'admin', '20140314162620', 'admin'),
	('06', 'hangout', '20140314162627', 'admin', '20140314162627', 'admin');
/*!40000 ALTER TABLE `GH_VISIT` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
