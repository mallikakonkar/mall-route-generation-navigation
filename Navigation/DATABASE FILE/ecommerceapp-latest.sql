-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2022 at 08:13 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerceapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(5, 'Bruno', 'brunoadmin@gmail.com', '$2y$10$qZ0OoyX8bhAVxDFM/fx8leZSZwlyq15c1C/KTnaqDLSx6eCDJ0VpC', '0'),
(8, 'Harry Den', 'harryden@gmail.com', '$2y$10$YKSDtra7v2wH6ORYfry8Ue9t49pk1AvQvdJGuq4lDvFLEcx.kP6Mq', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Sony'),
(5, 'LG'),
(6, 'OnePlus+'),
(7, 'Excl'),
(8, 'Aduro'),
(9, 'Dr. Martens'),
(10, 'Hot Toys');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 4, '::1', 4, 1),
(2, 1, '::1', 7, 1),
(3, 2, '::1', 7, 1),
(4, 4, '::1', 7, 1),
(5, 10, '::1', 7, 1),
(100, 1, '::1', 8, 1),
(101, 2, '::1', 8, 1),
(102, 20, '::1', 8, 1),
(103, 3, '::1', 8, 1),
(104, 6, '::1', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Men\'s'),
(2, 'Women\'s'),
(3, 'Entertainment'),
(4, 'Unisex'),
(5, 'Dining');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `products` (
  `product_id` int(2) DEFAULT NULL,
  `product_cat` int(1) DEFAULT NULL,
  `product_brand` varchar(10) DEFAULT NULL,
  `product_title` varchar(22) DEFAULT NULL,
  `product_price` varchar(10) DEFAULT NULL,
  `product_qty` decimal(8,6) DEFAULT NULL,
  `product_desc` decimal(9,6) DEFAULT NULL,
  `product_image` varchar(19) DEFAULT NULL,
  `product_keywords` varchar(34) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 4, '', 'Adidas', '', '40.737259', '-73.612213', 'adidas.png', 'Adidas,adidas'),
(2, 4, '', 'Bloomingdale\'s', '', '40.738461', '-73.611496', 'blomingdales.png', 'Bloomingdale\'s,bloomingdales'),
(3, 2, '', 'Charlotte Russe', '', '40.738209', '-73.614296', 'charlotte.webp', 'Charlotte,charlotte,charlotterusse'),
(4, 1, '', 'Montblanc', '', '40.738045', '-73.612808', 'montblanc.png', 'montblanc,Montblanc'),
(5, 4, '', 'JCPenney', '', '40.739529', '-73.614021', 'jcpenny.webp', 'jcpenney,JcPenney'),
(6, 5, '', 'Osteria Morini', '', '40.738262', '-73.614288', 'osteria.webp', 'Osteria,osteria'),
(7, 3, '', 'AMC ', '', '40.742535', '-73.615730', 'amc.webp', 'amc,Amc,AMC'),
(8, 4, '', 'Tilly\'s', '', '40.738197', '-73.612526', 'tillys.webp', 'tillys,Tillys'),
(9, 4, '', 'Zara', '', '40.737049', '-73.612076', 'zara.webp', 'Zara,zara'),
(10, 1, '', 'BOSS', '', '40.737797', '-73.612450', 'boss.png', 'BOSS,boss'),
(11, 5, '', 'Asian Chao', '', '40.738628', '-73.613464', 'asianchao.png', 'Asian,asian'),
(12, 5, '', 'Auntie Annes\'s', '', '40.738026', '-73.612854', 'auntiesannes.png', 'Auntie,auntie'),
(13, 5, '', 'Baked by Melissa', '', '40.738216', '-73.612885', 'bakedbymelissa.jfif', 'baked,Baked'),
(14, 5, '', 'Charleys Philly Steaks', '', '40.739285', '-73.612686', 'charleys.png', 'charleys,Charleys'),
(15, 3, '', 'The Children\'s Place', '', '40.736617', '-73.612023', 'play.webp', 'Play,play'),
(16, 3, '', 'GameStop', '', '40.738873', '-73.613625', 'gamestop.webp', 'Gamestop,gamestop'),
(17, 3, '', 'Glow Golf', '', '40.737938', '-73.613121', 'glowgolf.webp', 'Glow,glow,golf,Golf'),
(18, 3, '', 'Spencer Gifts', '', '40.739235', '-73.613045', 'spencer.webp', 'spencer,Spencer'),
(19, 1, '', 'Bonobos', '', '40.737873', '-73.613159', 'BONOBOS.png', 'Bonobos,bonobos'),
(20, 1, '', 'Charles Tyrwhitt', '', '40.737389', '-73.612686', 'CHARLES.png', 'Charles,charles,charlestyrwhitt'),
(21, 1, '', 'Suitsupply', '', '40.742645', '-73.615654', 'SUITSUPPLY.png', 'Suitsupply,suitsupply'),
(22, 1, '', 'Hot Topic', '', '40.738785', '-73.612869', 'HOTTOPIC.png', 'Hot,hot,hottopic'),
(23, 2, '', 'Aerie', '', '40.738323', '-73.613716', 'aerie.webp', 'Aerie,aerie'),
(24, 2, '', 'Calzedonia', '', '40.738251', '-73.613266', 'calzedonia.webp', 'Calzedonia,calzedonia'),
(25, 2, '', 'American Eagle', '', '40.738731', '-73.613968', 'AMERICAN-EAGLE.png', 'American,american,americaneagle'),
(26, 2, '', 'Ann Taylor', '', '40.737953', '-73.612656', 'ann.webp', 'Ann,ann,anntaylor');

