-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.34-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para php_caixaeletronico
CREATE DATABASE IF NOT EXISTS `php_caixaeletronico` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `php_caixaeletronico`;

-- Copiando estrutura para tabela php_caixaeletronico.contas
CREATE TABLE IF NOT EXISTS `contas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `titular` varchar(100) DEFAULT '0',
  `agencia` int(11) DEFAULT '0',
  `conta` int(11) DEFAULT '0',
  `senha` varchar(32) DEFAULT '0',
  `saldo` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela php_caixaeletronico.contas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `contas` DISABLE KEYS */;
INSERT INTO `contas` (`id`, `titular`, `agencia`, `conta`, `senha`, `saldo`) VALUES
	(1, 'Rafael Geronimo', 1234, 12345, 'e10adc3949ba59abbe56e057f20f883e', 1355.75);
/*!40000 ALTER TABLE `contas` ENABLE KEYS */;

-- Copiando estrutura para tabela php_caixaeletronico.historico
CREATE TABLE IF NOT EXISTS `historico` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_conta` int(11) DEFAULT '0',
  `tipo` tinyint(1) DEFAULT '0',
  `valor` float DEFAULT '0',
  `data_operacao` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela php_caixaeletronico.historico: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
INSERT INTO `historico` (`id`, `id_conta`, `tipo`, `valor`, `data_operacao`) VALUES
	(1, 1, 0, 1000, '2018-10-31 09:30:36'),
	(2, 1, 1, 200.5, '2018-10-31 09:31:54'),
	(3, 1, 0, 50, '2018-10-31 09:32:21'),
	(4, 1, 1, 123.75, '2018-10-31 09:32:35'),
	(5, 1, 1, 120, '2018-10-31 09:32:57'),
	(6, 1, 0, 1500, '2018-10-31 09:33:11'),
	(7, 1, 1, 750, '2018-10-31 09:33:19');
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
