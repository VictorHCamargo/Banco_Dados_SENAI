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
-- Dumping data for table `comunicados`
--

LOCK TABLES `comunicados` WRITE;
/*!40000 ALTER TABLE `comunicados` DISABLE KEYS */;
INSERT INTO `comunicados` (`informacao_comunicado`, `titulo_comunicado`, `id_comunicado`, `tipo_comunicado`) VALUES ('A academia estará fechada no feriado de 15 de novembro.','Feriado',1,''),('Nova aula de Zumba disponível a partir da próxima semana.','Novidade de Aula',2,''),('Lembrete: pagamento da mensalidade vence dia 25.','Pagamento',3,''),('Evento especial: avaliação física gratuita neste sábado.','Evento Especial',4,''),('Atenção: uso obrigatório de máscara nas áreas internas.','Aviso Importante',5,''),('Mudança de horário: aula de Pilates agora às 18h.','Alteração de Horário',6,''),('Inscreva-se no campeonato interno de Crossfit.','Campeonato Interno',7,''),('Dica de saúde: mantenha-se hidratado durante os treinos.','Dica de Saúde',8,''),('Promoção: 20% de desconto em planos trimestrais.','Promoção',9,''),('Aviso: manutenção no equipamento de esteira amanhã.','Manutenção',10,''),('Aviso sobre manutencao preventiva nas unidades da academia','Manutencao preventiva',11,'importante'),('Parceria com loja de suplementos oferecendo descontos exclusivos','Parceria suplementos',12,'parceria'),('Comunicado geral sobre novos horarios das aulas coletivas','Novos horarios',13,'geral'),('Atualizacao importante sobre regras de uso dos vestiarios','Regras vestiario',14,'importante'),('Parceria com nutricionista para consultorias personalizadas','Parceria nutricional',15,'parceria'),('Comunicado geral sobre eventos esportivos deste mes','Eventos mensais',16,'geral'),('Aviso importante sobre troca de equipamentos danificados','Troca de equipamentos',17,'importante'),('Parceria com studio de fisioterapia para atendimentos com desconto','Parceria fisioterapia',18,'parceria'),('Comunicado geral sobre funcionamento nos feriados','Feriados',19,'geral'),('Aviso importante sobre atualizacao de cadastro dos alunos','Atualizacao cadastral',20,'importante'),('22323232323232323232323333333333333333333333333333333333','eu sou homem',21,'importante');
/*!40000 ALTER TABLE `comunicados` ENABLE KEYS */;
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
