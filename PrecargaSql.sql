USE [master]
GO
/****** Object:  Database [ObligatorioP32023S3]    Script Date: 22/6/2023 16:36:50 ******/
CREATE DATABASE [ObligatorioP32023S3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ObligatorioP32023S3', FILENAME = N'C:\Users\jerev\ObligatorioP32023S3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ObligatorioP32023S3_log', FILENAME = N'C:\Users\jerev\ObligatorioP32023S3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ObligatorioP32023S3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ObligatorioP32023S3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ObligatorioP32023S3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ObligatorioP32023S3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ObligatorioP32023S3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ObligatorioP32023S3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ObligatorioP32023S3] SET ARITHABORT OFF 
GO
ALTER DATABASE [ObligatorioP32023S3] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ObligatorioP32023S3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ObligatorioP32023S3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ObligatorioP32023S3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ObligatorioP32023S3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ObligatorioP32023S3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ObligatorioP32023S3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ObligatorioP32023S3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ObligatorioP32023S3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ObligatorioP32023S3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ObligatorioP32023S3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ObligatorioP32023S3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ObligatorioP32023S3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ObligatorioP32023S3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ObligatorioP32023S3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ObligatorioP32023S3] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ObligatorioP32023S3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ObligatorioP32023S3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ObligatorioP32023S3] SET  MULTI_USER 
GO
ALTER DATABASE [ObligatorioP32023S3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ObligatorioP32023S3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ObligatorioP32023S3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ObligatorioP32023S3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ObligatorioP32023S3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ObligatorioP32023S3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ObligatorioP32023S3] SET QUERY_STORE = OFF
GO
USE [ObligatorioP32023S3]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 22/6/2023 16:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cabañas]    Script Date: 22/6/2023 16:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cabañas](
	[IdHabitacion] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](450) NOT NULL,
	[NombreTipo] [nvarchar](450) NOT NULL,
	[Jacuzzi] [bit] NOT NULL,
	[Habilitada] [bit] NOT NULL,
	[CantPersonas] [int] NOT NULL,
	[Foto] [nvarchar](max) NULL,
	[Descripcion_Descripcion] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_cabañas] PRIMARY KEY CLUSTERED 
