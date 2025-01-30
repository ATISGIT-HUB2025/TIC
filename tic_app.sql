-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2025 at 05:36 AM
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
(27, 'Technical Analysis', 'Y', '2025-01-27 05:21:03', '2025-01-27 05:21:03', 'blogs'),
(28, 'Fundamental Analysis', 'Y', '2025-01-27 05:22:09', '2025-01-27 05:22:09', 'blogs'),
(29, 'Risk Management', 'Y', '2025-01-27 05:22:20', '2025-01-27 05:22:20', 'blogs'),
(30, 'Cryptocurrency Trading', 'N', '2025-01-27 05:22:31', '2025-01-27 06:19:30', 'blogs'),
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
-- Table structure for table `cusotmers`
--

CREATE TABLE `cusotmers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `bill_number` text DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `salesman_code` text DEFAULT NULL,
  `gst` varchar(255) DEFAULT NULL,
  `fabrics` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `total_quantity` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `advance_date` date DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `receive` varchar(255) DEFAULT NULL,
  `receive_date` date DEFAULT NULL,
  `top_data` longtext DEFAULT NULL,
  `bottom_data` longtext DEFAULT NULL,
  `fabric_image` longtext DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `audioPlayer_input` text DEFAULT NULL,
  `qunatity_work` varchar(200) DEFAULT NULL,
  `work_status` enum('pending','complete') NOT NULL DEFAULT 'pending',
  `workshop_status` enum('pending','complete') NOT NULL DEFAULT 'pending',
  `febrics_detail` longtext DEFAULT NULL,
  `allow_cutting_master` enum('N','Y') NOT NULL DEFAULT 'N',
  `payment_confirm` enum('pending','complete','reject') NOT NULL DEFAULT 'pending',
  `workshop_user` varchar(100) DEFAULT NULL,
  `cutting_master_user` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cusotmers`
--

