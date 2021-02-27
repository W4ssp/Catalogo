USE [master]
GO
/****** Object:  Database [DBProductos]    Script Date: 26/02/2021 22:40:44 ******/
CREATE DATABASE [DBProductos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBProductos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBProductos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBProductos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBProductos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBProductos] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBProductos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBProductos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBProductos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBProductos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBProductos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBProductos] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBProductos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBProductos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBProductos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBProductos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBProductos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBProductos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBProductos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBProductos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBProductos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBProductos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBProductos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBProductos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBProductos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBProductos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBProductos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBProductos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBProductos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBProductos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBProductos] SET  MULTI_USER 
GO
ALTER DATABASE [DBProductos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBProductos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBProductos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBProductos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBProductos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBProductos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DBProductos] SET QUERY_STORE = OFF
GO
USE [DBProductos]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 26/02/2021 22:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[IdCategoria] [int] NOT NULL,
	[Descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 26/02/2021 22:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[IdProducto] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Detalle] [varchar](max) NULL,
	[Precio] [decimal](18, 5) NULL,
	[Stock] [decimal](18, 5) NULL,
	[Imagen] [varchar](50) NULL,
	[DImagen] [varchar](50) NULL,
	[IdCategoria] [int] NULL,
	[Activo] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto2]    Script Date: 26/02/2021 22:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto2](
	[ProductoId] [bigint] NULL,
	[Nombre] [varchar](50) NULL,
	[Precio] [money] NULL,
	[Imagen] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 26/02/2021 22:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Usuario] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categoria] ([IdCategoria], [Descripcion]) VALUES (1, N'Camisas')
