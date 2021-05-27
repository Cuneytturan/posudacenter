-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2021 at 02:44 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ecommerceapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(5, 'Cuneyt', 'cuneytadmin@gmail.com', 'admin', '0'),


-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
`brand_id` int(100) NOT NULL,
`brand_title` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Pasabahce'),
(2, 'Berlinger Haus'),
(3, 'AGNESS'),
(4, 'Luminarc'),
(5, 'ByBone');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
`id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 4, '::1', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`cat_id` int(100) NOT NULL,
`cat_title` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Glass'),
(2, 'Casseroles'),
(3, 'Cutlery'),
(4, 'Electronics'),
(5, 'Interior'),
(6, 'Plates'),
(7, 'Tea & Coffee');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'Completed'),
(2, 1, 2, 1, '9L434522M7706801A', 'Completed'),
(3, 1, 3, 1, '9L434522M7706801A', 'Completed'),
(4, 1, 1, 1, '8AT7125245323433N', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
1, 1, 1, '159033 H???? ???????? ????? ??? ??????? BORCAM', 7500, 1400, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 2 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
2, 1, 1, '420015 ??????-???? 470 ML ALLEGRA  1*12', 5250, 567, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 3 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
3, 1, 1, '420064 ??????-????? 350 ML ?????  6*4', 5700, 151, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 4 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
4, 1, 1, '420194 ?????? 300 ?? LEAFY 4*6', 5930, 153, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 5 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
5, 1, 1, '"420235 ??????-???? 480 ML ""?????"" 6*4"', 5930, 2464, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 6 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
6, 1, 1, '42348/12 ??????-????? 360 ?? ???? ??? 1*12', 5250, 457, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 7 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
7, 1, 1, '440060 ????? ??? ???? 236 ML ????? 6*4', 5400, 235, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 8 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
8, 1, 1, '440061 ?????-??????? 215 ML (???????) 6*4', 6150, 676, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 9 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
9, 1, 1, '440075 ????? ??? ??????????? 190 ?? (?????) 6*4', 5700, 232, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 10 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
10, 1, 1, '440089 ????? 210 ML ????? ????? 6*4', 6150, 563, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 11 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
11, 1, 1, '440090 ????? 260 ML ????? ????? 6*4', 6750, 246, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 12 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
12, 1, 1, '440091 ????? ??? ???? 325 ML ????? ????? 6*4', 6900, 142, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 13 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
13, 1, 1, '440110 ????? ??? ???? 195 ML ????? ????? 6*4', 6750, 546, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 14 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
14, 1, 1, '440147 ????? 270 ML ???????? ????? 6*4', 5030, 325, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 15 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
15, 1, 1, '440148 ????? 335 ML ???????? ????? 4*6', 5180, 765, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 16 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
16, 1, 1, '440149 ????? 415 ML ???????? ????? 4*6', 5330, 234, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 17 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
17, 1, 1, '440157 ?????? 225 ML ????? ????? 6*4', 6080, 98, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 18 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
18, 1, 1, '440190 ????? 420 ML ??????', 5400, 35, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 19 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
19, 1, 1, '440218 ?????? ????????? 330 ML CHARANTE 6*8', 5700, 153, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 20 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
20, 1, 1, '440272 ????? ???? 400 ML (????????) 1*12', 7200, 1351, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 21 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
21, 1, 1, '440283 ????? 190 ML ??????', 6150, 645, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 22 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
22, 1, 1, '440319 ????? ??? ??????????? 200 ?? NAPA 6*4', 7650, 523, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 23 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
23, 1, 1, '440329 ????? 360 ?? NAPA 6*4', 7880, 151, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 24 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
24, 1, 1, '440359 ????? 580 ?? NAPA 6*4', 8700, 135, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 25 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
25, 1, 1, '44228 ?????-???? 550 ML (???????) 4*6', 6000, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 26 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
26, 1, 1, '44238 ?????? ??? ???? 655 ML (???????) 6*4', 6600, 256, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 27 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
27, 1, 1, '44248 ?????? ??? ???? 780 ML (???????) 4*6', 6600, 1254, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 28 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
28, 1, 1, '44483 ?????-?????? 250 ML (??????) 1*12', 5400, 154, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 29 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
29, 1, 1, '44688  ?????? ??? ?????? 175 CC ????? ???? 1*12', 9000, 685, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 30 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
30, 1, 1, '44728 ????? 420 ?? ??.??. (???????) 4*6', 6000, 463, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 31 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
31, 1, 1, '44738 ?????? ??? ???? 615 ML (???????) 4*6', 6300, 324, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 32 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
32, 1, 1, '44819 ?????? ??? ??????????? (???????? ????) 12*1', 8700, 234, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 33 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
33, 1, 1, '51258 ????? 235 ?? ??.??. (??????????) 1*12', 7200, 123, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 34 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
34, 1, 1, '51648 ????? 320 ML  ???????? 4*6', 5250, 453, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 35 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
35, 1, 1, '520065 ?????? 355 ML (HIGHNESS)', 5930, 352, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 36 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
36, 1, 1, '520075 ?????? 515 ?? HIGHNESS 4*6', 8100, 124, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 37 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
37, 1, 1, '520084 ?????? 400 ?? HIGHNESS 4*6', 6380, 235, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 38 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
38, 1, 1, '52705 ??????? 265 ML ( ENJOY BLUE ) 1*12', 7500, 512, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 39 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
39, 1, 1, '52705 ??????? 265 ML ( ENJOY RED ) 1*12', 7500, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 40 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
40, 1, 1, '52708 ??????? 355 ML????? ????? 1*12', 9900, 35, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 41 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
41, 1, 1, '54087 ??????? 265 x 265 ?? TOKIO 6*4', 9900, 236, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 42 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
42, 1, 1, '"59019 ????????.???????? ""BORCAM"" 1*4"', 5250, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 43 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
43, 1, 1, '64042 ????? ???? 420 CC ??? ???? 4*6', 8250, 646, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 44 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
44, 1, 1, '66119 ????? 385 CC ??? ???? ?????? 4*6', 16500, 152, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 45 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
45, 1, 1, '66121 ????? 4105 CC ??? ???? ?????? 4*6', 14250, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 46 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
46, 1, 1, '68010 ?????? 1000 CC ????????? ??? ???? 1*4', 9750, 145, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 47 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
47, 1, 1, '95161 ????? ??? ???????? 17 ??????? (??????? ??????) ', 14250, 123, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 48 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
48, 1, 1, '96725  ?????? ?? ????????? (??????? ??????) 1*2', 5850, 152, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 49 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
49, 1, 1, '96725-7 ?????? ?? ????????? (?????) 1*2', 5850, 352, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 50 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
50, 1, 1, '97948 ????? ? ??????? 240 ?? ??.??.(??????) 4*6', 5250, 152, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 51 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
51, 1, 1, '10512 ??????? 205 Mm ?????? 6*4', 7500, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 52 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
52, 1, 1, '18805 ?????? 1250 LT CARAFE', 5500, 512, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 53 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
53, 1, 1, '"44604/6 ????? ??? ????? ""DANTE"""', 5000, 512, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 54 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
54, 1, 1, '51268 ????? 320 ?? ??.??. (??????????) 1*12', 10500, 51, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 55 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
55, 1, 1, '62116 ?????? ???? HOLIDAY 12*1', 5000, 253, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 56 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
56, 1, 1, '64024/6 ?????? ??? ???? (ROCKS) 6*4', 5500, 523, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 57 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
57, 1, 1, '66008/6 ????? ??? ???? CHATEAU NOUVEAU', 9000, 212, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 58 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
58, 1, 1, '66010 ????? ??? ???? 595 CC CHATEAU NOUVEAU', 10000, 124, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 59 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
59, 1, 1, '?????-?????? 480 ??', 10000, 124, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 60 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
60, 1, 1, '66017/6 ????? ??? ???? 90 CC CHATEAU NOUVEAU', 9000, 1400, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 61 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
61, 1, 1, '67012 ??????? 200 CC F&D FUSION', 9000, 567, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 62 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
62, 6, 1, '???????? ??????', 5000, 151, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 63 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
63, 6, 1, '98928 ????????? 220 MM F&D', 5000, 153, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 64 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
64, 6, 1, '98930 ???????? ??????? 200 MM  F&D ', 5000, 2464, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 65 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
65, 6, 4, 'H9147 ????? ?????? ????? ???????? 1*4', 6500, 457, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 66 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
66, 6, 4, 'L5108 ???????? ????? 19 ?? ????? ??????', 13000, 235, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 67 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
67, 6, 4, 'L5109 ???????? ????? 31 ?? ????? ??????', 18500, 676, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 68 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
68, 6, 4, 'L5110 ???????? ????? 45 ?? ????? ??????', 24000, 232, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 69 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
69, 6, 4, 'L5181 ???????? ????? 45 ?? ?????????????', 25500, 563, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 70 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
70, 6, 4, 'N8081???????? ????? 20 ?? ??????????', 15000, 246, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 71 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
71, 1, 4, 'P1565 ????? ?? ????? ?????? ??????? ??????  6*2', 9000, 142, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 72 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
72, 1, 4, 'P1637 ????? ?? ????? ??????? ????????  6*2', 9000, 546, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 73 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
73, 1, 4, 'P9306 ????? ?? ????? ??????? ???  4*2', 6235, 325, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 74 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
74, 4, 2, 'BH-1073 ???????????? ?????? 3 ??  METALLIC LINE CARBPON EDITION1*6', 11600, 765, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 75 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
75, 2, 2, 'BH-1094N  ???????? 20 CM GRANIT DIAMOND LINE 1*8', 18000, 234, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 76 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
76, 2, 2, 'BH-1095N ???????? 24 CM GRANIT DIAMOND LINE 1*8', 21000, 98, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 77 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
77, 2, 2, 'BH-1098N ???????? 32 CM GRANIT DIAMOND LINE 1*4', 32900, 35, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 78 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
78, 2, 2, 'BH-1099N ???????? 36 CM GRANIT DIAMOND LINE 1*4', 37400, 153, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 79 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
79, 2, 2, 'BH-1100N ???????? 24 CM GRANIT DIAMOND LINE 1*6', 23800, 1351, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 80 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
80, 2, 2, 'BH-1109N ???????? 28 CM GRANIT DIAMOND LINE 1*8', 22200, 645, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 81 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
81, 2, 2, 'BH-1111 ????? ???????? 10 ?? GRANIT DIAMOND LINE', 96000, 523, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 82 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
82, 2, 2, 'BH-1137 ????? ??? ????????? ?????? GRANIT DIAMOND LINE 1*12', 5500, 151, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 83 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
83, 2, 2, 'BH-1141 ????? ??? ????????? GRANIT DIAMOND LINE 1*8', 12500, 135, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 84 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
84, 2, 2, 'BH-1196  ???????? 20 CM FOREST LINE 1*6', 16900, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 85 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
85, 2, 2, 'BH-1197 ???????? 24 CM FOREST LINE 1*6', 19500, 256, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 86 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
86, 2, 2, 'BH-1198  ???????? 28 CM FOREST LINE 1*6', 22500, 1254, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 87 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
87, 2, 2, 'BH-1203  ???????? 28 CM FOREST LINE 1*6', 20000, 154, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 88 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
88, 2, 2, 'BH-1204N ????????? ???????? 28 CM FOREST LINE ', 14500, 685, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 89 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
89, 2, 2, 'BH-1208N C???????? 28 CM FOREST LINE 1*6', 12400, 463, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 90 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
90, 2, 2, 'BH-1209N ???????? 25 CM FOREST LINE 1*6', 10000, 324, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 91 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
91, 2, 2, 'BH-1230N C???????? 24 CM CARBON METALLIC LINE 1*6', 8100, 234, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 92 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
92, 2, 2, 'BH-1231N C???????? 28 CM CARBON METALLIC LINE 1*6', 10000, 123, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 93 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
93, 2, 2, 'BH-1232N C???????? 30 CM CARBON METALLIC LINE 1*6', 11500, 453, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 94 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
94, 2, 2, 'BH-1233N C???????? 16 CM CARBON METALLIC LINE 1*6', 6700, 352, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 95 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
95, 2, 2, 'BH-1240N ???????? 24 CM CARBON METALLIC LINE 1*6', 13500, 124, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 96 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
96, 2, 2, 'BH-1249N C???????? 28 CM CARBON METALLIC LINE 1*6', 11300, 235, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 97 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
97, 2, 2, 'BH-1250 C???????? 25 CM CARBON METALLIC LINE 1*6', 9000, 512, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 98 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
98, 2, 2, 'BH-1251N C???????? 20 CM BURGUNDY METALLIC LINE 1*6', 6400, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 99 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
99, 2, 2, 'BH-1252N C???????? 24 CM BURGUNDY METALLIC LINE 1*6', 8100, 35, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 100 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
100, 2, 2, 'BH-1253N C???????? 28 CM BURGUNDY METALLIC LINE 1*6', 10000, 236, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 101 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
101, 2, 2, 'BH-1254 C???????? 30 CM BURGUNDY METALLIC LINE 1*6', 13000, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 102 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
102, 2, 2, 'BH-1255N C???????? 16 CM BURGUNDY METALLIC LINE 1*6', 7600, 646, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 103 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
103, 2, 2, 'BH-1257N ???????? 24 CM BURGUNDY METALLIC LINE 1*6', 17500, 152, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 104 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
104, 2, 2, 'BH-1258N ???????? 28 CM BURGUNDY METALLIC LINE 1*6', 20700, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 105 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
105, 2, 2, 'BH-1264N ???????? 32 CM BURGUNDY METALLIC LINE 1*6', 19700, 145, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 106 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
106, 2, 2, 'BH-1271N C???????? 28 CM BURGUNDY METALLIC LINE 1*6', 11300, 123, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 107 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
107, 2, 2, 'BH-1272N ???????? 25 CM BURGUNDY METALLIC LINE 1*6', 9000, 152, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 108 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
108, 2, 2, 'BH-1281N ????? C????????? 3 ?? ROSE GOLD COLLECTION 1*4', 22000, 352, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 109 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
109, 2, 2, 'BH-1365 C???????? ??? ? ????? GRANIT DIAMOND LINE 1*8', 19700, 152, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 110 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
110, 7, 2, 'BH-1495 ???? ? ??? ??????????? 800 ?? ROSEGOLD LINE 1*12', 7500, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 111 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
111, 7, 2, 'BH-1498 ???? ? ??? ??????????? 800 ?? BURGUNDY 1*12', 7500, 512, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 112 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
112, 2, 2, 'BH-1508N C???????? 20 CM ROSE GOLD COLLECTION 1*6', 6400, 512, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 113 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
113, 2, 2, 'BH-1509N C???????? 24 CM ROSEGOLD COLLECTION 1*6', 8100, 51, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 114 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
114, 2, 2, 'BH-1510N C???????? 28 CM ROSE GOLD COLLECTION 1*6', 10000, 253, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 115 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
115, 2, 2, 'BH-1511N C???????? 30 CM ROSE GOLD COLLECTION 1*6', 11500, 523, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 116 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
116, 2, 2, 'BH-1513N C???????? 16 CM ROSE GOLD COLLECTION 1*6', 6700, 212, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 117 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
117, 2, 2, 'BH-1523N ???????? 25 CM ROSE GOLD COLLECTION 1*6', 9000, 124, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 118 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
118, 2, 2, 'BH-1633N C???????? 20 CM BLACK ROSE COLLECTION 1*6', 7100, 124, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 119 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
119, 2, 2, 'BH-1634N C???????? 24 CM BLACK ROSE COLLECTION 1*6', 8700, 1400, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 120 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
120, 2, 2, 'BH-1635N C???????? 28 CM BLACK ROSE COLLECTION 1*6', 10600, 567, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 121 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
121, 2, 2, 'BH-1636N C???????? 28 CM BLACK ROSE COLLECTION 1*6', 11700, 151, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 122 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
122, 2, 2, 'BH-1637N ???????? 16 CM BLACK ROSE COLLECTION ', 7400, 153, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 123 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
123, 2, 2, 'BH-1639N ???????? 25 CM BLACK ROSE COLLECTION 1*6', 10000, 2464, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 124 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
124, 2, 2, 'BH-1640N SHALLOW POT 28 CM BLACK ROSE COLLECTION ', 20500, 457, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 125 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
125, 2, 2, '"BH-1641N ????????? 2', 0, 17100, '235', '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit'
);

/* INSERT QUERY NO: 126 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
126, 2, 2, '"BH-1642N ????????? 2', 0, 22200, '676', '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit'
);

/* INSERT QUERY NO: 127 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
127, 2, 2, 'BH-1671 C???????? 20 CM BLACK ROYAL COLLECTION 1*6', 9100, 232, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 128 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
128, 2, 2, 'BH-1677 ???????? 24 CM BLACK ROYAL COLLECTION 1*6', 19100, 563, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 129 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
129, 2, 2, 'BH-1681 C???????? 28 CM BLACK ROYAL COLLECTION 1*6', 13900, 246, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 130 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
130, 2, 2, 'BH-1791 C???????? 20 CM GRANIT DIAMOND LINE 1*6', 9500, 142, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 131 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
131, 2, 2, 'BH-1792 C???????? 24 CM GRANIT DIAMOND LINE FULL INDUCTION 1*6', 12000, 546, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 132 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
132, 2, 2, 'BH-1793 C???????? 28 CM GRANIT DIAMOND LINE FULL INDUCTION 1*6', 13100, 325, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 133 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
133, 2, 2, 'BH-1794 C???????? 28 CM GRANIT DIAMOND LINE FULL INDUCTION 1*6', 16800, 765, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 134 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
134, 2, 2, 'BH-1795 ???????? 16 CM GRANIT DIAMOND LINE FULL INDUCTION', 10000, 234, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 135 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
135, 2, 2, 'BH-1797 ????????? 25 CM GRANIT DIAMOND LINE FULL INDUCTION 1*6', 11000, 98, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 136 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
136, 5, 2, 'BH-1914  ???????? ROSE GOLD EDITION METALLIC LINE 1*4', 17500, 35, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 137 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
137, 5, 2, 'BH-1968 ???????? ?? ??????????? ????? ? ?????? ', 5000, 153, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 138 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
138, 5, 2, 'BH-1970 ?????? ? ?????????? 4 ?? ROSE GOLD', 22000, 1351, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 139 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
139, 2, 2, 'BH-1989 ???????? 22 CM TAJINE POT MOONLIGHT EDITION', 31500, 645, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 140 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
140, 2, 2, 'BH-1990 ???????? 22 CM TAJINE POT EMERALD EDITION 1*2', 31500, 523, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 141 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
141, 3, 2, 'BH-2011 ????? ????? 4 ?? BURGUNDY LINE 1*12', 12500, 151, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 142 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
142, 3, 2, 'BH-2043 ????? ????? 8 ?? INFINITY LINE 1*6', 21000, 135, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 143 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
143, 3, 2, 'BH-2141 ????? ????? 2 ?? BLACK METALLIC 1*12', 7200, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 144 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
144, 3, 2, 'BH-2156 ????? ???????? ???????? 24 ?? 1*10', 21900, 256, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 145 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
145, 3, 2, 'BH-2160 ????? ????? 6 ??  FOREST LINE 1*6', 18500, 1254, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 146 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
146, 3, 2, 'BH-2421 ????? ????? 8 ?? BLACK ROSE COLLECTION ', 21000, 154, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 147 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
147, 3, 2, 'BH-2463  ????? ?????  8 Pcs EMERALD COLLECTION', 24000, 685, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 148 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
148, 3, 2, 'BH-2476 ????? ????? CARBON PRO 8PCS', 21000, 463, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 149 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
149, 3, 2, 'BH-2533 ????? ?????  MOONLIGHT EDITION ', 12000, 324, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 150 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
150, 3, 2, 'BH-2534A ????? ????? 6?? ????????? METALLIC ', 12000, 234, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 151 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
151, 3, 2, 'BH-2535A ????? ????? 6 ?? ????????? BLACK ROSE 1*10', 12000, 123, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 152 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
152, 5, 2, 'BH-6016 ???????? ??????', 5900, 453, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 153 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
153, 5, 2, 'BH-6138 ???????? ?????? 1.2 LT  BLACK ROSE COLL', 5500, 352, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 154 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
154, 2, 2, 'BH-6179 ???????? 28 CM METALLIC LINE BURGUNDY', 10000, 124, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 155 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
155, 2, 2, 'BH-6181 ???????? 28 CM METALLIC BLACK ROSE', 10000, 235, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 156 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
156, 2, 2, 'BH-6208 ????? ????????  4 ?? BLACK ROSE COLLECTION 1*8', 8900, 512, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 157 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
157, 2, 2, '6209A ???????? ????? 7 ?? BLACK ROSE COLLECTION 1*6', 14000, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 158 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
158, 2, 2, 'BH-6218 ????? ???????? ??????????????? 7 ?? BLACK ROYAL COLLECTION 1*8', 14000, 35, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 159 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
159, 2, 2, 'BH-6241 ????? ???????? ??????????????? 7 ?? METALLIC LINE 1*8', 14000, 236, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 160 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
160, 2, 2, 'BH-6242 ???????? ????? 7 ??  MOONLIGHT EDITION 1*8', 14000, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 161 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
161, 2, 2, 'BH-6244 ????? ????????  7 ?? I-ROSE COLLECTION 1*8', 14000, 646, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 162 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
162, 2, 2, 'BH-6245 ????? ????????  7 ?? AQUAMARINE EDITION 1*8', 14000, 152, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 163 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
163, 5, 2, 'BH-6408 ?????? 500 ML', 6800, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 164 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
164, 5, 2, 'BH-6412 ?????? 500 ML  LINE MOONLIGHT ', 6500, 145, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 165 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
165, 5, 2, 'BH-6416  ?????? 3 ??  METALLIC LINE  MOONLIGHT  1*12', 13000, 123, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 166 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
166, 5, 2, 'BH-6453 ????????? ??? ????????? ????????? E.ROSEWO', 6900, 152, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 167 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
167, 5, 2, 'BH-6713 ????????? ??? ?. ????????? M.???? R.GOLD', 6900, 352, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 168 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
168, 4, 2, 'BH-9036 ???????????? ?????? 1.70 ??  METALLIC LINE BURGUNDY 1*6', 16700, 152, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 169 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
169, 4, 2, 'BH-9038 ???????????? ?????? 1.70 ??  METALLIC LINE CARBPON EDITION1*6', 16700, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 170 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
170, 5, 2, 'BH-9079 ?????? 3 ?? METALLIC LINE AQUAMARINE EDIT', 17200, 512, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 171 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
171, 5, 2, 'BL-1249 ?????? ????????? ???????? 1*24 ', 5500, 512, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 172 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
172, 2, 2, 'BL-1531MG-SP C???????? 24 CM 1*4', 6500, 51, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 173 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
173, 2, 2, 'BL-3194 ???????? ????? 7 ??', 9000, 253, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 174 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
174, 2, 2, 'BL-3199A ????? ???????? ???????? 24 ?? ', 13500, 523, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 175 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
175, 2, 2, 'BL-3200A  ????? ???????? ???????? 24 ?? 1*10', 13500, 212, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 176 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
176, 2, 2, 'BL-3299 ????? ???????? ?? ??????????? ?????', 10000, 124, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 177 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
177, 5, 3, '"486-200 ????? ?????? ????? ?? 6 ??.', 0, 0, '8600', '124', '"Lorem ipsum dolor sit amet'
);

/* INSERT QUERY NO: 178 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
178, 5, 3, '"55-2918 ????? ??? ??????? ? ?????? ???????=20', 0, 12500, '1400', '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit'
);

/* INSERT QUERY NO: 179 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
179, 5, 3, '"577-143 ???????? ?????? GLAM', 0, 47500, '567', '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit'
);

/* INSERT QUERY NO: 180 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
180, 5, 3, '"86-2042 ?????? ""???? ?????? ?????/??????"" 1500 ??. (???=8??.) 1*8"', 11800, 151, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 181 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
181, 5, 3, '"86-2044 ?????? ""????"" 800 ?? (???=12??.)"', 7100, 153, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 182 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
182, 5, 3, '"86-2045 ?????? ""????"" 800 ?? (???=12??.)"', 7100, 2464, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 183 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
183, 1, 4, '"07810/12 ?????? ""NORMANDIE"""', 18500, 457, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 184 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
184, 1, 4, '"09551/6 ?????? ""CONVICTION"""', 6530, 235, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 185 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
185, 1, 4, '09646/3 ?????? ???? 19 CL GERBE', 5000, 676, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 186 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
186, 1, 4, '"?????-???? 24', 0, 7630, '232', '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit'
);

/* INSERT QUERY NO: 187 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
187, 1, 4, '12365 ??????? ??? ?????? 6 CL ISLANDE', 6380, 563, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 188 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
188, 1, 4, '12713/12 ??????? 33 Cl ISLANDE', 8200, 246, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 189 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
189, 1, 4, '"13515/12 ??????-?????????? 14 CL ""NORMANDIE"""', 18120, 142, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 190 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
190, 1, 4, '37298/12 ?????? ??? ??????????? 17 CL', 13600, 546, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 191 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
191, 1, 4, '"37413/12 ?????? 19 CL ""ELEGANCE"""', 17690, 325, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 192 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
192, 1, 4, '38949 ??????? 65 CL', 22190, 765, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 193 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
193, 1, 4, '50143/6 ?????? 31CL ELEGANCE', 11100, 234, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 194 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
194, 1, 4, '"57919/12 ????? ??? ????""ROMAN"""', 8850, 98, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 195 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
195, 1, 4, '58012 ???????? ??????? 6 ??', 23860, 35, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 196 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
196, 1, 4, '"62661 ????????? ?????? 250 ML ""CABERNET"" 6*4"', 7760, 153, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 197 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
197, 1, 4, '"? 0143 ???????? ????? 35??. ""PIMPRENELLE"""', 5610, 1351, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 198 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
198, 1, 4, '"? 0366 ???????? ????? ""VARIATION CORAIL"""', 6480, 645, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 199 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
199, 1, 4, '?2118 ????? 12 ?? SALTO', 8380, 523, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 200 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
200, 1, 4, '?2573/6 ?????? FREEZE', 20230, 151, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 201 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
201, 1, 4, '"? 3569  ??????-?????????? ""LINEAL"""', 8040, 135, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 202 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
202, 1, 4, '"? 3571/6  ??????-???? 19CL. ""LINEAL"""', 8590, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 203 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
203, 1, 4, '"? 3572/6  ??????-???? 25CL. ""LINEAL"""', 8880, 256, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 204 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
204, 1, 4, '"? 4321 ???????? ????? ""PLENITUDE RED"""', 5860, 1254, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 205 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
205, 1, 4, '"?9260 ????? ??? ??????????? 22 CL ""DRIP RED"" 4*4"', 11390, 154, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 206 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
206, 6, 4, 'D 7301 ???????????? PAPAVERO', 5990, 685, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 207 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
207, 1, 4, 'D 8060 ?????-???? 27CL SWIRLY BLUE', 6380, 463, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 208 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
208, 1, 4, 'D 9042 ?????? ???? ENCANTA', 13000, 324, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 209 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
209, 1, 4, 'D 9230 ??????? 29 ??  PAQUERETTE', 5990, 234, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 210 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
210, 1, 4, 'D9428 ???????? ???? CALLIGRAPHY', 11470, 123, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 211 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
211, 6, 4, 'D 9462 ??????? 30 ??  SWIRLY BLUE', 5690, 453, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 212 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
212, 6, 4, 'D 9588 ??????? ????????  RED DREAM', 5550, 352, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 213 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
213, 6, 4, 'D 9632 ???????? ?????  RED DREAM', 6020, 124, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 214 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
214, 6, 4, '? 2284 ????? ???????? FLORE', 5410, 235, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 215 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
215, 1, 4, 'E9329 ?????-???????? 44 CL WORLDCOCTAIL EXPERIENCE', 6320, 512, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 216 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
216, 1, 4, 'G0232 ??????-?????? 6 Cl  PETITS GOURMANDS', 5290, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 217 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
217, 6, 4, 'G0567 ???????? ????? 19 ????????? ????? EVERYDAY', 16000, 35, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 218 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
218, 1, 4, 'G1483 ????? ??? ???? 36 CL VERSAILLES 6*4', 7600, 236, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 219 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
219, 1, 4, 'N1041 ????? ??? ???? 72 CL VERSAILLES 4*6', 9690, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 220 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
220, 1, 4, 'G1648 ????? ??? ???? 48 CL VERSAILLES 4*6', 7530, 646, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 221 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
221, 6, 4, 'G5520 ???????? ????? 30 ????????? ????? EVERY DAY', 23500, 152, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 222 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
222, 1, 4, 'H1789 ?????? ???? 22 CL LOTUSIA 1*4', 15140, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 223 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
223, 1, 4, 'H2600 ????? ??? ???? 35 CL HERMITAGE', 8260, 145, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 224 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
224, 6, 4, 'E6196 ???????? ????? 19 ?? ?????? AUTHENTIC ', 31900, 123, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 225 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
225, 6, 4, 'E6197 ???????? ????? 19 ?? AUTHENTIC WHITE', 33000, 152, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 226 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
226, 1, 4, '37784 (38649) ?????? ???? 22 MM  CADIX 1*8', 8940, 352, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 227 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
227, 6, 4, 'J9924 ???????? ????? 38 ?? CADIX', 30500, 152, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 228 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
228, 1, 4, 'D2371 ?????? ???? 22 CL CARINE BLACK & WHITE 1*6', 9500, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 229 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
229, 1, 4, 'D4401 FINCAN TAKIM 22 CC CARINE WHITE', 9940, 512, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 230 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
230, 6, 4, 'N1491 ???????? ????? 19 ?? ????? ?????-????? ', 19600, 512, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 231 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
231, 6, 4, 'N1500 ??????? ????? 30 ?? CARINE BLACK & WHITE (D2382) ', 27500, 51, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 232 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
232, 6, 4, '21772 ????? 310??.RECEPTION', 5320, 253, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 233 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
233, 6, 4, '"? 1033 ????? 31', 0, 5400, '523', '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit'
);

/* INSERT QUERY NO: 234 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
234, 1, 4, 'D8222 ?????? ????? 22 CL DIWALI 1*6', 10930, 212, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 235 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
235, 1, 4, '63368 ?????? ???? 22 CL EVOLUTION 1*6', 8940, 124, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 236 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
236, 6, 4, 'L3271 ???????? ????? 19 ?? HARENA', 16000, 124, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 237 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
237, 6, 4, 'C9860 ???????? 240 M? QUADRATO WHITE 1*6', 5000, 1400, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 238 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
238, 6, 4, 'D6408 ????? 35x25 QUADRATO BLACK 1*12', 5130, 567, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 239 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
239, 6, 4, 'D6413 ??????? ???????? 35 ?? QUADRATO WHITE 1*12', 5130, 151, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 240 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
240, 1, 4, 'E8848 ?????? ???? 22 CL QUADRATO BLACK (C3115) 1*4', 12420, 153, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 241 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
241, 1, 4, 'E8865  ?????? ???? 22 CL QUADRATO WHITE 1*4', 12420, 2464, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 242 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
242, 1, 4, 'E8845 ?????? ???? 22 CL TRIANON (14466) 1*4', 9940, 457, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 243 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
243, 1, 4, 'G9037 ?????? ???? ?????? 22 CL TRIANON 1*4', 8000, 235, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 244 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
244, 6, 4, 'P2961 ???????? ????? 19 ????????? DIWALI LIGHT BLUE', 21750, 676, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 245 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
245, 1, 4, 'P3678 ???????????  ??????? 3PC+LID LAGON', 6130, 232, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 246 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
246, 6, 4, 'P4676 ???????? ????? 38 ?? CARINE BLACK & WHITE', 39000, 563, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 247 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
247, 6, 4, 'P4677 ???????? ????? AUTHENTIC ??????-?????  38 ??', 56000, 246, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 248 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
248, 6, 4, 'R 0407 ??????? 220 MIX UP', 5150, 142, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 249 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
249, 3, 4, '"? 2204/12 ???????? ????""HARLEY"""', 15650, 546, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 250 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
250, 3, 4, 'T3101 ???????? ????? 12 ???? VESCA 1*4', 26920, 325, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 251 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
251, 3, 4, 'T3102 ???????? ????? 12 ???? VESCA 1*4', 26920, 765, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 252 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
252, 3, 4, 'T3105 ????????? ????? 12 ?? VESCA', 20580, 234, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 253 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
253, 3, 4, 'T3106 ????????? ????? 12 ???? VESCA', 20580, 98, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 254 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
254, 3, 4, 'T3110 ?????? ????? 12 ???? VESCA', 13160, 35, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 255 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
255, 3, 4, '? 3304/12 ???????? ???', 23530, 153, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 256 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
256, 1, 4, '"53668 C?????-????? 30 CC ""STERLING"""', 5310, 1351, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 257 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
257, 1, 4, '"?5105 ??????-????? 300 CC ""LISBONN"""', 5260, 645, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 258 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
258, 6, 4, 'P9345 ??????? ????? ?????? ??? 3??', 5500, 523, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 259 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
259, 6, 4, 'N0468  TEMP ROUND PURE BOX ACTIVE PINK 3PC', 7790, 151, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 260 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
260, 1, 4, 'H2358 ?????? ?? ????????? 7 ?? ASCOT 1*3', 10520, 135, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 261 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
261, 1, 4, 'N0792 ?????? ?? ????????? 7 PCS NEO+KONE COLOR PENCIL1*3', 6000, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 262 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
262, 1, 4, 'P5537 DRINK SET 7 Pcs NEO+KONE HELLO SUMMER', 5600, 256, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 263 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
263, 1, 4, 'P6287 ??????? ????? 7 ?? MINUET 1*3', 6000, 1254, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 264 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
264, 1, 4, 'P6288 ??????? ????? 7 ?? PRUNIER 1*3', 5480, 154, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 265 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
265, 1, 4, 'G1988 ?????? ???? 22 CL TEMP CARINA PAQUERETTE 1*6', 8000, 685, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 266 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
266, 1, 4, 'G5919 ?????? ???? 22 CL ??????? ????????? 1*6', 9000, 463, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 267 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
267, 1, 4, 'G6680 ?????? ???? 22 CL WAVE MANGROV 1*6', 13000, 324, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 268 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
268, 6, 4, 'G8998 ???????? ????? 19 ????????? FELITSA 1*2', 15000, 234, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 269 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
269, 6, 4, '"L9480 LISBONNE RAINBOW O/F TUMBLER 30 "', 5000, 123, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 270 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
270, 6, 4, 'N1190 ???????? ????? 19 ?? ????? ??????? 1*2', 22430, 453, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 271 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
271, 6, 4, 'N1201 ???????? ????? 46 ?? SIMPLY MARAH', 47000, 352, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 272 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
272, 6, 4, 'N2063 ???????? ????? 19 ?? ARCOPAL CYBELE 1*2', 21810, 124, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 273 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
273, 6, 4, 'N2142 ???????? ????? 46 ?? SIMPLY TROMPETTE', 42000, 235, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 274 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
274, 6, 4, 'N2169 ???????? ????? 19 ??.AMB ROZANA BEGONIA  1*2', 25000, 512, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 275 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
275, 6, 4, 'N2214 ???????? ????? 46 ?? NEO CARINA FLORENZA WHITE', 47000, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 276 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
276, 6, 4, 'N2263 ???????? ????? 46 ?? NEO CARINE ABELLA', 51000, 35, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 277 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
277, 6, 4, 'N2305 ???????? ????? 46 ?? SIMPLY COLCHIQUE', 49000, 236, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 278 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
278, 6, 4, 'N2306 ???????? ????? 19 ??. SIMPLY COLCHIQUE 1*2', 25000, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 279 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
279, 6, 4, '"N4798 ???????? ????? 46 ?? ""POEME ANIS"" "', 46000, 646, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 280 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
280, 6, 4, 'N4828 ???????? ????? 46 ?? RED ORCHIS ', 49000, 152, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 281 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
281, 6, 4, 'N4866 ???????? ????? 46 ????????? SIROCCO BROWN', 48630, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 282 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
282, 6, 4, 'N4870 ???????? ????? 46 ?? PAQUARETTE CARINA GREEN', 47000, 145, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 283 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
283, 6, 4, '"N4871 ???????? ????? 46 ?? ""PLENITUDE BLUE"" "', 46000, 123, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 284 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
284, 6, 4, 'N5207 ???????? ????? 46 ??. POP FL MIX GR&OR ', 45500, 152, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 285 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
285, 6, 4, 'N5272 ???????? ????? 46 ?? NEO CARI SOFIANE GREE ', 48500, 352, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 286 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
286, 6, 4, 'N5278 ??????? ????? 3 ?? DISNEY PARTY MICKEY 3*6', 5500, 152, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 287 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
287, 6, 4, 'N5279 ??????? ????? DISNEY PARTY MINNIE 3 PCS 3*6', 5500, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 288 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
288, 1, 4, 'N6430 ?????? ???? 22 ?L CARINE ', 7450, 512, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 289 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
289, 6, 4, 'N6728 ???????? ????? 46 ????????? GREEN ODE', 45500, 512, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 290 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
290, 6, 4, '"N6733 ???????? ????? 46 ?? ""POP FLOWER GREEN"" "', 45000, 51, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 291 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
291, 6, 4, 'N6734 ???????? ????? CARINA FREESIA 46 ??', 49000, 253, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 292 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
292, 6, 4, 'N7094 ???????? ????? 46 ?? CRAZY FLOWER G-2104', 51000, 523, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 293 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
293, 6, 4, 'N8124 ???????? ????? 46 ?? ANGELIQUE RO', 48500, 212, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 294 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
294, 6, 4, 'N8507 ???????? ????? 19 ?? PAQUERETTE GREEN 1*2', 24500, 124, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 295 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
295, 6, 4, 'N8582 ???????? ????? 46 ?? CARINE JACINTHE', 51000, 124, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 296 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
296, 6, 4, 'N8587 ???????? ????? 46 ?? NEO CARINE IRIS', 49000, 1400, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 297 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
297, 6, 4, 'N8692 ???????? ????? 46 ?? NEO CARINA GEMS', 48000, 567, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 298 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
298, 1, 4, 'P1080 ?????? ?? ????????? ??????? ??????? 1*3', 6000, 151, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 299 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
299, 6, 4, 'P1286 YEMEK TAKIMI 46 Pcs SIMPLY TROMPETTE TURQ', 49000, 153, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 300 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
300, 1, 4, 'P3380 ?????? ???? 22 CL ????? ??????? 1*6', 7000, 2464, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 301 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
301, 6, 4, 'P5878 ???????? ????? 46 ?? NEO CARINE PALM SPRINGS', 51000, 457, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 302 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
302, 6, 4, 'P-6006 ???????? ????? 19 ????????? DIWALI WHITE', 29000, 235, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 303 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
303, 1, 4, 'P6876 ?????? ???? 22 CL EVOL TROMPETTE 1*6', 9730, 676, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 304 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
304, 1, 4, 'P6877 ?????? ???? 22 CL EVOL PURPLE 1*6', 9730, 232, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 305 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
305, 1, 4, 'P6878 ?????? ???? 22 CL EVOL RED ORCHIS 1*6', 9880, 563, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 306 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
306, 1, 4, 'P6879 ?????? ???? 22 CL TEMP EVOL KASHIMA 1*6', 9730, 246, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 307 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
307, 1, 4, 'P6881 ?????? ???? 22 CL TEMP  EVOL CORDELIA 1*6', 9730, 142, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 308 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
308, 1, 4, 'P6884  ?????? ???? 22 CL TEMP ESSENCE ORBEA  1*6', 10200, 546, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 309 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
309, 1, 4, 'P6885 ?????? ???? 22 CL TEMP ESSENCE LATONE 1*6', 10200, 325, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 310 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
310, 1, 4, 'P6886  ?????? ???? 22 CL TEMP ESSENCE FLORE  1*6', 10200, 765, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 311 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
311, 1, 4, 'P6887 ?????? ???? 22 CL TEMP ROSE POMPON 1*6', 10200, 234, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 312 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
312, 1, 4, 'P6888  ?????? ???? 22 CL TEMP ESSENCE MABELLE  1*6', 10200, 98, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 313 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
313, 1, 4, 'P6889  ?????? ???? 22 CL TEMP  ESSE COVENT GARD 1*6', 10200, 35, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 314 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
314, 1, 4, 'P6890 ?????? ???? 22 CL TEMP ESS SIROCCO 1*6', 10200, 153, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 315 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
315, 1, 4, 'P6912 ?????? ???? 22 CL TEMP  ESSENCE CELEBRATION  1*6', 10200, 1351, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 316 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
316, 1, 4, 'P6916 ?????? ???? 22 CL TEMP  EVOL TROMP TURQ 1*6', 9730, 645, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 317 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
317, 6, 4, 'P6992 ???????? ????? 46 ??.  EVERYDAY ZIRON', 52240, 523, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 318 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
318, 6, 4, 'P6993 ???????? ????? 46 ??.  EVERYDAY ORON', 53810, 151, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 319 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
319, 6, 4, 'P7076 ???????? ????? 46 ??.   DIWALI WATER COLOR', 54120, 135, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 320 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
320, 1, 4, 'P7108 TEMP RECT FLAT RIM KEEP\'N LAGON 3P SET', 6120, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 321 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
321, 1, 4, 'P7109 TEMP SQR FLAT RIM KEEP\'N LAGON 3P SET', 6120, 256, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 322 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
322, 1, 4, 'P7111 TEMP RECT FLAT RIM KEEP\'N RASP 3PC SET', 6120, 1254, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 323 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
323, 1, 4, '"P7112 TEMP SQR FLAT RIM KEEPN RASP 3PC  SET"', 6120, 154, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 324 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
324, 1, 4, 'P7208 TEMP SQR FLAT RIM KEEP\'N PURPLE 3PC SET', 6120, 685, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 325 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
325, 1, 4, 'P7209 TEMP RECT FLAT RIM KEEP\'N PURPLE 3PC SET', 6120, 463, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 326 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
326, 6, 4, 'P7223  ???????? ????? 46 ????????? ESSENCE LATONE', 50090, 324, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 327 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
327, 6, 4, 'P-7270 YEMEK TAKIMI 46 Pcs DIWALI WHITE ORCHID', 52500, 234, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 328 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
328, 6, 4, 'P7331 TEMP RECT FLAT RIM KEEP\'N GREEN 3PC SET', 6120, 123, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 329 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
329, 1, 4, 'P7341 ?????? ?? ????????? DIAMOND+KONE COLORLICIOUS 1*3', 8000, 453, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 330 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
330, 6, 4, 'P9766  ???????? ????? 46 ?? MELYS MIX&MATCH', 43500, 352, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 331 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
331, 6, 4, 'P9938 ???????? ????? 46 ?? DIWALI DOCELLE', 49000, 124, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 332 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
332, 1, 4, 'Q0727 ?????? ?? ????????? FUN FLORERO+KONE 7PC', 5700, 235, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 333 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
333, 1, 4, 'Q0728 ?????? ?? ????????? FLORERO+KONE 7PC', 5700, 512, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 334 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
334, 6, 4, 'Q0929 ???????? ?????? 46P AMBI JAPANESE ??????? ', 46500, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 335 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
335, 6, 4, 'Q1819 ???????? ????? SIMPLY EGEE 46P ', 49000, 35, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 336 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
336, 6, 4, 'Q3438 ???????? ????? 19 ??. DIWALI WATER COLOR ', 25000, 236, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 337 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
337, 6, 4, 'Q3548 ???????? ????? AUTUMN LEA 46P', 49000, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 338 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
338, 6, 4, 'Q3682 ???????? ????? JUNIA PURPLE 24PC  1*2', 27000, 646, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 339 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
339, 6, 4, 'Q3684 ???????? ????? JUNIA PINK 24PC  1*2', 27000, 152, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 340 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
340, 6, 4, 'Q4142 ???????? ????? JUNIA PURPLE 46P ', 49000, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 341 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
341, 6, 4, 'Q4143 ???????? ????? JUNIA PINK 46P ', 49000, 145, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 342 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
342, 6, 4, 'Q4154 ???????? ????? TIRANA PINK 46P ', 49000, 123, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 343 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
343, 6, 4, 'Q4325 ???????? ????? NORD HEVEA TURQ 46P', 49000, 152, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 344 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
344, 6, 4, 'Q4372 ???????? ??????  46P AMBI PLENITUDE ???????', 46500, 352, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 345 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
345, 6, 4, 'Q4377 ???????? ??????  46P  SIMPLY KASSIA', 49500, 152, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 346 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
346, 6, 4, 'Q4378 ???????? ?????? 46P SIMPLY MARAH ??????? ', 49500, 125, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 347 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
347, 6, 4, 'Q4738 TEM AMB SCOTT WHITE 46P DIN  ST', 46500, 512, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 348 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
348, 6, 4, 'Q4929 ???????? ????? DELNICE GOLD 24PC 1*2', 27000, 512, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 349 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
349, 6, 4, 'Q4931 ???????? ????? DELNICE BLUE 24PC  1*2', 27000, 51, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 350 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
350, 6, 4, 'Q4939 ???????? ????? DELNICE GOLD 46P ST', 49000, 253, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 351 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
351, 6, 4, 'Q4942 ???????? ????? DELNICE BLUE 46P ', 49000, 523, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 352 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
352, 6, 4, 'Q5040 ???????? ????? JUNIA BLACK 46P ', 49000, 212, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 353 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
353, 6, 4, 'Q5119 ???????? ?????  JUNIA BLACK 24PC  1*2', 27000, 124, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 354 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
354, 6, 5, '????????? 22 CM BALANCE', 6250, 124, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 355 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
355, 6, 5, '24 ?? ???????? ????? BALANCE', 48000, 32, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 356 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
356, 6, 5, '??????? 28 CM BREEZE', 6300, 12, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 357 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
357, 6, 5, '????????? 22 CM BREEZE', 6250, 42, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 358 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
358, 6, 5, '???????? ????? 24 CM BREEZE', 5600, 43, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 359 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
359, 6, 5, '???????? ????? 29 CM BREEZE', 7500, 23, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 360 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
360, 6, 5, '?????????? ?????  25 CM BREEZE', 6900, 54, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 361 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
361, 6, 5, '24 ?? ???????? ????? BREEZE', 48000, 21, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 362 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
362, 6, 5, '????????? 22 CM  INFINITY', 6250, 22, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 363 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
363, 6, 5, '24 ?? ???????? ????? SUN', 48000, 32, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);

/* INSERT QUERY NO: 364 */
INSERT INTO `products`(product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords)
VALUES
(
364, 6, 5, '24 ?? ???????? ????? VINTAGE', 48000, 44, '"Lorem ipsum dolor sit amet', ' consectetur adipiscing elit', ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
);
-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
`user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Christine', 'Randolph', 'randolphc@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', '2133  Hill Haven Drive', 'Terra Stree'),
(2, 'Will', 'Willams', 'willainswill@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', '4567  Orphan Road', 'WI'),
(3, 'Demo', 'Name', 'demo@gmail.com', 'password', '9876543210', 'demo ad1', 'ademo ad2'),
(5, 'Steeve', 'Rogers', 'steeve1@gmail.com', '305e4f55ce823e111a46a9d500bcb86c', '9876547770', '573  Pinewood Avenue', 'MN'),
(6, 'Melissa', 'Gilbert', 'gilbert@gmail.com', '305e4f55ce823e111a46a9d500bcb86c', '7845554582', '1711  McKinley Avenue', 'MA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
 ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`product_id`), ADD KEY `fk_product_cat` (`product_cat`), ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=365;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
