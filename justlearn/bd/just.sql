-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2022 at 06:59 AM
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

--
-- Dumping data for table `t_archivos`
--

INSERT INTO `t_archivos` (`id_archivo`, `id_usuario`, `id_categoria`, `nombre`, `tipo`, `unidad`, `ruta`, `fecha`) VALUES
(8, 12, 7, 'estreno curso.png', 'png', 0, '../../archivos/12/estreno curso.png', '2020-03-02 22:51:10'),
(9, 12, 7, 'logo.png', 'png', 0, '../../archivos/12/logo.png', '2020-03-02 22:51:10'),
(10, 12, 7, 'gestor de archivos documentacion.pdf', 'pdf', 0, '../../archivos/12/gestor de archivos documentacion.pdf', '2020-03-02 22:51:35'),
(11, 12, 7, 'facultad.mp4', 'mp4', 1, '../../archivos/12/facultad.mp4', '2020-03-02 23:36:42'),
(12, 12, 8, 'Beethoven Virus.mp3', 'mp3', 2, '../../archivos/12/Beethoven Virus.mp3', '2020-03-02 23:41:13'),
(13, 13, 9, 'Inteligencia Artificial. Un Enfoque Modern - Stuart Russell.pdf', 'pdf', 1, '../../archivos/13/Inteligencia Artificial. Un Enfoque Modern - Stuart Russell.pdf', '2022-05-06 15:27:50'),
(14, 13, 9, 'abc.png', 'png', 5, '../../archivos/13/abc.png', '2022-05-06 15:28:08'),
(15, 13, 9, 'ia.docx', 'docx', 6, '../../archivos/13/ia.docx', '2022-05-06 15:28:15'),
(16, 13, 10, 'PROCESO DE PRUEBAS DE SOFTWARE PARA UN MODELO DE CALIDAD.pdf', 'pdf', 8, '../../archivos/13/PROCESO DE PRUEBAS DE SOFTWARE PARA UN MODELO DE CALIDAD.pdf', '2022-05-11 20:01:55'),
(17, 13, 10, 'Plan de SQA.pdf', 'pdf', 1, '../../archivos/13/Plan de SQA.pdf', '2022-05-16 22:14:31'),
(18, 20, 11, 'examenia__1_.pdf', 'pdf', 0, '../../archivos/20/examenia__1_.pdf', '2022-05-17 03:27:08');

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

--
-- Dumping data for table `t_categorias`
--

INSERT INTO `t_categorias` (`id_categoria`, `id_usuario`, `nombre`, `fechaInsert`) VALUES
(7, 19, 'Móviles', '2020-03-02 22:49:22'),
(8, 16, 'PROLOG', '2020-03-02 23:39:43'),
(9, 13, 'Inteligencia Artificial', '2022-05-06 15:26:08'),
(10, 13, 'Validación', '2022-05-11 20:00:56'),
(11, 20, 'POO', '2022-05-17 03:24:43'),
(12, 22, 'Automatas', '2022-05-17 04:02:05'),
(13, 22, 'Automatas ll', '2022-05-17 04:09:06'),
(14, 13, 'Programación Web', '2022-05-17 04:10:38');

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
(22, 'Rica', 'garcia@gmail.com', 'cachon', '8cb2237d0679ca88db6464eac60da96345513964', '2022-05-17 03:58:38');

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
  MODIFY `id_archivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `t_categorias`
--
ALTER TABLE `t_categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `t_usuarios`
--
ALTER TABLE `t_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