-- --------------------------------------------------------

--
-- Table structure for table `products1`
--

CREATE TABLE `products1` (
  `product_id` int(3) DEFAULT NULL,
  `product_cat` int(1) DEFAULT NULL,
  `product_brand` varchar(10) DEFAULT NULL,
  `product_title` varchar(24) DEFAULT NULL,
  `product_price` varchar(10) DEFAULT NULL,
  `product_qty` varchar(10) DEFAULT NULL,
  `product_desc` varchar(10) DEFAULT NULL,
  `product_image` varchar(24) DEFAULT NULL,
  `product_keywords` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products1`
--

INSERT INTO `products1` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(26, 4, '', 'A|X Armani Exchange', '', '', '', 'ARMANI EXCHANGE.png', 'Armani,armani,armaniexchange'),
(22, 4, '', 'Adidas', '', '', '', 'adidas.png', 'Adidas,adidas'),
(2, 2, '', 'Aerie', '', '', '', 'aerie.webp', 'Aerie,aerie'),
(23, 4, '', 'Aeropostale', '', '', '', 'aeropostale.webp', 'Aeropostale,aeropostale'),
(4, 2, '', 'Altar\'d State', '', '', '', 'altard.webp', 'Altar\'d,altar\'d,altar\'dstate,altard'),
(78, 3, '', 'AMC ', '', '', '', 'amc.webp', 'amc,Amc,AMC'),
(5, 2, '', 'American Eagle', '', '', '', 'american.webp', 'American,american,americaneagle'),
(6, 2, '', 'Ann Taylor', '', '', '', 'ann.webp', 'Ann,ann,anntaylor'),
(24, 4, '', 'Ardene', '', '', '', 'ardene.png', 'Ardene,ardene'),
(8, 2, '', 'Aritzia', '', '', '', 'aritzia.webp', 'Aritzia,aritzia'),
(9, 2, '', 'Armani Exchange', '', '', '', 'armani.webp', 'Armani,armani,armaniexchange'),
(43, 5, '', 'Asian Chao', '', '', '', 'asianchao.png', 'Asian,asian'),
(44, 5, '', 'Auntie Annes\'s', '', '', '', 'auntiesannes.png', 'Auntie,auntie'),
(45, 5, '', 'Baked by Melissa', '', '', '', 'bakedbymelissa.jfif', 'baked,Baked'),
(27, 4, '', 'Banana Republic', '', '', '', 'REPUBLIC.png', 'Banana,banana,bananarepublic'),
(46, 5, '', 'Bananas', '', '', '', 'bananas.png', 'bananas,Bananas'),
(25, 4, '', 'Bloomingdale\'s', '', '', '', 'blomingdales.png', 'Bloomingdale\'s,bloomingdales'),
(28, 1, '', 'Bonobos', '', '', '', 'BONOBOS.png', 'Bonobos,bonobos'),
(29, 1, '', 'BOSS', '', '', '', 'boss.png', 'BOSS,boss'),
(30, 4, '', 'Burberry', '', '', '', 'BURBERRY.png', 'Burberry,burberry'),
(13, 2, '', 'Calzedonia', '', '', '', 'calzedonia.webp', 'Calzedonia,calzedonia'),
(31, 4, '', 'Champs Sports', '', '', '', 'CHAMPS.png', 'Champs,champs,champsstorts'),
(32, 1, '', 'Charles Tyrwhitt', '', '', '', 'CHARLES.png', 'Charles,charles,charlestyrwhitt'),
(47, 5, '', 'Charleys Philly Steaks', '', '', '', 'charleys.png', 'charleys,Charleys'),
(15, 2, '', 'Charlotte Russe', '', '', '', 'charlotte.webp', 'Charlotte,charlotte,charlotterusse'),
(48, 5, '', 'Chick-fil-A', '', '', '', 'chickfila.png', 'chick,Chick'),
(81, 3, '', 'Children\'s Play Area', '', '', '', 'play.webp', 'Play,play'),
(49, 5, '', 'Chipotle Mexican Grill', '', '', '', 'chipotle.png', 'chipotle,Chipotle'),
(50, 5, '', 'Cinnabon', '', '', '', 'Cinnabon-logo.png', 'Cinnabon,cinnabon'),
(33, 4, '', 'Coach', '', '', '', 'NEW YORK.png', 'coach,Coach'),
(34, 4, '', 'Cotton On', '', '', '', 'COTTONON.png', 'cotton,Cotton,cottonon'),
(35, 4, '', 'Dick\'s Sporting Goods', '', '', '', 'dicks.png', 'Dicks,dicks,dickssportinggoods'),
(51, 5, '', 'Dunkin\' Donuts', '', '', '', 'dunkindonuts.webp', 'dunkin,Dunkin'),
(19, 2, '', 'Everything But Water', '', '', '', 'everything.jfif', 'Everything,everything,everythingbut,everythingbutwater'),
(36, 4, '', 'Express', '', '', '', 'express.png', 'express,Express'),
(21, 2, '', 'Fabletics', '', '', '', 'fabletics.png', 'fabletics,Fabletics'),
(86, 2, '', 'Foot Locker', '', '', '', 'foot.webp', 'foot,Foot,footlocker'),
(37, 1, '', 'Footaction USA', '', '', '', 'footaction-usa.png', 'Footaction,footaction,footactionusa'),
(38, 4, '', 'Forever 21', '', '', '', 'FOREVER 21.png', 'Forever,forever,forever21'),
(87, 2, '', 'Francesca\'s', '', '', '', 'francescas.webp', 'francescas,Francescas'),
(88, 2, '', 'Free People', '', '', '', 'free.webp', 'free,Free,freepeople'),
(89, 2, '', 'Free People Movement', '', '', '', 'freem.webp', 'freepeoplemovement,Free,freepeople'),
(79, 3, '', 'GameStop', '', '', '', 'gamestop.webp', 'Gamestop,gamestop'),
(40, 4, '', 'Gap', '', '', '', 'gap.png', 'Gap,gap'),
(92, 2, '', 'Garage', '', '', '', 'garage.webp', 'garage,Garage'),
(80, 3, '', 'Glow Golf', '', '', '', 'glowgolf.webp', 'Glow,glow,golf,Golf'),
(52, 5, '', 'Gong Cha', '', '', '', 'gong.webp', 'Gong,gong'),
(53, 5, '', 'Grand Lux Cafe', '', '', '', 'grand.webp', 'grand,Grand'),
(39, 4, '', 'G-Star RAW', '', '', '', 'G-STAR RAW.png', 'G-Star,g-star,s-starraw'),
(41, 4, '', 'GUESS', '', '', '', 'guess.png', 'guess,GUESS'),
(42, 4, '', 'H&M', '', '', '', 'hm.png', 'H&M,h&m'),
(54, 5, '', 'Haagen Dazs', '', '', '', 'haagen.webp', 'haagen,Haagen'),
(55, 5, '', 'Havana Central', '', '', '', 'havana.webp', 'havana,Havana'),
(144, 1, '', 'Hot Topic', '', '', '', 'HOTTOPIC.png', 'Hot,hot,hottopic'),
(95, 2, '', 'Iconic', '', '', '', 'iconic.png', 'iconic,Iconnic'),
(96, 2, '', 'Innataly Bridal', '', '', '', 'innataly.png', 'innatalybridal,innataly,Innataly'),
(97, 2, '', 'Intimissimi', '', '', '', 'intissimi.webp', 'Intimissimi'),
(56, 5, '', 'Island Poke', '', '', '', 'island.webp', 'island,Island'),
(57, 5, '', 'IT\'SUGAR', '', '', '', 'itsugar.webp', 'sugar,Sugar,It,it,IT'),
(99, 4, '', 'J.Crew', '', '', '', 'jcrew.webp', 'jcrew,Jcrew,Jcrew'),
(98, 2, '', 'J.Jill', '', '', '', 'j.webp', 'jjill,Jjill'),
(58, 5, '', 'Jamba Juice', '', '', '', 'jamba.webp', 'jamba,Jamba'),
(100, 4, '', 'JCPenney', '', '', '', 'jcpenny.webp', 'jcpenney,JcPenney'),
(59, 5, '', 'Johnny Rockets', '', '', '', 'johnny.webp', 'Johnny,johnny'),
(101, 4, '', 'Johnston & Murphy', '', '', '', 'johnston.webp', 'Johnston,johnston,johnston&Murphy'),
(102, 4, '', 'Journeys', '', '', '', 'journeys.png', 'journeys,Journeys'),
(103, 2, '', 'Karl Lagerfeld Paris', '', '', '', 'karl.webp', 'karl,karllagerfeldparis,karllagerfeld,Karllagerfeld'),
(104, 2, '', 'Kate Spade New York', '', '', '', 'kate.webp', 'kate,katespade,KateSpade'),
(149, 4, '', 'LACOSTE', '', '', '', 'LACOSTE.png', 'LACOSTE, lacoste'),
(60, 5, '', 'Le Pain Quotidien', '', '', '', 'LePain.webp', 'Le,le'),
(106, 4, '', 'Lids', '', '', '', 'lids.webp', 'lids,Lids'),
(151, 4, '', 'Lids Second Location', '', '', '', 'lids-second-location.png', 'Lids,lids, Lidssecondlocation'),
(107, 2, '', 'Loft', '', '', '', 'loft.webp', 'Loft,loft'),
(108, 4, '', 'Louis Vuitton', '', '', '', 'louis.webp', 'louisvuitton,louis,LouisVuitton'),
(109, 4, '', 'Lululemon', '', '', '', 'lulu.webp', 'lululemon,Lululemon'),
(110, 4, '', 'Macy\'s', '', '', '', 'macys.webp', 'Macys,macys'),
(111, 2, '', 'Madewell', '', '', '', 'madewell.webp', 'Madewell,madewell'),
(61, 5, '', 'Maoz Vegetarian', '', '', '', 'maoz.webp', 'maoz,Maoz'),
(112, 4, '', 'MCM', '', '', '', 'mcm.webp', 'MCM,mcm'),
(62, 5, '', 'Melt Shop', '', '', '', 'melt.webp', 'Melt,melt'),
(113, 4, '', 'Michael Kors', '', '', '', 'mk.webp', 'MichealKors,michaelkors,michael,Michael,mk,MK'),
(114, 4, '', 'minimL', '', '', '', 'mini.webp', 'minimL,miniml,mini'),
(158, 1, '', 'Montblanc', '', '', '', 'montblanc.png', 'montblanc,Montblanc'),
(115, 4, '', 'Moose Knuckles', '', '', '', 'moose.png', 'MooseKnuckles,Mooseknuckles,mooseknuckles'),
(116, 4, '', 'Neiman Marcus', '', '', '', 'neiman.webp', 'NeimanMarcus,neimanmarcus,Neiman'),
(63, 5, '', 'Neiman Marcus Cafe', '', '', '', 'marcus.webp', 'Neiman,neiman,marcus,Marcus'),
(117, 4, '', 'Newbury Comics', '', '', '', 'newbury.webp', 'NewburyComics,newburycomics,newbury,Newbury'),
(118, 4, '', 'Nordstorm', '', '', '', 'nordstorm.webp', 'Nordstorm,nordstorm'),
(64, 5, '', 'Nordstorm Grill', '', '', '', 'nordstorm.webp', 'Nordstorm,nordstorm'),
(163, 1, '', 'Nordstrom Espresso Bar', '', '', '', 'NORDSTROM2.png', 'Nordstrom,nordstrom,nordstromespresso'),
(119, 2, '', 'NYDJ', '', '', '', 'nydj.webp', 'Nydj,nydj,NYDJ'),
(120, 4, '', 'Oak + Fort', '', '', '', 'oak.webp', 'oak,oakfort'),
(121, 4, '', 'Oakley', '', '', '', 'oakley.webp', 'oakley,Oakley'),
(65, 5, '', 'Osteria Morini', '', '', '', 'osteria.webp', 'Osteria,osteria'),
(122, 4, '', 'PacSun', '', '', '', 'pacsun.png', 'pacsun,Pacsun'),
(66, 5, '', 'Patsy\'s Pizzeria', '', '', '', 'patsys.webp', 'Pizzeria,pizzeria'),
(123, 2, '', 'Pink', '', '', '', 'pink.webp', 'pink,Pink'),
(67, 5, '', 'Pinkberry', '', '', '', 'pinkberry.webp', 'Pinkberry,pinkberry'),
(167, 1, '', 'Quails', '', '', '', 'quails.png', 'Quails,quails'),
(124, 2, '', 'Rebecca Taylor', '', '', '', 'rebecca.webp', 'Rebecca,rebecca,RebeccaTaylor'),
(68, 5, '', 'Red Mango', '', '', '', 'redmango.webp', 'Mango,mango,red,Red'),
(125, 2, '', 'Rituals', '', '', '', 'rituals.webp', 'Rituals,rituals'),
(126, 2, '', 'Royals Boutique', '', '', '', 'royals.webp', 'Royals,RoyalsBoutique,royals,royalsboutique'),
(127, 2, '', 'Sabon', '', '', '', 'sabon.webp', 'Sabon,sabon'),
(69, 5, '', 'Sarku Japan', '', '', '', 'sarku.webp', 'sarku,Sarku'),
(70, 5, '', 'Seasons 52', '', '', '', 'season.webp', 'season,Season'),
(128, 4, '', 'Skechers', '', '', '', 'skechers.webp', 'Skechers'),
(71, 5, '', 'Small Batch', '', '', '', 'small.webp', 'small,Small'),
(82, 3, '', 'Spencer Gifts', '', '', '', 'spencer.webp', 'spencer,Spencer'),
(129, 2, '', 'Steve Madden', '', '', '', 'steve.webp', 'Steve,stevemadden,SteveMadden'),
(169, 1, '', 'Suitsupply', '', '', '', 'SUITSUPPLY.png', 'Suitsupply,suitsupply'),
(72, 5, '', 'Sushi Fuji', '', '', '', 'sushi.webp', 'Sushi,sushi'),
(170, 1, '', 'Swarovski Crystal', '', '', '', 'SWAROVSKI.png', 'Swarovski,swarovski,swarovskicrystal'),
(73, 5, '', 'Taco Bell', '', '', '', 'taco.webp', 'Taco,taco'),
(74, 5, '', 'The Capital Grille', '', '', '', 'capital.webp', 'Capital,capital'),
(75, 5, '', 'The Little Beet', '', '', '', 'little.webp', 'Little,little'),
(130, 4, '', 'Tilly\'s', '', '', '', 'tillys.webp', 'tillys,Tillys'),
(131, 2, '', 'Tory Burch', '', '', '', 'tory.png', 'ToryBurch,toryburch,Tory,tory'),
(172, 1, '', 'Tourneau', '', '', '', 'BUCHERER.png', 'Tourneau,tourneay'),
(76, 5, '', 'True Food Kitchen', '', '', '', 'truefood.webp', 'True,true'),
(132, 4, '', 'Tumi', '', '', '', 'tumi.webp', 'Tumi,tumi'),
(133, 4, '', 'UGG', '', '', '', 'ugg.webp', 'ugg,UGG'),
(134, 4, '', 'Uniqlo', '', '', '', 'uniqlo.webp', 'Uniqlo,uniqlo'),
(135, 4, '', 'UNTUCKit', '', '', '', 'untuck.webp', 'untuckit,untuck,Untuckit'),
(136, 4, '', 'Urban Outfitters', '', '', '', 'urban.webp', 'urban,Urban,UrbanOutfittes,urbanoutfitters'),
(137, 4, '', 'Vans', '', '', '', 'vans.webp', 'Vans,vans'),
(138, 2, '', 'Vera Bradley', '', '', '', 'vb.webp', 'Vera,vera,Verabradley,VeraBradley'),
(139, 2, '', 'Victoria\'s Secret ', '', '', '', 'vs.webp', 'Victorias,victorias,Victoriassecret,victoriassecret'),
(140, 4, '', 'Vince', '', '', '', 'vince.webp', 'Vince,vince'),
(77, 5, '', 'Wendy\'s', '', '', '', 'wendy.webp', 'wendy,Wendy'),
(141, 2, '', 'White House Black Market', '', '', '', 'white.webp', 'white,whitehouse,whitehouseblack,whitehouseblackmarket,White'),
(142, 4, '', 'Zara', '', '', '', 'zara.webp', 'Zara,zara'),
(143, 4, '', 'Zumiez', '', '', '', 'zumiez.png', 'Zumiez,zumiez');

-- --------------------------------------------------------

--
-- Table structure for table `productsold`
--

CREATE TABLE `productsold` (
  `product_id` int(2) DEFAULT NULL,
  `product_cat` int(1) DEFAULT NULL,
  `product_brand` varchar(10) DEFAULT NULL,
  `product_title` varchar(7) DEFAULT NULL,
  `product_price` varchar(10) DEFAULT NULL,
  `product_qty` varchar(10) DEFAULT NULL,
  `product_desc` varchar(10) DEFAULT NULL,
  `product_image` varchar(29) DEFAULT NULL,
  `product_keywords` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productsold`
--

INSERT INTO `productsold` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(20, 6, '', 'Mallika', '', '', '', 'WIN_20210304_01_08_47_Pro.jpg', 'Mallika'),
(21, 3, '3', 'Mallika', NULL, NULL, NULL, 'adidas.png', 'Mal lik');

-- --------------------------------------------------------

--
-- Table structure for table `productsold1`
--

CREATE TABLE `productsold1` (
  `product_id` int(2) DEFAULT NULL,
  `product_cat` int(1) DEFAULT NULL,
  `product_brand` varchar(10) DEFAULT NULL,
  `product_title` varchar(15) DEFAULT NULL,
  `product_price` varchar(10) DEFAULT NULL,
  `product_qty` decimal(8,6) DEFAULT NULL,
  `product_desc` decimal(9,6) DEFAULT NULL,
  `product_image` varchar(16) DEFAULT NULL,
  `product_keywords` varchar(34) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productsold1`
--

INSERT INTO `productsold1` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 4, '', 'Adidas', '', '40.737259', '-73.612213', 'adidas.png', 'Adidas,adidas'),
(2, 4, '', 'Bloomingdale\'s', '', '40.738461', '-73.611496', 'blomingdales.png', 'Bloomingdale\'s,bloomingdales'),
(3, 2, '', 'Charlotte Russe', '', '40.738209', '-73.614296', 'charlotte.webp', 'Charlotte,charlotte,charlotterusse'),
(4, 1, '', 'Montblanc', '', '40.738045', '-73.612808', 'montblanc.png', 'montblanc,Montblanc'),
(5, 4, '', 'JCPenney', '', '40.739529', '-73.614021', 'jcpenny.webp', 'jcpenney,JcPenney'),
(6, 5, '', 'Osteria Morini', '', '40.738262', '-73.614288', 'osteria.webp', 'Osteria,osteria'),
(7, 3, '', 'AMC ', '', '40.742535', '-73.615730', 'amc.webp', 'amc,Amc,AMC'),
(8, 4, '', 'Tilly\'s', '', '40.738197', '-73.612526', 'tillys.webp', 'tillys,Tillys'),
(9, 4, '', 'Zara', '', '40.737049', '-73.612076', 'zara.webp', 'Zara,zara'),
(10, 1, '', 'BOSS', '', '40.737797', '-73.612450', 'boss.png', 'BOSS,boss');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Christine', 'Randolph', 'randolphc@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', '2133  Hill Haven Drive', 'Terra Stree'),
(2, 'Will', 'Willams', 'willainswill@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', '4567  Orphan Road', 'WI'),
(3, 'Demo', 'Name', 'demo@gmail.com', 'password', '9876543210', 'demo ad1', 'ademo ad2'),
(5, 'Steeve', 'Rogers', 'steeve1@gmail.com', '305e4f55ce823e111a46a9d500bcb86c', '9876547770', '573  Pinewood Avenue', 'MN'),
(6, 'Melissa', 'Gilbert', 'gilbert@gmail.com', '305e4f55ce823e111a46a9d500bcb86c', '7845554582', '1711  McKinley Avenue', 'MA'),
(7, 'Mallika', 'Konkar', 'mallikakonkar2000@gmail.com', '97ac91cb94bcc43d834ef666f5015c4d', '7738403710', '201, Parimal Heights, Gulmohar Road, Off juhu Lane, Andheri west', 'Off Juhu La'),
(8, 'Mallika', 'Konkar', 'mallikakonkar@gmail.com', '859a35e818ad9bd340b9f1ee2394eeea', '7738403710', '201, Parimal Heights, Gulmohar Road, Off juhu Lane, Andheri west', 'starbucks');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
