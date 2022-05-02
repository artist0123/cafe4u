-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `cafe`
--

DROP TABLE IF EXISTS `cafe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cafe` (
  `cafe_branchid` int NOT NULL,
  `cafe_location` text NOT NULL,
  `cafe_name` varchar(255) NOT NULL,
  `cafe_desc` longtext NOT NULL,
  `cafe_theme` varchar(255) NOT NULL,
  PRIMARY KEY (`cafe_branchid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafe`
--

LOCK TABLES `cafe` WRITE;
/*!40000 ALTER TABLE `cafe` DISABLE KEYS */;
INSERT INTO `cafe` VALUES (1,'215/3 หมู่4 ถนนเทพารักษ์ อ.บางเสาธง จ.สมทุรปราการ 10570','Cafe1','คาเฟ่สไตล์มืดๆ ให้ความรู้สึกคูลๆ','dark'),(2,'223/1 ถ.สายวดัโคก ต.บางปรอกอ.เมืองจ.ปทุมธานี12000','Cafe2','คาเฟ่สไตล์ธรรมชาติ บรรยากาศดี','nature'),(3,'35 หมู่2 ถ.พหลโยธิน ต.ลาไทร อ.วังน้อย จ.พระนครศรีอยธุ ยา 13170','Cafe3','คาเฟ่สไตล์ธรรมชาติ บรรยากาศดี','nature'),(4,'61 หมู่ 6 ต.โพนทอง อ.บ้านหมี่ จ.ลพบุรี 15110','Cafe4','คาเฟ่สไตล์ธรรมชาติ บรรยากาศดี','nature'),(5,'23/20 หมู่1 ต.สิงห์ อ.บางระจัน จ.สิงห์บุรี16130','Cafe5','คาเฟ่สไตล์มืดๆ ให้ความรู้สึกคูลๆ','dark'),(6,'128 ถ.สุขมุวิท ต.ท่าประดู่ อ.เมืองจ.ระยอง 21000','Cafe6','คาเฟ่ร้านหนังสือ อ่านกาแฟไปจิบหนังสือไป','bookshop'),(7,'13 หมู่5 ต.คลองหาด อ.คลองหาด จ.สระแก้ว 27260','Cafe7','คาเฟ่สไตล์ธรรมชาติ บรรยากาศดี','nature'),(8,'42 หมู่2 ต.ปะคา อ.ปะคา จ.บุรีรัมย์ 31220','Cafe8','คาเฟ่ร้านหนังสือ อ่านกาแฟไปจิบหนังสือไป','bookshop'),(9,'210 หมู่2 ถ.ช่อชงโค ต.นาคา อ.ศรีเมืองใหม่ จ.อุบลราชธานี 34250','Cafe9','คาเฟ่สไตล์ธรรมชาติ บรรยากาศดี','nature'),(10,'157/8 ถ.กลางเมือง ต.ในเมืองอ.เมืองจ.ขอนแก่น 40000','Cafe10','คาเฟ่สไตล์ธรรมชาติ บรรยากาศดี','nature'),(11,'439 หมู่2 ต.นาด้วง อ.นาด้วง จ.เลย 42210','Cafe11','คาเฟ่สไตล์ธรรมชาติ บรรยากาศดี','nature'),(12,'12/2 หมู่13 ถ.ถีนานนท์ ต.โคกพระ อ.กันทรวิชัย จ.มหาสารคาม 44150','Cafe12','คาเฟ่สไตล์มืดๆ ให้ความรู้สึกคูลๆ','dark'),(13,'122/6 หมู่3 ถ.ทุ่งหัวช้าง ต.ทุ่งหัวช้าง จ.ลำพูน 51160','Cafe13','คาเฟ่สไตล์ธรรมชาติ บรรยากาศดี','nature'),(14,'269 หมู่4 ถ.พหลโยธิน แม่ใจ อ.แม่ใจ จ.พะเยา 56130','Cafe14','คาเฟ่ร้านหนังสือ อ่านกาแฟไปจิบหนังสือไป','bookshop'),(15,'668/1 หมู่7 ต.ท่าตะโก อ.ท่าตะโก จ.นครสวรรค์ 60160','Cafe15','คาเฟ่สไตล์มืดๆ ให้ความรู้สึกคูลๆ','dark');
/*!40000 ALTER TABLE `cafe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cafe_promotion`
--

DROP TABLE IF EXISTS `cafe_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cafe_promotion` (
  `cafe_branchid` int NOT NULL,
  `pro_id` int NOT NULL,
  PRIMARY KEY (`cafe_branchid`,`pro_id`),
  KEY `pro_id_fk_cafe_promotion_idx` (`pro_id`),
  CONSTRAINT `cafe_branchid_fk_cafe_promotion` FOREIGN KEY (`cafe_branchid`) REFERENCES `cafe` (`cafe_branchid`),
  CONSTRAINT `pro_id_fk_cafe_promotion` FOREIGN KEY (`pro_id`) REFERENCES `promotion` (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafe_promotion`
--

LOCK TABLES `cafe_promotion` WRITE;
/*!40000 ALTER TABLE `cafe_promotion` DISABLE KEYS */;
INSERT INTO `cafe_promotion` VALUES (1,1),(3,1),(4,1),(11,1),(12,1),(13,1),(1,2),(3,2),(1,3),(3,3),(6,3),(10,3),(9,4),(5,5),(6,5),(8,8),(13,8),(6,10),(7,11),(5,12);
/*!40000 ALTER TABLE `cafe_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `image_path` tinytext NOT NULL,
  `product_id` int DEFAULT NULL,
  `cafe_id` int DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `product_id_fk_idx` (`product_id`),
  KEY `cafe_id_fk_image_idx` (`cafe_id`),
  CONSTRAINT `cafe_id_fk_image` FOREIGN KEY (`cafe_id`) REFERENCES `cafe` (`cafe_branchid`),
  CONSTRAINT `product_id_fk_image` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (13,'/img/product1-1.jpg',1,NULL),(14,'/img/product1-2.jpg',1,NULL),(15,'/img/product1-3.jpg',1,NULL),(16,'/img/product2-1.jpg',2,NULL),(17,'/img/product2-2.jpg',2,NULL),(18,'/img/product3-1.jpg',3,NULL),(19,'/img/product4-1.jpg',4,NULL),(20,'/img/product5-1.jpg',5,NULL),(21,'/img/product6-1.jpg',6,NULL),(22,'/img/product6-2.jpg',6,NULL),(23,'/img/product7-1.jpg',7,NULL),(24,'/img/product9-1.jpg',9,NULL),(25,'/img/product10-1.jpg',10,NULL),(26,'/img/product11-1.jpg',11,NULL),(27,'/img/product12-1.jpg',12,NULL),(28,'/img/product13-1.jpg',13,NULL),(29,'/img/product14-1.jpg',14,NULL),(30,'/img/product15-1.jpg',15,NULL),(31,'/img/product16-1.jpg',16,NULL),(32,'/img/product8-1.jpg',8,NULL),(33,'/img/cafe1-1.jpg',NULL,1),(34,'/img/cafe12-1.jpg',NULL,12),(35,'/img/cafe12-2.jpg',NULL,12);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL,
  `order_datetime` datetime NOT NULL,
  `order_totalprice` float(8,2) NOT NULL,
  `user_id` int NOT NULL,
  `emp_id` int NOT NULL,
  `cafe_branchid` int NOT NULL,
  `pro_id` int DEFAULT NULL,
  `order_status` enum('canceled','pending','sold') NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id_fk_order_idx` (`user_id`),
  KEY `emp_id_fk_order_idx` (`emp_id`),
  KEY `cafe_branchid_fk_order_idx` (`cafe_branchid`),
  KEY `pro_id_fk_order_idx` (`pro_id`),
  CONSTRAINT `cafe_branchid_fk_order` FOREIGN KEY (`cafe_branchid`) REFERENCES `cafe` (`cafe_branchid`),
  CONSTRAINT `emp_id_fk_order` FOREIGN KEY (`emp_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `pro_id_fk_order` FOREIGN KEY (`pro_id`) REFERENCES `promotion` (`pro_id`),
  CONSTRAINT `user_id_fk_order` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'2021-07-15 12:44:01',80.00,5,16,3,NULL,'sold'),(2,'2021-07-15 13:23:55',175.00,2,25,6,NULL,'sold'),(3,'2021-07-15 15:01:25',165.00,10,20,1,NULL,'sold'),(4,'2021-08-04 11:05:29',119.00,9,17,10,14,'sold'),(5,'2021-09-07 12:17:38',265.00,1,27,2,13,'sold'),(6,'2021-09-25 10:30:45',165.00,4,21,3,NULL,'sold'),(7,'2021-11-10 16:45:05',185.00,7,17,10,NULL,'sold'),(8,'2021-12-09 11:15:25',80.00,9,18,4,NULL,'sold'),(9,'2021-12-29 18:03:00',99.50,8,25,6,14,'sold'),(10,'2022-02-25 12:05:15',95.00,10,27,7,NULL,'sold'),(11,'2022-04-16 18:23:02',140.00,3,20,10,NULL,'pending'),(12,'2022-04-20 10:20:12',185.00,10,22,9,5,'pending'),(13,'2022-05-03 17:00:04',255.00,11,21,9,8,'pending'),(14,'2022-05-15 09:33:42',274.50,4,24,3,7,'pending'),(15,'2022-05-22 12:15:30',115.00,5,23,14,6,'pending');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `item_no` int NOT NULL,
  `product_price` float(8,2) NOT NULL,
  `order_amount` int NOT NULL,
  `item_totalprice` float(8,2) NOT NULL,
  `product_id` int NOT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`item_no`,`order_id`),
  KEY `product_id_fk_order_item_idx` (`product_id`),
  KEY `order_id_fk_order_item_idx` (`order_id`),
  CONSTRAINT `order_id_fk_order_item` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `product_id_fk_order_item` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,80.00,1,80.00,1,1),(2,85.00,1,85.00,4,2),(3,80.00,1,80.00,7,2),(4,10.00,1,10.00,18,2),(5,90.00,1,90.00,2,3),(6,75.00,1,75.00,5,3),(7,70.00,2,140.00,5,4),(8,95.00,3,285.00,5,5),(9,35.00,3,105.00,12,6),(10,60.00,1,60.00,10,6),(11,80.00,1,80.00,7,7),(12,60.00,1,60.00,10,7),(13,35.00,1,35.00,12,7),(14,10.00,1,10.00,18,7),(15,75.00,1,75.00,5,8),(16,5.00,1,5.00,19,8),(17,70.00,1,70.00,9,9),(18,40.00,1,40.00,14,9),(19,80.00,1,80.00,7,10),(20,15.00,1,15.00,17,10),(21,85.00,1,85.00,4,11),(22,55.00,1,55.00,6,11),(23,80.00,2,160.00,7,12),(24,35.00,1,35.00,12,12),(25,10.00,1,10.00,18,12),(26,60.00,1,60.00,10,13),(27,95.00,2,190.00,3,13),(28,15.00,1,15.00,17,13),(29,90.00,3,270.00,2,14),(30,35.00,1,35.00,12,14),(31,40.00,2,80.00,15,15),(32,55.00,1,55.00,6,15);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `pay_id` int NOT NULL,
  `pay_datetime` datetime NOT NULL,
  `pay_bank` varchar(30) NOT NULL,
  `pay_filename` varchar(255) NOT NULL,
  `pay_price` float(8,2) NOT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`pay_id`),
  KEY `order_id_fk_payment_idx` (`order_id`),
  CONSTRAINT `order_id_fk_payment` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'2021-07-15 12:45:23','SCB','IMG_1894',80.00,1),(2,'2021-07-15 13:24:47','KBANK','IMG_0724',175.00,2),(3,'2021-07-15 15:02:33','BAY','IMG_4131',165.00,3),(4,'2021-08-04 11:06:14','TMB','IMG_2532',119.00,4),(5,'2021-09-07 12:19:20','BAY','IMG_0081',265.00,5),(6,'2021-09-25 10:37:03','KBANK','IMG_2152',145.00,6),(7,'2021-11-10 16:48:22','BAY','IMG_0301',185.00,7),(8,'2021-12-09 11:16:34','KBANK','IMG_6722',80.00,8),(9,'2021-12-29 18:05:01','KBANK','IMG_0123',99.50,9),(10,'2022-02-25 12:06:11','SCB','IMG_7172',95.00,10),(11,'2022-04-16 18:25:04','KBANK','IMG_0172',140.00,11),(12,'2022-04-20 10:21:01','BBL','IMG_1156',185.00,12),(13,'2022-05-03 17:01:04','KTB','IMG_1564',255.00,13),(14,'2022-05-15 09:35:22','SCB','IMG_3984',274.50,14),(15,'2022-05-22 12:17:03','KTB','IMG_5110',115.00,15);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) DEFAULT NULL,
  `product_price` float(8,2) NOT NULL,
  `product_type` enum('bakery','drink','option') DEFAULT NULL,
  `product_status` enum('available','outofstock') NOT NULL,
  `product_amount` int NOT NULL,
  `drink_size` enum('large','medium','small') DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'ไนโตร คาราเมล มัคคิอาโต','ช็อตเอสเพรสโซ่กับนมผสานไนโตรเจน ราดซอสคาราเมล',80.00,'drink','available',45,'small'),(2,'ซอล์ทเท็ด คาราเมล ครีม แฟรบปูชิโน่','น้ำเชื่อมซอล์ทเท็ด คาราเมล ผสมกับครีมแฟรบปูชิโน่ปั่น ท็อปด้วยวิปครีมและราดซอสคาราเมลด้านบน',90.00,'drink','available',55,'medium'),(3,'คาราเมล แฟรบปูชิโน่ปั่น','กาแฟปั่นผสมน้ำเชื่อมคาราเมล นม ท็อปด้วยวิปครีมและซอสคาราเมล',95.00,'drink','available',30,'medium'),(4,'ช็อกโกแลต','ช็อกโกแลตปั่นสูตรพิเศษ หอมกลิ่นช็อกโกแลต รสชาติหวาน',85.00,'drink','available',35,'small'),(5,'คาราเมล มัคคิอาโต','นม น้ำเชื่อมวานิลลาช็อตเอสเพรสโซ่ และซอสคาราเมล',75.00,'drink','available',20,'medium'),(6,'คาราเมลครอฟเฟิล','ครอฟเฟิลเสิร์ฟพร้อมวิปครีมและคาราเมลซอส',55.00,'bakery','available',15,NULL),(7,'นมสด','นมสดปั่น หวานมัน หอมกลิ่นนมสด',80.00,'drink','available',8,'medium'),(8,'ชานมปั่น','ชานมปั่นสูตรพิเศษ เข้มข้น หวานมัน',50.00,'drink','outofstock',0,'small'),(9,'แบล็คคอฟฟี่น้ำผึ้งมะนาว','ความหอมหวานของน้ำผึ้งผสมกับความเปรี้ยวของมะนาวราดด้วยกาแฟ อร่อยเย็นสดชื่นไม่ซ้ำใคร',70.00,'drink','available',45,'medium'),(10,'คาปูชิโน','กาแฟเย็น รสชาติปานกลาง  แต่งหน้าด้วยโฟมนม',60.00,'drink','available',60,'small'),(11,'มอคค่า','กาแฟเย็น รสชาติปานกลาง ผสมช็อกโกแลต แต่งหน้าด้วยโฟมนม',65.00,'drink','available',43,'small'),(12,'ครัวซองค์คันทรีเฮิร์บ','ครัวซองค์สมุนไพร',35.00,'bakery','available',41,NULL),(13,'ครัวซองค์แซลมอนผักโขม','ครัวซองค์ไส้ผักโขมและปลาแซลมอน',95.00,'bakery','outofstock',0,NULL),(14,'ชาร้อน กลิ่นพีช','ชาร้อนกลิ่นพีช หอมกลิ่นเฉพาะตัว',40.00,'drink','available',55,'medium'),(15,'ชาร้อน กลิ่นมะลิ','ชาร้อนกลิ่นมะลิ หอมกลิ่นเฉพาะตัว',40.00,'drink','available',52,'medium'),(16,'ชาร้อน กลิ่นแมงโก้สตรอเบอร์รี่','ชาร้อนกลิ่นแมงโก้สตรอเบอร์รี่ หอมกลิ่นเฉพาะตัว',40.00,'drink','available',120,'medium'),(17,'วิปชีส','วิปครีมชีสนุ่ม หอม รสเค็มเล็กน้อย',15.00,'option','available',80,NULL),(18,'วิปครีม','วิปครีมหอม หวาน มัน',10.00,'option','available',50,NULL),(19,'เยลลี่','เยลลี่เหนียวนุ่ม รสชาติหวาน เปรี้ยว',5.00,'option','available',40,NULL),(20,'ไข่มุกคาราเมล','ไข่มุกพิเศษผสมคาราเมล หอมหวาน กลมกล่อมในตัว',10.00,'option','available',60,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_order_item`
--

DROP TABLE IF EXISTS `product_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_order_item` (
  `item_no` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`item_no`,`product_id`),
  KEY `product_id_fk_product_order_item_idx` (`product_id`),
  CONSTRAINT `item_no_fk_product_order_item` FOREIGN KEY (`item_no`) REFERENCES `order_item` (`item_no`),
  CONSTRAINT `product_id_fk_product_order_item` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_order_item`
--

LOCK TABLES `product_order_item` WRITE;
/*!40000 ALTER TABLE `product_order_item` DISABLE KEYS */;
INSERT INTO `product_order_item` VALUES (7,17),(26,17),(3,18),(10,18),(24,18),(5,19);
/*!40000 ALTER TABLE `product_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `pro_id` int NOT NULL,
  `start_date` datetime NOT NULL,
  `expired_date` datetime NOT NULL,
  `pro_detail` text NOT NULL,
  `pro_type` enum('product_get_discount','price_get_discount','point','free') NOT NULL,
  `discount` float(8,2) DEFAULT NULL,
  `buy_count_need` int DEFAULT NULL,
  `buy_price_need` float(8,2) DEFAULT NULL,
  `point_need` int DEFAULT NULL,
  `product_free` int DEFAULT NULL,
  `product_count_need` int DEFAULT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `product_free_fk_promotion_idx` (`product_free`),
  CONSTRAINT `product_free_fk_promotion` FOREIGN KEY (`product_free`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,'2022-01-01 00:00:00','2022-02-07 00:00:00','วันจันทร์ส่วนลด10บาทเมื่อซื้อชานมปั่น','product_get_discount',NULL,NULL,NULL,NULL,NULL,NULL),(2,'2022-04-13 00:00:00','2022-04-15 00:00:00','ซื้อ1แถม1ทุกเมนู','price_get_discount',NULL,NULL,NULL,NULL,NULL,NULL),(3,'2022-02-01 00:00:00','2022-02-20 00:00:00','ลด20%เมื่อซื้อครบ200บาท','point',NULL,NULL,NULL,NULL,NULL,NULL),(4,'2021-04-01 00:00:00','2022-04-30 00:00:00','ใช้แต้มส่วนลด100แต้มลด10บาททุกเมนู','free',NULL,NULL,NULL,NULL,NULL,NULL),(5,'2021-05-01 00:00:00','2022-05-30 00:00:00','ใช้แต้มส่วนลด200แต้มลด20บาททุกเมนู','product_get_discount',NULL,NULL,NULL,NULL,NULL,NULL),(6,'2021-07-01 00:00:00','2021-08-01 00:00:00','ส่วนลด20บาทเมื่อซื้อชาร้อน กลิ่นมะลิ2แก้ว','product_get_discount',NULL,NULL,NULL,NULL,NULL,NULL),(7,'2022-02-20 00:00:00','2022-03-05 00:00:00','ลด10%เมื่อซื้อครบ150บาท','product_get_discount',NULL,NULL,NULL,NULL,NULL,NULL),(8,'2021-01-12 00:00:00','2021-02-12 00:00:00','ส่วนลด10บาทเมื่อซื้อคาปูชิโนเย็น','product_get_discount',NULL,NULL,NULL,NULL,NULL,NULL),(9,'2021-03-03 00:00:00','2021-03-24 00:00:00','ส่วนลด5บาทเมื่อซื้อเมนูกาแฟทุกชนิด','product_get_discount',NULL,NULL,NULL,NULL,NULL,NULL),(10,'2022-03-01 00:00:00','2022-03-20 00:00:00','ส่วนลด5บาทเมื่อซื้อเมนูกาแฟทุกชนิด','product_get_discount',NULL,NULL,NULL,NULL,NULL,NULL),(11,'2021-05-11 00:00:00','2022-05-11 00:00:00','ส่วนลด10บาทเมื่อซื้อคาปูชิโนเย็น','product_get_discount',NULL,NULL,NULL,NULL,NULL,NULL),(12,'2021-05-01 00:00:00','2021-05-25 00:00:00','ซื้อ2แถม1เมื่อซื้อเมนูนมสด, ช็อกโกแลตหรือชาร้อน','product_get_discount',NULL,NULL,NULL,NULL,NULL,NULL),(13,'2021-09-10 00:00:00','2021-09-30 00:00:00','เมื่อซื้อครัวซองค์แซลมอนผักโขม3ชิ้น ลด 20บาท','product_get_discount',NULL,NULL,NULL,NULL,NULL,NULL),(14,'2021-08-01 00:00:00','2022-01-01 00:00:00','วันพุธลด15%เมื่อซื้อแบล็คคอฟฟี่น้ำผึ้งมะนาว','product_get_discount',NULL,NULL,NULL,NULL,NULL,NULL),(15,'2022-03-15 00:00:00','2022-05-15 00:00:00','วันศุกร์ลดทุกเมนูเฉพาะเครื่องดิ่มปั่น5บาท','product_get_discount',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_product`
--

DROP TABLE IF EXISTS `promotion_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion_product` (
  `pro_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`pro_id`,`product_id`),
  KEY `product_id_fk_promotion_product_idx` (`product_id`),
  CONSTRAINT `pro_id_fk_promotion_product` FOREIGN KEY (`pro_id`) REFERENCES `promotion` (`pro_id`),
  CONSTRAINT `product_id_fk_promotion_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_product`
--

LOCK TABLES `promotion_product` WRITE;
/*!40000 ALTER TABLE `promotion_product` DISABLE KEYS */;
INSERT INTO `promotion_product` VALUES (2,1),(3,1),(4,1),(5,1),(7,1),(9,1),(10,1),(2,2),(3,2),(4,2),(5,2),(7,2),(9,2),(10,2),(15,2),(2,3),(3,3),(4,3),(5,3),(7,3),(9,3),(10,3),(15,3),(2,4),(3,4),(4,4),(5,4),(7,4),(12,4),(2,5),(3,5),(4,5),(5,5),(7,5),(2,6),(3,6),(4,6),(5,6),(7,6),(2,7),(3,7),(4,7),(5,7),(7,7),(12,7),(1,8),(2,8),(3,8),(4,8),(5,8),(7,8),(15,8),(2,9),(3,9),(4,9),(5,9),(7,9),(9,9),(10,9),(14,9),(2,10),(3,10),(4,10),(5,10),(7,10),(8,10),(9,10),(10,10),(11,10),(2,11),(3,11),(4,11),(5,11),(7,11),(9,11),(10,11),(2,12),(3,12),(4,12),(5,12),(7,12),(2,13),(3,13),(4,13),(5,13),(7,13),(13,13),(2,14),(3,14),(4,14),(5,14),(7,14),(12,14),(2,15),(3,15),(4,15),(5,15),(6,15),(7,15),(12,15),(2,16),(3,16),(4,16),(5,16),(7,16),(12,16);
/*!40000 ALTER TABLE `promotion_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_id` int NOT NULL,
  `review_comment` varchar(255) NOT NULL,
  `review_score` int NOT NULL,
  `review_datetime` datetime NOT NULL,
  `user_id` int NOT NULL,
  `cafe_id` int NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `ca_idx` (`user_id`),
  KEY `cafe_id_fk_review_idx` (`cafe_id`),
  CONSTRAINT `cafe_id_fk_review` FOREIGN KEY (`cafe_id`) REFERENCES `cafe` (`cafe_branchid`),
  CONSTRAINT `user_id_fk_review` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'Good ',4,'2021-05-15 12:44:01',1,2),(2,'Cool',5,'2021-07-15 01:12:01',7,8);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token` (
  `token` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`token`),
  KEY `user_id_fk_token_idx` (`user_id`),
  CONSTRAINT `user_id_fk_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_login` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `age` int NOT NULL,
  `address` tinytext NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_point` int NOT NULL,
  `user_type` enum('customer','employee') NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_login_UNIQUE` (`user_login`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'mayrisa','เมริสา','สุวรรณวงศ์',20,'334 ถ.สรรพาวุธ แขวงบางนา เขตบางนา จ.กรุงเทพฯ 10260','0624575467','mayrisa20@gmaill.com',513,'customer','Aa123456'),(2,'pakin','ภาคิน','ประเสริญวงศ์',45,'59 ถ.เทศบาล10 ต.ตลาดหลวง อ.เมือง จ.อ่างทอง 14000','0895166797','ppataw@hotmail.com',612,'customer','Aa123456'),(3,'nutwiroj','ณัฐวิโรจน์','อุดมวงศ์',54,'40 หมู่5 ถ.พหลโยธิน ต.ลาไทร อ.วังน้อย จ.พระนครศรีอยุธยา 13170','0884567815','nuttlol@hotmail.com',891,'customer','Aa123456'),(4,'dawika','ดาวิกา','สิริปัจทรัพย์',23,'143/1 หมู่6 ถ.สุขาภิบาล ต.พัฒนานิคม อ.พัฒนานิคม จ.ลพบุรี 15140','0617849258','davineeahah@gmail.com',178,'customer','Aa123456'),(5,'pansa','พรรษา','สกุลวงศ์',25,'136 หมู่4 ต.หางน้ำสาคร อ.มโนรมย์ จ.ชัยนาท 17170','0971716587','pansakulwong@gmail.com',230,'customer','Aa123456'),(6,'ananta','อนันตญา','ภัชรภิรมย์',18,'152/1-2 หมู่1 ถ.ชุมแสง ต.ชุมแสง อ.วังจันทร์ จ.ระยอง 21210','0627485916','ananexxe@gmail.com',842,'customer','Aa123456'),(7,'nattapol','ณัฏฐพล','โอภาสพัฒน์',22,'840 หมู่4 ถ.สุขาภิบาล14 ต.แชะ อ.ครบุรี จ.นครราชสีมา 30250','0994557187','oberghub@hotmail.com',663,'customer','Aa123456'),(8,'nittra','นิษฐา','อรุณฉาย',30,'198/2 หมู่1 ถ.สุขาภิบาล ต.บ้านแพ้ว อ.บ้านแพ้ว จ.สมุทรสาคร 74120','0876559843','nitnike@hotmail.com',83,'customer','Aa123456'),(9,'pongsak','พงษ์ศักดิ์','พงศ์ธนา',29,'214/1-2 หมู่3 ถ.คันธุนะ ต.ไม้เรียง อ.ฉวาง จ.นครศรีธรรมราช 80260 ','0655998874','hermess@gmail.com',544,'customer','Aa123456'),(10,'sunisa','สุนิสา','ภูภาค',23,'339 หมู่18 ถ.สุขสวัสดิ์ ต.บางพึ่ง อ.พระประแดง จ.สมุทรปราการ 10130','0946558724','kittyyupp@hotmail.com',60,'customer','Aa123456'),(11,'kenika','เกณิกา','นิกรนนท์',24,'406/1 ถ.เจริญเมือง ต.วัดเกตุ อ.เมือง จ.เชียงใหม่ 50000','0834567888','nikaaki@gmail.com',744,'customer','Aa123456'),(12,'nutt','นัทธ์','เกษมทรัพย์',29,'568 หมู่2 ถ.มุ่งคีรี ต.คลองใหญ่ อ.คลองใหญ่ จ.ตราด 23110','0694457332','watcharika@hotmail.com',232,'customer','Aa123456'),(13,'chanayut','ชนายุส','พงศ์พัฒนา',19,'55/3 หมู่3 ถ.สุขุมวิท ต.นาจอมเทียน อ.สัตหีบ จ.ชลบุรี 20250 ','0874655522','chanaggez@hotmail.com',1070,'customer','Aa123456'),(14,'buklakorn','บุลากร','นันทวัฒน์',36,'49 หมู่11 ถ.ลำลูกกา ต.บึงคำพร้อย อ.ลำลูกกา จ.ปทุมธานี 12150 ','0882344466','burakonahha@gmail.com',835,'customer','Aa123456'),(15,'pitcha','พิชชาญ์','ทัศนเรือง',41,'87 ถ.สุขุมวิท ต.ปากน้ำ อ.เมือง จ.สมุทรปราการ 10270','0891124748','pichalovemovie@hotmail.com',94,'customer','Aa123456'),(16,'lewlew','ชลนิภา','แท่งทิพย์',25,'603 หมู่5 ต.อุ้มผาง อ.อุ้มผาง จ.ตาก63170','0813254512','lewlew@gmaill.com',0,'employee','Aa123456'),(17,'chokchai','โชคชัย','เจริญทิพย์',31,'576/5 หมู่4 ต.บึงคำพร้อย อ.ลำลูกกา จ.ปทุมธานี 12150','0941573215','ckoc@gmaill.com',0,'employee','Aa123456'),(18,'sainttt','สุรศักดิ์','วงศ์สวัสดิ์',19,'182/9 หมู่10 ถ.ท้าวอู่ทอง ต.ปากท่อ อ.ปากท่อ จ.ราชบุรี 70140','0871598904','SaintJimmy@gmaill.com',0,'employee','Aa123456'),(19,'Ratima','รติมา','เรืองรังสรรค์',25,'50/8 หมู่1 ต.ไร่ขิง อ.สามพราน จ.นครปฐม 73210','0941362401','rarata@gmaill.com',0,'employee','Aa123456'),(20,'Benz12','พงศ์พัฒน์','ภัชรปรีดา',22,'214/5 หมู่1 ต.พรหมโลก อ.พรหมคีรี จ.นครศรีธรรมราช 80320','0860487070','benzaza@gmaill.com',0,'employee','Aa123456'),(21,'puifaifon','ฝนแก้ว','พงศ์พิโรจ',30,'85/12 หมู่5 ถ.ดอนสัก-ขนอม ต.ดอนสัก อ.ดอนสัก จ.สุราษฎร์ธานี84220','0821543211','puifainarak@gmaill.com',0,'employee','Aa123456'),(22,'nit18','ณิชนันทน์','ทรัพย์ธารา',18,'90/5 หมู่4 ต.ทะเลทรัพย์ อ.ปะทิว จ.ชุมพร 86160','0899871515','niteiei@gmaill.com',0,'employee','Aa123456'),(23,'Bun93','บุณพจน์','ธารางาม',20,'185/1 หมู่1 ถ.เพชรเกษม ต.ลำไพล อ.เทพา จ.สงขลา 90260','0841574580','bunpod@gmaill.com',0,'employee','Aa123456'),(24,'TeTo','เทวิกา','โตศิลา',21,'34/5 หมู่1 ถ.อคัรมาศอุทิศ อ.รือเสาะ จ.นราธิวาส 96150','0981532498','teto@gmaill.com',0,'employee','Aa123456'),(25,'Phudit458','ภูดิส','รัตนาอรุณ',27,'15/5 ม.4 ถ.เพชรเกษม ต.ท้ายเมือง อ.ท้ายเมือง จ.พังงา 82120','0944564538','phudit458@gmaill.com',0,'employee','Aa123456'),(26,'jkp01','จักรภพ','แก้วมาลา',25,'80/25 ถนนกรุงเทพกรีฑา ต.หัวหมาก อ.บางกะปิ จ.กรุงเทพมหานคร 10240','0843259648','jkp01@gmaill.com',0,'employee','Aa123456'),(27,'Wisa42','วิสาข์','สุวรรณปิติ',23,'2999/240 ถนนสุขุมวิท109 ต.สำโรงเหนือ อ.เมืองสมุทรปราการ จ.สมุทรปราการ 10270','0857853256','wisa42@gmaill.com',0,'employee','Aa123456'),(28,'Mariya01','มาริญา','เจริญทิพย์',30,'123 หมู่5 ถ.อู่ทอง ต.หอรัตนไชย อ.พระนครศรีอยธุยา จ.พระนครศรีอยธุยา 13000','0984716157','mariya@gmaill.com',0,'employee','Aa123456'),(29,'Karn32','กาญจนี','ก้องเกษมทรัพย์',32,'58/2 หมู่9 ถ.พหลโยธิน ต.คลองหนึ่ง อ.คลองหลวง จ.ปทุมธานี12120','0645862459','karn32@gmaill.com',0,'employee','Aa123456'),(30,'Brp27','บวรรัช','พัฒนปรีชา',27,'750 ถ.นครสวรรค์ ต.ตลาด อ.เมือง จ.มหาสารคาม 44000','0971598904','brp27@gmaill.com',0,'employee','Aa123456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-02 16:26:05
