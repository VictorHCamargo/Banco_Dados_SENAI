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
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` (`cep_funcionario`, `nome_funcionario`, `data_nascimento_funcionario`, `email_funcionario`, `id_funcionario`, `telefone_funcionario`, `tipo_funcionario`, `cpf_funcionario`, `id_unidade`, `senha_funcionario`) VALUES ('01000-210','Carlos Almeida','1980-02-15','carlos.almeida@techfit.com',26,'(11)99999-0001','CEO','111.111.111-00',1,'senha123'),('01000-900','Fernanda Souza','1990-05-10','fernanda.souza@techfit.com',27,'(11)98888-0002','Gerente','111.111.111-01',1,'senha123'),('01000-044','Marcos Silva','1992-06-12','marcos.silva@techfit.com',28,'(11)97777-0003','Personal','111.111.111-02',1,'senha123'),('01000-012','Juliana Costa','1994-03-08','juliana.costa@techfit.com',29,'(11)96666-0004','Recepção','111.111.111-03',1,'senha123'),('01000-231','Thiago Santos','1996-11-21','thiago.santos@techfit.com',30,'(11)95555-0005','Personal','111.111.111-04',2,'senha123'),('13040-241','Amanda Ribeiro','1995-01-09','amanda.ribeiro@techfit.com',31,'(11)94444-0006','Limpeza','111.111.111-05',2,'senha123'),('13040-900','Bruno Pires','1998-04-14','bruno.pires@techfit.com',32,'(11)93333-0007','Gerente','111.111.111-06',2,'senha123'),('13040-241','Larissa Nunes','1997-08-28','larissa.nunes@techfit.com',33,'(11)92222-0008','Recepção','111.111.111-07',2,'senha123'),('13040-002','Rafael Teixeira','1993-09-19','rafael.teixeira@techfit.com',34,'(11)91111-0009','Limpeza','111.111.111-11',2,'senha123'),('13040-331','Camila Oliveira','1999-10-05','camila.oliveira@techfit.com',35,'(11)90000-0010','Personal','111.111.111-09',2,'senha123'),('20010-244','Rafael Costa','1987-05-10','rafael.costa@techfit.com',36,'(21)99999-2001','Gerente','333.333.333-01',3,'senha123'),('20010-561','Tatiane Melo','1994-02-20','tatiane.melo@techfit.com',37,'(21)98888-2002','Recepção','333.333.333-02',3,'senha123'),('20010-155','Pedro Henrique','1996-09-09','pedro.henrique@techfit.com',38,'(21)97777-2003','Personal','333.333.333-03',3,'senha123'),('20010-023','Ana Clara','1995-04-15','ana.clara@techfit.com',39,'(21)96666-2004','Personal','333.333.333-04',3,'senha123'),('20010-241','Bruno Martins','1998-06-22','bruno.martins@techfit.com',40,'(21)95555-2005','Limpeza','333.333.333-05',3,'senha123'),('40015-134','Leticia Pires','1993-03-03','leticia.pires@techfit.com',41,'(21)94444-2006','Recepção','333.333.333-06',4,'senha123'),('40015-055','Daniel Rocha','1999-08-11','daniel.rocha@techfit.com',42,'(21)93333-2007','Personal','333.333.333-07',4,'senha123'),('40015-555','Priscila Monteiro','1991-10-25','priscila.monteiro@techfit.com',43,'(21)92222-2008','Limpeza','333.333.333-08',4,'senha123'),('40015-020','Thiago Ramos','1989-07-07','thiago.ramos@techfit.com',44,'(21)91111-2009','Gerente','333.333.333-09',4,'senha123'),('40015-243','Mariana Lopes','1997-12-12','mariana.lopes@techfit.com',45,'(21)90000-2010','Recepção','333.333.333-10',4,'senha123'),('80010-024','Paulo Mendes','1989-07-07','paulo.mendes@techfit.com',46,'(19)99999-1001','Gerente','222.222.222-01',5,'senha123'),('80010-042','Mariana Dias','1995-03-20','mariana.dias@techfit.com',47,'(19)98888-1002','Personal','222.222.222-02',5,'senha123'),('80010-124','André Lima','1996-04-17','andre.lima@techfit.com',48,'(19)97777-1003','Personal','222.222.222-03',5,'senha123'),('80010-235','Patrícia Gomes','1992-02-12','patricia.gomes@techfit.com',49,'(19)96666-1004','Recepção','222.222.222-04',5,'senha123'),('80010-450','Rodrigo Souza','1994-09-25','rodrigo.souza@techfit.com',50,'(19)95555-1005','Personal','222.222.222-05',5,'senha123'),('01000-210','Gabriel Soares','2007-07-20','adm@techfit.com',51,'(11)99999-0001','personal','111.111.111-00',1,'senha123'),('01000-210','Gabriel Soares','2007-07-20','adm@techfit.com',52,'(11)99999-0001','personal','111.111.111-00',1,'senha123'),('01000-210','Gabriel Soares','2007-07-20','adm@techfit.com',53,'(11)99999-0001','personal','111.111.111-00',1,'senha123'),('01000-210','Gabriel Soares','2007-07-20','adm@techfit.com',54,'(11)99999-0001','personal','111.111.111-00',1,'senha123'),('01000-210','Gabriel Soares','2007-07-20','adm@techfit.com',55,'(11)99999-0001','personal','111.111.111-00',1,'senha123'),('01000-210','Gabriel Soares','2007-07-20','adm@techfit.com',56,'(11)99999-0001','personal','111.111.111-00',1,'senha123'),('01000-210','Gabriel Soares','2007-07-20','adm@techfit.com',57,'(11)99999-0001','personal','111.111.111-00',1,'senha123'),('01000-210','Gabriel Soares','2007-07-20','adm@techfit.com',58,'(11)99999-0001','personal','111.111.111-00',1,'senha123'),('01000-210','Gabriel Soares','2007-07-20','adm@techfit.com',59,'(11)99999-0001','personal','111.111.111-00',1,'senha123');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-05 13:27:30
