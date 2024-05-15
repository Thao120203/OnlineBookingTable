-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2024 at 05:30 PM
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
-- Database: `pento9`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `role_id` int(11) NOT NULL,
  `security_code` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `email`, `password`, `status`, `role_id`, `security_code`) VALUES
(1, 'sa@gmail.com', '$2a$10$K/4Ugm1XzCmu1TcX1TnN0ubcLwuji3cbbUfPaBzzxg4STC.ekpC8m', '1', 1, NULL),
(2, 'admin1@gmail.com', '$2a$10$2VyOq98pKyQ9eVbl1jGP0eDxB3gtqiHuJizY1Gj/HXQgCaHHGN34C', '1', 2, NULL),
(3, 'admin2@gmail.com', '$2a$10$HJMTr9cLPP6xkLeA89.atu7phAA9FNfUxt9s6z.93IzDq0aYhqdL.', '1', 2, NULL),
(4, 'admin3@gmail.com', '$2a$10$m31CtEsm//eU5.Jvm8hdCuJbpfps/JLgTUdvK0XMqjOSgXF/d7NrS', '1', 2, NULL),
(6, 'khuunhattin@gmail.com', '$2a$10$if1IIQIMR3GkzToYCeydZuoMl.RQB1Uvi3fasv7i1LQhM/dZoi6o.', '1', 2, NULL),
(8, 'admin4@gmail.com', '$2a$10$FWkRocLkKWUwl/r4unld/eN5ma9rSIqqczgGXfJKbkBDm3B3GlPaS', '1', 2, NULL),
(9, 'admin5@gmail.com', '$2a$10$db6L9F8h2lx2V8ywn0wOY.CxuM.O0M2hYua3.cYq7BASBsmLi6BCi', '1', 2, NULL),
(10, 'member4@gmail.com', '$2a$10$cpuWrxgw3Uxw5yGZ1phMNu.uvSIMCOH313RjY34yAJiUQCtkrlGKW', '1', 3, NULL),
(16, 'khuunhattin123@gmail.com', '$2a$10$o0BmBQGdTTASTOuf7JsXK..b2BfMhUmrD.JK/LebketibYQGrrAru', '1', 3, NULL),
(17, 'vuong@gmail.com', '$2a$10$c/IVtp/h5FQP1JO1BGMJOODpf5jfrtKf6E5ajb3aFSgTCcM5NjXPC', '1', 2, NULL),
(18, 'viet@gmail.com', '$2a$10$SklCXwuqZt/JNDXxLtmfzOxwCyDYyf4fDEd5dSM5VCI.WahQFd5sO', '1', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branchs`
--

CREATE TABLE `branchs` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone_number` varchar(250) NOT NULL,
  `opening_hours` varchar(250) NOT NULL,
  `clossing_hours` varchar(250) NOT NULL,
  `status` varchar(10) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branchs`
--

INSERT INTO `branchs` (`id`, `name`, `address`, `phone_number`, `opening_hours`, `clossing_hours`, `status`, `account_id`, `image`) VALUES
(2, 'Pento Cơ sở chính', '218 Nguyễn Siu, tp Hồ Chí Minh', '1900-1373', '09:00', '22:00', '0', 3, 'yakimono.png'),
(3, 'Pento Cộng Hòa', '47 Cộng Hòa, tp Hồ Chí Minh', '0738125767', '09:00', '22:00', '0', 4, 'kingbbq-ltt.png'),
(5, 'Gyu Shige Ngưu Phồn - Nguyễn Thị Minh Khai', 'Số 183A Nguyễn Thị Minh Khai, P. Phạm Ngũ Lão, Q.1', '028 3925 3368', '10:30', '21:30', '0', 6, 'gyu-ntmk.png'),
(6, 'Gyu Shige Ngưu Phồn - Trần Hưng Đạo', '6A Trần Hưng Đạo, P. Phạm Ngũ Lão, Quận 1', '028 3821 3027', '11:00', '22:00', '1', 6, 'gyu-thd.png'),
(7, 'Gyu Shige Ngưu Phồn - Hồ Tùng Mậu', 'Số 119 Hồ Tùng Mậu,P. Bến Nghé, Q. 1', '028 3822 5577', '10:30', '22:00', '1', 6, 'gyu-htm.png'),
(8, 'Gyu Shige Ngưu Phồn - Đông Du', 'Số 48-50 Đông Du, phường Bến Nghé, Quận 1', '028 3915 1627', '10:30', '21:30', '1', 6, 'gyu-dd.png'),
(9, 'Gyu Shige Ngưu Phồn - Phan Văn Trị', 'Số 463 Phan Văn Trị, P. 5, Q. Gò Vấp', '028 3895 5588', '10:30', '21:30', '1', 6, 'gyu-phanvantri.png'),
(10, 'Hoàng Yến Buffet - Pearl Plaza', 'Tầng 4, Pearl Plaza, 561A Điện Biên Phủ, P. 25, Q. Bình Thạnh', '028 2241 7700', '18:00', '22:00', '1', 3, 'hoangyen-pp.png'),
(11, 'Hoàng Yến Buffet - Aeon Mall Tân Phú', 'Tầng 3, Aeon Mall, 30 Bờ Bao Tân Thắng, P. Sơn Kỳ, Q.Tân Phú', '028 2241 4422', '18:00', '22:00', '1', 3, 'hoangyen-aeontanphu.png'),
(12, 'Hoàng Yến Buffet Premier - Saigon Centre', 'Lầu 5, 11 Sư Vạn Hạnh, Q.10', '028 6276 0749', '18:00', '22:00', '1', 3, 'hoangyen-sg.png'),
(13, 'Hoàng Yến Buffet – The Garden Mall', 'Zone C, Tầng 3, The Garden Mall, Số 190 Hồng Bàng, P. 12 , Q. 5', '028 2248 1357', '18:00', '22:00', '1', 3, 'hoangyen-garden.png'),
(14, 'Hoàng Yến Buffet Premier - Bitexco', 'Tòa nhà Bitexco, Icon 68, Lầu 3, Số 2 Hải Triều, P. Bến Nghé, Q. 1', '028 6681 1005', '18:00', '22:00', '1', 3, 'hoangyen-bitexco.png'),
(15, 'Cơm Xưa – Trần Cao Vân', '20 Trần Cao Vân, P. Đa Kao, Q. 1', '0769 112 233', '10:30', '20:00', '1', 3, 'comxua.png'),
(16, 'Miya Sushi & BBQ - Nguyễn Trãi', '150/26 Nguyễn Trãi, P. Bến Thành, Q. 1', '0909 347 544', '10:30', '21:30', '1', 6, 'miya-nt.png'),
(17, 'Hoàng Yến Cuisine – Ngô Đức Kế', '07-09 Ngô Đức Kế, P. Bến Nghé, Q. 1', '028 6684 2343', '10:00', '22:00', '1', 3, 'hoangyen-ndk.png'),
(18, 'Nhà hàng Chen – Nguyễn Trãi', '152-154 Nguyễn Trãi, P. Bến Thành, Q. 1', '0397 103 608', '10:00', '21:00', '1', 6, 'chen.png'),
(19, 'Moon’s Kitchen - Hoa Mai', '16 Hoa Mai, P. 02, Q. Phú Nhuận', '028 3517 0808', '10:30', '22:00', '1', 2, 'moon-hoamai.png'),
(20, 'Palsaik Korean BBQ - Phan Xích Long', '141 Phan Xích Long, P. 2, Q. Phú Nhuận', '028 3535 2774', '11:00', '23:00', '1', 2, 'palsaik-pxl.png'),
(21, 'Taka BBQ - Nguyễn Tri Phương', 'Số 327 Nguyễn Tri Phương, P. 5, Q. 10', '028 6680 1769', '10:00', '22:00', '1', 2, 'taka-ntp.png'),
(22, 'Buzza BBQ - Korean Grill - Nowzone quận 1', 'Tầng 4, TTTM Nowzone, 235 Đường Nguyễn Văn Cừ, P. Nguyễn Cư Trinh, Q. 1', '0937 328 045', '11:00', '22:00', '1', 2, 'buzza-q1.png'),
(23, 'King BBQ Buffet – Vincom Thủ Đức', 'Số 327 Nguyễn Tri Phương, P. 5, Q. 10', '028 3722 8844', '9:00', '22:00', '1', 2, 'kingbbq-thuduc.png'),
(24, 'Blue - Nướng & Lẩu Hàn Quốc - Hoàng Văn Thụ', 'Số 202 Hoàng Văn Thụ, P. 9, Q. Phú Nhuận', '0901 399 069', '6:00', '22:00', '1', 2, 'blue.png'),
(25, 'Palsaik Korean BBQ - Đông Du', 'Số 68 – 70 Đông Du, P. Bến Nghé, Q. 1', '028 3535 2771', '10:30', '23:00', '1', 2, 'palsaik-dd.png'),
(26, 'Buzza BBQ - Nguyễn Thị Thập', '51-53 Nguyễn Thị Thập, Tầng 3 - 4, P. Tân Hưng, Q. 7', '0703 939 020', '11:00', '21:00', '1', 2, 'buzza-ntt.png'),
(27, 'King BBQ Buffet - Vạn Hạnh Mall', 'Số 6-16B, Tầng 6, TTTM Vạn Hạnh, Số 11 đường Sư Vạn Hạnh, P.12, Q. 10', '028 7302 1468', '10:00', '22:00', '1', 2, 'kingbbq-vanhanhmall.png'),
(28, 'King BBQ - Vincom Lê Thánh Tôn', 'Vincom Center, B3 - 10B, Số 70-72 Lê Thánh Tôn, P. Bến Nghé, Q. 1', '028 3993 9486', '10:00', '21:00', '1', 2, 'kingbbq-ltt.png'),
(29, 'Chiyoda Sushi - Saigon Court', 'Lầu 2, Số 149 Nguyễn Đình Chiểu, P. Võ Thị Sáu, Q. 3', '028 3822 5822', '6:00', '22:00', '1', 6, 'chiyoda.png'),
(30, 'Ichihana Sushi – Cao Thắng', 'Số 69A Đường Cao Thắng, P. 3, Q. 3', '0888 741 007', '11:00', '22:30', '1', 6, 'ichihana.png'),
(31, 'Ikigai Sushi - Cao Thắng', 'Số 4A đường Cao Thắng, P. 5, Q. 3', '0828 828 149', '11:00', '22:00', '1', 6, 'ikigai.png'),
(32, 'Mô Tô Sushi – Ngô Thời Nhiệm', '29 Ngô Thời Nhiệm, P. 6, Q.3', '028 3825 1676', '11:00', '22:00', '1', 6, 'moto.png'),
(33, 'MATSURI Yaki Restaurant - Pasteur', 'Số 178 đường Pasteur, P. Bến Nghé, Q. 1', '0938 761 969', '11:00', '22:30', '1', 6, 'matsuri.png'),
(34, 'Sushi World - Phùng Khắc Khoan', 'Số 37 Phùng Khắc Khoan, P. Đa Kao, Q. 1', '028 3822 6252', '11:00', '21:00', '1', 6, 'ssw-pkk.png'),
(35, 'Sushi World - Tôn Thất Thiệp', 'Số 25 đường Tôn Thất Thiệp, P. Bến Nghé, Q. 1', '028 3821 1462', '11:00', '22:00', '1', 6, 'ssw-ttt.png'),
(36, 'Tasaki BBQ - Lê Văn Sỹ', 'Số 409A Lê Văn Sỹ, P. 12, Q. 3', '028 7307 6899', '10:00', '22:00', '1', 6, 'tasaki-lvs.png'),
(37, 'Tasaki BBQ - Vạn Hạnh Mall', 'Vạn Hạnh Mall, Tầng 6, Số 11 đường Sư Vạn Hạnh, P. 12, Q. 10', '028 7303 2739', '10:00', '22:00', '1', 6, 'tasaki-vhm.png'),
(38, 'Miya Sushi - Huỳnh Mẫn Đạt', 'Số 48A đường Huỳnh Mẫn Đạt, P. 19, Q. Bình Thạnh', '0777 200 985', '10:00', '22:00', '1', 6, 'miya-hmd.png'),
(39, 'Taiyo Sushi & BBQ - Út Tịch', '0855 748 748', 'Số 4 Út Tịch, P. 4, Q.Tân Bình', '11:00', '22:30', '1', 6, 'taiyo.png'),
(40, 'Sushi World - Tân Sơn Nhất', 'Khách sạn Tân Sơn Nhất, Số 202 Hoàng Văn Thụ, P. 9, Q. Phú Nhuận', '028 3842 0228', '10:30', '22:00', '1', 6, 'ssw-tsn.png'),
(41, 'Tasaki BBQ - Aeon Mall Bình Tân', 'Aeon Mall Bình Tân, Tầng 3, Số 532A Đường Kinh Dương Vương, P. Bình Trị Đông B, Q. Bình Tân', '028 7302 2968', '10:00', '22:00', '1', 6, 'tasaki-aeon.png'),
(42, 'Sushi World -Trần Quang Khải', 'Số 124 Trần Quang Khải, P. Tân Định, Q. 1', '028 3822 0897', '11:00', '22:00', '1', 6, 'ssw-tqk.png'),
(43, 'Sushi Ben - Đường số 20', '166 đường số 20, P. 5, Q. Gò Vấp', '0918 179 922', '10:30', '22:00', '1', 6, 'ssb.png'),
(44, 'Sushi Tokyo Town - Đường số 3', '16 Đường số 3, Hiệp Bình Chánh, TP. Thủ Đức', '0868 103 355', '10:00', '22:00', '1', 6, 'sstt.png'),
(45, 'Stix - Nguyễn Đình Chiểu', '174A Nguyễn Đình Chiểu, P. 6, Q. 3', '028 2224 1883', '7:00', '22:00', '1', 3, 'stix.png'),
(46, 'Sik Rooftop - Trần Hưng Đạo B', 'Tầng thượng, Số 411 Trần Hưng Đạo B, P. 14, Q. 5', '028 3855 1888', '00:00', '24:00', '1', 3, 'sik.png'),
(47, 'Downtown Steakhouse Bistro - Nguyễn Tri Phương', '484 Nguyễn Tri Phương, P. 9, Q. 10', '0938 833 590', '10:00', '22:00', '1', 17, 'downtown.png'),
(48, 'JCAT Cá Hồi Đút Lò - 575 Cách Mạng Tháng 8', '575/31/14 Cách Mạng Tháng 8, P. 15, Q.10', '0902 699 117', '10:00', '22:00', '1', 17, 'jcat.png'),
(49, 'Ottimo House - Tôn Đức Thắng', '2A-4A Tôn Đức Thắng, P. Bến Nghé, Q. 1', '0906 983 183', '11:30', '22:00', '1', 17, 'ottimo.png'),
(50, 'FIREWORKS Raw - Grill & Craft Bar - Nam Kỳ Khởi Nghĩa', 'Số 61 Nam Kỳ Khởi Nghĩa, P. Bến Thành, Q.1', '028 9999 6268', '16:00', '01:00', '1', 17, 'firework.png'),
(51, 'Kobe Bistro By Chef David Thai - Tôn Đức Thắng', '23C Tôn Đức Thắng, P. Bến Nghé, Q. 1', '028 3622 4999', '11:00', '22:00', '1', 17, 'kobe.png'),
(52, 'Lux Lounge - Khu đô thị Vạn Phúc', 'Số 1 đường 18, Khu đô thị Vạn Phúc, P. Hiệp Bình Phước, TP. Thủ Đức', '0941 035 500', '6:00', '23:00', '1', 3, 'lux.png'),
(53, 'Stirling Steaks - Phan Xích Long', 'Số 349 đường Phan Xích Long, P. 1, Q. Phú Nhuận', '0909 554 035', '11:00', '22:00', '1', 17, 'stirling.png'),
(54, 'The Wann - Bùi Thị Xuân', 'Số 51-53 đường Bùi Thị Xuân, P. Bến Thành, Q. 1', '0933 020 202', '17:00', '02:00', '1', 3, 'thewan.png'),
(55, '48 Bistro - Cresent Mall', '5F25 Lầu 5, khu Lake - View, TTTM Cresent Mall, số 101 đường Tôn Dật Tiên, Phường Tân Phú, Quận 7', '0938 807 979', '10:00', '22:00', '1', 17, 'bistro-mall.png'),
(56, '48 Bistro - An Dương Vương', 'Số 292 An Dương Vương, P. 4, Q. 5', '0938 807 979', '10:00', '22:00', '1', 17, 'bistro-adv.png'),
(57, '48 Bistro - Lê Thị Riêng', 'Số 52 đường Lê Thị Riêng, P. Bến Thành, Q. 1', '0938 807 979', '10:00', '22:00', '1', 17, 'bistro-ltr.png'),
(58, 'Mr.Lucky Steak Buffet & Sky Beer Club - Lê Thị Hồng Gấm', 'Lầu 8 &9 số 102 -104 -106 Lê Thị Hồng Gấm, Q.1', '0901 746 094', '18:00', '02:00', '1', 3, 'lucky.png'),
(59, 'iBiero Craft Beer Station - Trường Sa', 'Số 290 đường Trường Sa, P. 2, Q. Phú Nhuận', '028 3535 9359', '10:00', '23:30', '1', 17, 'ibiero.png'),
(60, '1999 Steak - Đường Số 7', 'Số 28, Đường số 7, Khu Dân Cư Trung Sơn, H. Bình Chánh', '0843 431 999', '6:00', '23:30', '1', 3, '1999.png'),
(61, 'Cow Express - Phan Xích Long', 'Số 392 đường Phan Xích Long, P. 2, Q. Phú Nhuận', '028 6276 1065', '10:00', '21:30', '1', 17, 'cow-pxl.png'),
(62, 'Le Monde Steak - Nguyễn Thị Minh Khai', '11H Nguyễn Thị Minh Khai , P. Bến Nghé , Q. 1', '0343 325 286', '10:00', '22:00', '1', 17, 'lemonde-ntmk.png'),
(63, 'Boomerang Bistro Saigon - Tôn Dật Tiên', 'Số 107 Đường Tôn Dật Tiên, P. Tân Phú, Q. 7', '0901 868 000', '7:30', '23:00', '1', 3, 'boomerang.png'),
(64, 'Maison Mận-Đỏ Restaurant - Trần Nhật Duật', '27J Trần Nhật Duật, P. Tân Định, Q. 1', '0933 774 487', '11:00', '22:00', '1', 3, 'maison.png'),
(65, 'Downtown Steakhouse - Nguyễn Huệ', 'Số 42/34 Nguyễn Huệ, P.Bến Nghé, Q. 1', '0896 677 338', '10:00', '22:00', '1', 17, 'downtown-nh.png'),
(66, 'Le Monde Steak - Phan Xích Long', '188 Phan Xích Long, P. 2, Q. Phú Nhuận', '0985 388 684', '10:00', '22:00', '1', 17, 'lemonde-pxl.png'),
(67, 'Le Monde Steak - Cao Thắng', '78B Cao Thắng, P. 4, Q. 3', '0343 328 969', '10:00', '22:00', '1', 17, 'lemonde-ct.png'),
(68, 'Sargon Bistro - Nguyễn Thị Minh Khai', 'Số 382/25 Đường Nguyễn Thị Minh Khai, P. 5, Q. 3', '0938 846 558', '16:00', '00:00', '1', 3, 'sargon-ntmk.png'),
(69, 'Cozy Eatery & Bar - Nguyễn Thị Minh Khai', 'Số 382/22 Nguyễn Thị Minh Khai, Q. 3', '0382 238 222', '17:00', '01:00', '1', 17, 'cozy.png'),
(70, 'Eden - Lounge & Bespoke Cocktail - Ngô Đức Kế', 'Tầng 3, 68 Ngô Đức Kế, P. Bến Nghé, Q. 1', '0965 433 232', '18:00', '02:00', '1', 17, 'eden.png'),
(71, 'V Steak Station – Bùi Thị Xuân', 'Số 40 Bùi Thị Xuân, P. Bến Thành, Q. 1', '0933 811 599', '10:00', '21:00', '1', 17, 'v.png'),
(72, 'Le Monde Steak - Aeon Mall Tân Phú', 'Lô 38B, Tầng 3, TTTM Aeon Mall, Q. Tân Phú', '0867 810 288', '10:00', '22:00', '1', 17, 'lemonde-aeon.png'),
(73, 'Cow Express - Cao Thắng', 'Số 37 Cao Thắng, P. 2, Q. 3', '028 6652 1689', '9:00', '22:00', '1', 17, 'cow-ct.png'),
(74, 'Chanh Bistro Rooftop Saigon - Lý Tự Trọng', 'Rooftop Tầng 6, Số 215-217 Lý Tự Trọng, P. Bến Thành, Q. 1', '0903 838 760', '10:30', '23:00', '1', 17, 'chanh.png'),
(75, 'East West Brewing Co - Lý Tự Trọng', '181-183-185 Lý Tự Trọng, Phường Bến Thành, Quận 1', '0913 060 728', '11:00', '24:00', '1', 17, 'east.png'),
(76, 'Moo Beef Steak - Ngô Đức Kế', '35-37 Ngô Đức Kế, P. Bến Nghé, Q. 1', '028 3822 8628', '10:00', '22:00', '1', 17, 'moo.png'),
(77, 'Vivins Wine Club – Nguyễn Đình Chiểu', 'Số 11B Nguyễn Đình Chiểu, Phường Đakao, Q. 1', '0938 811 660', '11:00', '24:00', '1', 17, 'vivins.png'),
(78, 'Ngọc Sương Sài Gòn - Sương Nguyệt Ánh', '106 Sương Nguyệt Ánh, P. Bến Thành, Q. 1', '028 3925 6939', '10:00', '22:00', '1', 18, 'ngocsuong-sg.png'),
(79, 'Khè Food Garden - Nam Quốc Cang', '1 Nam Quốc Cang, P. Phạm Ngũ Lão, Q. 1', '0764 666 088', '18:00', '01:00', '1', 18, 'khefood.png'),
(80, 'Lobster Bay - Kỳ Đồng', 'Số 10B, Đường Kỳ Đồng, P. 09, Q. 3', '1900 066690', '09:00', '22:00', '1', 18, 'losbster.png'),
(81, 'Liberty Level 9 – Phạm Ngũ Lão', 'Lầu 9, Số 265 Phạm Ngũ Lão, P. Phạm Ngũ Lão, Q. 1', '028 3836 5172', '6:30', '21:30', '1', 18, 'liberty.png'),
(82, 'Sài Gòn Xưa Và Nay – Nguyễn Trung Trực', '37 Nguyễn Trung Trực, P. Bến Thành, Q. 1', '028 3822 2337', '11:00', '01:00', '1', 3, 'sg.png'),
(83, 'Nhà hàng Phi Phố Biển - Lê Hồng Phong', '16A Đường Lê Hồng Phong, P. 12, Q. 10', 'Nhà hàng Phi Phố Biển - Lê Hồng Phong', '09:00', '23:00', '1', 18, 'sea.png'),
(84, 'Bếp Ốc Sài Gòn - Hai Bà Trưng', 'Số 74/7E Hai Bà Trưng, P. Bến Nghé, Q.1', '028 3825 1676', '11:00', '22:00', '1', 18, 'oc-sg.png'),
(85, 'Buffet Cửu Vân Long Premium - Bitexco Financial', 'Tầng 4, Toà nhà Bitexco Financial Tower, số 45 Ngô Đức Kế, P. Bến Nghé, Q. 1', '0779 345 889', '11:00', '22:00', '1', 18, 'cvl.png'),
(86, 'Ngọc Sương Seafood & Bar - Nguyễn Siêu', 'Số 08 Nguyễn Siêu, P. Bến Nghé, Q. 1', '0888 599 399', '10:00', '22:30', '1', 18, 'ngocsuong-ns.png'),
(88, 'Lẩu Hồng Kông - Hoàng Văn Thụ', 'Khách sạn Tân Sơn Nhất, Số 200 Hoàng Văn Thụ, P. 9, Q. Phú Nhuận', '0938 948 880', '06:00', '21:00', '1', 18, 'lauhongkong.png'),
(89, 'Mo Mo Paradise - Nguyễn Thị Minh Khai', 'Số 96 Nguyễn Thị Minh Khai, P. 6, Q. 3', '0906 116 060', '11:00', '22:00', '1', 18, 'momo.png'),
(90, 'Lẩu Dê 404 - Dương Đức Hiền', 'Số 37 Dương Đức Hiền, P. Tây Thạnh, Q.Tân Phú', '0938 935 404', '09:00', '22:00', '1', 18, 'laude404.png'),
(91, 'Yakimono - Aeon Mall Bình Tân', 'T3-3B lầu 3 TTTM Aeon mall Bình Tân, Số 1 Đường Số 17A, P. Bình Trị Đông B, Q. Bình Tân', '0888 211 661', '10:30', '22:00', '1', 6, 'yakimono.png'),
(92, 'Buffet Lẩu Ếch Jiang Hu - Sư Vạn Hạnh', 'Số 770B – 770C đường Sư Vạn Hạnh, P. 12, Q. 10', '1900 232326', '09:00', '23:00', '1', 18, 'lauech.png'),
(93, 'Lẩu Dê Tài Ký - Ung Văn Khiêm', '57A Ung Văn Khiêm, P. 25, Q. Bình Thạnh', '0938 275 050', '10:00', '22:00', '1', 18, 'laude-uvk.png'),
(94, 'Galbi House - Lê Trọng Tấn', 'Số 433 đường Lê Trọng Tấn, P. Sơn Kỳ, Q.Tân Phú', '028 3812 0767', '10:30', '22:30', '1', 2, 'galbi-ltt.png'),
(95, 'Galbi House – Giga Mall Phạm Văn Đồng', 'Tầng 4 TTTM Giga Mall Thủ Đức, 240 – 242 Phạm Văn Đồng, Hiệp Bình Chánh', '028 3636 5686', '10:00', '22:00', '1', 2, 'galbi-pvd.png'),
(96, 'Galbi House – Hoàng Hoa Thám', 'Số 4 Hoàng Hoa Thám, P. 12, Q. Tân Bình', '028 3842 6779', '10:30', '22:30', '1', 2, 'galbi-hht.png'),
(97, 'Lẩu Nướng Mini Candy - Nguyễn Văn Đậu', 'Số 273 đường Nguyễn Văn Đậu, P. 11, Q. Bình Thạnh', '0982 729 730', '14:00', '22:00', '1', 3, 'laumini.png'),
(98, 'Anrakutei Premium - Nguyễn Trãi', 'Số 115 – 117 Nguyễn Trãi, P. Bến Thành, Q. 1', '028 7308 0688', '11:00', '23:00', '1', 6, 'anrakutei.png'),
(99, 'Chill Thái - Quận 7', '31 Đường số 34, P. Tân Quy, Q. 7', '0931 699 339', '11:00', '22:00', '1', 3, 'chill-q7.png'),
(100, 'Galbi House - MM Mega Market Bình Phú', 'MM Mega Market Bình Phú, đường Bình Phú, P. 11, Q. 6', '028 3535 8847', '10:30', '22:30', '0', 2, 'galbi-bp.png'),
(101, 'Galbi House – Phan Xích Long', 'Số 124 Phan Xích Long, P. 2, Q. Phú Nhuận', '028 3535 4143', '10:30', '22:30', '1', 2, 'galbi-pxl.png'),
(102, 'Lẩu Hồi Đó - Võ Thị Sáu', 'Số 4D, đường Võ Thị Sáu, P. Tân Định, Q. 1', '1900 9085', '10:00', '23:00', '1', 18, 'lauhoido.png'),
(103, 'Galbi House – Mega Market Hiệp Phú', 'Đường Lê Văn Khương, QL1A, P. Hiệp Phú, Q.12', '028 3535 4145', '10:30', '22:30', '1', 2, 'galbi-hp.png'),
(104, 'Rakuen Hotpot - Lê Văn Sỹ', 'Số 483 Lê Văn Sỹ, P.12, Q.3', '0905 111 483', '10:00', '22:30', '1', 3, 'rakuenhotpot.png'),
(105, 'Bò Ú Plus - Trường Sa', 'Số 1114 -1116 Trường Sa, P. 12, Q. 3', '0868 332 883', '14:00', '24:00', '1', 2, 'plus-ts.png'),
(106, 'Hotpot Đồng Quê 3 Premium - Quang Trung', '640 Quang Trung, P. 11, Q. Gò Vấp', '0784 111 133', '10:00', '22:00', '1', 3, 'hotpot-qt.png'),
(107, 'Bò Ú Plus - Lâm Văn Bền', 'Số 186 - 200 Lâm Văn Bền, P. Tân Quy, Q. 7', '0868 332 880', '14:00', '23:00', '1', 2, 'plus-lvb.png'),
(108, 'Asanoha - Modern Japanese Hotpot - Saigon Centre', 'Lầu 5, Saigon Centre, 67 Lê Lợi, P. Bến Nghé, Q. 1', '028 3535 6866', '10:30', '22:00', '1', 6, 'asanoha.png'),
(109, 'Aka House – Vạn Hạnh Mall', 'Tầng 6, TTTM Vạn Hạnh Mall , 11 Sư Vạn Hạnh, P.12, Q.10', '028 7300 6682', '10:00', '21:00', '1', 6, 'aka.png'),
(110, 'Buffet Lẩu Nướng Macao - Trần Hưng Đạo B', 'Tầng 3, Số 411 Trần Hưng Đạo B, P. 14, Q. 5', '028 3855 1888', '07:30', '22:00', '1', 3, 'macao.png'),
(111, 'Chill Thái - Cô Giang', 'Số 163 Cô Giang, P. Cô Giang, Q. 1', '0938 123 169', '11:00', '23:00', '1', 3, 'chill-cg.png'),
(112, 'Kậu Ba Quán - Hoàng Sa', 'Số 85 đường Hoàng Sa, P. Đa Kao, Q. 1', '0937 959 518', '11:00', '23:00', '1', 3, 'kaubaquan.png'),
(113, 'Reski Hotpot - Lê Trọng Tấn', '435 - 437 Lê Trọng Tấn, P. Sơn Kỳ, Q. Tân Phú', '1800 3379', '11:00', '22:00', '1', 3, 'reskihotpot.png'),
(115, 'BRUX Belgian Capital Beer - Trần Quốc Hoàn', 'Số 115 Trần Quốc Hoàn, P. 4, Q.Tân Bình', '0924 894 668', '11:00', '23:00', '1', 3, 'brux.png'),
(116, 'Quán Lão Trư - Phạm Ngọc Thạch', 'Số 68 Phạm Ngọc Thạch, P. 6, Q. 3', '028 7777 7077', '15:00', '24:00', '1', 3, 'laotru-pnt.png'),
(117, 'Quán Lão Trư – Song Hành', 'Số 12 – 14 Song Hành, P. An Phú, Q. 2', '028 7777 7077', '15:00', '24:00', '1', 3, 'laotru-sh.png'),
(118, 'D’Maris - Cộng Hòa', 'Tầng 5, Pico Plaza, Số 20, Đường Cộng Hòa, P.12, Q.Tân Bình', '1900 0010', '11:30', '22:00', '1', 3, 'dmaris-ch.png'),
(119, 'D’Maris - An Phú', 'Tầng 6, Tòa nhà Cantavil Premier, Số 1 Song Hành, Xa Lộ Hà Nội, P. An Phú, Q. 2', '1900 0029', '11:30', '22:00', '1', 3, 'dmaris-ap.png'),
(120, 'D’Maris - Lotte Mart Quận 7', 'Tầng 3, TTTM Lotte Mart, Số 469 Đường Nguyễn Hữu Thọ, P. Tân Hưng, Q. 7', '1900 0036', '11:30', '22:00', '1', 3, 'dmaris-lottemart.png'),
(121, 'Bê Vàng – An Dương Vương', 'Số 261 - 263 An Dương Vương, P. 3, Q. 5', '028 3833 1322', '10:00', '22:00', '1', 3, 'bevang.png'),
(122, 'The LOG - GEM Center', 'GEM Center, Rooftop, 8 Nguyễn Bỉnh Khiêm, P. Đa Kao, Q. 1', '1900 292977', '18:00', '23:00', '1', 3, 'log.png'),
(123, 'Cheer House Restaurant - Lê Ngô Cát', '6B Lê Ngô Cát, P. 7, Q. 3', '0938 798 679', '10:00', '22:00', '1', 3, 'cheer.png'),
(124, 'New York Steakhouse Sài Gòn - Nguyễn Đình Chiểu', '27 Nguyễn Đình Chiểu, P. Đa Kao, Q. 1', '0898 999 454', '17:00', '22:30', '1', 17, 'ny.png'),
(125, 'Kokugyu - Trần Quang Khải', 'Số 124 Trần Quang Khải, P. Tân Định, Q. 1', '0937 707 070', '11:00', '22:00', '1', 6, 'kokugyu.png');

-- --------------------------------------------------------

--
-- Table structure for table `category_food`
--

CREATE TABLE `category_food` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_food`
--

INSERT INTO `category_food` (`id`, `name`) VALUES
(1, 'Buffet'),
(2, 'Lẩu'),
(3, 'Nướng'),
(4, 'Món Nhật'),
(5, 'Món Hàn'),
(6, 'Hải sản'),
(7, 'Món Châu Âu'),
(8, 'Món Châu Á'),
(9, 'Món Việt');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `account_id`, `title`, `content`, `status`) VALUES
(1, 4, 'Feedback Menu', 'Tôi cảm thấy món cá ở combo 1 chưa hợp lý lắm', '1'),
(2, 6, 'Tui test nha', 'Buppe', '0'),
(3, 6, 'Quizziz', '1 + 1 = ???', '0');

