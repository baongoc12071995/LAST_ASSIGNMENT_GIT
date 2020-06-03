-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: poly_project2
-- ------------------------------------------------------
-- Server version	5.6.17

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

--
-- Table structure for table `chi_tiet_hoa_don`
--

DROP TABLE IF EXISTS `chi_tiet_hoa_don`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chi_tiet_hoa_don` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `so_luong` int(11) DEFAULT NULL,
  `ten_kich_thuoc` varchar(255) DEFAULT NULL,
  `thanh_tien` double DEFAULT NULL,
  `hoa_don_id` int(11) DEFAULT NULL,
  `san_pham_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8u22ain8he9p3mgvuhkw82jkq` (`hoa_don_id`),
  KEY `FKrrl6rmrsoqaefoltd9dog1b5i` (`san_pham_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_hoa_don`
--

LOCK TABLES `chi_tiet_hoa_don` WRITE;
/*!40000 ALTER TABLE `chi_tiet_hoa_don` DISABLE KEYS */;
INSERT INTO `chi_tiet_hoa_don` VALUES (1,1,'40',3420000,1,1),(2,1,'37',3420000,1,2),(3,1,'44',1800000,1,3),(4,1,'36',3420000,2,4),(5,1,'43',3420000,2,5),(6,1,'39',1800000,2,9),(7,1,'36',3420000,3,19),(8,1,'35',3420000,3,10),(9,1,'45',3420000,3,5),(10,1,'38',1800000,4,21),(11,1,'36',3420000,4,22),(12,1,'39',1800000,4,30),(13,1,'42',3420000,5,11),(14,1,'39',1800000,5,12),(15,1,'44',1800000,5,3),(16,1,'35',3420000,6,10),(17,1,'38',3420000,6,28),(18,1,'37',3420000,6,26),(19,1,'41',1800000,7,15),(20,1,'39',1800000,7,12),(21,1,'40',3420000,7,19),(22,1,'37',3420000,8,17),(23,1,'43',3420000,8,23),(24,1,'38',3420000,8,23),(25,1,'35',1800000,9,18),(26,1,'36',1800000,9,24),(27,1,'37',3420000,9,13),(28,1,'36',3420000,10,19),(29,1,'38',3420000,10,23),(30,1,'35',3420000,10,20),(31,1,'41',3420000,11,7),(32,1,'38',3420000,11,5),(33,1,'35',3420000,11,10),(34,1,'35',1800000,12,6),(35,1,'37',3420000,12,8),(36,1,'36',1800000,12,9),(37,1,'41',3420000,13,4),(38,1,'35',1800000,13,6),(39,1,'37',3420000,13,2),(40,1,'38',3420000,14,11),(41,1,'36',1800000,14,12),(42,1,'39',3420000,14,13),(43,1,'35',1800000,15,18),(44,1,'40',3420000,15,11),(45,1,'37',1800000,15,30),(46,1,'39',1800000,16,9),(47,1,'40',3420000,16,8),(48,1,'35',1800000,16,6),(49,1,'38',3420000,17,7),(50,1,'41',3420000,17,2),(51,1,'44',3420000,17,1),(52,1,'41',1800000,18,6),(53,1,'40',1800000,18,3),(54,1,'39',3420000,18,13),(55,1,'38',3420000,19,16),(56,1,'41',1800000,19,24),(57,1,'40',3420000,19,22),(58,1,'39',3420000,21,14),(59,1,'40',3420000,21,28),(60,1,'39',1800000,21,12),(61,1,'35',3420000,20,10),(62,1,'44',3420000,20,11),(63,1,'37',1800000,20,15),(64,1,'41',3420000,22,10),(65,1,'35',1800000,22,18),(66,1,'42',1800000,22,21),(67,1,'43',3420000,23,1),(68,1,'38',3420000,23,10),(69,1,'38',3420000,23,22),(70,1,'41',3420000,24,2),(71,1,'42',1800000,24,3),(72,1,'40',3420000,24,5),(73,1,'44',3420000,25,1),(74,1,'37',3420000,25,2),(75,1,'42',1800000,25,3);
/*!40000 ALTER TABLE `chi_tiet_hoa_don` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hang_trong_kho`
--

