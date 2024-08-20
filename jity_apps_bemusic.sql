-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2024 at 12:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jity_apps.bemusic`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_sessions`
--

CREATE TABLE `active_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `active_sessions`
--

INSERT INTO `active_sessions` (`id`, `session_id`, `token`, `user_id`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, 'GxokOGkUiM42rQOLgrACH43IODleHlStfoVMuRiE', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-11 20:27:12', '2024-04-11 20:27:12'),
(2, 'sQQ9DrhQR6a7Pw3xqPsKgBlCKceEEuchmF5XHciu', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-11 20:40:53', '2024-04-11 21:25:22'),
(3, 'ymSjK5dofQHyLB6qk1Pangp1onVMwqNcIMUDv1XE', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-11 21:26:14', '2024-04-11 21:26:14'),
(4, 'z6GsgKLuskOpKLwq20Oi6Fl7at4fbNuxcxm7HGRj', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-17 09:21:19', '2024-04-17 09:21:19'),
(5, 'DFSTOP6h2UefrJcViFyG7lWdU4D84S85nfbCwWtd', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-18 08:38:03', '2024-04-18 08:38:04'),
(6, '5dIODlfbCtwe9eHZ6kMZbeRnwdGXmjOP6H9uivGc', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-19 21:57:34', '2024-04-19 21:57:36'),
(7, 'tBryD7uTUiL7cg51gN4mbEBmkUIFRlaOFHBxt19S', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-21 07:33:12', '2024-04-21 07:34:05'),
(8, 'onT99oSrCQzAT5LHU9p05r13ExC3zn7LovJ3W7Tj', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-21 07:40:01', '2024-04-21 07:40:01'),
(9, 'TrCPR40EM6PKOxLx2GlX61SzO43GkhVCCWOgoHZP', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-21 07:44:24', '2024-04-21 08:32:18'),
(10, '4CxTADgzrWRA6bkk7fNJWd6Z5hBa60AdHIrtimMB', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-25 20:14:42', '2024-04-25 20:30:15'),
(11, 'tSBAcuNAzPUdkk8ihLI7nn4Pk4oa7qTzQ5rutMFG', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-26 05:07:25', '2024-04-26 07:23:37'),
(12, 'esTb5Fzp9jpYUdbl3RfOEfeeODMddxRHdXZZC7Tn', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-26 06:49:37', '2024-04-26 06:49:37'),
(13, 'jNgO2pIXX1Rj9Fax2542kKPM0g8bpoi7oC5ZHz00', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-26 18:47:10', '2024-04-26 21:33:55'),
(14, 'FTLk4A644iefWwKdWAcv36tAYnjEdAGItaRcAxBh', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-27 14:11:11', '2024-04-27 19:53:38'),
(15, 'NQhnWEOpYjaYfdwl3iIzdt8nC4aPZ2QyGPUFCpOJ', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-27 19:55:44', '2024-04-27 23:47:03'),
(18, 'V0HJ94PfiakwanfWl2rT0wE4A0ZryWe0FUsM6dV3', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-28 00:09:18', '2024-04-28 06:52:59'),
(19, 'ON4DZp3IgRr8zTxtfP850o3gP6wHS49TZhgW1onM', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-28 00:46:13', '2024-04-28 00:46:13'),
(20, 'KPIsaf4Ia6SllZCt52casbTE6i2zaKwIlgFBDaeA', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-28 12:40:03', '2024-04-28 16:50:29'),
(21, 'ii1xYxfDX8GOvzm5QJUL4nhRDmV7qiLKeNWiKjWr', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-29 04:00:25', '2024-04-29 04:01:21'),
(22, 'Nzx8aHgTjLfvz9HIVqNDkcsZPwRcitVXT84Zlp3z', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-29 06:59:49', '2024-04-29 19:01:11'),
(28, 'lvX8LaRNy133QhvcgtXzmPQvabWPuuJGprk3KACZ', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-29 19:33:42', '2024-04-29 21:10:51'),
(30, 'lvX8LaRNy133QhvcgtXzmPQvabWPuuJGprk3KACZ', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-29 19:33:42', '2024-04-29 19:33:42'),
(31, 'LF4II8uWrtC4otRwSv9j06h32UXDHPaiIuAncQna', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-29 21:29:49', '2024-04-29 23:08:53'),
(35, 'aeKwlPjz0gi3drYIBKPb3gJ3i5R6fnowoZnalFBP', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-30 05:29:22', '2024-04-30 07:43:27'),
(36, 'lp60hhLg4mH8LQdDEYhow2hQaj6AarUv2OlpjnX5', NULL, 1, '178.255.168.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '2024-04-30 10:36:05', '2024-04-30 10:44:35'),
(38, 'aRGf9uEpoIwwWfiUpt6i0u0AfXjYXuaF4XBYBfoM', NULL, 1, '178.255.168.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '2024-04-30 10:46:04', '2024-04-30 10:52:13'),
(42, 'Qo6Z6aZtAGDGZO3PADOleNqsN8T9leotSk70eNGQ', NULL, 1, '178.255.168.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '2024-04-30 11:00:20', '2024-04-30 11:00:20'),
(46, 'hFl15jUGkqmzTcWYp26EpBnDcNnCwx62UJVYLXbd', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-01 06:04:57', '2024-05-01 07:19:23'),
(48, 'xcWTu4ZBQLTIBZDY5NgxiwZuHmqCyI6DhUJhV0Sg', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-01 16:02:11', '2024-05-01 18:51:35'),
(49, '9QA85K1pSvDLQDlTCp5tKMDFFVuYI4jwUw1nqVQl', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-01 18:57:24', '2024-05-01 21:43:13'),
(50, 'q28zc8HbVE3iJ8aecT8IdQiH6aH8r1mUNaoaSGFB', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-02 04:49:17', '2024-05-02 08:43:22'),
(51, 'BoZbou4XAneFzjzHUlaZPEY3V8Qegi1NR6CBWIs7', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-03 05:32:46', '2024-05-03 09:12:44'),
(52, 'dXQR4z3kkGRag40RHMShRjRjo2FxjTITSLra5vcq', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-03 19:11:30', '2024-05-03 20:15:14'),
(53, 'SvQQt3Xuf5gklHgEgDYcbwXoZKEQugY4Tje0dCjs', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-04 04:38:31', '2024-05-04 04:38:31'),
(54, 'aZNvtMnp9BXdKPj4yAjaeljz2o5unGzDtNJPzFjJ', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-04 06:59:39', '2024-05-04 06:59:39'),
(55, 'pdgZawI4sPupaDqwzJQmtp2wGiZkFWBIgqigs3mu', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-06 15:49:46', '2024-05-06 20:42:59'),
(58, 'BKqphZRNIE9qSnBhyaJMqwLHgkYKg5k0xzh0TlPC', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-06 20:51:30', '2024-05-06 21:16:41'),
(59, 'bFYKBU0wfVJrX9q9SaWRAhLXdFRK6fkyr7yG0UQO', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-07 11:23:49', '2024-05-07 14:48:22'),
(61, 'j8ZIUuOvwFCKTC6AirLgLLiuSoMOnLp6pAXGoisG', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-07 16:49:30', '2024-05-07 17:27:15'),
(62, '7DxfhIIABvBdiiNW5jpcRvXMESkz35Gfl2o0EnVN', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-09 16:16:34', '2024-05-09 19:17:22'),
(63, 'n1Ol7jvClsgZfaecOvidAkCF1KJ4AtqvckmDD356', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-10 15:01:11', '2024-05-10 15:01:18'),
(64, 'n1Ol7jvClsgZfaecOvidAkCF1KJ4AtqvckmDD356', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-10 15:01:11', '2024-05-10 15:01:11'),
(65, 'n1Ol7jvClsgZfaecOvidAkCF1KJ4AtqvckmDD356', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-10 15:01:11', '2024-05-10 15:01:11'),
(66, 'kduug8FyGIWZhhgG5nQwqPQ1HhFM20elKcRXIs7R', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-10 19:15:43', '2024-05-10 20:39:28'),
(67, '4ourXq32DczfQCOgIkE240S8Uf0EKcOf5AaPmcYS', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-11 06:04:17', '2024-05-11 07:52:38'),
(68, '4ourXq32DczfQCOgIkE240S8Uf0EKcOf5AaPmcYS', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-11 06:04:17', '2024-05-11 06:04:17'),
(69, '4ourXq32DczfQCOgIkE240S8Uf0EKcOf5AaPmcYS', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-11 06:04:17', '2024-05-11 06:04:17'),
(75, 'qEK96rZDxqSsF7yMHX39ZVxgkbazXlV9PmFEnMQO', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-11 21:11:55', '2024-05-11 23:17:50'),
(78, 'YYPzcHLEYDEbnOKvUpVmxn8ErOnQDYqOEQH7i6yH', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-12 13:40:50', '2024-05-12 21:28:23'),
(80, 'hhqCoegKjn6gYP6ba1O5CmtrMzSqEVPcaCeEEjvh', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-13 04:53:50', '2024-05-13 07:52:10'),
(83, 'uKzx5nuAKL0MTFxBpUssESANhXBrGmu7dm4lShve', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-13 18:53:57', '2024-05-13 18:54:01'),
(85, 'h9CiVuWTJaLsvLT8lCXZtDZGVQmaZxeo41kssuRI', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-14 04:18:22', '2024-05-14 04:18:30'),
(88, 'MynUO61dMLPacH5lMbrnR2HABgin48snmtBK5Q8V', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-14 19:22:44', '2024-05-14 20:03:46'),
(91, 'dkLxWXMwco9xyjSS8Ub6fL1VUgTYbppNPspoe84T', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 04:22:41', '2024-05-15 07:12:48'),
(92, 'xhIfZHttDASNYiMCIyZX3rPYt1fg5inusUyw5yTL', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 12:51:36', '2024-05-15 12:51:36'),
(93, 'ruIOZJC3W3LLcH8BwffDjTOrJHWEFCmD5iEPE5WM', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 19:07:19', '2024-05-15 19:07:19'),
(94, 'UaWbaLSYS8U5wv1bFrjL4G9DNttNwfoLc3ohpwSD', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 19:07:26', '2024-05-15 19:07:26'),
(95, 'VBTQRs0i4urAV9m291WeMOX7bfQ2rCyQDMweNcFS', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 19:07:26', '2024-05-15 19:07:26'),
(96, 'S7ZcT2x4JffO3MipgE20tvyfA91pPksXhwEo2ZZ5', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 19:07:27', '2024-05-15 19:07:27'),
(97, 'HbyobDm3Fc4G3k7stU9hyaDHi3lXTudCw8Q3aXNr', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 19:07:27', '2024-05-15 19:07:27'),
(98, 'cJuOXRfvHoJ3zLm9umt6mn2BgyHhpa5PZQEJRIAd', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 19:07:28', '2024-05-15 19:07:33'),
(102, 'o2Rt9BLyLyCL5P4UYINWD4mUOayURqrKp2OleTgL', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 19:08:34', '2024-05-15 20:15:48'),
(103, 'o2Rt9BLyLyCL5P4UYINWD4mUOayURqrKp2OleTgL', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 19:08:34', '2024-05-15 19:08:34'),
(108, 'p7IDYVr2cCOu4XhsiHcYPXQU6a3PuBfYyd0xdHlc', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-16 05:55:11', '2024-05-16 06:36:59'),
(109, 'WK7lIKVp1JLCTnIXiUSEn4ghiLINSMUt2wXtB34W', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-19 22:29:32', '2024-05-19 22:34:52'),
(112, 'P3XrUwLYv4MyAIHH4sxXIDROj5W84g09wVoLo5Mw', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-20 16:34:12', '2024-05-20 19:36:31'),
(113, 'xoik6h62JFEsOh41nbUNvJei64MO5b2sHPWfSxGI', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-20 16:59:33', '2024-05-20 16:59:33'),
(117, 'Bt1MjZs8KZDPsGMgmiats0QaKDliM9a0zvT3iRhU', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-22 12:12:05', '2024-05-22 21:59:16'),
(120, 'EO5KM3cgjsBpljMr72bZEUx7thrNI6bqCPvfk4Sy', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-23 19:30:48', '2024-05-23 19:53:47'),
(124, 'HiazPTDxLW6uxYvP0Pp5oqbG8eIg7uKYuXCed1xY', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-25 13:52:49', '2024-05-25 16:18:58'),
(128, 'g70QvlZJHzz2CKYMm6RxHrw64dwEyD1pglaTUJzc', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-26 16:06:04', '2024-05-26 19:35:37'),
(131, 'YQTYVny0oQsw7Vl2NlBvOecjgqWROtNKW2OCyn43', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-27 06:28:13', '2024-05-27 06:29:39'),
(132, 'YQTYVny0oQsw7Vl2NlBvOecjgqWROtNKW2OCyn43', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-27 06:28:13', '2024-05-27 06:28:13'),
(133, 'YQTYVny0oQsw7Vl2NlBvOecjgqWROtNKW2OCyn43', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-27 06:28:13', '2024-05-27 06:28:13'),
(134, 'YQTYVny0oQsw7Vl2NlBvOecjgqWROtNKW2OCyn43', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-27 06:28:13', '2024-05-27 06:28:13'),
(135, 'QRHrykL5F0ObI4PswSxdvRhWVTfXS5Q5cfSNQN0H', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-27 07:47:39', '2024-05-27 07:47:39'),
(138, '81MjUDGJimoDaYyaJ02saVqGR6AVBsfF6ja3ojrH', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-28 04:03:23', '2024-05-28 08:37:24'),
(139, '81MjUDGJimoDaYyaJ02saVqGR6AVBsfF6ja3ojrH', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-28 04:03:24', '2024-05-28 04:03:24'),
(142, '85DioyKnIazy6jBlDiWymaW5AoWWQ7imonNRVGeP', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-28 20:40:26', '2024-05-28 20:56:39'),
(144, 'YNyaXQTA3UMafGnd5IbxOV8aDzhOwCY7cbMaxxib', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-29 07:07:56', '2024-05-29 07:08:00'),
(147, 'qkoUwDS5BokVUZoFqxFag5VOL1VbFdvaRb8tSRpW', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-30 07:17:22', '2024-05-30 07:28:57'),
(149, 'sED39MQ93X9sUDb1zIwFgBnkc1lx0oYalY2Xjs9d', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-30 13:37:46', '2024-05-30 13:37:46'),
(150, 'ZSzheIpinMXlEt78pCNawgOUKcvashhugy1LATH2', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-30 18:09:45', '2024-05-30 18:09:47'),
(151, 'EkpN3XO45W914w0cprAGcGvzoAmDnAtt6pItH929', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-31 07:45:48', '2024-05-31 08:44:53'),
(152, 'nyz4AsikcNnh9qZzCPQmB5NzbmgrpYiP6ZOdAlqx', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-01 19:21:30', '2024-06-01 19:55:33'),
(153, 'mVNCAf5ZFGiKwvdi5Yh7OQF5iWJANxqEfeiW24rY', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-01 20:06:18', '2024-06-01 20:06:18'),
(154, 'ROyzEHxNebwLrRIqHmsoD7Z09kl3GT6elhSHcsh1', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-01 20:09:51', '2024-06-01 20:09:51'),
(155, 'zLjNiQ9LELe9iK2xPkX8uVIxivTqzh2UmOUESAfA', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-01 20:10:55', '2024-06-01 20:12:04'),
(156, 'SWD3D7BelrochH2QBCZMlsydEtYAj4zYvoxMlosf', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-01 20:12:39', '2024-06-01 20:12:39'),
(158, '6z5DmunA8NNLdyluU47h9zwBbO782nBZqKnVev6z', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-01 20:18:17', '2024-06-01 22:04:11'),
(162, 'pe14hz7yJNBt82vx3zVLkoisCPQjMg5rJEBrkmn1', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-02 10:13:13', '2024-06-02 20:11:12'),
(163, '0Qhk1GHaED2TAkGlVr1OaxWcagmpq4wbtpOnJ91z', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-02 11:50:31', '2024-06-02 12:13:13'),
(166, 'NFbWKaf3G9nafiqFDcEzts6BfJB8P4NfXpA7DiZE', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-02 12:24:56', '2024-06-02 12:35:24'),
(169, 'VF2EZwu7PRJaCPF0vQZ0Ns19XgTgO40tq31vwCDl', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-02 12:38:45', '2024-06-02 12:39:02'),
(171, 'TtRtew4GeiwVoGp5eruiGTjOhCIH6JNFpacOKZ2J', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-02 18:17:58', '2024-06-02 18:36:41'),
(173, 'i8qQLCGmXdM1DPrCaZREKQyY2BVxc6U1jDa9LB9g', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-02 18:38:37', '2024-06-03 00:14:52'),
(174, 'BqbYvjJQXBKjyXHMb1zOBMxm5HiIRfclUKDuP4Jo', NULL, 3, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '2024-06-02 22:32:27', '2024-06-02 22:32:27'),
(175, 'l8q5Z7yzO3Xq9wRguNyc0YYxAszL5smAvMyuerNQ', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-03 05:19:14', '2024-06-03 05:19:14'),
(176, 'Fv6yxRMZp5BsxnH7OKear2BbtQQUZZhY3STyB3t9', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 05:20:16', '2024-06-03 05:31:00'),
(177, 'pRxzuOICqMMWWq3QkfS7rXvdw7aFYcw5TgcX3IzY', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-03 05:27:22', '2024-06-03 07:49:49'),
(179, 'o131112WrjqN8Cwmc0JJqf20FtJvVtSXlL96GF50', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 05:37:13', '2024-06-03 06:27:01'),
(180, 'wfy8AnabT1jrwV6nTC79xbRvTRTRDW4GYUFLBssx', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 06:27:41', '2024-06-03 06:27:47'),
(182, 'q8uWTyzsnYyrIz387b5GeOpZajH3y32E09OD3R5f', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 06:28:08', '2024-06-03 06:30:09'),
(184, 'FlR8gcv3CeJjaW2qtfua9Dhb5yQLDnxe72T4kvUN', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 06:30:30', '2024-06-03 06:31:29'),
(186, '29amhFE8z4PnvCkASxXXSvonpd4JT2tvuae19YkY', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 06:42:07', '2024-06-03 07:27:42'),
(188, '2cLdZWmeX6c3XofbHnOtR4dHUKj9P9KevuZArs8v', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 07:28:22', '2024-06-03 07:30:26'),
(190, 'H8JcqmpWUGAWeHY1Ln2hoNbyrxIyoTkOcQ8xGPm0', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 07:33:44', '2024-06-03 07:33:44'),
(191, 'G1ww3aFAnmMvqXXEgxuoXVO1ebGTls9kwM6c2AhY', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 07:34:00', '2024-06-03 07:34:03'),
(193, 'rHdXD4SAuxpDQvPuck5R8SHiQSpTReyo4n74P8dB', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 07:45:17', '2024-06-03 07:45:19'),
(195, 'pYodvIAQYtb80GBlcAYfHZATXtHJSfvssQJlAHVE', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 07:56:51', '2024-06-03 07:58:45'),
(197, 'ykifhuMmGyUkY2c6fjnJonEyKPwqokWKgT80j4iQ', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 08:05:14', '2024-06-03 08:05:24'),
(200, 'HUFupYlHCrVw17txK7cMmTzFdqunZc5zvPU9NkmM', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 08:10:28', '2024-06-03 08:20:02'),
(202, 'fQylhnHzI7soIcOl7F2TsrqJAP0Ys8qqHQEHSxPn', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 08:50:02', '2024-06-03 09:16:30'),
(203, 'oujlR247VgnB1Nbr2ItD1YIvD6rXcmmuvu5Ne3MF', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 19:05:52', '2024-06-03 19:13:48'),
(209, 'YBnbS1yAeiYXppLyAoCHwQjrjJWWprU389eutlkV', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-05 21:13:35', '2024-06-05 21:13:35'),
(212, 'BtXsHhERndBZD9MdISYok2fxmAmY3IE2D051AoZG', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-06 05:24:44', '2024-06-06 05:24:44'),
(215, 'EJpfG8AN1TSLlt7paKoauSCBbvHbeCHU5udcwETx', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-06 19:51:35', '2024-06-06 20:44:56'),
(218, 'inxYOrHwl8j9lA0UdU4vkkohUc89jZar7jTF2Q7x', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-07 07:29:40', '2024-06-07 08:32:51'),
(219, 'W24Fy3ufH6mVBdRbDV4RgUT309u9vx0AtPiGLspp', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-07 18:31:14', '2024-06-07 21:29:55'),
(221, 'srhUhkR4USicerIApZtSZHU65OUK5OxmzmNuMUtr', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-08 03:47:05', '2024-06-08 03:47:05'),
(224, '2bXrteFzaUD8vRoqeaCrve8YYre9jZXBjvaimAe4', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-08 19:34:37', '2024-06-08 23:42:18'),
(225, 'YOIRlL1dq2CghM2OYpHeuunQ5HDFnT9xzsd3WM8s', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-09 15:47:40', '2024-06-09 15:48:05'),
(226, 'Q9EEhe6DpHHZoCzj4X0TthumkPEPrYtXtRaVX0Qb', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-09 18:31:31', '2024-06-09 18:31:31'),
(227, 'k9OXLkibopqg98PYIBFNOObM8fLyZwNEsmN41Ofg', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-09 19:07:52', '2024-06-09 21:33:04'),
(228, '4SKCtn1rWKzVxDhQzZz55MgynHry6cCEbMn8cRBO', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-09 21:03:34', '2024-06-09 21:10:17'),
(229, 'yzoCTfR3s5xciyYAUDEwAtCKbNTXZl9XFvRyWKnN', NULL, 3, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '2024-06-09 21:29:47', '2024-06-09 21:29:47'),
(230, 'UrGuX7qjUIiHYYY8fyCNEuxpviK0UKiMx92v0ZhO', NULL, 3, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '2024-06-10 15:57:09', '2024-06-10 15:57:09'),
(231, 'DahJnMwNTIEa014AIZnTLO6CEeB1WBuLmfHfFVwg', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-10 15:57:10', '2024-06-10 18:17:13'),
(232, 'UotWQ1dyYjBKjV9yw9qo6JK9W3rptERUkmGj0a2D', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-10 18:18:16', '2024-06-10 19:25:50'),
(233, 'f0WO18sgbilcJvA9ywCYzupMcrlYTAjbzrD0EiH3', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-10 19:39:26', '2024-06-10 20:39:26'),
(234, 'QPpKO8gYlRGQhlr1yfHQm69lv9IcawjSre8QfwXv', NULL, 3, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '2024-06-11 15:37:01', '2024-06-11 18:49:24'),
(235, 'WHWMoDETNid4OZA0nzJywDQplkXqNgeMZ3f1bVen', NULL, 3, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '2024-06-12 13:59:02', '2024-06-12 15:03:33'),
(236, 'FtwapYgVV4qEAti2Co1gxer2OtsneoE8ES1Z6Li2', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-12 13:59:02', '2024-06-12 13:59:02'),
(237, 'ATaitlbB2dSibxjScSCGvTMnbvM8YjOq3DjVoVlk', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-13 16:16:08', '2024-06-13 20:26:07'),
(238, 'AOWnYMGRoHPgkAXaRzciO4gHGphlOgfvXRaJrsPG', NULL, 3, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '2024-06-13 16:18:47', '2024-06-13 19:11:34'),
(239, '1X0qOBEZeWYAr0vIVVzdBSNHFjdBQI3g5lbg5Ofr', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-14 19:27:46', '2024-06-14 21:23:41'),
(240, '6AfZ1Ogs88OL8zwZIBISytk1XOOGnF2MoHF8vYu3', NULL, 3, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', '2024-06-15 07:57:31', '2024-06-15 08:52:21'),
(242, 'lPliSve6LvdRmjC5MzEHWbHleIfRPBsO2qOrYpqY', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-15 08:53:21', '2024-06-15 08:55:33'),
(243, 'CSqh8zFsytNV1AUEglwYwEnSSVMWwMnbkDrjk0iZ', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-15 08:58:21', '2024-06-15 09:34:08'),
(244, 'fc9hGkZsOfacnceqvoyXFnx1fl7Jk52dDo39uXYQ', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-15 14:14:24', '2024-06-15 14:14:24'),
(245, 'ItCovX9jEcU6P4ed7L22g6DiTWIcgZHcZEXhRXlC', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-15 14:14:25', '2024-06-15 14:52:01'),
(247, 'qqIqR34RIQ1lMZnuV4JJNraHanR1dfvRR4oClYm1', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-15 14:54:28', '2024-06-15 15:04:05'),
(248, 'BsjvGyxAhrBIcVAwLkBJBJTj8g2TLrNINqFwMwQV', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-15 15:04:16', '2024-06-15 16:33:48'),
(250, 'B9XOZM9QmIBNMjIcNEZsnuFQV87baStCDfw7jRrt', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-15 17:30:01', '2024-06-15 20:48:53'),
(251, '7JETYfubjIv7TioJxU8JLSbzqTtOyAW2PnivFzLE', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-15 20:00:19', '2024-06-15 20:00:19'),
(252, 'gu5GJwOIgjuxxofvy2GJ7cFmtKy3BiN8woKiMj3K', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-15 20:49:08', '2024-06-15 21:33:31'),
(253, 'lRp3GsrgQghW5afF6offFYaKGQYphb5oYEmsZKcc', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-16 15:07:45', '2024-06-16 15:09:14'),
(254, '9DMGcyGF9xptA5d8oBkbx3HDlwcgaZ5am8Zt9NJh', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-16 17:31:14', '2024-06-16 19:45:19'),
(255, 'egOK4uAgvut3TaECZ66ADCy6m9rPECc9QzcvNGYa', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-16 18:05:14', '2024-06-16 18:55:08'),
(256, 'FbDsfCv1mdbNE7bdULwkpXTyXIljfu6SsmOmQACB', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-17 19:06:52', '2024-06-17 20:05:15'),
(257, 'vFR2EnoOEz9HAqUnx7P2SQnj1AKx9nrsNRs4or8y', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-17 19:15:25', '2024-06-17 19:27:15'),
(258, 'gpjZYQHoq1K5ISik7kQAPSLKgBxVzIvTkvnj3it8', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-18 15:25:31', '2024-06-18 17:27:08'),
(259, 'YFBFuDkqtWjiJjl02nAKj8nVSeW9QQOjLn2L230N', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-18 15:43:20', '2024-06-18 15:43:20'),
(260, 'mgWeamZlVzIstTP9OPaGq84vEA8uBe60RzPxUUZk', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-19 15:43:23', '2024-06-19 15:51:41'),
(261, 'FZl41Zz8ibRr9gJOZGJCDsoc914a3eRGfLCCwD1P', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-19 15:51:57', '2024-06-19 22:12:22'),
(262, 'efvgWjgzBRiWvVibCTT1khD8qGq8U9RDnoH4D1AR', NULL, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-19 15:59:22', '2024-06-19 15:59:22'),
(263, 'MN4ELXZ0R05oj8AIO6IXkPP1YF2MS9C9Zy8t9iRZ', NULL, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-19 16:01:54', '2024-06-19 16:03:15'),
(264, 'hc7cMKx4E7YF84GQjLEDMtUGGS1awJNHjkfl3MT8', NULL, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-19 16:18:52', '2024-06-19 16:18:52'),
(265, 'APqROCoMCRIIbzhIsoO93LSIqHkBrro5wILgNxFP', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-19 18:36:16', '2024-06-19 19:38:39'),
(266, 'K9pZtXrGk5YIf2gXK1rXKiyBasZN7bcYjYwzeH2u', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-20 10:17:30', '2024-06-20 22:40:42'),
(267, '5NC7wywVhkK2IpzM0PK4VK9Tx8iQDyu9n96CJmbY', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-20 10:17:30', '2024-06-20 10:17:30'),
(268, 'niyTorQsJhdc7M4rNeXWYZfOlYyjF0JVHWdU7wJ1', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-20 14:15:21', '2024-06-20 19:13:42'),
(269, 'aIzrngIUxs8HhStwS9hTRONumYYUNMPb5rUBV6fg', NULL, 1, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-06-21 05:08:13', '2024-06-21 10:39:43'),
(270, 'TJUhGTgYv0qUvIaH0UaGtcRwgxJppE4RxpYgDL5r', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-21 19:22:56', '2024-06-21 20:38:46'),
(271, 'K1jNfOeSumYsnqaDZpzdmqEcAl2Sd84jRhVNJN6U', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-22 18:01:29', '2024-06-22 21:25:41'),
(272, 'hcBGDQjyAPdmkb2Dk5FXMKxC6qMZUWi9qeRPishw', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 08:51:07', '2024-06-23 10:11:57'),
(273, 'I6yoNZTJQVGHHiwSjvklBUbrAEX29UZ6L6r7Ocdm', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 17:35:58', '2024-06-23 23:12:21'),
(274, 'mZ0FAx4lu6WLsJbj7Yc4j8naQzF5gMS1skO0MGja', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-23 21:23:54', '2024-06-23 23:12:22'),
(275, 'DXlYf6wmt20DMC9a2nDw9raTwXOqfnIpot0ykZDv', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-24 05:42:48', '2024-06-24 11:02:48'),
(276, 'oS1UAe7x2jcAdVZjJ0uKSIR3P108qhqks4HH1zUF', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-24 07:10:43', '2024-06-24 07:10:43'),
(277, 'qI1QXLorf4gRvRrjomrf4olVq8QrMUQDShOIHnDf', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-24 10:55:03', '2024-06-24 10:55:03'),
(278, 'AYel77iR6F4UUME7ATNsno19ch76vB4b8bOpUnxW', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-24 11:03:03', '2024-06-24 11:03:11'),
(279, 'O1yy5in0YjifHEnKQXjhzAjhWZ9HkrtPhwSS1Zhs', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-24 11:03:31', '2024-06-24 11:03:37'),
(280, 'kdxrITITWZJTRZXDrJJ0A7DddrxmKFNJZ4P6zmF6', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-24 11:03:46', '2024-06-24 11:03:57'),
(281, 'r2nffeNRlkNMYcGK6sGqtRNeDWJTcTD11Q2ITaL6', NULL, 3, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-06-24 12:49:42', '2024-06-24 15:22:12'),
(282, 'p7uA3WqPHm44VyLTpCmNd0gNU9V4OekXtRtXWO33', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-24 14:33:15', '2024-06-24 14:33:15'),
(283, 'J9fwccMgATWNOz7BVe5U6niFpQ9FJNWiFXVlBb9c', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-24 18:42:18', '2024-06-24 20:06:07'),
(284, '5c10SqsMBIvYMkIEotBn0JZQmLIMBVLytD18ZhXf', NULL, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-24 20:08:17', '2024-06-24 20:08:17'),
(285, 'Jv2zqrkyfvH4ZmvE0za1HPQBfULHsZZbWBCxwwsW', NULL, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-24 20:08:49', '2024-06-24 20:08:49'),
(286, 'fbm8x814xPu51iU2rsZBFoEj5qsIxY0lnfoOaWBm', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-24 20:09:00', '2024-06-24 20:09:00'),
(287, 'caKxxnkyM0dSq9zlfEmZIJlq0AdStVzAmkCfpZAP', NULL, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-24 20:09:09', '2024-06-24 20:09:09'),
(288, 'rrBvCsb1ADQa3npOhFFllyMVlsHAQF5KXJpQrAzE', NULL, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-24 20:09:22', '2024-06-24 20:09:22'),
(289, '4FT7s5YyLcJ9hgmMDvvJBEdgQ4SHio85q3g0tqVW', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-24 20:14:00', '2024-06-24 21:18:36'),
(290, 'nmxyS0U6BoSPmXAgPAt4fMNIToCVxmht8MAfdZNT', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-25 18:42:44', '2024-06-25 19:07:30'),
(291, '9sEpXCSxPlpCppMoBcEXPNjMbxXBoeS3JfSkRKOt', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-26 08:41:27', '2024-06-26 09:24:24'),
(292, '5X0rwVOxZYi5Va4AobIo4aNPfm8PMz1n6t9o7Jjg', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-26 08:41:27', '2024-06-26 08:41:27'),
(293, 'HG03w5QepOeOGnA1qZ0vZuAOsL4cAMPSNMCbCwvH', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-26 08:41:27', '2024-06-26 08:41:27'),
(294, 'fPX2wyLVd1xfIM7hTDrfhTcf8mG8r4GaEeLBmw5S', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-27 05:17:20', '2024-06-27 05:17:20'),
(295, 'ZBuZAY5IbknkLjgBVaDQBoNeUbGrY5sE1IF0b1oN', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-28 04:59:01', '2024-06-28 09:07:14'),
(296, 'tiXN3tbTITg3Lsyuj9sgmWRGA8MBfsqRAWtFFGAT', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-06-28 09:08:42', '2024-06-28 09:08:42'),
(297, 'MMGC984I9WACtUh3xsZCfibkY1qCn46OyxdZGTfp', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', '2024-07-22 06:29:44', '2024-07-22 06:33:21'),
(298, 'K51wNitXp6zH155sFBaJJxXe8skbBnBHKVNKKDsA', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', '2024-07-22 06:47:45', '2024-07-22 06:47:56'),
(299, 'euJxJOa1Kp3eEuCTUBN0qxLioAMGa2H7dyf5hrIC', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', '2024-07-22 06:51:19', '2024-07-22 08:36:49'),
(300, 'G7ETyKLfvPj9D2cvVxW9bpoU140R24KdeBgdoFbW', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', '2024-07-22 19:48:47', '2024-07-22 20:32:53'),
(301, 'ck5Fzw6DEsXPrQx8v40pZ8mm2kO2dmaeWOy9ywwO', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', '2024-07-23 07:26:48', '2024-07-23 08:44:36'),
(302, '3sNjExFK89elY7Gk0Iso3nyVQuBhYBB91YkqHQSp', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', '2024-07-23 20:41:29', '2024-07-23 22:09:49'),
(303, 'Z967aLcZDdt5dkHgwbTPza8Mmgioa7muKqh4vGHZ', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', '2024-07-24 08:55:11', '2024-07-24 09:20:44'),
(304, 'iHd8Ti7BiHGCH0Hc034ZMU7D9I9xUs5MSbGfwvXJ', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', '2024-07-24 19:34:36', '2024-07-24 20:26:49'),
(305, 'dKmXaSQoGCh7DGWlv35G6g1gYS7JfWfgBWeOGYkS', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', '2024-07-25 08:23:17', '2024-07-25 09:19:43'),
(306, 'gV1cVpun08FOsVBV9rqb95xZ5FbH9puSmTRizRDi', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', '2024-07-25 19:29:09', '2024-07-25 20:24:49'),
(307, 'dxLHW26GvJyLVPnMZbe6uT0e1NG6yuQ7sNwG5Ja2', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', '2024-07-25 22:35:08', '2024-07-25 22:35:08'),
(308, 'JWiEtEHMIbT4EkoFaD3rRMvM7iDDwuI2xzDXUKpT', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', '2024-07-25 22:35:08', '2024-07-25 22:35:08'),
(309, 'EtIJQlQguTYtB4s7m4Ex3ldJXetpcI2wlhsYNbxn', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', '2024-07-25 22:35:08', '2024-07-25 22:35:08'),
(310, 'uDaS7dfBoD1vF3VWam87IDBlAbUvOcSabBPyS0U2', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', '2024-07-25 22:35:08', '2024-07-25 22:35:08'),
(311, 'jtvgpDZpO6tjj2R6pSFfoukoCQjKpvFCtkcDFhOz', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', '2024-07-25 22:35:08', '2024-07-26 00:40:53'),
(312, 'dFFGqCTAqBbkiloQhgLnc2CXFSaFtTq9Db2g7NnA', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-07-26 08:32:20', '2024-07-26 08:35:09'),
(313, 'MnQWx3JuIBzaBw4QV9LPVjNnza1r0N0xP3clMNlT', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-07-26 08:37:43', '2024-07-26 08:37:43'),
(314, 'LmrmqrtQ2HC18AjrFO8ybHNUlecZC02xVMCIwpbb', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-07-26 08:38:10', '2024-07-26 08:38:10'),
(315, 'VPCqkH3kIHiY61UehA2UvcgbelhuPZ8MW4C3pAGI', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 14:42:47', '2024-07-26 15:12:16'),
(316, '7MkjpE4Cl0AKBoU8R7hlRjR64D1BLzGq0MlzAHg4', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-26 14:53:46', '2024-07-26 17:14:44'),
(317, '0JnMSETDQNq3iI0kPaJNJXUNNqH0tMjnOFln45tU', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 15:12:50', '2024-07-26 16:08:22'),
(318, 'djhUuQVeeKa7PLydGRQ1uZLYdmMYbBkHtGxVC5o9', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-26 16:09:31', '2024-07-26 17:13:55'),
(319, 'VilMArsu7KqjbVqbLkcaSZ5VO244Kv4NN1JvTwYL', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-27 00:17:58', '2024-07-27 00:18:00'),
(320, 'bqYUjJOj9c1jaT1lRduRLYaqdcaySvV5aG3PtFD7', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-27 18:16:31', '2024-07-27 18:35:07'),
(321, 'LzpNNb1IUc5r7j6tBeDIi2ddWMUGxouRbW6iN7jE', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-27 18:17:17', '2024-07-27 18:17:21'),
(322, 'qefDzA4uZ8B359bihhumc1AGMWQPlyG3IBiQ78wp', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-27 18:18:13', '2024-07-28 07:21:19'),
(323, 'NzxYCPY6j1UZGJoKWSTSB5G9A6NMOdRtN8TPrEdb', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-27 18:48:36', '2024-07-28 00:39:31'),
(324, 'tD4LSHd7SkJtgKyy7hcefoB73VslwEzzROpezvgr', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 00:40:20', '2024-07-28 00:41:04'),
(325, 'qOH0kwtTk7uAjMQZ9FSmpF6TGPRWAsNvH0udRMjD', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 00:41:21', '2024-07-28 00:41:21'),
(326, '43XbZHW4yfgUL62z7Gd1GKXrkP0rW4l1OIS0wW7n', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 00:49:00', '2024-07-28 00:49:25'),
(327, 'CRrEqyDLd0apWv85DWf0U3At2hQboraZvk7gZX4v', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 01:03:08', '2024-07-28 01:03:08'),
(328, 'tZRp5sAwJ0JSIDTYZjrCnHT36KEzhp89Y4JspLa7', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 01:08:08', '2024-07-28 01:20:19'),
(329, 'YnvXRxRlkNLsiXUbMgNxMH3fUKmrg009vTcvDYE5', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 01:20:46', '2024-07-28 02:18:43'),
(330, 'gnlOXM1HRy4XEuDbevPY39WQXLf1U6zOueq1Guwk', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 02:21:46', '2024-07-28 02:21:46'),
(331, 'g32RoG0HJMYveAB8W9n0sRzfPp4GXH3E9MCBUudM', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 02:24:19', '2024-07-28 02:24:51'),
(332, 'jkecpFVWtXm63ror2ljRJOjEN1Uvsp3phUK0T8xs', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 02:29:03', '2024-07-28 02:58:51'),
(333, 'zqh2NIBjvqFAmF2Lo0VwWaoNcP5eoqOBeeKuRNi0', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 02:59:12', '2024-07-28 03:13:46'),
(334, 'wV3qcVjY8ds1hlTUkVyRsr06PKervivWOmmxjssZ', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 03:18:13', '2024-07-28 04:38:02'),
(335, 'TxZbCs9c517ui7DKeTufW8EBYwjD3Or0RVRDdwYB', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 05:14:21', '2024-07-28 07:21:30'),
(336, 'CklYHMUfX6D4dGqObz61cxqqEMDRZTdA6WICgFSi', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-28 15:17:29', '2024-07-28 18:29:11'),
(337, '4WPYTYpWA2ALxQ2aIV6PbavaNOadpFHoxtJy7znn', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 15:17:31', '2024-07-28 16:02:53'),
(338, 'SYYlvevLwPWNmITHGOp4jcFF5D8EL9TRc1yFkeO4', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 16:32:07', '2024-07-28 16:32:07'),
(339, '9X13ld6QRNnprrhCo3eV5kw4F7nRDtJ3mWzDqJy4', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 16:33:14', '2024-07-28 16:33:55');
INSERT INTO `active_sessions` (`id`, `session_id`, `token`, `user_id`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(340, 'pa7yKHSsZyMvkZb3AhY2aHVztqLgUJT1Yde6ZWu4', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 16:36:10', '2024-07-28 16:39:14'),
(341, 'tERUKwFkSEXUy3KKgUxmLQCvtgQLsOFrmUYnOmX7', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 16:52:09', '2024-07-28 16:52:09'),
(342, 'JgYYTYc5LfUuNLhAhMfdxP9SYcreJ6F5qTIlaeW3', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 17:06:36', '2024-07-28 17:10:34'),
(343, 'KBXf0EqnvC5b1daW8Id4iRKDxKfweRYe6f8BM52j', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 18:16:03', '2024-07-28 18:16:03'),
(344, 'nx0iyIuOvOQb6MRrHoU2PcOFmQm7YjBqODtqE6od', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 18:34:35', '2024-07-28 18:36:38'),
(345, '1FFakik8Qoqar3hA5rAc5Be89H08ANKX623Szv9B', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 18:37:43', '2024-07-28 18:38:22'),
(346, 'i9My9iUG5EPeGZSxQhqCQZnvnJQz77vRvFs4iMnR', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 18:38:59', '2024-07-28 18:39:19'),
(347, 'ZnZe8SOefjT380Fkgr5Xkz1w2vQKr3Dfoj6OuVjO', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-28 18:39:35', '2024-07-28 18:39:35'),
(348, 'FBAK5aJ7KRwa05lyeDLIe5CfI8uVxugFYkJr4Ega', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-30 12:02:04', '2024-07-30 12:03:56'),
(349, 'S99pO2kEqTjxKU6OXx91Aum08kD1mQ4LxWeJn5KN', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-07-30 12:08:37', '2024-07-30 12:08:37'),
(350, 'gJYsts7cGwVVgLSlyPyE0RmEdVIGkHiMk8Ip920S', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-30 12:21:29', '2024-07-30 12:21:49'),
(351, 'jqeNwG3HKvOYG7ksa4HYZ1c6Ihr5jGoTJ1g9kE0M', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-30 15:25:10', '2024-07-30 15:43:10'),
(352, 'NGAUuEogwlaY8PUJPzCvxKh6TJsly6kAmy3GnKiD', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-07-31 17:51:23', '2024-07-31 20:07:59'),
(353, 'BUgbINtbBLfEG4goAnSeNmB7p8I0a7FiLB3UnZLs', NULL, 2, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-07-31 18:20:42', '2024-07-31 18:29:43'),
(354, 'T9yVRdWDKopXq4jhJkyjIZgFpknSPn9LK5KRnY9V', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-01 12:59:34', '2024-08-01 13:14:09'),
(355, 'eutWQo78J4WYbtmLRcbMNXd7iC6HiMw5xJ3ECf9a', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-01 16:58:13', '2024-08-01 16:58:13'),
(356, 'GJBvd1dGZJZcceNCBSyhOXk4JfJZdq5tDr7kmWfl', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-01 17:26:51', '2024-08-01 17:31:36'),
(357, '6ZQ8HkEsG7TmNYGlIw4DnFlFLhFIRcLe5S5RM192', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-02 12:20:51', '2024-08-02 12:45:00'),
(358, 'E1v0bl31W16FXNrtXnOA5ZkhJifuVFHtKOUd8Kdt', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-02 12:45:23', '2024-08-02 12:45:23'),
(359, 'KneBilbR4tjt2fOjLNBWLa72ru3qhEROkDy2V3PI', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-02 12:47:09', '2024-08-02 13:08:30'),
(360, '3wbqdLv5IkwzoQCTLM0ENFMCvGv9vRdQfzK7bFk9', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-02 12:47:24', '2024-08-02 14:26:59'),
(361, 'KKdyvW6oHHkdBxkAUNPt3Y8fdwnEp8bylHK0JIu8', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-02 13:23:41', '2024-08-02 13:33:55'),
(362, 'AeP83JeMu0u2xhZ1bnn2PbI8n5e6mDLI9nutFZ95', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-02 13:34:15', '2024-08-02 13:43:39'),
(363, 'SSIq5pZkgpCAqbFQqxITQcCt0CmBN7L9SztMLlyX', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-02 14:31:29', '2024-08-02 14:31:29'),
(364, 'tNXBsrLdMYYhQreICJKo5IZfiSvIjNSdaXfYZFm8', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-02 14:32:27', '2024-08-02 14:33:12'),
(365, 'DKv6dvxwtxGJsZWAlIYgwWHbBIY8e2Qbm20rZ2mJ', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-02 15:20:11', '2024-08-02 15:39:14'),
(366, 'W9pfXN1uI5jg5PA5jqRmy7W5zMQm0elWVG9Bumn6', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-02 16:47:55', '2024-08-02 16:47:55'),
(367, 'iBzEEBxqQn7wvr3vDWJwMt6OYsZrUbk1yuvz7F9S', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-02 17:04:22', '2024-08-02 17:33:54'),
(368, 'ZYIDip1enojJNGI6o5KUlJmxgPmAWQLmc4hZAQgA', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-02 17:28:23', '2024-08-02 17:28:23'),
(369, 'JAwbiGXHULbayReTa00kpLruZr21TjEvvCjXcUZG', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-03 07:26:06', '2024-08-03 22:24:22'),
(370, 'g5PcYMl007TyMU55rsbVDzwoHHAwoNzbQFGWb9z8', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 07:50:21', '2024-08-03 10:02:40'),
(371, 'j8arhoS4oUUOvFnqMUL0EEKS3cmOpzcEb4zyC6br', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 10:12:21', '2024-08-03 10:34:26'),
(372, 'TtathbIWcaetX7wp3WhyVFeHKO92qKDAEOobn5tF', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 10:36:36', '2024-08-03 10:36:36'),
(373, 'zHHBxmjcjKWte4nSguKqLeqlBvZIa1DmLsdvj2qW', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 10:38:30', '2024-08-03 10:40:25'),
(374, 'a1wrjumvyEWjdhQzu2SbMqnW3Zj2PgCxsaPxbFO6', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 10:41:28', '2024-08-03 10:41:28'),
(375, 'nde9WkpnYXMWypglVfBnt6x8asUT7TGA5aT8qrHm', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 10:46:09', '2024-08-03 13:07:50'),
(376, 'pJ1dDCu8hRsyrpbFy8vnAxw0TR3uAuwI1ZNR8TkX', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 13:08:27', '2024-08-03 13:50:07'),
(377, 'iBUxsNIY8SEQuWZFDsXPRWcjr0ook2qpUMhY8rOI', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 13:50:38', '2024-08-03 14:14:37'),
(378, '68vrnhwriki393hemXPWUXboobb6x6nsAU3RuzrT', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 14:14:55', '2024-08-03 14:19:52'),
(379, 'DSs8cu6CaAUmLDPfCK8mePJjdrCkqKaC51Al4VkI', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 14:21:28', '2024-08-03 14:34:06'),
(380, 'DZ9vA1ZLw7AjoDFSLHyIkPstVE9dGUxeBHHsxL5G', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 14:40:48', '2024-08-03 15:00:21'),
(381, 'UcbWZMbVpkn8Au5sWpW0h4SEasqnixjrhDS1LHFm', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 15:02:16', '2024-08-03 15:05:02'),
(382, 'k7uVHu2Bb9jxI00ieijTJnmulxxotv9Op7B11PPp', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 15:05:32', '2024-08-03 15:12:59'),
(383, 'BPiHHFJt59wYiOLI1dN023RbG9AgZo4szqcJefXA', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 15:13:23', '2024-08-03 15:14:44'),
(384, 'cTX1tYgvbFKtk107gbNoISCmOZK5xV7hpLuCx0WX', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 15:16:48', '2024-08-03 19:15:01'),
(385, '5DSX5r4DtnuU2n0vcyMVzztitcvUElEyTxjvfOQV', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 20:04:42', '2024-08-03 20:04:42'),
(386, 'KIpIZ6vFD7XqdFROVStg7gXPwayFik4lgXA9xyez', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 20:05:41', '2024-08-03 20:05:41'),
(387, 'zq5jA6P3XDvrFPYyKdqeKWyZS0zIZvM2zu3KrE9O', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 20:06:41', '2024-08-03 20:06:41'),
(388, 'WWAgB2QcOvsipW5opACFMVXq85GCvgEZRKbjZwKi', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 20:07:27', '2024-08-03 20:07:27'),
(389, 'alp6YiQ3DsWXk4sBBGauwhN4BTihTp5tQsChZ0Z9', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 20:09:23', '2024-08-03 20:09:23'),
(390, 'aRu9cgyKuLOEGj3fp1Z7I7d7jHhwfE19FgUVwYU5', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-03 20:10:39', '2024-08-03 22:10:15'),
(391, '63kOs1FFhIEH3VeuDGYhp5cZivsCo03Qft3WUR6d', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-04 06:17:26', '2024-08-04 08:38:04'),
(392, 'BXbThvRd2feyNkB6DuoYDWQHeMLPh9kCood5m5L0', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-04 06:18:44', '2024-08-04 06:18:44'),
(393, 'owPPTXbnbiq3BTp6NRPH7xopGCDz9ueFdj2FtewH', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-04 14:18:11', '2024-08-04 15:09:07'),
(394, 'oTXnzGUmTnzWL0fvdBAJDihYtWZ4iCKNAlzwgvkI', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-04 14:22:49', '2024-08-04 22:32:36'),
(395, 'oTXnzGUmTnzWL0fvdBAJDihYtWZ4iCKNAlzwgvkI', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-04 14:22:49', '2024-08-04 14:22:49'),
(396, '3g3Ay1ctzMXorcs10W1b8FT8u9OsoHKeycMALsd4', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-04 15:23:07', '2024-08-04 15:40:27'),
(397, 'ZeUOLYjqNoA13HBM43lbOlVlSTaDX6e2WVVgoWMG', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-04 15:41:09', '2024-08-04 15:46:47'),
(398, 'RlDG5fnh6AwwRf8nDVhCU56PPS0D4xRPmUpot4Xp', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-04 15:50:31', '2024-08-04 17:42:43'),
(399, 'Wlpd6esAi6i6cdOfFETmMLTrCn77kH565KV1kpO7', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-04 17:44:08', '2024-08-04 19:38:26'),
(400, 'QBLu2u6ZwegAeFxy798jSrRtgxglUybFvcaSzR7h', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-04 20:46:46', '2024-08-04 21:26:54'),
(401, 'KR9cdU7jFRYnMbfq4Uv8auEXihJyIL5gmh9lzKvW', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-04 21:28:53', '2024-08-04 22:33:41'),
(402, 'Zk8bgf0HQXUiZzziSwf4vFhK7ZdxEVpYsteCGIY5', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-05 10:48:30', '2024-08-05 11:03:28'),
(403, 'T78QF4D8AVWzUZdWdGeMPlSrcLYzLss8Nwasc3bv', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-05 10:51:42', '2024-08-05 11:45:15'),
(404, '4JHKO3B7GK3CYBGf0PgxTM1YttVBs6l1WhnSNJSu', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-05 11:04:28', '2024-08-05 11:40:52'),
(405, 'dUPuKONfjYyPFaMhRPnXkDH5RnYY4I4QNvfwa4yY', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-05 11:42:29', '2024-08-05 11:42:38'),
(406, 'uClFKeSukwylp1Ycgicjtjl6zw12HVhnRue1YF0X', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-05 11:43:02', '2024-08-05 11:46:16'),
(407, 'RjyB2zW8NGFigvfJJ568PRvgZViqV4gKTRWxLWfm', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-05 11:51:29', '2024-08-05 11:51:29'),
(408, '4VTpQcRjbstHNMFY7dEUADpOugQ5qCbYYQyLQiCK', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-05 11:51:40', '2024-08-05 11:51:40'),
(409, 'lZLrmWVrgA8WqdpXZcsQNkr5oOLVGKDjooaf0TlS', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-05 16:34:07', '2024-08-05 19:05:39'),
(410, 'LDkqfQ4ur1PY2ys1rU7vECT99OoSPqbOm6Ce5Wn7', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-05 18:50:57', '2024-08-05 20:08:08'),
(411, 'T78QE6CPV3gzVTrP5HWZoDA6hTbs9JZD8GKQ6Gjj', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-06 10:36:33', '2024-08-06 10:36:33'),
(412, 'GmrIJaFkdo2AS3Iw9gLA5HD6QhBp5fHjFTndxcJv', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-06 10:36:34', '2024-08-06 10:36:34'),
(413, 'FuDMfkVn8j7R2uS8ClOrir5080JwdWIYyYUJAnzu', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-06 10:36:35', '2024-08-06 10:39:27'),
(414, 'ZaUi4jqjINDrZE7kz6pBDiRLgnMlLeHxMTdo467E', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-06 10:40:21', '2024-08-06 10:40:21'),
(415, 'EuHi87s7NxSTXas9rbgC2gTMWsHE6xY3Z0F24tWr', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-06 10:41:00', '2024-08-06 10:41:14'),
(416, 'tKLb43flGnvi9lJemwmRe8IQayvsa5Fa9yFpUAQU', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-06 10:42:14', '2024-08-06 10:46:17'),
(417, 'mSi3qIg4Cdm2Xl0vzGiL323SgnAeukC1IwVjRsbr', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-06 10:48:41', '2024-08-06 11:58:30'),
(418, 'iEGzzI3D3h2a1ic0GVrb8TJYR6xjItiBs0dJULcj', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-06 10:48:53', '2024-08-06 10:48:53'),
(419, 'Fj577RGnBodGhHrQhA4zAMyyZfMjkRsNt3w5lgY0', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-06 10:53:30', '2024-08-06 10:53:30'),
(420, 'XCbQg6KXYtlfHNXhH5ozKkmrZig57gYykgaxmnv7', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-06 11:48:23', '2024-08-06 11:48:23'),
(421, '9Z2LBmJ168U3gX26lcyWhD2VnfJhb8pnhCvrnRI6', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-06 11:49:15', '2024-08-06 11:49:15'),
(422, 'C4eQePyiVkVUxjlQEMk2L1zuizaGfFj0gSI25lVg', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-06 11:50:24', '2024-08-06 11:50:24'),
(423, '19rlgxrslQuG6CxcbXlZXS88IW9Q5DBAsRU6K6J9', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-06 15:03:52', '2024-08-06 15:03:52'),
(424, 'hckjJPeFQVYNMlzEhMyyGS5hlcTQ16Z8ARtwa7Na', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-06 15:14:15', '2024-08-06 15:20:41'),
(425, 'NjZLinzywIlhA4X1VO3EAQKtjdObiXbJk70TnJhX', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-06 15:22:01', '2024-08-06 15:32:02'),
(426, 'ZKIeeaLl0pE8y3sBipc9744dJGnqPIhBfqCYrkFc', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-06 15:22:38', '2024-08-06 17:06:52'),
(427, 'bVLUmx5InwDkj9G9HO9fmEymrhgClOUsFNP51DeS', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-06 15:32:34', '2024-08-06 15:36:03'),
(428, 'TSfquMsAftUR6nlflyhAuhmGMmtGXczls38Gx6MF', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-06 15:37:41', '2024-08-06 15:38:38'),
(429, 'fCCHKXFB125KVklbAiyYnP7ZghLLiahB2e27Ffxj', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-06 15:47:04', '2024-08-06 15:49:06'),
(430, 'wRefzO8FcGw6U86QSx7SwfHfp9A8KCL748oyxe6f', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-06 15:50:13', '2024-08-06 16:52:56'),
(431, 'RtJp0ZE6cOKwmPu0hHhZFlGoaPyUi3T4f8TvllqA', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-06 16:01:15', '2024-08-06 16:01:15'),
(432, 'BITNoNmIhkAalotsNuv6ZAdMOWBC8ldLtwl6WNTG', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-06 17:22:37', '2024-08-06 17:22:37'),
(433, 'ZOWMcc93pH9pISzDgAEXjtPiF0Y95tfaQv9wsYkE', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-07 09:15:23', '2024-08-07 09:26:55'),
(434, 'UC9uD9zu76SPmsg73UxVvDFq8MKHIxQuayfQjk5b', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-07 09:28:31', '2024-08-07 09:40:05'),
(435, '9JJb2u7UWnDEWHJ5V3hNDVZ7RCIkh7X1IDAlkqIt', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-07 18:28:08', '2024-08-07 18:28:08'),
(436, 'g2719uY0xcs1WxnYLg2fED0ISRpEt0QtaSOLAsOa', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-07 19:28:46', '2024-08-07 20:29:26'),
(437, '4uy8eF9tZDdxquetSCfmkABmMpn7mhoKgCYGhHpd', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-07 19:28:51', '2024-08-07 20:29:21'),
(438, 'OezdQAQUR3QU7JwyHd78ngxS2pfzQOoAB7tdReGB', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-08 13:12:44', '2024-08-08 17:00:59'),
(439, 'ycKu92cjCUpGdkYGjrCTP2ERW42jX5veHf0YgFAw', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-08 14:37:33', '2024-08-08 19:02:11'),
(440, 'lkQcAcset0l8Xh8flv6QJHcAf1stfJo42XlLFt7f', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-08 17:01:32', '2024-08-08 18:42:54'),
(441, 'N5ILilsRwrImdMZcZ37Ojygo22YUa8TalLEQD8t0', NULL, 2, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-08-08 18:43:58', '2024-08-08 19:13:01'),
(442, 'tlyEf4jgqmPzrRErYC0LNHBbC6jLeCnADEPkCQso', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-09 11:33:58', '2024-08-09 14:00:29'),
(443, 'gm64M2GVCgfJZbjJrdNK0So8u6A4peoBpaYGXR46', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '2024-08-09 11:51:41', '2024-08-09 16:34:02'),
(444, '7SH2M0jiEy3UstLtqA8gasnz4ITBE6zXUraGVd4L', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-09 16:36:49', '2024-08-09 17:06:46'),
(445, 'O2T6xoiX7oOvz3K0I57wz8tAK9lkSx1anE6Qd7tC', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-11 18:34:39', '2024-08-11 20:11:17'),
(446, 'SZF7ostaOuYYsWgJJPcgSCuYkG6n5NP970yGQfxV', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-11 18:35:30', '2024-08-11 20:41:00'),
(447, '9jmqzTl54jGPFmKULbupOykgvQMbUttbCtXmUNys', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-12 06:08:18', '2024-08-12 07:24:17'),
(448, 'YalIJEZb0HSYpgcccF04ZXm42TLoXRc7g2X2HRMY', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-12 07:17:52', '2024-08-12 07:17:52'),
(449, '3vTM7YASfivp1HVEF4JgEbUIfCtqzLnfWFQKCYcn', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-12 07:17:52', '2024-08-12 08:22:44'),
(450, 'yQXbFWevLIwanFZ1019XfmaMnGSnzGwrB6EqqI6v', NULL, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-12 07:25:04', '2024-08-12 07:25:04'),
(451, '7E2sLM15DubBgOM6g0eubSQZMWllT8LThL66qPiF', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-12 07:25:39', '2024-08-12 07:34:50'),
(452, '6Mbf6XVvmQoOsDlDb4UVPZtQRUIPex7YKGnJsISO', NULL, 2, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-08-12 07:36:04', '2024-08-12 08:05:38'),
(453, 'DDIXqR5fdZ9w0LCZvcKCIrVbJDfW5zEcmQxFt27S', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-12 08:06:07', '2024-08-12 08:06:07'),
(454, 'eNhdHRDkxNiqAQiVkmbznUUUc1R0XqM05GEQLQhH', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-12 14:17:23', '2024-08-12 14:22:19'),
(455, 'Z9hnbCGDlv0XTf44ZgMnFce1gleDQiebKLXIvIg0', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-12 14:18:30', '2024-08-12 21:02:05'),
(456, 'K92UBkmUCsQc1dys0yV7ynAIA8BkUdSi2TCr0EX4', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-12 14:22:32', '2024-08-12 16:54:30'),
(457, 'CCt8bpi0s0trJ5DdupY97x7daBWEflWLoqJalmyC', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-12 17:49:59', '2024-08-12 17:50:08'),
(458, 'xcf1bEXITBrLZb4g1BaM32OUm0oQ3BJlyCWFPF0h', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-12 18:21:33', '2024-08-12 22:40:21'),
(459, '0hHhoGCdxjrRWN0szDQH430zdg20p3MkDk1hZFkK', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-13 04:18:34', '2024-08-13 04:45:30'),
(460, 'bwFLFf0XEkG3VZQgIg614mI1cYM61ByJPrSxB5vf', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-13 04:42:52', '2024-08-13 04:46:57'),
(461, 'ZbT9SKXzeBp9Oo5BTqPmwz09CvNbBiZxDJQxOYhQ', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-13 04:46:39', '2024-08-13 04:46:39'),
(462, '2zMVEkNibktKuqUQMdUnAhGRfgaljQuVgTY1nX2T', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-13 08:37:40', '2024-08-13 08:39:47'),
(463, 'G3ooiGmo84eQKmkRZvGmXWlTdoo5KVg95LdcUh69', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-13 08:39:39', '2024-08-13 08:39:39'),
(464, 'iI561hXaLlvtWp6ftJkgQbu5O1AwTiaEsGTWtoWL', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-13 14:55:45', '2024-08-13 22:25:40'),
(465, 'vCGtLjHIT5aDBbWa6mS7qDw7SyP04s9UQuek3r6F', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-13 14:56:54', '2024-08-13 23:17:26'),
(466, 'c2VN0dLe82FkohStTIvLC2Uc8NmvRPM1Z91eLF4x', NULL, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-13 17:45:08', '2024-08-13 17:45:08'),
(467, 'KQ4rh9gr71c5bRYPt7S0QhaaxEvEqpG7LHpTNo8M', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-14 06:17:22', '2024-08-14 08:48:22'),
(468, 'Ta0jvvpBV6xBh1VNYeCYWJXBJZ7r4AudS3BMeHjs', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-14 06:21:00', '2024-08-14 09:05:11'),
(469, 'SQssTRzKs5yxJB8PuvDVTDBH1XBuRKMJ5uUWjUue', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-14 11:24:57', '2024-08-14 20:48:22'),
(470, '9UXLB5ta7cnqkrJFB55ssrsMai46TYEfuzeQ3awX', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-14 11:25:13', '2024-08-14 19:01:35'),
(471, 'HpRyk9b8m9sAP503wI8DIeimSV1zTtBW3CvVbf7p', NULL, 2, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-08-15 04:21:50', '2024-08-15 07:49:01'),
(472, '7TeAulB2T8JhLttG9vx1IFfOwqpTNw5rcOI3qEDO', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-15 04:35:05', '2024-08-15 09:07:52'),
(473, 'QiQvq0gGGouG9GAozNhA53U6gyP0IRVgZekXbF49', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-15 07:04:57', '2024-08-15 07:04:57'),
(474, 'O2eVoDKqqdQyco2sRRye349NWPrty1zCC4XqUNfq', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-15 16:12:27', '2024-08-15 16:12:27'),
(475, 'RlV0ocsBOMBAgHTgBdRNgrXEdYuC3CtbdBt11JzG', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-15 16:12:28', '2024-08-15 23:10:06'),
(476, 'mY7BTexsh5ESFVh60Hd3rmqHbo2oaGF1C2gVNWJ0', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-15 16:12:36', '2024-08-15 23:08:22'),
(477, 'w1jt7cBiyBfZj3csVU1dqWf69v4bYm5sYGSPUlpx', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-15 21:42:52', '2024-08-15 21:42:52'),
(478, 'RF3kPp0UxH16QPHOtZPPkrXN6lzwXoD5i5HSF8oS', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-16 04:12:30', '2024-08-16 05:55:47'),
(479, 'o9cQeVCvl2Ktj1QvrDMurvXC9c5S1ZzfSC7ZWCkP', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-16 04:12:55', '2024-08-16 05:55:47'),
(480, '4rbjuhiwPXLgkhQpKwY7zwtpnfCmAG3xxKVXCl0e', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-16 06:03:33', '2024-08-16 08:13:13'),
(481, 'YBTLWsgmwDxbQYlEnrBwQPsB66lJjaHLLcrFMHUi', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-16 06:06:45', '2024-08-16 06:06:45'),
(482, 'ZwBDKrG7oi51t2MRNwaV6SX8ZTKO5JkzbML41EgR', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 OPR/112.0.0.0', '2024-08-16 06:06:46', '2024-08-16 08:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `release_date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `spotify_popularity` tinyint(4) DEFAULT NULL,
  `owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fully_scraped` tinyint(1) NOT NULL DEFAULT 0,
  `temp_id` varchar(8) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `spotify_id` char(22) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text DEFAULT NULL,
  `plays` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `downloads` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `name`, `release_date`, `image`, `spotify_popularity`, `owner_id`, `fully_scraped`, `temp_id`, `views`, `spotify_id`, `created_at`, `updated_at`, `description`, `plays`, `downloads`) VALUES
