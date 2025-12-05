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
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` (`nome_aluno`, `cep_aluno`, `data_nascimento_aluno`, `cpf_aluno`, `telefone_aluno`, `email_aluno`, `senha_aluno`, `id_aluno`, `id_unidade`, `id_plano`) VALUES ('Eduardo Ribeiro','13010-010','2000-02-14','101.202.303-44','(19)90011-2233','eduardo.ribeiro@email.com','senha001',1,4,NULL),('Fernanda Souza','13120-020','2001-07-19','202.303.404-55','(19)91122-3344','fernanda.souza@email.com','senha002',2,8,NULL),('Marcelo Dias','13230-030','2002-11-03','303.404.505-66','(19)92233-4455','marcelo.dias@email.com','senha003',3,11,NULL),('Patrícia Gomes','13340-040','2000-05-29','404.505.606-77','(19)93344-5566','patricia.gomes@email.com','senha004',4,2,NULL),('Vinícius Carvalho','13450-050','2003-01-22','505.606.707-88','(19)94455-6677','vinicius.carvalho@email.com','senha005',5,6,NULL),('Larissa Mendes','13560-060','2001-03-18','606.707.808-99','(19)95566-7788','larissa.mendes@email.com','senha006',6,13,NULL),('Bruno Freitas','13670-070','2002-09-12','707.808.909-00','(19)96677-8899','bruno.freitas@email.com','senha007',7,1,NULL),('Camila Teixeira','13780-080','2000-12-25','808.909.101-11','(19)97788-9900','camila.teixeira@email.com','senha008',8,15,NULL),('Felipe Nascimento','13890-090','2003-06-07','909.101.202-22','(19)98899-0011','felipe.nascimento@email.com','senha009',9,5,NULL),('Amanda Barros','13910-100','2001-08-30','101.303.505-33','(19)99900-1122','amanda.barros@email.com','senha010',10,9,NULL),('Diego Monteiro','14020-110','2002-04-15','202.404.606-44','(19)91011-2233','diego.monteiro@email.com','senha011',11,7,NULL),('Isabela Rocha','14130-120','2000-10-08','303.505.707-55','(19)92122-3344','isabela.rocha@email.com','senha012',12,3,NULL),('Lucas Fernandes','14240-130','2003-02-27','404.606.808-66','(19)93233-4455','lucas.fernandes@email.com','senha013',13,12,NULL),('Sofia Castro','14350-140','2001-09-11','505.707.909-77','(19)94344-5566','sofia.castro@email.com','senha014',14,10,NULL),('Rafael Almeida','14460-150','2002-05-19','606.808.101-88','(19)95455-6677','rafael.almeida@email.com','senha015',15,14,NULL),('Mariana Lopes','14570-160','2000-03-23','707.909.202-99','(19)96566-7788','mariana.lopes@email.com','senha016',16,6,NULL),('Gustavo Pinto','14680-170','2003-07-05','808.101.303-00','(19)97677-8899','gustavo.pinto@email.com','senha017',17,2,NULL),('Juliana Carvalho','14790-180','2001-11-30','909.202.404-11','(19)98788-9900','juliana.carvalho@email.com','senha018',18,13,NULL),('Vinícius Moreira','14800-190','2002-01-16','101.303.505-22','(19)99899-0011','vinicius.moreira@email.com','senha019',19,8,NULL),('Caroline Santos','14910-200','2000-06-12','202.404.606-33','(19)90900-1122','caroline.santos@email.com','senha020',20,11,NULL),('Lucas Silva','13050-000','2002-03-15','123.456.789-00','(19)98765-4321','lucas.silva@email.com','senha123',21,1,NULL),('Maria Oliveira','13400-100','2001-07-22','987.654.321-00','(19)91234-5678','maria.oliveira@email.com','senha456',22,5,NULL),('João Santos','13500-200','2003-01-10','111.222.333-44','(19)99876-5432','joao.santos@email.com','senha789',23,3,NULL),('Ana Pereira','13200-300','2000-11-30','555.666.777-88','(19)93456-7890','ana.pereira@email.com','senhaabc',24,12,NULL),('Gabriel Costa','13300-400','2002-08-18','999.888.777-66','(19)94567-1234','gabriel.costa@email.com','senhadef',25,7,NULL),('Beatriz Lima','13100-500','2001-05-25','444.333.222-11','(19)95678-2345','beatriz.lima@email.com','senhaghi',26,10,NULL),('Rafael Rodrigues','13600-600','2003-09-05','222.111.333-44','(19)96789-3456','rafael.rodrigues@email.com','senhajkl',27,2,NULL),('Carolina Martins','13700-700','2000-12-12','777.888.999-00','(19)97890-4567','carolina.martins@email.com','senhamno',28,14,NULL),('Thiago Almeida','13800-800','2002-06-02','666.555.444-33','(19)98901-5678','thiago.almeida@email.com','senhapqr',29,9,NULL),('Juliana Fernandes','13900-900','2001-04-20','333.222.111-00','(19)99012-6789','juliana.fernandes@email.com','senhastu',30,15,NULL),('Henrique Motta','111111-01','2008-02-26','333.333.333-33','1998226854','gc572640@gmail.com','12345',31,4,NULL),('vivih','123456789','2025-03-25','242627183654','1998226854','vivih@12','1234',32,1,NULL);
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-05 13:27:29
