-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-03-2022 a las 06:33:57
-- Versión del servidor: 8.0.28-0ubuntu0.20.04.3
-- Versión de PHP: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `manuel_feria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclos`
--

CREATE TABLE `ciclos` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `familia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ciclos`
--

INSERT INTO `ciclos` (`id`, `created_at`, `updated_at`, `familia`, `nombre`, `color`) VALUES
(1, NULL, NULL, 'Comercio y Marketing', 'Actividades Comerciales', 'yellow'),
(2, NULL, NULL, 'Comercio y Marketing', 'Comercio Internacional', 'yellow'),
(3, NULL, NULL, 'Comercio y Marketing', 'Gestión de ventas  y espacios comerciales', 'yellow'),
(4, NULL, NULL, 'Comercio y Marketing', 'Transporte y logística', 'yellow'),
(5, NULL, NULL, 'Comercio y Marketing', 'Marketing y Publicidad', 'yellow'),
(6, NULL, NULL, 'Imagen y Sonio', 'Video Disk-jokey y sonido', 'green'),
(7, NULL, NULL, 'Imagen y Sonio', 'Animación 3D juegos y Entorno interactivos', 'green'),
(8, NULL, NULL, 'Imagen y Sonio', 'Iluminación, Captación y Tratamiento de imagen', 'green'),
(9, NULL, NULL, 'Imagen y Sonio', 'Producción de Audiovisuales y Espectáculos', 'green'),
(10, NULL, NULL, 'Imagen y Sonio', 'Realización de Proyectos Audiovisuales y Espectáculos', 'green'),
(11, NULL, NULL, 'Informática y Comunicaciones', 'Sistemas Microinformáticos y en Red', 'blue'),
(12, NULL, NULL, 'Informática y Comunicaciones', 'Administración se Sistemas Informáticos en Red', 'blue'),
(13, NULL, NULL, 'Informática y Comunicaciones', 'Desarrollo de Aplicaciones Multiplataforma', 'blue'),
(14, NULL, NULL, 'Informática y Comunicaciones', 'Desarrollo de Aplicaciones Web', 'blue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `curso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aula` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciclo` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `empresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(4096) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ponente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `horario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duracion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enlace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `persona_contacto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `created_at`, `updated_at`, `empresa`, `descripcion`, `ponente`, `horario`, `duracion`, `enlace`, `logo`, `email`, `persona_contacto`) VALUES
(5, '2021-03-04 11:55:48', '2021-03-15 14:52:46', 'DeuSensfasdfasdfasdf', 'Soluciones tecnológicas que optimizan el proceso de comercialización y potencian el valor de marca de nuestros clientes.', 'Álvaro Antoñanzas', '11:20', '30', 'NO HAY', 'IyS_DeuSens.png', '', ''),
(6, '2021-03-04 11:57:16', '2021-03-04 11:57:16', 'POLYGONAL MIND', 'Polygonal Mind es un estudio creativo que imagina, diseña y desarrolla entornos, avatares y juegos que contienen un gran valor artÍstico', 'Ángel Daniel García Aranda', '10:00', '30', 'NO HAY', 'IyS_PolygonalMind.png', '', ''),
(7, '2021-03-04 11:58:31', '2021-03-04 11:58:31', 'IMASCONO', 'Imascono es un estudio de tecnologías creativas que permite potenciar la estrategia empresarial a través de productos y soluciones de vanguardia, siendo especialistas en Realidad Aumentada, Virtual y Mixta. Movidos por la emoción, diseñan experiencias que conecten la tecnología con las emociones humanas, destacando su metodología de trabajo propia: Imaginación Aplicada. Entre sus clientes destacan empresas internacionales como Disney, Telefónica, Huawei, Adobe, Siemens o Coca-Cola', 'Pedro Lozano (Cofundador)', '12:40', '30', 'NO HAY', 'IyS_Imascono (1).png', '', ''),
(8, '2021-03-04 12:30:56', '2021-03-04 12:30:56', 'CPI FP Los Enlaces', 'Estudio de efectos visuales que ofrece trabajos de alta calidad desde hace más de 20 años.\r\n+50 series de tv \r\n+25 películas \r\n+500 spots', 'Laura Barge', '13:15', '30', 'NO HAY', 'IyS_Entropy.png', '', ''),
(10, '2021-03-12 17:30:30', '2021-03-12 17:30:30', 'Datos y  comunicaciones de mauel', 'El Centro Público Integrado de Formación Profesional Los Enlaces comenzó a funcionar como instituto en el curso 1985-86. Su puesta en marcha responde a la preocupación de la Administración por expandir este tipo de enseñanzas en Zaragoza y coincide con la apertura de otros centros de Formación Profesional en la ciudad.', 'Manuel Romero', '10:10', '120', 'http://xxx1234', 'logo8.png', '', ''),
(11, '2021-03-13 13:24:42', '2021-03-13 13:24:42', 'Asseco - Valorista', 'Valorista es un mayorista de informática que proporciona soluciones informáticas completas, ofreciendo marcas, productos y servicios TIC de primera calidad, con la garantía de las mejores marcas; siempre comprometidos con los objetivos de nuestros clientes/as, ofrecemos un servicio de distribución informática profesional y de confianza. Perteneciente a un grupo líder internacional, que avala nuestra trayectoria, ofrecemos productos y servicios más allá de la distribución tradicional, ofreciendo también adaptabilidad a los nuevos modelos de negocio y una gran capacidad de ejecución de proyectos con toda la profesionalidad y garantías necesarias.\r\nLa cultura del servicio y la atención al cliente son las razones de ser de nuestra compañía', 'María Coloma Almiñana y Pedro L. Larrosa y', '13:25', '30', '1', 'INF_Valorista.jpg', '', ''),
(12, '2021-03-13 13:30:33', '2021-03-13 13:30:33', 'Cámara de comercio', 'Programa de Empleo Joven para menores de 30 años, exclusivo de las Cámaras de Comercio', 'Ana Muñoz', '09:00', '30', '1', 'INF_cociz.jpg', '', ''),
(13, '2021-03-13 13:36:27', '2021-03-13 13:36:27', 'Cluster Idia', 'IDiA es un cluster orientado a la innovación \r\n\r\nLa Asociación IDiA -Investigación, Desarrollo e Innovación en Aragón- es un cluster horizontal integrado por empresas e instituciones con presencia en Aragón. El cluster concibe la innovación en procesos, productos, organización y mercados como una vía fundamental para el crecimiento de sus socios, impulsando la realización de proyectos colaborativos en diversas áreas, con especial atención a la aplicación de las TIC en sus iniciativas.\r\n\r\nIDiA es una asociación sin ánimo de lucro nacida en 2004, con razón social en Aragón, y centrada en el impulso y desarrollo colaborativo de las Tecnologías de la Información y las Comunicaciones entre sus empresas y entidades socias y la sociedad aragonesa en su globalidad.', 'Inés Domínguez', '13:00', '30', '1', 'INF_clusterIdia.png', '', ''),
(14, '2021-03-13 13:40:20', '2021-03-13 13:40:20', 'Deloitte', 'DxD Applications & IT Solutions, S.L.U., a Deloitte bussiness. Consultoría Tecnológica: Desarrollo de Software y Aplicaciones a medida.', 'Macarena Elía y David Figueroa', '09:30', '30', '1', 'INF_Deloitte.jpg', '', ''),
(15, '2021-03-13 13:43:04', '2021-03-13 13:43:04', 'DXC Technology', 'DXC…what else?', 'Arantxa Yugueros', '08:30', '30', '1', 'INF_dxc_logo_hz_blk_rgb-XXSML.jpg', '', ''),
(16, '2021-03-13 13:46:44', '2021-03-13 13:46:44', 'Everis Soluciones Tecnológicas', 'Everis Soluciones Tecnológicas', 'Ponente1', '18:30', '30', '1', 'INF_everis.png', '', ''),
(17, '2021-03-13 13:49:52', '2021-03-13 13:49:52', 'FEUZ', 'Fundación Empresa Universidad', 'Ponente1', '13:50', '30', '1', 'inf_logo-feuz.png', '', ''),
(18, '2021-03-13 13:52:23', '2021-03-13 13:52:23', 'Frogtek', 'El Grupo Frogtek es una empresa social con ánimo de lucro cuyo propósito es ayudar a los tenderos de países emergentes a escapar de la pobreza y competir en mejores condiciones. Lo hacemos, principal aunque no únicamente, ofreciendo una aplicación Android, Tiendatek, que el tendero puede usar para gestionar y optimizar su negocio ¡y conseguimos que aumenten sus ventas un 15% de media tras el primer año de uso! Rentabilizamos el proyecto a través de la venta de estudios de mercado basados en los datos de ventas y compras de los tenderos que almacenamos y procesamos en nuestros servidores en Google y en Amazon y que vendemos directamente a empresas fabricantes y distribuidoras a través de nuestro producto Frogtek Analytics.\r\nMás de 2500 tiendas en México ya se benefician del uso de Tiendatek y en 2020 más de 15 empresas líderes globales fabricantes y distribuidores han confiado en los datos que proporcionan para mejorar su operación y su estrategia. El Grupo Frogtek es una empresa rentable que está aumentando su facturación en más de un 30% anual.\r\nNuestra empresa es global y trabaja de forma distribuida. Las operaciones de venta, formación y soporte a tenderos están en México pero la creación de tecnología se ha hecho hasta la fecha en España. Para más información puedes ver esta entrevista que, aunque es ya un poco antigua, explica bastante bien el propósito y nuestro modelo de negocio.', 'Guillermo Caudevilla', '12:30', '30', '1', 'INF_Frogtek.png', '', ''),
(19, '2021-03-13 13:58:04', '2021-03-13 13:58:04', 'Grupo Carreras', 'Carreras Grupo Logístico, fundado en 1933, es uno de los líderes logísticos de referencia en Europa.\r\nEn la actualidad ofrece todos los servicios propios de dicho sector: transporte nacional e internacional, multimodal, almacenaje, distribución, manipulación, co-packing, paletería, y consultoría logística.', 'Patricia Martinez y Beatriz Salinas', '09:55', '30', '1', 'INF_Carreras.png', '', ''),
(20, '2021-03-13 14:00:03', '2021-03-13 14:00:03', 'Grupo Piquer', 'Empresa dedicada a la Formación Profesional para el Empleo de personas desempleadas y trabajadores ocupados, diferentes programas de índole social, inserción sociolaboral, apoyo en repaso de asignaturas Primaria, Eso y Bachillerato, así como  universitarias, acceso a grados medios y superiores, preparación de pruebas libres. Oposiciones.', 'Teresa Díaz', '09:55', '30', '1', 'INF_Grupo Piquer COLOR.png', 'alopeztabuenca@gmail.com', '1'),
(21, '2021-03-13 14:02:27', '2021-03-16 08:32:49', 'Grupo Integra', 'Somos una consultora tecnológica, formada por diferentes divisiones y marcas referentes, que crea, a través de la especialización en áreas tecnológicas y estratégicas, un entorno de valor para nuestros clientes diferencial en el sector. Estamos volcados en la transformación digital de las empresas, con presencia en todo el país. Hemos ganado relevancia en mercados nacionales y hemos consolidado nuestro liderazgo y diferenciación con proyectos transversales e innovadoras soluciones tecnológicas. Contamos con las máximas certificaciones técnicas e importantes alianzas que refuerzan nuestro compromiso con la innovación permanente.', 'Pilar Solanas, Alexi Blanco y Reyes Gistas', '16:25', '30', '1', 'INF_logo Integra.gif', '', ''),
(22, '2021-03-13 14:06:08', '2021-03-13 14:06:08', 'Hiberus Tecnología', 'Somos una consultora de negocios digitales HIPERESPECIALIZADA; cada una de las áreas de desarrollo está especializada en la línea de negocio específica, donde lo que nos diferencia es que damos un servicio 360º. Trabajamos juntamente con nuestros clientes uniendo los servicios de agencia digital y consultora tecnológica, diseñando experiencias digitales únicas con una tecnología escalabre y optimizado a resultados. En Hiberus ya somos más de 1100 personas y contamos con más de 18 filiales en toda España. Tenemos talento, un ambiente dinámico y muchas ganas por seguir creciendo!', 'Natalia Iranzo Casado', '12:00', '30', '1', 'INF_logo hiberus.jpg', '', ''),
(23, '2021-03-13 14:09:12', '2021-03-13 14:09:12', 'Inycom', 'Inycom cuenta con más de 39 años de experiencia ofreciendo soluciones y servicios tecnológicos de valor añadido. La innovación y la calidad en la gestión son nuestros valores diferenciales, pero además creemos en las personas como generadoras de valor. Nuestro #InycomTeam crece día a día con la incorporación de nuevos profesionales que aportan talento a nuestro equipo. Queremos seguir creciendo y sumando talento\r\nEn Inycom disponemos de planes de carrera para diversos perfiles de Grado Superior. Si estudias un Grado Superior de Desarrollo, un Grado Medio de Sistemas Microinformáticos y Redes o un Grado Superior de Administración de Sistemas Informáticos en Red seguro que podemos ofrecerte un proyecto en el que desarrollarte profesionalmente.  ¿Te animas a unirte a nuestro proyecto?', 'Ponente1', '15:30', '30', '1', 'INF_image002.jpg', '', ''),
(24, '2021-03-13 14:15:23', '2021-03-13 14:15:23', 'KPMG', 'KPMG Consultoría tecnológica - El trabajo de un consultor tecnológico en KPMG', 'Daniel Jaqués y Pilar Blanque', '18:00', '30', '1', 'INF_KPMG.jpg', '', ''),
(25, '2021-03-13 14:17:17', '2021-03-13 14:17:17', 'Movicoders', 'Movicoders - Expertos en gestión de datos', 'Eduardo Toledo', '08:30', '30', '1', 'INF_LOGO MOVICODERS V999.png', '', ''),
(26, '2021-03-13 14:19:47', '2021-03-13 14:19:47', 'Nodriza Tech', 'Somos una technological corporate. Creamos y lanzamos proyectos propios tecnológicos desde cero. Desarrollamos modelos digitales de alto retorno para que esas startups consigan liderar el mercado.La relación con la startup es estrecha pero siempre única: adaptamos nuestros recursos a las necesidades de cada proyecto.\r\n\r\nCrear empresas ante la adversidad.', 'Juan Freire', '17:20', '30', '1', 'INF_NODRIZA_TEch.png', '', ''),
(28, '2021-03-13 14:23:24', '2021-03-13 14:24:00', 'Oesía', 'Grupo Oesía, multinacional 100% española y 100% privada, cuenta con una trayectoria de más de 40 años en Ingeniería y Tecnologías de la Información en España y Latinoamérica. La compañía es uno de los grandes impulsores globales de la innovación, a través de importantes proyectos desarrollados en 27 países.  \r\n\r\nEn el campo de las Tecnologías de la Información, Grupo Oesía es líder en Transformación digital de empresas y Administraciones Públicas, Ciberseguridad, Big data e Inteligencia de negocio, e-health, Smart Cities y Smart Destinations y Transparencia, entre otros campos. \r\n\r\nEn Ingeniería electrónica aplicada a la Aeronáutica, Seguridad y Defensa, a través de su filial Tecnobit, Grupo Oesía lidera el sector de la aviónica en el mercado español. Las unidades producidas por la compañía se encuentran instaladas en uno de cada tres nuevos aviones de transporte militar construidos en el mundo, así como en el sector civil. Además, diseña y desarrolla servicios y equipos en la vanguardia en Optrónica, Displays de navegación aérea, Comunicaciones tácticas, Comunicaciones seguras, Sistemas de simulación y Espacio.\r\n\r\nLa sede central de la compañía está en Madrid y además cuenta con 14 oficinas corporativas distribuidas por toda España y en Latinoamérica (Colombia y Perú), a través de las cuales nuestros profesionales pueden desarrollar una carrera internacional.', 'Alberto David Gil', '00:00', '0', '1', 'INF_oesia_color.png', '', ''),
(29, '2021-03-13 14:27:53', '2021-03-13 14:27:53', 'OneGoLive Services', 'Golive es una consultora experta en soluciones tecnológicas que surge en 2008 en Zaragoza, con el objetivo de ayudar a medianas y grandes empresas en la optimización de sus procesos de transformación digital, asesorando y proporcionando un servicio de calidad, responsable y cercano que cubran sus necesidades de negocio.', 'Sonia Herce Dubon y Lorena Esteban Puertolas', '16:00', '30', '1', 'INF_Golive_FullColor_RGB.png', '', ''),
(30, '2021-03-13 14:30:49', '2021-03-13 14:30:49', 'System One Noc', 'SONOC es un proveedor de soluciones de telecomunicaciones para operadores. Desde hace más de 15 años, desarrollamos aplicaciones para reducir la complejidad de la administración y gestión de millones de transacciones de telecomunicaciones (llamadas de voz, SMS, datos, transacciones económicas, etc.). Nuestra misión es aprovechar la constante evolución de la tecnología para mejorar la eficiencia, automatizar procesos y ayudar a nuestros clientes a evolucionar y adaptarse a una industria en constante cambio.', 'David Escartín y Noel Mateo', '11:40', '30', '1', 'INF_SONOC transparente.png', '', ''),
(31, '2021-03-13 14:33:42', '2021-03-13 14:33:42', 'Tecnara', 'Tecnara', 'Jaime González Pina', '17:00', '30', '1', 'INF_tecnara.jpg', '', ''),
(32, '2021-03-13 14:36:24', '2021-03-13 14:36:24', 'Teltronic', 'El Centro Público Integrado de Formación Profesional Los Enlaces comenzó a funcionar como instituto en el curso 1985-86. Su puesta en marcha responde a la preocupación de la Administración por expandir este tipo de enseñanzas en Zaragoza y coincide con la apertura de otros centros de Formación Profesional en la ciudad.', 'Román Abadías Pelacho', '10:20', '30', '1', 'INF_logo-teltronic-color.png', '', ''),
(33, '2021-03-13 14:38:10', '2021-03-15 20:54:17', 'UST', 'UST es una compañía global de soluciones de transformación digital. Durante más de 20 años, UST ha trabajado codo con codo con las mejores empresas del mundo para lograr un impacto real a través de la transformación. Impulsado por la tecnología, inspirado por las personas y dirigido por un propósito, UST se asocia con sus clientes desde el diseño hasta la operación. Con una profunda experiencia en el dominio y una filosofía preparada para el futuro, UST integra innovación y agilidad en las organizaciones de sus clientes. Con más de 25.000 empleados en 25 países, UST se construye para hacer realidad las necesidades de nuestros clientes.\r\nEstamos orgullosos/as de los valores que nos inspiran para alentar la innovación de todos, para defender la diversidad y la inclusión y para colocar a las personas en el centro de todo lo que hacemos. \r\nTodo lo que hacemos es posible gracias a un profundo compromiso de colaboración y una poderosa red de expertos inspiradores.\r\nPara UST nuestro motor es nuestro Talento.\r\nPodrás trabajar con tecnologías punteras y contarás con formación y un plan de carrera que te permita desarrollarte a nivel profesional.\r\nCertificaciones como Top Employer y Fundación Másfamilia reconocen a UST como un empleador de referencia.\r\nPor eso, únete a nosotros y se parte de un equipo donde la ambición, el ingenio y el trabajo bien hecho, crean un impacto ilimitado.', 'David Casarejos (Talent Development Team) , Isabel Chantre (trabaja en el equipo de Zaragoza) y Diana Catalá (Talent Development Team)', '10:20', '30', '1', 'INF_ust_logo.png', '', ''),
(34, '2021-03-15 08:02:44', '2021-03-15 08:02:44', 'Decathlon', 'Decathlon nace en 1976 en Englos (Francia). Somos un gran equipo movilizado por un sentido único: ser útil a las personas y al planeta. Estamos convencidos de que el deporte es una fuente de placer y bienestar. Es por ello que nuestra misión es hacer accesible, de manera sostenible, el placer y los beneficios de la práctica del deporte al mayor número de personas. \r\nEn todos los países en los que estamos presentes compartimos una cultura de empresa fuerte y única, reforzada por nuestros 4 valores: vitalidad, responsabilidad, generosidad y autenticidad.\r\nMantenemos una firme apuesta por la innovación en todas las fases de nuestra cadena de valor: desde la investigación y el desarrollo hasta la venta, pasando por la concepción, el diseño, la producción y la logística, y por crecer de forma responsable con el medioambiente.\r\n\r\nSomos diseñadores, fabricantes y distribuidores de nuestros propios productos, lo que nos permite revisar de forma continua tanto nuestra política de precios como la calidad de toda nuestra oferta con el objetivo de ofrecer a nuestros usuarios la mejor relación tecnicidad – precio.\r\n\r\nA través de nuestras marcas propias y gracias a nuestra red logística, nuestros servicios y a nuestros equipos de apasionados deportistas al servicio de los usuarios, ofrecemos acceso a más de 150 disciplinas deportivas.\r\n\r\nNuestros productos, disponibles exclusivamente en Decathlon, están destinados a todos los apasionados del deporte, desde el principiante hasta el usuario deportista más experimentado.\r\n\r\nHoy, más de 90.000 colaboradores de más de 80 nacionalidades trabajan cada día para hacer accesible el deporte al mayor número de personas.', 'MATÍAS CIKLIC', '09:25', '30', '1', 'Com_Decathlon.png', '', ''),
(35, '2021-03-15 08:04:34', '2021-03-15 08:04:34', 'TCG Factory', 'TCG Factory es una de las principales distribuidoras de España de juegos de mesa y accesorios para juegos, merchandising y juegos de cartas coleccionables, entre otros artículos Geek. También es una de las principales editoriales de juegos de mesa del país.', 'Rubén Asensio Díaz, director de comunicación de TCG Factory', '10:20', '30', '1', 'COM_TCG Factory - Logos pastilla 2 líneas NEGRO.png', '', ''),
(36, '2021-03-15 08:06:18', '2021-03-15 08:06:18', 'Grupo Sesé', 'La historia del Grupo Sesé se forja en los últimos 55 años, en los que podemos distinguir 2 etapas diferentes: \r\nDurante la primera, que duró 25 años, su fundador, Alfonso Sesé Tena, comenzó la actividad en Urrea de Gaén, y se dedicó a la compraventa y transporte de productos agrícolas.  \r\nLa segunda etapa comenzó 30 años después, momento en que sus hijos, Ana y Alfonso, crearon una sociedad limitada partiendo de los logros de su padre con un objetivo claro: hacer crecer la actividad de transporte y diversificar los servicios hacia las soluciones logísticas. \r\nLa diversificación se acompañó de la internacionalización, que arrancó en 2008 primero en Europa y posteriormente en América, África y Asia; al mismo tiempo, la adquisición de diversas empresas nos permitió crear una gama completa de servicios y soluciones como operador logístico global. \r\nTodo este proceso se ha desarrollado siempre con el apoyo de sectores como el del automóvil, la industria y el retail, así como gracias a la ayuda de grandes clientes multinacionales en todo el mundo. Nuestro éxito reside en nuestro compromiso constante con el liderazgo, la innovación y el enfoque al cliente.', 'Montserrat Montero Palacios', '10:50', '30', '1', 'COM GRUPO SESÉ.png', '', ''),
(37, '2021-03-15 08:07:50', '2021-03-15 08:07:50', 'Generali', 'EMPRESA DE SEGUROS', 'GONZALO AGUAS DEL VAL Y MARTA BERNABEU PASCUAL', '11:15', '30', '1', 'Com_Logo_Generali.jpg', '', ''),
(38, '2021-03-15 08:11:59', '2021-03-15 08:11:59', 'Marcotran', 'EMPRESA DE TRANSPORTE NACIONAL E INTERNACIONAL DE MERCANCÍAS', 'RUTH GARCÍA GRASA RESPONSABLE DE MARKETING Y COMUNICACIÓN', '12:30', '30', '1', 'COM MARCOTRAN.png', '', ''),
(39, '2021-03-15 08:13:14', '2021-03-15 08:13:14', 'Carrefour', 'Carrefour es una cadena multinacional de distribución de origen francés. Es considerado el primer grupo europeo, a poca distancia en ingresos netos de la compañía alemana Schwarz Gruppe, y el tercero del sector a nivel mundial.', 'ALBERTO SANZ RESPONSABLE DEL DEPARTAMENTO DE RECURSOS HUMANOS', '12:55', '30', '1', 'COM CARREFOUR.png.crdownload.png', '', ''),
(40, '2021-03-15 09:11:09', '2021-03-15 09:11:09', 'ecomputer', 'Somos una empresa dedicada a la comercialización y distribución de productos y servicios de las tecnologías de la información y comunicación (TIC), ofrecemos una solución global a empresas, profesionales y usuarios particulares a través de todos el territorio nacional.', 'Patricia Serrano', '11:40', '30', '1', 'INF_ Ecomputer.png', '', ''),
(41, '2021-03-15 09:18:15', '2021-03-15 09:18:15', 'Nologin consulting', 'Nologin Consulting es una compañía aragonesa que lleva desde el año 2000 colaborando con otras empresas de todo el mundo para guardar, gestionar, organizar, proteger y mantener su más preciado activo: la información.\r\nAcompañamos a nuestros clientes en su transformación digital con una propuesta de valor completa, que incluye desde el asesoramiento hasta los servicios gestionados, pasando por el desarrollo y el despliegue de soluciones estructurales innovadoras.', 'Jorge Marco', '11:40', '30', '1', 'INF_NOLOGIN-LogoBlanco.jpg', '', ''),
(42, '2021-03-15 14:58:05', '2021-03-15 14:58:05', 'Actualidad Media', 'ACTUALIDAD MEDIA inicia en 2006 su actividad en el sector de la comunicación audiovisual y, más concretamente, en el área de la producción televisiva. Posteriormente ha ampliado sus trabajos a los servicios de comunicación –tanto tradicional como multimedia- para empresas e instituciones de cualquier ámbito geográfico y a la edición de medios de comunicación.', 'Vanesa García  (directora de Contenidos del Grupo Aragón Digital)', '10:00', '30', 'NO HAY', 'IyS_ActualidadMedia.jpg', '', ''),
(43, '2021-03-15 15:01:01', '2021-03-15 15:01:01', 'Entropy Studio', 'Constantemente nos preguntan qué hacemos realmente en Entropy.\r\nHacemos pájaros, nubes, elefantes que bailan, peces que nadan y forman logotipos.\r\nCreamos escenarios grandiosos y los destruimos, convertimos a monos en astronautas, hacemos que el mar acabe en una gran cascada al infinito, galaxias enteras que flotan en universos inventados.\r\nSabemos hacer blancos con rollo y halos misteriosos.\r\nLos duendes de la inspiración mágicos habitan entre nosotros y estallan en miles de pixeles luminosos cada día.\r\nArreglamos imperfecciones en las uñas, en la cara, en el pelo, en el cuerpo. Multiplicamos gente, creamos nueva gente que interactúa en las escenas de espacios extendidos más allá de las posibilidades de los escenarios.\r\nTrasladamos en el tiempo las acciones.\r\nIncrementamos el valor de las producciones.', 'Laura Barge', '13:15', '30', 'NO HAY', 'IyS_Entropy.png', '', ''),
(44, '2021-03-15 15:40:06', '2021-03-15 15:40:06', 'Edificio CIEM - Informática y Comunicaciones', 'CIEM, el lugar donde las cosas ocurren...\r\nCIEM Zaragoza es una incubadora del Ayuntamiento de Zaragoza y gestionada por Grupo Init, pionera en España en acelerar startups con impacto en los 17 Objetivos de Desarrollo Sostenible de la ONU', 'Hoaria Guerrouad y Romy Piñeyroa', '12:00', '30', 'NO HAY', 'logo_ciem.jpg', '', ''),
(45, '2021-03-15 15:41:06', '2021-03-15 15:41:06', 'Edificio CIEM - Comercio y Marketing', 'CIEM, el lugar donde las cosas ocurren...\r\nCIEM Zaragoza es una incubadora del Ayuntamiento de Zaragoza y gestionada por Grupo Init, pionera en España en acelerar startups con impacto en los 17 Objetivos de Desarrollo Sostenible de la ONU', 'Hoaria Guerrouad y Romy Piñeyroa', '12:00', '30', 'NO HAY', 'logo_ciem.jpg', '', ''),
(46, '2021-03-15 15:41:55', '2021-03-15 15:41:55', 'Edificio CIEM - Imagen y Sonido', 'Edificio CIEM - Informática y Telecomunicaciones', 'Hoaria Guerrouad y Romy Piñeyroa', '12:00', '30', 'NO HAY', 'logo_ciem.jpg', '', ''),
(47, '2021-03-16 07:40:13', '2021-03-16 07:40:13', 'Generali', 'Empresa de seguros', 'Gonzalo Aguas del Val y Marta Bernabeu Pascual', '10:10', '120', '.', 'Generali.png', '', ''),
(48, '2021-03-16 07:44:31', '2021-03-16 07:44:31', 'Decathlon', 'Decathlon nace en 1976 en Englos (Francia). Somos un gran equipo movilizado por un sentido único: ser útil a las personas y al planeta. Estamos convencidos de que el deporte es una fuente de placer y bienestar. Es por ello que nuestra misión es hacer accesible, de manera sostenible, el placer y los beneficios de la práctica del deporte al mayor número de personas. \r\nEn todos los países en los que estamos presentes compartimos una cultura de empresa fuerte y única, reforzada por nuestros 4 valores: vitalidad, responsabilidad, generosidad y autenticidad.\r\nMantenemos una firme apuesta por la innovación en todas las fases de nuestra cadena de valor: desde la investigación y el desarrollo hasta la venta, pasando por la concepción, el diseño, la producción y la logística, y por crecer de forma responsable con el medioambiente.\r\n\r\nSomos diseñadores, fabricantes y distribuidores de nuestros propios productos, lo que nos permite revisar de forma continua tanto nuestra política de precios como la calidad de toda nuestra oferta con el objetivo de ofrecer a nuestros usuarios la mejor relación tecnicidad – precio.\r\n\r\nA través de nuestras marcas propias y gracias a nuestra red logística, nuestros servicios y a nuestros equipos de apasionados deportistas al servicio de los usuarios, ofrecemos acceso a más de 150 disciplinas deportivas.\r\n\r\nNuestros productos, disponibles exclusivamente en Decathlon, están destinados a todos los apasionados del deporte, desde el principiante hasta el usuario deportista más experimentado.\r\n\r\nHoy, más de 90.000 colaboradores de más de 80 nacionalidades trabajan cada día para hacer accesible el deporte al mayor número de personas.', 'Matías Ciklic', '10:10', '120', '.', 'decathlon.jpg', '', ''),
(49, '2021-03-16 08:11:05', '2021-03-16 08:11:05', 'Marcotran', 'Empresa de transporte nacional e internacional de mercancías.', 'Ruth García Grasa', '10:10', '120', '.', 'marcotran.jpg', '', ''),
(50, '2021-03-16 08:11:38', '2021-03-16 08:11:38', 'Marcotran', 'Empresa de transporte nacional e internacional de mercancías.', 'Ruth García Grasa', '10:10', '120', '.', 'marcotran.jpg', '', ''),
(51, '2021-03-16 08:13:38', '2021-03-16 08:13:38', 'TCG Factory', 'TCG Factory es una de las principales distribuidoras de España de juegos de mesa y accesorios para juegos, merchandising y juegos de cartas coleccionables, entre otros artículos Geek. También es una de las principales editoriales de juegos de mesa del país.', 'Rubén Asensio Díaz', '10:10', '120', '.', 'TCG Factory.png', '', ''),
(52, '2021-03-16 08:14:29', '2021-03-16 08:14:29', 'TCG Factory', 'TCG Factory es una de las principales distribuidoras de España de juegos de mesa y accesorios para juegos, merchandising y juegos de cartas coleccionables, entre otros artículos Geek. También es una de las principales editoriales de juegos de mesa del país.', 'Rubén Asensio Díaz', '10:10', '120', '.', 'TCG Factory.png', '', ''),
(53, '2021-03-16 14:28:18', '2021-03-16 14:28:18', 'Datos y comunicaciones', 'El Centro Público Integrado de Formación Profesional Los Enlaces comenzó a funcionar como instituto en el curso 1985-86. Su puesta en marcha responde a la preocupación de la Administración por expandir este tipo de enseñanzas en Zaragoza y coincide con la apertura de otros centros de Formación Profesional en la ciudad.', 'Manuel Romero', '10:10', '120', 'http://xxx1234', 'a.jpeg', '', ''),
(54, '2021-03-23 03:30:32', '2021-03-23 03:30:32', 'CPI FP Los Enlaces 2021', 'El Centro Público Integrado de Formación Profesional Los Enlaces comenzó a funcionar como instituto en el curso 1985-86. Su puesta en marcha responde a la preocupación de la Administración por expandir este tipo de enseñanzas en Zaragoza y coincide con la apertura de otros centros de Formación Profesional en la ciudad.', 'Alumudena Hidalgo', '10:10', '120', 'http://manuelromero.com', 'logotipo (3).png', 'alopeztabuenca@gmail.com', 'Alumudena Hidalgo 2'),
(55, '2021-03-23 03:42:56', '2021-03-23 06:12:01', 'Nueva empreas', 'El Centro Público Integrado de Formación Profesional Los Enlaces comenzó a funcionar como instituto en el curso 1985-86. Su puesta en marcha responde a la preocupación de la Administración por expandir este tipo de enseñanzas en Zaragoza y coincide con la apertura de otros centros de Formación Profesional en la ciudad.', 'zzzz', '10:10', '120', 'http://manuelromero.com', 'logotipo (3).png', 'alopeztabuenca@gmail.com', 'Alumudena Hidalgo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_ciclos`
--

CREATE TABLE `empresa_ciclos` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `empresa` bigint UNSIGNED NOT NULL,
  `ciclo` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresa_ciclos`
--

INSERT INTO `empresa_ciclos` (`id`, `created_at`, `updated_at`, `empresa`, `ciclo`) VALUES
(13, '2021-03-04 11:54:41', '2021-03-04 11:54:41', 43, 7),
(14, '2021-03-04 11:55:49', '2021-03-04 11:55:49', 5, 7),
(15, '2021-03-04 11:57:17', '2021-03-04 11:57:17', 6, 7),
(16, '2021-03-04 11:58:32', '2021-03-04 11:58:32', 7, 7),
(22, '2021-03-12 17:30:30', '2021-03-12 17:30:30', 10, 1),
(23, '2021-03-12 17:30:30', '2021-03-12 17:30:30', 10, 2),
(24, '2021-03-12 17:30:30', '2021-03-12 17:30:30', 10, 3),
(25, '2021-03-13 13:24:43', '2021-03-13 13:24:43', 11, 11),
(26, '2021-03-13 13:24:43', '2021-03-13 13:24:43', 11, 12),
(27, '2021-03-13 13:30:34', '2021-03-13 13:30:34', 12, 1),
(28, '2021-03-13 13:30:34', '2021-03-13 13:30:34', 12, 2),
(29, '2021-03-13 13:30:34', '2021-03-13 13:30:34', 12, 3),
(30, '2021-03-13 13:30:34', '2021-03-13 13:30:34', 12, 4),
(31, '2021-03-13 13:30:34', '2021-03-13 13:30:34', 12, 5),
(32, '2021-03-13 13:30:34', '2021-03-13 13:30:34', 12, 13),
(33, '2021-03-13 13:30:34', '2021-03-13 13:30:34', 12, 14),
(34, '2021-03-13 13:36:27', '2021-03-13 13:36:27', 13, 13),
(35, '2021-03-13 13:36:27', '2021-03-13 13:36:27', 13, 14),
(36, '2021-03-13 13:40:21', '2021-03-13 13:40:21', 14, 13),
(37, '2021-03-13 13:40:21', '2021-03-13 13:40:21', 14, 14),
(38, '2021-03-13 13:43:05', '2021-03-13 13:43:05', 15, 14),
(39, '2021-03-13 13:46:44', '2021-03-13 13:46:44', 16, 13),
(40, '2021-03-13 13:46:45', '2021-03-13 13:46:45', 16, 14),
(41, '2021-03-13 13:49:53', '2021-03-13 13:49:53', 17, 1),
(42, '2021-03-13 13:49:53', '2021-03-13 13:49:53', 17, 2),
(43, '2021-03-13 13:49:53', '2021-03-13 13:49:53', 17, 3),
(44, '2021-03-13 13:49:53', '2021-03-13 13:49:53', 17, 4),
(45, '2021-03-13 13:49:53', '2021-03-13 13:49:53', 17, 5),
(46, '2021-03-13 13:49:53', '2021-03-13 13:49:53', 17, 13),
(47, '2021-03-13 13:49:53', '2021-03-13 13:49:53', 17, 14),
(48, '2021-03-13 13:52:23', '2021-03-13 13:52:23', 18, 13),
(49, '2021-03-13 13:52:23', '2021-03-13 13:52:23', 18, 14),
(50, '2021-03-13 13:58:04', '2021-03-13 13:58:04', 19, 11),
(51, '2021-03-13 13:58:04', '2021-03-13 13:58:04', 19, 12),
(52, '2021-03-13 14:00:04', '2021-03-13 14:00:04', 20, 3),
(53, '2021-03-13 14:00:04', '2021-03-13 14:00:04', 20, 5),
(54, '2021-03-13 14:00:04', '2021-03-13 14:00:04', 20, 13),
(55, '2021-03-13 14:00:04', '2021-03-13 14:00:04', 20, 14),
(56, '2021-03-13 14:02:27', '2021-03-13 14:02:27', 21, 13),
(57, '2021-03-13 14:02:27', '2021-03-13 14:02:27', 21, 14),
(58, '2021-03-13 14:06:08', '2021-03-13 14:06:08', 22, 13),
(59, '2021-03-13 14:06:08', '2021-03-13 14:06:08', 22, 14),
(60, '2021-03-13 14:09:12', '2021-03-13 14:09:12', 23, 11),
(61, '2021-03-13 14:09:12', '2021-03-13 14:09:12', 23, 13),
(62, '2021-03-13 14:09:12', '2021-03-13 14:09:12', 23, 14),
(63, '2021-03-13 14:15:23', '2021-03-13 14:15:23', 24, 13),
(64, '2021-03-13 14:15:23', '2021-03-13 14:15:23', 24, 14),
(65, '2021-03-13 14:17:17', '2021-03-13 14:17:17', 25, 13),
(66, '2021-03-13 14:19:48', '2021-03-13 14:19:48', 26, 11),
(67, '2021-03-13 14:19:48', '2021-03-13 14:19:48', 26, 13),
(68, '2021-03-13 14:19:48', '2021-03-13 14:19:48', 26, 14),
(71, '2021-03-13 14:23:24', '2021-03-13 14:23:24', 28, 11),
(72, '2021-03-13 14:23:25', '2021-03-13 14:23:25', 28, 12),
(73, '2021-03-13 14:23:25', '2021-03-13 14:23:25', 28, 13),
(74, '2021-03-13 14:23:25', '2021-03-13 14:23:25', 28, 14),
(75, '2021-03-13 14:27:53', '2021-03-13 14:27:53', 29, 13),
(76, '2021-03-13 14:27:53', '2021-03-13 14:27:53', 29, 14),
(77, '2021-03-13 14:30:49', '2021-03-13 14:30:49', 30, 14),
(78, '2021-03-13 14:33:42', '2021-03-13 14:33:42', 31, 11),
(79, '2021-03-13 14:33:42', '2021-03-13 14:33:42', 31, 13),
(80, '2021-03-13 14:33:43', '2021-03-13 14:33:43', 31, 14),
(81, '2021-03-13 14:36:24', '2021-03-13 14:36:24', 32, 11),
(82, '2021-03-13 14:36:24', '2021-03-13 14:36:24', 32, 12),
(83, '2021-03-13 14:38:10', '2021-03-13 14:38:10', 33, 13),
(84, '2021-03-13 14:38:10', '2021-03-13 14:38:10', 33, 14),
(85, '2021-03-15 08:02:45', '2021-03-15 08:02:45', 34, 1),
(86, '2021-03-15 08:02:45', '2021-03-15 08:02:45', 34, 4),
(87, '2021-03-15 08:04:35', '2021-03-15 08:04:35', 35, 2),
(88, '2021-03-15 08:04:35', '2021-03-15 08:04:35', 35, 4),
(89, '2021-03-15 08:04:35', '2021-03-15 08:04:35', 35, 5),
(90, '2021-03-15 08:06:19', '2021-03-15 08:06:19', 36, 2),
(91, '2021-03-15 08:06:19', '2021-03-15 08:06:19', 36, 4),
(92, '2021-03-15 08:07:50', '2021-03-15 08:07:50', 37, 1),
(93, '2021-03-15 08:07:51', '2021-03-15 08:07:51', 37, 3),
(94, '2021-03-15 08:11:59', '2021-03-15 08:11:59', 38, 2),
(95, '2021-03-15 08:11:59', '2021-03-15 08:11:59', 38, 4),
(96, '2021-03-15 08:13:14', '2021-03-15 08:13:14', 39, 1),
(97, '2021-03-15 08:13:14', '2021-03-15 08:13:14', 39, 3),
(98, '2021-03-15 09:11:09', '2021-03-15 09:11:09', 40, 11),
(99, '2021-03-15 09:11:09', '2021-03-15 09:11:09', 40, 12),
(100, '2021-03-15 09:18:15', '2021-03-15 09:18:15', 41, 13),
(101, '2021-03-15 14:58:06', '2021-03-15 14:58:06', 42, 8),
(102, '2021-03-15 14:58:06', '2021-03-15 14:58:06', 42, 10),
(103, '2021-03-15 15:01:01', '2021-03-15 15:01:01', 43, 7),
(104, '2021-03-15 15:40:07', '2021-03-15 15:40:07', 44, 11),
(105, '2021-03-15 15:40:07', '2021-03-15 15:40:07', 44, 12),
(106, '2021-03-15 15:40:07', '2021-03-15 15:40:07', 44, 13),
(107, '2021-03-15 15:40:07', '2021-03-15 15:40:07', 44, 14),
(108, '2021-03-15 15:41:06', '2021-03-15 15:41:06', 45, 1),
(109, '2021-03-15 15:41:06', '2021-03-15 15:41:06', 45, 2),
(110, '2021-03-15 15:41:06', '2021-03-15 15:41:06', 45, 3),
(111, '2021-03-15 15:41:06', '2021-03-15 15:41:06', 45, 4),
(112, '2021-03-15 15:41:06', '2021-03-15 15:41:06', 45, 5),
(113, '2021-03-15 15:41:55', '2021-03-15 15:41:55', 46, 6),
(114, '2021-03-15 15:41:55', '2021-03-15 15:41:55', 46, 7),
(115, '2021-03-15 15:41:55', '2021-03-15 15:41:55', 46, 8),
(116, '2021-03-15 15:41:55', '2021-03-15 15:41:55', 46, 9),
(117, '2021-03-15 15:41:55', '2021-03-15 15:41:55', 46, 10),
(118, '2021-03-16 07:40:13', '2021-03-16 07:40:13', 37, 2),
(119, '2021-03-16 07:44:32', '2021-03-16 07:44:32', 34, 3),
(120, '2021-03-16 07:44:32', '2021-03-16 07:44:32', 34, 4),
(121, '2021-03-16 08:11:38', '2021-03-16 08:11:38', 38, 1),
(122, '2021-03-16 08:11:38', '2021-03-16 08:11:38', 38, 2),
(123, '2021-03-16 08:11:38', '2021-03-16 08:11:38', 38, 3),
(124, '2021-03-16 08:11:38', '2021-03-16 08:11:38', 38, 4),
(125, '2021-03-16 08:11:38', '2021-03-16 08:11:38', 38, 5),
(126, '2021-03-16 08:14:29', '2021-03-16 08:14:29', 35, 1),
(127, '2021-03-16 08:14:29', '2021-03-16 08:14:29', 35, 2),
(128, '2021-03-16 08:14:29', '2021-03-16 08:14:29', 35, 3),
(129, '2021-03-16 08:14:29', '2021-03-16 08:14:29', 35, 4),
(130, '2021-03-16 08:14:29', '2021-03-16 08:14:29', 35, 5),
(131, '2021-03-16 08:14:29', '2021-03-16 08:14:29', 35, 6),
(132, '2021-03-16 08:14:30', '2021-03-16 08:14:30', 35, 7),
(133, '2021-03-16 08:14:30', '2021-03-16 08:14:30', 35, 8),
(134, '2021-03-16 08:14:30', '2021-03-16 08:14:30', 35, 9),
(135, '2021-03-16 08:14:30', '2021-03-16 08:14:30', 35, 10),
(136, '2021-03-23 03:42:56', '2021-03-23 03:42:56', 55, 1),
(137, '2021-03-23 03:42:56', '2021-03-23 03:42:56', 55, 6),
(138, '2021-03-23 03:42:56', '2021-03-23 03:42:56', 55, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_02_23_195630_create_empresas_table', 1),
(6, '2021_02_24_080907_create_ciclos_table', 1),
(7, '2021_02_28_160542_empresas_ciclos', 1),
(8, '2022_03_22_190353_create_cursos_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin    Feria Empleo', 'feriaempleo@cpilosenlaces.com', NULL, '$2y$10$Nu4kScZWXFoDEaBsyHY8puyWSPQHoUBeheEoPSuyXZQ0az00K.96G', '2iBZ8625uqUonpTU9uxq9pZR1IejWQXVyvPil8YaVcvuhkz2qEfkaXnE3GGh', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciclos`
--
ALTER TABLE `ciclos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cursos_ciclo_foreign` (`ciclo`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa_ciclos`
--
ALTER TABLE `empresa_ciclos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empresa_ciclos_empresa_foreign` (`empresa`),
  ADD KEY `empresa_ciclos_ciclo_foreign` (`ciclo`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciclos`
--
ALTER TABLE `ciclos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `empresa_ciclos`
--
ALTER TABLE `empresa_ciclos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ciclo_foreign` FOREIGN KEY (`ciclo`) REFERENCES `ciclos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empresa_ciclos`
--
ALTER TABLE `empresa_ciclos`
  ADD CONSTRAINT `empresa_ciclos_ciclo_foreign` FOREIGN KEY (`ciclo`) REFERENCES `ciclos` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `empresa_ciclos_empresa_foreign` FOREIGN KEY (`empresa`) REFERENCES `empresas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