INSERT INTO `cusotmers` (`id`, `name`, `mobile`, `dob`, `delivery_date`, `bill_number`, `order_date`, `salesman_code`, `gst`, `fabrics`, `quantity`, `amount`, `total_quantity`, `total_amount`, `discount`, `advance`, `advance_date`, `balance`, `receive`, `receive_date`, `top_data`, `bottom_data`, `fabric_image`, `note`, `created_at`, `updated_at`, `audioPlayer_input`, `qunatity_work`, `work_status`, `workshop_status`, `febrics_detail`, `allow_cutting_master`, `payment_confirm`, `workshop_user`, `cutting_master_user`) VALUES
(10008, 'vikashsaini007', '7957791943', '0000-00-00', '0000-00-00', '002', NULL, '2222', '27DNYPP0795M1ZR', 'Cotton', '200', '20000', '200', '10000', '10000', '2000', '0000-00-00', '7000', '2000', '0000-00-00', '[{\"type\":\"jacket\",\"arms\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"hip\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"length\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"shoulder\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"chest\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"belly\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"sleeve_length\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"collor\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"cuff\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"three_foure\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"style\":\"System\"}]', '[{\"type\":\"pant\",\"length\":{\"body_size\":\"30\",\"losing\":\"30\"},\"waist\":{\"body_size\":\"30\",\"losing\":\"30\"},\"hip\":{\"body_size\":\"30\",\"losing\":\"30\"},\"pockland\":{\"body_size\":\"30\",\"losing\":\"30\"},\"thigh\":{\"body_size\":\"30\",\"losing\":\"30\"},\"knee\":{\"body_size\":\"30\",\"losing\":\"30\"},\"potree\":{\"body_size\":\"30\",\"losing\":\"30\"},\"btm\":{\"body_size\":\"30\",\"losing\":\"30\"},\"hight\":{\"body_size\":\"30\",\"losing\":\"30\"},\"style\":\"Nice\"}]', '1733739962_Gobal Trading Company.png', 'test', '2024-12-09 02:24:00', '2024-12-09 10:26:02', 'https://res.cloudinary.com/dvtdyv4tu/video/upload/v1733739857/g32s9k2ko1oeoj9dqn1x.webm', NULL, 'pending', 'pending', NULL, 'N', 'pending', NULL, NULL),
(10009, 'Suraj Kumar', '7357791943', '0000-00-00', '0000-00-00', '10009', NULL, '1234', '27DNYPP0795M1ZR', 'Cotton', '6', '100', '10', '10000', '10', '2000', '0000-00-00', '7000', '2000', '0000-00-00', '[{\"type\":\"shirt\",\"arms\":{\"body_size\":null,\"losing\":null,\"remark\":null},\"hip\":{\"body_size\":null,\"losing\":null,\"remark\":null},\"length\":{\"body_size\":null,\"losing\":null,\"remark\":null},\"shoulder\":{\"body_size\":null,\"losing\":null,\"remark\":null},\"chest\":{\"body_size\":null,\"losing\":null,\"remark\":null},\"belly\":{\"body_size\":null,\"losing\":null,\"remark\":null},\"sleeve_length\":{\"body_size\":null,\"losing\":null,\"remark\":null},\"collor\":{\"body_size\":null,\"losing\":null,\"remark\":null},\"cuff\":{\"body_size\":null,\"losing\":null,\"remark\":null},\"three_foure\":{\"body_size\":null,\"losing\":null,\"remark\":null},\"style\":null}]', '[{\"type\":\"trouser\",\"length\":{\"body_size\":null,\"losing\":null},\"waist\":{\"body_size\":null,\"losing\":null},\"hip\":{\"body_size\":null,\"losing\":null},\"pockland\":{\"body_size\":null,\"losing\":null},\"thigh\":{\"body_size\":null,\"losing\":null},\"knee\":{\"body_size\":null,\"losing\":null},\"potree\":{\"body_size\":null,\"losing\":null},\"btm\":{\"body_size\":null,\"losing\":null},\"hight\":{\"body_size\":null,\"losing\":null},\"style\":null}]', NULL, 'test', '2024-12-09 03:24:15', '2024-12-09 03:24:15', 'https://res.cloudinary.com/dvtdyv4tu/video/upload/v1733734395/sjlliaevcvntjwurxpvc.webm', NULL, 'pending', 'pending', NULL, 'N', 'pending', NULL, NULL),
(10010, 'Parveen Kumawat', '7357791943', '0000-00-00', '0000-00-00', '10010', NULL, '1234', '27DNYPP0795M1ZR', 'Cotton', '100', '20000', '100', '10000', '1000', '5000', '0000-00-00', '7000', '5000', '0000-00-00', '[{\"type\":\"kurta\",\"arms\":{\"body_size\":\"v10\",\"losing\":\"10\",\"remark\":\"10\"},\"hip\":{\"body_size\":\"10\",\"losing\":\"10\",\"remark\":\"10\"},\"length\":{\"body_size\":\"10\",\"losing\":\"10\",\"remark\":\"10\"},\"shoulder\":{\"body_size\":\"10\",\"losing\":\"10\",\"remark\":\"10\"},\"chest\":{\"body_size\":\"10\",\"losing\":\"v10\",\"remark\":\"10\"},\"belly\":{\"body_size\":\"10\",\"losing\":\"10\",\"remark\":\"v10\"},\"sleeve_length\":{\"body_size\":\"10\",\"losing\":\"10\",\"remark\":\"v\"},\"collor\":{\"body_size\":\"10\",\"losing\":\"10\",\"remark\":\"10\"},\"cuff\":{\"body_size\":\"10\",\"losing\":\"10\",\"remark\":\"10\"},\"three_foure\":{\"body_size\":\"10\",\"losing\":\"10\",\"remark\":\"10\"},\"style\":\"10\"}]', '[{\"type\":\"pajama\",\"length\":{\"body_size\":\"20\",\"losing\":\"20\"},\"waist\":{\"body_size\":\"20\",\"losing\":\"20\"},\"hip\":{\"body_size\":\"20\",\"losing\":\"20\"},\"pockland\":{\"body_size\":\"20\",\"losing\":\"20\"},\"thigh\":{\"body_size\":\"20\",\"losing\":\"20\"},\"knee\":{\"body_size\":\"20\",\"losing\":\"20\"},\"potree\":{\"body_size\":\"20\",\"losing\":\"20\"},\"btm\":{\"body_size\":\"20\",\"losing\":\"20\"},\"hight\":{\"body_size\":\"20\",\"losing\":\"20\"},\"style\":\"No\"}]', '1733739241_Gobal Trading Company.png', NULL, '2024-12-09 10:14:02', '2024-12-27 14:07:57', 'https://res.cloudinary.com/dvtdyv4tu/video/upload/v1733739197/mhopdg8p0j07ziu1i7cr.webm', '70', 'pending', 'pending', NULL, 'N', 'pending', NULL, NULL),
(10011, 'Saniya Kumari', '7357791943', '2024-12-24', '2024-12-24', '10011', '2024-12-24', '1234', '27DNYPP0795M1ZR', 'Cotton', '200', '120000', '200', '10000', '1000', '2000', '2024-12-24', '7000', '5000', '2024-12-24', '[{\"type\":\"shirt\",\"arms\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"hip\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"length\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"shoulder\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"chest\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"belly\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"sleeve_length\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"collor\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"cuff\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"three_foure\":{\"body_size\":\"20\",\"losing\":\"20\",\"remark\":\"20\"},\"style\":\"No style i want only formel\"}]', '[{\"type\":\"pant\",\"length\":{\"body_size\":\"20\",\"losing\":\"20\"},\"waist\":{\"body_size\":\"20\",\"losing\":\"20\"},\"hip\":{\"body_size\":\"20\",\"losing\":\"20\"},\"pockland\":{\"body_size\":\"20\",\"losing\":\"20\"},\"thigh\":{\"body_size\":\"20\",\"losing\":\"20\"},\"knee\":{\"body_size\":\"20\",\"losing\":\"20\"},\"potree\":{\"body_size\":\"20\",\"losing\":\"20\"},\"btm\":{\"body_size\":\"20\",\"losing\":\"20\"},\"hight\":{\"body_size\":\"20\",\"losing\":\"20\"},\"style\":\"No style i want only formel\"},{\"type\":\"trouser\",\"length\":{\"body_size\":\"10\",\"losing\":null},\"waist\":{\"body_size\":\"10\",\"losing\":null},\"hip\":{\"body_size\":\"10\",\"losing\":null},\"pockland\":{\"body_size\":\"10\",\"losing\":null},\"thigh\":{\"body_size\":\"10\",\"losing\":null},\"knee\":{\"body_size\":\"10\",\"losing\":null},\"potree\":{\"body_size\":\"10\",\"losing\":null},\"btm\":{\"body_size\":\"10\",\"losing\":null},\"hight\":{\"body_size\":\"10\",\"losing\":null},\"style\":\"10\"}]', '1735031255_Screenshot (23).png', NULL, '2024-12-20 06:35:39', '2024-12-24 09:07:35', NULL, '200', 'complete', 'pending', NULL, 'N', 'pending', NULL, NULL),
(10012, 'Sarita Kumari', '9588958110', '2002-12-27', '2024-12-26', '10012', '2024-12-25', '20', '27DNYPP0795M1ZR', NULL, '50', NULL, '100', '4000', '1000', '1000', '2024-12-25', '2000.00', '2000', '2024-12-26', '[{\"type\":\"shirt\",\"arms\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"hip\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"length\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"shoulder\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"chest\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"belly\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"sleeve_length\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"collor\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"cuff\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"three_foure\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"style\":\"No Style\"}]', '[{\"type\":\"trouser\",\"length\":{\"body_size\":\"20\",\"losing\":null},\"waist\":{\"body_size\":\"20\",\"losing\":null},\"hip\":{\"body_size\":\"20\",\"losing\":null},\"pockland\":{\"body_size\":\"20\",\"losing\":null},\"thigh\":{\"body_size\":\"20\",\"losing\":null},\"knee\":{\"body_size\":\"20\",\"losing\":null},\"potree\":{\"body_size\":\"20\",\"losing\":null},\"btm\":{\"body_size\":\"20\",\"losing\":null},\"hight\":{\"body_size\":\"20\",\"losing\":null},\"style\":\"No Style\"}]', '1735118395_Screenshot (23).png', 'I Want surity that my cloths are secure or not', '2024-12-25 09:19:58', '2024-12-27 14:36:24', NULL, '50', 'complete', 'pending', '[{\"fabrics\":\"Cotton Foure\",\"quantity\":\"20\",\"amount\":\"2000\"},{\"fabrics\":\"fice\",\"quantity\":\"30\",\"amount\":\"2000\"}]', 'N', 'pending', NULL, NULL),
(10013, 'Suraj Kumar', '7357791943', '2024-12-28', '2025-01-03', '10013', '2024-12-28', '2222', '27DNYPP0795M1ZR', NULL, '50', NULL, '50', '20000', '1000', '5000', '2024-12-28', '14000.00', NULL, NULL, '[{\"type\":\"kurta\",\"arms\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"hip\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"length\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"shoulder\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"chest\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"belly\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"sleeve_length\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"collor\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"cuff\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"three_foure\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"style\":\"No Style\"}]', '[{\"type\":\"pajama\",\"length\":{\"body_size\":\"20\",\"losing\":null},\"waist\":{\"body_size\":\"20\",\"losing\":null},\"hip\":{\"body_size\":\"20\",\"losing\":null},\"pockland\":{\"body_size\":\"20\",\"losing\":null},\"thigh\":{\"body_size\":\"20\",\"losing\":null},\"knee\":{\"body_size\":\"20\",\"losing\":null},\"potree\":{\"body_size\":\"20\",\"losing\":null},\"btm\":{\"body_size\":\"20\",\"losing\":null},\"hight\":{\"body_size\":\"20\",\"losing\":null},\"style\":\"No Style\"}]', '1735358679_pexels-photo-358636.jpeg', 'no notes', '2024-12-28 04:04:41', '2024-12-28 14:35:32', 'https://res.cloudinary.com/dvtdyv4tu/video/upload/v1735358639/nykiju0iqolqaphgjqge.webm', NULL, 'pending', 'pending', '[{\"fabrics\":\"Cotton\",\"quantity\":\"20\",\"amount\":\"10000\"},{\"fabrics\":\"New Cotton\",\"quantity\":\"30\",\"amount\":\"10000\"}]', 'N', 'complete', NULL, NULL),
(10014, 'CK ROY', '7615979149', '2024-12-29', '2024-12-29', '10014', '2024-12-29', '2222', '27DNYPP0795M1ZR', NULL, '599', NULL, '599', '4000', '300', '1000', '2024-12-29', '2700.00', NULL, NULL, '[{\"type\":\"shirt\",\"arms\":{\"body_size\":\"20\",\"losing\":null,\"remark\":null},\"hip\":{\"body_size\":\"20\",\"losing\":null,\"remark\":null},\"length\":{\"body_size\":\"20\",\"losing\":null,\"remark\":null},\"shoulder\":{\"body_size\":\"20\",\"losing\":null,\"remark\":null},\"chest\":{\"body_size\":\"20\",\"losing\":null,\"remark\":null},\"belly\":{\"body_size\":\"20\",\"losing\":null,\"remark\":null},\"sleeve_length\":{\"body_size\":\"20\",\"losing\":null,\"remark\":null},\"collor\":{\"body_size\":\"20\",\"losing\":null,\"remark\":null},\"cuff\":{\"body_size\":\"20\",\"losing\":null,\"remark\":null},\"three_foure\":{\"body_size\":\"20\",\"losing\":null,\"remark\":null},\"style\":\"No style\"}]', '[{\"type\":\"trouser\",\"length\":{\"body_size\":\"20\",\"losing\":null},\"waist\":{\"body_size\":\"20\",\"losing\":null},\"hip\":{\"body_size\":\"20\",\"losing\":null},\"pockland\":{\"body_size\":\"20\",\"losing\":null},\"thigh\":{\"body_size\":\"20\",\"losing\":null},\"knee\":{\"body_size\":\"20\",\"losing\":null},\"potree\":{\"body_size\":\"20\",\"losing\":null},\"btm\":{\"body_size\":\"20\",\"losing\":null},\"hight\":{\"body_size\":\"20\",\"losing\":null},\"style\":\"BB Style\"}]', '1735477844_hero_2_2.png', 'no notes', '2024-12-29 13:10:45', '2024-12-29 14:17:31', NULL, NULL, 'pending', 'pending', '[{\"fabrics\":\"new cotton one\",\"quantity\":\"200\",\"amount\":\"1000\"},{\"fabrics\":\"New cotton second\",\"quantity\":\"399\",\"amount\":\"3000\"}]', 'Y', 'complete', '21', '22'),
(10015, 'Vishal Mishra', '8766749080', '2024-12-30', '2024-12-31', '10015', '2024-12-30', '1234', '27DNYPP0795M1ZR', NULL, '100', NULL, '100', '20000', '1000', '1000', '2024-12-30', '18000.00', NULL, NULL, '[{\"type\":\"shirt\",\"arms\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"hip\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"length\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"shoulder\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"chest\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"belly\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"sleeve_length\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"collor\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"cuff\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"three_foure\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"style\":\"No Style\"}]', '[{\"type\":\"pant\",\"length\":{\"body_size\":\"20\",\"losing\":null},\"waist\":{\"body_size\":\"20\",\"losing\":null},\"hip\":{\"body_size\":\"20\",\"losing\":null},\"pockland\":{\"body_size\":\"20\",\"losing\":null},\"thigh\":{\"body_size\":\"20\",\"losing\":null},\"knee\":{\"body_size\":\"20\",\"losing\":null},\"potree\":{\"body_size\":\"20\",\"losing\":null},\"btm\":{\"body_size\":\"20\",\"losing\":null},\"hight\":{\"body_size\":\"20\",\"losing\":null},\"style\":\"No Style Only Formel\"}]', '1735530775_pexels-photo-106399.jpeg', 'No notes go to according audio clip', '2024-12-30 03:52:57', '2024-12-30 04:06:33', 'https://res.cloudinary.com/dvtdyv4tu/video/upload/v1735530752/nzs8xlj2ah6dm6vckslm.webm', '20', 'pending', 'pending', '[{\"fabrics\":\"Cotton\",\"quantity\":\"100\",\"amount\":\"20000\"}]', 'Y', 'complete', '21', '22'),
(10016, 'Suraj jamdade', '9284599055', '2024-12-31', '2024-12-30', '10016', '2024-12-31', '0023', '27DNYPP0795M1ZR', NULL, '3', NULL, '3', '6500', '500', '2000', '2024-12-31', '4000.00', NULL, NULL, '[{\"type\":\"shirt\",\"arms\":{\"body_size\":\"22\",\"losing\":null,\"remark\":null},\"hip\":{\"body_size\":\"22\",\"losing\":null,\"remark\":null},\"length\":{\"body_size\":\"12\",\"losing\":null,\"remark\":null},\"shoulder\":{\"body_size\":\"12\",\"losing\":null,\"remark\":null},\"chest\":{\"body_size\":\"22\",\"losing\":null,\"remark\":null},\"belly\":{\"body_size\":\"22\",\"losing\":null,\"remark\":null},\"sleeve_length\":{\"body_size\":\"22\",\"losing\":null,\"remark\":null},\"collor\":{\"body_size\":\"22\",\"losing\":null,\"remark\":null},\"cuff\":{\"body_size\":\"22\",\"losing\":null,\"remark\":null},\"three_foure\":{\"body_size\":\"22\",\"losing\":null,\"remark\":null},\"style\":\"new\"}]', '[{\"type\":\"pant\",\"length\":{\"body_size\":\"45\",\"losing\":null},\"waist\":{\"body_size\":\"45\",\"losing\":null},\"hip\":{\"body_size\":\"45\",\"losing\":null},\"pockland\":{\"body_size\":\"45\",\"losing\":null},\"thigh\":{\"body_size\":\"45\",\"losing\":null},\"knee\":{\"body_size\":\"45\",\"losing\":null},\"potree\":{\"body_size\":\"45\",\"losing\":null},\"btm\":{\"body_size\":\"45\",\"losing\":null},\"hight\":{\"body_size\":\"45\",\"losing\":null},\"style\":\"new\"},{\"type\":\"trouser\",\"length\":{\"body_size\":\"23\",\"losing\":null},\"waist\":{\"body_size\":\"34\",\"losing\":null},\"hip\":{\"body_size\":\"34\",\"losing\":null},\"pockland\":{\"body_size\":\"34\",\"losing\":null},\"thigh\":{\"body_size\":\"34\",\"losing\":null},\"knee\":{\"body_size\":\"34\",\"losing\":null},\"potree\":{\"body_size\":\"43\",\"losing\":null},\"btm\":{\"body_size\":\"43\",\"losing\":null},\"hight\":{\"body_size\":\"34\",\"losing\":null},\"style\":\"new\"}]', '1735618800_3.jpeg', 'suraj test', '2024-12-31 09:50:00', '2024-12-31 18:47:41', NULL, '3', 'complete', 'pending', '[{\"fabrics\":\"cotton\",\"quantity\":\"1\",\"amount\":\"2000\"},{\"fabrics\":\"wool\",\"quantity\":\"1\",\"amount\":\"1500\"},{\"fabrics\":\"Linen\",\"quantity\":\"1\",\"amount\":\"3000\"}]', 'Y', 'complete', '21', '22'),
(10017, 'rajesh telap', '9222752008', '2002-02-08', '2025-12-01', '10017', '2024-12-31', 'sunil', '27DNYPP0795M1ZR', NULL, '2', NULL, '2', '3500', '200', '2000', '2025-12-12', '1300.00', NULL, NULL, '[{\"type\":\"jacket\",\"arms\":{\"body_size\":\"12\",\"losing\":\"14\",\"remark\":null},\"hip\":{\"body_size\":\"38\",\"losing\":null,\"remark\":null},\"length\":{\"body_size\":\"28\",\"losing\":null,\"remark\":null},\"shoulder\":{\"body_size\":\"18\",\"losing\":null,\"remark\":null},\"chest\":{\"body_size\":\"36\",\"losing\":null,\"remark\":null},\"belly\":{\"body_size\":\"35\",\"losing\":null,\"remark\":null},\"sleeve_length\":{\"body_size\":\"23\",\"losing\":null,\"remark\":null},\"collor\":{\"body_size\":\"16\",\"losing\":null,\"remark\":null},\"cuff\":{\"body_size\":\"9\",\"losing\":null,\"remark\":null},\"three_foure\":{\"body_size\":\"11\",\"losing\":\"12\",\"remark\":null},\"style\":\"apple\"},{\"type\":\"kurta\",\"arms\":{\"body_size\":\"12\",\"losing\":\"14\",\"remark\":null},\"hip\":{\"body_size\":\"38\",\"losing\":null,\"remark\":null},\"length\":{\"body_size\":\"36\",\"losing\":null,\"remark\":null},\"shoulder\":{\"body_size\":\"18\",\"losing\":null,\"remark\":null},\"chest\":{\"body_size\":\"36\",\"losing\":null,\"remark\":null},\"belly\":{\"body_size\":\"32\",\"losing\":null,\"remark\":null},\"sleeve_length\":{\"body_size\":\"24\",\"losing\":null,\"remark\":null},\"collor\":{\"body_size\":\"16\",\"losing\":null,\"remark\":null},\"cuff\":{\"body_size\":\"9\",\"losing\":null,\"remark\":null},\"three_foure\":{\"body_size\":\"11\",\"losing\":\"12\",\"remark\":null},\"style\":\"3\\/4 no matching patti\"}]', '[{\"type\":\"trouser\",\"length\":{\"body_size\":\"38\",\"losing\":null},\"waist\":{\"body_size\":\"36\",\"losing\":null},\"hip\":{\"body_size\":\"34\",\"losing\":null},\"pockland\":{\"body_size\":\"10\",\"losing\":null},\"thigh\":{\"body_size\":\"24\",\"losing\":null},\"knee\":{\"body_size\":\"17\",\"losing\":null},\"potree\":{\"body_size\":\"2\",\"losing\":null},\"btm\":{\"body_size\":\"12\",\"losing\":null},\"hight\":{\"body_size\":\"12\",\"losing\":null},\"style\":\"k 1back\"}]', '1735628288_IMG_20230325_201515 (1).jpg', NULL, '2024-12-31 12:28:08', '2024-12-31 13:42:15', NULL, NULL, 'pending', 'pending', '[{\"fabrics\":\"s\",\"quantity\":\"1\",\"amount\":\"1650\"},{\"fabrics\":\"p\",\"quantity\":\"1\",\"amount\":\"1850\"}]', 'N', 'pending', NULL, NULL),
(10019, 'vishal', '8766749080', '2024-12-31', '2025-01-09', '10018', '2024-12-31', '12345', '27DNYPP0795M1ZR', NULL, '2', NULL, '2', '2000', '100', '1000', '2024-12-31', '900.00', NULL, NULL, '[{\"type\":\"kurta\",\"arms\":{\"body_size\":\"10\",\"losing\":null,\"remark\":null},\"hip\":{\"body_size\":\"20\",\"losing\":null,\"remark\":null},\"length\":{\"body_size\":\"20\",\"losing\":null,\"remark\":null},\"shoulder\":{\"body_size\":\"02\",\"losing\":null,\"remark\":null},\"chest\":{\"body_size\":\"20\",\"losing\":null,\"remark\":null},\"belly\":{\"body_size\":\"20\",\"losing\":null,\"remark\":null},\"sleeve_length\":{\"body_size\":\"20\",\"losing\":null,\"remark\":null},\"collor\":{\"body_size\":\"02\",\"losing\":null,\"remark\":null},\"cuff\":{\"body_size\":\"02\",\"losing\":null,\"remark\":null},\"three_foure\":{\"body_size\":\"02\",\"losing\":null,\"remark\":null},\"style\":\"02\"}]', '[{\"type\":\"trouser\",\"length\":{\"body_size\":\"20\",\"losing\":null},\"waist\":{\"body_size\":\"20\",\"losing\":null},\"hip\":{\"body_size\":\"20\",\"losing\":null},\"pockland\":{\"body_size\":\"20\",\"losing\":null},\"thigh\":{\"body_size\":\"20\",\"losing\":null},\"knee\":{\"body_size\":\"20\",\"losing\":null},\"potree\":{\"body_size\":\"20\",\"losing\":null},\"btm\":{\"body_size\":\"20\",\"losing\":null},\"hight\":{\"body_size\":\"20\",\"losing\":null},\"style\":\"20\"}]', '1735652719_WhatsApp Image 2024-12-30 at 3.34.01 AM (1).jpeg', 'hi', '2024-12-31 19:15:19', '2024-12-31 19:15:19', 'https://res.cloudinary.com/dvtdyv4tu/video/upload/v1735652713/hawfbknu7phoshcks8g7.webm', NULL, 'pending', 'pending', '[{\"fabrics\":\"COTTON\",\"quantity\":\"2\",\"amount\":\"2000\"}]', 'N', 'pending', NULL, NULL);

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
  `payment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_payment`
