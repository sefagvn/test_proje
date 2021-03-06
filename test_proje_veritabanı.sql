USE [test_proje]
GO
/****** Object:  Table [dbo].[kategori]    Script Date: 7.10.2018 18:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategori](
	[kategoriId] [int] IDENTITY(1,1) NOT NULL,
	[kategoriAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_kategori] PRIMARY KEY CLUSTERED 
(
	[kategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[urunler]    Script Date: 7.10.2018 18:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[urunler](
	[urunId] [int] IDENTITY(1,1) NOT NULL,
	[urunAdi] [nvarchar](50) NULL,
	[icerik] [nvarchar](max) NULL,
	[foto] [nvarchar](500) NULL,
	[kategoriId] [int] NULL,
	[fiyat] [money] NULL,
 CONSTRAINT [PK_urunler] PRIMARY KEY CLUSTERED 
(
	[urunId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[uye]    Script Date: 7.10.2018 18:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uye](
	[uyeId] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciAdi] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[sifre] [nvarchar](20) NULL,
	[adi] [nvarchar](20) NULL,
	[soyadi] [nvarchar](20) NULL,
	[yetkiId] [int] NULL,
 CONSTRAINT [PK_uye] PRIMARY KEY CLUSTERED 
(
	[uyeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[yetki]    Script Date: 7.10.2018 18:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yetki](
	[yetkiId] [int] IDENTITY(1,1) NOT NULL,
	[yetki] [nvarchar](50) NULL,
 CONSTRAINT [PK_yetki] PRIMARY KEY CLUSTERED 
(
	[yetkiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[kategori] ON 

INSERT [dbo].[kategori] ([kategoriId], [kategoriAdi]) VALUES (1, N'çikolata')
INSERT [dbo].[kategori] ([kategoriId], [kategoriAdi]) VALUES (2, N'bisküvi')
SET IDENTITY_INSERT [dbo].[kategori] OFF
SET IDENTITY_INSERT [dbo].[urunler] ON 

INSERT [dbo].[urunler] ([urunId], [urunAdi], [icerik], [foto], [kategoriId], [fiyat]) VALUES (1, N'ülker', N'bitter', N'/Uploads/UrunFoto/9d83cc16-88ce-4e66-8b7a-807e985311e7.jpg', 1, 5.0000)
INSERT [dbo].[urunler] ([urunId], [urunAdi], [icerik], [foto], [kategoriId], [fiyat]) VALUES (2, N'torku ', N'çikolata kaplı bar', N'/Uploads/UrunFoto/7173e10b-9424-4fb9-a80d-3377d47d5ea3.png', 2, 3.0000)
INSERT [dbo].[urunler] ([urunId], [urunAdi], [icerik], [foto], [kategoriId], [fiyat]) VALUES (4, N'ülker', N'bitter', N'/Uploads/UrunFoto/9d83cc16-88ce-4e66-8b7a-807e985311e7.jpg', 1, 4.5000)
INSERT [dbo].[urunler] ([urunId], [urunAdi], [icerik], [foto], [kategoriId], [fiyat]) VALUES (5, N'torku', N'çikolata kaplı bar', N'/Uploads/UrunFoto/7173e10b-9424-4fb9-a80d-3377d47d5ea3.png', 2, 3.2500)
INSERT [dbo].[urunler] ([urunId], [urunAdi], [icerik], [foto], [kategoriId], [fiyat]) VALUES (6, N'ülker', N'bitter', N'/Uploads/UrunFoto/9d83cc16-88ce-4e66-8b7a-807e985311e7.jpg', 1, 5.0000)
INSERT [dbo].[urunler] ([urunId], [urunAdi], [icerik], [foto], [kategoriId], [fiyat]) VALUES (7, N'torku', N'çikolata kaplı bar', N'/Uploads/UrunFoto/7173e10b-9424-4fb9-a80d-3377d47d5ea3.png', 2, 2.5600)
INSERT [dbo].[urunler] ([urunId], [urunAdi], [icerik], [foto], [kategoriId], [fiyat]) VALUES (8, N'ülker', N'bitter', N'/Uploads/UrunFoto/9d83cc16-88ce-4e66-8b7a-807e985311e7.jpg', 1, 2.8550)
SET IDENTITY_INSERT [dbo].[urunler] OFF
SET IDENTITY_INSERT [dbo].[uye] ON 

INSERT [dbo].[uye] ([uyeId], [kullaniciAdi], [email], [sifre], [adi], [soyadi], [yetkiId]) VALUES (1, N'sefa', N'sefa@sefa.com', N'123', N'sefa', N'güven', 1)
INSERT [dbo].[uye] ([uyeId], [kullaniciAdi], [email], [sifre], [adi], [soyadi], [yetkiId]) VALUES (2, N'ali', N'ali@ali.com', N'123', N'ali', N'al', 2)
INSERT [dbo].[uye] ([uyeId], [kullaniciAdi], [email], [sifre], [adi], [soyadi], [yetkiId]) VALUES (3, N'test', N'test', N'123', N'test', N'test', 2)
INSERT [dbo].[uye] ([uyeId], [kullaniciAdi], [email], [sifre], [adi], [soyadi], [yetkiId]) VALUES (7, N'test1', N'test1@test1.com', N'123', N'test1', N'test1', 2)
SET IDENTITY_INSERT [dbo].[uye] OFF
SET IDENTITY_INSERT [dbo].[yetki] ON 

INSERT [dbo].[yetki] ([yetkiId], [yetki]) VALUES (1, N'admin')
INSERT [dbo].[yetki] ([yetkiId], [yetki]) VALUES (2, N'üye')
SET IDENTITY_INSERT [dbo].[yetki] OFF
ALTER TABLE [dbo].[urunler]  WITH CHECK ADD  CONSTRAINT [FK_urunler_kategori] FOREIGN KEY([kategoriId])
REFERENCES [dbo].[kategori] ([kategoriId])
GO
ALTER TABLE [dbo].[urunler] CHECK CONSTRAINT [FK_urunler_kategori]
GO
ALTER TABLE [dbo].[uye]  WITH CHECK ADD  CONSTRAINT [FK_uye_yetki] FOREIGN KEY([yetkiId])
REFERENCES [dbo].[yetki] ([yetkiId])
GO
ALTER TABLE [dbo].[uye] CHECK CONSTRAINT [FK_uye_yetki]
GO
