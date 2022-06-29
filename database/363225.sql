-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 29, 2022 lúc 06:03 AM
-- Phiên bản máy phục vụ: 10.3.22-MariaDB-log
-- Phiên bản PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `363225`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dienvien`
--

CREATE TABLE `dienvien` (
  `idDienVien` int(11) NOT NULL,
  `tenDienVien` varchar(255) NOT NULL,
  `imageDienVien` varchar(255) NOT NULL,
  `idPhim` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dienvien`
--

INSERT INTO `dienvien` (`idDienVien`, `tenDienVien`, `imageDienVien`, `idPhim`) VALUES
(1, 'Yusufas Yusuf', 'https://imdb-api.com/images/original/MV5BMTUzMjg1NzIyOV5BMl5BanBnXkFtZTYwMzg2Mjgy._V1_Ratio1.0000_AL_.jpg', 1),
(2, 'Elliot Page', 'https://imdb-api.com/images/original/MV5BMjI0MTg3MzI0M15BMl5BanBnXkFtZTcwMzQyODU2Mw@@._V1_Ratio1.0000_AL_.jpg', 1),
(3, 'long', 'https://w7.pngwing.com/pngs/654/749/png-transparent-ryan-coogler-black-panther-film-director-marvel-cinematic-universe-oscars-microphone-fictional-characters-business.png', 2),
(4, 'Martin', 'https://kenh14cdn.com/203336854389633024/2021/11/21/8cc84f5d0cb28d10e6a1c3c559-16374858355601187344695.jpg', 3),
(5, 'Aderson', 'https://kenh14cdn.com/203336854389633024/2021/11/21/3ce2485bb58b86e39e08d2e4ad-16374858355601669824359.jpg', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedbackfilm`
--

CREATE TABLE `feedbackfilm` (
  `idFeedBack` int(11) NOT NULL,
  `ratingFeedBack` float NOT NULL,
  `commentFeedBack` varchar(255) NOT NULL,
  `idPhim` int(11) NOT NULL,
  `tenDangNhap` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `feedbackfilm`
--

INSERT INTO `feedbackfilm` (`idFeedBack`, `ratingFeedBack`, `commentFeedBack`, `idPhim`, `tenDangNhap`) VALUES
(1, 0.5, 'rất hay đó', 1, 'vũ '),
(84, 4, 'phim quá hay ', 2, 'k'),
(85, 4.5, 'phim hay', 3, 'long vũ văn'),
(86, 2.5, 'phim không hay lắm', 4, 'thắng'),
(87, 4, 'phim bình thường', 1, 'đạt'),
(91, 5, 'hay', 0, ''),
(92, 0, '', 0, ''),
(93, 0, '', 0, ''),
(94, 0, '', 0, ''),
(95, 0, '', 0, ''),
(96, 0, '', 0, ''),
(97, 0, '', 0, ''),
(98, 0, '', 0, ''),
(99, 0, '', 0, ''),
(100, 0, '', 0, ''),
(101, 0, '', 0, ''),
(102, 0, '', 0, ''),
(103, 0, '', 0, ''),
(104, 5, 'aaaaaaaaaaaa', 0, ''),
(105, 4.5, 'như l', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ghe`
--

CREATE TABLE `ghe` (
  `idGhe` varchar(50) NOT NULL,
  `loaiGhe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ghe`
--

INSERT INTO `ghe` (`idGhe`, `loaiGhe`) VALUES
('01A', 'Normal'),
('01B', 'Normal'),
('01C', 'Normal'),
('01D', 'Normal'),
('01E', 'Normal'),
('01F', 'Normal'),
('01G', 'Normal'),
('01H', 'Normal'),
('01I', 'Normal'),
('01J', 'Normal'),
('02A', 'Normal'),
('02B', 'Normal'),
('02C', 'Normal'),
('02D', 'Normal'),
('02E', 'Normal'),
('02F', 'Normal'),
('02G', 'Normal'),
('02H', 'Normal'),
('02I', 'Normal'),
('02J', 'Normal'),
('03A', 'Normal'),
('03B', 'Normal'),
('03C', 'VIP'),
('03D', 'VIP'),
('03E', 'VIP'),
('03F', 'VIP'),
('03G', 'VIP'),
('03H', 'VIP'),
('03I', 'VIP'),
('03J', 'Normal'),
('04A', 'Normal'),
('04B', 'Normal'),
('04C', 'VIP'),
('04D', 'VIP'),
('04E', 'VIP'),
('04F', 'VIP'),
('04G', 'VIP'),
('04H', 'VIP'),
('04I', 'VIP'),
('04J', 'Normal'),
('05A', 'Normal'),
('05B', 'Normal'),
('05C', 'VIP'),
('05D', 'VIP'),
('05E', 'VIP'),
('05F', 'VIP'),
('05G', 'VIP'),
('05H', 'VIP'),
('05I', 'VIP'),
('05J', 'Normal'),
('06A', 'Normal'),
('06B', 'Normal'),
('06C', 'VIP'),
('06D', 'VIP'),
('06E', 'VIP'),
('06F', 'VIP'),
('06G', 'VIP'),
('06H', 'VIP'),
('06I', 'VIP'),
('06J', 'Normal'),
('07A', 'Normal'),
('07B', 'Normal'),
('07C', 'VIP'),
('07D', 'VIP'),
('07E', 'VIP'),
('07F', 'VIP'),
('07G', 'VIP'),
('07H', 'VIP'),
('07I', 'VIP'),
('07J', 'Normal'),
('08A', 'Normal'),
('08B', 'Normal'),
('08C', 'VIP'),
('08D', 'VIP'),
('08E', 'VIP'),
('08F', 'VIP'),
('08G', 'VIP'),
('08H', 'VIP'),
('08I', 'VIP'),
('08J', 'Normal'),
('09A', 'Normal'),
('09B', 'Normal'),
('09C', 'VIP'),
('09D', 'VIP'),
('09E', 'VIP'),
('09F', 'VIP'),
('09G', 'VIP'),
('09H', 'VIP'),
('09I', 'VIP'),
('09J', 'Normal'),
('10A', 'Normal'),
('10B', 'Normal'),
('10C', 'VIP'),
('10D', 'VIP'),
('10E', 'VIP'),
('10F', 'VIP'),
('10G', 'VIP'),
('10H', 'VIP'),
('10I', 'VIP'),
('10J', 'Normal'),
('11A', 'Normal'),
('11B', 'Normal'),
('11C', 'Normal'),
('11D', 'Normal'),
('11E', 'Normal'),
('11F', 'Normal'),
('11G', 'Normal'),
('11H', 'Normal'),
('11I', 'Normal'),
('11J', 'Normal'),
('12A', 'Normal'),
('12B', 'Normal'),
('12C', 'Normal'),
('12D', 'Normal'),
('12E', 'Normal'),
('12F', 'Normal'),
('12G', 'Normal'),
('12H', 'Normal'),
('12I', 'Normal'),
('12J', 'Normal');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khunggio`
--

CREATE TABLE `khunggio` (
  `idKhunggio` int(11) NOT NULL,
  `khungGio` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khunggio`
--

INSERT INTO `khunggio` (`idKhunggio`, `khungGio`) VALUES
(1, '11:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichchieu`
--

CREATE TABLE `lichchieu` (
  `idLichchieu` int(11) NOT NULL,
  `idPhong` int(11) NOT NULL,
  `idKhunggio` int(11) NOT NULL,
  `idPhim` int(11) NOT NULL,
  `ngayChieu` date NOT NULL,
  `giaMacDinh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lichchieu`
--

INSERT INTO `lichchieu` (`idLichchieu`, `idPhong`, `idKhunggio`, `idPhim`, `ngayChieu`, `giaMacDinh`) VALUES
(1, 1, 1, 1, '2022-06-28', 100000),
(2, 2, 1, 2, '2022-06-28', 110000),
(3, 3, 1, 2, '2022-06-28', 80000),
(4, 9, 1, 1, '2022-06-28', 18000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mac`
--

CREATE TABLE `mac` (
  `idMac` int(11) NOT NULL,
  `tenMac` varchar(50) NOT NULL,
  `iconMac` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `mac`
--

INSERT INTO `mac` (`idMac`, `tenMac`, `iconMac`) VALUES
(1, 'Mác 18', 'http://nguyentrongquang.freevar.com@nguyentrongquang.freevar.com/images/iconmac.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `tenDN` varchar(100) NOT NULL,
  `matKhau` varchar(100) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `hoTen` varchar(100) NOT NULL,
  `ngaySinh` varchar(15) NOT NULL,
  `gioiTinh` varchar(5) NOT NULL,
  `avatar` varchar(500) NOT NULL,
  `maNganhang` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`tenDN`, `matKhau`, `Email`, `hoTen`, `ngaySinh`, `gioiTinh`, `avatar`, `maNganhang`) VALUES
('', '', '', '', '', '', 'http://nguyentrongquang.freevar.com/account/images/', ''),
('01230123', '123', 'hccm0008@gmail.com', 'le quang dao', '16/6/2022', 'Nam', '', ''),
('0123456789', '123', 'quangdao5320@gmail.com', 'dao', '7/5/2022', 'Nam', 'http://nguyentrongquang.freevar.com@nguyentrongquang.freevar.com/account/images/dao%20%281%29.jpg', ''),
('01234567899', '123', 'hccm0008@gmail.com', 'nguyen trong quang', '16/6/2022', 'Nam', '', ''),
('0339297427', '123', 'quangdao5320@gmail.com', 'Lê Quang Đạo', '11/5/2022', 'Nam', '', ''),
('0789149712', 'quangdao5320', '', '', '', 'Nam', '', ''),
('07891497122', '12345', 'quangdao5320@gmail.com', 'dao', '19/5/2022', 'Nam', '', ''),
('1111', '123123', 'quangdao5320@gmail.com', 'dao', '7/5/2022', 'Nam', '', ''),
('123', '1235', 'quangdao5320@gmail.com', 'Hoàng Nam1', '29/6/2022', 'Nam', 'http://nguyentrongquang.freevar.com@nguyentrongquang.freevar.com/account/images/dao%20%281%29.jpg', ''),
('123123', '123', 'eqwe', 'ewqe', '7/5/2022', 'Nam', '', ''),
('k', '1234', 'quang@gmail.com', 'Nguyen Trong Quang', '15/6/2022', 'Nam', '', ''),
('long vũ văn', 'quangdao', 'quangdao5320@gmail.com', 'Lê Quang Đạo', '8/5/2022', 'Nam', '', ''),
('thắng', '123456', 'quangdao5320@gmail.com', 'dao112', '7/5/2022', 'Nam', '', ''),
('vũ', '012345', 'quangdao5320@gmail.com', 'Le Quang Dao', '3/5/2022', 'Nam', '', ''),
('đạt', '123', 'eqwe', 'ewqe', '7/5/2022', 'Nam', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

CREATE TABLE `phim` (
  `idPhim` int(11) NOT NULL,
  `tenPhim` varchar(255) NOT NULL,
  `thoiLuong` int(11) NOT NULL,
  `daoDien` varchar(30) NOT NULL,
  `moTa` text NOT NULL,
  `hinhAnh` text NOT NULL,
  `video` text NOT NULL,
  `ngayPhathanh` date NOT NULL,
  `idTheloai` int(11) NOT NULL,
  `idMac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phim`
--

INSERT INTO `phim` (`idPhim`, `tenPhim`, `thoiLuong`, `daoDien`, `moTa`, `hinhAnh`, `video`, `ngayPhathanh`, `idTheloai`, `idMac`) VALUES
(1, 'Venom 2', 97, 'Andy Serkis', 'Venom 2: Đối mặt tử thù - Venom: Let There Be Carnage là bộ phim siêu anh hùng của Mỹ được ra mắt vào năm 2021. Bộ phim do Columbia Pictures cùng với Marvel và Tencent Pictures đồng sản xuất. Bộ phim được đạo diễn bởi Andy Serkis, từ phần kịch bản của Kelly Marcel dựa trên cốt truyện cô viết cùng Hardy. Phim có sự tham gia của các diễn viên Tom Hardy, Michelle Williams, Naomie Harris, Reid Scott, Stephen Graham và Woody Harrelson.', 'http://nguyentrongquang.freevar.com/images/filmvenom.png\r\n', 'rrwBnlYOp4g', '2022-04-24', 1, 1),
(2, 'NGHỀ SIÊU DỄ', 113, 'Võ Thanh Hòa', 'Ông Thái là một cảnh sát về hưu nhưng không chịu an phận thủ thường, hàng ngày vẫn đi tìm bắt tội phạm vặt trong xóm cho đỡ nhớ nghề. Một ngày kia, Hoàng - tên trùm ma túy mới ra tù bỗng dưng chuyển đến xóm ông và mở một văn phòng bất động sản. Nghi ngờ đây là nơi làm ăn phi pháp, ông Thái quyết định âm thầm điều tra. Ông mua lại tiệm cơm tấm đối diện trụ sở của Hoàng để làm nơi theo dõi, đồng thời thu nạp Thu - Phú - Vinh - Mèo, đám thanh niên “bất hảo” trong xóm về quán hỗ trợ buôn bán để rảnh tay \"phá án\". Trớ trêu thay, tiệm cơm bất ngờ nổi tiếng và ăn nên làm ra, khiến cho \"chuyên án đặc biệt\" của ông đứng trước nguy cơ đổ bể.', 'http://nguyentrongquang.freevar.com@nguyentrongquang.freevar.com/images/filmnghesieude.png', 'odb5t4i3EKs', '2022-04-29', 1, 1),
(3, 'MORBIUS', 104, 'Daniel Espinosa', 'Một huyền thoại Marvel mới sắp lộ diện. Là ác nhân hay anh hùng? Sẽ phá hủy hay chữa lành thế giới này? Morbius khởi chiếu tại CGV 01.04.2022', 'http://nguyentrongquang.freevar.com@nguyentrongquang.freevar.com/images/filmmorbius.png', 'L_YG4_68TZc', '2022-04-27', 1, 1),
(4, 'GÁNH NẶNG NGÀN CÂN CỦA TÀI NĂNG KIỆT XUẤT', 106, 'Tom Gormican', 'Nick Cage (do chính Nicolas Cage thủ vai) là diễn viên từng đoạt giải Oscar đang gặp khó khăn về tài chính. Để nhận được khoản thù lao kếch xù 1 triệu USD lẫn giải cứu vợ con mình, anh phải đến dự tiệc sinh nhật của fan cuồng kiêm trùm tội phạm biến thái Javi.', 'http://nguyentrongquang.freevar.com@nguyentrongquang.freevar.com/images/fimganhnangngancan.png', 'BlCrxzu3naM', '2022-04-22', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `idPhong` int(11) NOT NULL,
  `idRap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`idPhong`, `idRap`) VALUES
(1, 1),
(2, 1),
(3, 1),
(9, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quangcao`
--

CREATE TABLE `quangcao` (
  `idAds` int(11) NOT NULL,
  `imgAds` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `quangcao`
--

INSERT INTO `quangcao` (`idAds`, `imgAds`) VALUES
(1, 'http://nguyentrongquang.freevar.com@nguyentrongquang.freevar.com/images/sieucombo1.jpg'),
(2, 'http://nguyentrongquang.freevar.com@nguyentrongquang.freevar.com/images/vephim9k1.jpg'),
(3, 'http://nguyentrongquang.freevar.com@nguyentrongquang.freevar.com/images/veuudai1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rap`
--

CREATE TABLE `rap` (
  `idRap` int(11) NOT NULL,
  `tenRap` varchar(255) NOT NULL,
  `diaChi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `rap`
--

INSERT INTO `rap` (`idRap`, `tenRap`, `diaChi`) VALUES
(1, 'Beta Mỹ Đình', 'Hà Nội'),
(2, 'CGV', 'Hồ Chí Minh'),
(3, 'Beta', 'Đà Nẵng'),
(4, 'CGV', 'Hồ Chí Minh'),
(5, 'BHD', 'Hải Phòng'),
(6, 'CGV', 'Hồ Chí Minh'),
(7, 'CGV', 'Vĩnh Phúc'),
(8, 'CGV', 'Hồ Chí Minh'),
(9, 'Lotte', 'Khánh Hòa'),
(10, 'CGV', 'Hồ Chí Minh'),
(11, 'Vincom', 'Hà Nội'),
(12, 'CGV', 'Hồ Chí Minh'),
(13, 'Beta', 'Thái Nguyên'),
(14, 'CGV', 'Hồ Chí Minh'),
(15, 'PHD', 'Bắc Ninh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sortphim`
--

CREATE TABLE `sortphim` (
  `idPhim` int(11) NOT NULL,
  `tenPhim` varchar(255) NOT NULL,
  `thoiLuong` int(11) NOT NULL,
  `daoDien` varchar(100) NOT NULL,
  `moTa` text NOT NULL,
  `hinhAnh` text NOT NULL,
  `video` text NOT NULL,
  `ngayPhathanh` date NOT NULL,
  `theLoai` text NOT NULL,
  `mac` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sortphim`
--

INSERT INTO `sortphim` (`idPhim`, `tenPhim`, `thoiLuong`, `daoDien`, `moTa`, `hinhAnh`, `video`, `ngayPhathanh`, `theLoai`, `mac`) VALUES
(2, 'NGHỀ SIÊU DỄ', 113, 'Võ Thanh Hòa', 'Ông Thái là một cảnh sát về hưu nhưng không chịu an phận thủ thường, hàng ngày vẫn đi tìm bắt tội phạm vặt trong xóm cho đỡ nhớ nghề. Một ngày kia, Hoàng - tên trùm ma túy mới ra tù bỗng dưng chuyển đến xóm ông và mở một văn phòng bất động sản. Nghi ngờ đây là nơi làm ăn phi pháp, ông Thái quyết định âm thầm điều tra. Ông mua lại tiệm cơm tấm đối diện trụ sở của Hoàng để làm nơi theo dõi, đồng thời thu nạp Thu - Phú - Vinh - Mèo, đám thanh niên “bất hảo” trong xóm về quán hỗ trợ buôn bán để rảnh tay \"phá án\". Trớ trêu thay, tiệm cơm bất ngờ nổi tiếng và ăn nên làm ra, khiến cho \"chuyên án đặc biệt\" của ông đứng trước nguy cơ đổ bể.', 'http://nguyentrongquang.freevar.com@nguyentrongquang.freevar.com/images/filmnghesieude.png', '', '2022-04-29', 'Hành động', 'http://nguyentrongquang.freevar.com@nguyentrongquang.freevar.com/images/iconmac.png'),
(1, 'Venom 2', 97, 'Andy Serkis', 'Venom 2: Đối mặt tử thù - Venom: Let There Be Carnage là bộ phim siêu anh hùng của Mỹ được ra mắt vào năm 2021. Bộ phim do Columbia Pictures cùng với Marvel và Tencent Pictures đồng sản xuất. Bộ phim được đạo diễn bởi Andy Serkis, từ phần kịch bản của Kelly Marcel dựa trên cốt truyện cô viết cùng Hardy. Phim có sự tham gia của các diễn viên Tom Hardy, Michelle Williams, Naomie Harris, Reid Scott, Stephen Graham và Woody Harrelson.', 'http://nguyentrongquang.freevar.com@nguyentrongquang.freevar.com/images/filmvenom.png', '', '2022-04-24', 'Hành động', 'http://nguyentrongquang.freevar.com@nguyentrongquang.freevar.com/images/iconmac.png'),
(3, 'MORBIUS', 104, 'Daniel Espinosa', 'Một huyền thoại Marvel mới sắp lộ diện. Là ác nhân hay anh hùng? Sẽ phá hủy hay chữa lành thế giới này? Morbius khởi chiếu tại CGV 01.04.2022', 'http://nguyentrongquang.freevar.com@nguyentrongquang.freevar.com/images/filmmorbius.png', '', '2022-04-27', 'Hành động', 'http://nguyentrongquang.freevar.com@nguyentrongquang.freevar.com/images/iconmac.png'),
(4, 'GÁNH NẶNG NGÀN CÂN CỦA TÀI NĂNG KIỆT XUẤT', 106, 'Tom Gormican', 'Nick Cage (do chính Nicolas Cage thủ vai) là diễn viên từng đoạt giải Oscar đang gặp khó khăn về tài chính. Để nhận được khoản thù lao kếch xù 1 triệu USD lẫn giải cứu vợ con mình, anh phải đến dự tiệc sinh nhật của fan cuồng kiêm trùm tội phạm biến thái Javi.', 'http://nguyentrongquang.freevar.com@nguyentrongquang.freevar.com/images/fimganhnangngancan.png', '', '2022-04-22', 'Hành động', 'http://nguyentrongquang.freevar.com@nguyentrongquang.freevar.com/images/iconmac.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `idTheloai` int(11) NOT NULL,
  `tenTheloai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`idTheloai`, `tenTheloai`) VALUES
(1, 'Hành động'),
(2, 'Kinh Dị'),
(3, 'Phiêu Lưu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ve`
--

CREATE TABLE `ve` (
  `idVe` int(11) NOT NULL,
  `idLichchieu` int(11) NOT NULL,
  `idGhe` varchar(50) NOT NULL,
  `tinhTrang` bit(1) NOT NULL,
  `tongTien` int(11) NOT NULL,
  `tenDN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ve`
--

INSERT INTO `ve` (`idVe`, `idLichchieu`, `idGhe`, `tinhTrang`, `tongTien`, `tenDN`) VALUES
(1, 1, '01A', b'1', 120000, '123'),
(2, 1, '01B', b'0', 0, NULL),
(3, 1, '01C', b'0', 0, NULL),
(4, 1, '01D', b'1', 200000, '123'),
(5, 1, '01E', b'0', 0, NULL),
(6, 1, '01F', b'0', 0, NULL),
(7, 1, '01G', b'0', 0, NULL),
(8, 1, '01H', b'0', 0, NULL),
(9, 1, '01I', b'0', 0, NULL),
(10, 1, '01J', b'0', 0, NULL),
(11, 1, '02A', b'1', 1200000, '123'),
(12, 1, '02B', b'0', 0, NULL),
(13, 1, '02C', b'0', 0, NULL),
(14, 1, '02D', b'1', 200000, '123'),
(15, 1, '02E', b'0', 0, NULL),
(16, 1, '02F', b'0', 0, NULL),
(17, 1, '02G', b'0', 0, NULL),
(18, 1, '02H', b'0', 0, NULL),
(19, 1, '02I', b'0', 0, NULL),
(20, 1, '02J', b'0', 0, NULL),
(21, 1, '03A', b'0', 0, NULL),
(22, 1, '03B', b'0', 0, NULL),
(23, 1, '03C', b'0', 0, NULL),
(24, 1, '03D', b'0', 0, NULL),
(25, 1, '03E', b'0', 0, NULL),
(26, 1, '03F', b'0', 0, NULL),
(27, 1, '03G', b'0', 0, NULL),
(28, 1, '03H', b'0', 0, NULL),
(29, 1, '03I', b'0', 0, NULL),
(30, 1, '03J', b'0', 0, NULL),
(31, 1, '04A', b'0', 0, NULL),
(32, 1, '04B', b'0', 0, NULL),
(33, 1, '04C', b'0', 0, NULL),
(34, 1, '04D', b'0', 0, NULL),
(35, 1, '04E', b'0', 0, NULL),
(36, 1, '04F', b'0', 0, NULL),
(37, 1, '04G', b'0', 0, NULL),
(38, 1, '04H', b'0', 0, NULL),
(39, 1, '04I', b'0', 0, NULL),
(40, 1, '04J', b'0', 0, NULL),
(41, 1, '05A', b'0', 0, NULL),
(42, 1, '05B', b'0', 0, NULL),
(43, 1, '05C', b'0', 0, NULL),
(44, 1, '05D', b'0', 0, NULL),
(45, 1, '05E', b'1', 240000, '123'),
(46, 1, '05F', b'0', 0, NULL),
(47, 1, '05G', b'0', 0, NULL),
(48, 1, '05H', b'0', 0, NULL),
(49, 1, '05I', b'0', 0, NULL),
(50, 1, '05J', b'0', 0, NULL),
(51, 1, '06A', b'0', 0, NULL),
(52, 1, '06B', b'0', 0, NULL),
(53, 1, '06C', b'0', 0, NULL),
(54, 1, '06D', b'0', 0, NULL),
(55, 1, '06E', b'1', 240000, '123'),
(56, 1, '06F', b'0', 0, NULL),
(57, 1, '06G', b'0', 0, NULL),
(58, 1, '06H', b'0', 0, NULL),
(59, 1, '06I', b'0', 0, NULL),
(60, 1, '06J', b'0', 0, NULL),
(61, 1, '07A', b'0', 0, NULL),
(62, 1, '07B', b'0', 0, NULL),
(63, 1, '07C', b'0', 0, NULL),
(64, 1, '07D', b'0', 0, NULL),
(65, 1, '07E', b'0', 0, NULL),
(66, 1, '07F', b'0', 0, NULL),
(67, 1, '07G', b'0', 0, NULL),
(68, 1, '07H', b'0', 0, NULL),
(69, 1, '07I', b'0', 0, NULL),
(70, 1, '07J', b'0', 0, NULL),
(71, 1, '08A', b'0', 0, NULL),
(72, 1, '08B', b'0', 0, NULL),
(73, 1, '08C', b'0', 0, NULL),
(74, 1, '08D', b'0', 0, NULL),
(75, 1, '08E', b'1', 240000, '123'),
(76, 1, '08F', b'1', 240000, '123'),
(77, 1, '08G', b'0', 0, NULL),
(78, 1, '08H', b'0', 0, NULL),
(79, 1, '08I', b'0', 0, NULL),
(80, 1, '08J', b'0', 0, NULL),
(91, 1, '09A', b'0', 0, NULL),
(92, 1, '09B', b'0', 0, NULL),
(93, 1, '09C', b'0', 0, NULL),
(94, 1, '09D', b'0', 0, NULL),
(95, 1, '09E', b'1', 240000, '123'),
(96, 1, '09F', b'1', 240000, '123'),
(97, 1, '09G', b'0', 0, NULL),
(98, 1, '09H', b'0', 0, NULL),
(99, 1, '09I', b'0', 0, NULL),
(100, 1, '09J', b'0', 0, NULL),
(101, 1, '10A', b'0', 0, NULL),
(102, 1, '10B', b'0', 0, NULL),
(103, 1, '10C', b'0', 0, NULL),
(104, 1, '10D', b'0', 0, NULL),
(105, 1, '10E', b'0', 0, NULL),
(106, 1, '10F', b'0', 0, NULL),
(107, 1, '10G', b'0', 0, NULL),
(108, 1, '10H', b'0', 0, NULL),
(109, 1, '10I', b'0', 0, NULL),
(110, 1, '10J', b'0', 0, NULL),
(111, 1, '11A', b'0', 0, NULL),
(112, 1, '11B', b'0', 0, NULL),
(113, 1, '11C', b'0', 0, NULL),
(114, 1, '11D', b'0', 0, NULL),
(115, 1, '11E', b'0', 0, NULL),
(116, 1, '11F', b'0', 0, NULL),
(117, 1, '11G', b'0', 0, NULL),
(118, 1, '11H', b'0', 0, NULL),
(119, 1, '11I', b'0', 0, NULL),
(120, 1, '11J', b'0', 0, NULL),
(121, 1, '12A', b'0', 0, NULL),
(122, 1, '12B', b'0', 0, NULL),
(123, 1, '12C', b'0', 0, NULL),
(124, 1, '12D', b'0', 0, NULL),
(125, 1, '12E', b'0', 0, NULL),
(126, 1, '12F', b'0', 0, NULL),
(127, 1, '12G', b'0', 0, NULL),
(128, 1, '12H', b'0', 0, NULL),
(129, 1, '12I', b'0', 0, NULL),
(130, 1, '12J', b'0', 0, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dienvien`
--
ALTER TABLE `dienvien`
  ADD PRIMARY KEY (`idDienVien`),
  ADD KEY `FK_Dienvien_phim` (`idPhim`);

--
-- Chỉ mục cho bảng `feedbackfilm`
--
ALTER TABLE `feedbackfilm`
  ADD PRIMARY KEY (`idFeedBack`),
  ADD KEY `FK_Feedback_phim` (`idPhim`),
  ADD KEY `FK_FeedbackFilm_NguoiDung` (`tenDangNhap`);

--
-- Chỉ mục cho bảng `ghe`
--
ALTER TABLE `ghe`
  ADD PRIMARY KEY (`idGhe`);

--
-- Chỉ mục cho bảng `khunggio`
--
ALTER TABLE `khunggio`
  ADD PRIMARY KEY (`idKhunggio`);

--
-- Chỉ mục cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  ADD PRIMARY KEY (`idLichchieu`),
  ADD KEY `FK_Lichchieu_Phong` (`idPhong`),
  ADD KEY `FK_Lichchieu_Khunggio` (`idKhunggio`),
  ADD KEY `FK_Lichchieu_Phim` (`idPhim`);

--
-- Chỉ mục cho bảng `mac`
--
ALTER TABLE `mac`
  ADD PRIMARY KEY (`idMac`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`tenDN`);

--
-- Chỉ mục cho bảng `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`idPhim`),
  ADD KEY `FK_Phim_TheLoai` (`idTheloai`),
  ADD KEY `FK_Phim_Mac` (`idMac`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`idPhong`),
  ADD KEY `FK_Phong_Rap` (`idRap`);

--
-- Chỉ mục cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`idAds`);

--
-- Chỉ mục cho bảng `rap`
--
ALTER TABLE `rap`
  ADD PRIMARY KEY (`idRap`);

--
-- Chỉ mục cho bảng `sortphim`
--
ALTER TABLE `sortphim`
  ADD PRIMARY KEY (`idPhim`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`idTheloai`);

--
-- Chỉ mục cho bảng `ve`
--
ALTER TABLE `ve`
  ADD PRIMARY KEY (`idVe`),
  ADD KEY `FK_Ve_Lichchieu` (`idLichchieu`),
  ADD KEY `FK_Ve_Ghe` (`idGhe`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dienvien`
--
ALTER TABLE `dienvien`
  MODIFY `idDienVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `feedbackfilm`
--
ALTER TABLE `feedbackfilm`
  MODIFY `idFeedBack` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT cho bảng `khunggio`
--
ALTER TABLE `khunggio`
  MODIFY `idKhunggio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  MODIFY `idLichchieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `mac`
--
ALTER TABLE `mac`
  MODIFY `idMac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `phim`
--
ALTER TABLE `phim`
  MODIFY `idPhim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `idAds` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `rap`
--
ALTER TABLE `rap`
  MODIFY `idRap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `idTheloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `ve`
--
ALTER TABLE `ve`
  MODIFY `idVe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dienvien`
--
ALTER TABLE `dienvien`
  ADD CONSTRAINT `R2` FOREIGN KEY (`idPhim`) REFERENCES `phim` (`idPhim`);

--
-- Các ràng buộc cho bảng `feedbackfilm`
--
ALTER TABLE `feedbackfilm`
  ADD CONSTRAINT `FK_FeedbackFilm_NguoiDung` FOREIGN KEY (`tenDangNhap`) REFERENCES `nguoidung` (`tenDN`);

--
-- Các ràng buộc cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  ADD CONSTRAINT `FK_Lichchieu_Khunggio` FOREIGN KEY (`idKhunggio`) REFERENCES `khunggio` (`idKhunggio`),
  ADD CONSTRAINT `FK_Lichchieu_Phim` FOREIGN KEY (`idPhim`) REFERENCES `phim` (`idPhim`),
  ADD CONSTRAINT `FK_Lichchieu_Phong` FOREIGN KEY (`idPhong`) REFERENCES `phong` (`idPhong`);

--
-- Các ràng buộc cho bảng `phim`
--
ALTER TABLE `phim`
  ADD CONSTRAINT `FK_Phim_FeedbackFilm` FOREIGN KEY (`idPhim`) REFERENCES `feedbackfilm` (`idPhim`),
  ADD CONSTRAINT `FK_Phim_Mac` FOREIGN KEY (`idMac`) REFERENCES `mac` (`idMac`),
  ADD CONSTRAINT `FK_Phim_TheLoai` FOREIGN KEY (`idTheloai`) REFERENCES `theloai` (`idTheloai`);

--
-- Các ràng buộc cho bảng `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `FK_Phong_Rap` FOREIGN KEY (`idRap`) REFERENCES `rap` (`idRap`);

--
-- Các ràng buộc cho bảng `ve`
--
ALTER TABLE `ve`
  ADD CONSTRAINT `FK_Ve_Ghe` FOREIGN KEY (`idGhe`) REFERENCES `ghe` (`idGhe`),
  ADD CONSTRAINT `FK_Ve_Lichchieu` FOREIGN KEY (`idLichchieu`) REFERENCES `lichchieu` (`idLichchieu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