(
	[IdHabitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[configuracion]    Script Date: 22/6/2023 16:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[configuracion](
	[Atributo] [nvarchar](450) NOT NULL,
	[LimiteSuperior] [int] NOT NULL,
	[LimiteInferior] [int] NOT NULL,
 CONSTRAINT [PK_configuracion] PRIMARY KEY CLUSTERED 
(
	[Atributo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mantenimientos]    Script Date: 22/6/2023 16:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mantenimientos](
	[Fecha] [datetime2](7) NOT NULL,
	[IdCaba] [int] NOT NULL,
	[Costo_costoMan] [int] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[descripcionMan_descripcionMan] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_mantenimientos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoCabanias]    Script Date: 22/6/2023 16:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoCabanias](
	[Nombre] [nvarchar](450) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
	[CostoHuesped_CostoPorHuesped] [int] NOT NULL,
 CONSTRAINT [PK_tipoCabanias] PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 22/6/2023 16:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[Email] [nvarchar](450) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230509193319_inicio', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230510114610_fkTipo', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230511153749_inicial', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230616193932_correcciones', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230616210511_configuracion', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230616213022_correc', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230618212841_valueObjects', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230618220629_valueObject', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230619232217_CSLogin', N'7.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230620000210_prueba', N'7.0.7')
GO
SET IDENTITY_INSERT [dbo].[cabañas] ON 

INSERT [dbo].[cabañas] ([IdHabitacion], [Nombre], [NombreTipo], [Jacuzzi], [Habilitada], [CantPersonas], [Foto], [Descripcion_Descripcion]) VALUES (25, N'CabaniaUno', N'TipoCabaniaUno', 1, 1, 4, N'CabaniaUno_001.jpg', N'descripcion')
INSERT [dbo].[cabañas] ([IdHabitacion], [Nombre], [NombreTipo], [Jacuzzi], [Habilitada], [CantPersonas], [Foto], [Descripcion_Descripcion]) VALUES (26, N'CabaniaDos', N'TipoCabaniaDos', 1, 1, 5, N'CabaniaDos_002.jpg', N'descripcion')
INSERT [dbo].[cabañas] ([IdHabitacion], [Nombre], [NombreTipo], [Jacuzzi], [Habilitada], [CantPersonas], [Foto], [Descripcion_Descripcion]) VALUES (27, N'CabaniaTres', N'TipoCabaniaTres', 1, 1, 20, N'CabaniaTres_003.jpg', N'descripcion')
INSERT [dbo].[cabañas] ([IdHabitacion], [Nombre], [NombreTipo], [Jacuzzi], [Habilitada], [CantPersonas], [Foto], [Descripcion_Descripcion]) VALUES (28, N'CabaniaCuatro', N'TipoCabaniaCuatro', 1, 1, 12, N'CabaniaCuatro_004.jpg', N'descripcion')
INSERT [dbo].[cabañas] ([IdHabitacion], [Nombre], [NombreTipo], [Jacuzzi], [Habilitada], [CantPersonas], [Foto], [Descripcion_Descripcion]) VALUES (29, N'CabaniaCinco', N'TipoCabaniaCinco', 1, 0, 23, N'CabaniaCinco_005.jpg', N'descripcion')
INSERT [dbo].[cabañas] ([IdHabitacion], [Nombre], [NombreTipo], [Jacuzzi], [Habilitada], [CantPersonas], [Foto], [Descripcion_Descripcion]) VALUES (30, N'CabaniaSeis', N'TipoCabaniaCinco', 0, 0, 2, N'CabaniaSeis_006.jpg', N'descripcion')
INSERT [dbo].[cabañas] ([IdHabitacion], [Nombre], [NombreTipo], [Jacuzzi], [Habilitada], [CantPersonas], [Foto], [Descripcion_Descripcion]) VALUES (31, N'CabaniaSiete', N'TipoCabaniaSiete', 0, 1, 1, N'CabaniaSiete_007.jpg', N'descripcion')
INSERT [dbo].[cabañas] ([IdHabitacion], [Nombre], [NombreTipo], [Jacuzzi], [Habilitada], [CantPersonas], [Foto], [Descripcion_Descripcion]) VALUES (32, N'CabaniaOcho', N'TipoCabaniaCinco', 1, 1, 4, N'CabaniaOcho_008.jpg', N'descripcion')
INSERT [dbo].[cabañas] ([IdHabitacion], [Nombre], [NombreTipo], [Jacuzzi], [Habilitada], [CantPersonas], [Foto], [Descripcion_Descripcion]) VALUES (33, N'CabaniaNueve', N'TipoCabaniaNueve', 0, 0, 5, N'CabaniaNueve_009.jpg', N'descripcion')
INSERT [dbo].[cabañas] ([IdHabitacion], [Nombre], [NombreTipo], [Jacuzzi], [Habilitada], [CantPersonas], [Foto], [Descripcion_Descripcion]) VALUES (34, N'CabaniaDiez', N'TipoCabaniaDiez', 1, 1, 1, N'CabaniaDiez_010.jpg', N'descripcion')
SET IDENTITY_INSERT [dbo].[cabañas] OFF
GO
INSERT [dbo].[configuracion] ([Atributo], [LimiteSuperior], [LimiteInferior]) VALUES (N'Descripcion', 500, 10)
INSERT [dbo].[configuracion] ([Atributo], [LimiteSuperior], [LimiteInferior]) VALUES (N'DescripcionMantenimiento', 200, 10)
INSERT [dbo].[configuracion] ([Atributo], [LimiteSuperior], [LimiteInferior]) VALUES (N'DescripcionTipo', 200, 10)
GO
SET IDENTITY_INSERT [dbo].[mantenimientos] ON 

INSERT [dbo].[mantenimientos] ([Fecha], [IdCaba], [Costo_costoMan], [Nombre], [Id], [descripcionMan_descripcionMan]) VALUES (CAST(N'2023-05-31T16:03:00.0000000' AS DateTime2), 25, 100, N'MantenimientoUno', 29, N'mantenimiento')
INSERT [dbo].[mantenimientos] ([Fecha], [IdCaba], [Costo_costoMan], [Nombre], [Id], [descripcionMan_descripcionMan]) VALUES (CAST(N'2023-05-31T16:03:00.0000000' AS DateTime2), 25, 100, N'MantenimientoUno', 30, N'mantenimiento')
INSERT [dbo].[mantenimientos] ([Fecha], [IdCaba], [Costo_costoMan], [Nombre], [Id], [descripcionMan_descripcionMan]) VALUES (CAST(N'2023-05-31T16:03:00.0000000' AS DateTime2), 25, 100, N'MantenimientoUno', 31, N'mantenimiento')
INSERT [dbo].[mantenimientos] ([Fecha], [IdCaba], [Costo_costoMan], [Nombre], [Id], [descripcionMan_descripcionMan]) VALUES (CAST(N'2023-05-17T16:03:00.0000000' AS DateTime2), 25, 100, N'MantenimientoDos', 32, N'mantenimiento')
INSERT [dbo].[mantenimientos] ([Fecha], [IdCaba], [Costo_costoMan], [Nombre], [Id], [descripcionMan_descripcionMan]) VALUES (CAST(N'2023-06-03T16:05:00.0000000' AS DateTime2), 26, 200, N'MantenimientoUno', 33, N'descripcion')
INSERT [dbo].[mantenimientos] ([Fecha], [IdCaba], [Costo_costoMan], [Nombre], [Id], [descripcionMan_descripcionMan]) VALUES (CAST(N'2023-06-03T16:05:00.0000000' AS DateTime2), 26, 200, N'MantenimientoUno', 34, N'descripcion')
INSERT [dbo].[mantenimientos] ([Fecha], [IdCaba], [Costo_costoMan], [Nombre], [Id], [descripcionMan_descripcionMan]) VALUES (CAST(N'2023-06-13T16:06:00.0000000' AS DateTime2), 28, 150, N'MantenimientoDos', 35, N'descripcion')
INSERT [dbo].[mantenimientos] ([Fecha], [IdCaba], [Costo_costoMan], [Nombre], [Id], [descripcionMan_descripcionMan]) VALUES (CAST(N'2023-06-13T16:06:00.0000000' AS DateTime2), 28, 150, N'MantenimientoTres', 36, N'descripcion')
INSERT [dbo].[mantenimientos] ([Fecha], [IdCaba], [Costo_costoMan], [Nombre], [Id], [descripcionMan_descripcionMan]) VALUES (CAST(N'2023-06-06T16:06:00.0000000' AS DateTime2), 32, 11, N'MantenimientoCuatro', 37, N'descripcion')
INSERT [dbo].[mantenimientos] ([Fecha], [IdCaba], [Costo_costoMan], [Nombre], [Id], [descripcionMan_descripcionMan]) VALUES (CAST(N'2023-05-02T16:07:00.0000000' AS DateTime2), 34, 120, N'MantenimientoCinco', 38, N'descripcion')
SET IDENTITY_INSERT [dbo].[mantenimientos] OFF
GO
INSERT [dbo].[tipoCabanias] ([Nombre], [Descripcion], [CostoHuesped_CostoPorHuesped]) VALUES (N'TipoCabaniaCinco', N'descripcion', 20)
INSERT [dbo].[tipoCabanias] ([Nombre], [Descripcion], [CostoHuesped_CostoPorHuesped]) VALUES (N'TipoCabaniaCuatro', N'descripcion', 5)
INSERT [dbo].[tipoCabanias] ([Nombre], [Descripcion], [CostoHuesped_CostoPorHuesped]) VALUES (N'TipoCabaniaDiez', N'descripcion', 500)
INSERT [dbo].[tipoCabanias] ([Nombre], [Descripcion], [CostoHuesped_CostoPorHuesped]) VALUES (N'TipoCabaniaDos', N'descripcion', 5)
INSERT [dbo].[tipoCabanias] ([Nombre], [Descripcion], [CostoHuesped_CostoPorHuesped]) VALUES (N'TipoCabaniaNueve', N'descripcion', 50)
INSERT [dbo].[tipoCabanias] ([Nombre], [Descripcion], [CostoHuesped_CostoPorHuesped]) VALUES (N'TipoCabaniaOcho', N'descripcion', 50)
INSERT [dbo].[tipoCabanias] ([Nombre], [Descripcion], [CostoHuesped_CostoPorHuesped]) VALUES (N'TipoCabaniaSeis', N'descripcion', 20)
INSERT [dbo].[tipoCabanias] ([Nombre], [Descripcion], [CostoHuesped_CostoPorHuesped]) VALUES (N'TipoCabaniaSiete', N'descripcion', 20)
INSERT [dbo].[tipoCabanias] ([Nombre], [Descripcion], [CostoHuesped_CostoPorHuesped]) VALUES (N'TipoCabaniaTres', N'descripcion', 5)
INSERT [dbo].[tipoCabanias] ([Nombre], [Descripcion], [CostoHuesped_CostoPorHuesped]) VALUES (N'TipoCabaniaUno', N'descripcion', 5)
GO
INSERT [dbo].[usuarios] ([Email], [Password]) VALUES (N'user1@mail.com', N'Hola123456')
INSERT [dbo].[usuarios] ([Email], [Password]) VALUES (N'user2@mail.com', N'Hola123456')
INSERT [dbo].[usuarios] ([Email], [Password]) VALUES (N'user3@mail.com', N'Hola123456')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cabañas_Nombre]    Script Date: 22/6/2023 16:36:50 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cabañas_Nombre] ON [dbo].[cabañas]
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cabañas_NombreTipo]    Script Date: 22/6/2023 16:36:50 ******/
CREATE NONCLUSTERED INDEX [IX_cabañas_NombreTipo] ON [dbo].[cabañas]
(
	[NombreTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_mantenimientos_IdCaba]    Script Date: 22/6/2023 16:36:50 ******/
CREATE NONCLUSTERED INDEX [IX_mantenimientos_IdCaba] ON [dbo].[mantenimientos]
(
	[IdCaba] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cabañas] ADD  DEFAULT (N'') FOR [Descripcion_Descripcion]
GO
ALTER TABLE [dbo].[mantenimientos] ADD  DEFAULT (N'') FOR [descripcionMan_descripcionMan]
GO
ALTER TABLE [dbo].[cabañas]  WITH CHECK ADD  CONSTRAINT [FK_cabañas_tipoCabanias_NombreTipo] FOREIGN KEY([NombreTipo])
REFERENCES [dbo].[tipoCabanias] ([Nombre])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cabañas] CHECK CONSTRAINT [FK_cabañas_tipoCabanias_NombreTipo]
GO
ALTER TABLE [dbo].[mantenimientos]  WITH CHECK ADD  CONSTRAINT [FK_mantenimientos_cabañas_IdCaba] FOREIGN KEY([IdCaba])
REFERENCES [dbo].[cabañas] ([IdHabitacion])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[mantenimientos] CHECK CONSTRAINT [FK_mantenimientos_cabañas_IdCaba]
GO
USE [master]
GO
ALTER DATABASE [ObligatorioP32023S3] SET  READ_WRITE 
GO
