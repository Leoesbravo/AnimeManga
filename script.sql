USE [master]
GO
/****** Object:  Database [Anime]    Script Date: 3/3/2023 7:31:14 PM ******/
CREATE DATABASE [Anime]
 CONTAINMENT = 
ALTER DATABASE [Anime] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Anime].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Anime] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Anime] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Anime] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Anime] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Anime] SET ARITHABORT OFF 
GO
ALTER DATABASE [Anime] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Anime] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Anime] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Anime] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Anime] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Anime] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Anime] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Anime] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Anime] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Anime] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Anime] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Anime] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Anime] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Anime] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Anime] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Anime] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Anime] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Anime] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Anime] SET RECOVERY FULL 
GO
ALTER DATABASE [Anime] SET  MULTI_USER 
GO
ALTER DATABASE [Anime] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Anime] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Anime] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Anime] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Anime', N'ON'
GO
USE [Anime]
GO
/****** Object:  StoredProcedure [dbo].[AnimeAdd]    Script Date: 3/3/2023 7:31:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AnimeAdd]

 @id VARCHAR(50),
 @gid VARCHAR(50), 
 @type VARCHAR(50),
 @name VARCHAR(50),
 @precision VARCHAR(50),
 @vintage VARCHAR(50)

 AS 
 INSERT INTO Anime(id,gid,type,name,precision,vintage)
 VALUES (@Id,@gid,@type,@name,@precision,@vintage)
GO
/****** Object:  StoredProcedure [dbo].[AnimeGetAll]    Script Date: 3/3/2023 7:31:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[AnimeGetAll]
 AS
 SELECT 
 id,
 gid,
type,
 name, 
 precision,
 vintage
 FROM 
 Anime
GO
/****** Object:  StoredProcedure [dbo].[DeleteAnime]    Script Date: 3/3/2023 7:31:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteAnime]
@id INT
AS 
DELETE FROM Anime
      WHERE id = @id
GO
/****** Object:  StoredProcedure [dbo].[DeleteManga]    Script Date: 3/3/2023 7:31:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteManga]
@id int
AS 
DELETE FROM Manga
      WHERE id = @id
GO
/****** Object:  StoredProcedure [dbo].[MangaAdd]    Script Date: 3/3/2023 7:31:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[MangaAdd]

 @id VARCHAR(50),
 @gid VARCHAR(50), 
 @type VARCHAR(50),
 @name VARCHAR(50),
 @precision VARCHAR(50),
 @vintage VARCHAR(50)

 AS 
 INSERT INTO Manga(id,gid,type,name,precision,vintage)
 VALUES (@Id,@gid,@type,@name,@precision,@vintage)
GO
/****** Object:  StoredProcedure [dbo].[MangaGetAll]    Script Date: 3/3/2023 7:31:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[MangaGetAll]
 AS
 SELECT 
  Manga.id,
 Manga.gid,
 Manga.type,
 Manga.name, 
 Manga.precision,
 Manga.vintage
 FROM
 Manga
GO
/****** Object:  Table [dbo].[Anime]    Script Date: 3/3/2023 7:31:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Anime](
	[id] [varchar](50) NOT NULL,
	[gid] [varchar](50) NOT NULL,
	[type] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[precision] [varchar](50) NULL,
	[vintage] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manga]    Script Date: 3/3/2023 7:31:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manga](
	[id] [varchar](50) NOT NULL,
	[gid] [varchar](50) NOT NULL,
	[type] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[precision] [varchar](50) NULL,
	[vintage] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Anime] ([id], [gid], [type], [name], [precision], [vintage]) VALUES (N'27193', N'1763982032', N'', N'Eminence in Shadow', N'TV 2', N'´')
INSERT [dbo].[Anime] ([id], [gid], [type], [name], [precision], [vintage]) VALUES (N'27193', N'1763982032', N'TV', N'Eminence in Shadow', N'TV 2', N'´2022-10-05')
INSERT [dbo].[Manga] ([id], [gid], [type], [name], [precision], [vintage]) VALUES (N'1', N'2', N'3', N'4', N'5', N'6')
INSERT [dbo].[Manga] ([id], [gid], [type], [name], [precision], [vintage]) VALUES (N'27189', N'486577719', N'manga', N'Dungeon Friends Forever', N'manga', N'´2022-01-27 (serialized in Comic Alive, Mar 2022)')
INSERT [dbo].[Manga] ([id], [gid], [type], [name], [precision], [vintage]) VALUES (N'27206', N'2452724970', N'', N'Hyakusho Kizoku', N'TV', N'´2023-07')
INSERT [dbo].[Manga] ([id], [gid], [type], [name], [precision], [vintage]) VALUES (N'27186', N'1954500606', N'', N'Kimi ni Furetara', N'manga', N'´2007-03-26')
USE [master]
GO
ALTER DATABASE [Anime] SET  READ_WRITE 
GO
