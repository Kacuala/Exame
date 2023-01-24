-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ecomerce
-- ------------------------------------------------------
-- Server version	10.5.15-MariaDB-0+deb11u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--
DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(90) DEFAULT NULL,
  `precoUnitario` float DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `estado` varchar(90) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `supplid` int(11) DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL,
  `descricao` varchar(289) DEFAULT NULL,
  `imagem` varchar(90) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idCategoria` (`idCategoria`),
  CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (33,'Bolo Rei',13000,9,'stock',1,462,10,'Bolo Rei','63be77e414e85','2023-01-11 09:48:36',117000),(34,'vinho Tinto',9000,0,'stock',1,1,9,'Importado','63be7b796061a','2023-01-11 10:03:53',0),(35,'Champanhe Laço Vermelho',9000,15,'stock',1,2,9,'Importado','63be7c82645a5','2023-01-11 10:08:18',135000),(36,'Vinho Branco',8000,4,'stock',1,3,9,'1993','63be7cc66f372','2023-01-11 10:09:26',32000),(37,'Bolo de Chocolate',4500,3,'stock',1,5,10,'Leite, Chocolate, Manteiga','63be7d98384a8','2023-01-11 10:12:56',13500),(38,'Bolo com Calda',3200,6,'stock',1,6,10,'Morango, chocolate, ','63be7dfd0aac7','2023-01-11 10:14:37',19200);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(90) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `password` varchar(90) DEFAULT NULL,
  `permissao` enum('admin','cliente','gerente') DEFAULT 'cliente',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (33,'kuacala','kuacala@gmail.com','123456','admin'),(34,'Cliente Ferraz','clienteMeu@gmail.com','1234','cliente'),(35,'Walter','walter@gmail.com','1234','cliente');
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

-- Dump completed on 2023-01-11 11:15:39

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (9,'Vinho'),(10,'Bolo'),(11,'Wisk'),(12,'Gasosa'),(13,'Cerveja');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `Pnome` varchar(80) DEFAULT NULL,
  `Unome` varchar(30) NOT NULL,
  `pais` varchar(50) DEFAULT 'Angola',
  `Nempresa` varchar(70) NOT NULL,
  `endereco` varchar(90) NOT NULL,
  `cidade` varchar(70) NOT NULL,
  `condado` varchar(80) NOT NULL,
  `cep` varchar(89) NOT NULL,
  `email` varchar(80) NOT NULL,
  `telefone` varchar(80) NOT NULL,
  `produtos` varchar(600) DEFAULT NULL,
  `preco` varchar(300) DEFAULT NULL,
  `qtd` varchar(200) DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `id` (`id`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (16,33,'Kuatala ','Rei','AO','Gtwork','Vuana/estalagem','Luanda','Angola','65767','kuacala@gmail.com','9238763001',',Bolo Rei',',13000',',3',156000),(17,35,'walter','Massango','AO','print','gamek','luanda233','','','walter@gmail.com','434343',',vinho Tinto',',9000',',1',180000),(18,35,'walter','Massango','AO','print','g','','','','','','','','',0),(19,33,'kacuala','lopes','AO','kapa','morro bento','Luanda','12','232','kuacala@gmail.com','93399201',',Vinho Branco',',8000',',4',64000),(20,33,'kacuala','Castelo','AO','kapa','','','','','','',',vinho Tinto',',9000',',19',171000),(21,33,'kacuala','Castelo','AO','kapa','gamek','Luanda','','3456765','kuacala@gmail.com','93399201','','','',0);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalhesproduct`
--

DROP TABLE IF EXISTS `detalhesproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalhesproduct` (
  `idPedido` int(11) DEFAULT NULL,
  `produto` varchar(600) DEFAULT NULL,
  `preco` varchar(300) DEFAULT NULL,
  `qtd` varchar(200) DEFAULT NULL,
  KEY `idPedido` (`idPedido`),
  CONSTRAINT `detalhesProduct_ibfk_1` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalhesproduct`
--

LOCK TABLES `detalhesproduct` WRITE;
/*!40000 ALTER TABLE `detalhesproduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalhesproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idCliente` int(11) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `data_pedido` datetime DEFAULT NULL,
  `data_necessaria` datetime DEFAULT NULL,
  `data_envio` date DEFAULT NULL,
  `via_maritima` enum('sim','nao') DEFAULT 'nao',
  `frete` enum('sim','nao') DEFAULT 'nao',
  `nome_navio` enum('sim','nao') DEFAULT 'nao',
  `endereco_navio` enum('sim','nao') DEFAULT 'nao',
  `modo_entrega` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idCliente` (`idCliente`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (117,16,NULL,NULL,NULL,NULL,'nao','nao','nao','nao',NULL),(119,17,NULL,NULL,NULL,NULL,'nao','nao','nao','nao',NULL),(122,18,NULL,NULL,NULL,NULL,'nao','nao','nao','nao',NULL),(124,19,NULL,NULL,NULL,NULL,'nao','nao','nao','nao',NULL),(129,20,NULL,NULL,NULL,NULL,'nao','nao','nao','nao',NULL),(135,21,NULL,NULL,NULL,NULL,'nao','nao','nao','nao',NULL);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

