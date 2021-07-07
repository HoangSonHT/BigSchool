USE [master]
GO
/****** Object:  Database [BigSchool]    Script Date: 7/7/2021 05:19:52 PM ******/
CREATE DATABASE [BigSchool]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BigSchool', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BigSchool.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BigSchool_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BigSchool_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BigSchool] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BigSchool].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BigSchool] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BigSchool] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BigSchool] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BigSchool] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BigSchool] SET ARITHABORT OFF 
GO
ALTER DATABASE [BigSchool] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BigSchool] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BigSchool] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BigSchool] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BigSchool] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BigSchool] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BigSchool] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BigSchool] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BigSchool] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BigSchool] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BigSchool] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BigSchool] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BigSchool] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BigSchool] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BigSchool] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BigSchool] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BigSchool] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BigSchool] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BigSchool] SET  MULTI_USER 
GO
ALTER DATABASE [BigSchool] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BigSchool] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BigSchool] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BigSchool] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BigSchool] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BigSchool] SET QUERY_STORE = OFF
GO
USE [BigSchool]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 7/7/2021 05:19:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/7/2021 05:19:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/7/2021 05:19:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/7/2021 05:19:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/7/2021 05:19:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/7/2021 05:19:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/7/2021 05:19:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 7/7/2021 05:19:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LecturerId] [nvarchar](128) NOT NULL,
	[Place] [nvarchar](255) NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202107060732256_InitialCreate', N'BigSchool.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E3F40FF83A0A7D383AC954B77B127B05B649DE49CA09B0BD6D9C5795BD012ED102B51AA44A5098AFEB23EF427F52F9CA144C9122FBAD88AED140B2C2C72F8CD70382487C361FEFAE3CFF14F4F816F3DE23821219DD847A343DBC2D40D3D4297133B658B37EFED9F7EFCEE1FE30B2F78B2BE1474279C0E5AD264623F30169D3A4EE23EE00025A380B87198840B3672C3C0415EE81C1F1EFEDB393A723040D8806559E34F296524C0D9077C4E43EAE288A5C8BF0E3DEC27A21C6A6619AA7583029C44C8C513FB0359426118FAA39CD6B6CE7C82408E19F617B685280D196220E5E9E704CF581CD2E52C8202E4DF3F4718E816C84FB090FE7445DEB52387C7BC23CEAA6101E5A6090B839E80472742338EDC7C2DFDDAA5E6407717A063F6CC7B9DE96F625F79382BFA14FAA00099E1E9D48F39F1C4BE2E599C25D10D66A3A2E12887BC8C01EED730FE36AA221E589DDB1D9496743C3AE4FF0EAC69EAB334C6138A531623FFC0BA4BE73E717FC6CFF7E1374C272747F3C5C9FBB7EF9077F2EE077CF2B6DA53E82BD0D50AA0E82E0E231C836C7851F6DFB69C7A3B476E5836ABB4C9B502B60493C2B6AED1D3474C97EC01A6CBF17BDBBA244FD82B4A84717DA604E6103462710A9F37A9EFA3B98FCB7AA79127FFBF81EBF1DB778370BD418F64990DBDC41F264E0CF3EA13F6B3DAE48144F9F4AA8DF7574176198701FFAEDB575EFB7516A6B1CB3B131A49EE51BCC4AC2EDDD859196F2793E650C39B7581BAFFA6CD2555CD5B4BCA3BB4CE4C28586C7B3614F2BE2CDFCE1677164530789969718D34199CBC558DA4B6075649B1329BA3AE6643A13B7FE755F02240C41F6019ECC005FC8F0589035CF6F2030C0946B4B7CC7728496015F0FE8B928706D1E1E700A2CFB09BC6609C338682E8C5B9DD3D8414DFA4C19CDBFCF6780D3634F7BF8697C865617C4179AB8DF13E86EEB7306517D43B470C7F666E01C83FEF49D01D601071CE5C1727C9251833F6A621B8D705E0156527C7BDE1F8F2B46B3764EA2312E8FD106921FD5A90AE7C113D85E28F18C8743E4993A81FC325A1DD442D48CDA2E614ADA20AB2BEA272B06E920A4AB3A01941AB9C39D5605E5E3642C3BB7919ECFEFB799B6DDEA6B5A0A2C619AC90F83F98E2189631EF0E318663BA1A812EEBC62E9C856CF838D317DF9B324E5F909F0ECD6AADD9902D02C3CF860C76FF67432626143F128F7B251D0E3F0531C077A2D79FABDAE79C24D9B6A743AD9BDB66BE9D35C0345DCE92247449360B34612F11B4A8CB0F3E9CD51EC1C87B234741A06360E8846F7950027DB365A3BAA5E7D8C70C5B676E1E169CA2C4459EAA46E890D743B06247D508B68A86D485FB97C2132C1DC7BC11E287A004662AA14C9D1684BA24427EAB96A4961DB730DEF792875C738E234C39C3564D7461AE0F7E70014A3ED2A0B46968EC542CAED9100D5EAB69CCDB5CD8D5B82B3189ADD8648BEF6CB04BE1BFBD8861366B6C0BC6D9AC922E02180379BB30507156E96A00F2C165DF0C543A31190C54B8545B31D0BAC67660A07595BC3A03CD8FA85DC75F3AAFEE9B79D60FCADBDFD61BD5B503DBACE963CF4C33F73DA10D83163856CDF37CCE2BF113D31CCE404E713E4B84AB2B9B08079F61560FD9ACFC5DAD1FEA3483C846D404B832B416507105A8002913AA8770452CAF513AE145F4802DE26E8DB062ED97602B36A06257AF422B84E60B53D9383B9D3ECA9E95D6A01879A7C34205476310F2E255EF7807A598E2B2AA62BAF8C27DBCE14AC7C4603428A8C5733528A9E8CCE05A2A4CB35D4B3A87AC8F4BB6919624F7C9A0A5A233836B49D868BB92344E410FB7602315D5B7F081265B11E928779BB26EECE4F951A260EC1812A9C6D7288A085D5612AB448935CBB3AAA66F66FD138E821CC371134DDE51296DC98985315A62A9165883A497244ED83962688E789C67EA050A99766F352CFF05CBEAF6A90E62B10F14D4FC77DE42B9B8AFEDB4AA2B22102EA17F01F767B220BA66F4F5CD2D9EE6867C146BE2F6D3D04F036A76AFCCADF3DBBB6AFBBC4445183B92FC8AFBA4E84A7172EB8AEF342CEA941864884ADF65FD61324398945D789E55759BBC51334A119CAAA29802563B1B369313D363A864EFB0FF48B522BCCC9C122929550051D413A392D5A08055EABAA3D6134FAA98F59AEE885276491552AAEA21653587A42664B5622D3C8346F514DD39A859235574B5B63BB2267FA40AADA95E035B23B35CD71D5593625205D65477C75EE59BC84BE81EEF5AC633CB9ADB567EA8DD6CDF3260BCCC7A38CCB657B9BBAF02558A7B6289DB79054C94EFA52D194F766BDA521EC9D8CC960C18E655A776E75D5F741A2FEACD98B58BECDAC2DE74916FC6EB67B12F6A17CAB14E2629B997C73BE918371647AAF64733CA192B27B1AD428DB0A93F270C07234E309AFDE24F7D82F9125E105C234A16386179F2867D7C78742CBDBCD99F57304E9278BEE6486A7A0A531FB32DE461D14714BB0F2856B322367829B2025502CE57D4C34F13FBB7ACD56916BBE0BFB2E203EB2AF94CC92F2954DCC729B67E57B33C87C99CEFF056A314F4F757F108A2BBCAAFFEF7356F7A60DDC6309D4EAD4349D1EB0C7FFD69442F69F2A61B48B3F68389D73BDB6A2F12B4A8D26C59FF01C29CB0411E1F1452FE33404FDFF7154DFBC0602344CD2382A1F00651A1E991C03A58C607021E7CB2EC8140BFCEEA1F0CAC239AF1B100A1FDC1E4A702DD97A1A2E50EF721CD71691B4B52A6E7D654EB8DF22E77BD372919D91B4D7435EBBA07DCA099D59BB928AF2C6379B0AD5393903C18F62EEDFEC5B390F725F178E5B4EF36DF789B29C60D57497FABCCE23DC885D3E4F6EC3E7F78DBB6668AFFEE791266BF2CE13D3336B1CDEF3E1778DBC6660A10EFB9B1F5CAF8DD335BDBD5FEB9634BEBBC85EE3C7F574D4532DCE3E8A2C86DF9B979C81D8EFFF3108C20F728F36795FA84B0A664D616862B12335373269ACC5899380A5F85A2996DBFBE8A0DBFB1B382A699AD217FB389B758FF1B790B9A66DE86ACC85D64166BF31275D9DE2DEB5853E2D46BCA24AEF5A42571BDCD676DBC947F4D89C38328A5367B0CB7CBAF274F7810950C39757AE405AB17C5B07756FE0623ECDF0959AE20F85F64A4D8ADED9A25CD155D84C5E62D49549048119A6BCC90075BEA59CCC802B90CAA79003A7B179E05F5F835C81C7B57F4366551CAA0CB3898FBB5801777029AF867C9CF7599C7B711FF4A86E802884978E0FE967E4889EF95725F6A62420608EE5D88702F1F4BC6C3BECBE712E926A41D8184FA4AA7E81E07910F60C92D9DA147BC8E6C607E1FF112B9CFAB08A009A47D20EA6A1F9F13B48C5190088C557BF8041BF682A71FFF0F44CDC23B8A540000, N'6.2.0-61023')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'21278312-27dd-4672-85bf-83eaa4767d1c', N'conson123@gmail.com', 0, N'AH1cubbawZIqTNJ7sjOAJPbeJfbOtBjQIzy4twRDBwnymHnINV3gVBi2/+frGp3k0Q==', N'8080b62f-6ba3-420e-b546-f78484f982e9', NULL, 0, 0, NULL, 1, 0, N'conson123@gmail.com', N'Hoang Dat')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'd27d2ddc-803b-4dfa-b9b3-cfe0d7da25b7', N'hoangson2351510@gmail.com', 0, N'AAL3vV8WPQgu5a7jWScwjgyndeYC21RTmrI2dMX/EZ8c8rxMm18sZiyklC8ReCzKXg==', N'1fea59c5-81f9-4149-94c2-a85632997f47', NULL, 0, 0, NULL, 1, 0, N'hoangson2351510@gmail.com', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'df348625-3770-4162-a46d-761fc1bc80de', N'hoangson123456@gmail.com', 0, N'ABJVMs0xK7p8Gt3MIRonqn0qqTBM7uxlhlmVpYErcwxX9hUjjVns2oSOmCggC7llvA==', N'f8a1f5e0-e620-4d49-805b-4f48be9a705a', NULL, 0, 0, NULL, 1, 0, N'hoangson123456@gmail.com', N'Hoang Cong Son')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Development')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Business')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Marketing')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([Id], [LecturerId], [Place], [DateTime], [CategoryId]) VALUES (2, N'd27d2ddc-803b-4dfa-b9b3-cfe0d7da25b7', N'HO CHI MINH', CAST(N'2021-07-06T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Course] ([Id], [LecturerId], [Place], [DateTime], [CategoryId]) VALUES (6, N'd27d2ddc-803b-4dfa-b9b3-cfe0d7da25b7', N'GiaLai', CAST(N'2021-07-06T03:00:00.000' AS DateTime), 3)
