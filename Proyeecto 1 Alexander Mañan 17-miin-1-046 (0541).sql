


/*Nombre: Alexander Mañan Tavarez Matricula; 17-MIIN-1-046 Seccion: 0541*/



USE [master]
GO
/****** Object:  Database [EmpresaTrasportista]    Script Date: 8/9/2018 7:18:22 PM ******/
CREATE DATABASE [EmpresaTrasportista]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmpresaTrasportista.', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\EmpresaTrasportista..mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EmpresaTrasportista._log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\EmpresaTrasportista._log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [EmpresaTrasportista] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmpresaTrasportista].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmpresaTrasportista] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmpresaTrasportista] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmpresaTrasportista] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EmpresaTrasportista] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmpresaTrasportista] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EmpresaTrasportista] SET  MULTI_USER 
GO
ALTER DATABASE [EmpresaTrasportista] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmpresaTrasportista] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmpresaTrasportista] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmpresaTrasportista] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EmpresaTrasportista] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EmpresaTrasportista] SET QUERY_STORE = OFF
GO
USE [EmpresaTrasportista]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [EmpresaTrasportista]
GO
/****** Object:  Table [dbo].[Autobus]    Script Date: 8/9/2018 7:18:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autobus](
	[IDAutobus] [int] NOT NULL,
	[Modelo] [nvarchar](50) NOT NULL,
	[Capacidad] [varchar](50) NOT NULL,
	[Pesos] [varchar](5000) NOT NULL,
	[IDGarage] [int] NULL,
 CONSTRAINT [PK_Autobus] PRIMARY KEY CLUSTERED 
(
	[IDAutobus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Conductor]    Script Date: 8/9/2018 7:18:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conductor](
	[IDConductor] [int] NOT NULL,
	[Nombre] [varchar](250) NOT NULL,
	[Licencia] [nvarchar](50) NOT NULL,
	[Direccion] [varchar](250) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Conductor] PRIMARY KEY CLUSTERED 
(
	[IDConductor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 8/9/2018 7:18:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresas](
	[IDEmpresa] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[Telefono] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Empresas] PRIMARY KEY CLUSTERED 
(
	[IDEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Garage]    Script Date: 8/9/2018 7:18:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Garage](
	[IDGarage] [int] NOT NULL,
	[Numero] [varchar](50) NOT NULL,
	[IDEmpresa] [int] NOT NULL,
 CONSTRAINT [PK_Garage] PRIMARY KEY CLUSTERED 
(
	[IDGarage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 8/9/2018 7:18:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ruta](
	[IDRuta] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[HoraDeSalida] [varchar](50) NOT NULL,
	[HoradeLlegada] [varchar](50) NOT NULL,
	[IDConductor] [int] NOT NULL,
	[IDAutobus] [int] NOT NULL,
	[IDGarage] [int] NOT NULL,
 CONSTRAINT [PK_Ruta] PRIMARY KEY CLUSTERED 
(
	[IDRuta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Autobus] ([IDAutobus], [Modelo], [Capacidad], [Pesos], [IDGarage]) VALUES (1, N'Mazda', N'20', N'800 KG', NULL)
INSERT [dbo].[Autobus] ([IDAutobus], [Modelo], [Capacidad], [Pesos], [IDGarage]) VALUES (2, N'Toyota', N'20', N'1000 KG', NULL)
INSERT [dbo].[Autobus] ([IDAutobus], [Modelo], [Capacidad], [Pesos], [IDGarage]) VALUES (3, N'Chebrolet', N'25', N'1000 KG', NULL)
INSERT [dbo].[Autobus] ([IDAutobus], [Modelo], [Capacidad], [Pesos], [IDGarage]) VALUES (5, N'Nissan', N'25', N'950 KG', NULL)
INSERT [dbo].[Autobus] ([IDAutobus], [Modelo], [Capacidad], [Pesos], [IDGarage]) VALUES (7, N'Honda', N'23', N'850 KG', NULL)
INSERT [dbo].[Autobus] ([IDAutobus], [Modelo], [Capacidad], [Pesos], [IDGarage]) VALUES (8, N'mitsubichi', N'25', N'1000 Kg', NULL)
INSERT [dbo].[Autobus] ([IDAutobus], [Modelo], [Capacidad], [Pesos], [IDGarage]) VALUES (9, N'Mercedes Bend', N'30', N'1000 KG', NULL)
INSERT [dbo].[Autobus] ([IDAutobus], [Modelo], [Capacidad], [Pesos], [IDGarage]) VALUES (10, N'Toyota', N'20', N'1000 KG', NULL)
INSERT [dbo].[Conductor] ([IDConductor], [Nombre], [Licencia], [Direccion], [Telefono]) VALUES (1, N'Alexander Mañan', N'76307332', N'Autopista duarte #501', N'8093886326')
INSERT [dbo].[Conductor] ([IDConductor], [Nombre], [Licencia], [Direccion], [Telefono]) VALUES (2, N'AlejoAbuckarma', N'10547808', N'Av, San Vicente,#15', N'8095939572')
INSERT [dbo].[Conductor] ([IDConductor], [Nombre], [Licencia], [Direccion], [Telefono]) VALUES (3, N'LuisFrometa', N'10516932', N'Autopista Duarte #41', N'8093886326')
INSERT [dbo].[Conductor] ([IDConductor], [Nombre], [Licencia], [Direccion], [Telefono]) VALUES (4, N'ElvisMartines', N'34531725', N'Av,Churchill #15', N'8097939010')
INSERT [dbo].[Conductor] ([IDConductor], [Nombre], [Licencia], [Direccion], [Telefono]) VALUES (5, N'AngelMendoza', N'10537983', N'Av,Kennedy #50', N'8092431054')
INSERT [dbo].[Conductor] ([IDConductor], [Nombre], [Licencia], [Direccion], [Telefono]) VALUES (6, N'StevenCodero', N'10256615', N'Av,27 de Febrero esquina Lincom #50', N'8092587683')
INSERT [dbo].[Conductor] ([IDConductor], [Nombre], [Licencia], [Direccion], [Telefono]) VALUES (7, N'RamonGenao', N'34528224', N'Ave.-San ISIdro,#140', N'8094233453')
INSERT [dbo].[Conductor] ([IDConductor], [Nombre], [Licencia], [Direccion], [Telefono]) VALUES (8, N'JavierAlenoy', N'79390100', N'URB,Esperrilla,#128', N'8096231053')
INSERT [dbo].[Conductor] ([IDConductor], [Nombre], [Licencia], [Direccion], [Telefono]) VALUES (9, N'HalferMartines', N'76323459', N'Av,Duarte #35', N'8092343766')
INSERT [dbo].[Conductor] ([IDConductor], [Nombre], [Licencia], [Direccion], [Telefono]) VALUES (10, N'DarlinContrera', N'42870562', N'Av,kennedy #08', N'8094620562')
INSERT [dbo].[Conductor] ([IDConductor], [Nombre], [Licencia], [Direccion], [Telefono]) VALUES (11, N'EmilioMejia', N'10545657', N'Urb, San Cristobal. #02', N'8095642123')
INSERT [dbo].[Conductor] ([IDConductor], [Nombre], [Licencia], [Direccion], [Telefono]) VALUES (12, N'OrlandoMartines', N'41733718', N'Carretera Mella #21', N'8092376748')
INSERT [dbo].[Empresas] ([IDEmpresa], [Nombre], [Direccion], [Telefono]) VALUES (1, N'Senasa', N'Autopista duarte #501', CAST(8093886326 AS Numeric(18, 0)))
INSERT [dbo].[Empresas] ([IDEmpresa], [Nombre], [Direccion], [Telefono]) VALUES (2, N'Humano', N'Av, San Vicente,#15', CAST(8095939572 AS Numeric(18, 0)))
INSERT [dbo].[Empresas] ([IDEmpresa], [Nombre], [Direccion], [Telefono]) VALUES (3, N'Universidad', N'Autopista Duarte #41', CAST(8093886326 AS Numeric(18, 0)))
INSERT [dbo].[Empresas] ([IDEmpresa], [Nombre], [Direccion], [Telefono]) VALUES (4, N'CamaraDeComercio', N'Av,Churchill #15', CAST(8097939010 AS Numeric(18, 0)))
INSERT [dbo].[Empresas] ([IDEmpresa], [Nombre], [Direccion], [Telefono]) VALUES (5, N'BancoBanreserbas', N'Av,Kennedy #50', CAST(8092431054 AS Numeric(18, 0)))
INSERT [dbo].[Empresas] ([IDEmpresa], [Nombre], [Direccion], [Telefono]) VALUES (6, N'BancoPopular', N'Av,27 de Febrero esquina Lincom #50', CAST(8092587683 AS Numeric(18, 0)))
INSERT [dbo].[Empresas] ([IDEmpresa], [Nombre], [Direccion], [Telefono]) VALUES (7, N'BancoBHD', N'Ave.-San ISIdro,#140', CAST(8094233453 AS Numeric(18, 0)))
INSERT [dbo].[Empresas] ([IDEmpresa], [Nombre], [Direccion], [Telefono]) VALUES (8, N'PalicSeguro', N'URB,Esperrilla,#128', CAST(8096231053 AS Numeric(18, 0)))
INSERT [dbo].[Empresas] ([IDEmpresa], [Nombre], [Direccion], [Telefono]) VALUES (9, N'Bepensa', N'Av,Duarte #35', CAST(8092343766 AS Numeric(18, 0)))
INSERT [dbo].[Empresas] ([IDEmpresa], [Nombre], [Direccion], [Telefono]) VALUES (10, N'Boe', N'Av,kennedy', CAST(8094620562 AS Numeric(18, 0)))
INSERT [dbo].[Empresas] ([IDEmpresa], [Nombre], [Direccion], [Telefono]) VALUES (11, N'CortesHermanos', N'Urb, San Cristobal. #02	', CAST(8095642123 AS Numeric(18, 0)))
INSERT [dbo].[Garage] ([IDGarage], [Numero], [IDEmpresa]) VALUES (1, N'3', 4)
INSERT [dbo].[Garage] ([IDGarage], [Numero], [IDEmpresa]) VALUES (2, N'4', 2)
INSERT [dbo].[Garage] ([IDGarage], [Numero], [IDEmpresa]) VALUES (3, N'2', 10)
INSERT [dbo].[Garage] ([IDGarage], [Numero], [IDEmpresa]) VALUES (4, N'5', 11)
INSERT [dbo].[Garage] ([IDGarage], [Numero], [IDEmpresa]) VALUES (5, N'7', 6)
INSERT [dbo].[Garage] ([IDGarage], [Numero], [IDEmpresa]) VALUES (6, N'8', 1)
INSERT [dbo].[Garage] ([IDGarage], [Numero], [IDEmpresa]) VALUES (7, N'10', 11)
INSERT [dbo].[Garage] ([IDGarage], [Numero], [IDEmpresa]) VALUES (9, N'9', 3)
INSERT [dbo].[Garage] ([IDGarage], [Numero], [IDEmpresa]) VALUES (10, N'1', 5)
SET IDENTITY_INSERT [dbo].[Ruta] ON 

INSERT [dbo].[Ruta] ([IDRuta], [Nombre], [HoraDeSalida], [HoradeLlegada], [IDConductor], [IDAutobus], [IDGarage]) VALUES (1, N'La Romana', N'6:00 AM', N'8:50 AM', 1, 2, 10)
INSERT [dbo].[Ruta] ([IDRuta], [Nombre], [HoraDeSalida], [HoradeLlegada], [IDConductor], [IDAutobus], [IDGarage]) VALUES (2, N'Higuey', N'9:00 AM', N'11:20 AM', 2, 5, 9)
INSERT [dbo].[Ruta] ([IDRuta], [Nombre], [HoraDeSalida], [HoradeLlegada], [IDConductor], [IDAutobus], [IDGarage]) VALUES (3, N'Dajabon', N'6:30 AM', N'1:40 PM', 3, 9, 8)
INSERT [dbo].[Ruta] ([IDRuta], [Nombre], [HoraDeSalida], [HoradeLlegada], [IDConductor], [IDAutobus], [IDGarage]) VALUES (4, N'San Cristobal', N'1:20 PM', N'2:20 PM', 4, 3, 7)
INSERT [dbo].[Ruta] ([IDRuta], [Nombre], [HoraDeSalida], [HoradeLlegada], [IDConductor], [IDAutobus], [IDGarage]) VALUES (5, N'Santiago', N'10:01 AM', N'12:00 PM', 5, 1, 6)
INSERT [dbo].[Ruta] ([IDRuta], [Nombre], [HoraDeSalida], [HoradeLlegada], [IDConductor], [IDAutobus], [IDGarage]) VALUES (6, N'Bonao', N'2:00 PM', N'6:30 PM', 6, 7, 5)
INSERT [dbo].[Ruta] ([IDRuta], [Nombre], [HoraDeSalida], [HoradeLlegada], [IDConductor], [IDAutobus], [IDGarage]) VALUES (7, N'Juandolio', N'12:20 PM', N'2:00 PM', 7, 8, 4)
INSERT [dbo].[Ruta] ([IDRuta], [Nombre], [HoraDeSalida], [HoradeLlegada], [IDConductor], [IDAutobus], [IDGarage]) VALUES (8, N'Punta Cana', N'9:00 AM', N'12:15 PM', 8, 10, 3)
INSERT [dbo].[Ruta] ([IDRuta], [Nombre], [HoraDeSalida], [HoradeLlegada], [IDConductor], [IDAutobus], [IDGarage]) VALUES (9, N'Puerto Plata', N'10:20 AM', N'2:10 PM', 9, 21, 2)
INSERT [dbo].[Ruta] ([IDRuta], [Nombre], [HoraDeSalida], [HoradeLlegada], [IDConductor], [IDAutobus], [IDGarage]) VALUES (10, N'Samana', N'5:10 PM', N'7:50PM', 10, 15, 1)
SET IDENTITY_INSERT [dbo].[Ruta] OFF
ALTER TABLE [dbo].[Autobus]  WITH CHECK ADD  CONSTRAINT [FK_Autobus_Ruta] FOREIGN KEY([IDAutobus])
REFERENCES [dbo].[Ruta] ([IDRuta])
GO
ALTER TABLE [dbo].[Autobus] CHECK CONSTRAINT [FK_Autobus_Ruta]
GO
ALTER TABLE [dbo].[Garage]  WITH CHECK ADD  CONSTRAINT [FK_Garage_Empresas] FOREIGN KEY([IDGarage])
REFERENCES [dbo].[Empresas] ([IDEmpresa])
GO
ALTER TABLE [dbo].[Garage] CHECK CONSTRAINT [FK_Garage_Empresas]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Conductor] FOREIGN KEY([IDRuta])
REFERENCES [dbo].[Conductor] ([IDConductor])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Conductor]
GO
USE [master]
GO
ALTER DATABASE [EmpresaTrasportista] SET  READ_WRITE 
GO