--

INSERT INTO `customer_payment` (`id`, `customer_id`, `amount`, `payment_mode`, `created_at`, `updated_at`, `payment_date`) VALUES
(11, '10013', '1000', 'online', '2024-12-28 14:31:51', '2024-12-28 14:31:51', '2024-12-28'),
(13, '10013', '13000', 'cash', '2024-12-28 14:53:17', '2024-12-28 14:53:17', '2024-12-28'),
(14, '10014', '2700', 'online', '2024-12-29 14:15:58', '2024-12-29 14:15:58', '2024-12-29'),
(17, '10015', '5000', 'online', '2024-12-30 06:03:48', '2024-12-30 06:03:48', '2024-12-30'),
(18, '10015', '2000', 'cash', '2024-12-30 06:04:53', '2024-12-30 06:04:53', '2024-12-30'),
(19, '10016', '4000', 'online', '2024-12-31 10:02:46', '2024-12-31 10:02:46', '2024-12-31'),
(20, '10018', '3500', 'cash', '2024-12-31 18:40:12', '2024-12-31 18:40:12', '2024-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `cutting_qty`
--

CREATE TABLE `cutting_qty` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `category_type` text DEFAULT NULL,
  `qty` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `work_status` enum('pending','complete') NOT NULL DEFAULT 'pending',
  `qunatity_work` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cutting_qty`
--

INSERT INTO `cutting_qty` (`id`, `customer_id`, `user_id`, `category_type`, `qty`, `created_at`, `updated_at`, `work_status`, `qunatity_work`) VALUES
(14, '10012', '22', '[\"kurta\",\"trouser\",\"shirt\"]', '50', '2024-12-27 13:56:18', '2024-12-27 14:37:03', 'pending', '58'),
(15, '10010', '22', '[\"shirt\"]', '70', '2024-12-27 14:06:35', '2024-12-27 14:07:57', 'pending', NULL),
(17, '10015', '22', '\"shirt\"', '20', '2024-12-30 04:06:33', '2024-12-30 04:06:33', 'pending', NULL),
(18, '10016', '22', '[\"shirt\"]', '3', '2024-12-31 18:47:18', '2024-12-31 18:47:41', 'pending', NULL);

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
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `date` text DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_tags` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `status` enum('Y','N') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `short_description`, `image`, `location`, `date`, `start_time`, `end_time`, `description`, `meta_title`, `meta_tags`, `meta_description`, `status`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Tata Mumbai Marathon 2024 sets a new philanthropic record with over INR 58 crores raised before race day', 'Mumbai, January 16, 2024: The 19th edition of Asia’s most prestigious Marathon event, the Tata Mumbai Marathon (TMM) has witnessed an unprecedented achievement, as 267 NGOs collectively raised a record-breaking INR 58 crores, reaffirming its status as India\'s largest sporting platform for philanthropy. The success of this endeavour is attributed to the collaborative efforts with United Way Mumbai (UWM), the event\'s esteemed Philanthropy Partner.', '1731556804_e1.jfif', 'Arunachal', '2024-11-22', '10:00:00', '13:00:00', '<p style=\"padding: 0px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(35, 35, 35); line-height: 26px; font-family: &quot;Open Sans&quot;, sans-serif; text-align: justify;\">In its role as the Philanthropy Partner, UWM has played a pivotal role in building capacities of partnering non-profits to raise funds and awareness for their projects. UWM ensures a transparent, cause-neutral, level-playing field by providing a robust digital platform. UWM maximizes the fundraising opportunities of the limited running spots available at TMM and distributes them equitably between the NGOs.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(35, 35, 35); line-height: 26px; font-family: &quot;Open Sans&quot;, sans-serif; text-align: justify;\">The evolution of philanthropy at TMM is remarkable, progressing from a cumulative total of INR 43 Lacs by 12 NGOs in the inaugural edition, to surpassing INR 400 crores today, benefiting over 750 NGOs.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(35, 35, 35); line-height: 26px; font-family: &quot;Open Sans&quot;, sans-serif; text-align: justify;\">George Aikara, CEO, United Way Mumbai, said, “I would like to congratulate all the participating NGOs for the remarkable philanthropic success of the Tata Mumbai Marathon. We have been the Philanthropy Partner of the TMM since 2009 and have witnessed the marathon\'s evolution into a strong catalyst of social impact. The participation of 12,000 individuals this year and a record-breaking fundraising effort, highlights the marathon\'s unique ability to engage and inspire. The funds and awareness raised through TMM will allow our NGO partners to lend a helping hand and make a lasting impact.”</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(35, 35, 35); line-height: 26px; font-family: &quot;Open Sans&quot;, sans-serif; text-align: justify;\">Manisha Khemlani, CEO, Central Chinmaya Mission Trust said, “The secret sauce of my success is my family, my team. My mission is my family and being the CEO of the organisation, I am fortunate enough to be participating in raising funds for the marathon. We work to raise funds for education, starving children and more. Swami Chinmaya Ji, the founder believed that a child spends a lot of time in school and the values that are given in school are very important. We have a four pillar system, we look at the physical, mental, intellectual and spiritual personality of the child. Interestingly, about 45% of our 82 schools are either in remote areas or in this two tier cities. Thanks to the support of the Tata Mumbai marathon and Procam who help us reach out to over 600 children with scholarships solely because of the awareness and the opportunity to raise funds. I\'m very grateful to Procam International, United Way of Mumbai for giving us this opportunity to combine fitness and fundraising.”</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(35, 35, 35); line-height: 26px; font-family: &quot;Open Sans&quot;, sans-serif; text-align: justify;\">Mira Joshi, Cuddles Foundation Nayi Disha Resource Centre, Family Planning Association India, said \"Speaking on the occasion Mira Joshi said, When I was younger I saw my dad raising funds every single year. He used to tell me how he helped different people and the things that he had done. When I turn 12, I could qualify for the dream run. I decided that I too wanted to help people. My father was my inspiration.\"</p>', 'Tata Mumbai Marathon 2024 sets a new philanthropic record with over INR 58 crores raised before race day', 'Tata Mumbai Marathon 2024 sets a new philanthropic record with over INR 58 crores raised before race day', 'Tata Mumbai Marathon 2024 sets a new philanthropic record with over INR 58 crores raised before race day', 'Y', '2024-11-13 22:30:04', '2024-11-13 22:49:11', 'tata-mumbai-marathon-2024-sets-a-new-philanthropic-record-with-over-inr-58-crores-raised-before-race-day');

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
(27, '2025_01_27_155408_create_pakeges', 24);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pakeges`
--

INSERT INTO `pakeges` (`id`, `category`, `currency`, `formate`, `deac`, `ammount`, `status`, `created_at`, `updated_at`) VALUES
(1, '31', '$', 'Months', '<h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 28.8px; font-size: 24px; font-family: var(--head-font); color: rgb(255, 255, 255); padding: 0px; transition: var(--transition);\">Features:</h2><div class=\"pricing-features\" style=\"margin-top: 2rem; text-align: center; color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px;\"><div class=\"feature\" style=\"font-size: 14px; margin: 1.5rem 0px; color: rgb(255, 255, 255); border-bottom: 1px dotted rgba(242, 242, 242, 0.25); padding: 10px 0px;\">All Starter Package Features</div><div class=\"feature\" style=\"font-size: 14px; margin: 1.5rem 0px; color: rgb(255, 255, 255); border-bottom: 1px dotted rgba(242, 242, 242, 0.25); padding: 10px 0px;\">Basic Risk Management Tools</div><div class=\"feature\" style=\"font-size: 14px; margin: 1.5rem 0px; color: rgb(255, 255, 255); border-bottom: 1px dotted rgba(242, 242, 242, 0.25); padding: 10px 0px;\">Quarterly Portfolio Review</div><div class=\"feature\" style=\"font-size: 14px; margin: 1.5rem 0px; color: rgb(255, 255, 255); border-bottom: 1px dotted rgba(242, 242, 242, 0.25); padding: 10px 0px;\">24/7 Customer Support</div><div class=\"feature\" style=\"font-size: 14px; margin: 1.5rem 0px; color: rgb(255, 255, 255); border-bottom: 1px dotted rgba(242, 242, 242, 0.25); padding: 10px 0px;\">Monthly Portfolio Review</div></div>', '1999', 'Y', '2025-01-28 07:24:54', '2025-01-28 08:11:56');

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
-- Table structure for table `proje`
--

CREATE TABLE `proje` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `project_name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `date` text DEFAULT NULL,
  `loction` text DEFAULT NULL,
  `client` text DEFAULT NULL,
  `duration` text DEFAULT NULL,
  `category` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `image1` text DEFAULT NULL,
  `s_description` text DEFAULT NULL,
  `l_description` text DEFAULT NULL,
  `s_description1` text DEFAULT NULL,
  `l_description1` text DEFAULT NULL,
  `s_description2` text DEFAULT NULL,
  `l_description2` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `curation` text DEFAULT NULL,
  `meta_tags` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_name`, `slug`, `date`, `loction`, `client`, `duration`, `category`, `image`, `image1`, `s_description`, `l_description`, `s_description1`, `l_description1`, `s_description2`, `l_description2`, `meta_title`, `curation`, `meta_tags`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(5, 'test one', 'test-one', '0033-03-31', 'jaipur', NULL, NULL, '11', '1731797030.jpg', NULL, 'If you use this site regularly and would like to help keep the site on the Internet, please consider donating a small sum to help pay for the hosting and bandwidth bill. There is no minimum donation, any sum is appreciated commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<h4 class=\"bg-light p-3\" style=\"--bs-bg-opacity: 1;\"><font color=\"#4a5a6b\" face=\"Public Sans, sans-serif\">If you use this site regularly and would like to help keep the site on the Internet, please consider donating a small sum to help pay for the hosting and bandwidth bill. There is no minimum donation, any sum is appreciated commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</font></h4>', 'Project SummeryIf you use this site regularly and would like to help keep the site on the Internet, please consider donating a small sum to help pay for the hosting and bandwidth bill. There is no minimum donation, any sum is appreciated commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'If you use this site regularly and would like to help keep the site on the Internet, please consider donating a small sum to help pay for the hosting and bandwidth bill. There is no minimum donation, any sum is appreciated commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'If you use this site regularly and would like to help keep the site on the Internet, please consider donating a small sum to help pay for the hosting and bandwidth bill. There is no minimum donation, any sum is appreciated commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'If you use this site regularly and would like to help keep the site on the Internet, please consider donating a small sum to help pay for the hosting and bandwidth bill. There is no minimum donation, any sum is appreciated commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Project Summery', NULL, 'Project Summery', 'Project Summery', 'Y', '2024-11-17 10:43:50', '2024-11-23 12:25:54');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `price` text DEFAULT NULL,
  `gallery` text DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `bedrooms` text DEFAULT NULL,
  `bathrooms` varchar(255) DEFAULT NULL,
  `arrea` varchar(255) DEFAULT NULL,
  `furnished_status` varchar(255) DEFAULT NULL,
  `more_detail` varchar(255) DEFAULT NULL,
  `construction_age` varchar(255) DEFAULT NULL,
  `property_description` varchar(255) DEFAULT NULL,
  `additional_description` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_tags` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(16, 'Client Centric Appraoch', NULL, '1737442741.jpg', 'A client-centric approach places the client at the core of all business activities, ensuring that products, services,', 'client-centric-appraoch', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">The Euro is down to 1.048, after ending yesterday at 1.0481. Overall, a 0.01% loss or 1 pips today.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">The MACD index is indicating that momentum is shifting from bullish to bearish following a negative crossover. When the MACD falls below the signal line, it is typically considered to be a bearish development favoring short positions. On the other hand, note that the Relative Strength Index has gone below 30, going into oversold conditions and allowing more gains. Euro-Dollar\'s lower Bollinger Band® is at 1.0476, indicating that the asset has overextended to the downside and could, therefore, bounce back as buyers look for bargains.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">Overall, looking at the technical analysis landscape, it seems that although indicators are mixed and some are pointing in different directions further drawbacks may be next for the Euro.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">Positive performances can be seen by looking at other currencies as GBP/NZD increases 0.19% to trade around 2.035. EUR/NZD increases 0.18% to trade around 1.764.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">n the meantime, USD/SGD trades close to 1.3734, with no major change</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">The currency pair has been trending lower for about 2 months. The Euro has shed 78.55% over the past three months.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">This content was generated by AI</p>', '1737442741.jpg', '1737723765.svg', 'Stock Market', 'Stock Market', 'Stock Market', 'Y', '2025-01-21 06:59:01', '2025-01-25 09:23:35'),
