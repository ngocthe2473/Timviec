-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: mariadb-1
-- Thời gian đã tạo: Th3 17, 2024 lúc 10:03 AM
-- Phiên bản máy phục vụ: 11.3.2-MariaDB-1:11.3.2+maria~ubu2204
-- Phiên bản PHP: 8.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `TimViec`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`email`, `password`, `role`) VALUES
('admin@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Admin'),
('ccc@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Employer'),
('doandat943@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'User'),
('emp1@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Employer'),
('emp2@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Employer'),
('emp3@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Employer'),
('emp4@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Employer'),
('GrapVinh@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'User'),
('nhatuyendung1@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Employer'),
('user1@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'User'),
('user2@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'User'),
('user3@gmai.com', '8cb2237d0679ca88db6464eac60da96345513964', 'User'),
('user4@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'User'),
('zeus1@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'User');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employer`
--

CREATE TABLE `employer` (
  `contact_name` varchar(200) NOT NULL,
  `employer_name` varchar(200) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL DEFAULT 'ic4.png',
  `city` varchar(45) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `employer`
--

INSERT INTO `employer` (`contact_name`, `employer_name`, `phone`, `address`, `image`, `city`, `email`) VALUES
('Vãi linh h', 'Haha', '0982394327', 'Nghi Long, Nghi Lộc', 'home-credit.png', 'Hà nội', 'ccc@gmail.com'),
('Lê Thị Hoa', 'Home Credit', '0123456789', 'Tầng 12, Tòa nhà Viet Tower, số 1, 2 Thái Hà, Phường Trung Liệt, Quận Đống đa, Hà Nội', 'home-credit.png', 'Hà Nội', 'emp1@gmail.com'),
('Nguyễn Văn An', 'FPT Software', '0123456789', 'FPT Complex, đường Nam Kỳ Khởi Nghĩa, phường Hoà Hải, quận Ngũ Hành Sơn, Đà Nẵng', 'fpt-logo.png', 'Đà Nẵng', 'emp2@gmail.com'),
('Trần Phương Bình', 'Grab', '0123456789', 'Tòa nhà Mapletree Business Centre, 1060 Nguyễn Văn Linh, Phường Tân Phong, Quận 7, Thành phố Hồ Chí Minh', 'grab-vietnam.png', 'Hồ Chí Minh', 'emp3@gmail.com'),
('LOUIS VUITION', 'LOUIS VUITION', '0123456789', 'Unit G-02/03 tầng trệt; Unit 01-02 tầng hai, Tòa nhà International Centre Hà Nội, Việt Nam', 'R.png', '1', 'emp4@gmail.com'),
('Nguyễn Văn B', 'GRAP', '0988766655', 'Số 10, Ngõ 3, Võ Thị Sáu, Phường Bến Thủy, TP Vinh, Nghệ An', '', '19', 'GrapVinh@gmail.com'),
('Nhà tuyển dụng 1', 'Nhà tuyển dụng 1', '0123456789', 'Số 10, Ngõ 3, Võ Thị Sáu, Phường Bến Thủy, TP Vinh, Nghệ An', 'AAAA', '1', 'nhatuyendung1@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job`
--

CREATE TABLE `job` (
  `job_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `job_require` longtext NOT NULL,
  `interest` longtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `max_salary` double NOT NULL,
  `min_salary` double NOT NULL,
  `profession` varchar(100) NOT NULL,
  `due_date` varchar(50) NOT NULL,
  `confirm` tinyint(4) NOT NULL DEFAULT 0,
  `city` varchar(45) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `job`
--

INSERT INTO `job` (`job_id`, `title`, `description`, `job_require`, `interest`, `quantity`, `max_salary`, `min_salary`, `profession`, `due_date`, `confirm`, `city`, `email`) VALUES
(35, 'Nhân Viên Tư Vấn Trả Góp', 'Tư vấn gói vay trả góp sản phẩm tại các cửa hàng đối tác liên kết của Home Credit.\n Tìm kiếm khách hàng mới và chăm sóc khách hàng cũ.\n 50% trực cửa hàng, 50% hỗ trở di chuyển làm hợp đồng cho khách hàng.\n Hướng dẫn khách hàng hoàn tất hợp đồng.\n Thời gian làm việc linh hoạt: 8 tiếng/ngày, nghỉ 1 ngày/ tuần', 'Nam/Nữ, từ 18 – 33 tuổi.\n Yêu thích công việc bán hàng, tư vấn và chăm sóc khách hàng, thu nhập không giới hạn.\n Giao tiếp tốt, có kỹ năng thuyết phục.\n Cẩn thận, trung thực, chịu khó', 'Thu nhập từ 10.000.000 - 20.000.000 đồng/tháng (hưởng 100% lương trong 2 tháng thử việc).\n Thưởng doanh số hàng tháng theo năng lực cá nhân.\n Được đào tạo nghiệp vụ (có lương) & Lộ trình thăng tiến rõ ràng.\n Lương tháng 13', 10, 80000, 80000, 'Tài Chính', '2024/12/31', 1, 'Hà Nội', 'ccc@gmail.com'),
(36, 'Nhân Viên Hỗ Trợ Kinh Doanh', 'Tư vấn gói vay trả góp sản phẩm tại các cửa hàng đối tác liên kết của Home Credit.\n Tìm kiếm khách hàng mới và chăm sóc khách hàng cũ.\n 50% trực cửa hàng, 50% hỗ trở di chuyển làm hợp đồng cho khách hàng.\n Hướng dẫn khách hàng hoàn tất hợp đồng.\n Thời gian làm việc linh hoạt: 8 tiếng/ngày, nghỉ 1 ngày/ tuần', 'Nam/Nữ, từ 18 – 33 tuổi.\n Yêu thích công việc bán hàng, tư vấn và chăm sóc khách hàng, thu nhập không giới hạn.\n Giao tiếp tốt, có kỹ năng thuyết phục.\n Cẩn thận, trung thực, chịu khó', 'Thu nhập từ 10.000.000 - 20.000.000 đồng/tháng (hưởng 100% lương trong 2 tháng thử việc).\n Thưởng doanh số hàng tháng theo năng lực cá nhân.\n Được đào tạo nghiệp vụ (có lương) & Lộ trình thăng tiến rõ ràng.\n Lương tháng 13', 10, 80000, 80000, 'Tài Chính', '2024/12/31', 0, 'Hà Nội', 'ccc@gmail.com'),
(37, 'Nhân Viên Tư Vấn Bán Hàng', 'Tìm kiếm khách hàng thông qua data công công ty và các nguồn khác nhau, tư vấn sản phẩm đến khách hàng mới và khách hàng cũ.\n- Hỗ trợ giới thiệu, tư vấn gói vay trả góp sản phẩm tại các cửa hàng điện thoại, điện máy, xe máy.\n Telesale khách hàng cũ theo thông tin công ty cung cấp, giới thiệu các chương trình ưu đãi và sản phẩm của Home Credit.\n 60% trực shop, 40% hỗ trợ di chuyển đến khách hàng hoàn tất hợp đồng.\n Thời gian làm việc: 8 tiếng/ngày, nghỉ 1 ngày/ tuần', 'Nam/Nữ, từ 18 – 33 tuổi.\n Yêu thích công việc bán hàng, tư vấn và chăm sóc khách hàng, thu nhập không giới hạn.\n Giao tiếp tốt, có kỹ năng thuyết phục.\n Cẩn thận, trung thực, chịu khó', 'Thu nhập từ 10.000.000 - 20.000.000 đồng/tháng (hưởng 100% lương trong 2 tháng thử việc).\n Thưởng doanh số hàng tháng theo năng lực cá nhân.\n Được đào tạo nghiệp vụ (có lương) & Lộ trình thăng tiến rõ ràng.\n Lương tháng 13', 10, 853000, 83000, 'Tài Chính', '2024/12/31', 1, 'Hà Nội', 'ccc@gmail.com'),
(38, 'Nhân viên chăm sóc khách hàng GRAB', 'Tiếp nhận cuộc gọi đến , giải đáp thắc mắc của khách hàng về dịch vụ booking xe.\n Không call đi , không áp doanh số.\n Chưa có kinh nghiệm sẽ được training.', 'Tốt nghiệp THPT trở lên.\n Nam + Nữ (Tuổi 18t -35t).\n Kỹ năng đánh máy, giao tiếp tốt.', 'Lương TB : 6.700.000 - 7.200,000 ( LCB : 4.700.000 – 5.500.000 + 500.000 tiền ăn + 900.000 – 1.200.000 thưởng doanh số ).\n Được tham gia BH đầy đủ.\n Có thiết bị nhà bếp, giường nằm cho nv nghỉ.\n 14 ngày phép/năm', 4, 43000, 85300, 'Vận tải hành khách', '2024/12/31', 0, 'Hồ Chí Minh', 'ccc@gmail.com'),
(39, 'Giám Sát Vận Hành Đối Tác Tài Xế', 'Trực tiếp điều hành hoạt động vận hành: điều phối tài xế và hàng hóa theo đúng thiết kế của công ty đưa ra. Kiểm soát lấy/giao hàng các chuyến đối tác tài xế mình quản lý chạy.\n Phỏng vấn tuyển dụng, đào tạo, huấn luyện và quản lý đối tác tài xế.\n Quản lý vận hành đối tác tài xế và đảm bảo tuân thủ các chính sách, quy trình và tiêu chuẩn hoạt động dành cho tài xế.\n Xây dựng và quản lý chiến lược phát triển đối tác tài xế.', 'Tuổi từ 25 - 35, tốt nghiệp trung cấp trở lên.\n Có kinh nghiệm 03 năm trong việc quản lý, làm việc trong lĩnh vực last mile delivery.\n Có kiến thức về logistics, giao nhận, thương mại điện tử.\n Ưu tiên các ứng viên làm việc tại các Công ty như Grab, Gojek, Loship, Ahamove, Be, Lalamove.\n Có kỹ năng thuyết trình, huấn luyện, kèm cặp nhân viên;', 'Thu nhập thỏa thuận.\n Lương tháng 13, review lương, quà tết, sinh nhật, 8/3, 20/10.\n Chế độ bảo hiểm đầy đủ theo quy định như: BHXH, BHTN, BHYT.\n Du lịch, hoạt động team building, tất niên,...', 4, 23743, 283423, 'Vận tải hành khách', '2024/12/31', 1, 'Hồ Chí Minh', 'ccc@gmail.com'),
(40, 'Grab Car Driver', 'Trực tiếp điều hành hoạt động vận hành: điều phối tài xế và hàng hóa theo đúng thiết kế của công ty đưa ra. Kiểm soát lấy/giao hàng các chuyến đối tác tài xế mình quản lý chạy.\n Phỏng vấn tuyển dụng, đào tạo, huấn luyện và quản lý đối tác tài xế.\n Quản lý vận hành đối tác tài xế và đảm bảo tuân thủ các chính sách, quy trình và tiêu chuẩn hoạt động dành cho tài xế.\n Xây dựng và quản lý chiến lược phát triển đối tác tài xế.', 'Tuổi từ 25 - 35, tốt nghiệp trung cấp trở lên.\n Có kinh nghiệm 03 năm trong việc quản lý, làm việc trong lĩnh vực last mile delivery.\n Có kiến thức về logistics, giao nhận, thương mại điện tử.\n Ưu tiên các ứng viên làm việc tại các Công ty như Grab, Gojek, Loship, Ahamove, Be, Lalamove.\n Có kỹ năng thuyết trình, huấn luyện, kèm cặp nhân viên;', 'Thu nhập thỏa thuận.\n Lương tháng 13, review lương, quà tết, sinh nhật, 8/3, 20/10.\n Chế độ bảo hiểm đầy đủ theo quy định như: BHXH, BHTN, BHYT.\n Du lịch, hoạt động team building, tất niên,...', 4, 60008, 34534, 'Vận tải hành khách', '2024/12/31', 1, 'Hồ Chí Minh', 'ccc@gmail.com'),
(49, 'GRAP', 'tuyển nhân viên', 'nhanh nhẹn', 'ád', 10, 10000000, 1000000, '17', '2024-02-08', 1, '7', 'emp4@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_app`
--

CREATE TABLE `job_app` (
  `email` varchar(200) NOT NULL,
  `job_id` int(11) NOT NULL,
  `file_cv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `fullname` varchar(100) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `sex` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`fullname`, `phone`, `address`, `sex`, `dob`, `email`) VALUES
('Đạt', '0923423472', 'Nghi Lộc', 'male', '2004-08-23', 'user1@gmail.com'),
('Doãn Đạt', '0989180799', 'Nghi Long', 'male', '2003-09-02', 'doandat943@gmail.com'),
('Nguyễn Văn D', '0988766655', 'Số 10, Ngõ 3, Võ Thị Sáu, Phường Bến Thủy, TP Vinh, Nghệ An', 'male', '2024-01-15', 'user2@gmail.com'),
('Người dùng 3', '0123456789', 'Không biết', 'male', '2024-01-14', 'user3@gmai.com'),
('Nguyễn Văn D', '0988766655', 'Số 10, Ngõ 3, Võ Thị Sáu, Phường Bến Thủy, TP Vinh, Nghệ An', 'female', '2024-01-18', 'user4@gmail.com'),
('Zeus', '123456789', 'Số 10, Ngõ 3, Võ Thị Sáu, Phường Bến Thủy, TP Vinh, Nghệ An', 'male', '2024-02-14', 'zeus1@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`email`),
  ADD KEY `role_id` (`role`);

--
-- Chỉ mục cho bảng `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`email`),
  ADD KEY `emailFK_idx` (`email`);

--
-- Chỉ mục cho bảng `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `comp_id_idx` (`email`);

--
-- Chỉ mục cho bảng `job_app`
--
ALTER TABLE `job_app`
  ADD PRIMARY KEY (`email`,`job_id`),
  ADD KEY `prof_id_idx` (`email`),
  ADD KEY `job_id_idx` (`job_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD KEY `email_pro_idx` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `job`
--
ALTER TABLE `job`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `employer`
--
ALTER TABLE `employer`
  ADD CONSTRAINT `emailFK` FOREIGN KEY (`email`) REFERENCES `account` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `emailx` FOREIGN KEY (`email`) REFERENCES `account` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `job_app`
--
ALTER TABLE `job_app`
  ADD CONSTRAINT `email` FOREIGN KEY (`email`) REFERENCES `account` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_id` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_proFK` FOREIGN KEY (`email`) REFERENCES `account` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
