-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 01-08-2010 a las 19:05:36
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `trabajo_de_curso`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `banners`
-- 

CREATE TABLE `banners` (
  `id` int(11) NOT NULL auto_increment,
  `banner` varchar(100) default NULL,
  `url` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `banners`
-- 

INSERT INTO `banners` VALUES (1, 'hombre.jpg', 'http://www.tipicochileno.cl');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `clic`
-- 

CREATE TABLE `clic` (
  `id` int(11) NOT NULL auto_increment,
  `id_banner` int(11) default NULL,
  `fecha` date default NULL,
  `hora` time default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Volcar la base de datos para la tabla `clic`
-- 

INSERT INTO `clic` VALUES (1, 1, '2010-06-16', '21:46:30');
INSERT INTO `clic` VALUES (2, 1, '2010-06-16', '21:47:33');
INSERT INTO `clic` VALUES (3, 1, '2010-06-16', '21:47:57');
INSERT INTO `clic` VALUES (4, 1, '2010-06-16', '21:49:02');
INSERT INTO `clic` VALUES (5, 1, '2010-06-16', '21:50:31');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `contactos`
-- 

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(200) default NULL,
  `telefono` varchar(30) default NULL,
  `correo` varchar(100) default NULL,
  `mensaje` text,
  `fecha` date default NULL,
  `hora` time default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `contactos`
-- 

INSERT INTO `contactos` VALUES (1, 'rodrigo lópez', '12345667', 'hola@hola.vcl', 'mi mensaje', '2010-05-02', '17:26:10');
INSERT INTO `contactos` VALUES (2, 'juan castro', '08987', 'hola@hola.vcl', 'mi perro me quiere', '2010-05-02', '17:27:08');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `contenidos`
-- 

CREATE TABLE `contenidos` (
  `id` int(11) NOT NULL auto_increment,
  `contenido` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Volcar la base de datos para la tabla `contenidos`
-- 

INSERT INTO `contenidos` VALUES (1, '<strong>hola soy el primer contenido</strong>');
INSERT INTO `contenidos` VALUES (2, '<font color=''red''>soy el segundo contenido</font>');
INSERT INTO `contenidos` VALUES (3, '<font color=''blue''>hola yo soy el tercer contenido</font>');
INSERT INTO `contenidos` VALUES (4, '<font color=''green''>hola soy verde y soy el cuarto contenido</font>\r\n<br>\r\n<b>mas texto</b>');
INSERT INTO `contenidos` VALUES (5, '<font color=''orange''>soy el final, represento el contenido cinco</font>\r\n<hr>');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `empleados`
-- 

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL auto_increment,
  `nombre` varchar(250) default NULL,
  `telefono` varchar(50) default NULL,
  `correo` varchar(100) default NULL,
  PRIMARY KEY  (`id_empleado`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Volcar la base de datos para la tabla `empleados`
-- 

INSERT INTO `empleados` VALUES (3, 'RafaelDux', '1234567', 'rafa@yahoo.com');
INSERT INTO `empleados` VALUES (4, 'Mariela Villanueva', '7654321', 'mary@suweb.com');
INSERT INTO `empleados` VALUES (6, 'Manuel andrade', '34567644', 'manolo@hotmail.com');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `libro_de_visitas`
-- 

CREATE TABLE `libro_de_visitas` (
  `id` int(11) NOT NULL auto_increment,
  `nombre_persona` varchar(150) character set utf8 collate utf8_spanish_ci NOT NULL,
  `texto` text character set utf8 collate utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `libro_de_visitas`
-- 

INSERT INTO `libro_de_visitas` VALUES (1, 'César Cancino', 'Hola este es mi texto que tiene eñes y acentos, por ejemplo usando la palabra ñandú', '2010-08-01', '16:42:14');
INSERT INTO `libro_de_visitas` VALUES (2, 'Juan Martínez', 'Hola mi mamá me mima con eñe y tildes', '2010-08-01', '16:42:14');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `metrica`
-- 

CREATE TABLE `metrica` (
  `id` int(11) NOT NULL auto_increment,
  `id_banner` int(11) default NULL,
  `cantidad` int(11) default NULL,
  `fecha` date default NULL,
  `hora` time default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Volcar la base de datos para la tabla `metrica`
-- 

INSERT INTO `metrica` VALUES (1, 2, 2, '2010-06-06', '15:19:35');
INSERT INTO `metrica` VALUES (2, 1, 4, '2010-06-06', '15:20:00');
INSERT INTO `metrica` VALUES (3, 7, 3, '2010-06-06', '15:23:54');
INSERT INTO `metrica` VALUES (4, 3, 2, '2010-06-06', '15:24:07');
INSERT INTO `metrica` VALUES (5, 5, 4, '2010-06-06', '15:25:07');
INSERT INTO `metrica` VALUES (6, 6, 2, '2010-06-06', '15:25:36');
INSERT INTO `metrica` VALUES (7, 4, 2, '2010-06-06', '15:33:14');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `noticias`
-- 

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL auto_increment,
  `titulo` varchar(200) default NULL,
  `detalle` text,
  `autor` varchar(100) default NULL,
  `fecha` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- Volcar la base de datos para la tabla `noticias`
-- 

INSERT INTO `noticias` VALUES (1, 'VideoTutorial 1 del Curso de PHP y MySQL', 'Este es el VideoTutorial 1 del curso de PHP y MySQL. Comenzamos viendo los conceptos fundamentales del trabajo con PHP.\r\nHacemos un análisis sobre lo que significa el trabajo con la tecnología cliente - servidor. Veremos cómo crear un servidor local en nuestro PC, usando APPSERV o XAMP. Haremos una revisión sobre lo que nos instala cada uno, que básicamente es Apache, PHP, MySQL y PHPMyAdmin...\r\nRevisaremos dónde y cómo debemos ir creando nuestros archivos PHP, y cómo poder verlos en el navegador, a través de la URL localhost ...Finalmente crearemos un archivo de prueba con el tradicional hola mundo. ', 'César Cancino', '2010-04-30');
INSERT INTO `noticias` VALUES (2, 'VideoTutorial 2 del Curso de PHP y MySQL', '\r\n\r\nEste es el VideoTutorial 2 del curso de PHP y MySQL.\r\nEn esta ocasión veremos el trabajo con variables, hablaremos sobre las register global, que hoy en día en todos los proveedores de hosting PHP están en OFF... Todo lo anterior lo pondremos en práctica en un ejemplo de trabajo con un formulario HTML.\r\nAnalizaremos las maneras de recuperar los datos desde un formulario, tanto con el método GET como con POST, usando los arrays asociativos $_POST y $_GET, también conoceremos el uso de $_REQUEST. ', 'César Cancino', '2010-04-30');
INSERT INTO `noticias` VALUES (3, 'VideoTutorial 3 del Curso de PHP y MySQL', '\r\n\r\nEste es el VideoTutorial 3 del curso de PHP y MySQL. Acá veremos el trabajo con estructuras condicionales, usando las sentencias IF ELSE. También aprenderemos a trabajar la estructura SWITCH CASE, que nos permite generar controles de flujo...\r\nDesarrollaremos una aplicación en donde recogeremos datos desde un formulario, y los procesaremos del lado del servidor usando PHP. ', 'César Cancino', '2010-04-30');
INSERT INTO `noticias` VALUES (4, 'VideoTutorial 4 del Curso de PHP y MySQL', 'Este es el VideoTutorial 4 del curso de PHP y MySQL.\r\nVeremos el trabajo con estructuras cíclicas dentro del lenguaje PHP...Analizaremos las ventajas de usar ciclos en nuestros Script, veremos qué es un ciclo, la sintaxis para utilizarlo.\r\nRevisaremos cómo trabajar con el ciclo FOR y WHILE, y veremos un ejemplo práctico, en donde crearemos un combo box dinámico... ', 'César Cancino', '2010-04-30');
INSERT INTO `noticias` VALUES (5, 'VideoTutorial 5 del Curso de PHP y MySQL', 'Este es el VideoTutorial 5 del curso de PHP y MySQL. En esta ocasión, hablaremos sobre los arreglos, arrays o vectores....\r\nAprenderemos a declararlos, a trabajar con su sintaxis, con dos formas de trabajarlos.\r\nVeremos cómo imprimir en pantalla los valores de un arreglo, estudiaremos cómo recorrerlos usando el ciclo for, mediante el uso de las funciones sizeof() y count()...\r\nFinalmente, desarrollaremos un ejemplo práctico en donde generaremos un combo box dinámico, el cual tomará datos desde un arreglo. ', 'César Cancino', '2010-04-30');
INSERT INTO `noticias` VALUES (6, 'VideoTutorial 6 del Curso de PHP y MySQL', 'Este es en Videotutorial 6 del curso de PHP y MySQL.\r\nAcá comenzamos un bloque dedicado al trabajo con bases de datos..\r\nEmpezaremos revisando qué es una base de dato relacional, qué se entiende por Integridad Referencial, con una tabla llama artículos que nos servirá de ejemplo.\r\nAprenderemos a crear una tabla usando MySQL, y veremos algunos comandos como create database, create table, use database, show....\r\nAnalizaremos los tipos de datos con los que podemos trabajar, y revisaremos el trabajo con claves o llaves primarias. Esto lo aplicaremos a un campo de tipo int a través del atributo auto_increment.\r\nTodo en 60 minutos... ', 'César Cancino', '2010-04-30');
INSERT INTO `noticias` VALUES (7, 'VideoTutorial 7 del Curso de PHP y MySQL', 'Este es el Videotutorial 7 del curso de PHP y MySQL.Acá revisaremos cómo trabajar con código Mysql.\r\nAprenderemos a buscar datos en las tablas, usando el comando SELECT, veremos cómo usar el comodín asterisco ( * ), y también veremos como hacer select para buscar solo los campos que necesitamos.\r\nAprenderemos a contar los registros de una tabla usando COUNT(*).\r\nAnalizaremos la manera de insertar registros en las tablas usando INSERT INTO, usando el comando VALUES. Veremos las distintas formas que tenemos a disposición para poblar nuestras tablas.\r\nRevisaremos cómo generar filtros en nuestras consultas, usando el comando WHERE, y aprenderemos a borrar registros de una tabla usando UPDATE.\r\nBorraremos registros usando el comando DELETE FROM, conectándolo con el comando WHERE.\r\nFinalmente, aprenderemos a hacer consultas multitabla, tanto de la manera tradicional, como usando el comando JOIN. ', 'César Cancino', '2010-04-30');
INSERT INTO `noticias` VALUES (8, 'VideoTutorial 8 del Curso de PHP y MySQL', 'Este es el VideoTutorial 8 del curso de PHP y MySQL. Acá veremos cómo conectarnos desde PHP a MySQL usando la función mysql_connect, veremos los parámetros que recibe, y la manera de utilizarla en forma local y remota. Veremos cómo crear una librería externa en donde guardaremos nuestros datos de conexión, y revisaremos algunas formas de llamarlas desde cualquier parte de nuestro código, usando las funciones include y require_once ...\r\nTrabajaremos con un ejemplo práctico en donde llamaremos los registros de una tabla MySQL, y los mostraremos en nuestra web..Veremos una forma de resolver el problema de los tildes, usando una función llamada chao_tilde.\r\nAprenderemos a llamar los datos usando la función mysql_fetch_array que nos convierte los registros en un arreglo, y los iremos llamando asociando sus índices a los nombres de los campos de la tabla que estamos llamando. Finalmente, crearemos un vistoso ejemplo para mostrar de manera mas elegante nuestros registros en la web. Todo en 60 minutos de video. ', 'César Cancino', '2010-04-30');
INSERT INTO `noticias` VALUES (9, 'VideoTutorial 9 del Curso de PHP y MySQL', 'Este es el VideoTutorial 9 del curso de PHP y MySQL.\r\nEn el Video 8 vimos cómo conectarnos a la base de datos desde PHP usando la función mysql_connect, pues ahora utilizaremos esa misma funcionalidad. La temática de este VideoTutorial será el desarrollo de un sistema de noticias con PHP y MySQL, en el cual los usuarios de nuestra web nos podrán dejar sus comentarios. Para ello, crearemos dos tablas MySQL, nos conectaremos a la base de datos, revisaremos cómo obtener los registros tanto de las noticias como de los comentarios.\r\nAprenderemos a trabajar con campos de formulario de tipo hidden, lo que nos permitirá pasar valores ocultos y recuperarlos con arrays asociativos desde PHP.\r\nUna hora y 20 minutos en donde crearemos la aplicación completa, los archivos e imágenes irán en descarga directa junto con el video. ', 'César Cancino', '2010-04-30');
INSERT INTO `noticias` VALUES (10, 'VideoTutorial 10 del Curso de PHP y MySQL', 'Este es el VideoTutorial 10 del Curso de PHP y MySQL. Acá veremos el Trabajo con una web totalmente dinámica, la cual la generaremos desde cero.\r\nAnalizaremos el concepto mediante la creación de un sencillo script el cual carga los contenidos, menús e imágenes desde una base de datos.\r\nConstruiremos el archivo usando divs los cuales los maquetaremos con estilos CSS.\r\nCrearemos 3 tablas a las que haremos referencia mediante un valor rescatado vía GET, de esta forma, todos nuestros contenidos se cargarán en un solo archivo, e irán cambiando de acuerdo a ese valor que recibimos por cabecero. Todo en 50 minutos. ', 'César Cancino', '2010-04-30');
INSERT INTO `noticias` VALUES (11, 'VideoTutorial 11 del Curso de PHP y MySQL', 'Este es el VideoTutorial 11 del Curso de PHP y MySQL.\r\nAcá trabajaremos con un sistema de Registro de Usuarios. Para ello aprenderemos a utilizar variables de session, con la sintaxis $_SESSION["variable"].\r\nAprenderemos a usar de manera correcta la función session_start(), para evitar que nos aparezcan Warning en pantalla. Veremos cómo generar desde cero la aplicación, desde la construcción del formulario, hasta las validaciones que tenemos que realizar para saber si los datos que se ingresan son correctos.\r\nAprenderemos a mostrar errores en pantalla mezclando PHP con Javascript, de una manera lógica y funcional.\r\nAprenderemos a restringir contenidos usando sessiones, y analizaremos la manera correcta de aplicar este concepto. Finalmente, revisaremos cómo destruir las sessiones, usando las funciones session_unregister() y session_destroy() para poder desloquear al usuario de manera correcta, adaptándonos a la nueva sintaxis que nos ofrece PHP.\r\nA propósito de lo mismo, veremos otra forma de ir a buscar los datos a la base de datos, usando las funciones mysql_select_db() y mysql_query.\r\nTodo en 60 minutos. ', 'César Cancino', '2010-04-30');
INSERT INTO `noticias` VALUES (12, 'VideoTutorial 12 del Curso de PHP y MySQL', 'Este es el VideoTutorial 12 del curso de PHP y MySQL.\r\nAcá veremos la forma de hacer Upload de Archivos al servidor.\r\nPrimero crearemos un formulario HTML al cual le asignaremos el parámetro enctype=multipart/form-data, el que enviaremos mediante el método POST. Luego crearemos un archivo PHP con el cual procesaremos los datos enviados desde el formulario.\r\nVeremos el array asociativo $_FILE y sus métodos name, tmp_name, type y size. Aprenderemos a hacer valicaciones según el tamaño y la extensión del archivo que estamos subiendo. Luego aprenderemos a hacer el Upload del archivo mediante la función copy(). Esto lo trabajaremos con la función str_replace() con la cual modificaremos el nombre que le daremos al archivo en el servidor.\r\nFinalmente crearemos un registro en la base de datos asociado al archivo que hemos subido, y veremos una forma sencilla para llamar a nuestro archivo.\r\nTodo en una hora y 11 minutos. ', 'César Cancino', '2010-04-30');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuarios`
-- 

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL auto_increment,
  `nombre` varchar(150) default NULL,
  `correo` varchar(100) default NULL,
  `user` varchar(50) default NULL,
  `pass` varchar(100) default NULL,
  PRIMARY KEY  (`id_usuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Volcar la base de datos para la tabla `usuarios`
-- 

INSERT INTO `usuarios` VALUES (1, 'César Cancino', 'hola@hola.cl', 'cesar', '123456');
INSERT INTO `usuarios` VALUES (2, 'Juan Catalán', 'juan@hola.cl', 'juan', '123456');
INSERT INTO `usuarios` VALUES (3, 'Pedro Lemebel', 'pedro@hola.cl', 'pedro', '123456');
INSERT INTO `usuarios` VALUES (4, 'Rodrigo López', 'roro@hola.cl', 'roro', '123456');
INSERT INTO `usuarios` VALUES (5, 'Rafael de España', 'rafa@hola.cl', 'rafa', '123456');
INSERT INTO `usuarios` VALUES (6, 'José Sánchez', 'pepe@hola.cl', 'pepe', '123456');
INSERT INTO `usuarios` VALUES (7, 'Manuel andrade', 'manolo@hotmail.com', 'manolo', '123456');
INSERT INTO `usuarios` VALUES (8, 'cristian herrera', 'cris@gmail.com', 'cris', '123456');
