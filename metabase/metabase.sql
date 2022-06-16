-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 04:50 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `metabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `topic` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `model` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `database_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `custom_id` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `topic`, `timestamp`, `user_id`, `model`, `model_id`, `database_id`, `table_id`, `custom_id`, `details`) VALUES
(1, 'install', '2022-06-13 12:57:25', NULL, 'install', NULL, NULL, NULL, NULL, '{}'),
(2, 'user-joined', '2022-06-13 13:00:03', 1, 'user', 1, NULL, NULL, NULL, '{}'),
(3, 'dashboard-create', '2022-06-14 07:24:32', 1, 'dashboard', 1, NULL, NULL, NULL, '{\"description\":null,\"name\":\"Descriptive Analysis\"}'),
(4, 'card-create', '2022-06-14 10:31:28', 1, 'card', 1, 2, NULL, NULL, '{\"name\":\"Top 5 countries by total quantity\",\"description\":null}'),
(5, 'dashboard-add-cards', '2022-06-14 10:31:50', 1, 'dashboard', 1, NULL, NULL, NULL, '{\"description\":null,\"name\":\"Descriptive Analysis\",\"dashcards\":[{\"name\":\"Top 5 countries by total quantity\",\"description\":null,\"id\":1,\"card_id\":1}]}'),
(6, 'card-create', '2022-06-14 10:47:16', 1, 'card', 2, 2, NULL, NULL, '{\"name\":\"Grouping countries by total quantity\",\"description\":null}'),
(7, 'dashboard-add-cards', '2022-06-14 10:47:34', 1, 'dashboard', 1, NULL, NULL, NULL, '{\"description\":null,\"name\":\"Descriptive Analysis\",\"dashcards\":[{\"name\":\"Grouping countries by total quantity\",\"description\":null,\"id\":2,\"card_id\":2}]}'),
(8, 'card-create', '2022-06-15 05:07:35', 1, 'card', 3, 2, NULL, NULL, '{\"name\":\"Total product counts per region\",\"description\":null}'),
(9, 'dashboard-add-cards', '2022-06-15 05:08:57', 1, 'dashboard', 1, NULL, NULL, NULL, '{\"description\":null,\"name\":\"Descriptive Analysis\",\"dashcards\":[{\"name\":\"Total product counts per region\",\"description\":null,\"id\":3,\"card_id\":3}]}'),
(10, 'card-create', '2022-06-15 05:14:31', 1, 'card', 4, 2, NULL, NULL, '{\"name\":\"Top 5 countries by Total Unit Price\",\"description\":null}'),
(11, 'dashboard-add-cards', '2022-06-15 05:15:09', 1, 'dashboard', 1, NULL, NULL, NULL, '{\"description\":null,\"name\":\"Descriptive Analysis\",\"dashcards\":[{\"name\":\"Top 5 countries by Total Unit Price\",\"description\":null,\"id\":4,\"card_id\":4}]}'),
(12, 'card-create', '2022-06-15 05:24:28', 1, 'card', 5, 2, NULL, NULL, '{\"name\":\"Total Unit Price sold by year\",\"description\":null}'),
(13, 'dashboard-add-cards', '2022-06-15 05:28:46', 1, 'dashboard', 1, NULL, NULL, NULL, '{\"description\":null,\"name\":\"Descriptive Analysis\",\"dashcards\":[{\"name\":\"Total Unit Price sold by year\",\"description\":null,\"id\":5,\"card_id\":5}]}'),
(14, 'card-create', '2022-06-15 05:32:45', 1, 'card', 6, 2, NULL, NULL, '{\"name\":\"Top 5 countries by Total Unit Price\",\"description\":null}'),
(15, 'dashboard-remove-cards', '2022-06-15 05:34:23', 1, 'dashboard', 1, NULL, NULL, NULL, '{\"description\":null,\"name\":\"Descriptive Analysis\",\"dashcards\":[{\"name\":\"Top 5 countries by Total Unit Price\",\"description\":null,\"id\":4,\"card_id\":4}]}'),
(16, 'dashboard-add-cards', '2022-06-15 05:34:23', 1, 'dashboard', 1, NULL, NULL, NULL, '{\"description\":null,\"name\":\"Descriptive Analysis\",\"dashcards\":[{\"name\":\"Top 5 countries by Total Unit Price\",\"description\":null,\"id\":6,\"card_id\":6}]}'),
(17, 'card-create', '2022-06-15 08:38:28', 1, 'card', 7, 2, NULL, NULL, '{\"name\":\"Time to Time Sale\",\"description\":null}'),
(18, 'card-update', '2022-06-15 10:11:56', 1, 'card', 7, 2, NULL, NULL, '{\"name\":\"Time to Time Sale\",\"description\":null}'),
(19, 'dashboard-add-cards', '2022-06-15 10:13:24', 1, 'dashboard', 1, NULL, NULL, NULL, '{\"description\":null,\"name\":\"Descriptive Analysis\",\"dashcards\":[{\"name\":\"Time to Time Sale\",\"description\":null,\"id\":7,\"card_id\":7}]}');

-- --------------------------------------------------------

--
-- Table structure for table `application_permissions_revision`
--