GO
INSERT [dbo].[Categoria] ([IdCategoria], [Descripcion]) VALUES (2, N'Sacos')
GO
INSERT [dbo].[Categoria] ([IdCategoria], [Descripcion]) VALUES (3, N'Pantalones')
GO
INSERT [dbo].[Categoria] ([IdCategoria], [Descripcion]) VALUES (4, N'Jeans')
GO
INSERT [dbo].[Categoria] ([IdCategoria], [Descripcion]) VALUES (5, N'Celulares')
GO
INSERT [dbo].[Categoria] ([IdCategoria], [Descripcion]) VALUES (6, N'Almohadas')
GO
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Detalle], [Precio], [Stock], [Imagen], [DImagen], [IdCategoria], [Activo]) VALUES (1, N'Cuello Inglés', N'Camisa con cuello Inglés', CAST(5000.00000 AS Decimal(18, 5)), CAST(4.00000 AS Decimal(18, 5)), NULL, NULL, 1, 1)
GO
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Detalle], [Precio], [Stock], [Imagen], [DImagen], [IdCategoria], [Activo]) VALUES (2, N'Cuello Italiano', N'Camisa con cuello Italiano', CAST(20000.00000 AS Decimal(18, 5)), CAST(3.00000 AS Decimal(18, 5)), NULL, NULL, 1, 1)
GO
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Detalle], [Precio], [Stock], [Imagen], [DImagen], [IdCategoria], [Activo]) VALUES (3, N'Lana', N'Saco hecho lana', CAST(50000.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), NULL, NULL, 2, 1)
GO
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Detalle], [Precio], [Stock], [Imagen], [DImagen], [IdCategoria], [Activo]) VALUES (4, N'Hilo', N'Saco hecho en hilo', CAST(50000.00000 AS Decimal(18, 5)), CAST(10.00000 AS Decimal(18, 5)), NULL, NULL, 2, 1)
GO
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Detalle], [Precio], [Stock], [Imagen], [DImagen], [IdCategoria], [Activo]) VALUES (5, N'Acampanado', N'Pantalón Acampanado', CAST(50000.00000 AS Decimal(18, 5)), CAST(2.00000 AS Decimal(18, 5)), NULL, NULL, 3, 1)
GO
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Detalle], [Precio], [Stock], [Imagen], [DImagen], [IdCategoria], [Activo]) VALUES (6, N'Capri', N'Pantalón Capri', CAST(20000.00000 AS Decimal(18, 5)), CAST(3.00000 AS Decimal(18, 5)), NULL, NULL, 3, 1)
GO
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Detalle], [Precio], [Stock], [Imagen], [DImagen], [IdCategoria], [Activo]) VALUES (7, N'Skinny', N'Los pitillos son los vaqueros muy ajustados al cuerpo', CAST(50000.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), NULL, NULL, 4, 1)
GO
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Detalle], [Precio], [Stock], [Imagen], [DImagen], [IdCategoria], [Activo]) VALUES (8, N'Vaqueros', N'Vaqueros de tallas grandes', CAST(50000.00000 AS Decimal(18, 5)), CAST(10.00000 AS Decimal(18, 5)), NULL, NULL, 4, 1)
GO
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Detalle], [Precio], [Stock], [Imagen], [DImagen], [IdCategoria], [Activo]) VALUES (9, N'Jean', N'Rojo', CAST(15000.00000 AS Decimal(18, 5)), CAST(15.00000 AS Decimal(18, 5)), NULL, NULL, 4, 1)
GO
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Detalle], [Precio], [Stock], [Imagen], [DImagen], [IdCategoria], [Activo]) VALUES (10, N'Sueter', N'Hecho con lana, algodón o telas sintéticas', CAST(50000.00000 AS Decimal(18, 5)), CAST(30.00000 AS Decimal(18, 5)), NULL, NULL, 2, 1)
GO
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Detalle], [Precio], [Stock], [Imagen], [DImagen], [IdCategoria], [Activo]) VALUES (11, N'Xiaomi', N'Redmi note 8', CAST(670000.00000 AS Decimal(18, 5)), CAST(30.00000 AS Decimal(18, 5)), NULL, NULL, 5, 1)
GO
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Detalle], [Precio], [Stock], [Imagen], [DImagen], [IdCategoria], [Activo]) VALUES (12, N'Almohada de tela', N'Tela', CAST(5000.00000 AS Decimal(18, 5)), CAST(4.00000 AS Decimal(18, 5)), NULL, NULL, 6, 1)
GO
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Usuario], [Password]) VALUES (1, N'Jasmin', N'Fuquen', N'jfuquen', N'123')
GO
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Usuario], [Password]) VALUES (2, N'David', N'Alzate', N'dealzate', N'123')
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([IdCategoria])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Categoria]
GO
/****** Object:  StoredProcedure [dbo].[AgregarCategoria]    Script Date: 26/02/2021 22:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,David Alzate>
-- Create date: <Create Date,25/022021>
-- Description:	<Description,Procedimiento en el cual se agregan categorias>
-- =============================================
CREATE PROCEDURE [dbo].[AgregarCategoria] 
	-- Add the parameters for the stored procedure here
@Descripcion VARCHAR(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Categoria
	VALUES((SELECT ISNULL(MAX(IdCategoria)+1,1)FROM Categoria),@Descripcion)
END
GO
/****** Object:  StoredProcedure [dbo].[AgregarProducto]    Script Date: 26/02/2021 22:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,David Alzate>
-- Create date: <Create Date,25/022021>
-- Description:	<Description,Procedimiento en el cual se agregan productos>
-- =============================================
CREATE PROCEDURE [dbo].[AgregarProducto]
	-- Add the parameters for the stored procedure here
--DECLARE
@Nombre varchar(50),
@Detalle varchar(MAX),
@Precio decimal(18,2),
@Stock decimal(18,2),
@IdCategoria int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Producto
	VALUES((SELECT ISNULL(MAX(IdProducto)+1,1)FROM Producto),@Nombre,@Detalle,@Precio,@Stock,NULL,NULL,@IdCategoria,1)
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarProducto]    Script Date: 26/02/2021 22:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,David Alzate>
-- Create date: <Create Date,25/02/2021>
-- Description:	<Description,Procedimiento en el cual se busca el producto>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarProducto] 
	-- Add the parameters for the stored procedure here
--DECLARE
@IdProducto int

--SET @IdProducto='1'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Producto WHERE IdProducto=@IdProducto
END
GO
/****** Object:  StoredProcedure [dbo].[ListarCategorias]    Script Date: 26/02/2021 22:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,David Alzate>
-- Create date: <Create Date,25/02/2021>
-- Description:	<Description,Lista Categorias>
-- =============================================
CREATE PROCEDURE [dbo].[ListarCategorias]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Categoria ORDER BY Descripcion
END
GO
/****** Object:  StoredProcedure [dbo].[ListarProductosPorCategoria]    Script Date: 26/02/2021 22:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,David Alzate>
-- Create date: <Create Date,25/02/2021>
-- Description:	<Description,Procedimiento donde lista los produstos segun su categoria>
-- =============================================
CREATE PROCEDURE [dbo].[ListarProductosPorCategoria] 
	-- Add the parameters for the stored procedure here
	--DECLARE
@IdCategoria int

--SET @IdCategoria='1'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Producto WHERE IdCategoria=@IdCategoria
	ORDER BY Nombre
END
GO
/****** Object:  StoredProcedure [dbo].[ModificarProducto]    Script Date: 26/02/2021 22:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,David Alzate>
-- Create date: <Create Date,25/02/2021>
-- Description:	<Description,Procedimiento para modificar productos>
-- =============================================
CREATE PROCEDURE [dbo].[ModificarProducto]
	-- Add the parameters for the stored procedure here
--DECLARE
@IdProducto int,
@Nombre varchar(50),
@Detalle varchar(MAX),
@Precio decimal(18,2),
@Stock decimal(18,2),
@IdCategoria int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Producto
	SET Nombre=@Nombre,Detalle=@Detalle,Precio=@Precio,Stock=@Stock,IdCategoria=@IdCategoria
	WHERE IdProducto=@IdProducto
END
GO
/****** Object:  StoredProcedure [dbo].[VerificarUsuario]    Script Date: 26/02/2021 22:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VerificarUsuario]
	-- Add the parameters for the stored procedure here
--DECLARE
@Usuario VARCHAR(20), 
@Password VARCHAR (20)

--SET @Usuario = 'dealzate'
--SET @Password = '123'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * 
	FROM Usuario
	WHERE Usuario = @Usuario AND Password = @Password
END
GO
USE [master]
GO
ALTER DATABASE [DBProductos] SET  READ_WRITE 
GO
