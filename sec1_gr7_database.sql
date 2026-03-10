--
-- Database: `MYKEA_DATABASE`
--
DROP DATABASE IF EXISTS MYKEA_DATABASE;
CREATE DATABASE IF NOT EXISTS `MYKEA_DATABASE` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `MYKEA_DATABASE`;

-- --------------------------------------------------------
--
-- Table structure for table USER
--
DROP TABLE IF EXISTS User;
CREATE TABLE User (
    email    VARCHAR(512),
    pwd    VARCHAR(512)
);

INSERT INTO User (email, pwd) VALUES
('admin123@gmail.com', 'admin123'),
('admin124@gmail.com', 'admin124'),
('admin456@gmail.com', 'admin456'),
('admin457@gmail.com', 'admin457'),
('admin458@gmail.com', 'admin458'),
('admin459@gmail.com', 'admin459'),
('admin671@gmail.com', 'admin671'),
('admin672@gmail.com', 'admin672'),
('admin673@gmail.com', 'admin673'),
('admin674@gmail.com', 'admin674');


--
-- Table structure for table `PRODUCT`
--
DROP TABLE IF EXISTS `Product`;
CREATE TABLE `Product` (
    `website_name`	VARCHAR(512),
    `competence_date`	VARCHAR(512),
    `country_code`	VARCHAR(512),
    `currency_code`	VARCHAR(512),
    `brand`	VARCHAR(512),
    `category1_code`	VARCHAR(512),
    `category2_code`	VARCHAR(512),
    `category3_code`	VARCHAR(512),
    `product_code`	INT PRIMARY KEY,
    `title`	VARCHAR(512),
    `itemurl`	VARCHAR(512),
    `imageurl`	VARCHAR(512),
    `full_price` DOUBLE,
    `price`	DOUBLE,
    `full_price_eur` DOUBLE,
    `price_eur`	DOUBLE,
    `flg_discount`	VARCHAR(512)
);