DROP TABLE IF EXISTS `hang_trong_kho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hang_trong_kho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `so_luong` int(11) DEFAULT NULL,
  `kich_thuoc_id` int(11) DEFAULT NULL,
  `san_pham_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK360fuksgkaqdi5whi9fpxyb7y` (`san_pham_id`,`kich_thuoc_id`),
  KEY `FKmprl8clukljt0gf6oq71l1n0a` (`kich_thuoc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hang_trong_kho`
--

LOCK TABLES `hang_trong_kho` WRITE;
/*!40000 ALTER TABLE `hang_trong_kho` DISABLE KEYS */;
INSERT INTO `hang_trong_kho` VALUES (1,7,6,1),(2,4,7,1),(3,8,9,1),(4,10,10,1),(5,12,3,2),(6,17,4,2),(7,4,5,2),(8,8,7,2),(9,10,6,3),(10,10,8,3),(11,10,10,3),(12,30,2,4),(13,30,4,4),(14,30,5,4),(15,30,7,4),(16,30,8,4),(17,30,4,5),(18,30,6,5),(19,30,9,5),(20,30,11,5),(21,30,1,6),(22,30,3,6),(23,30,4,6),(24,30,5,6),(25,30,7,6),(26,30,4,7),(27,30,7,7),(28,30,9,7),(29,30,3,8),(30,30,4,8),(31,30,5,8),(32,30,6,8),(33,30,2,9),(34,30,5,9),(35,30,6,9),(36,30,9,9),(37,30,1,10),(38,30,2,10),(39,30,4,10),(40,30,6,10),(41,30,7,10),(42,30,4,11),(43,30,6,11),(44,30,8,11),(45,30,10,11),(46,30,2,12),(47,30,4,12),(48,30,5,12),(49,30,3,13),(50,30,5,13),(51,30,7,13),(52,30,1,14),(53,30,5,14),(54,30,3,15),(55,30,7,15),(56,30,10,15),(57,30,11,15),(58,30,1,16),(59,30,4,16),(60,30,5,16),(61,30,3,17),(62,30,4,17),(63,30,7,17),(64,30,8,17),(65,30,9,17),(66,30,1,18),(67,30,2,18),(68,30,3,18),(69,30,4,18),(70,30,5,18),(71,30,2,19),(72,30,6,19),(73,30,10,19),(74,30,1,20),(75,30,3,20),(76,30,4,20),(77,30,6,20),(78,30,7,20),(79,30,3,21),(80,30,5,21),(81,30,8,21),(82,30,2,22),(83,30,4,22),(84,30,5,22),(85,30,6,22),(86,30,4,23),(87,30,8,23),(88,30,9,23),(89,30,11,23),(90,30,2,24),(91,30,3,24),(92,30,4,24),(93,30,6,24),(94,30,7,24),(95,30,7,25),(96,30,10,25),(97,30,1,26),(98,30,3,26),(99,30,4,26),(100,30,6,26),(101,30,4,27),(102,30,7,27),(103,30,8,27),(104,30,1,28),(105,30,4,28),(106,30,5,28),(107,30,6,28),(108,30,2,29),(109,30,6,29),(110,30,9,29),(111,30,3,30),(112,30,5,30),(113,30,6,30),(114,30,7,30),(115,30,8,30);
/*!40000 ALTER TABLE `hang_trong_kho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hinh_san_pham`
--

DROP TABLE IF EXISTS `hinh_san_pham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hinh_san_pham` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hinh` varchar(500) DEFAULT NULL,
  `san_pham_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKop9aw39r6erhhnty5hwu7vfqg` (`san_pham_id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hinh_san_pham`
--

LOCK TABLES `hinh_san_pham` WRITE;
/*!40000 ALTER TABLE `hinh_san_pham` DISABLE KEYS */;
INSERT INTO `hinh_san_pham` VALUES (1,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-nmd-r2-white-black-1.jpg?alt=media&token=45131b12-9998-43ed-bd85-8eefef4b458f',1),(2,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-nmd-r2-white-black-2.jpg?alt=media&token=01a3d3e1-d422-4530-b6ec-af3f3c94494e',1),(3,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-nmd-r2-white-black-3.jpg?alt=media&token=1531d122-2346-4d74-91c5-76615b6e5841',1),(4,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Adidas%20NMD%20R1%20Burgundy%20and%20Olive%201.jpg?alt=media&token=4855d42e-c5b4-4483-92a0-ccad0a4b5d42',2),(5,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Adidas%20Superstar%20Bold%20All%20White%202.jpg?alt=media&token=0276a293-7b92-4f72-b338-341ac525cde2',2),(6,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Adidas%20Superstar%20Bold%20All%20White%203.jpg?alt=media&token=e42bdfc1-5748-4af7-baab-ca696c2951c6',2),(7,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Adidas%20Superstar%20Bold%20All%20White%201.jpg?alt=media&token=b35b1a04-98fc-4a74-a41f-c04eb198ead6',3),(8,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Adidas%20Superstar%20Bold%20All%20White%202.jpg?alt=media&token=0276a293-7b92-4f72-b338-341ac525cde2',3),(9,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Adidas%20Superstar%20Bold%20All%20White%203.jpg?alt=media&token=e42bdfc1-5748-4af7-baab-ca696c2951c6',3),(10,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-3.png?alt=media&token=2b6f5016-1d64-4025-bcec-e274167cce6a',4),(11,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-3.1.png?alt=media&token=19531e37-6fec-46da-a37b-1608b78e5e46',4),(12,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-3.2.png?alt=media&token=1cb033e3-46ff-4b97-865a-ef1f9a99210f',4),(13,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-1.png?alt=media&token=4b7e6913-4f10-47a4-a172-3c3e2f9a8b0c',5),(14,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-1.1.png?alt=media&token=aa9c92dc-5089-474a-b0a1-cb11a172e8a6',5),(15,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-1.2.png?alt=media&token=38fbd4c5-469a-4631-9fe0-4f050991e213',5),(16,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-2.png?alt=media&token=46230e56-c881-47b2-b2b0-dcfd50198d13',6),(17,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-2.1.png?alt=media&token=6ed4e58c-7d52-4899-a6d9-83fd58989a66',6),(18,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-2.2.png?alt=media&token=409bf220-65c4-435d-8f1b-9c531984b164',6),(19,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-4.png?alt=media&token=6de8bb59-9d40-47e1-965e-f0fd0ed3bdb2',7),(20,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-4.1.png?alt=media&token=65d135c4-3a06-434f-a87d-a73f947fbe6b',7),(21,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-4.2.png?alt=media&token=720995c1-f271-4fa2-890d-23cb9e667454',7),(22,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-5.png?alt=media&token=4c5288f9-c40d-40a7-b19f-37a0a60ea462',8),(23,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-5.1.png?alt=media&token=c192b46e-7585-411d-aa66-df601cd22691',8),(24,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-5.2.png?alt=media&token=f4b456d5-1594-4e7d-966b-8c0a761a3649',8),(25,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-6.png?alt=media&token=53ebec8c-799e-48b4-b7ad-09ce088cde9e',9),(26,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-6.2.png?alt=media&token=519c0c2d-4305-42e8-8d33-7dd6b470975c',9),(27,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-6.2.png?alt=media&token=519c0c2d-4305-42e8-8d33-7dd6b470975c',9),(28,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-7.png?alt=media&token=e6bf7f82-7a2b-47f9-abb3-4baf9ba0e14a',10),(29,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-7.1.png?alt=media&token=2b8d869f-07b7-4d6a-afbd-013a0d636c04',10),(30,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-7.2.png?alt=media&token=de85ecb9-1c59-4a6d-a689-95df93a5f7b2',10),(31,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Nike%20Air%20Presto%20Triple%20Black%201.jpg?alt=media&token=160d59e8-d4d5-4ef6-897f-1a3162de9a7b',11),(32,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Nike%20Air%20Presto%20Triple%20Black%202.jpg?alt=media&token=b47e919c-c0ab-4022-a69c-0e8d1995a0bf',11),(33,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Nike%20Air%20Presto%20Triple%20Black%203.jpg?alt=media&token=6003e268-52cf-4b9f-854b-bd676ef0e079',11),(34,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Nike%20Air%20Max%2090%20White%20and%20Red%201.jpg?alt=media&token=44d8a861-769b-4c47-b36c-9cf5e073c367',12),(35,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Nike%20Air%20Max%2090%20White%20and%20Red%202.jpg?alt=media&token=0140fe19-d237-4b84-8b7d-09c71b382ba8',12),(36,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Nike%20Air%20Max%2090%20White%20and%20Red%203.jpg?alt=media&token=f7e956ab-0051-4599-844d-373d3270f270',12),(37,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Nike%20Air%20Uptempo%20Thunder%20Blue%201.jpg?alt=media&token=9d477fef-743d-407f-a3fd-69ac44b6dccd',13),(38,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Nike%20Air%20Uptempo%20Thunder%20Blue%202.jpg?alt=media&token=506cd8b6-292f-4d21-a456-a10c6ce0f391',13),(39,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Nike%20Air%20Uptempo%20Thunder%20Blue%203.jpg?alt=media&token=c539e392-a5ff-46ac-8c44-9a9655bbc7d8',13),(40,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-4.png?alt=media&token=28928c4c-64fe-4a42-886b-89613624237c',14),(41,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-4.1.png?alt=media&token=2dce88f8-c219-4666-bd5b-571024a40520',14),(42,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-4.2.png?alt=media&token=3c0ea4b6-040b-4969-a59a-c9d26b801b47',14),(43,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-5.png?alt=media&token=f95d66dc-98e0-478a-865d-8d0018010916',15),(44,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-5.1.png?alt=media&token=c83a928e-0953-4152-b9ab-be6be9bc9a46',15),(45,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-5.2.png?alt=media&token=4b9a83be-7c74-4d5d-aa94-f9654eb89e30',15),(46,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-6.png?alt=media&token=8f176657-8be6-4bab-9830-d0b6e97c89fb',16),(47,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-6.1.png?alt=media&token=e54f755d-d6ac-4b9a-89b8-2d2848d4dc85',16),(48,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-6.2.png?alt=media&token=a1d23c17-f48c-43c1-ac60-2f8c94c1e5d5',16),(49,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-7.png?alt=media&token=c436a880-b066-4941-8bcd-eac139d4ea77',17),(50,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-7.1.png?alt=media&token=dd521d79-dd22-43d4-b3f3-8982d2e9236b',17),(51,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-7.2.png?alt=media&token=150f3101-6323-400c-a093-f68a6e056773',17),(52,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-8.png?alt=media&token=afe2d06c-ccca-4bf3-ac0b-f4dd4326da6a',18),(53,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-8.1.png?alt=media&token=db3f8a18-ec25-4a95-ae52-8b77a13e098b',18),(54,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-8.2.png?alt=media&token=8ac21d02-7415-4d03-b143-1d1eb2745ba2',18),(55,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-9.png?alt=media&token=878df3be-5305-4d7e-849a-7838164dbfab',19),(56,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-9.1.png?alt=media&token=261e52a2-c19e-478b-8e37-705fe24c0bd1',19),(57,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-9.2.png?alt=media&token=3c9742f1-4ded-4589-8949-eca9916d990f',19),(58,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-10.png?alt=media&token=399327b1-43cf-40b6-b30d-2f3ffb01c0c8',20),(59,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-10.1.png?alt=media&token=085d9d96-06a7-4512-9585-41b810c09c3c',20),(60,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-10.2.png?alt=media&token=edd00f00-5355-41d0-8441-6e3f2e303f8c',20),(61,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-1.png?alt=media&token=1b2f6e36-0c99-42bf-ac8b-c9a501ef6297',21),(62,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-1.1.png?alt=media&token=461da184-de12-4de9-b5cc-71092c234cb9',21),(63,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-1.2.png?alt=media&token=c7f13fc1-6fe7-4745-bd31-58b0dab3c4d6',21),(64,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-2.png?alt=media&token=820e0024-677e-463f-86b8-52d48d0c2d80',22),(65,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-2.1.png?alt=media&token=e929aff4-21d9-4d5c-ad0a-162284770fdc',22),(66,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-2.2.png?alt=media&token=6450f37f-2b60-4f11-adf9-a6ee45933442',22),(67,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-3.png?alt=media&token=2b6f5016-1d64-4025-bcec-e274167cce6a',23),(68,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-3.1.png?alt=media&token=2848efeb-cef3-4de6-94a7-f2c8b9485cbf',23),(69,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-3.2.png?alt=media&token=b6e9d66f-1cff-4aee-a190-c28725de7e09',23),(70,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-4.png?alt=media&token=a6fe812c-e61c-4995-89bc-61b9cf9be2ff',24),(71,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-4.1.png?alt=media&token=bfbdb610-2aa1-4e78-87b3-b9e0fd9d3496',24),(72,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-4.2.png?alt=media&token=660877fa-657c-4d69-9fae-f1e4ff43d672',24),(73,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-5.png?alt=media&token=21a79f5d-fec6-4ca9-b70f-c869e134def6',25),(74,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-5.1.png?alt=media&token=f81352a6-e827-440d-90f6-7414c78387a0',25),(75,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-5.2.png?alt=media&token=d3ff4108-2536-4acc-971e-1d58997bf264',25),(76,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-6.png?alt=media&token=06e19c31-b680-41a1-9800-c1379e250371',26),(77,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-6.1.png?alt=media&token=35e1b3a8-8e67-42e9-9587-46dd6965a921',26),(78,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-6.2.png?alt=media&token=8f5b2fef-1480-4dfe-93e8-e77361fb9c4f',26),(79,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-7.png?alt=media&token=592e0c4e-cf19-4df9-aa8b-942d95434b52',27),(80,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-7.1.png?alt=media&token=3a0277f7-b7b4-4d2f-b582-4822145f9bb4',27),(81,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-7.2.png?alt=media&token=7c7285f1-2e7c-4c70-80f7-f430da3936df',27),(82,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-8.png?alt=media&token=999ce1c4-3d6b-4c43-90e1-a6543cdc5234',28),(83,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-8.1.png?alt=media&token=d9a22713-ad11-4f7f-b1c5-46a569c1682f',28),(84,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-8.2.png?alt=media&token=9d0c380d-0970-4732-a519-d2630a64dd85',28),(85,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-9.png?alt=media&token=9d722b75-8101-4df9-a6da-681253a6feb7',29),(86,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-9.1.png?alt=media&token=46603b61-2c2a-4037-8ee3-575ba687fca2',29),(87,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-9.2.png?alt=media&token=c454f905-caba-4b98-ade3-ded68792b4da',29),(88,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-10.png?alt=media&token=4568f7e1-329a-4b3c-b616-f2d025a4754e',30),(89,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-10.1.png?alt=media&token=b40b6ee2-4af8-4e4b-b768-b2f822266783',30),(90,'https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-10.2.png?alt=media&token=4d2e74a9-6e62-4ff3-95a0-9aa00c714353',30);
/*!40000 ALTER TABLE `hinh_san_pham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoa_don`
--

DROP TABLE IF EXISTS `hoa_don`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hoa_don` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ghi_chu` varchar(800) DEFAULT NULL,
  `ngay` datetime DEFAULT NULL,
  `thanh_toan` int(11) DEFAULT NULL,
  `tong_tien` double DEFAULT NULL,
  `trang_thai` int(11) DEFAULT NULL,
  `khach_hang_id` int(11) DEFAULT NULL,
  `nhan_vien_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfvowmias4ycehn19gyv8t5dys` (`khach_hang_id`),
  KEY `FKf3pkyuwrjwl5ru53n1r6fieih` (`nhan_vien_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoa_don`
--

LOCK TABLES `hoa_don` WRITE;
/*!40000 ALTER TABLE `hoa_don` DISABLE KEYS */;
INSERT INTO `hoa_don` VALUES (1,'','2018-05-20 00:00:00',0,8640000,1,1,2),(2,'','2018-05-21 00:00:00',0,8640000,1,2,4),(3,'','2018-05-22 00:00:00',0,10260000,1,3,3),(4,'','2018-05-23 00:00:00',0,7020000,1,4,4),(5,'','2018-05-24 00:00:00',0,7020000,1,5,5),(6,'','2018-05-25 00:00:00',0,10260000,1,6,3),(7,'','2018-05-26 00:00:00',0,7020000,1,7,3),(8,'','2018-05-27 00:00:00',0,10260000,1,1,4),(9,'','2018-05-28 00:00:00',0,7020000,1,11,2),(10,'','2018-05-29 00:00:00',0,10260000,1,9,4),(11,'','2018-05-30 00:00:00',0,10260000,1,10,3),(12,'','2018-06-01 00:00:00',0,7020000,1,3,4),(13,'','2018-06-02 00:00:00',0,8640000,1,5,4),(14,'','2018-06-03 00:00:00',0,8640000,1,7,3),(15,'','2018-06-04 00:00:00',0,7020000,1,1,4),(16,'','2018-06-05 00:00:00',0,7020000,1,11,5),(17,'','2018-06-06 00:00:00',0,10260000,1,9,2),(18,'','2018-06-07 00:00:00',0,7020000,1,10,2),(19,'','2018-06-08 00:00:00',0,8640000,1,3,4),(20,'','2018-06-09 00:00:00',0,8640000,1,5,4),(21,'','2018-06-10 00:00:00',0,8640000,0,7,1),(22,'','2018-06-11 00:00:00',0,7020000,0,1,1),(23,'','2018-06-12 00:00:00',0,10260000,0,11,1),(24,'','2018-06-13 00:00:00',0,8640000,0,9,1),(25,'','2018-06-14 00:00:00',0,8640000,0,10,1);
/*!40000 ALTER TABLE `hoa_don` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khach_hang`
--

DROP TABLE IF EXISTS `khach_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `khach_hang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dia_chi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_account` varchar(255) DEFAULT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL,
  `ten_khach_hang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khach_hang`
--

LOCK TABLES `khach_hang` WRITE;
/*!40000 ALTER TABLE `khach_hang` DISABLE KEYS */;
INSERT INTO `khach_hang` VALUES (1,'123 Hoàng Hoa Thám Q.PN, TP.HCM','conque6@gmail.com','','01698300191','Khoa'),(2,'99 Lê Lợi Q.1, TP.HCM','hoanv@gmail.com','','01698309267','Hòa'),(3,'13 Lạc Long Quân Q.11, TP.HCM','longvh1@gmail.com','','01690127956','Long'),(4,'12 Trần Khánh Dư Q.PN, TP.HCM','laitruong.bmw@gmail.com','','01609307956','Lai'),(5,'621 Hoàng Sa Q.PN, TP.HCM','conque6@gmail.com','','01698075956','Ngọc'),(6,'130 Đề Thám Q.1, TP.HCM','conque6@gmail.com','','01698307907','Nhi'),(7,'129 Phan Văn Trị Q.GV, TP.HCM','conque6@gmail.com','','01692007956','Hằng'),(8,'399 Kha Vạn Cân Q.TĐ, TP.HCM','conque6@gmail.com','','01698307905','Nga'),(9,'199 Lê Văn Sỹ Q.PN, TP.HCM','conque6@gmail.com','','01698307556','Linh'),(10,'555 Hai Bà Trưng Q.3, TP.HCM','conque6@gmail.com','','01698307856','Phúc'),(11,'1230 Phạm Văn Đồng Q.TĐ, TP.HCM','conque6@gmail.com','','01698307956','Am');
/*!40000 ALTER TABLE `khach_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kich_thuoc`
--

DROP TABLE IF EXISTS `kich_thuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kich_thuoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_kich_thuoc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kich_thuoc`
--

LOCK TABLES `kich_thuoc` WRITE;
/*!40000 ALTER TABLE `kich_thuoc` DISABLE KEYS */;
INSERT INTO `kich_thuoc` VALUES (1,'35'),(2,'36'),(3,'37'),(4,'38'),(5,'39'),(6,'40'),(7,'41'),(8,'42'),(9,'43'),(10,'44'),(11,'45');
/*!40000 ALTER TABLE `kich_thuoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai_giay`
--

DROP TABLE IF EXISTS `loai_giay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loai_giay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_loai` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai_giay`
--

LOCK TABLES `loai_giay` WRITE;
/*!40000 ALTER TABLE `loai_giay` DISABLE KEYS */;
INSERT INTO `loai_giay` VALUES (1,'Adidas'),(2,'Nike'),(3,'NB');
/*!40000 ALTER TABLE `loai_giay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhan_vien`
--

DROP TABLE IF EXISTS `nhan_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nhan_vien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dia_chi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gioi_tinh` int(11) DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL,
  `ten_nhan_vien` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhan_vien`
--

LOCK TABLES `nhan_vien` WRITE;
/*!40000 ALTER TABLE `nhan_vien` DISABLE KEYS */;
INSERT INTO `nhan_vien` VALUES (1,'1170 Trường Sa, phường 13 Q.Phú Nhuận, TP.HCM','deanqtm@gmail.com',0,'2000-01-01','0949814895','Chu Tường'),(2,'12 Điện Biên Phủ Q.Bình Thạnh, TP.HCM','skynguyen79@gmail.com',1,'1995-02-05','01657154932','Bùi Trần Bảo Ngọc'),(3,'123 Nguyễn Du Q.1, TP.HCM','longvh@gmail.com',1,'1990-01-05','01657154876','Lê Thị Kim Quyên'),(4,'111 Lê Duẩn Q.1, TP.HCM','khoapx@gmail.com',0,'1996-08-05','01650754932','Phạm Xuân Khoa'),(5,'282 Nam Kỳ Khởi Nghĩa Q.3, TP.HCM','laitb@gmail.com',0,'1996-09-05','01657150642','Trượng Bông Lai');
/*!40000 ALTER TABLE `nhan_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quyen`
--

DROP TABLE IF EXISTS `quyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quyen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_quyen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quyen`
--

LOCK TABLES `quyen` WRITE;
/*!40000 ALTER TABLE `quyen` DISABLE KEYS */;
INSERT INTO `quyen` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_NHANVIEN');
/*!40000 ALTER TABLE `quyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quyen_tai_khoan`
--

DROP TABLE IF EXISTS `quyen_tai_khoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quyen_tai_khoan` (
  `tai_khoan_id` int(11) NOT NULL,
  `quyen_id` int(11) NOT NULL,
  KEY `FKhu120lsayydkvly8gw1ghm15r` (`quyen_id`),
  KEY `FK4jj79x0k77fe7iy38kq3kaj7` (`tai_khoan_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quyen_tai_khoan`
--

LOCK TABLES `quyen_tai_khoan` WRITE;
/*!40000 ALTER TABLE `quyen_tai_khoan` DISABLE KEYS */;
INSERT INTO `quyen_tai_khoan` VALUES (1,1),(2,1),(3,2),(4,2);
/*!40000 ALTER TABLE `quyen_tai_khoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `san_pham`
--

DROP TABLE IF EXISTS `san_pham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `san_pham` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chi_tiet` varchar(750) DEFAULT NULL,
  `chiet_khau` double DEFAULT NULL,
  `don_gia` double DEFAULT NULL,
  `ten_san_pham` varchar(255) DEFAULT NULL,
  `loai_giay_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8k1ar3uh98i115geqxi9mlyrh` (`loai_giay_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san_pham`
--

LOCK TABLES `san_pham` WRITE;
/*!40000 ALTER TABLE `san_pham` DISABLE KEYS */;
INSERT INTO `san_pham` VALUES (1,'Giày Adidas NMD R2 Primeknit - Một trong những phối màu thời trang tươi tắn nhất của dòng giày NMD R2 chính hãng .Với công nghệ Prime knit kết hợp với bộ đế boost êm ái đã tạo ra một tuyệt phẩm NMD siêu hot, hãy ghé shop để là một trong những người sở hữu đôi giày NMD PK Black đầu tiên nhé.',0.1,3800000,'Adidas NMD R2 Black and White',1),(2,'Giày Adidas NMD R1 Burgundy and Olive -Một trong những phối màu thời trang tươi tắn nhất của dòng giày NMD R1 chính hãng.Với công nghệ Prime knit kết hợp với bộ đế boost êm ái đã tạo ra một tuyệt phẩm NMD siêu hot, hãy ghé shop để là một trong những người sở hữu đôi giày NMD đầu tiên nhé.',0.1,3800000,'Adidas NMD R1 Burgundy and Olive',1),(3,'Mẫu giày classic huyền thoại của Adidas nay đã được độ thêm bộ đế Bold cao cấp. Nhanh ghé shop để rinh ngay nào các bạn.Cam kết giày chính hãng 100% Bao check, bao test!',0.1,2000000,'Adidas Superstar Bold All White',1),(4,'CLOUDFOAM là một lớp đệm cực nhẹ và mềm mại, hứa hẹn sẽ đem đến một thế hệ giày siêu êm mới cho các bạn trẻ năng động. Như tên gọi của concept ‘Step-In Comfort’ (tạm dịch: trải nghiệm sự thoải mái), người mang sẽ có cảm giác nhẹ nhàng và êm ái ngay khi chạm vào CLOUDFOAM. Các đôi giày adidas neo CLOUDFOAM mang đến cảm giác thoải mái nhất cho đôi chân nhờ lớp đế ngoài giảm sốc EVA và lớp đệm lót ôm sát lòng bàn chân, phù hợp cho mọi hoạt động hàng ngày.',0.1,3800000,'ADIDAS CLOUDFOAM SPEED FOOTWEAR',1),(5,'Pure Boost ZG Prime được kết hợp với hàng ngàn viên nang boost, giúp hoàn trả năng lượng hoàn hảo qua từng bước chạy, mang đến trải nghiệm chạy bộ tuyệt vời.',0.1,3800000,'MEN PURE BOOST ZG PRIME SHOES',1),(6,'Pure Boost – dòng sản phẩm Performance + Casual được yêu thích nhất trong tất cả các mẫu sản phẩm Boost của adidas sắp sửa quay trở lại với một diện mạo mới mạnh hơn và những update đem lại hiệu năng tốt hơn.',0.1,2000000,'ZG BOUNCE TRAINER SHOES',1),(7,'Giày thể thao nam Adidas neo lite racer shoes Những “chàng giày” này được thiết kế nhằm mang đến sự dễ chịu và thoải mái. Sải bước rộng và nhẹ nhàng. Thiết kế dựa trên cảm hứng giày running 2 lớp, một lớp lưới bên trên (two-tone mesh upper)',0.1,3800000,'LITE RACER SHOES',1),(8,'CLOUDFOAM là một lớp đệm cực nhẹ và mềm mại, hứa hẹn sẽ đem đến một thế hệ giày siêu êm mới cho các bạn trẻ năng động. Như tên gọi của concept ‘Step-In Comfort’ (tạm dịch: trải nghiệm sự thoải mái), người mang sẽ có cảm giác nhẹ nhàng và êm ái ngay khi chạm vào CLOUDFOAM. Các đôi giày adidas neo CLOUDFOAM mang đến cảm giác thoải mái nhất cho đôi chân nhờ lớp đế ngoài giảm sốc EVA và lớp đệm lót ôm sát lòng bàn chân, phù hợp cho mọi hoạt động hàng ngày.',0.1,3800000,'CLOUDFOAM SPEED SHOES',1),(9,'Càng đơn giản càng đẹp. Những đôi giày này bị tước bỏ những yếu tố cần thiết. Chỉ cần da tổng hợp mịn màng, đục lỗ 3-sọc và kéo gót chân.\nÍt hơn là nhiều hơn. Những đôi giày được tháo bỏ để các yếu tố cần thiết. Chỉ mịn da tổng hợp, đục lỗ 3-Stripes và kéo gót chân.\nCàng đơn giản càng đẹp. Những đôi giày được lột đến yếu tố cần thiết. Chỉ cần mịn da tổng hợp, đục 3-Stripes và kéo gót chân.',0.1,2000000,'ADVANTAGE CLEAN VS SHOES',1),(10,'Giày đá bóng Adidas X 17.1 FG- White/ Energy Blue/ Clear Grey, giày đá bóng chính hãng, mã sản phẩm: S82285, giày đá bóng Adidas X, giày đá bóng sân cỏ tự nhiên…  dòng giày Adidas X đặc chủng cho lối chơi tốc độ, trọng lượng cực nhẹ, chỉ khoảng 190gram/chiếc',0.1,3800000,'ADIDAS X 15.3 FG/AG FOOTWEAR',1),(11,'Air Presto - Mẫu giày Nike chính hãng đã trở lại với phối màu đỉnh cao Triple Black  Quan trọng là giá vẫn rất mềm cho ae nhé. Đây là một trong những dòng giày Nike bán chạy nhất từ trước tới nay, với thiết kế hiện đại và cực kỳ êm ái. Upper làm bằng chất liệu vải thun, tạo cảm giác ôm chân cũng như dễ hoạt động',0.1,3800000,'Nike Air Presto Triple Black',2),(12,'Giày Nike Air max 90 chính hãng vừa cập bến shop với phối màu xám mới nhất ! Upper da cao cấp, cùng với đế air nổi tiếng của Nike ! Hàng chính hãng 100% Full box, full tem tag. Bao check, bao test. Cam kết đền tiền x3 khi khách hàng phát hiện không chính hãng ! ',0.1,2000000,'Nike Air Max 90 White and Red',2),(13,'Giày Nike Air Uptempo chính hãng - Cái tên đã làm mưa làm gió suốt cả một thời gian dài trong cộng đồng giày. Thiết kế chữ Air ôm sát phần upper thực sự là một thiết kế đỉnh của đỉnh, gọn nhẹ đề cao tính thời trang của Nike. Đế Air siêu êm ái cũng là một điểm nổi bật của đôi Air Uptempo này! ',0.1,3800000,'Nike Air Uptempo Thunder Blue',2),(14,'Chất liệu cao cấp, đặc biệt và độc quyền: phổ biến là EVA (ethylene vinyl acetate), PU (polyurethane), Lunarlon, Cushlon, Phylon,….\nThiết kế nén khí làm chân tiếp đất “êm” hơn, giúp giảm bớt đi lực tác động giúp bạn được bảo vệ tránh dẫn đến các chấn thương từ cường độ hoạt động cao. \nThích hợp cho nhiều độ tuổi, mẫu mã đa dạng phong phú phù hợp với mọi hoàng cảnh và hoạt động.\nCông nghệ giày: Nike Zoom.',0.1,3800000,'Nike Romaleos 3 Americana',2),(15,'Chất liệu cao cấp, đặc biệt và độc quyền: phổ biến là EVA (ethylene vinyl acetate), PU (polyurethane), Lunarlon, Cushlon, Phylon,….\nThiết kế nén khí làm chân tiếp đất “êm” hơn, giúp giảm bớt đi lực tác động giúp bạn được bảo vệ tránh dẫn đến các chấn thương từ cường độ hoạt động cao. \n',0.1,2000000,'Nike Metcon 4 iD',2),(16,'Đôi giày sử dụng đế giữa mang công nghệ Dynamic Support với mật độ kép lõi Phylon và Cushlon, tăng cường đệm dưới chân đồng thời làm giảm đáng kể khả năng bàn chân bị lật má trong.Upper lưới được chế tác linh hoạt và thích ứng tốt với bàn chân, cùng công nghệ Flywire giữ bàn chân cực kì cố định. Ngoài ra, giày Nike Air Zoom Structure 21 có đế ngoài vân waffle cho độ bền và độ bám cao trên đường chạy.',0.1,3800000,'Nike Varsity Complete Trainer',2),(17,'Giày tập luyện của Nike Lunar Fingertrap TR Men có thiết kế dệt độc đáo và đệm lót cho cảm giác thoải mái, giống như vớ và cảm giác đáp ứng trong suốt quá trình tập luyện của bạn.',0.1,3800000,'Nike Lunar Fingertrap TR',2),(18,'Giày đào tập luyện cho nam giới của Nike Zoom Command College (Ohio State) là hoàn hảo cho ngày thi đấu hoặc phòng tập thể dục. Nó có công nghệ Flywire để hỗ trợ khóa xuống và đệm Nike Zoom Air cho cảm giác nhẹ, nhạy cảm trong các bài luyện tập cường độ cao như luyện tập chéo và đấm bốc.',0.1,2000000,'Nike Zoom Command College (Ohio State)',2),(19,'Giày tập luyện của nam giới Nike Air Trainer 180 kết hợp đệm phản ứng với rãnh flex sâu để hấp thụ tác động vượt trội và chuyển động tự nhiên trong khi tập luyện cường độ cao.',0.1,3800000,'Nike Air Trainer 180',2),(20,'Huấn luyện trọng lượng cơ thể của Nike Free Trainer V7, Gym Gym mang đến sự ổn định và linh hoạt mà bạn cần cho các bài luyện tập cường độ cao — và bổ sung tính linh hoạt đáng kinh ngạc của bản Nike Free.',0.1,3800000,'Nike Free Trainer V7',2),(21,'NB FWMEN - Mẫu giày New Balance chính hãng đã trở lại với phối màu đỉnh cao Triple Black  Quan trọng là giá vẫn rất mềm cho ae nhé. Đây là một trong những dòng giày Nike bán chạy nhất từ trước tới nay, với thiết kế hiện đại và cực kỳ êm ái. Upper làm bằng chất liệu vải thun, tạo cảm giác ôm chân cũng như dễ hoạt động',0.1,2000000,'NB FW MEN CUSHIONING MRUSHYR US7.5',3),(22,'NB CUSHIONING chính hãng vừa cập bến shop với phối màu xám mới nhất ! Upper da cao cấp, cùng với đế NB nổi tiếng của Nike ! Hàng chính hãng 100% Full box, full tem tag. Bao check, bao test. Cam kết đền tiền x3 khi khách hàng phát hiện không chính hãng ! ',0.1,3800000,'NB FW MEN CUSHIONING MSVRCFLF US7',3),(23,'Giày NB CLASSIC chính hãng - Cái tên đã làm mưa làm gió suốt cả một thời gian dài trong cộng đồng giày. Thiết kế chữ A ôm sát phần upper thực sự là một thiết kế đỉnh của đỉnh, gọn nhẹ đề cao tính thời trang của Nike. Đế Air siêu êm ái cũng là một điểm nổi bật của đôi Air Uptempo này! ',0.1,3800000,'NB FW MEN CLASSIC MRL996KE US8.5',3),(24,'Lấy bánh răng các chuyên gia mặc, với các cao su 4040v4 cao su đúc. Giày có tính năng tương tự như bền, linh hoạt / lưới trên như phiên bản dành cho người lớn. Cleat cũng có hỗ trợ chân giữa cao cấp, cleats thấp cho độ bám tuyệt vời và đệm đặt chiến lược để bạn có thể tấn công các tấm với sự tự tin.',0.1,2000000,'Junior 4040v4 Rubber Molded',3),(25,'Hook loop 680v5 của nam giới khuyến khích thời gian chơi không sợ hãi bằng cách biến đổi phong cách và hiệu suất của chiếc giày chạy bộ phổ biến 680 của chúng tôi thành một chiếc sneaker mà anh ấy có thể đeo mỗi ngày. Với đệm đệm ABZORB của nó để hỗ trợ trong việc hấp thụ tác động và da và lưới trên ôm chân với trọng lượng nhẹ, thoải mái thở, giày này chắc chắn sẽ là một yêu thích tất cả các năm dài. Một kết nối hook-and-loop thuận tiện giúp anh ta di chuyển trong nháy mắt.',0.1,3800000,'Hook and Loop 680v5',3),(26,'Fresh Foam Lazr khiến họ trông giống những người thách thức nghiêm túc. Phiên bản trẻ em này của một chiếc giày thể thao cao cấp mang lại sự thoải mái và hỗ trợ mà họ cần để bắt đầu đẩy giới hạn vật lý của họ. Một hình bóng tiến bộ trong màu sắc nóng nhất hiện nay giúp trẻ em trên các cạnh cắt của thời trang, và xây dựng bootie slip-on làm cho mặc quần áo một snap.',0.1,3800000,'Fresh Foam Lazr',3),(27,'Trượt trên của chúng tôi Fresh Foam Cruz v2 thể thao chạy giày của nam giới và đi. Được chế tác từ dây kéo co giãn trên đệm Foam sang trọng, giày này mang lại sự thoải mái, dễ chịu cả ngày.',0.1,2000000,'Mens Fresh Foam Cruz v2 Sport',3),(28,'Một số người nói rằng huấn luyện viên mới của Balance Balance 624 không thể tốt hơn. Và họ sẽ sai. Trình bày bản cập nhật 624 với độ linh hoạt cao, đệm nâng cao và chiều rộng rộng hơn bao giờ hết (4E và 6E). Thông số kỹ thuật bao gồm bàn chân EVA, IMEVA (Mút đúc EVA EVA), đệm ABZORB®, chân bên trong và bộ lót Phantom Liner nhẹ của chúng tôi.',0.1,3800000,'Mens New Balance 624',3),(29,'Lối sống suốt ngày đêm của bạn kêu gọi một chiếc giày tối ưu hóa cả phong cách và hiệu suất cho tính linh hoạt cao cấp. 247 Sport của nam giới thêm phong cách thể thao cho cái nhìn hàng ngày của bạn và cung cấp một sự phù hợp cạnh tranh nhất với một phong cách bootie nhẹ và linh hoạt trên. Với cấu hình sạch sẽ và đệm lót cao cấp REVlite, chiếc giày này hoàn toàn phù hợp cho mọi thứ từ ngày làm việc của bạn đến các nhu cầu của cuộc sống hiện đại.',0.1,3800000,'NB 247 Decon',3),(30,'Gói sản phẩm Fresh Foam Cruz Retro Hoodie Pack mang giày chạy êm ái của chúng tôi cho người đàn ông và làm cho nó thoải mái hơn với phần trên được làm bằng vải dệt căng được lấy cảm hứng từ chiếc áo thun yêu thích của bạn. Một chiếc xe đạp dệt ngược chân giữa giúp mang lại một chuyến đi vừa vặn và an toàn, và thiết kế trượt, thuận tiện giúp bạn di chuyển trong tích tắc.',0.1,2000000,'NB 247 LFC',3);
/*!40000 ALTER TABLE `san_pham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tai_khoan`
--

DROP TABLE IF EXISTS `tai_khoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tai_khoan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mat_khau` varchar(255) DEFAULT NULL,
  `ten_tai_khoan` varchar(255) DEFAULT NULL,
  `nhan_vien_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3bvkbbi08dqvq897y5jjs52l` (`nhan_vien_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tai_khoan`
--

LOCK TABLES `tai_khoan` WRITE;
/*!40000 ALTER TABLE `tai_khoan` DISABLE KEYS */;
INSERT INTO `tai_khoan` VALUES (1,'123456','admin1',2),(2,'123456','admin2',3),(3,'123456','user1',4),(4,'123456','user2',5);
/*!40000 ALTER TABLE `tai_khoan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-29 17:08:27
