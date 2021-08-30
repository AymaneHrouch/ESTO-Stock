-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 30, 2021 at 12:14 PM
-- Server version: 8.0.13-4
-- PHP Version: 7.2.24-0ubuntu0.18.04.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `X4XBfk81Qq`
--

-- --------------------------------------------------------

--
-- Table structure for table `casier6`
--

CREATE TABLE `casier6` (
  `id` int(11) NOT NULL,
  `N` varchar(20) DEFAULT NULL,
  `CIRCUIT` text,
  `TYPE` text,
  `N_D_P` varchar(20) DEFAULT NULL,
  `PCK` text,
  `VCC` text,
  `VIL_MAX_0` text,
  `VIH_MIN_1` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casier6`
--

INSERT INTO `casier6` (`id`, `N`, `CIRCUIT`, `TYPE`, `N_D_P`, `PCK`, `VCC`, `VIL_MAX_0`, `VIH_MIN_1`) VALUES
(1, '3-1', '74HC00_R', 'NAND', '4', 'DIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(2, '3-1', '74HCT00', 'NAND', '4', 'DIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(3, '3-1', '74LS00N', 'NAND', '4', 'SOIC-14', '5v', '0v à 0,8v', '2v à 5v'),
(4, '3-1', '74LS00BN', 'NAND', '4', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(5, '3-1', 'CD74HC00E', 'NAND', '4', 'PDIP-14', '5v', '0.5 à 1.8 v', '1.5v à 4.2v'),
(6, '3-1', '74LS00B1', 'NAND', '4', 'DIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(7, '3-1', 'SN74LS01N', 'NAND', '4', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(8, '3-1', 'T74LS02B1', 'NOR', '4', 'DIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(9, '3-1', 'M74HC02B1', 'NOR', '4', 'DIP-14', '5v', '0,5v à 1,8v', '1.5v à 4.2v'),
(10, '3-1', 'CD74HCT02', 'NOR', '4', 'PDIP-14', '5v', '0,5v à 1,8v', '1.5v à 4.2v'),
(11, '3-1', '74LS03N', 'NAND', '4', '14-PDIP', '5v', '0v à 0,8v', '2v à 5v'),
(12, '3-1', '74LS04N', 'Inverseur hexagonal', '6', 'PDIP?N', '5v', '0v à 0,8v', '2v à 5v'),
(13, '3-1', '74HCT04', 'Inverseur hexagonal', '6', 'DIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(17, '3-2', 'SN7405N', 'Inverseur hexagonal', '6', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(18, '3-2', 'SN7406N', 'Hex Buffers', '6', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(19, '3-2', 'SN74LS07N', 'Hex Buffers', '6', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(20, '3-2', '74HCT08R', 'AND ', '4', 'PDIP-N', '5v', '0v à 0,8v', '2v à 5v'),
(21, '3-2', 'MC74HC08', 'AND ', '4', 'PDIP-13', '5v', '1 à 0,8 v', '2v à 5v'),
(22, '3-2', 'SN74LS09N', 'AND ', '4', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(23, '3-2', 'SN74LS10', 'NAND ', '3', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(24, '3-2', 'SN74HC10N', 'NAND ', '3', 'PDIP-14', '5v', '0,5v à 1,8v', '1.5v à 4.2v'),
(25, '3-3', '74LS11N', 'NAND', '3', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(26, '3-3', 'M74HC11B1', 'AND', '3', 'DIP-14', '5v', '0,5v à 1,8v', '1.5v à 4.2v'),
(27, '3-3', '74LS12N', 'NAND', '2', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(28, '3-3', '74LS13N', 'NAND', '2', '----', '5v', '0v à 0,8v', '2v à 5v'),
(29, '3-3', 'SN74LS14N', 'TRIGGER INVERTERS', '6', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(30, '3-3', 'M74HC14B1', 'HEX SCHMITT INVERTER', '6', 'DIP-14', '6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(31, '3-3', 'SN74LS15N', 'AND', '3', 'DIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(32, '3-3', '7416N', 'HEX INVERTER BUFFERS', '6', 'DIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(33, '3-3', 'SN7417N', 'Hex Buffers', '3', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(34, '3-3', 'SN74LS18N', 'NAND', '1', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(35, '3-3', '74HCT20', 'NAND', '4', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(36, '3-3', 'SN74LS20N', 'NAND', '2', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(37, '3-3', 'PC74HC20P', 'NAND', '4', 'PDIP-14', '2v à 6v', '0v à 0,8v', '2v à 5v'),
(38, '4-1', '74LS21', 'AND', '2', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(39, '4-1', '74LS22', 'NAND', '2', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(40, '4-1', 'SN7423N', 'NOR', '2', 'PDIP-16', '5v', '0v à 0,8v', '2v à 5v'),
(41, '4-1', 'SN7425N', 'NOR', '2', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(42, '4-1', '74LS26PC', 'NAND', '-', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(43, '4-1', 'SN74LS27N', 'NOR', '3', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(44, '4-1', '74LS28', 'NOR BUFFER', '4', 'PDIP-15', '5v', '0v à 0,8v', '2v à 5v'),
(45, '4-1', 'SN74S30N', 'NAND', '1', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(46, '4-1', '74LS32N', 'OR', '4', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(47, '4-1', '74LS33', 'NOR Buffer', '4', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(48, '4-1', 'SN74LS37N', 'NAND BUFFER', '4', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(49, '4-1', '74LS38', 'NAND BUFFER', '4', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(50, '4-2', 'DM7441AN', 'DECIMAL DECODERS', '1', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(51, '4-2', 'T74LS42B1', 'DECIMAL DECODER/DRIVER', '1', 'PDIP-16', '5v', '0v à 0,8v', '2v à 5v'),
(52, '4-2', '74HC42', 'DECODER', '1', 'SO16-15', '5v', '0v à 0,8v', '2v à 5v'),
(53, '4-2', 'SN7443AN', 'DECODER', '1', 'PDIP-16', '5v', '0v à 0,8v', '2v à 5v'),
(54, '4-2', 'HD74LS47P', 'DECODER', '1', 'PDIP-16', '5v', '0v à 0,8v', '2v à 5v'),
(55, '4-2', 'SN74LS47N', 'BCD-7 SEG DECODER', '1', 'DIP-15', '5v', '0v à 0,8v', '2v à 5v'),
(56, '4-2', 'HD74LS48P', 'BCD-7 SEG DECODER', '1', 'DILP-16', '5v', '0v à 0,8v', '2v à 5v'),
(57, '4-2', 'SN74LS49N', 'BCD-7 SEG DECODER', '1', 'DILP-16', '5v', '0v à 0,8v', '2v à 5v'),
(58, '4-2', '74LS51N', 'AND-OR-INVERT GATE', '2', 'DIP-13', '5v', '0v à 0,8v', '2v à 5v'),
(59, '4-3', '7470', 'SINGLE-CHIP MICROCOMPUTER', '2', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(60, '4-3', '7473', 'BASCULE JK', '2', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(61, '4-3', '74HC73N', 'BASCULE JK', '2', 'DIP-13', '5v', '0v à 0,8v', '2v à 5v'),
(62, '4-3', '74HC74', 'BASCULE D', '2', 'SOIC?14', '5v', '0v à 0,8v', '2v à 5v'),
(63, '4-3', '74LS75', 'BASCULE D', '4', 'SOIC?14', '5v', '0v à 0,8v', '2v à 5v'),
(64, '4-3', '74HC75', 'BASCULE D', '4', 'DIP-16', '5v', '0v à 0,8v', '2v à 5v'),
(65, '4-3', 'HD74LS76AP', 'J-K Flip-Flops', '2', 'DIP-16', '5v', '0v à 0,8v', '2v à 5v'),
(66, '4-3', 'M74HC76B1', 'J-K Flip-Flops', '2', 'DIP-16', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(67, '4-3', '74HC78', 'J-K Flip-Flops', '2', 'SOP-14', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(68, '4-3', '74LS78', 'J-K Flip-Flops', '2', 'SOP-14', '5v', '0v à 0,8v', '2v à 5v'),
(69, '5-1', '74LS83', 'BINARY FULL ADDER', '4', 'PDIP-15', '5v', '0v à 0,8v', '2v à 5v'),
(70, '5-1', '74LS85', 'Magnitude Comparator', '4', 'SOIC-15', '5v', '0v à 0,8v', '2v à 5v'),
(71, '5-1', '74HC85', 'Magnitude Comparator', '4', 'SO16-15', '5v', '0v à 0,8v', '2v à 5v'),
(72, '5-1', '74LS86', 'XOR', '4', 'DIP-13', '5v', '0v à 0,8v', '2v à 5v'),
(73, '5-1', '74HC86', 'XOR', '4', 'SO14-13', '5v', '0v à 0,8v', '2v à 5v'),
(74, '5-1', 'SN74LS90N', 'DIVIDE-BY-TWELVE COUNTER', '1', 'DIP-14', '7v', '0v à 0,8v', '2v à 5v'),
(75, '5-1', '74LS91', 'SHIFT REGISTERS', '8', 'DIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(76, '5-1', '74LS92', 'BINARY COUNTER', '4', 'DIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(77, '5-1', '74LS93B1', 'DIVIDE-BY-TWELVE COUNTER', '1', 'DIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(78, '5-1', '74LS95', 'SHIFT REGISTER', '4', 'DIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(79, '5-2', 'PC74HC107P', '---', '---', '---', '---', '---', '---'),
(80, '5-2', '74118', '---', '---', '---', '---', '---', '---'),
(81, '5-2', '74121', 'Monostable', '1', 'SOIC-13', '5v', '0.8 v', '2v'),
(82, '5-2', '74HC123N', 'MULTIVIBRATOR', '2', 'DIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(83, '5-2', 'M74HC123B1', 'MULTIVIBRATOR', '2', 'DIP-16', '2v à 6v', '0v à 0,8v', '2v à 5v'),
(84, '5-2', '74129', '---', '---', '---', '---', '---', '---'),
(85, '5-2', 'M74HC132B1', 'NAND', '4', 'DIP-14', '2v à 6v', '0v à 0,8v', '2v à 5v'),
(86, '5-2', '74LS132', 'NAND', '4', 'DIP-14', '5V', '0v à 0,8v', '2v à 5v'),
(87, '5-2', '74HC138', 'Decoder', '1', 'DIP-16', '5V', '0v à 0,8v', '2v à 5v'),
(88, '5-2', '74LS138', 'Decoder', '1', 'SOIC-16', '5V', '0v à 0,8v', '2v à 5v'),
(89, '5-2', '74HC139', 'Decoder', '2', 'SOIC-16', '5V', '0v à 0,8v', '2v à 5v'),
(90, '5-2', 'T74LS139B1', 'DEMULTIPLEXEUR', '2', 'PDIP-15', '5v', '0v à 0,8v', '2v à 5v'),
(91, '5-3', '74LS145', 'Decoder', '1', 'DIP-15', '5v', '0,8v', '2v'),
(92, '5-3', 'M74HC147B1', 'PRIORITY ENCODER', '4', 'PDIP-16', '2v à 6v', '0v à 0,8v', '2v à 5v'),
(93, '5-3', 'SN74LS147N', 'PRIORITY ENCODER', '4', 'PDIP-16', '5v', '0v à 0,8v', '2v à 5v'),
(94, '6-1', '74150', '---', '---', '---', '---', '---', '---'),
(95, '6-1', '74HC151', 'MULTIPLEXEUR', '8', 'PDIP-16', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(96, '6-1', '74LS151', 'MULTIPLEXEUR', '8', 'PDIP-16', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(97, '6-1', 'MC74HC153', 'MULTIPLEXEUR', '2', 'PDIP-16', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(98, '6-1', '74LS153', 'MULTIPLEXEUR', '1 à 4', 'PDIP-16', '5v', '0,8V', '2v à 5v'),
(99, '6-1', '74HC154', 'DEMULTIPLEXEUR', '4', 'PDIP-24', '5v', '0,8V', '2v à 5v'),
(100, '6-1', '74LS154', 'DEMULTIPLEXEUR', '4', 'PDIP-24', '5v', '0,8V', '2v à 5v'),
(101, '6-1', '74LS155N', 'DEMULTIPLEXEUR', '2', 'PDIP-16', '5v', '0v à 0,8v', '2v à 5v'),
(102, '6-1', '74HC157', 'MULTIPLEXEUR', '2', 'PDIP-16', '5v', '0v à 0,8v', '2v à 5v'),
(103, '6-1', 'SN74LS157N', 'MULTIPLEXEUR', '4', 'PDIP-16', '5v', '0v à 0,8v', '2v à 5v'),
(104, '6-2', '74LS160', 'MULTIPLEXEUR', '4', 'PDIP-16', '5v', '0v à 0,8v', '2v à 5v'),
(105, '6-2', '74HC161', 'Synchronous', '4', 'PDIP-16', '2v à 6v', '0v à 0,8v', '2v à 5v'),
(106, '6-2', '74LS161', 'Synchronous', '4', 'PDIP-16', '2v à 6v', '0v à 0,8v', '2v à 5v'),
(107, '6-2', '74LS162', 'Synchronous', '4', 'PDIP-16', '2v à 6v', '0v à 0,8v', '2v à 5v'),
(108, '6-2', '74HC162', 'Synchronous', '4', 'PDIP-16', '2v à 6v', '0v à 0,8v', '2v à 5v'),
(109, '6-2', 'MC74HC163N', 'Presettable Counters', '1', 'PDIP-16', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(110, '6-2', '74LS163', 'Synchronous', '2', 'PDIP-16', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(111, '6-2', 'M74HC164N', 'SHIFT REGISTER', '8', 'PDIP-20', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(112, '6-2', '74LS164', 'SHIFT REGISTER', '8', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(113, '6-2', '74HC165', 'SHIFT REGISTER', '8', 'PDIP-16', '2v à 6v', '0,5v à 1,8v', '1,5V à 4,2v'),
(114, '6-2', '74LS165', 'SHIFT REGISTER', '8', 'PDIP-16', '2v à 6v', '0,5v à 1,8v', '1,5V à 4,2v'),
(115, '6-2', '74LS166', 'SHIFT REGISTER', '8', 'PDIP-16', '5v', '0v à 0,8v', '2v à 5v'),
(116, '6-2', '74173N', 'D-type Register', '4', 'PDIP-16', '2v à 6v', '0,5v à 1,8v', '1,5V à 4,2v'),
(117, '6-2', 'SN174N', 'D-TYPE FLIP-FLOPS', '6', 'PDIP-16', '5v', '0v à 0,8v', '2v à 5v'),
(118, '6-3', '74LS180', 'DECODER', '1', 'PDIP-24', '5v', '0v à 0,8v', '2v à 5v'),
(119, '6-3', '74LS181', 'Arithmetic Logic Unit', '4', 'PDIP-24', '2v à 6v', '0v à 0,8v', '2v à 5v'),
(120, '6-3', 'SN74185N', 'BINARY TO BCD CONVERTER', '6', 'PDIP-16', '5v', '0v à 0,8v', '2v à 5v'),
(121, '6-3', 'CD74HC190E', 'Synchronous', '2', 'PDIP-16', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(122, '6-3', 'SN74LS191N', 'Synchronous', '4', 'PDIP-16', '5v', '0v à 0,8v', '2v à 5v'),
(123, '6-3', '74LS192', 'COUNTER PRESETTABLE', '4', 'PDIP-16', '5v', '0v à 0,8v', '2v à 5v'),
(124, '6-3', 'M74HC192B1', 'Synchronous', '4', 'PDIP-16', '2v à 6v', '0v à 0,8v', '1.5v à 4.2v'),
(125, '6-3', 'CD74HCT192E', 'Synchronous', '4', 'PDIP-16', '5v', '0v à 0,8v', '1.5v à 4.2v'),
(126, '6-3', 'T74LS193B1', 'Synchronous', '4', 'PDIP-16', '5v', '0v à 0,8v', '2v à 5v'),
(127, '6-3', 'M74HC193B1', 'Synchronous', '4', 'PDIP-16', '2v à 6v', '0,5v à 1,8v', '0,5v à 1,8v'),
(128, '6-3', 'DM74LS196N', 'PRESETTABLEDECADECOUNTER', '1', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(129, '6-3', '74LS197', 'Synchronous', '4', 'PDIP-14', '5v', '0v à 0,8v', '2v à 5v'),
(130, '7-2', 'M74HC238B1', 'DECODER', '1', 'PDIP-16', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(131, '7-2', 'T74LS240B1', 'LINE DRIVER', '4', 'PDIP-20', '5v', '0v à 0,8v', '2v à 5v'),
(132, '7-2', 'M74HC240B1', 'OCTAL BUS BUFFER', '4', 'PDIP-20', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(133, '7-2', 'M74HC244B1', 'OCTAL BUS BUFFER', '4', 'PDIP-20', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(134, '7-2', 'T74LS244B1', 'BUS DRIVER', '4', 'PDIP-20', '5v', '0v à 0,8v', '2v à 5v'),
(135, '7-2', 'T74LS245B1', 'OCTAL BUS TRANSCEIVER', '8', 'PDIP-20', '5v', '0v à 0,8v', '2v à 5v'),
(136, '7-2', 'PC74HC245P', 'OCTAL BUS TRANSCEIVER', '8', 'TSSOP19', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(137, '7-3', '74LS251', 'MULTIPLIXEUR', '8', 'PDIP-16', '5v', '0,8v', '2v à 5v '),
(138, '7-3', '74LS253', 'MULTIPLIXEUR', '3', 'PDIP-16', '5v', '0,8v', '2v à 5v '),
(139, '7-3', '74HC253', 'MULTIPLIXEUR', '4', 'SO16-15', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(140, '7-3', '74LS257', 'MULTIPLIXEUR', '2', 'DIP-15', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(141, '7-3', '74LS266', 'NOR', '2', 'SOIC-13', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(142, '7-3', '74LS273', 'OCTAL D FLIP-FLOP ', '8', 'SOIC-20', '5v', '0v à 0,8 v', '2v à 5v'),
(143, '7-3', '74HC273', 'OCTAL D FLIP-FLOP ', '8', 'SOIC-20', '5v', '0v à 0,8 v', '2v à 5v'),
(144, '7-3', '74279', 'Quad S-R Latch', '4', 'PDIP-15', '5v', '0v à 0,8 v', '2v à 5v'),
(145, '7-3', '74HC280', 'Odd parity generator', '1', 'SO14-13', '5v', '0v à 0,8 v', '2v à 5v'),
(146, '8-1', '74LS283', 'ADDER', '1', 'PDIP16', '5v', '0v à 0,8 v', '2v à 5v'),
(147, '8-1', '74283', 'Binary Adder', '1', 'PDIP16', '5v', '0v à 0,8 v', '2v à 5v'),
(148, '8-1', '74293', 'BINARY COUNTERS', '1', 'SOIC-14', '5v', '0v à 0,8 v', '2v à 5v'),
(149, '8-1', '74HC356', 'MULTIPLEXER', '1', 'SOIC-20', '5v', '0v à 0,8 v', '2v à 5v'),
(150, '8-1', '74LS373', 'OCTAL D-TYPE FLIPFLOP ', '8', 'SOIC-20', '5v', '0v à 0,8 v', '2v à 5v'),
(151, '8-1', '74LS374', 'Octal D-Type Transparent Latches ', '8', 'SOIC-20', '5v', '0v à 0,8 v', '2v à 5v'),
(152, '8-1', '74HC374', 'OCTAL D-TYPE FLIPFLOP ', '8', 'SOIC-20', '5v', '0v à 0,8 v', '2v à 5v'),
(153, '8-1', '74LS377', 'OCTAL D-TYPE FLIPFLOP ', '8', 'SOIC-20', '5v', '0v à 0,8 v', '2v à 5v'),
(154, '8-1', '74HC377', 'OCTAL D-TYPE FLIPFLOP ', '8', 'SO-20', '5v', '0v à 0,8 v', '2v à 5v'),
(155, '8-1', '74LS390', 'Decade Counter', '2', 'SO-16', '5v', '0v à 0,8 v', '2v à 5v'),
(156, '8-1', '74HC390', 'Ecade ripple counter', '2', 'SO-16', '5v', '0v à 0,8 v', '2v à 5v'),
(157, '8-1', '74393', 'Binary Counter', '2', '14-SO ', '2v à 6v', '0,5v à 1,8v ', '1.5v à 4.2v'),
(158, '8-1', '74HC393', 'BINARY RIPPLE COUNTER', '2', '14-SO ', '4v', '0v à 0,8 v', '2v à 5v'),
(159, '8-2', '74HCT540', 'OCTAL BUFFER', '8', 'SOIC-20', '5v', '0v à 0,8v', '2v à 5v'),
(160, '8-2', '74LS541', 'OCTAL BUFFER', '8', 'SOIC-20', '5v', '0v à 0,8v', '2v à 5v'),
(161, '8-2', '74HC541', 'Non-Inverting Buffer', '8', 'SOIC-20', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(162, '8-2', '74HC573', 'Octal D-type transparent latch', '8', 'SO-20', '5v', '0v à 0,8v', '2v à 5v'),
(163, '8-2', '74HC574', 'Noninverting D Flip?Flop', '1', 'SO-20', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(164, '8-2', '74HC595', 'Shift Register', '1', 'SOIC-15', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(165, '8-2', '74HC688', 'COMPARATOR MAGNITUDE', '8', 'SSOP20-19', '5v', '0v à 0,8v', '2v à 5v'),
(166, '8-2', '74HC4017', 'Counter', '5', 'SO16-16', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(167, '8-2', '74HC4051', 'Multiplexer/demultiple xer', '1', 'SO16-16', '5v', '0,8v à 4,3v', '1,2v à 4,7v'),
(168, '8-3', '74HC4040N', 'Binary ripple counter', '6', 'DIP-15', '5v', '0v à 0,8v', '2v à 5v'),
(169, '8-3', '74HC4040B1', 'Ripple counter', '6', 'DHVQFN15', '5v', '0v à 0,8v', '2v à 5v'),
(170, '8-3', 'MC74HC4053N', 'Silicon–Gate', '3', 'SOIC-15', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(171, '8-3', '74HC4094', 'Shift Register', '8', 'SO16-15', '2v à 6v', '0,5v à 1,8v', '1.5v à 4.2v'),
(172, '8-3', '74HC4538', 'Monostable Multivibrator', '2', 'SO16-15', '3v à 6v', '0,5v à 1,8v', '1.5v à 4.2v');

-- --------------------------------------------------------

--
-- Table structure for table `casier_7_tiroirs_1_2`
--

CREATE TABLE `casier_7_tiroirs_1_2` (
  `id` int(11) NOT NULL,
  `N` varchar(20) NOT NULL,
  `Nom` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casier_7_tiroirs_1_2`
--

INSERT INTO `casier_7_tiroirs_1_2` (`id`, `N`, `Nom`) VALUES
(1, '1', 'L7815CV'),
(2, '1', 'L7915V'),
(3, '1', '7824C'),
(4, '1', 'TA7815C'),
(5, '1', 'LM323K'),
(6, '1', '7915CT'),
(7, '1', '7818C'),
(8, '1', 'SFC2309'),
(9, '1', 'L7812CV'),
(10, '1', 'TDB2905'),
(11, '1', '7918'),
(12, '1', '337SP'),
(13, '1', 'UA7312CK'),
(14, '1', 'LM317'),
(15, '1', 'LM317'),
(16, '1', 'AN7908T'),
(17, '1', 'L7808CV'),
(18, '1', 'MC7924CK'),
(19, '1', '7905'),
(20, '1', 'L7805ACV'),
(21, '1', 'L7805ACV'),
(22, '2', 'SCL4512BE'),
(23, '2', 'LM311P'),
(24, '2', 'LM135'),
(25, '2', 'LM235'),
(26, '2', 'CD4528'),
(27, '2', 'HCFI4585BE'),
(28, '2', 'MD734'),
(29, '2', 'HCF4502'),
(30, '2', 'LM135AH'),
(31, '2', 'LM335'),
(32, '2', 'UA741CN'),
(33, '2', '2N3819'),
(34, '2', 'LM318N'),
(35, '2', 'LM335'),
(36, '2', 'GILM35DZR'),
(37, '2', 'LM336'),
(38, '2', 'LM334'),
(39, '2', 'LM336'),
(40, '2', 'LM394N'),
(41, '2', 'LM335'),
(42, '2', 'LM13700'),
(43, '2', 'LM218'),
(44, '2', 'LM394N');

-- --------------------------------------------------------

--
-- Table structure for table `casier_7_tiroirs_3_4_5_6`
--

CREATE TABLE `casier_7_tiroirs_3_4_5_6` (
  `id` int(11) NOT NULL,
  `N` varchar(20) DEFAULT NULL,
  `Circuit` varchar(20) DEFAULT NULL,
  `TYPE` varchar(100) DEFAULT NULL,
  `N_D_P` varchar(20) DEFAULT NULL,
  `PCK` varchar(20) DEFAULT NULL,
  `Vdd` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casier_7_tiroirs_3_4_5_6`
--

INSERT INTO `casier_7_tiroirs_3_4_5_6` (`id`, `N`, `Circuit`, `TYPE`, `N_D_P`, `PCK`, `Vdd`) VALUES
(1, '3-1', 'HEF4000BP', 'NOR', '2', 'DIP-14', '5v à 15v'),
(2, '3-1', 'HCF4001BE', 'NOR', '4', 'DIP-14', '3v à 20v'),
(3, '3-1', 'HEF4001BP', 'NOR', '4', 'DIP-14', '5v à 15v'),
(4, '3-1', 'HCF4002BE', 'NOR', '2', 'DIP-14', '3v à 15v'),
(5, '3-2', 'HEF4006BP', 'SHIFT Register', '4', 'DIP-14', '5v à 15v'),
(6, '3-2', 'CD4006CN', 'SHIFT Register', '4', 'DIP-14', '5v à 15v'),
(7, '3-2', 'MC4006P', 'DECODER', '---', 'DIP-14', '5v à 15v'),
(8, '3-2', 'HCF4007UBE', 'Complementary & Inverter', '2', 'DIP-14', '3v à 15v'),
(9, '3-2', 'CD4008BCN', 'ADDER/SUBTRACTO', '1', 'DIP-16', '3v à 15v'),
(10, '3-2', 'CD4009UBE', 'Inverting Buffer ', '6', 'DIP-16', '3v à 18v'),
(11, '3-2', 'CD4010BE', 'NON-Inverting Buffer', '6', 'DIP-16', '3v à 18v'),
(12, '3-2', 'CD4011BCN', 'NAND', '4', 'DIP-14', '3v à 15'),
(13, '3-2', 'HCF4011BE', 'NAND', '4', 'DIP-14', '3v à 20v'),
(14, '3-2', 'HEF4012BP', 'NAND', '2', 'DIP-14', '3v à 15v'),
(15, '3-2', 'F4012BFC ', '---', '---', '---', '---'),
(16, '3-2', 'CD4013BCN', 'Flip Flop', '2', 'DIP-14', '3v à 15v'),
(17, '3-2', 'HEF4013BP', 'Flip Flop', '2', 'DIP-14', '5v à 15v'),
(18, '3-2', 'CD4019BCN', 'AND/OR', '4', 'DIP-16', '3v à 15v'),
(19, '3-3', 'CD4020BCN', 'COUNTER', '1', 'DIP-16', '3v à 15v'),
(20, '3-3', 'CD4020BE', 'COUNTER', '1', 'PDIP-16', '3v à 18v'),
(21, '3-3', 'HCF4020BE', 'COUNTER', '1', 'DIP-16', '3v à 15v'),
(22, '3-3', 'HEF4022BD', 'COUNTER', '1', 'DIP-16', '5v à 15v'),
(23, '3-3', 'HCF4024BE', 'COUNTER', '1', 'DIP-14', '3v à 15v'),
(24, '3-3', 'CD4024', 'COUNTER', '1', 'PDIP-14', '3v à 15v'),
(25, '3-3', 'HCF4025BE', 'NOR', '3', 'DIP-14', '3v à 20v'),
(26, '4-1', 'MC14027BCL', 'BASCULE J - K', '2', 'PDIP–16 ', '3v à 18v'),
(27, '4-1', 'TC4027BP', 'BASCULE J - K', '2', 'DIP-16', '3v à 18v'),
(28, '4-1', 'SCL4028BE', 'DECODEUR BCD', '1', 'PDIP-16', '5v à 20v'),
(29, '4-1', 'CD4029', 'DOWN COUNTER', '1', 'PDIP-16', '5v à 15v'),
(30, '4-1', 'MC14029BCP', 'BINARY COUNTER', '1', '---', '3v à 18v'),
(31, '4-1', 'HCF4029', 'DOWN COUNTER', '1', 'DIP-16', '3v à 15v'),
(32, '4-1', 'HEF4030BP', 'OU - EXCLUSIF', '4', 'DIP14', '3v à 15v'),
(33, '4-1', 'CD4030BP ', 'OU - EXCLUSIF', '4', 'TSSOP-14', '3v à 18v'),
(34, '4-2', 'HCF4033BE', 'COUNTER', '1', 'PDIP-16 ', '3v à 20v'),
(35, '4-2', 'HEF4040BP', 'COUNTER', '1', 'DIP-16 ', '5v à 15v'),
(36, '4-2', 'CD4045BE', 'COUNTER', '1', 'DIP-16 ', '3v à 18v'),
(37, '4-2', 'CD4046BE', 'MICROPOWER PHASE-LOCKED', '4', 'DIP-16 ', '3v à 15v'),
(38, '4-2', 'HCF4047BE', 'MONOSTABLE', '1', 'DIP-14', '3v à 20v '),
(39, '4-2', 'CD4050BCN', 'Non-Inverting Buffer', '6', 'DIP-16', '3v à 15v'),
(40, '4-2', 'HCF4050BF', 'HEX BUFFER', '6', 'DIP-16', '3v à 20v'),
(41, '4-2', 'CD4051', 'MULTIPLEXER', '1', 'DIP-16', '5v à 15v'),
(42, '4-2', 'HCF4052BE', 'MULTIPLEXER', '1', 'DIP-16', '3v à 20v'),
(43, '4-2', 'HCF4053BE', 'DEMULTIPLEXER', '1', 'DIP-16', '3v à 20v'),
(44, '4-3', 'CD4055BE', 'LCD Decoder', '1', 'DIP-16', '5v à 15v'),
(45, '4-3', 'CD4056BE', 'LCD Decoder', '1', 'DIP-16', '5v à 15v'),
(46, '4-3', 'HCF4056BE', 'BCD TO 7 SEGMENT DECODER', '1', 'DIP-16', '3v à 15v'),
(47, '4-3', 'CD4059AE', 'COUNTER', '1', 'DIP-24', '3v à 15v'),
(48, '4-3', 'CD4060BE', 'COUNTERCounter and Oscillator', '1', 'DIP-16', '3v à 18v'),
(49, '4-3', 'HCF4060BE', 'COUNTER', '1', 'DIP-16', '3v à 15v'),
(50, '5-1', 'HCF4063BE', 'MAGNITUDE COMPARATOR', '1', 'DIP-16', '3v à 20v'),
(51, '5-1', 'HCF4066BE', 'BINARY COUNTER', '1', 'DIP-14', '3v à 20v'),
(52, '5-1', 'HEF4066BP', 'BILATERAL SWITCHES', '4', 'DIP-14', '5v à 15v'),
(53, '5-1', 'HEF4067BP', 'MULTIPLEXER', '1', 'DIP-24', '5v à 15v'),
(54, '5-1', 'HCF4067BE', 'MULTIPLEXER', '1', 'DIP-24', '5v à 15v'),
(55, '5-1', 'TC4069UBP ', 'HEX INVERTER', '6', 'DIP-14', '3v à 18v'),
(56, '5-2', 'HCF4071BE', 'OR', '4', 'DIP-14', '3v à 18v'),
(57, '5-2', 'HCF4075BE', 'OR', '3', 'DIP-14', '3v à 20v'),
(58, '5-2', 'HCF4077BE', 'XNOR', '4', 'DIP-14', '5v à 15v'),
(59, '5-2', 'HIP4080AIPZ', 'HALG-BRIDG', '3', 'DIP-20', '5v à 15v'),
(60, '5-3', 'HEF4081BP', 'AND', '4', 'DIP-14', '5v à 15v'),
(61, '5-3', 'SCL4082BE ', 'AND', '2', 'DIP-14', '5v à 15v'),
(62, '5-3', 'CD4093', 'NAND', '4', 'PDIP-14', '3v à 18v'),
(63, '5-3', 'HCF4093BE', 'NAND', '4', 'DIP-14', '3v à 20v'),
(64, '5-3', 'HEF4094BP ', '8-STAGE SHIFT REGISTER', '3', 'DIP-16', '3v à 15v'),
(65, '5-3', 'HCF4095', 'GATE J-K', '2', 'DIP-14', '3v à 15v'),
(66, '6-1', 'MC14014BCP ', 'Counter Shift Registers', '8', 'PDIP-16', '5v à 15v'),
(67, '6-1', 'MC14027BCL', 'Dual J-K FLIP-FLOP', '2', 'PDIP-16', '5v à 15v'),
(68, '6-1', 'MC14414P1', '---', '---', 'PDIP-16', '---'),
(69, '6-1', 'MC14510BCP', 'BCD Up/Down Counter', '4', 'PDIP-16', '5v à 15v'),
(70, '6-1', 'MC145170P1', 'PLL Frequency Synthesizer', '3', 'PDIP-16', '2.5v à 5,5v'),
(71, '6-1', 'MC14518BCP ', 'COUNTER IC BCD ', '2', 'PDIP-16', '5v à 15v'),
(72, '6-1', 'MC14521BCP', 'COUNTER IC BCD Multipliers / Dividers LOG', '1', 'PDIP-16', '5v à 15v'),
(73, '6-1', 'MC14553BCP', 'COUNTER IC BCD', '1', 'PDIP-16', '5v à 15v'),
(74, '6-1', 'MC1480P', '---', '---', '---', '---'),
(75, '6-1', 'MC1489P', 'IC Line Receiver Quad', '4', 'DIP-14', '10v'),
(76, '6-1', 'MC14958P', 'Multiplier', '1', 'SO-14', '10v'),
(77, '6-1', 'MC1723L ', 'Voltage Regulator', '2', 'CDIP-14', '12v'),
(78, '6-1', 'MC1747CP2', 'OPERATIONAL AMPLIFIERS', '2', 'DIP-14', '22v'),
(79, '6-1', 'MC1748', 'OPERATIONAL AMPLIFIERS', '1', 'DIP-8', '15v'),
(80, '6-1', 'MC3362P', 'Audio Single Chip Receiver', '1', 'SOIC-24', '7v');

-- --------------------------------------------------------

--
-- Table structure for table `casier_7_tiroirs_7et8_n_7_1et8_3`
--

CREATE TABLE `casier_7_tiroirs_7et8_n_7_1et8_3` (
  `id` int(11) NOT NULL,
  `N` varchar(20) NOT NULL,
  `Circuit` varchar(50) NOT NULL,
  `Type` varchar(40) NOT NULL,
  `N_de_pine` varchar(20) NOT NULL,
  `PCK` varchar(20) NOT NULL,
  `Vcc` varchar(20) NOT NULL,
  `Icc` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casier_7_tiroirs_7et8_n_7_1et8_3`
--

INSERT INTO `casier_7_tiroirs_7et8_n_7_1et8_3` (`id`, `N`, `Circuit`, `Type`, `N_de_pine`, `PCK`, `Vcc`, `Icc`) VALUES
(1, '7-1', 'NE544', 'SERVO AMPLIFIER', '14', 'PDIP-14', '3,2v à 6v', '2mA à 10mA'),
(2, '7-1', 'NE551', 'Operational amplifier', '16', 'PDIP-16', '16v', '3,4v à 5,5v'),
(3, '7-1', 'NE555', 'Timer', '8', 'SOIC-8', '4,5v à 16v', '3mA à 15mA'),
(4, '7-1', 'NE556', 'Dual timer', '14', 'PDIP-14', '4,5v à 16v', '6mA à 30mA'),
(5, '7-1', 'NE558', 'Quad timer', '16', 'PDIP-16', '4,5v à 16v', '16mA à 36mA'),
(6, '8-3', 'TL074CP', 'Operational Amplifier', '14', 'TSSOP-14', '18v', '1,4mA à 2,5mA'),
(7, '8-3', 'TL081CP', 'Operational Amplifier', '8', 'PDIP-8', '18v', '1,4mA à 2,8mA'),
(8, '8-3', 'TL082CP', 'Operational Amplifier', '8', 'PDIP-8', '18v', '1,4mA à 2,8mA'),
(9, '8-3', 'TL084CP', 'J-FET Amplifier', '14', 'TSSOP-14', '18v', '1,4mA à 2,8mA');

-- --------------------------------------------------------

--
-- Table structure for table `casier_7_tiroir_7_n_3`
--

CREATE TABLE `casier_7_tiroir_7_n_3` (
  `id` int(11) NOT NULL,
  `N` varchar(20) NOT NULL,
  `Circuit` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `N_de_pine` varchar(20) NOT NULL,
  `PCK` varchar(20) NOT NULL,
  `Vcc` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casier_7_tiroir_7_n_3`
--

INSERT INTO `casier_7_tiroir_7_n_3` (`id`, `N`, `Circuit`, `Type`, `N_de_pine`, `PCK`, `Vcc`) VALUES
(1, '7-3', 'UA723CDP', 'PRECISION VOLTAGE EGULATOR', '14', 'PDIP-14', '12v'),
(2, '7-3', 'UA741CN', 'SINGLE OPERATIONAL AMPLIFIER', '8', 'PDIP-8 ', '22');

-- --------------------------------------------------------

--
-- Table structure for table `casier_7_tiroir_7_n_4_2`
--

CREATE TABLE `casier_7_tiroir_7_n_4_2` (
  `id` int(11) NOT NULL,
  `N` varchar(40) NOT NULL,
  `Circuit` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `N_de_pine` varchar(20) NOT NULL,
  `PCK` varchar(20) NOT NULL,
  `Vcc` varchar(20) NOT NULL,
  `Ic` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casier_7_tiroir_7_n_4_2`
--

INSERT INTO `casier_7_tiroir_7_n_4_2` (`id`, `N`, `Circuit`, `Type`, `N_de_pine`, `PCK`, `Vcc`, `Ic`) VALUES
(1, '7-2', '4N25', 'Optoisolator Transistor', '6', 'DIP-6', '10v', '2mA'),
(2, '7-2', '4N27', 'Optoisolator Transistor', '6', 'DIP-6', '10v', '2mA'),
(3, '7-2', '4N32', 'Opto Coupler Photo Darlington', '6', 'DIP-6', '10v', '2mA'),
(4, '7-2', '4N35 ', 'OPTOISO', '6', 'DIP-6', '10v', '0.5mA'),
(5, '7-2', '4N36  ', 'Optoisolator Transistor', '6', 'DIP-6', '10v', '0.5mA'),
(6, '7-2', 'DN711WY  ', 'Powered LED ', '---', '---', '---', '---'),
(7, '7-4', 'TIL111', 'PHOTOTRANSISTOR OPTOCOUPLERS', '6', 'PDIP- 6', '10v', '2mV');

-- --------------------------------------------------------

--
-- Table structure for table `casier_7_tiroir_8_n_1`
--

CREATE TABLE `casier_7_tiroir_8_n_1` (
  `id` int(11) NOT NULL,
  `N` varchar(20) NOT NULL,
  `Circuit` varchar(50) NOT NULL,
  `Type` varchar(40) NOT NULL,
  `PCK` varchar(20) NOT NULL,
  `Vcc` varchar(20) NOT NULL,
  `VIO` varchar(20) NOT NULL,
  `Lio` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casier_7_tiroir_8_n_1`
--

INSERT INTO `casier_7_tiroir_8_n_1` (`id`, `N`, `Circuit`, `Type`, `PCK`, `Vcc`, `VIO`, `Lio`) VALUES
(1, '8-1', 'LF351N', 'J-FET Amplifier', 'DIP-8', '18v', '1v à 8v', '0,1nA à 4nA'),
(2, '8-1', 'LF356N', 'J-FET Amplifier', 'DIP-8', '5v à 20v', '3mv à 6.2mv', '0.02nA à 1nA'),
(3, '8-1', 'LF357N', 'Operational Amplifiers', 'DIP-8', '5v à 20v', '3mv à 6.2mv', '0.02nA à 1nA');

-- --------------------------------------------------------

--
-- Table structure for table `casier_7_tiroir_8_n_2`
--

CREATE TABLE `casier_7_tiroir_8_n_2` (
  `id` int(11) NOT NULL,
  `N` varchar(20) NOT NULL,
  `Circuit` varchar(50) NOT NULL,
  `Type` varchar(40) NOT NULL,
  `PCK` varchar(20) NOT NULL,
  `Vcc` varchar(20) NOT NULL,
  `VIL_Max_0` varchar(20) NOT NULL,
  `VIH_Min_1` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casier_7_tiroir_8_n_2`
--

INSERT INTO `casier_7_tiroir_8_n_2` (`id`, `N`, `Circuit`, `Type`, `PCK`, `Vcc`, `VIL_Max_0`, `VIH_Min_1`) VALUES
(1, '8-2', 'EF68B09P', 'Microprocessor', 'PDIP-40', '5v', '-0,3v à 0.8v', '2v à 5v'),
(2, '8-2', 'EF68B21P ', 'PERIPHERAL INTERFACE ADAPTER', 'DIP-14', '5v', '-0,3v à 0.8v', '2v à 5v'),
(3, '8-2', 'EF68B40P', 'Timers & Support Products', 'DIP-28', '5v', '-0,3v à 0.8v', '2v à 5v'),
(4, '8-2', 'EF68B50P', 'ASYNCRONOUS', 'DIP-24', '5v', '-0,3v à 0.8v', '2v à 5v');

-- --------------------------------------------------------

--
-- Table structure for table `casier_7_tiroir_9`
--

CREATE TABLE `casier_7_tiroir_9` (
  `id` int(11) NOT NULL,
  `N` varchar(20) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Package` varchar(20) NOT NULL,
  `VCC_VEE` varchar(20) NOT NULL,
  `N_de_pin` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casier_7_tiroir_9`
--

INSERT INTO `casier_7_tiroir_9` (`id`, `N`, `Nom`, `Package`, `VCC_VEE`, `N_de_pin`) VALUES
(1, '9-1', 'LM308DP', 'TO-', '18V', '8'),
(2, '9-1', 'LM301AN', 'PDIP?8', '18V', '8'),
(3, '9-2', 'LM309', 'TO-CAN-3', '5V', '3'),
(4, '9-2', 'LM311P', 'PDIP?8', '18v', '8'),
(5, '9-2', 'LM318', 'PDIP?9', '20V', '8'),
(6, '9-2', 'LM319', 'DIP-14', '5V', '14'),
(7, '9-2', 'LM324N', 'DIP-14', '32v', '14'),
(8, '9-2', 'LM348N', 'PDIP-14', '22V', '14'),
(9, '9-2', 'LM359N', 'DIP-14', '22V', '14'),
(10, '9-2', 'LM386N ', 'DIP-8', '4v à 12v', '8'),
(11, '9-3', 'LM393', 'DIP - 8', '5V', '8'),
(12, '9-3', 'LM395 ', '---', '---', '3'),
(13, '9-3', 'LM1458N', 'DIP-8 ', '---', '8'),
(14, '9-3', 'LM2901N', 'PDIP-14', '18V', '14'),
(15, '9-3', 'LM2902N', 'PDIP-14', '5V', '14'),
(16, '9-3', 'LM2903N', 'PDIP-8', '18V', '8'),
(17, '9-3', 'LM3086N', 'DIP-14', '---', '14'),
(18, '9-3', 'LM6132', 'SOIC-8', '---', '8'),
(19, '9-3', 'LM3911', '---', '---', '---');

-- --------------------------------------------------------

--
-- Table structure for table `ne_4n_ua_itl`
--

CREATE TABLE `ne_4n_ua_itl` (
  `id` int(11) NOT NULL,
  `N` varchar(20) DEFAULT NULL,
  `Circuit` varchar(20) DEFAULT NULL,
  `TYPE` varchar(40) DEFAULT NULL,
  `N_de_Pine` varchar(20) DEFAULT NULL,
  `PCK` varchar(20) DEFAULT NULL,
  `Vcc` varchar(20) DEFAULT NULL,
  `Ic` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `admin` bit(1) NOT NULL DEFAULT b'0',
  `valide` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `prenom`, `nom`, `email`, `mdp`, `admin`, `valide`) VALUES
(1, 'Aymane', 'Hrouch', 'root', 'toor', b'1', b'1'),
(53, 'Jutta', 'Jutta', 'emayo15@gmail.com', 'toor', b'0', b'1'),
(52, 'Sharell', 'Sharell', 'emayo14@gmail.com', 'toor', b'0', b'1'),
(51, 'Maggie', 'Maggie', 'emayo13@gmail.com', 'toor', b'0', b'0'),
(50, 'Verla', 'Verla', 'emayo12@gmail.com', 'toor', b'0', b'0'),
(49, 'Christine', 'Christine', 'emayo11@gmail.com', 'toor', b'0', b'1'),
(48, 'Ludie', 'Ludie', 'emayo10@gmail.com', 'toor', b'0', b'0'),
(47, 'Haydee', 'Haydee', 'emayo9@gmail.com', 'toor', b'0', b'0'),
(46, 'Roxane', 'Roxane', 'emayo8@gmail.com', 'toor', b'0', b'0'),
(45, 'Roseanna', 'Roseanna', 'emayo7@gmail.com', 'toor', b'0', b'0'),
(44, 'Brigid', 'Brigid', 'emayo6@gmail.com', 'toor', b'0', b'0'),
(43, 'Corine', 'Corine', 'emayo5@gmail.com', 'toor', b'0', b'0'),
(42, 'Barbar', 'Barbar', 'emayo4@gmail.com', 'toor', b'0', b'0'),
(41, 'Charline', 'Charline', 'emayo3@gmail.com', 'toor', b'0', b'0'),
(40, 'Penni', 'Penni', 'emayo2@gmail.com', 'toor', b'0', b'0'),
(39, 'Soledad', 'Soledad', 'emayo1@gmail.com', 'toor', b'0', b'0'),
(38, 'Harriett', 'Harriett', 'emayo0@gmail.com', 'toor', b'0', b'0'),
(54, 'Reagan', 'Reagan', 'emayo16@gmail.com', 'toor', b'0', b'0'),
(55, 'Jackelyn', 'Jackelyn', 'emayo17@gmail.com', 'toor', b'0', b'0'),
(56, 'Houston', 'Houston', 'emayo18@gmail.com', 'toor', b'0', b'0'),
(57, 'Candace', 'Candace', 'emayo19@gmail.com', 'toor', b'0', b'0'),
(58, 'Ayoub', 'Hrouch', 'ayoub11', 'toor', b'0', b'0'),
(59, 'Hassane', 'Zahboune', 'hassan', 'hassanhassan', b'0', b'1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casier6`
--
ALTER TABLE `casier6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casier_7_tiroirs_1_2`
--
ALTER TABLE `casier_7_tiroirs_1_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casier_7_tiroirs_3_4_5_6`
--
ALTER TABLE `casier_7_tiroirs_3_4_5_6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casier_7_tiroirs_7et8_n_7_1et8_3`
--
ALTER TABLE `casier_7_tiroirs_7et8_n_7_1et8_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casier_7_tiroir_7_n_3`
--
ALTER TABLE `casier_7_tiroir_7_n_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casier_7_tiroir_7_n_4_2`
--
ALTER TABLE `casier_7_tiroir_7_n_4_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casier_7_tiroir_8_n_1`
--
ALTER TABLE `casier_7_tiroir_8_n_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casier_7_tiroir_8_n_2`
--
ALTER TABLE `casier_7_tiroir_8_n_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casier_7_tiroir_9`
--
ALTER TABLE `casier_7_tiroir_9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ne_4n_ua_itl`
--
ALTER TABLE `ne_4n_ua_itl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casier6`
--
ALTER TABLE `casier6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `casier_7_tiroirs_1_2`
--
ALTER TABLE `casier_7_tiroirs_1_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `casier_7_tiroirs_3_4_5_6`
--
ALTER TABLE `casier_7_tiroirs_3_4_5_6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `casier_7_tiroirs_7et8_n_7_1et8_3`
--
ALTER TABLE `casier_7_tiroirs_7et8_n_7_1et8_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `casier_7_tiroir_7_n_3`
--
ALTER TABLE `casier_7_tiroir_7_n_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `casier_7_tiroir_7_n_4_2`
--
ALTER TABLE `casier_7_tiroir_7_n_4_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `casier_7_tiroir_8_n_1`
--
ALTER TABLE `casier_7_tiroir_8_n_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `casier_7_tiroir_8_n_2`
--
ALTER TABLE `casier_7_tiroir_8_n_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `casier_7_tiroir_9`
--
ALTER TABLE `casier_7_tiroir_9`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ne_4n_ua_itl`
--
ALTER TABLE `ne_4n_ua_itl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
