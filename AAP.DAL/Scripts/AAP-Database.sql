USE [master]
GO
/****** Object:  Database [AAP-Web]    Script Date: 05/21/2013 18:40:39 ******/
CREATE DATABASE [AAP-Web] ON  PRIMARY 
( NAME = N'AAP-Web', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\AAP-Web.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AAP-Web_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\AAP-Web_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AAP-Web] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AAP-Web].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AAP-Web] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [AAP-Web] SET ANSI_NULLS OFF
GO
ALTER DATABASE [AAP-Web] SET ANSI_PADDING OFF
GO
ALTER DATABASE [AAP-Web] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [AAP-Web] SET ARITHABORT OFF
GO
ALTER DATABASE [AAP-Web] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [AAP-Web] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [AAP-Web] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [AAP-Web] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [AAP-Web] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [AAP-Web] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [AAP-Web] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [AAP-Web] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [AAP-Web] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [AAP-Web] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [AAP-Web] SET  DISABLE_BROKER
GO
ALTER DATABASE [AAP-Web] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [AAP-Web] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [AAP-Web] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [AAP-Web] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [AAP-Web] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [AAP-Web] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [AAP-Web] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [AAP-Web] SET  READ_WRITE
GO
ALTER DATABASE [AAP-Web] SET RECOVERY FULL
GO
ALTER DATABASE [AAP-Web] SET  MULTI_USER
GO
ALTER DATABASE [AAP-Web] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [AAP-Web] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'AAP-Web', N'ON'
GO
USE [AAP-Web]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 05/21/2013 18:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AddressLine1] [nvarchar](50) NOT NULL,
	[AddressLine2] [nvarchar](50) NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Phone1] [nvarchar](20) NULL,
	[Phone2] [nvarchar](20) NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[DateLastModifiedUTC] [datetime] NULL,
	[IsArchive] [bit] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 05/21/2013 18:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](20) NULL,
	[Gender] [char](6) NOT NULL,
	[Religion] [nvarchar](20) NOT NULL,
	[DateOfBirth] [datetime] NULL,
	[Picture] [image] NULL,
	[CNIC] [nvarchar](30) NULL,
	[Comments] [nvarchar](500) NULL,
	[AddressId] [bigint] NOT NULL,
	[ClassId] [bigint] NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 05/21/2013 18:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](20) NULL,
	[Gender] [char](6) NOT NULL,
	[Religion] [nvarchar](20) NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[Picture] [image] NULL,
	[Guardian] [nvarchar](50) NULL,
	[Relation] [nvarchar](50) NULL,
	[Comments] [nvarchar](500) NULL,
	[AddressId] [bigint] NOT NULL,
	[ClassId] [bigint] NOT NULL,
	[GuardianCNIC] [nvarchar](30) NULL,
	[LastModified] [datetime] NULL,
	[IsArchive] [bit] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 05/21/2013 18:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[AddressId] [bigint] NOT NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 05/21/2013 18:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Class](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Section] [char](2) NULL,
	[Year] [int] NOT NULL,
	[BranchId] [bigint] NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Course]    Script Date: 05/21/2013 18:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[ClassId] [bigint] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentCourses]    Script Date: 05/21/2013 18:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentCourses](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StudentId] [bigint] NOT NULL,
	[CourseId] [bigint] NOT NULL,
 CONSTRAINT [PK_StudentCourses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeacherCourses]    Script Date: 05/21/2013 18:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherCourses](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TeacherId] [bigint] NOT NULL,
	[CourseId] [bigint] NOT NULL,
 CONSTRAINT [PK_TeacherCourses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeacherAttendance]    Script Date: 05/21/2013 18:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherAttendance](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TeacherCourseId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[IsPresent] [bit] NULL,
	[OnLeave] [bit] NULL,
	[Comments] [text] NULL,
	[LastModifed] [datetime] NULL,
	[IsArchive] [bit] NULL,
 CONSTRAINT [PK_TeacherAttendance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentAttendance]    Script Date: 05/21/2013 18:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAttendance](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StudentCourseId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[IsPresent] [bit] NOT NULL,
	[OnLeave] [bit] NULL,
	[Comments] [text] NULL,
	[LastModified] [datetime] NOT NULL,
	[IsArchive] [bit] NOT NULL,
 CONSTRAINT [PK_StudentAttendance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exams]    Script Date: 05/21/2013 18:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exams](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TheoryMarksTotal] [decimal](18, 2) NOT NULL,
	[TheoryMarksObtained] [decimal](18, 2) NOT NULL,
	[PracticalMarksTotal] [decimal](18, 2) NULL,
	[PracticalMarksObtained] [decimal](18, 2) NULL,
	[TotalMaxMarks] [decimal](18, 2) NOT NULL,
	[TotalMarksObtained] [decimal](18, 2) NOT NULL,
	[LastDateModified] [datetime] NOT NULL,
	[StudentCourseId] [bigint] NOT NULL,
 CONSTRAINT [PK_Exams] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Address_IsArchive]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF_Address_IsArchive]  DEFAULT ((0)) FOR [IsArchive]
