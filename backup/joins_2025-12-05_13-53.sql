-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: joins
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `joins`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `joins` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `joins`;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `codcli` char(3) NOT NULL,
  `nome_cliente` varchar(40) NOT NULL,
  `endereco_cliente` varchar(50) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `estado` char(2) NOT NULL,
  `cep` char(9) NOT NULL,
  PRIMARY KEY (`codcli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('100','MICROS INFORMATICA S/A','R. DAS PALMEIRAS, 4 - LOJA 2','SAO PAULO','SP','01226-010'),('150','MARCONDES E IRMAO LTDA.','R. DO ORATORIO, 66','ROSARIO OESTE','MT','78470-010'),('170','Posto Brasil LTDA.','AV. Imperio ,85','Guagirus','BA','42837-000'),('230','SUPERMERCADO BOTAFOGO','R. DA LAGOA, 999','RIO DAS OSTRAS','RJ','28890-540'),('250','Banco Barca S/A','R. VITO, 34','São Sebastião','CE','62380-000'),('300','PCTEC - MICROCOMPUTADORES S/A.','R. CAIS DO PORTO, ARMAZEM 3','SANTOS','SP','11000-005'),('340','TRANSP. CARGA PESADA LTDA.','AV. DOS AUTONOMISTAS, 1000','OSASCO','SP','06020-010'),('500','JOSE DANTAS E FILHOS S/C LTDA.','AV. IPIRANGA, 1000','LUCRECIA','RN','59805-010'),('550','ROTRAM COMERCIAL LTDA.','R. DAS PALMEIRAS, 45 - CJ 10','SAO PAULO','SP','01226-010'),('750','IMOBILIARIA PAVAO','AV. BRASIL, 105','RIO DO PRADO','MG','39940-111'),('800','DOCEIRA PAO DE ACUCAR','R. MARTINS PENA, 200','SANTO ANDRE','SP','09190-700'),('820','Mecaninca Sao Paulo','R. Do Macuco,99','Santo Antonio','ES','29810-020'),('860','ASSIS CONTABIL S/C LTDA.','R. DO MONUMENTO, 550','SANTO AMARO','BA','44200-090'),('990','METALURGICA FOGO E FERRO','R. ARTUR BERNARDES, 3500','SANTO ANDRE','SP','09193-410');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ex`
--

DROP TABLE IF EXISTS `ex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ex` (
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ex`
--

LOCK TABLES `ex` WRITE;
/*!40000 ALTER TABLE `ex` DISABLE KEYS */;
INSERT INTO `ex` VALUES ('Ana'),('Bruno'),('Carla'),('Diego'),('Eduarda');
/*!40000 ALTER TABLE `ex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fx`
--

DROP TABLE IF EXISTS `fx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fx` (
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fx`
--

LOCK TABLES `fx` WRITE;
/*!40000 ALTER TABLE `fx` DISABLE KEYS */;
INSERT INTO `fx` VALUES ('Carla'),('Eduarda'),('Felipe'),('Gabriel'),('Helena');
/*!40000 ALTER TABLE `fx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `duplic` char(6) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `vencto` date NOT NULL,
  `codcli` char(3) NOT NULL,
  PRIMARY KEY (`duplic`),
  KEY `codcli` (`codcli`),
  CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`codcli`) REFERENCES `cliente` (`codcli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES ('100000',5060.88,'1999-05-15','300'),('100200',3500.00,'2002-11-10','230'),('100334',2002.50,'2005-12-20','990'),('100335',2002.50,'2006-01-20','990'),('100336',2002.50,'2006-02-20','990'),('101010',5060.88,'2000-03-15','300'),('101110',3460.66,'2000-04-15','300'),('101210',9060.55,'2001-10-15','300'),('111211',3535.00,'2006-11-15','230'),('111818',3000.00,'2006-09-11','170'),('111999',1250.00,'2005-04-15','150'),('112099',1000.00,'2005-06-22','150'),('112199',1350.00,'2005-08-30','150'),('112299',1000.00,'2005-10-10','150'),('113340',2002.00,'2001-11-25','230'),('121212',1300.00,'2002-01-15','170'),('121213',1000.00,'2002-02-15','170'),('121214',1400.00,'2002-03-15','170'),('121515',1000.00,'2003-10-15','230'),('121616',1600.00,'2003-11-15','230'),('155099',1800.00,'2004-11-13','250'),('155199',1000.00,'2003-10-15','250'),('155299',1900.00,'2003-11-15','250'),('155999',1000.00,'2004-10-14','250'),('202020',2390.00,'2001-11-11','550'),('202055',2390.00,'2004-11-11','550'),('202550',9518.55,'2002-11-21','750'),('203052',9008.33,'2005-08-22','550'),('209967',9008.33,'2006-10-05','550'),('210001',6000.00,'1999-12-04','100'),('222228',2390.00,'2006-10-07','170'),('222550',9518.55,'2005-11-21','750'),('223345',2112.11,'2006-03-08','230'),('230001',1300.00,'2001-06-10','170'),('230002',1300.00,'2005-10-09','550'),('230099',1000.00,'2002-10-02','820'),('231015',1800.00,'2005-10-10','550'),('235100',1500.00,'2005-06-12','500'),('250013',2002.00,'2002-10-03','820'),('302056',2490.00,'2006-10-20','550'),('345611',5090.67,'2002-12-12','550'),('347711',5092.55,'2006-11-20','170'),('400400',6000.00,'2003-06-15','340'),('451300',1750.00,'1999-05-21','800'),('460460',1902.50,'2004-02-20','100'),('460560',1902.50,'2004-03-22','100'),('460660',1902.50,'2004-04-24','100'),('500005',5060.88,'1999-05-15','990'),('600099',1300.00,'2001-10-13','860'),('600199',1400.00,'2002-11-15','860'),('600299',1500.00,'2002-05-12','860'),('600999',1200.00,'2001-09-14','860'),('653099',1350.88,'2003-09-13','750'),('653199',1432.77,'2004-08-15','750'),('653999',1255.99,'2003-09-14','750'),('750299',1560.00,'2004-03-12','800'),('750300',1565.00,'2004-05-11','800'),('751299',1570.00,'2005-05-12','800'),('752252',1675.00,'2006-12-15','820'),('752253',1675.00,'2006-11-22','820'),('900450',1200.00,'2002-09-09','340'),('900855',2356.00,'2002-10-10','340'),('907754',2056.90,'2005-10-30','340'),('922452',1211.98,'2006-03-09','340'),('950888',2002.50,'2006-10-07','500'),('950889',2002.50,'2006-10-08','500'),('950890',2002.50,'2006-10-09','500'),('950891',2002.50,'2006-10-10','500'),('997818',3000.00,'2001-11-11','250'),('999820',3110.22,'2005-05-11','170');
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'joins'
--

--
-- Dumping routines for database 'joins'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-05 13:53:58
