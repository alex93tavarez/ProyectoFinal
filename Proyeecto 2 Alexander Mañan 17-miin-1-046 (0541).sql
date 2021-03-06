

/*Nombre: Alexander Mañan Tavarez Matricula; 17-MIIN-1-046 Seccion: 0541*/


USE [master]
GO
/****** Object:  Database [IndustriaEcologica]    Script Date: 8/9/2018 7:21:03 PM ******/
CREATE DATABASE [IndustriaEcologica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Industria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\Industria.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Industria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\Industria_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [IndustriaEcologica] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IndustriaEcologica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IndustriaEcologica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET ARITHABORT OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IndustriaEcologica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IndustriaEcologica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [IndustriaEcologica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IndustriaEcologica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [IndustriaEcologica] SET  MULTI_USER 
GO
ALTER DATABASE [IndustriaEcologica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IndustriaEcologica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IndustriaEcologica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IndustriaEcologica] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [IndustriaEcologica] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [IndustriaEcologica] SET QUERY_STORE = OFF
GO
USE [IndustriaEcologica]
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
USE [IndustriaEcologica]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 8/9/2018 7:21:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IDCliente] [int] NOT NULL,
	[Nombres] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Telefono] [nchar](10) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IDCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 8/9/2018 7:21:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[IDEmpleado] [int] NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Sexo] [nchar](1) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[Departamento] [varchar](20) NOT NULL,
	[Sueldo] [money] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[IDEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 8/9/2018 7:21:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[IDPedido] [int] IDENTITY(1,2) NOT NULL,
	[IDCliente] [int] NULL,
	[IDEmpleado] [nchar](30) NULL,
	[CantidadPedido] [nchar](30) NULL,
	[PrecioporUnidad] [smallmoney] NULL,
	[ValorTotal] [smallmoney] NULL,
	[IDProducto] [int] NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[IDPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producctos]    Script Date: 8/9/2018 7:21:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producctos](
	[IDProductos] [int] NOT NULL,
	[NombresProductos] [varchar](50) NOT NULL,
	[PrecioUnidad] [money] NOT NULL,
	[NumeroLote] [int] NOT NULL,
	[IDEmpleado] [int] NULL,
 CONSTRAINT [PK_Producctos] PRIMARY KEY CLUSTERED 
(
	[IDProductos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cliente] ([IDCliente], [Nombres], [Direccion], [Telefono]) VALUES (1, N'FerreteriaLaAmericana', N'Carretera Mella #21', N'8092123450')
INSERT [dbo].[Cliente] ([IDCliente], [Nombres], [Direccion], [Telefono]) VALUES (2, N'ViveroBetania', N'Urb, San Cristobal. #02', N'8091238564')
INSERT [dbo].[Cliente] ([IDCliente], [Nombres], [Direccion], [Telefono]) VALUES (5, N'FerreteriaAche', N'Av,kennedy #08', N'8095463128')
INSERT [dbo].[Cliente] ([IDCliente], [Nombres], [Direccion], [Telefono]) VALUES (11, N'FerreteriaOchoa', N'Av,Duarte #35', N'8095357882')
INSERT [dbo].[Cliente] ([IDCliente], [Nombres], [Direccion], [Telefono]) VALUES (22, N'Bravo', N'URB,Esperrilla,#128', N'8095912222')
INSERT [dbo].[Cliente] ([IDCliente], [Nombres], [Direccion], [Telefono]) VALUES (23, N'CCNJumbo', N'Ave.-San ISIdro,#140', N'8095369721')
INSERT [dbo].[Cliente] ([IDCliente], [Nombres], [Direccion], [Telefono]) VALUES (25, N'CentroCuesta', N'Av,27 de Febrero esquina Lincom #50', N'8292532411')
INSERT [dbo].[Cliente] ([IDCliente], [Nombres], [Direccion], [Telefono]) VALUES (30, N'CentroUnion', N'Av,Kennedy #50', N'8095462491')
INSERT [dbo].[Cliente] ([IDCliente], [Nombres], [Direccion], [Telefono]) VALUES (50, N'GrupoRamos', N'Av,Churchill @15', N'8092125349')
INSERT [dbo].[Cliente] ([IDCliente], [Nombres], [Direccion], [Telefono]) VALUES (65, N'CarreFull', N'Autopista Duarte #41', N'8094628721')
INSERT [dbo].[Cliente] ([IDCliente], [Nombres], [Direccion], [Telefono]) VALUES (125, N'Ole Rompe Precio', N'Av, San Vicente,#15', N'8095467216')
INSERT [dbo].[Cliente] ([IDCliente], [Nombres], [Direccion], [Telefono]) VALUES (188, N'JardineriaInka', N'Autopista duarte #501', N'8095208634')
INSERT [dbo].[Empleados] ([IDEmpleado], [Nombres], [Apellido], [Sexo], [Direccion], [Departamento], [Sueldo]) VALUES (1, N'Julia', N'Tavarez', N'F', N'C/R2 Katanga Los Mina #08', N'Operaciones', 15000.0000)
INSERT [dbo].[Empleados] ([IDEmpleado], [Nombres], [Apellido], [Sexo], [Direccion], [Departamento], [Sueldo]) VALUES (2, N'Junior', N'Cespedes', N'M', N'Av. España #12', N'Ventas', 12000.0000)
INSERT [dbo].[Empleados] ([IDEmpleado], [Nombres], [Apellido], [Sexo], [Direccion], [Departamento], [Sueldo]) VALUES (3, N'Alexis', N'Mañan', N'M', N'C/santa luisa de marollac #17', N'Ventas', 12000.0000)
INSERT [dbo].[Empleados] ([IDEmpleado], [Nombres], [Apellido], [Sexo], [Direccion], [Departamento], [Sueldo]) VALUES (4, N'Santo', N'Batista', N'M', N'Av. España #25', N'Ventas', 12000.0000)
INSERT [dbo].[Empleados] ([IDEmpleado], [Nombres], [Apellido], [Sexo], [Direccion], [Departamento], [Sueldo]) VALUES (5, N'Maicor', N'Valdez', N'M', N'Av. San vicente #21 ', N'Produccion', 10000.0000)
INSERT [dbo].[Empleados] ([IDEmpleado], [Nombres], [Apellido], [Sexo], [Direccion], [Departamento], [Sueldo]) VALUES (6, N'Luis', N'Perez', N'M', N'Av. San Martin #50', N'produccion', 10500.0000)
INSERT [dbo].[Empleados] ([IDEmpleado], [Nombres], [Apellido], [Sexo], [Direccion], [Departamento], [Sueldo]) VALUES (7, N'Angel ', N'Martinez', N'M', N'C/ San juan # 40', N'Produccion', 15900.0000)
INSERT [dbo].[Empleados] ([IDEmpleado], [Nombres], [Apellido], [Sexo], [Direccion], [Departamento], [Sueldo]) VALUES (8, N'Natacha ', N'Mir', N'F', N'C/ Hugo Chaves, #22', N'Produccion', 15900.0000)
INSERT [dbo].[Empleados] ([IDEmpleado], [Nombres], [Apellido], [Sexo], [Direccion], [Departamento], [Sueldo]) VALUES (9, N'Alejandro', N'Castro', N'M', N'C/ la esperilla', N'Contavilidad', 20000.0000)
INSERT [dbo].[Empleados] ([IDEmpleado], [Nombres], [Apellido], [Sexo], [Direccion], [Departamento], [Sueldo]) VALUES (10, N'Luz del alba', N'Mejia', N'F', N'Av. tiradente # 21', N'Administradora', 11000.0000)
SET IDENTITY_INSERT [dbo].[Pedidos] ON 

INSERT [dbo].[Pedidos] ([IDPedido], [IDCliente], [IDEmpleado], [CantidadPedido], [PrecioporUnidad], [ValorTotal], [IDProducto]) VALUES (1, 22, N'02                            ', N'20                            ', 500.0000, 10000.0000, 100)
INSERT [dbo].[Pedidos] ([IDPedido], [IDCliente], [IDEmpleado], [CantidadPedido], [PrecioporUnidad], [ValorTotal], [IDProducto]) VALUES (3, 5, N'03                            ', N'200                           ', 150.0000, 30000.0000, 501)
INSERT [dbo].[Pedidos] ([IDPedido], [IDCliente], [IDEmpleado], [CantidadPedido], [PrecioporUnidad], [ValorTotal], [IDProducto]) VALUES (5, 65, N'02                            ', N'21                            ', 190.0000, 3990.0000, 2200)
INSERT [dbo].[Pedidos] ([IDPedido], [IDCliente], [IDEmpleado], [CantidadPedido], [PrecioporUnidad], [ValorTotal], [IDProducto]) VALUES (7, 23, N'03                            ', N'50                            ', 110.0000, 5500.0000, 550)
INSERT [dbo].[Pedidos] ([IDPedido], [IDCliente], [IDEmpleado], [CantidadPedido], [PrecioporUnidad], [ValorTotal], [IDProducto]) VALUES (9, 188, N'04                            ', N'70                            ', 300.0000, 21000.0000, 250)
INSERT [dbo].[Pedidos] ([IDPedido], [IDCliente], [IDEmpleado], [CantidadPedido], [PrecioporUnidad], [ValorTotal], [IDProducto]) VALUES (11, 125, N'04                            ', N'170                           ', 90.0000, 15300.0000, 600)
INSERT [dbo].[Pedidos] ([IDPedido], [IDCliente], [IDEmpleado], [CantidadPedido], [PrecioporUnidad], [ValorTotal], [IDProducto]) VALUES (13, 50, N'04                            ', N'220                           ', 125.0000, 27500.0000, 200)
INSERT [dbo].[Pedidos] ([IDPedido], [IDCliente], [IDEmpleado], [CantidadPedido], [PrecioporUnidad], [ValorTotal], [IDProducto]) VALUES (15, 1, N'03                            ', N'90                            ', 500.0000, 45000.0000, 100)
INSERT [dbo].[Pedidos] ([IDPedido], [IDCliente], [IDEmpleado], [CantidadPedido], [PrecioporUnidad], [ValorTotal], [IDProducto]) VALUES (17, 11, N'02                            ', N'30                            ', 300.0000, 900.0000, 250)
INSERT [dbo].[Pedidos] ([IDPedido], [IDCliente], [IDEmpleado], [CantidadPedido], [PrecioporUnidad], [ValorTotal], [IDProducto]) VALUES (19, 25, N'02                            ', N'150                           ', 125.0000, 18750.0000, 200)
INSERT [dbo].[Pedidos] ([IDPedido], [IDCliente], [IDEmpleado], [CantidadPedido], [PrecioporUnidad], [ValorTotal], [IDProducto]) VALUES (21, 30, N'03                            ', N'400                           ', 190.0000, 76000.0000, 2200)
INSERT [dbo].[Pedidos] ([IDPedido], [IDCliente], [IDEmpleado], [CantidadPedido], [PrecioporUnidad], [ValorTotal], [IDProducto]) VALUES (25, 65, N'02                            ', N'130                           ', 125.0000, 16250.0000, 280)
INSERT [dbo].[Pedidos] ([IDPedido], [IDCliente], [IDEmpleado], [CantidadPedido], [PrecioporUnidad], [ValorTotal], [IDProducto]) VALUES (27, NULL, NULL, N'50                            ', 75.0000, 3750.0000, 1287)
SET IDENTITY_INSERT [dbo].[Pedidos] OFF
INSERT [dbo].[Producctos] ([IDProductos], [NombresProductos], [PrecioUnidad], [NumeroLote], [IDEmpleado]) VALUES (100, N'SustractoDeCoco', 500.0000, 2, 5)
INSERT [dbo].[Producctos] ([IDProductos], [NombresProductos], [PrecioUnidad], [NumeroLote], [IDEmpleado]) VALUES (200, N'SustratoLiquido', 125.0000, 5, 8)
INSERT [dbo].[Producctos] ([IDProductos], [NombresProductos], [PrecioUnidad], [NumeroLote], [IDEmpleado]) VALUES (250, N'SustratoGranulado', 300.0000, 9, 6)
INSERT [dbo].[Producctos] ([IDProductos], [NombresProductos], [PrecioUnidad], [NumeroLote], [IDEmpleado]) VALUES (280, N'NUAntisMosquitoLL', 125.0000, 2, 5)
INSERT [dbo].[Producctos] ([IDProductos], [NombresProductos], [PrecioUnidad], [NumeroLote], [IDEmpleado]) VALUES (501, N'TarrosGrandes', 150.0000, 23, 7)
INSERT [dbo].[Producctos] ([IDProductos], [NombresProductos], [PrecioUnidad], [NumeroLote], [IDEmpleado]) VALUES (550, N'TarrosMedianos', 110.0000, 22, 6)
INSERT [dbo].[Producctos] ([IDProductos], [NombresProductos], [PrecioUnidad], [NumeroLote], [IDEmpleado]) VALUES (600, N'TarrosPequeños', 90.0000, 21, 5)
INSERT [dbo].[Producctos] ([IDProductos], [NombresProductos], [PrecioUnidad], [NumeroLote], [IDEmpleado]) VALUES (1287, N'GelAntiCucaracha', 75.0000, 3, 5)
INSERT [dbo].[Producctos] ([IDProductos], [NombresProductos], [PrecioUnidad], [NumeroLote], [IDEmpleado]) VALUES (2121, N'Trampaantihormigas', 100.0000, 31, 6)
INSERT [dbo].[Producctos] ([IDProductos], [NombresProductos], [PrecioUnidad], [NumeroLote], [IDEmpleado]) VALUES (2200, N'TierraNegraVirgen', 190.0000, 12, 7)
INSERT [dbo].[Producctos] ([IDProductos], [NombresProductos], [PrecioUnidad], [NumeroLote], [IDEmpleado]) VALUES (2215, N'GelAntiInsectos', 150.0000, 55, 6)
INSERT [dbo].[Producctos] ([IDProductos], [NombresProductos], [PrecioUnidad], [NumeroLote], [IDEmpleado]) VALUES (2641, N'LiquidoInsectosRastreros', 250.0000, 21, 7)
INSERT [dbo].[Producctos] ([IDProductos], [NombresProductos], [PrecioUnidad], [NumeroLote], [IDEmpleado]) VALUES (3497, N'AhuyentadorDeMoscas', 80.0000, 120, 6)
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Cliente] FOREIGN KEY([IDCliente])
REFERENCES [dbo].[Cliente] ([IDCliente])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Cliente]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Producctos] FOREIGN KEY([IDProducto])
REFERENCES [dbo].[Producctos] ([IDProductos])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Producctos]
GO
ALTER TABLE [dbo].[Producctos]  WITH CHECK ADD  CONSTRAINT [FK_Producctos_Empleados] FOREIGN KEY([IDEmpleado])
REFERENCES [dbo].[Empleados] ([IDEmpleado])
GO
ALTER TABLE [dbo].[Producctos] CHECK CONSTRAINT [FK_Producctos_Empleados]
GO
USE [master]
GO
ALTER DATABASE [IndustriaEcologica] SET  READ_WRITE 
GO
