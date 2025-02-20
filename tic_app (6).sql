-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2025 at 01:38 PM
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
-- Database: `tic_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `status` enum('Y','N') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Your Trusted Consulting Partner : Solutions for Success', 'Bhagodhan Foundation Consultancy Services', '1737537888_4 (1).jpg', 'contact', 'Y', '2025-01-22 09:24:48', '2025-01-22 09:51:15'),
(7, 'Recruitment, HR Advisory and Training, integrated and simplified', 'Bhagodhan Foundation Consultancy Services', '1737538044_3.jpg', 'contact', 'Y', '2025-01-22 09:27:24', '2025-01-22 09:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `best_our_service`
--

CREATE TABLE `best_our_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `sub_title` text DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `status` enum('Y','N') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `best_our_service`
--

INSERT INTO `best_our_service` (`id`, `title`, `sub_title`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'CUTTING OUT', 'Physical Cutting: Removing something by cutting it away from a larger piece, such as cutting out fabric for a sewing project or paper for crafts.', '1735990075.png', 'Y', '2025-01-04 11:11:07', '2025-01-04 11:28:04'),
(2, 'MEASUREMENTS', 'Units of Quantity: Quantifying something using standardized units, such as meters, liters, or kilograms.', '1735990141.png', 'Y', '2025-01-04 11:29:01', '2025-01-04 11:41:13'),
(3, 'RESIZE', 'Likely refers to spandex cotton or a cotton blend with stretch properties due to the inclusion of spandex. SP cotton is commonly used in clothing for its comfort, breathability, and flexibility.', '1735990199.png', 'Y', '2025-01-04 11:29:59', '2025-01-04 11:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `blogcomments`
--

CREATE TABLE `blogcomments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` enum('Y','N') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogcomments`
--

INSERT INTO `blogcomments` (`id`, `blog_id`, `name`, `email`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', 'vikash', 'vikashtest@gmail.com', 'nice blog', 'Y', '2024-10-08 23:11:04', '2024-10-08 23:11:04'),
(2, '2', 'vikashsaini007', 'test@gmail.com', 'this blog is important for me', 'Y', '2024-10-08 23:12:24', '2024-10-08 23:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `admin` text NOT NULL,
  `short_description` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_tags` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `status` enum('Y','N') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `admin`, `short_description`, `banner`, `description`, `meta_title`, `meta_tags`, `meta_description`, `status`, `created_at`, `updated_at`, `category`, `image`) VALUES
(10, 'Trading Psychology: Mastering Your Mind for Profit', 'trading-psychology-mastering-your-mind-for-profit', 'Lokesh', 'Trading in financial markets involves a wide employ to make informed decisions.', '1737955853_2.avif', '<div class=\"blog__card\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(1, 3, 26);\"><div class=\"blog_news__content mt-5\" style=\"margin-top: 1.25rem !important;\"><p class=\"mb-7 mb-lg-8\" style=\"line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-bottom: 2rem !important;\">rading can be a rewarding endeavor, but it\'s not without its challenges. Even experienced traders can fall victim to common mistakes that can negatively impact their portfolios. In this blog post, we\'ll highlight ten common trading mistakes and provide insights on how to avoid them to enhance your chances of success in the financial markets.</p><div class=\"border-start border-color border-4 ps-4 ps-lg-5 py-1\" style=\"--bs-border-width: 4px; border-color: rgba(var(--p1), 1) !important; padding-top: 0.25rem !important; padding-bottom: 0.25rem !important; padding-left: 1.25rem !important;\"><em class=\"fs-five fw_500 nw1-color\" style=\"font-size: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">One of the most prevalent mistakes is trading without a well-defined plan. Trading without clear objectives, entry and exit strategies, and risk management guidelines can lead to impulsive decisions and losses.</em></div></div></div><div class=\"blog-details__inner\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(1, 3, 26);\"><h3 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: 700; line-height: 38.4px; font-size: 32px; font-family: var(--head-font); padding: 0px; transition: var(--transition);\">Navigating the Trading Jungle A Beginner\'s Guide</h3><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">Before you venture into the trading world, it\'s crucial to grasp the fundamentals. Trading involves the buying and selling of financial assets, such as stocks, currencies, commodities, or cryptocurrencies, with the goal of making a profit.</p><div class=\"row mt-5\" style=\"--bs-gutter-x: 1.5rem; --bs-gutter-y: 0; margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); margin-top: 1.25rem !important;\"><div class=\"col-md-6\" style=\"width: 379.99px; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"><img src=\"http://127.0.0.1:8000/website/assets/images/blog_details_inner.png\" class=\"cus-rounded\" alt=\"Images\" style=\"max-width: 100%; height: auto;\"></div><div class=\"col-md-6\" style=\"width: 379.99px; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"><img src=\"http://127.0.0.1:8000/website/assets/images/blog_details_inner2.png\" class=\"cus-rounded\" alt=\"Images\" style=\"max-width: 100%; height: auto;\"></div></div><p class=\"mt-5\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 1.25rem !important;\">One of the most prevalent mistakes is trading without a well-defined plan. Trading without clear objectives and risk management guidelines can lead to impulsive decisions and losses.</p></div>', 'Stock Market', 'Stock Market', 'Stock Market', 'Y', '2025-01-27 05:30:53', '2025-01-27 05:31:32', '28', '1737955853_blog_news.png'),
(11, 'Trading Pitfalls Common Mistakes and How to Avoid Them', 'trading-pitfalls-common-mistakes-and-how-to-avoid-them', 'admin', 'Trading in financial markets involves a wide employ to make informed decisions.', '1737955985_2.avif', '<div class=\"blog__card\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(1, 3, 26);\"><div class=\"blog_news__content mt-5\" style=\"margin-top: 1.25rem !important;\"><p class=\"mb-7 mb-lg-8\" style=\"line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-bottom: 2rem !important;\">rading can be a rewarding endeavor, but it\'s not without its challenges. Even experienced traders can fall victim to common mistakes that can negatively impact their portfolios. In this blog post, we\'ll highlight ten common trading mistakes and provide insights on how to avoid them to enhance your chances of success in the financial markets.</p><div class=\"border-start border-color border-4 ps-4 ps-lg-5 py-1\" style=\"--bs-border-width: 4px; border-color: rgba(var(--p1), 1) !important; padding-top: 0.25rem !important; padding-bottom: 0.25rem !important; padding-left: 1.25rem !important;\"><em class=\"fs-five fw_500 nw1-color\" style=\"font-size: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">One of the most prevalent mistakes is trading without a well-defined plan. Trading without clear objectives, entry and exit strategies, and risk management guidelines can lead to impulsive decisions and losses.</em></div></div></div><div class=\"blog-details__inner\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(1, 3, 26);\"><h3 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: 700; line-height: 38.4px; font-size: 32px; font-family: var(--head-font); padding: 0px; transition: var(--transition);\">Navigating the Trading Jungle A Beginner\'s Guide</h3><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">Before you venture into the trading world, it\'s crucial to grasp the fundamentals. Trading involves the buying and selling of financial assets, such as stocks, currencies, commodities, or cryptocurrencies, with the goal of making a profit.</p></div>', 'Stock Market', 'Stock Market', 'Stock Market', 'Y', '2025-01-27 05:33:05', '2025-01-27 06:13:26', '29', '1737955985_blog_news2.png'),
(12, 'tetsre', 'tetsre', 'testing', 'tetsre', '1737956038_2.avif', '<p>tetsre</p>', 'Stock Market', 'Stock Market', 'Stock Market', 'N', '2025-01-27 05:33:58', '2025-01-27 06:07:37', '29', '1737956038_c9ec19bdd57f588822bbc64065c919b6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `status` enum('Y','N') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `status`, `created_at`, `updated_at`, `type`) VALUES
(11, 'nice', 'Y', '2024-11-15 16:49:51', '2024-11-15 16:49:51', 'project'),
(12, 'good', 'Y', '2024-11-15 16:52:05', '2024-11-15 16:52:05', 'project'),
(23, 'marketing', 'Y', '2025-01-24 11:53:48', '2025-01-24 11:53:53', 'service'),
(24, 'services', 'Y', '2025-01-24 11:54:10', '2025-01-24 11:54:10', 'service'),
(25, 'stock market', 'N', '2025-01-24 11:54:33', '2025-01-24 12:18:32', 'service'),
(26, 'Technical Analysis', 'Y', '2025-01-25 09:24:54', '2025-01-25 09:24:54', 'blogs'),
(27, 'Technical Analysis', 'N', '2025-01-27 05:21:03', '2025-02-14 20:40:02', 'blogs'),
(28, 'Fundamental Analysis', 'Y', '2025-01-27 05:22:09', '2025-01-27 05:22:09', 'blogs'),
(30, 'Cryptocurrency Trading', 'Y', '2025-01-27 05:22:31', '2025-02-14 20:40:15', 'blogs'),
(31, 'Starter Package', 'Y', '2025-01-27 10:19:39', '2025-01-27 10:20:08', 'pricing'),
(32, 'Growth Package', 'Y', '2025-01-27 10:20:28', '2025-01-27 10:20:28', 'pricing'),
(33, 'Premium Package', 'Y', '2025-01-27 10:20:42', '2025-01-27 10:20:42', 'pricing');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text DEFAULT NULL,
  `status` enum('Y','N') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, '1737553766.png', 'Y', '2025-01-22 13:48:53', '2025-01-22 14:01:26'),
