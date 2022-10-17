CREATE DATABASE  IF NOT EXISTS `libros` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `libros`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: libros
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `lib_id` int NOT NULL AUTO_INCREMENT,
  `lib_nombre` varchar(45) NOT NULL,
  `lib_autor` varchar(45) NOT NULL,
  `lib_editorial` varchar(45) NOT NULL,
  `lib_descripcion` varchar(5000) NOT NULL,
  PRIMARY KEY (`lib_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'Orgullo y Prejuicio','Jane Austen.','Editores Mexicanos Unidos','Orgullo y prejuicio envuelve en su historia el amor, el orgullo, los prejuicios, la inocencia, la amistad, la moralidad... Sin lugar a dudas, una obra como pocas. Esta obra maestra de Austen muestra cómo las relaciones originadas por el amor y el dinero pueden ser promiscuas y sórdidas, mientras son encubiertas por el velo de la sociedad burguesa, volviéndose la esencia de su trama la vida de la burguesía inglesa de comienzos de siglo xix y haciendo de la misma un gran clásico en la historia de la literatura.'),(3,'No hay dos sin tres','Francine Zapater','Createspace Independent Publishing Platform','No hay dos sin tres es una novela romántica, divertida y contemporánea, en la que los protagonistas de dicha historia sufren las crueles bromas del destino a causa de los encuentros y desencuentros que experimentaran a lo largo del tiempo. Esta historia habla de segundas y terceras oportunidades, y de ese tren, llamado amor, que en contadas ocasiones hace camino de ida y vuelta para recoger a viajeros despistados.'),(4,'El diario de Ana Frank','Anne Frank','Dante','Ana Frank es una niña judía de trece años de edad, amante de los libros y con una gran curiosidad por el mundo que la rodea. El día de su cumpleaños, se levantó con gran entusiasmo para ver los obsequios que le habían hecho; y, entre esos regalos, encuentra el de su mayor agrado: un diario, al mismo que llamará Kitty.');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-17  0:05:19
