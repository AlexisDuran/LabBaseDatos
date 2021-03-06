USE [master]
GO
/****** Object:  Database [Rentas]    Script Date: 24/02/2018 02:32:54 p.m. ******/
CREATE DATABASE [Rentas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Rentas', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Rentas.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Rentas_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Rentas_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Rentas] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Rentas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Rentas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Rentas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Rentas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Rentas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Rentas] SET ARITHABORT OFF 
GO
ALTER DATABASE [Rentas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Rentas] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Rentas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Rentas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Rentas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Rentas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Rentas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Rentas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Rentas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Rentas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Rentas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Rentas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Rentas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Rentas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Rentas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Rentas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Rentas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Rentas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Rentas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Rentas] SET  MULTI_USER 
GO
ALTER DATABASE [Rentas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Rentas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Rentas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Rentas] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Rentas]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 24/02/2018 02:32:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cliente](
	[ID] [int] NOT NULL,
	[USER_NAME] [char](10) NULL,
	[CORREO] [varchar](50) NULL,
	[CEL] [numeric](18, 0) NULL,
	[CTA] [int] NULL,
	[UBICACION] [geography] NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[desktop]    Script Date: 24/02/2018 02:32:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[desktop](
	[ID_PRODUCT] [int] NOT NULL,
	[MODELO] [varchar](50) NULL,
	[ESP_CPU] [varchar](50) NULL,
	[ESP_RAM] [varchar](50) NULL,
	[ESP_DD] [varchar](50) NULL,
	[ESP_GPU] [varchar](50) NULL,
	[Observaciones] [text] NULL,
	[DATE_INGRESO] [date] NULL,
 CONSTRAINT [PK_desktop] PRIMARY KEY CLUSTERED 
(
	[ID_PRODUCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[empresa]    Script Date: 24/02/2018 02:32:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[empresa](
	[NOM_EMPRESA] [varchar](50) NULL,
	[NUM_CTA] [int] NULL,
	[ID_EMPRESA] [int] NOT NULL,
	[RAZON_SOCIAL] [varchar](50) NULL,
	[DIRECCION_FISCAL] [varchar](50) NULL,
	[EMAIL_ADMON] [varchar](50) NULL,
	[DATE_INGRESO] [date] NULL,
 CONSTRAINT [PK_empresa] PRIMARY KEY CLUSTERED 
(
	[ID_EMPRESA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[laptop]    Script Date: 24/02/2018 02:32:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laptop](
	[ID_PRODUCT] [int] NOT NULL,
	[MODELO] [nchar](10) NULL,
	[MARCA] [nchar](10) NULL,
	[ESP_CPU] [nchar](10) NULL,
	[ESP_RM] [nchar](10) NULL,
	[ESP_DD] [nchar](10) NULL,
	[DATE_INGRESO] [date] NULL,
 CONSTRAINT [PK_laptop] PRIMARY KEY CLUSTERED 
(
	[ID_PRODUCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Renter]    Script Date: 24/02/2018 02:32:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Renter](
	[ID_RENTER] [int] NOT NULL,
	[NOMBRE] [varchar](50) NULL,
	[APELLIDO_P] [varchar](50) NULL,
	[APELLIDO_M] [varchar](50) NULL,
	[NUM_CEL] [int] NULL,
	[CORREO] [varchar](50) NULL,
	[FECHA_CREATE] [datetime] NULL,
	[UBICACION] [geography] NULL,
 CONSTRAINT [PK_Renter] PRIMARY KEY CLUSTERED 
(
	[ID_RENTER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_cliente_CORREO]    Script Date: 24/02/2018 02:32:54 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_cliente_CORREO] ON [dbo].[cliente]
(
	[CORREO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_empresa]    Script Date: 24/02/2018 02:32:54 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_empresa] ON [dbo].[empresa]
(
	[NOM_EMPRESA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Renter_CEL]    Script Date: 24/02/2018 02:32:54 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_Renter_CEL] ON [dbo].[Renter]
(
	[NUM_CEL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Rentas] SET  READ_WRITE 
GO
