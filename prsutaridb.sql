-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: prsutaridb
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `asortiman`
--

DROP TABLE IF EXISTS `asortiman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asortiman` (
  `id` varchar(100) NOT NULL,
  `naziv` varchar(45) NOT NULL,
  `cijenaKg` double NOT NULL,
  `idProizvodjaca` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proizvodjacfk_idx` (`idProizvodjaca`),
  CONSTRAINT `proizvodjacfk` FOREIGN KEY (`idProizvodjaca`) REFERENCES `proizvodjac` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asortiman`
--

LOCK TABLES `asortiman` WRITE;
/*!40000 ALTER TABLE `asortiman` DISABLE KEYS */;
INSERT INTO `asortiman` VALUES ('029e366f-fd9f-4119-991c-1592b2524508','Pileca sunka',9,'a77166c7-589e-4fbf-81fd-735866464fc3'),('72f643e3-2861-438f-9740-b03b9cd5458d','Njeguska prsuta',5.94,'25df6ef2-c0c7-4ebb-9309-68deb595a47c'),('81424c99-4044-493b-806b-157b7a78a5fb','Holandska prsuta',3.21,'25df6ef2-c0c7-4ebb-9309-68deb595a47c'),('ace3ca62-aefb-40c3-9d17-00e85a22b380','Mesni narezak',4.1,'a77166c7-589e-4fbf-81fd-735866464fc3'),('d9d81005-b285-4e1c-b560-125eee3757f3','Svinjski vrat',8.88,'25df6ef2-c0c7-4ebb-9309-68deb595a47c');
/*!40000 ALTER TABLE `asortiman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `karakteristikelota`
--

DROP TABLE IF EXISTS `karakteristikelota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `karakteristikelota` (
  `id` varchar(100) NOT NULL,
  `idLota` varchar(100) NOT NULL,
  `naziv` varchar(100) NOT NULL,
  `vrijednost` varchar(100) NOT NULL,
  `vrijemeDodavanja` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lotfk_idx` (`idLota`),
  CONSTRAINT `lotfk` FOREIGN KEY (`idLota`) REFERENCES `lot` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `karakteristikelota`
--

LOCK TABLES `karakteristikelota` WRITE;
/*!40000 ALTER TABLE `karakteristikelota` DISABLE KEYS */;
INSERT INTO `karakteristikelota` VALUES ('af3045b4-19b7-4ada-a58e-3f7813011d56','39edf8e7-c233-4669-a7e5-c56daae5a48f','Datum uvoza','20.08.2021.','2021-11-21 16:58:11'),('c56daae5a48f','39edf8e7-c233-4669-a7e5-c56daae5a48f','Zemlja uvoza','Grcka','2021-11-21 16:58:17');
/*!40000 ALTER TABLE `karakteristikelota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lot`
--

DROP TABLE IF EXISTS `lot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lot` (
  `id` varchar(100) NOT NULL,
  `idAsortimana` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lot`
--

LOCK TABLES `lot` WRITE;
/*!40000 ALTER TABLE `lot` DISABLE KEYS */;
INSERT INTO `lot` VALUES ('39edf8e7-c233-4669-a7e5-c56daae5a48f','029e366f-fd9f-4119-991c-1592b2524508'),('4edab064-2120-4f22-95f5-34fd4eaa11f4','029e366f-fd9f-4119-991c-1592b2524508'),('bd6ea8cc-5b56-4f6c-86c3-7e2ed3157e7d','029e366f-fd9f-4119-991c-1592b2524508');
/*!40000 ALTER TABLE `lot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `napomene`
--

DROP TABLE IF EXISTS `napomene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `napomene` (
  `id` varchar(100) NOT NULL,
  `idproizvoda` varchar(100) NOT NULL,
  `napomena` varchar(100) NOT NULL,
  `vrijemeDodavanja` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `napomene`
--

LOCK TABLES `napomene` WRITE;
/*!40000 ALTER TABLE `napomene` DISABLE KEYS */;
INSERT INTO `napomene` VALUES ('d5a754f5-74fe-474b-b2ea-97fba1313a5c','a7560394-d077-4b04-931f-4e48b99dbd8f','Istekao rok','2021-11-21 17:54:11'),('d5a754f5-74fe-474b-b2ea-97fba7393a5c','a7560394-d077-4b04-931f-4e48b99dbd8f','Pakovanje osteceno tokom transporta do prodavnice','2021-11-21 16:58:11'),('d5a754f5-74fe-474b-b2ea-97fba7393f5c','a7560394-d077-4b04-931f-4e48b99dbd8f','Dobar proizvod','2021-11-21 16:52:11');
/*!40000 ALTER TABLE `napomene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proizvod`
--

DROP TABLE IF EXISTS `proizvod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proizvod` (
  `idProizvoda` varchar(100) NOT NULL,
  `lotid` varchar(100) NOT NULL,
  PRIMARY KEY (`idProizvoda`),
  KEY `lotidfk_idx` (`lotid`),
  CONSTRAINT `lotidfk` FOREIGN KEY (`lotid`) REFERENCES `lot` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proizvod`
--

LOCK TABLES `proizvod` WRITE;
/*!40000 ALTER TABLE `proizvod` DISABLE KEYS */;
INSERT INTO `proizvod` VALUES ('59f3353d-6f61-4b59-beaa-f0ae692a373e','39edf8e7-c233-4669-a7e5-c56daae5a48f'),('a7560394-d077-4b04-931f-4e48b99dbd8f','39edf8e7-c233-4669-a7e5-c56daae5a48f'),('eced7149-40bb-4aac-b20a-8d75964b2856','39edf8e7-c233-4669-a7e5-c56daae5a48f');
/*!40000 ALTER TABLE `proizvod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proizvodjac`
--

DROP TABLE IF EXISTS `proizvodjac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proizvodjac` (
  `id` varchar(100) NOT NULL,
  `nazivProizvodjaca` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proizvodjac`
--

LOCK TABLES `proizvodjac` WRITE;
/*!40000 ALTER TABLE `proizvodjac` DISABLE KEYS */;
INSERT INTO `proizvodjac` VALUES ('25df6ef2-c0c7-4ebb-9309-68deb595a47c','Max Company DOO'),('3e521aa6-0cb8-4604-9f8b-b8a362f30c49','Square meat'),('a77166c7-589e-4fbf-81fd-735866464fc3','Tiger food');
/*!40000 ALTER TABLE `proizvodjac` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-26 13:30:25