INSERT INTO `Product` (`website_name`, `competence_date`, `country_code`, `currency_code`, `brand`, `category1_code`, `category2_code`, `category3_code`, `product_code`, `title`, `itemurl`, `imageurl`, `full_price`, `price`, `full_price_eur`, `price_eur`, `flg_discount`) VALUES
	('Rue La La', '2023-11-17', 'USA', 'USD', 'LACOSTE', 'HOME', 'BEDDING%20%26%20BEDROOM', 'SHEETS', '168836387', 'Lacoste Percale Solid Sheet Set', 'https://www.ruelala.com/boutique/product/207742/168836387/', 'http://asset2.ruecdn.com/images/product/303339/3033393795_RLLDTH_1.jpg', '68.0', '34.0', '62.73', '31.36', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'PURECARE', 'HOME', 'BEDDING%20%26%20BEDROOM', 'MATTRESSES%20%26%20ACCESSORIES', '170806568', 'PureCare Cotton Terry Mattress Protector', 'https://www.ruelala.com/boutique/product/204943/170806568/', 'http://asset2.ruecdn.com/images/product/303091/3030916670_RLLDTH_1.jpg', '55.0', '44.0', '50.73', '40.59', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'CHIC HOME', 'HOME', 'BEDDING%20%26%20BEDROOM', 'DUVET%20INSERTS%20%26%20DUVETS', '165112081', 'Chic Home Tayson Duvet Cover Set', 'https://www.ruelala.com/boutique/product/159661/165112081/', 'http://asset2.ruecdn.com/images/product/303037/3030378679_RLLDTH_1.jpg', '56.0', '24.0', '51.66', '22.14', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'CHIC HOME', 'HOME', 'BEDDING%20%26%20BEDROOM', 'DUVET%20INSERTS%20%26%20DUVETS', '165112112', 'Chic Home Chrystel Duvet Cover Set', 'https://www.ruelala.com/boutique/product/159661/165112112/', 'http://asset1.ruecdn.com/images/product/303037/3030378744_RLLDTH_1.jpg', '104.0', '49.0', '95.94', '45.2', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'G-RACE LIVING', 'HOME', 'BEDDING%20%26%20BEDROOM', 'DUVET%20INSERTS%20%26%20DUVETS', '199445115', 'G-RAce Living Heavenly Linen-Blend Duvet Set', 'https://www.ruelala.com/boutique/product/182436/199445115/', 'http://asset1.ruecdn.com/images/product/303067/3030679523_RLLDTH_1.jpg', '312.0', '99.0', '287.82', '91.32', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'TRULY SOFT', 'HOME', 'BEDDING%20%26%20BEDROOM', 'DUVET%20INSERTS%20%26%20DUVETS', '176286738', 'Truly Soft Printed Windowpane White Charcoal 3Pc Duvet Cover Set', 'https://www.ruelala.com/boutique/product/159164/176286738/', 'http://asset2.ruecdn.com/images/product/303078/3030788331_RLLDTH_1.jpg', '100.0', '39.0', '92.25', '35.97', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'LUSH DÉCOR', 'HOME', 'BEDDING%20%26%20BEDROOM', 'DUVET%20INSERTS%20%26%20DUVETS', '176396808', 'Lush Decor Farmhouse Seersucker Comforter Set', 'https://www.ruelala.com/boutique/product/159145/176396808/', 'http://asset1.ruecdn.com/images/product/303042/3030425620_RLLDTH_1.jpg', '135.0', '119.0', '124.53', '109.77', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'UNIKOME', 'HOME', 'BEDDING%20%26%20BEDROOM', 'DUVET%20INSERTS%20%26%20DUVETS', '177645271', 'Unikome Soft Solid Clipped Jacquard Duvet Cover Set In Dark Gray  Leaf Quilted', 'https://www.ruelala.com/boutique/product/212552/177645271/', 'http://asset2.ruecdn.com/images/product/303044/3030442764_RLLDTH_1.jpg', '64.0', '39.0', '59.04', '35.97', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'UNIKOME', 'HOME', 'BEDDING%20%26%20BEDROOM', 'PILLOW%20INSERTS', '177645288', 'Unikome 2 Pack Medium Firm Down And Feather Fiber Bed Pillows', 'https://www.ruelala.com/boutique/product/212552/177645288/', 'http://asset2.ruecdn.com/images/product/303044/3030442777_RLLDTH_1.jpg', '136.0', '79.0', '125.46', '72.87', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'ELITE', 'HOME', 'BEDDING%20%26%20BEDROOM', 'SHEETS', '179414816', 'Elite Luxury Satin Sheet Set', 'https://www.ruelala.com/boutique/product/159630/179414816/', 'http://asset2.ruecdn.com/images/product/303374/3033749433_RLLDTH_1.jpg', '40.0', '21.0', '36.9', '19.37', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'ELITE', 'HOME', 'BEDDING%20%26%20BEDROOM', 'SHEETS', '179414820', 'Elite Luxury Satin Sheet Set', 'https://www.ruelala.com/boutique/product/159630/179414820/', 'http://asset2.ruecdn.com/images/product/303374/3033749436_RLLDTH_1.jpg', '50.0', '21.0', '46.12', '19.37', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'SLEEP STYLE', 'HOME', 'BEDDING%20%26%20BEDROOM', 'PILLOW%20INSERTS', '180650918', 'Sleep Style Pillow For Every Position Sleeper With Triangle Gusset On Short Side', 'https://www.ruelala.com/boutique/product/159127/180650918/', 'http://asset1.ruecdn.com/images/product/303051/3030510618_RLLDTH_1.jpg', '40.0', '24.0', '36.9', '22.14', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'GRAPHENE', 'HOME', 'BEDDING%20%26%20BEDROOM', 'MATTRESSES%20%26%20ACCESSORIES', '180650938', 'Graphene Charcoal Infused Antimicrobial Odor Resistant 420 Thread Count Allergen Barrier Diamond Quilted Mattress Pad', 'https://www.ruelala.com/boutique/product/159127/180650938/', 'http://asset2.ruecdn.com/images/product/303051/3030510608_RLLDTH_1.jpg', '168.0', '99.0', '154.98', '91.32', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'CHIC HOME', 'HOME', 'BEDDING%20%26%20BEDROOM', 'SHEETS', '165112152', 'Chic Home Aleyna Sheet Set', 'https://www.ruelala.com/boutique/product/159661/165112152/', 'http://asset2.ruecdn.com/images/product/303337/3033378781_RLLDTH_1.jpg', '56.0', '24.0', '51.66', '22.14', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'CHIC HOME', 'HOME', 'BEDDING%20%26%20BEDROOM', 'SHEETS', '165112163', 'Chic Home Reuben Sheet Set', 'https://www.ruelala.com/boutique/product/159661/165112163/', 'http://asset2.ruecdn.com/images/product/303337/3033378764_RLLDTH_1.jpg', '56.0', '21.0', '51.66', '19.37', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'CHIC HOME', 'HOME', 'BEDDING%20%26%20BEDROOM', 'SHEETS', '165112176', 'Chic Home Ashwyn Sheet Set', 'https://www.ruelala.com/boutique/product/159661/165112176/', 'http://asset2.ruecdn.com/images/product/303337/3033378768_RLLDTH_1.jpg', '56.0', '22.0', '51.66', '20.29', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'MELANGE HOME', 'HOME', 'BEDDING%20%26%20BEDROOM', 'DUVET%20INSERTS%20%26%20DUVETS', '171777547', 'Melange Home 400TC Elephants Duvet Set', 'https://www.ruelala.com/boutique/product/159113/171777547/', 'http://asset1.ruecdn.com/images/product/303049/3030497164_RLLDTH_1.jpg', '110.0', '59.0', '101.47', '54.42', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'BEATRICE HOME FASHIONS', 'HOME', 'BEDDING%20%26%20BEDROOM', 'PILLOWCASES%20%26%20SHAMS', '171777589', 'Beatrice Home Fashions Alicia Wedding Chenille Sham', 'https://www.ruelala.com/boutique/product/159630/171777589/', 'http://asset2.ruecdn.com/images/product/303344/3033441718_RLLDTH_1.jpg', '26.0', '19.0', '23.98', '17.52', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'ALATERRE', 'HOME', 'BEDDING%20%26%20BEDROOM', 'BEDS%20%26%20HEADBOARDS', '135540390', 'Alaterre Poppy Twin Wood Platform Bed with Storage Drawers', 'https://www.ruelala.com/boutique/product/167218/135540390/', 'http://asset2.ruecdn.com/images/product/305068/3050687059_RLLDTH_1.jpg', '499.0', '429.0', '460.33', '395.75', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'ALATERRE', 'HOME', 'BEDDING%20%26%20BEDROOM', 'BEDS%20%26%20HEADBOARDS', '135540396', 'Alaterre Poppy Full Wood Platform Bed with Storage Drawers', 'https://www.ruelala.com/boutique/product/167218/135540396/', 'http://asset2.ruecdn.com/images/product/305068/3050687065_RLLDTH_1.jpg', '569.0', '479.0', '524.9', '441.88', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'ALATERRE', 'HOME', 'BEDDING%20%26%20BEDROOM', 'BEDS%20%26%20HEADBOARDS', '135540412', 'Alaterre Poppy Twin Wood Platform Bed', 'https://www.ruelala.com/boutique/product/167218/135540412/', 'http://asset1.ruecdn.com/images/product/305068/3050687058_RLLDTH_1.jpg', '279.0', '249.0', '257.38', '229.7', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'ALATERRE', 'HOME', 'BEDDING%20%26%20BEDROOM', 'BEDS%20%26%20HEADBOARDS', '135540431', 'Alaterre Roxy Twin Wood Junior Loft Bed', 'https://www.ruelala.com/boutique/product/167218/135540431/', 'http://asset1.ruecdn.com/images/product/305068/3050687100_RLLDTH_1.jpg', '379.0', '319.0', '349.63', '294.28', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'SKYLINE FURNITURE', 'HOME', 'BEDDING%20%26%20BEDROOM', 'BEDS%20%26%20HEADBOARDS', '159856726', 'Skyline Furniture French Seam Slipcover Headboard', 'https://www.ruelala.com/boutique/product/191257/159856726/', 'http://asset2.ruecdn.com/images/product/305009/3050095197_RLLDTH_1.jpg', '720.0', '449.0', '664.2', '414.2', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'SKYLINE FURNITURE', 'HOME', 'BEDDING%20%26%20BEDROOM', 'BEDS%20%26%20HEADBOARDS', '159856731', 'Skyline Furniture French Seam Slipcover Headboard', 'https://www.ruelala.com/boutique/product/191257/159856731/', 'http://asset2.ruecdn.com/images/product/305009/3050095202_RLLDTH_1.jpg', '720.0', '449.0', '664.2', '414.2', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'LAURA ASHLEY', 'HOME', 'BEDDING%20%26%20BEDROOM', 'SHEETS', '168057923', 'Laura Ashley Winnie Grey Sheet Set', 'https://www.ruelala.com/boutique/product/159137/168057923/', 'http://asset2.ruecdn.com/images/product/303370/3033700955_RLLDTH_1.jpg', '100.0', '59.0', '92.25', '54.42', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'LACOSTE', 'HOME', 'BEDDING%20%26%20BEDROOM', 'DUVET%20INSERTS%20%26%20DUVETS', '168836337', 'Lacoste Meribel Duvet Set', 'https://www.ruelala.com/boutique/product/207742/168836337/', 'http://asset1.ruecdn.com/images/product/303039/3030393771_RLLDTH_1.jpg', '250.0', '119.0', '230.62', '109.77', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'LACOSTE', 'HOME', 'BEDDING%20%26%20BEDROOM', 'SHEETS', '168836389', 'Lacoste Slice Sheet Set', 'https://www.ruelala.com/boutique/product/207742/168836389/', 'http://asset2.ruecdn.com/images/product/303339/3033393811_RLLDTH_1.jpg', '68.0', '34.0', '62.73', '31.36', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'PURECARE', 'HOME', 'BEDDING%20%26%20BEDROOM', 'PILLOW%20INSERTS', '170806557', 'PureCare Cooling Memory Fiber Pillow', 'https://www.ruelala.com/boutique/product/204943/170806557/', 'http://asset2.ruecdn.com/images/product/303025/3030254688_RLLDTH_1.jpg', '59.0', '39.0', '54.42', '35.97', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'BEATRICE HOME FASHIONS', 'HOME', 'BEDDING%20%26%20BEDROOM', 'PILLOWCASES%20%26%20SHAMS', '171777593', 'Beatrice Home Fashions Medallion Chenille Sham', 'https://www.ruelala.com/boutique/product/159630/171777593/', 'http://asset2.ruecdn.com/images/product/303344/3033441704_RLLDTH_1.jpg', '26.0', '21.0', '23.98', '19.37', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'SUPERIOR', 'HOME', 'BEDDING%20%26%20BEDROOM', 'DUVET%20INSERTS%20%26%20DUVETS', '205527311', 'Superior 300 Thread Count Solid Duvet Cover Set', 'https://www.ruelala.com/boutique/product/225857/205527311/', 'http://asset1.ruecdn.com/images/product/303086/3030860391_RLLDTH_1.jpg', '90.0', '49.0', '83.02', '45.2', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'SUPERIOR', 'HOME', 'BEDDING%20%26%20BEDROOM', 'DUVET%20INSERTS%20%26%20DUVETS', '205527401', 'Superior 1000 Thread Count Solid Duvet Cover Set', 'https://www.ruelala.com/boutique/product/225857/205527401/', 'http://asset1.ruecdn.com/images/product/303086/3030865269_RLLDTH_1.jpg', '270.0', '149.0', '249.07', '137.45', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'SUPERIOR', 'HOME', 'BEDDING%20%26%20BEDROOM', 'SHEETS', '205527423', 'Superior 300 Thread Count Solid Deep Pocket Sheet Set', 'https://www.ruelala.com/boutique/product/225857/205527423/', 'http://asset1.ruecdn.com/images/product/303301/3033012722_RLLDTH_1.jpg', '114.0', '69.0', '105.16', '63.65', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'NAUTICA', 'HOME', 'BEDDING%20%26%20BEDROOM', 'SHEETS', '125944224', 'Nautica T200 Solid 4Pc Grey Sheet Set', 'https://www.ruelala.com/boutique/product/159137/125944224/', 'http://asset1.ruecdn.com/images/product/303394/3033948560_RLLDTH_1.jpg', '80.0', '39.0', '73.8', '35.97', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'NAUTICA', 'HOME', 'BEDDING%20%26%20BEDROOM', 'SHEETS', '125944274', 'Nautica Whale Stripe 4Pc Blue Sheet Set', 'https://www.ruelala.com/boutique/product/159137/125944274/', 'http://asset2.ruecdn.com/images/product/303394/3033948637_RLLDTH_1.jpg', '84.0', '34.0', '77.49', '31.36', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'SHABBY CHIC', 'HOME', 'BEDDING%20%26%20BEDROOM', 'BEDS%20%26%20HEADBOARDS', '149552583', 'Shabby Chic Adilene Bed Diamond Tufted Headboard', 'https://www.ruelala.com/boutique/product/159429/149552583/', 'http://asset2.ruecdn.com/images/product/305064/3050649797_RLLDTH_1.jpg', '1746.0', '599.0', '1610.7', '552.58', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'MONARCH SPECIALTIES', 'HOME', 'BEDDING%20%26%20BEDROOM', 'NIGHTSTANDS', '150269502', 'Monarch Specialties Nightstand', 'https://www.ruelala.com/boutique/product/168396/150269502/', 'http://asset1.ruecdn.com/images/product/305019/3050197002_RLLDTH_1.jpg', '399.0', '289.0', '368.08', '266.6', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'MONARCH SPECIALTIES', 'HOME', 'BEDDING%20%26%20BEDROOM', 'BEDS%20%26%20HEADBOARDS', '150270146', 'Monarch Specialties Linen Bed', 'https://www.ruelala.com/boutique/product/168396/150270146/', 'http://asset2.ruecdn.com/images/product/305019/3050197125_RLLDTH_1.jpg', '374.0', '289.0', '345.01', '266.6', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'SKYLINE FURNITURE', 'HOME', 'BEDDING%20%26%20BEDROOM', 'BEDS%20%26%20HEADBOARDS', '194209168', 'Skyline Furniture Upholstered Bed Navarro', 'https://www.ruelala.com/boutique/product/191257/194209168/', 'http://asset1.ruecdn.com/images/product/305062/3050620312_RLLDTH_1.jpg', '2325.0', '1439.0', '2144.83', '1327.49', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'SCHLOSSBERG OF SWITZERLAND', 'HOME', 'BEDDING%20%26%20BEDROOM', 'PILLOWCASES%20%26%20SHAMS', '132557784', 'Schlossberg of Switzerland Flanged Pillow Sham', 'https://www.ruelala.com/boutique/product/186005/132557784/', 'http://asset2.ruecdn.com/images/product/303302/3033029758_RLLDTH_1.jpg', '252.0', '189.0', '232.47', '174.35', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'BAXTON STUDIO', 'HOME', 'BEDDING%20%26%20BEDROOM', 'BEDS%20%26%20HEADBOARDS', '132925350', 'Baxton Studio Haylie Queen Size Daybed', 'https://www.ruelala.com/boutique/product/183605/132925350/', 'http://asset2.ruecdn.com/images/product/305044/3050443354_RLLDTH_1.jpg', '830.0', '572.0', '765.68', '527.67', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'BAXTON STUDIO', 'HOME', 'BEDDING%20%26%20BEDROOM', 'BEDS%20%26%20HEADBOARDS', '132925425', 'Baxton Studio Leanora Queen Size Platform Bed', 'https://www.ruelala.com/boutique/product/183605/132925425/', 'http://asset2.ruecdn.com/images/product/305044/3050443470_RLLDTH_1.jpg', '496.0', '354.0', '457.56', '326.56', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'BAXTON STUDIO', 'HOME', 'BEDDING%20%26%20BEDROOM', 'BEDS%20%26%20HEADBOARDS', '132925454', 'Baxton Studio Samantha Queen Size Bed', 'https://www.ruelala.com/boutique/product/183605/132925454/', 'http://asset1.ruecdn.com/images/product/305044/3050443512_RLLDTH_1.jpg', '427.0', '299.0', '393.91', '275.83', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'BAXTON STUDIO', 'HOME', 'BEDDING%20%26%20BEDROOM', 'BEDS%20%26%20HEADBOARDS', '132925474', 'Baxton Studio Iseline Queen Size Platform Bed Frame', 'https://www.ruelala.com/boutique/product/183605/132925474/', 'http://asset1.ruecdn.com/images/product/305044/3050443548_RLLDTH_1.jpg', '372.0', '283.0', '343.17', '261.07', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'BAXTON STUDIO', 'HOME', 'BEDDING%20%26%20BEDROOM', 'NIGHTSTANDS', '132925500', 'Baxton Studio Armel 3-Drawer Nightstand', 'https://www.ruelala.com/boutique/product/183605/132925500/', 'http://asset1.ruecdn.com/images/product/305044/3050443562_RLLDTH_1.jpg', '231.0', '159.0', '213.09', '146.67', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'BAXTON STUDIO', 'HOME', 'BEDDING%20%26%20BEDROOM', 'BEDS%20%26%20HEADBOARDS', '132925523', 'Baxton Studio Dilara Full Size Platform Bed', 'https://www.ruelala.com/boutique/product/183605/132925523/', 'http://asset1.ruecdn.com/images/product/305047/3050478076_RLLDTH_1.jpg', '513.0', '344.0', '473.24', '317.34', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'DESIGN STUDIOS', 'HOME', 'BEDDING%20%26%20BEDROOM', 'BEDS%20%26%20HEADBOARDS', '132925604', 'Design Studios Amaya Queen Daybed', 'https://www.ruelala.com/boutique/product/183605/132925604/', 'http://asset1.ruecdn.com/images/product/305089/3050893024_RLLDTH_1.jpg', '913.0', '669.0', '842.25', '617.15', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'DESIGN STUDIOS', 'HOME', 'BEDDING%20%26%20BEDROOM', 'NIGHTSTANDS', '132925641', 'Design Studios Deirdre Nightstand', 'https://www.ruelala.com/boutique/product/183605/132925641/', 'http://asset2.ruecdn.com/images/product/305090/3050903894_RLLDTH_1.jpg', '207.0', '129.0', '190.95', '119.0', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'DESIGN STUDIOS', 'HOME', 'BEDDING%20%26%20BEDROOM', 'BEDS%20%26%20HEADBOARDS', '132925671', 'Design Studios Odette Queen Bed', 'https://www.ruelala.com/boutique/product/183605/132925671/', 'http://asset2.ruecdn.com/images/product/305090/3050903956_RLLDTH_1.jpg', '504.0', '194.0', '464.94', '178.96', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'DESIGN STUDIOS', 'HOME', 'BEDDING%20%26%20BEDROOM', 'BEDS%20%26%20HEADBOARDS', '132925691', 'Design Studios Eliza Full Daybed', 'https://www.ruelala.com/boutique/product/183605/132925691/', 'http://asset1.ruecdn.com/images/product/305090/3050904011_RLLDTH_1.jpg', '727.0', '499.0', '670.66', '460.33', '1'),
	('Rue La La', '2023-11-17', 'USA', 'USD', 'DESIGN STUDIOS', 'HOME', 'BEDDING%20%26%20BEDROOM', 'BEDS%20%26%20HEADBOARDS', '132925736', 'Design Studios Alinia King Platform Bed', 'https://www.ruelala.com/boutique/product/183605/132925736/', 'http://asset1.ruecdn.com/images/product/305090/3050904117_RLLDTH_1.jpg', '1440.0', '569.0', '1328.41', '524.9', '1');
