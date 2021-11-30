USE [QL_HocThem]
GO
/****** Object:  Table [dbo].[BienLaiThuHP]    Script Date: 11/30/2021 9:16:57 AM ******/
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
/****** Object:  Table [dbo].[BienLaiTraLuong]    Script Date: 11/30/2021 9:16:57 AM ******/
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
/****** Object:  Table [dbo].[BuoiHoc]    Script Date: 11/30/2021 9:16:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BuoiHoc](
	[MaBuoiHoc] [int] IDENTITY(1,1) NOT NULL,
	[NgayHoc] [date] NULL,
	[ThoiGian] [varchar](10) NULL,
 CONSTRAINT [PK__BuoiHoc__5330250649423589] PRIMARY KEY CLUSTERED 
(
	[MaBuoiHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BuoiHoc_LopHoc]    Script Date: 11/30/2021 9:16:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BuoiHoc_LopHoc](
	[ID] [int] NOT NULL,
	[MaLopHoc] [varchar](5) NULL,
	[MaBuoiHoc] [int] NULL,
 CONSTRAINT [PK_BuoiHoc_LopHoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTBienLaiThuHP]    Script Date: 11/30/2021 9:16:57 AM ******/
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
/****** Object:  Table [dbo].[CTBienLaiTraLuong]    Script Date: 11/30/2021 9:16:57 AM ******/
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
/****** Object:  Table [dbo].[DiemDanh]    Script Date: 11/30/2021 9:16:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemDanh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaBuoiHoc] [int] NULL,
	[MaLopHoc] [varchar](5) NULL,
	[MaHocSinh] [varchar](5) NULL,
	[TichVang] [bit] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK__DiemDanh__3214EC2781349882] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 11/30/2021 9:16:57 AM ******/
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
/****** Object:  Table [dbo].[HocSinh]    Script Date: 11/30/2021 9:16:57 AM ******/
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
/****** Object:  Table [dbo].[HocSinh_LopHoc]    Script Date: 11/30/2021 9:16:57 AM ******/
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
/****** Object:  Table [dbo].[LopHoc]    Script Date: 11/30/2021 9:16:57 AM ******/
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
	[HocPhi1Buoi] [int] NULL,
	[MaGiaoVien] [varchar](5) NULL,
	[MaMonHoc] [varchar](5) NULL,
	[MaNienKhoa] [varchar](5) NULL,
 CONSTRAINT [PK__LopHoc__FEE05784AE614D03] PRIMARY KEY CLUSTERED 
(
	[MaLopHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 11/30/2021 9:16:57 AM ******/
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
/****** Object:  Table [dbo].[MucHocPhi]    Script Date: 11/30/2021 9:16:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MucHocPhi](
	[MaMHP] [char](10) NOT NULL,
	[SoHocPhi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MucMienGiam]    Script Date: 11/30/2021 9:16:57 AM ******/
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
/****** Object:  Table [dbo].[MucThanhToan]    Script Date: 11/30/2021 9:16:57 AM ******/
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
/****** Object:  Table [dbo].[NienKhoa]    Script Date: 11/30/2021 9:16:57 AM ******/
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
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 11/30/2021 9:16:57 AM ******/
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
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'1', N'Trung', CAST(N'2021-11-04' AS Date), 1, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'10', N'Nguyễn Quốc D', CAST(N'1900-01-01' AS Date), 1, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'11', N'Trần Thu C', CAST(N'2021-11-05' AS Date), 1, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'12', N'Dương Mạnh C', CAST(N'2021-11-17' AS Date), 1, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'13', N'Trần Thu T', CAST(N'2021-11-05' AS Date), 1, N'abc', N'', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'2', N'Chung', CAST(N'2021-11-04' AS Date), 1, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'3', N'Nguyễn Văn A', CAST(N'2021-11-03' AS Date), 1, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'4', N'Nguyễn Thị A', CAST(N'2021-11-11' AS Date), 0, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'5', N'Nguyễn Thu B', CAST(N'2021-11-13' AS Date), 0, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'6', N'Trần Thị A', CAST(N'2021-11-18' AS Date), 0, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'7', N'Nguyễn Quốc E', CAST(N'2021-11-07' AS Date), 1, N'abc', N'0123456789', NULL, NULL, NULL)
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [MaMienGiam], [MaLopHoc], [IdNguoiDung]) VALUES (N'9', N'Phan Văn T', CAST(N'2021-11-25' AS Date), 1, N'abc', N'0123456789', NULL, NULL, NULL)
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
ALTER TABLE [dbo].[BuoiHoc_LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_BuoiHoc_LopHoc_BuoiHoc] FOREIGN KEY([MaBuoiHoc])
REFERENCES [dbo].[BuoiHoc] ([MaBuoiHoc])
GO
ALTER TABLE [dbo].[BuoiHoc_LopHoc] CHECK CONSTRAINT [FK_BuoiHoc_LopHoc_BuoiHoc]
GO
ALTER TABLE [dbo].[BuoiHoc_LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_BuoiHoc_LopHoc_LopHoc] FOREIGN KEY([MaLopHoc])
REFERENCES [dbo].[LopHoc] ([MaLopHoc])
GO
ALTER TABLE [dbo].[BuoiHoc_LopHoc] CHECK CONSTRAINT [FK_BuoiHoc_LopHoc_LopHoc]
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
ALTER TABLE [dbo].[DiemDanh]  WITH CHECK ADD  CONSTRAINT [FK__DiemDanh__MaBuoi__6B24EA82] FOREIGN KEY([MaBuoiHoc])
REFERENCES [dbo].[BuoiHoc] ([MaBuoiHoc])
GO
ALTER TABLE [dbo].[DiemDanh] CHECK CONSTRAINT [FK__DiemDanh__MaBuoi__6B24EA82]
GO
ALTER TABLE [dbo].[DiemDanh]  WITH CHECK ADD  CONSTRAINT [FK_DiemDanh_HocSinh] FOREIGN KEY([MaHocSinh])
REFERENCES [dbo].[HocSinh] ([MaHocSinh])
GO
ALTER TABLE [dbo].[DiemDanh] CHECK CONSTRAINT [FK_DiemDanh_HocSinh]
GO
ALTER TABLE [dbo].[DiemDanh]  WITH CHECK ADD  CONSTRAINT [FK_DiemDanh_LopHoc] FOREIGN KEY([MaLopHoc])
REFERENCES [dbo].[LopHoc] ([MaLopHoc])
GO
ALTER TABLE [dbo].[DiemDanh] CHECK CONSTRAINT [FK_DiemDanh_LopHoc]
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
/****** Object:  StoredProcedure [dbo].[SuaHocSinh]    Script Date: 11/30/2021 9:16:58 AM ******/
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
/****** Object:  StoredProcedure [dbo].[ThemHocSinh]    Script Date: 11/30/2021 9:16:58 AM ******/
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
