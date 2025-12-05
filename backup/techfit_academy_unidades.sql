CREATE DATABASE  IF NOT EXISTS `techfit_academy` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `techfit_academy`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: techfit_academy
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Dumping data for table `unidades`
--

LOCK TABLES `unidades` WRITE;
/*!40000 ALTER TABLE `unidades` DISABLE KEYS */;
INSERT INTO `unidades` (`cep_unidade`, `nome_unidade`, `id_unidade`) VALUES ('01001-000','TECHFIT Centro SP',1),('13040-001','TECHFIT Campinas Norte',2),('20010-020','TECHFIT Rio Centro',3),('30130-010','TECHFIT Belo Horizonte Savassi',4),('40015-000','TECHFIT Salvador Pituba',5),('80010-100','TECHFIT Curitiba Batel',6),('88015-210','TECHFIT Florianópolis Beira-Mar',7),('70040-010','TECHFIT Brasília Asa Sul',8),('69005-070','TECHFIT Manaus Centro',9),('66010-000','TECHFIT Belém Batista Campos',10),('59020-300','TECHFIT Natal Tirol',11),('64001-030','TECHFIT Teresina Centro',12),('79002-200','TECHFIT Campo Grande Centro',13),('86020-060','TECHFIT Londrina Gleba Palhano',14),('97010-000','TECHFIT Santa Maria Centro',15),('23233-222','Techfit Cosmopolis 2',16),('23233-222','Techfit Cosmopolis 2',17),('23233-222','Techfit Cosmopolis 2',18),('01001-000','TECHFIT Centro SP',20),('13040-001','TECHFIT Campinas Norte',21),('20010-020','TECHFIT Rio Centro',22),('30130-010','TECHFIT Belo Horizonte Savassi',23),('40015-000','TECHFIT Salvador Pituba',24),('80010-100','TECHFIT Curitiba Batel',25),('88015-210','TECHFIT Florianópolis Beira-Mar',26),('70040-010','TECHFIT Brasília Asa Sul',27),('69005-070','TECHFIT Manaus Centro',28),('66010-000','TECHFIT Belém Batista Campos',29),('59020-300','TECHFIT Natal Tirol',30),('64001-030','TECHFIT Teresina Centro',31),('79002-200','TECHFIT Campo Grande Centro',32),('86020-060','TECHFIT Londrina Gleba Palhano',33),('97010-000','TECHFIT Santa Maria Centro',34),('13150-000','TECHFIT Cosmópolis',35),('13150-000','TECHFIT Cosmópolis',36),('13150-000','TECHFIT Cosmópolis',37),('13150-000','TECHFIT Cosmópolis',38),('13150-000','TECHFIT Cosmópolis',39),('13150-000','TECHFIT Cosmópolis',40),('13150-000','TECHFIT Cosmópolis',41),('13150-000','TECHFIT Cosmópolis',42),('13150-000','TECHFIT Cosmópolis',43);
/*!40000 ALTER TABLE `unidades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-05 13:27:31
