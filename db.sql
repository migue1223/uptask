-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.19 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for uptask
CREATE DATABASE IF NOT EXISTS `uptask` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `uptask`;

-- Dumping structure for table uptask.proyectos
CREATE TABLE IF NOT EXISTS `proyectos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usuarioId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuarioId` (`usuarioId`),
  CONSTRAINT `proyectos_ibfk_1` FOREIGN KEY (`usuarioId`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Dumping data for table uptask.proyectos: ~4 rows (approximately)
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
INSERT INTO `proyectos` (`id`, `nombre`, `url`, `usuarioId`) VALUES
	(1, 'Web App Framesteel', 'web-app-framesteel-l7VVk3PLQ', 3),
	(2, 'Web App Four Colors', 'web-app-four-colors-WJhMKO92J', 3),
	(3, 'Web App Ecommerce Calzado', 'web-app-ecommerce-calzado-c_g8KkwNc', 3),
	(10, 'SEO', 'seo-thTkzzcmv', 3);
/*!40000 ALTER TABLE `proyectos` ENABLE KEYS */;

-- Dumping structure for table uptask.tareas
CREATE TABLE IF NOT EXISTS `tareas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tarea` text CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `estado` int DEFAULT NULL,
  `proyectoId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proyectoId` (`proyectoId`),
  CONSTRAINT `tareas_ibfk_1` FOREIGN KEY (`proyectoId`) REFERENCES `proyectos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Dumping data for table uptask.tareas: ~137 rows (approximately)
/*!40000 ALTER TABLE `tareas` DISABLE KEYS */;
INSERT INTO `tareas` (`id`, `tarea`, `estado`, `proyectoId`) VALUES
	(3, 'Subir el código inicial a la cuenta de Git', 1, 2),
	(5, 'Validar en POST de Usuarios y el PATCH', 0, 1),
	(6, 'Validar en POST de Jobs y el PATCH', 0, 1),
	(7, 'Validar en POST de Panels y el PATCH', 0, 1),
	(8, 'Validar en POST de Status y el PATCH', 0, 1),
	(9, 'Validar en POST de Tickets y el PATCH', 0, 1),
	(10, 'Cambiar el select de company y responsible de panels', 0, 1),
	(11, 'Cambiar el select de Add Tickets y el Assigned To', 0, 1),
	(12, 'Validar como poner el heigth para pantallas mas grandes de las tablas y los divs', 0, 1),
	(13, 'Mejorar la funcion de clickMenuLeft para quitar el condicional', 0, 1),
	(14, 'Mejorar la funcion de alertas en la Web App', 0, 1),
	(17, 'Corregir el problema que esta pasando al filtrar un solo panel', 0, 1),
	(19, 'Cambiar los select de los filter.php', 0, 1),
	(20, 'Validar el visor de imágenes', 0, 3),
	(21, 'Estudiar el serverSide Datatable', 0, 1),
	(24, 'Validar FreeNas y TrueNas', 0, 1),
	(25, 'Validar Editor de imagenes | ui.toast.com', 0, 1),
	(26, 'Como leer un email desde js y actualizar la bd.', 0, 1),
	(28, 'Reducir los tiempos de respuesta del servidor (TTFB) - https://web.dev/time-to-first-byte/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(29, 'Optimizar el cambio de diseño acumulativo - https://web.dev/optimize-cls/?utm_source=lighthouse&utm_medium=devtools#images-without-dimensions', 0, NULL),
	(30, 'Evite un tamaño de DOM excesivo - https://web.dev/dom-size/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(31, 'Los colores de fondo y primer plano no tienen una relación de contraste suficiente - https://web.dev/color-contrast/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(32, 'Los ID de ARIA no son únicos - https://web.dev/duplicate-id-aria/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(33, 'Los elementos de la imagen no tienen [alt]atributos - https://web.dev/image-alt/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(34, 'Los enlaces a destinos de origen cruzado no son seguros - https://web.dev/external-anchors-use-rel-noopener/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(35, 'Los errores del navegador se registraron en la consola - https://web.dev/errors-in-console/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(36, 'Permitir el rastreo de enlaces - https://developers.google.com/search/docs/advanced/guidelines/links-crawlable?visit_id=637558171846399053-869751239&rd=1', 0, NULL),
	(37, 'Optimizar el cambio de diseño acumulativo - https://web.dev/optimize-cls/?utm_source=lighthouse&utm_medium=devtools#images-without-dimensions', 0, NULL),
	(38, 'Evite un tamaño de DOM excesivo - https://web.dev/dom-size/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(39, 'Minimizar el trabajo del hilo principal - https://web.dev/mainthread-work-breakdown/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(40, 'Utilice Lighthouse para presupuestos de rendimiento - https://web.dev/use-lighthouse-for-performance-budgets/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(41, 'Los colores de fondo y primer plano no tienen una relación de contraste suficiente - https://web.dev/color-contrast/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(42, 'Los elementos de la imagen no tienen [alt]atributos - https://web.dev/image-alt/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(43, 'Los enlaces no tienen un nombre discernible - https://web.dev/link-name/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(44, 'Los enlaces a destinos de origen cruzado no son seguros - https://web.dev/external-anchors-use-rel-noopener/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(45, 'Sirve imágenes receptivas - https://web.dev/serve-responsive-images/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(46, 'Aplazar imágenes fuera de pantalla - https://web.dev/offscreen-images/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(47, 'Optimizar el cambio de diseño acumulativo - https://web.dev/optimize-cls/?utm_source=lighthouse&utm_medium=devtools#images-without-dimensions', 0, NULL),
	(48, 'Preconectarse a los orígenes requeridos - https://web.dev/uses-rel-preconnect/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(49, 'Los colores de fondo y primer plano no tienen una relación de contraste suficiente - https://web.dev/color-contrast/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(50, 'Los elementos de la imagen no tienen [alt]atributos - https://web.dev/image-alt/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(51, 'Los enlaces no tienen un nombre discernible - https://web.dev/link-name/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(52, 'Los enlaces a destinos de origen cruzado no son seguros - https://web.dev/external-anchors-use-rel-noopener/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(53, 'Imágenes de tamaño adecuado - https://web.dev/uses-responsive-images/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(54, 'Optimizar el cambio de diseño acumulativo - https://web.dev/optimize-cls/?utm_source=lighthouse&utm_medium=devtools#images-without-dimensions', 0, NULL),
	(55, 'Los colores de fondo y primer plano no tienen una relación de contraste suficiente - https://web.dev/color-contrast/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(56, 'Los elementos de la imagen no tienen [alt]atributos - https://web.dev/image-alt/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(57, 'Los enlaces no tienen un nombre discernible - https://web.dev/link-name/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(58, 'Los enlaces a destinos de origen cruzado no son seguros - https://web.dev/external-anchors-use-rel-noopener/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(59, 'Incluye bibliotecas de JavaScript de front-end con vulnerabilidades de seguridad conocidas - https://web.dev/no-vulnerable-libraries/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(60, 'Revisar temas de SEO', 0, NULL),
	(61, 'Página de Gracias.', 0, NULL),
	(62, 'Blog de Compurent', 0, NULL),
	(63, 'Problemas de usabilidad al pagar', 0, NULL),
	(64, 'Google Search Console - https://search.google.com/search-console/welcome', 0, NULL),
	(65, 'Sites Map html y xml - https://gist.github.com/jorgejaramillo/1e344013024d0e8f50874871bee2d2a3', 0, NULL),
	(66, 'Directrices para webmasters - https://developers.google.com/search/docs/advanced/guidelines/webmaster-guidelines?hl=es&visit_id=637559026904526994-3244524200&rd=1', 0, NULL),
	(67, 'Prueba de resultados enriquecidos - https://search.google.com/test/rich-results', 0, 10),
	(68, 'Schema Markup Generator (JSON-LD) - https://technicalseo.com/tools/schema-markup-generator/', 0, 10),
	(69, 'Clases de sitemap - https://gist.github.com/jorgejaramillo/1e344013024d0e8f50874871bee2d2a3', 0, 10),
	(70, 'Google search console - https://search.google.com/search-console/about', 0, 10),
	(71, 'Sites map generator - https://www.xml-sitemaps.com/', 0, 10),
	(72, 'Sirve imágenes en formatos de próxima generación - https://web.dev/uses-webp-images/', 0, 10),
	(73, 'Httpstatus - https://httpstatus.io/', 0, 10),
	(74, 'Url canonicas - https://www.youtube.com/watch?v=-6xqOQDVy-4', 0, 10),
	(75, 'Version AMP Google - https://www.youtube.com/watch?v=IV_FX4CuKVE', 0, 10),
	(76, 'AMP - https://amp.dev/', 0, 10),
	(77, 'Métricas esenciales para un sitio saludable - https://web.dev/vitals/', 0, 10),
	(78, 'Extraer CSS crítico - https://web.dev/extract-critical-css/', 0, 10),
	(79, 'Generador de CSS de ruta crítica - https://jonassebastianohlsson.com/criticalpathcssgenerator/', 0, 10),
	(80, 'Keyword tool - https://keywordtool.io/es', 0, 10),
	(81, 'Keyword https://answerthepublic.com/', 0, 10),
	(82, 'Keyword https://es.semrush.com/', 0, 10),
	(83, 'Keyword https://kwfinder.com/', 0, 10),
	(84, 'Keyword - https://soovle.com/', 0, 10),
	(85, 'Ejemplo de pasar HTML a AMP - https://github.com/jorgejaramillo/datos-estructurados - https://jorgejaramillo.com/amp-html-tutorial/', 0, 10),
	(86, 'Enlaces - https://linkminer.com/', 0, 10),
	(87, 'Google shopping - https://shopping.google.com/', 0, 10),
	(88, 'GENERADOR DE METATAGS PARA SEO Y SOCIAL MEDIA - http://tools.jorgejaramillo.com/', 0, 10),
	(89, 'Local guides - https://www.xataka.com/basics/google-local-guides-que-que-ventaja-tiene-sistema-valoraciones-google-maps', 0, 10),
	(90, 'Ejemplo de elementos necesarios para HTML - https://www.udemy.com/course/curso-seo/learn/lecture/7972128#questions', 0, 10),
	(91, 'Ejemplos y diferencias de SEO y SEM - https://www.udemy.com/course/curso-seo/learn/lecture/7552050#questions', 0, 10),
	(92, 'Tipos de dominios y extensiones - https://www.udemy.com/course/curso-seo/learn/lecture/7559318#questions', 0, 10),
	(93, 'Glosario SEO - https://www.udemy.com/course/curso-seo/learn/lecture/7192032#questions', 0, 10),
	(94, 'Desactivación de nuestro esquema de rastreo AJAX - https://developers.google.com/search/blog/2015/10/deprecating-our-ajax-crawling-scheme', 0, 10),
	(95, 'Número de palabras clave por página de destino - https://www.udemy.com/course/curso-seo/learn/lecture/7478960#questions', 0, 10),
	(96, 'Unificar URL duplicadas - https://developers.google.com/search/docs/advanced/crawling/consolidate-duplicate-urls?hl=es&visit_id=637560197224398198-1093000261&rd=1', 0, 10),
	(97, 'Comandos de búsqueda: "frontier", intitle:frontier, inurl:frontier, related:frontier, fronter inurl:com.co, carros *medellín, carros location:mx, site:frontier.com.co, site:frontier.com.co televisores, site:tools:frontier.com.co, site:frontier.com.co/televisores/, site:frontier.com.co/televisores/ español, site:frontier.com.co/ intitle:televisores, site:frontier.com.co/ inurl:televisores, site:frontier.com.co filetype:pdf, seo en udemy -udemy.com', 0, 10),
	(99, 'Optimizar el cambio de diseño acumulativo - https://web.dev/optimize-cls/?utm_source=lighthouse&utm_medium=devtools#images-without-dimensions', 0, NULL),
	(100, 'Eliminar JavaScript no utilizado - https://web.dev/unused-javascript/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(101, 'Elimina los recursos que bloquean el renderizado - https://web.dev/render-blocking-resources/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(102, 'Eliminar CSS no utilizado - https://web.dev/unused-css-rules/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(103, 'Sirva activos estáticos con una política de caché eficiente - https://web.dev/uses-long-cache-ttl/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(104, 'Evite encadenar solicitudes críticas - https://web.dev/critical-request-chains/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(105, 'Utilice Lighthouse para presupuestos de rendimiento - https://web.dev/use-lighthouse-for-performance-budgets/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(106, 'Pintura con contenido más grande - https://web.dev/lighthouse-largest-contentful-paint/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(107, '¿Las tareas largas de JavaScript están retrasando su tiempo para interactuar? - https://web.dev/long-tasks-devtools/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(108, 'Los colores de fondo y primer plano no tienen una relación de contraste suficiente - https://web.dev/color-contrast/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(109, 'Los elementos de título no están en orden descendente secuencial - https://web.dev/heading-order/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(110, '<html>el elemento no tiene un [lang]atributo - https://web.dev/html-has-lang/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(111, 'Los elementos de la imagen no tienen [alt]atributos - https://web.dev/image-alt/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(112, 'Los enlaces no tienen un nombre discernible - https://web.dev/link-name/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(113, 'Los enlaces a destinos de origen cruzado no son seguros - https://web.dev/external-anchors-use-rel-noopener/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(114, 'Incluye bibliotecas de JavaScript de front-end con vulnerabilidades de seguridad conocidas - https://web.dev/no-vulnerable-libraries/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(115, 'API heredadas del ciclo de vida que debe evitar - https://developers.google.com/web/updates/2018/07/page-lifecycle-api?utm_source=lighthouse&utm_medium=devtools#the-unload-event', 0, NULL),
	(116, 'Aplazar imágenes fuera de pantalla - https://web.dev/offscreen-images/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(117, 'Los meta tags más importantes en HTML - https://www.ionos.es/digitalguide/paginas-web/desarrollo-web/los-meta-tags-mas-importantes-y-su-funcion/', 0, 10),
	(118, 'Generador de Meta Tags - https://metatags.miarroba.com/', 0, 10),
	(119, 'Metatags Generator - https://www.metatags.org/seo-tips/why-use-meta-tags/metatags-generator/', 0, 10),
	(120, 'Prueba de optimizacion para moviles - https://search.google.com/test/mobile-friendly', 0, 10),
	(121, 'Los botones táctiles no tienen el tamaño adecuado - https://web.dev/tap-targets/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(122, 'Eliminar JavaScript no utilizado - https://web.dev/unused-javascript/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(123, 'Elimina los recursos que bloquean el renderizado - https://web.dev/render-blocking-resources/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(124, 'Eliminar CSS no utilizado - https://web.dev/unused-css-rules/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(125, 'Imágenes de tamaño adecuado - https://web.dev/uses-responsive-images/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(126, 'Asegúrese de que el texto permanezca visible durante la carga de la fuente web - https://web.dev/font-display/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(127, 'Optimizar el cambio de diseño acumulativo - https://web.dev/optimize-cls/?utm_source=lighthouse&utm_medium=devtools#images-without-dimensions', 0, NULL),
	(128, 'Sirva activos estáticos con una política de caché eficiente - https://web.dev/uses-long-cache-ttl/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(129, 'Evite encadenar solicitudes críticas - https://web.dev/critical-request-chains/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(130, 'Utilice Lighthouse para presupuestos de rendimiento - https://web.dev/use-lighthouse-for-performance-budgets/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(131, 'Pintura con contenido más grande - https://web.dev/lighthouse-largest-contentful-paint/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(132, '[aria-hidden="true"] los elementos contienen descendientes enfocables - https://web.dev/aria-hidden-focus/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(133, 'Los colores de fondo y primer plano no tienen una relación de contraste suficiente - https://web.dev/color-contrast/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(134, 'Los elementos de título no están en orden descendente secuencial - https://web.dev/heading-order/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(135, '<html>el elemento no tiene un [lang]atributo - https://web.dev/html-has-lang/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(136, 'Los elementos de la imagen no tienen [alt]atributos - https://web.dev/image-alt/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(137, 'Los enlaces a destinos de origen cruzado no son seguros - https://web.dev/external-anchors-use-rel-noopener/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(138, 'Muestra imágenes con una relación de aspecto incorrecta - https://web.dev/image-aspect-ratio/?utm_source=lighthouse&utm_medium=devtools', 0, NULL),
	(139, 'Permitir el rastreo de enlaces - https://developers.google.com/search/docs/advanced/guidelines/links-crawlable?visit_id=637563440931656804-4015802133&rd=1', 0, NULL),
	(140, '¿Que es rel=”noopener noreferrer” en WordPress? - https://comohacerunapagina.es/que-es-relnoopener-noreferrer-en-wordpress/', 0, 10),
	(141, 'Poner modulo de tickets en RFI', 0, 1),
	(145, 'Validar libreria de pdf', 0, 1),
	(146, 'cambiar mediante api los responsables de los tickets', 0, 1),
	(147, 'Validar notificaciones en el header menu', 0, 1),
	(148, 'Validar funcion de filtro de numeros en panels', 0, 1),
	(149, 'Poner resumen de RFI por users en home', 0, 1),
	(150, 'Cambiar la tabla de panels columna Open tickets', 0, 1);
/*!40000 ALTER TABLE `tareas` ENABLE KEYS */;

-- Dumping structure for table uptask.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `activo` int DEFAULT '0',
  `token` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `expiracion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuarios_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Dumping data for table uptask.usuarios: ~0 rows (approximately)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `email`, `password`, `activo`, `token`, `expiracion`) VALUES
	(3, 'jta1223@gmail.com', '$2a$10$2HtPZnqSUd32Mp5HbE.bLOtVTlRLrEuPmIKkXykeBem9yd821Csg.', 1, NULL, NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
