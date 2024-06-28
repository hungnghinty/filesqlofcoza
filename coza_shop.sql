-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2024 at 05:29 PM
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
-- Database: `coza_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Trường', 'truong@gmail.com', 'truong123');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `userId`, `productId`, `amount`, `color`, `size`) VALUES
(1, 1, 45, '1', NULL, NULL),
(2, 1, 47, '1', NULL, NULL),
(4, 2, 63, '2', NULL, NULL),
(5, 4, 48, '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `router` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `code`, `router`) VALUES
(16, 'Fastfood', 'FF', 'doannhanh'),
(17, 'Drink', 'DR', 'douong'),
(18, 'Dishes', 'DI', 'doan');

-- --------------------------------------------------------

--
-- Table structure for table `orderaddress`
--

CREATE TABLE `orderaddress` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderaddress`
--

INSERT INTO `orderaddress` (`id`, `userId`, `name`, `phone`, `address`) VALUES
(1, 1, 'abc', '123', 'abc'),
(2, 2, 'hung', '12315165165', 'gốc mít'),
(8, 2, 'hung', '0948962', 'xcvbnm'),
(9, 4, 'hung', '02135', 'háncsa');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `addressId` int(11) DEFAULT NULL,
  `product` varchar(1000) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `addressId`, `product`, `year`, `month`, `day`, `time`, `price`, `status`) VALUES
(3, 1, '47-1-', '2023', '10', '14', '20:47:37', '50000', 3),
(4, 2, '49-1-', '2023', '10', '16', '18:37:20', '50000', 4),
(5, 2, '63-2-IU EM THI 9 IU CHI THI 10', '2023', '10', '17', '15:38:25', '80000', 1),
(6, 2, '49-1-|63-2-', '2023', '10', '17', '22:39:46', '100000', 1),
(7, 2, '63-4-undefined-undefined-', '2023', '10', '17', '17:47:24', '130000', 5),
(8, 2, '49-3-undefined-undefined-', '2023', '10', '17', '22:48:34', '90000', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orderstatus`
--

CREATE TABLE `orderstatus` (
  `id` int(11) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderstatus`
--

INSERT INTO `orderstatus` (`id`, `class`, `name`, `level`) VALUES
(1, 'cho-lay-hang', 'Chờ lấy hàng', 2),
(3, 'dang-giao-hang', 'Đang giao hàng', 3),
(4, 'hoan-thanh', 'Hoàn thành', 4),
(5, 'da-huy', 'Đã hủy', 5);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `code`, `class`, `name`, `description`, `image`, `price`) VALUES
(48, 'FF0048', 'FF', 'Bánh mì ', 'đặc biệt thơm ngon', '231015k81xlMcFG.jpg|2310157i3fwVpv9.jpg|231015SHzrgdGmU.jpg', '15000'),
(49, 'FF0049', 'FF', 'Bánh mì Việt Nam', 'đặc biệt thơm ngon', '231015D5LWhZQ4S.jpg|231015uA0NqrpXd.jpg|231015OeNlzk98Z.jpg', '20000'),
(50, 'FF0050', 'FF', 'Bánh quy', 'đặc biệt thơm ngon', '231015oiSbBZl2x.jpg|231015pVlcgWLFJ.jpg|231015G9z3uQyMU.jpg', '30000'),
(51, 'FF0051', 'FF', 'Gà rán', 'đặc biệt thơm ngon', '231015op2cYT6F1.jpg|231015GpPDAzKET.jpg|23101537qIJsE4c.jpg', '50000'),
(52, 'FF0052', 'FF', 'Hamburger', 'Ngon', '231015ypBmvTxPa.jpg|231015SCJNzAGFK.jpg|231015vKYn1iaz6.jpg', '15000'),
(53, 'DR0053', 'DR', 'Cà phê', 'đặc biệt thơm ngon', '231015RMNCXK5Oh.jpg|231015kFAs3Yy9K.jpg|231015fZCLGVhDT.jpg', '25000'),
(59, 'DR0059', 'DR', 'Trà chanh', 'đặc biệt thơm ngon', '231015pQHJi6ECO.jpg|231015COWAK0Gxv.jpg|231015Wq8Bx9ocN.jpg', '20000'),
(63, 'DR0063', 'DR', 'Trà sữa', 'đặc biệt thơm ngon', '2310156PZEUWx2S.jpg|231015YkIUJsQuM.jpg|231015ril3ZpJIP.jpg', '25000'),
(64, 'DR0064', 'DR', 'Sữa', 'đặc biệt thơm ngon', '231015b8zRkSAPO.jpg|231015wmZcLb8MY.jpg|231015U5cHOEt42.jpg', '15000'),
(65, 'DR0065', 'DR', 'Nước cam', 'đặc biệt thơm ngon', '231015LRYD4QJ6W.jpg|231015Ek354ivTy.jpg|231015H7P5AvxX9.jpg', '20000'),
(66, 'DR0066', 'DR', 'Trà đậu biếc', 'đặc biệt thơm ngon', '231015SKTXPZAm8.jpg|231015JRP4pMxho.jpg|231015hzc2pmrRU.jpg', '25000'),
(67, 'DI0067', 'DI', 'Bánh tráng trộn', 'đặc biệt thơm ngon', '2310151zGTEP3Fr.jpg|231015Fw9eKj8id.jpg|2310150vyY5giFX.jpg', '35000'),
(68, 'DI0068', 'DI', 'Bún bò huế', 'đặc biệt thơm ngon', '23101536r8eBcn9.fif|231015aKZVGXhBM.fif|231015GULuS3ibY.jpg', '30000'),
(69, 'DI0069', 'DI', 'Cơm ba ghiền', 'đặc biệt thơm ngon', '231015WYS6F4dxa.peg|231015AzHDRxdZG.peg|231015BdvHkny0h.peg', '40000'),
(70, 'DI0070', 'DI', 'Cơm gà', 'đặc biệt thơm ngon', '231015U2QT4hDNg.jpg|231015NwhCbq6Ia.jpg|231015EydWHJhp7.jpg', '30000'),
(71, 'DI0071', 'DI', 'Cơm niêu', 'đặc biệt thơm ngon', '231015Fs2LDaoXr.jpg|231015K7FtTY1sw.jpg|231015zIYEUihLq.fif', '50000');

