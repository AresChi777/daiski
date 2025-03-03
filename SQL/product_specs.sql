-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-02-27 15:45:39
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `daiski_db`
--

-- --------------------------------------------------------

--
-- 資料表結構 `product_specs`
--

CREATE TABLE `product_specs` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `specName` varchar(50) NOT NULL,
  `specValue` varchar(50) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `sortOrder` int(11) DEFAULT 0,
  `valid` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `product_specs`
--

INSERT INTO `product_specs` (`id`, `product_id`, `specName`, `specValue`, `createdAt`, `sortOrder`, `valid`) VALUES
(2, 1, '尺寸', 'S', '2025-02-21 02:51:23', 1, 1),
(3, 1, '尺寸', 'M', '2025-02-21 02:51:23', 2, 1),
(4, 1, '尺寸', 'L', '2025-02-21 02:51:23', 3, 1),
(5, 1, '尺寸', 'XL', '2025-02-21 02:51:23', 4, 1),
(6, 1, '尺寸', 'XXL', '2025-02-21 02:51:23', 5, 1),
(7, 2, '尺寸', 'XS', '2025-02-21 02:51:23', 0, 1),
(8, 2, '尺寸', 'S', '2025-02-21 02:51:23', 1, 1),
(9, 2, '尺寸', 'M', '2025-02-21 02:51:23', 2, 1),
(10, 2, '尺寸', 'L', '2025-02-21 02:51:23', 3, 1),
(11, 2, '尺寸', 'XL', '2025-02-21 02:51:23', 4, 1),
(12, 2, '尺寸', 'XXL', '2025-02-21 02:51:23', 5, 1),
(13, 3, '尺寸', 'XS', '2025-02-21 02:51:23', 0, 1),
(14, 3, '尺寸', 'S', '2025-02-21 02:51:23', 1, 1),
(15, 3, '尺寸', 'M', '2025-02-21 02:51:23', 2, 1),
(16, 3, '尺寸', 'L', '2025-02-21 02:51:23', 3, 1),
(17, 3, '尺寸', 'XL', '2025-02-21 02:51:23', 4, 1),
(18, 3, '尺寸', 'XXL', '2025-02-21 02:51:23', 5, 1),
(19, 4, '尺寸', 'XS', '2025-02-23 05:17:26', 0, 1),
(20, 4, '尺寸', 'S', '2025-02-23 05:17:26', 1, 1),
(21, 4, '尺寸', 'M', '2025-02-23 05:17:26', 2, 1),
(22, 4, '尺寸', 'L', '2025-02-23 05:17:26', 3, 1),
(23, 4, '尺寸', 'XL', '2025-02-23 05:17:26', 4, 1),
(24, 4, '尺寸', 'XXL', '2025-02-23 05:17:26', 5, 1),
(25, 5, '尺寸', 'XS', '2025-02-23 05:28:31', 0, 1),
(26, 5, '尺寸', 'S', '2025-02-23 05:28:31', 1, 1),
(27, 5, '尺寸', 'M', '2025-02-23 05:28:31', 2, 1),
(28, 5, '尺寸', 'L', '2025-02-23 05:28:31', 3, 1),
(29, 5, '尺寸', 'XL', '2025-02-23 05:28:31', 4, 1),
(30, 5, '尺寸', 'XXL', '2025-02-23 05:28:31', 5, 1),
(31, 6, '尺寸', 'XS', '2025-02-23 05:29:05', 0, 1),
(32, 6, '尺寸', 'S', '2025-02-23 05:29:05', 1, 1),
(33, 6, '尺寸', 'M', '2025-02-23 05:29:05', 2, 1),
(34, 6, '尺寸', 'L', '2025-02-23 05:29:05', 3, 1),
(35, 6, '尺寸', 'XL', '2025-02-23 05:29:05', 4, 1),
(36, 6, '尺寸', 'XXL', '2025-02-23 05:29:05', 5, 1),
(37, 7, '尺寸', 'XS', '2025-02-23 05:34:39', 0, 1),
(38, 7, '尺寸', 'S', '2025-02-23 05:34:39', 1, 1),
(39, 7, '尺寸', 'M', '2025-02-23 05:34:39', 2, 1),
(40, 7, '尺寸', 'L', '2025-02-23 05:34:39', 3, 1),
(41, 7, '尺寸', 'XL', '2025-02-23 05:34:39', 4, 1),
(42, 7, '尺寸', 'XXL', '2025-02-23 05:34:39', 5, 1),
(43, 8, '尺寸', 'XS', '2025-02-23 05:37:30', 0, 1),
(44, 8, '尺寸', 'S', '2025-02-23 05:37:30', 1, 1),
(45, 8, '尺寸', 'M', '2025-02-23 05:37:30', 2, 1),
(46, 8, '尺寸', 'L', '2025-02-23 05:37:30', 3, 1),
(47, 8, '尺寸', 'XL', '2025-02-23 05:37:30', 4, 1),
(48, 8, '尺寸', 'XXL', '2025-02-23 05:37:30', 5, 1),
(49, 9, '尺寸', 'XS', '2025-02-23 05:40:57', 0, 1),
(50, 9, '尺寸', 'S', '2025-02-23 05:40:57', 1, 1),
(51, 9, '尺寸', 'M', '2025-02-23 05:40:57', 2, 1),
(52, 9, '尺寸', 'L', '2025-02-23 05:40:57', 3, 1),
(53, 9, '尺寸', 'XL', '2025-02-23 05:40:57', 4, 1),
(54, 9, '尺寸', 'XXL', '2025-02-23 05:40:57', 5, 1),
(55, 10, '尺寸', 'XS', '2025-02-23 05:47:22', 0, 1),
(56, 10, '尺寸', 'S', '2025-02-23 05:47:22', 1, 1),
(57, 10, '尺寸', 'M', '2025-02-23 05:47:22', 2, 1),
(58, 10, '尺寸', 'L', '2025-02-23 05:47:22', 3, 1),
(59, 10, '尺寸', 'XL', '2025-02-23 05:47:22', 4, 1),
(60, 10, '尺寸', 'XXL', '2025-02-23 05:47:22', 5, 1),
(61, 11, '尺寸', 'XS', '2025-02-23 05:49:24', 0, 1),
(62, 11, '尺寸', 'S', '2025-02-23 05:49:24', 1, 1),
(63, 11, '尺寸', 'M', '2025-02-23 05:49:24', 2, 1),
(64, 11, '尺寸', 'L', '2025-02-23 05:49:24', 3, 1),
(65, 11, '尺寸', 'XL', '2025-02-23 05:49:24', 4, 1),
(66, 11, '尺寸', 'XXL', '2025-02-23 05:49:24', 5, 1),
(67, 12, '尺寸', 'XS', '2025-02-23 05:59:49', 0, 1),
(68, 12, '尺寸', 'S', '2025-02-23 05:59:49', 1, 1),
(69, 12, '尺寸', 'M', '2025-02-23 05:59:49', 2, 1),
(70, 12, '尺寸', 'L', '2025-02-23 05:59:49', 3, 1),
(71, 12, '尺寸', 'XL', '2025-02-23 05:59:49', 4, 1),
(72, 12, '尺寸', 'XXL', '2025-02-23 05:59:49', 5, 1),
(73, 13, '尺寸', 'XS', '2025-02-23 06:04:52', 0, 1),
(74, 13, '尺寸', 'S', '2025-02-23 06:04:52', 1, 1),
(75, 13, '尺寸', 'M', '2025-02-23 06:04:52', 2, 1),
(76, 13, '尺寸', 'L', '2025-02-23 06:04:52', 3, 1),
(77, 13, '尺寸', 'XL', '2025-02-23 06:04:52', 4, 1),
(78, 13, '尺寸', 'XXL', '2025-02-23 06:04:52', 5, 1),
(79, 14, '尺寸', 'XS', '2025-02-23 06:07:20', 0, 1),
(80, 14, '尺寸', 'S', '2025-02-23 06:07:20', 1, 1),
(81, 14, '尺寸', 'M', '2025-02-23 06:07:20', 2, 1),
(82, 14, '尺寸', 'L', '2025-02-23 06:07:20', 3, 1),
(83, 14, '尺寸', 'XL', '2025-02-23 06:07:20', 4, 1),
(84, 14, '尺寸', 'XXL', '2025-02-23 06:07:20', 5, 1),
(85, 15, '尺寸', 'XS', '2025-02-23 06:09:44', 0, 1),
(86, 15, '尺寸', 'S', '2025-02-23 06:09:44', 1, 1),
(87, 15, '尺寸', 'M', '2025-02-23 06:09:44', 2, 1),
(88, 15, '尺寸', 'L', '2025-02-23 06:09:44', 3, 1),
(89, 15, '尺寸', 'XL', '2025-02-23 06:09:44', 4, 1),
(90, 15, '尺寸', 'XXL', '2025-02-23 06:09:44', 5, 1),
(91, 16, '尺寸', 'XS', '2025-02-23 06:12:42', 0, 1),
(92, 16, '尺寸', 'S', '2025-02-23 06:12:42', 1, 1),
(93, 16, '尺寸', 'M', '2025-02-23 06:12:42', 2, 1),
(94, 16, '尺寸', 'L', '2025-02-23 06:12:42', 3, 1),
(95, 16, '尺寸', 'XL', '2025-02-23 06:12:42', 4, 1),
(96, 16, '尺寸', 'XXL', '2025-02-23 06:12:42', 5, 1),
(97, 17, '尺寸', 'XS', '2025-02-23 06:15:10', 0, 1),
(98, 17, '尺寸', 'S', '2025-02-23 06:15:10', 1, 1),
(99, 17, '尺寸', 'M', '2025-02-23 06:15:10', 2, 1),
(100, 17, '尺寸', 'L', '2025-02-23 06:15:10', 3, 1),
(101, 17, '尺寸', 'XL', '2025-02-23 06:15:10', 4, 1),
(102, 17, '尺寸', 'XXL', '2025-02-23 06:15:10', 5, 1),
(103, 18, '尺寸', 'XS', '2025-02-23 06:17:55', 0, 1),
(104, 18, '尺寸', 'S', '2025-02-23 06:17:55', 1, 1),
(105, 18, '尺寸', 'M', '2025-02-23 06:17:55', 2, 1),
(106, 18, '尺寸', 'L', '2025-02-23 06:17:55', 3, 1),
(107, 18, '尺寸', 'XL', '2025-02-23 06:17:55', 4, 1),
(108, 18, '尺寸', 'XXL', '2025-02-23 06:17:55', 5, 1),
(109, 28, '尺寸', '7', '2025-02-23 06:49:27', 0, 1),
(110, 28, '尺寸', '7.5', '2025-02-23 06:49:27', 1, 1),
(111, 28, '尺寸', '8', '2025-02-23 06:49:27', 2, 1),
(112, 28, '尺寸', '8.5', '2025-02-23 06:49:27', 3, 1),
(113, 28, '尺寸', '9', '2025-02-23 06:49:27', 4, 1),
(114, 28, '尺寸', '9.5', '2025-02-23 06:49:27', 5, 1),
(115, 28, '尺寸', '10', '2025-02-23 06:49:27', 6, 1),
(116, 28, '尺寸', '10.5', '2025-02-23 06:49:27', 7, 1),
(117, 28, '尺寸', '11', '2025-02-23 06:49:27', 8, 1),
(118, 28, '尺寸', '11.5', '2025-02-23 06:49:27', 9, 1),
(119, 28, '尺寸', '12', '2025-02-23 06:49:27', 10, 1),
(120, 28, '尺寸', '13', '2025-02-23 06:49:27', 11, 1),
(121, 29, '尺寸', '7', '2025-02-23 06:53:06', 0, 1),
(122, 29, '尺寸', '7.5', '2025-02-23 06:53:06', 1, 1),
(123, 29, '尺寸', '8', '2025-02-23 06:53:06', 2, 1),
(124, 29, '尺寸', '8.5', '2025-02-23 06:53:06', 3, 1),
(125, 29, '尺寸', '9', '2025-02-23 06:53:06', 4, 1),
(126, 29, '尺寸', '9.5', '2025-02-23 06:53:06', 5, 1),
(127, 29, '尺寸', '10', '2025-02-23 06:53:06', 6, 1),
(128, 29, '尺寸', '10.5', '2025-02-23 06:53:06', 7, 1),
(129, 29, '尺寸', '11', '2025-02-23 06:53:06', 8, 1),
(130, 29, '尺寸', '11.5', '2025-02-23 06:53:06', 9, 1),
(131, 29, '尺寸', '12', '2025-02-23 06:53:06', 10, 1),
(132, 29, '尺寸', '13', '2025-02-23 06:53:06', 11, 1),
(133, 30, '尺寸', '7', '2025-02-23 06:56:52', 0, 1),
(134, 30, '尺寸', '7.5', '2025-02-23 06:56:52', 1, 1),
(135, 30, '尺寸', '8', '2025-02-23 06:56:52', 2, 1),
(136, 30, '尺寸', '8.5', '2025-02-23 06:56:52', 3, 1),
(137, 30, '尺寸', '9', '2025-02-23 06:56:52', 4, 1),
(138, 30, '尺寸', '9.5', '2025-02-23 06:56:52', 5, 1),
(139, 30, '尺寸', '10', '2025-02-23 06:56:52', 6, 1),
(140, 30, '尺寸', '10.5', '2025-02-23 06:56:52', 7, 1),
(141, 30, '尺寸', '11', '2025-02-23 06:56:52', 8, 1),
(142, 30, '尺寸', '11.5', '2025-02-23 06:56:52', 9, 1),
(143, 30, '尺寸', '12', '2025-02-23 06:56:52', 10, 1),
(144, 30, '尺寸', '13', '2025-02-23 06:56:52', 11, 1),
(145, 31, '尺寸', '7', '2025-02-23 07:00:43', 0, 1),
(146, 31, '尺寸', '7.5', '2025-02-23 07:00:43', 1, 1),
(147, 31, '尺寸', '8', '2025-02-23 07:00:43', 2, 1),
(148, 31, '尺寸', '8.5', '2025-02-23 07:00:43', 3, 1),
(149, 31, '尺寸', '9', '2025-02-23 07:00:43', 4, 1),
(150, 31, '尺寸', '9.5', '2025-02-23 07:00:43', 5, 1),
(151, 31, '尺寸', '10', '2025-02-23 07:00:43', 6, 1),
(152, 31, '尺寸', '10.5', '2025-02-23 07:00:43', 7, 1),
(153, 31, '尺寸', '11', '2025-02-23 07:00:43', 8, 1),
(154, 31, '尺寸', '11.5', '2025-02-23 07:00:43', 9, 1),
(155, 31, '尺寸', '12', '2025-02-23 07:00:43', 10, 1),
(156, 31, '尺寸', '13', '2025-02-23 07:00:43', 11, 1),
(157, 32, '尺寸', '7', '2025-02-23 07:04:17', 0, 1),
(158, 32, '尺寸', '7.5', '2025-02-23 07:04:17', 1, 1),
(159, 32, '尺寸', '8', '2025-02-23 07:04:17', 2, 1),
(160, 32, '尺寸', '8.5', '2025-02-23 07:04:17', 3, 1),
(161, 32, '尺寸', '9', '2025-02-23 07:04:17', 4, 1),
(162, 32, '尺寸', '9.5', '2025-02-23 07:04:17', 5, 1),
(163, 32, '尺寸', '10', '2025-02-23 07:04:17', 6, 1),
(164, 32, '尺寸', '10.5', '2025-02-23 07:04:17', 7, 1),
(165, 32, '尺寸', '11', '2025-02-23 07:04:17', 8, 1),
(166, 32, '尺寸', '11.5', '2025-02-23 07:04:17', 9, 1),
(167, 32, '尺寸', '12', '2025-02-23 07:04:17', 10, 1),
(168, 32, '尺寸', '13', '2025-02-23 07:04:17', 11, 1),
(169, 33, '尺寸', '5', '2025-02-23 07:11:21', 0, 1),
(170, 33, '尺寸', '6', '2025-02-23 07:11:21', 1, 1),
(171, 33, '尺寸', '6.5', '2025-02-23 07:11:21', 2, 1),
(172, 33, '尺寸', '7', '2025-02-23 07:11:21', 3, 1),
(173, 33, '尺寸', '7.5', '2025-02-23 07:11:21', 4, 1),
(174, 33, '尺寸', '8', '2025-02-23 07:11:21', 5, 1),
(175, 33, '尺寸', '8.5', '2025-02-23 07:11:21', 6, 1),
(176, 33, '尺寸', '9', '2025-02-23 07:11:21', 7, 1),
(177, 34, '尺寸', '5', '2025-02-23 07:13:56', 0, 1),
(178, 34, '尺寸', '6', '2025-02-23 07:13:56', 1, 1),
(179, 34, '尺寸', '6.5', '2025-02-23 07:13:56', 2, 1),
(180, 34, '尺寸', '7', '2025-02-23 07:13:56', 3, 1),
(181, 34, '尺寸', '7.5', '2025-02-23 07:13:56', 4, 1),
(182, 34, '尺寸', '8', '2025-02-23 07:13:56', 5, 1),
(183, 34, '尺寸', '8.5', '2025-02-23 07:13:56', 6, 1),
(184, 34, '尺寸', '9', '2025-02-23 07:13:56', 7, 1),
(185, 35, '尺寸', '5', '2025-02-23 07:17:23', 0, 1),
(186, 35, '尺寸', '6', '2025-02-23 07:17:23', 1, 1),
(187, 35, '尺寸', '6.5', '2025-02-23 07:17:23', 2, 1),
(188, 35, '尺寸', '7', '2025-02-23 07:17:23', 3, 1),
(189, 35, '尺寸', '7.5', '2025-02-23 07:17:23', 4, 1),
(190, 35, '尺寸', '8', '2025-02-23 07:17:23', 5, 1),
(191, 35, '尺寸', '8.5', '2025-02-23 07:17:23', 6, 1),
(192, 35, '尺寸', '9', '2025-02-23 07:17:23', 7, 1),
(193, 36, '尺寸', '5', '2025-02-23 07:20:24', 0, 1),
(194, 36, '尺寸', '6', '2025-02-23 07:20:24', 1, 1),
(195, 36, '尺寸', '6.5', '2025-02-23 07:20:24', 2, 1),
(196, 36, '尺寸', '7', '2025-02-23 07:20:24', 3, 1),
(197, 36, '尺寸', '7.5', '2025-02-23 07:20:24', 4, 1),
(198, 36, '尺寸', '8', '2025-02-23 07:20:24', 5, 1),
(199, 36, '尺寸', '8.5', '2025-02-23 07:20:24', 6, 1),
(200, 36, '尺寸', '9', '2025-02-23 07:20:24', 7, 1),
(201, 37, '尺寸', '5', '2025-02-23 07:24:47', 0, 1),
(202, 37, '尺寸', '6', '2025-02-23 07:24:47', 1, 1),
(203, 37, '尺寸', '6.5', '2025-02-23 07:24:47', 2, 1),
(204, 37, '尺寸', '7', '2025-02-23 07:24:47', 3, 1),
(205, 37, '尺寸', '7.5', '2025-02-23 07:24:47', 4, 1),
(206, 37, '尺寸', '8', '2025-02-23 07:24:47', 5, 1),
(207, 37, '尺寸', '8.5', '2025-02-23 07:24:47', 6, 1),
(208, 38, '尺寸', '152', '2025-02-23 07:48:51', 0, 1),
(209, 38, '尺寸', '155', '2025-02-23 07:48:51', 1, 1),
(210, 38, '尺寸', '155W', '2025-02-23 07:48:51', 2, 1),
(211, 38, '尺寸', '157', '2025-02-23 07:48:51', 3, 1),
(212, 38, '尺寸', '157W', '2025-02-23 07:48:51', 4, 1),
(213, 38, '尺寸', '159', '2025-02-23 07:48:51', 5, 1),
(214, 38, '尺寸', '159W', '2025-02-23 07:48:51', 6, 1),
(215, 39, '尺寸', '150', '2025-02-23 07:52:50', 0, 1),
(216, 39, '尺寸', '154', '2025-02-23 07:52:50', 1, 1),
(217, 39, '尺寸', '156', '2025-02-23 07:52:50', 2, 1),
(218, 39, '尺寸', '158', '2025-02-23 07:52:50', 3, 1),
(219, 39, '尺寸', '158W', '2025-02-23 07:52:50', 4, 1),
(220, 40, '尺寸', '154', '2025-02-23 07:58:13', 0, 1),
(221, 40, '尺寸', '157W', '2025-02-23 07:58:13', 1, 1),
(222, 40, '尺寸', '160', '2025-02-23 07:58:13', 2, 1),
(223, 40, '尺寸', '160W', '2025-02-23 07:58:13', 3, 1),
(224, 41, '尺寸', '145', '2025-02-23 08:02:06', 0, 1),
(225, 41, '尺寸', '150', '2025-02-23 08:02:06', 1, 1),
(226, 41, '尺寸', '154', '2025-02-23 08:02:06', 2, 1),
(227, 41, '尺寸', '156W', '2025-02-23 08:02:06', 3, 1),
(228, 41, '尺寸', '157', '2025-02-23 08:02:06', 4, 1),
(229, 42, '尺寸', '146', '2025-02-23 08:06:24', 0, 1),
(230, 42, '尺寸', '151', '2025-02-23 08:06:24', 1, 1),
(231, 42, '尺寸', '156', '2025-02-23 08:06:24', 2, 1),
(232, 42, '尺寸', '161', '2025-02-23 08:06:24', 3, 1),
(233, 43, '尺寸', '135', '2025-02-23 08:10:31', 0, 1),
(234, 43, '尺寸', '145', '2025-02-23 08:10:31', 1, 1),
(235, 43, '尺寸', '148', '2025-02-23 08:10:31', 2, 1),
(236, 43, '尺寸', '152', '2025-02-23 08:10:31', 3, 1),
(237, 43, '尺寸', '155', '2025-02-23 08:10:31', 4, 1),
(238, 43, '尺寸', '155W', '2025-02-23 08:10:31', 5, 1),
(239, 43, '尺寸', '159W', '2025-02-23 08:10:31', 6, 1),
(240, 44, '尺寸', '138', '2025-02-23 11:41:21', 0, 1),
(241, 44, '尺寸', '142', '2025-02-23 11:41:21', 1, 1),
(242, 44, '尺寸', '147', '2025-02-23 11:41:21', 2, 1),
(243, 45, '尺寸', '142', '2025-02-23 11:41:21', 0, 1),
(244, 45, '尺寸', '146', '2025-02-23 11:47:26', 1, 1),
(245, 45, '尺寸', '149', '2025-02-23 11:47:26', 2, 1),
(246, 46, '尺寸', '140', '2025-02-23 11:50:57', 0, 1),
(247, 46, '尺寸', '144', '2025-02-23 11:50:57', 1, 1),
(248, 46, '尺寸', '148', '2025-02-23 11:50:57', 2, 1),
(249, 47, '尺寸', '142', '2025-02-23 11:54:51', 0, 1),
(250, 47, '尺寸', '149', '2025-02-23 11:54:51', 1, 1),
(251, 47, '尺寸', '156', '2025-02-23 11:54:51', 2, 1),
(252, 1, '尺寸', 'XS', '2025-02-25 08:07:56', 0, 1),
(255, 48, '尺寸', '142', '2025-02-25 10:25:54', 0, 1),
(256, 48, '尺寸', '156', '2025-02-25 10:25:54', 1, 1),
(257, 48, '尺寸', '163', '2025-02-25 10:25:54', 2, 1),
(258, 50, '尺寸', '163', '2025-02-26 06:01:25', 0, 1),
(259, 50, '尺寸', '170', '2025-02-26 06:01:25', 1, 1),
(260, 50, '尺寸', '177', '2025-02-26 06:01:25', 2, 1),
(261, 51, '尺寸', 'S', '2025-02-27 05:33:29', 0, 1),
(262, 51, '尺寸', 'M', '2025-02-27 05:33:29', 1, 1),
(263, 51, '尺寸', 'L', '2025-02-27 05:33:29', 2, 1),
(264, 51, '尺寸', 'XL', '2025-02-27 05:33:29', 3, 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `product_specs`
--
ALTER TABLE `product_specs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_specs`
--
ALTER TABLE `product_specs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `product_specs`
--
ALTER TABLE `product_specs`
  ADD CONSTRAINT `product_specs_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
