-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 24/11/2016 às 23:45
-- Versão do servidor: 10.1.16-MariaDB
-- Versão do PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `testeteste`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `instalacoes`
--

CREATE TABLE `instalacoes` (
  `id_instalacoes` int(11) NOT NULL,
  `desc_instalacoes` longtext,
  `autores_codigoAutor` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `instalacoes`
--
ALTER TABLE `instalacoes`
  ADD PRIMARY KEY (`id_instalacoes`),
  ADD KEY `fk_instalacoes_autores1_idx` (`autores_codigoAutor`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `instalacoes`
--
ALTER TABLE `instalacoes`
  MODIFY `id_instalacoes` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `instalacoes`
--
ALTER TABLE `instalacoes`
  ADD CONSTRAINT `fk_instalacoes_autores1` FOREIGN KEY (`autores_codigoAutor`) REFERENCES `autores` (`codigoAutor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