-- --------------------------------------------------------

--
-- Table structure for table `productstatus`
--

CREATE TABLE `productstatus` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `isBestseller` tinyint(1) DEFAULT NULL,
  `isFeatured` tinyint(1) DEFAULT NULL,
  `isSale` tinyint(1) DEFAULT NULL,
  `isToprate` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `avatar`) VALUES
(1, 'Trường', 'truong123@gmail.com', ''),
(2, 'hung', 'hung@gmail.com', ''),
(3, 'abc', 'abcahsbcjkasciuhi@gmail.com', ''),
(4, 'jqk', 'jqk@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`id`, `userId`, `email`, `password`) VALUES
(1, 1, 'truong123@gmail.com', '$2y$10$ch4OMqtaqZ5wzsA3ksSEl.pUzQo6xvKCuvgMr9R84XMLmDZdWmDtC'),
(2, 2, 'hung@gmail.com', '$2y$10$3q6VZMHq2TEcP51992gqWear8wTAo0fZSNmQZl4SIJcn4X32GGj8a'),
(3, 3, 'abcahsbcjkasciuhi@gmail.com', '$2y$10$qLhlo5xe7DAAI82l/V/hKO6752SfS5UggAGYOtVhD8nMxtST7yL/m'),
(4, 4, 'jqk@gmail.com', '$2y$10$ZiVKhsFzAQp.DJ.VqdsEQuuBVMF61NRiVapbfXPdgJ2ZVi0cQ7Hdu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderaddress`
--
ALTER TABLE `orderaddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addressId` (`addressId`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `orderstatus`
--
ALTER TABLE `orderstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productstatus`
--
ALTER TABLE `productstatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orderaddress`
--
ALTER TABLE `orderaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orderstatus`
--
ALTER TABLE `orderstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `productstatus`
--
ALTER TABLE `productstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderaddress`
--
ALTER TABLE `orderaddress`
  ADD CONSTRAINT `orderaddress_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`addressId`) REFERENCES `orderaddress` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`status`) REFERENCES `orderstatus` (`id`);

--
-- Constraints for table `productstatus`
--
ALTER TABLE `productstatus`
  ADD CONSTRAINT `productstatus_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`id`);

--
-- Constraints for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD CONSTRAINT `userlogin_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
