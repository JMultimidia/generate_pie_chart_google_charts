-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Tempo de geração: 04-Set-2021 às 15:19
-- Versão do servidor: 8.0.25
-- versão do PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `noticiaja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ads`
--

CREATE TABLE `ads` (
  `id` int NOT NULL,
  `app` enum('Y','N') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Y',
  `tipo` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'imagem',
  `formato` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `pagina` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'padrao',
  `posicao` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `arquivo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '',
  `pixel_tracking` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` mediumtext COLLATE utf8mb4_general_ci,
  `adsense` mediumtext COLLATE utf8mb4_general_ci,
  `link` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_ini` datetime NOT NULL DEFAULT '1979-01-01 00:00:00',
  `data_fim` datetime NOT NULL DEFAULT '2999-12-31 23:59:59',
  `status` enum('sim','nao') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'sim',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ip` char(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ip_upd` char(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `visitas` varchar(7) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `ads`
--

INSERT INTO `ads` (`id`, `app`, `tipo`, `formato`, `pagina`, `posicao`, `arquivo`, `pixel_tracking`, `url`, `adsense`, `link`, `target`, `data_ini`, `data_fim`, `status`, `created_at`, `updated_at`, `ip`, `ip_upd`, `visitas`) VALUES
(1, 'N', 'imagem', '728', 'padrao', '1', 'df8d51280af893bdf258c9e0.gif', '', '', NULL, '', '_blank', '2021-07-31 10:20:16', '2999-12-31 00:00:00', 'sim', '2021-07-31 13:20:17', NULL, '172.19.0.1', NULL, NULL),
(2, 'N', 'imagem', '728', 'padrao', '2', 'd24c7ec90fa9dda17fd93efc.jpeg', '', '', NULL, '', '_blank', '2021-08-05 20:54:00', '2999-12-31 00:00:00', 'sim', '2021-08-05 23:54:01', NULL, '172.19.0.1', NULL, NULL),
(3, 'N', 'imagem', '330', 'padrao', '1', 'bde2fea0abffe8c4ae539dfb.jpg', '', '', NULL, '', '_blank', '2021-08-06 11:27:38', '2999-12-31 00:00:00', 'sim', '2021-08-06 14:27:40', NULL, '172.19.0.1', NULL, NULL),
(4, 'N', 'imagem', '330', 'padrao', '2', '808f8bf94b1c66764ea4a229.jpeg', '', '', NULL, '', '_blank', '2021-08-06 12:01:27', '2999-12-31 00:00:00', 'sim', '2021-08-06 15:01:27', NULL, '172.19.0.1', NULL, NULL),
(5, 'N', 'imagem', '728', 'internas', '1', '8b0c5200def242f27a2a2ba3.gif', '', '', NULL, '', '_blank', '2021-08-06 20:28:44', '2999-12-31 00:00:00', 'sim', '2021-08-06 23:28:45', NULL, '172.19.0.1', NULL, NULL),
(6, 'N', 'imagem', '330', 'internas', '1', 'f92ec37d5da72d34784a5f27.jpg', '', '', NULL, '', '_blank', '2021-08-06 20:36:14', '2999-12-31 00:00:00', 'sim', '2021-08-06 23:36:15', NULL, '172.19.0.1', NULL, NULL),
(7, 'N', 'imagem', '330', 'internas', '2', '5c2e148ede2a41ea1f73e59a.jpeg', '', '', NULL, '', '_blank', '2021-08-06 20:38:50', '2999-12-31 00:00:00', 'sim', '2021-08-06 23:38:50', NULL, '172.19.0.1', NULL, NULL),
(8, 'N', 'imagem', '728', 'padrao', '3', '324b0e3df060f2d20fda6cb2.jpg', '', '', NULL, 'https://instagram.com', '_blank', '2021-08-13 16:38:15', '2999-12-31 00:00:00', 'sim', '2021-08-13 19:38:15', NULL, '172.19.0.1', NULL, NULL),
(10, 'N', 'imagem', '728', 'internas', '3', 'f7a7ddc3ffbb4abb63e2986b.jpg', '', '', NULL, '', '_blank', '2021-08-14 09:49:57', '2999-12-31 00:00:00', 'sim', '2021-08-14 12:49:58', NULL, '172.19.0.1', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `tipo` (`tipo`),
  ADD KEY `formato` (`formato`),
  ADD KEY `pagina` (`pagina`),
  ADD KEY `posicao` (`posicao`),
  ADD KEY `data_ini` (`data_ini`),
  ADD KEY `data_fim` (`data_fim`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
