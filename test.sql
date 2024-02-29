-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2024 at 05:47 PM
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
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `bets`
--

CREATE TABLE `bets` (
  `Id` int(11) NOT NULL,
  `Amount` decimal(65,30) NOT NULL,
  `Details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bets`
--

INSERT INTO `bets` (`Id`, `Amount`, `Details`) VALUES
(1, 110.000000000000000000000000000000, 'shen'),
(2, 220.000000000000000000000000000000, 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Email` longtext NOT NULL,
  `PasswordHash` longblob NOT NULL,
  `PasswordSalt` longblob NOT NULL,
  `VerificationToken` longtext DEFAULT NULL,
  `VerifiedAt` datetime(6) DEFAULT NULL,
  `PasswordResetToken` longtext DEFAULT NULL,
  `ResetTokenExpires` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Email`, `PasswordHash`, `PasswordSalt`, `VerificationToken`, `VerifiedAt`, `PasswordResetToken`, `ResetTokenExpires`) VALUES
(6, 'user@example.com', 0x9c441ceaf1be32c152099e2789c2941be59004a768854ab1410d05bfbbe2de5dde5139030b7eaec32d4c2fce7a9a8963fdafa95fe28952e992a27139d27d5a8d, 0xe957938d40b126d23d5b56db8561f1e1f29d04b0e97ea6c5956a115f221232ffdd943135172949bbcbe0798efb8cf7c113f712392dd4e5759f60fb5332219d898431b63d8d745b7a4c8f8c09c26d251b11a43b9569202b946ee6fa7831e2e4a8c504bfda035fa592a5d0b4c9b14882a991fc635a700567bc842240c562694ecc, '404A7BF60708CFCEE17A99A7E1D3356DF9F4AEFF79E1739A1D84497D0101D2B4C28C926B02ACAF78DC83B04EAC02441A54E74AE1F38025DCCB4A2FAE0DB7309D', NULL, NULL, NULL),
(8, 'John@example.com', 0x326ba0514b184530f93a9a1b942d309c475aa3c488454bd5cc5d4eb8788453c7d1fb75e2eff15c340231616c9fb5ea989f518a7998f2799172998265c68eb4d3, 0xacaf9611ac477a78ab30e8b6e1d95964e878f2b77897486781ed6c41ad45b746ff7b68b9a561d38aedb080454f96db027908c9cc04c51b3d6bddb4feefa32420e92bc3975e302296fecd37b7f96fdf5d06578f800af235f55b584a56f361c4b8ef944609c87ca325b732f3be97099f5c9c97c49368311450fab7f4b49523dcdf, '772EA4772D28EB3168193AC9C332D21AC45C6CC95AA11F6B303BDC0795C3D7B57A402B02E6E5395134A7590661E3EBD983226D148D04DC86B6A835AD60C80508', NULL, NULL, NULL),
(9, 'George@example.com', 0x5107c8b8361791e1ddcc8c8ed0b3785e4d42bdd756f74891ae5fc1eace5d11b2778ade4457e5b40218e09362048629921452a8103eb0f3e2e2b3a309e536c85c, 0x07ba52d26770dd944a3d49b5a4a3d132abe79984e37b999651429eb797bae0092e7ebe29e10b50de029330e3551394e0fb668760655910eb03b0feeca862ff22a57de703f52442f7c40e2ed21c04a4a4e5369ef21edb2b63954fbd30986687f5946f044f92f9857257b413947eb19135c96ce69052838c0caa0afd0b6d609bca, '56099C4F19AAB6524E031BF15C47C43A0BF48C277F2730A3AAE7EC7DA84F3F97A4A47443F5CDD1AB4E4F3CEDBFAF3841604D12D36A43301B0826DEB2031F47B5', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20220715183218_init', '6.0.7'),
('20221022175008_addCompanyToUserTable', '6.0.7'),
('20221022175715_addCompanyToUserTableNullable', '6.0.7'),
('20230616050940_Initial migration', '7.0.7'),
('20240223205356_init2', '6.0.7'),
('20240223213410_first', '5.0.17'),
('20240224235010_init', '7.0.7'),
('20240227002200_Initial', '7.0.7'),
('20240229145803_Initialnew', '7.0.7'),
('20240229151642_newMigration', '7.0.7'),
('20240229152328_Firstmigration', '7.0.7'),
('20240229154120_initial2', '7.0.7'),
('20240229161351_Newmig', '7.0.7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bets`
--
ALTER TABLE `bets`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bets`
--
ALTER TABLE `bets`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
