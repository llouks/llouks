-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 11, 2018 at 01:36 AM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ottermart`
--

-- --------------------------------------------------------

--
-- Table structure for table `om_admin`
--

CREATE TABLE `om_admin` (
  `adminId` tinyint(4) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `userName` varchar(8) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `om_admin`
--

INSERT INTO `om_admin` (`adminId`, `firstName`, `lastName`, `userName`, `password`) VALUES
(1, 'Logan', 'Louks', 'llouks', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
(2, 'Admin', 'Admin', 'admin', 'e5e9fa1ba31ecd1ae84f75caaa474f3a663f05f4');

-- --------------------------------------------------------

--
-- Table structure for table `om_category`
--

CREATE TABLE `om_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(25) NOT NULL,
  `catDescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Category Table';

--
-- Dumping data for table `om_category`
--

INSERT INTO `om_category` (`catId`, `catName`, `catDescription`) VALUES
(1, 'Electronics', 'TVs, Audio equipment, phones, etc'),
(2, 'Video Games', 'Game consoles, controls, games'),
(3, 'Sports', 'Balls, rackets, weights, etc.'),
(4, 'Computers', 'laptops, tablets, desktops'),
(5, 'Books', 'Books, textbook, manuals, magazine, novels'),
(6, 'Toys', 'board games, lego, trading cards'),
(7, 'Movies', 'DVD, Blu Ray');

-- --------------------------------------------------------

--
-- Table structure for table `om_product`
--

CREATE TABLE `om_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(25) NOT NULL,
  `productDescription` varchar(500) NOT NULL,
  `productImage` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `catId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `om_product`
--

INSERT INTO `om_product` (`productId`, `productName`, `productDescription`, `productImage`, `price`, `catId`) VALUES
(1, 'Sceptre 32', '\"Sceptre 32\"\" Class HD (720P) LED TV (X322BV-SR)\"', 'https://i5.walmartimages.com/asr/cd51992c-b3d6-4aad-be53-07e9fee0d01a_1.f2b4fefcfd887e87e1583b61224e8fa7.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 89.99, 1),
(2, 'Happy Feet Two', 'Happy Feet Two: The Videogame - Nintendo DS', 'https://i5.walmartimages.com/asr/28fd4ce7-60bc-4dff-b4e3-fed8de3ef0ab_1.ec380aa9dd111dd81c0cc634972b60f0.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 12.69, 2),
(3, 'CYBERPOWERPC', 'CYBERPOWERPC Gamer Xtreme GXi10060W Gaming Desktop PC with Intel Core i5-7400 Processor, 8GB Memory, 1TB Hard Drive and Windows 10 Home (Monitor Not Included)', 'https://i5.walmartimages.com/asr/e5efe96d-21cb-4e92-857a-00a238c461ab_1.3a02d5321fa91c383cc31739e6b44d0d.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 651, 4),
(4, 'CyberPowerPC', 'CyberPowerPC Gamer Xtreme VR GXi10282OPT Desktop PC with Intel Core i5-7600K Quad-Core Processor, 8GB Memory, 1TB Hard Drive and Windows 10 Home (Monitor Not Included)', 'https://i5.walmartimages.com/asr/ddae976b-d81a-49fa-b5aa-9844d9124801_1.5dd6282b824e066507d61e6da069c04a.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 1052.15, 4),
(5, 'HP Flyer Red 15.6\"', '\"HP Flyer Red 15.6\"\" 15-f272wm Laptop PC with Intel Pentium N3540 Processor, 4GB Memory, 500GB Hard Drive and Windows 10 Home, Refurbished\"', 'https://i5.walmartimages.com/asr/a4f2f26c-3c21-410c-9471-ded3028c317a_1.49da18bbe25211e253564b11d2fa214e.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 241.82, 4),
(6, 'HP Stream 14\"', '\"HP Stream 14\"\" Laptop, Windows 10 Home, Office 365 Personal 1-year included, Intel Celeron N3060 Processor, 4GB RAM, 32GB eMMC Storage\"', 'https://i5.walmartimages.com/asr/83fce361-1aa5-4dec-8f80-e89aa4a97a2f_1.93e64fec28a9c5a773e8587f056e1785.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 219, 4),
(7, 'iPhone X', 'Newest iPhone by Apple', 'http://www.istyle.eu/media/catalog/product/cache/10/image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphonex-spgry-pureangles_gb-en-screen_1.jpeg', 1198.99, 1),
(8, 'Basketball Hoop', 'Regulation Size Basketball Hoop (10ft)', 'https://www.academy.com/webapp/wcs/stores/servlet/Product_10151_10051_435903_-1?gnav=spotlights%7Cbasketball', 299.99, 3),
(9, 'Monster Hunter World', 'Monster Hunter World, Sony, PlayStation 4, 013388560424', 'https://i5.walmartimages.com/asr/d5781327-5c18-4201-bd3c-05d438d777d6_1.dfa43546dfd85c95b84521a33f682dd0.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 59.88, 2),
(10, 'Elder Scrolls V: Skyrim', 'Elder Scrolls V: Skyrim Special Edition, Bethesda, PlayStation 4, 093155171251', 'https://i5.walmartimages.com/asr/3564cac2-9ad7-40b3-bd4e-ef04ad08baa9_1.6b237bcbaebdda4718b3592099ce7c63.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 24.96, 2),
(11, 'Mario Party 10', 'Mario Party 10 Nintendo Wii U 2015 Party Video Game Series Nd Cube Bowser Mini Games Poster - 24x36', 'https://i5.walmartimages.com/asr/22c40107-b84c-40e1-8825-8878fa644e6e_1.5c9bf8c89302fc494c9c59a8fdabec92.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 9.99, 2),
(12, 'Sceptre 75', '\"Sceptre 75\"\" Class 4K (2160P) LED TV (U750CV-U)', 'https://i5.walmartimages.com/asr/3564c8b1-1d7f-4e29-b31e-50af09a79db4_1.26947c29eb52cd3a4ff9b06583e04cd6.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 999.99, 1),
(13, 'Basketball', 'Spalding NBA Super Tack Indoor/Outdoor Basketball', 'https://i5.walmartimages.com/asr/4336ada2-cd1d-461c-8f2e-793ce243d123_1.61088e3ca5b716e89924f3fb12aca826.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 14.96, 0),
(14, 'Sceptre 65', 'Class 4K (2160P) LED TV (U650CV-U)', 'https://i5.walmartimages.com/asr/bcbc95b4-5816-4841-8545-33e9b677a6d5_2.3644c20df819fa74845119c2704625a9.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 499.99, 0),
(15, 'Tachikara Soccer Ball', 'Soft man-made leather soccer ball\r\nButyl bladder', 'https://i5.walmartimages.com/asr/df648291-3a0c-4480-a214-d7b6ec7a4fde_1.ab738e6329bd68aad5ddb317bb038a6f.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 20.43, 3),
(16, 'Dell Desktop PC Tower ', 'Dell Desktop PC Tower System Windows 10 Intel Dual Core Processor 4GB Ram 160GB Hard Drive DVD Wifi with a 17\"\" LCD and a Genuine Dell Keyboard and Mouse-Refurbished Computer', 'https://i5.walmartimages.com/asr/e54b284f-a6fa-42f2-941b-d0cf8285a459_1.ffde30bd805a6a6c7357d104d22b4d3f.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 130, 4),
(17, 'Basketball', '29.5 Men\'s Basketball', 'https://www.dickssportinggoods.com/p/spalding-nba-cross-court-official-basketball-29-5-16splanbcrsscrtffbkb/16splanbcrsscrtffbkb', 19.99, 3),
(19, 'Dell Alienware 17 R4', '\"Dell Alienware 17 R4 17.3\"\" Laptop, Windows 10 Home, Intel Core i7-7700HQ Processor, 16GB RAM, 1TB Hard Drive\"', 'https://i5.walmartimages.com/asr/4f164eb4-0052-4b27-ac68-3912f3775499_1.a3c10246cf0098c3aaea9e89f079cf2d.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 1593, 1),
(22, 'Lenovo ideapad 320', 'Lenovo ideapad 320 15.6\"\" Laptop, Windows 10, Intel Celeron N3350 Dual-Core Processor, 4GB RAM, 1TB Hard Drive', 'https://i5.walmartimages.com/asr/351418ea-2da6-4e89-bcf0-3b59d85dea4d_1.2d261da7177c7653c27785d84c8729d3.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 229, 4),
(23, 'Resident Evil 4 HD', 'Resident Evil 4 HD for PlayStation 4', 'https://i5.walmartimages.com/asr/91a82b7f-55fb-41cf-9cfe-a5b5185dea96_1.54e7fb52236e0111600d3325ca592d5d.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 19.99, 2),
(24, 'Kingdom Hearts 3', 'Kingdom Hearts 3, Square Enix, PlayStation 4, 662248915050', 'https://i5.walmartimages.com/asr/73b1b035-d179-4b39-8afc-38eac8a818b5_1.841825da3bc4f4847d1f354c768b0a84.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 59.99, 2),
(25, 'Rugby', '2017 Rugby Almanack', 'https://i5.walmartimages.com/asr/39b8b24b-ce90-4766-86a0-c703dc244648_1.ef378c455304149df9406558999e3535.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 29.28, 3),
(26, 'Super Nintendo ES', 'Super Nintendo Entertainment System SNES Classic Edition', 'https://i5.walmartimages.com/asr/76d67288-d18f-4232-adc1-a9a221875656_1.ed17f49b4334583cdd8d0efb5e879738.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 112.17, 2),
(27, 'Bowflex Dumbbells', '2 Dumbbells that fluctuate in weight from 2-52.5', 'https://www.bowflex.com/on/demandware.static/-/Sites-nautilus-master-catalog/default/dwa1e50944/images/bowflex/selecttech/552/100131/bowflex-selecttech-552-dumbbell-set.png', 259.99, 3),
(28, 'PlayStation', 'Playstation console system, has access to the internet, used for video streaming services', 'https://media.playstation.com/is/image/SCEA/playstation-4-slim-vertical-product-shot-01-us-07sep16?$native$', 299.99, 2),
(29, 'Crash Bandicoot', 'Remastered of the original trilogy', 'https://target.scene7.com/is/image/Target/52201072?wid=520&hei=520&fmt=pjpeg', 59.99, 2),
(30, 'Beats Pill+', 'Portable Speaker by apple and Beats by Dre', 'https://www.beatsbydre.com/content/dam/beats/web/pdp/beats-pill-plus/product_overview/overview_pillplus_retina_V2.png', 179.95, 1),
(31, 'Soccer Ball', 'Mens Soccer Ball', 'https://www.pinterest.com/pin/336081190919989306/', 25.99, 3),
(32, 'Racket', 'Wilson Federer Adult Tennis Racket', 'https://i5.walmartimages.com/asr/07ee9a66-3f8f-4f4e-9356-ec759cff4dde_1.6c0947573f046140c1a769fa1c00e411.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 21.97, 3),
(34, 'Samsung Galaxy J3', 'Total Wireless Samsung Galaxy J3 Luna Pro 16GB Prepaid Smartphone, Black', 'https://i5.walmartimages.com/asr/84c29fe3-211b-4a44-8bd2-3224a1efe57a_1.2f6b3f30ba40f932f5a21ab108eef849.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 49, 1),
(35, 'Sony PlayStation 4', 'Sony PlayStation 4 Slim 500GB Gaming Console, Black, CUH-2115A', 'https://i5.walmartimages.com/asr/230f7166-6198-47e2-9d7c-6765dd55eaa0_1.1814fe6b8a1755f07a4d7d4aaf92c4b7.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 269, 2),
(36, 'Pogo Stick', 'Thruster Yellow Pogo Stick', 'https://i5.walmartimages.com/asr/e0ae3bd4-5736-4bc1-8e29-ec91fddcc9b5_1.6a42b535de46388128ae587f258c58d1.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 19.92, 3),
(101, 'Nerf Battle Racer Pedal', 'Nerf Race Car', 'https://i5.walmartimages.com/asr/07c6ca60-9b4f-4fcd-b4d2-f81fb172e3b6_1.2548eb00f9982c73bce7c09d44baca36.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 174.99, 0),
(102, 'NBA Live 16', 'NBA Live 16, Electronic Arts, PlayStation 4, 014633735079', 'https://i5.walmartimages.com/asr/038063fa-c1ff-4aa3-842f-55856ce5a476_1.64109096eb724843fdbafc4797c98621.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 16.99, 2),
(103, 'Refurbished HP Stream', 'Laptop, Windows 10 Home, Intel Celeron N3060 Processor, 4GB RAM, 32GB eMMC Storage', 'https://i5.walmartimages.com/asr/dcde8df8-0f63-4a5a-b98c-f3773fbd9bc5_1.e076b98e1df204e573d61d33a85d45eb.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 139, 4),
(104, 'Boxing Punching Bag ', 'Sports Boxing Punching Bag Freestanding w/ Pair of Gloves Adjustable Height 35-51', 'https://i5.walmartimages.com/asr/6e911fc6-f97e-4952-aab9-bda897c86c21_1.359b5245c5942cffec48689ded38019d.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 31.48, 3),
(106, 'Weight', '300 lb Weight Set with Gold\'s Gym Olympic Plates', 'https://i5.walmartimages.com/asr/3e8a29a6-df03-422d-8504-6c172671cee5_1.e7ee897a9780d2631b4ca27d5ae93cd4.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 220, 3),
(108, 'Persona 5', 'Persona 5 for PlayStation 4\r\n', 'https://i5.walmartimages.com/asr/546a662c-f701-437f-a00e-81dbd094768a_1.5c551f9bc33807f804943d31a0585736.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 49.94, 2),
(109, 'Middle Earth: Shadow of M', 'Middle Earth: Shadow of Mordor - Game of the Year (PS4)', 'https://i5.walmartimages.com/asr/9ceadf5d-490c-47f9-96df-262ceceb0781_1.18b0a260e97336340806032dab6cf9cb.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 19.89, 2),
(110, 'Shadow Of Collosus (PS4)', 'Engage on an epic journey at a titanic scale. You fight monstrosities the size of towers to finish your quest in saving a princess.', 'http://www.gamalive.com/images/fiches/18022-shadow-of-the-colossus.jpg', 39.99, 2),
(111, 'Nintendo Power Glove', 'The best and fastest way to play modern games.', 'http://www.8-bitcentral.com/images/nintendo/nes/powerGlove.jpg', 10, 2),
(112, 'iPad Textbook', 'iPad Application Sketch Book', 'https://i5.walmartimages.com/asr/07cbef55-5f4f-46d4-9f76-228c1c4dfa85_1.5acc94958eb6e012ff81d5f473e1361f.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 14, 5),
(113, 'iPad Survivor Guide', 'A Beginner\'s Guide to Coding on iPads and iPhones (Babani Computer Guidebooks)', 'https://i5.walmartimages.com/asr/55175ec6-e925-4cc9-a453-e5c22e0c9043_1.caf3d6ebd2836ef8f409c39b2cb92581.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 15, 5),
(114, 'Apple iPad Pro', 'Apple 10.5-inch iPad Pro Wi-Fi + Cellular 256GB Silver', 'https://i5.walmartimages.com/asr/269c8703-fa1d-4435-9233-ce1ad934d548_1.dbfd617770e92d7411640eda1899a403.png?odnHeight=100&odnWidth=100&odnBg=FFFFFF', 1020, 4);

-- --------------------------------------------------------

--
-- Table structure for table `om_purchase`
--

CREATE TABLE `om_purchase` (
  `purchaseId` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `unitPrice` float NOT NULL,
  `purchaseDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `om_purchase`