-- --------------------------------------------------------

--
-- Table structure for table `convenient`
--

CREATE TABLE `convenient` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `name`) VALUES
(1, '26'),
(2, '26'),
(3, '22'),
(4, '20'),
(5, '21');

-- --------------------------------------------------------

--
-- Table structure for table `hours`
--

CREATE TABLE `hours` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hours`
--

INSERT INTO `hours` (`id`, `name`) VALUES
(1, '10:00'),
(2, '10:00'),
(3, '10:00'),
(4, '10:00'),
(5, '21:00');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`) VALUES
(1, 'noimage.png'),
(2, 'abc.png'),
(3, '146a4c63b9c742018c28c17e833a7b57.png'),
(4, '426187ad042e4bbb90967e40da543668.png'),
(5, '571c597a481c4f58b91b350bc575773c.png'),
(6, 'f57dc68fb12f4fd7a09dc7098a3a102b.png'),
(7, 'db33aad07d6d4bbca29e12410f21d4c3.png'),
(8, 'pho.jpg'),
(9, 'bun-rieu-cua.jpg'),
(10, 'com-nieu.jpeg'),
(11, 'chien-hai-san.jpg'),
(12, 'thit-luoc.jpg'),
(13, 'thit-kho-to.png'),
(14, 'ga-hap-hanh.jpg'),
(15, 'ga-chien-nuoc-mam.jpg'),
(16, 'bun-cha.jpg'),
(17, 'dui-ga-quayt.png'),
(18, 'com-chien-dua-bo.jpg'),
(19, 'thit-ba-chi.jpg'),
(20, 'ga-kho-gung.jpg'),
(21, 'suon-nuong-muoi-ot.png'),
(22, 'suon-heo-nuong-mat-ong.png'),
(23, 'suon-xao-chua-ngot.jpg'),
(24, 'ca-loc-chien-xu.jpg'),
(25, 'Com-cuon-ca-hoi-pho-mai-chien-xu.jpg'),
(26, 'com-nam-thanh-cua.jpg'),
(27, 'ca-hoi-nuong-pho-mai.jpg'),
(28, 'com-cuon-heo-chien-pho-mai.jpg'),
(29, 'trung-cuon-thap-cam.jpg'),
(30, 'kimbap-ca-ngu.jpg'),
(31, 'california.jpg'),
(32, 'com-cuon-lon-db.jpg'),
(33, 'kimbap-luon-nhat.jpg'),
(34, 'kimbap-thit-bo-nuong.jpg'),
(35, 'kimchi-cuon-thitbo.jpg'),
(36, 'com-trung-tom-cuon-ca-ngu.jpg'),
(37, 'trung-ca-chuon-cuon-thap-cam.jpg'),
(38, 'trung-tom-cuon-tom-chien.jpg'),
(39, 'com-cuon-miya.png'),
(40, 'kimbap-ga-phomai.jpg'),
(41, 'com-cuon-ga-teriyaki-chiengion.png'),
(42, 'rau-muc-sot-nhat.jpg'),
(43, 'sushi-ca-trich.png'),
(44, 'thit-ba-chi-heo-tuoi.jpg'),
(45, 'vai-heo.jpg'),
(46, 'nong-heo.jpg'),
(47, 'ca-ngu-nuong-tai.jpg'),
(48, 'suon-bo-la.png'),
(49, 'de-suon-bo-khong-xuong.png'),
(50, 'loi-vai-bo.jpg'),
(51, 'ba-chi-bo.png'),
(52, 'com-tron-hai-san.jpg'),
(53, 'bibimbap-ga.jpg'),
(54, 'banh-kep-kimchi.png'),
(55, 'ga-nhan-sam.jpg'),
(56, 'dau-than-ngoai.jpg'),
(57, 'phomai-nuong.png'),
(58, 'banh-gao-nuong.jpg'),
(59, 'banh-gao-cay.jpg'),
(60, 'com-chien-nui-lua.jpg'),
(61, 'com-chien-kim-chi.jpg'),
(62, 'bibimbap-truyenthong.jpg'),
(63, 'bibimbap-giam-bong.jpg'),
(64, 'buffet-nuong.png'),
(65, 'buffet-nuong-lau.jpg'),
(66, 'buffet-hai-san.jpeg'),
(67, 'buffet-Sushi.jpg'),
(68, 'French-Fries.jpg'),
(69, 'Cheesy-Garlic-Bread.jpg'),
(70, 'potato-croquettes.png'),
(71, 'Melting-Cheese-Scallops.png'),
(72, 'Starter-Platter.jpg'),
(73, 'Barramundi-Fish-and-Chips.jpg'),
(74, 'Nicoise-Salad.png'),
(75, 'Shrimp-Salad.png'),
(76, 'PumpkinSoup.jpg'),
(77, 'Creamy-Mushroom-Soup.jpg'),
(78, 'grilled-chicken.jpg'),
(79, 'top-blade.jpg'),
(80, 'Striploin.jpg'),
(81, 'Rib-eye Hokubi.jpg'),
(82, 'seafood-spaghetti.jpg'),
(83, 'Prawn.jpg'),
(84, 'Spaghetti-Bolognese.png'),
(85, 'Spaghetti-Amatriciana.jpg'),
(86, 'Olio.jpeg'),
(87, 'big-burger.jpg'),
(88, 'Philly-Cheesesteak.jpg'),
(89, 'Grilled-Chicken-burger.png'),
(90, 'Tasting-Slider.png'),
(91, 'smoked-sausage-pizza.png'),
(92, 'bbq-chicken-pizza.png'),
(93, 'Combination-Seafood-Pizza.png'),
(94, 'chicken-cordon-bleu.jpg'),
(95, 'mussels-white-wine.jpg'),
(96, 'cube-beef-French-Fries.jpg'),
(97, 'Chicken-Steak.jpg'),
(98, 'Quesadilla.jpg'),
(99, 'BBQ-Pork-Rib.jpg'),
(100, 'beef-bourguignon.jpg'),
(101, 'lau-bo-chua-cay.jpg'),
(102, 'lau-haisan-chuacay.png'),
(103, 'lau-de.jpg'),
(104, 'ngeu-hap-sa.jpg'),
(105, 'so-diep-nuong-pho-mai.jpg'),
(106, 'ocgiay-sotmecay.jpg'),
(107, 'oclen-xaodua.jpg'),
(110, 'sup-sun-hai-sam.jpg'),
(111, 'sup-bongca-thitcua.jpg'),
(112, 'goi-muc-kieu-thai.jpg'),
(113, 'salad-ca-ngu.jpg'),
(114, 'tom-hum-hap.png'),
(115, 'be-vang.jpg'),
(116, 'ghe-hap-sa.jpg'),
(117, 'hau-nuong-mo-hanh.jpg'),
(118, 'oclen-sotdua.jpg'),
(119, 'lau-nam-haisan.jpg'),
(120, 'lau-nam-bo.jpeg'),
(121, 'tom-su-mu-tat.jpg'),
(122, 'tom-su-sot-thai.jpg'),
(123, 'tom-su-rang-muoi.jpg'),
(124, 'oc-mong-tay-chay-toi.jpg'),
(125, 'lau-khoqua-cathaclac.jpg'),
(126, 'sup-sun-hai-sam.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `price` double NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `description`, `price`, `image_id`, `category_id`, `account_id`) VALUES
(4, 'Phở', NULL, 50000, 8, 9, 3),
(5, 'Bún Chả', NULL, 50000, 16, 9, 3),
(6, 'Bún Riêu Cua', NULL, 50000, 9, 9, 3),
(7, 'Cơm Niêu', NULL, 30000, 10, 9, 3),
(8, 'Cơm Chiên Hải Sản', NULL, 70000, 11, 8, 3),
(10, 'Thịt Luộc', NULL, 135000, 12, 9, 3),
(11, 'Thịt Kho Tộ', NULL, 135000, 13, 9, 3),
(12, 'Gà Hấp Hành', NULL, 200000, 14, 9, 3),
(13, 'Gà Chiên Nước Mắm', NULL, 200000, 15, 8, 3),
(14, 'Đùi Gà Quay', NULL, 155000, 17, 8, 3),
(15, 'Cơm Chiên Dưa Bò', NULL, 70000, 18, 9, 3),
(16, 'Thịt Ba Chỉ', NULL, 135000, 19, 8, 3),
(17, 'Gà Kho Rừng', NULL, 135000, 20, 9, 3),
(18, 'Sườn Heo Nướng Muối Ớt', NULL, 155000, 21, 8, 3),
(19, 'Sườn Heo Nướng Mật Ông', NULL, 155000, 22, 8, 3),
(20, 'Sườn Xào Chua Ngọt', NULL, 155000, 23, 9, 3),
(21, 'Cá Lóc Chiên Xù', NULL, 200000, 24, 9, 3),
(22, 'Cơm cuộn Cá hồi Phô mai chiên giòn', NULL, 59000, 25, 4, 6),
(23, 'Cơm nấm Thanh Cua sốt Mayonnaise', NULL, 32000, 26, 4, 6),
(24, 'Cá Hồi nướng Phô Mai', NULL, 42000, 27, 4, 6),
(25, 'Cơm cuộn Heo chiên & Phô mai', NULL, 45000, 28, 4, 6),
(26, 'Trứng cuộn rau củ thập cẩm', NULL, 39000, 29, 4, 6),
(27, 'Cơm cuộn Cá ngừ', NULL, 33000, 30, 4, 6),
(28, 'Cơm cuộn California', NULL, 79000, 31, 4, 6),
(29, 'Cơm cuộn lớn đặc biệt', NULL, 99000, 32, 4, 6),
(30, 'Cơm cuộn Lươn Nhật', NULL, 69000, 33, 4, 6),
(31, 'Cơm cuộn thịt Bò nướng', NULL, 38000, 34, 4, 6),
(32, 'Kim chi cuộn thịt Bò', NULL, 48000, 35, 5, 2),
(33, 'Cơm trứng tôm cuộn cá Ngừ cay', NULL, 59000, 36, 4, 6),
(34, 'Trứng cá Chuồn cuộn thập cẩm', NULL, 49000, 37, 4, 6),
(35, 'Trứng tôm cuộn Tôm chiên', NULL, 59000, 38, 4, 6),
(36, 'Cơm cuộn Miya', NULL, 89000, 39, 4, 6),
(37, 'Cơm cuộn Gà nướng & Phô mai', NULL, 59000, 40, 4, 6),
(38, 'Cơm cuộn thịt gà sốt Teriyaki chiên giòn', NULL, 49000, 41, 4, 6),
(39, 'Râu mực luộc sốt Nhật', NULL, 25000, 42, 4, 6),
(40, 'Cá Ngừ nướng tái', NULL, 37000, 47, 4, 6),
(41, 'Sushi Cá Trích', NULL, 29000, 43, 4, 6),
(42, 'Thịt Ba Chỉ Heo Tươi', NULL, 235000, 44, 3, 2),
(43, 'Thịt Vai Heo Tươi', NULL, 235000, 45, 3, 2),
(44, 'Thịt Nọng Heo', NULL, 235000, 46, 3, 2),
(45, 'Sườn Bò LA', NULL, 420000, 48, 3, 2),
(46, 'Dẻ Sườn Bò Không Xương', NULL, 390000, 49, 3, 2),
(47, 'Lõi Vai Bò', NULL, 320000, 50, 3, 2),
(48, 'Ba Chỉ Bò', NULL, 320000, 51, 3, 2),
(49, 'Đầu Thăn Ngoại', NULL, 650000, 56, 3, 2),
(50, 'Phô Mai Nướng', NULL, 138000, 57, 3, 2),
(51, 'Bánh Gạo Nướng', NULL, 95000, 58, 5, 2),
(52, 'Bánh Gạo Xào Cay', NULL, 149000, 59, 5, 2),
(53, 'Cơm Chiên Kimchi Núi Lửa', NULL, 149000, 60, 5, 2),
(54, 'Cơm Chiên Kimchi', NULL, 116000, 61, 5, 2),
(55, 'Bibimbap Truyền Thống', NULL, 149000, 62, 5, 2),
(56, 'Bibimbap Giăm Bông', NULL, 159000, 63, 5, 2),
(57, 'Bibimbap Hải Sản', NULL, 159000, 52, 5, 2),
(58, 'Bibimbap Gà', NULL, 159000, 53, 5, 2),
(59, 'Bánh Kếp Kimchi', NULL, 149000, 54, 5, 2),
(60, 'Cánh Gà Nhân Sâm Sam Gye', NULL, 345000, 55, 5, 2),
(61, 'Buffet Nướng', NULL, 229000, 64, 1, 2),
(62, 'Buffet Nướng Lẩu', NULL, 289000, 65, 1, 2),
(63, 'Buffet Hải Sản', NULL, 369000, 66, 1, 18),
(64, 'Buffet Sushi', NULL, 328000, 67, 1, 6),
(66, 'French Fries', NULL, 60000, 68, 7, 17),
(67, 'Cheesy Garlic Bread', NULL, 55000, 69, 7, 17),
(68, 'Potato Croquettes', NULL, 55000, 70, 7, 17),
(69, 'Melting Cheese Scallops', NULL, 275000, 71, 7, 17),
(70, 'Starter Platter', NULL, 285000, 72, 7, 17),
(71, 'Barramundi Fish and Chips ', NULL, 145000, 73, 7, 17),
(72, 'Nicoise Salad', NULL, 95000, 74, 7, 17),
(73, 'Shrimp Salad', NULL, 115000, 75, 7, 17),
(74, 'Pumpkin Soup', NULL, 50000, 76, 7, 17),
(75, 'Creamy Mushroom Soup', NULL, 50000, 77, 7, 17),
(76, 'Grilled Chicken', NULL, 45000, 78, 7, 17),
(77, 'Top Blade', NULL, 175000, 79, 7, 17),
(78, 'Striploin', NULL, 395000, 80, 7, 17),
(79, 'Rib-eye Hokubi', NULL, 435000, 81, 7, 17),
(80, 'Seafood Spaghetti', NULL, 185000, 82, 7, 17),
(81, 'Prawn on top Pasta', NULL, 135000, 83, 7, 17),
(82, 'Spaghetti Bolognese', NULL, 95000, 84, 7, 17),
(83, 'Spaghetti Amatriciana', NULL, 85000, 85, 7, 17),
(84, 'Steak Strips with Spaghetti Aglio E Olio', NULL, 195000, 86, 7, 17),
(85, 'Big Bitez Burger', NULL, 260000, 87, 7, 17),
(86, 'Philly Cheesesteak', NULL, 155000, 88, 7, 17),
(87, 'Burger with Grilled Chicken', NULL, 145000, 89, 7, 17),
(88, 'Tasting Slider', NULL, 175000, 90, 7, 17),
(89, 'Smoke Sausage Pizza', NULL, 165000, 91, 7, 17),
(90, 'BBQ Chicken Pizza', NULL, 165000, 92, 7, 17),
(91, 'Combination Seafood Pizza', NULL, 165000, 93, 7, 17),
(92, 'Chicken Cordon Bleu', NULL, 165000, 94, 7, 17),
(93, 'Mussel in Wine Sauce', NULL, 175000, 95, 7, 17),
(94, 'Cube Beef with French Fries', NULL, 120000, 96, 7, 17),
(95, 'Chicken Steak', NULL, 145000, 97, 7, 17),
(96, 'Quesadilla', NULL, 125000, 98, 7, 17),
(97, 'BBQ Pork Rib', NULL, 265000, 99, 7, 17),
(98, 'Beef Bourguignon', NULL, 145000, 100, 7, 17),
(99, 'Lẩu Bò Chua Cay', NULL, 189000, 101, 2, 18),
(100, 'Lẩu Hải Sản Chua Cay', NULL, 189000, 102, 2, 18),
(101, 'Lẩu Dê', NULL, 189000, 103, 2, 18),
(102, 'Ngêu Hấp Sả', NULL, 65000, 104, 6, 18),
(103, 'Sò Điệp Nướng Phô Mai', NULL, 85000, 105, 6, 18),
(104, 'Ốc Giấy Sốt Me Cay', NULL, 95000, 106, 6, 18),
(105, 'Ốc Len Xào Dừa', NULL, 115000, 107, 6, 18),
(106, 'Gỏi Mực kiểu Thái', NULL, 200000, 112, 6, 18),
(107, 'Salad Cá Ngừ', NULL, 85000, 113, 6, 18),
(108, 'Tôm Hùm Hấp', NULL, 489000, 114, 6, 18),
(109, 'Tôm Hùm Salad Sốt Bê Vàng', NULL, 600000, 115, 6, 18),
(110, 'Ghẹ Hấp Sả', NULL, 140000, 116, 6, 18),
(111, 'Hàu Nướng Mỡ Hành', NULL, 140000, 117, 6, 18),
(112, 'Ốc Len Sốt Dừa', NULL, 140000, 118, 6, 18),
(113, 'Lẩu Nấm Hải Sản', NULL, 249000, 119, 6, 18),
(114, 'Lẩu Nấm Bò Mỹ', NULL, 249000, 120, 6, 18),
(115, 'Tôm Sú Mù Tạt', NULL, 209000, 121, 6, 18),
(116, 'Tôm Sú Sốt Thái ', NULL, 209000, 122, 6, 18),
(117, 'Tôm Sú Rang Muối Hong Kong', NULL, 229000, 123, 6, 18),
(118, 'Ốc Móng Tay Cháy Tỏi', NULL, 119000, 124, 6, 18),
(119, 'Lẩu Khổ Qua Chả Cá Thác Lác', NULL, 249000, 125, 2, 18),
(120, 'Súp Sụn Vị Hải Sâm', NULL, 120000, 110, 6, 18),
(121, 'Súp Bông Cá Thịt Cua', NULL, 500000, 111, 6, 18),
(122, 'Option 1', 'ACCC', 4200, 7, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `months`
--

CREATE TABLE `months` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `months`
--

INSERT INTO `months` (`id`, `name`) VALUES
(1, '3'),
(2, '4'),
(3, '5'),
(4, '3'),
(5, '3'),
(6, '3'),
(7, '3'),
(8, '3');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_id` int(11) DEFAULT NULL,
  `total_member` int(11) NOT NULL,
  `children` tinyint(1) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL,
  `created` date NOT NULL,
  `time_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `table_id`, `total_member`, `children`, `status`, `created`, `time_id`) VALUES
(6, 1, 5, 0, 0, 'unpaid', '2024-03-16', 1),
(7, 5, 7, 0, 0, 'unpaid', '2024-03-16', 4),
(8, 6, 11, 20, 1, 'unpaid', '2024-03-16', 3),
(9, 5, 13, 7, 1, 'unpaid', '2024-03-18', 5);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `menu_id`, `quantity`, `price`) VALUES
(1, 6, 5, 2, 4),
(2, 7, 56, 2, 8),
(3, 8, 85, 3, 10),
(4, 9, 59, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `discount_amount` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `name`, `description`, `start_date`, `end_date`, `discount_amount`, `status`, `branch_id`) VALUES
(1, 'Khai trương cơ sở', 'Giảm 10% cho tất cả món ', '2024-01-02', '2024-01-06', '20%', '1', NULL),
(2, 'Tết Nguyên Đán', 'Giảm 8% cho các gói Combo 1 và Combo 2', '2024-02-06', '2024-01-18', '8%', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `number_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `rating` varchar(250) NOT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_SUPER_ADMIN'),
(2, 'ROLE_ADMIN'),
(3, 'ROLE_MEMBER');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `table_type` varchar(250) DEFAULT NULL,
  `number_of_seat` int(11) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `name`, `branch_id`, `table_type`, `number_of_seat`, `status`) VALUES
(1, 'Bàn C', 5, 'Small', 2, '0'),
(2, 'Bàn C', 5, 'Small', 4, '0'),
(3, 'Bàn C', 5, 'Small', 3, '0'),
(4, 'Bàn C', 5, 'Medium', 5, '0'),
(5, 'Bàn B', 5, 'Medium', 6, '0'),
(6, 'Bàn C', 6, 'Small', 2, '0'),
(7, 'Bàn C', 6, 'Small', 4, '0'),
(8, 'Bàn C', 6, 'Small', 3, '0'),
(9, 'Bàn C', 6, 'Medium', 5, '0'),
(10, 'Bàn B', 6, 'Medium', 6, '0'),
(11, 'Bàn B', 6, 'Medium', 7, '0'),
(12, 'Bàn C', 7, 'Small', 2, '0'),
(13, 'Bàn C', 7, 'Small', 4, '0'),
(14, 'Bàn C', 7, 'Small', 3, '0'),
(15, 'Bàn C', 7, 'Medium', 5, '0'),
(16, 'Bàn B', 7, 'Medium', 6, '0'),
(17, 'Bàn B', 7, 'Medium', 7, '0'),
(18, 'Bàn C', 8, 'Small', 2, '0'),
(19, 'Bàn C', 8, 'Small', 4, '0'),
(20, 'Bàn C', 8, 'Small', 3, '0'),
(21, 'Bàn C', 8, 'Medium', 5, '0'),
(22, 'Bàn C', 8, 'Medium', 7, '0'),
(23, 'Bàn B', 8, 'Medium', 6, '0'),
(24, 'Bàn C', 9, 'Small', 2, '0'),
(25, 'Bàn C', 9, 'Small', 4, '0'),
(26, 'Bàn C', 9, 'Small', 3, '0'),
(27, 'Bàn C', 9, 'Medium', 5, '0'),
(28, 'Bàn B', 9, 'Medium', 6, '0'),
(29, 'Bàn C', 10, 'Small', 2, '0'),
(30, 'Bàn C', 10, 'Small', 4, '0'),
(31, 'Bàn C', 10, 'Small', 3, '0'),
(32, 'Bàn C', 10, 'Medium', 5, '0'),
(33, 'Bàn B', 10, 'Medium', 6, '0'),
(34, 'Bàn C', 11, 'Small', 2, '0'),
(35, 'Bàn C', 11, 'Small', 4, '0'),
(36, 'Bàn C', 11, 'Small', 3, '0'),
(37, 'Bàn C', 11, 'Medium', 5, '0'),
(38, 'Bàn B', 11, 'Medium', 6, '0'),
(39, 'Bàn C', 12, 'Small', 2, '0'),
(40, 'Bàn C', 12, 'Small', 4, '0'),
(41, 'Bàn C', 12, 'Small', 3, '0'),
(42, 'Bàn C', 12, 'Medium', 5, '0'),
(43, 'Bàn B', 12, 'Medium', 6, '0'),
(44, 'Bàn B', 12, 'Medium', 7, '0'),
(45, 'Bàn S', 12, 'VIP', 18, '0'),
(46, 'Bàn S', 12, 'VIP', 19, '0'),
(47, 'Bàn S', 12, 'VIP', 20, '0'),
(48, 'Bàn C', 13, 'Small', 2, '0'),
(49, 'Bàn C', 13, 'Small', 4, '0'),
(50, 'Bàn C', 13, 'Small', 3, '0'),
(51, 'Bàn C', 13, 'Medium', 5, '0');

-- --------------------------------------------------------

--
-- Table structure for table `times`
--

CREATE TABLE `times` (
  `id` int(11) NOT NULL,
  `month_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `hour_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `times`
--

INSERT INTO `times` (`id`, `month_id`, `day_id`, `hour_id`) VALUES
(1, 4, 1, 1),
(2, 5, 2, 2),
(3, 6, 3, 3),
(4, 7, 4, 4),
(5, 8, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `total_amount` varchar(250) NOT NULL,
  `payment_method` varchar(250) NOT NULL,
  `created` date NOT NULL,
  `promotion_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `order_id`, `total_amount`, `payment_method`, `created`, `promotion_id`) VALUES
