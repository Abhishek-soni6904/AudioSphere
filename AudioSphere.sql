-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2025 at 01:03 PM
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
-- Database: `ankit`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `BrandName` varchar(50) DEFAULT NULL,
  `ProductName` varchar(100) DEFAULT NULL,
  `ImagePath` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `isAvailable` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `Category`, `BrandName`, `ProductName`, `ImagePath`, `Description`, `Price`, `isAvailable`) VALUES
(6, 'earphones', 'boat', 'boatbasshead102', 'assets/earphones/boat_boatbasshead102.avif', 'The boAt Bassheads 102 offers an immersive audio experience with its 10mm dynamic drivers, delivering deep and powerful bass. Its ergonomic design ensures a comfortable fit, making it ideal for extended listening sessions. Equipped with an in-line microphone and multi-function button, users can easily manage calls and music playback. The 3.5mm jack ensures compatibility with a wide range of devices. Available in multiple colors, the Bassheads 102 combines style with functionality.', 499.00, 1),
(7, 'earphones', 'boat', 'boatbassheads-110', 'assets/earphones/boat_boatbassheads-110.avif', 'The boAt Bassheads 110 is a sleek and stylish wired earphone that offers rich bass and clear treble. Its 10mm dynamic drivers deliver immersive audio, making it perfect for both music lovers and gamers. The earphones feature a durable, tangle-free cable and come with soft silicone ear tips for added comfort. The in-line microphone and controls allow for easy management of calls and music playback. Compatible with most devices, the Bassheads 110 is designed to deliver an excellent audio experience at an affordable price.', 799.00, 1),
(8, 'earphones', 'boat', 'boatbassheads100', 'assets/earphones/boat_boatbassheads100.avif', 'The boAt Bassheads 100 is designed to provide an enhanced listening experience with its 10mm drivers that produce deep bass and clear sound. The ergonomic design ensures a comfortable fit, making it perfect for long listening sessions. It also comes with a built-in microphone and remote for easy music and call control. Whether you are working out or commuting, the Bassheads 100 is a reliable companion for your music needs.', 499.00, 1),
(9, 'earphones', 'boat', 'boatbassheads100c', 'assets/earphones/boat_boatbassheads100c.avif', 'The boAt Bassheads 100C is a wired earphone that features powerful 10mm drivers, offering a rich bass and clear sound. Its sleek design ensures a comfortable fit, while the in-line microphone and remote provide full control over music and calls. The Bassheads 100C is designed for users who prefer simple, hassle-free earphones that deliver quality audio. Its durable build and tangle-free cord add to the convenience.', 599.00, 1),
(10, 'earphones', 'boat', 'boatBassheads_103', 'assets/earphones/boat_boatBassheads_103.avif', 'The boAt Bassheads 103 brings high-quality sound with 10mm drivers, delivering a balanced bass and clear sound. The earphones feature a snug fit, providing superior noise isolation for an immersive listening experience. Designed with a built-in microphone and volume controls, users can easily switch between music and calls. The Bassheads 103 is an excellent option for music lovers who want an affordable and stylish pair of earphones.', 899.00, 1),
(11, 'earphones', 'portronics', 'portronicscounchbeata', 'assets/earphones/portronics_portronicscounchbeata.webp', 'The Portronics CouchBeat is a versatile Bluetooth speaker that doubles as a comfortable cushion. Designed for relaxation, it allows users to enjoy music or podcasts while lounging. Its ergonomic design ensures comfort, and the built-in Bluetooth connectivity offers seamless pairing with devices. The CouchBeat is perfect for those who value both comfort and entertainment.', 1299.00, 1),
(12, 'earphones', 'portronics', 'portronicscounchbeatc', 'assets/earphones/portronics_portronicscounchbeatc.webp', 'The Portronics CouchBeat C is an upgraded version of the original CouchBeat, featuring enhanced sound quality and improved Bluetooth connectivity. It maintains the ergonomic design, ensuring comfort during extended use. Ideal for those who enjoy listening to music or podcasts while relaxing, the CouchBeat C combines functionality with comfort.', 1499.00, 1),
(13, 'earphones', 'portronics', 'portronicscounchthetaa', 'assets/earphones/portronics_portronicscounchthetaa.webp', 'The Portronics CouchTheta is a premium Bluetooth speaker designed for superior sound quality. It features advanced audio technology, delivering clear and crisp sound. The ergonomic design ensures comfort, making it perfect for extended listening sessions. With its sleek design and powerful performance, the CouchTheta is ideal for music enthusiasts.', 1799.00, 1),
(14, 'earphones', 'portronics', 'portronicscounchtunea', 'assets/earphones/portronics_portronicscounchtunea.webp', 'The Portronics CouchTune A is a compact Bluetooth speaker that offers impressive sound quality in a portable design. Its ergonomic features make it easy to carry and use anywhere. With enhanced Bluetooth connectivity, it ensures seamless pairing with devices. Perfect for those who want great sound on the go, the CouchTune A combines portability and power.', 1499.00, 1),
(15, 'earphones', 'portronics', 'portronicscounchtunec', 'assets/earphones/portronics_portronicscounchtunec.webp', 'The Portronics CouchTune C is a portable Bluetooth speaker designed for those who enjoy music on the go. With its compact size and powerful audio, it delivers exceptional sound quality in a convenient package. The ergonomic design ensures comfort and ease of use, while Bluetooth connectivity provides seamless device pairing. Whether you’re at home or outdoors, the CouchTune C is a reliable companion for music lovers.', 1699.00, 1),
(16, 'earphones', 'zebronics', 'zebronicsZeb-Bloom', 'assets/earphones/zebronics_zebronicsZeb-Bloom.webp', 'The Zebronics Zeb-Bloom is a stylish and powerful earphone designed to deliver a crisp and clear sound. With 10mm dynamic drivers, it ensures excellent bass and treble. The ergonomic design and soft ear tips provide comfort during long listening sessions. Equipped with an in-line microphone, the Zeb-Bloom allows for hands-free calls. Whether you are at work or traveling, these earphones offer superior sound quality.', 499.00, 1),
(17, 'earphones', 'zebronics', 'zebronicsZeb-Bro-Pro', 'assets/earphones/zebronics_zebronicsZeb-Bro-Pro.webp', 'The Zebronics Zeb-Bro-Pro is designed to offer high-quality sound with a deep bass and clear treble. Featuring soft, comfortable ear tips and a secure fit, these earphones are ideal for everyday use. The built-in microphone allows for easy call handling, while the in-line controls enable music playback management. Perfect for casual listening or calls, the Zeb-Bro-Pro combines style and functionality.', 649.00, 1),
(18, 'earphones', 'zebronics', 'zebronicsZEB-BUDS-30', 'assets/earphones/zebronics_zebronicsZEB-BUDS-30.webp', 'The Zebronics ZEB-BUDS-30 is an in-ear wireless earphone offering a sleek and modern design. With a built-in microphone and easy-to-use touch controls, these earphones are perfect for hands-free calls and managing your music. Its powerful battery life and superior sound quality make it ideal for everyday use, whether for work or leisure. These earphones deliver deep bass and clear treble with a secure, comfortable fit.', 799.00, 1),
(19, 'earphones', 'zebronics', 'zebronicsZEB-BUDS-C2', 'assets/earphones/zebronics_zebronicsZEB-BUDS-C2.webp', 'The Zebronics ZEB-BUDS C2 offers an excellent sound experience with its powerful audio drivers that deliver rich bass and clear treble. These wireless earbuds come with touch controls, allowing easy management of music and calls. Its ergonomic design ensures a secure and comfortable fit, while the long battery life ensures uninterrupted music listening. The ZEB-BUDS C2 is an ideal choice for those seeking convenience and quality audio.', 999.00, 1),
(20, 'earphones', 'zebronics', 'zebronicsZeb-Buds50C', 'assets/earphones/zebronics_zebronicsZeb-Buds50C.webp', 'The Zebronics ZEB-Buds 50C features a lightweight and ergonomic design for a comfortable and secure fit. These true wireless earbuds deliver high-quality audio with clear treble and deep bass. Equipped with an in-line microphone and controls, they are perfect for both music and hands-free calls. The ZEB-Buds 50C also provides long-lasting battery life and quick charging, making them an ideal choice for users on the go.', 1199.00, 1),
(21, 'headphones', 'boat', 'boatbasshead910', 'assets/headphones/boat_boatbasshead910.avif', 'The boAt Bassheads 910 is designed to offer a premium audio experience with its powerful 40mm drivers. It delivers clear sound with enhanced bass for an immersive listening experience. The headphones feature a comfortable over-ear design, ensuring comfort during extended listening sessions. The foldable design makes them easy to carry, while the built-in microphone and controls allow for hands-free calls and easy music management. The Bassheads 910 is perfect for music lovers who seek great sound quality.', 1499.00, 1),
(22, 'headphones', 'boat', 'boatBassheads_900_Pro', 'assets/headphones/boat_boatBassheads_900_Pro..avif', 'The boAt Bassheads 900 Pro offers an elevated audio experience with 40mm drivers that produce rich bass and crisp treble. The ergonomic design ensures long-lasting comfort, making them perfect for gaming, music, and calls. The headphones feature an adjustable headband and soft ear cushions for a snug fit. With a built-in microphone and in-line controls, users can easily manage calls and music. Whether for work or entertainment, the Bassheads 900 Pro provides high-quality sound at an affordable price.', 1899.00, 1),
(23, 'headphones', 'boat', 'boatrockerz425', 'assets/headphones/boat_boatrockerz425.webp', 'The boAt Rockerz 425 offers a balanced and rich audio experience with its 40mm drivers that produce deep bass and clear sound. The over-ear design provides comfort during long listening sessions, while the foldable structure ensures easy portability. With Bluetooth connectivity and a long battery life, the Rockerz 425 is ideal for users who enjoy wireless freedom. It also features a built-in microphone for hands-free calling, making it a great choice for entertainment and communication.', 1999.00, 1),
(24, 'headphones', 'boat', 'boatRockerz450', 'assets/headphones/boat_boatRockerz450.webp', 'The boAt Rockerz 450 is a wireless Bluetooth headphone offering premium sound quality with rich bass and clear treble. With 40mm drivers, it delivers an immersive listening experience. The headphones feature comfortable ear cups and a foldable design, making them easy to carry and store. With Bluetooth connectivity and a long-lasting battery, the Rockerz 450 offers seamless music playback. The built-in microphone allows for hands-free calls, making it perfect for on-the-go use.', 2299.00, 1),
(25, 'headphones', 'boat', 'boatrockerz550', 'assets/headphones/boat_boatrockerz550.avif', 'The boAt Rockerz 550 offers powerful sound with its 50mm drivers, providing deep bass and clear sound for an immersive listening experience. The headphones feature an over-ear design for comfort, and the ear cups are padded with soft memory foam. With Bluetooth connectivity, the Rockerz 550 offers wireless freedom. The long battery life ensures uninterrupted music for hours. Ideal for music lovers and casual listeners, these headphones also feature a built-in microphone for hands-free calls.', 2999.00, 1),
(26, 'headphones', 'noise', 'noise3', 'assets/headphones/noise_noise3.webp', 'The Noise 3 is a pair of wireless Bluetooth headphones offering exceptional sound quality. Featuring powerful drivers, it delivers deep bass and clear highs. The headphones come with soft ear cups and an adjustable headband for a comfortable fit. The Noise 3 has a long battery life, allowing users to enjoy their music or calls for extended periods. With Bluetooth technology, it provides wireless freedom, while the built-in microphone enables hands-free calls.', 1599.00, 1),
(27, 'headphones', 'noise', 'noiseairwavemax4', 'assets/headphones/noise_noiseairwavemax4.webp', 'The Noise Airwave Max 4 is a wireless Bluetooth headphone that offers superior sound quality with a focus on bass and clarity. The soft ear cups provide comfort for long listening sessions, while the adjustable headband ensures a perfect fit. With a powerful battery, the Airwave Max 4 offers hours of music playback. Bluetooth connectivity makes it easy to pair with your devices, and the built-in microphone allows for hands-free calling and voice commands.', 1799.00, 1),
(28, 'headphones', 'noise', 'noiseArtboard_8_Am5', 'assets/headphones/noise_noiseArtboard_8_Am5.webp', 'The Noise Artboard 8 AM5 headphones offer an immersive audio experience with deep bass and clear highs. Featuring advanced audio drivers, these headphones provide superior sound quality for music lovers. The ergonomic design ensures comfort for extended listening, while the foldable headband allows for easy storage and portability. With Bluetooth connectivity and a long battery life, the Artboard 8 AM5 is perfect for both entertainment and calls.', 2099.00, 1),
(29, 'headphones', 'noise', 'noiseTWO', 'assets/headphones/noise_noiseTWO.webp', 'The Noise TWO is a wireless Bluetooth headphone designed for comfort and high-quality sound. With large drivers and a balanced sound profile, it delivers clear audio with rich bass. The ear cups are soft and comfortable, and the adjustable headband ensures a secure fit. With Bluetooth technology, the Noise TWO offers wireless connectivity, and its long battery life makes it perfect for all-day use. The built-in microphone provides hands-free calling and easy control over music.', 2199.00, 1),
(30, 'headphones', 'zebronics', 'zebronicsZeb-Bang-Pro', 'assets/headphones/zebronics_zebronicsZeb-Bang-Pro.webp', 'The Zebronics Zeb-Bang Pro is a stylish over-ear headphone with 40mm drivers that provide superior bass and clear sound. Designed for comfort, the soft ear cups and adjustable headband allow for a secure and comfortable fit. With Bluetooth connectivity and a long battery life, these headphones deliver uninterrupted music and calls. The built-in microphone allows for hands-free calls, making it a great choice for entertainment and communication on the go.', 2499.00, 1),
(31, 'headphones', 'zebronics', 'zebronicszeb-thunder', 'assets/headphones/zebronics_zebronicszeb-thunder.webp', 'The Zebronics Zeb-Thunder is a wireless Bluetooth headphone that delivers powerful sound with 40mm drivers. The headphones feature a comfortable over-ear design for a snug fit, while the adjustable headband ensures a perfect fit for different users. The Bluetooth connectivity provides wireless convenience, and the long battery life ensures hours of uninterrupted music. Ideal for music lovers and people on the go, the Zeb-Thunder is a great choice for entertainment and communication.', 2199.00, 1),
(32, 'headphones', 'zebronics', 'zebronicszeb2100HMV', 'assets/headphones/zebronics_zebronicszeb2100HMV.webp', 'The Zebronics Zeb-2100 HMV headphones offer deep bass and clear sound with their advanced drivers. The over-ear design provides comfort and noise isolation for an immersive experience. The Bluetooth connectivity allows for wireless audio streaming, and the long battery life ensures that users can enjoy hours of music and calls. The built-in microphone allows for easy communication, making it a great option for both music and calls on the go.', 1899.00, 1),
(33, 'headphones', 'zebronics', 'zebronicszebblast', 'assets/headphones/zebronics_zebronicszebblast.webp', 'The Zebronics ZebBlast is a Bluetooth headphone that delivers powerful sound with rich bass and clear treble. Designed for comfort, it features soft ear cups and an adjustable headband to ensure a secure fit. The Bluetooth connectivity offers wireless freedom, and the long battery life makes it ideal for long listening sessions. The built-in microphone enables hands-free calls and voice commands. Perfect for music lovers who prefer wireless headphones.', 1799.00, 1),
(34, 'headphones', 'zebronics', 'zebronicszebtube', 'assets/headphones/zebronics_zebronicszebtube.webp', 'The Zebronics ZebTube is a wireless Bluetooth headphone that combines superior sound quality with a comfortable fit. Featuring large drivers, it delivers rich bass and clear audio. The headphones come with an adjustable headband and soft ear cushions, providing long-lasting comfort. With Bluetooth connectivity, users can enjoy wireless music and hands-free calls. The long battery life ensures uninterrupted audio playback, making it a great choice for everyday use.', 1599.00, 1),
(35, 'neckband', 'boat', 'boatrockerz109', 'assets/neckband/boat_boatrockerz109.avif', 'The boAt Rockerz 109 is a wireless Bluetooth neckband that offers an exceptional audio experience with clear sound and deep bass. The ergonomic design ensures comfort for long listening sessions, while the soft ear tips provide a secure fit. With Bluetooth connectivity, users can enjoy wireless music and take calls hands-free. The Rockerz 109 features a long battery life, making it perfect for all-day use.', 1299.00, 1),
(36, 'neckband', 'boat', 'boatrockerz110', 'assets/neckband/boat_boatrockerz110.avif', 'The boAt Rockerz 110 is a stylish and comfortable Bluetooth neckband that delivers premium sound quality. With 10mm dynamic drivers, it ensures rich bass and clear treble for an immersive listening experience. The neckband design is lightweight and ergonomic, making it perfect for extended use. The long-lasting battery provides hours of entertainment, while the built-in microphone allows for hands-free calls and voice assistance.', 1499.00, 1),
(37, 'neckband', 'boat', 'boatrockerz150pro', 'assets/neckband/boat_boatrockerz150pro.avif', 'The boAt Rockerz 150 Pro offers an outstanding wireless audio experience with its 15mm dynamic drivers. The bass is deep and punchy, while the treble is clear. The ergonomic neckband is lightweight and comfortable, making it ideal for long listening sessions. Bluetooth connectivity ensures a seamless wireless connection, and the long battery life makes it great for on-the-go listening. It also features a built-in microphone for hands-free calling.', 1699.00, 1),
(38, 'neckband', 'boat', 'boatrockerz235pro', 'assets/neckband/boat_boatrockerz235pro.avif', 'The boAt Rockerz 235 Pro is a high-performance Bluetooth neckband offering an immersive sound experience. Equipped with 10mm dynamic drivers, it delivers deep bass and rich audio. The lightweight and flexible neckband ensures comfort, while the magnetic earbuds keep them secure when not in use. With Bluetooth connectivity and a long-lasting battery, the Rockerz 235 Pro is perfect for those on the move.', 1999.00, 1),
(39, 'neckband', 'boat', 'boatrockerz255pro+', 'assets/neckband/boat_boatrockerz255pro+.avif', 'The boAt Rockerz 255 Pro+ is designed for high-quality sound with powerful 10mm dynamic drivers, providing deep bass and clear treble. The flexible and lightweight neckband ensures all-day comfort, while the Bluetooth 5.0 technology offers seamless wireless connection. With a long battery life, it provides hours of music playback. Additionally, the built-in microphone supports hands-free calling and voice commands.', 2199.00, 1),
(40, 'neckband', 'portronics', 'portronicsharmonicsz11', 'assets/neckband/portronics_portronicsharmonicsz11.webp', 'The Portronics Harmonics Z11 is a Bluetooth neckband that provides superior sound quality with deep bass and crisp highs. The ergonomic design ensures comfort, making it perfect for long listening sessions. With Bluetooth connectivity, users can enjoy wireless music and take calls hands-free. The long battery life ensures uninterrupted music for hours, making it a great choice for music lovers and on-the-go users.', 1599.00, 1),
(41, 'neckband', 'portronics', 'portronicsharmonicsz3', 'assets/neckband/portronics_portronicsharmonicsz3.webp', 'The Portronics Harmonics Z3 is a sleek and stylish Bluetooth neckband offering impressive sound quality. With 10mm drivers, it provides rich bass and clear audio for an immersive experience. The flexible neckband design ensures comfort, while the built-in microphone supports hands-free calls. The Harmonics Z3 is ideal for users who want both style and performance, with a long-lasting battery for extended use.', 1299.00, 1),
(42, 'neckband', 'portronics', 'portronicsharmonicsz5', 'assets/neckband/portronics_portronicsharmonicsz5.webp', 'The Portronics Harmonics Z5 is a premium Bluetooth neckband offering rich bass and clear sound for an immersive listening experience. The ergonomic design ensures comfort during extended use, while the neckband is flexible and lightweight. With Bluetooth connectivity and long battery life, it’s perfect for enjoying music, podcasts, and calls. The built-in microphone allows for hands-free calls, making it convenient for users on the go.', 1699.00, 1),
(43, 'neckband', 'portronics', 'portronicsharmonicsz8', 'assets/neckband/portronics_portronicsharmonicsz8.webp', 'The Portronics Harmonics Z8 is a stylish and comfortable Bluetooth neckband that delivers high-quality sound with powerful bass and clear treble. The flexible neckband ensures comfort during extended listening sessions. The Bluetooth connectivity allows for seamless pairing with devices, while the long-lasting battery ensures uninterrupted music. The built-in microphone provides hands-free calling, making it ideal for entertainment and communication.', 1799.00, 1),
(44, 'neckband', 'portronics', 'portronicsharmonicsz9', 'assets/neckband/portronics_portronicsharmonicsz9.webp', 'The Portronics Harmonics Z9 is a versatile Bluetooth neckband designed for superior sound quality with enhanced bass and treble. The ergonomic neckband provides comfort during extended use, while the Bluetooth technology ensures seamless wireless connectivity. The long battery life allows users to enjoy their music for hours, and the built-in microphone allows for hands-free calls, making it ideal for work and leisure.', 1999.00, 1),
(45, 'neckband', 'zebronics', 'zebronicszebescape10', 'assets/neckband/zebronics_zebronicszebescape10.webp', 'The Zebronics Zeb-Escape 10 is a Bluetooth neckband that offers deep bass and clear sound, perfect for music lovers. The flexible design ensures comfort, while the Bluetooth connectivity offers wireless freedom. With a long-lasting battery, users can enjoy hours of uninterrupted music. The built-in microphone supports hands-free calls, making it a great choice for both entertainment and communication on the go.', 1599.00, 1),
(46, 'neckband', 'zebronics', 'zebronicszebescape20', 'assets/neckband/zebronics_zebronicszebescape20.webp', 'The Zebronics Zeb-Escape 20 is a premium Bluetooth neckband that delivers high-quality audio with deep bass and clear treble. The ergonomic neckband is lightweight and comfortable, perfect for extended use. Bluetooth connectivity ensures easy pairing with devices, and the long battery life offers hours of uninterrupted listening. The built-in microphone enables hands-free calling and voice commands.', 1799.00, 1),
(47, 'neckband', 'zebronics', 'zebronicszebevolve', 'assets/neckband/zebronics_zebronicszebevolve.webp', 'The Zebronics Zeb-Evolve is a Bluetooth neckband designed for superior sound quality with punchy bass and crisp audio. The ergonomic neckband design ensures comfort, and the Bluetooth 5.0 connectivity allows seamless pairing with devices. With a long battery life, users can enjoy continuous music for hours. The built-in microphone supports hands-free calls and voice commands, making it a great companion for entertainment and communication on the go.', 1999.00, 1),
(48, 'neckband', 'zebronics', 'zebronicszebYOGA111', 'assets/neckband/zebronics_zebronicszebYOGA111.webp', 'The Zebronics Zeb-Yoga 111 is a flexible Bluetooth neckband that offers a premium sound experience with rich bass and clear treble. The ergonomic design ensures comfort, and the Bluetooth connectivity offers seamless pairing with devices. With a long battery life, the Zeb-Yoga 111 is perfect for long listening sessions. The built-in microphone allows for hands-free calls, making it a great choice for users on the move.', 2199.00, 1),
(49, 'neckband', 'zebronics', 'zebronicszebyogaN3', 'assets/neckband/zebronics_zebronicszebyogaN3.webp', 'The Zebronics Zeb-Yoga N3 is a Bluetooth neckband designed for high-quality sound with a balanced bass and treble. The ergonomic design ensures comfort during extended use. The flexible neckband ensures secure fit and portability. The Bluetooth connectivity allows for wireless music streaming and the built-in microphone supports hands-free calling, making it a perfect choice for users who love music and multitasking.', 2499.00, 1),
(50, 'TWS', 'boat', 'boatairdopes131', 'assets/TWS/boat_boatairdopes131.avif', 'The boAt Airdopes 131 offers an excellent audio experience with a balanced sound profile. Featuring advanced Bluetooth 5.0 technology, the Airdopes provide seamless connectivity and long battery life. With its ergonomic design, they fit comfortably and securely, making it ideal for extended use. The in-ear design ensures passive noise isolation, making it perfect for music lovers and hands-free calling.', 1499.00, 1),
(51, 'TWS', 'boat', 'boatairdopes141', 'assets/TWS/boat_boatairdopes141.avif', 'The boAt Airdopes 141 delivers powerful sound with a rich bass and clear treble. Featuring a lightweight, ergonomic design, these TWS earphones offer a comfortable fit for long hours of use. The Bluetooth 5.0 technology ensures seamless connectivity with all devices, and the battery life supports extended playback, making them a great choice for music and calls on the go.', 1799.00, 1),
(52, 'TWS', 'boat', 'boatairdopes161', 'assets/TWS/boat_boatairdopes161.avif', 'The boAt Airdopes 161 offers superior audio quality with clear sound and punchy bass. Equipped with Bluetooth 5.0 for seamless connectivity, the Airdopes 161 offer hands-free calling and touch controls for ease of use. The ergonomic design ensures a secure fit for all-day comfort, and the long-lasting battery keeps the music flowing without interruption.', 1999.00, 1),
(53, 'TWS', 'boat', 'boatairdopes181', 'assets/TWS/boat_boatairdopes181.avif', 'The boAt Airdopes 181 is a premium TWS earbud designed for clear audio with deep bass and crisp treble. With Bluetooth 5.0, it provides stable connectivity and fast pairing with devices. The touch controls and built-in microphone make it convenient for calls and music management. The lightweight, ergonomic design ensures comfort, while the long battery life ensures uninterrupted use.', 2299.00, 1),
(54, 'TWS', 'boat', 'boatairdopes800', 'assets/TWS/boat_boatairdopes800.avif', 'The boAt Airdopes 800 offers high-quality audio with powerful bass and a balanced sound profile. Bluetooth 5.0 provides seamless connectivity, and the ergonomic in-ear design ensures comfort and a secure fit. The long battery life allows for hours of music playback, and the built-in microphone allows for hands-free calls. These earbuds are perfect for users who demand both style and performance.', 2499.00, 1),
(55, 'TWS', 'realme', 'realmebudsair3', 'assets/TWS/realme_realmebudsair3.webp', 'The Realme Buds Air 3 delivers a premium sound experience with active noise cancellation for a better listening experience. With powerful bass and clear vocals, these TWS earbuds are designed for immersive audio. Bluetooth 5.2 ensures quick pairing and stable connectivity, while the long battery life ensures that you can enjoy music and calls for hours without interruption.', 3499.00, 1),
(56, 'TWS', 'realme', 'realmebudsn1', 'assets/TWS/realme_realmebudsn1.webp', 'The Realme Buds N1 offers superior sound quality with punchy bass and crystal-clear treble. Featuring Bluetooth 5.0 technology, it provides seamless connectivity for wireless listening. The ergonomic design ensures a secure fit for extended listening sessions. The long-lasting battery ensures uninterrupted playback, while the built-in microphone supports hands-free calling and voice assistants.', 1999.00, 1),
(57, 'TWS', 'realme', 'realmebudst01', 'assets/TWS/realme_realmebudst01.webp', 'The Realme Buds T01 is a budget-friendly TWS option that delivers exceptional sound quality. With a simple and sleek design, it offers a comfortable fit and Bluetooth 5.0 for stable connectivity. The long-lasting battery ensures hours of listening time, while the built-in microphone makes hands-free calling easy. The Realme Buds T01 is perfect for users who want quality audio at an affordable price.', 1299.00, 1),
(58, 'TWS', 'realme', 'realmebudst110', 'assets/TWS/realme_realmebudst110.webp', 'The Realme Buds T110 offers a great combination of sound and value. Designed with Bluetooth 5.0 for stable connectivity, it ensures high-quality audio with clear vocals and deep bass. The ergonomic design provides comfort for long periods of use, and the battery life ensures that you can enjoy your music or calls for hours.', 1599.00, 1),
(59, 'TWS', 'realme', 'realmebudst300', 'assets/TWS/realme_realmebudst300.webp', 'The Realme Buds T300 provides superior sound with a deep bass and crystal-clear vocals. Equipped with Bluetooth 5.2, it delivers fast and stable connectivity. The ergonomic design ensures a comfortable fit, and the long battery life makes it perfect for all-day use. These TWS earbuds are designed for users who want excellent sound quality in a stylish and affordable package.', 2499.00, 1),
(60, 'TWS', 'zebronics', 'zebronicszebsoundbomb1', 'assets/TWS/zebronics_zebronicszebsoundbomb1.webp', 'The Zebronics Zeb-SoundBomb 1 is a stylish and functional TWS earbud offering immersive audio quality. With Bluetooth 5.0 for stable connectivity, it delivers rich bass and clear treble. The ergonomic design ensures comfort, while the long battery life provides hours of uninterrupted listening. The built-in microphone supports hands-free calls, making it an excellent choice for music and calls.', 1799.00, 1),
(61, 'TWS', 'zebronics', 'zebronicszebsoundbomb4', 'assets/TWS/zebronics_zebronicszebsoundbomb4.webp', 'The Zebronics Zeb-SoundBomb 4 is a pair of TWS earbuds designed for great sound with deep bass and crystal-clear vocals. Bluetooth 5.0 ensures stable connectivity, and the earbuds come with touch controls for easy management of calls and music. The ergonomic design ensures a comfortable fit, and the long-lasting battery allows for extended use without interruption.', 1999.00, 1),
(62, 'TWS', 'zebronics', 'zebronicszebsoundbomb6', 'assets/TWS/zebronics_zebronicszebsoundbomb6.webp', 'The Zebronics Zeb-SoundBomb 6 offers premium audio performance with deep bass and clear high notes. Bluetooth 5.0 provides fast and reliable pairing, and the long-lasting battery ensures uninterrupted music for hours. The ergonomic design ensures comfort, while the built-in microphone allows for hands-free calling, making it a great choice for on-the-go users.', 2199.00, 1),
(63, 'TWS', 'zebronics', 'zebronicszebsoundbomb7', 'assets/TWS/zebronics_zebronicszebsoundbomb7.webp', 'The Zebronics Zeb-SoundBomb 7 offers immersive audio with deep bass and crisp treble. Bluetooth 5.0 ensures a reliable connection, while the ergonomic design ensures comfort for long hours of use. The long battery life ensures that you can enjoy your music and calls for hours, and the built-in microphone supports hands-free communication.', 2499.00, 1),
(64, 'TWS', 'zebronics', 'zebronicszebsoundbomb9', 'assets/TWS/zebronics_zebronicszebsoundbomb9.webp', 'The Zebronics Zeb-SoundBomb 9 provides an excellent listening experience with powerful bass and clear treble. Bluetooth 5.0 ensures seamless connectivity, and the ergonomic design ensures comfort during extended use. With long battery life and a built-in microphone for hands-free calling, the Zeb-SoundBomb 9 is ideal for users who want performance and comfort in a stylish package.', 2999.00, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`),
  ADD KEY `Email` (`Email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
