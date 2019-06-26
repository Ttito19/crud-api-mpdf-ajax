/*
 Navicat Premium Data Transfer

 Source Server         : localhostMysql
 Source Server Type    : MySQL
 Source Server Version : 100135
 Source Host           : localhost:3306
 Source Schema         : bdgoodpartner

 Target Server Type    : MySQL
 Target Server Version : 100135
 File Encoding         : 65001

 Date: 25/06/2019 17:05:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `idadmin` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `apellido` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nombre` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `celular` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `direccion` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `idDepa` int(11) NOT NULL,
  `idProv` int(11) NOT NULL,
  `idDist` int(11) NOT NULL,
  `sexo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `correo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `clave` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `idRol` int(11) NOT NULL,
  PRIMARY KEY (`idadmin`) USING BTREE,
  INDEX `iddepartamento`(`idDepa`, `idProv`, `idDist`) USING BTREE,
  INDEX `iddistrito`(`idDist`) USING BTREE,
  INDEX `idprovincia`(`idProv`) USING BTREE,
  INDEX `fk_admin_rol`(`idRol`) USING BTREE,
  CONSTRAINT `fk_admin_rol` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (22, '775757575', 'ssss', 'sss', 'sss', 'sss', 10, 200, 500, 'f', 'sasasa', 'aaaaa', 1);
INSERT INTO `admin` VALUES (23, '77878', 'admin', 'admin', 'admin', 'admin', 10, 100, 500, 'admin', 'admin', 'admin', 1);
INSERT INTO `admin` VALUES (24, 'aaaa', 'aaaaa', 'aaaa', 'aaaaa', 'aaaaaaa', 2, 25, 224, 'aaaaa', 'aaaa', '123', 1);

-- ----------------------------
-- Table structure for alumno
-- ----------------------------
DROP TABLE IF EXISTS `alumno`;
CREATE TABLE `alumno`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `apellido` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nombre` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telefono` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Direccion` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `idDepa` int(11) NOT NULL,
  `idProv` int(11) NOT NULL,
  `idDist` int(11) NOT NULL,
  `Sexo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `correo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `clave` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `idRol` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_alumno_rol`(`idRol`) USING BTREE,
  CONSTRAINT `fk_alumno_rol` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 390 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alumno
-- ----------------------------
INSERT INTO `alumno` VALUES (1, '7', 'sara', 'connor', 'hgf', 'gg', 3, 29, 260, 'k', 'correo1@gmail.com', '123456', 3);
INSERT INTO `alumno` VALUES (2, '355', 'dgfh', 'david', 'hgf', 'gg', 1, 2, 24, 'hh', 'correo2@gmail.com', '123456', 3);
INSERT INTO `alumno` VALUES (3, '35804', 's', 's', 's', 's', 1, 1, 16, 'k', 'correo3@gmail.com', '123456', 3);
INSERT INTO `alumno` VALUES (4, '358saaaa', 'hgh', 'fhg', 'fhgfh', 'gfhfg', 1, 0, 390, '', 'correo4@gmail.com', '123456', 3);
INSERT INTO `alumno` VALUES (5, '3558aaaa', 'aaa', 'aa', 'a', 'aaa', 3, 28, 251, '4', 'correo5@gmail.com', '123456', 3);
INSERT INTO `alumno` VALUES (6, '35589', 'hgh', 'fhg', 'fhgfh', 'gfhfg', 4, 38, 390, '4', 'correo6@gmail.com', '123456', 3);
INSERT INTO `alumno` VALUES (7, '74577', 'jhghjh', 'jggj', '4545', 'dfh', 3, 31, 299, 'h', 'hgh', 'hnghh', 3);
INSERT INTO `alumno` VALUES (8, '555554', 'jhghjh', 'jggj', '4545', 'dfh', 3, 31, 299, 'h', 'hgh', '$2y$12$5u4yeI/s2TduYGOMqQtMKuDzjTxlgj5.v2KmANy0ljN8AQFVtFLi.', 3);
INSERT INTO `alumno` VALUES (9, '75110109', 'chavez', 'David', '934909335', 'totorita', 15, 127, 1282, 'M', 'andrezchavez.2000@gmail.com', '$2y$12$6tByXJWy2QrFsERVWoZ/y.F5F5UsmCYMpJE2RZ0cpiJw5I2zzKwvm', 3);
INSERT INTO `alumno` VALUES (10, '35582', 'aaa', 'aa', 'a', 'aaa', 4, 38, 390, '4', 'correo5@gmail.com', '$2y$12$52IFv.MuxuUlfPloRVK6pu1AQ5c.AhT1c5cpgeL4qJtJYvJ019vCq', 3);
INSERT INTO `alumno` VALUES (11, '45s', 'sara', 'connor', 'hgf', 'gg', 1, 2, 24, 'hh', 'correo1@gmail.com', '$2y$12$tOGLrW8GJcWRYRmLDPuyxO/FipmYUVUDyr.XQzRROl2vEIk0AuoTC', 3);
INSERT INTO `alumno` VALUES (386, '455415', 'cxvcx', 'xcvxcv', 'xcvcxv', 'xccxv', 6, 56, 568, 'v', 'cv', '', 3);
INSERT INTO `alumno` VALUES (387, '4554155', 'cxvcx', 'xcvxcv', 'xcvcxv', 'xccxv', 6, 56, 568, 'v', 'cv', 'vc', 3);
INSERT INTO `alumno` VALUES (388, '775757575', 'ssss', 'sss', 'sss', 'sss', 10, 200, 500, 'f', 'sasasa', 'aaaaa', 3);
INSERT INTO `alumno` VALUES (389, '77878', 'alumno', 'alumno', 'alumno', 'alumno', 10, 100, 500, 'alumno', 'alumno', 'alumno', 3);

-- ----------------------------
-- Table structure for curso
-- ----------------------------
DROP TABLE IF EXISTS `curso`;
CREATE TABLE `curso`  (
  `idcurso` int(11) NOT NULL AUTO_INCREMENT,
  `nomcurso` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`idcurso`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of curso
-- ----------------------------
INSERT INTO `curso` VALUES (1, 'curso 1', 'nada');
INSERT INTO `curso` VALUES (2, 'curso 2', 'nada');
INSERT INTO `curso` VALUES (3, 'curso 3', 'nada');
INSERT INTO `curso` VALUES (4, 'curso 4', 'nada');
INSERT INTO `curso` VALUES (5, 'curso 5', 'nada');

-- ----------------------------
-- Table structure for curso_profesor
-- ----------------------------
DROP TABLE IF EXISTS `curso_profesor`;
CREATE TABLE `curso_profesor`  (
  `id_curso_profesor` int(11) NOT NULL AUTO_INCREMENT,
  `idcurso` int(11) NOT NULL,
  `idprofesor` int(11) NOT NULL,
  PRIMARY KEY (`id_curso_profesor`) USING BTREE,
  INDEX `fk_curso_curpro`(`idcurso`) USING BTREE,
  INDEX `fk_profe_curpro`(`idprofesor`) USING BTREE,
  CONSTRAINT `fk_curso_curpro` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_profe_curpro` FOREIGN KEY (`idprofesor`) REFERENCES `docentes` (`iddocente`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for docentes
-- ----------------------------
DROP TABLE IF EXISTS `docentes`;
CREATE TABLE `docentes`  (
  `iddocente` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `apellido` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nombre` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telefono` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `direccion` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `idDepa` int(11) NOT NULL,
  `idProv` int(11) NOT NULL,
  `idDist` int(11) NOT NULL,
  `sexo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `correo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `clave` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `idRol` int(11) NOT NULL,
  PRIMARY KEY (`iddocente`) USING BTREE,
  INDEX `idprovincia`(`idDepa`) USING BTREE,
  INDEX `iddistrito`(`idProv`) USING BTREE,
  INDEX `iddepartamento`(`telefono`) USING BTREE,
  INDEX `fk_prof_rol`(`idRol`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of docentes
-- ----------------------------
INSERT INTO `docentes` VALUES (6, '77878', 'docente', 'docente', 'docente', 'docente', 10, 100, 500, 'docente', 'docente', 'docente', 2);

-- ----------------------------
-- Table structure for rol
-- ----------------------------
DROP TABLE IF EXISTS `rol`;
CREATE TABLE `rol`  (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `nom_Rol` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`idRol`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rol
-- ----------------------------
INSERT INTO `rol` VALUES (1, 'admin');
INSERT INTO `rol` VALUES (2, 'docente');
INSERT INTO `rol` VALUES (3, 'alumno');

-- ----------------------------
-- Table structure for turno
-- ----------------------------
DROP TABLE IF EXISTS `turno`;
CREATE TABLE `turno`  (
  `idturno` int(11) NOT NULL AUTO_INCREMENT,
  `hora_inicio` time(0) NOT NULL,
  `hora_final` time(0) NOT NULL,
  PRIMARY KEY (`idturno`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of turno
-- ----------------------------
INSERT INTO `turno` VALUES (1, '15:08:00', '03:09:06');

-- ----------------------------
-- Table structure for ubdepartamento
-- ----------------------------
DROP TABLE IF EXISTS `ubdepartamento`;
CREATE TABLE `ubdepartamento`  (
  `idDepa` int(5) NOT NULL DEFAULT 0,
  `departamento` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idDepa`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ubdepartamento
-- ----------------------------
INSERT INTO `ubdepartamento` VALUES (1, 'AMAZONAS');
INSERT INTO `ubdepartamento` VALUES (2, 'ANCASH');
INSERT INTO `ubdepartamento` VALUES (3, 'APURIMAC');
INSERT INTO `ubdepartamento` VALUES (4, 'AREQUIPA');
INSERT INTO `ubdepartamento` VALUES (5, 'AYACUCHO');
INSERT INTO `ubdepartamento` VALUES (6, 'CAJAMARCA');
INSERT INTO `ubdepartamento` VALUES (7, 'CALLAO');
INSERT INTO `ubdepartamento` VALUES (8, 'CUSCO');
INSERT INTO `ubdepartamento` VALUES (9, 'HUANCAVELICA');
INSERT INTO `ubdepartamento` VALUES (10, 'HUANUCO');
INSERT INTO `ubdepartamento` VALUES (11, 'ICA');
INSERT INTO `ubdepartamento` VALUES (12, 'JUNIN');
INSERT INTO `ubdepartamento` VALUES (13, 'LA LIBERTAD');
INSERT INTO `ubdepartamento` VALUES (14, 'LAMBAYEQUE');
INSERT INTO `ubdepartamento` VALUES (15, 'LIMA');
INSERT INTO `ubdepartamento` VALUES (16, 'LORETO');
INSERT INTO `ubdepartamento` VALUES (17, 'MADRE DE DIOS');
INSERT INTO `ubdepartamento` VALUES (18, 'MOQUEGUA');
INSERT INTO `ubdepartamento` VALUES (19, 'PASCO');
INSERT INTO `ubdepartamento` VALUES (20, 'PIURA');
INSERT INTO `ubdepartamento` VALUES (21, 'PUNO');
INSERT INTO `ubdepartamento` VALUES (22, 'SAN MARTIN');
INSERT INTO `ubdepartamento` VALUES (23, 'TACNA');
INSERT INTO `ubdepartamento` VALUES (24, 'TUMBES');
INSERT INTO `ubdepartamento` VALUES (25, 'UCAYALI');

-- ----------------------------
-- Table structure for ubdistrito
-- ----------------------------
DROP TABLE IF EXISTS `ubdistrito`;
CREATE TABLE `ubdistrito`  (
  `idDist` int(5) NOT NULL DEFAULT 0,
  `distrito` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idProv` int(5) NULL DEFAULT NULL,
  PRIMARY KEY (`idDist`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ubdistrito
-- ----------------------------
INSERT INTO `ubdistrito` VALUES (1, 'CHACHAPOYAS', 1);
INSERT INTO `ubdistrito` VALUES (2, 'ASUNCION', 1);
INSERT INTO `ubdistrito` VALUES (3, 'BALSAS', 1);
INSERT INTO `ubdistrito` VALUES (4, 'CHETO', 1);
INSERT INTO `ubdistrito` VALUES (5, 'CHILIQUIN', 1);
INSERT INTO `ubdistrito` VALUES (6, 'CHUQUIBAMBA', 1);
INSERT INTO `ubdistrito` VALUES (7, 'GRANADA', 1);
INSERT INTO `ubdistrito` VALUES (8, 'HUANCAS', 1);
INSERT INTO `ubdistrito` VALUES (9, 'LA JALCA', 1);
INSERT INTO `ubdistrito` VALUES (10, 'LEIMEBAMBA', 1);
INSERT INTO `ubdistrito` VALUES (11, 'LEVANTO', 1);
INSERT INTO `ubdistrito` VALUES (12, 'MAGDALENA', 1);
INSERT INTO `ubdistrito` VALUES (13, 'MARISCAL CASTILLA', 1);
INSERT INTO `ubdistrito` VALUES (14, 'MOLINOPAMPA', 1);
INSERT INTO `ubdistrito` VALUES (15, 'MONTEVIDEO', 1);
INSERT INTO `ubdistrito` VALUES (16, 'OLLEROS', 1);
INSERT INTO `ubdistrito` VALUES (17, 'QUINJALCA', 1);
INSERT INTO `ubdistrito` VALUES (18, 'SAN FRANCISCO DE DAGUAS', 1);
INSERT INTO `ubdistrito` VALUES (19, 'SAN ISIDRO DE MAINO', 1);
INSERT INTO `ubdistrito` VALUES (20, 'SOLOCO', 1);
INSERT INTO `ubdistrito` VALUES (21, 'SONCHE', 1);
INSERT INTO `ubdistrito` VALUES (22, 'LA PECA', 2);
INSERT INTO `ubdistrito` VALUES (23, 'ARAMANGO', 2);
INSERT INTO `ubdistrito` VALUES (24, 'COPALLIN', 2);
INSERT INTO `ubdistrito` VALUES (25, 'EL PARCO', 2);
INSERT INTO `ubdistrito` VALUES (26, 'IMAZA', 2);
INSERT INTO `ubdistrito` VALUES (27, 'JUMBILLA', 3);
INSERT INTO `ubdistrito` VALUES (28, 'CHISQUILLA', 3);
INSERT INTO `ubdistrito` VALUES (29, 'CHURUJA', 3);
INSERT INTO `ubdistrito` VALUES (30, 'COROSHA', 3);
INSERT INTO `ubdistrito` VALUES (31, 'CUISPES', 3);
INSERT INTO `ubdistrito` VALUES (32, 'FLORIDA', 3);
INSERT INTO `ubdistrito` VALUES (33, 'JAZAN', 3);
INSERT INTO `ubdistrito` VALUES (34, 'RECTA', 3);
INSERT INTO `ubdistrito` VALUES (35, 'SAN CARLOS', 3);
INSERT INTO `ubdistrito` VALUES (36, 'SHIPASBAMBA', 3);
INSERT INTO `ubdistrito` VALUES (37, 'VALERA', 3);
INSERT INTO `ubdistrito` VALUES (38, 'YAMBRASBAMBA', 3);
INSERT INTO `ubdistrito` VALUES (39, 'NIEVA', 4);
INSERT INTO `ubdistrito` VALUES (40, 'EL CENEPA', 4);
INSERT INTO `ubdistrito` VALUES (41, 'RIO SANTIAGO', 4);
INSERT INTO `ubdistrito` VALUES (42, 'LAMUD', 5);
INSERT INTO `ubdistrito` VALUES (43, 'CAMPORREDONDO', 5);
INSERT INTO `ubdistrito` VALUES (44, 'COCABAMBA', 5);
INSERT INTO `ubdistrito` VALUES (45, 'COLCAMAR', 5);
INSERT INTO `ubdistrito` VALUES (46, 'CONILA', 5);
INSERT INTO `ubdistrito` VALUES (47, 'INGUILPATA', 5);
INSERT INTO `ubdistrito` VALUES (48, 'LONGUITA', 5);
INSERT INTO `ubdistrito` VALUES (49, 'LONYA CHICO', 5);
INSERT INTO `ubdistrito` VALUES (50, 'LUYA', 5);
INSERT INTO `ubdistrito` VALUES (51, 'LUYA VIEJO', 5);
INSERT INTO `ubdistrito` VALUES (52, 'MARIA', 5);
INSERT INTO `ubdistrito` VALUES (53, 'OCALLI', 5);
INSERT INTO `ubdistrito` VALUES (54, 'OCUMAL', 5);
INSERT INTO `ubdistrito` VALUES (55, 'PISUQUIA', 5);
INSERT INTO `ubdistrito` VALUES (56, 'PROVIDENCIA', 5);
INSERT INTO `ubdistrito` VALUES (57, 'SAN CRISTOBAL', 5);
INSERT INTO `ubdistrito` VALUES (58, 'SAN FRANCISCO DEL YESO', 5);
INSERT INTO `ubdistrito` VALUES (59, 'SAN JERONIMO', 5);
INSERT INTO `ubdistrito` VALUES (60, 'SAN JUAN DE LOPECANCHA', 5);
INSERT INTO `ubdistrito` VALUES (61, 'SANTA CATALINA', 5);
INSERT INTO `ubdistrito` VALUES (62, 'SANTO TOMAS', 5);
INSERT INTO `ubdistrito` VALUES (63, 'TINGO', 5);
INSERT INTO `ubdistrito` VALUES (64, 'TRITA', 5);
INSERT INTO `ubdistrito` VALUES (65, 'SAN NICOLAS', 6);
INSERT INTO `ubdistrito` VALUES (66, 'CHIRIMOTO', 6);
INSERT INTO `ubdistrito` VALUES (67, 'COCHAMAL', 6);
INSERT INTO `ubdistrito` VALUES (68, 'HUAMBO', 6);
INSERT INTO `ubdistrito` VALUES (69, 'LIMABAMBA', 6);
INSERT INTO `ubdistrito` VALUES (70, 'LONGAR', 6);
INSERT INTO `ubdistrito` VALUES (71, 'MARISCAL BENAVIDES', 6);
INSERT INTO `ubdistrito` VALUES (72, 'MILPUC', 6);
INSERT INTO `ubdistrito` VALUES (73, 'OMIA', 6);
INSERT INTO `ubdistrito` VALUES (74, 'SANTA ROSA', 6);
INSERT INTO `ubdistrito` VALUES (75, 'TOTORA', 6);
INSERT INTO `ubdistrito` VALUES (76, 'VISTA ALEGRE', 6);
INSERT INTO `ubdistrito` VALUES (77, 'BAGUA GRANDE', 7);
INSERT INTO `ubdistrito` VALUES (78, 'CAJARURO', 7);
INSERT INTO `ubdistrito` VALUES (79, 'CUMBA', 7);
INSERT INTO `ubdistrito` VALUES (80, 'EL MILAGRO', 7);
INSERT INTO `ubdistrito` VALUES (81, 'JAMALCA', 7);
INSERT INTO `ubdistrito` VALUES (82, 'LONYA GRANDE', 7);
INSERT INTO `ubdistrito` VALUES (83, 'YAMON', 7);
INSERT INTO `ubdistrito` VALUES (84, 'HUARAZ', 8);
INSERT INTO `ubdistrito` VALUES (85, 'COCHABAMBA', 8);
INSERT INTO `ubdistrito` VALUES (86, 'COLCABAMBA', 8);
INSERT INTO `ubdistrito` VALUES (87, 'HUANCHAY', 8);
INSERT INTO `ubdistrito` VALUES (88, 'INDEPENDENCIA', 8);
INSERT INTO `ubdistrito` VALUES (89, 'JANGAS', 8);
INSERT INTO `ubdistrito` VALUES (90, 'LA LIBERTAD', 8);
INSERT INTO `ubdistrito` VALUES (91, 'OLLEROS', 8);
INSERT INTO `ubdistrito` VALUES (92, 'PAMPAS', 8);
INSERT INTO `ubdistrito` VALUES (93, 'PARIACOTO', 8);
INSERT INTO `ubdistrito` VALUES (94, 'PIRA', 8);
INSERT INTO `ubdistrito` VALUES (95, 'TARICA', 8);
INSERT INTO `ubdistrito` VALUES (96, 'AIJA', 9);
INSERT INTO `ubdistrito` VALUES (97, 'CORIS', 9);
INSERT INTO `ubdistrito` VALUES (98, 'HUACLLAN', 9);
INSERT INTO `ubdistrito` VALUES (99, 'LA MERCED', 9);
INSERT INTO `ubdistrito` VALUES (100, 'SUCCHA', 9);
INSERT INTO `ubdistrito` VALUES (101, 'LLAMELLIN', 10);
INSERT INTO `ubdistrito` VALUES (102, 'ACZO', 10);
INSERT INTO `ubdistrito` VALUES (103, 'CHACCHO', 10);
INSERT INTO `ubdistrito` VALUES (104, 'CHINGAS', 10);
INSERT INTO `ubdistrito` VALUES (105, 'MIRGAS', 10);
INSERT INTO `ubdistrito` VALUES (106, 'SAN JUAN DE RONTOY', 10);
INSERT INTO `ubdistrito` VALUES (107, 'CHACAS', 11);
INSERT INTO `ubdistrito` VALUES (108, 'ACOCHACA', 11);
INSERT INTO `ubdistrito` VALUES (109, 'CHIQUIAN', 12);
INSERT INTO `ubdistrito` VALUES (110, 'ABELARDO PARDO LEZAMETA', 12);
INSERT INTO `ubdistrito` VALUES (111, 'ANTONIO RAYMONDI', 12);
INSERT INTO `ubdistrito` VALUES (112, 'AQUIA', 12);
INSERT INTO `ubdistrito` VALUES (113, 'CAJACAY', 12);
INSERT INTO `ubdistrito` VALUES (114, 'CANIS', 12);
INSERT INTO `ubdistrito` VALUES (115, 'COLQUIOC', 12);
INSERT INTO `ubdistrito` VALUES (116, 'HUALLANCA', 12);
INSERT INTO `ubdistrito` VALUES (117, 'HUASTA', 12);
INSERT INTO `ubdistrito` VALUES (118, 'HUAYLLACAYAN', 12);
INSERT INTO `ubdistrito` VALUES (119, 'LA PRIMAVERA', 12);
INSERT INTO `ubdistrito` VALUES (120, 'MANGAS', 12);
INSERT INTO `ubdistrito` VALUES (121, 'PACLLON', 12);
INSERT INTO `ubdistrito` VALUES (122, 'SAN MIGUEL DE CORPANQUI', 12);
INSERT INTO `ubdistrito` VALUES (123, 'TICLLOS', 12);
INSERT INTO `ubdistrito` VALUES (124, 'CARHUAZ', 13);
INSERT INTO `ubdistrito` VALUES (125, 'ACOPAMPA', 13);
INSERT INTO `ubdistrito` VALUES (126, 'AMASHCA', 13);
INSERT INTO `ubdistrito` VALUES (127, 'ANTA', 13);
INSERT INTO `ubdistrito` VALUES (128, 'ATAQUERO', 13);
INSERT INTO `ubdistrito` VALUES (129, 'MARCARA', 13);
INSERT INTO `ubdistrito` VALUES (130, 'PARIAHUANCA', 13);
INSERT INTO `ubdistrito` VALUES (131, 'SAN MIGUEL DE ACO', 13);
INSERT INTO `ubdistrito` VALUES (132, 'SHILLA', 13);
INSERT INTO `ubdistrito` VALUES (133, 'TINCO', 13);
INSERT INTO `ubdistrito` VALUES (134, 'YUNGAR', 13);
INSERT INTO `ubdistrito` VALUES (135, 'SAN LUIS', 14);
INSERT INTO `ubdistrito` VALUES (136, 'SAN NICOLAS', 14);
INSERT INTO `ubdistrito` VALUES (137, 'YAUYA', 14);
INSERT INTO `ubdistrito` VALUES (138, 'CASMA', 15);
INSERT INTO `ubdistrito` VALUES (139, 'BUENA VISTA ALTA', 15);
INSERT INTO `ubdistrito` VALUES (140, 'COMANDANTE NOEL', 15);
INSERT INTO `ubdistrito` VALUES (141, 'YAUTAN', 15);
INSERT INTO `ubdistrito` VALUES (142, 'CORONGO', 16);
INSERT INTO `ubdistrito` VALUES (143, 'ACO', 16);
INSERT INTO `ubdistrito` VALUES (144, 'BAMBAS', 16);
INSERT INTO `ubdistrito` VALUES (145, 'CUSCA', 16);
INSERT INTO `ubdistrito` VALUES (146, 'LA PAMPA', 16);
INSERT INTO `ubdistrito` VALUES (147, 'YANAC', 16);
INSERT INTO `ubdistrito` VALUES (148, 'YUPAN', 16);
INSERT INTO `ubdistrito` VALUES (149, 'HUARI', 17);
INSERT INTO `ubdistrito` VALUES (150, 'ANRA', 17);
INSERT INTO `ubdistrito` VALUES (151, 'CAJAY', 17);
INSERT INTO `ubdistrito` VALUES (152, 'CHAVIN DE HUANTAR', 17);
INSERT INTO `ubdistrito` VALUES (153, 'HUACACHI', 17);
INSERT INTO `ubdistrito` VALUES (154, 'HUACCHIS', 17);
INSERT INTO `ubdistrito` VALUES (155, 'HUACHIS', 17);
INSERT INTO `ubdistrito` VALUES (156, 'HUANTAR', 17);
INSERT INTO `ubdistrito` VALUES (157, 'MASIN', 17);
INSERT INTO `ubdistrito` VALUES (158, 'PAUCAS', 17);
INSERT INTO `ubdistrito` VALUES (159, 'PONTO', 17);
INSERT INTO `ubdistrito` VALUES (160, 'RAHUAPAMPA', 17);
INSERT INTO `ubdistrito` VALUES (161, 'RAPAYAN', 17);
INSERT INTO `ubdistrito` VALUES (162, 'SAN MARCOS', 17);
INSERT INTO `ubdistrito` VALUES (163, 'SAN PEDRO DE CHANA', 17);
INSERT INTO `ubdistrito` VALUES (164, 'UCO', 17);
INSERT INTO `ubdistrito` VALUES (165, 'HUARMEY', 18);
INSERT INTO `ubdistrito` VALUES (166, 'COCHAPETI', 18);
INSERT INTO `ubdistrito` VALUES (167, 'CULEBRAS', 18);
INSERT INTO `ubdistrito` VALUES (168, 'HUAYAN', 18);
INSERT INTO `ubdistrito` VALUES (169, 'MALVAS', 18);
INSERT INTO `ubdistrito` VALUES (170, 'CARAZ', 26);
INSERT INTO `ubdistrito` VALUES (171, 'HUALLANCA', 26);
INSERT INTO `ubdistrito` VALUES (172, 'HUATA', 26);
INSERT INTO `ubdistrito` VALUES (173, 'HUAYLAS', 26);
INSERT INTO `ubdistrito` VALUES (174, 'MATO', 26);
INSERT INTO `ubdistrito` VALUES (175, 'PAMPAROMAS', 26);
INSERT INTO `ubdistrito` VALUES (176, 'PUEBLO LIBRE', 26);
INSERT INTO `ubdistrito` VALUES (177, 'SANTA CRUZ', 26);
INSERT INTO `ubdistrito` VALUES (178, 'SANTO TORIBIO', 26);
INSERT INTO `ubdistrito` VALUES (179, 'YURACMARCA', 26);
INSERT INTO `ubdistrito` VALUES (180, 'PISCOBAMBA', 27);
INSERT INTO `ubdistrito` VALUES (181, 'CASCA', 27);
INSERT INTO `ubdistrito` VALUES (182, 'ELEAZAR GUZMAN BARRON', 27);
INSERT INTO `ubdistrito` VALUES (183, 'FIDEL OLIVAS ESCUDERO', 27);
INSERT INTO `ubdistrito` VALUES (184, 'LLAMA', 27);
INSERT INTO `ubdistrito` VALUES (185, 'LLUMPA', 27);
INSERT INTO `ubdistrito` VALUES (186, 'LUCMA', 27);
INSERT INTO `ubdistrito` VALUES (187, 'MUSGA', 27);
INSERT INTO `ubdistrito` VALUES (188, 'OCROS', 21);
INSERT INTO `ubdistrito` VALUES (189, 'ACAS', 21);
INSERT INTO `ubdistrito` VALUES (190, 'CAJAMARQUILLA', 21);
INSERT INTO `ubdistrito` VALUES (191, 'CARHUAPAMPA', 21);
INSERT INTO `ubdistrito` VALUES (192, 'COCHAS', 21);
INSERT INTO `ubdistrito` VALUES (193, 'CONGAS', 21);
INSERT INTO `ubdistrito` VALUES (194, 'LLIPA', 21);
INSERT INTO `ubdistrito` VALUES (195, 'SAN CRISTOBAL DE RAJAN', 21);
INSERT INTO `ubdistrito` VALUES (196, 'SAN PEDRO', 21);
INSERT INTO `ubdistrito` VALUES (197, 'SANTIAGO DE CHILCAS', 21);
INSERT INTO `ubdistrito` VALUES (198, 'CABANA', 22);
INSERT INTO `ubdistrito` VALUES (199, 'BOLOGNESI', 22);
INSERT INTO `ubdistrito` VALUES (200, 'CONCHUCOS', 22);
INSERT INTO `ubdistrito` VALUES (201, 'HUACASCHUQUE', 22);
INSERT INTO `ubdistrito` VALUES (202, 'HUANDOVAL', 22);
INSERT INTO `ubdistrito` VALUES (203, 'LACABAMBA', 22);
INSERT INTO `ubdistrito` VALUES (204, 'LLAPO', 22);
INSERT INTO `ubdistrito` VALUES (205, 'PALLASCA', 22);
INSERT INTO `ubdistrito` VALUES (206, 'PAMPAS', 22);
INSERT INTO `ubdistrito` VALUES (207, 'SANTA ROSA', 22);
INSERT INTO `ubdistrito` VALUES (208, 'TAUCA', 22);
INSERT INTO `ubdistrito` VALUES (209, 'POMABAMBA', 23);
INSERT INTO `ubdistrito` VALUES (210, 'HUAYLLAN', 23);
INSERT INTO `ubdistrito` VALUES (211, 'PAROBAMBA', 23);
INSERT INTO `ubdistrito` VALUES (212, 'QUINUABAMBA', 23);
INSERT INTO `ubdistrito` VALUES (213, 'RECUAY', 24);
INSERT INTO `ubdistrito` VALUES (214, 'CATAC', 24);
INSERT INTO `ubdistrito` VALUES (215, 'COTAPARACO', 24);
INSERT INTO `ubdistrito` VALUES (216, 'HUAYLLAPAMPA', 24);
INSERT INTO `ubdistrito` VALUES (217, 'LLACLLIN', 24);
INSERT INTO `ubdistrito` VALUES (218, 'MARCA', 24);
INSERT INTO `ubdistrito` VALUES (219, 'PAMPAS CHICO', 24);
INSERT INTO `ubdistrito` VALUES (220, 'PARARIN', 24);
INSERT INTO `ubdistrito` VALUES (221, 'TAPACOCHA', 24);
INSERT INTO `ubdistrito` VALUES (222, 'TICAPAMPA', 24);
INSERT INTO `ubdistrito` VALUES (223, 'CHIMBOTE', 25);
INSERT INTO `ubdistrito` VALUES (224, 'CACERES DEL PERU', 25);
INSERT INTO `ubdistrito` VALUES (225, 'COISHCO', 25);
INSERT INTO `ubdistrito` VALUES (226, 'MACATE', 25);
INSERT INTO `ubdistrito` VALUES (227, 'MORO', 25);
INSERT INTO `ubdistrito` VALUES (228, 'NEPE&Ntilde;A', 25);
INSERT INTO `ubdistrito` VALUES (229, 'SAMANCO', 25);
INSERT INTO `ubdistrito` VALUES (230, 'SANTA', 25);
INSERT INTO `ubdistrito` VALUES (231, 'NUEVO CHIMBOTE', 25);
INSERT INTO `ubdistrito` VALUES (232, 'SIHUAS', 26);
INSERT INTO `ubdistrito` VALUES (233, 'ACOBAMBA', 26);
INSERT INTO `ubdistrito` VALUES (234, 'ALFONSO UGARTE', 26);
INSERT INTO `ubdistrito` VALUES (235, 'CASHAPAMPA', 26);
INSERT INTO `ubdistrito` VALUES (236, 'CHINGALPO', 26);
INSERT INTO `ubdistrito` VALUES (237, 'HUAYLLABAMBA', 26);
INSERT INTO `ubdistrito` VALUES (238, 'QUICHES', 26);
INSERT INTO `ubdistrito` VALUES (239, 'RAGASH', 26);
INSERT INTO `ubdistrito` VALUES (240, 'SAN JUAN', 26);
INSERT INTO `ubdistrito` VALUES (241, 'SICSIBAMBA', 26);
INSERT INTO `ubdistrito` VALUES (242, 'YUNGAY', 27);
INSERT INTO `ubdistrito` VALUES (243, 'CASCAPARA', 27);
INSERT INTO `ubdistrito` VALUES (244, 'MANCOS', 27);
INSERT INTO `ubdistrito` VALUES (245, 'MATACOTO', 27);
INSERT INTO `ubdistrito` VALUES (246, 'QUILLO', 27);
INSERT INTO `ubdistrito` VALUES (247, 'RANRAHIRCA', 27);
INSERT INTO `ubdistrito` VALUES (248, 'SHUPLUY', 27);
INSERT INTO `ubdistrito` VALUES (249, 'YANAMA', 27);
INSERT INTO `ubdistrito` VALUES (250, 'ABANCAY', 28);
INSERT INTO `ubdistrito` VALUES (251, 'CHACOCHE', 28);
INSERT INTO `ubdistrito` VALUES (252, 'CIRCA', 28);
INSERT INTO `ubdistrito` VALUES (253, 'CURAHUASI', 28);
INSERT INTO `ubdistrito` VALUES (254, 'HUANIPACA', 28);
INSERT INTO `ubdistrito` VALUES (255, 'LAMBRAMA', 28);
INSERT INTO `ubdistrito` VALUES (256, 'PICHIRHUA', 28);
INSERT INTO `ubdistrito` VALUES (257, 'SAN PEDRO DE CACHORA', 28);
INSERT INTO `ubdistrito` VALUES (258, 'TAMBURCO', 28);
INSERT INTO `ubdistrito` VALUES (259, 'ANDAHUAYLAS', 29);
INSERT INTO `ubdistrito` VALUES (260, 'ANDARAPA', 29);
INSERT INTO `ubdistrito` VALUES (261, 'CHIARA', 29);
INSERT INTO `ubdistrito` VALUES (262, 'HUANCARAMA', 29);
INSERT INTO `ubdistrito` VALUES (263, 'HUANCARAY', 29);
INSERT INTO `ubdistrito` VALUES (264, 'HUAYANA', 29);
INSERT INTO `ubdistrito` VALUES (265, 'KISHUARA', 29);
INSERT INTO `ubdistrito` VALUES (266, 'PACOBAMBA', 29);
INSERT INTO `ubdistrito` VALUES (267, 'PACUCHA', 29);
INSERT INTO `ubdistrito` VALUES (268, 'PAMPACHIRI', 29);
INSERT INTO `ubdistrito` VALUES (269, 'POMACOCHA', 29);
INSERT INTO `ubdistrito` VALUES (270, 'SAN ANTONIO DE CACHI', 29);
INSERT INTO `ubdistrito` VALUES (271, 'SAN JERONIMO', 29);
INSERT INTO `ubdistrito` VALUES (272, 'SAN MIGUEL DE CHACCRAMPA', 29);
INSERT INTO `ubdistrito` VALUES (273, 'SANTA MARIA DE CHICMO', 29);
INSERT INTO `ubdistrito` VALUES (274, 'TALAVERA', 29);
INSERT INTO `ubdistrito` VALUES (275, 'TUMAY HUARACA', 29);
INSERT INTO `ubdistrito` VALUES (276, 'TURPO', 29);
INSERT INTO `ubdistrito` VALUES (277, 'KAQUIABAMBA', 29);
INSERT INTO `ubdistrito` VALUES (278, 'ANTABAMBA', 30);
INSERT INTO `ubdistrito` VALUES (279, 'EL ORO', 30);
INSERT INTO `ubdistrito` VALUES (280, 'HUAQUIRCA', 30);
INSERT INTO `ubdistrito` VALUES (281, 'JUAN ESPINOZA MEDRANO', 30);
INSERT INTO `ubdistrito` VALUES (282, 'OROPESA', 30);
INSERT INTO `ubdistrito` VALUES (283, 'PACHACONAS', 30);
INSERT INTO `ubdistrito` VALUES (284, 'SABAINO', 30);
INSERT INTO `ubdistrito` VALUES (285, 'CHALHUANCA', 31);
INSERT INTO `ubdistrito` VALUES (286, 'CAPAYA', 31);
INSERT INTO `ubdistrito` VALUES (287, 'CARAYBAMBA', 31);
INSERT INTO `ubdistrito` VALUES (288, 'CHAPIMARCA', 31);
INSERT INTO `ubdistrito` VALUES (289, 'COLCABAMBA', 31);
INSERT INTO `ubdistrito` VALUES (290, 'COTARUSE', 31);
INSERT INTO `ubdistrito` VALUES (291, 'HUAYLLO', 31);
INSERT INTO `ubdistrito` VALUES (292, 'JUSTO APU SAHUARAURA', 31);
INSERT INTO `ubdistrito` VALUES (293, 'LUCRE', 31);
INSERT INTO `ubdistrito` VALUES (294, 'POCOHUANCA', 31);
INSERT INTO `ubdistrito` VALUES (295, 'SAN JUAN DE CHAC&Ntilde;A', 31);
INSERT INTO `ubdistrito` VALUES (296, 'SA&Ntilde;AYCA', 31);
INSERT INTO `ubdistrito` VALUES (297, 'SORAYA', 31);
INSERT INTO `ubdistrito` VALUES (298, 'TAPAIRIHUA', 31);
INSERT INTO `ubdistrito` VALUES (299, 'TINTAY', 31);
INSERT INTO `ubdistrito` VALUES (300, 'TORAYA', 31);
INSERT INTO `ubdistrito` VALUES (301, 'YANACA', 31);
INSERT INTO `ubdistrito` VALUES (302, 'TAMBOBAMBA', 32);
INSERT INTO `ubdistrito` VALUES (303, 'COTABAMBAS', 32);
INSERT INTO `ubdistrito` VALUES (304, 'COYLLURQUI', 32);
INSERT INTO `ubdistrito` VALUES (305, 'HAQUIRA', 32);
INSERT INTO `ubdistrito` VALUES (306, 'MARA', 32);
INSERT INTO `ubdistrito` VALUES (307, 'CHALLHUAHUACHO', 32);
INSERT INTO `ubdistrito` VALUES (308, 'CHINCHEROS', 33);
INSERT INTO `ubdistrito` VALUES (309, 'ANCO-HUALLO', 33);
INSERT INTO `ubdistrito` VALUES (310, 'COCHARCAS', 33);
INSERT INTO `ubdistrito` VALUES (311, 'HUACCANA', 33);
INSERT INTO `ubdistrito` VALUES (312, 'OCOBAMBA', 33);
INSERT INTO `ubdistrito` VALUES (313, 'ONGOY', 33);
INSERT INTO `ubdistrito` VALUES (314, 'URANMARCA', 33);
INSERT INTO `ubdistrito` VALUES (315, 'RANRACANCHA', 33);
INSERT INTO `ubdistrito` VALUES (316, 'CHUQUIBAMBILLA', 34);
INSERT INTO `ubdistrito` VALUES (317, 'CURPAHUASI', 34);
INSERT INTO `ubdistrito` VALUES (318, 'GAMARRA', 34);
INSERT INTO `ubdistrito` VALUES (319, 'HUAYLLATI', 34);
INSERT INTO `ubdistrito` VALUES (320, 'MAMARA', 34);
INSERT INTO `ubdistrito` VALUES (321, 'MICAELA BASTIDAS', 34);
INSERT INTO `ubdistrito` VALUES (322, 'PATAYPAMPA', 34);
INSERT INTO `ubdistrito` VALUES (323, 'PROGRESO', 34);
INSERT INTO `ubdistrito` VALUES (324, 'SAN ANTONIO', 34);
INSERT INTO `ubdistrito` VALUES (325, 'SANTA ROSA', 34);
INSERT INTO `ubdistrito` VALUES (326, 'TURPAY', 34);
INSERT INTO `ubdistrito` VALUES (327, 'VILCABAMBA', 34);
INSERT INTO `ubdistrito` VALUES (328, 'VIRUNDO', 34);
INSERT INTO `ubdistrito` VALUES (329, 'CURASCO', 34);
INSERT INTO `ubdistrito` VALUES (330, 'AREQUIPA', 35);
INSERT INTO `ubdistrito` VALUES (331, 'ALTO SELVA ALEGRE', 35);
INSERT INTO `ubdistrito` VALUES (332, 'CAYMA', 35);
INSERT INTO `ubdistrito` VALUES (333, 'CERRO COLORADO', 35);
INSERT INTO `ubdistrito` VALUES (334, 'CHARACATO', 35);
INSERT INTO `ubdistrito` VALUES (335, 'CHIGUATA', 35);
INSERT INTO `ubdistrito` VALUES (336, 'JACOBO HUNTER', 35);
INSERT INTO `ubdistrito` VALUES (337, 'LA JOYA', 35);
INSERT INTO `ubdistrito` VALUES (338, 'MARIANO MELGAR', 35);
INSERT INTO `ubdistrito` VALUES (339, 'MIRAFLORES', 35);
INSERT INTO `ubdistrito` VALUES (340, 'MOLLEBAYA', 35);
INSERT INTO `ubdistrito` VALUES (341, 'PAUCARPATA', 35);
INSERT INTO `ubdistrito` VALUES (342, 'POCSI', 35);
INSERT INTO `ubdistrito` VALUES (343, 'POLOBAYA', 35);
INSERT INTO `ubdistrito` VALUES (344, 'QUEQUE&Ntilde;A', 35);
INSERT INTO `ubdistrito` VALUES (345, 'SABANDIA', 35);
INSERT INTO `ubdistrito` VALUES (346, 'SACHACA', 35);
INSERT INTO `ubdistrito` VALUES (347, 'SAN JUAN DE SIGUAS', 35);
INSERT INTO `ubdistrito` VALUES (348, 'SAN JUAN DE TARUCANI', 35);
INSERT INTO `ubdistrito` VALUES (349, 'SANTA ISABEL DE SIGUAS', 35);
INSERT INTO `ubdistrito` VALUES (350, 'SANTA RITA DE SIGUAS', 35);
INSERT INTO `ubdistrito` VALUES (351, 'SOCABAYA', 35);
INSERT INTO `ubdistrito` VALUES (352, 'TIABAYA', 35);
INSERT INTO `ubdistrito` VALUES (353, 'UCHUMAYO', 35);
INSERT INTO `ubdistrito` VALUES (354, 'VITOR', 35);
INSERT INTO `ubdistrito` VALUES (355, 'YANAHUARA', 35);
INSERT INTO `ubdistrito` VALUES (356, 'YARABAMBA', 35);
INSERT INTO `ubdistrito` VALUES (357, 'YURA', 35);
INSERT INTO `ubdistrito` VALUES (358, 'JOSE LUIS BUSTAMANTE Y RIVERO', 35);
INSERT INTO `ubdistrito` VALUES (359, 'CAMANA', 36);
INSERT INTO `ubdistrito` VALUES (360, 'JOSE MARIA QUIMPER', 36);
INSERT INTO `ubdistrito` VALUES (361, 'MARIANO NICOLAS VALCARCEL', 36);
INSERT INTO `ubdistrito` VALUES (362, 'MARISCAL CACERES', 36);
INSERT INTO `ubdistrito` VALUES (363, 'NICOLAS DE PIEROLA', 36);
INSERT INTO `ubdistrito` VALUES (364, 'OCO&Ntilde;A', 36);
INSERT INTO `ubdistrito` VALUES (365, 'QUILCA', 36);
INSERT INTO `ubdistrito` VALUES (366, 'SAMUEL PASTOR', 36);
INSERT INTO `ubdistrito` VALUES (367, 'CARAVELI', 37);
INSERT INTO `ubdistrito` VALUES (368, 'ACARI', 37);
INSERT INTO `ubdistrito` VALUES (369, 'ATICO', 37);
INSERT INTO `ubdistrito` VALUES (370, 'ATIQUIPA', 37);
INSERT INTO `ubdistrito` VALUES (371, 'BELLA UNION', 37);
INSERT INTO `ubdistrito` VALUES (372, 'CAHUACHO', 37);
INSERT INTO `ubdistrito` VALUES (373, 'CHALA', 37);
INSERT INTO `ubdistrito` VALUES (374, 'CHAPARRA', 37);
INSERT INTO `ubdistrito` VALUES (375, 'HUANUHUANU', 37);
INSERT INTO `ubdistrito` VALUES (376, 'JAQUI', 37);
INSERT INTO `ubdistrito` VALUES (377, 'LOMAS', 37);
INSERT INTO `ubdistrito` VALUES (378, 'QUICACHA', 37);
INSERT INTO `ubdistrito` VALUES (379, 'YAUCA', 37);
INSERT INTO `ubdistrito` VALUES (380, 'APLAO', 38);
INSERT INTO `ubdistrito` VALUES (381, 'ANDAGUA', 38);
INSERT INTO `ubdistrito` VALUES (382, 'AYO', 38);
INSERT INTO `ubdistrito` VALUES (383, 'CHACHAS', 38);
INSERT INTO `ubdistrito` VALUES (384, 'CHILCAYMARCA', 38);
INSERT INTO `ubdistrito` VALUES (385, 'CHOCO', 38);
INSERT INTO `ubdistrito` VALUES (386, 'HUANCARQUI', 38);
INSERT INTO `ubdistrito` VALUES (387, 'MACHAGUAY', 38);
INSERT INTO `ubdistrito` VALUES (388, 'ORCOPAMPA', 38);
INSERT INTO `ubdistrito` VALUES (389, 'PAMPACOLCA', 38);
INSERT INTO `ubdistrito` VALUES (390, 'TIPAN', 38);
INSERT INTO `ubdistrito` VALUES (391, 'U&Ntilde;ON', 38);
INSERT INTO `ubdistrito` VALUES (392, 'URACA', 38);
INSERT INTO `ubdistrito` VALUES (393, 'VIRACO', 38);
INSERT INTO `ubdistrito` VALUES (394, 'CHIVAY', 39);
INSERT INTO `ubdistrito` VALUES (395, 'ACHOMA', 39);
INSERT INTO `ubdistrito` VALUES (396, 'CABANACONDE', 39);
INSERT INTO `ubdistrito` VALUES (397, 'CALLALLI', 39);
INSERT INTO `ubdistrito` VALUES (398, 'CAYLLOMA', 39);
INSERT INTO `ubdistrito` VALUES (399, 'COPORAQUE', 39);
INSERT INTO `ubdistrito` VALUES (400, 'HUAMBO', 39);
INSERT INTO `ubdistrito` VALUES (401, 'HUANCA', 39);
INSERT INTO `ubdistrito` VALUES (402, 'ICHUPAMPA', 39);
INSERT INTO `ubdistrito` VALUES (403, 'LARI', 39);
INSERT INTO `ubdistrito` VALUES (404, 'LLUTA', 39);
INSERT INTO `ubdistrito` VALUES (405, 'MACA', 39);
INSERT INTO `ubdistrito` VALUES (406, 'MADRIGAL', 39);
INSERT INTO `ubdistrito` VALUES (407, 'SAN ANTONIO DE CHUCA', 39);
INSERT INTO `ubdistrito` VALUES (408, 'SIBAYO', 39);
INSERT INTO `ubdistrito` VALUES (409, 'TAPAY', 39);
INSERT INTO `ubdistrito` VALUES (410, 'TISCO', 39);
INSERT INTO `ubdistrito` VALUES (411, 'TUTI', 39);
INSERT INTO `ubdistrito` VALUES (412, 'YANQUE', 39);
INSERT INTO `ubdistrito` VALUES (413, 'MAJES', 39);
INSERT INTO `ubdistrito` VALUES (414, 'CHUQUIBAMBA', 40);
INSERT INTO `ubdistrito` VALUES (415, 'ANDARAY', 40);
INSERT INTO `ubdistrito` VALUES (416, 'CAYARANI', 40);
INSERT INTO `ubdistrito` VALUES (417, 'CHICHAS', 40);
INSERT INTO `ubdistrito` VALUES (418, 'IRAY', 40);
INSERT INTO `ubdistrito` VALUES (419, 'RIO GRANDE', 40);
INSERT INTO `ubdistrito` VALUES (420, 'SALAMANCA', 40);
INSERT INTO `ubdistrito` VALUES (421, 'YANAQUIHUA', 40);
INSERT INTO `ubdistrito` VALUES (422, 'MOLLENDO', 41);
INSERT INTO `ubdistrito` VALUES (423, 'COCACHACRA', 41);
INSERT INTO `ubdistrito` VALUES (424, 'DEAN VALDIVIA', 41);
INSERT INTO `ubdistrito` VALUES (425, 'ISLAY', 41);
INSERT INTO `ubdistrito` VALUES (426, 'MEJIA', 41);
INSERT INTO `ubdistrito` VALUES (427, 'PUNTA DE BOMBON', 41);
INSERT INTO `ubdistrito` VALUES (428, 'COTAHUASI', 42);
INSERT INTO `ubdistrito` VALUES (429, 'ALCA', 42);
INSERT INTO `ubdistrito` VALUES (430, 'CHARCANA', 42);
INSERT INTO `ubdistrito` VALUES (431, 'HUAYNACOTAS', 42);
INSERT INTO `ubdistrito` VALUES (432, 'PAMPAMARCA', 42);
INSERT INTO `ubdistrito` VALUES (433, 'PUYCA', 42);
INSERT INTO `ubdistrito` VALUES (434, 'QUECHUALLA', 42);
INSERT INTO `ubdistrito` VALUES (435, 'SAYLA', 42);
INSERT INTO `ubdistrito` VALUES (436, 'TAURIA', 42);
INSERT INTO `ubdistrito` VALUES (437, 'TOMEPAMPA', 42);
INSERT INTO `ubdistrito` VALUES (438, 'TORO', 42);
INSERT INTO `ubdistrito` VALUES (439, 'AYACUCHO', 43);
INSERT INTO `ubdistrito` VALUES (440, 'ACOCRO', 43);
INSERT INTO `ubdistrito` VALUES (441, 'ACOS VINCHOS', 43);
INSERT INTO `ubdistrito` VALUES (442, 'CARMEN ALTO', 43);
INSERT INTO `ubdistrito` VALUES (443, 'CHIARA', 43);
INSERT INTO `ubdistrito` VALUES (444, 'OCROS', 43);
INSERT INTO `ubdistrito` VALUES (445, 'PACAYCASA', 43);
INSERT INTO `ubdistrito` VALUES (446, 'QUINUA', 43);
INSERT INTO `ubdistrito` VALUES (447, 'SAN JOSE DE TICLLAS', 43);
INSERT INTO `ubdistrito` VALUES (448, 'SAN JUAN BAUTISTA', 43);
INSERT INTO `ubdistrito` VALUES (449, 'SANTIAGO DE PISCHA', 43);
INSERT INTO `ubdistrito` VALUES (450, 'SOCOS', 43);
INSERT INTO `ubdistrito` VALUES (451, 'TAMBILLO', 43);
INSERT INTO `ubdistrito` VALUES (452, 'VINCHOS', 43);
INSERT INTO `ubdistrito` VALUES (453, 'JESUS NAZARENO', 43);
INSERT INTO `ubdistrito` VALUES (454, 'CANGALLO', 44);
INSERT INTO `ubdistrito` VALUES (455, 'CHUSCHI', 44);
INSERT INTO `ubdistrito` VALUES (456, 'LOS MOROCHUCOS', 44);
INSERT INTO `ubdistrito` VALUES (457, 'MARIA PARADO DE BELLIDO', 44);
INSERT INTO `ubdistrito` VALUES (458, 'PARAS', 44);
INSERT INTO `ubdistrito` VALUES (459, 'TOTOS', 44);
INSERT INTO `ubdistrito` VALUES (460, 'SANCOS', 45);
INSERT INTO `ubdistrito` VALUES (461, 'CARAPO', 45);
INSERT INTO `ubdistrito` VALUES (462, 'SACSAMARCA', 45);
INSERT INTO `ubdistrito` VALUES (463, 'SANTIAGO DE LUCANAMARCA', 45);
INSERT INTO `ubdistrito` VALUES (464, 'HUANTA', 46);
INSERT INTO `ubdistrito` VALUES (465, 'AYAHUANCO', 46);
INSERT INTO `ubdistrito` VALUES (466, 'HUAMANGUILLA', 46);
INSERT INTO `ubdistrito` VALUES (467, 'IGUAIN', 46);
INSERT INTO `ubdistrito` VALUES (468, 'LURICOCHA', 46);
INSERT INTO `ubdistrito` VALUES (469, 'SANTILLANA', 46);
INSERT INTO `ubdistrito` VALUES (470, 'SIVIA', 46);
INSERT INTO `ubdistrito` VALUES (471, 'LLOCHEGUA', 46);
INSERT INTO `ubdistrito` VALUES (472, 'SAN MIGUEL', 47);
INSERT INTO `ubdistrito` VALUES (473, 'ANCO', 47);
INSERT INTO `ubdistrito` VALUES (474, 'AYNA', 47);
INSERT INTO `ubdistrito` VALUES (475, 'CHILCAS', 47);
INSERT INTO `ubdistrito` VALUES (476, 'CHUNGUI', 47);
INSERT INTO `ubdistrito` VALUES (477, 'LUIS CARRANZA', 47);
INSERT INTO `ubdistrito` VALUES (478, 'SANTA ROSA', 47);
INSERT INTO `ubdistrito` VALUES (479, 'TAMBO', 47);
INSERT INTO `ubdistrito` VALUES (480, 'PUQUIO', 48);
INSERT INTO `ubdistrito` VALUES (481, 'AUCARA', 48);
INSERT INTO `ubdistrito` VALUES (482, 'CABANA', 48);
INSERT INTO `ubdistrito` VALUES (483, 'CARMEN SALCEDO', 48);
INSERT INTO `ubdistrito` VALUES (484, 'CHAVI&Ntilde;A', 48);
INSERT INTO `ubdistrito` VALUES (485, 'CHIPAO', 48);
INSERT INTO `ubdistrito` VALUES (486, 'HUAC-HUAS', 48);
INSERT INTO `ubdistrito` VALUES (487, 'LARAMATE', 48);
INSERT INTO `ubdistrito` VALUES (488, 'LEONCIO PRADO', 48);
INSERT INTO `ubdistrito` VALUES (489, 'LLAUTA', 48);
INSERT INTO `ubdistrito` VALUES (490, 'LUCANAS', 48);
INSERT INTO `ubdistrito` VALUES (491, 'OCA&Ntilde;A', 48);
INSERT INTO `ubdistrito` VALUES (492, 'OTOCA', 48);
INSERT INTO `ubdistrito` VALUES (493, 'SAISA', 48);
INSERT INTO `ubdistrito` VALUES (494, 'SAN CRISTOBAL', 48);
INSERT INTO `ubdistrito` VALUES (495, 'SAN JUAN', 48);
INSERT INTO `ubdistrito` VALUES (496, 'SAN PEDRO', 48);
INSERT INTO `ubdistrito` VALUES (497, 'SAN PEDRO DE PALCO', 48);
INSERT INTO `ubdistrito` VALUES (498, 'SANCOS', 48);
INSERT INTO `ubdistrito` VALUES (499, 'SANTA ANA DE HUAYCAHUACHO', 48);
INSERT INTO `ubdistrito` VALUES (500, 'SANTA LUCIA', 48);
INSERT INTO `ubdistrito` VALUES (501, 'CORACORA', 49);
INSERT INTO `ubdistrito` VALUES (502, 'CHUMPI', 49);
INSERT INTO `ubdistrito` VALUES (503, 'CORONEL CASTA&Ntilde;EDA', 49);
INSERT INTO `ubdistrito` VALUES (504, 'PACAPAUSA', 49);
INSERT INTO `ubdistrito` VALUES (505, 'PULLO', 49);
INSERT INTO `ubdistrito` VALUES (506, 'PUYUSCA', 49);
INSERT INTO `ubdistrito` VALUES (507, 'SAN FRANCISCO DE RAVACAYCO', 49);
INSERT INTO `ubdistrito` VALUES (508, 'UPAHUACHO', 49);
INSERT INTO `ubdistrito` VALUES (509, 'PAUSA', 50);
INSERT INTO `ubdistrito` VALUES (510, 'COLTA', 50);
INSERT INTO `ubdistrito` VALUES (511, 'CORCULLA', 50);
INSERT INTO `ubdistrito` VALUES (512, 'LAMPA', 50);
INSERT INTO `ubdistrito` VALUES (513, 'MARCABAMBA', 50);
INSERT INTO `ubdistrito` VALUES (514, 'OYOLO', 50);
INSERT INTO `ubdistrito` VALUES (515, 'PARARCA', 50);
INSERT INTO `ubdistrito` VALUES (516, 'SAN JAVIER DE ALPABAMBA', 50);
INSERT INTO `ubdistrito` VALUES (517, 'SAN JOSE DE USHUA', 50);
INSERT INTO `ubdistrito` VALUES (518, 'SARA SARA', 50);
INSERT INTO `ubdistrito` VALUES (519, 'QUEROBAMBA', 51);
INSERT INTO `ubdistrito` VALUES (520, 'BELEN', 51);
INSERT INTO `ubdistrito` VALUES (521, 'CHALCOS', 51);
INSERT INTO `ubdistrito` VALUES (522, 'CHILCAYOC', 51);
INSERT INTO `ubdistrito` VALUES (523, 'HUACA&Ntilde;A', 51);
INSERT INTO `ubdistrito` VALUES (524, 'MORCOLLA', 51);
INSERT INTO `ubdistrito` VALUES (525, 'PAICO', 51);
INSERT INTO `ubdistrito` VALUES (526, 'SAN PEDRO DE LARCAY', 51);
INSERT INTO `ubdistrito` VALUES (527, 'SAN SALVADOR DE QUIJE', 51);
INSERT INTO `ubdistrito` VALUES (528, 'SANTIAGO DE PAUCARAY', 51);
INSERT INTO `ubdistrito` VALUES (529, 'SORAS', 51);
INSERT INTO `ubdistrito` VALUES (530, 'HUANCAPI', 52);
INSERT INTO `ubdistrito` VALUES (531, 'ALCAMENCA', 52);
INSERT INTO `ubdistrito` VALUES (532, 'APONGO', 52);
INSERT INTO `ubdistrito` VALUES (533, 'ASQUIPATA', 52);
INSERT INTO `ubdistrito` VALUES (534, 'CANARIA', 52);
INSERT INTO `ubdistrito` VALUES (535, 'CAYARA', 52);
INSERT INTO `ubdistrito` VALUES (536, 'COLCA', 52);
INSERT INTO `ubdistrito` VALUES (537, 'HUAMANQUIQUIA', 52);
INSERT INTO `ubdistrito` VALUES (538, 'HUANCARAYLLA', 52);
INSERT INTO `ubdistrito` VALUES (539, 'HUAYA', 52);
INSERT INTO `ubdistrito` VALUES (540, 'SARHUA', 52);
INSERT INTO `ubdistrito` VALUES (541, 'VILCANCHOS', 52);
INSERT INTO `ubdistrito` VALUES (542, 'VILCAS HUAMAN', 53);
INSERT INTO `ubdistrito` VALUES (543, 'ACCOMARCA', 53);
INSERT INTO `ubdistrito` VALUES (544, 'CARHUANCA', 53);
INSERT INTO `ubdistrito` VALUES (545, 'CONCEPCION', 53);
INSERT INTO `ubdistrito` VALUES (546, 'HUAMBALPA', 53);
INSERT INTO `ubdistrito` VALUES (547, 'INDEPENDENCIA', 53);
INSERT INTO `ubdistrito` VALUES (548, 'SAURAMA', 53);
INSERT INTO `ubdistrito` VALUES (549, 'VISCHONGO', 53);
INSERT INTO `ubdistrito` VALUES (550, 'CAJAMARCA', 54);
INSERT INTO `ubdistrito` VALUES (551, 'CAJAMARCA', 54);
INSERT INTO `ubdistrito` VALUES (552, 'ASUNCION', 54);
INSERT INTO `ubdistrito` VALUES (553, 'CHETILLA', 54);
INSERT INTO `ubdistrito` VALUES (554, 'COSPAN', 54);
INSERT INTO `ubdistrito` VALUES (555, 'ENCA&Ntilde;ADA', 54);
INSERT INTO `ubdistrito` VALUES (556, 'JESUS', 54);
INSERT INTO `ubdistrito` VALUES (557, 'LLACANORA', 54);
INSERT INTO `ubdistrito` VALUES (558, 'LOS BA&Ntilde;OS DEL INCA', 54);
INSERT INTO `ubdistrito` VALUES (559, 'MAGDALENA', 54);
INSERT INTO `ubdistrito` VALUES (560, 'MATARA', 54);
INSERT INTO `ubdistrito` VALUES (561, 'NAMORA', 54);
INSERT INTO `ubdistrito` VALUES (562, 'SAN JUAN', 54);
INSERT INTO `ubdistrito` VALUES (563, 'CAJABAMBA', 55);
INSERT INTO `ubdistrito` VALUES (564, 'CACHACHI', 55);
INSERT INTO `ubdistrito` VALUES (565, 'CONDEBAMBA', 55);
INSERT INTO `ubdistrito` VALUES (566, 'SITACOCHA', 55);
INSERT INTO `ubdistrito` VALUES (567, 'CELENDIN', 56);
INSERT INTO `ubdistrito` VALUES (568, 'CHUMUCH', 56);
INSERT INTO `ubdistrito` VALUES (569, 'CORTEGANA', 56);
INSERT INTO `ubdistrito` VALUES (570, 'HUASMIN', 56);
INSERT INTO `ubdistrito` VALUES (571, 'JORGE CHAVEZ', 56);
INSERT INTO `ubdistrito` VALUES (572, 'JOSE GALVEZ', 56);
INSERT INTO `ubdistrito` VALUES (573, 'MIGUEL IGLESIAS', 56);
INSERT INTO `ubdistrito` VALUES (574, 'OXAMARCA', 56);
INSERT INTO `ubdistrito` VALUES (575, 'SOROCHUCO', 56);
INSERT INTO `ubdistrito` VALUES (576, 'SUCRE', 56);
INSERT INTO `ubdistrito` VALUES (577, 'UTCO', 56);
INSERT INTO `ubdistrito` VALUES (578, 'LA LIBERTAD DE PALLAN', 56);
INSERT INTO `ubdistrito` VALUES (579, 'CHOTA', 57);
INSERT INTO `ubdistrito` VALUES (580, 'ANGUIA', 57);
INSERT INTO `ubdistrito` VALUES (581, 'CHADIN', 57);
INSERT INTO `ubdistrito` VALUES (582, 'CHIGUIRIP', 57);
INSERT INTO `ubdistrito` VALUES (583, 'CHIMBAN', 57);
INSERT INTO `ubdistrito` VALUES (584, 'CHOROPAMPA', 57);
INSERT INTO `ubdistrito` VALUES (585, 'COCHABAMBA', 57);
INSERT INTO `ubdistrito` VALUES (586, 'CONCHAN', 57);
INSERT INTO `ubdistrito` VALUES (587, 'HUAMBOS', 57);
INSERT INTO `ubdistrito` VALUES (588, 'LAJAS', 57);
INSERT INTO `ubdistrito` VALUES (589, 'LLAMA', 57);
INSERT INTO `ubdistrito` VALUES (590, 'MIRACOSTA', 57);
INSERT INTO `ubdistrito` VALUES (591, 'PACCHA', 57);
INSERT INTO `ubdistrito` VALUES (592, 'PION', 57);
INSERT INTO `ubdistrito` VALUES (593, 'QUEROCOTO', 57);
INSERT INTO `ubdistrito` VALUES (594, 'SAN JUAN DE LICUPIS', 57);
INSERT INTO `ubdistrito` VALUES (595, 'TACABAMBA', 57);
INSERT INTO `ubdistrito` VALUES (596, 'TOCMOCHE', 57);
INSERT INTO `ubdistrito` VALUES (597, 'CHALAMARCA', 57);
INSERT INTO `ubdistrito` VALUES (598, 'CONTUMAZA', 58);
INSERT INTO `ubdistrito` VALUES (599, 'CHILETE', 58);
INSERT INTO `ubdistrito` VALUES (600, 'CUPISNIQUE', 58);
INSERT INTO `ubdistrito` VALUES (601, 'GUZMANGO', 58);
INSERT INTO `ubdistrito` VALUES (602, 'SAN BENITO', 58);
INSERT INTO `ubdistrito` VALUES (603, 'SANTA CRUZ DE TOLED', 58);
INSERT INTO `ubdistrito` VALUES (604, 'TANTARICA', 58);
INSERT INTO `ubdistrito` VALUES (605, 'YONAN', 58);
INSERT INTO `ubdistrito` VALUES (606, 'CUTERVO', 59);
INSERT INTO `ubdistrito` VALUES (607, 'CALLAYUC', 59);
INSERT INTO `ubdistrito` VALUES (608, 'CHOROS', 59);
INSERT INTO `ubdistrito` VALUES (609, 'CUJILLO', 59);
INSERT INTO `ubdistrito` VALUES (610, 'LA RAMADA', 59);
INSERT INTO `ubdistrito` VALUES (611, 'PIMPINGOS', 59);
INSERT INTO `ubdistrito` VALUES (612, 'QUEROCOTILLO', 59);
INSERT INTO `ubdistrito` VALUES (613, 'SAN ANDRES DE CUTERVO', 59);
INSERT INTO `ubdistrito` VALUES (614, 'SAN JUAN DE CUTERVO', 59);
INSERT INTO `ubdistrito` VALUES (615, 'SAN LUIS DE LUCMA', 59);
INSERT INTO `ubdistrito` VALUES (616, 'SANTA CRUZ', 59);
INSERT INTO `ubdistrito` VALUES (617, 'SANTO DOMINGO DE LA CAPILLA', 59);
INSERT INTO `ubdistrito` VALUES (618, 'SANTO TOMAS', 59);
INSERT INTO `ubdistrito` VALUES (619, 'SOCOTA', 59);
INSERT INTO `ubdistrito` VALUES (620, 'TORIBIO CASANOVA', 59);
INSERT INTO `ubdistrito` VALUES (621, 'BAMBAMARCA', 60);
INSERT INTO `ubdistrito` VALUES (622, 'CHUGUR', 60);
INSERT INTO `ubdistrito` VALUES (623, 'HUALGAYOC', 60);
INSERT INTO `ubdistrito` VALUES (624, 'JAEN', 61);
INSERT INTO `ubdistrito` VALUES (625, 'BELLAVISTA', 61);
INSERT INTO `ubdistrito` VALUES (626, 'CHONTALI', 61);
INSERT INTO `ubdistrito` VALUES (627, 'COLASAY', 61);
INSERT INTO `ubdistrito` VALUES (628, 'HUABAL', 61);
INSERT INTO `ubdistrito` VALUES (629, 'LAS PIRIAS', 61);
INSERT INTO `ubdistrito` VALUES (630, 'POMAHUACA', 61);
INSERT INTO `ubdistrito` VALUES (631, 'PUCARA', 61);
INSERT INTO `ubdistrito` VALUES (632, 'SALLIQUE', 61);
INSERT INTO `ubdistrito` VALUES (633, 'SAN FELIPE', 61);
INSERT INTO `ubdistrito` VALUES (634, 'SAN JOSE DEL ALTO', 61);
INSERT INTO `ubdistrito` VALUES (635, 'SANTA ROSA', 61);
INSERT INTO `ubdistrito` VALUES (636, 'SAN IGNACIO', 62);
INSERT INTO `ubdistrito` VALUES (637, 'CHIRINOS', 62);
INSERT INTO `ubdistrito` VALUES (638, 'HUARANGO', 62);
INSERT INTO `ubdistrito` VALUES (639, 'LA COIPA', 62);
INSERT INTO `ubdistrito` VALUES (640, 'NAMBALLE', 62);
INSERT INTO `ubdistrito` VALUES (641, 'SAN JOSE DE LOURDES', 62);
INSERT INTO `ubdistrito` VALUES (642, 'TABACONAS', 62);
INSERT INTO `ubdistrito` VALUES (643, 'PEDRO GALVEZ', 63);
INSERT INTO `ubdistrito` VALUES (644, 'CHANCAY', 63);
INSERT INTO `ubdistrito` VALUES (645, 'EDUARDO VILLANUEVA', 63);
INSERT INTO `ubdistrito` VALUES (646, 'GREGORIO PITA', 63);
INSERT INTO `ubdistrito` VALUES (647, 'ICHOCAN', 63);
INSERT INTO `ubdistrito` VALUES (648, 'JOSE MANUEL QUIROZ', 63);
INSERT INTO `ubdistrito` VALUES (649, 'JOSE SABOGAL', 63);
INSERT INTO `ubdistrito` VALUES (650, 'SAN MIGUEL', 64);
INSERT INTO `ubdistrito` VALUES (651, 'SAN MIGUEL', 64);
INSERT INTO `ubdistrito` VALUES (652, 'BOLIVAR', 64);
INSERT INTO `ubdistrito` VALUES (653, 'CALQUIS', 64);
INSERT INTO `ubdistrito` VALUES (654, 'CATILLUC', 64);
INSERT INTO `ubdistrito` VALUES (655, 'EL PRADO', 64);
INSERT INTO `ubdistrito` VALUES (656, 'LA FLORIDA', 64);
INSERT INTO `ubdistrito` VALUES (657, 'LLAPA', 64);
INSERT INTO `ubdistrito` VALUES (658, 'NANCHOC', 64);
INSERT INTO `ubdistrito` VALUES (659, 'NIEPOS', 64);
INSERT INTO `ubdistrito` VALUES (660, 'SAN GREGORIO', 64);
INSERT INTO `ubdistrito` VALUES (661, 'SAN SILVESTRE DE COCHAN', 64);
INSERT INTO `ubdistrito` VALUES (662, 'TONGOD', 64);
INSERT INTO `ubdistrito` VALUES (663, 'UNION AGUA BLANCA', 64);
INSERT INTO `ubdistrito` VALUES (664, 'SAN PABLO', 65);
INSERT INTO `ubdistrito` VALUES (665, 'SAN BERNARDINO', 65);
INSERT INTO `ubdistrito` VALUES (666, 'SAN LUIS', 65);
INSERT INTO `ubdistrito` VALUES (667, 'TUMBADEN', 65);
INSERT INTO `ubdistrito` VALUES (668, 'SANTA CRUZ', 66);
INSERT INTO `ubdistrito` VALUES (669, 'ANDABAMBA', 66);
INSERT INTO `ubdistrito` VALUES (670, 'CATACHE', 66);
INSERT INTO `ubdistrito` VALUES (671, 'CHANCAYBA&Ntilde;OS', 66);
INSERT INTO `ubdistrito` VALUES (672, 'LA ESPERANZA', 66);
INSERT INTO `ubdistrito` VALUES (673, 'NINABAMBA', 66);
INSERT INTO `ubdistrito` VALUES (674, 'PULAN', 66);
INSERT INTO `ubdistrito` VALUES (675, 'SAUCEPAMPA', 66);
INSERT INTO `ubdistrito` VALUES (676, 'SEXI', 66);
INSERT INTO `ubdistrito` VALUES (677, 'UTICYACU', 66);
INSERT INTO `ubdistrito` VALUES (678, 'YAUYUCAN', 66);
INSERT INTO `ubdistrito` VALUES (679, 'CALLAO', 67);
INSERT INTO `ubdistrito` VALUES (680, 'BELLAVISTA', 67);
INSERT INTO `ubdistrito` VALUES (681, 'CARMEN DE LA LEGUA REYNOSO', 67);
INSERT INTO `ubdistrito` VALUES (682, 'LA PERLA', 67);
INSERT INTO `ubdistrito` VALUES (683, 'LA PUNTA', 67);
INSERT INTO `ubdistrito` VALUES (684, 'VENTANILLA', 67);
INSERT INTO `ubdistrito` VALUES (685, 'CUSCO', 67);
INSERT INTO `ubdistrito` VALUES (686, 'CCORCA', 67);
INSERT INTO `ubdistrito` VALUES (687, 'POROY', 67);
INSERT INTO `ubdistrito` VALUES (688, 'SAN JERONIMO', 67);
INSERT INTO `ubdistrito` VALUES (689, 'SAN SEBASTIAN', 67);
INSERT INTO `ubdistrito` VALUES (690, 'SANTIAGO', 67);
INSERT INTO `ubdistrito` VALUES (691, 'SAYLLA', 67);
INSERT INTO `ubdistrito` VALUES (692, 'WANCHAQ', 67);
INSERT INTO `ubdistrito` VALUES (693, 'ACOMAYO', 68);
INSERT INTO `ubdistrito` VALUES (694, 'ACOPIA', 68);
INSERT INTO `ubdistrito` VALUES (695, 'ACOS', 68);
INSERT INTO `ubdistrito` VALUES (696, 'MOSOC LLACTA', 68);
INSERT INTO `ubdistrito` VALUES (697, 'POMACANCHI', 68);
INSERT INTO `ubdistrito` VALUES (698, 'RONDOCAN', 68);
INSERT INTO `ubdistrito` VALUES (699, 'SANGARARA', 68);
INSERT INTO `ubdistrito` VALUES (700, 'ANTA', 69);
INSERT INTO `ubdistrito` VALUES (701, 'ANCAHUASI', 69);
INSERT INTO `ubdistrito` VALUES (702, 'CACHIMAYO', 69);
INSERT INTO `ubdistrito` VALUES (703, 'CHINCHAYPUJIO', 69);
INSERT INTO `ubdistrito` VALUES (704, 'HUAROCONDO', 69);
INSERT INTO `ubdistrito` VALUES (705, 'LIMATAMBO', 69);
INSERT INTO `ubdistrito` VALUES (706, 'MOLLEPATA', 69);
INSERT INTO `ubdistrito` VALUES (707, 'PUCYURA', 69);
INSERT INTO `ubdistrito` VALUES (708, 'ZURITE', 69);
INSERT INTO `ubdistrito` VALUES (709, 'CALCA', 70);
INSERT INTO `ubdistrito` VALUES (710, 'COYA', 70);
INSERT INTO `ubdistrito` VALUES (711, 'LAMAY', 70);
INSERT INTO `ubdistrito` VALUES (712, 'LARES', 70);
INSERT INTO `ubdistrito` VALUES (713, 'PISAC', 70);
INSERT INTO `ubdistrito` VALUES (714, 'SAN SALVADOR', 70);
INSERT INTO `ubdistrito` VALUES (715, 'TARAY', 70);
INSERT INTO `ubdistrito` VALUES (716, 'YANATILE', 70);
INSERT INTO `ubdistrito` VALUES (717, 'YANAOCA', 71);
INSERT INTO `ubdistrito` VALUES (718, 'CHECCA', 71);
INSERT INTO `ubdistrito` VALUES (719, 'KUNTURKANKI', 71);
INSERT INTO `ubdistrito` VALUES (720, 'LANGUI', 71);
INSERT INTO `ubdistrito` VALUES (721, 'LAYO', 71);
INSERT INTO `ubdistrito` VALUES (722, 'PAMPAMARCA', 71);
INSERT INTO `ubdistrito` VALUES (723, 'QUEHUE', 71);
INSERT INTO `ubdistrito` VALUES (724, 'TUPAC AMARU', 71);
INSERT INTO `ubdistrito` VALUES (725, 'SICUANI', 72);
INSERT INTO `ubdistrito` VALUES (726, 'CHECACUPE', 72);
INSERT INTO `ubdistrito` VALUES (727, 'COMBAPATA', 72);
INSERT INTO `ubdistrito` VALUES (728, 'MARANGANI', 72);
INSERT INTO `ubdistrito` VALUES (729, 'PITUMARCA', 72);
INSERT INTO `ubdistrito` VALUES (730, 'SAN PABLO', 72);
INSERT INTO `ubdistrito` VALUES (731, 'SAN PEDRO', 72);
INSERT INTO `ubdistrito` VALUES (732, 'TINTA', 72);
INSERT INTO `ubdistrito` VALUES (733, 'SANTO TOMAS', 73);
INSERT INTO `ubdistrito` VALUES (734, 'CAPACMARCA', 73);
INSERT INTO `ubdistrito` VALUES (735, 'CHAMACA', 73);
INSERT INTO `ubdistrito` VALUES (736, 'COLQUEMARCA', 73);
INSERT INTO `ubdistrito` VALUES (737, 'LIVITACA', 73);
INSERT INTO `ubdistrito` VALUES (738, 'LLUSCO', 73);
INSERT INTO `ubdistrito` VALUES (739, 'QUI&Ntilde;OTA', 73);
INSERT INTO `ubdistrito` VALUES (740, 'VELILLE', 73);
INSERT INTO `ubdistrito` VALUES (741, 'ESPINAR', 74);
INSERT INTO `ubdistrito` VALUES (742, 'CONDOROMA', 74);
INSERT INTO `ubdistrito` VALUES (743, 'COPORAQUE', 74);
INSERT INTO `ubdistrito` VALUES (744, 'OCORURO', 74);
INSERT INTO `ubdistrito` VALUES (745, 'PALLPATA', 74);
INSERT INTO `ubdistrito` VALUES (746, 'PICHIGUA', 74);
INSERT INTO `ubdistrito` VALUES (747, 'SUYCKUTAMBO', 74);
INSERT INTO `ubdistrito` VALUES (748, 'ALTO PICHIGUA', 74);
INSERT INTO `ubdistrito` VALUES (749, 'SANTA ANA', 75);
INSERT INTO `ubdistrito` VALUES (750, 'ECHARATE', 75);
INSERT INTO `ubdistrito` VALUES (751, 'HUAYOPATA', 75);
INSERT INTO `ubdistrito` VALUES (752, 'MARANURA', 75);
INSERT INTO `ubdistrito` VALUES (753, 'OCOBAMBA', 75);
INSERT INTO `ubdistrito` VALUES (754, 'QUELLOUNO', 75);
INSERT INTO `ubdistrito` VALUES (755, 'KIMBIRI', 75);
INSERT INTO `ubdistrito` VALUES (756, 'SANTA TERESA', 75);
INSERT INTO `ubdistrito` VALUES (757, 'VILCABAMBA', 75);
INSERT INTO `ubdistrito` VALUES (758, 'PICHARI', 75);
INSERT INTO `ubdistrito` VALUES (759, 'PARURO', 76);
INSERT INTO `ubdistrito` VALUES (760, 'ACCHA', 76);
INSERT INTO `ubdistrito` VALUES (761, 'CCAPI', 76);
INSERT INTO `ubdistrito` VALUES (762, 'COLCHA', 76);
INSERT INTO `ubdistrito` VALUES (763, 'HUANOQUITE', 76);
INSERT INTO `ubdistrito` VALUES (764, 'OMACHA', 76);
INSERT INTO `ubdistrito` VALUES (765, 'PACCARITAMBO', 76);
INSERT INTO `ubdistrito` VALUES (766, 'PILLPINTO', 76);
INSERT INTO `ubdistrito` VALUES (767, 'YAURISQUE', 76);
INSERT INTO `ubdistrito` VALUES (768, 'PAUCARTAMBO', 77);
INSERT INTO `ubdistrito` VALUES (769, 'CAICAY', 77);
INSERT INTO `ubdistrito` VALUES (770, 'CHALLABAMBA', 77);
INSERT INTO `ubdistrito` VALUES (771, 'COLQUEPATA', 77);
INSERT INTO `ubdistrito` VALUES (772, 'HUANCARANI', 77);
INSERT INTO `ubdistrito` VALUES (773, 'KOS&Ntilde;IPATA', 77);
INSERT INTO `ubdistrito` VALUES (774, 'URCOS', 78);
INSERT INTO `ubdistrito` VALUES (775, 'ANDAHUAYLILLAS', 78);
INSERT INTO `ubdistrito` VALUES (776, 'CAMANTI', 78);
INSERT INTO `ubdistrito` VALUES (777, 'CCARHUAYO', 78);
INSERT INTO `ubdistrito` VALUES (778, 'CCATCA', 78);
INSERT INTO `ubdistrito` VALUES (779, 'CUSIPATA', 78);
INSERT INTO `ubdistrito` VALUES (780, 'HUARO', 78);
INSERT INTO `ubdistrito` VALUES (781, 'LUCRE', 78);
INSERT INTO `ubdistrito` VALUES (782, 'MARCAPATA', 78);
INSERT INTO `ubdistrito` VALUES (783, 'OCONGATE', 78);
INSERT INTO `ubdistrito` VALUES (784, 'OROPESA', 78);
INSERT INTO `ubdistrito` VALUES (785, 'QUIQUIJANA', 78);
INSERT INTO `ubdistrito` VALUES (786, 'URUBAMBA', 79);
INSERT INTO `ubdistrito` VALUES (787, 'CHINCHERO', 79);
INSERT INTO `ubdistrito` VALUES (788, 'HUAYLLABAMBA', 79);
INSERT INTO `ubdistrito` VALUES (789, 'MACHUPICCHU', 79);
INSERT INTO `ubdistrito` VALUES (790, 'MARAS', 79);
INSERT INTO `ubdistrito` VALUES (791, 'OLLANTAYTAMBO', 79);
INSERT INTO `ubdistrito` VALUES (792, 'YUCAY', 79);
INSERT INTO `ubdistrito` VALUES (793, 'HUANCAVELICA', 80);
INSERT INTO `ubdistrito` VALUES (794, 'ACOBAMBILLA', 80);
INSERT INTO `ubdistrito` VALUES (795, 'ACORIA', 80);
INSERT INTO `ubdistrito` VALUES (796, 'CONAYCA', 80);
INSERT INTO `ubdistrito` VALUES (797, 'CUENCA', 80);
INSERT INTO `ubdistrito` VALUES (798, 'HUACHOCOLPA', 80);
INSERT INTO `ubdistrito` VALUES (799, 'HUAYLLAHUARA', 80);
INSERT INTO `ubdistrito` VALUES (800, 'IZCUCHACA', 80);
INSERT INTO `ubdistrito` VALUES (801, 'LARIA', 80);
INSERT INTO `ubdistrito` VALUES (802, 'MANTA', 80);
INSERT INTO `ubdistrito` VALUES (803, 'MARISCAL CACERES', 80);
INSERT INTO `ubdistrito` VALUES (804, 'MOYA', 80);
INSERT INTO `ubdistrito` VALUES (805, 'NUEVO OCCORO', 80);
INSERT INTO `ubdistrito` VALUES (806, 'PALCA', 80);
INSERT INTO `ubdistrito` VALUES (807, 'PILCHACA', 80);
INSERT INTO `ubdistrito` VALUES (808, 'VILCA', 80);
INSERT INTO `ubdistrito` VALUES (809, 'YAULI', 80);
INSERT INTO `ubdistrito` VALUES (810, 'ASCENSION', 80);
INSERT INTO `ubdistrito` VALUES (811, 'HUANDO', 80);
INSERT INTO `ubdistrito` VALUES (812, 'ACOBAMBA', 81);
INSERT INTO `ubdistrito` VALUES (813, 'ANDABAMBA', 81);
INSERT INTO `ubdistrito` VALUES (814, 'ANTA', 81);
INSERT INTO `ubdistrito` VALUES (815, 'CAJA', 81);
INSERT INTO `ubdistrito` VALUES (816, 'MARCAS', 81);
INSERT INTO `ubdistrito` VALUES (817, 'PAUCARA', 81);
INSERT INTO `ubdistrito` VALUES (818, 'POMACOCHA', 81);
INSERT INTO `ubdistrito` VALUES (819, 'ROSARIO', 81);
INSERT INTO `ubdistrito` VALUES (820, 'LIRCAY', 82);
INSERT INTO `ubdistrito` VALUES (821, 'ANCHONGA', 82);
INSERT INTO `ubdistrito` VALUES (822, 'CALLANMARCA', 82);
INSERT INTO `ubdistrito` VALUES (823, 'CCOCHACCASA', 82);
INSERT INTO `ubdistrito` VALUES (824, 'CHINCHO', 82);
INSERT INTO `ubdistrito` VALUES (825, 'CONGALLA', 82);
INSERT INTO `ubdistrito` VALUES (826, 'HUANCA-HUANCA', 82);
INSERT INTO `ubdistrito` VALUES (827, 'HUAYLLAY GRANDE', 82);
INSERT INTO `ubdistrito` VALUES (828, 'JULCAMARCA', 82);
INSERT INTO `ubdistrito` VALUES (829, 'SAN ANTONIO DE ANTAPARCO', 82);
INSERT INTO `ubdistrito` VALUES (830, 'SANTO TOMAS DE PATA', 82);
INSERT INTO `ubdistrito` VALUES (831, 'SECCLLA', 82);
INSERT INTO `ubdistrito` VALUES (832, 'CASTROVIRREYNA', 83);
INSERT INTO `ubdistrito` VALUES (833, 'ARMA', 83);
INSERT INTO `ubdistrito` VALUES (834, 'AURAHUA', 83);
INSERT INTO `ubdistrito` VALUES (835, 'CAPILLAS', 83);
INSERT INTO `ubdistrito` VALUES (836, 'CHUPAMARCA', 83);
INSERT INTO `ubdistrito` VALUES (837, 'COCAS', 83);
INSERT INTO `ubdistrito` VALUES (838, 'HUACHOS', 83);
INSERT INTO `ubdistrito` VALUES (839, 'HUAMATAMBO', 83);
INSERT INTO `ubdistrito` VALUES (840, 'MOLLEPAMPA', 83);
INSERT INTO `ubdistrito` VALUES (841, 'SAN JUAN', 83);
INSERT INTO `ubdistrito` VALUES (842, 'SANTA ANA', 83);
INSERT INTO `ubdistrito` VALUES (843, 'TANTARA', 83);
INSERT INTO `ubdistrito` VALUES (844, 'TICRAPO', 83);
INSERT INTO `ubdistrito` VALUES (845, 'CHURCAMPA', 84);
INSERT INTO `ubdistrito` VALUES (846, 'ANCO', 84);
INSERT INTO `ubdistrito` VALUES (847, 'CHINCHIHUASI', 84);
INSERT INTO `ubdistrito` VALUES (848, 'EL CARMEN', 84);
INSERT INTO `ubdistrito` VALUES (849, 'LA MERCED', 84);
INSERT INTO `ubdistrito` VALUES (850, 'LOCROJA', 84);
INSERT INTO `ubdistrito` VALUES (851, 'PAUCARBAMBA', 84);
INSERT INTO `ubdistrito` VALUES (852, 'SAN MIGUEL DE MAYOCC', 84);
INSERT INTO `ubdistrito` VALUES (853, 'SAN PEDRO DE CORIS', 84);
INSERT INTO `ubdistrito` VALUES (854, 'PACHAMARCA', 84);
INSERT INTO `ubdistrito` VALUES (855, 'HUAYTARA', 85);
INSERT INTO `ubdistrito` VALUES (856, 'AYAVI', 85);
INSERT INTO `ubdistrito` VALUES (857, 'CORDOVA', 85);
INSERT INTO `ubdistrito` VALUES (858, 'HUAYACUNDO ARMA', 85);
INSERT INTO `ubdistrito` VALUES (859, 'LARAMARCA', 85);
INSERT INTO `ubdistrito` VALUES (860, 'OCOYO', 85);
INSERT INTO `ubdistrito` VALUES (861, 'PILPICHACA', 85);
INSERT INTO `ubdistrito` VALUES (862, 'QUERCO', 85);
INSERT INTO `ubdistrito` VALUES (863, 'QUITO-ARMA', 85);
INSERT INTO `ubdistrito` VALUES (864, 'SAN ANTONIO DE CUSICANCHA', 85);
INSERT INTO `ubdistrito` VALUES (865, 'SAN FRANCISCO DE SANGAYAICO', 85);
INSERT INTO `ubdistrito` VALUES (866, 'SAN ISIDRO', 85);
INSERT INTO `ubdistrito` VALUES (867, 'SANTIAGO DE CHOCORVOS', 85);
INSERT INTO `ubdistrito` VALUES (868, 'SANTIAGO DE QUIRAHUARA', 85);
INSERT INTO `ubdistrito` VALUES (869, 'SANTO DOMINGO DE CAPILLAS', 85);
INSERT INTO `ubdistrito` VALUES (870, 'TAMBO', 85);
INSERT INTO `ubdistrito` VALUES (871, 'PAMPAS', 86);
INSERT INTO `ubdistrito` VALUES (872, 'ACOSTAMBO', 86);
INSERT INTO `ubdistrito` VALUES (873, 'ACRAQUIA', 86);
INSERT INTO `ubdistrito` VALUES (874, 'AHUAYCHA', 86);
INSERT INTO `ubdistrito` VALUES (875, 'COLCABAMBA', 86);
INSERT INTO `ubdistrito` VALUES (876, 'DANIEL HERNANDEZ', 86);
INSERT INTO `ubdistrito` VALUES (877, 'HUACHOCOLPA', 86);
INSERT INTO `ubdistrito` VALUES (878, 'HUARIBAMBA', 86);
INSERT INTO `ubdistrito` VALUES (879, '&Ntilde;AHUIMPUQUIO', 86);
INSERT INTO `ubdistrito` VALUES (880, 'PAZOS', 86);
INSERT INTO `ubdistrito` VALUES (881, 'QUISHUAR', 86);
INSERT INTO `ubdistrito` VALUES (882, 'SALCABAMBA', 86);
INSERT INTO `ubdistrito` VALUES (883, 'SALCAHUASI', 86);
INSERT INTO `ubdistrito` VALUES (884, 'SAN MARCOS DE ROCCHAC', 86);
INSERT INTO `ubdistrito` VALUES (885, 'SURCUBAMBA', 86);
INSERT INTO `ubdistrito` VALUES (886, 'TINTAY PUNCU', 86);
INSERT INTO `ubdistrito` VALUES (887, 'HUANUCO', 87);
INSERT INTO `ubdistrito` VALUES (888, 'AMARILIS', 87);
INSERT INTO `ubdistrito` VALUES (889, 'CHINCHAO', 87);
INSERT INTO `ubdistrito` VALUES (890, 'CHURUBAMBA', 87);
INSERT INTO `ubdistrito` VALUES (891, 'MARGOS', 87);
INSERT INTO `ubdistrito` VALUES (892, 'QUISQUI', 87);
INSERT INTO `ubdistrito` VALUES (893, 'SAN FRANCISCO DE CAYRAN', 87);
INSERT INTO `ubdistrito` VALUES (894, 'SAN PEDRO DE CHAULAN', 87);
INSERT INTO `ubdistrito` VALUES (895, 'SANTA MARIA DEL VALLE', 87);
INSERT INTO `ubdistrito` VALUES (896, 'YARUMAYO', 87);
INSERT INTO `ubdistrito` VALUES (897, 'PILLCO MARCA', 87);
INSERT INTO `ubdistrito` VALUES (898, 'AMBO', 88);
INSERT INTO `ubdistrito` VALUES (899, 'CAYNA', 88);
INSERT INTO `ubdistrito` VALUES (900, 'COLPAS', 88);
INSERT INTO `ubdistrito` VALUES (901, 'CONCHAMARCA', 88);
INSERT INTO `ubdistrito` VALUES (902, 'HUACAR', 88);
INSERT INTO `ubdistrito` VALUES (903, 'SAN FRANCISCO', 88);
INSERT INTO `ubdistrito` VALUES (904, 'SAN RAFAEL', 88);
INSERT INTO `ubdistrito` VALUES (905, 'TOMAY KICHWA', 88);
INSERT INTO `ubdistrito` VALUES (906, 'LA UNION', 89);
INSERT INTO `ubdistrito` VALUES (907, 'CHUQUIS', 89);
INSERT INTO `ubdistrito` VALUES (908, 'MARIAS', 89);
INSERT INTO `ubdistrito` VALUES (909, 'PACHAS', 89);
INSERT INTO `ubdistrito` VALUES (910, 'QUIVILLA', 89);
INSERT INTO `ubdistrito` VALUES (911, 'RIPAN', 89);
INSERT INTO `ubdistrito` VALUES (912, 'SHUNQUI', 89);
INSERT INTO `ubdistrito` VALUES (913, 'SILLAPATA', 89);
INSERT INTO `ubdistrito` VALUES (914, 'YANAS', 89);
INSERT INTO `ubdistrito` VALUES (915, 'HUACAYBAMBA', 90);
INSERT INTO `ubdistrito` VALUES (916, 'CANCHABAMBA', 90);
INSERT INTO `ubdistrito` VALUES (917, 'COCHABAMBA', 90);
INSERT INTO `ubdistrito` VALUES (918, 'PINRA', 90);
INSERT INTO `ubdistrito` VALUES (919, 'LLATA', 91);
INSERT INTO `ubdistrito` VALUES (920, 'ARANCAY', 91);
INSERT INTO `ubdistrito` VALUES (921, 'CHAVIN DE PARIARCA', 91);
INSERT INTO `ubdistrito` VALUES (922, 'JACAS GRANDE', 91);
INSERT INTO `ubdistrito` VALUES (923, 'JIRCAN', 91);
INSERT INTO `ubdistrito` VALUES (924, 'MIRAFLORES', 91);
INSERT INTO `ubdistrito` VALUES (925, 'MONZON', 91);
INSERT INTO `ubdistrito` VALUES (926, 'PUNCHAO', 91);
INSERT INTO `ubdistrito` VALUES (927, 'PU&Ntilde;OS', 91);
INSERT INTO `ubdistrito` VALUES (928, 'SINGA', 91);
INSERT INTO `ubdistrito` VALUES (929, 'TANTAMAYO', 91);
INSERT INTO `ubdistrito` VALUES (930, 'RUPA-RUPA', 92);
INSERT INTO `ubdistrito` VALUES (931, 'DANIEL ALOMIA ROBLES', 92);
INSERT INTO `ubdistrito` VALUES (932, 'HERMILIO VALDIZAN', 92);
INSERT INTO `ubdistrito` VALUES (933, 'JOSE CRESPO Y CASTILLO', 92);
INSERT INTO `ubdistrito` VALUES (934, 'LUYANDO', 92);
INSERT INTO `ubdistrito` VALUES (935, 'MARIANO DAMASO BERAUN', 92);
INSERT INTO `ubdistrito` VALUES (936, 'HUACRACHUCO', 93);
INSERT INTO `ubdistrito` VALUES (937, 'CHOLON', 93);
INSERT INTO `ubdistrito` VALUES (938, 'SAN BUENAVENTURA', 93);
INSERT INTO `ubdistrito` VALUES (939, 'PANAO', 94);
INSERT INTO `ubdistrito` VALUES (940, 'CHAGLLA', 94);
INSERT INTO `ubdistrito` VALUES (941, 'MOLINO', 94);
INSERT INTO `ubdistrito` VALUES (942, 'UMARI', 94);
INSERT INTO `ubdistrito` VALUES (943, 'PUERTO INCA', 95);
INSERT INTO `ubdistrito` VALUES (944, 'CODO DEL POZUZO', 95);
INSERT INTO `ubdistrito` VALUES (945, 'HONORIA', 95);
INSERT INTO `ubdistrito` VALUES (946, 'TOURNAVISTA', 95);
INSERT INTO `ubdistrito` VALUES (947, 'YUYAPICHIS', 95);
INSERT INTO `ubdistrito` VALUES (948, 'JESUS', 96);
INSERT INTO `ubdistrito` VALUES (949, 'BA&Ntilde;OS', 96);
INSERT INTO `ubdistrito` VALUES (950, 'JIVIA', 96);
INSERT INTO `ubdistrito` VALUES (951, 'QUEROPALCA', 96);
INSERT INTO `ubdistrito` VALUES (952, 'RONDOS', 96);
INSERT INTO `ubdistrito` VALUES (953, 'SAN FRANCISCO DE ASIS', 96);
INSERT INTO `ubdistrito` VALUES (954, 'SAN MIGUEL DE CAURI', 96);
INSERT INTO `ubdistrito` VALUES (955, 'CHAVINILLO', 97);
INSERT INTO `ubdistrito` VALUES (956, 'CAHUAC', 97);
INSERT INTO `ubdistrito` VALUES (957, 'CHACABAMBA', 97);
INSERT INTO `ubdistrito` VALUES (958, 'APARICIO POMARES', 97);
INSERT INTO `ubdistrito` VALUES (959, 'JACAS CHICO', 97);
INSERT INTO `ubdistrito` VALUES (960, 'OBAS', 97);
INSERT INTO `ubdistrito` VALUES (961, 'PAMPAMARCA', 97);
INSERT INTO `ubdistrito` VALUES (962, 'CHORAS', 97);
INSERT INTO `ubdistrito` VALUES (963, 'ICA', 98);
INSERT INTO `ubdistrito` VALUES (964, 'LA TINGUI&Ntilde;A', 98);
INSERT INTO `ubdistrito` VALUES (965, 'LOS AQUIJES', 98);
INSERT INTO `ubdistrito` VALUES (966, 'OCUCAJE', 98);
INSERT INTO `ubdistrito` VALUES (967, 'PACHACUTEC', 98);
INSERT INTO `ubdistrito` VALUES (968, 'PARCONA', 98);
INSERT INTO `ubdistrito` VALUES (969, 'PUEBLO NUEVO', 98);
INSERT INTO `ubdistrito` VALUES (970, 'SALAS', 98);
INSERT INTO `ubdistrito` VALUES (971, 'SAN JOSE DE LOS MOLINOS', 98);
INSERT INTO `ubdistrito` VALUES (972, 'SAN JUAN BAUTISTA', 98);
INSERT INTO `ubdistrito` VALUES (973, 'SANTIAGO', 98);
INSERT INTO `ubdistrito` VALUES (974, 'SUBTANJALLA', 98);
INSERT INTO `ubdistrito` VALUES (975, 'TATE', 98);
INSERT INTO `ubdistrito` VALUES (976, 'YAUCA DEL ROSARIO', 98);
INSERT INTO `ubdistrito` VALUES (977, 'CHINCHA ALTA', 99);
INSERT INTO `ubdistrito` VALUES (978, 'ALTO LARAN', 99);
INSERT INTO `ubdistrito` VALUES (979, 'CHAVIN', 99);
INSERT INTO `ubdistrito` VALUES (980, 'CHINCHA BAJA', 99);
INSERT INTO `ubdistrito` VALUES (981, 'EL CARMEN', 99);
INSERT INTO `ubdistrito` VALUES (982, 'GROCIO PRADO', 99);
INSERT INTO `ubdistrito` VALUES (983, 'PUEBLO NUEVO', 99);
INSERT INTO `ubdistrito` VALUES (984, 'SAN JUAN DE YANAC', 99);
INSERT INTO `ubdistrito` VALUES (985, 'SAN PEDRO DE HUACARPANA', 99);
INSERT INTO `ubdistrito` VALUES (986, 'SUNAMPE', 99);
INSERT INTO `ubdistrito` VALUES (987, 'TAMBO DE MORA', 99);
INSERT INTO `ubdistrito` VALUES (988, 'NAZCA', 100);
INSERT INTO `ubdistrito` VALUES (989, 'CHANGUILLO', 100);
INSERT INTO `ubdistrito` VALUES (990, 'EL INGENIO', 100);
INSERT INTO `ubdistrito` VALUES (991, 'MARCONA', 100);
INSERT INTO `ubdistrito` VALUES (992, 'VISTA ALEGRE', 100);
INSERT INTO `ubdistrito` VALUES (993, 'PALPA', 101);
INSERT INTO `ubdistrito` VALUES (994, 'LLIPATA', 101);
INSERT INTO `ubdistrito` VALUES (995, 'RIO GRANDE', 101);
INSERT INTO `ubdistrito` VALUES (996, 'SANTA CRUZ', 101);
INSERT INTO `ubdistrito` VALUES (997, 'TIBILLO', 101);
INSERT INTO `ubdistrito` VALUES (998, 'PISCO', 102);
INSERT INTO `ubdistrito` VALUES (999, 'HUANCANO', 102);
INSERT INTO `ubdistrito` VALUES (1000, 'HUMAY', 102);
INSERT INTO `ubdistrito` VALUES (1001, 'INDEPENDENCIA', 102);
INSERT INTO `ubdistrito` VALUES (1002, 'PARACAS', 102);
INSERT INTO `ubdistrito` VALUES (1003, 'SAN ANDRES', 102);
INSERT INTO `ubdistrito` VALUES (1004, 'SAN CLEMENTE', 102);
INSERT INTO `ubdistrito` VALUES (1005, 'TUPAC AMARU INCA', 102);
INSERT INTO `ubdistrito` VALUES (1006, 'HUANCAYO', 103);
INSERT INTO `ubdistrito` VALUES (1007, 'CARHUACALLANGA', 103);
INSERT INTO `ubdistrito` VALUES (1008, 'CHACAPAMPA', 103);
INSERT INTO `ubdistrito` VALUES (1009, 'CHICCHE', 103);
INSERT INTO `ubdistrito` VALUES (1010, 'CHILCA', 103);
INSERT INTO `ubdistrito` VALUES (1011, 'CHONGOS ALTO', 103);
INSERT INTO `ubdistrito` VALUES (1012, 'CHUPURO', 103);
INSERT INTO `ubdistrito` VALUES (1013, 'COLCA', 103);
INSERT INTO `ubdistrito` VALUES (1014, 'CULLHUAS', 103);
INSERT INTO `ubdistrito` VALUES (1015, 'EL TAMBO', 103);
INSERT INTO `ubdistrito` VALUES (1016, 'HUACRAPUQUIO', 103);
INSERT INTO `ubdistrito` VALUES (1017, 'HUALHUAS', 103);
INSERT INTO `ubdistrito` VALUES (1018, 'HUANCAN', 103);
INSERT INTO `ubdistrito` VALUES (1019, 'HUASICANCHA', 103);
INSERT INTO `ubdistrito` VALUES (1020, 'HUAYUCACHI', 103);
INSERT INTO `ubdistrito` VALUES (1021, 'INGENIO', 103);
INSERT INTO `ubdistrito` VALUES (1022, 'PARIAHUANCA', 103);
INSERT INTO `ubdistrito` VALUES (1023, 'PILCOMAYO', 103);
INSERT INTO `ubdistrito` VALUES (1024, 'PUCARA', 103);
INSERT INTO `ubdistrito` VALUES (1025, 'QUICHUAY', 103);
INSERT INTO `ubdistrito` VALUES (1026, 'QUILCAS', 103);
INSERT INTO `ubdistrito` VALUES (1027, 'SAN AGUSTIN', 103);
INSERT INTO `ubdistrito` VALUES (1028, 'SAN JERONIMO DE TUNAN', 103);
INSERT INTO `ubdistrito` VALUES (1029, 'SA&Ntilde;O', 103);
INSERT INTO `ubdistrito` VALUES (1030, 'SAPALLANGA', 103);
INSERT INTO `ubdistrito` VALUES (1031, 'SICAYA', 103);
INSERT INTO `ubdistrito` VALUES (1032, 'SANTO DOMINGO DE ACOBAMBA', 103);
INSERT INTO `ubdistrito` VALUES (1033, 'VIQUES', 103);
INSERT INTO `ubdistrito` VALUES (1034, 'CONCEPCION', 104);
INSERT INTO `ubdistrito` VALUES (1035, 'ACO', 104);
INSERT INTO `ubdistrito` VALUES (1036, 'ANDAMARCA', 104);
INSERT INTO `ubdistrito` VALUES (1037, 'CHAMBARA', 104);
INSERT INTO `ubdistrito` VALUES (1038, 'COCHAS', 104);
INSERT INTO `ubdistrito` VALUES (1039, 'COMAS', 104);
INSERT INTO `ubdistrito` VALUES (1040, 'HEROINAS TOLEDO', 104);
INSERT INTO `ubdistrito` VALUES (1041, 'MANZANARES', 104);
INSERT INTO `ubdistrito` VALUES (1042, 'MARISCAL CASTILLA', 104);
INSERT INTO `ubdistrito` VALUES (1043, 'MATAHUASI', 104);
INSERT INTO `ubdistrito` VALUES (1044, 'MITO', 104);
INSERT INTO `ubdistrito` VALUES (1045, 'NUEVE DE JULIO', 104);
INSERT INTO `ubdistrito` VALUES (1046, 'ORCOTUNA', 104);
INSERT INTO `ubdistrito` VALUES (1047, 'SAN JOSE DE QUERO', 104);
INSERT INTO `ubdistrito` VALUES (1048, 'SANTA ROSA DE OCOPA', 104);
INSERT INTO `ubdistrito` VALUES (1049, 'CHANCHAMAYO', 105);
INSERT INTO `ubdistrito` VALUES (1050, 'PERENE', 105);
INSERT INTO `ubdistrito` VALUES (1051, 'PICHANAQUI', 105);
INSERT INTO `ubdistrito` VALUES (1052, 'SAN LUIS DE SHUARO', 105);
INSERT INTO `ubdistrito` VALUES (1053, 'SAN RAMON', 105);
INSERT INTO `ubdistrito` VALUES (1054, 'VITOC', 105);
INSERT INTO `ubdistrito` VALUES (1055, 'JAUJA', 106);
INSERT INTO `ubdistrito` VALUES (1056, 'ACOLLA', 106);
INSERT INTO `ubdistrito` VALUES (1057, 'APATA', 106);
INSERT INTO `ubdistrito` VALUES (1058, 'ATAURA', 106);
INSERT INTO `ubdistrito` VALUES (1059, 'CANCHAYLLO', 106);
INSERT INTO `ubdistrito` VALUES (1060, 'CURICACA', 106);
INSERT INTO `ubdistrito` VALUES (1061, 'EL MANTARO', 106);
INSERT INTO `ubdistrito` VALUES (1062, 'HUAMALI', 106);
INSERT INTO `ubdistrito` VALUES (1063, 'HUARIPAMPA', 106);
INSERT INTO `ubdistrito` VALUES (1064, 'HUERTAS', 106);
INSERT INTO `ubdistrito` VALUES (1065, 'JANJAILLO', 106);
INSERT INTO `ubdistrito` VALUES (1066, 'JULCAN', 106);
INSERT INTO `ubdistrito` VALUES (1067, 'LEONOR ORDO&Ntilde;EZ', 106);
INSERT INTO `ubdistrito` VALUES (1068, 'LLOCLLAPAMPA', 106);
INSERT INTO `ubdistrito` VALUES (1069, 'MARCO', 106);
INSERT INTO `ubdistrito` VALUES (1070, 'MASMA', 106);
INSERT INTO `ubdistrito` VALUES (1071, 'MASMA CHICCHE', 106);
INSERT INTO `ubdistrito` VALUES (1072, 'MOLINOS', 106);
INSERT INTO `ubdistrito` VALUES (1073, 'MONOBAMBA', 106);
INSERT INTO `ubdistrito` VALUES (1074, 'MUQUI', 106);
INSERT INTO `ubdistrito` VALUES (1075, 'MUQUIYAUYO', 106);
INSERT INTO `ubdistrito` VALUES (1076, 'PACA', 106);
INSERT INTO `ubdistrito` VALUES (1077, 'PACCHA', 106);
INSERT INTO `ubdistrito` VALUES (1078, 'PANCAN', 106);
INSERT INTO `ubdistrito` VALUES (1079, 'PARCO', 106);
INSERT INTO `ubdistrito` VALUES (1080, 'POMACANCHA', 106);
INSERT INTO `ubdistrito` VALUES (1081, 'RICRAN', 106);
INSERT INTO `ubdistrito` VALUES (1082, 'SAN LORENZO', 106);
INSERT INTO `ubdistrito` VALUES (1083, 'SAN PEDRO DE CHUNAN', 106);
INSERT INTO `ubdistrito` VALUES (1084, 'SAUSA', 106);
INSERT INTO `ubdistrito` VALUES (1085, 'SINCOS', 106);
INSERT INTO `ubdistrito` VALUES (1086, 'TUNAN MARCA', 106);
INSERT INTO `ubdistrito` VALUES (1087, 'YAULI', 106);
INSERT INTO `ubdistrito` VALUES (1088, 'YAUYOS', 106);
INSERT INTO `ubdistrito` VALUES (1089, 'JUNIN', 107);
INSERT INTO `ubdistrito` VALUES (1090, 'CARHUAMAYO', 107);
INSERT INTO `ubdistrito` VALUES (1091, 'ONDORES', 107);
INSERT INTO `ubdistrito` VALUES (1092, 'ULCUMAYO', 107);
INSERT INTO `ubdistrito` VALUES (1093, 'SATIPO', 108);
INSERT INTO `ubdistrito` VALUES (1094, 'COVIRIALI', 108);
INSERT INTO `ubdistrito` VALUES (1095, 'LLAYLLA', 108);
INSERT INTO `ubdistrito` VALUES (1096, 'MAZAMARI', 108);
INSERT INTO `ubdistrito` VALUES (1097, 'PAMPA HERMOSA', 108);
INSERT INTO `ubdistrito` VALUES (1098, 'PANGOA', 108);
INSERT INTO `ubdistrito` VALUES (1099, 'RIO NEGRO', 108);
INSERT INTO `ubdistrito` VALUES (1100, 'RIO TAMBO', 108);
INSERT INTO `ubdistrito` VALUES (1101, 'TARMA', 109);
INSERT INTO `ubdistrito` VALUES (1102, 'ACOBAMBA', 109);
INSERT INTO `ubdistrito` VALUES (1103, 'HUARICOLCA', 109);
INSERT INTO `ubdistrito` VALUES (1104, 'HUASAHUASI', 109);
INSERT INTO `ubdistrito` VALUES (1105, 'LA UNION', 109);
INSERT INTO `ubdistrito` VALUES (1106, 'PALCA', 109);
INSERT INTO `ubdistrito` VALUES (1107, 'PALCAMAYO', 109);
INSERT INTO `ubdistrito` VALUES (1108, 'SAN PEDRO DE CAJAS', 109);
INSERT INTO `ubdistrito` VALUES (1109, 'TAPO', 109);
INSERT INTO `ubdistrito` VALUES (1110, 'LA OROYA', 110);
INSERT INTO `ubdistrito` VALUES (1111, 'CHACAPALPA', 110);
INSERT INTO `ubdistrito` VALUES (1112, 'HUAY-HUAY', 110);
INSERT INTO `ubdistrito` VALUES (1113, 'MARCAPOMACOCHA', 110);
INSERT INTO `ubdistrito` VALUES (1114, 'MOROCOCHA', 110);
INSERT INTO `ubdistrito` VALUES (1115, 'PACCHA', 110);
INSERT INTO `ubdistrito` VALUES (1116, 'SANTA BARBARA DE CARHUACAYAN', 110);
INSERT INTO `ubdistrito` VALUES (1117, 'SANTA ROSA DE SACCO', 110);
INSERT INTO `ubdistrito` VALUES (1118, 'SUITUCANCHA', 110);
INSERT INTO `ubdistrito` VALUES (1119, 'YAULI', 110);
INSERT INTO `ubdistrito` VALUES (1120, 'CHUPACA', 111);
INSERT INTO `ubdistrito` VALUES (1121, 'AHUAC', 111);
INSERT INTO `ubdistrito` VALUES (1122, 'CHONGOS BAJO', 111);
INSERT INTO `ubdistrito` VALUES (1123, 'HUACHAC', 111);
INSERT INTO `ubdistrito` VALUES (1124, 'HUAMANCACA CHICO', 111);
INSERT INTO `ubdistrito` VALUES (1125, 'SAN JUAN DE ISCOS', 111);
INSERT INTO `ubdistrito` VALUES (1126, 'SAN JUAN DE JARPA', 111);
INSERT INTO `ubdistrito` VALUES (1127, 'TRES DE DICIEMBRE', 111);
INSERT INTO `ubdistrito` VALUES (1128, 'YANACANCHA', 111);
INSERT INTO `ubdistrito` VALUES (1129, 'TRUJILLO', 112);
INSERT INTO `ubdistrito` VALUES (1130, 'EL PORVENIR', 112);
INSERT INTO `ubdistrito` VALUES (1131, 'FLORENCIA DE MORA', 112);
INSERT INTO `ubdistrito` VALUES (1132, 'HUANCHACO', 112);
INSERT INTO `ubdistrito` VALUES (1133, 'LA ESPERANZA', 112);
INSERT INTO `ubdistrito` VALUES (1134, 'LAREDO', 112);
INSERT INTO `ubdistrito` VALUES (1135, 'MOCHE', 112);
INSERT INTO `ubdistrito` VALUES (1136, 'POROTO', 112);
INSERT INTO `ubdistrito` VALUES (1137, 'SALAVERRY', 112);
INSERT INTO `ubdistrito` VALUES (1138, 'SIMBAL', 112);
INSERT INTO `ubdistrito` VALUES (1139, 'VICTOR LARCO HERRERA', 112);
INSERT INTO `ubdistrito` VALUES (1140, 'ASCOPE', 113);
INSERT INTO `ubdistrito` VALUES (1141, 'CHICAMA', 113);
INSERT INTO `ubdistrito` VALUES (1142, 'CHOCOPE', 113);
INSERT INTO `ubdistrito` VALUES (1143, 'MAGDALENA DE CAO', 113);
INSERT INTO `ubdistrito` VALUES (1144, 'PAIJAN', 113);
INSERT INTO `ubdistrito` VALUES (1145, 'RAZURI', 113);
INSERT INTO `ubdistrito` VALUES (1146, 'SANTIAGO DE CAO', 113);
INSERT INTO `ubdistrito` VALUES (1147, 'CASA GRANDE', 113);
INSERT INTO `ubdistrito` VALUES (1148, 'BOLIVAR', 114);
INSERT INTO `ubdistrito` VALUES (1149, 'BAMBAMARCA', 114);
INSERT INTO `ubdistrito` VALUES (1150, 'CONDORMARCA', 114);
INSERT INTO `ubdistrito` VALUES (1151, 'LONGOTEA', 114);
INSERT INTO `ubdistrito` VALUES (1152, 'UCHUMARCA', 114);
INSERT INTO `ubdistrito` VALUES (1153, 'UCUNCHA', 114);
INSERT INTO `ubdistrito` VALUES (1154, 'CHEPEN', 115);
INSERT INTO `ubdistrito` VALUES (1155, 'PACANGA', 115);
INSERT INTO `ubdistrito` VALUES (1156, 'PUEBLO NUEVO', 115);
INSERT INTO `ubdistrito` VALUES (1157, 'JULCAN', 116);
INSERT INTO `ubdistrito` VALUES (1158, 'CALAMARCA', 116);
INSERT INTO `ubdistrito` VALUES (1159, 'CARABAMBA', 116);
INSERT INTO `ubdistrito` VALUES (1160, 'HUASO', 116);
INSERT INTO `ubdistrito` VALUES (1161, 'OTUZCO', 117);
INSERT INTO `ubdistrito` VALUES (1162, 'AGALLPAMPA', 117);
INSERT INTO `ubdistrito` VALUES (1163, 'CHARAT', 117);
INSERT INTO `ubdistrito` VALUES (1164, 'HUARANCHAL', 117);
INSERT INTO `ubdistrito` VALUES (1165, 'LA CUESTA', 117);
INSERT INTO `ubdistrito` VALUES (1166, 'MACHE', 117);
INSERT INTO `ubdistrito` VALUES (1167, 'PARANDAY', 117);
INSERT INTO `ubdistrito` VALUES (1168, 'SALPO', 117);
INSERT INTO `ubdistrito` VALUES (1169, 'SINSICAP', 117);
INSERT INTO `ubdistrito` VALUES (1170, 'USQUIL', 117);
INSERT INTO `ubdistrito` VALUES (1171, 'SAN PEDRO DE LLOC', 118);
INSERT INTO `ubdistrito` VALUES (1172, 'GUADALUPE', 118);
INSERT INTO `ubdistrito` VALUES (1173, 'JEQUETEPEQUE', 118);
INSERT INTO `ubdistrito` VALUES (1174, 'PACASMAYO', 118);
INSERT INTO `ubdistrito` VALUES (1175, 'SAN JOSE', 118);
INSERT INTO `ubdistrito` VALUES (1176, 'TAYABAMBA', 119);
INSERT INTO `ubdistrito` VALUES (1177, 'BULDIBUYO', 119);
INSERT INTO `ubdistrito` VALUES (1178, 'CHILLIA', 119);
INSERT INTO `ubdistrito` VALUES (1179, 'HUANCASPATA', 119);
INSERT INTO `ubdistrito` VALUES (1180, 'HUAYLILLAS', 119);
INSERT INTO `ubdistrito` VALUES (1181, 'HUAYO', 119);
INSERT INTO `ubdistrito` VALUES (1182, 'ONGON', 119);
INSERT INTO `ubdistrito` VALUES (1183, 'PARCOY', 119);
INSERT INTO `ubdistrito` VALUES (1184, 'PATAZ', 119);
INSERT INTO `ubdistrito` VALUES (1185, 'PIAS', 119);
INSERT INTO `ubdistrito` VALUES (1186, 'SANTIAGO DE CHALLAS', 119);
INSERT INTO `ubdistrito` VALUES (1187, 'TAURIJA', 119);
INSERT INTO `ubdistrito` VALUES (1188, 'URPAY', 119);
INSERT INTO `ubdistrito` VALUES (1189, 'HUAMACHUCO', 120);
INSERT INTO `ubdistrito` VALUES (1190, 'CHUGAY', 120);
INSERT INTO `ubdistrito` VALUES (1191, 'COCHORCO', 120);
INSERT INTO `ubdistrito` VALUES (1192, 'CURGOS', 120);
INSERT INTO `ubdistrito` VALUES (1193, 'MARCABAL', 120);
INSERT INTO `ubdistrito` VALUES (1194, 'SANAGORAN', 120);
INSERT INTO `ubdistrito` VALUES (1195, 'SARIN', 120);
INSERT INTO `ubdistrito` VALUES (1196, 'SARTIMBAMBA', 120);
INSERT INTO `ubdistrito` VALUES (1197, 'SANTIAGO DE CHUCO', 121);
INSERT INTO `ubdistrito` VALUES (1198, 'ANGASMARCA', 121);
INSERT INTO `ubdistrito` VALUES (1199, 'CACHICADAN', 121);
INSERT INTO `ubdistrito` VALUES (1200, 'MOLLEBAMBA', 121);
INSERT INTO `ubdistrito` VALUES (1201, 'MOLLEPATA', 121);
INSERT INTO `ubdistrito` VALUES (1202, 'QUIRUVILCA', 121);
INSERT INTO `ubdistrito` VALUES (1203, 'SANTA CRUZ DE CHUCA', 121);
INSERT INTO `ubdistrito` VALUES (1204, 'SITABAMBA', 121);
INSERT INTO `ubdistrito` VALUES (1205, 'GRAN CHIMU', 122);
INSERT INTO `ubdistrito` VALUES (1206, 'CASCAS', 122);
INSERT INTO `ubdistrito` VALUES (1207, 'LUCMA', 122);
INSERT INTO `ubdistrito` VALUES (1208, 'MARMOT', 122);
INSERT INTO `ubdistrito` VALUES (1209, 'SAYAPULLO', 122);
INSERT INTO `ubdistrito` VALUES (1210, 'VIRU', 123);
INSERT INTO `ubdistrito` VALUES (1211, 'CHAO', 123);
INSERT INTO `ubdistrito` VALUES (1212, 'GUADALUPITO', 123);
INSERT INTO `ubdistrito` VALUES (1213, 'CHICLAYO', 124);
INSERT INTO `ubdistrito` VALUES (1214, 'CHONGOYAPE', 124);
INSERT INTO `ubdistrito` VALUES (1215, 'ETEN', 124);
INSERT INTO `ubdistrito` VALUES (1216, 'ETEN PUERTO', 124);
INSERT INTO `ubdistrito` VALUES (1217, 'JOSE LEONARDO ORTIZ', 124);
INSERT INTO `ubdistrito` VALUES (1218, 'LA VICTORIA', 124);
INSERT INTO `ubdistrito` VALUES (1219, 'LAGUNAS', 124);
INSERT INTO `ubdistrito` VALUES (1220, 'MONSEFU', 124);
INSERT INTO `ubdistrito` VALUES (1221, 'NUEVA ARICA', 124);
INSERT INTO `ubdistrito` VALUES (1222, 'OYOTUN', 124);
INSERT INTO `ubdistrito` VALUES (1223, 'PICSI', 124);
INSERT INTO `ubdistrito` VALUES (1224, 'PIMENTEL', 124);
INSERT INTO `ubdistrito` VALUES (1225, 'REQUE', 124);
INSERT INTO `ubdistrito` VALUES (1226, 'SANTA ROSA', 124);
INSERT INTO `ubdistrito` VALUES (1227, 'SA&Ntilde;A', 124);
INSERT INTO `ubdistrito` VALUES (1228, 'CAYALTI', 124);
INSERT INTO `ubdistrito` VALUES (1229, 'PATAPO', 124);
INSERT INTO `ubdistrito` VALUES (1230, 'POMALCA', 124);
INSERT INTO `ubdistrito` VALUES (1231, 'PUCALA', 124);
INSERT INTO `ubdistrito` VALUES (1232, 'TUMAN', 124);
INSERT INTO `ubdistrito` VALUES (1233, 'FERRE&Ntilde;AFE', 125);
INSERT INTO `ubdistrito` VALUES (1234, 'CA&Ntilde;ARIS', 125);
INSERT INTO `ubdistrito` VALUES (1235, 'INCAHUASI', 125);
INSERT INTO `ubdistrito` VALUES (1236, 'MANUEL ANTONIO MESONES MURO', 125);
INSERT INTO `ubdistrito` VALUES (1237, 'PITIPO', 125);
INSERT INTO `ubdistrito` VALUES (1238, 'PUEBLO NUEVO', 125);
INSERT INTO `ubdistrito` VALUES (1239, 'LAMBAYEQUE', 126);
INSERT INTO `ubdistrito` VALUES (1240, 'CHOCHOPE', 126);
INSERT INTO `ubdistrito` VALUES (1241, 'ILLIMO', 126);
INSERT INTO `ubdistrito` VALUES (1242, 'JAYANCA', 126);
INSERT INTO `ubdistrito` VALUES (1243, 'MOCHUMI', 126);
INSERT INTO `ubdistrito` VALUES (1244, 'MORROPE', 126);
INSERT INTO `ubdistrito` VALUES (1245, 'MOTUPE', 126);
INSERT INTO `ubdistrito` VALUES (1246, 'OLMOS', 126);
INSERT INTO `ubdistrito` VALUES (1247, 'PACORA', 126);
INSERT INTO `ubdistrito` VALUES (1248, 'SALAS', 126);
INSERT INTO `ubdistrito` VALUES (1249, 'SAN JOSE', 126);
INSERT INTO `ubdistrito` VALUES (1250, 'TUCUME', 126);
INSERT INTO `ubdistrito` VALUES (1251, 'LIMA', 127);
INSERT INTO `ubdistrito` VALUES (1252, 'ANCON', 127);
INSERT INTO `ubdistrito` VALUES (1253, 'ATE', 127);
INSERT INTO `ubdistrito` VALUES (1254, 'BARRANCO', 127);
INSERT INTO `ubdistrito` VALUES (1255, 'BRE&Ntilde;A', 127);
INSERT INTO `ubdistrito` VALUES (1256, 'CARABAYLLO', 127);
INSERT INTO `ubdistrito` VALUES (1257, 'CHACLACAYO', 127);
INSERT INTO `ubdistrito` VALUES (1258, 'CHORRILLOS', 127);
INSERT INTO `ubdistrito` VALUES (1259, 'CIENEGUILLA', 127);
INSERT INTO `ubdistrito` VALUES (1260, 'COMAS', 127);
INSERT INTO `ubdistrito` VALUES (1261, 'EL AGUSTINO', 127);
INSERT INTO `ubdistrito` VALUES (1262, 'INDEPENDENCIA', 127);
INSERT INTO `ubdistrito` VALUES (1263, 'JESUS MARIA', 127);
INSERT INTO `ubdistrito` VALUES (1264, 'LA MOLINA', 127);
INSERT INTO `ubdistrito` VALUES (1265, 'LA VICTORIA', 127);
INSERT INTO `ubdistrito` VALUES (1266, 'LINCE', 127);
INSERT INTO `ubdistrito` VALUES (1267, 'LOS OLIVOS', 127);
INSERT INTO `ubdistrito` VALUES (1268, 'LURIGANCHO', 127);
INSERT INTO `ubdistrito` VALUES (1269, 'LURIN', 127);
INSERT INTO `ubdistrito` VALUES (1270, 'MAGDALENA DEL MAR', 127);
INSERT INTO `ubdistrito` VALUES (1271, 'MAGDALENA VIEJA', 127);
INSERT INTO `ubdistrito` VALUES (1272, 'MIRAFLORES', 127);
INSERT INTO `ubdistrito` VALUES (1273, 'PACHACAMAC', 127);
INSERT INTO `ubdistrito` VALUES (1274, 'PUCUSANA', 127);
INSERT INTO `ubdistrito` VALUES (1275, 'PUENTE PIEDRA', 127);
INSERT INTO `ubdistrito` VALUES (1276, 'PUNTA HERMOSA', 127);
INSERT INTO `ubdistrito` VALUES (1277, 'PUNTA NEGRA', 127);
INSERT INTO `ubdistrito` VALUES (1278, 'RIMAC', 127);
INSERT INTO `ubdistrito` VALUES (1279, 'SAN BARTOLO', 127);
INSERT INTO `ubdistrito` VALUES (1280, 'SAN BORJA', 127);
INSERT INTO `ubdistrito` VALUES (1281, 'SAN ISIDRO', 127);
INSERT INTO `ubdistrito` VALUES (1282, 'SAN JUAN DE LURIGANCHO', 127);
INSERT INTO `ubdistrito` VALUES (1283, 'SAN JUAN DE MIRAFLORES', 127);
INSERT INTO `ubdistrito` VALUES (1284, 'SAN LUIS', 127);
INSERT INTO `ubdistrito` VALUES (1285, 'SAN MARTIN DE PORRES', 127);
INSERT INTO `ubdistrito` VALUES (1286, 'SAN MIGUEL', 127);
INSERT INTO `ubdistrito` VALUES (1287, 'SANTA ANITA', 127);
INSERT INTO `ubdistrito` VALUES (1288, 'SANTA MARIA DEL MAR', 127);
INSERT INTO `ubdistrito` VALUES (1289, 'SANTA ROSA', 127);
INSERT INTO `ubdistrito` VALUES (1290, 'SANTIAGO DE SURCO', 127);
INSERT INTO `ubdistrito` VALUES (1291, 'SURQUILLO', 127);
INSERT INTO `ubdistrito` VALUES (1292, 'VILLA EL SALVADOR', 127);
INSERT INTO `ubdistrito` VALUES (1293, 'VILLA MARIA DEL TRIUNFO', 127);
INSERT INTO `ubdistrito` VALUES (1294, 'BARRANCA', 128);
INSERT INTO `ubdistrito` VALUES (1295, 'PARAMONGA', 128);
INSERT INTO `ubdistrito` VALUES (1296, 'PATIVILCA', 128);
INSERT INTO `ubdistrito` VALUES (1297, 'SUPE', 128);
INSERT INTO `ubdistrito` VALUES (1298, 'SUPE PUERTO', 128);
INSERT INTO `ubdistrito` VALUES (1299, 'CAJATAMBO', 129);
INSERT INTO `ubdistrito` VALUES (1300, 'COPA', 129);
INSERT INTO `ubdistrito` VALUES (1301, 'GORGOR', 129);
INSERT INTO `ubdistrito` VALUES (1302, 'HUANCAPON', 129);
INSERT INTO `ubdistrito` VALUES (1303, 'MANAS', 129);
INSERT INTO `ubdistrito` VALUES (1304, 'CANTA', 130);
INSERT INTO `ubdistrito` VALUES (1305, 'ARAHUAY', 130);
INSERT INTO `ubdistrito` VALUES (1306, 'HUAMANTANGA', 130);
INSERT INTO `ubdistrito` VALUES (1307, 'HUAROS', 130);
INSERT INTO `ubdistrito` VALUES (1308, 'LACHAQUI', 130);
INSERT INTO `ubdistrito` VALUES (1309, 'SAN BUENAVENTURA', 130);
INSERT INTO `ubdistrito` VALUES (1310, 'SANTA ROSA DE QUIVES', 130);
INSERT INTO `ubdistrito` VALUES (1311, 'SAN VICENTE DE CA&Ntilde;ETE', 131);
INSERT INTO `ubdistrito` VALUES (1312, 'ASIA', 131);
INSERT INTO `ubdistrito` VALUES (1313, 'CALANGO', 131);
INSERT INTO `ubdistrito` VALUES (1314, 'CERRO AZUL', 131);
INSERT INTO `ubdistrito` VALUES (1315, 'CHILCA', 131);
INSERT INTO `ubdistrito` VALUES (1316, 'COAYLLO', 131);
INSERT INTO `ubdistrito` VALUES (1317, 'IMPERIAL', 131);
INSERT INTO `ubdistrito` VALUES (1318, 'LUNAHUANA', 131);
INSERT INTO `ubdistrito` VALUES (1319, 'MALA', 131);
INSERT INTO `ubdistrito` VALUES (1320, 'NUEVO IMPERIAL', 131);
INSERT INTO `ubdistrito` VALUES (1321, 'PACARAN', 131);
INSERT INTO `ubdistrito` VALUES (1322, 'QUILMANA', 131);
INSERT INTO `ubdistrito` VALUES (1323, 'SAN ANTONIO', 131);
INSERT INTO `ubdistrito` VALUES (1324, 'SAN LUIS', 131);
INSERT INTO `ubdistrito` VALUES (1325, 'SANTA CRUZ DE FLORES', 131);
INSERT INTO `ubdistrito` VALUES (1326, 'ZU&Ntilde;IGA', 131);
INSERT INTO `ubdistrito` VALUES (1327, 'HUARAL', 132);
INSERT INTO `ubdistrito` VALUES (1328, 'ATAVILLOS ALTO', 132);
INSERT INTO `ubdistrito` VALUES (1329, 'ATAVILLOS BAJO', 132);
INSERT INTO `ubdistrito` VALUES (1330, 'AUCALLAMA', 132);
INSERT INTO `ubdistrito` VALUES (1331, 'CHANCAY', 132);
INSERT INTO `ubdistrito` VALUES (1332, 'IHUARI', 132);
INSERT INTO `ubdistrito` VALUES (1333, 'LAMPIAN', 132);
INSERT INTO `ubdistrito` VALUES (1334, 'PACARAOS', 132);
INSERT INTO `ubdistrito` VALUES (1335, 'SAN MIGUEL DE ACOS', 132);
INSERT INTO `ubdistrito` VALUES (1336, 'SANTA CRUZ DE ANDAMARCA', 132);
INSERT INTO `ubdistrito` VALUES (1337, 'SUMBILCA', 132);
INSERT INTO `ubdistrito` VALUES (1338, 'VEINTISIETE DE NOVIEMBRE', 132);
INSERT INTO `ubdistrito` VALUES (1339, 'MATUCANA', 133);
INSERT INTO `ubdistrito` VALUES (1340, 'ANTIOQUIA', 133);
INSERT INTO `ubdistrito` VALUES (1341, 'CALLAHUANCA', 133);
INSERT INTO `ubdistrito` VALUES (1342, 'CARAMPOMA', 133);
INSERT INTO `ubdistrito` VALUES (1343, 'CHICLA', 133);
INSERT INTO `ubdistrito` VALUES (1344, 'CUENCA', 133);
INSERT INTO `ubdistrito` VALUES (1345, 'HUACHUPAMPA', 133);
INSERT INTO `ubdistrito` VALUES (1346, 'HUANZA', 133);
INSERT INTO `ubdistrito` VALUES (1347, 'HUAROCHIRI', 133);
INSERT INTO `ubdistrito` VALUES (1348, 'LAHUAYTAMBO', 133);
INSERT INTO `ubdistrito` VALUES (1349, 'LANGA', 133);
INSERT INTO `ubdistrito` VALUES (1350, 'LARAOS', 133);
INSERT INTO `ubdistrito` VALUES (1351, 'MARIATANA', 133);
INSERT INTO `ubdistrito` VALUES (1352, 'RICARDO PALMA', 133);
INSERT INTO `ubdistrito` VALUES (1353, 'SAN ANDRES DE TUPICOCHA', 133);
INSERT INTO `ubdistrito` VALUES (1354, 'SAN ANTONIO', 133);
INSERT INTO `ubdistrito` VALUES (1355, 'SAN BARTOLOME', 133);
INSERT INTO `ubdistrito` VALUES (1356, 'SAN DAMIAN', 133);
INSERT INTO `ubdistrito` VALUES (1357, 'SAN JUAN DE IRIS', 133);
INSERT INTO `ubdistrito` VALUES (1358, 'SAN JUAN DE TANTARANCHE', 133);
INSERT INTO `ubdistrito` VALUES (1359, 'SAN LORENZO DE QUINTI', 133);
INSERT INTO `ubdistrito` VALUES (1360, 'SAN MATEO', 133);
INSERT INTO `ubdistrito` VALUES (1361, 'SAN MATEO DE OTAO', 133);
INSERT INTO `ubdistrito` VALUES (1362, 'SAN PEDRO DE CASTA', 133);
INSERT INTO `ubdistrito` VALUES (1363, 'SAN PEDRO DE HUANCAYRE', 133);
INSERT INTO `ubdistrito` VALUES (1364, 'SANGALLAYA', 133);
INSERT INTO `ubdistrito` VALUES (1365, 'SANTA CRUZ DE COCACHACRA', 133);
INSERT INTO `ubdistrito` VALUES (1366, 'SANTA EULALIA', 133);
INSERT INTO `ubdistrito` VALUES (1367, 'SANTIAGO DE ANCHUCAYA', 133);
INSERT INTO `ubdistrito` VALUES (1368, 'SANTIAGO DE TUNA', 133);
INSERT INTO `ubdistrito` VALUES (1369, 'SANTO DOMINGO DE LOS OLLEROS', 133);
INSERT INTO `ubdistrito` VALUES (1370, 'SURCO', 133);
INSERT INTO `ubdistrito` VALUES (1371, 'HUACHO', 134);
INSERT INTO `ubdistrito` VALUES (1372, 'AMBAR', 134);
INSERT INTO `ubdistrito` VALUES (1373, 'CALETA DE CARQUIN', 134);
INSERT INTO `ubdistrito` VALUES (1374, 'CHECRAS', 134);
INSERT INTO `ubdistrito` VALUES (1375, 'HUALMAY', 134);
INSERT INTO `ubdistrito` VALUES (1376, 'HUAURA', 134);
INSERT INTO `ubdistrito` VALUES (1377, 'LEONCIO PRADO', 134);
INSERT INTO `ubdistrito` VALUES (1378, 'PACCHO', 134);
INSERT INTO `ubdistrito` VALUES (1379, 'SANTA LEONOR', 134);
INSERT INTO `ubdistrito` VALUES (1380, 'SANTA MARIA', 134);
INSERT INTO `ubdistrito` VALUES (1381, 'SAYAN', 134);
INSERT INTO `ubdistrito` VALUES (1382, 'VEGUETA', 134);
INSERT INTO `ubdistrito` VALUES (1383, 'OYON', 135);
INSERT INTO `ubdistrito` VALUES (1384, 'ANDAJES', 135);
INSERT INTO `ubdistrito` VALUES (1385, 'CAUJUL', 135);
INSERT INTO `ubdistrito` VALUES (1386, 'COCHAMARCA', 135);
INSERT INTO `ubdistrito` VALUES (1387, 'NAVAN', 135);
INSERT INTO `ubdistrito` VALUES (1388, 'PACHANGARA', 135);
INSERT INTO `ubdistrito` VALUES (1389, 'YAUYOS', 136);
INSERT INTO `ubdistrito` VALUES (1390, 'ALIS', 136);
INSERT INTO `ubdistrito` VALUES (1391, 'AYAUCA', 136);
INSERT INTO `ubdistrito` VALUES (1392, 'AYAVIRI', 136);
INSERT INTO `ubdistrito` VALUES (1393, 'AZANGARO', 136);
INSERT INTO `ubdistrito` VALUES (1394, 'CACRA', 136);
INSERT INTO `ubdistrito` VALUES (1395, 'CARANIA', 136);
INSERT INTO `ubdistrito` VALUES (1396, 'CATAHUASI', 136);
INSERT INTO `ubdistrito` VALUES (1397, 'CHOCOS', 136);
INSERT INTO `ubdistrito` VALUES (1398, 'COCHAS', 136);
INSERT INTO `ubdistrito` VALUES (1399, 'COLONIA', 136);
INSERT INTO `ubdistrito` VALUES (1400, 'HONGOS', 136);
INSERT INTO `ubdistrito` VALUES (1401, 'HUAMPARA', 136);
INSERT INTO `ubdistrito` VALUES (1402, 'HUANCAYA', 136);
INSERT INTO `ubdistrito` VALUES (1403, 'HUANGASCAR', 136);
INSERT INTO `ubdistrito` VALUES (1404, 'HUANTAN', 136);
INSERT INTO `ubdistrito` VALUES (1405, 'HUA&Ntilde;EC', 136);
INSERT INTO `ubdistrito` VALUES (1406, 'LARAOS', 136);
INSERT INTO `ubdistrito` VALUES (1407, 'LINCHA', 136);
INSERT INTO `ubdistrito` VALUES (1408, 'MADEAN', 136);
INSERT INTO `ubdistrito` VALUES (1409, 'MIRAFLORES', 136);
INSERT INTO `ubdistrito` VALUES (1410, 'OMAS', 136);
INSERT INTO `ubdistrito` VALUES (1411, 'PUTINZA', 136);
INSERT INTO `ubdistrito` VALUES (1412, 'QUINCHES', 136);
INSERT INTO `ubdistrito` VALUES (1413, 'QUINOCAY', 136);
INSERT INTO `ubdistrito` VALUES (1414, 'SAN JOAQUIN', 136);
INSERT INTO `ubdistrito` VALUES (1415, 'SAN PEDRO DE PILAS', 136);
INSERT INTO `ubdistrito` VALUES (1416, 'TANTA', 136);
INSERT INTO `ubdistrito` VALUES (1417, 'TAURIPAMPA', 136);
INSERT INTO `ubdistrito` VALUES (1418, 'TOMAS', 136);
INSERT INTO `ubdistrito` VALUES (1419, 'TUPE', 136);
INSERT INTO `ubdistrito` VALUES (1420, 'VI&Ntilde;AC', 136);
INSERT INTO `ubdistrito` VALUES (1421, 'VITIS', 136);
INSERT INTO `ubdistrito` VALUES (1422, 'IQUITOS', 137);
INSERT INTO `ubdistrito` VALUES (1423, 'ALTO NANAY', 137);
INSERT INTO `ubdistrito` VALUES (1424, 'FERNANDO LORES', 137);
INSERT INTO `ubdistrito` VALUES (1425, 'INDIANA', 137);
INSERT INTO `ubdistrito` VALUES (1426, 'LAS AMAZONAS', 137);
INSERT INTO `ubdistrito` VALUES (1427, 'MAZAN', 137);
INSERT INTO `ubdistrito` VALUES (1428, 'NAPO', 137);
INSERT INTO `ubdistrito` VALUES (1429, 'PUNCHANA', 137);
INSERT INTO `ubdistrito` VALUES (1430, 'PUTUMAYO', 137);
INSERT INTO `ubdistrito` VALUES (1431, 'TORRES CAUSANA', 137);
INSERT INTO `ubdistrito` VALUES (1432, 'BELEN', 137);
INSERT INTO `ubdistrito` VALUES (1433, 'SAN JUAN BAUTISTA', 137);
INSERT INTO `ubdistrito` VALUES (1434, 'YURIMAGUAS', 138);
INSERT INTO `ubdistrito` VALUES (1435, 'BALSAPUERTO', 138);
INSERT INTO `ubdistrito` VALUES (1436, 'BARRANCA', 138);
INSERT INTO `ubdistrito` VALUES (1437, 'CAHUAPANAS', 138);
INSERT INTO `ubdistrito` VALUES (1438, 'JEBEROS', 138);
INSERT INTO `ubdistrito` VALUES (1439, 'LAGUNAS', 138);
INSERT INTO `ubdistrito` VALUES (1440, 'MANSERICHE', 138);
INSERT INTO `ubdistrito` VALUES (1441, 'MORONA', 138);
INSERT INTO `ubdistrito` VALUES (1442, 'PASTAZA', 138);
INSERT INTO `ubdistrito` VALUES (1443, 'SANTA CRUZ', 138);
INSERT INTO `ubdistrito` VALUES (1444, 'TENIENTE CESAR LOPEZ ROJAS', 138);
INSERT INTO `ubdistrito` VALUES (1445, 'NAUTA', 139);
INSERT INTO `ubdistrito` VALUES (1446, 'PARINARI', 139);
INSERT INTO `ubdistrito` VALUES (1447, 'TIGRE', 139);
INSERT INTO `ubdistrito` VALUES (1448, 'TROMPETEROS', 139);
INSERT INTO `ubdistrito` VALUES (1449, 'URARINAS', 139);
INSERT INTO `ubdistrito` VALUES (1450, 'RAMON CASTILLA', 140);
INSERT INTO `ubdistrito` VALUES (1451, 'PEBAS', 140);
INSERT INTO `ubdistrito` VALUES (1452, 'YAVARI', 140);
INSERT INTO `ubdistrito` VALUES (1453, 'SAN PABLO', 140);
INSERT INTO `ubdistrito` VALUES (1454, 'REQUENA', 141);
INSERT INTO `ubdistrito` VALUES (1455, 'ALTO TAPICHE', 141);
INSERT INTO `ubdistrito` VALUES (1456, 'CAPELO', 141);
INSERT INTO `ubdistrito` VALUES (1457, 'EMILIO SAN MARTIN', 141);
INSERT INTO `ubdistrito` VALUES (1458, 'MAQUIA', 141);
INSERT INTO `ubdistrito` VALUES (1459, 'PUINAHUA', 141);
INSERT INTO `ubdistrito` VALUES (1460, 'SAQUENA', 141);
INSERT INTO `ubdistrito` VALUES (1461, 'SOPLIN', 141);
INSERT INTO `ubdistrito` VALUES (1462, 'TAPICHE', 141);
INSERT INTO `ubdistrito` VALUES (1463, 'JENARO HERRERA', 141);
INSERT INTO `ubdistrito` VALUES (1464, 'YAQUERANA', 141);
INSERT INTO `ubdistrito` VALUES (1465, 'CONTAMANA', 142);
INSERT INTO `ubdistrito` VALUES (1466, 'INAHUAYA', 142);
INSERT INTO `ubdistrito` VALUES (1467, 'PADRE MARQUEZ', 142);
INSERT INTO `ubdistrito` VALUES (1468, 'PAMPA HERMOSA', 142);
INSERT INTO `ubdistrito` VALUES (1469, 'SARAYACU', 142);
INSERT INTO `ubdistrito` VALUES (1470, 'VARGAS GUERRA', 142);
INSERT INTO `ubdistrito` VALUES (1471, 'TAMBOPATA', 143);
INSERT INTO `ubdistrito` VALUES (1472, 'INAMBARI', 143);
INSERT INTO `ubdistrito` VALUES (1473, 'LAS PIEDRAS', 143);
INSERT INTO `ubdistrito` VALUES (1474, 'LABERINTO', 143);
INSERT INTO `ubdistrito` VALUES (1475, 'MANU', 144);
INSERT INTO `ubdistrito` VALUES (1476, 'FITZCARRALD', 144);
INSERT INTO `ubdistrito` VALUES (1477, 'MADRE DE DIOS', 144);
INSERT INTO `ubdistrito` VALUES (1478, 'HUEPETUHE', 144);
INSERT INTO `ubdistrito` VALUES (1479, 'I&Ntilde;APARI', 145);
INSERT INTO `ubdistrito` VALUES (1480, 'IBERIA', 145);
INSERT INTO `ubdistrito` VALUES (1481, 'TAHUAMANU', 145);
INSERT INTO `ubdistrito` VALUES (1482, 'MOQUEGUA', 146);
INSERT INTO `ubdistrito` VALUES (1483, 'CARUMAS', 146);
INSERT INTO `ubdistrito` VALUES (1484, 'CUCHUMBAYA', 146);
INSERT INTO `ubdistrito` VALUES (1485, 'SAMEGUA', 146);
INSERT INTO `ubdistrito` VALUES (1486, 'SAN CRISTOBAL', 146);
INSERT INTO `ubdistrito` VALUES (1487, 'TORATA', 146);
INSERT INTO `ubdistrito` VALUES (1488, 'OMATE', 147);
INSERT INTO `ubdistrito` VALUES (1489, 'CHOJATA', 147);
INSERT INTO `ubdistrito` VALUES (1490, 'COALAQUE', 147);
INSERT INTO `ubdistrito` VALUES (1491, 'ICHU&Ntilde;A', 147);
INSERT INTO `ubdistrito` VALUES (1492, 'LA CAPILLA', 147);
INSERT INTO `ubdistrito` VALUES (1493, 'LLOQUE', 147);
INSERT INTO `ubdistrito` VALUES (1494, 'MATALAQUE', 147);
INSERT INTO `ubdistrito` VALUES (1495, 'PUQUINA', 147);
INSERT INTO `ubdistrito` VALUES (1496, 'QUINISTAQUILLAS', 147);
INSERT INTO `ubdistrito` VALUES (1497, 'UBINAS', 147);
INSERT INTO `ubdistrito` VALUES (1498, 'YUNGA', 147);
INSERT INTO `ubdistrito` VALUES (1499, 'ILO', 148);
INSERT INTO `ubdistrito` VALUES (1500, 'EL ALGARROBAL', 148);
INSERT INTO `ubdistrito` VALUES (1501, 'PACOCHA', 148);
INSERT INTO `ubdistrito` VALUES (1502, 'CHAUPIMARCA', 149);
INSERT INTO `ubdistrito` VALUES (1503, 'HUACHON', 149);
INSERT INTO `ubdistrito` VALUES (1504, 'HUARIACA', 149);
INSERT INTO `ubdistrito` VALUES (1505, 'HUAYLLAY', 149);
INSERT INTO `ubdistrito` VALUES (1506, 'NINACACA', 149);
INSERT INTO `ubdistrito` VALUES (1507, 'PALLANCHACRA', 149);
INSERT INTO `ubdistrito` VALUES (1508, 'PAUCARTAMBO', 149);
INSERT INTO `ubdistrito` VALUES (1509, 'SAN FCO.DE ASIS DE YARUSYACAN', 149);
INSERT INTO `ubdistrito` VALUES (1510, 'SIMON BOLIVAR', 149);
INSERT INTO `ubdistrito` VALUES (1511, 'TICLACAYAN', 149);
INSERT INTO `ubdistrito` VALUES (1512, 'TINYAHUARCO', 149);
INSERT INTO `ubdistrito` VALUES (1513, 'VICCO', 149);
INSERT INTO `ubdistrito` VALUES (1514, 'YANACANCHA', 149);
INSERT INTO `ubdistrito` VALUES (1515, 'YANAHUANCA', 150);
INSERT INTO `ubdistrito` VALUES (1516, 'CHACAYAN', 150);
INSERT INTO `ubdistrito` VALUES (1517, 'GOYLLARISQUIZGA', 150);
INSERT INTO `ubdistrito` VALUES (1518, 'PAUCAR', 150);
INSERT INTO `ubdistrito` VALUES (1519, 'SAN PEDRO DE PILLAO', 150);
INSERT INTO `ubdistrito` VALUES (1520, 'SANTA ANA DE TUSI', 150);
INSERT INTO `ubdistrito` VALUES (1521, 'TAPUC', 150);
INSERT INTO `ubdistrito` VALUES (1522, 'VILCABAMBA', 150);
INSERT INTO `ubdistrito` VALUES (1523, 'OXAPAMPA', 151);
INSERT INTO `ubdistrito` VALUES (1524, 'CHONTABAMBA', 151);
INSERT INTO `ubdistrito` VALUES (1525, 'HUANCABAMBA', 151);
INSERT INTO `ubdistrito` VALUES (1526, 'PALCAZU', 151);
INSERT INTO `ubdistrito` VALUES (1527, 'POZUZO', 151);
INSERT INTO `ubdistrito` VALUES (1528, 'PUERTO BERMUDEZ', 151);
INSERT INTO `ubdistrito` VALUES (1529, 'VILLA RICA', 151);
INSERT INTO `ubdistrito` VALUES (1530, 'PIURA', 152);
INSERT INTO `ubdistrito` VALUES (1531, 'CASTILLA', 152);
INSERT INTO `ubdistrito` VALUES (1532, 'CATACAOS', 152);
INSERT INTO `ubdistrito` VALUES (1533, 'CURA MORI', 152);
INSERT INTO `ubdistrito` VALUES (1534, 'EL TALLAN', 152);
INSERT INTO `ubdistrito` VALUES (1535, 'LA ARENA', 152);
INSERT INTO `ubdistrito` VALUES (1536, 'LA UNION', 152);
INSERT INTO `ubdistrito` VALUES (1537, 'LAS LOMAS', 152);
INSERT INTO `ubdistrito` VALUES (1538, 'TAMBO GRANDE', 152);
INSERT INTO `ubdistrito` VALUES (1539, 'AYABACA', 153);
INSERT INTO `ubdistrito` VALUES (1540, 'FRIAS', 153);
INSERT INTO `ubdistrito` VALUES (1541, 'JILILI', 153);
INSERT INTO `ubdistrito` VALUES (1542, 'LAGUNAS', 153);
INSERT INTO `ubdistrito` VALUES (1543, 'MONTERO', 153);
INSERT INTO `ubdistrito` VALUES (1544, 'PACAIPAMPA', 153);
INSERT INTO `ubdistrito` VALUES (1545, 'PAIMAS', 153);
INSERT INTO `ubdistrito` VALUES (1546, 'SAPILLICA', 153);
INSERT INTO `ubdistrito` VALUES (1547, 'SICCHEZ', 153);
INSERT INTO `ubdistrito` VALUES (1548, 'SUYO', 153);
INSERT INTO `ubdistrito` VALUES (1549, 'HUANCABAMBA', 154);
INSERT INTO `ubdistrito` VALUES (1550, 'CANCHAQUE', 154);
INSERT INTO `ubdistrito` VALUES (1551, 'EL CARMEN DE LA FRONTERA', 154);
INSERT INTO `ubdistrito` VALUES (1552, 'HUARMACA', 154);
INSERT INTO `ubdistrito` VALUES (1553, 'LALAQUIZ', 154);
INSERT INTO `ubdistrito` VALUES (1554, 'SAN MIGUEL DE EL FAIQUE', 154);
INSERT INTO `ubdistrito` VALUES (1555, 'SONDOR', 154);
INSERT INTO `ubdistrito` VALUES (1556, 'SONDORILLO', 154);
INSERT INTO `ubdistrito` VALUES (1557, 'CHULUCANAS', 155);
INSERT INTO `ubdistrito` VALUES (1558, 'BUENOS AIRES', 155);
INSERT INTO `ubdistrito` VALUES (1559, 'CHALACO', 155);
INSERT INTO `ubdistrito` VALUES (1560, 'LA MATANZA', 155);
INSERT INTO `ubdistrito` VALUES (1561, 'MORROPON', 155);
INSERT INTO `ubdistrito` VALUES (1562, 'SALITRAL', 155);
INSERT INTO `ubdistrito` VALUES (1563, 'SAN JUAN DE BIGOTE', 155);
INSERT INTO `ubdistrito` VALUES (1564, 'SANTA CATALINA DE MOSSA', 155);
INSERT INTO `ubdistrito` VALUES (1565, 'SANTO DOMINGO', 155);
INSERT INTO `ubdistrito` VALUES (1566, 'YAMANGO', 155);
INSERT INTO `ubdistrito` VALUES (1567, 'PAITA', 156);
INSERT INTO `ubdistrito` VALUES (1568, 'AMOTAPE', 156);
INSERT INTO `ubdistrito` VALUES (1569, 'ARENAL', 156);
INSERT INTO `ubdistrito` VALUES (1570, 'COLAN', 156);
INSERT INTO `ubdistrito` VALUES (1571, 'LA HUACA', 156);
INSERT INTO `ubdistrito` VALUES (1572, 'TAMARINDO', 156);
INSERT INTO `ubdistrito` VALUES (1573, 'VICHAYAL', 156);
INSERT INTO `ubdistrito` VALUES (1574, 'SULLANA', 157);
INSERT INTO `ubdistrito` VALUES (1575, 'BELLAVISTA', 157);
INSERT INTO `ubdistrito` VALUES (1576, 'IGNACIO ESCUDERO', 157);
INSERT INTO `ubdistrito` VALUES (1577, 'LANCONES', 157);
INSERT INTO `ubdistrito` VALUES (1578, 'MARCAVELICA', 157);
INSERT INTO `ubdistrito` VALUES (1579, 'MIGUEL CHECA', 157);
INSERT INTO `ubdistrito` VALUES (1580, 'QUERECOTILLO', 157);
INSERT INTO `ubdistrito` VALUES (1581, 'SALITRAL', 157);
INSERT INTO `ubdistrito` VALUES (1582, 'PARI&Ntilde;AS', 158);
INSERT INTO `ubdistrito` VALUES (1583, 'EL ALTO', 158);
INSERT INTO `ubdistrito` VALUES (1584, 'LA BREA', 158);
INSERT INTO `ubdistrito` VALUES (1585, 'LOBITOS', 158);
INSERT INTO `ubdistrito` VALUES (1586, 'LOS ORGANOS', 158);
INSERT INTO `ubdistrito` VALUES (1587, 'MANCORA', 158);
INSERT INTO `ubdistrito` VALUES (1588, 'SECHURA', 159);
INSERT INTO `ubdistrito` VALUES (1589, 'BELLAVISTA DE LA UNION', 159);
INSERT INTO `ubdistrito` VALUES (1590, 'BERNAL', 159);
INSERT INTO `ubdistrito` VALUES (1591, 'CRISTO NOS VALGA', 159);
INSERT INTO `ubdistrito` VALUES (1592, 'VICE', 159);
INSERT INTO `ubdistrito` VALUES (1593, 'RINCONADA LLICUAR', 159);
INSERT INTO `ubdistrito` VALUES (1594, 'PUNO', 160);
INSERT INTO `ubdistrito` VALUES (1595, 'ACORA', 160);
INSERT INTO `ubdistrito` VALUES (1596, 'AMANTANI', 160);
INSERT INTO `ubdistrito` VALUES (1597, 'ATUNCOLLA', 160);
INSERT INTO `ubdistrito` VALUES (1598, 'CAPACHICA', 160);
INSERT INTO `ubdistrito` VALUES (1599, 'CHUCUITO', 160);
INSERT INTO `ubdistrito` VALUES (1600, 'COATA', 160);
INSERT INTO `ubdistrito` VALUES (1601, 'HUATA', 160);
INSERT INTO `ubdistrito` VALUES (1602, 'MA&Ntilde;AZO', 160);
INSERT INTO `ubdistrito` VALUES (1603, 'PAUCARCOLLA', 160);
INSERT INTO `ubdistrito` VALUES (1604, 'PICHACANI', 160);
INSERT INTO `ubdistrito` VALUES (1605, 'PLATERIA', 160);
INSERT INTO `ubdistrito` VALUES (1606, 'SAN ANTONIO', 160);
INSERT INTO `ubdistrito` VALUES (1607, 'TIQUILLACA', 160);
INSERT INTO `ubdistrito` VALUES (1608, 'VILQUE', 160);
INSERT INTO `ubdistrito` VALUES (1609, 'AZANGARO', 161);
INSERT INTO `ubdistrito` VALUES (1610, 'ACHAYA', 161);
INSERT INTO `ubdistrito` VALUES (1611, 'ARAPA', 161);
INSERT INTO `ubdistrito` VALUES (1612, 'ASILLO', 161);
INSERT INTO `ubdistrito` VALUES (1613, 'CAMINACA', 161);
INSERT INTO `ubdistrito` VALUES (1614, 'CHUPA', 161);
INSERT INTO `ubdistrito` VALUES (1615, 'JOSE DOMINGO CHOQUEHUANCA', 161);
INSERT INTO `ubdistrito` VALUES (1616, 'MU&Ntilde;ANI', 161);
INSERT INTO `ubdistrito` VALUES (1617, 'POTONI', 161);
INSERT INTO `ubdistrito` VALUES (1618, 'SAMAN', 161);
INSERT INTO `ubdistrito` VALUES (1619, 'SAN ANTON', 161);
INSERT INTO `ubdistrito` VALUES (1620, 'SAN JOSE', 161);
INSERT INTO `ubdistrito` VALUES (1621, 'SAN JUAN DE SALINAS', 161);
INSERT INTO `ubdistrito` VALUES (1622, 'SANTIAGO DE PUPUJA', 161);
INSERT INTO `ubdistrito` VALUES (1623, 'TIRAPATA', 161);
INSERT INTO `ubdistrito` VALUES (1624, 'MACUSANI', 162);
INSERT INTO `ubdistrito` VALUES (1625, 'AJOYANI', 162);
INSERT INTO `ubdistrito` VALUES (1626, 'AYAPATA', 162);
INSERT INTO `ubdistrito` VALUES (1627, 'COASA', 162);
INSERT INTO `ubdistrito` VALUES (1628, 'CORANI', 162);
INSERT INTO `ubdistrito` VALUES (1629, 'CRUCERO', 162);
INSERT INTO `ubdistrito` VALUES (1630, 'ITUATA', 162);
INSERT INTO `ubdistrito` VALUES (1631, 'OLLACHEA', 162);
INSERT INTO `ubdistrito` VALUES (1632, 'SAN GABAN', 162);
INSERT INTO `ubdistrito` VALUES (1633, 'USICAYOS', 162);
INSERT INTO `ubdistrito` VALUES (1634, 'JULI', 163);
INSERT INTO `ubdistrito` VALUES (1635, 'DESAGUADERO', 163);
INSERT INTO `ubdistrito` VALUES (1636, 'HUACULLANI', 163);
INSERT INTO `ubdistrito` VALUES (1637, 'KELLUYO', 163);
INSERT INTO `ubdistrito` VALUES (1638, 'PISACOMA', 163);
INSERT INTO `ubdistrito` VALUES (1639, 'POMATA', 163);
INSERT INTO `ubdistrito` VALUES (1640, 'ZEPITA', 163);
INSERT INTO `ubdistrito` VALUES (1641, 'ILAVE', 164);
INSERT INTO `ubdistrito` VALUES (1642, 'CAPAZO', 164);
INSERT INTO `ubdistrito` VALUES (1643, 'PILCUYO', 164);
INSERT INTO `ubdistrito` VALUES (1644, 'SANTA ROSA', 164);
INSERT INTO `ubdistrito` VALUES (1645, 'CONDURIRI', 164);
INSERT INTO `ubdistrito` VALUES (1646, 'HUANCANE', 165);
INSERT INTO `ubdistrito` VALUES (1647, 'COJATA', 165);
INSERT INTO `ubdistrito` VALUES (1648, 'HUATASANI', 165);
INSERT INTO `ubdistrito` VALUES (1649, 'INCHUPALLA', 165);
INSERT INTO `ubdistrito` VALUES (1650, 'PUSI', 165);
INSERT INTO `ubdistrito` VALUES (1651, 'ROSASPATA', 165);
INSERT INTO `ubdistrito` VALUES (1652, 'TARACO', 165);
INSERT INTO `ubdistrito` VALUES (1653, 'VILQUE CHICO', 165);
INSERT INTO `ubdistrito` VALUES (1654, 'LAMPA', 166);
INSERT INTO `ubdistrito` VALUES (1655, 'CABANILLA', 166);
INSERT INTO `ubdistrito` VALUES (1656, 'CALAPUJA', 166);
INSERT INTO `ubdistrito` VALUES (1657, 'NICASIO', 166);
INSERT INTO `ubdistrito` VALUES (1658, 'OCUVIRI', 166);
INSERT INTO `ubdistrito` VALUES (1659, 'PALCA', 166);
INSERT INTO `ubdistrito` VALUES (1660, 'PARATIA', 166);
INSERT INTO `ubdistrito` VALUES (1661, 'PUCARA', 166);
INSERT INTO `ubdistrito` VALUES (1662, 'SANTA LUCIA', 166);
INSERT INTO `ubdistrito` VALUES (1663, 'VILAVILA', 166);
INSERT INTO `ubdistrito` VALUES (1664, 'AYAVIRI', 167);
INSERT INTO `ubdistrito` VALUES (1665, 'ANTAUTA', 167);
INSERT INTO `ubdistrito` VALUES (1666, 'CUPI', 167);
INSERT INTO `ubdistrito` VALUES (1667, 'LLALLI', 167);
INSERT INTO `ubdistrito` VALUES (1668, 'MACARI', 167);
INSERT INTO `ubdistrito` VALUES (1669, 'NU&Ntilde;OA', 167);
INSERT INTO `ubdistrito` VALUES (1670, 'ORURILLO', 167);
INSERT INTO `ubdistrito` VALUES (1671, 'SANTA ROSA', 167);
INSERT INTO `ubdistrito` VALUES (1672, 'UMACHIRI', 167);
INSERT INTO `ubdistrito` VALUES (1673, 'MOHO', 168);
INSERT INTO `ubdistrito` VALUES (1674, 'CONIMA', 168);
INSERT INTO `ubdistrito` VALUES (1675, 'HUAYRAPATA', 168);
INSERT INTO `ubdistrito` VALUES (1676, 'TILALI', 168);
INSERT INTO `ubdistrito` VALUES (1677, 'PUTINA', 169);
INSERT INTO `ubdistrito` VALUES (1678, 'ANANEA', 169);
INSERT INTO `ubdistrito` VALUES (1679, 'PEDRO VILCA APAZA', 169);
INSERT INTO `ubdistrito` VALUES (1680, 'QUILCAPUNCU', 169);
INSERT INTO `ubdistrito` VALUES (1681, 'SINA', 169);
INSERT INTO `ubdistrito` VALUES (1682, 'JULIACA', 170);
INSERT INTO `ubdistrito` VALUES (1683, 'CABANA', 170);
INSERT INTO `ubdistrito` VALUES (1684, 'CABANILLAS', 170);
INSERT INTO `ubdistrito` VALUES (1685, 'CARACOTO', 170);
INSERT INTO `ubdistrito` VALUES (1686, 'SANDIA', 171);
INSERT INTO `ubdistrito` VALUES (1687, 'CUYOCUYO', 171);
INSERT INTO `ubdistrito` VALUES (1688, 'LIMBANI', 171);
INSERT INTO `ubdistrito` VALUES (1689, 'PATAMBUCO', 171);
INSERT INTO `ubdistrito` VALUES (1690, 'PHARA', 171);
INSERT INTO `ubdistrito` VALUES (1691, 'QUIACA', 171);
INSERT INTO `ubdistrito` VALUES (1692, 'SAN JUAN DEL ORO', 171);
INSERT INTO `ubdistrito` VALUES (1693, 'YANAHUAYA', 171);
INSERT INTO `ubdistrito` VALUES (1694, 'ALTO INAMBARI', 171);
INSERT INTO `ubdistrito` VALUES (1695, 'YUNGUYO', 172);
INSERT INTO `ubdistrito` VALUES (1696, 'ANAPIA', 172);
INSERT INTO `ubdistrito` VALUES (1697, 'COPANI', 172);
INSERT INTO `ubdistrito` VALUES (1698, 'CUTURAPI', 172);
INSERT INTO `ubdistrito` VALUES (1699, 'OLLARAYA', 172);
INSERT INTO `ubdistrito` VALUES (1700, 'TINICACHI', 172);
INSERT INTO `ubdistrito` VALUES (1701, 'UNICACHI', 172);
INSERT INTO `ubdistrito` VALUES (1702, 'MOYOBAMBA', 173);
INSERT INTO `ubdistrito` VALUES (1703, 'CALZADA', 173);
INSERT INTO `ubdistrito` VALUES (1704, 'HABANA', 173);
INSERT INTO `ubdistrito` VALUES (1705, 'JEPELACIO', 173);
INSERT INTO `ubdistrito` VALUES (1706, 'SORITOR', 173);
INSERT INTO `ubdistrito` VALUES (1707, 'YANTALO', 173);
INSERT INTO `ubdistrito` VALUES (1708, 'BELLAVISTA', 174);
INSERT INTO `ubdistrito` VALUES (1709, 'ALTO BIAVO', 174);
INSERT INTO `ubdistrito` VALUES (1710, 'BAJO BIAVO', 174);
INSERT INTO `ubdistrito` VALUES (1711, 'HUALLAGA', 174);
INSERT INTO `ubdistrito` VALUES (1712, 'SAN PABLO', 174);
INSERT INTO `ubdistrito` VALUES (1713, 'SAN RAFAEL', 174);
INSERT INTO `ubdistrito` VALUES (1714, 'SAN JOSE DE SISA', 175);
INSERT INTO `ubdistrito` VALUES (1715, 'AGUA BLANCA', 175);
INSERT INTO `ubdistrito` VALUES (1716, 'SAN MARTIN', 175);
INSERT INTO `ubdistrito` VALUES (1717, 'SANTA ROSA', 175);
INSERT INTO `ubdistrito` VALUES (1718, 'SHATOJA', 175);
INSERT INTO `ubdistrito` VALUES (1719, 'SAPOSOA', 176);
INSERT INTO `ubdistrito` VALUES (1720, 'ALTO SAPOSOA', 176);
INSERT INTO `ubdistrito` VALUES (1721, 'EL ESLABON', 176);
INSERT INTO `ubdistrito` VALUES (1722, 'PISCOYACU', 176);
INSERT INTO `ubdistrito` VALUES (1723, 'SACANCHE', 176);
INSERT INTO `ubdistrito` VALUES (1724, 'TINGO DE SAPOSOA', 176);
INSERT INTO `ubdistrito` VALUES (1725, 'LAMAS', 177);
INSERT INTO `ubdistrito` VALUES (1726, 'ALONSO DE ALVARADO', 177);
INSERT INTO `ubdistrito` VALUES (1727, 'BARRANQUITA', 177);
INSERT INTO `ubdistrito` VALUES (1728, 'CAYNARACHI', 177);
INSERT INTO `ubdistrito` VALUES (1729, 'CU&Ntilde;UMBUQUI', 177);
INSERT INTO `ubdistrito` VALUES (1730, 'PINTO RECODO', 177);
INSERT INTO `ubdistrito` VALUES (1731, 'RUMISAPA', 177);
INSERT INTO `ubdistrito` VALUES (1732, 'SAN ROQUE DE CUMBAZA', 177);
INSERT INTO `ubdistrito` VALUES (1733, 'SHANAO', 177);
INSERT INTO `ubdistrito` VALUES (1734, 'TABALOSOS', 177);
INSERT INTO `ubdistrito` VALUES (1735, 'ZAPATERO', 177);
INSERT INTO `ubdistrito` VALUES (1736, 'JUANJUI', 178);
INSERT INTO `ubdistrito` VALUES (1737, 'CAMPANILLA', 178);
INSERT INTO `ubdistrito` VALUES (1738, 'HUICUNGO', 178);
INSERT INTO `ubdistrito` VALUES (1739, 'PACHIZA', 178);
INSERT INTO `ubdistrito` VALUES (1740, 'PAJARILLO', 178);
INSERT INTO `ubdistrito` VALUES (1741, 'PICOTA', 179);
INSERT INTO `ubdistrito` VALUES (1742, 'BUENOS AIRES', 179);
INSERT INTO `ubdistrito` VALUES (1743, 'CASPISAPA', 179);
INSERT INTO `ubdistrito` VALUES (1744, 'PILLUANA', 179);
INSERT INTO `ubdistrito` VALUES (1745, 'PUCACACA', 179);
INSERT INTO `ubdistrito` VALUES (1746, 'SAN CRISTOBAL', 179);
INSERT INTO `ubdistrito` VALUES (1747, 'SAN HILARION', 179);
INSERT INTO `ubdistrito` VALUES (1748, 'SHAMBOYACU', 179);
INSERT INTO `ubdistrito` VALUES (1749, 'TINGO DE PONASA', 179);
INSERT INTO `ubdistrito` VALUES (1750, 'TRES UNIDOS', 179);
INSERT INTO `ubdistrito` VALUES (1751, 'RIOJA', 180);
INSERT INTO `ubdistrito` VALUES (1752, 'AWAJUN', 180);
INSERT INTO `ubdistrito` VALUES (1753, 'ELIAS SOPLIN VARGAS', 180);
INSERT INTO `ubdistrito` VALUES (1754, 'NUEVA CAJAMARCA', 180);
INSERT INTO `ubdistrito` VALUES (1755, 'PARDO MIGUEL', 180);
INSERT INTO `ubdistrito` VALUES (1756, 'POSIC', 180);
INSERT INTO `ubdistrito` VALUES (1757, 'SAN FERNANDO', 180);
INSERT INTO `ubdistrito` VALUES (1758, 'YORONGOS', 180);
INSERT INTO `ubdistrito` VALUES (1759, 'YURACYACU', 180);
INSERT INTO `ubdistrito` VALUES (1760, 'TARAPOTO', 181);
INSERT INTO `ubdistrito` VALUES (1761, 'ALBERTO LEVEAU', 181);
INSERT INTO `ubdistrito` VALUES (1762, 'CACATACHI', 181);
INSERT INTO `ubdistrito` VALUES (1763, 'CHAZUTA', 181);
INSERT INTO `ubdistrito` VALUES (1764, 'CHIPURANA', 181);
INSERT INTO `ubdistrito` VALUES (1765, 'EL PORVENIR', 181);
INSERT INTO `ubdistrito` VALUES (1766, 'HUIMBAYOC', 181);
INSERT INTO `ubdistrito` VALUES (1767, 'JUAN GUERRA', 181);
INSERT INTO `ubdistrito` VALUES (1768, 'LA BANDA DE SHILCAYO', 181);
INSERT INTO `ubdistrito` VALUES (1769, 'MORALES', 181);
INSERT INTO `ubdistrito` VALUES (1770, 'PAPAPLAYA', 181);
INSERT INTO `ubdistrito` VALUES (1771, 'SAN ANTONIO', 181);
INSERT INTO `ubdistrito` VALUES (1772, 'SAUCE', 181);
INSERT INTO `ubdistrito` VALUES (1773, 'SHAPAJA', 181);
INSERT INTO `ubdistrito` VALUES (1774, 'TOCACHE', 182);
INSERT INTO `ubdistrito` VALUES (1775, 'NUEVO PROGRESO', 182);
INSERT INTO `ubdistrito` VALUES (1776, 'POLVORA', 182);
INSERT INTO `ubdistrito` VALUES (1777, 'SHUNTE', 182);
INSERT INTO `ubdistrito` VALUES (1778, 'UCHIZA', 182);
INSERT INTO `ubdistrito` VALUES (1779, 'TACNA', 183);
INSERT INTO `ubdistrito` VALUES (1780, 'ALTO DE LA ALIANZA', 183);
INSERT INTO `ubdistrito` VALUES (1781, 'CALANA', 183);
INSERT INTO `ubdistrito` VALUES (1782, 'CIUDAD NUEVA', 183);
INSERT INTO `ubdistrito` VALUES (1783, 'INCLAN', 183);
INSERT INTO `ubdistrito` VALUES (1784, 'PACHIA', 183);
INSERT INTO `ubdistrito` VALUES (1785, 'PALCA', 183);
INSERT INTO `ubdistrito` VALUES (1786, 'POCOLLAY', 183);
INSERT INTO `ubdistrito` VALUES (1787, 'SAMA', 183);
INSERT INTO `ubdistrito` VALUES (1788, 'CORONEL GREGORIO ALBARRACIN LANCHIPA', 183);
INSERT INTO `ubdistrito` VALUES (1789, 'CANDARAVE', 184);
INSERT INTO `ubdistrito` VALUES (1790, 'CAIRANI', 184);
INSERT INTO `ubdistrito` VALUES (1791, 'CAMILACA', 184);
INSERT INTO `ubdistrito` VALUES (1792, 'CURIBAYA', 184);
INSERT INTO `ubdistrito` VALUES (1793, 'HUANUARA', 184);
INSERT INTO `ubdistrito` VALUES (1794, 'QUILAHUANI', 184);
INSERT INTO `ubdistrito` VALUES (1795, 'LOCUMBA', 185);
INSERT INTO `ubdistrito` VALUES (1796, 'ILABAYA', 185);
INSERT INTO `ubdistrito` VALUES (1797, 'ITE', 185);
INSERT INTO `ubdistrito` VALUES (1798, 'TARATA', 186);
INSERT INTO `ubdistrito` VALUES (1799, 'CHUCATAMANI', 186);
INSERT INTO `ubdistrito` VALUES (1800, 'ESTIQUE', 186);
INSERT INTO `ubdistrito` VALUES (1801, 'ESTIQUE-PAMPA', 186);
INSERT INTO `ubdistrito` VALUES (1802, 'SITAJARA', 186);
INSERT INTO `ubdistrito` VALUES (1803, 'SUSAPAYA', 186);
INSERT INTO `ubdistrito` VALUES (1804, 'TARUCACHI', 186);
INSERT INTO `ubdistrito` VALUES (1805, 'TICACO', 186);
INSERT INTO `ubdistrito` VALUES (1806, 'TUMBES', 187);
INSERT INTO `ubdistrito` VALUES (1807, 'CORRALES', 187);
INSERT INTO `ubdistrito` VALUES (1808, 'LA CRUZ', 187);
INSERT INTO `ubdistrito` VALUES (1809, 'PAMPAS DE HOSPITAL', 187);
INSERT INTO `ubdistrito` VALUES (1810, 'SAN JACINTO', 187);
INSERT INTO `ubdistrito` VALUES (1811, 'SAN JUAN DE LA VIRGEN', 187);
INSERT INTO `ubdistrito` VALUES (1812, 'ZORRITOS', 188);
INSERT INTO `ubdistrito` VALUES (1813, 'CASITAS', 188);
INSERT INTO `ubdistrito` VALUES (1814, 'ZARUMILLA', 189);
INSERT INTO `ubdistrito` VALUES (1815, 'AGUAS VERDES', 189);
INSERT INTO `ubdistrito` VALUES (1816, 'MATAPALO', 189);
INSERT INTO `ubdistrito` VALUES (1817, 'PAPAYAL', 189);
INSERT INTO `ubdistrito` VALUES (1818, 'CALLERIA', 190);
INSERT INTO `ubdistrito` VALUES (1819, 'CAMPOVERDE', 190);
INSERT INTO `ubdistrito` VALUES (1820, 'IPARIA', 190);
INSERT INTO `ubdistrito` VALUES (1821, 'MASISEA', 190);
INSERT INTO `ubdistrito` VALUES (1822, 'YARINACOCHA', 190);
INSERT INTO `ubdistrito` VALUES (1823, 'NUEVA REQUENA', 190);
INSERT INTO `ubdistrito` VALUES (1824, 'RAYMONDI', 191);
INSERT INTO `ubdistrito` VALUES (1825, 'SEPAHUA', 191);
INSERT INTO `ubdistrito` VALUES (1826, 'TAHUANIA', 191);
INSERT INTO `ubdistrito` VALUES (1827, 'YURUA', 191);
INSERT INTO `ubdistrito` VALUES (1828, 'PADRE ABAD', 192);
INSERT INTO `ubdistrito` VALUES (1829, 'IRAZOLA', 192);
INSERT INTO `ubdistrito` VALUES (1830, 'CURIMANA', 192);
INSERT INTO `ubdistrito` VALUES (1831, 'PURUS', 193);

-- ----------------------------
-- Table structure for ubprovincia
-- ----------------------------
DROP TABLE IF EXISTS `ubprovincia`;
CREATE TABLE `ubprovincia`  (
  `idProv` int(5) NOT NULL DEFAULT 0,
  `provincia` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idDepa` int(5) NULL DEFAULT NULL,
  PRIMARY KEY (`idProv`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ubprovincia
-- ----------------------------
INSERT INTO `ubprovincia` VALUES (1, 'CHACHAPOYAS ', 1);
INSERT INTO `ubprovincia` VALUES (2, 'BAGUA', 1);
INSERT INTO `ubprovincia` VALUES (3, 'BONGARA', 1);
INSERT INTO `ubprovincia` VALUES (4, 'CONDORCANQUI', 1);
INSERT INTO `ubprovincia` VALUES (5, 'LUYA', 1);
INSERT INTO `ubprovincia` VALUES (6, 'RODRIGUEZ DE MENDOZA', 1);
INSERT INTO `ubprovincia` VALUES (7, 'UTCUBAMBA', 1);
INSERT INTO `ubprovincia` VALUES (8, 'HUARAZ', 2);
INSERT INTO `ubprovincia` VALUES (9, 'AIJA', 2);
INSERT INTO `ubprovincia` VALUES (10, 'ANTONIO RAYMONDI', 2);
INSERT INTO `ubprovincia` VALUES (11, 'ASUNCION', 2);
INSERT INTO `ubprovincia` VALUES (12, 'BOLOGNESI', 2);
INSERT INTO `ubprovincia` VALUES (13, 'CARHUAZ', 2);
INSERT INTO `ubprovincia` VALUES (14, 'CARLOS FERMIN FITZCARRALD', 2);
INSERT INTO `ubprovincia` VALUES (15, 'CASMA', 2);
INSERT INTO `ubprovincia` VALUES (16, 'CORONGO', 2);
INSERT INTO `ubprovincia` VALUES (17, 'HUARI', 2);
INSERT INTO `ubprovincia` VALUES (18, 'HUARMEY', 2);
INSERT INTO `ubprovincia` VALUES (19, 'HUAYLAS', 2);
INSERT INTO `ubprovincia` VALUES (20, 'MARISCAL LUZURIAGA', 2);
INSERT INTO `ubprovincia` VALUES (21, 'OCROS', 2);
INSERT INTO `ubprovincia` VALUES (22, 'PALLASCA', 2);
INSERT INTO `ubprovincia` VALUES (23, 'POMABAMBA', 2);
INSERT INTO `ubprovincia` VALUES (24, 'RECUAY', 2);
INSERT INTO `ubprovincia` VALUES (25, 'SANTA', 2);
INSERT INTO `ubprovincia` VALUES (26, 'SIHUAS', 2);
INSERT INTO `ubprovincia` VALUES (27, 'YUNGAY', 2);
INSERT INTO `ubprovincia` VALUES (28, 'ABANCAY', 3);
INSERT INTO `ubprovincia` VALUES (29, 'ANDAHUAYLAS', 3);
INSERT INTO `ubprovincia` VALUES (30, 'ANTABAMBA', 3);
INSERT INTO `ubprovincia` VALUES (31, 'AYMARAES', 3);
INSERT INTO `ubprovincia` VALUES (32, 'COTABAMBAS', 3);
INSERT INTO `ubprovincia` VALUES (33, 'CHINCHEROS', 3);
INSERT INTO `ubprovincia` VALUES (34, 'GRAU', 3);
INSERT INTO `ubprovincia` VALUES (35, 'AREQUIPA', 4);
INSERT INTO `ubprovincia` VALUES (36, 'CAMANA', 4);
INSERT INTO `ubprovincia` VALUES (37, 'CARAVELI', 4);
INSERT INTO `ubprovincia` VALUES (38, 'CASTILLA', 4);
INSERT INTO `ubprovincia` VALUES (39, 'CAYLLOMA', 4);
INSERT INTO `ubprovincia` VALUES (40, 'CONDESUYOS', 4);
INSERT INTO `ubprovincia` VALUES (41, 'ISLAY', 4);
INSERT INTO `ubprovincia` VALUES (42, 'LA UNION', 4);
INSERT INTO `ubprovincia` VALUES (43, 'HUAMANGA', 5);
INSERT INTO `ubprovincia` VALUES (44, 'CANGALLO', 5);
INSERT INTO `ubprovincia` VALUES (45, 'HUANCA SANCOS', 5);
INSERT INTO `ubprovincia` VALUES (46, 'HUANTA', 5);
INSERT INTO `ubprovincia` VALUES (47, 'LA MAR', 5);
INSERT INTO `ubprovincia` VALUES (48, 'LUCANAS', 5);
INSERT INTO `ubprovincia` VALUES (49, 'PARINACOCHAS', 5);
INSERT INTO `ubprovincia` VALUES (50, 'PAUCAR DEL SARA SARA', 5);
INSERT INTO `ubprovincia` VALUES (51, 'SUCRE', 5);
INSERT INTO `ubprovincia` VALUES (52, 'VICTOR FAJARDO', 5);
INSERT INTO `ubprovincia` VALUES (53, 'VILCAS HUAMAN', 5);
INSERT INTO `ubprovincia` VALUES (54, 'CAJAMARCA', 6);
INSERT INTO `ubprovincia` VALUES (55, 'CAJABAMBA', 6);
INSERT INTO `ubprovincia` VALUES (56, 'CELENDIN', 6);
INSERT INTO `ubprovincia` VALUES (57, 'CHOTA ', 6);
INSERT INTO `ubprovincia` VALUES (58, 'CONTUMAZA', 6);
INSERT INTO `ubprovincia` VALUES (59, 'CUTERVO', 6);
INSERT INTO `ubprovincia` VALUES (60, 'HUALGAYOC', 6);
INSERT INTO `ubprovincia` VALUES (61, 'JAEN', 6);
INSERT INTO `ubprovincia` VALUES (62, 'SAN IGNACIO', 6);
INSERT INTO `ubprovincia` VALUES (63, 'SAN MARCOS', 6);
INSERT INTO `ubprovincia` VALUES (64, 'SAN PABLO', 6);
INSERT INTO `ubprovincia` VALUES (65, 'SANTA CRUZ', 6);
INSERT INTO `ubprovincia` VALUES (66, 'CALLAO', 7);
INSERT INTO `ubprovincia` VALUES (67, 'CUSCO', 8);
INSERT INTO `ubprovincia` VALUES (68, 'ACOMAYO', 8);
INSERT INTO `ubprovincia` VALUES (69, 'ANTA', 8);
INSERT INTO `ubprovincia` VALUES (70, 'CALCA', 8);
INSERT INTO `ubprovincia` VALUES (71, 'CANAS', 8);
INSERT INTO `ubprovincia` VALUES (72, 'CANCHIS', 8);
INSERT INTO `ubprovincia` VALUES (73, 'CHUMBIVILCAS', 8);
INSERT INTO `ubprovincia` VALUES (74, 'ESPINAR', 8);
INSERT INTO `ubprovincia` VALUES (75, 'LA CONVENCION', 8);
INSERT INTO `ubprovincia` VALUES (76, 'PARURO', 8);
INSERT INTO `ubprovincia` VALUES (77, 'PAUCARTAMBO', 8);
INSERT INTO `ubprovincia` VALUES (78, 'QUISPICANCHI', 8);
INSERT INTO `ubprovincia` VALUES (79, 'URUBAMBA', 8);
INSERT INTO `ubprovincia` VALUES (80, 'HUANCAVELICA', 9);
INSERT INTO `ubprovincia` VALUES (81, 'ACOBAMBA', 9);
INSERT INTO `ubprovincia` VALUES (82, 'ANGARAES', 9);
INSERT INTO `ubprovincia` VALUES (83, 'CASTROVIRREYNA', 9);
INSERT INTO `ubprovincia` VALUES (84, 'CHURCAMPA', 9);
INSERT INTO `ubprovincia` VALUES (85, 'HUAYTARA', 9);
INSERT INTO `ubprovincia` VALUES (86, 'TAYACAJA', 9);
INSERT INTO `ubprovincia` VALUES (87, 'HUANUCO', 10);
INSERT INTO `ubprovincia` VALUES (88, 'AMBO', 10);
INSERT INTO `ubprovincia` VALUES (89, 'DOS DE MAYO', 10);
INSERT INTO `ubprovincia` VALUES (90, 'HUACAYBAMBA', 10);
INSERT INTO `ubprovincia` VALUES (91, 'HUAMALIES', 10);
INSERT INTO `ubprovincia` VALUES (92, 'LEONCIO PRADO', 10);
INSERT INTO `ubprovincia` VALUES (93, 'MARA&Ntilde;ON', 10);
INSERT INTO `ubprovincia` VALUES (94, 'PACHITEA', 10);
INSERT INTO `ubprovincia` VALUES (95, 'PUERTO INCA', 10);
INSERT INTO `ubprovincia` VALUES (96, 'LAURICOCHA', 10);
INSERT INTO `ubprovincia` VALUES (97, 'YAROWILCA', 10);
INSERT INTO `ubprovincia` VALUES (98, 'ICA', 11);
INSERT INTO `ubprovincia` VALUES (99, 'CHINCHA', 11);
INSERT INTO `ubprovincia` VALUES (100, 'NAZCA', 11);
INSERT INTO `ubprovincia` VALUES (101, 'PALPA', 11);
INSERT INTO `ubprovincia` VALUES (102, 'PISCO', 11);
INSERT INTO `ubprovincia` VALUES (103, 'HUANCAYO', 12);
INSERT INTO `ubprovincia` VALUES (104, 'CONCEPCION', 12);
INSERT INTO `ubprovincia` VALUES (105, 'CHANCHAMAYO', 12);
INSERT INTO `ubprovincia` VALUES (106, 'JAUJA', 12);
INSERT INTO `ubprovincia` VALUES (107, 'JUNIN', 12);
INSERT INTO `ubprovincia` VALUES (108, 'SATIPO', 12);
INSERT INTO `ubprovincia` VALUES (109, 'TARMA', 12);
INSERT INTO `ubprovincia` VALUES (110, 'YAULI', 12);
INSERT INTO `ubprovincia` VALUES (111, 'CHUPACA', 12);
INSERT INTO `ubprovincia` VALUES (112, 'TRUJILLO', 13);
INSERT INTO `ubprovincia` VALUES (113, 'ASCOPE', 13);
INSERT INTO `ubprovincia` VALUES (114, 'BOLIVAR', 13);
INSERT INTO `ubprovincia` VALUES (115, 'CHEPEN', 13);
INSERT INTO `ubprovincia` VALUES (116, 'JULCAN', 13);
INSERT INTO `ubprovincia` VALUES (117, 'OTUZCO', 13);
INSERT INTO `ubprovincia` VALUES (118, 'PACASMAYO', 13);
INSERT INTO `ubprovincia` VALUES (119, 'PATAZ', 13);
INSERT INTO `ubprovincia` VALUES (120, 'SANCHEZ CARRION', 13);
INSERT INTO `ubprovincia` VALUES (121, 'SANTIAGO DE CHUCO', 13);
INSERT INTO `ubprovincia` VALUES (122, 'GRAN CHIMU', 13);
INSERT INTO `ubprovincia` VALUES (123, 'VIRU', 13);
INSERT INTO `ubprovincia` VALUES (124, 'CHICLAYO', 14);
INSERT INTO `ubprovincia` VALUES (125, 'FERRE&Ntilde;AFE', 14);
INSERT INTO `ubprovincia` VALUES (126, 'LAMBAYEQUE', 14);
INSERT INTO `ubprovincia` VALUES (127, 'LIMA', 15);
INSERT INTO `ubprovincia` VALUES (128, 'BARRANCA', 15);
INSERT INTO `ubprovincia` VALUES (129, 'CAJATAMBO', 15);
INSERT INTO `ubprovincia` VALUES (130, 'CANTA', 15);
INSERT INTO `ubprovincia` VALUES (131, 'CA&Ntilde;ETE', 15);
INSERT INTO `ubprovincia` VALUES (132, 'HUARAL', 15);
INSERT INTO `ubprovincia` VALUES (133, 'HUAROCHIRI', 15);
INSERT INTO `ubprovincia` VALUES (134, 'HUAURA', 15);
INSERT INTO `ubprovincia` VALUES (135, 'OYON', 15);
INSERT INTO `ubprovincia` VALUES (136, 'YAUYOS', 15);
INSERT INTO `ubprovincia` VALUES (137, 'MAYNAS', 16);
INSERT INTO `ubprovincia` VALUES (138, 'ALTO AMAZONAS', 16);
INSERT INTO `ubprovincia` VALUES (139, 'LORETO', 16);
INSERT INTO `ubprovincia` VALUES (140, 'MARISCAL RAMON CASTILLA', 16);
INSERT INTO `ubprovincia` VALUES (141, 'REQUENA', 16);
INSERT INTO `ubprovincia` VALUES (142, 'UCAYALI', 16);
INSERT INTO `ubprovincia` VALUES (143, 'TAMBOPATA', 17);
INSERT INTO `ubprovincia` VALUES (144, 'MANU', 17);
INSERT INTO `ubprovincia` VALUES (145, 'TAHUAMANU', 17);
INSERT INTO `ubprovincia` VALUES (146, 'MARISCAL NIETO', 18);
INSERT INTO `ubprovincia` VALUES (147, 'GENERAL SANCHEZ CERRO', 18);
INSERT INTO `ubprovincia` VALUES (148, 'ILO', 18);
INSERT INTO `ubprovincia` VALUES (149, 'PASCO', 19);
INSERT INTO `ubprovincia` VALUES (150, 'DANIEL ALCIDES CARRION', 19);
INSERT INTO `ubprovincia` VALUES (151, 'OXAPAMPA', 19);
INSERT INTO `ubprovincia` VALUES (152, 'PIURA', 20);
INSERT INTO `ubprovincia` VALUES (153, 'AYABACA', 20);
INSERT INTO `ubprovincia` VALUES (154, 'HUANCABAMBA', 20);
INSERT INTO `ubprovincia` VALUES (155, 'MORROPON', 20);
INSERT INTO `ubprovincia` VALUES (156, 'PAITA', 20);
INSERT INTO `ubprovincia` VALUES (157, 'SULLANA', 20);
INSERT INTO `ubprovincia` VALUES (158, 'TALARA', 20);
INSERT INTO `ubprovincia` VALUES (159, 'SECHURA', 20);
INSERT INTO `ubprovincia` VALUES (160, 'PUNO', 21);
INSERT INTO `ubprovincia` VALUES (161, 'AZANGARO', 21);
INSERT INTO `ubprovincia` VALUES (162, 'CARABAYA', 21);
INSERT INTO `ubprovincia` VALUES (163, 'CHUCUITO', 21);
INSERT INTO `ubprovincia` VALUES (164, 'EL COLLAO', 21);
INSERT INTO `ubprovincia` VALUES (165, 'HUANCANE', 21);
INSERT INTO `ubprovincia` VALUES (166, 'LAMPA', 21);
INSERT INTO `ubprovincia` VALUES (167, 'MELGAR', 21);
INSERT INTO `ubprovincia` VALUES (168, 'MOHO', 21);
INSERT INTO `ubprovincia` VALUES (169, 'SAN ANTONIO DE PUTINA', 21);
INSERT INTO `ubprovincia` VALUES (170, 'SAN ROMAN', 21);
INSERT INTO `ubprovincia` VALUES (171, 'SANDIA', 21);
INSERT INTO `ubprovincia` VALUES (172, 'YUNGUYO', 21);
INSERT INTO `ubprovincia` VALUES (173, 'MOYOBAMBA', 22);
INSERT INTO `ubprovincia` VALUES (174, 'BELLAVISTA', 22);
INSERT INTO `ubprovincia` VALUES (175, 'EL DORADO', 22);
INSERT INTO `ubprovincia` VALUES (176, 'HUALLAGA', 22);
INSERT INTO `ubprovincia` VALUES (177, 'LAMAS', 22);
INSERT INTO `ubprovincia` VALUES (178, 'MARISCAL CACERES', 22);
INSERT INTO `ubprovincia` VALUES (179, 'PICOTA', 22);
INSERT INTO `ubprovincia` VALUES (180, 'RIOJA', 22);
INSERT INTO `ubprovincia` VALUES (181, 'SAN MARTIN', 22);
INSERT INTO `ubprovincia` VALUES (182, 'TOCACHE', 22);
INSERT INTO `ubprovincia` VALUES (183, 'TACNA', 23);
INSERT INTO `ubprovincia` VALUES (184, 'CANDARAVE', 23);
INSERT INTO `ubprovincia` VALUES (185, 'JORGE BASADRE', 23);
INSERT INTO `ubprovincia` VALUES (186, 'TARATA', 23);
INSERT INTO `ubprovincia` VALUES (187, 'TUMBES', 24);
INSERT INTO `ubprovincia` VALUES (188, 'CONTRALMIRANTE VILLAR', 24);
INSERT INTO `ubprovincia` VALUES (189, 'ZARUMILLA', 24);
INSERT INTO `ubprovincia` VALUES (190, 'CORONEL PORTILLO', 25);
INSERT INTO `ubprovincia` VALUES (191, 'ATALAYA', 25);
INSERT INTO `ubprovincia` VALUES (192, 'PADRE ABAD', 25);
INSERT INTO `ubprovincia` VALUES (193, 'PURUS', 25);

-- ----------------------------
-- Procedure structure for sp_actualizar_alumno
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_actualizar_alumno`;
delimiter ;;
CREATE PROCEDURE `sp_actualizar_alumno`(IN `_dni` VARCHAR(50), IN `_ape` VARCHAR(50), IN `_nom` VARCHAR(50), IN `_tel` VARCHAR(50), IN `dir` VARCHAR(50), IN `depar` INT, IN `prov` INT, IN `dis` INT, IN `sex` VARCHAR(50),IN `_correo` varchar(255), IN `_id` INT(50))
BEGIN
update alumno set dni=_dni,apellido=_ape,nombre=_nom,telefono=_tel,Direccion=dir,idDepa=depar,idProv=prov,idDist=dis,Sexo=sex,correo=_correo where id=_id;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_buscar_alumno
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_buscar_alumno`;
delimiter ;;
CREATE PROCEDURE `sp_buscar_alumno`(IN `nom` VARCHAR(50))
begin
SELECT * FROM alumno WHERE nombre LIKE CONCAT(   nom , '%');
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_eliminar_alumno
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminar_alumno`;
delimiter ;;
CREATE PROCEDURE `sp_eliminar_alumno`(IN `_id` INT)
BEGIN
DELETE FROM alumno WHERE id=_id;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_insertar_alumno
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_insertar_alumno`;
delimiter ;;
CREATE PROCEDURE `sp_insertar_alumno`(IN `_dni` VARCHAR(50), IN `ape` VARCHAR(50), IN `nom` VARCHAR(50), IN `tel` VARCHAR(50), IN `dir` VARCHAR(50), IN `depar` INT, IN `prov` INT, IN `dis` INT, IN `sex` VARCHAR(50)  , IN `_cor` VARCHAR(255) , IN `_cla` VARCHAR(100) , IN `_idr` int)
BEGIN
DECLARE total int;


SET total= (select COUNT(*) from alumno where dni=_dni);
IF(total=0)THEN
IF(_idr=1)THEN

	insert INTO admin values(null,_dni,ape,nom,tel,dir,depar,prov,dis,sex,_cor,_cla,_idr);
	SELECT "inserto" as "res";
	ELSEIF(_idr=2)THEN
	insert INTO docentes values(null,_dni,ape,nom,tel,dir,depar,prov,dis,sex,_cor,_cla,_idr);
	SELECT "inserto" as "res";
	ELSE
	insert INTO alumno values(null,_dni,ape,nom,tel,dir,depar,prov,dis,sex,_cor,_cla,_idr);
	SELECT "inserto" as "res";
  END IF;
ELSE 
	SELECT "existe" as "res";
	END IF;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_listar_alumno
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listar_alumno`;
delimiter ;;
CREATE PROCEDURE `sp_listar_alumno`()
BEGIN
SELECT dni,apellido,nombre,telefono,direccion,idDepa,idProv,idDist,Sexo from alumno;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_login
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_login`;
delimiter ;;
CREATE PROCEDURE `sp_login`(IN _correo varchar(255),IN _clave varchar(255))
BEGIN
DECLARE total_ad int;
DECLARE total_pro int;
DECLARE total_alu int;
SET total_ad=(select count(*) from admin where correo=_correo and clave=_clave);
SET total_pro=(select count(*) from docentes where correo=_correo and clave=_clave);
SET total_alu=(select count(*) from alumno where correo=_correo and clave=_clave);
IF(total_ad=0)THEN
			IF(total_pro=0)THEN
							IF(total_alu=0)THEN
							SELECT "Usuario no encontrado" as res;
							ELSE 
							select a.*,"enconntrado" as res from alumno a where a.correo=_correo and a.clave=_clave;
							END IF;
			ELSE 
			select d.*,"encontrado" as res from docentes d where d.correo=_correo and d.clave=_clave;
			END IF;
ELSE 
	select ad.*,"encontrado" as res from admin ad where ad.correo=_correo and ad.clave=_clave;
	END IF;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_pag_alumnos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_pag_alumnos`;
delimiter ;;
CREATE PROCEDURE `sp_pag_alumnos`(pag int)
begin
declare p1 int;
declare p2 int;
set p1=(pag*5)-5;
set p2=5;
SELECT * from alumno limit p1, p2;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_procedure_edit_id
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_procedure_edit_id`;
delimiter ;;
CREATE PROCEDURE `sp_procedure_edit_id`(`_id` INT)
BEGIN
	SELECT
		id,
		dni,
		apellido,
		nombre,
		telefono,
		Direccion,
		ud.idDepa AS 'region',
		up.idProv AS 'provincia',
		udi.idDist AS 'distrito',
		Sexo,
		correo
	FROM
		alumno a
		left JOIN ubdepartamento ud ON a.idDepa = ud.idDepa
		left JOIN ubprovincia up ON a.idProv = up.idProv
		left JOIN ubdistrito udi ON a.idDist = udi.idDist

	WHERE
		id = _id;
	
	END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_reset_cuenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_reset_cuenta`;
delimiter ;;
CREATE PROCEDURE `sp_reset_cuenta`(in _dni varchar(50))
begin
select dni, correo from alumno where dni=_dni;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_select_distrito
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_select_distrito`;
delimiter ;;
CREATE PROCEDURE `sp_select_distrito`(in _id int)
begin
select idDist,distrito from ubdistrito where idProv=_id;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_select_provincia
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_select_provincia`;
delimiter ;;
CREATE PROCEDURE `sp_select_provincia`(in id int)
begin
SELECT idProv,provincia from ubprovincia WHERE idDepa=id;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_select_region
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_select_region`;
delimiter ;;
CREATE PROCEDURE `sp_select_region`()
begin
SELECT idDepa,departamento from ubdepartamento;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_total_alumnos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_total_alumnos`;
delimiter ;;
CREATE PROCEDURE `sp_total_alumnos`()
begin
select count(*) as Total from alumno;
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
