Use [QL_CHDT]

set dateformat dmy
CREATE TABLE TAIKHOAN
(
	MaKH int identity(1,1) PRIMARY KEY NOT NULL,
	Username varchar (20) NOT NULL,
	Pass nvarchar(20),
	Ten NVARCHAR (50),
	Email nvarchar(50),
	SDT nvarchar(11),
	Gioitinh nvarchar(10),
	Quyen int, --Quyen: 1 = Khách hàng, 2 = Quản Lý
)

CREATE TABLE SANPHAM
(
	MaHang int identity(1,1),
	TenHang NVARCHAR (50),
	HangSX NVARCHAR (20),
	Gia int,	
	CONSTRAINT PK_SANPHAM PRIMARY KEY (MaHang)
)

create table THONGSOKYTHUAT
(
	MaTS int identity(1,1) primary key,
	ManHinh nvarchar(100),
	CameraSau nvarchar(100),
	Cameratruoc nvarchar(100),
	Ram nvarchar(100),
	Rom nvarchar(100),
	Pin nvarchar(100),
	MaHang int unique,
	HDH nvarchar(100),
	CONSTRAINT FK_SANPHAM FOREIGN KEY (MaHang) REFERENCES SANPHAM (MaHang)
)

CREATE TABLE HOADON
(
	MaHD int identity(1,1) primary key,
	MaKH int NOT NULL,
	TenKhach NVARCHAR (50),
	NgayBan DATE,
	ThanhTien int,
	CONSTRAINT FK_HOADON FOREIGN KEY (MaKH) REFERENCES TAIKHOAN (MaKH)
)


CREATE TABLE CHITIETHD
(
	MaCTHD int identity (1,1) primary key,
	MaHD int NOT NULL,
	TenHang NVARCHAR (50),
	SoLuong INT,
	ThanhTien int,
	CONSTRAINT FK_CHITIETHD_HOADON FOREIGN KEY (MaHD) REFERENCES HOADON (MaHD),
)


INSERT INTO SANPHAM 
VALUES 
(N'Samsung Galaxy A52',N'SamSung',9490000),
(N'Samsung Galaxy Note 20',N'SamSung',14990000),
(N'Samsung Galaxy S21 Ultra',N'SamSung',21990000),
(N'Samsung Galaxy Z Fold3',N'SamSung',41990000),
(N'Samsung Galaxy Z Fold2',N'SamSung',50000000),

(N'iPhone 11',N'Iphone',14990000),
(N'iPhone 12',N'Iphone',20490000),
(N'iPhone 12 mini',N'Iphone',16490000),
(N'iPhone 12 Pro',N'Iphone',27990000),
(N'iPhone 12 Pro Max',N'Iphone',30990000),

(N'OPPO Find X3 Pro 5G',N'OPPO',23990000),
(N'OPPO Reno5 5G',N'OPPO',10790000),
(N'OPPO Reno6 5G',N'OPPO',12990000),
(N'OPPO Reno6 Z 5G',N'OPPO',9490000),
(N'OPPO A74',N'OPPO',6390000),

(N'Xiaomi Mi 11',N'Xiaomi',16990000),
(N'Xiaomi Mi 11 Lite',N'Xiaomi',7090000),
(N'Xiaomi Redmi 9T',N'Xiaomi',3990000),
(N'Xiaomi Redmi Note 10',N'Xiaomi',5990000),
(N'Xiaomi Redmi Note 10 Pro',N'Xiaomi',7490000),

(N'Vivo V20',N'Vivo',7590000),
(N'Vivo V20 SE',N'Vivo',6290000),
(N'Vivo V21',N'Vivo',8990000),
(N'Vivo Y12s',N'Vivo',3790000),
(N'Vivo Y53s',N'Vivo',6990000),

(N'Nokia 3.4',N'Nokia',2790000),
(N'Nokia 105 Dual SIM',N'Nokia',400000),
(N'Nokia 215',N'Nokia',650000),
(N'Nokia 8000',N'Nokia',1490000),
(N'Nokia C20',N'Nokia',1990000);



