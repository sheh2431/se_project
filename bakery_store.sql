-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2016-11-29 10:12:47
-- 伺服器版本: 10.1.16-MariaDB
-- PHP 版本： 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `bakery_store`
--

-- --------------------------------------------------------

--
-- 資料表結構 `branch`
--

CREATE TABLE `branch` (
  `bid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `revenue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `branch`
--

INSERT INTO `branch` (`bid`, `uid`, `revenue`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `branch_stock`
--

CREATE TABLE `branch_stock` (
  `bid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `stock_limit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `branch_stock`
--

INSERT INTO `branch_stock` (`bid`, `pid`, `stock_quantity`, `stock_limit`) VALUES
(1, 1, 0, 30),
(1, 2, 0, 30),
(1, 3, 0, 30);

-- --------------------------------------------------------

--
-- 資料表結構 `main_store`
--

CREATE TABLE `main_store` (
  `uid` int(11) NOT NULL,
  `funds` int(11) NOT NULL,
  `branch_number` int(11) NOT NULL,
  `purchase_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `main_store`
--

INSERT INTO `main_store` (`uid`, `funds`, `branch_number`, `purchase_status`) VALUES
(1, 200000, 1, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `p_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_price` int(11) NOT NULL,
  `ship_price` int(11) NOT NULL,
  `delivery_time` int(11) NOT NULL,
  `stock_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `product`
--

INSERT INTO `product` (`pid`, `p_name`, `purchase_price`, `ship_price`, `delivery_time`, `stock_quantity`) VALUES
(1, '菠蘿麵包', 15, 20, 3, 0),
(2, '紅豆麵包', 12, 18, 3, 0),
(3, '蔓越莓乳酪麵包', 20, 28, 5, 0);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`bid`);

--
-- 資料表索引 `branch_stock`
--
ALTER TABLE `branch_stock`
  ADD UNIQUE KEY `pid` (`pid`);

--
-- 資料表索引 `main_store`
--
ALTER TABLE `main_store`
  ADD PRIMARY KEY (`uid`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `branch`
--
ALTER TABLE `branch`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `main_store`
--
ALTER TABLE `main_store`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
