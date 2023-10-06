-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 12:10 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `by` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_06_122132_create_projects_table', 1),
(6, '2021_10_06_122717_create_project_members_table', 1),
(7, '2021_10_06_123404_create_tasks_table', 1),
(8, '2021_10_06_124051_create_task_attachments_table', 1),
(9, '2021_10_06_124150_create_comments_table', 1),
(10, '2021_10_06_124159_create_task_comments_table', 1),
(11, '2021_10_06_132107_create_sprints_table', 1),
(12, '2021_10_10_090912_create_skills_table', 1),
(13, '2021_10_26_042510_create_project_status_groups_table', 1),
(14, '2021_10_26_044439_create_task_assignments_table', 1),
(15, '2021_10_26_123854_create_task_types_table', 1),
(16, '2021_10_30_082527_create_project_labels_table', 1),
(17, '2021_10_31_153203_add_foreign_key_to_tasks_table', 1),
(18, '2021_11_03_101121_add_foreign_key_to_projects_table', 1),
(19, '2021_11_04_082826_create_notifications_table', 1),
(20, '2021_11_06_133443_create_user_skills_table', 1),
(21, '2021_11_09_210318_create_skill_experiences_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `code` char(3) NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `sprint_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `slug`, `code`, `from`, `to`, `created_by`, `sprint_id`, `created_at`, `updated_at`) VALUES
(1, 'Project 1341', 'project-1341', 'PRO', '2023-10-06', '2023-10-13', 1, NULL, '2023-10-06 10:01:29', '2023-10-06 10:01:29'),
(2, 'Project 6', 'project-6', 'PRO', '2023-10-06', '2023-10-13', 1, NULL, '2023-10-06 10:01:30', '2023-10-06 10:01:30'),
(3, 'Project 84376732', 'project-84376732', 'PRO', '2023-10-06', '2023-10-13', 1, NULL, '2023-10-06 10:01:30', '2023-10-06 10:01:30'),
(4, 'Project 42375132', 'project-42375132', 'PRO', '2023-10-06', '2023-10-13', 1, NULL, '2023-10-06 10:01:30', '2023-10-06 10:01:30'),
(5, 'Project 5', 'project-5', 'PRO', '2023-10-06', '2023-10-13', 1, NULL, '2023-10-06 10:01:31', '2023-10-06 10:01:31'),
(6, 'Project 6097675', 'project-6097675', 'PRO', '2023-10-06', '2023-10-13', 1, NULL, '2023-10-06 10:01:31', '2023-10-06 10:01:31'),
(7, 'Project 9', 'project-9', 'PRO', '2023-10-06', '2023-10-13', 1, NULL, '2023-10-06 10:01:31', '2023-10-06 10:01:31'),
(8, 'Project 884145', 'project-884145', 'PRO', '2023-10-06', '2023-10-13', 1, NULL, '2023-10-06 10:01:31', '2023-10-06 10:01:31'),
(9, 'Project 510592', 'project-510592', 'PRO', '2023-10-06', '2023-10-13', 1, NULL, '2023-10-06 10:01:31', '2023-10-06 10:01:31'),
(10, 'Project 178226', 'project-178226', 'PRO', '2023-10-06', '2023-10-13', 1, NULL, '2023-10-06 10:01:32', '2023-10-06 10:01:32');

-- --------------------------------------------------------

--
-- Table structure for table `project_labels`
--

CREATE TABLE `project_labels` (
  `skill_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_labels`
--

INSERT INTO `project_labels` (`skill_id`, `project_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `project_members`
--

CREATE TABLE `project_members` (
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lead` bigint(20) UNSIGNED DEFAULT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_members`
--

INSERT INTO `project_members` (`project_id`, `user_id`, `lead`, `is_starred`) VALUES
(1, 2, 2, 0),
(2, 3, 3, 0),
(3, 4, 4, 0),
(4, 5, 5, 0),
(5, 6, 6, 0),
(6, 7, 7, 0),
(7, 8, 8, 0),
(8, 9, 9, 0),
(9, 10, 10, 0),
(10, 11, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_status_groups`
--

CREATE TABLE `project_status_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `order` smallint(6) NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_status_groups`
--

INSERT INTO `project_status_groups` (`id`, `name`, `order`, `project_id`) VALUES
(1, 'Not Started', 1, 1),
(2, 'In Progress', 2, 1),
(3, 'Done', 3, 1),
(4, 'Not Started', 1, 2),
(5, 'In Progress', 2, 2),
(6, 'Done', 3, 2),
(7, 'Not Started', 1, 3),
(8, 'In Progress', 2, 3),
(9, 'Done', 3, 3),
(10, 'Not Started', 1, 4),
(11, 'In Progress', 2, 4),
(12, 'Done', 3, 4),
(13, 'Not Started', 1, 5),
(14, 'In Progress', 2, 5),
(15, 'Done', 3, 5),
(16, 'Not Started', 1, 6),
(17, 'In Progress', 2, 6),
(18, 'Done', 3, 6),
(19, 'Not Started', 1, 7),
(20, 'In Progress', 2, 7),
(21, 'Done', 3, 7),
(22, 'Not Started', 1, 8),
(23, 'In Progress', 2, 8),
(24, 'Done', 3, 8),
(25, 'Not Started', 1, 9),
(26, 'In Progress', 2, 9),
(27, 'Done', 3, 9),
(28, 'Not Started', 1, 10),
(29, 'In Progress', 2, 10),
(30, 'Done', 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`) VALUES
(1, 'Dev'),
(2, 'Design'),
(3, 'Testing'),
(4, 'Bugfixing');

-- --------------------------------------------------------

--
-- Table structure for table `skill_experiences`
--

CREATE TABLE `skill_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `level` int(10) UNSIGNED NOT NULL,
  `min_exp` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill_experiences`
--

INSERT INTO `skill_experiences` (`id`, `name`, `level`, `min_exp`) VALUES
(1, 'Beginner', 1, 0),
(2, 'Experienced', 2, 500),
(3, 'Pro', 3, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `sprints`
--

CREATE TABLE `sprints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `deadline` datetime NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `is_archived` tinyint(1) NOT NULL DEFAULT 0,
  `task_type_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `sprint_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `label_id` bigint(20) UNSIGNED DEFAULT NULL,
  `linked_task` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_assignments`
--

CREATE TABLE `task_assignments` (
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_attachments`
--

CREATE TABLE `task_attachments` (
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_comments`
--

CREATE TABLE `task_comments` (
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_types`
--

CREATE TABLE `task_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_types`
--

INSERT INTO `task_types` (`id`, `name`) VALUES
(1, 'Task'),
(2, 'Bug'),
(3, 'Story'),
(4, 'Epic');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@user.com', '$2y$10$cyzxwj6DFcT0ixrR2HxeXOgFtx/GRtgvfuHavju9fA0S3WZYlFQV2', NULL, '2023-10-06 10:01:23', '2023-10-06 10:01:23'),
(2, 'Mr. Gerald Bradtke', 'ledner.elton@example.com', '$2y$10$JXt22Uhq89JdyDq6MuYS9esvuUbTjheTAZWFS1TeJQqLl0KaOG4v.', NULL, '2023-10-06 10:01:32', '2023-10-06 10:01:32'),
(3, 'Prof. Crawford Hoeger', 'quitzon.bella@example.org', '$2y$10$FM/GL8.QCgZA9HzAhbXCf.O8cIGPTpOqSPU7eGkOhSxEJ3rcdK4LO', NULL, '2023-10-06 10:01:32', '2023-10-06 10:01:32'),
(4, 'Miss Liliane Bernier IV', 'ellie.koelpin@example.net', '$2y$10$S2ievC.I43GfPO1CPOFdce7dEmEVQHnscwKX2ldVKZ/IoNTdEl6Lm', NULL, '2023-10-06 10:01:32', '2023-10-06 10:01:32'),
(5, 'Darien McCullough', 'feeney.raegan@example.com', '$2y$10$78uK73lebmb3lHfamGZ5ju/nuMkFcDc9x44KLOViJPwviFhTELnwW', NULL, '2023-10-06 10:01:33', '2023-10-06 10:01:33'),
(6, 'Dr. Eula Mann', 'theresa.senger@example.com', '$2y$10$u7nbGTFoHl40uMQwx2mIW.q2Q0iWrFJyztWnGUSxlzkFCE1is/heq', NULL, '2023-10-06 10:01:33', '2023-10-06 10:01:33'),
(7, 'Sydnee Krajcik', 'myrtle.kreiger@example.net', '$2y$10$LIKoCrx7xowZKnUGMH0HqeeKwmVdqJLPVinnd4UG6sWcDVUXVNHoC', NULL, '2023-10-06 10:01:33', '2023-10-06 10:01:33'),
(8, 'Santiago Batz', 'zspencer@example.net', '$2y$10$wYBLfEe9YUrgQN0DJkmpdOv5aH4AGAeojSEkGenE7FhINZdZ5moqC', NULL, '2023-10-06 10:01:33', '2023-10-06 10:01:33'),
(9, 'Sandy Rolfson', 'feest.neal@example.net', '$2y$10$S8JNP.rRrHu/kYIvHEZjJueagTzZBRJFR2LhI5TkvJRkxVe73GaeO', NULL, '2023-10-06 10:01:34', '2023-10-06 10:01:34'),
(10, 'Maya Corkery', 'rodrigo.prohaska@example.net', '$2y$10$bF64tT3PHGZirx74W5lZDOY2s7JkpS7ETfTIeOQ2xz2IFIIo7hMRq', NULL, '2023-10-06 10:01:34', '2023-10-06 10:01:34'),
(11, 'Moshe Hill', 'lorenzo39@example.org', '$2y$10$n/AFX8G/Q0sh/cicg1I3s.Uwq3/FAVmFp.kl9f5sNt69BylOCF9HW', NULL, '2023-10-06 10:01:34', '2023-10-06 10:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_skills`
--

CREATE TABLE `user_skills` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL,
  `level` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `experience` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_parent_id_foreign` (`parent_id`),
  ADD KEY `comments_by_foreign` (`by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_name_unique` (`name`),
  ADD KEY `projects_created_by_foreign` (`created_by`),
  ADD KEY `projects_sprint_id_foreign` (`sprint_id`);

--
-- Indexes for table `project_labels`
--
ALTER TABLE `project_labels`
  ADD PRIMARY KEY (`skill_id`,`project_id`),
  ADD KEY `project_labels_project_id_foreign` (`project_id`);

--
-- Indexes for table `project_members`
--
ALTER TABLE `project_members`
  ADD PRIMARY KEY (`project_id`,`user_id`),
  ADD KEY `project_members_user_id_foreign` (`user_id`),
  ADD KEY `project_members_lead_foreign` (`lead`);

--
-- Indexes for table `project_status_groups`
--
ALTER TABLE `project_status_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_status_groups_project_id_foreign` (`project_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill_experiences`
--
ALTER TABLE `skill_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sprints`
--
ALTER TABLE `sprints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sprints_created_by_foreign` (`created_by`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_project_id_foreign` (`project_id`),
  ADD KEY `tasks_parent_id_foreign` (`parent_id`),
  ADD KEY `tasks_linked_task_foreign` (`linked_task`),
  ADD KEY `tasks_created_by_foreign` (`created_by`),
  ADD KEY `tasks_task_type_id_foreign` (`task_type_id`),
  ADD KEY `tasks_sprint_id_foreign` (`sprint_id`),
  ADD KEY `tasks_status_group_id_foreign` (`status_group_id`),
  ADD KEY `tasks_label_id_foreign` (`label_id`);

--
-- Indexes for table `task_assignments`
--
ALTER TABLE `task_assignments`
  ADD PRIMARY KEY (`task_id`,`user_id`),
  ADD KEY `task_assignments_user_id_foreign` (`user_id`);

--
-- Indexes for table `task_attachments`
--
ALTER TABLE `task_attachments`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `task_comments`
--
ALTER TABLE `task_comments`
  ADD PRIMARY KEY (`task_id`,`comment_id`),
  ADD KEY `task_comments_comment_id_foreign` (`comment_id`);

--
-- Indexes for table `task_types`
--
ALTER TABLE `task_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD PRIMARY KEY (`user_id`,`skill_id`),
  ADD KEY `user_skills_skill_id_foreign` (`skill_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `project_status_groups`
--
ALTER TABLE `project_status_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `skill_experiences`
--
ALTER TABLE `skill_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sprints`
--
ALTER TABLE `sprints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_types`
--
ALTER TABLE `task_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_by_foreign` FOREIGN KEY (`by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_sprint_id_foreign` FOREIGN KEY (`sprint_id`) REFERENCES `sprints` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `project_labels`
--
ALTER TABLE `project_labels`
  ADD CONSTRAINT `project_labels_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_labels_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_members`
--
ALTER TABLE `project_members`
  ADD CONSTRAINT `project_members_lead_foreign` FOREIGN KEY (`lead`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `project_members_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_status_groups`
--
ALTER TABLE `project_status_groups`
  ADD CONSTRAINT `project_status_groups_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sprints`
--
ALTER TABLE `sprints`
  ADD CONSTRAINT `sprints_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_label_id_foreign` FOREIGN KEY (`label_id`) REFERENCES `project_labels` (`skill_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tasks_linked_task_foreign` FOREIGN KEY (`linked_task`) REFERENCES `tasks` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tasks_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `tasks` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_sprint_id_foreign` FOREIGN KEY (`sprint_id`) REFERENCES `sprints` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tasks_status_group_id_foreign` FOREIGN KEY (`status_group_id`) REFERENCES `project_status_groups` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tasks_task_type_id_foreign` FOREIGN KEY (`task_type_id`) REFERENCES `task_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_assignments`
--
ALTER TABLE `task_assignments`
  ADD CONSTRAINT `task_assignments_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_assignments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_attachments`
--
ALTER TABLE `task_attachments`
  ADD CONSTRAINT `task_attachments_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_comments`
--
ALTER TABLE `task_comments`
  ADD CONSTRAINT `task_comments_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_comments_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD CONSTRAINT `user_skills_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_skills_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
