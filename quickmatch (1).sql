-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-09-2022 a las 16:27:23
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `quickmatch`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add cartas', 7, 'add_cartas'),
(26, 'Can change cartas', 7, 'change_cartas'),
(27, 'Can delete cartas', 7, 'delete_cartas'),
(28, 'Can view cartas', 7, 'view_cartas'),
(29, 'Can add cartas_a', 7, 'add_cartas_a'),
(30, 'Can change cartas_a', 7, 'change_cartas_a'),
(31, 'Can delete cartas_a', 7, 'delete_cartas_a'),
(32, 'Can view cartas_a', 7, 'view_cartas_a'),
(33, 'Can add cartas_b', 8, 'add_cartas_b'),
(34, 'Can change cartas_b', 8, 'change_cartas_b'),
(35, 'Can delete cartas_b', 8, 'delete_cartas_b'),
(36, 'Can view cartas_b', 8, 'view_cartas_b'),
(37, 'Can add cartas_c', 9, 'add_cartas_c'),
(38, 'Can change cartas_c', 9, 'change_cartas_c'),
(39, 'Can delete cartas_c', 9, 'delete_cartas_c'),
(40, 'Can view cartas_c', 9, 'view_cartas_c'),
(41, 'Can add cartas_d', 10, 'add_cartas_d'),
(42, 'Can change cartas_d', 10, 'change_cartas_d'),
(43, 'Can delete cartas_d', 10, 'delete_cartas_d'),
(44, 'Can view cartas_d', 10, 'view_cartas_d'),
(45, 'Can add jugador', 11, 'add_jugador'),
(46, 'Can change jugador', 11, 'change_jugador'),
(47, 'Can delete jugador', 11, 'delete_jugador'),
(48, 'Can view jugador', 11, 'view_jugador'),
(49, 'Can add partida', 12, 'add_partida'),
(50, 'Can change partida', 12, 'change_partida'),
(51, 'Can delete partida', 12, 'delete_partida'),
(52, 'Can view partida', 12, 'view_partida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$IjiyHctAqX4AD0eHYcOMbr$L/gEL9SlBWYdHvWl36wCEE3D+wG6fpIisArfQce2P24=', '2022-09-06 20:52:35.869598', 1, 'juance', '', '', 'juanceronquinayas@gmail.com', 1, 1, '2022-09-06 14:55:11.259503');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-09-06 15:35:39.895240', '1', 'Cartas object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-09-06 15:52:13.188165', '1', 'Cartas object (1)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-09-06 15:53:36.468672', '1', 'Cartas object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(4, '2022-09-06 15:55:54.126595', '2', 'Salah', 1, '[{\"added\": {}}]', 7, 1),
(5, '2022-09-06 16:02:20.844705', '3', 'Cristiano Ronaldo', 1, '[{\"added\": {}}]', 7, 1),
(6, '2022-09-06 16:07:03.996174', '4', 'Dembélé', 1, '[{\"added\": {}}]', 7, 1),
(7, '2022-09-06 16:10:01.325680', '5', 'Messi', 1, '[{\"added\": {}}]', 7, 1),
(8, '2022-09-06 16:13:14.903029', '6', 'Varane', 1, '[{\"added\": {}}]', 7, 1),
(9, '2022-09-06 16:16:02.400075', '7', 'Bale', 1, '[{\"added\": {}}]', 7, 1),
(10, '2022-09-06 16:17:24.752142', '8', 'Kanté', 1, '[{\"added\": {}}]', 7, 1),
(11, '2022-09-06 16:22:30.040532', '5', 'Messi', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(12, '2022-09-06 16:23:20.197653', '3', 'Cristiano Ronaldo', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(13, '2022-09-06 16:23:53.819008', '2', 'Salah', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(14, '2022-09-06 16:24:22.924142', '1', 'Lewandowski', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(15, '2022-09-06 20:20:15.578290', '1', 'Lewandowski', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(16, '2022-09-06 20:22:20.556096', '1', 'Lewandowski', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(17, '2022-09-06 20:59:14.699312', '9', 'Ginola', 1, '[{\"added\": {}}]', 7, 1),
(18, '2022-09-06 21:00:03.432915', '10', 'Ben Yedder', 1, '[{\"added\": {}}]', 7, 1),
(19, '2022-09-06 21:01:50.480235', '11', 'Haaland', 1, '[{\"added\": {}}]', 7, 1),
(20, '2022-09-06 21:03:20.026511', '12', 'Benzema', 1, '[{\"added\": {}}]', 7, 1),
(21, '2022-09-06 21:05:43.222467', '13', 'Neymar Jr', 1, '[{\"added\": {}}]', 7, 1),
(22, '2022-09-06 21:07:22.751833', '14', 'Pogba', 1, '[{\"added\": {}}]', 7, 1),
(23, '2022-09-06 21:08:17.094708', '15', 'Wijnaldum', 1, '[{\"added\": {}}]', 7, 1),
(24, '2022-09-06 21:09:48.523532', '16', 'Eriksen', 1, '[{\"added\": {}}]', 7, 1),
(25, '2022-09-06 21:11:33.937349', '17', 'Barella', 1, '[{\"added\": {}}]', 7, 1),
(26, '2022-09-06 21:14:27.196030', '18', 'Marcelo', 1, '[{\"added\": {}}]', 7, 1),
(27, '2022-09-06 21:15:45.143144', '19', 'Sergio Ramos', 1, '[{\"added\": {}}]', 7, 1),
(28, '2022-09-06 21:17:22.939026', '20', 'Boateng', 1, '[{\"added\": {}}]', 7, 1),
(29, '2022-09-06 21:17:31.537580', '19', 'Sergio Ramos', 2, '[{\"changed\": {\"fields\": [\"Rendimiento total\"]}}]', 7, 1),
(30, '2022-09-06 21:17:40.064968', '18', 'Marcelo', 2, '[{\"changed\": {\"fields\": [\"Rendimiento total\"]}}]', 7, 1),
(31, '2022-09-06 21:18:55.577156', '21', 'Tavernier', 1, '[{\"added\": {}}]', 7, 1),
(32, '2022-09-06 21:21:39.069192', '22', 'Kimpembe', 1, '[{\"added\": {}}]', 7, 1),
(33, '2022-09-06 21:22:52.608768', '23', 'Mendy', 1, '[{\"added\": {}}]', 7, 1),
(34, '2022-09-06 21:26:27.179842', '24', 'Alex Telles', 1, '[{\"added\": {}}]', 7, 1),
(35, '2022-09-06 21:27:53.190433', '25', 'Alex Telles', 1, '[{\"added\": {}}]', 7, 1),
(36, '2022-09-06 21:28:37.304180', '25', 'Atal', 2, '[{\"changed\": {\"fields\": [\"Nombre\", \"Posicion\", \"Image\"]}}]', 7, 1),
(37, '2022-09-06 21:29:12.054591', '26', 'Casemiro', 1, '[{\"added\": {}}]', 7, 1),
(38, '2022-09-06 21:30:19.915293', '27', 'Modrić', 1, '[{\"added\": {}}]', 7, 1),
(39, '2022-09-06 21:31:00.583212', '28', 'Pepe', 1, '[{\"added\": {}}]', 7, 1),
(40, '2022-09-06 21:31:35.253763', '29', 'Gravenberch', 1, '[{\"added\": {}}]', 7, 1),
(41, '2022-09-06 21:32:18.070587', '30', 'Cahill', 1, '[{\"added\": {}}]', 7, 1),
(42, '2022-09-06 21:33:26.006308', '31', 'Lucas Paquetá', 1, '[{\"added\": {}}]', 7, 1),
(43, '2022-09-06 21:33:58.758222', '32', 'Rafinha', 1, '[{\"added\": {}}]', 7, 1),
(44, '2022-09-07 13:31:07.990781', '1', 'Lewandowski', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(45, '2022-09-07 13:31:38.989146', '2', 'Salah', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(46, '2022-09-07 13:31:46.703223', '3', 'Cristiano Ronaldo', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(47, '2022-09-07 13:31:54.681380', '4', 'Dembélé', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(48, '2022-09-07 13:32:01.134411', '5', 'Messi', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(49, '2022-09-07 13:32:08.394896', '6', 'Varane', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(50, '2022-09-07 13:32:16.673671', '7', 'Bale', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(51, '2022-09-07 13:32:26.534101', '8', 'Kanté', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(52, '2022-09-07 13:33:24.605183', '9', 'Ginola', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(53, '2022-09-07 13:33:33.984901', '10', 'Ben Yedder', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(54, '2022-09-07 13:33:49.025241', '11', 'Haaland', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(55, '2022-09-07 13:33:56.252084', '12', 'Benzema', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(56, '2022-09-07 13:34:09.772216', '13', 'Neymar Jr', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(57, '2022-09-07 13:34:53.586131', '14', 'Pogba', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(58, '2022-09-07 13:35:05.195830', '15', 'Wijnaldum', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(59, '2022-09-07 13:35:15.996722', '16', 'Eriksen', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(60, '2022-09-07 13:35:25.776489', '17', 'Barella', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(61, '2022-09-07 13:36:16.039155', '18', 'Marcelo', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(62, '2022-09-07 13:36:22.721908', '19', 'Sergio Ramos', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(63, '2022-09-07 13:36:31.800566', '20', 'Boateng', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(64, '2022-09-07 13:36:39.155197', '21', 'Tavernier', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(65, '2022-09-07 13:36:49.324204', '22', 'Kimpembe', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(66, '2022-09-07 13:36:59.871827', '23', 'Mendy', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(67, '2022-09-07 13:37:10.901940', '24', 'Alex Telles', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(68, '2022-09-07 13:37:28.274931', '25', 'Atal', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(69, '2022-09-07 13:37:46.490824', '26', 'Casemiro', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(70, '2022-09-07 13:37:53.561792', '27', 'Modrić', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(71, '2022-09-07 13:38:00.635801', '28', 'Pepe', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(72, '2022-09-07 13:38:08.418551', '29', 'Gravenberch', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(73, '2022-09-07 13:38:15.559412', '30', 'Cahill', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(74, '2022-09-07 13:38:26.802321', '31', 'Lucas Paquetá', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(75, '2022-09-07 13:38:32.812739', '32', 'Rafinha', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(76, '2022-09-07 15:48:55.006037', '1', 'Lewandowski', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(77, '2022-09-07 15:49:00.415921', '2', 'Salah', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(78, '2022-09-07 15:49:07.982323', '3', 'Cristiano Ronaldo', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(79, '2022-09-07 15:49:15.962796', '4', 'Dembélé', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(80, '2022-09-07 15:49:22.230784', '5', 'Messi', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(81, '2022-09-07 15:49:28.197920', '6', 'Varane', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(82, '2022-09-07 15:49:37.779187', '7', 'Bale', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(83, '2022-09-07 15:50:05.014110', '8', 'Kanté', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(84, '2022-09-07 15:50:14.319266', '9', 'Ginola', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(85, '2022-09-07 15:50:41.941309', '8', 'Kanté', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\", \"Posicion\"]}}]', 7, 1),
(86, '2022-09-07 15:50:49.800419', '9', 'Ginola', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(87, '2022-09-07 15:50:57.632332', '10', 'Ben Yedder', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(88, '2022-09-07 15:51:17.082155', '9', 'Ginola', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(89, '2022-09-07 15:53:19.206523', '11', 'Haaland', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(90, '2022-09-07 15:53:39.396473', '12', 'Benzema', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(91, '2022-09-07 15:53:44.730367', '13', 'Neymar Jr', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(92, '2022-09-07 15:53:55.125937', '14', 'Pogba', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(93, '2022-09-07 15:54:00.338393', '15', 'Wijnaldum', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(94, '2022-09-07 15:54:12.980590', '16', 'Eriksen', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(95, '2022-09-07 15:54:26.835169', '17', 'Barella', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(96, '2022-09-07 15:54:35.506731', '17', 'Barella', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(97, '2022-09-07 15:54:57.110557', '18', 'Marcelo', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(98, '2022-09-07 15:55:44.845274', '19', 'Sergio Ramos', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(99, '2022-09-07 15:55:53.641519', '20', 'Boateng', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(100, '2022-09-07 15:56:00.846259', '21', 'Tavernier', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(101, '2022-09-07 15:56:09.047287', '22', 'Kimpembe', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(102, '2022-09-07 15:56:23.470378', '23', 'Mendy', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(103, '2022-09-07 15:56:30.312779', '24', 'Alex Telles', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(104, '2022-09-07 15:56:41.461714', '25', 'Atal', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(105, '2022-09-07 15:56:55.088134', '26', 'Casemiro', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(106, '2022-09-07 15:57:11.567265', '27', 'Modrić', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(107, '2022-09-07 15:57:19.069456', '28', 'Pepe', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(108, '2022-09-07 15:57:27.935592', '29', 'Gravenberch', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(109, '2022-09-07 15:57:34.924467', '30', 'Cahill', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(110, '2022-09-07 15:57:43.487224', '31', 'Lucas Paquetá', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1),
(111, '2022-09-07 15:57:48.270880', '32', 'Rafinha', 2, '[{\"changed\": {\"fields\": [\"Clasificacion\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'juego', 'cartas'),
(8, 'juego', 'cartas_b'),
(9, 'juego', 'cartas_c'),
(10, 'juego', 'cartas_d'),
(11, 'juego', 'jugador'),
(12, 'juego', 'partida'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-09-06 14:09:48.364069'),
(2, 'auth', '0001_initial', '2022-09-06 14:09:48.746564'),
(3, 'admin', '0001_initial', '2022-09-06 14:09:48.820790'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-09-06 14:09:48.828697'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-09-06 14:09:48.836640'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-09-06 14:09:48.884641'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-09-06 14:09:48.924671'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-09-06 14:09:48.940642'),
(9, 'auth', '0004_alter_user_username_opts', '2022-09-06 14:09:48.948673'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-09-06 14:09:48.980639'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-09-06 14:09:48.988718'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-09-06 14:09:48.996673'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-09-06 14:09:49.004641'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-09-06 14:09:49.020638'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-09-06 14:09:49.036671'),
(16, 'auth', '0011_update_proxy_permissions', '2022-09-06 14:09:49.044673'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-09-06 14:09:49.060639'),
(18, 'sessions', '0001_initial', '2022-09-06 14:09:49.084640'),
(19, 'juego', '0001_initial', '2022-09-06 14:33:54.016667'),
(20, 'juego', '0002_cartas_image', '2022-09-06 15:07:12.745823'),
(21, 'juego', '0003_cartas_rendimiento_total', '2022-09-06 15:47:21.681414'),
(22, 'juego', '0004_rename_potencia_cartas_tiro', '2022-09-06 15:50:56.104836'),
(23, 'juego', '0005_rename_cartas_cartas_a', '2022-09-06 18:32:21.127641'),
(24, 'juego', '0006_cartas_b_cartas_c_cartas_d', '2022-09-06 18:33:37.761368'),
(25, 'juego', '0007_rename_posocion_cartas_a_posicion', '2022-09-06 19:25:18.185430'),
(26, 'juego', '0008_delete_cartas_b_delete_cartas_c_delete_cartas_d', '2022-09-06 20:49:20.044923'),
(27, 'juego', '0009_jugador_cartas_a_clasificacion_partida_jugador_carta_and_more', '2022-09-07 13:19:02.058908'),
(28, 'juego', '0010_rename_cartas_a_cartas', '2022-09-07 14:17:20.175206');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('mn5m26vr2a3i701idj7gk0iph4ngi09z', '.eJxVjMEOwiAQRP-FsyGluJT16L3fQBZ2laqhSWlPxn-XJj3ocd68mbcKtK05bFWWMLG6KKNOvyxSekrZC35Quc86zWVdpqh3RR9t1ePM8roe7t9BpprbesAonq3FGws6C71DiUAtukT-7IUBeuOBEX2KjYIzQ5ccOhBInVWfL-8qN9o:1oVfYh:2vWG5m36dQcj5pGYeT0gbtZA5w3V5fIM5D_yK5HU7pk', '2022-09-20 20:52:35.871596'),
('x06h15uzvtwn48h7vxmgkqfrmoyqwzmj', '.eJxVjMEOwiAQRP-FsyGluJT16L3fQBZ2laqhSWlPxn-XJj3ocd68mbcKtK05bFWWMLG6KKNOvyxSekrZC35Quc86zWVdpqh3RR9t1ePM8roe7t9BpprbesAonq3FGws6C71DiUAtukT-7IUBeuOBEX2KjYIzQ5ccOhBInVWfL-8qN9o:1oVf3A:K5a2NO_M0ADh_C7wlIjpZQ9Mbi_JPrsSHaGmbz7X2rI', '2022-09-20 20:20:00.408069');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego_cartas`
--

CREATE TABLE `juego_cartas` (
  `id` bigint(20) NOT NULL,
  `clasificacion` varchar(200) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `posicion` varchar(100) NOT NULL,
  `fuerza` varchar(100) NOT NULL,
  `tiro` varchar(100) NOT NULL,
  `velocidad` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `rendimiento_total` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `juego_cartas`
--

INSERT INTO `juego_cartas` (`id`, `clasificacion`, `nombre`, `posicion`, `fuerza`, `tiro`, `velocidad`, `image`, `rendimiento_total`) VALUES
(1, '1A', 'Lewandowski', 'Delantero', '98', '99', '97', 'lewan_V83aFRS.jpg', '2584'),
(2, '2A', 'Salah', 'Delantero', '88', '99', '99', 'slah.jpg', '2578'),
(3, '3A', 'Cristiano Ronaldo', 'Delantero', '92', '99', '99', 'cr7.jpg', '2549'),
(4, '4A', 'Dembélé', 'Extremo dereho', '79', '98', '95', 'p134449171.jpg', '2485'),
(5, '5A', 'Messi', 'Delantero', '78', '98', '95', 'messi.jpg', '2485'),
(6, '6A', 'Varane', 'Defensa central', '98', '61', '96', 'p100864831.jpg', '2378'),
(7, '7A', 'Bale', 'Medio Campista Derecho', '96', '98', '99', 'bale.jpg', '2684'),
(8, '8A', 'Kanté', 'Medio Campista Ofensivo8', '91', '93', '92', 'kante.jpg', '2651'),
(9, '9B', 'Ginola', 'Defensa Centrocampista', '92', '96', '98', 'ginola.jpg', '2608'),
(10, '10B', 'Ben Yedder', 'Defensa Centrocampista', '85', '99', '99', 'p251857691.png', '2582'),
(11, '11B', 'Haaland', 'Delantero', '35', '94', '99', '239085.png', '2581'),
(12, '12B', 'Benzema', 'Delantero', '90', '85', '70', 'p218268961.png', '2479'),
(13, '13B', 'Neymar Jr', 'Delantero', '80', '81', '83', 'p184740247.png', '2467'),
(14, '14B', 'Pogba', 'Medio Campista', '93', '91', '63', '195864.png', '2702'),
(15, '15B', 'Wijnaldum', 'Medio Campista', '70', '94', '50', '181291.png', '2699'),
(16, '16B', 'Eriksen', 'Medio Campista', '90', '61', '96', '190460.png', '2691'),
(17, '17B', 'Barella', 'Medio Campista', '90', '61', '92', 'p184773608.png', '2698'),
(18, '18B', 'Marcelo', 'Lateral Izquierdo', '88', '94', '96', 'p67285540.png', '2695'),
(19, '19C', 'Sergio Ramos', 'Defensa Centrocampista', '95', '97', '91', 'p84041942.png', '2691'),
(20, '20C', 'Boateng', 'Medio Campista', '60', '75', '50', '173909.png', '2689'),
(21, '21C', 'Tavernier', 'Lateral Derecho', '50', '30', '45', 'p117635991.png', '1900'),
(22, '22C', 'Kimpembe', 'Medio Campista', '50', '61', '42', 'p84111930.png', '1900'),
(23, '23C', 'Mendy', 'Medio Campista', '75', '56', '63', 'p67337482.png', '2000'),
(24, '24C', 'Alex Telles', 'Lateral Izquierdo', '45', '60', '28', '212462.png', '1500'),
(25, '25D', 'Atal', 'Medio Campista', '63', '39', '45', 'p151235698.png', '1600'),
(26, '26D', 'Casemiro', 'Medio Campista', '70', '61', '85', 'p67309009.png', '2200'),
(27, '27D', 'Modrić', 'Medio Campista', '90', '93', '82', 'p67285867.png', '2700'),
(28, '28D', 'Pepe', 'Defensa', '70', '63', '59', 'p67229397.png', '2000'),
(29, '29D', 'Gravenberch', 'Medio Campista', '70', '50', '45', '246104.png', '1930'),
(30, '30D', 'Cahill', 'Medio Campista Derecho', '73', '49', '55', 'p67160276.png', '1953'),
(31, '31D', 'Lucas Paquetá', 'Medio Campista', '75', '62', '51', 'p100897223.png', '1987'),
(32, '32D', 'Rafinha', 'Lateral Derecho', '55', '49', '38', 'p84087480.png', '1700');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego_jugador`
--

CREATE TABLE `juego_jugador` (
  `id` bigint(20) NOT NULL,
  `carta_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego_partida`
--

CREATE TABLE `juego_partida` (
  `id` bigint(20) NOT NULL,
  `num_jugadores` varchar(100) NOT NULL,
  `carta_id` bigint(20) NOT NULL,
  `juagadores_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `juego_cartas`
--
ALTER TABLE `juego_cartas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `juego_jugador`
--
ALTER TABLE `juego_jugador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `juego_jugador_user_id_c5bcf33d_fk_auth_user_id` (`user_id`),
  ADD KEY `juego_jugador_carta_id_127cd4ba_fk_juego_cartas_id` (`carta_id`);

--
-- Indices de la tabla `juego_partida`
--
ALTER TABLE `juego_partida`
  ADD PRIMARY KEY (`id`),
  ADD KEY `juego_partida_juagadores_id_76e05a99_fk_juego_jugador_id` (`juagadores_id`),
  ADD KEY `juego_partida_carta_id_d31d8ee2_fk_juego_cartas_id` (`carta_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `juego_cartas`
--
ALTER TABLE `juego_cartas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `juego_jugador`
--
ALTER TABLE `juego_jugador`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `juego_partida`
--
ALTER TABLE `juego_partida`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `juego_jugador`
--
ALTER TABLE `juego_jugador`
  ADD CONSTRAINT `juego_jugador_carta_id_127cd4ba_fk_juego_cartas_id` FOREIGN KEY (`carta_id`) REFERENCES `juego_cartas` (`id`),
  ADD CONSTRAINT `juego_jugador_user_id_c5bcf33d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `juego_partida`
--
ALTER TABLE `juego_partida`
  ADD CONSTRAINT `juego_partida_carta_id_d31d8ee2_fk_juego_cartas_id` FOREIGN KEY (`carta_id`) REFERENCES `juego_cartas` (`id`),
  ADD CONSTRAINT `juego_partida_juagadores_id_76e05a99_fk_juego_jugador_id` FOREIGN KEY (`juagadores_id`) REFERENCES `juego_jugador` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
