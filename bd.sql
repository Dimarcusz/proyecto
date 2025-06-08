-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: backenddata
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `urlImagen` varchar(255) DEFAULT NULL,
  `ordenId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,NULL,NULL,2,'2025-06-05 21:32:13','2025-06-05 21:32:13'),(2,NULL,NULL,2,'2025-06-05 21:36:24','2025-06-05 21:36:24'),(3,NULL,NULL,2,'2025-06-05 21:37:29','2025-06-05 21:37:29'),(4,'jd.jpg','uploads/1749159595609-559558755.jpg',2,'2025-06-05 21:39:55','2025-06-05 21:39:55'),(5,'1000000018.jpg','uploads/1749167232626-815697912.jpg',12,'2025-06-05 23:47:12','2025-06-05 23:47:12'),(6,'jd.jpg','https://res.cloudinary.com/drnggz5mm/image/upload/v1749168723/ordenes_images/icluymnirwppvysrjgtn.jpg',2,'2025-06-06 00:12:03','2025-06-06 00:12:03'),(7,'1000000018.jpg','https://res.cloudinary.com/drnggz5mm/image/upload/v1749168790/ordenes_images/kmqhpojaagwvduuzvj3j.jpg',13,'2025-06-06 00:13:10','2025-06-06 00:13:10'),(8,'1000000018.jpg','https://res.cloudinary.com/drnggz5mm/image/upload/v1749169322/ordenes_images/duys9v5qdciuvivd0coz.jpg',5,'2025-06-06 00:22:02','2025-06-06 00:22:02'),(9,'1000000018.jpg','https://res.cloudinary.com/drnggz5mm/image/upload/v1749169356/ordenes_images/uc9l6e8drmaj2hmvoqeh.jpg',5,'2025-06-06 00:22:36','2025-06-06 00:22:36');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventarios`
--

DROP TABLE IF EXISTS `inventarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventarios`
--

LOCK TABLES `inventarios` WRITE;
/*!40000 ALTER TABLE `inventarios` DISABLE KEYS */;
INSERT INTO `inventarios` VALUES (1,'Martillos',8,'Marca Oiler','2025-05-31 03:14:07','2025-05-31 03:14:07'),(2,'Silicon',30,'Marca Oster','2025-06-06 04:38:46','2025-06-06 05:00:49');
/*!40000 ALTER TABLE `inventarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes`
--

DROP TABLE IF EXISTS `ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuarioId` int(11) DEFAULT NULL,
  `nombreCliente` varchar(255) DEFAULT NULL,
  `telefonoCliente` int(11) DEFAULT NULL,
  `emailCliente` varchar(255) DEFAULT NULL,
  `modeloPc` varchar(255) DEFAULT NULL,
  `numeroSeriePc` double DEFAULT NULL,
  `estadoInicial` varchar(255) DEFAULT NULL,
  `accesoriosEntregados` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
INSERT INTO `ordenes` VALUES (1,3,'Jose Perez',33130902,'jose123@gmail.com','Mac',109010,'Falla bateria','Cargador','recien llegada','2025-05-30 05:56:03','2025-06-05 03:25:53'),(2,3,'Jose cHACON',33130901,'jose123@gmail.com','Mac',109010,'Falla bateria','Cargador','recien llegada','2025-05-30 05:56:03','2025-06-03 03:40:47'),(3,4,'Jose cHACON',33130901,'jose123@gmail.com','Mac',109010,'Falla bateria','Cargador','recien llegada','2025-05-30 05:56:03','2025-06-05 03:40:38'),(4,4,'Jose cHACON',33130901,'jose123@gmail.com','Mac',109010,'Falla bateria','Cargador','recien llegada','2025-06-05 03:40:53','2025-06-05 03:40:53'),(5,2,'Mariole',2147483647,'dasdsadsad','asdsadsad',23123123,'12312qwdqweqwe','Cargador, Mouse, Teclado','Recientemente entregado','2025-06-05 03:44:00','2025-06-06 01:15:19'),(6,2,'dasdsads',123123213,'dasdsadsad','dsadsad',231233,'weqwewqewqewqe','Cargador, Teclado, Mouse, Bolso','En proceso','2025-06-05 21:05:59','2025-06-05 21:05:59'),(7,2,'12312312',123213123,'123123123','12321312312',3123123,'3213123123','Cargador','En proceso','2025-06-05 21:13:24','2025-06-05 21:13:24'),(8,2,'312312312',3123123,'123123123','12312312',3123123,'123123123','Mouse','En proceso','2025-06-05 21:19:26','2025-06-05 21:19:26'),(9,2,'sadsadsa',2313123,'12312312','3123123',12312312,'3123213','Cargador','En proceso','2025-06-05 21:40:25','2025-06-05 21:40:25'),(10,2,'213123',12312312,'3123123','123123213',312321,'3123123','Cargador','En proceso','2025-06-05 21:43:37','2025-06-05 21:43:37'),(11,2,'',0,'','123123123',123123,'123123','Cargador','En proceso','2025-06-05 23:41:01','2025-06-05 23:41:01'),(12,2,'',0,'','3213123',123123,'123213','Cargador','En proceso','2025-06-05 23:47:12','2025-06-05 23:47:12'),(13,2,'',0,'','123123',3123123,'13123','Cargador','En proceso','2025-06-06 00:13:09','2025-06-06 00:13:09'),(14,2,'',0,'1231233123123','',12312321,'123123\n\n','Cargador, Mouse, Teclado','Recien llegada','2025-06-06 01:18:07','2025-06-06 01:18:07');
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `nacimiento` datetime DEFAULT NULL,
  `accesoTotal` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (2,'Jose','Martinez','jose123@gmail.com','123456789',1,'2611-09-19 02:59:03',1,'2025-05-31 02:56:24','2025-05-31 02:56:24'),(3,'Manuel','Martinez','jose12345@gmail.com','987654321',1,'2611-09-19 02:59:03',0,'2025-05-31 06:30:25','2025-05-31 06:30:59');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-07 21:33:04