CREATE TABLE `application_permissions_revision` (
  `id` int(11) NOT NULL,
  `before` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Serialized JSON of the permission graph before the changes.',
  `after` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Serialized JSON of the changes in permission graph.',
  `user_id` int(11) NOT NULL COMMENT 'The ID of the admin who made this set of changes.',
  `created_at` datetime NOT NULL COMMENT 'The timestamp of when these changes were made.',
  `remark` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Optional remarks explaining why these changes were made.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to keep track of changes made to general permissions.';

-- --------------------------------------------------------

--
-- Table structure for table `bookmark_ordering`
--

CREATE TABLE `bookmark_ordering` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'ID of the User who ordered bookmarks',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'type of the Bookmark',
  `item_id` int(11) NOT NULL COMMENT 'id of the item being bookmarked (Card, Collection, Dashboard, ...) no FK, so may no longer exist',
  `ordering` int(11) NOT NULL COMMENT 'order of bookmark for user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding ordering information for various bookmark tables';

-- --------------------------------------------------------

--
-- Table structure for table `card_bookmark`
--

CREATE TABLE `card_bookmark` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'ID of the User who bookmarked the Card',
  `card_id` int(11) NOT NULL COMMENT 'ID of the Card bookmarked by the user',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the bookmark was created'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding bookmarks on cards';

-- --------------------------------------------------------

--
-- Table structure for table `card_label`
--

CREATE TABLE `card_label` (
  `id` int(11) NOT NULL,
  `card_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `id` int(11) NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Seven-character hex color for this Collection, including the preceding hash sign.',
  `archived` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether this Collection has been archived and should be hidden from users.',
  `location` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/' COMMENT 'Directory-structure path of ancestor Collections. e.g. "/1/2/" means our Parent is Collection 2, and their parent is Collection 1.',
  `personal_owner_id` int(11) DEFAULT NULL COMMENT 'If set, this Collection is a personal Collection, for exclusive use of the User with this ID.',
  `slug` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namespace` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The namespace (hierachy) this Collection belongs to. NULL means the Collection is in the default namespace.',
  `authority_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nullable column to incidate collection''s authority level. Initially values are "official" and nil.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Collections are an optional way to organize Cards and handle permissions for them.';

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`id`, `name`, `description`, `color`, `archived`, `location`, `personal_owner_id`, `slug`, `namespace`, `authority_level`) VALUES
(1, 'Aukerul Shuvo\'s Personal Collection', NULL, '#31698A', b'0', '/', 1, 'aukerul_shuvo_s_personal_collection', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `collection_bookmark`
--

CREATE TABLE `collection_bookmark` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'ID of the User who bookmarked the Collection',
  `collection_id` int(11) NOT NULL COMMENT 'ID of the Card bookmarked by the user',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the bookmark was created'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding bookmarks on collections';

-- --------------------------------------------------------

--
-- Table structure for table `collection_permission_graph_revision`
--

CREATE TABLE `collection_permission_graph_revision` (
  `id` int(11) NOT NULL,
  `before` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Serialized JSON of the collections graph before the changes.',
  `after` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Serialized JSON of the collections graph after the changes.',
  `user_id` int(11) NOT NULL COMMENT 'The ID of the admin who made this set of changes.',
  `created_at` datetime NOT NULL COMMENT 'The timestamp of when these changes were made.',
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Optional remarks explaining why these changes were made.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to keep track of changes made to collections.';

-- --------------------------------------------------------

--
-- Table structure for table `computation_job`
--

CREATE TABLE `computation_job` (
  `id` int(11) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `type` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores submitted async computation jobs.';

-- --------------------------------------------------------

--
-- Table structure for table `computation_job_result`
--

CREATE TABLE `computation_job_result` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `permanence` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores results of async computation jobs.';

-- --------------------------------------------------------

--
-- Table structure for table `core_session`
--

CREATE TABLE `core_session` (
  `id` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `anti_csrf_token` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_session`
--

INSERT INTO `core_session` (`id`, `user_id`, `created_at`, `anti_csrf_token`) VALUES
('8db9d7ce-2a06-4a0d-a19b-b0880138b6d9', 1, '2022-06-13 13:00:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_user`
--

CREATE TABLE `core_user` (
  `id` int(11) NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_salt` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_joined` datetime NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` bit(1) NOT NULL DEFAULT b'0',
  `is_active` bit(1) NOT NULL DEFAULT b'1',
  `reset_token` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_triggered` bigint(20) DEFAULT NULL,
  `is_qbnewb` bit(1) NOT NULL DEFAULT b'1',
  `google_auth` bit(1) NOT NULL DEFAULT b'0',
  `ldap_auth` bit(1) NOT NULL DEFAULT b'0',
  `login_attributes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT 'When was this User last updated?',
  `sso_source` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'String to indicate the SSO backend the user is from',
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Preferred ISO locale (language/country) code, e.g "en" or "en-US", for this User. Overrides site default.',
  `is_datasetnewb` bit(1) NOT NULL DEFAULT b'1' COMMENT 'Boolean flag to indicate if the dataset info modal has been dismissed.',
  `settings` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Serialized JSON containing User-local Settings for this User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_user`
--

INSERT INTO `core_user` (`id`, `email`, `first_name`, `last_name`, `password`, `password_salt`, `date_joined`, `last_login`, `is_superuser`, `is_active`, `reset_token`, `reset_triggered`, `is_qbnewb`, `google_auth`, `ldap_auth`, `login_attributes`, `updated_at`, `sso_source`, `locale`, `is_datasetnewb`, `settings`) VALUES
(1, 'metabase@mail.com', 'Aukerul', 'Shuvo', '$2a$10$/TJrxtB2mn6bV9cqRcnUC.jhabGkSIlOWvCcXaO1fISd5KtoOrOvW', '55c14416-f9bf-4b66-b0d1-3a7fbc3c6b89', '2022-06-13 13:00:03', '2022-06-13 13:00:03', b'1', b'1', NULL, NULL, b'0', b'0', b'0', NULL, '2022-06-15 05:29:06', NULL, NULL, b'1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dashboardcard_series`
--

CREATE TABLE `dashboardcard_series` (
  `id` int(11) NOT NULL,
  `dashboardcard_id` int(11) NOT NULL,
  `card_id` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_bookmark`
--

CREATE TABLE `dashboard_bookmark` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'ID of the User who bookmarked the Dashboard',
  `dashboard_id` int(11) NOT NULL COMMENT 'ID of the Dashboard bookmarked by the user',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the bookmark was created'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding bookmarks on dashboards';

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_favorite`
--

CREATE TABLE `dashboard_favorite` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'ID of the User who favorited the Dashboard.',
  `dashboard_id` int(11) NOT NULL COMMENT 'ID of the Dashboard favorited by the User.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Presence of a row here indicates a given User has favorited a given Dashboard.';

-- --------------------------------------------------------

--
-- Table structure for table `databasechangelog`
--

CREATE TABLE `databasechangelog` (
  `ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AUTHOR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FILENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MD5SUM` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LIQUIBASE` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CONTEXTS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LABELS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `databasechangelog`
--

INSERT INTO `databasechangelog` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`, `DEPLOYMENT_ID`) VALUES
('1', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:49:58', 1, 'EXECUTED', '8:c6ae58b391611a9317a5235970daf2bd', 'createTable tableName=core_organization; createTable tableName=core_user; createTable tableName=core_userorgperm; addUniqueConstraint constraintName=idx_unique_user_id_organization_id, tableName=core_userorgperm; createIndex indexName=idx_userorgp...', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('10', 'cammsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:49:59', 9, 'EXECUTED', '8:8fcc2f7ef28743cc7653d0d2803a789b', 'createTable tableName=revision; createIndex indexName=idx_revision_model_model_id, tableName=revision', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('100', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 98, 'EXECUTED', '8:28b6b684c539d4668110b920985ee363', 'sql; sql', 'Added 0.32.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('101', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 99, 'EXECUTED', '8:58eabb08a175fafe8985208545374675', 'createIndex indexName=idx_field_parent_id, tableName=metabase_field', 'Added 0.32.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('103', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 100, 'EXECUTED', '8:fda3670fd16a40fd9d0f89a003098d54', 'addColumn tableName=metabase_database', 'Added 0.32.10', NULL, '4.8.0', NULL, NULL, '5347796315'),
('104', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 101, 'EXECUTED', '8:21709f17e6d1b521d3d3b8cbb5445218', 'addColumn tableName=core_session', 'Added EE 1.1.6/CE 0.33.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('106', 'sb', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 102, 'EXECUTED', '8:a3dd42bbe25c415ce21e4c180dc1c1d7', 'modifyDataType columnName=database_type, tableName=metabase_field', 'Added 0.33.5', NULL, '4.8.0', NULL, NULL, '5347796315'),
('107', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 103, 'EXECUTED', '8:605c2b4d212315c83727aa3d914cf57f', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('108', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 104, 'EXECUTED', '8:d11419da9384fd27d7b1670707ac864c', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('109', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 105, 'EXECUTED', '8:a5f4ea412eb1d5c1bc824046ad11692f', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('11', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:49:59', 10, 'EXECUTED', '8:ca6561cab1eedbcf4dcb6d6e22cd46c6', 'sql', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('110', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 106, 'EXECUTED', '8:82343097044b9652f73f3d3a2ddd04fe', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('111', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 107, 'EXECUTED', '8:528de1245ba3aa106871d3e5b3eee0ba', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('112', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 108, 'EXECUTED', '8:010a3931299429d1adfa91941c806ea4', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('113', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 109, 'EXECUTED', '8:8f8e0836064bdea82487ecf64a129767', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('114', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 110, 'EXECUTED', '8:7a0bcb25ece6d9a311d6c6be7ed89bb7', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('115', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 111, 'EXECUTED', '8:55c10c2ff7e967e3ea1fdffc5aeed93a', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('116', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 112, 'EXECUTED', '8:dbf7c3a1d8b1eb77b7f5888126b13c2e', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('117', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 113, 'EXECUTED', '8:f2d7f9fb1b6713bc5362fe40bfe3f91f', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('118', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 114, 'EXECUTED', '8:17f4410e30a0c7e84a36517ebf4dab64', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('119', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 115, 'EXECUTED', '8:195cf171ac1d5531e455baf44d9d6561', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('12', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:49:59', 11, 'EXECUTED', '8:1cc6a5e29970d1ae5008ccd842b0b06a', 'addColumn tableName=report_card; addColumn tableName=report_card; addColumn tableName=report_card', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('120', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 116, 'EXECUTED', '8:61f53fac337020aec71868656a719bba', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('121', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 117, 'EXECUTED', '8:1baa145d2ffe1e18d097a63a95476c5f', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('122', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 118, 'EXECUTED', '8:929b3c551a8f631cdce2511612d82d62', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('123', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 119, 'EXECUTED', '8:35e5baddf78df5829fe6889d216436e5', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('124', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 120, 'EXECUTED', '8:ce2322ca187dfac51be8f12f6a132818', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('125', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 121, 'EXECUTED', '8:dd948ac004ceb9d0a300a8e06806945f', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('126', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 122, 'EXECUTED', '8:3d34c0d4e5dbb32b432b83d5322e2aa3', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('127', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 123, 'EXECUTED', '8:18314b269fe11898a433ca9048400975', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('128', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 124, 'EXECUTED', '8:44acbe257817286d88b7892e79363b66', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('129', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 125, 'EXECUTED', '8:f890168c47cc2113a8af77ed3875c4b3', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('13', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:49:59', 12, 'EXECUTED', '8:c8ef7e28056d502c43909e81dd420a91', 'createTable tableName=activity; createIndex indexName=idx_activity_timestamp, tableName=activity; createIndex indexName=idx_activity_user_id, tableName=activity; createIndex indexName=idx_activity_custom_id, tableName=activity', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('130', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 126, 'EXECUTED', '8:ecdcf1fd66b3477e5b6882c3286b2fd8', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('131', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 127, 'EXECUTED', '8:453af2935194978c65b19eae445d85c9', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('132', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 128, 'EXECUTED', '8:d2c37bc80b42a15b65f148bcb1daa86e', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('133', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 129, 'EXECUTED', '8:5b9b539d146fbdb762577dc98e7f3430', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('134', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 130, 'EXECUTED', '8:4d0f688a168db3e357a808263b6ad355', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('135', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 131, 'EXECUTED', '8:2ca54b0828c6aca615fb42064f1ec728', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('136', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 132, 'EXECUTED', '8:7115eebbcf664509b9fc0c39cb6f29e9', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('137', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 133, 'EXECUTED', '8:da754ac6e51313a32de6f6389b29e1ca', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('138', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 134, 'EXECUTED', '8:bfb201761052189e96538f0de3ac76cf', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('139', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 135, 'EXECUTED', '8:fdad4ec86aefb0cdf850b1929b618508', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('14', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:49:59', 13, 'EXECUTED', '8:e0ab939d4315c87ed232b71989dfa7a5', 'createTable tableName=view_log; createIndex indexName=idx_view_log_user_id, tableName=view_log; createIndex indexName=idx_view_log_timestamp, tableName=view_log', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('140', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 136, 'EXECUTED', '8:a0cfe6468160bba8c9d602da736c41fb', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('141', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 137, 'EXECUTED', '8:b6b7faa02cba069e1ed13e365f59cb6b', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('142', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 138, 'EXECUTED', '8:0c291eb50cc0f1fef3d55cfe6b62bedb', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('143', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 139, 'EXECUTED', '8:3d9a5cb41f77a33e834d0562fdddeab6', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('144', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 140, 'EXECUTED', '8:1d5b7f79f97906105e90d330a17c4062', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('145', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 141, 'EXECUTED', '8:b162dd48ef850ab4300e2d714eac504e', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('146', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 142, 'EXECUTED', '8:8c0c1861582d15fe7859358f5d553c91', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('147', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 143, 'EXECUTED', '8:5ccf590332ea0744414e40a990a43275', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('148', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 144, 'EXECUTED', '8:12b42e87d40cd7b6399c1fb0c6704fa7', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('149', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 145, 'EXECUTED', '8:dd45bfc4af5e05701a064a5f2a046d7f', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('15', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:49:59', 14, 'EXECUTED', '8:505b91530103673a9be3382cd2db1070', 'addColumn tableName=revision', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('150', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 146, 'EXECUTED', '8:48beda94aeaa494f798c38a66b90fb2a', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('151', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 147, 'EXECUTED', '8:bb752a7d09d437c7ac294d5ab2600079', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('152', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 148, 'EXECUTED', '8:4bcbc472f2d6ae3a5e7eca425940e52b', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('153', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 149, 'EXECUTED', '8:adce2cca96fe0531b00f9bed6bed8352', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('154', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 150, 'EXECUTED', '8:7a1df4f7a679f47459ea1a1c0991cfba', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('155', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 151, 'EXECUTED', '8:3c78b79c784e3a3ce09a77db1b1d0374', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('156', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 152, 'EXECUTED', '8:51859ee6cca4aca9d141a3350eb5d6b1', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('157', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 153, 'EXECUTED', '8:0197c46bf8536a75dbf7e9aee731f3b2', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('158', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 154, 'EXECUTED', '8:2ebdd5a179ce2487b2e23b6be74a407c', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('159', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 155, 'EXECUTED', '8:c62719dad239c51f045315273b56e2a9', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('16', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:49:59', 15, 'EXECUTED', '8:b81df46fe16c3e8659a81798b97a4793', 'dropNotNullConstraint columnName=last_login, tableName=core_user', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('160', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 156, 'EXECUTED', '8:1441c71af662abb809cba3b3b360ce81', 'sql', 'Added 0.34.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('162', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 157, 'EXECUTED', '8:c37f015ad11d77d66e09925eed605cdf', 'dropTable tableName=query_queryexecution', 'Added 0.23.0 as a data migration; converted to Liquibase migration in 0.35.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('163', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 158, 'EXECUTED', '8:9ef66a82624d70738fc89807a2398ed1', 'dropColumn columnName=read_permissions, tableName=report_card', 'Added 0.35.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('164', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 159, 'EXECUTED', '8:f19470701bbb33f19f91b1199a915881', 'addColumn tableName=core_user', 'Added 0.35.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('165', 'sb', 'migrations/000_migrations.yaml', '2022-06-16 08:50:10', 160, 'EXECUTED', '8:b3ae2b90db5c4264ea2ac50d304d6ad4', 'addColumn tableName=metabase_field; addColumn tableName=metabase_field; addColumn tableName=metabase_table; sql', 'Added field_order to Table and database_position to Field', NULL, '4.8.0', NULL, NULL, '5347796315'),
('166', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:11', 161, 'EXECUTED', '8:cd87d40358297ca4a3a644f92a03c377', 'modifyDataType columnName=updated_at, tableName=metabase_fieldvalues; modifyDataType columnName=updated_at, tableName=query_cache', 'Added 0.36.0/1.35.4', NULL, '4.8.0', NULL, NULL, '5347796315'),
('167', 'walterl, camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:11', 162, 'EXECUTED', '8:7a72d33ad676364d06a83b641f8dc26f', 'sql; createTable tableName=native_query_snippet; createIndex indexName=idx_snippet_name, tableName=native_query_snippet', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('168', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:11', 163, 'EXECUTED', '8:c4ba88582a69b4695512d5f1e114b6da', 'modifyDataType columnName=started_at, tableName=query_execution', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('169', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:11', 164, 'EXECUTED', '8:2b97e6eaa7854e179abb9f3749f73b18', 'dropColumn columnName=rows, tableName=metabase_table', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('17', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:49:59', 16, 'EXECUTED', '8:051c23cd15359364b9895c1569c319e7', 'addColumn tableName=metabase_database; sql', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('170', 'sb', 'migrations/000_migrations.yaml', '2022-06-16 08:50:11', 165, 'EXECUTED', '8:dbd6ee52b0f9195e449a6d744606b599', 'dropColumn columnName=fields_hash, tableName=metabase_table', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('171', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:11', 166, 'EXECUTED', '8:57f4fb33fe80309af71dc8c0c8d90362', 'addColumn tableName=native_query_snippet; createIndex indexName=idx_snippet_collection_id, tableName=native_query_snippet', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('172', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:11', 167, 'EXECUTED', '8:212f4010b504e358853fd017032f844f', 'addColumn tableName=collection', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('173', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:11', 168, 'EXECUTED', '8:4d32b4b7be3f4801e51aeffa5dd47649', 'dropForeignKeyConstraint baseTableName=activity, constraintName=fk_activity_ref_user_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('174', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:11', 169, 'EXECUTED', '8:66f31503ba532702e54ea531af668531', 'addForeignKeyConstraint baseTableName=activity, constraintName=fk_activity_ref_user_id, referencedTableName=core_user', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('175', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:11', 170, 'EXECUTED', '8:c3ceddfca8827d73474cd9a70ea01d1c', 'dropForeignKeyConstraint baseTableName=card_label, constraintName=fk_card_label_ref_card_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('176', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:11', 171, 'EXECUTED', '8:89c918faa84b7f3f5fa291d4da74414c', 'addForeignKeyConstraint baseTableName=card_label, constraintName=fk_card_label_ref_card_id, referencedTableName=report_card', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('177', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:11', 172, 'EXECUTED', '8:d45f2198befc83de1f1f963c750607af', 'dropForeignKeyConstraint baseTableName=card_label, constraintName=fk_card_label_ref_label_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('178', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:12', 173, 'EXECUTED', '8:63d396999449da2d42b3d3e22f3454fa', 'addForeignKeyConstraint baseTableName=card_label, constraintName=fk_card_label_ref_label_id, referencedTableName=label', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('179', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:12', 174, 'EXECUTED', '8:2a0a7956402ef074e5d54c73ac2d5405', 'dropForeignKeyConstraint baseTableName=collection, constraintName=fk_collection_personal_owner_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('18', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:49:59', 17, 'EXECUTED', '8:62a0483dde183cfd18dd0a86e9354288', 'createTable tableName=data_migrations; createIndex indexName=idx_data_migrations_id, tableName=data_migrations', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('180', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:12', 175, 'EXECUTED', '8:b02225e5940a2bcca3d550f24f80123e', 'addForeignKeyConstraint baseTableName=collection, constraintName=fk_collection_personal_owner_id, referencedTableName=core_user', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('181', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:12', 176, 'EXECUTED', '8:16923f06b2bbb60c6ac78a0c4b7e4d4f', 'dropForeignKeyConstraint baseTableName=collection_revision, constraintName=fk_collection_revision_user_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('182', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:12', 177, 'EXECUTED', '8:d59d864c038c530a49056704c93f231d', 'addForeignKeyConstraint baseTableName=collection_revision, constraintName=fk_collection_revision_user_id, referencedTableName=core_user', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('183', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:12', 178, 'EXECUTED', '8:c5ed9a4f44ee92af620a47c80e010a6b', 'dropForeignKeyConstraint baseTableName=computation_job, constraintName=fk_computation_job_ref_user_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('184', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:12', 179, 'EXECUTED', '8:70317e2bdaac90b9ddc33b1b93ada479', 'addForeignKeyConstraint baseTableName=computation_job, constraintName=fk_computation_job_ref_user_id, referencedTableName=core_user', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('185', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:12', 180, 'EXECUTED', '8:12e7457ec2d2b1a99a3fadfc64d7b7f9', 'dropForeignKeyConstraint baseTableName=computation_job_result, constraintName=fk_computation_result_ref_job_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('186', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:12', 181, 'EXECUTED', '8:526987d0f6b2f01d7bfc9e3179721be6', 'addForeignKeyConstraint baseTableName=computation_job_result, constraintName=fk_computation_result_ref_job_id, referencedTableName=computation_job', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('187', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:12', 182, 'EXECUTED', '8:3fbb75c0c491dc6628583184202b8f39', 'dropForeignKeyConstraint baseTableName=core_session, constraintName=fk_session_ref_user_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('188', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:12', 183, 'EXECUTED', '8:4dc500830cd4c5715ca8b0956e37b3d5', 'addForeignKeyConstraint baseTableName=core_session, constraintName=fk_session_ref_user_id, referencedTableName=core_user', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('189', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:12', 184, 'EXECUTED', '8:e07396e0ee587dcf321d21cffa9eec29', 'dropForeignKeyConstraint baseTableName=dashboardcard_series, constraintName=fk_dashboardcard_series_ref_card_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('19', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:49:59', 18, 'EXECUTED', '8:269b129dbfc39a6f9e0d3bc61c3c3b70', 'addColumn tableName=metabase_table', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('190', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:12', 185, 'EXECUTED', '8:eded791094a16bf398896c790645c411', 'addForeignKeyConstraint baseTableName=dashboardcard_series, constraintName=fk_dashboardcard_series_ref_card_id, referencedTableName=report_card', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('191', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:12', 186, 'EXECUTED', '8:bb5b9a3d64b2e44318e159e7f1fecde2', 'dropForeignKeyConstraint baseTableName=dashboardcard_series, constraintName=fk_dashboardcard_series_ref_dashboardcard_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('192', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:12', 187, 'EXECUTED', '8:7d96911036dec2fee64fe8ae57c131b3', 'addForeignKeyConstraint baseTableName=dashboardcard_series, constraintName=fk_dashboardcard_series_ref_dashboardcard_id, referencedTableName=report_dashboardcard', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('193', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:12', 188, 'EXECUTED', '8:db171179fe094db9fee7e2e7df60fa4e', 'dropForeignKeyConstraint baseTableName=group_table_access_policy, constraintName=fk_gtap_card_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('194', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:13', 189, 'EXECUTED', '8:fccb724d7ae7606e2e7638de1791392a', 'addForeignKeyConstraint baseTableName=group_table_access_policy, constraintName=fk_gtap_card_id, referencedTableName=report_card', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('195', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:13', 190, 'EXECUTED', '8:1d720af9f917007024c91d40410bc91d', 'dropForeignKeyConstraint baseTableName=metabase_field, constraintName=fk_field_parent_ref_field_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('196', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:13', 191, 'EXECUTED', '8:c52f5dbf742feef12a3803bda92a425b', 'addForeignKeyConstraint baseTableName=metabase_field, constraintName=fk_field_parent_ref_field_id, referencedTableName=metabase_field', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('197', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:13', 192, 'EXECUTED', '8:9c1c950b709050abe91cea17fd5970cc', 'dropForeignKeyConstraint baseTableName=metabase_field, constraintName=fk_field_ref_table_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('198', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:13', 193, 'EXECUTED', '8:e24198ff4825a41d17ceaebd71692103', 'addForeignKeyConstraint baseTableName=metabase_field, constraintName=fk_field_ref_table_id, referencedTableName=metabase_table', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('199', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:13', 194, 'EXECUTED', '8:146efae3f2938538961835fe07433ee1', 'dropForeignKeyConstraint baseTableName=metabase_fieldvalues, constraintName=fk_fieldvalues_ref_field_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('2', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:49:58', 2, 'EXECUTED', '8:b93383f26ef8fd74b0d0c79f71f6dafb', 'createTable tableName=core_session', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('20', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:50:00', 19, 'EXECUTED', '8:40b0729e80f3f66f92c590268ce390dd', 'createTable tableName=pulse; createIndex indexName=idx_pulse_creator_id, tableName=pulse; createTable tableName=pulse_card; createIndex indexName=idx_pulse_card_pulse_id, tableName=pulse_card; createIndex indexName=idx_pulse_card_card_id, tableNam...', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('200', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:13', 195, 'EXECUTED', '8:f5e7e79cb81b8d2245663c482746c853', 'addForeignKeyConstraint baseTableName=metabase_fieldvalues, constraintName=fk_fieldvalues_ref_field_id, referencedTableName=metabase_field', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('201', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:13', 196, 'EXECUTED', '8:2d79321a27fde6cb3c4fabdb86dc60ec', 'dropForeignKeyConstraint baseTableName=metabase_table, constraintName=fk_table_ref_database_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('202', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:13', 197, 'EXECUTED', '8:d0cefed061c4abbf2b0a0fd2a66817cb', 'addForeignKeyConstraint baseTableName=metabase_table, constraintName=fk_table_ref_database_id, referencedTableName=metabase_database', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('203', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:13', 198, 'EXECUTED', '8:28b4ec07bfbf4b86532fe9357effdb8b', 'dropForeignKeyConstraint baseTableName=metric, constraintName=fk_metric_ref_creator_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('204', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:13', 199, 'EXECUTED', '8:7195937fd2144533edfa2302ba2ae653', 'addForeignKeyConstraint baseTableName=metric, constraintName=fk_metric_ref_creator_id, referencedTableName=core_user', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('205', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:13', 200, 'EXECUTED', '8:4b2d5f1458641dd1b9dbc5f41600be8e', 'dropForeignKeyConstraint baseTableName=metric, constraintName=fk_metric_ref_table_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('206', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:14', 201, 'EXECUTED', '8:959ef448c23aaf3acf5b69f297fe4b2f', 'addForeignKeyConstraint baseTableName=metric, constraintName=fk_metric_ref_table_id, referencedTableName=metabase_table', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('207', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:14', 202, 'EXECUTED', '8:18135d674f2fe502313adb0475f5f139', 'dropForeignKeyConstraint baseTableName=metric_important_field, constraintName=fk_metric_important_field_metabase_field_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('208', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:14', 203, 'EXECUTED', '8:4c86c17a00a81dfdf35a181e3dd3b08f', 'addForeignKeyConstraint baseTableName=metric_important_field, constraintName=fk_metric_important_field_metabase_field_id, referencedTableName=metabase_field', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('209', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:14', 204, 'EXECUTED', '8:1b9c3544bf89093fc9e4f7f191fdc6df', 'dropForeignKeyConstraint baseTableName=metric_important_field, constraintName=fk_metric_important_field_metric_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('21', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:50:00', 20, 'EXECUTED', '8:625a55f4f516a883eae4933528ac08fd', 'createTable tableName=segment; createIndex indexName=idx_segment_creator_id, tableName=segment; createIndex indexName=idx_segment_table_id, tableName=segment', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('210', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:14', 205, 'EXECUTED', '8:842d166cdf7b0a29c88efdaf95c9d0bf', 'addForeignKeyConstraint baseTableName=metric_important_field, constraintName=fk_metric_important_field_metric_id, referencedTableName=metric', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('211', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:14', 206, 'EXECUTED', '8:91c64815a1aefb07dd124d493bfeeea9', 'dropForeignKeyConstraint baseTableName=native_query_snippet, constraintName=fk_snippet_collection_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('212', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:14', 207, 'EXECUTED', '8:b25064ee26b71f61906a833bc22ebbc2', 'addForeignKeyConstraint baseTableName=native_query_snippet, constraintName=fk_snippet_collection_id, referencedTableName=collection', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('213', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:14', 208, 'EXECUTED', '8:60a7d628e4f68ee4c85f5f298b1d9865', 'dropForeignKeyConstraint baseTableName=permissions, constraintName=fk_permissions_group_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('214', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:14', 209, 'EXECUTED', '8:1c3c480313967a2d9f324a094ba25f4d', 'addForeignKeyConstraint baseTableName=permissions, constraintName=fk_permissions_group_id, referencedTableName=permissions_group', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('215', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:14', 210, 'EXECUTED', '8:5d2c67ccead52970e9d85beb7eda48b9', 'dropForeignKeyConstraint baseTableName=permissions_group_membership, constraintName=fk_permissions_group_group_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('216', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:14', 211, 'EXECUTED', '8:35fcd5d48600e887188eb1b990e6cc35', 'addForeignKeyConstraint baseTableName=permissions_group_membership, constraintName=fk_permissions_group_group_id, referencedTableName=permissions_group', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('217', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:14', 212, 'EXECUTED', '8:da7460a35a724109ae9b5096cd18666b', 'dropForeignKeyConstraint baseTableName=permissions_group_membership, constraintName=fk_permissions_group_membership_user_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('218', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:14', 213, 'EXECUTED', '8:dc04b7eb04cd870c53102cb37fd75a5f', 'addForeignKeyConstraint baseTableName=permissions_group_membership, constraintName=fk_permissions_group_membership_user_id, referencedTableName=core_user', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('219', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:14', 214, 'EXECUTED', '8:02c690f34fe8803e42441f5037d33017', 'dropForeignKeyConstraint baseTableName=permissions_revision, constraintName=fk_permissions_revision_user_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('22', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:50:00', 21, 'EXECUTED', '8:80bc8a62a90791a79adedcf1ac3c6f08', 'addColumn tableName=revision', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('220', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:14', 215, 'EXECUTED', '8:8b8447405d7b2b52358c9676d64b7651', 'addForeignKeyConstraint baseTableName=permissions_revision, constraintName=fk_permissions_revision_user_id, referencedTableName=core_user', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('221', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:15', 216, 'EXECUTED', '8:54a4c0d8a4eda80dc81fb549a629d075', 'dropForeignKeyConstraint baseTableName=pulse, constraintName=fk_pulse_collection_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('222', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:15', 217, 'EXECUTED', '8:c5f22e925be3a8fd0e4f47a491f599ee', 'addForeignKeyConstraint baseTableName=pulse, constraintName=fk_pulse_collection_id, referencedTableName=collection', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('223', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:15', 218, 'EXECUTED', '8:de743e384ff90a6a31a3caebe0abb775', 'dropForeignKeyConstraint baseTableName=pulse, constraintName=fk_pulse_ref_creator_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('224', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:15', 219, 'EXECUTED', '8:b8fdf9c14d7ea3131a0a6b1f1036f91a', 'addForeignKeyConstraint baseTableName=pulse, constraintName=fk_pulse_ref_creator_id, referencedTableName=core_user', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('225', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:15', 220, 'EXECUTED', '8:495a4e12cf75cac5ff54738772e6a998', 'dropForeignKeyConstraint baseTableName=pulse_card, constraintName=fk_pulse_card_ref_card_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('226', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:15', 221, 'EXECUTED', '8:cf383d74bc407065c78c060203ba4560', 'addForeignKeyConstraint baseTableName=pulse_card, constraintName=fk_pulse_card_ref_card_id, referencedTableName=report_card', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('227', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:15', 222, 'EXECUTED', '8:e23eaf74ab7edacfb34bd5caf05cf66f', 'dropForeignKeyConstraint baseTableName=pulse_card, constraintName=fk_pulse_card_ref_pulse_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('228', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:15', 223, 'EXECUTED', '8:d458ddb160f61e93bb69738f262de2b4', 'addForeignKeyConstraint baseTableName=pulse_card, constraintName=fk_pulse_card_ref_pulse_id, referencedTableName=pulse', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('229', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:15', 224, 'EXECUTED', '8:1cb939d172989cb1629e9a3da768596d', 'dropForeignKeyConstraint baseTableName=pulse_channel, constraintName=fk_pulse_channel_ref_pulse_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('23', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:50:00', 22, 'EXECUTED', '8:b6f054835db2b2688a1be1de3707f9a9', 'modifyDataType columnName=rows, tableName=metabase_table', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('230', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:15', 225, 'EXECUTED', '8:62baea3334ac5f21feac84497f6bf643', 'addForeignKeyConstraint baseTableName=pulse_channel, constraintName=fk_pulse_channel_ref_pulse_id, referencedTableName=pulse', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('231', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:15', 226, 'EXECUTED', '8:d096a9ce70fc0b7dfbc67ee1be4c3e31', 'dropForeignKeyConstraint baseTableName=pulse_channel_recipient, constraintName=fk_pulse_channel_recipient_ref_pulse_channel_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('232', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:15', 227, 'EXECUTED', '8:be2457ae1e386c9d5ec5bfa4ae681fd6', 'addForeignKeyConstraint baseTableName=pulse_channel_recipient, constraintName=fk_pulse_channel_recipient_ref_pulse_channel_id, referencedTableName=pulse_channel', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('233', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:15', 228, 'EXECUTED', '8:d5c018882af16093de446e025e2599b7', 'dropForeignKeyConstraint baseTableName=pulse_channel_recipient, constraintName=fk_pulse_channel_recipient_ref_user_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('234', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:15', 229, 'EXECUTED', '8:edb6ced6c353064c46fa00b54e187aef', 'addForeignKeyConstraint baseTableName=pulse_channel_recipient, constraintName=fk_pulse_channel_recipient_ref_user_id, referencedTableName=core_user', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('235', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:15', 230, 'EXECUTED', '8:550c64e41e55233d52ac3ef24d664be1', 'dropForeignKeyConstraint baseTableName=report_card, constraintName=fk_card_collection_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('236', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:16', 231, 'EXECUTED', '8:04300b298b663fc2a2f3a324d1051c3c', 'addForeignKeyConstraint baseTableName=report_card, constraintName=fk_card_collection_id, referencedTableName=collection', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('237', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:16', 232, 'EXECUTED', '8:227a9133cdff9f1b60d8af53688ab12e', 'dropForeignKeyConstraint baseTableName=report_card, constraintName=fk_card_made_public_by_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('238', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:16', 233, 'EXECUTED', '8:7000766ddca2c914ac517611e7d86549', 'addForeignKeyConstraint baseTableName=report_card, constraintName=fk_card_made_public_by_id, referencedTableName=core_user', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('239', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:16', 234, 'EXECUTED', '8:672f4972653f70464982008a7abea3e1', 'dropForeignKeyConstraint baseTableName=report_card, constraintName=fk_card_ref_user_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('24', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:50:00', 23, 'EXECUTED', '8:5e7354b3f92782d1151be0aa9d3fe625', 'createTable tableName=dependency; createIndex indexName=idx_dependency_model, tableName=dependency; createIndex indexName=idx_dependency_model_id, tableName=dependency; createIndex indexName=idx_dependency_dependent_on_model, tableName=dependency;...', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('240', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:16', 235, 'EXECUTED', '8:165b07c8ceb004097c83ee1b689164e4', 'addForeignKeyConstraint baseTableName=report_card, constraintName=fk_card_ref_user_id, referencedTableName=core_user', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('241', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:16', 236, 'EXECUTED', '8:b0a9e3d801e64e0a66c3190e458c01ae', 'dropForeignKeyConstraint baseTableName=report_card, constraintName=fk_report_card_ref_database_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('242', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:16', 237, 'EXECUTED', '8:bf10f944715f87c3ad0dd7472d84df62', 'addForeignKeyConstraint baseTableName=report_card, constraintName=fk_report_card_ref_database_id, referencedTableName=metabase_database', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('243', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:16', 238, 'EXECUTED', '8:cba5d2bfb36e13c60d82cc6cca659b61', 'dropForeignKeyConstraint baseTableName=report_card, constraintName=fk_report_card_ref_table_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('244', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:16', 239, 'EXECUTED', '8:4d40104eaa47d01981644462ef56f369', 'addForeignKeyConstraint baseTableName=report_card, constraintName=fk_report_card_ref_table_id, referencedTableName=metabase_table', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('245', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:16', 240, 'EXECUTED', '8:a8f9206dadfe23662d547035f71e3846', 'dropForeignKeyConstraint baseTableName=report_cardfavorite, constraintName=fk_cardfavorite_ref_card_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('246', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:16', 241, 'EXECUTED', '8:e5db34b9db22254f7445fd65ecf45356', 'addForeignKeyConstraint baseTableName=report_cardfavorite, constraintName=fk_cardfavorite_ref_card_id, referencedTableName=report_card', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('247', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:16', 242, 'EXECUTED', '8:76de7337a12a5ef42dcbb9274bd2d70f', 'dropForeignKeyConstraint baseTableName=report_cardfavorite, constraintName=fk_cardfavorite_ref_user_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('248', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:16', 243, 'EXECUTED', '8:0640fb00a090cbe5dc545afbe0d25811', 'addForeignKeyConstraint baseTableName=report_cardfavorite, constraintName=fk_cardfavorite_ref_user_id, referencedTableName=core_user', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('249', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:17', 244, 'EXECUTED', '8:16ef5909a72ac4779427e432b3b3ce18', 'dropForeignKeyConstraint baseTableName=report_dashboard, constraintName=fk_dashboard_collection_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('25', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:50:00', 24, 'EXECUTED', '8:d4523147fa777867f757fb1b5a83969a', 'createTable tableName=metric; createIndex indexName=idx_metric_creator_id, tableName=metric; createIndex indexName=idx_metric_table_id, tableName=metric', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('250', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:17', 245, 'EXECUTED', '8:2e80ebe19816b7bde99050638772cf99', 'addForeignKeyConstraint baseTableName=report_dashboard, constraintName=fk_dashboard_collection_id, referencedTableName=collection', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('251', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:17', 246, 'EXECUTED', '8:c12aa099f293b1e3d71da5e3edb3c45a', 'dropForeignKeyConstraint baseTableName=report_dashboard, constraintName=fk_dashboard_made_public_by_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('252', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:17', 247, 'EXECUTED', '8:26b16d4d0cf7a77c1d687f49b029f421', 'addForeignKeyConstraint baseTableName=report_dashboard, constraintName=fk_dashboard_made_public_by_id, referencedTableName=core_user', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('253', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:17', 248, 'EXECUTED', '8:bbf118edaa88a8ad486ec0d6965504b6', 'dropForeignKeyConstraint baseTableName=report_dashboard, constraintName=fk_dashboard_ref_user_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('254', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:17', 249, 'EXECUTED', '8:7fc35d78c63f41eb4dbd23cfd1505f0b', 'addForeignKeyConstraint baseTableName=report_dashboard, constraintName=fk_dashboard_ref_user_id, referencedTableName=core_user', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('255', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:17', 250, 'EXECUTED', '8:f6564a7516ace55104a3173eebf4c629', 'dropForeignKeyConstraint baseTableName=report_dashboardcard, constraintName=fk_dashboardcard_ref_card_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('256', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:17', 251, 'EXECUTED', '8:61db9be3b4dd7ed1e9d01a7254e87544', 'addForeignKeyConstraint baseTableName=report_dashboardcard, constraintName=fk_dashboardcard_ref_card_id, referencedTableName=report_card', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('257', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:17', 252, 'EXECUTED', '8:c8b51dc7ba4da9f7995a0b0c17fadad2', 'dropForeignKeyConstraint baseTableName=report_dashboardcard, constraintName=fk_dashboardcard_ref_dashboard_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('258', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:17', 253, 'EXECUTED', '8:58974c6ad8aee63f09e6e48b1a78c267', 'addForeignKeyConstraint baseTableName=report_dashboardcard, constraintName=fk_dashboardcard_ref_dashboard_id, referencedTableName=report_dashboard', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('259', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:17', 254, 'EXECUTED', '8:be4a52feb3b12e655c0bbd34477749b0', 'dropForeignKeyConstraint baseTableName=revision, constraintName=fk_revision_ref_user_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('26', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:50:00', 25, 'EXECUTED', '8:ddef40b95c55cf4ac0e6a5161911a4cb', 'addColumn tableName=metabase_database; sql', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('260', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:17', 255, 'EXECUTED', '8:4b370f9c9073a6f8f585aab713c57f47', 'addForeignKeyConstraint baseTableName=revision, constraintName=fk_revision_ref_user_id, referencedTableName=core_user', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('261', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:17', 256, 'EXECUTED', '8:173fe552fdf72fdb4efbc01a6ac4f7ad', 'dropForeignKeyConstraint baseTableName=segment, constraintName=fk_segment_ref_creator_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('262', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:17', 257, 'EXECUTED', '8:50927b8b1d1809f32c11d2e649dbcb94', 'addForeignKeyConstraint baseTableName=segment, constraintName=fk_segment_ref_creator_id, referencedTableName=core_user', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('263', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:17', 258, 'EXECUTED', '8:0b10c8664506917cc50359e9634c121c', 'dropForeignKeyConstraint baseTableName=segment, constraintName=fk_segment_ref_table_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('264', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 259, 'EXECUTED', '8:b132aedf6fbdcc5d956a2d3a154cc035', 'addForeignKeyConstraint baseTableName=segment, constraintName=fk_segment_ref_table_id, referencedTableName=metabase_table', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('265', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 260, 'EXECUTED', '8:2e339ecb05463b3765f9bb266bd28297', 'dropForeignKeyConstraint baseTableName=view_log, constraintName=fk_view_log_ref_user_id', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('266', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 261, 'EXECUTED', '8:31506e118764f5e520f755f26c696bb8', 'addForeignKeyConstraint baseTableName=view_log, constraintName=fk_view_log_ref_user_id, referencedTableName=core_user', 'Added 0.36.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('269', 'rlotun', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 262, 'EXECUTED', '8:215609ca9dce2181687b4fa65e7351ba', 'sql', 'Added 0.37.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('27', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:50:00', 26, 'EXECUTED', '8:522ded869baeb030fa3889e16e28cbad', 'createTable tableName=dashboardcard_series; createIndex indexName=idx_dashboardcard_series_dashboardcard_id, tableName=dashboardcard_series; createIndex indexName=idx_dashboardcard_series_card_id, tableName=dashboardcard_series', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('270', 'rlotun', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 263, 'MARK_RAN', '8:17001a192ba1df02104cc0d15569cbe5', 'sql', 'Added 0.37.0', NULL, '4.8.0', NULL, NULL, '5347796315');
INSERT INTO `databasechangelog` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`, `DEPLOYMENT_ID`) VALUES
('271', 'rlotun', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 264, 'MARK_RAN', '8:ce8ddb253a303d4f8924ff5a187080c0', 'modifyDataType columnName=email, tableName=core_user', 'Added 0.37.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('273', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 265, 'EXECUTED', '8:5348576bb9852f6f947e1aa39cd1626f', 'addDefaultValue columnName=is_superuser, tableName=core_user', 'Added 0.37.1', NULL, '4.8.0', NULL, NULL, '5347796315'),
('274', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 266, 'EXECUTED', '8:11a8a84b9ba7634aeda625ff3f487d22', 'addDefaultValue columnName=is_active, tableName=core_user', 'Added 0.37.1', NULL, '4.8.0', NULL, NULL, '5347796315'),
('275', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 267, 'EXECUTED', '8:447d9e294f59dd1058940defec7e0f40', 'addColumn tableName=metabase_database', 'Added 0.38.0 refingerprint to Database', NULL, '4.8.0', NULL, NULL, '5347796315'),
('276', 'robroland', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 268, 'EXECUTED', '8:ae43765761ef0f32c8a6f1fb88ead0ca', 'addColumn tableName=pulse_card', 'Added 0.38.0 - Dashboard subscriptions', NULL, '4.8.0', NULL, NULL, '5347796315'),
('277', 'tsmacdonald', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 269, 'EXECUTED', '8:367180f0820b72ad2c60212e67ae53e7', 'dropForeignKeyConstraint baseTableName=pulse_card, constraintName=fk_pulse_card_ref_pulse_card_id', 'Added 0.38.0 - Dashboard subscriptions', NULL, '4.8.0', NULL, NULL, '5347796315'),
('278', 'tsmacdonald', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 270, 'EXECUTED', '8:fc4fb1c1e3344374edd7b9f1f0d34c89', 'addForeignKeyConstraint baseTableName=pulse_card, constraintName=fk_pulse_card_ref_pulse_card_id, referencedTableName=report_dashboardcard', 'Added 0.38.0 - Dashboard subscrptions', NULL, '4.8.0', NULL, NULL, '5347796315'),
('279', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 271, 'EXECUTED', '8:63dfccd51b62b939da71fe4435f58679', 'addColumn tableName=pulse', 'Added 0.38.0 - Dashboard subscriptions', NULL, '4.8.0', NULL, NULL, '5347796315'),
('28', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:50:00', 27, 'EXECUTED', '8:428e4eb05e4e29141735adf9ae141a0b', 'addColumn tableName=core_user', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('280', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 272, 'EXECUTED', '8:ae966ee1e40f20ea438daba954a8c2a6', 'addForeignKeyConstraint baseTableName=pulse, constraintName=fk_pulse_ref_dashboard_id, referencedTableName=report_dashboard', 'Added 0.38.0 - Dashboard subscriptions', NULL, '4.8.0', NULL, NULL, '5347796315'),
('281', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 273, 'EXECUTED', '8:3039286581c58eee7cca9c25fdf6d792', 'renameColumn newColumnName=semantic_type, oldColumnName=special_type, tableName=metabase_field', 'Added 0.39 - Semantic type system - rename special_type', NULL, '4.8.0', NULL, NULL, '5347796315'),
('282', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 274, 'EXECUTED', '8:d4b8566ee11d9f8a3d6c8c9539f6526d', 'sql; sql; sql', 'Added 0.39.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('283', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 275, 'EXECUTED', '8:2220e1b1cdb57212820b96fa3107f7c3', 'sql; sql; sql', 'Added 0.39.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('284', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 276, 'EXECUTED', '8:c7dc9a60bcaf9b2ffcbaabd650c959b2', 'addColumn tableName=metabase_field', 'Added 0.39 - Semantic type system - add effective type', NULL, '4.8.0', NULL, NULL, '5347796315'),
('285', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 277, 'EXECUTED', '8:cf7d6f5135fa3397a7dc67509d1c286e', 'addColumn tableName=metabase_field', 'Added 0.39 - Semantic type system - add coercion column', NULL, '4.8.0', NULL, NULL, '5347796315'),
('286', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:18', 278, 'EXECUTED', '8:bce9ab328411f05d8c52d64bff5bded0', 'sql', 'Added 0.39 - Semantic type system - set effective_type default', NULL, '4.8.0', NULL, NULL, '5347796315'),
('287', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 279, 'EXECUTED', '8:0679eedae767a8648383aac2f923e413', 'sql', 'Added 0.39 - Semantic type system - migrate ISO8601 strings', NULL, '4.8.0', NULL, NULL, '5347796315'),
('288', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 280, 'EXECUTED', '8:943c6dd0c9339729fefcee9207227849', 'sql', 'Added 0.39 - Semantic type system - migrate unix timestamps', NULL, '4.8.0', NULL, NULL, '5347796315'),
('289', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 281, 'EXECUTED', '8:9f7f2e9bbf3236f204c644dc8ea7abef', 'sql', 'Added 0.39 - Semantic type system - migrate unix timestamps (corrects typo- seconds was migrated correctly, not millis and micros)', NULL, '4.8.0', NULL, NULL, '5347796315'),
('29', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:50:00', 28, 'EXECUTED', '8:8b02731cc34add3722c926dfd7376ae0', 'addColumn tableName=pulse_channel', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('290', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 282, 'EXECUTED', '8:98ea7254bc843302db4afe493c4c75e6', 'sql', 'Added 0.39 - Semantic type system - Clobber semantic_type where there was a coercion', NULL, '4.8.0', NULL, NULL, '5347796315'),
('291', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 283, 'EXECUTED', '8:21c1a0457ea0353a8b1a852918bb9032', 'createTable tableName=login_history', 'Added 0.39.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('292', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 284, 'EXECUTED', '8:e4ac005f4d4e73d5e1176bcbde510d6e', 'createIndex indexName=idx_user_id, tableName=login_history', 'Added 0.39.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('293', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 285, 'EXECUTED', '8:7ba1bd887f8ae11a186b0e3fe69ab3e0', 'addForeignKeyConstraint baseTableName=login_history, constraintName=fk_login_history_session_id, referencedTableName=core_session', 'Added 0.39.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('294', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 286, 'EXECUTED', '8:88d7a9c88866af42b9f0e7c1df9c2fd0', 'createIndex indexName=idx_session_id, tableName=login_history', 'Added 0.39.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('295', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 287, 'EXECUTED', '8:501e85a50912649416ec22b2871af087', 'createIndex indexName=idx_timestamp, tableName=login_history', 'Added 0.39.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('296', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 288, 'EXECUTED', '8:f9eb8b15c2c889334f3848a6bb4ebdb4', 'createIndex indexName=idx_user_id_device_id, tableName=login_history', 'Added 0.39.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('297', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 289, 'EXECUTED', '8:06c180e4c8361f7550f6f4deaf9fc855', 'createIndex indexName=idx_user_id_timestamp, tableName=login_history', 'Added 0.39.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('298', 'tsmacdonald', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 290, 'EXECUTED', '8:3c73f77d8d939d14320964a35aeaad5e', 'addColumn tableName=pulse', 'Added 0.39.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('299', 'tsmacdonald', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 291, 'EXECUTED', '8:ee3a96e30b07f37240a933e2f0710082', 'addNotNullConstraint columnName=parameters, tableName=pulse', 'Added 0.39.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('30', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:50:00', 29, 'EXECUTED', '8:2c3a50cef177cb90d47a9973cd5934e5', 'addColumn tableName=metabase_field; addNotNullConstraint columnName=visibility_type, tableName=metabase_field', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('300', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 292, 'EXECUTED', '8:8b142aea1e3697d8630a4620ae763c4d', 'renameTable newTableName=collection_permission_graph_revision, oldTableName=collection_revision', 'Added 0.40.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('301', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 293, 'MARK_RAN', '8:aaf1a546a6f5932a157d016f72c02f8a', 'sql', 'Added 0.40.0 renaming collection_revision to collection_permission_graph_revision', NULL, '4.8.0', NULL, NULL, '5347796315'),
('303', 'tsmacdonald', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 294, 'EXECUTED', '8:bfa9e69eaeed6b1949670730cbda96f8', 'createTable tableName=moderation_review', 'Added 0.40.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('304', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 295, 'EXECUTED', '8:35960cd7ee3081be719bfb5267ae1a83', 'sql', 'Added 0.40.0 (replaces a data migration dating back to 0.20.0)', NULL, '4.8.0', NULL, NULL, '5347796315'),
('305', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 296, 'EXECUTED', '8:0a0c65f58b80bf74c149a3854cbeeae4', 'sql', 'Added 0.40.0 (replaces a data migration dating back to 0.20.0)', NULL, '4.8.0', NULL, NULL, '5347796315'),
('308', 'howonlee', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 297, 'EXECUTED', '8:4a52c3a0391a0313a062b60a52c0d7de', 'addColumn tableName=query_execution', 'Added 0.40.0 Track cache hits in query_execution table', NULL, '4.8.0', NULL, NULL, '5347796315'),
('309', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 298, 'EXECUTED', '8:26cc1f3ba949d8ce0d56350caacffbd8', 'addColumn tableName=collection', 'Added 0.40.0 - Add type to collections', NULL, '4.8.0', NULL, NULL, '5347796315'),
('31', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:50:00', 30, 'EXECUTED', '8:30a33a82bab0bcbb2ccb6738d48e1421', 'addColumn tableName=metabase_field', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('310', 'howonlee', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 299, 'EXECUTED', '8:eeba2296f23236d035812360122fd065', 'update tableName=setting', 'Added 0.40.0 Migrate friendly field names', NULL, '4.8.0', NULL, NULL, '5347796315'),
('311', 'howonlee', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 300, 'EXECUTED', '8:a26e31914822a5176848abbb7c5415bd', 'sql; sql', 'Added 0.40.0 Migrate friendly field names, not noop', NULL, '4.8.0', NULL, NULL, '5347796315'),
('312', 'noahmoss', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 301, 'EXECUTED', '8:77ef89ba2e7bc19231d9364492091764', 'sql; sql; sql', 'Added 0.41.0 Backfill collection_id for dashboard subscriptions', NULL, '4.8.0', NULL, NULL, '5347796315'),
('313', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 302, 'EXECUTED', '8:d56afe268ba878cfa474c2d12c385623', 'createTable tableName=secret', 'Added 0.42.0 - Secret domain object.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('314', 'howonlee', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 303, 'EXECUTED', '8:c9ad2637412d91b26b616a4df4190704', 'addColumn tableName=metabase_database', 'Added 0.41.0 Fine grained caching controls', NULL, '4.8.0', NULL, NULL, '5347796315'),
('315', 'howonlee', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 304, 'EXECUTED', '8:5b186b8ab743cde5a7f4bf5eadcd520c', 'addColumn tableName=report_dashboard', 'Added 0.41.0 Fine grained caching controls, pt 2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('316', 'howonlee', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 305, 'EXECUTED', '8:1b7c340684b27af9179613bc351e444f', 'addColumn tableName=view_log', 'Added 0.41.0 Fine grained caching controls, pt 3', NULL, '4.8.0', NULL, NULL, '5347796315'),
('32', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:50:01', 32, 'EXECUTED', '8:ccbc51ac2b9446103414e98e68332036', 'createTable tableName=raw_table; createIndex indexName=idx_rawtable_database_id, tableName=raw_table; addUniqueConstraint constraintName=uniq_raw_table_db_schema_name, tableName=raw_table; createTable tableName=raw_column; createIndex indexName=id...', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('32', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:01', 31, 'EXECUTED', '8:28afcfc9b7f1bd1b08caa9d527355c48', 'createTable tableName=label; createIndex indexName=idx_label_slug, tableName=label; createTable tableName=card_label; addUniqueConstraint constraintName=unique_card_label_card_id_label_id, tableName=card_label; createIndex indexName=idx_card_label...', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('34', 'tlrobinson', 'migrations/000_migrations.yaml', '2022-06-16 08:50:01', 33, 'EXECUTED', '8:52b082600b05bbbc46bfe837d1f37a82', 'addColumn tableName=pulse_channel', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('35', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:50:01', 34, 'EXECUTED', '8:91b72167fca724e6b6a94b64f886cf09', 'modifyDataType columnName=value, tableName=setting', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('36', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:50:01', 35, 'EXECUTED', '8:252e08892449dceb16c3d91337bd9573', 'addColumn tableName=report_dashboard; addNotNullConstraint columnName=parameters, tableName=report_dashboard; addColumn tableName=report_dashboardcard; addNotNullConstraint columnName=parameter_mappings, tableName=report_dashboardcard', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('37', 'tlrobinson', 'migrations/000_migrations.yaml', '2022-06-16 08:50:01', 36, 'EXECUTED', '8:07d959eff81777e5690e2920583cfe5f', 'addColumn tableName=query_queryexecution; addNotNullConstraint columnName=query_hash, tableName=query_queryexecution; createIndex indexName=idx_query_queryexecution_query_hash, tableName=query_queryexecution; createIndex indexName=idx_query_querye...', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('38', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:02', 37, 'EXECUTED', '8:c9251b99ab1122ef441117d5d9852d29', 'addColumn tableName=metabase_database; addColumn tableName=metabase_table; addColumn tableName=metabase_field; addColumn tableName=report_dashboard; addColumn tableName=metric; addColumn tableName=segment; addColumn tableName=metabase_database; ad...', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('381', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 306, 'EXECUTED', '8:048be5b22042724ab3db240e14e43886', 'createIndex indexName=idx_query_execution_card_id, tableName=query_execution', 'Added 0.41.2 Add index to QueryExecution card_id to fix performance issues (#18759)', NULL, '4.8.0', NULL, NULL, '5347796315'),
('382', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 307, 'EXECUTED', '8:e8c01b2cf428b1e8968393cf31afb188', 'createIndex indexName=idx_moderation_review_item_type_item_id, tableName=moderation_review', 'Added 0.41.2 Add index to ModerationReview moderated_item_type + moderated_item_id to fix performance issues (#18759)', NULL, '4.8.0', NULL, NULL, '5347796315'),
('383', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 308, 'EXECUTED', '8:eacd3281e0397c61047e4a69e725a5ec', 'createIndex indexName=idx_query_execution_card_id_started_at, tableName=query_execution', 'Added 0.41.3 -- Add index to QueryExecution card_id + started_at to fix performance issue', NULL, '4.8.0', NULL, NULL, '5347796315'),
('39', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:02', 38, 'EXECUTED', '8:334adc22af5ded71ff27759b7a556951', 'addColumn tableName=core_user', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('4', 'cammsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:49:58', 3, 'EXECUTED', '8:a8e7822a91ea122212d376f5c2d4158f', 'createTable tableName=setting', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('40', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:02', 39, 'EXECUTED', '8:69326196bb1696f76fbce059b6d7520e', 'createTable tableName=permissions_group; createIndex indexName=idx_permissions_group_name, tableName=permissions_group; createTable tableName=permissions_group_membership; addUniqueConstraint constraintName=unique_permissions_group_membership_user...', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('41', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:02', 40, 'EXECUTED', '8:fae0855adf2f702f1133e32fc98d02a5', 'dropColumn columnName=field_type, tableName=metabase_field; addDefaultValue columnName=active, tableName=metabase_field; addDefaultValue columnName=preview_display, tableName=metabase_field; addDefaultValue columnName=position, tableName=metabase_...', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('42', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:02', 41, 'EXECUTED', '8:e32b3a1624fa289a6ee1f3f0a2dac1f6', 'dropForeignKeyConstraint baseTableName=query_queryexecution, constraintName=fk_queryexecution_ref_query_id; dropColumn columnName=query_id, tableName=query_queryexecution; dropColumn columnName=is_staff, tableName=core_user; dropColumn columnName=...', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('43', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:03', 42, 'EXECUTED', '8:3cf48c3e52ea315379a8ed538c9f2624', 'createTable tableName=permissions_revision', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('44', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:03', 43, 'EXECUTED', '8:2e356e8a1049286f1c78324828ee7867', 'dropColumn columnName=public_perms, tableName=report_card; dropColumn columnName=public_perms, tableName=report_dashboard; dropColumn columnName=public_perms, tableName=pulse', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('45', 'tlrobinson', 'migrations/000_migrations.yaml', '2022-06-16 08:50:03', 44, 'EXECUTED', '8:421edd38ee0cb0983162f57193f81b0b', 'addColumn tableName=report_dashboardcard; addNotNullConstraint columnName=visualization_settings, tableName=report_dashboardcard', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('46', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:03', 45, 'EXECUTED', '8:131df3cdd9a8c67b32c5988a3fb7fe3d', 'addNotNullConstraint columnName=row, tableName=report_dashboardcard; addNotNullConstraint columnName=col, tableName=report_dashboardcard; addDefaultValue columnName=row, tableName=report_dashboardcard; addDefaultValue columnName=col, tableName=rep...', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('47', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:03', 46, 'EXECUTED', '8:717ed16b2f279bd4fdf5c4aa2b5f5857', 'createTable tableName=collection; createIndex indexName=idx_collection_slug, tableName=collection; addColumn tableName=report_card; createIndex indexName=idx_card_collection_id, tableName=report_card', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('48', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:03', 47, 'EXECUTED', '8:b3b418a4bbcf558e40f5d32effd2c7da', 'createTable tableName=collection_revision', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('49', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:04', 48, 'EXECUTED', '8:a9a777c7ecd1c6a338126b800a8b46e8', 'addColumn tableName=report_card; addColumn tableName=report_card; createIndex indexName=idx_card_public_uuid, tableName=report_card; addColumn tableName=report_dashboard; addColumn tableName=report_dashboard; createIndex indexName=idx_dashboard_pu...', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('5', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:49:58', 4, 'EXECUTED', '8:4f8653d16f4b102b3dff647277b6b988', 'addColumn tableName=core_organization', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('50', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:04', 49, 'EXECUTED', '8:98a6ab6428ea7a589507464e34ade58a', 'addColumn tableName=report_card; addColumn tableName=report_card; addColumn tableName=report_dashboard; addColumn tableName=report_dashboard', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('51', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:04', 50, 'EXECUTED', '8:43c90b5b9f6c14bfd0e41cc0b184617e', 'createTable tableName=query_execution; createIndex indexName=idx_query_execution_started_at, tableName=query_execution; createIndex indexName=idx_query_execution_query_hash_started_at, tableName=query_execution', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('52', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:04', 51, 'EXECUTED', '8:329695cb161ceb86f6d9473819359351', 'createTable tableName=query_cache; createIndex indexName=idx_query_cache_updated_at, tableName=query_cache; addColumn tableName=report_card', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('53', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:04', 52, 'EXECUTED', '8:78d015c5090c57cd6972eb435601d3d0', 'createTable tableName=query', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('54', 'tlrobinson', 'migrations/000_migrations.yaml', '2022-06-16 08:50:04', 53, 'EXECUTED', '8:e410005b585f5eeb5f202076ff9468f7', 'addColumn tableName=pulse', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('55', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:04', 54, 'EXECUTED', '8:088fee4d7555e104bc96fed923bce9aa', 'addColumn tableName=report_dashboard; addColumn tableName=report_dashboard; createTable tableName=dashboard_favorite; addUniqueConstraint constraintName=unique_dashboard_favorite_user_id_dashboard_id, tableName=dashboard_favorite; createIndex inde...', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('56', 'wwwiiilll', 'migrations/000_migrations.yaml', '2022-06-16 08:50:04', 55, 'EXECUTED', '8:9f46051abaee599e2838733512a32ad0', 'addColumn tableName=core_user', 'Added 0.25.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('57', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:04', 56, 'EXECUTED', '8:aab81d477e2d19a9ab18c58b78c9af88', 'addColumn tableName=report_card', 'Added 0.25.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('58', 'senior', 'migrations/000_migrations.yaml', '2022-06-16 08:50:04', 57, 'EXECUTED', '8:9e6d48acacceb109e0bd27e4e44a8cb4', 'createTable tableName=dimension; addUniqueConstraint constraintName=unique_dimension_field_id_name, tableName=dimension; createIndex indexName=idx_dimension_field_id, tableName=dimension', 'Added 0.25.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('59', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:04', 58, 'EXECUTED', '8:5b6ce52371e0e9eee88e6d766225a94b', 'addColumn tableName=metabase_field', 'Added 0.26.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('6', 'agilliland', 'migrations/000_migrations.yaml', '2022-06-16 08:49:58', 5, 'EXECUTED', '8:2d2f5d1756ecb81da7c09ccfb9b1565a', 'dropNotNullConstraint columnName=organization_id, tableName=metabase_database; dropForeignKeyConstraint baseTableName=metabase_database, constraintName=fk_database_ref_organization_id; dropNotNullConstraint columnName=organization_id, tableName=re...', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('60', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:04', 59, 'EXECUTED', '8:2141162a1c99a5dd95e5a67c5595e6d7', 'addColumn tableName=metabase_database; addColumn tableName=metabase_database', 'Added 0.26.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('61', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:04', 60, 'EXECUTED', '8:7dded6fd5bf74d79b9a0b62511981272', 'addColumn tableName=metabase_field', 'Added 0.26.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('62', 'senior', 'migrations/000_migrations.yaml', '2022-06-16 08:50:04', 61, 'EXECUTED', '8:cb32e6eaa1a2140703def2730f81fef2', 'addColumn tableName=metabase_database', 'Added 0.26.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('63', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:04', 62, 'EXECUTED', '8:226f73b9f6617495892d281b0f8303db', 'addColumn tableName=metabase_database', 'Added 0.26.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('64', 'senior', 'migrations/000_migrations.yaml', '2022-06-16 08:50:04', 63, 'EXECUTED', '8:4dcc8ffd836b56756f494d5dfce07b50', 'dropForeignKeyConstraint baseTableName=raw_table, constraintName=fk_rawtable_ref_database', 'Added 0.26.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('66', 'senior', 'migrations/000_migrations.yaml', '2022-06-16 08:50:04', 64, 'EXECUTED', '8:e77d66af8e3b83d46c5a0064a75a1aac', 'sql; sql', 'Added 0.26.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('67', 'attekei', 'migrations/000_migrations.yaml', '2022-06-16 08:50:04', 65, 'EXECUTED', '8:a03608d97e19b8a716989e918efad0a6', 'createTable tableName=computation_job; createTable tableName=computation_job_result', 'Added 0.27.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('68', 'sbelak', 'migrations/000_migrations.yaml', '2022-06-16 08:50:05', 66, 'EXECUTED', '8:b4ac06d133dfbdc6567d992c7e18c6ec', 'addColumn tableName=computation_job; addColumn tableName=computation_job', 'Added 0.27.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('69', 'senior', 'migrations/000_migrations.yaml', '2022-06-16 08:50:05', 67, 'EXECUTED', '8:eadbe00e97eb53df4b3df60462f593f6', 'addColumn tableName=pulse; addColumn tableName=pulse; addColumn tableName=pulse; dropNotNullConstraint columnName=name, tableName=pulse', 'Added 0.27.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('7', 'cammsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:49:59', 6, 'EXECUTED', '8:4f23ddbddd447461588462fa8bb443dd', 'addColumn tableName=metabase_field', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('70', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:05', 68, 'EXECUTED', '8:4e4eff7abb983b1127a32ba8107e7fb8', 'addColumn tableName=metabase_field; addNotNullConstraint columnName=database_type, tableName=metabase_field', 'Added 0.28.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('71', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:05', 69, 'EXECUTED', '8:755e5c3dd8a55793f29b2c95cb79c211', 'dropNotNullConstraint columnName=card_id, tableName=report_dashboardcard', 'Added 0.28.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('72', 'senior', 'migrations/000_migrations.yaml', '2022-06-16 08:50:05', 70, 'EXECUTED', '8:4dc6debdf779ab9273cf2158a84bb154', 'addColumn tableName=pulse_card; addColumn tableName=pulse_card', 'Added 0.28.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('73', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:05', 71, 'EXECUTED', '8:3c0f03d18ff78a0bcc9915e1d9c518d6', 'addColumn tableName=metabase_database', 'Added 0.29.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('74', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:05', 72, 'EXECUTED', '8:16726d6560851325930c25caf3c8ab96', 'addColumn tableName=metabase_field', 'Added 0.29.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('75', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:05', 73, 'EXECUTED', '8:6072cabfe8188872d8e3da9a675f88c1', 'addColumn tableName=report_card', 'Added 0.28.2', NULL, '4.8.0', NULL, NULL, '5347796315'),
('76', 'senior', 'migrations/000_migrations.yaml', '2022-06-16 08:50:05', 74, 'EXECUTED', '8:9b7190c9171ccca72617d508875c3c82', 'addColumn tableName=metabase_table', 'Added 0.30.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('77', 'senior', 'migrations/000_migrations.yaml', '2022-06-16 08:50:05', 75, 'EXECUTED', '8:07f0a6cd8dbbd9b89be0bd7378f7bdc8', 'addColumn tableName=core_user', 'Added 0.30.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('78', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:05', 76, 'EXECUTED', '8:8ea54a54fa04fe657b0b8072125981af', 'createTable tableName=group_table_access_policy; createIndex indexName=idx_gtap_table_id_group_id, tableName=group_table_access_policy; addUniqueConstraint constraintName=unique_gtap_table_id_group_id, tableName=group_table_access_policy', 'Added 0.30.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('79', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:05', 77, 'EXECUTED', '8:37825e0d48bd4ed5cf1a068de30edc60', 'addColumn tableName=report_dashboard; createIndex indexName=idx_dashboard_collection_id, tableName=report_dashboard; addColumn tableName=pulse; createIndex indexName=idx_pulse_collection_id, tableName=pulse', 'Added 0.30.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('8', 'tlrobinson', 'migrations/000_migrations.yaml', '2022-06-16 08:49:59', 7, 'EXECUTED', '8:960ec59bbcb4c9f3fa8362eca9af4075', 'addColumn tableName=metabase_table; addColumn tableName=metabase_field', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('80', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:05', 78, 'EXECUTED', '8:199d0ce28955117819ca15bcc29323e5', 'addColumn tableName=collection; createIndex indexName=idx_collection_location, tableName=collection', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('81', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:05', 79, 'EXECUTED', '8:3a6dc22403660529194d004ca7f7ad39', 'addColumn tableName=report_dashboard; addColumn tableName=report_card; addColumn tableName=pulse', 'Added 0.30.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('82', 'senior', 'migrations/000_migrations.yaml', '2022-06-16 08:50:05', 80, 'EXECUTED', '8:ac4b94df8c648f88cfff661284d6392d', 'addColumn tableName=core_user; sql', 'Added 0.30.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('83', 'senior', 'migrations/000_migrations.yaml', '2022-06-16 08:50:06', 81, 'EXECUTED', '8:ccd897d737737c05248293c7d56efe96', 'dropNotNullConstraint columnName=card_id, tableName=group_table_access_policy', 'Added 0.30.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('84', 'senior', 'migrations/000_migrations.yaml', '2022-06-16 08:50:06', 82, 'EXECUTED', '8:58afc10c3e283a8050ea471aac447a97', 'renameColumn newColumnName=archived, oldColumnName=is_active, tableName=metric; addDefaultValue columnName=archived, tableName=metric; renameColumn newColumnName=archived, oldColumnName=is_active, tableName=segment; addDefaultValue columnName=arch...', 'Added 0.30.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('85', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:06', 83, 'EXECUTED', '8:624bb71d09dc2bef7c16c025f57edff0', 'addColumn tableName=collection; createIndex indexName=idx_collection_personal_owner_id, tableName=collection; addColumn tableName=collection; sql; addNotNullConstraint columnName=_slug, tableName=collection; dropColumn columnName=slug, tableName=c...', 'Added 0.30.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('86', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:06', 84, 'EXECUTED', '8:50c75bb29f479e0b3fb782d89f7d6717', 'sql', 'Added 0.30.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('87', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:06', 85, 'EXECUTED', '8:0eccf19a93cb0ba4017aafd1d308c097', 'dropTable tableName=raw_column; dropTable tableName=raw_table', 'Added 0.30.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('88', 'senior', 'migrations/000_migrations.yaml', '2022-06-16 08:50:06', 86, 'EXECUTED', '8:04ff5a0738473938fc31d68c1d9952e1', 'addColumn tableName=core_user', 'Added 0.30.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('89', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:08', 87, 'EXECUTED', '8:ab526907b26b1bb43ac9f9548043f2a7', 'createTable tableName=QRTZ_JOB_DETAILS; addPrimaryKey constraintName=PK_QRTZ_JOB_DETAILS, tableName=QRTZ_JOB_DETAILS; createTable tableName=QRTZ_TRIGGERS; addPrimaryKey constraintName=PK_QRTZ_TRIGGERS, tableName=QRTZ_TRIGGERS; addForeignKeyConstra...', 'Added 0.30.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('9', 'tlrobinson', 'migrations/000_migrations.yaml', '2022-06-16 08:49:59', 8, 'EXECUTED', '8:d560283a190e3c60802eb04f5532a49d', 'addColumn tableName=metabase_table', '', NULL, '4.8.0', NULL, NULL, '5347796315'),
('90', 'senior', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 88, 'EXECUTED', '8:8562a72a1190deadc5fa59a23a6396dc', 'addColumn tableName=core_user; sql; dropColumn columnName=saml_auth, tableName=core_user', 'Added 0.30.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('91', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 89, 'EXECUTED', '8:9b8831e1e409f08e874c4ece043d0340', 'dropColumn columnName=raw_table_id, tableName=metabase_table; dropColumn columnName=raw_column_id, tableName=metabase_field', 'Added 0.30.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('92', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 90, 'EXECUTED', '8:1e5bc2d66778316ea640a561862c23b4', 'addColumn tableName=query_execution', 'Added 0.31.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('93', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 91, 'EXECUTED', '8:93b0d408a3970e30d7184ed1166b5476', 'addColumn tableName=query', 'Added 0.31.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('94', 'senior', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 92, 'EXECUTED', '8:a2a1eedf1e8f8756856c9d49c7684bfe', 'createTable tableName=task_history; createIndex indexName=idx_task_history_end_time, tableName=task_history; createIndex indexName=idx_task_history_db_id, tableName=task_history', 'Added 0.31.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('95', 'senior', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 93, 'EXECUTED', '8:9824808283004e803003b938399a4cf0', 'addUniqueConstraint constraintName=idx_databasechangelog_id_author_filename, tableName=DATABASECHANGELOG', 'Added 0.31.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('96', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 94, 'EXECUTED', '8:5cb2f36edcca9c6e14c5e109d6aeb68b', 'addColumn tableName=metabase_field', 'Added 0.31.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('97', 'senior', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 95, 'EXECUTED', '8:9169e238663c5d036bd83428d2fa8e4b', 'modifyDataType columnName=results, tableName=query_cache', 'Added 0.32.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('98', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 96, 'EXECUTED', '8:f036d20a4dc86fb60ffb64ea838ed6b9', 'addUniqueConstraint constraintName=idx_uniq_table_db_id_schema_name, tableName=metabase_table; sql', 'Added 0.32.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('99', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:09', 97, 'EXECUTED', '8:274bb516dd95b76c954b26084eed1dfe', 'addUniqueConstraint constraintName=idx_uniq_field_table_id_parent_id_name, tableName=metabase_field; sql', 'Added 0.32.0', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-000', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 309, 'EXECUTED', '8:5500782a64248810f4a5ca1dc9a6144d', 'dropColumn columnName=entity_name, tableName=metabase_table', 'Added 0.42.0 Remove unused column (#5240)', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-001', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:19', 310, 'EXECUTED', '8:9952153cbff16147bcb47b4a26e02089', 'sql; sql; sql', 'Added 0.42.0 Attempt to add Card.database_id (by parsing query) to rows that are missing it (#5999)', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-002', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:20', 311, 'EXECUTED', '8:81e0ab53dd2e20cde32e7449155551c2', 'addNotNullConstraint columnName=database_id, tableName=report_card', 'Added 0.42.0 Added constraint we should have had all along (#5999)', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-003', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:20', 312, 'EXECUTED', '8:4a2036164dac96df6066a0d633fab7b5', 'addColumn tableName=report_card', 'Added 0.42.0 Initial support for datasets based on questions', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-004', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:20', 313, 'EXECUTED', '8:b87007340c01509f7645d623f484bc35', 'modifyDataType columnName=details, tableName=activity', 'Added 0.42.0 - modify type of activity.details from text to longtext', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-005', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:20', 314, 'EXECUTED', '8:4fc93bf45ab81d53575756ca7e380b09', 'modifyDataType columnName=description, tableName=collection', 'Added 0.42.0 - modify type of collection.description from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-006', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:20', 315, 'EXECUTED', '8:482f1edc95984d97ead770380d1b537c', 'modifyDataType columnName=name, tableName=collection', 'Added 0.42.0 - modify type of collection.name from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-007', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:20', 316, 'EXECUTED', '8:6bb28eb9953ece5689e2f8e2c8f70e40', 'modifyDataType columnName=context, tableName=computation_job', 'Added 0.42.0 - modify type of computation_job.context from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-008', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:20', 317, 'EXECUTED', '8:f0655d1b838de73a10a1a87855542231', 'modifyDataType columnName=payload, tableName=computation_job_result', 'Added 0.42.0 - modify type of computation_job_result.payload from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-009', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:20', 318, 'EXECUTED', '8:ed9bedd9b1dbe2f4f032ba7952f6cc42', 'modifyDataType columnName=anti_csrf_token, tableName=core_session', 'Added 0.42.0 - modify type of core_session.anti_csrf_token from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-010', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:20', 319, 'EXECUTED', '8:0071b214b07c1986efe4ef376174283f', 'modifyDataType columnName=login_attributes, tableName=core_user', 'Added 0.42.0 - modify type of core_user.login_attributes from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-011', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:20', 320, 'EXECUTED', '8:fac89cb5a76acd8b09b4d0dfd025277b', 'modifyDataType columnName=attribute_remappings, tableName=group_table_access_policy', 'Added 0.42.0 - modify type of group_table_access_policy.attribute_remappings from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-012', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:21', 321, 'EXECUTED', '8:c36c26ca3fe17cfcc37de94f7a69df99', 'modifyDataType columnName=device_description, tableName=login_history', 'Added 0.42.0 - modify type of login_history.device_description from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-013', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:21', 322, 'EXECUTED', '8:68395b6f5066f1bc01c57c61cf16e94d', 'modifyDataType columnName=ip_address, tableName=login_history', 'Added 0.42.0 - modify type of login_history.ip_address from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-014', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:21', 323, 'EXECUTED', '8:350ba4d3f1a091bcc9d58d5f7bb5a323', 'modifyDataType columnName=caveats, tableName=metabase_database', 'Added 0.42.0 - modify type of metabase_database.caveats from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-015', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:21', 324, 'EXECUTED', '8:5d2272bd598f45699fa72d25d76bc93e', 'modifyDataType columnName=description, tableName=metabase_database', 'Added 0.42.0 - modify type of metabase_database.description from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-016', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:21', 325, 'EXECUTED', '8:a3a2edd6d924acef9e552c88a16da5ff', 'modifyDataType columnName=details, tableName=metabase_database', 'Added 0.42.0 - modify type of metabase_database.details from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-017', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:21', 326, 'EXECUTED', '8:06d03a4e17109c3393168b5c9f89165b', 'modifyDataType columnName=options, tableName=metabase_database', 'Added 0.42.0 - modify type of metabase_database.options from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-018', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:21', 327, 'EXECUTED', '8:77e12da960def76ab529e11170f0b1cd', 'modifyDataType columnName=points_of_interest, tableName=metabase_database', 'Added 0.42.0 - modify type of metabase_database.points_of_interest from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-019', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:21', 328, 'EXECUTED', '8:7cd95b97e28834a6c713ca0f2c86427d', 'modifyDataType columnName=caveats, tableName=metabase_field', 'Added 0.42.0 - modify type of metabase_field.caveats from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-020', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:21', 329, 'EXECUTED', '8:a1782977481866189befb3b2e8d6a4ef', 'modifyDataType columnName=database_type, tableName=metabase_field', 'Added 0.42.0 - modify type of metabase_field.database_type from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-021', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:22', 330, 'EXECUTED', '8:b92ca263a9ac9dca4e31b74f0ac934a6', 'modifyDataType columnName=description, tableName=metabase_field', 'Added 0.42.0 - modify type of metabase_field.description from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-022', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:22', 331, 'EXECUTED', '8:629f6079c2f389953dfc236f2db05060', 'modifyDataType columnName=fingerprint, tableName=metabase_field', 'Added 0.42.0 - modify type of metabase_field.fingerprint from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-023', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:22', 332, 'EXECUTED', '8:6130da3b1c6263b416ec35a8502239b4', 'modifyDataType columnName=has_field_values, tableName=metabase_field', 'Added 0.42.0 - modify type of metabase_field.has_field_values from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-024', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:22', 333, 'EXECUTED', '8:1da25b4f80ad9a8076c9632186c7f003', 'modifyDataType columnName=points_of_interest, tableName=metabase_field', 'Added 0.42.0 - modify type of metabase_field.points_of_interest from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-025', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:22', 334, 'EXECUTED', '8:b5a977cfb031df32653a2ef42b6b599a', 'modifyDataType columnName=settings, tableName=metabase_field', 'Added 0.42.0 - modify type of metabase_field.settings from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-026', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:22', 335, 'EXECUTED', '8:c2bbd6a83d894ea37486ce4420b53dc2', 'modifyDataType columnName=human_readable_values, tableName=metabase_fieldvalues', 'Added 0.42.0 - modify type of metabase_fieldvalues.human_readable_values from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-027', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:22', 336, 'EXECUTED', '8:e18cf828c28368e1baebab38c515771f', 'modifyDataType columnName=values, tableName=metabase_fieldvalues', 'Added 0.42.0 - modify type of metabase_fieldvalues.values from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-028', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:22', 337, 'EXECUTED', '8:c8f0fd1991b4e1672931bc7d868f7260', 'modifyDataType columnName=caveats, tableName=metabase_table', 'Added 0.42.0 - modify type of metabase_table.caveats from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-029', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:22', 338, 'EXECUTED', '8:1a0be77c71c2e16fe34327fd922a182a', 'modifyDataType columnName=description, tableName=metabase_table', 'Added 0.42.0 - modify type of metabase_table.description from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-030', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:23', 339, 'EXECUTED', '8:b4638f5fd85e2b1ed6c89122b5fd8eef', 'modifyDataType columnName=points_of_interest, tableName=metabase_table', 'Added 0.42.0 - modify type of metabase_table.points_of_interest from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-031', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:23', 340, 'EXECUTED', '8:05ced2c358e9ba23c6867e6bff14b5c4', 'modifyDataType columnName=caveats, tableName=metric', 'Added 0.42.0 - modify type of metric.caveats from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-032', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:23', 341, 'EXECUTED', '8:49fd3ff0466814e2b0fa700a3006afb2', 'modifyDataType columnName=definition, tableName=metric', 'Added 0.42.0 - modify type of metric.definition from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-033', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:23', 342, 'EXECUTED', '8:5a520af925c18dd305e18b01330bf671', 'modifyDataType columnName=description, tableName=metric', 'Added 0.42.0 - modify type of metric.description from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-034', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:23', 343, 'EXECUTED', '8:7531d31f1fbe5bf808df9a9551b6f586', 'modifyDataType columnName=how_is_this_calculated, tableName=metric', 'Added 0.42.0 - modify type of metric.how_is_this_calculated from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-035', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:23', 344, 'EXECUTED', '8:0685062caeb6c074dc81dc3f5bf21326', 'modifyDataType columnName=points_of_interest, tableName=metric', 'Added 0.42.0 - modify type of metric.points_of_interest from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-036', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:23', 345, 'EXECUTED', '8:aee58a7ddf2c6273b67108aa23e6ac05', 'modifyDataType columnName=text, tableName=moderation_review', 'Added 0.42.0 - modify type of moderation_review.text from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-037', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:23', 346, 'EXECUTED', '8:4e5ec728122fd816fdbf61964ca9ce5d', 'modifyDataType columnName=content, tableName=native_query_snippet', 'Added 0.42.0 - modify type of native_query_snippet.content from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-038', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:23', 347, 'EXECUTED', '8:88f9cb8c5e9abdc1af7e1295105d65a2', 'modifyDataType columnName=description, tableName=native_query_snippet', 'Added 0.42.0 - modify type of native_query_snippet.description from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-039', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:24', 348, 'EXECUTED', '8:e9e593b35f298880a87db5247d3b8356', 'modifyDataType columnName=parameters, tableName=pulse', 'Added 0.42.0 - modify type of pulse.parameters from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-040', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:24', 349, 'EXECUTED', '8:1664f4d4acef7a5565f3d71a78d814a0', 'modifyDataType columnName=details, tableName=pulse_channel', 'Added 0.42.0 - modify type of pulse_channel.details from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-041', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:24', 350, 'EXECUTED', '8:0165a45f49bf1a5b3e0b05e915170a74', 'modifyDataType columnName=query, tableName=query', 'Added 0.42.0 - modify type of query.query from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-042', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:24', 351, 'EXECUTED', '8:902f2276a34bbee488a2e46d3dcda7f6', 'modifyDataType columnName=error, tableName=query_execution', 'Added 0.42.0 - modify type of query_execution.error from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-043', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:24', 352, 'EXECUTED', '8:47c373728e6cd9f8742dc0e6ea8769d8', 'modifyDataType columnName=dataset_query, tableName=report_card', 'Added 0.42.0 - modify type of report_card.dataset_query from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-044', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:24', 353, 'EXECUTED', '8:e4867537d1fece86216c61352498e317', 'modifyDataType columnName=description, tableName=report_card', 'Added 0.42.0 - modify type of report_card.description from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315');
INSERT INTO `databasechangelog` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`, `DEPLOYMENT_ID`) VALUES
('v42.00-045', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:24', 354, 'EXECUTED', '8:4aa291a4353d9346a386182f5d6b1905', 'modifyDataType columnName=embedding_params, tableName=report_card', 'Added 0.42.0 - modify type of report_card.embedding_params from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-046', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:24', 355, 'EXECUTED', '8:53f56df51b713cd3e56bd574a853c504', 'modifyDataType columnName=result_metadata, tableName=report_card', 'Added 0.42.0 - modify type of report_card.result_metadata from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-047', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:24', 356, 'EXECUTED', '8:2215350a91cfa9143c3333bccf5ae154', 'modifyDataType columnName=visualization_settings, tableName=report_card', 'Added 0.42.0 - modify type of report_card.visualization_settings from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-048', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:25', 357, 'EXECUTED', '8:9531e436ed8de044cc9bfbaf7f822f21', 'modifyDataType columnName=caveats, tableName=report_dashboard', 'Added 0.42.0 - modify type of report_dashboard.caveats from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-049', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:25', 358, 'EXECUTED', '8:d85a05f002856a795173ff1909241b32', 'modifyDataType columnName=description, tableName=report_dashboard', 'Added 0.42.0 - modify type of report_dashboard.description from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-050', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:25', 359, 'EXECUTED', '8:903f85a351e3a6766b234c8acc2bb98c', 'modifyDataType columnName=embedding_params, tableName=report_dashboard', 'Added 0.42.0 - modify type of report_dashboard.embedding_params from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-051', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:25', 360, 'EXECUTED', '8:c32e749cdce46beac8f5fd053278d003', 'modifyDataType columnName=parameters, tableName=report_dashboard', 'Added 0.42.0 - modify type of report_dashboard.parameters from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-052', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:25', 361, 'EXECUTED', '8:1ed02373e6d26566587c02340035fa12', 'modifyDataType columnName=points_of_interest, tableName=report_dashboard', 'Added 0.42.0 - modify type of report_dashboard.points_of_interest from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-053', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:25', 362, 'EXECUTED', '8:df66263027a7822b188e2ad26000590b', 'modifyDataType columnName=parameter_mappings, tableName=report_dashboardcard', 'Added 0.42.0 - modify type of report_dashboardcard.parameter_mappings from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-054', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:25', 363, 'EXECUTED', '8:52a31c3d4568779e6410f0d9a73b655c', 'modifyDataType columnName=visualization_settings, tableName=report_dashboardcard', 'Added 0.42.0 - modify type of report_dashboardcard.visualization_settings from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-055', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:25', 364, 'EXECUTED', '8:0cf9267ee9561810ea430bd46e08f41f', 'modifyDataType columnName=message, tableName=revision', 'Added 0.42.0 - modify type of revision.message from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-056', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:25', 365, 'EXECUTED', '8:b2fbc221760632b705f884454b499e94', 'modifyDataType columnName=object, tableName=revision', 'Added 0.42.0 - modify type of revision.object from text to longtext', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-057', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:26', 366, 'EXECUTED', '8:20ac361a17ed14d45cbe460371113c13', 'modifyDataType columnName=caveats, tableName=segment', 'Added 0.42.0 - modify type of segment.caveats from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-058', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:26', 367, 'EXECUTED', '8:71b7e5c262d556f339c0401410ab930a', 'modifyDataType columnName=definition, tableName=segment', 'Added 0.42.0 - modify type of segment.definition from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-059', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:26', 368, 'EXECUTED', '8:4b4e7cd8d8515274b3bd2e3fd79a53d9', 'modifyDataType columnName=description, tableName=segment', 'Added 0.42.0 - modify type of segment.description from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-060', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:26', 369, 'EXECUTED', '8:d7cc05ab540d4c81a837187e4db172b9', 'modifyDataType columnName=points_of_interest, tableName=segment', 'Added 0.42.0 - modify type of segment.points_of_interest from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-061', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:26', 370, 'EXECUTED', '8:4747d84c38854d7a588215684355b78a', 'modifyDataType columnName=value, tableName=setting', 'Added 0.42.0 - modify type of setting.value from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-062', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:26', 371, 'EXECUTED', '8:fdab93c50c3432e2f5e58bedd9ac8a56', 'modifyDataType columnName=task_details, tableName=task_history', 'Added 0.42.0 - modify type of task_history.task_details from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-063', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:26', 372, 'EXECUTED', '8:b6b211459388818f7b5a738245c2ebc0', 'modifyDataType columnName=metadata, tableName=view_log', 'Added 0.42.0 - modify type of view_log.metadata from text to longtext on mysql,mariadb', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-064', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:26', 373, 'EXECUTED', '8:9169e238663c5d036bd83428d2fa8e4b', 'modifyDataType columnName=results, tableName=query_cache', 'Added 0.42.0 - fix type of query_cache.results on upgrade (in case changeSet 97 was run before #16095)', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-065', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:26', 374, 'EXECUTED', '8:5befdc16aff1cda15744a577889f242a', 'addColumn tableName=core_user', 'Added 0.42.0 - Another modal dismissed state on user. Retaining the same suffix and boolean style to ease an eventual migration.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-066', 'noahmoss', 'migrations/000_migrations.yaml', '2022-06-16 08:50:26', 375, 'EXECUTED', '8:b43c6357a5dacd4f7eb3b49c7372b908', 'addColumn tableName=metabase_database', 'Added 0.42.0 - new columns for initial DB sync progress UX. Indicates whether a database has succesfully synced at least one time.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-067', 'noahmoss', 'migrations/000_migrations.yaml', '2022-06-16 08:50:26', 376, 'EXECUTED', '8:cc9373fbb8ae35f5599105b1612f762c', 'addColumn tableName=metabase_table', 'Added 0.42.0 - new columns for initial DB sync progress UX. Indicates whether a table has succesfully synced at least one time.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-068', 'noahmoss', 'migrations/000_migrations.yaml', '2022-06-16 08:50:26', 377, 'EXECUTED', '8:5f3144422c5fa86d1344f6fe0cf2049f', 'addColumn tableName=metabase_database', 'Added 0.42.0 - new columns for initial DB sync progress UX. Records the ID of the admin who added a database. May be null for the sample dataset, or for databases added prior to 0.42.0.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-069', 'noahmoss', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 378, 'EXECUTED', '8:1497ad69b4a6855a232a4ea121687ba2', 'addForeignKeyConstraint baseTableName=metabase_database, constraintName=fk_database_creator_id, referencedTableName=core_user', 'Added 0.42.0 - adds FK constraint for creator_id column, containing the ID of the admin who added a database.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-070', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 379, 'EXECUTED', '8:33e212129c66d20000d08e8951ac1740', 'addColumn tableName=metabase_database', 'Added 0.42.0 - add Database.settings column to implement Database-local Settings', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v42.00-071', 'noahmoss', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 380, 'EXECUTED', '8:315c004fe2776340730f660504260575', 'sql', 'Added 0.42.0 - migrates the Sample Dataset to the name \"Sample Database\"', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-001', 'jeff303', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 381, 'EXECUTED', '8:200f0cc5989f637c12a497a5cad56a58', 'sql', 'Added 0.43.0 - migrates any Database using the old bigquery driver to bigquery-cloud-sdk instead', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-002', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 382, 'EXECUTED', '8:f964db8e5d278f825b9eb6414195d54d', 'sql', 'Added 0.43.0. Create magic \'All Users\' Permissions Group if it does not already exist.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-003', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 383, 'EXECUTED', '8:d220feb098ef8e5c6bd44e94166a92d9', 'sql', 'Added 0.43.0. Create magic \'Administrators\' Permissions Group if it does not already exist.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-004', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 384, 'EXECUTED', '8:1c28c6de37700b0ae5f679b86d335764', 'sql', 'Added 0.43.0. Add existing Users to \'All Users\' magic Permissions Group if needed.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-005', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 385, 'EXECUTED', '8:17c0d62516f4af2090010ff9f0f1bf1c', 'sql', 'Added 0.43.0. Add existing Users with \'is_superuser\' flag to \'Administrators\' magic Permissions Group if needed.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-006', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 386, 'EXECUTED', '8:e83e560209f8aa4e57e10a6745715483', 'sql', 'Added 0.43.0. Create root \'/\' permissions entry for the \'Administrators\' magic Permissions Group if needed.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-007', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 387, 'EXECUTED', '8:134265766925f53d8da208089e4e1082', 'sql', 'Added 0.43.0. Grant permissions for existing Databases to \'All Users\' permissions group.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-008', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 388, 'EXECUTED', '8:32b1397273c60028aa633d23428527ef', 'sql; sql', 'Added 0.43.0. Migrate legacy \'-site-url\' Setting to \'site-url\'. Trim trailing slashes.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-009', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 389, 'EXECUTED', '8:4042df2ae3ac452a896df3cd5f7a839e', 'sql; sql', 'Added 0.43.0. Make sure \'site-url\' Setting includes protocol.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-010', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 390, 'EXECUTED', '8:a26d3c4c474c13897e0d8a677b7443ae', 'sql; sql', 'Added 0.43.0. Migrates value of legacy enable-advanced-humanization Setting to humanization-strategy Setting added in 0.28.0.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-011', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 391, 'EXECUTED', '8:5760bcc26e036a34e918cf5eecd109ee', 'sql; sql', 'Added 0.43.0. Remove legacy enable-advanced-humanization Setting.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-012', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 392, 'EXECUTED', '8:a59acc0e562305bbef5721982deb2028', 'sql', 'Added 0.43.0. Set Field.has_field_values to \'list\' if semantic_type derives from :type/Category.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-014', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 393, 'MARK_RAN', '8:bf03710cb176dd7c720a3e2e47ae7782', 'sql', 'Added 0.43.0. Add \'Migrated Dashboards\' Collection if needed and there are any Dashboards not in a Collection.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-015', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 394, 'MARK_RAN', '8:f615da33f8be6bd251faac925bfc9bbd', 'sql', 'Added 0.43.0. Add \'Migrated Pulses\' Collection if needed and there are any Pulses not in a Collection.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-016', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 395, 'MARK_RAN', '8:d31ad47d1aa56ddee95c15726b6810d8', 'sql', 'Added 0.43.0. Add \'Migrated Questions\' Collection if needed and there are any Cards not in a Collection.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-017', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 396, 'EXECUTED', '8:969b947a5066941617a9add82975de9a', 'sql', 'Added 0.43.0. Move Dashboards not in a Collection to \'Migrated Dashboards\'.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-018', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 397, 'EXECUTED', '8:b105395ddb21d04c12756e8924ccba83', 'sql', 'Added 0.43.0. Move Pulses not in a Collection to \'Migrated Pulses\'.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-019', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 398, 'EXECUTED', '8:6b2e7344dbf0f3be8ec39b4efdb7a4d5', 'sql', 'Added 0.43.0. Move Cards not in a Collection to \'Migrated Questions\'.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-020', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 399, 'EXECUTED', '8:e3399a0ef504c5f5140e9e866a2e49fd', 'sql', 'Added 0.43.0. Grant the \'All Users\' Permissions Group readwrite perms for the Root Collection.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-021', 'adam-james', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 400, 'EXECUTED', '8:58859cc020a64c444503b40c474059bf', 'createTable tableName=timeline', 'Added 0.43.0 - Timeline table for Events', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-022', 'adam-james', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 401, 'EXECUTED', '8:3f632fca23faaf7da6f01ee51c0c75d2', 'createTable tableName=timeline_event', 'Added 0.43.0 - Events table', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-023', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 402, 'EXECUTED', '8:68ea023407382a8f54dc282f601ac6cb', 'createIndex indexName=idx_timeline_collection_id, tableName=timeline', 'Added 0.43.0 - Index on timeline collection_id', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-024', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 403, 'EXECUTED', '8:0056b773435253b7e8e40d5261897823', 'createIndex indexName=idx_timeline_event_timeline_id, tableName=timeline_event', 'Added 0.43.0 - Index on timeline_event timeline_id', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-025', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 404, 'EXECUTED', '8:8839ff170d1faac11237f79ce729d637', 'createIndex indexName=idx_timeline_event_timeline_id_timestamp, tableName=timeline_event', 'Added 0.43.0 - Index on timeline timestamp', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-026', 'noahmoss', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 405, 'EXECUTED', '8:74fed8e37ec92d743b01ddc8a47c6f17', 'addColumn tableName=core_user', 'Added 0.43.0 - adds User.settings column to implement User-local Settings', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-027', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 406, 'EXECUTED', '8:141420f027b84d0d08e944ffc0d005df', 'dropNotNullConstraint columnName=password, tableName=core_user', 'Added 0.43.0. Drop NOT NULL constraint for core_user.password', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-028', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 407, 'EXECUTED', '8:c86e72e67598f29e10de00fe346095b3', 'dropNotNullConstraint columnName=password_salt, tableName=core_user', 'Added 0.43.0. Drop NOT NULL constraint for core_user.password_salt', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-029', 'camsaul', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 408, 'EXECUTED', '8:4d5632ee6fae1f8d0d5e6068700ccb2e', 'sql', 'Added 0.43.0. Clear local password for Users using LDAP auth.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-030', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 409, 'EXECUTED', '8:64c206f51e156c7c787e539a7fdd6544', 'createTable tableName=dashboard_bookmark', 'Added 0.43.0 - Dashboard bookmarks table', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-031', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:27', 410, 'EXECUTED', '8:1081aff22c7fef2be2c63cdec33aad06', 'addUniqueConstraint constraintName=unique_dashboard_bookmark_user_id_dashboard_id, tableName=dashboard_bookmark', 'Added 0.43.0 - Dashboard bookmarks table unique constraint', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-032', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 411, 'EXECUTED', '8:573e98bd0b8392f3c207ae49b1eb20ce', 'createIndex indexName=idx_dashboard_bookmark_user_id, tableName=dashboard_bookmark', 'Added 0.43.0 - Dashboard bookmarks table index on user_id', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-033', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 412, 'EXECUTED', '8:d9471b53e0666a6d3fc99e3c768ccafa', 'createIndex indexName=idx_dashboard_bookmark_dashboard_id, tableName=dashboard_bookmark', 'Added 0.43.0 - Dashboard bookmarks table index on dashboard_id', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-034', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 413, 'EXECUTED', '8:eb8c0526b63b786f1f005e8bf27eb39d', 'createTable tableName=card_bookmark', 'Added 0.43.0 - Card bookmarks table', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-035', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 414, 'EXECUTED', '8:9cce81eb78b0c25d01a23d2f74377eda', 'addUniqueConstraint constraintName=unique_card_bookmark_user_id_card_id, tableName=card_bookmark', 'Added 0.43.0 - Card bookmarks table unique constraint', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-036', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 415, 'EXECUTED', '8:a107c119de1ee902e9526a0413158093', 'createIndex indexName=idx_card_bookmark_user_id, tableName=card_bookmark', 'Added 0.43.0 - Card bookmarks table index on user_id', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-037', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 416, 'EXECUTED', '8:80b451e8506f3d3092347cb3f9a96c0c', 'createIndex indexName=idx_card_bookmark_card_id, tableName=card_bookmark', 'Added 0.43.0 - Card bookmarks table index on card_id', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-038', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 417, 'EXECUTED', '8:04df82a0b841fb20d772b9f4fea5687f', 'createTable tableName=collection_bookmark', 'Added 0.43.0 - Collection bookmarks table', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-039', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 418, 'EXECUTED', '8:88c30bdf22c1bcae694850d81a65b175', 'addUniqueConstraint constraintName=unique_collection_bookmark_user_id_collection_id, tableName=collection_bookmark', 'Added 0.43.0 - Collection bookmarks table unique constraint', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-040', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 419, 'EXECUTED', '8:455175f303c3f64cb9588aca5c6641e0', 'createIndex indexName=idx_collection_bookmark_user_id, tableName=collection_bookmark', 'Added 0.43.0 - Collection bookmarks table index on user_id', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-041', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 420, 'EXECUTED', '8:b3a84ea8c47896be2931fb73e07459ce', 'createIndex indexName=idx_collection_bookmark_collection_id, tableName=collection_bookmark', 'Added 0.43.0 - Collection bookmarks table index on collection_id', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-042', 'noahmoss', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 421, 'EXECUTED', '8:e0b982be997b8e591172f4a7c9dab869', 'sql', 'Added 0.43.0. Grant download permissions for existing Databases to \'All Users\' permissions group', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-043', 'howonlee', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 422, 'EXECUTED', '8:2b0195448dad18ba671d64a0c35ceb79', 'addColumn tableName=metabase_field', 'Added 0.43.0 - Nested field columns in fields', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-044', 'noahmoss', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 423, 'EXECUTED', '8:537bbbdc3a39703e704e80d757d8cead', 'sql', 'Added 0.43.0 - Removes MetaBot permissions group', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-046', 'qnkhuat', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 424, 'EXECUTED', '8:819a102fb2912fe83acb69d157a0af25', 'createTable tableName=general_permissions_revision', 'Added 0.43.0 - create General Permission Revision table', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-047', 'qnkhuat', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 425, 'EXECUTED', '8:35c7324ab207528726cc332a5b433a58', 'sql', 'Added 0.43.0. Grant the \'All Users\' Group permissions to create/edit subscriptions and alerts', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-049', 'dpsutton', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 426, 'EXECUTED', '8:4bc3de3c17ad7d7667ef17d0de4089fb', 'modifyDataType columnName=timestamp, tableName=view_log', 'Added 0.43.0 - Unify datatype with query_execution.started_at so comparable (see 168).', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-050', 'qnkhuat', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 427, 'EXECUTED', '8:d4bc347f147647b361bbe3740d035413', 'addColumn tableName=permissions_group_membership', 'Added 0.43.0. Add permissions_group_membership.is_group_manager', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-051', 'adam-james', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 428, 'EXECUTED', '8:cd0b3deabba3be0abcabd7b8f7fe03c8', 'addColumn tableName=timeline', 'Added 0.43.0 - default boolean on timelines to indicate default timeline for a collection', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-052', 'snoe', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 429, 'EXECUTED', '8:b3963d6c168f5c30f1288c222b8e0e83', 'createTable tableName=bookmark_ordering', 'Added 0.43.0 - bookmark ordering', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-053', 'snoe', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 430, 'EXECUTED', '8:9660924a1b14881a4d5d11e535c6d838', 'addUniqueConstraint constraintName=unique_bookmark_user_id_type_item_id, tableName=bookmark_ordering', 'Added 0.43.0 - bookmark ordering', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-054', 'snoe', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 431, 'EXECUTED', '8:b353fff839dde25895deba810f64c704', 'addUniqueConstraint constraintName=unique_bookmark_user_id_ordering, tableName=bookmark_ordering', 'Added 0.43.0 - bookmark ordering', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-055', 'snoe', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 432, 'EXECUTED', '8:bd8dd0c8f4391a2ed375f369971b4023', 'createIndex indexName=idx_bookmark_ordering_user_id, tableName=bookmark_ordering', 'Added 0.43.0 - bookmark ordering', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-056', 'qnkhuat', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 433, 'EXECUTED', '8:c418d33e471acbbcd9f86e57b1df4468', 'renameTable newTableName=application_permissions_revision, oldTableName=general_permissions_revision', 'Added 0.43.0 - Rename general permission revision table It\'s safe to rename this table without breaking downgrades compatibility because this table was also added in 0.43.0.', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-057', 'qnkhuat', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 434, 'MARK_RAN', '8:a96791b95827101abd2cb77361c847ce', 'sql', 'Added 0.43.0 - Rename general_permissions_revision_id_seq', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-058', 'qnkhuat', 'migrations/000_migrations.yaml', '2022-06-16 08:50:28', 435, 'EXECUTED', '8:bbef3f445957c95a3d42b74b7c8b1fa3', 'sql', 'Added 0.43.0 - Rename general permissios to application permissions', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-059', 'adam-james', 'migrations/000_migrations.yaml', '2022-06-16 08:50:29', 436, 'EXECUTED', '8:57fb18b8a2b231c107b4d138521166dd', 'addNotNullConstraint columnName=icon, tableName=timeline', 'Added 0.43.0 - disallow nil timeline icons', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-060', 'adam-james', 'migrations/000_migrations.yaml', '2022-06-16 08:50:29', 437, 'EXECUTED', '8:25978d2800f7e2dd6e8f4ad61027dfa3', 'addNotNullConstraint columnName=icon, tableName=timeline_event', 'Added 0.43.0 - disallow nil timeline event icons', NULL, '4.8.0', NULL, NULL, '5347796315'),
('v43.00-062', 'snoe', 'migrations/000_migrations.yaml', '2022-06-16 08:50:29', 438, 'EXECUTED', '8:ac44080a30f519541a02888f5126e64b', 'modifyDataType columnName=timestamp, tableName=revision', 'Added 0.43.0 - Unify datatype with revision.timestamp for timezone info (see 17829).', NULL, '4.8.0', NULL, NULL, '5347796315');

-- --------------------------------------------------------

--
-- Table structure for table `databasechangeloglock`
--

CREATE TABLE `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `databasechangeloglock`
--

INSERT INTO `databasechangeloglock` (`ID`, `LOCKED`, `LOCKGRANTED`, `LOCKEDBY`) VALUES
(1, b'0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_migrations`
--

CREATE TABLE `data_migrations` (
  `id` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_migrations`
--

INSERT INTO `data_migrations` (`id`, `timestamp`) VALUES
('migrate-click-through', '2022-06-13 12:57:25'),
('migrate-remove-admin-from-group-mapping-if-needed', '2022-06-13 12:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `dependency`
--

CREATE TABLE `dependency` (
  `id` int(11) NOT NULL,
  `model` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int(11) NOT NULL,
  `dependent_on_model` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dependent_on_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dimension`
--

CREATE TABLE `dimension` (
  `id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL COMMENT 'ID of the field this dimension row applies to',
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Short description used as the display name of this new column',
  `type` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Either internal for a user defined remapping or external for a foreign key based remapping',
  `human_readable_field_id` int(11) DEFAULT NULL COMMENT 'Only used with external type remappings. Indicates which field on the FK related table to use for display',
  `created_at` datetime NOT NULL COMMENT 'The timestamp of when the dimension was created.',
  `updated_at` datetime NOT NULL COMMENT 'The timestamp of when these dimension was last updated.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores references to alternate views of existing fields, such as remapping an integer to a description, like an enum';

-- --------------------------------------------------------

--
-- Table structure for table `group_table_access_policy`
--

CREATE TABLE `group_table_access_policy` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL COMMENT 'ID of the Permissions Group this policy affects.',
  `table_id` int(11) NOT NULL COMMENT 'ID of the Table that should get automatically replaced as query source for the Permissions Group.',
  `card_id` int(11) DEFAULT NULL,
  `attribute_remappings` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Records that a given Card (Question) should automatically replace a given Table as query source for a given a Perms Group.';

-- --------------------------------------------------------

--
-- Table structure for table `label`
--

CREATE TABLE `label` (
  `id` int(11) NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'When this login occurred.',
  `user_id` int(11) NOT NULL COMMENT 'ID of the User that logged in.',
  `session_id` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ID of the Session created by this login if one is currently active. NULL if Session is no longer active.',
  `device_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Cookie-based unique identifier for the device/browser the user logged in from.',
  `device_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Keeps track of various logins for different users and additional info such as location and device';

-- --------------------------------------------------------

--
-- Table structure for table `metabase_database`
--

CREATE TABLE `metabase_database` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sample` bit(1) NOT NULL DEFAULT b'0',
  `is_full_sync` bit(1) NOT NULL DEFAULT b'1',
  `points_of_interest` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caveats` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata_sync_schedule` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0 50 * * * ? *' COMMENT 'The cron schedule string for when this database should undergo the metadata sync process (and analysis for new fields).',
  `cache_field_values_schedule` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0 50 0 * * ? *' COMMENT 'The cron schedule string for when FieldValues for eligible Fields should be updated.',
  `timezone` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Timezone identifier for the database, set by the sync process',
  `is_on_demand` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether we should do On-Demand caching of FieldValues for this DB. This means FieldValues are updated when their Field is used in a Dashboard or Card param.',
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_run_queries` bit(1) NOT NULL DEFAULT b'1' COMMENT 'Whether to automatically run queries when doing simple filtering and summarizing in the Query Builder.',
  `refingerprint` bit(1) DEFAULT NULL COMMENT 'Whether or not to enable periodic refingerprinting for this Database.',
  `cache_ttl` int(11) DEFAULT NULL COMMENT 'Granular cache TTL for specific database.',
  `initial_sync_status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'complete' COMMENT 'String indicating whether a database has completed its initial sync and is ready to use',
  `creator_id` int(11) DEFAULT NULL COMMENT 'ID of the admin who added the database',
  `settings` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Serialized JSON containing Database-local Settings for this Database'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metabase_database`
--

INSERT INTO `metabase_database` (`id`, `created_at`, `updated_at`, `name`, `description`, `details`, `engine`, `is_sample`, `is_full_sync`, `points_of_interest`, `caveats`, `metadata_sync_schedule`, `cache_field_values_schedule`, `timezone`, `is_on_demand`, `options`, `auto_run_queries`, `refingerprint`, `cache_ttl`, `initial_sync_status`, `creator_id`, `settings`) VALUES
(1, '2022-06-13 12:57:25', '2022-06-15 11:08:47', 'Sample Database', 'Some example data for you to play around with as you embark on your Metabase journey.', '{\"db\":\"zip:/app/metabase.jar!/sample-database.db;USER=GUEST;PASSWORD=guest\"}', 'h2', b'1', b'1', 'You can find all sorts of different joinable tables ranging from products to people to reviews here.', 'You probably don\'t want to use this for your business-critical analyses, but hey, it\'s your world, we\'re just living in it.', '0 47 * * * ? *', '0 0 12 * * ? *', 'UTC', b'0', NULL, b'1', NULL, NULL, 'complete', NULL, NULL),
(2, '2022-06-14 07:23:52', '2022-06-14 07:23:53', 'retail', NULL, '{\"host\":\"host.docker.internal\",\"port\":5010,\"dbname\":\"retail\",\"user\":\"root\",\"password\":\"root_mysql\",\"ssl\":false,\"tunnel-enabled\":false,\"advanced-options\":false}', 'mysql', b'0', b'1', NULL, NULL, '0 52 * * * ? *', '0 0 14 * * ? *', 'UTC', b'0', NULL, b'1', NULL, NULL, 'complete', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `metabase_field`
--

CREATE TABLE `metabase_field` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semantic_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_display` bit(1) NOT NULL DEFAULT b'1',
  `position` int(11) NOT NULL DEFAULT 0,
  `table_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `display_name` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `fk_target_field_id` int(11) DEFAULT NULL,
  `last_analyzed` datetime DEFAULT NULL,
  `points_of_interest` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caveats` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fingerprint` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fingerprint_version` int(11) NOT NULL DEFAULT 0 COMMENT 'The version of the fingerprint for this Field. Used so we can keep track of which Fields need to be analyzed again when new things are added to fingerprints.',
  `database_type` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_field_values` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `database_position` int(11) NOT NULL DEFAULT 0,
  `custom_position` int(11) NOT NULL DEFAULT 0,
  `effective_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The effective type of the field after any coercions.',
  `coercion_strategy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'A strategy to coerce the base_type into the effective_type.',
  `nfc_path` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nested field column paths, flattened'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metabase_field`
--

INSERT INTO `metabase_field` (`id`, `created_at`, `updated_at`, `name`, `base_type`, `semantic_type`, `active`, `description`, `preview_display`, `position`, `table_id`, `parent_id`, `display_name`, `visibility_type`, `fk_target_field_id`, `last_analyzed`, `points_of_interest`, `caveats`, `fingerprint`, `fingerprint_version`, `database_type`, `has_field_values`, `settings`, `database_position`, `custom_position`, `effective_type`, `coercion_strategy`, `nfc_path`) VALUES
(1, '2022-06-13 12:57:26', '2022-06-13 12:57:27', 'PRICE', 'type/Float', NULL, b'1', 'The list price of the product. Note that this is not always the price the product sold for due to discounts, promotions, etc.', b'1', 5, 1, NULL, 'Price', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":170,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":15.691943673970439,\"q1\":37.25154462926434,\"q3\":75.45898071609447,\"max\":98.81933684368194,\"sd\":21.711481557852057,\"avg\":55.74639966792074}}}', 5, 'DOUBLE', NULL, NULL, 5, 0, 'type/Float', NULL, NULL),
(2, '2022-06-13 12:57:26', '2022-06-13 12:57:27', 'EAN', 'type/Text', NULL, b'1', 'The international article number. A 13 digit number uniquely identifying the product.', b'1', 1, 1, NULL, 'Ean', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":200,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":13.0}}}', 5, 'CHAR', NULL, NULL, 1, 0, 'type/Text', NULL, NULL),
(3, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'VENDOR', 'type/Text', 'type/Company', b'1', 'The source of the product.', b'1', 4, 1, NULL, 'Vendor', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":200,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":20.6}}}', 5, 'VARCHAR', NULL, NULL, 4, 0, 'type/Text', NULL, NULL),
(4, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'CATEGORY', 'type/Text', 'type/Category', b'1', 'The type of product, valid values include: Doohicky, Gadget, Gizmo and Widget', b'1', 3, 1, NULL, 'Category', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":4,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":6.375}}}', 5, 'VARCHAR', 'auto-list', NULL, 3, 0, 'type/Text', NULL, NULL),
(5, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'TITLE', 'type/Text', 'type/Title', b'1', 'The name of the product as it should be displayed to customers.', b'1', 2, 1, NULL, 'Title', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":199,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":21.495}}}', 5, 'VARCHAR', NULL, NULL, 2, 0, 'type/Text', NULL, NULL),
(6, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'RATING', 'type/Float', 'type/Score', b'1', 'The average rating users have given the product. This ranges from 1 - 5', b'1', 6, 1, NULL, 'Rating', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":23,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":3.5120465053408525,\"q3\":4.216124969497314,\"max\":5.0,\"sd\":1.3605488657451452,\"avg\":3.4715}}}', 5, 'DOUBLE', NULL, NULL, 6, 0, 'type/Float', NULL, NULL),
(7, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'CREATED_AT', 'type/DateTime', 'type/CreationTimestamp', b'1', 'The date the product was added to our catalog.', b'1', 7, 1, NULL, 'Created At', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":200,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2016-04-26T19:29:55.147Z\",\"latest\":\"2019-04-15T13:34:19.931Z\"}}}', 5, 'TIMESTAMP', NULL, NULL, 7, 0, 'type/DateTime', NULL, NULL),
(8, '2022-06-13 12:57:26', '2022-06-13 12:57:26', 'ID', 'type/BigInteger', 'type/PK', b'1', 'The numerical product number. Only used internally. All external communication should use the title or EAN.', b'1', 0, 1, NULL, 'ID', 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'BIGINT', NULL, NULL, 0, 0, 'type/BigInteger', NULL, NULL),
(9, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'DISCOUNT', 'type/Float', 'type/Discount', b'1', 'Discount amount.', b'1', 6, 2, NULL, 'Discount', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":701,\"nil%\":0.898},\"type\":{\"type/Number\":{\"min\":0.17088996672584322,\"q1\":2.9786226681458743,\"q3\":7.338187788658235,\"max\":61.69684269960571,\"sd\":3.053663125001991,\"avg\":5.161255547580326}}}', 5, 'DOUBLE', NULL, NULL, 6, 0, 'type/Float', NULL, NULL),
(10, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'QUANTITY', 'type/Integer', 'type/Quantity', b'1', 'Number of products bought.', b'1', 8, 2, NULL, 'Quantity', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":62,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":1.755882607764982,\"q3\":4.882654507928044,\"max\":100.0,\"sd\":4.214258386403798,\"avg\":3.7015}}}', 5, 'INTEGER', 'auto-list', NULL, 8, 0, 'type/Integer', NULL, NULL),
(11, '2022-06-13 12:57:26', '2022-06-13 12:57:28', 'USER_ID', 'type/Integer', 'type/FK', b'1', 'The id of the user who made this order. Note that in some cases where an order was created on behalf of a customer who phoned the order in, this might be the employee who handled the request.', b'1', 1, 2, NULL, 'User ID', 'normal', 30, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":929,\"nil%\":0.0}}', 5, 'INTEGER', NULL, NULL, 1, 0, 'type/Integer', NULL, NULL),
(12, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'CREATED_AT', 'type/DateTime', 'type/CreationTimestamp', b'1', 'The date and time an order was submitted.', b'1', 7, 2, NULL, 'Created At', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":9998,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2016-04-30T18:56:13.352Z\",\"latest\":\"2020-04-19T14:07:15.657Z\"}}}', 5, 'TIMESTAMP', NULL, NULL, 7, 0, 'type/DateTime', NULL, NULL),
(13, '2022-06-13 12:57:26', '2022-06-13 12:57:28', 'PRODUCT_ID', 'type/Integer', 'type/FK', b'1', 'The product ID. This is an internal identifier for the product, NOT the SKU.', b'1', 2, 2, NULL, 'Product ID', 'normal', 8, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":200,\"nil%\":0.0}}', 5, 'INTEGER', NULL, NULL, 2, 0, 'type/Integer', NULL, NULL),
(14, '2022-06-13 12:57:26', '2022-06-13 12:57:28', 'SUBTOTAL', 'type/Float', NULL, b'1', 'The raw, pre-tax cost of the order. Note that this might be different in the future from the product price due to promotions, credits, etc.', b'1', 3, 2, NULL, 'Subtotal', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":340,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":15.691943673970439,\"q1\":49.74894519060184,\"q3\":105.42965746993103,\"max\":148.22900526552291,\"sd\":32.53705013056317,\"avg\":77.01295465356547}}}', 5, 'DOUBLE', NULL, NULL, 3, 0, 'type/Float', NULL, NULL),
(15, '2022-06-13 12:57:26', '2022-06-13 12:57:28', 'TOTAL', 'type/Float', NULL, b'1', 'The total billed amount.', b'1', 5, 2, NULL, 'Total', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":4426,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":8.93914247937167,\"q1\":51.34535490743823,\"q3\":110.29428389265787,\"max\":159.34900526552292,\"sd\":34.26469575709948,\"avg\":80.35871658771228}}}', 5, 'DOUBLE', NULL, NULL, 5, 0, 'type/Float', NULL, NULL),
(16, '2022-06-13 12:57:26', '2022-06-13 12:57:28', 'TAX', 'type/Float', NULL, b'1', 'This is the amount of local and federal taxes that are collected on the purchase. Note that other governmental fees on some products are not included here, but instead are accounted for in the subtotal.', b'1', 4, 2, NULL, 'Tax', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":797,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":2.273340386603857,\"q3\":5.337275338216307,\"max\":11.12,\"sd\":2.3206651358900316,\"avg\":3.8722100000000004}}}', 5, 'DOUBLE', NULL, NULL, 4, 0, 'type/Float', NULL, NULL),
(17, '2022-06-13 12:57:26', '2022-06-13 12:57:26', 'ID', 'type/BigInteger', 'type/PK', b'1', 'This is a unique ID for the product. It is also called the “Invoice number” or “Confirmation number” in customer facing emails and screens.', b'1', 0, 2, NULL, 'ID', 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'BIGINT', NULL, NULL, 0, 0, 'type/BigInteger', NULL, NULL),
(18, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'CREATED_AT', 'type/DateTime', 'type/CreationTimestamp', b'1', 'The date the user record was created. Also referred to as the user’s \"join date\"', b'1', 12, 3, NULL, 'Created At', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":2500,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2016-04-19T21:35:18.752Z\",\"latest\":\"2019-04-19T14:06:27.3Z\"}}}', 5, 'TIMESTAMP', NULL, NULL, 12, 0, 'type/DateTime', NULL, NULL),
(19, '2022-06-13 12:57:26', '2022-06-13 12:57:29', 'PASSWORD', 'type/Text', NULL, b'1', 'This is the salted password of the user. It should not be visible', b'1', 3, 3, NULL, 'Password', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":2500,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":36.0}}}', 5, 'VARCHAR', NULL, NULL, 3, 0, 'type/Text', NULL, NULL),
(20, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'LONGITUDE', 'type/Float', 'type/Longitude', b'1', 'This is the longitude of the user on sign-up. It might be updated in the future to the last seen location.', b'1', 6, 3, NULL, 'Longitude', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":2491,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":-166.5425726,\"q1\":-101.58350792373135,\"q3\":-84.65289348288829,\"max\":-67.96735199999999,\"sd\":15.399698968175663,\"avg\":-95.18741780363999}}}', 5, 'DOUBLE', NULL, NULL, 6, 0, 'type/Float', NULL, NULL),
(21, '2022-06-13 12:57:26', '2022-06-13 12:57:29', 'ADDRESS', 'type/Text', NULL, b'1', 'The street address of the account’s billing address', b'1', 1, 3, NULL, 'Address', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":2490,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":20.85}}}', 5, 'VARCHAR', NULL, NULL, 1, 0, 'type/Text', NULL, NULL),
(22, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'NAME', 'type/Text', 'type/Name', b'1', 'The name of the user who owns an account', b'1', 4, 3, NULL, 'Name', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":2499,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":13.532}}}', 5, 'VARCHAR', NULL, NULL, 4, 0, 'type/Text', NULL, NULL),
(23, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'EMAIL', 'type/Text', 'type/Email', b'1', 'The contact email for the account.', b'1', 2, 3, NULL, 'Email', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":2500,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":1.0,\"percent-state\":0.0,\"average-length\":24.1824}}}', 5, 'VARCHAR', NULL, NULL, 2, 0, 'type/Text', NULL, NULL),
(24, '2022-06-13 12:57:26', '2022-06-13 12:57:29', 'BIRTH_DATE', 'type/Date', NULL, b'1', 'The date of birth of the user', b'1', 9, 3, NULL, 'Birth Date', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":2308,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"1958-04-26\",\"latest\":\"2000-04-03\"}}}', 5, 'DATE', NULL, NULL, 9, 0, 'type/Date', NULL, NULL),
(25, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'STATE', 'type/Text', 'type/State', b'1', 'The state or province of the account’s billing address', b'1', 7, 3, NULL, 'State', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":49,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":1.0,\"average-length\":2.0}}}', 5, 'CHAR', 'auto-list', NULL, 7, 0, 'type/Text', NULL, NULL),
(26, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'SOURCE', 'type/Text', 'type/Source', b'1', 'The channel through which we acquired this user. Valid values include: Affiliate, Facebook, Google, Organic and Twitter', b'1', 8, 3, NULL, 'Source', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":5,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":7.4084}}}', 5, 'VARCHAR', 'auto-list', NULL, 8, 0, 'type/Text', NULL, NULL),
(27, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'LATITUDE', 'type/Float', 'type/Latitude', b'1', 'This is the latitude of the user on sign-up. It might be updated in the future to the last seen location.', b'1', 11, 3, NULL, 'Latitude', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":2491,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":25.775827,\"q1\":35.302705923023126,\"q3\":43.773802584662,\"max\":70.6355001,\"sd\":6.390832341883712,\"avg\":39.87934670484002}}}', 5, 'DOUBLE', NULL, NULL, 11, 0, 'type/Float', NULL, NULL),
(28, '2022-06-13 12:57:26', '2022-06-13 12:57:29', 'ZIP', 'type/Text', 'type/ZipCode', b'1', 'The postal code of the account’s billing address', b'1', 10, 3, NULL, 'Zip', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":2234,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":5.0}}}', 5, 'CHAR', NULL, NULL, 10, 0, 'type/Text', NULL, NULL),
(29, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'CITY', 'type/Text', 'type/City', b'1', 'The city of the account’s billing address', b'1', 5, 3, NULL, 'City', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":1966,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.002,\"average-length\":8.284}}}', 5, 'VARCHAR', NULL, NULL, 5, 0, 'type/Text', NULL, NULL),
(30, '2022-06-13 12:57:26', '2022-06-13 12:57:26', 'ID', 'type/BigInteger', 'type/PK', b'1', 'A unique identifier given to each user.', b'1', 0, 3, NULL, 'ID', 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'BIGINT', NULL, NULL, 0, 0, 'type/BigInteger', NULL, NULL),
(31, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'RATING', 'type/Integer', 'type/Score', b'1', 'The rating (on a scale of 1-5) the user left.', b'1', 3, 4, NULL, 'Rating', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":5,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":1.0,\"q1\":3.54744353181696,\"q3\":4.764807071650455,\"max\":5.0,\"sd\":1.0443899855660577,\"avg\":3.987410071942446}}}', 5, 'SMALLINT', 'auto-list', NULL, 3, 0, 'type/Integer', NULL, NULL),
(32, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'BODY', 'type/Text', 'type/Description', b'1', 'The review the user left. Limited to 2000 characters.', b'1', 4, 4, NULL, 'Body', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":1112,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":177.41996402877697}}}', 5, 'CLOB', NULL, NULL, 4, 0, 'type/Text', NULL, NULL),
(33, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'PRODUCT_ID', 'type/Integer', 'type/FK', b'1', 'The product the review was for', b'1', 1, 4, NULL, 'Product ID', 'normal', 8, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":176,\"nil%\":0.0}}', 5, 'INTEGER', NULL, NULL, 1, 0, 'type/Integer', NULL, NULL),
(34, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'CREATED_AT', 'type/DateTime', 'type/CreationTimestamp', b'1', 'The day and time a review was written by a user.', b'1', 5, 4, NULL, 'Created At', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":1112,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2016-06-03T00:37:05.818Z\",\"latest\":\"2020-04-19T14:15:25.677Z\"}}}', 5, 'TIMESTAMP', NULL, NULL, 5, 0, 'type/DateTime', NULL, NULL),
(35, '2022-06-13 12:57:26', '2022-06-13 12:57:30', 'REVIEWER', 'type/Text', NULL, b'1', 'The user who left the review', b'1', 2, 4, NULL, 'Reviewer', 'normal', NULL, '2022-06-13 12:57:30', NULL, NULL, '{\"global\":{\"distinct-count\":1076,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.001798561151079137,\"average-length\":9.972122302158274}}}', 5, 'VARCHAR', NULL, NULL, 2, 0, 'type/Text', NULL, NULL),
(36, '2022-06-13 12:57:26', '2022-06-13 12:57:26', 'ID', 'type/BigInteger', 'type/PK', b'1', 'A unique internal identifier for the review. Should not be used externally.', b'1', 0, 4, NULL, 'ID', 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'BIGINT', NULL, NULL, 0, 0, 'type/BigInteger', NULL, NULL),
(37, '2022-06-14 07:23:53', '2022-06-14 07:23:56', 'customerid', 'type/BigInteger', NULL, b'1', NULL, b'1', 6, 5, NULL, 'Customerid', 'normal', NULL, '2022-06-14 07:23:56', NULL, NULL, '{\"global\":{\"distinct-count\":410,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":12395.0,\"q1\":14344.459047291757,\"q3\":17231.805811236383,\"max\":18239.0,\"sd\":1759.3507789390148,\"avg\":15639.2698}}}', 5, 'BIGINT', NULL, NULL, 6, 0, 'type/BigInteger', NULL, NULL),
(38, '2022-06-14 07:23:53', '2022-06-14 07:23:56', 'stockcode', 'type/Text', NULL, b'1', NULL, b'1', 1, 5, NULL, 'Stockcode', 'normal', NULL, '2022-06-14 07:23:56', NULL, NULL, '{\"global\":{\"distinct-count\":1836,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":5.1023}}}', 5, 'TEXT', NULL, NULL, 1, 0, 'type/Text', NULL, NULL),
(39, '2022-06-14 07:23:53', '2022-06-14 07:23:56', 'invoicedate', 'type/DateTimeWithLocalTZ', NULL, b'1', NULL, b'1', 4, 5, NULL, 'Invoicedate', 'normal', NULL, '2022-06-14 07:23:56', NULL, NULL, '{\"global\":{\"distinct-count\":516,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2010-12-01T08:26:00Z\",\"latest\":\"2010-12-07T10:32:00Z\"}}}', 5, 'TIMESTAMP', NULL, NULL, 4, 0, 'type/DateTimeWithLocalTZ', NULL, NULL),
(40, '2022-06-14 07:23:53', '2022-06-14 07:23:56', 'unitprice', 'type/Float', NULL, b'1', NULL, b'1', 5, 5, NULL, 'Unitprice', 'normal', NULL, '2022-06-14 07:23:56', NULL, NULL, '{\"global\":{\"distinct-count\":100,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":1.2436394493039578,\"q3\":3.7354736847149286,\"max\":295.0,\"sd\":4.710182601205335,\"avg\":3.092209000000002}}}', 5, 'DOUBLE', NULL, NULL, 5, 0, 'type/Float', NULL, NULL),
(41, '2022-06-14 07:23:53', '2022-06-14 07:23:56', 'country', 'type/Text', 'type/Country', b'1', NULL, b'1', 7, 5, NULL, 'Country', 'normal', NULL, '2022-06-14 07:23:56', NULL, NULL, '{\"global\":{\"distinct-count\":15,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":13.4618}}}', 5, 'TEXT', 'auto-list', NULL, 7, 0, 'type/Text', NULL, NULL),
(42, '2022-06-14 07:23:53', '2022-06-14 07:23:57', 'quantity', 'type/BigInteger', 'type/Quantity', b'1', NULL, b'1', 3, 5, NULL, 'Quantity', 'normal', NULL, '2022-06-14 07:23:56', NULL, NULL, '{\"global\":{\"distinct-count\":93,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":-9360.0,\"q1\":1.4661218985188713,\"q3\":10.121513921587407,\"max\":2880.0,\"sd\":104.81638328274234,\"avg\":9.228899999999998}}}', 5, 'BIGINT', NULL, NULL, 3, 0, 'type/BigInteger', NULL, NULL),
(43, '2022-06-14 07:23:53', '2022-06-14 07:23:56', 'invoiceno', 'type/Text', NULL, b'1', NULL, b'1', 0, 5, NULL, 'Invoiceno', 'normal', NULL, '2022-06-14 07:23:56', NULL, NULL, '{\"global\":{\"distinct-count\":571,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":6.0131}}}', 5, 'TEXT', NULL, NULL, 0, 0, 'type/Text', NULL, NULL),
(44, '2022-06-14 07:23:53', '2022-06-14 07:23:56', 'description', 'type/Text', 'type/Description', b'1', NULL, b'1', 2, 5, NULL, 'Description', 'normal', NULL, '2022-06-14 07:23:56', NULL, NULL, '{\"global\":{\"distinct-count\":1842,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":26.7745}}}', 5, 'TEXT', NULL, NULL, 2, 0, 'type/Text', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `metabase_fieldvalues`
--

CREATE TABLE `metabase_fieldvalues` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `values` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `human_readable_values` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metabase_fieldvalues`
--

INSERT INTO `metabase_fieldvalues` (`id`, `created_at`, `updated_at`, `values`, `human_readable_values`, `field_id`) VALUES
(1, '2022-06-13 12:57:30', '2022-06-13 12:57:30.211000', '[\"Doohickey\",\"Gadget\",\"Gizmo\",\"Widget\"]', NULL, 4),
(2, '2022-06-13 12:57:30', '2022-06-13 12:57:30.727000', '[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,63,65,67,68,69,70,71,72,73,75,78,82,83,88,100]', NULL, 10),
(3, '2022-06-13 12:57:30', '2022-06-13 12:57:30.748000', '[\"AK\",\"AL\",\"AR\",\"AZ\",\"CA\",\"CO\",\"CT\",\"DE\",\"FL\",\"GA\",\"IA\",\"ID\",\"IL\",\"IN\",\"KS\",\"KY\",\"LA\",\"MA\",\"MD\",\"ME\",\"MI\",\"MN\",\"MO\",\"MS\",\"MT\",\"NC\",\"ND\",\"NE\",\"NH\",\"NJ\",\"NM\",\"NV\",\"NY\",\"OH\",\"OK\",\"OR\",\"PA\",\"RI\",\"SC\",\"SD\",\"TN\",\"TX\",\"UT\",\"VA\",\"VT\",\"WA\",\"WI\",\"WV\",\"WY\"]', NULL, 25),
(4, '2022-06-13 12:57:30', '2022-06-13 12:57:30.758000', '[\"Affiliate\",\"Facebook\",\"Google\",\"Organic\",\"Twitter\"]', NULL, 26),
(5, '2022-06-13 12:57:30', '2022-06-13 12:57:30.772000', '[1,2,3,4,5]', NULL, 31),
(6, '2022-06-14 07:23:56', '2022-06-14 07:23:56.848000', '[\"Australia\",\"Austria\",\"Bahrain\",\"Belgium\",\"Brazil\",\"Canada\",\"Channel Islands\",\"Cyprus\",\"Czech Republic\",\"Denmark\",\"EIRE\",\"European Community\",\"Finland\",\"France\",\"Germany\",\"Greece\",\"Iceland\",\"Israel\",\"Italy\",\"Japan\",\"Lebanon\",\"Lithuania\",\"Malta\",\"Netherlands\",\"Norway\",\"Poland\",\"Portugal\",\"RSA\",\"Saudi Arabia\",\"Singapore\",\"Spain\",\"Sweden\",\"Switzerland\",\"United Arab Emirates\",\"United Kingdom\",\"Unspecified\",\"USA\"]', NULL, 41);

-- --------------------------------------------------------

--
-- Table structure for table `metabase_table`
--

CREATE TABLE `metabase_table` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `db_id` int(11) NOT NULL,
  `display_name` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility_type` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points_of_interest` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caveats` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_in_getting_started` bit(1) NOT NULL DEFAULT b'0',
  `field_order` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'database',
  `initial_sync_status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'complete' COMMENT 'String indicating whether a table has completed its initial sync and is ready to use'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metabase_table`
--

INSERT INTO `metabase_table` (`id`, `created_at`, `updated_at`, `name`, `description`, `entity_type`, `active`, `db_id`, `display_name`, `visibility_type`, `schema`, `points_of_interest`, `caveats`, `show_in_getting_started`, `field_order`, `initial_sync_status`) VALUES
(1, '2022-06-13 12:57:26', '2022-06-15 10:50:00', 'PRODUCTS', 'Includes a catalog of all the products ever sold by the famed Sample Company.', 'entity/ProductTable', b'1', 1, 'Products', NULL, 'PUBLIC', 'Is it? You tell us!', 'The rating column is an integer from 1-5 where 1 is dreadful and 5 is the best thing ever.', b'0', 'database', 'complete'),
(2, '2022-06-13 12:57:26', '2022-06-15 10:50:00', 'ORDERS', 'Confirmed Sample Company orders for a product, from a user.', 'entity/TransactionTable', b'1', 1, 'Orders', NULL, 'PUBLIC', 'Is it? You tell us!', 'You can join this on the Products and Orders table using the ID fields. Discount is left null if not applicable.', b'0', 'database', 'complete'),
(3, '2022-06-13 12:57:26', '2022-06-15 10:50:00', 'PEOPLE', 'Information on the user accounts registered with Sample Company.', 'entity/UserTable', b'1', 1, 'People', NULL, 'PUBLIC', 'Is it? You tell us!', 'Note that employees and customer support staff will have accounts.', b'0', 'database', 'complete'),
(4, '2022-06-13 12:57:26', '2022-06-15 10:50:00', 'REVIEWS', 'Reviews that Sample Company customers have left on our products.', 'entity/GenericTable', b'1', 1, 'Reviews', NULL, 'PUBLIC', 'Is it? You tell us!', 'These reviews aren\'t tied to orders so it is possible people have reviewed products they did not purchase from us.', b'0', 'database', 'complete'),
(5, '2022-06-14 07:23:53', '2022-06-14 07:23:56', 'cleaned_online_retail', NULL, 'entity/GenericTable', b'1', 2, 'Cleaned Online Retail', NULL, NULL, NULL, NULL, b'0', 'database', 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `metric`
--

CREATE TABLE `metric` (
  `id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archived` bit(1) DEFAULT b'0',
  `definition` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `points_of_interest` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caveats` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `how_is_this_calculated` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_in_getting_started` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `metric_important_field`
--

CREATE TABLE `metric_important_field` (
  `id` int(11) NOT NULL,
  `metric_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `moderation_review`
--

CREATE TABLE `moderation_review` (
  `id` int(11) NOT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'most recent modification time',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'creation time',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'verified, misleading, confusing, not_misleading, pending',
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moderated_item_id` int(11) NOT NULL COMMENT 'either a document or question ID; the item that needs review',
  `moderated_item_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'whether it''s a question or dashboard',
  `moderator_id` int(11) NOT NULL COMMENT 'ID of the user who did the review',
  `most_recent` bit(1) NOT NULL COMMENT 'tag for most recent review'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Reviews (from moderators) for a given question/dashboard (BUCM)';

-- --------------------------------------------------------

--
-- Table structure for table `native_query_snippet`
--

CREATE TABLE `native_query_snippet` (
  `id` int(11) NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the query snippet',
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `archived` bit(1) NOT NULL DEFAULT b'0',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `collection_id` int(11) DEFAULT NULL COMMENT 'ID of the Snippet Folder (Collection) this Snippet is in, if any'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Query snippets (raw text) to be substituted in native queries';

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `object` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `object`, `group_id`) VALUES
(3, '/application/subscription/', 1),
(2, '/collection/root/', 1),
(4, '/db/1/', 1),
(7, '/db/2/', 1),
(5, '/download/db/1/', 1),
(6, '/download/db/1/native/', 1),
(8, '/download/db/2/', 1),
(9, '/download/db/2/native/', 1),
(1, '/', 2);

-- --------------------------------------------------------

--
-- Table structure for table `permissions_group`
--

CREATE TABLE `permissions_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions_group`
--

INSERT INTO `permissions_group` (`id`, `name`) VALUES
(2, 'Administrators'),
(1, 'All Users');

-- --------------------------------------------------------

--
-- Table structure for table `permissions_group_membership`
--

CREATE TABLE `permissions_group_membership` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `is_group_manager` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Boolean flag to indicate whether user is a group''s manager.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions_group_membership`
--

INSERT INTO `permissions_group_membership` (`id`, `user_id`, `group_id`, `is_group_manager`) VALUES
(1, 1, 1, b'0'),
(2, 1, 2, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `permissions_revision`
--

CREATE TABLE `permissions_revision` (
  `id` int(11) NOT NULL,
  `before` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Serialized JSON of the permissions before the changes.',
  `after` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Serialized JSON of the permissions after the changes.',
  `user_id` int(11) NOT NULL COMMENT 'The ID of the admin who made this set of changes.',
  `created_at` datetime NOT NULL COMMENT 'The timestamp of when these changes were made.',
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Optional remarks explaining why these changes were made.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to keep track of changes made to permissions.';

-- --------------------------------------------------------

--
-- Table structure for table `pulse`
--

CREATE TABLE `pulse` (
  `id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `skip_if_empty` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Skip a scheduled Pulse if none of its questions have any results',
  `alert_condition` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Condition (i.e. "rows" or "goal") used as a guard for alerts',
  `alert_first_only` bit(1) DEFAULT NULL COMMENT 'True if the alert should be disabled after the first notification',
  `alert_above_goal` bit(1) DEFAULT NULL COMMENT 'For a goal condition, alert when above the goal',
  `collection_id` int(11) DEFAULT NULL COMMENT 'Options ID of Collection this Pulse belongs to.',
  `collection_position` smallint(6) DEFAULT NULL COMMENT 'Optional pinned position for this item in its Collection. NULL means item is not pinned.',
  `archived` bit(1) DEFAULT b'0' COMMENT 'Has this pulse been archived?',
  `dashboard_id` int(11) DEFAULT NULL COMMENT 'ID of the Dashboard if this Pulse is a Dashboard Subscription.',
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pulse_card`
--

CREATE TABLE `pulse_card` (
  `id` int(11) NOT NULL,
  `pulse_id` int(11) NOT NULL,
  `card_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `include_csv` bit(1) NOT NULL DEFAULT b'0' COMMENT 'True if a CSV of the data should be included for this pulse card',
  `include_xls` bit(1) NOT NULL DEFAULT b'0' COMMENT 'True if a XLS of the data should be included for this pulse card',
  `dashboard_card_id` int(11) DEFAULT NULL COMMENT 'If this Pulse is a Dashboard subscription, the ID of the DashboardCard that corresponds to this PulseCard.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pulse_channel`
--

CREATE TABLE `pulse_channel` (
  `id` int(11) NOT NULL,
  `pulse_id` int(11) NOT NULL,
  `channel_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule_hour` int(11) DEFAULT NULL,
  `schedule_day` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `schedule_frame` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pulse_channel_recipient`
--

CREATE TABLE `pulse_channel_recipient` (
  `id` int(11) NOT NULL,
  `pulse_channel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_blob_triggers`
--

CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BLOB_DATA` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_calendars`
--

CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CALENDAR_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CALENDAR` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_cron_triggers`
--

CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CRON_EXPRESSION` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TIME_ZONE_ID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_fired_triggers`
--

CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ENTRY_ID` varchar(95) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `SCHED_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JOB_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IS_NONCONCURRENT` bit(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_job_details`
--

CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IS_DURABLE` bit(1) NOT NULL,
  `IS_NONCONCURRENT` bit(1) NOT NULL,
  `IS_UPDATE_DATA` bit(1) NOT NULL,
  `REQUESTS_RECOVERY` bit(1) NOT NULL,
  `JOB_DATA` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_locks`
--

CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LOCK_NAME` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_scheduler_state`
--

CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_simple_triggers`
--

CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_simprop_triggers`
--

CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `STR_PROP_1` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STR_PROP_2` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STR_PROP_3` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` bit(1) DEFAULT NULL,
  `BOOL_PROP_2` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_triggers`
--

CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_GROUP` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_TYPE` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MISFIRE_INSTR` smallint(6) DEFAULT NULL,
  `JOB_DATA` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `query_hash` binary(32) NOT NULL,
  `average_execution_time` int(11) NOT NULL COMMENT 'Average execution time for the query, round to nearest number of milliseconds. This is updated as a rolling average.',
  `query` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Information (such as average execution time) for different queries that have been previously ran.';

-- --------------------------------------------------------

--
-- Table structure for table `query_cache`
--

CREATE TABLE `query_cache` (
  `query_hash` binary(32) NOT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `results` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Cached results of queries are stored here when using the DB-based query cache.';

-- --------------------------------------------------------

--
-- Table structure for table `query_execution`
--

CREATE TABLE `query_execution` (
  `id` int(11) NOT NULL,
  `hash` binary(32) NOT NULL COMMENT 'The hash of the query dictionary. This is a 256-bit SHA3 hash of the query.',
  `started_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `running_time` int(11) NOT NULL COMMENT 'The time, in milliseconds, this query took to complete.',
  `result_rows` int(11) NOT NULL COMMENT 'Number of rows in the query results.',
  `native` bit(1) NOT NULL COMMENT 'Whether the query was a native query, as opposed to an MBQL one (e.g., created with the GUI).',
  `context` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Short string specifying how this query was executed, e.g. in a Dashboard or Pulse.',
  `error` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `executor_id` int(11) DEFAULT NULL COMMENT 'The ID of the User who triggered this query execution, if any.',
  `card_id` int(11) DEFAULT NULL COMMENT 'The ID of the Card (Question) associated with this query execution, if any.',
  `dashboard_id` int(11) DEFAULT NULL COMMENT 'The ID of the Dashboard associated with this query execution, if any.',
  `pulse_id` int(11) DEFAULT NULL COMMENT 'The ID of the Pulse associated with this query execution, if any.',
  `database_id` int(11) DEFAULT NULL COMMENT 'ID of the database this query was ran against.',
  `cache_hit` bit(1) DEFAULT NULL COMMENT 'Cache hit on query execution'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='A log of executed queries, used for calculating historic execution times, auditing, and other purposes.';

-- --------------------------------------------------------

--
-- Table structure for table `report_card`
--

CREATE TABLE `report_card` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataset_query` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visualization_settings` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `database_id` int(11) NOT NULL,
  `table_id` int(11) DEFAULT NULL,
  `query_type` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archived` bit(1) NOT NULL DEFAULT b'0',
  `collection_id` int(11) DEFAULT NULL COMMENT 'Optional ID of Collection this Card belongs to.',
  `public_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Unique UUID used to in publically-accessible links to this Card.',
  `made_public_by_id` int(11) DEFAULT NULL COMMENT 'The ID of the User who first publically shared this Card.',
  `enable_embedding` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Is this Card allowed to be embedded in different websites (using a signed JWT)?',
  `embedding_params` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cache_ttl` int(11) DEFAULT NULL COMMENT 'The maximum time, in seconds, to return cached results for this Card rather than running a new query.',
  `result_metadata` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_position` smallint(6) DEFAULT NULL COMMENT 'Optional pinned position for this item in its Collection. NULL means item is not pinned.',
  `dataset` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Indicate whether question is a dataset'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_card`
--

INSERT INTO `report_card` (`id`, `created_at`, `updated_at`, `name`, `description`, `display`, `dataset_query`, `visualization_settings`, `creator_id`, `database_id`, `table_id`, `query_type`, `archived`, `collection_id`, `public_uuid`, `made_public_by_id`, `enable_embedding`, `embedding_params`, `cache_ttl`, `result_metadata`, `collection_position`, `dataset`) VALUES
(1, '2022-06-14 10:31:28', '2022-06-15 10:12:13', 'Top 5 countries by total quantity', NULL, 'row', '{\"type\":\"native\",\"native\":{\"query\":\"SELECT sum(quantity)as \'total sum\', country from cleaned_online_retail group by country order by sum(quantity) desc limit 5;\",\"template-tags\":{}},\"database\":2}', '{\"series_settings\":{\"total sum\":{\"axis\":null}},\"graph.dimensions\":[\"country\"],\"graph.metrics\":[\"total sum\"]}', 1, 2, NULL, 'native', b'0', NULL, NULL, NULL, b'0', NULL, NULL, '[{\"display_name\":\"total sum\",\"field_ref\":[\"field\",\"total sum\",{\"base-type\":\"type/Decimal\"}],\"name\":\"total sum\",\"base_type\":\"type/Decimal\",\"effective_type\":\"type/Decimal\",\"semantic_type\":null,\"fingerprint\":{\"global\":{\"distinct-count\":5,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":109848.0,\"q1\":115548.0,\"q3\":1152229.25,\"max\":4008533.0,\"sd\":1730005.3748011014,\"avg\":914457.2}}}},{\"display_name\":\"country\",\"field_ref\":[\"field\",\"country\",{\"base-type\":\"type/Text\"}],\"name\":\"country\",\"base_type\":\"type/Text\",\"effective_type\":\"type/Text\",\"semantic_type\":\"type/Country\",\"fingerprint\":{\"global\":{\"distinct-count\":5,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":8.4}}}}]', NULL, b'0'),
(2, '2022-06-14 10:47:16', '2022-06-15 10:12:13', 'Grouping countries by total quantity', NULL, 'bar', '{\"type\":\"native\",\"native\":{\"query\":\"select sum(quantity) as \'Total Products\', country from cleaned_online_retail group by country order by sum(quantity) desc \",\"template-tags\":{}},\"database\":2}', '{\"map.colors\":[\"#daecfb\",\"#aad1f4\",\"#7ab7ec\",\"#499ce5\",\"hsl(208.20000000000005, 79.7%, 42.1%)\"],\"map.dimension\":\"country\",\"map.region\":\"world_countries\",\"graph.dimensions\":[\"country\"],\"graph.metrics\":[\"Total Products\"]}', 1, 2, NULL, 'native', b'0', NULL, NULL, NULL, b'0', NULL, NULL, '[{\"display_name\":\"Total Products\",\"field_ref\":[\"field\",\"Total Products\",{\"base-type\":\"type/Decimal\"}],\"name\":\"Total Products\",\"base_type\":\"type/Decimal\",\"effective_type\":\"type/Decimal\",\"semantic_type\":null,\"fingerprint\":{\"global\":{\"distinct-count\":37,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":75.0,\"q1\":972.5,\"q3\":25619.5,\"max\":4008533.0,\"sd\":656468.7047167367,\"avg\":132618.5945945946}}}},{\"display_name\":\"country\",\"field_ref\":[\"field\",\"country\",{\"base-type\":\"type/Text\"}],\"name\":\"country\",\"base_type\":\"type/Text\",\"effective_type\":\"type/Text\",\"semantic_type\":\"type/Country\",\"fingerprint\":{\"global\":{\"distinct-count\":37,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":8.135135135135135}}}}]', NULL, b'0'),
(3, '2022-06-15 05:07:35', '2022-06-15 10:12:12', 'Total product counts per region', NULL, 'bar', '{\"type\":\"native\",\"native\":{\"query\":\"select country, count(distinct(stockcode)) as \'Product Counts\' from cleaned_online_retail group by country\",\"template-tags\":{}},\"database\":2}', '{\"graph.dimensions\":[\"country\"],\"graph.metrics\":[\"Product Counts\"]}', 1, 2, NULL, 'native', b'0', NULL, NULL, NULL, b'0', NULL, NULL, '[{\"display_name\":\"country\",\"field_ref\":[\"field\",\"country\",{\"base-type\":\"type/Text\"}],\"name\":\"country\",\"base_type\":\"type/Text\",\"effective_type\":\"type/Text\",\"semantic_type\":\"type/Country\",\"fingerprint\":{\"global\":{\"distinct-count\":37,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":8.135135135135135}}}},{\"display_name\":\"Product Counts\",\"field_ref\":[\"field\",\"Product Counts\",{\"base-type\":\"type/BigInteger\"}],\"name\":\"Product Counts\",\"base_type\":\"type/BigInteger\",\"effective_type\":\"type/BigInteger\",\"semantic_type\":null,\"fingerprint\":{\"global\":{\"distinct-count\":37,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":9.0,\"q1\":91.25,\"q3\":621.5,\"max\":3661.0,\"sd\":716.5792194710768,\"avg\":513.0}}}}]', NULL, b'0'),
(4, '2022-06-15 05:14:31', '2022-06-15 05:32:51', 'Top 5 countries by Total Unit Price', NULL, 'row', '{\"type\":\"native\",\"native\":{\"query\":\"select sum(unitprice) as \'Unit Price\', country from cleaned_online_retail group by country order by sum(unitprice) desc limit 5\",\"template-tags\":{}},\"database\":2}', '{\"graph.dimensions\":[\"country\"],\"graph.metrics\":[\"Unit Price\"]}', 1, 2, NULL, 'native', b'0', NULL, NULL, NULL, b'0', NULL, NULL, '[{\"display_name\":\"Unit Price\",\"field_ref\":[\"field\",\"Unit Price\",{\"base-type\":\"type/Float\"}],\"name\":\"Unit Price\",\"base_type\":\"type/Float\",\"effective_type\":\"type/Float\",\"semantic_type\":null,\"fingerprint\":{\"global\":{\"distinct-count\":5,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":25108.890000000007,\"q1\":34526.72250000038,\"q3\":326722.74599957815,\"max\":1178277.2639983122,\"sd\":510895.6312829625,\"avg\":264435.39479966264}}}},{\"display_name\":\"country\",\"field_ref\":[\"field\",\"country\",{\"base-type\":\"type/Text\"}],\"name\":\"country\",\"base_type\":\"type/Text\",\"effective_type\":\"type/Text\",\"semantic_type\":\"type/Country\",\"fingerprint\":{\"global\":{\"distinct-count\":5,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":8.0}}}}]', NULL, b'0'),
(5, '2022-06-15 05:24:28', '2022-06-15 10:12:12', 'Total Unit Price sold by year', NULL, 'row', '{\"type\":\"native\",\"native\":{\"query\":\"select sum(unitprice * quantity) as \'Total Unit Price Sold\', year(invoicedate) as Year from cleaned_online_retail group by year(invoicedate) \",\"template-tags\":{}},\"database\":2}', '{\"graph.dimensions\":[\"Year\"],\"graph.metrics\":[\"Total Unit Price Sold\"]}', 1, 2, NULL, 'native', b'0', NULL, NULL, NULL, b'0', NULL, NULL, '[{\"display_name\":\"Total Unit Price Sold\",\"field_ref\":[\"field\",\"Total Unit Price Sold\",{\"base-type\":\"type/Float\"}],\"name\":\"Total Unit Price Sold\",\"base_type\":\"type/Float\",\"effective_type\":\"type/Float\",\"semantic_type\":null,\"fingerprint\":{\"global\":{\"distinct-count\":2,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":554604.020000018,\"q1\":554604.020000018,\"q3\":7745461.79400296,\"max\":7745461.79400296,\"sd\":5084704.294545483,\"avg\":4150032.9070014893}}}},{\"display_name\":\"Year\",\"field_ref\":[\"field\",\"Year\",{\"base-type\":\"type/Integer\"}],\"name\":\"Year\",\"base_type\":\"type/Integer\",\"effective_type\":\"type/Integer\",\"semantic_type\":null,\"fingerprint\":{\"global\":{\"distinct-count\":2,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":2010.0,\"q1\":2010.0,\"q3\":2011.0,\"max\":2011.0,\"sd\":0.7071067811865476,\"avg\":2010.5}}}}]', NULL, b'0'),
(6, '2022-06-15 05:32:45', '2022-06-15 10:12:13', 'Top 5 countries by Total Unit Price', NULL, 'row', '{\"type\":\"native\",\"native\":{\"query\":\"SELECT `source`.`Unit Price` AS `Unit Price`, `source`.`country` AS `country`\\nFROM (select sum(unitprice * quantity) as \'Unit Price\', country from cleaned_online_retail group by country order by sum(unitprice) desc limit 5) `source`\\nLIMIT 1048575\",\"template-tags\":{}},\"database\":2}', '{\"graph.dimensions\":[\"country\"],\"graph.metrics\":[\"Unit Price\"]}', 1, 2, NULL, 'native', b'0', NULL, NULL, NULL, b'0', NULL, NULL, '[{\"display_name\":\"Unit Price\",\"field_ref\":[\"field\",\"Unit Price\",{\"base-type\":\"type/Float\"}],\"name\":\"Unit Price\",\"base_type\":\"type/Float\",\"effective_type\":\"type/Float\",\"semantic_type\":null,\"fingerprint\":{\"global\":{\"distinct-count\":5,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":9120.39,\"q1\":149814.72749999992,\"q3\":1879682.2635006425,\"max\":6767873.394002574,\"sd\":2952415.2024992867,\"avg\":1489138.0108005141}}}},{\"display_name\":\"country\",\"field_ref\":[\"field\",\"country\",{\"base-type\":\"type/Text\"}],\"name\":\"country\",\"base_type\":\"type/Text\",\"effective_type\":\"type/Text\",\"semantic_type\":\"type/Country\",\"fingerprint\":{\"global\":{\"distinct-count\":5,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":8.0}}}}]', NULL, b'0'),
(7, '2022-06-15 08:38:28', '2022-06-15 10:12:55', 'Time to Time Sale', NULL, 'line', '{\"type\":\"native\",\"native\":{\"query\":\"select sum(quantity) as \'Quantity\', date(invoicedate) as \'Date\' from cleaned_online_retail group by date(invoicedate)\",\"template-tags\":{}},\"database\":2}', '{\"graph.dimensions\":[\"Date\"],\"graph.metrics\":[\"Quantity\"],\"series_settings\":{\"Quantity\":{\"display\":\"area\"}}}', 1, 2, NULL, 'native', b'0', NULL, NULL, NULL, b'0', NULL, NULL, '[{\"display_name\":\"Quantity\",\"field_ref\":[\"field\",\"Quantity\",{\"base-type\":\"type/Decimal\"}],\"name\":\"Quantity\",\"base_type\":\"type/Decimal\",\"effective_type\":\"type/Decimal\",\"semantic_type\":null,\"fingerprint\":{\"global\":{\"distinct-count\":303,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":2048.0,\"q1\":10519.152563362004,\"q3\":20084.794189845867,\"max\":45741.0,\"sd\":8282.29005038455,\"avg\":16088.15737704918}}}},{\"display_name\":\"Date\",\"field_ref\":[\"field\",\"Date\",{\"base-type\":\"type/Date\"}],\"name\":\"Date\",\"base_type\":\"type/Date\",\"effective_type\":\"type/Date\",\"semantic_type\":null,\"fingerprint\":{\"global\":{\"distinct-count\":305,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2010-12-01T00:00:00Z\",\"latest\":\"2011-12-09T00:00:00Z\"}}}}]', NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `report_cardfavorite`
--

CREATE TABLE `report_cardfavorite` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `card_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_dashboard`
--

CREATE TABLE `report_dashboard` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points_of_interest` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caveats` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_in_getting_started` bit(1) NOT NULL DEFAULT b'0',
  `public_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Unique UUID used to in publically-accessible links to this Dashboard.',
  `made_public_by_id` int(11) DEFAULT NULL COMMENT 'The ID of the User who first publically shared this Dashboard.',
  `enable_embedding` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Is this Dashboard allowed to be embedded in different websites (using a signed JWT)?',
  `embedding_params` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archived` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Is this Dashboard archived (effectively treated as deleted?)',
  `position` int(11) DEFAULT NULL COMMENT 'The position this Dashboard should appear in the Dashboards list, lower-numbered positions appearing before higher numbered ones.',
  `collection_id` int(11) DEFAULT NULL COMMENT 'Optional ID of Collection this Dashboard belongs to.',
  `collection_position` smallint(6) DEFAULT NULL COMMENT 'Optional pinned position for this item in its Collection. NULL means item is not pinned.',
  `cache_ttl` int(11) DEFAULT NULL COMMENT 'Granular cache TTL for specific dashboard.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_dashboard`
--

INSERT INTO `report_dashboard` (`id`, `created_at`, `updated_at`, `name`, `description`, `creator_id`, `parameters`, `points_of_interest`, `caveats`, `show_in_getting_started`, `public_uuid`, `made_public_by_id`, `enable_embedding`, `embedding_params`, `archived`, `position`, `collection_id`, `collection_position`, `cache_ttl`) VALUES
(1, '2022-06-14 07:24:32', '2022-06-15 10:13:24', 'Descriptive Analysis', NULL, 1, '[]', NULL, NULL, b'0', NULL, NULL, b'0', NULL, b'0', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `report_dashboardcard`
--

CREATE TABLE `report_dashboardcard` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `sizeX` int(11) NOT NULL,
  `sizeY` int(11) NOT NULL,
  `row` int(11) NOT NULL DEFAULT 0,
  `col` int(11) NOT NULL DEFAULT 0,
  `card_id` int(11) DEFAULT NULL,
  `dashboard_id` int(11) NOT NULL,
  `parameter_mappings` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visualization_settings` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_dashboardcard`
--

INSERT INTO `report_dashboardcard` (`id`, `created_at`, `updated_at`, `sizeX`, `sizeY`, `row`, `col`, `card_id`, `dashboard_id`, `parameter_mappings`, `visualization_settings`) VALUES
(1, '2022-06-14 10:31:50', '2022-06-15 10:13:24', 18, 4, 0, 0, 1, 1, '[]', '{}'),
(2, '2022-06-14 10:47:34', '2022-06-15 10:13:24', 18, 5, 8, 0, 2, 1, '[]', '{\"map.colors\":[\"#daecfb\",\"#aad1f4\",\"#7ab7ec\",\"#499ce5\",\"hsl(208.20000000000005, 79.7%, 42.1%)\"],\"map.dimension\":\"country\",\"map.region\":\"world_countries\",\"graph.dimensions\":[\"country\"],\"graph.y_axis.title_text\":\"Total Quantity\",\"graph.metrics\":[\"Total Products\"]}'),
(3, '2022-06-15 05:08:57', '2022-06-15 10:13:24', 18, 4, 4, 0, 3, 1, '[]', '{}'),
(5, '2022-06-15 05:28:46', '2022-06-15 10:13:24', 18, 4, 17, 0, 5, 1, '[]', '{}'),
(6, '2022-06-15 05:34:23', '2022-06-15 10:13:24', 18, 4, 13, 0, 6, 1, '[]', '{}'),
(7, '2022-06-15 10:13:24', '2022-06-15 10:13:24', 18, 4, 21, 0, 7, 1, '[]', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `revision`
--

CREATE TABLE `revision` (
  `id` int(11) NOT NULL,
  `model` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `object` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_reversion` bit(1) NOT NULL DEFAULT b'0',
  `is_creation` bit(1) NOT NULL DEFAULT b'0',
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revision`
--

INSERT INTO `revision` (`id`, `model`, `model_id`, `user_id`, `timestamp`, `object`, `is_reversion`, `is_creation`, `message`) VALUES
(3, 'Card', 1, 1, '2022-06-14 10:31:28.264000', '{\"description\":null,\"archived\":false,\"collection_position\":null,\"table_id\":null,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Top 5 countries by total quantity\",\"creator_id\":1,\"made_public_by_id\":null,\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"type\":\"native\",\"native\":{\"query\":\"SELECT sum(quantity)as \'total sum\', country from cleaned_online_retail group by country order by sum(quantity) desc limit 5;\",\"template-tags\":{}},\"database\":2},\"id\":1,\"display\":\"row\",\"visualization_settings\":{\"series_settings\":{\"total sum\":{\"axis\":null}},\"graph.dimensions\":[\"country\"],\"graph.metrics\":[\"total sum\"]},\"dataset\":false,\"public_uuid\":null}', b'0', b'1', NULL),
(7, 'Card', 2, 1, '2022-06-14 10:47:16.472000', '{\"description\":null,\"archived\":false,\"collection_position\":null,\"table_id\":null,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Grouping countries by total quantity\",\"creator_id\":1,\"made_public_by_id\":null,\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"type\":\"native\",\"native\":{\"query\":\"select sum(quantity) as \'Total Products\', country from cleaned_online_retail group by country order by sum(quantity) desc \",\"template-tags\":{}},\"database\":2},\"id\":2,\"display\":\"bar\",\"visualization_settings\":{\"map.colors\":[\"#daecfb\",\"#aad1f4\",\"#7ab7ec\",\"#499ce5\",\"hsl(208.20000000000005, 79.7%, 42.1%)\"],\"map.dimension\":\"country\",\"map.region\":\"world_countries\",\"graph.dimensions\":[\"country\"],\"graph.metrics\":[\"Total Products\"]},\"dataset\":false,\"public_uuid\":null}', b'0', b'1', NULL),
(18, 'Card', 3, 1, '2022-06-15 05:07:35.392000', '{\"description\":null,\"archived\":false,\"collection_position\":null,\"table_id\":null,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Total product counts per region\",\"creator_id\":1,\"made_public_by_id\":null,\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"type\":\"native\",\"native\":{\"query\":\"select country, count(distinct(stockcode)) as \'Product Counts\' from cleaned_online_retail group by country\",\"template-tags\":{}},\"database\":2},\"id\":3,\"display\":\"bar\",\"visualization_settings\":{\"graph.dimensions\":[\"country\"],\"graph.metrics\":[\"Product Counts\"]},\"dataset\":false,\"public_uuid\":null}', b'0', b'1', NULL),
(22, 'Card', 4, 1, '2022-06-15 05:14:31.257000', '{\"description\":null,\"archived\":false,\"collection_position\":null,\"table_id\":null,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Top 5 countries by Total Unit Price\",\"creator_id\":1,\"made_public_by_id\":null,\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"type\":\"native\",\"native\":{\"query\":\"select sum(unitprice) as \'Unit Price\', country from cleaned_online_retail group by country order by sum(unitprice) desc limit 5\",\"template-tags\":{}},\"database\":2},\"id\":4,\"display\":\"row\",\"visualization_settings\":{\"graph.dimensions\":[\"country\"],\"graph.metrics\":[\"Unit Price\"]},\"dataset\":false,\"public_uuid\":null}', b'0', b'1', NULL),
(24, 'Dashboard', 1, 1, '2022-06-15 05:15:09.985000', '{\"description\":null,\"name\":\"Descriptive Analysis\",\"cache_ttl\":null,\"cards\":[{\"sizeX\":18,\"sizeY\":4,\"row\":0,\"col\":0,\"id\":1,\"card_id\":1,\"series\":[]},{\"sizeX\":18,\"sizeY\":7,\"row\":4,\"col\":0,\"id\":2,\"card_id\":2,\"series\":[]},{\"sizeX\":18,\"sizeY\":6,\"row\":11,\"col\":0,\"id\":3,\"card_id\":3,\"series\":[]},{\"sizeX\":18,\"sizeY\":5,\"row\":17,\"col\":0,\"id\":4,\"card_id\":4,\"series\":[]}]}', b'0', b'0', NULL),
(25, 'Dashboard', 1, 1, '2022-06-15 05:15:09.996000', '{\"description\":null,\"name\":\"Descriptive Analysis\",\"cache_ttl\":null,\"cards\":[{\"sizeX\":18,\"sizeY\":4,\"row\":0,\"col\":0,\"id\":1,\"card_id\":1,\"series\":[]},{\"sizeX\":18,\"sizeY\":7,\"row\":4,\"col\":0,\"id\":2,\"card_id\":2,\"series\":[]},{\"sizeX\":18,\"sizeY\":6,\"row\":11,\"col\":0,\"id\":3,\"card_id\":3,\"series\":[]},{\"sizeX\":18,\"sizeY\":5,\"row\":17,\"col\":0,\"id\":4,\"card_id\":4,\"series\":[]}]}', b'0', b'0', NULL),
(26, 'Card', 5, 1, '2022-06-15 05:24:28.239000', '{\"description\":null,\"archived\":false,\"collection_position\":null,\"table_id\":null,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Total Unit Price sold by year\",\"creator_id\":1,\"made_public_by_id\":null,\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"type\":\"native\",\"native\":{\"query\":\"select sum(unitprice * quantity) as \'Total Unit Price Sold\', year(invoicedate) as Year from cleaned_online_retail group by year(invoicedate) \",\"template-tags\":{}},\"database\":2},\"id\":5,\"display\":\"row\",\"visualization_settings\":{\"graph.dimensions\":[\"Year\"],\"graph.metrics\":[\"Total Unit Price Sold\"]},\"dataset\":false,\"public_uuid\":null}', b'0', b'1', NULL),
(27, 'Dashboard', 1, 1, '2022-06-15 05:28:46.739000', '{\"description\":null,\"name\":\"Descriptive Analysis\",\"cache_ttl\":null,\"cards\":[{\"sizeX\":18,\"sizeY\":4,\"row\":0,\"col\":0,\"id\":1,\"card_id\":1,\"series\":[]},{\"sizeX\":18,\"sizeY\":7,\"row\":4,\"col\":0,\"id\":2,\"card_id\":2,\"series\":[]},{\"sizeX\":18,\"sizeY\":6,\"row\":11,\"col\":0,\"id\":3,\"card_id\":3,\"series\":[]},{\"sizeX\":18,\"sizeY\":5,\"row\":17,\"col\":0,\"id\":4,\"card_id\":4,\"series\":[]},{\"sizeX\":2,\"sizeY\":2,\"row\":0,\"col\":0,\"id\":5,\"card_id\":5,\"series\":[]}]}', b'0', b'0', NULL),
(28, 'Dashboard', 1, 1, '2022-06-15 05:28:46.778000', '{\"description\":null,\"name\":\"Descriptive Analysis\",\"cache_ttl\":null,\"cards\":[{\"sizeX\":18,\"sizeY\":4,\"row\":0,\"col\":0,\"id\":1,\"card_id\":1,\"series\":[]},{\"sizeX\":18,\"sizeY\":7,\"row\":4,\"col\":0,\"id\":2,\"card_id\":2,\"series\":[]},{\"sizeX\":18,\"sizeY\":6,\"row\":11,\"col\":0,\"id\":3,\"card_id\":3,\"series\":[]},{\"sizeX\":18,\"sizeY\":5,\"row\":17,\"col\":0,\"id\":4,\"card_id\":4,\"series\":[]},{\"sizeX\":18,\"sizeY\":6,\"row\":22,\"col\":0,\"id\":5,\"card_id\":5,\"series\":[]}]}', b'0', b'0', NULL),
(29, 'Dashboard', 1, 1, '2022-06-15 05:28:46.789000', '{\"description\":null,\"name\":\"Descriptive Analysis\",\"cache_ttl\":null,\"cards\":[{\"sizeX\":18,\"sizeY\":4,\"row\":0,\"col\":0,\"id\":1,\"card_id\":1,\"series\":[]},{\"sizeX\":18,\"sizeY\":7,\"row\":4,\"col\":0,\"id\":2,\"card_id\":2,\"series\":[]},{\"sizeX\":18,\"sizeY\":6,\"row\":11,\"col\":0,\"id\":3,\"card_id\":3,\"series\":[]},{\"sizeX\":18,\"sizeY\":5,\"row\":17,\"col\":0,\"id\":4,\"card_id\":4,\"series\":[]},{\"sizeX\":18,\"sizeY\":6,\"row\":22,\"col\":0,\"id\":5,\"card_id\":5,\"series\":[]}]}', b'0', b'0', NULL),
(30, 'Card', 6, 1, '2022-06-15 05:32:45.640000', '{\"description\":null,\"archived\":false,\"collection_position\":null,\"table_id\":null,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Top 5 countries by Total Unit Price\",\"creator_id\":1,\"made_public_by_id\":null,\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"type\":\"native\",\"native\":{\"query\":\"SELECT `source`.`Unit Price` AS `Unit Price`, `source`.`country` AS `country`\\nFROM (select sum(unitprice * quantity) as \'Unit Price\', country from cleaned_online_retail group by country order by sum(unitprice) desc limit 5) `source`\\nLIMIT 1048575\",\"template-tags\":{}},\"database\":2},\"id\":6,\"display\":\"row\",\"visualization_settings\":{\"graph.dimensions\":[\"country\"],\"graph.metrics\":[\"Unit Price\"]},\"dataset\":false,\"public_uuid\":null}', b'0', b'1', NULL),
(31, 'Dashboard', 1, 1, '2022-06-15 05:34:23.850000', '{\"description\":null,\"name\":\"Descriptive Analysis\",\"cache_ttl\":null,\"cards\":[{\"sizeX\":18,\"sizeY\":4,\"row\":0,\"col\":0,\"id\":1,\"card_id\":1,\"series\":[]},{\"sizeX\":18,\"sizeY\":7,\"row\":4,\"col\":0,\"id\":2,\"card_id\":2,\"series\":[]},{\"sizeX\":18,\"sizeY\":6,\"row\":11,\"col\":0,\"id\":3,\"card_id\":3,\"series\":[]},{\"sizeX\":18,\"sizeY\":6,\"row\":22,\"col\":0,\"id\":5,\"card_id\":5,\"series\":[]}]}', b'0', b'0', NULL),
(32, 'Dashboard', 1, 1, '2022-06-15 05:34:23.862000', '{\"description\":null,\"name\":\"Descriptive Analysis\",\"cache_ttl\":null,\"cards\":[{\"sizeX\":18,\"sizeY\":4,\"row\":0,\"col\":0,\"id\":1,\"card_id\":1,\"series\":[]},{\"sizeX\":18,\"sizeY\":7,\"row\":4,\"col\":0,\"id\":2,\"card_id\":2,\"series\":[]},{\"sizeX\":18,\"sizeY\":6,\"row\":11,\"col\":0,\"id\":3,\"card_id\":3,\"series\":[]},{\"sizeX\":18,\"sizeY\":6,\"row\":22,\"col\":0,\"id\":5,\"card_id\":5,\"series\":[]},{\"sizeX\":2,\"sizeY\":2,\"row\":0,\"col\":0,\"id\":6,\"card_id\":6,\"series\":[]}]}', b'0', b'0', NULL),
(33, 'Dashboard', 1, 1, '2022-06-15 05:34:23.896000', '{\"description\":null,\"name\":\"Descriptive Analysis\",\"cache_ttl\":null,\"cards\":[{\"sizeX\":18,\"sizeY\":4,\"row\":6,\"col\":0,\"id\":1,\"card_id\":1,\"series\":[]},{\"sizeX\":18,\"sizeY\":7,\"row\":10,\"col\":0,\"id\":2,\"card_id\":2,\"series\":[]},{\"sizeX\":18,\"sizeY\":6,\"row\":0,\"col\":0,\"id\":3,\"card_id\":3,\"series\":[]},{\"sizeX\":18,\"sizeY\":6,\"row\":21,\"col\":0,\"id\":5,\"card_id\":5,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":17,\"col\":0,\"id\":6,\"card_id\":6,\"series\":[]}]}', b'0', b'0', NULL),
(34, 'Dashboard', 1, 1, '2022-06-15 05:34:23.917000', '{\"description\":null,\"name\":\"Descriptive Analysis\",\"cache_ttl\":null,\"cards\":[{\"sizeX\":18,\"sizeY\":4,\"row\":6,\"col\":0,\"id\":1,\"card_id\":1,\"series\":[]},{\"sizeX\":18,\"sizeY\":7,\"row\":10,\"col\":0,\"id\":2,\"card_id\":2,\"series\":[]},{\"sizeX\":18,\"sizeY\":6,\"row\":0,\"col\":0,\"id\":3,\"card_id\":3,\"series\":[]},{\"sizeX\":18,\"sizeY\":6,\"row\":21,\"col\":0,\"id\":5,\"card_id\":5,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":17,\"col\":0,\"id\":6,\"card_id\":6,\"series\":[]}]}', b'0', b'0', NULL),
(35, 'Dashboard', 1, 1, '2022-06-15 08:04:51.793000', '{\"description\":null,\"name\":\"Descriptive Analysis\",\"cache_ttl\":null,\"cards\":[{\"sizeX\":18,\"sizeY\":4,\"row\":6,\"col\":0,\"id\":1,\"card_id\":1,\"series\":[]},{\"sizeX\":18,\"sizeY\":7,\"row\":10,\"col\":0,\"id\":2,\"card_id\":2,\"series\":[]},{\"sizeX\":18,\"sizeY\":6,\"row\":0,\"col\":0,\"id\":3,\"card_id\":3,\"series\":[]},{\"sizeX\":18,\"sizeY\":6,\"row\":21,\"col\":0,\"id\":5,\"card_id\":5,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":17,\"col\":0,\"id\":6,\"card_id\":6,\"series\":[]}]}', b'0', b'0', NULL),
(36, 'Dashboard', 1, 1, '2022-06-15 08:19:30.506000', '{\"description\":null,\"name\":\"Descriptive Analysis\",\"cache_ttl\":null,\"cards\":[{\"sizeX\":18,\"sizeY\":4,\"row\":4,\"col\":0,\"id\":1,\"card_id\":1,\"series\":[]},{\"sizeX\":18,\"sizeY\":5,\"row\":8,\"col\":0,\"id\":2,\"card_id\":2,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":0,\"col\":0,\"id\":3,\"card_id\":3,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":17,\"col\":0,\"id\":5,\"card_id\":5,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":13,\"col\":0,\"id\":6,\"card_id\":6,\"series\":[]}]}', b'0', b'0', NULL),
(37, 'Dashboard', 1, 1, '2022-06-15 08:19:30.523000', '{\"description\":null,\"name\":\"Descriptive Analysis\",\"cache_ttl\":null,\"cards\":[{\"sizeX\":18,\"sizeY\":4,\"row\":4,\"col\":0,\"id\":1,\"card_id\":1,\"series\":[]},{\"sizeX\":18,\"sizeY\":5,\"row\":8,\"col\":0,\"id\":2,\"card_id\":2,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":0,\"col\":0,\"id\":3,\"card_id\":3,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":17,\"col\":0,\"id\":5,\"card_id\":5,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":13,\"col\":0,\"id\":6,\"card_id\":6,\"series\":[]}]}', b'0', b'0', NULL),
(38, 'Card', 7, 1, '2022-06-15 08:38:28.426000', '{\"description\":null,\"archived\":false,\"collection_position\":null,\"table_id\":null,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Time to Time Sale\",\"creator_id\":1,\"made_public_by_id\":null,\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"type\":\"native\",\"native\":{\"query\":\"select sum(quantity) as \'Quantity\', date(invoicedate) as \'Date\' from cleaned_online_retail group by date(invoicedate)\",\"template-tags\":{}},\"database\":2},\"id\":7,\"display\":\"line\",\"visualization_settings\":{\"graph.dimensions\":[\"Date\"],\"graph.metrics\":[\"Quantity\"]},\"dataset\":false,\"public_uuid\":null}', b'0', b'1', NULL),
(39, 'Card', 7, 1, '2022-06-15 10:11:56.087000', '{\"description\":null,\"archived\":false,\"collection_position\":null,\"table_id\":null,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Time to Time Sale\",\"creator_id\":1,\"made_public_by_id\":null,\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"type\":\"native\",\"native\":{\"query\":\"select sum(quantity) as \'Quantity\', date(invoicedate) as \'Date\' from cleaned_online_retail group by date(invoicedate)\",\"template-tags\":{}},\"database\":2},\"id\":7,\"display\":\"line\",\"visualization_settings\":{\"graph.dimensions\":[\"Date\"],\"series_settings\":{\"Quantity\":{\"display\":\"area\"}},\"graph.metrics\":[\"Quantity\"]},\"dataset\":false,\"public_uuid\":null}', b'0', b'0', NULL),
(40, 'Dashboard', 1, 1, '2022-06-15 10:13:24.344000', '{\"description\":null,\"name\":\"Descriptive Analysis\",\"cache_ttl\":null,\"cards\":[{\"sizeX\":18,\"sizeY\":4,\"row\":4,\"col\":0,\"id\":1,\"card_id\":1,\"series\":[]},{\"sizeX\":18,\"sizeY\":5,\"row\":8,\"col\":0,\"id\":2,\"card_id\":2,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":0,\"col\":0,\"id\":3,\"card_id\":3,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":17,\"col\":0,\"id\":5,\"card_id\":5,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":13,\"col\":0,\"id\":6,\"card_id\":6,\"series\":[]},{\"sizeX\":2,\"sizeY\":2,\"row\":0,\"col\":0,\"id\":7,\"card_id\":7,\"series\":[]}]}', b'0', b'0', NULL),
(41, 'Dashboard', 1, 1, '2022-06-15 10:13:24.392000', '{\"description\":null,\"name\":\"Descriptive Analysis\",\"cache_ttl\":null,\"cards\":[{\"sizeX\":18,\"sizeY\":4,\"row\":0,\"col\":0,\"id\":1,\"card_id\":1,\"series\":[]},{\"sizeX\":18,\"sizeY\":5,\"row\":8,\"col\":0,\"id\":2,\"card_id\":2,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":4,\"col\":0,\"id\":3,\"card_id\":3,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":17,\"col\":0,\"id\":5,\"card_id\":5,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":13,\"col\":0,\"id\":6,\"card_id\":6,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":21,\"col\":0,\"id\":7,\"card_id\":7,\"series\":[]}]}', b'0', b'0', NULL),
(42, 'Dashboard', 1, 1, '2022-06-15 10:13:24.409000', '{\"description\":null,\"name\":\"Descriptive Analysis\",\"cache_ttl\":null,\"cards\":[{\"sizeX\":18,\"sizeY\":4,\"row\":0,\"col\":0,\"id\":1,\"card_id\":1,\"series\":[]},{\"sizeX\":18,\"sizeY\":5,\"row\":8,\"col\":0,\"id\":2,\"card_id\":2,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":4,\"col\":0,\"id\":3,\"card_id\":3,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":17,\"col\":0,\"id\":5,\"card_id\":5,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":13,\"col\":0,\"id\":6,\"card_id\":6,\"series\":[]},{\"sizeX\":18,\"sizeY\":4,\"row\":21,\"col\":0,\"id\":7,\"card_id\":7,\"series\":[]}]}', b'0', b'0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `secret`
--

CREATE TABLE `secret` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT 1,
  `creator_id` int(11) DEFAULT NULL COMMENT 'User ID who created this secret instance',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6) COMMENT 'Timestamp for when this secret instance was created',
  `updated_at` timestamp(6) NULL DEFAULT NULL COMMENT 'Timestamp for when this secret record was updated. Only relevant when non-value field changes since a value change will result in a new version being inserted.',
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The name of this secret record.',
  `kind` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The kind of secret this record represents; the value is interpreted as a Clojure keyword with a hierarchy. Ex: ''bytes'' means generic binary data, ''jks-keystore'' extends ''bytes'' but has a specific meaning.',
  `source` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The source of secret record, which controls how Metabase interprets the value (ex: ''file-path'' means the ''simple_value'' is not the real value, but a pointer to a file that contains the value).',
  `value` blob NOT NULL COMMENT 'The base64 encoded binary value of this secret record. If encryption is enabled, this will be the output of the encryption procedure on the plaintext. If not, it will be the base64 encoded plaintext.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Storage for managed secrets (passwords, binary data, etc.)';

-- --------------------------------------------------------

--
-- Table structure for table `segment`
--

CREATE TABLE `segment` (
  `id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archived` bit(1) DEFAULT b'0',
  `definition` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `points_of_interest` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caveats` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_in_getting_started` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `key` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`key`, `value`) VALUES
('admin-email', 'metabase@mail.com'),
('analytics-uuid', 'e99b90a0-3720-4c66-b754-0ed9d7f8cee5'),
('anon-tracking-enabled', 'false'),
('instance-creation', '2022-06-13T12:58:58.32834Z'),
('redirect-all-requests-to-https', 'false'),
('settings-last-updated', '2022-06-15 11:08:48.135'),
('setup-token', '96bcdaef-5dd6-4410-9d65-e5a6cc90c6f4'),
('show-database-syncing-modal', 'false'),
('site-locale', 'en'),
('site-name', 'metabase@mail.com'),
('site-url', 'http://localhost:9000'),
('startup-time-millis', '2703');
INSERT INTO `setting` (`key`, `value`) VALUES
('version-info', '{\"latest\":{\"version\":\"v0.43.3\",\"released\":\"2022-06-13\",\"patch\":true,\"highlights\":[\"Slack setup doesn\'t work if channels cache was recently cleared\",\"Custom Expression field is not respecting the modal size\",\"Bump google oauth version\",\"Relative filter with a lower \\\"Starting from\\\" period is confusing\",\"Cannot print large dashboards (multi page)\",\"Sync of JSON columns fails in schemas where schema names contains system characters\",\"Sync of fields fails, when table name contains uppercase characters\",\"Preview function in Notebook does not respect the columns selected on base source\",\"Viewing Metadata for a Model and cancelling can result in error, and further in blank screen\",\"Do not offer \\\"Explore results\\\" unless the database supports it\",\"Cannot view Object Detail of non-numeric IDs\",\"Incorrect use of types during Postgres JSON unfolding\",\"Click Behavior not redirecting in some cases\",\"Uploading certificates causes failure in TrustManager/KeyManager because of bad MIME-type\",\"New Slack App does not allow selecting private channels for pulses\",\"Query executions hitting the cache are not recorded\",\"Pulse fails when there is a column type `time`\"]},\"older\":[{\"version\":\"v0.43.2\",\"released\":\"2022-05-31\",\"patch\":true,\"highlights\":[\"Bump transitive com.google.code.gson/gson\",\"Login page: Whitelabeled logo clips top of page if vertical\",\"Sign in input fields are outside of screen on mobile\",\"Filters are taking 100% viewport width on mobile/tablet in v.43.1\",\"Updating data permissions counts questions as tables\",\"Fix deadlock in pivot table connection management\",\"Size of bubbles not respected on scatter chart\",\"Strings in the time series chrome UI aren\'t tagged for translation\",\"dont read settings at require time\",\"Unable to edit field name and description in Field page\",\"Custom Expression aggregation in Metrics does not work\",\"CPU spiking every hour since v0.43.0 upgrade\",\"Negative Y axis points not rendered on scatter plot\",\"X-ray charts don\'t seem to respect whitelabel colors\",\"Users with `block` permissions see ambiguous error message when they open a dashboard\",\"It is possible to change filter column when filter date columns from the table header\",\"We should cut the \\\"Navigation bar color\\\" option from /admin/settings/whitelabel\",\"Site URL setting reverting to default randomly\",\"Cannot use Click Behavior for filters with multiple options selected\",\"Click Behavior with filter pass-thru causes permission error (even for admins)\"]},{\"version\":\"v0.43.1\",\"released\":\"2022-05-16\",\"patch\":true,\"highlights\":[]},{\"version\":\"v0.43.0\",\"released\":\"2022-05-02\",\"patch\":false,\"highlights\":[\"Inconsistent colors in relative datetime filtering in sidebar\",\"Non-admin database manager can delete database using the API\",\"Query Builder data picker can \\\"forget\\\" about multiple schemas\",\"Data Model > Visibility buttons should \\\"signal\\\" they are clickable\",\"Date filter in the chart footer shows \\\"Previous\\\" filter type when \\\"All Time\\\" is selected\",\"\\\"Next\\\" relative filter tokens should read \\\"from now\\\" instead of \\\"ago\\\"\",\"Can\'t change a relative month filter\'s values when using the \\\"starting from\\\" feature\",\"Date preview is wrong when using the \\\"Starting from…\\\" action when it pushes back before the current year\",\"`Include this quarter` action is missing the words \\\"this quarter\\\"\",\"Purple borders in date filter popover should be blue\",\"In the relative date picker, changing the granularity of the Past/Next range picker should change the granularity of the Starting From picker\",\"Let\'s add the \\\"Metabase tips\\\" link for installers, too\",\"Errors when hiding/unhiding specific columns in table\",\"moving timelines and default interact poorly\",\"Sidebar stays open after entering a dashboard\'s fullscreen mode\",\"Exports fail when certain columns are hidden and a field is remapped\",\"Random comma in \\\"Display values\\\" section of data model settings for a field\",\"Selecting language Indonesian causes error\",\"Can not get the minimum or maximum of some SQL fields\",\"MAX/MIN aggregation on categories incorrectly inferred as numbers\",\"[Data Permissions] Saved questions showing in the list of databases\",\"Textbox on dashboards are difficult move and missing options\",\"Permission graph does not support schemas with slashes\",\"Backend should deserialize dashboard `Starting From`/`Exclude` datetime filters\",\"Datetime shortcut \\\"Relative dates...\\\" should default to \\\"Past\\\" filters\",\"Embedding/Public sharing of questions does not show download button in the footer\",\"Dashboard shows scrollbar in fullscreen\",\"Subscriptions button shown on dashboard in fullscreen\",\"Global search input is shorter than the field\",\"Popover menu position floating too far initiator\"]},{\"version\":\"v0.42.4\",\"released\":\"2022-04-07\",\"patch\":true,\"highlights\":[]},{\"version\":\"v0.42.3\",\"released\":\"2022-03-23\",\"patch\":true,\"highlights\":[\"Exclude /_internals from production build (#21162)\",\"Upgrade MySQL/MariaDB JDBC driver to version 2.7.5\",\"Comma Separate Numbers filter not working as it previously did\",\"Markdown parsing on backend doesn\'t support autolinks\",\"Subscription fails, when there\'s specific characters that causes Markdown failure\",\"Custom Column allows aggregation functions together with algebra, which fails on query\",\"Cannot connect Google Analytics because of deprecated OAuth OOB\",\"Postgres certificate SSL key reference incorrect\",\"Embedding with Locked parameters does not allow numeric values\",\"Models should not be shareable (embedding/public)\",\"BigQuery: Aggregating by a datetime in a saved question fails because of bad aliasing\",\"\\\"Saved\\\" overlay in data model UI in weird location on smaller screen\",\"\\\"Compare to the rest\\\" action in drill-through menu looks busted\",\"Autocomplete suggestions are not working for most of the database tables\",\"Permissions paths validation is `GET` API endpoints is too strict; causes numerous endpoints to 500 if unknown entry is present\",\"Main page loading spinner spins forever on API error\",\"Cannot use Data Selector when going directly to a question in new tab (or browser refresh)\",\"\\\"Show error details\\\" in Query Builder should be toggleable\",\"No visual feedback when setting column properties in Admin > Data Model\",\"QP/MBQL: `[:relative-datetime :current]` doesn\'t work inside `[:between]` filter\",\"Icon on empty activity page is misaligned\",\"Google Analytics updated Credentials aren\'t used for Connection\",\"Google Analytics database connection stopped working.\",\"Binning not working in table with a single row\",\"Fix error in send-abandonment-emails task\",\"Can\'t change Google Analytics DB settings\",\"when adding google analytics as source, it\'s not clear that I have to enable the API\"]},{\"version\":\"v0.42.2\",\"released\":\"2022-02-28\",\"patch\":true,\"highlights\":[\"Dashboards breaks when there\'s filters to cards that a user don\'t have permissions to view\",\"Questions with Field Filter with widget type \\\"None\\\" will not show results\",\"Can\'t combine saved questions on a dashboard card \",\"Setting a filter to \\\"Locked\\\" in Embedding question is not possible\",\"Nested queries with long Data Model names causes failing query with incorrect aliasing\",\"Dropdown list filtering not working, when there\'s nulls\",\"BigQuery - nested query generating bad aliases, when columns are renamed in Data Model\",\"Summarizing with implicit join does not allow subsequent joins and nested query\",\"Databases shows sync-spinner and doesn\'t allow to remove it or do a forced sync\"]},{\"version\":\"v0.42.1\",\"released\":\"2022-02-17\",\"patch\":true,\"highlights\":[\"Filter dropdown only allows filtering on \\\"starts with\\\"\",\"Unable to filter dashboards for dashboard subscription emails\",\"Dashboard filter with defaults, doesn\'t work if values are removed, query fails\",\"Pulse Question Alert to Slack sending cropped images\",\"Cannot remove Google Sign-in setup\",\"Embed dashboard Field Filter cannot work when choosing single option\",\"Custom expression - Count needs parentheses, but deletes them afterwards\",\"Cannot open Model sidebar in some cases\",\"BigQuery incorrectly aliasing, which can make the query fail\",\"Filtering on nested questions causes error in Public and Embedding\",\"BigQuery nested query with ambiguous columns causes error\",\"Setting a filter to \\\"Locked\\\" in Embedding is not possible\",\"Remove unused dep on aleph (and thus unused transient dep on Netty)\",\"Oracle queries don\'t work when aliases (auto-generated or otherwise) contain double quotes or null characters\",\"When no-data user views a nested question, then all editing options are exposed\",\"When no-data user views a nested question, then \\\"Ask question\\\" and \\\"Browse data\\\" appears\",\"Oracle fails queries on joins with tables with long display names\",\"Pivot Table: Cannot change name of fields used for \\\"values\\\"\"]},{\"version\":\"v0.42.0\",\"released\":\"2022-02-08\",\"patch\":false,\"highlights\":[\"Waterfall static viz default settings\",\"\\\"By coordinates\\\" map in People X-ray shows a nonsensical pin map\",\"Pins do not appear on pin map\",\"\\\"Explore results\\\" shown for no-data users resulting in blank screen when clicked\",\"Blank screen when accessing Models with no-data user\",\"Secret connection property file path is not retained when revisiting database edit page\",\"Licensing page goes into reload-loop if token is expired\",\"Descriptions missing in search results\",\" the Time picker AM and PM color can not be distinguished obviously\",\"Horizontal scroll of pinned table doesn\'t work on Firefox\",\"Metadata tooltip popup on colum header casues data table to reset for number columns that are all NULLs \",\"Certain visualization_settings can cause empty/missing columns on export\",\"Postgres unnecessarily casts `timestamptz` and `date` columns to `timestamp` inside `date_trunc()` \",\"Alert Stopped email is Unhelpful\",\"Exports ignore column ordering regression in v0.41.6\",\"Premature calls to `to-sql` inside `sql.qp/->honeysql` methods\",\"Visualization \\\"auto-viz\\\" doesn\'t keep existing settings, when changing fields returned\",\"Can\'t add a filter if the value isn\'t in the field filters dropdown\",\"Clean up database guide usability during configuration\",\"defsetting `:tag` metadata should be on the arglists themselves, not the var\",\"Clean up how we show deprecated database drivers\",\"SQLite/Redshift/SQL Server/MySQL queries don\'t work correctly with multiple column aliases with same name but different case\",\"Archived sub-collections are still showing in Permissions\",\"Clean up how we show deprecated database drivers\",\"XLSX exports are leaving temporary files, which can block instance from working\",\"Add a way to return to previous page from sign in cases\",\"Consolidate first db sync modal and X-ray selection\",\"[Epic] Migrate Slack implementation from Bot to App\",\"Improve Filters for 42\",\"Clean Up Settings Navigation\"]},{\"version\":\"v0.41.6\",\"released\":\"2022-01-14\",\"patch\":true,\"highlights\":[\"Specific visualization_settings can cause empty export\",\"Cannot change Field Filter reference to another schema/table if viewing the question directly\",\"Upgrade Log4j to 2.17.1\",\"Names of schemas or namespaces in the Data Model should wrap\",\"Broken layout on Data Model page on locales with longer text\"]},{\"version\":\"v0.41.5\",\"released\":\"2021-12-16\",\"patch\":true,\"highlights\":[\"Upgrade Log4j to 2.16.0\",\"X-rays fails if there\'s a filter in the question\",\"XLSX export does not respect \\\"Separator style\\\"\",\"One cannot change any of the LDAP Settings once it\'s been initially setup\",\"Custom Expression `coalesce` is using wrong field reference when nested query\",\"Custom Expression `case` is using wrong field reference when nested query\",\"Dashboard causes permission error, when \\\"Click Behavior\\\" linking to dashboard/question without access\",\"Site URL validation too strict, doesn\'t accept underscore\",\"Reverse proxy reset email should use site URL in email body and not localhost\"]},{\"version\":\"v0.41.4\",\"released\":\"2021-12-10\",\"patch\":true,\"highlights\":[]},{\"version\":\"v0.41.3.1\",\"released\":\"2021-12-02\",\"patch\":true,\"highlights\":[\"BigQuery and Google Analytics drivers broken on x.41.3\",\"BigQuery connection error on 0.41.1\"]},{\"version\":\"v0.41.3\",\"released\":\"2021-12-01\",\"patch\":true,\"highlights\":[\"Static viz creates Picaso painting, when data is unordered Timeseries\",\"Harmonize Google dependency versions, which could cause conflict between GA and new BigQuery driver\",\"Saving/updating questions can take a very long time (seconds or minutes) on large instances\",\"Funnel chart showing retained NaN% when all rows from aggregate column are zero\",\"Changing a (old) pivoted table to less than 3 columns results in blank screen\",\"Exports fails, when there\'s invalid visualization `column_settings` references\",\"Cannot send test emails before creating subscription, when using non-default filter values\",\"Native editor autocomplete suggestions makes object lookup without `limit`\",\"Strip whitespace from Google sign-in client IDs\",\"Validate Google sign-in client IDs\",\"Dashboard causes permission error, when \\\"Click Behavior\\\" linking to dashboard/question without access\",\"Clicking on legend in native question breaks the UI\",\"Trend tile on dashboard differs from tile on full screen\"]},{\"version\":\"v0.41.2\",\"released\":\"2021-11-09\",\"patch\":true,\"highlights\":[\"Frontend crashes when opening admin database permissions page\",\"Cannot access Notebook for questions that uses a Custom Column as joining column\",\"Requests to `GET /api/card/123` is making slow queries on larger instances\",\"BigQuery can cause conflict with some column names like `source`\",\"\\\"Verify this question\\\" button is shown even when content moderation feature is not enabled\",\"New BigQuery driver with \\\"Project ID (override)\\\" defined causes different Field Filter references\",\"Dashboard subscription send by Email fails with xlsx attachements\",\"Textbox markdown links on images difficult to click\",\"Some questions with old field dimensions or changed columns cannot be viewed, because of Javascript loop\",\"Multi-column join interface defaults binning for numeric fields causing incorrect results\",\"Sandboxing queries fails with caching is enabled\",\"Changing redshift db details leads to closed or broken resource pool\",\"Audit visualizations does not show correct information, when there\'s more than 1000 aggregated dates\",\"\\\"Set up your own alert\\\" text needs padding \",\"Dashboard Subscriptions are not deactivated, when dashboard is archived\",\"Update Uberjar builds on CircleCI to new build script\",\"ED25519 keys not working for built-in SSH tunnels\",\"Pin Maps with more than 1000 results (LeafletTilePinMap) not working with native queries\"]},{\"version\":\"v0.41.1\",\"released\":\"2021-10-21\",\"patch\":true,\"highlights\":[\"Not all endpoints are called, when doing FullApp embedding\",\"XLSX export of large columns fails because of formatting limitations\",\"Caching on 0.41.0 caches results for very long time (does not respect settings defined)\",\"Exporting large amount of data can result in OutOfMemory\",\"Chart descriptions (except table) is not shown in dashboards\",\"Better approach for column ordering in exports\",\"Remapped (display value) columns are dropped in downloads\",\"Tools for fixing errors problems with postgres semantics of limits (blank display of error table)\",\"Filtering null-column via the drill-through action menu causes blank screen\",\"Data Model shows blank page if there are any hidden tables in the database\",\"Columns missing from exports, when viz settings are using older field dimensions\",\"Pulses with rounded floats render a hanging decimal point in 0.41.0\",\"Raise MB_DB_CONNECTION_TIMEOUT_MS to 10000 as default\",\"Pulse/Subscription table cards with two columns (string, integer) fail to render\",\"[Add Database > Presto] Multiple JDBC field options\",\"Impossible to choose fields from different schema on Field Filters\",\"In email subscription, the original question title is shown instead of the curated title (v41)\",\"Audit > Questions > Total runtime displays link instead of an actual time\",\"KeyExchange signature verification failed for key type=ssh-rsa\",\"Export to XLSX can fail, when there\'s a very high integer value\",\"Questions -> all questions in Audit feature sorts by null values\",\"Allow caching of fonts and images\",\"Dashboard Subscription test email button does not show error messages\",\"EE Audit App frontend does not display error messages if queries fail\",\"Dashboard Textbox does not render links unless using Markdown\",\"Pin map only containing null location results causes the frontend to constantly reload or blank page\",\"X-Rays: Table field is shown as \\\"null\\\" in the title\",\"Custom Column with the same name as a table column returns incorrect results when grouped\",\"Adding data series to dashboard widget lags then sometimes hangs the UI\"]},{\"version\":\"v0.41.0\",\"released\":\"2021-10-06\",\"patch\":false,\"highlights\":[\"Went setting up multiple Dashboard Subscriptions, \\\"Send email now\\\" always sends the first one you set up until you refresh the page\",\"Pull in translations for 0.41\",\"Export in 0.41.0-rc1 does not include aggregated columns\",\"Whitelabel color options are not translatable\",\"Error inserting to view_log in 41-RC1\",\"Fix filter alignment in emails with many or long values\",\"Whitelabel includes `Metabase` in the subject for Alerts\",\"XLSX download fails, when settings still has the old `k:mm` hour-format instead of `HH:mm`\",\"History of last edited questions\",\"Search fields in `Tools > Errors` should be disabled when there are no questions\",\"\\\"Rerun Selected\\\" button is always enabled (even when there are no broken questions)\",\"Dragging dashboards filters makes them hidden while dragging\",\"Fix x-ray dashboards crash on first open\",\"Fix Audit logging not showing ad-hoc native queries\",\"X-ray dashboards crash on first opening\",\"Send to Slack/Send email now buttons on dashboard subscriptions send the wrong dashboard\",\"master - the upper-corner Run/Reload button has become very big\",\"Schemas with only hidden tables are shown in the data selector\",\"Saved Question: changing the breakout field (summarize) removes order-by (sort)\",\"Notebook Join UI display wrong table name with multiple join (master)\",\"Active filter widget are not using whitelabel color on border\",\"Data point value can be slightly cut-off for the top Y-axis values\",\"Dashboard sticky filter section is visible even when there aren\'t any filters\",\"Click Behavior does not work with old Pivot\",\"BigQuery Custom Column difficult to use because of name restrictions\",\"Revision history does not update until page reload\",\"Visualizations are not always using whitelabel colors by default\",\"BigQuery Custom Expression function `Percentile` and `Median` not using correct backtick quoting\",\"BigQuery `BIGNUMERIC` is recognized as `type/*` and displayed as string\",\"Joining behavior on datetime columns needs to be clearer\"]},{\"version\":\"v0.40.5\",\"released\":\"2021-09-21\",\"patch\":true,\"highlights\":[\"🤖 backported \\\"GeoJSON URL validation fix\\\"\",\"Grid map causes frontend reload or blank screen, when hovering the grids if there is no metric\",\"Cannot create more than 2 metrics, when UI language is Turkish - screen goes blank or displays \\\"Something went wrong\\\"\",\"Visualizations with more than 100 series just shows a blank chart\",\"Data point values uses formatting Style of first serie on all series\"]},{\"version\":\"v0.40.4\",\"released\":\"2021-09-09\",\"patch\":true,\"highlights\":[\"Dashboard filter autocomplete not working with mixed Search/Dropdown when dropdown has a `null` value\",\"Not possible to delete Dashboard Subscription unless dashboard is in root collection\",\"Possible to not input recipient of Subscription, which will then cause blank screen\",\"Valid Email settings disappear on save, but re-appear after refresh\",\"Unable to click \\\"Learn more\\\" on custom expression\",\"Editing an alert causes it to be deleted in some circumstances\",\"New databases with \\\"This is a large database ...\\\" still uses the default sync+scan settings\",\"Adding cards to dashboard via search can cause the card to show spinner until browser refresh\",\"Cannot login with OpenAM SAML since 1.38.3\",\"Native question \\\"Filter widget type\\\"=\\\"None\\\" hides the filter widget even after changing it to something else\"]},{\"version\":\"v0.40.3.1\",\"released\":\"2021-08-26\",\"patch\":true,\"highlights\":[]},{\"version\":\"v0.40.3\",\"released\":\"2021-08-25\",\"patch\":true,\"highlights\":[\"🤖 backported \\\"Keep `collection_id` of dashboard subscriptions in sync with same field on dashboard\\\"\",\"Run-overlay not going away on GUI question\",\"Dashboard causes scrollbars to constantly go on/off depending on viewport size \",\"Serialization `--mode skip` incorrectly updates some objects\",\"Serialization crashes on dump if there\'s no collections\",\"Serialization: Cannot load into empty/blank target\",\"Clicking the column formatting button when the sidebar is already open should correctly open that column\'s formatting sidebar\",\"Dashboard Subscription doesn\'t follow the order of the cards on the dashboard\",\"Clicking away from Sandbox modal breaks perms page\"]},{\"version\":\"v0.40.2\",\"released\":\"2021-08-03\",\"patch\":true,\"highlights\":[\"Update strings for 0.40.2\",\"Docs for 40.2\",\"Snippet folder permissions are always applied to root\",\"Cannot start development in VS Code because of missing Node.js\",\"Search widget on question builder hangs tab, API field search limit not respected\",\"Only 50 groups are displayed\",\"People search dropdown goes outside of the screen\",\"Only 50 users shown in email autocomplete and \\\"Other user\'s personal collection\\\"\",\"Dashboard - Adding ‘Click Behavior’ to an image field converts image to URL\",\"Cannot upgrade to v0.40.x on AWS Elastic Beanstalk due to AWS Inspector not being available in certain regions\",\"Add Metabase Cloud link to admin settings for hosted instances\",\"Fix dashboard card hovering buttons drag behaviour\",\"Elastic Beanstalk nginx config is not updated on latest EB docker images\",\"Cannot deactivate users after the first 50 users\",\"Tabs in the Audit section look broken\",\"Duplication of the displayed table\",\"Allow selecting text in Textbox cards, while dashboard is in edit-mode\",\"Metabase on old AWS Elastic Beanstalk (Amazon Linux w/ old Docker) upgrade to 0.40 failed\",\"Popover footer is displaced when using filter with a search input\",\"Public Sharing footer is double-size because action buttons are stacked\",\"Error when setting column type to Number in data model settings\",\"Site URL can sometimes be incorrectly defined during startup\",\"Padding needed for button on map settings page\",\"LDAP/Email settings gets cleared if validation fails\",\"Serialization: Visualization column settings lost\",\"Waterfall visualization does not work with ordinal X-axis\",\"Clicking \\\"Cancel\\\" on collection archive modal should let you stay in that same collection\",\"Snowflake Connector Requires Deprecated Region Id\",\"Modify instead of replace default EB nginx config\"]},{\"version\":\"v0.40.1\",\"released\":\"2021-07-14\",\"patch\":true,\"highlights\":[\"An error occurs when opening a public question with filters having default parameters\",\"Remove Multi-Release from manifest\",\"Questions filters does not work in Embedded/Public\",\"Long titles in collections push out the last-edited-by and last-edited-at columns\",\"Only first 50 databases are displayed\",\"After hiding the column and then setting a required default value for SQL field filter (connected to that column) shows all fields as hidden and breaks SQL filters completely\",\"Global search suggestions dropdown appears behind the dataset search widget when starting a simple question\",\"Clean up the user-facing strings for coercion options\",\"Clicking Visualize in Notebook makes the question \\\"dirty\\\" even if no changes was made\"]},{\"version\":\"v0.40.0\",\"released\":\"2021-07-08\",\"patch\":false,\"highlights\":[\"Avoid error when user searches with no data perms\",\"Updated saved question data picker - styling improvements\",\"The pinned items from the main collection are not showed on the front page anymore\",\"[0.40 blocker] Handle personal collections better in the new saved question data picker\",\"Remove \\\"Something went wrong\\\"\",\"Filter flag causes overlay for required \\\"Number\\\" filter with the default value set\",\"Do not show Cloud CTA for Enterprise Edition\",\"The list of collections available on homepage \\\"Our analytics\\\" depends on the name of the first 50 objects\",\"Filter feature flag causes Run-overlay of results in Native editor unless editor is expanded\",\"Error message missing when logging in to a disabled account with Google sign-in\",\"unix-timestamp->honeysql implementation for h2 is incorrect for microseconds\",\"Fix funnel appearance\",\"Confusing UI when adding GeoJSON with no identifiers\",\"Better error handling when adding malformed GeoJSON\",\"Can\'t archive a question from the Question page\",\"Can\'t move item to \\\"Our analytics\\\" using drag-n-drop\",\"Can\'t \\\"Select All\\\" collection items if all items are pinned\",\"Bulk archive doesn\'t work\",\"Selecting bin count on intermediate data question fails\",\"Collections Metadata FE Implementation\",\"Group by on a `:Coercion/YYYYMMDDHHMMSSBytes->Temporal` postgres column fails\",\"Double binning menu for date fields when using Saved Question (Native)\",\"Cannot filter only on longitude/latitude range - UX is forcing user to fill out values for both fields\",\"Bug in values on data points for waterfall charts\",\"Table view on Permissions shows error on browser refresh\",\"Password login on SSO instance drops the redirect URL\",\"No error is reported when adding SQLite database that doesn\'t exist\",\"Specific combination of filters can cause frontend reload or blank screen\",\"Dashboard Contains filter doesn\'t remain when clicking on Question title\",\"Normal login errors are not surfaced if SSO is also active\"]},{\"version\":\"v0.39.4\",\"released\":\"2021-06-16\",\"patch\":true,\"highlights\":[\"Javascript error when enabling JWT authentication\",\"Switch to column settings when sidebar is already open\",\"Questions on MongoDB return \'No results!\' after upgrade from 0.38.5 to 0.39.0 when filtering against array \",\"Login blocked till timeout if Metabase can\'t reach GeoJS API\",\"Missing tooltip for sharing individual question\",\"Histograms should filter out null x values\",\"Shifted chart values on line with ordinal x axis\",\"Don\'t show Custom Expression helper, when input is not in focus\",\"Dashboard filters dropdown only list the first 100 values\",\"Cannot use arithmetic between two `case()` function in Custom Expression\",\"LDAP login fails with Group Sync when user is assigned to 1 group\",\"LDAP auth errors with \\\"did not match stored password\\\" if `givenName` or `sn` is missing\",\"Cannot join Saved Questions that themselves contains joins\",\"Human-reable numering not working properly\",\"Time series filter and granularity widgets at bottom of screen are missing\",\"LDAP group sync - LDAPException after removing user from a mapped group\",\"Dashboard text cards aren\'t scrolling\"]},{\"version\":\"v0.39.3\",\"released\":\"2021-05-27\",\"patch\":true,\"highlights\":[\"Feature flag causes problems with Number filters in Native query\",\"Revoking access to users in multiple groups does not correctly cleanup GTAP\",\"LDAP settings form hitting wrong API endpoint on save\",\"ExpressionEditor loses value when user resizes browser window\",\"ExpressionEditor loses value when user clicks away from associated name input\",\"Filter dropdown not working for non-data users, when field has 300+ distinct values.\",\"Tooltip only shows first Y-axis value when X-axis is numeric and style is Ordinal/Histogram\",\"Gauge visualization on small screens can cause frontend refresh on hover\",\"Serialization: `field-literal` converted to `field` since 1.39.0\",\"Serialization dumps with static references instead of paths in 1.39.0\",\"Fix Serialization P1s\",\"Incorrect result + loss of user input when summarizing with Saved Question\",\"Some places shows `{0}` placeholder instead of expected value\",\"Serialization load-process does not update `source-table` in joins, leading to broken questions\",\"Unchecking \\\"Remember me\\\" box has no effect -- close the browser and reopen, then go back to your MB instance and you\'re still logged in\",\"Serialization `dump` includes Personal Collections\",\"Serialization: Nested question references questions in other collection are moved and becomes corrupted\",\"Serialization: Snippet folders and Collections collide on `dump` because of missing namespace separation\",\"Serialization: Snippets are not transferred correctly, leading to incorrect references and broken queries\",\"Serialization: Click Behavior not translating entitiy ID on dump, potentially referencing wrong entities on load\",\"Wrong LDAP port input (non-numeric) can cause complete lockout\",\"Nested queries using metric got wrong SQL\",\"Cannot aggregate question with unix timestamp column that is converted/cast in Metabase\",\"Test LDAP settings before saving\",\"Nested queries using metrics need to include all columns used in metric filters\"]},{\"version\":\"v0.39.2\",\"released\":\"2021-05-17\",\"patch\":true,\"highlights\":[\"Regression combining Druid date filters with dimension filters\",\"Regression in filtering Druid table where greater than date\",\"Variable Field Type after upgrade \\\"Input to parse-value-to-field-type does not match schema\\\"\",\"Whitelabel favicon does not work correctly in all browsers\",\"Show right versions on enterprise custom builds\",\"Not possible to select pinned collection item using checkbox\",\"The new \\\"contains\\\" behavior for field value lookup doesn\'t work outside of dashboards\",\"Cannot restore table visibility in Data Model, when database is down\",\"LDAP user authorization failed with `$` in password\",\"Difficult to use some filters, when user has no data permissions [FE - Filter widget stops working if API endpoint returns 403]\",\"Serialization: Dashboard cards are corrupted, when questions are outside of dashboard collection\",\"Collection tree loader causes UI jump\",\"Filters with dropdown lists uses query on the database\",\"Login Failing for LDAP if user email isn\'t lowercase\",\"Startup warning about unsupported class will impact performance\",\"Auth Returns 400 Bad Request instead of 401 Unauthorized upon wrong credentials submission\",\"Need better instructions for setting up Google Auth\"]},{\"version\":\"v0.39.1\",\"released\":\"2021-04-27\",\"patch\":true,\"highlights\":[\"Tooltip shows incorrect values on unaggregated data with breakout\",\"Can\'t use parentheses as expected in filter expressions\",\"UI prevents adding 2 parameters to `Percentile()` function\",\"Login logo is left-aligned on EE, when whitelabel features are enabled\",\"No loading spinner when clicking a Collection on the home page\",\"Tooltip on unaggregated data does not show summed value like the visualization\",\"Table with multiple Entity Key columns incorrectly filtering on \\\"Connected To\\\" drill-through\"]},{\"version\":\"v0.39.0.1\",\"released\":\"2021-04-20\",\"patch\":false,\"highlights\":[\"Cannot select category Field Filter in Native query on 0.39.0\",\"map category/location to string so we can treat them like string/= in UI\"]},{\"version\":\"v0.39.0\",\"released\":\"2021-04-19\",\"patch\":false,\"highlights\":[\"Strings with placeholders like {0} aren\'t translating correctly\",\"Wrong tooltip labels and values for multiple series charts in dashboard\",\"Add feature flag for the new 0.39.0 dashboard filter types\",\"Pulse fails when visualization_settings is referring to a field-literal column\",\"Login History not recording correct IP address\",\"Add an ENV var setting for typeahead search\",\"BigQuery with filter after aggregation of join table fails query with wrong alias reference on 38.x\",\"Dashboard Textbox images are 100% width\",\"Questions based on Saved Questions is not using the same query for date filters leading to wrong results\",\"0.39 string translations\",\"0.39 Docs\",\"Add missing \\\"is\\\" assertions to various tests\",\"Custom Expression autocomplete operator selection is appended to what was typed\",\"Custom Expression formula starts with high cursor placement on Firefox\",\"Custom Expression filter not setting the \\\"Done\\\" button to current state of the formula until onblur\",\"Custom Expression editor is removing spaces too aggressive\",\"Hitting return when modifying a custom expression incorrectly discards changes\",\"metabase/metabase-enterprise-head Docker image doesn\'t have enterprise extensions\",\"Custom expressions: UI is too wide when shown in the sidebar\",\"Search: some results are as being in a folder which doesn\'t exist in the data reference\",\"Error saving metric in data reference\",\"Dashboard Subscription Filters: Set Parameter Values\",\"Normalize queries in URL fragments on FE\",\"Support string and number filter operators in dashboard parameter filters \",\"defsetting macro throw an Exception if you try to define a setting that\'s already defined in a different namespace\",\"Fix render error when removing a dashboard parameter\",\"Upgrade HoneySQL version to latest\",\"Dashboard Filter Improvements (to support large-scale rollout)\",\"SSH Connectivity Improvements\",\"MBQL Refactor: Combine various Field clauses into one new clause\"]},{\"version\":\"v0.38.4\",\"released\":\"2021-04-12\",\"patch\":true,\"highlights\":[\"Not possible to position Y-axis if there\'s only one series\",\"Tooltip on unaggregated data does not show summed value like the visualization\",\"For a new Custom column, I can set Style to \\\"Currency\\\", but cannot choose the Unit of Currency\",\"Add Kyrgyz Som to currency list\"]},{\"version\":\"v0.38.3\",\"released\":\"2021-04-01\",\"patch\":true,\"highlights\":[\"Overflow text on Ask a question page \",\"Filtering on coerced column doesn\'t always know its coerced\",\"Wrong series label in multiple series scatterplot\",\"Dashboard Subscription fails for all SQL questions with a Field Filter on date column connected on dashboard\",\"Dashboard Subscription Emails do not work with filtered Native Queries\",\"Dashboard Subscription sidebar broken for Sandboxed users\",\"Provide more logging information on permission errors when creating Cards\",\" In Settings > Email, Save Changes is enabled even when there are no changes\",\"Exports always uses UTC as timezone instead of the selected Report Timezone\",\"Invalid Redirect Location After SAML Sign-in via Full App Embed\",\"Cannot download XLSX if there\'s more than 1 million results\",\"Frontend load issue: SMTP Email\",\"Pie chart sometimes does not show total\",\"Users with collections \\\"edit\\\" permissions and no data access permissions can\'t edit question metadata\",\"Add Bitcoin as a unit of currency\",\"Column \\\"Custom title\\\" not working in tooltips\",\"Schema sync does not update changes in column type case\",\"Error on visualization change of a question with SQL queries view only permission\",\"Line chart dots don\'t have `cursor: pointer` when hovering\"]},{\"version\":\"v0.38.2\",\"released\":\"2021-03-17\",\"patch\":true,\"highlights\":[\"Data model not showing PostgreSQL tables when they are partitioned\",\"Migrate old pre-1.37 \\\"Custom Drill-through\\\" settings to x.37+ \\\"Click Behavior\\\"\",\"Regression with URL links\"]},{\"version\":\"v0.38.1\",\"released\":\"2021-03-03\",\"patch\":true,\"highlights\":[\"Serialization `dump` of aggregated questions are not copied over on `load`\",\"Serialization doesn\'t update Sub-Query variable reference\",\"Oracle, BigQuery filtering by column with day-of-week bucketing not working\",\"Pivot Table export not working on unsaved questions\",\"Pivot Table does not work for users without data permissions\",\"Pivot Table not working with Sandboxed user\",\"BigQuery: Joins in the query builder generate invalid table aliases\",\"BigQuery: Question Stays running until timeout when query is error in Native Query\",\"Serialization: Archived items are included in `dump`\",\"Breadcrumbs can be confusing (the current one \\\"seems\\\" clickable when it\'s not)\",\"regexextract breaks query on sandboxed table\",\"Multi-level aggregations fails when filter is the last section\",\"Pivot queries aren\'t recorded to query execution log\",\"Start of Week not applied to Field Filter in Native question, which can lead to incorrect results\",\"In Safari 14, add-grouping button disappears randomly but consistently\",\"Serialization does not initialize 3rd party drivers when loading a dump\",\"Wrong day names are displayed when using not-Sunday as start of the week and grouping by \\\"Day of week\\\"\",\"Difficult to see which cells has \\\"Click behavior\\\" vs normal behavior\",\"Object Detail previous/next buttons not working correctly\",\"Global number formatting does not apply to percentages\",\"Native question filter widget reordering doesn\'t work\"]},{\"version\":\"v0.38.0.1\",\"released\":\"2021-02-19\",\"patch\":false,\"highlights\":[]},{\"version\":\"v0.38.0\",\"released\":\"2021-02-16\",\"patch\":false,\"highlights\":[\"Sandboxed question with `case` Custom Field doesn\'t substitute the \\\"else\\\" argument\'s table\",\"Custom Expression using `case()` function fails when referencing the same column names\",\"Filtering a Custom Column does not give correct results when using \\\"Not equal to\\\"\",\"Cannot remove columns via QB sidebar, then query fails, but works if being removed via Notebook\",\"fix(rotate-encryption-key) settings-last-updated is not encrypted\",\"For Pivot Tables, download popup doesn\'t show\",\"Dashboard Subscriptions: Have to click the close button multiple times after viewing a Subscription\",\"Advanced Sandboxing ignores Data Model features like Object Detail of FK\",\"Publish \\\"latest\\\" OSS JAR\",\"Custom GeoJSON files are not sorted in the dropdown\",\"user@password JDBC connection strings for application DB no longer work\",\"Shrunken bubbles shown in question for null values\",\"Drilling down by a Region Map assigns the wrong value to the filter\",\"Using \\\"Reset to defaults\\\" on textbox causes it to become a corrupted card on dashboard\",\"Add a lightweight notify api endpoint\",\"Sandboxing on tables with remapped FK (Display Values) causes query to fail\",\"Allow usage of PKCS-12 certificates with Postgres connections\",\"dump-to-h2 does not return a non-zero exit code on failure\",\"Advanced Sandboxing using questions that return more/other columns than the sandboxed table is not possible anymore, but the errors are not helpful\",\"Bar chart x-axis positions can cause different spacing depending on the dates returned\",\"Custom Columns breaks Pivot Table\",\"Pivot tables broken on dashboard after resize\",\"dump-to-h2 with --dump-plaintext should check for presence of MB_ENCRYPTION_SECRET_KEY\",\"Right alignment of pivot table value cells looks broken\",\"Don\'t inform admins about MB cloud on EE instances\",\"add cmd rotate-encryption-key\",\"Token check retry is too aggressive\",\"Login page should automatically focus on the email input field\",\"Dashboard subscriptions including cards no longer in dashboard\",\"UI should update when a collection changes parent\"]},{\"version\":\"v0.37.9\",\"released\":\"2021-02-11\",\"patch\":true,\"highlights\":[]},{\"version\":\"v0.37.8\",\"released\":\"2021-01-29\",\"patch\":true,\"highlights\":[\"Cannot add (date) filter if calendar is collapsed\"]},{\"version\":\"v0.37.7\",\"released\":\"2021-01-20\",\"patch\":true,\"highlights\":[]},{\"version\":\"v0.37.6\",\"released\":\"2021-01-13\",\"patch\":true,\"highlights\":[]},{\"version\":\"v0.37.5\",\"released\":\"2021-01-05\",\"patch\":true,\"highlights\":[\"Linked filters breaking SQL questions on v0.37.2\",\"Embedding loading slow\",\"Cannot toggle off \'Automatically run queries when doing simple filtering and summarizing\' \"]},{\"version\":\"v0.37.4\",\"released\":\"2020-12-17\",\"patch\":true,\"highlights\":[\"Error in Query: Input to aggregation-name does not match schema\",\"Revert #13895\",\"Exports always uses UTC as timezone instead of the selected Report Timezone\",\"Between Dates filter behaves inconsistently based on whether the column is from a joined table or not\"]},{\"version\":\"v0.37.3\",\"released\":\"2020-12-03\",\"patch\":true,\"highlights\":[\"Fix chain filtering with temporal string params like \'last32weeks\'\",\"Linked filters breaking SQL questions on v0.37.2\",\"Running with timezone `Europe/Moscow` shows Pulse timezone as `MT` instead of `MSK` and sends pulses on incorrect time\",\"Order fields to dump by ID\",\"Remove object count from log output\"]},{\"version\":\"v0.37.2\",\"released\":\"2020-11-16\",\"patch\":true,\"highlights\":[\"When visualization returns `null` (No results), then UI becomes broken\"]},{\"version\":\"v0.37.1\",\"released\":\"2020-11-12\",\"patch\":true,\"highlights\":[\"Table schema sync performance impact\",\"v0.37.0.2 doesn\'t sync Vertica schema\",\"Pie chart shows spinner, when returned measure/value is `null` or `0`\",\"Wrong day names are displayed when using not-Sunday as start of the week and grouping by \\\"Day of week\\\"\",\"When result row is `null`, then frontend incorrectly shows as \\\"No results!\\\"\",\"Snowflake tables with a GEOGRAPHY column cannot be explored\",\"Cannot edit BigQuery settings without providing service account JSON again\",\"Sync crashes with OOM on very large columns/row samples [proposal]\",\"500 stack overflow error on collection/graph API call\",\"Custom Column after aggregation creates wrong query and fails\",\"The expression editor shouldn\'t start in error mode without any user input\",\"Pulse attachment file sent without file extension\",\"Metric with unnamed Custom Expression breaks Data Model for table\",\"Nested queries with duplicate column names fail\",\"pulse attachment file(question name) Korean support problem\",\"Pulse Bar Chart Negative Values Formatting\"]},{\"version\":\"v0.37.0.2\",\"released\":\"2020-10-26\",\"patch\":false,\"highlights\":[]},{\"version\":\"v0.36.8.2\",\"released\":\"2020-10-26\",\"patch\":true,\"highlights\":[]},{\"version\":\"v0.37.0.1\",\"released\":\"2020-10-23\",\"patch\":false,\"highlights\":[]},{\"version\":\"v0.36.8.1\",\"released\":\"2020-10-23\",\"patch\":true,\"highlights\":[]},{\"version\":\"v0.37.0\",\"released\":\"2020-10-22\",\"patch\":false,\"highlights\":[\"Fix null handling in filters regression\",\"Add translation for Bulgarian\",\"0.37.0-rc3: Click behavior to Dashboard shown on Public/Embedded\",\"NO_COLOR/MB_COLORIZE_LOGS does not remove all ansi codes\",\"0.37.0-rc3: Filtering a joined table column by \\\"Is not\\\" or \\\"Does not contain\\\" fails\",\"Update translations for final 0.37 release\",\"0.37.0-rc2: Monday week start displays incorrectly on bar chart\",\"0.37.0-rc2: Linked filter showing all values (not filtering)\",\"Only get substrings in fingerprinting when supported [ci drivers]\",\"0.37.0-rc2: log4j should not output to file by default\",\"0.37-RC2: we should suppress drag behavior when custom click behavior is set\",\"0.37-RC2: disable Done button in cases where click behavior target isn\'t specified\",\"0.37-RC2: weird edit state when saving a dashboard with incomplete click behavior\",\"0.37-RC2: Interactivity summary tokens squashed on small dashboard cards\",\"0.37.0-rc2: Hovering on custom map no longer displays region name, displays region identifier instead\",\"0.37.0-rc1: \\\"Click behavior\\\" to URL for non-table card, doesn\'t show reference fields to use as variables\",\"0.37.0-rc1: Variables from Saved Question are referencing the same question\",\"0.37.0-rc2: Cannot create custom drill-through to dashboard\",\"0.37-rc1: after clicking a custom link that passes a value to a param, clicking Back shouldn\'t bring that value to the original dashboard\",\"0.37-rc1: When mapping dashboard filters to columns, SQL questions should display the name of the column mapped to the field filter\",\"0.37-rc1: customizing a dashboard card\'s click behavior without specifying a destination causes strange behavior\",\"0.37-rc1: canceling the dashboard archive action takes you to the collection\",\"Embedded versions of new chain filters endpoints \",\"\\\"Does not contain\\\" and \\\"Is not\\\" filter also removes nulls\",\"Docs - 37 release - new dashboard functionality\",\"forward slash on table name causes ORA-01424 and blocks the sync step\",\"Update login layout and illustration.\",\"MySQL grouping on a TIME field is not working\",\"Field Filter variables in SQL question don’t show table name when connecting filters in dashboard\",\"Upgrade to log4j 2.x\"]},{\"version\":\"v0.36.8\",\"released\":\"2020-10-22\",\"patch\":true,\"highlights\":[]},{\"version\":\"v0.36.7\",\"released\":\"2020-10-09\",\"patch\":true,\"highlights\":[\"Presto not respecting SSL and always uses http instead of https\",\"Footer (with export/fullscreen/refresh buttons) on Public/Embedded questions disappears when using Premium Embedding\",\"Postgres sync not respecting SSH tunneling\"]},{\"version\":\"v0.36.6\",\"released\":\"2020-09-15T22:58:04.727Z\",\"patch\":true,\"highlights\":[\"Various bug fixes\"]},{\"version\":\"v0.36.5.1\",\"released\":\"2020-09-11T23:16:26.199Z\",\"patch\":true,\"highlights\":[\"Remappings should work on broken out fields\"]},{\"version\":\"v0.36.4\",\"released\":\"2020-08-17T22:41:20.449Z\",\"patch\":true,\"highlights\":[\"Various bug fixes\"]},{\"version\":\"v0.36.3\",\"released\":\"2020-08-04T23:57:45.595Z\",\"patch\":true,\"highlights\":[\"Support for externally linked tables\"]},{\"version\":\"v0.36.2\",\"released\":\"2020-07-31T17:46:34.479Z\",\"patch\":true,\"highlights\":[\"Various bug fixes\"]},{\"version\":\"v0.36.1\",\"released\":\"2020-07-30T18:10:44.459Z\",\"patch\":true,\"highlights\":[\"Various bug fixes\"]},{\"version\":\"v0.36.0\",\"released\":\"2020-07-21T19:56:40.066Z\",\"patch\":false,\"highlights\":[\"SQL/native query snippets\",\"Language selection\"]},{\"version\":\"v0.35.4\",\"released\":\"2020-05-29T17:31:58.191Z\",\"patch\":true,\"highlights\":[\"Security fix for BigQuery and SparkSQL\",\"Turkish translation available again\",\"More than 20 additional bug fixes and enhancements\"]},{\"version\":\"v0.35.3\",\"released\":\"2020-04-21T21:18:24.959Z\",\"patch\":true,\"highlights\":[\"Various bug fixes\"]},{\"version\":\"v0.35.2\",\"released\":\"2020-04-10T23:03:53.756Z\",\"patch\":true,\"highlights\":[\"Fix email and premium embedding settings\",\"Fix table permissions for database without a schema\",\"Fix \\\"Error reducing result rows\\\" error\"]},{\"version\":\"v0.35.1\",\"released\":\"2020-04-02T21:52:06.867Z\",\"patch\":true,\"highlights\":[\"Issue with date field filters after v0.35.0 upgrade\",\"Unable to filter on manually JOINed table\"]},{\"version\":\"v0.35.0\",\"released\":\"2020-03-25T18:29:17.286Z\",\"patch\":false,\"highlights\":[\"Filter expressions, string extracts, and more\",\"Reference saved questions in your SQL queries\",\"Performance improvements\"]},{\"version\":\"v0.34.3\",\"released\":\"2020-02-25T20:47:03.897Z\",\"patch\":true,\"highlights\":[\"Line, area, bar, combo, and scatter charts now allow a maximum of 100 series instead of 20.\",\"Chart labels now have more options to show significant decimal values.\",\"Various bug fixes\"]},{\"version\":\"v0.34.2\",\"released\":\"2020-02-05T22:02:15.277Z\",\"patch\":true,\"highlights\":[\"Various bug fixes\"]},{\"version\":\"v0.34.1\",\"released\":\"2020-01-14T00:02:42.489Z\",\"patch\":true,\"highlights\":[\"Various bug fixes\"]},{\"version\":\"v0.34.0\",\"released\":\"2019-12-20T01:21:39.568Z\",\"patch\":false,\"highlights\":[\"Added support for variables and field filters in native Mongo queries\",\"Added option to display data values on Line, Bar, and Area charts\",\"Many Timezone fixes\"]},{\"version\":\"v0.33.7.3\",\"released\":\"2019-12-17T01:45:45.720Z\",\"patch\":true,\"highlights\":[\"Important security fix for Google Auth login\"]},{\"version\":\"v0.33.7\",\"released\":\"2019-12-13T20:35:14.667Z\",\"patch\":true,\"highlights\":[\"Important security fix for Google Auth login\"]},{\"version\":\"v0.33.6\",\"released\":\"2019-11-19T20:35:14.667Z\",\"patch\":true,\"highlights\":[\"Fixed regression that could cause saved questions to fail to render (#11297)\",\"Fixed regression where No Results icon didn\'t show (#11282)\",\"Pie chart visual improvements (#10837)\"]},{\"version\":\"v0.33.5\",\"released\":\"2019-11-08T20:35:14.667Z\",\"patch\":true,\"highlights\":[\"Added Slovak translation\",\"Fixed support for MySQL 8 with the default authentication method\",\"Fixed issues with X-axis label formatting in timeseries charts\"]},{\"version\":\"v0.33.4\",\"released\":\"2019-10-08T20:35:14.667Z\",\"patch\":true,\"highlights\":[\"Custom expression support for joined columns\",\"Fixed issue with filtering by month-of-year in MongoDB\",\"Misc Bug Fixes\"]},{\"version\":\"v0.33.3\",\"released\":\"2019-09-20T08:09:36.358Z\",\"patch\":true,\"highlights\":[\"Chinese and Persian translations now available again\",\"Misc Bug Fixes \"]},{\"version\":\"v0.33.2\",\"released\":\"2019-09-04T08:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fixed Cards not saving\",\"Fixed searrch not working \"]},{\"version\":\"v0.33.1\",\"released\":\"2019-09-04T08:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fixed conditional formatting not working\",\"Fixed an issue where some previously saved column settings were not applied \",\"Fixed an issue where pulses were not loading \"]},{\"version\":\"v0.33.0\",\"released\":\"2019-08-19T08:09:36.358Z\",\"patch\":false,\"highlights\":[\"Notebook mode + Simple Query Mode\",\"Joins\",\"Post Aggregation filters\"]},{\"version\":\"v0.32.10\",\"released\":\"2019-07-28T08:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fix User can\'t logout / gets automatically logged in.\",\"Fix No data displayed when pivoting data\",\"Fixed Dashboard Filters on Linked Entities Broke\"]},{\"version\":\"v0.32.9\",\"released\":\"2019-06-14T08:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fix issues connecting to MongoDB Atlas Cluster\",\"Fix database addition on setup\",\"Fixed numeric category error with Postgres\"]},{\"version\":\"v0.32.8\",\"released\":\"2019-05-13T08:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fix i18n\"]},{\"version\":\"v0.32.7\",\"released\":\"2019-05-09T08:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fix published SHA Hash\"]},{\"version\":\"v0.32.6\",\"released\":\"2019-05-08T12:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fixed regression where Dashboards would fail to fully populate\",\"Performance improvements when running queries\",\"Security improvements\"]},{\"version\":\"v0.32.5\",\"released\":\"2019-04-20T12:09:36.358Z\",\"patch\":true,\"highlights\":[\"Improve long-running query handling\",\"Fix H2 to MySQL/Postgres migration issue\",\"Fix issue with embedded maps with custom GeoJSON\"]},{\"version\":\"v0.32.4\",\"released\":\"2019-04-09T12:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fix issue where Google Auth login did not work\",\"FFix issue where Google Auth login did not work\"]},{\"version\":\"v0.32.3\",\"released\":\"2019-04-08T12:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fixed Snowflake connection issues\",\"Fixed Dashboard copy\",\"Fixed non-root context logins\"]},{\"version\":\"v0.32.2\",\"released\":\"2019-04-03T12:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fixed dashboard date filters \",\"Fixed SSL error using Quartz w/ MySQL\",\"Fix colors in dashboards\"]},{\"version\":\"v0.32.1\",\"released\":\"2019-03-29T12:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fixed MySQL connections with SSL\",\"Fixed table sync issue\"]},{\"version\":\"v0.32.0\",\"released\":\"2019-03-28T12:09:36.358Z\",\"patch\":false,\"highlights\":[\"Modular Drivers (reducing memory consumption)\",\"Async queries (improving responsiveness)\",\"Reduced memory consumption.\"]},{\"version\":\"v0.31.2\",\"released\":\"2018-12-07T12:09:36.358Z\",\"patch\":true,\"highlights\":[\"Added German translation\",\"Fixed Heroku out-of-memory errors\",\"Fixed issue with Slack-based Pulses due to rate limiting.\"]},{\"version\":\"v0.31.1\",\"released\":\"2018-11-21T12:09:36.358Z\",\"patch\":true,\"highlights\":[\"Ability to clone dashboards\",\"Faster startup time and lower memory consumption\",\"Migration issue fixes.\"]},{\"version\":\"v0.31.0\",\"released\":\"2018-11-08T12:09:36.358Z\",\"patch\":false,\"highlights\":[\"New visualizations and combo charts\",\"Granular formatting controls\",\"Snowflake Support\"]},{\"version\":\"v0.30.4\",\"released\":\"2018-09-27T12:09:36.358Z\",\"patch\":true,\"highlights\":[\"Metabase fails to launch in Chinese\",\"Fix token status checking\",\"Fix BigQuery SQL parameters with encrypted DB details\"]},{\"version\":\"v0.30.3\",\"released\":\"2018-09-13T12:09:36.358Z\",\"patch\":true,\"highlights\":[\"Localization for Chinese, Japanese, Turkish, Persian\",\"Self referencing FK leads to exception\",\"Security improvements\"]},{\"version\":\"v0.30.2\",\"released\":\"2018-09-06T12:09:36.358Z\",\"patch\":true,\"highlights\":[\"Localization for French + Norwegian\",\"Stability fixes for HTTP/2\"]},{\"version\":\"v0.30.1\",\"released\":\"2018-08-08T12:09:36.358Z\",\"patch\":true,\"highlights\":[\"Localization for Portuguese\",\"Timezone fix\",\"SQL Template tag re-ordering fix\"]},{\"version\":\"v0.30.0\",\"released\":\"2018-08-08T12:09:36.358Z\",\"patch\":false,\"highlights\":[\"App wide search\",\"Enhanced Collection permissions\",\"Comparison X-Rays\"]},{\"version\":\"v0.29.3\",\"released\":\"2018-05-12T12:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fix X-ray rules loading on Oracle JVM 8\"]},{\"version\":\"v0.29.2\",\"released\":\"2018-05-10T12:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fix Spark Driver\"]},{\"version\":\"v0.29.1\",\"released\":\"2018-05-10T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Better heroku memory consumption\",\"Fixed X-Ray Bugs\",\"Drill through from line chart selects wrong date\"]},{\"version\":\"v0.29.0\",\"released\":\"2018-05-01T11:09:36.358Z\",\"patch\":false,\"highlights\":[\"New and Improved X-Rays\",\"Search field values\",\"Spark SQL Support\"]},{\"version\":\"v0.28.6\",\"released\":\"2018-04-12T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fix chart rendering in pulses\"]},{\"version\":\"v0.28.5\",\"released\":\"2018-04-04T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fix memory consumption for SQL templates\",\"Fix public dashboards parameter validation\",\"Fix Unable to add cards to dashboards or search for cards, StackOverflowError on backend\"]},{\"version\":\"v0.28.4\",\"released\":\"2018-03-29T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fix broken embedded dashboards\",\"Fix migration regression\",\"Fix input typing bug\"]},{\"version\":\"v0.28.3\",\"released\":\"2018-03-23T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Security improvements\"]},{\"version\":\"v0.28.2\",\"released\":\"2018-03-20T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Security improvements\",\"Sort on custom and saved metrics\",\"Performance improvements for large numbers of questions and dashboards\"]},{\"version\":\"v0.28.1\",\"released\":\"2018-02-09T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fix admin panel update string\",\"Fix pulse rendering bug\",\"Fix CSV & XLS download bug\"]},{\"version\":\"v0.28.0\",\"released\":\"2018-02-07T11:09:36.358Z\",\"patch\":false,\"highlights\":[\"Text Cards in Dashboards\",\"Pulse + Alert attachments\",\"Performance Improvements\"]},{\"version\":\"v0.27.2\",\"released\":\"2017-12-12T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Migration bug fix\"]},{\"version\":\"v0.27.1\",\"released\":\"2017-12-01T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Migration bug fix\",\"Apply filters to embedded downloads\"]},{\"version\":\"v0.27.0\",\"released\":\"2017-11-27T11:09:36.358Z\",\"patch\":false,\"highlights\":[\"Alerts\",\"X-Ray insights\",\"Charting improvements\"]},{\"version\":\"v0.26.2\",\"released\":\"2017-09-27T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Update Redshift Driver\",\"Support Java 9\",\"Fix performance issue with fields listing\"]},{\"version\":\"v0.26.1\",\"released\":\"2017-09-27T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fix migration issue on MySQL\"]},{\"version\":\"v0.26.0\",\"released\":\"2017-09-26T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Segment + Metric X-Rays and Comparisons\",\"Better control over metadata introspection process\",\"Improved Timezone support and bug fixes\"]},{\"version\":\"v0.25.2\",\"released\":\"2017-08-09T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Bug and performance fixes\"]},{\"version\":\"v0.25.1\",\"released\":\"2017-07-27T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"After upgrading to 0.25, unknown protocol error.\",\"Don\'t show saved questions in the permissions database lists\",\"Elastic beanstalk upgrades broken in 0.25 \"]},{\"version\":\"v0.25.0\",\"released\":\"2017-07-25T11:09:36.358Z\",\"patch\":false,\"highlights\":[\"Nested questions\",\"Enum and custom remapping support\",\"LDAP authentication support\"]},{\"version\":\"v0.24.2\",\"released\":\"2017-06-01T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Misc Bug fixes\"]},{\"version\":\"v0.24.1\",\"released\":\"2017-05-10T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fix upgrades with MySQL/Mariadb\"]},{\"version\":\"v0.24.0\",\"released\":\"2017-05-10T11:09:36.358Z\",\"patch\":false,\"highlights\":[\"Drill-through + Actions\",\"Result Caching\",\"Presto Driver\"]},{\"version\":\"v0.23.1\",\"released\":\"2017-03-30T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Filter widgets for SQL Template Variables\",\"Fix spurious startup error\",\"Java 7 startup bug fixed\"]},{\"version\":\"v0.23.0\",\"released\":\"2017-03-21T11:09:36.358Z\",\"patch\":false,\"highlights\":[\"Public links for cards + dashboards\",\"Embedding cards + dashboards in other applications\",\"Encryption of database credentials\"]},{\"version\":\"v0.22.2\",\"released\":\"2017-01-10T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fix startup on OpenJDK 7\"]},{\"version\":\"v0.22.1\",\"released\":\"2017-01-10T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"IMPORTANT: Closed a Collections Permissions security hole\",\"Improved startup performance\",\"Bug fixes\"]},{\"version\":\"v0.22.0\",\"released\":\"2017-01-10T11:09:36.358Z\",\"patch\":false,\"highlights\":[\"Collections + Collections Permissions\",\"Multiple Aggregations\",\"Custom Expressions\"]},{\"version\":\"v0.21.1\",\"released\":\"2016-12-08T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"BigQuery bug fixes\",\"Charting bug fixes\"]},{\"version\":\"v0.21.0\",\"released\":\"2016-12-08T11:09:36.358Z\",\"patch\":false,\"highlights\":[\"Google Analytics Driver\",\"Vertica Driver\",\"Better Time + Date Filters\"]},{\"version\":\"v0.20.3\",\"released\":\"2016-10-26T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fix H2->MySQL/PostgreSQL migrations, part 2\"]},{\"version\":\"v0.20.2\",\"released\":\"2016-10-25T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Support Oracle 10+11\",\"Fix H2->MySQL/PostgreSQL migrations\",\"Revision timestamp fix\"]},{\"version\":\"v0.20.1\",\"released\":\"2016-10-18T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"Lots of bug fixes\"]},{\"version\":\"v0.20.0\",\"released\":\"2016-10-11T11:09:36.358Z\",\"patch\":false,\"highlights\":[\"Data access permissions\",\"Oracle Driver\",\"Charting improvements\"]},{\"version\":\"v0.19.3\",\"released\":\"2016-08-12T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"fix Dashboard editing header\"]},{\"version\":\"v0.19.2\",\"released\":\"2016-08-10T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"fix Dashboard chart titles\",\"fix pin map saving\"]},{\"version\":\"v0.19.1\",\"released\":\"2016-08-04T11:09:36.358Z\",\"patch\":true,\"highlights\":[\"fix Dashboard Filter Editing\",\"fix CSV Download of SQL Templates\",\"fix Metabot enabled toggle\"]},{\"version\":\"v0.19.0\",\"released\":\"2016-08-01T21:09:36.358Z\",\"patch\":false,\"highlights\":[\"SSO via Google Accounts\",\"SQL Templates\",\"Better charting controls\"]},{\"version\":\"v0.18.1\",\"released\":\"2016-06-29T21:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fix for Hour of day sorting bug\",\"Fix for Column ordering bug in BigQuery\",\"Fix for Mongo charting bug\"]},{\"version\":\"v0.18.0\",\"released\":\"2016-06-022T21:09:36.358Z\",\"patch\":false,\"highlights\":[\"Dashboard Filters\",\"Crate.IO Support\",\"Checklist for Metabase Admins\",\"Converting Metabase Questions -> SQL\"]},{\"version\":\"v0.17.1\",\"released\":\"2016-05-04T21:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fix for Line chart ordering bug\",\"Fix for Time granularity bugs\"]},{\"version\":\"v0.17.0\",\"released\":\"2016-05-04T21:09:36.358Z\",\"patch\":false,\"highlights\":[\"Tags + Search for Saved Questions\",\"Calculated columns\",\"Faster Syncing of Metadata\",\"Lots of database driver improvements and bug fixes\"]},{\"version\":\"v0.16.1\",\"released\":\"2016-05-04T21:09:36.358Z\",\"patch\":true,\"highlights\":[\"Fixes for several time alignment issues (timezones)\",\"Resolved problem with SQL Server db connections\"]},{\"version\":\"v0.16.0\",\"released\":\"2016-05-04T21:09:36.358Z\",\"patch\":false,\"highlights\":[\"Fullscreen (and fabulous) Dashboards\",\"Say hello to Metabot in Slack\"]}]}');
INSERT INTO `setting` (`key`, `value`) VALUES
('version-info-last-checked', '2022-06-15T06:15:00.034513Z');

-- --------------------------------------------------------

--
-- Table structure for table `task_history`
--

CREATE TABLE `task_history` (
  `id` int(11) NOT NULL,
  `task` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the task',
  `db_id` int(11) DEFAULT NULL,
  `started_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ended_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `duration` int(11) NOT NULL,
  `task_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Timing and metadata info about background/quartz processes';

-- --------------------------------------------------------

--
-- Table structure for table `timeline`
--

CREATE TABLE `timeline` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the timeline',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Optional description of the timeline',
  `icon` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection_id` int(11) DEFAULT NULL COMMENT 'ID of the collection containing the timeline',
  `archived` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether or not the timeline has been archived',
  `creator_id` int(11) NOT NULL COMMENT 'ID of the user who created the timeline',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the timeline was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the timeline was updated',
  `default` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Boolean value indicating if the timeline is the default one for the containing Collection'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Timeline table to organize events';

-- --------------------------------------------------------

--
-- Table structure for table `timeline_event`
--

CREATE TABLE `timeline_event` (
  `id` int(11) NOT NULL,
  `timeline_id` int(11) NOT NULL COMMENT 'ID of the timeline containing the event',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the event',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Optional markdown description of the event',
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6) COMMENT 'When the event happened',
  `time_matters` bit(1) NOT NULL COMMENT 'Indicate whether the time component matters or if the timestamp should just serve to indicate the day of the event without any time associated to it.',
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Timezone to display the underlying UTC timestamp in for the client',
  `icon` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `archived` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether or not the event has been archived',
  `creator_id` int(11) NOT NULL COMMENT 'ID of the user who created the event',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the event was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the event was modified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Events table';

-- --------------------------------------------------------

--
-- Table structure for table `view_log`
--

CREATE TABLE `view_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `model` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int(11) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `metadata` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `view_log`
--

INSERT INTO `view_log` (`id`, `user_id`, `model`, `model_id`, `timestamp`, `metadata`) VALUES
(1, 1, 'dashboard', 1, '2022-06-14 07:24:32.472000', '{\"cached\":null,\"ignore_cache\":null}'),
(2, 1, 'dashboard', 1, '2022-06-14 07:24:41.139000', '{\"cached\":null,\"ignore_cache\":null}'),
(3, 1, 'dashboard', 1, '2022-06-14 07:24:50.873000', '{\"cached\":null,\"ignore_cache\":null}'),
(4, 1, 'table', 5, '2022-06-14 07:25:04.975000', '{\"cached\":null,\"ignore_cache\":null}'),
(5, 1, 'table', 5, '2022-06-14 07:25:18.186000', '{\"cached\":null,\"ignore_cache\":null}'),
(6, 1, 'table', 5, '2022-06-14 07:26:43.652000', '{\"cached\":null,\"ignore_cache\":null}'),
(7, 1, 'dashboard', 1, '2022-06-14 07:26:58.422000', '{\"cached\":null,\"ignore_cache\":null}'),
(8, 1, 'table', 5, '2022-06-14 07:27:11.851000', '{\"cached\":null,\"ignore_cache\":null}'),
(9, 1, 'table', 5, '2022-06-14 07:27:20.377000', '{\"cached\":null,\"ignore_cache\":null}'),
(10, 1, 'table', 5, '2022-06-14 09:12:59.582000', '{\"cached\":null,\"ignore_cache\":null}'),
(11, 1, 'table', 5, '2022-06-14 09:15:42.692000', '{\"cached\":null,\"ignore_cache\":null}'),
(12, 1, 'table', 5, '2022-06-14 09:15:42.694000', '{\"cached\":null,\"ignore_cache\":null}'),
(13, 1, 'table', 5, '2022-06-14 09:15:42.696000', '{\"cached\":null,\"ignore_cache\":null}'),
(14, 1, 'table', 5, '2022-06-14 09:15:42.698000', '{\"cached\":null,\"ignore_cache\":null}'),
(15, 1, 'table', 5, '2022-06-14 09:15:42.706000', '{\"cached\":null,\"ignore_cache\":null}'),
(16, 1, 'table', 5, '2022-06-14 09:15:42.744000', '{\"cached\":null,\"ignore_cache\":null}'),
(17, 1, 'table', 5, '2022-06-14 09:15:42.953000', '{\"cached\":null,\"ignore_cache\":null}'),
(18, 1, 'table', 5, '2022-06-14 09:15:43.466000', '{\"cached\":null,\"ignore_cache\":null}'),
(19, 1, 'table', 5, '2022-06-14 09:15:43.559000', '{\"cached\":null,\"ignore_cache\":null}'),
(20, 1, 'table', 5, '2022-06-14 09:15:43.705000', '{\"cached\":null,\"ignore_cache\":null}'),
(21, 1, 'table', 5, '2022-06-14 09:15:43.953000', '{\"cached\":null,\"ignore_cache\":null}'),
(22, 1, 'table', 5, '2022-06-14 09:15:44.549000', '{\"cached\":null,\"ignore_cache\":null}'),
(23, 1, 'table', 5, '2022-06-14 09:15:45.858000', '{\"cached\":null,\"ignore_cache\":null}'),
(24, 1, 'table', 5, '2022-06-14 09:15:45.933000', '{\"cached\":null,\"ignore_cache\":null}'),
(25, 1, 'table', 5, '2022-06-14 09:16:06.185000', '{\"cached\":null,\"ignore_cache\":null}'),
(26, 1, 'table', 5, '2022-06-14 09:16:06.186000', '{\"cached\":null,\"ignore_cache\":null}'),
(27, 1, 'table', 5, '2022-06-14 09:16:06.188000', '{\"cached\":null,\"ignore_cache\":null}'),
(28, 1, 'table', 5, '2022-06-14 09:16:06.192000', '{\"cached\":null,\"ignore_cache\":null}'),
(29, 1, 'table', 5, '2022-06-14 09:16:06.204000', '{\"cached\":null,\"ignore_cache\":null}'),
(30, 1, 'table', 5, '2022-06-14 09:16:06.206000', '{\"cached\":null,\"ignore_cache\":null}'),
(31, 1, 'table', 5, '2022-06-14 09:16:07.050000', '{\"cached\":null,\"ignore_cache\":null}'),
(32, 1, 'table', 5, '2022-06-14 09:16:07.190000', '{\"cached\":null,\"ignore_cache\":null}'),
(33, 1, 'table', 5, '2022-06-14 09:16:07.258000', '{\"cached\":null,\"ignore_cache\":null}'),
(34, 1, 'table', 5, '2022-06-14 09:16:07.587000', '{\"cached\":null,\"ignore_cache\":null}'),
(35, 1, 'table', 5, '2022-06-14 09:16:07.775000', '{\"cached\":null,\"ignore_cache\":null}'),
(36, 1, 'table', 5, '2022-06-14 09:16:08.263000', '{\"cached\":null,\"ignore_cache\":null}'),
(37, 1, 'table', 5, '2022-06-14 09:16:09.813000', '{\"cached\":null,\"ignore_cache\":null}'),
(38, 1, 'table', 5, '2022-06-14 09:16:09.868000', '{\"cached\":null,\"ignore_cache\":null}'),
(39, 1, 'table', 5, '2022-06-14 09:16:13.173000', '{\"cached\":null,\"ignore_cache\":null}'),
(40, 1, 'table', 5, '2022-06-14 09:16:13.195000', '{\"cached\":null,\"ignore_cache\":null}'),
(41, 1, 'table', 5, '2022-06-14 09:16:13.196000', '{\"cached\":null,\"ignore_cache\":null}'),
(42, 1, 'table', 5, '2022-06-14 09:16:13.197000', '{\"cached\":null,\"ignore_cache\":null}'),
(43, 1, 'table', 5, '2022-06-14 09:16:13.197000', '{\"cached\":null,\"ignore_cache\":null}'),
(44, 1, 'table', 5, '2022-06-14 09:16:13.202000', '{\"cached\":null,\"ignore_cache\":null}'),
(45, 1, 'table', 5, '2022-06-14 09:16:14.493000', '{\"cached\":null,\"ignore_cache\":null}'),
(46, 1, 'table', 5, '2022-06-14 09:16:14.854000', '{\"cached\":null,\"ignore_cache\":null}'),
(47, 1, 'table', 5, '2022-06-14 09:16:14.864000', '{\"cached\":null,\"ignore_cache\":null}'),
(48, 1, 'table', 5, '2022-06-14 09:16:14.877000', '{\"cached\":null,\"ignore_cache\":null}'),
(49, 1, 'table', 5, '2022-06-14 09:16:14.890000', '{\"cached\":null,\"ignore_cache\":null}'),
(50, 1, 'table', 5, '2022-06-14 09:16:15.386000', '{\"cached\":null,\"ignore_cache\":null}'),
(51, 1, 'table', 5, '2022-06-14 09:16:15.771000', '{\"cached\":null,\"ignore_cache\":null}'),
(52, 1, 'table', 5, '2022-06-14 09:16:16.233000', '{\"cached\":null,\"ignore_cache\":null}'),
(53, 1, 'table', 5, '2022-06-14 09:17:05.232000', '{\"cached\":null,\"ignore_cache\":null}'),
(54, 1, 'table', 5, '2022-06-14 09:17:05.242000', '{\"cached\":null,\"ignore_cache\":null}'),
(55, 1, 'table', 5, '2022-06-14 09:17:05.265000', '{\"cached\":null,\"ignore_cache\":null}'),
(56, 1, 'table', 5, '2022-06-14 09:17:05.269000', '{\"cached\":null,\"ignore_cache\":null}'),
(57, 1, 'table', 5, '2022-06-14 09:17:05.273000', '{\"cached\":null,\"ignore_cache\":null}'),
(58, 1, 'table', 5, '2022-06-14 09:17:05.274000', '{\"cached\":null,\"ignore_cache\":null}'),
(59, 1, 'table', 5, '2022-06-14 09:17:05.510000', '{\"cached\":null,\"ignore_cache\":null}'),
(60, 1, 'table', 5, '2022-06-14 09:17:05.969000', '{\"cached\":null,\"ignore_cache\":null}'),
(61, 1, 'table', 5, '2022-06-14 09:17:06.121000', '{\"cached\":null,\"ignore_cache\":null}'),
(62, 1, 'table', 5, '2022-06-14 09:17:06.187000', '{\"cached\":null,\"ignore_cache\":null}'),
(63, 1, 'table', 5, '2022-06-14 09:17:06.502000', '{\"cached\":null,\"ignore_cache\":null}'),
(64, 1, 'table', 5, '2022-06-14 09:17:06.982000', '{\"cached\":null,\"ignore_cache\":null}'),
(65, 1, 'table', 5, '2022-06-14 09:17:07.847000', '{\"cached\":null,\"ignore_cache\":null}'),
(66, 1, 'table', 5, '2022-06-14 09:17:08.320000', '{\"cached\":null,\"ignore_cache\":null}'),
(67, 1, 'table', 5, '2022-06-14 09:17:23.165000', '{\"cached\":null,\"ignore_cache\":null}'),
(68, 1, 'table', 5, '2022-06-14 09:18:11.601000', '{\"cached\":null,\"ignore_cache\":null}'),
(69, 1, 'table', 5, '2022-06-14 09:18:19.718000', '{\"cached\":null,\"ignore_cache\":null}'),
(70, 1, 'table', 5, '2022-06-14 09:22:08.796000', '{\"cached\":null,\"ignore_cache\":null}'),
(71, 1, 'table', 5, '2022-06-14 09:22:23.831000', '{\"cached\":null,\"ignore_cache\":null}'),
(72, 1, 'table', 5, '2022-06-14 09:22:28.189000', '{\"cached\":null,\"ignore_cache\":null}'),
(73, 1, 'dashboard', 1, '2022-06-14 09:30:40.217000', '{\"cached\":null,\"ignore_cache\":null}'),
(74, 1, 'table', 5, '2022-06-14 09:30:46.516000', '{\"cached\":null,\"ignore_cache\":null}'),
(75, 1, 'table', 5, '2022-06-14 09:32:05.272000', '{\"cached\":null,\"ignore_cache\":null}'),
(76, 1, 'table', 5, '2022-06-14 09:32:51.783000', '{\"cached\":null,\"ignore_cache\":null}'),
(77, 1, 'table', 5, '2022-06-14 09:34:10.322000', '{\"cached\":null,\"ignore_cache\":null}'),
(78, 1, 'table', 5, '2022-06-14 09:34:56.099000', '{\"cached\":null,\"ignore_cache\":null}'),
(79, 1, 'table', 5, '2022-06-14 09:35:35.467000', '{\"cached\":null,\"ignore_cache\":null}'),
(80, 1, 'table', 5, '2022-06-14 09:37:09.923000', '{\"cached\":null,\"ignore_cache\":null}'),
(81, 1, 'table', 5, '2022-06-14 09:39:08.336000', '{\"cached\":null,\"ignore_cache\":null}'),
(82, 1, 'card', 1, '2022-06-14 10:31:28.263000', '{\"cached\":null,\"ignore_cache\":null}'),
(83, 1, 'dashboard', 1, '2022-06-14 10:31:34.630000', '{\"cached\":null,\"ignore_cache\":null}'),
(84, 1, 'card', 1, '2022-06-14 10:31:34.691000', '{\"cached\":null,\"ignore_cache\":null}'),
(85, 1, 'card', 1, '2022-06-14 10:31:35.814000', '{\"cached\":null,\"ignore_cache\":false}'),
(86, 1, 'dashboard', 1, '2022-06-14 10:31:50.971000', '{\"cached\":null,\"ignore_cache\":null}'),
(87, 1, 'dashboard', 1, '2022-06-14 10:32:01.283000', '{\"cached\":null,\"ignore_cache\":null}'),
(88, 1, 'card', 1, '2022-06-14 10:32:02.358000', '{\"cached\":null,\"ignore_cache\":false}'),
(89, 1, 'card', 2, '2022-06-14 10:47:16.471000', '{\"cached\":null,\"ignore_cache\":null}'),
(90, 1, 'dashboard', 1, '2022-06-14 10:47:21.060000', '{\"cached\":null,\"ignore_cache\":null}'),
(91, 1, 'card', 2, '2022-06-14 10:47:21.126000', '{\"cached\":null,\"ignore_cache\":null}'),
(92, 1, 'card', 1, '2022-06-14 10:47:22.356000', '{\"cached\":null,\"ignore_cache\":false}'),
(93, 1, 'card', 2, '2022-06-14 10:47:22.457000', '{\"cached\":null,\"ignore_cache\":false}'),
(94, 1, 'dashboard', 1, '2022-06-14 10:47:34.553000', '{\"cached\":null,\"ignore_cache\":null}'),
(95, 1, 'dashboard', 1, '2022-06-14 10:48:20.473000', '{\"cached\":null,\"ignore_cache\":null}'),
(96, 1, 'dashboard', 1, '2022-06-14 10:49:19.223000', '{\"cached\":null,\"ignore_cache\":null}'),
(97, 1, 'dashboard', 1, '2022-06-14 10:50:12.062000', '{\"cached\":null,\"ignore_cache\":null}'),
(98, 1, 'card', 2, '2022-06-14 10:50:13.376000', '{\"cached\":null,\"ignore_cache\":false}'),
(99, 1, 'card', 1, '2022-06-14 10:50:13.396000', '{\"cached\":null,\"ignore_cache\":false}'),
(100, 1, 'dashboard', 1, '2022-06-14 10:50:42.444000', '{\"cached\":null,\"ignore_cache\":null}'),
(101, 1, 'dashboard', 1, '2022-06-14 10:50:48.535000', '{\"cached\":null,\"ignore_cache\":null}'),
(102, 1, 'card', 2, '2022-06-14 10:50:49.860000', '{\"cached\":null,\"ignore_cache\":false}'),
(103, 1, 'card', 1, '2022-06-14 10:50:49.869000', '{\"cached\":null,\"ignore_cache\":false}'),
(104, 1, 'dashboard', 1, '2022-06-14 10:50:55.842000', '{\"cached\":null,\"ignore_cache\":null}'),
(105, 1, 'card', 2, '2022-06-14 10:50:57.112000', '{\"cached\":null,\"ignore_cache\":false}'),
(106, 1, 'card', 1, '2022-06-14 10:50:57.122000', '{\"cached\":null,\"ignore_cache\":false}'),
(107, 1, 'dashboard', 1, '2022-06-14 10:52:04.590000', '{\"cached\":null,\"ignore_cache\":null}'),
(108, 1, 'card', 3, '2022-06-15 05:07:35.393000', '{\"cached\":null,\"ignore_cache\":null}'),
(109, 1, 'dashboard', 1, '2022-06-15 05:07:42.343000', '{\"cached\":null,\"ignore_cache\":null}'),
(110, 1, 'card', 3, '2022-06-15 05:07:42.414000', '{\"cached\":null,\"ignore_cache\":null}'),
(111, 1, 'card', 3, '2022-06-15 05:07:43.255000', '{\"cached\":null,\"ignore_cache\":false}'),
(112, 1, 'card', 2, '2022-06-15 05:07:43.705000', '{\"cached\":null,\"ignore_cache\":false}'),
(113, 1, 'card', 1, '2022-06-15 05:07:43.794000', '{\"cached\":null,\"ignore_cache\":false}'),
(114, 1, 'dashboard', 1, '2022-06-15 05:08:57.909000', '{\"cached\":null,\"ignore_cache\":null}'),
(115, 1, 'card', 4, '2022-06-15 05:14:31.257000', '{\"cached\":null,\"ignore_cache\":null}'),
(116, 1, 'dashboard', 1, '2022-06-15 05:14:36.835000', '{\"cached\":null,\"ignore_cache\":null}'),
(117, 1, 'card', 4, '2022-06-15 05:14:36.919000', '{\"cached\":null,\"ignore_cache\":null}'),
(118, 1, 'card', 3, '2022-06-15 05:14:37.725000', '{\"cached\":null,\"ignore_cache\":false}'),
(119, 1, 'card', 4, '2022-06-15 05:14:38.341000', '{\"cached\":null,\"ignore_cache\":false}'),
(120, 1, 'card', 1, '2022-06-15 05:14:38.393000', '{\"cached\":null,\"ignore_cache\":false}'),
(121, 1, 'card', 2, '2022-06-15 05:14:38.433000', '{\"cached\":null,\"ignore_cache\":false}'),
(122, 1, 'dashboard', 1, '2022-06-15 05:15:10.010000', '{\"cached\":null,\"ignore_cache\":null}'),
(123, 1, 'card', 5, '2022-06-15 05:24:28.239000', '{\"cached\":null,\"ignore_cache\":null}'),
(124, 1, 'dashboard', 1, '2022-06-15 05:24:31.849000', '{\"cached\":null,\"ignore_cache\":null}'),
(125, 1, 'card', 5, '2022-06-15 05:24:31.949000', '{\"cached\":null,\"ignore_cache\":null}'),
(126, 1, 'card', 3, '2022-06-15 05:24:32.870000', '{\"cached\":null,\"ignore_cache\":false}'),
(127, 1, 'card', 5, '2022-06-15 05:24:32.908000', '{\"cached\":null,\"ignore_cache\":false}'),
(128, 1, 'card', 1, '2022-06-15 05:24:33.553000', '{\"cached\":null,\"ignore_cache\":false}'),
(129, 1, 'card', 4, '2022-06-15 05:24:33.572000', '{\"cached\":null,\"ignore_cache\":false}'),
(130, 1, 'card', 2, '2022-06-15 05:24:33.664000', '{\"cached\":null,\"ignore_cache\":false}'),
(131, 1, 'dashboard', 1, '2022-06-15 05:28:46.805000', '{\"cached\":null,\"ignore_cache\":null}'),
(132, 1, 'card', 4, '2022-06-15 05:29:04.190000', '{\"cached\":null,\"ignore_cache\":null}'),
(133, 1, 'card', 4, '2022-06-15 05:29:05.201000', '{\"cached\":null,\"ignore_cache\":false}'),
(134, 1, 'card', 4, '2022-06-15 05:29:20.806000', '{\"cached\":null,\"ignore_cache\":null}'),
(135, 1, 'card', 4, '2022-06-15 05:29:37.828000', '{\"cached\":null,\"ignore_cache\":null}'),
(136, 1, 'card', 4, '2022-06-15 05:30:08.953000', '{\"cached\":null,\"ignore_cache\":null}'),
(137, 1, 'card', 4, '2022-06-15 05:30:22.339000', '{\"cached\":null,\"ignore_cache\":null}'),
(138, 1, 'card', 6, '2022-06-15 05:32:45.640000', '{\"cached\":null,\"ignore_cache\":null}'),
(139, 1, 'dashboard', 1, '2022-06-15 05:32:49.955000', '{\"cached\":null,\"ignore_cache\":null}'),
(140, 1, 'card', 6, '2022-06-15 05:32:50.018000', '{\"cached\":null,\"ignore_cache\":null}'),
(141, 1, 'card', 5, '2022-06-15 05:32:51.064000', '{\"cached\":null,\"ignore_cache\":false}'),
(142, 1, 'card', 3, '2022-06-15 05:32:51.278000', '{\"cached\":null,\"ignore_cache\":false}'),
(143, 1, 'card', 4, '2022-06-15 05:32:51.938000', '{\"cached\":null,\"ignore_cache\":false}'),
(144, 1, 'card', 1, '2022-06-15 05:32:52.020000', '{\"cached\":null,\"ignore_cache\":false}'),
(145, 1, 'card', 2, '2022-06-15 05:32:52.063000', '{\"cached\":null,\"ignore_cache\":false}'),
(146, 1, 'card', 6, '2022-06-15 05:32:52.216000', '{\"cached\":null,\"ignore_cache\":false}'),
(147, 1, 'dashboard', 1, '2022-06-15 05:34:23.933000', '{\"cached\":null,\"ignore_cache\":null}'),
(148, 1, 'dashboard', 1, '2022-06-15 05:40:00.737000', '{\"cached\":null,\"ignore_cache\":null}'),
(149, 1, 'card', 5, '2022-06-15 05:40:01.364000', '{\"cached\":null,\"ignore_cache\":false}'),
(150, 1, 'card', 3, '2022-06-15 05:40:01.678000', '{\"cached\":null,\"ignore_cache\":false}'),
(151, 1, 'card', 1, '2022-06-15 05:40:02.448000', '{\"cached\":null,\"ignore_cache\":false}'),
(152, 1, 'card', 2, '2022-06-15 05:40:02.528000', '{\"cached\":null,\"ignore_cache\":false}'),
(153, 1, 'card', 6, '2022-06-15 05:40:02.540000', '{\"cached\":null,\"ignore_cache\":false}'),
(154, 1, 'table', 5, '2022-06-15 05:43:12.630000', '{\"cached\":null,\"ignore_cache\":null}'),
(155, 1, 'table', 5, '2022-06-15 05:43:52.929000', '{\"cached\":null,\"ignore_cache\":null}'),
(156, 1, 'table', 5, '2022-06-15 05:44:43.857000', '{\"cached\":null,\"ignore_cache\":null}'),
(157, 1, 'table', 5, '2022-06-15 07:55:57.856000', '{\"cached\":null,\"ignore_cache\":null}'),
(158, 1, 'dashboard', 1, '2022-06-15 07:56:24.912000', '{\"cached\":null,\"ignore_cache\":null}'),
(159, 1, 'card', 5, '2022-06-15 07:56:25.682000', '{\"cached\":null,\"ignore_cache\":false}'),
(160, 1, 'card', 3, '2022-06-15 07:56:25.969000', '{\"cached\":null,\"ignore_cache\":false}'),
(161, 1, 'card', 2, '2022-06-15 07:56:26.494000', '{\"cached\":null,\"ignore_cache\":false}'),
(162, 1, 'card', 6, '2022-06-15 07:56:26.525000', '{\"cached\":null,\"ignore_cache\":false}'),
(163, 1, 'card', 1, '2022-06-15 07:56:26.577000', '{\"cached\":null,\"ignore_cache\":false}'),
(164, 1, 'dashboard', 1, '2022-06-15 08:04:51.812000', '{\"cached\":null,\"ignore_cache\":null}'),
(165, 1, 'dashboard', 1, '2022-06-15 08:05:33.483000', '{\"cached\":null,\"ignore_cache\":null}'),
(166, 1, 'card', 5, '2022-06-15 08:05:34.245000', '{\"cached\":null,\"ignore_cache\":false}'),
(167, 1, 'card', 3, '2022-06-15 08:05:34.396000', '{\"cached\":null,\"ignore_cache\":false}'),
(168, 1, 'card', 2, '2022-06-15 08:05:35.079000', '{\"cached\":null,\"ignore_cache\":false}'),
(169, 1, 'card', 1, '2022-06-15 08:05:35.098000', '{\"cached\":null,\"ignore_cache\":false}'),
(170, 1, 'card', 6, '2022-06-15 08:05:35.172000', '{\"cached\":null,\"ignore_cache\":false}'),
(171, 1, 'table', 5, '2022-06-15 08:05:38.526000', '{\"cached\":null,\"ignore_cache\":null}'),
(172, 1, 'dashboard', 1, '2022-06-15 08:06:32.369000', '{\"cached\":null,\"ignore_cache\":null}'),
(173, 1, 'card', 5, '2022-06-15 08:06:33.188000', '{\"cached\":null,\"ignore_cache\":false}'),
(174, 1, 'card', 3, '2022-06-15 08:06:33.349000', '{\"cached\":null,\"ignore_cache\":false}'),
(175, 1, 'card', 1, '2022-06-15 08:06:33.899000', '{\"cached\":null,\"ignore_cache\":false}'),
(176, 1, 'card', 2, '2022-06-15 08:06:33.996000', '{\"cached\":null,\"ignore_cache\":false}'),
(177, 1, 'card', 6, '2022-06-15 08:06:34.083000', '{\"cached\":null,\"ignore_cache\":false}'),
(178, 1, 'dashboard', 1, '2022-06-15 08:09:32.267000', '{\"cached\":null,\"ignore_cache\":null}'),
(179, 1, 'dashboard', 1, '2022-06-15 08:11:19.517000', '{\"cached\":null,\"ignore_cache\":null}'),
(180, 1, 'card', 5, '2022-06-15 08:11:20.178000', '{\"cached\":null,\"ignore_cache\":false}'),
(181, 1, 'card', 3, '2022-06-15 08:11:20.419000', '{\"cached\":null,\"ignore_cache\":false}'),
(182, 1, 'card', 2, '2022-06-15 08:11:20.998000', '{\"cached\":null,\"ignore_cache\":false}'),
(183, 1, 'card', 1, '2022-06-15 08:11:21.056000', '{\"cached\":null,\"ignore_cache\":false}'),
(184, 1, 'card', 6, '2022-06-15 08:11:21.169000', '{\"cached\":null,\"ignore_cache\":false}'),
(185, 1, 'table', 5, '2022-06-15 08:11:32.073000', '{\"cached\":null,\"ignore_cache\":null}'),
(186, 1, 'table', 5, '2022-06-15 08:12:07.660000', '{\"cached\":null,\"ignore_cache\":null}'),
(187, 1, 'table', 5, '2022-06-15 08:12:13.141000', '{\"cached\":null,\"ignore_cache\":null}'),
(188, 1, 'dashboard', 1, '2022-06-15 08:18:01.720000', '{\"cached\":null,\"ignore_cache\":null}'),
(189, 1, 'card', 5, '2022-06-15 08:18:02.491000', '{\"cached\":null,\"ignore_cache\":false}'),
(190, 1, 'card', 3, '2022-06-15 08:18:02.713000', '{\"cached\":null,\"ignore_cache\":false}'),
(191, 1, 'card', 1, '2022-06-15 08:18:03.300000', '{\"cached\":null,\"ignore_cache\":false}'),
(192, 1, 'card', 2, '2022-06-15 08:18:03.432000', '{\"cached\":null,\"ignore_cache\":false}'),
(193, 1, 'card', 6, '2022-06-15 08:18:03.440000', '{\"cached\":null,\"ignore_cache\":false}'),
(194, 1, 'dashboard', 1, '2022-06-15 08:19:30.556000', '{\"cached\":null,\"ignore_cache\":null}'),
(195, 1, 'table', 5, '2022-06-15 08:31:54.507000', '{\"cached\":null,\"ignore_cache\":null}'),
(196, 1, 'table', 5, '2022-06-15 08:32:36.167000', '{\"cached\":null,\"ignore_cache\":null}'),
(197, 1, 'table', 5, '2022-06-15 08:34:48.232000', '{\"cached\":null,\"ignore_cache\":null}'),
(198, 1, 'card', 7, '2022-06-15 08:38:28.425000', '{\"cached\":null,\"ignore_cache\":null}'),
(199, 1, 'dashboard', 1, '2022-06-15 08:38:32.197000', '{\"cached\":null,\"ignore_cache\":null}'),
(200, 1, 'card', 7, '2022-06-15 08:38:32.255000', '{\"cached\":null,\"ignore_cache\":null}'),
(201, 1, 'card', 7, '2022-06-15 08:38:33.358000', '{\"cached\":null,\"ignore_cache\":false}'),
(202, 1, 'card', 5, '2022-06-15 08:38:33.374000', '{\"cached\":null,\"ignore_cache\":false}'),
(203, 1, 'card', 3, '2022-06-15 08:38:33.435000', '{\"cached\":null,\"ignore_cache\":false}'),
(204, 1, 'card', 2, '2022-06-15 08:38:34.063000', '{\"cached\":null,\"ignore_cache\":false}'),
(205, 1, 'card', 6, '2022-06-15 08:38:34.165000', '{\"cached\":null,\"ignore_cache\":false}'),
(206, 1, 'card', 1, '2022-06-15 08:38:34.216000', '{\"cached\":null,\"ignore_cache\":false}'),
(207, 1, 'card', 7, '2022-06-15 08:39:21.434000', '{\"cached\":null,\"ignore_cache\":null}'),
(208, 1, 'card', 7, '2022-06-15 08:39:22.102000', '{\"cached\":null,\"ignore_cache\":false}'),
(209, 1, 'dashboard', 1, '2022-06-15 10:10:46.494000', '{\"cached\":null,\"ignore_cache\":null}'),
(210, 1, 'card', 5, '2022-06-15 10:10:47.335000', '{\"cached\":null,\"ignore_cache\":false}'),
(211, 1, 'card', 3, '2022-06-15 10:10:47.591000', '{\"cached\":null,\"ignore_cache\":false}'),
(212, 1, 'card', 1, '2022-06-15 10:10:48.469000', '{\"cached\":null,\"ignore_cache\":false}'),
(213, 1, 'card', 2, '2022-06-15 10:10:48.548000', '{\"cached\":null,\"ignore_cache\":false}'),
(214, 1, 'card', 6, '2022-06-15 10:10:48.588000', '{\"cached\":null,\"ignore_cache\":false}'),
(215, 1, 'card', 7, '2022-06-15 10:11:25.953000', '{\"cached\":null,\"ignore_cache\":null}'),
(216, 1, 'card', 7, '2022-06-15 10:11:26.613000', '{\"cached\":null,\"ignore_cache\":false}'),
(217, 1, 'card', 7, '2022-06-15 10:12:03.588000', '{\"cached\":null,\"ignore_cache\":null}'),
(218, 1, 'dashboard', 1, '2022-06-15 10:12:11.845000', '{\"cached\":null,\"ignore_cache\":null}'),
(219, 1, 'card', 5, '2022-06-15 10:12:12.614000', '{\"cached\":null,\"ignore_cache\":false}'),
(220, 1, 'card', 3, '2022-06-15 10:12:12.929000', '{\"cached\":null,\"ignore_cache\":false}'),
(221, 1, 'card', 1, '2022-06-15 10:12:13.662000', '{\"cached\":null,\"ignore_cache\":false}'),
(222, 1, 'card', 2, '2022-06-15 10:12:13.670000', '{\"cached\":null,\"ignore_cache\":false}'),
(223, 1, 'card', 6, '2022-06-15 10:12:13.810000', '{\"cached\":null,\"ignore_cache\":false}'),
(224, 1, 'card', 7, '2022-06-15 10:12:55.923000', '{\"cached\":null,\"ignore_cache\":false}'),
(225, 1, 'dashboard', 1, '2022-06-15 10:13:24.442000', '{\"cached\":null,\"ignore_cache\":null}'),
(226, 1, 'dashboard', 1, '2022-06-15 10:14:06.835000', '{\"cached\":null,\"ignore_cache\":null}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_activity_timestamp` (`timestamp`),
  ADD KEY `idx_activity_user_id` (`user_id`),
  ADD KEY `idx_activity_custom_id` (`custom_id`);

--
-- Indexes for table `application_permissions_revision`
--
ALTER TABLE `application_permissions_revision`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_general_permissions_revision_user_id` (`user_id`);

--
-- Indexes for table `bookmark_ordering`
--
ALTER TABLE `bookmark_ordering`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_bookmark_user_id_type_item_id` (`user_id`,`type`,`item_id`),
  ADD UNIQUE KEY `unique_bookmark_user_id_ordering` (`user_id`,`ordering`),
  ADD KEY `idx_bookmark_ordering_user_id` (`user_id`);

--
-- Indexes for table `card_bookmark`
--
ALTER TABLE `card_bookmark`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_card_bookmark_user_id_card_id` (`user_id`,`card_id`),
  ADD KEY `idx_card_bookmark_user_id` (`user_id`),
  ADD KEY `idx_card_bookmark_card_id` (`card_id`);

--
-- Indexes for table `card_label`
--
ALTER TABLE `card_label`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_card_label_card_id_label_id` (`card_id`,`label_id`),
  ADD KEY `idx_card_label_card_id` (`card_id`),
  ADD KEY `idx_card_label_label_id` (`label_id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_collection_personal_owner_id` (`personal_owner_id`),
  ADD KEY `idx_collection_location` (`location`),
  ADD KEY `idx_collection_personal_owner_id` (`personal_owner_id`);

--
-- Indexes for table `collection_bookmark`
--
ALTER TABLE `collection_bookmark`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_collection_bookmark_user_id_collection_id` (`user_id`,`collection_id`),
  ADD KEY `idx_collection_bookmark_user_id` (`user_id`),
  ADD KEY `idx_collection_bookmark_collection_id` (`collection_id`);

--
-- Indexes for table `collection_permission_graph_revision`
--
ALTER TABLE `collection_permission_graph_revision`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_collection_revision_user_id` (`user_id`);

--
-- Indexes for table `computation_job`
--
ALTER TABLE `computation_job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_computation_job_ref_user_id` (`creator_id`);

--
-- Indexes for table `computation_job_result`
--
ALTER TABLE `computation_job_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_computation_result_ref_job_id` (`job_id`);

--
-- Indexes for table `core_session`
--
ALTER TABLE `core_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_session_ref_user_id` (`user_id`);

--
-- Indexes for table `core_user`
--
ALTER TABLE `core_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `dashboardcard_series`
--
ALTER TABLE `dashboardcard_series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_dashboardcard_series_dashboardcard_id` (`dashboardcard_id`),
  ADD KEY `idx_dashboardcard_series_card_id` (`card_id`);

--
-- Indexes for table `dashboard_bookmark`
--
ALTER TABLE `dashboard_bookmark`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_dashboard_bookmark_user_id_dashboard_id` (`user_id`,`dashboard_id`),
  ADD KEY `idx_dashboard_bookmark_user_id` (`user_id`),
  ADD KEY `idx_dashboard_bookmark_dashboard_id` (`dashboard_id`);

--
-- Indexes for table `dashboard_favorite`
--
ALTER TABLE `dashboard_favorite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_dashboard_favorite_user_id_dashboard_id` (`user_id`,`dashboard_id`),
  ADD KEY `idx_dashboard_favorite_user_id` (`user_id`),
  ADD KEY `idx_dashboard_favorite_dashboard_id` (`dashboard_id`);

--
-- Indexes for table `databasechangelog`
--
ALTER TABLE `databasechangelog`
  ADD UNIQUE KEY `idx_databasechangelog_id_author_filename` (`ID`,`AUTHOR`,`FILENAME`);

--
-- Indexes for table `databasechangeloglock`
--
ALTER TABLE `databasechangeloglock`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `data_migrations`
--
ALTER TABLE `data_migrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_data_migrations_id` (`id`);

--
-- Indexes for table `dependency`
--
ALTER TABLE `dependency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_dependency_model` (`model`),
  ADD KEY `idx_dependency_model_id` (`model_id`),
  ADD KEY `idx_dependency_dependent_on_model` (`dependent_on_model`),
  ADD KEY `idx_dependency_dependent_on_id` (`dependent_on_id`);

--
-- Indexes for table `dimension`
--
ALTER TABLE `dimension`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_dimension_field_id_name` (`field_id`,`name`),
  ADD KEY `fk_dimension_displayfk_ref_field_id` (`human_readable_field_id`),
  ADD KEY `idx_dimension_field_id` (`field_id`);

--
-- Indexes for table `group_table_access_policy`
--
ALTER TABLE `group_table_access_policy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_gtap_table_id_group_id` (`table_id`,`group_id`),
  ADD KEY `fk_gtap_group_id` (`group_id`),
  ADD KEY `idx_gtap_table_id_group_id` (`table_id`,`group_id`),
  ADD KEY `fk_gtap_card_id` (`card_id`);

--
-- Indexes for table `label`
--
ALTER TABLE `label`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `idx_label_slug` (`slug`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_session_id` (`session_id`),
  ADD KEY `idx_timestamp` (`timestamp`),
  ADD KEY `idx_user_id_device_id` (`session_id`,`device_id`),
  ADD KEY `idx_user_id_timestamp` (`user_id`,`timestamp`);

--
-- Indexes for table `metabase_database`
--
ALTER TABLE `metabase_database`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_database_creator_id` (`creator_id`);

--
-- Indexes for table `metabase_field`
--
ALTER TABLE `metabase_field`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_uniq_field_table_id_parent_id_name` (`table_id`,`parent_id`,`name`),
  ADD KEY `idx_field_table_id` (`table_id`),
  ADD KEY `idx_field_parent_id` (`parent_id`);

--
-- Indexes for table `metabase_fieldvalues`
--
ALTER TABLE `metabase_fieldvalues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fieldvalues_field_id` (`field_id`);

--
-- Indexes for table `metabase_table`
--
ALTER TABLE `metabase_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_uniq_table_db_id_schema_name` (`db_id`,`schema`,`name`),
  ADD KEY `idx_table_db_id` (`db_id`),
  ADD KEY `idx_metabase_table_show_in_getting_started` (`show_in_getting_started`),
  ADD KEY `idx_metabase_table_db_id_schema` (`db_id`,`schema`);

--
-- Indexes for table `metric`
--
ALTER TABLE `metric`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_metric_creator_id` (`creator_id`),
  ADD KEY `idx_metric_table_id` (`table_id`),
  ADD KEY `idx_metric_show_in_getting_started` (`show_in_getting_started`);

--
-- Indexes for table `metric_important_field`
--
ALTER TABLE `metric_important_field`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_metric_important_field_metric_id_field_id` (`metric_id`,`field_id`),
  ADD KEY `idx_metric_important_field_metric_id` (`metric_id`),
  ADD KEY `idx_metric_important_field_field_id` (`field_id`);

--
-- Indexes for table `moderation_review`
--
ALTER TABLE `moderation_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_moderation_review_item_type_item_id` (`moderated_item_type`,`moderated_item_id`);

--
-- Indexes for table `native_query_snippet`
--
ALTER TABLE `native_query_snippet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `fk_snippet_creator_id` (`creator_id`),
  ADD KEY `idx_snippet_name` (`name`),
  ADD KEY `idx_snippet_collection_id` (`collection_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id` (`group_id`,`object`),
  ADD KEY `idx_permissions_group_id` (`group_id`),
  ADD KEY `idx_permissions_object` (`object`),
  ADD KEY `idx_permissions_group_id_object` (`group_id`,`object`);

--
-- Indexes for table `permissions_group`
--
ALTER TABLE `permissions_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_permissions_group_name` (`name`),
  ADD KEY `idx_permissions_group_name` (`name`);

--
-- Indexes for table `permissions_group_membership`
--
ALTER TABLE `permissions_group_membership`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_permissions_group_membership_user_id_group_id` (`user_id`,`group_id`),
  ADD KEY `idx_permissions_group_membership_group_id` (`group_id`),
  ADD KEY `idx_permissions_group_membership_user_id` (`user_id`),
  ADD KEY `idx_permissions_group_membership_group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `permissions_revision`
--
ALTER TABLE `permissions_revision`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_permissions_revision_user_id` (`user_id`);

--
-- Indexes for table `pulse`
--
ALTER TABLE `pulse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pulse_creator_id` (`creator_id`),
  ADD KEY `idx_pulse_collection_id` (`collection_id`),
  ADD KEY `fk_pulse_ref_dashboard_id` (`dashboard_id`);

--
-- Indexes for table `pulse_card`
--
ALTER TABLE `pulse_card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pulse_card_pulse_id` (`pulse_id`),
  ADD KEY `idx_pulse_card_card_id` (`card_id`),
  ADD KEY `fk_pulse_card_ref_pulse_card_id` (`dashboard_card_id`);

--
-- Indexes for table `pulse_channel`
--
ALTER TABLE `pulse_channel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pulse_channel_pulse_id` (`pulse_id`),
  ADD KEY `idx_pulse_channel_schedule_type` (`schedule_type`);

--
-- Indexes for table `pulse_channel_recipient`
--
ALTER TABLE `pulse_channel_recipient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pulse_channel_recipient_ref_pulse_channel_id` (`pulse_channel_id`),
  ADD KEY `fk_pulse_channel_recipient_ref_user_id` (`user_id`);

--
-- Indexes for table `qrtz_blob_triggers`
--
ALTER TABLE `qrtz_blob_triggers`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`);

--
-- Indexes for table `qrtz_calendars`
--
ALTER TABLE `qrtz_calendars`
  ADD PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`);

--
-- Indexes for table `qrtz_cron_triggers`
--
ALTER TABLE `qrtz_cron_triggers`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`);

--
-- Indexes for table `qrtz_fired_triggers`
--
ALTER TABLE `qrtz_fired_triggers`
  ADD PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  ADD KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  ADD KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  ADD KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  ADD KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  ADD KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  ADD KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`);

--
-- Indexes for table `qrtz_job_details`
--
ALTER TABLE `qrtz_job_details`
  ADD PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  ADD KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  ADD KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`);

--
-- Indexes for table `qrtz_locks`
--
ALTER TABLE `qrtz_locks`
  ADD PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`);

--
-- Indexes for table `qrtz_paused_trigger_grps`
--
ALTER TABLE `qrtz_paused_trigger_grps`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`);

--
-- Indexes for table `qrtz_scheduler_state`
--
ALTER TABLE `qrtz_scheduler_state`
  ADD PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`);

--
-- Indexes for table `qrtz_simple_triggers`
--
ALTER TABLE `qrtz_simple_triggers`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`);

--
-- Indexes for table `qrtz_simprop_triggers`
--
ALTER TABLE `qrtz_simprop_triggers`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`);

--
-- Indexes for table `qrtz_triggers`
--
ALTER TABLE `qrtz_triggers`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  ADD KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  ADD KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  ADD KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  ADD KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  ADD KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  ADD KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  ADD KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  ADD KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  ADD KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  ADD KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  ADD KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  ADD KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`query_hash`);

--
-- Indexes for table `query_cache`
--
ALTER TABLE `query_cache`
  ADD PRIMARY KEY (`query_hash`),
  ADD KEY `idx_query_cache_updated_at` (`updated_at`);

--
-- Indexes for table `query_execution`
--
ALTER TABLE `query_execution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_query_execution_started_at` (`started_at`),
  ADD KEY `idx_query_execution_query_hash_started_at` (`hash`,`started_at`),
  ADD KEY `idx_query_execution_card_id` (`card_id`),
  ADD KEY `idx_query_execution_card_id_started_at` (`card_id`,`started_at`);

--
-- Indexes for table `report_card`
--
ALTER TABLE `report_card`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `public_uuid` (`public_uuid`),
  ADD KEY `idx_card_creator_id` (`creator_id`),
  ADD KEY `idx_card_collection_id` (`collection_id`),
  ADD KEY `idx_card_public_uuid` (`public_uuid`),
  ADD KEY `fk_card_made_public_by_id` (`made_public_by_id`),
  ADD KEY `fk_report_card_ref_database_id` (`database_id`),
  ADD KEY `fk_report_card_ref_table_id` (`table_id`);

--
-- Indexes for table `report_cardfavorite`
--
ALTER TABLE `report_cardfavorite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_unique_cardfavorite_card_id_owner_id` (`card_id`,`owner_id`),
  ADD KEY `idx_cardfavorite_card_id` (`card_id`),
  ADD KEY `idx_cardfavorite_owner_id` (`owner_id`);

--
-- Indexes for table `report_dashboard`
--
ALTER TABLE `report_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `public_uuid` (`public_uuid`),
  ADD KEY `idx_dashboard_creator_id` (`creator_id`),
  ADD KEY `idx_report_dashboard_show_in_getting_started` (`show_in_getting_started`),
  ADD KEY `idx_dashboard_public_uuid` (`public_uuid`),
  ADD KEY `idx_dashboard_collection_id` (`collection_id`),
  ADD KEY `fk_dashboard_made_public_by_id` (`made_public_by_id`);

--
-- Indexes for table `report_dashboardcard`
--
ALTER TABLE `report_dashboardcard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_dashboardcard_card_id` (`card_id`),
  ADD KEY `idx_dashboardcard_dashboard_id` (`dashboard_id`);

--
-- Indexes for table `revision`
--
ALTER TABLE `revision`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_revision_model_model_id` (`model`,`model_id`),
  ADD KEY `fk_revision_ref_user_id` (`user_id`);

--
-- Indexes for table `secret`
--
ALTER TABLE `secret`
  ADD PRIMARY KEY (`id`,`version`),
  ADD KEY `fk_secret_ref_user_id` (`creator_id`);

--
-- Indexes for table `segment`
--
ALTER TABLE `segment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_segment_creator_id` (`creator_id`),
  ADD KEY `idx_segment_table_id` (`table_id`),
  ADD KEY `idx_segment_show_in_getting_started` (`show_in_getting_started`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `task_history`
--
ALTER TABLE `task_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_task_history_end_time` (`ended_at`),
  ADD KEY `idx_task_history_db_id` (`db_id`);

--
-- Indexes for table `timeline`
--
ALTER TABLE `timeline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_timeline_creator_id` (`creator_id`),
  ADD KEY `idx_timeline_collection_id` (`collection_id`);

--
-- Indexes for table `timeline_event`
--
ALTER TABLE `timeline_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_event_creator_id` (`creator_id`),
  ADD KEY `idx_timeline_event_timeline_id` (`timeline_id`),
  ADD KEY `idx_timeline_event_timeline_id_timestamp` (`timeline_id`,`timestamp`);

--
-- Indexes for table `view_log`
--
ALTER TABLE `view_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_view_log_user_id` (`user_id`),
  ADD KEY `idx_view_log_timestamp` (`model_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `application_permissions_revision`
--
ALTER TABLE `application_permissions_revision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookmark_ordering`
--
ALTER TABLE `bookmark_ordering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_bookmark`
--
ALTER TABLE `card_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_label`
--
ALTER TABLE `card_label`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `collection_bookmark`
--
ALTER TABLE `collection_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collection_permission_graph_revision`
--
ALTER TABLE `collection_permission_graph_revision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `computation_job`
--
ALTER TABLE `computation_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `computation_job_result`
--
ALTER TABLE `computation_job_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_user`
--
ALTER TABLE `core_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboardcard_series`
--
ALTER TABLE `dashboardcard_series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_bookmark`
--
ALTER TABLE `dashboard_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_favorite`
--
ALTER TABLE `dashboard_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dependency`
--
ALTER TABLE `dependency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dimension`
--
ALTER TABLE `dimension`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_table_access_policy`
--
ALTER TABLE `group_table_access_policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `label`
--
ALTER TABLE `label`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `metabase_database`
--
ALTER TABLE `metabase_database`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `metabase_field`
--
ALTER TABLE `metabase_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `metabase_fieldvalues`
--
ALTER TABLE `metabase_fieldvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `metabase_table`
--
ALTER TABLE `metabase_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `metric`
--
ALTER TABLE `metric`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `metric_important_field`
--
ALTER TABLE `metric_important_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `moderation_review`
--
ALTER TABLE `moderation_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `native_query_snippet`
--
ALTER TABLE `native_query_snippet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions_group`
--
ALTER TABLE `permissions_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions_group_membership`
--
ALTER TABLE `permissions_group_membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions_revision`
--
ALTER TABLE `permissions_revision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pulse`
--
ALTER TABLE `pulse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pulse_card`
--
ALTER TABLE `pulse_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pulse_channel`
--
ALTER TABLE `pulse_channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pulse_channel_recipient`
--
ALTER TABLE `pulse_channel_recipient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `query_execution`
--
ALTER TABLE `query_execution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_card`
--
ALTER TABLE `report_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `report_cardfavorite`
--
ALTER TABLE `report_cardfavorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_dashboard`
--
ALTER TABLE `report_dashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `report_dashboardcard`
--
ALTER TABLE `report_dashboardcard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `revision`
--
ALTER TABLE `revision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `secret`
--
ALTER TABLE `secret`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `segment`
--
ALTER TABLE `segment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_history`
--
ALTER TABLE `task_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timeline`
--
ALTER TABLE `timeline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timeline_event`
--
ALTER TABLE `timeline_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `view_log`
--
ALTER TABLE `view_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `fk_activity_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `application_permissions_revision`
--
ALTER TABLE `application_permissions_revision`
  ADD CONSTRAINT `fk_general_permissions_revision_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `bookmark_ordering`
--
ALTER TABLE `bookmark_ordering`
  ADD CONSTRAINT `fk_bookmark_ordering_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `card_bookmark`
--
ALTER TABLE `card_bookmark`
  ADD CONSTRAINT `fk_card_bookmark_dashboard_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_card_bookmark_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `card_label`
--
ALTER TABLE `card_label`
  ADD CONSTRAINT `fk_card_label_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_card_label_ref_label_id` FOREIGN KEY (`label_id`) REFERENCES `label` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `fk_collection_personal_owner_id` FOREIGN KEY (`personal_owner_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `collection_bookmark`
--
ALTER TABLE `collection_bookmark`
  ADD CONSTRAINT `fk_collection_bookmark_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_collection_bookmark_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `collection_permission_graph_revision`
--
ALTER TABLE `collection_permission_graph_revision`
  ADD CONSTRAINT `fk_collection_revision_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `computation_job`
--
ALTER TABLE `computation_job`
  ADD CONSTRAINT `fk_computation_job_ref_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `computation_job_result`
--
ALTER TABLE `computation_job_result`
  ADD CONSTRAINT `fk_computation_result_ref_job_id` FOREIGN KEY (`job_id`) REFERENCES `computation_job` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `core_session`
--
ALTER TABLE `core_session`
  ADD CONSTRAINT `fk_session_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dashboardcard_series`
--
ALTER TABLE `dashboardcard_series`
  ADD CONSTRAINT `fk_dashboardcard_series_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_dashboardcard_series_ref_dashboardcard_id` FOREIGN KEY (`dashboardcard_id`) REFERENCES `report_dashboardcard` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dashboard_bookmark`
--
ALTER TABLE `dashboard_bookmark`
  ADD CONSTRAINT `fk_dashboard_bookmark_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_dashboard_bookmark_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dashboard_favorite`
--
ALTER TABLE `dashboard_favorite`
  ADD CONSTRAINT `fk_dashboard_favorite_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_dashboard_favorite_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dimension`
--
ALTER TABLE `dimension`
  ADD CONSTRAINT `fk_dimension_displayfk_ref_field_id` FOREIGN KEY (`human_readable_field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_dimension_ref_field_id` FOREIGN KEY (`field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_table_access_policy`
--
ALTER TABLE `group_table_access_policy`
  ADD CONSTRAINT `fk_gtap_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_gtap_group_id` FOREIGN KEY (`group_id`) REFERENCES `permissions_group` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_gtap_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `login_history`
--
ALTER TABLE `login_history`
  ADD CONSTRAINT `fk_login_history_session_id` FOREIGN KEY (`session_id`) REFERENCES `core_session` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_login_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `metabase_database`
--
ALTER TABLE `metabase_database`
  ADD CONSTRAINT `fk_database_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `metabase_field`
--
ALTER TABLE `metabase_field`
  ADD CONSTRAINT `fk_field_parent_ref_field_id` FOREIGN KEY (`parent_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_field_ref_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `metabase_fieldvalues`
--
ALTER TABLE `metabase_fieldvalues`
  ADD CONSTRAINT `fk_fieldvalues_ref_field_id` FOREIGN KEY (`field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `metabase_table`
--
ALTER TABLE `metabase_table`
  ADD CONSTRAINT `fk_table_ref_database_id` FOREIGN KEY (`db_id`) REFERENCES `metabase_database` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `metric`
--
ALTER TABLE `metric`
  ADD CONSTRAINT `fk_metric_ref_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_metric_ref_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `metric_important_field`
--
ALTER TABLE `metric_important_field`
  ADD CONSTRAINT `fk_metric_important_field_metabase_field_id` FOREIGN KEY (`field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_metric_important_field_metric_id` FOREIGN KEY (`metric_id`) REFERENCES `metric` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `native_query_snippet`
--
ALTER TABLE `native_query_snippet`
  ADD CONSTRAINT `fk_snippet_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_snippet_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `fk_permissions_group_id` FOREIGN KEY (`group_id`) REFERENCES `permissions_group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions_group_membership`
--
ALTER TABLE `permissions_group_membership`
  ADD CONSTRAINT `fk_permissions_group_group_id` FOREIGN KEY (`group_id`) REFERENCES `permissions_group` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_permissions_group_membership_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions_revision`
--
ALTER TABLE `permissions_revision`
  ADD CONSTRAINT `fk_permissions_revision_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pulse`
--
ALTER TABLE `pulse`
  ADD CONSTRAINT `fk_pulse_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_pulse_ref_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pulse_ref_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pulse_card`
--
ALTER TABLE `pulse_card`
  ADD CONSTRAINT `fk_pulse_card_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pulse_card_ref_pulse_card_id` FOREIGN KEY (`dashboard_card_id`) REFERENCES `report_dashboardcard` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pulse_card_ref_pulse_id` FOREIGN KEY (`pulse_id`) REFERENCES `pulse` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pulse_channel`
--
ALTER TABLE `pulse_channel`
  ADD CONSTRAINT `fk_pulse_channel_ref_pulse_id` FOREIGN KEY (`pulse_id`) REFERENCES `pulse` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pulse_channel_recipient`
--
ALTER TABLE `pulse_channel_recipient`
  ADD CONSTRAINT `fk_pulse_channel_recipient_ref_pulse_channel_id` FOREIGN KEY (`pulse_channel_id`) REFERENCES `pulse_channel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pulse_channel_recipient_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `qrtz_blob_triggers`
--
ALTER TABLE `qrtz_blob_triggers`
  ADD CONSTRAINT `FK_QRTZ_BLOB_TRIGGERS_TRIGGERS` FOREIGN KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`);

--
-- Constraints for table `qrtz_cron_triggers`
--
ALTER TABLE `qrtz_cron_triggers`
  ADD CONSTRAINT `FK_QRTZ_CRON_TRIGGERS_TRIGGERS` FOREIGN KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`);

--
-- Constraints for table `qrtz_simple_triggers`
--
ALTER TABLE `qrtz_simple_triggers`
  ADD CONSTRAINT `FK_QRTZ_SIMPLE_TRIGGERS_TRIGGERS` FOREIGN KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`);

--
-- Constraints for table `qrtz_simprop_triggers`
--
ALTER TABLE `qrtz_simprop_triggers`
  ADD CONSTRAINT `FK_QRTZ_SIMPROP_TRIGGERS_TRIGGERS` FOREIGN KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`);

--
-- Constraints for table `qrtz_triggers`
--
ALTER TABLE `qrtz_triggers`
  ADD CONSTRAINT `FK_QRTZ_TRIGGERS_JOB_DETAILS` FOREIGN KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`);

--
-- Constraints for table `report_card`
--
ALTER TABLE `report_card`
  ADD CONSTRAINT `fk_card_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_card_made_public_by_id` FOREIGN KEY (`made_public_by_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_card_ref_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_report_card_ref_database_id` FOREIGN KEY (`database_id`) REFERENCES `metabase_database` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_report_card_ref_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `report_cardfavorite`
--
ALTER TABLE `report_cardfavorite`
  ADD CONSTRAINT `fk_cardfavorite_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cardfavorite_ref_user_id` FOREIGN KEY (`owner_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `report_dashboard`
--
ALTER TABLE `report_dashboard`
  ADD CONSTRAINT `fk_dashboard_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_dashboard_made_public_by_id` FOREIGN KEY (`made_public_by_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_dashboard_ref_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `report_dashboardcard`
--
ALTER TABLE `report_dashboardcard`
  ADD CONSTRAINT `fk_dashboardcard_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_dashboardcard_ref_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `revision`
--
ALTER TABLE `revision`
  ADD CONSTRAINT `fk_revision_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `secret`
--
ALTER TABLE `secret`
  ADD CONSTRAINT `fk_secret_ref_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `segment`
--
ALTER TABLE `segment`
  ADD CONSTRAINT `fk_segment_ref_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_segment_ref_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `timeline`
--
ALTER TABLE `timeline`
  ADD CONSTRAINT `fk_timeline_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_timeline_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `timeline_event`
--
ALTER TABLE `timeline_event`
  ADD CONSTRAINT `fk_event_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_events_timeline_id` FOREIGN KEY (`timeline_id`) REFERENCES `timeline` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `view_log`
--
ALTER TABLE `view_log`
  ADD CONSTRAINT `fk_view_log_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
