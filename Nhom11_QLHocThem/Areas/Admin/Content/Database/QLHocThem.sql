USE [QL_HocThem]
GO
/****** Object:  Table [dbo].[BienLaiThuHP]    Script Date: 12/1/2021 8:27:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BienLaiThuHP](
	[MaBLThuHP] [int] IDENTITY(1,1) NOT NULL,
	[TongHocPhi] [int] NULL,
	[NgayThu] [datetime] NULL,
	[ThuChoThangNam] [date] NULL,
	[TrangThai] [bit] NULL,
	[MaHocSinh] [varchar](5) NULL,
 CONSTRAINT [PK__BienLaiT__80CEE2D90F5FF20A] PRIMARY KEY CLUSTERED 
(
	[MaBLThuHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BienLaiTraLuong]    Script Date: 12/1/2021 8:27:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BienLaiTraLuong](
	[MaBLTraLuong] [int] IDENTITY(1,1) NOT NULL,
	[TongLuong] [decimal](10, 0) NULL,
	[NgayTra] [datetime] NULL,
	[TraChoThangNam] [varchar](7) NULL,
	[TrangThai] [bit] NULL,
	[MaGiaoVien] [varchar](5) NULL,
 CONSTRAINT [PK__BienLaiT__B30AAD724B5DABEC] PRIMARY KEY CLUSTERED 
(
	[MaBLTraLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BuoiHoc]    Script Date: 12/1/2021 8:27:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BuoiHoc](
	[MaBuoiHoc] [int] IDENTITY(1,1) NOT NULL,
	[NgayHoc] [date] NULL,
	[ThoiGian] [varchar](11) NULL,
	[SoLuongHocSinh] [int] NULL,
	[Vang] [int] NULL,
	[MaLopHoc] [varchar](5) NULL,
 CONSTRAINT [PK__BuoiHoc__5330250649423589] PRIMARY KEY CLUSTERED 
(
	[MaBuoiHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTBienLaiThuHP]    Script Date: 12/1/2021 8:27:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTBienLaiThuHP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaBLThuHP] [int] NULL,
	[MaLopHoc] [varchar](5) NULL,
	[TongSoBuoi] [int] NULL,
	[HocPhi1Buoi] [decimal](10, 0) NULL,
	[ThanhTien] [decimal](10, 0) NULL,
 CONSTRAINT [PK_CTBienLaiThuHP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTBienLaiTraLuong]    Script Date: 12/1/2021 8:27:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTBienLaiTraLuong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaBLTraLuong] [int] NULL,
	[MaLopHoc] [varchar](5) NULL,
	[TongSoBuoi] [int] NULL,
	[Luong1Buoi] [decimal](10, 0) NULL,
	[ThanhTien] [decimal](10, 0) NULL,
 CONSTRAINT [PK_CTBienLaiTraLuong] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiemDanh]    Script Date: 12/1/2021 8:27:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemDanh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaHocSinh] [varchar](5) NULL,
	[MaBuoiHoc] [int] NULL,
	[TichVang] [bit] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK__DiemDanh__3214EC2781349882] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 12/1/2021 8:27:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGiaoVien] [varchar](5) NOT NULL,
	[TenGiaoVien] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [varchar](10) NULL,
	[MaMonHoc] [varchar](5) NULL,
	[MaMTT] [int] NULL,
	[TaiKhoanNganHang] [varchar](20) NULL,
 CONSTRAINT [PK__GiaoVien__8D374F50ED31E25F] PRIMARY KEY CLUSTERED 
(
	[MaGiaoVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 12/1/2021 8:27:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinh](
	[MaHocSinh] [varchar](5) NOT NULL,
	[TenHocSinh] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [varchar](11) NULL,
	[MaMienGiam] [varchar](5) NULL,
	[MaLopHoc] [varchar](5) NULL,
	[IdNguoiDung] [int] NULL,
 CONSTRAINT [PK__HocSinh__90BD01E0D46F00A4] PRIMARY KEY CLUSTERED 
(
	[MaHocSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocSinh_LopHoc]    Script Date: 12/1/2021 8:27:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinh_LopHoc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaHocSinh] [varchar](5) NULL,
	[MaLopHoc] [varchar](5) NULL,
 CONSTRAINT [PK_HocSinh_LopHoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHoc]    Script Date: 12/1/2021 8:27:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHoc](
	[MaLopHoc] [varchar](5) NOT NULL,
	[TenLopHoc] [nvarchar](50) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[NgayBatDauDangKy] [date] NULL,
	[NgayKetThucDangKy] [date] NULL,
	[SoLuongHocSinh] [int] NULL,
	[HocPhi1Buoi] [decimal](10, 0) NULL,
	[MaGiaoVien] [varchar](5) NULL,
	[MaMonHoc] [varchar](5) NULL,
	[MaNienKhoa] [varchar](5) NULL,
 CONSTRAINT [PK__LopHoc__FEE05784AE614D03] PRIMARY KEY CLUSTERED 
(
	[MaLopHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/1/2021 8:27:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMonHoc] [varchar](5) NOT NULL,
	[TenMonHoc] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK__MonHoc__4127737F9F313C46] PRIMARY KEY CLUSTERED 
(
	[MaMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MucMienGiam]    Script Date: 12/1/2021 8:27:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MucMienGiam](
	[MaMienGiam] [varchar](5) NOT NULL,
	[TyLeMienGiam] [varchar](10) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[TrangThai] [bit] NULL,
	[Mota] [nvarchar](100) NULL,
 CONSTRAINT [PK__MucMienG__04AAD195BD5E21F6] PRIMARY KEY CLUSTERED 
(
	[MaMienGiam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MucThanhToan]    Script Date: 12/1/2021 8:27:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MucThanhToan](
	[MaMTT] [int] IDENTITY(1,1) NOT NULL,
	[TyLePhanTram] [int] NULL,
	[TrinhDo] [nvarchar](30) NULL,
	[KinhNghiem] [int] NULL,
 CONSTRAINT [PK__MucThanh__3AA1CD1CE035A2A5] PRIMARY KEY CLUSTERED 
(
	[MaMTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 12/1/2021 8:27:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [varchar](20) NULL,
	[MatKhau] [varchar](20) NULL,
	[VaiTro] [varchar](20) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NienKhoa]    Script Date: 12/1/2021 8:27:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NienKhoa](
	[MaNienKhoa] [varchar](5) NOT NULL,
	[TenNienKhoa] [nvarchar](20) NULL,
	[NamHoc] [varchar](10) NULL,
 CONSTRAINT [PK__NienKhoa__6F040C38B5E4AC23] PRIMARY KEY CLUSTERED 
(
	[MaNienKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BienLaiThuHP] ON 

INSERT [dbo].[BienLaiThuHP] ([MaBLThuHP], [TongHocPhi], [NgayThu], [ThuChoThangNam], [TrangThai], [MaHocSinh]) VALUES (1, NULL, NULL, CAST(N'2021-09-01' AS Date), NULL, NULL)
SET IDENTITY_INSERT [dbo].[BienLaiThuHP] OFF
GO
SET IDENTITY_INSERT [dbo].[BienLaiTraLuong] ON 

INSERT [dbo].[BienLaiTraLuong] ([MaBLTraLuong], [TongLuong], [NgayTra], [TraChoThangNam], [TrangThai], [MaGiaoVien]) VALUES (1, NULL, NULL, N'12/1/20', 1, N'1')
INSERT [dbo].[BienLaiTraLuong] ([MaBLTraLuong], [TongLuong], [NgayTra], [TraChoThangNam], [TrangThai], [MaGiaoVien]) VALUES (2, CAST(200000 AS Decimal(10, 0)), NULL, N'12/1/20', 1, N'1')
INSERT [dbo].[BienLaiTraLuong] ([MaBLTraLuong], [TongLuong], [NgayTra], [TraChoThangNam], [TrangThai], [MaGiaoVien]) VALUES (3, CAST(16000 AS Decimal(10, 0)), CAST(N'2021-12-23T00:00:00.000' AS DateTime), N'2', 1, N'2')
INSERT [dbo].[BienLaiTraLuong] ([MaBLTraLuong], [TongLuong], [NgayTra], [TraChoThangNam], [TrangThai], [MaGiaoVien]) VALUES (4, CAST(10000 AS Decimal(10, 0)), CAST(N'2020-12-01T00:00:00.000' AS DateTime), N'1', 1, N'1')
INSERT [dbo].[BienLaiTraLuong] ([MaBLTraLuong], [TongLuong], [NgayTra], [TraChoThangNam], [TrangThai], [MaGiaoVien]) VALUES (5, CAST(16000 AS Decimal(10, 0)), CAST(N'2020-12-01T00:00:00.000' AS DateTime), N'9/2020', 0, N'2')
INSERT [dbo].[BienLaiTraLuong] ([MaBLTraLuong], [TongLuong], [NgayTra], [TraChoThangNam], [TrangThai], [MaGiaoVien]) VALUES (6, CAST(20000 AS Decimal(10, 0)), CAST(N'2021-12-16T00:00:00.000' AS DateTime), N'2021-10', 0, N'1')
INSERT [dbo].[BienLaiTraLuong] ([MaBLTraLuong], [TongLuong], [NgayTra], [TraChoThangNam], [TrangThai], [MaGiaoVien]) VALUES (7, CAST(20000 AS Decimal(10, 0)), CAST(N'2021-12-16T00:00:00.000' AS DateTime), N'2021-07', 0, N'1')
INSERT [dbo].[BienLaiTraLuong] ([MaBLTraLuong], [TongLuong], [NgayTra], [TraChoThangNam], [TrangThai], [MaGiaoVien]) VALUES (8, CAST(10000 AS Decimal(10, 0)), CAST(N'2021-12-11T00:00:00.000' AS DateTime), N'2021-07', 0, N'1')
INSERT [dbo].[BienLaiTraLuong] ([MaBLTraLuong], [TongLuong], [NgayTra], [TraChoThangNam], [TrangThai], [MaGiaoVien]) VALUES (9, CAST(30000 AS Decimal(10, 0)), CAST(N'2021-12-11T00:00:00.000' AS DateTime), N'2021-07', 0, N'1')
INSERT [dbo].[BienLaiTraLuong] ([MaBLTraLuong], [TongLuong], [NgayTra], [TraChoThangNam], [TrangThai], [MaGiaoVien]) VALUES (10, CAST(1800 AS Decimal(10, 0)), CAST(N'2021-12-31T00:00:00.000' AS DateTime), N'2021-11', 0, N'1')
SET IDENTITY_INSERT [dbo].[BienLaiTraLuong] OFF
GO
SET IDENTITY_INSERT [dbo].[BuoiHoc] ON 

INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (23, CAST(N'2021-12-09' AS Date), N'19h40-20h38', 5, 0, N'T1')
INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (24, CAST(N'2021-12-18' AS Date), N'07h40-09h30', 5, 4, N'T1')
INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (25, CAST(N'2021-12-18' AS Date), N'19h40-20h38', 5, 2, N'T1')
SET IDENTITY_INSERT [dbo].[BuoiHoc] OFF
GO
SET IDENTITY_INSERT [dbo].[CTBienLaiTraLuong] ON 

INSERT [dbo].[CTBienLaiTraLuong] ([ID], [MaBLTraLuong], [MaLopHoc], [TongSoBuoi], [Luong1Buoi], [ThanhTien]) VALUES (1, 1, N'T1', 10, NULL, NULL)
INSERT [dbo].[CTBienLaiTraLuong] ([ID], [MaBLTraLuong], [MaLopHoc], [TongSoBuoi], [Luong1Buoi], [ThanhTien]) VALUES (2, 2, N'T1', 10, CAST(1000 AS Decimal(10, 0)), CAST(10000 AS Decimal(10, 0)))
INSERT [dbo].[CTBienLaiTraLuong] ([ID], [MaBLTraLuong], [MaLopHoc], [TongSoBuoi], [Luong1Buoi], [ThanhTien]) VALUES (3, 3, N'V1', 4, CAST(2000 AS Decimal(10, 0)), CAST(8000 AS Decimal(10, 0)))
INSERT [dbo].[CTBienLaiTraLuong] ([ID], [MaBLTraLuong], [MaLopHoc], [TongSoBuoi], [Luong1Buoi], [ThanhTien]) VALUES (4, 4, N'T1', 10, CAST(1000 AS Decimal(10, 0)), CAST(10000 AS Decimal(10, 0)))
INSERT [dbo].[CTBienLaiTraLuong] ([ID], [MaBLTraLuong], [MaLopHoc], [TongSoBuoi], [Luong1Buoi], [ThanhTien]) VALUES (5, 5, N'V1', 4, CAST(2000 AS Decimal(10, 0)), CAST(8000 AS Decimal(10, 0)))
INSERT [dbo].[CTBienLaiTraLuong] ([ID], [MaBLTraLuong], [MaLopHoc], [TongSoBuoi], [Luong1Buoi], [ThanhTien]) VALUES (6, 6, N'T1', 10, CAST(1000 AS Decimal(10, 0)), CAST(10000 AS Decimal(10, 0)))
INSERT [dbo].[CTBienLaiTraLuong] ([ID], [MaBLTraLuong], [MaLopHoc], [TongSoBuoi], [Luong1Buoi], [ThanhTien]) VALUES (7, 7, N'T1', 10, CAST(1000 AS Decimal(10, 0)), CAST(10000 AS Decimal(10, 0)))
INSERT [dbo].[CTBienLaiTraLuong] ([ID], [MaBLTraLuong], [MaLopHoc], [TongSoBuoi], [Luong1Buoi], [ThanhTien]) VALUES (8, 8, N'T1', 10, CAST(1000 AS Decimal(10, 0)), CAST(10000 AS Decimal(10, 0)))
INSERT [dbo].[CTBienLaiTraLuong] ([ID], [MaBLTraLuong], [MaLopHoc], [TongSoBuoi], [Luong1Buoi], [ThanhTien]) VALUES (9, 9, N'T1', 8, CAST(1000 AS Decimal(10, 0)), CAST(8000 AS Decimal(10, 0)))
INSERT [dbo].[CTBienLaiTraLuong] ([ID], [MaBLTraLuong], [MaLopHoc], [TongSoBuoi], [Luong1Buoi], [ThanhTien]) VALUES (10, 9, N'T2', 2, CAST(1000 AS Decimal(10, 0)), CAST(2000 AS Decimal(10, 0)))
INSERT [dbo].[CTBienLaiTraLuong] ([ID], [MaBLTraLuong], [MaLopHoc], [TongSoBuoi], [Luong1Buoi], [ThanhTien]) VALUES (11, 10, N'T1', 3, CAST(1000 AS Decimal(10, 0)), CAST(1800 AS Decimal(10, 0)))
SET IDENTITY_INSERT [dbo].[CTBienLaiTraLuong] OFF
GO
SET IDENTITY_INSERT [dbo].[DiemDanh] ON 

INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (27, N'1', 23, NULL, NULL)
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (28, N'2', 23, NULL, NULL)
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (29, N'3', 23, NULL, NULL)
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (30, N'4', 23, NULL, NULL)
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (31, N'5', 23, NULL, NULL)
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (32, N'1', 24, 0, N'')
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (33, N'2', 24, 1, N'')
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (34, N'3', 24, 0, N'')
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (35, N'4', 24, 1, N'')
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (36, N'5', 24, 0, N'')
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (37, N'1', 25, 0, N'')
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (38, N'2', 25, 1, N'')
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (39, N'3', 25, 0, N'')
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (40, N'4', 25, 0, N'')
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (41, N'5', 25, 1, N'')
SET IDENTITY_INSERT [dbo].[DiemDanh] OFF
GO
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMonHoc], [MaMTT], [TaiKhoanNganHang]) VALUES (N'1', N'Nguyễn Văn T', NULL, N'Nam', NULL, NULL, N'1', 1, NULL)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMonHoc], [MaMTT], [TaiKhoanNganHang]) VALUES (N'2', N'Nguyễn Thị V', NULL, N'Nữ', NULL, NULL, N'2', 2, NULL)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMonHoc], [MaMTT], [TaiKhoanNganHang]) VALUES (N'3', N'Trần Thị T', NULL, NULL, NULL, NULL, N'3', 1, NULL)
GO
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'1', N'Nguyễn Quốc T', CAST(N'2021-11-04' AS Date), 1, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'10', N'Nguyễn Quốc D', CAST(N'1900-01-01' AS Date), 1, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'11', N'Trần Thu C', CAST(N'2021-11-05' AS Date), 1, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'12', N'Dương Mạnh C', CAST(N'2021-11-17' AS Date), 1, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'13', N'Trần Thu T', CAST(N'2021-11-05' AS Date), 1, N'abc', N'', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'2', N'Dương Văn V', CAST(N'2021-11-04' AS Date), 1, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'3', N'Nguyễn Văn A', CAST(N'2021-11-03' AS Date), 1, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'4', N'Nguyễn Thị A', CAST(N'2021-11-11' AS Date), 0, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'5', N'Nguyễn Thu B', CAST(N'2021-11-13' AS Date), 0, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'6', N'Trần Thị A', CAST(N'2021-11-18' AS Date), 0, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'7', N'Nguyễn Quốc E', CAST(N'2021-11-07' AS Date), 1, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'9', N'Phan Văn T', CAST(N'2021-11-25' AS Date), 1, N'abc', N'0123456789', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[HocSinh_LopHoc] ON 

INSERT [dbo].[HocSinh_LopHoc] ([ID], [MaHocSinh], [MaLopHoc]) VALUES (1, N'1', N'T1')
INSERT [dbo].[HocSinh_LopHoc] ([ID], [MaHocSinh], [MaLopHoc]) VALUES (2, N'2', N'T1')
INSERT [dbo].[HocSinh_LopHoc] ([ID], [MaHocSinh], [MaLopHoc]) VALUES (3, N'3', N'T1')
INSERT [dbo].[HocSinh_LopHoc] ([ID], [MaHocSinh], [MaLopHoc]) VALUES (4, N'4', N'T1')
INSERT [dbo].[HocSinh_LopHoc] ([ID], [MaHocSinh], [MaLopHoc]) VALUES (5, N'5', N'T1')
INSERT [dbo].[HocSinh_LopHoc] ([ID], [MaHocSinh], [MaLopHoc]) VALUES (6, N'1', N'A1')
INSERT [dbo].[HocSinh_LopHoc] ([ID], [MaHocSinh], [MaLopHoc]) VALUES (7, N'2', N'A1')
INSERT [dbo].[HocSinh_LopHoc] ([ID], [MaHocSinh], [MaLopHoc]) VALUES (8, N'3', N'A1')
INSERT [dbo].[HocSinh_LopHoc] ([ID], [MaHocSinh], [MaLopHoc]) VALUES (9, N'6', N'V1')
INSERT [dbo].[HocSinh_LopHoc] ([ID], [MaHocSinh], [MaLopHoc]) VALUES (10, N'7', N'V1')
INSERT [dbo].[HocSinh_LopHoc] ([ID], [MaHocSinh], [MaLopHoc]) VALUES (15, N'9', N'V1')
SET IDENTITY_INSERT [dbo].[HocSinh_LopHoc] OFF
GO
INSERT [dbo].[LopHoc] ([MaLopHoc], [TenLopHoc], [NgayBatDau], [NgayKetThuc], [NgayBatDauDangKy], [NgayKetThucDangKy], [SoLuongHocSinh], [HocPhi1Buoi], [MaGiaoVien], [MaMonHoc], [MaNienKhoa]) VALUES (N'A1', N'Anh', CAST(N'2021-09-01' AS Date), CAST(N'2022-05-30' AS Date), CAST(N'2021-07-01' AS Date), CAST(N'2021-08-25' AS Date), NULL, CAST(3000 AS Decimal(10, 0)), N'3', N'3', NULL)
INSERT [dbo].[LopHoc] ([MaLopHoc], [TenLopHoc], [NgayBatDau], [NgayKetThuc], [NgayBatDauDangKy], [NgayKetThucDangKy], [SoLuongHocSinh], [HocPhi1Buoi], [MaGiaoVien], [MaMonHoc], [MaNienKhoa]) VALUES (N'T1', N'Toán', CAST(N'2021-09-01' AS Date), CAST(N'2022-05-30' AS Date), CAST(N'2021-07-01' AS Date), CAST(N'2021-08-25' AS Date), NULL, CAST(1000 AS Decimal(10, 0)), N'1', N'1', NULL)
INSERT [dbo].[LopHoc] ([MaLopHoc], [TenLopHoc], [NgayBatDau], [NgayKetThuc], [NgayBatDauDangKy], [NgayKetThucDangKy], [SoLuongHocSinh], [HocPhi1Buoi], [MaGiaoVien], [MaMonHoc], [MaNienKhoa]) VALUES (N'T2', N'Toán 2', CAST(N'2021-07-01' AS Date), CAST(N'2022-05-30' AS Date), CAST(N'2021-07-01' AS Date), CAST(N'2021-08-25' AS Date), NULL, CAST(1000 AS Decimal(10, 0)), N'1', N'1', NULL)
INSERT [dbo].[LopHoc] ([MaLopHoc], [TenLopHoc], [NgayBatDau], [NgayKetThuc], [NgayBatDauDangKy], [NgayKetThucDangKy], [SoLuongHocSinh], [HocPhi1Buoi], [MaGiaoVien], [MaMonHoc], [MaNienKhoa]) VALUES (N'V1', N'Văn', CAST(N'2021-09-01' AS Date), CAST(N'2022-05-30' AS Date), CAST(N'2021-07-01' AS Date), CAST(N'2021-08-25' AS Date), NULL, CAST(2000 AS Decimal(10, 0)), N'2', N'2', NULL)
GO
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [SoLuong]) VALUES (N'1', N'Toán', NULL)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [SoLuong]) VALUES (N'2', N'Văn', NULL)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [SoLuong]) VALUES (N'3', N'Anh', NULL)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [SoLuong]) VALUES (N'4', N'Lý', NULL)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [SoLuong]) VALUES (N'5', N'Hóa', NULL)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [SoLuong]) VALUES (N'6', N'Sinh', NULL)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [SoLuong]) VALUES (N'7', N'Sử', NULL)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [SoLuong]) VALUES (N'8', N'Địa', NULL)
GO
SET IDENTITY_INSERT [dbo].[MucThanhToan] ON 

INSERT [dbo].[MucThanhToan] ([MaMTT], [TyLePhanTram], [TrinhDo], [KinhNghiem]) VALUES (1, 20, N'Giaó viên', 3)
INSERT [dbo].[MucThanhToan] ([MaMTT], [TyLePhanTram], [TrinhDo], [KinhNghiem]) VALUES (2, 30, N'Thạc sĩ', 2)
SET IDENTITY_INSERT [dbo].[MucThanhToan] OFF
GO
ALTER TABLE [dbo].[BienLaiThuHP]  WITH CHECK ADD  CONSTRAINT [FK__BienLaiTh__MaHoc__68487DD7] FOREIGN KEY([MaHocSinh])
REFERENCES [dbo].[HocSinh] ([MaHocSinh])
GO
ALTER TABLE [dbo].[BienLaiThuHP] CHECK CONSTRAINT [FK__BienLaiTh__MaHoc__68487DD7]
GO
ALTER TABLE [dbo].[BienLaiTraLuong]  WITH CHECK ADD  CONSTRAINT [FK__BienLaiTr__MaGia__5EBF139D] FOREIGN KEY([MaGiaoVien])
REFERENCES [dbo].[GiaoVien] ([MaGiaoVien])
GO
ALTER TABLE [dbo].[BienLaiTraLuong] CHECK CONSTRAINT [FK__BienLaiTr__MaGia__5EBF139D]
GO
ALTER TABLE [dbo].[BuoiHoc]  WITH CHECK ADD  CONSTRAINT [FK_BuoiHoc_LopHoc] FOREIGN KEY([MaLopHoc])
REFERENCES [dbo].[LopHoc] ([MaLopHoc])
GO
ALTER TABLE [dbo].[BuoiHoc] CHECK CONSTRAINT [FK_BuoiHoc_LopHoc]
GO
ALTER TABLE [dbo].[CTBienLaiThuHP]  WITH CHECK ADD  CONSTRAINT [FK_CTBienLaiThuHP_BienLaiThuHoc] FOREIGN KEY([MaBLThuHP])
REFERENCES [dbo].[BienLaiThuHP] ([MaBLThuHP])
GO
ALTER TABLE [dbo].[CTBienLaiThuHP] CHECK CONSTRAINT [FK_CTBienLaiThuHP_BienLaiThuHoc]
GO
ALTER TABLE [dbo].[CTBienLaiThuHP]  WITH CHECK ADD  CONSTRAINT [FK_CTBienLaiThuHP_LopHoc] FOREIGN KEY([MaLopHoc])
REFERENCES [dbo].[LopHoc] ([MaLopHoc])
GO
ALTER TABLE [dbo].[CTBienLaiThuHP] CHECK CONSTRAINT [FK_CTBienLaiThuHP_LopHoc]
GO
ALTER TABLE [dbo].[CTBienLaiTraLuong]  WITH CHECK ADD  CONSTRAINT [FK_CTBienLaiTraLuong_BienLaiTraLuong] FOREIGN KEY([MaBLTraLuong])
REFERENCES [dbo].[BienLaiTraLuong] ([MaBLTraLuong])
GO
ALTER TABLE [dbo].[CTBienLaiTraLuong] CHECK CONSTRAINT [FK_CTBienLaiTraLuong_BienLaiTraLuong]
GO
ALTER TABLE [dbo].[CTBienLaiTraLuong]  WITH CHECK ADD  CONSTRAINT [FK_CTBienLaiTraLuong_LopHoc] FOREIGN KEY([MaLopHoc])
REFERENCES [dbo].[LopHoc] ([MaLopHoc])
GO
ALTER TABLE [dbo].[CTBienLaiTraLuong] CHECK CONSTRAINT [FK_CTBienLaiTraLuong_LopHoc]
GO
ALTER TABLE [dbo].[DiemDanh]  WITH CHECK ADD  CONSTRAINT [FK_DiemDanh_BuoiHoc] FOREIGN KEY([MaBuoiHoc])
REFERENCES [dbo].[BuoiHoc] ([MaBuoiHoc])
GO
ALTER TABLE [dbo].[DiemDanh] CHECK CONSTRAINT [FK_DiemDanh_BuoiHoc]
GO
ALTER TABLE [dbo].[DiemDanh]  WITH CHECK ADD  CONSTRAINT [FK_DiemDanh_HocSinh] FOREIGN KEY([MaHocSinh])
REFERENCES [dbo].[HocSinh] ([MaHocSinh])
GO
ALTER TABLE [dbo].[DiemDanh] CHECK CONSTRAINT [FK_DiemDanh_HocSinh]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK__GiaoVien__MaMonH__5165187F] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK__GiaoVien__MaMonH__5165187F]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK__GiaoVien__MaMTT__52593CB8] FOREIGN KEY([MaMTT])
REFERENCES [dbo].[MucThanhToan] ([MaMTT])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK__GiaoVien__MaMTT__52593CB8]
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD  CONSTRAINT [FK__HocSinh__MaMienG__6383C8BA] FOREIGN KEY([MaMienGiam])
REFERENCES [dbo].[MucMienGiam] ([MaMienGiam])
GO
ALTER TABLE [dbo].[HocSinh] CHECK CONSTRAINT [FK__HocSinh__MaMienG__6383C8BA]
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_HocSinh_NguoiDung] FOREIGN KEY([IdNguoiDung])
REFERENCES [dbo].[NguoiDung] ([ID])
GO
ALTER TABLE [dbo].[HocSinh] CHECK CONSTRAINT [FK_HocSinh_NguoiDung]
GO
ALTER TABLE [dbo].[HocSinh_LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_HocSinh_LopHoc_HocSinh] FOREIGN KEY([MaHocSinh])
REFERENCES [dbo].[HocSinh] ([MaHocSinh])
GO
ALTER TABLE [dbo].[HocSinh_LopHoc] CHECK CONSTRAINT [FK_HocSinh_LopHoc_HocSinh]
GO
ALTER TABLE [dbo].[HocSinh_LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_HocSinh_LopHoc_LopHoc] FOREIGN KEY([MaLopHoc])
REFERENCES [dbo].[LopHoc] ([MaLopHoc])
GO
ALTER TABLE [dbo].[HocSinh_LopHoc] CHECK CONSTRAINT [FK_HocSinh_LopHoc_LopHoc]
GO
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD  CONSTRAINT [FK__LopHoc__MaGiaoVi__5535A963] FOREIGN KEY([MaGiaoVien])
REFERENCES [dbo].[GiaoVien] ([MaGiaoVien])
GO
ALTER TABLE [dbo].[LopHoc] CHECK CONSTRAINT [FK__LopHoc__MaGiaoVi__5535A963]
GO
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD  CONSTRAINT [FK__LopHoc__MaMonHoc__571DF1D5] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[LopHoc] CHECK CONSTRAINT [FK__LopHoc__MaMonHoc__571DF1D5]
GO
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD  CONSTRAINT [FK__LopHoc__MaNienKh__5812160E] FOREIGN KEY([MaNienKhoa])
REFERENCES [dbo].[NienKhoa] ([MaNienKhoa])
GO
ALTER TABLE [dbo].[LopHoc] CHECK CONSTRAINT [FK__LopHoc__MaNienKh__5812160E]
GO
/****** Object:  StoredProcedure [dbo].[P_AddBLTraLuong]    Script Date: 12/1/2021 8:27:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_AddBLTraLuong]
@NgayTra Datetime,
@TraChoThangNam VARCHAR(7),
@TrangThai BIT = 0,
@MaGiaoVien VARCHAR(5)
AS
BEGIN TRAN
DECLARE @MaBLTraLuong int

INSERT INTO BienLaiTraLuong(NgayTra, TraChoThangNam, TrangThai, MaGiaoVien)
VALUES(@NgayTra, @TraChoThangNam, @TrangThai, @MaGiaoVien)

SET @MaBLTraLuong=(SELECT SCOPE_IDENTITY())

INSERT INTO CTBienLaiTraLuong(MaBLTraLuong, MaLopHoc, TongSoBuoi, Luong1Buoi, ThanhTien)
SELECT @MaBLTraLuong, lh.MaLopHoc, COUNT(*) AS sobuoiday, lh.HocPhi1Buoi,  SUM((bh.SoLuongHocSinh - bh.Vang)*lh.HocPhi1Buoi)*mtt.TyLePhanTram/100 as thanhtien
FROM GiaoVien gv JOIN LopHoc lh ON gv.MaGiaoVien=lh.MaGiaoVien
				JOIN BuoiHoc bh ON bh.MaLopHoc=lh.MaLopHoc		
				JOIN MucThanhToan mtt ON mtt.MaMTT = gv.MaMTT
WHERE gv.MaGiaoVien= @MaGiaoVien AND lh.MaGiaoVien = gv.MaGiaoVien
GROUP BY lh.MaLopHoc, lh.HocPhi1Buoi, mtt.TyLePhanTram

UPDATE BienLaiTraLuong
SET TongLuong = (SELECT SUM(ct.ThanhTien) as tongtien FROM CTBienLaiTraLuong ct WHERE ct.MaBLTraLuong=@MaBLTraLuong)
WHERE MaBLTraLuong = @MaBLTraLuong

COMMIT
GO
/****** Object:  StoredProcedure [dbo].[P_AddGiaoVien]    Script Date: 12/1/2021 8:27:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_AddGiaoVien]
@MaGiaoVien VARCHAR(5),
@TenGiaoVien NVARCHAR(50) = null,
@NgaySinh DATE = null,
@GioiTinh VARCHAR(3) = null,
@DiaChi NVARCHAR(50) = null,
@SDT INT = null,
@MaMonHoc VARCHAR(5) = null,
@MaMTT VARCHAR(5) = null,
@TaiKhoanNganHang VARCHAR(20) = null
AS
BEGIN
INSERT INTO dbo.GiaoVien
	VALUES (@MaGiaoVien, @TenGiaoVien, @NgaySinh, @GioiTinh, @DiaChi, @SDT, @MaMonHoc, @MaMTT, @TaiKhoanNganHang)
END
GO
/****** Object:  StoredProcedure [dbo].[P_AddMucThanhToan]    Script Date: 12/1/2021 8:27:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_AddMucThanhToan]
@TyLePhanTram INT,
@TrinhDo NVARCHAR(30),
@KinhNghiem INT
AS
BEGIN
INSERT INTO dbo.MucThanhToan
	VALUES (@TyLePhanTram, @TrinhDo, @KinhNghiem)
END

SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[P_UpdateGiaoVien]    Script Date: 12/1/2021 8:27:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_UpdateGiaoVien]
@MaGiaoVien VARCHAR(5),
@TenGiaoVien NVARCHAR(50),
@NgaySinh DATE,
@GioiTinh VARCHAR(3),
@DiaChi NVARCHAR(50),
@SDT INT,
@MaMonHoc VARCHAR(5),
@MaMTT VARCHAR(5),
@TaiKhoanNganHang VARCHAR(20)
AS
BEGIN
	UPDATE dbo.GIAOVIEN
	SET TenGiaoVien= @TenGiaoVien, NgaySinh= @NgaySinh, GioiTinh = @GioiTinh, DiaChi= @DiaChi, SDT= @SDT, MaMonHoc= @MaMonHoc, MaMTT= @MaMTT, TaiKhoanNganHang = @TaiKhoanNganHang
	WHERE MaGiaoVien = @MaGiaoVien
END

SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[SuaBuoiHoc]    Script Date: 12/1/2021 8:27:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SuaBuoiHoc]
	@NgayHoc date=NULL,
	@ThoiGian varchar(11)=NULL,
	@SoLuongHocSinh int=NULL,
	@Vang int=NULL,
	@MaLopHoc varchar(5)=NULL
AS
	UPDATE BuoiHoc
	SET NgayHoc=@NgayHoc,
		ThoiGian=@ThoiGian,
		SoLuongHocSinh=@SoLuongHocSinh,
		Vang=@Vang
	WHERE MaLopHoc=@MaLopHoc

RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[SuaDiemDanh]    Script Date: 12/1/2021 8:27:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SuaDiemDanh]
	@MaHocSinh varchar(5),
	@MaBuoiHoc int,
	@TichVang bit,
	@GhiChu nvarchar(50)
AS
	BEGIN TRANSACTION
	UPDATE DiemDanh
	SET TichVang=@TichVang,
		GhiChu=@GhiChu
	WHERE MaHocSinh=@MaHocSinh AND MaBuoiHoc=@MaBuoiHoc

	IF(@TichVang=1)
	BEGIN
		UPDATE BuoiHoc
		SET Vang=Vang+1
		WHERE MaBuoiHoc=@MaBuoiHoc
	END
	
	COMMIT
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[SuaHocSinh]    Script Date: 12/1/2021 8:27:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SuaHocSinh]
	@MaHocSinh varchar(5) = null,
	@TenHocSinh nvarchar(50) = null,
	@NgaySinh date = null,
	@GioiTinh bit = null,
	@DiaChi nvarchar(100) = null,
	@SDT varchar(11) = null,
	@MaMienGiam varchar(5) = null,
	@MaLopHoc varchar(5) = null,
	@IdNguoiDung int = null
AS
	UPDATE HocSinh
	SET TenHocSinh=@TenHocSinh, NgaySinh=@NgaySinh, GioiTinh=@GioiTinh, DiaChi=@DiaChi,
		MaMienGiam=@MaMienGiam, MaLopHoc=@MaLopHoc, IdNguoiDung=@IdNguoiDung
	WHERE MaHocSinh=@MaHocSinh
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[ThemBuoiHoc]    Script Date: 12/1/2021 8:27:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThemBuoiHoc]
	@NgayHoc date=NULL,
	@ThoiGian varchar(11)=NULL,
	@Vang int=NULL,
	@MaLopHoc varchar(5)=NULL
AS
	DECLARE @soluong int
	SET @soluong = (SELECT COUNT(*) as soluong FROM HocSinh_LopHoc hl WHERE hl.MaLopHoc=@MaLopHoc) 

	BEGIN TRANSACTION 
	INSERT INTO BuoiHoc(NgayHoc, ThoiGian, SoLuongHocSinh, Vang, MaLopHoc)
	VALUES(@NgayHoc, @ThoiGian, @soluong, @Vang, @MaLopHoc)

	DECLARE @mabuoihoc int
	SET @mabuoihoc=(SELECT SCOPE_IDENTITY())

	INSERT INTO DiemDanh(MaBuoiHoc, MaHocSinh)
	SELECT @mabuoihoc, hl.MaHocSinh
	FROM HocSinh_LopHoc hl
	WHERE hl.MaLopHoc=@MaLopHoc

	COMMIT
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[ThemHocSinh]    Script Date: 12/1/2021 8:27:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThemHocSinh]
	@MaHocSinh varchar(5),
	@TenHocSinh nvarchar(50) = null,
	@NgaySinh date = null,
	@GioiTinh bit = null,
	@DiaChi nvarchar(100) = null,
	@SDT varchar(11) = null,
	@MaMienGiam varchar(5) = null,
	@MaLopHoc varchar(5) = null,
	@IdNguoiDung int = null
AS
	INSERT INTO HocSinh(MaHocSinh, TenHocSinh, NgaySinh, GioiTinh, DiaChi, SDT, MaMienGiam, MaLopHoc, IdNguoiDung)
	VALUES (@MaHocSinh, @TenHocSinh, @NgaySinh, @GioiTinh, @DiaChi, @SDT, @MaMienGiam, @MaLopHoc, @IdNguoiDung)
GO