(3, '1737553775.png', 'Y', '2025-01-22 13:49:17', '2025-01-22 13:49:47');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `url`, `comment`, `created_at`, `updated_at`) VALUES
(3, 'Rohit', 'user@gmail.com', 'http://127.0.0.1:8000/single-blog/weather-evident-smiling-bed-agains', 'Your email address will not be published.Your email address will not be published.', '2024-11-17 15:13:51', '2024-11-17 15:13:51');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` text DEFAULT NULL,
  `lname` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `fname`, `lname`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(2, 'lokesh', 'yadav', 'ly0596232@gmail.com', '8769841472', 'hellow', '2025-01-28 05:54:46', '2025-01-28 05:54:46'),
(3, 'tetsre', 'tetsre', 'amanrawat1810@gmail.com', '9876547654', 'hellow', '2025-01-28 05:55:04', '2025-01-28 05:55:04'),
(4, 'ait', 'web', 'Shakeel.bankk@gmail.com', '9352264850', 'hellow users tetser', '2025-01-28 05:55:24', '2025-01-28 05:55:24');

-- --------------------------------------------------------

--
-- Table structure for table `customer_payment`
--

CREATE TABLE `customer_payment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `amount` text DEFAULT NULL,
  `payment_mode` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `utr` text DEFAULT NULL,
  `status` enum('pending','complete','reject') NOT NULL DEFAULT 'pending',
  `screenshot` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_payment`
--

INSERT INTO `customer_payment` (`id`, `customer_id`, `amount`, `payment_mode`, `created_at`, `updated_at`, `payment_date`, `utr`, `status`, `screenshot`) VALUES
(25, '32', '2000', NULL, '2025-02-01 07:09:38', '2025-02-01 08:37:09', NULL, 'VIKDGA587410', 'complete', 'https://res.cloudinary.com/dgfvwnxhp/image/upload/v1738393776/wallet_payments/ihwhwn3rf38wshjfa1ok.png'),
(26, '32', '500', NULL, '2025-02-01 09:28:38', '2025-02-01 09:29:18', NULL, 'VIKASH123456', 'reject', 'https://res.cloudinary.com/dgfvwnxhp/image/upload/v1738402116/wallet_payments/bqw5wkunpdpuzv8a3f65.png'),
(27, '32', '5000', NULL, '2025-02-03 10:21:22', '2025-02-03 10:30:05', NULL, 'TRT123456JGT', 'complete', 'https://res.cloudinary.com/dgfvwnxhp/image/upload/v1738578081/wallet_payments/smne6tnpvgffqcrk8xcg.png'),
(28, '33', '2000', NULL, '2025-02-10 05:40:16', '2025-02-14 20:39:36', NULL, 'VIEADH12345F', 'reject', 'https://res.cloudinary.com/dgfvwnxhp/image/upload/v1739166014/wallet_payments/abihsob61sqzf4qy3cbq.png'),
(29, '34', '10000', NULL, '2025-02-11 05:46:55', '2025-02-11 05:50:30', NULL, 'BHS23HSI456O', 'complete', 'https://res.cloudinary.com/dgfvwnxhp/image/upload/v1739252812/wallet_payments/qoqzh5vdraz8jolbhtss.png'),
(30, '46', '5000', NULL, '2025-02-14 06:03:16', '2025-02-14 06:03:44', NULL, '982345678923', 'complete', 'https://res.cloudinary.com/dgfvwnxhp/image/upload/v1739512993/wallet_payments/zih2l9obvfdbmcgkmudz.png'),
(31, '49', '5000', NULL, '2025-02-15 11:25:43', '2025-02-15 11:26:31', NULL, '65837DYTJS76', 'complete', 'https://res.cloudinary.com/dgfvwnxhp/image/upload/v1739598942/wallet_payments/uwjpfq0mil6wquwditih.jpg'),
(32, '50', '2000', NULL, '2025-02-15 11:40:18', '2025-02-15 11:41:13', NULL, '123456789321', 'complete', 'https://res.cloudinary.com/dgfvwnxhp/image/upload/v1739599818/wallet_payments/x4o4fg9wjhxzir3rtuxe.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` enum('Y','N') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `name`, `email`, `phone`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'vikashsaini007', 'vikashsainiji116@gmail.com', '7357791943', 'test', 'hello', 'Y', '2024-09-30 01:50:10', '2024-09-30 01:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` enum('Y','N') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Lorem Ipsum is simply dummy text of the', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry.', 'Y', '2024-11-16 11:13:26', '2024-11-16 15:27:45'),
(12, 'test', 'test desc', 'Y', '2024-11-23 12:27:40', '2024-11-23 12:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text DEFAULT NULL,
  `status` enum('Y','N') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, '1737551247.png', 'Y', '2025-01-22 13:07:27', '2025-01-22 13:07:27'),
(5, '1737551330.png', 'Y', '2025-01-22 13:08:50', '2025-01-22 13:08:50'),
(6, '1737551390.png', 'Y', '2025-01-22 13:09:50', '2025-01-22 13:09:50'),
(7, '1737551497.png', 'N', '2025-01-22 13:11:37', '2025-01-22 13:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `invested`
--

CREATE TABLE `invested` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `amount` text DEFAULT NULL,
  `time` text DEFAULT NULL,
  `interest` double DEFAULT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `completestatus` enum('pending','complete') DEFAULT 'pending',
  `type` text DEFAULT NULL,
  `firstminus` enum('N','Y') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invested`
--

INSERT INTO `invested` (`id`, `userid`, `package_id`, `amount`, `time`, `interest`, `status`, `created_at`, `updated_at`, `completestatus`, `type`, `firstminus`) VALUES
(2, 32, 0, '2000', 'Months', 6, 'Y', '2025-02-09 07:11:42', '2025-02-10 07:11:42', 'pending', 'normal', 'Y'),
(3, 32, 1, '1999', 'Months', 5, 'Y', '2025-02-01 03:31:03', '2025-02-03 10:31:03', 'pending', 'business', 'N'),
(4, 34, 1, '1999', 'Months', 5, 'Y', '2025-02-05 05:51:16', '2025-02-11 05:51:16', 'pending', 'business', 'N'),
(5, 35, 0, '1000', 'Months', 6, 'Y', '2025-02-13 07:42:50', '2025-02-13 07:42:50', 'pending', 'business', 'N'),
(6, 35, 0, '2000', 'Months', 6, 'Y', '2025-02-13 07:49:16', '2025-02-13 07:49:16', 'pending', 'business', 'N'),
(15, 50, 0, '2000', 'Months', 6, 'Y', '2025-02-15 11:41:56', '2025-02-15 11:41:56', 'pending', 'normal', 'N'),
(16, 32, 1, '1999', 'Months', 5, 'Y', '2025-02-20 09:24:11', '2025-02-20 09:24:11', 'pending', 'business', 'N'),
(17, 32, 1, '1999', 'Months', 5, 'Y', '2025-02-20 09:25:35', '2025-02-20 09:25:35', 'pending', 'business', 'N'),
(18, 34, 1, '1999', 'Months', 5, 'Y', '2025-02-20 10:33:54', '2025-02-20 10:33:54', 'pending', 'business', 'N'),
(19, 34, 0, '2500', 'Months', 6, 'Y', '2025-02-20 10:38:56', '2025-02-20 10:38:56', 'pending', 'normal', 'N');

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
(1, '2024_10_14_113959_banners', 1),
(2, '2024_11_14_034400_events', 2),
(3, '2024_11_15_011822_create_projects', 3),
(4, '2024_11_15_031346_create_proje', 4),
(5, '2024_11_15_222859_create_faqs', 5),
(6, '2024_11_15_224621_create_faq', 6),
(7, '2024_11_16_000758_create_works', 7),
(9, '2024_11_17_023935_create_comments', 9),
(10, '2024_11_20_020530_create_pagesettings', 10),
(11, '2024_12_05_052843_customers', 11),
(12, '2024_12_09_172438_cutting_qty', 12),
(13, '2024_12_11_154245_property', 13),
(14, '2024_12_19_212924_workshop_cutting', 14),
(15, '2024_12_28_135136_customer_payment', 15),
(19, '2025_01_03_123701_create_process', 17),
(20, '2025_01_04_161451_create_best_our_service', 18),
(21, '2025_01_04_173012_create_gallery', 19),
(22, '2025_01_04_175721_create_videos', 20),
(23, '2025_01_22_185106_create_clients', 21),
(26, '2024_11_16_020551_create_contactus', 23),
(27, '2025_01_27_155408_create_pakeges', 24),
(28, '2025_02_01_154729_investing', 25),
(29, '2025_02_04_094546_withdraw', 26);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `pagename` text DEFAULT NULL,
  `bradcump_title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta` text DEFAULT NULL,
  `tag` text DEFAULT NULL,
  `meta_d` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` enum('Y','N') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `title`, `slug`, `pagename`, `bradcump_title`, `description`, `meta`, `tag`, `meta_d`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'About Us', 'about-us', 'About Us', 'We Work Hard And Make Your Home Beautiful', '<h5 class=\"card-title mb-0\" style=\"color: rgb(74, 90, 107); font-family: &quot;Public Sans&quot;, sans-serif;\"><span style=\"color: rgb(24, 35, 51); font-family: Poppins, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: 400; text-align: center; background-color: rgb(248, 249, 250);\">Friendly customer service staff for your all questions!</span></h5>\"\"', 'About Us', 'About Us', 'About Us', '1732072174_ttm-pagetitle-bg.jpg', 'Y', '2024-11-20 14:40:59', '2024-11-21 10:56:49'),