GO
/****** Object:  Default [DF_Student_LastModified]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_LastModified]  DEFAULT (getdate()) FOR [LastModified]
GO
/****** Object:  Default [DF_Student_IsArchive]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_IsArchive]  DEFAULT ((0)) FOR [IsArchive]
GO
/****** Object:  Default [DF_TeacherAttendance_IsPresent]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[TeacherAttendance] ADD  CONSTRAINT [DF_TeacherAttendance_IsPresent]  DEFAULT ((1)) FOR [IsPresent]
GO
/****** Object:  Default [DF_TeacherAttendance_OnLeave]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[TeacherAttendance] ADD  CONSTRAINT [DF_TeacherAttendance_OnLeave]  DEFAULT ((0)) FOR [OnLeave]
GO
/****** Object:  Default [DF_TeacherAttendance_LastModifed]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[TeacherAttendance] ADD  CONSTRAINT [DF_TeacherAttendance_LastModifed]  DEFAULT (getdate()) FOR [LastModifed]
GO
/****** Object:  Default [DF_TeacherAttendance_IsArchive]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[TeacherAttendance] ADD  CONSTRAINT [DF_TeacherAttendance_IsArchive]  DEFAULT ((0)) FOR [IsArchive]
GO
/****** Object:  Default [DF_StudentAttendance_IsPresent]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[StudentAttendance] ADD  CONSTRAINT [DF_StudentAttendance_IsPresent]  DEFAULT ((1)) FOR [IsPresent]
GO
/****** Object:  Default [DF_StudentAttendance_OnLeave]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[StudentAttendance] ADD  CONSTRAINT [DF_StudentAttendance_OnLeave]  DEFAULT ((0)) FOR [OnLeave]
GO
/****** Object:  Default [DF_StudentAttendance_LastModified]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[StudentAttendance] ADD  CONSTRAINT [DF_StudentAttendance_LastModified]  DEFAULT (getdate()) FOR [LastModified]
GO
/****** Object:  Default [DF_StudentAttendance_IsArchive]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[StudentAttendance] ADD  CONSTRAINT [DF_StudentAttendance_IsArchive]  DEFAULT ((0)) FOR [IsArchive]
GO
/****** Object:  ForeignKey [FK_Teacher_Address]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Address] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Address]
GO
/****** Object:  ForeignKey [FK_Student_Address]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Address] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Address]
GO
/****** Object:  ForeignKey [FK_Branch_Address]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_Branch_Address] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Branch_Address]
GO
/****** Object:  ForeignKey [FK_Class_Branch]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Branch] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Branch]
GO
/****** Object:  ForeignKey [FK_Course_Class]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Class] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Class] ([Id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Class]
GO
/****** Object:  ForeignKey [FK_StudentCourses_Course]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[StudentCourses]  WITH CHECK ADD  CONSTRAINT [FK_StudentCourses_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[StudentCourses] CHECK CONSTRAINT [FK_StudentCourses_Course]
GO
/****** Object:  ForeignKey [FK_StudentCourses_Student]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[StudentCourses]  WITH CHECK ADD  CONSTRAINT [FK_StudentCourses_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[StudentCourses] CHECK CONSTRAINT [FK_StudentCourses_Student]
GO
/****** Object:  ForeignKey [FK_TeacherCourses_Course]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[TeacherCourses]  WITH CHECK ADD  CONSTRAINT [FK_TeacherCourses_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[TeacherCourses] CHECK CONSTRAINT [FK_TeacherCourses_Course]
GO
/****** Object:  ForeignKey [FK_TeacherCourses_Teacher]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[TeacherCourses]  WITH CHECK ADD  CONSTRAINT [FK_TeacherCourses_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([Id])
GO
ALTER TABLE [dbo].[TeacherCourses] CHECK CONSTRAINT [FK_TeacherCourses_Teacher]
GO
/****** Object:  ForeignKey [FK_TeacherAttendance_TeacherCourses]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[TeacherAttendance]  WITH CHECK ADD  CONSTRAINT [FK_TeacherAttendance_TeacherCourses] FOREIGN KEY([TeacherCourseId])
REFERENCES [dbo].[TeacherCourses] ([Id])
GO
ALTER TABLE [dbo].[TeacherAttendance] CHECK CONSTRAINT [FK_TeacherAttendance_TeacherCourses]
GO
/****** Object:  ForeignKey [FK_StudentAttendance_StudentCourses]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[StudentAttendance]  WITH CHECK ADD  CONSTRAINT [FK_StudentAttendance_StudentCourses] FOREIGN KEY([StudentCourseId])
REFERENCES [dbo].[StudentCourses] ([Id])
GO
ALTER TABLE [dbo].[StudentAttendance] CHECK CONSTRAINT [FK_StudentAttendance_StudentCourses]
GO
/****** Object:  ForeignKey [FK_Exams_StudentCourses]    Script Date: 05/21/2013 18:40:40 ******/
ALTER TABLE [dbo].[Exams]  WITH CHECK ADD  CONSTRAINT [FK_Exams_StudentCourses] FOREIGN KEY([StudentCourseId])
REFERENCES [dbo].[StudentCourses] ([Id])
GO
ALTER TABLE [dbo].[Exams] CHECK CONSTRAINT [FK_Exams_StudentCourses]
GO
