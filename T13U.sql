USE [QLBanHangGT_bt]
GO
/****** Object:  Table [dbo].[CHITIETDATHANG]    Script Date: 03/12/2020 7:32:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETDATHANG](
	[SoHoaDon] [int] NOT NULL,
	[MaHang] [varchar](10) NOT NULL,
	[GiaBan] [numeric](10, 2) NULL,
	[SoLuong] [int] NULL DEFAULT ((0)),
	[MucGiamGia] [numeric](10, 2) NULL,
 CONSTRAINT [PK_CHITIETDATHANG_SoHoaDon_MaHang] PRIMARY KEY CLUSTERED 
(
	[SoHoaDon] ASC,
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 03/12/2020 7:32:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[SoHoaDon] [int] NOT NULL,
	[MaKhachHang] [varchar](10) NULL,
	[MaNhanVien] [varchar](10) NULL,
	[NgayDatHang] [datetime] NULL,
	[NgayGiaoHang] [datetime] NULL,
	[NgayChuyenHang] [datetime] NULL,
	[NoiGiaoHang] [nvarchar](80) NULL,
 CONSTRAINT [PK_DONDATHANG_SoHoaDon] PRIMARY KEY CLUSTERED 
(
	[SoHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 03/12/2020 7:32:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKhachHang] [varchar](10) NOT NULL,
	[TenCongTy] [nvarchar](50) NULL,
	[TenGiaoDich] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Email] [varchar](30) NULL,
	[DienThoai] [varchar](15) NULL,
	[Fax] [varchar](15) NULL,
 CONSTRAINT [PK_KHACHHANG_MaKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAIHANG]    Script Date: 03/12/2020 7:32:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAIHANG](
	[MaLoaiHang] [varchar](10) NOT NULL,
	[TenLoaiHang] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LOAIHANG_MaLoaiHang] PRIMARY KEY CLUSTERED 
(
	[MaLoaiHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MATHANG]    Script Date: 03/12/2020 7:32:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MATHANG](
	[MaHang] [varchar](10) NOT NULL,
	[TenHang] [nvarchar](50) NOT NULL,
	[MaCongTy] [varchar](10) NOT NULL,
	[MaLoaiHang] [varchar](10) NULL,
	[SoLuong] [int] NULL CONSTRAINT [DF__MATHANG__SoLuong__164452B1]  DEFAULT ((0)),
	[DonViTinh] [nvarchar](10) NULL,
	[GiaHang] [numeric](10, 2) NULL,
	[GHICHU] [varchar](100) NULL,
 CONSTRAINT [PK_MATHANG_MaHang] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 03/12/2020 7:32:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaCongTy] [varchar](10) NOT NULL,
	[TenCongTy] [nvarchar](50) NULL,
	[TenGiaoDich] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [varchar](15) NULL,
	[Fax] [varchar](15) NULL,
	[Email] [varchar](30) NULL,
 CONSTRAINT [PK_NHACUNGCAP_MaCongTy] PRIMARY KEY CLUSTERED 
(
	[MaCongTy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 03/12/2020 7:32:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNhanVien] [varchar](10) NOT NULL,
	[HoNhanVien] [nvarchar](20) NULL,
	[TenNhanVien] [nvarchar](30) NULL,
	[NgaySinhNV] [datetime] NULL,
	[NgayLamViec] [datetime] NULL,
	[GioiTinh] [nvarchar](4) NULL,
	[DiaChi] [nvarchar](50) NULL CONSTRAINT [DEFAULT_DIACHI]  DEFAULT ('ABC'),
	[DienThoai] [varchar](15) NULL,
	[LuongCoBan] [numeric](10, 2) NULL CONSTRAINT [DEFAULT_LuongCoBan]  DEFAULT ((2500000)),
	[PhuCap] [numeric](10, 2) NULL,
 CONSTRAINT [PK_NHANVIEN_MaKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (1, N'TP01', CAST(4000.00 AS Numeric(10, 2)), 5, CAST(0.00 AS Numeric(10, 2)))
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (1, N'TP02', CAST(180000.00 AS Numeric(10, 2)), 5, CAST(0.05 AS Numeric(10, 2)))
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (1, N'TP03', CAST(12000.00 AS Numeric(10, 2)), 5, CAST(0.00 AS Numeric(10, 2)))
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (1, N'TP06', CAST(3000.00 AS Numeric(10, 2)), 50, CAST(0.00 AS Numeric(10, 2)))
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (1, N'TP07', CAST(40000.00 AS Numeric(10, 2)), 100, CAST(0.00 AS Numeric(10, 2)))
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (2, N'MM01', CAST(340000.00 AS Numeric(10, 2)), 30, CAST(0.10 AS Numeric(10, 2)))
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (2, N'MM02', CAST(500000.00 AS Numeric(10, 2)), 20, CAST(0.20 AS Numeric(10, 2)))
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (3, N'MM01', CAST(340000.00 AS Numeric(10, 2)), 30, CAST(0.10 AS Numeric(10, 2)))
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (3, N'MM02', CAST(500000.00 AS Numeric(10, 2)), 30, CAST(0.10 AS Numeric(10, 2)))
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (4, N'MM01', CAST(340000.00 AS Numeric(10, 2)), 80, CAST(0.10 AS Numeric(10, 2)))
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (5, N'TP03', CAST(3000.00 AS Numeric(10, 2)), 1000, CAST(0.00 AS Numeric(10, 2)))
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (6, N'DT01', CAST(3100000.00 AS Numeric(10, 2)), 2, CAST(0.10 AS Numeric(10, 2)))
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (6, N'DT05', CAST(18000000.00 AS Numeric(10, 2)), 20, CAST(0.10 AS Numeric(10, 2)))
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (7, N'TP03', CAST(3000.00 AS Numeric(10, 2)), 200, CAST(0.00 AS Numeric(10, 2)))
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (8, N'DT04', CAST(20000000.00 AS Numeric(10, 2)), 2, CAST(0.10 AS Numeric(10, 2)))
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (9, N'DC01', CAST(48000.00 AS Numeric(10, 2)), 1000, CAST(0.00 AS Numeric(10, 2)))
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (9, N'DC02', CAST(2000.00 AS Numeric(10, 2)), 1000, CAST(0.00 AS Numeric(10, 2)))
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (9, N'DC03', CAST(7500.00 AS Numeric(10, 2)), 1000, CAST(0.00 AS Numeric(10, 2)))
INSERT [dbo].[CHITIETDATHANG] ([SoHoaDon], [MaHang], [GiaBan], [SoLuong], [MucGiamGia]) VALUES (9, N'TP06', CAST(11111.00 AS Numeric(10, 2)), 0, NULL)
INSERT [dbo].[DONDATHANG] ([SoHoaDon], [MaKhachHang], [MaNhanVien], [NgayDatHang], [NgayGiaoHang], [NgayChuyenHang], [NoiGiaoHang]) VALUES (1, N'1', N'A001', CAST(N'2007-09-20 00:00:00.000' AS DateTime), CAST(N'2007-10-01 00:00:00.000' AS DateTime), CAST(N'1900-01-01 00:00:00.000' AS DateTime), N'Hà Nội')
INSERT [dbo].[DONDATHANG] ([SoHoaDon], [MaKhachHang], [MaNhanVien], [NgayDatHang], [NgayGiaoHang], [NgayChuyenHang], [NoiGiaoHang]) VALUES (2, N'1', N'H001', CAST(N'2007-09-20 00:00:00.000' AS DateTime), CAST(N'2007-10-01 00:00:00.000' AS DateTime), CAST(N'1900-01-01 00:00:00.000' AS DateTime), N'Hà Nội')
INSERT [dbo].[DONDATHANG] ([SoHoaDon], [MaKhachHang], [MaNhanVien], [NgayDatHang], [NgayGiaoHang], [NgayChuyenHang], [NoiGiaoHang]) VALUES (3, N'2', N'H002', CAST(N'2007-09-20 00:00:00.000' AS DateTime), CAST(N'2007-10-01 00:00:00.000' AS DateTime), CAST(N'1900-01-01 00:00:00.000' AS DateTime), N'Sài Gòn')
INSERT [dbo].[DONDATHANG] ([SoHoaDon], [MaKhachHang], [MaNhanVien], [NgayDatHang], [NgayGiaoHang], [NgayChuyenHang], [NoiGiaoHang]) VALUES (4, N'3', N'H003', CAST(N'2007-09-20 00:00:00.000' AS DateTime), CAST(N'2007-10-01 00:00:00.000' AS DateTime), CAST(N'1900-01-01 00:00:00.000' AS DateTime), N'Sài Gòn')
INSERT [dbo].[DONDATHANG] ([SoHoaDon], [MaKhachHang], [MaNhanVien], [NgayDatHang], [NgayGiaoHang], [NgayChuyenHang], [NoiGiaoHang]) VALUES (5, N'4', N'P001', CAST(N'2007-09-20 00:00:00.000' AS DateTime), CAST(N'2007-10-01 00:00:00.000' AS DateTime), CAST(N'1900-01-01 00:00:00.000' AS DateTime), N'Hà Nội')
INSERT [dbo].[DONDATHANG] ([SoHoaDon], [MaKhachHang], [MaNhanVien], [NgayDatHang], [NgayGiaoHang], [NgayChuyenHang], [NoiGiaoHang]) VALUES (6, N'5', N'D001', CAST(N'2007-09-20 00:00:00.000' AS DateTime), CAST(N'2007-10-01 00:00:00.000' AS DateTime), CAST(N'1900-01-01 00:00:00.000' AS DateTime), N'Hà Nội')
INSERT [dbo].[DONDATHANG] ([SoHoaDon], [MaKhachHang], [MaNhanVien], [NgayDatHang], [NgayGiaoHang], [NgayChuyenHang], [NoiGiaoHang]) VALUES (7, N'6', N'M001', CAST(N'2007-09-20 00:00:00.000' AS DateTime), CAST(N'2007-10-01 00:00:00.000' AS DateTime), CAST(N'1900-01-01 00:00:00.000' AS DateTime), N'Hà Nội')
INSERT [dbo].[DONDATHANG] ([SoHoaDon], [MaKhachHang], [MaNhanVien], [NgayDatHang], [NgayGiaoHang], [NgayChuyenHang], [NoiGiaoHang]) VALUES (8, N'2', N'Q001', CAST(N'2007-09-20 00:00:00.000' AS DateTime), CAST(N'2007-10-01 00:00:00.000' AS DateTime), CAST(N'1900-01-01 00:00:00.000' AS DateTime), N'Sài Gòn')
INSERT [dbo].[DONDATHANG] ([SoHoaDon], [MaKhachHang], [MaNhanVien], [NgayDatHang], [NgayGiaoHang], [NgayChuyenHang], [NoiGiaoHang]) VALUES (9, N'3', N'T001', CAST(N'2007-09-20 00:00:00.000' AS DateTime), CAST(N'2007-10-01 00:00:00.000' AS DateTime), CAST(N'1900-01-01 00:00:00.000' AS DateTime), N'Sài Gòn')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenCongTy], [TenGiaoDich], [DiaChi], [Email], [DienThoai], [Fax]) VALUES (N'1', N'Công ty sữa Việt Nam', N'VINAMILK', N'Hà Nội', N'vinamilk@vietnam.com', NULL, N'')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenCongTy], [TenGiaoDich], [DiaChi], [Email], [DienThoai], [Fax]) VALUES (N'2', N'Công ty may mặc Việt Tiến', N'VIETTIEN', N'Sài Gòn', N'viettien@vietnam.com', N'08-808803', N'')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenCongTy], [TenGiaoDich], [DiaChi], [Email], [DienThoai], [Fax]) VALUES (N'3', N'Tổng công ty thực phẩm dinh dưỡng NUTRIFOOD', N'NUTRIFOOD', N'Sài Gòn', N'Nutrifood@vietnam.com', N'08-809890', N'')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenCongTy], [TenGiaoDich], [DiaChi], [Email], [DienThoai], [Fax]) VALUES (N'4', N'Công ty điện máy Hà Nội', N'MACHANOI', N'Hà Nội', N'machanoi@vietnam.com', NULL, N'')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenCongTy], [TenGiaoDich], [DiaChi], [Email], [DienThoai], [Fax]) VALUES (N'5', N'Hãng hàng không Việt Nam', N'VIETNAMAIRLINES', N'Sài Gòn', N'vietnamairlines@vietnam.com', N'08-888888', N'')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenCongTy], [TenGiaoDich], [DiaChi], [Email], [DienThoai], [Fax]) VALUES (N'6', N'Công ty dụng cụ học sinh MIC', N'MIC', N'Hà Nội', N'mic@vietnam.com', N'04-804408', N'')
INSERT [dbo].[LOAIHANG] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'DC', N'Dụng cụ học tập')
INSERT [dbo].[LOAIHANG] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'DT', N'Ðiện tử')
INSERT [dbo].[LOAIHANG] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'MM', N'May mặc')
INSERT [dbo].[LOAIHANG] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'NT', N'Nội thất')
INSERT [dbo].[LOAIHANG] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'TP', N'Thực phẩm')
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'DC01', N'Vở học sinh cao cấp', N'GOL', N'DC', 20000, N'Ram', CAST(48000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'DC02', N'Viết bi học sinh', N'GOL', N'DC', 2000, N'Cây', CAST(2000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'DC03', N'Hộp màu tô', N'GOL', N'DC', 2000, N'Hộp', CAST(7500.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'DC04', N'Viết mực cao cấp', N'GOL', N'DC', 2000, N'Cây', CAST(20000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'DC05', N'Viết chì 2B', N'GOL', N'DC', 2000, N'Cây', CAST(3000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'DC06', N'Viết chì 4B', N'GOL', N'DC', 2000, N'Cây', CAST(6000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'DT01', N'LCD Nec', N'DQV', N'DT', 10, N'Cái', CAST(3100000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'DT02', N'Ổ cứng 80GB', N'DQV', N'DT', 20, N'Cái', CAST(800000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'DT03', N'Bàn phím Mitsumi', N'DQV', N'DT', 20, N'Cái', CAST(150000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'DT04', N'Tivi LCD', N'DQV', N'DT', 10, N'Cái', CAST(20000000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'DT05', N'Máy tính xách tay NEC', N'DQV', N'DT', 60, N'Cái', CAST(18000000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'MM01', N'Đồng phục công sở nữ', N'MVT', N'MM', 140, N'Bộ', CAST(340000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'MM02', N'Veston nam', N'MVT', N'MM', 30, N'Bộ', CAST(500000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'MM03', N'Áo sơ mi nam', N'MVT', N'MM', 20, N'Cái', CAST(75000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'NT01', N'Bàn ghế ăn', N'DAF', N'NT', 20, N'Bộ', CAST(1000000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'NT02', N'Bàn ghế Salon', N'DAF', N'NT', 20, N'Bộ', CAST(150000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'TP01', N'Sửa hộp XYZ', N'VNM', N'TP', 10, N'Hộp', CAST(4000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'TP02', N'Sửa XO', N'VNM', N'TP', 12, N'Hộp', CAST(180000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'TP03', N'Sửa tươi Vinamilk không đường', N'VNM', N'TP', 5000, N'Hộp', CAST(3500.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'TP04', N'Táo', N'SCM', N'TP', 12, N'Ký', CAST(12000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'TP05', N'Cà chua', N'SCM', N'TP', 15, N'Ký', CAST(5000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'TP06', N'Bánh AFC', N'SCM', N'TP', 100, N'Hộp', CAST(3000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[MATHANG] ([MaHang], [TenHang], [MaCongTy], [MaLoaiHang], [SoLuong], [DonViTinh], [GiaHang], [GHICHU]) VALUES (N'TP07', N'Mì tôm A-One', N'SCM', N'TP', 150, N'Thùng', CAST(40000.00 AS Numeric(10, 2)), NULL)
INSERT [dbo].[NHACUNGCAP] ([MaCongTy], [TenCongTy], [TenGiaoDich], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'DAF', N'Nội thất Đài Loan Dafuco', N'DAFUCO', N'Quy Nhơn', N'056-888111', N'', N'dafuco@vietnam.com')
INSERT [dbo].[NHACUNGCAP] ([MaCongTy], [TenCongTy], [TenGiaoDich], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'DQV', N'Công ty máy tính Quang Vũ', N'QUANGVU', N'Quy Nhơn', N'056-888777', N'', N'quangvu@vietnam.com')
INSERT [dbo].[NHACUNGCAP] ([MaCongTy], [TenCongTy], [TenGiaoDich], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'GOL', N'Công ty sản xuất dụng cụ học sinh Golden', N'GOLDEN', N'Quy Nhơn', N'056-891135', N'', N'golden@vietnam.com')
INSERT [dbo].[NHACUNGCAP] ([MaCongTy], [TenCongTy], [TenGiaoDich], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'MVT', N'Công ty may mặc Việt Tiến', N'VIETTIEN', N'Sài Gòn', N'08-808803', N'', N'viettien@vietnam.com')
INSERT [dbo].[NHACUNGCAP] ([MaCongTy], [TenCongTy], [TenGiaoDich], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'SCM', N'Siêu thị Coop-mart', N'COOPMART', N'Quy Nhơn', N'056-888666', N'', N'coopmart@vietnam.com')
INSERT [dbo].[NHACUNGCAP] ([MaCongTy], [TenCongTy], [TenGiaoDich], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'VNM', N'Công ty sữa Việt Nam', N'VINAMILK', N'Hà Nội', N'04-891135', N'', N'vinamilk@vietnam.com')
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [HoNhanVien], [TenNhanVien], [NgaySinhNV], [NgayLamViec], [GioiTinh], [DiaChi], [DienThoai], [LuongCoBan], [PhuCap]) VALUES (N'A001', N'Đậu Tố', N'Anh', CAST(N'1986-03-07 00:00:00.000' AS DateTime), CAST(N'2009-03-01 00:00:00.000' AS DateTime), N'Nữ', N'Quy Nhơn', N'056-647995', CAST(10000000.00 AS Numeric(10, 2)), CAST(1000000.00 AS Numeric(10, 2)))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [HoNhanVien], [TenNhanVien], [NgaySinhNV], [NgayLamViec], [GioiTinh], [DiaChi], [DienThoai], [LuongCoBan], [PhuCap]) VALUES (N'D001', N'Nguyễn Minh', N'Đăng', CAST(N'1987-12-29 00:00:00.000' AS DateTime), CAST(N'2009-03-01 00:00:00.000' AS DateTime), N'Nam', N'Quy Nhơn', N'0905-779919', CAST(14000000.00 AS Numeric(10, 2)), CAST(0.00 AS Numeric(10, 2)))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [HoNhanVien], [TenNhanVien], [NgaySinhNV], [NgayLamViec], [GioiTinh], [DiaChi], [DienThoai], [LuongCoBan], [PhuCap]) VALUES (N'H001', N'Lê Thị Bích', N'Hoa', CAST(N'1986-05-20 00:00:00.000' AS DateTime), CAST(N'2009-03-01 00:00:00.000' AS DateTime), N'Nữ', N'An Khê', N'', CAST(9000000.00 AS Numeric(10, 2)), CAST(1000000.00 AS Numeric(10, 2)))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [HoNhanVien], [TenNhanVien], [NgaySinhNV], [NgayLamViec], [GioiTinh], [DiaChi], [DienThoai], [LuongCoBan], [PhuCap]) VALUES (N'H002', N'Ông Hoàng', N'Hải', CAST(N'1987-08-11 00:00:00.000' AS DateTime), CAST(N'2009-03-01 00:00:00.000' AS DateTime), N'Nam', N'Đà Nẵng', N'0905-611725', CAST(12000000.00 AS Numeric(10, 2)), CAST(0.00 AS Numeric(10, 2)))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [HoNhanVien], [TenNhanVien], [NgaySinhNV], [NgayLamViec], [GioiTinh], [DiaChi], [DienThoai], [LuongCoBan], [PhuCap]) VALUES (N'H003', N'Trần Nguyễn Đức', N'Hoàng', CAST(N'1986-04-09 00:00:00.000' AS DateTime), CAST(N'2009-03-01 00:00:00.000' AS DateTime), N'Nam', N'Quy Nhơn', N'', CAST(11000000.00 AS Numeric(10, 2)), CAST(0.00 AS Numeric(10, 2)))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [HoNhanVien], [TenNhanVien], [NgaySinhNV], [NgayLamViec], [GioiTinh], [DiaChi], [DienThoai], [LuongCoBan], [PhuCap]) VALUES (N'M001', N'Hồ Thị Phương', N'Mai', CAST(N'1987-09-14 00:00:00.000' AS DateTime), CAST(N'2009-03-01 00:00:00.000' AS DateTime), N'Nữ', N'Tây Sơn', N'', CAST(9000000.00 AS Numeric(10, 2)), CAST(500000.00 AS Numeric(10, 2)))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [HoNhanVien], [TenNhanVien], [NgaySinhNV], [NgayLamViec], [GioiTinh], [DiaChi], [DienThoai], [LuongCoBan], [PhuCap]) VALUES (N'P001', N'Nguyễn Hoài', N'Phong', CAST(N'1986-06-14 00:00:00.000' AS DateTime), CAST(N'2009-03-01 00:00:00.000' AS DateTime), N'Nam', N'Quy Nhơn', N'056-891135', CAST(13000000.00 AS Numeric(10, 2)), CAST(0.00 AS Numeric(10, 2)))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [HoNhanVien], [TenNhanVien], [NgaySinhNV], [NgayLamViec], [GioiTinh], [DiaChi], [DienThoai], [LuongCoBan], [PhuCap]) VALUES (N'Q001', N'Trương Thị Thế', N'Quang', CAST(N'1987-06-17 00:00:00.000' AS DateTime), CAST(N'2009-03-01 00:00:00.000' AS DateTime), N'Nam', N'Ayunpa', N'0979-792176', CAST(10000000.00 AS Numeric(10, 2)), CAST(500000.00 AS Numeric(10, 2)))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [HoNhanVien], [TenNhanVien], [NgaySinhNV], [NgayLamViec], [GioiTinh], [DiaChi], [DienThoai], [LuongCoBan], [PhuCap]) VALUES (N'T001', N'Nguyễn Đức', N'Thắng', CAST(N'1984-09-13 00:00:00.000' AS DateTime), CAST(N'2009-03-01 00:00:00.000' AS DateTime), N'Nam', N'Phù Mỹ', N'0955-593893', CAST(1200000.00 AS Numeric(10, 2)), CAST(0.00 AS Numeric(10, 2)))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [HoNhanVien], [TenNhanVien], [NgaySinhNV], [NgayLamViec], [GioiTinh], [DiaChi], [DienThoai], [LuongCoBan], [PhuCap]) VALUES (N'T002', N'THU', N'ABC', NULL, CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(2500000.00 AS Numeric(10, 2)), CAST(2222.00 AS Numeric(10, 2)))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [HoNhanVien], [TenNhanVien], [NgaySinhNV], [NgayLamViec], [GioiTinh], [DiaChi], [DienThoai], [LuongCoBan], [PhuCap]) VALUES (N'T003', NULL, NULL, NULL, NULL, NULL, N'ABC', NULL, CAST(2500000.00 AS Numeric(10, 2)), NULL)
ALTER TABLE [dbo].[CHITIETDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDATHANG_MaHang] FOREIGN KEY([MaHang])
REFERENCES [dbo].[MATHANG] ([MaHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETDATHANG] CHECK CONSTRAINT [FK_CHITIETDATHANG_MaHang]
GO
ALTER TABLE [dbo].[CHITIETDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDATHANG_SoHoaDon] FOREIGN KEY([SoHoaDon])
REFERENCES [dbo].[DONDATHANG] ([SoHoaDon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETDATHANG] CHECK CONSTRAINT [FK_CHITIETDATHANG_SoHoaDon]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_MaKhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACHHANG] ([MaKhachHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_MaKhachHang]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_MaNhanVien]
GO
ALTER TABLE [dbo].[MATHANG]  WITH CHECK ADD  CONSTRAINT [FK_MATHANG_MaCongTy] FOREIGN KEY([MaCongTy])
REFERENCES [dbo].[NHACUNGCAP] ([MaCongTy])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MATHANG] CHECK CONSTRAINT [FK_MATHANG_MaCongTy]
GO
ALTER TABLE [dbo].[MATHANG]  WITH CHECK ADD  CONSTRAINT [FK_MATHANG_MaLoaiHang] FOREIGN KEY([MaLoaiHang])
REFERENCES [dbo].[LOAIHANG] ([MaLoaiHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MATHANG] CHECK CONSTRAINT [FK_MATHANG_MaLoaiHang]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [Check_GioiTinh] CHECK  (([gioitinh]=N'Nữ' OR [gioitinh]='Nam'))
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [Check_GioiTinh]
GO
