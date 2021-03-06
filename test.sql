USE [QLSinhvien]
GO
/****** Object:  Table [dbo].[Lophoc]    Script Date: 11/19/2021 9:07:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lophoc](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
 CONSTRAINT [PK_Lophoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/19/2021 9:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[IDPer] [int] NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sinhvien]    Script Date: 11/19/2021 9:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinhvien](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDStudent] [varchar](20) NULL,
	[FistName] [nvarchar](20) NULL,
	[LastName] [nvarchar](20) NULL,
	[DOB] [date] NULL,
	[POB] [nvarchar](200) NULL,
	[IDLophoc] [bigint] NULL,
 CONSTRAINT [PK_Sinhvien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Lophoc] ON 

INSERT [dbo].[Lophoc] ([ID], [Name]) VALUES (3, N'CNTT K41A')
INSERT [dbo].[Lophoc] ([ID], [Name]) VALUES (4, N'CNTTK41B')
INSERT [dbo].[Lophoc] ([ID], [Name]) VALUES (7, N'CNTTK41C')
INSERT [dbo].[Lophoc] ([ID], [Name]) VALUES (8, N'CNTTK41D')
INSERT [dbo].[Lophoc] ([ID], [Name]) VALUES (9, N'CNTTK41E')
SET IDENTITY_INSERT [dbo].[Lophoc] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TaiKhoan], [MatKhau], [IDPer]) VALUES (1, N'admin', N'admin', 1)
INSERT [dbo].[NhanVien] ([MaNV], [TaiKhoan], [MatKhau], [IDPer]) VALUES (2, N'user1', N'user1', 0)
INSERT [dbo].[NhanVien] ([MaNV], [TaiKhoan], [MatKhau], [IDPer]) VALUES (3, N'user2', N'user2', 0)
INSERT [dbo].[NhanVien] ([MaNV], [TaiKhoan], [MatKhau], [IDPer]) VALUES (4, N'user3', N'user3', 0)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[Sinhvien] ON 

INSERT [dbo].[Sinhvien] ([ID], [IDStudent], [FistName], [LastName], [DOB], [POB], [IDLophoc]) VALUES (2, N'1002', N'Tuấn', N'Nguyễn', CAST(N'2000-03-03' AS Date), N'Đà Nẵng', 4)
INSERT [dbo].[Sinhvien] ([ID], [IDStudent], [FistName], [LastName], [DOB], [POB], [IDLophoc]) VALUES (18, N'1001', N'Dũng ', N'Nguyễn', CAST(N'2000-03-12' AS Date), N'Huế', NULL)
INSERT [dbo].[Sinhvien] ([ID], [IDStudent], [FistName], [LastName], [DOB], [POB], [IDLophoc]) VALUES (19, N'1003', N'Trí ', N'lê', CAST(N'2000-08-02' AS Date), N'Huế', NULL)
INSERT [dbo].[Sinhvien] ([ID], [IDStudent], [FistName], [LastName], [DOB], [POB], [IDLophoc]) VALUES (20, N'1004', N'Ngàn', N'Nguyễn', CAST(N'2000-07-18' AS Date), N'Huế', NULL)
SET IDENTITY_INSERT [dbo].[Sinhvien] OFF
GO
ALTER TABLE [dbo].[Sinhvien]  WITH CHECK ADD  CONSTRAINT [FK_Sinhvien_Lophoc] FOREIGN KEY([IDLophoc])
REFERENCES [dbo].[Lophoc] ([ID])
GO
ALTER TABLE [dbo].[Sinhvien] CHECK CONSTRAINT [FK_Sinhvien_Lophoc]
GO