INSERT [dbo].[Course] ([Id], [LecturerId], [Place], [DateTime], [CategoryId]) VALUES (7, N'd27d2ddc-803b-4dfa-b9b3-cfe0d7da25b7', N'SaiGon', CAST(N'2021-07-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Course] ([Id], [LecturerId], [Place], [DateTime], [CategoryId]) VALUES (9, N'df348625-3770-4162-a46d-761fc1bc80de', N'DakDoa', CAST(N'2021-07-08T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Course] ([Id], [LecturerId], [Place], [DateTime], [CategoryId]) VALUES (10, N'21278312-27dd-4672-85bf-83eaa4767d1c', N'HaNoi', CAST(N'2021-07-08T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Course] ([Id], [LecturerId], [Place], [DateTime], [CategoryId]) VALUES (11, N'21278312-27dd-4672-85bf-83eaa4767d1c', N'LaoCai', CAST(N'2021-07-09T03:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/7/2021 05:19:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 7/7/2021 05:19:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 7/7/2021 05:19:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 7/7/2021 05:19:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 7/7/2021 05:19:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/7/2021 05:19:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_AspNetUsers] FOREIGN KEY([LecturerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_AspNetUsers]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Category]
GO
USE [master]
GO
ALTER DATABASE [BigSchool] SET  READ_WRITE 
GO