(17, 'Strategy Consulting', '23', '1737722387.png', 'transformed the trading landscape. Online trading platforms and mobile apps have made it easier than ever for individuals', 'strategy-consulting', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">The Euro is down to 1.048, after ending yesterday at 1.0481. Overall, a 0.01% loss or 1 pips today.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">The MACD index is indicating that momentum is shifting from bullish to bearish following a negative crossover. When the MACD falls below the signal line, it is typically considered to be a bearish development favoring short positions. On the other hand, note that the Relative Strength Index has gone below 30, going into oversold conditions and allowing more gains. Euro-Dollar\'s lower Bollinger Band® is at 1.0476, indicating that the asset has overextended to the downside and could, therefore, bounce back as buyers look for bargains.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">Overall, looking at the technical analysis landscape, it seems that although indicators are mixed and some are pointing in different directions further drawbacks may be next for the Euro.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">Positive performances can be seen by looking at other currencies as GBP/NZD increases 0.19% to trade around 2.035. EUR/NZD increases 0.18% to trade around 1.764.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">n the meantime, USD/SGD trades close to 1.3734, with no major change</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">The currency pair has been trending lower for about 2 months. The Euro has shed 78.55% over the past three months.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: 24px; font-family: Poppins, sans-serif; color: rgb(182, 182, 182); background-color: rgb(1, 3, 26);\">This content was generated by AI</p>', NULL, '1737722387.svg', 'Stock Market', 'Stock Market', 'Stock Market', 'Y', '2025-01-24 12:39:47', '2025-01-24 12:44:19');

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
  `aadhar_card` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `image`, `company_name`, `company_address`, `gstin`, `domain`, `codeid`, `customer_type_id`, `is_block`, `role`, `created_at`, `updated_at`, `remember_token`, `job_title`, `role_type`, `destination`, `access_type`, `first_name`, `last_name`, `account_holder_name`, `account_number`, `ifsc_code`, `branch_name`, `aadhar_card_number`, `pan_number`, `pan_card`, `aadhar_card`) VALUES