(43, 'Album Pohádek', '2024-07-28 00:00:00', 'storage/album_images/e3651c80-75b5-4389-a8a0-a4396220436f.jpg', NULL, 1, 0, NULL, 20, NULL, '2024-07-28 01:38:43', '2024-08-16 08:10:03', 'Album Pohádek', 197, 10);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `spotify_followers` int(10) UNSIGNED DEFAULT NULL,
  `spotify_popularity` tinyint(3) UNSIGNED DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `fully_scraped` tinyint(1) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `spotify_id` char(22) DEFAULT NULL,
  `plays` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `downloads` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `spotify_followers`, `spotify_popularity`, `image_small`, `fully_scraped`, `updated_at`, `created_at`, `views`, `spotify_id`, `plays`, `verified`, `downloads`) VALUES
(3, 'jity', NULL, NULL, 'storage/avatars/bdd15e85-c594-47a9-8c3f-080d2c073d0c.jpg', 1, '2024-08-16 08:10:03', '2024-07-26 16:23:02', 33, NULL, 229, 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `artist_album`
--

CREATE TABLE `artist_album` (
  `id` int(10) UNSIGNED NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL,
  `primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artist_album`
--

INSERT INTO `artist_album` (`id`, `artist_id`, `album_id`, `primary`) VALUES
(49, 3, 43, 1);

-- --------------------------------------------------------

--
-- Table structure for table `artist_bios`
--

CREATE TABLE `artist_bios` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` longtext DEFAULT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `artist_track`
--

CREATE TABLE `artist_track` (
  `id` int(10) UNSIGNED NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `track_id` int(10) UNSIGNED NOT NULL,
  `primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artist_track`
--

INSERT INTO `artist_track` (`id`, `artist_id`, `track_id`, `primary`) VALUES
(735, 3, 538, 1),
(737, 3, 539, 1),
(738, 3, 540, 1),
(745, 3, 537, 1),
(749, 3, 541, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backstage_requests`
--

CREATE TABLE `backstage_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'become-artist',
  `artist_name` varchar(255) DEFAULT NULL,
  `artist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `data` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int(10) UNSIGNED NOT NULL,
  `bannable_type` varchar(255) NOT NULL,
  `bannable_id` bigint(20) UNSIGNED NOT NULL,
  `created_by_type` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billing_plans`
--

CREATE TABLE `billing_plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` decimal(13,2) DEFAULT NULL,
  `currency` varchar(255) NOT NULL,
  `currency_symbol` varchar(255) NOT NULL DEFAULT '$',
  `interval` varchar(255) NOT NULL DEFAULT 'month',
  `interval_count` int(11) NOT NULL DEFAULT 1,
  `parent_id` int(11) DEFAULT NULL,
  `legacy_permissions` text DEFAULT NULL,
  `uuid` char(36) NOT NULL,
  `paypal_id` varchar(50) DEFAULT NULL,
  `recommended` tinyint(1) NOT NULL DEFAULT 0,
  `free` tinyint(1) NOT NULL DEFAULT 0,
  `show_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `features` text DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `available_space` bigint(20) UNSIGNED DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `channelables`
--

CREATE TABLE `channelables` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(11) NOT NULL,
  `channelable_type` varchar(20) NOT NULL,
  `channelable_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channelables`
--

INSERT INTO `channelables` (`id`, `channel_id`, `channelable_type`, `channelable_id`, `order`, `created_at`) VALUES
(1, 5, 'channel', 6, 1, NULL),
(2, 5, 'channel', 8, 2, NULL),
(3, 5, 'channel', 7, 3, NULL),
(8, 10, 'channel', 5, 6, NULL),
(66, 9, 'channel', 3, 0, '2024-08-15 17:04:22'),
(67, 9, 'channel', 13, 1, '2024-08-15 17:04:22'),
(68, 9, 'channel', 14, 2, '2024-08-15 17:04:22'),
(69, 9, 'channel', 10, 3, '2024-08-15 17:04:22'),
(70, 9, 'channel', 1, 4, '2024-08-15 17:04:22'),
(71, 9, 'channel', 2, 5, '2024-08-15 17:04:22'),
(72, 9, 'channel', 4, 6, '2024-08-15 17:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `internal` tinyint(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'channel',
  `slug` varchar(50) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `config` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `name`, `internal`, `description`, `type`, `slug`, `user_id`, `created_at`, `updated_at`, `config`) VALUES
(1, 'Popular Albums', 0, NULL, 'channel', 'popular-albums', 1, '2024-04-11 17:25:04', '2024-04-11 17:25:04', '{\"contentType\":\"listAll\",\"contentModel\":\"album\",\"contentOrder\":\"popularity:desc\",\"layout\":\"grid\",\"nestedLayout\":\"carousel\",\"seoTitle\":\"Popular Albums\",\"seoDescription\":\"Most popular albums from hottest artists today.\"}'),
(2, 'New Releases', 0, NULL, 'channel', 'new-releases', 1, '2024-04-11 17:25:04', '2024-08-15 17:00:45', '{\"contentType\":\"listAll\",\"contentModel\":\"track\",\"contentOrder\":\"popularity:desc\",\"layout\":\"trackTable\",\"nestedLayout\":\"trackTable\",\"seoTitle\":\"Latest Releases\",\"seoDescription\":\"Browse and listen to newest releases from popular artists.\",\"restriction\":false,\"restrictionModelId\":\"urlParam\",\"hideTitle\":false}'),
(3, 'Top Charts', 0, 'Top Charts', 'channel', 'charts', 1, '2024-04-11 17:25:04', '2024-04-29 15:49:25', '{\"contentType\":\"listAll\",\"contentModel\":\"track\",\"contentOrder\":\"popularity:desc\",\"layout\":\"trackTable\",\"nestedLayout\":\"carousel\",\"seoTitle\":\"Top Charts\",\"seoDescription\":\"Global Top charts of most popular songs.\"}'),
(4, 'Genres', 0, NULL, 'channel', 'genres', 1, '2024-04-11 17:25:04', '2024-04-11 17:25:04', '{\"contentType\":\"listAll\",\"contentModel\":\"genre\",\"contentOrder\":\"popularity:desc\",\"layout\":\"grid\",\"nestedLayout\":\"grid\",\"seoTitle\":\"Popular Genres\",\"seo_description\":\"Browse popular genres to discover new music.\"}'),
(5, '{{channel.restriction.display_name}}', 0, NULL, 'channel', 'genre', 1, '2024-04-11 17:25:04', '2024-04-11 17:25:04', '{\"restriction\":\"genre\",\"restrictionModelId\":\"urlParam\",\"lockSlug\":true,\"preventDeletion\":true,\"contentType\":\"manual\",\"contentModel\":\"channel\",\"contentOrder\":\"channelables.order:asc\",\"seoTitle\":\"{{channel.restriction.display_name}} - {{site_name}}\",\"seoDescription\":\"Popular {{channel.restriction.display_name}} artists, albums and tracks.\"}'),
(6, '{{channel.restriction.display_name}} Artists', 0, NULL, 'channel', 'genre-artists', 1, '2024-04-11 17:25:04', '2024-04-11 17:25:04', '{\"restriction\":\"genre\",\"restrictionModelId\":\"urlParam\",\"lockSlug\":true,\"preventDeletion\":true,\"contentType\":\"listAll\",\"contentModel\":\"artist\",\"nestedLayout\":\"carousel\",\"contentOrder\":\"popularity:desc\",\"layout\":\"grid\",\"seoTitle\":\"{{channel.restriction.display_name}} - {{site_name}}\",\"seoDescription\":\"Popular {{channel.restriction.display_name}} artists.\"}'),
(7, '{{channel.restriction.display_name}} Albums', 0, NULL, 'channel', 'genre-albums', 1, '2024-04-11 17:25:04', '2024-04-11 17:25:04', '{\"restriction\":\"genre\",\"restrictionModelId\":\"urlParam\",\"lockSlug\":true,\"preventDeletion\":true,\"contentType\":\"listAll\",\"contentModel\":\"album\",\"nestedLayout\":\"carousel\",\"contentOrder\":\"popularity:desc\",\"layout\":\"grid\",\"seoTitle\":\"{{channel.restriction.display_name}} - {{site_name}}\",\"seoDescription\":\"Popular {{channel.restriction.display_name}} albums.\"}'),
(8, '{{channel.restriction.display_name}} Tracks', 0, NULL, 'channel', 'genre-tracks', 1, '2024-04-11 17:25:04', '2024-04-11 17:25:04', '{\"restriction\":\"genre\",\"restrictionModelId\":\"urlParam\",\"lockSlug\":true,\"preventDeletion\":true,\"contentType\":\"listAll\",\"contentModel\":\"track\",\"nestedLayout\":\"trackTable\",\"contentOrder\":\"popularity:desc\",\"layout\":\"trackTable\",\"seoTitle\":\"{{channel.restriction.display_name}} - {{site_name}}\",\"seoDescription\":\"Popular {{channel.restriction.display_name}} tracks.\"}'),
(9, 'Discover', 0, NULL, 'channel', 'discover', 1, '2024-04-11 17:25:04', '2024-08-15 17:05:44', '{\"contentType\":\"manual\",\"contentModel\":\"channel\",\"hideTitle\":true,\"contentOrder\":\"channelables.order:asc\",\"layout\":\"list\",\"nestedLayout\":\"list\",\"seoTitle\":\"{{site_name}} - Listen to music for free\",\"seoDescription\":\"Find and listen to millions of songs, albums and artists, all completely free on {{SITE_NAME}}.\"}'),
(10, 'Public Playlists', 0, 'Public Playlists', 'channel', 'public-playlists', 1, '2024-04-29 15:30:11', '2024-05-01 18:51:26', '{\"contentType\":\"listAll\",\"contentModel\":\"playlist\",\"contentOrder\":\"created_at:desc\",\"layout\":\"grid\",\"nestedLayout\":\"carousel\",\"seoTitle\":\"Public Playlists\",\"seoDescription\":\"Public Playlists\"}'),
(13, 'Free Beats', 0, 'Free Beats', 'channel', 'free-beats', 1, '2024-04-29 15:43:52', '2024-08-15 17:05:44', '{\"contentType\":\"listAll\",\"contentOrder\":\"created_at:desc\",\"nestedLayout\":\"trackTable\",\"contentModel\":\"track\",\"layout\":\"trackTable\",\"seoTitle\":\"Free Beats\",\"seoDescription\":\"Free Beats\"}'),
(14, 'Exclusive Only', 0, 'Exclusive Only', 'channel', 'exclusive-only', 1, '2024-04-29 15:44:44', '2024-04-29 15:44:44', '{\"contentType\":\"listAll\",\"contentOrder\":\"created_at:desc\",\"nestedLayout\":\"carousel\",\"contentModel\":\"track\",\"layout\":\"trackTable\",\"seoTitle\":\"Exclusive Only\",\"seoDescription\":\"Exclusive Only\"}');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `commentable_id` int(10) UNSIGNED NOT NULL,
  `commentable_type` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `upvotes` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `downvotes` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_reports`
--

CREATE TABLE `comment_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_votes`
--

CREATE TABLE `comment_votes` (
  `id` int(10) UNSIGNED NOT NULL,
  `vote_type` varchar(10) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `user_ip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `css_themes`
--

CREATE TABLE `css_themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_dark` tinyint(1) NOT NULL DEFAULT 0,
  `default_light` tinyint(1) NOT NULL DEFAULT 0,
  `default_dark` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `values` text NOT NULL,
  `font` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `css_themes`
--

INSERT INTO `css_themes` (`id`, `name`, `is_dark`, `default_light`, `default_dark`, `user_id`, `values`, `font`, `created_at`, `updated_at`) VALUES
(1, 'Dark', 1, 0, 1, 1, '{\"--be-foreground-base\":\"255 255 255\",\"--be-primary-light\":\"223 120 255\",\"--be-primary\":\"190 41 236\",\"--be-primary-dark\":\"190 41 236\",\"--be-on-primary\":\"255 255 255\",\"--be-background\":\"0 3 25\",\"--be-background-alt\":\"12 19 36\",\"--be-background-chip\":\"190 41 236\",\"--be-paper\":\"35 35 44\",\"--be-disabled-bg-opacity\":\"12%\",\"--be-disabled-fg-opacity\":\"30%\",\"--be-hover-opacity\":\"8%\",\"--be-focus-opacity\":\"12%\",\"--be-selected-opacity\":\"16%\",\"--be-text-main-opacity\":\"100%\",\"--be-text-muted-opacity\":\"70%\",\"--be-divider-opacity\":\"12%\",\"--be-navbar-color\":\"bg\",\"--be-input-radius\":\"0px\",\"--be-button-radius\":\"0px\",\"--be-panel-radius\":\"0px\"}', '{\"family\":\"Cantata One\",\"category\":\"serif\",\"google\":true}', '2024-04-11 17:25:03', '2024-07-22 06:47:39'),
(2, 'Light', 0, 1, 0, 1, '{\"--be-foreground-base\":\"0 0 0\",\"--be-primary-light\":\"223 120 255\",\"--be-primary\":\"190 41 236\",\"--be-primary-dark\":\"190 41 236\",\"--be-on-primary\":\"255 255 255\",\"--be-background\":\"255 255 255\",\"--be-background-alt\":\"255 255 255\",\"--be-background-chip\":\"190 41 236\",\"--be-paper\":\"255 255 255\",\"--be-disabled-bg-opacity\":\"12%\",\"--be-disabled-fg-opacity\":\"26%\",\"--be-hover-opacity\":\"4%\",\"--be-focus-opacity\":\"12%\",\"--be-selected-opacity\":\"8%\",\"--be-text-main-opacity\":\"87%\",\"--be-text-muted-opacity\":\"60%\",\"--be-divider-opacity\":\"12%\",\"--be-navbar-color\":\"bg\"}', '{\"family\":\"Cantata One\",\"category\":\"serif\",\"google\":true}', '2024-04-11 17:25:03', '2024-07-22 06:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `csv_exports`
--

CREATE TABLE `csv_exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cache_name` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `download_name` varchar(50) NOT NULL,
  `uuid` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_domains`
--

CREATE TABLE `custom_domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `host` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `global` tinyint(1) NOT NULL DEFAULT 0,
  `resource_id` int(10) UNSIGNED DEFAULT NULL,
  `resource_type` varchar(20) DEFAULT NULL,
  `workspace_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `meta` text DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `hide_nav` tinyint(1) NOT NULL DEFAULT 0,
  `workspace_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `title`, `body`, `slug`, `meta`, `type`, `created_at`, `updated_at`, `user_id`, `hide_nav`, `workspace_id`) VALUES
(1, 'Privacy Policy', '<p></p>', 'privacy-policy', NULL, 'default', '2024-04-11 17:25:03', '2024-04-29 15:55:21', NULL, 0, NULL),
(2, 'Terms of Service', '<p></p>', 'terms-of-service', NULL, 'default', '2024-04-11 17:25:03', '2024-04-29 15:55:14', NULL, 0, NULL),
(3, 'About Us', '<p></p>', 'about-us', NULL, 'default', '2024-04-11 17:25:04', '2024-04-29 15:55:27', NULL, 0, NULL);

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
-- Table structure for table `file_entries`
--

CREATE TABLE `file_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `file_size` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `mime` varchar(100) DEFAULT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `disk_prefix` varchar(191) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `preview_token` varchar(15) DEFAULT NULL,
  `thumbnail` tinyint(1) NOT NULL DEFAULT 0,
  `workspace_id` int(10) UNSIGNED DEFAULT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_entries`
--

INSERT INTO `file_entries` (`id`, `name`, `file_name`, `file_size`, `mime`, `extension`, `user_id`, `created_at`, `updated_at`, `public`, `disk_prefix`, `parent_id`, `description`, `password`, `type`, `deleted_at`, `path`, `preview_token`, `thumbnail`, `workspace_id`, `owner_id`) VALUES
(68, 'Logo.png', 'c42079de-19f3-4090-bc9c-bc0d7c941963.png', 55892, 'image/png', 'png', NULL, '2024-07-22 06:50:19', '2024-07-22 06:50:19', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(69, 'Logo.png', 'ce744aec-f86d-4686-995d-02663865a012.png', 55892, 'image/png', 'png', NULL, '2024-07-22 06:50:24', '2024-07-22 06:50:24', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(70, 'Logo.png', '4be718ea-64e1-4c91-b5e2-8cc5ad95d0fe.png', 55892, 'image/png', 'png', NULL, '2024-07-22 06:50:27', '2024-07-22 06:50:27', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(71, 'Logo.png', '240fc96e-957e-4fb8-b95f-391376f3de81.png', 55892, 'image/png', 'png', NULL, '2024-07-22 06:50:36', '2024-07-22 06:50:36', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(72, 'Logo.png', 'b625a814-7f69-433b-86d6-adfdb3dca368.png', 55892, 'image/png', 'png', NULL, '2024-07-22 06:50:42', '2024-07-22 06:50:42', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(78, 'jity.jpg', 'bdd15e85-c594-47a9-8c3f-080d2c073d0c.jpg', 1332712, 'image/jpeg', 'jpg', NULL, '2024-07-22 06:57:33', '2024-07-22 06:57:33', 1, 'avatars', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(102, 'Andělka.wav', '12cfed30-6e61-4137-a5da-cfeac5b9e81b.wav', 15909164, 'audio/wav', 'wav', NULL, '2024-07-27 20:17:22', '2024-07-27 20:17:22', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(123, 'hero.jpg', '340ce40c-cb05-4ac0-b095-5f1374d41e19.jpg', 158632, 'image/jpeg', 'jpg', NULL, '2024-08-02 14:23:38', '2024-08-02 14:23:38', 1, 'homepage', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(124, 'hero.jpg', '10793f57-3131-44a5-a572-358d3e369000.jpg', 158632, 'image/jpeg', 'jpg', NULL, '2024-08-02 14:23:46', '2024-08-02 14:23:46', 1, 'homepage', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(125, 'Andělka.png', 'cf03d6cb-11f8-4baa-a32a-d2874e3596d1.png', 85214, 'image/png', 'png', NULL, '2024-08-02 14:24:24', '2024-08-02 14:24:24', 1, 'track_image', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(126, 'playlist.jpg', 'c60a469b-55b6-4a03-8891-cb6d0bcd7e59.jpg', 158632, 'image/jpeg', 'jpg', NULL, '2024-08-02 14:32:50', '2024-08-02 14:32:50', 1, 'playlist_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(127, 'album.jpg', 'e3651c80-75b5-4389-a8a0-a4396220436f.jpg', 158632, 'image/jpeg', 'jpg', NULL, '2024-08-02 14:33:01', '2024-08-02 14:33:01', 1, 'album_images', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(128, 'Andělka.pdf', '89446453-251b-4ce6-996b-d5d382df9be9.pdf', 89595, 'application/pdf', 'pdf', NULL, '2024-08-03 10:35:53', '2024-08-03 10:35:53', 1, 'track_media', NULL, NULL, NULL, 'pdf', NULL, NULL, NULL, 0, 12, 1),
(129, 'Andělka.mp3', '4bd57485-19c0-450e-b307-74b810c72a13.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 10:36:59', '2024-08-03 10:36:59', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(130, 'Andělka.wav', '005b54f6-ffe1-4ee2-b11c-b011a53b3f64.wav', 15909164, 'audio/wav', 'wav', NULL, '2024-08-03 10:37:06', '2024-08-03 10:37:06', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(131, 'Andělka.zip', 'd86d6c8b-3b91-4258-8eac-c49f00278ff0.zip', 18508822, 'application/x-zip-compressed', 'zip', NULL, '2024-08-03 10:37:12', '2024-08-03 10:37:12', 1, 'track_media', NULL, NULL, NULL, 'archive', NULL, NULL, NULL, 0, 0, 1),
(132, 'Andělka.pdf', '88523d52-9e94-4158-b769-97d56d6ced04.pdf', 89595, 'application/pdf', 'pdf', NULL, '2024-08-03 10:37:15', '2024-08-03 10:37:15', 1, 'track_media', NULL, NULL, NULL, 'pdf', NULL, NULL, NULL, 0, 12, 1),
(133, 'Andělka.pdf', '202088b3-ed52-451d-882c-43172b21b448.pdf', 89595, 'application/pdf', 'pdf', NULL, '2024-08-03 10:44:40', '2024-08-03 10:44:40', 1, 'track_media', NULL, NULL, NULL, 'pdf', NULL, NULL, NULL, 0, 12, 1),
(134, 'Andělka.pdf', '8d0aa7a8-59bb-4ac3-b2d7-039a60210029.pdf', 89595, 'application/pdf', 'pdf', NULL, '2024-08-03 10:45:14', '2024-08-03 10:45:14', 1, 'track_media', NULL, NULL, NULL, 'pdf', NULL, NULL, NULL, 0, 12, 1),
(135, 'Andělka.zip', '88536aa9-c2b9-4e52-9623-91f3383b6f38.zip', 18508822, 'application/x-zip-compressed', 'zip', NULL, '2024-08-03 10:45:20', '2024-08-03 10:45:20', 1, 'track_media', NULL, NULL, NULL, 'archive', NULL, NULL, NULL, 0, 0, 1),
(136, 'Andělka.mp3', 'b8c7efca-6d97-4254-a047-50c2012c4f87.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 10:45:27', '2024-08-03 10:45:27', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(137, 'Andělka.wav', 'ca1436da-6587-48d4-a4af-205132414cc9.wav', 15909164, 'audio/wav', 'wav', NULL, '2024-08-03 10:45:34', '2024-08-03 10:45:34', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(138, 'Andělka.wav', '99860916-10a0-4f83-9dcd-5e6af360190d.wav', 15909164, 'audio/wav', 'wav', NULL, '2024-08-03 10:45:49', '2024-08-03 10:45:49', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(139, 'Andělka.mp3', 'ed1c79e9-6642-41c9-aa6b-c17a435cdd66.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 10:49:50', '2024-08-03 10:49:50', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(140, 'Andělka.mp3', '8af38575-9052-4228-ae58-52dd78b3f72b.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 10:49:58', '2024-08-03 10:49:58', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(141, 'Andělka.wav', '27c502b1-d164-4637-aad1-f2ec94b4331a.wav', 15909164, 'audio/wav', 'wav', NULL, '2024-08-03 10:50:15', '2024-08-03 10:50:15', 1, 'wav_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(142, 'Andělka.mp3', '0f93a08f-cd67-4b1e-85e7-47ddbd0b0c80.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 10:51:45', '2024-08-03 10:51:45', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(143, 'Andělka.mp3', '1b3df6a4-b2f3-4416-a7cb-b942d5e9615f.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 10:51:55', '2024-08-03 10:51:55', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(144, 'Andělka.mp3', '17d103df-85e5-4bd5-96ee-52ad8c65d552.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 10:52:52', '2024-08-03 10:52:52', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(145, 'Andělka.wav', 'ccc3fc28-620d-4d80-9be6-73c717a62f43.wav', 15909164, 'audio/wav', 'wav', NULL, '2024-08-03 10:52:59', '2024-08-03 10:52:59', 1, 'wav_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(146, 'Andělka.zip', '9669abb5-afc1-491d-b79d-6f299f96d791.zip', 18508822, 'application/x-zip-compressed', 'zip', NULL, '2024-08-03 10:53:05', '2024-08-03 10:53:05', 1, 'zip_media', NULL, NULL, NULL, 'archive', NULL, NULL, NULL, 0, 0, 1),
(147, 'Andělka.pdf', 'd0acbbc0-00d4-45f5-aaad-98685ee80187.pdf', 89595, 'application/pdf', 'pdf', NULL, '2024-08-03 10:53:07', '2024-08-03 10:53:07', 1, 'pdf_media', NULL, NULL, NULL, 'pdf', NULL, NULL, NULL, 0, 12, 1),
(148, 'Andělka.mp3', '778ce5e2-0a16-4842-8dbc-f89eb665b5c0.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 10:54:07', '2024-08-03 10:54:07', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(149, 'Andělka.mp3', '8764995b-677b-44c6-98db-9df8ae10f0ee.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 11:00:12', '2024-08-03 11:00:12', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(150, 'Andělka.mp3', 'b3a18bbe-645f-4495-be67-c5ffb1dcaf09.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 12:39:09', '2024-08-03 12:39:09', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(151, 'Andělka.wav', '129058cf-3bed-4ab6-9922-deb8e99d8d4a.wav', 15909164, 'audio/wav', 'wav', NULL, '2024-08-03 12:39:18', '2024-08-03 12:39:18', 1, 'wav_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(152, 'Andělka.zip', '7f498505-c319-4267-b134-8522067db4cd.zip', 18508822, 'application/x-zip-compressed', 'zip', NULL, '2024-08-03 12:39:28', '2024-08-03 12:39:28', 1, 'zip_media', NULL, NULL, NULL, 'archive', NULL, NULL, NULL, 0, 0, 1),
(153, 'Andělka.pdf', 'ca00f9f9-e04b-4ce2-98c8-b02622b7dd7d.pdf', 89595, 'application/pdf', 'pdf', NULL, '2024-08-03 12:39:33', '2024-08-03 12:39:33', 1, 'pdf_media', NULL, NULL, NULL, 'pdf', NULL, NULL, NULL, 0, 12, 1),
(154, 'Andělka.mp3', 'c6130916-35b7-44ca-b255-4be062afdf84.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 12:41:26', '2024-08-03 12:41:26', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(155, 'Andělka.mp3', 'f82f8175-33fd-451e-bbae-dafb3f0be0b7.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 12:54:27', '2024-08-03 12:54:27', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(156, 'beats.mp3', '8c11d317-28b9-4d64-a4b3-3a5642a8fc4e.mp3', 7046709, 'audio/mpeg', 'mp3', NULL, '2024-08-03 12:58:22', '2024-08-03 12:58:22', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(157, 'Andělka.mp3', 'f2bab71a-426f-4be8-8fc6-53007cadd4aa.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 13:06:25', '2024-08-03 13:06:25', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(158, 'Andělka.wav', 'a9392a98-b20d-4ac5-81a0-5daf8957a3fd.wav', 15909164, 'audio/wav', 'wav', NULL, '2024-08-03 13:06:32', '2024-08-03 13:06:32', 1, 'wav_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(159, 'Andělka.zip', '6c54e856-faf5-4c83-83a4-643f3ebd455f.zip', 18508822, 'application/x-zip-compressed', 'zip', NULL, '2024-08-03 13:06:38', '2024-08-03 13:06:38', 1, 'zip_media', NULL, NULL, NULL, 'archive', NULL, NULL, NULL, 0, 0, 1),
(160, 'Andělka.pdf', '9af5accb-f8ac-436c-ac03-6fb7f1e399aa.pdf', 89595, 'application/pdf', 'pdf', NULL, '2024-08-03 13:06:43', '2024-08-03 13:06:43', 1, 'pdf_media', NULL, NULL, NULL, 'pdf', NULL, NULL, NULL, 0, 12, 1),
(161, 'Andělka.wav', 'e553f9b3-2ead-4ab3-b376-aafa88d4ee82.wav', 15909164, 'audio/wav', 'wav', NULL, '2024-08-03 13:07:00', '2024-08-03 13:07:00', 1, 'wav_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(162, 'Andělka.mp3', '83ec5e00-d5a1-46eb-ac26-197bb28700ef.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 13:07:06', '2024-08-03 13:07:06', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(163, 'Andělka.wav', 'be8dfe17-ec8a-46df-8f58-ad2b2da97232.wav', 15909164, 'audio/wav', 'wav', NULL, '2024-08-03 13:07:12', '2024-08-03 13:07:12', 1, 'wav_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(164, 'Andělka.pdf', '21755986-1a7b-4edf-9073-e88844bb9809.pdf', 89595, 'application/pdf', 'pdf', NULL, '2024-08-03 16:35:40', '2024-08-03 16:35:40', 1, 'pdf_media', NULL, NULL, NULL, 'pdf', NULL, NULL, NULL, 0, 12, 1),
(165, 'Andělka.mp3', 'f7827ad3-0088-4519-8233-a4d9a4a41847.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 16:43:20', '2024-08-03 16:43:20', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(166, 'Andělka.png', '88f821f0-93dd-4e45-b98f-5803e35410ba.png', 85214, 'image/png', 'png', NULL, '2024-08-03 16:45:30', '2024-08-03 16:45:30', 1, 'track_image', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(167, 'Andělka.mp3', 'bec7e6b4-8a16-4dba-944f-88342c5ae301.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 16:45:33', '2024-08-03 16:45:33', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(168, 'Andělka.wav', '5ecc5e32-b231-47f3-9705-1450deda2d90.wav', 15909164, 'audio/wav', 'wav', NULL, '2024-08-03 16:45:40', '2024-08-03 16:45:40', 1, 'wav_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(169, 'Andělka.zip', '347e7bc6-4724-47fe-9ffa-9409e9219e96.zip', 18508822, 'application/x-zip-compressed', 'zip', NULL, '2024-08-03 16:45:47', '2024-08-03 16:45:47', 1, 'zip_media', NULL, NULL, NULL, 'archive', NULL, NULL, NULL, 0, 0, 1),
(170, 'Andělka.pdf', '586b090c-d879-4cae-b12e-bfe94ad6f963.pdf', 89595, 'application/pdf', 'pdf', NULL, '2024-08-03 16:45:51', '2024-08-03 16:45:51', 1, 'pdf_media', NULL, NULL, NULL, 'pdf', NULL, NULL, NULL, 0, 12, 1),
(171, 'Andělka.mp3', 'b5d56a1e-5bc0-4684-b401-73bb2ea048b8.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 16:45:56', '2024-08-03 16:45:56', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(172, 'Andělka.mp3', 'e26940a7-f6f0-40c9-96a6-52ea00a802fc.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 17:07:30', '2024-08-03 17:07:30', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(173, 'Andělka.mp3', '51224c95-e49e-4fcb-972b-e518ada47b77.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 17:08:27', '2024-08-03 17:08:27', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(174, 'Andělka.mp3', '437dce79-a473-4cdd-9cf8-6c57ae5e425a.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 17:08:37', '2024-08-03 17:08:37', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(175, 'Andělka.mp3', 'e1106978-7e78-4b37-a6fe-99f9b3621af8.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 17:13:33', '2024-08-03 17:13:33', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(176, 'Andělka.mp3', 'fe9c2737-7608-4ecd-8008-cbe1c70376d9.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 17:16:18', '2024-08-03 17:16:18', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(177, 'Andělka.mp3', 'd3b36da2-2798-4658-ad7c-8d1484147a27.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 17:20:32', '2024-08-03 17:20:32', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(178, 'Andělka.mp3', 'a1143b9f-216b-4817-8061-bb9e09cb4703.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 17:23:11', '2024-08-03 17:23:11', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(179, 'Andělka.mp3', 'e0054aba-bf54-410a-b3f6-d7ea7b519ab6.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 17:26:42', '2024-08-03 17:26:42', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(180, 'Andělka.mp3', 'd7756a84-c80d-4e2d-855d-d8f9ba21987a.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 17:33:02', '2024-08-03 17:33:02', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(181, 'Andělka.mp3', 'bf71653a-8160-417c-ac98-c95f04dd4edf.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 17:38:19', '2024-08-03 17:38:19', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(182, 'Andělka.mp3', '32911c4f-fd7a-4f76-bf19-af4c6341fa96.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 17:40:50', '2024-08-03 17:40:50', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(183, 'Andělka.mp3', '986410ce-3025-4c24-b352-74f36fa5c617.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 17:40:59', '2024-08-03 17:40:59', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(184, 'Andělka.mp3', '2b105e2e-acd2-4536-92cc-3458aefc9995.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 17:48:54', '2024-08-03 17:48:54', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(185, 'Andělka.mp3', '04a9804e-fa81-4721-85c0-08bf56237b7d.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 17:49:02', '2024-08-03 17:49:02', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(186, 'Andělka.mp3', 'abb273ab-f217-475d-8345-0bc499fe1b51.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 17:49:13', '2024-08-03 17:49:13', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(187, 'Andělka.wav', '7d0d436a-ee71-4a8e-ab32-c3fe21dafb3c.wav', 15909164, 'audio/wav', 'wav', NULL, '2024-08-03 17:49:20', '2024-08-03 17:49:20', 1, 'wav_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(188, 'Andělka.wav', '974dadc4-bbc6-4346-86f8-e6db9ccfd4a3.wav', 15909164, 'audio/wav', 'wav', NULL, '2024-08-03 17:49:26', '2024-08-03 17:49:26', 1, 'wav_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(189, 'Andělka.zip', '9282369c-05ba-4316-b6cb-c40bd82bc8e1.zip', 18508822, 'application/x-zip-compressed', 'zip', NULL, '2024-08-03 17:49:31', '2024-08-03 17:49:31', 1, 'zip_media', NULL, NULL, NULL, 'archive', NULL, NULL, NULL, 0, 0, 1),
(190, 'Andělka.pdf', '892a44b1-a452-419c-9688-5f28c28705e4.pdf', 89595, 'application/pdf', 'pdf', NULL, '2024-08-03 17:49:33', '2024-08-03 17:49:33', 1, 'pdf_media', NULL, NULL, NULL, 'pdf', NULL, NULL, NULL, 0, 12, 1),
(191, 'Andělka.png', '68c52816-df54-427e-97dd-0de28ed970b8.png', 85214, 'image/png', 'png', NULL, '2024-08-03 18:59:01', '2024-08-03 18:59:01', 1, 'track_image', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(192, 'Andělka.mp3', '12264b64-d4ba-4a9f-ae64-d7a76dcb0740.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 18:59:18', '2024-08-03 18:59:18', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(193, 'Andělka.wav', 'b61579be-cd22-4a20-aac8-0baa511cad98.wav', 15909164, 'audio/wav', 'wav', NULL, '2024-08-03 18:59:29', '2024-08-03 18:59:29', 1, 'wav_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(194, 'Andělka.zip', '4f3d1f2f-61d9-4fe7-9238-5b729bd1c4ea.zip', 18508822, 'application/x-zip-compressed', 'zip', NULL, '2024-08-03 18:59:34', '2024-08-03 18:59:34', 1, 'zip_media', NULL, NULL, NULL, 'archive', NULL, NULL, NULL, 0, 0, 1),
(195, 'Andělka.pdf', '0f503818-53e5-40d0-8639-118ac7bd7311.pdf', 89595, 'application/pdf', 'pdf', NULL, '2024-08-03 18:59:37', '2024-08-03 18:59:37', 1, 'pdf_media', NULL, NULL, NULL, 'pdf', NULL, NULL, NULL, 0, 12, 1),
(196, 'Andělka.mp3', 'fb98c522-bcdb-4ed7-aab4-fda7e32fd31a.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 18:59:41', '2024-08-03 18:59:41', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(197, 'Andělka.mp3', 'e8ec6a4e-bdb1-49f9-8dd2-d4cccb3ccd45.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:01:04', '2024-08-03 19:01:04', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(198, 'Andělka.mp3', '06c20361-dd95-434c-b787-302f26a12e77.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:04:03', '2024-08-03 19:04:03', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(199, 'Andělka.mp3', 'ab5f59b4-bc80-41dd-9648-771d4c1573e2.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:09:26', '2024-08-03 19:09:26', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(200, 'Andělka.mp3', '7bfbfe0d-8f27-4e22-ad02-effc1e03dd94.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:10:04', '2024-08-03 19:10:04', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(201, 'Andělka.mp3', '89ab3484-f1cd-4541-8d61-a3b4a5f647ff.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:11:17', '2024-08-03 19:11:17', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(202, 'Andělka.mp3', 'e7726a4a-1fd5-4ce6-aa2f-91a83d150c3f.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:11:33', '2024-08-03 19:11:33', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(203, 'Andělka.mp3', '269b63de-8a8c-44bb-99c1-f628a8feff9e.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:11:44', '2024-08-03 19:11:44', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(204, 'Andělka.mp3', '6a58a822-c194-4d5e-9c18-8984b085fbc4.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:13:14', '2024-08-03 19:13:14', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(205, 'Andělka.mp3', '2837b708-347c-44dc-a84f-5f80aaa90a34.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:13:39', '2024-08-03 19:13:39', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(206, 'Andělka.mp3', 'afa123e1-5cf4-4d6f-aba3-e824222748fd.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:13:45', '2024-08-03 19:13:45', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(207, 'Andělka.wav', 'f67c2014-c07c-4fc4-b87a-65456da3fcb9.wav', 15909164, 'audio/wav', 'wav', NULL, '2024-08-03 19:13:55', '2024-08-03 19:13:55', 1, 'wav_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(208, 'Andělka.mp3', '97d14ce2-0826-47bb-afa2-1f24c5896b5b.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:14:05', '2024-08-03 19:14:05', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(209, 'Andělka.mp3', '792d49b4-25b6-4a5b-bf45-230312757823.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:14:34', '2024-08-03 19:14:34', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(210, 'Andělka.mp3', '51a027c5-c4c3-4ebf-a0a1-679fd43258c0.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:19:46', '2024-08-03 19:19:46', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(211, 'Andělka.mp3', 'e8d29529-7a39-4bdf-a9fc-ceb2ab05bf4e.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:20:44', '2024-08-03 19:20:44', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(212, 'Andělka.mp3', '27649795-4d02-452e-ae86-543a90b1a3eb.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:24:22', '2024-08-03 19:24:22', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(213, 'Andělka.mp3', 'c3f5e4c2-ec81-4872-b60a-d60e2652c71e.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:24:35', '2024-08-03 19:24:35', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(214, 'Andělka.mp3', 'f851d86d-4c37-4a11-82db-ad48856abe10.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:27:22', '2024-08-03 19:27:22', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(215, 'Andělka.mp3', '1d4baa45-1ae8-47e0-b21e-c1a093dcc300.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:29:04', '2024-08-03 19:29:04', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(216, 'Andělka.mp3', '9dc6d9a1-08b5-444b-b42a-d32a30840512.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:30:38', '2024-08-03 19:30:38', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(217, 'Andělka.mp3', 'c28a0c8a-0487-4baa-9472-288ec398f138.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:32:12', '2024-08-03 19:32:12', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(218, 'Andělka.mp3', '9734ef96-d638-4c13-b911-25b94be92543.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:34:10', '2024-08-03 19:34:10', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(219, 'Andělka.png', '46c3043b-625e-4d26-a1c7-62fe0a6810f9.png', 85214, 'image/png', 'png', NULL, '2024-08-03 19:36:51', '2024-08-03 19:36:51', 1, 'track_image', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(220, 'Andělka.mp3', '21ab9bf2-7b1a-4e4e-b595-d9d45e665fc9.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:36:56', '2024-08-03 19:36:56', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(221, 'Andělka.mp3', '6f342d42-fa2b-46b0-9460-8f76dc4a86eb.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:37:01', '2024-08-03 19:37:01', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(222, 'Andělka.wav', 'ac3b0272-fe7e-4894-9359-7d4cbeb2b296.wav', 15909164, 'audio/wav', 'wav', NULL, '2024-08-03 19:37:18', '2024-08-03 19:37:18', 1, 'wav_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(223, 'Andělka.zip', 'e0b98811-2543-436f-a86e-cc9ae9c205b0.zip', 18508822, 'application/x-zip-compressed', 'zip', NULL, '2024-08-03 19:37:22', '2024-08-03 19:37:22', 1, 'zip_media', NULL, NULL, NULL, 'archive', NULL, NULL, NULL, 0, 0, 1),
(224, 'Andělka.pdf', '73e8bb49-eebd-4f1b-a1b2-38ede1ea313e.pdf', 89595, 'application/pdf', 'pdf', NULL, '2024-08-03 19:37:26', '2024-08-03 19:37:26', 1, 'pdf_media', NULL, NULL, NULL, 'pdf', NULL, NULL, NULL, 0, 12, 1),
(225, 'beats.mp3', '01b747ab-27e1-412c-8437-ba3036be6a8e.mp3', 7046709, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:42:27', '2024-08-03 19:42:27', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(226, 'Andělka.png', 'e7fdc1dc-ede8-40fa-9ce3-ec9827926d3a.png', 85214, 'image/png', 'png', NULL, '2024-08-03 19:55:08', '2024-08-03 19:55:08', 1, 'track_image', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(227, 'Andělka.mp3', '8b61df44-0ff8-40dd-93f7-47863b78082b.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:55:16', '2024-08-03 19:55:16', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(228, 'Andělka.mp3', '76d42c37-e83b-4d07-bff7-17dea760b567.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-03 19:55:42', '2024-08-03 19:55:42', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(229, 'Andělka.wav', '5f874325-460f-4f68-bd15-ff4a671ab191.wav', 15909164, 'audio/wav', 'wav', NULL, '2024-08-03 19:55:47', '2024-08-03 19:55:47', 1, 'wav_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(230, 'Andělka.zip', '4bb2ace7-a48f-4e43-b902-cd88e43ae7b4.zip', 18508822, 'application/x-zip-compressed', 'zip', NULL, '2024-08-03 19:55:51', '2024-08-03 19:55:51', 1, 'zip_media', NULL, NULL, NULL, 'archive', NULL, NULL, NULL, 0, 0, 1),
(231, 'Andělka.pdf', '601d758b-3a10-4611-839c-bcb38060156e.pdf', 89595, 'application/pdf', 'pdf', NULL, '2024-08-03 19:55:52', '2024-08-03 19:55:52', 1, 'pdf_media', NULL, NULL, NULL, 'pdf', NULL, NULL, NULL, 0, 12, 1),
(232, 'Andělka.png', 'a286f33c-d07c-4f72-bb06-03d89a17fbc8.png', 85214, 'image/png', 'png', NULL, '2024-08-04 15:19:24', '2024-08-04 15:19:24', 1, 'track_image', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(233, 'Andělka.png', '25a548dd-1c22-4e6b-8ba3-9da5843b0c0a.png', 85214, 'image/png', 'png', NULL, '2024-08-04 15:20:01', '2024-08-04 15:20:01', 1, 'track_image', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(234, 'Andělka.mp3', 'cb7a28b5-de8f-4a10-9d00-182e83f09dcf.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-04 15:20:10', '2024-08-04 15:20:10', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(235, 'asdas.mp3', 'a4664312-8689-4d64-9aa6-1658239b791e.mp3', 7046709, 'audio/mpeg', 'mp3', NULL, '2024-08-04 15:20:28', '2024-08-04 15:20:28', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(236, 'Beats.wav', 'd19fad3b-70a7-4cd7-9f25-85660c079399.wav', 15909164, 'audio/wav', 'wav', NULL, '2024-08-04 15:20:41', '2024-08-04 15:20:41', 1, 'wav_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(237, 'Beats.zip', '568c93e1-c710-4204-ad7c-80bb7c8b211b.zip', 18508822, 'application/x-zip-compressed', 'zip', NULL, '2024-08-04 15:20:45', '2024-08-04 15:20:45', 1, 'zip_media', NULL, NULL, NULL, 'archive', NULL, NULL, NULL, 0, 0, 1),
(238, 'Beats.pdf', '54ff0b31-294d-4bbc-911c-891a4037a6e5.pdf', 89595, 'application/pdf', 'pdf', NULL, '2024-08-04 15:20:49', '2024-08-04 15:20:49', 1, 'pdf_media', NULL, NULL, NULL, 'pdf', NULL, NULL, NULL, 0, 12, 1),
(239, 'Beats.mp3', '41046fef-7a55-4265-b2ae-ac129031235f.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-04 19:34:50', '2024-08-04 19:34:50', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(240, 'Beats.mp3', '8db16797-23b3-406c-9f59-ea7ca657ffb9.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-04 19:35:08', '2024-08-04 19:35:08', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(241, 'Beats.mp3', '388f08ae-d7b3-4b70-b57b-706525334a58.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-04 19:41:13', '2024-08-04 19:41:13', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(242, 'Beats.mp3', '371360e7-6db1-46c0-815f-78fd8259308e.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-04 19:46:33', '2024-08-04 19:46:33', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(243, 'Beats.mp3', '1ae71fa3-67f1-47ef-813b-b11fef5a876f.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-04 19:59:33', '2024-08-04 19:59:33', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(244, 'Beats.mp3', 'bee606f9-3672-49eb-b7dd-5e598b887943.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-04 20:01:45', '2024-08-04 20:01:45', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(245, 'Beats.mp3', '1357344b-26b9-45fc-8fde-ab41be568a29.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-04 20:06:19', '2024-08-04 20:06:19', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(246, 'Beats.mp3', '10f2f462-5677-4a0b-bc80-7f8bb4778a68.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-04 20:11:43', '2024-08-04 20:11:43', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(247, 'Beats.mp3', '262667dc-c4af-4a1d-b08f-8c2800059381.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-04 20:11:51', '2024-08-04 20:11:51', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(248, 'Beats.mp3', '3fb67aac-787e-4f5e-9457-e73f04187bb7.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-04 20:13:13', '2024-08-04 20:13:13', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(249, 'Beats.mp3', '8cd12ecd-b79c-47a0-a719-a2cadfd4cbd5.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-04 20:17:33', '2024-08-04 20:17:33', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(250, 'Beats.mp3', '1ce7662b-3fca-4eec-b636-e30ce6efaae5.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-04 20:28:27', '2024-08-04 20:28:27', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(251, 'Beats.mp3', '2e8ae326-1abe-409f-b810-c3137a5dfb83.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-04 20:31:03', '2024-08-04 20:31:03', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(252, 'Beats.mp3', '2d68f1d0-73b6-4a61-86ec-7c8d7f204b0c.mp3', 2886008, 'audio/mpeg', 'mp3', NULL, '2024-08-04 20:36:10', '2024-08-04 20:36:10', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 12, 1),
(253, 'asdas.mp3', 'a5d7c2e6-a63e-4109-9d4d-4772bc693579.mp3', 7046709, 'audio/mpeg', 'mp3', NULL, '2024-08-04 20:36:23', '2024-08-04 20:36:23', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(254, 'asdas.mp3', '1426e996-72d6-4353-9324-92d1c35e818c.mp3', 7046709, 'audio/mpeg', 'mp3', NULL, '2024-08-04 20:39:11', '2024-08-04 20:39:11', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(255, 'asdas.mp3', '374843ec-889c-4bcd-915d-0e9cf5d9e9b5.mp3', 7046709, 'audio/mpeg', 'mp3', NULL, '2024-08-04 20:44:57', '2024-08-04 20:44:57', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(256, 'asdas.mp3', '66e3bb69-6e91-46a7-ad35-9b9bcb22389c.mp3', 7046709, 'audio/mpeg', 'mp3', NULL, '2024-08-04 21:15:23', '2024-08-04 21:15:23', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(257, 'asdas.mp3', '91750dce-ac6a-4f28-b550-edf663423ab6.mp3', 7046709, 'audio/mpeg', 'mp3', NULL, '2024-08-04 21:21:21', '2024-08-04 21:21:21', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(258, 'asdas.mp3', '81aaeb97-93bc-4892-90a4-7d08d74d1f29.mp3', 7046709, 'audio/mpeg', 'mp3', NULL, '2024-08-05 11:48:35', '2024-08-05 11:48:35', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(259, 'asdas.mp3', '099ebda8-1729-4fcd-86c6-1d96101dbadf.mp3', 7046709, 'audio/mpeg', 'mp3', NULL, '2024-08-05 11:48:46', '2024-08-05 11:48:46', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(260, 'asdas.mp3', 'e72a663d-9a08-40af-bf81-e53725201a41.mp3', 7046709, 'audio/mpeg', 'mp3', NULL, '2024-08-05 12:03:59', '2024-08-05 12:03:59', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(261, 'full_track.mp3', '617b572c-298d-442f-99aa-4f69cef57585.mp3', 7366447, 'audio/mpeg', 'mp3', NULL, '2024-08-06 10:57:27', '2024-08-06 10:57:27', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(262, 'demo_track.mp3', '61b4ab09-afba-40b9-8200-5d0908200efc.mp3', 7046709, 'audio/mpeg', 'mp3', NULL, '2024-08-06 10:57:38', '2024-08-06 10:57:38', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(263, 'full_track.mp3', 'a520036c-e713-4993-a063-896ff635fb2b.mp3', 7366447, 'audio/mpeg', 'mp3', NULL, '2024-08-13 21:17:34', '2024-08-13 21:17:34', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(264, 'full_track.mp3', 'f8709b83-4d6a-438e-9b88-53b852cdcbc7.mp3', 7366447, 'audio/mpeg', 'mp3', NULL, '2024-08-15 05:09:28', '2024-08-15 05:09:28', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(265, 'boss.mp3', '14193015-d30b-4a81-822d-25fe969afdbf.mp3', 5885966, 'audio/mpeg', 'mp3', NULL, '2024-08-15 05:11:42', '2024-08-15 05:11:42', 1, 'mp3_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `file_entry_models`
--

CREATE TABLE `file_entry_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_entry_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `owner` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_entry_models`
--

INSERT INTO `file_entry_models` (`id`, `file_entry_id`, `model_id`, `model_type`, `created_at`, `updated_at`, `owner`, `permissions`) VALUES
(68, 68, 1, 'user', '2024-07-22 06:50:19', '2024-07-22 06:50:19', 1, NULL),
(69, 69, 1, 'user', '2024-07-22 06:50:24', '2024-07-22 06:50:24', 1, NULL),
(70, 70, 1, 'user', '2024-07-22 06:50:27', '2024-07-22 06:50:27', 1, NULL),
(71, 71, 1, 'user', '2024-07-22 06:50:36', '2024-07-22 06:50:36', 1, NULL),
(72, 72, 1, 'user', '2024-07-22 06:50:42', '2024-07-22 06:50:42', 1, NULL),
(78, 78, 1, 'user', '2024-07-22 06:57:33', '2024-07-22 06:57:33', 1, NULL),
(102, 102, 1, 'user', '2024-07-27 20:17:22', '2024-07-27 20:17:22', 1, NULL),
(123, 123, 1, 'user', '2024-08-02 14:23:38', '2024-08-02 14:23:38', 1, NULL),
(124, 124, 1, 'user', '2024-08-02 14:23:46', '2024-08-02 14:23:46', 1, NULL),
(125, 125, 1, 'user', '2024-08-02 14:24:24', '2024-08-02 14:24:24', 1, NULL),
(126, 126, 1, 'user', '2024-08-02 14:32:50', '2024-08-02 14:32:50', 1, NULL),
(127, 127, 1, 'user', '2024-08-02 14:33:01', '2024-08-02 14:33:01', 1, NULL),
(128, 128, 1, 'user', '2024-08-03 10:35:53', '2024-08-03 10:35:53', 1, NULL),
(129, 129, 1, 'user', '2024-08-03 10:36:59', '2024-08-03 10:36:59', 1, NULL),
(130, 130, 1, 'user', '2024-08-03 10:37:06', '2024-08-03 10:37:06', 1, NULL),
(131, 131, 1, 'user', '2024-08-03 10:37:12', '2024-08-03 10:37:12', 1, NULL),
(132, 132, 1, 'user', '2024-08-03 10:37:15', '2024-08-03 10:37:15', 1, NULL),
(133, 133, 1, 'user', '2024-08-03 10:44:40', '2024-08-03 10:44:40', 1, NULL),
(134, 134, 1, 'user', '2024-08-03 10:45:14', '2024-08-03 10:45:14', 1, NULL),
(135, 135, 1, 'user', '2024-08-03 10:45:20', '2024-08-03 10:45:20', 1, NULL),
(136, 136, 1, 'user', '2024-08-03 10:45:27', '2024-08-03 10:45:27', 1, NULL),
(137, 137, 1, 'user', '2024-08-03 10:45:34', '2024-08-03 10:45:34', 1, NULL),
(138, 138, 1, 'user', '2024-08-03 10:45:49', '2024-08-03 10:45:49', 1, NULL),
(139, 139, 1, 'user', '2024-08-03 10:49:50', '2024-08-03 10:49:50', 1, NULL),
(140, 140, 1, 'user', '2024-08-03 10:49:58', '2024-08-03 10:49:58', 1, NULL),
(141, 141, 1, 'user', '2024-08-03 10:50:15', '2024-08-03 10:50:15', 1, NULL),
(142, 142, 1, 'user', '2024-08-03 10:51:45', '2024-08-03 10:51:45', 1, NULL),
(143, 143, 1, 'user', '2024-08-03 10:51:55', '2024-08-03 10:51:55', 1, NULL),
(144, 144, 1, 'user', '2024-08-03 10:52:52', '2024-08-03 10:52:52', 1, NULL),
(145, 145, 1, 'user', '2024-08-03 10:52:59', '2024-08-03 10:52:59', 1, NULL),
(146, 146, 1, 'user', '2024-08-03 10:53:05', '2024-08-03 10:53:05', 1, NULL),
(147, 147, 1, 'user', '2024-08-03 10:53:07', '2024-08-03 10:53:07', 1, NULL),
(148, 148, 1, 'user', '2024-08-03 10:54:07', '2024-08-03 10:54:07', 1, NULL),
(149, 149, 1, 'user', '2024-08-03 11:00:12', '2024-08-03 11:00:12', 1, NULL),
(150, 150, 1, 'user', '2024-08-03 12:39:09', '2024-08-03 12:39:09', 1, NULL),
(151, 151, 1, 'user', '2024-08-03 12:39:18', '2024-08-03 12:39:18', 1, NULL),
(152, 152, 1, 'user', '2024-08-03 12:39:28', '2024-08-03 12:39:28', 1, NULL),
(153, 153, 1, 'user', '2024-08-03 12:39:33', '2024-08-03 12:39:33', 1, NULL),
(154, 154, 1, 'user', '2024-08-03 12:41:26', '2024-08-03 12:41:26', 1, NULL),
(155, 155, 1, 'user', '2024-08-03 12:54:27', '2024-08-03 12:54:27', 1, NULL),
(156, 156, 1, 'user', '2024-08-03 12:58:22', '2024-08-03 12:58:22', 1, NULL),
(157, 157, 1, 'user', '2024-08-03 13:06:25', '2024-08-03 13:06:25', 1, NULL),
(158, 158, 1, 'user', '2024-08-03 13:06:32', '2024-08-03 13:06:32', 1, NULL),
(159, 159, 1, 'user', '2024-08-03 13:06:38', '2024-08-03 13:06:38', 1, NULL),
(160, 160, 1, 'user', '2024-08-03 13:06:43', '2024-08-03 13:06:43', 1, NULL),
(161, 161, 1, 'user', '2024-08-03 13:07:00', '2024-08-03 13:07:00', 1, NULL),
(162, 162, 1, 'user', '2024-08-03 13:07:06', '2024-08-03 13:07:06', 1, NULL),
(163, 163, 1, 'user', '2024-08-03 13:07:12', '2024-08-03 13:07:12', 1, NULL),
(164, 164, 1, 'user', '2024-08-03 16:35:40', '2024-08-03 16:35:40', 1, NULL),
(165, 165, 1, 'user', '2024-08-03 16:43:20', '2024-08-03 16:43:20', 1, NULL),
(166, 166, 1, 'user', '2024-08-03 16:45:30', '2024-08-03 16:45:30', 1, NULL),
(167, 167, 1, 'user', '2024-08-03 16:45:33', '2024-08-03 16:45:33', 1, NULL),
(168, 168, 1, 'user', '2024-08-03 16:45:40', '2024-08-03 16:45:40', 1, NULL),
(169, 169, 1, 'user', '2024-08-03 16:45:47', '2024-08-03 16:45:47', 1, NULL),
(170, 170, 1, 'user', '2024-08-03 16:45:51', '2024-08-03 16:45:51', 1, NULL),
(171, 171, 1, 'user', '2024-08-03 16:45:56', '2024-08-03 16:45:56', 1, NULL),
(172, 172, 1, 'user', '2024-08-03 17:07:30', '2024-08-03 17:07:30', 1, NULL),
(173, 173, 1, 'user', '2024-08-03 17:08:27', '2024-08-03 17:08:27', 1, NULL),
(174, 174, 1, 'user', '2024-08-03 17:08:37', '2024-08-03 17:08:37', 1, NULL),
(175, 175, 1, 'user', '2024-08-03 17:13:33', '2024-08-03 17:13:33', 1, NULL),
(176, 176, 1, 'user', '2024-08-03 17:16:18', '2024-08-03 17:16:18', 1, NULL),
(177, 177, 1, 'user', '2024-08-03 17:20:32', '2024-08-03 17:20:32', 1, NULL),
(178, 178, 1, 'user', '2024-08-03 17:23:11', '2024-08-03 17:23:11', 1, NULL),
(179, 179, 1, 'user', '2024-08-03 17:26:42', '2024-08-03 17:26:42', 1, NULL),
(180, 180, 1, 'user', '2024-08-03 17:33:02', '2024-08-03 17:33:02', 1, NULL),
(181, 181, 1, 'user', '2024-08-03 17:38:19', '2024-08-03 17:38:19', 1, NULL),
(182, 182, 1, 'user', '2024-08-03 17:40:50', '2024-08-03 17:40:50', 1, NULL),
(183, 183, 1, 'user', '2024-08-03 17:40:59', '2024-08-03 17:40:59', 1, NULL),
(184, 184, 1, 'user', '2024-08-03 17:48:54', '2024-08-03 17:48:54', 1, NULL),
(185, 185, 1, 'user', '2024-08-03 17:49:02', '2024-08-03 17:49:02', 1, NULL),
(186, 186, 1, 'user', '2024-08-03 17:49:13', '2024-08-03 17:49:13', 1, NULL),
(187, 187, 1, 'user', '2024-08-03 17:49:20', '2024-08-03 17:49:20', 1, NULL),
(188, 188, 1, 'user', '2024-08-03 17:49:26', '2024-08-03 17:49:26', 1, NULL),
(189, 189, 1, 'user', '2024-08-03 17:49:31', '2024-08-03 17:49:31', 1, NULL),
(190, 190, 1, 'user', '2024-08-03 17:49:33', '2024-08-03 17:49:33', 1, NULL),
(191, 191, 1, 'user', '2024-08-03 18:59:01', '2024-08-03 18:59:01', 1, NULL),
(192, 192, 1, 'user', '2024-08-03 18:59:18', '2024-08-03 18:59:18', 1, NULL),
(193, 193, 1, 'user', '2024-08-03 18:59:29', '2024-08-03 18:59:29', 1, NULL),
(194, 194, 1, 'user', '2024-08-03 18:59:34', '2024-08-03 18:59:34', 1, NULL),
(195, 195, 1, 'user', '2024-08-03 18:59:37', '2024-08-03 18:59:37', 1, NULL),
(196, 196, 1, 'user', '2024-08-03 18:59:41', '2024-08-03 18:59:41', 1, NULL),
(197, 197, 1, 'user', '2024-08-03 19:01:04', '2024-08-03 19:01:04', 1, NULL),
(198, 198, 1, 'user', '2024-08-03 19:04:03', '2024-08-03 19:04:03', 1, NULL),
(199, 199, 1, 'user', '2024-08-03 19:09:26', '2024-08-03 19:09:26', 1, NULL),
(200, 200, 1, 'user', '2024-08-03 19:10:04', '2024-08-03 19:10:04', 1, NULL),
(201, 201, 1, 'user', '2024-08-03 19:11:17', '2024-08-03 19:11:17', 1, NULL),
(202, 202, 1, 'user', '2024-08-03 19:11:33', '2024-08-03 19:11:33', 1, NULL),
(203, 203, 1, 'user', '2024-08-03 19:11:44', '2024-08-03 19:11:44', 1, NULL),
(204, 204, 1, 'user', '2024-08-03 19:13:14', '2024-08-03 19:13:14', 1, NULL),
(205, 205, 1, 'user', '2024-08-03 19:13:39', '2024-08-03 19:13:39', 1, NULL),
(206, 206, 1, 'user', '2024-08-03 19:13:45', '2024-08-03 19:13:45', 1, NULL),
(207, 207, 1, 'user', '2024-08-03 19:13:55', '2024-08-03 19:13:55', 1, NULL),
(208, 208, 1, 'user', '2024-08-03 19:14:05', '2024-08-03 19:14:05', 1, NULL),
(209, 209, 1, 'user', '2024-08-03 19:14:34', '2024-08-03 19:14:34', 1, NULL),
(210, 210, 1, 'user', '2024-08-03 19:19:46', '2024-08-03 19:19:46', 1, NULL),
(211, 211, 1, 'user', '2024-08-03 19:20:44', '2024-08-03 19:20:44', 1, NULL),
(212, 212, 1, 'user', '2024-08-03 19:24:22', '2024-08-03 19:24:22', 1, NULL),
(213, 213, 1, 'user', '2024-08-03 19:24:35', '2024-08-03 19:24:35', 1, NULL),
(214, 214, 1, 'user', '2024-08-03 19:27:22', '2024-08-03 19:27:22', 1, NULL),
(215, 215, 1, 'user', '2024-08-03 19:29:04', '2024-08-03 19:29:04', 1, NULL),
(216, 216, 1, 'user', '2024-08-03 19:30:38', '2024-08-03 19:30:38', 1, NULL),
(217, 217, 1, 'user', '2024-08-03 19:32:12', '2024-08-03 19:32:12', 1, NULL),
(218, 218, 1, 'user', '2024-08-03 19:34:10', '2024-08-03 19:34:10', 1, NULL),
(219, 219, 1, 'user', '2024-08-03 19:36:51', '2024-08-03 19:36:51', 1, NULL),
(220, 220, 1, 'user', '2024-08-03 19:36:56', '2024-08-03 19:36:56', 1, NULL),
(221, 221, 1, 'user', '2024-08-03 19:37:01', '2024-08-03 19:37:01', 1, NULL),
(222, 222, 1, 'user', '2024-08-03 19:37:18', '2024-08-03 19:37:18', 1, NULL),
(223, 223, 1, 'user', '2024-08-03 19:37:23', '2024-08-03 19:37:23', 1, NULL),
(224, 224, 1, 'user', '2024-08-03 19:37:26', '2024-08-03 19:37:26', 1, NULL),
(225, 225, 1, 'user', '2024-08-03 19:42:27', '2024-08-03 19:42:27', 1, NULL),
(226, 226, 1, 'user', '2024-08-03 19:55:08', '2024-08-03 19:55:08', 1, NULL),
(227, 227, 1, 'user', '2024-08-03 19:55:16', '2024-08-03 19:55:16', 1, NULL),
(228, 228, 1, 'user', '2024-08-03 19:55:42', '2024-08-03 19:55:42', 1, NULL),
(229, 229, 1, 'user', '2024-08-03 19:55:47', '2024-08-03 19:55:47', 1, NULL),
(230, 230, 1, 'user', '2024-08-03 19:55:51', '2024-08-03 19:55:51', 1, NULL),
(231, 231, 1, 'user', '2024-08-03 19:55:52', '2024-08-03 19:55:52', 1, NULL),
(232, 232, 1, 'user', '2024-08-04 15:19:24', '2024-08-04 15:19:24', 1, NULL),
(233, 233, 1, 'user', '2024-08-04 15:20:02', '2024-08-04 15:20:02', 1, NULL),
(234, 234, 1, 'user', '2024-08-04 15:20:10', '2024-08-04 15:20:10', 1, NULL),
(235, 235, 1, 'user', '2024-08-04 15:20:28', '2024-08-04 15:20:28', 1, NULL),
(236, 236, 1, 'user', '2024-08-04 15:20:41', '2024-08-04 15:20:41', 1, NULL),
(237, 237, 1, 'user', '2024-08-04 15:20:46', '2024-08-04 15:20:46', 1, NULL),
(238, 238, 1, 'user', '2024-08-04 15:20:49', '2024-08-04 15:20:49', 1, NULL),
(239, 239, 1, 'user', '2024-08-04 19:34:50', '2024-08-04 19:34:50', 1, NULL),
(240, 240, 1, 'user', '2024-08-04 19:35:08', '2024-08-04 19:35:08', 1, NULL),
(241, 241, 1, 'user', '2024-08-04 19:41:13', '2024-08-04 19:41:13', 1, NULL),
(242, 242, 1, 'user', '2024-08-04 19:46:33', '2024-08-04 19:46:33', 1, NULL),
(243, 243, 1, 'user', '2024-08-04 19:59:33', '2024-08-04 19:59:33', 1, NULL),
(244, 244, 1, 'user', '2024-08-04 20:01:45', '2024-08-04 20:01:45', 1, NULL),
(245, 245, 1, 'user', '2024-08-04 20:06:19', '2024-08-04 20:06:19', 1, NULL),
(246, 246, 1, 'user', '2024-08-04 20:11:43', '2024-08-04 20:11:43', 1, NULL),
(247, 247, 1, 'user', '2024-08-04 20:11:51', '2024-08-04 20:11:51', 1, NULL),
(248, 248, 1, 'user', '2024-08-04 20:13:13', '2024-08-04 20:13:13', 1, NULL),
(249, 249, 1, 'user', '2024-08-04 20:17:33', '2024-08-04 20:17:33', 1, NULL),
(250, 250, 1, 'user', '2024-08-04 20:28:27', '2024-08-04 20:28:27', 1, NULL),
(251, 251, 1, 'user', '2024-08-04 20:31:03', '2024-08-04 20:31:03', 1, NULL),
(252, 252, 1, 'user', '2024-08-04 20:36:10', '2024-08-04 20:36:10', 1, NULL),
(253, 253, 1, 'user', '2024-08-04 20:36:23', '2024-08-04 20:36:23', 1, NULL),
(254, 254, 1, 'user', '2024-08-04 20:39:11', '2024-08-04 20:39:11', 1, NULL),
(255, 255, 1, 'user', '2024-08-04 20:44:57', '2024-08-04 20:44:57', 1, NULL),
(256, 256, 1, 'user', '2024-08-04 21:15:23', '2024-08-04 21:15:23', 1, NULL),
(257, 257, 1, 'user', '2024-08-04 21:21:21', '2024-08-04 21:21:21', 1, NULL),
(258, 258, 1, 'user', '2024-08-05 11:48:35', '2024-08-05 11:48:35', 1, NULL),
(259, 259, 1, 'user', '2024-08-05 11:48:46', '2024-08-05 11:48:46', 1, NULL),
(260, 260, 1, 'user', '2024-08-05 12:03:59', '2024-08-05 12:03:59', 1, NULL),
(261, 261, 1, 'user', '2024-08-06 10:57:27', '2024-08-06 10:57:27', 1, NULL),
(262, 262, 1, 'user', '2024-08-06 10:57:38', '2024-08-06 10:57:38', 1, NULL),
(263, 263, 1, 'user', '2024-08-13 21:17:34', '2024-08-13 21:17:34', 1, NULL),
(264, 264, 1, 'user', '2024-08-15 05:09:28', '2024-08-15 05:09:28', 1, NULL),
(265, 265, 1, 'user', '2024-08-15 05:11:42', '2024-08-15 05:11:42', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `id` int(10) UNSIGNED NOT NULL,
  `follower_id` int(11) NOT NULL,
  `followed_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`id`, `follower_id`, `followed_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genreables`
--

CREATE TABLE `genreables` (
  `id` int(10) UNSIGNED NOT NULL,
  `genre_id` int(11) NOT NULL,
  `genreable_id` int(11) NOT NULL,
  `genreable_type` varchar(10) NOT NULL DEFAULT 'App\\Artist'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genreables`
--

INSERT INTO `genreables` (`id`, `genre_id`, `genreable_id`, `genreable_type`) VALUES
(4, 1, 2, 'artist');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `popularity` int(10) UNSIGNED DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `uuid` varchar(10) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `likeable_id` int(10) UNSIGNED NOT NULL,
  `likeable_type` varchar(20) NOT NULL DEFAULT 'App\\Models\\Track',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `likeable_id`, `likeable_type`, `user_id`, `created_at`, `updated_at`) VALUES
(37, 539, 'track', 1, '2024-08-15 17:32:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `localizations`
--

CREATE TABLE `localizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `localizations`
--

INSERT INTO `localizations` (`id`, `name`, `created_at`, `updated_at`, `language`) VALUES
(1, 'English', '2024-04-11 17:25:04', '2024-06-02 18:28:46', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `lyrics`
--

CREATE TABLE `lyrics` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `track_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_synced` tinyint(1) NOT NULL DEFAULT 0,
  `duration` int(10) UNSIGNED DEFAULT NULL
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
(3, '2015_04_127_156842_create_social_profiles_table', 1),
(4, '2015_04_127_156842_create_users_oauth_table', 1),
(5, '2015_05_29_131549_create_settings_table', 1),
(6, '2015_09_04_155015_create_artists_table', 1),
(7, '2015_09_06_161342_create_albums_table', 1),
(8, '2015_09_06_161348_create_tracks_table', 1),
(9, '2015_09_11_145318_create_similar_artists_table', 1),
(10, '2015_09_17_135717_create_track_user_table', 1),
(11, '2015_09_26_124652_create_playlists_table', 1),
(12, '2015_09_26_131215_create_playlist_track_table', 1),
(13, '2015_09_26_135719_create_playlist_user_table', 1),
(14, '2015_10_16_135253_create_genres_table', 1),
(15, '2015_10_16_135754_create_genre_artist', 1),
(16, '2015_10_23_164355_create_follows_table', 1),
(17, '2015_11_18_134303_add_temp_id_to_albums', 1),
(18, '2015_11_18_134303_add_temp_id_to_tracks', 1),
(19, '2015_11_19_134203_change_fully_scraped_default', 1),
(20, '2016_03_03_143235_add_position_to_playlist_track_table', 1),
(21, '2016_03_14_143858_add_url_to_tracks_table', 1),
(22, '2016_03_24_148503_add_fully_scraped_index_to_albums_table', 1),
(23, '2016_03_24_148503_add_fully_scraped_index_to_artists_table', 1),
(24, '2016_03_24_148503_add_public_index_to_playlists_table', 1),
(25, '2016_03_28_150334_add_image_and_description_to_playlists_table', 1),
(26, '2016_05_02_150429_change_artists_fully_scraped_default', 1),
(27, '2016_05_12_190852_create_tags_table', 1),
(28, '2016_05_12_190958_create_taggables_table', 1),
(29, '2016_05_26_170044_create_uploads_table', 1),
(30, '2016_05_27_143158_create_uploadables_table', 1),
(31, '2016_07_14_153703_create_groups_table', 1),
(32, '2016_07_14_153921_create_user_group_table', 1),
(33, '2017_07_02_120142_create_pages_table', 1),
(34, '2017_07_11_122825_create_localizations_table', 1),
(35, '2017_08_26_131330_add_private_field_to_settings_table', 1),
(36, '2017_08_26_155115_add_timestamps_to_artists_table', 1),
(37, '2017_09_12_134214_set_playlist_user_owner_column_default_to_zero', 1),
(38, '2017_09_16_155557_create_lyrics_table', 1),
(39, '2017_09_17_144728_add_columns_to_users_table', 1),
(40, '2017_09_17_152854_make_password_column_nullable', 1),
(41, '2017_09_30_152855_make_settings_value_column_nullable', 1),
(42, '2017_10_01_152856_add_views_column_to_artists_table', 1),
(43, '2017_10_01_152857_add_views_column_to_albums_table', 1),
(44, '2017_10_01_152858_add_plays_column_to_tracks_table', 1),
(45, '2017_10_01_152859_add_views_column_to_playlists_table', 1),
(46, '2017_10_01_152897_add_public_column_to_uploads_table', 1),
(47, '2017_12_04_132911_add_avatar_column_to_users_table', 1),
(48, '2018_01_10_140732_create_subscriptions_table', 1),
(49, '2018_01_10_140746_add_billing_to_users_table', 1),
(50, '2018_01_10_161706_create_billing_plans_table', 1),
(51, '2018_07_24_113757_add_available_space_to_billing_plans_table', 1),
(52, '2018_07_24_124254_add_available_space_to_users_table', 1),
(53, '2018_07_26_142339_rename_groups_to_roles', 1),
(54, '2018_07_26_142842_rename_user_role_table_columns_to_roles', 1),
(55, '2018_08_07_124200_rename_uploads_to_file_entries', 1),
(56, '2018_08_07_124327_refactor_file_entries_columns', 1),
(57, '2018_08_07_130653_add_folder_path_column_to_file_entries_table', 1),
(58, '2018_08_07_140440_migrate_file_entry_users_to_many_to_many', 1),
(59, '2018_08_15_132225_move_uploads_into_subfolders', 1),
(60, '2018_08_31_104145_rename_uploadables_table', 1),
(61, '2018_08_31_104325_rename_file_entry_models_table_columns', 1),
(62, '2018_10_01_090754_add_image_and_popularity_columns_to_genres_table', 1),
(63, '2018_11_26_171703_add_type_and_title_columns_to_pages_table', 1),
(64, '2018_12_01_144233_change_unique_index_on_tags_table', 1),
(65, '2019_02_16_150049_delete_old_seo_settings', 1),
(66, '2019_02_24_141457_create_jobs_table', 1),
(67, '2019_03_11_162627_add_preview_token_to_file_entries_table', 1),
(68, '2019_03_12_160803_add_thumbnail_column_to_file_entries_table', 1),
(69, '2019_03_16_161836_add_paypal_id_column_to_billing_plans_table', 1),
(70, '2019_05_14_120930_index_description_column_in_file_entries_table', 1),
(71, '2019_06_08_120504_create_custom_domains_table', 1),
(72, '2019_06_13_140318_add_user_id_column_to_pages_table', 1),
(73, '2019_06_15_114320_rename_pages_table_to_custom_pages', 1),
(74, '2019_06_18_133933_create_permissions_table', 1),
(75, '2019_06_18_134203_create_permissionables_table', 1),
(76, '2019_06_18_135822_rename_permissions_columns', 1),
(77, '2019_07_08_122001_create_css_themes_table', 1),
(78, '2019_07_20_141752_create_invoices_table', 1),
(79, '2019_08_19_121112_add_global_column_to_custom_domains_table', 1),
(80, '2019_09_13_141123_change_plan_amount_to_float', 1),
(81, '2019_09_17_134818_rename_track_artists_legacy_column', 1),
(82, '2019_09_18_131640_create_artist_track_table', 1),
(83, '2019_09_18_131837_migrate_inline_artists_to_pivot', 1),
(84, '2019_09_19_123359_add_spotify_id_to_tracks_table', 1),
(85, '2019_09_19_161230_add_spotify_id_to_artists_table', 1),
(86, '2019_09_19_161305_add_spotify_id_to_albums_table', 1),
(87, '2019_09_21_134409_add_timestamps_to_artists_albums_tracks', 1),
(88, '2019_09_22_131629_add_user_id_columns_to_tracks_table', 1),
(89, '2019_09_22_131758_rename_track_user_table_to_liked_tracks', 1),
(90, '2019_09_26_144547_update_albums_to_v2', 1),
(91, '2019_09_30_152608_update_genre_artist_table_to_v2', 1),
(92, '2019_10_02_192908_create_reposts_table', 1),
(93, '2019_10_04_140608_create_user_profiles_table', 1),
(94, '2019_10_04_140907_create_user_links_table', 1),
(95, '2019_10_06_122651_create_channels_table', 1),
(96, '2019_10_06_132717_create_channelables_table', 1),
(97, '2019_10_14_171943_add_index_to_username_column', 1),
(98, '2019_10_15_171019_create_plays_table', 1),
(99, '2019_10_20_143522_create_comments_table', 1),
(100, '2019_10_20_150654_add_columns_to_comments_table', 1),
(101, '2019_10_23_134520_create_notifications_table', 1),
(102, '2019_10_31_154623_artist_bios', 1),
(103, '2019_10_31_154730_create_bio_images_table', 1),
(104, '2019_11_02_151404_move_inline_artist_bios_to_separate_tables', 1),
(105, '2019_11_14_195518_add_name_index_to_artists_table', 1),
(106, '2019_11_15_183635_add_display_name_column_to_genres_table', 1),
(107, '2019_11_16_150409_add_indexes_to_genreables_table', 1),
(108, '2019_11_21_144956_add_resource_id_and_type_to_custom_domains_table', 1),
(109, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(110, '2019_12_14_194512_rename_public_path_column_to_disk_prefix', 1),
(111, '2019_12_24_165237_change_file_size_column_default_value_to_0', 1),
(112, '2019_12_28_190836_update_file_entry_models_table_to_v2', 1),
(113, '2019_12_28_191105_move_user_file_entry_table_records_to_file_entry_models', 1),
(114, '2020_01_26_143733_create_notification_subscriptions_table', 1),
(115, '2020_03_03_140720_add_language_col_to_localizations_table', 1),
(116, '2020_03_03_143142_add_lang_code_to_existing_localizations', 1),
(117, '2020_03_30_150052_index_created_at_in_tracks_table', 1),
(118, '2020_04_09_154139_delete_old_notifications', 1),
(119, '2020_04_14_163347_add_hidden_column_to_plans_table', 1),
(120, '2020_06_27_180040_add_verified_at_column_to_users_table', 1),
(121, '2020_06_27_180253_move_confirmed_column_to_email_verified_at', 1),
(122, '2020_07_15_144024_fix_issues_with_migration_to_laravel_7', 1),
(123, '2020_07_22_165126_create_workspaces_table', 1),
(124, '2020_07_23_145652_create_workspace_invites_table', 1),
(125, '2020_07_23_164502_create_workspace_user_table', 1),
(126, '2020_07_26_165349_add_columns_to_roles_table', 1),
(127, '2020_07_29_141418_add_workspace_id_column_to_workspaceable_models', 1),
(128, '2020_07_30_152330_add_type_column_to_permissions_table', 1),
(129, '2020_08_29_165057_add_hide_nav_column_to_custom_pages_table', 1),
(130, '2021_04_16_184910_add_artist_id_column_to_user_profiles_table', 1),
(131, '2021_04_16_185035_move_artist_bios_to_user_profiles', 1),
(132, '2021_04_17_175627_rename_bio_images_table_to_profile_images', 1),
(133, '2021_04_22_163240_create_backStage_requests_table', 1),
(134, '2021_04_22_172459_add_internal_columm_to_roles_table', 1),
(135, '2021_04_22_174550_add_artists_column_to_roles_table', 1),
(136, '2021_04_24_164138_create_user_artist_table', 1),
(137, '2021_04_25_173110_add_verified_column_to_artists_table', 1),
(138, '2021_04_28_153802_create_artist_album_table', 1),
(139, '2021_04_28_153950_migrate_albums_to_many_to_many_artist_relation', 1),
(140, '2021_05_01_174819_add_collaborative_column_to_playlists_table', 1),
(141, '2021_05_02_172541_add_added_by_column_to_playlist_track_table', 1),
(142, '2021_05_02_174158_add_owner_id_column_to_playlists_table', 1),
(143, '2021_05_02_174256_hydrate_empty_owner_id_column_in_playlist_table', 1),
(144, '2021_05_02_194925_rename_owner_column_to_editor_in_playlist_user_table', 1),
(145, '2021_05_03_173446_add_deleted_column_to_comments_table', 1),
(146, '2021_05_03_174006_hydrate_added_by_column_in_playlist_track_table', 1),
(147, '2021_05_05_195829_add_spotify_id_column_to_playlists_table', 1),
(148, '2021_05_07_165545_add_config_column_to_channels_table', 1),
(149, '2021_05_07_165903_move_channel_settings_into_config_column', 1),
(150, '2021_05_09_180332_rename_user_links_table_to_profile_links', 1),
(151, '2021_05_09_180652_add_columns_to_profile_links_table', 1),
(152, '2021_05_10_162145_migrate_user_artist_type_albums', 1),
(153, '2021_05_10_164700_migrate_user_artist_type_tracks', 1),
(154, '2021_05_12_164940_add_advanced_column_to_permissions_table', 1),
(155, '2021_05_12_170639_replace_album_artist_track_permission_with_music_one', 1),
(156, '2021_05_18_163931_add_plays_column_to_albums_table', 1),
(157, '2021_05_20_190631_create_failed_jobs_table', 1),
(158, '2021_05_22_143750_add_owner_id_column_to_tracks_and_albums_table', 1),
(159, '2021_06_04_143405_add_workspace_id_col_to_custom_domains_table', 1),
(160, '2021_06_04_143406_add_workspace_id_col_to_custom_pages_table', 1),
(161, '2021_06_04_143406_add_workspace_id_col_to_file_entries_table', 1),
(162, '2021_06_05_182202_create_csv_exports_table', 1),
(163, '2021_06_18_161030_rename_gateway_col_in_subscriptions_table', 1),
(164, '2021_06_19_111939_add_owner_id_column_to_file_entries_table', 1),
(165, '2021_06_19_112035_materialize_owner_id_in_file_entries_table', 1),
(166, '2021_07_17_093454_add_created_at_col_to_user_role_table', 1),
(167, '2021_09_30_123758_slugify_tag_name_column', 1),
(168, '2021_10_13_132915_add_token_cols_to_social_profiles_table', 1),
(169, '2022_04_08_122553_change_default_workspace_id_from_null_to_zero', 1),
(170, '2022_04_23_115027_add_id_to_all_menus', 1),
(171, '2022_08_10_200344_add_produce_id_column_to_subscriptions_table', 1),
(172, '2022_08_11_160401_create_prices_table', 1),
(173, '2022_08_11_170041_create_products_table', 1),
(174, '2022_08_11_170117_move_billing_plans_to_products_and_prices_tables', 1),
(175, '2022_08_17_184337_add_card_expires_column_to_users_table', 1),
(176, '2022_08_24_192127_migrate_common_settings_to_v3', 1),
(177, '2022_09_03_164633_add_expires_at_column_to_personal_access_tokens_table', 1),
(178, '2022_09_27_124344_change_available_space_column_to_big_int', 1),
(179, '2022_09_28_121423_migrate_notif_settings_from_array_to_obj', 1),
(180, '2022_11_06_115107_increase_file_name_column_length', 1),
(181, '2023_02_01_172721_add_admin_sorting_indexes', 1),
(182, '2023_03_10_165309_index_created_at_column_in_artists_table', 1),
(183, '2023_03_17_175502_add_user_id_to_tags_table', 1),
(184, '2023_03_17_180355_change_name_index_to_name_user_id_in_tags_table', 1),
(185, '2023_03_27_124108_slugify_genre_name_column', 1),
(186, '2023_04_23_103944_rename_url_field_to_src_in_tracks_table', 1),
(187, '2023_04_23_104050_move_youtube_id_column_to_src', 1),
(188, '2023_05_09_124348_create_bans_table', 1),
(189, '2023_05_09_133514_add_banned_at_column_to_users_table', 1),
(190, '2023_05_11_200001_add_two_factor_columns_to_users_table', 1),
(191, '2023_05_13_132948_active_sessions_table', 1),
(192, '2023_05_16_150805_change_social_profiles_token_length', 1),
(193, '2023_06_10_131615_add_pos_and_neg_votes_to_comments_table', 1),
(194, '2023_06_10_132135_add_comment_ratings_table', 1),
(195, '2023_06_11_124655_create_comment_reports_table', 1),
(196, '2023_08_08_103123_add_timestamp_indexes_to_comments_table', 1),
(197, '2023_08_31_124910_update_model_types_from_namespace_to_string', 1),
(198, '2023_11_04_110555_add_type_column_to_channels_table', 1),
(199, '2023_11_04_125528_add_created_at_column_to_channelables_tables', 1),
(200, '2023_11_04_132126_migrate_channel_config_to_common', 1),
(201, '2023_12_10_124446_upgrade_css_themes_table_to_v3', 1),
(202, '2023_12_18_141540_add_search_indices_to_users_table', 1),
(203, '2023_12_19_122804_add_uuid_column_to_failed_jobs_table', 1),
(204, '2023_12_23_121618_encrypt_secret_settings', 1),
(205, '2024_02_05_103042_change_avatar_column_to_text', 1),
(206, '2024_03_21_140247_add_is_synced_field_to_lyrics_table', 1),
(207, '2024_03_25_134922_add_duration_to_lyrics_table', 1),
(208, '2024_04_25_220337_create_maintenance_mode_table', 2),
(209, '2024_04_27_110155_add_columns_to_tracks', 3),
(210, '2024_08_04_212528_add_duration_full_to_tracks_table', 4),
(211, '2024_08_09_141626_create_track_downloads_table', 5),
(212, '2024_08_12_103009_add_downloads_column_to_tracks_table', 6),
(213, '2024_08_12_174726_add_downloads_column_to_artists_table', 7),
(214, '2024_08_12_175250_add_downloads_column_to_albums_table', 8);

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

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('27721faf-e4bd-4383-97f7-89fe298a6715', 'App\\Notifications\\BackstageRequestWasHandled', 'user', 2, '{\"mainAction\":{\"action\":\"http:\\/\\/beatboss.localhost\\/artist\\/2\\/deil\",\"label\":\"Open artist profile\"},\"lines\":[{\"content\":\"Your backstage request was approved.\",\"type\":\"primary\"}]}', '2024-05-12 21:09:00', '2024-05-12 21:08:16', '2024-05-12 21:09:00'),
('66da5ff5-8052-41df-bc31-b905ae59301c', 'App\\Notifications\\BackstageRequestWasHandled', 'user', 2, '{\"mainAction\":{\"action\":\"http:\\/\\/deilonthebeat.localhost\\/artist\\/2\\/deil\",\"label\":\"Open artist profile\"},\"lines\":[{\"content\":\"Your backstage request was approved.\",\"type\":\"primary\"}]}', '2024-04-29 13:05:06', '2024-04-29 13:04:46', '2024-04-29 13:05:06'),
('8fbd5171-504b-4fc2-9c4d-0a718090b332', 'App\\Notifications\\BackstageRequestWasHandled', 'user', 2, '{\"mainAction\":{\"action\":\"http:\\/\\/beatboss.localhost\\/artist\\/2\\/deil\",\"label\":\"Open artist profile\"},\"lines\":[{\"content\":\"Your backstage request was approved.\",\"type\":\"primary\"}]}', '2024-05-22 16:49:13', '2024-05-22 16:48:47', '2024-05-22 16:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `notification_subscriptions`
--

CREATE TABLE `notification_subscriptions` (
  `id` char(36) NOT NULL,
  `notif_id` varchar(5) NOT NULL,
  `user_id` int(11) NOT NULL,
  `channels` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(3, 'touchdownrecords201@gmail.com', '$2y$10$KO3F113j/HPzJTH2OIS83eU34pzbXRXtGCkpn5R/0CX9YnzTgykb.', '2024-07-22 08:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `permissionables`
--

CREATE TABLE `permissionables` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(11) NOT NULL,
  `permissionable_id` int(11) NOT NULL,
  `permissionable_type` varchar(40) NOT NULL,
  `restrictions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissionables`
--

INSERT INTO `permissionables` (`id`, `permission_id`, `permissionable_id`, `permissionable_type`, `restrictions`) VALUES
(1, 3, 1, 'user', '[]'),
(2, 9, 1, 'role', '[]'),
(4, 22, 1, 'role', '[]'),
(5, 26, 1, 'role', '[]'),
(6, 32, 1, 'role', '[]'),
(7, 37, 1, 'role', '[]'),
(11, 55, 1, 'role', '[]'),
(13, 59, 1, 'role', '[]'),
(14, 60, 1, 'role', '[]'),
(28, 52, 3, 'role', '[]'),
(29, 18, 1, 'product', '[]'),
(35, 52, 4, 'product', '[]'),
(36, 18, 4, 'product', '[]'),
(46, 95, 3, 'role', '[]'),
(57, 51, 3, 'role', '[]'),
(58, 50, 3, 'role', '[]'),
(59, 49, 3, 'role', '[]'),
(64, 94, 3, 'role', '[]'),
(66, 48, 3, 'role', '[]'),
(67, 48, 1, 'role', '[]'),
(87, 67, 1, 'role', '[]'),
(88, 71, 1, 'role', '[]'),
(89, 75, 1, 'role', '[]'),
(90, 83, 1, 'role', '[]'),
(91, 63, 1, 'role', '[]'),
(93, 91, 1, 'role', '[]'),
(94, 92, 1, 'role', '[]'),
(96, 93, 1, 'role', '[]'),
(97, 95, 1, 'role', '[]'),
(98, 96, 1, 'role', '[]'),
(99, 96, 3, 'role', '[]'),
(100, 93, 3, 'role', '[]'),
(101, 92, 3, 'role', '[]'),
(102, 91, 3, 'role', '[]'),
(103, 9, 3, 'role', '[]'),
(112, 48, 2, 'role', '[]'),
(113, 51, 2, 'role', '[]'),
(114, 49, 2, 'role', '[]'),
(115, 9, 2, 'role', '[]'),
(116, 71, 2, 'role', '[]'),
(117, 75, 2, 'role', '[]'),
(118, 49, 1, 'role', '[]'),
(119, 51, 1, 'role', '[]'),
(121, 26, 2, 'role', '[]'),
(122, 37, 2, 'role', '[]'),
(123, 55, 2, 'role', '[]'),
(124, 59, 2, 'role', '[]'),
(125, 63, 2, 'role', '[]'),
(126, 67, 2, 'role', '[]'),
(127, 83, 2, 'role', '[]'),
(128, 91, 2, 'role', '[]'),
(129, 92, 2, 'role', '[]'),
(130, 93, 2, 'role', '[]'),
(131, 95, 2, 'role', '[]'),
(132, 56, 3, 'product', '[]'),
(133, 56, 2, 'product', '[]'),
(134, 91, 2, 'product', '[]'),
(135, 32, 2, 'role', '[]'),
(137, 22, 2, 'role', '[]'),
(144, 99, 2, 'product', '[]'),
(157, 98, 2, 'product', '[]'),
(158, 97, 2, 'product', '[]'),
(159, 21, 2, 'product', '[]'),
(160, 50, 1, 'role', '[]'),
(162, 50, 2, 'role', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `group` varchar(30) NOT NULL,
  `restrictions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'sitewide',
  `advanced` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `group`, `restrictions`, `created_at`, `updated_at`, `type`, `advanced`) VALUES
(1, 'admin.access', 'Access Admin', 'Required in order to access any admin area page.', 'admin', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(2, 'appearance.update', 'Update Appearance', 'Allows access to appearance editor.', 'admin', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(3, 'admin', 'Super Admin', 'Give all permissions to user.', 'admin', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(4, 'api.access', 'Access Api', 'Allow users to use the API and access API section in their account settings page.', 'api', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(5, 'roles.view', 'View Roles', 'Allow viewing ALL roles, regardless of who is the owner.', 'roles', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(6, 'roles.create', 'Create Roles', 'Allow creating new roles, regardless of who is the owner.', 'roles', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(7, 'roles.update', 'Update Roles', 'Allow updating ALL roles, regardless of who is the owner.', 'roles', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(8, 'roles.delete', 'Delete Roles', 'Allow deleting ALL roles, regardless of who is the owner.', 'roles', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(9, 'custom_pages.view', 'View Custom Pages', 'Allow viewing of all pages on the site, regardless of who created them. User can view their own pages without this permission.', 'custom_pages', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(10, 'custom_pages.create', 'Create Custom Pages', 'Allow creating new custom pages, regardless of who is the owner.', 'custom_pages', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of pages user will be able to create. Leave empty for unlimited.\"}]', '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(11, 'custom_pages.update', 'Update Custom Pages', 'Allow editing of all pages on the site, regardless of who created them. User can edit their own pages without this permission.', 'custom_pages', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(12, 'custom_pages.delete', 'Delete Custom Pages', 'Allow deleting of all pages on the site, regardless of who created them. User can delete their own pages without this permission.', 'custom_pages', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(13, 'custom_domains.view', 'View Custom Domains', 'Allow viewing all domains on the site, regardless of who created them. User can view their own domains without this permission.', 'custom_domains', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(14, 'custom_domains.create', 'Create Custom Domains', 'Allow user to connect their own custom domains.', 'custom_domains', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of domains user will be able to create. Leave empty for unlimited.\"}]', '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(15, 'custom_domains.update', 'Update Custom Domains', 'Allow editing all domains on the site, regardless of who created them. User can edit their own domains without this permission.', 'custom_domains', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(16, 'custom_domains.delete', 'Delete Custom Domains', 'Allow deleting all domains on the site, regardless of who created them. User can delete their own domains without this permission.', 'custom_domains', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(17, 'files.view', 'View Files', 'Allow viewing all uploaded files on the site. Users can view their own uploads without this permission.', 'files', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(18, 'files.create', 'Create Files', 'Allow uploading files on the site. This permission is used by any page where it is possible for user to upload files.', 'files', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(19, 'files.update', 'Update Files', 'Allow editing all uploaded files on the site. Users can edit their own uploads without this permission.', 'files', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(20, 'files.delete', 'Delete Files', 'Allow deleting all uploaded files on the site. Users can delete their own uploads (where applicable) without this permission.', 'files', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(21, 'files.download.mp3', 'Download MP3 Files', 'Allow downloading all uploaded MP3 files on the site. Users can download their own uploads (where applicable) without this permission.', 'files', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(22, 'users.view', 'View Users', 'Allow viewing user profile pages on the site. User can view their own profile without this permission.', 'users', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(23, 'users.create', 'Create Users', 'Allow creating users from admin area. Users can register for new accounts without this permission. Registration can be disabled from settings page.', 'users', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(24, 'users.update', 'Update Users', 'Allow editing details of any user on the site. User can edit their own details without this permission.', 'users', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(25, 'users.delete', 'Delete Users', 'Allow deleting any user on the site. User can request deletion of their own account without this permission.', 'users', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(26, 'localizations.view', 'View Localizations', 'Allow viewing ALL localizations, regardless of who is the owner.', 'localizations', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(27, 'localizations.create', 'Create Localizations', 'Allow creating new localizations, regardless of who is the owner.', 'localizations', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(28, 'localizations.update', 'Update Localizations', 'Allow updating ALL localizations, regardless of who is the owner.', 'localizations', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(29, 'localizations.delete', 'Delete Localizations', 'Allow deleting ALL localizations, regardless of who is the owner.', 'localizations', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(30, 'settings.view', 'View Settings', 'Allow viewing ALL settings, regardless of who is the owner.', 'settings', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(31, 'settings.update', 'Update Settings', 'Allow updating ALL settings, regardless of who is the owner.', 'settings', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(32, 'plans.view', 'View Plans', 'Allow viewing ALL plans, regardless of who is the owner.', 'plans', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(33, 'plans.create', 'Create Plans', 'Allow creating new plans, regardless of who is the owner.', 'plans', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(34, 'plans.update', 'Update Plans', 'Allow updating ALL plans, regardless of who is the owner.', 'plans', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(35, 'plans.delete', 'Delete Plans', 'Allow deleting ALL plans, regardless of who is the owner.', 'plans', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(36, 'invoices.view', 'View Invoices', 'Allow viewing ALL invoices, regardless of who is the owner.', 'invoices', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(37, 'tags.view', 'View Tags', 'Allow viewing ALL tags, regardless of who is the owner.', 'tags', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(38, 'tags.create', 'Create Tags', 'Allow creating new tags, regardless of who is the owner.', 'tags', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(39, 'tags.update', 'Update Tags', 'Allow updating ALL tags, regardless of who is the owner.', 'tags', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(40, 'tags.delete', 'Delete Tags', 'Allow deleting ALL tags, regardless of who is the owner.', 'tags', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(41, 'workspaces.view', 'View Workspaces', 'Allow viewing ALL workspaces, regardless of who is the owner.', 'workspaces', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(42, 'workspaces.create', 'Create Workspaces', 'Allow creating new workspaces, regardless of who is the owner.', 'workspaces', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of workspaces user will be able to create. Leave empty for unlimited.\"},{\"name\":\"member_count\",\"type\":\"number\",\"description\":\"Maximum number of members workspace is allowed to have.\"}]', '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(43, 'workspaces.update', 'Update Workspaces', 'Allow updating ALL workspaces, regardless of who is the owner.', 'workspaces', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(44, 'workspaces.delete', 'Delete Workspaces', 'Allow deleting ALL workspaces, regardless of who is the owner.', 'workspaces', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(45, 'workspace_members.invite', 'Invite Members', 'Allow user to invite new members into a workspace.', 'workspace_members', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'workspace', 0),
(46, 'workspace_members.update', 'Update Members', 'Allow user to change role of other members.', 'workspace_members', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'workspace', 0),
(47, 'workspace_members.delete', 'Delete Members', 'Allow user to remove members from workspace.', 'workspace_members', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'workspace', 0),
(48, 'music.view', 'View Music', 'Allows viewing of music content on the site (tracks, albums, artists, channels etc.)', 'music', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(49, 'music.play', 'Play Music', 'Allows playback of music and video on the site.', 'music', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(50, 'music.download', 'Download Music', 'Allows download of music and video on the site.', 'music', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(51, 'music.embed', 'Embed Music', 'Allows embedding of tracks, albums and playlists on external sites.', 'music', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(52, 'music.create', 'Create Music', 'Allows uploading and creating new tracks and albums on the site.', 'music', '[{\"name\":\"minutes\",\"type\":\"number\",\"description\":\"How many minutes all user tracks are allowed to take up. Leave empty for unlimited.\"},{\"name\":\"artist_selection\",\"type\":\"bool\",\"description\":\"Allows attaching track or album to any artist that exists on the site, instead of only the ones managed by current user.\"}]', '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(53, 'music.update', 'Update Music', 'Allows editing all media (album, track, artist etc.) on the site, even if user did not create them initially. User can edit their own media without this permission.', 'music', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(54, 'music.delete', 'Delete Music', 'Allows deleting any media item on the site, even if user did not create them initially. User can delete their own media without this permission.', 'music', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(55, 'playlists.view', 'View Playlists', 'Allow viewing and searching for playlists marked as public.', 'playlists', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(56, 'playlists.create', 'Create Playlists', 'Allow creating new playlists.', 'playlists', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(57, 'playlists.update', 'Update Playlists', 'Allow editing of all playlists, whether user is the owner or not. User can edit their own playlists without this permission.', 'playlists', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(58, 'playlists.delete', 'Delete Playlists', 'Allow deleting any playlist, whether user is the owner or not. User can delete their own playlists without this permission.', 'playlists', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(59, 'comments.view', 'View Comments', 'Allow viewing a single comment or list of comments on the site.', 'comments', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(60, 'comments.create', 'Create Comments', 'Allow creating new comments.', 'comments', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(61, 'comments.update', 'Update Comments', 'Allow editing of all comments, whether user created that comment or not. User can edit their own comments without this permission.', 'comments', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(62, 'comments.delete', 'Delete Comments', 'Allow deleting any comment, whether user created that comment or not. User can delete their own comments without this permission.', 'comments', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(63, 'artists.view', 'View Artists', 'Allow viewing artist page and searching for artists.', 'artists', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(64, 'artists.create', 'Create Artists', 'Allow creating new artists.', 'artists', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(65, 'artists.update', 'Update Artists', 'Allow editing of all artists, whether user has created them or not.', 'artists', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(66, 'artists.delete', 'Delete Artists', 'Allow deleting any artist, whether user has created them or not.', 'artists', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(67, 'albums.view', 'View Albums', 'Allow viewing album pages and searching for albums.', 'albums', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(68, 'albums.create', 'Create Albums', 'Allow creating new albums.', 'albums', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(69, 'albums.update', 'Update Albums', 'Allow editing of all albums, whether user has created them or not.', 'albums', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(70, 'albums.delete', 'Delete Albums', 'Allow deleting any album, whether user has created them or not.', 'albums', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(71, 'tracks.view', 'View Tracks', 'Allow viewing track page and searching for tracks.', 'tracks', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(72, 'tracks.create', 'Create Tracks', 'Allow creating new tracks.', 'tracks', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(73, 'tracks.update', 'Update Tracks', 'Allow editing of all tracks, whether user has created them or not.', 'tracks', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(74, 'tracks.delete', 'Delete Tracks', 'Allow deleting any track, whether user has created them or not.', 'tracks', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(75, 'genres.view', 'View Genres', 'Allow viewing genre pages and searching for genres.', 'genres', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(76, 'genres.create', 'Create Genres', 'Allow creating new genres.', 'genres', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(77, 'genres.update', 'Update Genres', 'Allow editing of all genres, whether user has created them or not.', 'genres', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(78, 'genres.delete', 'Delete Genres', 'Allow deleting any genre, whether user has created them or not.', 'genres', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(79, 'lyrics.view', 'View Lyrics', 'Allow viewing and searching for lyrics.', 'lyrics', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(80, 'lyrics.create', 'Create Lyrics', 'Allow creating new lyrics.', 'lyrics', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(81, 'lyrics.update', 'Update Lyrics', 'Allow editing of all lyrics, whether user has created them or not.', 'lyrics', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(82, 'lyrics.delete', 'Delete Lyrics', 'Allow deleting any lyric, whether user has created them or not.', 'lyrics', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(83, 'channels.view', 'View Channels', 'Allow viewing channels on the site.', 'channels', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(84, 'channels.create', 'Create Channels', 'Allow creating new channels in admin area.', 'channels', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(85, 'channels.update', 'Update Channels', 'Allow editing of all channels in admin area.', 'channels', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(86, 'channels.delete', 'Delete Channels', 'Allow deleting of all channels in admin area.', 'channels', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(87, 'backstageRequests.view', 'View BackstageRequests', 'Allow viewing backstage requests.', 'backstage_requests', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(88, 'backstageRequests.create', 'Create BackstageRequests', 'Allow creating new backstage requests.', 'backstage_requests', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(89, 'backstageRequests.update', 'Update BackstageRequests', 'Allow editing of all backstage requests, whether user has created them or not.', 'backstage_requests', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(90, 'backstageRequests.delete', 'Delete BackstageRequests', 'Allow deleting any backstage request, whether user has created them or not.', 'backstage_requests', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(91, 'accountPage.view', 'View AccountPage', 'Allow view account page.', 'other_pages', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(92, 'menuPage.view', 'View MenuPage', 'Allow view menu page.', 'other_pages', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(93, 'contactPage.view', 'View ContactPage', 'Allow view contact page.', 'other_pages', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(94, 'radioPage.view', 'View RadioPage', 'Allow view radio page.', 'other_pages', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(95, 'searchPage.view', 'View SearchPage', 'Allow view search page.', 'other_pages', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(96, 'libraryPage.view', 'View LibraryPage', 'Allow view library page.', 'other_pages', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(97, 'files.download.wav', 'Download WAV Files', 'Allow downloading all uploaded WAV files on the site. Users can download their own uploads (where applicable) without this permission.', 'files', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(98, 'files.download.zip', 'Download ZIP Files', 'Allow downloading all uploaded ZIP files on the site. Users can download their own uploads (where applicable) without this permission.', 'files', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(99, 'files.download.pdf', 'Download PDF Files', 'Allow downloading all uploaded PDF files on the site. Users can download their own uploads (where applicable) without this permission.', 'files', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `collaborative` tinyint(1) NOT NULL DEFAULT 0,
  `plays` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `spotify_id` char(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `public`, `created_at`, `updated_at`, `image`, `description`, `views`, `collaborative`, `plays`, `owner_id`, `spotify_id`) VALUES
(3, 'Pohádkový playlist', 1, '2024-07-31 18:41:54', '2024-08-02 14:32:52', 'storage/playlist_media/c60a469b-55b6-4a03-8891-cb6d0bcd7e59.jpg', 'Pohádkový playlist pro posluchače...ten nejlepší výběr ukázek!', 2, 0, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `playlist_track`
--

CREATE TABLE `playlist_track` (
  `id` int(10) UNSIGNED NOT NULL,
  `playlist_id` int(10) UNSIGNED NOT NULL,
  `track_id` int(10) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playlist_track`
--

INSERT INTO `playlist_track` (`id`, `playlist_id`, `track_id`, `position`, `added_by`) VALUES
(2, 3, 537, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `playlist_user`
--

CREATE TABLE `playlist_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `playlist_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `editor` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playlist_user`
--

INSERT INTO `playlist_user` (`id`, `playlist_id`, `user_id`, `editor`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(13,2) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `currency_position` tinyint(1) NOT NULL DEFAULT 1,
  `interval` varchar(255) NOT NULL DEFAULT 'month',
  `interval_count` int(11) NOT NULL DEFAULT 1,
  `product_id` int(11) NOT NULL,
  `stripe_id` varchar(50) DEFAULT NULL,
  `paypal_id` varchar(50) DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `amount`, `currency`, `currency_position`, `interval`, `interval_count`, `product_id`, `stripe_id`, `paypal_id`, `default`, `created_at`, `updated_at`) VALUES
(1, 22410.00, 'CZK', 0, 'year', 1, 2, 'price_1PFbo2HbhwwwUI19XjzKeXtd', NULL, 0, '2024-04-11 17:25:04', '2024-08-12 07:28:11'),
(3, 2490.00, 'CZK', 0, 'month', 1, 2, 'price_1PFbo1HbhwwwUI19Al6iiSY2', NULL, 0, '2024-04-11 17:25:04', '2024-08-12 07:28:11'),
(4, 11610.00, 'CZK', 0, 'year', 1, 3, 'price_1PFbo4HbhwwwUI19TYWrn7kK', NULL, 0, '2024-05-02 05:35:36', '2024-08-03 10:40:02'),
(5, 1290.00, 'CZK', 0, 'month', 1, 3, 'price_1PFbo3HbhwwwUI196JvjbzCX', NULL, 0, '2024-05-02 05:35:36', '2024-08-03 10:40:02'),
(6, 8.00, 'CZK', 0, 'year', 1, 4, 'price_1PFbo5HbhwwwUI1905LzjF2S', NULL, 0, '2024-05-11 06:25:39', '2024-05-12 10:47:13'),
(7, 10.00, 'CZK', 0, 'month', 1, 4, 'price_1PFbo5HbhwwwUI19yHo1Er2k', NULL, 0, '2024-05-11 06:25:39', '2024-05-12 10:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `uuid` char(36) NOT NULL,
  `feature_list` text DEFAULT NULL,
  `position` smallint(6) NOT NULL DEFAULT 0,
  `recommended` tinyint(1) NOT NULL DEFAULT 0,
  `free` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `available_space` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `uuid`, `feature_list`, `position`, `recommended`, `free`, `hidden`, `available_space`, `created_at`, `updated_at`) VALUES
(1, 'LISTENER', 'Ideal for listeners or buyers who appreciate the artistry of music and want easy access to premium tracks', '0a49d770-afce-4fa4-bbde-489f6472904b', '[\"Listen beats you like\",\"Create your own playlists\",\"Buy beats for your music\"]', 0, 0, 1, 1, NULL, '2024-04-11 17:25:04', '2024-05-02 05:36:56'),
(2, 'PREMIUM', 'Vychutnejte si pohádky s možností stažení v PDF', '384eeac0-c070-402d-9060-5f81b0d858af', '[\"Neru\\u0161en\\u00fd poslech bez reklam\",\"HD WAV Studio kvalita zvuku\",\"PDF verze ke sta\\u017een\\u00ed\",\"Kdykoliv mo\\u017en\\u00e9 zru\\u0161it\"]', 2, 1, 0, 0, 1073741824, '2024-04-11 17:25:04', '2024-07-27 20:25:48'),
(3, 'STANDARD', 'Objevte svět pohádek s našimi pravidelnými podcasty', '8e40aa50-2c4b-4853-9734-8a4df6967e18', '[\"Neru\\u0161en\\u00fd poslech bez reklam\",\"HD WAV Studio kvalita zvuku\",\"Kdykoliv mo\\u017en\\u00e9 zru\\u0161it\"]', 1, 0, 0, 0, NULL, '2024-05-02 05:35:36', '2024-07-27 19:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `profile_images`
--

CREATE TABLE `profile_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_images`
--

INSERT INTO `profile_images` (`id`, `url`, `artist_id`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'storage/artist_images/4bebeecc-f34d-46cd-afdf-fd3f2a52dc4e.png', 2, '2024-05-20 17:46:21', '2024-05-20 17:46:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile_links`
--

CREATE TABLE `profile_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `linkeable_id` int(11) NOT NULL,
  `linkeable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_links`
--

INSERT INTO `profile_links` (`id`, `url`, `title`, `linkeable_id`, `linkeable_type`, `created_at`, `updated_at`) VALUES
(1, 'https://facebook.com', 'facebook', 2, 'artist', '2024-05-20 17:46:21', '2024-05-20 17:46:21'),
(2, 'https://youtube.com', 'youtube', 2, 'artist', '2024-05-20 17:46:21', '2024-05-20 17:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `reposts`
--

CREATE TABLE `reposts` (
  `id` int(10) UNSIGNED NOT NULL,
  `repostable_id` int(11) NOT NULL,
  `repostable_type` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `legacy_permissions` text DEFAULT NULL,
  `default` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `guests` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'sitewide',
  `internal` tinyint(1) NOT NULL DEFAULT 0,
  `artists` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `legacy_permissions`, `default`, `guests`, `created_at`, `updated_at`, `description`, `type`, `internal`, `artists`) VALUES
(1, 'users', NULL, 1, 0, '2024-04-11 17:25:04', '2024-04-11 17:25:04', NULL, 'sitewide', 1, 0),
(2, 'guests', NULL, 0, 1, '2024-04-11 17:25:04', '2024-04-11 17:25:04', NULL, 'sitewide', 1, 0),
(3, 'artists', NULL, 0, 0, '2024-04-11 17:25:04', '2024-04-11 17:25:04', 'Role assigned to a user when their \"become artist request\" is approved.', 'sitewide', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `private` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`, `private`) VALUES
(1, 'dates.format', 'long', '2024-04-11 17:25:04', '2024-04-28 05:35:21', 0),
(2, 'dates.locale', 'en_US', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(3, 'dates.default_timezone', 'auto', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(4, 'locale.default', 'auto', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(5, 'social.google.enable', 'false', '2024-04-11 17:25:04', '2024-04-28 00:25:55', 0),
(6, 'social.twitter.enable', 'false', '2024-04-11 17:25:04', '2024-04-28 00:25:55', 0),
(7, 'social.facebook.enable', 'false', '2024-04-11 17:25:04', '2024-04-28 00:25:55', 0),
(8, 'social.compact_buttons', 'true', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(9, 'realtime.enable', 'false', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(10, 'registration.disable', 'false', '2024-04-11 17:25:04', '2024-05-14 05:22:38', 0),
(11, 'i18n.default_localization', 'en', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(12, 'i18n.enable', 'true', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(13, 'logging.sentry_public', '', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(14, 'realtime.pusher_key', '', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(15, 'themes.user_change', 'true', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(16, 'themes.default_id', '1', '2024-04-11 17:25:04', '2024-04-30 10:39:20', 0),
(17, 'billing.enable', 'true', '2024-04-11 17:25:04', '2024-04-29 07:37:06', 0),
(18, 'billing.paypal_test_mode', 'true', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(19, 'billing.stripe_test_mode', 'true', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(20, 'billing.stripe.enable', 'true', '2024-04-11 17:25:04', '2024-04-29 07:37:06', 0),
(21, 'billing.paypal.enable', 'false', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(22, 'billing.accepted_cards', '[\"visa\",\"mastercard\"]', '2024-04-11 17:25:04', '2024-05-12 10:47:56', 0),
(23, 'uploads.chunk', 'true', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(24, 'uploads.chunk_size', '10485760', '2024-04-11 17:25:04', '2024-05-29 07:12:01', 0),
(25, 'cookie_notice.enable', 'true', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(26, 'cookie_notice.position', 'bottom', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(27, 'branding.logo_dark', 'storage/branding_media/4be718ea-64e1-4c91-b5e2-8cc5ad95d0fe.png', '2024-04-11 17:25:04', '2024-07-22 06:51:10', 0),
(28, 'branding.logo_light', 'storage/branding_media/ce744aec-f86d-4686-995d-02663865a012.png', '2024-04-11 17:25:04', '2024-07-22 06:51:10', 0),
(29, 'homepage.type', 'landingPage', '2024-04-11 17:25:04', '2024-04-29 10:55:07', 0),
(30, 'homepage.value', '9', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(31, 'cache.report_minutes', '60', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(32, 'cache.homepage_days', '1', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(33, 'automation.artist_interval', '7', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(34, 'artist_bio_provider', 'wikipedia', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(35, 'wikipedia_language', 'en', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(36, 'youtube.suggested_quality', 'default', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(37, 'youtube.region_code', 'us', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(38, 'youtube.search_method', 'site', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(39, 'youtube.store_id', 'false', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(40, 'player.default_volume', '50', '2024-04-11 17:25:04', '2024-04-28 05:35:05', 0),
(41, 'player.hide_queue', 'true', '2024-04-11 17:25:04', '2024-04-30 10:38:38', 0),
(42, 'player.hide_video', 'true', '2024-04-11 17:25:04', '2024-04-28 05:30:06', 0),
(43, 'player.hide_video_button', '0', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(44, 'player.hide_lyrics', 'false', '2024-04-11 17:25:04', '2024-08-15 16:29:46', 0),
(45, 'player.lyrics_automate', '0', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(46, 'player.mobile.auto_open_overlay', '1', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(47, 'player.enable_download', 'true', '2024-04-11 17:25:04', '2024-08-15 07:16:01', 0),
(48, 'player.sort_method', 'local', '2024-04-11 17:25:04', '2024-04-28 05:35:05', 0),
(49, 'player.seekbar_type', 'waveform', '2024-04-11 17:25:04', '2024-04-28 04:23:38', 0),
(50, 'player.track_comments', 'true', '2024-04-11 17:25:04', '2024-04-28 05:30:06', 0),
(51, 'player.show_upload_btn', 'false', '2024-04-11 17:25:04', '2024-07-28 17:51:45', 0),
(52, 'uploads.autoMatch', 'true', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(53, 'player.default_artist_view', 'grid', '2024-04-11 17:25:04', '2024-04-28 05:35:05', 0),
(54, 'player.enable_repost', 'true', '2024-04-11 17:25:04', '2024-04-28 05:30:06', 0),
(55, 'artistPage.tabs', '[{\"id\":1,\"active\":true},{\"id\":2,\"active\":true},{\"id\":3,\"active\":true},{\"id\":4,\"active\":true},{\"id\":5,\"active\":true},{\"id\":6,\"active\":true}]', '2024-04-11 17:25:04', '2024-05-19 22:29:04', 0),
(56, 'menus', '[{\"name\":\"Sidebar Main\",\"id\":\"wGixKn\",\"positions\":[\"home-on-sidebar\"],\"items\":[{\"id\":\"pYY0cm\",\"label\":\"Home\",\"action\":\"\\/\",\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m12 5.69 5 4.5V18h-2v-6H9v6H7v-7.81l5-4.5M12 3 2 12h3v8h6v-6h2v6h6v-8h3L12 3z\"}}]},{\"label\":\"Top Charts\",\"action\":\"\\/charts\",\"type\":\"route\",\"model_id\":3,\"id\":\"6Ob_9X\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 17.27 18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21 12 17.27z\"}}]},{\"label\":\"Free Beats\",\"action\":\"\\/free-beats\",\"type\":\"route\",\"model_id\":13,\"id\":\"iUF1iU\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M20 4H4c-1.1 0-2 .9-2 2v3h2V6h16v3h2V6c0-1.1-.9-2-2-2zm0 14H4v-3H2v3c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2v-3h-2v3z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M14.89 7.55c-.34-.68-1.45-.68-1.79 0L10 13.76l-1.11-2.21A.988.988 0 0 0 8 11H2v2h5.38l1.72 3.45c.18.34.52.55.9.55s.72-.21.89-.55L14 10.24l1.11 2.21c.17.34.51.55.89.55h6v-2h-5.38l-1.73-3.45z\"}}]},{\"label\":\"Exclusive Only\",\"action\":\"\\/exclusive-only\",\"type\":\"route\",\"model_id\":14,\"id\":\"v_avs-\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19 3H5L2 9l10 12L22 9l-3-6zM9.62 8l1.5-3h1.76l1.5 3H9.62zM11 10v6.68L5.44 10H11zm2 0h5.56L13 16.68V10zm6.26-2h-2.65l-1.5-3h2.65l1.5 3zM6.24 5h2.65l-1.5 3H4.74l1.5-3z\"}}]},{\"label\":\"Public Playlists\",\"action\":\"\\/public-playlists\",\"type\":\"route\",\"model_id\":10,\"id\":\"yOEca-\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 4c4.41 0 8 3.59 8 8s-3.59 8-8 8-8-3.59-8-8 3.59-8 8-8zm0-2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm2 8H7v2h7v-2zm0-3H7v2h7V7zm-7 8h3v-2H7v2zm12-1.59L17.59 12l-3.54 3.54-1.41-1.41-1.41 1.41 2.83 2.83L19 13.41z\"}}]},{\"label\":\"New Releases\",\"action\":\"\\/new-releases\",\"type\":\"route\",\"model_id\":2,\"id\":\"F-k5zo\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m23 12-2.44-2.78.34-3.68-3.61-.82-1.89-3.18L12 3 8.6 1.54 6.71 4.72l-3.61.81.34 3.68L1 12l2.44 2.78-.34 3.69 3.61.82 1.89 3.18L12 21l3.4 1.46 1.89-3.18 3.61-.82-.34-3.68L23 12zm-4.51 2.11.26 2.79-2.74.62-1.43 2.41L12 18.82l-2.58 1.11-1.43-2.41-2.74-.62.26-2.8L3.66 12l1.85-2.12-.26-2.78 2.74-.61 1.43-2.41L12 5.18l2.58-1.11 1.43 2.41 2.74.62-.26 2.79L20.34 12l-1.85 2.11zM11 15h2v2h-2zm0-8h2v6h-2z\"}}]}]},{\"name\":\"Your library\",\"id\":\"NODtKW\",\"positions\":[\"library-on-sidebar\"],\"items\":[{\"id\":878,\"type\":\"route\",\"label\":\"Songs\",\"action\":\"\\/library\\/songs\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M10 21q-1.65 0-2.825-1.175Q6 18.65 6 17q0-1.65 1.175-2.825Q8.35 13 10 13q.575 0 1.062.137.488.138.938.413V3h6v4h-4v10q0 1.65-1.175 2.825Q11.65 21 10 21Z\"}}]},{\"id\":\"FulmpK\",\"label\":\"Playlists\",\"action\":\"\\/library\\/playlists\",\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M3 10h11v2H3zm0-4h11v2H3zm0 8h7v2H3zm13-1v8l6-4z\"}}]},{\"id\":574,\"type\":\"route\",\"label\":\"Albums\",\"action\":\"\\/library\\/albums\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 16.5q1.875 0 3.188-1.312Q16.5 13.875 16.5 12q0-1.875-1.312-3.188Q13.875 7.5 12 7.5q-1.875 0-3.188 1.312Q7.5 10.125 7.5 12q0 1.875 1.312 3.188Q10.125 16.5 12 16.5Zm0-3.5q-.425 0-.712-.288Q11 12.425 11 12t.288-.713Q11.575 11 12 11t.713.287Q13 11.575 13 12t-.287.712Q12.425 13 12 13Zm0 9q-2.075 0-3.9-.788-1.825-.787-3.175-2.137-1.35-1.35-2.137-3.175Q2 14.075 2 12t.788-3.9q.787-1.825 2.137-3.175 1.35-1.35 3.175-2.138Q9.925 2 12 2t3.9.787q1.825.788 3.175 2.138 1.35 1.35 2.137 3.175Q22 9.925 22 12t-.788 3.9q-.787 1.825-2.137 3.175-1.35 1.35-3.175 2.137Q14.075 22 12 22Zm0-2q3.35 0 5.675-2.325Q20 15.35 20 12q0-3.35-2.325-5.675Q15.35 4 12 4 8.65 4 6.325 6.325 4 8.65 4 12q0 3.35 2.325 5.675Q8.65 20 12 20Zm0-8Z\"}}]},{\"id\":933,\"type\":\"route\",\"label\":\"Artists\",\"action\":\"\\/library\\/artists\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 14q-1.25 0-2.125-.875T9 11V5q0-1.25.875-2.125T12 2q1.25 0 2.125.875T15 5v6q0 1.25-.875 2.125T12 14Zm0-6Zm-1 13v-3.075q-2.6-.35-4.3-2.325Q5 13.625 5 11h2q0 2.075 1.463 3.537Q9.925 16 12 16t3.538-1.463Q17 13.075 17 11h2q0 2.625-1.7 4.6-1.7 1.975-4.3 2.325V21Zm1-9q.425 0 .713-.288Q13 11.425 13 11V5q0-.425-.287-.713Q12.425 4 12 4t-.712.287Q11 4.575 11 5v6q0 .425.288.712.287.288.712.288Z\"}}]},{\"id\":775,\"type\":\"route\",\"label\":\"History\",\"action\":\"\\/library\\/history\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 21q-3.45 0-6.012-2.288Q3.425 16.425 3.05 13H5.1q.35 2.6 2.312 4.3Q9.375 19 12 19q2.925 0 4.962-2.038Q19 14.925 19 12t-2.038-4.963Q14.925 5 12 5q-1.725 0-3.225.8T6.25 8H9v2H3V4h2v2.35q1.275-1.6 3.113-2.475Q9.95 3 12 3q1.875 0 3.513.712 1.637.713 2.85 1.925 1.212 1.213 1.925 2.85Q21 10.125 21 12t-.712 3.512q-.713 1.638-1.925 2.85-1.213 1.213-2.85 1.926Q13.875 21 12 21Zm2.8-4.8L11 12.4V7h2v4.6l3.2 3.2Z\"}}]}]},{\"name\":\"Mobile\",\"id\":\"nKRHXG\",\"positions\":[\"mobile-bottom\"],\"items\":[{\"type\":\"route\",\"label\":\"Discover\",\"action\":\"\\/\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m12 5.69 5 4.5V18h-2v-6H9v6H7v-7.81l5-4.5M12 3 2 12h3v8h6v-6h2v6h6v-8h3L12 3z\"}}],\"id\":554},{\"type\":\"route\",\"label\":\"Search\",\"action\":\"\\/search\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m19.6 21-6.3-6.3q-.75.6-1.725.95Q10.6 16 9.5 16q-2.725 0-4.612-1.887Q3 12.225 3 9.5q0-2.725 1.888-4.613Q6.775 3 9.5 3t4.613 1.887Q16 6.775 16 9.5q0 1.1-.35 2.075-.35.975-.95 1.725l6.3 6.3ZM9.5 14q1.875 0 3.188-1.312Q14 11.375 14 9.5q0-1.875-1.312-3.188Q11.375 5 9.5 5 7.625 5 6.312 6.312 5 7.625 5 9.5q0 1.875 1.312 3.188Q7.625 14 9.5 14Z\"}}],\"id\":849},{\"type\":\"route\",\"label\":\"Your Music\",\"action\":\"\\/library\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12.5 15q1.05 0 1.775-.725Q15 13.55 15 12.5V7h3V5h-4v5.5q-.325-.25-.7-.375-.375-.125-.8-.125-1.05 0-1.775.725Q10 11.45 10 12.5q0 1.05.725 1.775Q11.45 15 12.5 15ZM8 18q-.825 0-1.412-.587Q6 16.825 6 16V4q0-.825.588-1.413Q7.175 2 8 2h12q.825 0 1.413.587Q22 3.175 22 4v12q0 .825-.587 1.413Q20.825 18 20 18Zm0-2h12V4H8v12Zm-4 6q-.825 0-1.412-.587Q2 20.825 2 20V6h2v14h14v2ZM8 4v12V4Z\"}}],\"id\":669}]},{\"name\":\"Auth Dropdown\",\"id\":\"h8r6vg\",\"items\":[{\"label\":\"Admin area\",\"id\":\"upm1rv\",\"action\":\"\\/admin\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19 5v2h-4V5h4M9 5v6H5V5h4m10 8v6h-4v-6h4M9 17v2H5v-2h4M21 3h-8v6h8V3zM11 3H3v10h8V3zm10 8h-8v10h8V11zm-10 4H3v6h8v-6z\"}}],\"permissions\":[\"admin.access\"],\"target\":\"_self\"}],\"positions\":[\"auth-dropdown\"]},{\"name\":\"Admin Sidebar\",\"id\":\"2d43u1\",\"items\":[{\"label\":\"Analytics\",\"id\":\"886nz4\",\"action\":\"\\/admin\",\"type\":\"route\",\"condition\":\"admin\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19 3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 16H5V5h14v14z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M7 12h2v5H7zm8-5h2v10h-2zm-4 7h2v3h-2zm0-4h2v2h-2z\"}}],\"role\":1,\"permissions\":[\"admin.access\"],\"roles\":[]},{\"label\":\"Appearance\",\"id\":\"slcqm0\",\"action\":\"\\/admin\\/appearance\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m2.53 19.65 1.34.56v-9.03l-2.43 5.86c-.41 1.02.08 2.19 1.09 2.61zm19.5-3.7L17.07 3.98c-.31-.75-1.04-1.21-1.81-1.23-.26 0-.53.04-.79.15L7.1 5.95c-.75.31-1.21 1.03-1.23 1.8-.01.27.04.54.15.8l4.96 11.97c.31.76 1.05 1.22 1.83 1.23.26 0 .52-.05.77-.15l7.36-3.05c1.02-.42 1.51-1.59 1.09-2.6zm-9.2 3.8L7.87 7.79l7.35-3.04h.01l4.95 11.95-7.35 3.05z\"}},{\"tag\":\"circle\",\"attr\":{\"cx\":\"11\",\"cy\":\"9\",\"r\":\"1\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M5.88 19.75c0 1.1.9 2 2 2h1.45l-3.45-8.34v6.34z\"}}],\"permissions\":[\"appearance.update\"]},{\"label\":\"Settings\",\"id\":\"x5k484\",\"action\":\"\\/admin\\/settings\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19.43 12.98c.04-.32.07-.64.07-.98 0-.34-.03-.66-.07-.98l2.11-1.65c.19-.15.24-.42.12-.64l-2-3.46c-.09-.16-.26-.25-.44-.25-.06 0-.12.01-.17.03l-2.49 1c-.52-.4-1.08-.73-1.69-.98l-.38-2.65C14.46 2.18 14.25 2 14 2h-4c-.25 0-.46.18-.49.42l-.38 2.65c-.61.25-1.17.59-1.69.98l-2.49-1c-.06-.02-.12-.03-.18-.03-.17 0-.34.09-.43.25l-2 3.46c-.13.22-.07.49.12.64l2.11 1.65c-.04.32-.07.65-.07.98 0 .33.03.66.07.98l-2.11 1.65c-.19.15-.24.42-.12.64l2 3.46c.09.16.26.25.44.25.06 0 .12-.01.17-.03l2.49-1c.52.4 1.08.73 1.69.98l.38 2.65c.03.24.24.42.49.42h4c.25 0 .46-.18.49-.42l.38-2.65c.61-.25 1.17-.59 1.69-.98l2.49 1c.06.02.12.03.18.03.17 0 .34-.09.43-.25l2-3.46c.12-.22.07-.49-.12-.64l-2.11-1.65zm-1.98-1.71c.04.31.05.52.05.73 0 .21-.02.43-.05.73l-.14 1.13.89.7 1.08.84-.7 1.21-1.27-.51-1.04-.42-.9.68c-.43.32-.84.56-1.25.73l-1.06.43-.16 1.13-.2 1.35h-1.4l-.19-1.35-.16-1.13-1.06-.43c-.43-.18-.83-.41-1.23-.71l-.91-.7-1.06.43-1.27.51-.7-1.21 1.08-.84.89-.7-.14-1.13c-.03-.31-.05-.54-.05-.74s.02-.43.05-.73l.14-1.13-.89-.7-1.08-.84.7-1.21 1.27.51 1.04.42.9-.68c.43-.32.84-.56 1.25-.73l1.06-.43.16-1.13.2-1.35h1.39l.19 1.35.16 1.13 1.06.43c.43.18.83.41 1.23.71l.91.7 1.06-.43 1.27-.51.7 1.21-1.07.85-.89.7.14 1.13zM12 8c-2.21 0-4 1.79-4 4s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 6c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2z\"}}],\"permissions\":[\"settings.update\"]},{\"label\":\"Plans\",\"id\":\"7o42rt\",\"action\":\"\\/admin\\/plans\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M7 15h7v2H7zm0-4h10v2H7zm0-4h10v2H7zm12-4h-4.18C14.4 1.84 13.3 1 12 1c-1.3 0-2.4.84-2.82 2H5c-.14 0-.27.01-.4.04-.39.08-.74.28-1.01.55-.18.18-.33.4-.43.64-.1.23-.16.49-.16.77v14c0 .27.06.54.16.78s.25.45.43.64c.27.27.62.47 1.01.55.13.02.26.03.4.03h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-7-.25c.41 0 .75.34.75.75s-.34.75-.75.75-.75-.34-.75-.75.34-.75.75-.75zM19 19H5V5h14v14z\"}}],\"permissions\":[\"plans.update\"]},{\"label\":\"Subscriptions\",\"action\":\"\\/admin\\/subscriptions\",\"type\":\"route\",\"id\":\"sdcb5a\",\"condition\":\"admin\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M4 6h16v2H4zm2-4h12v2H6zm14 8H4c-1.1 0-2 .9-2 2v8c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2v-8c0-1.1-.9-2-2-2zm0 10H4v-8h16v8zm-10-7.27v6.53L16 16z\"}}],\"permissions\":[\"subscriptions.update\"]},{\"label\":\"Users\",\"action\":\"\\/admin\\/users\",\"type\":\"route\",\"id\":\"fzfb45\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 6c1.1 0 2 .9 2 2s-.9 2-2 2-2-.9-2-2 .9-2 2-2m0 10c2.7 0 5.8 1.29 6 2H6c.23-.72 3.31-2 6-2m0-12C9.79 4 8 5.79 8 8s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 10c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z\"}}],\"permissions\":[\"users.update\"]},{\"label\":\"Roles\",\"action\":\"\\/admin\\/roles\",\"type\":\"route\",\"id\":\"mwdkf0\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M9 13.75c-2.34 0-7 1.17-7 3.5V19h14v-1.75c0-2.33-4.66-3.5-7-3.5zM4.34 17c.84-.58 2.87-1.25 4.66-1.25s3.82.67 4.66 1.25H4.34zM9 12c1.93 0 3.5-1.57 3.5-3.5S10.93 5 9 5 5.5 6.57 5.5 8.5 7.07 12 9 12zm0-5c.83 0 1.5.67 1.5 1.5S9.83 10 9 10s-1.5-.67-1.5-1.5S8.17 7 9 7zm7.04 6.81c1.16.84 1.96 1.96 1.96 3.44V19h4v-1.75c0-2.02-3.5-3.17-5.96-3.44zM15 12c1.93 0 3.5-1.57 3.5-3.5S16.93 5 15 5c-.54 0-1.04.13-1.5.35.63.89 1 1.98 1 3.15s-.37 2.26-1 3.15c.46.22.96.35 1.5.35z\"}}],\"permissions\":[\"roles.update\"]},{\"id\":\"O3I9eJ\",\"label\":\"Upload\",\"action\":\"\\/admin\\/upload\",\"type\":\"route\",\"target\":\"_self\",\"permissions\":[\"music.create\"],\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M18 15v3H6v-3H4v3c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2v-3h-2zM7 9l1.41 1.41L11 7.83V16h2V7.83l2.59 2.58L17 9l-5-5-5 5z\"}}]},{\"id\":\"303113a\",\"type\":\"route\",\"label\":\"Channels\",\"action\":\"\\/admin\\/channels\",\"permissions\":[\"channels.update\"],\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M22 6h-5v8.18c-.31-.11-.65-.18-1-.18-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3V8h3V6zm-7 0H3v2h12V6zm0 4H3v2h12v-2zm-4 4H3v2h8v-2z\"}}]},{\"id\":\"nVKg0I\",\"label\":\"Artists\",\"action\":\"\\/admin\\/artists\",\"permissions\":[\"artists.update\"],\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 14c1.66 0 3-1.34 3-3V5c0-1.66-1.34-3-3-3S9 3.34 9 5v6c0 1.66 1.34 3 3 3z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M17 11c0 2.76-2.24 5-5 5s-5-2.24-5-5H5c0 3.53 2.61 6.43 6 6.92V21h2v-3.08c3.39-.49 6-3.39 6-6.92h-2z\"}}]},{\"id\":\"Qq7wh9\",\"label\":\"Albums\",\"action\":\"\\/admin\\/albums\",\"permissions\":[\"albums.update\"],\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8zm0-12.5c-2.49 0-4.5 2.01-4.5 4.5s2.01 4.5 4.5 4.5 4.5-2.01 4.5-4.5-2.01-4.5-4.5-4.5zm0 5.5c-.55 0-1-.45-1-1s.45-1 1-1 1 .45 1 1-.45 1-1 1z\"}}]},{\"id\":\"9_7Uip\",\"label\":\"Tracks\",\"permissions\":[\"tracks.update\"],\"action\":\"\\/admin\\/tracks\",\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m12 3 .01 10.55c-.59-.34-1.27-.55-2-.55C7.79 13 6 14.79 6 17s1.79 4 4.01 4S14 19.21 14 17V7h4V3h-6zm-1.99 16c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2z\"}}]},{\"id\":\"57IFvN\",\"label\":\"Genres\",\"permissions\":[\"genres.update\"],\"action\":\"\\/admin\\/genres\",\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m21.41 11.58-9-9C12.05 2.22 11.55 2 11 2H4c-1.1 0-2 .9-2 2v7c0 .55.22 1.05.59 1.42l9 9c.36.36.86.58 1.41.58s1.05-.22 1.41-.59l7-7c.37-.36.59-.86.59-1.41s-.23-1.06-.59-1.42zM13 20.01 4 11V4h7v-.01l9 9-7 7.02z\"}},{\"tag\":\"circle\",\"attr\":{\"cx\":\"6.5\",\"cy\":\"6.5\",\"r\":\"1.5\"}}]},{\"id\":\"5eGJwT\",\"label\":\"Lyrics\",\"permissions\":[\"lyrics.update\"],\"action\":\"\\/admin\\/lyrics\",\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M2.5 4v3h5v12h3V7h5V4h-13zm19 5h-9v3h3v7h3v-7h3V9z\"}}]},{\"id\":\"zl5XVb\",\"label\":\"Playlists\",\"permissions\":[\"playlists.update\"],\"action\":\"\\/admin\\/playlists\",\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M3 10h11v2H3zm0-4h11v2H3zm0 8h7v2H3zm13-1v8l6-4z\"}}]},{\"id\":\"UXtCU9\",\"label\":\"Requests\",\"action\":\"\\/admin\\/backstage-requests\",\"permissions\":[\"requests.update\"],\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M14 2H6c-1.1 0-1.99.9-1.99 2L4 20c0 1.1.89 2 1.99 2H18c1.1 0 2-.9 2-2V8l-6-6zm4 18H6V4h7v5h5v11zm-9.18-6.95L7.4 14.46 10.94 18l5.66-5.66-1.41-1.41-4.24 4.24-2.13-2.12z\"}}]},{\"id\":\"31pLaw\",\"label\":\"Comments\",\"action\":\"\\/admin\\/comments\",\"permissions\":[\"comments.update\"],\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M21.99 4c0-1.1-.89-2-1.99-2H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h14l4 4-.01-18zM20 4v13.17L18.83 16H4V4h16zM6 12h12v2H6zm0-3h12v2H6zm0-3h12v2H6z\"}}]},{\"label\":\"Pages\",\"action\":\"\\/admin\\/custom-pages\",\"type\":\"route\",\"id\":\"63bwv9\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19 5v14H5V5h14m0-2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M14 17H7v-2h7v2zm3-4H7v-2h10v2zm0-4H7V7h10v2z\"}}],\"permissions\":[\"custom_pages.update\"]},{\"label\":\"Tags\",\"action\":\"\\/admin\\/tags\",\"type\":\"route\",\"id\":\"2x0pzq\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M17.63 5.84C17.27 5.33 16.67 5 16 5L5 5.01C3.9 5.01 3 5.9 3 7v10c0 1.1.9 1.99 2 1.99L16 19c.67 0 1.27-.33 1.63-.84L22 12l-4.37-6.16zM16 17H5V7h11l3.55 5L16 17z\"}}],\"permissions\":[\"tags.update\"]},{\"label\":\"Files\",\"action\":\"\\/admin\\/files\",\"type\":\"route\",\"id\":\"vguvti\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M16 1H4c-1.1 0-2 .9-2 2v14h2V3h12V1zm-1 4H8c-1.1 0-1.99.9-1.99 2L6 21c0 1.1.89 2 1.99 2H19c1.1 0 2-.9 2-2V11l-6-6zM8 21V7h6v5h5v9H8z\"}}],\"permissions\":[\"files.update\"]},{\"label\":\"Localizations\",\"action\":\"\\/admin\\/localizations\",\"type\":\"route\",\"id\":\"w91yql\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m12.87 15.07-2.54-2.51.03-.03c1.74-1.94 2.98-4.17 3.71-6.53H17V4h-7V2H8v2H1v1.99h11.17C11.5 7.92 10.44 9.75 9 11.35 8.07 10.32 7.3 9.19 6.69 8h-2c.73 1.63 1.73 3.17 2.98 4.56l-5.09 5.02L4 19l5-5 3.11 3.11.76-2.04zM18.5 10h-2L12 22h2l1.12-3h4.75L21 22h2l-4.5-12zm-2.62 7 1.62-4.33L19.12 17h-3.24z\"}}],\"permissions\":[\"localizations.update\"]},{\"label\":\"Ads\",\"action\":\"\\/admin\\/ads\",\"type\":\"route\",\"id\":\"ohj4qk\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M17 1H7c-1.1 0-2 .9-2 2v18c0 1.1.9 2 2 2h10c1.1 0 2-.9 2-2V3c0-1.1-.9-2-2-2zM7 4V3h10v1H7zm0 14V6h10v12H7zm0 3v-1h10v1H7z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M16 7H8v2h8V7z\"}}],\"permissions\":[\"settings.update\"]}],\"positions\":[\"admin-sidebar\"]},{\"name\":\"Sidebar Studio\",\"id\":\"YYekpgZC89\",\"positions\":[\"studio-on-sidebar\"],\"items\":[{\"id\":\"tFLhjC\",\"label\":\"Tracks\",\"action\":\"\\/backstage\\/tracks\",\"type\":\"route\",\"target\":\"_self\",\"roles\":[3],\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m12 3 .01 10.55c-.59-.34-1.27-.55-2-.55C7.79 13 6 14.79 6 17s1.79 4 4.01 4S14 19.21 14 17V7h4V3h-6zm-1.99 16c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2z\"}}]},{\"id\":\"5tIGgp\",\"type\":\"route\",\"target\":\"_self\",\"label\":\"Licenses & Contacts\",\"action\":\"\\/backstage\\/licenses\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m16.66 4.52 2.83 2.83-2.83 2.83-2.83-2.83 2.83-2.83M9 5v4H5V5h4m10 10v4h-4v-4h4M9 15v4H5v-4h4m7.66-13.31L11 7.34 16.66 13l5.66-5.66-5.66-5.65zM11 3H3v8h8V3zm10 10h-8v8h8v-8zm-10 0H3v8h8v-8z\"}}],\"roles\":[3]},{\"id\":\"XKA0rt\",\"label\":\"Upload Preferences\",\"action\":\"https:\\/\\/beatboss.cz\\/backstage\\/upload\",\"type\":\"link\",\"target\":\"_self\",\"roles\":[],\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M20 4H4c-1.1 0-2 .9-2 2v3h2V6h16v3h2V6c0-1.1-.9-2-2-2zm0 14H4v-3H2v3c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2v-3h-2v3z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M14.89 7.55c-.34-.68-1.45-.68-1.79 0L10 13.76l-1.11-2.21A.988.988 0 0 0 8 11H2v2h5.38l1.72 3.45c.18.34.52.55.9.55s.72-.21.89-.55L14 10.24l1.11 2.21c.17.34.51.55.89.55h6v-2h-5.38l-1.73-3.45z\"}}]},{\"id\":\"aYRyAK\",\"type\":\"link\",\"target\":\"_blank\",\"label\":\"Store Builder\",\"action\":\"https:\\/\\/beatboss.cz\\/store\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m21.9 8.89-1.05-4.37c-.22-.9-1-1.52-1.91-1.52H5.05c-.9 0-1.69.63-1.9 1.52L2.1 8.89c-.24 1.02-.02 2.06.62 2.88.08.11.19.19.28.29V19c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2v-6.94c.09-.09.2-.18.28-.28.64-.82.87-1.87.62-2.89zm-2.99-3.9 1.05 4.37c.1.42.01.84-.25 1.17-.14.18-.44.47-.94.47-.61 0-1.14-.49-1.21-1.14L16.98 5l1.93-.01zM13 5h1.96l.54 4.52c.05.39-.07.78-.33 1.07-.22.26-.54.41-.95.41-.67 0-1.22-.59-1.22-1.31V5zM8.49 9.52 9.04 5H11v4.69c0 .72-.55 1.31-1.29 1.31-.34 0-.65-.15-.89-.41-.25-.29-.37-.68-.33-1.07zm-4.45-.16L5.05 5h1.97l-.58 4.86c-.08.65-.6 1.14-1.21 1.14-.49 0-.8-.29-.93-.47-.27-.32-.36-.75-.26-1.17zM5 19v-6.03c.08.01.15.03.23.03.87 0 1.66-.36 2.24-.95.6.6 1.4.95 2.31.95.87 0 1.65-.36 2.23-.93.59.57 1.39.93 2.29.93.84 0 1.64-.35 2.24-.95.58.59 1.37.95 2.24.95.08 0 .15-.02.23-.03V19H5z\"}}]}]},{\"name\":\"Sidebar Support\",\"id\":\"aip3iAuBg2\",\"positions\":[\"support-on-sidebar\"],\"items\":[{\"id\":\"ApoffS\",\"label\":\"Help Center\",\"action\":\"https:\\/\\/support.beatboss.cz\\/\",\"type\":\"link\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M21 12.22C21 6.73 16.74 3 12 3c-4.69 0-9 3.65-9 9.28-.6.34-1 .98-1 1.72v2c0 1.1.9 2 2 2h1v-6.1c0-3.87 3.13-7 7-7s7 3.13 7 7V19h-8v2h8c1.1 0 2-.9 2-2v-1.22c.59-.31 1-.92 1-1.64v-2.3c0-.7-.41-1.31-1-1.62z\"}},{\"tag\":\"circle\",\"attr\":{\"cx\":\"9\",\"cy\":\"13\",\"r\":\"1\"}},{\"tag\":\"circle\",\"attr\":{\"cx\":\"15\",\"cy\":\"13\",\"r\":\"1\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M18 11.03C17.52 8.18 15.04 6 12.05 6c-3.03 0-6.29 2.51-6.03 6.45 2.47-1.01 4.33-3.21 4.86-5.89 1.31 2.63 4 4.44 7.12 4.47z\"}}]}]},{\"name\":\"Sidebar Footer\",\"id\":\"6EzZtnw36S\",\"positions\":[\"footer-on-sidebar\"],\"items\":[{\"id\":\"05N9iB\",\"label\":\"Privacy Policy\",\"action\":\"\\/pages\\/privacy-policy\",\"model_id\":1,\"type\":\"customPage\"},{\"id\":\"mnOBoQ\",\"label\":\"Terms of Service\",\"action\":\"\\/pages\\/terms-of-service\",\"model_id\":2,\"type\":\"customPage\"}]},{\"name\":\"Footer Company\",\"id\":\"KE4eJHWGHM\",\"positions\":[\"footer-company\"],\"items\":[{\"id\":\"w9hgU2\",\"label\":\"About us\",\"action\":\"\\/pages\\/about-us\",\"model_id\":3,\"type\":\"customPage\"}]},{\"name\":\"Footer Support\",\"id\":\"dHjhtejPNo\",\"positions\":[\"footer-support\"],\"items\":[{\"id\":\"oiHM2a\",\"label\":\"Contact us\",\"action\":\"\\/contact\",\"type\":\"route\",\"target\":\"_self\"}]},{\"name\":\"Footer Extra\",\"id\":\"fFVlb0oLlR\",\"positions\":[\"footer-extra\"],\"items\":[{\"id\":\"WTcS7u\",\"label\":\"News\",\"action\":\"\\/\",\"type\":\"route\",\"target\":\"_self\"}]},{\"name\":\"Footer Social Media\",\"id\":\"gE7QlGB1oI\",\"positions\":[\"footer-media\"],\"items\":[{\"id\":\"XUyRSr\",\"type\":\"link\",\"target\":\"_blank\",\"label\":\"Facebook\",\"action\":\"https:\\/\\/facebook.com\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M22 12c0-5.52-4.48-10-10-10S2 6.48 2 12c0 4.84 3.44 8.87 8 9.8V15H8v-3h2V9.5C10 7.57 11.57 6 13.5 6H16v3h-2c-.55 0-1 .45-1 1v2h3v3h-3v6.95c5.05-.5 9-4.76 9-9.95z\"}}]},{\"id\":\"Ibk2Yb\",\"type\":\"link\",\"target\":\"_blank\",\"label\":\"Instagram\",\"action\":\"https:\\/\\/instagram.com\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 0C8.74 0 8.333.015 7.053.072 5.775.132 4.905.333 4.14.63c-.789.306-1.459.717-2.126 1.384S.935 3.35.63 4.14C.333 4.905.131 5.775.072 7.053.012 8.333 0 8.74 0 12s.015 3.667.072 4.947c.06 1.277.261 2.148.558 2.913.306.788.717 1.459 1.384 2.126.667.666 1.336 1.079 2.126 1.384.766.296 1.636.499 2.913.558C8.333 23.988 8.74 24 12 24s3.667-.015 4.947-.072c1.277-.06 2.148-.262 2.913-.558.788-.306 1.459-.718 2.126-1.384.666-.667 1.079-1.335 1.384-2.126.296-.765.499-1.636.558-2.913.06-1.28.072-1.687.072-4.947s-.015-3.667-.072-4.947c-.06-1.277-.262-2.149-.558-2.913-.306-.789-.718-1.459-1.384-2.126C21.319 1.347 20.651.935 19.86.63c-.765-.297-1.636-.499-2.913-.558C15.667.012 15.26 0 12 0zm0 2.16c3.203 0 3.585.016 4.85.071 1.17.055 1.805.249 2.227.415.562.217.96.477 1.382.896.419.42.679.819.896 1.381.164.422.36 1.057.413 2.227.057 1.266.07 1.646.07 4.85s-.015 3.585-.074 4.85c-.061 1.17-.256 1.805-.421 2.227-.224.562-.479.96-.899 1.382-.419.419-.824.679-1.38.896-.42.164-1.065.36-2.235.413-1.274.057-1.649.07-4.859.07-3.211 0-3.586-.015-4.859-.074-1.171-.061-1.816-.256-2.236-.421-.569-.224-.96-.479-1.379-.899-.421-.419-.69-.824-.9-1.38-.165-.42-.359-1.065-.42-2.235-.045-1.26-.061-1.649-.061-4.844 0-3.196.016-3.586.061-4.861.061-1.17.255-1.814.42-2.234.21-.57.479-.96.9-1.381.419-.419.81-.689 1.379-.898.42-.166 1.051-.361 2.221-.421 1.275-.045 1.65-.06 4.859-.06l.045.03zm0 3.678c-3.405 0-6.162 2.76-6.162 6.162 0 3.405 2.76 6.162 6.162 6.162 3.405 0 6.162-2.76 6.162-6.162 0-3.405-2.76-6.162-6.162-6.162zM12 16c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4zm7.846-10.405c0 .795-.646 1.44-1.44 1.44-.795 0-1.44-.646-1.44-1.44 0-.794.646-1.439 1.44-1.439.793-.001 1.44.645 1.44 1.439z\"}}]},{\"id\":\"bgt6WR\",\"type\":\"link\",\"target\":\"_blank\",\"label\":\"Youtube\",\"action\":\"https:\\/\\/youtube.com\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M 5.6796875 2 L 7.1582031 7.34375 L 7.1582031 9.90625 L 8.4394531 9.90625 L 8.4394531 7.34375 L 9.9375 2 L 8.6464844 2 L 8.109375 4.4316406 C 7.958375 5.1416406 7.8623594 5.6462656 7.8183594 5.9472656 L 7.7792969 5.9472656 C 7.7162969 5.5262656 7.6202813 5.017875 7.4882812 4.421875 L 6.9707031 2 L 5.6796875 2 z M 11.431641 4.0175781 C 10.997641 4.0175781 10.647859 4.1023906 10.380859 4.2753906 C 10.113859 4.4473906 9.9170156 4.7226094 9.7910156 5.0996094 C 9.6660156 5.4766094 9.6035156 5.9756563 9.6035156 6.5976562 L 9.6035156 7.4375 C 9.6035156 8.0525 9.6575781 8.5450156 9.7675781 8.9160156 C 9.8775781 9.2870156 10.063219 9.5603281 10.324219 9.7363281 C 10.585219 9.9123281 10.944344 10 11.402344 10 C 11.848344 10 12.202891 9.9132344 12.462891 9.7402344 C 12.722891 9.5672344 12.911344 9.295875 13.027344 8.921875 C 13.143344 8.547875 13.201172 8.0535 13.201172 7.4375 L 13.201172 6.5976562 C 13.201172 5.9766562 13.142437 5.4794687 13.023438 5.1054688 C 12.904438 4.7324687 12.715031 4.45725 12.457031 4.28125 C 12.199031 4.10525 11.858641 4.0175781 11.431641 4.0175781 z M 13.878906 4.1308594 L 13.878906 8.4453125 C 13.878906 8.9793125 13.968391 9.3720469 14.150391 9.6230469 C 14.332391 9.8740469 14.615047 10 14.998047 10 C 15.550047 10 15.966187 9.7332188 16.242188 9.1992188 L 16.269531 9.1992188 L 16.382812 9.90625 L 17.400391 9.90625 L 17.400391 4.1308594 L 16.101562 4.1308594 L 16.101562 8.71875 C 16.051563 8.82575 15.975094 8.9134219 15.871094 8.9824219 C 15.767094 9.0524219 15.659875 9.0859375 15.546875 9.0859375 C 15.414875 9.0859375 15.320672 9.031875 15.263672 8.921875 C 15.206672 8.811875 15.177734 8.6271406 15.177734 8.3691406 L 15.177734 4.1308594 L 13.878906 4.1308594 z M 11.402344 4.9121094 C 11.584344 4.9121094 11.713156 5.0072187 11.785156 5.1992188 C 11.857156 5.3902187 11.892578 5.694375 11.892578 6.109375 L 11.892578 7.9082031 C 11.892578 8.3352031 11.857156 8.6440312 11.785156 8.8320312 C 11.713156 9.0200312 11.585297 9.1142344 11.404297 9.1152344 C 11.222297 9.1152344 11.096344 9.0200313 11.027344 8.8320312 C 10.957344 8.6440313 10.923828 8.3352031 10.923828 7.9082031 L 10.923828 6.109375 C 10.923828 5.695375 10.95925 5.3912188 11.03125 5.1992188 C 11.10325 5.0082187 11.226344 4.9121094 11.402344 4.9121094 z M 5 11 C 3.9 11 3 11.9 3 13 L 3 20 C 3 21.1 3.9 22 5 22 L 19 22 C 20.1 22 21 21.1 21 20 L 21 13 C 21 11.9 20.1 11 19 11 L 5 11 z M 12.048828 13 L 13.105469 13 L 13.105469 15.568359 L 13.113281 15.568359 C 13.208281 15.382359 13.344531 15.233141 13.519531 15.119141 C 13.694531 15.005141 13.883938 14.949219 14.085938 14.949219 C 14.345937 14.949219 14.549266 15.01825 14.697266 15.15625 C 14.845266 15.29425 14.953531 15.517219 15.019531 15.824219 C 15.085531 16.132219 15.117187 16.559469 15.117188 17.105469 L 15.117188 17.876953 L 15.119141 17.876953 C 15.119141 18.603953 15.030469 19.136516 14.855469 19.478516 C 14.680469 19.820516 14.408109 19.992188 14.037109 19.992188 C 13.830109 19.992188 13.642656 19.944609 13.472656 19.849609 C 13.302656 19.754609 13.174844 19.623984 13.089844 19.458984 L 13.066406 19.458984 L 12.955078 19.919922 L 12.048828 19.919922 L 12.048828 13 z M 5.4863281 13.246094 L 8.7382812 13.246094 L 8.7382812 14.130859 L 7.6484375 14.130859 L 7.6484375 19.919922 L 6.5761719 19.919922 L 6.5761719 14.130859 L 5.4863281 14.130859 L 5.4863281 13.246094 z M 17.097656 14.951172 C 17.473656 14.951172 17.762844 15.020203 17.964844 15.158203 C 18.165844 15.296203 18.307625 15.511734 18.390625 15.802734 C 18.472625 16.094734 18.513672 16.497719 18.513672 17.011719 L 18.513672 17.847656 L 16.677734 17.847656 L 16.677734 18.095703 C 16.677734 18.408703 16.686078 18.642828 16.705078 18.798828 C 16.724078 18.954828 16.762312 19.069625 16.820312 19.140625 C 16.878312 19.212625 16.967844 19.248047 17.089844 19.248047 C 17.253844 19.248047 17.366734 19.183641 17.427734 19.056641 C 17.488734 18.929641 17.522344 18.718875 17.527344 18.421875 L 18.474609 18.476562 C 18.479609 18.518563 18.482422 18.578344 18.482422 18.652344 C 18.482422 19.103344 18.358328 19.440109 18.111328 19.662109 C 17.864328 19.885109 17.517406 19.996094 17.066406 19.996094 C 16.525406 19.996094 16.145734 19.825328 15.927734 19.486328 C 15.709734 19.147328 15.601562 18.623109 15.601562 17.912109 L 15.601562 17.060547 C 15.601562 16.328547 15.714453 15.794031 15.939453 15.457031 C 16.164453 15.120031 16.551656 14.951172 17.097656 14.951172 z M 8.4101562 15.044922 L 9.5097656 15.044922 L 9.5097656 18.625 C 9.5097656 18.842 9.5340312 18.997844 9.5820312 19.089844 C 9.6300313 19.182844 9.7083125 19.228516 9.8203125 19.228516 C 9.9153125 19.228516 10.008703 19.199625 10.095703 19.140625 C 10.183703 19.082625 10.246062 19.007969 10.289062 18.917969 L 10.289062 15.044922 L 11.388672 15.044922 L 11.388672 19.919922 L 11.386719 19.919922 L 10.527344 19.919922 L 10.433594 19.322266 L 10.408203 19.322266 C 10.174203 19.774266 9.8244219 20 9.3574219 20 C 9.0334219 20 8.7965781 19.893641 8.6425781 19.681641 C 8.4885781 19.469641 8.4101563 19.1375 8.4101562 18.6875 L 8.4101562 15.044922 z M 17.074219 15.693359 C 16.957219 15.693359 16.870453 15.728875 16.814453 15.796875 C 16.758453 15.865875 16.721125 15.978766 16.703125 16.134766 C 16.684125 16.290766 16.675781 16.527703 16.675781 16.845703 L 16.675781 17.195312 L 17.478516 17.195312 L 17.478516 16.845703 C 17.478516 16.532703 17.468266 16.296766 17.447266 16.134766 C 17.427266 15.972766 17.388031 15.858969 17.332031 15.792969 C 17.276031 15.726969 17.191219 15.693359 17.074219 15.693359 z M 13.591797 15.728516 C 13.485797 15.728516 13.388828 15.770469 13.298828 15.855469 C 13.208828 15.940469 13.144422 16.049641 13.107422 16.181641 L 13.107422 18.949219 C 13.155422 19.034219 13.217922 19.097625 13.294922 19.140625 C 13.371922 19.182625 13.453922 19.205078 13.544922 19.205078 C 13.661922 19.205078 13.753266 19.163125 13.822266 19.078125 C 13.891266 18.993125 13.941703 18.850437 13.970703 18.648438 C 13.999703 18.447437 14.013672 18.1675 14.013672 17.8125 L 14.013672 17.185547 C 14.013672 16.803547 14.002516 16.509734 13.978516 16.302734 C 13.954516 16.095734 13.911562 15.946375 13.851562 15.859375 C 13.790563 15.772375 13.703797 15.728516 13.591797 15.728516 z\"}}]}]},{\"name\":\"Footer Copyright Left\",\"id\":\"9IROTJ8Wvs\",\"positions\":[\"footer-terms-two\"],\"items\":[{\"id\":\"vgHXGu\",\"label\":\"Privacy Policy\",\"action\":\"\\/pages\\/privacy-policy\",\"model_id\":1,\"type\":\"customPage\"},{\"id\":\"d32JXI\",\"label\":\"Terms of Service\",\"action\":\"\\/pages\\/terms-of-service\",\"model_id\":2,\"type\":\"customPage\"}]},{\"name\":\"Footer Copyright Right\",\"id\":\"ZDfLZKzjic\",\"positions\":[\"footer-terms-two\"],\"items\":[]},{\"name\":\"Mobile Account Guest\",\"id\":\"2edtkr2AcB\",\"positions\":[\"mobile-account-guest\"],\"items\":[{\"id\":\"-3gELP\",\"label\":\"Login\",\"action\":\"\\/login\",\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M11 7 9.6 8.4l2.6 2.6H2v2h10.2l-2.6 2.6L11 17l5-5-5-5zm9 12h-8v2h8c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2h-8v2h8v14z\"}}]},{\"id\":\"LHUSQb\",\"label\":\"Register\",\"action\":\"\\/register\",\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M10 4h4v4h-4zM4 16h4v4H4zm0-6h4v4H4zm0-6h4v4H4zm12 0h4v4h-4zm-5 13.86V20h2.1l5.98-5.97-2.12-2.12zm3-5.83V10h-4v4h2.03zm6.85-.47-1.41-1.41c-.2-.2-.51-.2-.71 0l-1.06 1.06 2.12 2.12 1.06-1.06c.2-.2.2-.51 0-.71z\"}}]},{\"id\":\"NnweE9\",\"label\":\"Forgot your password?\",\"action\":\"\\/forgot-password\",\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M21 10h-8.35C11.83 7.67 9.61 6 7 6c-3.31 0-6 2.69-6 6s2.69 6 6 6c2.61 0 4.83-1.67 5.65-4H13l2 2 2-2 2 2 4-4.04L21 10zM7 15c-1.65 0-3-1.35-3-3s1.35-3 3-3 3 1.35 3 3-1.35 3-3 3z\"}}]}]}]', '2024-04-11 17:25:04', '2024-07-22 07:18:21', 0),
(57, 'homepage.trending', 'false', '2024-04-11 17:25:04', '2024-04-29 20:33:36', 0),
(58, 'homepage.appearance', '{\"headerTitle\":\"Pono\\u0159te se do kouzeln\\u00fdch p\\u0159\\u00edb\\u011bh\\u016f a pro\\u017eijte \\u00fachvatn\\u00e1 dobrodru\\u017estv\\u00ed\",\"headerSubtitle\":\"\\\"Pro vytvo\\u0159en\\u00ed nebo obnoven\\u00ed \\u010dlenstv\\u00ed zadejte e-mail.\\\"\",\"headerImage\":\"storage\\/homepage\\/340ce40c-cb05-4ac0-b095-5f1374d41e19.jpg\",\"headerOverlayColor1\":\"#df78ff\",\"headerOverlayColor2\":\"#000000\",\"headerImageOpacity\":0.2,\"footerTitle\":\"Hled\\u00e1te poh\\u00e1dky pro d\\u011bti? Poslouchejte na\\u0161e podcasty s p\\u0159\\u00edb\\u011bhy pro mal\\u00e9 poslucha\\u010de!\",\"footerSubtitle\":\"Vstupte do sv\\u011bta \\u00fa\\u017easn\\u00fdch poh\\u00e1dek: Roz\\u0161i\\u0159te sv\\u00e9 mo\\u017enosti a objevte nov\\u00e9 p\\u0159\\u00edb\\u011bhy pro d\\u011bti!\",\"footerImage\":\"storage\\/homepage\\/10793f57-3131-44a5-a572-358d3e369000.jpg\",\"actions\":{\"inputText\":\"Search for artists, albums and tracks...\",\"inputButton\":\"Search\",\"cta1\":{\"label\":\"Signup Now\",\"type\":\"route\",\"action\":\"\\/register\"},\"cta2\":{\"label\":\"Explore\",\"type\":\"route\",\"action\":\"\\/discover\"},\"cta3\":{\"label\":\"Sign up for free\",\"type\":\"route\",\"action\":\"\\/register\"}},\"primaryFeatures\":[],\"secondaryFeatures\":[{\"title\":\"Vychutnejte si poslech kdykoliv a kdekoliv. Na ka\\u017ed\\u00e9m za\\u0159\\u00edzen\\u00ed.\",\"subtitle\":\"Svoboda v pln\\u00e9 m\\u00ed\\u0159e\",\"image\":\"images\\/landing\\/landing-feature-1.jpg\",\"description\":\"Poslouchejte p\\u0159\\u00edb\\u011bhy v prohl\\u00ed\\u017ee\\u010di, na telefonu, tabletu, hern\\u00edch konzol\\u00edch, s Chromecasten a dal\\u0161\\u00edmi za\\u0159\\u00edzen\\u00edmi.\"},{\"title\":\"Vyu\\u017eijte Krabi\\u010dku Poh\\u00e1dek naplno s PRO\",\"subtitle\":\"Krabi\\u010dka Poh\\u00e1dek PRO\",\"image\":\"images\\/landing\\/landing-feature-2.jpg\",\"description\":\"Zvolte Krabi\\u010dku Poh\\u00e1dek PRO a z\\u00edskejte p\\u0159\\u00edstup k dal\\u0161\\u00edm exkluzivn\\u00edm funkc\\u00edm.\"}],\"pricingTitle\":\"P\\u0159\\u00edstupn\\u00e9 ceny pro ka\\u017ed\\u00e9ho.\",\"pricingSubtitle\":\"Vyberte si pl\\u00e1n podle sv\\u00fdch preferenc\\u00ed. \\u017d\\u00e1dn\\u00e9 z\\u00e1vazky, zru\\u0161en\\u00ed kdykoliv.\",\"channelIds\":[1]}', '2024-04-11 17:25:04', '2024-08-02 14:23:55', 0),
(59, 'maintenance.enable', 'false', '2024-04-11 17:25:04', '2024-05-30 07:29:10', 0),
(63, 'player.show_become_artist_btn', 'false', '2024-04-28 05:30:06', '2024-06-02 11:54:39', 0),
(64, 'artistPage.showDescription', 'true', '2024-04-28 05:30:06', '2024-04-28 05:30:06', 0),
(65, 'mail.contact_page_address', 'jitka@krabickapohadek.cz', '2024-04-28 05:34:02', '2024-07-22 08:05:05', 0),
(66, 'require_email_confirmation', 'true', '2024-04-28 05:34:16', '2024-05-14 19:53:45', 0),
(67, 'cookie_notice.button', '{\"label\":\"Cookies\",\"type\":\"customPage\",\"target\":\"_self\",\"action\":\"/pages/privacy-policy\"}', '2024-04-28 05:36:00', '2024-08-02 14:27:41', 0),
(68, 'registration.policies', '[{\"id\":\"zweIHi\",\"label\":\"Privacy Policy\",\"action\":\"/pages/privacy-policy\",\"model_id\":1,\"type\":\"customPage\"},{\"id\":\"kL4bYc\",\"label\":\"Terms of Service\",\"action\":\"/pages/terms-of-service\",\"model_id\":2,\"type\":\"customPage\"}]', '2024-04-28 05:36:00', '2024-08-02 14:27:41', 0),
(69, 'billing.invoice.address', 'Mušlov 12\n69201 Mikulov\nCzech Republic', '2024-04-29 07:27:06', '2024-04-29 07:27:06', 0),
(70, 'billing.invoice.notes', 'Děkujeme za váš nákup!\n\n#KRABIČKAPOHÁDEK', '2024-04-29 07:27:06', '2024-07-27 19:30:42', 0),
(71, 'uploads.max_size', '104857600', '2024-04-29 15:28:50', '2024-05-29 07:21:04', 0),
(72, 'uploads.available_space', '10737418240', '2024-04-29 15:28:50', '2024-05-29 07:12:01', 0),
(73, 'branding.site_description', 'Kouzelné příběhy a úchvatná dobrodružství', '2024-04-29 19:33:11', '2024-08-02 13:19:04', 0),
(74, 'homepage.pricing', 'true', '2024-04-29 20:33:36', '2024-04-29 20:33:36', 0),
(75, 'branding.favicon', 'favicon/icon-144x144.png?v=1721638612', '2024-04-30 07:41:07', '2024-07-22 06:56:52', 0),
(76, 'branding.logo_light_mobile', 'storage/branding_media/240fc96e-957e-4fb8-b95f-391376f3de81.png', '2024-04-30 07:41:07', '2024-07-22 06:51:10', 0),
(77, 'branding.logo_dark_mobile', 'storage/branding_media/b625a814-7f69-433b-86d6-adfdb3dca368.png', '2024-04-30 07:41:07', '2024-07-22 06:51:10', 0),
(78, 'player.hide_radio_button', 'true', '2024-05-01 16:51:34', '2024-07-28 18:34:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `similar_artists`
--

CREATE TABLE `similar_artists` (
  `id` int(10) UNSIGNED NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `similar_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_profiles`
--

CREATE TABLE `social_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `service_name` varchar(20) NOT NULL,
  `user_service_id` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `access_token` text DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `access_expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `price_id` varchar(255) NOT NULL,
  `gateway_name` varchar(255) NOT NULL DEFAULT 'none',
  `gateway_id` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `renews_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `price_id`, `gateway_name`, `gateway_id`, `quantity`, `description`, `trial_ends_at`, `ends_at`, `renews_at`, `created_at`, `updated_at`, `product_id`) VALUES
(8, 2, '1', 'none', NULL, 1, NULL, NULL, '2025-08-16 13:51:40', NULL, '2024-08-03 13:52:02', '2024-08-03 16:07:51', 2);

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(80) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`id`, `tag_id`, `taggable_id`, `taggable_type`, `user_id`) VALUES
(3, 1, 537, 'track', NULL),
(4, 2, 537, 'track', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'custom',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `display_name`, `type`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'pohadky', 'pohádky', 'custom', '2024-08-13 21:17:42', '2024-08-13 21:17:42', NULL),
(2, 'pohadecky', 'pohádečky', 'custom', '2024-08-13 21:17:42', '2024-08-13 21:17:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `album_id` int(10) UNSIGNED DEFAULT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `duration` int(10) UNSIGNED DEFAULT NULL,
  `youtube_id` varchar(255) DEFAULT NULL,
  `spotify_popularity` tinyint(3) UNSIGNED DEFAULT NULL,
  `owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `temp_id` varchar(8) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `plays` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `spotify_id` char(22) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `mp3_file` varchar(255) DEFAULT NULL,
  `wav_file` varchar(255) DEFAULT NULL,
  `zip_file` varchar(255) DEFAULT NULL,
  `pdf_file` varchar(255) DEFAULT NULL,
  `duration_full` varchar(255) DEFAULT NULL,
  `downloads` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`id`, `name`, `album_id`, `number`, `duration`, `youtube_id`, `spotify_popularity`, `owner_id`, `temp_id`, `src`, `plays`, `spotify_id`, `created_at`, `updated_at`, `description`, `image`, `mp3_file`, `wav_file`, `zip_file`, `pdf_file`, `duration_full`, `downloads`) VALUES
(537, 'Andělka', 43, 1, 180000, NULL, NULL, 1, NULL, 'storage/track_media/83ec5e00-d5a1-46eb-ac26-197bb28700ef.mp3', 77, NULL, '2024-07-27 20:21:43', '2024-08-16 04:58:41', NULL, 'storage/track_image/cf03d6cb-11f8-4baa-a32a-d2874e3596d1.png', 'storage/mp3_media/a520036c-e713-4993-a063-896ff635fb2b.mp3', 'storage/wav_media/be8dfe17-ec8a-46df-8f58-ad2b2da97232.wav', 'storage/zip_media/6c54e856-faf5-4c83-83a4-643f3ebd455f.zip', 'storage/pdf_media/21755986-1a7b-4edf-9073-e88844bb9809.pdf', '184000', 1),
(538, 'test', 43, 0, 180000, NULL, NULL, 1, NULL, 'storage/track_media/986410ce-3025-4c24-b352-74f36fa5c617.mp3', 5, NULL, '2024-08-03 16:46:09', '2024-08-16 04:58:39', NULL, 'storage/track_image/88f821f0-93dd-4e45-b98f-5803e35410ba.png', 'storage/mp3_media/abb273ab-f217-475d-8345-0bc499fe1b51.mp3', 'storage/wav_media/974dadc4-bbc6-4346-86f8-e6db9ccfd4a3.wav', 'storage/zip_media/9282369c-05ba-4316-b6cb-c40bd82bc8e1.zip', 'storage/pdf_media/892a44b1-a452-419c-9688-5f28c28705e4.pdf', NULL, 1),
(539, 'Beats', NULL, 0, 176000, NULL, NULL, 1, NULL, 'storage/track_media/01b747ab-27e1-412c-8437-ba3036be6a8e.mp3', 22, NULL, '2024-08-03 19:37:33', '2024-08-16 04:58:35', NULL, 'storage/track_image/46c3043b-625e-4d26-a1c7-62fe0a6810f9.png', 'storage/mp3_media/21ab9bf2-7b1a-4e4e-b595-d9d45e665fc9.mp3', 'storage/wav_media/ac3b0272-fe7e-4894-9359-7d4cbeb2b296.wav', 'storage/zip_media/e0b98811-2543-436f-a86e-cc9ae9c205b0.zip', 'storage/pdf_media/73e8bb49-eebd-4f1b-a1b2-38ede1ea313e.pdf', NULL, 1),
(540, 'testingnew', 43, 0, 180000, NULL, NULL, 1, NULL, 'storage/track_media/8b61df44-0ff8-40dd-93f7-47863b78082b.mp3', 12, NULL, '2024-08-03 19:55:55', '2024-08-16 08:10:03', NULL, 'storage/track_image/e7fdc1dc-ede8-40fa-9ce3-ec9827926d3a.png', 'storage/mp3_media/76d42c37-e83b-4d07-bff7-17dea760b567.mp3', 'storage/wav_media/5f874325-460f-4f68-bd15-ff4a671ab191.wav', 'storage/zip_media/4bb2ace7-a48f-4e43-b902-cd88e43ae7b4.zip', 'storage/pdf_media/601d758b-3a10-4611-839c-bcb38060156e.pdf', NULL, 0),
(541, 'asdas', 43, 0, 180000, NULL, NULL, 1, NULL, 'storage/track_media/cb7a28b5-de8f-4a10-9d00-182e83f09dcf.mp3', 112, NULL, '2024-08-04 15:20:58', '2024-08-16 08:09:51', NULL, 'storage/track_image/25a548dd-1c22-4e6b-8ba3-9da5843b0c0a.png', 'storage/mp3_media/14193015-d30b-4a81-822d-25fe969afdbf.mp3', 'storage/wav_media/d19fad3b-70a7-4cd7-9f25-85660c079399.wav', 'storage/zip_media/568c93e1-c710-4204-ad7c-80bb7c8b211b.zip', 'storage/pdf_media/54ff0b31-294d-4bbc-911c-891a4037a6e5.pdf', '147000', 8);

-- --------------------------------------------------------

--
-- Table structure for table `track_downloads`
--

CREATE TABLE `track_downloads` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `track_id` int(11) NOT NULL,
  `file_type` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `platform` varchar(30) DEFAULT NULL,
  `device` varchar(30) DEFAULT NULL,
  `browser` varchar(30) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `track_downloads`
--

INSERT INTO `track_downloads` (`id`, `user_id`, `track_id`, `file_type`, `created_at`, `platform`, `device`, `browser`, `location`) VALUES
(1, 2, 541, '', '2024-08-12 17:50:24', 'windows', 'desktop', 'opera', 'us'),
(2, 2, 541, '', '2024-08-12 17:54:09', 'windows', 'desktop', 'opera', 'us'),
(3, 2, 541, '', '2024-08-12 18:19:36', 'windows', 'desktop', 'opera', 'us'),
(4, 2, 541, '', '2024-08-12 18:21:44', 'windows', 'desktop', 'opera', 'us'),
(5, 2, 541, '', '2024-08-12 19:33:46', 'windows', 'desktop', 'opera', 'us'),
(6, 2, 541, '', '2024-08-12 19:37:27', 'windows', 'desktop', 'opera', 'us'),
(7, 2, 541, '', '2024-08-13 04:46:51', 'windows', 'desktop', 'opera', 'us'),
(8, 2, 538, '', '2024-08-13 15:12:11', 'windows', 'desktop', 'opera', 'us'),
(9, 2, 539, '', '2024-08-13 15:13:45', 'windows', 'desktop', 'opera', 'us'),
(10, 2, 537, '', '2024-08-13 15:24:13', 'windows', 'desktop', 'opera', 'us'),
(11, 2, 541, '', '2024-08-13 15:40:38', 'windows', 'desktop', 'opera', 'us');

-- --------------------------------------------------------

--
-- Table structure for table `track_plays`
--

CREATE TABLE `track_plays` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `track_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `platform` varchar(30) DEFAULT NULL,
  `device` varchar(30) DEFAULT NULL,
  `browser` varchar(30) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `track_plays`
--

INSERT INTO `track_plays` (`id`, `user_id`, `track_id`, `created_at`, `platform`, `device`, `browser`, `location`) VALUES
(145, 2, 537, '2024-07-27 20:22:04', 'windows', 'desktop', 'opera', 'us'),
(146, 1, 537, '2024-07-27 22:28:40', 'windows', 'desktop', 'firefox', 'us'),
(147, 1, 537, '2024-07-28 00:04:12', 'windows', 'desktop', 'firefox', 'us'),
(148, 1, 537, '2024-07-28 00:07:13', 'windows', 'desktop', 'firefox', 'us'),
(149, 2, 537, '2024-07-28 00:40:27', 'windows', 'desktop', 'opera', 'us'),
(150, 2, 537, '2024-07-28 00:41:28', 'windows', 'desktop', 'opera', 'us'),
(151, 2, 537, '2024-07-28 00:54:17', 'windows', 'desktop', 'opera', 'us'),
(152, 2, 537, '2024-07-28 01:03:14', 'windows', 'desktop', 'opera', 'us'),
(153, 2, 537, '2024-07-28 01:21:00', 'windows', 'desktop', 'opera', 'us'),
(154, 2, 537, '2024-07-28 02:18:05', 'windows', 'desktop', 'opera', 'us'),
(155, 2, 537, '2024-07-28 02:21:51', 'windows', 'desktop', 'opera', 'us'),
(156, 2, 537, '2024-07-28 02:24:28', 'windows', 'desktop', 'opera', 'us'),
(157, 2, 537, '2024-07-28 02:29:09', 'windows', 'desktop', 'opera', 'us'),
(158, 2, 537, '2024-07-28 02:50:26', 'windows', 'desktop', 'opera', 'us'),
(159, 2, 537, '2024-07-28 02:53:27', 'windows', 'desktop', 'opera', 'us'),
(160, 2, 537, '2024-07-28 02:58:56', 'windows', 'desktop', 'opera', 'us'),
(161, 2, 537, '2024-07-28 03:02:02', 'windows', 'desktop', 'opera', 'us'),
(162, 2, 537, '2024-07-28 03:05:02', 'windows', 'desktop', 'opera', 'us'),
(163, 2, 537, '2024-07-28 03:13:55', 'windows', 'desktop', 'opera', 'us'),
(164, 1, 537, '2024-07-28 03:14:58', 'windows', 'desktop', 'firefox', 'us'),
(165, 2, 537, '2024-07-28 03:18:25', 'windows', 'desktop', 'opera', 'us'),
(166, 1, 537, '2024-07-28 03:42:50', 'windows', 'desktop', 'firefox', 'us'),
(167, 2, 537, '2024-07-28 04:20:27', 'windows', 'desktop', 'opera', 'us'),
(168, 2, 537, '2024-07-28 04:23:43', 'windows', 'desktop', 'opera', 'us'),
(169, 1, 537, '2024-07-28 05:03:43', 'windows', 'desktop', 'firefox', 'us'),
(170, 2, 537, '2024-07-28 05:16:12', 'windows', 'desktop', 'opera', 'us'),
(171, 1, 537, '2024-07-28 07:57:14', 'windows', 'desktop', 'firefox', 'us'),
(172, 2, 537, '2024-07-28 15:18:31', 'windows', 'desktop', 'opera', 'us'),
(173, 2, 537, '2024-07-28 15:21:27', 'windows', 'desktop', 'opera', 'us'),
(174, 2, 537, '2024-07-28 15:36:32', 'windows', 'desktop', 'opera', 'us'),
(175, 2, 537, '2024-07-28 16:34:02', 'windows', 'desktop', 'opera', 'us'),
(176, 2, 537, '2024-07-28 16:36:44', 'windows', 'desktop', 'opera', 'us'),
(177, NULL, 537, '2024-07-28 18:22:36', 'windows', 'desktop', 'opera', 'us'),
(178, NULL, 537, '2024-07-28 18:33:20', 'windows', 'desktop', 'opera', 'us'),
(179, NULL, 537, '2024-07-28 18:37:28', 'windows', 'desktop', 'opera', 'us'),
(180, NULL, 537, '2024-07-30 12:24:24', 'androidos', 'mobile', 'chrome', 'us'),
(181, NULL, 537, '2024-07-30 15:40:35', 'windows', 'desktop', 'opera', 'us'),
(182, NULL, 537, '2024-07-31 18:44:16', 'windows', 'desktop', 'opera', 'us'),
(183, 2, 537, '2024-08-02 13:31:55', 'windows', 'desktop', 'opera', 'us'),
(184, NULL, 537, '2024-08-03 05:17:21', 'windows', 'desktop', 'opera', 'us'),
(185, NULL, 537, '2024-08-03 05:18:41', 'windows', 'desktop', 'opera', 'us'),
(186, NULL, 537, '2024-08-03 07:12:12', 'windows', 'desktop', 'opera', 'us'),
(187, NULL, 537, '2024-08-03 07:22:55', 'windows', 'desktop', 'opera', 'us'),
(188, 2, 537, '2024-08-03 07:50:28', 'windows', 'desktop', 'opera', 'us'),
(189, 1, 537, '2024-08-03 07:51:16', 'windows', 'desktop', 'firefox', 'us'),
(190, NULL, 537, '2024-08-03 10:08:23', 'windows', 'desktop', 'opera', 'us'),
(191, NULL, 537, '2024-08-03 10:36:28', 'windows', 'desktop', 'opera', 'us'),
(192, 2, 537, '2024-08-03 10:38:39', 'windows', 'desktop', 'opera', 'us'),
(193, 2, 537, '2024-08-03 10:41:32', 'windows', 'desktop', 'opera', 'us'),
(194, 2, 537, '2024-08-03 10:44:33', 'windows', 'desktop', 'opera', 'us'),
(195, 2, 537, '2024-08-03 10:46:12', 'windows', 'desktop', 'opera', 'us'),
(196, 2, 537, '2024-08-03 13:08:01', 'windows', 'desktop', 'opera', 'us'),
(197, 2, 537, '2024-08-03 13:11:50', 'windows', 'desktop', 'opera', 'us'),
(198, 1, 537, '2024-08-03 13:16:47', 'windows', 'desktop', 'firefox', 'us'),
(199, 2, 537, '2024-08-03 13:50:42', 'windows', 'desktop', 'opera', 'us'),
(200, 2, 537, '2024-08-03 14:14:59', 'windows', 'desktop', 'opera', 'us'),
(201, 2, 537, '2024-08-03 14:21:32', 'windows', 'desktop', 'opera', 'us'),
(202, 2, 537, '2024-08-03 14:40:51', 'windows', 'desktop', 'opera', 'us'),
(203, 2, 537, '2024-08-03 15:02:19', 'windows', 'desktop', 'opera', 'us'),
(204, 2, 537, '2024-08-03 15:05:34', 'windows', 'desktop', 'opera', 'us'),
(205, 2, 537, '2024-08-03 15:13:26', 'windows', 'desktop', 'opera', 'us'),
(206, 2, 537, '2024-08-03 15:16:51', 'windows', 'desktop', 'opera', 'us'),
(207, 1, 538, '2024-08-03 17:50:07', 'windows', 'desktop', 'firefox', 'us'),
(208, 1, 539, '2024-08-03 19:43:18', 'windows', 'desktop', 'firefox', 'us'),
(209, 1, 537, '2024-08-03 19:46:15', 'windows', 'desktop', 'firefox', 'us'),
(210, 2, 540, '2024-08-03 19:56:48', 'windows', 'desktop', 'opera', 'us'),
(211, 2, 537, '2024-08-03 19:59:49', 'windows', 'desktop', 'opera', 'us'),
(212, 2, 539, '2024-08-03 20:04:46', 'windows', 'desktop', 'opera', 'us'),
(213, 2, 539, '2024-08-03 20:06:45', 'windows', 'desktop', 'opera', 'us'),
(214, 2, 539, '2024-08-03 20:07:46', 'windows', 'desktop', 'opera', 'us'),
(215, 2, 539, '2024-08-03 20:09:31', 'windows', 'desktop', 'opera', 'us'),
(216, 2, 539, '2024-08-03 21:02:31', 'windows', 'desktop', 'opera', 'us'),
(217, 2, 540, '2024-08-04 14:18:29', 'windows', 'desktop', 'opera', 'us'),
(218, 1, 541, '2024-08-04 15:22:39', 'windows', 'desktop', 'firefox', 'us'),
(219, 2, 541, '2024-08-04 15:23:11', 'windows', 'desktop', 'opera', 'us'),
(220, 1, 541, '2024-08-04 15:36:18', 'windows', 'desktop', 'firefox', 'us'),
(221, 1, 541, '2024-08-04 15:40:43', 'windows', 'desktop', 'firefox', 'us'),
(222, 2, 541, '2024-08-04 15:40:46', 'windows', 'desktop', 'opera', 'us'),
(223, NULL, 541, '2024-08-04 15:41:05', 'windows', 'desktop', 'opera', 'us'),
(224, 2, 541, '2024-08-04 15:45:22', 'windows', 'desktop', 'opera', 'us'),
(225, 2, 541, '2024-08-04 15:46:44', 'windows', 'desktop', 'opera', 'us'),
(226, 1, 541, '2024-08-04 15:46:58', 'windows', 'desktop', 'firefox', 'us'),
(227, NULL, 541, '2024-08-04 15:50:27', 'windows', 'desktop', 'opera', 'us'),
(228, 2, 541, '2024-08-04 15:50:55', 'windows', 'desktop', 'opera', 'us'),
(229, 2, 541, '2024-08-04 16:19:23', 'windows', 'desktop', 'opera', 'us'),
(230, 2, 541, '2024-08-04 17:23:12', 'windows', 'desktop', 'opera', 'us'),
(231, 2, 541, '2024-08-04 17:32:45', 'windows', 'desktop', 'opera', 'us'),
(232, 2, 541, '2024-08-04 17:42:49', 'windows', 'desktop', 'opera', 'us'),
(233, 2, 541, '2024-08-04 18:23:42', 'windows', 'desktop', 'opera', 'us'),
(234, 1, 541, '2024-08-04 18:33:30', 'windows', 'desktop', 'firefox', 'us'),
(235, 2, 541, '2024-08-04 18:49:01', 'windows', 'desktop', 'opera', 'us'),
(236, 1, 541, '2024-08-04 18:53:52', 'windows', 'desktop', 'firefox', 'us'),
(237, 2, 541, '2024-08-04 18:53:58', 'windows', 'desktop', 'opera', 'us'),
(238, 2, 541, '2024-08-04 19:09:49', 'windows', 'desktop', 'opera', 'us'),
(239, 2, 539, '2024-08-04 19:10:39', 'windows', 'desktop', 'opera', 'us'),
(240, 2, 540, '2024-08-04 19:10:41', 'windows', 'desktop', 'opera', 'us'),
(241, 2, 537, '2024-08-04 19:10:44', 'windows', 'desktop', 'opera', 'us'),
(242, 2, 538, '2024-08-04 19:10:46', 'windows', 'desktop', 'opera', 'us'),
(243, 1, 541, '2024-08-04 20:17:37', 'windows', 'desktop', 'firefox', 'us'),
(244, 2, 541, '2024-08-04 20:17:44', 'windows', 'desktop', 'opera', 'us'),
(245, 2, 541, '2024-08-04 20:47:00', 'windows', 'desktop', 'opera', 'us'),
(246, 2, 541, '2024-08-04 21:15:02', 'windows', 'desktop', 'opera', 'us'),
(247, 2, 541, '2024-08-04 21:21:09', 'windows', 'desktop', 'opera', 'us'),
(248, 1, 541, '2024-08-04 21:23:57', 'windows', 'desktop', 'firefox', 'us'),
(249, 2, 541, '2024-08-04 21:24:10', 'windows', 'desktop', 'opera', 'us'),
(250, 1, 541, '2024-08-04 21:27:00', 'windows', 'desktop', 'firefox', 'us'),
(251, NULL, 541, '2024-08-04 21:28:37', 'windows', 'desktop', 'opera', 'us'),
(252, 1, 541, '2024-08-04 21:40:55', 'windows', 'desktop', 'firefox', 'us'),
(253, 1, 541, '2024-08-04 21:44:54', 'windows', 'desktop', 'firefox', 'us'),
(254, 2, 540, '2024-08-04 21:51:47', 'windows', 'desktop', 'opera', 'us'),
(255, 2, 541, '2024-08-04 21:51:54', 'windows', 'desktop', 'opera', 'us'),
(256, 1, 541, '2024-08-04 22:00:21', 'windows', 'desktop', 'firefox', 'us'),
(257, 1, 541, '2024-08-04 22:12:38', 'windows', 'desktop', 'firefox', 'us'),
(258, 1, 541, '2024-08-04 22:18:43', 'windows', 'desktop', 'firefox', 'us'),
(259, 1, 541, '2024-08-04 22:21:16', 'windows', 'desktop', 'firefox', 'us'),
(260, 2, 541, '2024-08-04 22:23:06', 'windows', 'desktop', 'opera', 'us'),
(261, 1, 541, '2024-08-04 22:33:17', 'windows', 'desktop', 'firefox', 'us'),
(262, 2, 541, '2024-08-04 22:33:25', 'windows', 'desktop', 'opera', 'us'),
(263, 2, 540, '2024-08-04 22:35:10', 'windows', 'desktop', 'opera', 'us'),
(264, 2, 541, '2024-08-05 11:04:07', 'windows', 'desktop', 'opera', 'us'),
(265, 1, 541, '2024-08-05 11:07:00', 'windows', 'desktop', 'firefox', 'us'),
(266, 1, 541, '2024-08-05 11:11:55', 'windows', 'desktop', 'firefox', 'us'),
(267, 1, 541, '2024-08-05 11:19:18', 'windows', 'desktop', 'firefox', 'us'),
(268, 2, 541, '2024-08-05 11:41:44', 'windows', 'desktop', 'opera', 'us'),
(269, NULL, 541, '2024-08-05 11:42:20', 'windows', 'desktop', 'opera', 'us'),
(270, NULL, 539, '2024-08-05 11:42:26', 'windows', 'desktop', 'opera', 'us'),
(271, 2, 539, '2024-08-05 11:42:49', 'windows', 'desktop', 'opera', 'us'),
(272, 2, 541, '2024-08-05 11:42:50', 'windows', 'desktop', 'opera', 'us'),
(273, 2, 537, '2024-08-05 11:42:52', 'windows', 'desktop', 'opera', 'us'),
(274, 1, 539, '2024-08-05 12:04:56', 'windows', 'desktop', 'firefox', 'us'),
(275, 1, 541, '2024-08-06 10:39:22', 'windows', 'desktop', 'firefox', 'us'),
(276, NULL, 541, '2024-08-06 10:39:49', 'windows', 'desktop', 'opera', 'us'),
(277, 3, 541, '2024-08-06 10:41:22', 'windows', 'desktop', 'opera', 'us'),
(278, 2, 541, '2024-08-06 10:46:09', 'windows', 'desktop', 'opera', 'us'),
(279, 1, 541, '2024-08-06 11:47:37', 'windows', 'desktop', 'firefox', 'us'),
(280, NULL, 541, '2024-08-06 11:48:04', 'windows', 'desktop', 'opera', 'us'),
(281, 2, 541, '2024-08-06 15:14:21', 'windows', 'desktop', 'opera', 'us'),
(282, 2, 541, '2024-08-06 15:22:05', 'windows', 'desktop', 'opera', 'us'),
(283, 2, 541, '2024-08-06 15:32:38', 'windows', 'desktop', 'opera', 'us'),
(284, 2, 541, '2024-08-06 15:37:46', 'windows', 'desktop', 'chrome', 'us'),
(285, NULL, 539, '2024-08-06 17:44:31', 'windows', 'desktop', 'chrome', 'us'),
(286, NULL, 541, '2024-08-06 17:44:37', 'windows', 'desktop', 'chrome', 'us'),
(287, 2, 541, '2024-08-07 19:34:56', 'windows', 'desktop', 'opera', 'us'),
(288, 2, 541, '2024-08-07 20:38:02', 'windows', 'desktop', 'opera', 'us'),
(289, 2, 541, '2024-08-08 16:58:28', 'androidos', 'mobile', 'chrome', 'us'),
(290, 2, 539, '2024-08-08 18:29:24', 'windows', 'desktop', 'opera', 'us'),
(291, 2, 541, '2024-08-08 18:44:29', 'androidos', 'mobile', 'chrome', 'us'),
(292, NULL, 541, '2024-08-09 16:10:26', 'windows', 'desktop', 'opera', 'us'),
(293, NULL, 539, '2024-08-09 16:30:03', 'windows', 'desktop', 'opera', 'us'),
(294, 1, 539, '2024-08-12 07:25:06', 'windows', 'desktop', 'firefox', 'us'),
(295, 1, 541, '2024-08-12 07:25:08', 'windows', 'desktop', 'firefox', 'us'),
(296, 3, 541, '2024-08-12 07:25:23', 'windows', 'desktop', 'opera', 'us'),
(297, 2, 541, '2024-08-12 15:33:56', 'windows', 'desktop', 'opera', 'us'),
(298, 2, 541, '2024-08-12 18:22:38', 'windows', 'desktop', 'opera', 'us'),
(299, 2, 538, '2024-08-13 18:49:13', 'windows', 'desktop', 'opera', 'us'),
(300, 1, 537, '2024-08-13 19:14:09', 'windows', 'desktop', 'firefox', 'us'),
(301, 1, 541, '2024-08-14 14:20:09', 'windows', 'desktop', 'firefox', 'us'),
(302, NULL, 541, '2024-08-14 14:21:27', 'windows', 'desktop', 'chrome', 'us'),
(303, 2, 541, '2024-08-14 14:21:35', 'windows', 'desktop', 'opera', 'us'),
(304, NULL, 539, '2024-08-14 14:22:19', 'windows', 'desktop', 'chrome', 'us'),
(305, NULL, 541, '2024-08-14 15:27:11', 'windows', 'desktop', 'chrome', 'us'),
(306, NULL, 537, '2024-08-14 15:27:15', 'windows', 'desktop', 'chrome', 'us'),
(307, 2, 541, '2024-08-14 15:27:25', 'windows', 'desktop', 'opera', 'us'),
(308, NULL, 541, '2024-08-14 15:32:22', 'windows', 'desktop', 'chrome', 'us'),
(309, NULL, 541, '2024-08-14 15:57:27', 'windows', 'desktop', 'chrome', 'us'),
(310, 1, 538, '2024-08-14 16:47:51', 'windows', 'desktop', 'firefox', 'us'),
(311, 1, 541, '2024-08-14 16:47:53', 'windows', 'desktop', 'firefox', 'us'),
(312, 1, 541, '2024-08-14 19:07:04', 'windows', 'desktop', 'firefox', 'us'),
(313, NULL, 541, '2024-08-14 19:07:14', 'windows', 'desktop', 'chrome', 'us'),
(314, NULL, 539, '2024-08-14 19:07:23', 'windows', 'desktop', 'chrome', 'us'),
(315, 2, 541, '2024-08-14 19:08:36', 'windows', 'desktop', 'opera', 'us'),
(316, 2, 539, '2024-08-14 19:08:39', 'windows', 'desktop', 'opera', 'us'),
(317, 2, 537, '2024-08-14 19:08:43', 'windows', 'desktop', 'opera', 'us'),
(318, NULL, 541, '2024-08-15 04:22:10', 'windows', 'desktop', 'chrome', 'us'),
(319, 2, 541, '2024-08-15 04:23:20', 'windows', 'desktop', 'opera', 'us'),
(320, NULL, 541, '2024-08-15 04:34:54', 'windows', 'desktop', 'chrome', 'us'),
(321, 1, 541, '2024-08-15 04:35:29', 'windows', 'desktop', 'firefox', 'us'),
(322, 1, 541, '2024-08-15 04:40:20', 'windows', 'desktop', 'firefox', 'us'),
(323, 1, 541, '2024-08-15 04:51:44', 'windows', 'desktop', 'firefox', 'us'),
(324, NULL, 541, '2024-08-15 05:03:54', 'windows', 'desktop', 'chrome', 'us'),
(325, 1, 537, '2024-08-15 05:07:51', 'windows', 'desktop', 'firefox', 'us'),
(326, 1, 541, '2024-08-15 05:10:15', 'windows', 'desktop', 'firefox', 'us'),
(327, 1, 541, '2024-08-15 05:13:31', 'windows', 'desktop', 'firefox', 'us'),
(328, NULL, 541, '2024-08-15 05:14:52', 'windows', 'desktop', 'chrome', 'us'),
(329, NULL, 539, '2024-08-15 05:14:56', 'windows', 'desktop', 'chrome', 'us'),
(330, 1, 541, '2024-08-15 05:16:42', 'windows', 'desktop', 'firefox', 'us'),
(331, 1, 541, '2024-08-15 05:20:24', 'windows', 'desktop', 'firefox', 'us'),
(332, 1, 539, '2024-08-15 05:21:35', 'windows', 'desktop', 'firefox', 'us'),
(333, 1, 540, '2024-08-15 05:21:38', 'windows', 'desktop', 'firefox', 'us'),
(334, 1, 537, '2024-08-15 05:21:39', 'windows', 'desktop', 'firefox', 'us'),
(335, 1, 537, '2024-08-15 05:23:38', 'windows', 'desktop', 'firefox', 'us'),
(336, 1, 537, '2024-08-15 05:25:33', 'windows', 'desktop', 'firefox', 'us'),
(337, 1, 537, '2024-08-15 05:27:17', 'windows', 'desktop', 'firefox', 'us'),
(338, 1, 537, '2024-08-15 05:29:20', 'windows', 'desktop', 'firefox', 'us'),
(339, 1, 541, '2024-08-15 05:30:02', 'windows', 'desktop', 'firefox', 'us'),
(340, 1, 541, '2024-08-15 05:31:38', 'windows', 'desktop', 'firefox', 'us'),
(341, 1, 540, '2024-08-15 05:32:13', 'windows', 'desktop', 'firefox', 'us'),
(342, 1, 541, '2024-08-15 05:33:39', 'windows', 'desktop', 'firefox', 'us'),
(343, 1, 537, '2024-08-15 05:43:15', 'windows', 'desktop', 'firefox', 'us'),
(344, 1, 539, '2024-08-15 05:46:19', 'windows', 'desktop', 'firefox', 'us'),
(345, 1, 540, '2024-08-15 05:49:19', 'windows', 'desktop', 'firefox', 'us'),
(346, 1, 541, '2024-08-15 05:54:16', 'windows', 'desktop', 'firefox', 'us'),
(347, 1, 541, '2024-08-15 05:56:41', 'windows', 'desktop', 'firefox', 'us'),
(348, 1, 541, '2024-08-15 06:03:36', 'windows', 'desktop', 'firefox', 'us'),
(349, 1, 539, '2024-08-15 07:16:24', 'windows', 'desktop', 'firefox', 'us'),
(350, 1, 541, '2024-08-15 07:16:27', 'windows', 'desktop', 'firefox', 'us'),
(351, 1, 541, '2024-08-15 19:33:47', 'windows', 'desktop', 'firefox', 'us'),
(352, 1, 541, '2024-08-15 19:48:29', 'windows', 'desktop', 'firefox', 'us'),
(353, 2, 541, '2024-08-15 23:06:15', 'windows', 'desktop', 'opera', 'us'),
(354, 2, 541, '2024-08-15 23:07:46', 'windows', 'desktop', 'opera', 'us'),
(355, 1, 541, '2024-08-15 23:10:00', 'windows', 'desktop', 'firefox', 'us'),
(356, 1, 541, '2024-08-16 04:17:00', 'windows', 'desktop', 'firefox', 'us'),
(357, 1, 541, '2024-08-16 04:18:50', 'windows', 'desktop', 'firefox', 'us'),
(358, 1, 541, '2024-08-16 04:39:36', 'windows', 'desktop', 'firefox', 'us'),
(359, 1, 541, '2024-08-16 04:45:17', 'windows', 'desktop', 'firefox', 'us'),
(360, 1, 539, '2024-08-16 04:58:35', 'windows', 'desktop', 'firefox', 'us'),
(361, 1, 538, '2024-08-16 04:58:39', 'windows', 'desktop', 'firefox', 'us'),
(362, 1, 537, '2024-08-16 04:58:41', 'windows', 'desktop', 'firefox', 'us'),
(363, 1, 540, '2024-08-16 04:58:55', 'windows', 'desktop', 'firefox', 'us'),
(364, 1, 541, '2024-08-16 05:13:47', 'windows', 'desktop', 'firefox', 'us'),
(365, 1, 541, '2024-08-16 05:18:57', 'windows', 'desktop', 'firefox', 'us'),
(366, 1, 541, '2024-08-16 05:20:08', 'windows', 'desktop', 'firefox', 'us'),
(367, 2, 541, '2024-08-16 05:25:59', 'windows', 'desktop', 'opera', 'us'),
(368, 1, 540, '2024-08-16 05:52:04', 'windows', 'desktop', 'firefox', 'us'),
(369, 1, 540, '2024-08-16 06:07:54', 'windows', 'desktop', 'firefox', 'us'),
(370, 1, 541, '2024-08-16 06:07:56', 'windows', 'desktop', 'firefox', 'us'),
(371, 1, 541, '2024-08-16 08:09:51', 'windows', 'desktop', 'firefox', 'us'),
(372, 1, 540, '2024-08-16 08:10:03', 'windows', 'desktop', 'firefox', 'us');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `legacy_permissions` text DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `card_brand` varchar(30) DEFAULT NULL,
  `card_last_four` varchar(4) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language` varchar(6) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `timezone` varchar(30) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `stripe_id` varchar(255) DEFAULT NULL,
  `available_space` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `card_expires` varchar(10) DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `avatar_url`, `gender`, `legacy_permissions`, `email`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `card_brand`, `card_last_four`, `remember_token`, `created_at`, `updated_at`, `language`, `country`, `timezone`, `avatar`, `stripe_id`, `available_space`, `email_verified_at`, `card_expires`, `banned_at`) VALUES
(1, 'jity', 'Jitka', 'Šimková', NULL, NULL, NULL, 'jitka@krabickapohadek.cz', '$2y$10$/klsWmzAdWbgE.Qdgl0gLequYdeHvNBqqIZaktk9qobAbft/c.iWG', NULL, NULL, NULL, NULL, NULL, 'L6A3qsCFlFiSaXpu199iinhiAKJiipeKAI52vZ3uw0ntoYxDUoLqDXMBhn1Y', '2024-04-11 17:25:03', '2024-07-26 16:08:59', NULL, NULL, NULL, 'storage/avatars/bdd15e85-c594-47a9-8c3f-080d2c073d0c.jpg', 'cus_Q5vDhhQco6Y9sD', 10737418240, '2024-07-26 16:08:59', NULL, NULL),
(2, 'Deilonthebeat', NULL, NULL, NULL, NULL, NULL, 'touchdownrecords201@gmail.com', '$2y$10$zwBBuYO.ZR1AUvChjkUR8.GgTnPHQKsU/g.muIs.gTSivvq7Rf5ai', NULL, NULL, NULL, NULL, NULL, 'xfNc86H2TcDGptujaVnxeogjVnvFcg8FTkNC4MWWxaCVymsM8SOxoGhQi4z0', '2024-04-27 20:37:13', '2024-07-26 14:53:29', 'en', 'US', 'America/New_York', 'https://www.gravatar.com/avatar/d599d6b5e54de5ac3893ed8b0e6c9ff6?s=220&d=retro', 'cus_Q5nPheZOaWid61', NULL, '2024-07-26 14:53:29', NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, 'daliborkolompar1@seznam.cz', '$2y$10$hbl0Ks5c2Z62mDNZnpqb7uvRxX8JcMyEeadS8vz/zEehpwGCrUqFK', NULL, NULL, NULL, NULL, NULL, '0wiG5xcK5psXPkG3i7lHViyuU1Sbli3Nh0tk6UPaTnJlbfMtBbUCQiGGdwR3', '2024-06-02 11:50:25', '2024-06-24 20:08:37', 'en', 'US', 'America/New_York', 'https://www.gravatar.com/avatar/f4adcacbe83010990685dbb9ea2929f7?s=&d=retro', 'cus_QGPomVeWSGVbOJ', NULL, '2024-06-02 11:54:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_oauth`
--

CREATE TABLE `users_oauth` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `service` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_artist`
--

CREATE TABLE `user_artist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(30) NOT NULL DEFAULT 'artist',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_artist`
--

INSERT INTO `user_artist` (`id`, `user_id`, `artist_id`, `role`, `created_at`, `updated_at`) VALUES
(3, 1, 3, 'artist', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `artist_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `description`, `city`, `country`, `user_id`, `created_at`, `updated_at`, `artist_id`) VALUES
(2, NULL, NULL, NULL, 2, '2024-06-02 09:45:04', '2024-06-02 09:45:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`, `created_at`) VALUES
(1, 2, 1, NULL),
(3, 3, 1, NULL),
(4, 1, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `workspaces`
--

CREATE TABLE `workspaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workspace_invites`
--

CREATE TABLE `workspace_invites` (
  `id` char(36) NOT NULL,
  `avatar` varchar(80) DEFAULT NULL,
  `workspace_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workspace_user`
--

CREATE TABLE `workspace_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `workspace_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `is_owner` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_sessions`
--
ALTER TABLE `active_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `active_sessions_session_id_index` (`session_id`),
  ADD KEY `active_sessions_token_index` (`token`),
  ADD KEY `active_sessions_user_id_index` (`user_id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `albums_spotify_id_unique` (`spotify_id`),
  ADD KEY `albums_release_date_index` (`release_date`),
  ADD KEY `albums_spotify_popularity_index` (`spotify_popularity`),
  ADD KEY `albums_owner_id_index` (`owner_id`),
  ADD KEY `albums_temp_id_index` (`temp_id`),
  ADD KEY `albums_fully_scraped_index` (`fully_scraped`),
  ADD KEY `albums_views_index` (`views`),
  ADD KEY `albums_plays_index` (`plays`),
  ADD KEY `albums_updated_at_index` (`updated_at`),
  ADD KEY `albums_downloads_index` (`downloads`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artists_spotify_id_unique` (`spotify_id`),
  ADD KEY `artists_spotify_popularity_index` (`spotify_popularity`),
  ADD KEY `artists_fully_scraped_index` (`fully_scraped`),
  ADD KEY `artists_views_index` (`views`),
  ADD KEY `artists_plays_index` (`plays`),
  ADD KEY `artists_verified_index` (`verified`),
  ADD KEY `artists_updated_at_index` (`updated_at`),
  ADD KEY `artists_created_at_index` (`created_at`),
  ADD KEY `artists_image_small_index` (`image_small`),
  ADD KEY `artists_downloads_index` (`downloads`);

--
-- Indexes for table `artist_album`
--
ALTER TABLE `artist_album`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artist_album_artist_id_album_id_unique` (`artist_id`,`album_id`),
  ADD KEY `artist_album_artist_id_index` (`artist_id`),
  ADD KEY `artist_album_album_id_index` (`album_id`),
  ADD KEY `artist_album_primary_index` (`primary`);

--
-- Indexes for table `artist_bios`
--
ALTER TABLE `artist_bios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artist_bios_artist_id_unique` (`artist_id`);

--
-- Indexes for table `artist_track`
--
ALTER TABLE `artist_track`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artist_track_artist_id_track_id_unique` (`artist_id`,`track_id`),
  ADD KEY `artist_track_artist_id_index` (`artist_id`),
  ADD KEY `artist_track_track_id_index` (`track_id`),
  ADD KEY `artist_track_primary_index` (`primary`);

--
-- Indexes for table `backstage_requests`
--
ALTER TABLE `backstage_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backstage_requests_type_index` (`type`),
  ADD KEY `backstage_requests_user_id_index` (`user_id`),
  ADD KEY `backstage_requests_status_index` (`status`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bans_bannable_type_bannable_id_index` (`bannable_type`,`bannable_id`),
  ADD KEY `bans_created_by_type_created_by_id_index` (`created_by_type`,`created_by_id`),
  ADD KEY `bans_expired_at_index` (`expired_at`);

--
-- Indexes for table `billing_plans`
--
ALTER TABLE `billing_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billing_plans_hidden_index` (`hidden`);

--
-- Indexes for table `channelables`
--
ALTER TABLE `channelables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channelables_unique` (`channelable_type`,`channelable_id`,`channel_id`),
  ADD KEY `channelables_channel_id_index` (`channel_id`),
  ADD KEY `channelables_channelable_type_index` (`channelable_type`),
  ADD KEY `channelables_channelable_id_index` (`channelable_id`),
  ADD KEY `channelables_order_index` (`order`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channels_slug_unique` (`slug`),
  ADD KEY `channels_internal_index` (`internal`),
  ADD KEY `channels_type_index` (`type`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_parent_id_index` (`parent_id`),
  ADD KEY `comments_path_index` (`path`),
  ADD KEY `comments_user_id_index` (`user_id`),
  ADD KEY `comments_commentable_id_index` (`commentable_id`),
  ADD KEY `comments_commentable_type_index` (`commentable_type`),
  ADD KEY `comments_deleted_index` (`deleted`),
  ADD KEY `comments_upvotes_index` (`upvotes`),
  ADD KEY `comments_downvotes_index` (`downvotes`),
  ADD KEY `comments_created_at_index` (`created_at`),
  ADD KEY `comments_updated_at_index` (`updated_at`);

--
-- Indexes for table `comment_reports`
--
ALTER TABLE `comment_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_reports_user_id_index` (`user_id`),
  ADD KEY `comment_reports_comment_id_index` (`comment_id`);

--
-- Indexes for table `comment_votes`
--
ALTER TABLE `comment_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comment_votes_user_ip_comment_id_unique` (`user_ip`,`comment_id`),
  ADD UNIQUE KEY `comment_votes_user_id_comment_id_unique` (`user_id`,`comment_id`),
  ADD KEY `comment_votes_user_id_index` (`user_id`),
  ADD KEY `comment_votes_comment_id_index` (`comment_id`),
  ADD KEY `comment_votes_user_ip_index` (`user_ip`);

--
-- Indexes for table `css_themes`
--
ALTER TABLE `css_themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `css_themes_name_unique` (`name`),
  ADD KEY `css_themes_default_light_index` (`default_light`),
  ADD KEY `css_themes_default_dark_index` (`default_dark`),
  ADD KEY `css_themes_user_id_index` (`user_id`);

--
-- Indexes for table `csv_exports`
--
ALTER TABLE `csv_exports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `csv_exports_cache_name_unique` (`cache_name`),
  ADD KEY `csv_exports_user_id_index` (`user_id`);

--
-- Indexes for table `custom_domains`
--
ALTER TABLE `custom_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `custom_domains_host_unique` (`host`),
  ADD KEY `custom_domains_user_id_index` (`user_id`),
  ADD KEY `custom_domains_created_at_index` (`created_at`),
  ADD KEY `custom_domains_updated_at_index` (`updated_at`),
  ADD KEY `custom_domains_global_index` (`global`),
  ADD KEY `custom_domains_resource_id_index` (`resource_id`),
  ADD KEY `custom_domains_resource_type_index` (`resource_type`),
  ADD KEY `custom_domains_workspace_id_index` (`workspace_id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_type_index` (`type`),
  ADD KEY `pages_user_id_index` (`user_id`),
  ADD KEY `custom_pages_workspace_id_index` (`workspace_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `file_entries`
--
ALTER TABLE `file_entries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uploads_file_name_unique` (`file_name`),
  ADD KEY `uploads_name_index` (`name`),
  ADD KEY `uploads_user_id_index` (`user_id`),
  ADD KEY `uploads_public_index` (`public`),
  ADD KEY `file_entries_updated_at_index` (`updated_at`),
  ADD KEY `file_entries_parent_id_index` (`parent_id`),
  ADD KEY `file_entries_type_index` (`type`),
  ADD KEY `file_entries_deleted_at_index` (`deleted_at`),
  ADD KEY `file_entries_user_id_index` (`user_id`),
  ADD KEY `file_entries_path_index` (`path`),
  ADD KEY `file_entries_description_index` (`description`),
  ADD KEY `file_entries_workspace_id_index` (`workspace_id`),
  ADD KEY `file_entries_owner_id_index` (`owner_id`);

--
-- Indexes for table `file_entry_models`
--
ALTER TABLE `file_entry_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uploadable_unique` (`file_entry_id`,`model_id`,`model_type`),
  ADD KEY `file_entry_models_owner_index` (`owner`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `follows_follower_id_followed_id_unique` (`follower_id`,`followed_id`);

--
-- Indexes for table `genreables`
--
ALTER TABLE `genreables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genre_artist_genreable_id_genreable_type_genre_id_unique` (`genreable_id`,`genreable_type`,`genre_id`),
  ADD KEY `genre_artist_genreable_type_index` (`genreable_type`),
  ADD KEY `genreables_genreable_id_index` (`genreable_id`),
  ADD KEY `genreables_genre_id_index` (`genre_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genres_name_unique` (`name`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_subscription_id_index` (`subscription_id`),
  ADD KEY `invoices_uuid_index` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `likes_likeable_id_likeable_type_user_id_unique` (`likeable_id`,`likeable_type`,`user_id`),
  ADD KEY `track_user_track_id_index` (`likeable_id`),
  ADD KEY `track_user_user_id_index` (`user_id`);

--
-- Indexes for table `localizations`
--
ALTER TABLE `localizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `localizations_name_index` (`name`),
  ADD KEY `localizations_language_index` (`language`);

--
-- Indexes for table `lyrics`
--
ALTER TABLE `lyrics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lyrics_track_id_unique` (`track_id`);

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
-- Indexes for table `notification_subscriptions`
--
ALTER TABLE `notification_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_subscriptions_notif_id_index` (`notif_id`),
  ADD KEY `notification_subscriptions_user_id_index` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissionables`
--
ALTER TABLE `permissionables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissionable_unique` (`permission_id`,`permissionable_id`,`permissionable_type`),
  ADD KEY `permissionables_permission_id_index` (`permission_id`),
  ADD KEY `permissionables_permissionable_id_index` (`permissionable_id`),
  ADD KEY `permissionables_permissionable_type_index` (`permissionable_type`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_advanced_index` (`advanced`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `playlists_spotify_id_unique` (`spotify_id`),
  ADD KEY `playlists_public_index` (`public`),
  ADD KEY `playlists_views_index` (`views`),
  ADD KEY `playlists_collaborative_index` (`collaborative`),
  ADD KEY `playlists_plays_index` (`plays`),
  ADD KEY `playlists_owner_id_index` (`owner_id`);

--
-- Indexes for table `playlist_track`
--
ALTER TABLE `playlist_track`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `playlist_track_track_id_playlist_id_unique` (`track_id`,`playlist_id`),
  ADD KEY `playlist_track_added_by_index` (`added_by`);

--
-- Indexes for table `playlist_user`
--
ALTER TABLE `playlist_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `playlist_user_playlist_id_user_id_unique` (`playlist_id`,`user_id`),
  ADD KEY `playlist_user_owner_index` (`editor`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prices_product_id_index` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_position_index` (`position`),
  ADD KEY `products_free_index` (`free`),
  ADD KEY `products_hidden_index` (`hidden`);

--
-- Indexes for table `profile_images`
--
ALTER TABLE `profile_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bio_images_artist_id_index` (`artist_id`),
  ADD KEY `profile_images_user_id_index` (`user_id`);

--
-- Indexes for table `profile_links`
--
ALTER TABLE `profile_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_links_user_id_index` (`linkeable_id`),
  ADD KEY `profile_links_linkeable_type_index` (`linkeable_type`);

--
-- Indexes for table `reposts`
--
ALTER TABLE `reposts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reposts_repostable_id_repostable_type_user_id_unique` (`repostable_id`,`repostable_type`,`user_id`),
  ADD KEY `reposts_repostable_id_index` (`repostable_id`),
  ADD KEY `reposts_repostable_type_index` (`repostable_type`),
  ADD KEY `reposts_user_id_index` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_name_unique` (`name`),
  ADD KEY `groups_default_index` (`default`),
  ADD KEY `groups_guests_index` (`guests`),
  ADD KEY `roles_internal_index` (`internal`),
  ADD KEY `roles_artists_index` (`artists`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`),
  ADD KEY `settings_private_index` (`private`);

--
-- Indexes for table `similar_artists`
--
ALTER TABLE `similar_artists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `similar_artists_artist_id_similar_id_unique` (`artist_id`,`similar_id`);

--
-- Indexes for table `social_profiles`
--
ALTER TABLE `social_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_profiles_user_id_service_name_unique` (`user_id`,`service_name`),
  ADD UNIQUE KEY `social_profiles_service_name_user_service_id_unique` (`service_name`,`user_service_id`),
  ADD KEY `social_profiles_user_id_index` (`user_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_gateway_id_unique` (`gateway_id`),
  ADD KEY `subscriptions_user_id_index` (`user_id`),
  ADD KEY `subscriptions_plan_id_index` (`price_id`),
  ADD KEY `subscriptions_gateway_index` (`gateway_name`),
  ADD KEY `subscriptions_product_id_index` (`product_id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taggable_unique` (`tag_id`,`taggable_id`,`user_id`,`taggable_type`),
  ADD KEY `taggables_tag_id_index` (`tag_id`),
  ADD KEY `taggables_taggable_id_index` (`taggable_id`),
  ADD KEY `taggables_taggable_type_index` (`taggable_type`),
  ADD KEY `taggables_user_id_index` (`user_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_user_id_type_unique` (`name`,`user_id`,`type`),
  ADD KEY `tags_type_index` (`type`),
  ADD KEY `tags_created_at_index` (`created_at`),
  ADD KEY `tags_updated_at_index` (`updated_at`),
  ADD KEY `tags_user_id_index` (`user_id`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracks_spotify_id_unique` (`spotify_id`),
  ADD KEY `tracks_album_id_index` (`album_id`),
  ADD KEY `tracks_number_index` (`number`),
  ADD KEY `tracks_youtube_id_index` (`youtube_id`),
  ADD KEY `tracks_spotify_popularity_index` (`spotify_popularity`),
  ADD KEY `tracks_owner_id_index` (`owner_id`),
  ADD KEY `tracks_temp_id_index` (`temp_id`),
  ADD KEY `tracks_plays_index` (`plays`),
  ADD KEY `tracks_created_at_index` (`created_at`),
  ADD KEY `tracks_updated_at_index` (`updated_at`),
  ADD KEY `tracks_name_index` (`name`),
  ADD KEY `tracks_downloads_index` (`downloads`);

--
-- Indexes for table `track_downloads`
--
ALTER TABLE `track_downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `track_downloads_user_id_index` (`user_id`),
  ADD KEY `track_downloads_track_id_index` (`track_id`),
  ADD KEY `track_downloads_file_type_index` (`file_type`),
  ADD KEY `track_downloads_platform_index` (`platform`),
  ADD KEY `track_downloads_device_index` (`device`),
  ADD KEY `track_downloads_browser_index` (`browser`),
  ADD KEY `track_downloads_location_index` (`location`);

--
-- Indexes for table `track_plays`
--
ALTER TABLE `track_plays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `track_plays_user_id_index` (`user_id`),
  ADD KEY `track_plays_track_id_index` (`track_id`),
  ADD KEY `track_plays_platform_index` (`platform`),
  ADD KEY `track_plays_device_index` (`device`),
  ADD KEY `track_plays_browser_index` (`browser`),
  ADD KEY `track_plays_location_index` (`location`),
  ADD KEY `track_plays_created_at_index` (`created_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_created_at_index` (`created_at`),
  ADD KEY `users_updated_at_index` (`updated_at`),
  ADD KEY `users_username_index` (`username`),
  ADD KEY `users_first_name_index` (`first_name`),
  ADD KEY `users_last_name_index` (`last_name`);

--
-- Indexes for table `users_oauth`
--
ALTER TABLE `users_oauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_oauth_user_id_service_unique` (`user_id`,`service`),
  ADD UNIQUE KEY `users_oauth_token_unique` (`token`),
  ADD KEY `users_oauth_user_id_index` (`user_id`);

--
-- Indexes for table `user_artist`
--
ALTER TABLE `user_artist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_artist_user_id_artist_id_unique` (`user_id`,`artist_id`),
  ADD KEY `user_artist_user_id_index` (`user_id`),
  ADD KEY `user_artist_artist_id_index` (`artist_id`),
  ADD KEY `user_artist_role_index` (`role`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_profiles_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `user_profiles_artist_id_unique` (`artist_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_group_user_id_group_id_unique` (`user_id`,`role_id`);

--
-- Indexes for table `workspaces`
--
ALTER TABLE `workspaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workspaces_owner_id_index` (`owner_id`),
  ADD KEY `workspaces_created_at_index` (`created_at`),
  ADD KEY `workspaces_updated_at_index` (`updated_at`);

--
-- Indexes for table `workspace_invites`
--
ALTER TABLE `workspace_invites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workspace_invites_workspace_id_index` (`workspace_id`),
  ADD KEY `workspace_invites_user_id_index` (`user_id`),
  ADD KEY `workspace_invites_email_index` (`email`),
  ADD KEY `workspace_invites_role_id_index` (`role_id`);

--
-- Indexes for table `workspace_user`
--
ALTER TABLE `workspace_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `workspace_user_workspace_id_user_id_unique` (`workspace_id`,`user_id`),
  ADD KEY `workspace_user_user_id_index` (`user_id`),
  ADD KEY `workspace_user_workspace_id_index` (`workspace_id`),
  ADD KEY `workspace_user_role_id_index` (`role_id`),
  ADD KEY `workspace_user_is_owner_index` (`is_owner`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_sessions`
--
ALTER TABLE `active_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `artist_album`
--
ALTER TABLE `artist_album`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `artist_bios`
--
ALTER TABLE `artist_bios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artist_track`
--
ALTER TABLE `artist_track`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=750;

--
-- AUTO_INCREMENT for table `backstage_requests`
--
ALTER TABLE `backstage_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing_plans`
--
ALTER TABLE `billing_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `channelables`
--
ALTER TABLE `channelables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment_reports`
--
ALTER TABLE `comment_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment_votes`
--
ALTER TABLE `comment_votes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `css_themes`
--
ALTER TABLE `css_themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `csv_exports`
--
ALTER TABLE `csv_exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_domains`
--
ALTER TABLE `custom_domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_entries`
--
ALTER TABLE `file_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `file_entry_models`
--
ALTER TABLE `file_entry_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `genreables`
--
ALTER TABLE `genreables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `localizations`
--
ALTER TABLE `localizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lyrics`
--
ALTER TABLE `lyrics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissionables`
--
ALTER TABLE `permissionables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `playlist_track`
--
ALTER TABLE `playlist_track`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `playlist_user`
--
ALTER TABLE `playlist_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profile_images`
--
ALTER TABLE `profile_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profile_links`
--
ALTER TABLE `profile_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reposts`
--
ALTER TABLE `reposts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `similar_artists`
--
ALTER TABLE `similar_artists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_profiles`
--
ALTER TABLE `social_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=542;

--
-- AUTO_INCREMENT for table `track_downloads`
--
ALTER TABLE `track_downloads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `track_plays`
--
ALTER TABLE `track_plays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_oauth`
--
ALTER TABLE `users_oauth`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_artist`
--
ALTER TABLE `user_artist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `workspaces`
--
ALTER TABLE `workspaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workspace_user`
--
ALTER TABLE `workspace_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