insert into TAIKHOAN
values
('vantin','123',N'Võ Văn Tin','vantin@gmail.com','0123456789',N'Nam',1),
('huynhnam','123',N'Lê Huỳnh Nam','huynhnam@gmail.com','0123456789',N'Nam',1),
('giaphuc','123',N'Trần Gia Phúc','giaphuc@gmail.com','0123456789',N'Nam',2)


insert into THONGSOKYTHUAT
VALUES
--iphone
(N'IPS LCD',N'2 camera 12 MP',N'12 MP',N'4 GB',N'64 GB',N'3110 mAh',6,N'IOS 14'),--ip11
(N'OLED6.1"Super Retina XDR',N'2 camera 12 MP',N'12 MP',N'4GB',N'64 GB',N'2815 mAh',7,N'IOS 14'),--ip12
(N'OLED5.4"Super Retina XDR',N'2 camera 12 MP',N'12 MP',N'4GB',N'64 GB',N'2227 mAh',8,N'IOS 14'),--ip12 mini
(N'OLED6.1"Super Retina XDR',N'3 camera 12 MP',N'12 MP',N'6GB',N'128 GB',N'2815 mAh',9,N'IOS 14'),--ip12 pro
(N'OLED6.7"Super Retina XDR',N'3 camera 12 MP',N'12 MP',N'6GB',N'128 GB',N'3687 mAh',10,N'IOS 14'),--ip 12promax
--nokia
(N'IPS LCD6.39"HD+',N'Chính 13 MP & Phụ 5 MP, 2 MP',N'8 MP',N'4 GB',N'64 GB',N'4000 mAh',26,N'Android 10 (Android One)'),--nokia 3.4
(N'TFT LCD1.77"65.536 màu','Không có','Không có','Không có','Không có',N'800 mAh',27,'Không có'),--nokia 105,2sim
(N'TFT LCD1.77"65.536 màu','Không có','Không có',N'128 MB',N'48 MB',N'1020 mAh',28,'Không có'),--nokia 105,4G
(N'TFT LCD2.8"16 triệu màu',N'2 MP','Không có',N'512 MB',N'4 GB',N'1500 mAh',29,'Không có'),--nokia 8000
(N'IPS LCD6.5"HD+',N'5 MP',N'5 MP',N'2 GB',N'32 GB',N'2950 mAh',30,N'Android 11 (Go Edition)'),--nokia c20
--oppo
(N'AMOLED6.43"Full HD+',N'Chính 48 MP & Phụ 2 MP, 2 MP',N'16 MP',N'8 GB',N'128 GB',N'5000 mAh',11,N'Android 11'),--oppo a74
(N'AMOLED6.7"Quad HD+ (2K+)',N'Chính 50 MP & Phụ 50 MP, 13 MP, 3 MP',N'32 MP',N'12 GB',N'256 GB',N'4500 mAh',12,N'Android 11'),--oppo find x3
(N'AMOLED6.43"Full HD+',N'Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP',N'32 MP',N'8 GB',N'128 GB',N'4300 mAh',13,N'Android 11'),--oppo reno 5
(N'AMOLED6.43"Full HD+',N'Chính 64 MP & Phụ 8 MP, 2 MP',N'32 MP',N'8 GB',N'128 GB',N'4300 mAh',14,N'Android 11'),--oppo reno 6
(N'AMOLED6.43"Full HD+',N'Chính 64 MP & Phụ 8 MP, 2 MP',N'32 MP',N'8 GB',N'128 GB',N'4310 mAh',15,N'Android 11'),--oppo reno 6z
--samsung
(N'Super AMOLED6.5"Full HD+',N'Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP',N'32 MP',N'8 GB',N'128 GB',N'4500 mAh',1,N'Android 11'),--samsung a52
(N'Super AMOLED6.7"Full HD+',N'Chính 12 MP & Phụ 64 MP, 12 MP',N'10 MP',N'8 GB',N'256 GB',N'4300 mAh',2,N'Android 10'),--samsung note20
(N'Dynamic AMOLED 2X6.8"Quad HD+ (2K+)',N'Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP',N'10 MP',N'12 GB',N'128 GB',N'5000 mAh',3,N'Android 11'),--samsung s21
(N'Chính: Dynamic AMOLED, Phụ: Super AMOLEDChính 7.59" & Phụ 6.23"Full HD+',N'3 camera 12 MP',N'Trong 10 MP & Ngoài 10 MP',N'12 GB',N'256 GB',N'4500 mAh',4,N'Android 10'),--samsung zf2
(N'Dynamic AMOLED 2X, Chính 6.7" & Phụ 1.9", Full HD+',N'2 camera 12 MP',N'10 MP',N'8 GB',N'128 GB',N'3300 mAh',5,N'Android 11'),--samsung zf3
--vivo
(N'AMOLED6.44"Full HD+',N'Chính 64 MP & Phụ 8 MP, 2 MP',N'44 MP',N'8 GB',N'128 GB',N'4000 mAh',21,N'Android 11'),--vivo v20
(N'AMOLED6.44"Full HD+',N'Chính 48 MP & Phụ 8 MP, 2 MP',N'32 MP',N'8 GB',N'128 GB',N'4100 mAh',22,N'Android 10'),--vivo v20se
(N'AMOLED6.44"Full HD+',N'Chính 64 MP & Phụ 8 MP, 2 MP',N'44 MP',N'8 GB',N'128 GB',N'4000 mAh',23,N'Android 11'),--vivo v21
(N'IPS LCD6.51"HD+',N'Chính 13 MP & Phụ 2 MP',N'8 MP',N'4 GB',N'128 GB',N'5000 mAh',24,N'Android 10'),--vivo y12s
(N'IPS LCD6.58"Full HD+',N'Chính 64 MP & Phụ 2 MP, 2 MP',N'16 MP',N'8 GB',N'128 GB',N'5000 mAh',25,N'Android 11'),--vivo y53s
--xiaomi
(N'AMOLED6.81"Quad HD+ (2K+)',N'Chính 108 MP & Phụ 13 MP, 5 MP',N'20 MP',N'8 GB',N'256 GB',N'4600 mAh',16,N'Android 11'),--xiaomi 11
(N'AMOLED6.55"Full HD+',N'Chính 64 MP & Phụ 8 MP, 5 MP',N'16 MP',N'8 GB',N'128 GB',N'4250 mAh',17,N'Android 11'),--xiaomi 11 lite
(N'IPS LCD6.53"Full HD+',N'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP',N'8 MP',N'6 GB',N'128 GB',N'6000 mAh',18,N'Android 10'),--xiaomi 11 redmi 9t
(N'IPS LCD6.5"Full HD+',N'Chính 48 MP & Phụ 2 MP, 2 MP',N'8 MP',N'4 GB',N'128 GB',N'5000 mAh',19,N'Android 11'),--xiaomi 11 redmi note 10
(N'AMOLED6.67"Full HD+',N'Chính 108 MP & Phụ 8 MP, 5 MP, 2 MP',N'16 MP',N'8 GB',N'128 GB',N'5020 mAh',20,N'Android 11');--xiaomi 11 redmi note 10pro

insert into HOADON output inserted.MaHD
VALUES
(2, N'Lê Huỳnh Nam', '5/3/2022', 2790000),
(2, N'Lê Huỳnh Nam', '5/3/2021', 2790000)

insert into CHITIETHD output inserted.MaCTHD
VALUES
(1, N'Nokia 3.4', 1, 2790000),
(2, N'Nokia 3.4', 1, 2790000)

select * from SANPHAM
select * from THONGSOKYTHUAT
select * from TAIKHOAN
select * from HOADON
select * from CHITIETHD
