

/*Nombre: Alexander Mañan Tavarez Matricula; 17-MIIN-1-046 Seccion: 0541*/



USE [master]
GO
/****** Object:  Database [LibreriaAlexander]    Script Date: 8/9/2018 7:22:42 PM ******/
CREATE DATABASE [LibreriaAlexander]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Empresa', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\Empresa.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Empresa_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\Empresa_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LibreriaAlexander] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LibreriaAlexander].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LibreriaAlexander] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET ARITHABORT OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LibreriaAlexander] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LibreriaAlexander] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LibreriaAlexander] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LibreriaAlexander] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LibreriaAlexander] SET  MULTI_USER 
GO
ALTER DATABASE [LibreriaAlexander] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LibreriaAlexander] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LibreriaAlexander] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LibreriaAlexander] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LibreriaAlexander] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LibreriaAlexander] SET QUERY_STORE = OFF
GO
USE [LibreriaAlexander]
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
USE [LibreriaAlexander]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 8/9/2018 7:22:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros](
	[IDLiBros] [int] NOT NULL,
	[Nombre] [varchar](250) NOT NULL,
	[Autor] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Libros] PRIMARY KEY CLUSTERED 
(
	[IDLiBros] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrestamosdeLibros]    Script Date: 8/9/2018 7:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrestamosdeLibros](
	[IDPrestamos] [int] NOT NULL,
	[IDLibro] [int] NOT NULL,
	[FechadeRetiro] [nchar](10) NOT NULL,
	[FechadeEntrega] [nchar](10) NOT NULL,
	[IDSocio] [int] NOT NULL,
 CONSTRAINT [PK_Prestamos de Libros] PRIMARY KEY CLUSTERED 
(
	[IDPrestamos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Socios]    Script Date: 8/9/2018 7:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Socios](
	[IDSocio] [int] NOT NULL,
	[Nombres] [varchar](250) NULL,
	[Direccion] [varchar](250) NULL,
	[NumeroTelefono] [nvarchar](250) NULL,
	[FechaDeRegistro] [varchar](50) NULL,
 CONSTRAINT [PK_Socios] PRIMARY KEY CLUSTERED 
(
	[IDSocio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Libros] ([IDLiBros], [Nombre], [Autor]) VALUES (1, N'FisicaUniversitaria', N'Serway')
INSERT [dbo].[Libros] ([IDLiBros], [Nombre], [Autor]) VALUES (2, N'CalculoDiferencial', N'Punsell')
INSERT [dbo].[Libros] ([IDLiBros], [Nombre], [Autor]) VALUES (3, N'MedicinaInterna', N'Harrison')
INSERT [dbo].[Libros] ([IDLiBros], [Nombre], [Autor]) VALUES (4, N'Anatomia', N'Ruvier')
INSERT [dbo].[Libros] ([IDLiBros], [Nombre], [Autor]) VALUES (5, N'IngenieriaIndustrial', N'EnmanuelPelaez')
INSERT [dbo].[Libros] ([IDLiBros], [Nombre], [Autor]) VALUES (6, N'Matematica Basica', N'PeñaGeraldino')
INSERT [dbo].[Libros] ([IDLiBros], [Nombre], [Autor]) VALUES (7, N'AlegebraSuperior', N'RosaSantana')
INSERT [dbo].[Libros] ([IDLiBros], [Nombre], [Autor]) VALUES (8, N'Derechopenal', N'AminAbelHasbun')
INSERT [dbo].[Libros] ([IDLiBros], [Nombre], [Autor]) VALUES (9, N'ContabilidadBasica', N'AlejandroMañan')
INSERT [dbo].[Libros] ([IDLiBros], [Nombre], [Autor]) VALUES (10, N'Paracitologia', N'Harrison')
INSERT [dbo].[PrestamosdeLibros] ([IDPrestamos], [IDLibro], [FechadeRetiro], [FechadeEntrega], [IDSocio]) VALUES (1, 10, N'2-05-2018 ', N'5-05-2018 ', 1)
INSERT [dbo].[PrestamosdeLibros] ([IDPrestamos], [IDLibro], [FechadeRetiro], [FechadeEntrega], [IDSocio]) VALUES (2, 9, N'03-06-2018', N'05-06-2018', 2)
INSERT [dbo].[PrestamosdeLibros] ([IDPrestamos], [IDLibro], [FechadeRetiro], [FechadeEntrega], [IDSocio]) VALUES (3, 8, N'03-06-201 ', N'06-06-2018', 3)
INSERT [dbo].[PrestamosdeLibros] ([IDPrestamos], [IDLibro], [FechadeRetiro], [FechadeEntrega], [IDSocio]) VALUES (4, 7, N'02-05-2018', N'04-05-2018', 4)
INSERT [dbo].[PrestamosdeLibros] ([IDPrestamos], [IDLibro], [FechadeRetiro], [FechadeEntrega], [IDSocio]) VALUES (5, 6, N'01-06-2018', N'09-06-2018', 5)
INSERT [dbo].[PrestamosdeLibros] ([IDPrestamos], [IDLibro], [FechadeRetiro], [FechadeEntrega], [IDSocio]) VALUES (6, 5, N'18-05-2018', N'21-06-2018', 6)
INSERT [dbo].[PrestamosdeLibros] ([IDPrestamos], [IDLibro], [FechadeRetiro], [FechadeEntrega], [IDSocio]) VALUES (7, 4, N'21-06-2018', N'25-06-2018', 7)
INSERT [dbo].[PrestamosdeLibros] ([IDPrestamos], [IDLibro], [FechadeRetiro], [FechadeEntrega], [IDSocio]) VALUES (8, 3, N'22-06-2018', N'29-06-2018', 8)
INSERT [dbo].[PrestamosdeLibros] ([IDPrestamos], [IDLibro], [FechadeRetiro], [FechadeEntrega], [IDSocio]) VALUES (9, 2, N'29-05-2018', N'01-06-2018', 9)
INSERT [dbo].[PrestamosdeLibros] ([IDPrestamos], [IDLibro], [FechadeRetiro], [FechadeEntrega], [IDSocio]) VALUES (10, 1, N'29-05-2018', N'05-06-2018', 10)
INSERT [dbo].[Socios] ([IDSocio], [Nombres], [Direccion], [NumeroTelefono], [FechaDeRegistro]) VALUES (1, N'Alexader', N'Autopista duarte #501', N'8093886326', N'21-01-2018')
INSERT [dbo].[Socios] ([IDSocio], [Nombres], [Direccion], [NumeroTelefono], [FechaDeRegistro]) VALUES (2, N'Alexis', N'Av, San Vicente,#15', N'8095939572', N'25-01-2018')
INSERT [dbo].[Socios] ([IDSocio], [Nombres], [Direccion], [NumeroTelefono], [FechaDeRegistro]) VALUES (3, N'alejandro', N'Autopista Duarte #41', N'8093886363', N'23-01-2018')
INSERT [dbo].[Socios] ([IDSocio], [Nombres], [Direccion], [NumeroTelefono], [FechaDeRegistro]) VALUES (4, N'Julia', N'Av,Churchill #15', N'8079390100', N'23-01-2018')
INSERT [dbo].[Socios] ([IDSocio], [Nombres], [Direccion], [NumeroTelefono], [FechaDeRegistro]) VALUES (5, N'Ana ', N'Av,Kennedy #50', N'8092431054', N'26-02-2018')
INSERT [dbo].[Socios] ([IDSocio], [Nombres], [Direccion], [NumeroTelefono], [FechaDeRegistro]) VALUES (6, N'Josefina', N'Av,27 de Febrero esquina Lincom #50', N'8092587683', N'21-02-2018')
INSERT [dbo].[Socios] ([IDSocio], [Nombres], [Direccion], [NumeroTelefono], [FechaDeRegistro]) VALUES (7, N'Natacha', N'Ave.-San ISIdro,#140', N'8094233453', N'26-01-2018')
INSERT [dbo].[Socios] ([IDSocio], [Nombres], [Direccion], [NumeroTelefono], [FechaDeRegistro]) VALUES (8, N'Natalia', N'URB,Esperrilla,#128', N'8096231053', N'26-01-2018')
INSERT [dbo].[Socios] ([IDSocio], [Nombres], [Direccion], [NumeroTelefono], [FechaDeRegistro]) VALUES (9, N'Felicia', N'Av,Duarte #35', N'8092343766', N'27-01-2018')
INSERT [dbo].[Socios] ([IDSocio], [Nombres], [Direccion], [NumeroTelefono], [FechaDeRegistro]) VALUES (10, N'Dana', N'Carretera Mella #21', N'8092376748', N'2-02-2018')
ALTER TABLE [dbo].[PrestamosdeLibros]  WITH CHECK ADD  CONSTRAINT [FK_PrestamosdeLibros_Libros] FOREIGN KEY([IDPrestamos])
REFERENCES [dbo].[Libros] ([IDLiBros])
GO
ALTER TABLE [dbo].[PrestamosdeLibros] CHECK CONSTRAINT [FK_PrestamosdeLibros_Libros]
GO
ALTER TABLE [dbo].[PrestamosdeLibros]  WITH CHECK ADD  CONSTRAINT [FK_PrestamosdeLibros_Socios] FOREIGN KEY([IDSocio])
REFERENCES [dbo].[Socios] ([IDSocio])
GO
ALTER TABLE [dbo].[PrestamosdeLibros] CHECK CONSTRAINT [FK_PrestamosdeLibros_Socios]
GO
USE [master]
GO
ALTER DATABASE [LibreriaAlexander] SET  READ_WRITE 
GO
