-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2023 at 05:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phungquangson_2120110300`
--

-- --------------------------------------------------------

--
-- Table structure for table `0300_banner`
--

CREATE TABLE `0300_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `link` varchar(1000) NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `position` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0300_brand`
--

CREATE TABLE `0300_brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0300_category`
--

CREATE TABLE `0300_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `slug` varchar(1000) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `image` varchar(1000) DEFAULT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `description` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0300_contact`
--

CREATE TABLE `0300_contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `replay_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0300_menu`
--

CREATE TABLE `0300_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `link` varchar(100) NOT NULL,
  `table_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0300_order`
--

CREATE TABLE `0300_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deliveryname` varchar(255) DEFAULT NULL,
  `deliveryphone` varchar(255) DEFAULT NULL,
  `deliveryemail` varchar(255) DEFAULT NULL,
  `deliveryaddress` varchar(255) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0300_orderdetail`
--

CREATE TABLE `0300_orderdetail` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` float NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0300_post`
--

CREATE TABLE `0300_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `detail` mediumtext NOT NULL,
  `image` varchar(1000) NOT NULL,
  `type` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT 'post',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0300_product`
--

CREATE TABLE `0300_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `price` float NOT NULL,
  `price_sale` float NOT NULL,
  `image` varchar(100) NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `detail` mediumtext NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0300_topic`
--

CREATE TABLE `0300_topic` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0300_user`
--

CREATE TABLE `0300_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `roles` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `0300_banner`
--
ALTER TABLE `0300_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0300_brand`
--
ALTER TABLE `0300_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0300_category`
--
ALTER TABLE `0300_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0300_contact`
--
ALTER TABLE `0300_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0300_menu`
--
ALTER TABLE `0300_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0300_order`
--
ALTER TABLE `0300_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0300_orderdetail`
--
ALTER TABLE `0300_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0300_post`
--
ALTER TABLE `0300_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0300_product`
--
ALTER TABLE `0300_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0300_topic`
--
ALTER TABLE `0300_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0300_user`
--
ALTER TABLE `0300_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `0300_banner`
--
ALTER TABLE `0300_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `0300_brand`
--
ALTER TABLE `0300_brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `0300_category`
--
ALTER TABLE `0300_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `0300_contact`
--
ALTER TABLE `0300_contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `0300_menu`
--
ALTER TABLE `0300_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `0300_order`
--
ALTER TABLE `0300_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `0300_orderdetail`
--
ALTER TABLE `0300_orderdetail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `0300_post`
--
ALTER TABLE `0300_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `0300_product`
--
ALTER TABLE `0300_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `0300_topic`
--
ALTER TABLE `0300_topic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `0300_user`
--
ALTER TABLE `0300_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
