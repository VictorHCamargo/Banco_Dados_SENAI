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
-- Dumping data for table `aulas`
--

LOCK TABLES `aulas` WRITE;
/*!40000 ALTER TABLE `aulas` DISABLE KEYS */;
INSERT INTO `aulas` (`id_aula`, `data_aula`, `tipo_aula`, `id_unidade`, `descricao_aula`) VALUES (11,'2025-02-01 07:00:00','Musculacao',1,'Treino focado em hipertrofia utilizando maquinas e pesos livres'),(12,'2025-02-01 08:30:00','Spinning',2,'Aula de ciclismo indoor com alta intensidade e intervalos'),(13,'2025-02-01 10:00:00','Yoga',3,'Pratica de posturas para melhorar flexibilidade e respiracao'),(14,'2025-02-01 11:30:00','Pilates',1,'Exercicios de controle corporal e fortalecimentos do core'),(15,'2025-02-02 18:00:00','Funcional',4,'Treino em circuito com foco em resistencia e agilidade'),(16,'2025-02-02 19:30:00','Zumba',5,'Aula ritmada com coreografias de alta energia'),(17,'2025-02-03 07:00:00','Cross Training',3,'Treino misto envolvendo levantamento de peso e condicionamento'),(18,'2025-02-03 09:00:00','Alongamento',2,'Sessao focada em extensao muscular e relaxamento'),(19,'2025-02-03 17:00:00','Boxe',4,'Treino de golpes, defesa e condicionamento cardiaco'),(20,'2025-02-03 18:30:00','HIIT',1,'Aula de alta intensidade com intervalos curtos para queima rapida de calorias');
/*!40000 ALTER TABLE `aulas` ENABLE KEYS */;
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