(1, 6, '8', 'cash', '2024-03-01', NULL),
(2, 7, '16', 'cash', '2024-03-01', NULL),
(3, 8, '30', 'cash', '2024-03-01', NULL),
(4, 9, '10', 'cash', '2024-03-01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `phone_number` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `birthday` date NOT NULL,
  `account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `phone_number`, `gender`, `birthday`, `account_id`) VALUES
(1, 'SUPER ', 'ADMIN', '01212121212', 'none', '2023-12-06', 1),
(2, 'ADMIN ', 'NUMBER 1', '07589654152', 'none', '2023-12-30', 2),
(3, 'ADMIN', 'NUMBER 2', '0784544693', 'none', '2023-12-30', 3),
(4, 'Lê ', 'Trọng Tuyên', '07932533698', 'Male', '2000-01-04', 4),
(5, 'Huỳnh', 'Chánh Lộc', '0378643211', 'Male', '2000-11-24', 8),
(6, 'Member', 'Number 02', '1800383838', 'Female', '2020-01-01', 10),
(7, 'Khưu', 'Tín', '+84777022074', 'Male', '2023-06-09', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `branchs`
--
ALTER TABLE `branchs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `category_food`
--
ALTER TABLE `category_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `convenient`
--
ALTER TABLE `convenient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hours`
--
ALTER TABLE `hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `months`
--
ALTER TABLE `months`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `table_id` (`table_id`),
  ADD KEY `time_id` (`time_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`id`),
  ADD KEY `day_id` (`day_id`),
  ADD KEY `hour_id` (`hour_id`),
  ADD KEY `month_id` (`month_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `promotion_id` (`promotion_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `branchs`
--
ALTER TABLE `branchs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `category_food`
--
ALTER TABLE `category_food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `convenient`
--
ALTER TABLE `convenient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hours`
--
ALTER TABLE `hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `months`
--
ALTER TABLE `months`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `times`
--
ALTER TABLE `times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `branchs`
--
ALTER TABLE `branchs`
  ADD CONSTRAINT `branchs_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `convenient`
--
ALTER TABLE `convenient`
  ADD CONSTRAINT `convenient_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branchs` (`id`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `menu_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `menu_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `category_food` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`time_id`) REFERENCES `times` (`id`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`table_id`) REFERENCES `tables` (`id`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_4` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`);

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branchs` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`branch_id`) REFERENCES `branchs` (`id`);

--
-- Constraints for table `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `tables_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branchs` (`id`);

--
-- Constraints for table `times`
--
ALTER TABLE `times`
  ADD CONSTRAINT `times_ibfk_1` FOREIGN KEY (`day_id`) REFERENCES `days` (`id`),
  ADD CONSTRAINT `times_ibfk_2` FOREIGN KEY (`hour_id`) REFERENCES `hours` (`id`),
  ADD CONSTRAINT `times_ibfk_3` FOREIGN KEY (`month_id`) REFERENCES `months` (`id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