--

INSERT INTO `om_purchase` (`purchaseId`, `user_id`, `productId`, `quantity`, `unitPrice`, `purchaseDate`) VALUES
(1, 8, 7, 1, 1198.99, '2018-03-03'),
(2, 6, 8, 2, 297, '2018-03-01'),
(3, 6, 13, 1, 14.96, '2018-03-01'),
(4, 4, 111, 3, 10, '2018-02-02'),
(5, 2, 36, 5, 19, '2018-02-18'),
(6, 1, 34, 2, 49, '2018-03-06'),
(7, 1, 32, 3, 21.97, '2018-03-04'),
(8, 9, 28, 1, 299.99, '2018-03-05'),
(9, 7, 31, 5, 25.99, '2018-02-17'),
(10, 7, 19, 1, 1593, '2018-02-03'),
(11, 10, 2, 1, 12.69, '2018-02-22'),
(12, 10, 14, 1, 499.99, '2018-03-28');

-- --------------------------------------------------------

--
-- Table structure for table `om_user`
--

CREATE TABLE `om_user` (
  `userId` int(11) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `sex` char(1) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `om_user`
--

INSERT INTO `om_user` (`userId`, `firstName`, `lastName`, `sex`, `email`) VALUES
(1, 'Roberto', 'Bradley', 'M', 'rbradley@aol.com'),
(2, 'Kaila', 'Funaki', 'F', 'kfunaki@aol.com'),
(3, 'Nicco', 'Engbeck', 'M', 'nengbeck@yahoo.com'),
(4, 'Sergio', 'Llopis', 'M', 'sllopis@apple.com'),
(5, 'Bianca', 'Hernandez', 'F', 'bhernandez@yahoo.com'),
(6, 'Pierre', 'Verhaeghe', 'M', 'pverhaeghe@apple.com'),
(7, 'Noah', 'Owens', 'M', 'nowens@gmail.com'),
(8, 'Cristal', 'Perez', 'F', 'cperez@gmail.com'),
(9, 'Aymeric', 'Beringer', 'M', 'aberinger@gmail.com'),
(10, 'Matt', 'Mensinger', 'M', 'mmensinger@aol.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `om_admin`
--
ALTER TABLE `om_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `om_category`
--
ALTER TABLE `om_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `om_product`
--
ALTER TABLE `om_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `om_purchase`
--
ALTER TABLE `om_purchase`
  ADD PRIMARY KEY (`purchaseId`);

--
-- Indexes for table `om_user`
--
ALTER TABLE `om_user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `om_admin`
--
ALTER TABLE `om_admin`
  MODIFY `adminId` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `om_category`
--
ALTER TABLE `om_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `om_product`
--
ALTER TABLE `om_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
