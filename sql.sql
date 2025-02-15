USE [HastaneProje]
GO
/****** Object:  Table [dbo].[FisDetay]    Script Date: 29.04.2019 20:19:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FisDetay](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FisNo] [int] NULL,
	[UrunAd] [nvarchar](50) NULL,
	[UrunBarkod] [nvarchar](50) NULL,
	[UrunMarkasi] [nvarchar](50) NULL,
	[UrunKategorisi] [nvarchar](50) NULL,
	[UrunGelisFiyati] [decimal](8, 2) NULL,
	[UrunSatisFiyati] [decimal](8, 2) NULL,
 CONSTRAINT [PK_FisDetay] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fisler]    Script Date: 29.04.2019 20:19:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fisler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FisDurum] [nvarchar](50) NULL,
	[FisTarihi] [datetime] NULL,
	[FisGelisTutari] [nvarchar](50) NULL,
	[FisSatisTutari] [nvarchar](50) NULL,
	[FisKarTutari] [nvarchar](50) NULL,
	[SiparisiOlusturan] [nvarchar](50) NULL,
	[indirimTutari] [nvarchar](50) NULL,
	[artieksi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Fisler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 29.04.2019 20:19:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [varchar](50) NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 29.04.2019 20:19:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](50) NULL,
	[Sifre] [varchar](50) NULL,
	[Yetki] [varchar](50) NULL,
 CONSTRAINT [PK_Kullanici2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciDetay]    Script Date: 29.04.2019 20:19:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciDetay](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kullanici] [nvarchar](50) NULL,
	[GirisTarih] [nvarchar](50) NULL,
	[CikisTarih] [nvarchar](50) NULL,
 CONSTRAINT [PK_KullaniciDetay] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marka]    Script Date: 29.04.2019 20:19:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marka](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MarkaAd] [varchar](50) NULL,
 CONSTRAINT [PK_Marka] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SerialKey]    Script Date: 29.04.2019 20:19:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SerialKey](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SerialKey] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SerialKey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Branslar]    Script Date: 29.04.2019 20:19:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Branslar](
	[Bransid] [tinyint] IDENTITY(1,1) NOT NULL,
	[BransAd] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Doktorlar]    Script Date: 29.04.2019 20:19:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Doktorlar](
	[Doktorid] [tinyint] IDENTITY(1,1) NOT NULL,
	[DoktorAd] [varchar](10) NULL,
	[DoktorSoyad] [varchar](10) NULL,
	[DoktorBrans] [varchar](30) NULL,
	[DoktorTc] [char](11) NULL,
	[DoktorSifre] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Duyurular]    Script Date: 29.04.2019 20:19:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Duyurular](
	[Duyuruid] [smallint] IDENTITY(1,1) NOT NULL,
	[Duyuru] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Hastalar]    Script Date: 29.04.2019 20:19:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Hastalar](
	[Hastaid] [smallint] IDENTITY(1,1) NOT NULL,
	[HastaAd] [varchar](10) NULL,
	[HastaSoyad] [varchar](10) NULL,
	[HastaTc] [char](11) NULL,
	[HastaTelefon] [varchar](15) NULL,
	[HastaSifre] [varchar](10) NULL,
	[HastaCinsiyet] [varchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Randevular]    Script Date: 29.04.2019 20:20:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Randevular](
	[Randevuid] [int] IDENTITY(1,1) NOT NULL,
	[RandevuTarih] [varchar](10) NULL,
	[RandevuSaat] [varchar](5) NULL,
	[RandevuBrans] [varchar](30) NULL,
	[RandevuDoktor] [varchar](20) NULL,
	[RandevuDurum] [bit] NULL,
	[HastaTc] [char](11) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Sekreter]    Script Date: 29.04.2019 20:20:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Sekreter](
	[Sekreterid] [tinyint] IDENTITY(1,1) NOT NULL,
	[SekterAdSoyad] [varchar](20) NULL,
	[SekreterTc] [char](11) NULL,
	[SekreterSifre] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urun]    Script Date: 29.04.2019 20:20:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UrunAd] [nvarchar](200) NULL,
	[UrunBarkod] [nvarchar](50) NOT NULL,
	[UrunMarkasi] [nvarchar](50) NULL,
	[UrunKategorisi] [nvarchar](50) NULL,
	[UrunGelisFiyati] [decimal](18, 2) NULL,
	[UrunSatisFiyati] [decimal](18, 2) NULL,
	[UrunStok] [int] NULL,
 CONSTRAINT [PK_Urun2] PRIMARY KEY CLUSTERED 
(
	[UrunBarkod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FisDetay] ON 

INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5402, 3392, N'iphone 7', N'1', N'Eti', N'Yiyecek', CAST(50.00 AS Decimal(8, 2)), CAST(70.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5403, 3392, N'iphone 7', N'1', N'Eti', N'Yiyecek', CAST(50.00 AS Decimal(8, 2)), CAST(70.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5404, 3392, N'Ekmek', N'8693593400610', N'Eti', N'İçecek', CAST(10.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5405, 3392, N'Ekmek', N'8693593400610', N'Eti', N'İçecek', CAST(10.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5406, 3392, N'Yumurta', N'8693593400612', N'Yumurtacııımmmm', N'Yiyecek', CAST(0.25 AS Decimal(8, 2)), CAST(0.45 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5407, 3392, N'Yumurta', N'8693593400612', N'Yumurtacııımmmm', N'Yiyecek', CAST(0.25 AS Decimal(8, 2)), CAST(0.45 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5408, 3392, N'Yumurta', N'8693593400612', N'Yumurtacııımmmm', N'Yiyecek', CAST(0.25 AS Decimal(8, 2)), CAST(0.45 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5409, 3392, N'Yumurta', N'8693593400612', N'Yumurtacııımmmm', N'Yiyecek', CAST(0.25 AS Decimal(8, 2)), CAST(0.45 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5410, 3392, N'Yumurta', N'8693593400612', N'Yumurtacııımmmm', N'Yiyecek', CAST(0.25 AS Decimal(8, 2)), CAST(0.45 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5411, 3392, N'Yumurta', N'8693593400612', N'Yumurtacııımmmm', N'Yiyecek', CAST(0.25 AS Decimal(8, 2)), CAST(0.45 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5412, 3392, N'Yumurta', N'8693593400612', N'Yumurtacııımmmm', N'Yiyecek', CAST(0.25 AS Decimal(8, 2)), CAST(0.45 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5413, 3392, N'Yumurta', N'8693593400612', N'Yumurtacııımmmm', N'Yiyecek', CAST(0.25 AS Decimal(8, 2)), CAST(0.45 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5417, 3393, N'Ekmek', N'8693593400610', N'Eti', N'İçecek', CAST(10.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5418, 3394, N'Yumurta', N'8693593400612', N'Yumurtacııımmmm', N'Yiyecek', CAST(0.25 AS Decimal(8, 2)), CAST(0.45 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5419, 3398, N'Ekmek', N'8693593400610', N'Eti', N'İçecek', CAST(10.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5420, 3400, N'Ekmek', N'8693593400610', N'Eti', N'İçecek', CAST(10.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5423, 3399, N'Ekmek', N'8693593400610', N'Eti', N'İçecek', CAST(10.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5425, 3402, N'Ekmek', N'8693593400610', N'Eti', N'İçecek', CAST(10.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5427, 3399, N'Ekmek', N'8693593400610', N'Eti', N'İçecek', CAST(10.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5428, 3399, N'Ekmek', N'8693593400610', N'Eti', N'İçecek', CAST(10.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5429, 3399, N'Ekmek', N'8693593400610', N'Eti', N'İçecek', CAST(10.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5430, 3405, N'Ekmek', N'8693593400610', N'Eti', N'İçecek', CAST(10.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5431, 3405, N'Ekmek', N'8693593400610', N'Eti', N'İçecek', CAST(10.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5432, 3405, N'Ekmek', N'8693593400610', N'Eti', N'İçecek', CAST(10.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5433, 3406, N'Ekmek', N'8693593400610', N'Eti', N'İçecek', CAST(10.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5434, 3407, N'Ekmek', N'8693593400610', N'Eti', N'İçecek', CAST(10.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5435, 3407, N'Yumurta', N'8693593400612', N'Yumurtacııımmmm', N'Yiyecek', CAST(0.25 AS Decimal(8, 2)), CAST(0.45 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5436, 3407, N'Balon', N'8693593400613', N'Ülker', N'Yiyecek', CAST(0.25 AS Decimal(8, 2)), CAST(1.25 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5442, 3408, N'Ekmek', N'8693593400610', N'Eti', N'İçecek', CAST(10.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5448, 3409, N'Ekmek', N'8693593400610', N'Eti', N'İçecek', CAST(10.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5449, 3410, N'Kırılmaz Nano Cam', N'1', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5450, 3410, N'Kırılmaz Nano Cam', N'1', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5451, 3411, N'Kırılmaz Nano Cam', N'1', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5452, 3411, N'Kırılmaz Nano Cam', N'1', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5453, 3411, N'Kırılmaz Nano Cam', N'1', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5454, 3411, N'Kırılmaz Nano Cam', N'1', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5455, 3411, N'Kırılmaz Nano Cam', N'1', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5456, 3411, N'Kırılmaz Nano Cam', N'1', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5457, 3412, N'Kırılmaz Nano Cam', N'1', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5458, 3412, N'Kırılmaz Nano Cam', N'1', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5459, 3412, N'Kırılmaz Nano Cam', N'1', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5460, 3412, N'Kırılmaz Nano Cam', N'1', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5461, 3413, N'Tamir', N'8693593400610', N'Eti', N'İçecek', CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5462, 3414, N'Tamir', N'8693593400610', N'Eti', N'İçecek', CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5477, 3415, N'iphone 8 mercedes', N'3700740417973', N'Kılıf', N'Ersoy', CAST(110.00 AS Decimal(8, 2)), CAST(250.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5484, 3416, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5495, 3418, N'Kulaklık', N'8806071564876', N'Mopal', N'Mopal', CAST(5.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5506, 3419, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5509, 3420, N'iphone X Mercedes', N'3700740413340', N'Kılıf', N'Ersoy', CAST(110.00 AS Decimal(8, 2)), CAST(250.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5510, 3422, N'iphone 2.1 sarj aleti', N'6989856423154', N'Mopal', N'Mopal', CAST(13.00 AS Decimal(8, 2)), CAST(35.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5511, 3423, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5512, 3423, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5513, 3424, N'3M Kaplama', N'8693593400627', N'BlitzPower', N'Semers', CAST(12.00 AS Decimal(8, 2)), CAST(50.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5514, 3424, N'3M Kaplama', N'8693593400627', N'BlitzPower', N'Semers', CAST(12.00 AS Decimal(8, 2)), CAST(50.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5515, 3425, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5516, 3426, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5517, -2, N'0', N'00', N'BlitzPower', N'Semers', CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5518, 3428, N'iphone 2.1 sarj aleti', N'6989856423154', N'Mopal', N'Mopal', CAST(13.00 AS Decimal(8, 2)), CAST(35.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5519, 3428, N'iphone 2.1 sarj aleti', N'6989856423154', N'Mopal', N'Mopal', CAST(13.00 AS Decimal(8, 2)), CAST(35.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5520, 3428, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5521, 3428, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5522, 3428, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5523, 3429, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5524, 3430, N'2.1 Amper Sarj Aleti', N'6995733625764', N'Mopal', N'Mopal', CAST(13.00 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5526, 3431, N'3M Kaplama', N'8693593400627', N'BlitzPower', N'Semers', CAST(12.00 AS Decimal(8, 2)), CAST(50.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5527, 3432, N'2.1 Amper Sarj Aleti', N'6995733625764', N'Mopal', N'Mopal', CAST(13.00 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5528, 3433, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5529, 3434, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5530, 3435, N'Rubber', N'8693593400634', N'RUBBER', N'Mopal', CAST(4.60 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5531, 3436, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5535, 3438, N'3M Kaplama', N'8693593400627', N'BlitzPower', N'Semers', CAST(12.00 AS Decimal(8, 2)), CAST(50.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5537, 3439, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5538, 3440, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5539, 3441, N'0', N'00', N'BlitzPower', N'Semers', CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5540, 3441, N'0', N'00', N'BlitzPower', N'Semers', CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5541, 3440, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5542, 3440, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5543, 3444, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5544, 3444, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5545, 3444, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5546, 3444, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5547, 3444, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5548, 3444, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5549, 3445, N'iphone 2.1 sarj aleti', N'6989856423154', N'Mopal', N'Mopal', CAST(13.00 AS Decimal(8, 2)), CAST(35.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5550, 3446, N'iphone 2.1 sarj aleti', N'6989856423154', N'Mopal', N'Mopal', CAST(13.00 AS Decimal(8, 2)), CAST(35.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5551, 3446, N'iphone 2.1 sarj aleti', N'6989856423154', N'Mopal', N'Mopal', CAST(13.00 AS Decimal(8, 2)), CAST(35.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5552, 3447, N'2.1 Amper Sarj Aleti', N'6995733625764', N'Mopal', N'Mopal', CAST(13.00 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5553, 3448, N'3M Kaplama', N'8693593400627', N'BlitzPower', N'Semers', CAST(12.00 AS Decimal(8, 2)), CAST(50.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5554, 3449, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5555, 3450, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5556, 3450, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5557, 3450, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5558, 3450, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5559, 3450, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5560, 3450, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5561, 3450, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5562, 3451, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5563, 3451, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5565, 3452, N'Rubber', N'8693593400634', N'RUBBER', N'Mopal', CAST(4.60 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5566, 3453, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5570, 3454, N'Rubber', N'8693593400634', N'RUBBER', N'Mopal', CAST(4.60 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5571, 3455, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5572, 3455, N'iphone 2.1 sarj aleti', N'6989856423154', N'Mopal', N'Mopal', CAST(13.00 AS Decimal(8, 2)), CAST(35.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5573, 3456, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5574, 3457, N'3M Kaplama', N'8693593400627', N'BlitzPower', N'Semers', CAST(12.00 AS Decimal(8, 2)), CAST(50.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5575, 3457, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5576, 3457, N'Rubber', N'8693593400634', N'RUBBER', N'Mopal', CAST(4.60 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5577, 3458, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5578, 3459, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5579, 3459, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5580, 3459, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5581, 3460, N'TYPE-C Usb Sarj Kablosu', N'8816581025194', N'Auris', N'Auris', CAST(6.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5585, 3461, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5586, 3462, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5587, 3463, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5588, 3464, N'3M Kaplama', N'8693593400627', N'BlitzPower', N'Semers', CAST(12.00 AS Decimal(8, 2)), CAST(50.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5589, 3465, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5590, 3466, N'3M Kaplama', N'8693593400627', N'BlitzPower', N'Semers', CAST(12.00 AS Decimal(8, 2)), CAST(50.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5591, 3467, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5592, 3468, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5593, 3469, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5594, 3470, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5595, 3471, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5596, 3472, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(4.50 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5600, 3473, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(5.00 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5601, 3474, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(5.00 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5602, 3475, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(5.00 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5603, 3476, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(5.00 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5604, 3477, N'samsung j7 prime', N'355623095529756', N'SEMERS', N'Semers', CAST(1050.00 AS Decimal(8, 2)), CAST(1300.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5605, 3478, N'samsung j7 prime', N'355623095529756', N'SEMERS', N'Semers', CAST(1050.00 AS Decimal(8, 2)), CAST(1300.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5607, 3479, N'samsung j7 prime', N'355623095529756', N'SEMERS', N'Semers', CAST(1050.00 AS Decimal(8, 2)), CAST(1300.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5610, 3480, N'0', N'00', N'BlitzPower', N'Semers', CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5614, 3481, N'iphone 8', N'13', N'BlitzPower', N'Semers', CAST(900.00 AS Decimal(8, 2)), CAST(1000.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5615, 3481, N'iphone 8', N'13', N'BlitzPower', N'Semers', CAST(900.00 AS Decimal(8, 2)), CAST(1000.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5616, 3481, N'iphone 8', N'13', N'BlitzPower', N'Semers', CAST(900.00 AS Decimal(8, 2)), CAST(1000.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5617, 3481, N'iphone 8', N'13', N'BlitzPower', N'Semers', CAST(900.00 AS Decimal(8, 2)), CAST(1000.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5618, 3481, N'iphone 8', N'13', N'BlitzPower', N'Semers', CAST(900.00 AS Decimal(8, 2)), CAST(1000.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5619, 3481, N'iphone 8', N'13', N'BlitzPower', N'Semers', CAST(900.00 AS Decimal(8, 2)), CAST(1000.00 AS Decimal(8, 2)))
INSERT [dbo].[FisDetay] ([id], [FisNo], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati]) VALUES (5621, 3482, N'xiaomi', N'11', N'xiaomi', N'Mopal', CAST(2000.00 AS Decimal(8, 2)), CAST(4000.00 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[FisDetay] OFF
SET IDENTITY_INSERT [dbo].[Fisler] ON 

INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3427, N'Nakit İşlem', CAST(N'2018-10-16T00:00:00.000' AS DateTime), N'0,00', N'0,00', N'0,00', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3428, N'Nakit İşlem', CAST(N'2018-10-16T00:00:00.000' AS DateTime), N'39,50', N'160,00', N'120,50', N'Personel', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3429, N'Nakit İşlem', CAST(N'2018-10-16T00:00:00.000' AS DateTime), N'4,50', N'30,00', N'25,50', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3430, N'Nakit İşlem', CAST(N'2018-10-16T00:00:00.000' AS DateTime), N'13,00', N'30,00', N'17,00', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3431, N'Nakit İşlem', CAST(N'2018-10-16T00:00:00.000' AS DateTime), N'25,00', N'50,00', N'25,00', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3432, N'Nakit İşlem', CAST(N'2018-10-16T00:00:00.000' AS DateTime), N'13,00', N'30,00', N'17,00', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3433, N'Nakit İşlem', CAST(N'2018-10-16T00:00:00.000' AS DateTime), N'17,50', N'30,00', N'12,50', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3434, N'Nakit İşlem', CAST(N'2018-10-16T00:00:00.000' AS DateTime), N'22,00', N'30,00', N'8,00', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3435, N'Nakit İşlem', CAST(N'2018-10-16T00:00:00.000' AS DateTime), N'26,60', N'20,00', N'-6,60', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3436, N'Nakit İşlem', CAST(N'2018-10-16T00:00:00.000' AS DateTime), N'4,50', N'30,00', N'25,50', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3438, N'Nakit İşlem', CAST(N'2018-10-16T00:00:00.000' AS DateTime), N'12,00', N'50,00', N'38,00', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3439, N'Nakit İşlem', CAST(N'2018-10-16T00:00:00.000' AS DateTime), N'16,50', N'30,00', N'13,50', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3443, N'Nakit İşlem', CAST(N'2018-10-16T00:00:00.000' AS DateTime), N'13,50', N'90,00', N'76,50', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3444, N'Nakit İşlem', CAST(N'2018-10-17T00:00:00.000' AS DateTime), N'27,00', N'180,00', N'153,00', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3445, N'Nakit İşlem', CAST(N'2018-10-17T00:00:00.000' AS DateTime), N'13,00', N'35,00', N'22,00', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3446, N'Nakit İşlem', CAST(N'2018-10-17T00:00:00.000' AS DateTime), N'39,00', N'70,00', N'31,00', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3447, N'Nakit İşlem', CAST(N'2018-10-17T00:00:00.000' AS DateTime), N'52,00', N'30,00', N'-22,00', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3448, N'Nakit İşlem', CAST(N'2018-10-17T00:00:00.000' AS DateTime), N'64,00', N'50,00', N'-14,00', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3449, N'Nakit İşlem', CAST(N'2018-10-17T00:00:00.000' AS DateTime), N'68,50', N'20,00', N'-48,50', N'Admin', N'10', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3450, N'Nakit İşlem', CAST(N'2018-10-18T00:00:00.000' AS DateTime), N'31,50', N'200,00', N'168,50', N'Personel', N'10', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3451, N'Nakit İşlem', CAST(N'2018-10-18T00:00:00.000' AS DateTime), N'9,00', N'60,00', N'51,00', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3452, N'Nakit İşlem', CAST(N'2018-10-19T00:00:00.000' AS DateTime), N'4,60', N'20,00', N'15,40', N'Personel', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3453, N'Nakit İşlem', CAST(N'2018-10-19T00:00:00.000' AS DateTime), N'9,10', N'30,00', N'20,90', N'Personel', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3454, N'Nakit İşlem', CAST(N'2018-10-19T00:00:00.000' AS DateTime), N'13,70', N'20,00', N'6,30', N'Personel', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3455, N'Kredi Kartı ile  İşlem', CAST(N'2018-10-19T00:00:00.000' AS DateTime), N'31,20', N'65,00', N'28,80', N'Personel', N'5', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3456, N'Nakit İşlem', CAST(N'2018-10-19T00:00:00.000' AS DateTime), N'35,70', N'30,00', N'-5,70', N'Personel', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3457, N'Nakit İşlem', CAST(N'2018-10-19T00:00:00.000' AS DateTime), N'56,80', N'90,00', N'33,20', N'Personel', N'10', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3458, N'Nakit İşlem', CAST(N'2018-10-19T00:00:00.000' AS DateTime), N'61,30', N'30,00', N'-31,30', N'Personel', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3459, N'Nakit İşlem', CAST(N'2018-10-20T00:00:00.000' AS DateTime), N'13,50', N'90,00', N'76,50', N'Personel', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3460, N'Nakit İşlem', CAST(N'2018-10-20T00:00:00.000' AS DateTime), N'19,50', N'20,00', N'0,50', N'Personel', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3461, N'Nakit İşlem', CAST(N'2018-10-20T00:00:00.000' AS DateTime), N'4,50', N'30,00', N'25,50', N'Personel', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3462, N'Nakit İşlem', CAST(N'2018-10-20T00:00:00.000' AS DateTime), N'9,00', N'30,00', N'21,00', N'Personel', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3463, N'Nakit İşlem', CAST(N'2018-10-20T00:00:00.000' AS DateTime), N'13,50', N'25,00', N'11,50', N'Personel', N'5', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3464, N'Nakit İşlem', CAST(N'2018-10-20T00:00:00.000' AS DateTime), N'25,50', N'45,00', N'19,50', N'Personel', N'5', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3465, N'Nakit İşlem', CAST(N'2018-10-20T00:00:00.000' AS DateTime), N'4,50', N'30,00', N'25,50', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3466, N'Nakit İşlem', CAST(N'2018-10-20T00:00:00.000' AS DateTime), N'12,00', N'50,00', N'38,00', N'Admin', N'0', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3467, N'Nakit İşlem', CAST(N'2018-10-27T00:00:00.000' AS DateTime), N'4,50', N'20,00', N'15,50', N'Admin', N'10', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3468, N'Nakit İşlem', CAST(N'2018-10-27T00:00:00.000' AS DateTime), N'4,50', N'40,00', N'15,50', N'Admin', N'10', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3469, N'Nakit İşlem', CAST(N'2018-10-27T00:00:00.000' AS DateTime), N'4,50', N'40,00', N'15,50', N'Admin', N'10', NULL)
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3470, N'Nakit İşlem', CAST(N'2018-10-27T00:00:00.000' AS DateTime), N'4,50', N'40,00', N'15,50', N'Admin', N'10', N'Fiyat Yükseltildi')
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3471, N'Nakit İşlem', CAST(N'2018-10-28T00:00:00.000' AS DateTime), N'4,50', N'30,00', N'25,50', N'Admin', N'0', N' Hiçbir işlem yapılmadı')
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3472, N'Nakit İşlem', CAST(N'2018-10-28T00:00:00.000' AS DateTime), N'4,50', N'25,00', N'20,50', N'Admin', N'5', N'Fiyat İndirildi')
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3473, N'Nakit İşlem', CAST(N'2018-10-28T00:00:00.000' AS DateTime), N'5,00', N'25,00', N'20,00', N'Admin', N'5', N'Fiyat İndirildi')
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3474, N'Nakit İşlem', CAST(N'2018-10-28T00:00:00.000' AS DateTime), N'10,00', N'35,00', N'15,00', N'Admin', N'5', N'Fiyat Yükseltildi')
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3475, N'Nakit İşlem', CAST(N'2018-10-28T00:00:00.000' AS DateTime), N'5,00', N'35,00', N'30,00', N'Admin', N'5', N'Fiyat Yükseltildi')
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3476, N'Nakit İşlem', CAST(N'2018-10-28T00:00:00.000' AS DateTime), N'5,00', N'30,00', N'25,00', N'Admin', N'0', N'Hiçbir işlem yapılmadı')
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3477, N'Nakit İşlem', CAST(N'2018-12-01T00:00:00.000' AS DateTime), N'1050,00', N'1200,00', N'150,00', N'Admin', N'100', N'Fiyat İndirildi')
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3480, N'Nakit İşlem', CAST(N'2018-12-01T00:00:00.000' AS DateTime), N'0,00', N'-100,00', N'-100,00', N'Admin', N'100', N'Fiyat İndirildi')
INSERT [dbo].[Fisler] ([id], [FisDurum], [FisTarihi], [FisGelisTutari], [FisSatisTutari], [FisKarTutari], [SiparisiOlusturan], [indirimTutari], [artieksi]) VALUES (3481, N'Nakit İşlem', CAST(N'2018-12-01T00:00:00.000' AS DateTime), N'5400,00', N'6100,00', N'700,00', N'Admin', N'100', N'Fiyat Yükseltildi')
SET IDENTITY_INSERT [dbo].[Fisler] OFF
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([id], [KategoriAd]) VALUES (66, N'Semers')
INSERT [dbo].[Kategori] ([id], [KategoriAd]) VALUES (67, N'Mopal')
INSERT [dbo].[Kategori] ([id], [KategoriAd]) VALUES (68, N'Ersoy')
INSERT [dbo].[Kategori] ([id], [KategoriAd]) VALUES (69, N'Auris')
INSERT [dbo].[Kategori] ([id], [KategoriAd]) VALUES (70, N'Link')
INSERT [dbo].[Kategori] ([id], [KategoriAd]) VALUES (71, N'Bluetooth')
SET IDENTITY_INSERT [dbo].[Kategori] OFF
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([id], [Ad], [Sifre], [Yetki]) VALUES (16, N'onurcosgun', N'856242', N'Admin')
INSERT [dbo].[Kullanici] ([id], [Ad], [Sifre], [Yetki]) VALUES (1024, N'faruk', N'1234', N'Personel')
INSERT [dbo].[Kullanici] ([id], [Ad], [Sifre], [Yetki]) VALUES (1025, N'zeki', N'257184', N'Admin')
INSERT [dbo].[Kullanici] ([id], [Ad], [Sifre], [Yetki]) VALUES (1026, N'1', N'1', N'Admin')
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
SET IDENTITY_INSERT [dbo].[KullaniciDetay] ON 

INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (1, NULL, N'Sep 10 2018  4:45PM', NULL)
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (2, N'personel', N'Sep 10 2018  4:53PM', N'Sep 10 2018  4:53PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (3, N'personel', N'Sep 10 2018  4:56PM', N'Sep 10 2018  4:56PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (4, N'personel', N'Sep 10 2018  5:13PM', N'Sep 10 2018  5:13PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (5, N'personel', N'Sep 10 2018  5:16PM', N'Sep 10 2018  5:16PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (6, N'personel', N'Sep 10 2018  5:17PM', N'Sep 10 2018  5:17PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (7, N'personel', N'Sep 10 2018  5:20PM', N'Sep 10 2018  5:20PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (8, N'personel', N'Sep 10 2018  5:20PM', N'Sep 10 2018  5:20PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (9, N'personel', N'Sep 10 2018  5:22PM', N'Sep 10 2018  5:22PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (10, N'personel', N'Sep 10 2018  5:23PM', N'Sep 10 2018  5:23PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (11, N'personel', N'Sep 10 2018  5:24PM', N'Sep 10 2018  5:24PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (12, N'personel', N'Sep 10 2018  5:25PM', N'Sep 10 2018  5:26PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (13, N'personel', N'Sep 10 2018  5:26PM', N'Sep 10 2018  5:26PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (14, N'personel', N'Sep 10 2018  5:26PM', N'Sep 10 2018  5:27PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (15, N'personel', N'Sep 10 2018  5:27PM', N'Sep 10 2018  5:27PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (16, N'personel', N'Sep 10 2018  5:28PM', N'Sep 10 2018  5:26PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (17, N'personel', N'Sep 10 2018  5:28PM', N'Sep 10 2018  5:28PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (18, N'personel', N'Sep 10 2018  5:29PM', N'Sep 10 2018  5:29PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (19, N'personel', N'Sep 10 2018  5:30PM', N'Sep 10 2018  5:30PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (20, N'personel', N'Sep 10 2018  5:42PM', N'Sep 10 2018  5:42PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (21, N'personel', N'Sep 10 2018  5:42PM', N'Sep 10 2018  5:42PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (22, N'personel', N'Dec 10 2018  7:38PM', N'Dec 10 2018  7:38PM')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (23, N'personel', N'13.10.2018 19:10:36', N'13.10.2018 19:17:17')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (24, N'personel', N'13.10.2018 19:17:34', N'13.10.2018 19:19:27')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (25, N'faruk', N'16.10.2018 11:20:43', N'16.10.2018 11:23:40')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (26, N'faruk', N'18.10.2018 18:30:50', N'18.10.2018 18:59:52')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (27, N'faruk', N'19.10.2018 12:37:08', N'19.10.2018 19:02:07')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (28, N'faruk', N'20.10.2018 13:38:16', N'20.10.2018 13:38:28')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (29, N'faruk', N'20.10.2018 13:38:43', N'20.10.2018 13:38:49')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (30, N'faruk', N'20.10.2018 13:39:01', N'20.10.2018 13:43:25')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (31, N'faruk', N'20.10.2018 13:44:22', N'20.10.2018 18:44:23')
INSERT [dbo].[KullaniciDetay] ([id], [Kullanici], [GirisTarih], [CikisTarih]) VALUES (32, N'faruk', N'1.12.2018 16:15:18', N'1.12.2018 16:16:28')
SET IDENTITY_INSERT [dbo].[KullaniciDetay] OFF
SET IDENTITY_INSERT [dbo].[Marka] ON 

INSERT [dbo].[Marka] ([id], [MarkaAd]) VALUES (18, N'BlitzPower')
INSERT [dbo].[Marka] ([id], [MarkaAd]) VALUES (19, N'RUBBER')
INSERT [dbo].[Marka] ([id], [MarkaAd]) VALUES (20, N'Kılıf')
INSERT [dbo].[Marka] ([id], [MarkaAd]) VALUES (21, N'Mopal')
INSERT [dbo].[Marka] ([id], [MarkaAd]) VALUES (22, N'Auris')
INSERT [dbo].[Marka] ([id], [MarkaAd]) VALUES (23, N'Link')
INSERT [dbo].[Marka] ([id], [MarkaAd]) VALUES (24, N'SEMERS')
INSERT [dbo].[Marka] ([id], [MarkaAd]) VALUES (25, N'xiaomi')
INSERT [dbo].[Marka] ([id], [MarkaAd]) VALUES (26, N'İPHONE')
SET IDENTITY_INSERT [dbo].[Marka] OFF
SET IDENTITY_INSERT [dbo].[SerialKey] ON 

INSERT [dbo].[SerialKey] ([id], [SerialKey]) VALUES (1, N'1')
SET IDENTITY_INSERT [dbo].[SerialKey] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Branslar] ON 

INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (1, N'Dahiliye')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (2, N'Göz')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (20, N'KBB')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (21, N'Fizik Tedavi')
SET IDENTITY_INSERT [dbo].[Tbl_Branslar] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Doktorlar] ON 

INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTc], [DoktorSifre]) VALUES (1, N'Caner', N'İnali', N'Göz', N'44444444444', N'4444')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTc], [DoktorSifre]) VALUES (23, N'sdfas', N'sdfsdf', N'Dahiliye', N'54545545454', N'5445')
SET IDENTITY_INSERT [dbo].[Tbl_Doktorlar] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Duyurular] ON 

INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (1, N'Selamın Aleyküm')
INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (2, N'fasdfasdf')
INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (3, N'heyyyy selammmm')
INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (4, N'Bittiii!!!!')
SET IDENTITY_INSERT [dbo].[Tbl_Duyurular] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Hastalar] ON 

INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (1, N'caner', N'inali', N'54545454545', N'(532) 254-5455', N'54545454', N'Erkek')
INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (2, N'Ayşe', N'Öztürk', N'55555555555', N'(532) 254-4444', N'0000', N'Kadın')
INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (3, N'caner', N'inali', N'56454545454', N'(545) 254-5454', N'545454', N'Erkek')
INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (4, N'Murat', N'Yücedağ', N'44444444444', N'(532) 545-4545', N'4444', N'Erkek')
SET IDENTITY_INSERT [dbo].[Tbl_Hastalar] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Sekreter] ON 

INSERT [dbo].[Tbl_Sekreter] ([Sekreterid], [SekterAdSoyad], [SekreterTc], [SekreterSifre]) VALUES (1, N'Caner İnali', N'88888888888', N'8888')
SET IDENTITY_INSERT [dbo].[Tbl_Sekreter] OFF
SET IDENTITY_INSERT [dbo].[Urun] ON 

INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1100, N'0', N'00', N'BlitzPower', N'Semers', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), -3)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1116, N'xiaomi', N'11', N'xiaomi', N'Mopal', CAST(2000.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)), 9)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1115, N'iphone 8', N'13', N'BlitzPower', N'Semers', CAST(900.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), -1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1105, N'İPH kulaklık aux', N'190198107022', N'İPHONE', N'Mopal', CAST(78.00 AS Decimal(18, 2)), CAST(230.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1104, N'iph 7  8 Kulaklık', N'190198117687', N'İPHONE', N'Ersoy', CAST(125.00 AS Decimal(18, 2)), CAST(240.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1079, N'Oto Tutucu', N'2052010134495', N'Mopal', N'Mopal', CAST(15.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), 100)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1080, N'Full Cover Cam', N'2052010134501', N'Semers', N'Semers', CAST(12.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 100)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1081, N'glass cam', N'2052010134518', N'Mopal', N'Mopal', CAST(15.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 100)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1084, N'rubber slikon kılıf', N'2052010134525', N'Mopal', N'Mopal', CAST(4.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 100)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1085, N'Canvas Kılıf', N'2052010134532', N'Mopal', N'Mopal', CAST(14.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), 100)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1088, N'Mirror Ayna Kapaklı kılıf', N'2052010134549', N'Mopal', N'Mopal', CAST(11.70 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 100)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1089, N'mermer slikon kılıf', N'2052010134556', N'Mopal', N'Mopal', CAST(10.80 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 100)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1090, N'seffaf taşlı kılıf', N'2052010134563', N'Mopal', N'Mopal', CAST(9.30 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 100)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1091, N'Robokop kılıf', N'2052010134587', N'Mopal', N'Mopal', CAST(10.38 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 100)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1092, N'rubber Yüzüklü silikon kılıf', N'2052010134594', N'Mopal', N'Mopal', CAST(9.90 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 100)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1093, N'Lazer yüzüklü seffaf', N'2052010134617', N'Mopal', N'Mopal', CAST(9.90 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 100)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1094, N'Kartlı deri kılıf', N'2052010134624', N'Mopal', N'Mopal', CAST(10.80 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 100)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1095, N'Pink slikon sulu kılıf', N'2052010134631', N'Mopal', N'Mopal', CAST(8.70 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 100)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1096, N'yüzüklü sulu kılıf', N'2052010134648', N'Mopal', N'Mopal', CAST(10.80 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 100)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1097, N'simli silikon kılıf', N'2052010134655', N'Mopal', N'Mopal', CAST(8.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 100)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1098, N'derili kılıf', N'2052010134662', N'Mopal', N'Mopal', CAST(6.20 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 100)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1113, N'samsung j7 prime', N'355623095529756', N'SEMERS', N'Semers', CAST(1050.00 AS Decimal(18, 2)), CAST(1300.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1026, N'iphone X Ferrari Kılıf', N'3700740408070', N'Kılıf', N'Ersoy', CAST(110.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1029, N'iphone X Ferrari Kılıf', N'3700740408490', N'Kılıf', N'Ersoy', CAST(110.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1030, N'iphone X Ferrari Kılıf', N'3700740409923', N'Kılıf', N'Ersoy', CAST(110.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1033, N'iphone X Mercedes', N'3700740413340', N'Kılıf', N'Ersoy', CAST(110.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1032, N'iphone 8 BMW', N'3700740414613', N'Kılıf', N'Ersoy', CAST(110.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1064, N'iphone 8plus BMHCl8lcappnbk', N'3700740415160', N'Kılıf', N'Ersoy', CAST(110.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1028, N'iphone 8 Ferrari Kılıf', N'3700740415672', N'Kılıf', N'Ersoy', CAST(110.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1027, N'8plus Ferrari Kılıf', N'3700740415689', N'Kılıf', N'Ersoy', CAST(110.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1031, N'iphone Xplus Mercedes-Benz', N'3700740417768', N'Kılıf', N'Ersoy', CAST(110.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1034, N'iphone 8 mercedes', N'3700740417973', N'Kılıf', N'Ersoy', CAST(110.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1102, N'Powerbank2 10000mh', N'6934177700910', N'xiaomi', N'Semers', CAST(92.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 9)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1037, N's9plus kırmızı kılıf', N'6956116772475', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1038, N's9 Siyah Kılıf', N'6956116772482', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1036, N's9plus Kırmızı Kılıf', N'6956116772505', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1035, N's9plus Kılıf', N'6956116772512', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1047, N'iphone 7 Piside Black', N'6957879413285', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1055, N'iphone 6 Plaide Case Brown', N'6957879413292', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1050, N'Kihgt İphone7 Plus Case', N'6957879413377', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1048, N'Fyrste İphone7 Plus Case Black', N'6957879413582', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1049, N'Fyrste İphone7 Plus Case', N'6957879413599', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1059, N'iphone 7-8 sb-ıp7spsav-wof', N'6957879414619', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1062, N'iphone 7-8 lpspsav-wof-1', N'6957879414640', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1057, N'Virtuoso iphone 7 case', N'6957879414732', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1056, N'Horseman İphone 7 Case', N'6957879414787', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1058, N'Tropica İphone7 Case Lily Elegance', N'6957879415142', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1045, N'iphone 7 Chevron Case red', N'6957879415319', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1063, N'iphone 7 plus sb-lp7spgsl-red-1', N'6957879417627', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1046, N'iphone 7 Case Chevron Black', N'6957879417757', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1040, N'iphone X siyah sb-Lpxsphor-Black', N'6957879418945', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1042, N'iphone X sb-ipxsphor-BRW', N'6957879418952', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1039, N'iphone X sb-ıpsphor-RED', N'6957879418969', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1051, N'iphone X La-IPXPEA-BLK', N'6957879419041', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1044, N'iphone X megic Mirror Red', N'6959633331750', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1043, N'iphone X Megic Mirror Black', N'6959633331774', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1076, N'Full Body Koruyucu', N'6970106760242', N'Mopal', N'Mopal', CAST(15.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1101, N'powerbank 10000mh', N'6970244522351', N'xiaomi', N'Semers', CAST(92.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1103, N'Powerbank 20000', N'6970244527301', N'xiaomi', N'Semers', CAST(142.00 AS Decimal(18, 2)), CAST(220.00 AS Decimal(18, 2)), 6)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1053, N'iphone X  LA-ipxjsm-black', N'6971301260315', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1041, N'iphone X - LPXSP-BLK', N'6971301260605', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1060, N'iphone X sb-lpxspdol-red', N'6971301260612', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1054, N'iphone X LA-ipxdas-black', N'6971301261282', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1052, N'iphone X la-ıpxdas-pnk', N'6971301261299', N'Kılıf', N'Ersoy', CAST(30.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1078, N'Araç Sarj Micro', N'6978912378880', N'Mopal', N'Mopal', CAST(15.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1070, N'Travel Charger 2.0 Amper Samsung', N'6978912379566', N'Mopal', N'Mopal', CAST(13.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1066, N'iphone 2.1 sarj aleti', N'6989856423154', N'Mopal', N'Mopal', CAST(13.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), 16)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1065, N'2.1 Amper Sarj Aleti', N'6995733625764', N'Mopal', N'Mopal', CAST(13.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 8)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1069, N'TYPE-C strong Charger', N'8681506404305', N'Link', N'Link', CAST(15.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1068, N'Strong Changer Sarj Aleti Samsung Lch-s550', N'8681506404329', N'Link', N'Link', CAST(13.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1110, N'Kablolu Kulaklık', N'8681506406057', N'Link', N'Link', CAST(29.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 7)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1109, N'sport Wıreles Kulaklık', N'8681506406743', N'Link', N'Link', CAST(58.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1111, N'MUZİK SPEAKER', N'8681506407535', N'Link', N'Bluetooth', CAST(58.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1112, N'MUZİK SPEAKER', N'8681506407771', N'Link', N'Bluetooth', CAST(58.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1017, N'Nano Cam', N'8693593400610', N'BlitzPower', N'Semers', CAST(5.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 812)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1021, N'3M Kaplama', N'8693593400627', N'BlitzPower', N'Semers', CAST(12.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 170)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1019, N'Rubber', N'8693593400634', N'RUBBER', N'Mopal', CAST(4.60 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 196)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1075, N'İphone Sarj Kablosu', N'8698579588146', N'Mopal', N'Mopal', CAST(6.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 8)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1099, N'Kulaklık', N'8806071564876', N'Mopal', N'Mopal', CAST(5.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 6)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1067, N'2in1 Type C sarj aleti', N'8816581013641', N'Auris', N'Auris', CAST(15.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1077, N'Araç Sarjı Samsung', N'8816581013863', N'Auris', N'Auris', CAST(15.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1071, N'TYPE-C metal sarj kablosu', N'8816581014358', N'Auris', N'Auris', CAST(9.50 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1073, N'Samsung Metal Sarj Kablosu', N'8816581023091', N'Auris', N'Auris', CAST(9.50 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 9)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1072, N'iphone Sarj kablosu Metal', N'8816581023107', N'Auris', N'Auris', CAST(9.50 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 7)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1074, N'TYPE-C Usb Sarj Kablosu', N'8816581025194', N'Auris', N'Auris', CAST(6.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 19)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1106, N'USB POWER ADAPTER', N'885909627349', N'İPHONE', N'Mopal', CAST(70.00 AS Decimal(18, 2)), CAST(170.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1107, N'İPH USB KABLO', N'885909627424', N'İPHONE', N'Ersoy', CAST(62.00 AS Decimal(18, 2)), CAST(140.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Urun] ([id], [UrunAd], [UrunBarkod], [UrunMarkasi], [UrunKategorisi], [UrunGelisFiyati], [UrunSatisFiyati], [UrunStok]) VALUES (1108, N'IPH USB 2 Metre', N'885909627448', N'İPHONE', N'Ersoy', CAST(85.00 AS Decimal(18, 2)), CAST(170.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[Urun] OFF
ALTER TABLE [dbo].[Tbl_Randevular] ADD  CONSTRAINT [DF_Tbl_Randevular_RandevuDurum]  DEFAULT ((0)) FOR [RandevuDurum]
GO
