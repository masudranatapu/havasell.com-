-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2023 at 01:42 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ffutsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'backend/image/default-user.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2022-12-21 23:31:56', '$2y$10$4fFFBAkTMG.qgyGuXYP7lev2m.qeXg.lpHb7JwDIuXMF4lDAhhtuC', 'uploads/user\\ZCJL71xIcnpfy21GAFipAjWWoP5uIcskpuzcGc9j.jpg', '3ZZP5CUmQWkuIk4WLqNEZV5xMzUHePffoKuWm1GJOfeEFnIOi3SGTPobFLyJ', '2022-12-21 23:31:56', '2023-02-28 22:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `admin_searches`
--

CREATE TABLE `admin_searches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ad_type_id` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_phone` tinyint(1) NOT NULL DEFAULT 1,
  `phone_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','sold','pending','declined') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `total_reports` int(11) NOT NULL DEFAULT 0,
  `total_views` int(11) NOT NULL DEFAULT 0,
  `is_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `drafted_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neighborhood` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_for_disabilities` tinyint(1) NOT NULL DEFAULT 0,
  `phone_text` int(1) NOT NULL DEFAULT 0,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_privacy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `availability` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direct_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_license` tinyint(1) NOT NULL DEFAULT 0,
  `license_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_contact` tinyint(1) DEFAULT 0,
  `phone_call` tinyint(1) DEFAULT 0,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `services` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sqft` int(11) DEFAULT NULL,
  `houssing_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `laundry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parking` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bedrooms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bathrooms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available_on` timestamp NULL DEFAULT NULL,
  `broker_fee` tinyint(1) NOT NULL DEFAULT 0,
  `broker_fee_detailed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_fee` tinyint(1) NOT NULL DEFAULT 0,
  `application_fee_detailed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conditions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_duration` timestamp NULL DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dimension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_start_date` timestamp NULL DEFAULT NULL,
  `event_end_date` timestamp NULL DEFAULT NULL,
  `is_payable` tinyint(1) DEFAULT NULL COMMENT '1 = Yes\r\n0 = no',
  `payment_status` tinyint(1) DEFAULT NULL COMMENT '0 = unpaid\r\n1 = paid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `title`, `slug`, `user_id`, `ad_type_id`, `category_id`, `subcategory_id`, `brand_id`, `price`, `description`, `phone`, `show_phone`, `phone_2`, `thumbnail`, `status`, `featured`, `total_reports`, `total_views`, `is_blocked`, `drafted_at`, `created_at`, `updated_at`, `address`, `neighborhood`, `locality`, `place`, `district`, `postcode`, `region`, `country`, `long`, `lat`, `whatsapp`, `job_for_disabilities`, `phone_text`, `contact_name`, `company_name`, `salary`, `job_title`, `employment_type`, `email_privacy`, `availability`, `education`, `direct_contact`, `is_license`, `license_info`, `other_contact`, `phone_call`, `city`, `services`, `sqft`, `houssing_type`, `laundry`, `parking`, `bedrooms`, `bathrooms`, `available_on`, `broker_fee`, `broker_fee_detailed`, `application_fee`, `application_fee_detailed`, `email`, `conditions`, `feature_duration`, `model_name`, `manufacturer`, `dimension`, `language`, `venue`, `event_duration`, `event_start_date`, `event_end_date`, `is_payable`, `payment_status`) VALUES
(58, 'Job offered', 'job-offered', 9, 15, 10, 77, NULL, 2100.00, 'Good', NULL, 0, NULL, 'uploads/addss_image/1677070643_63f61133d7682.png', 'active', 0, 0, 0, 0, NULL, '2023-02-22 12:57:23', '2023-02-22 12:57:23', NULL, NULL, NULL, NULL, NULL, '1290', NULL, 'DE', NULL, NULL, NULL, 0, 0, NULL, 'serzia', NULL, 'job offered', 'full time', 'CL mail relay', NULL, NULL, NULL, 0, NULL, 0, 0, 'berlin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(59, 'Housing Offered', 'housing-offered', 9, 18, 9, 26, NULL, NULL, 'The city has hosted multiple international events, including the 1964 Summer Olympics and 1964 Summer Paralympics, the 2020 Summer Olympics and 2020 Summer Paralympics (postponed; held in 2021), and three summits of the G7 (in 1979, 1986, and 1993). Tokyo is an international research and development hub and is likewise represented by several major universities, most notably the University of Tokyo. Tokyo Station is the central hub for Japan\'s high-speed railway network, the Shinkansen; Shinjuku Station in Tokyo is also the world\'s busiest train station. Notable special wards of Tokyo include: Chiyoda, the site of the National Diet Building and the Tokyo Imperial Palace; Shinjuku, the city\'s administrative center; and Shibuya, a commercial, cultural, and business hub.', '256565263', 1, '32535265', 'uploads/addss_image/1677071496_63f6148819c46.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-22 13:11:36', '2023-02-22 13:11:36', NULL, NULL, NULL, NULL, NULL, '5230', NULL, 'JP', NULL, NULL, NULL, 0, 0, 'jimping', NULL, NULL, NULL, NULL, 'CL mail relay (recommended)', NULL, NULL, NULL, 0, NULL, 1, 0, 'tokyo', NULL, 1120, 'apartment', 'laundry in bldg', 'attached garage', '4', '2', '2023-02-08 00:00:00', 0, NULL, 0, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(60, 'JOB OFFERED', 'job-offered_60', 9, 15, 10, 64, NULL, 2200.00, 'Mumbai is the centre of the Mumbai Metropolitan Region, the sixth most populous metropolitan area in the world with a population of over 23 million (2.3 crore).', '25556', 1, '245656', 'uploads/addss_image/1677071941_63f61645130bf.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-22 13:19:01', '2023-02-22 13:19:01', NULL, NULL, NULL, NULL, NULL, '856', NULL, 'IN', NULL, NULL, NULL, 0, 0, 'sajeel', 'Heriozia sen', NULL, 'Medical officer', 'full time', 'CL mail relay', NULL, NULL, NULL, 0, NULL, 0, 0, 'mumbai', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(61, 'Job offered', 'job-offered_61', 9, 18, 9, 26, NULL, NULL, 'Mumbai is the centre of the Mumbai Metropolitan Region, the sixth most populous metropolitan area in the world with a population of over 23 million (2.3 crore).', NULL, 0, NULL, 'uploads/addss_image/1677072140_63f6170cd2f77.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-22 13:22:20', '2023-02-22 13:22:20', NULL, NULL, NULL, NULL, NULL, '2568', NULL, 'IN', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'CL mail relay (recommended)', NULL, NULL, NULL, 0, NULL, 1, 0, 'mumbai', '[\"cats ok\",\"dogs ok\"]', 1150, 'apartment', 'w/d hookups', 'detached garage', '5', '1.5', '2023-02-09 00:00:00', 0, NULL, 0, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(62, 'Job offered', 'job-offered_62', 9, 15, 10, 67, NULL, 2545.00, 'Tokyoi is the centre of the Mumbai Metropolitan Region, the sixth most populous metropolitan area in the world with a population of over 23 million (2.3 crore).', NULL, 0, NULL, 'uploads/addss_image/1677073156_63f61b04e771a.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-22 13:39:16', '2023-02-22 13:39:17', NULL, NULL, NULL, NULL, NULL, '859', NULL, 'JP', NULL, NULL, NULL, 0, 0, NULL, 'Hersin', NULL, 'job offered', 'full time', 'CL mail relay', NULL, NULL, NULL, 0, NULL, 0, 0, 'tokyo', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(63, 'Job offered', 'job-offered_63', 9, 15, 10, 77, NULL, 5500.00, '\"List of largest cities in the United States\" redirects here. For a list of largest cities by area, see List of United States cities by area.\r\nMap all coordinates using: OpenStreetMap \r\nDownload coordinates as: KML\r\nPopulation tables\r\nof U.S. cities\r\n\"New York City skyline\"\r\nCities\r\nPopulation\r\n\r\nAreaDensityEthnic identityForeign-bornIncomeSpanish speakersBy decade\r\nUrban areas\r\nPopulous cities and metropolitan areas\r\nMetropolitan areas\r\n563 primary statistical areas\r\n175 combined statistical areas\r\n939 core-based statistical areas\r\n392 metropolitan statistical areas\r\n547 micropolitan statistical areas\r\nMegaregions\r\nSee also\r\nNorth American metro areas\r\nWorld cities\r\nvte\r\nThis is a list of the most populous incorporated places of the United States. As defined by the United States Census Bureau, an incorporated place includes cities, towns, villages, boroughs, and municipalities.[a] A few exceptional census-designated places (CDPs) are also included in the Census Bureau\'s listing of incorporated places.[b] Consolidated city-counties represent a distinct type of government that includes the entire population of a county, or county equivalent. Some consolidated city-counties, however, include multiple incorporated places. This list presents only that portion (or \"balance\") of such consolidated city-counties that are not a part of another incorporated place.', NULL, 0, NULL, 'uploads/addss_image/1677073489_63f61c51ede2c.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-22 13:44:49', '2023-02-22 13:44:50', NULL, NULL, NULL, NULL, NULL, '856', NULL, 'US', NULL, NULL, NULL, 0, 0, NULL, 'Heriozia', NULL, 'job offered', 'full time', 'CL mail relay', NULL, NULL, NULL, 0, NULL, 0, 0, 'texas', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(64, 'Housing wanted', 'housing-wanted', 9, 19, 9, 28, NULL, NULL, 'This list refers only to the population of individual municipalities within their defined limits; the populations of other municipalities considered suburbs of a central city are listed separately, and unincorporated areas within urban agglomerations are not included. Therefore, a different ranking is evident when considering U.S. metropolitan areas.', NULL, 0, NULL, 'uploads/addss_image/1677073568_63f61ca0537fc.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-22 13:46:08', '2023-02-22 13:46:08', NULL, NULL, NULL, NULL, NULL, '789', NULL, 'US', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'CL mail relay (recommended)', NULL, NULL, NULL, 0, NULL, 1, 0, 'texas', '[\"cats ok\",\"dogs ok\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(65, 'Looking Good some Job', 'looking-good-some-job', 13, 15, 10, 77, NULL, 2580.00, 'Chicago (/ʃɪˈkɑːɡoʊ/ (listen) shih-KAH-goh, locally also /ʃɪˈkɔːɡoʊ/ shih-KAW-goh;[6] Miami-Illinois: Shikaakwa; Ojibwe: Zhigaagong) is the most populous city in the U.S. state of Illinois and the third most populous in the United States after New York City and Los Angeles. With a population of 2,746,388 in the 2020 census,[7] it is also the most populous city in the Midwest. As the seat of Cook County (the second-most populous U.S. county), the city is the center of the Chicago metropolitan area, one of the largest in the world.', NULL, 0, NULL, 'uploads/addss_image/1677129473_63f6f701c14ba.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 05:17:53', '2023-02-23 05:17:53', NULL, NULL, NULL, NULL, NULL, '1666', NULL, 'US', NULL, NULL, NULL, 0, 0, NULL, 'Walmart', NULL, 'job offered', 'full time', 'CL mail relay', NULL, NULL, NULL, 0, NULL, 0, 0, 'texas', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'walmart@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(66, 'LOCAL SERVICES', 'local-services', 12, 25, 8, 18, NULL, NULL, 'Los Angeles (US: / l ɔː s ˈ æ n dʒ ə l ə s / lawss AN-jə-ləs; Spanish: Los Ángeles; \"The Angels\"), officially the City of Los Angeles and often abbreviated as L.A., is the largest city in California.It has an estimated population of nearly 4 million, and is the second-largest city in the United States, after New York City, and the third-largest city in North America, after Mexico.', '1252525', 1, '255585255', 'uploads/addss_image/1677129803_63f6f84b54e0a.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 05:23:23', '2023-02-23 05:23:23', NULL, NULL, NULL, NULL, NULL, '1209', NULL, 'US', NULL, NULL, NULL, 0, 0, 'Sarwar Jahan', NULL, NULL, NULL, NULL, 'CL mail relay', NULL, NULL, NULL, 0, NULL, 1, 0, 'los-angeles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'nayeemsarwar1275@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(67, 'SALE BY OWNER', 'sale-by-owner', 14, 20, 12, 101, NULL, 600.00, 'San Diego is a city on the Pacific Ocean coast of Southern California located immediately adjacent to the Mexico–United States border. With a 2020 population of 1,386,932, it is the eighth most populous city in the United States and the seat of San Diego County, the fifth most populous county in the United State', '321163563', 1, '5646', 'uploads/addss_image/1677130198_63f6f9d6d7c0e.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 05:29:58', '2023-02-23 05:29:58', NULL, NULL, NULL, NULL, NULL, '2589', NULL, 'US', NULL, NULL, NULL, 0, 0, '354646', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 'san-diego', '[\"cats ok\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'nayeem@gmail.com', 'new', NULL, 'Asus BNWQ', 'Rangs Service', '25', 'english', NULL, ' days', NULL, NULL, NULL, NULL),
(68, 'HOUSING WANTED', 'housing-wanted_68', 15, 19, 9, 3, NULL, NULL, 'Boston , officially the City of Boston, is the state capital and most populous city of the Commonwealth of Massachusetts and the cultural and financial center of the New England region of the United States. It is the 24th-most populous city in the country. The city boundaries encompass an area of about 48.4 sq', NULL, 0, NULL, 'uploads/addss_image/1677130392_63f6fa9809e8e.png', 'active', 0, 0, 0, 0, NULL, '2023-02-23 05:33:12', '2023-02-23 05:33:12', NULL, NULL, NULL, NULL, NULL, '589', NULL, 'US', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'CL mail relay (recommended)', NULL, NULL, NULL, 0, NULL, 1, 0, 'boston', '[\"cats ok\",\"dogs ok\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 'akib@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(69, 'SERVICE OFFERED', 'service-offered', 16, 24, 11, 37, NULL, NULL, 'Philadelphia, often called Philly, is the largest city in the Commonwealth of Pennsylvania and the second largest city in both the Northeast megalopolis and Mid-Atlantic regions after New York City. It is one of the most historically significant cities in the United States, and once served as the nation\'s capital … S', NULL, 0, NULL, 'uploads/addss_image/1677130676_63f6fbb46f963.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 05:37:56', '2023-02-23 05:37:56', NULL, NULL, NULL, NULL, NULL, '8963', NULL, 'US', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'CL mail relay', NULL, NULL, NULL, 0, NULL, 1, 0, 'philadelphia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'saheb@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(70, 'JOB WANTED', 'job-wanted', 17, 17, 10, 50, NULL, NULL, 'San Jose, officially the City of San José , is a major city in the U.S. state of California that is the cultural, financial, and political center of Silicon Valley and largest city in Northern California by both population and area. With a 2020 population of 1,013,240, it is the most populous city in both the Bay Area and the San JOSE.', '35456465', 1, '341345356', 'uploads/addss_image/1677130956_63f6fccc3e87b.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 05:42:36', '2023-02-23 05:42:36', NULL, NULL, NULL, NULL, NULL, '8974', NULL, 'US', NULL, NULL, NULL, 0, 0, 'safi', NULL, NULL, NULL, NULL, 'CL mail relay', '[\"morning\"]', 'bachelors', NULL, 0, NULL, 1, 0, 'san-jose', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'safi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(71, 'Community Health Care', 'community-health-care', 18, 25, 8, 4, NULL, NULL, 'Houston is the most populous city in Texas and in the Southern United States. It is the fourth most populous city in the United States after Chicago, Los Angeles and New York City; the sixth most populous city in North America. With a population of 2,304,580 in 2020, Houston is located in Southeast Texas near', '354156465', 1, '65465', 'uploads/addss_image/1677131273_63f6fe0922339.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 05:47:53', '2023-02-23 05:47:53', NULL, NULL, NULL, NULL, NULL, '8596', NULL, 'US', NULL, NULL, NULL, 0, 0, 'Sahed', NULL, NULL, NULL, NULL, 'CL mail relay', NULL, NULL, NULL, 0, NULL, 1, 0, 'houston', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'sahed@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(72, 'Housing Offered', 'housing-offered_72', 19, 18, 9, 22, NULL, NULL, 'San Antonio , officially the City of San Antonio, is a city in Bexar County, Texas. The city is the seventh most populous in the United States, the second largest in the Southern United States, and the second most populous in Texas. It is the 12th most populous city in North America, with 1,434,625 residents as of', '5454555', 1, '5588525', 'uploads/addss_image/1677131538_63f6ff1218505.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 05:52:18', '2023-02-23 05:52:18', NULL, NULL, NULL, NULL, NULL, '8897', NULL, 'US', NULL, NULL, NULL, 0, 0, 'Daren', NULL, NULL, NULL, NULL, 'CL mail relay (recommended)', NULL, NULL, NULL, 0, NULL, 1, 0, 'san-antonio', '[\"cats ok\",\"dogs ok\",\"furnished\"]', 1120, 'apartment', 'laundry in bldg', 'detached garage', '2', '2', '2023-02-01 00:00:00', 0, NULL, 0, NULL, 'dare@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(73, 'For sale by owner', 'for-sale-by-owner', 20, 20, 12, 102, NULL, 256.00, 'Chicago is the most populous city in the U.S. state of Illinois and the third most populous in the United States after New York City and Los Angeles. With a population of 2,746,388 in the 2020 census, it is also the most populous city in the Midwest. As the seat of Cook County (the second-most populous', '25885552', 1, '258885', 'uploads/addss_image/1677131861_63f70055481e0.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 05:57:41', '2023-02-23 05:57:41', NULL, NULL, NULL, NULL, NULL, '896', NULL, 'US', NULL, NULL, NULL, 0, 0, 'sadek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 'chicago', '[\"cats ok\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'sadf@gmail.com', 'excellent', NULL, 'Asus BNWQ', 'Rangs Service', '25', 'english', NULL, ' days', NULL, NULL, NULL, NULL),
(74, 'Housing Offered', 'housing-offered_74', 21, 18, 9, 24, NULL, NULL, 'New York, often called New York City or NYC, is the most populous city in the United States. With a 2020 population of 8,804,190 distributed over 300.46 square miles (778.2 km ), New York City is the most densely populated major city in the United States and more than twice as populous as Los Angeles, the', '548685', 1, '546546', 'uploads/addss_image/1677132063_63f7011fe9c7f.png', 'active', 0, 0, 0, 0, NULL, '2023-02-23 06:01:03', '2023-02-23 06:01:04', NULL, NULL, NULL, NULL, NULL, '8596', NULL, 'US', NULL, NULL, NULL, 0, 0, '24545', NULL, NULL, NULL, NULL, 'CL mail relay (recommended)', NULL, NULL, NULL, 0, NULL, 1, 0, 'newyork', '[\"cats ok\",\"furnished\",\"no smoking\"]', 780, 'apartment', 'w/d hookups', 'detached garage', '5', '3', '2023-02-09 00:00:00', 0, NULL, 0, NULL, 'shihab@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(75, 'For sale', 'for-sale', 9, 20, 12, 104, NULL, 2500.00, 'This list comprises the largest companies in the United States by revenue as of 2022, according to the Fortune 500 tally of companies.\r\n\r\nThis list includes only publicly traded companies, also including tax inversion companies. There are also corporations having foundation in the United States, such as corporate headquarters, operational headquarters and independent subsidiaries. The list excludes large privately held companies such as Cargill and Koch Industries whose financial data is not necessarily available to the public. However, this list does include several government-sponsored enterprises that were created by acts of Congress and later became publicly traded.', '5415646', 1, '3232', 'uploads/addss_image/1677132751_63f703cf26614.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 06:12:31', '2023-02-23 06:12:31', NULL, NULL, NULL, NULL, NULL, '8596', NULL, 'US', NULL, NULL, NULL, 0, 0, 'khaja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 'los-angeles', '[\"cats ok\",\"delivery available\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'admin@gmail.com', 'good', NULL, 'SBK234', 'Rangs Service', '15', 'english', NULL, ' days', NULL, NULL, NULL, NULL),
(76, 'JOB OFFERED', 'job-offered_76', 9, 15, 10, 76, NULL, 2500.00, 'This list comprises the largest companies in the United States by revenue as of 2022, according to the Fortune 500 tally of companies.\r\n\r\nThis list includes only publicly traded companies, also including tax inversion companies. There are also corporations having foundation in the United States, such as corporate headquarters, operational headquarters and independent subsidiaries. The list excludes large privately held companies such as Cargill and Koch Industries whose financial data is not necessarily available to the public. However, this list does include several government-sponsored enterprises that were created by acts of Congress and later became publicly traded.', '125663', 1, '3453145', 'uploads/addss_image/1677133834_63f7080a5e051.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 06:30:34', '2023-02-23 06:30:34', NULL, NULL, NULL, NULL, NULL, '25686', NULL, 'US', NULL, NULL, NULL, 0, 0, 'AJAGAR', 'AMAZON', NULL, 'job offered', 'part time', 'CL mail relay', NULL, NULL, NULL, 0, NULL, 0, 0, 'los-angeles', '[null,null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(77, 'Hosing offered', 'hosing-offered', 9, 18, 9, 21, NULL, NULL, 'This list comprises the largest companies in the United States by revenue as of 2022, according to the Fortune 500 tally of companies.\r\n\r\nThis list includes only publicly traded companies, also including tax inversion companies. There are also corporations having foundation in the United States, such as corporate headquarters, operational headquarters and independent subsidiaries. The list excludes large privately held companies such as Cargill and Koch Industries whose financial data is not necessarily available to the public. However, this list does include several government-sponsored enterprises that were created by acts of Congress and later became publicly traded.', '255855', 1, '52588585', 'uploads/addss_image/1677133986_63f708a2b83cf.png', 'active', 0, 0, 0, 0, NULL, '2023-02-23 06:33:06', '2023-02-23 06:33:06', NULL, NULL, NULL, NULL, NULL, '897', NULL, 'US', NULL, NULL, NULL, 0, 0, 'akib', NULL, NULL, NULL, NULL, 'CL mail relay (recommended)', NULL, NULL, NULL, 0, NULL, 1, 0, 'newyork', '[\"cats ok\",\"dogs ok\",\"no smoking\"]', 1250, 'apartment', 'laundry in bldg', 'off-street parking', '3', '2', '2023-02-01 00:00:00', 0, NULL, 0, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(78, 'Community', 'community', 9, 25, 8, 15, NULL, NULL, 'This list comprises the largest companies in the United States by revenue as of 2022, according to the Fortune 500 tally of companies.\r\n\r\nThis list includes only publicly traded companies, also including tax inversion companies. There are also corporations having foundation in the United States, such as corporate headquarters, operational headquarters and independent subsidiaries. The list excludes large privately held companies such as Cargill and Koch Industries whose financial data is not necessarily available to the public. However, this list does include several government-sponsored enterprises that were created by acts of Congress and later became publicly traded.', '555855', 1, '785855', 'uploads/addss_image/1677134058_63f708ea1c29d.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 06:34:18', '2023-02-23 06:34:18', NULL, NULL, NULL, NULL, NULL, '789', NULL, 'US', NULL, NULL, NULL, 0, 0, 'AJEEN', NULL, NULL, NULL, NULL, 'CL mail relay', NULL, NULL, NULL, 0, NULL, 1, 0, 'chicago', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(79, 'SERVICE OFFERED', 'service-offered_79', 9, 24, 11, 35, NULL, NULL, 'This list comprises the largest companies in the United States by revenue as of 2022, according to the Fortune 500 tally of companies.\r\n\r\nThis list includes only publicly traded companies, also including tax inversion companies. There are also corporations having foundation in the United States, such as corporate headquarters, operational headquarters and independent subsidiaries. The list excludes large privately held companies such as Cargill and Koch Industries whose financial data is not necessarily available to the public. However, this list does include several government-sponsored enterprises that were created by acts of Congress and later became publicly traded.', NULL, 0, NULL, 'uploads/addss_image/1677134151_63f70947d64ff.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 06:35:51', '2023-02-23 06:35:51', NULL, NULL, NULL, NULL, NULL, '789', NULL, 'US', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'CL mail relay', NULL, NULL, NULL, 0, NULL, 1, 0, 'san-diego', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(80, 'Housing Offered', 'housing-offered_80', 9, 18, 9, 24, NULL, NULL, 'This list comprises the largest companies in the United States by revenue as of 2022, according to the Fortune 500 tally of companies.\r\n\r\nThis list includes only publicly traded companies, also including tax inversion companies. There are also corporations having foundation in the United States, such as corporate headquarters, operational headquarters and independent subsidiaries. The list excludes large privately held companies such as Cargill and Koch Industries whose financial data is not necessarily available to the public. However, this list does include several government-sponsored enterprises that were created by acts of Congress and later became publicly traded.', '58785585', 1, '8588555', 'uploads/addss_image/1677134290_63f709d2ec01c.png', 'active', 0, 0, 0, 0, NULL, '2023-02-23 06:38:10', '2023-02-23 06:38:11', NULL, NULL, NULL, NULL, NULL, '8987', NULL, 'US', NULL, NULL, NULL, 0, 0, 'Jahan', NULL, NULL, NULL, NULL, 'CL mail relay (recommended)', NULL, NULL, NULL, 0, NULL, 1, 0, 'boston', '[\"furnished\"]', 7898, 'apartment', 'w/d hookups', 'off-street parking', '2', '6.5', '2023-02-01 00:00:00', 0, NULL, 0, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(81, 'Community', 'community_81', 9, 25, 8, 8, NULL, NULL, 'This list comprises the largest companies in the United States by revenue as of 2022, according to the Fortune 500 tally of companies.\r\n\r\nThis list includes only publicly traded companies, also including tax inversion companies. There are also corporations having foundation in the United States, such as corporate headquarters, operational headquarters and independent subsidiaries. The list excludes large privately held companies such as Cargill and Koch Industries whose financial data is not necessarily available to the public. However, this list does include several government-sponsored enterprises that were created by acts of Congress and later became publicly traded.', '51514', 1, '5646645', 'uploads/addss_image/1677134456_63f70a78032ee.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 06:40:55', '2023-02-23 06:40:56', NULL, NULL, NULL, NULL, NULL, '897', NULL, 'US', NULL, NULL, NULL, 0, 0, '33125', NULL, NULL, NULL, NULL, 'CL mail relay', NULL, NULL, NULL, 0, NULL, 1, 0, 'philadelphia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(82, 'FOR SALE BY OWNER', 'for-sale-by-owner_82', 9, 20, 12, 104, NULL, 2560.00, 'This list comprises the largest companies in the United States by revenue as of 2022, according to the Fortune 500 tally of companies.\r\n\r\nThis list includes only publicly traded companies, also including tax inversion companies. There are also corporations having foundation in the United States, such as corporate headquarters, operational headquarters and independent subsidiaries. The list excludes large privately held companies such as Cargill and Koch Industries whose financial data is not necessarily available to the public. However, this list does include several government-sponsored enterprises that were created by acts of Congress and later became publicly traded.', '525454', 1, '555252', 'uploads/addss_image/1677134568_63f70ae8cf485.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 06:42:48', '2023-02-23 06:42:49', NULL, NULL, NULL, NULL, NULL, '897', NULL, 'US', NULL, NULL, NULL, 0, 1, '54552', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 1, 'san-jose', '[\"cats ok\",\"delivery available\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'admin@gmail.com', 'excellent', NULL, 'MB BUILDERS', 'Rangs Service', '4567', 'english', NULL, ' days', NULL, NULL, NULL, NULL),
(83, 'Housing Wanted', 'housing-wanted_83', 9, 19, 9, 3, NULL, NULL, 'This list comprises the largest companies in the United States by revenue as of 2022, according to the Fortune 500 tally of companies.\r\n\r\nThis list includes only publicly traded companies, also including tax inversion companies. There are also corporations having foundation in the United States, such as corporate headquarters, operational headquarters and independent subsidiaries. The list excludes large privately held companies such as Cargill and Koch Industries whose financial data is not necessarily available to the public. However, this list does include several government-sponsored enterprises that were created by acts of Congress and later became publicly traded.', '255855', 1, '5855225', 'uploads/addss_image/1677134711_63f70b778bc17.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 06:45:11', '2023-02-23 06:45:11', NULL, NULL, NULL, NULL, NULL, '7895', NULL, 'US', NULL, NULL, NULL, 0, 0, '85858', NULL, NULL, NULL, NULL, 'CL mail relay (recommended)', NULL, NULL, NULL, 0, NULL, 1, 0, 'san-antonio', '[\"cats ok\",\"dogs ok\",\"air conditioning\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(84, 'SALE BY OWNER', 'sale-by-owner_84', 9, 20, 12, 119, NULL, 2560.00, 'This list comprises the largest companies in the United States by revenue as of 2022, according to the Fortune 500 tally of companies.\r\n\r\nThis list includes only publicly traded companies, also including tax inversion companies. There are also corporations having foundation in the United States, such as corporate headquarters, operational headquarters and independent subsidiaries. The list excludes large privately held companies such as Cargill and Koch Industries whose financial data is not necessarily available to the public. However, this list does include several government-sponsored enterprises that were created by acts of Congress and later became publicly traded.', '85585', 1, '85858', 'uploads/addss_image/1677134888_63f70c285acae.png', 'active', 0, 0, 0, 0, NULL, '2023-02-23 06:48:08', '2023-02-23 06:48:08', NULL, NULL, NULL, NULL, NULL, '82301', NULL, 'US', NULL, NULL, NULL, 0, 0, 'FAHAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 'houston', '[\"cats ok\",\"delivery available\",\"include more ads by this user link\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'admin@gmail.com', 'like new', NULL, 'SBK234', 'Rangs Service', '898', 'english', NULL, ' days', NULL, NULL, NULL, NULL),
(85, 'HousingWanted', 'housingwanted', 9, 19, 9, 3, NULL, NULL, 'Manufacturing is the creation or production of goods with the help of equipment, labor, machines, tools, and chemical or biological processing or formulation. It is the essence of the secondary sector of the economy. The term may refer to a range of human activity, from handicraft to high-tech.', NULL, 0, NULL, 'uploads/addss_image/1677135561_63f70ec97b40c.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 06:59:21', '2023-02-23 06:59:21', NULL, NULL, NULL, NULL, NULL, '8963', NULL, 'US', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'CL mail relay (recommended)', NULL, NULL, NULL, 0, NULL, 1, 0, 'boston', '[\"cats ok\",\"dogs ok\",\"air conditioning\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(86, 'Wanted by Owner', 'wanted-by-owner', 9, 22, 12, 99, NULL, 2320.00, 'Manufacturing is the creation or production of goods with the help of equipment, labor, machines, tools, and chemical or biological processing or formulation. It is the essence of the secondary sector of the economy. The term may refer to a range of human activity, from handicraft to high-tech, but it is most', '2586', 1, '85898', 'uploads/addss_image/1677136684_63f7132c8d844.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 07:18:04', '2023-02-23 07:18:04', NULL, NULL, NULL, NULL, NULL, '896', NULL, 'US', NULL, NULL, NULL, 0, 0, 'Sajeeb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 0, 'boston', '[\"cryptocurrency ok\",\"cats ok\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'admin@gmail.com', 'new', NULL, NULL, NULL, '25', 'english', NULL, ' days', NULL, NULL, NULL, NULL),
(87, 'JOB OFFERED', 'job-offered_87', 9, 15, 10, 70, NULL, 5189.00, 'Manufacturing is the creation or production of goods with the help of equipment, labor, machines, tools, and chemical or biological processing or formulation. It is the essence of the secondary sector of the economy. The term may refer to a range of human activity, from handicraft to high-tech, but it is most', '5855525', 1, '55555', 'uploads/addss_image/1677136975_63f7144fe02b2.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 07:22:55', '2023-02-23 07:22:55', NULL, NULL, NULL, NULL, NULL, '789', NULL, 'US', NULL, NULL, NULL, 0, 0, 'sageb', 'Segmetic IT', NULL, 'job offered', 'contract', 'CL mail relay', NULL, NULL, NULL, 0, NULL, 0, 0, 'boston', '[null,null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(88, 'Housing Offered', 'housing-offered_88', 9, 18, 9, 24, NULL, NULL, 'Manufacturing is the creation or production of goods with the help of equipment, labor, machines, tools, and chemical or biological processing or formulation. It is the essence of the secondary sector of the economy. The term may refer to a range of human activity, from handicraft to high-tech, but it is most', '5858555', 1, '85588', 'uploads/addss_image/1677139301_63f71d6569454.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 08:01:41', '2023-02-23 08:01:41', NULL, NULL, NULL, NULL, NULL, '8965', NULL, 'US', NULL, NULL, NULL, 0, 0, 'NAZIB', NULL, NULL, NULL, NULL, 'CL mail relay (recommended)', NULL, NULL, NULL, 0, NULL, 1, 0, 'boston', '[\"cats ok\",\"dogs ok\"]', 2250, 'apartment', 'laundry on site', 'street parking', '3', '2', '2023-02-07 00:00:00', 0, NULL, 0, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(89, 'HOUSING WANTED', 'housing-wanted_89', 9, 19, 9, 27, NULL, NULL, 'Manufacturing is the creation or production of goods with the help of equipment, labor, machines, tools, and chemical or biological processing or formulation. It is the essence of the secondary sector of the economy. The term may refer to a range of human activity, from handicraft to high-tech, but it is most', '552522', 1, '5888555', 'uploads/addss_image/1677139468_63f71e0c1b695.png', 'active', 0, 0, 0, 0, NULL, '2023-02-23 08:04:28', '2023-02-23 08:04:28', NULL, NULL, NULL, NULL, NULL, '789', NULL, 'US', NULL, NULL, NULL, 0, 0, 'AKIN', NULL, NULL, NULL, NULL, 'CL mail relay (recommended)', NULL, NULL, NULL, 0, NULL, 1, 0, 'houston', '[\"cats ok\",\"dogs ok\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(90, 'Community', 'community_90', 9, 25, 8, 9, NULL, NULL, 'New York, often called New York City[a] or NYC, is the most populous city in the United States. With a 2020 population of 8,804,190 distributed over 300.46 square miles (778.2 km2), New York City is the most densely populated major city in the United States and more than twice as populous as Los Angeles, the nation\'s second largest city. New York City is located at the southern tip of New York State. It constitutes the geographical and demographic center of both the Northeast megalopolis and the New York metropolitan area, the largest metropolitan area in the U.S. by both population and urban landmass.', '85899', 1, '8598', 'uploads/addss_image/1677140690_63f722d2edbfd.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 08:24:50', '2023-02-23 08:24:51', NULL, NULL, NULL, NULL, NULL, '8975', NULL, 'US', NULL, NULL, NULL, 0, 0, 'SAKIB', NULL, NULL, NULL, NULL, 'CL mail relay', NULL, NULL, NULL, 0, NULL, 1, 0, 'newyork', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(91, 'JOB OFFERED', 'job-offered_91', 9, 15, 10, 73, NULL, 25688.00, 'Chicago, often called New York City[a] or NYC, is the most populous city in the United States. With a 2020 population of 8,804,190 distributed over 300.46 square miles (778.2 km2), New York City is the most densely populated major city in the United States and more than twice as populous as Los Angeles, the nation\'s second largest city. New York City is located at the southern tip of New York State. It constitutes the geographical and demographic center of both the Northeast megalopolis and the New York metropolitan area, the largest metropolitan area in the U.S. by both population and urban landmass.', '5855545', 1, '58855', 'uploads/addss_image/1677142447_63f729af64dcb.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 08:54:07', '2023-02-23 08:54:07', NULL, NULL, NULL, NULL, NULL, '8967', NULL, 'US', NULL, NULL, NULL, 0, 0, 'safir', 'UNITED SOFTWARE SOLUTIONS', NULL, 'job offered', 'full time', 'CL mail relay', NULL, NULL, NULL, 0, NULL, 0, 0, 'chicago', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(92, 'JOB OFFERED', 'job-offered_92', 9, 15, 10, 74, NULL, 2569.00, 'philadelphia, often called New York City[a] or NYC, is the most populous city in the United States. With a 2020 population of 8,804,190 distributed over 300.46 square miles (778.2 km2), New York City is the most densely populated major city in the United States and more than twice as populous as Los Angeles, the nation\'s second largest city. New York City is located at the southern tip of New York State. It constitutes the geographical and demographic center of both the Northeast megalopolis and the New York metropolitan area, the largest metropolitan area in the U.S. by both population and urban landmass.', NULL, 0, NULL, 'uploads/addss_image/1677143007_63f72bdf3370e.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-23 09:03:27', '2023-02-23 09:03:27', NULL, NULL, NULL, NULL, NULL, '7456', NULL, 'US', NULL, NULL, NULL, 0, 0, NULL, 'Walmart', NULL, 'job offered', 'contract', 'CL mail relay', NULL, NULL, NULL, 0, NULL, 0, 0, 'chicago', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'walmart@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(96, '4w3 afds', '4w3-afds', 6, 15, 10, 78, NULL, 343434.00, 'fdsf', NULL, 0, NULL, 'uploads/addss_image/1677334893_63fa196dd9a9c.jpg', 'active', 0, 0, 0, 0, NULL, '2023-02-25 14:21:33', '2023-02-25 14:21:33', NULL, NULL, NULL, NULL, NULL, '342323', NULL, 'BD', NULL, NULL, NULL, 0, 0, NULL, 'fdsfdsf', NULL, 'f3434', 'full time', 'show my real email address', NULL, NULL, NULL, 0, NULL, 0, 0, 'dhaka', '[null,null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'arobil@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(97, 'drgadfv', 'drgadfv', 7, 15, 10, 79, NULL, NULL, 'asdfasdfasf', NULL, 0, NULL, NULL, 'active', 0, 0, 0, 0, NULL, '2023-02-28 08:24:23', '2023-02-28 08:24:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DZ', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'asfdas', 'contract', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'moshiur2187@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(98, 'This is the best title', 'this-is-the-best-title', 7, 15, 10, 79, NULL, NULL, 'This is the best title', NULL, 0, NULL, NULL, 'active', 0, 0, 0, 0, NULL, '2023-02-28 23:42:14', '2023-02-28 23:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DZ', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'Web Developer', 'part time', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'moshiur2187@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(99, 'This is the best test', 'this-is-the-best-test', 7, 15, 10, 78, NULL, NULL, 'asdfasd', NULL, 0, NULL, NULL, 'active', 0, 0, 0, 0, NULL, '2023-02-28 23:50:41', '2023-02-28 23:50:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DZ', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'Web Developer', 'part time', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'moshiur2187@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(100, 'This is the best tilet', 'this-is-the-best-tilet', 7, 15, 10, 79, NULL, NULL, 'asdfsda', NULL, 0, NULL, NULL, 'active', 0, 0, 0, 0, NULL, '2023-03-01 00:04:37', '2023-03-01 00:04:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DZ', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'Web Developer', 'part time', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'moshiur2187@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(101, 'This is the title first', 'this-is-the-title-first', 7, 15, 10, 79, NULL, NULL, 'This is the title first', NULL, 0, NULL, NULL, 'active', 1, 0, 0, 0, NULL, '2023-03-01 00:48:06', '2023-03-01 00:48:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DZ', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'Web Developer', 'full time', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'moshiur2187@gmail.com', NULL, '2023-04-13 00:48:32', NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(102, 'Lorem Ipsum is simply dummy text of the', 'lorem-ipsum-is-simply-dummy-text-of-the', 7, 15, 10, 79, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', NULL, 0, NULL, 'uploads/addss_image/1677660287_63ff107f50a33.jpg', 'active', 1, 0, 0, 0, NULL, '2023-03-01 02:44:46', '2023-03-01 02:45:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DZ', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'Web Developer', 'part time', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'moshiur2187@gmail.com', NULL, '2023-02-16 09:24:25', NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(103, 'This is the best test', 'this-is-the-best-test_103', 7, 15, 10, 79, NULL, NULL, 'This is the best test', NULL, 0, NULL, NULL, 'active', 1, 0, 0, 0, NULL, '2023-03-01 04:38:44', '2023-03-01 04:39:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DZ', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'Web Developer', 'full time', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'moshiur2187@gmail.com', NULL, '2023-03-31 04:39:18', NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(104, 'This is the best Title', 'this-is-the-best-title_104', 7, 15, 10, 79, NULL, NULL, 'This is the best title Here in this tutorials', NULL, 0, NULL, NULL, 'active', 1, 0, 0, 0, NULL, '2023-03-01 04:43:29', '2023-03-01 04:43:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DZ', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'Web Developer', 'part time', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'moshiur2187@gmail.com', NULL, '2023-03-31 04:43:57', NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(105, 'This is the best title', 'this-is-the-best-title_105', 7, 15, 10, 79, NULL, NULL, 'Hello There', NULL, 0, NULL, NULL, 'active', 1, 0, 0, 0, NULL, '2023-03-01 04:50:12', '2023-03-01 04:50:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DZ', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'Web Developer', 'full time', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'moshiur2187@gmail.com', NULL, '2023-03-31 04:50:38', NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(106, 'Hello There This is the best test', 'hello-there-this-is-the-best-test', 7, 15, 10, 79, NULL, NULL, 'Hello There This is the best test', NULL, 0, NULL, NULL, 'active', 1, 0, 0, 0, NULL, '2023-03-01 04:52:41', '2023-03-01 04:56:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DZ', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'Web Developer', 'full time', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'moshiur2187@gmail.com', NULL, '2023-03-31 04:56:17', NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(107, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'lorem-ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry', 7, 15, 10, 79, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 0, NULL, NULL, 'active', 1, 0, 0, 0, NULL, '2023-03-01 05:03:36', '2023-03-01 05:04:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DZ', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'Web Developer', 'part time', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'moshiur2187@gmail.com', NULL, '2023-03-31 05:04:01', NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(108, 'Thisi si the title', 'thisi-si-the-title', 7, 15, 10, 79, NULL, NULL, 'Thisis si the testt', NULL, 0, NULL, 'uploads/addss_image/1677671615_63ff3cbf6c324.jpg', 'active', 1, 0, 0, 0, NULL, '2023-03-01 05:53:35', '2023-03-01 05:54:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DZ', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'Web Developer', 'part time', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'moshiur2187@gmail.com', NULL, '2023-03-31 05:54:07', NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(109, 'Thisi is the best title', 'thisi-is-the-best-title', 7, 15, 10, 79, NULL, NULL, 'asdfasdfadsf', NULL, 0, NULL, 'uploads/addss_image/1677672788_63ff4154d302b.jpg', 'active', 1, 0, 0, 0, NULL, '2023-03-01 06:13:08', '2023-03-01 06:13:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DZ', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'Web Developer', 'contract', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'moshiur2187@gmail.com', NULL, '2023-03-31 06:13:41', NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(110, 'This is the best title', 'this-is-the-best-title_110', 7, 15, 10, 79, NULL, NULL, 'This is the best title', NULL, 0, NULL, 'uploads/addss_image/1677673189_63ff42e543523.jpg', 'active', 1, 0, 0, 0, NULL, '2023-03-01 06:19:49', '2023-03-01 06:20:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DZ', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'Web Developer', 'part time', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'moshiur2187@gmail.com', NULL, '2023-03-31 06:20:17', NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL),
(111, 'asgsdfg', 'asgsdfg', 7, 15, 10, 79, NULL, 120.00, 'sdgfsdfgdfs', NULL, 0, NULL, NULL, 'active', 1, 0, 0, 0, NULL, '2023-03-01 06:25:06', '2023-03-01 06:25:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DZ', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'Web Developer', 'contract', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 'moshiur2187@gmail.com', NULL, '2023-03-31 06:25:30', NULL, NULL, NULL, NULL, NULL, ' days', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ad_features`
--

