CREATE DATABASE  IF NOT EXISTS `Electricity_Billing_System` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `Electricity_Billing_System`;
-- MySQL dump 10.13  Distrib 5.7.23, for Win64 (x86_64)
--
-- Host: project-db.cpca6yvg9gox.us-east-2.rds.amazonaws.com    Database: Electricity_Billing_System
-- ------------------------------------------------------
-- Server version	5.7.23-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED='';

--
-- Table structure for table `Admin`
--

DROP TABLE IF EXISTS `Admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Admin` (
  `login_id` varchar(255) NOT NULL,
  `login_password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `phone_no_primary` varchar(100) NOT NULL,
  `phone_no_secondary` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admin`
--

LOCK TABLES `Admin` WRITE;
/*!40000 ALTER TABLE `Admin` DISABLE KEYS */;
INSERT INTO `Admin` VALUES ('andy2gmail.com','andy','Andy','Wachowski','9547 library lane','','Charlotte','NC','28787','1780987-9787',''),('rocky.21@gmail.com','Rocky','Rocky','smith','9547 University lane','','Charlotte','NC','28757','1(904)987-9787','');
/*!40000 ALTER TABLE `Admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_email_id` varchar(255) NOT NULL,
  `login_password` varchar(255) NOT NULL,
  `ssn` varchar(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` varchar(5) NOT NULL,
  `phone_no_primary` varchar(13) NOT NULL,
  `phone_no_secondary` varchar(13) DEFAULT NULL,
  `service_provider_name` enum('ENGIE','Duke Energy','Enel','NextEra Energy') NOT NULL,
  `register_date` date NOT NULL,
  `meter_type` enum('Electric','Solar') NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'sed.pede.nec@maurisanunc.co.uk','zsjdk@65','531349579','Lars','Keith','P.O. Box 795, 3438 Consectetuer Street','Ap #810-587 Odio. St.','Miami','Florida','31285','1-971-821-239','1-822-395-977','ENGIE','2018-05-23','Electric'),(2,'Cras.lorem@gmail.com','abcd','769957804','Chadwick','Gallegos','3025 Quam. Road','7490 Leo Rd.','Gaithersburg','Maryland','91106','1-478-274-716','1-823-606-877','ENGIE','2008-10-09','Solar'),(3,'fermen0tum@gmail.com','zsjdk@65','792228819','Richard','Hahn','Ap #124-6114 Nonummy St.','P.O. Box 747, 7713 Proin St.','Kansas City','Kansas','34912','1-253-588-315','1-242-239-974','NextEra Energy','2005-03-27','Electric'),(4,'Vivamus@gmail.com','zsjdk@65','585314115','Madonna','Reynolds','4060 Dapibus Avenue','882-1519 Ipsum Avenue','Mobile','Alabama','35132','1-793-103-007','1-620-331-907','Duke Energy','2016-09-08','Electric'),(5,'mauris@yahoo.com','zsjdk@65','445237639','Hiroko','Potts','Ap #413-2220 Sem, Ave','Ap #162-7256 A, Ave','Miami','Florida','97788','1-139-210-345','1-405-770-116','Duke Energy','2006-07-16','Electric'),(6,'sagittis.augue@yahoo.in','dshbba','993178995','Evangeline','Terry','P.O. Box 518, 2365 Eu, Rd.','P.O. Box 133, 9546 Vestibulum Rd.','Saint Louis','Missouri','99722','1-384-547-678','1-390-852-294','ENGIE','2014-07-16','Electric'),(7,'felis.Nulla.tempor@gmail.com','hjbcjs','152138210','Jolene','Castillo','110-8252 Velit Rd.','Ap #342-5581 Ligula Ave','Indianapolis','Indiana','67407','1-865-840-935','1-335-923-356','Enel','2012-05-09','Solar'),(8,'et.euismod@yahoo.com','zsjdk@65','691639306','Shea','Sandoval','6532 Integer Street','802-1457 Tincidunt,\n Road','North Las Vegas','Nevada','15952','1-530-995-169','1-581-853-109','Duke Energy','2002-05-19','Electric'),(9,'sapien@gmail.com','shbka','676359425','Jolie','Vargas','P.O. Box 917, 699 Et St.','6188 Rutrum Road','Grand Island','Nebraska','19554','1-124-724-008','1-576-412-013','NextEra Energy','2004-07-14','Solar'),(10,'et.ipsum@yahoo.com','zsjdk@65','079871893','Josephine','Paul','Ap #581-1343 Lobortis St.','Ap #341-2559 Tellus. Rd.','Eugene','Oregon','96821','1-119-887-712','1-889-285-913','NextEra Energy','2009-02-16','Electric'),(11,'Suspendisse.ac@gmail.com','65hjbbh5','550207948','Sawyer','Sawyer','5508 Mauris Avenue','1556 Quis Rd.','Gresham','Oregon','21821','1-946-786-806','1-359-728-372','Duke Energy','2019-07-19','Electric'),(12,'In.faucibus.Morbi@yahoo.com','jaksjk','806762365','Talon','Haney','P.O. Box 488, 5905 Magna Av.','474-4807 Mauris, Avenue','Kailua','Hawaii','40864','1-517-427-710','1-338-690-848','Duke Energy','2010-01-19','Electric'),(13,'mi@gmail.com','zsjd@65','264828179','Reese','Moore','7048 Nonummy St.','Ap #980-8447 Lobortis, St.','Joliet','Illinois','26607','1-768-942-722','1-694-654-645','Enel','2003-09-18','Electric'),(14,'egestas@yahoo.com','sjdk@65','113837934','Calvin','Sanford','347-3552 Pharetra, St.','132-6233 Donec Street','Lansing','Michigan','66286','1-708-357-450','1-350-408-070','Duke Energy','2005-04-05','Solar'),(15,'ut.ipsum.ac@yahoo.com','zsjd@65','907335921','Yen','Buckley','9797 Praesent St.','Ap #484-5966 Arcu. Av.','Springdale','Arkansas','72561','1-581-741-838','1-270-375-870','NextEra Energy','2014-01-14','Solar'),(16,'condimentum@gmail.com','zsjdk65','893001974','Aidan','Pearson','140-4889 Dictum Rd.','Ap #926-9360 Cras Rd.','Mesa','Arizona','86555','1-468-307-187','1-955-419-223','ENGIE','2006-09-09','Electric'),(17,'aliquam.adipiscing@gmail.com','znkjnk@65','586989238','Winter','Estrada','6088 Ac Road','8608 Magnis Avenue','Chicago','Illinois','21230','1-365-902-779','1-557-135-765','Duke Energy','2014-05-04','Solar'),(18,'sapien.Nunc.pulvinar@nislsem.com','zsjdk@65','261609168','Perry','Robinson','5967 Lectus St.','9566 Eu, Street','Helena','Montana','99741','1-529-312-269','1-299-174-112','NextEra Energy','2012-03-04','Solar'),(19,'nisl.Maecenas.malesuada@vitae.com','zsjdk@65','112283130','Orla','Lawson','P.O. Box 104, 9208 Ac Av.','903-6118 Massa. Av.','Laramie','Wyoming','42649','1-161-324-442','1-643-231-293','NextEra Energy','2012-04-25','Electric'),(20,'Pellentesque@MorbimetusVivamus.ca','zsjdk@65','472882612','Audra','Wright','999-679 Neque. Road','863-4535 In Ave','South Portland','Maine','33072','1-141-483-239','1-561-820-625','Enel','2010-12-07','Solar'),(21,'enim.consequat@mi.net','zsjdk@65','544653264','Hiram','Bates','P.O. Box 518, 3873 Egestas. St.','701-9299 Hymenaeos. Avenue','Stamford','Connecticut','44485','1-700-848-862','1-659-324-731','Enel','2010-09-23','Solar'),(22,'lectus@tristiquesenectus.co.uk','zsjdk@65','002353720','Sonia','Thomas','P.O. Box 463, 5444 Tincidunt. Av.','P.O. Box 444, 3002 Sed Rd.','Helena','Montana','23271','1-438-433-296','1-446-472-100','NextEra Energy','2018-02-18','Solar'),(23,'faucibus.id@convalliserateget.edu','zsjdk','573847431','Rhona','Talley','P.O. Box 169, 9821 Parturient Avenue','Ap #429-2115 Semper Av.','Tulsa','Oklahoma','89272','1-582-432-191','1-406-189-489','NextEra Energy','2019-07-21','Electric'),(24,'diam.vel.arcu@sagittis.co.uk','zsj@65','915533368','Lillith','Gill','686-322 Per Av.','P.O. Box 412, 3796 Donec Ave','Broken Arrow','Oklahoma','77282','1-427-373-541','1-261-904-210','Duke Energy','2007-09-10','Solar'),(25,'euismod@egestasblandit.co.uk','zs@65','627104037','Justina','Nolan','7390 Molestie St.','Ap #773-3774 Nunc Avenue','Chattanooga','Tennessee','32656','1-813-726-516','1-888-711-786','Duke Energy','2018-08-09','Solar'),(26,'Duis@idenim.edu','59172','591729348','April','Garcia','7986 Eget Ave','3564 Luctus Avenue','Biloxi','Mississippi','84276','1-858-713-434','1-334-344-499','Duke Energy','2009-05-21','Solar'),(27,'lobortis@enimconsequatpurus.org','Shea','764601605','Shea','Price','P.O. Box 258, 3596 Primis Ave','P.O. Box 633, 9643 Magnis St.','Spokane','Washington','11955','1-637-912-176','1-749-794-480','NextEra Energy','2003-12-02','Electric'),(28,'mauris.aliquam@ligulaAeneangravida.edu','ittlRock','596289561','Clio','Leblanc','P.O. Box 387, 9744 Suscipit, Road','Ap #412-6789 Nec, Ave','Little Rock','Arkansas','72086','1-422-595-277','1-476-286-245','NextEra Energy','2006-07-23','Solar'),(29,'Proin@temporeratneque.com','zlayton','319696092','Clayton','Cruz','597-3719 Facilisis Ave','521-1992 Arcu Rd.','Gresham','Oregon','80918','1-982-277-161','1-954-280-555','ENGIE','2014-01-24','Solar'),(30,'sem@rutrumjustoPraesent.co.uk','2110093','302110093','Shafira','Holcomb','P.O. Box 436, 3682 Mus. Rd.','P.O. Box 688, 3425 Sagittis Rd.','Laramie','Wyoming','24029','1-834-509-377','1-876-648-152','Enel','2004-03-04','Solar');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Electricity_Billing_Details`
--

DROP TABLE IF EXISTS `Electricity_Billing_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Electricity_Billing_Details` (
  `electricity_bill_id` int(11) NOT NULL,
  `bill_generated_date` date NOT NULL,
  `bill_due_date` date NOT NULL,
  `billing_cycle_start_date` date NOT NULL,
  `number_of_billing_days` int(100) NOT NULL,
  `payment_amount` double NOT NULL,
  `amount_due` double NOT NULL,
  `last_meter_reading` double NOT NULL,
  `present_meter_reading` double NOT NULL,
  `customer_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`electricity_bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Electricity_Billing_Details`
--

LOCK TABLES `Electricity_Billing_Details` WRITE;
/*!40000 ALTER TABLE `Electricity_Billing_Details` DISABLE KEYS */;
INSERT INTO `Electricity_Billing_Details` VALUES (10000,'2018-08-23','2018-09-17','2018-07-22',30,150,140,800.65,1250.47,'4'),(10002,'2018-09-25','2018-10-10','2018-08-20',30,125,125,1200.58,2000.58,'2'),(10003,'2018-09-26','2018-10-15','2018-08-25',25,115,115,1150.54,1550.25,'3'),(10004,'2018-09-23','2018-10-17','2018-08-22',30,130,130,1250.47,1600.65,'4'),(10005,'2018-09-20','2018-10-15','2018-08-18',31,140,160,1350.48,2050.25,'5'),(10006,'2018-09-17','2018-10-14','2018-08-14',32,120,120,1150.74,1750.69,'6'),(10007,'2018-09-15','2018-10-10','2018-08-12',32,130,170,1200.89,1800.87,'7'),(10008,'2018-09-16','2018-10-10','2018-08-15',30,128,128,1180.65,2000.87,'8'),(10009,'2018-09-20','2018-10-15','2018-08-19',32,122,122,1280.84,2280.47,'9'),(10018,'2018-10-23','2018-11-17','2018-09-22',30,260,260,1600.65,2500.65,'4'),(100002,'2018-07-18','2018-08-15','2018-06-15',36,160,160,880.65,1185.54,'1'),(100010,'2018-09-13','2018-10-08','2018-08-10',32,125,125,1250.63,1550.45,'10'),(100011,'2018-09-16','2018-10-12','2018-08-11',34,135,135,1300.45,1700.14,'11'),(100021,'2018-09-25','2018-10-18','2018-08-19',35,140,140,1400.58,1700.36,'15'),(100022,'2018-09-17','2018-10-15','2018-08-14',32,135,135,1350.65,1800.74,'14'),(100023,'2018-09-23','2018-10-15','2018-08-20',32,130,130,1300.47,1700.69,'13'),(100030,'2018-09-21','2018-10-18','2018-08-18',32,145,145,1450.25,1650.33,'12'),(100031,'2018-09-18','2018-10-10','2018-08-16',35,120,120,1185.54,2185.54,'1'),(100036,'2018-10-18','2018-11-15','2018-09-15',36,132,132,2185.54,3180.15,'1');
/*!40000 ALTER TABLE `Electricity_Billing_Details` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-23 18:02:45