(1, 'Stock Market', 'ly0596232@gmail.com', '$2y$10$3DkZBRcIeQIP9stJ6F1lWOX1GU0dSDAMFtkJbz1bEcdSSRp9WP8Lm', '8769841472', NULL, NULL, NULL, NULL, NULL, NULL, 'rohit@123', NULL, 'N', 'superadmin', NULL, '2024-12-04 23:32:21', 'ZGIIfmKWyWFZIbXPJJgnIEuh0hIHRwDlQk1EHPl0OvGZUFdTwCy3zAk5cn3n', NULL, 'admin', 'Founder & CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Admin', 'targetvr43@gmail.com', '$2y$10$9/HxCNFu2COKjIWX9TrxbOOEiL/tqbr7YPimqLvNv5/qdXoZFYG16', '8888887499', NULL, NULL, NULL, NULL, NULL, NULL, '12345678', NULL, 'N', 'superadmin', '2024-10-02 01:28:51', '2024-11-11 02:39:14', 'MCikqRu5dusIhPf2VuKrmx1r9LWPFvlz1AfBl2K01B3kQDZBQtOa3xjJPvyZ', 'UI Designer', 'admin', 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'vikashsaini007', 'vikashsainiji116@gmail.com', '$2y$10$.R4TipctSB7690knEIzxQe5L7Ea1WpE3wxBd39YQUs0ZCR7qDc1yO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'user', '2025-01-29 13:06:38', '2025-01-29 13:06:38', NULL, NULL, NULL, NULL, NULL, 'Vikash', 'Saini', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'suraj007', 'suraj@gmail.com', '$2y$10$lPj2i.FsMCBC3Bfx2G9/deK9x8ucUVEX4WsrDkO4GScdctKp7vZtO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'user', '2025-01-29 13:10:22', '2025-01-29 13:10:22', NULL, NULL, NULL, NULL, NULL, 'Suraj', 'Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'mahesh008', 'mahesh@gmail.com', '$2y$10$HsPaYZLLhfweZRsAQ1lCkuCLdCFQKPn8kwP5tYg3.l1NX7nD0p0K2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12345678', NULL, 'N', 'user', '2025-01-29 13:24:13', '2025-01-29 15:43:49', NULL, NULL, NULL, NULL, NULL, 'Mahesh 00', 'Kumar', 'vikash saini', '911234567890', 'PYTM012345678', 'Paytm Noida', '123456789012', 'LTWPS0853J', 'uploads/kyc/1738165232_pan.jpeg', 'uploads/kyc/1738165079_aadhar.jpeg');

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
(1, '<div class=\"privacy-policy__part\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(31, 31, 31);\"><h5 class=\"mb-4\" style=\"font-weight: 700; line-height: 24px; font-size: 20px; font-family: var(--head-font); padding: 0px; margin-right: 0px; margin-left: 0px; transition: var(--transition); margin-bottom: 1rem !important;\">Agreement to Terms</h5><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">I apologize for any confusion, but as an AI language model, I don\'t have access specific gaming platforms, games, or online services can vary widely depending on the specific company and the jurisdiction they operate in.</p><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">f you\'re looking for the terms and conditions of a particular gaming platform or game recommend visiting the official website of the platform or contacting their customer support. The terms and conditions are usually provided on their website,</p><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">I\'d be happy to provide you with some general information about terms and conditions. terms and conditions of any particular service or organization. The terms and conditions specific company or service you are referring to.</p><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">I\'d be happy to provide you with some general information about terms and conditions. However, please note that I am AI language model, and I don\'t have access to specific terms and conditions of any particular service or organization.</p></div><div class=\"privacy-policy__part\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(31, 31, 31);\"><h5 class=\"mb-4\" style=\"font-weight: 700; line-height: 24px; font-size: 20px; font-family: var(--head-font); padding: 0px; margin-right: 0px; margin-left: 0px; transition: var(--transition); margin-bottom: 1rem !important;\">User Representations</h5><p class=\"mt-4 mb-5\" style=\"line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 1rem !important; margin-bottom: 1.25rem !important;\">We use cookies and similar tracking technologies to enhance your experience on our platform and gather information about your interactions with our services.</p><ul class=\"ul-decimal mt-5 d-flex gap-3 flex-column\" style=\"padding: 0px; margin-bottom: 0px; margin-right: 0px; margin-left: 14px; list-style: none; margin-top: 1.25rem !important; gap: 0.75rem !important;\"><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">Acceptance: Users are typically required to agree to the terms and conditions before using a service. button or by simply using the service.</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">User rights and responsibilities: The terms and conditions specify the rights granted to users and the responsibilities they have while using the service.</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">your reviews should not contain offensive profanity, racist, offensive, or hate language;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">Dispute resolution: Procedures for resolving disputes, such as arbitration or mediation, may be outlined in the terms and conditions.</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">Intellectual property: These sections outline the ownership and usage rights of intellectual property such as copyrights, trademarks, and patents associated with the service or content provided.</li></ul><p class=\"mt-5\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 1.25rem !important;\">Remember that it\'s important to read and understand the specific terms and conditions of any service or product you use. If you have any questions or concerns about a particular set of terms clarification.</p></div><div class=\"privacy-policy__part\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(31, 31, 31);\"><h5 class=\"mb-4\" style=\"font-weight: 700; line-height: 24px; font-size: 20px; font-family: var(--head-font); padding: 0px; margin-right: 0px; margin-left: 0px; transition: var(--transition); margin-bottom: 1rem !important;\">Guideline for Reviews</h5><ul class=\"ul-decimal mt-5 d-flex gap-3 flex-column\" style=\"padding: 0px; margin-bottom: 0px; margin-right: 0px; margin-left: 14px; list-style: none; margin-top: 1.25rem !important; gap: 0.75rem !important;\"><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">you should have firsthand experience with the object being reviewed;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">your reviews should not contain offensive profanity offensive, or hate language;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">your reviews should not contain discriminatory references based on religion, race, gender, national origin, age, marital status, sexual orientation, or disability;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">your reviews should not contain references to illegal activity;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">you may not organize encouraging others to post reviews, whether positive or negative.</li></ul><p class=\"mt-4\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 1rem !important;\">We may accept, reject, or remove reviews at our sole discretion. We have absolutely no obligation to screen reviews or to delete reviews, even if anyone considers reviews objectionable or inaccurate.</p></div><div class=\"privacy-policy__part\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(31, 31, 31);\"><h5 class=\"mb-4\" style=\"font-weight: 700; line-height: 24px; font-size: 20px; font-family: var(--head-font); padding: 0px; margin-right: 0px; margin-left: 0px; transition: var(--transition); margin-bottom: 1rem !important;\">Social Media</h5><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 24px; font-family: var(--body-font); color: rgba(var(--nw2), 1);\">‍As part of the functionality of the Site, you may link your account with online accounts you either: providing your Third-Party Account login information through the Site allowing us each Third-Party Account.</p><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">You represent and warrant that you are entitled to disclose your Third-Party Account login you of any of the Terms and Conditions that govern your use of the applicable Third-Party Account, and without obligating us to pay any fees or making us subject to any usage service provider of the Third-Party Account.</p></div>', NULL, NULL, NULL, NULL, NULL, '2025-01-28 05:28:27', NULL, NULL),
(2, '<div class=\"privacy-policy__part\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(31, 31, 31);\"><h5 class=\"mb-4\" style=\"font-weight: 700; line-height: 24px; font-size: 20px; font-family: var(--head-font); padding: 0px; margin-right: 0px; margin-left: 0px; transition: var(--transition); margin-bottom: 1rem !important;\">Agreement to Terms</h5><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">I apologize for any confusion, but as an AI language model, I don\'t have access specific gaming platforms, games, or online services can vary widely depending on the specific company and the jurisdiction they operate in.</p><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">f you\'re looking for the terms and conditions of a particular gaming platform or game recommend visiting the official website of the platform or contacting their customer support. The terms and conditions are usually provided on their website,</p><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">I\'d be happy to provide you with some general information about terms and conditions. terms and conditions of any particular service or organization. The terms and conditions specific company or service you are referring to.</p><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">I\'d be happy to provide you with some general information about terms and conditions. However, please note that I am AI language model, and I don\'t have access to specific terms and conditions of any particular service or organization.</p></div><div class=\"privacy-policy__part\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(31, 31, 31);\"><h5 class=\"mb-4\" style=\"font-weight: 700; line-height: 24px; font-size: 20px; font-family: var(--head-font); padding: 0px; margin-right: 0px; margin-left: 0px; transition: var(--transition); margin-bottom: 1rem !important;\">User Representations</h5><p class=\"mt-4 mb-5\" style=\"line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 1rem !important; margin-bottom: 1.25rem !important;\">We use cookies and similar tracking technologies to enhance your experience on our platform and gather information about your interactions with our services.</p><ul class=\"ul-decimal mt-5 d-flex gap-3 flex-column\" style=\"padding: 0px; margin-bottom: 0px; margin-right: 0px; margin-left: 14px; list-style: none; margin-top: 1.25rem !important; gap: 0.75rem !important;\"><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">Acceptance: Users are typically required to agree to the terms and conditions before using a service. button or by simply using the service.</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">User rights and responsibilities: The terms and conditions specify the rights granted to users and the responsibilities they have while using the service.</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">your reviews should not contain offensive profanity, racist, offensive, or hate language;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">Dispute resolution: Procedures for resolving disputes, such as arbitration or mediation, may be outlined in the terms and conditions.</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">Intellectual property: These sections outline the ownership and usage rights of intellectual property such as copyrights, trademarks, and patents associated with the service or content provided.</li></ul><p class=\"mt-5\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 1.25rem !important;\">Remember that it\'s important to read and understand the specific terms and conditions of any service or product you use. If you have any questions or concerns about a particular set of terms clarification.</p></div><div class=\"privacy-policy__part\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(31, 31, 31);\"><h5 class=\"mb-4\" style=\"font-weight: 700; line-height: 24px; font-size: 20px; font-family: var(--head-font); padding: 0px; margin-right: 0px; margin-left: 0px; transition: var(--transition); margin-bottom: 1rem !important;\">Guideline for Reviews</h5><ul class=\"ul-decimal mt-5 d-flex gap-3 flex-column\" style=\"padding: 0px; margin-bottom: 0px; margin-right: 0px; margin-left: 14px; list-style: none; margin-top: 1.25rem !important; gap: 0.75rem !important;\"><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">you should have firsthand experience with the object being reviewed;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">your reviews should not contain offensive profanity offensive, or hate language;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">your reviews should not contain discriminatory references based on religion, race, gender, national origin, age, marital status, sexual orientation, or disability;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">your reviews should not contain references to illegal activity;</li><li style=\"list-style: decimal; font-size: inherit; line-height: 24px; margin: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); font-weight: inherit;\">you may not organize encouraging others to post reviews, whether positive or negative.</li></ul><p class=\"mt-4\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 1rem !important;\">We may accept, reject, or remove reviews at our sole discretion. We have absolutely no obligation to screen reviews or to delete reviews, even if anyone considers reviews objectionable or inaccurate.</p></div><div class=\"privacy-policy__part\" style=\"color: rgb(182, 182, 182); font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(31, 31, 31);\"><h5 class=\"mb-4\" style=\"font-weight: 700; line-height: 24px; font-size: 20px; font-family: var(--head-font); padding: 0px; margin-right: 0px; margin-left: 0px; transition: var(--transition); margin-bottom: 1rem !important;\">Social Media</h5><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 24px; font-family: var(--body-font); color: rgba(var(--nw2), 1);\">‍As part of the functionality of the Site, you may link your account with online accounts you either: providing your Third-Party Account login information through the Site allowing us each Third-Party Account.</p><p class=\"mt-3\" style=\"margin-bottom: 0px; line-height: 24px; margin-right: 0px; margin-left: 0px; font-family: var(--body-font); color: rgba(var(--nw2), 1); margin-top: 0.75rem !important;\">You represent and warrant that you are entitled to disclose your Third-Party Account login you of any of the Terms and Conditions that govern your use of the applicable Third-Party Account, and without obligating us to pay any fees or making us subject to any usage service provider of the Third-Party Account.</p></div>', NULL, NULL, NULL, NULL, NULL, '2025-01-28 05:33:09', NULL, NULL),
(3, '{\"title\":\"Unlocking Potential Through Quality Education\",\"short_description\":\"To comprehend Tron, you might think of any major entertainment conglomerate that creates content across a range of industries. Tron functions like a major studio, with multiple production facilities that are essential for creating content for film, TV, games, animation, design, digital applications, and more. Content creation is our core learning tool. We place our education in outstanding facilities with master instructors and mentors, and we regularly update and realign curriculum to be in lockstep with the most current industry standards. This is all to help students originate, produce, and exhibit their best possible creative and technical work.\\r\\n\\r\\nFrom an education perspective, we are unassailable. Our programs go deep and are immersive, efficient, and transformational. This is no acci-dent. We have an inspired education department expert at curriculum design and preparing industry specialists to be effective instructors. In this, we stand alone.\\r\\n\\r\\nBy developing a well-rounded curriculum of visual, media and performing arts, Tron has created an educational environment that encourages collaboration between its programs of study. With a faculty and advisory board that draws directly from the relevant industries, Tron provides its students with the foundation and mentorship necessary to launch a career. Many Tron gradu\\u0002ates are now successful, creative professionals with credits on major feature films, directorial positions, and successful freelance careers around the world.\",\"our_story\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur odio natus ab amet provident vel. Officiis pariatur similique, beatae quis quas doloremque iure sint. Esse voluptatibus autem maxime odit illo vitae molestias exercitationem fugiat error tenetur rerum ipsum, cum assumenda. Numquam accusantium quisquam id nobis sequi enim ducimus porro exercitationem iure, facere modi, omnis blanditiis sunt nesciunt? Repellendus numquam illo cum quo non blanditiis voluptas deserunt ab officiis quae obcaecati sapiente, voluptatibus quos ut atque repellat distinctio maiores provident quod ad, sed et neque a consectetur. iste, amet nobis deserunt? Et laborum, ad mollitia quos quae laudantium. Ipsum excepturi fugit,<br><\\/p>\",\"our_mission\":\"Our mission at Toads Academy is to cultivate a new generation of artists and innovators by providing world-class education in Animation, VFX, and Game design. We are committed to delivering hands-on, industry-relevant training, guided by experienced professionals, and infused with the latest technological advancements.\",\"vision\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis dolores perspiciatis veniam voluptate, aspernatur possimus. Tenetur adipisci odit a, corrupti explicabo aspernatur veniam, officiis nulla tempora qui placeat quasi est non.<br><\\/p>\",\"core_value\":\"<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nulla sed quasi corrupti rerum, soluta iste rem consequuntur itaque non sequi temporibus reiciendis consequatur quos quibusdam fugit ipsum perspiciatis! Explicabo, deserunt. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nulla sed quasi corrupti rerum, soluta iste rem consequuntur itaque non sequi temporibus reiciendis consequatur quos quibusdam fugit ipsum perspiciatis! Explicabo, deserunt.<br><\\/p>\",\"exp_title\":\"15 years experience of Animation industry.\",\"placed_students\":\"12\",\"award_winning\":\"90\",\"toatl_companies\":\"10\",\"exp_description\":\"Tron School Of Animation, Graphics And Artology is the media & entertainment education brand of Tron Education And Research Pvt. Ltd., a global learning solutions provider that commenced its education and training business in 2015. Tron operates through a network of centres worldwide, and has prepared thousands of students for jobs in the media & entertainment industry. The Academy provides quality education in Animation, Visual Effects, Gaming, Filmmaking, Multimedia, Web Design, Graphic Design, AR\\/VR, and more through job-ori\\u0002ented courses. Students at Tron get the opportunity to work in a studio-like environment, practice on industry-specific software, attend course-specific workshops and participate in studio visits.\",\"meta_title\":\"Toads - About\",\"meta_tags\":\"test\",\"meta_description\":\"test\"}', NULL, NULL, '1727779369_\'.jpg', NULL, NULL, '2024-10-05 02:52:44', NULL, NULL),
(4, '{\"title\":\"BECOME A TOADS ANIMATION FRANCHISEE\",\"description\":\"<p>Toads Education and Research Pvt. Ltd. is a multi-domain, premium vocational ed-tech training academy and education solutions company which helps teenagers and youth to bring out their creativity so that they become highly paid experts and achieve peace of mind, financial freedom and a career for life.<\\/p><p>Toads Education and Research Pvt. Ltd. has over 7 years of experience and helped in empowering over 7000 students. The corporate office of the academy is in Pune With Focus on imparting education for skill development that enables individual to gain in-depth knowledge well aligned with the latest requirement of the industry. Also, instilling the power of Entrepreneurship in the minds of the young souls to be able to contribute to the development of individuals, society and the country we will in.<br><\\/p>\",\"total_franchise\":\"199\",\"total_staff\":\"100\",\"placed_student\":\"1000\",\"b_title\":\"Together We Build Dreams\",\"b_description\":\"The animation, visual effects, gaming and comics (AVGC) industry has witnessed unprecedented growth rates in recent times. It has seen the entry of many global majors who have tapped into India\\u2019s talent pool for offshore delivery of services\",\"meta_title\":\"1\",\"meta_tags\":\"2\",\"meta_description\":\"3\"}', NULL, NULL, '1728018334_11.jpg', NULL, NULL, '2024-10-05 03:36:27', NULL, NULL),
(5, '{\"phone\":\"0123456789\",\"phone_2\":\"0123456789\",\"email\":\"ly0596232@gmail.com\",\"location\":\"india\",\"location_iframe\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d242117.70906191418!2d73.69814813607152!3d18.524870616285536!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2bf2e67461101%3A0x828d43bf9d9ee343!2sPune%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1735818891646!5m2!1sen!2sin\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"meta_title\":\"Stock Market\",\"meta_tags\":\"Stock Market\",\"meta_description\":\"Stock Market\",\"twitter\":\"\\/\",\"facebook\":\"\\/\",\"linkedin\":\"\\/\",\"youtube\":null,\"instagram\":\"\\/\"}', NULL, NULL, '1738139775_logo.png', NULL, NULL, '2025-01-29 08:37:07', '1738139775_logo.png', NULL),
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
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` enum('Y','N') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'nice to me', 'asdd', '1731717547.jpg', 'Y', '2024-11-16 12:39:07', '2024-11-16 12:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `workshop_cutting`
--

CREATE TABLE `workshop_cutting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `category_type` text DEFAULT NULL,
  `qty` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `qunatity_work` text DEFAULT NULL,
  `work_status` enum('pending','complete') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workshop_cutting`
--

INSERT INTO `workshop_cutting` (`id`, `customer_id`, `user_id`, `category_type`, `qty`, `created_at`, `updated_at`, `qunatity_work`, `work_status`) VALUES
(1, '10010', '21', 'jacket', '2', '2024-12-19 16:10:00', '2024-12-19 16:10:00', '', 'pending'),
(4, '10012', '21', '[\"shirt\"]', '50', '2024-12-27 12:51:00', '2024-12-27 14:37:03', NULL, 'pending'),
(5, '10013', '21', '\"shirt\"', '10', '2024-12-28 04:16:14', '2024-12-28 04:16:14', NULL, 'pending');

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
-- Indexes for table `cusotmers`
--
ALTER TABLE `cusotmers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_payment`
--
ALTER TABLE `customer_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cutting_qty`
--
ALTER TABLE `cutting_qty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
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
-- Indexes for table `proje`
--
ALTER TABLE `proje`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
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
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workshop_cutting`
--
ALTER TABLE `workshop_cutting`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `cusotmers`
--
ALTER TABLE `cusotmers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10020;

--
-- AUTO_INCREMENT for table `customer_payment`
--
ALTER TABLE `customer_payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cutting_qty`
--
ALTER TABLE `cutting_qty`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pakeges`
--
ALTER TABLE `pakeges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `proje`
--
ALTER TABLE `proje`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `workshop_cutting`
--
ALTER TABLE `workshop_cutting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
