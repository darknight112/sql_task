-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: join_task
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `company_mast`
--

DROP TABLE IF EXISTS `company_mast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_mast` (
  `COM_ID` int NOT NULL,
  `COM_NAME` varchar(30) NOT NULL,
  PRIMARY KEY (`COM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_mast`
--

LOCK TABLES `company_mast` WRITE;
/*!40000 ALTER TABLE `company_mast` DISABLE KEYS */;
INSERT INTO `company_mast` VALUES (11,'Samsung'),(12,'iBall'),(13,'Epsion'),(14,'Zebronics'),(15,'Asus'),(16,'Frontech');
/*!40000 ALTER TABLE `company_mast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `cust_name` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `grade` int DEFAULT NULL,
  `salesman_id` int DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `salesman_id` (`salesman_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`salesman_id`) REFERENCES `salesman` (`salesman_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (3001,'Brad Guzan','London',NULL,5005),(3002,'Nick Rimando','New York',100,5001),(3003,'Jozy Altidor','Moscow',200,5007),(3004,'Fabian Johnson','Paris',300,5006),(3005,'Graham Zusi','California',200,5002),(3007,'Brad Davis','New York',200,5001),(3008,'Julian Green','London',300,5002),(3009,'Geoff Cameron','Berlin',100,5003);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `DPT_CODE` int NOT NULL,
  `DPT_NAME` varchar(20) NOT NULL,
  `DPT_ALLOTMENT` float NOT NULL,
  PRIMARY KEY (`DPT_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (27,'RD',55000),(47,'HR',240000),(57,'IT',65000),(63,'Finance',15000),(89,'QC',75000);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `DEPARTMENT_ID` int NOT NULL,
  `DEPARTMENT_NAME` varchar(50) NOT NULL,
  `MANAGER_ID` int NOT NULL,
  `LOCATION_ID` int NOT NULL,
  PRIMARY KEY (`DEPARTMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (10,'Administration',200,1700),(20,'Marketing',201,1800),(30,'Purchasing',114,1700),(40,'Human Resources',203,2400),(50,'Shipping',121,1500),(60,'IT',103,1400),(70,'Public Relations',204,2700),(80,'Sales',145,2500),(90,'Executive',100,1700),(100,'Finance',108,1700),(110,'Accounting',205,1700),(120,'Treasury',0,1700),(130,'Corporate Tax',0,1700),(140,'Control And Credit',0,1700),(150,'Shareholder Services',0,1700),(160,'Benefits',0,1700),(170,'Manufacturing',0,1700),(180,'Construction',0,1700),(190,'Contracting',0,1700),(200,'Operations',0,1700),(210,'IT Support',0,1700),(220,'NOC',0,1700),(230,'IT Helpdesk',0,1700),(240,'Government Sales',0,1700),(250,'Retail Sales',0,1700),(260,'Recruiting',0,1700),(270,'Payroll',0,1700);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_details`
--

DROP TABLE IF EXISTS `emp_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_details` (
  `EMP_IDNO` int NOT NULL,
  `EMP_FNAME` varchar(50) NOT NULL,
  `EMP_LNAME` varchar(50) NOT NULL,
  `EMP_DEPT` int NOT NULL,
  PRIMARY KEY (`EMP_IDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_details`
--

LOCK TABLES `emp_details` WRITE;
/*!40000 ALTER TABLE `emp_details` DISABLE KEYS */;
INSERT INTO `emp_details` VALUES (127323,'Michale','Robbin',57),(328717,'Jhon','Snares',63),(444527,'Joseph','Dosni',47),(526689,'Carlos','Snares',63),(539569,'George','Mardy',27),(555935,'Alex','Manuel',57),(631548,'Alan','Snappy',27),(659831,'Zanifer','Emily',47),(733843,'Mario','Saule',63),(748681,'Henrey','Gabriel',47),(839139,'Maria','Foster',57),(843795,'Enric','Dosio',57),(847674,'Kuleswar','Sitaraman',57);
/*!40000 ALTER TABLE `emp_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EMPLOYEE_ID` int NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(50) DEFAULT NULL,
  `HIRE_DATE` date DEFAULT NULL,
  `JOB_ID` varchar(20) DEFAULT NULL,
  `SALARY` float DEFAULT NULL,
  `COMMISSION_PTC` float DEFAULT NULL,
  `MANAGER_ID` int DEFAULT NULL,
  `DEPARTMENT_ID` int DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (100,'Steven','King','SKING','515.123.4567','2003-06-17','AD_PRES',24000,0,0,90),(101,'Neena','Kochhar','NKOCHHAR','515.123.4568','2005-09-21','AD_VP',17000,0,100,90),(102,'Lex','De Haan','LDEHAAN','515.123.4569','2001-01-13','AD_VP',17000,0,100,90),(103,'Alexandra','Hunold','AHUNOLD','590.423.4567','2006-01-03','IT_PROG',9000,0,102,60),(104,'Bruce','Ernst','BERNST','590.423.4568','2007-05-21','IT_PROG',6000,0,103,60),(105,'David','Austin','DAUSTIN','590.423.4569','2002-08-17','IT_PROG',4800,0,103,60),(106,'Valli','Pataballa','VPATABAL','590.423.4560','2006-02-05','IT_PROG',4800,0,103,60),(107,'Diana','Lorentz','DLORENTZ','590.423.5567','2007-02-07','IT_PROG',4200,0,103,60),(108,'Nancy','Greenberg','NGREENBE','515.124.4569','2002-08-17','FI_MGR',12008,0,101,100),(109,'Daniel','Faviet','DFAVIET','515.124.4169','2002-08-16','FI_ACCOUNT',9000,0,108,100),(110,'John','Chen','JCHEN','515.124.4269','2005-09-28','FI_ACCOUNT',8200,0,108,100),(111,'Ismael','Sciarra','ISCIARRA','515.124.4369','2005-09-30','FI_ACCOUNT',7700,0,108,100),(112,'Jose Ma','Urman','JMURMAN','515.124.4469','2006-03-07','FI_ACCOUNT',7800,0,108,100),(113,'Luis','Popp','LPOPP','515.124.4567','2007-12-07','FI_ACCOUNT',6900,0,108,100),(114,'Den','Raphaely','DRAPHEAL','515.127.4561','2002-12-07','PU_MAN',11000,0,100,30),(115,'Alexand','Khoo','AKHOO','515.127.4562','2003-05-18','PU_CLERK',3100,0,114,30),(116,'Shelli','Baida','SBAIDA','515.127.4563','2005-12-24','PU_CLERK',2900,0,114,30),(117,'Sigal','Tobias','STOBIAS','515.127.4564','2005-07-24','PU_CLERK',2800,0,114,30),(118,'Guy','Himuro','GHIMURO','515.127.4565','2006-11-15','PU_CLERK',2600,0,114,30),(119,'Karen','Colmenares','KCOLMENA','515.127.4566','2007-08-10','PU_CLERK',2500,0,114,30),(120,'Matthew','Weiss','MWEISS','650.123.1234','2004-07-18','ST_MAN',8000,0,100,50),(121,'Adam','Fripp','AFRIPP','650.123.2234','2005-04-10','ST_MAN',8200,0,100,50),(122,'Payam','Kaufling','PKAUFLIN','650.123.3234','2003-05-01','ST_MAN',7900,0,100,50),(123,'Shanta','Vollman','SVOLLMAN','650.123.4234','2005-10-10','ST_MAN',6500,0,100,50),(124,'Kevin','Mourgos','KMOURGOS','650.123.5234','2007-11-16','ST_MAN',5800,0,100,50),(125,'Julia','Nayer','JNAYER','650.124.1214','2005-07-16','ST_CLERK',3200,0,120,50),(126,'Irene','Mikkilinen','IMIKKILI','650.124.1224','2006-09-28','ST_CLERK',2700,0,120,50),(127,'James','Landry','JLANDRY','650.124.1334','2007-01-14','ST_CLERK',2400,0,120,50),(128,'Steven','Markle','SMARKLE','650.124.1434','2008-03-08','ST_CLERK',2200,0,120,50),(129,'Laura','Bissot','LBISSOT','650.124.5234','2005-08-20','ST_CLERK',3300,0,121,50),(130,'Mozhe','Atkinson','MATKINSO','650.124.6234','2005-10-30','ST_CLERK',2800,0,121,50),(131,'James','Marlow','JAMRLOW','650.124.7234','2005-02-16','ST_CLERK',2500,0,121,50),(132,'TJ','Olson','TJOLSON','650.124.8234','2007-04-10','ST_CLERK',2100,0,121,50),(133,'Jason','Mallin','JMALLIN','650.127.1934','2004-06-14','ST_CLERK',3300,0,122,50),(134,'Michael','Rogers','MROGERS','650.127.1834','2006-08-26','ST_CLERK',2900,0,122,50),(135,'Ki','Gee','KGEE','650.127.1734','2007-12-12','ST_CLERK',2400,0,122,50),(136,'Hazel','Philtanker','HPHILTAN','650.127.1634','2008-02-06','ST_CLERK',2200,0,122,50),(137,'Renske','Ladwig','RLADWIG','650.121.1234','2003-07-14','ST_CLERK',3600,0,123,50),(138,'Stephen','Stiles','SSTILES','650.121.2034','2005-10-26','ST_CLERK',3200,0,123,50),(139,'John','Seo','JSEO','650.121.2019','2006-02-12','ST_CLERK',2700,0,123,50),(140,'Joshua','Patel','JPATEL','650.121.1834','2006-04-06','ST_CLERK',2500,0,123,50),(141,'Trenna','Rajs','TRAJS','650.121.8009','2003-10-17','ST_CLERK',3500,0,124,50),(142,'Curtis','Davies','CDAVIES','650.121.2994','2005-01-29','ST_CLERK',3100,0,124,50),(143,'Randall','Matos','RMATOS','650.121.2874','2006-03-15','ST_CLERK',2600,0,124,50),(144,'Peter','Vargas','PVARGAS','650.121.2004','2006-07-09','ST_CLERK',2500,0,124,50),(145,'John','Russell','JRUSSEL','011.44.1344.429','2004-10-01','SA_MAN',14000,0.4,100,80),(146,'Karen','Partners','KPARTNER','011.44.1344.467','2005-01-05','SA_MAN',13500,0.3,100,80),(147,'Alberto','Errazuriz','AERRAZUR','011.44.1344.429','2005-03-10','SA_MAN',12000,0.3,100,80),(148,'Gerald','Cambrault','GCAMBRAU','011.44.1344.619','2007-10-15','SA_MAN',11000,0.3,100,80),(149,'Eleni','Zlotkey','EZLOTKEY','011.44.1344.429','2008-01-29','SA_MAN',10500,0.2,100,80),(150,'Peter','Tucker','PTUCKER','011.44.1344.129','2005-01-30','SA_REP',10000,0.3,145,80),(151,'David','Bernstein','DBERNSTE','011.44.1344.345','2005-03-24','SA_REP',9500,0.25,145,80),(152,'Peter','Hall','PHALL','011.44.1344.478','2005-08-20','SA_REP',9000,0.25,145,80),(153,'Christo','Olsen','COLSEN','011.44.1344.498','2006-03-30','SA_REP',8000,0.2,145,80),(154,'Nanette','Cambrault','NCAMBRAU','011.44.1344.987','2006-12-09','SA_REP',7500,0.2,145,80),(155,'Oliver','Tuvault','OTUVAULT','011.44.1344.486','2007-11-23','SA_REP',7000,0.15,145,80),(156,'Janette','King','JKING','011.44.1345.429','2004-01-30','SA_REP',10000,0.35,146,80),(157,'Patrick','Sully','PSULLY','011.44.1345.929','2004-03-04','SA_REP',9500,0.35,146,80),(158,'Allan','McEwen','AMCEWEN','011.44.1345.829','2004-08-01','SA_REP',9000,0.35,146,80),(159,'Lindsey','Smith','LSMITH','011.44.1345.729','2005-03-10','SA_REP',8000,0.3,146,80),(160,'Louise','Doran','LDORAN','011.44.1345.629','2005-12-15','SA_REP',7500,0.3,146,80),(161,'Sarath','Sewall','SSEWALL','011.44.1345.529','2006-11-03','SA_REP',7000,0.25,146,80),(162,'Clara','Vishney','CVISHNEY','011.44.1346.129','2005-11-11','SA_REP',10500,0.25,147,80),(163,'Daniell','Greene','DGREENE','011.44.1346.229','2007-03-19','SA_REP',9500,0.15,147,80),(164,'Mattea','Marvins','MMARVINS','011.44.1346.329','2008-01-24','SA_REP',7200,0.1,147,80),(165,'David','Lee','DLEE','011.44.1346.529','2008-02-23','SA_REP',6800,0.1,147,80),(166,'Sundar','Ande','SANDE','011.44.1346.629','2008-03-24','SA_REP',6400,0.1,147,80),(167,'Amit','Banda','ABANDA','011.44.1346.729','2008-04-21','SA_REP',6200,0.1,147,80),(168,'Lisa','Ozer','LOZER','011.44.1343.929','2005-03-11','SA_REP',11500,0.25,148,80),(169,'Harriso','Bloom','HBLOOM','011.44.1343.829','2006-03-23','SA_REP',10000,0.2,148,80),(170,'Tayler','Fox','TFOX','011.44.1343.729','2006-01-24','SA_REP',9600,0.2,148,80),(171,'William','Smith','WSMITH','011.44.1343.629','2007-02-23','SA_REP',7400,0.15,148,80),(172,'Elizabe','Bates','EBATES','011.44.1343.529','2007-03-24','SA_REP',7300,0.15,148,80),(173,'Sundita','Kumar','SKUMAR','011.44.1343.329','2008-04-21','SA_REP',6100,0.1,148,80),(174,'Ellen','Abel','EABEL','011.44.1644.429','2004-05-11','SA_REP',11000,0.3,149,80),(175,'Alyssa','Hutton','AHUTTON','011.44.1644.429','2005-03-19','SA_REP',8800,0.25,149,80),(176,'Jonatho','Taylor','JTAYLOR','011.44.1644.429','2006-03-24','SA_REP',8600,0.2,149,80),(177,'Jack','Livingston','JLIVINGS','011.44.1644.429','2006-04-23','SA_REP',8400,0.2,149,80),(178,'Kimbere','Grant','KGRANT','011.44.1644.429','2007-05-24','SA_REP',7000,0.15,149,0),(179,'Charles','Johnson','CJOHNSON','011.44.1644.429','2008-01-04','SA_REP',6200,0.1,149,80),(180,'Winston','Taylor','WTAYLOR','650.507.9876','2006-01-24','SH_CLERK',3200,0,120,50),(181,'Jean','Fleaur','JFLEAUR','650.507.9877','2006-02-23','SH_CLERK',3100,0,120,50),(182,'Martha','Sullivan','MSULLIVA','650.507.9878','2007-06-21','SH_CLERK',2500,0,120,50),(183,'Girard','Geoni','GGEONI','650.507.9879','2008-02-03','SH_CLERK',2800,0,120,50),(184,'Nandita','Sarchand','NSARCHAN','650.509.1876','2004-01-27','SH_CLERK',4200,0,121,50),(185,'Alexis','Bull','ABULL','650.509.2876','2005-02-20','SH_CLERK',4100,0,121,50),(186,'Julia','Dellinger','JDELLING','650.509.3876','2006-06-24','SH_CLERK',3400,0,121,50),(187,'Anthony','Cabrio','ACABRIO','650.509.4876','2007-02-07','SH_CLERK',3000,0,121,50),(188,'Kelly','Chung','KCHUNG','650.505.1876','2005-06-14','SH_CLERK',3800,0,122,50),(189,'Jennife','Dilly','JDILLY','650.505.2876','2005-08-13','SH_CLERK',3600,0,122,50),(190,'Timothy','Gates','TGATES','650.505.3876','2006-07-11','SH_CLERK',2900,0,122,50),(191,'Randall','Perkins','RPERKINS','650.505.4876','2007-12-19','SH_CLERK',2500,0,122,50),(192,'Sarah','Bell','SBELL','650.501.1876','2004-02-04','SH_CLERK',4000,0,123,50),(193,'Britney','Everett','BEVERETT','650.501.2876','2005-03-03','SH_CLERK',3900,0,123,50),(194,'Samuel','McCain','SMCCAIN','650.501.3876','2006-07-01','SH_CLERK',3200,0,123,50),(195,'Vance','Jones','VJONES','650.501.4876','2007-03-17','SH_CLERK',2800,0,123,50),(196,'Alana','Walsh','AWALSH','650.507.9811','2006-04-24','SH_CLERK',3100,0,124,50),(197,'Kevin','Feeney','KFEENEY','650.507.9822','2006-05-23','SH_CLERK',3000,0,124,50),(198,'Donald','OConnell','DOCONNEL','650.507.9833','2007-06-21','SH_CLERK',2600,0,124,50),(199,'Douglas','Grant','DGRANT','650.507.9844','2008-01-13','SH_CLERK',2600,0,124,50),(200,'Jennife','Whalen','JWHALEN','515.123.4444','2003-09-17','AD_ASST',4400,0,101,10),(201,'Michael','Hartstein','MHARTSTE','515.123.5555','2004-02-17','MK_MAN',13000,0,100,20),(202,'Pat','Fay','PFAY','603.123.6666','2005-08-17','MK_REP',6000,0,201,20),(203,'Susan','Mavris','SMAVRIS','515.123.7777','2002-06-07','HR_REP',6500,0,101,40),(204,'Hermann','Baer','HBAER','515.123.8888','2002-06-07','PR_REP',10000,0,101,70),(205,'Shelley','Higgins','SHIGGINS','515.123.8080','2002-06-07','AC_MGR',12008,0,101,110),(206,'William','Gietz','WGIETZ','515.123.8181','2002-06-07','AC_ACCOUNT',8300,0,205,110);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_mast`
--

DROP TABLE IF EXISTS `item_mast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_mast` (
  `PRO_ID` int NOT NULL,
  `PRO_NAME` varchar(50) DEFAULT NULL,
  `PRO_PRICE` float DEFAULT NULL,
  `PRO_COM` int DEFAULT NULL,
  PRIMARY KEY (`PRO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_mast`
--

LOCK TABLES `item_mast` WRITE;
/*!40000 ALTER TABLE `item_mast` DISABLE KEYS */;
INSERT INTO `item_mast` VALUES (101,'Mother Board',3200,15),(102,'Key Board',450,16),(103,'ZIP drive',250,14),(104,'Speaker',550,16),(105,'Monitor',5000,11),(106,'DVD drive',900,12),(107,'CD drive',800,12),(108,'Printer',2600,13),(109,'Refill cartridge',350,13),(110,' Mouse',250,12);
/*!40000 ALTER TABLE `item_mast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_grades`
--

DROP TABLE IF EXISTS `job_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_grades` (
  `GRADE_LEVEL` varchar(50) DEFAULT NULL,
  `LOWEST_SAL` int DEFAULT NULL,
  `HIGHEST_SAL` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_grades`
--

LOCK TABLES `job_grades` WRITE;
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT INTO `job_grades` VALUES ('A',1000,2999),('B',3000,5999),('C',6000,9999),('D',10000,14999),('E',15000,24999),('F',25000,40000);
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `LOCATION_ID` int NOT NULL,
  `STREET_ADDRESS` varchar(255) DEFAULT NULL,
  `POSTAL_CODE` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `STATE_PROVINCE` varchar(255) DEFAULT NULL,
  `COUNTRY_ID` char(2) DEFAULT NULL,
  PRIMARY KEY (`LOCATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1000,'1297 Via Cola di Rie','989','Roma','','IT'),(1100,'93091 Calle della Testa','10934','Venice','','IT'),(1200,'2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP'),(1300,'9450 Kamiya-cho','6823','Hiroshima','','JP'),(1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US'),(1500,'2011 Interiors Blvd','99236','South San Francisco','California','US'),(1600,'2007 Zagora St','50090','South Brunswick','New Jersey','US'),(1700,'2004 Charade Rd','98199','Seattle','Washington','US'),(1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA'),(1900,'6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA'),(2000,'40-5-12 Laogianggen','190518','Beijing','','CN'),(2100,'1298 Vileparle (E)','490231','Bombay','Maharashtra','IN'),(2200,'12-98 Victoria Street','2901','Sydney','New South Wales','AU'),(2300,'198 Clementi North','540198','Singapore','','SG'),(2400,'8204 Arthur St','','London','','UK'),(2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK'),(2600,'9702 Chester Road','9629850 293','Stretford','Manchester','UK'),(2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE'),(2800,'Rua Frei Caneca 1360','01307-002','Sao Paulo','Sao Paulo','BR'),(2900,'20 Rue des Corps-Saints','1730','Geneva','Geneve','CH'),(3000,'Murtenstrasse 921','3095','Bern','BE','CH'),(3100,'Pieter Breughelstraat 837','3029SK','Utrecht','Utrecht','NL'),(3200,'Mariano Escobedo 9991','11932','Mexico City','Distrito Federal,','MX');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `ord_no` int NOT NULL,
  `purch_amt` decimal(8,2) NOT NULL,
  `ord_date` date NOT NULL,
  `customer_id` int DEFAULT NULL,
  `salesman_id` int DEFAULT NULL,
  PRIMARY KEY (`ord_no`),
  KEY `customer_id` (`customer_id`),
  KEY `salesman_id` (`salesman_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`salesman_id`) REFERENCES `salesman` (`salesman_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (70001,150.50,'2012-10-05',3005,5002),(70002,65.26,'2012-10-05',3002,5001),(70003,2480.40,'2012-10-10',3009,5003),(70004,110.50,'2012-08-17',3009,5003),(70005,2400.60,'2012-07-27',3007,5001),(70007,948.50,'2012-09-10',3005,5002),(70008,5760.00,'2012-09-10',3002,5001),(70009,270.65,'2012-09-10',3001,5005),(70010,1983.43,'2012-10-10',3004,5006),(70011,75.29,'2012-08-17',3003,5007),(70012,250.45,'2012-06-27',3008,5002),(70013,3045.60,'2012-04-25',3002,5001);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesman`
--

DROP TABLE IF EXISTS `salesman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesman` (
  `salesman_id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `commission` decimal(4,2) NOT NULL,
  PRIMARY KEY (`salesman_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesman`
--

LOCK TABLES `salesman` WRITE;
/*!40000 ALTER TABLE `salesman` DISABLE KEYS */;
INSERT INTO `salesman` VALUES (5001,'James Hoog','New York',0.15),(5002,'Nail Knite','Paris',0.13),(5003,'Lauson Hen','San Jose',0.12),(5005,'Pit Alex','London',0.11),(5006,'Mc Lyon','Paris',0.14),(5007,'Paul Adam','Rome',0.13);
/*!40000 ALTER TABLE `salesman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'join_task'
--

--
-- Dumping routines for database 'join_task'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-28 21:34:42
