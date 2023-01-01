-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 11:53 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wt`
--

-- --------------------------------------------------------

--
-- Table structure for table `authortable`
--

CREATE TABLE `authortable` (
  `authorid` int(11) NOT NULL,
  `authorname` varchar(100) NOT NULL,
  `authoremail` varchar(100) NOT NULL,
  `authoraddress` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authortable`
--

INSERT INTO `authortable` (`authorid`, `authorname`, `authoremail`, `authoraddress`) VALUES
(3, 'Johnson', 'reddot@hotmail.com', 'LDN'),
(5, 'Mohamed', 'mobamba@gmail.com', 'Susan Lawrence Hou'),
(6, 'Mona', 'mona@gmail.com', 'bahamas');

-- --------------------------------------------------------

--
-- Table structure for table `categorytable`
--

CREATE TABLE `categorytable` (
  `categoryid` int(15) NOT NULL,
  `categoryname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorytable`
--

INSERT INTO `categorytable` (`categoryid`, `categoryname`) VALUES
(6, 'Breakfast');

-- --------------------------------------------------------

--
-- Table structure for table `recipetable`
--

CREATE TABLE `recipetable` (
  `recipeid` int(20) NOT NULL,
  `recipename` varchar(50) NOT NULL,
  `categoryname` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `ingredients` varchar(100) NOT NULL,
  `prepmethod` varchar(100) NOT NULL,
  `preptime` varchar(20) NOT NULL,
  `cookingtime` varchar(50) NOT NULL,
  `servings` varchar(100) NOT NULL,
  `imagename` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipetable`
--

INSERT INTO `recipetable` (`recipeid`, `recipename`, `categoryname`, `author`, `ingredients`, `prepmethod`, `preptime`, `cookingtime`, `servings`, `imagename`) VALUES
(8, 'Pancakes', 'Dessert', 'Mikkeal', 'Egg, baking powder, all purpose flour, white sugar, vegetable oil', 'In a large bowl, mix flour, sugar, baking powder and salt. Make a well in the center, and pour in mi', '5 Minutes', '10 minutes', '8', 'k_archive_8cfbcbb2919742682345681d469b7417a73e4dfe'),
(11, 'Canjeero', 'Breakfast', '𝐉𝐨𝐡𝐧', '1 cup white corn flour,½ cup sorghum flour,1 Tbsp Instant dry yeast,4 cups self-raising flour,¼ cup ', 'Mix All Ingredients , Then heat up a pan , drizzle the pan with oil and cook on each side for 3 minu', '10 minutes', '6 minutes', '4', 'canjeero.jpg'),
(12, 'Chocolate bar', 'Dessert', 'Faisel', 'Chocolate , Cocoa', 'Mix Ingredients and bake for 30 mins', '10 minutes', '20 minutes', '5', 'choco.webp'),
(13, 'Burgers', 'Main Course', 'Jindi', '3 ounces of mince 1 spring onion vegetable oil for cooking 1 burger bun 1 tablespoon mayonnaise 1 ca', 'Chop the spring onion and mix it with the mince. Season with salt and pepper. Shape the mince into a', '10 minutes', '6 minutes', '4', 'burger.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'Faisel', '67daa1e37741919c4f8ad62c8eac61d6', 'faiselabdullahi@hotmail.com'),
(2, 'Barry', '202cb962ac59075b964b07152d234b70', 'john32@gmail.com'),
(3, 'dsas', 'd41d8cd98f00b204e9800998ecf8427e', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authortable`
--
ALTER TABLE `authortable`
  ADD PRIMARY KEY (`authorid`);

--
-- Indexes for table `categorytable`
--
ALTER TABLE `categorytable`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `recipetable`
--
ALTER TABLE `recipetable`
  ADD PRIMARY KEY (`recipeid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authortable`
--
ALTER TABLE `authortable`
  MODIFY `authorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categorytable`
--
ALTER TABLE `categorytable`
  MODIFY `categoryid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `recipetable`
--
ALTER TABLE `recipetable`
  MODIFY `recipeid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
