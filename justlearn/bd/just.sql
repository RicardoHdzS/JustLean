-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2022 at 12:55 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `just`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_archivos`
--

CREATE TABLE `t_archivos` (
  `id_archivo` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `unidad` int(11) NOT NULL,
  `ruta` text DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_categorias`
--

CREATE TABLE `t_categorias` (
  `id_categoria` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `fechaInsert` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_usuarios`
--

CREATE TABLE `t_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombreU` varchar(255) DEFAULT NULL,
  `email` varchar(245) DEFAULT NULL,
  `usuario` varchar(245) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `insert` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_usuarios`
--

INSERT INTO `t_usuarios` (`id_usuario`, `nombreU`, `email`, `usuario`, `password`, `insert`) VALUES
(12, 'Karim Benzema', 'kb9@gmail.com', 'Benzo', 'f3773f4f53e9647ec64aafd8d2e606a6649882cf', '2019-12-05 15:29:04'),
(13, 'Ricardo', 'richi.hs7@gmail.com', 'Ricardo', '8cb2237d0679ca88db6464eac60da96345513964', '2022-05-06 15:18:15'),
(15, 'Jocabed', 'joca@gmail.com', 'J3c4', '8cb2237d0679ca88db6464eac60da96345513964', '2022-05-16 08:04:12'),
(16, 'Cristiano', 'cr7@gmail.com', 'CR7', '8cb2237d0679ca88db6464eac60da96345513964', '2022-05-16 19:43:31'),
(17, 'Dago', 'prro@gmail.com', 'Daguito', '8cb2237d0679ca88db6464eac60da96345513964', '2022-05-16 19:44:13'),
(19, 'Javier', 'javi@gmail.com', 'Jav', '8cb2237d0679ca88db6464eac60da96345513964', '2022-05-17 03:20:20'),
(20, 'Andrés', 'andres@gmail.com', 'Andrés9', '8cb2237d0679ca88db6464eac60da96345513964', '2022-05-17 03:23:23'),
(21, 'Ángel', 'avv@gmail.com', 'AVV', '8cb2237d0679ca88db6464eac60da96345513964', '2022-05-17 03:47:13'),
(22, 'Rica', 'garcia@gmail.com', 'cachon', '8cb2237d0679ca88db6464eac60da96345513964', '2022-05-17 03:58:38'),
(23, 'Antonio', 'k8@gmail.com', 'Kroos', '8cb2237d0679ca88db6464eac60da96345513964', '2022-05-31 01:00:10'),
(24, 'Angel', 'ang@gmail.com', 'angel', '8cb2237d0679ca88db6464eac60da96345513964', '2022-05-31 01:04:02'),
(25, 'tec', 'asdfg@gmail.com', 'tec', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '2022-06-01 09:58:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_archivos`
--
ALTER TABLE `t_archivos`
  ADD PRIMARY KEY (`id_archivo`),
  ADD KEY `fkArchivosCategorias_idx` (`id_categoria`),
  ADD KEY `fkUsuariosArchivos_idx` (`id_usuario`);

--
-- Indexes for table `t_categorias`
--
ALTER TABLE `t_categorias`
  ADD PRIMARY KEY (`id_categoria`),
  ADD KEY `fkCategoriaUsuario_idx` (`id_usuario`);

--
-- Indexes for table `t_usuarios`
--
ALTER TABLE `t_usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_archivos`
--
ALTER TABLE `t_archivos`
  MODIFY `id_archivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `t_categorias`
--
ALTER TABLE `t_categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `t_usuarios`
--
ALTER TABLE `t_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_archivos`
--
ALTER TABLE `t_archivos`
  ADD CONSTRAINT `fkArchivosCategorias` FOREIGN KEY (`id_categoria`) REFERENCES `t_categorias` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkUsuariosArchivos` FOREIGN KEY (`id_usuario`) REFERENCES `t_usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_categorias`
--
ALTER TABLE `t_categorias`
  ADD CONSTRAINT `fkCategoriaUsuario` FOREIGN KEY (`id_usuario`) REFERENCES `t_usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
