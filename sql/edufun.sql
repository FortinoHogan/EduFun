-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2024 at 07:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufun`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Data Science', '2024-10-31 11:17:13', '2024-10-31 11:17:13'),
(2, 'Network Security', '2024-10-31 11:17:13', '2024-10-31 11:17:13');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2024_10_31_134827_create_table_category', 1),
(4, '2024_10_31_135532_create_table_writer', 1),
(5, '2024_10_31_135551_create_table_post', 1),
(6, '2024_10_31_140831_create_cache_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `img-path` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `writer_id`, `category_id`, `title`, `img-path`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Machine Learning', 'storage/img/post-1.jpg', 'Qui perferendis cupiditate magnam. Unde neque quas cupiditate a dolores cupiditate. Est sit libero doloremque natus quia. Tenetur dolores iusto rerum unde necessitatibus earum. Est blanditiis et commodi eos velit vel. Quis debitis dolorum enim iure saepe. Hic quis voluptas quidem accusantium et ratione est. Et est beatae earum quia accusantium. Et est omnis veniam quis laborum. Et quaerat consequatur ducimus est eos optio ratione. Vel ad aut nihil sint cum praesentium voluptas. Repudiandae aut mollitia officia adipisci tempora sint. Quia optio repudiandae dolorum voluptas et est ut. Eligendi alias maxime ea quia enim. Nobis vero velit eos corporis atque. Corrupti eveniet ut a qui magnam quaerat nobis. Et odio minus iure aperiam aut et. Sunt velit tempore ut eligendi quia. Id magnam neque ratione accusamus. Dolor in corrupti quibusdam dolorem aperiam. Culpa animi praesentium et deserunt fugit consequatur. Sed dolor voluptatem harum sit fugiat molestias nisi. In quod eius repudiandae libero sunt. Voluptatibus porro et sit odio. Molestiae reiciendis facilis qui cum et laborum architecto in. In qui provident nobis ipsa. Autem consequatur accusamus ea temporibus ipsa dolor. Fuga tenetur voluptatem sed suscipit. Aut ullam corporis tenetur repudiandae. Aut nobis culpa accusantium odio nostrum inventore sed. Facere explicabo sint est nihil sequi. Provident amet voluptas explicabo occaecati dolores velit soluta alias. Et sequi dolorum ut aperiam harum. Perspiciatis odio illum velit vel et. Quibusdam delectus vel nam omnis qui sunt. Harum et sit aliquid occaecati id sunt. Vero fugit error sint officia necessitatibus. Dolores illo maxime non a modi. Dolore cum nulla in porro quaerat. Ratione est iusto corrupti veritatis quia sit odit. Et quam aspernatur voluptates aliquam. Ipsa illo sint possimus qui quis dolore voluptas.', '2024-10-31 11:17:14', '2024-10-31 11:17:14'),
(2, 1, 1, 'Deep Learning', 'storage/img/post-2.jpg', 'Quis suscipit ut quas laborum natus iste tenetur quis. Necessitatibus sit dolorem quisquam quia. Excepturi officiis earum repudiandae. Et ut ducimus nemo aut non. Qui quis dolores incidunt dignissimos ex sed. Dolores dolores nemo ratione laboriosam sit. Nulla aliquid omnis ut eos. Et recusandae exercitationem in perspiciatis impedit excepturi tempore ipsam. Reprehenderit tempore dolores soluta non et sapiente sed. At dolore quidem necessitatibus ut. Dolor possimus aut accusantium. Sed nesciunt inventore deleniti dolorem aut molestiae. Fugit nulla voluptas rerum sit. Deserunt rerum sint officiis atque. Et et libero sed praesentium voluptatibus. Dolores sed suscipit sit dolorem sit odio. Nam non voluptatibus fugit ea ut. Perspiciatis nulla doloremque molestias ipsa. Corporis incidunt aut praesentium aut ex minima corporis tempore. Ducimus non cupiditate sit nam. Facere eveniet iure amet repudiandae similique sit ut repellat. Sint voluptatum aut cupiditate totam accusantium quod aut. Saepe mollitia libero facere minima quia quidem. Eius fugiat id expedita rerum autem sequi. Dolore et consequatur voluptate doloribus quis. Omnis accusamus nulla non id tenetur. Sit est possimus perferendis in provident. Et unde neque voluptas quibusdam aut vel. Veniam qui iure et et dolor sint rerum. Provident aut nobis dolor ex vel minima voluptas. Distinctio exercitationem autem voluptate et qui debitis enim. Et culpa ea id et quod. Provident sapiente autem corrupti inventore debitis et libero. Ipsa maiores asperiores dolorem mollitia.', '2024-10-31 11:17:14', '2024-10-31 11:17:14'),
(3, 2, 1, 'Natural Language Processing', 'storage/img/post-3.jpg', 'Rerum officiis soluta veniam ea ut. Aliquam libero qui ut officiis ut rerum occaecati. A odio nam minima expedita eius et adipisci. Aperiam et sunt sed in dolore explicabo. Reprehenderit debitis facilis neque cupiditate. Eos voluptatem voluptatem ipsam eum ex in corporis dicta. Voluptatem assumenda aliquam accusantium ut nemo. Corporis qui dicta alias illum ut. Voluptatem placeat est provident expedita rerum aliquam ut. Odio esse asperiores dolorum quam rerum voluptates quis aliquam. Eligendi voluptate voluptatem odio. Est sint occaecati ipsa. Et voluptatem pariatur assumenda consectetur et delectus. Rerum a odit placeat eaque qui. Aut cupiditate et ullam at quia ad. Est minus voluptas ea voluptates sit sequi. Quo odit molestiae sunt possimus deleniti. Doloribus quia temporibus quia sed nulla esse. Cum aut quis consequatur non. Aut repudiandae nam nemo ut qui eum. Architecto culpa debitis omnis dolorum qui nostrum sed adipisci. Et dolorem in totam. Ex autem labore ex ipsum perspiciatis. Accusamus laudantium est quos ab. Qui eveniet voluptatem iusto animi recusandae impedit veniam voluptatem. Quia repellat fugiat nulla vel.', '2024-10-31 11:17:14', '2024-10-31 11:17:14'),
(4, 3, 2, 'Software Security', 'storage/img/post-4.jpg', 'Est dolorem optio quo voluptate. Veniam eius sed ut. Sit nobis eaque eum dicta. Ea unde et veniam harum vel sunt. Omnis in aspernatur aut. Doloribus molestiae rerum eum magnam reprehenderit. Numquam autem soluta eos assumenda aut. Qui rerum non enim et quasi ut. Provident alias deleniti harum magni. Repudiandae non et nesciunt eos nostrum voluptates culpa. Beatae hic non ad iure. Alias ducimus rerum et ut. Iure et eum reprehenderit eveniet nihil perferendis quis. Ad qui nemo voluptatem ea. Magni nihil porro atque mollitia accusantium facilis aut. Odio placeat deserunt debitis. Qui iure aut ratione dolore delectus ea ut. Eos enim itaque quia rerum. Ut qui consequatur consequatur sint error vel quasi. Amet voluptates iusto non et quia. Omnis sit et architecto facere aut sed et sunt. Officiis placeat dolorem quidem est sunt. Quis fugit sit enim perspiciatis iste placeat. Laborum aut eos nostrum autem. Laboriosam blanditiis pariatur sed culpa nobis. Quibusdam impedit totam aut repudiandae. Vel ut qui et molestiae asperiores vero. Repudiandae veniam suscipit dolor nihil consequatur beatae. Itaque nisi voluptas deleniti quisquam ut sit accusantium.', '2024-10-31 11:17:14', '2024-10-31 11:17:14'),
(5, 3, 2, 'Server and Network Administration', 'storage/img/post-5.jpg', 'Saepe maxime ab vitae nihil. Quia iure voluptatem est est at excepturi minus. Sit cupiditate aut adipisci rerum. Quo sequi non accusamus voluptas iure omnis est eum. Provident explicabo aut quia placeat dolores et impedit cum. Rem itaque voluptate cum consequatur. Est voluptatem culpa aliquam nihil fugiat vel repudiandae. Aut cum beatae assumenda deserunt debitis. Nesciunt ducimus quod recusandae aut voluptas adipisci nihil. Incidunt eum id cumque quam. Et pariatur vitae sunt minus. Quia totam eos necessitatibus quae ipsum. Sed repellendus eaque aut eos qui assumenda sunt. Et qui amet numquam consequuntur odit rerum non. Consequatur consequatur assumenda explicabo ut necessitatibus magni eos. Similique vel dolor eligendi. Nostrum quibusdam quod dolorum repellendus. Tempora illum doloribus qui quis incidunt tenetur nisi. Quia nisi velit qui vel magnam. Iste dolorem enim harum deserunt ducimus dignissimos. Molestiae maxime ut perferendis similique omnis illum deserunt. Facere est rerum aut. Blanditiis amet neque qui quod. Fuga quidem nulla suscipit iure laboriosam blanditiis dolor ut. Modi dolores minima maxime atque molestiae. Nostrum dolore doloremque asperiores necessitatibus voluptatem minus consequatur. Natus consequuntur accusamus maxime aut qui dolorem incidunt qui. Fugiat aut sed itaque et quia amet.', '2024-10-31 11:17:14', '2024-10-31 11:17:14'),
(6, 3, 2, 'Mobile Penetration Testing', 'storage/img/post-6.jpg', 'Qui quidem eos non velit. Perspiciatis fugiat in sequi et aspernatur. Iusto et veniam nesciunt necessitatibus odio. Vero eum laboriosam dolorem omnis non quibusdam error. Tenetur fuga similique ut voluptatibus non architecto omnis qui. Et qui eveniet aut incidunt fugiat. Enim aut aut dolores assumenda reprehenderit veritatis saepe. Repellendus voluptates voluptatem voluptatem iste harum odit. Veritatis omnis minima omnis quos omnis quo unde. Modi quia quis aliquid. Maiores reiciendis ducimus magni sed eum ea enim. Aspernatur assumenda quis fugiat repellat magnam laboriosam. Aut ipsa saepe quo sit dicta rerum. Accusantium et facere quod inventore ut quia vero. Omnis mollitia iste accusantium explicabo corrupti natus et. Aperiam blanditiis et quo. Non non tenetur necessitatibus perspiciatis modi quis facere. Voluptates in laborum totam laborum. Occaecati illum illo consequuntur enim aliquam dolores hic. Sunt neque ut ad eaque iure similique. Dicta quia maxime eligendi velit odio dolor.', '2024-10-31 11:17:14', '2024-10-31 11:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3Xxsy8QuQ2OR1m4GUiDLYU2IPSF4JBx29SPTLdfc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibGppNmRFUEx6SDgxeHFJMXZIMGgzZ1JDTmtqa0htbWxiaTdKUmtQdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93cml0ZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730398641);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writer`
--

CREATE TABLE `writer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `img-path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writer`
--

INSERT INTO `writer` (`id`, `category_id`, `name`, `img-path`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hartaka Nugroho S.E.', 'storage/img/writer-1.png', '2024-10-31 11:17:13', '2024-10-31 11:17:13'),
(2, 1, 'Mujur Raden Tarihoran', 'storage/img/writer-2.png', '2024-10-31 11:17:13', '2024-10-31 11:17:13'),
(3, 2, 'Gamanto Wibowo', 'storage/img/writer-3.png', '2024-10-31 11:17:13', '2024-10-31 11:17:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_writer_id_foreign` (`writer_id`),
  ADD KEY `post_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `writer`
--
ALTER TABLE `writer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `writer_category_id_foreign` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writer`
--
ALTER TABLE `writer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writer` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `writer`
--
ALTER TABLE `writer`
  ADD CONSTRAINT `writer_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
