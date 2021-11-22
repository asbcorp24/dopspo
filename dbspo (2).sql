-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 22 2021 г., 22:27
-- Версия сервера: 5.7.33-log
-- Версия PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dbspo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 2),
(24, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(25, 4, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 4),
(26, 4, 'name', 'text', 'Название', 0, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'long_name', 'text', 'Полное название', 0, 1, 1, 1, 1, 1, '{}', 6),
(28, 4, 'cena', 'number', 'Цена', 0, 1, 1, 1, 1, 1, '{}', 7),
(29, 4, 'comment', 'text_area', 'Комментарий', 0, 0, 1, 1, 1, 1, '{}', 8),
(30, 4, 'act', 'checkbox', 'Активность', 0, 1, 1, 1, 1, 1, '{}', 9),
(31, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(32, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 2),
(33, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(34, 5, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 4),
(35, 5, 'name', 'text', 'Название', 0, 1, 1, 1, 1, 1, '{}', 5),
(36, 5, 'comment', 'text_area', 'Комментарий', 0, 1, 1, 1, 1, 1, '{}', 6),
(37, 5, 'img', 'image', 'Рисунок', 0, 0, 1, 1, 1, 1, '{}', 7),
(38, 5, 'act', 'checkbox', 'Act', 0, 1, 1, 1, 1, 1, '{}', 8),
(39, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(40, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 2),
(41, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(42, 6, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 4),
(43, 6, 'comment', 'text_area', 'Комментарий', 0, 1, 1, 1, 1, 1, '{}', 5),
(44, 6, 'img', 'image', 'Рисунок', 0, 0, 1, 1, 1, 1, '{}', 6),
(45, 6, 'act', 'checkbox', 'Act', 0, 1, 1, 1, 1, 1, '{}', 7),
(46, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(47, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 2),
(48, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(49, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 1, 0, '{}', 4),
(50, 7, 'fam', 'text', 'Фамилия', 0, 1, 1, 1, 1, 1, '{}', 6),
(51, 7, 'name', 'text', 'Имя', 0, 1, 1, 1, 1, 1, '{}', 7),
(52, 7, 'otch', 'text', 'Отчество', 0, 1, 1, 1, 1, 1, '{}', 8),
(53, 7, 'passw', 'text', 'Пароль', 0, 1, 1, 1, 1, 1, '{}', 9),
(54, 7, 'nmo_login', 'text', 'Nmo Login', 0, 1, 1, 1, 1, 1, '{}', 10),
(55, 7, 'nmo_passw', 'text', 'Nmo Passw', 0, 1, 1, 1, 1, 1, '{}', 11),
(56, 7, 'data_r', 'date', 'Дата рождения', 0, 1, 1, 1, 1, 1, '{}', 12),
(57, 7, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 13),
(58, 7, 'mail', 'text', 'Mail', 0, 1, 1, 1, 1, 1, '{}', 14),
(59, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(60, 8, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 2),
(61, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(62, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(63, 8, 'name', 'text', 'Название', 0, 1, 1, 1, 1, 1, '{}', 5),
(64, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(65, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 2),
(66, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(67, 9, 'student', 'text', 'Student', 0, 0, 0, 0, 0, 0, '{}', 4),
(68, 9, 'tipdoc_id', 'text', 'Tipdoc Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(69, 9, 'path', 'file', 'файл', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required_without:_method|mimes:pdf\",\"messages\":{}},\"delete_files\":true}', 7),
(70, 7, 'act', 'checkbox', 'Активность', 0, 1, 1, 1, 1, 1, '{}', 5),
(71, 9, 'studfile_belongsto_tipdocaccr_relationship', 'relationship', 'Тип документа', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Tipdocaccr\",\"table\":\"tipdocaccr\",\"type\":\"belongsTo\",\"column\":\"tipdoc_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-08-23 14:59:29', '2021-08-23 14:59:29'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-08-23 14:59:30', '2021-08-23 14:59:30'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-08-23 14:59:30', '2021-08-23 14:59:30'),
(4, 'price', 'price', 'Прайс', 'Прайсы', 'voyager-receipt', 'App\\Price', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-09-20 14:40:18', '2021-09-20 14:40:18'),
(5, 'tekst', 'tekst', 'Тексты', 'Тексты', 'voyager-news', 'App\\Tekst', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-20 15:44:44', '2021-09-20 15:46:55'),
(6, 'uppanel', 'uppanel', 'Заголовок панели', 'Заголовок панели', 'voyager-polaroid', 'App\\Uppanel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-20 15:59:21', '2021-09-20 16:00:22'),
(7, 'students', 'students', 'Student', 'Students', 'voyager-helm', 'App\\Student', NULL, '\\App\\Http\\Controllers\\usluser', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-23 15:59:34', '2021-11-19 13:58:43'),
(8, 'tipdocaccr', 'tipdocaccr', 'Тип документов об аккредитации', 'Тип документов об аккредитации', 'voyager-group', 'App\\Tipdocaccr', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-03 14:01:30', '2021-11-03 14:13:34'),
(9, 'studfile', 'studfile', 'Файл слушателя', 'Файлы слушателя', 'voyager-data', 'App\\Studfile', NULL, '\\App\\Http\\Controllers\\studfile', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-03 14:38:28', '2021-11-22 14:16:41');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-08-23 14:59:31', '2021-08-23 14:59:31');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-08-23 14:59:31', '2021-08-23 14:59:31', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-08-23 14:59:31', '2021-08-23 14:59:31', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-08-23 14:59:31', '2021-08-23 14:59:31', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-08-23 14:59:31', '2021-08-23 14:59:31', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-08-23 14:59:31', '2021-08-23 14:59:31', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2021-08-23 14:59:31', '2021-08-23 14:59:31', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2021-08-23 14:59:31', '2021-08-23 14:59:31', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2021-08-23 14:59:31', '2021-08-23 14:59:31', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2021-08-23 14:59:31', '2021-08-23 14:59:31', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-08-23 14:59:31', '2021-08-23 14:59:31', 'voyager.settings.index', NULL),
(11, 1, 'Прайсы', '', '_self', 'voyager-receipt', NULL, NULL, 15, '2021-09-20 14:40:18', '2021-09-20 14:40:18', 'voyager.price.index', NULL),
(12, 1, 'Тексты', '', '_self', 'voyager-news', NULL, NULL, 16, '2021-09-20 15:44:44', '2021-09-20 15:44:44', 'voyager.tekst.index', NULL),
(13, 1, 'Заголовок панели', '', '_self', 'voyager-polaroid', NULL, NULL, 17, '2021-09-20 15:59:21', '2021-09-20 15:59:21', 'voyager.uppanel.index', NULL),
(14, 1, 'Students', '', '_self', 'voyager-helm', NULL, NULL, 18, '2021-09-23 15:59:35', '2021-09-23 15:59:35', 'voyager.students.index', NULL),
(15, 1, 'Тип документов об аккредитации', '', '_self', 'voyager-group', NULL, NULL, 19, '2021-11-03 14:01:31', '2021-11-03 14:01:31', 'voyager.tipdocaccr.index', NULL),
(16, 1, 'Файлы слушателя', '', '_self', 'voyager-data', NULL, NULL, 20, '2021-11-03 14:38:28', '2021-11-03 14:38:28', 'voyager.studfile.index', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(2, 'browse_bread', NULL, '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(3, 'browse_database', NULL, '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(4, 'browse_media', NULL, '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(5, 'browse_compass', NULL, '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(6, 'browse_menus', 'menus', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(7, 'read_menus', 'menus', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(8, 'edit_menus', 'menus', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(9, 'add_menus', 'menus', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(10, 'delete_menus', 'menus', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(11, 'browse_roles', 'roles', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(12, 'read_roles', 'roles', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(13, 'edit_roles', 'roles', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(14, 'add_roles', 'roles', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(15, 'delete_roles', 'roles', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(16, 'browse_users', 'users', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(17, 'read_users', 'users', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(18, 'edit_users', 'users', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(19, 'add_users', 'users', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(20, 'delete_users', 'users', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(21, 'browse_settings', 'settings', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(22, 'read_settings', 'settings', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(23, 'edit_settings', 'settings', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(24, 'add_settings', 'settings', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(25, 'delete_settings', 'settings', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(26, 'browse_price', 'price', '2021-09-20 14:40:18', '2021-09-20 14:40:18'),
(27, 'read_price', 'price', '2021-09-20 14:40:18', '2021-09-20 14:40:18'),
(28, 'edit_price', 'price', '2021-09-20 14:40:18', '2021-09-20 14:40:18'),
(29, 'add_price', 'price', '2021-09-20 14:40:18', '2021-09-20 14:40:18'),
(30, 'delete_price', 'price', '2021-09-20 14:40:18', '2021-09-20 14:40:18'),
(31, 'browse_tekst', 'tekst', '2021-09-20 15:44:44', '2021-09-20 15:44:44'),
(32, 'read_tekst', 'tekst', '2021-09-20 15:44:44', '2021-09-20 15:44:44'),
(33, 'edit_tekst', 'tekst', '2021-09-20 15:44:44', '2021-09-20 15:44:44'),
(34, 'add_tekst', 'tekst', '2021-09-20 15:44:44', '2021-09-20 15:44:44'),
(35, 'delete_tekst', 'tekst', '2021-09-20 15:44:44', '2021-09-20 15:44:44'),
(36, 'browse_uppanel', 'uppanel', '2021-09-20 15:59:21', '2021-09-20 15:59:21'),
(37, 'read_uppanel', 'uppanel', '2021-09-20 15:59:21', '2021-09-20 15:59:21'),
(38, 'edit_uppanel', 'uppanel', '2021-09-20 15:59:21', '2021-09-20 15:59:21'),
(39, 'add_uppanel', 'uppanel', '2021-09-20 15:59:21', '2021-09-20 15:59:21'),
(40, 'delete_uppanel', 'uppanel', '2021-09-20 15:59:21', '2021-09-20 15:59:21'),
(41, 'browse_students', 'students', '2021-09-23 15:59:34', '2021-09-23 15:59:34'),
(42, 'read_students', 'students', '2021-09-23 15:59:34', '2021-09-23 15:59:34'),
(43, 'edit_students', 'students', '2021-09-23 15:59:34', '2021-09-23 15:59:34'),
(44, 'add_students', 'students', '2021-09-23 15:59:34', '2021-09-23 15:59:34'),
(45, 'delete_students', 'students', '2021-09-23 15:59:34', '2021-09-23 15:59:34'),
(46, 'browse_tipdocaccr', 'tipdocaccr', '2021-11-03 14:01:31', '2021-11-03 14:01:31'),
(47, 'read_tipdocaccr', 'tipdocaccr', '2021-11-03 14:01:31', '2021-11-03 14:01:31'),
(48, 'edit_tipdocaccr', 'tipdocaccr', '2021-11-03 14:01:31', '2021-11-03 14:01:31'),
(49, 'add_tipdocaccr', 'tipdocaccr', '2021-11-03 14:01:31', '2021-11-03 14:01:31'),
(50, 'delete_tipdocaccr', 'tipdocaccr', '2021-11-03 14:01:31', '2021-11-03 14:01:31'),
(51, 'browse_studfile', 'studfile', '2021-11-03 14:38:28', '2021-11-03 14:38:28'),
(52, 'read_studfile', 'studfile', '2021-11-03 14:38:28', '2021-11-03 14:38:28'),
(53, 'edit_studfile', 'studfile', '2021-11-03 14:38:28', '2021-11-03 14:38:28'),
(54, 'add_studfile', 'studfile', '2021-11-03 14:38:28', '2021-11-03 14:38:28'),
(55, 'delete_studfile', 'studfile', '2021-11-03 14:38:28', '2021-11-03 14:38:28');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `price`
--

CREATE TABLE `price` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cena` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `act` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `price`
--

INSERT INTO `price` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `long_name`, `cena`, `comment`, `act`) VALUES
(1, '2021-09-20 14:49:08', '2021-09-20 14:49:08', NULL, 'Консультант', 'Помощь при регистрации и консультация по работе и ведению личного кабинета на портале НМО', 500, NULL, 1),
(2, '2021-09-20 14:50:24', '2021-09-20 14:50:24', NULL, 'Полный', 'Получить полное сопровождение личного кабинета – 50 баллов НМО (50 ЗЕТ)', 5000, NULL, 1),
(3, '2021-09-20 14:51:22', '2021-09-20 14:51:32', NULL, 'Портфолио', 'Получить заполненное портфолио для аккредитационной комиссии', 5000, '(если циклы бесплатные)', 1),
(4, '2021-09-20 14:52:28', '2021-09-20 14:52:28', NULL, 'Дистант', 'Пройти дистанционное обучение НМО — 36 баллов НМО (36 ЗЕТ)', 3500, NULL, 1),
(5, '2021-09-20 14:53:27', '2021-09-20 14:53:27', NULL, 'Начальный', 'Получить бесплатные баллы НМО – 14 баллов НМО (14 ЗЕТ)', 1500, NULL, 1),
(6, '2021-09-20 14:53:58', '2021-09-20 14:53:58', NULL, 'Максимальный', 'Получить полное сопровождение личного кабинета – 50 баллов НМО (100 ЗЕТ)', 10000, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-08-23 14:59:31', '2021-08-23 14:59:31'),
(2, 'user', 'Normal User', '2021-08-23 14:59:31', '2021-08-23 14:59:31');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'ДПО СМО', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `fam` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otch` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passw` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nmo_login` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nmo_passw` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_r` date DEFAULT NULL,
  `phone` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `act` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `created_at`, `updated_at`, `deleted_at`, `fam`, `name`, `otch`, `passw`, `nmo_login`, `nmo_passw`, `data_r`, `phone`, `mail`, `act`) VALUES
(5, '2021-10-13 14:08:26', '2021-11-19 13:59:05', NULL, 'Иванов', 'Иван', NULL, '8730354887', NULL, NULL, '2021-10-06', '89600305931', 'asbcorp24@gmail.com', 1),
(6, '2021-11-22 14:27:55', '2021-11-22 14:27:55', NULL, 'Балабанов', 'asbcorp88@gmail.com', 'Дмитриевич', '89510618158', NULL, NULL, '2021-11-10', '+79600305931', '89754213', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `studfile`
--

CREATE TABLE `studfile` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student` int(11) DEFAULT NULL,
  `tipdoc_id` int(11) DEFAULT NULL,
  `path` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `studfile`
--

INSERT INTO `studfile` (`id`, `created_at`, `updated_at`, `student`, `tipdoc_id`, `path`) VALUES
(9, '2021-11-22 13:39:05', '2021-11-22 13:39:05', 5, 1, '[{\"download_link\":\"studfile\\\\November2021\\\\W3PwxSnFJW6SrVvePgPQ.pdf\",\"original_name\":\"\\u0423\\u0447\\u0430\\u0449\\u0438\\u0435\\u0441\\u044f.pdf\"}]'),
(10, '2021-11-22 14:29:32', '2021-11-22 14:29:32', 6, 1, '[{\"download_link\":\"studfile\\\\November2021\\\\f0SizNYzq6hWAYZxDMmo.pdf\",\"original_name\":\"\\u041f\\u0435\\u0447\\u0430\\u0442\\u044c (8).pdf\"}]'),
(13, '2021-11-22 14:46:19', '2021-11-22 14:46:19', 5, 2, '[{\"download_link\":\"studfile\\\\November2021\\\\Mug0kLOlmLrnyup9O0rL.pdf\",\"original_name\":\"\\u0417\\u0435\\u043b\\u0435\\u043d\\u043e\\u0434\\u043e\\u043b\\u044c\\u043a\\u0441\\u043a\\u043e\\u0435 \\u043c\\u0435\\u0434\\u0438\\u0446\\u0438\\u043d\\u0441\\u043a\\u043e\\u0435 \\u0443\\u0447\\u0438\\u043b\\u0438\\u0449\\u0435.pdf\"}]'),
(14, '2021-11-22 14:50:47', '2021-11-22 14:50:47', 5, 1, '[{\"download_link\":\"studfile\\\\November2021\\\\NCMwNpyEs7U6QtJdCxaX.pdf\",\"original_name\":\"\\u041f\\u0435\\u0447\\u0430\\u0442\\u044c (12).pdf\"}]'),
(15, '2021-11-22 15:25:17', '2021-11-22 15:25:18', 5, 1, '[{\"download_link\":\"studfile\\\\November2021\\\\AnHHquAkJABOIZ4XVLQc.pdf\",\"original_name\":\"\\u041a\\u0430\\u043c\\u044b\\u0448\\u043d\\u0438\\u043a\\u043e\\u0432_\\u0412_\\u0421_\\u041c\\u0435\\u0442\\u043e\\u0434\\u044b_\\u043a\\u043b\\u0438\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0438\\u0306 (1).pdf\"}]');

-- --------------------------------------------------------

--
-- Структура таблицы `tekst`
--

CREATE TABLE `tekst` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `img` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `act` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tekst`
--

INSERT INTO `tekst` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `comment`, `img`, `act`) VALUES
(1, '2021-09-20 15:45:38', '2021-09-20 15:47:09', NULL, 'Упрощенная система', 'Согласно приказу Минздрава №746н от 09.07.2021, процедура Периодической аккредитации в 2021 году для медицинских и фармацевтических специалистов будет проходить по упрощенной системе.', 'tekst\\September2021\\9tFS45bFYZmFjHy3BX3y.jpg', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tipdocaccr`
--

CREATE TABLE `tipdocaccr` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tipdocaccr`
--

INSERT INTO `tipdocaccr` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`) VALUES
(1, NULL, '2021-11-03 14:15:45', '2021-11-03 14:15:45', 'Паспорт'),
(2, NULL, '2021-11-22 14:11:58', '2021-11-22 14:11:58', 'Трудовая книжка');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `uppanel`
--

CREATE TABLE `uppanel` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `img` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `act` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `uppanel`
--

INSERT INTO `uppanel` (`id`, `created_at`, `updated_at`, `deleted_at`, `comment`, `img`, `act`) VALUES
(1, '2021-09-20 16:00:56', '2021-09-20 16:05:32', NULL, 'помощь при создании и ведении личного кабинета на портале НМО;', 'uppanel\\September2021\\F67JZKy85YkRsLich8cN.png', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'asbcorp24@gmail.com', 'users/default.png', NULL, '$2y$10$5fEf5crXgvaM22b3U4EcsOZTwRB1KLkKDWcMyg0IpQbsC8DI21qWa', NULL, NULL, '2021-08-23 15:01:59', '2021-08-23 15:01:59');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `uslug`
--

CREATE TABLE `uslug` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_uslug` int(11) DEFAULT NULL,
  `id_student` int(11) DEFAULT NULL,
  `usl_zav` int(11) DEFAULT NULL,
  `dat_zav` date DEFAULT NULL,
  `opl` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `uslug`
--

INSERT INTO `uslug` (`id`, `created_at`, `updated_at`, `id_uslug`, `id_student`, `usl_zav`, `dat_zav`, `opl`) VALUES
(1, '2021-10-13 14:08:26', '2021-10-13 15:14:58', 2, 5, NULL, '2021-10-03', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `uuslug`
--

CREATE TABLE `uuslug` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `uslugaid` int(11) DEFAULT NULL,
  `oplach` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `studfile`
--
ALTER TABLE `studfile`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tekst`
--
ALTER TABLE `tekst`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tipdocaccr`
--
ALTER TABLE `tipdocaccr`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `uppanel`
--
ALTER TABLE `uppanel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Индексы таблицы `uslug`
--
ALTER TABLE `uslug`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `uuslug`
--
ALTER TABLE `uuslug`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT для таблицы `price`
--
ALTER TABLE `price`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `studfile`
--
ALTER TABLE `studfile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `tekst`
--
ALTER TABLE `tekst`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tipdocaccr`
--
ALTER TABLE `tipdocaccr`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uppanel`
--
ALTER TABLE `uppanel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `uslug`
--
ALTER TABLE `uslug`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `uuslug`
--
ALTER TABLE `uuslug`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
