USE [QL_HocThem]
GO
/****** Object:  Table [dbo].[BienLaiThuHP]    Script Date: 12/1/2021 11:36:43 AM ******/
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
/****** Object:  Table [dbo].[BienLaiTraLuong]    Script Date: 12/1/2021 11:36:43 AM ******/
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
/****** Object:  Table [dbo].[BuoiHoc]    Script Date: 12/1/2021 11:36:43 AM ******/
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
/****** Object:  Table [dbo].[CTBienLaiThuHP]    Script Date: 12/1/2021 11:36:43 AM ******/
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
/****** Object:  Table [dbo].[CTBienLaiTraLuong]    Script Date: 12/1/2021 11:36:43 AM ******/
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
/****** Object:  Table [dbo].[DiemDanh]    Script Date: 12/1/2021 11:36:43 AM ******/
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
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 12/1/2021 11:36:43 AM ******/
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
/****** Object:  Table [dbo].[HocSinh]    Script Date: 12/1/2021 11:36:43 AM ******/
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
/****** Object:  Table [dbo].[HocSinh_LopHoc]    Script Date: 12/1/2021 11:36:43 AM ******/
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
/****** Object:  Table [dbo].[LopHoc]    Script Date: 12/1/2021 11:36:43 AM ******/
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
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/1/2021 11:36:43 AM ******/
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
/****** Object:  Table [dbo].[MucMienGiam]    Script Date: 12/1/2021 11:36:43 AM ******/
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
/****** Object:  Table [dbo].[MucThanhToan]    Script Date: 12/1/2021 11:36:43 AM ******/
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
/****** Object:  Table [dbo].[NienKhoa]    Script Date: 12/1/2021 11:36:43 AM ******/
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
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 12/1/2021 11:36:43 AM ******/
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
SET IDENTITY_INSERT [dbo].[BienLaiThuHP] ON 

INSERT [dbo].[BienLaiThuHP] ([MaBLThuHP], [TongHocPhi], [NgayThu], [ThuChoThangNam], [TrangThai], [MaHocSinh]) VALUES (1, NULL, NULL, CAST(N'2021-09-01' AS Date), NULL, NULL)
SET IDENTITY_INSERT [dbo].[BienLaiThuHP] OFF
GO
SET IDENTITY_INSERT [dbo].[BuoiHoc] ON 

INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (1, CAST(N'2021-09-01' AS Date), N'13h30-14h30', NULL, NULL, N'T1')
INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (2, CAST(N'2021-09-02' AS Date), N'13h30-14h30', NULL, NULL, N'A1')
INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (3, CAST(N'2021-09-03' AS Date), N'13h30-14h30', NULL, NULL, N'V1')
INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (4, CAST(N'2021-09-08' AS Date), N'13h30-14h30', NULL, NULL, N'T1')
INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (5, CAST(N'2021-09-09' AS Date), N'13h30-14h30', NULL, NULL, N'A1')
INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (6, CAST(N'2021-09-10' AS Date), N'13h30-14h30', NULL, NULL, N'V1')
INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (7, CAST(N'2021-09-15' AS Date), N'13h30-14h30', NULL, NULL, N'T1')
INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (8, CAST(N'2021-09-16' AS Date), N'13h30-14h30', NULL, NULL, N'A1')
INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (9, CAST(N'2021-09-17' AS Date), N'13h30-14h30', NULL, NULL, N'V1')
INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (10, CAST(N'2021-09-24' AS Date), N'13h30-14h30', NULL, NULL, N'T1')
INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (11, CAST(N'2021-09-25' AS Date), N'13h30-14h30', NULL, NULL, N'A1')
INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (12, CAST(N'2021-09-26' AS Date), N'13h30-14h30', NULL, NULL, N'V1')
INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (13, CAST(N'2021-12-01' AS Date), N'13h30-14h30', 1, 0, N'T1')
INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (18, CAST(N'2021-12-02' AS Date), N'13h30-14h30', 1, 0, N'T1')
INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (19, CAST(N'2021-12-03' AS Date), N'13h30-14h30', 1, 2, N'T1')
INSERT [dbo].[BuoiHoc] ([MaBuoiHoc], [NgayHoc], [ThoiGian], [SoLuongHocSinh], [Vang], [MaLopHoc]) VALUES (20, CAST(N'2021-12-05' AS Date), N'13h30-14h30', 5, 0, N'T1')
SET IDENTITY_INSERT [dbo].[BuoiHoc] OFF
GO
SET IDENTITY_INSERT [dbo].[DiemDanh] ON 

INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (2, N'1', 18, NULL, NULL)
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (3, N'2', 18, NULL, NULL)
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (4, N'3', 18, NULL, NULL)
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (5, N'4', 18, NULL, NULL)
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (6, N'5', 18, NULL, NULL)
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (7, N'1', 19, 1, N'')
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (8, N'2', 19, 1, N'')
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (9, N'3', 19, 0, N'')
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (10, N'4', 19, 0, N'')
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (11, N'5', 19, 0, N'')
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (12, N'1', 20, NULL, NULL)
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (13, N'2', 20, NULL, NULL)
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (14, N'3', 20, NULL, NULL)
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (15, N'4', 20, NULL, NULL)
INSERT [dbo].[DiemDanh] ([ID], [MaHocSinh], [MaBuoiHoc], [TichVang], [GhiChu]) VALUES (16, N'5', 20, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DiemDanh] OFF
GO
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMonHoc], [MaMTT], [TaiKhoanNganHang]) VALUES (N'1', N'Nguyễn Văn T', NULL, N'Nam', NULL, NULL, N'1', NULL, NULL)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMonHoc], [MaMTT], [TaiKhoanNganHang]) VALUES (N'2', N'Nguyễn Thị V', NULL, N'Nữ', NULL, NULL, N'2', NULL, NULL)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMonHoc], [MaMTT], [TaiKhoanNganHang]) VALUES (N'3', N'Trần Thị T', NULL, NULL, NULL, NULL, N'3', NULL, NULL)
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
INSERT [dbo].[LopHoc] ([MaLopHoc], [TenLopHoc], [NgayBatDau], [NgayKetThuc], [NgayBatDauDangKy], [NgayKetThucDangKy], [SoLuongHocSinh], [HocPhi1Buoi], [MaGiaoVien], [MaMonHoc], [MaNienKhoa]) VALUES (N'A1', N'Anh', CAST(N'2021-09-01' AS Date), CAST(N'2022-05-30' AS Date), CAST(N'2021-07-01' AS Date), CAST(N'2021-08-25' AS Date), NULL, NULL, N'3', N'3', NULL)
INSERT [dbo].[LopHoc] ([MaLopHoc], [TenLopHoc], [NgayBatDau], [NgayKetThuc], [NgayBatDauDangKy], [NgayKetThucDangKy], [SoLuongHocSinh], [HocPhi1Buoi], [MaGiaoVien], [MaMonHoc], [MaNienKhoa]) VALUES (N'T1', N'Toán', CAST(N'2021-09-01' AS Date), CAST(N'2022-05-30' AS Date), CAST(N'2021-07-01' AS Date), CAST(N'2021-08-25' AS Date), NULL, NULL, N'1', N'1', NULL)
INSERT [dbo].[LopHoc] ([MaLopHoc], [TenLopHoc], [NgayBatDau], [NgayKetThuc], [NgayBatDauDangKy], [NgayKetThucDangKy], [SoLuongHocSinh], [HocPhi1Buoi], [MaGiaoVien], [MaMonHoc], [MaNienKhoa]) VALUES (N'V1', N'Văn', CAST(N'2021-09-01' AS Date), CAST(N'2022-05-30' AS Date), CAST(N'2021-07-01' AS Date), CAST(N'2021-08-25' AS Date), NULL, NULL, N'2', N'2', NULL)
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
/****** Object:  StoredProcedure [dbo].[SuaBuoiHoc]    Script Date: 12/1/2021 11:36:44 AM ******/
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
/****** Object:  StoredProcedure [dbo].[SuaDiemDanh]    Script Date: 12/1/2021 11:36:44 AM ******/
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
/****** Object:  StoredProcedure [dbo].[SuaHocSinh]    Script Date: 12/1/2021 11:36:44 AM ******/
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
/****** Object:  StoredProcedure [dbo].[ThemBuoiHoc]    Script Date: 12/1/2021 11:36:44 AM ******/
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
/****** Object:  StoredProcedure [dbo].[ThemHocSinh]    Script Date: 12/1/2021 11:36:44 AM ******/
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
