USE [master]
GO
/****** Object:  Database [onlineExam]    Script Date: 20/04/2018 10:27:15 ******/
CREATE DATABASE [onlineExam]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'onlineExam', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\onlineExam.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'onlineExam_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\onlineExam_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [onlineExam] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [onlineExam].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [onlineExam] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [onlineExam] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [onlineExam] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [onlineExam] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [onlineExam] SET ARITHABORT OFF 
GO
ALTER DATABASE [onlineExam] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [onlineExam] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [onlineExam] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [onlineExam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [onlineExam] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [onlineExam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [onlineExam] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [onlineExam] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [onlineExam] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [onlineExam] SET  ENABLE_BROKER 
GO
ALTER DATABASE [onlineExam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [onlineExam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [onlineExam] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [onlineExam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [onlineExam] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [onlineExam] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [onlineExam] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [onlineExam] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [onlineExam] SET  MULTI_USER 
GO
ALTER DATABASE [onlineExam] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [onlineExam] SET DB_CHAINING OFF 
GO
ALTER DATABASE [onlineExam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [onlineExam] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [onlineExam]
GO
/****** Object:  Table [dbo].[AksesKelas]    Script Date: 20/04/2018 10:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AksesKelas](
	[idKelas] [int] NULL,
	[idGuru] [varchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AksesMapel]    Script Date: 20/04/2018 10:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AksesMapel](
	[idMapel] [int] NULL,
	[idGuru] [varchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[detailKelas]    Script Date: 20/04/2018 10:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detailKelas](
	[idDetailKelas] [int] IDENTITY(1,1) NOT NULL,
	[noKelas] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDetailKelas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DetailSoal]    Script Date: 20/04/2018 10:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailSoal](
	[idDetailSoal] [int] NULL,
	[idNoSoal] [int] NULL,
	[idMapel] [int] NULL,
	[pertanyaan] [varchar](max) NULL,
	[jawabanA] [varchar](max) NULL,
	[jawabanB] [varchar](max) NULL,
	[jawabanC] [varchar](max) NULL,
	[jawabanD] [varchar](max) NULL,
	[jawabanE] [varchar](max) NULL,
	[jawabanBenar] [char](1) NULL,
	[idPrimary] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idPrimary] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Guru]    Script Date: 20/04/2018 10:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guru](
	[idGuru] [varchar](10) NOT NULL,
	[fullName] [varchar](100) NULL,
	[password] [varchar](100) NULL,
	[role] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idGuru] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HeaderSoal]    Script Date: 20/04/2018 10:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeaderSoal](
	[idSoal] [int] IDENTITY(1,1) NOT NULL,
	[idMapel] [int] NULL,
	[idGuru] [varchar](10) NULL,
	[idDetailSoal] [int] NULL,
	[TglDibuat] [datetime] NULL,
	[jmlSoal] [int] NULL,
	[idKelas] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idSoal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kelas]    Script Date: 20/04/2018 10:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kelas](
	[idKelas] [int] IDENTITY(1,1) NOT NULL,
	[namaKelas] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[idKelas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mapel]    Script Date: 20/04/2018 10:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mapel](
	[idMapel] [int] IDENTITY(1,1) NOT NULL,
	[namaMapel] [varchar](100) NULL,
	[Kkm] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idMapel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pengguna]    Script Date: 20/04/2018 10:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pengguna](
	[idPengguna] [varchar](100) NULL,
	[password] [varchar](100) NULL,
	[role] [varchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Siswa]    Script Date: 20/04/2018 10:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siswa](
	[idSiswa] [varchar](10) NOT NULL,
	[fullName] [varchar](100) NULL,
	[kelas] [varchar](3) NULL,
	[password] [varchar](100) NULL,
	[role] [varchar](100) NULL,
	[idDetailKelas] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idSiswa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ujian]    Script Date: 20/04/2018 10:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ujian](
	[idUjian] [int] IDENTITY(1,1) NOT NULL,
	[idSoal] [int] NOT NULL,
	[idSiswa] [varchar](10) NOT NULL,
	[tglPengerjaan] [datetime] NULL,
	[nilai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idUjian] ASC,
	[idSoal] ASC,
	[idSiswa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (2, N'TC20170023')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (3, N'TC20170023')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (1, N'TC20170024')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (2, N'TC20170024')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (1, N'TC20090023')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (2, N'TC20090023')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (1, N'TC20080002')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (2, N'TC20080002')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (3, N'TC20080002')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (1, N'TC20080001')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (2, N'TC20080001')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (1, N'TC20120002')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (2, N'TC20120002')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (3, N'TC20120002')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (1, N'TC20110003')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (2, N'TC20110003')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (3, N'TC20110003')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (1, N'TC20120008')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (2, N'TC20120008')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (1, N'TC20170025')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (2, N'TC20170025')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (1, N'TC20170026')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (2, N'TC20170026')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (1, N'TC20170027')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (2, N'TC20170027')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (1, N'TC20110004')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (2, N'TC20110004')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (3, N'TC20110004')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (1, N'TC20010010')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (2, N'TC20010010')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (3, N'TC20010010')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (1, N'TC20090002')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (2, N'TC20090002')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (1, N'TC20170028')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (2, N'TC20170028')
INSERT [dbo].[AksesKelas] ([idKelas], [idGuru]) VALUES (3, N'TC20170028')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (7, N'TC20170023')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (2, N'TC20170023')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (3, N'TC20170023')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (4, N'TC20170023')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (2, N'TC20170024')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (7, N'TC20090023')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (4, N'TC20080002')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (5, N'TC20080002')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (3, N'TC20080001')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (4, N'TC20080001')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (7, N'TC20080001')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (4, N'TC20120002')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (5, N'TC20120002')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (8, N'TC20110003')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (1, N'TC20120008')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (1, N'TC20170025')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (3, N'TC20170026')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (9, N'TC20170027')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (10, N'TC20110004')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (7, N'TC20010010')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (1, N'TC20090002')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (3, N'TC20170028')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (4, N'TC20170028')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (5, N'TC20170028')
INSERT [dbo].[AksesMapel] ([idMapel], [idGuru]) VALUES (7, N'TC20170028')
SET IDENTITY_INSERT [dbo].[detailKelas] ON 

INSERT [dbo].[detailKelas] ([idDetailKelas], [noKelas]) VALUES (1, 1)
INSERT [dbo].[detailKelas] ([idDetailKelas], [noKelas]) VALUES (2, 2)
INSERT [dbo].[detailKelas] ([idDetailKelas], [noKelas]) VALUES (3, 3)
INSERT [dbo].[detailKelas] ([idDetailKelas], [noKelas]) VALUES (4, 4)
INSERT [dbo].[detailKelas] ([idDetailKelas], [noKelas]) VALUES (5, 5)
INSERT [dbo].[detailKelas] ([idDetailKelas], [noKelas]) VALUES (6, 6)
INSERT [dbo].[detailKelas] ([idDetailKelas], [noKelas]) VALUES (7, 7)
INSERT [dbo].[detailKelas] ([idDetailKelas], [noKelas]) VALUES (8, 8)
INSERT [dbo].[detailKelas] ([idDetailKelas], [noKelas]) VALUES (9, 9)
INSERT [dbo].[detailKelas] ([idDetailKelas], [noKelas]) VALUES (10, 10)
INSERT [dbo].[detailKelas] ([idDetailKelas], [noKelas]) VALUES (11, 11)
INSERT [dbo].[detailKelas] ([idDetailKelas], [noKelas]) VALUES (12, 12)
SET IDENTITY_INSERT [dbo].[detailKelas] OFF
SET IDENTITY_INSERT [dbo].[DetailSoal] ON 

INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (1, 1, 1, N'Berikut  yang bukan merupakan contoh dari konjungsi temporal adalah?', N'mengapa ', N'selanjutnya ', N'kemudian', N'apabila', N'setelah', N'C', 1)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (1, 2, 1, N'Kalimat dengan tesk prosedur tidak membingungkan dan mudah diikuti berarti kalimat tersebut', N'logis', N'singkat', N'jelas', N'baku', N'ejektif', N'B', 2)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (1, 3, 1, N'“jangan serahkan kendaraan atau STNK begitu saja” merupakan kalimat?', N'Interogatif', N'Imperative', N'Deklaratif', N'primitive ', N'baku ', N'A', 3)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (1, 4, 1, N'Jika, seandainya, apabila merupakan bagian dari?', N'Konjungsi temporal', N'verba tingkah laku', N'verba material', N'pembukaan', N'konjngsi syarat', N'E', 4)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (1, 5, 1, N'“pastikan tuduhan pelanggaran” merupakan contoh dari?', N' Deklaratif', N'interogatif', N'imperatif', N'perpuasif', N'deklarasi', N'D', 5)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (1, 6, 1, N'Metode  berpidato yang dengan menghafal naskah tesk pidato terlebih dahulu disebut?', N'Imprompti', N'Memoriter', N'naskah', N'Esktemporan', N'Imporan', N'C', 6)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (1, 7, 1, N'Penyampain nasehat yang tidak dibatasi oleh waktu  adalah', N'Ceramah ', N'Pidato', N'Dakwah', N'seminar', N' Presentasi', N'C', 7)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (1, 8, 1, N'Kalimat yang  menyatakan penutup adalah?', N'Mohon maaf', N'Dan ini', N' Tetapi', N'Inilah', N'Sekalipun', N'A', 8)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (1, 9, 1, N'Paragraph kedua termasuk struktur bagian?', N'isi', N'Pendahuluan', N'abstrak', N'orientasi', N'penutup', N'A', 9)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (1, 10, 1, N' Paragraph pertama termasuk struktur bagian?', N'penutup', N'isi', N'pendahuluan', N'abstrak', N'orientasi', N'C', 10)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (2, 1, 2, N' “ Andi travelled to maldive last year”  the passive is?', N'a. Maldive was travelled by Andi last year.', N'Maldive is travelled by Andi last year.', N'No change', N'Maldive will be travelled by Andi last year', N'Maldive  travelled by Andi last year', N'B', 11)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (2, 2, 2, N' “ Omar wrote a letter last night” the passive is?', N' A letter were written by Omar lastnight', N' A letter is written by Omar lastnight', N' A letter are written by Omar lastnight', N'A letteris being written by Omar lastnigh', N' A letter was written by Omar lastnight', N'D', 12)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (2, 3, 2, N' “ she broke the window yesterday” the passive is?', N' The window is broke by her yesterday', N'The window is break by her yesterday', N' The window is being broken  by her yesterday', N'The window is broke nby her yesterday', N'The window is werw broken by her yesterday', N'B', 13)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (2, 4, 2, N' “ students are drawing the scenery” the passibe is?', N' The scenery are drew by students', N' The scenery is drew by students', N'The scenery are being  draw by students', N'The scenery is being drew  by students', N'The scenery is being  drawn by students', N'E', 14)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (2, 5, 2, N' Abibah arrives  at  school 06.15 am, she greets her teacher by saying', N'.Hello', N'goog morning', N'good night', N'Good afternoon', N'Good morning  ', N'E', 15)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (2, 6, 2, N'Soleh always ... late in the morning. His mother is always mad with him', N'Waken up', N'Worked up', N'Woke up', N'Wake up', N'Wakes up', N'E', 16)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (2, 7, 2, N'how are you ?', N'yes', N'no', N'alright', N'of course', N'fine', N'E', 17)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (2, 8, 2, N'" selamat pagi " in english ?', N'good morning', N'good night', N'good bye', N'Good afternoon', N'oh may god', N'A', 18)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (2, 9, 2, N'" senin " in english ?', N'Sunday ', N'Saturday', N'Friday', N'Thursday', N'Monday', N'E', 19)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (2, 10, 2, N'" tidur " in english ? ', N'take  a bath', N'swimming', N'sleep', N'run', N'reading', N'C', 20)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (3, 1, 3, N'Diketahui data 4,7,5,6,8,8,3,5,9,7. Hamparan data di samping adalah ', N'3', N'6', N'7', N'8', N'9', N'C', 21)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (3, 2, 3, N' Kuartil atas data pada tabel Frekuensi di bawah ini adalah ', N'54,5', N'60,5', N'78,25', N'. 78,5', N'78,75', N'E', 22)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (3, 3, 3, N'ibu membeli 25 apel dan 10 jeruk,Kemudian ayah membeli buah apel sebanyak 10 . Jadi berapa total buah yang dibeli oleh ayah dan ibu?', N'45 buah', N'25 buah', N'35 buah', N'20 buah', N'50 buah', N'A', 23)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (3, 4, 3, N'diketahui sistem pertidaksamaan linear dua variabel x > 0,  y > 0,   y <  0, x + y  > 3, 2x  + y  <  4. Nilai maksimum fungsi tujuannya jika di ketahui f(x ,y)= 5x + 2y adalah ?  ', N'10', N'12', N'14', N'16', N'20', N'B', 24)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (3, 5, 3, N'susunan kumpulan bilangan yang diatur dalam baris dan kolom berbentuk persegi panjang yang dicirikan dengan elemen-elemen penyusunnya diapit oleh siku atau kurung biasa. Termasuk pengertian dari ?', N'orde', N'determinan', N'transpose matriks', N'matriks', N'invers matriks', N'D', 25)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (3, 6, 3, N'diketahui untuk setiap x bilangan genap, maka x-1 adalah ?', N'bilangan prima', N'bilangan genap', N'bilangan ganjil', N'bilangan desimal', N'bilangan pecahan ', N'A', 26)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (3, 7, 3, N' Nilai rata-rata tes suatu lomba matematika dari 20 orang siswa adalah 25. Jika nilai rata-rata 8  dari orang siswa dari 20 siswa tersebut adalah 10, maka nilai rata-rata dari 12 siswa lainnya adalah  ?', N'10', N'20', N'30', N'40', N'50', N'C', 27)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (3, 8, 3, N'anisa membeli buku seharga Rp.50.000 dan uang anisa sebesar Rp. 100.000. jadi berapa kembalian uang anisa ?', N'Rp. 30.000', N'Rp.40.000', N'Rp.60.000', N'Rp50.000', N'tidak kembali', N'D', 28)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (3, 9, 3, N'ibu pergi ke pasar pada pukul 07:00 pagi dan pulang kerumah pada pukul 09:00 pagi. Berapa lama ibu pergi kepasar ?', N'3 jam', N'2 jam', N'1 jam', N'30 meenit', N'24 menit', N'B', 29)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (3, 10, 3, N'1 jam sama dengan …. Menit', N'60 menit', N'120 menit', N'30 menit', N'25 menit', N'7 menit', N'A', 30)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (4, 1, 4, N'Gerak suatu benda pada garis lurus dengan kecepatan tetap merupakan pengertian dari:', N'Gerak Translasi', N'Gerak Melingkar', N'Kecepatan', N'GLBB', N'GLB', N'E', 31)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (4, 2, 4, N'Dari pilihan jawaban berikut, manakah yang merupakan definisi atau pengertian dari Kelajuan Sesaat', N'kelajuan rata-rata yang waktu tempuhnya mendekati nol', N'kelajuan rata-rata hasil dari perpindahan dari satu tempat ke tempat lainnya', N') hasil bagi jarak total yang ditempuh dengan waktu tempuhnya', N'hasil bagi perpindahan dengan selang waktu', N' jarak yang ditempuh dengan waktu tempuhnya', N'B', 32)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (4, 3, 3, N' Luas suatu Bujur sangkar adalah 26,5 cm2, mka panjang salah satu sisinya adalah…', N'5,1478 cm', N'5,148 cm', N'5,15 cm', N'.  5,2 cm', N'5,1 cm', N'C', 33)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (4, 4, 4, N'Diantara kelompok besaran berikut, yang termasuk kelompok besaran pokok dalam   system Internasional adalah ', N'Suhu, volume, massa jenis dan kuat arus', N'Kuat arus, panjang, waktu,  dan massa jenis', N'Panjang, luas, waktu dan jumlah zat', N'. Kuat arus, intersitas cahaya, suhu, waktu', N'Intensitas cahaya, kecepatan, percepatan, waktu', N'D', 34)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (4, 5, 4, N'Seorang siswa mengukur diameter sebuah lingkaran hasilnya adalah 8,50 cm. Keliling lingkarannya dituliskan menurut aturan angka penting adalah ', N'. 267 cm', N'26,7 cm', N'. 2,66 cm', N'0,0267 cm', N'267', N'A', 35)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (4, 6, 4, N'Luas suatu Bujur sangkar adalah 26,5 cm2, mka panjang salah satu sisinya adalah…', N' 5,1478 cm', N'82,74 cm2', N'82,745 cm2', N'82,75 cm2', N'83 cm2', N'E', 36)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (4, 7, 4, N'budi mengendarai sepeda motor sejauh 80 km selama 2 jam. Kecepatan rata-rata budi sebesar ?', N'11,11 m/s', N'40 m/s', N'666,67 m/s', N'666,67 km/jam', N'22,22 km/jam', N'A', 37)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (4, 8, 4, N'satuan koefisien gesek adalah ?', N'ms', N's/m', N'farad', N'ohm', N'tidak ada satuan', N'E', 38)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (4, 9, 4, N'sebuah roda jari-jari 60 cm diputar dengan kecepatan 6 m/s. kecepatan sudutnya sebesar ?', N'12 rad/s', N'3 rad/s', N'1,2 rad/s', N'0,3 rad/s', N'10 rad/s', N'C', 39)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (4, 10, 4, N'bilangan 3,04000 memiliki …. Angka penting.', N'2', N'3', N'4', N'5', N'6', N'E', 40)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (5, 1, 5, N'pada reaksi 2 NH3 (g) ? N2 (g) + 3H2 (l) ?H = +1173 kJ maka energi ikatan rata-rata N-H adalah ', N'1.173,0 kJ', N'586,5 kJ', N'391,0 kJ', N'195,5 kJ', N'. 159,5 kJ', N'D', 41)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (5, 2, 5, N'Pengaruh perubahan suhu dari percobaan 2 dan 5 pada soal nomor 3 adalah ', N'suhu naik 10° C kecepatan reaksi menjadi 2 kali', N'suhu naik 10° C kecepatan reaksi menjadi 1/2 kali', N'bila suhu naik kecepatan reaksi berkurang', N'bila suhu turun kecepatan reaksi bertambah', N'bila suhu turun kecepatan reaksi berkurang', N'A', 42)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (5, 3, 5, N'Pada suatu reaksi suhu dari 25° C dinaikkan menjadi 75° C. Jika setiap kenaikan 10° C kecepatan  menjadi 2 kali lebih cepat, maka kecepatan reaksi tersebut di atas menjadi …. kali lebih cepat.', N'2', N'8', N'10', N'16', N'32', N'E', 43)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (5, 4, 5, N'U01U3EBT0509000022A Dari data di atas reaksi yang berlangsung paling cepat adalah percobaan nomor ', N'1', N'2', N'3', N'4', N'5', N'A', 44)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (5, 5, 5, N' Dari reaksi NO dan Br2 diperoleh data sebagai berikut  U01U3EBT0507000054A Ordo reaksi tersebut adalah ', N'0', N'1', N'2', N'3', N'4', N'D', 45)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (5, 6, 5, N'Hasil percobaan reaksi NO(g) + 2H2 (g)> panahN2(g) + 2H2O(g diperoleh data sebagai berikut : U01U3EBT0508000022A Tingkat reaksi untuk reaksi di atas adalah ', N'1', N'tetap', N'2,5', N'2', N'3', N'B', 46)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (5, 7, 5, N'pada reaksi2 NH3 (g) ? N2 (g) + 3H2 (l) ?H = +1173 kJ maka energi ikatan rata-rata N-H adalah ', N'1.173,0 kJ', N'586,5 kJ', N'391,0 kJ', N'195,5 kJ', N'159,5 kJ', N'D', 47)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (5, 8, 5, N'Suatu reaksi berlangsung tiga kali lebih cepat, jika suhu dinaikkan sebesar 20oC. Bila pada suhu 10oC reaksi berlangsung selama 45 menit, maka pada suhu 50oC reaksi tersebut berlangsung selama ', N'1/50 menit                               ', N'1/25 menit', N'1 menit', N'1/5 menit', N'5 menit', N'E', 48)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (5, 9, 5, N'Data percobaan reaksi antara besi dan larutan asam klorida : U01U3EBT0509000022A Dari data di atas reaksi yang berlangsung paling cepat adalah percobaan nomor ?', N'1', N'2', N'3', N'4', N'5', N'A', 49)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (5, 10, 5, N'Dari suatu reaksi diketemukan bahwa kenaikan suhu sebesar 10°C dapat memperbesar  kecepatan reaksi 2x. Keterangan yang tepat untuk ini adalah?', N'energi rata-rata partikel yang beraksi naik menjadi 2x', N' kecepatan rata-rata partikel yang beraksi naik menjadi 2x', N'jumlah partikel yang memiliki energi minimum bertambah menjadi 2x', N'frekuensi tumbukan naik menjadi 2x', N'energi aktivasi naik menjadi 2x', N'D', 50)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (6, 1, 6, N'Di samping masjid Demak, Sunan Kalijaga menciptakan dasar-dasar perayaan Maulud Nabi Muhammad saw. yang sampai sekarang masih berlangsung di Yogyakarta, Surakarta, dan cirebon, yaitu?', N'mauludan', N'rajaban', N'suroan', N'sekaten', N'syawalan', N'D', 51)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (6, 2, 6, N'Penyebaran Islam di Indonesia melalui jalur utara diperoleh unsur baru yang disebut ', N'Tasawuf', N'Wahabi', N'Muhammadiyah', N'Ichwanul Muslimin', N'Syi’ah', N'A', 52)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (6, 3, 6, N'Perkembangan tradisi Islam yang cukup pesat mampu mempersatukan masyarakat dalam Perkembangan tradisi Islam yang cukup pesat mampu mempersatukan masyarakat dalam menghadapi bangsa ?', N'jepang', N'china', N'afrika', N'eropa', N'australia', N'D', 53)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (6, 4, 6, N'Proses terbentuknya kota pada awal pengaruh Islam lebih bermakna …', N'ekomonis', N'religus', N'sosial', N'budaya', N'politis', N'A', 54)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (6, 5, 6, N'Perkembangan perdagangan yang terus meningkat mempercepat berdirinya kerajaan-kerajaan Islam seperti di bawah ini, kecuali ?', N'demak', N'ternate', N'tidore', N'malaka', N'madura', N'E', 55)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (6, 6, 6, N'Munculnya istilah sunan, wazir, dan laksamana adalah bentuk-bentuk pengaruh Islam di bidang….', N'budaya', N'sosial', N'politik', N'pemerintah', N'hukum', N'E', 56)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (6, 7, 6, N'Berikut ini adalah tempat pengajaran agama Islam, yaitu ….', N'langgar', N'musolah', N'masjid', N'gardu', N'langgar,musolah dan masjid benar', N'E', 57)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (6, 8, 6, N'Setelah jatuhnya Malaka tahun 1511, maka perkembangan Islam pindah ke ….', N'banten ', N'maluku', N'makkasar', N'irian', N'kalimantan', N'A', 58)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (6, 9, 6, N'Daerah yang merupakan pusat penyebaran Islam sekaligus tempat pertemuan kaum intelektual Islam adalah ….', N'maluku ', N'banten', N'malaka', N'aceh', N'makkasar', N'A', 59)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (6, 10, 6, N'pattimura gugur pada tahun ?', N'1815', N'1816', N'1817', N'1818', N'1819', N'C', 60)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (7, 1, 7, N'Dalam menyusun suatu program,langkah pertama yang harus di lakkukan adalah :', N'Membuat program', N'membuat algoritma', N'membeli komputer', N'prose', N'mempelajari progrm', N'B', 61)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (7, 2, 7, N'Sebuah prosedur langkah demi langkah yang pasti untuk menyelesaikan sebuah   masalah di sebut ?', N'proses', N'program', N'algoritma', N'step', N'diagram', N'C', 62)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (7, 3, 7, N'Pseudocode yang di gunakan pada penulisan algoritma berupa ', N'bahasa inggris', N'bahasa indonesia', N'bahasa pemograman', N'bahasa mesin', N'bahasa puitis', N'C', 63)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (7, 4, 7, N'Pada pembuatan program komputer, algoritma dibuat ', N' Sebelum pembuatan program', N'Pada saat program dibuat', N'Sesudah pembuatan program', N'Pada saat verifikasi program', N'Pada saat di jalankan', N'A', 64)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (7, 5, 7, N'Tahapan dalam menyelesaikan suatu masalah adalah ', N'Masalah-Pseudocode-Flowchart-Program-Eksekusi-Hasil', N'Masalah-Algoritma-Flowchart-Program-Eksekusi-Hasil', N'Masalah-Model-Algoritma-Eksekusi-Hasil', N'Pada saat verifikasi program', N'algoritma-Program-Model-Eksekusi-Hasil', N'D', 65)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (7, 6, 7, N'Diketahui bahwa kantong P kosong. Kantong Q berissi 10 buah kelereng dan kantong R berisi 15 kelereng. Apabila yang terbawa hanya sebuah kantong dan di katakan BUKAN  Maka jumlah kelereng yang terbawa adalahkantong P yang terbawa, ', N'10', N'15', N'10 dan 15', N'12', N'kosong', N'C', 66)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (7, 7, 7, N'Diberikan algoritma : Apabila warna merah maka jadi hijau. Apabila warna hijau maka jadi putih, selain warna merah dan hijau maka jadi ungu. Jika kondisi input warna adalah hitam, maka warna jadi', N'merah', N'unggu', N'hijau', N'putih', N'abu-abu', N'B', 67)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (7, 8, 7, N'Instruksi P=Q akan mengakibatkan nilai P=nilaiQ,dan nilai Q menjadi ?', N'Menjadi Sembarang Nilai', N'Menjadi hampa ', N'Q tetap ', N'P tetap', N'menjadi 10', N'D', 68)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (7, 9, 7, N'Apabila a=5, b=10, maka jika di berikan instruksi a=b; b=a akan mengakibatkan  ?', N'a=0 , b=5', N'a=10 , b=5', N'a=10 , b=0', N'a=b', N'a=10 , b=10', N'E', 69)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (7, 10, 7, N'Di berikan algoritma P=10; P=P+5; Q=P. Nilai P dan Q masing-masing adalah ?', N'15 dan 0', N'0 dan 15', N'15 dan 15', N'0 dan 10', N'10 dan 15', N'C', 70)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (8, 1, 8, N'Orang yang tidak menjadikan Alquran sebagai pedoman hidupnya dan selalu berbuat kejahatan, termasuk orang yang ?', N'durhaka kepada Allah', N'durhaka kepada diri sendiri', N'menganiaya diri sendiri', N'merugikan diri sendiri', N'menyiksa diri sendiri', N'C', 71)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (8, 2, 8, N'Perbuatan yang seimbang antara kebaikan dan kejahatan disebut ?', N'sabiqum bil khairat', N'zalimun linafsihi', N'khairunnasi', N'muqtasid', N'mujtahid', N'D', 72)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (8, 3, 8, N' Allah akan memberikan balasan bagi orang yang mau memberi kelapangan tempat kepada orang  lain dengan ?', N'pahala yang setimpal ', N'melapangkan rezeki', N'melapangkan kuburnya', N'memberi kelapangan untuknya pada hari kiamat', N'melapangkan pekerjaannya', N'D', 73)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (8, 4, 8, N'Fastabiqul khairat, artinya ?', N'berlomba dalam belajar', N'berlomba dalam disiplin', N'berlomba dalam kesehatan', N'berlomba dalam kebaikkan ', N'berlomba dalam kedudukan', N'D', 74)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (8, 5, 8, N'Ilmu yang mempelajari bagaimana hukum membaca Alquran dengan baik dan benar adalah ?', N'ilmu tauhid', N'ilmu nahwu', N'ilmu fiqih', N'ilmu tajwid', N'ilmu saraf', N'D', 75)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (8, 6, 8, N'Dalam membaca Alquran hendaknya diucapkan dengan fasih. Fasih artinya  ?', N'suci dari hadas', N'lagunya bagus', N'benar dan lancar', N'tajwidnya benar', N'suaranya merdu', N'D', 76)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (8, 7, 8, N'Golongan manusia yang zalim kepada dirinya sendiri disebut  ?', N'zalimun linafsih', N'muqtasid', N'sabiqum bilkhairat', N'orang kafir', N'orang munafik', N'A', 77)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (8, 8, 8, N'Surga ‘And diperuntukkan bagi orang yang  ?', N'berlapang-lapang dalam majelis', N'beriman dan mencari ilmu', N'beramal saleh', N'lebih dahulu berbuat kebaikan', N'suka melakukan kebaikan ', N'D', 78)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (8, 9, 8, N'Orang yang berhasil berlomba dalam kebaikan, maka orang tersebut akan ?', N'puas dan bangga dengan keberhasilannya', N'dihargai di masyarakat', N'bahagia karena dihiasi dengan amal saleh', N'senang karena mendapat pujian dari orang lain', N'. tentram hatinya karena usahanya berhasil', N'C', 79)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (8, 10, 8, N'orang yang selalu berkata jujur  dalam hidup nya akan selalu merasa ?', N'sukar', N'gelisah', N'sengsara', N'hina', N'tenang', N'E', 80)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (9, 1, 9, N'Budaya politik yang berkembang di masyarakat Indonesia sekarang adalah ?', N'budaya politik kaulat', N'budaya politik pasif', N'budaya politik kolonila', N'budaya politik parokial', N'budaya politik partisipan', N'E', 81)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (9, 2, 9, N' Pengertian politik meliputi politik sebagai ethiek dan politik sebagai technic. Pengertian tersebut menurut pendapat ?', N'Roger H. Soltou', N'Kranenburg', N'John Locke', N'Logeman', N'Hans Kelsen', N'E', 82)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (9, 3, 9, N'Politik berkenaan dengan cara (teknik) manusia atau individu untuk mencapai tujuan, berarti  politik dalam arti ?', N'ethiek', N'technic', N'etis', N'etika', N'politis', N'B', 83)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (9, 4, 9, N'Budaya politik di mana tingkat partisipasi politiknya rendah, merupakan jenis budaya politik ?', N'partisipan', N'parokial', N'kaulah', N'pasif', N'kolonial', N'B', 84)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (9, 5, 9, N'Faktor yang mendorong lahirnya budaya politik adalah ?', N'pendidikan politik', N'kehidupan demokrasi masyarakat', N'tingkat ekonomi masyarakat', N'sosial budaya masyarakat', N'kesadaran masyarakat tentang hukum', N'A', 85)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (9, 6, 9, N'Apabila ada sekelompok buruh mengadakan unjuk rasa menolak adanya revisi UU Ketenagakerjaan, berarti politik masyarakat adalah ?', N'mendukung kebijakan pemerintah', N'tidak setuju kebijakan pemerintah', N'senang kebijakan pemerintah', N'setuju tindakan pemerintah', N' memihak pemerintah', N'B', 86)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (9, 7, 9, N'Kualitas demokrasi suatu negara akan lebih baik apabila ?', N' tingkat ekonomi lebih baik', N' partisipasi politk masyarakat tinggi', N' kreativitas', N'masyarakat bebas menggali potensi', N'masyarakat hidup dengan sejahtera', N'B', 87)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (9, 8, 9, N'Di bawah ini yang bukan merupakan partisipasi dalam kegiatan politik adalah ?', N'menghadiri rapat umum', N'menyampaikan aspirasi melalui media massa', N'membantu korban bencana alam', N'berdiskusi dengan keluarga', N'memberikan suara dalam pemilu', N'C', 88)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (9, 9, 9, N'pemerintah dalam melaksanakan peraturan perundangan adalah pengertian  ?', N'partisipasi politik', N'opini politik', N'perilaku politik', N'budaya politik', N'sikap politik', N'E', 89)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (10, 1, 10, N'Warna yang dihasilkan dari penggabungan warna merah dan kuning dengan perbandingan 50:50  adalah warna ?', N'hijau', N'unggu', N'orange', N'pink', N'putih', N'C', 90)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (10, 2, 10, N'Proses gambar yang dibuat dengan pewarnaan manual atau dengan komputer dengan halus sehigga gambar pun terlihat seperti aslinya disebut gambar ?', N' Rendering', N'Tembus', N'Potongan', N'dekorasi', N'arsitek', N'A', 91)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (10, 3, 10, N'Batik yang motifnya dibuat dengan hanya menggunakan tangan  ?', N'batik tulis', N'batik cup', N'batik pekalongan', N'batik ikat', N'bati malaysia', N'A', 92)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (10, 4, 10, N'Yang termasuk karya seni rupa murni adalah ?', N'cangkir', N'rumah', N'kursi', N'baju', N'patung', N'E', 93)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (10, 5, 10, N'Seni rupa yang memiliki panjang dan lebar disebut ?', N'Seni rupa 2 dimensi', N'Seni rupa 3 dimensi', N'Seni rupa murni', N'Seni rupa terapan', N'a dan b benar', N'A', 94)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (10, 6, 10, N'Seni rupa yang memiliki panjang,lebar, dan tinggi disebut ?', N'Seni rupa 2 dimensi', N'Seni rupa 3 dimensi', N'Seni rupa murni', N'Seni rupa terapan', N'semua salah', N'B', 95)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (10, 7, 10, N'Berikut ini adalah unsur dasar seni rupa kecuali ?', N' Titik', N'lukisan', N'garis', N'bidang', N'ruang', N'B', 96)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (10, 8, 10, N'Contoh karya seni visual dua dimensi yang bergerak, yaitu ?', N'relief', N'patung', N'film', N'poto ', N'kursi', N'C', 97)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (10, 9, 10, N'Unsur fisik seni rupa yang merupakan gabungan titik-titik yang bersambung, yaitu ?', N'warna', N'garis', N'volume', N'titik', N'ruang', N'B', 98)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (10, 10, 10, N'Salah satu jenis karya seni rupa terapan adalah seni kriya yang disebut juga ?', N'desain', N'seni grafis', N'kerajinan tangan', N'arsitektur', N'keterampiln', N'C', 99)
GO
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (11, 1, 3, N'', N'', N'', N'', N'', N'', N'E', 100)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (12, 1, 3, N'', N'', N'', N'', N'', N'', N'E', 101)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (13, 1, 3, N'', N'', N'', N'', N'', N'', N'E', 102)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (14, 1, 7, N'', N'', N'', N'', N'', N'', N'E', 103)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (15, 1, 7, N'', N'txtA.Text', N'', N'', N'', N'', N'E', 104)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (16, 1, 3, N'Salah satu jenis karya seni rupa terapan adalah seni kriya yang disebut juga ?', N'desain', N'seni grafis', N'kerajinan tangan', N'arsitektur', N'keterampiln', N'C', 105)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (16, 2, 3, N'Salah satu jenis karya seni rupa terapan adalah seni kriya yang disebut juga ?', N'desain', N'seni grafis', N'kerajinan tangan', N'arsitektur', N'keterampiln', N'C', 106)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (16, 3, 3, N'Salah satu jenis karya seni rupa terapan adalah seni kriya yang disebut juga ?', N'desain', N'seni grafis', N'kerajinan tangan', N'arsitektur', N'keterampiln', N'C', 107)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (17, 1, 3, N'', N'', N'', N'', N'', N'', N'E', 108)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (17, 2, 3, N'', N'', N'', N'', N'', N'', N'E', 109)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (17, 3, 3, N'', N'', N'', N'', N'', N'', N'E', 110)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (18, 1, 3, N'', N'', N'', N'', N'', N'', N'E', 111)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (19, 1, 3, N'', N'', N'', N'', N'', N'', N'E', 112)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (19, 2, 3, N'', N'', N'', N'', N'', N'', N'E', 113)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (20, 1, 3, N'OK, kalo 2 ditambah minus 2 berapa yaa...????', N'0', N'1', N'2', N'3', N'4', N'A', 114)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (20, 2, 3, N'"TRUE" ada berapa banyak huruf disebelah???', N'1', N'2', N'3', N'4', N'5', N'D', 115)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (21, 1, 3, N'qwer', N'qwer', N'qwer', N'wer', N'wer', N'qwer', N'C', 116)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (22, 1, 7, N'asdf', N'asdf', N'asdf', N'asdf', N'asdf', N'asdf', N'A', 117)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (22, 2, 7, N'qwe', N'qwe', N'qwe', N'qwe', N'qwe', N'qwe', N'C', 118)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (22, 3, 7, N'zxczx', N'zxc', N'xc', N'xc', N'zxc', N'zxc', N'D', 119)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (23, 1, 3, N'Testing dulu yak!!!!', N'ok', N'sip', N'good', N'nice', N'kuy', N'D', 120)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (23, 2, 3, N'asdfasdf', N'asdfasdf', N'asdfasdf', N'asdfasdf', N'asdfasdf', N'asdfasdf', N'E', 121)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (23, 3, 3, N'qwerqwer', N'qwerqwer', N'werqwer', N'werqwer', N'werqer', N'qwerqwer', N'B', 122)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (23, 4, 3, N'qwerqwer', N'qwerqwerasdf', N'asdf', N'afdzcvfhsh', N'dhdrytjdnxry', N'dmdtgumftuktdghynjsr', N'A', 123)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (23, 5, 3, N'faiygrlk.fdgnliustg', N'adgrthsrtb', N'yagkuyfauwygli', N'uyagfuyagryf', N'aiughflaigsdyf', N'uysgfuykg', N'C', 124)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (24, 1, 2, N'kkfhauiefhkasjhdfkjhaiurhfaksdhfbibvlkabsdvkb', N'alskdhfuilahewfksahdkfn', N'fkasihfohf', N'ioahrgiohaegr', N'ao;idjfahg', N'uahiuhairgbjksrgb', N'B', 125)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (24, 2, 2, N'j,hvakuysgjdf', N'uifshfukhdf', N'uguksygf', N'uishrfuky', N's', N'iuhwiurgfuy', N'A', 126)
INSERT [dbo].[DetailSoal] ([idDetailSoal], [idNoSoal], [idMapel], [pertanyaan], [jawabanA], [jawabanB], [jawabanC], [jawabanD], [jawabanE], [jawabanBenar], [idPrimary]) VALUES (24, 3, 2, N'sdasd', N'asd', N'soidhj', N'adsoifjdoi', N'sdfsef', N'sfioejo', N'D', 127)
SET IDENTITY_INSERT [dbo].[DetailSoal] OFF
INSERT [dbo].[Guru] ([idGuru], [fullName], [password], [role]) VALUES (N'TC20010010', N'Nurul Handi', N'nurul', N'Guru')
INSERT [dbo].[Guru] ([idGuru], [fullName], [password], [role]) VALUES (N'TC20080001', N'Senny Permata Sari', N'senny', N'Guru')
INSERT [dbo].[Guru] ([idGuru], [fullName], [password], [role]) VALUES (N'TC20080002', N'Ira Rahmawati', N'ira', N'Guru')
INSERT [dbo].[Guru] ([idGuru], [fullName], [password], [role]) VALUES (N'TC20090002', N'Purwa Ningsih', N'ningsih', N'Guru')
INSERT [dbo].[Guru] ([idGuru], [fullName], [password], [role]) VALUES (N'TC20090023', N'Muhammad Abdul Akbar', N'akbar', N'Guru')
INSERT [dbo].[Guru] ([idGuru], [fullName], [password], [role]) VALUES (N'TC20110003', N'Marwadi', N'marwadi', N'Guru')
INSERT [dbo].[Guru] ([idGuru], [fullName], [password], [role]) VALUES (N'TC20110004', N'Pasaoran Pasaribu', N'pasaoran', N'Guru')
INSERT [dbo].[Guru] ([idGuru], [fullName], [password], [role]) VALUES (N'TC20120002', N'Ikmal', N'ikmal', N'Guru')
INSERT [dbo].[Guru] ([idGuru], [fullName], [password], [role]) VALUES (N'TC20120008', N'Rini Puji Lestari', N'rini', N'Guru')
INSERT [dbo].[Guru] ([idGuru], [fullName], [password], [role]) VALUES (N'TC20170023', N'Ecky Pradita', N'ecky', N'Guru')
INSERT [dbo].[Guru] ([idGuru], [fullName], [password], [role]) VALUES (N'TC20170024', N'Muhammad Abdul Aziz', N'aziz', N'Guru')
INSERT [dbo].[Guru] ([idGuru], [fullName], [password], [role]) VALUES (N'TC20170025', N'Deti', N'deti', N'Guru')
INSERT [dbo].[Guru] ([idGuru], [fullName], [password], [role]) VALUES (N'TC20170026', N'Dani Rustandi', N'dani', N'Guru')
INSERT [dbo].[Guru] ([idGuru], [fullName], [password], [role]) VALUES (N'TC20170027', N'Bayu Bambang Aris Sadewa', N'Bayu', N'Guru')
INSERT [dbo].[Guru] ([idGuru], [fullName], [password], [role]) VALUES (N'TC20170028', N'Rizky Rizkyatul', N'rizky', N'Guru')
SET IDENTITY_INSERT [dbo].[HeaderSoal] ON 

INSERT [dbo].[HeaderSoal] ([idSoal], [idMapel], [idGuru], [idDetailSoal], [TglDibuat], [jmlSoal], [idKelas]) VALUES (1, 1, N'TC20120008', 1, CAST(N'2018-01-03T00:00:00.000' AS DateTime), 10, 1)
INSERT [dbo].[HeaderSoal] ([idSoal], [idMapel], [idGuru], [idDetailSoal], [TglDibuat], [jmlSoal], [idKelas]) VALUES (2, 2, N'TC20170024', 2, CAST(N'2018-11-03T00:00:00.000' AS DateTime), 10, 2)
INSERT [dbo].[HeaderSoal] ([idSoal], [idMapel], [idGuru], [idDetailSoal], [TglDibuat], [jmlSoal], [idKelas]) VALUES (3, 3, N'TC20170026', 3, CAST(N'2018-03-11T00:00:00.000' AS DateTime), 10, 3)
INSERT [dbo].[HeaderSoal] ([idSoal], [idMapel], [idGuru], [idDetailSoal], [TglDibuat], [jmlSoal], [idKelas]) VALUES (4, 4, N'TC20080002', 4, CAST(N'2017-04-15T00:00:00.000' AS DateTime), 10, 1)
INSERT [dbo].[HeaderSoal] ([idSoal], [idMapel], [idGuru], [idDetailSoal], [TglDibuat], [jmlSoal], [idKelas]) VALUES (5, 5, N'TC20120002', 5, CAST(N'2018-02-01T00:00:00.000' AS DateTime), 10, 2)
INSERT [dbo].[HeaderSoal] ([idSoal], [idMapel], [idGuru], [idDetailSoal], [TglDibuat], [jmlSoal], [idKelas]) VALUES (6, 6, N'TC20170025', 6, CAST(N'2018-01-21T00:00:00.000' AS DateTime), 10, 3)
INSERT [dbo].[HeaderSoal] ([idSoal], [idMapel], [idGuru], [idDetailSoal], [TglDibuat], [jmlSoal], [idKelas]) VALUES (7, 7, N'TC20170023', 7, CAST(N'2017-05-08T00:00:00.000' AS DateTime), 10, 1)
INSERT [dbo].[HeaderSoal] ([idSoal], [idMapel], [idGuru], [idDetailSoal], [TglDibuat], [jmlSoal], [idKelas]) VALUES (8, 8, N'TC20110003', 8, CAST(N'2018-03-03T00:00:00.000' AS DateTime), 10, 2)
INSERT [dbo].[HeaderSoal] ([idSoal], [idMapel], [idGuru], [idDetailSoal], [TglDibuat], [jmlSoal], [idKelas]) VALUES (9, 9, N'TC20170027', 9, CAST(N'2017-07-17T00:00:00.000' AS DateTime), 9, 3)
INSERT [dbo].[HeaderSoal] ([idSoal], [idMapel], [idGuru], [idDetailSoal], [TglDibuat], [jmlSoal], [idKelas]) VALUES (10, 10, N'TC20110004', 10, CAST(N'2016-03-11T00:00:00.000' AS DateTime), 10, 2)
INSERT [dbo].[HeaderSoal] ([idSoal], [idMapel], [idGuru], [idDetailSoal], [TglDibuat], [jmlSoal], [idKelas]) VALUES (22, 7, N'TC20170023', 22, CAST(N'2018-03-13T00:00:00.000' AS DateTime), 3, 2)
INSERT [dbo].[HeaderSoal] ([idSoal], [idMapel], [idGuru], [idDetailSoal], [TglDibuat], [jmlSoal], [idKelas]) VALUES (23, 3, N'TC20170023', 23, CAST(N'2018-03-14T00:00:00.000' AS DateTime), 5, 2)
INSERT [dbo].[HeaderSoal] ([idSoal], [idMapel], [idGuru], [idDetailSoal], [TglDibuat], [jmlSoal], [idKelas]) VALUES (24, 2, N'TC20170023', 24, CAST(N'2018-03-15T00:00:00.000' AS DateTime), 3, 3)
SET IDENTITY_INSERT [dbo].[HeaderSoal] OFF
SET IDENTITY_INSERT [dbo].[Kelas] ON 

INSERT [dbo].[Kelas] ([idKelas], [namaKelas]) VALUES (1, N'X')
INSERT [dbo].[Kelas] ([idKelas], [namaKelas]) VALUES (2, N'XI')
INSERT [dbo].[Kelas] ([idKelas], [namaKelas]) VALUES (3, N'XII')
SET IDENTITY_INSERT [dbo].[Kelas] OFF
SET IDENTITY_INSERT [dbo].[Mapel] ON 

INSERT [dbo].[Mapel] ([idMapel], [namaMapel], [Kkm]) VALUES (1, N'Bahasa Indonesia', 76)
INSERT [dbo].[Mapel] ([idMapel], [namaMapel], [Kkm]) VALUES (2, N'Bahasa Inggris', 76)
INSERT [dbo].[Mapel] ([idMapel], [namaMapel], [Kkm]) VALUES (3, N'Matematika', 76)
INSERT [dbo].[Mapel] ([idMapel], [namaMapel], [Kkm]) VALUES (4, N'Fisika', 76)
INSERT [dbo].[Mapel] ([idMapel], [namaMapel], [Kkm]) VALUES (5, N'Kimia', 76)
INSERT [dbo].[Mapel] ([idMapel], [namaMapel], [Kkm]) VALUES (6, N'Sejarah', 76)
INSERT [dbo].[Mapel] ([idMapel], [namaMapel], [Kkm]) VALUES (7, N'Pemrograman Dasar', 76)
INSERT [dbo].[Mapel] ([idMapel], [namaMapel], [Kkm]) VALUES (8, N'Agama', 76)
INSERT [dbo].[Mapel] ([idMapel], [namaMapel], [Kkm]) VALUES (9, N'PPKN', 76)
INSERT [dbo].[Mapel] ([idMapel], [namaMapel], [Kkm]) VALUES (10, N'Seni Budaya', 76)
SET IDENTITY_INSERT [dbo].[Mapel] OFF
INSERT [dbo].[Pengguna] ([idPengguna], [password], [role]) VALUES (N'20166809', N'akhdan123', N'Siswa')
INSERT [dbo].[Pengguna] ([idPengguna], [password], [role]) VALUES (N'TC20170023', N'ecky123', N'Guru')
INSERT [dbo].[Pengguna] ([idPengguna], [password], [role]) VALUES (N'admin', N'admin', N'Admin')
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20155801', N'Ahmad Basir Sutisna', N'XII', N'ahmad', N'Siswa', 7)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20155802', N'Alexa Putra', N'XII', N'alex', N'Siswa', 7)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20155803', N'Malik Putra Adam', N'XII', N'malik', N'Siswa', 7)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20155804', N'Bagoes Ananda Putra', N'XII', N'bagoes', N'Siswa', 7)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20155805', N'Tisani Putri', N'XII', N'tisani', N'Siswa', 7)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20156809', N'Luthfi Nabila Qonitha', N'XII', N'luthfi', N'Siswa', 5)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20156810', N'Christian Jehoshaphat', N'XII', N'chris', N'', 5)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20156811', N'Qonitha Ailsya Raihana', N'XII', N'tata', N'Siswa', 5)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20156812', N'Rani Valenda', N'XII', N'rani', N'Siswa', 5)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20156813', N'Rafi Erdian', N'XII', N'rafi', N'Siswa', 5)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20157809', N'Nabila Putri Hendarawan', N'XII', N'nabila', N'Siswa', 6)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20157810', N'titah Arya Dewantara', N'XII', N'titah', N'Siswa', 6)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20157811', N'Putra Hidayat', N'XII', N'putra', N'Siswa', 6)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20157812', N'Guntur Aji Wibowo', N'XII', N'guntur', N'Siswa', 6)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20157813', N'Ridwan Pangestu Suroso', N'XII', N'ridwan', N'Siswa', 6)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20165801', N'Tutuko Rakahadian', N'XI', N'tutuko', N'Siswa', 10)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20165802', N'Raffly Ananda', N'XI', N'raffly', N'Siswa', 10)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20165803', N'Ariq Ghifari', N'XI', N'ariq', N'Siswa', 10)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20165804', N'Bagus Saputra', N'XI', N'bagus', N'Siswa', 10)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20165805', N'Alifajar Muhammad Rizkyanto', N'XI', N'alifajar', N'Siswa', 10)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20166809', N'Akhdan Rasiq Gumelar', N'XI', N'shinaxe28', N'Siswa', 11)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20166810', N'Arya', N'XI', N'arya', N'Siswa', 11)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20166811', N'Christian Nico Hendriawan', N'XI', N'nico', N'Siswa', 11)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20166812', N'Syafrizal Kurniadin', N'XI', N'syafrizal', N'Siswa', 11)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20166813', N'Khairil Harianto', N'XI', N'eril', N'Siswa', 11)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20167809', N'Bagus Seno', N'XI', N'bagus', N'Siswa', 12)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20167810', N'Aldian Kurniawan', N'XI', N'aldian', N'Siswa', 12)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20167811', N'Reyhan Yudi Anugrah', N'XI', N'Reyhan', N'Siswa', 12)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20167812', N'Nadhif Hakim', N'XI', N'nadhif', N'Siswa', 12)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20167813', N'Denis Hakimullah', N'XI', N'denis', N'Siswa', 12)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20175801', N'Raihan Daffa', N'X', N'raihan', N'Siswa', 4)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20175802', N'Ikhsan Alfarizi', N'X', N'ikhsan', N'Siswa', 4)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20175803', N'Elmar Leonard', N'X', N'elmar', N'Siswa', 4)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20175804', N'Chirstopher Jordan', N'X', N'jordan', N'Siswa', 4)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20175805', N'Sarah Abigail Yuranian', N'X', N'sarah', N'Siswa', 4)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20176809', N'Muhammad Naufal', N'X', N'naufal', N'Siswa', 2)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20176810', N'Wahyu Dwi', N'X', N'wahyu', N'Siswa', 2)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20176811', N'Endang Sukirna', N'X', N'endang', N'Siswa', 2)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20176812', N'Narto Syarifudin', N'X', N'narto', N'Siswa', 2)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20176813', N'Nicola Hartono', N'X', N'nicola', N'Siswa', 2)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20177809', N'Putri Suci Rahmawati', N'X', N'putri', N'Siswa', 3)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20177810', N'Ridwan Pangestu Hidayat', N'X', N'ridwan', N'Siswa', 3)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20177811', N'Gusti Seno Wicaksono', N'X', N'gusti', N'Siswa', 3)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20177812', N'Ian Hidayat', N'X', N'ian', N'Siswa', 3)
INSERT [dbo].[Siswa] ([idSiswa], [fullName], [kelas], [password], [role], [idDetailKelas]) VALUES (N'20177813', N'Oktavian Agusta', N'X', N'vian', N'Siswa', 3)
SET IDENTITY_INSERT [dbo].[Ujian] ON 

INSERT [dbo].[Ujian] ([idUjian], [idSoal], [idSiswa], [tglPengerjaan], [nilai]) VALUES (1, 1, N'20166809', CAST(N'2018-03-11T00:00:00.000' AS DateTime), 100)
INSERT [dbo].[Ujian] ([idUjian], [idSoal], [idSiswa], [tglPengerjaan], [nilai]) VALUES (2, 2, N'20166809', CAST(N'2018-03-11T00:00:00.000' AS DateTime), 100)
INSERT [dbo].[Ujian] ([idUjian], [idSoal], [idSiswa], [tglPengerjaan], [nilai]) VALUES (3, 4, N'20166809', CAST(N'2018-04-19T21:31:31.757' AS DateTime), 100)
SET IDENTITY_INSERT [dbo].[Ujian] OFF
ALTER TABLE [dbo].[AksesKelas]  WITH CHECK ADD FOREIGN KEY([idGuru])
REFERENCES [dbo].[Guru] ([idGuru])
GO
ALTER TABLE [dbo].[AksesKelas]  WITH CHECK ADD FOREIGN KEY([idKelas])
REFERENCES [dbo].[Kelas] ([idKelas])
GO
ALTER TABLE [dbo].[AksesMapel]  WITH CHECK ADD FOREIGN KEY([idGuru])
REFERENCES [dbo].[Guru] ([idGuru])
GO
ALTER TABLE [dbo].[AksesMapel]  WITH CHECK ADD FOREIGN KEY([idMapel])
REFERENCES [dbo].[Mapel] ([idMapel])
GO
ALTER TABLE [dbo].[DetailSoal]  WITH CHECK ADD FOREIGN KEY([idMapel])
REFERENCES [dbo].[Mapel] ([idMapel])
GO
ALTER TABLE [dbo].[HeaderSoal]  WITH CHECK ADD FOREIGN KEY([idGuru])
REFERENCES [dbo].[Guru] ([idGuru])
GO
ALTER TABLE [dbo].[HeaderSoal]  WITH CHECK ADD FOREIGN KEY([idKelas])
REFERENCES [dbo].[Kelas] ([idKelas])
GO
ALTER TABLE [dbo].[HeaderSoal]  WITH CHECK ADD FOREIGN KEY([idMapel])
REFERENCES [dbo].[Mapel] ([idMapel])
GO
ALTER TABLE [dbo].[Siswa]  WITH CHECK ADD FOREIGN KEY([idDetailKelas])
REFERENCES [dbo].[detailKelas] ([idDetailKelas])
GO
ALTER TABLE [dbo].[Ujian]  WITH CHECK ADD FOREIGN KEY([idSiswa])
REFERENCES [dbo].[Siswa] ([idSiswa])
GO
ALTER TABLE [dbo].[Ujian]  WITH CHECK ADD FOREIGN KEY([idSoal])
REFERENCES [dbo].[HeaderSoal] ([idSoal])
GO
USE [master]
GO
ALTER DATABASE [onlineExam] SET  READ_WRITE 
GO