CREATE TABLE `ad_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ad_galleries`
--

CREATE TABLE `ad_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_galleries`
--

INSERT INTO `ad_galleries` (`id`, `ad_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'uploads/adds_multiple/1676525938_63edc172d3179.jpg', '2023-02-15 23:38:59', '2023-02-15 23:38:59'),
(2, 2, 'uploads/adds_multiple/1676525939_63edc17311d8d.png', '2023-02-15 23:38:59', '2023-02-15 23:38:59'),
(3, 3, 'uploads/adds_multiple/1676529725_63edd03d1173e.jpg', '2023-02-16 00:42:05', '2023-02-16 00:42:05'),
(4, 3, 'uploads/adds_multiple/1676529725_63edd03d506e0.png', '2023-02-16 00:42:05', '2023-02-16 00:42:05'),
(5, 7, 'uploads/adds_multiple/1676552705_63ee2a0157d50.jpg', '2023-02-16 07:05:05', '2023-02-16 07:05:05'),
(6, 7, 'uploads/adds_multiple/1676552705_63ee2a018be3c.png', '2023-02-16 07:05:05', '2023-02-16 07:05:05'),
(7, 8, 'uploads/adds_multiple/1676552813_63ee2a6dd7102.jpg', '2023-02-16 07:06:54', '2023-02-16 07:06:54'),
(8, 8, 'uploads/adds_multiple/1676552814_63ee2a6e15df6.png', '2023-02-16 07:06:54', '2023-02-16 07:06:54'),
(9, 9, 'uploads/adds_multiple/1676552832_63ee2a80ca71b.jpg', '2023-02-16 07:07:13', '2023-02-16 07:07:13'),
(10, 9, 'uploads/adds_multiple/1676552833_63ee2a810aae7.png', '2023-02-16 07:07:13', '2023-02-16 07:07:13'),
(11, 10, 'uploads/adds_multiple/1676554400_63ee30a0d98ba.jpg', '2023-02-16 07:33:21', '2023-02-16 07:33:21'),
(12, 10, 'uploads/adds_multiple/1676554401_63ee30a118baa.png', '2023-02-16 07:33:21', '2023-02-16 07:33:21'),
(13, 11, 'uploads/adds_multiple/1676699376_63f066f00ca07.jpg', '2023-02-17 23:49:36', '2023-02-17 23:49:36'),
(14, 11, 'uploads/adds_multiple/1676699376_63f066f0410d3.png', '2023-02-17 23:49:36', '2023-02-17 23:49:36'),
(15, 12, 'uploads/adds_multiple/1676699420_63f0671c3e724.jpg', '2023-02-17 23:50:20', '2023-02-17 23:50:20'),
(16, 12, 'uploads/adds_multiple/1676699420_63f0671c784f9.png', '2023-02-17 23:50:20', '2023-02-17 23:50:20'),
(17, 13, 'uploads/adds_multiple/1676702099_63f071933493b.jpg', '2023-02-18 00:34:59', '2023-02-18 00:34:59'),
(18, 13, 'uploads/adds_multiple/1676702099_63f0719368aa9.png', '2023-02-18 00:34:59', '2023-02-18 00:34:59'),
(19, 14, 'uploads/adds_multiple/1676711798_63f0977698646.jpg', '2023-02-18 03:16:39', '2023-02-18 03:16:39'),
(20, 14, 'uploads/adds_multiple/1676711799_63f0977706cfb.jpg', '2023-02-18 03:16:39', '2023-02-18 03:16:39'),
(21, 15, 'uploads/adds_multiple/1676790158_63f1c98e1b857.jpg', '2023-02-19 01:02:38', '2023-02-19 01:02:38'),
(22, 15, 'uploads/adds_multiple/1676790158_63f1c98e30f3a.jpg', '2023-02-19 01:02:38', '2023-02-19 01:02:38'),
(23, 15, 'uploads/adds_multiple/1676790158_63f1c98e44ada.jpg', '2023-02-19 01:02:38', '2023-02-19 01:02:38'),
(24, 15, 'uploads/adds_multiple/1676790158_63f1c98e57fd4.jpg', '2023-02-19 01:02:38', '2023-02-19 01:02:38'),
(25, 16, 'uploads/adds_multiple/1676790411_63f1ca8bdf5e3.jpg', '2023-02-19 01:06:51', '2023-02-19 01:06:51'),
(26, 16, 'uploads/adds_multiple/1676790411_63f1ca8bf4008.jpg', '2023-02-19 01:06:52', '2023-02-19 01:06:52'),
(27, 16, 'uploads/adds_multiple/1676790412_63f1ca8c421e2.png', '2023-02-19 01:06:52', '2023-02-19 01:06:52'),
(28, 16, 'uploads/adds_multiple/1676790412_63f1ca8c567f5.jpg', '2023-02-19 01:06:52', '2023-02-19 01:06:52'),
(29, 16, 'uploads/adds_multiple/1676790412_63f1ca8c694cd.jpg', '2023-02-19 01:06:52', '2023-02-19 01:06:52'),
(30, 16, 'uploads/adds_multiple/1676790412_63f1ca8c9c36a.jpg', '2023-02-19 01:06:52', '2023-02-19 01:06:52'),
(31, 16, 'uploads/adds_multiple/1676790412_63f1ca8cd8ddc.jpg', '2023-02-19 01:06:52', '2023-02-19 01:06:52'),
(32, 16, 'uploads/adds_multiple/1676790412_63f1ca8ce9b11.jpg', '2023-02-19 01:06:53', '2023-02-19 01:06:53'),
(33, 16, 'uploads/adds_multiple/1676790413_63f1ca8d318ad.jpg', '2023-02-19 01:06:53', '2023-02-19 01:06:53'),
(34, 17, 'uploads/adds_multiple/1676790534_63f1cb06392b1.jpg', '2023-02-19 01:08:54', '2023-02-19 01:08:54'),
(35, 17, 'uploads/adds_multiple/1676790534_63f1cb06465e7.jpg', '2023-02-19 01:08:54', '2023-02-19 01:08:54'),
(36, 17, 'uploads/adds_multiple/1676790534_63f1cb06525bd.jpg', '2023-02-19 01:08:54', '2023-02-19 01:08:54'),
(37, 17, 'uploads/adds_multiple/1676790534_63f1cb065e839.jpg', '2023-02-19 01:08:54', '2023-02-19 01:08:54'),
(38, 17, 'uploads/adds_multiple/1676790534_63f1cb0669bf8.jpg', '2023-02-19 01:08:54', '2023-02-19 01:08:54'),
(39, 17, 'uploads/adds_multiple/1676790534_63f1cb06761e1.jpg', '2023-02-19 01:08:54', '2023-02-19 01:08:54'),
(40, 17, 'uploads/adds_multiple/1676790534_63f1cb0681430.jpg', '2023-02-19 01:08:54', '2023-02-19 01:08:54'),
(41, 18, 'uploads/adds_multiple/1676790781_63f1cbfde7148.jpg', '2023-02-19 01:13:02', '2023-02-19 01:13:02'),
(42, 18, 'uploads/adds_multiple/1676790782_63f1cbfe1a251.jpg', '2023-02-19 01:13:02', '2023-02-19 01:13:02'),
(43, 18, 'uploads/adds_multiple/1676790782_63f1cbfe506dd.png', '2023-02-19 01:13:02', '2023-02-19 01:13:02'),
(44, 18, 'uploads/adds_multiple/1676790782_63f1cbfe69c2e.jpg', '2023-02-19 01:13:02', '2023-02-19 01:13:02'),
(45, 18, 'uploads/adds_multiple/1676790782_63f1cbfeac3c4.jpg', '2023-02-19 01:13:02', '2023-02-19 01:13:02'),
(46, 18, 'uploads/adds_multiple/1676790782_63f1cbfeed209.png', '2023-02-19 01:13:03', '2023-02-19 01:13:03'),
(47, 19, 'uploads/adds_multiple/1676790857_63f1cc49a37c5.jpg', '2023-02-19 01:14:17', '2023-02-19 01:14:17'),
(48, 19, 'uploads/adds_multiple/1676790857_63f1cc49b8a3f.jpg', '2023-02-19 01:14:17', '2023-02-19 01:14:17'),
(49, 19, 'uploads/adds_multiple/1676790857_63f1cc49caefc.jpg', '2023-02-19 01:14:17', '2023-02-19 01:14:17'),
(50, 19, 'uploads/adds_multiple/1676790857_63f1cc49df3fe.jpg', '2023-02-19 01:14:17', '2023-02-19 01:14:17'),
(51, 19, 'uploads/adds_multiple/1676790857_63f1cc49f1bfd.jpg', '2023-02-19 01:14:18', '2023-02-19 01:14:18'),
(52, 19, 'uploads/adds_multiple/1676790858_63f1cc4a111b3.jpg', '2023-02-19 01:14:18', '2023-02-19 01:14:18'),
(53, 20, 'uploads/adds_multiple/1676791109_63f1cd458b86c.jpg', '2023-02-19 01:18:29', '2023-02-19 01:18:29'),
(54, 20, 'uploads/adds_multiple/1676791109_63f1cd4599d11.jpg', '2023-02-19 01:18:29', '2023-02-19 01:18:29'),
(55, 20, 'uploads/adds_multiple/1676791109_63f1cd45a5b76.jpg', '2023-02-19 01:18:29', '2023-02-19 01:18:29'),
(56, 20, 'uploads/adds_multiple/1676791109_63f1cd45b77d7.jpg', '2023-02-19 01:18:29', '2023-02-19 01:18:29'),
(57, 20, 'uploads/adds_multiple/1676791109_63f1cd45c5954.jpg', '2023-02-19 01:18:29', '2023-02-19 01:18:29'),
(58, 20, 'uploads/adds_multiple/1676791109_63f1cd45d0e97.jpg', '2023-02-19 01:18:29', '2023-02-19 01:18:29'),
(59, 20, 'uploads/adds_multiple/1676791109_63f1cd45dd52c.jpg', '2023-02-19 01:18:30', '2023-02-19 01:18:30'),
(60, 21, 'uploads/adds_multiple/1676791370_63f1ce4a9424f.jpg', '2023-02-19 01:22:50', '2023-02-19 01:22:50'),
(61, 21, 'uploads/adds_multiple/1676791370_63f1ce4ad543b.jpg', '2023-02-19 01:22:50', '2023-02-19 01:22:50'),
(62, 21, 'uploads/adds_multiple/1676791370_63f1ce4aea7ac.jpg', '2023-02-19 01:22:51', '2023-02-19 01:22:51'),
(63, 21, 'uploads/adds_multiple/1676791371_63f1ce4b394d5.jpg', '2023-02-19 01:22:51', '2023-02-19 01:22:51'),
(64, 21, 'uploads/adds_multiple/1676791371_63f1ce4b91e3e.jpg', '2023-02-19 01:22:51', '2023-02-19 01:22:51'),
(65, 21, 'uploads/adds_multiple/1676791371_63f1ce4ba53d0.jpg', '2023-02-19 01:22:51', '2023-02-19 01:22:51'),
(66, 22, 'uploads/adds_multiple/1676791472_63f1ceb0989e6.jpg', '2023-02-19 01:24:32', '2023-02-19 01:24:32'),
(67, 22, 'uploads/adds_multiple/1676791472_63f1ceb0a6629.jpg', '2023-02-19 01:24:32', '2023-02-19 01:24:32'),
(68, 22, 'uploads/adds_multiple/1676791472_63f1ceb0b457e.jpg', '2023-02-19 01:24:32', '2023-02-19 01:24:32'),
(69, 22, 'uploads/adds_multiple/1676791472_63f1ceb0c29bc.jpg', '2023-02-19 01:24:32', '2023-02-19 01:24:32'),
(70, 22, 'uploads/adds_multiple/1676791472_63f1ceb0d3999.jpg', '2023-02-19 01:24:32', '2023-02-19 01:24:32'),
(71, 22, 'uploads/adds_multiple/1676791472_63f1ceb0dfc94.jpg', '2023-02-19 01:24:32', '2023-02-19 01:24:32'),
(72, 22, 'uploads/adds_multiple/1676791472_63f1ceb0eabef.jpg', '2023-02-19 01:24:33', '2023-02-19 01:24:33'),
(81, 24, 'uploads/adds_multiple/1676810431_63f218bfbada5.jpg', '2023-02-19 06:40:31', '2023-02-19 06:40:31'),
(82, 24, 'uploads/adds_multiple/1676810431_63f218bfcf41e.jpg', '2023-02-19 06:40:32', '2023-02-19 06:40:32'),
(83, 24, 'uploads/adds_multiple/1676810432_63f218c025aea.png', '2023-02-19 06:40:32', '2023-02-19 06:40:32'),
(84, 24, 'uploads/adds_multiple/1676810432_63f218c03d730.png', '2023-02-19 06:40:32', '2023-02-19 06:40:32'),
(85, 24, 'uploads/adds_multiple/1676810432_63f218c058464.jpg', '2023-02-19 06:40:32', '2023-02-19 06:40:32'),
(86, 24, 'uploads/adds_multiple/1676810432_63f218c07a083.jpg', '2023-02-19 06:40:32', '2023-02-19 06:40:32'),
(87, 25, 'uploads/adds_multiple/1676810520_63f2191831120.jpg', '2023-02-19 06:42:00', '2023-02-19 06:42:00'),
(88, 25, 'uploads/adds_multiple/1676810520_63f2191842efc.jpg', '2023-02-19 06:42:00', '2023-02-19 06:42:00'),
(89, 25, 'uploads/adds_multiple/1676810520_63f219185715e.jpg', '2023-02-19 06:42:00', '2023-02-19 06:42:00'),
(90, 25, 'uploads/adds_multiple/1676810520_63f219186c000.jpg', '2023-02-19 06:42:00', '2023-02-19 06:42:00'),
(91, 25, 'uploads/adds_multiple/1676810520_63f219187be4b.jpg', '2023-02-19 06:42:00', '2023-02-19 06:42:00'),
(92, 25, 'uploads/adds_multiple/1676810520_63f21918889cb.jpg', '2023-02-19 06:42:00', '2023-02-19 06:42:00'),
(93, 25, 'uploads/adds_multiple/1676810520_63f2191894cf5.jpg', '2023-02-19 06:42:01', '2023-02-19 06:42:01'),
(94, 26, 'uploads/adds_multiple/1676810644_63f21994857d8.jpg', '2023-02-19 06:44:04', '2023-02-19 06:44:04'),
(95, 26, 'uploads/adds_multiple/1676810644_63f2199496f48.jpg', '2023-02-19 06:44:04', '2023-02-19 06:44:04'),
(96, 26, 'uploads/adds_multiple/1676810644_63f21994b7fbb.jpg', '2023-02-19 06:44:04', '2023-02-19 06:44:04'),
(97, 26, 'uploads/adds_multiple/1676810644_63f21994d1101.jpg', '2023-02-19 06:44:04', '2023-02-19 06:44:04'),
(98, 26, 'uploads/adds_multiple/1676810644_63f21994dfb4a.jpg', '2023-02-19 06:44:05', '2023-02-19 06:44:05'),
(99, 27, 'uploads/adds_multiple/1676810812_63f21a3c4af92.jpg', '2023-02-19 06:46:52', '2023-02-19 06:46:52'),
(100, 27, 'uploads/adds_multiple/1676810812_63f21a3c5b43b.jpg', '2023-02-19 06:46:52', '2023-02-19 06:46:52'),
(101, 27, 'uploads/adds_multiple/1676810812_63f21a3c6ecc4.jpg', '2023-02-19 06:46:52', '2023-02-19 06:46:52'),
(102, 27, 'uploads/adds_multiple/1676810812_63f21a3c7e4bd.jpg', '2023-02-19 06:46:53', '2023-02-19 06:46:53'),
(103, 28, 'uploads/adds_multiple/1676810903_63f21a97d9ff2.jpg', '2023-02-19 06:48:23', '2023-02-19 06:48:23'),
(104, 28, 'uploads/adds_multiple/1676810903_63f21a97ee280.jpg', '2023-02-19 06:48:24', '2023-02-19 06:48:24'),
(105, 28, 'uploads/adds_multiple/1676810904_63f21a980fefe.jpg', '2023-02-19 06:48:24', '2023-02-19 06:48:24'),
(106, 28, 'uploads/adds_multiple/1676810904_63f21a9820c51.jpg', '2023-02-19 06:48:24', '2023-02-19 06:48:24'),
(107, 28, 'uploads/adds_multiple/1676810904_63f21a9830d82.jpg', '2023-02-19 06:48:25', '2023-02-19 06:48:25'),
(108, 29, 'uploads/adds_multiple/1676811070_63f21b3e4a200.jpg', '2023-02-19 06:51:10', '2023-02-19 06:51:10'),
(109, 29, 'uploads/adds_multiple/1676811070_63f21b3e61602.png', '2023-02-19 06:51:10', '2023-02-19 06:51:10'),
(110, 29, 'uploads/adds_multiple/1676811070_63f21b3e7b00e.jpg', '2023-02-19 06:51:10', '2023-02-19 06:51:10'),
(111, 29, 'uploads/adds_multiple/1676811070_63f21b3e91f0a.jpg', '2023-02-19 06:51:10', '2023-02-19 06:51:10'),
(112, 30, 'uploads/adds_multiple/1676811173_63f21ba5b4140.jpg', '2023-02-19 06:52:54', '2023-02-19 06:52:54'),
(113, 30, 'uploads/adds_multiple/1676811174_63f21ba649640.png', '2023-02-19 06:52:54', '2023-02-19 06:52:54'),
(114, 30, 'uploads/adds_multiple/1676811174_63f21ba698ae8.png', '2023-02-19 06:52:54', '2023-02-19 06:52:54'),
(115, 30, 'uploads/adds_multiple/1676811174_63f21ba6c5cfb.png', '2023-02-19 06:52:54', '2023-02-19 06:52:54'),
(116, 30, 'uploads/adds_multiple/1676811174_63f21ba6e3387.png', '2023-02-19 06:52:54', '2023-02-19 06:52:54'),
(117, 30, 'uploads/adds_multiple/1676811175_63f21ba70397a.png', '2023-02-19 06:52:55', '2023-02-19 06:52:55'),
(118, 30, 'uploads/adds_multiple/1676811175_63f21ba71bcdb.jpg', '2023-02-19 06:52:55', '2023-02-19 06:52:55'),
(119, 30, 'uploads/adds_multiple/1676811175_63f21ba734a67.jpg', '2023-02-19 06:52:55', '2023-02-19 06:52:55'),
(120, 31, 'uploads/adds_multiple/1676811697_63f21db1510e8.jpg', '2023-02-19 07:01:37', '2023-02-19 07:01:37'),
(121, 31, 'uploads/adds_multiple/1676811697_63f21db162bd2.jpg', '2023-02-19 07:01:37', '2023-02-19 07:01:37'),
(122, 31, 'uploads/adds_multiple/1676811697_63f21db16fedf.jpg', '2023-02-19 07:01:37', '2023-02-19 07:01:37'),
(123, 31, 'uploads/adds_multiple/1676811697_63f21db17d255.jpg', '2023-02-19 07:01:37', '2023-02-19 07:01:37'),
(124, 31, 'uploads/adds_multiple/1676811697_63f21db18a0e6.jpg', '2023-02-19 07:01:37', '2023-02-19 07:01:37'),
(125, 31, 'uploads/adds_multiple/1676811697_63f21db19780b.jpg', '2023-02-19 07:01:37', '2023-02-19 07:01:37'),
(126, 31, 'uploads/adds_multiple/1676811697_63f21db1a2e01.jpg', '2023-02-19 07:01:38', '2023-02-19 07:01:38'),
(127, 32, 'uploads/adds_multiple/1676811834_63f21e3a9a7fc.jpg', '2023-02-19 07:03:54', '2023-02-19 07:03:54'),
(128, 32, 'uploads/adds_multiple/1676811834_63f21e3aac628.jpg', '2023-02-19 07:03:54', '2023-02-19 07:03:54'),
(129, 32, 'uploads/adds_multiple/1676811834_63f21e3aba75d.jpg', '2023-02-19 07:03:54', '2023-02-19 07:03:54'),
(130, 32, 'uploads/adds_multiple/1676811834_63f21e3ac8c2c.jpg', '2023-02-19 07:03:55', '2023-02-19 07:03:55'),
(131, 33, 'uploads/adds_multiple/1676812011_63f21eebcbd9d.jpg', '2023-02-19 07:06:51', '2023-02-19 07:06:51'),
(132, 33, 'uploads/adds_multiple/1676812011_63f21eebe6382.jpg', '2023-02-19 07:06:52', '2023-02-19 07:06:52'),
(133, 33, 'uploads/adds_multiple/1676812012_63f21eec0f732.jpg', '2023-02-19 07:06:52', '2023-02-19 07:06:52'),
(134, 33, 'uploads/adds_multiple/1676812012_63f21eec28c3d.jpg', '2023-02-19 07:06:52', '2023-02-19 07:06:52'),
(135, 34, 'uploads/adds_multiple/1676812249_63f21fd970f57.png', '2023-02-19 07:10:49', '2023-02-19 07:10:49'),
(136, 34, 'uploads/adds_multiple/1676812249_63f21fd98ec14.jpg', '2023-02-19 07:10:55', '2023-02-19 07:10:55'),
(137, 34, 'uploads/adds_multiple/1676812255_63f21fdf0958d.jpg', '2023-02-19 07:11:00', '2023-02-19 07:11:00'),
(138, 34, 'uploads/adds_multiple/1676812260_63f21fe4b459a.jpg', '2023-02-19 07:11:05', '2023-02-19 07:11:05'),
(139, 35, 'uploads/adds_multiple/1676812358_63f22046d86be.jpg', '2023-02-19 07:12:39', '2023-02-19 07:12:39'),
(140, 35, 'uploads/adds_multiple/1676812359_63f220471fb15.jpg', '2023-02-19 07:12:39', '2023-02-19 07:12:39'),
(141, 35, 'uploads/adds_multiple/1676812359_63f220473ba1b.jpg', '2023-02-19 07:12:39', '2023-02-19 07:12:39'),
(142, 35, 'uploads/adds_multiple/1676812359_63f220474c808.jpg', '2023-02-19 07:12:39', '2023-02-19 07:12:39'),
(143, 36, 'uploads/adds_multiple/1676812454_63f220a62fbfc.jpg', '2023-02-19 07:14:14', '2023-02-19 07:14:14'),
(144, 36, 'uploads/adds_multiple/1676812454_63f220a63f2bb.png', '2023-02-19 07:14:14', '2023-02-19 07:14:14'),
(145, 36, 'uploads/adds_multiple/1676812454_63f220a65eb2d.jpg', '2023-02-19 07:14:19', '2023-02-19 07:14:19'),
(146, 36, 'uploads/adds_multiple/1676812459_63f220ab84fe7.jpg', '2023-02-19 07:14:24', '2023-02-19 07:14:24'),
(147, 36, 'uploads/adds_multiple/1676812464_63f220b0c56a7.jpg', '2023-02-19 07:14:30', '2023-02-19 07:14:30'),
(148, 37, 'uploads/adds_multiple/1676813103_63f2232fc7aaa.jpg', '2023-02-19 07:25:03', '2023-02-19 07:25:03'),
(149, 37, 'uploads/adds_multiple/1676813103_63f2232fd9e94.png', '2023-02-19 07:25:04', '2023-02-19 07:25:04'),
(150, 37, 'uploads/adds_multiple/1676813104_63f22330091ef.jpg', '2023-02-19 07:25:08', '2023-02-19 07:25:08'),
(151, 37, 'uploads/adds_multiple/1676813108_63f22334d4ebe.jpg', '2023-02-19 07:25:14', '2023-02-19 07:25:14'),
(152, 37, 'uploads/adds_multiple/1676813114_63f2233a43845.jpg', '2023-02-19 07:25:19', '2023-02-19 07:25:19'),
(153, 38, 'uploads/adds_multiple/1676813228_63f223acbc230.jpg', '2023-02-19 07:27:08', '2023-02-19 07:27:08'),
(154, 38, 'uploads/adds_multiple/1676813228_63f223aceb003.jpg', '2023-02-19 07:27:14', '2023-02-19 07:27:14'),
(155, 38, 'uploads/adds_multiple/1676813234_63f223b2abbaf.jpg', '2023-02-19 07:27:19', '2023-02-19 07:27:19'),
(156, 38, 'uploads/adds_multiple/1676813239_63f223b7dbac5.jpg', '2023-02-19 07:27:25', '2023-02-19 07:27:25'),
(157, 39, 'uploads/adds_multiple/1676813342_63f2241e45032.jpg', '2023-02-19 07:29:02', '2023-02-19 07:29:02'),
(158, 39, 'uploads/adds_multiple/1676813342_63f2241e5f656.jpg', '2023-02-19 07:29:02', '2023-02-19 07:29:02'),
(159, 39, 'uploads/adds_multiple/1676813342_63f2241e7ad66.jpg', '2023-02-19 07:29:02', '2023-02-19 07:29:02'),
(160, 39, 'uploads/adds_multiple/1676813342_63f2241e8dd33.png', '2023-02-19 07:29:02', '2023-02-19 07:29:02'),
(161, 39, 'uploads/adds_multiple/1676813342_63f2241ec77d1.jpg', '2023-02-19 07:29:08', '2023-02-19 07:29:08'),
(162, 40, 'uploads/adds_multiple/1676813410_63f22462a80c4.jpg', '2023-02-19 07:30:10', '2023-02-19 07:30:10'),
(163, 40, 'uploads/adds_multiple/1676813410_63f22462bf9fb.jpg', '2023-02-19 07:30:10', '2023-02-19 07:30:10'),
(164, 40, 'uploads/adds_multiple/1676813410_63f22462d415d.jpg', '2023-02-19 07:30:10', '2023-02-19 07:30:10'),
(165, 40, 'uploads/adds_multiple/1676813410_63f22462e8ebb.jpg', '2023-02-19 07:30:11', '2023-02-19 07:30:11'),
(166, 41, 'uploads/adds_multiple/1676813580_63f2250c67398.jpg', '2023-02-19 07:33:06', '2023-02-19 07:33:06'),
(167, 41, 'uploads/adds_multiple/1676813586_63f225123f82e.jpg', '2023-02-19 07:33:11', '2023-02-19 07:33:11'),
(168, 41, 'uploads/adds_multiple/1676813591_63f22517ac0d8.jpg', '2023-02-19 07:33:16', '2023-02-19 07:33:16'),
(169, 42, 'uploads/adds_multiple/1676813679_63f2256f9af72.jpg', '2023-02-19 07:34:39', '2023-02-19 07:34:39'),
(170, 42, 'uploads/adds_multiple/1676813679_63f2256fbd74c.jpg', '2023-02-19 07:34:39', '2023-02-19 07:34:39'),
(171, 42, 'uploads/adds_multiple/1676813679_63f2256fd3929.jpg', '2023-02-19 07:34:39', '2023-02-19 07:34:39'),
(172, 42, 'uploads/adds_multiple/1676813679_63f2256fe6d36.jpg', '2023-02-19 07:34:40', '2023-02-19 07:34:40'),
(173, 42, 'uploads/adds_multiple/1676813680_63f225700730a.png', '2023-02-19 07:34:40', '2023-02-19 07:34:40'),
(174, 43, 'uploads/adds_multiple/1676813766_63f225c6e9583.jpg', '2023-02-19 07:36:07', '2023-02-19 07:36:07'),
(175, 43, 'uploads/adds_multiple/1676813767_63f225c72bc8d.jpg', '2023-02-19 07:36:07', '2023-02-19 07:36:07'),
(176, 43, 'uploads/adds_multiple/1676813767_63f225c746eee.jpg', '2023-02-19 07:36:07', '2023-02-19 07:36:07'),
(177, 43, 'uploads/adds_multiple/1676813767_63f225c76312c.jpg', '2023-02-19 07:36:07', '2023-02-19 07:36:07'),
(178, 43, 'uploads/adds_multiple/1676813767_63f225c77e954.png', '2023-02-19 07:36:07', '2023-02-19 07:36:07'),
(179, 43, 'uploads/adds_multiple/1676813767_63f225c7c065e.jpg', '2023-02-19 07:36:12', '2023-02-19 07:36:12'),
(180, 43, 'uploads/adds_multiple/1676813772_63f225ccbfea8.jpg', '2023-02-19 07:36:17', '2023-02-19 07:36:17'),
(181, 43, 'uploads/adds_multiple/1676813777_63f225d1c0665.jpg', '2023-02-19 07:36:22', '2023-02-19 07:36:22'),
(182, 44, 'uploads/adds_multiple/1676813902_63f2264e213b0.jpg', '2023-02-19 07:38:22', '2023-02-19 07:38:22'),
(183, 44, 'uploads/adds_multiple/1676813902_63f2264e36833.jpg', '2023-02-19 07:38:22', '2023-02-19 07:38:22'),
(184, 44, 'uploads/adds_multiple/1676813902_63f2264e4bdc1.jpg', '2023-02-19 07:38:22', '2023-02-19 07:38:22'),
(185, 44, 'uploads/adds_multiple/1676813902_63f2264e5f3be.png', '2023-02-19 07:38:22', '2023-02-19 07:38:22'),
(186, 45, 'uploads/adds_multiple/1676814025_63f226c94d0de.jpg', '2023-02-19 07:40:25', '2023-02-19 07:40:25'),
(187, 45, 'uploads/adds_multiple/1676814025_63f226c966d54.jpg', '2023-02-19 07:40:25', '2023-02-19 07:40:25'),
(188, 45, 'uploads/adds_multiple/1676814025_63f226c97917a.jpg', '2023-02-19 07:40:25', '2023-02-19 07:40:25'),
(189, 45, 'uploads/adds_multiple/1676814025_63f226c994bcc.png', '2023-02-19 07:40:25', '2023-02-19 07:40:25'),
(190, 46, 'uploads/adds_multiple/1676814097_63f227118e75c.jpg', '2023-02-19 07:41:37', '2023-02-19 07:41:37'),
(191, 46, 'uploads/adds_multiple/1676814097_63f22711ae443.jpg', '2023-02-19 07:41:37', '2023-02-19 07:41:37'),
(192, 46, 'uploads/adds_multiple/1676814097_63f22711c921f.jpg', '2023-02-19 07:41:37', '2023-02-19 07:41:37'),
(193, 46, 'uploads/adds_multiple/1676814097_63f22711db80f.jpg', '2023-02-19 07:41:37', '2023-02-19 07:41:37'),
(194, 47, 'uploads/adds_multiple/1676814326_63f227f6cc492.jpg', '2023-02-19 07:45:26', '2023-02-19 07:45:26'),
(195, 47, 'uploads/adds_multiple/1676814326_63f227f6dd999.jpg', '2023-02-19 07:45:26', '2023-02-19 07:45:26'),
(196, 47, 'uploads/adds_multiple/1676814327_63f227f700f3d.jpg', '2023-02-19 07:45:33', '2023-02-19 07:45:33'),
(197, 47, 'uploads/adds_multiple/1676814333_63f227fd6473e.jpg', '2023-02-19 07:45:39', '2023-02-19 07:45:39'),
(198, 48, 'uploads/adds_multiple/1676814409_63f22849f12fe.jpg', '2023-02-19 07:46:50', '2023-02-19 07:46:50'),
(199, 48, 'uploads/adds_multiple/1676814410_63f2284a17200.jpg', '2023-02-19 07:46:50', '2023-02-19 07:46:50'),
(200, 48, 'uploads/adds_multiple/1676814410_63f2284a3d5f8.jpg', '2023-02-19 07:46:50', '2023-02-19 07:46:50'),
(201, 49, 'uploads/adds_multiple/1676814487_63f228972b529.jpg', '2023-02-19 07:48:07', '2023-02-19 07:48:07'),
(202, 49, 'uploads/adds_multiple/1676814487_63f228974dd31.jpg', '2023-02-19 07:48:07', '2023-02-19 07:48:07'),
(203, 49, 'uploads/adds_multiple/1676814487_63f228976edf7.jpg', '2023-02-19 07:48:07', '2023-02-19 07:48:07'),
(204, 50, 'uploads/adds_multiple/1676814598_63f22906dead1.jpg', '2023-02-19 07:49:59', '2023-02-19 07:49:59'),
(205, 50, 'uploads/adds_multiple/1676814599_63f229070658c.jpg', '2023-02-19 07:49:59', '2023-02-19 07:49:59'),
(206, 50, 'uploads/adds_multiple/1676814599_63f2290720a65.jpg', '2023-02-19 07:49:59', '2023-02-19 07:49:59'),
(207, 50, 'uploads/adds_multiple/1676814599_63f229073a808.jpg', '2023-02-19 07:49:59', '2023-02-19 07:49:59'),
(208, 50, 'uploads/adds_multiple/1676814599_63f2290755f24.png', '2023-02-19 07:49:59', '2023-02-19 07:49:59'),
(209, 50, 'uploads/adds_multiple/1676814599_63f229077bcdc.jpg', '2023-02-19 07:50:04', '2023-02-19 07:50:04'),
(210, 50, 'uploads/adds_multiple/1676814604_63f2290c742ca.jpg', '2023-02-19 07:50:09', '2023-02-19 07:50:09'),
(211, 50, 'uploads/adds_multiple/1676814609_63f22911b0125.jpg', '2023-02-19 07:50:15', '2023-02-19 07:50:15'),
(212, 51, 'uploads/adds_multiple/1676814682_63f2295a9e6b2.jpg', '2023-02-19 07:51:22', '2023-02-19 07:51:22'),
(213, 51, 'uploads/adds_multiple/1676814682_63f2295ab4300.jpg', '2023-02-19 07:51:22', '2023-02-19 07:51:22'),
(214, 51, 'uploads/adds_multiple/1676814682_63f2295ac920a.jpg', '2023-02-19 07:51:22', '2023-02-19 07:51:22'),
(215, 51, 'uploads/adds_multiple/1676814682_63f2295adc0b9.jpg', '2023-02-19 07:51:22', '2023-02-19 07:51:22'),
(216, 51, 'uploads/adds_multiple/1676814682_63f2295aee68f.png', '2023-02-19 07:51:23', '2023-02-19 07:51:23'),
(217, 51, 'uploads/adds_multiple/1676814683_63f2295b1852e.jpg', '2023-02-19 07:51:29', '2023-02-19 07:51:29'),
(218, 51, 'uploads/adds_multiple/1676814689_63f229619c964.jpg', '2023-02-19 07:51:37', '2023-02-19 07:51:37'),
(219, 51, 'uploads/adds_multiple/1676814697_63f229694d9d8.jpg', '2023-02-19 07:51:43', '2023-02-19 07:51:43'),
(220, 52, 'uploads/adds_multiple/1676814779_63f229bb42ad5.jpg', '2023-02-19 07:53:04', '2023-02-19 07:53:04'),
(221, 52, 'uploads/adds_multiple/1676814784_63f229c0e06e3.jpg', '2023-02-19 07:53:09', '2023-02-19 07:53:09'),
(222, 52, 'uploads/adds_multiple/1676814789_63f229c5ed813.jpg', '2023-02-19 07:53:15', '2023-02-19 07:53:15'),
(223, 53, 'uploads/adds_multiple/1676814912_63f22a40358be.jpg', '2023-02-19 07:55:12', '2023-02-19 07:55:12'),
(224, 53, 'uploads/adds_multiple/1676814912_63f22a4052b6b.jpg', '2023-02-19 07:55:12', '2023-02-19 07:55:12'),
(225, 53, 'uploads/adds_multiple/1676814912_63f22a406f5b7.jpg', '2023-02-19 07:55:12', '2023-02-19 07:55:12'),
(226, 53, 'uploads/adds_multiple/1676814912_63f22a409bd7b.jpg', '2023-02-19 07:55:12', '2023-02-19 07:55:12'),
(227, 54, 'uploads/adds_multiple/1676814991_63f22a8fc43da.jpg', '2023-02-19 07:56:31', '2023-02-19 07:56:31'),
(228, 54, 'uploads/adds_multiple/1676814991_63f22a8fe9702.jpg', '2023-02-19 07:56:32', '2023-02-19 07:56:32'),
(229, 54, 'uploads/adds_multiple/1676814992_63f22a901adb3.jpg', '2023-02-19 07:56:32', '2023-02-19 07:56:32'),
(230, 54, 'uploads/adds_multiple/1676814992_63f22a9061d1d.jpg', '2023-02-19 07:56:38', '2023-02-19 07:56:38'),
(231, 54, 'uploads/adds_multiple/1676814998_63f22a96e3c12.jpg', '2023-02-19 07:56:43', '2023-02-19 07:56:43'),
(232, 54, 'uploads/adds_multiple/1676815003_63f22a9b706c5.jpg', '2023-02-19 07:56:47', '2023-02-19 07:56:47'),
(233, 55, 'uploads/adds_multiple/1676815138_63f22b225f63f.jpg', '2023-02-19 07:58:58', '2023-02-19 07:58:58'),
(234, 55, 'uploads/adds_multiple/1676815138_63f22b227bf9e.jpg', '2023-02-19 07:58:58', '2023-02-19 07:58:58'),
(235, 55, 'uploads/adds_multiple/1676815138_63f22b2296caf.jpg', '2023-02-19 07:58:58', '2023-02-19 07:58:58'),
(236, 55, 'uploads/adds_multiple/1676815138_63f22b22d4436.jpg', '2023-02-19 07:59:03', '2023-02-19 07:59:03'),
(237, 55, 'uploads/adds_multiple/1676815143_63f22b27d969c.jpg', '2023-02-19 07:59:09', '2023-02-19 07:59:09'),
(238, 55, 'uploads/adds_multiple/1676815149_63f22b2dbe65b.jpg', '2023-02-19 07:59:16', '2023-02-19 07:59:16'),
(241, 23, 'uploads/adds_multiple/1676893814_63f35e76bb3f8.jpg', '2023-02-20 05:50:17', '2023-02-20 05:50:17'),
(242, 56, 'uploads/adds_multiple/1676899929_63f37659d8ce1.jpg', '2023-02-20 07:32:13', '2023-02-20 07:32:13'),
(243, 56, 'uploads/adds_multiple/1676899933_63f3765dac6de.jpg', '2023-02-20 07:32:17', '2023-02-20 07:32:17'),
(244, 57, 'uploads/adds_multiple/1677040353_63f59ae1cfed1.jpg', '2023-02-21 22:32:33', '2023-02-21 22:32:33'),
(245, 57, 'uploads/adds_multiple/1677040353_63f59ae1e6482.jpg', '2023-02-21 22:32:34', '2023-02-21 22:32:34'),
(246, 57, 'uploads/adds_multiple/1677040354_63f59ae207446.jpg', '2023-02-21 22:32:34', '2023-02-21 22:32:34'),
(247, 57, 'uploads/adds_multiple/1677040354_63f59ae21d954.jpg', '2023-02-21 22:32:34', '2023-02-21 22:32:34'),
(248, 58, 'uploads/adds_multiple/1677070643_63f61133e75e5.png', '2023-02-22 12:57:23', '2023-02-22 12:57:23'),
(249, 59, 'uploads/adds_multiple/1677071496_63f614882bcf1.jpg', '2023-02-22 13:11:36', '2023-02-22 13:11:36'),
(250, 60, 'uploads/adds_multiple/1677071941_63f616451877f.jpg', '2023-02-22 13:19:01', '2023-02-22 13:19:01'),
(251, 61, 'uploads/adds_multiple/1677072140_63f6170cd98b1.jpg', '2023-02-22 13:22:20', '2023-02-22 13:22:20'),
(252, 62, 'uploads/adds_multiple/1677073157_63f61b051ff53.jpg', '2023-02-22 13:39:17', '2023-02-22 13:39:17'),
(253, 63, 'uploads/adds_multiple/1677073490_63f61c520a9d3.jpg', '2023-02-22 13:44:50', '2023-02-22 13:44:50'),
(254, 64, 'uploads/adds_multiple/1677073568_63f61ca063efa.jpg', '2023-02-22 13:46:08', '2023-02-22 13:46:08'),
(255, 65, 'uploads/adds_multiple/1677129473_63f6f701c76b1.jpg', '2023-02-23 05:17:53', '2023-02-23 05:17:53'),
(256, 66, 'uploads/adds_multiple/1677129803_63f6f84b59a63.jpg', '2023-02-23 05:23:23', '2023-02-23 05:23:23'),
(257, 67, 'uploads/adds_multiple/1677130199_63f6f9d700171.jpg', '2023-02-23 05:29:59', '2023-02-23 05:29:59'),
(258, 68, 'uploads/adds_multiple/1677130392_63f6fa9818770.png', '2023-02-23 05:33:12', '2023-02-23 05:33:12'),
(259, 69, 'uploads/adds_multiple/1677130676_63f6fbb474078.jpg', '2023-02-23 05:37:56', '2023-02-23 05:37:56'),
(260, 70, 'uploads/adds_multiple/1677130956_63f6fccc449cd.jpg', '2023-02-23 05:42:36', '2023-02-23 05:42:36'),
(261, 71, 'uploads/adds_multiple/1677131273_63f6fe093fcf5.jpg', '2023-02-23 05:47:53', '2023-02-23 05:47:53'),
(262, 72, 'uploads/adds_multiple/1677131538_63f6ff121df1a.jpg', '2023-02-23 05:52:18', '2023-02-23 05:52:18'),
(263, 73, 'uploads/adds_multiple/1677131861_63f700554d98d.jpg', '2023-02-23 05:57:41', '2023-02-23 05:57:41'),
(264, 74, 'uploads/adds_multiple/1677132064_63f7012004f8b.png', '2023-02-23 06:01:04', '2023-02-23 06:01:04'),
(265, 75, 'uploads/adds_multiple/1677132751_63f703cf2a6aa.jpg', '2023-02-23 06:12:31', '2023-02-23 06:12:31'),
(266, 76, 'uploads/adds_multiple/1677133834_63f7080a6329d.jpg', '2023-02-23 06:30:34', '2023-02-23 06:30:34'),
(267, 77, 'uploads/adds_multiple/1677133986_63f708a2c70e6.png', '2023-02-23 06:33:06', '2023-02-23 06:33:06'),
(268, 78, 'uploads/adds_multiple/1677134058_63f708ea48412.jpg', '2023-02-23 06:34:18', '2023-02-23 06:34:18'),
(269, 79, 'uploads/adds_multiple/1677134151_63f70947dbb16.jpg', '2023-02-23 06:35:51', '2023-02-23 06:35:51'),
(270, 80, 'uploads/adds_multiple/1677134291_63f709d3069a1.png', '2023-02-23 06:38:11', '2023-02-23 06:38:11'),
(271, 81, 'uploads/adds_multiple/1677134456_63f70a7808867.jpg', '2023-02-23 06:40:56', '2023-02-23 06:40:56'),
(272, 82, 'uploads/adds_multiple/1677134569_63f70ae904a99.jpg', '2023-02-23 06:42:49', '2023-02-23 06:42:49'),
(273, 83, 'uploads/adds_multiple/1677134711_63f70b77c0218.jpg', '2023-02-23 06:45:11', '2023-02-23 06:45:11'),
(274, 84, 'uploads/adds_multiple/1677134888_63f70c2888fae.png', '2023-02-23 06:48:08', '2023-02-23 06:48:08'),
(275, 85, 'uploads/adds_multiple/1677135561_63f70ec9aa350.jpg', '2023-02-23 06:59:21', '2023-02-23 06:59:21'),
(276, 86, 'uploads/adds_multiple/1677136684_63f7132c92566.jpg', '2023-02-23 07:18:04', '2023-02-23 07:18:04'),
(277, 87, 'uploads/adds_multiple/1677136975_63f7144fe9dc8.jpg', '2023-02-23 07:22:55', '2023-02-23 07:22:55'),
(278, 88, 'uploads/adds_multiple/1677139301_63f71d659b17a.jpg', '2023-02-23 08:01:41', '2023-02-23 08:01:41'),
(279, 89, 'uploads/adds_multiple/1677139468_63f71e0c2a45f.png', '2023-02-23 08:04:28', '2023-02-23 08:04:28'),
(280, 90, 'uploads/adds_multiple/1677140691_63f722d303392.jpg', '2023-02-23 08:24:51', '2023-02-23 08:24:51'),
(281, 91, 'uploads/adds_multiple/1677142447_63f729af6a9c6.jpg', '2023-02-23 08:54:07', '2023-02-23 08:54:07'),
(282, 92, 'uploads/adds_multiple/1677143007_63f72bdf39187.jpg', '2023-02-23 09:03:27', '2023-02-23 09:03:27'),
(283, 93, 'uploads/adds_multiple/1677333654_63fa1496245c7.jpg', '2023-02-25 14:00:54', '2023-02-25 14:00:54'),
(284, 93, 'uploads/adds_multiple/1677333654_63fa149627f53.jpg', '2023-02-25 14:00:54', '2023-02-25 14:00:54'),
(285, 93, 'uploads/adds_multiple/1677333654_63fa14962bb7e.jpg', '2023-02-25 14:00:54', '2023-02-25 14:00:54'),
(286, 93, 'uploads/adds_multiple/1677333654_63fa14962f622.jpg', '2023-02-25 14:00:54', '2023-02-25 14:00:54'),
(287, 93, 'uploads/adds_multiple/1677333654_63fa1496330c4.jpg', '2023-02-25 14:00:54', '2023-02-25 14:00:54'),
(288, 93, 'uploads/adds_multiple/1677333654_63fa149636fef.jpg', '2023-02-25 14:00:54', '2023-02-25 14:00:54'),
(290, 94, 'uploads/adds_multiple/1677334197_63fa16b529a96.png', '2023-02-25 14:09:57', '2023-02-25 14:09:57'),
(291, 94, 'uploads/adds_multiple/1677334197_63fa16b575429.png', '2023-02-25 14:09:57', '2023-02-25 14:09:57'),
(292, 94, 'uploads/adds_multiple/1677334197_63fa16b5a39da.png', '2023-02-25 14:09:57', '2023-02-25 14:09:57'),
(293, 94, 'uploads/adds_multiple/1677334197_63fa16b5dece8.jpg', '2023-02-25 14:09:57', '2023-02-25 14:09:57'),
(294, 94, 'uploads/adds_multiple/1677334197_63fa16b5e24c7.jpg', '2023-02-25 14:09:57', '2023-02-25 14:09:57'),
(295, 94, 'uploads/adds_multiple/1677334197_63fa16b5e5b9f.jpg', '2023-02-25 14:09:57', '2023-02-25 14:09:57'),
(296, 94, 'uploads/adds_multiple/1677334197_63fa16b5e93a5.jpg', '2023-02-25 14:09:58', '2023-02-25 14:09:58'),
(297, 94, 'uploads/adds_multiple/1677334198_63fa16b616f97.png', '2023-02-25 14:09:58', '2023-02-25 14:09:58'),
(298, 95, 'uploads/adds_multiple/1677334752_63fa18e0f3a98.jpg', '2023-02-25 14:19:13', '2023-02-25 14:19:13'),
(299, 95, 'uploads/adds_multiple/1677334753_63fa18e102fef.jpg', '2023-02-25 14:19:13', '2023-02-25 14:19:13'),
(300, 95, 'uploads/adds_multiple/1677334753_63fa18e106635.jpg', '2023-02-25 14:19:13', '2023-02-25 14:19:13'),
(301, 95, 'uploads/adds_multiple/1677334753_63fa18e109942.jpg', '2023-02-25 14:19:13', '2023-02-25 14:19:13'),
(302, 95, 'uploads/adds_multiple/1677334753_63fa18e10cff9.jpg', '2023-02-25 14:19:13', '2023-02-25 14:19:13'),
(303, 95, 'uploads/adds_multiple/1677334753_63fa18e110388.jpg', '2023-02-25 14:19:13', '2023-02-25 14:19:13'),
(304, 95, 'uploads/adds_multiple/1677334753_63fa18e113aba.jpg', '2023-02-25 14:19:13', '2023-02-25 14:19:13'),
(305, 95, 'uploads/adds_multiple/1677334753_63fa18e116da6.jpg', '2023-02-25 14:19:13', '2023-02-25 14:19:13'),
(306, 95, 'uploads/adds_multiple/1677334753_63fa18e11a675.jpg', '2023-02-25 14:19:13', '2023-02-25 14:19:13'),
(307, 95, 'uploads/adds_multiple/1677334753_63fa18e13ef48.png', '2023-02-25 14:19:13', '2023-02-25 14:19:13'),
(308, 96, 'uploads/adds_multiple/1677334893_63fa196ddd65a.jpg', '2023-02-25 14:21:33', '2023-02-25 14:21:33'),
(309, 96, 'uploads/adds_multiple/1677334893_63fa196de0f05.jpg', '2023-02-25 14:21:33', '2023-02-25 14:21:33'),
(310, 96, 'uploads/adds_multiple/1677334893_63fa196de4351.jpg', '2023-02-25 14:21:33', '2023-02-25 14:21:33'),
(311, 96, 'uploads/adds_multiple/1677334893_63fa196de7b63.jpg', '2023-02-25 14:21:34', '2023-02-25 14:21:34'),
(312, 96, 'uploads/adds_multiple/1677334894_63fa196e16e17.png', '2023-02-25 14:21:34', '2023-02-25 14:21:34'),
(313, 102, 'uploads/adds_multiple/1677660288_63ff108058a9e.jpg', '2023-03-01 02:44:49', '2023-03-01 02:44:49'),
(314, 102, 'uploads/adds_multiple/1677660289_63ff1081a1daf.jpg', '2023-03-01 02:44:50', '2023-03-01 02:44:50'),
(315, 102, 'uploads/adds_multiple/1677660290_63ff10826b19e.jpg', '2023-03-01 02:44:51', '2023-03-01 02:44:51'),
(316, 102, 'uploads/adds_multiple/1677660291_63ff108327b7f.jpg', '2023-03-01 02:44:51', '2023-03-01 02:44:51'),
(317, 108, 'uploads/adds_multiple/1677671615_63ff3cbfe4b77.jpg', '2023-03-01 05:53:36', '2023-03-01 05:53:36'),
(318, 108, 'uploads/adds_multiple/1677671616_63ff3cc048025.jpg', '2023-03-01 05:53:36', '2023-03-01 05:53:36'),
(319, 108, 'uploads/adds_multiple/1677671616_63ff3cc0981af.jpg', '2023-03-01 05:53:36', '2023-03-01 05:53:36'),
(320, 108, 'uploads/adds_multiple/1677671616_63ff3cc0c233e.jpg', '2023-03-01 05:53:36', '2023-03-01 05:53:36'),
(321, 108, 'uploads/adds_multiple/1677671616_63ff3cc0ecf02.jpg', '2023-03-01 05:53:37', '2023-03-01 05:53:37'),
(322, 108, 'uploads/adds_multiple/1677671617_63ff3cc121877.jpg', '2023-03-01 05:53:37', '2023-03-01 05:53:37'),
(323, 109, 'uploads/adds_multiple/1677672789_63ff41550802c.jpg', '2023-03-01 06:13:09', '2023-03-01 06:13:09'),
(324, 109, 'uploads/adds_multiple/1677672789_63ff41551cc0d.jpg', '2023-03-01 06:13:09', '2023-03-01 06:13:09'),
(325, 109, 'uploads/adds_multiple/1677672789_63ff41552e9a9.jpg', '2023-03-01 06:13:09', '2023-03-01 06:13:09'),
(326, 109, 'uploads/adds_multiple/1677672789_63ff415542362.jpg', '2023-03-01 06:13:09', '2023-03-01 06:13:09'),
(327, 109, 'uploads/adds_multiple/1677672789_63ff41555505b.jpg', '2023-03-01 06:13:09', '2023-03-01 06:13:09'),
(328, 109, 'uploads/adds_multiple/1677672789_63ff4155671f1.jpg', '2023-03-01 06:13:09', '2023-03-01 06:13:09'),
(329, 110, 'uploads/adds_multiple/1677673189_63ff42e570107.jpg', '2023-03-01 06:19:49', '2023-03-01 06:19:49'),
(330, 110, 'uploads/adds_multiple/1677673189_63ff42e58350a.jpg', '2023-03-01 06:19:49', '2023-03-01 06:19:49'),
(331, 110, 'uploads/adds_multiple/1677673189_63ff42e59e897.jpg', '2023-03-01 06:19:49', '2023-03-01 06:19:49'),
(332, 110, 'uploads/adds_multiple/1677673189_63ff42e5b7a2f.jpg', '2023-03-01 06:19:49', '2023-03-01 06:19:49'),
(333, 110, 'uploads/adds_multiple/1677673189_63ff42e5ce501.jpg', '2023-03-01 06:19:49', '2023-03-01 06:19:49'),
(334, 110, 'uploads/adds_multiple/1677673189_63ff42e5e2bf1.jpg', '2023-03-01 06:19:50', '2023-03-01 06:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `ad_types`
--

CREATE TABLE `ad_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = no\r\n1= yes',
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_types`
--

INSERT INTO `ad_types` (`id`, `name`, `slug`, `is_paid`, `amount`, `created_at`, `updated_at`) VALUES
(15, 'job offered', 'job-offered', 1, 5, '2023-02-18 23:16:24', '2023-02-25 14:30:01'),
(16, 'Engagement Offered', 'engagement-offered', 0, 0, '2023-02-18 23:19:14', '2023-02-18 23:19:14'),
(17, 'resume / job wanted', 'job-wanted', 0, 0, '2023-02-18 23:19:41', '2023-02-18 23:19:41'),
(18, 'housing offered', 'housing-offered', 0, 0, '2023-02-18 23:21:11', '2023-02-18 23:21:11'),
(19, 'housing wanted', 'housing-wanted', 0, 0, '2023-02-18 23:21:22', '2023-02-18 23:21:22'),
(20, 'for sale by owner', 'for-sale-by-owner', 0, 0, '2023-02-18 23:21:34', '2023-02-18 23:21:34'),
(21, 'for sale by dealer', 'for-sale-by-dealer', 0, 0, '2023-02-18 23:21:44', '2023-02-18 23:21:44'),
(22, 'wanted by owner', 'wanted-by-owner', 0, 0, '2023-02-18 23:21:54', '2023-02-18 23:21:54'),
(23, 'wanted by dealer', 'wanted-by-dealer', 0, 0, '2023-02-18 23:22:05', '2023-02-18 23:22:05'),
(24, 'service offered', 'service-offered', 1, 5, '2023-02-18 23:22:17', '2023-02-25 14:30:16'),
(25, 'community', 'community', 0, 0, '2023-02-18 23:22:27', '2023-02-18 23:22:27'),
(26, 'event / class', 'event-class', 0, 0, '2023-02-18 23:22:36', '2023-02-18 23:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `slug`, `icon`, `order`, `status`, `created_at`, `updated_at`) VALUES
(8, 'community', 'uploads/category\\NRqGTCoG8dkxl5FgwF8bxCt3ovOtw8xNX5oKa28H.jpg', 'community', 'fas fa-bomb', 1, 1, '2023-02-18 23:28:13', '2023-02-18 23:28:13'),
(9, 'housing', 'uploads/category\\z6NVdSAJZ3K7nNGyOPisYpteintWtPDT1C328rbY.jpg', 'housing', 'fas fa-battery-half', 2, 1, '2023-02-18 23:28:32', '2023-02-18 23:28:32'),
(10, 'jobs', 'uploads/category\\qLJCu8CNgjzXGbjySSOJsLSWNv4jJ8RRlGjAOnm0.jpg', 'jobs', 'fas fa-binoculars', 3, 1, '2023-02-18 23:29:07', '2023-02-18 23:29:07'),
(11, 'services', 'uploads/category\\J3X4Y5pZ6n4UAIX6rVjhPwx1AVhVeS1L94NdXD40.jpg', 'services', 'fas fa-battery-three-quarters', 4, 1, '2023-02-18 23:29:36', '2023-02-18 23:29:36'),
(12, 'for sale', 'uploads/category\\bFr1BWYkNBtpJUVBa4GTeOwmoJszFNZ4Ra0V0VIN.jpg', 'for sale', 'fas fa-binoculars', 5, 1, '2023-02-18 23:38:03', '2023-02-18 23:38:03'),
(13, 'disscussion forums', 'uploads/category\\aA6fxOg959f0NM1dS7O2YMoawVhtGx6tKfakN9pN.jpg', 'disscussion forums', 'fas fa-battery-quarter', 6, 1, '2023-02-18 23:38:20', '2023-02-18 23:38:20'),
(14, 'temp jobs', 'uploads/category\\pktm6InC0NHWglKhve8rT7jXxc6qGu9PV3Z4TOUG.jpg', 'temp jobs', 'fas fa-battery-half', 7, 1, '2023-02-18 23:46:01', '2023-02-18 23:46:01'),
(15, 'cvs', 'uploads/category\\lxJLhO7uFN3Ve40KB4TMVn628QArQchc6zduyID8.jpg', 'cvs', 'fas fa-battery-half', 8, 1, '2023-02-18 23:46:14', '2023-02-18 23:46:14'),
(16, 'events', 'uploads/category\\lxJLhO7uFN3Ve40KB4TMVn628QArQchc6zduyID8.jpg', 'events', 'fas fa-battery-half', 9, 1, '2023-02-19 05:46:14', '2023-02-19 05:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `category_custom_field`
--

CREATE TABLE `category_custom_field` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `country_id` int(10) DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '1=active,0=inactive',
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `slug`, `country_id`, `order_id`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Dhaka', 'dhaka', 18, 3, 1, '2023-02-15 06:35:30.000000', '2023-02-15 06:35:30.00000'),
(6, 'Rajshahi', 'rajshahi', 18, 2, 1, '2023-02-22 12:48:11.000000', '2023-02-22 12:48:11.00000'),
(7, 'Berlin', 'berlin', 80, 3, 1, '2023-02-22 12:50:02.000000', '2023-02-22 12:50:02.00000'),
(8, 'Tokyo', 'tokyo', 107, 1, 1, '2023-02-22 13:08:05.000000', '2023-02-22 13:08:05.00000'),
(9, 'Mumbai', 'mumbai', 99, 5, 1, '2023-02-22 13:15:34.000000', '2023-02-22 13:15:34.00000'),
(10, 'Texas', 'texas', 226, 1, 1, '2023-02-22 13:43:06.000000', '2023-02-22 13:43:06.00000'),
(11, 'Newyork', 'newyork', 226, 6, 1, '2023-02-22 13:46:45.000000', '2023-02-22 13:46:45.00000'),
(12, 'Chicago', 'chicago', 226, 1, 1, '2023-02-23 04:48:17.000000', '2023-02-23 04:48:17.00000'),
(13, 'Los Angeles', 'los-angeles', 226, 1, 1, '2023-02-23 04:49:28.000000', '2023-02-23 04:49:28.00000'),
(14, 'San Diego', 'san-diego', 226, 3, 1, '2023-02-23 04:50:02.000000', '2023-02-23 04:50:02.00000'),
(15, 'Boston', 'boston', 226, 7, 1, '2023-02-23 04:50:57.000000', '2023-02-23 04:50:57.00000'),
(16, 'Philadelphia', 'philadelphia', 226, 8, 1, '2023-02-23 04:51:29.000000', '2023-02-23 04:51:29.00000'),
(17, 'San Jose', 'san-jose', 226, 9, 1, '2023-02-23 04:52:05.000000', '2023-02-23 04:52:05.00000'),
(18, 'Houston', 'houston', 226, 10, 1, '2023-02-23 04:52:35.000000', '2023-02-23 04:52:35.00000'),
(19, 'San Antonio', 'san-antonio', 226, 11, 1, '2023-02-23 04:53:28.000000', '2023-02-23 04:53:28.00000');

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home_main_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_counter_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_mobile_app_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `download_app` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `membership_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_ads` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_earning` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_video_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `get_membership_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `get_membership_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing_plan_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manage_ads_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chat_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified_user_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_overview_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_post_ads_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_my_ads_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_plan_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_account_setting_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_favorite_ads_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_messenger_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posting_rules_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posting_rules_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coming_soon_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coming_soon_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e404_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e404_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e404_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e500_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e500_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e500_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e503_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e503_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e503_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `footer_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `home_main_banner`, `home_counter_background`, `home_mobile_app_banner`, `home_title`, `home_description`, `download_app`, `newsletter_content`, `membership_content`, `create_account`, `post_ads`, `start_earning`, `terms_background`, `terms_body`, `about_background`, `about_video_thumb`, `about_body`, `privacy_background`, `privacy_body`, `contact_background`, `contact_number`, `contact_email`, `contact_address`, `get_membership_background`, `get_membership_image`, `pricing_plan_background`, `faq_background`, `faq_content`, `manage_ads_content`, `chat_content`, `verified_user_content`, `dashboard_overview_background`, `dashboard_post_ads_background`, `dashboard_my_ads_background`, `dashboard_plan_background`, `dashboard_account_setting_background`, `dashboard_favorite_ads_background`, `dashboard_messenger_background`, `posting_rules_background`, `posting_rules_body`, `blog_background`, `ads_background`, `coming_soon_title`, `coming_soon_subtitle`, `maintenance_title`, `maintenance_subtitle`, `e404_title`, `e404_subtitle`, `e404_image`, `e500_title`, `e500_subtitle`, `e500_image`, `e503_title`, `e503_subtitle`, `e503_image`, `created_at`, `updated_at`, `footer_text`) VALUES
(1, NULL, NULL, NULL, 'buy and sell your used products', 'buy and sell your used products', 'Sed Luctus Nibh At Consectetur Tempor. Proin Et Ipsum Tincidunt, Maximus Turpis Id, Mollis Lacus. Maecenas Nec Risus A Urna Sollicitudin Aliquet. Maecenas Pretium Tristique Sapien', 'Vestibulum Consectetur Placerat Tellus. Sed Faucibus Fermentum Purus, At Facilisis.', 'Vestibulum Consectetur Placerat Tellus. Sed Faucibus Fermentum Purus, At Facilisis Neque Auctor.', 'Vestibulum Ante Ipsum Primis In Faucibus Orci Luctus Et Ultrices Posuere Cubilia Curae. Donec Non Lorem Erat. Sed Vitae Vene.', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Mauris Eu Aliquet Odio. Nulla Pretium Congue Eros, Nec Rhoncus Mi.', 'Vestibulum Quis Consectetur Est. Fusce Hendrerit Neque At Facilisis Facilisis. Praesent A Pretium Elit. Nulla Aliquam Puru.', 'uploads/banners\\N6uTBcB0XCNadcqUWHZjQiU1hy4sfSjC8a3YJRHF.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec tristique dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec faucibus, lectus a efficitur tempus, elit arcu vehicula enim, in molestie turpis enim eu lectus. Cras tincidunt mauris facilisis, scelerisque libero ac, vestibulum orci. Aliquam ipsum ante, elementum et justo sed, convallis congue nisl. Maecenas non lectus purus. Aenean et erat eu turpis scelerisque egestas vel quis magna. Integer placerat ex facilisis quam condimentum, vel placerat nibh consectetur. In quis nunc libero. Maecenas turpis nunc, rhoncus ac pellentesque ut, pellentesque sit amet lorem. Proin est leo, luctus eget volutpat non, euismod ut mi.</p><p>Cras vel ligula enim. Nullam dignissim hendrerit libero. Donec elit ante, luctus a metus eu, fringilla vulputate magna. Vestibulum ultrices ultrices ante nec imperdiet. In id elit et metus feugiat lobortis at eu arcu. Curabitur mattis tincidunt erat et condimentum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p><p>Integer et rutrum orci, a rutrum massa. In id ex at erat vulputate vulputate. Curabitur eleifend augue odio, eget porta nisi ultricies vitae. Nullam in mauris a metus condimentum consectetur sit amet vitae eros. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed eleifend nibh at mattis egestas. Nunc tempus ligula in eros mattis, id consectetur mi pellentesque. In a augue dictum, feugiat lorem sit amet, mollis ex. Etiam ut suscipit risus. Vivamus tempus sed nunc nec rhoncus. Duis odio nibh, tempus non lectus non, ultricies pellentesque est.</p><p>Nulla laoreet pharetra neque. Morbi fringilla tincidunt commodo. Proin auctor, libero in pulvinar varius, risus turpis finibus enim, a ultricies nisl eros quis turpis. Fusce nulla justo, bibendum vel metus vel, rhoncus malesuada sem. Nullam varius tortor ante, at pellentesque odio elementum vel. Integer sit amet metus fermentum, vestibulum nisi vel, malesuada nisl. Maecenas eu dui dolor. Vestibulum eleifend dictum vestibulum. Sed sed felis vestibulum, molestie nisl a, aliquet nulla. Etiam nec massa mi. Quisque nec elementum ante. Etiam tristique aliquam convallis. Pellentesque posuere nec odio vitae tempor.</p><p>Mauris accumsan metus quis nisi mattis convallis. Suspendisse potenti. Duis egestas diam a nulla viverra commodo. Proin sed nunc tempus, ultricies magna vel, ornare dolor. Nunc quis tempor lorem, ut ultrices nunc. Integer porta tincidunt scelerisque. Nulla fermentum nec risus eu gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec pretium nibh, eget iaculis odio. Ut pulvinar, dolor euismod lacinia ornare, turpis nibh imperdiet ex, ac faucibus velit tortor ac justo. In a ligula a orci placerat finibus non quis mauris. Mauris vestibulum dui erat, sed mollis augue condimentum dignissim. Quisque semper iaculis tincidunt. Praesent efficitur dignissim odio vel tempus. Fusce vulputate et diam sit amet ullamcorper. Nulla volutpat vulputate nisl, ac posuere augue semper ut.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec tristique dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec faucibus, lectus a efficitur tempus, elit arcu vehicula enim, in molestie turpis enim eu lectus. Cras tincidunt mauris facilisis, scelerisque libero ac, vestibulum orci. Aliquam ipsum ante, elementum et justo sed, convallis congue nisl. Maecenas non lectus purus. Aenean et erat eu turpis scelerisque egestas vel quis magna. Integer placerat ex facilisis quam condimentum, vel placerat nibh consectetur. In quis nunc libero. Maecenas turpis nunc, rhoncus ac pellentesque ut, pellentesque sit amet lorem. Proin est leo, luctus eget volutpat non, euismod ut mi.</p><p>Cras vel ligula enim. Nullam dignissim hendrerit libero. Donec elit ante, luctus a metus eu, fringilla vulputate magna. Vestibulum ultrices ultrices ante nec imperdiet. In id elit et metus feugiat lobortis at eu arcu. Curabitur mattis tincidunt erat et condimentum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p><p>Integer et rutrum orci, a rutrum massa. In id ex at erat vulputate vulputate. Curabitur eleifend augue odio, eget porta nisi ultricies vitae. Nullam in mauris a metus condimentum consectetur sit amet vitae eros. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed eleifend nibh at mattis egestas. Nunc tempus ligula in eros mattis, id consectetur mi pellentesque. In a augue dictum, feugiat lorem sit amet, mollis ex. Etiam ut suscipit risus. Vivamus tempus sed nunc nec rhoncus. Duis odio nibh, tempus non lectus non, ultricies pellentesque est.</p><p>Nulla laoreet pharetra neque. Morbi fringilla tincidunt commodo. Proin auctor, libero in pulvinar varius, risus turpis finibus enim, a ultricies nisl eros quis turpis. Fusce nulla justo, bibendum vel metus vel, rhoncus malesuada sem. Nullam varius tortor ante, at pellentesque odio elementum vel. Integer sit amet metus fermentum, vestibulum nisi vel, malesuada nisl. Maecenas eu dui dolor. Vestibulum eleifend dictum vestibulum. Sed sed felis vestibulum, molestie nisl a, aliquet nulla. Etiam nec massa mi. Quisque nec elementum ante. Etiam tristique aliquam convallis. Pellentesque posuere nec odio vitae tempor.</p><p>Mauris accumsan metus quis nisi mattis convallis. Suspendisse potenti. Duis egestas diam a nulla viverra commodo. Proin sed nunc tempus, ultricies magna vel, ornare dolor. Nunc quis tempor lorem, ut ultrices nunc. Integer porta tincidunt scelerisque. Nulla fermentum nec risus eu gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec pretium nibh, eget iaculis odio. Ut pulvinar, dolor euismod lacinia ornare, turpis nibh imperdiet ex, ac faucibus velit tortor ac justo. In a ligula a orci placerat finibus non quis mauris. Mauris vestibulum dui erat, sed mollis augue condimentum dignissim. Quisque semper iaculis tincidunt. Praesent efficitur dignissim odio vel tempus. Fusce vulputate et diam sit amet ullamcorper. Nulla volutpat vulputate nisl, ac posuere augue semper ut.</p>', 'uploads/banners\\mtDA1nlB3HsXXMzXgCLRsV4TrpOihgfa0Q2YWcPW.jpg', 'uploads/banners\\5QJhVSqDQ7ZCq5DNR7tWnNimtPArtMFs57LnPyrH.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec tristique dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec faucibus, lectus a efficitur tempus, elit arcu vehicula enim, in molestie turpis enim eu lectus. Cras tincidunt mauris facilisis, scelerisque libero ac, vestibulum orci. Aliquam ipsum ante, elementum et justo sed, convallis congue nisl. Maecenas non lectus purus. Aenean et erat eu turpis scelerisque egestas vel quis magna. Integer placerat ex facilisis quam condimentum, vel placerat nibh consectetur. In quis nunc libero. Maecenas turpis nunc, rhoncus ac pellentesque ut, pellentesque sit amet lorem. Proin est leo, luctus eget volutpat non, euismod ut mi.</p><p>Cras vel ligula enim. Nullam dignissim hendrerit libero. Donec elit ante, luctus a metus eu, fringilla vulputate magna. Vestibulum ultrices ultrices ante nec imperdiet. In id elit et metus feugiat lobortis at eu arcu. Curabitur mattis tincidunt erat et condimentum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p><p>Integer et rutrum orci, a rutrum massa. In id ex at erat vulputate vulputate. Curabitur eleifend augue odio, eget porta nisi ultricies vitae. Nullam in mauris a metus condimentum consectetur sit amet vitae eros. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed eleifend nibh at mattis egestas. Nunc tempus ligula in eros mattis, id consectetur mi pellentesque. In a augue dictum, feugiat lorem sit amet, mollis ex. Etiam ut suscipit risus. Vivamus tempus sed nunc nec rhoncus. Duis odio nibh, tempus non lectus non, ultricies pellentesque est.</p><p>Nulla laoreet pharetra neque. Morbi fringilla tincidunt commodo. Proin auctor, libero in pulvinar varius, risus turpis finibus enim, a ultricies nisl eros quis turpis. Fusce nulla justo, bibendum vel metus vel, rhoncus malesuada sem. Nullam varius tortor ante, at pellentesque odio elementum vel. Integer sit amet metus fermentum, vestibulum nisi vel, malesuada nisl. Maecenas eu dui dolor. Vestibulum eleifend dictum vestibulum. Sed sed felis vestibulum, molestie nisl a, aliquet nulla. Etiam nec massa mi. Quisque nec elementum ante. Etiam tristique aliquam convallis. Pellentesque posuere nec odio vitae tempor.</p><p>Mauris accumsan metus quis nisi mattis convallis. Suspendisse potenti. Duis egestas diam a nulla viverra commodo. Proin sed nunc tempus, ultricies magna vel, ornare dolor. Nunc quis tempor lorem, ut ultrices nunc. Integer porta tincidunt scelerisque. Nulla fermentum nec risus eu gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec pretium nibh, eget iaculis odio. Ut pulvinar, dolor euismod lacinia ornare, turpis nibh imperdiet ex, ac faucibus velit tortor ac justo. In a ligula a orci placerat finibus non quis mauris. Mauris vestibulum dui erat, sed mollis augue condimentum dignissim. Quisque semper iaculis tincidunt. Praesent efficitur dignissim odio vel tempus. Fusce vulputate et diam sit amet ullamcorper. Nulla volutpat vulputate nisl, ac posuere augue semper ut.</p>', 'uploads/banners\\qV17YxS5ZN08ZoBLd5wUZ03EjWV00A2vuYYezcOG.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec tristique dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec faucibus, lectus a efficitur tempus, elit arcu vehicula enim, in molestie turpis enim eu lectus. Cras tincidunt mauris facilisis, scelerisque libero ac, vestibulum orci. Aliquam ipsum ante, elementum et justo sed, convallis congue nisl. Maecenas non lectus purus. Aenean et erat eu turpis scelerisque egestas vel quis magna. Integer placerat ex facilisis quam condimentum, vel placerat nibh consectetur. In quis nunc libero. Maecenas turpis nunc, rhoncus ac pellentesque ut, pellentesque sit amet lorem. Proin est leo, luctus eget volutpat non, euismod ut mi.</p><p>Cras vel ligula enim. Nullam dignissim hendrerit libero. Donec elit ante, luctus a metus eu, fringilla vulputate magna. Vestibulum ultrices ultrices ante nec imperdiet. In id elit et metus feugiat lobortis at eu arcu. Curabitur mattis tincidunt erat et condimentum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p><p>Integer et rutrum orci, a rutrum massa. In id ex at erat vulputate vulputate. Curabitur eleifend augue odio, eget porta nisi ultricies vitae. Nullam in mauris a metus condimentum consectetur sit amet vitae eros. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed eleifend nibh at mattis egestas. Nunc tempus ligula in eros mattis, id consectetur mi pellentesque. In a augue dictum, feugiat lorem sit amet, mollis ex. Etiam ut suscipit risus. Vivamus tempus sed nunc nec rhoncus. Duis odio nibh, tempus non lectus non, ultricies pellentesque est.</p><p>Nulla laoreet pharetra neque. Morbi fringilla tincidunt commodo. Proin auctor, libero in pulvinar varius, risus turpis finibus enim, a ultricies nisl eros quis turpis. Fusce nulla justo, bibendum vel metus vel, rhoncus malesuada sem. Nullam varius tortor ante, at pellentesque odio elementum vel. Integer sit amet metus fermentum, vestibulum nisi vel, malesuada nisl. Maecenas eu dui dolor. Vestibulum eleifend dictum vestibulum. Sed sed felis vestibulum, molestie nisl a, aliquet nulla. Etiam nec massa mi. Quisque nec elementum ante. Etiam tristique aliquam convallis. Pellentesque posuere nec odio vitae tempor.</p><p>Mauris accumsan metus quis nisi mattis convallis. Suspendisse potenti. Duis egestas diam a nulla viverra commodo. Proin sed nunc tempus, ultricies magna vel, ornare dolor. Nunc quis tempor lorem, ut ultrices nunc. Integer porta tincidunt scelerisque. Nulla fermentum nec risus eu gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec pretium nibh, eget iaculis odio. Ut pulvinar, dolor euismod lacinia ornare, turpis nibh imperdiet ex, ac faucibus velit tortor ac justo. In a ligula a orci placerat finibus non quis mauris. Mauris vestibulum dui erat, sed mollis augue condimentum dignissim. Quisque semper iaculis tincidunt. Praesent efficitur dignissim odio vel tempus. Fusce vulputate et diam sit amet ullamcorper. Nulla volutpat vulputate nisl, ac posuere augue semper ut.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec tristique dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec faucibus, lectus a efficitur tempus, elit arcu vehicula enim, in molestie turpis enim eu lectus. Cras tincidunt mauris facilisis, scelerisque libero ac, vestibulum orci. Aliquam ipsum ante, elementum et justo sed, convallis congue nisl. Maecenas non lectus purus. Aenean et erat eu turpis scelerisque egestas vel quis magna. Integer placerat ex facilisis quam condimentum, vel placerat nibh consectetur. In quis nunc libero. Maecenas turpis nunc, rhoncus ac pellentesque ut, pellentesque sit amet lorem. Proin est leo, luctus eget volutpat non, euismod ut mi.</p><p>Cras vel ligula enim. Nullam dignissim hendrerit libero. Donec elit ante, luctus a metus eu, fringilla vulputate magna. Vestibulum ultrices ultrices ante nec imperdiet. In id elit et metus feugiat lobortis at eu arcu. Curabitur mattis tincidunt erat et condimentum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p><p>Integer et rutrum orci, a rutrum massa. In id ex at erat vulputate vulputate. Curabitur eleifend augue odio, eget porta nisi ultricies vitae. Nullam in mauris a metus condimentum consectetur sit amet vitae eros. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed eleifend nibh at mattis egestas. Nunc tempus ligula in eros mattis, id consectetur mi pellentesque. In a augue dictum, feugiat lorem sit amet, mollis ex. Etiam ut suscipit risus. Vivamus tempus sed nunc nec rhoncus. Duis odio nibh, tempus non lectus non, ultricies pellentesque est.</p><p>Nulla laoreet pharetra neque. Morbi fringilla tincidunt commodo. Proin auctor, libero in pulvinar varius, risus turpis finibus enim, a ultricies nisl eros quis turpis. Fusce nulla justo, bibendum vel metus vel, rhoncus malesuada sem. Nullam varius tortor ante, at pellentesque odio elementum vel. Integer sit amet metus fermentum, vestibulum nisi vel, malesuada nisl. Maecenas eu dui dolor. Vestibulum eleifend dictum vestibulum. Sed sed felis vestibulum, molestie nisl a, aliquet nulla. Etiam nec massa mi. Quisque nec elementum ante. Etiam tristique aliquam convallis. Pellentesque posuere nec odio vitae tempor.</p><p>Mauris accumsan metus quis nisi mattis convallis. Suspendisse potenti. Duis egestas diam a nulla viverra commodo. Proin sed nunc tempus, ultricies magna vel, ornare dolor. Nunc quis tempor lorem, ut ultrices nunc. Integer porta tincidunt scelerisque. Nulla fermentum nec risus eu gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec pretium nibh, eget iaculis odio. Ut pulvinar, dolor euismod lacinia ornare, turpis nibh imperdiet ex, ac faucibus velit tortor ac justo. In a ligula a orci placerat finibus non quis mauris. Mauris vestibulum dui erat, sed mollis augue condimentum dignissim. Quisque semper iaculis tincidunt. Praesent efficitur dignissim odio vel tempus. Fusce vulputate et diam sit amet ullamcorper. Nulla volutpat vulputate nisl, ac posuere augue semper ut.</p>', NULL, '+88 01767671133', 'info@ffuts.net', 'Mohammadpur, Dhaka, Bangladesh', NULL, NULL, NULL, NULL, 'Praesent Finibus Dictum Nisl Sit Amet Vulputate. Fusce A Metus Eu Velit Posuere Semper A Bibendum Ante. Donec Eu Tellus Dapibus, Semper Orci Eget, Commodo Lacu Praesent Ullamcorper.', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Etiam Commodo Vel Ligula.', 'Class Aptent Taciti Sociosqu Ad Litora Torquent Per Conubia Nostra, Per Inceptos Himenaeos.', 'Class Aptent Taciti Sociosqu Ad Litora Torquent Per Conubia Nostra, Per Inceptos Himenaeos.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Mauris Eu Aliquet Odio. Nulla Pretium Congue Eros, Nec Rhoncus Mi<p>', NULL, 'uploads/banners\\LMgnizAEWwt7csiMBZUlBvfJzfdut4TH9U9EYDGQ.jpg', NULL, NULL, NULL, NULL, 'Opps! Page Not Found!', 'Something went wrong. It\'s look like the link is broken or the page is removed.', 'frontend/images/bg/error.png', 'Internal Server Error', 'Something went wrong. It\'s look like the Internal Server has some errors.', 'frontend/default_images/error-banner.png', 'Service Unavailable', 'Something went wrong. It\'s look like the Internal Server has some errors.', 'frontend/default_images/error-banner.png', '2022-12-21 23:31:55', '2023-02-28 06:43:54', '<strong> Copyright 2022 <a href=\"http://arobiloutsourcing.com\" target=\"_blank\"> arobiloutsourcing.com </a>.</strong>\r\n            All Rights Reserved.');

-- --------------------------------------------------------

--
-- Table structure for table `cms_contents`
--

CREATE TABLE `cms_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `translation_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL DEFAULT 0,
  `reason` varchar(255) NOT NULL DEFAULT '0',
  `message` text NOT NULL DEFAULT 0,
  `status` int(3) NOT NULL DEFAULT 0 COMMENT '0 = inactive,\r\n1 = Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `reason`, `message`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Moshiur Rahman Manik', 'arobil@gmail.com', 1770802187, 'Help in finding a franchise', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0, '2023-02-07 23:38:03', '2023-02-07 23:38:03'),
(4, 'Moshiur Rahman', 'moshiur2187@gmail.com', 1770802187, 'This is the best test', 'This is tewt', 0, '2023-02-25 22:30:25', '2023-02-25 22:30:25'),
(5, 'Atik Hasan', 'atik@gmail.com', 1617915291, 'This is the best test', 'This is the best stestt', 0, '2023-02-25 22:34:33', '2023-02-25 22:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `cookies`
--

CREATE TABLE `cookies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `allow_cookies` tinyint(1) NOT NULL DEFAULT 1,
  `cookie_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'gdpr_cookie',
  `cookie_expiration` tinyint(4) NOT NULL DEFAULT 30,
  `force_consent` tinyint(1) NOT NULL DEFAULT 0,
  `darkmode` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approve_button_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decline_button_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cookies`
--

INSERT INTO `cookies` (`id`, `allow_cookies`, `cookie_name`, `cookie_expiration`, `force_consent`, `darkmode`, `language`, `title`, `description`, `approve_button_text`, `decline_button_text`, `created_at`, `updated_at`) VALUES
(1, 1, 'gdpr_cookie', 30, 0, 0, 'en', 'We use cookies!', 'Hi, this website uses essential cookies to ensure its proper operation and tracking cookies to understand how you interact with it. The latter will be set only after consent. <button type=\"button\" data-cc=\"c-settings\" class=\"cc-link\">Let me choose</button>', 'Allow all Cookies', 'Reject all Cookies', '2022-12-21 23:31:56', '2022-12-21 23:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL,
  `is_default` int(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`, `is_default`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93, 0),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355, 0),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213, 1),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684, 0),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376, 0),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244, 0),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264, 0),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268, 0),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54, 0),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374, 0),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297, 0),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61, 0),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43, 0),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994, 0),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242, 0),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973, 0),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880, 0),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246, 0),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375, 0),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32, 0),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501, 0),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229, 0),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441, 0),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975, 0),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591, 0),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387, 0),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267, 0),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55, 0),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246, 0),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673, 0),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359, 0),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226, 0),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257, 0),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855, 0),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237, 0),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1, 0),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238, 0),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345, 0),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236, 0),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235, 0),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56, 0),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86, 0),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61, 0),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672, 0),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57, 0),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269, 0),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242, 0),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242, 0),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682, 0),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506, 0),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225, 0),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385, 0),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53, 0),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357, 0),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420, 0),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45, 0),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253, 0),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767, 0),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809, 0),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593, 0),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20, 0),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503, 0),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240, 0),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291, 0),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372, 0),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251, 0),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500, 0),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298, 0),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679, 0),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358, 0),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33, 0),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594, 0),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689, 0),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241, 0),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220, 0),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995, 0),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49, 0),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233, 0),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350, 0),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30, 0),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299, 0),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473, 0),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590, 0),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671, 0),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502, 0),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224, 0),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245, 0),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592, 0),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509, 0),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39, 0),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504, 0),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852, 0),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36, 0),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354, 0),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91, 0),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62, 0),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98, 0),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964, 0),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353, 0),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972, 0),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39, 0),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876, 0),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81, 0),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962, 0),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7, 0),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254, 0),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686, 0),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850, 0),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82, 0),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965, 0),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996, 0),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856, 0),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371, 0),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961, 0),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266, 0),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231, 0),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218, 0),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423, 0),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370, 0),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352, 0),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853, 0),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389, 0),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261, 0),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265, 0),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60, 0),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960, 0),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223, 0),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356, 0),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692, 0),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596, 0),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222, 0),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230, 0),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269, 0),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52, 0),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691, 0),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373, 0),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377, 0),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976, 0),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664, 0),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212, 0),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258, 0),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95, 0),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264, 0),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674, 0),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977, 0),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31, 0),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599, 0),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687, 0),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64, 0),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505, 0),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227, 0),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234, 0),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683, 0),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672, 0),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670, 0),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47, 0),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968, 0),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92, 0),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680, 0),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970, 0),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507, 0),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675, 0),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595, 0),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51, 0),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63, 0),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48, 0),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351, 0),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787, 0),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974, 0),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262, 0),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40, 0),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70, 0),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250, 0),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290, 0),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869, 0),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758, 0),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508, 0),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784, 0),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684, 0),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378, 0),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239, 0),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966, 0),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221, 0),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381, 0),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248, 0),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232, 0),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65, 0),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421, 0),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386, 0),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677, 0),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252, 0),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27, 0),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34, 0),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94, 0),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249, 0),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597, 0),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47, 0),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268, 0),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46, 0),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41, 0),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963, 0),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886, 0),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992, 0),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255, 0),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66, 0),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670, 0),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228, 0),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690, 0),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676, 0),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868, 0),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216, 0),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90, 0),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370, 0),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649, 0),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688, 0),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256, 0),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380, 0),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971, 0),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44, 0),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1, 0),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1, 0),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598, 0),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998, 0),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678, 0),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58, 0),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84, 0),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284, 0),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340, 0),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681, 0),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212, 0),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967, 0),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260, 0),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263, 0);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `symbol_position`, `created_at`, `updated_at`) VALUES
(1, 'United State Dollar', 'USD', '$', 'left', '2022-12-21 23:31:56', '2022-12-21 23:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_group_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('text','textarea','select','radio','file','url','number','date','checkbox','checkbox_multiple') COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `filterable` tinyint(1) NOT NULL DEFAULT 0,
  `listable` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fas fa-cube',
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_groups`
--

CREATE TABLE `custom_field_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `database_backups`
--

CREATE TABLE `database_backups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faq_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faq_category_id`, `question`, `answer`, `created_at`, `updated_at`, `code`) VALUES
(2, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec tristique dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec faucibus, lectus a efficitur tempus, elit arcu vehicula enim, in molestie turpis enim eu lectus. Cras tincidunt mauris facilisis, scelerisque libero ac, vestibulum orci. Aliquam ipsum ante, elementum et justo sed, convallis congue nisl. Maecenas non lectus purus. Aenean et erat eu turpis scelerisque egestas vel quis magna. Integer placerat ex facilisis quam condimentum, vel placerat nibh consectetur. In quis nunc libero. Maecenas turpis nunc, rhoncus ac pellentesque ut, pellentesque sit amet lorem. Proin est leo, luctus eget volutpat non, euismod ut mi.', '2023-02-19 04:00:35', '2023-02-19 04:00:35', NULL),
(3, NULL, 'Cras vel ligula enim. Nullam dignissim hendrerit libero?', 'Cras vel ligula enim. Nullam dignissim hendrerit libero. Donec elit ante, luctus a metus eu, fringilla vulputate magna. Vestibulum ultrices ultrices ante nec imperdiet. In id elit et metus feugiat lobortis at eu arcu. Curabitur mattis tincidunt erat et condimentum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;', '2023-02-19 04:01:11', '2023-02-19 04:01:11', NULL),
(4, NULL, 'Integer et rutrum orci, a rutrum massa', 'Integer et rutrum orci, a rutrum massa. In id ex at erat vulputate vulputate. Curabitur eleifend augue odio, eget porta nisi ultricies vitae. Nullam in mauris a metus condimentum consectetur sit amet vitae eros. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed eleifend nibh at mattis egestas. Nunc tempus ligula in eros mattis, id consectetur mi pellentesque. In a augue dictum, feugiat lorem sit amet, mollis ex. Etiam ut suscipit risus. Vivamus tempus sed nunc nec rhoncus. Duis odio nibh, tempus non lectus non, ultricies pellentesque est.', '2023-02-19 04:01:39', '2023-02-19 04:01:39', NULL),
(5, NULL, 'Nulla laoreet pharetra neque. Morbi fringilla', 'Nulla laoreet pharetra neque. Morbi fringilla tincidunt commodo. Proin auctor, libero in pulvinar varius, risus turpis finibus enim, a ultricies nisl eros quis turpis. Fusce nulla justo, bibendum vel metus vel, rhoncus malesuada sem. Nullam varius tortor ante, at pellentesque odio elementum vel. Integer sit amet metus fermentum, vestibulum nisi vel, malesuada nisl. Maecenas eu dui dolor. Vestibulum eleifend dictum vestibulum. Sed sed felis vestibulum, molestie nisl a, aliquet nulla. Etiam nec massa mi. Quisque nec elementum ante. Etiam tristique aliquam convallis. Pellentesque posuere nec odio vitae tempor.', '2023-02-19 04:02:07', '2023-02-19 04:02:07', NULL),
(6, NULL, 'Mauris accumsan metus quis nisi mattis convallis. Suspendisse', 'Mauris accumsan metus quis nisi mattis convallis. Suspendisse potenti. Duis egestas diam a nulla viverra commodo. Proin sed nunc tempus, ultricies magna vel, ornare dolor. Nunc quis tempor lorem, ut ultrices nunc. Integer porta tincidunt scelerisque. Nulla fermentum nec risus eu gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec pretium nibh, eget iaculis odio. Ut pulvinar, dolor euismod lacinia ornare, turpis nibh imperdiet ex', '2023-02-19 04:02:36', '2023-02-19 04:02:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon`, `direction`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'flag-icon-gb', 'ltr', '2022-12-21 23:31:56', '2022-12-21 23:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `manual_payments`
--

CREATE TABLE `manual_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('bank_payment','cash_payment','check_payment','custom_payment') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messengers`
--

CREATE TABLE `messengers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_id` bigint(20) UNSIGNED NOT NULL,
  `to_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2012_07_14_154223_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_12_184107_create_permission_tables', 1),
(5, '2020_12_20_161857_create_brands_table', 1),
(6, '2021_02_17_110211_create_testimonials_table', 1),
(7, '2021_02_18_112239_create_admins_table', 1),
(8, '2021_08_22_051131_create_categories_table', 1),
(9, '2021_08_22_051134_create_sub_categories_table', 1),
(10, '2021_08_22_051135_create_ads_table', 1),
(11, '2021_08_22_051198_create_post_categories_table', 1),
(12, '2021_08_22_051199_create_posts_table', 1),
(13, '2021_08_23_115402_create_settings_table', 1),
(14, '2021_08_25_061331_create_languages_table', 1),
(15, '2021_09_04_105120_create_blog_comments_table', 1),
(16, '2021_09_05_120235_create_ad_features_table', 1),
(17, '2021_09_05_120248_create_ad_galleries_table', 1),
(18, '2021_09_19_141812_create_plans_table', 1),
(19, '2021_11_13_114825_create_messengers_table', 1),
(20, '2021_11_15_112417_create_user_plans_table', 1),
(21, '2021_11_15_112949_create_transactions_table', 1),
(22, '2021_12_14_142236_create_emails_table', 1),
(23, '2021_12_15_161624_create_module_settings_table', 1),
(24, '2021_12_19_101413_create_cms_table', 1),
(25, '2021_12_19_152529_create_faq_categories_table', 1),
(26, '2021_12_21_105713_create_faqs_table', 1),
(27, '2022_01_25_131111_add_fields_to_settings_table', 1),
(28, '2022_01_26_091457_add_social_login_fields_to_users_table', 1),
(29, '2022_02_16_152704_add_loader_fields_to_settings_table', 1),
(30, '2022_03_05_125615_create_currencies_table', 1),
(31, '2022_03_08_110749_add_website_configuration_to_settings_table', 1),
(32, '2022_03_27_175435_create_orders_table', 1),
(33, '2022_03_28_093629_add_socialite_column_to_users_table', 1),
(34, '2022_03_29_100616_create_timezones_table', 1),
(35, '2022_03_29_121851_create_admin_searches_table', 1),
(36, '2022_03_30_082959_create_cookies_table', 1),
(37, '2022_03_30_114924_create_seos_table', 1),
(38, '2022_03_30_121200_create_database_backups_table', 1),
(39, '2022_04_25_132657_create_setup_guides_table', 1),
(40, '2022_04_28_134721_create_mobile_app_configs_table', 1),
(41, '2022_04_28_142433_create_mobile_app_sliders_table', 1),
(42, '2022_06_06_041744_add_field_to_users_table', 1),
(43, '2022_06_06_052533_create_notifications_table', 1),
(44, '2022_06_06_092421_create_themes_table', 1),
(45, '2022_06_08_053638_create_custom_field_groups_table', 1),
(46, '2022_06_08_060821_create_custom_fields_table', 1),
(47, '2022_06_08_061216_create_custom_field_values_table', 1),
(48, '2022_06_08_061928_create_category_custom_field_table', 1),
(49, '2022_06_08_091126_create_product_custom_fields_table', 1),
(50, '2022_06_14_051918_add_fields_to_user_plans_table', 1),
(51, '2022_06_14_095728_add_fields_to_plans_table', 1),
(52, '2022_06_18_031525_add_full_address_to_ads_table', 1),
(53, '2022_06_27_050337_add_map_to_settings_table', 1),
(54, '2022_07_03_030110_add_whatsapp_field_to_ads_table', 1),
(55, '2022_07_04_042533_create_jobs_table', 1),
(56, '2022_07_05_081552_create_reports_table', 1),
(57, '2022_07_05_112407_create_social_media_table', 1),
(58, '2022_07_14_151623_create_wishlists_table', 1),
(59, '2022_07_14_155901_create_reviews_table', 1),
(60, '2022_07_24_110337_create_user_device_token_tbale', 1),
(61, '2022_07_25_024244_add_push_notification_settings_table', 1),
(62, '2022_08_20_041304_add_social_fields_to_settings_table', 1),
(63, '2022_10_16_063305_add_language_field_to_faqs_tables', 1),
(64, '2022_10_16_063328_add_language_field_to_testimonials_tables', 1),
(65, '2022_12_14_093056_add_currency_switcher_to_settings_table', 1),
(66, '2022_12_15_023253_add_column_to_cms_table', 1),
(67, '2022_12_15_063353_create_seo_page_contents_table', 1),
(68, '2022_12_15_095002_create_cms_contents_table', 1),
(69, '2022_12_15_095218_add_leaflet_map_field_to_settings_table', 1),
(70, '2022_12_20_161622_add_seller_id_field_to_reviews_table', 1),
(71, '2022_12_20_170445_create_manual_payments_table', 1),
(72, '2022_12_20_183735_add_manual_payment_id_field_to_transactions_table', 1),
(73, '2022_12_22_024910_create_order_permission_seeder_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_app_configs`
--

CREATE TABLE `mobile_app_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `android_download_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios_download_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_and_condition_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mobile_app_configs`
--

INSERT INTO `mobile_app_configs` (`id`, `android_download_url`, `ios_download_url`, `privacy_url`, `support_url`, `terms_and_condition_url`, `created_at`, `updated_at`) VALUES
(1, 'https://play.google.com/store/apps/details?id=com.app.appname', 'https://apps.apple.com/us/app/app-name/id1440990079', 'https://www.appname.com/privacy-policy', 'https://www.appname.com/support', 'https://www.appname.com/terms-and-conditions', '2022-12-21 23:31:56', '2022-12-21 23:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `mobile_app_sliders`
--

CREATE TABLE `mobile_app_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `background` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_settings`
--

CREATE TABLE `module_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog` tinyint(1) NOT NULL DEFAULT 1,
  `newsletter` tinyint(1) NOT NULL DEFAULT 1,
  `language` tinyint(1) NOT NULL DEFAULT 1,
  `contact` tinyint(1) NOT NULL DEFAULT 1,
  `faq` tinyint(1) NOT NULL DEFAULT 1,
  `testimonial` tinyint(1) NOT NULL DEFAULT 1,
  `price_plan` tinyint(1) NOT NULL DEFAULT 1,
  `appearance` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_settings`
--

INSERT INTO `module_settings` (`id`, `blog`, `newsletter`, `language`, `contact`, `faq`, `testimonial`, `price_plan`, `appearance`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('65bbde16-718c-4c9a-9d52-4594827bcff4', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\User', 11, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/ad\\/details\\/deal-locally-and-meet-in-person-beware-shipping-wire-transfers-cashier-checks\"}', NULL, '2023-02-19 04:58:20', '2023-02-19 04:58:20'),
('ab1e79f3-f4c9-47e9-bc2d-84b22e90a5ad', 'App\\Notifications\\AdApprovedNotification', 'App\\Models\\User', 11, '{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/ad\\/details\\/deal-locally-and-meet-in-person-beware-shipping-wire-transfers-cashier-checks\"}', NULL, '2023-02-19 04:58:15', '2023-02-19 04:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `payment_status` enum('1','2','3') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=Waiting for payment, 2=Already paid, 3=Expired',
  `snap_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.view', 'admin', 'dashboard', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(2, 'admin.create', 'admin', 'admin', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(3, 'admin.view', 'admin', 'admin', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(4, 'admin.edit', 'admin', 'admin', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(5, 'admin.delete', 'admin', 'admin', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(6, 'role.create', 'admin', 'role', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(7, 'role.view', 'admin', 'role', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(8, 'role.edit', 'admin', 'role', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(9, 'role.delete', 'admin', 'role', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(10, 'map.create', 'admin', 'map', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(11, 'map.view', 'admin', 'map', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(12, 'map.edit', 'admin', 'map', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(13, 'map.delete', 'admin', 'map', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(14, 'profile.view', 'admin', 'profile', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(15, 'profile.edit', 'admin', 'profile', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(16, 'setting.view', 'admin', 'settings', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(17, 'setting.update', 'admin', 'settings', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(18, 'ad.create', 'admin', 'ad', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(19, 'ad.view', 'admin', 'ad', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(20, 'ad.update', 'admin', 'ad', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(21, 'ad.delete', 'admin', 'ad', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(22, 'category.create', 'admin', 'category', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(23, 'category.view', 'admin', 'category', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(24, 'category.update', 'admin', 'category', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(25, 'category.delete', 'admin', 'category', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(26, 'subcategory.create', 'admin', 'category', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(27, 'subcategory.view', 'admin', 'category', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(28, 'subcategory.update', 'admin', 'category', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(29, 'subcategory.delete', 'admin', 'category', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(30, 'custom-field.create', 'admin', 'custom-field', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(31, 'custom-field.view', 'admin', 'custom-field', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(32, 'custom-field.update', 'admin', 'custom-field', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(33, 'custom-field.delete', 'admin', 'custom-field', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(34, 'custom-field-group.create', 'admin', 'custom-field', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(35, 'custom-field-group.view', 'admin', 'custom-field', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(36, 'custom-field-group.update', 'admin', 'custom-field', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(37, 'custom-field-group.delete', 'admin', 'custom-field', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(38, 'newsletter.view', 'admin', 'newsletter', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(39, 'newsletter.mailsend', 'admin', 'newsletter', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(40, 'newsletter.delete', 'admin', 'newsletter', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(41, 'brand.create', 'admin', 'brand', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(42, 'brand.view', 'admin', 'brand', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(43, 'brand.update', 'admin', 'brand', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(44, 'brand.delete', 'admin', 'brand', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(45, 'plan.create', 'admin', 'plan', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(46, 'plan.view', 'admin', 'plan', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(47, 'plan.update', 'admin', 'plan', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(48, 'plan.delete', 'admin', 'plan', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(49, 'postcategory.create', 'admin', 'Blog', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(50, 'postcategory.view', 'admin', 'Blog', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(51, 'postcategory.update', 'admin', 'Blog', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(52, 'postcategory.delete', 'admin', 'Blog', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(53, 'post.create', 'admin', 'Blog', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(54, 'post.view', 'admin', 'Blog', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(55, 'post.update', 'admin', 'Blog', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(56, 'post.delete', 'admin', 'Blog', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(57, 'tag.create', 'admin', 'Blog', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(58, 'tag.view', 'admin', 'Blog', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(59, 'tag.update', 'admin', 'Blog', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(60, 'tag.delete', 'admin', 'Blog', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(61, 'testimonial.create', 'admin', 'testimonial', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(62, 'testimonial.view', 'admin', 'testimonial', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(63, 'testimonial.update', 'admin', 'testimonial', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(64, 'testimonial.delete', 'admin', 'testimonial', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(65, 'faqcategory.create', 'admin', 'faq', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(66, 'faqcategory.view', 'admin', 'faq', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(67, 'faqcategory.update', 'admin', 'faq', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(68, 'faqcategory.delete', 'admin', 'faq', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(69, 'faq.create', 'admin', 'faq', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(70, 'faq.view', 'admin', 'faq', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(71, 'faq.update', 'admin', 'faq', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(72, 'faq.delete', 'admin', 'faq', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(73, 'customer.view', 'admin', 'others', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(74, 'contact.view', 'admin', 'others', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(75, 'order.create', 'admin', 'order', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(76, 'order.view', 'admin', 'order', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(77, 'order.edit', 'admin', 'order', '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(78, 'order.delete', 'admin', 'order', '2022-12-21 23:31:56', '2022-12-21 23:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `ad_limit` int(11) NOT NULL,
  `featured_limit` int(11) NOT NULL,
  `badge` tinyint(1) NOT NULL,
  `recommended` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `interval` enum('monthly','yearly','custom_date') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_interval_days` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_custom_fields`
--

CREATE TABLE `product_custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_group_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `order_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `title`, `price`, `status`, `order_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, '1 week', 7, 1, 1, '2023-02-25 15:29:47', 1, '2023-02-25 15:27:54', NULL),
(2, '1 month', 21, 1, 2, '2023-02-25 15:29:47', 1, '2023-02-26 10:34:22', 1),
(3, '3 months', 604, 1, 34, '2023-02-25 15:29:47', 1, '2023-02-26 10:24:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `report_from_id` bigint(20) UNSIGNED NOT NULL,
  `report_to_id` bigint(20) UNSIGNED NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `stars` int(11) NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'admin', '2022-12-21 23:31:55', '2022-12-21 23:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
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
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `page_slug`, `created_at`, `updated_at`) VALUES
(1, 'home', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(2, 'about', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(3, 'contact', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(4, 'ads', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(5, 'blog', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(6, 'pricing', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(7, 'login', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(8, 'register', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(9, 'faq', '2022-12-21 23:31:55', '2022-12-21 23:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `seo_page_contents`
--

CREATE TABLE `seo_page_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `language_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_page_contents`
--

INSERT INTO `seo_page_contents` (`id`, `page_id`, `language_code`, `title`, `keywords`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'ffuts', 'ffuts', 'Adlisting - Laravel Classified Ads is a PHP script with minimal, clean, flexible, and structured code. This script will provide you amazing user interface with lots of dynamic frontend and backend features.', 'uploads/images/seo/1677334240_63fa16e098b7b.jpg', '2022-12-21 23:31:55', '2023-02-25 14:10:40'),
(2, 2, 'en', 'About', NULL, 'Adlisting - Laravel Classified Ads is a PHP script with minimal, clean, flexible, and structured code. This script will provide you amazing user interface with lots of dynamic frontend and backend features.', 'backend/image/default.png', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(3, 3, 'en', 'About', NULL, 'Adlisting - Laravel Classified Ads is a PHP script with minimal, clean, flexible, and structured code. This script will provide you amazing user interface with lots of dynamic frontend and backend features.', 'backend/image/default.png', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(4, 4, 'en', 'Ads', NULL, 'Adlisting - Laravel Classified Ads is a PHP script with minimal, clean, flexible, and structured code. This script will provide you amazing user interface with lots of dynamic frontend and backend features.', 'backend/image/default.png', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(5, 5, 'en', 'Blog', NULL, 'Adlisting - Laravel Classified Ads is a PHP script with minimal, clean, flexible, and structured code. This script will provide you amazing user interface with lots of dynamic frontend and backend features.', 'backend/image/default.png', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(6, 6, 'en', 'Pricing', NULL, 'Adlisting - Laravel Classified Ads is a PHP script with minimal, clean, flexible, and structured code. This script will provide you amazing user interface with lots of dynamic frontend and backend features.', 'backend/image/default.png', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(7, 7, 'en', 'Login', NULL, 'Adlisting - Laravel Classified Ads is a PHP script with minimal, clean, flexible, and structured code. This script will provide you amazing user interface with lots of dynamic frontend and backend features.', 'backend/image/default.png', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(8, 8, 'en', 'Register', NULL, 'Adlisting - Laravel Classified Ads is a PHP script with minimal, clean, flexible, and structured code. This script will provide you amazing user interface with lots of dynamic frontend and backend features.', 'backend/image/default.png', '2022-12-21 23:31:55', '2022-12-21 23:31:55'),
(9, 9, 'en', 'FAQ', NULL, 'Adlisting - Laravel Classified Ads is a PHP script with minimal, clean, flexible, and structured code. This script will provide you amazing user interface with lots of dynamic frontend and backend features.', 'backend/image/default.png', '2022-12-21 23:31:55', '2022-12-21 23:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `white_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_script` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_script` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_featured_ad_limit` int(11) NOT NULL DEFAULT 3,
  `regular_ads_homepage` tinyint(1) NOT NULL DEFAULT 0,
  `featured_ads_homepage` tinyint(1) NOT NULL DEFAULT 1,
  `customer_email_verification` tinyint(1) NOT NULL DEFAULT 0,
  `maximum_ad_image_limit` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `subscription_type` enum('one_time','recurring') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'one_time',
  `ads_admin_approval` tinyint(1) NOT NULL DEFAULT 0,
  `free_ad_limit` int(11) NOT NULL DEFAULT 5,
  `sidebar_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nav_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_txt_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nav_txt_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accent_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frontend_primary_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frontend_secondary_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `facebook_pixel` tinyint(1) NOT NULL DEFAULT 0,
  `google_analytics` tinyint(1) NOT NULL DEFAULT 0,
  `search_engine_indexing` tinyint(1) NOT NULL DEFAULT 1,
  `default_layout` tinyint(1) NOT NULL DEFAULT 1,
  `website_loader` tinyint(1) NOT NULL DEFAULT 1,
  `loader_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_changing` tinyint(1) NOT NULL DEFAULT 1,
  `email_verification` tinyint(1) NOT NULL DEFAULT 0,
  `watermark_status` tinyint(1) NOT NULL DEFAULT 0,
  `watermark_type` enum('text','image') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `watermark_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ZakirSoft',
  `watermark_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'frontend/images/logo.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `default_map` enum('google-map','map-box','leaflet') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'leaflet',
  `google_map_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_box_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_long` double NOT NULL DEFAULT -100,
  `default_lat` double NOT NULL DEFAULT 40,
  `push_notification_status` tinyint(1) NOT NULL DEFAULT 1,
  `server_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_bucket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `messaging_sender_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `measurement_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkdin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_changing` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo_image`, `white_logo`, `favicon_image`, `header_css`, `header_script`, `body_script`, `free_featured_ad_limit`, `regular_ads_homepage`, `featured_ads_homepage`, `customer_email_verification`, `maximum_ad_image_limit`, `subscription_type`, `ads_admin_approval`, `free_ad_limit`, `sidebar_color`, `nav_color`, `sidebar_txt_color`, `nav_txt_color`, `main_color`, `accent_color`, `frontend_primary_color`, `frontend_secondary_color`, `dark_mode`, `facebook_pixel`, `google_analytics`, `search_engine_indexing`, `default_layout`, `website_loader`, `loader_image`, `language_changing`, `email_verification`, `watermark_status`, `watermark_type`, `watermark_text`, `watermark_image`, `created_at`, `updated_at`, `default_map`, `google_map_key`, `map_box_key`, `default_long`, `default_lat`, `push_notification_status`, `server_key`, `api_key`, `auth_domain`, `project_id`, `storage_bucket`, `messaging_sender_id`, `app_id`, `measurement_id`, `facebook`, `twitter`, `instagram`, `youtube`, `linkdin`, `whatsapp`, `currency_changing`) VALUES
(1, 'frontend/images/logo.png', 'uploads/app/logo/tQQ2FBSBjYW1uSthZZhabwu7Hdu3YVer4qmgsFyn.png', 'uploads/app/logo\\t4IcwhOvmjva7IzqeKeYHP5Jmzs8Oal3VKHCGUAk.png', NULL, NULL, NULL, 1, 0, 1, 0, 5, 'recurring', 0, 3, '#022446', '#0a243e', '#e0e9f2', '#e0e9f2', '#05c279', '#ffc107', 'rgba(130, 16, 198, 1)', 'rgba(198, 12, 76, 1)', 0, 0, 0, 1, 1, 0, NULL, 1, 1, 0, 'text', 'ZakirSoft', 'frontend/images/logo.png', '2022-12-21 23:31:56', '2023-02-28 06:23:00', 'map-box', '', '', 90.411270491741, 23.757853442383, 0, 'your-server-key', 'your-api-key', 'your-auth-domain', 'your-project-id', 'your-storage-bucket', 'your-messaging-sender-id', 'your-app-id', 'your-measurement-id', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com', 'https://www.linkedin.com', 'https://web.whatsapp.com/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `setup_guides`
--

CREATE TABLE `setup_guides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_route` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setup_guides`
--

INSERT INTO `setup_guides` (`id`, `task_name`, `title`, `description`, `action_route`, `action_label`, `status`, `created_at`, `updated_at`) VALUES
(1, 'app_setting', 'App Information ', 'Add your app logo, name, description, owner and other information.', 'settings.general', 'Add App Information', 1, '2022-12-21 23:31:56', '2023-02-28 06:23:00'),
(2, 'smtp_setting', 'SMTP Configuration', 'Add your app logo, name, description, owner and other information.', 'settings.email', 'Add Mail Configuration', 1, '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(3, 'payment_setting', 'Enable Payment Method', 'Enable to payment methods to receive payments from your customer.', 'settings.payment', 'Add Payment', 1, '2022-12-21 23:31:56', '2023-03-01 00:38:29'),
(4, 'theme_setting', 'Customize Theme', 'Customize your theme to make your app look more attractive.', 'settings.theme', 'Customize Your App Now', 1, '2022-12-21 23:31:56', '2023-02-18 03:12:09'),
(5, 'map_setting', 'Map Configuration', 'Configure your map setting api to create ad in any location.', 'settings.system', 'Add Map API', 1, '2022-12-21 23:31:56', '2022-12-21 23:31:56'),
(6, 'pusher_setting', 'Pusher Configuration', 'Configure your pusher setting api for the chat application', 'settings.system', 'Add Pusher API', 1, '2022-12-21 23:31:56', '2022-12-21 23:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `social_media` enum('facebook','twitter','instagram','youtube','linkedin','pinterest','reddit','github','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ad_type_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `ad_type_id`) VALUES
(1, 8, 'activities', 'activities', 1, '2023-02-22 09:48:37', '2023-02-22 09:48:37', 25),
(2, 8, 'artists', 'artists', 1, '2023-02-22 09:48:59', '2023-02-22 09:48:59', 25),
(3, 9, 'flats/housing', 'flatshousing', 1, '2023-02-22 09:51:19', '2023-02-22 09:51:19', 19),
(4, 8, 'childcare', 'childcare', 1, '2023-02-22 10:16:52', '2023-02-22 10:16:52', 25),
(5, 8, 'classes', 'classes', 1, '2023-02-22 10:18:54', '2023-02-22 10:18:54', 25),
(6, 8, 'events', 'events', 1, '2023-02-22 10:19:14', '2023-02-22 10:19:14', 25),
(7, 8, 'general', 'general', 1, '2023-02-22 10:19:49', '2023-02-22 10:19:49', 25),
(8, 8, 'groups', 'groups', 1, '2023-02-22 10:20:27', '2023-02-22 10:20:27', 25),
(9, 8, 'local news', 'local-news', 1, '2023-02-22 10:20:50', '2023-02-22 10:20:50', 25),
(10, 8, 'lost+found', 'lostfound', 1, '2023-02-22 10:21:57', '2023-02-22 10:21:57', 25),
(11, 8, 'missed connections', 'missed-connections', 1, '2023-02-22 10:22:12', '2023-02-22 10:22:12', 25),
(12, 8, 'musicians', 'musicians', 1, '2023-02-22 10:22:31', '2023-02-22 10:22:31', 25),
(13, 8, 'pets', 'pets', 1, '2023-02-22 10:22:50', '2023-02-22 10:22:50', 25),
(14, 8, 'politics', 'politics', 1, '2023-02-22 10:23:15', '2023-02-22 10:23:15', 25),
(15, 8, 'rants & raves', 'rants-raves', 1, '2023-02-22 10:23:38', '2023-02-22 10:23:38', 25),
(16, 8, 'rideshare', 'rideshare', 1, '2023-02-22 10:23:56', '2023-02-22 10:23:56', 25),
(17, 8, 'volunteers', 'volunteers', 1, '2023-02-22 10:24:13', '2023-02-22 10:24:13', 25),
(18, 8, 'services', 'services', 1, '2023-02-22 10:24:27', '2023-02-22 10:24:27', 25),
(19, 9, 'rooms / shared', 'rooms-shared', 1, '2023-02-22 10:31:19', '2023-02-22 10:31:19', 18),
(20, 9, 'apts / housing', 'apts-housing', 1, '2023-02-22 10:32:04', '2023-02-22 10:32:04', 18),
(21, 9, 'housing swap', 'housing-swap', 1, '2023-02-22 10:33:12', '2023-02-22 10:33:12', 18),
(22, 9, 'office / commercial', 'office-commercial', 1, '2023-02-22 10:34:44', '2023-02-22 10:34:44', 18),
(23, 9, 'parking / storage', 'parking-storage', 1, '2023-02-22 10:35:18', '2023-02-22 10:35:18', 18),
(24, 9, 'vacation rentals', 'vacation-rentals', 1, '2023-02-22 10:36:13', '2023-02-22 10:36:13', 18),
(25, 9, 'sublets / temporary', 'sublets-temporary', 1, '2023-02-22 10:36:45', '2023-02-22 10:36:45', 18),
(26, 9, 'real estate for sale', 'real-estate-for-sale', 1, '2023-02-22 10:37:42', '2023-02-22 10:37:42', 18),
(27, 9, 'rooms wanted', 'rooms-wanted', 1, '2023-02-22 10:42:53', '2023-02-22 10:42:53', 19),
(28, 9, 'housing wanted', 'housing-wanted', 1, '2023-02-22 10:43:23', '2023-02-22 10:43:23', 19),
(29, 11, 'automotive', 'automotive', 1, '2023-02-22 10:45:42', '2023-02-22 10:45:42', 24),
(30, 11, 'beauty', 'beauty', 1, '2023-02-22 10:46:18', '2023-02-22 10:46:18', 24),
(31, 11, 'cell/mobile', 'cellmobile', 1, '2023-02-22 10:47:12', '2023-02-22 10:47:12', 24),
(32, 11, 'computer', 'computer', 1, '2023-02-22 10:47:31', '2023-02-22 10:47:31', 24),
(33, 11, 'creative', 'creative', 1, '2023-02-22 10:47:55', '2023-02-22 10:47:55', 24),
(34, 11, 'cycle', 'cycle', 1, '2023-02-22 10:48:10', '2023-02-22 10:48:10', 24),
(35, 11, 'event', 'event', 1, '2023-02-22 10:48:38', '2023-02-22 10:48:38', 24),
(36, 11, 'farm+garden', 'farmgarden', 1, '2023-02-22 10:48:56', '2023-02-22 10:48:56', 24),
(37, 11, 'financial', 'financial', 1, '2023-02-22 10:49:09', '2023-02-22 10:49:09', 24),
(38, 11, 'health/well', 'healthwell', 1, '2023-02-22 10:49:29', '2023-02-22 10:49:29', 24),
(39, 11, 'household', 'household', 1, '2023-02-22 10:49:49', '2023-02-22 10:49:49', 24),
(40, 11, 'labor/move', 'labormove', 1, '2023-02-22 10:50:08', '2023-02-22 10:50:08', 24),
(41, 11, 'legal', 'legal', 1, '2023-02-22 10:50:22', '2023-02-22 10:50:22', 24),
(42, 11, 'lessons', 'lessons', 1, '2023-02-22 10:50:45', '2023-02-22 10:50:45', 24),
(43, 11, 'marine', 'marine', 1, '2023-02-22 10:50:59', '2023-02-22 10:50:59', 24),
(44, 11, 'pet', 'pet', 1, '2023-02-22 10:51:13', '2023-02-22 10:51:13', 24),
(45, 11, 'real estate', 'real-estate', 1, '2023-02-22 10:51:29', '2023-02-22 10:51:29', 24),
(46, 11, 'skilled trade', 'skilled-trade', 1, '2023-02-22 10:52:11', '2023-02-22 10:52:11', 24),
(47, 11, 'sm biz ads', 'sm-biz-ads', 1, '2023-02-22 10:52:28', '2023-02-22 10:52:28', 24),
(48, 11, 'travel/vac', 'travelvac', 1, '2023-02-22 10:52:55', '2023-02-22 10:52:55', 24),
(49, 11, 'write/ed/tran', 'writeedtran', 1, '2023-02-22 10:53:21', '2023-02-22 10:53:21', 24),
(50, 10, 'gigs', 'gigs', 1, '2023-02-22 10:56:36', '2023-02-22 10:56:36', 17),
(51, 10, 'admin / office', 'admin-office', 1, '2023-02-22 10:58:35', '2023-02-22 10:58:35', 15),
(52, 10, 'arch / engineering', 'arch-engineering', 1, '2023-02-22 10:58:50', '2023-02-22 10:58:50', 15),
(53, 10, 'art / media / design', 'art-media-design', 1, '2023-02-22 10:59:08', '2023-02-22 10:59:08', 15),
(54, 10, 'business / mgmt', 'business-mgmt', 1, '2023-02-22 11:00:02', '2023-02-22 11:00:02', 15),
(55, 10, 'customer service', 'customer-service', 1, '2023-02-22 11:00:36', '2023-02-22 11:00:36', 15),
(56, 10, 'education', 'education', 1, '2023-02-22 11:01:00', '2023-02-22 11:01:00', 15),
(57, 10, 'food / bev / hosp', 'food-bev-hosp', 1, '2023-02-22 11:01:43', '2023-02-22 11:01:43', 15),
(58, 10, 'general labor', 'general-labor', 1, '2023-02-22 11:02:22', '2023-02-22 11:02:22', 15),
(59, 10, 'government', 'government', 1, '2023-02-22 11:02:38', '2023-02-22 11:02:38', 15),
(60, 10, 'human resources', 'human-resources', 1, '2023-02-22 11:16:28', '2023-02-22 11:16:28', 15),
(61, 10, 'legal / paralegal', 'legal-paralegal', 1, '2023-02-22 11:16:50', '2023-02-22 11:16:50', 15),
(62, 10, 'manufacturing', 'manufacturing', 1, '2023-02-22 11:17:10', '2023-02-22 11:17:10', 15),
(63, 10, 'marketing / pr / ad', 'marketing-pr-ad', 1, '2023-02-22 11:17:32', '2023-02-22 11:17:32', 15),
(64, 10, 'medical / health', 'medical-health', 1, '2023-02-22 11:17:57', '2023-02-22 11:17:57', 15),
(65, 10, 'nonprofit sector', 'nonprofit-sector', 1, '2023-02-22 11:18:25', '2023-02-22 11:18:25', 15),
(66, 10, 'retail / wholesale', 'retail-wholesale', 1, '2023-02-22 11:19:28', '2023-02-22 11:19:28', 15),
(67, 10, 'sales / biz dev', 'sales-biz-dev', 1, '2023-02-22 11:20:12', '2023-02-22 11:20:12', 15),
(68, 10, 'salon / spa / fitness', 'salon-spa-fitness', 1, '2023-02-22 11:20:27', '2023-02-22 11:20:27', 15),
(69, 10, 'security', 'security', 1, '2023-02-22 11:20:54', '2023-02-22 11:20:54', 15),
(70, 10, 'skilled trade / craft', 'skilled-trade-craft', 1, '2023-02-22 11:21:15', '2023-02-22 11:21:15', 15),
(71, 10, 'software / qa / dba', 'software-qa-dba', 1, '2023-02-22 11:21:37', '2023-02-22 11:21:37', 15),
(72, 10, 'systems / network', 'systems-network', 1, '2023-02-22 11:21:57', '2023-02-22 11:21:57', 15),
(73, 10, 'technical support', 'technical-support', 1, '2023-02-22 11:22:19', '2023-02-22 11:22:19', 15),
(74, 10, 'transport', 'transport', 1, '2023-02-22 11:22:45', '2023-02-22 11:22:45', 15),
(75, 10, 'tv / film / video', 'tv-film-video', 1, '2023-02-22 11:23:11', '2023-02-22 11:23:11', 15),
(76, 10, 'web / info design', 'web-info-design', 1, '2023-02-22 11:24:08', '2023-02-22 11:24:08', 15),
(77, 10, 'writing / editing', 'writing-editing', 1, '2023-02-22 11:24:23', '2023-02-22 11:24:23', 15),
(78, 10, 'biotech / science', 'biotech-science', 1, '2023-02-22 11:24:51', '2023-02-22 11:24:51', 15),
(79, 10, 'etc / misc', 'etc-misc', 1, '2023-02-22 11:25:11', '2023-02-22 11:25:11', 15),
(80, 12, 'antiques', 'antiques', 1, '2023-02-22 11:29:30', '2023-02-22 11:29:30', 20),
(81, 12, 'appliances', 'appliances', 1, '2023-02-22 11:29:53', '2023-02-22 11:29:53', 20),
(82, 12, 'arts+crafts', 'artscrafts', 1, '2023-02-22 11:30:38', '2023-02-22 11:30:38', 20),
(83, 12, 'atv/utv/sno', 'atvutvsno', 1, '2023-02-22 11:31:23', '2023-02-22 11:31:23', 20),
(84, 12, 'auto parts', 'auto-parts', 1, '2023-02-22 11:31:39', '2023-02-22 11:31:39', 20),
(85, 12, 'aviation', 'aviation', 1, '2023-02-22 11:32:14', '2023-02-22 11:32:14', 20),
(86, 12, 'baby+kid', 'babykid', 1, '2023-02-22 11:32:40', '2023-02-22 11:32:40', 20),
(87, 12, 'barter', 'barter', 1, '2023-02-22 11:33:39', '2023-02-22 11:33:39', 20),
(88, 12, 'beauty+hlth', 'beautyhlth', 1, '2023-02-22 11:34:03', '2023-02-22 11:34:03', 20),
(89, 12, 'bike parts', 'bike-parts', 1, '2023-02-22 11:34:19', '2023-02-22 11:34:19', 20),
(90, 12, 'bikes', 'bikes', 1, '2023-02-22 11:34:33', '2023-02-22 11:34:33', 20),
(91, 12, 'boat parts', 'boat-parts', 1, '2023-02-22 11:35:04', '2023-02-22 11:35:04', 20),
(92, 12, 'boats', 'boats', 1, '2023-02-22 11:35:30', '2023-02-22 11:35:30', 20),
(93, 12, 'books', 'books', 1, '2023-02-22 11:37:53', '2023-02-22 11:37:53', 20),
(94, 12, 'business', 'business', 1, '2023-02-22 11:38:32', '2023-02-22 11:38:32', 20),
(95, 12, 'cars+trucks', 'carstrucks', 1, '2023-02-22 11:39:15', '2023-02-22 11:39:15', 20),
(96, 12, 'cds/dvd/vhs', 'cdsdvdvhs', 1, '2023-02-22 11:39:41', '2023-02-22 11:39:41', 20),
(97, 12, 'cell phones', 'cell-phones', 1, '2023-02-22 11:42:47', '2023-02-22 11:42:47', 20),
(98, 12, 'clothes+acc', 'clothesacc', 1, '2023-02-22 11:43:12', '2023-02-22 11:43:12', 20),
(99, 12, 'collectibles', 'collectibles', 1, '2023-02-22 11:44:02', '2023-02-22 11:44:02', 22),
(100, 12, 'computer parts', 'computer-parts', 1, '2023-02-22 11:44:28', '2023-02-22 11:44:28', 20),
(101, 12, 'computers', 'computers', 1, '2023-02-22 11:44:50', '2023-02-22 11:44:50', 20),
(102, 12, 'electronics', 'electronics', 1, '2023-02-22 11:45:17', '2023-02-22 11:45:17', 20),
(103, 12, 'free', 'free', 1, '2023-02-22 11:46:37', '2023-02-22 11:46:37', 20),
(104, 12, 'furniture', 'furniture', 1, '2023-02-22 11:46:55', '2023-02-22 11:46:55', 20),
(105, 12, 'garage sale', 'garage-sale', 1, '2023-02-22 11:47:32', '2023-02-22 11:47:32', 20),
(106, 12, 'heavy equip', 'heavy-equip', 1, '2023-02-22 11:48:21', '2023-02-22 11:48:21', 20),
(107, 12, 'jewelry', 'jewelry', 1, '2023-02-22 11:48:51', '2023-02-22 11:48:51', 20),
(108, 12, 'materials', 'materials', 1, '2023-02-22 11:49:18', '2023-02-22 11:49:18', 20),
(109, 12, 'motorcycle parts', 'motorcycle-parts', 1, '2023-02-22 11:49:49', '2023-02-22 11:49:49', 20),
(110, 12, 'motorcycles', 'motorcycles', 1, '2023-02-22 11:50:11', '2023-02-22 11:50:11', 20),
(111, 12, 'music instr', 'music-instr', 1, '2023-02-22 11:50:48', '2023-02-22 11:50:48', 20),
(112, 12, 'photo+video', 'photovideo', 1, '2023-02-22 11:51:13', '2023-02-22 11:51:13', 20),
(113, 12, 'rvs+camp', 'rvscamp', 1, '2023-02-22 11:51:38', '2023-02-22 11:51:38', 20),
(114, 12, 'sporting', 'sporting', 1, '2023-02-22 11:52:12', '2023-02-22 11:52:12', 20),
(115, 12, 'tickets', 'tickets', 1, '2023-02-22 11:52:24', '2023-02-22 11:52:24', 20),
(116, 12, 'tools', 'tools', 1, '2023-02-22 11:52:40', '2023-02-22 11:52:40', 20),
(117, 12, 'toys+games', 'toysgames', 1, '2023-02-22 11:53:06', '2023-02-22 11:53:06', 20),
(118, 12, 'trailers', 'trailers', 1, '2023-02-22 11:53:34', '2023-02-22 11:53:34', 20),
(119, 12, 'video gaming', 'video-gaming', 1, '2023-02-22 11:53:57', '2023-02-22 11:53:57', 20),
(120, 12, 'wanted', 'wanted', 1, '2023-02-22 11:54:19', '2023-02-22 11:54:19', 20),
(121, 12, 'wheels+tires', 'wheelstires', 1, '2023-02-22 11:54:36', '2023-02-22 11:54:36', 20);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stars` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home_page` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `value`) VALUES
(1, 'Africa/Abidjan'),
(2, 'Africa/Accra'),
(3, 'Africa/Addis_Ababa'),
(4, 'Africa/Algiers'),
(5, 'Africa/Asmara'),
(6, 'Africa/Bamako'),
(7, 'Africa/Bangui'),
(8, 'Africa/Banjul'),
(9, 'Africa/Bissau'),
(10, 'Africa/Blantyre'),
(11, 'Africa/Brazzaville'),
(12, 'Africa/Bujumbura'),
(13, 'Africa/Cairo'),
(14, 'Africa/Casablanca'),
(15, 'Africa/Ceuta'),
(16, 'Africa/Conakry'),
(17, 'Africa/Dakar'),
(18, 'Africa/Dar_es_Salaam'),
(19, 'Africa/Djibouti'),
(20, 'Africa/Douala'),
(21, 'Africa/El_Aaiun'),
(22, 'Africa/Freetown'),
(23, 'Africa/Gaborone'),
(24, 'Africa/Harare'),
(25, 'Africa/Johannesburg'),
(26, 'Africa/Juba'),
(27, 'Africa/Kampala'),
(28, 'Africa/Khartoum'),
(29, 'Africa/Kigali'),
(30, 'Africa/Kinshasa'),
(31, 'Africa/Lagos'),
(32, 'Africa/Libreville'),
(33, 'Africa/Lome'),
(34, 'Africa/Luanda'),
(35, 'Africa/Lubumbashi'),
(36, 'Africa/Lusaka'),
(37, 'Africa/Malabo'),
(38, 'Africa/Maputo'),
(39, 'Africa/Maseru'),
(40, 'Africa/Mbabane'),
(41, 'Africa/Mogadishu'),
(42, 'Africa/Monrovia'),
(43, 'Africa/Nairobi'),
(44, 'Africa/Ndjamena'),
(45, 'Africa/Niamey'),
(46, 'Africa/Nouakchott'),
(47, 'Africa/Ouagadougou'),
(48, 'Africa/Porto-Novo'),
(49, 'Africa/Sao_Tome'),
(50, 'Africa/Tripoli'),
(51, 'Africa/Tunis'),
(52, 'Africa/Windhoek'),
(53, 'America/Adak'),
(54, 'America/Anchorage'),
(55, 'America/Anguilla'),
(56, 'America/Antigua'),
(57, 'America/Araguaina'),
(58, 'America/Argentina/Buenos_Aires'),
(59, 'America/Argentina/Catamarca'),
(60, 'America/Argentina/Cordoba'),
(61, 'America/Argentina/Jujuy'),
(62, 'America/Argentina/La_Rioja'),
(63, 'America/Argentina/Mendoza'),
(64, 'America/Argentina/Rio_Gallegos'),
(65, 'America/Argentina/Salta'),
(66, 'America/Argentina/San_Juan'),
(67, 'America/Argentina/San_Luis'),
(68, 'America/Argentina/Tucuman'),
(69, 'America/Argentina/Ushuaia'),
(70, 'America/Aruba'),
(71, 'America/Asuncion'),
(72, 'America/Atikokan'),
(73, 'America/Bahia'),
(74, 'America/Bahia_Banderas'),
(75, 'America/Barbados'),
(76, 'America/Belem'),
(77, 'America/Belize'),
(78, 'America/Blanc-Sablon'),
(79, 'America/Boa_Vista'),
(80, 'America/Bogota'),
(81, 'America/Boise'),
(82, 'America/Cambridge_Bay'),
(83, 'America/Campo_Grande'),
(84, 'America/Cancun'),
(85, 'America/Caracas'),
(86, 'America/Cayenne'),
(87, 'America/Cayman'),
(88, 'America/Chicago'),
(89, 'America/Chihuahua'),
(90, 'America/Costa_Rica'),
(91, 'America/Creston'),
(92, 'America/Cuiaba'),
(93, 'America/Curacao'),
(94, 'America/Danmarkshavn'),
(95, 'America/Dawson'),
(96, 'America/Dawson_Creek'),
(97, 'America/Denver'),
(98, 'America/Detroit'),
(99, 'America/Dominica'),
(100, 'America/Edmonton'),
(101, 'America/Eirunepe'),
(102, 'America/El_Salvador'),
(103, 'America/Fort_Nelson'),
(104, 'America/Fortaleza'),
(105, 'America/Glace_Bay'),
(106, 'America/Goose_Bay'),
(107, 'America/Grand_Turk'),
(108, 'America/Grenada'),
(109, 'America/Guadeloupe'),
(110, 'America/Guatemala'),
(111, 'America/Guayaquil'),
(112, 'America/Guyana'),
(113, 'America/Halifax'),
(114, 'America/Havana'),
(115, 'America/Hermosillo'),
(116, 'America/Indiana/Indianapolis'),
(117, 'America/Indiana/Knox'),
(118, 'America/Indiana/Marengo'),
(119, 'America/Indiana/Petersburg'),
(120, 'America/Indiana/Tell_City'),
(121, 'America/Indiana/Vevay'),
(122, 'America/Indiana/Vincennes'),
(123, 'America/Indiana/Winamac'),
(124, 'America/Inuvik'),
(125, 'America/Iqaluit'),
(126, 'America/Jamaica'),
(127, 'America/Juneau'),
(128, 'America/Kentucky/Louisville'),
(129, 'America/Kentucky/Monticello'),
(130, 'America/Kralendijk'),
(131, 'America/La_Paz'),
(132, 'America/Lima'),
(133, 'America/Los_Angeles'),
(134, 'America/Lower_Princes'),
(135, 'America/Maceio'),
(136, 'America/Managua'),
(137, 'America/Manaus'),
(138, 'America/Marigot'),
(139, 'America/Martinique'),
(140, 'America/Matamoros'),
(141, 'America/Mazatlan'),
(142, 'America/Menominee'),
(143, 'America/Merida'),
(144, 'America/Metlakatla'),
(145, 'America/Mexico_City'),
(146, 'America/Miquelon'),
(147, 'America/Moncton'),
(148, 'America/Monterrey'),
(149, 'America/Montevideo'),
(150, 'America/Montserrat'),
(151, 'America/Nassau'),
(152, 'America/New_York'),
(153, 'America/Nipigon'),
(154, 'America/Nome'),
(155, 'America/Noronha'),
(156, 'America/North_Dakota/Beulah'),
(157, 'America/North_Dakota/Center'),
(158, 'America/North_Dakota/New_Salem'),
(159, 'America/Nuuk'),
(160, 'America/Ojinaga'),
(161, 'America/Panama'),
(162, 'America/Pangnirtung'),
(163, 'America/Paramaribo'),
(164, 'America/Phoenix'),
(165, 'America/Port-au-Prince'),
(166, 'America/Port_of_Spain'),
(167, 'America/Porto_Velho'),
(168, 'America/Puerto_Rico'),
(169, 'America/Punta_Arenas'),
(170, 'America/Rainy_River'),
(171, 'America/Rankin_Inlet'),
(172, 'America/Recife'),
(173, 'America/Regina'),
(174, 'America/Resolute'),
(175, 'America/Rio_Branco'),
(176, 'America/Santarem'),
(177, 'America/Santiago'),
(178, 'America/Santo_Domingo'),
(179, 'America/Sao_Paulo'),
(180, 'America/Scoresbysund'),
(181, 'America/Sitka'),
(182, 'America/St_Barthelemy'),
(183, 'America/St_Johns'),
(184, 'America/St_Kitts'),
(185, 'America/St_Lucia'),
(186, 'America/St_Thomas'),
(187, 'America/St_Vincent'),
(188, 'America/Swift_Current'),
(189, 'America/Tegucigalpa'),
(190, 'America/Thule'),
(191, 'America/Thunder_Bay'),
(192, 'America/Tijuana'),
(193, 'America/Toronto'),
(194, 'America/Tortola'),
(195, 'America/Vancouver'),
(196, 'America/Whitehorse'),
(197, 'America/Winnipeg'),
(198, 'America/Yakutat'),
(199, 'America/Yellowknife'),
(200, 'Antarctica/Casey'),
(201, 'Antarctica/Davis'),
(202, 'Antarctica/DumontDUrville'),
(203, 'Antarctica/Macquarie'),
(204, 'Antarctica/Mawson'),
(205, 'Antarctica/McMurdo'),
(206, 'Antarctica/Palmer'),
(207, 'Antarctica/Rothera'),
(208, 'Antarctica/Syowa'),
(209, 'Antarctica/Troll'),
(210, 'Antarctica/Vostok'),
(211, 'Arctic/Longyearbyen'),
(212, 'Asia/Aden'),
(213, 'Asia/Almaty'),
(214, 'Asia/Amman'),
(215, 'Asia/Anadyr'),
(216, 'Asia/Aqtau'),
(217, 'Asia/Aqtobe'),
(218, 'Asia/Ashgabat'),
(219, 'Asia/Atyrau'),
(220, 'Asia/Baghdad'),
(221, 'Asia/Bahrain'),
(222, 'Asia/Baku'),
(223, 'Asia/Bangkok'),
(224, 'Asia/Barnaul'),
(225, 'Asia/Beirut'),
(226, 'Asia/Bishkek'),
(227, 'Asia/Brunei'),
(228, 'Asia/Chita'),
(229, 'Asia/Choibalsan'),
(230, 'Asia/Colombo'),
(231, 'Asia/Damascus'),
(232, 'Asia/Dhaka'),
(233, 'Asia/Dili'),
(234, 'Asia/Dubai'),
(235, 'Asia/Dushanbe'),
(236, 'Asia/Famagusta'),
(237, 'Asia/Gaza'),
(238, 'Asia/Hebron'),
(239, 'Asia/Ho_Chi_Minh'),
(240, 'Asia/Hong_Kong'),
(241, 'Asia/Hovd'),
(242, 'Asia/Irkutsk'),
(243, 'Asia/Jakarta'),
(244, 'Asia/Jayapura'),
(245, 'Asia/Jerusalem'),
(246, 'Asia/Kabul'),
(247, 'Asia/Kamchatka'),
(248, 'Asia/Karachi'),
(249, 'Asia/Kathmandu'),
(250, 'Asia/Khandyga'),
(251, 'Asia/Kolkata'),
(252, 'Asia/Krasnoyarsk'),
(253, 'Asia/Kuala_Lumpur'),
(254, 'Asia/Kuching'),
(255, 'Asia/Kuwait'),
(256, 'Asia/Macau'),
(257, 'Asia/Magadan'),
(258, 'Asia/Makassar'),
(259, 'Asia/Manila'),
(260, 'Asia/Muscat'),
(261, 'Asia/Nicosia'),
(262, 'Asia/Novokuznetsk'),
(263, 'Asia/Novosibirsk'),
(264, 'Asia/Omsk'),
(265, 'Asia/Oral'),
(266, 'Asia/Phnom_Penh'),
(267, 'Asia/Pontianak'),
(268, 'Asia/Pyongyang'),
(269, 'Asia/Qatar'),
(270, 'Asia/Qostanay'),
(271, 'Asia/Qyzylorda'),
(272, 'Asia/Riyadh'),
(273, 'Asia/Sakhalin'),
(274, 'Asia/Samarkand'),
(275, 'Asia/Seoul'),
(276, 'Asia/Shanghai'),
(277, 'Asia/Singapore'),
(278, 'Asia/Srednekolymsk'),
(279, 'Asia/Taipei'),
(280, 'Asia/Tashkent'),
(281, 'Asia/Tbilisi'),
(282, 'Asia/Tehran'),
(283, 'Asia/Thimphu'),
(284, 'Asia/Tokyo'),
(285, 'Asia/Tomsk'),
(286, 'Asia/Ulaanbaatar'),
(287, 'Asia/Urumqi'),
(288, 'Asia/Ust-Nera'),
(289, 'Asia/Vientiane'),
(290, 'Asia/Vladivostok'),
(291, 'Asia/Yakutsk'),
(292, 'Asia/Yangon'),
(293, 'Asia/Yekaterinburg'),
(294, 'Asia/Yerevan'),
(295, 'Atlantic/Azores'),
(296, 'Atlantic/Bermuda'),
(297, 'Atlantic/Canary'),
(298, 'Atlantic/Cape_Verde'),
(299, 'Atlantic/Faroe'),
(300, 'Atlantic/Madeira'),
(301, 'Atlantic/Reykjavik'),
(302, 'Atlantic/South_Georgia'),
(303, 'Atlantic/St_Helena'),
(304, 'Atlantic/Stanley'),
(305, 'Australia/Adelaide'),
(306, 'Australia/Brisbane'),
(307, 'Australia/Broken_Hill'),
(308, 'Australia/Darwin'),
(309, 'Australia/Eucla'),
(310, 'Australia/Hobart'),
(311, 'Australia/Lindeman'),
(312, 'Australia/Lord_Howe'),
(313, 'Australia/Melbourne'),
(314, 'Australia/Perth'),
(315, 'Australia/Sydney'),
(316, 'Europe/Amsterdam'),
(317, 'Europe/Andorra'),
(318, 'Europe/Astrakhan'),
(319, 'Europe/Athens'),
(320, 'Europe/Belgrade'),
(321, 'Europe/Berlin'),
(322, 'Europe/Bratislava'),
(323, 'Europe/Brussels'),
(324, 'Europe/Bucharest'),
(325, 'Europe/Budapest'),
(326, 'Europe/Busingen'),
(327, 'Europe/Chisinau'),
(328, 'Europe/Copenhagen'),
(329, 'Europe/Dublin'),
(330, 'Europe/Gibraltar'),
(331, 'Europe/Guernsey'),
(332, 'Europe/Helsinki'),
(333, 'Europe/Isle_of_Man'),
(334, 'Europe/Istanbul'),
(335, 'Europe/Jersey'),
(336, 'Europe/Kaliningrad'),
(337, 'Europe/Kiev'),
(338, 'Europe/Kirov'),
(339, 'Europe/Lisbon'),
(340, 'Europe/Ljubljana'),
(341, 'Europe/London'),
(342, 'Europe/Luxembourg'),
(343, 'Europe/Madrid'),
(344, 'Europe/Malta'),
(345, 'Europe/Mariehamn'),
(346, 'Europe/Minsk'),
(347, 'Europe/Monaco'),
(348, 'Europe/Moscow'),
(349, 'Europe/Oslo'),
(350, 'Europe/Paris'),
(351, 'Europe/Podgorica'),
(352, 'Europe/Prague'),
(353, 'Europe/Riga'),
(354, 'Europe/Rome'),
(355, 'Europe/Samara'),
(356, 'Europe/San_Marino'),
(357, 'Europe/Sarajevo'),
(358, 'Europe/Saratov'),
(359, 'Europe/Simferopol'),
(360, 'Europe/Skopje'),
(361, 'Europe/Sofia'),
(362, 'Europe/Stockholm'),
(363, 'Europe/Tallinn'),
(364, 'Europe/Tirane'),
(365, 'Europe/Ulyanovsk'),
(366, 'Europe/Uzhgorod'),
(367, 'Europe/Vaduz'),
(368, 'Europe/Vatican'),
(369, 'Europe/Vienna'),
(370, 'Europe/Vilnius'),
(371, 'Europe/Volgograd'),
(372, 'Europe/Warsaw'),
(373, 'Europe/Zagreb'),
(374, 'Europe/Zaporozhye'),
(375, 'Europe/Zurich'),
(376, 'Indian/Antananarivo'),
(377, 'Indian/Chagos'),
(378, 'Indian/Christmas'),
(379, 'Indian/Cocos'),
(380, 'Indian/Comoro'),
(381, 'Indian/Kerguelen'),
(382, 'Indian/Mahe'),
(383, 'Indian/Maldives'),
(384, 'Indian/Mauritius'),
(385, 'Indian/Mayotte'),
(386, 'Indian/Reunion'),
(387, 'Pacific/Apia'),
(388, 'Pacific/Auckland'),
(389, 'Pacific/Bougainville'),
(390, 'Pacific/Chatham'),
(391, 'Pacific/Chuuk'),
(392, 'Pacific/Easter'),
(393, 'Pacific/Efate'),
(394, 'Pacific/Fakaofo'),
(395, 'Pacific/Fiji'),
(396, 'Pacific/Funafuti'),
(397, 'Pacific/Galapagos'),
(398, 'Pacific/Gambier'),
(399, 'Pacific/Guadalcanal'),
(400, 'Pacific/Guam'),
(401, 'Pacific/Honolulu'),
(402, 'Pacific/Kanton'),
(403, 'Pacific/Kiritimati'),
(404, 'Pacific/Kosrae'),
(405, 'Pacific/Kwajalein'),
(406, 'Pacific/Majuro'),
(407, 'Pacific/Marquesas'),
(408, 'Pacific/Midway'),
(409, 'Pacific/Nauru'),
(410, 'Pacific/Niue'),
(411, 'Pacific/Norfolk'),
(412, 'Pacific/Noumea'),
(413, 'Pacific/Pago_Pago'),
(414, 'Pacific/Palau'),
(415, 'Pacific/Pitcairn'),
(416, 'Pacific/Pohnpei'),
(417, 'Pacific/Port_Moresby'),
(418, 'Pacific/Rarotonga'),
(419, 'Pacific/Saipan'),
(420, 'Pacific/Tahiti'),
(421, 'Pacific/Tarawa'),
(422, 'Pacific/Tongatapu'),
(423, 'Pacific/Wake'),
(424, 'Pacific/Wallis'),
(425, 'UTC'),
(426, 'Africa/Abidjan'),
(427, 'Africa/Accra'),
(428, 'Africa/Addis_Ababa'),
(429, 'Africa/Algiers'),
(430, 'Africa/Asmara'),
(431, 'Africa/Bamako'),
(432, 'Africa/Bangui'),
(433, 'Africa/Banjul'),
(434, 'Africa/Bissau'),
(435, 'Africa/Blantyre'),
(436, 'Africa/Brazzaville'),
(437, 'Africa/Bujumbura'),
(438, 'Africa/Cairo'),
(439, 'Africa/Casablanca'),
(440, 'Africa/Ceuta'),
(441, 'Africa/Conakry'),
(442, 'Africa/Dakar'),
(443, 'Africa/Dar_es_Salaam'),
(444, 'Africa/Djibouti'),
(445, 'Africa/Douala'),
(446, 'Africa/El_Aaiun'),
(447, 'Africa/Freetown'),
(448, 'Africa/Gaborone'),
(449, 'Africa/Harare'),
(450, 'Africa/Johannesburg'),
(451, 'Africa/Juba'),
(452, 'Africa/Kampala'),
(453, 'Africa/Khartoum'),
(454, 'Africa/Kigali'),
(455, 'Africa/Kinshasa'),
(456, 'Africa/Lagos'),
(457, 'Africa/Libreville'),
(458, 'Africa/Lome'),
(459, 'Africa/Luanda'),
(460, 'Africa/Lubumbashi'),
(461, 'Africa/Lusaka'),
(462, 'Africa/Malabo'),
(463, 'Africa/Maputo'),
(464, 'Africa/Maseru'),
(465, 'Africa/Mbabane'),
(466, 'Africa/Mogadishu'),
(467, 'Africa/Monrovia'),
(468, 'Africa/Nairobi'),
(469, 'Africa/Ndjamena'),
(470, 'Africa/Niamey'),
(471, 'Africa/Nouakchott'),
(472, 'Africa/Ouagadougou'),
(473, 'Africa/Porto-Novo'),
(474, 'Africa/Sao_Tome'),
(475, 'Africa/Tripoli'),
(476, 'Africa/Tunis'),
(477, 'Africa/Windhoek'),
(478, 'America/Adak'),
(479, 'America/Anchorage'),
(480, 'America/Anguilla'),
(481, 'America/Antigua'),
(482, 'America/Araguaina'),
(483, 'America/Argentina/Buenos_Aires'),
(484, 'America/Argentina/Catamarca'),
(485, 'America/Argentina/Cordoba'),
(486, 'America/Argentina/Jujuy'),
(487, 'America/Argentina/La_Rioja'),
(488, 'America/Argentina/Mendoza'),
(489, 'America/Argentina/Rio_Gallegos'),
(490, 'America/Argentina/Salta'),
(491, 'America/Argentina/San_Juan'),
(492, 'America/Argentina/San_Luis'),
(493, 'America/Argentina/Tucuman'),
(494, 'America/Argentina/Ushuaia'),
(495, 'America/Aruba'),
(496, 'America/Asuncion'),
(497, 'America/Atikokan'),
(498, 'America/Bahia'),
(499, 'America/Bahia_Banderas'),
(500, 'America/Barbados'),
(501, 'America/Belem'),
(502, 'America/Belize'),
(503, 'America/Blanc-Sablon'),
(504, 'America/Boa_Vista'),
(505, 'America/Bogota'),
(506, 'America/Boise'),
(507, 'America/Cambridge_Bay'),
(508, 'America/Campo_Grande'),
(509, 'America/Cancun'),
(510, 'America/Caracas'),
(511, 'America/Cayenne'),
(512, 'America/Cayman'),
(513, 'America/Chicago'),
(514, 'America/Chihuahua'),
(515, 'America/Costa_Rica'),
(516, 'America/Creston'),
(517, 'America/Cuiaba'),
(518, 'America/Curacao'),
(519, 'America/Danmarkshavn'),
(520, 'America/Dawson'),
(521, 'America/Dawson_Creek'),
(522, 'America/Denver'),
(523, 'America/Detroit'),
(524, 'America/Dominica'),
(525, 'America/Edmonton'),
(526, 'America/Eirunepe'),
(527, 'America/El_Salvador'),
(528, 'America/Fort_Nelson'),
(529, 'America/Fortaleza'),
(530, 'America/Glace_Bay'),
(531, 'America/Goose_Bay'),
(532, 'America/Grand_Turk'),
(533, 'America/Grenada'),
(534, 'America/Guadeloupe'),
(535, 'America/Guatemala'),
(536, 'America/Guayaquil'),
(537, 'America/Guyana'),
(538, 'America/Halifax'),
(539, 'America/Havana'),
(540, 'America/Hermosillo'),
(541, 'America/Indiana/Indianapolis'),
(542, 'America/Indiana/Knox'),
(543, 'America/Indiana/Marengo'),
(544, 'America/Indiana/Petersburg'),
(545, 'America/Indiana/Tell_City'),
(546, 'America/Indiana/Vevay'),
(547, 'America/Indiana/Vincennes'),
(548, 'America/Indiana/Winamac'),
(549, 'America/Inuvik'),
(550, 'America/Iqaluit'),
(551, 'America/Jamaica'),
(552, 'America/Juneau'),
(553, 'America/Kentucky/Louisville'),
(554, 'America/Kentucky/Monticello'),
(555, 'America/Kralendijk'),
(556, 'America/La_Paz'),
(557, 'America/Lima'),
(558, 'America/Los_Angeles'),
(559, 'America/Lower_Princes'),
(560, 'America/Maceio'),
(561, 'America/Managua'),
(562, 'America/Manaus'),
(563, 'America/Marigot'),
(564, 'America/Martinique'),
(565, 'America/Matamoros'),
(566, 'America/Mazatlan'),
(567, 'America/Menominee'),
(568, 'America/Merida'),
(569, 'America/Metlakatla'),
(570, 'America/Mexico_City'),
(571, 'America/Miquelon'),
(572, 'America/Moncton'),
(573, 'America/Monterrey'),
(574, 'America/Montevideo'),
(575, 'America/Montserrat'),
(576, 'America/Nassau'),
(577, 'America/New_York'),
(578, 'America/Nipigon'),
(579, 'America/Nome'),
(580, 'America/Noronha'),
(581, 'America/North_Dakota/Beulah'),
(582, 'America/North_Dakota/Center'),
(583, 'America/North_Dakota/New_Salem'),
(584, 'America/Nuuk'),
(585, 'America/Ojinaga'),
(586, 'America/Panama'),
(587, 'America/Pangnirtung'),
(588, 'America/Paramaribo'),
(589, 'America/Phoenix'),
(590, 'America/Port-au-Prince'),
(591, 'America/Port_of_Spain'),
(592, 'America/Porto_Velho'),
(593, 'America/Puerto_Rico'),
(594, 'America/Punta_Arenas'),
(595, 'America/Rainy_River'),
(596, 'America/Rankin_Inlet'),
(597, 'America/Recife'),
(598, 'America/Regina'),
(599, 'America/Resolute'),
(600, 'America/Rio_Branco'),
(601, 'America/Santarem'),
(602, 'America/Santiago'),
(603, 'America/Santo_Domingo'),
(604, 'America/Sao_Paulo'),
(605, 'America/Scoresbysund'),
(606, 'America/Sitka'),
(607, 'America/St_Barthelemy'),
(608, 'America/St_Johns'),
(609, 'America/St_Kitts'),
(610, 'America/St_Lucia'),
(611, 'America/St_Thomas'),
(612, 'America/St_Vincent'),
(613, 'America/Swift_Current'),
(614, 'America/Tegucigalpa'),
(615, 'America/Thule'),
(616, 'America/Thunder_Bay'),
(617, 'America/Tijuana'),
(618, 'America/Toronto'),
(619, 'America/Tortola'),
(620, 'America/Vancouver'),
(621, 'America/Whitehorse'),
(622, 'America/Winnipeg'),
(623, 'America/Yakutat'),
(624, 'America/Yellowknife'),
(625, 'Antarctica/Casey'),
(626, 'Antarctica/Davis'),
(627, 'Antarctica/DumontDUrville'),
(628, 'Antarctica/Macquarie'),
(629, 'Antarctica/Mawson'),
(630, 'Antarctica/McMurdo'),
(631, 'Antarctica/Palmer'),
(632, 'Antarctica/Rothera'),
(633, 'Antarctica/Syowa'),
(634, 'Antarctica/Troll'),
(635, 'Antarctica/Vostok'),
(636, 'Arctic/Longyearbyen'),
(637, 'Asia/Aden'),
(638, 'Asia/Almaty'),
(639, 'Asia/Amman'),
(640, 'Asia/Anadyr'),
(641, 'Asia/Aqtau'),
(642, 'Asia/Aqtobe'),
(643, 'Asia/Ashgabat'),
(644, 'Asia/Atyrau'),
(645, 'Asia/Baghdad'),
(646, 'Asia/Bahrain'),
(647, 'Asia/Baku'),
(648, 'Asia/Bangkok'),
(649, 'Asia/Barnaul'),
(650, 'Asia/Beirut'),
(651, 'Asia/Bishkek'),
(652, 'Asia/Brunei'),
(653, 'Asia/Chita'),
(654, 'Asia/Choibalsan'),
(655, 'Asia/Colombo'),
(656, 'Asia/Damascus'),
(657, 'Asia/Dhaka'),
(658, 'Asia/Dili'),
(659, 'Asia/Dubai'),
(660, 'Asia/Dushanbe'),
(661, 'Asia/Famagusta'),
(662, 'Asia/Gaza'),
(663, 'Asia/Hebron'),
(664, 'Asia/Ho_Chi_Minh'),
(665, 'Asia/Hong_Kong'),
(666, 'Asia/Hovd'),
(667, 'Asia/Irkutsk'),
(668, 'Asia/Jakarta'),
(669, 'Asia/Jayapura'),
(670, 'Asia/Jerusalem'),
(671, 'Asia/Kabul'),
(672, 'Asia/Kamchatka'),
(673, 'Asia/Karachi'),
(674, 'Asia/Kathmandu'),
(675, 'Asia/Khandyga'),
(676, 'Asia/Kolkata'),
(677, 'Asia/Krasnoyarsk'),
(678, 'Asia/Kuala_Lumpur'),
(679, 'Asia/Kuching'),
(680, 'Asia/Kuwait'),
(681, 'Asia/Macau'),
(682, 'Asia/Magadan'),
(683, 'Asia/Makassar'),
(684, 'Asia/Manila'),
(685, 'Asia/Muscat'),
(686, 'Asia/Nicosia'),
(687, 'Asia/Novokuznetsk'),
(688, 'Asia/Novosibirsk'),
(689, 'Asia/Omsk'),
(690, 'Asia/Oral'),
(691, 'Asia/Phnom_Penh'),
(692, 'Asia/Pontianak'),
(693, 'Asia/Pyongyang'),
(694, 'Asia/Qatar'),
(695, 'Asia/Qostanay'),
(696, 'Asia/Qyzylorda'),
(697, 'Asia/Riyadh'),
(698, 'Asia/Sakhalin'),
(699, 'Asia/Samarkand'),
(700, 'Asia/Seoul'),
(701, 'Asia/Shanghai'),
(702, 'Asia/Singapore'),
(703, 'Asia/Srednekolymsk'),
(704, 'Asia/Taipei'),
(705, 'Asia/Tashkent'),
(706, 'Asia/Tbilisi'),
(707, 'Asia/Tehran'),
(708, 'Asia/Thimphu'),
(709, 'Asia/Tokyo'),
(710, 'Asia/Tomsk'),
(711, 'Asia/Ulaanbaatar'),
(712, 'Asia/Urumqi'),
(713, 'Asia/Ust-Nera'),
(714, 'Asia/Vientiane'),
(715, 'Asia/Vladivostok'),
(716, 'Asia/Yakutsk'),
(717, 'Asia/Yangon'),
(718, 'Asia/Yekaterinburg'),
(719, 'Asia/Yerevan'),
(720, 'Atlantic/Azores'),
(721, 'Atlantic/Bermuda'),
(722, 'Atlantic/Canary'),
(723, 'Atlantic/Cape_Verde'),
(724, 'Atlantic/Faroe'),
(725, 'Atlantic/Madeira'),
(726, 'Atlantic/Reykjavik'),
(727, 'Atlantic/South_Georgia'),
(728, 'Atlantic/St_Helena'),
(729, 'Atlantic/Stanley'),
(730, 'Australia/Adelaide'),
(731, 'Australia/Brisbane'),
(732, 'Australia/Broken_Hill'),
(733, 'Australia/Darwin'),
(734, 'Australia/Eucla'),
(735, 'Australia/Hobart'),
(736, 'Australia/Lindeman'),
(737, 'Australia/Lord_Howe'),
(738, 'Australia/Melbourne'),
(739, 'Australia/Perth'),
(740, 'Australia/Sydney'),
(741, 'Europe/Amsterdam'),
(742, 'Europe/Andorra'),
(743, 'Europe/Astrakhan'),
(744, 'Europe/Athens'),
(745, 'Europe/Belgrade'),
(746, 'Europe/Berlin'),
(747, 'Europe/Bratislava'),
(748, 'Europe/Brussels'),
(749, 'Europe/Bucharest'),
(750, 'Europe/Budapest'),
(751, 'Europe/Busingen'),
(752, 'Europe/Chisinau'),
(753, 'Europe/Copenhagen'),
(754, 'Europe/Dublin'),
(755, 'Europe/Gibraltar'),
(756, 'Europe/Guernsey'),
(757, 'Europe/Helsinki'),
(758, 'Europe/Isle_of_Man'),
(759, 'Europe/Istanbul'),
(760, 'Europe/Jersey'),
(761, 'Europe/Kaliningrad'),
(762, 'Europe/Kiev'),
(763, 'Europe/Kirov'),
(764, 'Europe/Lisbon'),
(765, 'Europe/Ljubljana'),
(766, 'Europe/London'),
(767, 'Europe/Luxembourg'),
(768, 'Europe/Madrid'),
(769, 'Europe/Malta'),
(770, 'Europe/Mariehamn'),
(771, 'Europe/Minsk'),
(772, 'Europe/Monaco'),
(773, 'Europe/Moscow'),
(774, 'Europe/Oslo'),
(775, 'Europe/Paris'),
(776, 'Europe/Podgorica'),
(777, 'Europe/Prague'),
(778, 'Europe/Riga'),
(779, 'Europe/Rome'),
(780, 'Europe/Samara'),
(781, 'Europe/San_Marino'),
(782, 'Europe/Sarajevo'),
(783, 'Europe/Saratov'),
(784, 'Europe/Simferopol'),
(785, 'Europe/Skopje'),
(786, 'Europe/Sofia'),
(787, 'Europe/Stockholm'),
(788, 'Europe/Tallinn'),
(789, 'Europe/Tirane'),
(790, 'Europe/Ulyanovsk'),
(791, 'Europe/Uzhgorod'),
(792, 'Europe/Vaduz'),
(793, 'Europe/Vatican'),
(794, 'Europe/Vienna'),
(795, 'Europe/Vilnius'),
(796, 'Europe/Volgograd'),
(797, 'Europe/Warsaw'),
(798, 'Europe/Zagreb'),
(799, 'Europe/Zaporozhye'),
(800, 'Europe/Zurich'),
(801, 'Indian/Antananarivo'),
(802, 'Indian/Chagos'),
(803, 'Indian/Christmas'),
(804, 'Indian/Cocos'),
(805, 'Indian/Comoro'),
(806, 'Indian/Kerguelen'),
(807, 'Indian/Mahe'),
(808, 'Indian/Maldives'),
(809, 'Indian/Mauritius'),
(810, 'Indian/Mayotte'),
(811, 'Indian/Reunion'),
(812, 'Pacific/Apia'),
(813, 'Pacific/Auckland'),
(814, 'Pacific/Bougainville'),
(815, 'Pacific/Chatham'),
(816, 'Pacific/Chuuk'),
(817, 'Pacific/Easter'),
(818, 'Pacific/Efate'),
(819, 'Pacific/Fakaofo'),
(820, 'Pacific/Fiji'),
(821, 'Pacific/Funafuti'),
(822, 'Pacific/Galapagos'),
(823, 'Pacific/Gambier'),
(824, 'Pacific/Guadalcanal'),
(825, 'Pacific/Guam'),
(826, 'Pacific/Honolulu'),
(827, 'Pacific/Kanton'),
(828, 'Pacific/Kiritimati'),
(829, 'Pacific/Kosrae'),
(830, 'Pacific/Kwajalein'),
(831, 'Pacific/Majuro'),
(832, 'Pacific/Marquesas'),
(833, 'Pacific/Midway'),
(834, 'Pacific/Nauru'),
(835, 'Pacific/Niue'),
(836, 'Pacific/Norfolk'),
(837, 'Pacific/Noumea'),
(838, 'Pacific/Pago_Pago'),
(839, 'Pacific/Palau'),
(840, 'Pacific/Pitcairn'),
(841, 'Pacific/Pohnpei'),
(842, 'Pacific/Port_Moresby'),
(843, 'Pacific/Rarotonga'),
(844, 'Pacific/Saipan'),
(845, 'Pacific/Tahiti'),
(846, 'Pacific/Tarawa'),
(847, 'Pacific/Tongatapu'),
(848, 'Pacific/Wake'),
(849, 'Pacific/Wallis'),
(850, 'UTC');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_provider` enum('flutterwave','mollie','midtrans','paypal','paystack','razorpay','sslcommerz','stripe','instamojo','offline') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_id` bigint(20) UNSIGNED NOT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usd_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `manual_payment_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `transaction_id`, `payment_provider`, `ad_id`, `promotion_id`, `user_id`, `amount`, `currency_symbol`, `usd_amount`, `payment_status`, `created_at`, `updated_at`, `manual_payment_id`) VALUES
(1, '159656722', '3JA51189GC5717339', 'paypal', 97, 2, 7, '21', '$', '21', 'paid', '2023-03-01 00:43:47', '2023-03-01 00:43:47', NULL),
(2, '564656483', '0050977668322031H', 'paypal', 101, 2, 7, '21', '$', '21', 'paid', '2023-03-01 00:48:32', '2023-03-01 00:48:32', NULL),
(3, '568683255', '1L9858759F733652U', 'paypal', 102, 2, 7, '21', '$', '21', 'paid', '2023-03-01 02:45:25', '2023-03-01 02:45:25', NULL),
(4, '491206029', '0VH50265XA127721G', 'paypal', 103, 2, 7, '21', '$', '21', 'paid', '2023-03-01 04:39:18', '2023-03-01 04:39:18', NULL),
(5, '516382243', '37C073359F098733L', 'paypal', 104, 2, 7, '21', '$', '21', 'paid', '2023-03-01 04:43:57', '2023-03-01 04:43:57', NULL),
(6, '63141534', '93S91266VH903571P', 'paypal', 105, 2, 7, '21', '$', '21', 'paid', '2023-03-01 04:50:38', '2023-03-01 04:50:38', NULL),
(7, '877574837', '82G021481M920215U', 'paypal', 106, 2, 7, '21', '$', '21', 'paid', '2023-03-01 04:53:17', '2023-03-01 04:53:17', NULL),
(8, '845700097', '41V0306221401981M', 'paypal', 106, 2, 7, '21', '$', '21', 'paid', '2023-03-01 04:56:17', '2023-03-01 04:56:17', NULL),
(9, '154566237', '89259877M2384953T', 'paypal', 107, 2, 7, '21', '$', '21', 'paid', '2023-03-01 05:04:01', '2023-03-01 05:04:01', NULL),
(10, '525903341', '6TM20690PY9275612', 'paypal', 108, 2, 7, '21', '$', '21', 'paid', '2023-03-01 05:54:07', '2023-03-01 05:54:07', NULL),
(11, '447387740', '8UF50850G2561842R', 'paypal', 109, 2, 7, '21', '$', '21', 'paid', '2023-03-01 06:13:41', '2023-03-01 06:13:41', NULL),
(12, '459861559', '373869253X238335T', 'paypal', 110, 2, 7, '21', '$', '21', 'paid', '2023-03-01 06:20:17', '2023-03-01 06:20:17', NULL),
(13, '988321674', '48540681E8929532R', 'paypal', 111, 2, 7, '21', '$', '21', 'paid', '2023-03-01 06:25:30', '2023-03-01 06:25:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'backend/image/default-user.png',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_seen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'email',
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone`, `email_verified_at`, `password`, `web`, `image`, `token`, `last_seen`, `remember_token`, `created_at`, `updated_at`, `auth_type`, `provider`, `provider_id`, `fcm_token`) VALUES
(1, NULL, 'mkds_1234', 'mkds@gmail.com', NULL, '2023-02-18 07:26:19', '$2y$10$JdzOAuS/kF1Fb.SEexQLG.mOk9ZAAnF41nLI0b7b5L7jBs3fp0N.K', NULL, 'backend/image/default-user.png', 'bX8NdNwhTMG6xib15RkCn6WINtV8dxhil6eTVgx4', '2023-02-19 11:52:35', '1698SBXoAxPcS5wXZsliJb16xcmCOra5nWrQ0s2eU186h7ecEO5HTyPdIhPg', '2023-02-16 03:46:26', '2023-02-19 05:52:35', 'email', NULL, NULL, NULL),
(2, NULL, 'mokaddes_1111', 'mokaddes@gmail.com', NULL, '2023-02-16 04:17:28', '$2y$10$/2DrW8gTcN2Wk1dc11FisezykHDCGMTXiRzMXeyHReUXqBWip5CMC', NULL, 'backend/image/default-user.png', 'yRQ4GNgDIKkbuDhxChES7EvN7QMASVhtdLzobyD9', '2023-02-16 10:18:01', NULL, '2023-02-16 04:11:06', '2023-02-16 04:18:01', 'email', NULL, NULL, NULL),
(3, NULL, 'sdfsd_2345', 'sdfsd@gmail.com', NULL, '2023-02-16 11:55:36', NULL, NULL, 'backend/image/default-user.png', 'gKaBMOkGBCpTa2yyJCjMkWABAYjgBlcJTctbNmjt', '2023-02-18 08:13:28', NULL, '2023-02-18 00:34:52', '2023-02-18 02:13:28', 'email', NULL, NULL, NULL),
(4, NULL, 'abcd_7634', 'abcd@gmail.com', NULL, NULL, NULL, NULL, 'backend/image/default-user.png', 'QVFED9KiOi608FFeahiZAvwXnXFUGWo0gVODIg2V', NULL, NULL, '2023-02-18 02:14:14', NULL, 'email', NULL, NULL, NULL),
(5, NULL, 'mmm_8504', 'mmm@gmail.com', NULL, NULL, NULL, NULL, 'backend/image/default-user.png', 'x0CwD56SUM1Rv5VjzdVX3YLsBlZ34CmRJi2AmErY', NULL, NULL, '2023-02-18 03:16:32', '2023-02-18 03:16:32', 'email', NULL, NULL, NULL),
(6, NULL, 'arobil_7365', 'arobil@gmail.com', NULL, '2023-02-16 12:54:25', NULL, NULL, 'backend/image/default-user.png', '0qoTW4VMU3mzvHUPVAIJeL6uotfzxGSKiZ4psrG0', '2023-02-25 14:22:39', 'I8TVojrDnT1fiZY67eTmvXHJ1kx5bOVKbzHNk5md', '2023-02-19 01:02:31', '2023-02-25 14:22:39', 'email', NULL, NULL, NULL),
(7, NULL, 'moshiur2187_8521', 'moshiur2187@gmail.com', NULL, '2023-02-09 11:55:56', NULL, NULL, 'backend/image/default-user.png', '4SOIgMjYUYhC8Kj3oU4ydrpHfyagfQKuhsQ7w3cb', '2023-03-01 12:25:44', '8HXLBkhTvAZf9NIRNAgRcoZsf4I1I6HvqxSb8L7B', '2023-02-19 01:06:47', '2023-03-01 06:25:44', 'email', NULL, NULL, NULL),
(8, NULL, 'manik_1739', 'manik@gmail.com', NULL, '2023-02-20 13:25:41', NULL, NULL, 'backend/image/default-user.png', 'KjrOApcjZo2p1casfAezBakuf6A3yTChwa5jT5W8', '2023-02-20 13:30:41', NULL, '2023-02-19 01:08:49', '2023-02-20 07:30:41', 'email', NULL, NULL, NULL),
(9, NULL, 'admin_3363', 'admin@gmail.com', NULL, '2023-02-03 13:30:21', NULL, NULL, 'backend/image/default-user.png', 'WfcZ24DOO5et1Re8GosQF14YDobwTg466nbD4jYw', '2023-02-23 09:25:42', NULL, '2023-02-19 01:12:57', '2023-02-23 09:25:42', 'email', NULL, NULL, NULL),
(10, NULL, 'test_9875', 'test@gmail.com', NULL, NULL, NULL, NULL, 'backend/image/default-user.png', 'cWGwcxGZdBK2zfa2QqiHW3ezSjjHowCtvSfoX900', NULL, NULL, '2023-02-19 01:18:25', '2023-02-19 01:18:25', 'email', NULL, NULL, NULL),
(11, NULL, 'mo15103053_7568', 'mo15103053@gmail.com', NULL, NULL, NULL, NULL, 'backend/image/default-user.png', 'VioB5jW0LGtOQt7S6IeEnwDXvdb1z1cS4hwat0tY', NULL, NULL, '2023-02-19 01:22:45', '2023-02-19 01:22:45', 'email', NULL, NULL, NULL),
(12, NULL, 'nayeemsarwar1275_7551', 'nayeemsarwar1275@gmail.com', NULL, NULL, NULL, NULL, 'backend/image/default-user.png', 'tbE86DiLTfT8ax0nvviBrpHq41pGlBJUdIWaaO0x', NULL, NULL, '2023-02-22 12:55:28', '2023-02-22 12:55:28', 'email', NULL, NULL, NULL),
(13, NULL, 'walmart_3031', 'walmart@gmail.com', NULL, NULL, NULL, NULL, 'backend/image/default-user.png', '1yK7qy1oJuUVofrt5b42aPxfLFEdlYueCHM1T3OF', NULL, NULL, '2023-02-23 05:17:20', '2023-02-23 05:17:20', 'email', NULL, NULL, NULL),
(14, NULL, 'nayeem_1681', 'nayeem@gmail.com', NULL, NULL, NULL, NULL, 'backend/image/default-user.png', 'kAZMTucn2rHX8COtpqtlDEZDw9NSGfgP68kEnt7S', NULL, NULL, '2023-02-23 05:22:01', '2023-02-23 05:22:01', 'email', NULL, NULL, NULL),
(15, NULL, 'akib_2254', 'akib@gmail.com', NULL, NULL, NULL, NULL, 'backend/image/default-user.png', 'gXmnFAXnylZeEygi7B41E7vX9zzTyQvFJptEpzJZ', NULL, NULL, '2023-02-23 05:32:38', '2023-02-23 05:32:38', 'email', NULL, NULL, NULL),
(16, NULL, 'saheb_9752', 'saheb@gmail.com', NULL, NULL, NULL, NULL, 'backend/image/default-user.png', '05YZD3XFOpkNu8hoib282zDHvZOq4gKjI9H3PPcV', NULL, NULL, '2023-02-23 05:37:08', '2023-02-23 05:37:08', 'email', NULL, NULL, NULL),
(17, NULL, 'safi_3268', 'safi@gmail.com', NULL, NULL, NULL, NULL, 'backend/image/default-user.png', 'fhg6EbYifE3T5dqdWNafmoK6oBNWGNJuc2ad5bLH', NULL, NULL, '2023-02-23 05:40:39', '2023-02-23 05:40:39', 'email', NULL, NULL, NULL),
(18, NULL, 'sahed_3287', 'sahed@gmail.com', NULL, NULL, NULL, NULL, 'backend/image/default-user.png', '3Z9h0vqwNL5lFD58YKcDfuNmUq4YDhsDVOVUWvol', NULL, NULL, '2023-02-23 05:47:21', '2023-02-23 05:47:21', 'email', NULL, NULL, NULL),
(19, NULL, 'dare_9077', 'dare@gmail.com', NULL, NULL, NULL, NULL, 'backend/image/default-user.png', 'JiM3caYe9vOBqoLxCY7YUnbOsaS4JXsSrGlTO1A3', NULL, NULL, '2023-02-23 05:51:29', '2023-02-23 05:51:29', 'email', NULL, NULL, NULL),
(20, NULL, 'sadf_8133', 'sadf@gmail.com', NULL, NULL, NULL, NULL, 'backend/image/default-user.png', '1Cit122yvP85UTaX3lV4JLMnMuDQi6SBT8HzCGrA', NULL, NULL, '2023-02-23 05:56:47', '2023-02-23 05:56:47', 'email', NULL, NULL, NULL),
(21, NULL, 'shihab_4493', 'shihab@gmail.com', NULL, NULL, NULL, NULL, 'backend/image/default-user.png', 'awFxqYfuC7edGw1KsHaJkiVmNM5R1Wywlmj6VU1K', NULL, NULL, '2023-02-23 06:00:33', '2023-02-23 06:00:33', 'email', NULL, NULL, NULL),
(22, NULL, 'ronymia.tech_6678', 'ronymia.tech@gmail.com', NULL, NULL, NULL, NULL, 'backend/image/default-user.png', 'yR0rUG3mphBdrDVktl2Ah1Rp6uOP1FgzsHtr0Mpo', NULL, NULL, '2023-02-25 06:56:01', NULL, 'email', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_device_tokens`
--

CREATE TABLE `user_device_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `device_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_plans`
--

CREATE TABLE `user_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ad_limit` bigint(20) UNSIGNED NOT NULL DEFAULT 3,
  `featured_limit` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `badge` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subscription_type` enum('one_time','recurring') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'one_time',
  `expired_date` date DEFAULT NULL,
  `current_plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_restored_plan_benefits` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_plans`
--

INSERT INTO `user_plans` (`id`, `user_id`, `ad_limit`, `featured_limit`, `badge`, `created_at`, `updated_at`, `subscription_type`, `expired_date`, `current_plan_id`, `is_restored_plan_benefits`) VALUES
(1, 3, 3, 1, 0, '2023-02-18 00:34:52', '2023-02-18 00:34:52', 'recurring', NULL, NULL, 0),
(2, 5, 3, 1, 0, '2023-02-18 03:16:32', '2023-02-18 03:16:32', 'recurring', NULL, NULL, 0),
(3, 6, 3, 1, 0, '2023-02-19 01:02:31', '2023-02-19 01:02:31', 'recurring', NULL, NULL, 0),
(4, 7, 3, 1, 0, '2023-02-19 01:06:47', '2023-02-19 01:06:47', 'recurring', NULL, NULL, 0),
(5, 8, 3, 1, 0, '2023-02-19 01:08:49', '2023-02-19 01:08:49', 'recurring', NULL, NULL, 0),
(6, 9, 3, 1, 0, '2023-02-19 01:12:57', '2023-02-19 01:12:57', 'recurring', NULL, NULL, 0),
(7, 10, 3, 1, 0, '2023-02-19 01:18:25', '2023-02-19 01:18:25', 'recurring', NULL, NULL, 0),
(8, 11, 2, 1, 0, '2023-02-19 01:22:45', '2023-02-19 04:58:02', 'recurring', NULL, NULL, 0),
(9, 12, 3, 1, 0, '2023-02-22 12:55:28', '2023-02-22 12:55:28', 'recurring', NULL, NULL, 0),
(10, 13, 3, 1, 0, '2023-02-23 05:17:20', '2023-02-23 05:17:20', 'recurring', NULL, NULL, 0),
(11, 14, 3, 1, 0, '2023-02-23 05:22:01', '2023-02-23 05:22:01', 'recurring', NULL, NULL, 0),
(12, 15, 3, 1, 0, '2023-02-23 05:32:38', '2023-02-23 05:32:38', 'recurring', NULL, NULL, 0),
(13, 16, 3, 1, 0, '2023-02-23 05:37:08', '2023-02-23 05:37:08', 'recurring', NULL, NULL, 0),
(14, 17, 3, 1, 0, '2023-02-23 05:40:39', '2023-02-23 05:40:39', 'recurring', NULL, NULL, 0),
(15, 18, 3, 1, 0, '2023-02-23 05:47:21', '2023-02-23 05:47:21', 'recurring', NULL, NULL, 0),
(16, 19, 3, 1, 0, '2023-02-23 05:51:29', '2023-02-23 05:51:29', 'recurring', NULL, NULL, 0),
(17, 20, 3, 1, 0, '2023-02-23 05:56:47', '2023-02-23 05:56:47', 'recurring', NULL, NULL, 0),
(18, 21, 3, 1, 0, '2023-02-23 06:00:33', '2023-02-23 06:00:33', 'recurring', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `ad_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 10, 1, '2023-02-18 07:25:26', '2023-02-18 07:25:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_searches`
--
ALTER TABLE `admin_searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ads_user_id_foreign` (`user_id`),
  ADD KEY `ads_category_id_foreign` (`category_id`),
  ADD KEY `ads_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `ad_features`
--
ALTER TABLE `ad_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_galleries`
--
ALTER TABLE `ad_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_types`
--
ALTER TABLE `ad_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_slug` (`slug`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_custom_field`
--
ALTER TABLE `category_custom_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_custom_field_category_id_foreign` (`category_id`),
  ADD KEY `category_custom_field_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `u_country_city` (`country_id`,`slug`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_contents`
--
ALTER TABLE `cms_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookies`
--
ALTER TABLE `cookies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_iso` (`iso`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_fields_custom_field_group_id_foreign` (`custom_field_group_id`);

--
-- Indexes for table `custom_field_groups`
--
ALTER TABLE `custom_field_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `database_backups`
--
ALTER TABLE `database_backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emails_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_faq_category_id_foreign` (`faq_category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faq_categories_name_unique` (`name`),
  ADD UNIQUE KEY `faq_categories_slug_unique` (`slug`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_name_unique` (`name`),
  ADD UNIQUE KEY `languages_code_unique` (`code`),
  ADD UNIQUE KEY `languages_icon_unique` (`icon`);

--
-- Indexes for table `manual_payments`
--
ALTER TABLE `manual_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messengers`
--
ALTER TABLE `messengers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_app_configs`
--
ALTER TABLE `mobile_app_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_app_sliders`
--
ALTER TABLE `mobile_app_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `module_settings`
--
ALTER TABLE `module_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_label_unique` (`label`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_custom_fields`
--
ALTER TABLE `product_custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_custom_fields_ad_id_foreign` (`ad_id`),
  ADD KEY `product_custom_fields_custom_field_id_foreign` (`custom_field_id`),
  ADD KEY `product_custom_fields_custom_field_group_id_foreign` (`custom_field_group_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_report_from_id_foreign` (`report_from_id`),
  ADD KEY `reports_report_to_id_foreign` (`report_to_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_seller_id_foreign` (`seller_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_page_contents`
--
ALTER TABLE `seo_page_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_page_contents_page_id_foreign` (`page_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setup_guides`
--
ALTER TABLE `setup_guides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_media_user_id_foreign` (`user_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_manual_payment_id_foreign` (`manual_payment_id`),
  ADD KEY `transactions_ad_id_foreign` (`ad_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_web_unique` (`web`);

--
-- Indexes for table `user_device_tokens`
--
ALTER TABLE `user_device_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_device_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_plans`
--
ALTER TABLE `user_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_plans_user_id_foreign` (`user_id`),
  ADD KEY `user_plans_current_plan_id_foreign` (`current_plan_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_ad_id_foreign` (`ad_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_searches`
--
ALTER TABLE `admin_searches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `ad_features`
--
ALTER TABLE `ad_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_galleries`
--
ALTER TABLE `ad_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT for table `ad_types`
--
ALTER TABLE `ad_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category_custom_field`
--
ALTER TABLE `category_custom_field`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_contents`
--
ALTER TABLE `cms_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cookies`
--
ALTER TABLE `cookies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_field_groups`
--
ALTER TABLE `custom_field_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `database_backups`
--
ALTER TABLE `database_backups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manual_payments`
--
ALTER TABLE `manual_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messengers`
--
ALTER TABLE `messengers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `mobile_app_configs`
--
ALTER TABLE `mobile_app_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mobile_app_sliders`
--
ALTER TABLE `mobile_app_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `module_settings`
--
ALTER TABLE `module_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_custom_fields`
--
ALTER TABLE `product_custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `seo_page_contents`
--
ALTER TABLE `seo_page_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setup_guides`
--
ALTER TABLE `setup_guides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=851;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_device_tokens`
--
ALTER TABLE `user_device_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_plans`
--
ALTER TABLE `user_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `ads_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_custom_field`
--
ALTER TABLE `category_custom_field`
  ADD CONSTRAINT `category_custom_field_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_custom_field_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD CONSTRAINT `custom_fields_custom_field_group_id_foreign` FOREIGN KEY (`custom_field_group_id`) REFERENCES `custom_field_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_faq_category_id_foreign` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_custom_fields`
--
ALTER TABLE `product_custom_fields`
  ADD CONSTRAINT `product_custom_fields_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_custom_fields_custom_field_group_id_foreign` FOREIGN KEY (`custom_field_group_id`) REFERENCES `custom_field_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_custom_fields_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_report_from_id_foreign` FOREIGN KEY (`report_from_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_report_to_id_foreign` FOREIGN KEY (`report_to_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `seo_page_contents`
--
ALTER TABLE `seo_page_contents`
  ADD CONSTRAINT `seo_page_contents_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `seos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_media`
--
ALTER TABLE `social_media`
  ADD CONSTRAINT `social_media_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_device_tokens`
--
ALTER TABLE `user_device_tokens`
  ADD CONSTRAINT `user_device_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_plans`
--
ALTER TABLE `user_plans`
  ADD CONSTRAINT `user_plans_current_plan_id_foreign` FOREIGN KEY (`current_plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_plans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