(3, 'Services', 'services', 'Services', 'OUR SERVICES', '<h5 class=\"card-title mb-0\" style=\"color: rgb(74, 90, 107); font-family: &quot;Public Sans&quot;, sans-serif;\"><br></h5>\"\"\"', 'Services', 'Services', 'Services', '1732073480_ttm-pagetitle-bg.jpg', 'Y', '2024-11-20 14:41:21', '2024-11-21 10:59:36'),
(4, 'Projects', 'projects', 'Projects', 'Projects', '\"', 'Projects', 'Projects', 'Projects', '1732075787_ttm-pagetitle-bg.jpg', 'Y', '2024-11-20 16:09:47', '2024-11-21 11:02:20'),
(5, 'Blog', 'blog', 'Blog', 'Blog', '<p>Blog</p>\"', 'Blog', 'Blog', 'Blog', '1732075982_ttm-pagetitle-bg.jpg', 'Y', '2024-11-20 16:13:02', '2024-11-21 11:03:37'),
(6, 'FAQ,S', 'faqs', 'FAQ,S', 'FAQ,S', '\"', 'FAQ,S', 'FAQ,S', 'FAQ,S', '1732076108_ttm-pagetitle-bg.jpg', 'Y', '2024-11-20 16:15:08', '2024-11-21 11:05:31'),
(7, 'Terms & Conditions', 'terms-conditions', 'Terms & Conditions', 'Terms & Conditions', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(141, 146, 151); font-family: Poppins, Tahoma, Geneva, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem, quibusdam vero tempore officia maiores omnis error atque amet et pariatur aliquid voluptas odit perferendis cum obcaecati hic autem, cupiditate sint nesciunt! Eaque eum voluptates quia? Ad error esse, ullam ducimus, provident quasi dignissimos temporibus reprehenderit aut consectetur, suscipit ipsam voluptate praesentium ipsum culpa ratione deserunt aliquam. Sit placeat hic quia sed est excepturi illo omnis error fugit! Quod maiores cumque porro nam non eveniet animi voluptates et quis cum laboriosam quidem nisi error voluptas eaque doloribus, earum dolores voluptatibus dolorem voluptate! Ratione et, tempora nulla enim quia provident obcaecati reprehenderit!</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(141, 146, 151); font-family: Poppins, Tahoma, Geneva, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem, quibusdam vero tempore officia maiores omnis error atque amet et pariatur aliquid voluptas odit perferendis cum obcaecati hic autem, cupiditate sint nesciunt! Eaque eum voluptates quia? Ad error esse, ullam ducimus, provident quasi dignissimos temporibus reprehenderit aut consectetur, suscipit ipsam voluptate praesentium ipsum culpa ratione deserunt aliquam. Sit placeat hic quia sed est excepturi illo omnis error fugit! Quod maiores cumque porro nam non eveniet animi voluptates et quis cum laboriosam quidem nisi error voluptas eaque doloribus, earum dolores voluptatibus dolorem voluptate! Ratione et, tempora nulla enim quia provident obcaecati reprehenderit!</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(141, 146, 151); font-family: Poppins, Tahoma, Geneva, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem, quibusdam vero tempore officia maiores omnis error atque amet et pariatur aliquid voluptas odit perferendis cum obcaecati hic autem, cupiditate sint nesciunt! Eaque eum voluptates quia? Ad error esse, ullam ducimus, provident quasi dignissimos temporibus reprehenderit aut consectetur, suscipit ipsam voluptate praesentium ipsum culpa ratione deserunt aliquam. Sit placeat hic quia sed est excepturi illo omnis error fugit! Quod maiores cumque porro nam non eveniet animi voluptates et quis cum laboriosam quidem nisi error voluptas eaque doloribus, earum dolores voluptatibus dolorem voluptate! Ratione et, tempora nulla enim quia provident obcaecati reprehenderit!</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(141, 146, 151); font-family: Poppins, Tahoma, Geneva, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem, quibusdam vero tempore officia maiores omnis error atque amet et pariatur aliquid voluptas odit perferendis cum obcaecati hic autem, cupiditate sint nesciunt! Eaque eum voluptates quia? Ad error esse, ullam ducimus, provident quasi dignissimos temporibus reprehenderit aut consectetur, suscipit ipsam voluptate praesentium ipsum culpa ratione deserunt aliquam. Sit placeat hic quia sed est excepturi illo omnis error fugit! Quod maiores cumque porro nam non eveniet animi voluptates et quis cum laboriosam quidem nisi error voluptas eaque doloribus, earum dolores voluptatibus dolorem voluptate! Ratione et, tempora nulla enim quia provident obcaecati reprehenderit!</p>\"', 'Terms & Conditions', 'Terms & Conditions', 'Terms & Conditions', '1732077208_ttm-pagetitle-bg.jpg', 'Y', '2024-11-20 16:33:28', '2024-11-21 11:10:06'),
(8, 'Privacy Policy', 'privacy-policy', 'Privacy Policy', 'Privacy Policy', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(141, 146, 151); font-family: Poppins, Tahoma, Geneva, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem, quibusdam vero tempore officia maiores omnis error atque amet et pariatur aliquid voluptas odit perferendis cum obcaecati hic autem, cupiditate sint nesciunt! Eaque eum voluptates quia? Ad error esse, ullam ducimus, provident quasi dignissimos temporibus reprehenderit aut consectetur, suscipit ipsam voluptate praesentium ipsum culpa ratione deserunt aliquam. Sit placeat hic quia sed est excepturi illo omnis error fugit! Quod maiores cumque porro nam non eveniet animi voluptates et quis cum laboriosam quidem nisi error voluptas eaque doloribus, earum dolores voluptatibus dolorem voluptate! Ratione et, tempora nulla enim quia provident obcaecati reprehenderit!</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(141, 146, 151); font-family: Poppins, Tahoma, Geneva, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem, quibusdam vero tempore officia maiores omnis error atque amet et pariatur aliquid voluptas odit perferendis cum obcaecati hic autem, cupiditate sint nesciunt! Eaque eum voluptates quia? Ad error esse, ullam ducimus, provident quasi dignissimos temporibus reprehenderit aut consectetur, suscipit ipsam voluptate praesentium ipsum culpa ratione deserunt aliquam. Sit placeat hic quia sed est excepturi illo omnis error fugit! Quod maiores cumque porro nam non eveniet animi voluptates et quis cum laboriosam quidem nisi error voluptas eaque doloribus, earum dolores voluptatibus dolorem voluptate! Ratione et, tempora nulla enim quia provident obcaecati reprehenderit!</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(141, 146, 151); font-family: Poppins, Tahoma, Geneva, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem, quibusdam vero tempore officia maiores omnis error atque amet et pariatur aliquid voluptas odit perferendis cum obcaecati hic autem, cupiditate sint nesciunt! Eaque eum voluptates quia? Ad error esse, ullam ducimus, provident quasi dignissimos temporibus reprehenderit aut consectetur, suscipit ipsam voluptate praesentium ipsum culpa ratione deserunt aliquam. Sit placeat hic quia sed est excepturi illo omnis error fugit! Quod maiores cumque porro nam non eveniet animi voluptates et quis cum laboriosam quidem nisi error voluptas eaque doloribus, earum dolores voluptatibus dolorem voluptate! Ratione et, tempora nulla enim quia provident obcaecati reprehenderit!</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(141, 146, 151); font-family: Poppins, Tahoma, Geneva, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem, quibusdam vero tempore officia maiores omnis error atque amet et pariatur aliquid voluptas odit perferendis cum obcaecati hic autem, cupiditate sint nesciunt! Eaque eum voluptates quia? Ad error esse, ullam ducimus, provident quasi dignissimos temporibus reprehenderit aut consectetur, suscipit ipsam voluptate praesentium ipsum culpa ratione deserunt aliquam. Sit placeat hic quia sed est excepturi illo omnis error fugit! Quod maiores cumque porro nam non eveniet animi voluptates et quis cum laboriosam quidem nisi error voluptas eaque doloribus, earum dolores voluptatibus dolorem voluptate! Ratione et, tempora nulla enim quia provident obcaecati reprehenderit!</p>\"', 'Privacy Policy', 'Privacy-Policy', 'Privacy-Policy', '1732077468_ttm-pagetitle-bg.jpg', 'Y', '2024-11-20 16:37:48', '2024-11-21 11:12:38'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL),
(11, 'Contact Us', 'contact-us', 'Contact Us', 'Contact Us', '<h1 class=\"title\" style=\"margin-bottom: 10px; font-family: Poppins, Arial, Helvetica, sans-serif; font-weight: 600; line-height: 50px; color: rgb(255, 255, 255); font-size: 43px; text-transform: capitalize; padding-left: 20px; background-color: rgb(243, 247, 249);\">Contact Us</h1>', 'Contact Us', 'Contact Us', 'Contact Us', '1732144009_post-nine-450x600.jpg', 'Y', '2024-11-21 11:06:49', '2024-11-21 11:06:49'),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pakeges`
--

CREATE TABLE `pakeges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` text DEFAULT NULL,
  `currency` text DEFAULT NULL,
  `formate` text DEFAULT NULL,
  `deac` text DEFAULT NULL,
  `ammount` text DEFAULT NULL,
  `status` enum('Y','N') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `interest_rate` text DEFAULT NULL,
  `clint_criteria` text DEFAULT NULL,
  `benefit` text DEFAULT NULL,
  `ac_type` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `completestatus` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pakeges`
--

INSERT INTO `pakeges` (`id`, `category`, `currency`, `formate`, `deac`, `ammount`, `status`, `created_at`, `updated_at`, `interest_rate`, `clint_criteria`, `benefit`, `ac_type`, `type`, `completestatus`) VALUES
(1, '31', '₹', 'Months', '<h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 28.8px; font-size: 24px; font-family: var(--head-font); color: rgb(255, 255, 255); padding: 0px; transition: var(--transition);\"><div class=\"feature\" style=\"font-size: 14px; margin: 1.5rem 0px; border-bottom: 1px dotted rgba(242, 242, 242, 0.25); padding: 10px 0px; font-family: Poppins, sans-serif; text-align: center; background-color: rgb(31, 31, 31);\">All Starter Package Features</div><div class=\"feature\" style=\"font-size: 14px; margin: 1.5rem 0px; border-bottom: 1px dotted rgba(242, 242, 242, 0.25); padding: 10px 0px; font-family: Poppins, sans-serif; text-align: center; background-color: rgb(31, 31, 31);\">Basic Risk Management Tools</div><div class=\"feature\" style=\"font-size: 14px; margin: 1.5rem 0px; border-bottom: 1px dotted rgba(242, 242, 242, 0.25); padding: 10px 0px; font-family: Poppins, sans-serif; text-align: center; background-color: rgb(31, 31, 31);\">Quarterly Portfolio Review</div><div class=\"feature\" style=\"font-size: 14px; margin: 1.5rem 0px; border-bottom: 1px dotted rgba(242, 242, 242, 0.25); padding: 10px 0px; font-family: Poppins, sans-serif; text-align: center; background-color: rgb(31, 31, 31);\">24/7 Customer Support</div><div class=\"feature\" style=\"font-size: 14px; margin: 1.5rem 0px; border-bottom: 1px dotted rgba(242, 242, 242, 0.25); padding: 10px 0px; font-family: Poppins, sans-serif; text-align: center; background-color: rgb(31, 31, 31);\">Monthly Portfolio Review\\</div></h2>', '1999', 'Y', '2025-01-28 07:24:54', '2025-02-17 06:44:14', '5', 'Just Test', '5% Profilt Complusory', 'Dimond', NULL, NULL),
(2, '31', '₹', 'Years', '<div class=\"feature\" style=\"margin: 1.5rem 0px; color: rgb(255, 255, 255); border-bottom: 1px dotted rgba(242, 242, 242, 0.25); padding: 10px 0px; font-family: Poppins, sans-serif; text-align: center; background-color: rgb(31, 31, 31);\">All Starter Package Features</div><div class=\"feature\" style=\"margin: 1.5rem 0px; color: rgb(255, 255, 255); border-bottom: 1px dotted rgba(242, 242, 242, 0.25); padding: 10px 0px; font-family: Poppins, sans-serif; text-align: center; background-color: rgb(31, 31, 31);\">Basic Risk Management Tools</div><div class=\"feature\" style=\"margin: 1.5rem 0px; color: rgb(255, 255, 255); border-bottom: 1px dotted rgba(242, 242, 242, 0.25); padding: 10px 0px; font-family: Poppins, sans-serif; text-align: center; background-color: rgb(31, 31, 31);\">Quarterly Portfolio Review</div><div class=\"feature\" style=\"margin: 1.5rem 0px; color: rgb(255, 255, 255); border-bottom: 1px dotted rgba(242, 242, 242, 0.25); padding: 10px 0px; font-family: Poppins, sans-serif; text-align: center; background-color: rgb(31, 31, 31);\">24/7 Customer Support</div><div class=\"feature\" style=\"margin: 1.5rem 0px; color: rgb(255, 255, 255); border-bottom: 1px dotted rgba(242, 242, 242, 0.25); padding: 10px 0px; font-family: Poppins, sans-serif; text-align: center; background-color: rgb(31, 31, 31);\">Monthly Portfolio Review</div>', '9999', 'Y', '2025-01-30 08:10:21', '2025-02-17 06:44:21', '3', 'Just Test', '3% Profilt Complusory', 'Dimond', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` enum('Y','N') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MESC', '1728026766_1.png', 'Y', '2024-10-04 01:56:06', '2024-10-04 01:56:06'),
(4, 'NSDC', '1728027682_nsdc.png', 'Y', '2024-10-04 01:59:11', '2024-10-04 02:11:22');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `process`
--

CREATE TABLE `process` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `sub_title` text DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `status` enum('Y','N') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `process`
--

INSERT INTO `process` (`id`, `title`, `sub_title`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Crafting Excellence', 'Our meticulous SP Cotton processing ensures the finest quality fabrics. From sourcing premium raw materials to employing advanced techniques,', '1735902289.png', 'Y', '2025-01-03 11:04:49', '2025-01-03 11:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `category` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `long_description` text DEFAULT NULL,
  `baner_img` text DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_tags` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `category`, `image`, `description`, `slug`, `long_description`, `baner_img`, `icon`, `meta_title`, `meta_tags`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(16, 'Client Centric Appraoch', NULL, '1737442741.jpg', 'A client-centric approach places the client at the core of all business activities, ensuring that products, services,', 'client-centric-appraoch', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">The Euro is down to 1.048, after ending yesterday at 1.0481. Overall, a 0.01% loss or 1 pips today.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">The MACD index is indicating that momentum is shifting from bullish to bearish following a negative crossover. When the MACD falls below the signal line, it is typically considered to be a bearish development favoring short positions. On the other hand, note that the Relative Strength Index has gone below 30, going into oversold conditions and allowing more gains. Euro-Dollar\'s lower Bollinger Band? is at 1.0476, indicating that the asset has overextended to the downside and could, therefore, bounce back as buyers look for bargains.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">Overall, looking at the technical analysis landscape, it seems that although indicators are mixed and some are pointing in different directions further drawbacks may be next for the Euro.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">Positive performances can be seen by looking at other currencies as GBP/NZD increases 0.19% to trade around 2.035. EUR/NZD increases 0.18% to trade around 1.764.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">n the meantime, USD/SGD trades close to 1.3734, with no major change</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">The currency pair has been trending lower for about 2 months. The Euro has shed 78.55% over the past three months.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">This content was generated by AI</p>', '1737442741.jpg', '1737723765.svg', 'Stock Market', 'Stock Market', 'Stock Market', 'Y', '2025-01-21 06:59:01', '2025-01-25 09:23:35'),
(17, 'Strategy Consulting', '23', '1737722387.png', 'transformed the trading landscape. Online trading platforms and mobile apps have made it easier than ever for individuals', 'strategy-consulting', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">The Euro is down to 1.048, after ending yesterday at 1.0481. Overall, a 0.01% loss or 1 pips today.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">The MACD index is indicating that momentum is shifting from bullish to bearish following a negative crossover. When the MACD falls below the signal line, it is typically considered to be a bearish development favoring short positions. On the other hand, note that the Relative Strength Index has gone below 30, going into oversold conditions and allowing more gains. Euro-Dollar\'s lower Bollinger Band? is at 1.0476, indicating that the asset has overextended to the downside and could, therefore, bounce back as buyers look for bargains.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">Overall, looking at the technical analysis landscape, it seems that although indicators are mixed and some are pointing in different directions further drawbacks may be next for the Euro.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">Positive performances can be seen by looking at other currencies as GBP/NZD increases 0.19% to trade around 2.035. EUR/NZD increases 0.18% to trade around 1.764.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">n the meantime, USD/SGD trades close to 1.3734, with no major change</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">The currency pair has been trending lower for about 2 months. The Euro has shed 78.55% over the past three months.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">This content was generated by AI</p>', NULL, '1737722387.svg', 'Stock Market', 'Stock Market', 'Stock Market', 'Y', '2025-01-24 12:39:47', '2025-01-24 12:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` enum('Y','N') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Harly Rayans', '1731726265.jpg', 'Y', '2024-11-16 11:50:22', '2024-11-17 17:43:35'),
(9, 'rohit', '1732364997.png', 'N', '2024-11-17 16:32:06', '2025-01-04 15:13:49'),
(12, 'lokesh', '1736003616.jpg', 'Y', '2025-01-04 15:12:36', '2025-01-04 15:13:43');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `destination` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` enum('Y','N') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `destination`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(11, 'lokesh', 'Web Developer', '<p>Bhagodhan Foundation has proven to be a reliable and innovative web development partner, delivering cutting-edge solutions that enhance user experience and functionality.</p>', '1735991456_WhatsApp Image 2024-06-21 at 14.52.50_a1ddf14b.jpg', 'Y', '2025-01-04 11:49:32', '2025-01-22 10:13:43'),
(13, 'Balogh Imre', 'Account Executive', '<p>\"Trading has always been a passion, but it wasn\'t management that began to see consistent profits. The journey was not without its ups and downs, but the lessons I learned along the way have been embraced riskinvaluable.</p>', '1737961004_author3.png', 'Y', '2025-01-27 06:56:44', '2025-01-27 06:56:44'),
(14, 'Brooklyn Simmons', 'Marketing Director', '<p>\"Trading has always been a passion, but it wasn\'t management that began to see consistent profits. The journey was not without its ups and downs, but the lessons I learned along the way have been embraced riskinvaluable.</p>', '1737961059_author.png', 'Y', '2025-01-27 06:57:39', '2025-01-27 06:57:39'),
(15, 'Chris Moore', 'President of Sales', '<p>\"Trading has always been a passion, but it wasn\'t management that began to see consistent profits. The journey was not without its ups and downs, but the lessons I learned along the way have been embraced riskinvaluable.</p>', '1737961105_author2.png', 'Y', '2025-01-27 06:58:25', '2025-01-27 06:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `company_name` text DEFAULT NULL,
  `company_address` text DEFAULT NULL,
  `gstin` text DEFAULT NULL,
  `domain` text DEFAULT NULL,
  `codeid` text DEFAULT NULL,
  `customer_type_id` text DEFAULT NULL,
  `is_block` enum('N','Y') NOT NULL,
  `role` enum('user','hrms','crm','superadmin','team') NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` text DEFAULT NULL,
  `job_title` text DEFAULT NULL,
  `role_type` text DEFAULT NULL,
  `destination` varchar(200) DEFAULT NULL,
  `access_type` varchar(200) DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `account_holder_name` text DEFAULT NULL,
  `account_number` text DEFAULT NULL,
  `ifsc_code` text DEFAULT NULL,
  `branch_name` text DEFAULT NULL,
  `aadhar_card_number` text DEFAULT NULL,
  `pan_number` text DEFAULT NULL,
  `pan_card` text DEFAULT NULL,
  `aadhar_card` text DEFAULT NULL,
  `aadhar_card_back` text DEFAULT NULL,
  `wallet` bigint(20) DEFAULT NULL,
  `referral_code` double DEFAULT NULL,
  `referred_by` varchar(255) DEFAULT NULL,
  `refer_by` text DEFAULT NULL,
  `cancel_chaque` text DEFAULT NULL,
  `nominee_name` text DEFAULT NULL,
  `nominee_relation` text DEFAULT NULL,
  `nominee_age` text DEFAULT NULL,
  `nominee_contact` text DEFAULT NULL,
  `kyc_status` set('pending','complete','reject','apply') DEFAULT NULL,
  `kyc_time` date DEFAULT NULL,
  `reason` longtext DEFAULT NULL,
  `kyc_reason` longtext DEFAULT NULL,
  `refer_wallet` bigint(20) DEFAULT NULL,
  `refer_by_wallet` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `image`, `company_name`, `company_address`, `gstin`, `domain`, `codeid`, `customer_type_id`, `is_block`, `role`, `status`, `created_at`, `updated_at`, `remember_token`, `job_title`, `role_type`, `destination`, `access_type`, `first_name`, `last_name`, `account_holder_name`, `account_number`, `ifsc_code`, `branch_name`, `aadhar_card_number`, `pan_number`, `pan_card`, `aadhar_card`, `aadhar_card_back`, `wallet`, `referral_code`, `referred_by`, `refer_by`, `cancel_chaque`, `nominee_name`, `nominee_relation`, `nominee_age`, `nominee_contact`, `kyc_status`, `kyc_time`, `reason`, `kyc_reason`, `refer_wallet`, `refer_by_wallet`) VALUES
(19, 'Admin', 'targetvr43@gmail.com', '$2y$10$9/HxCNFu2COKjIWX9TrxbOOEiL/tqbr7YPimqLvNv5/qdXoZFYG16', '8888887499', NULL, NULL, NULL, NULL, NULL, NULL, '12345678', NULL, 'N', 'superadmin', 'approved', '2024-10-02 01:28:51', '2024-11-11 02:39:14', 'HdJK6iqfKCYgcNoLsijyCb39Q0VxnbPH4WXmMjbbhAC9gdC1C04RrXq914xx', 'UI Designer', 'admin', 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, NULL),
(31, 'vikashsaini007', 'fdfdf\\vikashsainiji116@gmail.com', '$2y$10$zxhR/nAU4vcGALw9dsvRXeDqMpI9eMTaW6Dj2pu/xSGC71rTCJu2u', NULL, NULL, '1739967989.jpg', NULL, NULL, NULL, NULL, '112233445566', NULL, 'N', 'user', 'approved', '2025-01-29 13:06:38', '2025-02-19 12:26:57', 'QDeRWrAW9fpjREpErjJqfOFs5nwAPxheKokgEN5c', NULL, NULL, NULL, NULL, 'Vikash', 'Saini', 'vikash kumar saini', '917357791943', 'PYTM0123456', 'Noida', '275955884466', 'LFHTS0924U', 'uploads/kyc/1738228575_pan.jpeg', 'uploads/kyc/1738228575_aadhar.jpeg', NULL, NULL, NULL, NULL, '32', NULL, 'Umesh Kumar', 'Brother', '25', '7895458745', 'pending', NULL, NULL, NULL, NULL, NULL),
(32, 'suraj007', 'vikashsainiji116@gmail.com', '$2y$10$lPj2i.FsMCBC3Bfx2G9/deK9x8ucUVEX4WsrDkO4GScdctKp7vZtO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'user', 'approved', '2025-01-29 13:10:22', '2025-02-20 10:38:56', 'LiO56qDQgcsDnJMpSlA9UeDrgS27xIp1sJwE2S9v', NULL, NULL, NULL, NULL, 'Suraj', 'Kumar', 'Vikash Kumar Saini', '917357791943', 'PYT0123456', 'Paytm Noida', '245685459875', 'TOSPE3458J', 'uploads/kyc/1740035335_pan.jpg', 'uploads/kyc/1740035335_aadhar.jpg', 'uploads/kyc/1740035335_aadhar_back.jpg', 3046, NULL, NULL, '33', 'uploads/kyc/1740035335_cancel_cheque.jpg', 'Umesh Kumar', 'Brother', '25', '7357791943', 'complete', '2025-02-20', NULL, 'Kyc Complete', 45, NULL),
(33, 'mahesh008', 'mahesh@gmail.com', '$2y$10$wYtGbhXbC5T6F4OHDaOVWufjNKecKOJ0hzO5dg/mXQT3NzbSvu12a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12345678', NULL, 'N', 'user', 'approved', '2025-01-29 13:24:13', '2025-02-20 09:25:35', NULL, NULL, NULL, NULL, NULL, 'Mahesh 00', 'Kumar', 'vikash saini', '911234567890', 'PYTM012345678', 'Paytm Noida', '123456789012', 'LTWPS0853J', 'uploads/kyc/1738165232_pan.jpeg', 'uploads/kyc/1738165079_aadhar.jpeg', NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, NULL, NULL, 40, NULL),
(34, 'subhash007', 'subhash@gmail.com', '$2y$10$1Uoyn.vyq0mpyeJaY77/5uZ5nMHNlGuEJdJFwg9ZDuVbaNAYeAmUS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12345678', NULL, 'N', 'user', 'approved', '2025-02-11 05:45:31', '2025-02-20 10:55:19', NULL, NULL, NULL, NULL, NULL, 'subhhash', 'kumar', NULL, NULL, NULL, NULL, '856577889655', 'HTLOHDYEKJ', 'uploads/kyc/1740048868_pan.jpg', 'uploads/kyc/1740048868_aadhar.png', 'uploads/kyc/1740048868_aadhar_back.jpg', 3502, NULL, NULL, '32', 'uploads/kyc/1740048868_cancel_cheque.jpg', NULL, NULL, NULL, NULL, 'complete', '2025-02-20', NULL, 'Applied For Kyc. Please wait for admin verification.', NULL, 25),
(35, 'yadav', 'ly0596232@gmail.com', '$2y$10$dMBLLc/2lOras2p69x9ltO763HF4FwUUDqZ6BSFSSGxgnQ.e8MoF6', NULL, NULL, '1739605920.jpg', NULL, NULL, NULL, NULL, 'lokesh@3344', NULL, 'N', 'user', 'approved', '2025-02-12 10:28:25', '2025-02-17 11:54:12', NULL, NULL, NULL, NULL, NULL, 'lokesh2', 'yadav', 'John Doe', '1234567890', 'SBIN0001234', 'Main Branch', '123456789012', 'ABCDE1234F', 'uploads/kyc/1739782298_pan.png', 'uploads/kyc/1739782298_aadhar.png', 'uploads/kyc/1739782298_aadhar_back.png', 8000, NULL, NULL, '32', 'uploads/kyc/1739782298_cancel_cheque.png', NULL, NULL, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, NULL),
(39, 'lokesh', 'lokesh@gmil.com', '$2y$10$prhvuhpCrLtC.KtiyblNV.2FfAHcwaQkXHkNBlDDQs6mf.hYLhhpu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12345678', NULL, 'N', 'user', 'pending', '2025-02-13 05:57:05', '2025-02-13 05:57:05', NULL, NULL, NULL, NULL, NULL, 'lokesh', 'yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, NULL),
(40, 'yayay', 'yay@gmail.com', '$2y$10$glNdZk/NeqwhuIo/sBIXkunreoj8eBRexsHyjBvMpq2V/L55KQL5S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12345678', NULL, 'N', 'user', 'pending', '2025-02-13 06:00:46', '2025-02-13 06:00:46', NULL, NULL, NULL, NULL, NULL, 'yaya', 'yaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, NULL),
(47, 'vishalalekar123', 'VISHALALEKAR123@GMAIL.COM', '$2y$10$vvr7wqOk12GlmchyQ9tpMOCblwhKYggYEa/e4ElEDZOmqSZtaZw/y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VISHAL@123', NULL, 'N', 'user', 'pending', '2025-02-15 10:10:10', '2025-02-15 10:42:20', NULL, NULL, NULL, NULL, NULL, 'vishal', 'alekar', 'VISHAL ABC ALEKAR', '31221664598', 'SBIN0000295', 'SHRIGONDA', '978920735654', 'DGZPD2154P', 'uploads/kyc/1739596340_pan.jpg', 'uploads/kyc/1739596340_aadhar.jpg', 'uploads/kyc/1739596340_aadhar_back.jpg', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, NULL),
(50, 'saniya12', 'saniyatest12@gmail.com', '$2y$10$RCBlEMgIMVWDaL5yUhHo1uZ4hmjE7Neg62f3NtFYAvOg4UhGe63hq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12345678', NULL, 'N', 'user', 'pending', '2025-02-15 11:38:03', '2025-02-19 12:10:06', '0Y0RflbAXimpiexrfMFYNiwjGiFDauwetw4t6TEG', NULL, NULL, NULL, NULL, 'Saniya', 'Kumari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '49', NULL, NULL, NULL, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, NULL),
(51, 'suraj@gmail.com', 'suraj123@gmail.com', '$2y$10$4AGhvXLaeFD93AmS9DyG/O6Vmm2rmJhJygHMXLqchPSuo74GRgbsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', NULL, 'N', 'user', 'pending', '2025-02-15 11:52:51', '2025-02-15 11:52:51', NULL, NULL, NULL, NULL, NULL, 'suraj', 'jamdade', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, NULL),
(52, 'tesing', 'tesing@gmail.com', '$2y$10$VfMjimC6XNYgOcW3Zu/qneeXbHVAp.s/YMw/myhM7QgCYVG7M/q36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12345678', NULL, 'N', 'user', 'approved', '2025-02-17 11:19:07', '2025-02-17 11:46:10', NULL, NULL, NULL, NULL, NULL, 'tetsre', 'tetsr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'apply', NULL, NULL, NULL, NULL, NULL),
(53, 'testone', 'testone@gmail.com', '$2y$10$jbE84MUU5/XIe5jJChAJJOzfB9JbHf8cYIiBBOfXtZiZtAUyOPKvu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12345678', NULL, 'N', 'user', 'rejected', '2025-02-19 06:54:33', '2025-02-19 10:02:56', NULL, NULL, NULL, NULL, NULL, 'testone', 'testone', NULL, NULL, NULL, NULL, '275900448633', 'LTWPS0986J', 'uploads/kyc/1739952680_pan.jpg', 'uploads/kyc/1739952680_aadhar.jpg', 'uploads/kyc/1739952680_aadhar_back.jpg', NULL, NULL, NULL, '', 'uploads/kyc/1739952680_cancel_cheque.jpg', NULL, NULL, NULL, NULL, 'complete', '2025-02-19', NULL, NULL, NULL, NULL),
(54, 'wowkumar', 'wowkumar@gmail.com', '$2y$10$xz7SrGxaHk/8QkNqJfrDY.mRkJV8OabiJwVoTVX8Sz7OEtiHFGRLq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12345678', NULL, 'N', 'user', 'rejected', '2025-02-19 07:47:36', '2025-02-19 10:14:19', NULL, NULL, NULL, NULL, NULL, 'wo', 'kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'InactivitE', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video` text DEFAULT NULL,
  `status` enum('Y','N') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video`, `status`, `created_at`, `updated_at`) VALUES
(2, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8l7kAx-jy9A?si=zl7kqlhdwNmWI61n\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'Y', '2025-01-04 12:46:55', '2025-01-04 12:50:36'),
(3, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FqgKysYrIeY?si=G2UUSPeyzOkAtlgk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'Y', '2025-01-04 12:51:05', '2025-01-04 12:51:05');

-- --------------------------------------------------------

--
-- Table structure for table `webinfo`
--

CREATE TABLE `webinfo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `info_one` text DEFAULT NULL,
  `info_two` text DEFAULT NULL,
  `info_three` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `image_2` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinfo`
--

INSERT INTO `webinfo` (`id`, `info_one`, `info_two`, `info_three`, `image`, `banner`, `created_at`, `updated_at`, `favicon`, `image_2`) VALUES
(1, '<div class=\"privacy-policy__part\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(31, 31, 31);\"><h5 class=\"mb-4\" style=\"font-weight: 700; line-height: 24px; font-size: 20px; font-family: var(--head-font); padding: 0px; margin-right: 0px; margin-left: 0px; transition: var(--transition); margin-bottom: 1rem !important;\">Agreement to Terms</h5><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">I apologize for any confusion, but as an AI language model, I don\'t have access specific gaming platforms, games, or online services can vary widely depending on the specific company and the jurisdiction they operate in.</p><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">f you\'re looking for the terms and conditions of a particular gaming platform or game recommend visiting the official website of the platform or contacting their customer support. The terms and conditions are usually provided on their website,</p><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">I\'d be happy to provide you with some general information about terms and conditions. terms and conditions of any particular service or organization. The terms and conditions specific company or service you are referring to.</p><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">I\'d be happy to provide you with some general information about terms and conditions. However, please note that I am AI language model, and I don\'t have access to specific terms and conditions of any particular service or organization.</p></div><div class=\"privacy-policy__part\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(31, 31, 31);\"><h5 class=\"mb-4\" style=\"font-weight: 700; line-height: 24px; font-size: 20px; font-family: var(--head-font); padding: 0px; margin-right: 0px; margin-left: 0px; transition: var(--transition); margin-bottom: 1rem !important;\">User Representations</h5><p class=\"mt-4 mb-5\" style=\"line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 1rem !important; margin-bottom: 1.25rem !important;\">We use cookies and similar tracking technologies to enhance your experience on our platform and gather information about your interactions with our services.</p><ul class=\"ul-decimal mt-5 d-flex gap-3 flex-column\" style=\"padding: 0px; margin-bottom: 0px; margin-right: 0px; margin-left: 14px; list-style: none; margin-top: 1.25rem !important; gap: 0.75rem !important;\"><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">Acceptance: Users are typically required to agree to the terms and conditions before using a service. button or by simply using the service.</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">User rights and responsibilities: The terms and conditions specify the rights granted to users and the responsibilities they have while using the service.</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">your reviews should not contain offensive profanity, racist, offensive, or hate language;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">Dispute resolution: Procedures for resolving disputes, such as arbitration or mediation, may be outlined in the terms and conditions.</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">Intellectual property: These sections outline the ownership and usage rights of intellectual property such as copyrights, trademarks, and patents associated with the service or content provided.</li></ul><p class=\"mt-5\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 1.25rem !important;\">Remember that it\'s important to read and understand the specific terms and conditions of any service or product you use. If you have any questions or concerns about a particular set of terms clarification.</p></div><div class=\"privacy-policy__part\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(31, 31, 31);\"><h5 class=\"mb-4\" style=\"font-weight: 700; line-height: 24px; font-size: 20px; font-family: var(--head-font); padding: 0px; margin-right: 0px; margin-left: 0px; transition: var(--transition); margin-bottom: 1rem !important;\">Guideline for Reviews</h5><ul class=\"ul-decimal mt-5 d-flex gap-3 flex-column\" style=\"padding: 0px; margin-bottom: 0px; margin-right: 0px; margin-left: 14px; list-style: none; margin-top: 1.25rem !important; gap: 0.75rem !important;\"><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">you should have firsthand experience with the object being reviewed;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">your reviews should not contain offensive profanity offensive, or hate language;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">your reviews should not contain discriminatory references based on religion, race, gender, national origin, age, marital status, sexual orientation, or disability;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">your reviews should not contain references to illegal activity;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">you may not organize encouraging others to post reviews, whether positive or negative.</li></ul><p class=\"mt-4\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 1rem !important;\">We may accept, reject, or remove reviews at our sole discretion. We have absolutely no obligation to screen reviews or to delete reviews, even if anyone considers reviews objectionable or inaccurate.</p></div><div class=\"privacy-policy__part\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(31, 31, 31);\"><h5 class=\"mb-4\" style=\"font-weight: 700; line-height: 24px; font-size: 20px; font-family: var(--head-font); padding: 0px; margin-right: 0px; margin-left: 0px; transition: var(--transition); margin-bottom: 1rem !important;\">Social Media</h5><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 24px; font-family: var(--body-font); color: rgba(var(--nw2), 1);\">\nAs part of the functionality of the Site, you may link your account with online accounts you either: providing your Third-Party Account login information through the Site allowing us each Third-Party Account.</p><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">You represent and warrant that you are entitled to disclose your Third-Party Account login you of any of the Terms and Conditions that govern your use of the applicable Third-Party Account, and without obligating us to pay any fees or making us subject to any usage service provider of the Third-Party Account.</p></div>', NULL, NULL, NULL, NULL, NULL, '2025-01-28 05:28:27', NULL, NULL),
(2, '<div class=\"privacy-policy__part\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(31, 31, 31);\"><h5 class=\"mb-4\" style=\"font-weight: 700; line-height: 24px; font-size: 20px; font-family: var(--head-font); padding: 0px; margin-right: 0px; margin-left: 0px; transition: var(--transition); margin-bottom: 1rem !important;\">Agreement to Terms</h5><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">I apologize for any confusion, but as an AI language model, I don\'t have access specific gaming platforms, games, or online services can vary widely depending on the specific company and the jurisdiction they operate in.</p><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">f you\'re looking for the terms and conditions of a particular gaming platform or game recommend visiting the official website of the platform or contacting their customer support. The terms and conditions are usually provided on their website,</p><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">I\'d be happy to provide you with some general information about terms and conditions. terms and conditions of any particular service or organization. The terms and conditions specific company or service you are referring to.</p><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">I\'d be happy to provide you with some general information about terms and conditions. However, please note that I am AI language model, and I don\'t have access to specific terms and conditions of any particular service or organization.</p></div><div class=\"privacy-policy__part\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(31, 31, 31);\"><h5 class=\"mb-4\" style=\"font-weight: 700; line-height: 24px; font-size: 20px; font-family: var(--head-font); padding: 0px; margin-right: 0px; margin-left: 0px; transition: var(--transition); margin-bottom: 1rem !important;\">User Representations</h5><p class=\"mt-4 mb-5\" style=\"line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 1rem !important; margin-bottom: 1.25rem !important;\">We use cookies and similar tracking technologies to enhance your experience on our platform and gather information about your interactions with our services.</p><ul class=\"ul-decimal mt-5 d-flex gap-3 flex-column\" style=\"padding: 0px; margin-bottom: 0px; margin-right: 0px; margin-left: 14px; list-style: none; margin-top: 1.25rem !important; gap: 0.75rem !important;\"><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">Acceptance: Users are typically required to agree to the terms and conditions before using a service. button or by simply using the service.</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">User rights and responsibilities: The terms and conditions specify the rights granted to users and the responsibilities they have while using the service.</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">your reviews should not contain offensive profanity, racist, offensive, or hate language;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">Dispute resolution: Procedures for resolving disputes, such as arbitration or mediation, may be outlined in the terms and conditions.</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">Intellectual property: These sections outline the ownership and usage rights of intellectual property such as copyrights, trademarks, and patents associated with the service or content provided.</li></ul><p class=\"mt-5\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 1.25rem !important;\">Remember that it\'s important to read and understand the specific terms and conditions of any service or product you use. If you have any questions or concerns about a particular set of terms clarification.</p></div><div class=\"privacy-policy__part\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(31, 31, 31);\"><h5 class=\"mb-4\" style=\"font-weight: 700; line-height: 24px; font-size: 20px; font-family: var(--head-font); padding: 0px; margin-right: 0px; margin-left: 0px; transition: var(--transition); margin-bottom: 1rem !important;\">Guideline for Reviews</h5><ul class=\"ul-decimal mt-5 d-flex gap-3 flex-column\" style=\"padding: 0px; margin-bottom: 0px; margin-right: 0px; margin-left: 14px; list-style: none; margin-top: 1.25rem !important; gap: 0.75rem !important;\"><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">you should have firsthand experience with the object being reviewed;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">your reviews should not contain offensive profanity offensive, or hate language;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">your reviews should not contain discriminatory references based on religion, race, gender, national origin, age, marital status, sexual orientation, or disability;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">your reviews should not contain references to illegal activity;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">you may not organize encouraging others to post reviews, whether positive or negative.</li></ul><p class=\"mt-4\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 1rem !important;\">We may accept, reject, or remove reviews at our sole discretion. We have absolutely no obligation to screen reviews or to delete reviews, even if anyone considers reviews objectionable or inaccurate.</p></div><div class=\"privacy-policy__part\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(31, 31, 31);\"><h5 class=\"mb-4\" style=\"font-weight: 700; line-height: 24px; font-size: 20px; font-family: var(--head-font); padding: 0px; margin-right: 0px; margin-left: 0px; transition: var(--transition); margin-bottom: 1rem !important;\">Social Media</h5><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 24px; font-family: var(--body-font); color: rgba(var(--nw2), 1);\">\nAs part of the functionality of the Site, you may link your account with online accounts you either: providing your Third-Party Account login information through the Site allowing us each Third-Party Account.</p><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">You represent and warrant that you are entitled to disclose your Third-Party Account login you of any of the Terms and Conditions that govern your use of the applicable Third-Party Account, and without obligating us to pay any fees or making us subject to any usage service provider of the Third-Party Account.</p></div>', NULL, NULL, NULL, NULL, NULL, '2025-01-28 05:33:09', NULL, NULL),
(3, '{\"title\":\"Unlocking Potential Through Quality Education\",\"short_description\":\"To comprehend Tron, you might think of any major entertainment conglomerate that creates content across a range of industries. Tron functions like a major studio, with multiple production facilities that are essential for creating content for film, TV, games, animation, design, digital applications, and more. Content creation is our core learning tool. We place our education in outstanding facilities with master instructors and mentors, and we regularly update and realign curriculum to be in lockstep with the most current industry standards. This is all to help students originate, produce, and exhibit their best possible creative and technical work.\\r\\n\\r\\nFrom an education perspective, we are unassailable. Our programs go deep and are immersive, efficient, and transformational. This is no acci-dent. We have an inspired education department expert at curriculum design and preparing industry specialists to be effective instructors. In this, we stand alone.\\r\\n\\r\\nBy developing a well-rounded curriculum of visual, media and performing arts, Tron has created an educational environment that encourages collaboration between its programs of study. With a faculty and advisory board that draws directly from the relevant industries, Tron provides its students with the foundation and mentorship necessary to launch a career. Many Tron gradu\\u0002ates are now successful, creative professionals with credits on major feature films, directorial positions, and successful freelance careers around the world.\",\"our_story\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur odio natus ab amet provident vel. Officiis pariatur similique, beatae quis quas doloremque iure sint. Esse voluptatibus autem maxime odit illo vitae molestias exercitationem fugiat error tenetur rerum ipsum, cum assumenda. Numquam accusantium quisquam id nobis sequi enim ducimus porro exercitationem iure, facere modi, omnis blanditiis sunt nesciunt? Repellendus numquam illo cum quo non blanditiis voluptas deserunt ab officiis quae obcaecati sapiente, voluptatibus quos ut atque repellat distinctio maiores provident quod ad, sed et neque a consectetur. iste, amet nobis deserunt? Et laborum, ad mollitia quos quae laudantium. Ipsum excepturi fugit,<br><\\/p>\",\"our_mission\":\"Our mission at Toads Academy is to cultivate a new generation of artists and innovators by providing world-class education in Animation, VFX, and Game design. We are committed to delivering hands-on, industry-relevant training, guided by experienced professionals, and infused with the latest technological advancements.\",\"vision\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis dolores perspiciatis veniam voluptate, aspernatur possimus. Tenetur adipisci odit a, corrupti explicabo aspernatur veniam, officiis nulla tempora qui placeat quasi est non.<br><\\/p>\",\"core_value\":\"<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nulla sed quasi corrupti rerum, soluta iste rem consequuntur itaque non sequi temporibus reiciendis consequatur quos quibusdam fugit ipsum perspiciatis! Explicabo, deserunt. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nulla sed quasi corrupti rerum, soluta iste rem consequuntur itaque non sequi temporibus reiciendis consequatur quos quibusdam fugit ipsum perspiciatis! Explicabo, deserunt.<br><\\/p>\",\"exp_title\":\"15 years experience of Animation industry.\",\"placed_students\":\"12\",\"award_winning\":\"90\",\"toatl_companies\":\"10\",\"exp_description\":\"Tron School Of Animation, Graphics And Artology is the media & entertainment education brand of Tron Education And Research Pvt. Ltd., a global learning solutions provider that commenced its education and training business in 2015. Tron operates through a network of centres worldwide, and has prepared thousands of students for jobs in the media & entertainment industry. The Academy provides quality education in Animation, Visual Effects, Gaming, Filmmaking, Multimedia, Web Design, Graphic Design, AR\\/VR, and more through job-ori\\u0002ented courses. Students at Tron get the opportunity to work in a studio-like environment, practice on industry-specific software, attend course-specific workshops and participate in studio visits.\",\"meta_title\":\"Toads - About\",\"meta_tags\":\"test\",\"meta_description\":\"test\"}', NULL, NULL, '1727779369_\'.jpg', NULL, NULL, '2024-10-05 02:52:44', NULL, NULL),
(4, '{\"title\":\"BECOME A TOADS ANIMATION FRANCHISEE\",\"description\":\"<p>Toads Education and Research Pvt. Ltd. is a multi-domain, premium vocational ed-tech training academy and education solutions company which helps teenagers and youth to bring out their creativity so that they become highly paid experts and achieve peace of mind, financial freedom and a career for life.<\\/p><p>Toads Education and Research Pvt. Ltd. has over 7 years of experience and helped in empowering over 7000 students. The corporate office of the academy is in Pune With Focus on imparting education for skill development that enables individual to gain in-depth knowledge well aligned with the latest requirement of the industry. Also, instilling the power of Entrepreneurship in the minds of the young souls to be able to contribute to the development of individuals, society and the country we will in.<br><\\/p>\",\"total_franchise\":\"199\",\"total_staff\":\"100\",\"placed_student\":\"1000\",\"b_title\":\"Together We Build Dreams\",\"b_description\":\"The animation, visual effects, gaming and comics (AVGC) industry has witnessed unprecedented growth rates in recent times. It has seen the entry of many global majors who have tapped into India\\u2019s talent pool for offshore delivery of services\",\"meta_title\":\"1\",\"meta_tags\":\"2\",\"meta_description\":\"3\"}', NULL, NULL, '1728018334_11.jpg', NULL, NULL, '2024-10-05 03:36:27', NULL, NULL),
(5, '{\"phone\":\"0123456789\",\"phone_2\":\"0123456789\",\"email\":\"ly0596232@gmail.com\",\"location\":\"india\",\"location_iframe\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d242117.70906191418!2d73.69814813607152!3d18.524870616285536!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2bf2e67461101%3A0x828d43bf9d9ee343!2sPune%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1735818891646!5m2!1sen!2sin\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"meta_title\":\"Stock Market\",\"refer_amount\":\"1\",\"meta_tags\":\"Stock Market\",\"meta_description\":\"Stock Market\",\"twitter\":\"\\/\",\"facebook\":\"\\/\",\"linkedin\":\"\\/\",\"youtube\":null,\"instagram\":\"\\/\"}', NULL, NULL, '1738139775_logo.png', NULL, NULL, '2025-02-17 05:41:17', '1738139775_logo.png', NULL),
(6, '{\"title\":\"Toads Placements\",\"description\":\"<p>Toads provides job-oriented graphics, animation, VFX, and multimedia courses and career development training to prepare students for different job roles in the media and entertainment industry globally. Animation studios, gaming studios, publishing houses, TV channels, production houses, and advertising agencies are continuously looking out for photographers, UI designers, gaming experts, animators, filmmakers, website developers, VF X artists, photographers, and graphic designers to work with them. Tron helps such organizations to find skilled and talented individuals who knows the demand of the industry and work as professionals in their respective fields.<br><\\/p>\",\"yt_links\":\"https:\\/\\/www.youtube.com\\/embed\\/es4x5R-rV9s?si=NNqwpwX9gMl-GQKy\",\"meta_title\":\"Toads - Placement\",\"meta_tags\":\"test\",\"meta_description\":\"test\"}', NULL, NULL, '1728456389_1.jpg', NULL, NULL, '2024-10-09 01:25:53', NULL, '1728456389_2.jpg'),
(7, '{\"title\":\"Our Mission\",\"sub_title\":\"Empowering Success How We\'re Making a Difference\",\"link\":\"about-us\",\"desc\":\"<div style=\\\"text-align: right;\\\"><span style=\\\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 18px; background-color: rgb(1, 3, 26);\\\">we believe that success is not reserved for the privileged few. It\'s a journey that anyone can embark upon with right guidance<\\/span><\\/div>\",\"Our_mission\":\"Transformed the trading landscape. Online trading platforms and mobile apps have made it easier than ever for individuals\",\"our_vision\":\"One of the fundamental principles of trading is risk management. Successful traders carefully manage their capital,\",\"core_value\":\"Trading is not without its challenges, as markets can be highly volatile and unpredictable. It requires discipline\",\"meta_title\":\"Stock Market\",\"meta_tags\":\"Stock Market\",\"meta_description\":\"Stock Market\"}', NULL, NULL, '1737966330_why_trade.png', '1737964308_2.avif', NULL, '2025-01-27 08:25:30', '1731973105_author-sign.png', '1737566811_9.png'),
(8, '{\"title\":\"Large Number of Services Provided\",\"desc\":\"We are a company providing a wide range of maintenance and many other services.\",\"btn\":\"More services\",\"btnurl\":\"https:\\/\\/construction.mywebwork.link\\/about-us\"}', NULL, NULL, NULL, NULL, '2024-11-19 13:50:50', '2024-11-28 17:32:25', NULL, NULL),
(9, '{\"title\":\"10+ Years of Professional Experience\",\"desc\":\"10+ Years of\\r\\nProfessional Experience\",\"btn\":\"More About\",\"btnurl\":\"https:\\/\\/construction.mywebwork.link\\/about-us\"}', NULL, NULL, NULL, NULL, NULL, '2024-11-28 17:28:27', NULL, NULL),
(10, '{\"title\":\"A Large Number of Grateful Customers\",\"desc\":\"We have been working for years to improve our skills, to expand the spheres of our work.\",\"btn\":\"More Data\",\"btnurl\":\"https:\\/\\/construction.mywebwork.link\\/about-us\"}', NULL, NULL, NULL, NULL, NULL, '2024-11-28 17:28:27', NULL, NULL),
(11, '{\"title\":\"Professional Main Services\",\"desc\":\"EAGLE has 10+ years of experience with providing wide area of specialty services works listed below.\",\"btn\":\"werrwe\",\"image\":\"uploads\\/1731987203.jpg\"}', NULL, NULL, NULL, NULL, '2024-11-19 15:33:23', '2024-11-19 15:33:23', NULL, NULL),
(12, '{\"title\":\"Plumber Services\",\"desc\":\"Plumbing is such a sphere in our houses that requires some\",\"btn\":\"View More\",\"btnurl\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/skillsadd\"}', NULL, NULL, NULL, NULL, '2024-11-19 15:33:23', '2024-11-19 15:33:23', NULL, NULL),
(13, '{\"title\":\"A Large Number of Grateful Customers\",\"desc\":\"Plumbing is such a sphere in our houses that requires some\",\"btn\":\"View More\",\"btnurl\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/skillsadd\"}', NULL, NULL, NULL, NULL, '2024-11-19 15:33:23', '2024-11-19 15:33:23', NULL, NULL),
(14, '{\"title\":\"Parivartan\",\"desc\":\"Parivartan\",\"subtitle\":\"Parivartan\",\"title1\":\"Working\",\"desc1\":\"Working\"}', NULL, NULL, '1732067172_event-custom.jpg', NULL, '2024-11-19 17:38:26', '2024-11-20 13:40:48', NULL, NULL),
(15, '{\"title\":\"Hello Yug Parivartan Samiti\",\"desc\":\"Hello Yug Parivartan SamitiHello Yug Parivartan Samiti\",\"subtitle\":\"Hello Yug Parivartan Samiti\"}', NULL, NULL, '1732067334_gallery-1.jpg', NULL, '2024-11-20 13:48:54', '2024-11-20 13:48:54', NULL, NULL),
(16, '{\"number1\":\"30\",\"number2\":\"68\",\"number3\":\"99\",\"number4\":\"23\"}', NULL, NULL, NULL, NULL, '2024-11-20 13:38:39', '2025-01-22 11:51:38', NULL, NULL),
(17, '{\"title\":\"Our Awards\",\"sub_title\":\"Our Agency Awards & Achievements\",\"desc\":\"<p class=\\\"awards-one__text count-box counted\\\" style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(104, 105, 108); position: relative; max-width: 256px; width: 256px; font-family: Rubik, serif; font-size: 16px; background-color: rgb(22, 23, 26);\\\">We\\u2019re Trusted by&nbsp;<span class=\\\"count-text\\\" data-stop=\\\"68000\\\" data-speed=\\\"1500\\\" style=\\\"font-weight: 600; color: var(--treck-base);\\\">68000<\\/span>&nbsp;Satisfied Clients Across the World for Best Jobs Provides<\\/p><ul class=\\\"awards-one__points list-unstyled\\\" style=\\\"margin-bottom: 0px; position: relative; margin-left: 37px; top: 4px; color: rgb(114, 114, 114); font-family: Rubik, serif; font-size: 16px; background-color: rgb(22, 23, 26);\\\"><li style=\\\"position: relative; display: flex; align-items: center;\\\"><div class=\\\"icon\\\" style=\\\"position: relative; display: inline-block; top: 2px;\\\"><span class=\\\"fa fa-check\\\" style=\\\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; text-rendering: auto; line-height: 1; font-family: var(--fa-style-family,&quot;Font Awesome 6 Free&quot;); font-weight: var(--fa-style,900); --fa: &quot;\\\\f00c&quot;; position: relative; font-size: 20px; color: var(--treck-base);\\\"><\\/span><\\/div><div class=\\\"text\\\" style=\\\"margin-left: 10px;\\\"><p style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: var(--treck-white);\\\">Professional Consultants<\\/p><\\/div><\\/li><li style=\\\"position: relative; display: flex; align-items: center;\\\"><div class=\\\"icon\\\" style=\\\"position: relative; display: inline-block; top: 2px;\\\"><span class=\\\"fa fa-check\\\" style=\\\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; text-rendering: auto; line-height: 1; font-family: var(--fa-style-family,&quot;Font Awesome 6 Free&quot;); font-weight: var(--fa-style,900); --fa: &quot;\\\\f00c&quot;; position: relative; font-size: 20px; color: var(--treck-base);\\\"><\\/span><\\/div><div class=\\\"text\\\" style=\\\"margin-left: 10px;\\\"><p style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: var(--treck-white);\\\">100% Job Guarantee<\\/p><\\/div><\\/li><li style=\\\"position: relative; display: flex; align-items: center;\\\"><div class=\\\"icon\\\" style=\\\"position: relative; display: inline-block; top: 2px;\\\"><span class=\\\"fa fa-check\\\" style=\\\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; text-rendering: auto; line-height: 1; font-family: var(--fa-style-family,&quot;Font Awesome 6 Free&quot;); font-weight: var(--fa-style,900); --fa: &quot;\\\\f00c&quot;; position: relative; font-size: 20px; color: var(--treck-base);\\\"><\\/span><\\/div><div class=\\\"text\\\" style=\\\"margin-left: 10px;\\\"><p style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: var(--treck-white);\\\">Affordable Fees<\\/p><\\/div><\\/li><\\/ul>\",\"meta_title\":\"Bhagayodhan founction\",\"meta_tags\":\"Bhagayodhan founction\",\"meta_description\":\"Bhagayodhan founction\"}', NULL, NULL, '1737567276_awards-1-1.png', '1737567276_awards-1-3.png', NULL, '2025-01-23 05:10:56', NULL, '1737567276_awards-1-2.png'),
(18, '{\"title\":\"Trade On Our\",\"sub_title\":\"World Class Platform\",\"desc\":\"<p class=\\\"fs-six mx-ch\\\" style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); max-width: 60ch; background-color: rgb(1, 3, 26);\\\">Trading in financial markets involves a wide range of strategies that traders employ to make informed decisions. From trading to swing trading and long-term investing, each strategy has its own set of principles and risk factors.<\\/p><ul class=\\\"d-flex gap-4 flex-column mt-6\\\" style=\\\"padding: 0px; margin-bottom: 0px; margin-right: 0px; margin-left: 0px; list-style: none; color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(1, 3, 26); margin-top: 1.5rem !important; gap: 1rem !important;\\\"><li class=\\\"d-flex align-items-center gap-3 fs-six-up\\\" style=\\\"font-size: 18px; line-height: 27px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit; gap: 0.75rem !important;\\\"><span class=\\\"ti ti-circle-check s1-color fs-four\\\" style=\\\"speak: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; -webkit-font-smoothing: antialiased; font-size: 24px; color: rgba(var(--s1), 1); font-family: tabler-icons !important;\\\"><\\/span>Charts trading<\\/li><li class=\\\"d-flex align-items-center gap-3 fs-six-up\\\" style=\\\"font-size: 18px; line-height: 27px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit; gap: 0.75rem !important;\\\"><span class=\\\"ti ti-circle-check s1-color fs-four\\\" style=\\\"speak: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; -webkit-font-smoothing: antialiased; font-size: 24px; color: rgba(var(--s1), 1); font-family: tabler-icons !important;\\\"><\\/span>Understanding Trading Strategies<\\/li><li class=\\\"d-flex align-items-center gap-3 fs-six-up\\\" style=\\\"font-size: 18px; line-height: 27px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit; gap: 0.75rem !important;\\\"><span class=\\\"ti ti-circle-check s1-color fs-four\\\" style=\\\"speak: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; -webkit-font-smoothing: antialiased; font-size: 24px; color: rgba(var(--s1), 1); font-family: tabler-icons !important;\\\"><\\/span>Risk Management in Trading<\\/li><li class=\\\"d-flex align-items-center gap-3 fs-six-up\\\" style=\\\"font-size: 18px; line-height: 27px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit; gap: 0.75rem !important;\\\"><span class=\\\"ti ti-circle-check s1-color fs-four\\\" style=\\\"speak: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; -webkit-font-smoothing: antialiased; font-size: 24px; color: rgba(var(--s1), 1); font-family: tabler-icons !important;\\\"><\\/span>Technical vs. Fundamental Analysis<\\/li><\\/ul>\"}', NULL, NULL, '1737971082_trade_on.png', NULL, NULL, '2025-01-27 09:44:42', NULL, NULL),
(19, '{\"main_title\":\"Millions of Users Worldwide\",\"main_sub_title\":\"The rise of cryptocurrencies has opened up new trading this beginner\'s guide to cryptocurrency trading,\",\"title\":\"What you will learn\",\"desc\":\"<p class=\\\"mx-ch\\\" style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); max-width: 60ch; background-color: rgb(1, 3, 26);\\\">The rise of cryptocurrencies has opened up new trading In this beginner\'s guide to cryptocurrency trading we demystify the world of digital currencies<\\/p><ul class=\\\"list_divided d-flex flex-wrap gap-5 mt-5 mt-xxl-6\\\" style=\\\"padding: 0px; margin-bottom: 0px; margin-right: 0px; margin-left: 0px; list-style: none; justify-content: space-between; color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(1, 3, 26); margin-top: 1.25rem !important; gap: 1.25rem !important;\\\"><li class=\\\"d-flex align-items-center gap-3 fs-six-up\\\" style=\\\"font-size: 18px; line-height: 27px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit; width: calc(50% - 10px); gap: 0.75rem !important;\\\"><span class=\\\"ti ti-circle-check s1-color fs-four\\\" style=\\\"speak: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; -webkit-font-smoothing: antialiased; font-size: 24px; color: rgba(var(--s1), 1); font-family: tabler-icons !important;\\\"><\\/span>Charts trading<\\/li><li class=\\\"d-flex align-items-center gap-3 fs-six-up\\\" style=\\\"font-size: 18px; line-height: 27px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit; width: calc(50% - 10px); gap: 0.75rem !important;\\\"><span class=\\\"ti ti-circle-check s1-color fs-four\\\" style=\\\"speak: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; -webkit-font-smoothing: antialiased; font-size: 24px; color: rgba(var(--s1), 1); font-family: tabler-icons !important;\\\"><\\/span>Supreme Authority<\\/li><li class=\\\"d-flex align-items-center gap-3 fs-six-up\\\" style=\\\"font-size: 18px; line-height: 27px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit; width: calc(50% - 10px); gap: 0.75rem !important;\\\"><span class=\\\"ti ti-circle-check s1-color fs-four\\\" style=\\\"speak: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; -webkit-font-smoothing: antialiased; font-size: 24px; color: rgba(var(--s1), 1); font-family: tabler-icons !important;\\\"><\\/span>Worldly Power<\\/li><li class=\\\"d-flex align-items-center gap-3 fs-six-up\\\" style=\\\"font-size: 18px; line-height: 27px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit; width: calc(50% - 10px); gap: 0.75rem !important;\\\"><span class=\\\"ti ti-circle-check s1-color fs-four\\\" style=\\\"speak: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; -webkit-font-smoothing: antialiased; font-size: 24px; color: rgba(var(--s1), 1); font-family: tabler-icons !important;\\\"><\\/span>Global Dominance<\\/li><\\/ul><div class=\\\"mt-8 mt-xxl-10\\\" style=\\\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(1, 3, 26); margin-top: 2rem !important;\\\"><div class=\\\"counter-area d-flex gap-8 gap-xxl-10\\\" style=\\\"gap: 2rem !important;\\\"><div class=\\\"counter-part\\\"><div class=\\\"counters d-flex\\\"><span class=\\\"display-four s1-color odometer odometer-auto-theme\\\" data-odometer-final=\\\"12\\\" style=\\\"font-size: 56px; line-height: 1.1; margin: 0px; font-family: var(--head-font); color: rgba(var(--s1), 1); font-weight: 700; display: inline-block; padding: 0px; transition: var(--transition); vertical-align: middle; position: relative;\\\"><div class=\\\"odometer-inside\\\"><span class=\\\"odometer-digit\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: inline-block; vertical-align: middle; position: relative;\\\"><span class=\\\"odometer-digit-spacer\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: inline-block; vertical-align: middle; visibility: hidden;\\\"><\\/span><span class=\\\"odometer-digit-inner\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: block; position: absolute; inset: 0px; overflow: hidden;\\\"><span class=\\\"odometer-ribbon\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: block;\\\"><span class=\\\"odometer-ribbon-inner\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: block; backface-visibility: hidden;\\\"><span class=\\\"odometer-value\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: block; text-align: center; transform: translateZ(0px);\\\">1<\\/span><\\/span><\\/span><\\/span><\\/span><span class=\\\"odometer-digit\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: inline-block; vertical-align: middle; position: relative;\\\"><span class=\\\"odometer-digit-spacer\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: inline-block; vertical-align: middle; visibility: hidden;\\\"><\\/span><span class=\\\"odometer-digit-inner\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: block; position: absolute; inset: 0px; overflow: hidden;\\\"><span class=\\\"odometer-ribbon\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: block;\\\"><span class=\\\"odometer-ribbon-inner\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: block; backface-visibility: hidden;\\\"><span class=\\\"odometer-value\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: block; text-align: center; transform: translateZ(0px);\\\">2<\\/span><\\/span><\\/span><\\/span><\\/span><\\/div><\\/span><span class=\\\"display-four symbol s1-color\\\" style=\\\"font-size: 56px; line-height: 67.2px; margin: 0px; font-family: var(--head-font); color: rgba(var(--s1), 1); font-weight: 700; display: block; padding: 0px; transition: var(--transition);\\\">K<\\/span><\\/div><span class=\\\"mt-4\\\" style=\\\"line-height: 24px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); display: inline-block; margin-top: 1rem !important;\\\">Users Joined<\\/span><\\/div><div class=\\\"counter-part\\\"><div class=\\\"counters d-flex\\\"><span class=\\\"display-four s1-color odometer odometer-auto-theme\\\" data-odometer-final=\\\"5.5\\\" style=\\\"font-size: 56px; line-height: 1.1; margin: 0px; font-family: var(--head-font); color: rgba(var(--s1), 1); font-weight: 700; display: inline-block; padding: 0px; transition: var(--transition); vertical-align: middle; position: relative;\\\"><div class=\\\"odometer-inside\\\"><span class=\\\"odometer-digit\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: inline-block; vertical-align: middle; position: relative;\\\"><span class=\\\"odometer-digit-spacer\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: inline-block; vertical-align: middle; visibility: hidden;\\\"><\\/span><span class=\\\"odometer-digit-inner\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: block; position: absolute; inset: 0px; overflow: hidden;\\\"><span class=\\\"odometer-ribbon\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: block;\\\"><span class=\\\"odometer-ribbon-inner\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: block; backface-visibility: hidden;\\\"><span class=\\\"odometer-value\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: block; text-align: center; transform: translateZ(0px);\\\">5<\\/span><\\/span><\\/span><\\/span><\\/span><span class=\\\"odometer-formatting-mark odometer-radix-mark\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: inline-block;\\\">.<\\/span><span class=\\\"odometer-digit\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: inline-block; vertical-align: middle; position: relative;\\\"><span class=\\\"odometer-digit-spacer\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: inline-block; vertical-align: middle; visibility: hidden;\\\"><\\/span><span class=\\\"odometer-digit-inner\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: block; position: absolute; inset: 0px; overflow: hidden;\\\"><span class=\\\"odometer-ribbon\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: block;\\\"><span class=\\\"odometer-ribbon-inner\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: block; backface-visibility: hidden;\\\"><span class=\\\"odometer-value\\\" style=\\\"font-size: inherit; line-height: inherit; margin: 0px; font-family: inherit; color: inherit; font-weight: inherit; display: block; text-align: center; transform: translateZ(0px);\\\">5<\\/span><\\/span><\\/span><\\/span><\\/span><\\/div><\\/span><span class=\\\"display-four symbol s1-color\\\" style=\\\"font-size: 56px; line-height: 67.2px; margin: 0px; font-family: var(--head-font); color: rgba(var(--s1), 1); font-weight: 700; display: block; padding: 0px; transition: var(--transition);\\\">M<\\/span><\\/div><span class=\\\"mt-4\\\" style=\\\"line-height: 24px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); display: inline-block; margin-top: 1rem !important;\\\">Monthly Voulme (In USD)<\\/span><\\/div><\\/div><\\/div>\",\"video_url\":\"<iframe width=\\\"560\\\" height=\\\"315\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/DJjpdPy2poM?si=Wht0AzmkwC1Gp2aN\\\" title=\\\"YouTube video player\\\" frameborder=\\\"0\\\" allow=\\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\\" referrerpolicy=\\\"strict-origin-when-cross-origin\\\" allowfullscreen><\\/iframe>\"}', NULL, NULL, NULL, NULL, NULL, '2025-01-27 09:48:17', NULL, NULL),
(20, '{\"title\":\"Invest your money with higher return\",\"sub_title\":\"Anyone can invest money to different currency to increase their earnings by the help of Bitrader through online.\",\"link\":\"pricing\"}', NULL, NULL, '1737973014_1.png', NULL, NULL, '2025-01-27 10:16:54', NULL, NULL);
INSERT INTO `webinfo` (`id`, `info_one`, `info_two`, `info_three`, `image`, `banner`, `created_at`, `updated_at`, `favicon`, `image_2`) VALUES
(21, '{\"title\":\"Introduction to Forex\",\"sub_title\":\"The Forex market is incredibly liquid ensuring that you can                   enter and exit positions easily even with large amounts of  capital.\",\"year\":\"2023\",\"year_2\":\"2024\",\"title_2\":\"Trading Strategies\",\"sub_title_2\":\"The world of finance offers a multitude of opportunities for individuals seeking to build their wealth and explore new horizons. Forex trading,\",\"year_3\":\"2025\",\"title_3\":\"Trading Psychology\",\"sub_title_3\":\"In this article, we\'ll take you on a journey through the fundamentals of Forex trading, helping you how it works, and why it\'s worth exploring.\",\"year_4\":\"2026\",\"title_4\":\"Economic Indicators\",\"sub_title_4\":\"Currencies on the foreign exchange market with the aim of making a profit. It\'s the largest and most liquid financial market in the world,\",\"year_5\":\"2027\",\"title_5\":\"Risk Management\",\"sub_title_5\":\"With a daily trading volume that exceeds $6 trillion. Unlike traditional stock markets, where you buy and sell shares of companies,\",\"year_6\":\"2028\",\"title_6\":\"Building Your Trading Plan\",\"sub_title_6\":\"Unlike traditional stock markets, where you buy and sell shares of companies, Forex trading involves the exchange of one currency for another.\"}', NULL, NULL, NULL, NULL, NULL, '2025-01-28 05:57:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `invest_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `amount` text DEFAULT NULL,
  `status` enum('pending','complete','reject') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `amount_cut` enum('N','Y') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `userid`, `invest_id`, `package_id`, `amount`, `status`, `created_at`, `updated_at`, `reason`, `amount_cut`) VALUES
(6, 32, 2, 0, '1000', 'complete', '2025-02-11 17:52:47', '2025-02-14 20:38:17', 'test', 'Y'),
(7, 32, 2, 0, '1120', 'reject', '2025-02-11 17:53:22', '2025-02-11 17:56:56', 'test two', 'N'),
(8, 35, 6, 0, '2000', 'reject', '2025-02-13 07:49:45', '2025-02-14 20:38:04', 'amount', 'N');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `best_our_service`
--
ALTER TABLE `best_our_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogcomments`
--
ALTER TABLE `blogcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_payment`
--
ALTER TABLE `customer_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invested`
--
ALTER TABLE `invested`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invested_userid_foreign` (`userid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pakeges`
--
ALTER TABLE `pakeges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `process`
--
ALTER TABLE `process`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webinfo`
--
ALTER TABLE `webinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraw_userid_foreign` (`userid`),
  ADD KEY `withdraw_invest_id_foreign` (`invest_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `best_our_service`
--
ALTER TABLE `best_our_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogcomments`
--
ALTER TABLE `blogcomments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_payment`
--
ALTER TABLE `customer_payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `invested`
--
ALTER TABLE `invested`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pakeges`
--
ALTER TABLE `pakeges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `process`
--
ALTER TABLE `process`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `webinfo`
--
ALTER TABLE `webinfo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invested`
--
ALTER TABLE `invested`
  ADD CONSTRAINT `invested_userid_foreign` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD CONSTRAINT `withdraw_invest_id_foreign` FOREIGN KEY (`invest_id`) REFERENCES `invested` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `withdraw_userid_foreign` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
