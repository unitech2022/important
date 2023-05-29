-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 12:07 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HatlliDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `AspNetRoleClaims`
--

CREATE TABLE `AspNetRoleClaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetRoles`
--

CREATE TABLE `AspNetRoles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `AspNetRoles`
--

INSERT INTO `AspNetRoles` (`Id`, `Name`, `NormalizedName`, `ConcurrencyStamp`) VALUES
('bd26a3fe-d898-4ecf-a026-9756c272a09c', 'user', 'USER', 'd6f76dc5-c3e7-46f1-bc4d-6b76d2a7f3dc'),
('c9cf39c2-52e2-4ec2-86ec-64020ca6c3ee', 'provider', 'PROVIDER', '5284b94a-7d78-478a-9608-2e44ac0ec56d');

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserClaims`
--

CREATE TABLE `AspNetUserClaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserLogins`
--

CREATE TABLE `AspNetUserLogins` (
  `LoginProvider` varchar(255) NOT NULL,
  `ProviderKey` varchar(255) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserRoles`
--

CREATE TABLE `AspNetUserRoles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `AspNetUserRoles`
--

INSERT INTO `AspNetUserRoles` (`UserId`, `RoleId`) VALUES
('63e842dd-a9ba-4741-b6ed-1d4735f2447d', 'bd26a3fe-d898-4ecf-a026-9756c272a09c'),
('6ade9cd0-35c5-4ec2-b48b-535d7a24f951', 'bd26a3fe-d898-4ecf-a026-9756c272a09c'),
('a50d4ae2-5983-487a-b682-8ab420854bd3', 'bd26a3fe-d898-4ecf-a026-9756c272a09c'),
('b47971ad-04d0-48a6-afe4-9715f520ea41', 'c9cf39c2-52e2-4ec2-86ec-64020ca6c3ee'),
('f5af4ed6-87a8-43f6-a178-4e4d19f024a5', 'bd26a3fe-d898-4ecf-a026-9756c272a09c'),
('fb7bf0a8-2ce1-44a0-8530-afe825b29cb6', 'bd26a3fe-d898-4ecf-a026-9756c272a09c');

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUsers`
--

CREATE TABLE `AspNetUsers` (
  `Id` varchar(255) NOT NULL,
  `Role` longtext DEFAULT NULL,
  `FullName` longtext DEFAULT NULL,
  `DeviceToken` longtext DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Code` longtext DEFAULT NULL,
  `TypeService` longtext DEFAULT NULL,
  `City` longtext DEFAULT NULL,
  `Points` double DEFAULT NULL,
  `Lat` double DEFAULT NULL,
  `Lng` double DEFAULT NULL,
  `SurveysBalance` double DEFAULT NULL,
  `CreatedAt` datetime(6) DEFAULT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  `Address` longtext DEFAULT NULL,
  `ImagePassport` longtext DEFAULT NULL,
  `LogoCompany` longtext DEFAULT NULL,
  `NameAdministratorCompany` longtext DEFAULT NULL,
  `ProfileImage` longtext DEFAULT NULL,
  `Rate` double DEFAULT NULL,
  `About` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `AspNetUsers`
--

INSERT INTO `AspNetUsers` (`Id`, `Role`, `FullName`, `DeviceToken`, `Status`, `Code`, `TypeService`, `City`, `Points`, `Lat`, `Lng`, `SurveysBalance`, `CreatedAt`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`, `Address`, `ImagePassport`, `LogoCompany`, `NameAdministratorCompany`, `ProfileImage`, `Rate`, `About`) VALUES
('63e842dd-a9ba-4741-b6ed-1d4735f2447d', 'user', NULL, 'ffffffff', 0, '0472', NULL, NULL, 0, 0, 0, 0, '2023-05-27 14:27:13.644754', '01011629275', '01011629275', NULL, NULL, 0, 'AQAAAAEAACcQAAAAEJOqRUT7roElaIaLut+7i3hHACOauXS9CYOMzZCym4SYT7gg3uc85t5tTSr2V7pW5g==', 'MB4CJQGJP75XUAA3EDTB7HSTZZMHZOYS', 'ee42d278-0a44-41c7-b219-00fdb781f7c9', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
('6ade9cd0-35c5-4ec2-b48b-535d7a24f951', 'user', NULL, NULL, 0, '0432', NULL, NULL, 0, 0, 0, 0, '2023-05-27 14:13:21.923169', '01011629274', '01011629274', NULL, NULL, 0, 'AQAAAAEAACcQAAAAEHRBWwaXRech5pPTkEWg76BfQow4bGTSlkRCW14ANSUSydGAtyBYLcgwTumR26Ls8Q==', 'DV7KTSVYR6VKBKRIGGY42AEZ5MSTOIX5', '4ead558f-4d0b-4a80-8cbb-09734b848c31', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
('a50d4ae2-5983-487a-b682-8ab420854bd3', 'user', 'ammar', 'ffffffff', 0, '0550', NULL, 'Sohage', 0, 0, 0, 0, '2023-05-27 01:44:53.639718', '01011629271', '01011629271', 'ammar@gmail.com', 'AMMAR@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEO4QVoo5xBhs3snhBm5JVl7JRpld22k7Sw4vTe4rT+0vRf24U748e0Ia6z1v+ugcBw==', '5B2WBRFXCMURPD4XOOYLK2ZZNNZBBX3I', '6aa4ea62-fdd5-4c53-a885-e7107b906994', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
('b47971ad-04d0-48a6-afe4-9715f520ea41', 'provider', NULL, NULL, 0, '0429', NULL, NULL, 0, 0, 0, 0, '2023-05-27 14:31:43.566520', '010116292753', '010116292753', NULL, NULL, 0, 'AQAAAAEAACcQAAAAENKxJamycoYD0+kvhty1N3XNCO9ZXSdUmDAPUbK6fd56zf3aAC2IAMGuoi2NpK8+Ww==', 'ODR4DWL5QUPF24RIJYWDUOIUZAQ6WGCA', 'b5adceb6-caae-4793-b764-7c06d83260ab', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
('f5af4ed6-87a8-43f6-a178-4e4d19f024a5', 'user', 'ammar', 'ffffffff', 0, '0617', NULL, 'Sohage', 0, 0, 0, 0, '2023-05-27 01:47:49.550031', '01011629272', '01011629272', 'ammawr@gmail.com', 'AMMAWR@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEMCk2EPU42wpHKuPQWWf+SlwuSbXzs2LVUj5LCD40uUb8fe1voW7EoUIecN7yRylcg==', 'KHW45XXBYX6TRRSWS3ZYEW45GRSQWMIK', '1d2c937b-9dc9-47c5-a058-02bb8306c2a8', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
('fb7bf0a8-2ce1-44a0-8530-afe825b29cb6', 'user', 'ammar', 'ffffffff', 0, '0514', NULL, 'Sohage', 0, 0, 0, 0, '2023-05-27 01:49:42.927352', '01011629273', '01011629273', 'ggbfg@gmail.com', 'GGBFG@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEEEu9HZL/R0geUjmZ615M822YkV5mVDMGuXJLCP6D7j7mJkyuSor9w6r5flyzpOjfQ==', 'UNVZ66VH6D45MWW2ZBPRVX3ML6BAAVXE', 'c9e6cb21-2b71-405c-be59-ce7a55044d76', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserTokens`
--

CREATE TABLE `AspNetUserTokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE `Categories` (
  `Id` int(11) NOT NULL,
  `Name` longtext DEFAULT NULL,
  `ImageUrl` longtext DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `Id` int(11) NOT NULL DEFAULT 0,
  `ProviderId` longtext DEFAULT NULL,
  `CategoryId` int(11) NOT NULL DEFAULT 0,
  `BrandID` int(11) NOT NULL DEFAULT 0,
  `Name` longtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `Images` longtext DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Discount` double DEFAULT NULL,
  `Status` double DEFAULT NULL,
  `Calories` longtext DEFAULT NULL,
  `Rate` double NOT NULL DEFAULT 0,
  `CreatedAt` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `__EFMigrationsHistory`
--

CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `__EFMigrationsHistory`
--

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`) VALUES
('20230526164908_InitialCreate', '6.0.10'),
('20230526201748_InitialCreate1', '6.0.10'),
('20230526202140_InitialCreate2', '6.0.10'),
('20230526210341_InitialCreate3', '6.0.10'),
('20230526213938_InitialCreate4', '6.0.10'),
('20230526215007_InitialCreate5', '6.0.10'),
('20230526224854_InitialCreate6', '6.0.10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indexes for table `AspNetRoles`
--
ALTER TABLE `AspNetRoles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indexes for table `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indexes for table `AspNetUserLogins`
--
ALTER TABLE `AspNetUserLogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indexes for table `AspNetUserRoles`
--
ALTER TABLE `AspNetUserRoles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indexes for table `AspNetUsers`
--
ALTER TABLE `AspNetUsers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indexes for table `AspNetUserTokens`
--
ALTER TABLE `AspNetUserTokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `__EFMigrationsHistory`
--
ALTER TABLE `__EFMigrationsHistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserLogins`
--
ALTER TABLE `AspNetUserLogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserRoles`
--
ALTER TABLE `AspNetUserRoles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserTokens`
--
ALTER TABLE `AspNetUserTokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
