-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2024 at 05:46 PM
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
-- Database: `pcparts`
--

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `name` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `sidepan` varchar(50) NOT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`name`, `type`, `sidepan`, `price`) VALUES
('Asus Prime AP201', 'MicroATX Mini Tower', 'Mesh', 89.99),
('Cooler Master MasterBox Q300L', 'MicroATX Mini Tower', 'Acrylic', 39.99),
('Corsair 4000D Airflow', 'ATX Mid Tower', 'Tinted Tempered Glass', 94.99),
('Silverstone ALTA F2', 'ATX Full Tower', 'Tempered Glass', 999.99);

-- --------------------------------------------------------

--
-- Table structure for table `cpu`
--

CREATE TABLE `cpu` (
  `name` varchar(20) NOT NULL,
  `socket` varchar(10) NOT NULL,
  `cores` varchar(5) NOT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cpu`
--

INSERT INTO `cpu` (`name`, `socket`, `cores`, `price`) VALUES
('AMD Ryzen 5 7600X', 'AM5', '6', 213.99),
('AMD Ryzen 7 7700X', 'AM5', '8', 299.99),
('AMD Ryzen 9 7900X', 'AM5', '12', 389.99),
('Intel i3 14100', 'LGA 1700', '4', 139.99),
('Intel i5 14600K', 'LGA 1700', '14', 299.99),
('Intel i7 14700K', 'LGA 1700', '20', 399.99),
('Intel i9 14900K', 'LGA 1700', '24', 544.99);

-- --------------------------------------------------------

--
-- Table structure for table `cpucooler`
--

CREATE TABLE `cpucooler` (
  `name` varchar(30) NOT NULL,
  `fanrpm` varchar(20) NOT NULL,
  `radiator` varchar(10) NOT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cpucooler`
--

INSERT INTO `cpucooler` (`name`, `fanrpm`, `radiator`, `price`) VALUES
('CoolerMaster Hyper 212', '800 - 2000 RPM', '---', 45.99),
('Corsair H100x', '1700 RPM', '240mm', 99.99),
('EVGA CLC', '500-2400 RPM', '120mm', 74.99),
('NZXT Kraken X73', '500-2000 RPM', '360mm', 184.99);

-- --------------------------------------------------------

--
-- Table structure for table `gpu`
--

CREATE TABLE `gpu` (
  `name` varchar(50) NOT NULL,
  `memory` varchar(10) NOT NULL,
  `memtype` varchar(10) NOT NULL,
  `price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gpu`
--

INSERT INTO `gpu` (`name`, `memory`, `memtype`, `price`) VALUES
('ASRock Challenger D Radeon RX 6600', '8 GB', 'GDDR6', 199.99),
('Asus ROG STRIX GAMING OC GeForce RTX 4090', '24 GB', 'GDDR6X', 2199.99),
('Gigabyte GAMING OC Radeon RX 7800 XT', '16 GB', 'GDDR6', 499.99),
('Gigabyte WINDFORCE OC GeForce RTX 4070', '12 GB', 'GDDR6X', 549.99);

-- --------------------------------------------------------

--
-- Table structure for table `mobo`
--

CREATE TABLE `mobo` (
  `name` varchar(30) NOT NULL,
  `wifi` varchar(10) NOT NULL,
  `formfactor` varchar(10) NOT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mobo`
--

INSERT INTO `mobo` (`name`, `wifi`, `formfactor`, `price`) VALUES
('ASRock H610M', 'Wi-Fi 5', 'Mini ITX', 124.99),
('Gigabyte Z690 AERO G', 'Wi-Fi 6', 'ATX', 259.99),
('Gigabyte Z690 AORUS MASTER', 'Wi-Fi 6', 'EATX', 369.99),
('MSI PRO B660M-A', 'None', 'Micro ATX', 129.99);

-- --------------------------------------------------------

--
-- Table structure for table `psu`
--

CREATE TABLE `psu` (
  `name` varchar(50) NOT NULL,
  `effrate` varchar(20) NOT NULL,
  `watt` varchar(10) NOT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `psu`
--

INSERT INTO `psu` (`name`, `effrate`, `watt`, `price`) VALUES
('Asus ROG THOR 1600T Gaming', '80+ Titanium', '1600 W', 631.99),
('Cooler Master MWE', '80+ Gold', '850 W', 94.99),
('Corsair CX650M', '80+ Bronze', '650 W', 69.99),
('Thermaltake Toughpower GF1', '80+ Gold', '750 W', 79.99);

-- --------------------------------------------------------

--
-- Table structure for table `ram`
--

CREATE TABLE `ram` (
  `name` varchar(40) NOT NULL,
  `speed` varchar(20) NOT NULL,
  `modules` varchar(20) NOT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ram`
--

INSERT INTO `ram` (`name`, `speed`, `modules`, `price`) VALUES
('Corsair Vengeance LPX 32GB', 'DDR4-3600', '2 x 16 GB', 94.99),
('Corsair Vengeance RGB Pro 16 GB', 'DDR4-3200', '2 x 8 GB', 70.99),
('G.SKILL Ripjaws V 64GB', 'DDR4-3200', '4 x 16 GB', 179.99),
('G.SKILL Trident Z5 RGB 32GB', 'DDR5-6000', '2 x 16 GB', 189.99);

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `name` varchar(50) NOT NULL,
  `cap` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`name`, `cap`, `type`, `price`) VALUES
('Crucial P3', '500 GB', 'NVME SSD', 44.99),
('Samsung 870 Evo', '1 TB', '2.5\" SSD', 74.99),
('Samsung 970 Evo Plus', '1 TB', 'NVME SSD', 89.99),
('Seagate Barracuda Compute', '2 TB', '3.5\" HDD', 64.99);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `cpucooler`
--
ALTER TABLE `cpucooler`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `gpu`
--
ALTER TABLE `gpu`
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_2` (`name`);

--
-- Indexes for table `mobo`
--
ALTER TABLE `mobo`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `psu`
--
ALTER TABLE `psu`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD UNIQUE KEY `name` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
