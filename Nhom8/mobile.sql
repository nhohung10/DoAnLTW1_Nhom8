-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 09, 2018 lúc 04:06 AM
-- Phiên bản máy phục vụ: 5.7.21
-- Phiên bản PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mobile`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_ID` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `manu_img` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`manu_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_ID`, `manu_name`, `manu_img`) VALUES
(1, 'Nokia', 'nokia.jpg'),
(2, 'Apple', 'apple.png'),
(3, 'Samsung', 'samsung.png'),
(4, 'Oppo', 'Oppo.png'),
(5, 'Asus', 'asus.png'),
(6, 'Huawei', 'huawei.jpg'),
(7, 'Xiaomi', 'xiaomi.png'),
(8, 'lenovo', 'lenovo.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `passcode`
--

DROP TABLE IF EXISTS `passcode`;
CREATE TABLE IF NOT EXISTS `passcode` (
  `admin` varchar(100) NOT NULL,
  `PassWord` varchar(100) NOT NULL,
  UNIQUE KEY `admin` (`admin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `passcode`
--

INSERT INTO `passcode` (`admin`, `PassWord`) VALUES
('admin', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `manu_ID` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `type_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ID`, `name`, `image`, `description`, `manu_ID`, `price`, `type_ID`) VALUES
(1, 'dien thoai iphone 6s', 'iphone6s.jpg', ' iPhone 6s 32 GB được nâng cấp độ phân giải camera sau lên 12 MP (thay vì 8 MP như trên iPhone 6), camera có tốc độ lấy nét và chụp nhanh, thao tác chạm để chụp nhẹ nhàng. Chất lượng ảnh trong các điều kiện chụp khác nhau tốt.', 2, 12490000, 1),
(2, 'loa apple', 'loaapple.jpg', 'Apple cho ra một sản phẩm Apple Watch Series 1 38mm phiên bản màu bạc Aluminium khá ấn tượng với những khả năng chống nước tốt hơn, chip xử lý mạnh mẽ hơn, màn hình đẹp hơn,...', 2, 6999000, 3),
(3, 'Laptop Apple Macbook Air', 'macbook.jpg', 'với thiết kế vỏ nhôm nguyên khối Unibody rất đẹp, chắc chắn và sang trọng. Macbook Air là một chiếc máy tính xách tay siêu mỏng nhẹ, hiệu năng ổn định mượt mà, thời lượng pin cực lâu, phục vụ tốt cho nhu cầu làm việc lẫn giải trí.', 2, 22990000, 2),
(4, 'loa asus', 'loaasus.jpg', 'Loa nghe nhạc mini cho điện thoại và máy tính bảngThiết kế vòm, âm thanh lan tỏa 360 độ', 5, 4000000, 3),
(5, 'man hinh imac', 'imac.jpg', 'man hinh imac.', 2, 12990000, 5),
(6, 'sạc dự phòng xiaomi', 'sdp.jpg', 'Những sản phẩm của Xiaomi luôn được biết đến với đặc trưng “ngon, bổ, rẻ” và pin dự phòng cũng không phải là một ngoại lệ. Với pin dự phòng Xiaomi Mi Gen 2 có dung lượng lên đến 10000 mAh, người dùng có thể thoải mái sử dụng những thiết bị di động của mình trong cả ngày mà không phải băn khoăn về việc tìm kiếm ổ điện để sạc pin trong trường hợp khẩn cấp.', 7, 300000, 4),
(7, 'sạc dự phòng samsung', 'sdpss.jpg', 'có dung lượng lên đến 10000 mAh, người dùng có thể thoải mái sử dụng những thiết bị di động của mình trong cả ngày mà không phải băn khoăn về việc tìm kiếm ổ điện để sạc pin trong trường hợp khẩn cấp.', 3, 500000, 4),
(8, 'sạc dự phòng asus', 'sdpas.jpg', 'dung lượng cao thoải mái sử dụng ...', 5, 200000, 4),
(9, 'laptop asus', 'sdpas.jpg', ' phiên bản máy tính nâng cấp hết sức giá trị với chip xử lý thế hệ thứ 8 mới nhất của Intel cho hiệu năng vượt trội, đáp ứng tốt cho bạn trong các nhu cầu làm việc, học tập, giải trí hằng ngày.', 5, 15000000, 2),
(10, 'laptop xiaomi', 'laptopxiaomi.jpg', 'Việc chơi những tựa game đồ họa khủng trên laptop với mức chi phí bỏ ra không quá cao giờ đây đã không còn là một trở ngại với các game thủ khi mà vào tuần trước, Xiaomi đã ra mắt một mẫu laptop gaming cao cấp có tên Xiaomi Mi Gaming Laptop với mức giá cực kỳ dễ chịu.\r\n\r\n', 7, 25000000, 2),
(11, 'loa samsung', 'loasamsung.jpg', 'Hiệu ứng âm thanh mở rộng, bùng nổ với âm trầm mạnh mẽ\r\nTính năng Surround Sound Expansion lan tỏa âm thanh đa chiều\r\nKết nối không dây với TV qua Bluetooth', 3, 2500000, 3),
(12, 'man hinh samsung', 'manhinhss.jpg', 'Trải nghiệm hình ảnh tối ưu với màn hình cong hoàn hảo\r\nChế độ bảo vệ mắt hiệu quả\r\nLoa tích hợp cùng kết nối đa phương tiện', 3, 4500000, 5),
(13, 'dien thoai nokia a', 'dienthoainokia1.jpg', 'à chiếc smartphone mang tính cách mạng của Vivo với phần viền màn hình siêu mỏng cùng cụm camera độ phân giải siêu lớn 24 MP ở mặt trước ấn tượng.', 1, 6700000, 1),
(14, 'dien thoai xiaomi', 'dienthoaixiaomi.jpg', 'chính thức ra mắt tại Ấn Độ với vai trò là một dự án hợp tác Android One của Google. Hãy cùng mình trên tay nhanh chiếc máy chạy Android thuần cùng camera xóa phông ảo diệu mà giá chỉ hơn 5 triệu này nhé', 7, 6300000, 1),
(15, 'dien thoai asus', 'dienthoaiasus.jpg', 'là chiếc smartphone theo xu thế màn hình viền mỏng đầu tiên của ASUS. Với ưu điểm thiết kế đẹp, pin lớn truyền thống dòng Zenfone Max, camera kép và mức giá tầm trung cực kì hấp dẫn và đáng sở hữu.', 5, 5500000, 1),
(16, 'man hinh lenovo', 'manhinhlenovo.jpg', 'man hinh lenovo the he moi', 8, 2300000, 5),
(17, 'man hinh asus', 'manhinhasus.jpg', 'Một màn hình cong 34 inch QHD siêu rộng (3440 x 1440) với tỷ lệ khung hình 21:9 cho chơi game toàn cảnh', 5, 13500000, 5),
(18, 'loa huawei', 'loahuawei.jpg', 'Model : AM08 ( Huawei )Loa nghe nhạc mini cho điện thoại và máy tính bảngThiết kế vòm, âm thanh lan tỏa 360 độCông suất loa: 1.8WBluetooth 4.0 with A2DPKhoảng cách kết nối: 10mThời gian nghe liên tục: 4 giờ (với công suất loa dưới 75%)Pin: 700mAhThời gian sạc: dưới 3 giờTrọng lượng: 2..', 6, 12000000, 3),
(19, 'dien thoai oppo', 'oppof9.jpg', 'Neo 5 mang ngôn ngữ thiết kế tương đồng với sản phẩm nhôm kính khá nổi tiếng của hãng, OPPO R1. Tổng thể máy nổi bật với phần khung viền kim loại với mức độ hoàn thiện khá tốt', 4, 4600000, 1),
(20, 'loa oppo', 'loaoppo.jpg', 'loa mới nhất', 4, 800000, 3),
(21, 'dien thoai oppo', 'oppof9.jpg', 'Sau thành công chiếc Find X, hôm qua 15/8 hãng điện thoại Trung Quốc OPPO vừa ra mắt sản phẩm mới OPPO F9 tại Việt Nam. Được biết chiếc điện thoại tầm trung này không chỉ sở hữu thiết kế độc đáo mà hiệu năng còn vô cùng mạnh mẽ. Đây là sản phẩm tiếp theo thuộc dòng F – dòng điện thoại cao cấp nhất tại Việt Nam.', 4, 7600000, 1),
(22, 'Điện thoại Nokia 230', 'nokia230.jpg', 'được trang bị khá nhiều tính năng hay ho, thiết kế đẹp cho người dùng yêu thích một chiếc điện thoại đẹp - đơn giản - tốt.', 1, 120000, 1),
(23, 'dien thoai huawei', 'huaweip20.jpg', 'Máy chạy mượt. Pin ổn cho 1 ngày. Cam chụp đẹp trong tầm giá. Hơi bất ngờ về chất lượng máy của huiwai, vì xưa nay chỉ dùng samsung và asus. Chốt lại là đáng mua', 6, 8600000, 1),
(24, 'sac du phong huawei', 'sdphuawei.jpg', 'mang dung lượng cao thỏa sức sử dụng', 6, 400000, 4),
(25, 'dien thoai lenovo', 'lenovodt.jpg', 'Màn hình tràn viền tỉ lệ 18:9 , độ phân giải Full HD+ sắc nét\r\n\r\nCấu hình cao - đáp ứng những trải nghiệm cao cấp\r\n\r\nVân tay 1 chạm siêu nhạy\r\n\r\nHỗ trợ 2 sim 2 sóng\r\n\r\nTrang bị camera kép chụp ảnh siêu nét\r\n\r\nNgôn ngữ tiếng anh, tiếng trung - Sản phẩm mới nguyên Seal', 8, 9200000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `type_img` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`type_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_ID`, `type_name`, `type_img`) VALUES
(1, 'Điện thoại', 'iphone6s.png'),
(2, 'laptop', 'laptop.jpg'),
(3, 'loa', 'loa.jpg'),
(4, 'sạc dự phòng', 'sdp.jpg'),
(5, 'man hinh', 'manhinh.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
